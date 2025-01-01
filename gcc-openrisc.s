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
	l.sfne	r17, r5
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
	l.sfne	r5, r17
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
	l.sfne	r4, r17
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
	l.sfne	r17, r5
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
	l.sfeq	r4, r17
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
	l.sfne	r17, r5
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
	l.lbz	r17, 0(r3)
	l.sfne	r4, r17
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
	l.sfeq	r4, r17
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
	l.lbs	r19, 0(r3)
	l.lbs	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L63
	 l.nop

.L62:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L63
	 l.nop

	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r19, 0(r3)
	l.lbs	r17, 0(r4)
	l.sfne	r19, r17
	l.bnf	.L62
	 l.nop

.L63:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.jr	r9
	l.sub	r11, r11, r17
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L71
	l.or	r11, r3, r3
.L68:
	l.addi	r11, r11, 1
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L68
	 l.nop

.L67:
.L71:
	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L77
	l.addi	r21, r5, -1
	l.lbz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L74
	l.add	r21, r3, r21
.L75:
	l.lbz	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L74
	l.sfeq	r3, r21
	l.bf	.L78
	 l.nop

	l.lbz	r19, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L74
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 1
	l.lbz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L75
	l.addi	r4, r4, 1
	l.j	.L79
	l.lbz	r11, 0(r3)
.L78:
	l.or	r3, r21, r21
.L74:
	l.lbz	r11, 0(r3)
.L79:
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
.L72:
	l.jr	r9
	 l.nop

.L77:
	l.j	.L72
	l.movhi	r11, hi(0)
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r19, r0, 1
	l.sfles	r5, r19
	l.bf	.L80
	 l.nop

	l.addi	r17, r5, -2
	l.srl	r17, r17, r19
	l.add	r17, r17, r19
	l.add	r17, r17, r17
	l.add	r17, r3, r17
.L82:
	l.lbs	r19, 1(r3)
	l.sb	0(r4), r19
	l.lbs	r19, 0(r3)
	l.sb	1(r4), r19
	l.addi	r3, r3, 2
	l.sfne	r3, r17
	l.bf	.L82
	l.addi	r4, r4, 2
.L80:
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
	l.bf	.L85
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L85:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L87
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L87:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L90
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L88
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L88:
	l.jr	r9
	 l.nop

.L90:
	l.j	.L88
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L92
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L92
	 l.nop

	l.movhi	r11, hi(0)
.L92:
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
	l.bf	.L97
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L97:
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
	l.bf	.L99
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L99:
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
	l.bf	.L101
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L101:
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
	l.bf	.L103
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L103:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L106
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bf	.L104
	l.ori	r11, r0, 1
	l.j	.L104
	l.movhi	r11, hi(0)
.L106:
	l.ori	r11, r0, 1
.L104:
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
	l.bf	.L109
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L109:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L110
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L110
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L110
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L110
	 l.nop

	l.movhi	r11, hi(0)
.L110:
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
	l.bf	.L117
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L117:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L127
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L121
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L122
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r17, r3, r17
	l.ori	r19, r0, 8184
	l.sfleu	r17, r19
	l.bf	.L123
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L124
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bf	.L118
	l.ori	r11, r0, 1
	l.j	.L118
	l.movhi	r11, hi(0)
.L127:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L118
	l.ori	r11, r0, 1
	l.j	.L118
	l.movhi	r11, hi(0)
.L121:
	l.ori	r11, r0, 1
.L118:
	l.jr	r9
	 l.nop

.L122:
	l.j	.L118
	l.ori	r11, r0, 1
.L123:
	l.j	.L118
	l.ori	r11, r0, 1
.L124:
	l.j	.L118
	l.movhi	r11, hi(0)
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L128
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bf	.L128
	 l.nop

	l.movhi	r11, hi(0)
.L128:
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
	l.bf	.L136
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L137
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L140
	l.movhi	r17, ha(.LC0)
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
.L133:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L136:
	l.or	r11, r18, r18
	l.j	.L133
	l.or	r12, r16, r16
.L137:
	l.or	r11, r22, r22
	l.j	.L133
	l.or	r12, r20, r20
.L140:
	l.addi	r19, r17, lo(.LC0)
	l.lwz	r11, lo(.LC0)(r17)
	l.j	.L133
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
	l.bf	.L145
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L146
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L149
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
.L145:
	l.j	.L142
	l.or	r11, r16, r16
.L146:
	l.j	.L142
	l.or	r11, r18, r18
.L149:
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
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r18, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L157
	l.or	r5, r18, r18
	l.or	r6, r22, r22
	l.or	r3, r18, r18
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L158
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r18, r17
	l.sfeq	r19, r17
	l.bf	.L153
	l.or	r5, r18, r18
	l.sfeq	r19, r24
	l.bf	.L159
	 l.nop

	l.or	r11, r18, r18
	l.j	.L151
	l.or	r12, r22, r22
.L153:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L161
	l.or	r11, r16, r16
	l.or	r16, r18, r18
	l.or	r20, r22, r22
	l.or	r11, r16, r16
.L161:
	l.or	r12, r20, r20
.L151:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L157:
	l.or	r11, r18, r18
	l.j	.L151
	l.or	r12, r22, r22
.L158:
	l.or	r11, r16, r16
	l.j	.L151
	l.or	r12, r20, r20
.L159:
	l.or	r11, r16, r16
	l.j	.L151
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
	l.bf	.L168
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L169
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L164
	l.or	r4, r16, r16
	l.sfeq	r19, r20
	l.bf	.L162
	l.or	r11, r18, r18
	l.j	.L162
	l.or	r11, r16, r16
.L164:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L162
	l.or	r11, r16, r16
	l.or	r11, r18, r18
.L162:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L168:
	l.j	.L162
	l.or	r11, r16, r16
.L169:
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
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r18, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L180
	l.or	r5, r18, r18
	l.or	r6, r22, r22
	l.or	r3, r18, r18
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L181
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r18, r17
	l.sfeq	r19, r17
	l.bf	.L176
	l.or	r5, r18, r18
	l.sfeq	r19, r24
	l.bf	.L182
	 l.nop

	l.or	r11, r18, r18
	l.j	.L174
	l.or	r12, r22, r22
