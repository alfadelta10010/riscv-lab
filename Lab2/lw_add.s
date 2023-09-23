.data 
k: .word 0x12345670, 0x8D78239F
.text
la x18, k
lw x21, 0x00(x18)
lw x22, 0x04(x18)
add x24, x21, x22
sw x24, 0x08(x18)
