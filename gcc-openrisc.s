	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sfleu	r3, r4
	l.bf	.L2
	l.or	r11, r3, r3
	l.add	r17, r4, r5
	l.j	.L3
	l.add	r5, r3, r5
.L4:
	l.addi	r17, r17, -1
	l.addi	r5, r5, -1
	l.lbs	r19, 0(r17)
	l.sb	0(r5), r19
.L3:
	l.sfne	r17, r4
	l.bf	.L4
	 l.nop

	l.j	.L8
	l.lwz	r2, 0(r1)
.L2:
	l.sfeq	r3, r4
	l.bf	.L5
	 l.nop

	l.add	r21, r3, r5
	l.or	r17, r4, r4
	l.j	.L6
	l.or	r5, r3, r3
.L7:
	l.addi	r17, r17, 1
	l.addi	r5, r5, 1
	l.lbs	r19, -1(r17)
	l.sb	-1(r5), r19
.L6:
	l.sfne	r5, r21
	l.bf	.L7
	 l.nop

.L5:
	l.lwz	r2, 0(r1)
.L8:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L10
	l.andi	r5, r5, 0xff
.L12:
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.addi	r3, r3, 1
.L10:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L15
	 l.nop

	l.lbz	r17, 0(r4)
	l.sfne	r5, r17
	l.bf	.L12
	l.sb	0(r3), r17
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
.L15:
	l.bnf	.L13
	l.addi	r11, r3, 1
	l.movhi	r11, hi(0)
.L13:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L17
	l.andi	r4, r4, 0xff
.L24:
	l.addi	r5, r5, -1
.L17:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L23
	l.movhi	r11, hi(0)
	l.lbz	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L24
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L22
	l.addi	r3, r3, -1
	l.or	r11, r3, r3
.L22:
.L23:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L26
	l.sw	4(r1), r9
.L32:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
.L26:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L31
	 l.nop

	l.lbz	r19, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L32
	l.addi	r5, r5, -1
	l.addi	r5, r5, 1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
.L31:
	l.bf	.L30
	 l.nop

	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.j	.L29
	l.sub	r11, r11, r17
.L30:
	l.movhi	r11, hi(0)
.L29:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.j	.L34
	l.or	r17, r3, r3
.L35:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r4)
	l.sb	-1(r17), r19
.L34:
	l.sfne	r17, r5
	l.bf	.L35
	l.lwz	r9, 4(r1)
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r4, r4, 0xff
	l.j	.L37
	l.addi	r5, r5, -1
.L39:
	l.lbz	r17, 0(r17)
	l.sfne	r4, r17
	l.bf	.L40
	l.addi	r19, r5, -1
	l.j	.L38
	l.add	r11, r3, r5
.L40:
	l.or	r5, r19, r19
.L37:
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L39
	l.add	r17, r3, r5
	l.movhi	r11, hi(0)
.L38:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.j	.L42
	l.or	r17, r3, r3
.L43:
	l.sb	0(r17), r4
	l.addi	r17, r17, 1
.L42:
	l.sfne	r17, r5
	l.bf	.L43
	l.lwz	r9, 4(r1)
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L45
	l.or	r11, r3, r3
.L46:
	l.addi	r4, r4, 1
	l.addi	r11, r11, 1
.L45:
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L46
	l.sb	0(r11), r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.j	.L48
	l.andi	r4, r4, 0xff
.L48:
	l.lbs	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L49
	 l.nop

	l.lbz	r17, 0(r11)
	l.sfne	r4, r17
	l.bf	.L48
	l.addi	r11, r11, 1
	l.addi	r11, r11, -1
.L49:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
.L53:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bf	.L54
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.sfne	r17, r19
	l.bf	.L53
	l.movhi	r11, hi(0)
	l.j	.L55
	l.lwz	r2, 0(r1)
.L54:
	l.or	r11, r3, r3
	l.lwz	r2, 0(r1)
.L55:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L57
	l.sw	4(r1), r9
.L60:
	l.addi	r4, r4, 1
.L57:
	l.lbs	r19, 0(r3)
	l.lbs	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L58
	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L60
	l.addi	r3, r3, 1
	l.addi	r3, r3, -1
.L58:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L62
	l.or	r11, r3, r3
.L63:
	l.addi	r11, r11, 1
.L62:
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L63
	l.lwz	r9, 4(r1)
	l.sub	r11, r11, r3
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L69
	l.sw	4(r1), r9
	l.addi	r5, r5, -1
	l.j	.L66
	l.add	r17, r3, r5
.L70:
	l.addi	r4, r4, 1
.L66:
	l.lbz	r19, 0(r3)
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L67
	 l.nop

	l.lbz	r19, 0(r4)
	l.sfeq	r19, r21
	l.bf	.L67
	l.sfeq	r3, r17
	l.bf	.L67
	 l.nop

	l.lbz	r21, 0(r3)
	l.sfeq	r21, r19
	l.bf	.L70
	l.addi	r3, r3, 1
	l.addi	r3, r3, -1
.L67:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.j	.L65
	l.sub	r11, r11, r17
.L69:
	l.movhi	r11, hi(0)
.L65:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L72
	l.or	r17, r3, r3
.L73:
	l.lbs	r19, 1(r17)
	l.sb	0(r4), r19
	l.lbs	r19, 0(r17)
	l.sb	1(r4), r19
	l.addi	r4, r4, 2
	l.addi	r17, r17, 2
.L72:
	l.add	r19, r3, r5
	l.sub	r19, r19, r17
	l.ori	r21, r0, 1
	l.sfgts	r19, r21
	l.bf	.L73
	l.lwz	r9, 4(r1)
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.bf	.L75
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L75:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L77
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L77:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L80
	l.sw	4(r1), r9
	l.ori	r17, r0, 9
	l.sfne	r3, r17
	l.bnf	.L79
	l.ori	r11, r0, 1
	l.j	.L79
	l.movhi	r11, hi(0)
.L80:
	l.ori	r11, r0, 1
.L79:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L84
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfne	r3, r17
	l.bnf	.L88
	l.lwz	r2, 0(r1)
	l.movhi	r11, hi(0)
.L84:
	l.lwz	r2, 0(r1)
.L88:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.bf	.L90
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L90:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -33
	l.ori	r17, r0, 93
	l.sfleu	r3, r17
	l.bf	.L92
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L92:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.bf	.L94
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L94:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -32
	l.ori	r17, r0, 94
	l.sfleu	r3, r17
	l.bf	.L96
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L96:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L99
	l.sw	4(r1), r9
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfgtu	r3, r17
	l.bnf	.L98
	l.ori	r11, r0, 1
	l.j	.L98
	l.movhi	r11, hi(0)
.L99:
	l.ori	r11, r0, 1
.L98:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -65
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.bf	.L103
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L103:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L105
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L105
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L105
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfgtu	r3, r17
	l.bnf	.L111
	l.lwz	r2, 0(r1)
	l.movhi	r11, hi(0)
.L105:
	l.lwz	r2, 0(r1)
.L111:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.bf	.L113
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L113:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bf	.L115
	l.sw	4(r1), r9
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L116
	l.ori	r11, r0, 1
	l.j	.L116
	l.movhi	r11, hi(0)
.L115:
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L117
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L118
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r17, r3, r17
	l.ori	r19, r0, 8184
	l.sfleu	r17, r19
	l.bf	.L119
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L120
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfeq	r3, r17
	l.bnf	.L116
	l.ori	r11, r0, 1
	l.j	.L116
	l.movhi	r11, hi(0)
.L117:
	l.j	.L116
	l.ori	r11, r0, 1
.L118:
	l.j	.L116
	l.ori	r11, r0, 1
.L119:
	l.j	.L116
	l.ori	r11, r0, 1
.L120:
	l.movhi	r11, hi(0)
.L116:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L125
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfgtu	r3, r17
	l.bnf	.L129
	l.lwz	r2, 0(r1)
	l.movhi	r11, hi(0)
.L125:
	l.lwz	r2, 0(r1)
.L129:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r11, r3, 127
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
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
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L134
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L135
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__gtdf2
	l.or	r4, r22, r22
	l.sfgts	r11, r24
	l.bnf	.L138
	l.movhi	r21, ha(.LC0)
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__subdf3
	l.or	r4, r22, r22
	l.or	r21, r11, r11
	l.or	r17, r21, r21
	l.j	.L132
	l.or	r19, r12, r12
.L134:
	l.or	r17, r20, r20
	l.j	.L132
	l.or	r19, r22, r22
.L135:
	l.or	r17, r16, r16
	l.j	.L132
	l.or	r19, r18, r18
.L138:
	l.addi	r23, r21, lo(.LC0)
	l.lwz	r17, lo(.LC0)(r21)
	l.lwz	r19, 4(r23)
.L132:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	fdim, .-fdim
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.section	.text
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L142
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L143
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L146
	l.movhi	r17, ha(.LC1)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.j	.L147
	l.lwz	r16, 0(r1)
.L142:
	l.j	.L140
	l.or	r11, r16, r16
.L143:
	l.j	.L140
	l.or	r11, r18, r18
.L146:
	l.lwz	r11, lo(.LC1)(r17)
.L140:
	l.lwz	r16, 0(r1)
.L147:
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L152
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L153
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L150
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L154
	 l.nop

	l.or	r17, r16, r16
	l.j	.L149
	l.or	r19, r18, r18
.L150:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L157
	l.or	r17, r16, r16
	l.j	.L149
	l.or	r19, r18, r18
.L152:
	l.or	r17, r16, r16
	l.j	.L149
	l.or	r19, r18, r18
.L153:
	l.j	.L149
	l.or	r19, r22, r22
.L154:
	l.or	r17, r20, r20
	l.j	.L149
	l.or	r19, r22, r22
.L157:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
.L149:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L162
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L163
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L160
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bf	.L159
	l.or	r11, r18, r18
	l.j	.L159
	l.or	r11, r16, r16
.L160:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L159
	l.or	r11, r16, r16
	l.j	.L159
	l.or	r11, r18, r18
.L162:
	l.j	.L159
	l.or	r11, r16, r16
.L163:
	l.or	r11, r18, r18
.L159:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L173
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L174
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L171
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L175
	 l.nop

	l.or	r17, r16, r16
	l.j	.L170
	l.or	r19, r18, r18
.L171:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L178
	l.or	r17, r16, r16
	l.j	.L170
	l.or	r19, r18, r18
.L173:
	l.or	r17, r16, r16
	l.j	.L170
	l.or	r19, r18, r18
.L174:
	l.j	.L170
	l.or	r19, r22, r22
.L175:
	l.or	r17, r20, r20
	l.j	.L170
	l.or	r19, r22, r22
