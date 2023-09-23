# WAP to convert a Little endian number into Big Endian number. 
# Assume number is byte-addressable memory. Use load-store approach
.data
num: .word 0x12345678

.text
la x5 num
lb x8 0x03(x5)
lb x6 0x02(x5)
slli x6 x6 0x08
add x8 x8 x6
lb x6 0x01(x5)
slli x6 x6 0x10
add x8 x8 x6
lb x6 0x00(x5)
slli x6 x6 0x18
add x8 x8 x6
sw x8 0x04(x5)