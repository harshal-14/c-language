; .section .text
; .global _start

_start:
    addi x1, x0, 2   # load value of 2 in x1
    addi x2, x0, 5   # load value of 5 in x2
    addi x3, x0, 0   # load value of 0 in x3
    
repeat_addition:
    # loop 5 times to x2 decrementing each time by 1
    add x3, x3, x1   # add x1 to x3
    addi x2, x2, -1  # decrement x2 by 1

    # compare if x2 is equal to 0
    bne x2, x0, repeat_addition

j .                  # infinite loop