.L176:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L184
	l.or	r11, r16, r16
	l.or	r16, r18, r18
	l.or	r20, r22, r22
	l.or	r11, r16, r16
.L184:
	l.or	r12, r20, r20
.L174:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L180:
	l.or	r11, r18, r18
	l.j	.L174
	l.or	r12, r22, r22
.L181:
	l.or	r11, r16, r16
	l.j	.L174
	l.or	r12, r20, r20
.L182:
	l.or	r11, r16, r16
	l.j	.L174
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
	l.bf	.L191
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L192
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L187
	l.or	r5, r16, r16
	l.sfeq	r19, r24
	l.bf	.L193
	 l.nop

	l.or	r11, r22, r22
	l.j	.L185
	l.or	r12, r18, r18
.L187:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L190
	l.or	r12, r20, r20
	l.or	r16, r22, r22
	l.or	r12, r18, r18
.L190:
	l.or	r11, r16, r16
.L185:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L191:
	l.or	r11, r16, r16
	l.j	.L185
	l.or	r12, r20, r20
.L192:
	l.or	r11, r22, r22
	l.j	.L185
	l.or	r12, r18, r18
.L193:
	l.or	r11, r16, r16
	l.j	.L185
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
	l.bf	.L201
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L202
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L197
	l.or	r4, r16, r16
	l.sfeq	r19, r20
	l.bf	.L195
	l.or	r11, r16, r16
	l.j	.L195
	l.or	r11, r18, r18
.L197:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L195
	l.or	r11, r18, r18
	l.or	r11, r16, r16
.L195:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L201:
	l.j	.L195
	l.or	r11, r16, r16
.L202:
	l.j	.L195
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
	l.bf	.L213
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L214
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L209
	l.or	r5, r16, r16
	l.sfeq	r19, r24
	l.bf	.L215
	 l.nop

	l.or	r11, r22, r22
	l.j	.L207
	l.or	r12, r18, r18
.L209:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L212
	l.or	r12, r20, r20
	l.or	r16, r22, r22
	l.or	r12, r18, r18
.L212:
	l.or	r11, r16, r16
.L207:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L213:
	l.or	r11, r16, r16
	l.j	.L207
	l.or	r12, r20, r20
.L214:
	l.or	r11, r22, r22
	l.j	.L207
	l.or	r12, r18, r18
.L215:
	l.or	r11, r16, r16
	l.j	.L207
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
	l.bf	.L220
	 l.nop

	l.movhi	r19, ha(s.0)
	l.addi	r19, r19, lo(s.0)
	l.movhi	r21, ha(digits)
	l.addi	r21, r21, lo(digits)
.L219:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbs	r17, 0(r17)
	l.sb	0(r19), r17
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L219
	l.addi	r19, r19, 1
.L218:
	l.sb	0(r19), r0
	l.movhi	r11, ha(s.0)
	l.jr	r9
	l.addi	r11, r11, lo(s.0)
.L220:
	l.movhi	r19, ha(s.0)
	l.j	.L218
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
	l.bf	.L224
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L224:
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
	l.bnf	.L229
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L226
	 l.nop

	l.sw	4(r17), r3
.L226:
	l.jr	r9
	 l.nop

.L229:
	l.sw	4(r3), r0
	l.j	.L226
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L231
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L231:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L230
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L230:
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
	l.bf	.L234
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.movhi	r18, hi(0)
.L236:
	l.or	r14, r16, r16
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L233
	l.addi	r18, r18, 1
	l.sfne	r18, r20
	l.bf	.L236
	l.add	r16, r16, r22
.L234:
	l.addi	r17, r20, 1
	l.sw	0(r30), r17
	l.mul	r20, r22, r20
	l.or	r5, r22, r22
	l.or	r4, r24, r24
	l.jal	memcpy
	l.add	r3, r28, r20
	l.or	r14, r11, r11
.L233:
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
	l.bf	.L242
	l.or	r20, r3, r3
	l.or	r24, r6, r6
	l.or	r22, r7, r7
	l.or	r16, r4, r4
	l.movhi	r18, hi(0)
.L241:
	l.or	r28, r16, r16
	l.or	r4, r16, r16
	l.jalr	r22
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L239
	l.addi	r18, r18, 1
	l.sfne	r18, r26
	l.bf	.L241
	l.add	r16, r16, r24
	l.movhi	r28, hi(0)
.L239:
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
.L242:
	l.j	.L239
	l.movhi	r28, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L246
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L246:
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
	l.j	.L248
	l.or	r16, r3, r3
.L249:
	l.addi	r16, r16, 1
.L248:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L249
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L255
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bnf	.L250
	l.ori	r21, r0, 1
	l.j	.L251
	l.or	r21, r11, r11
.L255:
	l.or	r21, r11, r11
.L250:
	l.addi	r16, r16, 1
.L251:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfgtu	r17, r19
	l.bf	.L259
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 2
.L260:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L260
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
.L259:
	l.sfne	r21, r17
	l.bf	.L261
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L261:
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
	l.j	.L263
	l.or	r16, r3, r3
.L264:
	l.addi	r16, r16, 1
.L263:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L264
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L270
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bnf	.L265
	l.ori	r21, r0, 1
	l.j	.L266
	l.or	r21, r11, r11
.L270:
	l.or	r21, r11, r11
.L265:
	l.addi	r16, r16, 1
.L266:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfgtu	r17, r19
	l.bf	.L274
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 2
.L275:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L275
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
.L274:
	l.sfne	r21, r17
	l.bf	.L276
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L276:
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
	l.j	.L278
	l.or	r16, r3, r3
.L279:
	l.addi	r16, r16, 1
.L278:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L279
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L280
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bf	.L281
	 l.nop

	l.ori	r11, r0, 1
.L280:
	l.addi	r16, r16, 1
.L281:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfgtu	r17, r19
	l.bf	.L285
	l.movhi	r17, hi(0)
	l.movhi	r12, hi(0)
	l.j	.L283
	l.or	r25, r19, r19