.L178:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
.L170:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L183
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L184
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L181
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L185
	 l.nop

	l.or	r17, r20, r20
	l.j	.L180
	l.or	r19, r22, r22
.L181:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L188
	l.or	r17, r20, r20
	l.j	.L180
	l.or	r19, r22, r22
.L183:
	l.or	r17, r16, r16
	l.j	.L180
	l.or	r19, r18, r18
.L184:
	l.j	.L180
	l.or	r19, r22, r22
.L185:
	l.or	r17, r16, r16
	l.j	.L180
	l.or	r19, r18, r18
.L188:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L180:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L193
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L194
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L191
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bf	.L190
	l.or	r11, r16, r16
	l.j	.L190
	l.or	r11, r18, r18
.L191:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L190
	l.or	r11, r18, r18
	l.j	.L190
	l.or	r11, r16, r16
.L193:
	l.j	.L190
	l.or	r11, r16, r16
.L194:
	l.or	r11, r18, r18
.L190:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L204
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L205
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L202
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L206
	 l.nop

	l.or	r17, r20, r20
	l.j	.L201
	l.or	r19, r22, r22
.L202:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L209
	l.or	r17, r20, r20
	l.j	.L201
	l.or	r19, r22, r22
.L204:
	l.or	r17, r16, r16
	l.j	.L201
	l.or	r19, r18, r18
.L205:
	l.j	.L201
	l.or	r19, r22, r22
.L206:
	l.or	r17, r16, r16
	l.j	.L201
	l.or	r19, r18, r18
.L209:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L201:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
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
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r19, ha(s.0)
	l.j	.L211
	l.addi	r19, r19, lo(s.0)
.L212:
	l.movhi	r17, ha(digits)
	l.addi	r17, r17, lo(digits)
	l.add	r17, r17, r21
	l.lbs	r17, 0(r17)
	l.sb	0(r19), r17
	l.addi	r19, r19, 1
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
.L211:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L212
	l.andi	r21, r3, 63
	l.sb	0(r19), r0
	l.movhi	r11, ha(s.0)
	l.addi	r11, r11, lo(s.0)
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r21, hi(0)
	l.addi	r23, r3, -1
	l.movhi	r17, ha(seed)
	l.sw	lo(seed)(r17), r21
	l.addi	r17, r17, lo(seed)
	l.sw	4(r17), r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r2
	l.addi	r2, r1, 36
	l.sw	32(r1), r9
	l.movhi	r28, ha(seed)
	l.movhi	r5, hi(1481703424)
	l.ori	r5, r5, 62509
	l.movhi	r6, hi(1284833280)
	l.ori	r6, r6, 32557
	l.lwz	r3, lo(seed)(r28)
	l.addi	r17, r28, lo(seed)
	l.jal	__muldi3
	l.lwz	r4, 4(r17)
	l.or	r24, r11, r11
	l.or	r20, r24, r24
	l.addi	r25, r12, 1
	l.sfltu	r25, r12
	l.bf	.L215
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L215:
	l.add	r23, r21, r20
	l.sw	lo(seed)(r28), r23
	l.addi	r28, r28, lo(seed)
	l.sw	4(r28), r25
	l.ori	r17, r0, 1
	l.srl	r18, r23, r17
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r2, 28(r1)
	l.lwz	r9, 32(r1)
	l.jr	r9
	l.addi	r1, r1, 36
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L217
	l.sw	4(r1), r9
	l.sw	4(r3), r0
	l.j	.L216
	l.sw	0(r3), r0
.L217:
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L219
	l.lwz	r2, 0(r1)
	l.sw	4(r17), r3
.L216:
	l.lwz	r2, 0(r1)
.L219:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.sw	4(r1), r9
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L221
	l.addi	r2, r1, 8
	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L221:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L223
	l.lwz	r2, 0(r1)
	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
	l.lwz	r2, 0(r1)
.L223:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -40
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r30
	l.sw	32(r1), r2
	l.addi	r2, r1, 40
	l.sw	36(r1), r9
	l.or	r24, r3, r3
	l.or	r26, r4, r4
	l.or	r30, r5, r5
	l.or	r20, r6, r6
	l.or	r28, r7, r7
	l.lwz	r22, 0(r5)
	l.or	r18, r4, r4
	l.j	.L225
	l.movhi	r16, hi(0)
.L228:
	l.jalr	r28
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L226
	l.add	r18, r18, r20
	l.mul	r16, r16, r20
	l.j	.L227
	l.add	r11, r26, r16
.L226:
	l.addi	r16, r16, 1
.L225:
	l.sfne	r16, r22
	l.bf	.L228
	l.or	r4, r18, r18
	l.addi	r17, r22, 1
	l.sw	0(r30), r17
	l.mul	r22, r20, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memcpy
	l.add	r3, r26, r22
.L227:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r30, 28(r1)
	l.lwz	r2, 32(r1)
	l.lwz	r9, 36(r1)
	l.jr	r9
	l.addi	r1, r1, 40
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r2
	l.addi	r2, r1, 36
	l.sw	32(r1), r9
	l.or	r24, r3, r3
	l.or	r26, r4, r4
	l.or	r20, r6, r6
	l.or	r22, r7, r7
	l.lwz	r28, 0(r5)
	l.or	r18, r4, r4
	l.j	.L230
	l.movhi	r16, hi(0)
.L233:
	l.jalr	r22
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L231
	l.add	r18, r18, r20
	l.mul	r6, r16, r20
	l.j	.L232
	l.add	r11, r26, r6
.L231:
	l.addi	r16, r16, 1
.L230:
	l.sfne	r16, r28
	l.bf	.L233
	l.or	r4, r18, r18
	l.movhi	r11, hi(0)
.L232:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r2, 28(r1)
	l.lwz	r9, 32(r1)
	l.jr	r9
	l.addi	r1, r1, 36
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L235
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L235:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.j	.L237
	l.or	r16, r3, r3
.L238:
	l.addi	r16, r16, 1
.L237:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L238
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L244
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L239
	l.ori	r19, r0, 1
	l.j	.L245
	l.movhi	r19, hi(0)
.L244:
	l.movhi	r19, hi(0)
.L239:
	l.addi	r16, r16, 1
.L245:
	l.j	.L241
	l.movhi	r11, hi(0)
.L242:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
.L241:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r17, r21
	l.bf	.L242
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L247
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L247:
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.j	.L249
	l.or	r16, r3, r3
.L250:
	l.addi	r16, r16, 1
.L249:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L250
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L256
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L251
	l.ori	r19, r0, 1
	l.j	.L257
	l.movhi	r19, hi(0)
.L256:
	l.movhi	r19, hi(0)
.L251:
	l.addi	r16, r16, 1
.L257:
	l.j	.L253
	l.movhi	r11, hi(0)
.L254:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
.L253:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r17, r21
	l.bf	.L254
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L259
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L259:
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.addi	r1, r1, -52
	l.sw	8(r1), r14
	l.sw	12(r1), r16
	l.sw	16(r1), r18
	l.sw	20(r1), r20
	l.sw	24(r1), r22
	l.sw	28(r1), r24
	l.sw	32(r1), r26
	l.sw	36(r1), r28
	l.sw	40(r1), r30
	l.sw	44(r1), r2
	l.addi	r2, r1, 52
	l.sw	48(r1), r9
	l.j	.L261
	l.or	r14, r3, r3
.L262:
	l.addi	r14, r14, 1
.L261:
	l.jal	isspace
	l.lbs	r3, 0(r14)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L262
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r14)
	l.sfeq	r17, r19
	l.bf	.L268
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L263
	l.ori	r25, r0, 1
	l.j	.L269
	l.movhi	r25, hi(0)
.L268:
	l.movhi	r25, hi(0)
.L263:
	l.addi	r14, r14, 1
.L269:
	l.movhi	r16, hi(0)
	l.j	.L265
	l.movhi	r18, hi(0)
.L266:
	l.ori	r17, r0, 30
	l.srl	r17, r18, r17
	l.sll	r20, r16, r19
	l.or	r20, r17, r20
	l.sll	r22, r18, r19
	l.add	r29, r22, r18
	l.sfltu	r29, r22
	l.bf	.L272
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L272:
	l.add	r27, r20, r16
	l.add	r27, r21, r27
	l.add	r13, r29, r29
	l.sfltu	r13, r29
	l.bf	.L273
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L273:
	l.add	r12, r27, r27
	l.add	r12, r19, r12
	l.addi	r14, r14, 1
	l.lbs	r17, -1(r14)
	l.addi	r17, r17, -48
	l.or	r26, r17, r17
	l.ori	r19, r0, 31
	l.sra	r24, r17, r19
	l.sub	r19, r13, r26
	l.sfgtu	r19, r13
	l.bf	.L274
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L274:
	l.sub	r17, r12, r24
	l.sub	r17, r17, r23
	l.or	r16, r17, r17
	l.or	r18, r19, r19
.L265:
	l.lbs	r17, 0(r14)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L266
	l.ori	r19, r0, 2
	l.movhi	r21, hi(0)
	l.sfne	r25, r21
	l.bf	.L270
	l.movhi	r28, hi(0)
	l.movhi	r30, hi(0)
	l.sub	r19, r30, r18
	l.sfne	r19, r21
	l.bf	.L271
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L271:
	l.sub	r17, r28, r16
	l.sub	r17, r17, r21
	l.sw	-52(r2), r17
	l.j	.L267
	l.sw	-48(r2), r19
.L270:
	l.sw	-52(r2), r16
	l.sw	-48(r2), r18
.L267:
	l.lwz	r17, -52(r2)
	l.lwz	r19, -48(r2)
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 8(r1)
	l.lwz	r16, 12(r1)
	l.lwz	r18, 16(r1)
	l.lwz	r20, 20(r1)
	l.lwz	r22, 24(r1)
	l.lwz	r24, 28(r1)
	l.lwz	r26, 32(r1)
	l.lwz	r28, 36(r1)
	l.lwz	r30, 40(r1)
	l.lwz	r2, 44(r1)
	l.lwz	r9, 48(r1)
	l.jr	r9
	l.addi	r1, r1, 52
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r2
	l.addi	r2, r1, 36
	l.sw	32(r1), r9
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r18, r5, r5
	l.or	r20, r6, r6
	l.j	.L276
	l.or	r24, r7, r7
.L280:
	l.srl	r16, r18, r28
	l.mul	r16, r16, r20
	l.add	r16, r22, r16
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L277
	l.sfles	r11, r17
	l.j	.L282
	l.srl	r18, r18, r28
.L277:
	l.bf	.L281
	l.add	r22, r16, r20
	l.ori	r17, r0, 1
	l.srl	r17, r18, r17
	l.addi	r18, r18, -1
	l.sub	r18, r18, r17
