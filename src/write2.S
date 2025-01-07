.data
.align 4
filename:
    .string "output.txt"     # Name of the file to write to
L2:
    .string "Hello, World!\n" # The string to write

.text
.align 4
.global _start               # Declare _start as a global symbol
_start:                      # Entry point for standalone program
    li a0, -100              # Use AT_FDCWD for the current directory
    la a1, filename          # Load the address of the filename
    li a2, 65                # Set flags (O_WRONLY | O_CREAT)
    li a3, 420               # Set mode (permissions: 0644)
    li a7, 56                # Set ECALL number for openat
    ecall                    # Make the ECALL to open the file
    mv a4, a0                # Move the file descriptor to a4 for later use

    # Write to the file
    mv a0, a4                # Load the file descriptor into a0
    la a1, L2                # Load address of the string
    li a2, 14                # Load the length of the string (14 characters including newline)
    li a7, 64                # Set ECALL number for write
    ecall                    # Make the ECALL to write the string

    # Close the file
    mv a0, a4                # Load the file descriptor into a0
    li a7, 57                # Set ECALL number for close
    ecall                    # Make the ECALL to close the file

    # Exit the program
    li a7, 93                # ECALL number for exit
    ecall                    # Make the ECALL to exit

