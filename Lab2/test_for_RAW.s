.data 
k: .half 0x1234, 0x5678, 0x0202, 0x0202
.text
la x18, k

lhu x21, 0x00(x18)
lhu x22, 0x04(x18)
add x21, x21, x22
add x25, x9, x21
sh x21, 0x08(x18)