.L276:
	l.movhi	r17, hi(0)
.L282:
	l.sfne	r18, r17
	l.bf	.L280
	l.ori	r28, r0, 1
	l.j	.L279
	l.movhi	r11, hi(0)
.L281:
	l.or	r11, r16, r16
.L279:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r2, 28(r1)
	l.lwz	r9, 32(r1)
	l.jr	r9
	l.addi	r1, r1, 36
	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r2
	l.addi	r2, r1, 36
	l.sw	32(r1), r9
	l.or	r28, r3, r3
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.or	r24, r8, r8
	l.or	r18, r5, r5
	l.j	.L284
	l.or	r20, r4, r4
.L287:
	l.sra	r16, r18, r17
	l.mul	r16, r16, r22
	l.add	r16, r20, r16
	l.or	r5, r24, r24
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L288
	l.sfles	r11, r17
	l.bf	.L289
	l.ori	r17, r0, 1
	l.add	r20, r16, r22
	l.addi	r18, r18, -1
.L289:
	l.sra	r18, r18, r17
.L284:
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bf	.L287
	l.ori	r17, r0, 1
	l.j	.L285
	l.movhi	r11, hi(0)
.L288:
	l.or	r11, r16, r16
.L285:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r2, 28(r1)
	l.lwz	r9, 32(r1)
	l.jr	r9
	l.addi	r1, r1, 36
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.movhi	r25, hi(0)
	l.sfges	r3, r25
	l.bf	.L292
	l.or	r19, r4, r4
	l.movhi	r12, hi(0)
	l.movhi	r13, hi(0)
	l.sub	r23, r13, r4
	l.sfne	r23, r25
	l.bf	.L294
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L294:
	l.sub	r21, r12, r17
	l.sub	r21, r21, r27
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L292:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	l.addi	r1, r1, -52
	l.sw	8(r1), r14
	l.sw	12(r1), r16
	l.sw	16(r1), r18
	l.sw	20(r1), r20
	l.sw	24(r1), r22
	l.sw	28(r1), r24
	l.sw	32(r1), r26
	l.sw	36(r1), r28
	l.sw	40(r1), r30
	l.sw	44(r1), r2
	l.addi	r2, r1, 52
	l.sw	48(r1), r9
	l.or	r14, r3, r3
	l.or	r23, r5, r5
	l.or	r16, r4, r4
	l.or	r18, r5, r5
	l.or	r20, r6, r6
	l.or	r22, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r23, r23
	l.or	r24, r11, r11
	l.or	r26, r12, r12
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__moddi3
	l.or	r4, r18, r18
	l.sw	-52(r2), r11
	l.sw	-48(r2), r12
	l.sw	0(r14), r24
	l.sw	4(r14), r26
	l.lwz	r19, -52(r2)
	l.lwz	r21, -48(r2)
	l.sw	8(r14), r19
	l.sw	12(r14), r21
	l.or	r11, r14, r14
	l.lwz	r14, 8(r1)
	l.lwz	r16, 12(r1)
	l.lwz	r18, 16(r1)
	l.lwz	r20, 20(r1)
	l.lwz	r22, 24(r1)
	l.lwz	r24, 28(r1)
	l.lwz	r26, 32(r1)
	l.lwz	r28, 36(r1)
	l.lwz	r30, 40(r1)
	l.lwz	r2, 44(r1)
	l.lwz	r9, 48(r1)
	l.jr	r9
	l.addi	r1, r1, 52
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L297
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L297:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.movhi	r25, hi(0)
	l.sfges	r3, r25
	l.bf	.L300
	l.or	r19, r4, r4
	l.movhi	r12, hi(0)
	l.movhi	r13, hi(0)
	l.sub	r23, r13, r4
	l.sfne	r23, r25
	l.bf	.L302
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L302:
	l.sub	r21, r12, r17
	l.sub	r21, r21, r27
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L300:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	l.addi	r1, r1, -52
	l.sw	8(r1), r14
	l.sw	12(r1), r16
	l.sw	16(r1), r18
	l.sw	20(r1), r20
	l.sw	24(r1), r22
	l.sw	28(r1), r24
	l.sw	32(r1), r26
	l.sw	36(r1), r28
	l.sw	40(r1), r30
	l.sw	44(r1), r2
	l.addi	r2, r1, 52
	l.sw	48(r1), r9
	l.or	r14, r3, r3
	l.or	r23, r5, r5
	l.or	r16, r4, r4
	l.or	r18, r5, r5
	l.or	r20, r6, r6
	l.or	r22, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r23, r23
	l.or	r24, r11, r11
	l.or	r26, r12, r12
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__moddi3
	l.or	r4, r18, r18
	l.sw	-52(r2), r11
	l.sw	-48(r2), r12
	l.sw	0(r14), r24
	l.sw	4(r14), r26
	l.lwz	r19, -52(r2)
	l.lwz	r21, -48(r2)
	l.sw	8(r14), r19
	l.sw	12(r14), r21
	l.or	r11, r14, r14
	l.lwz	r14, 8(r1)
	l.lwz	r16, 12(r1)
	l.lwz	r18, 16(r1)
	l.lwz	r20, 20(r1)
	l.lwz	r22, 24(r1)
	l.lwz	r24, 28(r1)
	l.lwz	r26, 32(r1)
	l.lwz	r28, 36(r1)
	l.lwz	r30, 40(r1)
	l.lwz	r2, 44(r1)
	l.lwz	r9, 48(r1)
	l.jr	r9
	l.addi	r1, r1, 52
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L305
	l.sw	4(r1), r9
.L305:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L311
	l.sfne	r4, r17
	l.bf	.L305
	l.addi	r3, r3, 4
	l.addi	r3, r3, -4
	l.lwz	r17, 0(r3)
.L311:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L310
	l.movhi	r11, hi(0)
	l.or	r11, r3, r3
.L310:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L313
	l.sw	4(r1), r9
.L319:
	l.addi	r4, r4, 4
.L313:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L320
	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L314
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfne	r17, r19
	l.bf	.L319
	l.addi	r3, r3, 4
	l.addi	r3, r3, -4
.L314:
	l.lwz	r19, 0(r3)
.L320:
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L316
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L316
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L316:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L322:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L322
	l.sw	-4(r17), r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L324
	l.or	r11, r3, r3
.L325:
	l.addi	r11, r11, 4
.L324:
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L325
	l.ori	r17, r0, 2
	l.sub	r11, r11, r3
	l.sra	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L327
	l.sw	4(r1), r9
.L335:
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
.L327:
	l.movhi	r21, hi(0)
	l.sfeq	r5, r21
	l.bf	.L334
	l.movhi	r17, hi(0)
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L328
	l.sfeq	r19, r21
	l.bf	.L328
	l.sfne	r17, r21
	l.bf	.L335
	l.addi	r5, r5, -1
	l.addi	r5, r5, 1
.L328:
	l.movhi	r17, hi(0)
.L334:
	l.sfeq	r5, r17
	l.bf	.L331
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L330
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L330
	l.ori	r11, r0, 1
	l.j	.L330
	l.movhi	r11, hi(0)
.L331:
	l.movhi	r11, hi(0)
.L330:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L337
	l.sw	4(r1), r9
.L344:
	l.addi	r3, r3, 4
.L337:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L343
	l.movhi	r11, hi(0)
	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L344
	l.addi	r5, r5, -1
	l.addi	r5, r5, 1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L345
	l.lwz	r2, 0(r1)
	l.or	r11, r3, r3
.L343:
	l.lwz	r2, 0(r1)
.L345:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L347
	l.sw	4(r1), r9
.L355:
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
.L347:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L354
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L355
	l.addi	r5, r5, -1
	l.addi	r5, r5, 1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
.L354:
	l.bf	.L351
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L350
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L350
	l.ori	r11, r0, 1
	l.j	.L350
	l.movhi	r11, hi(0)
.L351:
	l.movhi	r11, hi(0)
.L350:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.j	.L357
	l.or	r17, r3, r3
.L358:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
.L357:
	l.addi	r5, r5, -1
	l.xori	r19, r0, -1
	l.sfne	r5, r19
	l.bf	.L358
	l.lwz	r9, 4(r1)
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sfeq	r3, r4
	l.bf	.L360
	l.or	r11, r3, r3
	l.sub	r17, r3, r4
	l.ori	r21, r0, 2
	l.sll	r19, r5, r21
	l.sfgeu	r17, r19
	l.bf	.L365
	l.or	r17, r3, r3
	l.j	.L362
	l.or	r5, r19, r19
.L363:
	l.add	r17, r4, r5
	l.lwz	r19, 0(r17)
	l.add	r17, r11, r5
	l.sw	0(r17), r19
.L362:
	l.addi	r5, r5, -4
	l.xori	r17, r0, -4
	l.sfne	r5, r17
	l.bf	.L363
	 l.nop

	l.j	.L366
	l.lwz	r2, 0(r1)
.L364:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
.L365:
	l.addi	r5, r5, -1
	l.xori	r19, r0, -1
	l.sfne	r5, r19
	l.bf	.L364
	 l.nop

.L360:
	l.lwz	r2, 0(r1)
.L366:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.j	.L368
	l.or	r17, r3, r3
.L369:
	l.addi	r17, r17, 4
	l.sw	-4(r17), r4
.L368:
	l.addi	r5, r5, -1
	l.xori	r19, r0, -1
	l.sfne	r5, r19
	l.bf	.L369
	l.lwz	r9, 4(r1)
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sfgeu	r3, r4
	l.bf	.L371
	l.sw	4(r1), r9
	l.add	r17, r3, r5
	l.j	.L372
	l.add	r4, r4, r5
.L373:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sb	0(r4), r19
.L372:
	l.sfne	r17, r3
	l.bf	.L373
	 l.nop

	l.j	.L377
	l.lwz	r2, 0(r1)
.L371:
	l.sfeq	r3, r4
	l.bf	.L370
	 l.nop

	l.add	r5, r4, r5
	l.j	.L375
	l.or	r17, r3, r3
.L376:
	l.addi	r17, r17, 1
	l.addi	r4, r4, 1
	l.lbs	r19, -1(r17)
	l.sb	-1(r4), r19
.L375:
	l.sfne	r4, r5
	l.bf	.L376
	 l.nop

.L370:
	l.lwz	r2, 0(r1)
.L377:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.addi	r15, r5, -32
	l.sll	r8, r4, r15
	l.ori	r13, r0, 1
	l.srl	r12, r4, r13
	l.ori	r13, r0, 31
	l.sub	r11, r13, r5
	l.srl	r12, r12, r11
	l.sll	r21, r3, r5
	l.or	r21, r12, r21
	l.movhi	r12, hi(0)
	l.sfges	r15, r12
	l.bnf	.L384
	l.sll	r23, r4, r5
	l.or	r21, r8, r8
	l.movhi	r12, hi(0)
