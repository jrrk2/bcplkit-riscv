set pagination off
set logging file logfile.txt
set logging enabled on
break L3001
run
catch signal SIGSEGV
while 1
    x/i $pc
    set logging enabled off
    step
    set logging enabled on
    printf "M = %X\n", $a5
    printf "G = %X\n", $s4
    printf "P = %X\n", $s5
    printf "A = %X\n", $s6
    printf "B = %X\n", $s7
    printf "D = %X\n", $s9
end
set logging enabled off
