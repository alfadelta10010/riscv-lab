.data 
k: .half 0x1234, 0x8D78
.text
la x18, k
lhu x21, 0x00(x18)
lhu x22, 0x02(x18)
add x24, x21, x22
sh x24, 0x08(x18)
