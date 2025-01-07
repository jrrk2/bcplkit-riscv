jalr zero,a0,0
#E true, coding LW
.align 4
L2001:
lw a0,12(s2)
srli a0,a0,2
#A.SW T.P
sw a0,8(s2)
li a0,0
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
#A.LP T.P
lw a0,8(s2)
#A.SG T.G
sw a0,480(s0)
.align 4
L2028:
li a0,0
#sw extended index T.P
li t0, 2020
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2031:
li a0,0
#sw extended index T.P
li t0, 2024
add t0, t0, s2
sw a0,(t0)
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
li t0, 2024
add t0, t0, s2
lw a0,(t0)
li t0, 2028
add t0, t0, s2
lw a0,(t0)
#A.MV T.IR
mv a0,a0
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 2020
add t0, t0, s2
sw a0,(t0)
.align 4
L2030:
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#X15
ble a0,a0,L2031
li a0,0
#A.SG T.G
sw a0,484(s0)
#A.LA T.L
.align 4
L2026:
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2024:
jalr zero,a0,0
.align 4
L2034:
li a0,-1
#X10
bne a0,a0,L2035
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LA T.LL
.align 4
L2035:
la a0,L2499
srli a0,a0,2
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,448+G
lw a0,0(a0)
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#sw extended index T.P
li t0, 2036
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.L
.align 4
L2036:
L2037:
L2038:
L2039:
L2040:
L2041:
L2042:
L2043:
L2044:
L2045:
la a0,L2010
mv s1,s2
#ADD
li t0,2028
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2012
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,0
#A.SG T.G
sw a0,484(s0)
jalr zero,a0,0
.align 4
L2046:
L2047:
L2048:
jalr zero,a0,0
.align 4
L2049:
li a0,0
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2050:
li a0,1
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2051:
li a0,2
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2052:
li a0,3
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2053:
li a0,4
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2054:
li a0,5
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2055:
li a0,6
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2056:
li a0,7
#sw extended index T.P
li t0, 2016
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
#A.LA T.L
.align 4
L2057:
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L2010
mv s1,s2
#ADD
li t0,2028
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2006
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.L
.align 4
L2058:
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,76
#X10
bne a0,a0,L2059
#A.LA T.L
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,0
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L2010
mv s1,s2
#ADD
li t0,2028
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2014
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.L
.align 4
L2059:
la a0,L2010
mv s1,s2
#ADD
li t0,2028
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2060:
jalr zero,a0,0
#A.LA T.L
.align 4
L2061:
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L2010
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,488(s0)
li a0,76
#X10
bne a0,a0,L2062
#A.LA T.L
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L2062:
la a0,L2498
srli a0,a0,2
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2063:
li a0,0
#A.LG T.IG
la a1,488+G
lw a0,0(a0)
#A.MV T.IR
mv a0,a0
#A.LA T.L
la a0,L2010
mv s1,s2
#ADD
li t0,2028
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,488+G
lw a0,0(a0)
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2014
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L2064:
li a0,0
#sw extended index T.P
li t0, 2020
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L2066:
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#X14
ble a0,a0,L2067
#A.LA T.LL
la a0,L2497
srli a0,a0,2
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#sw extended index T.P
li t0, 2036
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,2024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2067:
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 2020
add t0, t0, s2
sw a0,(t0)
.align 4
L2065:
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#X15
ble a0,a0,L2066
jalr zero,a0,0
jalr zero,a0,0
#A.LG T.G
.align 4
L2032:
la a0,448+G
lw a0,0(a0)
#X23
la s1,L0
lw t1,0(s1)
lw t2,4(s1)
beqz t1,2f
1:
addi s1,s1,8
lw t0,0(s1)
beq a0,t0,3f
addi t1,t1,-1
bnez t1,1b
2:
jalr zero,t2,0
3:
lw t0,4(s1)
jalr zero,t0,0
.data
.align 4
L0:
.word 25
.word L2034
.word 48
.word L2036
.word 49
.word L2037
.word 50
.word L2038
.word 51
.word L2039
.word 52
.word L2040
.word 53
.word L2041
.word 54
.word L2042
.word 55
.word L2043
.word 56
.word L2044
.word 57
.word L2045
.word 36
.word L2046
.word 32
.word L2047
.word 10
.word L2048
.word 76
.word L2049
.word 83
.word L2050
.word 65
.word L2051
.word 74
.word L2052
.word 84
.word L2053
.word 70
.word L2054
.word 75
.word L2055
.word 88
.word L2056
.word 67
.word L2057
.word 68
.word L2058
.word 71
.word L2061
.word 90
.word L2064
.text
.align 4
L2033:
li t0, 2016
add t0, t0, s2
lw a0,(t0)
#X16
sll a0,a0,a1
#A.SG T.G
sw a0,504(s0)
#A.LA T.L
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,73
#X10
bne a0,a0,L2068
li a0,4096
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,504(s0)
#A.LA T.L
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2068:
li a0,80
#X10
bne a0,a0,L2069
li a0,2048
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,504(s0)
#A.LA T.L
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2069:
li a0,71
#X10
bne a0,a0,L2070
li a0,1024
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,504(s0)
#A.LA T.L
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2070:
li a0,76
#X10
bne a0,a0,L2071
#A.LA T.L
la a0,L2008
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,512
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,0
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L2010
mv s1,s2
#ADD
li t0,2028
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#sw extended index T.P
li t0, 2028
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2014
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.L
.align 4
L2071:
la a0,L2010
mv s1,s2
#ADD
li t0,2020
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#sw extended index T.P
li t0, 2020
add t0, t0, s2
sw a0,(t0)
li a0,511
#X18
and a0,a0,a1
#X10
bne a0,a0,L2073
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADD
li t0,2024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L2073:
li a0,512
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADD
li t0,2024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li t0, 2020
add t0, t0, s2
lw a0,(t0)
#sw extended index T.P
li t0, 2032
add t0, t0, s2
sw a0,(t0)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADD
li t0,2024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2074:
L2072:
jalr zero,a0,0
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2003:
lw a0,8(s2)
#A.LG T.IG
la a1,444+G
lw a0,0(a0)
#A.MV T.IR
mv a0,a0
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,444(s0)
li a0,0
#A.SG T.G
sw a0,484(s0)
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2005:
li a0,0
#X10
bne a0,a0,L2075
li a0,0
#A.SW T.P
sw a0,20(s2)
#A.LA T.L
la a0,L2004
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,16
#A.SG T.G
sw a0,484(s0)
#A.LG T.G
.align 4
L2075:
la a0,484+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#A.SG T.G
sw a0,484(s0)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.LG T.G
la a1,484+G
lw a0,0(a0)
#X16
slli a0,a0,2
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,12(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,12(s2)
#A.LP T.P
lw a1,16(s2)
#A.MV T.IR
mv a0,a0
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LG T.G
.align 4
L2007:
L2076:
la a0,52+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,448(s0)
li a0,47
#X10
beq a0,a0,L2077
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2077:
jalr zero,a0,0
#A.LG T.G
.align 4
L2078:
la a0,52+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,448(s0)
.align 4
L2079:
li a0,10
#X10
bne a0,a0,L2078
jalr zero,a0,0
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2009:
li a0,0
#A.SW T.P
sw a0,8(s2)
li a0,0
#A.SW T.P
sw a0,12(s2)
li a0,45
#X10
bne a0,a0,L2081
li a0,-1
#A.SW T.P
sw a0,12(s2)
#A.LA T.L
la a0,L2008
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2081:
jalr zero,a0,0
#A.LP T.P
.align 4
L2082:
lw a0,8(s2)
li a1,10
#X5
mul a0,a0,a1
#A.ADD chosen
add a0,a0,a1
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,8(s2)
#A.LA T.L
la a0,L2008
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2083:
li a0,48
#X15
bgt a0,a0,L2084
#A.LG T.G
la a0,448+G
lw a0,0(a0)
#X15
ble a0,a0,L2082
#A.LP T.P
.align 4
L2084:
lw a0,12(s2)
bnez a0,1f
beq a0,a0,L2085
#A.LP T.P
lw a0,8(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,8(s2)
#A.LP T.P
.align 4
L2085:
lw a0,8(s2)
jalr zero,a0,0
#X4
.align 4
L2080:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2011:
lw a0,8(s2)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,12(s2)
#X12
bge a0,a0,L2086
#A.LA T.LL
la a0,L2496
srli a0,a0,2
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,12(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#A.SW T.P
sw a0,36(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L2086:
jalr zero,a0,0
#A.LP T.P
.align 4
L2087:
lw a0,12(s2)
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
.align 4
L2088:
lw a0,12(s2)
#X14
bgt a0,a0,L2087
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#X2
neg a0,a0
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,8(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,16(s2)
#A.LP T.P
lw a1,20(s2)
#A.MV T.IR
mv a0,a0
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2013:
lw a0,8(s2)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,16(s2)
#X12
bge a0,a0,L2089
#A.LP T.P
lw a0,16(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,16(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2089:
lw a0,12(s2)
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,8(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,20(s2)
#A.LP T.P
lw a1,24(s2)
#A.MV T.IR
mv a0,a0
#A.LP T.P
.align 4
L2090:
lw a0,12(s2)
#X1
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2015:
L2093:
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,452(s0)
#A.LG T.G
la a0,496+G
lw a0,0(a0)
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,504(s0)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,496(s0)
li a0,512
#X18
and a0,a0,a1
#X10
bne a0,a0,L2096
li a0,511
#X18
and a0,a0,a1
#A.SG T.G
sw a0,500(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2096:
la a0,496+G
lw a0,0(a0)
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,500(s0)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,496(s0)
.align 4
L2097:
li a0,2048
#X18
and a0,a0,a1
#X11
beq a0,a0,L2098
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,500(s0)
.align 4
L2098:
li a0,1024
#X18
and a0,a0,a1
#X11
beq a0,a0,L2099
#A.LG T.G
la a0,440+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,500(s0)
.align 4
L2099:
li a0,4096
#X18
and a0,a0,a1
#X11
beq a0,a0,L2100
#A.LG T.G
la a0,500+G
lw a0,0(a0)
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,500(s0)
.align 4
L2100:
jalr zero,a0,0
#A.LG T.G
.align 4
L2091:
L2103:
la a0,400+G
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,48+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L2495
srli a0,a0,2
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,496+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,-1
jalr zero,a0,0
#A.LG T.G
.align 4
L2104:
la a0,488+G
lw a0,0(a0)
#A.SG T.G
sw a0,492(s0)
#A.LG T.G
la a0,500+G
lw a0,0(a0)
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2105:
la a0,488+G
lw a0,0(a0)
#A.LG T.IG
la a1,500+G
lw a0,0(a0)
#A.MV T.IR
mv a0,a0
jalr zero,a0,0
#A.LG T.G
.align 4
L2106:
la a0,500+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2107:
la a0,500+G
lw a0,0(a0)
#A.SG T.G
sw a0,496(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2108:
la a0,488+G
lw a0,0(a0)
#X3
not a0,a0
#A.SG T.G
sw a0,488(s0)
#A.LG T.G
.align 4
L2109:
la a0,488+G
lw a0,0(a0)
bnez a0,1f
bne a0,a0,L2110
#A.LG T.G
la a0,500+G
lw a0,0(a0)
#A.SG T.G
sw a0,496(s0)
.align 4
L2110:
jalr zero,a0,0
#A.LG T.G
.align 4
L2111:
la a0,500+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,500(s0)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#A.SW T.P
sw a0,8(s2)
li a0,0
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
#A.LG T.G
la a0,496+G
lw a0,0(a0)
#A.SW T.P
sw a0,8(s2)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
#A.LG T.G
la a0,500+G
lw a0,0(a0)
#A.SG T.G
sw a0,444(s0)
#A.LG T.G
la a0,488+G
lw a0,0(a0)
#A.SG T.G
sw a0,496(s0)
jalr zero,a0,0
.align 4
L2112:
jalr zero,a0,0
.align 4
L2115:
jalr zero,a0,0
#A.LG T.G
.align 4
L2116:
la a0,488+G
lw a0,0(a0)
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2117:
la a0,488+G
lw a0,0(a0)
#X2
neg a0,a0
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2118:
la a0,488+G
lw a0,0(a0)
#X3
not a0,a0
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
.align 4
L2119:
li a0,1
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,496(s0)
li a0,0
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,444(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2120:
la a0,488+G
lw a0,0(a0)
#X5
mul a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2121:
la a0,492+G
lw a0,0(a0)
#X6
div a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2122:
la a0,492+G
lw a0,0(a0)
#X7
rem a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2123:
la a0,488+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2124:
la a0,492+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2125:
la a0,488+G
lw a0,0(a0)
#X10
beq a0,a1,L10000
addi a0,zero,-1 

.align 4
L10000:
addi a0,zero,0 

#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2126:
la a0,488+G
lw a0,0(a0)
#X11
bne a0,a1,L10001
addi a0,zero,-1 

.align 4
L10001:
addi a0,zero,0 

#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2127:
la a0,492+G
lw a0,0(a0)
#X12
blt a0,a1,L10002
addi a0,zero,-1 

.align 4
L10002:
addi a0,zero,0 

#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2128:
la a0,492+G
lw a0,0(a0)
#X13
bge a0,a1,L10003
addi a0,zero,-1 

.align 4
L10003:
addi a0,zero,0 

#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2129:
la a0,492+G
lw a0,0(a0)
#X14
bgt a0,a1,L10004
addi a0,zero,-1 

.align 4
L10004:
addi a0,zero,0 

#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2130:
la a0,492+G
lw a0,0(a0)
#X15
ble a0,a1,L10005
addi a0,zero,-1 

.align 4
L10005:
addi a0,zero,0 

#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2131:
la a0,492+G
lw a0,0(a0)
#A.LG T.G
la a1,488+G
lw a0,0(a0)
#X16
slli a0,a0,2
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2132:
la a0,492+G
lw a0,0(a0)
#A.LG T.G
la a1,488+G
lw a0,0(a0)
#X17
srli a0,a0,2
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2133:
la a0,488+G
lw a0,0(a0)
#X18
and a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2134:
la a0,488+G
lw a0,0(a0)
#X19
or a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2135:
la a0,488+G
lw a0,0(a0)
#X20
xor a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2136:
la a0,488+G
lw a0,0(a0)
#X21
not a0,a0
xor a0,a0,a1
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
.align 4
L2137:
li a0,0
jalr zero,a0,0
.align 4
L2138:
li a0,0
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,492(s0)
li a0,1
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,500(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2139:
la a0,492+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#A.SG T.G
sw a0,492(s0)
li a0,2
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,496(s0)
li a0,0
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#X10
bne a0,a0,L2141
li a0,1
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,500(s0)
jalr zero,a0,0
.align 4
L2141:
L2140:
li a0,0
#X10
bne a0,a0,L2139
#A.LG T.G
.align 4
L2142:
la a0,500+G
lw a0,0(a0)
#A.SG T.G
sw a0,496(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2143:
la a0,488+G
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,44+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LG T.G
.align 4
L2144:
la a0,488+G
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,48+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LG T.G
.align 4
L2145:
la a0,52+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2146:
la a0,488+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LG T.G
.align 4
L2147:
la a0,488+G
lw a0,0(a0)
#A.SW T.P
sw a0,24(s2)
#A.LA T.L
la a0,L2018
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,168+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2148:
la a0,488+G
lw a0,0(a0)
#A.SW T.P
sw a0,24(s2)
#A.LA T.L
la a0,L2018
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,164+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2149:
la a0,488+G
lw a0,0(a0)
jalr zero,a0,0
.align 4
L2150:
li a0,0
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2151:
la a0,488+G
lw a0,0(a0)
#A.SG T.G
sw a0,444(s0)
#A.LG T.G
la a0,492+G
lw a0,0(a0)
#A.SG T.G
sw a0,496(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2152:
la a0,184+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LG T.G
.align 4
L2153:
la a0,188+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LG T.G
.align 4
L2154:
la a0,492+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,500(s0)
li a0,0
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,8(s2)
li a0,0
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
li a0,1
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,8(s2)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#A.SW T.P
sw a0,8(s2)
li a0,2
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
#A.LG T.G
la a0,492+G
lw a0,0(a0)
#A.SW T.P
sw a0,8(s2)
li a0,3
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.LP T.P
lw a1,12(s2)
#A.MV T.IR
mv a0,a0
#A.LG T.G
la a0,500+G
lw a0,0(a0)
#A.SG T.G
sw a0,444(s0)
#A.LG T.G
la a0,488+G
lw a0,0(a0)
#A.SG T.G
sw a0,496(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2155:
la a0,488+G
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,492+G
lw a0,0(a0)
#A.SW T.P
sw a0,20(s2)
#A.LA T.L
la a0,L2020
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,488(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2156:
la a0,488+G
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,492+G
lw a0,0(a0)
#A.SW T.P
sw a0,20(s2)
li a0,4
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,24(s2)
#A.LA T.L
la a0,L2022
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
jalr zero,a0,0
#A.LG T.G
.align 4
L2113:
la a0,500+G
lw a0,0(a0)
#X23
la s1,L1
lw t1,0(s1)
lw t2,4(s1)
beqz t1,2f
1:
addi s1,s1,8
lw t0,0(s1)
beq a0,t0,3f
addi t1,t1,-1
bnez t1,1b
2:
jalr zero,t2,0
3:
lw t0,4(s1)
jalr zero,t0,0
.data
.align 4
L1:
.word 37
.word L2115
.word 1
.word L2116
.word 2
.word L2117
.word 3
.word L2118
.word 4
.word L2119
.word 5
.word L2120
.word 6
.word L2121
.word 7
.word L2122
.word 8
.word L2123
.word 9
.word L2124
.word 10
.word L2125
.word 11
.word L2126
.word 12
.word L2127
.word 13
.word L2128
.word 14
.word L2129
.word 15
.word L2130
.word 16
.word L2131
.word 17
.word L2132
.word 18
.word L2133
.word 19
.word L2134
.word 20
.word L2135
.word 21
.word L2136
.word 22
.word L2137
.word 23
.word L2138
.word 24
.word L2143
.word 25
.word L2144
.word 26
.word L2145
.word 27
.word L2146
.word 28
.word L2147
.word 29
.word L2148
.word 30
.word L2149
.word 31
.word L2150
.word 32
.word L2151
.word 33
.word L2152
.word 34
.word L2153
.word 35
.word L2154
.word 36
.word L2155
.word 37
.word L2156
.text
.align 4
L2114:
jalr zero,a0,0
#A.LG T.G
.align 4
L2101:
la a0,504+G
lw a0,0(a0)
#X17
srl a0,a0,a1
#X23
la s1,L2
lw t1,0(s1)
lw t2,4(s1)
beqz t1,2f
1:
addi s1,s1,8
lw t0,0(s1)
beq a0,t0,3f
addi t1,t1,-1
bnez t1,1b
2:
jalr zero,t2,0
3:
lw t0,4(s1)
jalr zero,t0,0
.data
.align 4
L2:
.word 8
.word L2103
.word 0
.word L2104
.word 1
.word L2105
.word 2
.word L2106
.word 3
.word L2107
.word 4
.word L2108
.word 5
.word L2109
.word 6
.word L2111
.word 7
.word L2112
#X4
.text
.align 4
L2102:
L2095:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LA T.LL
.align 4
L2017:
la a0,L2158
srli a0,a0,2
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,24(s2)
li a0,0
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L2020
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,344+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,1
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,28(s2)
li a0,0
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L2020
mv s1,s2
#ADDI
addi s2,s2,20
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,20(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2160:
lw a0,12(s2)
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,36(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L2020
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,344+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,16(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
.align 4
L2159:
lw a0,16(s2)
#X15
ble a0,a0,L2160
#A.LP T.P
lw a0,12(s2)
jalr zero,a0,0
#X4
.align 4
L2157:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2019:
lw a0,12(s2)
li a1,2
#X6
div a0,a0,a1
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,16(s2)
li a0,1
#X18
and a0,a0,a1
#X10
bne a0,a0,L2162
#A.LP T.P
lw a0,16(s2)
#X17
srl a0,a0,a1
#A.SW T.P
sw a0,16(s2)
.align 4
L2162:
li a0,255
#X18
and a0,a0,a1
jalr zero,a0,0
#X4
.align 4
L2161:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2021:
lw a0,12(s2)
li a1,2
#X6
div a0,a0,a1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,20(s2)
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,24(s2)
li a0,1
#X18
and a0,a0,a1
#X10
bne a0,a0,L2163
li a0,255
#X18
and a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,16(s2)
#X16
sll a0,a0,a1
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
lw a0,28(s2)
#X19
or a0,a0,a1
#A.LP T.P
lw a1,20(s2)
#A.MV T.IR
mv a0,a0
jalr zero,a0,0
.align 4
L2163:
li a0,65280
#X18
and a0,a0,a1
#X19
or a0,a0,a1
#A.LP T.P
lw a1,20(s2)
#A.MV T.IR
mv a0,a0
#X4
.align 4
L2164:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2023:
jalr zero,a0,0
#E true, coding LW
.align 4
L2165:
lw a0,16(s2)
srli a0,a0,2
#A.SW T.P
sw a0,12(s2)
#BIGOFF
li a0,80024
add a0, a0, s2
lw a0,(a0)
srli a0,a0,2
#sw extended index T.P
li t0, 80020
add t0, t0, s2
sw a0,(t0)
li t0, 80020
add t0, t0, s2
lw a0,(t0)
#A.SG T.G
sw a0,440(s0)
#A.LP T.P
lw a0,12(s2)
#A.SG T.G
sw a0,444(s0)
#A.LA T.LL
la a0,L2494
srli a0,a0,2
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,164+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,400(s0)
#A.LG T.G
la a0,400+G
lw a0,0(a0)
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,48+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L2493
srli a0,a0,2
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L2492
srli a0,a0,2
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,168+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,404(s0)
#A.LG T.G
la a0,404+G
lw a0,0(a0)
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,44+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L2002
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L2491
srli a0,a0,2
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,168+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,404(s0)
li a0,0
#X10
beq a0,a0,L2167
#A.LG T.G
la a0,404+G
lw a0,0(a0)
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,44+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
.align 4
L2167:
la a0,L2490
srli a0,a0,2
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,444+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#sw extended index T.P
li t0, 81640
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L2168
srli a0,a0,2
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,412(s0)
#A.LA T.LL
la a0,L2169
srli a0,a0,2
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,408(s0)
#A.LA T.LL
la a0,L2170
srli a0,a0,2
#A.SG T.G
sw a0,496(s0)
li a0,0
#A.SG T.G
sw a0,452(s0)
#A.LA T.L
la a0,L2016
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,488(s0)
#A.LG T.G
la a0,400+G
lw a0,0(a0)
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,48+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L2489
srli a0,a0,2
#sw extended index T.P
li t0, 81636
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,452+G
lw a0,0(a0)
#sw extended index T.P
li t0, 81640
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,488+G
lw a0,0(a0)
#sw extended index T.P
li t0, 81644
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LG T.G
la a0,488+G
lw a0,0(a0)
#X12
bge a0,a0,L2171
#A.LG T.G
la a0,312+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,81628
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X22
.align 4
L2171:
j finish
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.data
.align 4
L2166:
L2002:
.word L2001
.align 4
L2004:
.word L2003
.align 4
L2006:
.word L2005
.align 4
L2008:
.word L2007
.align 4
L2010:
.word L2009
.align 4
L2012:
.word L2011
.align 4
L2014:
.word L2013
.align 4
L2016:
.word L2015
.align 4
L2018:
.word L2017
.align 4
L2020:
.word L2019
.align 4
L2022:
.word L2021
.align 4
L2025:
.word L2024
.align 4
L2027:
.word L2026
.align 4
L2029:
.word L2028
.align 4
L2499:
.byte 21
.byte 10
.byte 66
.byte 65
.byte 68
.byte 32
.byte 67
.byte 72
.byte 32
.byte 37
.byte 67
.byte 32
.byte 65
.byte 84
.byte 32
.byte 80
.byte 32
.byte 61
.byte 32
.byte 37
.byte 78
.byte 10
.align 2
.align 4
L2498:
.byte 20
.byte 10
.byte 66
.byte 65
.byte 68
.byte 32
.byte 67
.byte 79
.byte 68
.byte 69
.byte 32
.byte 65
.byte 84
.byte 32
.byte 80
.byte 32
.byte 61
.byte 32
.byte 37
.byte 78
.byte 10
.align 2
.align 4
L2497:
.byte 10
.byte 76
.byte 37
.byte 78
.byte 32
.byte 85
.byte 78
.byte 83
.byte 69
.byte 84
.byte 10
.align 2
.align 4
L2496:
.byte 32
.byte 76
.byte 37
.byte 78
.byte 32
.byte 65
.byte 76
.byte 82
.byte 69
.byte 65
.byte 68
.byte 89
.byte 32
.byte 83
.byte 69
.byte 84
.byte 32
.byte 84
.byte 79
.byte 32
.byte 37
.byte 78
.byte 32
.byte 65
.byte 84
.byte 32
.byte 80
.byte 32
.byte 61
.byte 32
.byte 37
.byte 78
.byte 10
.align 2
.align 4
L2092:
.word L2091
.align 4
L2094:
.word L2093
.align 4
L2495:
.byte 25
.byte 10
.byte 73
.byte 78
.byte 84
.byte 67
.byte 79
.byte 68
.byte 69
.byte 32
.byte 69
.byte 82
.byte 82
.byte 79
.byte 82
.byte 32
.byte 65
.byte 84
.byte 32
.byte 67
.byte 32
.byte 61
.byte 32
.byte 37
.byte 78
.byte 10
.align 2
.align 4
L2158:
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.align 4
L2494:
.byte 8
.byte 83
.byte 89
.byte 83
.byte 80
.byte 82
.byte 73
.byte 78
.byte 84
.align 2
.align 4
L2493:
.byte 23
.byte 73
.byte 78
.byte 84
.byte 67
.byte 79
.byte 68
.byte 69
.byte 32
.byte 83
.byte 89
.byte 83
.byte 84
.byte 69
.byte 77
.byte 32
.byte 69
.byte 78
.byte 84
.byte 69
.byte 82
.byte 69
.byte 68
.byte 10
.align 2
.align 4
L2492:
.byte 5
.byte 73
.byte 78
.byte 84
.byte 73
.byte 78
.align 2
.align 4
L2491:
.byte 5
.byte 83
.byte 89
.byte 83
.byte 73
.byte 78
.align 2
.align 4
L2490:
.byte 19
.byte 10
.byte 80
.byte 82
.byte 79
.byte 71
.byte 82
.byte 65
.byte 77
.byte 32
.byte 83
.byte 73
.byte 90
.byte 69
.byte 32
.byte 61
.byte 32
.byte 37
.byte 78
.byte 10
.align 2
.align 4
L2168:
.word -1
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 5
.word 21
.word 0
.word 12
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 64
.word 90
.word 127
.word 123
.word 91
.word 108
.word 80
.word 125
.word 77
.word 93
.word 92
.word 78
.word 107
.word 96
.word 75
.word 97
.word 240
.word 241
.word 242
.word 243
.word 244
.word 245
.word 246
.word 247
.word 248
.word 249
.word 122
.word 94
.word 76
.word 126
.word 110
.word 111
.word 124
.word 193
.word 194
.word 195
.word 196
.word 197
.word 198
.word 199
.word 200
.word 201
.word 209
.word 210
.word 211
.word 212
.word 213
.word 214
.word 215
.word 216
.word 217
.word 226
.word 227
.word 228
.word 229
.word 230
.word 231
.word 232
.word 233
.word 66
.word 98
.word 67
.word 101
.word 102
.word 64
.word 129
.word 130
.word 131
.word 132
.word 133
.word 134
.word 135
.word 136
.word 137
.word 145
.word 146
.word 147
.word 148
.word 149
.word 150
.word 151
.word 152
.word 153
.word 162
.word 163
.word 164
.word 165
.word 166
.word 167
.word 168
.word 169
.word 64
.word 79
.word 64
.word 95
.word 255
.align 4
L2169:
.word -1
.word 0
.word 0
.word 0
.word 0
.word 0
.word 9
.word 0
.word 0
.word 0
.word 0
.word 0
.word 11
.word 12
.word 13
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 10
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 10
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 32
.word 0
.word 91
.word 93
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 46
.word 60
.word 40
.word 43
.word 124
.word 38
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 33
.word 36
.word 42
.word 41
.word 59
.word 126
.word 45
.word 47
.word 92
.word 0
.word 0
.word 94
.word 95
.word 0
.word 0
.word 0
.word 0
.word 44
.word 37
.word 96
.word 62
.word 63
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 58
.word 35
.word 64
.word 39
.word 61
.word 34
.word 0
.word 97
.word 98
.word 99
.word 100
.word 101
.word 102
.word 103
.word 104
.word 105
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 106
.word 107
.word 108
.word 109
.word 110
.word 111
.word 112
.word 113
.word 114
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 115
.word 116
.word 117
.word 118
.word 119
.word 120
.word 121
.word 122
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 65
.word 66
.word 67
.word 68
.word 69
.word 70
.word 71
.word 72
.word 73
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 74
.word 75
.word 76
.word 77
.word 78
.word 79
.word 80
.word 81
.word 82
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 83
.word 84
.word 85
.word 86
.word 87
.word 88
.word 89
.word 90
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 48
.word 49
.word 50
.word 51
.word 52
.word 53
.word 54
.word 55
.word 56
.word 57
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.align 4
L2170:
.word 5121
.word 49154
.word 57366
.align 4
L2489:
.byte 35
.byte 10
.byte 10
.byte 69
.byte 88
.byte 69
.byte 67
.byte 85
.byte 84
.byte 73
.byte 79
.byte 78
.byte 32
.byte 67
.byte 89
.byte 67
.byte 76
.byte 69
.byte 83
.byte 32
.byte 61
.byte 32
.byte 37
.byte 78
.byte 44
.byte 32
.byte 67
.byte 79
.byte 68
.byte 69
.byte 32
.byte 61
.byte 32
.byte 37
.byte 78
.byte 10
.align 2
.global G
.align 2
G:
.word 0 # 0
.word L2165 # 1
.word 0 # 2
.word 0 # 3
.word 0 # 4
.word 0 # 5
.word 0 # 6
.word 0 # 7
.word 0 # 8
.word 0 # 9
.word 0 # 10
.word 0 # 11
.word 0 # 12
.word 0 # 13
.word 0 # 14
.word 0 # 15
.word 0 # 16
.word 0 # 17
.word 0 # 18
.word 0 # 19
.word 0 # 20
.word 0 # 21
.word 0 # 22
.word 0 # 23
.word 0 # 24
.word 0 # 25
.word 0 # 26
.word 0 # 27
.word 0 # 28
.word 0 # 29
.word 0 # 30
.word 0 # 31
.word 0 # 32
.word 0 # 33
.word 0 # 34
.word 0 # 35
.word 0 # 36
.word 0 # 37
.word 0 # 38
.word 0 # 39
.word 0 # 40
.word 0 # 41
.word 0 # 42
.word 0 # 43
.word 0 # 44
.word 0 # 45
.word 0 # 46
.word 0 # 47
.word 0 # 48
.word 0 # 49
.word 0 # 50
.word 0 # 51
.word 0 # 52
.word 0 # 53
.word 0 # 54
.word 0 # 55
.word 0 # 56
.word 0 # 57
.word 0 # 58
.word 0 # 59
.word 0 # 60
.word 0 # 61
.word 0 # 62
.word 0 # 63
.word 0 # 64
.word 0 # 65
.word 0 # 66
.word 0 # 67
.word 0 # 68
.word 0 # 69
.word 0 # 70
.word 0 # 71
.word 0 # 72
.word 0 # 73
.word 0 # 74
.word 0 # 75
.word 0 # 76
.word 0 # 77
.word 0 # 78
.word 0 # 79
.word 0 # 80
.word 0 # 81
.word 0 # 82
.word 0 # 83
.word 0 # 84
.word 0 # 85
.word 0 # 86
.word 0 # 87
.word 0 # 88
.word 0 # 89
.word 0 # 90
.word 0 # 91
.word 0 # 92
.word 0 # 93
.word 0 # 94
.word 0 # 95
.word 0 # 96
.word 0 # 97
.word 0 # 98
.word 0 # 99
.word 0 # 100
.word 0 # 101
.word 0 # 102
.word 0 # 103
.word 0 # 104
.word 0 # 105
.word 0 # 106
.word 0 # 107
.word 0 # 108
.word 0 # 109
.word 0 # 110
.word 0 # 111
.word 0 # 112
.word 0 # 113
.word 0 # 114
.word 0 # 115
.word 0 # 116
.word 0 # 117
.word 0 # 118
.word 0 # 119
.word 0 # 120
.word 0 # 121
.word 0 # 122
.word 0 # 123
.word 0 # 124
.word 0 # 125
.word 0 # 126
.word 0 # 127
.word 0 # 128
.word 0 # 129
.word 0 # 130
.word 0 # 131
.word 0 # 132
.word 0 # 133
.word 0 # 134
.word 0 # 135
.word 0 # 136
.word 0 # 137
.word 0 # 138
.word 0 # 139
.word 0 # 140
.word 0 # 141
.word 0 # 142
.word 0 # 143
.word 0 # 144
.word 0 # 145
.word 0 # 146
.word 0 # 147
.word 0 # 148
.word 0 # 149
.word 0 # 150
.word 0 # 151
.word 0 # 152
.word 0 # 153
.word 0 # 154
.word 0 # 155
.word 0 # 156
.word 0 # 157
.word 0 # 158
.word 0 # 159
.word 0 # 160
.word 0 # 161
.word 0 # 162
.word 0 # 163
.word 0 # 164
.word 0 # 165
.word 0 # 166
.word 0 # 167
.word 0 # 168
.word 0 # 169
.word 0 # 170
.word 0 # 171
.word 0 # 172
.word 0 # 173
.word 0 # 174
.word 0 # 175
.word 0 # 176
.word 0 # 177
.word 0 # 178
.word 0 # 179
.word 0 # 180
.word 0 # 181
.word 0 # 182
.word 0 # 183
.word 0 # 184
.word 0 # 185
.word 0 # 186
.word 0 # 187
.word 0 # 188
.word 0 # 189
.word 0 # 190
.word 0 # 191
.word 0 # 192
.word 0 # 193
.word 0 # 194
.word 0 # 195
.word 0 # 196
.word 0 # 197
.word 0 # 198
.word 0 # 199
.word 0 # 200
.word 0 # 201
.word 0 # 202
.word 0 # 203
.word 0 # 204
.word 0 # 205
.word 0 # 206
.word 0 # 207
.word 0 # 208
.word 0 # 209
.word 0 # 210
.word 0 # 211
.word 0 # 212
.word 0 # 213
.word 0 # 214
.word 0 # 215
.word 0 # 216
.word 0 # 217
.word 0 # 218
.word 0 # 219
.word 0 # 220
.word 0 # 221
.word 0 # 222
.word 0 # 223
.word 0 # 224
.word 0 # 225
.word 0 # 226
.word 0 # 227
.word 0 # 228
.word 0 # 229
.word 0 # 230
.word 0 # 231
.word 0 # 232
.word 0 # 233
.word 0 # 234
.word 0 # 235
.word 0 # 236
.word 0 # 237
.word 0 # 238
.word 0 # 239
.word 0 # 240
.word 0 # 241
.word 0 # 242
.word 0 # 243
.word 0 # 244
.word 0 # 245
.word 0 # 246
.word 0 # 247
.word 0 # 248
.word 0 # 249
.word 0 # 250
.word 0 # 251
.word 0 # 252
.word 0 # 253
.word 0 # 254
.word 0 # 255
.word 0 # 256
.word 0 # 257
.word 0 # 258
.word 0 # 259
.word 0 # 260
.word 0 # 261
.word 0 # 262
.word 0 # 263
.word 0 # 264
.word 0 # 265
.word 0 # 266
.word 0 # 267
.word 0 # 268
.word 0 # 269
.word 0 # 270
.word 0 # 271
.word 0 # 272
.word 0 # 273
.word 0 # 274
.word 0 # 275
.word 0 # 276
.word 0 # 277
.word 0 # 278
.word 0 # 279
.word 0 # 280
.word 0 # 281
.word 0 # 282
.word 0 # 283
.word 0 # 284
.word 0 # 285
.word 0 # 286
.word 0 # 287
.word 0 # 288
.word 0 # 289
.word 0 # 290
.word 0 # 291
.word 0 # 292
.word 0 # 293
.word 0 # 294
.word 0 # 295
.word 0 # 296
.word 0 # 297
.word 0 # 298
.word 0 # 299
.word 0 # 300
.word 0 # 301
.word 0 # 302
.word 0 # 303
.word 0 # 304
.word 0 # 305
.word 0 # 306
.word 0 # 307
.word 0 # 308
.word 0 # 309
.word 0 # 310
.word 0 # 311
.word 0 # 312
.word 0 # 313
.word 0 # 314
.word 0 # 315
.word 0 # 316
.word 0 # 317
.word 0 # 318
.word 0 # 319
.word 0 # 320
.word 0 # 321
.word 0 # 322
.word 0 # 323
.word 0 # 324
.word 0 # 325
.word 0 # 326
.word 0 # 327
.word 0 # 328
.word 0 # 329
.word 0 # 330
.word 0 # 331
.word 0 # 332
.word 0 # 333
.word 0 # 334
.word 0 # 335
.word 0 # 336
.word 0 # 337
.word 0 # 338
.word 0 # 339
.word 0 # 340
.word 0 # 341
.word 0 # 342
.word 0 # 343
.word 0 # 344
.word 0 # 345
.word 0 # 346
.word 0 # 347
.word 0 # 348
.word 0 # 349
.word 0 # 350
.word 0 # 351
.word 0 # 352
.word 0 # 353
.word 0 # 354
.word 0 # 355
.word 0 # 356
.word 0 # 357
.word 0 # 358
.word 0 # 359
.word 0 # 360
.word 0 # 361
.word 0 # 362
.word 0 # 363
.word 0 # 364
.word 0 # 365
.word 0 # 366
.word 0 # 367
.word 0 # 368
.word 0 # 369
.word 0 # 370
.word 0 # 371
.word 0 # 372
.word 0 # 373
.word 0 # 374
.word 0 # 375
.word 0 # 376
.word 0 # 377
.word 0 # 378
.word 0 # 379
.word 0 # 380
.word 0 # 381
.word 0 # 382
.word 0 # 383
.word 0 # 384
.word 0 # 385
.word 0 # 386
.word 0 # 387
.word 0 # 388
.word 0 # 389
.word 0 # 390
.word 0 # 391
.word 0 # 392
.word 0 # 393
.word 0 # 394
.word 0 # 395
.word 0 # 396
.word 0 # 397
.word 0 # 398
.word 0 # 399
.word 0 # 400
.word 0 # 401
.word 0 # 402
.word 0 # 403
.word 0 # 404
.word 0 # 405
.word 0 # 406
.word 0 # 407
.word 0 # 408
.word 0 # 409
.word 0 # 410
.word 0 # 411
.word 0 # 412
.word 0 # 413
.word 0 # 414
.word 0 # 415
.word 0 # 416
.word 0 # 417
.word 0 # 418
.word 0 # 419
.word 0 # 420
.word 0 # 421
.word 0 # 422
.word 0 # 423
.word 0 # 424
.word 0 # 425
.word 0 # 426
.word 0 # 427
.word 0 # 428
.word 0 # 429
.word 0 # 430
.word 0 # 431
.word 0 # 432
.word 0 # 433
.word 0 # 434
.word 0 # 435
.word 0 # 436
.word 0 # 437
.word 0 # 438
.word 0 # 439
.word 0 # 440
.word 0 # 441
.word 0 # 442
.word 0 # 443
.word 0 # 444
.word 0 # 445
.word 0 # 446
.word 0 # 447
.word 0 # 448
.word 0 # 449
.word 0 # 450
.word 0 # 451
.word 0 # 452
.word 0 # 453
.word 0 # 454
.word 0 # 455
.word 0 # 456
.word 0 # 457
.word 0 # 458
.word 0 # 459
.word 0 # 460
.word 0 # 461
.word 0 # 462
.word 0 # 463
.word 0 # 464
.word 0 # 465
.word 0 # 466
.word 0 # 467
.word 0 # 468
.word 0 # 469
.word 0 # 470
.word 0 # 471
.word 0 # 472
.word 0 # 473
.word 0 # 474
.word 0 # 475
.word 0 # 476
.word 0 # 477
.word 0 # 478
.word 0 # 479
.word 0 # 480
.word 0 # 481
.word 0 # 482
.word 0 # 483
.word 0 # 484
.word 0 # 485
.word 0 # 486
.word 0 # 487
.word 0 # 488
.word 0 # 489
.word 0 # 490
.word 0 # 491
.word 0 # 492
.word 0 # 493
.word 0 # 494
.word 0 # 495
.word 0 # 496
.word 0 # 497
.word 0 # 498
.word 0 # 499
