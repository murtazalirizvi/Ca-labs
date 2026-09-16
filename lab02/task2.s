main:
# x, a, b & c are signed integers and stored in x20, x21, x22, x23 

addi x20,x20,4 #x
addi x21,x21,0 #a
addi x22,x22,6 #b
addi x23,x23,10 #c

addi x24, x24, 1 #1
addi x25, x25, 2 #2
addi x26, x26, 3 #3
addi x27, x27, 4 #4

beq x20, x24, case1
beq x20, x25, case2
beq x20, x26, case3
beq x20 , x27, case4


case1:
    add x21,x22,x23 #a=b+c
    beq x0,x0,Exit
case2:
    sub x21,x22,x23 #a=b-c
    beq x0,x0,Exit
case3:  
    slli x21,x22,1 #a=b*2
    beq x0,x0,Exit
case4:
    srli x21,x22,1 # a=b/2
    beq x0,x0,Exit
Exit:
add x0,x0,x0 # just to wait or to see the output in the memory viewer