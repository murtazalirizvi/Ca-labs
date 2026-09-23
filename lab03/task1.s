addi x10,x0,12  # a is in x10
addi x11,x0,12  # b is in x11
jal x1,sum      # calls the function named sum
addi x11,x10,0
li x10,1
ecall
j exit
sum:
    add x10,x10,x11
    jalr x0,0(x1)
exit: