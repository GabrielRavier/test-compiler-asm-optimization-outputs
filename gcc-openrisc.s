	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
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

.L5:
	l.jr	r9
	 l.nop

.L2:
	l.sfeq	r3, r4
	l.bf	.L5
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

	l.j	.L5
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.j	.L9
	l.andi	r5, r5, 0xff
.L11:
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.addi	r3, r3, 1
.L9:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L15
	l.movhi	r11, hi(0)
	l.lbz	r17, 0(r4)
	l.sfne	r5, r17
	l.bf	.L11
	l.sb	0(r3), r17
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L15
	 l.nop

	l.addi	r11, r3, 1
.L12:
.L15:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
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
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.j	.L31
	l.movhi	r17, hi(0)
.L28:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
.L31:
	l.sfeq	r5, r17
	l.bf	.L32
	l.movhi	r17, hi(0)
	l.lbz	r19, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L28
	l.movhi	r17, hi(0)
.L32:
	l.sfeq	r5, r17
	l.bf	.L33
	l.movhi	r11, hi(0)
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
.L29:
.L33:
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.j	.L35
	l.or	r17, r3, r3
.L36:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r4)
	l.sb	-1(r17), r19
.L35:
	l.sfne	r17, r5
	l.bf	.L36
	 l.nop

	l.jr	r9
	 l.nop

	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	l.andi	r4, r4, 0xff
	l.addi	r5, r5, -1
	l.xori	r21, r0, -1
.L38:
	l.sfne	r5, r21
	l.bnf	.L42
	l.add	r17, r3, r5
	l.lbz	r17, 0(r17)
	l.sfne	r4, r17
	l.bnf	.L43
	l.addi	r19, r5, -1
	l.j	.L38
	l.or	r5, r19, r19
.L43:
	l.j	.L39
	l.add	r11, r3, r5
.L42:
	l.movhi	r11, hi(0)
.L39:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
	l.j	.L45
	l.andi	r4, r4, 0xff
.L46:
	l.sb	0(r17), r4
	l.addi	r17, r17, 1
.L45:
	l.sfne	r17, r5
	l.bf	.L46
	 l.nop

	l.jr	r9
	 l.nop

	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	l.j	.L48
	l.or	r11, r3, r3
.L49:
	l.addi	r4, r4, 1
	l.addi	r11, r11, 1
.L48:
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L49
	l.sb	0(r11), r17
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.or	r11, r3, r3
	l.j	.L51
	l.andi	r4, r4, 0xff
.L51:
	l.lbs	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L52
	 l.nop

	l.lbz	r17, 0(r11)
	l.sfne	r4, r17
	l.bf	.L51
	l.addi	r11, r11, 1
	l.addi	r11, r11, -1
.L52:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
.L56:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bf	.L57
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.sfne	r17, r19
	l.bf	.L56
	l.movhi	r11, hi(0)
	l.j	.L55
	 l.nop

.L57:
	l.or	r11, r3, r3
.L55:
	l.jr	r9
	 l.nop

	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	l.j	.L63
	l.lbs	r19, 0(r3)
.L64:
	l.addi	r4, r4, 1
	l.lbs	r19, 0(r3)
.L63:
	l.lbs	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L61
	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L64
	l.addi	r3, r3, 1
	l.addi	r3, r3, -1
.L61:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.jr	r9
	l.sub	r11, r11, r17
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.j	.L66
	l.or	r11, r3, r3
.L67:
	l.addi	r11, r11, 1
.L66:
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L67
	 l.nop

	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L73
	l.addi	r5, r5, -1
	l.add	r17, r3, r5
.L70:
	l.lbz	r19, 0(r3)
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L71
	 l.nop

	l.lbz	r19, 0(r4)
	l.sfeq	r19, r21
	l.bf	.L71
	l.sfeq	r3, r17
	l.bf	.L71
	 l.nop

	l.lbz	r21, 0(r3)
	l.sfeq	r21, r19
	l.bnf	.L71
	 l.nop

	l.addi	r3, r3, 1
	l.j	.L70
	l.addi	r4, r4, 1
.L71:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
.L69:
	l.jr	r9
	 l.nop

.L73:
	l.j	.L69
	l.movhi	r11, hi(0)
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.or	r17, r3, r3
	l.add	r5, r3, r5
	l.j	.L75
	l.ori	r21, r0, 1
.L76:
	l.lbs	r19, 1(r17)
	l.sb	0(r4), r19
	l.lbs	r19, 0(r17)
	l.sb	1(r4), r19
	l.addi	r4, r4, 2
	l.addi	r17, r17, 2
.L75:
	l.sub	r19, r5, r17
	l.sfgts	r19, r21
	l.bf	.L76
	 l.nop

	l.jr	r9
	 l.nop

	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.bf	.L78
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L78:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L80
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L80:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L83
	l.ori	r17, r0, 9
	l.sfne	r3, r17
	l.bnf	.L82
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L82:
	l.jr	r9
	 l.nop

.L83:
	l.j	.L82
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L87
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfne	r3, r17
	l.bnf	.L87
	 l.nop

	l.movhi	r11, hi(0)
.L87:
	l.jr	r9
	 l.nop

	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.bf	.L92
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L92:
	l.jr	r9
	 l.nop

	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	l.addi	r3, r3, -33
	l.ori	r17, r0, 93
	l.sfleu	r3, r17
	l.bf	.L94
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L94:
	l.jr	r9
	 l.nop

	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	l.addi	r3, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.bf	.L96
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L96:
	l.jr	r9
	 l.nop

	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	l.addi	r3, r3, -32
	l.ori	r17, r0, 94
	l.sfleu	r3, r17
	l.bf	.L98
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L98:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L101
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfgtu	r3, r17
	l.bnf	.L100
	l.ori	r11, r0, 1
	l.j	.L100
	l.movhi	r11, hi(0)
.L101:
	l.ori	r11, r0, 1
.L100:
	l.jr	r9
	 l.nop

	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	l.addi	r3, r3, -65
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.bf	.L105
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L105:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L107
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L107
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L107
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfgtu	r3, r17
	l.bnf	.L107
	 l.nop

	l.movhi	r11, hi(0)
.L107:
	l.jr	r9
	 l.nop

	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.bf	.L114
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L114:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L125
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L118
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L119
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r17, r3, r17
	l.ori	r19, r0, 8184
	l.sfleu	r17, r19
	l.bf	.L120
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L121
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfeq	r3, r17
	l.bnf	.L117
	l.ori	r11, r0, 1
	l.j	.L117
	l.movhi	r11, hi(0)
.L125:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L117
	l.ori	r11, r0, 1
	l.j	.L117
	l.movhi	r11, hi(0)
.L118:
	l.ori	r11, r0, 1
.L117:
	l.jr	r9
	 l.nop

.L119:
	l.j	.L117
	l.ori	r11, r0, 1
.L120:
	l.j	.L117
	l.ori	r11, r0, 1
.L121:
	l.j	.L117
	l.movhi	r11, hi(0)
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L127
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfgtu	r3, r17
	l.bnf	.L127
	 l.nop

	l.movhi	r11, hi(0)
.L127:
	l.jr	r9
	 l.nop

	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	l.jr	r9
	l.andi	r11, r3, 127
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
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L135
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L136
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__gtdf2
	l.or	r4, r22, r22
	l.sfgts	r11, r24
	l.bnf	.L139
	l.movhi	r21, ha(.LC0)
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__subdf3
	l.or	r4, r22, r22
	l.or	r21, r11, r11
	l.or	r17, r21, r21
	l.or	r19, r12, r12
.L133:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L135:
	l.or	r17, r20, r20
	l.j	.L133
	l.or	r19, r22, r22
.L136:
	l.or	r17, r16, r16
	l.j	.L133
	l.or	r19, r18, r18
.L139:
	l.addi	r23, r21, lo(.LC0)
	l.lwz	r17, lo(.LC0)(r21)
	l.j	.L133
	l.lwz	r19, 4(r23)
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
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L144
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L145
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L148
	l.movhi	r17, ha(.LC1)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
.L142:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L144:
	l.j	.L142
	l.or	r11, r16, r16
.L145:
	l.j	.L142
	l.or	r11, r18, r18
.L148:
	l.j	.L142
	l.lwz	r11, lo(.LC1)(r17)
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L154
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L155
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L152
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L156
	l.or	r17, r20, r20
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L151:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L152:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L159
	 l.nop

	l.or	r17, r16, r16
	l.j	.L151
	l.or	r19, r18, r18
.L154:
	l.or	r17, r16, r16
	l.j	.L151
	l.or	r19, r18, r18
.L155:
	l.j	.L151
	l.or	r19, r22, r22
.L156:
	l.j	.L151
	l.or	r19, r22, r22
.L159:
	l.or	r17, r20, r20
	l.j	.L151
	l.or	r19, r22, r22
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L165
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L166
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L163
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bnf	.L173
	l.or	r11, r18, r18
.L162:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L173:
	l.j	.L162
	l.or	r11, r16, r16
.L163:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L162
	l.or	r11, r16, r16
	l.j	.L162
	l.or	r11, r18, r18
.L165:
	l.j	.L162
	l.or	r11, r16, r16
.L166:
	l.j	.L162
	l.or	r11, r18, r18
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L178
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L179
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L176
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L180
	l.or	r17, r20, r20
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L175:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L176:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L183
	 l.nop

	l.or	r17, r16, r16
	l.j	.L175
	l.or	r19, r18, r18
.L178:
	l.or	r17, r16, r16
	l.j	.L175
	l.or	r19, r18, r18
.L179:
	l.j	.L175
	l.or	r19, r22, r22
.L180:
	l.j	.L175
	l.or	r19, r22, r22
.L183:
	l.or	r17, r20, r20
	l.j	.L175
	l.or	r19, r22, r22
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L189
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L190
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L187
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L191
	l.or	r17, r16, r16
	l.or	r17, r20, r20
	l.or	r19, r22, r22
.L186:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L187:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L194
	 l.nop

	l.or	r17, r20, r20
	l.j	.L186
	l.or	r19, r22, r22
.L189:
	l.or	r17, r16, r16
	l.j	.L186
	l.or	r19, r18, r18
.L190:
	l.j	.L186
	l.or	r19, r22, r22
.L191:
	l.j	.L186
	l.or	r19, r18, r18
.L194:
	l.or	r17, r16, r16
	l.j	.L186
	l.or	r19, r18, r18
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L200
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L201
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L198
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bnf	.L208
	l.or	r11, r16, r16
.L197:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L208:
	l.j	.L197
	l.or	r11, r18, r18
.L198:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L197
	l.or	r11, r18, r18
	l.j	.L197
	l.or	r11, r16, r16
.L200:
	l.j	.L197
	l.or	r11, r16, r16
.L201:
	l.j	.L197
	l.or	r11, r18, r18
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L213
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L214
	l.or	r17, r20, r20
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L211
	l.or	r5, r16, r16
	l.sfges	r20, r24
	l.bf	.L215
	l.or	r17, r16, r16
	l.or	r17, r20, r20
	l.or	r19, r22, r22
.L210:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L211:
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L218
	 l.nop

	l.or	r17, r20, r20
	l.j	.L210
	l.or	r19, r22, r22
.L213:
	l.or	r17, r16, r16
	l.j	.L210
	l.or	r19, r18, r18
.L214:
	l.j	.L210
	l.or	r19, r22, r22
.L215:
	l.j	.L210
	l.or	r19, r18, r18
.L218:
	l.or	r17, r16, r16
	l.j	.L210
	l.or	r19, r18, r18
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
	l.movhi	r19, ha(s.0)
	l.addi	r19, r19, lo(s.0)
	l.movhi	r21, ha(digits)
	l.j	.L221
	l.addi	r21, r21, lo(digits)
.L222:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbs	r17, 0(r17)
	l.sb	0(r19), r17
	l.addi	r19, r19, 1
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
.L221:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L222
	l.movhi	r11, ha(s.0)
	l.sb	0(r19), r0
	l.jr	r9
	l.addi	r11, r11, lo(s.0)
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.movhi	r21, hi(0)
	l.addi	r23, r3, -1
	l.movhi	r17, ha(seed)
	l.sw	lo(seed)(r17), r21
	l.addi	r17, r17, lo(seed)
	l.jr	r9
	l.sw	4(r17), r23
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
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
	l.bf	.L225
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L225:
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
	l.lwz	r9, 28(r1)
	l.jr	r9
	l.addi	r1, r1, 32
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L230
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L227
	 l.nop

	l.sw	4(r17), r3
.L227:
	l.jr	r9
	 l.nop

.L230:
	l.sw	4(r3), r0
	l.j	.L227
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L232
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L232:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L231
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L231:
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r30
	l.sw	32(r1), r9
	l.or	r24, r3, r3
	l.or	r28, r4, r4
	l.or	r30, r5, r5
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.lwz	r22, 0(r5)
	l.or	r18, r4, r4
	l.j	.L235
	l.movhi	r16, hi(0)
.L236:
	l.addi	r16, r16, 1
.L235:
	l.sfne	r16, r22
	l.bnf	.L240
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L236
	l.add	r18, r18, r20
	l.mul	r16, r16, r20
	l.j	.L237
	l.add	r11, r28, r16
.L240:
	l.addi	r17, r22, 1
	l.sw	0(r30), r17
	l.mul	r22, r20, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memcpy
	l.add	r3, r28, r22
.L237:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r30, 28(r1)
	l.lwz	r9, 32(r1)
	l.jr	r9
	l.addi	r1, r1, 36
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
	l.or	r24, r3, r3
	l.or	r26, r4, r4
	l.or	r20, r6, r6
	l.or	r22, r7, r7
	l.lwz	r28, 0(r5)
	l.or	r18, r4, r4
	l.j	.L242
	l.movhi	r16, hi(0)
.L243:
	l.addi	r16, r16, 1
.L242:
	l.sfne	r16, r28
	l.bnf	.L247
	l.or	r4, r18, r18
	l.jalr	r22
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L243
	l.add	r18, r18, r20
	l.mul	r16, r16, r20
	l.j	.L244
	l.add	r11, r26, r16
.L247:
	l.movhi	r11, hi(0)
.L244:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r9, 28(r1)
	l.jr	r9
	l.addi	r1, r1, 32
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L249
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L249:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.j	.L251
	l.or	r16, r3, r3
.L252:
	l.addi	r16, r16, 1
.L251:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L252
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L258
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L253
	l.ori	r21, r0, 1
	l.j	.L254
	l.movhi	r21, hi(0)
.L258:
	l.movhi	r21, hi(0)
.L253:
	l.addi	r16, r16, 1
.L254:
	l.movhi	r11, hi(0)
	l.j	.L255
	l.ori	r19, r0, 9
.L256:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
.L255:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L256
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bf	.L262
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L262:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.j	.L264
	l.or	r16, r3, r3
.L265:
	l.addi	r16, r16, 1
.L264:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L265
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L271
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L266
	l.ori	r21, r0, 1
	l.j	.L267
	l.movhi	r21, hi(0)
.L271:
	l.movhi	r21, hi(0)
.L266:
	l.addi	r16, r16, 1
.L267:
	l.movhi	r11, hi(0)
	l.j	.L268
	l.ori	r19, r0, 9
.L269:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
.L268:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L269
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bf	.L275
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L275:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.addi	r1, r1, -48
	l.sw	8(r1), r14
	l.sw	12(r1), r16
	l.sw	16(r1), r18
	l.sw	20(r1), r20
	l.sw	24(r1), r22
	l.sw	28(r1), r24
	l.sw	32(r1), r26
	l.sw	36(r1), r28
	l.sw	40(r1), r30
	l.sw	44(r1), r9
	l.j	.L277
	l.or	r14, r3, r3
.L278:
	l.addi	r14, r14, 1
.L277:
	l.jal	isspace
	l.lbs	r3, 0(r14)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L278
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r14)
	l.sfeq	r17, r19
	l.bf	.L284
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L279
	l.ori	r27, r0, 1
	l.j	.L280
	l.movhi	r27, hi(0)
.L284:
	l.movhi	r27, hi(0)
.L279:
	l.addi	r14, r14, 1
.L280:
	l.movhi	r16, hi(0)
	l.movhi	r18, hi(0)
	l.j	.L281
	l.ori	r25, r0, 9
.L290:
	l.sub	r17, r12, r24
	l.sub	r17, r17, r23
	l.or	r16, r17, r17
	l.or	r18, r19, r19
.L281:
	l.lbs	r17, 0(r14)
	l.addi	r17, r17, -48
	l.sfleu	r17, r25
	l.bnf	.L292
	l.ori	r17, r0, 30
	l.srl	r17, r18, r17
	l.ori	r19, r0, 2
	l.sll	r20, r16, r19
	l.or	r20, r17, r20
	l.sll	r22, r18, r19
	l.add	r31, r22, r18
	l.sfltu	r31, r22
	l.bf	.L288
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L288:
	l.add	r29, r20, r16
	l.add	r29, r21, r29
	l.add	r13, r31, r31
	l.sfltu	r13, r31
	l.bf	.L289
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L289:
	l.add	r12, r29, r29
	l.add	r12, r19, r12
	l.addi	r14, r14, 1
	l.lbs	r17, -1(r14)
	l.addi	r17, r17, -48
	l.or	r26, r17, r17
	l.ori	r19, r0, 31
	l.sra	r24, r17, r19
	l.sub	r19, r13, r26
	l.sfgtu	r19, r13
	l.bf	.L290
	l.ori	r23, r0, 1
	l.j	.L290
	l.movhi	r23, hi(0)
.L292:
	l.movhi	r21, hi(0)
	l.sfne	r27, r21
	l.bf	.L286
	l.movhi	r28, hi(0)
	l.movhi	r30, hi(0)
	l.sub	r19, r30, r18
	l.sfne	r19, r21
	l.bnf	.L293
	l.ori	r21, r0, 1
.L287:
	l.sub	r17, r28, r16
	l.sub	r17, r17, r21
	l.sw	0(r1), r17
	l.sw	4(r1), r19
.L283:
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
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
	l.lwz	r9, 44(r1)
	l.jr	r9
	l.addi	r1, r1, 48
.L293:
	l.j	.L287
	l.movhi	r21, hi(0)
.L286:
	l.sw	0(r1), r16
	l.j	.L283
	l.sw	4(r1), r18
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r18, r5, r5
	l.or	r20, r6, r6
	l.j	.L295
	l.or	r24, r7, r7
.L303:
	l.srl	r18, r18, r28
.L295:
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L302
	l.ori	r28, r0, 1
	l.srl	r16, r18, r28
	l.mul	r16, r16, r20
	l.add	r16, r22, r16
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L303
	l.sfles	r11, r17
	l.bf	.L300
	l.add	r22, r16, r20
	l.ori	r17, r0, 1
	l.srl	r17, r18, r17
	l.addi	r18, r18, -1
	l.j	.L295
	l.sub	r18, r18, r17
.L302:
	l.movhi	r11, hi(0)
.L298:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r9, 28(r1)
	l.jr	r9
	l.addi	r1, r1, 32
.L300:
	l.j	.L298
	l.or	r11, r16, r16
	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
	l.or	r28, r3, r3
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.or	r24, r8, r8
	l.or	r18, r5, r5
	l.j	.L305
	l.or	r20, r4, r4
.L312:
	l.sra	r18, r18, r17
.L305:
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L311
	l.ori	r17, r0, 1
	l.sra	r16, r18, r17
	l.mul	r16, r16, r22
	l.add	r16, r20, r16
	l.or	r5, r24, r24
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L309
	l.sfles	r11, r17
	l.bf	.L312
	l.ori	r17, r0, 1
	l.add	r20, r16, r22
	l.j	.L312
	l.addi	r18, r18, -1
.L311:
	l.movhi	r11, hi(0)
.L306:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r9, 28(r1)
	l.jr	r9
	l.addi	r1, r1, 32
.L309:
	l.j	.L306
	l.or	r11, r16, r16
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
	l.jr	r9
	l.sw	4(r3), r4
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	l.or	r17, r3, r3
	l.movhi	r25, hi(0)
	l.sfges	r3, r25
	l.bf	.L315
	l.or	r19, r4, r4
	l.movhi	r12, hi(0)
	l.movhi	r13, hi(0)
	l.sub	r23, r13, r4
	l.sfne	r23, r25
	l.bnf	.L318
	l.ori	r27, r0, 1
.L317:
	l.sub	r21, r12, r17
	l.sub	r21, r21, r27
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L315:
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L318:
	l.j	.L317
	l.movhi	r27, hi(0)
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	l.addi	r1, r1, -48
	l.sw	8(r1), r14
	l.sw	12(r1), r16
	l.sw	16(r1), r18
	l.sw	20(r1), r20
	l.sw	24(r1), r22
	l.sw	28(r1), r24
	l.sw	32(r1), r26
	l.sw	36(r1), r28
	l.sw	40(r1), r30
	l.sw	44(r1), r9
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
	l.sw	0(r1), r11
	l.sw	4(r1), r12
	l.sw	0(r14), r24
	l.sw	4(r14), r26
	l.lwz	r19, 0(r1)
	l.lwz	r21, 4(r1)
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
	l.lwz	r9, 44(r1)
	l.jr	r9
	l.addi	r1, r1, 48
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L322
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L322:
	l.jr	r9
	 l.nop

	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
	l.jr	r9
	l.sw	4(r3), r4
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	l.or	r17, r3, r3
	l.movhi	r25, hi(0)
	l.sfges	r3, r25
	l.bf	.L325
	l.or	r19, r4, r4
	l.movhi	r12, hi(0)
	l.movhi	r13, hi(0)
	l.sub	r23, r13, r4
	l.sfne	r23, r25
	l.bnf	.L328
	l.ori	r27, r0, 1
.L327:
	l.sub	r21, r12, r17
	l.sub	r21, r21, r27
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L325:
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L328:
	l.j	.L327
	l.movhi	r27, hi(0)
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	l.addi	r1, r1, -48
	l.sw	8(r1), r14
	l.sw	12(r1), r16
	l.sw	16(r1), r18
	l.sw	20(r1), r20
	l.sw	24(r1), r22
	l.sw	28(r1), r24
	l.sw	32(r1), r26
	l.sw	36(r1), r28
	l.sw	40(r1), r30
	l.sw	44(r1), r9
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
	l.sw	0(r1), r11
	l.sw	4(r1), r12
	l.sw	0(r14), r24
	l.sw	4(r14), r26
	l.lwz	r19, 0(r1)
	l.lwz	r21, 4(r1)
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
	l.lwz	r9, 44(r1)
	l.jr	r9
	l.addi	r1, r1, 48
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	l.j	.L338
	l.lwz	r17, 0(r3)
.L339:
	l.lwz	r17, 0(r3)
.L338:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L333
	l.sfne	r4, r17
	l.bf	.L339
	l.addi	r3, r3, 4
	l.addi	r3, r3, -4
.L333:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L337
	l.movhi	r11, hi(0)
	l.or	r11, r3, r3
.L337:
	l.jr	r9
	 l.nop

	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.j	.L347
	l.lwz	r19, 0(r3)
.L348:
	l.addi	r4, r4, 4
	l.lwz	r19, 0(r3)
.L347:
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L342
	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L342
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfne	r17, r19
	l.bf	.L348
	l.addi	r3, r3, 4
	l.addi	r3, r3, -4
.L342:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L344
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L344
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L344:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L350:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L350
	l.sw	-4(r17), r19
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.j	.L353
	l.or	r11, r3, r3
.L354:
	l.addi	r11, r11, 4
.L353:
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L354
	l.ori	r17, r0, 2
	l.sub	r11, r11, r3
	l.jr	r9
	l.sra	r11, r11, r17
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r21, hi(0)
.L364:
	l.sfeq	r5, r21
	l.bf	.L363
	l.movhi	r17, hi(0)
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L357
	l.sfeq	r19, r21
	l.bf	.L357
	l.sfne	r17, r21
	l.bnf	.L363
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.j	.L364
	l.addi	r4, r4, 4
.L357:
	l.movhi	r17, hi(0)
.L363:
	l.sfeq	r5, r17
	l.bf	.L360
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L359
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L359
	l.ori	r11, r0, 1
	l.j	.L359
	l.movhi	r11, hi(0)
.L360:
	l.movhi	r11, hi(0)
.L359:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.j	.L372
	l.movhi	r17, hi(0)
.L368:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
.L372:
	l.sfeq	r5, r17
	l.bf	.L373
	l.movhi	r17, hi(0)
	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L368
	l.movhi	r17, hi(0)
.L373:
	l.sfeq	r5, r17
	l.bf	.L371
	l.movhi	r11, hi(0)
	l.or	r11, r3, r3
.L371:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.j	.L382
	l.movhi	r17, hi(0)
.L377:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
.L382:
	l.sfeq	r5, r17
	l.bf	.L383
	l.movhi	r17, hi(0)
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L377
	l.movhi	r17, hi(0)
.L383:
	l.sfeq	r5, r17
	l.bf	.L379
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L378
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L378
	l.ori	r11, r0, 1
	l.j	.L378
	l.movhi	r11, hi(0)
.L379:
	l.movhi	r11, hi(0)
.L378:
	l.jr	r9
	 l.nop

	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
	l.j	.L385
	l.xori	r21, r0, -1
.L386:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
.L385:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L386
	 l.nop

	l.jr	r9
	 l.nop

	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.sfeq	r3, r4
	l.bf	.L388
	l.or	r11, r3, r3
	l.sub	r17, r3, r4
	l.ori	r21, r0, 2
	l.sll	r19, r5, r21
	l.sfgeu	r17, r19
	l.bf	.L393
	l.or	r17, r3, r3
	l.or	r5, r19, r19
	l.j	.L390
	l.xori	r21, r0, -4
.L391:
	l.lwz	r19, 0(r17)
	l.add	r17, r11, r5
	l.sw	0(r17), r19
.L390:
	l.addi	r5, r5, -4
	l.sfne	r5, r21
	l.bf	.L391
	l.add	r17, r4, r5
.L388:
	l.jr	r9
	 l.nop

.L392:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
.L389:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L392
	 l.nop

	l.j	.L388
	 l.nop

.L393:
	l.j	.L389
	l.xori	r21, r0, -1
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
	l.j	.L395
	l.xori	r19, r0, -1
.L396:
	l.addi	r17, r17, 4
	l.sw	-4(r17), r4
.L395:
	l.addi	r5, r5, -1
	l.sfne	r5, r19
	l.bf	.L396
	 l.nop

	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L398
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.j	.L399
	l.add	r4, r4, r5
.L400:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sb	0(r4), r19
.L399:
	l.sfne	r17, r3
	l.bf	.L400
	 l.nop

.L397:
	l.jr	r9
	 l.nop

.L398:
	l.bf	.L397
	l.add	r5, r4, r5
	l.j	.L402
	l.or	r17, r3, r3
.L403:
	l.addi	r17, r17, 1
	l.addi	r4, r4, 1
	l.lbs	r19, -1(r17)
	l.sb	-1(r4), r19
.L402:
	l.sfne	r4, r5
	l.bf	.L403
	 l.nop

	l.j	.L397
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
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
	l.bnf	.L410
	l.sll	r23, r4, r5
	l.or	r21, r8, r8
	l.movhi	r12, hi(0)
.L410:
	l.sfges	r15, r12
	l.bnf	.L406
	 l.nop

	l.movhi	r23, hi(0)
.L406:
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
	l.bnf	.L411
	l.or	r27, r13, r27
	l.or	r27, r11, r11
	l.movhi	r17, hi(0)
.L411:
	l.sfges	r15, r17
	l.bnf	.L409
	l.or	r29, r25, r21
	l.movhi	r25, hi(0)
	l.or	r29, r25, r21
.L409:
	l.or	r31, r27, r23
	l.or	r11, r29, r29
	l.jr	r9
	l.or	r12, r31, r31
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
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
	l.bnf	.L418
	l.srl	r21, r3, r5
	l.or	r23, r8, r8
	l.movhi	r12, hi(0)
.L418:
	l.sfges	r15, r12
	l.bnf	.L414
	 l.nop

	l.movhi	r21, hi(0)
.L414:
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
	l.bnf	.L419
	l.sll	r27, r19, r5
	l.or	r25, r11, r11
	l.movhi	r17, hi(0)
.L419:
	l.sfges	r15, r17
	l.bnf	.L417
	l.or	r29, r25, r21
	l.movhi	r27, hi(0)
.L417:
	l.or	r31, r27, r23
	l.or	r11, r29, r29
	l.jr	r9
	l.or	r12, r31, r31
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	l.sll	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.srl	r3, r3, r4
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	l.srl	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.sll	r3, r3, r4
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	l.sll	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.srl	r3, r3, r4
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	l.srl	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.sll	r3, r3, r4
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	l.andi	r3, r3, 0xffff
	l.sll	r11, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.srl	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.andi	r3, r3, 0xffff
	l.srl	r11, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.andi	r3, r3, 0xff
	l.sll	r11, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.srl	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.andi	r3, r3, 0xff
	l.srl	r11, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.andi	r11, r3, 65280
	l.ori	r17, r0, 8
	l.srl	r11, r11, r17
	l.andi	r3, r3, 0xff
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r11, r3
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
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
	l.jr	r9
	l.or	r11, r11, r3
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
	l.sw	144(r1), r9
	l.sw	0(r1), r3
	l.sw	4(r1), r4
	l.movhi	r11, hi(-16777216)
	l.lwz	r2, 0(r1)
	l.and	r14, r2, r11
	l.sw	8(r1), r0
	l.ori	r5, r0, 24
	l.srl	r17, r14, r5
	l.sw	12(r1), r17
	l.movhi	r15, hi(16711680)
	l.sw	20(r1), r0
	l.and	r17, r2, r15
	l.sw	16(r1), r17
	l.sw	24(r1), r0
	l.ori	r4, r0, 8
	l.srl	r17, r17, r4
	l.sw	28(r1), r17
	l.sw	80(r1), r0
	l.lwz	r19, 12(r1)
	l.or	r17, r17, r19
	l.sw	84(r1), r17
	l.sw	36(r1), r0
	l.lwz	r17, 0(r1)
	l.andi	r17, r17, 65280
	l.sw	32(r1), r17
	l.lwz	r17, 32(r1)
	l.sll	r13, r17, r4
	l.srl	r12, r17, r5
	l.lwz	r17, 80(r1)
	l.lwz	r19, 84(r1)
	l.or	r8, r17, r12
	l.or	r9, r19, r13
	l.sw	44(r1), r0
	l.lwz	r2, 0(r1)
	l.lwz	r3, 4(r1)
	l.andi	r17, r2, 255
	l.sw	40(r1), r17
	l.lwz	r17, 40(r1)
	l.sll	r18, r17, r5
	l.srl	r16, r17, r4
	l.or	r28, r8, r16
	l.or	r30, r9, r18
	l.movhi	r29, hi(0)
	l.and	r31, r3, r11
	l.srl	r17, r31, r5
	l.sll	r25, r29, r4
	l.or	r25, r17, r25
	l.sll	r27, r31, r4
	l.or	r24, r28, r25
	l.or	r26, r30, r27
	l.movhi	r20, hi(0)
	l.and	r22, r3, r15
	l.srl	r17, r22, r4
	l.sll	r21, r20, r5
	l.or	r21, r17, r21
	l.sll	r23, r22, r5
	l.or	r6, r24, r21
	l.or	r7, r26, r23
	l.sw	88(r1), r0
	l.andi	r21, r3, 65280
	l.sw	92(r1), r21
	l.sw	52(r1), r0
	l.sll	r19, r21, r4
	l.sw	48(r1), r19
	l.or	r19, r6, r19
	l.sw	56(r1), r19
	l.sw	60(r1), r7
	l.sw	96(r1), r0
	l.andi	r19, r3, 255
	l.sw	100(r1), r19
	l.sw	68(r1), r0
	l.sll	r17, r19, r5
	l.sw	64(r1), r17
	l.lwz	r17, 56(r1)
	l.lwz	r19, 60(r1)
	l.lwz	r23, 64(r1)
	l.or	r21, r17, r23
	l.sw	72(r1), r21
	l.sw	76(r1), r19
	l.lwz	r17, 72(r1)
	l.lwz	r19, 76(r1)
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
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 32
.L433:
	l.sfne	r11, r19
	l.bnf	.L437
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L438
	 l.nop

	l.j	.L433
	l.addi	r11, r11, 1
.L438:
	l.addi	r11, r11, 1
.L435:
	l.jr	r9
	 l.nop

.L437:
	l.j	.L435
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L443
	 l.nop

	l.j	.L441
	l.ori	r11, r0, 1
.L442:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
.L441:
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L442
	l.ori	r17, r0, 1
.L440:
	l.jr	r9
	 l.nop

.L443:
	l.j	.L440
	l.movhi	r11, hi(0)
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
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC2)
	l.jal	__ltsf2
	l.lwz	r4, lo(.LC2)(r17)
	l.movhi	r18, hi(0)
	l.sflts	r11, r18
	l.bf	.L445
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L445
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L445:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
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
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
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
	l.bf	.L453
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
	l.bf	.L453
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L453:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
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
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
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
	l.bf	.L461
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
	l.bf	.L461
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L461:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.or	r16, r3, r3
	l.jal	__floatsidf
	l.or	r3, r4, r4
	l.or	r17, r11, r11
	l.sw	0(r16), r17
	l.sw	4(r16), r12
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
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
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r20, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L471
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r11, r11
	l.jal	__nesf2
	l.or	r3, r20, r20
	l.sfne	r11, r18
	l.bnf	.L471
	l.sfges	r16, r18
	l.bnf	.L479
	l.movhi	r17, ha(.LC9)
	l.j	.L475
	l.lwz	r18, lo(.LC9)(r17)
.L479:
	l.movhi	r17, ha(.LC8)
	l.j	.L475
	l.lwz	r18, lo(.LC8)(r17)
.L474:
	l.ori	r17, r0, 31
.L480:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L471
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L475:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L480
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L474
	l.or	r20, r11, r11
.L471:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
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
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r24, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r16, hi(0)
	l.sfne	r11, r16
	l.bf	.L482
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r17, r11, r11
	l.or	r5, r17, r17
	l.or	r6, r12, r12
	l.or	r3, r20, r20
	l.jal	__nedf2
	l.or	r4, r22, r22
	l.sfne	r11, r16
	l.bnf	.L482
	l.sfges	r24, r16
	l.bnf	.L490
	l.movhi	r17, ha(.LC11)
	l.addi	r19, r17, lo(.LC11)
	l.lwz	r16, lo(.LC11)(r17)
	l.j	.L486
	l.lwz	r18, 4(r19)
.L490:
	l.movhi	r17, ha(.LC10)
	l.addi	r19, r17, lo(.LC10)
	l.lwz	r16, lo(.LC10)(r17)
	l.j	.L486
	l.lwz	r18, 4(r19)
.L485:
	l.ori	r17, r0, 31
.L491:
	l.srl	r17, r24, r17
	l.add	r17, r17, r24
	l.ori	r19, r0, 1
	l.sra	r24, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L482
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L486:
	l.andi	r17, r24, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L491
	l.ori	r17, r0, 31
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r17, r11, r11
	l.or	r20, r17, r17
	l.j	.L485
	l.or	r22, r12, r12
.L482:
	l.or	r11, r20, r20
	l.or	r12, r22, r22
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
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
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r24, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r16, hi(0)
	l.sfne	r11, r16
	l.bf	.L493
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r17, r11, r11
	l.or	r5, r17, r17
	l.or	r6, r12, r12
	l.or	r3, r20, r20
	l.jal	__nedf2
	l.or	r4, r22, r22
	l.sfne	r11, r16
	l.bnf	.L493
	l.sfges	r24, r16
	l.bnf	.L501
	l.movhi	r17, ha(.LC13)
	l.addi	r19, r17, lo(.LC13)
	l.lwz	r16, lo(.LC13)(r17)
	l.j	.L497
	l.lwz	r18, 4(r19)
.L501:
	l.movhi	r17, ha(.LC12)
	l.addi	r19, r17, lo(.LC12)
	l.lwz	r16, lo(.LC12)(r17)
	l.j	.L497
	l.lwz	r18, 4(r19)
.L496:
	l.ori	r17, r0, 31
.L502:
	l.srl	r17, r24, r17
	l.add	r17, r17, r24
	l.ori	r19, r0, 1
	l.sra	r24, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L493
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L497:
	l.andi	r17, r24, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L502
	l.ori	r17, r0, 31
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r17, r11, r11
	l.or	r20, r17, r17
	l.j	.L496
	l.or	r22, r12, r12
.L493:
	l.or	r11, r20, r20
	l.or	r12, r22, r22
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.j	.L504
	l.or	r17, r3, r3
.L505:
	l.addi	r4, r4, 1
	l.lbs	r21, -1(r4)
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r17)
	l.xor	r19, r19, r21
	l.sb	-1(r17), r19
.L504:
	l.sfne	r17, r5
	l.bf	.L505
	 l.nop

	l.jr	r9
	 l.nop

	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.jal	strlen
	l.or	r16, r5, r5
	l.j	.L507
	l.add	r11, r20, r11
.L509:
	l.addi	r18, r18, 1
	l.addi	r11, r11, 1
	l.addi	r16, r16, -1
.L507:
	l.movhi	r19, hi(0)
	l.sfeq	r16, r19
	l.bf	.L512
	l.movhi	r17, hi(0)
	l.lbs	r17, 0(r18)
	l.sfne	r17, r19
	l.bf	.L509
	l.sb	0(r11), r17
	l.movhi	r17, hi(0)
.L512:
	l.sfne	r16, r17
	l.bf	.L510
	 l.nop

	l.sb	0(r11), r0
.L510:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r11, hi(0)
.L514:
	l.sfeq	r11, r4
	l.bf	.L515
	l.add	r17, r3, r11
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L516
	 l.nop

.L515:
	l.jr	r9
	 l.nop

.L516:
	l.j	.L514
	l.addi	r11, r11, 1
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L518:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L526
	l.movhi	r11, hi(0)
	l.or	r17, r4, r4
.L521:
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L525
	l.addi	r17, r17, 1
	l.lbs	r21, -1(r17)
	l.lbs	r19, 0(r3)
	l.sfeq	r21, r19
	l.bnf	.L521
	l.or	r11, r3, r3
.L519:
.L526:
	l.jr	r9
	 l.nop

.L525:
	l.j	.L518
	l.addi	r3, r3, 1
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.j	.L529
	l.movhi	r11, hi(0)
.L532:
	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L533
	 l.nop

.L529:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bnf	.L532
	 l.nop

	l.j	.L532
	l.or	r11, r3, r3
.L533:
	l.jr	r9
	 l.nop

	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	strlen
	l.or	r3, r4, r4
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L538
	l.or	r20, r11, r11
	l.lbs	r22, 0(r18)
.L536:
	l.or	r4, r22, r22
	l.jal	strchr
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L541
	l.or	r16, r11, r11
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.jal	strncmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L542
	l.or	r11, r16, r16
	l.j	.L536
	l.addi	r16, r16, 1
.L541:
	l.j	.L535
	l.movhi	r11, hi(0)
.L538:
	l.or	r11, r16, r16
.L535:
.L542:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
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
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
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
	l.bf	.L557
	l.movhi	r17, ha(.LC14)
.L544:
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L554
	l.or	r3, r20, r20
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.sflts	r11, r24
	l.bf	.L558
	l.movhi	r21, hi(-2147483648)
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L547:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L557:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r20, r20
	l.jal	__gtdf2
	l.or	r4, r22, r22
	l.sfgts	r11, r24
	l.bnf	.L544
	l.movhi	r21, hi(-2147483648)
.L558:
	l.xor	r17, r16, r21
	l.j	.L547
	l.or	r19, r18, r18
.L554:
	l.or	r17, r16, r16
	l.j	.L547
	l.or	r19, r18, r18
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
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.sub	r20, r4, r6
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L564
	l.add	r20, r3, r20
	l.sfltu	r4, r6
	l.bf	.L565
	l.or	r18, r5, r5
	l.addi	r24, r5, 1
	l.j	.L561
	l.addi	r22, r6, -1
.L562:
	l.addi	r16, r16, 1
.L561:
	l.sfleu	r16, r20
	l.bnf	.L568
	l.movhi	r11, hi(0)
	l.lbs	r19, 0(r16)
	l.lbs	r17, 0(r18)
	l.sfne	r19, r17
	l.bf	.L562
	l.or	r5, r22, r22
	l.or	r4, r24, r24
	l.jal	memcmp
	l.addi	r3, r16, 1
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L561
	l.addi	r16, r16, 1
	l.addi	r16, r16, -1
	l.or	r11, r16, r16
.L568:
.L560:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L564:
	l.j	.L560
	l.or	r11, r3, r3
.L565:
	l.j	.L560
	l.movhi	r11, hi(0)
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.jal	memcpy
	l.or	r16, r5, r5
	l.add	r11, r11, r16
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
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
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r26, r5, r5
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L592
	l.movhi	r21, hi(-2147483648)
	l.movhi	r28, hi(0)
.L572:
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
	l.bnf	.L593
	l.movhi	r20, hi(0)
	l.movhi	r22, ha(.LC16)
	l.addi	r22, r22, lo(.LC16)
	l.j	.L574
	l.movhi	r24, ha(.LC17)
.L592:
	l.xor	r17, r16, r21
	l.or	r19, r18, r18
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.j	.L572
	l.ori	r28, r0, 1
.L576:
	l.addi	r20, r20, 1
	l.addi	r17, r24, lo(.LC17)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L574:
	l.lwz	r17, 0(r22)
	l.lwz	r19, 4(r22)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L576
	l.lwz	r5, lo(.LC17)(r24)
.L577:
.L595:
	l.movhi	r17, hi(0)
.L596:
	l.sfeq	r28, r17
.L594:
	l.bf	.L581
	l.sw	0(r26), r20
	l.movhi	r21, hi(-2147483648)
	l.xor	r17, r16, r21
	l.or	r19, r18, r18
	l.or	r16, r17, r17
	l.or	r18, r19, r19
.L581:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r9, 28(r1)
	l.jr	r9
	l.addi	r1, r1, 32
.L593:
	l.movhi	r21, ha(.LC17)
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
	l.bnf	.L595
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bnf	.L596
	l.movhi	r17, hi(0)
	l.movhi	r20, hi(0)
	l.movhi	r22, ha(.LC17)
	l.j	.L579
	l.addi	r22, r22, lo(.LC17)
