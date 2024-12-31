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
	l.j	.L10
	 l.nop

.L12:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.sw	20(r1), r17
.L10:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L11
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
	l.bf	.L12
	 l.nop

.L11:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L13
	 l.nop

	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.j	.L14
	 l.nop

.L13:
	l.movhi	r17, hi(0)
.L14:
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
	l.j	.L16
	 l.nop

.L18:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L16:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L17
	 l.nop

	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.sfne	r17, r19
	l.bf	.L18
	 l.nop

.L17:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L19
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L21
	 l.nop

.L19:
	l.movhi	r17, hi(0)
.L21:
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
	l.j	.L23
	 l.nop

.L25:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
.L23:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L24
	 l.nop

	l.lwz	r17, 16(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L25
	 l.nop

.L24:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L26
	 l.nop

	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sub	r17, r19, r17
	l.j	.L28
	 l.nop

.L26:
	l.movhi	r17, hi(0)
.L28:
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
	l.j	.L30
	 l.nop

.L31:
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
.L30:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L31
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
	l.j	.L34
	 l.nop

.L36:
	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 4(r1)
	l.sfne	r17, r19
	l.bf	.L34
	 l.nop

	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.j	.L35
	 l.nop

.L34:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L36
	 l.nop

	l.movhi	r17, hi(0)
.L35:
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
	l.j	.L38
	 l.nop

.L39:
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
.L38:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L39
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
	l.j	.L42
	 l.nop

.L43:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L42:
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
	l.bf	.L43
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
	l.j	.L46
	 l.nop

.L48:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L46:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L47
	 l.nop

	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r19
	l.bf	.L48
	 l.nop

.L47:
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
.L53:
	l.lbz	r17, 0(r19)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r21
	l.bf	.L51
	 l.nop

	l.or	r17, r19, r19
	l.j	.L52
	 l.nop

.L51:
	l.or	r17, r19, r19
	l.addi	r19, r17, 1
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L53
	 l.nop

	l.movhi	r17, hi(0)
.L52:
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
	l.j	.L55
	 l.nop

.L57:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L55:
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
	l.bf	.L56
	 l.nop

	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L57
	 l.nop

.L56:
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
	l.j	.L60
	 l.nop

.L61:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L60:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L61
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
	l.bf	.L66
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L65
	 l.nop

.L68:
	l.lwz	r17, 16(r1)
	l.addi	r17, r17, 1
	l.sw	16(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L66:
	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L67
	 l.nop

	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L67
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L67
	 l.nop

	l.lwz	r17, 16(r1)
	l.lbz	r19, 0(r17)
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L68
	 l.nop

.L67:
	l.lwz	r17, 16(r1)
	l.lbz	r17, 0(r17)
	l.or	r19, r17, r17
	l.lwz	r17, 12(r1)
	l.lbz	r17, 0(r17)
	l.sub	r17, r19, r17
.L65:
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
	l.j	.L70
	 l.nop

.L71:
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
.L70:
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 1
	l.sfgts	r19, r17
	l.bf	.L71
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
	l.bf	.L74
	 l.nop

	l.movhi	r17, hi(0)
.L74:
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
	l.bf	.L77
	 l.nop

	l.movhi	r17, hi(0)
.L77:
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
	l.bf	.L79
	 l.nop

	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 9
	l.sfne	r19, r17
	l.bf	.L80
	 l.nop

.L79:
	l.ori	r17, r0, 1
	l.j	.L82
	 l.nop

.L80:
	l.movhi	r17, hi(0)
.L82:
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
	l.bf	.L84
	 l.nop

	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 127
	l.sfne	r19, r17
	l.bf	.L85
	 l.nop

.L84:
	l.ori	r17, r0, 1
	l.j	.L87
	 l.nop

.L85:
	l.movhi	r17, hi(0)
.L87:
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
	l.bf	.L90
	 l.nop

	l.movhi	r17, hi(0)
.L90:
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
	l.bf	.L93
	 l.nop

	l.movhi	r17, hi(0)
.L93:
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
	l.bf	.L96
	 l.nop

	l.movhi	r17, hi(0)
.L96:
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
	l.bf	.L99
	 l.nop

	l.movhi	r17, hi(0)
.L99:
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
	l.bf	.L101
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -9
	l.ori	r17, r0, 4
	l.sfgtu	r19, r17
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
	l.bf	.L107
	 l.nop

	l.movhi	r17, hi(0)
.L107:
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
	l.bf	.L109
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -127
	l.ori	r17, r0, 32
	l.sfleu	r19, r17
	l.bf	.L109
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -8232
	l.ori	r17, r0, 1
	l.sfleu	r19, r17
	l.bf	.L109
	 l.nop

	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r19, r19, r17
	l.ori	r17, r0, 2
	l.sfgtu	r19, r17
	l.bf	.L110
	 l.nop

.L109:
	l.ori	r17, r0, 1
	l.j	.L112
	 l.nop

.L110:
	l.movhi	r17, hi(0)
.L112:
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
	l.bf	.L115
	 l.nop

	l.movhi	r17, hi(0)
.L115:
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
	l.bf	.L117
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.andi	r19, r17, 127
	l.ori	r17, r0, 32
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L123
	 l.nop

	l.movhi	r17, hi(0)
.L123:
	l.andi	r17, r17, 0xff
	l.j	.L118
	 l.nop

.L117:
	l.lwz	r19, 0(r1)
	l.ori	r17, r0, 8231
	l.sfleu	r19, r17
	l.bf	.L119
	 l.nop

	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L119
	 l.nop

	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r19, r19, r17
	l.ori	r17, r0, 8184
	l.sfgtu	r19, r17
	l.bf	.L120
	 l.nop

.L119:
	l.ori	r17, r0, 1
	l.j	.L118
	 l.nop

.L120:
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r19, r19, r17
	l.movhi	r17, hi(1048576)
	l.ori	r17, r17, 3
	l.sfgtu	r19, r17
	l.bf	.L121
	 l.nop

	l.lwz	r17, 0(r1)
	l.andi	r19, r17, 65534
	l.ori	r17, r0, 65534
	l.sfne	r19, r17
	l.bf	.L122
	 l.nop

.L121:
	l.movhi	r17, hi(0)
	l.j	.L118
	 l.nop

.L122:
	l.ori	r17, r0, 1
.L118:
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
	l.bf	.L125
	 l.nop

	l.lwz	r17, 0(r1)
	l.ori	r17, r17, 32
	l.addi	r19, r17, -97
	l.ori	r17, r0, 5
	l.sfgtu	r19, r17
	l.bf	.L126
	 l.nop

.L125:
	l.ori	r17, r0, 1
	l.j	.L128
	 l.nop

.L126:
	l.movhi	r17, hi(0)
.L128:
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
	l.sfne	r17, r19
	l.bnf	.L143
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L134
	 l.nop

.L143:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L144
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L134
	 l.nop

.L144:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L145
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
	l.j	.L134
	 l.nop

.L145:
	l.movhi	r21, ha(.LC0)
	l.lwz	r17, lo(.LC0)(r21)
	l.addi	r21, r21, lo(.LC0)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
.L134:
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
	l.sfne	r17, r19
	l.bnf	.L158
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L149
	 l.nop

.L158:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L159
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L149
	 l.nop

.L159:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L160
	 l.nop

	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__subsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.j	.L149
	 l.nop

.L160:
	l.movhi	r19, ha(.LC1)
	l.lwz	r17, lo(.LC1)(r19)
.L149:
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
	l.sfne	r17, r19
	l.bnf	.L176
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L164
	 l.nop

.L176:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L177
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L164
	 l.nop

.L177:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L167
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L168
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L164
	 l.nop

.L168:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L164
	 l.nop

.L167:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L178
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L164
	 l.nop

.L178:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
.L164:
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
	l.sfne	r17, r19
	l.bnf	.L194
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L182
	 l.nop

.L194:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L195
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L182
	 l.nop

.L195:
	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L185
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L186
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L182
	 l.nop

.L186:
	l.lwz	r17, 4(r1)
	l.j	.L182
	 l.nop

.L185:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L196
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L182
	 l.nop

.L196:
	l.lwz	r17, 4(r1)
.L182:
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
	l.sfne	r17, r19
	l.bnf	.L212
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L200
	 l.nop

.L212:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L213
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L200
	 l.nop

.L213:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L203
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L204
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L200
	 l.nop

.L204:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L200
	 l.nop

.L203:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L214
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L200
	 l.nop

.L214:
	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
.L200:
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
	l.sfne	r17, r19
	l.bnf	.L230
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L218
	 l.nop

.L230:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L231
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L218
	 l.nop

.L231:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L221
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L222
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L218
	 l.nop

.L222:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L218
	 l.nop

.L221:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L232
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L218
	 l.nop

.L232:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
.L218:
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
	l.sfne	r17, r19
	l.bnf	.L248
	 l.nop

	l.lwz	r17, 0(r1)
	l.j	.L236
	 l.nop

.L248:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 0(r1)
	l.jal	__unordsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L249
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L236
	 l.nop

.L249:
	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L239
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L240
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L236
	 l.nop

.L240:
	l.lwz	r17, 0(r1)
	l.j	.L236
	 l.nop

.L239:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__ltsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L250
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L236
	 l.nop

.L250:
	l.lwz	r17, 0(r1)
.L236:
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
	l.sfne	r17, r19
	l.bnf	.L266
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L254
	 l.nop

.L266:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 0(r1)
	l.lwz	r4, 4(r1)
	l.jal	__unorddf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L267
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L254
	 l.nop

.L267:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r21, r17, r17
	l.lwz	r19, 0(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.sfeq	r21, r17
	l.bf	.L257
	 l.nop

	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.and	r17, r19, r17
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L258
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L254
	 l.nop

.L258:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.j	.L254
	 l.nop

.L257:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__ltdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.bnf	.L268
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 12(r1)
	l.j	.L254
	 l.nop

.L268:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
.L254:
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
	l.j	.L270
	 l.nop

.L271:
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
.L270:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L271
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
	l.bf	.L276
	 l.nop

	l.movhi	r21, hi(0)
.L276:
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
	l.bf	.L278
	 l.nop

	l.lwz	r17, 12(r1)
	l.sw	4(r17), r0
	l.lwz	r17, 12(r1)
	l.lwz	r19, 4(r17)
	l.lwz	r17, 12(r1)
	l.sw	0(r17), r19
	l.j	.L277
	 l.nop

.L278:
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
	l.bf	.L277
	 l.nop

	l.lwz	r17, 12(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 12(r1)
	l.sw	4(r17), r19
.L277:
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
	l.bf	.L281
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 4(r1)
	l.lwz	r19, 4(r19)
	l.sw	4(r17), r19
.L281:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 4(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L283
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 4(r17)
	l.lwz	r19, 4(r1)
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L283:
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
	l.addi	r25, r25, -1
	l.sw	28(r1), r25
	l.or	r23, r16, r16
	l.movhi	r21, hi(0)
	l.ori	r25, r0, 29
	l.srl	r25, r23, r25
	l.ori	r27, r0, 3
	l.sll	r17, r21, r27
	l.or	r17, r25, r17
	l.sll	r19, r23, r27
	l.lwz	r17, 12(r1)
	l.sw	24(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.sw	20(r1), r17
	l.sw	32(r1), r0
	l.j	.L285
	 l.nop

.L288:
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
	l.bf	.L286
	 l.nop

	l.lwz	r17, 32(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 24(r1)
	l.add	r17, r19, r17
	l.j	.L287
	 l.nop

.L286:
	l.lwz	r17, 32(r1)
	l.addi	r17, r17, 1
	l.sw	32(r1), r17
.L285:
	l.lwz	r19, 32(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L288
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
.L287:
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
	l.addi	r25, r25, -1
	l.sw	28(r1), r25
	l.or	r23, r16, r16
	l.movhi	r21, hi(0)
	l.ori	r25, r0, 29
	l.srl	r25, r23, r25
	l.ori	r27, r0, 3
	l.sll	r17, r21, r27
	l.or	r17, r25, r17
	l.sll	r19, r23, r27
	l.lwz	r17, 12(r1)
	l.sw	24(r1), r17
	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.sw	20(r1), r17
	l.sw	32(r1), r0
	l.j	.L290
	 l.nop

.L293:
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
	l.bf	.L291
	 l.nop

	l.lwz	r17, 32(r1)
	l.mul	r17, r16, r17
	l.lwz	r19, 24(r1)
	l.add	r17, r19, r17
	l.j	.L292
	 l.nop

.L291:
	l.lwz	r17, 32(r1)
	l.addi	r17, r17, 1
	l.sw	32(r1), r17
.L290:
	l.lwz	r19, 32(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L293
	 l.nop

	l.movhi	r17, hi(0)
.L292:
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
	l.bf	.L295
	 l.nop

	l.sub	r17, r0, r17
.L295:
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
	l.j	.L298
	 l.nop

.L299:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L298:
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
	l.bf	.L299
	 l.nop

	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L300
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L302
	 l.nop

	l.ori	r17, r0, 1
	l.sw	4(r1), r17
.L300:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.j	.L302
	 l.nop

.L303:
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
.L302:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L303
	 l.nop

	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L304
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L306
	 l.nop

.L304:
	l.lwz	r17, 8(r1)
.L306:
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
	l.j	.L308
	 l.nop

.L309:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
.L308:
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
	l.bf	.L309
	 l.nop

	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r16
	l.sra	r17, r17, r16
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L310
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L312
	 l.nop

	l.ori	r17, r0, 1
	l.sw	4(r1), r17
.L310:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 1
	l.sw	0(r1), r17
	l.j	.L312
	 l.nop

.L313:
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
.L312:
	l.lwz	r17, 0(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L313
	 l.nop

	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L314
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L316
	 l.nop

.L314:
	l.lwz	r17, 8(r1)
.L316:
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
	l.j	.L318
	 l.nop

.L319:
	l.lwz	r17, 40(r1)
	l.addi	r17, r17, 1
	l.sw	40(r1), r17
.L318:
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
	l.bf	.L319
	 l.nop

	l.lwz	r17, 40(r1)
	l.lbz	r17, 0(r17)
	l.sll	r17, r17, r14
	l.sra	r17, r17, r14
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L320
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L322
	 l.nop

	l.ori	r17, r0, 1
	l.sw	44(r1), r17
.L320:
	l.lwz	r17, 40(r1)
	l.addi	r17, r17, 1
	l.sw	40(r1), r17
	l.j	.L322
	 l.nop

.L323:
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
	l.bf	.L327
	 l.nop

	l.movhi	r21, hi(0)
.L327:
	l.add	r17, r16, r20
	l.add	r21, r21, r17
	l.or	r17, r21, r21
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.add	r19, r18, r18
	l.sfltu	r19, r18
	l.ori	r21, r0, 1
	l.or	r21, r21, r21
	l.bf	.L328
	 l.nop

	l.movhi	r21, hi(0)
.L328:
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
	l.bf	.L329
	 l.nop

	l.movhi	r21, hi(0)
.L329:
	l.or	r25, r27, r27
	l.sub	r17, r23, r25
	l.sub	r21, r17, r21
	l.or	r17, r21, r21
	l.or	r21, r17, r17
	l.sw	48(r1), r21
	l.or	r17, r19, r19
	l.sw	52(r1), r17
.L322:
	l.lwz	r17, 40(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L323
	 l.nop

	l.lwz	r17, 44(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L324
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
	l.bf	.L330
	 l.nop

	l.movhi	r21, hi(0)
.L330:
	l.sub	r17, r23, r28
	l.sub	r21, r17, r21
	l.or	r17, r21, r21
	l.sw	0(r1), r17
	l.sw	4(r1), r19
	l.j	.L326
	 l.nop

.L324:
	l.lwz	r17, 48(r1)
	l.sw	0(r1), r17
	l.lwz	r17, 52(r1)
	l.sw	4(r1), r17
.L326:
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
	l.j	.L332
	 l.nop

.L337:
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
	l.bf	.L333
	 l.nop

	l.lwz	r17, 8(r1)
	l.srl	r17, r17, r16
	l.sw	8(r1), r17
	l.j	.L332
	 l.nop

.L333:
	l.lwz	r19, 20(r1)
	l.ori	r17, r0, 1
	l.sflts	r19, r17
	l.bf	.L335
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
	l.j	.L332
	 l.nop

.L335:
	l.lwz	r17, 24(r1)
	l.j	.L336
	 l.nop

.L332:
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L337
	 l.nop

	l.movhi	r17, hi(0)
.L336:
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
	l.j	.L339
	 l.nop

.L343:
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
	l.bf	.L340
	 l.nop

	l.lwz	r17, 28(r1)
	l.j	.L341
	 l.nop

.L340:
	l.lwz	r19, 24(r1)
	l.ori	r17, r0, 1
	l.sflts	r19, r17
	l.bf	.L342
	 l.nop

	l.lwz	r19, 28(r1)
	l.lwz	r17, 8(r1)
	l.add	r17, r19, r17
	l.sw	36(r1), r17
	l.lwz	r17, 32(r1)
	l.addi	r17, r17, -1
	l.sw	32(r1), r17
.L342:
	l.lwz	r17, 32(r1)
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.sw	32(r1), r17
.L339:
	l.lwz	r17, 32(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L343
	 l.nop

	l.movhi	r17, hi(0)
.L341:
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
	l.bf	.L347
	 l.nop

	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r23, r27, r19
	l.sfgtu	r23, r27
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L350
	 l.nop

	l.movhi	r15, hi(0)
.L350:
	l.sub	r21, r25, r17
	l.sub	r25, r21, r15
	l.or	r21, r25, r25
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L347:
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
	l.bf	.L354
	 l.nop

	l.sub	r17, r0, r17
.L354:
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
	l.bf	.L359
	 l.nop

	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r23, r27, r19
	l.sfgtu	r23, r27
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L362
	 l.nop

	l.movhi	r15, hi(0)
.L362:
	l.sub	r21, r25, r17
	l.sub	r25, r21, r15
	l.or	r21, r25, r25
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L359:
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
	l.j	.L366
	 l.nop

.L368:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L366:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L367
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 0(r1)
	l.sfne	r19, r17
	l.bf	.L368
	 l.nop

.L367:
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L369
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L371
	 l.nop

.L369:
	l.movhi	r17, hi(0)
.L371:
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
	l.j	.L373
	 l.nop

.L375:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 4
	l.sw	0(r1), r17
.L373:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfne	r19, r17
	l.bf	.L374
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L374
	 l.nop

	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L375
	 l.nop

.L374:
	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L376
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L379
	 l.nop

	l.movhi	r17, hi(0)
.L379:
	l.andi	r17, r17, 0xff
	l.j	.L378
	 l.nop

.L376:
	l.xori	r17, r0, -1
.L378:
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
.L381:
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
	l.bf	.L381
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
	l.j	.L384
	 l.nop

.L385:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, 4
	l.sw	0(r1), r17
.L384:
	l.lwz	r17, 0(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L385
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
	l.j	.L388
	 l.nop

.L390:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L388:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L389
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfne	r19, r17
	l.bf	.L389
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L389
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L390
	 l.nop

.L389:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L391
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L392
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L396
	 l.nop

	l.movhi	r17, hi(0)
.L396:
	l.andi	r17, r17, 0xff
	l.j	.L395
	 l.nop

.L392:
	l.xori	r17, r0, -1
	l.j	.L395
	 l.nop

.L391:
	l.movhi	r17, hi(0)
.L395:
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
	l.j	.L398
	 l.nop

.L400:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
.L398:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L399
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r17, 0(r17)
	l.lwz	r19, 4(r1)
	l.sfne	r19, r17
	l.bf	.L400
	 l.nop

.L399:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L401
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L403
	 l.nop

.L401:
	l.movhi	r17, hi(0)
.L403:
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
	l.j	.L405
	 l.nop

.L407:
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 4
	l.sw	8(r1), r17
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 4
	l.sw	4(r1), r17
.L405:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L406
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfeq	r19, r17
	l.bf	.L407
	 l.nop

.L406:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L408
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfltu	r19, r17
	l.bf	.L409
	 l.nop

	l.lwz	r17, 8(r1)
	l.lwz	r19, 0(r17)
	l.lwz	r17, 4(r1)
	l.lwz	r17, 0(r17)
	l.sfgtu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L413
	 l.nop

	l.movhi	r17, hi(0)
.L413:
	l.andi	r17, r17, 0xff
	l.j	.L412
	 l.nop

.L409:
	l.xori	r17, r0, -1
	l.j	.L412
	 l.nop

.L408:
	l.movhi	r17, hi(0)
.L412:
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
	l.j	.L415
	 l.nop

.L416:
	l.lwz	r19, 4(r1)
	l.addi	r17, r19, 4
	l.sw	4(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r21, r17, 4
	l.sw	8(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L415:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L416
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
	l.bf	.L419
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L420
	 l.nop

.L419:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r19, r19, r17
	l.lwz	r17, 0(r1)
	l.ori	r21, r0, 2
	l.sll	r17, r17, r21
	l.sfgeu	r19, r17
	l.bf	.L425
	 l.nop

	l.j	.L422
	 l.nop

.L423:
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
.L422:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L423
	 l.nop

	l.j	.L424
	 l.nop

.L426:
	l.lwz	r19, 4(r1)
	l.addi	r17, r19, 4
	l.sw	4(r1), r17
	l.lwz	r17, 8(r1)
	l.addi	r21, r17, 4
	l.sw	8(r1), r21
	l.lwz	r19, 0(r19)
	l.sw	0(r17), r19
.L425:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L426
	 l.nop

.L424:
	l.lwz	r17, 12(r1)
.L420:
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
	l.j	.L428
	 l.nop

.L429:
	l.lwz	r17, 8(r1)
	l.addi	r19, r17, 4
	l.sw	8(r1), r19
	l.lwz	r19, 4(r1)
	l.sw	0(r17), r19
.L428:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L429
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
	l.bf	.L432
	 l.nop

	l.lwz	r19, 16(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	16(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	12(r1), r17
	l.j	.L433
	 l.nop

.L434:
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
.L433:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L434
	 l.nop

	l.j	.L438
	 l.nop

.L432:
	l.lwz	r19, 16(r1)
	l.lwz	r17, 12(r1)
	l.sfeq	r19, r17
	l.bf	.L438
	 l.nop

	l.j	.L436
	 l.nop

.L437:
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
.L436:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L437
	 l.nop

.L438:
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
	l.bnf	.L441
	 l.nop

	l.or	r25, r7, r7
.L441:
	l.xori	r15, r0, -1
	l.sfgts	r13, r15
	l.bnf	.L442
	 l.nop

	l.or	r27, r6, r6
.L442:
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
	l.bnf	.L443
	 l.nop

	l.or	r23, r7, r7
.L443:
	l.xori	r17, r0, -1
	l.sfgts	r13, r17
	l.bnf	.L444
	 l.nop

	l.or	r21, r6, r6
.L444:
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
	l.bnf	.L447
	 l.nop

	l.or	r27, r7, r7
.L447:
	l.xori	r15, r0, -1
	l.sfgts	r13, r15
	l.bnf	.L448
	 l.nop

	l.or	r25, r6, r6
.L448:
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
	l.bnf	.L449
	 l.nop

	l.or	r21, r7, r7
.L449:
	l.xori	r17, r0, -1
	l.sfgts	r13, r17
	l.bnf	.L450
	 l.nop

	l.or	r23, r6, r6
.L450:
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
	l.j	.L474
	 l.nop

.L477:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 4(r1)
	l.srl	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L475
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.j	.L476
	 l.nop

.L475:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L474:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L477
	 l.nop

	l.movhi	r17, hi(0)
.L476:
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
	l.or	r17, r3, r3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L479
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L480
	 l.nop

.L479:
	l.ori	r16, r0, 1
	l.j	.L481
	 l.nop

.L482:
	l.ori	r19, r0, 1
	l.sra	r17, r17, r19
	l.addi	r16, r16, 1
.L481:
	l.andi	r19, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L482
	 l.nop

	l.or	r17, r16, r16
.L480:
	l.or	r11, r17, r17
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
	l.sflts	r17, r19
	l.bf	.L484
	 l.nop

	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.lwz	r3, 0(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L489
	 l.nop

.L484:
	l.ori	r17, r0, 1
	l.j	.L488
	 l.nop

.L489:
	l.movhi	r17, hi(0)
.L488:
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
	l.sflts	r17, r19
	l.bf	.L491
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
	l.bnf	.L496
	 l.nop

.L491:
	l.ori	r17, r0, 1
	l.j	.L495
	 l.nop

.L496:
	l.movhi	r17, hi(0)
.L495:
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
	l.sflts	r17, r19
	l.bf	.L498
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
	l.bnf	.L503
	 l.nop

.L498:
	l.ori	r17, r0, 1
	l.j	.L502
	 l.nop

.L503:
	l.movhi	r17, hi(0)
.L502:
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
	l.sfne	r17, r19
	l.bf	.L506
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
	l.bnf	.L506
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L508
	 l.nop

	l.movhi	r19, ha(.LC8)
	l.lwz	r17, lo(.LC8)(r19)
	l.j	.L509
	 l.nop

.L508:
	l.movhi	r19, ha(.LC9)
	l.lwz	r17, lo(.LC9)(r19)
.L509:
	l.sw	8(r1), r17
.L512:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L510
	 l.nop

	l.lwz	r4, 8(r1)
	l.lwz	r3, 4(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	4(r1), r17
.L510:
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
	l.bnf	.L515
	 l.nop

	l.lwz	r4, 8(r1)
	l.lwz	r3, 8(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	8(r1), r17
	l.j	.L512
	 l.nop

.L515:
	l.nop
.L506:
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
	l.sfne	r17, r19
	l.bf	.L517
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
	l.bnf	.L517
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L519
	 l.nop

	l.movhi	r21, ha(.LC10)
	l.lwz	r17, lo(.LC10)(r21)
	l.addi	r21, r21, lo(.LC10)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
	l.j	.L520
	 l.nop

.L519:
	l.movhi	r21, ha(.LC11)
	l.lwz	r17, lo(.LC11)(r21)
	l.addi	r21, r21, lo(.LC11)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
.L520:
	l.or	r21, r17, r17
	l.sw	12(r1), r21
	l.or	r17, r19, r19
	l.sw	16(r1), r17
.L523:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L521
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
.L521:
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
	l.bnf	.L526
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
	l.j	.L523
	 l.nop

.L526:
	l.nop
.L517:
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
	l.sfne	r17, r19
	l.bf	.L528
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
	l.bnf	.L528
	 l.nop

	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L530
	 l.nop

	l.movhi	r21, ha(.LC12)
	l.lwz	r17, lo(.LC12)(r21)
	l.addi	r21, r21, lo(.LC12)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
	l.j	.L531
	 l.nop

.L530:
	l.movhi	r21, ha(.LC13)
	l.lwz	r17, lo(.LC13)(r21)
	l.addi	r21, r21, lo(.LC13)
	l.addi	r21, r21, 4
	l.lwz	r19, 0(r21)
.L531:
	l.or	r21, r17, r17
	l.sw	12(r1), r21
	l.or	r17, r19, r19
	l.sw	16(r1), r17
.L534:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L532
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
.L532:
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
	l.bnf	.L537
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
	l.j	.L534
	 l.nop

.L537:
	l.nop
.L528:
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
	l.j	.L539
	 l.nop

.L540:
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
.L539:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L540
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
	l.add	r17, r17, r19
	l.sw	12(r1), r17
	l.j	.L543
	 l.nop

.L545:
	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
	l.lwz	r17, 0(r1)
	l.addi	r17, r17, -1
	l.sw	0(r1), r17
.L543:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L544
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
	l.bf	.L545
	 l.nop

.L544:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L546
	 l.nop

	l.lwz	r17, 12(r1)
	l.sb	0(r17), r0
.L546:
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
	l.j	.L549
	 l.nop

.L554:
	l.nop
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L549:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.sfgeu	r19, r17
	l.bf	.L550
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
	l.bf	.L554
	 l.nop

.L550:
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
	l.j	.L556
	 l.nop

.L560:
	l.lwz	r17, 0(r1)
	l.sw	8(r1), r17
	l.j	.L557
	 l.nop

.L559:
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
	l.bf	.L557
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L558
	 l.nop

.L557:
	l.lwz	r17, 8(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L559
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L556:
	l.lwz	r17, 4(r1)
	l.lbz	r17, 0(r17)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L560
	 l.nop

	l.movhi	r17, hi(0)
.L558:
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
.L563:
	l.lbz	r17, 0(r19)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.or	r21, r17, r17
	l.lwz	r17, 0(r1)
	l.sfne	r17, r21
	l.bf	.L562
	 l.nop

	l.sw	4(r1), r19
.L562:
	l.or	r17, r19, r19
	l.addi	r19, r17, 1
	l.lbz	r17, 0(r17)
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L563
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
	l.bf	.L568
	 l.nop

	l.lwz	r17, 4(r1)
	l.j	.L567
	 l.nop

.L570:
	l.lwz	r5, 8(r1)
	l.lwz	r4, 0(r1)
	l.lwz	r3, 12(r1)
	l.jal	strncmp
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L569
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L567
	 l.nop

.L569:
	l.lwz	r17, 12(r1)
	l.addi	r17, r17, 1
	l.sw	12(r1), r17
.L568:
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
	l.bf	.L570
	 l.nop

	l.movhi	r17, hi(0)
.L567:
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
	l.sflts	r17, r19
	l.bnf	.L572
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
	l.bf	.L574
	 l.nop

.L572:
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
	l.bnf	.L575
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
	l.bnf	.L575
	 l.nop

.L574:
	l.lwz	r19, 8(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r19, r17
	l.lwz	r18, 12(r1)
	l.j	.L578
	 l.nop

.L575:
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
.L578:
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
	l.bf	.L582
	 l.nop

	l.lwz	r17, 12(r1)
	l.j	.L583
	 l.nop

.L582:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.sfltu	r19, r17
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L588
	 l.nop

	l.movhi	r17, hi(0)
.L588:
	l.andi	r17, r17, 0xff
	l.or	r19, r17, r17
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L584
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L583
	 l.nop

.L584:
	l.lwz	r17, 12(r1)
	l.sw	20(r1), r17
	l.j	.L585
	 l.nop

.L587:
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
	l.bf	.L586
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
	l.bf	.L586
	 l.nop

	l.lwz	r17, 20(r1)
	l.j	.L583
	 l.nop

.L586:
	l.lwz	r17, 20(r1)
	l.addi	r17, r17, 1
	l.sw	20(r1), r17
.L585:
	l.lwz	r19, 20(r1)
	l.lwz	r17, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L587
	 l.nop

	l.movhi	r17, hi(0)
.L583:
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
	l.sflts	r17, r19
	l.bnf	.L592
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
.L592:
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
	l.bnf	.L609
	 l.nop

	l.j	.L596
	 l.nop

.L597:
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
.L596:
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
	l.bf	.L597
	 l.nop

	l.j	.L598
	 l.nop

.L609:
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
	l.bnf	.L598
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
	l.bnf	.L598
	 l.nop

	l.j	.L601
	 l.nop

.L602:
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
.L601:
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
	l.bf	.L602
	 l.nop

.L598:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 12(r1)
	l.sw	0(r17), r19
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L603
	 l.nop

	l.lwz	r19, 4(r1)
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r19, r17
	l.lwz	r18, 8(r1)
	l.or	r17, r16, r16
	l.sw	4(r1), r17
	l.or	r17, r18, r18
	l.sw	8(r1), r17
.L603:
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
	l.sw	16(r1), r15
	l.or	r21, r23, r23
	l.sw	20(r1), r21
	l.j	.L611
	 l.nop

.L614:
	l.lwz	r21, 16(r1)
	l.andi	r8, r21, 0
	l.lwz	r21, 20(r1)
	l.andi	r9, r21, 1
	l.or	r21, r8, r8
	l.or	r21, r21, r9
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L612
	 l.nop

	l.lwz	r25, 24(r1)
	l.lwz	r27, 28(r1)
	l.lwz	r12, 0(r1)
	l.lwz	r13, 4(r1)
	l.add	r23, r27, r13
	l.sfltu	r23, r27
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L616
	 l.nop

	l.movhi	r15, hi(0)
.L616:
	l.add	r21, r25, r12
	l.add	r15, r15, r21
	l.or	r21, r15, r15
	l.or	r15, r21, r21
	l.sw	24(r1), r15
	l.or	r21, r23, r23
	l.sw	28(r1), r21
.L612:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.add	r23, r19, r19
	l.sfltu	r23, r19
	l.ori	r15, r0, 1
	l.or	r15, r15, r15
	l.bf	.L617
	 l.nop

	l.movhi	r15, hi(0)
.L617:
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
.L611:
	l.lwz	r21, 16(r1)
	l.lwz	r23, 20(r1)
	l.or	r21, r21, r23
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L614
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
	l.j	.L619
	 l.nop

.L621:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L619:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L622
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L622
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L621
	 l.nop

	l.j	.L622
	 l.nop

.L624:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L623
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L623:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L622:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L624
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L625
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L626
	 l.nop

.L625:
	l.lwz	r17, 12(r1)
.L626:
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
	l.bf	.L628
	 l.nop

	l.lbz	r17, 3(r1)
	l.xori	r17, r17, -1
	l.sb	3(r1), r17
.L628:
	l.lbz	r17, 3(r1)
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L629
	 l.nop

	l.ori	r17, r0, 7
	l.j	.L630
	 l.nop

.L629:
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
.L630:
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
	l.bf	.L632
	 l.nop

	l.lwz	r25, 0(r1)
	l.xori	r21, r25, -1
	l.lwz	r25, 4(r1)
	l.xori	r23, r25, -1
	l.or	r25, r21, r21
	l.sw	0(r1), r25
	l.or	r21, r23, r23
	l.sw	4(r1), r21
.L632:
	l.lwz	r21, 0(r1)
	l.lwz	r23, 4(r1)
	l.or	r21, r21, r23
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L634
	 l.nop

	l.ori	r17, r0, 63
	l.j	.L635
	 l.nop

.L634:
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
.L635:
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
	l.j	.L637
	 l.nop

.L639:
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L638
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L638:
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.add	r17, r17, r17
	l.sw	0(r1), r17
.L637:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L639
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
	l.bf	.L642
	 l.nop

	l.lwz	r23, 12(r1)
	l.lwz	r21, 0(r1)
	l.add	r21, r23, r21
	l.lwz	r23, 16(r1)
	l.sfleu	r23, r21
	l.bf	.L649
	 l.nop

.L642:
	l.sw	28(r1), r0
	l.j	.L644
	 l.nop

.L645:
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
.L644:
	l.lwz	r23, 28(r1)
	l.lwz	r21, 20(r1)
	l.sfltu	r23, r21
	l.bf	.L645
	 l.nop

	l.j	.L646
	 l.nop

.L647:
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
.L646:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 24(r1)
	l.sfgtu	r19, r17
	l.bf	.L647
	 l.nop

	l.j	.L648
	 l.nop

.L650:
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
.L649:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L650
	 l.nop

	l.nop
.L648:
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
	l.bf	.L652
	 l.nop

	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L658
	 l.nop

.L652:
	l.sw	24(r1), r0
	l.j	.L654
	 l.nop

.L655:
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
.L654:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L655
	 l.nop

	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L657
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
	l.j	.L657
	 l.nop

.L659:
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
.L658:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L659
	 l.nop

	l.nop
.L657:
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
	l.bf	.L661
	 l.nop

	l.lwz	r19, 12(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.lwz	r19, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L668
	 l.nop

.L661:
	l.sw	28(r1), r0
	l.j	.L663
	 l.nop

.L664:
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
.L663:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfltu	r19, r17
	l.bf	.L664
	 l.nop

	l.j	.L665
	 l.nop

.L666:
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
.L665:
	l.lwz	r19, 0(r1)
	l.lwz	r17, 24(r1)
	l.sfgtu	r19, r17
	l.bf	.L666
	 l.nop

	l.j	.L667
	 l.nop

.L669:
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
.L668:
	l.lwz	r17, 0(r1)
	l.addi	r19, r17, -1
	l.sw	0(r1), r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L669
	 l.nop

	l.nop
.L667:
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
	l.j	.L683
	 l.nop

.L686:
	l.lhz	r19, 2(r1)
	l.ori	r21, r0, 15
	l.lwz	r17, 4(r1)
	l.sub	r17, r21, r17
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L688
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L683:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L686
	 l.nop

	l.j	.L685
	 l.nop

.L688:
	l.nop
.L685:
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
	l.j	.L690
	 l.nop

.L693:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 4(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L695
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L690:
	l.lwz	r19, 4(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L693
	 l.nop

	l.j	.L692
	 l.nop

.L695:
	l.nop
.L692:
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
	l.sfges	r17, r19
	l.bnf	.L701
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
	l.j	.L699
	 l.nop

.L701:
	l.lwz	r3, 0(r1)
	l.jal	__fixsfsi
	 l.nop

	l.or	r17, r11, r11
.L699:
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
	l.j	.L703
	 l.nop

.L705:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 8(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L704
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L704:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L703:
	l.lwz	r19, 8(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L705
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
	l.j	.L708
	 l.nop

.L710:
	l.lhz	r19, 2(r1)
	l.lwz	r17, 8(r1)
	l.sra	r17, r19, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L709
	 l.nop

	l.lwz	r17, 4(r1)
	l.addi	r17, r17, 1
	l.sw	4(r1), r17
.L709:
	l.lwz	r17, 8(r1)
	l.addi	r17, r17, 1
	l.sw	8(r1), r17
.L708:
	l.lwz	r19, 8(r1)
	l.ori	r17, r0, 15
	l.sfles	r19, r17
	l.bf	.L710
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
	l.j	.L713
	 l.nop

.L715:
	l.lwz	r17, 4(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L714
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 0(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L714:
	l.lwz	r17, 4(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.add	r17, r17, r17
	l.sw	0(r1), r17
.L713:
	l.lwz	r17, 4(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L715
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
	l.bf	.L720
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L719
	 l.nop

.L722:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L721
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L721:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 0(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	0(r1), r17
.L720:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L722
	 l.nop

	l.lwz	r17, 8(r1)
.L719:
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
	l.j	.L724
	 l.nop

.L726:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L724:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L727
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L727
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L726
	 l.nop

	l.j	.L727
	 l.nop

.L729:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L728
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L728:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L727:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L729
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L730
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L731
	 l.nop

.L730:
	l.lwz	r17, 12(r1)
.L731:
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
	l.sflts	r17, r19
	l.bnf	.L740
	 l.nop

	l.xori	r17, r0, -1
	l.j	.L735
	 l.nop

.L740:
	l.lwz	r4, 0(r1)
	l.lwz	r3, 4(r1)
	l.jal	__gtsf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L741
	 l.nop

	l.ori	r17, r0, 1
	l.j	.L735
	 l.nop

.L741:
	l.movhi	r17, hi(0)
.L735:
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
	l.sflts	r17, r19
	l.bnf	.L750
	 l.nop

	l.xori	r17, r0, -1
	l.j	.L745
	 l.nop

.L750:
	l.lwz	r5, 0(r1)
	l.lwz	r6, 4(r1)
	l.lwz	r3, 8(r1)
	l.lwz	r4, 12(r1)
	l.jal	__gtdf2
	 l.nop

	l.or	r17, r11, r11
	l.movhi	r19, hi(0)
	l.sfgts	r17, r19
	l.bnf	.L751
	 l.nop

	l.ori	r17, r0, 1
	l.j	.L745
	 l.nop

.L751:
	l.movhi	r17, hi(0)
.L745:
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
	l.bf	.L757
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
	l.ori	r17, r0, 1
	l.sw	12(r1), r17
.L757:
	l.sb	19(r1), r0
	l.j	.L758
	 l.nop

.L761:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L759
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.add	r17, r19, r17
	l.sw	8(r1), r17
.L759:
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
.L758:
	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L760
	 l.nop

	l.lbz	r19, 19(r1)
	l.ori	r17, r0, 31
	l.sfleu	r19, r17
	l.bf	.L761
	 l.nop

.L760:
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L762
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.j	.L764
	 l.nop

.L762:
	l.lwz	r17, 8(r1)
.L764:
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
	l.bf	.L766
	 l.nop

	l.lwz	r17, 4(r1)
	l.sub	r17, r0, r17
	l.sw	4(r1), r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L770
	 l.nop

	l.movhi	r17, hi(0)
.L770:
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
.L766:
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L767
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.ori	r17, r0, 1
	l.or	r17, r17, r17
	l.bf	.L771
	 l.nop

	l.movhi	r17, hi(0)
.L771:
	l.andi	r17, r17, 0xff
	l.sw	12(r1), r17
.L767:
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
	l.bf	.L768
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.sw	8(r1), r17
.L768:
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
	l.bf	.L773
	 l.nop

	l.lwz	r17, 4(r1)
	l.sub	r17, r0, r17
	l.sw	4(r1), r17
	l.ori	r17, r0, 1
	l.sw	12(r1), r17
.L773:
	l.lwz	r19, 0(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L774
	 l.nop

	l.lwz	r17, 0(r1)
	l.sub	r17, r0, r17
	l.sw	0(r1), r17
.L774:
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
	l.bf	.L775
	 l.nop

	l.lwz	r17, 8(r1)
	l.sub	r17, r0, r17
	l.sw	8(r1), r17
.L775:
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
	l.j	.L778
	 l.nop

.L780:
	l.lhz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sh	4(r1), r17
	l.lhz	r17, 10(r1)
	l.add	r17, r17, r17
	l.sh	10(r1), r17
.L778:
	l.lhz	r19, 4(r1)
	l.lhz	r17, 6(r1)
	l.sfgeu	r19, r17
	l.bf	.L781
	 l.nop

	l.lhz	r17, 10(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L781
	 l.nop

	l.lhz	r17, 4(r1)
	l.ori	r19, r0, 16
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.xori	r19, r0, -1
	l.sfgts	r17, r19
	l.bf	.L780
	 l.nop

	l.j	.L781
	 l.nop

.L783:
	l.lhz	r19, 6(r1)
	l.lhz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L782
	 l.nop

	l.lhz	r19, 6(r1)
	l.lhz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sh	6(r1), r17
	l.lhz	r19, 8(r1)
	l.lhz	r17, 10(r1)
	l.or	r17, r19, r17
	l.sh	8(r1), r17
.L782:
	l.lhz	r17, 10(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sh	10(r1), r17
	l.lhz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sh	4(r1), r17
.L781:
	l.lhz	r17, 10(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L783
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L784
	 l.nop

	l.lhz	r17, 6(r1)
	l.j	.L785
	 l.nop

.L784:
	l.lhz	r17, 8(r1)
.L785:
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
	l.j	.L787
	 l.nop

.L789:
	l.lwz	r17, 4(r1)
	l.add	r17, r17, r17
	l.sw	4(r1), r17
	l.lwz	r17, 16(r1)
	l.add	r17, r17, r17
	l.sw	16(r1), r17
.L787:
	l.lwz	r19, 4(r1)
	l.lwz	r17, 8(r1)
	l.sfgeu	r19, r17
	l.bf	.L790
	 l.nop

	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L790
	 l.nop

	l.lwz	r19, 4(r1)
	l.xori	r17, r0, -1
	l.sfgts	r19, r17
	l.bf	.L789
	 l.nop

	l.j	.L790
	 l.nop

.L792:
	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sfltu	r19, r17
	l.bf	.L791
	 l.nop

	l.lwz	r19, 8(r1)
	l.lwz	r17, 4(r1)
	l.sub	r17, r19, r17
	l.sw	8(r1), r17
	l.lwz	r19, 12(r1)
	l.lwz	r17, 16(r1)
	l.or	r17, r19, r17
	l.sw	12(r1), r17
.L791:
	l.lwz	r17, 16(r1)
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.sw	16(r1), r17
	l.lwz	r17, 4(r1)
	l.srl	r17, r17, r19
	l.sw	4(r1), r17
.L790:
	l.lwz	r17, 16(r1)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L792
	 l.nop

	l.lwz	r17, 0(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L793
	 l.nop

	l.lwz	r17, 8(r1)
	l.j	.L794
	 l.nop

.L793:
	l.lwz	r17, 12(r1)
.L794:
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
	l.sw	20(r1), r29
	l.or	r21, r23, r23
	l.sw	24(r1), r21
	l.lwz	r23, 0(r1)
	l.lwz	r21, 28(r1)
	l.and	r21, r23, r21
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L796
	 l.nop

	l.sw	16(r1), r0
	l.lwz	r23, 24(r1)
	l.lwz	r29, 0(r1)
	l.lwz	r21, 28(r1)
	l.sub	r21, r29, r21
	l.sll	r21, r23, r21
	l.sw	12(r1), r21
	l.j	.L797
	 l.nop

.L796:
	l.lwz	r21, 0(r1)
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L798
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.j	.L800
	 l.nop

.L798:
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
.L797:
	l.lwz	r17, 12(r1)
	l.lwz	r19, 16(r1)
.L800:
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
	l.sw	20(r1), r29
	l.or	r21, r23, r23
	l.sw	24(r1), r21
	l.lwz	r23, 0(r1)
	l.lwz	r21, 28(r1)
	l.and	r21, r23, r21
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L802
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
	l.j	.L803
	 l.nop

.L802:
	l.lwz	r21, 0(r1)
	l.movhi	r23, hi(0)
	l.sfne	r21, r23
	l.bf	.L804
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.j	.L806
	 l.nop

.L804:
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
.L803:
	l.lwz	r17, 12(r1)
	l.lwz	r19, 16(r1)
.L806:
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
	l.bf	.L812
	 l.nop

	l.ori	r17, r0, 16
	l.j	.L813
	 l.nop

.L812:
	l.movhi	r17, hi(0)
.L813:
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
	l.bf	.L814
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L815
	 l.nop

.L814:
	l.movhi	r17, hi(0)
.L815:
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
	l.bf	.L816
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L817
	 l.nop

.L816:
	l.movhi	r17, hi(0)
.L817:
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
	l.bf	.L818
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L819
	 l.nop

.L818:
	l.movhi	r17, hi(0)
.L819:
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
	l.bf	.L821
	 l.nop

	l.movhi	r17, hi(0)
.L821:
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
	l.sw	24(r1), r25
	l.or	r21, r23, r23
	l.sw	28(r1), r21
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.sw	16(r1), r21
	l.or	r17, r19, r19
	l.sw	20(r1), r17
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfges	r19, r17
	l.bf	.L823
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L828
	 l.nop

.L823:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfles	r19, r17
	l.bf	.L825
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L828
	 l.nop

.L825:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfgeu	r19, r17
	l.bf	.L826
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L828
	 l.nop

.L826:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfleu	r19, r17
	l.bf	.L827
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L828
	 l.nop

.L827:
	l.ori	r17, r0, 1
.L828:
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
	l.bf	.L832
	 l.nop

	l.ori	r17, r0, 16
	l.j	.L833
	 l.nop

.L832:
	l.movhi	r17, hi(0)
.L833:
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
	l.bf	.L834
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L835
	 l.nop

.L834:
	l.movhi	r17, hi(0)
.L835:
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
	l.bf	.L836
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L837
	 l.nop

.L836:
	l.movhi	r17, hi(0)
.L837:
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
	l.bf	.L838
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L839
	 l.nop

.L838:
	l.movhi	r17, hi(0)
.L839:
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
	l.sw	20(r1), r13
	l.or	r25, r27, r27
	l.sw	24(r1), r25
	l.lwz	r27, 0(r1)
	l.lwz	r25, 28(r1)
	l.and	r25, r27, r25
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L842
	 l.nop

	l.sw	12(r1), r0
	l.lwz	r27, 20(r1)
	l.lwz	r13, 0(r1)
	l.lwz	r25, 28(r1)
	l.sub	r25, r13, r25
	l.srl	r25, r27, r25
	l.sw	16(r1), r25
	l.j	.L843
	 l.nop

.L842:
	l.lwz	r25, 0(r1)
	l.movhi	r27, hi(0)
	l.sfne	r25, r27
	l.bf	.L844
	 l.nop

	l.lwz	r17, 4(r1)
	l.lwz	r19, 8(r1)
	l.j	.L846
	 l.nop

.L844:
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
.L843:
	l.lwz	r21, 12(r1)
	l.lwz	r23, 16(r1)
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L846:
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
	l.bf	.L853
	 l.nop

	l.movhi	r15, hi(0)
.L853:
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
	l.bf	.L860
	 l.nop

	l.movhi	r15, hi(0)
.L860:
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
	l.bf	.L861
	 l.nop

	l.movhi	r25, hi(0)
.L861:
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
	l.bf	.L862
	 l.nop

	l.movhi	r25, hi(0)
.L862:
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
.L869:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L866
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
.L866:
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
	l.bnf	.L874
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
	l.j	.L869
	 l.nop

.L874:
	l.nop
	l.lwz	r17, 12(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L870
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
	l.j	.L872
	 l.nop

.L870:
	l.lwz	r17, 16(r1)
	l.lwz	r19, 20(r1)
.L872:
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
.L879:
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L876
	 l.nop

	l.lwz	r4, 4(r1)
	l.lwz	r3, 12(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	12(r1), r17
.L876:
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
	l.bnf	.L884
	 l.nop

	l.lwz	r4, 4(r1)
	l.lwz	r3, 4(r1)
	l.jal	__mulsf3
	 l.nop

	l.or	r17, r11, r11
	l.sw	4(r1), r17
	l.j	.L879
	 l.nop

.L884:
	l.nop
	l.lwz	r17, 8(r1)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L880
	 l.nop

	l.movhi	r17, ha(.LC21)
	l.lwz	r4, 12(r1)
	l.lwz	r3, lo(.LC21)(r17)
	l.jal	__divsf3
	 l.nop

	l.or	r19, r11, r11
	l.or	r17, r19, r19
	l.j	.L882
	 l.nop

.L880:
	l.lwz	r17, 12(r1)
.L882:
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
	l.sw	24(r1), r25
	l.or	r21, r23, r23
	l.sw	28(r1), r21
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
	l.or	r21, r17, r17
	l.sw	16(r1), r21
	l.or	r17, r19, r19
	l.sw	20(r1), r17
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfgeu	r19, r17
	l.bf	.L886
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L891
	 l.nop

.L886:
	l.lwz	r19, 24(r1)
	l.lwz	r17, 16(r1)
	l.sfleu	r19, r17
	l.bf	.L888
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L891
	 l.nop

.L888:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfgeu	r19, r17
	l.bf	.L889
	 l.nop

	l.movhi	r17, hi(0)
	l.j	.L891
	 l.nop

.L889:
	l.lwz	r19, 28(r1)
	l.lwz	r17, 20(r1)
	l.sfleu	r19, r17
	l.bf	.L890
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L891
	 l.nop

.L890:
	l.ori	r17, r0, 1
.L891:
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
