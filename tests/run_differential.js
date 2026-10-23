const fs = require('fs');
const os = require('os');
const path = require('path');
const { spawnSync } = require('child_process');
const assert = require('assert');
const crypto = require('crypto');

const root = path.resolve(__dirname, '..');
const fields = ['L', 'MA', 'GR', 'BU', 'LA', 'TA', 'N', 'E', 'S', 'W',
    ...Array.from({ length: 14 }, (_, i) => `OB(${i + 1})+1`), 'END', 'ACTION', 'RND calls'];

function scenarios() {
    const cases = [];
    function add(group, command, location = 1, inventory = [], flags = {}, seed = 16) {
        const objects = [3, 4, 5, 1, 7, 10, 16, 19, 20, 0, 7, 6, 10, 0];
        for (const object of inventory) objects[object - 1] = -1;
        if (flags.guard) objects[13] = location;
        const state = [location, inventory.length, flags.gr || 0, flags.bu || 0,
            flags.la || 0, flags.ta || 0, 0, flags.e || 0, 0, 0, ...objects];
        cases.push({ id: cases.length + 1, group, command, seed, state });
    }
    const verbs = ['CAVAR', 'ABRIR', 'SERRAR', 'NADAR', 'ACENDER', 'APAGAR',
        'DESISTIR', 'LISTAR', 'AJUDAR', 'MATAR', 'ATIRAR', 'PEGAR', 'APANHAR',
        'CARREGAR', 'COLOCAR', 'DEIXAR', 'LARGAR', 'NORTE', 'SUL', 'LESTE', 'OESTE'];
    for (const verb of verbs) {
        for (let n = 0; n <= verb.length; ++n) add('parser', verb.slice(0, n));
    }
    for (const command of ['XYZ', ' PEGAR SERRA', 'PEGAR  SERRA', 'PEGAR SERRA ',
        'pegar serra', 'PEGAR XYZ', 'DEIXAR XYZ', 'ACENDER XYZ', 'APAGAR XYZ']) add('parser', command);
    add('map', 'LISTAR', 24, [], { e: 1 });
    for (const location of [...Array.from({ length: 21 }, (_, i) => i + 1), 24]) {
        for (const command of ['NORTE', 'SUL', 'LESTE', 'OESTE', 'LISTAR', 'AJUDAR']) {
            for (const flags of [{}, { gr: 1, bu: 1 }, { gr: 1, bu: 1, la: 1 }]) {
                add('map', command, location, flags.la ? [1, 12] : [], flags);
            }
        }
    }
    const nouns = ['COLHER', 'LENCOL', 'ESCADA', 'SERRA', 'LIVRO', 'CRUCIFIXO',
        'CORDA', 'OSSO', 'UNIFORME', 'MOEDA', 'CANIVETE', 'LANTERNA', 'CHAVE', 'GUARDA'];
    for (let object = 1; object <= 14; ++object) {
        for (const verb of ['PEGAR', 'DEIXAR']) {
            for (const noun of ['', nouns[object - 1][0], nouns[object - 1]]) {
                for (const inventory of [[], [object], [1, 2, 3]]) {
                    add('inventory', `${verb} ${noun}`, 1, inventory);
                }
            }
        }
    }
    for (const location of [1, 11, 12, 15, 17, 24]) {
        for (const inventory of [[], [1], [3], [4], [8, 13], [13], [12], [10], [11]]) {
            for (const command of ['SERRAR', 'CAVAR', 'NADAR', 'ABRIR', 'ACENDER L',
                'APAGAR L', 'MATAR GUARDA', 'AJUDAR', 'DESISTIR']) {
                add('actions', command, location, inventory);
                add('actions', command, location, inventory, { gr: 1, bu: 1, la: 1 });
            }
        }
    }
    for (const seed of [1, 16, 99, 1000]) {
        for (const location of [1, 2, 15]) {
            for (const inventory of [[], [1], [9], [11], [13], [1, 12, 13]]) {
                for (const command of ['LISTAR', 'MATAR GUARDA', 'XYZ']) {
                    add('guard', command, location, inventory, { guard: true, gr: 1 }, seed);
                }
            }
        }
    }
    return cases;
}

