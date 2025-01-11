set -x
./icint st0.int <rvg.b
./icint cg1.int < OCODE
mv INTCODE rvg.i
cat iclib.i blib.i rvg.i >rvg0.int
./icint st0.int < $1.b
./icint -l rvg0.int < OCODE
mv RVGCODE $1.rvg
