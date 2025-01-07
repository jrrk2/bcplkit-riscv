# BCPL Compiler Runtime - RISC-V Translation
# Translated from Robert Nordier's x86 implementation

# Constants
.eqv IFLAGS, 0
.eqv MODE, 0666

.eqv FCBCNT, 8    # File Control Block Count
.eqv FCBSIZ, 18   # File Control Block Size
.eqv BUFSIZ, 512  # Buffer Size
.eqv STRSIZ, 256  # String Size

.eqv FD_STDIN, 0
.eqv FD_STDOUT, 1

# File Control Block Offsets
.eqv FCB_BF, 0    # Buffer First
.eqv FCB_XP, 4    # Buffer End Pointer
.eqv FCB_CP, 8    # Current Pointer
.eqv FCB_FD, 12   # File Descriptor
.eqv FCB_FL, 16   # Flags

# File Flags
.eqv FL_RD, 1
.eqv FL_WR, 2
.eqv FL_BF, 4
.eqv FL_EOF, 64
.eqv FL_ERR, 128

.text
# Runtime Initialization
.globl rtinit
rtinit:
    # Allocate memory for file control blocks
    li a0, FCBCNT * BUFSIZ
    call sbrk
    mv s0, a0  # Base address of allocated memory

    # Initialize file control blocks
    la t0, ft     # Base address of file control block array
    li t1, FCBCNT # Counter
rtinit_loop:
    sw s0, (t0)   # Store buffer address
    add s0, s0, BUFSIZ  # Next buffer
    add t0, t0, FCBSIZ  # Next file control block
    addi t1, t1, -1
    bnez t1, rtinit_loop

    # Open stdin
    la a1, ft
    li a0, FD_STDIN
    li a2, FL_RD
    call fopen

    # Open stdout
    la a1, ft + FCBSIZ
    li a0, FD_STDOUT
    li a2, FL_WR
    call fopen
    ret

# Runtime Exit
.globl rtexit
rtexit:
    la t0, ft     # Base address of file control block array
    li t1, FCBCNT # Counter
rtexit_loop:
    lbu t2, FCB_FL(t0)
    beqz t2, rtexit_next
    
    # Preserve counter and base address
    mv a0, t0
    addi sp, sp, -4
    sw t1, (sp)
    call fclose
    lw t1, (sp)
    addi sp, sp, 4

rtexit_next:
    add t0, t0, FCBSIZ
    addi t1, t1, -1
    bnez t1, rtexit_loop
    ret

# Find Input
.globl findinput
findinput:
    li a2, IFLAGS
    j findio

# Find Output
.globl findoutput
findoutput:
    la t0, oflags
    lw a2, (t0)

findio:
    # Preserve caller-saved registers
    addi sp, sp, -12
    sw ra, 8(sp)
    sw s1, 4(sp)
    sw s0, (sp)

    la s0, ft     # Base of file control blocks
    li t1, FCBCNT # Counter
findio_search:
    lbu t2, FCB_FL(s0)
    beqz t2, findio_found_free
    add s0, s0, FCBSIZ
    addi t1, t1, -1
    bnez t1, findio_search

    # No free file control block
    li a0, 0
    j findio_return

findio_found_free:
    # Prepare for open syscall
    addi sp, sp, -STRSIZ
    mv a1, sp     # Buffer for filename
    
    # Filename length is in first byte
    lbu t3, (a1)  # Get length
    mv t4, a1
    addi t4, t4, 1  # Skip length byte
    
    # Copy filename
    li t5, 0
findio_copy_name:
    beqz t3, findio_copy_done
    lb t6, (t4)
    sb t6, (a1)
    addi t4, t4, 1
    addi a1, a1, 1
    addi t3, t3, -1
    j findio_copy_name

findio_copy_done:
    sb zero, (a1)  # Null terminate

    # Open file
    mv a0, sp     # Filename
    li a1, MODE
    mv a2, a2     # Flags from caller
    call open
    bltz a0, findio_error

    # Prepare file control block
    mv a1, s0
    # Determine flags based on input/output
    li a2, FL_RD
    beq a2, a2, findio_input_flags
    li a2, FL_WR
findio_input_flags:
    call fopen

    mv a0, s0     # Return file control block

findio_return:
    lw s0, (sp)
    lw s1, 4(sp)
    lw ra, 8(sp)
    addi sp, sp, 12
    ret

findio_error:
    li a0, 0
    j findio_return