.L580:
	l.addi	r20, r20, -1
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L579:
	l.lwz	r17, 0(r22)
	l.lwz	r19, 4(r22)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L580
	l.or	r5, r16, r16
	l.j	.L594
	l.sfeq	r28, r17
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r14
	l.sw	4(r1), r9
	l.or	r21, r5, r5
	l.or	r23, r6, r6
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.movhi	r8, hi(0)
	l.j	.L598
	l.movhi	r9, hi(0)
.L603:
	l.add	r25, r8, r21
	l.add	r25, r15, r25
	l.or	r8, r25, r25
	l.or	r9, r27, r27
	l.add	r27, r23, r23
.L606:
	l.sfltu	r27, r23
	l.bf	.L602
	l.ori	r15, r0, 1
	l.movhi	r15, hi(0)
.L602:
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
.L598:
	l.or	r25, r17, r19
	l.movhi	r27, hi(0)
	l.sfne	r25, r27
	l.bnf	.L605
	l.movhi	r12, hi(0)
	l.andi	r13, r19, 1
	l.or	r25, r12, r13
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L606
	l.add	r27, r23, r23
	l.add	r27, r9, r23
	l.sfltu	r27, r9
	l.bf	.L603
	l.ori	r15, r0, 1
	l.j	.L603
	l.movhi	r15, hi(0)
.L605:
	l.or	r11, r8, r8
	l.or	r12, r9, r9
	l.lwz	r14, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L608
	l.ori	r17, r0, 1
.L612:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L608:
	l.sfltu	r4, r11
	l.bnf	.L619
	l.movhi	r21, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L616
	l.sfges	r4, r21
	l.bf	.L612
	 l.nop

	l.j	.L622
	l.movhi	r19, hi(0)
.L619:
	l.j	.L610
	l.movhi	r19, hi(0)
.L616:
	l.j	.L610
	l.movhi	r19, hi(0)
.L621:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L610:
	l.movhi	r21, hi(0)
.L622:
	l.sfne	r17, r21
	l.bnf	.L620
	l.sfltu	r11, r4
	l.bf	.L621
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.j	.L621
	l.or	r19, r19, r17
.L620:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L618
	 l.nop

	l.or	r11, r19, r19
.L618:
	l.jr	r9
	 l.nop

	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.ori	r17, r0, 24
	l.sll	r3, r3, r17
	l.sra	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L631
	 l.nop

.L624:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L626
	l.ori	r17, r0, 8
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzsi2
	l.sll	r3, r3, r17
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L631:
	l.j	.L624
	l.xori	r3, r3, -1
.L626:
	l.jr	r9
	l.ori	r11, r0, 7
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.or	r17, r3, r3
	l.movhi	r21, hi(0)
	l.sfges	r3, r21
	l.bnf	.L642
	l.or	r19, r4, r4
.L633:
	l.or	r21, r17, r19
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L637
	l.or	r3, r17, r17
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	l.or	r4, r19, r19
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L642:
	l.xori	r25, r3, -1
	l.xori	r27, r4, -1
	l.or	r17, r25, r25
	l.j	.L633
	l.or	r19, r27, r27
.L637:
	l.jr	r9
	l.ori	r11, r0, 63
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.j	.L644
	l.movhi	r11, hi(0)
.L648:
	l.srl	r3, r3, r17
	l.add	r4, r4, r4
.L644:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bnf	.L647
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L648
	l.ori	r17, r0, 1
	l.j	.L648
	l.add	r11, r11, r4
.L647:
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.ori	r17, r0, 3
	l.srl	r31, r5, r17
	l.xori	r17, r0, -8
	l.sfltu	r3, r4
	l.bf	.L650
	l.and	r17, r5, r17
	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L651
	l.xori	r21, r0, -1
.L650:
	l.or	r21, r4, r4
	l.or	r19, r3, r3
	l.j	.L652
	l.movhi	r23, hi(0)
.L653:
	l.lwz	r25, 0(r21)
	l.lwz	r27, 4(r21)
	l.sw	0(r19), r25
	l.sw	4(r19), r27
	l.addi	r23, r23, 1
	l.addi	r21, r21, 8
	l.addi	r19, r19, 8
.L652:
	l.sfne	r23, r31
	l.bf	.L653
	l.sfgtu	r5, r17
	l.j	.L659
	 l.nop

.L655:
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
	l.sfgtu	r5, r17
.L659:
	l.bf	.L655
	l.add	r19, r4, r17
.L649:
	l.jr	r9
	 l.nop

.L657:
	l.add	r17, r4, r5
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L651:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L657
	 l.nop

	l.j	.L649
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfltu	r3, r4
	l.bf	.L661
	l.srl	r23, r5, r17
	l.add	r17, r4, r5
	l.sfgeu	r17, r3
	l.bf	.L662
	l.xori	r21, r0, -1
.L661:
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.j	.L663
	l.add	r23, r23, r4
.L664:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.addi	r19, r19, 2
.L663:
	l.sfne	r17, r23
	l.bf	.L664
	 l.nop

	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L660
	l.addi	r5, r5, -1
	l.add	r4, r4, r5
	l.add	r3, r3, r5
	l.lbs	r17, 0(r4)
	l.sb	0(r3), r17
.L660:
	l.jr	r9
	 l.nop

.L666:
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L662:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L666
	l.add	r17, r4, r5
	l.j	.L660
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.ori	r17, r0, 2
	l.srl	r25, r5, r17
	l.xori	r17, r0, -4
	l.sfltu	r3, r4
	l.bf	.L669
	l.and	r17, r5, r17
	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L670
	l.xori	r21, r0, -1
.L669:
	l.or	r19, r4, r4
	l.or	r21, r3, r3
	l.ori	r23, r0, 2
	l.sll	r25, r25, r23
	l.j	.L671
	l.add	r25, r25, r4
.L672:
	l.lwz	r23, 0(r19)
	l.sw	0(r21), r23
	l.addi	r19, r19, 4
	l.addi	r21, r21, 4
.L671:
	l.sfne	r19, r25
	l.bf	.L672
	l.sfgtu	r5, r17
	l.j	.L678
	 l.nop

.L674:
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
	l.sfgtu	r5, r17
.L678:
	l.bf	.L674
	l.add	r19, r4, r17
.L668:
	l.jr	r9
	 l.nop

.L676:
	l.add	r17, r4, r5
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L670:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L676
	 l.nop

	l.j	.L668
	 l.nop

	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	l.div	r11, r3, r4
	l.mul	r11, r11, r4
	l.jr	r9
	l.sub	r11, r3, r11
	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__floatunsidf
	 l.nop

	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__floatunsisf
	 l.nop

	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__floatundidf
	 l.nop

	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__floatundisf
	 l.nop

	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	l.divu	r11, r3, r4
	l.mul	r11, r11, r4
	l.jr	r9
	l.sub	r11, r3, r11
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 16
	l.ori	r21, r0, 15
.L690:
	l.sfne	r11, r19
	l.bnf	.L691
	l.sub	r17, r21, r11
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L691
	 l.nop

	l.j	.L690
	l.addi	r11, r11, 1
.L691:
	l.jr	r9
	 l.nop

	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 16
.L694:
	l.sfne	r11, r19
	l.bnf	.L695
	l.sra	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L695
	 l.nop

	l.j	.L694
	l.addi	r11, r11, 1
.L695:
	l.jr	r9
	 l.nop

	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC18:
	.long	1191182336
	.section	.text
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC18)
	l.jal	__gesf2
	l.lwz	r4, lo(.LC18)(r17)
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L704
	l.movhi	r17, ha(.LC18)
	l.jal	__fixsfsi
	l.or	r3, r16, r16
.L700:
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L704:
	l.lwz	r4, lo(.LC18)(r17)
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L700
	l.add	r11, r11, r17
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.movhi	r17, hi(0)
	l.j	.L706
	l.ori	r21, r0, 16
.L707:
	l.addi	r17, r17, 1
.L706:
	l.sfne	r17, r21
	l.bnf	.L709
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L707
	 l.nop

	l.j	.L707
	l.addi	r11, r11, 1
.L709:
	l.jr	r9
	l.andi	r11, r11, 1
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.movhi	r17, hi(0)
	l.j	.L711
	l.ori	r21, r0, 16
.L712:
	l.addi	r17, r17, 1
.L711:
	l.sfne	r17, r21
	l.bnf	.L714
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L712
	 l.nop

	l.j	.L712
	l.addi	r11, r11, 1
