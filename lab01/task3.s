.text
.globl main
main:

# int a = 5;
# int b = 0 + 0;
# a = b + 32;
# int d = (a + b) - 5;
# int e = (((a - d) + (b - a)) + d);
# e = a + b + d + e;

li   x5, 5          #assigning x5 = 5
li   x6, 0          #assigning x6 = 0

addi x5, x6, 32     #now x5 = 32

add  x7, x5, x6     #now x7 = 32
addi x7, x7, -5     # then 32 -5 = 27
# now  x7 = 27

sub  x9, x5, x7     #now x9 = 5
sub  x10, x6, x5    #x10 = -32
add  x9, x9, x10    #x9 = -27
add  x8, x9, x7     #x8 = 0

add  x9, x5, x6     #x9 = 32
add  x9, x9, x7     #x9 = 59
add  x8, x9, x8     #x8 = 59



end: 
j end 