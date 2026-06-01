.text
main:
    lui gp, 4                  # gp = 0x4000

loop:
    lw t0, 0(gp)               # case id
    lw t1, 4(gp)               # A
    lw t2, 8(gp)               # B

    add t4, t1, t2

store_result:
    sw t4, 12(gp)
    jal zero, loop