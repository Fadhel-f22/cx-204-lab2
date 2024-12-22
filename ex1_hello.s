.data
.word 65, 66, 67, 68 #1000_0000
.byte 69, 70, 71, 72
.string "Fadhel"
.byte 'Q'



.text
main:


# printing integers 
li t0,0x10000000
lw t1, 0(t0) # [t0 + 0]

mv a1, t1 # sudo -> addi a1, t1, 0
li a0, 1
ecall

lw t1, 4(t0) # [t0 + 0]

mv a1, t1 # sudo -> addi a1, t1, 0
li a0, 1
ecall

lw t1, 8(t0) # [t0 + 0]

mv a1, t1 # sudo -> addi a1, t1, 0
li a0, 1
ecall


# printing characters
li a1, 0x41 
li a0, 11
ecall

# simplr way 
li a1, ' '
li a0, 11
ecall
)

# printing sttrings 
li a1, 0x10000014
li a0, 4
ecall

# simplr way 
li a1, '\n'
li a0, 11
ecall
)

# printing sttrings 
li a1, 0x10000014
li a0, 4
ecall


# li t0, 8          # Load immediate value 5 into register t0
# li t1, 0x46         # Load immediate value 10 into register t1
# addi a1, t1, 0    # mv t1 to a0, a1 = t1 + 0;
# li a0, 11
# ecall
# li t1, 0x42         # Load immediate value 10 into register t1
# addi a1, t1, 0    # mv t1 to a0, a1 = t1 + 0;
# li a0, 11
# ecall

# add a1, t0, t1    # a1 <= t0 + t1
#  # Print the result using a system call
# li a0, 1
#  # System call for printing an integer
# ecall



# Exit the program
li a0, 10
 # System call for exit
ecall
