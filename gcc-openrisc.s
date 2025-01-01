	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.sfleu	r3, r4
	l.bf	.L2
	l.or	r11, r3, r3
	l.add	r4, r4, r5
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L3
	l.add	r17, r3, r5
.L4:
	l.addi	r4, r4, -1
	l.addi	r17, r17, -1
	l.lbs	r19, 0(r4)
	l.sfne	r11, r17
	l.bf	.L4
	l.sb	0(r17), r19
.L3:
	l.jr	r9
	 l.nop

.L2:
	l.sfeq	r3, r4
	l.bf	.L3
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L3
	 l.nop

	l.add	r5, r3, r5
	l.or	r17, r3, r3
.L5:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r4)
	l.sfne	r5, r17
	l.bf	.L5
	l.sb	-1(r17), r19
	l.j	.L3
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.andi	r5, r5, 0xff
	l.movhi	r17, hi(0)
	l.sfne	r6, r17
	l.bnf	.L8
	l.movhi	r11, hi(0)
.L9:
	l.lbz	r17, 0(r4)
	l.sfne	r17, r5
	l.bnf	.L16
	l.sb	0(r3), r17
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bnf	.L9
	l.addi	r3, r3, 1
	l.j	.L8
	l.movhi	r11, hi(0)
.L16:
	l.addi	r11, r3, 1
.L8:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.andi	r4, r4, 0xff
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L17
	l.movhi	r11, hi(0)
.L18:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bnf	.L23
	l.addi	r5, r5, -1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L18
	l.addi	r3, r3, 1
	l.j	.L17
	l.movhi	r11, hi(0)
.L23:
	l.or	r11, r3, r3
.L17:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L24
	l.movhi	r11, hi(0)
.L25:
	l.lbz	r19, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L32
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L25
	l.addi	r4, r4, 1
	l.j	.L24
	l.movhi	r11, hi(0)
.L32:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
.L24:
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L34
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
.L35:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r4)
	l.sfne	r5, r17
	l.bf	.L35
	l.sb	-1(r17), r19
.L34:
	l.jr	r9
	 l.nop

	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	l.andi	r4, r4, 0xff
	l.addi	r5, r5, -1
	l.add	r5, r3, r5
	l.addi	r3, r3, -1
.L38:
	l.sfne	r5, r3
	l.bnf	.L41
	l.or	r11, r5, r5
	l.lbz	r17, 0(r5)
	l.sfeq	r17, r4
	l.bnf	.L38
	l.addi	r5, r5, -1
	l.j	.L37
	 l.nop

.L41:
	l.movhi	r11, hi(0)
.L37:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L43
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
	l.andi	r4, r4, 0xff
.L44:
	l.sb	0(r17), r4
	l.addi	r17, r17, 1
	l.sfne	r5, r17
	l.bf	.L44
	 l.nop

.L43:
	l.jr	r9
	 l.nop

	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	l.or	r11, r3, r3
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L47
	l.sb	0(r3), r17
.L48:
	l.addi	r4, r4, 1
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L48
	l.sb	0(r11), r17
.L47:
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.andi	r4, r4, 0xff
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L50
	l.or	r11, r3, r3
.L51:
	l.andi	r17, r17, 0xff
	l.sfne	r17, r4
	l.bnf	.L56
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 1
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L51
	 l.nop

	l.j	.L50
	l.or	r11, r3, r3
.L56:
	l.or	r11, r3, r3
.L50:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.or	r11, r3, r3
.L59:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L58
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L59
	l.addi	r11, r11, 1
	l.movhi	r11, hi(0)
.L58:
	l.jr	r9
	 l.nop

	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfeq	r17, r11
	l.bnf	.L63
	 l.nop

	l.movhi	r19, hi(0)
	l.sfne	r17, r19
.L67:
	l.bnf	.L66
	l.andi	r17, r17, 0xff
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfne	r17, r11
	l.bnf	.L67
	l.sfne	r17, r19
.L63:
	l.andi	r17, r17, 0xff
.L66:
	l.andi	r11, r11, 0xff
	l.jr	r9
	l.sub	r11, r17, r11
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L73
	l.or	r11, r3, r3
.L70:
	l.addi	r11, r11, 1
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L70
	 l.nop

.L69:
.L73:
	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L79
	l.addi	r19, r5, -1
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L76
	 l.nop

	l.add	r19, r3, r19
.L77:
	l.lbz	r17, 0(r4)
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L80
	l.sfeq	r19, r3
	l.bf	.L81
	l.sfeq	r17, r11
	l.bnf	.L76
	l.movhi	r17, hi(0)
	l.addi	r3, r3, 1
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bnf	.L77
	l.addi	r4, r4, 1
.L76:
	l.lbz	r17, 0(r4)
.L80:
.L81:
	l.sub	r11, r11, r17
.L74:
	l.jr	r9
	 l.nop

.L79:
	l.j	.L74
	l.movhi	r11, hi(0)
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L82
	l.xori	r17, r0, -2
	l.and	r5, r5, r17
	l.add	r19, r3, r5
.L84:
	l.lbs	r17, 1(r3)
	l.sb	0(r4), r17
	l.lbs	r17, 0(r3)
	l.sb	1(r4), r17
	l.addi	r3, r3, 2
	l.sfne	r3, r19
	l.bf	.L84
	l.addi	r4, r4, 2
.L82:
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
	l.bf	.L87
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L87:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L89
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L89:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L92
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L90
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L90:
	l.jr	r9
	 l.nop

.L92:
	l.j	.L90
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L94
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L94
	 l.nop

	l.movhi	r11, hi(0)
.L94:
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
	l.bf	.L99
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L99:
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
	l.bf	.L101
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L101:
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
	l.bf	.L103
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L103:
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
	l.bf	.L105
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L105:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L108
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bf	.L106
	l.ori	r11, r0, 1
	l.j	.L106
	l.movhi	r11, hi(0)
.L108:
	l.ori	r11, r0, 1
.L106:
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
	l.bf	.L111
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L111:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L112
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L112
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L112
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L112
	 l.nop

	l.movhi	r11, hi(0)
.L112:
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
	l.bf	.L119
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L119:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L129
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L123
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L124
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r17, r3, r17
	l.ori	r19, r0, 8184
	l.sfleu	r17, r19
	l.bf	.L125
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L126
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bf	.L120
	l.ori	r11, r0, 1
	l.j	.L120
	l.movhi	r11, hi(0)
.L129:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L120
	l.ori	r11, r0, 1
	l.j	.L120
	l.movhi	r11, hi(0)
.L123:
	l.ori	r11, r0, 1
.L120:
	l.jr	r9
	 l.nop

.L124:
	l.j	.L120
	l.ori	r11, r0, 1
.L125:
	l.j	.L120
	l.ori	r11, r0, 1
.L126:
	l.j	.L120
	l.movhi	r11, hi(0)
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L130
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bf	.L130
	 l.nop

	l.movhi	r11, hi(0)
.L130:
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
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.or	r22, r5, r5
	l.or	r20, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L138
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L139
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L142
	l.movhi	r17, ha(.LC0)
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
.L135:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L138:
	l.or	r11, r18, r18
	l.j	.L135
	l.or	r12, r16, r16
.L139:
	l.or	r11, r22, r22
	l.j	.L135
	l.or	r12, r20, r20
.L142:
	l.addi	r19, r17, lo(.LC0)
	l.lwz	r11, lo(.LC0)(r17)
	l.j	.L135
	l.lwz	r12, 4(r19)
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
	l.bf	.L147
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L148
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L151
	l.movhi	r17, ha(.LC1)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
.L144:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L147:
	l.j	.L144
	l.or	r11, r16, r16
.L148:
	l.j	.L144
	l.or	r11, r18, r18
.L151:
	l.j	.L144
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
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r18, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L159
	l.or	r5, r18, r18
	l.or	r6, r22, r22
	l.or	r3, r18, r18
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L160
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r18, r17
	l.sfeq	r19, r17
	l.bf	.L155
	l.or	r5, r18, r18
	l.sfeq	r19, r24
	l.bf	.L161
	 l.nop

	l.or	r11, r18, r18
	l.j	.L153
	l.or	r12, r22, r22
.L155:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L163
	l.or	r11, r16, r16
	l.or	r16, r18, r18
	l.or	r20, r22, r22
	l.or	r11, r16, r16
