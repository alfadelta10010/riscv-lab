.data
a: .word 0x0000, 0x0001, 0x0002, 0x0003, 0x0004, 0x0005, 0x0006, 0x0007, 0x0008, 0x0009, 0x000A

# x5 = Address
# x6 = i
# x7 = memory offset
# x8 = a[i]
# x28 = 10
# x18 = h

.text
la x5, a
addi x28 x28 0x0A
loop:
    slli x7 x6 0x02
    add x7 x7 x5
    lw x8 0x00(x7)
    bgeu x6, x28, exit
    add x18 x18 x8
    addi x6 x6 0x01
    bltu x6 x28 loop
exit: sw x18 0x28(x5)