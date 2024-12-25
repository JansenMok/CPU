# Initialize base address and test data
addi s0, x0, 200          # s0 = 200 (base address)
lui  s1, 0x15263          # s1 = 0x15263000
addi s1, s1, 0x748        # s1 = 0x15263748 (test data value)
sw   s1, 80(s0)           # Store word s1 at address 280 (200 + 80)
sw   s1, -20(s0)          # Store word s1 at address 180 (200 - 20)

# Test lw (load word)
lw   t0, 80(s0)           # Load word from address 280
lw   t1, -20(s0)          # Load word from address 180

# Test lh (load half-word)
lh   t0, 80(s0)           # Load half-word from address 280 (lower half)
lh   t1, 82(s0)           # Load half-word from address 282 (upper half)

# Test lb (load byte)
lb   t0, 80(s0)           # Load byte from address 280 (lowest byte)
lb   t1, 81(s0)           # Load byte from address 281
lb   t2, 82(s0)           # Load byte from address 282
lb   t3, 83(s0)           # Load byte from address 283 (highest byte)

# Initialize new values to test negative offsets
lui  s2, 0xA5A5A          # s2 = 0xA5A5A000
addi s2, s2, 0xA5A        # s2 = 0xA5A5AA5A
sw   s2, -204(s0)         # Store word s2 at address -4 (200 - 204)

# Test lw with negative offset
lw   t4, -204(s0)         # Load word from address -4 (200 - 204)

# Test lh with negative offset
lh   t5, -204(s0)         # Load half-word from address -4 (lower half)
lh   t6, -202(s0)         # Load half-word from address -2 (upper half)

# Test lb with negative offset
lb   t7, -204(s0)         # Load byte from address -4 (lowest byte)
lb   t8, -203(s0)         # Load byte from address -3
lb   t9, -202(s0)         # Load byte from address -2
lb   t10, -201(s0)        # Load byte from address -1 (highest byte)

# Test sh (store half-word)
sh   s1, 40(s0)           # Store half-word s1 at address 240 (200 + 40)
lh   t11, 40(s0)          # Load half-word from address 240 (should be lower half of s1)
lh   t12, 42(s0)          # Load half-word from address 242 (should be upper half of s1)

# Test sb (store byte)
sb   s1, 60(s0)           # Store byte s1 at address 260 (200 + 60)
lb   t13, 60(s0)          # Load byte from address 260 (should be lowest byte of s1)

