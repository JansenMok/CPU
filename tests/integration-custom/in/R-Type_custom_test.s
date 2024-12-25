# Initialize registers with sample values
li x1, 10       # x1 = 10
li x2, 20       # x2 = 20
li x3, 0        # Clear x3

add x3, x1, x2   # x3 = 10 + 20 = 30

sub x3, x2, x1   # x3 = 20 - 10 = 10

and x3, x1, x2   # x3 = 10 & 20 = 0

or x3, x1, x2    # x3 = 10 | 20 = 30

xor x3, x1, x2   # x3 = 10 ^ 20 = 30

sll x3, x1, x2   # x3 = 10 << 20 = 10485760

srl x3, x2, x1   # x3 = 20 >> 10 = 0

sra x3, x2, x1   # x3 = 20 >> 10 = 0 (arithmetic shift right)

slt x3, x1, x2   # x3 = (10 < 20) ? 1 : 0 = 1

mul x3, x1, x2   # x3 = 10 * 20 = 200

mulh x3, x1, x2  # x3 = higher 32 bits of (10 * 20) = 0 (assuming x1 and x2 are 32-bit)

mulhu x3, x1, x2 # x3 = higher 32 bits of unsigned (10 * 20) = 0 (assuming x1 and x2 are 32-bit)

