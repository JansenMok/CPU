addi s1, x0, 1       # s1 = 1
addi s0, x0, -1      # s0 = -1
addi s2, x0, 2       # s2 = 2
addi s3, x0, 0       # s3 = 0

label_start:
    beq  x0, x0, label_beq    # Unconditional branch to test BEQ
label_bne:
    bne  x0, s1, label_bne_pass    # Branch if not equal, should pass (x0 != s1)
label_bne_fail:
    beq  x0, x0, end_fail
label_bne_pass:
    beq  x0, x0, label_blt
label_blt:
    blt  s0, s1, label_blt_pass    # Branch if less than, should pass (s0 < s1)
label_blt_fail:
    beq  x0, x0, end_fail
label_blt_pass:
    beq  x0, x0, label_bge
label_bge:
    bge  s1, s0, label_bge_pass    # Branch if greater than or equal, should pass (s1 >= s0)
label_bge_fail:
    beq  x0, x0, end_fail
label_bge_pass:
    beq  x0, x0, label_bltu
label_bltu:
    bltu x3, s1, label_bltu_pass   # Branch if less than unsigned, should pass (x3 < s1)
label_bltu_fail:
    beq  x0, x0, end_fail
label_bltu_pass:
    beq  x0, x0, label_bgeu
label_bgeu:
    bgeu s1, x3, label_bgeu_pass   # Branch if greater than or equal unsigned, should pass (s1 >= x3)
label_bgeu_fail:
    beq  x0, x0, end_fail
label_bgeu_pass:
    beq  x0, x0, label_end

label_beq:
    beq  s1, s1, label_bne   # Branch if equal, should pass (s1 == s1)

label_end:
    beq  s0, s0, end_pass    # This ensures all tests passed and we end here

end_fail:
    addi s0, x0, -2          # Indicate failure by setting s0 to -2

end_pass:
    addi s0, x0, 2           # Indicate success by setting s0 to 2

