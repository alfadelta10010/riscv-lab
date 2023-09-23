# WAP to add 2 64-bit unsigned nos
.data
a: .word 0x81234568 0x80000000 
b: .word 0x80000002 0x81234567  
# x24 LSB Sum
# x25 MSB Sum
# x26 Carry
.text
la x18, a
la x19, b
lw x20, 0x00(x18) # a LSB
lw x21, 0x04(x18) # a MSB
lw x22, 0x00(x19) # b LSB
lw x23, 0x04(x19) # b MSB

add x24 x20 x21 # sum LSB
bltu x24, x20, carryL
beq x0, x0, addM

carryL: addi x23, x23, 0x01
addM: add x25, x23, x22 # sum MSB
bltu x25, x23, carryM
beq x0, x0, exit

carryM: addi x26, x0, 0x01
exit: sw x26, 0x10(x18)
sw x25, 0x14(x18)
sw x24, 0x18(x18)