.L163:
	l.or	r12, r20, r20
.L153:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L159:
	l.or	r11, r18, r18
	l.j	.L153
	l.or	r12, r22, r22
.L160:
	l.or	r11, r16, r16
	l.j	.L153
	l.or	r12, r20, r20
.L161:
	l.or	r11, r16, r16
	l.j	.L153
	l.or	r12, r20, r20
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
	l.bf	.L170
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L171
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L166
	l.or	r4, r16, r16
	l.sfeq	r19, r20
	l.bf	.L164
	l.or	r11, r18, r18
	l.j	.L164
	l.or	r11, r16, r16
.L166:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L164
	l.or	r11, r16, r16
	l.or	r11, r18, r18
.L164:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L170:
	l.j	.L164
	l.or	r11, r16, r16
.L171:
	l.j	.L164
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
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r18, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L182
	l.or	r5, r18, r18
	l.or	r6, r22, r22
	l.or	r3, r18, r18
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L183
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r18, r17
	l.sfeq	r19, r17
	l.bf	.L178
	l.or	r5, r18, r18
	l.sfeq	r19, r24
	l.bf	.L184
	 l.nop

	l.or	r11, r18, r18
	l.j	.L176
	l.or	r12, r22, r22
.L178:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L186
	l.or	r11, r16, r16
	l.or	r16, r18, r18
	l.or	r20, r22, r22
	l.or	r11, r16, r16
.L186:
	l.or	r12, r20, r20
.L176:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L182:
	l.or	r11, r18, r18
	l.j	.L176
	l.or	r12, r22, r22
.L183:
	l.or	r11, r16, r16
	l.j	.L176
	l.or	r12, r20, r20
.L184:
	l.or	r11, r16, r16
	l.j	.L176
	l.or	r12, r20, r20
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
	l.or	r22, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L193
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L194
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L189
	l.or	r5, r16, r16
	l.sfeq	r19, r24
	l.bf	.L195
	 l.nop

	l.or	r11, r22, r22
	l.j	.L187
	l.or	r12, r18, r18
.L189:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L192
	l.or	r12, r20, r20
	l.or	r16, r22, r22
	l.or	r12, r18, r18
.L192:
	l.or	r11, r16, r16
.L187:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L193:
	l.or	r11, r16, r16
	l.j	.L187
	l.or	r12, r20, r20
.L194:
	l.or	r11, r22, r22
	l.j	.L187
	l.or	r12, r18, r18
.L195:
	l.or	r11, r16, r16
	l.j	.L187
	l.or	r12, r20, r20
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
	l.bf	.L203
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L204
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L199
	l.or	r4, r16, r16
	l.sfeq	r19, r20
	l.bf	.L197
	l.or	r11, r16, r16
	l.j	.L197
	l.or	r11, r18, r18
.L199:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L197
	l.or	r11, r18, r18
	l.or	r11, r16, r16
.L197:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L203:
	l.j	.L197
	l.or	r11, r16, r16
.L204:
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
	l.or	r22, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L215
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L216
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L211
	l.or	r5, r16, r16
	l.sfeq	r19, r24
	l.bf	.L217
	 l.nop

	l.or	r11, r22, r22
	l.j	.L209
	l.or	r12, r18, r18
.L211:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L214
	l.or	r12, r20, r20
	l.or	r16, r22, r22
	l.or	r12, r18, r18
.L214:
	l.or	r11, r16, r16
.L209:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L215:
	l.or	r11, r16, r16
	l.j	.L209
	l.or	r12, r20, r20
.L216:
	l.or	r11, r22, r22
	l.j	.L209
	l.or	r12, r18, r18
.L217:
	l.or	r11, r16, r16
	l.j	.L209
	l.or	r12, r20, r20
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
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L222
	 l.nop

	l.movhi	r19, ha(s.0)
	l.addi	r19, r19, lo(s.0)
	l.movhi	r21, ha(digits)
	l.addi	r21, r21, lo(digits)
.L221:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbs	r17, 0(r17)
	l.sb	0(r19), r17
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L221
	l.addi	r19, r19, 1
.L220:
	l.sb	0(r19), r0
	l.movhi	r11, ha(s.0)
	l.jr	r9
	l.addi	r11, r11, lo(s.0)
.L222:
	l.movhi	r19, ha(s.0)
	l.j	.L220
	l.addi	r19, r19, lo(s.0)
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.addi	r3, r3, -1
	l.movhi	r17, ha(seed)
	l.addi	r19, r17, lo(seed)
	l.sw	lo(seed)(r17), r0
	l.jr	r9
	l.sw	4(r19), r3
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.movhi	r16, ha(seed)
	l.addi	r18, r16, lo(seed)
	l.movhi	r5, hi(1481703424)
	l.ori	r5, r5, 62509
	l.movhi	r6, hi(1284833280)
	l.ori	r6, r6, 32557
	l.lwz	r3, lo(seed)(r16)
	l.jal	__muldi3
	l.lwz	r4, 4(r18)
	l.addi	r19, r12, 1
	l.sfltu	r19, r12
	l.bf	.L226
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L226:
	l.add	r11, r17, r11
	l.sw	lo(seed)(r16), r11
	l.sw	4(r18), r19
	l.ori	r17, r0, 1
	l.srl	r11, r11, r17
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L231
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L228
	 l.nop

	l.sw	4(r17), r3
.L228:
	l.jr	r9
	 l.nop

.L231:
	l.sw	4(r3), r0
	l.j	.L228
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L233
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L233:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L232
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L232:
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
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
	l.or	r24, r3, r3
	l.or	r28, r4, r4
	l.or	r30, r5, r5
	l.lwz	r20, 0(r5)
	l.movhi	r17, hi(0)
	l.sfeq	r20, r17
	l.bf	.L236
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.movhi	r18, hi(0)
.L238:
	l.or	r14, r16, r16
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L235
	l.addi	r18, r18, 1
	l.sfne	r20, r18
	l.bf	.L238
	l.add	r16, r16, r22
.L236:
	l.addi	r17, r20, 1
	l.sw	0(r30), r17
	l.mul	r20, r22, r20
	l.or	r5, r22, r22
	l.or	r4, r24, r24
	l.jal	memcpy
	l.add	r3, r28, r20
	l.or	r14, r11, r11
.L235:
	l.or	r11, r14, r14
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
	l.lwz	r26, 0(r5)
	l.movhi	r17, hi(0)
	l.sfeq	r26, r17
	l.bf	.L244
	l.or	r20, r3, r3
	l.or	r24, r6, r6
	l.or	r22, r7, r7
	l.or	r16, r4, r4
	l.movhi	r18, hi(0)
.L243:
	l.or	r28, r16, r16
	l.or	r4, r16, r16
	l.jalr	r22
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L241
	l.addi	r18, r18, 1
	l.sfne	r26, r18
	l.bf	.L243
	l.add	r16, r16, r24
	l.movhi	r28, hi(0)
.L241:
	l.or	r11, r28, r28
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
.L244:
	l.j	.L241
	l.movhi	r28, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L248
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L248:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.j	.L250
	l.or	r16, r3, r3
.L251:
	l.addi	r16, r16, 1
.L250:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L251
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L257
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bnf	.L252
	l.ori	r23, r0, 1
	l.j	.L253
	l.or	r23, r11, r11
.L257:
	l.or	r23, r11, r11
.L252:
	l.addi	r16, r16, 1
.L253:
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r19, r21
	l.bnf	.L255
	l.ori	r19, r0, 2
.L262:
	l.sll	r19, r11, r19
	l.add	r19, r19, r11
	l.add	r19, r19, r19
	l.addi	r16, r16, 1
	l.addi	r17, r17, -48
	l.ori	r25, r0, 24
	l.sll	r17, r17, r25
	l.sra	r17, r17, r25
	l.sub	r11, r19, r17
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.sfleu	r19, r21
	l.bf	.L262
	l.ori	r19, r0, 2
.L255:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bf	.L263
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L263:
	l.lwz	r18, 4(r1)
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
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.j	.L265
	l.or	r16, r3, r3
.L266:
	l.addi	r16, r16, 1
.L265:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L266
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L272
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bnf	.L267
	l.ori	r23, r0, 1
	l.j	.L268
	l.or	r23, r11, r11
