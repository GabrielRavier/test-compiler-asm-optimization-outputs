	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.addi	r1, r1, -24
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L2
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	20(r1), r17
	l.j	.L3
	 l.nop

.L4:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, -1
	l.sw	12(r1), r17
	l.lwz	r17, 20(r1)
	l.addi	r17, r17, -1
	l.sw	20(r1), r17
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.lwz	r19, 20(r1)
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
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfeq	r19, r17
	l.bf	.L5
	 l.nop

	l.lwz	r17, 8(r1)
	l.sw	16(r1), r17
	l.j	.L6
	 l.nop

.L7:
	l.lwz	r17, 4(r1)
	l.addi	r19, r17, 1
	l.sw	4(r1), r19
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
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.addi	r1, r1, -20
	l.sw	12(r1), r3
	l.sw	8(r1), r4
	l.sw	4(r1), r5
	l.sw	0(r1), r6
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 0xff
	l.sw	16(r1), r17
	l.j	.L11
	 l.nop

.L13:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
.L11:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L12
	 l.nop

	l.lwz	r17, 8(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 12(r1)
	l.sb	0(r17), r19
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 16(r1)
	l.sfne	r17, r19
	l.bf	.L13
	 l.nop

.L12:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L14
	 l.nop

	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.j	.L15
	 l.nop

.L14:
	l.movhi	r17, hi(0)
.L15:
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
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
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
	l.j	.L18
	 l.nop

.L20:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L18:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L19
	 l.nop

	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.sfne	r17, r19
	l.bf	.L20
	 l.nop

.L19:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L21
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L23
	 l.nop

.L21:
	l.movhi	r17, hi(0)
.L23:
	l.nop
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.addi	r1, r1, -12
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.j	.L26
	 l.nop

.L28:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L26:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L27
	 l.nop

	l.lwz	r17, 8(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 4(r1)
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

	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sub	r17, r19, r17
	l.j	.L31
	 l.nop

.L29:
	l.movhi	r17, hi(0)
.L31:
	l.nop
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.j	.L34
	 l.nop

.L35:
	l.lwz	r19, 4(r1)
	l.addi	r17, r19, 1
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r21, r17, 1
	l.sw	12(r1), r21
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
	l.addi	r1, r1, 16
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
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
	l.j	.L39
	 l.nop

.L41:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.sfne	r17, r19
	l.bf	.L39
	 l.nop

	l.lwz	r19, 8(r1)
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
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 0xff
	l.sw	8(r1), r17
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
	l.lwz	r17, 8(r1)
	l.sfne	r17, r19
	l.bf	.L56
	 l.nop

.L55:
	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 12
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
	l.ori	r23, r0, 24
	l.sll	r17, r17, r23
	l.sra	r17, r17, r23
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r21
	l.bnf	.L63
	 l.nop

	l.or	r17, r19, r19
	l.addi	r19, r17, 1
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r23
	l.sra	r17, r17, r23
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L62
	 l.nop

	l.movhi	r19, hi(0)
	l.j	.L61
	 l.nop

.L63:
	l.nop
.L61:
	l.or	r17, r19, r19
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
	l.j	.L66
	 l.nop

.L68:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L66:
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
	l.bf	.L67
	 l.nop

	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L68
	 l.nop

.L67:
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
	l.j	.L72
	 l.nop

.L73:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L72:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L73
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
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
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	12(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L79
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L78
	 l.nop

.L81:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, -1
	l.sw	12(r1), r17
.L79:
	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L80
	 l.nop

	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L80
	 l.nop

	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L80
	 l.nop

	l.lwz	r17, 8(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L81
	 l.nop

.L80:
	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sub	r17, r19, r17
.L78:
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.addi	r1, r1, -12
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.j	.L84
	 l.nop

.L85:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.lwz	r19, 4(r1)
	l.sb	0(r19), r17
	l.lwz	r17, 4(r1)
	l.addi	r19, r17, 1
	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 2
	l.sw	4(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 2
	l.sw	8(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -2
	l.sw	0(r1), r17
.L84:
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 1
	l.sfgts	r19, r17
	l.bf	.L85
	 l.nop

	l.nop
	l.nop
	l.addi	r1, r1, 12
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
	l.bf	.L90
	 l.nop

	l.movhi	r17, hi(0)
.L90:
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
	l.bf	.L94
	 l.nop

	l.movhi	r17, hi(0)
.L94:
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
	l.bf	.L96
	 l.nop

	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 9
	l.sfne	r19, r17
	l.bf	.L97
	 l.nop

.L96:
	l.ori	r17, r0, 1
	l.j	.L99
	 l.nop

.L97:
	l.movhi	r17, hi(0)
.L99:
	l.nop
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
	l.bf	.L102
	 l.nop

	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 127
	l.sfne	r19, r17
	l.bf	.L103
	 l.nop

.L102:
	l.ori	r17, r0, 1
	l.j	.L105
	 l.nop

.L103:
	l.movhi	r17, hi(0)
.L105:
	l.nop
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
	l.bf	.L110
	 l.nop

	l.movhi	r17, hi(0)
.L110:
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
	l.bf	.L114
	 l.nop

	l.movhi	r17, hi(0)
.L114:
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
	l.bf	.L118
	 l.nop

	l.movhi	r17, hi(0)
.L118:
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
	l.bf	.L122
	 l.nop

	l.movhi	r17, hi(0)
.L122:
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
	l.bf	.L124
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -9
	l.ori	r17, r0, 4
	l.sfgtu	r19, r17
	l.bf	.L125
	 l.nop

.L124:
	l.ori	r17, r0, 1
	l.j	.L127
	 l.nop

.L125:
	l.movhi	r17, hi(0)
.L127:
	l.nop
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
	l.bf	.L132
	 l.nop

	l.movhi	r17, hi(0)
.L132:
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
	l.bf	.L134
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -127
	l.ori	r17, r0, 32
	l.sfleu	r19, r17
	l.bf	.L134
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -8232
	l.ori	r17, r0, 1
	l.sfleu	r19, r17
	l.bf	.L134
	 l.nop

	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r19, r19, r17
	l.ori	r17, r0, 2
	l.sfgtu	r19, r17
	l.bf	.L135
	 l.nop

.L134:
	l.ori	r17, r0, 1
	l.j	.L137
	 l.nop

.L135:
	l.movhi	r17, hi(0)
.L137:
	l.nop
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
	l.bf	.L142
	 l.nop

	l.movhi	r17, hi(0)
.L142:
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
	l.bf	.L144
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.andi	r19, r17, 127
	l.ori	r17, r0, 32
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L151
	 l.nop

	l.movhi	r17, hi(0)
.L151:
	l.andi	r17, r17, 0xff
	l.j	.L145
	 l.nop

.L144:
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 8231
	l.sfleu	r19, r17
	l.bf	.L146
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L146
	 l.nop

	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r19, r19, r17
	l.ori	r17, r0, 8184
	l.sfgtu	r19, r17
	l.bf	.L147
	 l.nop

.L146:
	l.ori	r17, r0, 1
	l.j	.L145
	 l.nop

.L147:
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r19, r19, r17
	l.movhi	r17, hi(1048576)
	l.ori	r17, r17, 3
	l.sfgtu	r19, r17
	l.bf	.L148
	 l.nop

	l.lwz	r17, 0(r1)
	l.andi	r19, r17, 65534
	l.ori	r17, r0, 65534
	l.sfne	r19, r17
	l.bf	.L149
	 l.nop

.L148:
	l.movhi	r17, hi(0)
	l.j	.L145
	 l.nop

.L149:
	l.ori	r17, r0, 1
.L145:
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
	l.bf	.L153
	 l.nop

	l.lwz	r17, 0(r1)
	l.ori	r17, r17, 32
	l.addi	r19, r17, -97
	l.ori	r17, r0, 5
	l.sfgtu	r19, r17
	l.bf	.L154
	 l.nop

.L153:
	l.ori	r17, r0, 1
	l.j	.L156
	 l.nop

.L154:
	l.movhi	r17, hi(0)
.L156:
	l.nop
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
	l.bnf	.L173
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L164
	 l.nop

.L173:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L174
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L164
	 l.nop

.L174:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L175
	 l.nop

	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__subdf3
	 l.nop

	l.or	r23, r11, r11
	l.or	r21, r12, r12
	l.or	r19, r23, r23
	l.or	r17, r21, r21
	l.j	.L164
	 l.nop

.L175:
	l.movhi	r21, ha(.LC0)
	l.lwz	r19, lo(.LC0)(r21)
	l.addi	r17, r21, lo(.LC0)
	l.addi	r17, r17, 4
	l.lwz	r17, 0(r17)
.L164:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
	l.bnf	.L189
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L180
	 l.nop

.L189:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L190
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L180
	 l.nop

.L190:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L191
	 l.nop

	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__subsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.j	.L180
	 l.nop

.L191:
	l.movhi	r19, ha(.LC1)
	l.lwz	r17, lo(.LC1)(r19)
.L180:
	l.or	r11, r17, r17
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
	l.bnf	.L208
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L196
	 l.nop

.L208:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L209
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L196
	 l.nop

.L209:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L199
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L200
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L196
	 l.nop

.L200:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L196
	 l.nop

.L199:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L210
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L196
	 l.nop

.L210:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
.L196:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
	l.bnf	.L227
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L215
	 l.nop

.L227:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L228
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L215
	 l.nop

.L228:
	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L218
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L219
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L215
	 l.nop

.L219:
	l.lwz	r17, 4(r1)
	l.j	.L215
	 l.nop

.L218:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L229
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L215
	 l.nop

.L229:
	l.lwz	r17, 4(r1)
.L215:
	l.or	r11, r17, r17
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
	l.bnf	.L246
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L234
	 l.nop

.L246:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L247
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L234
	 l.nop

.L247:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L237
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L238
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L234
	 l.nop

.L238:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L234
	 l.nop

.L237:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L248
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L234
	 l.nop

.L248:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
.L234:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
	l.bnf	.L265
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L253
	 l.nop

.L265:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L266
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L253
	 l.nop

.L266:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L256
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L257
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L253
	 l.nop

.L257:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L253
	 l.nop

.L256:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L267
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L253
	 l.nop

.L267:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
.L253:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
	l.bnf	.L284
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L272
	 l.nop

.L284:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L285
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L272
	 l.nop

.L285:
	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L275
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L276
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L272
	 l.nop

.L276:
	l.lwz	r17, 0(r1)
	l.j	.L272
	 l.nop

.L275:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L286
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L272
	 l.nop

.L286:
	l.lwz	r17, 0(r1)
.L272:
	l.or	r11, r17, r17
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
	l.bnf	.L303
	 l.nop

	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L291
	 l.nop

.L303:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L304
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L291
	 l.nop

.L304:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L294
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L295
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L291
	 l.nop

.L295:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.j	.L291
	 l.nop

.L294:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L305
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.j	.L291
	 l.nop

.L305:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
.L291:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
	l.j	.L308
	 l.nop

.L309:
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
.L308:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L309
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
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.or	r19, r17, r17
	l.movhi	r21, hi(0)
	l.movhi	r17, ha(seed)
	l.sw	lo(seed)(r17), r21
	l.addi	r17, r17, lo(seed)
	l.addi	r17, r17, 4
	l.sw	0(r17), r19
	l.nop
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.movhi	r17, ha(seed)
	l.lwz	r19, lo(seed)(r17)
	l.addi	r17, r17, lo(seed)
	l.addi	r17, r17, 4
	l.lwz	r17, 0(r17)
	l.movhi	r5, hi(1481703424)
	l.ori	r5, r5, 62509
	l.movhi	r6, hi(1284833280)
	l.ori	r6, r6, 32557
	l.or	r3, r19, r19
	l.or	r4, r17, r17
	l.jal	__muldi3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r27, r19, r19
	l.or	r21, r17, r17
	l.movhi	r25, hi(0)
	l.ori	r23, r0, 1
	l.add	r19, r21, r23
	l.sfltu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L317
	 l.nop

	l.movhi	r21, hi(0)
.L317:
	l.add	r17, r27, r25
	l.add	r17, r21, r17
	l.or	r21, r17, r17
	l.movhi	r17, ha(seed)
	l.sw	lo(seed)(r17), r21
	l.addi	r17, r17, lo(seed)
	l.addi	r17, r17, 4
	l.sw	0(r17), r19
	l.movhi	r17, ha(seed)
	l.lwz	r17, lo(seed)(r17)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.or	r11, r17, r17
	l.lwz	r9, 0(r1)
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.addi	r1, r1, -8
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L319
	 l.nop

	l.lwz	r17, 4(r1)
	l.sw	4(r17), r0
	l.lwz	r17, 4(r1)
	l.lwz	r19, 4(r17)
	l.lwz	r17, 4(r1)
	l.sw	0(r17), r19
	l.j	.L318
	 l.nop

.L319:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r1)
	l.sw	4(r17), r19
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L318
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 4(r1)
	l.sw	4(r17), r19
.L318:
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.addi	r1, r1, -4
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L323
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 0(r1)
	l.lwz	r19, 4(r19)
	l.sw	4(r17), r19
.L323:
	l.lwz	r17, 0(r1)
	l.lwz	r17, 4(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L325
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r17, 4(r17)
	l.lwz	r19, 0(r1)
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L325:
	l.nop
	l.addi	r1, r1, 4
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -40
	l.sw	32(r1), r16
	l.sw	36(r1), r9
	l.sw	16(r1), r3
	l.sw	12(r1), r4
	l.sw	8(r1), r5
	l.sw	4(r1), r6
	l.sw	0(r1), r7
	l.lwz	r16, 4(r1)
	l.or	r17, r16, r16
	l.addi	r17, r16, -1
	l.sw	24(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.sw	20(r1), r17
	l.sw	28(r1), r0
	l.j	.L328
	 l.nop

.L331:
	l.lwz	r17, 28(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 12(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.or	r4, r19, r19
	l.lwz	r3, 16(r1)
	l.jalr	r17
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L329
	 l.nop

	l.lwz	r17, 28(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 12(r1)
	l.add	r17, r19, r17
	l.j	.L330
	 l.nop

.L329:
	l.lwz	r17, 28(r1)
	l.addi	r17, r17, 1
	l.sw	28(r1), r17
.L328:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L331
	 l.nop

	l.lwz	r17, 20(r1)
	l.addi	r19, r17, 1
	l.lwz	r17, 8(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 20(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 12(r1)
	l.add	r17, r19, r17
	l.lwz	r5, 4(r1)
	l.lwz	r4, 16(r1)
	l.or	r3, r17, r17
	l.jal	memcpy
	 l.nop

	l.or	r17, r11, r11
.L330:
	l.or	r11, r17, r17
	l.lwz	r16, 32(r1)
	l.lwz	r9, 36(r1)
	l.addi	r1, r1, 40
	l.jr	r9
	 l.nop

	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -40
	l.sw	32(r1), r16
	l.sw	36(r1), r9
	l.sw	16(r1), r3
	l.sw	12(r1), r4
	l.sw	8(r1), r5
	l.sw	4(r1), r6
	l.sw	0(r1), r7
	l.lwz	r16, 4(r1)
	l.or	r17, r16, r16
	l.addi	r17, r16, -1
	l.sw	24(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.sw	20(r1), r17
	l.sw	28(r1), r0
	l.j	.L334
	 l.nop

.L337:
	l.lwz	r17, 28(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 12(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.or	r4, r19, r19
	l.lwz	r3, 16(r1)
	l.jalr	r17
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L335
	 l.nop

	l.lwz	r17, 28(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 12(r1)
	l.add	r17, r19, r17
	l.j	.L336
	 l.nop

.L335:
	l.lwz	r17, 28(r1)
	l.addi	r17, r17, 1
	l.sw	28(r1), r17
.L334:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L337
	 l.nop

	l.movhi	r17, hi(0)
.L336:
	l.or	r11, r17, r17
	l.lwz	r16, 32(r1)
	l.lwz	r9, 36(r1)
	l.addi	r1, r1, 40
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
	l.bf	.L340
	 l.nop

	l.sub	r17, r0, r17
.L340:
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
	l.j	.L344
	 l.nop

.L345:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L344:
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
	l.bf	.L345
	 l.nop

	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L346
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L348
	 l.nop

	l.ori	r17, r0, 1
	l.sw	4(r1), r17
.L346:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.j	.L348
	 l.nop

.L349:
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
.L348:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L349
	 l.nop

	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L350
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L352
	 l.nop

.L350:
	l.lwz	r17, 8(r1)
.L352:
	l.nop
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
	l.j	.L355
	 l.nop

.L356:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L355:
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
	l.bf	.L356
	 l.nop

	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L357
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L359
	 l.nop

	l.ori	r17, r0, 1
	l.sw	4(r1), r17
.L357:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.j	.L359
	 l.nop

.L360:
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
.L359:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L360
	 l.nop

	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L361
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L363
	 l.nop

.L361:
	l.lwz	r17, 8(r1)
.L363:
	l.nop
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
	l.addi	r1, r1, -24
	l.sw	16(r1), r16
	l.sw	20(r1), r9
	l.sw	0(r1), r3
	l.sw	8(r1), r0
	l.sw	12(r1), r0
	l.sw	4(r1), r0
	l.j	.L366
	 l.nop

.L367:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L366:
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
	l.bf	.L367
	 l.nop

	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L368
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L370
	 l.nop

	l.ori	r17, r0, 1
	l.sw	4(r1), r17
.L368:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.j	.L370
	 l.nop

.L371:
	l.lwz	r25, 8(r1)
	l.lwz	r27, 12(r1)
	l.or	r19, r25, r25
	l.or	r17, r27, r27
	l.ori	r21, r0, 30
	l.srl	r21, r17, r21
	l.ori	r23, r0, 2
	l.sll	r19, r19, r23
	l.or	r19, r21, r19
	l.sll	r17, r17, r23
	l.add	r23, r17, r27
	l.sfltu	r23, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L376
	 l.nop

	l.movhi	r17, hi(0)
.L376:
	l.add	r21, r19, r25
	l.add	r17, r17, r21
	l.or	r21, r17, r17
	l.or	r19, r21, r21
	l.or	r17, r23, r23
	l.add	r23, r17, r17
	l.sfltu	r23, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L377
	 l.nop

	l.movhi	r17, hi(0)
.L377:
	l.add	r21, r19, r19
	l.add	r17, r17, r21
	l.or	r21, r17, r17
	l.or	r19, r21, r21
	l.or	r17, r23, r23
	l.or	r25, r19, r19
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, 1
	l.sw	0(r1), r19
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r17, r17, -48
	l.or	r27, r17, r17
	l.ori	r19, r0, 31
	l.sra	r17, r17, r19
	l.or	r23, r17, r17
	l.sub	r19, r21, r27
	l.sfgtu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L378
	 l.nop

	l.movhi	r21, hi(0)
.L378:
	l.sub	r17, r25, r23
	l.sub	r17, r17, r21
	l.sw	8(r1), r17
	l.sw	12(r1), r19
.L370:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L371
	 l.nop

	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L372
	 l.nop

	l.movhi	r27, hi(0)
	l.movhi	r21, hi(0)
	l.lwz	r23, 8(r1)
	l.lwz	r25, 12(r1)
	l.sub	r19, r21, r25
	l.sfgtu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L379
	 l.nop

	l.movhi	r21, hi(0)
.L379:
	l.sub	r17, r27, r23
	l.sub	r17, r17, r21
	l.or	r21, r17, r17
	l.or	r17, r19, r19
	l.j	.L374
	 l.nop

.L372:
	l.lwz	r21, 8(r1)
	l.lwz	r17, 12(r1)
.L374:
	l.nop
	l.or	r11, r21, r21
	l.or	r12, r17, r17
	l.lwz	r16, 16(r1)
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
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
	l.j	.L381
	 l.nop

.L386:
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
	l.bf	.L382
	 l.nop

	l.lwz	r17, 8(r1)
	l.srl	r17, r17, r16
	l.sw	8(r1), r17
	l.j	.L381
	 l.nop

.L382:
	l.lwz	r19, 20(r1)
	l.ori	r17, r0, 1
	l.sflts	r19, r17
	l.bf	.L384
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
	l.j	.L381
	 l.nop

.L384:
	l.lwz	r17, 24(r1)
	l.j	.L385
	 l.nop

.L381:
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L386
	 l.nop

	l.movhi	r17, hi(0)
.L385:
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
	l.addi	r1, r1, -40
	l.sw	36(r1), r9
	l.sw	20(r1), r3
	l.sw	16(r1), r4
	l.sw	12(r1), r5
	l.sw	8(r1), r6
	l.sw	4(r1), r7
	l.sw	0(r1), r8
	l.lwz	r17, 12(r1)
	l.sw	32(r1), r17
	l.j	.L389
	 l.nop

.L393:
	l.lwz	r17, 32(r1)
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.or	r19, r17, r17
	l.lwz	r17, 8(r1)
	l.mul	r17, r19, r17
	l.lwz	r19, 16(r1)
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
	l.bf	.L390
	 l.nop

	l.lwz	r17, 28(r1)
	l.j	.L391
	 l.nop

.L390:
	l.lwz	r19, 24(r1)
	l.ori	r17, r0, 1
	l.sflts	r19, r17
	l.bf	.L392
	 l.nop

	l.lwz	r19, 28(r1)
	l.lwz	r17, 8(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 32(r1)
	l.addi	r17, r17, -1
	l.sw	32(r1), r17
.L392:
	l.lwz	r17, 32(r1)
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	32(r1), r17
.L389:
	l.lwz	r17, 32(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L393
	 l.nop

	l.movhi	r17, hi(0)
.L391:
	l.or	r11, r17, r17
	l.lwz	r9, 36(r1)
	l.addi	r1, r1, 40
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
	l.bf	.L399
	 l.nop

	l.movhi	r27, hi(0)
	l.movhi	r25, hi(0)
	l.sub	r23, r25, r19
	l.sfgtu	r23, r25
	l.ori	r19, r0, 1
	l.or	r19, r19, r19
	l.bf	.L403
	 l.nop

	l.movhi	r19, hi(0)
.L403:
	l.sub	r21, r27, r17
	l.sub	r17, r21, r19
	l.or	r21, r17, r17
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L399:
	l.or	r21, r17, r17
	l.or	r17, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	l.addi	r1, r1, -48
	l.sw	36(r1), r16
	l.sw	40(r1), r18
	l.sw	44(r1), r9
	l.sw	16(r1), r3
	l.sw	8(r1), r4
	l.sw	12(r1), r5
	l.sw	0(r1), r6
	l.sw	4(r1), r7
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__divdi3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r18, r19, r19
	l.or	r16, r17, r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.or	r3, r19, r19
	l.or	r4, r17, r17
	l.jal	__moddi3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r23, r19, r19
	l.or	r21, r17, r17
	l.lwz	r17, 16(r1)
	l.or	r19, r18, r18
	l.sw	0(r17), r19
	l.or	r19, r16, r16
	l.sw	4(r17), r19
	l.lwz	r17, 16(r1)
	l.or	r19, r23, r23
	l.sw	8(r17), r19
	l.or	r19, r21, r21
	l.sw	12(r17), r19
	l.lwz	r11, 16(r1)
	l.lwz	r16, 36(r1)
	l.lwz	r18, 40(r1)
	l.lwz	r9, 44(r1)
	l.addi	r1, r1, 48
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
	l.bf	.L408
	 l.nop

	l.sub	r17, r0, r17
.L408:
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
	l.bf	.L415
	 l.nop

	l.movhi	r27, hi(0)
	l.movhi	r25, hi(0)
	l.sub	r23, r25, r19
	l.sfgtu	r23, r25
	l.ori	r19, r0, 1
	l.or	r19, r19, r19
	l.bf	.L419
	 l.nop

	l.movhi	r19, hi(0)
.L419:
	l.sub	r21, r27, r17
	l.sub	r17, r21, r19
	l.or	r21, r17, r17
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L415:
	l.or	r21, r17, r17
	l.or	r17, r19, r19
	l.or	r11, r21, r21
	l.or	r12, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	l.addi	r1, r1, -48
	l.sw	36(r1), r16
	l.sw	40(r1), r18
	l.sw	44(r1), r9
	l.sw	16(r1), r3
	l.sw	8(r1), r4
	l.sw	12(r1), r5
	l.sw	0(r1), r6
	l.sw	4(r1), r7
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__divdi3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r18, r19, r19
	l.or	r16, r17, r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.or	r3, r19, r19
	l.or	r4, r17, r17
	l.jal	__moddi3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r23, r19, r19
	l.or	r21, r17, r17
	l.lwz	r17, 16(r1)
	l.or	r19, r18, r18
	l.sw	0(r17), r19
	l.or	r19, r16, r16
	l.sw	4(r17), r19
	l.lwz	r17, 16(r1)
	l.or	r19, r23, r23
	l.sw	8(r17), r19
	l.or	r19, r21, r21
	l.sw	12(r17), r19
	l.lwz	r11, 16(r1)
	l.lwz	r16, 36(r1)
	l.lwz	r18, 40(r1)
	l.lwz	r9, 44(r1)
	l.addi	r1, r1, 48
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
	l.j	.L424
	 l.nop

.L426:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L424:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L425
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 0(r1)
	l.sfne	r19, r17
	l.bf	.L426
	 l.nop

.L425:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L427
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L429
	 l.nop

.L427:
	l.movhi	r17, hi(0)
.L429:
	l.nop
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
	l.j	.L432
	 l.nop

.L434:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 4
	l.sw	0(r1), r17
.L432:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfne	r19, r17
	l.bf	.L433
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L433
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L434
	 l.nop

.L433:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L435
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L439
	 l.nop

	l.movhi	r17, hi(0)
.L439:
	l.andi	r17, r17, 0xff
	l.j	.L437
	 l.nop

.L435:
	l.xori	r17, r0, -1
.L437:
	l.nop
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
.L441:
	l.lwz	r19, 0(r1)
	l.addi	r17, r19, 4
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r21, r17, 4
	l.sw	8(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L441
	 l.nop

	l.lwz	r17, 4(r1)
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
	l.j	.L445
	 l.nop

.L446:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L445:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L446
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
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
	l.j	.L450
	 l.nop

.L452:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L450:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L451
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfne	r19, r17
	l.bf	.L451
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L451
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L452
	 l.nop

.L451:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L453
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L454
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L459
	 l.nop

	l.movhi	r17, hi(0)
.L459:
	l.andi	r17, r17, 0xff
	l.j	.L457
	 l.nop

.L454:
	l.xori	r17, r0, -1
	l.j	.L457
	 l.nop

.L453:
	l.movhi	r17, hi(0)
.L457:
	l.nop
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
	l.j	.L461
	 l.nop

.L463:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
.L461:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L462
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 4(r1)
	l.sfne	r19, r17
	l.bf	.L463
	 l.nop

.L462:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L464
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L466
	 l.nop

.L464:
	l.movhi	r17, hi(0)
.L466:
	l.nop
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
	l.j	.L469
	 l.nop

.L471:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L469:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L470
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L471
	 l.nop

.L470:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L472
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L473
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L478
	 l.nop

	l.movhi	r17, hi(0)
.L478:
	l.andi	r17, r17, 0xff
	l.j	.L476
	 l.nop

.L473:
	l.xori	r17, r0, -1
	l.j	.L476
	 l.nop

.L472:
	l.movhi	r17, hi(0)
.L476:
	l.nop
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
	l.j	.L480
	 l.nop

.L481:
	l.lwz	r19, 4(r1)
	l.addi	r17, r19, 4
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r21, r17, 4
	l.sw	12(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L480:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L481
	 l.nop

	l.lwz	r17, 8(r1)
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
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfne	r19, r17
	l.bf	.L485
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L486
	 l.nop

.L485:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.sfgeu	r19, r17
	l.bf	.L487
	 l.nop

	l.j	.L488
	 l.nop

.L489:
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
.L488:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L489
	 l.nop

	l.j	.L490
	 l.nop

.L487:
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.j	.L491
	 l.nop

.L492:
	l.lwz	r19, 4(r1)
	l.addi	r17, r19, 4
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r21, r17, 4
	l.sw	12(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L491:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L492
	 l.nop

.L490:
	l.lwz	r17, 8(r1)
.L486:
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
	l.j	.L495
	 l.nop

.L496:
	l.lwz	r17, 12(r1)
	l.addi	r19, r17, 4
	l.sw	12(r1), r19
	l.lwz	r19, 4(r1)
	l.sw	0(r17), r19
.L495:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L496
	 l.nop

	l.lwz	r17, 8(r1)
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
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfgeu	r19, r17
	l.bf	.L500
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.j	.L501
	 l.nop

.L502:
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
.L501:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L502
	 l.nop

	l.j	.L506
	 l.nop

.L500:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfeq	r19, r17
	l.bf	.L506
	 l.nop

	l.j	.L504
	 l.nop

.L505:
	l.lwz	r17, 8(r1)
	l.addi	r19, r17, 1
	l.sw	8(r1), r19
	l.lwz	r19, 4(r1)
	l.addi	r21, r19, 1
	l.sw	4(r1), r21
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L504:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L505
	 l.nop

.L506:
	l.nop
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.lwz	r21, 0(r1)
	l.addi	r23, r21, -32
	l.sll	r29, r17, r23
	l.movhi	r31, hi(0)
	l.ori	r21, r0, 1
	l.srl	r25, r17, r21
	l.ori	r27, r0, 31
	l.lwz	r21, 0(r1)
	l.sub	r21, r27, r21
	l.srl	r25, r25, r21
	l.lwz	r21, 0(r1)
	l.sll	r21, r19, r21
	l.or	r21, r25, r21
	l.lwz	r25, 0(r1)
	l.sll	r27, r17, r25
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L510
	 l.nop

	l.or	r21, r29, r29
.L510:
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L511
	 l.nop

	l.or	r27, r31, r31
.L511:
	l.lwz	r23, 0(r1)
	l.sub	r23, r0, r23
	l.andi	r23, r23, 63
	l.addi	r23, r23, -32
	l.srl	r13, r19, r23
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 1
	l.sll	r29, r19, r25
	l.ori	r31, r0, 31
	l.lwz	r25, 0(r1)
	l.sub	r25, r0, r25
	l.andi	r25, r25, 63
	l.sub	r25, r31, r25
	l.sll	r29, r29, r25
	l.lwz	r25, 0(r1)
	l.sub	r25, r0, r25
	l.andi	r25, r25, 63
	l.srl	r17, r17, r25
	l.or	r17, r29, r17
	l.lwz	r25, 0(r1)
	l.sub	r25, r0, r25
	l.andi	r25, r25, 63
	l.srl	r19, r19, r25
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L512
	 l.nop

	l.or	r17, r13, r13
.L512:
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L513
	 l.nop

	l.or	r19, r15, r15
.L513:
	l.or	r19, r19, r21
	l.or	r17, r17, r27
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.addi	r1, r1, -12
	l.sw	4(r1), r3
	l.sw	8(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.lwz	r21, 0(r1)
	l.addi	r23, r21, -32
	l.srl	r29, r17, r23
	l.movhi	r31, hi(0)
	l.ori	r21, r0, 1
	l.sll	r25, r17, r21
	l.ori	r27, r0, 31
	l.lwz	r21, 0(r1)
	l.sub	r21, r27, r21
	l.sll	r25, r25, r21
	l.lwz	r21, 0(r1)
	l.srl	r21, r19, r21
	l.or	r21, r25, r21
	l.lwz	r25, 0(r1)
	l.srl	r27, r17, r25
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L517
	 l.nop

	l.or	r21, r29, r29
.L517:
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L518
	 l.nop

	l.or	r27, r31, r31
.L518:
	l.lwz	r23, 0(r1)
	l.sub	r23, r0, r23
	l.andi	r23, r23, 63
	l.addi	r23, r23, -32
	l.sll	r13, r19, r23
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 1
	l.srl	r29, r19, r25
	l.ori	r31, r0, 31
	l.lwz	r25, 0(r1)
	l.sub	r25, r0, r25
	l.andi	r25, r25, 63
	l.sub	r25, r31, r25
	l.srl	r29, r29, r25
	l.lwz	r25, 0(r1)
	l.sub	r25, r0, r25
	l.andi	r25, r25, 63
	l.sll	r17, r17, r25
	l.or	r17, r29, r17
	l.lwz	r25, 0(r1)
	l.sub	r25, r0, r25
	l.andi	r25, r25, 63
	l.sll	r19, r19, r25
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L519
	 l.nop

	l.or	r17, r13, r13
.L519:
	l.xori	r25, r0, -1
	l.sfgts	r23, r25
	l.bnf	.L520
	 l.nop

	l.or	r19, r15, r15
.L520:
	l.or	r17, r17, r27
	l.or	r19, r19, r21
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.addi	r1, r1, 12
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
	l.addi	r1, r1, -16
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.movhi	r19, hi(0)
	l.ori	r17, r0, 255
	l.sw	8(r1), r19
	l.sw	12(r1), r17
	l.lwz	r17, 12(r1)
	l.ori	r27, r0, 24
	l.sll	r17, r17, r27
	l.lwz	r19, 0(r1)
	l.and	r17, r19, r17
	l.srl	r19, r17, r27
	l.movhi	r23, hi(0)
	l.lwz	r17, 12(r1)
	l.ori	r31, r0, 16
	l.sll	r17, r17, r31
	l.lwz	r21, 0(r1)
	l.and	r17, r21, r17
	l.ori	r29, r0, 8
	l.srl	r17, r17, r29
	l.movhi	r21, hi(0)
	l.or	r21, r23, r21
	l.or	r23, r19, r17
	l.lwz	r17, 12(r1)
	l.sll	r17, r17, r29
	l.movhi	r25, hi(0)
	l.lwz	r19, 0(r1)
	l.and	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.and	r17, r17, r25
	l.sll	r25, r19, r29
	l.srl	r17, r17, r27
	l.or	r17, r25, r17
	l.srl	r19, r19, r27
	l.or	r21, r21, r19
	l.or	r23, r23, r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sll	r17, r17, r19
	l.movhi	r25, hi(0)
	l.lwz	r19, 0(r1)
	l.and	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.and	r17, r17, r25
	l.sll	r25, r19, r27
	l.srl	r17, r17, r29
	l.or	r17, r25, r17
	l.srl	r19, r19, r29
	l.or	r21, r21, r19
	l.or	r23, r23, r17
	l.lwz	r17, 12(r1)
	l.srl	r19, r17, r29
	l.lwz	r17, 8(r1)
	l.sll	r17, r17, r27
	l.or	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.sll	r19, r19, r27
	l.lwz	r25, 0(r1)
	l.and	r17, r25, r17
	l.lwz	r25, 4(r1)
	l.and	r19, r25, r19
	l.srl	r25, r19, r27
	l.sll	r17, r17, r29
	l.or	r17, r25, r17
	l.sll	r19, r19, r29
	l.or	r21, r21, r17
	l.or	r23, r23, r19
	l.lwz	r17, 12(r1)
	l.srl	r19, r17, r31
	l.lwz	r17, 8(r1)
	l.sll	r17, r17, r31
	l.or	r17, r19, r17
	l.lwz	r19, 12(r1)
	l.sll	r19, r19, r31
	l.lwz	r25, 0(r1)
	l.and	r17, r25, r17
	l.lwz	r25, 4(r1)
	l.and	r19, r25, r19
	l.srl	r25, r19, r29
	l.sll	r17, r17, r27
	l.or	r17, r25, r17
	l.sll	r19, r19, r27
	l.or	r21, r21, r17
	l.or	r17, r23, r19
	l.lwz	r19, 12(r1)
	l.sll	r19, r19, r29
	l.lwz	r23, 4(r1)
	l.and	r19, r23, r19
	l.sll	r19, r19, r29
	l.movhi	r23, hi(0)
	l.or	r21, r21, r19
	l.or	r17, r17, r23
	l.lwz	r23, 4(r1)
	l.lwz	r19, 12(r1)
	l.and	r19, r23, r19
	l.sll	r19, r19, r27
	l.movhi	r23, hi(0)
	l.or	r19, r21, r19
	l.or	r17, r17, r23
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 16
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
	l.j	.L556
	 l.nop

.L559:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.srl	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L557
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.j	.L558
	 l.nop

.L557:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L556:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L559
	 l.nop

	l.movhi	r17, hi(0)
.L558:
	l.or	r11, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.addi	r1, r1, -4
	l.sw	0(r1), r16
	l.movhi	r19, hi(0)
	l.sfne	r3, r19
	l.bf	.L562
	 l.nop

	l.movhi	r16, hi(0)
	l.j	.L563
	 l.nop

.L562:
	l.or	r17, r3, r3
	l.ori	r16, r0, 1
	l.j	.L564
	 l.nop

.L565:
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.addi	r16, r16, 1
.L564:
	l.andi	r19, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L565
	 l.nop

	l.nop
.L563:
	l.or	r11, r16, r16
	l.lwz	r16, 0(r1)
	l.addi	r1, r1, 4
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
	l.bf	.L568
	 l.nop

	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.lwz	r3, 0(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L573
	 l.nop

.L568:
	l.ori	r17, r0, 1
	l.j	.L572
	 l.nop

.L573:
	l.movhi	r17, hi(0)
.L572:
	l.nop
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
	l.bf	.L576
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
	l.bnf	.L581
	 l.nop

.L576:
	l.ori	r17, r0, 1
	l.j	.L580
	 l.nop

.L581:
	l.movhi	r17, hi(0)
.L580:
	l.nop
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
	l.bf	.L584
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
	l.bnf	.L589
	 l.nop

.L584:
	l.ori	r17, r0, 1
	l.j	.L588
	 l.nop

.L589:
	l.movhi	r17, hi(0)
.L588:
	l.nop
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

	l.or	r19, r11, r11
	l.or	r21, r12, r12
	l.lwz	r17, 4(r1)
	l.sw	0(r17), r19
	l.or	r19, r21, r21
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
	l.bf	.L594
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
	l.bnf	.L594
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L596
	 l.nop

	l.movhi	r19, ha(.LC8)
	l.lwz	r17, lo(.LC8)(r19)
	l.j	.L597
	 l.nop

.L596:
	l.movhi	r19, ha(.LC9)
	l.lwz	r17, lo(.LC9)(r19)
.L597:
	l.sw	8(r1), r17
.L600:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L598
	 l.nop

	l.lwz	r4, 8(r1)
	l.lwz	r3, 4(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	4(r1), r17
.L598:
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
	l.bnf	.L603
	 l.nop

	l.lwz	r4, 8(r1)
	l.lwz	r3, 8(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	8(r1), r17
	l.j	.L600
	 l.nop

.L603:
	l.nop
.L594:
	l.lwz	r17, 4(r1)
	l.or	r11, r17, r17
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
	l.bf	.L606
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.or	r5, r19, r19
	l.or	r6, r17, r17
	l.or	r3, r19, r19
	l.or	r4, r17, r17
	l.jal	__adddf3
	 l.nop

	l.or	r23, r11, r11
	l.or	r21, r12, r12
	l.or	r19, r23, r23
	l.or	r17, r21, r21
	l.or	r5, r19, r19
	l.or	r6, r17, r17
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__nedf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L606
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L608
	 l.nop

	l.movhi	r21, ha(.LC10)
	l.lwz	r19, lo(.LC10)(r21)
	l.addi	r17, r21, lo(.LC10)
	l.addi	r17, r17, 4
	l.lwz	r17, 0(r17)
	l.j	.L609
	 l.nop

.L608:
	l.movhi	r21, ha(.LC11)
	l.lwz	r19, lo(.LC11)(r21)
	l.addi	r17, r21, lo(.LC11)
	l.addi	r17, r17, 4
	l.lwz	r17, 0(r17)
.L609:
	l.sw	12(r1), r19
	l.sw	16(r1), r17
.L612:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L610
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	4(r1), r17
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L610:
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
	l.bnf	.L615
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 12(r1)
	l.lwz	r4, 16(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	12(r1), r17
	l.or	r17, r19, r19
	l.sw	16(r1), r17
	l.j	.L612
	 l.nop

.L615:
	l.nop
.L606:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
	l.bf	.L618
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.or	r5, r19, r19
	l.or	r6, r17, r17
	l.or	r3, r19, r19
	l.or	r4, r17, r17
	l.jal	__adddf3
	 l.nop

	l.or	r23, r11, r11
	l.or	r21, r12, r12
	l.or	r19, r23, r23
	l.or	r17, r21, r21
	l.or	r5, r19, r19
	l.or	r6, r17, r17
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__nedf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L618
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L620
	 l.nop

	l.movhi	r21, ha(.LC12)
	l.lwz	r19, lo(.LC12)(r21)
	l.addi	r17, r21, lo(.LC12)
	l.addi	r17, r17, 4
	l.lwz	r17, 0(r17)
	l.j	.L621
	 l.nop

.L620:
	l.movhi	r21, ha(.LC13)
	l.lwz	r19, lo(.LC13)(r21)
	l.addi	r17, r21, lo(.LC13)
	l.addi	r17, r17, 4
	l.lwz	r17, 0(r17)
.L621:
	l.sw	12(r1), r19
	l.sw	16(r1), r17
.L624:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L622
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	4(r1), r17
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L622:
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
	l.bnf	.L627
	 l.nop

	l.lwz	r5, 12(r1)
	l.lwz	r6, 16(r1)
	l.lwz	r3, 12(r1)
	l.lwz	r4, 16(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	12(r1), r17
	l.or	r17, r19, r19
	l.sw	16(r1), r17
	l.j	.L624
	 l.nop

.L627:
	l.nop
.L618:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.addi	r1, r1, -16
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 8(r1)
	l.sw	12(r1), r17
	l.j	.L630
	 l.nop

.L631:
	l.lwz	r17, 4(r1)
	l.addi	r19, r17, 1
	l.sw	4(r1), r19
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
.L630:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L631
	 l.nop

	l.lwz	r17, 8(r1)
	l.or	r11, r17, r17
	l.addi	r1, r1, 16
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
	l.j	.L635
	 l.nop

.L637:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L635:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L636
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
	l.bf	.L637
	 l.nop

.L636:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L638
	 l.nop

	l.lwz	r17, 12(r1)
	l.sb	0(r17), r0
.L638:
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
	l.j	.L642
	 l.nop

.L647:
	l.nop
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L642:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.sfgeu	r19, r17
	l.bf	.L643
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
	l.bf	.L647
	 l.nop

.L643:
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
	l.j	.L650
	 l.nop

.L654:
	l.lwz	r17, 0(r1)
	l.sw	8(r1), r17
	l.j	.L651
	 l.nop

.L653:
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
	l.bf	.L651
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L652
	 l.nop

.L651:
	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L653
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L650:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L654
	 l.nop

	l.movhi	r17, hi(0)
.L652:
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
.L658:
	l.lbz	r17, 0(r19)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r21
	l.bf	.L657
	 l.nop

	l.sw	4(r1), r19
.L657:
	l.or	r17, r19, r19
	l.addi	r19, r17, 1
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L658
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
	l.lwz	r3, 0(r1)
	l.jal	strlen
	 l.nop

	l.sw	12(r1), r11
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L664
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L663
	 l.nop

.L666:
	l.lwz	r5, 12(r1)
	l.lwz	r4, 0(r1)
	l.lwz	r3, 8(r1)
	l.jal	strncmp
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L665
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L663
	 l.nop

.L665:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L664:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.or	r4, r17, r17
	l.lwz	r3, 4(r1)
	l.jal	strchr
	 l.nop

	l.sw	8(r1), r11
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L666
	 l.nop

	l.movhi	r17, hi(0)
.L663:
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
	l.addi	r1, r1, -20
	l.sw	16(r1), r9
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
	l.bnf	.L669
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
	l.bf	.L671
	 l.nop

.L669:
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
	l.bnf	.L672
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
	l.bnf	.L672
	 l.nop

.L671:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r19, r19, r17
	l.lwz	r17, 12(r1)
	l.j	.L675
	 l.nop

.L672:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
.L675:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.addi	r1, r1, -24
	l.sw	20(r1), r9
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
	l.bf	.L680
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L681
	 l.nop

.L680:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.sfltu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L687
	 l.nop

	l.movhi	r17, hi(0)
.L687:
	l.andi	r17, r17, 0xff
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L683
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L681
	 l.nop

.L685:
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r19, r17, r21
	l.sra	r19, r19, r21
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sfne	r19, r17
	l.bf	.L684
	 l.nop

	l.lwz	r17, 12(r1)
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
	l.bf	.L684
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L681
	 l.nop

.L684:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
.L683:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L685
	 l.nop

	l.movhi	r17, hi(0)
.L681:
	l.or	r11, r17, r17
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
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
	l.addi	r1, r1, -24
	l.sw	20(r1), r9
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
	l.bnf	.L692
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r19, r19, r17
	l.lwz	r17, 8(r1)
	l.sw	4(r1), r19
	l.sw	8(r1), r17
	l.ori	r17, r0, 1
	l.sw	16(r1), r17
.L692:
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
	l.bnf	.L709
	 l.nop

	l.j	.L696
	 l.nop

.L697:
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
	l.sw	4(r1), r17
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L696:
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
	l.bf	.L697
	 l.nop

	l.j	.L698
	 l.nop

.L709:
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
	l.bnf	.L698
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
	l.bnf	.L698
	 l.nop

	l.j	.L701
	 l.nop

.L702:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, -1
	l.sw	12(r1), r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.or	r5, r19, r19
	l.or	r6, r17, r17
	l.or	r3, r19, r19
	l.or	r4, r17, r17
	l.jal	__adddf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	4(r1), r17
	l.or	r17, r19, r19
	l.sw	8(r1), r17
.L701:
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
	l.bf	.L702
	 l.nop

.L698:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 12(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L703
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r19, r19, r17
	l.lwz	r17, 8(r1)
	l.sw	4(r1), r19
	l.sw	8(r1), r17
.L703:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.addi	r1, r1, -32
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.sw	24(r1), r0
	l.sw	28(r1), r0
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.sw	16(r1), r19
	l.sw	20(r1), r17
	l.j	.L712
	 l.nop

.L715:
	l.lwz	r17, 16(r1)
	l.andi	r21, r17, 0
	l.lwz	r17, 20(r1)
	l.andi	r19, r17, 1
	l.or	r17, r21, r21
	l.or	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L713
	 l.nop

	l.lwz	r25, 24(r1)
	l.lwz	r21, 28(r1)
	l.lwz	r23, 0(r1)
	l.lwz	r27, 4(r1)
	l.add	r19, r21, r27
	l.sfltu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L718
	 l.nop

	l.movhi	r21, hi(0)
.L718:
	l.add	r17, r25, r23
	l.add	r17, r21, r17
	l.sw	24(r1), r17
	l.sw	28(r1), r19
.L713:
	l.lwz	r23, 0(r1)
	l.lwz	r17, 4(r1)
	l.add	r21, r17, r17
	l.sfltu	r21, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L719
	 l.nop

	l.movhi	r17, hi(0)
.L719:
	l.add	r19, r23, r23
	l.add	r17, r17, r19
	l.or	r19, r17, r17
	l.sw	0(r1), r19
	l.sw	4(r1), r21
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 31
	l.sll	r19, r17, r19
	l.lwz	r17, 20(r1)
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.or	r17, r19, r17
	l.lwz	r19, 16(r1)
	l.srl	r19, r19, r21
	l.sw	16(r1), r19
	l.sw	20(r1), r17
.L712:
	l.lwz	r17, 16(r1)
	l.lwz	r19, 20(r1)
	l.or	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L715
	 l.nop

	l.lwz	r19, 24(r1)
	l.lwz	r17, 28(r1)
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 32
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
	l.j	.L721
	 l.nop

.L723:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L721:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L724
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L724
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L723
	 l.nop

	l.j	.L724
	 l.nop

.L726:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L725
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L725:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L724:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L726
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L727
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L728
	 l.nop

.L727:
	l.lwz	r17, 12(r1)
.L728:
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
	l.bf	.L731
	 l.nop

	l.lbz	r17, 3(r1)
	l.xori	r17, r17, -1
	l.sb	3(r1), r17
.L731:
	l.lbz	r17, 3(r1)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L732
	 l.nop

	l.ori	r17, r0, 7
	l.j	.L733
	 l.nop

.L732:
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
.L733:
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
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L736
	 l.nop

	l.lwz	r17, 0(r1)
	l.xori	r19, r17, -1
	l.lwz	r17, 4(r1)
	l.xori	r17, r17, -1
	l.sw	0(r1), r19
	l.sw	4(r1), r17
.L736:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L738
	 l.nop

	l.ori	r17, r0, 63
	l.j	.L739
	 l.nop

.L738:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.or	r3, r19, r19
	l.or	r4, r17, r17
	l.jal	__clzdi2
	 l.nop

	l.or	r17, r11, r11
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, -1
.L739:
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
	l.j	.L742
	 l.nop

.L744:
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L743
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L743:
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.add	r17, r17, r17
	l.sw	0(r1), r17
.L742:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L744
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
	l.addi	r1, r1, -24
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 3
	l.srl	r17, r17, r19
	l.sw	12(r1), r17
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -8
	l.and	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L748
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 8(r1)
	l.sfleu	r19, r17
	l.bf	.L755
	 l.nop

.L748:
	l.sw	20(r1), r0
	l.j	.L750
	 l.nop

.L751:
	l.lwz	r17, 20(r1)
	l.ori	r21, r0, 3
	l.sll	r17, r17, r21
	l.lwz	r19, 4(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 20(r1)
	l.sll	r17, r17, r21
	l.lwz	r21, 8(r1)
	l.add	r17, r21, r17
	l.lwz	r21, 0(r19)
	l.lwz	r19, 4(r19)
	l.sw	0(r17), r21
	l.sw	4(r17), r19
	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.sw	20(r1), r17
.L750:
	l.lwz	r19, 20(r1)
	l.lwz	r17, 12(r1)
	l.sfltu	r19, r17
	l.bf	.L751
	 l.nop

	l.j	.L752
	 l.nop

.L753:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 16(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 8(r1)
	l.lwz	r19, 16(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
.L752:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 16(r1)
	l.sfgtu	r19, r17
	l.bf	.L753
	 l.nop

	l.j	.L754
	 l.nop

.L756:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 8(r1)
	l.lwz	r19, 0(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
.L755:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L756
	 l.nop

	l.nop
.L754:
	l.nop
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.addi	r1, r1, -20
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	12(r1), r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L759
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 8(r1)
	l.sfleu	r19, r17
	l.bf	.L765
	 l.nop

.L759:
	l.sw	16(r1), r0
	l.j	.L761
	 l.nop

.L762:
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.add	r21, r17, r19
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.or	r19, r17, r17
	l.lwz	r17, 8(r1)
	l.add	r19, r17, r19
	l.lhz	r17, 0(r21)
	l.ori	r21, r0, 16
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sh	0(r19), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
.L761:
	l.lwz	r19, 16(r1)
	l.lwz	r17, 12(r1)
	l.sfltu	r19, r17
	l.bf	.L762
	 l.nop

	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L764
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.lwz	r19, 4(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 0(r1)
	l.addi	r19, r19, -1
	l.lwz	r21, 8(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.j	.L764
	 l.nop

.L766:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 8(r1)
	l.lwz	r19, 0(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
.L765:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L766
	 l.nop

	l.nop
.L764:
	l.nop
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.addi	r1, r1, -24
	l.sw	8(r1), r3
	l.sw	4(r1), r4
	l.sw	0(r1), r5
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 2
	l.srl	r17, r17, r19
	l.sw	12(r1), r17
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -4
	l.and	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L769
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 8(r1)
	l.sfleu	r19, r17
	l.bf	.L776
	 l.nop

.L769:
	l.sw	20(r1), r0
	l.j	.L771
	 l.nop

.L772:
	l.lwz	r17, 20(r1)
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.lwz	r19, 4(r1)
	l.add	r19, r19, r17
	l.lwz	r17, 20(r1)
	l.sll	r17, r17, r21
	l.lwz	r21, 8(r1)
	l.add	r17, r21, r17
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.sw	20(r1), r17
.L771:
	l.lwz	r19, 20(r1)
	l.lwz	r17, 12(r1)
	l.sfltu	r19, r17
	l.bf	.L772
	 l.nop

	l.j	.L773
	 l.nop

.L774:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 16(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 8(r1)
	l.lwz	r19, 16(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
.L773:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 16(r1)
	l.sfgtu	r19, r17
	l.bf	.L774
	 l.nop

	l.j	.L775
	 l.nop

.L777:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r21, 8(r1)
	l.lwz	r19, 0(r1)
	l.add	r19, r21, r19
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.sb	0(r19), r17
.L776:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L777
	 l.nop

	l.nop
.L775:
	l.nop
	l.addi	r1, r1, 24
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

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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

	l.or	r17, r11, r11
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

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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

	l.or	r17, r11, r11
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
	l.j	.L798
	 l.nop

.L801:
	l.lhz	r19, 2(r1)
	l.ori	r21, r0, 15
	l.lwz	r17, 4(r1)
	l.sub	r17, r21, r17
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L803
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L798:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L801
	 l.nop

	l.j	.L800
	 l.nop

.L803:
	l.nop
.L800:
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
	l.j	.L806
	 l.nop

.L809:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 4(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L811
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L806:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L809
	 l.nop

	l.j	.L808
	 l.nop

.L811:
	l.nop
.L808:
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
	l.bnf	.L818
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
	l.j	.L816
	 l.nop

.L818:
	l.lwz	r3, 0(r1)
	l.jal	__fixsfsi
	 l.nop

	l.or	r17, r11, r11
.L816:
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
	l.j	.L821
	 l.nop

.L823:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 8(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L822
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L822:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L821:
	l.lwz	r19, 8(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L823
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
	l.j	.L827
	 l.nop

.L829:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 8(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L828
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L828:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L827:
	l.lwz	r19, 8(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L829
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
	l.j	.L833
	 l.nop

.L835:
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L834
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L834:
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.add	r17, r17, r17
	l.sw	0(r1), r17
.L833:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L835
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
	l.bf	.L841
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L840
	 l.nop

.L843:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L842
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L842:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	0(r1), r17
.L841:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L843
	 l.nop

	l.lwz	r17, 8(r1)
.L840:
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
	l.j	.L846
	 l.nop

.L848:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L846:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L849
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L849
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L848
	 l.nop

	l.j	.L849
	 l.nop

.L851:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L850
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L850:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L849:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L851
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L852
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L853
	 l.nop

.L852:
	l.lwz	r17, 12(r1)
.L853:
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
	l.bnf	.L863
	 l.nop

	l.xori	r17, r0, -1
	l.j	.L858
	 l.nop

.L863:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L864
	 l.nop

	l.ori	r17, r0, 1
	l.j	.L858
	 l.nop

.L864:
	l.movhi	r17, hi(0)
.L858:
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
	l.bnf	.L874
	 l.nop

	l.xori	r17, r0, -1
	l.j	.L869
	 l.nop

.L874:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L875
	 l.nop

	l.ori	r17, r0, 1
	l.j	.L869
	 l.nop

.L875:
	l.movhi	r17, hi(0)
.L869:
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
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 4(r1)
	l.or	r19, r17, r17
	l.ori	r25, r0, 31
	l.sra	r17, r17, r25
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.or	r23, r17, r17
	l.sra	r17, r17, r25
	l.or	r5, r17, r17
	l.or	r6, r23, r23
	l.or	r3, r21, r21
	l.or	r4, r19, r19
	l.jal	__muldi3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	l.addi	r1, r1, -12
	l.sw	8(r1), r9
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.lwz	r17, 4(r1)
	l.or	r19, r17, r17
	l.movhi	r21, hi(0)
	l.lwz	r17, 0(r1)
	l.movhi	r23, hi(0)
	l.or	r5, r23, r23
	l.or	r6, r17, r17
	l.or	r3, r21, r21
	l.or	r4, r19, r19
	l.jal	__muldi3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r12, r12
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
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
	l.bf	.L884
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
	l.ori	r17, r0, 1
	l.sw	12(r1), r17
.L884:
	l.sb	19(r1), r0
	l.j	.L885
	 l.nop

.L888:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L886
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L886:
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
.L885:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L887
	 l.nop

	l.lbz	r19, 19(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L888
	 l.nop

.L887:
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L889
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L891
	 l.nop

.L889:
	l.lwz	r17, 8(r1)
.L891:
	l.nop
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
	l.bf	.L894
	 l.nop

	l.lwz	r17, 4(r1)
	l.sub	r17, r0, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L899
	 l.nop

	l.movhi	r17, hi(0)
.L899:
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
.L894:
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L895
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
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
	l.bf	.L896
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.sw	8(r1), r17
.L896:
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
	l.bf	.L902
	 l.nop

	l.lwz	r17, 4(r1)
	l.sub	r17, r0, r17
	l.sw	4(r1), r17
	l.ori	r17, r0, 1
	l.sw	12(r1), r17
.L902:
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L903
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
.L903:
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
	l.bf	.L904
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.sw	8(r1), r17
.L904:
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
	l.j	.L908
	 l.nop

.L910:
	l.lhz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sh	4(r1), r17
	l.lhz	r17, 10(r1)
	l.add	r17, r17, r17
	l.sh	10(r1), r17
.L908:
	l.lhz	r19, 4(r1)
	l.lhz	r17, 6(r1)
	l.sfgeu	r19, r17
	l.bf	.L911
	 l.nop

	l.lhz	r17, 10(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L911
	 l.nop

	l.lhz	r17, 4(r1)
	l.ori	r19, r0, 16
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.xori	r19, r0, -1
	l.sfgts	r17, r19
	l.bf	.L910
	 l.nop

	l.j	.L911
	 l.nop

.L913:
	l.lhz	r19, 6(r1)
	l.lhz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L912
	 l.nop

	l.lhz	r19, 6(r1)
	l.lhz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sh	6(r1), r17
	l.lhz	r19, 8(r1)
	l.lhz	r17, 10(r1)
	l.or	r17, r19, r17
	l.sh	8(r1), r17
.L912:
	l.lhz	r17, 10(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sh	10(r1), r17
	l.lhz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sh	4(r1), r17
.L911:
	l.lhz	r17, 10(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L913
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L914
	 l.nop

	l.lhz	r17, 6(r1)
	l.j	.L915
	 l.nop

.L914:
	l.lhz	r17, 8(r1)
.L915:
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
	l.j	.L918
	 l.nop

.L920:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L918:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L921
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L921
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L920
	 l.nop

	l.j	.L921
	 l.nop

.L923:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L922
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L922:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L921:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L923
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L924
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L925
	 l.nop

.L924:
	l.lwz	r17, 12(r1)
.L925:
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
	l.ori	r17, r0, 32
	l.sw	28(r1), r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sw	20(r1), r19
	l.sw	24(r1), r17
	l.lwz	r19, 0(r1)
	l.lwz	r17, 28(r1)
	l.and	r17, r19, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L928
	 l.nop

	l.sw	16(r1), r0
	l.lwz	r19, 24(r1)
	l.lwz	r21, 0(r1)
	l.lwz	r17, 28(r1)
	l.sub	r17, r21, r17
	l.sll	r17, r19, r17
	l.sw	12(r1), r17
	l.j	.L929
	 l.nop

.L928:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L930
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.j	.L932
	 l.nop

.L930:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 0(r1)
	l.sll	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 20(r1)
	l.or	r19, r17, r17
	l.lwz	r17, 0(r1)
	l.sll	r19, r19, r17
	l.lwz	r21, 24(r1)
	l.lwz	r23, 28(r1)
	l.lwz	r17, 0(r1)
	l.sub	r17, r23, r17
	l.srl	r17, r21, r17
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L929:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
.L932:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
	l.ori	r17, r0, 32
	l.sw	28(r1), r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sw	20(r1), r19
	l.sw	24(r1), r17
	l.lwz	r19, 0(r1)
	l.lwz	r17, 28(r1)
	l.and	r17, r19, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L935
	 l.nop

	l.lwz	r19, 20(r1)
	l.lwz	r17, 28(r1)
	l.addi	r17, r17, -1
	l.sra	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 20(r1)
	l.lwz	r21, 0(r1)
	l.lwz	r17, 28(r1)
	l.sub	r17, r21, r17
	l.sra	r17, r19, r17
	l.sw	16(r1), r17
	l.j	.L936
	 l.nop

.L935:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L937
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.j	.L939
	 l.nop

.L937:
	l.lwz	r19, 20(r1)
	l.lwz	r17, 0(r1)
	l.sra	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 20(r1)
	l.or	r21, r17, r17
	l.lwz	r19, 28(r1)
	l.lwz	r17, 0(r1)
	l.sub	r17, r19, r17
	l.sll	r19, r21, r17
	l.lwz	r21, 24(r1)
	l.lwz	r17, 0(r1)
	l.srl	r17, r21, r17
	l.or	r17, r19, r17
	l.sw	16(r1), r17
.L936:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
.L939:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r17, 0(r1)
	l.ori	r27, r0, 24
	l.srl	r19, r17, r27
	l.movhi	r23, hi(0)
	l.lwz	r17, 0(r1)
	l.ori	r29, r0, 8
	l.srl	r17, r17, r29
	l.movhi	r21, hi(0)
	l.andi	r21, r21, 0
	l.andi	r17, r17, 65280
	l.or	r23, r23, r21
	l.or	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.sll	r21, r17, r29
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r27
	l.or	r17, r21, r17
	l.lwz	r21, 0(r1)
	l.srl	r21, r21, r27
	l.andi	r21, r21, 0
	l.movhi	r25, hi(16711680)
	l.and	r17, r17, r25
	l.or	r23, r23, r21
	l.or	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.sll	r21, r17, r27
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r29
	l.or	r17, r21, r17
	l.lwz	r21, 0(r1)
	l.srl	r21, r21, r29
	l.andi	r21, r21, 0
	l.movhi	r25, hi(-16777216)
	l.and	r17, r17, r25
	l.or	r23, r23, r21
	l.or	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.srl	r21, r17, r27
	l.lwz	r17, 0(r1)
	l.sll	r17, r17, r29
	l.or	r17, r21, r17
	l.lwz	r21, 4(r1)
	l.sll	r25, r21, r29
	l.andi	r21, r17, 255
	l.andi	r17, r25, 0
	l.or	r23, r23, r21
	l.or	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.srl	r21, r17, r29
	l.lwz	r17, 0(r1)
	l.sll	r17, r17, r27
	l.or	r17, r21, r17
	l.lwz	r21, 4(r1)
	l.sll	r25, r21, r27
	l.andi	r21, r17, 65280
	l.andi	r17, r25, 0
	l.or	r23, r23, r21
	l.or	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.sll	r21, r17, r29
	l.movhi	r25, hi(0)
	l.movhi	r17, hi(16711680)
	l.and	r21, r21, r17
	l.andi	r17, r25, 0
	l.or	r21, r23, r21
	l.or	r17, r19, r17
	l.lwz	r19, 4(r1)
	l.sll	r19, r19, r27
	l.movhi	r23, hi(0)
	l.or	r19, r21, r19
	l.or	r17, r17, r23
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 8
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
	l.addi	r1, r1, -56
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	52(r1), r17
	l.lwz	r19, 52(r1)
	l.ori	r17, r0, 65535
	l.sfgtu	r19, r17
	l.bf	.L948
	 l.nop

	l.ori	r17, r0, 16
	l.j	.L949
	 l.nop

.L948:
	l.movhi	r17, hi(0)
.L949:
	l.sw	48(r1), r17
	l.ori	r19, r0, 16
	l.lwz	r17, 48(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 52(r1)
	l.srl	r17, r19, r17
	l.sw	44(r1), r17
	l.lwz	r17, 48(r1)
	l.sw	40(r1), r17
	l.lwz	r17, 44(r1)
	l.andi	r17, r17, 65280
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L950
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L951
	 l.nop

.L950:
	l.movhi	r17, hi(0)
.L951:
	l.sw	36(r1), r17
	l.ori	r19, r0, 8
	l.lwz	r17, 36(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 44(r1)
	l.srl	r17, r19, r17
	l.sw	32(r1), r17
	l.lwz	r17, 36(r1)
	l.lwz	r19, 40(r1)
	l.add	r17, r19, r17
	l.sw	28(r1), r17
	l.lwz	r17, 32(r1)
	l.andi	r17, r17, 240
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L952
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L953
	 l.nop

.L952:
	l.movhi	r17, hi(0)
.L953:
	l.sw	24(r1), r17
	l.ori	r19, r0, 4
	l.lwz	r17, 24(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 32(r1)
	l.srl	r17, r19, r17
	l.sw	20(r1), r17
	l.lwz	r17, 24(r1)
	l.lwz	r19, 28(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 20(r1)
	l.andi	r17, r17, 12
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L954
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L955
	 l.nop

.L954:
	l.movhi	r17, hi(0)
.L955:
	l.sw	12(r1), r17
	l.ori	r19, r0, 2
	l.lwz	r17, 12(r1)
	l.sub	r17, r19, r17
	l.lwz	r19, 20(r1)
	l.srl	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r17, 12(r1)
	l.lwz	r19, 16(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 8(r1)
	l.andi	r17, r17, 2
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L958
	 l.nop

	l.movhi	r17, hi(0)
.L958:
	l.andi	r17, r17, 0xff
	l.or	r21, r17, r17
	l.ori	r19, r0, 2
	l.lwz	r17, 8(r1)
	l.sub	r17, r19, r17
	l.mul	r19, r21, r17
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 56
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
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.sw	24(r1), r19
	l.sw	28(r1), r17
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.sw	16(r1), r19
	l.sw	20(r1), r17
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfges	r19, r17
	l.bf	.L960
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L965
	 l.nop

.L960:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfles	r19, r17
	l.bf	.L962
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L965
	 l.nop

.L962:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfgeu	r19, r17
	l.bf	.L963
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L965
	 l.nop

.L963:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfleu	r19, r17
	l.bf	.L964
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L965
	 l.nop

.L964:
	l.ori	r17, r0, 1
.L965:
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
	l.addi	r1, r1, -60
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	56(r1), r17
	l.lwz	r17, 56(r1)
	l.andi	r17, r17, 65535
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L971
	 l.nop

	l.ori	r17, r0, 16
	l.j	.L972
	 l.nop

.L971:
	l.movhi	r17, hi(0)
.L972:
	l.sw	52(r1), r17
	l.lwz	r19, 56(r1)
	l.lwz	r17, 52(r1)
	l.srl	r17, r19, r17
	l.sw	48(r1), r17
	l.lwz	r17, 52(r1)
	l.sw	44(r1), r17
	l.lwz	r17, 48(r1)
	l.andi	r17, r17, 255
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L973
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L974
	 l.nop

.L973:
	l.movhi	r17, hi(0)
.L974:
	l.sw	40(r1), r17
	l.lwz	r19, 48(r1)
	l.lwz	r17, 40(r1)
	l.srl	r17, r19, r17
	l.sw	36(r1), r17
	l.lwz	r17, 40(r1)
	l.lwz	r19, 44(r1)
	l.add	r17, r19, r17
	l.sw	32(r1), r17
	l.lwz	r17, 36(r1)
	l.andi	r17, r17, 15
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L975
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L976
	 l.nop

.L975:
	l.movhi	r17, hi(0)
.L976:
	l.sw	28(r1), r17
	l.lwz	r19, 36(r1)
	l.lwz	r17, 28(r1)
	l.srl	r17, r19, r17
	l.sw	24(r1), r17
	l.lwz	r17, 28(r1)
	l.lwz	r19, 32(r1)
	l.add	r17, r19, r17
	l.sw	20(r1), r17
	l.lwz	r17, 24(r1)
	l.andi	r17, r17, 3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L977
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L978
	 l.nop

.L977:
	l.movhi	r17, hi(0)
.L978:
	l.sw	16(r1), r17
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 12(r1)
	l.andi	r17, r17, 3
	l.sw	8(r1), r17
	l.lwz	r17, 16(r1)
	l.lwz	r19, 20(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 8(r1)
	l.xori	r17, r17, -1
	l.andi	r19, r17, 1
	l.lwz	r17, 8(r1)
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.ori	r21, r0, 2
	l.sub	r17, r21, r17
	l.sub	r19, r0, r19
	l.and	r19, r19, r17
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.or	r11, r17, r17
	l.addi	r1, r1, 60
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
	l.ori	r17, r0, 32
	l.sw	28(r1), r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sw	20(r1), r19
	l.sw	24(r1), r17
	l.lwz	r19, 0(r1)
	l.lwz	r17, 28(r1)
	l.and	r17, r19, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L982
	 l.nop

	l.sw	12(r1), r0
	l.lwz	r19, 20(r1)
	l.lwz	r21, 0(r1)
	l.lwz	r17, 28(r1)
	l.sub	r17, r21, r17
	l.srl	r17, r19, r17
	l.sw	16(r1), r17
	l.j	.L983
	 l.nop

.L982:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L984
	 l.nop

	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.j	.L986
	 l.nop

.L984:
	l.lwz	r19, 20(r1)
	l.lwz	r17, 0(r1)
	l.srl	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 20(r1)
	l.lwz	r21, 28(r1)
	l.lwz	r17, 0(r1)
	l.sub	r17, r21, r17
	l.sll	r19, r19, r17
	l.lwz	r21, 24(r1)
	l.lwz	r17, 0(r1)
	l.srl	r17, r21, r17
	l.or	r17, r19, r17
	l.sw	16(r1), r17
.L983:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
.L986:
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.addi	r1, r1, -40
	l.sw	4(r1), r3
	l.sw	0(r1), r4
	l.ori	r17, r0, 16
	l.sw	36(r1), r17
	l.xori	r19, r0, -1
	l.lwz	r17, 36(r1)
	l.srl	r17, r19, r17
	l.sw	32(r1), r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 32(r1)
	l.and	r19, r19, r17
	l.lwz	r21, 0(r1)
	l.lwz	r17, 32(r1)
	l.and	r17, r21, r17
	l.mul	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 36(r1)
	l.srl	r17, r19, r17
	l.sw	28(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 32(r1)
	l.and	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 36(r1)
	l.srl	r19, r19, r17
	l.lwz	r21, 0(r1)
	l.lwz	r17, 32(r1)
	l.and	r17, r21, r17
	l.mul	r17, r19, r17
	l.lwz	r19, 28(r1)
	l.add	r17, r19, r17
	l.sw	24(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r21, 24(r1)
	l.lwz	r17, 32(r1)
	l.and	r21, r21, r17
	l.lwz	r17, 36(r1)
	l.sll	r17, r21, r17
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 24(r1)
	l.lwz	r17, 36(r1)
	l.srl	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 36(r1)
	l.srl	r17, r19, r17
	l.sw	20(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 32(r1)
	l.and	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r19, 0(r1)
	l.lwz	r17, 36(r1)
	l.srl	r19, r19, r17
	l.lwz	r21, 4(r1)
	l.lwz	r17, 32(r1)
	l.and	r17, r21, r17
	l.mul	r17, r19, r17
	l.lwz	r19, 20(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r21, 16(r1)
	l.lwz	r17, 32(r1)
	l.and	r21, r21, r17
	l.lwz	r17, 36(r1)
	l.sll	r17, r21, r17
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.or	r21, r17, r17
	l.lwz	r19, 16(r1)
	l.lwz	r17, 36(r1)
	l.srl	r17, r19, r17
	l.add	r17, r21, r17
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.or	r23, r17, r17
	l.lwz	r19, 4(r1)
	l.lwz	r17, 36(r1)
	l.srl	r19, r19, r17
	l.lwz	r21, 0(r1)
	l.lwz	r17, 36(r1)
	l.srl	r17, r21, r17
	l.mul	r17, r19, r17
	l.add	r17, r23, r17
	l.sw	8(r1), r17
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 40
	l.jr	r9
	 l.nop

	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.addi	r1, r1, -44
	l.sw	40(r1), r9
	l.sw	8(r1), r3
	l.sw	12(r1), r4
	l.sw	0(r1), r5
	l.sw	4(r1), r6
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.sw	32(r1), r19
	l.sw	36(r1), r17
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.sw	24(r1), r19
	l.sw	28(r1), r17
	l.lwz	r17, 36(r1)
	l.lwz	r19, 28(r1)
	l.or	r4, r19, r19
	l.or	r3, r17, r17
	l.jal	__muldsi3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	16(r1), r17
	l.or	r17, r19, r19
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
	l.lwz	r19, 16(r1)
	l.lwz	r17, 20(r1)
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.lwz	r9, 40(r1)
	l.addi	r1, r1, 44
	l.jr	r9
	 l.nop

	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r23, 0(r1)
	l.lwz	r25, 4(r1)
	l.movhi	r27, hi(0)
	l.movhi	r21, hi(0)
	l.sub	r19, r21, r25
	l.sfgtu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L997
	 l.nop

	l.movhi	r21, hi(0)
.L997:
	l.sub	r17, r27, r23
	l.sub	r17, r17, r21
	l.or	r21, r17, r17
	l.or	r17, r19, r19
	l.or	r19, r21, r21
	l.or	r11, r19, r19
	l.or	r12, r17, r17
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.addi	r1, r1, -32
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.sw	8(r1), r19
	l.sw	12(r1), r17
	l.lwz	r17, 8(r1)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.xor	r17, r19, r17
	l.sw	28(r1), r17
	l.lwz	r17, 28(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 28(r1)
	l.xor	r17, r19, r17
	l.sw	24(r1), r17
	l.lwz	r17, 24(r1)
	l.ori	r19, r0, 8
	l.srl	r17, r17, r19
	l.lwz	r19, 24(r1)
	l.xor	r17, r19, r17
	l.sw	20(r1), r17
	l.lwz	r17, 20(r1)
	l.ori	r19, r0, 4
	l.srl	r17, r17, r19
	l.lwz	r19, 20(r1)
	l.xor	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.andi	r17, r17, 15
	l.ori	r19, r0, 27030
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.or	r11, r17, r17
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	l.addi	r1, r1, -20
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 16(r1)
	l.xor	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 12(r1)
	l.ori	r19, r0, 8
	l.srl	r17, r17, r19
	l.lwz	r19, 12(r1)
	l.xor	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.ori	r19, r0, 4
	l.srl	r17, r17, r19
	l.lwz	r19, 8(r1)
	l.xor	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 15
	l.ori	r19, r0, 27030
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.or	r11, r17, r17
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.addi	r1, r1, -48
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.sw	40(r1), r19
	l.sw	44(r1), r17
	l.lwz	r17, 40(r1)
	l.ori	r19, r0, 31
	l.sll	r17, r17, r19
	l.lwz	r19, 44(r1)
	l.ori	r21, r0, 1
	l.srl	r19, r19, r21
	l.or	r19, r17, r19
	l.lwz	r17, 40(r1)
	l.srl	r21, r17, r21
	l.movhi	r17, hi(1431633920)
	l.ori	r17, r17, 21845
	l.and	r23, r21, r17
	l.movhi	r17, hi(1431633920)
	l.ori	r17, r17, 21845
	l.and	r27, r19, r17
	l.lwz	r25, 40(r1)
	l.lwz	r21, 44(r1)
	l.sub	r19, r21, r27
	l.sfgtu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L1007
	 l.nop

	l.movhi	r21, hi(0)
.L1007:
	l.sub	r17, r25, r23
	l.sub	r17, r17, r21
	l.sw	32(r1), r17
	l.sw	36(r1), r19
	l.lwz	r17, 32(r1)
	l.ori	r19, r0, 30
	l.sll	r17, r17, r19
	l.lwz	r19, 36(r1)
	l.ori	r21, r0, 2
	l.srl	r19, r19, r21
	l.or	r19, r17, r19
	l.lwz	r17, 32(r1)
	l.srl	r21, r17, r21
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r25, r21, r17
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r21, r19, r17
	l.lwz	r19, 32(r1)
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r23, r19, r17
	l.lwz	r19, 36(r1)
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r27, r19, r17
	l.add	r19, r21, r27
	l.sfltu	r19, r21
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L1008
	 l.nop

	l.movhi	r21, hi(0)
.L1008:
	l.add	r17, r25, r23
	l.add	r17, r21, r17
	l.sw	24(r1), r17
	l.sw	28(r1), r19
	l.lwz	r17, 24(r1)
	l.ori	r19, r0, 28
	l.sll	r19, r17, r19
	l.lwz	r17, 28(r1)
	l.ori	r21, r0, 4
	l.srl	r17, r17, r21
	l.or	r17, r19, r17
	l.lwz	r19, 24(r1)
	l.srl	r25, r19, r21
	l.lwz	r23, 24(r1)
	l.lwz	r27, 28(r1)
	l.add	r21, r17, r27
	l.sfltu	r21, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L1009
	 l.nop

	l.movhi	r17, hi(0)
.L1009:
	l.add	r19, r25, r23
	l.add	r17, r17, r19
	l.or	r19, r17, r17
	l.or	r23, r19, r19
	l.or	r19, r21, r21
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r17, r23, r17
	l.sw	16(r1), r17
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r17, r19, r17
	l.sw	20(r1), r17
	l.lwz	r17, 20(r1)
	l.lwz	r19, 16(r1)
	l.movhi	r21, hi(0)
	l.srl	r19, r19, r21
	l.add	r17, r17, r19
	l.sw	12(r1), r17
	l.lwz	r17, 12(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 12(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.lwz	r17, 8(r1)
	l.add	r17, r19, r17
	l.andi	r17, r17, 127
	l.or	r11, r17, r17
	l.addi	r1, r1, 48
	l.jr	r9
	 l.nop

	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	l.addi	r1, r1, -24
	l.sw	0(r1), r3
	l.lwz	r17, 0(r1)
	l.sw	20(r1), r17
	l.lwz	r17, 20(r1)
	l.ori	r19, r0, 1
	l.srl	r19, r17, r19
	l.movhi	r17, hi(1431633920)
	l.ori	r17, r17, 21845
	l.and	r17, r19, r17
	l.lwz	r19, 20(r1)
	l.sub	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 2
	l.srl	r19, r17, r19
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r19, r19, r17
	l.lwz	r21, 16(r1)
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r17, r21, r17
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.lwz	r17, 12(r1)
	l.ori	r19, r0, 4
	l.srl	r19, r17, r19
	l.lwz	r17, 12(r1)
	l.add	r19, r19, r17
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r17, 8(r1)
	l.ori	r19, r0, 16
	l.srl	r17, r17, r19
	l.lwz	r19, 8(r1)
	l.add	r17, r19, r17
	l.sw	4(r1), r17
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.andi	r17, r17, 63
	l.or	r11, r17, r17
	l.addi	r1, r1, 24
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
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 31
	l.srl	r17, r17, r19
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
	l.movhi	r17, ha(.LC20)
	l.lwz	r19, lo(.LC20)(r17)
	l.addi	r17, r17, lo(.LC20)
	l.addi	r17, r17, 4
	l.lwz	r17, 0(r17)
	l.sw	16(r1), r19
	l.sw	20(r1), r17
.L1017:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1014
	 l.nop

	l.lwz	r5, 4(r1)
	l.lwz	r6, 8(r1)
	l.lwz	r3, 16(r1)
	l.lwz	r4, 20(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	16(r1), r17
	l.or	r17, r19, r19
	l.sw	20(r1), r17
.L1014:
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
	l.bnf	.L1022
	 l.nop

	l.lwz	r5, 4(r1)
	l.lwz	r6, 8(r1)
	l.lwz	r3, 4(r1)
	l.lwz	r4, 8(r1)
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r19, r12, r12
	l.sw	4(r1), r17
	l.or	r17, r19, r19
	l.sw	8(r1), r17
	l.j	.L1017
	 l.nop

.L1022:
	l.nop
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1018
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

	l.or	r23, r11, r11
	l.or	r21, r12, r12
	l.or	r19, r23, r23
	l.or	r17, r21, r21
	l.j	.L1020
	 l.nop

.L1018:
	l.lwz	r19, 16(r1)
	l.lwz	r17, 20(r1)
.L1020:
	l.nop
	l.or	r11, r19, r19
	l.or	r12, r17, r17
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
.L1028:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1025
	 l.nop

	l.lwz	r4, 4(r1)
	l.lwz	r3, 12(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	12(r1), r17
.L1025:
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
	l.bnf	.L1033
	 l.nop

	l.lwz	r4, 4(r1)
	l.lwz	r3, 4(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	4(r1), r17
	l.j	.L1028
	 l.nop

.L1033:
	l.nop
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1029
	 l.nop

	l.movhi	r17, ha(.LC21)
	l.lwz	r4, 12(r1)
	l.lwz	r3, lo(.LC21)(r17)
	l.jal	__divsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.j	.L1031
	 l.nop

.L1029:
	l.lwz	r17, 12(r1)
.L1031:
	l.nop
	l.or	r11, r17, r17
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
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.sw	24(r1), r19
	l.sw	28(r1), r17
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.sw	16(r1), r19
	l.sw	20(r1), r17
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfgeu	r19, r17
	l.bf	.L1036
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L1041
	 l.nop

.L1036:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L1038
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L1041
	 l.nop

.L1038:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfgeu	r19, r17
	l.bf	.L1039
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L1041
	 l.nop

.L1039:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfleu	r19, r17
	l.bf	.L1040
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L1041
	 l.nop

.L1040:
	l.ori	r17, r0, 1
.L1041:
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
	l.lwz	r19, 8(r1)
	l.lwz	r17, 12(r1)
	l.lwz	r23, 0(r1)
	l.lwz	r21, 4(r1)
	l.or	r5, r23, r23
	l.or	r6, r21, r21
	l.or	r3, r19, r19
	l.or	r4, r17, r17
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
