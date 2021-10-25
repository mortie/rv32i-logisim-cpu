.globl _start

_start:
	addi x1, x0, 10
	addi x2, x0, 20
	add x3, x1, x2
	add x3, x3, x3
	sw x3, 0(x0)
