# Initialize registers with sample values
li x1, 10       # x1 = 10
li x2, 20       # x2 = 20
li x3, 0        # Clear x3

# addi rd, rs1, imm
addi x3, x1, 5   # x3 = 10 + 5 = 15

# andi rd, rs1, imm
andi x3, x2, 15  # x3 = 20 & 15 = 4

# ori rd, rs1, imm
ori x3, x1, 5    # x3 = 10 | 5 = 15

# xori rd, rs1, imm
xori x3, x2, 5   # x3 = 20 ^ 5 = 17

# slli rd, rs1, imm
slli x3, x1, 2   # x3 = 10 << 2 = 40

# srli rd, rs1, imm
srli x3, x2, 2   # x3 = 20 >> 2 = 5

# srai rd, rs1, imm
srai x3, x2, 2   # x3 = 20 >> 2 = 5 (arithmetic shift right)

# slti rd, rs1, imm
slti x3, x1, 15  # x3 = (10 < 15) ? 1 : 0 = 1