.L384:
	l.sfges	r15, r12
	l.bnf	.L380
	 l.nop

	l.movhi	r23, hi(0)
.L380:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r15, r5, -32
	l.srl	r11, r17, r15
	l.ori	r12, r0, 1
	l.sll	r12, r17, r12
	l.sub	r13, r13, r5
	l.sll	r13, r12, r13
	l.srl	r27, r19, r5
	l.srl	r25, r17, r5
	l.movhi	r17, hi(0)
	l.sfges	r15, r17
	l.bnf	.L385
	l.or	r27, r13, r27
	l.or	r27, r11, r11
	l.movhi	r17, hi(0)
.L385:
	l.sfges	r15, r17
	l.bnf	.L383
	l.or	r29, r25, r21
	l.movhi	r25, hi(0)
	l.or	r29, r25, r21
.L383:
	l.or	r31, r27, r23
	l.or	r11, r29, r29
	l.or	r12, r31, r31
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.addi	r15, r5, -32
	l.srl	r8, r3, r15
	l.ori	r13, r0, 1
	l.sll	r12, r3, r13
	l.ori	r13, r0, 31
	l.sub	r11, r13, r5
	l.sll	r12, r12, r11
	l.srl	r23, r4, r5
	l.or	r23, r12, r23
	l.movhi	r12, hi(0)
	l.sfges	r15, r12
	l.bnf	.L392
	l.srl	r21, r3, r5
	l.or	r23, r8, r8
	l.movhi	r12, hi(0)
.L392:
	l.sfges	r15, r12
	l.bnf	.L388
	 l.nop

	l.movhi	r21, hi(0)
.L388:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r15, r5, -32
	l.sll	r11, r19, r15
	l.ori	r12, r0, 1
	l.srl	r12, r19, r12
	l.sub	r13, r13, r5
	l.srl	r13, r12, r13
	l.sll	r25, r17, r5
	l.or	r25, r13, r25
	l.movhi	r17, hi(0)
	l.sfges	r15, r17
	l.bnf	.L393
	l.sll	r27, r19, r5
	l.or	r25, r11, r11
	l.movhi	r17, hi(0)
.L393:
	l.sfges	r15, r17
	l.bnf	.L391
	l.or	r29, r25, r21
	l.movhi	r27, hi(0)
.L391:
	l.or	r31, r27, r23
	l.or	r11, r29, r29
	l.or	r12, r31, r31
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sll	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.srl	r3, r3, r4
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.srl	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.sll	r3, r3, r4
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sll	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.srl	r3, r3, r4
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.srl	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.sll	r3, r3, r4
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.sll	r11, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.srl	r3, r3, r17
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.srl	r11, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.sll	r3, r3, r17
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xff
	l.sll	r11, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.srl	r3, r3, r17
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xff
	l.srl	r11, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.sll	r3, r3, r17
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r11, r3, 65280
	l.ori	r17, r0, 8
	l.srl	r11, r11, r17
	l.andi	r3, r3, 0xff
	l.sll	r3, r3, r17
	l.or	r11, r11, r3
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r19, r0, 24
	l.srl	r17, r3, r19
	l.ori	r21, r0, 8
	l.srl	r11, r3, r21
	l.andi	r11, r11, 65280
	l.or	r11, r11, r17
	l.andi	r17, r3, 65280
	l.sll	r17, r17, r21
	l.or	r11, r11, r17
	l.sll	r3, r3, r19
	l.or	r11, r11, r3
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.addi	r1, r1, -148
	l.sw	104(r1), r14
	l.sw	108(r1), r16
	l.sw	112(r1), r18
	l.sw	116(r1), r20
	l.sw	120(r1), r22
	l.sw	124(r1), r24
	l.sw	128(r1), r26
	l.sw	132(r1), r28
	l.sw	136(r1), r30
	l.sw	140(r1), r2
	l.addi	r2, r1, 148
	l.sw	144(r1), r9
	l.sw	-52(r2), r3
	l.sw	-48(r2), r4
	l.movhi	r11, hi(-16777216)
	l.lwz	r3, -52(r2)
	l.and	r14, r3, r11
	l.sw	-60(r2), r0
	l.ori	r5, r0, 24
	l.srl	r17, r14, r5
	l.sw	-56(r2), r17
	l.movhi	r15, hi(16711680)
	l.sw	-64(r2), r0
	l.lwz	r17, -52(r2)
	l.and	r17, r17, r15
	l.sw	-68(r2), r17
	l.sw	-76(r2), r0
	l.ori	r4, r0, 8
	l.srl	r17, r17, r4
	l.sw	-72(r2), r17
	l.sw	-132(r2), r0
	l.lwz	r19, -56(r2)
	l.or	r17, r17, r19
	l.sw	-128(r2), r17
	l.sw	-80(r2), r0
	l.lwz	r17, -52(r2)
	l.andi	r17, r17, 65280
	l.sw	-84(r2), r17
	l.lwz	r17, -84(r2)
	l.sll	r31, r17, r4
	l.srl	r29, r17, r5
	l.lwz	r17, -132(r2)
	l.lwz	r19, -128(r2)
	l.or	r12, r17, r29
	l.or	r13, r19, r31
	l.sw	-88(r2), r0
	l.lwz	r17, -52(r2)
	l.andi	r17, r17, 255
	l.sw	-92(r2), r17
	l.lwz	r17, -92(r2)
	l.sll	r18, r17, r5
	l.srl	r16, r17, r4
	l.or	r6, r12, r16
	l.or	r7, r13, r18
	l.movhi	r20, hi(0)
	l.lwz	r31, -48(r2)
	l.and	r22, r31, r11
	l.srl	r17, r22, r5
	l.sll	r25, r20, r4
	l.or	r25, r17, r25
	l.sll	r27, r22, r4
	l.or	r28, r6, r25
	l.or	r30, r7, r27
	l.movhi	r24, hi(0)
	l.and	r26, r31, r15
	l.srl	r17, r26, r4
	l.sll	r21, r24, r5
	l.or	r21, r17, r21
	l.sll	r23, r26, r5
	l.or	r8, r28, r21
	l.or	r9, r30, r23
	l.sw	-140(r2), r0
	l.andi	r21, r31, 65280
	l.sw	-136(r2), r21
	l.sw	-96(r2), r0
	l.sll	r19, r21, r4
	l.sw	-100(r2), r19
	l.or	r19, r8, r19
	l.sw	-108(r2), r19
	l.sw	-104(r2), r9
	l.sw	-148(r2), r0
	l.andi	r19, r31, 255
	l.sw	-144(r2), r19
	l.sw	-112(r2), r0
	l.sll	r17, r19, r5
	l.sw	-116(r2), r17
	l.lwz	r17, -108(r2)
	l.lwz	r19, -104(r2)
	l.lwz	r23, -116(r2)
	l.or	r21, r17, r23
	l.sw	-124(r2), r21
	l.sw	-120(r2), r19
	l.lwz	r17, -124(r2)
	l.lwz	r19, -120(r2)
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 104(r1)
	l.lwz	r16, 108(r1)
	l.lwz	r18, 112(r1)
	l.lwz	r20, 116(r1)
	l.lwz	r22, 120(r1)
	l.lwz	r24, 124(r1)
	l.lwz	r26, 128(r1)
	l.lwz	r28, 132(r1)
	l.lwz	r30, 136(r1)
	l.lwz	r2, 140(r1)
	l.lwz	r9, 144(r1)
	l.jr	r9
	l.addi	r1, r1, 148
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L406
	l.movhi	r11, hi(0)
.L409:
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L406
	l.addi	r11, r11, 1
	l.addi	r11, r11, -1
	l.j	.L408
	l.addi	r11, r11, 1
.L406:
	l.ori	r17, r0, 32
	l.sfne	r11, r17
	l.bf	.L409
	l.srl	r17, r3, r11
	l.movhi	r11, hi(0)
.L408:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L414
	l.sw	4(r1), r9
	l.j	.L412
	l.ori	r11, r0, 1
.L413:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
.L412:
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L413
	l.ori	r17, r0, 1
	l.j	.L415
	l.lwz	r2, 0(r1)
.L414:
	l.movhi	r11, hi(0)
	l.lwz	r2, 0(r1)
.L415:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata
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
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r2
	l.addi	r2, r1, 16
	l.sw	12(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC2)
	l.jal	__ltsf2
	l.lwz	r4, lo(.LC2)(r17)
	l.movhi	r18, hi(0)
	l.sflts	r11, r18
	l.bf	.L417
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L417
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L417:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r2, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
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
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.movhi	r21, ha(.LC4)
	l.addi	r23, r21, lo(.LC4)
	l.lwz	r17, lo(.LC4)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.jal	__ltdf2
	l.or	r6, r19, r19
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L424
	l.ori	r11, r0, 1
	l.movhi	r21, ha(.LC5)
	l.addi	r23, r21, lo(.LC5)
	l.lwz	r17, lo(.LC5)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.sfgts	r11, r20
	l.bf	.L424
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L424:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
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
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.movhi	r21, ha(.LC6)
	l.addi	r23, r21, lo(.LC6)
	l.lwz	r17, lo(.LC6)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.jal	__ltdf2
	l.or	r6, r19, r19
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L431
	l.ori	r11, r0, 1
	l.movhi	r21, ha(.LC7)
	l.addi	r23, r21, lo(.LC7)
	l.lwz	r17, lo(.LC7)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.sfgts	r11, r20
	l.bf	.L431
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L431:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.jal	__floatsidf
	l.or	r3, r4, r4
	l.or	r17, r11, r11
	l.sw	0(r16), r17
	l.sw	4(r16), r12
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata
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
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r20, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L439
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r11, r11
	l.jal	__nesf2
	l.or	r3, r20, r20
	l.sfne	r11, r18
	l.bnf	.L439
	l.sfges	r16, r18
	l.bf	.L444
	l.movhi	r17, ha(.LC9)
	l.movhi	r17, ha(.LC8)
	l.j	.L443
	l.lwz	r18, lo(.LC8)(r17)
.L444:
	l.lwz	r18, lo(.LC9)(r17)
.L443:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L446
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.or	r20, r11, r11
	l.ori	r17, r0, 31
.L446:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L439
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.j	.L443
	l.or	r18, r11, r11
.L439:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
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
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r24, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L448
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r5, r17, r17
	l.or	r6, r12, r12
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bnf	.L448
	l.sfges	r24, r20
	l.bf	.L453
	l.movhi	r17, ha(.LC11)
	l.movhi	r17, ha(.LC10)
	l.addi	r19, r17, lo(.LC10)
	l.lwz	r20, lo(.LC10)(r17)
	l.j	.L452
	l.lwz	r22, 4(r19)