.L714:
	l.jr	r9
	 l.nop

	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.j	.L716
	l.movhi	r11, hi(0)
.L720:
	l.srl	r3, r3, r17
	l.add	r4, r4, r4
.L716:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bnf	.L719
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L720
	l.ori	r17, r0, 1
	l.j	.L720
	l.add	r11, r11, r4
.L719:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L726
	l.movhi	r11, hi(0)
	l.j	.L727
	l.sfne	r4, r17
.L724:
	l.add	r3, r3, r3
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
.L727:
	l.bnf	.L722
	l.andi	r17, r4, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L724
	 l.nop

	l.j	.L724
	l.add	r11, r11, r3
.L726:
.L722:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L729
	l.ori	r17, r0, 1
.L733:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L729:
	l.sfltu	r4, r11
	l.bnf	.L740
	l.movhi	r21, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L737
	l.sfges	r4, r21
	l.bf	.L733
	 l.nop

	l.j	.L743
	l.movhi	r19, hi(0)
.L740:
	l.j	.L731
	l.movhi	r19, hi(0)
.L737:
	l.j	.L731
	l.movhi	r19, hi(0)
.L742:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L731:
	l.movhi	r21, hi(0)
.L743:
	l.sfne	r17, r21
	l.bnf	.L741
	l.sfltu	r11, r4
	l.bf	.L742
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.j	.L742
	l.or	r19, r19, r17
.L741:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L739
	 l.nop

	l.or	r11, r19, r19
.L739:
	l.jr	r9
	 l.nop

	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r16, r3, r3
	l.jal	__ltsf2
	l.or	r18, r4, r4
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L746
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L745
	l.ori	r11, r0, 1
	l.j	.L745
	l.movhi	r11, hi(0)
.L746:
	l.xori	r11, r0, -1
.L745:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.jal	__ltdf2
	l.or	r22, r6, r6
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L752
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.sfgts	r11, r24
	l.bf	.L751
	l.ori	r11, r0, 1
	l.j	.L751
	l.movhi	r11, hi(0)
.L752:
	l.xori	r11, r0, -1
.L751:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.or	r19, r3, r3
	l.ori	r25, r0, 31
	l.sra	r17, r3, r25
	l.sra	r21, r4, r25
	l.or	r5, r21, r21
	l.or	r6, r4, r4
	l.or	r3, r17, r17
	l.jal	__muldi3
	l.or	r4, r19, r19
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.movhi	r17, hi(0)
	l.or	r19, r3, r3
	l.movhi	r21, hi(0)
	l.or	r5, r21, r21
	l.or	r6, r4, r4
	l.or	r3, r17, r17
	l.jal	__muldi3
	l.or	r4, r19, r19
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L769
	 l.nop

	l.movhi	r21, hi(0)
.L761:
	l.ori	r17, r0, 33
	l.j	.L762
	l.movhi	r11, hi(0)
.L769:
	l.sub	r4, r0, r4
	l.j	.L761
	l.ori	r21, r0, 1
.L763:
	l.add	r3, r3, r3
	l.ori	r19, r0, 1
	l.sra	r4, r4, r19
.L762:
	l.movhi	r19, hi(0)
	l.sfeq	r4, r19
	l.bf	.L764
	l.addi	r17, r17, -1
	l.andi	r17, r17, 0xff
	l.sfne	r17, r19
	l.bnf	.L764
	l.andi	r19, r4, 1
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L763
	 l.nop

	l.j	.L763
	l.add	r11, r11, r3
.L764:
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bf	.L766
	 l.nop

	l.sub	r11, r0, r11
.L766:
	l.jr	r9
	 l.nop

	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L776
	l.sw	4(r1), r9
	l.movhi	r16, hi(0)
.L771:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L777
	 l.nop

.L772:
	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L778
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L778:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L776:
	l.sub	r3, r0, r3
	l.j	.L771
	l.ori	r16, r0, 1
.L777:
	l.sub	r4, r0, r4
	l.j	.L772
	l.xori	r16, r16, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L785
	l.sw	4(r1), r9
	l.movhi	r16, hi(0)
.L780:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L786
	 l.nop

.L781:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L787
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L787:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L785:
	l.sub	r3, r0, r3
	l.j	.L780
	l.ori	r16, r0, 1
.L786:
	l.j	.L781
	l.sub	r4, r0, r4
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.ori	r19, r0, 17
	l.ori	r17, r0, 1
.L789:
	l.sfltu	r4, r11
	l.bnf	.L800
	l.movhi	r23, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r23
	l.bf	.L797
	l.ori	r21, r0, 16
	l.sll	r21, r4, r21
	l.sfges	r21, r23
	l.bnf	.L801
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.j	.L789
	l.andi	r17, r17, 0xffff
.L800:
	l.j	.L791
	l.movhi	r19, hi(0)
.L797:
	l.j	.L791
	l.movhi	r19, hi(0)
.L801:
	l.j	.L791
	l.movhi	r19, hi(0)
.L803:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L791:
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L802
	l.sfltu	r11, r4
	l.bf	.L803
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.j	.L803
	l.or	r19, r19, r17
.L802:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L799
	 l.nop

	l.or	r11, r19, r19
.L799:
	l.jr	r9
	 l.nop

	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L805
	l.ori	r17, r0, 1
.L809:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L805:
	l.sfltu	r4, r11
	l.bnf	.L816
	l.movhi	r21, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L813
	l.sfges	r4, r21
	l.bf	.L809
	 l.nop

	l.j	.L819
	l.movhi	r19, hi(0)
.L816:
	l.j	.L807
	l.movhi	r19, hi(0)
.L813:
	l.j	.L807
	l.movhi	r19, hi(0)
.L818:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L807:
	l.movhi	r21, hi(0)
.L819:
	l.sfne	r17, r21
	l.bnf	.L817
	l.sfltu	r11, r4
	l.bf	.L818
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.j	.L818
	l.or	r19, r19, r17
.L817:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L815
	 l.nop

	l.or	r11, r19, r19
.L815:
	l.jr	r9
	 l.nop

	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r25, r5, 32
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L821
	l.movhi	r25, hi(0)
	l.movhi	r19, hi(0)
	l.addi	r5, r5, -32
	l.sll	r17, r4, r5
.L822:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
.L823:
	l.or	r11, r21, r21
	l.jr	r9
	l.or	r12, r23, r23
.L821:
	l.sfeq	r5, r25
	l.bf	.L824
	l.sll	r19, r4, r5
	l.sll	r27, r3, r5
	l.ori	r25, r0, 32
	l.sub	r25, r25, r5
	l.srl	r25, r4, r25
	l.j	.L822
	l.or	r17, r25, r27
.L824:
	l.or	r21, r3, r3
	l.j	.L823
	l.or	r23, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r29, r5, 32
	l.movhi	r21, hi(0)
	l.sfeq	r29, r21
	l.bf	.L826
	l.sfeq	r5, r21
	l.ori	r21, r0, 31
	l.sra	r17, r3, r21
	l.addi	r5, r5, -32
	l.sra	r19, r3, r5
.L827:
	l.or	r25, r17, r17
	l.or	r27, r19, r19
.L828:
	l.or	r11, r25, r25
	l.jr	r9
	l.or	r12, r27, r27
.L826:
	l.bf	.L829
	l.sra	r17, r3, r5
	l.ori	r29, r0, 32
	l.sub	r29, r29, r5
	l.sll	r21, r3, r29
	l.srl	r5, r4, r5
	l.j	.L827
	l.or	r19, r21, r5