.L290:
	l.sub	r17, r17, r23
	l.sub	r17, r17, r19
	l.lbs	r19, 0(r16)
	l.addi	r19, r19, -48
	l.sfleu	r19, r25
	l.bnf	.L282
	 l.nop

.L283:
	l.ori	r19, r0, 30
	l.srl	r19, r12, r19
	l.ori	r23, r0, 2
	l.sll	r21, r17, r23
	l.or	r21, r19, r21
	l.sll	r19, r12, r23
	l.add	r12, r19, r12
	l.sfltu	r12, r19
	l.bf	.L288
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L288:
	l.add	r21, r21, r17
	l.add	r19, r19, r21
	l.add	r21, r12, r12
	l.sfltu	r21, r12
	l.bf	.L289
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L289:
	l.add	r19, r19, r19
	l.add	r17, r17, r19
	l.addi	r16, r16, 1
	l.lbs	r12, -1(r16)
	l.addi	r12, r12, -48
	l.ori	r19, r0, 31
	l.sra	r23, r12, r19
	l.sub	r12, r21, r12
	l.sfgtu	r12, r21
	l.bf	.L290
	l.ori	r19, r0, 1
	l.j	.L290
	l.movhi	r19, hi(0)
.L285:
	l.movhi	r12, hi(0)
.L282:
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L293
	l.or	r11, r17, r17
	l.sub	r21, r19, r12
	l.sfne	r19, r12
	l.bnf	.L292
	l.ori	r23, r0, 1
.L287:
	l.sub	r17, r19, r17
	l.sub	r17, r17, r23
	l.or	r12, r21, r21
	l.or	r11, r17, r17
.L293:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L292:
	l.j	.L287
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
	l.bnf	.L297
	l.or	r26, r7, r7
	l.j	.L294
	l.movhi	r18, hi(0)
.L299:
	l.or	r16, r20, r20
	l.movhi	r17, hi(0)
.L303:
	l.sfne	r16, r17
	l.bnf	.L302
	l.movhi	r18, hi(0)
.L297:
	l.ori	r17, r0, 1
	l.srl	r20, r16, r17
	l.mul	r18, r20, r22
	l.add	r18, r24, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L299
	l.sfles	r11, r17
	l.bf	.L294
	l.add	r24, r18, r22
	l.addi	r16, r16, -1
	l.j	.L303
	l.sub	r16, r16, r20
.L302:
.L294:
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
	l.bnf	.L307
	l.or	r18, r5, r5
	l.j	.L304
	l.movhi	r16, hi(0)
.L312:
	l.sra	r18, r18, r17
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L311
	l.movhi	r16, hi(0)
.L307:
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
	l.bf	.L304
	l.sfles	r11, r17
	l.bf	.L312
	l.ori	r17, r0, 1
	l.add	r22, r16, r20
	l.j	.L312
	l.addi	r18, r18, -1
.L311:
.L304:
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
	l.bf	.L315
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L318
	l.ori	r17, r0, 1
.L317:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L315:
	l.jr	r9
	 l.nop

.L318:
	l.j	.L317
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
	l.or	r11, r3, r3
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L325
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L328
	l.ori	r17, r0, 1
.L327:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L325:
	l.jr	r9
	 l.nop

.L328:
	l.j	.L327
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
	l.bnf	.L331
	l.movhi	r11, hi(0)
	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
.L340:
	l.bnf	.L339
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 4
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L340
	l.sfne	r4, r17
	l.j	.L334
	l.or	r11, r3, r3
.L339:
	l.or	r11, r3, r3
.L334:
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L331
	 l.nop

	l.movhi	r11, hi(0)
.L331:
	l.jr	r9
	 l.nop

	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L349
	l.sfltu	r19, r17
.L342:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L343
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L343
	 l.nop

	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bnf	.L342
	 l.nop

.L343:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
.L349:
	l.bf	.L341
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L341
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L341:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L351:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L351
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
	l.bf	.L354
	l.or	r11, r3, r3
.L355:
	l.addi	r11, r11, 4
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L355
	 l.nop

.L354:
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
	l.bnf	.L358
	l.movhi	r11, hi(0)
.L359:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L361
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L361
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L359
	l.addi	r4, r4, 4
	l.j	.L358
	l.movhi	r11, hi(0)
.L363:
	l.bf	.L358
	l.ori	r11, r0, 1
	l.j	.L358
	l.movhi	r11, hi(0)
.L361:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bf	.L363
	l.sfgtu	r19, r17
	l.xori	r11, r0, -1
.L358:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L367
	l.movhi	r11, hi(0)
.L368:
	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
	l.bnf	.L373
	l.addi	r5, r5, -1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L368
	l.addi	r3, r3, 4
	l.j	.L367
	l.movhi	r11, hi(0)
.L373:
	l.or	r11, r3, r3
.L367:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L374
	l.movhi	r11, hi(0)
.L375:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L385
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L375
	l.addi	r4, r4, 4
	l.movhi	r11, hi(0)
.L374:
	l.jr	r9
	 l.nop

.L379:
	l.bf	.L374
	l.ori	r11, r0, 1
	l.j	.L374
	l.movhi	r11, hi(0)
.L385:
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bf	.L379
	l.sfgtu	r19, r17
	l.j	.L374
	l.xori	r11, r0, -1
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.or	r11, r3, r3
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L387
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r23, r0, -1
.L388:
	l.addi	r4, r4, 4
	l.addi	r19, r19, 4
	l.lwz	r21, -4(r4)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L388
	l.sw	-4(r19), r21
.L387:
	l.jr	r9
	 l.nop

	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.sfeq	r3, r4
	l.bf	.L391
	l.or	r11, r3, r3
	l.sub	r17, r3, r4
	l.ori	r19, r0, 2
	l.sll	r19, r5, r19
	l.sfltu	r17, r19
	l.bf	.L392
	l.or	r21, r4, r4
	l.addi	r19, r5, -1
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.or	r17, r3, r3
	l.bnf	.L391
	l.xori	r23, r0, -1
.L393:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r21, -4(r4)
	l.addi	r19, r19, -1
	l.sfne	r19, r23
	l.bf	.L393
	l.sw	-4(r17), r21
	l.j	.L391
	 l.nop

