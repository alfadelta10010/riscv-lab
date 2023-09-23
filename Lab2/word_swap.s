.data
a: .word 0x42046363, 0x00050040

.text
la x18, a 
# Pseudo instruction, comprises of two instructions

lw x20, 0x00(x18) # a
lw x21, 0x04(x18) # b

add x20, x20, x21 # a = a + b
sub x21, x20, x21 # b = a - b
sub x20, x20, x21 # a = a - b

sw x20, 0x00(x18)
sw x21, 0x00(x18)