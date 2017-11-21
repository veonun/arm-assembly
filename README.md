# Introduction to ARM


##Analyze libmax.s
```sh
max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L6
.L2:
	cmp	r2, r1
	bge	.L5
	ldr	ip, [r0, r2, lsl #2]
	add	r2, r2, #1
	cmp	r3, ip
	movlt	r3, ip
	b	.L2
.L5:
	mov	r0, r3
	bx	lr
.L7:
	.align	2
.L6:
	.word	-99999
	.size	max, .-max
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
```
