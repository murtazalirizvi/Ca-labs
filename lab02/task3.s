main:


addi x22,x22,0 #i
addi x23,x23,0 #sum
addi x24,x24,10 #10
addi x4,x0,0x200

# Loop1:
# bge x22,x24,Exit
# slli x7,x22,2
# add x7, x4, x7
# sw x22,0(x7)
# addi x22,x22,1
# beq x0,x0,Loop1
# Exit:


loop2:
bge x22,x24,exit
slli x7,x22,2
add x7, x4, x7
sw x22,0(x7)
add x23, x23, x22
addi x22,x22,1 
beq x0,x0,loop2
exit:
