.data
.align 4
L2:
    .string "Hello, World!"  # Define the string

.text
.align 4
.global _start               # Declare _start as a global symbol
_start:                      # Entry point for standalone program
    li a0, 1                 # Load file descriptor (1 for stdout)
    la a1, L2                # Load address of the string
    li a2, 13                # Load the length of the string (13 characters)
    li a7, 64                # Set ECALL number for write
    ecall                    # Make the ECALL to write the string

    # Exit the program
    li a7, 93                # ECALL number for exit
    ecall                    # Make the ECALL to exit

