	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"datemax.c"
	.text
	.align	2
	.global	max
	.syntax unified
	.arm
	.type	max, %function
max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ble	.L4
	mov	r3, r0
	add	r1, r0, r1, lsl #2
	ldr	r0, .L6
.L3:
	ldr	r2, [r3], #4
	cmp	r0, r2
	movlt	r0, r2
	cmp	r3, r1
	bne	.L3
	bx	lr
.L4:
	ldr	r0, .L6
	bx	lr
.L7:
	.align	2
.L6:
	.word	-99999
	.size	max, .-max
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
