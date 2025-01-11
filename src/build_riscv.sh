riscv64-unknown-elf-as -o su_riscv.o su_riscv.s
cc  -c icint.c
cc  -c blib.c
cc  -o icint icint.o blib.o
cat iclib.i blib.i syn.i trn.i >st0.int
cat iclib.i blib.i cg.i >cg0.int
./icint st0.int <xg_riscv.b
./icint cg0.int <OCODE
mv INTCODE xg_riscv.i
cat iclib.i blib.i xg_riscv.i >xg0_riscv.int
./icint xg0_riscv.int <st0.int
mv ASM st0.s
riscv64-unknown-elf-as -o st0.o st0.s
riscv64-unknown-elf-as -o rt_riscv.o rt_riscv.s
riscv64-unknown-elf-as -o sys_riscv.o sys_riscv.s
riscv64-unknown-elf-ld -o st0 su.o st0.o rt.o sys.o
./icint xg0_riscv.int <cg0.int
mv ASM cg0_riscv.s
riscv64-unknown-elf-as -o cg0.o cg0.s
riscv64-unknown-elf-ld -o cg0 su.o cg0.o rt.o sys.o
./st0 < xg.b
./cg0 < OCODE
cat iclib.i blib.i INTCODE >xg1.int
