	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.sfgeu	r19, r17
	l.bf	.L2
	 l.nop

	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 16(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.j	.L3
	 l.nop

.L4:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, -1
	l.sw	12(r1), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, -1
	l.sw	16(r1), r17
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.lwz	r19, 16(r1)
	l.sb	0(r19), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L3:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L4
	 l.nop

	l.j	.L5
	 l.nop

.L2:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.sfeq	r19, r17
	l.bf	.L5
	 l.nop

	l.j	.L6
	 l.nop

.L7:
	l.lwz	r17, 12(r1)
	l.addi	r19, r17, 1
	l.sw	12(r1), r19
	l.lwz	r19, 16(r1)
	l.addi	r21, r19, 1
	l.sw	16(r1), r21
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L6:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L7
	 l.nop

.L5:
	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.addi	r1, r1, -24
	l.sw	12(r1), r3
	l.sw	8(r1), r4
	l.sw	4(r1), r5
	l.sw	0(r1), r6
	l.lwz	r17, 12(r1)
	l.sw	20(r1), r17
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 0xff
	l.sw	4(r1), r17
	l.j	.L11
	 l.nop

.L13:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.sw	20(r1), r17
.L11:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L12
	 l.nop

	l.lwz	r17, 16(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 20(r1)
	l.sb	0(r17), r19
	l.lwz	r17, 20(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.sfne	r17, r19
	l.bf	.L13
	 l.nop

.L12:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L14
	 l.nop

	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.j	.L15
	 l.nop

.L14:
	l.movhi	r17, hi(0)
.L15:
	l.or	r11, r17, r17
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 0xff
	l.sw	4(r1), r17
	l.j	.L18
	 l.nop

.L20:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L18:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L19
	 l.nop

	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.sfne	r17, r19
	l.bf	.L20
	 l.nop

.L19:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L21
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L23
	 l.nop

.L21:
	l.movhi	r17, hi(0)
.L23:
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.j	.L26
	 l.nop

.L28:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
.L26:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L27
	 l.nop

	l.lwz	r17, 16(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L28
	 l.nop

.L27:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L29
	 l.nop

	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sub	r17, r19, r17
	l.j	.L31
	 l.nop

.L29:
	l.movhi	r17, hi(0)
.L31:
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.j	.L34
	 l.nop

.L35:
	l.lwz	r19, 12(r1)
	l.addi	r17, r19, 1
	l.sw	12(r1), r17
	l.lwz	r17, 16(r1)
	l.addi	r21, r17, 1
	l.sw	16(r1), r21
	l.lbz	r19, 0(r19)
	l.sb	0(r17), r19
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L34:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L35
	 l.nop

	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 0xff
	l.sw	4(r1), r17
	l.j	.L39
	 l.nop

.L41:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.sfne	r17, r19
	l.bf	.L39
	 l.nop

	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.j	.L40
	 l.nop

.L39:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L41
	 l.nop

	l.movhi	r17, hi(0)
.L40:
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.j	.L44
	 l.nop

.L45:
	l.lwz	r17, 4(r1)
	l.andi	r19, r17, 0xff
	l.lwz	r17, 12(r1)
	l.sb	0(r17), r19
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
.L44:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L45
	 l.nop

	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.j	.L49
	 l.nop

.L50:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L49:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.lwz	r19, 4(r1)
	l.sb	0(r19), r17
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L50
	 l.nop

	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 0xff
	l.sw	0(r1), r17
	l.j	.L54
	 l.nop

.L56:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L54:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L55
	 l.nop

	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r19
	l.bf	.L56
	 l.nop

.L55:
	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.addi	r1, r1, -4
	l.or	r19, r3, r3
	l.sw	0(r1), r4
.L62:
	l.lbz	r17, 0(r19)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r21
	l.bf	.L60
	 l.nop

	l.or	r17, r19, r19
	l.j	.L61
	 l.nop

.L60:
	l.or	r17, r19, r19
	l.addi	r19, r17, 1
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L62
	 l.nop

	l.movhi	r17, hi(0)
.L61:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.j	.L65
	 l.nop

.L67:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L65:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r19, r17, r21
	l.sra	r19, r19, r21
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sfne	r19, r17
	l.bf	.L66
	 l.nop

	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L67
	 l.nop

.L66:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sub	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	4(r1), r17
	l.j	.L71
	 l.nop

.L72:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L71:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L72
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L78
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L77
	 l.nop

.L80:
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L78:
	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L79
	 l.nop

	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L79
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L79
	 l.nop

	l.lwz	r17, 16(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L80
	 l.nop

.L79:
	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sub	r17, r19, r17
.L77:
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.j	.L83
	 l.nop

.L84:
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.lwz	r19, 12(r1)
	l.sb	0(r19), r17
	l.lwz	r17, 12(r1)
	l.addi	r19, r17, 1
	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 2
	l.sw	12(r1), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 2
	l.sw	16(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -2
	l.sw	0(r1), r17
.L83:
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 1
	l.sfgts	r19, r17
	l.bf	.L84
	 l.nop

	l.nop
	l.nop
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.ori	r17, r17, 32
	l.addi	r19, r17, -97
	l.ori	r17, r0, 25
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L89
	 l.nop

	l.movhi	r17, hi(0)
.L89:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 127
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L93
	 l.nop

	l.movhi	r17, hi(0)
.L93:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 32
	l.sfeq	r19, r17
	l.bf	.L95
	 l.nop

	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 9
	l.sfne	r19, r17
	l.bf	.L96
	 l.nop

.L95:
	l.ori	r17, r0, 1
	l.j	.L98
	 l.nop

.L96:
	l.movhi	r17, hi(0)
.L98:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L101
	 l.nop

	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 127
	l.sfne	r19, r17
	l.bf	.L102
	 l.nop

.L101:
	l.ori	r17, r0, 1
	l.j	.L104
	 l.nop

.L102:
	l.movhi	r17, hi(0)
.L104:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L109
	 l.nop

	l.movhi	r17, hi(0)
.L109:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -33
	l.ori	r17, r0, 93
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L113
	 l.nop

	l.movhi	r17, hi(0)
.L113:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -97
	l.ori	r17, r0, 25
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L117
	 l.nop

	l.movhi	r17, hi(0)
.L117:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -32
	l.ori	r17, r0, 94
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L121
	 l.nop

	l.movhi	r17, hi(0)
.L121:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 32
	l.sfeq	r19, r17
	l.bf	.L123
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -9
	l.ori	r17, r0, 4
	l.sfgtu	r19, r17
	l.bf	.L124
	 l.nop

.L123:
	l.ori	r17, r0, 1
	l.j	.L126
	 l.nop

.L124:
	l.movhi	r17, hi(0)
.L126:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -65
	l.ori	r17, r0, 25
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L131
	 l.nop

	l.movhi	r17, hi(0)
.L131:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L133
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -127
	l.ori	r17, r0, 32
	l.sfleu	r19, r17
	l.bf	.L133
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -8232
	l.ori	r17, r0, 1
	l.sfleu	r19, r17
	l.bf	.L133
	 l.nop

	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r19, r19, r17
	l.ori	r17, r0, 2
	l.sfgtu	r19, r17
	l.bf	.L134
	 l.nop

.L133:
	l.ori	r17, r0, 1
	l.j	.L136
	 l.nop

.L134:
	l.movhi	r17, hi(0)
.L136:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L141
	 l.nop

	l.movhi	r17, hi(0)
.L141:
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 254
	l.sfgtu	r19, r17
	l.bf	.L143
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.andi	r19, r17, 127
	l.ori	r17, r0, 32
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L150
	 l.nop

	l.movhi	r17, hi(0)
.L150:
	l.andi	r17, r17, 0xff
	l.j	.L144
	 l.nop

.L143:
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 8231
	l.sfleu	r19, r17
	l.bf	.L145
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L145
	 l.nop

	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r19, r19, r17
	l.ori	r17, r0, 8184
	l.sfgtu	r19, r17
	l.bf	.L146
	 l.nop

.L145:
	l.ori	r17, r0, 1
	l.j	.L144
	 l.nop

.L146:
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r19, r19, r17
	l.movhi	r17, hi(1048576)
	l.ori	r17, r17, 3
	l.sfgtu	r19, r17
	l.bf	.L147
	 l.nop

	l.lwz	r17, 0(r1)
	l.andi	r19, r17, 65534
	l.ori	r17, r0, 65534
	l.sfne	r19, r17
	l.bf	.L148
	 l.nop

.L147:
	l.movhi	r17, hi(0)
	l.j	.L144
	 l.nop

.L148:
	l.ori	r17, r0, 1
.L144:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L152
	 l.nop

	l.lwz	r17, 0(r1)
	l.ori	r17, r17, 32
	l.addi	r19, r17, -97
	l.ori	r17, r0, 5
	l.sfgtu	r19, r17
	l.bf	.L153
	 l.nop

.L152:
	l.ori	r17, r0, 1
	l.j	.L155
	 l.nop

.L153:
	l.movhi	r17, hi(0)
.L155:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 127
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	toascii, .-toascii
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.long	0
	.section	.text
	.align 4
	.global	fdim
	.type	fdim, @function
fdim:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L172
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L163
	 l.nop

.L172:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L173
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L163
	 l.nop

.L173:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L174
	 l.nop

	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__subdf3
	 l.nop

	l.or	r21, r11, r11
	l.or	r23, r12, r12
	l.or	r17, r21, r21
	l.or	r19, r23, r23
	l.j	.L163
	 l.nop

.L174:
	l.movhi	r21, ha(.LC0)
	l.lwz	r17, lo(.LC0)(r21)
	l.addi	r21, r21, lo(.LC0)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
.L163:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fdim, .-fdim
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	0
	.section	.text
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r4, 4(r1)
	l.lwz	r3, 4(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L188
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L179
	 l.nop

.L188:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L189
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L179
	 l.nop

.L189:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L190
	 l.nop

	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__subsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.j	.L179
	 l.nop

.L190:
	l.movhi	r19, ha(.LC1)
	l.lwz	r17, lo(.LC1)(r19)
.L179:
	l.or	r19, r17, r17
	l.or	r11, r19, r19
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L207
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L195
	 l.nop

.L207:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L208
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L195
	 l.nop

.L208:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L198
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L199
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L195
	 l.nop

.L199:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L195
	 l.nop

.L198:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L209
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L195
	 l.nop

.L209:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
.L195:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r4, 4(r1)
	l.lwz	r3, 4(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L226
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L214
	 l.nop

.L226:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L227
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L214
	 l.nop

.L227:
	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L217
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L218
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L214
	 l.nop

.L218:
	l.lwz	r17, 4(r1)
	l.j	.L214
	 l.nop

.L217:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L228
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L214
	 l.nop

.L228:
	l.lwz	r17, 4(r1)
.L214:
	l.or	r19, r17, r17
	l.or	r11, r19, r19
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L245
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L233
	 l.nop

.L245:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L246
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L233
	 l.nop

.L246:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L236
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L237
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L233
	 l.nop

.L237:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L233
	 l.nop

.L236:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L247
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L233
	 l.nop

.L247:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
.L233:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L264
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L252
	 l.nop

.L264:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L265
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L252
	 l.nop

.L265:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L255
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L256
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L252
	 l.nop

.L256:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L252
	 l.nop

.L255:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L266
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L252
	 l.nop

.L266:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
.L252:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r4, 4(r1)
	l.lwz	r3, 4(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L283
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L271
	 l.nop

.L283:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L284
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L271
	 l.nop

.L284:
	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L274
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L275
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L271
	 l.nop

.L275:
	l.lwz	r17, 0(r1)
	l.j	.L271
	 l.nop

.L274:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L285
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L271
	 l.nop

.L285:
	l.lwz	r17, 0(r1)
.L271:
	l.or	r19, r17, r17
	l.or	r11, r19, r19
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bnf	.L302
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L290
	 l.nop

.L302:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L303
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L290
	 l.nop

.L303:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L293
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L294
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L290
	 l.nop

.L294:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L290
	 l.nop

.L293:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L304
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L290
	 l.nop

.L304:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
.L290:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.addi	r1, r1, -12
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	4(r1), r17
	l.movhi	r17, ha(s.0)
	l.addi	r17, r17, lo(s.0)
	l.sw	8(r1), r17
	l.j	.L307
	 l.nop

.L308:
	l.lwz	r17, 4(r1)
	l.andi	r19, r17, 63
	l.movhi	r17, ha(digits)
	l.addi	r17, r17, lo(digits)
	l.add	r17, r19, r17
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.lwz	r19, 8(r1)
	l.sb	0(r19), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 6
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L307:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L308
	 l.nop

	l.lwz	r17, 8(r1)
	l.sb	0(r17), r0
	l.movhi	r17, ha(s.0)
	l.addi	r17, r17, lo(s.0)
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r21, 0(r1)
	l.addi	r21, r21, -1
	l.or	r19, r21, r21
	l.movhi	r17, hi(0)
	l.movhi	r21, ha(seed)
	l.or	r23, r17, r17
	l.sw	lo(seed)(r21), r23
	l.addi	r21, r21, lo(seed)
	l.addi	r21, r21, 4
	l.or	r17, r19, r19
	l.sw	0(r21), r17
	l.nop
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -52
	l.sw	16(r1), r16
	l.sw	20(r1), r18
	l.sw	24(r1), r20
	l.sw	28(r1), r22
	l.sw	32(r1), r24
	l.sw	36(r1), r26
	l.sw	40(r1), r28
	l.sw	44(r1), r30
	l.sw	48(r1), r9
	l.movhi	r21, ha(seed)
	l.lwz	r17, lo(seed)(r21)
	l.addi	r21, r21, lo(seed)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
	l.movhi	r5, hi(1481703424)
	l.ori	r5, r5, 62509
	l.movhi	r6, hi(1284833280)
	l.ori	r6, r6, 32557
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__muldi3
	 l.nop

	l.sw	8(r1), r11
	l.sw	12(r1), r12
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.movhi	r20, hi(0)
	l.ori	r22, r0, 1
	l.add	r19, r18, r22
	l.sfltu	r19, r18
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L316
	 l.nop

	l.movhi	r21, hi(0)
.L316:
	l.add	r17, r16, r20
	l.add	r21, r21, r17
	l.or	r17, r21, r21
	l.sw	0(r1), r17
	l.sw	4(r1), r19
	l.movhi	r17, ha(seed)
	l.lwz	r21, 0(r1)
	l.lwz	r23, 4(r1)
	l.or	r19, r21, r21
	l.sw	lo(seed)(r17), r19
	l.addi	r17, r17, lo(seed)
	l.addi	r17, r17, 4
	l.or	r19, r23, r23
	l.sw	0(r17), r19
	l.movhi	r17, ha(seed)
	l.lwz	r24, lo(seed)(r17)
	l.addi	r17, r17, lo(seed)
	l.addi	r17, r17, 4
	l.lwz	r26, 0(r17)
	l.ori	r17, r0, 1
	l.srl	r30, r24, r17
	l.movhi	r28, hi(0)
	l.or	r17, r30, r30
	l.or	r11, r17, r17
	l.lwz	r16, 16(r1)
	l.lwz	r18, 20(r1)
	l.lwz	r20, 24(r1)
	l.lwz	r22, 28(r1)
	l.lwz	r24, 32(r1)
	l.lwz	r26, 36(r1)
	l.lwz	r28, 40(r1)
	l.lwz	r30, 44(r1)
	l.lwz	r9, 48(r1)
	l.addi	r1, r1, 52
	l.jr	r9
	 l.nop

	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.addi	r1, r1, -16
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L318
	 l.nop

	l.lwz	r17, 12(r1)
	l.sw	4(r17), r0
	l.lwz	r17, 12(r1)
	l.lwz	r19, 4(r17)
	l.lwz	r17, 12(r1)
	l.sw	0(r17), r19
	l.j	.L317
	 l.nop

.L318:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 12(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 12(r1)
	l.lwz	r19, 8(r1)
	l.sw	4(r17), r19
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 12(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L317
	 l.nop

	l.lwz	r17, 12(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 12(r1)
	l.sw	4(r17), r19
.L317:
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L322
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 4(r1)
	l.lwz	r19, 4(r19)
	l.sw	4(r17), r19
.L322:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 4(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L324
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 4(r17)
	l.lwz	r19, 4(r1)
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L324:
	l.nop
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -44
	l.sw	36(r1), r16
	l.sw	40(r1), r9
	l.sw	16(r1), r3
	l.sw	12(r1), r4
	l.sw	8(r1), r5
	l.sw	4(r1), r6
	l.sw	0(r1), r7
	l.lwz	r16, 4(r1)
	l.or	r25, r16, r16
	l.addi	r25, r16, -1
	l.sw	28(r1), r25
	l.or	r23, r16, r16
	l.movhi	r21, hi(0)
	l.ori	r25, r0, 29
	l.srl	r25, r16, r25
	l.ori	r27, r0, 3
	l.sll	r17, r21, r27
	l.or	r17, r25, r17
	l.sll	r19, r16, r27
	l.lwz	r17, 12(r1)
	l.sw	24(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.sw	20(r1), r17
	l.sw	32(r1), r0
	l.j	.L327
	 l.nop

.L330:
	l.lwz	r17, 32(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 24(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.or	r4, r19, r19
	l.lwz	r3, 16(r1)
	l.jalr	r17
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L328
	 l.nop

	l.lwz	r17, 32(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 24(r1)
	l.add	r17, r19, r17
	l.j	.L329
	 l.nop

.L328:
	l.lwz	r17, 32(r1)
	l.addi	r17, r17, 1
	l.sw	32(r1), r17
.L327:
	l.lwz	r19, 32(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L330
	 l.nop

	l.lwz	r17, 20(r1)
	l.addi	r19, r17, 1
	l.lwz	r17, 8(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 20(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 24(r1)
	l.add	r17, r19, r17
	l.lwz	r5, 4(r1)
	l.lwz	r4, 16(r1)
	l.or	r3, r17, r17
	l.jal	memcpy
	 l.nop

	l.or	r17, r11, r11
.L329:
	l.or	r11, r17, r17
	l.lwz	r16, 36(r1)
	l.lwz	r9, 40(r1)
	l.addi	r1, r1, 44
	l.jr	r9
	 l.nop

	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -44
	l.sw	36(r1), r16
	l.sw	40(r1), r9
	l.sw	16(r1), r3
	l.sw	12(r1), r4
	l.sw	8(r1), r5
	l.sw	4(r1), r6
	l.sw	0(r1), r7
	l.lwz	r16, 4(r1)
	l.or	r25, r16, r16
	l.addi	r25, r16, -1
	l.sw	28(r1), r25
	l.or	r23, r16, r16
	l.movhi	r21, hi(0)
	l.ori	r25, r0, 29
	l.srl	r25, r16, r25
	l.ori	r27, r0, 3
	l.sll	r17, r21, r27
	l.or	r17, r25, r17
	l.sll	r19, r16, r27
	l.lwz	r17, 12(r1)
	l.sw	24(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.sw	20(r1), r17
	l.sw	32(r1), r0
	l.j	.L333
	 l.nop

.L336:
	l.lwz	r17, 32(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 24(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.or	r4, r19, r19
	l.lwz	r3, 16(r1)
	l.jalr	r17
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L334
	 l.nop

	l.lwz	r17, 32(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 24(r1)
	l.add	r17, r19, r17
	l.j	.L335
	 l.nop

.L334:
	l.lwz	r17, 32(r1)
	l.addi	r17, r17, 1
	l.sw	32(r1), r17
.L333:
	l.lwz	r19, 32(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L336
	 l.nop

	l.movhi	r17, hi(0)
.L335:
	l.or	r11, r17, r17
	l.lwz	r16, 36(r1)
	l.lwz	r9, 40(r1)
	l.addi	r1, r1, 44
	l.jr	r9
	 l.nop

	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.xori	r19, r0, -1
	l.sfgts	r17, r19
	l.bf	.L339
	 l.nop

	l.sub	r17, r0, r17
.L339:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.addi	r1, r1, -20
	l.sw	12(r1), r16
	l.sw	16(r1), r9
	l.sw	0(r1), r3
	l.sw	8(r1), r0
	l.sw	4(r1), r0
	l.j	.L343
	 l.nop

.L344:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L343:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r16, r0, 24
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.or	r3, r17, r17
	l.jal	isspace
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L344
	 l.nop

	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L345
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L347
	 l.nop

	l.ori	r17, r0, 1
	l.sw	4(r1), r17
.L345:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.j	.L347
	 l.nop

.L348:
	l.lwz	r19, 8(r1)
	l.or	r17, r19, r19
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.add	r17, r17, r19
	l.add	r17, r17, r17
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, 1
	l.sw	0(r1), r19
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r17, r17, -48
	l.sub	r17, r21, r17
	l.sw	8(r1), r17
.L347:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L348
	 l.nop

	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L349
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L351
	 l.nop

.L349:
	l.lwz	r17, 8(r1)
.L351:
	l.or	r11, r17, r17
	l.lwz	r16, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.addi	r1, r1, -20
	l.sw	12(r1), r16
	l.sw	16(r1), r9
	l.sw	0(r1), r3
	l.sw	8(r1), r0
	l.sw	4(r1), r0
	l.j	.L354
	 l.nop

.L355:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L354:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r16, r0, 24
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.or	r3, r17, r17
	l.jal	isspace
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L355
	 l.nop

	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L356
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L358
	 l.nop

	l.ori	r17, r0, 1
	l.sw	4(r1), r17
.L356:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.j	.L358
	 l.nop

.L359:
	l.lwz	r19, 8(r1)
	l.or	r17, r19, r19
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.add	r17, r17, r19
	l.add	r17, r17, r17
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, 1
	l.sw	0(r1), r19
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r17, r17, -48
	l.sub	r17, r21, r17
	l.sw	8(r1), r17
.L358:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L359
	 l.nop

	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L360
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L362
	 l.nop

.L360:
	l.lwz	r17, 8(r1)
.L362:
	l.or	r11, r17, r17
	l.lwz	r16, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.addi	r1, r1, -96
	l.sw	56(r1), r14
	l.sw	60(r1), r16
	l.sw	64(r1), r18
	l.sw	68(r1), r20
	l.sw	72(r1), r22
	l.sw	76(r1), r24
	l.sw	80(r1), r26
	l.sw	84(r1), r28
	l.sw	88(r1), r30
	l.sw	92(r1), r9
	l.sw	40(r1), r3
	l.sw	48(r1), r0
	l.sw	52(r1), r0
	l.sw	44(r1), r0
	l.j	.L365
	 l.nop

.L366:
	l.lwz	r17, 40(r1)
	l.addi	r17, r17, 1
	l.sw	40(r1), r17
.L365:
	l.lwz	r17, 40(r1)
	l.lbz	r17, 0(r17)
	l.ori	r14, r0, 24
	l.sll	r17, r17, r14
	l.sra	r17, r17, r14
	l.or	r3, r17, r17
	l.jal	isspace
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L366
	 l.nop

	l.lwz	r17, 40(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r14
	l.sra	r17, r17, r14
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L367
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L369
	 l.nop

	l.ori	r17, r0, 1
	l.sw	44(r1), r17
.L367:
	l.lwz	r17, 40(r1)
	l.addi	r17, r17, 1
	l.sw	40(r1), r17
	l.j	.L369
	 l.nop

.L370:
	l.lwz	r20, 48(r1)
	l.lwz	r22, 52(r1)
	l.or	r16, r20, r20
	l.or	r18, r22, r22
	l.ori	r17, r0, 30
	l.srl	r17, r18, r17
	l.ori	r19, r0, 2
	l.sll	r24, r16, r19
	l.or	r24, r17, r24
	l.sll	r26, r18, r19
	l.or	r16, r24, r24
	l.or	r18, r26, r26
	l.add	r19, r18, r22
	l.sfltu	r19, r18
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L375
	 l.nop

	l.movhi	r21, hi(0)
.L375:
	l.add	r17, r16, r20
	l.add	r21, r21, r17
	l.or	r17, r21, r21
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.add	r19, r18, r18
	l.sfltu	r19, r18
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L376
	 l.nop

	l.movhi	r21, hi(0)
.L376:
	l.add	r17, r16, r16
	l.add	r21, r21, r17
	l.or	r17, r21, r21
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.sw	8(r1), r16
	l.sw	12(r1), r18
	l.lwz	r17, 40(r1)
	l.addi	r19, r17, 1
	l.sw	40(r1), r19
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r17, r17, -48
	l.sw	20(r1), r17
	l.ori	r19, r0, 31
	l.sra	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r23, 8(r1)
	l.lwz	r25, 12(r1)
	l.or	r21, r25, r25
	l.lwz	r27, 16(r1)
	l.lwz	r29, 20(r1)
	l.or	r31, r29, r29
	l.sub	r19, r21, r31
	l.or	r21, r25, r25
	l.sfgtu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L377
	 l.nop

	l.movhi	r21, hi(0)
.L377:
	l.or	r25, r27, r27
	l.sub	r17, r23, r25
	l.sub	r21, r17, r21
	l.or	r17, r21, r21
	l.or	r21, r17, r17
	l.sw	48(r1), r21
	l.or	r17, r19, r19
	l.sw	52(r1), r17
.L369:
	l.lwz	r17, 40(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L370
	 l.nop

	l.lwz	r17, 44(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L371
	 l.nop

	l.sw	32(r1), r0
	l.sw	36(r1), r0
	l.lwz	r28, 48(r1)
	l.lwz	r30, 52(r1)
	l.lwz	r23, 32(r1)
	l.lwz	r25, 36(r1)
	l.or	r21, r25, r25
	l.sub	r19, r21, r30
	l.or	r21, r25, r25
	l.sfgtu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L378
	 l.nop

	l.movhi	r21, hi(0)
.L378:
	l.sub	r17, r23, r28
	l.sub	r21, r17, r21
	l.or	r17, r21, r21
	l.sw	0(r1), r17
	l.sw	4(r1), r19
	l.j	.L373
	 l.nop

.L371:
	l.lwz	r17, 48(r1)
	l.sw	0(r1), r17
	l.lwz	r17, 52(r1)
	l.sw	4(r1), r17
.L373:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.sw	24(r1), r21
	l.or	r17, r19, r19
	l.sw	28(r1), r17
	l.lwz	r17, 24(r1)
	l.lwz	r19, 28(r1)
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 56(r1)
	l.lwz	r16, 60(r1)
	l.lwz	r18, 64(r1)
	l.lwz	r20, 68(r1)
	l.lwz	r22, 72(r1)
	l.lwz	r24, 76(r1)
	l.lwz	r26, 80(r1)
	l.lwz	r28, 84(r1)
	l.lwz	r30, 88(r1)
	l.lwz	r9, 92(r1)
	l.addi	r1, r1, 96
	l.jr	r9
	 l.nop

	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	l.addi	r1, r1, -36
	l.sw	28(r1), r16
	l.sw	32(r1), r9
	l.sw	16(r1), r3
	l.sw	12(r1), r4
	l.sw	8(r1), r5
	l.sw	4(r1), r6
	l.sw	0(r1), r7
	l.j	.L380
	 l.nop

.L385:
	l.lwz	r17, 8(r1)
	l.ori	r16, r0, 1
	l.srl	r19, r17, r16
	l.lwz	r17, 4(r1)
	l.mul	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.add	r17, r19, r17
	l.sw	24(r1), r17
	l.lwz	r17, 0(r1)
	l.lwz	r4, 24(r1)
	l.lwz	r3, 16(r1)
	l.jalr	r17
	 l.nop

	l.sw	20(r1), r11
	l.lwz	r19, 20(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L381
	 l.nop

	l.lwz	r17, 8(r1)
	l.srl	r17, r17, r16
	l.sw	8(r1), r17
	l.j	.L380
	 l.nop

.L381:
	l.lwz	r19, 20(r1)
	l.ori	r17, r0, 1
	l.sflts	r19, r17
	l.bf	.L383
	 l.nop

	l.lwz	r19, 24(r1)
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.lwz	r19, 8(r1)
	l.sub	r17, r19, r17
	l.addi	r17, r17, -1
	l.sw	8(r1), r17
	l.j	.L380
	 l.nop

.L383:
	l.lwz	r17, 24(r1)
	l.j	.L384
	 l.nop

.L380:
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L385
	 l.nop

	l.movhi	r17, hi(0)
.L384:
	l.or	r11, r17, r17
	l.lwz	r16, 28(r1)
	l.lwz	r9, 32(r1)
	l.addi	r1, r1, 36
	l.jr	r9
	 l.nop

	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	l.addi	r1, r1, -44
	l.sw	40(r1), r9
	l.sw	20(r1), r3
	l.sw	16(r1), r4
	l.sw	12(r1), r5
	l.sw	8(r1), r6
	l.sw	4(r1), r7
	l.sw	0(r1), r8
	l.lwz	r17, 16(r1)
	l.sw	36(r1), r17
	l.lwz	r17, 12(r1)
	l.sw	32(r1), r17
	l.j	.L388
	 l.nop

.L392:
	l.lwz	r17, 32(r1)
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.or	r19, r17, r17
	l.lwz	r17, 8(r1)
	l.mul	r17, r19, r17
	l.lwz	r19, 36(r1)
	l.add	r17, r19, r17
	l.sw	28(r1), r17
	l.lwz	r17, 4(r1)
	l.lwz	r5, 0(r1)
	l.lwz	r4, 28(r1)
	l.lwz	r3, 20(r1)
	l.jalr	r17
	 l.nop

	l.sw	24(r1), r11
	l.lwz	r17, 24(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L389
	 l.nop

	l.lwz	r17, 28(r1)
	l.j	.L390
	 l.nop

.L389:
	l.lwz	r19, 24(r1)
	l.ori	r17, r0, 1
	l.sflts	r19, r17
	l.bf	.L391
	 l.nop

	l.lwz	r19, 28(r1)
	l.lwz	r17, 8(r1)
	l.add	r17, r19, r17
	l.sw	36(r1), r17
	l.lwz	r17, 32(r1)
	l.addi	r17, r17, -1
	l.sw	32(r1), r17
.L391:
	l.lwz	r17, 32(r1)
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	32(r1), r17
.L388:
	l.lwz	r17, 32(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L392
	 l.nop

	l.movhi	r17, hi(0)
.L390:
	l.or	r11, r17, r17
	l.lwz	r9, 40(r1)
	l.addi	r1, r1, 44
	l.jr	r9
	 l.nop

	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	l.addi	r1, r1, -12
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.div	r21, r19, r17
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r1)
	l.div	r23, r17, r19
	l.lwz	r19, 0(r1)
	l.mul	r19, r23, r19
	l.sub	r19, r17, r19
	l.lwz	r17, 8(r1)
	l.sw	0(r17), r21
	l.lwz	r17, 8(r1)
	l.sw	4(r17), r19
	l.lwz	r11, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.xori	r21, r0, -1
	l.sfgts	r17, r21
	l.bf	.L398
	 l.nop

	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r23, r27, r19
	l.sfgtu	r23, r27
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L402
	 l.nop

	l.movhi	r15, hi(0)
.L402:
	l.sub	r21, r25, r17
	l.sub	r25, r21, r15
	l.or	r21, r25, r25
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L398:
	l.or	r12, r17, r17
	l.or	r13, r19, r19
	l.or	r29, r12, r12
	l.or	r31, r13, r13
	l.or	r11, r29, r29
	l.or	r12, r31, r31
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	l.addi	r1, r1, -80
	l.sw	44(r1), r16
	l.sw	48(r1), r18
	l.sw	52(r1), r20
	l.sw	56(r1), r22
	l.sw	60(r1), r24
	l.sw	64(r1), r26
	l.sw	68(r1), r28
	l.sw	72(r1), r30
	l.sw	76(r1), r9
	l.sw	24(r1), r3
	l.sw	16(r1), r4
	l.sw	20(r1), r5
	l.sw	8(r1), r6
	l.sw	12(r1), r7
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.lwz	r3, 16(r1)
	l.lwz	r4, 20(r1)
	l.jal	__divdi3
	 l.nop

	l.sw	0(r1), r11
	l.sw	4(r1), r12
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r24, r17, r17
	l.or	r26, r19, r19
	l.lwz	r16, 16(r1)
	l.lwz	r18, 20(r1)
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__moddi3
	 l.nop

	l.or	r28, r11, r11
	l.or	r30, r12, r12
	l.or	r20, r28, r28
	l.or	r22, r30, r30
	l.lwz	r17, 24(r1)
	l.or	r19, r24, r24
	l.sw	0(r17), r19
	l.or	r19, r26, r26
	l.sw	4(r17), r19
	l.lwz	r17, 24(r1)
	l.or	r19, r20, r20
	l.sw	8(r17), r19
	l.or	r19, r22, r22
	l.sw	12(r17), r19
	l.lwz	r11, 24(r1)
	l.lwz	r16, 44(r1)
	l.lwz	r18, 48(r1)
	l.lwz	r20, 52(r1)
	l.lwz	r22, 56(r1)
	l.lwz	r24, 60(r1)
	l.lwz	r26, 64(r1)
	l.lwz	r28, 68(r1)
	l.lwz	r30, 72(r1)
	l.lwz	r9, 76(r1)
	l.addi	r1, r1, 80
	l.jr	r9
	 l.nop

	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.xori	r19, r0, -1
	l.sfgts	r17, r19
	l.bf	.L407
	 l.nop

	l.sub	r17, r0, r17
.L407:
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	l.addi	r1, r1, -12
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.div	r21, r19, r17
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r1)
	l.div	r23, r17, r19
	l.lwz	r19, 0(r1)
	l.mul	r19, r23, r19
	l.sub	r19, r17, r19
	l.lwz	r17, 8(r1)
	l.sw	0(r17), r21
	l.lwz	r17, 8(r1)
	l.sw	4(r17), r19
	l.lwz	r11, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.xori	r21, r0, -1
	l.sfgts	r17, r21
	l.bf	.L414
	 l.nop

	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r23, r27, r19
	l.sfgtu	r23, r27
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L418
	 l.nop

	l.movhi	r15, hi(0)
.L418:
	l.sub	r21, r25, r17
	l.sub	r25, r21, r15
	l.or	r21, r25, r25
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L414:
	l.or	r12, r17, r17
	l.or	r13, r19, r19
	l.or	r29, r12, r12
	l.or	r31, r13, r13
	l.or	r11, r29, r29
	l.or	r12, r31, r31
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	l.addi	r1, r1, -80
	l.sw	44(r1), r16
	l.sw	48(r1), r18
	l.sw	52(r1), r20
	l.sw	56(r1), r22
	l.sw	60(r1), r24
	l.sw	64(r1), r26
	l.sw	68(r1), r28
	l.sw	72(r1), r30
	l.sw	76(r1), r9
	l.sw	24(r1), r3
	l.sw	16(r1), r4
	l.sw	20(r1), r5
	l.sw	8(r1), r6
	l.sw	12(r1), r7
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.lwz	r3, 16(r1)
	l.lwz	r4, 20(r1)
	l.jal	__divdi3
	 l.nop

	l.sw	0(r1), r11
	l.sw	4(r1), r12
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r24, r17, r17
	l.or	r26, r19, r19
	l.lwz	r16, 16(r1)
	l.lwz	r18, 20(r1)
	l.lwz	r5, 8(r1)
	l.lwz	r6, 12(r1)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__moddi3
	 l.nop

	l.or	r28, r11, r11
	l.or	r30, r12, r12
	l.or	r20, r28, r28
	l.or	r22, r30, r30
	l.lwz	r17, 24(r1)
	l.or	r19, r24, r24
	l.sw	0(r17), r19
	l.or	r19, r26, r26
	l.sw	4(r17), r19
	l.lwz	r17, 24(r1)
	l.or	r19, r20, r20
	l.sw	8(r17), r19
	l.or	r19, r22, r22
	l.sw	12(r17), r19
	l.lwz	r11, 24(r1)
	l.lwz	r16, 44(r1)
	l.lwz	r18, 48(r1)
	l.lwz	r20, 52(r1)
	l.lwz	r22, 56(r1)
	l.lwz	r24, 60(r1)
	l.lwz	r26, 64(r1)
	l.lwz	r28, 68(r1)
	l.lwz	r30, 72(r1)
	l.lwz	r9, 76(r1)
	l.addi	r1, r1, 80
	l.jr	r9
	 l.nop

	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.j	.L423
	 l.nop

.L425:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L423:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L424
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 0(r1)
	l.sfne	r19, r17
	l.bf	.L425
	 l.nop

.L424:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L426
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L428
	 l.nop

.L426:
	l.movhi	r17, hi(0)
.L428:
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.j	.L431
	 l.nop

.L433:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 4
	l.sw	0(r1), r17
.L431:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfne	r19, r17
	l.bf	.L432
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L432
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L433
	 l.nop

.L432:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L434
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L438
	 l.nop

	l.movhi	r17, hi(0)
.L438:
	l.andi	r17, r17, 0xff
	l.j	.L436
	 l.nop

.L434:
	l.xori	r17, r0, -1
.L436:
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 4(r1)
	l.sw	8(r1), r17
	l.nop
.L440:
	l.lwz	r19, 0(r1)
	l.addi	r17, r19, 4
	l.sw	0(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r21, r17, 4
	l.sw	4(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L440
	 l.nop

	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	4(r1), r17
	l.j	.L444
	 l.nop

.L445:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 4
	l.sw	0(r1), r17
.L444:
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L445
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.ori	r19, r0, 2
	l.sra	r17, r17, r19
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.addi	r1, r1, -12
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.j	.L449
	 l.nop

.L451:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L449:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L450
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfne	r19, r17
	l.bf	.L450
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L450
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L451
	 l.nop

.L450:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L452
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L453
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L458
	 l.nop

	l.movhi	r17, hi(0)
.L458:
	l.andi	r17, r17, 0xff
	l.j	.L456
	 l.nop

.L453:
	l.xori	r17, r0, -1
	l.j	.L456
	 l.nop

.L452:
	l.movhi	r17, hi(0)
.L456:
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.addi	r1, r1, -12
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.j	.L460
	 l.nop

.L462:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
.L460:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L461
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 4(r1)
	l.sfne	r19, r17
	l.bf	.L462
	 l.nop

.L461:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L463
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L465
	 l.nop

.L463:
	l.movhi	r17, hi(0)
.L465:
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.addi	r1, r1, -12
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.j	.L468
	 l.nop

.L470:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L468:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L469
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L470
	 l.nop

.L469:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L471
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L472
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L477
	 l.nop

	l.movhi	r17, hi(0)
.L477:
	l.andi	r17, r17, 0xff
	l.j	.L475
	 l.nop

.L472:
	l.xori	r17, r0, -1
	l.j	.L475
	 l.nop

.L471:
	l.movhi	r17, hi(0)
.L475:
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.j	.L479
	 l.nop

.L480:
	l.lwz	r19, 4(r1)
	l.addi	r17, r19, 4
	l.sw	4(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r21, r17, 4
	l.sw	8(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L479:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L480
	 l.nop

	l.lwz	r17, 12(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfne	r19, r17
	l.bf	.L484
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L485
	 l.nop

.L484:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.sfgeu	r19, r17
	l.bf	.L490
	 l.nop

	l.j	.L487
	 l.nop

.L488:
	l.lwz	r17, 0(r1)
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.lwz	r19, 4(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.sll	r17, r17, r21
	l.lwz	r21, 8(r1)
	l.add	r17, r21, r17
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L487:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L488
	 l.nop

	l.j	.L489
	 l.nop

.L491:
	l.lwz	r19, 4(r1)
	l.addi	r17, r19, 4
	l.sw	4(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r21, r17, 4
	l.sw	8(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L490:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L491
	 l.nop

.L489:
	l.lwz	r17, 12(r1)
.L485:
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.j	.L494
	 l.nop

.L495:
	l.lwz	r17, 8(r1)
	l.addi	r19, r17, 4
	l.sw	8(r1), r19
	l.lwz	r19, 4(r1)
	l.sw	0(r17), r19
.L494:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L495
	 l.nop

	l.lwz	r17, 12(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.lwz	r19, 16(r1)
	l.lwz	r17, 12(r1)
	l.sfgeu	r19, r17
	l.bf	.L499
	 l.nop

	l.lwz	r19, 16(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.j	.L500
	 l.nop

.L501:
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, -1
	l.sw	16(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, -1
	l.sw	12(r1), r17
	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.lwz	r19, 12(r1)
	l.sb	0(r19), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L500:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L501
	 l.nop

	l.j	.L505
	 l.nop

.L499:
	l.lwz	r19, 16(r1)
	l.lwz	r17, 12(r1)
	l.sfeq	r19, r17
	l.bf	.L505
	 l.nop

	l.j	.L503
	 l.nop

.L504:
	l.lwz	r17, 16(r1)
	l.addi	r19, r17, 1
	l.sw	16(r1), r19
	l.lwz	r19, 12(r1)
	l.addi	r21, r19, 1
	l.sw	12(r1), r21
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L503:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L504
	 l.nop

.L505:
	l.nop
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.addi	r1, r1, -16
	l.sw	12(r1), r9
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.lwz	r13, 0(r1)
	l.addi	r13, r13, -32
	l.sll	r7, r19, r13
	l.movhi	r6, hi(0)
	l.ori	r15, r0, 1
	l.srl	r12, r19, r15
	l.ori	r11, r0, 31
	l.lwz	r15, 0(r1)
	l.sub	r15, r11, r15
	l.srl	r15, r12, r15
	l.lwz	r12, 0(r1)
	l.sll	r25, r17, r12
	l.or	r25, r15, r25
	l.lwz	r15, 0(r1)
	l.sll	r27, r19, r15
	l.xori	r15, r0, -1
	l.sfgts	r13, r15
	l.bnf	.L509
	 l.nop

	l.or	r25, r7, r7
.L509:
	l.xori	r15, r0, -1
	l.sfgts	r13, r15
	l.bnf	.L510
	 l.nop

	l.or	r27, r6, r6
.L510:
	l.lwz	r13, 0(r1)
	l.sub	r13, r0, r13
	l.andi	r13, r13, 63
	l.addi	r13, r13, -32
	l.srl	r7, r17, r13
	l.movhi	r6, hi(0)
	l.ori	r15, r0, 1
	l.sll	r12, r17, r15
	l.ori	r11, r0, 31
	l.lwz	r15, 0(r1)
	l.sub	r15, r0, r15
	l.andi	r15, r15, 63
	l.sub	r15, r11, r15
	l.sll	r12, r12, r15
	l.lwz	r15, 0(r1)
	l.sub	r15, r0, r15
	l.andi	r15, r15, 63
	l.srl	r23, r19, r15
	l.or	r23, r12, r23
	l.lwz	r15, 0(r1)
	l.sub	r15, r0, r15
	l.andi	r15, r15, 63
	l.srl	r21, r17, r15
	l.xori	r17, r0, -1
	l.sfgts	r13, r17
	l.bnf	.L511
	 l.nop

	l.or	r23, r7, r7
.L511:
	l.xori	r17, r0, -1
	l.sfgts	r13, r17
	l.bnf	.L512
	 l.nop

	l.or	r21, r6, r6
.L512:
	l.or	r29, r21, r25
	l.or	r31, r23, r27
	l.or	r21, r29, r29
	l.or	r23, r31, r31
	l.or	r8, r21, r21
	l.or	r9, r23, r23
	l.or	r11, r8, r8
	l.or	r12, r9, r9
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.addi	r1, r1, -16
	l.sw	12(r1), r9
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.lwz	r13, 0(r1)
	l.addi	r13, r13, -32
	l.srl	r7, r17, r13
	l.movhi	r6, hi(0)
	l.ori	r15, r0, 1
	l.sll	r12, r17, r15
	l.ori	r11, r0, 31
	l.lwz	r15, 0(r1)
	l.sub	r15, r11, r15
	l.sll	r15, r12, r15
	l.lwz	r12, 0(r1)
	l.srl	r27, r19, r12
	l.or	r27, r15, r27
	l.lwz	r15, 0(r1)
	l.srl	r25, r17, r15
	l.xori	r15, r0, -1
	l.sfgts	r13, r15
	l.bnf	.L516
	 l.nop

	l.or	r27, r7, r7
.L516:
	l.xori	r15, r0, -1
	l.sfgts	r13, r15
	l.bnf	.L517
	 l.nop

	l.or	r25, r6, r6
.L517:
	l.lwz	r13, 0(r1)
	l.sub	r13, r0, r13
	l.andi	r13, r13, 63
	l.addi	r13, r13, -32
	l.sll	r7, r19, r13
	l.movhi	r6, hi(0)
	l.ori	r15, r0, 1
	l.srl	r12, r19, r15
	l.ori	r11, r0, 31
	l.lwz	r15, 0(r1)
	l.sub	r15, r0, r15
	l.andi	r15, r15, 63
	l.sub	r15, r11, r15
	l.srl	r12, r12, r15
	l.lwz	r15, 0(r1)
	l.sub	r15, r0, r15
	l.andi	r15, r15, 63
	l.sll	r21, r17, r15
	l.or	r21, r12, r21
	l.lwz	r15, 0(r1)
	l.sub	r15, r0, r15
	l.andi	r15, r15, 63
	l.sll	r23, r19, r15
	l.xori	r17, r0, -1
	l.sfgts	r13, r17
	l.bnf	.L518
	 l.nop

	l.or	r21, r7, r7
.L518:
	l.xori	r17, r0, -1
	l.sfgts	r13, r17
	l.bnf	.L519
	 l.nop

	l.or	r23, r6, r6
.L519:
	l.or	r29, r21, r25
	l.or	r31, r23, r27
	l.or	r21, r29, r29
	l.or	r23, r31, r31
	l.or	r8, r21, r21
	l.or	r9, r23, r23
	l.or	r11, r8, r8
	l.or	r12, r9, r9
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.sll	r21, r19, r17
	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.andi	r17, r17, 31
	l.srl	r17, r19, r17
	l.or	r17, r17, r21
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.srl	r21, r19, r17
	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.andi	r17, r17, 31
	l.sll	r17, r19, r17
	l.or	r17, r17, r21
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.sll	r21, r19, r17
	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.andi	r17, r17, 31
	l.srl	r17, r19, r17
	l.or	r17, r17, r21
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.srl	r21, r19, r17
	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.andi	r17, r17, 31
	l.sll	r17, r19, r17
	l.or	r17, r17, r21
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	l.addi	r1, r1, -8
	l.sh	6(r1), r3
	l.sw	0(r1), r4
	l.lhz	r19, 6(r1)
	l.lwz	r17, 0(r1)
	l.sll	r17, r19, r17
	l.andi	r19, r17, 0xffff
	l.lhz	r21, 6(r1)
	l.ori	r23, r0, 16
	l.lwz	r17, 0(r1)
	l.sub	r17, r23, r17
	l.srl	r17, r21, r17
	l.andi	r17, r17, 0xffff
	l.or	r17, r19, r17
	l.andi	r17, r17, 0xffff
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.addi	r1, r1, -8
	l.sh	6(r1), r3
	l.sw	0(r1), r4
	l.lhz	r19, 6(r1)
	l.lwz	r17, 0(r1)
	l.srl	r17, r19, r17
	l.andi	r19, r17, 0xffff
	l.lhz	r21, 6(r1)
	l.ori	r23, r0, 16
	l.lwz	r17, 0(r1)
	l.sub	r17, r23, r17
	l.sll	r17, r21, r17
	l.andi	r17, r17, 0xffff
	l.or	r17, r19, r17
	l.andi	r17, r17, 0xffff
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.addi	r1, r1, -8
	l.sb	7(r1), r3
	l.sw	0(r1), r4
	l.lbz	r19, 7(r1)
	l.lwz	r17, 0(r1)
	l.sll	r17, r19, r17
	l.andi	r19, r17, 0xff
	l.lbz	r21, 7(r1)
	l.ori	r23, r0, 8
	l.lwz	r17, 0(r1)
	l.sub	r17, r23, r17
	l.srl	r17, r21, r17
	l.andi	r17, r17, 0xff
	l.or	r17, r19, r17
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.addi	r1, r1, -8
	l.sb	7(r1), r3
	l.sw	0(r1), r4
	l.lbz	r19, 7(r1)
	l.lwz	r17, 0(r1)
	l.srl	r17, r19, r17
	l.andi	r19, r17, 0xff
	l.lbz	r21, 7(r1)
	l.ori	r23, r0, 8
	l.lwz	r17, 0(r1)
	l.sub	r17, r23, r17
	l.sll	r17, r21, r17
	l.andi	r17, r17, 0xff
	l.or	r17, r19, r17
	l.andi	r17, r17, 0xff
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.addi	r1, r1, -8
	l.sh	2(r1), r3
	l.ori	r17, r0, 255
	l.sw	4(r1), r17
	l.lhz	r19, 2(r1)
	l.lwz	r17, 4(r1)
	l.ori	r23, r0, 8
	l.sll	r17, r17, r23
	l.and	r17, r19, r17
	l.srl	r17, r17, r23
	l.andi	r19, r17, 0xffff
	l.lwz	r17, 4(r1)
	l.andi	r21, r17, 0xffff
	l.lhz	r17, 2(r1)
	l.and	r17, r21, r17
	l.andi	r17, r17, 0xffff
	l.sll	r17, r17, r23
	l.andi	r17, r17, 0xffff
	l.or	r17, r19, r17
	l.andi	r17, r17, 0xffff
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.ori	r17, r0, 255
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r23, r0, 24
	l.sll	r19, r17, r23
	l.lwz	r17, 0(r1)
	l.and	r17, r19, r17
	l.srl	r19, r17, r23
	l.lwz	r17, 4(r1)
	l.ori	r21, r0, 16
	l.sll	r21, r17, r21
	l.lwz	r17, 0(r1)
	l.and	r17, r21, r17
	l.ori	r25, r0, 8
	l.srl	r17, r17, r25
	l.or	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.sll	r21, r17, r25
	l.lwz	r17, 0(r1)
	l.and	r17, r21, r17
	l.sll	r17, r17, r25
	l.or	r19, r19, r17
	l.lwz	r21, 0(r1)
	l.lwz	r17, 4(r1)
	l.and	r17, r21, r17
	l.sll	r17, r17, r23
	l.or	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.addi	r1, r1, -224
	l.sw	184(r1), r14
	l.sw	188(r1), r16
	l.sw	192(r1), r18
	l.sw	196(r1), r20
	l.sw	200(r1), r22
	l.sw	204(r1), r24
	l.sw	208(r1), r26
	l.sw	212(r1), r28
	l.sw	216(r1), r30
	l.sw	220(r1), r9
	l.sw	168(r1), r3
	l.sw	172(r1), r4
	l.movhi	r21, hi(0)
	l.ori	r23, r0, 255
	l.or	r17, r21, r21
	l.sw	176(r1), r17
	l.or	r17, r23, r23
	l.sw	180(r1), r17
	l.lwz	r17, 180(r1)
	l.ori	r23, r0, 24
	l.sll	r25, r17, r23
	l.movhi	r27, hi(0)
	l.lwz	r17, 168(r1)
	l.and	r6, r17, r25
	l.lwz	r17, 172(r1)
	l.and	r7, r17, r27
	l.srl	r17, r6, r23
	l.sw	28(r1), r17
	l.sw	24(r1), r0
	l.lwz	r17, 180(r1)
	l.ori	r11, r0, 16
	l.sll	r12, r17, r11
	l.movhi	r13, hi(0)
	l.lwz	r17, 168(r1)
	l.and	r17, r17, r12
	l.sw	32(r1), r17
	l.lwz	r17, 172(r1)
	l.and	r17, r17, r13
	l.sw	36(r1), r17
	l.lwz	r17, 32(r1)
	l.ori	r27, r0, 8
	l.srl	r18, r17, r27
	l.movhi	r16, hi(0)
	l.lwz	r17, 24(r1)
	l.lwz	r19, 28(r1)
	l.or	r21, r17, r17
	l.or	r21, r21, r16
	l.sw	40(r1), r21
	l.or	r17, r19, r19
	l.or	r17, r17, r18
	l.sw	44(r1), r17
	l.lwz	r17, 180(r1)
	l.sll	r17, r17, r27
	l.sw	48(r1), r17
	l.sw	52(r1), r0
	l.lwz	r17, 168(r1)
	l.lwz	r19, 48(r1)
	l.lwz	r21, 52(r1)
	l.or	r25, r19, r19
	l.and	r8, r17, r25
	l.lwz	r17, 172(r1)
	l.or	r19, r21, r21
	l.and	r9, r17, r19
	l.sll	r17, r8, r27
	l.srl	r31, r9, r23
	l.or	r31, r17, r31
	l.srl	r29, r8, r23
	l.lwz	r17, 40(r1)
	l.lwz	r19, 44(r1)
	l.or	r21, r17, r17
	l.or	r21, r21, r29
	l.sw	56(r1), r21
	l.or	r17, r19, r19
	l.or	r17, r17, r31
	l.sw	60(r1), r17
	l.lwz	r17, 180(r1)
	l.movhi	r19, hi(0)
	l.sll	r17, r17, r19
	l.sw	64(r1), r17
	l.sw	68(r1), r0
	l.lwz	r17, 168(r1)
	l.lwz	r19, 64(r1)
	l.lwz	r21, 68(r1)
	l.or	r25, r19, r19
	l.and	r24, r17, r25
	l.lwz	r17, 172(r1)
	l.or	r19, r21, r21
	l.and	r26, r17, r19
	l.sll	r17, r24, r23
	l.srl	r22, r26, r27
	l.or	r22, r17, r22
	l.srl	r20, r24, r27
	l.lwz	r17, 56(r1)
	l.lwz	r19, 60(r1)
	l.or	r21, r17, r17
	l.or	r21, r21, r20
	l.sw	72(r1), r21
	l.or	r17, r19, r19
	l.or	r17, r17, r22
	l.sw	76(r1), r17
	l.lwz	r17, 180(r1)
	l.srl	r19, r17, r27
	l.lwz	r17, 176(r1)
	l.or	r25, r23, r23
	l.sll	r17, r17, r25
	l.sw	0(r1), r17
	l.lwz	r17, 0(r1)
	l.or	r17, r19, r17
	l.sw	0(r1), r17
	l.lwz	r17, 180(r1)
	l.sll	r17, r17, r25
	l.sw	4(r1), r17
	l.lwz	r17, 168(r1)
	l.lwz	r19, 0(r1)
	l.lwz	r21, 4(r1)
	l.or	r23, r19, r19
	l.and	r17, r17, r23
	l.sw	80(r1), r17
	l.lwz	r17, 172(r1)
	l.or	r19, r21, r21
	l.and	r17, r17, r19
	l.sw	84(r1), r17
	l.lwz	r19, 80(r1)
	l.lwz	r21, 84(r1)
	l.or	r17, r21, r21
	l.srl	r17, r17, r25
	l.or	r23, r19, r19
	l.sll	r23, r23, r27
	l.sw	8(r1), r23
	l.lwz	r23, 8(r1)
	l.or	r17, r17, r23
	l.sw	8(r1), r17
	l.or	r17, r21, r21
	l.sll	r17, r17, r27
	l.sw	12(r1), r17
	l.lwz	r21, 72(r1)
	l.lwz	r23, 76(r1)
	l.or	r29, r21, r21
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.or	r31, r17, r17
	l.or	r29, r29, r31
	l.sw	88(r1), r29
	l.or	r21, r23, r23
	l.or	r17, r19, r19
	l.or	r17, r21, r17
	l.sw	92(r1), r17
	l.lwz	r17, 180(r1)
	l.srl	r17, r17, r11
	l.lwz	r19, 176(r1)
	l.sll	r19, r19, r11
	l.sw	16(r1), r19
	l.lwz	r19, 16(r1)
	l.or	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 180(r1)
	l.sll	r17, r17, r11
	l.sw	20(r1), r17
	l.lwz	r17, 168(r1)
	l.lwz	r19, 16(r1)
	l.lwz	r21, 20(r1)
	l.or	r23, r19, r19
	l.and	r17, r17, r23
	l.sw	96(r1), r17
	l.lwz	r17, 172(r1)
	l.or	r19, r21, r21
	l.and	r17, r17, r19
	l.sw	100(r1), r17
	l.lwz	r19, 96(r1)
	l.lwz	r21, 100(r1)
	l.or	r17, r21, r21
	l.srl	r17, r17, r27
	l.or	r23, r19, r19
	l.sll	r14, r23, r25
	l.or	r14, r17, r14
	l.or	r17, r21, r21
	l.sll	r15, r17, r25
	l.lwz	r17, 88(r1)
	l.lwz	r19, 92(r1)
	l.or	r21, r17, r17
	l.or	r21, r21, r14
	l.sw	104(r1), r21
	l.or	r17, r19, r19
	l.or	r17, r17, r15
	l.sw	108(r1), r17
	l.lwz	r17, 180(r1)
	l.srl	r17, r17, r25
	l.lwz	r19, 176(r1)
	l.sll	r28, r19, r27
	l.or	r28, r17, r28
	l.lwz	r17, 180(r1)
	l.sll	r30, r17, r27
	l.lwz	r17, 168(r1)
	l.and	r17, r17, r28
	l.sw	112(r1), r17
	l.lwz	r17, 172(r1)
	l.and	r17, r17, r30
	l.sw	116(r1), r17
	l.lwz	r17, 116(r1)
	l.sll	r17, r17, r27
	l.sw	120(r1), r17
	l.sw	124(r1), r0
	l.lwz	r21, 104(r1)
	l.lwz	r23, 108(r1)
	l.or	r27, r21, r21
	l.lwz	r17, 120(r1)
	l.lwz	r19, 124(r1)
	l.or	r29, r17, r17
	l.or	r27, r27, r29
	l.sw	128(r1), r27
	l.or	r21, r23, r23
	l.or	r17, r19, r19
	l.or	r17, r21, r17
	l.sw	132(r1), r17
	l.lwz	r19, 168(r1)
	l.lwz	r17, 176(r1)
	l.and	r17, r19, r17
	l.sw	136(r1), r17
	l.lwz	r19, 172(r1)
	l.lwz	r17, 180(r1)
	l.and	r17, r19, r17
	l.sw	140(r1), r17
	l.lwz	r17, 140(r1)
	l.sll	r17, r17, r25
	l.sw	144(r1), r17
	l.sw	148(r1), r0
	l.lwz	r21, 128(r1)
	l.lwz	r23, 132(r1)
	l.or	r25, r21, r21
	l.lwz	r17, 144(r1)
	l.lwz	r19, 148(r1)
	l.or	r27, r17, r17
	l.or	r25, r25, r27
	l.sw	152(r1), r25
	l.or	r21, r23, r23
	l.or	r17, r19, r19
	l.or	r17, r21, r17
	l.sw	156(r1), r17
	l.lwz	r17, 152(r1)
	l.lwz	r19, 156(r1)
	l.or	r21, r17, r17
	l.sw	160(r1), r21
	l.or	r17, r19, r19
	l.sw	164(r1), r17
	l.lwz	r17, 160(r1)
	l.lwz	r19, 164(r1)
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 184(r1)
	l.lwz	r16, 188(r1)
	l.lwz	r18, 192(r1)
	l.lwz	r20, 196(r1)
	l.lwz	r22, 200(r1)
	l.lwz	r24, 204(r1)
	l.lwz	r26, 208(r1)
	l.lwz	r28, 212(r1)
	l.lwz	r30, 216(r1)
	l.lwz	r9, 220(r1)
	l.addi	r1, r1, 224
	l.jr	r9
	 l.nop

	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.sw	4(r1), r0
	l.j	.L555
	 l.nop

.L558:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.srl	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L556
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.j	.L557
	 l.nop

.L556:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L555:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L558
	 l.nop

	l.movhi	r17, hi(0)
.L557:
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r19, hi(0)
	l.sfne	r3, r19
	l.bf	.L561
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L566
	 l.nop

.L561:
	l.addi	r1, r1, -4
	l.sw	0(r1), r16
	l.or	r17, r3, r3
	l.ori	r16, r0, 1
	l.j	.L563
	 l.nop

.L564:
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.addi	r16, r16, 1
.L563:
	l.andi	r19, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L564
	 l.nop

	l.or	r17, r16, r16
	l.or	r11, r17, r17
	l.lwz	r16, 0(r1)
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

.L566:
	l.or	r11, r17, r17
	l.jr	r9
	 l.nop

	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4
	.align 4
.LC2:
	.long	-8388609
	.align 4
.LC3:
	.long	2139095039
	.section	.text
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	l.addi	r1, r1, -8
	l.sw	4(r1), r9
	l.sw	0(r1), r3
	l.movhi	r17, ha(.LC2)
	l.lwz	r4, lo(.LC2)(r17)
	l.lwz	r3, 0(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r11, r19
	l.bf	.L569
	 l.nop

	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.lwz	r3, 0(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L574
	 l.nop

.L569:
	l.ori	r17, r0, 1
	l.j	.L573
	 l.nop

.L574:
	l.movhi	r17, hi(0)
.L573:
	l.or	r11, r17, r17
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	gl_isinff, .-gl_isinff
	.section	.rodata
	.align 4
.LC4:
	.long	-1048577
	.long	-1
	.align 4
.LC5:
	.long	2146435071
	.long	-1
	.section	.text
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.movhi	r17, ha(.LC4)
	l.lwz	r5, lo(.LC4)(r17)
	l.addi	r17, r17, lo(.LC4)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r11, r19
	l.bf	.L577
	 l.nop

	l.movhi	r17, ha(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.addi	r17, r17, lo(.LC5)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L582
	 l.nop

.L577:
	l.ori	r17, r0, 1
	l.j	.L581
	 l.nop

.L582:
	l.movhi	r17, hi(0)
.L581:
	l.or	r11, r17, r17
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata
	.align 4
.LC6:
	.long	-1048577
	.long	-1
	.align 4
.LC7:
	.long	2146435071
	.long	-1
	.section	.text
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.movhi	r17, ha(.LC6)
	l.lwz	r5, lo(.LC6)(r17)
	l.addi	r17, r17, lo(.LC6)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r11, r19
	l.bf	.L585
	 l.nop

	l.movhi	r17, ha(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.addi	r17, r17, lo(.LC7)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L590
	 l.nop

.L585:
	l.ori	r17, r0, 1
	l.j	.L589
	 l.nop

.L590:
	l.movhi	r17, hi(0)
.L589:
	l.or	r11, r17, r17
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r3, 0(r1)
	l.jal	__floatsidf
	 l.nop

	l.or	r21, r11, r11
	l.or	r23, r12, r12
	l.lwz	r17, 4(r1)
	l.or	r19, r21, r21
	l.sw	0(r17), r19
	l.or	r19, r23, r23
	l.sw	4(r17), r19
	l.nop
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC8:
	.long	1056964608
	.align 4
.LC9:
	.long	1073741824
	.section	.text
	.align 4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	l.addi	r1, r1, -16
	l.sw	12(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r4, 4(r1)
	l.lwz	r3, 4(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L595
	 l.nop

	l.lwz	r17, 4(r1)
	l.or	r4, r17, r17
	l.or	r3, r17, r17
	l.jal	__addsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.or	r4, r17, r17
	l.lwz	r3, 4(r1)
	l.jal	__nesf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L595
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L597
	 l.nop

	l.movhi	r19, ha(.LC8)
	l.lwz	r17, lo(.LC8)(r19)
	l.j	.L598
	 l.nop

.L597:
	l.movhi	r19, ha(.LC9)
	l.lwz	r17, lo(.LC9)(r19)
.L598:
	l.sw	8(r1), r17
.L601:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L599
	 l.nop

	l.lwz	r4, 8(r1)
	l.lwz	r3, 4(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	4(r1), r17
.L599:
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 31
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	0(r1), r17
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L604
	 l.nop

	l.lwz	r4, 8(r1)
	l.lwz	r3, 8(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	8(r1), r17
	l.j	.L601
	 l.nop

.L604:
	l.nop
.L595:
	l.lwz	r17, 4(r1)
	l.or	r19, r17, r17
	l.or	r11, r19, r19
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	ldexpf, .-ldexpf
	.section	.rodata
	.align 4
.LC10:
	.long	1071644672
	.long	0
	.align 4
.LC11:
	.long	1073741824
	.long	0
	.section	.text
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	l.addi	r1, r1, -24
	l.sw	20(r1), r9
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.lwz	r5, 4(r1)
	l.lwz	r6, 8(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L607
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__adddf3
	 l.nop

	l.or	r21, r11, r11
	l.or	r23, r12, r12
	l.or	r17, r21, r21
	l.or	r19, r23, r23
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__nedf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L607
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L609
	 l.nop

	l.movhi	r21, ha(.LC10)
	l.lwz	r17, lo(.LC10)(r21)
	l.addi	r21, r21, lo(.LC10)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
	l.j	.L610
	 l.nop

.L609:
	l.movhi	r21, ha(.LC11)
	l.lwz	r17, lo(.LC11)(r21)
	l.addi	r21, r21, lo(.LC11)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
.L610:
	l.or	r21, r17, r17
	l.sw	12(r1), r21
	l.or	r17, r19, r19
	l.sw	16(r1), r17
.L613:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L611
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	4(r1), r21
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L611:
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 31
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	0(r1), r17
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L616
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 12(r1)
	l.lwz	r4, 16(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	12(r1), r21
	l.or	r17, r19, r19
	l.sw	16(r1), r17
	l.j	.L613
	 l.nop

.L616:
	l.nop
.L607:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	ldexp, .-ldexp
	.section	.rodata
	.align 4
.LC12:
	.long	1071644672
	.long	0
	.align 4
.LC13:
	.long	1073741824
	.long	0
	.section	.text
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	l.addi	r1, r1, -24
	l.sw	20(r1), r9
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.lwz	r5, 4(r1)
	l.lwz	r6, 8(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L619
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__adddf3
	 l.nop

	l.or	r21, r11, r11
	l.or	r23, r12, r12
	l.or	r17, r21, r21
	l.or	r19, r23, r23
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__nedf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L619
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L621
	 l.nop

	l.movhi	r21, ha(.LC12)
	l.lwz	r17, lo(.LC12)(r21)
	l.addi	r21, r21, lo(.LC12)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
	l.j	.L622
	 l.nop

.L621:
	l.movhi	r21, ha(.LC13)
	l.lwz	r17, lo(.LC13)(r21)
	l.addi	r21, r21, lo(.LC13)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
.L622:
	l.or	r21, r17, r17
	l.sw	12(r1), r21
	l.or	r17, r19, r19
	l.sw	16(r1), r17
.L625:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L623
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	4(r1), r21
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L623:
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 31
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	0(r1), r17
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L628
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 12(r1)
	l.lwz	r4, 16(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	12(r1), r21
	l.or	r17, r19, r19
	l.sw	16(r1), r17
	l.j	.L625
	 l.nop

.L628:
	l.nop
.L619:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 4(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.j	.L631
	 l.nop

.L632:
	l.lwz	r17, 16(r1)
	l.addi	r19, r17, 1
	l.sw	16(r1), r19
	l.lbz	r17, 0(r17)
	l.ori	r23, r0, 24
	l.sll	r21, r17, r23
	l.sra	r21, r21, r23
	l.lwz	r17, 12(r1)
	l.addi	r19, r17, 1
	l.sw	12(r1), r19
	l.lbz	r19, 0(r17)
	l.sll	r19, r19, r23
	l.sra	r19, r19, r23
	l.xor	r19, r21, r19
	l.sll	r19, r19, r23
	l.sra	r19, r19, r23
	l.sb	0(r17), r19
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L631:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L632
	 l.nop

	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r3, 8(r1)
	l.jal	strlen
	 l.nop

	l.or	r19, r11, r11
	l.lwz	r17, 8(r1)
	l.add	r17, r17, r11
	l.sw	12(r1), r17
	l.j	.L636
	 l.nop

.L638:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L636:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L637
	 l.nop

	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.lwz	r19, 12(r1)
	l.sb	0(r19), r17
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L638
	 l.nop

.L637:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L639
	 l.nop

	l.lwz	r17, 12(r1)
	l.sb	0(r17), r0
.L639:
	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.sw	8(r1), r0
	l.j	.L643
	 l.nop

.L648:
	l.nop
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L643:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.sfgeu	r19, r17
	l.bf	.L644
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.add	r17, r19, r17
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L648
	 l.nop

.L644:
	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.j	.L651
	 l.nop

.L655:
	l.lwz	r17, 0(r1)
	l.sw	8(r1), r17
	l.j	.L652
	 l.nop

.L654:
	l.lwz	r17, 8(r1)
	l.addi	r19, r17, 1
	l.sw	8(r1), r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r19, r17, r21
	l.sra	r19, r19, r21
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sfne	r19, r17
	l.bf	.L652
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L653
	 l.nop

.L652:
	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L654
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L651:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L655
	 l.nop

	l.movhi	r17, hi(0)
.L653:
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.addi	r1, r1, -8
	l.or	r19, r3, r3
	l.sw	0(r1), r4
	l.sw	4(r1), r0
.L659:
	l.lbz	r17, 0(r19)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r21
	l.bf	.L658
	 l.nop

	l.sw	4(r1), r19
.L658:
	l.or	r17, r19, r19
	l.addi	r19, r17, 1
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L659
	 l.nop

	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.lwz	r3, 0(r1)
	l.jal	strlen
	 l.nop

	l.sw	8(r1), r11
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L665
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L664
	 l.nop

.L667:
	l.lwz	r5, 8(r1)
	l.lwz	r4, 0(r1)
	l.lwz	r3, 12(r1)
	l.jal	strncmp
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L666
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L664
	 l.nop

.L666:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
.L665:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.or	r4, r17, r17
	l.lwz	r3, 12(r1)
	l.jal	strchr
	 l.nop

	l.sw	12(r1), r11
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L667
	 l.nop

	l.movhi	r17, hi(0)
.L664:
	l.or	r11, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	strstr, .-strstr
	.section	.rodata
	.align 4
.LC14:
	.long	0
	.long	0
	.section	.text
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	l.addi	r1, r1, -28
	l.sw	16(r1), r16
	l.sw	20(r1), r18
	l.sw	24(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r11, r19
	l.bnf	.L670
	 l.nop

	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bf	.L672
	 l.nop

.L670:
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L673
	 l.nop

	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L673
	 l.nop

.L672:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r19, r17
	l.lwz	r18, 12(r1)
	l.j	.L676
	 l.nop

.L673:
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
.L676:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 16(r1)
	l.lwz	r18, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.addi	r1, r1, -28
	l.sw	24(r1), r9
	l.sw	12(r1), r3
	l.sw	8(r1), r4
	l.sw	4(r1), r5
	l.sw	0(r1), r6
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L681
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L682
	 l.nop

.L681:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.sfltu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L688
	 l.nop

	l.movhi	r17, hi(0)
.L688:
	l.andi	r17, r17, 0xff
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L683
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L682
	 l.nop

.L683:
	l.lwz	r17, 12(r1)
	l.sw	20(r1), r17
	l.j	.L684
	 l.nop

.L686:
	l.lwz	r17, 20(r1)
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r19, r17, r21
	l.sra	r19, r19, r21
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sfne	r19, r17
	l.bf	.L685
	 l.nop

	l.lwz	r17, 20(r1)
	l.addi	r19, r17, 1
	l.lwz	r17, 4(r1)
	l.addi	r21, r17, 1
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.or	r5, r17, r17
	l.or	r4, r21, r21
	l.or	r3, r19, r19
	l.jal	memcmp
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L685
	 l.nop

	l.lwz	r17, 20(r1)
	l.j	.L682
	 l.nop

.L685:
	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.sw	20(r1), r17
.L684:
	l.lwz	r19, 20(r1)
	l.lwz	r17, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L686
	 l.nop

	l.movhi	r17, hi(0)
.L682:
	l.or	r11, r17, r17
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -16
	l.sw	12(r1), r9
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r5, 0(r1)
	l.lwz	r4, 4(r1)
	l.lwz	r3, 8(r1)
	l.jal	memcpy
	 l.nop

	l.or	r19, r11, r11
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.or	r11, r17, r17
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 4
.LC15:
	.long	0
	.long	0
	.align 4
.LC16:
	.long	1072693248
	.long	0
	.align 4
.LC17:
	.long	1073741824
	.long	0
	.align 4
.LC18:
	.long	1071644672
	.long	0
	.section	.text
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	l.addi	r1, r1, -40
	l.sw	20(r1), r16
	l.sw	24(r1), r18
	l.sw	28(r1), r20
	l.sw	32(r1), r22
	l.sw	36(r1), r9
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.sw	12(r1), r0
	l.sw	16(r1), r0
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r11, r19
	l.bnf	.L693
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r20, r19, r17
	l.lwz	r22, 8(r1)
	l.or	r17, r20, r20
	l.sw	4(r1), r17
	l.or	r17, r22, r22
	l.sw	8(r1), r17
	l.ori	r17, r0, 1
	l.sw	16(r1), r17
.L693:
	l.movhi	r17, ha(.LC16)
	l.lwz	r5, lo(.LC16)(r17)
	l.addi	r17, r17, lo(.LC16)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__gedf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfges	r17, r19
	l.bnf	.L710
	 l.nop

	l.j	.L697
	 l.nop

.L698:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.movhi	r17, ha(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__divdf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	4(r1), r21
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L697:
	l.movhi	r17, ha(.LC16)
	l.lwz	r5, lo(.LC16)(r17)
	l.addi	r17, r17, lo(.LC16)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__gedf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfges	r17, r19
	l.bf	.L698
	 l.nop

	l.j	.L699
	 l.nop

.L710:
	l.movhi	r17, ha(.LC18)
	l.lwz	r5, lo(.LC18)(r17)
	l.addi	r17, r17, lo(.LC18)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L699
	 l.nop

	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__nedf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L699
	 l.nop

	l.j	.L702
	 l.nop

.L703:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, -1
	l.sw	12(r1), r17
	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__adddf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	4(r1), r21
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L702:
	l.movhi	r17, ha(.LC18)
	l.lwz	r5, lo(.LC18)(r17)
	l.addi	r17, r17, lo(.LC18)
	l.addi	r17, r17, 4
	l.lwz	r6, 0(r17)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bf	.L703
	 l.nop

.L699:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 12(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L704
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r19, r17
	l.lwz	r18, 8(r1)
	l.or	r17, r16, r16
	l.sw	4(r1), r17
	l.or	r17, r18, r18
	l.sw	8(r1), r17
.L704:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r16, 20(r1)
	l.lwz	r18, 24(r1)
	l.lwz	r20, 28(r1)
	l.lwz	r22, 32(r1)
	l.lwz	r9, 36(r1)
	l.addi	r1, r1, 40
	l.jr	r9
	 l.nop

	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.addi	r1, r1, -52
	l.sw	32(r1), r16
	l.sw	36(r1), r18
	l.sw	40(r1), r20
	l.sw	44(r1), r22
	l.sw	48(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.sw	24(r1), r0
	l.sw	28(r1), r0
	l.lwz	r21, 8(r1)
	l.lwz	r23, 12(r1)
	l.or	r15, r21, r21
	l.sw	16(r1), r21
	l.or	r21, r23, r23
	l.sw	20(r1), r23
	l.j	.L713
	 l.nop

.L716:
	l.lwz	r21, 16(r1)
	l.andi	r8, r21, 0
	l.lwz	r21, 20(r1)
	l.andi	r9, r21, 1
	l.or	r21, r8, r8
	l.or	r21, r21, r9
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L714
	 l.nop

	l.lwz	r25, 24(r1)
	l.lwz	r27, 28(r1)
	l.lwz	r12, 0(r1)
	l.lwz	r13, 4(r1)
	l.add	r23, r27, r13
	l.sfltu	r23, r27
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L719
	 l.nop

	l.movhi	r15, hi(0)
.L719:
	l.add	r21, r25, r12
	l.add	r15, r15, r21
	l.or	r21, r15, r15
	l.or	r15, r21, r21
	l.sw	24(r1), r15
	l.or	r21, r23, r23
	l.sw	28(r1), r21
.L714:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.add	r23, r19, r19
	l.sfltu	r23, r19
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L720
	 l.nop

	l.movhi	r15, hi(0)
.L720:
	l.add	r21, r17, r17
	l.add	r15, r15, r21
	l.or	r21, r15, r15
	l.or	r15, r21, r21
	l.sw	0(r1), r15
	l.or	r21, r23, r23
	l.sw	4(r1), r21
	l.lwz	r21, 16(r1)
	l.ori	r23, r0, 31
	l.sll	r21, r21, r23
	l.lwz	r23, 20(r1)
	l.ori	r15, r0, 1
	l.srl	r31, r23, r15
	l.or	r31, r21, r31
	l.lwz	r21, 16(r1)
	l.srl	r29, r21, r15
	l.or	r21, r29, r29
	l.sw	16(r1), r21
	l.or	r21, r31, r31
	l.sw	20(r1), r21
.L713:
	l.lwz	r21, 16(r1)
	l.lwz	r23, 20(r1)
	l.or	r21, r21, r23
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L716
	 l.nop

	l.lwz	r16, 24(r1)
	l.lwz	r18, 28(r1)
	l.or	r20, r16, r16
	l.or	r22, r18, r18
	l.or	r11, r20, r20
	l.or	r12, r22, r22
	l.lwz	r16, 32(r1)
	l.lwz	r18, 36(r1)
	l.lwz	r20, 40(r1)
	l.lwz	r22, 44(r1)
	l.lwz	r9, 48(r1)
	l.addi	r1, r1, 52
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.ori	r17, r0, 1
	l.sw	16(r1), r17
	l.sw	12(r1), r0
	l.j	.L722
	 l.nop

.L724:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L722:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L725
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L725
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L724
	 l.nop

	l.j	.L725
	 l.nop

.L727:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L726
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L726:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L725:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L727
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L728
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L729
	 l.nop

.L728:
	l.lwz	r17, 12(r1)
.L729:
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sb	3(r1), r3
	l.lbz	r17, 3(r1)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.xori	r19, r0, -1
	l.sfgts	r17, r19
	l.bf	.L732
	 l.nop

	l.lbz	r17, 3(r1)
	l.xori	r17, r17, -1
	l.sb	3(r1), r17
.L732:
	l.lbz	r17, 3(r1)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L733
	 l.nop

	l.ori	r17, r0, 7
	l.j	.L734
	 l.nop

.L733:
	l.lbz	r17, 3(r1)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.ori	r19, r0, 8
	l.sll	r17, r17, r19
	l.or	r3, r17, r17
	l.jal	__clzsi2
	 l.nop

	l.or	r17, r11, r11
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, -1
.L734:
	l.or	r11, r17, r17
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.addi	r1, r1, -16
	l.sw	12(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r27, 0(r1)
	l.xori	r25, r0, -1
	l.sfgts	r27, r25
	l.bf	.L737
	 l.nop

	l.lwz	r25, 0(r1)
	l.xori	r21, r25, -1
	l.lwz	r25, 4(r1)
	l.xori	r23, r25, -1
	l.or	r25, r21, r21
	l.sw	0(r1), r25
	l.or	r21, r23, r23
	l.sw	4(r1), r21
.L737:
	l.lwz	r21, 0(r1)
	l.lwz	r23, 4(r1)
	l.or	r21, r21, r23
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L739
	 l.nop

	l.ori	r17, r0, 63
	l.j	.L740
	 l.nop

.L739:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__clzdi2
	 l.nop

	l.or	r17, r11, r11
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, -1
.L740:
	l.or	r11, r17, r17
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.sw	8(r1), r0
	l.j	.L743
	 l.nop

.L745:
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L744
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L744:
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.add	r17, r17, r17
	l.sw	0(r1), r17
.L743:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L745
	 l.nop

	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.addi	r1, r1, -32
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r21, 0(r1)
	l.ori	r23, r0, 3
	l.srl	r21, r21, r23
	l.sw	20(r1), r21
	l.lwz	r23, 0(r1)
	l.xori	r21, r0, -8
	l.and	r21, r23, r21
	l.sw	24(r1), r21
	l.lwz	r21, 8(r1)
	l.sw	16(r1), r21
	l.lwz	r21, 4(r1)
	l.sw	12(r1), r21
	l.lwz	r23, 16(r1)
	l.lwz	r21, 12(r1)
	l.sfltu	r23, r21
	l.bf	.L749
	 l.nop

	l.lwz	r23, 12(r1)
	l.lwz	r21, 0(r1)
	l.add	r21, r23, r21
	l.lwz	r23, 16(r1)
	l.sfleu	r23, r21
	l.bf	.L756
	 l.nop

.L749:
	l.sw	28(r1), r0
	l.j	.L751
	 l.nop

.L752:
	l.lwz	r21, 28(r1)
	l.ori	r25, r0, 3
	l.sll	r21, r21, r25
	l.lwz	r23, 4(r1)
	l.add	r23, r23, r21
	l.lwz	r21, 28(r1)
	l.sll	r21, r21, r25
	l.lwz	r25, 8(r1)
	l.add	r21, r25, r21
	l.lwz	r17, 0(r23)
	l.lwz	r19, 4(r23)
	l.or	r23, r17, r17
	l.sw	0(r21), r23
	l.or	r23, r19, r19
	l.sw	4(r21), r23
	l.lwz	r21, 28(r1)
	l.addi	r21, r21, 1
	l.sw	28(r1), r21
.L751:
	l.lwz	r23, 28(r1)
	l.lwz	r21, 20(r1)
	l.sfltu	r23, r21
	l.bf	.L752
	 l.nop

	l.j	.L753
	 l.nop

.L754:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 24(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 16(r1)
	l.lwz	r19, 24(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 24(r1)
	l.addi	r17, r17, 1
	l.sw	24(r1), r17
.L753:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 24(r1)
	l.sfgtu	r19, r17
	l.bf	.L754
	 l.nop

	l.j	.L755
	 l.nop

.L757:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 16(r1)
	l.lwz	r19, 0(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
.L756:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L757
	 l.nop

	l.nop
.L755:
	l.nop
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.addi	r1, r1, -28
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	20(r1), r17
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.lwz	r19, 16(r1)
	l.lwz	r17, 12(r1)
	l.sfltu	r19, r17
	l.bf	.L760
	 l.nop

	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L766
	 l.nop

.L760:
	l.sw	24(r1), r0
	l.j	.L762
	 l.nop

.L763:
	l.lwz	r17, 24(r1)
	l.add	r17, r17, r17
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.add	r21, r17, r19
	l.lwz	r17, 24(r1)
	l.add	r17, r17, r17
	l.or	r19, r17, r17
	l.lwz	r17, 8(r1)
	l.add	r19, r17, r19
	l.lhz	r17, 0(r21)
	l.ori	r21, r0, 16
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sh	0(r19), r17
	l.lwz	r17, 24(r1)
	l.addi	r17, r17, 1
	l.sw	24(r1), r17
.L762:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L763
	 l.nop

	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L765
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.lwz	r19, 12(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 0(r1)
	l.addi	r19, r19, -1
	l.lwz	r21, 16(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.j	.L765
	 l.nop

.L767:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 16(r1)
	l.lwz	r19, 0(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
.L766:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L767
	 l.nop

	l.nop
.L765:
	l.nop
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.addi	r1, r1, -32
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 2
	l.srl	r17, r17, r19
	l.sw	20(r1), r17
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -4
	l.and	r17, r19, r17
	l.sw	24(r1), r17
	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.sw	12(r1), r17
	l.lwz	r19, 16(r1)
	l.lwz	r17, 12(r1)
	l.sfltu	r19, r17
	l.bf	.L770
	 l.nop

	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L777
	 l.nop

.L770:
	l.sw	28(r1), r0
	l.j	.L772
	 l.nop

.L773:
	l.lwz	r17, 28(r1)
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.lwz	r19, 4(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 28(r1)
	l.sll	r17, r17, r21
	l.lwz	r21, 8(r1)
	l.add	r17, r21, r17
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
	l.lwz	r17, 28(r1)
	l.addi	r17, r17, 1
	l.sw	28(r1), r17
.L772:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L773
	 l.nop

	l.j	.L774
	 l.nop

.L775:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 24(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 16(r1)
	l.lwz	r19, 24(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 24(r1)
	l.addi	r17, r17, 1
	l.sw	24(r1), r17
.L774:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 24(r1)
	l.sfgtu	r19, r17
	l.bf	.L775
	 l.nop

	l.j	.L776
	 l.nop

.L778:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 16(r1)
	l.lwz	r19, 0(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
.L777:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L778
	 l.nop

	l.nop
.L776:
	l.nop
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r1)
	l.div	r21, r17, r19
	l.lwz	r19, 0(r1)
	l.mul	r19, r21, r19
	l.sub	r17, r17, r19
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	l.addi	r1, r1, -8
	l.sw	4(r1), r9
	l.sw	0(r1), r3
	l.lwz	r3, 0(r1)
	l.jal	__floatunsidf
	 l.nop

	l.or	r21, r11, r11
	l.or	r23, r12, r12
	l.or	r17, r21, r21
	l.or	r19, r23, r23
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	l.addi	r1, r1, -8
	l.sw	4(r1), r9
	l.sw	0(r1), r3
	l.lwz	r3, 0(r1)
	l.jal	__floatunsisf
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.or	r11, r17, r17
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__floatundidf
	 l.nop

	l.or	r21, r11, r11
	l.or	r23, r12, r12
	l.or	r17, r21, r21
	l.or	r19, r23, r23
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__floatundisf
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.or	r11, r17, r17
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r1)
	l.divu	r21, r17, r19
	l.lwz	r19, 0(r1)
	l.mul	r19, r21, r19
	l.sub	r17, r17, r19
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	l.addi	r1, r1, -8
	l.sh	2(r1), r3
	l.sw	4(r1), r0
	l.j	.L799
	 l.nop

.L802:
	l.lhz	r19, 2(r1)
	l.ori	r21, r0, 15
	l.lwz	r17, 4(r1)
	l.sub	r17, r21, r17
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L804
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L799:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L802
	 l.nop

	l.j	.L801
	 l.nop

.L804:
	l.nop
.L801:
	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	l.addi	r1, r1, -8
	l.sh	2(r1), r3
	l.sw	4(r1), r0
	l.j	.L807
	 l.nop

.L810:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 4(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L812
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L807:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L810
	 l.nop

	l.j	.L809
	 l.nop

.L812:
	l.nop
.L809:
	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC19:
	.long	1191182336
	.section	.text
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.addi	r1, r1, -8
	l.sw	4(r1), r9
	l.sw	0(r1), r3
	l.movhi	r17, ha(.LC19)
	l.lwz	r4, lo(.LC19)(r17)
	l.lwz	r3, 0(r1)
	l.jal	__gesf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfges	r11, r19
	l.bnf	.L819
	 l.nop

	l.movhi	r17, ha(.LC19)
	l.lwz	r4, lo(.LC19)(r17)
	l.lwz	r3, 0(r1)
	l.jal	__subsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.or	r3, r17, r17
	l.jal	__fixsfsi
	 l.nop

	l.or	r19, r11, r11
	l.ori	r17, r0, 32768
	l.add	r17, r19, r17
	l.j	.L817
	 l.nop

.L819:
	l.lwz	r3, 0(r1)
	l.jal	__fixsfsi
	 l.nop

	l.or	r17, r11, r11
.L817:
	l.or	r11, r17, r17
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.addi	r1, r1, -12
	l.sh	2(r1), r3
	l.sw	4(r1), r0
	l.sw	8(r1), r0
	l.j	.L822
	 l.nop

.L824:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 8(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L823
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L823:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L822:
	l.lwz	r19, 8(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L824
	 l.nop

	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 1
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	l.addi	r1, r1, -12
	l.sh	2(r1), r3
	l.sw	4(r1), r0
	l.sw	8(r1), r0
	l.j	.L828
	 l.nop

.L830:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 8(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L829
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L829:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L828:
	l.lwz	r19, 8(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L830
	 l.nop

	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.sw	8(r1), r0
	l.j	.L834
	 l.nop

.L836:
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L835
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L835:
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.add	r17, r17, r17
	l.sw	0(r1), r17
.L834:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L836
	 l.nop

	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.sw	8(r1), r0
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L842
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L841
	 l.nop

.L844:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L843
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L843:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	0(r1), r17
.L842:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L844
	 l.nop

	l.lwz	r17, 8(r1)
.L841:
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.ori	r17, r0, 1
	l.sw	16(r1), r17
	l.sw	12(r1), r0
	l.j	.L847
	 l.nop

.L849:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L847:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L850
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L850
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L849
	 l.nop

	l.j	.L850
	 l.nop

.L852:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L851
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L851:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L850:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L852
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L853
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L854
	 l.nop

.L853:
	l.lwz	r17, 12(r1)
.L854:
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r11, r19
	l.bnf	.L864
	 l.nop

	l.xori	r17, r0, -1
	l.j	.L859
	 l.nop

.L864:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L865
	 l.nop

	l.ori	r17, r0, 1
	l.j	.L859
	 l.nop

.L865:
	l.movhi	r17, hi(0)
.L859:
	l.or	r11, r17, r17
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r11, r19
	l.bnf	.L875
	 l.nop

	l.xori	r17, r0, -1
	l.j	.L870
	 l.nop

.L875:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L876
	 l.nop

	l.ori	r17, r0, 1
	l.j	.L870
	 l.nop

.L876:
	l.movhi	r17, hi(0)
.L870:
	l.or	r11, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	l.addi	r1, r1, -36
	l.sw	8(r1), r16
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r24
	l.sw	28(r1), r26
	l.sw	32(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r25, 4(r1)
	l.or	r19, r25, r25
	l.ori	r27, r0, 31
	l.sra	r25, r25, r27
	l.or	r17, r25, r25
	l.lwz	r25, 0(r1)
	l.or	r23, r25, r25
	l.sra	r25, r25, r27
	l.or	r21, r25, r25
	l.or	r5, r21, r21
	l.or	r6, r23, r23
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__muldi3
	 l.nop

	l.or	r24, r11, r11
	l.or	r26, r12, r12
	l.or	r20, r24, r24
	l.or	r22, r26, r26
	l.or	r16, r20, r20
	l.or	r18, r22, r22
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r24, 24(r1)
	l.lwz	r26, 28(r1)
	l.lwz	r9, 32(r1)
	l.addi	r1, r1, 36
	l.jr	r9
	 l.nop

	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	l.addi	r1, r1, -36
	l.sw	8(r1), r16
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r24
	l.sw	28(r1), r26
	l.sw	32(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r25, 4(r1)
	l.or	r19, r25, r25
	l.movhi	r17, hi(0)
	l.lwz	r25, 0(r1)
	l.or	r23, r25, r25
	l.movhi	r21, hi(0)
	l.or	r5, r21, r21
	l.or	r6, r23, r23
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__muldi3
	 l.nop

	l.or	r24, r11, r11
	l.or	r26, r12, r12
	l.or	r20, r24, r24
	l.or	r22, r26, r26
	l.or	r16, r20, r20
	l.or	r18, r22, r22
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r24, 24(r1)
	l.lwz	r26, 28(r1)
	l.lwz	r9, 32(r1)
	l.addi	r1, r1, 36
	l.jr	r9
	 l.nop

	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	l.addi	r1, r1, -20
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.sw	12(r1), r0
	l.sw	8(r1), r0
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L885
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
	l.ori	r17, r0, 1
	l.sw	12(r1), r17
.L885:
	l.sb	19(r1), r0
	l.j	.L886
	 l.nop

.L889:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L887
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L887:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	0(r1), r17
	l.lbz	r17, 19(r1)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.andi	r17, r17, 0xff
	l.addi	r17, r17, 1
	l.andi	r17, r17, 0xff
	l.sb	19(r1), r17
.L886:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L888
	 l.nop

	l.lbz	r19, 19(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L889
	 l.nop

.L888:
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L890
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L892
	 l.nop

.L890:
	l.lwz	r17, 8(r1)
.L892:
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.sw	12(r1), r0
	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L895
	 l.nop

	l.lwz	r17, 4(r1)
	l.sub	r17, r0, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L900
	 l.nop

	l.movhi	r17, hi(0)
.L900:
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
.L895:
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L896
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L901
	 l.nop

	l.movhi	r17, hi(0)
.L901:
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
.L896:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r1)
	l.movhi	r5, hi(0)
	l.or	r4, r19, r19
	l.or	r3, r17, r17
	l.jal	__udivmodsi4
	 l.nop

	l.or	r17, r11, r11
	l.sw	8(r1), r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L897
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.sw	8(r1), r17
.L897:
	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.sw	12(r1), r0
	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L903
	 l.nop

	l.lwz	r17, 4(r1)
	l.sub	r17, r0, r17
	l.sw	4(r1), r17
	l.ori	r17, r0, 1
	l.sw	12(r1), r17
.L903:
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L904
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
.L904:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r1)
	l.ori	r5, r0, 1
	l.or	r4, r19, r19
	l.or	r3, r17, r17
	l.jal	__udivmodsi4
	 l.nop

	l.or	r17, r11, r11
	l.sw	8(r1), r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L905
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.sw	8(r1), r17
.L905:
	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.addi	r1, r1, -12
	l.sh	6(r1), r3
	l.sh	4(r1), r4
	l.sw	0(r1), r5
	l.ori	r17, r0, 1
	l.sh	10(r1), r17
	l.sh	8(r1), r0
	l.j	.L909
	 l.nop

.L911:
	l.lhz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sh	4(r1), r17
	l.lhz	r17, 10(r1)
	l.add	r17, r17, r17
	l.sh	10(r1), r17
.L909:
	l.lhz	r19, 4(r1)
	l.lhz	r17, 6(r1)
	l.sfgeu	r19, r17
	l.bf	.L912
	 l.nop

	l.lhz	r17, 10(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L912
	 l.nop

	l.lhz	r17, 4(r1)
	l.ori	r19, r0, 16
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.xori	r19, r0, -1
	l.sfgts	r17, r19
	l.bf	.L911
	 l.nop

	l.j	.L912
	 l.nop

.L914:
	l.lhz	r19, 6(r1)
	l.lhz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L913
	 l.nop

	l.lhz	r19, 6(r1)
	l.lhz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sh	6(r1), r17
	l.lhz	r19, 8(r1)
	l.lhz	r17, 10(r1)
	l.or	r17, r19, r17
	l.sh	8(r1), r17
.L913:
	l.lhz	r17, 10(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sh	10(r1), r17
	l.lhz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sh	4(r1), r17
.L912:
	l.lhz	r17, 10(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L914
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L915
	 l.nop

	l.lhz	r17, 6(r1)
	l.j	.L916
	 l.nop

.L915:
	l.lhz	r17, 8(r1)
.L916:
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.ori	r17, r0, 1
	l.sw	16(r1), r17
	l.sw	12(r1), r0
	l.j	.L919
	 l.nop

.L921:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L919:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L922
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L922
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L921
	 l.nop

	l.j	.L922
	 l.nop

.L924:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L923
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L923:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L922:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L924
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L925
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L926
	 l.nop

.L925:
	l.lwz	r17, 12(r1)
.L926:
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.addi	r1, r1, -32
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.ori	r29, r0, 32
	l.sw	28(r1), r29
	l.lwz	r21, 4(r1)
	l.lwz	r23, 8(r1)
	l.or	r29, r21, r21
	l.sw	20(r1), r21
	l.or	r21, r23, r23
	l.sw	24(r1), r23
	l.lwz	r23, 0(r1)
	l.lwz	r21, 28(r1)
	l.and	r21, r23, r21
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L929
	 l.nop

	l.sw	16(r1), r0
	l.lwz	r23, 24(r1)
	l.lwz	r29, 0(r1)
	l.lwz	r21, 28(r1)
	l.sub	r21, r29, r21
	l.sll	r21, r23, r21
	l.sw	12(r1), r21
	l.j	.L930
	 l.nop

.L929:
	l.lwz	r21, 0(r1)
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L931
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.j	.L933
	 l.nop

.L931:
	l.lwz	r23, 24(r1)
	l.lwz	r21, 0(r1)
	l.sll	r21, r23, r21
	l.sw	16(r1), r21
	l.lwz	r21, 20(r1)
	l.or	r23, r21, r21
	l.lwz	r21, 0(r1)
	l.sll	r23, r23, r21
	l.lwz	r29, 24(r1)
	l.lwz	r31, 28(r1)
	l.lwz	r21, 0(r1)
	l.sub	r21, r31, r21
	l.srl	r21, r29, r21
	l.or	r21, r23, r21
	l.sw	12(r1), r21
.L930:
	l.lwz	r17, 12(r1)
	l.lwz	r19, 16(r1)
.L933:
	l.or	r25, r17, r17
	l.or	r27, r19, r19
	l.or	r11, r25, r25
	l.or	r12, r27, r27
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.addi	r1, r1, -32
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.ori	r29, r0, 32
	l.sw	28(r1), r29
	l.lwz	r21, 4(r1)
	l.lwz	r23, 8(r1)
	l.or	r29, r21, r21
	l.sw	20(r1), r21
	l.or	r21, r23, r23
	l.sw	24(r1), r23
	l.lwz	r23, 0(r1)
	l.lwz	r21, 28(r1)
	l.and	r21, r23, r21
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L936
	 l.nop

	l.lwz	r23, 20(r1)
	l.lwz	r21, 28(r1)
	l.addi	r21, r21, -1
	l.sra	r21, r23, r21
	l.sw	12(r1), r21
	l.lwz	r23, 20(r1)
	l.lwz	r29, 0(r1)
	l.lwz	r21, 28(r1)
	l.sub	r21, r29, r21
	l.sra	r21, r23, r21
	l.sw	16(r1), r21
	l.j	.L937
	 l.nop

.L936:
	l.lwz	r21, 0(r1)
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L938
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.j	.L940
	 l.nop

.L938:
	l.lwz	r23, 20(r1)
	l.lwz	r21, 0(r1)
	l.sra	r21, r23, r21
	l.sw	12(r1), r21
	l.lwz	r21, 20(r1)
	l.or	r29, r21, r21
	l.lwz	r23, 28(r1)
	l.lwz	r21, 0(r1)
	l.sub	r21, r23, r21
	l.sll	r23, r29, r21
	l.lwz	r29, 24(r1)
	l.lwz	r21, 0(r1)
	l.srl	r21, r29, r21
	l.or	r21, r23, r21
	l.sw	16(r1), r21
.L937:
	l.lwz	r17, 12(r1)
	l.lwz	r19, 16(r1)
.L940:
	l.or	r25, r17, r17
	l.or	r27, r19, r19
	l.or	r11, r25, r25
	l.or	r12, r27, r27
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.addi	r1, r1, -136
	l.sw	96(r1), r14
	l.sw	100(r1), r16
	l.sw	104(r1), r18
	l.sw	108(r1), r20
	l.sw	112(r1), r22
	l.sw	116(r1), r24
	l.sw	120(r1), r26
	l.sw	124(r1), r28
	l.sw	128(r1), r30
	l.sw	132(r1), r9
	l.sw	88(r1), r3
	l.sw	92(r1), r4
	l.lwz	r17, 88(r1)
	l.ori	r11, r0, 24
	l.srl	r7, r17, r11
	l.movhi	r6, hi(0)
	l.lwz	r17, 88(r1)
	l.ori	r19, r0, 8
	l.srl	r27, r17, r19
	l.movhi	r25, hi(0)
	l.andi	r21, r25, 0
	l.andi	r23, r27, 65280
	l.or	r17, r6, r21
	l.sw	0(r1), r17
	l.or	r17, r7, r23
	l.sw	4(r1), r17
	l.lwz	r17, 88(r1)
	l.or	r27, r19, r19
	l.sll	r19, r17, r27
	l.lwz	r17, 92(r1)
	l.or	r25, r11, r11
	l.srl	r31, r17, r25
	l.or	r31, r19, r31
	l.lwz	r17, 88(r1)
	l.srl	r29, r17, r25
	l.andi	r20, r29, 0
	l.movhi	r17, hi(16711680)
	l.and	r22, r31, r17
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.or	r21, r21, r20
	l.sw	8(r1), r21
	l.or	r17, r19, r19
	l.or	r17, r17, r22
	l.sw	12(r1), r17
	l.lwz	r17, 88(r1)
	l.sll	r19, r17, r25
	l.lwz	r17, 92(r1)
	l.srl	r18, r17, r27
	l.or	r18, r19, r18
	l.lwz	r17, 88(r1)
	l.srl	r16, r17, r27
	l.andi	r17, r16, 0
	l.sw	16(r1), r17
	l.movhi	r17, hi(-16777216)
	l.and	r17, r18, r17
	l.sw	20(r1), r17
	l.lwz	r21, 8(r1)
	l.lwz	r23, 12(r1)
	l.or	r29, r21, r21
	l.lwz	r17, 16(r1)
	l.lwz	r19, 20(r1)
	l.or	r31, r17, r17
	l.or	r29, r29, r31
	l.sw	24(r1), r29
	l.or	r21, r23, r23
	l.or	r17, r19, r19
	l.or	r17, r21, r17
	l.sw	28(r1), r17
	l.lwz	r17, 92(r1)
	l.srl	r17, r17, r25
	l.lwz	r19, 88(r1)
	l.sll	r8, r19, r27
	l.or	r8, r17, r8
	l.lwz	r17, 92(r1)
	l.sll	r9, r17, r27
	l.andi	r17, r8, 255
	l.sw	32(r1), r17
	l.andi	r17, r9, 0
	l.sw	36(r1), r17
	l.lwz	r21, 24(r1)
	l.lwz	r23, 28(r1)
	l.or	r29, r21, r21
	l.lwz	r17, 32(r1)
	l.lwz	r19, 36(r1)
	l.or	r31, r17, r17
	l.or	r29, r29, r31
	l.sw	40(r1), r29
	l.or	r21, r23, r23
	l.or	r17, r19, r19
	l.or	r17, r21, r17
	l.sw	44(r1), r17
	l.lwz	r17, 92(r1)
	l.srl	r17, r17, r27
	l.lwz	r19, 88(r1)
	l.sll	r12, r19, r25
	l.or	r12, r17, r12
	l.lwz	r17, 92(r1)
	l.sll	r13, r17, r25
	l.andi	r17, r12, 65280
	l.sw	48(r1), r17
	l.andi	r17, r13, 0
	l.sw	52(r1), r17
	l.lwz	r21, 40(r1)
	l.lwz	r23, 44(r1)
	l.or	r29, r21, r21
	l.lwz	r17, 48(r1)
	l.lwz	r19, 52(r1)
	l.or	r31, r17, r17
	l.or	r14, r29, r31
	l.or	r21, r23, r23
	l.or	r17, r19, r19
	l.or	r15, r21, r17
	l.lwz	r17, 92(r1)
	l.sll	r17, r17, r27
	l.sw	56(r1), r17
	l.sw	60(r1), r0
	l.movhi	r17, hi(16711680)
	l.lwz	r19, 56(r1)
	l.lwz	r21, 60(r1)
	l.or	r23, r19, r19
	l.and	r28, r23, r17
	l.or	r17, r21, r21
	l.andi	r30, r17, 0
	l.or	r24, r14, r28
	l.or	r26, r15, r30
	l.lwz	r17, 92(r1)
	l.sll	r17, r17, r25
	l.sw	64(r1), r17
	l.sw	68(r1), r0
	l.lwz	r17, 64(r1)
	l.lwz	r19, 68(r1)
	l.or	r21, r17, r17
	l.or	r21, r24, r21
	l.sw	72(r1), r21
	l.or	r17, r19, r19
	l.or	r17, r26, r17
	l.sw	76(r1), r17
	l.lwz	r17, 72(r1)
	l.lwz	r19, 76(r1)
	l.or	r21, r17, r17
	l.sw	80(r1), r21
	l.or	r17, r19, r19
	l.sw	84(r1), r17
	l.lwz	r17, 80(r1)
	l.lwz	r19, 84(r1)
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 96(r1)
	l.lwz	r16, 100(r1)
	l.lwz	r18, 104(r1)
	l.lwz	r20, 108(r1)
	l.lwz	r22, 112(r1)
	l.lwz	r24, 116(r1)
	l.lwz	r26, 120(r1)
	l.lwz	r28, 124(r1)
	l.lwz	r30, 128(r1)
	l.lwz	r9, 132(r1)
	l.addi	r1, r1, 136
	l.jr	r9
	 l.nop

	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.ori	r23, r0, 24
	l.srl	r19, r17, r23
	l.lwz	r17, 0(r1)
	l.ori	r21, r0, 8
	l.srl	r17, r17, r21
	l.andi	r17, r17, 65280
	l.or	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.sll	r21, r17, r21
	l.movhi	r17, hi(16711680)
	l.and	r17, r21, r17
	l.or	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.sll	r17, r17, r23
	l.or	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.addi	r1, r1, -16
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	12(r1), r17
	l.lwz	r19, 12(r1)
	l.ori	r17, r0, 65535
	l.sfgtu	r19, r17
	l.bf	.L949
	 l.nop

	l.ori	r17, r0, 16
	l.j	.L950
	 l.nop

.L949:
	l.movhi	r17, hi(0)
.L950:
	l.sw	8(r1), r17
	l.ori	r19, r0, 16
	l.lwz	r17, 8(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 65280
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L951
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L952
	 l.nop

.L951:
	l.movhi	r17, hi(0)
.L952:
	l.sw	8(r1), r17
	l.ori	r19, r0, 8
	l.lwz	r17, 8(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 240
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L953
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L954
	 l.nop

.L953:
	l.movhi	r17, hi(0)
.L954:
	l.sw	8(r1), r17
	l.ori	r19, r0, 4
	l.lwz	r17, 8(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 12
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L955
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L956
	 l.nop

.L955:
	l.movhi	r17, hi(0)
.L956:
	l.sw	8(r1), r17
	l.ori	r19, r0, 2
	l.lwz	r17, 8(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 2
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L959
	 l.nop

	l.movhi	r17, hi(0)
.L959:
	l.andi	r17, r17, 0xff
	l.or	r21, r17, r17
	l.ori	r19, r0, 2
	l.lwz	r17, 12(r1)
	l.sub	r17, r19, r17
	l.mul	r19, r21, r17
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.addi	r1, r1, -32
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r21, 8(r1)
	l.lwz	r23, 12(r1)
	l.or	r25, r21, r21
	l.sw	24(r1), r21
	l.or	r21, r23, r23
	l.sw	28(r1), r23
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.sw	16(r1), r17
	l.or	r17, r19, r19
	l.sw	20(r1), r19
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfges	r19, r17
	l.bf	.L961
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L966
	 l.nop

.L961:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfles	r19, r17
	l.bf	.L963
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L966
	 l.nop

.L963:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfgeu	r19, r17
	l.bf	.L964
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L966
	 l.nop

.L964:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfleu	r19, r17
	l.bf	.L965
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L966
	 l.nop

.L965:
	l.ori	r17, r0, 1
.L966:
	l.or	r11, r17, r17
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__cmpdi2
	 l.nop

	l.or	r17, r11, r11
	l.addi	r17, r17, -1
	l.or	r11, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.addi	r1, r1, -16
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	12(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 65535
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L972
	 l.nop

	l.ori	r17, r0, 16
	l.j	.L973
	 l.nop

.L972:
	l.movhi	r17, hi(0)
.L973:
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 8(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 255
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L974
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L975
	 l.nop

.L974:
	l.movhi	r17, hi(0)
.L975:
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 8(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 15
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L976
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L977
	 l.nop

.L976:
	l.movhi	r17, hi(0)
.L977:
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 8(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L978
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L979
	 l.nop

.L978:
	l.movhi	r17, hi(0)
.L979:
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 8(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 3
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.xori	r17, r17, -1
	l.andi	r19, r17, 1
	l.lwz	r17, 12(r1)
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.ori	r21, r0, 2
	l.sub	r17, r21, r17
	l.sub	r19, r0, r19
	l.and	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.addi	r1, r1, -32
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.ori	r13, r0, 32
	l.sw	28(r1), r13
	l.lwz	r25, 4(r1)
	l.lwz	r27, 8(r1)
	l.or	r13, r25, r25
	l.sw	20(r1), r25
	l.or	r25, r27, r27
	l.sw	24(r1), r27
	l.lwz	r27, 0(r1)
	l.lwz	r25, 28(r1)
	l.and	r25, r27, r25
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L983
	 l.nop

	l.sw	12(r1), r0
	l.lwz	r27, 20(r1)
	l.lwz	r13, 0(r1)
	l.lwz	r25, 28(r1)
	l.sub	r25, r13, r25
	l.srl	r25, r27, r25
	l.sw	16(r1), r25
	l.j	.L984
	 l.nop

.L983:
	l.lwz	r25, 0(r1)
	l.movhi	r27, hi(0)
	l.sfne	r25, r27
	l.bf	.L985
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.j	.L987
	 l.nop

.L985:
	l.lwz	r27, 20(r1)
	l.lwz	r25, 0(r1)
	l.srl	r25, r27, r25
	l.sw	12(r1), r25
	l.lwz	r27, 20(r1)
	l.lwz	r13, 28(r1)
	l.lwz	r25, 0(r1)
	l.sub	r25, r13, r25
	l.sll	r27, r27, r25
	l.lwz	r13, 24(r1)
	l.lwz	r25, 0(r1)
	l.srl	r25, r13, r25
	l.or	r25, r27, r25
	l.sw	16(r1), r25
.L984:
	l.lwz	r21, 12(r1)
	l.lwz	r23, 16(r1)
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L987:
	l.or	r29, r17, r17
	l.or	r31, r19, r19
	l.or	r11, r29, r29
	l.or	r12, r31, r31
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.addi	r1, r1, -28
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.ori	r25, r0, 16
	l.sw	24(r1), r25
	l.xori	r27, r0, -1
	l.lwz	r25, 24(r1)
	l.srl	r25, r27, r25
	l.sw	20(r1), r25
	l.lwz	r27, 4(r1)
	l.lwz	r25, 20(r1)
	l.and	r27, r27, r25
	l.lwz	r29, 0(r1)
	l.lwz	r25, 20(r1)
	l.and	r25, r29, r25
	l.mul	r25, r27, r25
	l.sw	12(r1), r25
	l.lwz	r27, 12(r1)
	l.lwz	r25, 24(r1)
	l.srl	r25, r27, r25
	l.sw	16(r1), r25
	l.lwz	r27, 12(r1)
	l.lwz	r25, 20(r1)
	l.and	r25, r27, r25
	l.sw	12(r1), r25
	l.lwz	r27, 4(r1)
	l.lwz	r25, 24(r1)
	l.srl	r27, r27, r25
	l.lwz	r29, 0(r1)
	l.lwz	r25, 20(r1)
	l.and	r25, r29, r25
	l.mul	r25, r27, r25
	l.lwz	r27, 16(r1)
	l.add	r25, r27, r25
	l.sw	16(r1), r25
	l.lwz	r27, 12(r1)
	l.lwz	r29, 16(r1)
	l.lwz	r25, 20(r1)
	l.and	r29, r29, r25
	l.lwz	r25, 24(r1)
	l.sll	r25, r29, r25
	l.add	r25, r27, r25
	l.sw	12(r1), r25
	l.lwz	r27, 16(r1)
	l.lwz	r25, 24(r1)
	l.srl	r25, r27, r25
	l.sw	8(r1), r25
	l.lwz	r27, 12(r1)
	l.lwz	r25, 24(r1)
	l.srl	r25, r27, r25
	l.sw	16(r1), r25
	l.lwz	r27, 12(r1)
	l.lwz	r25, 20(r1)
	l.and	r25, r27, r25
	l.sw	12(r1), r25
	l.lwz	r27, 0(r1)
	l.lwz	r25, 24(r1)
	l.srl	r27, r27, r25
	l.lwz	r29, 4(r1)
	l.lwz	r25, 20(r1)
	l.and	r25, r29, r25
	l.mul	r25, r27, r25
	l.lwz	r27, 16(r1)
	l.add	r25, r27, r25
	l.sw	16(r1), r25
	l.lwz	r27, 12(r1)
	l.lwz	r29, 16(r1)
	l.lwz	r25, 20(r1)
	l.and	r29, r29, r25
	l.lwz	r25, 24(r1)
	l.sll	r25, r29, r25
	l.add	r25, r27, r25
	l.sw	12(r1), r25
	l.lwz	r25, 8(r1)
	l.or	r29, r25, r25
	l.lwz	r27, 16(r1)
	l.lwz	r25, 24(r1)
	l.srl	r25, r27, r25
	l.add	r25, r29, r25
	l.sw	8(r1), r25
	l.lwz	r25, 8(r1)
	l.or	r31, r25, r25
	l.lwz	r27, 4(r1)
	l.lwz	r25, 24(r1)
	l.srl	r27, r27, r25
	l.lwz	r29, 0(r1)
	l.lwz	r25, 24(r1)
	l.srl	r25, r29, r25
	l.mul	r25, r27, r25
	l.add	r25, r31, r25
	l.sw	8(r1), r25
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.addi	r1, r1, -68
	l.sw	40(r1), r16
	l.sw	44(r1), r18
	l.sw	48(r1), r20
	l.sw	52(r1), r22
	l.sw	56(r1), r24
	l.sw	60(r1), r26
	l.sw	64(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r21, 8(r1)
	l.lwz	r23, 12(r1)
	l.or	r25, r21, r21
	l.sw	32(r1), r25
	l.or	r21, r23, r23
	l.sw	36(r1), r21
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.sw	24(r1), r21
	l.or	r17, r19, r19
	l.sw	28(r1), r17
	l.lwz	r17, 36(r1)
	l.lwz	r19, 28(r1)
	l.or	r4, r19, r19
	l.or	r3, r17, r17
	l.jal	__muldsi3
	 l.nop

	l.or	r24, r11, r11
	l.or	r26, r12, r12
	l.or	r17, r24, r24
	l.sw	16(r1), r17
	l.or	r17, r26, r26
	l.sw	20(r1), r17
	l.lwz	r17, 16(r1)
	l.or	r21, r17, r17
	l.lwz	r17, 32(r1)
	l.or	r19, r17, r17
	l.lwz	r17, 28(r1)
	l.mul	r19, r19, r17
	l.lwz	r17, 36(r1)
	l.lwz	r23, 24(r1)
	l.mul	r17, r17, r23
	l.add	r17, r19, r17
	l.add	r17, r21, r17
	l.sw	16(r1), r17
	l.lwz	r16, 16(r1)
	l.lwz	r18, 20(r1)
	l.or	r20, r16, r16
	l.or	r22, r18, r18
	l.or	r11, r20, r20
	l.or	r12, r22, r22
	l.lwz	r16, 40(r1)
	l.lwz	r18, 44(r1)
	l.lwz	r20, 48(r1)
	l.lwz	r22, 52(r1)
	l.lwz	r24, 56(r1)
	l.lwz	r26, 60(r1)
	l.lwz	r9, 64(r1)
	l.addi	r1, r1, 68
	l.jr	r9
	 l.nop

	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r21, 0(r1)
	l.lwz	r23, 4(r1)
	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r19, r27, r23
	l.sfgtu	r19, r27
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L998
	 l.nop

	l.movhi	r15, hi(0)
.L998:
	l.sub	r17, r25, r21
	l.sub	r21, r17, r15
	l.or	r17, r21, r21
	l.or	r8, r17, r17
	l.or	r9, r19, r19
	l.or	r12, r8, r8
	l.or	r13, r9, r9
	l.or	r29, r12, r12
	l.or	r31, r13, r13
	l.or	r11, r29, r29
	l.or	r12, r31, r31
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.addi	r1, r1, -20
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.sw	8(r1), r21
	l.or	r17, r19, r19
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.xor	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 16(r1)
	l.xor	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 8
	l.srl	r17, r17, r19
	l.lwz	r19, 16(r1)
	l.xor	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 4
	l.srl	r17, r17, r19
	l.lwz	r19, 16(r1)
	l.xor	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.andi	r17, r17, 15
	l.ori	r19, r0, 27030
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 4(r1)
	l.xor	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 8
	l.srl	r17, r17, r19
	l.lwz	r19, 4(r1)
	l.xor	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 4
	l.srl	r17, r17, r19
	l.lwz	r19, 4(r1)
	l.xor	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 15
	l.ori	r19, r0, 27030
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.addi	r1, r1, -56
	l.sw	20(r1), r16
	l.sw	24(r1), r18
	l.sw	28(r1), r20
	l.sw	32(r1), r22
	l.sw	36(r1), r24
	l.sw	40(r1), r26
	l.sw	44(r1), r28
	l.sw	48(r1), r30
	l.sw	52(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r24, 0(r1)
	l.lwz	r26, 4(r1)
	l.or	r15, r24, r24
	l.sw	12(r1), r15
	l.or	r15, r26, r26
	l.sw	16(r1), r15
	l.lwz	r15, 12(r1)
	l.ori	r11, r0, 31
	l.sll	r15, r15, r11
	l.lwz	r11, 16(r1)
	l.ori	r5, r0, 1
	l.srl	r23, r11, r5
	l.or	r23, r15, r23
	l.lwz	r15, 12(r1)
	l.srl	r21, r15, r5
	l.movhi	r15, hi(1431633920)
	l.ori	r15, r15, 21845
	l.and	r16, r21, r15
	l.movhi	r15, hi(1431633920)
	l.ori	r15, r15, 21845
	l.and	r18, r23, r15
	l.lwz	r12, 12(r1)
	l.lwz	r13, 16(r1)
	l.sub	r23, r13, r18
	l.sfgtu	r23, r13
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L1008
	 l.nop

	l.movhi	r15, hi(0)
.L1008:
	l.sub	r21, r12, r16
	l.sub	r13, r21, r15
	l.or	r21, r13, r13
	l.or	r13, r21, r21
	l.sw	12(r1), r13
	l.or	r21, r23, r23
	l.sw	16(r1), r21
	l.lwz	r21, 12(r1)
	l.ori	r23, r0, 30
	l.sll	r21, r21, r23
	l.lwz	r23, 16(r1)
	l.ori	r13, r0, 2
	l.srl	r27, r23, r13
	l.or	r27, r21, r27
	l.lwz	r21, 12(r1)
	l.srl	r25, r21, r13
	l.movhi	r21, hi(858980352)
	l.ori	r21, r21, 13107
	l.and	r29, r25, r21
	l.movhi	r21, hi(858980352)
	l.ori	r21, r21, 13107
	l.and	r31, r27, r21
	l.lwz	r23, 12(r1)
	l.movhi	r21, hi(858980352)
	l.ori	r21, r21, 13107
	l.and	r6, r23, r21
	l.lwz	r23, 16(r1)
	l.movhi	r21, hi(858980352)
	l.ori	r21, r21, 13107
	l.and	r7, r23, r21
	l.add	r23, r31, r7
	l.sfltu	r23, r31
	l.ori	r25, r0, 1
	l.or	r25, r25, r25
	l.bf	.L1009
	 l.nop

	l.movhi	r25, hi(0)
.L1009:
	l.add	r21, r29, r6
	l.add	r25, r25, r21
	l.or	r21, r25, r25
	l.or	r25, r21, r21
	l.sw	12(r1), r25
	l.or	r21, r23, r23
	l.sw	16(r1), r21
	l.lwz	r21, 12(r1)
	l.ori	r23, r0, 28
	l.sll	r21, r21, r23
	l.lwz	r23, 16(r1)
	l.ori	r25, r0, 4
	l.srl	r19, r23, r25
	l.or	r19, r21, r19
	l.lwz	r21, 12(r1)
	l.srl	r17, r21, r25
	l.lwz	r8, 12(r1)
	l.lwz	r9, 16(r1)
	l.add	r23, r19, r9
	l.sfltu	r23, r19
	l.ori	r25, r0, 1
	l.or	r25, r25, r25
	l.bf	.L1010
	 l.nop

	l.movhi	r25, hi(0)
.L1010:
	l.add	r21, r17, r8
	l.add	r17, r25, r21
	l.or	r21, r17, r17
	l.or	r20, r21, r21
	l.or	r22, r23, r23
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r17, r20, r17
	l.sw	12(r1), r17
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r17, r22, r17
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.lwz	r19, 12(r1)
	l.movhi	r21, hi(0)
	l.srl	r30, r19, r21
	l.movhi	r28, hi(0)
	l.or	r19, r30, r30
	l.add	r17, r17, r19
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 8(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.lwz	r17, 8(r1)
	l.add	r17, r19, r17
	l.andi	r17, r17, 127
	l.or	r11, r17, r17
	l.lwz	r16, 20(r1)
	l.lwz	r18, 24(r1)
	l.lwz	r20, 28(r1)
	l.lwz	r22, 32(r1)
	l.lwz	r24, 36(r1)
	l.lwz	r26, 40(r1)
	l.lwz	r28, 44(r1)
	l.lwz	r30, 48(r1)
	l.lwz	r9, 52(r1)
	l.addi	r1, r1, 56
	l.jr	r9
	 l.nop

	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 1
	l.srl	r19, r17, r19
	l.movhi	r17, hi(1431633920)
	l.ori	r17, r17, 21845
	l.and	r17, r19, r17
	l.lwz	r19, 4(r1)
	l.sub	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 2
	l.srl	r19, r17, r19
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r19, r19, r17
	l.lwz	r21, 4(r1)
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r17, r21, r17
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 4
	l.srl	r19, r17, r19
	l.lwz	r17, 4(r1)
	l.add	r19, r19, r17
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.andi	r17, r17, 63
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
	.align 4
.LC20:
	.long	1072693248
	.long	0
	.section	.text
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	l.addi	r1, r1, -28
	l.sw	24(r1), r9
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.lwz	r21, 0(r1)
	l.ori	r23, r0, 31
	l.srl	r21, r21, r23
	l.andi	r21, r21, 0xff
	l.sw	12(r1), r21
	l.movhi	r21, ha(.LC20)
	l.lwz	r17, lo(.LC20)(r21)
	l.addi	r21, r21, lo(.LC20)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
	l.or	r21, r17, r17
	l.sw	16(r1), r21
	l.or	r17, r19, r19
	l.sw	20(r1), r17
.L1018:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1015
	 l.nop

	l.lwz	r5, 4(r1)
	l.lwz	r6, 8(r1)
	l.lwz	r3, 16(r1)
	l.lwz	r4, 20(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	16(r1), r21
	l.or	r17, r19, r19
	l.sw	20(r1), r17
.L1015:
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 31
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	0(r1), r17
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1023
	 l.nop

	l.lwz	r5, 4(r1)
	l.lwz	r6, 8(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.or	r21, r17, r17
	l.sw	4(r1), r21
	l.or	r17, r19, r19
	l.sw	8(r1), r17
	l.j	.L1018
	 l.nop

.L1023:
	l.nop
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1019
	 l.nop

	l.movhi	r17, ha(.LC20)
	l.lwz	r5, 16(r1)
	l.lwz	r6, 20(r1)
	l.lwz	r3, lo(.LC20)(r17)
	l.addi	r17, r17, lo(.LC20)
	l.addi	r17, r17, 4
	l.lwz	r4, 0(r17)
	l.jal	__divdf3
	 l.nop

	l.or	r21, r11, r11
	l.or	r23, r12, r12
	l.or	r17, r21, r21
	l.or	r19, r23, r23
	l.j	.L1021
	 l.nop

.L1019:
	l.lwz	r17, 16(r1)
	l.lwz	r19, 20(r1)
.L1021:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC21:
	.long	1065353216
	.section	.text
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 31
	l.srl	r17, r17, r19
	l.andi	r17, r17, 0xff
	l.sw	8(r1), r17
	l.movhi	r17, ha(.LC21)
	l.lwz	r17, lo(.LC21)(r17)
	l.sw	12(r1), r17
.L1029:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1026
	 l.nop

	l.lwz	r4, 4(r1)
	l.lwz	r3, 12(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	12(r1), r17
.L1026:
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 31
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	0(r1), r17
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1034
	 l.nop

	l.lwz	r4, 4(r1)
	l.lwz	r3, 4(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	4(r1), r17
	l.j	.L1029
	 l.nop

.L1034:
	l.nop
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1030
	 l.nop

	l.movhi	r17, ha(.LC21)
	l.lwz	r4, 12(r1)
	l.lwz	r3, lo(.LC21)(r17)
	l.jal	__divsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.j	.L1032
	 l.nop

.L1030:
	l.lwz	r17, 12(r1)
.L1032:
	l.or	r19, r17, r17
	l.or	r11, r19, r19
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.addi	r1, r1, -32
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r21, 8(r1)
	l.lwz	r23, 12(r1)
	l.or	r25, r21, r21
	l.sw	24(r1), r21
	l.or	r21, r23, r23
	l.sw	28(r1), r23
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.sw	16(r1), r17
	l.or	r17, r19, r19
	l.sw	20(r1), r19
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfgeu	r19, r17
	l.bf	.L1037
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L1042
	 l.nop

.L1037:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L1039
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L1042
	 l.nop

.L1039:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfgeu	r19, r17
	l.bf	.L1040
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L1042
	 l.nop

.L1040:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfleu	r19, r17
	l.bf	.L1041
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L1042
	 l.nop

.L1041:
	l.ori	r17, r0, 1
.L1042:
	l.or	r11, r17, r17
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.lwz	r21, 0(r1)
	l.lwz	r23, 4(r1)
	l.or	r5, r21, r21
	l.or	r6, r23, r23
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__ucmpdi2
	 l.nop

	l.or	r17, r11, r11
	l.addi	r17, r17, -1
	l.or	r11, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.global	__divsf3
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__divdf3
	.global	__gedf2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__mulsf3
	.global	__nesf2
	.global	__addsf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__muldi3
	.global	__ltsf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