.L453:
	l.addi	r19, r17, lo(.LC11)
	l.lwz	r20, lo(.LC11)(r17)
	l.lwz	r22, 4(r19)
.L452:
	l.andi	r17, r24, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L455
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
	l.ori	r17, r0, 31
.L455:
	l.srl	r17, r24, r17
	l.add	r17, r17, r24
	l.ori	r19, r0, 1
	l.sra	r24, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L448
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r17, r11, r11
	l.or	r20, r17, r17
	l.j	.L452
	l.or	r22, r12, r12
.L448:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
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
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r24, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L457
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r5, r17, r17
	l.or	r6, r12, r12
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bnf	.L457
	l.sfges	r24, r20
	l.bf	.L462
	l.movhi	r17, ha(.LC13)
	l.movhi	r17, ha(.LC12)
	l.addi	r19, r17, lo(.LC12)
	l.lwz	r20, lo(.LC12)(r17)
	l.j	.L461
	l.lwz	r22, 4(r19)
.L462:
	l.addi	r19, r17, lo(.LC13)
	l.lwz	r20, lo(.LC13)(r17)
	l.lwz	r22, 4(r19)
.L461:
	l.andi	r17, r24, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L464
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
	l.ori	r17, r0, 31
.L464:
	l.srl	r17, r24, r17
	l.add	r17, r17, r24
	l.ori	r19, r0, 1
	l.sra	r24, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L457
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r17, r11, r11
	l.or	r20, r17, r17
	l.j	.L461
	l.or	r22, r12, r12
.L457:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.j	.L466
	l.or	r17, r3, r3
.L467:
	l.addi	r4, r4, 1
	l.lbs	r21, -1(r4)
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r17)
	l.xor	r19, r19, r21
	l.sb	-1(r17), r19
.L466:
	l.sfne	r17, r5
	l.bf	.L467
	l.lwz	r9, 4(r1)
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.jal	strlen
	l.or	r16, r5, r5
	l.j	.L469
	l.add	r11, r20, r11
.L471:
	l.addi	r18, r18, 1
	l.addi	r11, r11, 1
	l.addi	r16, r16, -1
.L469:
	l.movhi	r19, hi(0)
	l.sfeq	r16, r19
	l.bf	.L473
	l.movhi	r17, hi(0)
	l.lbs	r17, 0(r18)
	l.sfne	r17, r19
	l.bf	.L471
	l.sb	0(r11), r17
	l.movhi	r17, hi(0)
.L473:
	l.sfne	r16, r17
	l.bf	.L472
	 l.nop

	l.sb	0(r11), r0
.L472:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L475
	l.movhi	r11, hi(0)
.L477:
	l.addi	r11, r11, 1
.L475:
	l.sfeq	r11, r4
	l.bf	.L476
	l.add	r17, r3, r11
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L477
	 l.nop

.L476:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.j	.L479
	l.sw	4(r1), r9
.L481:
	l.lbs	r21, -1(r17)
	l.lbs	r19, 0(r3)
	l.sfeq	r21, r19
	l.bf	.L483
	l.or	r11, r3, r3
.L484:
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L481
	l.addi	r17, r17, 1
	l.addi	r3, r3, 1
.L479:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L484
	l.or	r17, r4, r4
	l.movhi	r11, hi(0)
.L483:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r11, hi(0)
.L487:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bnf	.L489
	 l.nop

	l.or	r11, r3, r3
.L489:
	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L487
	l.lwz	r9, 4(r1)
	l.lwz	r2, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r2
	l.addi	r2, r1, 24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	strlen
	l.or	r3, r4, r4
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L494
	l.or	r20, r11, r11
	l.j	.L492
	l.lbs	r22, 0(r18)
.L493:
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.jal	strncmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L495
	l.or	r11, r16, r16
	l.addi	r16, r16, 1
.L492:
	l.or	r4, r22, r22
	l.jal	strchr
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L493
	l.or	r16, r11, r11
	l.j	.L491
	l.movhi	r11, hi(0)
.L494:
	l.or	r11, r16, r16
.L495:
.L491:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r2, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
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
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bnf	.L509
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r20, r20
	l.jal	__gtdf2
	l.or	r4, r22, r22
	l.sfgts	r11, r24
	l.bf	.L510
	l.movhi	r21, hi(-2147483648)
	l.movhi	r17, ha(.LC14)
.L509:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L507
	l.or	r3, r20, r20
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.sflts	r11, r24
	l.bnf	.L508
	l.movhi	r21, hi(-2147483648)
.L510:
	l.xor	r17, r16, r21
	l.j	.L500
	l.or	r19, r18, r18
.L507:
	l.or	r17, r16, r16
	l.j	.L500
	l.or	r19, r18, r18
.L508:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L500:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r2
	l.addi	r2, r1, 24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r5, r5
	l.or	r22, r6, r6
	l.sub	r20, r4, r6
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L516
	l.add	r20, r3, r20
	l.sfltu	r4, r6
	l.bf	.L517
	l.sfleu	r16, r20
	l.j	.L519
	 l.nop

.L515:
	l.lbs	r19, 0(r16)
	l.lbs	r17, 0(r18)
	l.sfne	r19, r17
	l.bf	.L514
	l.addi	r5, r22, -1
	l.addi	r4, r18, 1
	l.jal	memcmp
	l.addi	r3, r16, 1
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L518
	l.or	r11, r16, r16
.L514:
	l.addi	r16, r16, 1
	l.sfleu	r16, r20
.L519:
	l.bf	.L515
	l.movhi	r11, hi(0)
	l.j	.L520
	l.lwz	r16, 0(r1)
.L516:
	l.j	.L512
	l.or	r11, r3, r3
.L517:
	l.movhi	r11, hi(0)
.L518:
.L512:
	l.lwz	r16, 0(r1)
.L520:
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r2, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.jal	memcpy
	l.or	r16, r5, r5
	l.add	r11, r11, r16
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
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
	.long	1071644672
	.long	0
	.section	.text
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r22, r5, r5
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L539
	l.movhi	r21, hi(-2147483648)
	l.xor	r17, r16, r21
	l.or	r19, r18, r18
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.j	.L523
	l.ori	r24, r0, 1
.L539:
	l.movhi	r24, hi(0)
.L523:
	l.movhi	r21, ha(.LC16)
	l.addi	r23, r21, lo(.LC16)
	l.lwz	r17, lo(.LC16)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L534
	l.movhi	r20, hi(0)
	l.j	.L540
	l.movhi	r21, ha(.LC17)
