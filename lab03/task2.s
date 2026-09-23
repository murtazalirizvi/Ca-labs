
main:
    li x10, 100    #g
    li x11, 200    #h
    li x12, 300    #i
    li x13, 400    #j
    jal x1, leafexample
    add x14, x10, x0     # just copying result in x14 to see it
    li a7, 10
    ecall

leafexample:

    addi sp, sp, -12
    sw x18, 0(sp)
    sw x19, 4(sp)
    sw x20, 8(sp)
    add x18, x10, x11     #x18 = g + h
    add x19, x12, x13     #x19 = i + j
    sub x20, x18, x19     #x20 = (g+h) - (i+j)
    add x10, x20, x0      #x10 = f
    lw x18, 0(sp)
    lw x19, 4(sp)
    lw x20, 8(sp)
    addi sp, sp, 12
    jalr x0, 0(x1)