.L272:
	l.or	r23, r11, r11
.L267:
	l.addi	r16, r16, 1
.L268:
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r19, r21
	l.bnf	.L270
	l.ori	r19, r0, 2
.L277:
	l.sll	r19, r11, r19
	l.add	r19, r19, r11
	l.add	r19, r19, r19
	l.addi	r16, r16, 1
	l.addi	r17, r17, -48
	l.ori	r25, r0, 24
	l.sll	r17, r17, r25
	l.sra	r17, r17, r25
	l.sub	r11, r19, r17
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.sfleu	r19, r21
	l.bf	.L277
	l.ori	r19, r0, 2
.L270:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bf	.L278
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L278:
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.j	.L280
	l.or	r16, r3, r3
.L281:
	l.addi	r16, r16, 1
.L280:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L281
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L282
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bf	.L283
	 l.nop

	l.ori	r11, r0, 1
.L282:
	l.addi	r16, r16, 1
.L283:
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r19, r21
	l.bnf	.L294
	l.movhi	r19, hi(0)
	l.movhi	r12, hi(0)
	l.j	.L284
	l.ori	r25, r0, 9
.L292:
	l.sub	r19, r19, r21
	l.sub	r19, r19, r17
	l.lbs	r17, 0(r16)
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bnf	.L285
	 l.nop

.L284:
	l.ori	r21, r0, 30
	l.srl	r21, r12, r21
	l.ori	r27, r0, 2
	l.sll	r23, r19, r27
	l.or	r23, r21, r23
	l.sll	r21, r12, r27
	l.add	r12, r21, r12
	l.sfltu	r12, r21
	l.bf	.L290
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L290:
	l.add	r23, r23, r19
	l.add	r21, r21, r23
	l.add	r23, r12, r12
	l.sfltu	r23, r12
	l.bf	.L291
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L291:
	l.add	r21, r21, r21
	l.add	r19, r19, r21
	l.addi	r16, r16, 1
	l.addi	r17, r17, -48
	l.ori	r21, r0, 24
	l.sll	r17, r17, r21
	l.sra	r17, r17, r21
	l.ori	r21, r0, 31
	l.sra	r21, r17, r21
	l.sub	r12, r23, r17
	l.sfgtu	r12, r23
	l.bf	.L292
	l.ori	r17, r0, 1
	l.j	.L292
	l.movhi	r17, hi(0)
.L294:
	l.movhi	r12, hi(0)
.L285:
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L296
	l.or	r11, r19, r19
	l.sub	r21, r17, r12
	l.sfne	r17, r12
	l.bnf	.L295
	l.ori	r23, r0, 1
.L289:
	l.sub	r19, r17, r19
	l.sub	r19, r19, r23
	l.or	r12, r21, r21
	l.or	r11, r19, r19
.L296:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L295:
	l.j	.L289
	l.movhi	r23, hi(0)
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
	l.or	r28, r3, r3
	l.or	r24, r4, r4
	l.or	r16, r5, r5
	l.or	r22, r6, r6
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L300
	l.or	r26, r7, r7
	l.j	.L297
	l.movhi	r18, hi(0)
.L302:
	l.or	r16, r20, r20
	l.movhi	r17, hi(0)
.L306:
	l.sfne	r16, r17
	l.bnf	.L305
	l.movhi	r18, hi(0)
.L300:
	l.ori	r17, r0, 1
	l.srl	r20, r16, r17
	l.mul	r18, r20, r22
	l.add	r18, r24, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L302
	l.sfles	r11, r17
	l.bf	.L297
	l.add	r24, r18, r22
	l.addi	r16, r16, -1
	l.j	.L306
	l.sub	r16, r16, r20
.L305:
.L297:
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
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r24, r8, r8
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L310
	l.or	r18, r5, r5
	l.j	.L307
	l.movhi	r16, hi(0)
.L315:
	l.sra	r18, r18, r17
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L314
	l.movhi	r16, hi(0)
.L310:
	l.ori	r17, r0, 1
	l.sra	r16, r18, r17
	l.mul	r16, r16, r20
	l.add	r16, r22, r16
	l.or	r5, r24, r24
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L307
	l.sfles	r11, r17
	l.bf	.L315
	l.ori	r17, r0, 1
	l.add	r22, r16, r20
	l.j	.L315
	l.addi	r18, r18, -1
.L314:
.L307:
	l.or	r11, r16, r16
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
	l.or	r11, r3, r3
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L318
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L321
	l.ori	r17, r0, 1
.L320:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L318:
	l.jr	r9
	 l.nop

.L321:
	l.j	.L320
	l.movhi	r17, hi(0)
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
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
	l.or	r24, r4, r4
	l.or	r22, r5, r5
	l.or	r28, r6, r6
	l.or	r26, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r22, r22
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r28, r28
	l.or	r6, r26, r26
	l.or	r3, r24, r24
	l.jal	__moddi3
	l.or	r4, r22, r22
	l.sw	0(r16), r20
	l.sw	4(r16), r18
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.or	r11, r16, r16
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
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L325
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L325:
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
	l.or	r11, r3, r3
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L328
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L331
	l.ori	r17, r0, 1
.L330:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L328:
	l.jr	r9
	 l.nop

.L331:
	l.j	.L330
	l.movhi	r17, hi(0)
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
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
	l.or	r24, r4, r4
	l.or	r22, r5, r5
	l.or	r28, r6, r6
	l.or	r26, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r22, r22
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r28, r28
	l.or	r6, r26, r26
	l.or	r3, r24, r24
	l.jal	__moddi3
	l.or	r4, r22, r22
	l.sw	0(r16), r20
	l.sw	4(r16), r18
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.or	r11, r16, r16
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
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L334
	l.movhi	r11, hi(0)
	l.sfne	r4, r17
.L341:
	l.bnf	.L340
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 4
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L341
	l.sfne	r4, r17
	l.j	.L334
	l.movhi	r11, hi(0)
.L340:
	l.or	r11, r3, r3
.L334:
	l.jr	r9
	 l.nop

	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfeq	r17, r19
	l.bnf	.L351
	l.sfltu	r17, r19
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
.L352:
	l.bf	.L344
	l.sfne	r19, r21
	l.bnf	.L346
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L352
	l.sfeq	r17, r21
.L344:
	l.sfltu	r17, r19
.L351:
	l.bnf	.L346
	l.xori	r11, r0, -1
.L342:
	l.jr	r9
	 l.nop

.L346:
	l.sfgtu	r17, r19
	l.bf	.L342
	l.ori	r11, r0, 1
	l.j	.L342
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L354:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L354
	l.sw	-4(r17), r19
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L357
	l.or	r11, r3, r3
.L358:
	l.addi	r11, r11, 4
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L358
	 l.nop

.L357:
	l.sub	r11, r11, r3
	l.ori	r17, r0, 2
	l.jr	r9
	l.sra	r11, r11, r17
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L361
	l.movhi	r11, hi(0)
.L362:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L364
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L364
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L362
	l.addi	r4, r4, 4
	l.j	.L361
	l.movhi	r11, hi(0)
.L366:
	l.bf	.L361
	l.ori	r11, r0, 1
	l.j	.L361
	l.movhi	r11, hi(0)
.L364:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bf	.L366
	l.sfgtu	r19, r17
	l.xori	r11, r0, -1
.L361:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L370
	l.movhi	r11, hi(0)
.L371:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bnf	.L376
	l.addi	r5, r5, -1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L371
	l.addi	r3, r3, 4
	l.j	.L370
	l.movhi	r11, hi(0)
.L376:
	l.or	r11, r3, r3
.L370:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L377
	l.movhi	r11, hi(0)
.L378:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L388
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L378
	l.addi	r4, r4, 4
	l.movhi	r11, hi(0)
.L377:
	l.jr	r9
	 l.nop

.L382:
	l.bf	.L377
	l.ori	r11, r0, 1
	l.j	.L377
	l.movhi	r11, hi(0)
.L388:
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bf	.L382
	l.sfgtu	r19, r17
	l.j	.L377
	l.xori	r11, r0, -1
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.or	r11, r3, r3
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L390
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r23, r0, -1
.L391:
	l.addi	r4, r4, 4
	l.addi	r19, r19, 4
	l.lwz	r21, -4(r4)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L391
	l.sw	-4(r19), r21