.L392:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L391
	l.addi	r17, r5, -1
	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r4, r4, r17
	l.add	r17, r3, r17
	l.addi	r21, r21, -4
.L394:
	l.lwz	r19, 0(r4)
	l.sw	0(r17), r19
	l.addi	r4, r4, -4
	l.sfne	r4, r21
	l.bf	.L394
	l.addi	r17, r17, -4
.L391:
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
	l.bf	.L400
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L401:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.bf	.L401
	l.sw	-4(r19), r4
.L400:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L404
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L403
	l.add	r4, r4, r5
.L406:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L406
	l.sb	0(r4), r19
.L403:
	l.jr	r9
	 l.nop

.L404:
	l.bf	.L403
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L403
	 l.nop

	l.add	r5, r3, r5
.L407:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r3, r5
	l.bf	.L407
	l.sb	-1(r4), r17
	l.j	.L403
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
	l.bnf	.L415
	l.sll	r12, r4, r5
	l.or	r11, r25, r25
	l.movhi	r21, hi(0)
.L415:
	l.sfges	r19, r21
	l.bnf	.L412
	 l.nop

	l.movhi	r12, hi(0)
.L412:
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
	l.bnf	.L416
	l.srl	r3, r3, r5
	l.or	r4, r23, r23
	l.movhi	r17, hi(0)
.L416:
	l.sfges	r19, r17
	l.bnf	.L414
	 l.nop

	l.movhi	r3, hi(0)
.L414:
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
	l.bnf	.L422
	l.srl	r11, r3, r5
	l.or	r12, r25, r25
	l.movhi	r21, hi(0)
.L422:
	l.sfges	r19, r21
	l.bnf	.L419
	 l.nop

	l.movhi	r11, hi(0)
.L419:
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
	l.bnf	.L423
	l.sll	r4, r4, r5
	l.or	r3, r23, r23
	l.movhi	r17, hi(0)
.L423:
	l.sfges	r19, r17
	l.bnf	.L421
	 l.nop

	l.movhi	r4, hi(0)
.L421:
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
	l.ori	r21, r0, 24
	l.srl	r19, r3, r21
	l.movhi	r17, hi(16711680)
	l.and	r12, r3, r17
	l.ori	r23, r0, 8
	l.srl	r12, r12, r23
	l.or	r12, r12, r19
	l.andi	r19, r3, 65280
	l.sll	r19, r19, r23
	l.or	r12, r12, r19
	l.sll	r3, r3, r21
	l.srl	r11, r4, r21
	l.and	r17, r4, r17
	l.srl	r17, r17, r23
	l.or	r11, r11, r17
	l.andi	r17, r4, 65280
	l.sll	r17, r17, r23
	l.or	r11, r11, r17
	l.sll	r4, r4, r21
	l.or	r11, r11, r4
	l.jr	r9
	l.or	r12, r12, r3
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 32
	l.srl	r17, r3, r11
.L441:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L440
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L441
	l.srl	r17, r3, r11
	l.j	.L435
	l.movhi	r11, hi(0)
.L440:
	l.addi	r11, r11, 1
.L435:
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L447
	l.or	r11, r3, r3
	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L442
	l.ori	r17, r0, 1
	l.ori	r11, r0, 1
.L448:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L448
	l.ori	r17, r0, 1
.L442:
.L447:
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
	l.bf	.L449
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L449
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L449:
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
	l.bf	.L455
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L455
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L455:
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
	l.bf	.L461
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
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
	l.bf	.L470
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r11, r11
	l.jal	__nesf2
	l.or	r3, r20, r20
	l.sfne	r11, r18
	l.bnf	.L470
	l.sfges	r16, r18
	l.bnf	.L478
	l.movhi	r17, ha(.LC8)
	l.j	.L474
	l.lwz	r18, lo(.LC8)(r17)
.L478:
	l.movhi	r17, ha(.LC9)
	l.j	.L474
	l.lwz	r18, lo(.LC9)(r17)
.L473:
	l.ori	r17, r0, 31
.L479:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L470
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L474:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L479
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L473
	l.or	r20, r11, r11
.L470:
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
	l.bf	.L481
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r24, r24
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.or	r3, r24, r24
	l.jal	__nedf2
	l.or	r4, r22, r22
	l.sfne	r11, r18
	l.bnf	.L481
	l.sfges	r16, r18
	l.bnf	.L489
	l.movhi	r17, ha(.LC10)
	l.addi	r19, r17, lo(.LC10)
	l.lwz	r20, lo(.LC10)(r17)
	l.j	.L485
	l.lwz	r18, 4(r19)
.L489:
	l.movhi	r17, ha(.LC11)
	l.addi	r19, r17, lo(.LC11)
	l.lwz	r20, lo(.LC11)(r17)
	l.j	.L485
	l.lwz	r18, 4(r19)
.L484:
	l.ori	r17, r0, 31
.L490:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L481
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L485:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L490
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L484
	l.or	r22, r12, r12
.L481:
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
	l.bf	.L492
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r24, r24
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.or	r3, r24, r24
	l.jal	__nedf2
	l.or	r4, r22, r22
	l.sfne	r11, r18
	l.bnf	.L492
	l.sfges	r16, r18
	l.bnf	.L500
	l.movhi	r17, ha(.LC12)
	l.addi	r19, r17, lo(.LC12)
	l.lwz	r20, lo(.LC12)(r17)
	l.j	.L496
	l.lwz	r18, 4(r19)
.L500:
	l.movhi	r17, ha(.LC13)
	l.addi	r19, r17, lo(.LC13)
	l.lwz	r20, lo(.LC13)(r17)
	l.j	.L496
	l.lwz	r18, 4(r19)
.L495:
	l.ori	r17, r0, 31
.L501:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L492
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L496:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L501
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L495
	l.or	r22, r12, r12
.L492:
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
	l.bf	.L503
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L504:
	l.addi	r4, r4, 1
	l.lbs	r21, -1(r4)
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r17)
	l.xor	r19, r19, r21
	l.sfne	r4, r5
	l.bf	.L504
	l.sb	-1(r17), r19
.L503:
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
	l.bnf	.L508
	l.add	r11, r20, r11
