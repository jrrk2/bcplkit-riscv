./icint xg0.int < xg1.int
cat iclib.i blib.i syn.i trn.i >st0.int
cat iclib.i blib.i cg.i >cg0.int
./icint st0.int <xg.b
./icint cg0.int <OCODE
mv INTCODE xg.i
cat iclib.i blib.i xg.i >xg0.int
./icint xg0.int <st0.int
mv ASM st0.s
as -o dt0.o st0.s
as -o st0.o st0.s
as -o rt.o rt.s
as -o sys.o sys.s
ld -o st0 su.o rt.o sys.o
./icint xg0.int <cg0.int
mv ASM cg0.s
as -o cg0.o cg0.s
ld -o cg0 su.o cg0.o rt.o sys.o
