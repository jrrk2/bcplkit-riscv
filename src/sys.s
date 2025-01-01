# BCPL Compiler Runtime
# System Interface for RISC-V Linux

.global _exit
_exit:
    li a7, 93     # exit syscall number for RISC-V
    ecall

.global read
read:
    li a7, 63     # read syscall number for RISC-V
    ecall
    ret

.global write
write:
    li a7, 64     # write syscall number for RISC-V
    ecall
    ret

.global open
open:
    li a7, 1024   # open syscall number for RISC-V
    ecall
    ret

.global close
close:
    li a7, 57     # close syscall number for RISC-V
    ecall
    ret

.global olseek
olseek:
    li a7, 62     # lseek syscall number for RISC-V
    ecall
    ret

.global sbrk
sbrk:
    # Check if curbrk is initialized
    la t0, curbrk
    lw t1, (t0)
    bnez t1, sbrk_adjust

    # First call to sbrk: get initial program break
    mv a0, zero
    li a7, 214    # brk syscall number for RISC-V
    ecall
    sw a0, (t0)   # Store initial break

sbrk_adjust:
    # Get current break
    lw t1, (t0)
    add a0, t1, a0  # Adjust break by requested amount

    # Call brk syscall
    li a7, 214
    ecall

    # Update curbrk
    la t0, curbrk
    sw a0, (t0)
    
    # Return previous break
    lw a0, (t0)
    ret

.global ioctl
ioctl:
    li a7, 29     # ioctl syscall number for RISC-V
    ecall
    ret

.global isatty
isatty:
    # Allocate stack space for termios structure
    addi sp, sp, -0x40  # TERMIOSZ = 0x40
    
    # Prepare ioctl arguments
    mv a2, sp         # termios structure
    li a1, 0x5401     # TCGETS = 0x5401
    mv a0, a0         # file descriptor (already in a0)
    
    # Call ioctl
    li a7, 29         # ioctl syscall
    ecall
    
    # Check return value
    beq a0, zero, isatty_no
    li a0, 1          # Return 1 (is a tty)
    j isatty_done
    
isatty_no:
    li a0, 0          # Return 0 (not a tty)
    
isatty_done:
    addi sp, sp, 0x40  # TERMIOSZ = 0x40
    ret

# Data section
.data
.global oflags
# Equivalent to O_TRUNC | O_CREAT | O_WRONLY in <fcntl.h>
oflags: .word 01101

.global curbrk
curbrk: .word 0

.global errno
errno: .word 0

