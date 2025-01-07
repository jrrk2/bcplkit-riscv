./icint st0.int <xg.b
./icint cg1.int < OCODE
mv INTCODE xg.i
cat iclib.i blib.i xg.i >xg0.int
./icint st0.int < $1.b
#cat OCODE 
./icint cg1.int < OCODE
cat iclib.i blib.i INTCODE >$1.int
mv INTCODE $1.i
./icint xg0.int < $1.int
cat su.s ASM rt.s sys.s > $1.s
gcc -g -o $1 -nostdlib -static /usr/lib/riscv64-linux-gnu/crt1.o $1.s
objdump -d $1 > $1.dis
./$1