function oracle(source) {
    const replacements = new Map([
        [100, ['KEY ON:MA=0:GR=0:BU=0',
            'DEFINT A-Z:CLEAR 2000,&HBFFF:SCREEN 0:WIDTH 39:KEY OFF:POKE &HC100,127']],
        [360, ['L=1', 'OPEN "A:CASES.TXT" FOR INPUT AS #1:GOTO 5000']],
        [370, ['J=INT(RND(-TIME)*15+3):IF J-1=1 OR J+3>21 THEN 370',
            'GOSUB 6500:J=INT(U!*15+3):IF J-1=1 OR J+3>21 THEN 370']],
        [440, ['RN=RND(-TIME):IF INT(RND(-TIME)*15+1)=1 AND TA=0THENOB(14)=L:TA=1',
            'GOSUB 6500:RN=U!:GOSUB 6500:IF INT(U!*15+1)=1 AND TA=0 THEN OB(14)=L:TA=1']],
        [590, ['PRINT:INPUT"QUAL O COMANDO ";I$', 'IF PH=0 THEN PH=1:GOTO 600']],
        [600, ['GOSUB1310', 'GOSUB 1310:PA=I']],
        [1010, ['KEYOFF:IFI=11THENCLS:PRINTTAB(12)"QUE VERGONHA!":ENDELSEPRINT:PRINT:PRINTTAB(7)"ACEITA OUTRA FUGA (S/N)?";',
            'EN=1:GOSUB 6000:GOTO 5000']],
        [1260, ['K=INT(RND(-TIME)*NB+1):IFOB(K)<>-1THEN1260',
            'GOSUB 6500:K=INT(U!*NB+1):IF OB(K)<>-1 THEN 1260']],
    ]);
    const executable = [];
    const excluded = [100, 1020, 1030, 1040];
    const replaced = [];
    const lines = source.replace(/\x1a\s*$/, '').split(/\r?\n/).filter(Boolean).flatMap(line => {
        const match = /^(\d+)\s+(.*)$/.exec(line);
        assert(match, `Invalid BASIC line: ${line}`);
        const number = Number(match[1]);
        if (number < 100 || number > 2350) return [];
        const replacement = replacements.get(number);
        if (replacement) {
            assert.strictEqual(match[2], replacement[0], `BASIC line ${number} changed; review oracle instrumentation`);
            replaced.push(number);
        }
        const body = replacement ? replacement[1] : match[2];
        if (/^(DATA\b|')/.test(body) || excluded.includes(number)) return [`${number} ${body}`];
        executable.push(number);
        return [`${number} POKE &HC104,${number % 256}:POKE &HC105,${number >> 8}:POKE &HC106,1:${body}`,
            ...(number === 590 ? ['591 GOSUB 6000:GOTO 5000'] : [])];
    });
    lines.push(
        '5000 INPUT #1,ZZ:IF ZZ=0 THEN CLOSE:POKE &HC100,255:END',
        '5010 INPUT #1,TT,L,MA,GR,BU,LA,TA,N,E,S,W',
        '5020 FOR Z=1 TO 14:INPUT #1,OB(Z):NEXT',
        '5030 INPUT #1,I$:PH=0:EN=0:PA=0:RC=0:GOTO 450',
        ...['L', 'MA', 'GR', 'BU', 'LA', 'TA', 'N', 'E', 'S', 'W'].map(
            (name, i) => `${6000 + i} POKE &HC000+${i},${name}`),
        '6010 FOR Z=1 TO 14:POKE &HC009+Z,OB(Z)+1:NEXT',
        '6011 POKE &HC018,EN:POKE &HC019,PA:POKE &HC01A,RC',
        '6012 POKE &HC030,ZZ MOD 256:POKE &HC031,ZZ\\256:POKE &HC100,1:RETURN',
        '6500 TT=TT+1:RC=RC+1:U!=RND(-TT):RETURN');
    assert.strictEqual(replaced.length, replacements.size, 'Missing BASIC instrumentation target');
    assert(lines.every(line => line.length <= 255), 'BASIC line too long');
    return { program: lines.join('\r\n') + '\r\n\x1a', executable, excluded };
}

function compare(cases, host, basic) {
    assert.strictEqual(host.length, cases.length, 'Incomplete C run');
    const completion = basic[basic.length - 1];
    assert(completion && completion.complete === cases.length, `Incomplete BASIC run: ${JSON.stringify(completion)}`);
    assert.strictEqual(basic.length, cases.length + 1, 'Unexpected BASIC records');
    const failures = [];
    for (let i = 0; i < cases.length; ++i) {
        assert.strictEqual(host[i].id, cases[i].id, 'C case order');
        assert.strictEqual(basic[i].id, cases[i].id, 'BASIC case order');
        assert.strictEqual(host[i].values.length, fields.length, 'C snapshot shape');
        assert.strictEqual(basic[i].values.length, fields.length, 'BASIC snapshot shape');
        const differences = fields.flatMap((field, j) => host[i].values[j] === basic[i].values[j]
            ? [] : [{ field, basic: basic[i].values[j], c: host[i].values[j] }]);
        if (differences.length) failures.push({ ...cases[i], differences });
    }
    return failures;
}

function testComparator() {
    const cases = [{ id: 1 }];
    const original = { id: 1, values: fields.map(() => 0) };
    const basic = [original, { complete: 1 }];
    assert.deepStrictEqual(compare(cases, [original], basic), []);
    for (let i = 0; i < fields.length; ++i) {
        const mutation = { id: 1, values: [...original.values] };
        mutation.values[i] = 1;
        assert.deepStrictEqual(compare(cases, [mutation], basic)[0].differences,
            [{ field: fields[i], basic: 0, c: 1 }]);
    }
    assert.throws(() => compare(cases, [], basic), /Incomplete C/);
    assert.throws(() => compare(cases, [original], [original]), /Incomplete BASIC/);
    assert.throws(() => compare(cases, [{ ...original, id: 2 }], basic), /C case order/);
    assert.throws(() => compare(cases, [original], [{ ...original, values: [] }, { complete: 1 }]), /snapshot shape/);
}

function run(command, args, options = {}) {
    const { log, ...spawnOptions } = options;
    const result = spawnSync(command, args, { cwd: root, encoding: 'utf8', timeout: 240000,
        maxBuffer: 16 * 1024 * 1024, ...spawnOptions });
    if (log) fs.writeFileSync(log, (result.stdout || '') + (result.stderr || ''));
    if (result.error || result.status !== 0) {
        throw new Error(`${command} failed: ${result.error || result.status}\n${result.stdout || ''}\n${result.stderr || ''}`);
    }
    return result.stdout;
}

function readJsonLines(file) {
    return fs.readFileSync(file, 'utf8').trim().split(/\r?\n/).map(line => JSON.parse(line));
}

function main() {
    if (process.argv.length !== 2) throw new Error('Usage: node tests\\run_differential.js');
    testComparator();
    const cases = scenarios();
    const generated = oracle(fs.readFileSync(path.join(root, 'basic', 'quentin.asc'), 'utf8'));
    const output = path.join(root, 'projects', 'msx1', 'out', 'validation');
    fs.mkdirSync(output, { recursive: true });
    const reportFile = path.join(output, 'report.json');
    fs.writeFileSync(reportFile, JSON.stringify({ status: 'running', startedAt: new Date().toISOString() }) + '\n');
    const temp = fs.mkdtempSync(path.join(os.tmpdir(), 'sq-differential-'));
    try {
        const disk = path.join(temp, 'disk');
        fs.mkdirSync(disk);
        fs.writeFileSync(path.join(disk, 'ORACLE.BAS'), generated.program, 'ascii');
        fs.writeFileSync(path.join(disk, 'CASES.TXT'), cases.map(test =>
            `${test.id}\r\n${[test.seed, ...test.state.slice(0, 10)].join('\r\n')}\r\n` +
            `${test.state.slice(10).join('\r\n')}\r\n"${test.command}"\r\n`).join('') + '0\r\n', 'ascii');
        const executable = path.join(temp, 'host.exe');
        run('gcc', ['-std=c11', '-Wall', '-Wextra', '-Werror',
            path.join(__dirname, 'differential_host.c'), path.join(root, 'src', 'sq_parser.c'),
            path.join(root, 'src', 'sq_engine.c'), path.join(root, 'src', 'sq_random.c'), '-o', executable]);
        const hostText = run(executable, [path.join(disk, 'CASES.TXT')]);
        fs.writeFileSync(path.join(temp, 'host.jsonl'), hostText);
        const image = path.join(temp, 'oracle.dsk');
        run(path.join(root, 'MSXgl', 'tools', 'build', 'msxtar', 'msxtar.exe'),
            ['-cf', image, '--dos1', '--size=360K', 'ORACLE.BAS', 'CASES.TXT'], { cwd: disk });
        console.log(`Running ${cases.length} scenarios against MSX-BASIC 1.0 and C...`);
        run('openmsx', ['-command',
            'set save_settings_on_exit false; set save_setup_at_exit_depth none; set renderer none',
            '-machine', 'Sony_HB-701FD', '-diska', image,
            '-script', path.join(__dirname, 'capture_differential.tcl')],
        { log: path.join(output, 'emulator.log'),
            env: { ...process.env, SQ_DIFFERENTIAL_DIR: temp, SDL_VIDEODRIVER: 'dummy', SDL_AUDIODRIVER: 'dummy' } });
        const host = readJsonLines(path.join(temp, 'host.jsonl'));
        const basic = readJsonLines(path.join(temp, 'basic.jsonl'));
        const failures = compare(cases, host, basic);
        const covered = basic[basic.length - 1].lines;
        const groups = [...new Set(cases.map(test => test.group))].map(group => ({
            group, total: cases.filter(test => test.group === group).length,
            failed: failures.filter(test => test.group === group).length,
        }));
        const sources = ['basic\\quentin.asc', 'src\\sq_parser.c', 'src\\sq_engine.c', 'src\\sq_random.c'];
        const hashes = Object.fromEntries(sources.map(file => [file,
            crypto.createHash('sha256').update(fs.readFileSync(path.join(root, file))).digest('hex')]));
        const report = { status: failures.length ? 'failed' : 'passed', completedAt: new Date().toISOString(),
            source: 'basic\\quentin.asc', sourceHashes: hashes, machine: 'Sony_HB-701FD', cases: cases.length,
            groups, failures, coveredLines: covered, uncoveredLines: generated.executable.filter(line => !covered.includes(line)),
            excludedLines: generated.excluded,
            scope: 'Single-command parser/state/end/random-call comparison; not transcripts, visual fidelity or exhaustive paths.' };
        fs.writeFileSync(reportFile, JSON.stringify(report, null, 2) + '\n');
        for (const group of groups) console.log(`${group.group}: ${group.total - group.failed}/${group.total} matched`);
        console.log(`BASIC lines reached: ${covered.length}/${generated.executable.length}`);
        console.log(`Report: ${reportFile}`);
        if (failures.length) {
            console.error(JSON.stringify(failures.slice(0, 5), null, 2));
            process.exitCode = 1;
        } else console.log('PASS: BASIC x C differential state matrix; mutation detection passed');
    } catch (error) {
        fs.writeFileSync(reportFile, JSON.stringify({ status: 'error', error: error.message }, null, 2) + '\n');
        throw error;
    } finally {
        for (const name of ['ORACLE.BAS', 'CASES.TXT']) {
            const file = path.join(temp, 'disk', name);
            if (fs.existsSync(file)) fs.unlinkSync(file);
        }
        for (const name of ['host.exe', 'host.jsonl', 'basic.jsonl', 'oracle.dsk']) {
            const file = path.join(temp, name);
            if (fs.existsSync(file)) fs.unlinkSync(file);
        }
        if (fs.existsSync(path.join(temp, 'disk'))) fs.rmdirSync(path.join(temp, 'disk'));
        fs.rmdirSync(temp);
    }
}

try { main(); } catch (error) { console.error(error.stack); process.exitCode = 1; }
