# WAP to convert a Little endian number into Big Endian number. 
# Assume number is byte-addressable memory. Use logical approach
.data
num: .word 0x012345678

.text
# Loading part
la x5 num
lw x6 0x00(x5)
# Mask set up
addi x10 x10 0xFF
and x28 x6 x10
slli x28 x28 0x18
add x8 x8 x28
slli x10 x10 0x08

and x28 x6 x10
slli x28 x28 0x08
add x8 x8 x28
slli x10 x10 0x08

and x28 x6 x10
srli x28 x28 0x08
add x8 x8 x28
slli x10 x10 0x08

and x28 x6 x10
srli x28 x28 0x18
add x8 x8 x28
slli x10 x10 0x08

sw x8 0x04(x5)