.L527:
	l.addi	r20, r20, 1
	l.movhi	r17, ha(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r6, 4(r17)
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L534:
	l.movhi	r21, ha(.LC16)
	l.addi	r23, r21, lo(.LC16)
	l.lwz	r17, lo(.LC16)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L527
	l.or	r3, r16, r16
	l.j	.L542
	l.sw	0(r22), r20
.L540:
	l.addi	r23, r21, lo(.LC17)
	l.lwz	r17, lo(.LC17)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bnf	.L541
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bf	.L536
	 l.nop

	l.j	.L543
	l.sw	0(r22), r20
.L531:
	l.addi	r20, r20, -1
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.j	.L530
	l.or	r18, r12, r12
.L536:
	l.movhi	r20, hi(0)
.L530:
	l.movhi	r21, ha(.LC17)
	l.addi	r23, r21, lo(.LC17)
	l.lwz	r17, lo(.LC17)(r21)
	l.lwz	r19, 4(r23)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L531
	l.or	r5, r16, r16
	l.j	.L542
	l.sw	0(r22), r20
.L541:
	l.sw	0(r22), r20
.L543:
	l.movhi	r17, hi(0)
.L542:
	l.sfeq	r24, r17
	l.bf	.L544
	l.or	r11, r16, r16
	l.movhi	r21, hi(-2147483648)
	l.xor	r17, r16, r21
	l.or	r19, r18, r18
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.or	r11, r16, r16
.L544:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.addi	r1, r1, -12
	l.sw	0(r1), r14
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r21, r5, r5
	l.or	r23, r6, r6
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.movhi	r8, hi(0)
	l.j	.L546
	l.movhi	r9, hi(0)
.L549:
	l.andi	r13, r19, 1
	l.or	r25, r12, r13
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L552
	l.add	r27, r23, r23
	l.add	r27, r9, r23
	l.sfltu	r27, r9
	l.bf	.L551
	l.ori	r15, r0, 1
	l.movhi	r15, hi(0)
.L551:
	l.add	r25, r8, r21
	l.add	r25, r15, r25
	l.or	r8, r25, r25
	l.or	r9, r27, r27
	l.add	r27, r23, r23
.L552:
	l.sfltu	r27, r23
	l.bf	.L550
	l.ori	r15, r0, 1
	l.movhi	r15, hi(0)
.L550:
	l.add	r25, r21, r21
	l.add	r25, r15, r25
	l.or	r21, r25, r25
	l.or	r23, r27, r27
	l.ori	r25, r0, 31
	l.sll	r25, r17, r25
	l.ori	r27, r0, 1
	l.srl	r31, r19, r27
	l.or	r31, r25, r31
	l.srl	r29, r17, r27
	l.or	r17, r29, r29
	l.or	r19, r31, r31
.L546:
	l.or	r25, r17, r19
	l.movhi	r27, hi(0)
	l.sfne	r25, r27
	l.bf	.L549
	l.movhi	r12, hi(0)
	l.or	r11, r8, r8
	l.or	r12, r9, r9
	l.lwz	r14, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L554
	l.ori	r17, r0, 1
.L558:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L554:
	l.sfltu	r4, r11
	l.bf	.L555
	l.movhi	r21, hi(0)
	l.j	.L567
	l.movhi	r19, hi(0)
.L562:
	l.j	.L556
	l.movhi	r19, hi(0)
.L555:
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L562
	l.sfges	r4, r21
	l.bf	.L558
	 l.nop

	l.j	.L556
	l.movhi	r19, hi(0)
.L560:
	l.bf	.L565
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.or	r19, r19, r17
.L565:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L556:
	l.movhi	r21, hi(0)
.L567:
	l.sfne	r17, r21
	l.bf	.L560
	l.sfltu	r11, r4
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L566
	l.lwz	r2, 0(r1)
	l.or	r11, r19, r19
.L566:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.ori	r17, r0, 24
	l.sll	r3, r3, r17
	l.sra	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L572
	l.sw	4(r1), r9
	l.xori	r3, r3, -1
	l.movhi	r17, hi(0)
.L572:
	l.sfeq	r3, r17
	l.bf	.L571
	l.ori	r17, r0, 8
	l.jal	__clzsi2
	l.sll	r3, r3, r17
	l.j	.L570
	l.addi	r11, r11, -1
.L571:
	l.ori	r11, r0, 7
.L570:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.movhi	r21, hi(0)
	l.sfges	r3, r21
	l.bf	.L574
	l.or	r19, r4, r4
	l.xori	r25, r3, -1
	l.xori	r27, r4, -1
	l.or	r17, r25, r25
	l.or	r19, r27, r27
.L574:
	l.or	r21, r17, r19
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L578
	l.or	r3, r17, r17
	l.jal	__clzdi2
	l.or	r4, r19, r19
	l.j	.L576
	l.addi	r11, r11, -1
.L578:
	l.ori	r11, r0, 63
.L576:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L580
	l.movhi	r11, hi(0)
.L582:
	l.andi	r17, r3, 1
	l.sfeq	r17, r19
	l.bf	.L583
	l.ori	r17, r0, 1
	l.add	r11, r11, r4
.L583:
	l.srl	r3, r3, r17
	l.add	r4, r4, r4
.L580:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L582
	l.movhi	r19, hi(0)
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 3
	l.srl	r31, r5, r17
	l.xori	r17, r0, -8
	l.sfltu	r3, r4
	l.bf	.L585
	l.and	r17, r5, r17
	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L586
	 l.nop

.L585:
	l.or	r21, r4, r4
	l.or	r19, r3, r3
	l.j	.L587
	l.movhi	r23, hi(0)
.L588:
	l.lwz	r25, 0(r21)
	l.lwz	r27, 4(r21)
	l.sw	0(r19), r25
	l.sw	4(r19), r27
	l.addi	r23, r23, 1
	l.addi	r21, r21, 8
	l.addi	r19, r19, 8
.L587:
	l.sfne	r23, r31
	l.bf	.L588
	l.sfgtu	r5, r17
	l.j	.L593
	 l.nop

.L590:
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
	l.sfgtu	r5, r17
.L593:
	l.bf	.L590
	l.add	r19, r4, r17
	l.j	.L594
	l.lwz	r2, 0(r1)
.L592:
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L586:
	l.addi	r5, r5, -1
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L592
	l.add	r17, r4, r5
	l.lwz	r2, 0(r1)
.L594:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 1
	l.sfltu	r3, r4
	l.bf	.L596
	l.srl	r23, r5, r17
	l.add	r17, r4, r5
	l.sfgeu	r17, r3
	l.bf	.L597
	 l.nop

.L596:
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.j	.L598
	l.add	r23, r23, r4
.L599:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.addi	r19, r19, 2
.L598:
	l.sfne	r17, r23
	l.bf	.L599
	 l.nop

	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L602
	l.lwz	r2, 0(r1)
	l.addi	r5, r5, -1
	l.add	r4, r4, r5
	l.add	r3, r3, r5
	l.lbs	r17, 0(r4)
	l.j	.L595
	l.sb	0(r3), r17
.L601:
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L597:
	l.addi	r5, r5, -1
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L601
	l.add	r17, r4, r5
.L595:
	l.lwz	r2, 0(r1)
.L602:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 2
	l.srl	r25, r5, r17
	l.xori	r17, r0, -4
	l.sfltu	r3, r4
	l.bf	.L604
	l.and	r17, r5, r17
	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L605
	 l.nop

.L604:
	l.or	r19, r4, r4
	l.or	r21, r3, r3
	l.ori	r23, r0, 2
	l.sll	r25, r25, r23
	l.j	.L606
	l.add	r25, r25, r4
.L607:
	l.lwz	r23, 0(r19)
	l.sw	0(r21), r23
	l.addi	r19, r19, 4
	l.addi	r21, r21, 4
.L606:
	l.sfne	r19, r25
	l.bf	.L607
	l.sfgtu	r5, r17
	l.j	.L612
	 l.nop

.L609:
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
	l.sfgtu	r5, r17
.L612:
	l.bf	.L609
	l.add	r19, r4, r17
	l.j	.L613
	l.lwz	r2, 0(r1)
.L611:
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L605:
	l.addi	r5, r5, -1
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L611
	l.add	r17, r4, r5
	l.lwz	r2, 0(r1)
.L613:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.div	r11, r3, r4
	l.mul	r11, r11, r4
	l.sub	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.sw	4(r1), r9
	l.jal	__floatunsidf
	l.addi	r2, r1, 8
	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.sw	4(r1), r9
	l.jal	__floatunsisf
	l.addi	r2, r1, 8
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.sw	4(r1), r9
	l.jal	__floatundidf
	l.addi	r2, r1, 8
	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.sw	4(r1), r9
	l.jal	__floatundisf
	l.addi	r2, r1, 8
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.divu	r11, r3, r4
	l.mul	r11, r11, r4
	l.sub	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.j	.L621
	l.movhi	r11, hi(0)
.L623:
	l.sub	r17, r17, r11
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L622
	 l.nop

	l.addi	r11, r11, 1
.L621:
	l.ori	r17, r0, 16
	l.sfne	r11, r17
	l.bf	.L623
	l.ori	r17, r0, 15
.L622:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.j	.L625
	l.movhi	r11, hi(0)
.L627:
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L626
	 l.nop

	l.addi	r11, r11, 1
.L625:
	l.ori	r17, r0, 16
	l.sfne	r11, r17
	l.bf	.L627
	l.sra	r17, r3, r11
.L626:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata
	.align 4
.LC18:
	.long	1191182336
	.section	.text
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC18)
	l.jal	__gesf2
	l.lwz	r4, lo(.LC18)(r17)
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L633
	l.movhi	r17, ha(.LC18)
	l.lwz	r4, lo(.LC18)(r17)
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L631
	l.add	r11, r11, r17
.L633:
	l.jal	__fixsfsi
	l.or	r3, r16, r16
.L631:
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.j	.L635
	l.movhi	r17, hi(0)
.L637:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.sfeq	r19, r21
	l.bf	.L636
	 l.nop

	l.addi	r11, r11, 1
.L636:
	l.addi	r17, r17, 1
.L635:
	l.ori	r19, r0, 16
	l.sfne	r17, r19
	l.bf	.L637
	l.movhi	r21, hi(0)
	l.andi	r11, r11, 1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.j	.L639
	l.movhi	r17, hi(0)
.L641:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.sfeq	r19, r21
	l.bf	.L640
	 l.nop

	l.addi	r11, r11, 1
.L640:
	l.addi	r17, r17, 1
.L639:
	l.ori	r19, r0, 16
	l.sfne	r17, r19
	l.bf	.L641
	l.movhi	r21, hi(0)
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L643
	l.movhi	r11, hi(0)
.L645:
	l.andi	r17, r3, 1
	l.sfeq	r17, r19
	l.bf	.L646
	l.ori	r17, r0, 1
	l.add	r11, r11, r4
.L646:
	l.srl	r3, r3, r17
	l.add	r4, r4, r4
.L643:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L645
	l.movhi	r19, hi(0)
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L652
	l.sw	4(r1), r9
	l.j	.L654
	l.movhi	r11, hi(0)
.L651:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L650
	 l.nop

	l.add	r11, r11, r3
.L650:
	l.add	r3, r3, r3
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
.L654:
	l.sfne	r4, r17
	l.bf	.L651
	l.andi	r17, r4, 1
	l.j	.L653
	l.lwz	r2, 0(r1)
.L652:
	l.movhi	r11, hi(0)
	l.lwz	r2, 0(r1)
.L653:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L656
	l.ori	r17, r0, 1
.L660:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L656:
	l.sfltu	r4, r11
	l.bf	.L657
	l.movhi	r21, hi(0)
	l.j	.L669
	l.movhi	r19, hi(0)
.L664:
	l.j	.L658
	l.movhi	r19, hi(0)
.L657:
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L664
	l.sfges	r4, r21
	l.bf	.L660
	 l.nop

	l.j	.L658
	l.movhi	r19, hi(0)
.L662:
	l.bf	.L667
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.or	r19, r19, r17
.L667:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L658:
	l.movhi	r21, hi(0)
.L669:
	l.sfne	r17, r21
	l.bf	.L662
	l.sfltu	r11, r4
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L668
	l.lwz	r2, 0(r1)
	l.or	r11, r19, r19
.L668:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.jal	__ltsf2
	l.or	r18, r4, r4
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L672
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L671
	l.ori	r11, r0, 1
	l.j	.L671
	l.movhi	r11, hi(0)
.L672:
	l.xori	r11, r0, -1
.L671:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.jal	__ltdf2
	l.or	r18, r6, r6
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L677
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__gtdf2
	l.or	r4, r22, r22
	l.sfgts	r11, r24
	l.bf	.L676
	l.ori	r11, r0, 1
	l.j	.L676
	l.movhi	r11, hi(0)
.L677:
	l.xori	r11, r0, -1
.L676:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r19, r3, r3
	l.ori	r25, r0, 31
	l.sra	r17, r3, r25
	l.sra	r21, r4, r25
	l.or	r5, r21, r21
	l.or	r6, r4, r4
	l.or	r3, r17, r17
	l.jal	__muldi3
	l.or	r4, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.or	r19, r3, r3
	l.movhi	r21, hi(0)
	l.or	r5, r21, r21
	l.or	r6, r4, r4
	l.or	r3, r17, r17
	l.jal	__muldi3
	l.or	r4, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L689
	l.sw	4(r1), r9
	l.sub	r4, r0, r4
	l.j	.L683
	l.ori	r21, r0, 1
.L689:
	l.movhi	r21, hi(0)
.L683:
	l.ori	r17, r0, 33
	l.j	.L684
	l.movhi	r11, hi(0)
.L687:
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L685
	 l.nop

	l.add	r11, r11, r3
.L685:
	l.add	r3, r3, r3
	l.ori	r19, r0, 1
	l.sra	r4, r4, r19
.L684:
	l.movhi	r19, hi(0)
	l.sfeq	r4, r19
	l.bf	.L686
	l.addi	r17, r17, -1
	l.andi	r17, r17, 0xff
	l.sfne	r17, r19
	l.bf	.L687
	l.andi	r19, r4, 1
.L686:
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bf	.L691
	l.lwz	r2, 0(r1)
	l.sub	r11, r0, r11
.L691:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L696
	l.sw	8(r1), r9
	l.sub	r3, r0, r3
	l.j	.L698
	l.ori	r16, r0, 1
.L696:
	l.movhi	r16, hi(0)
	l.movhi	r17, hi(0)
.L698:
	l.sfges	r4, r17
	l.bf	.L694
	 l.nop

	l.sub	r4, r0, r4
	l.xori	r16, r16, 1
