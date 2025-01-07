.data
.align 4
stack_bcpl:
	.space 4096	
.text
.align 4
	.global __libc_start_main
__libc_start_main:	
	la s5, stack_bcpl
	srli s5,s5,2
	la s4,G
	lw a0,4(s4)
	srli s4,s4,2
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