.L390:
	l.jr	r9
	 l.nop

	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.sfeq	r3, r4
	l.bf	.L394
	l.or	r11, r3, r3
	l.sub	r17, r3, r4
	l.ori	r19, r0, 2
	l.sll	r19, r5, r19
	l.sfltu	r17, r19
	l.bf	.L395
	l.or	r23, r4, r4
	l.addi	r19, r5, -1
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.or	r17, r3, r3
	l.bnf	.L394
	l.xori	r23, r0, -1
.L396:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r21, -4(r4)
	l.addi	r19, r19, -1
	l.sfne	r19, r23
	l.bf	.L396
	l.sw	-4(r17), r21
	l.j	.L394
	 l.nop

.L395:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L394
	l.addi	r19, r5, -1
	l.ori	r17, r0, 2
	l.sll	r19, r19, r17
	l.add	r4, r4, r19
	l.add	r19, r3, r19
.L397:
	l.lwz	r21, 0(r4)
	l.sw	0(r19), r21
	l.addi	r19, r19, -4
	l.sfne	r23, r4
	l.bf	.L397
	l.addi	r4, r4, -4
.L394:
	l.jr	r9
	 l.nop

	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.or	r11, r3, r3
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L403
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L404:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.bf	.L404
	l.sw	-4(r19), r4
.L403:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L407
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L406
	l.add	r4, r4, r5
.L409:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L409
	l.sb	0(r4), r19
.L406:
	l.jr	r9
	 l.nop

.L407:
	l.bf	.L406
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L406
	 l.nop

	l.add	r5, r3, r5
.L410:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r5, r3
	l.bf	.L410
	l.sb	-1(r4), r17
	l.j	.L406
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.addi	r19, r5, -32
	l.sll	r25, r4, r19
	l.ori	r17, r0, 1
	l.srl	r21, r4, r17
	l.ori	r17, r0, 31
	l.sub	r23, r17, r5
	l.srl	r21, r21, r23
	l.sll	r11, r3, r5
	l.or	r11, r21, r11
	l.movhi	r21, hi(0)
	l.sfges	r19, r21
	l.bnf	.L418
	l.sll	r12, r4, r5
	l.or	r11, r25, r25
	l.movhi	r21, hi(0)
.L418:
	l.sfges	r19, r21
	l.bnf	.L415
	 l.nop

	l.movhi	r12, hi(0)
.L415:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r19, r5, -32
	l.srl	r23, r3, r19
	l.ori	r21, r0, 1
	l.sll	r21, r3, r21
	l.sub	r17, r17, r5
	l.sll	r17, r21, r17
	l.srl	r4, r4, r5
	l.or	r4, r17, r4
	l.movhi	r17, hi(0)
	l.sfges	r19, r17
	l.bnf	.L419
	l.srl	r3, r3, r5
	l.or	r4, r23, r23
	l.movhi	r17, hi(0)
.L419:
	l.sfges	r19, r17
	l.bnf	.L417
	 l.nop

	l.movhi	r3, hi(0)
.L417:
	l.or	r11, r3, r11
	l.jr	r9
	l.or	r12, r4, r12
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.addi	r19, r5, -32
	l.srl	r25, r3, r19
	l.ori	r17, r0, 1
	l.sll	r21, r3, r17
	l.ori	r17, r0, 31
	l.sub	r23, r17, r5
	l.sll	r21, r21, r23
	l.srl	r12, r4, r5
	l.or	r12, r21, r12
	l.movhi	r21, hi(0)
	l.sfges	r19, r21
	l.bnf	.L425
	l.srl	r11, r3, r5
	l.or	r12, r25, r25
	l.movhi	r21, hi(0)
.L425:
	l.sfges	r19, r21
	l.bnf	.L422
	 l.nop

	l.movhi	r11, hi(0)
.L422:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r19, r5, -32
	l.sll	r23, r4, r19
	l.ori	r21, r0, 1
	l.srl	r21, r4, r21
	l.sub	r17, r17, r5
	l.srl	r17, r21, r17
	l.sll	r3, r3, r5
	l.or	r3, r17, r3
	l.movhi	r17, hi(0)
	l.sfges	r19, r17
	l.bnf	.L426
	l.sll	r4, r4, r5
	l.or	r3, r23, r23
	l.movhi	r17, hi(0)
.L426:
	l.sfges	r19, r17
	l.bnf	.L424
	 l.nop

	l.movhi	r4, hi(0)
.L424:
	l.or	r11, r3, r11
	l.jr	r9
	l.or	r12, r4, r12
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
	l.andi	r4, r4, 15
	l.sll	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 15
	l.srl	r3, r3, r4
	l.jr	r9
	l.or	r11, r11, r3
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.andi	r3, r3, 0xffff
	l.andi	r4, r4, 15
	l.srl	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 15
	l.sll	r3, r3, r4
	l.jr	r9
	l.or	r11, r11, r3
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.andi	r3, r3, 0xff
	l.andi	r4, r4, 7
	l.sll	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 7
	l.srl	r3, r3, r4
	l.jr	r9
	l.or	r11, r11, r3
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.andi	r3, r3, 0xff
	l.andi	r4, r4, 7
	l.srl	r11, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 7
	l.sll	r3, r3, r4
	l.jr	r9
	l.or	r11, r11, r3
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.andi	r11, r3, 65280
	l.ori	r17, r0, 8
	l.srl	r11, r11, r17
	l.sll	r3, r3, r17
	l.andi	r3, r3, 65280
	l.jr	r9
	l.or	r11, r11, r3
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
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
	l.or	r17, r17, r3
	l.jr	r9
	l.or	r11, r11, r17
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.ori	r23, r0, 24
	l.srl	r27, r3, r23
	l.ori	r19, r0, 8
	l.srl	r21, r3, r19
	l.andi	r21, r21, 65280
	l.sll	r17, r3, r19
	l.srl	r12, r4, r23
	l.or	r12, r17, r12
	l.movhi	r25, hi(16711680)
	l.and	r12, r12, r25
	l.sll	r3, r3, r23
	l.or	r29, r19, r19
	l.srl	r17, r4, r19
	l.or	r17, r3, r17
	l.movhi	r19, hi(-16777216)
	l.and	r17, r17, r19
	l.or	r19, r29, r29
	l.sll	r11, r4, r29
	l.or	r29, r23, r23
	l.srl	r23, r4, r23
	l.srl	r19, r4, r19
	l.sll	r4, r4, r29
	l.andi	r19, r19, 65280
	l.and	r11, r11, r25
	l.or	r21, r21, r27
	l.or	r12, r12, r21
	l.or	r21, r23, r4
	l.or	r19, r19, r21
	l.or	r11, r11, r19
	l.jr	r9
	l.or	r12, r17, r12
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 32
	l.srl	r17, r3, r11
.L444:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L443
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L444
	l.srl	r17, r3, r11
	l.j	.L438
	l.movhi	r11, hi(0)
.L443:
	l.addi	r11, r11, 1
.L438:
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L450
	l.or	r11, r3, r3
	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L445
	l.ori	r17, r0, 1
	l.ori	r11, r0, 1
.L451:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L451
	l.ori	r17, r0, 1
.L445:
.L450:
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
	l.bf	.L452
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L452
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L452:
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
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.movhi	r17, ha(.LC4)
	l.addi	r19, r17, lo(.LC4)
	l.lwz	r5, lo(.LC4)(r17)
	l.jal	__ltdf2
	l.lwz	r6, 4(r19)
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L458
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L458
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L458:
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
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.movhi	r17, ha(.LC6)
	l.addi	r19, r17, lo(.LC6)
	l.lwz	r5, lo(.LC6)(r17)
	l.jal	__ltdf2
	l.lwz	r6, 4(r19)
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L464
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L464
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L464:
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
	l.sw	0(r16), r11
	l.sw	4(r16), r12
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC8:
	.long	1073741824
	.align 4
.LC9:
	.long	1056964608
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
	l.bf	.L473
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L473
	l.sfges	r16, r18
	l.bnf	.L481
	l.movhi	r17, ha(.LC8)
	l.j	.L477
	l.lwz	r18, lo(.LC8)(r17)
