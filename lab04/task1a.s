.globl main
main:
    addi a0, x0, 5      # n = 5 (change to test other values)
    jal  ra, fact         # call fact(5), result comes back in a0
    mv   a1, a0            # move result into a1 for printing (Venus convention)
    li   a0, 1              # print_int syscall code
    ecall
    li   a0, 10             # exit syscall code
    ecall

fact:
    addi sp, sp,-8
    sw x1, 4(sp)
    sw x10, 0(sp)
    addi x5, x10,-1
    bge x5, x0, L1
    addi x10, x0, 1
    addi sp, sp, 8
    jalr x0, 0(x1)



 L1:
    addi x10, x10,-1
    jal x1, fact



    addi x6, x10, 0
    lw x10, 0(sp)
    lw x1, 4(sp)
    addi sp, sp, 8



    mul x10, x10, x6
    jalr x0, 0(x1)