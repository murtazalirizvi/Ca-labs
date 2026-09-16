main:
# addi x22,x22, 5 #i
# addi x23,x23, 6 #j
# addi x19, x19, 0 #f
# addi x20,x20, 8 #g
# addi x21,x21, 7 #h

# bne x22,x23,Else
# add x19, x20, x21
# beq x0,x0,Exit
# Else:sub x19,x20,x21
# add x0,x0,x0 # just to wait or to see the output in the memory viewer
# Exit:

add x22, x0, x0 # i = 0
addi x24, x0, 2 # k = 2
add x25, x0, x0
addi x4, x0, 2
sw x4, 0(x25)
addi x4, x0, 2
sw x4, 4(x25)
addi x4, x0, 3
sw x4, 8(x25)

Loop:
slli x10, x22, 2
add x10, x10, x25
lw x9, 0(x10)
bne x9, x24, exit
addi x22, x22, 1
beq x0, x0, Loop

exit:
addi x0, x0, 0 # just to wait or to see the output in the memory viewer