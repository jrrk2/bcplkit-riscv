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
mv ASM $1.s
sed -e 's=a5=M=g' -e 's=s4=G=g' -e 's=s5=P=g' -e 's=s6=A=g' -e 's=s7=B=g' -e 's=s9=D=g' $1.s > $1.asm
gcc -g -o $1 -static blib.c $1.s
objdump -d $1 | sed -e 's=a5=M=g' -e 's=s4=G=g' -e 's=s5=P=g' -e 's=s6=A=g' -e 's=s7=B=g' -e 's=s9=D=g' > $1.dis
rm -f logfile.txt
gdb --batch-silent ./$1 -x commands.gdb 
sed -e 's=a5=M=g' -e 's=s4=G=g' -e 's=s5=P=g' -e 's=s6=A=g' -e 's=s7=B=g' -e 's=s9=D=g' logfile.txt > $1.log
rm -f logfile.txt
