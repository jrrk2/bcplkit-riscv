.data
.align 4
filename:
    .string "output.txt"     # Name of the file to write to
inputBuffer:
    .space 100                # Allocate space for input buffer (100 bytes)

.text
.align 4
.global _start               # Declare _start as a global symbol
_start:                      # Entry point for standalone program
    li a0, 42
    call putn
    li a0, '\n'
    call putchar
    li a0, -1
    call putn
    li a0, '\n'
    call putchar
    li a0, 100
    call putn
    li a0, '\n'
    call putchar
    # Open the file
    li a0, -100              # Use AT_FDCWD for the current directory
    la a1, filename          # Load the address of the filename
    li a2, 0x241             # Set flags (O_WRONLY | O_CREAT | O_TRUNC = 1 | 64 | 512)
    li a3, 420               # Set mode (permissions: 0644)
    li a7, 56                # Set ECALL number for openat
    ecall                    # Make the ECALL to open the file
    mv s4, a0                # Move the file descriptor to s4 for later use
    call putn
    li a0, '\n'
    call putchar

    # Read from stdin
    li a0, 0                 # File descriptor for stdin (0)
    la a1, inputBuffer       # Load address of the input buffer
    li a2, 100               # Set the maximum number of bytes to read
    li a7, 63                # Set ECALL number for read
    ecall                    # Make the ECALL to read the input
    mv s2, a0                # Move the number of bytes read to s2 for writing
    call putn
    li a0, '\n'
    call putchar

    # Write to the terminal
    li a0, 1                 # Load the file descriptor into a0
    la a1, inputBuffer       # Load address of the input buffer
    mv a2, s2
    li a7, 64                # Set ECALL number for write
    ecall                    # Make the ECALL to write the string

    # Write to the file
    mv a0, s4                # Load the file descriptor into a0
    call putn
    li a0, '\n'
    call putchar
    mv a0, s4                # Load the file descriptor into a0
    la a1, inputBuffer       # Load address of the input buffer
    mv a2, s2
    li a7, 64                # Set ECALL number for write
    ecall                    # Make the ECALL to write the string
    call putn
    li a0, '\n'
    call putchar

    # Close the file
    mv a0, s4                # Load the file descriptor into a0
    li a7, 57                # Set ECALL number for close
    ecall                    # Make the ECALL to close the file
    call putn
    li a0, '\n'
    call putchar

    # Exit the program
    li a7, 93                # ECALL number for exit
    ecall                    # Make the ECALL to exit

