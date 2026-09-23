sw x5,0x200(x0)
li x5,4
sb x5,0x201(x0)
li x10, 0x100
li x11,0x200
jal x1,strcpy
end:
j end
strcpy:
addi sp,sp,-16
sw x19,12(sp)
li x19,0
notnull:
add x5,x19,x11
lb x6,0(x5)
add x5,x19,x10
sb x6,0(x5)
beq x6,x0,exit
addi x19,x19,1
beq x0,x0,notnull
exit:
lw x19,12(sp)
addi sp,sp,16
jalr x0,0(x1)
