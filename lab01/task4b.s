main:
lb  x11, 0x100(x0)
lh  x12, 0x200(x0)
add x13, x11, x12
sw  x13, 0x300(x0)

lb  x11, 0x101(x0)
lh  x12, 0x202(x0)
add x13, x11, x12
sw  x13, 0x304(x0)

lb  x11, 0x102(x0)
lh  x12, 0x204(x0)
add x13, x11, x12
sw  x13, 0x308(x0)

lb  x11, 0x103(x0)
lh  x12, 0x206(x0)
add x13, x11, x12
sw  x13, 0x30C(x0)



end:
j end
   
