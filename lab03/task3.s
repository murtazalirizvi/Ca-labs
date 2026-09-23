li x3,50
li x4,100
sw x3, 0x120(x0)
sw x4, 0x124(x0)
addi x10, x0, 0x100
addi x11, x0,8
jal x1, swap
jal end
swap:
slli x11,x11,2
add x10,x10,x11
lw x7,0(x10)
lw x8,4(x10)
sw x8,0(x10)
sw x7,4(x10)
jalr x0,0(x1)
end: