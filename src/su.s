.data
.align 4
hello:
    .string "Hello, World"   # Name of the file to write to
.align 4
stack_bcpl:
	.space 4096	
.text
.align 4
	.global __libc_start_main
__libc_start_main:	
    la s2, stack_bcpl
    la a0, hello
    call puts
    la a0,G
    lw a0,4(a0)
    jalr a0
	
    # Exit the program
.global finish
finish:
.global main
main:
.global _exit
_exit:
    li a7, 93                # ECALL number for exit
    ecall                    # Make the ECALL to exit

	ret
