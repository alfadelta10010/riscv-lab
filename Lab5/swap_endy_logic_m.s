# WAP to convert a Little endian number into Big Endian number. 
# Assume number is byte-addressable memory. Use logical approach
.data
num: .word 0x012345678

.text
# Mask set up
addi x10 x10 0xFF
slli x10 x10 0x08
addi x11 x11 0xFF
slli x11 x11 0x10
addi x12 x12 0xFF
slli x12 x12 0x18
# Loading part
la x5 num
lw x6 0x00(x5)
# Masking part
andi x28 x6 0xFF
and x29 x6 x10
and x30 x6 x11
and x31 x6 x12
# Shifting part
srli x31 x31 0x18
srli x30 x30 0x08
slli x29 x29 0x08
slli x28 x28 0x18
# Combining part
add x8 x31 x8
add x8 x30 x8
add x8 x29 x8
add x8 x28 x8


