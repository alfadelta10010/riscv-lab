.data
k: .byte 0x4D 0x8C
.text
la x18, k
lb x21, 0x00(x18)
lb x22, 0x01(x18)
add x24, x21, x22
sb x24, 0x08(x18)