.L481:
	l.movhi	r17, ha(.LC9)
	l.j	.L477
	l.lwz	r18, lo(.LC9)(r17)
.L476:
	l.ori	r17, r0, 31
.L482:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L473
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L477:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L482
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L476
	l.or	r20, r11, r11
.L473:
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
	.long	1073741824
	.long	0
	.align 4
.LC11:
	.long	1071644672
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
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L484
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r24, r24
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r11, r11
	l.jal	__nedf2
	l.or	r4, r12, r12
	l.sfne	r11, r18
	l.bnf	.L484
	l.sfges	r16, r18
	l.bnf	.L492
	l.movhi	r17, ha(.LC10)
	l.addi	r19, r17, lo(.LC10)
	l.lwz	r20, lo(.LC10)(r17)
	l.j	.L488
	l.lwz	r18, 4(r19)
.L492:
	l.movhi	r17, ha(.LC11)
	l.addi	r19, r17, lo(.LC11)
	l.lwz	r20, lo(.LC11)(r17)
	l.j	.L488
	l.lwz	r18, 4(r19)
.L487:
	l.ori	r17, r0, 31
.L493:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L484
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L488:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L493
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L487
	l.or	r22, r12, r12
.L484:
	l.or	r11, r24, r24
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
	.long	1073741824
	.long	0
	.align 4
.LC13:
	.long	1071644672
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
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L495
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r24, r24
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r11, r11
	l.jal	__nedf2
	l.or	r4, r12, r12
	l.sfne	r11, r18
	l.bnf	.L495
	l.sfges	r16, r18
	l.bnf	.L503
	l.movhi	r17, ha(.LC12)
	l.addi	r19, r17, lo(.LC12)
	l.lwz	r20, lo(.LC12)(r17)
	l.j	.L499
	l.lwz	r18, 4(r19)
.L503:
	l.movhi	r17, ha(.LC13)
	l.addi	r19, r17, lo(.LC13)
	l.lwz	r20, lo(.LC13)(r17)
	l.j	.L499
	l.lwz	r18, 4(r19)
.L498:
	l.ori	r17, r0, 31
.L504:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L495
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L499:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L504
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L498
	l.or	r22, r12, r12
.L495:
	l.or	r11, r24, r24
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
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L506
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L507:
	l.addi	r4, r4, 1
	l.lbs	r21, -1(r4)
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r17)
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.bf	.L507
	l.sb	-1(r17), r19
.L506:
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
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bnf	.L511
	l.add	r11, r20, r11
.L510:
	l.lbs	r17, 0(r18)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L513
	l.sb	0(r11), r17
	l.addi	r18, r18, 1
	l.addi	r16, r16, -1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L510
	l.addi	r11, r11, 1
.L511:
	l.sb	0(r11), r0
.L513:
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
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L523
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L525:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L524
	 l.nop

.L516:
	l.jr	r9
	 l.nop

.L523:
	l.j	.L516
	l.or	r11, r4, r4
.L524:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L525
	l.add	r17, r3, r11
	l.j	.L516
	l.or	r11, r4, r4
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.lbs	r21, 0(r3)
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bnf	.L533
	l.or	r11, r3, r3
.L527:
	l.or	r17, r4, r4
.L530:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bnf	.L534
	l.sfeq	r19, r21
	l.bnf	.L530
	l.addi	r17, r17, 1
.L528:
	l.jr	r9
	 l.nop

.L533:
	l.j	.L528
	l.movhi	r11, hi(0)
