.text


# part 2 from task2 
li x5, 5 
li x7, -1
sub x5, x7, x5

#2's complement = NOT() + 1
#NOT() = 2's complement - 1

# part 3 from task2

#print

li a0, 1
add a1, x5, x0
ecall

# print new line
li a1, '\n'
li a0, 11
ecall

# part 4 from task2
addi x6 , x6 , 0x00000123
slli x6 , x6 , 12
addi x6 , x6, 0x00000456
slli x6 , x6 , 8
addi x6 , x6, 0x00000078



#print new line
li a1, '\n'
li a0, 11
ecall

 # part 5 from task2
# odd
li t0, 5

andi a1, t0, 1

ecall

# even
li t0, 6

andi a1, t0, 1

ecall
#exit 
li a0, 10
ecall
