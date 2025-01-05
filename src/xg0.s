#A.LP T.P
.align 4
L2011:
lw a0,8(s2)
#X24
call selectinput
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2012:
lw a0,8(s2)
#X25
call selectoutput
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#X26
.align 4
L2013:
call rdch
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2014:
lw a0,8(s2)
#X27
call wrch
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2042:
lw a0,8(s2)
#X28
call findinput
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2041:
lw a0,8(s2)
#X29
call findoutput
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2030:
lw a0,8(s2)
#X30
j stop
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#X31
.align 4
L2031:
lw a0,0(s2)
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2032:
lw a0,12(s2)
#A.LP T.P
lw a1,8(s2)
#X32
mv s2,t0
jalr zero,a0,0
#X33
.align 4
L2046:
call endread
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#X34
.align 4
L2047:
call endwrite
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2040:
lw a0,12(s2)
#A.LP T.P
lw a1,8(s2)
#X35
mv s1,s2
mv t0,a0
addi t0,t0,1
slli t0,t0,2
add s1,s1,t0
lw t0,0(s2)
sw t0,0(s1)
lw t0,4(s2)
sw t0,4(s1)
mv t0,s2
srli t0,t0,2
sw t0,8(s1)
sw a0,12(s1)
mv s2,s1
jalr zero,t1,0
#A.LP T.P
.align 4
L2085:
lw a0,12(s2)
#A.LP T.P
lw a1,8(s2)
#X36
slli t1,a1,2
add t1,a0,t1
lb a0,0(t1)
andi a0,a0,0xff
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2086:
lw a0,12(s2)
#A.LP T.P
lw a1,8(s2)
#X37
slli t1,t1,2
add t1,a0,t1
lw a0,16(s2)
sb a0,0(t1)
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#X38
.align 4
L2016:
call input
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#X39
.align 4
L2017:
call output
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2015:
lw a0,8(s2)
#X40
call unrdch
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#X41
.align 4
L2035:
call rewind
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
jalr zero,a0,0
.align 4
L2501:
li a0,1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,24(s2)
li a0,0
#A.SW T.P
sw a0,28(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
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
jalr zero,a0,0
#A.LP T.P
.align 4
L2515:
lw a0,8(s2)
#A.SW T.P
sw a0,36(s2)
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,28
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,28(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,20
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,12(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
.align 4
L2514:
lw a0,12(s2)
#X15
ble a0,a0,L2515
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2502:
li a0,0
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,28(s2)
li a0,0
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
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
L2517:
lw a0,8(s2)
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,36(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,16(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,24(s2)
#A.LP T.P
lw a1,28(s2)
#A.MV T.IR
mv a0,a0
#A.LP T.P
lw a0,16(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
.align 4
L2516:
lw a0,16(s2)
#X15
ble a0,a0,L2517
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2503:
li a0,0
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#X18
and a0,a0,a1
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,16(s2)
li a1,4
#X6
div a0,a0,a1
#A.SW T.P
sw a0,20(s2)
li a0,0
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,28(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2520:
lw a0,12(s2)
#A.SW T.P
sw a0,40(s2)
#A.LP T.P
lw a0,24(s2)
#A.SW T.P
sw a0,44(s2)
#A.LP T.P
lw a0,24(s2)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,344+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,24(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
.align 4
L2519:
lw a0,24(s2)
#X15
ble a0,a0,L2520
jalr zero,a0,0
#A.LP T.P
.align 4
L2523:
lw a0,12(s2)
#A.SW T.P
sw a0,32(s2)
li a0,3
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,36(s2)
li a0,0
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
.align 4
L2524:
lw a0,12(s2)
#A.SW T.P
sw a0,32(s2)
li a0,2
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,36(s2)
li a0,0
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
.align 4
L2525:
lw a0,12(s2)
#A.SW T.P
sw a0,32(s2)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,36(s2)
li a0,0
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
.align 4
L2526:
jalr zero,a0,0
.align 4
L2521:
li a0,3
#X18
and a0,a0,a1
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
.word 4
.word L2522
.word 0
.word L2523
.word 1
.word L2524
.word 2
.word L2525
.word 3
.word L2526
#A.LP T.P
.text
.align 4
L2522:
lw a0,20(s2)
jalr zero,a0,0
#X4
.align 4
L2518:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#E true, coding LW
.align 4
L2504:
lw a0,28(s2)
srli a0,a0,2
#A.SW T.P
sw a0,16(s2)
li a0,0
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,8(s2)
#X12
bge a0,a0,L2527
#A.LP T.P
lw a0,12(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,12(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2527:
lw a0,8(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
.align 4
L2528:
L2529:
lw a0,24(s2)
li a1,10
#X7
rem a0,a0,a1
#A.SW T.P
sw a0,112(s2)
#A.LP T.P
lw a0,20(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,116(s2)
#A.LP T.P
lw a0,112(s2)
#A.LP T.P
lw a1,116(s2)
#A.MV T.IR
mv a0,a0
#A.LP T.P
lw a0,24(s2)
li a1,10
#X6
div a0,a0,a1
#A.SW T.P
sw a0,24(s2)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,20(s2)
li a0,0
#X10
bne a0,a0,L2529
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,112(s2)
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,116(s2)
jalr zero,a0,0
.align 4
L2531:
li a0,32
#A.SW T.P
sw a0,128(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,120
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,112(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,112(s2)
#A.LP T.P
.align 4
L2530:
lw a0,112(s2)
#X15
ble a0,a0,L2531
#A.LP T.P
lw a0,8(s2)
#X12
bge a0,a0,L2532
li a0,45
#A.SW T.P
sw a0,120(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,112
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
.align 4
L2532:
lw a0,20(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,112(s2)
jalr zero,a0,0
.align 4
L2534:
li a0,48
#A.SW T.P
sw a0,124(s2)
#A.LP T.P
lw a0,112(s2)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,128(s2)
#A.LP T.P
lw a0,124(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,124(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,116
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,112(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,112(s2)
#A.LP T.P
.align 4
L2533:
lw a0,112(s2)
#X13
bge a0,a0,L2534
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2505:
lw a0,8(s2)
#A.SW T.P
sw a0,20(s2)
li a0,0
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,272+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2506:
li a0,10
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
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2507:
li a0,12
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
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L2508:
li a0,0
#A.SW T.P
sw a0,8(s2)
li a0,0
#A.SW T.P
sw a0,12(s2)
#A.LG T.G
.align 4
L2536:
la a0,52+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,284(s0)
jalr zero,a0,0
.align 4
L2540:
L2541:
L2542:
jalr zero,a0,0
.align 4
L2543:
li a0,-1
#A.SW T.P
sw a0,12(s2)
#A.LG T.G
.align 4
L2544:
la a0,52+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,284(s0)
jalr zero,a0,0
#A.LG T.G
.align 4
L2538:
la a0,284+G
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
.word 5
.word L2539
.word 32
.word L2540
.word 9
.word L2541
.word 10
.word L2542
.word 45
.word L2543
.word 43
.word L2544
.text
.align 4
L2539:
jalr zero,a0,0
#A.LP T.P
.align 4
L2545:
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
#A.LG T.G
la a0,52+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,284(s0)
.align 4
L2546:
li a0,48
#X15
bgt a0,a0,L2547
#A.LG T.G
la a0,284+G
lw a0,0(a0)
#X15
ble a0,a0,L2545
#A.LP T.P
.align 4
L2547:
lw a0,12(s2)
bnez a0,1f
beq a0,a0,L2548
#A.LP T.P
lw a0,8(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,8(s2)
#A.LP T.P
.align 4
L2548:
lw a0,8(s2)
jalr zero,a0,0
#X4
.align 4
L2535:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2509:
lw a0,12(s2)
#X14
ble a0,a0,L2549
#A.LP T.P
lw a0,8(s2)
#X17
srl a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,12(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LG T.G
la a0,308+G
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
L2549:
li a0,7
#X18
and a0,a0,a1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L2510:
lw a0,12(s2)
#X14
ble a0,a0,L2550
#A.LP T.P
lw a0,8(s2)
#X17
srl a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,12(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LG T.G
la a0,300+G
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
L2550:
li a0,15
#X18
and a0,a0,a1
#A.LA T.LL
la a1,L2551
srli a0,a0,2
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#E true, coding LW
.align 4
L2511:
lw a0,12(s2)
srli a0,a0,2
#A.SW T.P
sw a0,56(s2)
li a0,1
#A.SW T.P
sw a0,60(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,72(s2)
li a0,0
#A.SW T.P
sw a0,76(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,64
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,64(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2553:
lw a0,8(s2)
#A.SW T.P
sw a0,76(s2)
#A.LP T.P
lw a0,60(s2)
#A.SW T.P
sw a0,80(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,68
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,68(s2)
li a0,37
#X10
bne a0,a0,L2554
li a0,0
#A.SW T.P
sw a0,72(s2)
li a0,0
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,76(s2)
li a0,0
#A.SW T.P
sw a0,80(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,92(s2)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,96(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,84
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,84(s2)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,60(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2562:
lw a0,84(s2)
#A.SW T.P
sw a0,96(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,88
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LG T.G
.align 4
L2563:
la a0,240+G
lw a0,0(a0)
#A.SW T.P
sw a0,72(s2)
jalr zero,a0,0
#A.LG T.G
.align 4
L2564:
la a0,56+G
lw a0,0(a0)
#A.SW T.P
sw a0,72(s2)
jalr zero,a0,0
#A.LG T.G
.align 4
L2565:
la a0,308+G
lw a0,0(a0)
#A.SW T.P
sw a0,72(s2)
jalr zero,a0,0
#A.LG T.G
.align 4
L2566:
la a0,300+G
lw a0,0(a0)
#A.SW T.P
sw a0,72(s2)
jalr zero,a0,0
#A.LG T.G
.align 4
L2567:
la a0,272+G
lw a0,0(a0)
#A.SW T.P
sw a0,72(s2)
jalr zero,a0,0
#A.LG T.G
.align 4
L2568:
la a0,272+G
lw a0,0(a0)
#A.SW T.P
sw a0,72(s2)
jalr zero,a0,0
.align 4
L2558:
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,60(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,96(s2)
#A.LP T.P
lw a0,60(s2)
#A.SW T.P
sw a0,100(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,88
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,80(s2)
li a0,48
#X15
bgt a0,a0,L2570
#A.LP T.P
lw a0,80(s2)
#X15
bgt a0,a0,L2570
#A.LP T.P
lw a0,80(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,88(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2570:
lw a0,80(s2)
#X9
sub a0,a0,a1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,88(s2)
#A.LP T.P
.align 4
L2569:
lw a0,88(s2)
#A.SW T.P
sw a0,80(s2)
#A.LP T.P
.align 4
L2556:
lw a0,76(s2)
#A.SW T.P
sw a0,96(s2)
#A.LP T.P
lw a0,80(s2)
#A.SW T.P
sw a0,100(s2)
#A.LP T.P
lw a0,72(s2)
mv s1,s2
#ADDI
addi s2,s2,88
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,56(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L2560:
lw a0,84(s2)
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
.word 6
.word L2562
.word 83
.word L2563
.word 67
.word L2564
.word 79
.word L2565
.word 88
.word L2566
.word 73
.word L2567
.word 78
.word L2568
.text
.align 4
L2561:
jalr zero,a0,0
#A.LP T.P
.align 4
L2554:
lw a0,68(s2)
#A.SW T.P
sw a0,80(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,72
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
.align 4
L2555:
lw a0,60(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,60(s2)
#A.LP T.P
.align 4
L2552:
lw a0,60(s2)
#X15
ble a0,a0,L2553
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LA T.LL
.align 4
L2512:
la a0,L2999
srli a0,a0,2
#A.SW T.P
sw a0,16(s2)
#A.LG T.G
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.data
.align 4
L2513:
L2537:
.word L2536
.align 4
L2551:
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
.word 65
.word 66
.word 67
.word 68
.word 69
.word 70
.align 4
L2557:
.word L2556
.align 4
L2559:
.word L2558
.align 4
L2999:
.byte 26
.byte 10
.byte 77
.byte 65
.byte 80
.byte 83
.byte 84
.byte 79
.byte 82
.byte 69
.byte 32
.byte 78
.byte 79
.byte 84
.byte 32
.byte 73
.byte 77
.byte 80
.byte 76
.byte 69
.byte 77
.byte 69
.byte 78
.byte 84
.byte 69
.byte 68
.byte 10
.align 2
.text
jalr zero,a0,0
#E true, coding LW
.align 4
L3001:
lw a0,16(s2)
srli a0,a0,2
#A.SW T.P
sw a0,8(s2)
#BIGOFF
li a0,505
add a0,a0,a1
lw a0,2020(s2)
srli a0,a0,2
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#A.SG T.G
sw a0,600(s0)
#A.LP T.P
lw a0,12(s2)
#A.SG T.G
sw a0,604(s0)
li a0,0
#sw extended index T.P
li t0, 4024
add t0, t0, s2
sw a0,(t0)
li a0,500
#sw extended index T.P
li t0, 4028
add t0, t0, s2
sw a0,(t0)
jalr zero,a0,0
.align 4
L3033:
li a0,0
#sw extended index T.P
li t0, 4032
add t0, t0, s2
sw a0,(t0)
li t0, 4024
add t0, t0, s2
lw a0,(t0)
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 4036
add t0, t0, s2
sw a0,(t0)
li t0, 4032
add t0, t0, s2
lw a0,(t0)
li t0, 4036
add t0, t0, s2
lw a0,(t0)
#A.MV T.IR
mv a0,a0
li t0, 4024
add t0, t0, s2
lw a0,(t0)
#A.ADD chosen
add a0,a0,a1
#sw extended index T.P
li t0, 4024
add t0, t0, s2
sw a0,(t0)
.align 4
L3032:
li t0, 4024
add t0, t0, s2
lw a0,(t0)
#X15
ble a0,a0,L3033
li a0,0
#A.SG T.G
sw a0,608(s0)
li a0,0
#A.SG T.G
sw a0,616(s0)
li a0,0
#A.SG T.G
sw a0,620(s0)
li a0,0
#A.SG T.G
sw a0,624(s0)
li a0,2000
#A.SG T.G
sw a0,612(s0)
li a0,10
#A.SG T.G
sw a0,628(s0)
#A.LG T.G
la a0,68+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,4024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,632(s0)
#A.LA T.LL
la a0,L3499
srli a0,a0,2
#sw extended index T.P
li t0, 4032
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,164+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,4024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SG T.G
sw a0,636(s0)
#A.LG T.G
la a0,636+G
lw a0,0(a0)
#sw extended index T.P
li t0, 4032
add t0, t0, s2
sw a0,(t0)
#A.LG T.G
la a0,48+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,4024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3003
mv s1,s2
#ADD
li t0,4024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3009
mv s1,s2
#ADD
li t0,4024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LG T.G
la a0,188+G
lw a0,0(a0)
mv s1,s2
#ADD
li t0,4024
add s2,s2,t0
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,0
jalr zero,a0,0
#X4
.align 4
L3031:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3002:
L3034:
li a0,0
#A.SW T.P
sw a0,8(s2)
li a0,0
#A.SW T.P
sw a0,12(s2)
li a0,0
#A.SW T.P
sw a0,16(s2)
li a0,0
#A.SW T.P
sw a0,20(s2)
#A.LA T.L
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LG T.G
la a0,628+G
lw a0,0(a0)
#A.SW T.P
sw a0,8(s2)
jalr zero,a0,0
.align 4
L3037:
li a0,1
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3038:
li a0,0
#A.SW T.P
sw a0,32(s2)
li a0,0
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3005
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3039:
L3040:
L3041:
jalr zero,a0,0
.align 4
L3042:
li a0,500
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,612(s0)
jalr zero,a0,0
#A.LA T.L
.align 4
L3043:
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3023
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,12(s2)
#X12
blt a0,a0,L3044
li a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3044:
li a0,76
#X10
beq a0,a0,L3045
li a0,3
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
.align 4
L3045:
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3023
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,12(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,24(s2)
#A.LP T.P
lw a1,28(s2)
#A.MV T.IR
mv a0,a0
jalr zero,a0,0
.align 4
L3046:
L3047:
L3048:
L3049:
L3050:
L3051:
L3052:
L3053:
L3054:
L3055:
li a0,66
#A.SW T.P
sw a0,8(s2)
#A.LA T.L
la a0,L3023
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
jalr zero,a0,0
#A.LA T.L
.align 4
L3056:
L3057:
L3058:
L3059:
L3060:
L3061:
L3062:
L3063:
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,73
#X10
bne a0,a0,L3064
li a0,1
#A.SW T.P
sw a0,20(s2)
#A.LA T.L
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3064:
li a0,71
#X10
bne a0,a0,L3066
li a0,2
#A.SW T.P
sw a0,24(s2)
jalr zero,a0,0
.align 4
L3066:
li a0,80
#X10
bne a0,a0,L3068
li a0,1
#A.SW T.P
sw a0,24(s2)
jalr zero,a0,0
.align 4
L3068:
li a0,76
#X10
bne a0,a0,L3070
li a0,3
#A.SW T.P
sw a0,24(s2)
jalr zero,a0,0
.align 4
L3070:
li a0,0
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
.align 4
L3069:
L3067:
L3065:
lw a0,24(s2)
#A.SW T.P
sw a0,16(s2)
li a0,83
#X10
bne a0,a0,L3071
li a0,0
#X10
bne a0,a0,L3072
li a0,4
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3072:
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
.align 4
L3071:
lw a0,16(s2)
bnez a0,1f
beq a0,a0,L3073
#A.LA T.L
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
.align 4
L3073:
la a0,L3023
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,12(s2)
li a0,3
#X10
bne a0,a0,L3074
#A.LG T.G
la a0,612+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
#A.LP T.P
.align 4
L3074:
lw a0,20(s2)
#X16
sll a0,a0,a1
#X19
or a0,a0,a1
#A.SW T.P
sw a0,16(s2)
jalr zero,a0,0
#A.LA T.L
.align 4
L3075:
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3023
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,12(s2)
jalr zero,a0,0
#A.LA T.L
.align 4
L3076:
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,76
#X10
bne a0,a0,L3077
li a0,3
#A.SW T.P
sw a0,16(s2)
#A.LA T.L
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
.align 4
L3077:
la a0,L3023
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,12(s2)
li a0,3
#X10
bne a0,a0,L3078
#A.LG T.G
la a0,612+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,12(s2)
.align 4
L3078:
jalr zero,a0,0
#A.LP T.P
.align 4
L3035:
lw a0,8(s2)
#X23
la s1,L3
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
L3:
.word 26
.word L3037
.word -1
.word L3038
.word 32
.word L3039
.word 10
.word L3040
.word 36
.word L3041
.word 90
.word L3042
.word 71
.word L3043
.word 48
.word L3046
.word 49
.word L3047
.word 50
.word L3048
.word 51
.word L3049
.word 52
.word L3050
.word 53
.word L3051
.word 54
.word L3052
.word 55
.word L3053
.word 56
.word L3054
.word 57
.word L3055
.word 65
.word L3056
.word 70
.word L3057
.word 74
.word L3058
.word 75
.word L3059
.word 76
.word L3060
.word 83
.word L3061
.word 84
.word L3062
.word 88
.word L3063
.word 67
.word L3075
.word 68
.word L3076
#A.LP T.P
.text
.align 4
L3036:
lw a0,8(s2)
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,36(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3005
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3004:
jalr zero,a0,0
.align 4
L3086:
li a0,5
#X15
ble a0,a1,L10000
addi a0,zero,-1 

.align 4
L10000:
addi a0,zero,0 

#A.SW T.P
sw a0,12(s2)
#A.LP T.P
lw a0,8(s2)
#X15
ble a0,a1,L10001
addi a0,zero,-1 

.align 4
L10001:
addi a0,zero,0 

#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,12(s2)
#X18
and a0,a0,a1
#A.SW T.P
sw a0,12(s2)
li a0,32
#X10
beq a0,a1,L10002
addi a0,zero,-1 

.align 4
L10002:
addi a0,zero,0 

#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,12(s2)
#X19
or a0,a0,a1
#A.SW T.P
sw a0,12(s2)
li a0,35
#X15
ble a0,a1,L10003
addi a0,zero,-1 

.align 4
L10003:
addi a0,zero,0 

#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,8(s2)
#X15
ble a0,a1,L10004
addi a0,zero,-1 

.align 4
L10004:
addi a0,zero,0 

#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,16(s2)
#X18
and a0,a0,a1
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,12(s2)
#X19
or a0,a0,a1
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3088:
li a0,5
#X15
ble a0,a1,L10005
addi a0,zero,-1 

.align 4
L10005:
addi a0,zero,0 

#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,8(s2)
#X15
ble a0,a1,L10006
addi a0,zero,-1 

.align 4
L10006:
addi a0,zero,0 

#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,16(s2)
#X18
and a0,a0,a1
#A.SW T.P
sw a0,16(s2)
li a0,0
#X10
beq a0,a1,L10007
addi a0,zero,-1 

.align 4
L10007:
addi a0,zero,0 

#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,16(s2)
#X18
and a0,a0,a1
#A.SW T.P
sw a0,16(s2)
li a0,16
#X15
ble a0,a1,L10008
addi a0,zero,-1 

.align 4
L10008:
addi a0,zero,0 

#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,8(s2)
#X15
ble a0,a1,L10009
addi a0,zero,-1 

.align 4
L10009:
addi a0,zero,0 

#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,20(s2)
#X18
and a0,a0,a1
#A.SW T.P
sw a0,20(s2)
li a0,0
#X11
bne a0,a1,L10010
addi a0,zero,-1 

.align 4
L10010:
addi a0,zero,0 

#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,20(s2)
#X18
and a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,16(s2)
#X19
or a0,a0,a1
#A.SW T.P
sw a0,16(s2)
#A.LP T.P
lw a0,8(s2)
#X13
bge a0,a1,L10011
addi a0,zero,-1 

.align 4
L10011:
addi a0,zero,0 

#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,16(s2)
#X19
or a0,a0,a1
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3090:
li a0,1
#X10
beq a0,a1,L10012
addi a0,zero,-1 

.align 4
L10012:
addi a0,zero,0 

#A.SW T.P
sw a0,20(s2)
li a0,2
#X10
beq a0,a1,L10013
addi a0,zero,-1 

.align 4
L10013:
addi a0,zero,0 

#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,20(s2)
#X19
or a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,12(s2)
#X3
not a0,a0
#A.SW T.P
sw a0,24(s2)
li a0,3
#X10
beq a0,a1,L10014
addi a0,zero,-1 

.align 4
L10014:
addi a0,zero,0 

#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,24(s2)
#X18
and a0,a0,a1
#X19
or a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LA T.L
la a0,L3081
#X13
bge a0,a1,L10015
addi a0,zero,-1 

.align 4
L10015:
addi a0,zero,0 

#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,16(s2)
bnez a0,1f
bne a0,a0,L3094
#A.LP T.P
lw a0,24(s2)
bnez a0,1f
bne a0,a0,L3094
#A.LP T.P
lw a0,28(s2)
bnez a0,1f
beq a0,a0,L3093
.align 4
L3094:
li a0,0
#X10
bne a0,a0,L3095
#A.LP T.P
lw a0,12(s2)
bnez a0,1f
bne a0,a0,L3095
li a0,25
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3095:
lw a0,20(s2)
bnez a0,1f
beq a0,a0,L3097
#A.LA T.L
la a0,L3080
#X12
bge a0,a0,L3099
#A.LA T.L
la a0,L3080
#X14
ble a0,a0,L3099
#A.LA T.LL
la a0,L3498
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,19
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3099:
la a0,L3497
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,25
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,10
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,19
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3100:
jalr zero,a0,0
.align 4
L3097:
jalr zero,a0,0
.align 4
L3103:
li a0,79
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3104:
la a0,L3496
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,26
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3105:
li a0,77
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3106:
li a0,76
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3107:
la a0,L3495
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,26
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.L
.align 4
L3108:
L3109:
la a0,L3080
#X12
bge a0,a0,L3110
#A.LA T.L
la a0,L3080
#X14
ble a0,a0,L3110
#A.LA T.LL
la a0,L3494
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,28
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3110:
la a0,L3493
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
li a0,0
#A.SW T.P
sw a0,52(s2)
li a0,0
#A.SW T.P
sw a0,56(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3492
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
li a0,0
#A.SW T.P
sw a0,52(s2)
li a0,0
#A.SW T.P
sw a0,56(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3491
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
li a0,0
#A.SW T.P
sw a0,52(s2)
li a0,0
#A.SW T.P
sw a0,56(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3111:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3112:
la a0,L3490
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,27
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3489
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3113:
la a0,L3488
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,26
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3114:
la a0,L3487
srli a0,a0,2
#A.SW T.P
sw a0,40(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,26
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3115:
li a0,70
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3116:
li a0,69
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3117:
li a0,68
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
jalr zero,a0,0
#A.LA T.L
.align 4
L3101:
la a0,L3081
#X23
la s1,L4
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
L4:
.word 12
.word L3117
.word 0
.word L3103
.word 3
.word L3104
.word 1
.word L3105
.word 2
.word L3106
.word 4
.word L3107
.word 5
.word L3108
.word 9
.word L3109
.word 6
.word L3112
.word 7
.word L3113
.word 8
.word L3114
.word 10
.word L3115
.word 11
.word L3116
#A.LP T.P
.text
.align 4
L3102:
L3098:
L3096:
lw a0,24(s2)
bnez a0,1f
beq a0,a0,L3118
#A.LP T.P
lw a0,12(s2)
bnez a0,1f
bne a0,a0,L3118
li a0,22
#A.SW T.P
sw a0,40(s2)
li a0,2
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,32
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
.align 4
L3118:
lw a0,8(s2)
#A.SA T.L
la t0,L3080 ; sw a0,(t0)
#A.LP T.P
lw a0,28(s2)
bnez a0,1f
beq a0,a0,L3120
li a0,8
#A.SW T.P
sw a0,32(s2)
jalr zero,a0,0
.align 4
L3120:
li a0,4
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
.align 4
L3119:
lw a0,32(s2)
#A.SA T.L
la t0,L3081 ; sw a0,(t0)
#X4
.align 4
L3093:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3092:
jalr zero,a0,0
.align 4
L3124:
jalr zero,a0,0
#A.LG T.G
.align 4
L3125:
la a0,608+G
lw a0,0(a0)
#X12
blt a0,a0,L3126
li a0,5
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
.align 4
L3126:
la a0,L3080
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,608+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,24(s2)
#A.LP T.P
lw a1,28(s2)
#A.MV T.IR
mv a0,a0
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,608(s0)
jalr zero,a0,0
.align 4
L3127:
li a0,1
#A.SG T.G
sw a0,616(s0)
#A.LA T.L
la a0,L3080
#X12
bge a0,a0,L3128
#A.LA T.LL
la a0,L3486
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#X2
neg a0,a0
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3015
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3128:
la a0,L3485
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3015
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3129:
li a0,0
#A.SG T.G
sw a0,616(s0)
jalr zero,a0,0
.align 4
L3130:
li a0,1
#A.SG T.G
sw a0,616(s0)
#A.LA T.LL
la a0,L3484
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3015
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,67
#X10
beq a0,a0,L3131
#A.LA T.LL
la a0,L3483
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3131:
li a0,0
#A.SG T.G
sw a0,616(s0)
jalr zero,a0,0
.align 4
L3132:
li a0,88
#X10
bne a0,a0,L3134
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3087
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
bnez a0,1f
beq a0,a0,L3134
li a0,1
#A.SW T.P
sw a0,24(s2)
jalr zero,a0,0
.align 4
L3134:
li a0,0
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
.align 4
L3133:
lw a0,24(s2)
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,20(s2)
#A.SW T.P
sw a0,32(s2)
li a0,0
#A.SW T.P
sw a0,36(s2)
li a0,0
#X10
beq a0,a1,L10016
addi a0,zero,-1 

.align 4
L10016:
addi a0,zero,0 

#A.SW T.P
sw a0,40(s2)
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,56(s2)
#A.LA T.L
la a0,L3089
mv s1,s2
#ADDI
addi s2,s2,44
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,44(s2)
#A.LP T.P
lw a0,40(s2)
#X19
or a0,a0,a1
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3091
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3135:
li a0,1
#A.SW T.P
sw a0,32(s2)
li a0,0
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3091
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3482
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,10
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3136:
li a0,1
#A.SW T.P
sw a0,32(s2)
li a0,0
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3091
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3139:
li a0,98
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3140:
li a0,98
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3141:
li a0,97
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3142:
li a0,96
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3143:
la a0,L3481
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,9
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.L
.align 4
L3144:
la a0,L3080
#X12
bge a0,a0,L3145
#A.LA T.L
la a0,L3080
#X14
ble a0,a0,L3145
#A.LA T.LL
la a0,L3480
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,18
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3145:
la a0,L3479
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3478
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3477
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3476
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3146:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3147:
la a0,L3475
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,30
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3148:
la a0,L3474
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,29
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3149:
la a0,L3473
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,9
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3150:
li a0,91
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3151:
li a0,90
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3152:
li a0,89
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3153:
li a0,88
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
jalr zero,a0,0
#A.LA T.L
.align 4
L3137:
la a0,L3081
#X23
la s1,L5
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
L5:
.word 12
.word L3153
.word 0
.word L3139
.word 3
.word L3140
.word 1
.word L3141
.word 2
.word L3142
.word 4
.word L3143
.word 5
.word L3144
.word 6
.word L3147
.word 7
.word L3148
.word 8
.word L3149
.word 9
.word L3150
.word 10
.word L3151
.word 11
.word L3152
.text
.align 4
L3138:
jalr zero,a0,0
.align 4
L3154:
li a0,1
#A.SW T.P
sw a0,32(s2)
li a0,-1
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3091
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,23
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3155:
L3156:
li a0,3
#X10
beq a0,a0,L3157
li a0,6
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
.align 4
L3157:
la a0,L3083
#A.SW T.P
sw a0,20(s2)
li a0,88
#X10
bne a0,a0,L3159
li a0,10
#X15
bgt a0,a0,L3160
#A.LP T.P
lw a0,20(s2)
#X15
ble a0,a0,L3158
#A.LA T.LL
.align 4
L3160:
L3159:
la a0,L3472
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,11
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
.align 4
L3158:
lw a0,20(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,32(s2)
li a0,70
#X10
bne a0,a0,L3162
li a0,1
#A.SW T.P
sw a0,36(s2)
jalr zero,a0,0
.align 4
L3162:
li a0,0
#A.SW T.P
sw a0,36(s2)
#A.LP T.P
.align 4
L3161:
lw a0,32(s2)
#X20
xor a0,a0,a1
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3163:
li a0,0
#X10
beq a0,a0,L3164
li a0,7
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
.align 4
L3164:
la a0,L3471
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3080
#X12
bge a0,a0,L3165
#A.LA T.L
la a0,L3080
#X14
ble a0,a0,L3165
#A.LA T.LL
la a0,L3470
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3469
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#X16
sll a0,a0,a1
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3165:
la a0,L3468
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3467
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#X16
sll a0,a0,a1
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3466
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
li a0,0
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
.align 4
L3166:
la a0,L3465
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3464
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3463
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3462
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3461
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3167:
la a0,L3460
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3080
#A.SW T.P
sw a0,36(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3170:
li a0,8
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
.align 4
L3171:
la a0,L3459
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3172:
la a0,L3458
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3173:
la a0,L3457
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3174:
la a0,L3456
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3455
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3454
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3175:
li a0,7
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3176:
li a0,8
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3177:
li a0,31
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3178:
li a0,10
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3179:
li a0,11
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3180:
L3181:
L3182:
L3183:
L3184:
L3185:
li a0,70
#X10
beq a0,a0,L3187
li a0,84
#X10
bne a0,a0,L3186
.align 4
L3187:
jalr zero,a0,0
#A.LA T.L
.align 4
L3186:
la a0,L3080
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3121
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3081
#A.SW T.P
sw a0,40(s2)
li a0,1
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3453
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3121
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,608+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,24(s2)
#A.LP T.P
lw a1,28(s2)
#A.MV T.IR
mv a0,a0
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,608(s0)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SA T.L
la t0,L3121 ; sw a0,(t0)
#A.LA T.LL
la a0,L3452
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3188:
li a0,0
#X10
bne a0,a0,L3190
li a0,13
#A.SW T.P
sw a0,32(s2)
jalr zero,a0,0
.align 4
L3190:
li a0,21
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
.align 4
L3189:
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3191:
li a0,0
#X10
bne a0,a0,L3193
li a0,14
#A.SW T.P
sw a0,32(s2)
jalr zero,a0,0
.align 4
L3193:
li a0,22
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
.align 4
L3192:
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3194:
li a0,15
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3195:
li a0,16
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3196:
li a0,17
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3197:
la a0,L3451
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,17
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3083
#A.SW T.P
sw a0,36(s2)
#A.LA T.L
la a0,L3084
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3011
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3198:
la a0,L3450
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3199:
la a0,L3449
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3085
#A.SW T.P
sw a0,36(s2)
li a0,3
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
li a0,0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3448
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3447
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3446
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3445
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3444
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3443
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3442
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3441
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3440
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3439
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3438
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3437
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3436
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3435
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.L
la a0,L3085
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,608+G
lw a0,0(a0)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,24(s2)
#A.LP T.P
lw a1,28(s2)
#A.MV T.IR
mv a0,a0
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,608(s0)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SA T.L
la t0,L3085 ; sw a0,(t0)
jalr zero,a0,0
#A.LA T.LL
.align 4
L3200:
la a0,L3434
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3201:
la a0,L3433
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3202:
la a0,L3432
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3203:
la a0,L3431
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3204:
la a0,L3430
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3205:
la a0,L3429
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3206:
la a0,L3428
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3207:
la a0,L3427
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3208:
la a0,L3426
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3425
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3209:
la a0,L3424
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3210:
la a0,L3423
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3211:
la a0,L3422
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3421
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3420
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3419
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3418
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3417
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3416
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3415
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3414
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3413
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3412
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3411
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3410
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3409
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3408
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3212:
la a0,L3407
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3406
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3405
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3404
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3213:
la a0,L3403
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3402
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3401
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3400
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3214:
la a0,L3399
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3215:
la a0,L3398
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3216:
la a0,L3397
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3217:
la a0,L3396
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LA T.L
.align 4
L3168:
la a0,L3080
#X23
la s1,L6
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
L6:
.word 41
.word L3170
.word 1
.word L3171
.word 2
.word L3172
.word 3
.word L3173
.word 4
.word L3174
.word 5
.word L3175
.word 6
.word L3176
.word 7
.word L3177
.word 8
.word L3178
.word 9
.word L3179
.word 10
.word L3180
.word 11
.word L3181
.word 12
.word L3182
.word 13
.word L3183
.word 14
.word L3184
.word 15
.word L3185
.word 16
.word L3188
.word 17
.word L3191
.word 18
.word L3194
.word 19
.word L3195
.word 20
.word L3196
.word 21
.word L3197
.word 22
.word L3198
.word 23
.word L3199
.word 24
.word L3200
.word 25
.word L3201
.word 26
.word L3202
.word 27
.word L3203
.word 28
.word L3204
.word 29
.word L3205
.word 30
.word L3206
.word 31
.word L3207
.word 32
.word L3208
.word 33
.word L3209
.word 34
.word L3210
.word 35
.word L3211
.word 36
.word L3212
.word 37
.word L3213
.word 38
.word L3214
.word 39
.word L3215
.word 40
.word L3216
.word 41
.word L3217
.text
.align 4
L3169:
jalr zero,a0,0
#A.LA T.L
.align 4
L3122:
la a0,L3079
#X23
la s1,L7
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
L7:
.word 12
.word L3123
.word 0
.word L3124
.word 66
.word L3125
.word 68
.word L3127
.word 67
.word L3130
.word 76
.word L3132
.word 65
.word L3135
.word 83
.word L3136
.word 74
.word L3154
.word 84
.word L3155
.word 70
.word L3156
.word 75
.word L3163
.word 88
.word L3167
#A.LA T.L
.text
.align 4
L3123:
la a0,L3079
#A.SA T.L
la t0,L3082 ; sw a0,(t0)
#A.LA T.L
la a0,L3080
#A.SA T.L
la t0,L3083 ; sw a0,(t0)
#A.LA T.L
la a0,L3081
#A.SA T.L
la t0,L3084 ; sw a0,(t0)
#A.LP T.P
lw a0,8(s2)
#A.SA T.L
la t0,L3079 ; sw a0,(t0)
#A.LP T.P
lw a0,12(s2)
#A.SA T.L
la t0,L3080 ; sw a0,(t0)
#A.LP T.P
lw a0,16(s2)
#A.SA T.L
la t0,L3081 ; sw a0,(t0)
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3006:
jalr zero,a0,0
#A.LA T.LL
.align 4
L3221:
la a0,L3395
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3222:
la a0,L3394
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3223:
la a0,L3393
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3224:
la a0,L3392
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3225:
la a0,L3391
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3226:
la a0,L3390
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3227:
la a0,L3389
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3228:
la a0,L3388
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3229:
la a0,L3387
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3230:
la a0,L3386
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3231:
la a0,L3385
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3232:
la a0,L3384
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3233:
la a0,L3383
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3234:
la a0,L3382
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3235:
la a0,L3381
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3236:
la a0,L3380
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3237:
la a0,L3379
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3238:
la a0,L3378
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3239:
la a0,L3377
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3240:
la a0,L3376
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3241:
la a0,L3375
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3242:
la a0,L3374
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3243:
la a0,L3373
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3244:
la a0,L3372
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3245:
la a0,L3371
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3246:
la a0,L3370
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3247:
la a0,L3369
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3248:
la a0,L3368
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3249:
la a0,L3367
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3250:
la a0,L3366
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3251:
la a0,L3365
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3252:
la a0,L3364
srli a0,a0,2
jalr zero,a0,0
#A.LA T.LL
.align 4
L3253:
la a0,L3363
srli a0,a0,2
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,9
#A.SW T.P
sw a0,20(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3219:
lw a0,8(s2)
#X23
la s1,L8
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
L8:
.word 32
.word L3253
.word 0
.word L3221
.word 1
.word L3222
.word 2
.word L3223
.word 3
.word L3224
.word 4
.word L3225
.word 5
.word L3226
.word 6
.word L3227
.word 7
.word L3228
.word 8
.word L3229
.word 9
.word L3230
.word 10
.word L3231
.word 11
.word L3232
.word 12
.word L3233
.word 13
.word L3234
.word 14
.word L3235
.word 15
.word L3236
.word 16
.word L3237
.word 17
.word L3238
.word 18
.word L3239
.word 30
.word L3240
.word 19
.word L3241
.word 20
.word L3242
.word 21
.word L3243
.word 22
.word L3244
.word 23
.word L3245
.word 24
.word L3246
.word 25
.word L3247
.word 26
.word L3248
.word 27
.word L3249
.word 28
.word L3250
.word 29
.word L3251
.word 31
.word L3252
#X4
.text
.align 4
L3220:
L3218:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3008:
li a0,1
#A.SG T.G
sw a0,616(s0)
#A.LA T.LL
la a0,L3362
srli a0,a0,2
#A.SW T.P
sw a0,16(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3361
srli a0,a0,2
#A.SW T.P
sw a0,16(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3360
srli a0,a0,2
#A.SW T.P
sw a0,16(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,0
#A.SW T.P
sw a0,8(s2)
li a0,500
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,12(s2)
jalr zero,a0,0
#A.LA T.LL
.align 4
L3255:
la a0,L3359
srli a0,a0,2
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,8(s2)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,8(s2)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
bnez a0,1f
beq a0,a0,L3257
li a0,3
#A.SW T.P
sw a0,32(s2)
jalr zero,a0,0
.align 4
L3257:
li a0,0
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
.align 4
L3256:
lw a0,8(s2)
#A.SW T.P
sw a0,36(s2)
li a0,1
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,8(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,8(s2)
#A.LP T.P
.align 4
L3254:
lw a0,8(s2)
#X15
ble a0,a0,L3255
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L3010:
lw a0,8(s2)
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3013
mv s1,s2
#ADDI
addi s2,s2,20
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L3012:
lw a0,8(s2)
#A.SW T.P
sw a0,40(s2)
#A.LA T.L
la a0,L3007
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
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,36(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,40(s2)
#A.LP T.P
lw a0,20(s2)
#A.SW T.P
sw a0,44(s2)
#A.LP T.P
lw a0,8(s2)
#X15
ble a0,a1,L10017
addi a0,zero,-1 

.align 4
L10017:
addi a0,zero,0 

#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L3014:
lw a0,8(s2)
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,32(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,36(s2)
li a0,0
#A.SW T.P
sw a0,40(s2)
li a0,-1
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3017
mv s1,s2
#ADDI
addi s2,s2,20
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LA T.L
.align 4
L3016:
la a0,L3258
#X10
beq a0,a0,L3259
li a0,0
#X10
bne a0,a0,L3261
#A.LA T.LL
la a0,L3358
srli a0,a0,2
#A.SW T.P
sw a0,36(s2)
jalr zero,a0,0
#A.LA T.LL
.align 4
L3261:
la a0,L3357
srli a0,a0,2
#A.SW T.P
sw a0,36(s2)
#A.LG T.G
.align 4
L3260:
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,28
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,10
#A.SW T.P
sw a0,36(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,28
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LG T.G
la a0,616+G
lw a0,0(a0)
#A.SA T.L
la t0,L3258 ; sw a0,(t0)
#A.LG T.G
.align 4
L3259:
la a0,608+G
lw a0,0(a0)
bnez a0,1f
beq a0,a0,L3262
#A.LA T.LL
la a0,L3356
srli a0,a0,2
#A.SW T.P
sw a0,36(s2)
#A.LG T.G
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,28
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,0
#A.SW T.P
sw a0,28(s2)
#A.LG T.G
la a0,608+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,32(s2)
jalr zero,a0,0
.align 4
L3264:
li a0,76
#A.SW T.P
sw a0,44(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,36
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,28(s2)
#A.ADD chosen
add a0,a0,a1
#X1
lw a0,0(a0)
#A.SW T.P
sw a0,44(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,36
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3355
srli a0,a0,2
#A.SW T.P
sw a0,44(s2)
#A.LG T.G
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,36
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,28(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
.align 4
L3263:
lw a0,28(s2)
#X15
ble a0,a0,L3264
li a0,0
#A.SG T.G
sw a0,608(s0)
.align 4
L3262:
li a0,1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,40(s2)
li a0,0
#A.SW T.P
sw a0,44(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
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
jalr zero,a0,0
#A.LP T.P
.align 4
L3266:
lw a0,8(s2)
#A.SW T.P
sw a0,44(s2)
#A.LP T.P
lw a0,28(s2)
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,36
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.SW T.P
sw a0,36(s2)
li a0,64
#X10
bne a0,a0,L3267
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L3271:
lw a0,24(s2)
bnez a0,1f
bne a0,a0,L3272
li a0,0
#X10
beq a0,a0,L3274
li a0,3
#X10
bne a0,a0,L3272
.align 4
L3274:
li a0,41
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3272:
lw a0,24(s2)
bnez a0,1f
beq a0,a0,L3275
#A.LP T.P
lw a0,16(s2)
#X13
blt a0,a0,L3275
li a0,42
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
.align 4
L3275:
L3273:
lw a0,12(s2)
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,16(s2)
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3019
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3276:
li a0,4
#X5
mul a0,a0,a1
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3354
srli a0,a0,2
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3277:
lw a0,12(s2)
#X12
bge a0,a0,L3278
li a0,45
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,12(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3278:
lw a0,12(s2)
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3279:
jalr zero,a0,0
.align 4
L3280:
li a0,76
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,12(s2)
#A.SW T.P
sw a0,48(s2)
li a0,0
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3019
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3281:
lw a0,20(s2)
#A.SW T.P
sw a0,48(s2)
li a0,0
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3019
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3282:
li a0,4
#X5
mul a0,a0,a1
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
la a0,L3353
srli a0,a0,2
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3283:
lw a0,20(s2)
#A.SW T.P
sw a0,48(s2)
li a0,4
#A.SW T.P
sw a0,52(s2)
#A.LA T.L
la a0,L3019
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3284:
li a0,4
#X5
mul a0,a0,a1
#A.SW T.P
sw a0,48(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
jalr zero,a0,0
#A.LP T.P
.align 4
L3269:
lw a0,8(s2)
#A.SW T.P
sw a0,48(s2)
#A.LP T.P
lw a0,28(s2)
#A.SW T.P
sw a0,52(s2)
#A.LG T.G
la a0,340+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X23
la s1,L9
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
L9:
.word 8
.word L3270
.word 65
.word L3271
.word 71
.word L3276
.word 73
.word L3277
.word 76
.word L3280
.word 78
.word L3281
.word 80
.word L3282
.word 82
.word L3283
.word 88
.word L3284
.text
.align 4
L3270:
jalr zero,a0,0
#A.LP T.P
.align 4
L3267:
lw a0,36(s2)
#A.SW T.P
sw a0,48(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,40
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
.align 4
L3268:
lw a0,28(s2)
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,28(s2)
#A.LP T.P
.align 4
L3265:
lw a0,28(s2)
#X15
ble a0,a0,L3266
li a0,10
#A.SW T.P
sw a0,36(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,28
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3018:
li a0,4
#X10
beq a0,a0,L3287
li a0,8
#X10
bne a0,a0,L3285
.align 4
L3287:
li a0,0
#X10
bne a0,a0,L3289
#A.LA T.LL
la a0,L3352
srli a0,a0,2
#A.SW T.P
sw a0,24(s2)
jalr zero,a0,0
#A.LA T.LL
.align 4
L3289:
la a0,L3351
srli a0,a0,2
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
.align 4
L3288:
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,16
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
.align 4
L3285:
li a0,3
#X18
and a0,a0,a1
#A.SW T.P
sw a0,16(s2)
li a0,1
#X10
beq a0,a1,L10018
addi a0,zero,-1 

.align 4
L10018:
addi a0,zero,0 

#A.SW T.P
sw a0,20(s2)
li a0,2
#X10
beq a0,a1,L10019
addi a0,zero,-1 

.align 4
L10019:
addi a0,zero,0 

#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,20(s2)
#X19
or a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,20(s2)
bnez a0,1f
beq a0,a0,L3290
li a0,4
#X5
mul a0,a0,a1
#A.SW T.P
sw a0,8(s2)
.align 4
L3290:
li a0,3
#X10
bne a0,a0,L3291
li a0,76
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
la a0,56+G
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
lw a0,8(s2)
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3291:
lw a0,20(s2)
bnez a0,1f
beq a0,a0,L3293
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,1
#X10
bne a0,a0,L3296
#A.LA T.LL
la a0,L3350
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
jalr zero,a0,0
#A.LA T.LL
.align 4
L3296:
la a0,L3349
srli a0,a0,2
#A.SW T.P
sw a0,32(s2)
#A.LG T.G
.align 4
L3295:
la a0,240+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
jalr zero,a0,0
#A.LP T.P
.align 4
L3293:
lw a0,8(s2)
#A.SW T.P
sw a0,32(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,24
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
.align 4
L3294:
L3292:
L3286:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LP T.P
.align 4
L3020:
lw a0,8(s2)
#X12
bge a0,a0,L3297
li a0,45
#A.SW T.P
sw a0,20(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
lw a0,8(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,8(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L3297:
lw a0,8(s2)
#X14
ble a0,a0,L3299
#A.LP T.P
lw a0,8(s2)
li a1,10
#X6
div a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LA T.L
la a0,L3021
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
.align 4
L3299:
lw a0,8(s2)
li a1,10
#X7
rem a0,a0,a1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LG T.G
la a0,56+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
.align 4
L3298:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3022:
li a0,0
#A.SW T.P
sw a0,8(s2)
li a0,0
#A.SW T.P
sw a0,12(s2)
li a0,0
#A.SW T.P
sw a0,16(s2)
li a0,45
#X10
bne a0,a0,L3301
li a0,-1
#A.SW T.P
sw a0,12(s2)
#A.LA T.L
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,20
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3301:
jalr zero,a0,0
.align 4
L3302:
li a0,10
#X5
mul a0,a0,a1
#A.SW T.P
sw a0,20(s2)
#A.LG T.G
la a0,628+G
lw a0,0(a0)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,24(s2)
#A.LP T.P
lw a0,20(s2)
#X9
sub a0,a0,a1
#A.SW T.P
sw a0,8(s2)
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SW T.P
sw a0,16(s2)
#A.LA T.L
la a0,L3025
mv s1,s2
#ADDI
addi s2,s2,20
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3303:
li a0,48
#X15
bgt a0,a0,L3304
#A.LG T.G
la a0,628+G
lw a0,0(a0)
#X15
ble a0,a0,L3302
.align 4
L3304:
li a0,0
#X10
bne a0,a0,L3305
li a0,10
#A.SW T.P
sw a0,28(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,20
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LP T.P
.align 4
L3305:
lw a0,12(s2)
bnez a0,1f
beq a0,a0,L3307
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,20(s2)
jalr zero,a0,0
#A.LP T.P
.align 4
L3307:
lw a0,8(s2)
#X2
neg a0,a0
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
.align 4
L3306:
lw a0,20(s2)
jalr zero,a0,0
#X4
.align 4
L3300:
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LA T.L
.align 4
L3024:
L3308:
la a0,L3027
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,47
#X10
beq a0,a0,L3309
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LA T.L
.align 4
L3309:
L3310:
la a0,L3027
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,-1
#X10
bne a0,a0,L3311
li a0,11
#A.SW T.P
sw a0,16(s2)
#A.LA T.L
la a0,L3029
mv s1,s2
#ADDI
addi s2,s2,8
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
.align 4
L3311:
li a0,10
#X10
bne a0,a0,L3310
jalr zero,a0,0
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.align 4
L3026:
li a0,10
#X10
bne a0,a0,L3312
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,620(s0)
li a0,0
#A.SG T.G
sw a0,624(s0)
.align 4
L3312:
li a0,1
#A.ADD chosen
add a0,a0,a1
#A.SG T.G
sw a0,624(s0)
#A.LG T.G
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
sw a0,628(s0)
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
#A.LG T.G
.align 4
L3028:
la a0,632+G
lw a0,0(a0)
#A.SW T.P
sw a0,20(s2)
#A.LG T.G
la a0,48+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,0
#X10
beq a0,a0,L3313
#A.LA T.LL
la a0,L3348
srli a0,a0,2
#A.SW T.P
sw a0,20(s2)
#A.LG T.G
la a0,620+G
lw a0,0(a0)
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,624+G
lw a0,0(a0)
#A.SW T.P
sw a0,28(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#A.LA T.LL
.align 4
L3313:
la a0,L3347
srli a0,a0,2
#A.SW T.P
sw a0,20(s2)
#A.LP T.P
lw a0,8(s2)
#A.SW T.P
sw a0,24(s2)
#A.LG T.G
la a0,304+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
li a0,1
#A.SW T.P
sw a0,20(s2)
#A.LG T.G
la a0,120+G
lw a0,0(a0)
mv s1,s2
#ADDI
addi s2,s2,12
sw s1,0(s2)
la s1,1f
sw s1,4(s2)
jalr zero,a0,0
1:
#X4
lw t0,4(s2)
lw s2,0(s2)
jalr zero,t0,0
.data
.align 4
L3030:
L3003:
.word L3002
.align 4
L3005:
.word L3004
.align 4
L3007:
.word L3006
.align 4
L3009:
.word L3008
.align 4
L3011:
.word L3010
.align 4
L3013:
.word L3012
.align 4
L3015:
.word L3014
.align 4
L3017:
.word L3016
.align 4
L3019:
.word L3018
.align 4
L3021:
.word L3020
.align 4
L3023:
.word L3022
.align 4
L3025:
.word L3024
.align 4
L3027:
.word L3026
.align 4
L3029:
.word L3028
.align 4
L3499:
.byte 3
.byte 65
.byte 83
.byte 77
.align 2
.align 4
L3079:
.word 0
.align 4
L3080:
.word 0
.align 4
L3081:
.word 0
.align 4
L3082:
.word 0
.align 4
L3083:
.word 0
.align 4
L3084:
.word 0
.align 4
L3085:
.word 0
.align 4
L3087:
.word L3086
.align 4
L3089:
.word L3088
.align 4
L3091:
.word L3090
.align 4
L3498:
.byte 19
.byte 35
.byte 69
.byte 32
.byte 116
.byte 114
.byte 117
.byte 101
.byte 44
.byte 32
.byte 99
.byte 111
.byte 100
.byte 105
.byte 110
.byte 103
.byte 32
.byte 76
.byte 87
.byte 10
.align 2
.align 4
L3497:
.byte 8
.byte 35
.byte 66
.byte 73
.byte 71
.byte 79
.byte 70
.byte 70
.byte 10
.align 2
.align 4
L3496:
.byte 11
.byte 35
.byte 65
.byte 46
.byte 76
.byte 65
.byte 32
.byte 84
.byte 46
.byte 76
.byte 76
.byte 10
.align 2
.align 4
L3495:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 76
.byte 65
.byte 32
.byte 84
.byte 46
.byte 82
.byte 10
.align 2
.align 4
L3494:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 76
.byte 80
.byte 32
.byte 84
.byte 46
.byte 80
.byte 10
.align 2
.align 4
L3493:
.byte 9
.byte 108
.byte 105
.byte 32
.byte 116
.byte 48
.byte 44
.byte 32
.byte 64
.byte 88
.align 2
.align 4
L3492:
.byte 14
.byte 97
.byte 100
.byte 100
.byte 32
.byte 116
.byte 48
.byte 44
.byte 32
.byte 116
.byte 48
.byte 44
.byte 32
.byte 115
.byte 50
.align 2
.align 4
L3491:
.byte 10
.byte 108
.byte 119
.byte 32
.byte 64
.byte 82
.byte 44
.byte 40
.byte 116
.byte 48
.byte 41
.align 2
.align 4
L3490:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 76
.byte 71
.byte 32
.byte 84
.byte 46
.byte 71
.byte 10
.align 2
.align 4
L3489:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 97
.byte 48
.byte 44
.byte 48
.byte 40
.byte 97
.byte 48
.byte 41
.align 2
.align 4
L3488:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 76
.byte 65
.byte 32
.byte 84
.byte 46
.byte 76
.byte 10
.align 2
.align 4
L3487:
.byte 11
.byte 35
.byte 65
.byte 46
.byte 76
.byte 65
.byte 32
.byte 84
.byte 46
.byte 73
.byte 82
.byte 10
.align 2
.align 4
L3121:
.word 10000
.align 4
L3486:
.byte 9
.byte 46
.byte 119
.byte 111
.byte 114
.byte 100
.byte 32
.byte 45
.byte 64
.byte 65
.align 2
.align 4
L3485:
.byte 8
.byte 46
.byte 119
.byte 111
.byte 114
.byte 100
.byte 32
.byte 64
.byte 65
.align 2
.align 4
L3484:
.byte 8
.byte 46
.byte 98
.byte 121
.byte 116
.byte 101
.byte 32
.byte 64
.byte 65
.align 2
.align 4
L3483:
.byte 8
.byte 46
.byte 97
.byte 108
.byte 105
.byte 103
.byte 110
.byte 32
.byte 50
.align 2
.align 4
L3482:
.byte 14
.byte 35
.byte 65
.byte 46
.byte 65
.byte 68
.byte 68
.byte 32
.byte 99
.byte 104
.byte 111
.byte 115
.byte 101
.byte 110
.byte 10
.align 2
.align 4
L3481:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 77
.byte 86
.byte 32
.byte 84
.byte 46
.byte 82
.byte 10
.align 2
.align 4
L3480:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 83
.byte 87
.byte 32
.byte 84
.byte 46
.byte 80
.byte 10
.align 2
.align 4
L3479:
.byte 23
.byte 35
.byte 115
.byte 119
.byte 32
.byte 101
.byte 120
.byte 116
.byte 101
.byte 110
.byte 100
.byte 101
.byte 100
.byte 32
.byte 105
.byte 110
.byte 100
.byte 101
.byte 120
.byte 32
.byte 84
.byte 46
.byte 80
.byte 10
.align 2
.align 4
L3478:
.byte 9
.byte 108
.byte 105
.byte 32
.byte 116
.byte 48
.byte 44
.byte 32
.byte 64
.byte 88
.align 2
.align 4
L3477:
.byte 14
.byte 97
.byte 100
.byte 100
.byte 32
.byte 116
.byte 48
.byte 44
.byte 32
.byte 116
.byte 48
.byte 44
.byte 32
.byte 115
.byte 50
.align 2
.align 4
L3476:
.byte 10
.byte 115
.byte 119
.byte 32
.byte 64
.byte 82
.byte 44
.byte 40
.byte 116
.byte 48
.byte 41
.align 2
.align 4
L3475:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 83
.byte 71
.byte 32
.byte 84
.byte 46
.byte 71
.byte 10
.align 2
.align 4
L3474:
.byte 10
.byte 35
.byte 65
.byte 46
.byte 83
.byte 65
.byte 32
.byte 84
.byte 46
.byte 76
.byte 10
.align 2
.align 4
L3473:
.byte 11
.byte 35
.byte 65
.byte 46
.byte 77
.byte 86
.byte 32
.byte 84
.byte 46
.byte 73
.byte 82
.byte 10
.align 2
.align 4
L3472:
.byte 10
.byte 98
.byte 110
.byte 101
.byte 122
.byte 32
.byte 97
.byte 48
.byte 44
.byte 49
.byte 102
.align 2
.align 4
L3471:
.byte 8
.byte 109
.byte 118
.byte 32
.byte 115
.byte 49
.byte 44
.byte 115
.byte 50
.align 2
.align 4
L3470:
.byte 6
.byte 35
.byte 65
.byte 68
.byte 68
.byte 73
.byte 10
.align 2
.align 4
L3469:
.byte 13
.byte 97
.byte 100
.byte 100
.byte 105
.byte 32
.byte 115
.byte 50
.byte 44
.byte 115
.byte 50
.byte 44
.byte 64
.byte 73
.align 2
.align 4
L3468:
.byte 5
.byte 35
.byte 65
.byte 68
.byte 68
.byte 10
.align 2
.align 4
L3467:
.byte 8
.byte 108
.byte 105
.byte 32
.byte 116
.byte 48
.byte 44
.byte 64
.byte 73
.align 2
.align 4
L3466:
.byte 12
.byte 97
.byte 100
.byte 100
.byte 32
.byte 115
.byte 50
.byte 44
.byte 115
.byte 50
.byte 44
.byte 116
.byte 48
.align 2
.align 4
L3465:
.byte 11
.byte 115
.byte 119
.byte 32
.byte 115
.byte 49
.byte 44
.byte 48
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3464:
.byte 8
.byte 108
.byte 97
.byte 32
.byte 115
.byte 49
.byte 44
.byte 49
.byte 102
.align 2
.align 4
L3463:
.byte 11
.byte 115
.byte 119
.byte 32
.byte 115
.byte 49
.byte 44
.byte 52
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3462:
.byte 14
.byte 106
.byte 97
.byte 108
.byte 114
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 97
.byte 48
.byte 44
.byte 48
.align 2
.align 4
L3461:
.byte 2
.byte 49
.byte 58
.align 2
.align 4
L3460:
.byte 6
.byte 35
.byte 88
.byte 37
.byte 73
.byte 32
.byte 10
.align 2
.align 4
L3459:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 97
.byte 48
.byte 44
.byte 48
.byte 40
.byte 97
.byte 48
.byte 41
.align 2
.align 4
L3458:
.byte 9
.byte 110
.byte 101
.byte 103
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.align 2
.align 4
L3457:
.byte 9
.byte 110
.byte 111
.byte 116
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.align 2
.align 4
L3456:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 52
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3455:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 115
.byte 50
.byte 44
.byte 48
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3454:
.byte 14
.byte 106
.byte 97
.byte 108
.byte 114
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 116
.byte 48
.byte 44
.byte 48
.align 2
.align 4
L3453:
.byte 17
.byte 97
.byte 100
.byte 100
.byte 105
.byte 32
.byte 97
.byte 48
.byte 44
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 45
.byte 49
.byte 32
.byte 10
.align 2
.align 4
L3452:
.byte 16
.byte 97
.byte 100
.byte 100
.byte 105
.byte 32
.byte 97
.byte 48
.byte 44
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 48
.byte 32
.byte 10
.align 2
.align 4
L3451:
.byte 9
.byte 110
.byte 111
.byte 116
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.align 2
.align 4
L3450:
.byte 8
.byte 106
.byte 32
.byte 102
.byte 105
.byte 110
.byte 105
.byte 115
.byte 104
.align 2
.align 4
L3449:
.byte 8
.byte 108
.byte 97
.byte 32
.byte 115
.byte 49
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3448:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 116
.byte 49
.byte 44
.byte 48
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3447:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 116
.byte 50
.byte 44
.byte 52
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3446:
.byte 10
.byte 98
.byte 101
.byte 113
.byte 122
.byte 32
.byte 116
.byte 49
.byte 44
.byte 50
.byte 102
.align 2
.align 4
L3445:
.byte 2
.byte 49
.byte 58
.align 2
.align 4
L3444:
.byte 12
.byte 97
.byte 100
.byte 100
.byte 105
.byte 32
.byte 115
.byte 49
.byte 44
.byte 115
.byte 49
.byte 44
.byte 56
.align 2
.align 4
L3443:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 48
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3442:
.byte 12
.byte 98
.byte 101
.byte 113
.byte 32
.byte 97
.byte 48
.byte 44
.byte 116
.byte 48
.byte 44
.byte 51
.byte 102
.align 2
.align 4
L3441:
.byte 13
.byte 97
.byte 100
.byte 100
.byte 105
.byte 32
.byte 116
.byte 49
.byte 44
.byte 116
.byte 49
.byte 44
.byte 45
.byte 49
.align 2
.align 4
L3440:
.byte 10
.byte 98
.byte 110
.byte 101
.byte 122
.byte 32
.byte 116
.byte 49
.byte 44
.byte 49
.byte 98
.align 2
.align 4
L3439:
.byte 2
.byte 50
.byte 58
.align 2
.align 4
L3438:
.byte 14
.byte 106
.byte 97
.byte 108
.byte 114
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 116
.byte 50
.byte 44
.byte 48
.align 2
.align 4
L3437:
.byte 2
.byte 51
.byte 58
.align 2
.align 4
L3436:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 52
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3435:
.byte 14
.byte 106
.byte 97
.byte 108
.byte 114
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 116
.byte 48
.byte 44
.byte 48
.align 2
.align 4
L3434:
.byte 16
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 115
.byte 101
.byte 108
.byte 101
.byte 99
.byte 116
.byte 105
.byte 110
.byte 112
.byte 117
.byte 116
.align 2
.align 4
L3433:
.byte 17
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 115
.byte 101
.byte 108
.byte 101
.byte 99
.byte 116
.byte 111
.byte 117
.byte 116
.byte 112
.byte 117
.byte 116
.align 2
.align 4
L3432:
.byte 9
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 114
.byte 100
.byte 99
.byte 104
.align 2
.align 4
L3431:
.byte 9
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 119
.byte 114
.byte 99
.byte 104
.align 2
.align 4
L3430:
.byte 14
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 102
.byte 105
.byte 110
.byte 100
.byte 105
.byte 110
.byte 112
.byte 117
.byte 116
.align 2
.align 4
L3429:
.byte 15
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 102
.byte 105
.byte 110
.byte 100
.byte 111
.byte 117
.byte 116
.byte 112
.byte 117
.byte 116
.align 2
.align 4
L3428:
.byte 6
.byte 106
.byte 32
.byte 115
.byte 116
.byte 111
.byte 112
.align 2
.align 4
L3427:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 97
.byte 48
.byte 44
.byte 48
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3426:
.byte 8
.byte 109
.byte 118
.byte 32
.byte 115
.byte 50
.byte 44
.byte 116
.byte 48
.align 2
.align 4
L3425:
.byte 14
.byte 106
.byte 97
.byte 108
.byte 114
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 97
.byte 48
.byte 44
.byte 48
.align 2
.align 4
L3424:
.byte 12
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 101
.byte 110
.byte 100
.byte 114
.byte 101
.byte 97
.byte 100
.align 2
.align 4
L3423:
.byte 13
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 101
.byte 110
.byte 100
.byte 119
.byte 114
.byte 105
.byte 116
.byte 101
.align 2
.align 4
L3422:
.byte 8
.byte 109
.byte 118
.byte 32
.byte 115
.byte 49
.byte 44
.byte 115
.byte 50
.align 2
.align 4
L3421:
.byte 8
.byte 109
.byte 118
.byte 32
.byte 116
.byte 48
.byte 44
.byte 97
.byte 48
.align 2
.align 4
L3420:
.byte 12
.byte 97
.byte 100
.byte 100
.byte 105
.byte 32
.byte 116
.byte 48
.byte 44
.byte 116
.byte 48
.byte 44
.byte 49
.align 2
.align 4
L3419:
.byte 12
.byte 115
.byte 108
.byte 108
.byte 105
.byte 32
.byte 116
.byte 48
.byte 44
.byte 116
.byte 48
.byte 44
.byte 50
.align 2
.align 4
L3418:
.byte 12
.byte 97
.byte 100
.byte 100
.byte 32
.byte 115
.byte 49
.byte 44
.byte 115
.byte 49
.byte 44
.byte 116
.byte 48
.align 2
.align 4
L3417:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 48
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3416:
.byte 11
.byte 115
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 48
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3415:
.byte 11
.byte 108
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 52
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3414:
.byte 11
.byte 115
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 52
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3413:
.byte 8
.byte 109
.byte 118
.byte 32
.byte 116
.byte 48
.byte 44
.byte 115
.byte 50
.align 2
.align 4
L3412:
.byte 12
.byte 115
.byte 114
.byte 108
.byte 105
.byte 32
.byte 116
.byte 48
.byte 44
.byte 116
.byte 48
.byte 44
.byte 50
.align 2
.align 4
L3411:
.byte 11
.byte 115
.byte 119
.byte 32
.byte 116
.byte 48
.byte 44
.byte 56
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3410:
.byte 12
.byte 115
.byte 119
.byte 32
.byte 97
.byte 48
.byte 44
.byte 49
.byte 50
.byte 40
.byte 115
.byte 49
.byte 41
.align 2
.align 4
L3409:
.byte 8
.byte 109
.byte 118
.byte 32
.byte 115
.byte 50
.byte 44
.byte 115
.byte 49
.align 2
.align 4
L3408:
.byte 14
.byte 106
.byte 97
.byte 108
.byte 114
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 116
.byte 49
.byte 44
.byte 48
.align 2
.align 4
L3407:
.byte 12
.byte 115
.byte 108
.byte 108
.byte 105
.byte 32
.byte 116
.byte 49
.byte 44
.byte 97
.byte 49
.byte 44
.byte 50
.align 2
.align 4
L3406:
.byte 12
.byte 97
.byte 100
.byte 100
.byte 32
.byte 116
.byte 49
.byte 44
.byte 97
.byte 48
.byte 44
.byte 116
.byte 49
.align 2
.align 4
L3405:
.byte 11
.byte 108
.byte 98
.byte 32
.byte 97
.byte 48
.byte 44
.byte 48
.byte 40
.byte 116
.byte 49
.byte 41
.align 2
.align 4
L3404:
.byte 15
.byte 97
.byte 110
.byte 100
.byte 105
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 48
.byte 120
.byte 102
.byte 102
.align 2
.align 4
L3403:
.byte 12
.byte 115
.byte 108
.byte 108
.byte 105
.byte 32
.byte 116
.byte 49
.byte 44
.byte 116
.byte 49
.byte 44
.byte 50
.align 2
.align 4
L3402:
.byte 12
.byte 97
.byte 100
.byte 100
.byte 32
.byte 116
.byte 49
.byte 44
.byte 97
.byte 48
.byte 44
.byte 116
.byte 49
.align 2
.align 4
L3401:
.byte 12
.byte 108
.byte 119
.byte 32
.byte 97
.byte 48
.byte 44
.byte 49
.byte 54
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3400:
.byte 11
.byte 115
.byte 98
.byte 32
.byte 97
.byte 48
.byte 44
.byte 48
.byte 40
.byte 116
.byte 49
.byte 41
.align 2
.align 4
L3399:
.byte 10
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 105
.byte 110
.byte 112
.byte 117
.byte 116
.align 2
.align 4
L3398:
.byte 11
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 111
.byte 117
.byte 116
.byte 112
.byte 117
.byte 116
.align 2
.align 4
L3397:
.byte 11
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 117
.byte 110
.byte 114
.byte 100
.byte 99
.byte 104
.align 2
.align 4
L3396:
.byte 11
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 114
.byte 101
.byte 119
.byte 105
.byte 110
.byte 100
.align 2
.align 4
L3395:
.byte 12
.byte 98
.byte 101
.byte 113
.byte 32
.byte 97
.byte 48
.byte 44
.byte 64
.byte 82
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3394:
.byte 12
.byte 98
.byte 110
.byte 101
.byte 32
.byte 97
.byte 48
.byte 44
.byte 64
.byte 82
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3393:
.byte 12
.byte 98
.byte 108
.byte 116
.byte 32
.byte 97
.byte 48
.byte 44
.byte 64
.byte 82
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3392:
.byte 12
.byte 98
.byte 103
.byte 101
.byte 32
.byte 97
.byte 48
.byte 44
.byte 64
.byte 82
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3391:
.byte 12
.byte 98
.byte 103
.byte 116
.byte 32
.byte 97
.byte 48
.byte 44
.byte 64
.byte 82
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3390:
.byte 12
.byte 98
.byte 108
.byte 101
.byte 32
.byte 97
.byte 48
.byte 44
.byte 64
.byte 82
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3389:
.byte 5
.byte 106
.byte 32
.byte 76
.byte 64
.byte 65
.align 2
.align 4
L3388:
.byte 12
.byte 109
.byte 117
.byte 108
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3387:
.byte 12
.byte 100
.byte 105
.byte 118
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3386:
.byte 8
.byte 109
.byte 118
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 82
.align 2
.align 4
L3385:
.byte 12
.byte 97
.byte 100
.byte 100
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3384:
.byte 12
.byte 115
.byte 117
.byte 98
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3383:
.byte 12
.byte 115
.byte 108
.byte 116
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3382:
.byte 12
.byte 115
.byte 108
.byte 108
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3381:
.byte 12
.byte 115
.byte 114
.byte 108
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3380:
.byte 12
.byte 97
.byte 110
.byte 100
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3379:
.byte 11
.byte 111
.byte 114
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3378:
.byte 12
.byte 120
.byte 111
.byte 114
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3377:
.byte 8
.byte 115
.byte 119
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 65
.align 2
.align 4
L3376:
.byte 8
.byte 115
.byte 119
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 65
.align 2
.align 4
L3375:
.byte 8
.byte 108
.byte 119
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 65
.align 2
.align 4
L3374:
.byte 13
.byte 97
.byte 100
.byte 100
.byte 105
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 64
.byte 73
.align 2
.align 4
L3373:
.byte 12
.byte 115
.byte 108
.byte 108
.byte 105
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 50
.align 2
.align 4
L3372:
.byte 12
.byte 115
.byte 114
.byte 108
.byte 105
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 50
.align 2
.align 4
L3371:
.byte 14
.byte 106
.byte 97
.byte 108
.byte 114
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 44
.byte 97
.byte 48
.byte 44
.byte 48
.align 2
.align 4
L3370:
.byte 7
.byte 106
.byte 97
.byte 108
.byte 32
.byte 76
.byte 64
.byte 82
.align 2
.align 4
L3369:
.byte 8
.byte 108
.byte 105
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 73
.align 2
.align 4
L3368:
.byte 8
.byte 108
.byte 97
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 76
.align 2
.align 4
L3367:
.byte 8
.byte 108
.byte 97
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 71
.align 2
.align 4
L3366:
.byte 8
.byte 108
.byte 119
.byte 32
.byte 64
.byte 82
.byte 44
.byte 64
.byte 80
.align 2
.align 4
L3365:
.byte 21
.byte 108
.byte 97
.byte 32
.byte 116
.byte 48
.byte 44
.byte 64
.byte 76
.byte 32
.byte 59
.byte 32
.byte 115
.byte 119
.byte 32
.byte 64
.byte 82
.byte 44
.byte 40
.byte 116
.byte 48
.byte 41
.align 2
.align 4
L3364:
.byte 12
.byte 114
.byte 101
.byte 109
.byte 32
.byte 97
.byte 48
.byte 44
.byte 97
.byte 48
.byte 44
.byte 97
.byte 49
.align 2
.align 4
L3363:
.byte 12
.byte 78
.byte 79
.byte 32
.byte 65
.byte 83
.byte 84
.byte 82
.byte 32
.byte 37
.byte 73
.byte 32
.byte 10
.align 2
.align 4
L3362:
.byte 9
.byte 46
.byte 103
.byte 108
.byte 111
.byte 98
.byte 97
.byte 108
.byte 32
.byte 71
.align 2
.align 4
L3361:
.byte 8
.byte 46
.byte 97
.byte 108
.byte 105
.byte 103
.byte 110
.byte 32
.byte 50
.align 2
.align 4
L3360:
.byte 2
.byte 71
.byte 58
.align 2
.align 4
L3359:
.byte 13
.byte 46
.byte 119
.byte 111
.byte 114
.byte 100
.byte 32
.byte 64
.byte 65
.byte 32
.byte 35
.byte 32
.byte 64
.byte 78
.align 2
.align 4
L3258:
.word 0
.align 4
L3358:
.byte 5
.byte 46
.byte 116
.byte 101
.byte 120
.byte 116
.align 2
.align 4
L3357:
.byte 5
.byte 46
.byte 100
.byte 97
.byte 116
.byte 97
.align 2
.align 4
L3356:
.byte 9
.byte 46
.byte 97
.byte 108
.byte 105
.byte 103
.byte 110
.byte 32
.byte 52
.byte 10
.align 2
.align 4
L3355:
.byte 2
.byte 58
.byte 10
.align 2
.align 4
L3354:
.byte 2
.byte 43
.byte 71
.align 2
.align 4
L3353:
.byte 4
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3352:
.byte 2
.byte 97
.byte 48
.align 2
.align 4
L3351:
.byte 2
.byte 97
.byte 49
.align 2
.align 4
L3350:
.byte 4
.byte 40
.byte 115
.byte 50
.byte 41
.align 2
.align 4
L3349:
.byte 4
.byte 40
.byte 115
.byte 48
.byte 41
.align 2
.align 4
L3348:
.byte 14
.byte 115
.byte 116
.byte 100
.byte 105
.byte 110
.byte 40
.byte 37
.byte 78
.byte 44
.byte 37
.byte 78
.byte 41
.byte 58
.byte 32
.align 2
.align 4
L3347:
.byte 12
.byte 120
.byte 103
.byte 32
.byte 101
.byte 114
.byte 114
.byte 111
.byte 114
.byte 32
.byte 37
.byte 78
.byte 10
.align 2
.global G
.align 2
G:
.word 0 # 0
.word L3001 # 1
.word 0 # 2
.word 0 # 3
.word 0 # 4
.word 0 # 5
.word 0 # 6
.word 0 # 7
.word 0 # 8
.word 0 # 9
.word 0 # 10
.word L2011 # 11
.word L2012 # 12
.word L2013 # 13
.word L2014 # 14
.word L2015 # 15
.word L2016 # 16
.word L2017 # 17
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
.word L2030 # 30
.word L2031 # 31
.word L2032 # 32
.word 0 # 33
.word 0 # 34
.word L2035 # 35
.word 0 # 36
.word 0 # 37
.word 0 # 38
.word 0 # 39
.word L2040 # 40
.word L2041 # 41
.word L2042 # 42
.word 0 # 43
.word 0 # 44
.word 0 # 45
.word L2046 # 46
.word L2047 # 47
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
.word L2501 # 60
.word 0 # 61
.word L2505 # 62
.word L2506 # 63
.word L2507 # 64
.word 0 # 65
.word L2503 # 66
.word L2502 # 67
.word L2504 # 68
.word 0 # 69
.word L2508 # 70
.word 0 # 71
.word 0 # 72
.word 0 # 73
.word 0 # 74
.word L2510 # 75
.word L2511 # 76
.word L2509 # 77
.word L2512 # 78
.word 0 # 79
.word 0 # 80
.word 0 # 81
.word 0 # 82
.word 0 # 83
.word 0 # 84
.word L2085 # 85
.word L2086 # 86
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