.L534:
	l.addi	r11, r11, 1
	l.lbs	r21, 0(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L527
	 l.nop

	l.j	.L528
	l.movhi	r11, hi(0)
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.j	.L537
	l.movhi	r11, hi(0)
.L540:
	l.movhi	r19, hi(0)
.L542:
	l.sfne	r17, r19
	l.bnf	.L541
	l.addi	r3, r3, 1
.L537:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.bnf	.L542
	l.movhi	r19, hi(0)
	l.j	.L540
	l.or	r11, r3, r3
.L541:
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
	l.bf	.L543
	l.or	r20, r11, r11
	l.lbs	r22, 0(r18)
.L545:
	l.or	r4, r22, r22
	l.jal	strchr
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L543
	l.or	r16, r11, r11
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.jal	strncmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L549
	l.or	r11, r16, r16
	l.j	.L545
	l.addi	r16, r16, 1
.L543:
	l.or	r11, r16, r16
.L549:
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
	l.or	r22, r5, r5
	l.or	r20, r6, r6
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L561
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
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L562
	l.movhi	r17, hi(-2147483648)
.L554:
	l.or	r11, r16, r16
.L563:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L561:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L563
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L562:
	l.j	.L554
	l.xor	r16, r16, r17
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
	l.sub	r18, r4, r6
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L568
	l.add	r18, r3, r18
	l.sfltu	r4, r6
	l.bf	.L569
	l.sfgtu	r3, r18
	l.bf	.L570
	l.addi	r24, r5, 1
	l.lbs	r22, 0(r5)
	l.j	.L567
	l.addi	r20, r6, -1
.L566:
	l.addi	r16, r16, 1
.L575:
	l.sfgeu	r18, r16
	l.bnf	.L574
	l.movhi	r11, hi(0)
.L567:
	l.lbs	r17, 0(r16)
	l.sfne	r17, r22
	l.bf	.L566
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memcmp
	l.addi	r3, r16, 1
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L575
	l.addi	r16, r16, 1
	l.addi	r16, r16, -1
	l.or	r11, r16, r16
.L574:
.L564:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L568:
	l.j	.L564
	l.or	r11, r3, r3
.L569:
	l.j	.L564
	l.movhi	r11, hi(0)
.L570:
	l.j	.L564
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
	l.or	r16, r3, r3
	l.or	r14, r4, r4
	l.or	r28, r5, r5
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L603
	l.movhi	r17, hi(-2147483648)
	l.movhi	r30, hi(0)
.L579:
	l.movhi	r17, ha(.LC16)
	l.addi	r19, r17, lo(.LC16)
	l.lwz	r5, lo(.LC16)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r14, r14
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L599
	l.movhi	r18, hi(0)
	l.movhi	r17, ha(.LC17)
	l.lwz	r26, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r24, 4(r17)
	l.movhi	r17, ha(.LC16)
	l.addi	r17, r17, lo(.LC16)
	l.lwz	r22, 0(r17)
	l.lwz	r20, 4(r17)
.L583:
	l.addi	r18, r18, 1
	l.or	r5, r26, r26
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r14, r14
	l.or	r3, r11, r11
	l.or	r4, r12, r12
	l.or	r16, r3, r3
	l.or	r14, r12, r12
	l.or	r5, r22, r22
	l.jal	__gedf2
	l.or	r6, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L583
	 l.nop

.L584:
.L605:
	l.movhi	r17, hi(0)
	l.sfeq	r30, r17
.L604:
	l.bf	.L588
	l.sw	0(r28), r18
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r16, r17
.L588:
	l.or	r11, r16, r16
	l.or	r12, r14, r14
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
.L603:
	l.xor	r16, r16, r17
	l.j	.L579
	l.ori	r30, r0, 1
.L599:
	l.movhi	r17, ha(.LC17)
	l.addi	r19, r17, lo(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r14, r14
	l.movhi	r18, hi(0)
	l.sflts	r11, r18
	l.bnf	.L605
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r14, r14
	l.sfne	r11, r18
	l.bnf	.L601
	l.movhi	r17, ha(.LC17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r22, 0(r17)
	l.lwz	r20, 4(r17)
.L587:
	l.addi	r18, r18, -1
	l.or	r5, r16, r16
	l.or	r6, r14, r14
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r14, r14
	l.or	r3, r11, r11
	l.or	r4, r12, r12
	l.or	r16, r3, r3
	l.or	r14, r12, r12
	l.or	r5, r22, r22
	l.jal	__ltdf2
	l.or	r6, r20, r20
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L587
	l.sfeq	r30, r17
	l.j	.L604
	 l.nop

.L601:
	l.j	.L584
	l.movhi	r18, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r23, r4, r4
	l.or	r4, r4, r3
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L610
	l.or	r21, r3, r3
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.j	.L609
	l.movhi	r25, hi(0)
.L615:
	l.j	.L612
	l.movhi	r19, hi(0)
.L614:
	l.add	r5, r5, r5
	l.add	r5, r19, r5
	l.or	r6, r17, r17
	l.ori	r17, r0, 31
	l.sll	r19, r21, r17
	l.ori	r27, r0, 1
	l.srl	r17, r23, r27
	l.or	r17, r19, r17
	l.srl	r21, r21, r27
	l.or	r23, r17, r17
	l.or	r17, r21, r17
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L606
	 l.nop

.L609:
	l.andi	r19, r23, 1
	l.sub	r17, r25, r19
	l.sfne	r25, r19
	l.bnf	.L615
	l.ori	r19, r0, 1
.L612:
	l.sub	r19, r25, r19
	l.and	r19, r19, r5
	l.and	r17, r17, r6
	l.add	r17, r12, r17
	l.sfltu	r17, r12
	l.bf	.L613
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L613:
	l.add	r11, r11, r19
	l.add	r11, r27, r11
	l.or	r12, r17, r17
	l.add	r17, r6, r6
	l.sfltu	r17, r6
	l.bf	.L614
	l.ori	r19, r0, 1
	l.j	.L614
	l.movhi	r19, hi(0)
.L610:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
.L606:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bnf	.L624
	l.ori	r17, r0, 1
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
.L632:
	l.bnf	.L624
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L619
	l.add	r17, r17, r17
	l.addi	r11, r11, -1
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bnf	.L632
	l.sfges	r4, r19
.L620:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L630
	 l.nop

	l.or	r11, r3, r3
.L630:
	l.jr	r9
	 l.nop

.L633:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L620
	 l.nop

.L623:
	l.sfltu	r3, r4
	l.bf	.L633
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L633
	l.or	r11, r11, r17
.L619:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L631
	 l.nop

.L624:
	l.j	.L623
	l.movhi	r11, hi(0)
.L631:
	l.j	.L620
	l.or	r11, r17, r17
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.ori	r21, r0, 24
	l.sll	r17, r3, r21
	l.sra	r17, r17, r21
	l.ori	r19, r0, 7
	l.sra	r19, r17, r19
	l.sll	r19, r19, r21
	l.sra	r19, r19, r21
	l.sfeq	r17, r19
	l.bf	.L636
	l.xor	r3, r17, r19
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.ori	r17, r0, 8
	l.jal	__clzsi2
	l.sll	r3, r3, r17
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L636:
	l.jr	r9
	l.ori	r11, r0, 7
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.or	r17, r3, r3
	l.or	r21, r4, r4
	l.ori	r19, r0, 31
	l.sra	r19, r3, r19
	l.xor	r3, r3, r19
	l.sfne	r17, r19
	l.bnf	.L650
	l.xor	r4, r4, r19
.L645:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L650:
	l.sfne	r21, r19
	l.bf	.L645
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 63
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L656
	l.or	r11, r3, r3
	l.movhi	r11, hi(0)
.L653:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L653
	l.add	r4, r4, r4
.L651:
.L656:
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.ori	r17, r0, 3
	l.srl	r25, r5, r17
	l.xori	r27, r0, -8
	l.sfgeu	r3, r4
	l.bf	.L658
	l.and	r27, r5, r27
	l.movhi	r17, hi(0)
.L670:
	l.sfne	r25, r17
	l.bnf	.L660
	l.ori	r21, r0, 3
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r25, r25, r21
	l.add	r25, r4, r25
.L664:
	l.lwz	r21, 4(r17)
	l.lwz	r23, 0(r17)
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.addi	r17, r17, 8
	l.sfne	r17, r25
	l.bf	.L664
	l.addi	r19, r19, 8
.L660:
	l.sfleu	r5, r27
	l.bf	.L657
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r5, r5, r4
.L665:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r5
	l.bf	.L665
	l.addi	r3, r3, 1
.L657:
	l.jr	r9
	 l.nop

.L658:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L670
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L657
	l.xori	r23, r0, -1
.L662:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L662
	l.sb	0(r19), r21
	l.j	.L657
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfgeu	r3, r4
	l.bf	.L672
	l.srl	r23, r5, r17
	l.movhi	r17, hi(0)
.L682:
	l.sfne	r23, r17
	l.bnf	.L674
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.add	r23, r4, r23
.L678:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.sfne	r17, r23
	l.bf	.L678
	l.addi	r19, r19, 2
.L674:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L671
	l.addi	r5, r5, -1
	l.add	r4, r4, r5
	l.add	r3, r3, r5
	l.lbs	r17, 0(r4)
	l.sb	0(r3), r17
.L671:
	l.jr	r9
	 l.nop

.L672:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L682
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L671
	l.xori	r23, r0, -1
.L676:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L676
	l.sb	0(r19), r21
	l.j	.L671
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.ori	r17, r0, 2
	l.srl	r23, r5, r17
	l.xori	r25, r0, -4
	l.sfgeu	r3, r4
	l.bf	.L684
	l.and	r25, r5, r25
	l.movhi	r17, hi(0)
.L696:
	l.sfne	r23, r17
	l.bnf	.L686
	l.ori	r21, r0, 2
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r23, r23, r21
	l.add	r23, r4, r23
.L690:
	l.lwz	r21, 0(r17)
	l.sw	0(r19), r21
	l.addi	r17, r17, 4
	l.sfne	r17, r23
	l.bf	.L690
	l.addi	r19, r19, 4
.L686:
	l.sfleu	r5, r25
	l.bf	.L683
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r5, r5, r4
.L691:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r5
	l.bf	.L691
	l.addi	r3, r3, 1
.L683:
	l.jr	r9
	 l.nop

.L684:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L696
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L683
	l.xori	r23, r0, -1
.L688:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L688
	l.sb	0(r19), r21
	l.j	.L683
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
	l.ori	r19, r0, 15
	l.ori	r21, r0, 16
	l.sub	r17, r19, r11
.L711:
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L707
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r21
	l.bf	.L711
	l.sub	r17, r19, r11
.L707:
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
	l.sra	r17, r3, r11
.L716:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L712
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L716
	l.sra	r17, r3, r11
.L712:
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
	l.bf	.L724
	l.movhi	r17, ha(.LC18)
	l.jal	__fixsfsi
	l.or	r3, r16, r16
.L717:
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L724:
	l.lwz	r4, lo(.LC18)(r17)
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L717
	l.add	r11, r11, r17
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.movhi	r17, hi(0)
	l.ori	r21, r0, 16
.L726:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L726
	l.add	r11, r11, r19
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
	l.ori	r21, r0, 16
.L729:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L729
	l.add	r11, r11, r19
	l.jr	r9
	 l.nop

	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L736
	l.or	r11, r3, r3
	l.movhi	r11, hi(0)
.L733:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L733
	l.add	r4, r4, r4
.L731:
.L736:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L740
	l.sfeq	r4, r17
	l.bf	.L743
	l.or	r11, r4, r4
	l.movhi	r11, hi(0)
.L739:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L739
	l.add	r3, r3, r3
.L737:
.L743:
	l.jr	r9
	 l.nop

.L740:
	l.j	.L737
	l.or	r11, r3, r3
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bnf	.L752
	l.ori	r17, r0, 1
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
.L760:
	l.bnf	.L752
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L747
	l.add	r17, r17, r17
	l.addi	r11, r11, -1
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bnf	.L760
	l.sfges	r4, r19
.L748:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L758
	 l.nop

	l.or	r11, r3, r3
.L758:
	l.jr	r9
	 l.nop

.L761:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L748
	 l.nop

.L751:
	l.sfltu	r3, r4
	l.bf	.L761
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L761
	l.or	r11, r11, r17
.L747:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L759
	 l.nop

.L752:
	l.j	.L751
	l.movhi	r11, hi(0)
.L759:
	l.j	.L748
	l.or	r11, r17, r17
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
	l.bf	.L765
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L762
	l.ori	r11, r0, 1
	l.j	.L762
	l.movhi	r11, hi(0)
.L765:
	l.xori	r11, r0, -1
.L762:
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
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.or	r22, r5, r5
	l.jal	__ltdf2
	l.or	r20, r6, r6
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L771
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L768
	l.ori	r11, r0, 1
	l.j	.L768
	l.movhi	r11, hi(0)
.L771:
	l.xori	r11, r0, -1
.L768:
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
	l.or	r17, r3, r3
	l.or	r6, r4, r4
	l.ori	r19, r0, 31
	l.sra	r5, r4, r19
	l.sra	r3, r3, r19
	l.jal	__muldi3
	l.or	r4, r17, r17
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
	l.or	r17, r3, r3
	l.or	r6, r4, r4
	l.movhi	r5, hi(0)
	l.movhi	r3, hi(0)
	l.jal	__muldi3
	l.or	r4, r17, r17
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
	l.bnf	.L786
	l.sfne	r4, r17
	l.bnf	.L787
	l.movhi	r21, hi(0)
.L783:
	l.ori	r19, r0, 32
	l.movhi	r11, hi(0)
	l.andi	r17, r4, 1
.L788:
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.sra	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L789
	l.add	r3, r3, r3
	l.addi	r19, r19, -1
	l.andi	r19, r19, 0xff
	l.sfne	r19, r17
	l.bf	.L788
	l.andi	r17, r4, 1
	l.movhi	r17, hi(0)
.L789:
	l.sfeq	r21, r17
	l.bf	.L778
	 l.nop

	l.sub	r11, r0, r11
.L778:
	l.jr	r9
	 l.nop

.L786:
	l.sub	r4, r0, r4
	l.j	.L783
	l.ori	r21, r0, 1
.L787:
	l.j	.L778
	l.or	r11, r4, r4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -4
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L799
	l.sw	0(r1), r9
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L800
	 l.nop

	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.j	.L802
	l.lwz	r9, 0(r1)
.L799:
	l.sflts	r4, r17
	l.bf	.L801
	l.sub	r3, r0, r3
	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.sub	r11, r0, r11
.L803:
	l.lwz	r9, 0(r1)
.L802:
.L804:
	l.jr	r9
	l.addi	r1, r1, 4
.L800:
	l.movhi	r5, hi(0)
	l.jal	__udivmodsi4
	l.sub	r4, r0, r4
	l.j	.L803
	l.sub	r11, r0, r11
.L801:
	l.movhi	r5, hi(0)
	l.jal	__udivmodsi4
	l.sub	r4, r0, r4
	l.j	.L804
	l.lwz	r9, 0(r1)
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -4
	l.movhi	r19, hi(0)
	l.sfges	r3, r19
	l.bnf	.L811
	l.sw	0(r1), r9
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L808
	 l.nop

	l.sub	r4, r0, r4
.L808:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.j	.L812
	l.lwz	r9, 0(r1)
.L811:
	l.sfges	r4, r19
	l.bf	.L807
	l.sub	r3, r0, r3
	l.sub	r4, r0, r4
.L807:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.sub	r11, r0, r11
	l.lwz	r9, 0(r1)
.L812:
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.ori	r19, r0, 16
	l.bnf	.L821
	l.ori	r17, r0, 1
	l.ori	r21, r0, 16
.L828:
	l.sll	r21, r4, r21
	l.movhi	r23, hi(0)
	l.sfges	r21, r23
	l.bnf	.L821
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.sfleu	r11, r4
	l.bf	.L816
	l.andi	r17, r17, 0xffff
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L828
	l.ori	r21, r0, 16
	l.movhi	r19, hi(0)
.L817:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L827
	 l.nop

	l.or	r11, r19, r19
.L827:
	l.jr	r9
	 l.nop

.L829:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L817
	 l.nop

.L820:
	l.sfltu	r11, r4
	l.bf	.L829
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.or	r19, r17, r19
	l.j	.L829
	l.andi	r19, r19, 0xffff
.L816:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L817
	l.or	r19, r17, r17
.L821:
	l.j	.L820
	l.movhi	r19, hi(0)
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bnf	.L838
	l.ori	r17, r0, 1
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
.L846:
	l.bnf	.L838
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L833
	l.add	r17, r17, r17
	l.addi	r11, r11, -1
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bnf	.L846
	l.sfges	r4, r19
.L834:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L844
	 l.nop

	l.or	r11, r3, r3
.L844:
	l.jr	r9
	 l.nop

.L847:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L834
	 l.nop

.L837:
	l.sfltu	r3, r4
	l.bf	.L847
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L847
	l.or	r11, r11, r17
.L833:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L845
	 l.nop

.L838:
	l.j	.L837
	l.movhi	r11, hi(0)
.L845:
	l.j	.L834
	l.or	r11, r17, r17
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L849
	l.movhi	r17, hi(0)
	l.movhi	r12, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
.L851:
	l.jr	r9
	 l.nop

.L849:
	l.sfeq	r5, r17
	l.bf	.L852
	l.ori	r17, r0, 32
	l.sll	r12, r4, r5
	l.sll	r11, r3, r5
	l.sub	r17, r17, r5
	l.srl	r4, r4, r17
	l.j	.L851
	l.or	r11, r11, r4
.L852:
	l.or	r11, r3, r3
	l.j	.L851
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L854
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.addi	r5, r5, -32
	l.sra	r12, r3, r5
.L856:
	l.jr	r9
	 l.nop

.L854:
	l.sfeq	r5, r17
	l.bf	.L857
	l.ori	r17, r0, 32
	l.sra	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L856
	l.or	r12, r3, r12
.L857:
	l.or	r11, r3, r3
	l.j	.L856
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.ori	r23, r0, 24
	l.srl	r27, r3, r23
	l.ori	r19, r0, 8
	l.srl	r21, r3, r19
	l.andi	r21, r21, 65280
	l.sll	r17, r3, r19
	l.srl	r12, r4, r23
	l.or	r12, r17, r12
	l.movhi	r25, hi(16711680)
	l.and	r12, r12, r25
	l.sll	r3, r3, r23
	l.or	r29, r19, r19
	l.srl	r17, r4, r19
	l.or	r17, r3, r17
	l.movhi	r19, hi(-16777216)
	l.and	r17, r17, r19
	l.or	r19, r29, r29
	l.sll	r11, r4, r29
	l.or	r29, r23, r23
	l.srl	r23, r4, r23
	l.srl	r19, r4, r19
	l.sll	r4, r4, r29
	l.andi	r19, r19, 65280
	l.and	r11, r11, r25
	l.or	r21, r21, r27
	l.or	r12, r12, r21
	l.or	r21, r23, r4
	l.or	r19, r19, r21
	l.or	r11, r11, r19
	l.jr	r9
	l.or	r12, r17, r12
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
	l.or	r19, r19, r3
	l.or	r17, r17, r19
	l.jr	r9
	l.or	r11, r11, r17
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.ori	r17, r0, 65535
	l.sfleu	r3, r17
	l.bf	.L862
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L862:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r21
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r25, hi(0)
	l.sfeq	r19, r25
	l.bf	.L863
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L863:
	l.ori	r23, r0, 3
	l.sll	r19, r19, r23
	l.ori	r23, r0, 8
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r21, r19, r21
	l.andi	r19, r17, 240
	l.sfeq	r19, r25
	l.bf	.L864
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L864:
	l.ori	r23, r0, 2
	l.sll	r19, r19, r23
	l.ori	r23, r0, 4
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r19, r19, r21
	l.andi	r21, r17, 12
	l.sfeq	r21, r25
	l.bf	.L865
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L865:
	l.add	r11, r11, r11
	l.ori	r21, r0, 2
	l.sub	r23, r21, r11
	l.srl	r17, r17, r23
	l.add	r11, r11, r19
	l.and	r23, r17, r21
	l.sfeq	r23, r25
	l.bf	.L861
	l.sub	r21, r21, r17
	l.movhi	r21, hi(0)
.L861:
	l.jr	r9
	l.add	r11, r21, r11
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sfgts	r5, r3
	l.bf	.L868
	l.sflts	r5, r3
	l.bf	.L869
	l.sfltu	r4, r6
	l.bf	.L870
	l.sfgtu	r4, r6
	l.bf	.L871
	 l.nop

	l.j	.L866
	l.ori	r11, r0, 1
.L868:
	l.movhi	r11, hi(0)
.L866:
	l.jr	r9
	 l.nop

.L869:
	l.j	.L866
	l.ori	r11, r0, 2
.L870:
	l.j	.L866
	l.movhi	r11, hi(0)
.L871:
	l.j	.L866
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
	l.movhi	r23, hi(0)
	l.sfeq	r17, r23
	l.bf	.L875
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L875:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.srl	r17, r3, r21
	l.andi	r19, r17, 255
	l.sfeq	r19, r23
	l.bf	.L876
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L876:
	l.ori	r25, r0, 3
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r21, r19, r21
	l.andi	r19, r17, 15
	l.sfeq	r19, r23
	l.bf	.L877
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L877:
	l.ori	r25, r0, 2
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r19, r19, r21
	l.andi	r21, r17, 3
	l.sfeq	r21, r23
	l.bf	.L878
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L878:
	l.add	r11, r11, r11
	l.srl	r17, r17, r11
	l.andi	r17, r17, 3
	l.add	r11, r11, r19
	l.xori	r19, r17, -1
	l.andi	r19, r19, 1
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.sub	r21, r25, r17
	l.sub	r17, r0, r19
	l.and	r17, r17, r21
	l.jr	r9
	l.add	r11, r17, r11
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L880
	l.movhi	r17, hi(0)
	l.movhi	r11, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
.L882:
	l.jr	r9
	 l.nop

.L880:
	l.sfeq	r5, r17
	l.bf	.L883
	l.ori	r17, r0, 32
	l.srl	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L882
	l.or	r12, r3, r12
.L883:
	l.or	r11, r3, r3
	l.j	.L882
	l.or	r12, r4, r4
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.andi	r17, r3, 65535
	l.andi	r19, r4, 65535
	l.mul	r12, r17, r19
	l.ori	r23, r0, 16
	l.srl	r21, r12, r23
	l.srl	r3, r3, r23
	l.mul	r19, r19, r3
	l.add	r19, r19, r21
	l.srl	r11, r19, r23
	l.andi	r19, r19, 0xffff
	l.andi	r12, r12, 0xffff
	l.srl	r4, r4, r23
	l.mul	r17, r17, r4
	l.add	r17, r17, r19
	l.sll	r19, r17, r23
	l.srl	r17, r17, r23
	l.mul	r3, r3, r4
	l.add	r11, r11, r3
	l.add	r11, r17, r11
	l.jr	r9
	l.add	r12, r12, r19
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r18, r5, r5
	l.or	r22, r6, r6
	l.or	r4, r6, r6
	l.jal	__muldsi3
	l.or	r3, r20, r20
	l.mul	r16, r16, r22
	l.mul	r18, r18, r20
	l.add	r16, r16, r18
	l.add	r11, r11, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.movhi	r17, hi(0)
	l.sub	r12, r17, r4
	l.sfne	r17, r4
	l.bnf	.L889
	l.ori	r11, r0, 1
.L888:
	l.sub	r17, r17, r3
	l.jr	r9
	l.sub	r11, r17, r11
.L889:
	l.j	.L888
	l.movhi	r11, hi(0)
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.xor	r3, r3, r4
	l.ori	r17, r0, 16
	l.srl	r17, r3, r17
	l.xor	r17, r17, r3
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.xor	r19, r19, r17
	l.ori	r17, r0, 4
	l.srl	r17, r19, r17
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
	l.xor	r17, r17, r3
	l.ori	r19, r0, 8
	l.srl	r3, r17, r19
	l.xor	r3, r3, r17
	l.ori	r17, r0, 4
	l.srl	r17, r3, r17
	l.xor	r17, r17, r3
	l.andi	r17, r17, 15
	l.ori	r11, r0, 27030
	l.sra	r11, r11, r17
	l.jr	r9
	l.andi	r11, r11, 1
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.ori	r17, r0, 31
	l.sll	r19, r3, r17
	l.ori	r21, r0, 1
	l.srl	r17, r4, r21
	l.or	r17, r19, r17
	l.srl	r21, r3, r21
	l.movhi	r19, hi(1431633920)
	l.ori	r19, r19, 21845
	l.and	r21, r21, r19
	l.and	r17, r17, r19
	l.sub	r17, r4, r17
	l.sfgtu	r17, r4
	l.bf	.L893
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L893:
	l.sub	r3, r3, r21
	l.sub	r3, r3, r19
	l.ori	r19, r0, 30
	l.sll	r21, r3, r19
	l.ori	r23, r0, 2
	l.srl	r19, r17, r23
	l.or	r19, r21, r19
	l.srl	r23, r3, r23
	l.movhi	r21, hi(858980352)
	l.ori	r21, r21, 13107
	l.and	r23, r23, r21
	l.and	r19, r19, r21
	l.and	r3, r3, r21
	l.and	r17, r17, r21
	l.add	r17, r19, r17
	l.sfltu	r17, r19
	l.bf	.L894
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L894:
	l.add	r19, r23, r3
	l.add	r21, r21, r19
	l.ori	r19, r0, 28
	l.sll	r23, r21, r19
	l.ori	r25, r0, 4
	l.srl	r19, r17, r25
	l.or	r19, r23, r19
	l.srl	r23, r21, r25
	l.add	r17, r19, r17
	l.sfltu	r17, r19
	l.bf	.L895
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L895:
	l.add	r21, r23, r21
	l.add	r19, r19, r21
	l.movhi	r21, hi(252641280)
	l.ori	r21, r21, 3855
	l.and	r19, r19, r21
	l.and	r17, r17, r21
	l.add	r17, r17, r19
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.ori	r19, r0, 8
	l.srl	r11, r17, r19
	l.add	r11, r11, r17
	l.jr	r9
	l.andi	r11, r11, 127
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
	l.add	r19, r19, r3
	l.ori	r17, r0, 4
	l.srl	r17, r19, r17
	l.add	r17, r17, r19
	l.movhi	r19, hi(252641280)
	l.ori	r19, r19, 3855
	l.and	r17, r17, r19
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.ori	r19, r0, 8
	l.srl	r11, r17, r19
	l.add	r11, r11, r17
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
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.or	r26, r5, r5
	l.or	r20, r5, r5
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.lwz	r24, lo(.LC19)(r17)
	l.j	.L900
	l.lwz	r22, 4(r19)
.L898:
	l.ori	r17, r0, 31
.L904:
	l.srl	r17, r20, r17
	l.add	r17, r17, r20
	l.ori	r19, r0, 1
	l.sra	r20, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r20, r17
	l.bf	.L905
	l.or	r5, r18, r18
	l.or	r6, r16, r16
	l.or	r3, r18, r18
	l.jal	__muldf3
	l.or	r4, r16, r16
	l.or	r18, r11, r11
	l.or	r16, r12, r12
.L900:
	l.andi	r17, r20, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L904
	l.ori	r17, r0, 31
	l.or	r5, r18, r18
	l.or	r6, r16, r16
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L898
	l.or	r22, r12, r12
.L905:
	l.sfges	r26, r17
	l.bnf	.L903
	l.movhi	r17, ha(.LC19)
.L897:
	l.or	r11, r24, r24
	l.or	r12, r22, r22
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L903:
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.jal	__divdf3
	l.lwz	r4, 4(r17)
	l.or	r24, r11, r11
	l.j	.L897
	l.or	r22, r12, r12
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
	l.or	r22, r4, r4
	l.or	r16, r4, r4
	l.movhi	r17, ha(.LC20)
	l.j	.L909
	l.lwz	r20, lo(.LC20)(r17)
.L907:
	l.ori	r17, r0, 31
.L913:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L914
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L909:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L913
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L907
	l.or	r20, r11, r11
.L914:
	l.sfges	r22, r17
	l.bnf	.L912
	l.or	r4, r20, r20
.L906:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L912:
	l.movhi	r17, ha(.LC20)
	l.jal	__divsf3
	l.lwz	r3, lo(.LC20)(r17)
	l.j	.L906
	l.or	r20, r11, r11
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.sfgtu	r5, r3
	l.bf	.L917
	l.sfltu	r5, r3
	l.bf	.L918
	l.sfltu	r4, r6
	l.bf	.L919
	l.sfgtu	r4, r6
	l.bf	.L920
	 l.nop

	l.j	.L915
	l.ori	r11, r0, 1
.L917:
	l.movhi	r11, hi(0)
.L915:
	l.jr	r9
	 l.nop

.L918:
	l.j	.L915
	l.ori	r11, r0, 2
.L919:
	l.j	.L915
	l.movhi	r11, hi(0)
.L920:
	l.j	.L915
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
