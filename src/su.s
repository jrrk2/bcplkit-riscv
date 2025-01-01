# BCPL runtime startup for RISC-V Linux

        .equ STACKBASE, 54
        .equ STACKEND, 55
        .equ STKSIZ, 0x400000

        .global _start
        .global finish
        .global stop

_start: 
        # Process command line args
        mv s1, sp
        addi sp, sp, -256
        mv a3, sp
        addi a3, a3, 1
        lw t0, (s1)
        li t1, 2
        blt t0, t1, start_4

        addi a4, s1, 8      # argv[1:]
        lw a5, (a4)         # *argv[1]
        j start_3

start_1:
        li t2, ' '          # space char
start_2:
        beq a3, s1, start_4
        sb t2, (a3)
        addi a3, a3, 1
start_3:
        lb t2, (a5)
        addi a5, a5, 1
        bnez t2, start_2
        addi a4, a4, 4
        lw a5, (a4)
        bnez a5, start_1

start_4:
        sub t0, a3, sp
        addi t0, t0, -1
        sb t0, (sp)

        sub t1, s1, a3
        andi t1, t1, 3
        beqz t1, skip_pad
pad_loop:
        sb zero, (a3)
        addi a3, a3, 1
        addi t1, t1, -1
        bnez t1, pad_loop
skip_pad:

        call rtinit
        li a0, STKSIZ
        call sbrk
        
        # Setup stack pointers
        la a3, G
        mv s0, a0           # Save brk address

        srli t0, a0, 2
        sw t0, STACKBASE*4(a3)
	li t1, STKSIZ>>2
        add t0, t0, t1
        sw t0, STACKEND*4(a3)

        # Initialize stack frame
        sw zero, (s0)
        la t0, finish
        sw t0, 4(s0)
        srli t0, sp, 2
        sw t0, 8(s0)
        lw t0, 4(a3)
        jr t0

finish:
        li a0, 0
stop:
        mv s1, a0
        call rtexit
        mv a0, s1
        call _exit

