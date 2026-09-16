main: 
    addi x8, x0, 5 # a=5 
    addi x9, x0, 3 # b=3 
    addi x18, x0, 0 # i=0 
    addi x19, x0, 0x200 
loop1: 
    addi x20, x0, 0 # j=0 
loop2: slli x21, x20, 4 
    add x22, x19, x21
    add x23, x18, x20
    sw x23, 0(x22)
    addi x20, x20, 1 
    blt x20, x9, loop2
    addi x18, x18, 1
    blt x18, x8, loop1
exit: 
    j exit
    add x0, x0, x0 # delaying to see the result