.L507:
	l.lbs	r17, 0(r18)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L510
	l.sb	0(r11), r17
	l.addi	r18, r18, 1
	l.addi	r16, r16, -1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L507
	l.addi	r11, r11, 1
.L508:
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
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L520
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L522:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L521
	 l.nop

.L513:
	l.jr	r9
	 l.nop

.L520:
	l.j	.L513
	l.or	r11, r4, r4
.L521:
	l.addi	r11, r11, 1
	l.sfeq	r11, r4
	l.bnf	.L522
	l.add	r17, r3, r11
	l.j	.L513
	l.or	r11, r4, r4
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L530
	l.or	r11, r3, r3
.L524:
	l.or	r17, r4, r4
.L527:
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L531
	 l.nop

	l.lbs	r21, 0(r11)
	l.sfeq	r21, r19
	l.bnf	.L527
	l.addi	r17, r17, 1
.L525:
	l.jr	r9
	 l.nop

.L530:
	l.j	.L525
	l.movhi	r11, hi(0)
.L531:
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L524
	 l.nop

	l.j	.L525
	l.movhi	r11, hi(0)
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.j	.L534
	l.movhi	r11, hi(0)
.L537:
	l.movhi	r19, hi(0)
.L539:
	l.sfne	r17, r19
	l.bnf	.L538
	l.addi	r3, r3, 1
.L534:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bnf	.L539
	l.movhi	r19, hi(0)
	l.j	.L537
	l.or	r11, r3, r3
.L538:
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
	l.bf	.L540
	l.or	r20, r11, r11
	l.lbs	r22, 0(r18)
.L542:
	l.or	r4, r22, r22
	l.jal	strchr
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L540
	l.or	r16, r11, r11
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.jal	strncmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L546
	l.or	r11, r16, r16
	l.j	.L542
	l.addi	r16, r16, 1
.L540:
	l.or	r11, r16, r16
.L546:
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
	l.bf	.L558
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L551
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L559
	l.movhi	r17, hi(-2147483648)
.L551:
	l.or	r11, r16, r16
.L560:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L558:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L560
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L559:
	l.j	.L551
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
	l.bf	.L565
	l.add	r18, r3, r18
	l.sfltu	r4, r6
	l.bf	.L566
	l.sfgtu	r3, r18
	l.bf	.L567
	l.addi	r24, r5, 1
	l.lbs	r22, 0(r5)
	l.j	.L564
	l.addi	r20, r6, -1
.L563:
	l.addi	r16, r16, 1
.L572:
	l.sfgeu	r18, r16
	l.bnf	.L571
	l.movhi	r11, hi(0)
.L564:
	l.lbs	r17, 0(r16)
	l.sfne	r17, r22
	l.bf	.L563
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memcmp
	l.addi	r3, r16, 1
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L572
	l.addi	r16, r16, 1
	l.addi	r16, r16, -1
	l.or	r11, r16, r16
.L571:
.L561:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L565:
	l.j	.L561
	l.or	r11, r3, r3
.L566:
	l.j	.L561
	l.movhi	r11, hi(0)
.L567:
	l.j	.L561
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
	l.bf	.L600
	l.movhi	r17, hi(-2147483648)
	l.movhi	r30, hi(0)
.L576:
	l.movhi	r17, ha(.LC16)
	l.addi	r19, r17, lo(.LC16)
	l.lwz	r5, lo(.LC16)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r14, r14
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L596
	l.movhi	r18, hi(0)
	l.movhi	r17, ha(.LC17)
	l.lwz	r26, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r24, 4(r17)
	l.movhi	r17, ha(.LC16)
	l.addi	r17, r17, lo(.LC16)
	l.lwz	r22, 0(r17)
	l.lwz	r20, 4(r17)
.L580:
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
	l.bf	.L580
	 l.nop

.L581:
.L602:
	l.movhi	r17, hi(0)
	l.sfeq	r30, r17
.L601:
	l.bf	.L585
	l.sw	0(r28), r18
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r16, r17
.L585:
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
.L600:
	l.xor	r16, r16, r17
	l.j	.L576
	l.ori	r30, r0, 1