# File Open
fopen:
    # a0: file descriptor
    # a1: file control block
    # a2: flags
    sw a0, FCB_FD(a1)
    lw t0, FCB_BF(a1)
    sw t0, FCB_CP(a1)
    sw t0, FCB_XP(a1)
    sb a2, FCB_FL(a1)

    # Check if writing to non-tty
    li t0, FL_RD
    beq a2, t0, fopen_done
    
    # Check if output is to a terminal
    mv a0, a0
    call isatty
    bnez a0, fopen_done

    # Adjust buffer end pointer
    lw t0, FCB_XP(a1)
    addi t0, t0, BUFSIZ
    sw t0, FCB_XP(a1)

fopen_done:
    ret

# Write Character
.globl wrch
wrch:
    # Preserve ra
    addi sp, sp, -4
    sw ra, (sp)

    la t0, cos
    lw t1, (t0)    # Current output stream
    
    lw t2, FCB_CP(t1)
    sb a0, (t2)    # Store character
    addi t2, t2, 1
    sw t2, FCB_CP(t1)

    lw t3, FCB_XP(t1)
    bltu t2, t3, wrch_done

    # Check buffer flags
    lbu t4, FCB_FL(t1)
    andi t4, t4, FL_BF
    bnez t4, wrch_flush

    # Calculate buffer usage
    lw t3, FCB_BF(t1)
    sub t3, t2, t3
    li t4, BUFSIZ
    beq t3, t4, wrch_flush

    # Check for newline
    li t4, 0xa
    bne a0, t4, wrch_done

wrch_flush:
    mv a0, t1
    call flush

wrch_done:
    lw ra, (sp)
    addi sp, sp, 4
    ret

# Flush Output Buffer
flush:
    lw t1, FCB_CP(a0)    # Current pointer
    lw t2, FCB_BF(a0)    # Buffer start
    sw t2, FCB_CP(a0)    # Reset current pointer
    sub t3, t1, t2       # Bytes to write

    beqz t3, flush_done

flush_write_loop:
    mv a1, t2    # Buffer
    mv a2, t3    # Bytes
    lw a0, FCB_FD(a0)  # File descriptor
    call write
    
    bltz a0, ferr  # Error handling
    
    add t2, t2, a0  # Update buffer position
    sub t3, t3, a0  # Reduce bytes to write
    bnez t3, flush_write_loop

flush_done:
    li a0, 0
    ret

# File Error Handler
ferr:
    # Mark error flag in file control block
    lbu t0, FCB_FL(a0)
    ori t0, t0, FL_ERR
    sb t0, FCB_FL(a0)
    ret

# Close File
fclose:
    # Check if writing
    lbu t0, FCB_FL(a0)
    andi t0, t0, FL_WR
    # Check if writing flag is set
    lbu t0, FCB_FL(a0)
    andi t0, t0, FL_WR
    beqz t0, fclose_close

    call flush

fclose_close:
    lw a0, FCB_FD(a0)
    call close
    
    # Clear file control block flags
    sb zero, FCB_FL(a0)
    ret

# Read Character
.globl rdch
rdch:
    la t0, cis
    lw t1, (t0)    # Current input stream
    
    lw t2, FCB_CP(t1)
    lw t3, FCB_XP(t1)
    bltu t2, t3, rdch_return_char

    # Refill buffer
    lw t2, FCB_BF(t1)
    sw t2, FCB_CP(t1)
    sw t2, FCB_XP(t1)

    # Perform read
    mv a0, t2
    li a1, BUFSIZ
    lw a2, FCB_FD(t1)
    call read

    bltz a0, ferr     # Error handling
    beqz a0, feof     # End of file

    lw t1, cis
    lw t2, FCB_BF(t1)
    add t3, t2, a0
    sw t3, FCB_XP(t1)

rdch_return_char:
    lw t1, cis
    lw t2, FCB_CP(t1)
    lbu a0, (t2)
    addi t2, t2, 1
    sw t2, FCB_CP(t1)
    ret

feof:
    li a0, -1
    ret

# End of Read
.globl endread
endread:
    la t0, cis
    lw a0, (t0)
    call fclose
    sw zero, (t0)
    ret

# Select Input
.globl selectinput
selectinput:
    la t0, cis
    sw a0, (t0)
    ret

# Unread Character
.globl unrdch
unrdch:
    la t0, cis
    lw t1, FCB_CP(t0)
    lw t2, FCB_BF(t0)
    beq t1, t2, unrdch_done
    addi t1, t1, -1
    sw t1, FCB_CP(t0)
unrdch_done:
    ret

# Data Section
.data
cis: .word ft     # Current input stream
cos: .word ft+FCBSIZ  # Current output stream

.bss
ft: .space FCBCNT*FCBSIZ  # File Control Block Array

