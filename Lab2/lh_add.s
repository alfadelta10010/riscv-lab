.data
meme: .byte 0x01 0x02 0x05 0x04 0x03
.text
la x18, meme
addi x8 x18 0x01
check: lbu x20, 0x00(x18)
addi x18 x18 0x01
bltu x20, x19, update
add x19 x20 x0
update: bltu x18 x8 check