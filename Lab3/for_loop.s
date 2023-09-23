.data
limit: .byte 0x05
.text
la x6, limit
lbu x9, 0x00(x6)
loop: addi x18 x18 0x01
addi x17 x17 0x01
bne x17 x9 loop

# RV32I