# 2 out of 5 problem
# - check if 7,6,5 bits are set to 1
# - check if 2 out of 5 remaining bits is 1

# x31 = 00000000
# x30 = 00000001
# x29 = 5 (limit for iteration)
# x5 = address of data
# x8 = data
# x9 = valriable b 

.data
inp: .byte 0xE9
.text
addi x31 x0 0xE0
addi x30 x0 0x01
addi x29 x0 0x05
la x5 inp
lbu x8 0x00(x5)
andi x9 x8 0xE0
bne x9 x31 exit
loop:
    andi x7 x6 0x01
    slli x6 x6 0x01
    addi x28 x28 0x01
    bne x7 x30 exit
    addi x6 x6 0x01
    beq x28 x29 loop
exit: nop