.L596:
	l.movhi	r17, ha(.LC17)
	l.addi	r19, r17, lo(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r14, r14
	l.movhi	r18, hi(0)
	l.sflts	r11, r18
	l.bnf	.L602
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r14, r14
	l.sfne	r11, r18
	l.bnf	.L598
	l.movhi	r17, ha(.LC17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r22, 0(r17)
	l.lwz	r20, 4(r17)
.L584:
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
	l.bf	.L584
	l.sfeq	r30, r17
	l.j	.L601
	 l.nop

.L598:
	l.j	.L581
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
	l.bf	.L607
	l.or	r21, r3, r3
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.j	.L606
	l.movhi	r25, hi(0)
.L612:
	l.j	.L609
	l.movhi	r19, hi(0)
.L611:
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
	l.bnf	.L603
	 l.nop

.L606:
	l.andi	r19, r23, 1
	l.sub	r17, r25, r19
	l.sfne	r25, r19
	l.bnf	.L612
	l.ori	r19, r0, 1
.L609:
	l.sub	r19, r25, r19
	l.and	r19, r5, r19
	l.and	r17, r6, r17
	l.add	r17, r12, r17
	l.sfltu	r17, r12
	l.bf	.L610
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L610:
	l.add	r11, r11, r19
	l.add	r11, r27, r11
	l.or	r12, r17, r17
	l.add	r17, r6, r6
	l.sfltu	r17, r6
	l.bf	.L611
	l.ori	r19, r0, 1
	l.j	.L611
	l.movhi	r19, hi(0)
.L607:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
.L603:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bnf	.L618
	l.ori	r17, r0, 1
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
.L629:
	l.bnf	.L618
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L616
	l.add	r17, r17, r17
	l.addi	r11, r11, -1
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L629
	l.sfges	r4, r19
.L617:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L628
	 l.nop

	l.or	r11, r3, r3
.L628:
	l.jr	r9
	 l.nop

.L616:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L617
	l.or	r11, r17, r17
.L618:
	l.j	.L621
	l.movhi	r11, hi(0)
.L630:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L617
	 l.nop

.L621:
	l.sfltu	r3, r4
	l.bf	.L630
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L630
	l.or	r11, r11, r17
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
	l.sfeq	r19, r17
	l.bf	.L633
	l.xor	r3, r19, r17
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.ori	r17, r0, 8
	l.jal	__clzsi2
	l.sll	r3, r3, r17
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L633:
	l.jr	r9
	l.ori	r11, r0, 7
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.ori	r17, r0, 31
	l.sra	r17, r3, r17
	l.xor	r3, r17, r3
	l.xor	r4, r17, r4
	l.or	r17, r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L641
	 l.nop

	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L641:
	l.jr	r9
	l.ori	r11, r0, 63
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L651
	l.or	r11, r3, r3
	l.movhi	r11, hi(0)
.L648:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L648
	l.add	r4, r4, r4
.L646:
.L651:
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
	l.bf	.L653
	l.and	r27, r5, r27
	l.movhi	r17, hi(0)
.L665:
	l.sfne	r25, r17
	l.bnf	.L655
	l.ori	r21, r0, 3
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r25, r25, r21
	l.add	r25, r4, r25
.L659:
	l.lwz	r21, 4(r17)
	l.lwz	r23, 0(r17)
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.addi	r17, r17, 8
	l.sfne	r17, r25
	l.bf	.L659
	l.addi	r19, r19, 8
.L655:
	l.sfleu	r5, r27
	l.bf	.L652
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r5, r5, r4
.L660:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r5
	l.bf	.L660
	l.addi	r3, r3, 1
.L652:
	l.jr	r9
	 l.nop

.L653:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L665
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L652
	l.xori	r23, r0, -1
.L657:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L657
	l.sb	0(r19), r21
	l.j	.L652
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfgeu	r3, r4
	l.bf	.L667
	l.srl	r23, r5, r17
	l.movhi	r17, hi(0)
.L677:
	l.sfne	r23, r17
	l.bnf	.L669
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.add	r23, r4, r23
.L673:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.sfne	r17, r23
	l.bf	.L673
	l.addi	r19, r19, 2
.L669:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L666
	l.addi	r5, r5, -1
	l.add	r4, r4, r5
	l.add	r3, r3, r5
	l.lbs	r17, 0(r4)
	l.sb	0(r3), r17
.L666:
	l.jr	r9
	 l.nop

.L667:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L677
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L666
	l.xori	r23, r0, -1
.L671:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L671
	l.sb	0(r19), r21
	l.j	.L666
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
	l.bf	.L679
	l.and	r25, r5, r25
	l.movhi	r17, hi(0)
.L691:
	l.sfne	r23, r17
	l.bnf	.L681
	l.ori	r21, r0, 2
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r23, r23, r21
	l.add	r23, r4, r23
.L685:
	l.lwz	r21, 0(r17)
	l.sw	0(r19), r21
	l.addi	r17, r17, 4
	l.sfne	r17, r23
	l.bf	.L685
	l.addi	r19, r19, 4
.L681:
	l.sfleu	r5, r25
	l.bf	.L678
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r5, r5, r4
.L686:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r5
	l.bf	.L686
	l.addi	r3, r3, 1
.L678:
	l.jr	r9
	 l.nop

.L679:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L691
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L678
	l.xori	r23, r0, -1
.L683:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L683
	l.sb	0(r19), r21
	l.j	.L678
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
.L706:
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L702
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r21
	l.bf	.L706
	l.sub	r17, r19, r11
.L702:
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
.L711:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L707
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L711
	l.sra	r17, r3, r11
.L707:
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
	l.bf	.L719
	l.movhi	r17, ha(.LC18)
	l.jal	__fixsfsi
	l.or	r3, r16, r16
.L712:
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L719:
	l.lwz	r4, lo(.LC18)(r17)
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L712
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
.L721:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L721
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
.L724:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L724
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
	l.bf	.L731
	l.or	r11, r3, r3
	l.movhi	r11, hi(0)
.L728:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L728
	l.add	r4, r4, r4
.L726:
.L731:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L735
	l.sfeq	r4, r17
	l.bf	.L738
	l.or	r11, r4, r4
	l.movhi	r11, hi(0)
.L734:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L734
	l.add	r3, r3, r3
.L732:
.L738:
	l.jr	r9
	 l.nop

.L735:
	l.j	.L732
	l.or	r11, r3, r3
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bnf	.L744
	l.ori	r17, r0, 1
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
.L755:
	l.bnf	.L744
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L742
	l.add	r17, r17, r17
	l.addi	r11, r11, -1
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L755
	l.sfges	r4, r19
.L743:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L754
	 l.nop

	l.or	r11, r3, r3
.L754:
	l.jr	r9
	 l.nop

.L742:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L743
	l.or	r11, r17, r17
.L744:
	l.j	.L747
	l.movhi	r11, hi(0)
.L756:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L743
	 l.nop

.L747:
	l.sfltu	r3, r4
	l.bf	.L756
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L756
	l.or	r11, r11, r17
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
	l.bf	.L760
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L757
	l.ori	r11, r0, 1
	l.j	.L757
	l.movhi	r11, hi(0)
.L760:
	l.xori	r11, r0, -1
.L757:
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
	l.bf	.L766
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L763
	l.ori	r11, r0, 1
	l.j	.L763
	l.movhi	r11, hi(0)
.L766:
	l.xori	r11, r0, -1
.L763:
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
	l.bnf	.L781
	l.sfne	r4, r17
	l.bnf	.L782
	l.movhi	r21, hi(0)
.L778:
	l.ori	r19, r0, 32
	l.movhi	r11, hi(0)
	l.andi	r17, r4, 1
.L783:
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.sra	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L784
	l.add	r3, r3, r3
	l.addi	r19, r19, -1
	l.andi	r19, r19, 0xff
	l.sfne	r19, r17
	l.bf	.L783
	l.andi	r17, r4, 1
	l.movhi	r17, hi(0)
.L784:
	l.sfeq	r21, r17
	l.bf	.L773
	 l.nop

	l.sub	r11, r0, r11
.L773:
	l.jr	r9
	 l.nop

.L781:
	l.sub	r4, r0, r4
	l.j	.L778
	l.ori	r21, r0, 1
.L782:
	l.j	.L773
	l.or	r11, r4, r4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -4
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L794
	l.sw	0(r1), r9
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L795
	 l.nop

	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.j	.L797
	l.lwz	r9, 0(r1)
.L794:
	l.sflts	r4, r17
	l.bf	.L796
	l.sub	r3, r0, r3
	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.sub	r11, r0, r11
.L798:
	l.lwz	r9, 0(r1)
.L797:
.L799:
	l.jr	r9
	l.addi	r1, r1, 4
.L795:
	l.movhi	r5, hi(0)
	l.jal	__udivmodsi4
	l.sub	r4, r0, r4
	l.j	.L798
	l.sub	r11, r0, r11
.L796:
	l.movhi	r5, hi(0)
	l.jal	__udivmodsi4
	l.sub	r4, r0, r4
	l.j	.L799
	l.lwz	r9, 0(r1)
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -4
	l.movhi	r19, hi(0)
	l.sfges	r3, r19
	l.bnf	.L806
	l.sw	0(r1), r9
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L803
	 l.nop

	l.sub	r4, r0, r4
.L803:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.j	.L807
	l.lwz	r9, 0(r1)
.L806:
	l.sfges	r4, r19
	l.bf	.L802
	l.sub	r3, r0, r3
	l.sub	r4, r0, r4
.L802:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.sub	r11, r0, r11
	l.lwz	r9, 0(r1)
.L807:
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
	l.bnf	.L813
	l.ori	r17, r0, 1
	l.ori	r21, r0, 16
.L823:
	l.sll	r21, r4, r21
	l.movhi	r23, hi(0)
	l.sfges	r21, r23
	l.bnf	.L813
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.sfleu	r11, r4
	l.bf	.L811
	l.andi	r17, r17, 0xffff
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L823
	l.ori	r21, r0, 16
	l.movhi	r19, hi(0)
.L812:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L822
	 l.nop

	l.or	r11, r19, r19
.L822:
	l.jr	r9
	 l.nop

.L811:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L812
	l.or	r19, r17, r17
.L813:
	l.j	.L816
	l.movhi	r19, hi(0)
.L824:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L812
	 l.nop

.L816:
	l.sfltu	r11, r4
	l.bf	.L824
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.or	r19, r19, r17
	l.j	.L824
	l.andi	r19, r19, 0xffff
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bnf	.L830
	l.ori	r17, r0, 1
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
.L841:
	l.bnf	.L830
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L828
	l.add	r17, r17, r17
	l.addi	r11, r11, -1
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L841
	l.sfges	r4, r19
.L829:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L840
	 l.nop

	l.or	r11, r3, r3
.L840:
	l.jr	r9
	 l.nop

.L828:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L829
	l.or	r11, r17, r17
.L830:
	l.j	.L833
	l.movhi	r11, hi(0)
.L842:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L829
	 l.nop

.L833:
	l.sfltu	r3, r4
	l.bf	.L842
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L842
	l.or	r11, r11, r17
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L844
	l.movhi	r17, hi(0)
	l.movhi	r12, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
.L846:
	l.jr	r9
	 l.nop

.L844:
	l.sfeq	r5, r17
	l.bf	.L847
	l.ori	r17, r0, 32
	l.sll	r12, r4, r5
	l.sll	r11, r3, r5
	l.sub	r17, r17, r5
	l.srl	r4, r4, r17
	l.j	.L846
	l.or	r11, r4, r11
.L847:
	l.or	r11, r3, r3
	l.j	.L846
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L849
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.addi	r5, r5, -32
	l.sra	r12, r3, r5
.L851:
	l.jr	r9
	 l.nop

.L849:
	l.sfeq	r5, r17
	l.bf	.L852
	l.ori	r17, r0, 32
	l.sra	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L851
	l.or	r12, r3, r12
.L852:
	l.or	r11, r3, r3
	l.j	.L851
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.ori	r27, r0, 24
	l.srl	r17, r3, r27
	l.ori	r29, r0, 8
	l.srl	r23, r3, r29
	l.andi	r23, r23, 65280
	l.sll	r21, r3, r29
	l.srl	r19, r4, r27
	l.or	r19, r21, r19
	l.movhi	r25, hi(16711680)
	l.and	r19, r19, r25
	l.sll	r3, r3, r27
	l.srl	r12, r4, r29
	l.or	r12, r3, r12
	l.movhi	r21, hi(-16777216)
	l.and	r12, r12, r21
	l.or	r21, r29, r29
	l.sll	r11, r4, r29
	l.or	r29, r27, r27
	l.srl	r27, r4, r27
	l.srl	r21, r4, r21
	l.sll	r4, r4, r29
	l.andi	r21, r21, 65280
	l.and	r11, r11, r25
	l.or	r17, r17, r23
	l.or	r17, r17, r19
	l.or	r4, r4, r27
	l.or	r4, r4, r21
	l.or	r11, r4, r11
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
	l.sfleu	r3, r17
	l.bf	.L856
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L856:
	l.ori	r17, r0, 4
	l.sll	r19, r19, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r19
	l.srl	r17, r3, r17
	l.andi	r21, r17, 65280
	l.movhi	r25, hi(0)
	l.sfeq	r21, r25
	l.bf	.L857
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L857:
	l.ori	r21, r0, 3
	l.sll	r11, r11, r21
	l.ori	r21, r0, 8
	l.sub	r21, r21, r11
	l.srl	r17, r17, r21
	l.add	r19, r11, r19
	l.andi	r21, r17, 240
	l.sfeq	r21, r25
	l.bf	.L858
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L858:
	l.ori	r23, r0, 2
	l.sll	r21, r21, r23
	l.ori	r23, r0, 4
	l.sub	r23, r23, r21
	l.srl	r17, r17, r23
	l.add	r19, r19, r21
	l.andi	r21, r17, 12
	l.sfeq	r21, r25
	l.bf	.L859
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L859:
	l.add	r21, r21, r21
	l.ori	r23, r0, 2
	l.sub	r25, r23, r21
	l.srl	r17, r17, r25
	l.add	r19, r19, r21
	l.and	r11, r17, r23
	l.ori	r21, r0, 1
	l.srl	r11, r11, r21
	l.sub	r23, r23, r17
	l.addi	r11, r11, -1
	l.and	r11, r11, r23
	l.jr	r9
	l.add	r11, r19, r11
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L862
	l.sfgts	r3, r5
	l.bf	.L863
	l.sfltu	r4, r6
	l.bf	.L864
	l.sfgtu	r4, r6
	l.bf	.L865
	 l.nop

	l.j	.L861
	l.ori	r11, r0, 1
.L862:
	l.movhi	r11, hi(0)
.L861:
	l.jr	r9
	 l.nop

.L863:
	l.j	.L861
	l.ori	r11, r0, 2
.L864:
	l.j	.L861
	l.movhi	r11, hi(0)
.L865:
	l.j	.L861
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
	l.bf	.L869
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L869:
	l.ori	r17, r0, 4
	l.sll	r19, r19, r17
	l.srl	r17, r3, r19
	l.andi	r21, r17, 255
	l.sfeq	r21, r23
	l.bf	.L870
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L870:
	l.ori	r21, r0, 3
	l.sll	r11, r11, r21
	l.srl	r17, r17, r11
	l.add	r19, r11, r19
	l.andi	r21, r17, 15
	l.sfeq	r21, r23
	l.bf	.L871
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L871:
	l.ori	r25, r0, 2
	l.sll	r21, r21, r25
	l.srl	r17, r17, r21
	l.add	r19, r19, r21
	l.andi	r21, r17, 3
	l.sfeq	r21, r23
	l.bf	.L872
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L872:
	l.add	r21, r21, r21
	l.srl	r17, r17, r21
	l.andi	r17, r17, 3
	l.add	r19, r19, r21
	l.xori	r21, r17, -1
	l.andi	r21, r21, 1
	l.ori	r23, r0, 1
	l.srl	r17, r17, r23
	l.sub	r11, r25, r17
	l.sub	r17, r0, r21
	l.and	r11, r11, r17
	l.jr	r9
	l.add	r11, r19, r11
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L874
	l.movhi	r17, hi(0)
	l.movhi	r11, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
.L876:
	l.jr	r9
	 l.nop

.L874:
	l.sfeq	r5, r17
	l.bf	.L877
	l.ori	r17, r0, 32
	l.srl	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L876
	l.or	r12, r3, r12
.L877:
	l.or	r11, r3, r3
	l.j	.L876
	l.or	r12, r4, r4
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.andi	r19, r3, 65535
	l.andi	r21, r4, 65535
	l.mul	r12, r19, r21
	l.ori	r23, r0, 16
	l.srl	r17, r12, r23
	l.srl	r3, r3, r23
	l.mul	r21, r3, r21
	l.add	r17, r17, r21
	l.srl	r21, r17, r23
	l.andi	r17, r17, 0xffff
	l.andi	r12, r12, 0xffff
	l.srl	r4, r4, r23
	l.mul	r19, r19, r4
	l.add	r17, r17, r19
	l.sll	r19, r17, r23
	l.srl	r17, r17, r23
	l.add	r17, r17, r21
	l.mul	r3, r3, r4
	l.add	r11, r17, r3
	l.jr	r9
	l.add	r12, r19, r12
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
	l.or	r22, r3, r3
	l.or	r20, r4, r4
	l.or	r18, r5, r5
	l.or	r16, r6, r6
	l.or	r4, r6, r6
	l.jal	__muldsi3
	l.or	r3, r20, r20
	l.mul	r16, r16, r22
	l.mul	r18, r18, r20
	l.add	r16, r16, r18
	l.add	r11, r16, r11
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
	l.bnf	.L883
	l.ori	r11, r0, 1
.L882:
	l.sub	r17, r17, r3
	l.jr	r9
	l.sub	r11, r17, r11
.L883:
	l.j	.L882
	l.movhi	r11, hi(0)
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.xor	r4, r4, r3
	l.ori	r17, r0, 16
	l.srl	r17, r4, r17
	l.xor	r17, r17, r4
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
	l.bf	.L887
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L887:
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
	l.bf	.L888
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L888:
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
	l.bf	.L889
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L889:
	l.add	r21, r23, r21
	l.add	r19, r19, r21
	l.movhi	r21, hi(252641280)
	l.ori	r21, r21, 3855
	l.and	r19, r19, r21
	l.and	r17, r17, r21
	l.add	r17, r19, r17
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
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.ori	r17, r0, 31
	l.srl	r26, r5, r17
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.lwz	r24, lo(.LC19)(r17)
	l.j	.L894
	l.lwz	r22, 4(r19)
.L892:
	l.ori	r17, r0, 31
.L897:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L899
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L894:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L897
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L892
	l.or	r22, r12, r12
.L899:
	l.sfeq	r26, r17
	l.bf	.L898
	l.or	r11, r24, r24
	l.movhi	r17, ha(.LC19)
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.jal	__divdf3
	l.lwz	r4, 4(r17)
	l.or	r24, r11, r11
	l.or	r22, r12, r12
	l.or	r11, r24, r24
.L898:
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
	l.j	.L903
	l.lwz	r20, lo(.LC20)(r17)
.L901:
	l.ori	r17, r0, 31
.L906:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L908
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L903:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L906
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L901
	l.or	r20, r11, r11
.L908:
	l.sfeq	r22, r17
	l.bf	.L907
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.movhi	r17, ha(.LC20)
	l.jal	__divsf3
	l.lwz	r3, lo(.LC20)(r17)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L907:
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
	l.bf	.L911
	l.sfgtu	r3, r5
	l.bf	.L912
	l.sfltu	r4, r6
	l.bf	.L913
	l.sfgtu	r4, r6
	l.bf	.L914
	 l.nop

	l.j	.L910
	l.ori	r11, r0, 1
.L911:
	l.movhi	r11, hi(0)
.L910:
	l.jr	r9
	 l.nop

.L912:
	l.j	.L910
	l.ori	r11, r0, 2
.L913:
	l.j	.L910
	l.movhi	r11, hi(0)
.L914:
	l.j	.L910
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
