set throttle off
after time 80 { type "read menu\r" }
after time 90 { screenshot {E:/supernova/msx/nova/out/s1.png} }
after time 92 { type " " }
after time 95 { type "z\r" }
after time 103 { screenshot {E:/supernova/msx/nova/out/s2.png} }
after time 105 { type "save\r" }
after time 113 { screenshot {E:/supernova/msx/nova/out/s3.png} }
after time 114 { type "t1\r" }
after time 122 { screenshot {E:/supernova/msx/nova/out/s4.png} }
after time 124 { type " " }
after time 126 { type "restore\r" }
after time 134 { type "t1\r" }
after time 144 { screenshot {E:/supernova/msx/nova/out/s5.png} }
after time 146 { type " " }
after time 152 { screenshot {E:/supernova/msx/nova/out/s6.png} }
after time 153 { exit }