.L694:
	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L697
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L697:
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L703
	l.sw	8(r1), r9
	l.sub	r3, r0, r3
	l.j	.L705
	l.ori	r16, r0, 1
.L703:
	l.movhi	r16, hi(0)
	l.movhi	r17, hi(0)
.L705:
	l.sfges	r4, r17
	l.bf	.L701
	 l.nop

	l.sub	r4, r0, r4
.L701:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L704
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L704:
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.ori	r19, r0, 17
	l.j	.L707
	l.ori	r17, r0, 1
.L711:
	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.andi	r17, r17, 0xffff
.L707:
	l.sfltu	r4, r11
	l.bf	.L708
	l.movhi	r23, hi(0)
	l.j	.L709
	l.movhi	r19, hi(0)
.L715:
	l.j	.L709
	l.movhi	r19, hi(0)
.L708:
	l.addi	r19, r19, -1
	l.sfeq	r19, r23
	l.bf	.L715
	l.ori	r21, r0, 16
	l.sll	r21, r4, r21
	l.sfges	r21, r23
	l.bf	.L711
	 l.nop

	l.j	.L709
	l.movhi	r19, hi(0)
.L713:
	l.bf	.L718
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.or	r19, r19, r17
.L718:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L709:
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L713
	l.sfltu	r11, r4
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L719
	l.lwz	r2, 0(r1)
	l.or	r11, r19, r19
.L719:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L721
	l.ori	r17, r0, 1
.L725:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L721:
	l.sfltu	r4, r11
	l.bf	.L722
	l.movhi	r21, hi(0)
	l.j	.L734
	l.movhi	r19, hi(0)
.L729:
	l.j	.L723
	l.movhi	r19, hi(0)
.L722:
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L729
	l.sfges	r4, r21
	l.bf	.L725
	 l.nop

	l.j	.L723
	l.movhi	r19, hi(0)
.L727:
	l.bf	.L732
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.or	r19, r19, r17
.L732:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L723:
	l.movhi	r21, hi(0)
.L734:
	l.sfne	r17, r21
	l.bf	.L727
	l.sfltu	r11, r4
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L733
	l.lwz	r2, 0(r1)
	l.or	r11, r19, r19
.L733:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.andi	r25, r5, 32
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L736
	l.sw	4(r1), r9
	l.movhi	r19, hi(0)
	l.addi	r5, r5, -32
	l.j	.L737
	l.sll	r17, r4, r5
.L736:
	l.movhi	r25, hi(0)
	l.sfeq	r5, r25
	l.bf	.L739
	l.sll	r19, r4, r5
	l.sll	r27, r3, r5
	l.ori	r25, r0, 32
	l.sub	r25, r25, r5
	l.srl	r25, r4, r25
	l.or	r17, r25, r27
.L737:
	l.or	r21, r17, r17
	l.j	.L738
	l.or	r23, r19, r19
.L739:
	l.or	r21, r3, r3
	l.or	r23, r4, r4
.L738:
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.andi	r29, r5, 32
	l.movhi	r21, hi(0)
	l.sfeq	r29, r21
	l.bf	.L745
	l.sw	4(r1), r9
	l.ori	r21, r0, 31
	l.sra	r17, r3, r21
	l.addi	r5, r5, -32
	l.j	.L742
	l.sra	r19, r3, r5
.L745:
	l.sfeq	r5, r21
	l.bf	.L744
	l.sra	r17, r3, r5
	l.ori	r29, r0, 32
	l.sub	r29, r29, r5
	l.sll	r21, r3, r29
	l.srl	r5, r4, r5
	l.or	r19, r21, r5
.L742:
	l.or	r25, r17, r17
	l.j	.L743
	l.or	r27, r19, r19
.L744:
	l.or	r25, r3, r3
	l.or	r27, r4, r4
.L743:
	l.or	r11, r25, r25
	l.or	r12, r27, r27
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.addi	r1, r1, -132
	l.sw	88(r1), r14
	l.sw	92(r1), r16
	l.sw	96(r1), r18
	l.sw	100(r1), r20
	l.sw	104(r1), r22
	l.sw	108(r1), r24
	l.sw	112(r1), r26
	l.sw	116(r1), r28
	l.sw	120(r1), r30
	l.sw	124(r1), r2
	l.addi	r2, r1, 132
	l.sw	128(r1), r9
	l.sw	-132(r2), r3
	l.sw	-128(r2), r4
	l.sw	-52(r2), r0
	l.ori	r19, r0, 24
	l.lwz	r4, -132(r2)
	l.lwz	r5, -128(r2)
	l.srl	r17, r4, r19
	l.sw	-48(r2), r17
	l.ori	r17, r0, 8
	l.srl	r15, r4, r17
	l.movhi	r28, hi(0)
	l.andi	r30, r15, 65280
	l.sll	r11, r4, r17
	l.srl	r13, r5, r19
	l.or	r13, r11, r13
	l.movhi	r24, hi(0)
	l.movhi	r15, hi(16711680)
	l.and	r26, r13, r15
	l.sll	r13, r4, r19
	l.srl	r31, r5, r17
	l.or	r31, r13, r31
	l.or	r12, r17, r17
	l.movhi	r16, hi(0)
	l.movhi	r17, hi(-16777216)
	l.and	r18, r31, r17
	l.srl	r17, r5, r19
	l.or	r25, r17, r11
	l.sll	r27, r5, r12
	l.sw	-56(r2), r0
	l.andi	r17, r25, 255
	l.sw	-60(r2), r17
	l.srl	r17, r5, r12
	l.or	r21, r17, r13
	l.sll	r23, r5, r19
	l.sw	-64(r2), r0
	l.andi	r17, r21, 65280
	l.sw	-68(r2), r17
	l.sw	-72(r2), r0
	l.sw	-76(r2), r27
	l.sw	-80(r2), r0
	l.and	r17, r27, r15
	l.sw	-84(r2), r17
	l.sw	-88(r2), r0
	l.sw	-92(r2), r23
	l.sw	-108(r2), r23
	l.lwz	r17, -48(r2)
	l.sw	-104(r2), r17
	l.lwz	r17, -108(r2)
	l.lwz	r19, -104(r2)
	l.or	r6, r17, r28
	l.or	r7, r19, r30
	l.or	r8, r6, r24
	l.or	r9, r7, r26
	l.or	r20, r8, r16
	l.or	r22, r9, r18
	l.lwz	r17, -60(r2)
	l.or	r17, r20, r17
	l.sw	-116(r2), r17
	l.sw	-112(r2), r22
	l.lwz	r17, -116(r2)
	l.lwz	r19, -112(r2)
	l.lwz	r23, -68(r2)
	l.or	r21, r17, r23
	l.sw	-124(r2), r21
	l.sw	-120(r2), r19
	l.lwz	r17, -124(r2)
	l.lwz	r19, -120(r2)
	l.lwz	r23, -84(r2)
	l.or	r21, r17, r23
	l.sw	-100(r2), r21
	l.sw	-96(r2), r19
	l.lwz	r17, -100(r2)
	l.lwz	r19, -96(r2)
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 88(r1)
	l.lwz	r16, 92(r1)
	l.lwz	r18, 96(r1)
	l.lwz	r20, 100(r1)
	l.lwz	r22, 104(r1)
	l.lwz	r24, 108(r1)
	l.lwz	r26, 112(r1)
	l.lwz	r28, 116(r1)
	l.lwz	r30, 120(r1)
	l.lwz	r2, 124(r1)
	l.lwz	r9, 128(r1)
	l.jr	r9
	l.addi	r1, r1, 132
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r23, r0, 24
	l.srl	r19, r3, r23
	l.ori	r21, r0, 8
	l.srl	r17, r3, r21
	l.andi	r17, r17, 65280
	l.sll	r11, r3, r21
	l.movhi	r21, hi(16711680)
	l.and	r11, r11, r21
	l.sll	r3, r3, r23
	l.or	r3, r3, r19
	l.or	r3, r3, r17
	l.or	r11, r3, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 65535
	l.sfgtu	r3, r17
	l.bnf	.L749
	l.ori	r17, r0, 16
.L753:
	l.movhi	r17, hi(0)
.L749:
	l.ori	r19, r0, 16
	l.sub	r19, r19, r17
	l.srl	r3, r3, r19
	l.andi	r19, r3, 65280
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L750
	l.ori	r21, r0, 8
.L754:
	l.movhi	r21, hi(0)
.L750:
	l.ori	r19, r0, 8
	l.sub	r19, r19, r21
	l.srl	r3, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r3, 240
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L751
	l.ori	r21, r0, 4
.L755:
	l.movhi	r21, hi(0)
.L751:
	l.ori	r19, r0, 4
	l.sub	r19, r19, r21
	l.srl	r3, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r3, 12
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L752
	l.ori	r21, r0, 2
.L756:
	l.movhi	r21, hi(0)
.L752:
	l.ori	r19, r0, 2
	l.sub	r23, r19, r21
	l.srl	r3, r3, r23
	l.add	r17, r17, r21
	l.and	r21, r3, r19
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L757
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L757:
	l.sub	r19, r19, r3
	l.mul	r11, r11, r19
	l.add	r11, r17, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sflts	r3, r5
	l.bf	.L760
	l.sw	4(r1), r9
	l.sfgts	r3, r5
	l.bf	.L761
	l.sfltu	r4, r6
	l.bf	.L762
	l.sfgtu	r4, r6
	l.bf	.L763
	l.ori	r11, r0, 1
	l.j	.L764
	l.lwz	r2, 0(r1)
.L760:
	l.j	.L759
	l.movhi	r11, hi(0)
.L761:
	l.j	.L759
	l.ori	r11, r0, 2
.L762:
	l.j	.L759
	l.movhi	r11, hi(0)
.L763:
	l.ori	r11, r0, 2
.L759:
	l.lwz	r2, 0(r1)
.L764:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.sw	4(r1), r9
	l.jal	__cmpdi2
	l.addi	r2, r1, 8
	l.addi	r11, r11, -1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r17, r3, 65535
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L767
	l.ori	r17, r0, 16
.L771:
	l.movhi	r17, hi(0)
.L767:
	l.srl	r3, r3, r17
	l.andi	r19, r3, 255
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L768
	l.ori	r19, r0, 8
.L772:
	l.movhi	r19, hi(0)
.L768:
	l.srl	r3, r3, r19
	l.add	r17, r17, r19
	l.andi	r19, r3, 15
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L769
	l.ori	r19, r0, 4
.L773:
	l.movhi	r19, hi(0)
.L769:
	l.srl	r3, r3, r19
	l.add	r17, r17, r19
	l.andi	r19, r3, 3
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L770
	l.ori	r19, r0, 2
