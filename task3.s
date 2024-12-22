.data
task2: .string "\nTask3 Part 3 :" 
.text


# part 1 from task3
# odd
li t0, 5
andi a1, t0, 1
ecall

# even
li t0, 6
andi a1, t0, 1
ecall

# part 2 from task3
li t1, 15   # F (1111)
li t2, 1   
li a0, 3    # bit number
sll t2, t2, a0
xor t0, t1, t2  # should be (0111)


# part 3 from task3
# odd
li t0, 0x32365
srli t1, t0 , 16
xor t2, t0, t1

srli t1, t2 , 8
xor t2, t2, t1

srli t1, t2 , 4
xor t2, t2, t1

srli t1, t2 , 2
xor t2, t2, t1

srli t1, t2 , 1
xor t2, t2, t1

andi t2, t2 , 1 #final result in the t2

la a1, task2
li a0, 4
ecall

mv a1, t2
li a0, 1
ecall

#exit 
li a0, 10
ecall