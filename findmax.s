	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"findmax.c"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #24
	mov	ip, sp
	ldr	r4, .L5
	ldr	lr, .L5+4
	ldr	r3, [r4]
	str	r3, [sp, #20]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	mov	r1, #5
	mov	r0, sp
	str	r3, [ip]
	bl	max
	ldr	r2, [sp, #20]
	ldr	r3, [r4]
	cmp	r2, r3
	beq	.L2
	bl	__stack_chk_fail
.L2:
	mov	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
.L6:
	.align	2
.L5:
	.word	__stack_chk_guard
	.word	.LANCHOR0
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	18
	.word	3
	.word	1
	.word	0
	.word	1
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