.L774:
	l.movhi	r19, hi(0)
.L770:
	l.srl	r3, r3, r19
	l.andi	r3, r3, 3
	l.add	r17, r17, r19
	l.xori	r19, r3, -1
	l.andi	r19, r19, 1
	l.ori	r21, r0, 1
	l.srl	r3, r3, r21
	l.ori	r11, r0, 2
	l.sub	r11, r11, r3
	l.sub	r19, r0, r19
	l.and	r11, r11, r19
	l.add	r11, r17, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.andi	r25, r5, 32
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L776
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.j	.L777
	l.srl	r19, r3, r5
.L776:
	l.movhi	r25, hi(0)
	l.sfeq	r5, r25
	l.bf	.L779
	l.srl	r17, r3, r5
	l.ori	r25, r0, 32
	l.sub	r25, r25, r5
	l.sll	r25, r3, r25
	l.srl	r5, r4, r5
	l.or	r19, r25, r5
.L777:
	l.or	r21, r17, r17
	l.j	.L778
	l.or	r23, r19, r19
.L779:
	l.or	r21, r3, r3
	l.or	r23, r4, r4
.L778:
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r25, r3, 65535
	l.andi	r27, r4, 65535
	l.mul	r23, r25, r27
	l.ori	r29, r0, 16
	l.srl	r21, r23, r29
	l.andi	r23, r23, 65535
	l.srl	r3, r3, r29
	l.mul	r27, r3, r27
	l.add	r21, r21, r27
	l.sll	r27, r21, r29
	l.add	r19, r27, r23
	l.srl	r17, r21, r29
	l.srl	r21, r19, r29
	l.andi	r23, r19, 65535
	l.srl	r4, r4, r29
	l.mul	r25, r25, r4
	l.add	r21, r21, r25
	l.sll	r25, r21, r29
	l.add	r19, r25, r23
	l.srl	r21, r21, r29
	l.add	r21, r21, r17
	l.mul	r3, r3, r4
	l.add	r17, r3, r21
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.addi	r1, r1, -48
	l.sw	8(r1), r16
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r24
	l.sw	28(r1), r26
	l.sw	32(r1), r28
	l.sw	36(r1), r30
	l.sw	40(r1), r2
	l.addi	r2, r1, 48
	l.sw	44(r1), r9
	l.or	r23, r4, r4
	l.or	r24, r3, r3
	l.or	r26, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r4, r6, r6
	l.jal	__muldsi3
	l.or	r3, r23, r23
	l.sw	-48(r2), r11
	l.sw	-44(r2), r12
	l.lwz	r17, -48(r2)
	l.lwz	r19, -44(r2)
	l.or	r20, r17, r17
	l.mul	r17, r24, r18
	l.mul	r16, r16, r26
	l.add	r17, r17, r16
	l.add	r28, r17, r20
	l.or	r11, r28, r28
	l.or	r12, r19, r19
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r24, 24(r1)
	l.lwz	r26, 28(r1)
	l.lwz	r28, 32(r1)
	l.lwz	r30, 36(r1)
	l.lwz	r2, 40(r1)
	l.lwz	r9, 44(r1)
	l.jr	r9
	l.addi	r1, r1, 48
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r12, r3, r3
	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r19, r27, r4
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L783
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L783:
	l.sub	r17, r25, r12
	l.sub	r17, r17, r23
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.xor	r17, r4, r3
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.ori	r19, r0, 4
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.andi	r17, r17, 15
	l.ori	r11, r0, 27030
	l.sra	r11, r11, r17
	l.andi	r11, r11, 1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 16
	l.srl	r17, r3, r17
	l.xor	r3, r17, r3
	l.ori	r17, r0, 8
	l.srl	r17, r3, r17
	l.xor	r3, r3, r17
	l.ori	r17, r0, 4
	l.srl	r17, r3, r17
	l.xor	r3, r3, r17
	l.andi	r3, r3, 15
	l.ori	r11, r0, 27030
	l.sra	r11, r11, r3
	l.andi	r11, r11, 1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.addi	r1, r1, -44
	l.sw	0(r1), r14
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r24
	l.sw	24(r1), r26
	l.sw	28(r1), r28
	l.sw	32(r1), r30
	l.sw	36(r1), r2
	l.addi	r2, r1, 44
	l.sw	40(r1), r9
	l.or	r28, r3, r3
	l.ori	r17, r0, 31
	l.sll	r11, r3, r17
	l.ori	r17, r0, 1
	l.srl	r31, r4, r17
	l.or	r31, r11, r31
	l.srl	r29, r3, r17
	l.movhi	r11, hi(1431633920)
	l.ori	r11, r11, 21845
	l.and	r14, r29, r11
	l.and	r15, r31, r11
	l.sub	r31, r4, r15
	l.sfgtu	r31, r4
	l.bf	.L787
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L787:
	l.sub	r29, r28, r14
	l.sub	r29, r29, r27
	l.ori	r17, r0, 30
	l.sll	r25, r29, r17
	l.ori	r17, r0, 2
	l.srl	r23, r31, r17
	l.or	r23, r25, r23
	l.srl	r21, r29, r17
	l.movhi	r25, hi(858980352)
	l.ori	r25, r25, 13107
	l.and	r12, r21, r25
	l.and	r13, r23, r25
	l.and	r6, r29, r25
	l.and	r7, r31, r25
	l.add	r23, r13, r7
	l.sfltu	r23, r13
	l.bf	.L788
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L788:
	l.add	r21, r12, r6
	l.add	r21, r25, r21
	l.ori	r17, r0, 28
	l.sll	r25, r21, r17
	l.ori	r17, r0, 4
	l.srl	r26, r23, r17
	l.or	r26, r25, r26
	l.srl	r24, r21, r17
	l.add	r27, r26, r23
	l.sfltu	r27, r26
	l.bf	.L789
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L789:
	l.add	r25, r24, r21
	l.add	r25, r19, r25
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r8, r25, r17
	l.and	r9, r27, r17
	l.add	r17, r8, r9
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.add	r17, r17, r19
	l.ori	r19, r0, 8
	l.srl	r11, r17, r19
	l.add	r11, r11, r17
	l.andi	r11, r11, 127
	l.lwz	r14, 0(r1)
	l.lwz	r16, 4(r1)
	l.lwz	r18, 8(r1)
	l.lwz	r20, 12(r1)
	l.lwz	r22, 16(r1)
	l.lwz	r24, 20(r1)
	l.lwz	r26, 24(r1)
	l.lwz	r28, 28(r1)
	l.lwz	r30, 32(r1)
	l.lwz	r2, 36(r1)
	l.lwz	r9, 40(r1)
	l.jr	r9
	l.addi	r1, r1, 44
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 1
	l.srl	r17, r3, r17
	l.movhi	r19, hi(1431633920)
	l.ori	r19, r19, 21845
	l.and	r17, r17, r19
	l.sub	r3, r3, r17
	l.ori	r17, r0, 2
	l.srl	r19, r3, r17
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.and	r19, r19, r17
	l.and	r3, r3, r17
	l.add	r3, r19, r3
	l.ori	r17, r0, 4
	l.srl	r17, r3, r17
	l.add	r3, r17, r3
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r3, r3, r17
	l.ori	r17, r0, 16
	l.srl	r17, r3, r17
	l.add	r3, r3, r17
	l.ori	r17, r0, 8
	l.srl	r11, r3, r17
	l.add	r11, r11, r3
	l.andi	r11, r11, 63
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
	.align 4
.LC19:
	.long	1072693248
	.long	0
	.section	.text
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r2
	l.addi	r2, r1, 32
	l.sw	28(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.ori	r17, r0, 31
	l.srl	r22, r5, r17
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.lwz	r24, lo(.LC19)(r17)
	l.lwz	r26, 4(r19)
.L794:
	l.andi	r17, r20, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L797
	l.ori	r17, r0, 31
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r26, r26
	l.or	r17, r11, r11
	l.or	r24, r17, r17
	l.or	r26, r12, r12
	l.ori	r17, r0, 31
.L797:
	l.srl	r17, r20, r17
	l.add	r17, r17, r20
	l.ori	r19, r0, 1
	l.sra	r20, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r20, r17
	l.bf	.L798
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.j	.L794
	l.or	r18, r12, r12
.L798:
	l.sfeq	r22, r17
	l.bf	.L796
	l.movhi	r17, ha(.LC19)
	l.or	r5, r24, r24
	l.or	r6, r26, r26
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.jal	__divdf3
	l.lwz	r4, 4(r17)
	l.or	r21, r11, r11
	l.or	r17, r21, r21
	l.j	.L795
	l.or	r19, r12, r12
.L796:
	l.or	r17, r24, r24
	l.or	r19, r26, r26
.L795:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r2, 24(r1)
	l.lwz	r9, 28(r1)
	l.jr	r9
	l.addi	r1, r1, 32
	.size	__powidf2, .-__powidf2
	.section	.rodata
	.align 4
.LC20:
	.long	1065353216
	.section	.text
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r2
	l.addi	r2, r1, 24
	l.sw	20(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.ori	r17, r0, 31
	l.srl	r22, r4, r17
	l.movhi	r17, ha(.LC20)
	l.lwz	r20, lo(.LC20)(r17)
.L802:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L806
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.or	r20, r11, r11
	l.ori	r17, r0, 31
.L806:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L807
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.j	.L802
	l.or	r18, r11, r11
.L807:
	l.sfeq	r22, r17
	l.bf	.L804
	l.or	r4, r20, r20
	l.movhi	r17, ha(.LC20)
	l.jal	__divsf3
	l.lwz	r3, lo(.LC20)(r17)
	l.j	.L805
	l.lwz	r16, 0(r1)
.L804:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
.L805:
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r2, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sfltu	r3, r5
	l.bf	.L810
	l.sw	4(r1), r9
	l.sfgtu	r3, r5
	l.bf	.L811
	l.sfltu	r4, r6
	l.bf	.L812
	l.sfgtu	r4, r6
	l.bf	.L813
	l.ori	r11, r0, 1
	l.j	.L814
	l.lwz	r2, 0(r1)
.L810:
	l.j	.L809
	l.movhi	r11, hi(0)
.L811:
	l.j	.L809
	l.ori	r11, r0, 2
.L812:
	l.j	.L809
	l.movhi	r11, hi(0)
.L813:
	l.ori	r11, r0, 2
.L809:
	l.lwz	r2, 0(r1)
.L814:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.sw	4(r1), r9
	l.jal	__ucmpdi2
	l.addi	r2, r1, 8
	l.addi	r11, r11, -1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.global	__divsf3
	.global	__divdf3
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
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