.L829:
	l.or	r25, r3, r3
	l.j	.L828
	l.or	r27, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.addi	r1, r1, -128
	l.sw	88(r1), r14
	l.sw	92(r1), r16
	l.sw	96(r1), r18
	l.sw	100(r1), r20
	l.sw	104(r1), r22
	l.sw	108(r1), r24
	l.sw	112(r1), r26
	l.sw	116(r1), r28
	l.sw	120(r1), r30
	l.sw	124(r1), r9
	l.sw	80(r1), r3
	l.sw	84(r1), r4
	l.sw	0(r1), r0
	l.ori	r19, r0, 24
	l.lwz	r4, 80(r1)
	l.lwz	r5, 84(r1)
	l.srl	r17, r4, r19
	l.sw	4(r1), r17
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
	l.sw	12(r1), r0
	l.andi	r17, r25, 255
	l.sw	8(r1), r17
	l.srl	r17, r5, r12
	l.or	r21, r17, r13
	l.sll	r23, r5, r19
	l.sw	20(r1), r0
	l.andi	r17, r21, 65280
	l.sw	16(r1), r17
	l.sw	28(r1), r0
	l.sw	24(r1), r27
	l.sw	36(r1), r0
	l.and	r17, r27, r15
	l.sw	32(r1), r17
	l.sw	44(r1), r0
	l.sw	40(r1), r23
	l.sw	56(r1), r23
	l.lwz	r17, 4(r1)
	l.sw	60(r1), r17
	l.lwz	r17, 56(r1)
	l.lwz	r19, 60(r1)
	l.or	r6, r17, r28
	l.or	r7, r19, r30
	l.or	r8, r6, r24
	l.or	r9, r7, r26
	l.or	r20, r8, r16
	l.or	r22, r9, r18
	l.lwz	r17, 8(r1)
	l.or	r17, r20, r17
	l.sw	64(r1), r17
	l.sw	68(r1), r22
	l.lwz	r17, 64(r1)
	l.lwz	r19, 68(r1)
	l.lwz	r23, 16(r1)
	l.or	r21, r17, r23
	l.sw	72(r1), r21
	l.sw	76(r1), r19
	l.lwz	r17, 72(r1)
	l.lwz	r19, 76(r1)
	l.lwz	r23, 32(r1)
	l.or	r21, r17, r23
	l.sw	48(r1), r21
	l.sw	52(r1), r19
	l.lwz	r17, 48(r1)
	l.lwz	r19, 52(r1)
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
	l.lwz	r9, 124(r1)
	l.jr	r9
	l.addi	r1, r1, 128
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
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
	l.jr	r9
	l.or	r11, r3, r11
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.ori	r17, r0, 65535
	l.sfgtu	r3, r17
	l.bnf	.L834
	l.ori	r17, r0, 16
	l.movhi	r17, hi(0)
.L834:
	l.ori	r19, r0, 16
	l.sub	r19, r19, r17
	l.srl	r3, r3, r19
	l.andi	r19, r3, 65280
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L835
	l.ori	r21, r0, 8
	l.movhi	r21, hi(0)
.L835:
	l.ori	r19, r0, 8
	l.sub	r19, r19, r21
	l.srl	r3, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r3, 240
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L836
	l.ori	r21, r0, 4
	l.movhi	r21, hi(0)
.L836:
	l.ori	r19, r0, 4
	l.sub	r19, r19, r21
	l.srl	r3, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r3, 12
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L837
	l.ori	r21, r0, 2
	l.movhi	r21, hi(0)
.L837:
	l.ori	r19, r0, 2
	l.sub	r23, r19, r21
	l.srl	r3, r3, r23
	l.add	r17, r17, r21
	l.and	r21, r3, r19
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L842
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L842:
	l.sub	r19, r19, r3
	l.mul	r11, r11, r19
	l.jr	r9
	l.add	r11, r17, r11
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L845
	l.sfgts	r3, r5
	l.bf	.L846
	l.sfltu	r4, r6
	l.bf	.L847
	l.sfgtu	r4, r6
	l.bf	.L848
	 l.nop

	l.j	.L844
	l.ori	r11, r0, 1
.L845:
	l.movhi	r11, hi(0)
.L844:
	l.jr	r9
	 l.nop

.L846:
	l.j	.L844
	l.ori	r11, r0, 2
.L847:
	l.j	.L844
	l.movhi	r11, hi(0)
.L848:
	l.j	.L844
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__cmpdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L852
	l.ori	r17, r0, 16
	l.movhi	r17, hi(0)
.L852:
	l.srl	r3, r3, r17
	l.andi	r19, r3, 255
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L853
	l.ori	r19, r0, 8
	l.movhi	r19, hi(0)
.L853:
	l.srl	r3, r3, r19
	l.add	r17, r17, r19
	l.andi	r19, r3, 15
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L854
	l.ori	r19, r0, 4
	l.movhi	r19, hi(0)
.L854:
	l.srl	r3, r3, r19
	l.add	r17, r17, r19
	l.andi	r19, r3, 3
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L855
	l.ori	r19, r0, 2
	l.movhi	r19, hi(0)
.L855:
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
	l.jr	r9
	l.add	r11, r17, r11
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r25, r5, 32
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L861
	l.movhi	r25, hi(0)
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r19, r3, r5
.L862:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
.L863:
	l.or	r11, r21, r21
	l.jr	r9
	l.or	r12, r23, r23
.L861:
	l.sfeq	r5, r25
	l.bf	.L864
	l.srl	r17, r3, r5
	l.ori	r25, r0, 32
	l.sub	r25, r25, r5
	l.sll	r25, r3, r25
	l.srl	r5, r4, r5
	l.j	.L862
	l.or	r19, r25, r5
.L864:
	l.or	r21, r3, r3
	l.j	.L863
	l.or	r23, r4, r4
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
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
	l.jr	r9
	l.or	r12, r19, r19
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.addi	r1, r1, -44
	l.sw	8(r1), r16
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r24
	l.sw	28(r1), r26
	l.sw	32(r1), r28
	l.sw	36(r1), r30
	l.sw	40(r1), r9
	l.or	r23, r4, r4
	l.or	r24, r3, r3
	l.or	r26, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r4, r6, r6
	l.jal	__muldsi3
	l.or	r3, r23, r23
	l.sw	0(r1), r11
	l.sw	4(r1), r12
	l.lwz	r17, 0(r1)
	l.lwz	r19, 4(r1)
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
	l.lwz	r9, 40(r1)
	l.jr	r9
	l.addi	r1, r1, 44
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.or	r12, r3, r3
	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r19, r27, r4
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L870
	l.ori	r23, r0, 1
.L869:
	l.sub	r17, r25, r12
	l.sub	r17, r17, r23
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L870:
	l.j	.L869
	l.movhi	r23, hi(0)
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
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
	l.jr	r9
	l.andi	r11, r11, 1
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
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
	l.jr	r9
	l.andi	r11, r11, 1
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.addi	r1, r1, -40
	l.sw	0(r1), r14
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r24
	l.sw	24(r1), r26
	l.sw	28(r1), r28
	l.sw	32(r1), r30
	l.sw	36(r1), r9
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
	l.bf	.L874
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L874:
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
	l.bf	.L875
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L875:
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
	l.bf	.L876
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L876:
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
	l.lwz	r9, 36(r1)
	l.jr	r9
	l.addi	r1, r1, 40
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
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
	l.jr	r9
	l.andi	r11, r11, 63
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
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.ori	r17, r0, 31
	l.srl	r22, r5, r17
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.lwz	r24, lo(.LC19)(r17)
	l.j	.L882
	l.lwz	r26, 4(r19)
.L880:
	l.ori	r17, r0, 31
.L886:
	l.srl	r17, r20, r17
	l.add	r17, r17, r20
	l.ori	r19, r0, 1
	l.sra	r20, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r20, r17
	l.bf	.L887
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L882:
	l.andi	r17, r20, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L886
	l.ori	r17, r0, 31
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r26, r26
	l.or	r17, r11, r11
	l.or	r24, r17, r17
	l.j	.L880
	l.or	r26, r12, r12
.L887:
	l.sfeq	r22, r17
	l.bf	.L884
	l.or	r17, r24, r24
	l.movhi	r17, ha(.LC19)
	l.or	r5, r24, r24
	l.or	r6, r26, r26
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.jal	__divdf3
	l.lwz	r4, 4(r17)
	l.or	r21, r11, r11
	l.or	r17, r21, r21
	l.or	r19, r12, r12
.L883:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L884:
	l.j	.L883
	l.or	r19, r26, r26
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC20:
	.long	1065353216
	.section	.text
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.ori	r17, r0, 31
	l.srl	r22, r4, r17
	l.movhi	r17, ha(.LC20)
	l.j	.L891
	l.lwz	r20, lo(.LC20)(r17)
.L889:
	l.ori	r17, r0, 31
.L895:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L897
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L891:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L895
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L889
	l.or	r20, r11, r11
.L897:
	l.sfeq	r22, r17
	l.bf	.L896
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.movhi	r17, ha(.LC20)
	l.jal	__divsf3
	l.lwz	r3, lo(.LC20)(r17)
.L892:
.L896:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.sfltu	r3, r5
	l.bf	.L900
	l.sfgtu	r3, r5
	l.bf	.L901
	l.sfltu	r4, r6
	l.bf	.L902
	l.sfgtu	r4, r6
	l.bf	.L903
	 l.nop

	l.j	.L899
	l.ori	r11, r0, 1
.L900:
	l.movhi	r11, hi(0)
.L899:
	l.jr	r9
	 l.nop

.L901:
	l.j	.L899
	l.ori	r11, r0, 2
.L902:
	l.j	.L899
	l.movhi	r11, hi(0)
.L903:
	l.j	.L899
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__ucmpdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
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
