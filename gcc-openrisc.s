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
	l.sfeq	r3, r17
	l.bf	.L82
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
	l.bf	.L86
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L86
	 l.nop

	l.movhi	r11, hi(0)
.L86:
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
	l.bf	.L90
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L90:
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
	l.bf	.L92
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L92:
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
	l.bf	.L94
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L94:
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
	l.bf	.L96
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L96:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L99
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bf	.L98
	l.ori	r11, r0, 1
	l.j	.L98
	l.movhi	r11, hi(0)
.L99:
	l.ori	r11, r0, 1
.L98:
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
	l.bf	.L102
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L102:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L104
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L104
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L104
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L104
	 l.nop

	l.movhi	r11, hi(0)
.L104:
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
	l.bf	.L110
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L110:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L120
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L114
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L115
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r17, r3, r17
	l.ori	r19, r0, 8184
	l.sfleu	r17, r19
	l.bf	.L116
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L117
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bf	.L113
	l.ori	r11, r0, 1
	l.j	.L113
	l.movhi	r11, hi(0)
.L120:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L113
	l.ori	r11, r0, 1
	l.j	.L113
	l.movhi	r11, hi(0)
.L114:
	l.ori	r11, r0, 1
.L113:
	l.jr	r9
	 l.nop

.L115:
	l.j	.L113
	l.ori	r11, r0, 1
.L116:
	l.j	.L113
	l.ori	r11, r0, 1
.L117:
	l.j	.L113
	l.movhi	r11, hi(0)
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L122
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bf	.L122
	 l.nop

	l.movhi	r11, hi(0)
.L122:
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
	l.bf	.L129
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L130
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L133
	l.movhi	r17, ha(.LC0)
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
.L127:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L129:
	l.or	r11, r18, r18
	l.j	.L127
	l.or	r12, r16, r16
.L130:
	l.or	r11, r22, r22
	l.j	.L127
	l.or	r12, r20, r20
.L133:
	l.addi	r19, r17, lo(.LC0)
	l.lwz	r11, lo(.LC0)(r17)
	l.j	.L127
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
	l.bf	.L138
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L139
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L142
	l.movhi	r17, ha(.LC1)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
.L136:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L138:
	l.j	.L136
	l.or	r11, r16, r16
.L139:
	l.j	.L136
	l.or	r11, r18, r18
.L142:
	l.j	.L136
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
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L150
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L151
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L146
	l.or	r5, r20, r20
	l.sfges	r16, r24
	l.bf	.L152
	 l.nop

	l.or	r11, r20, r20
	l.j	.L145
	l.or	r12, r22, r22
.L146:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L154
	l.or	r11, r16, r16
	l.or	r16, r20, r20
	l.or	r18, r22, r22
	l.or	r11, r16, r16
.L154:
	l.or	r12, r18, r18
.L145:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L150:
	l.or	r11, r20, r20
	l.j	.L145
	l.or	r12, r22, r22
.L151:
	l.or	r11, r16, r16
	l.j	.L145
	l.or	r12, r18, r18
.L152:
	l.or	r11, r16, r16
	l.j	.L145
	l.or	r12, r18, r18
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
	l.bf	.L161
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L162
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L157
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bnf	.L167
	l.or	r11, r18, r18
.L156:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L167:
	l.j	.L156
	l.or	r11, r16, r16
.L157:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L156
	l.or	r11, r16, r16
	l.j	.L156
	l.or	r11, r18, r18
.L161:
	l.j	.L156
	l.or	r11, r16, r16
.L162:
	l.j	.L156
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
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L174
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L175
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L170
	l.or	r5, r20, r20
	l.sfges	r16, r24
	l.bf	.L176
	 l.nop

	l.or	r11, r20, r20
	l.j	.L169
	l.or	r12, r22, r22
.L170:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L178
	l.or	r11, r16, r16
	l.or	r16, r20, r20
	l.or	r18, r22, r22
	l.or	r11, r16, r16
.L178:
	l.or	r12, r18, r18
.L169:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L174:
	l.or	r11, r20, r20
	l.j	.L169
	l.or	r12, r22, r22
.L175:
	l.or	r11, r16, r16
	l.j	.L169
	l.or	r12, r18, r18
.L176:
	l.or	r11, r16, r16
	l.j	.L169
	l.or	r12, r18, r18
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
	l.or	r20, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L185
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L186
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L181
	l.or	r5, r16, r16
	l.sfges	r22, r24
	l.bf	.L187
	 l.nop

	l.or	r11, r22, r22
	l.j	.L180
	l.or	r12, r20, r20
.L181:
	l.or	r6, r18, r18
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L184
	l.or	r12, r18, r18
	l.or	r16, r22, r22
	l.or	r12, r20, r20
.L184:
	l.or	r11, r16, r16
.L180:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L185:
	l.or	r11, r16, r16
	l.j	.L180
	l.or	r12, r18, r18
.L186:
	l.or	r11, r22, r22
	l.j	.L180
	l.or	r12, r20, r20
.L187:
	l.or	r11, r16, r16
	l.j	.L180
	l.or	r12, r18, r18
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
	l.bf	.L195
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L196
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L191
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bnf	.L201
	l.or	r11, r16, r16
.L190:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L201:
	l.j	.L190
	l.or	r11, r18, r18
.L191:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L190
	l.or	r11, r18, r18
	l.j	.L190
	l.or	r11, r16, r16
.L195:
	l.j	.L190
	l.or	r11, r16, r16
.L196:
	l.j	.L190
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
	l.or	r20, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L208
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L209
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L204
	l.or	r5, r16, r16
	l.sfges	r22, r24
	l.bf	.L210
	 l.nop

	l.or	r11, r22, r22
	l.j	.L203
	l.or	r12, r20, r20
.L204:
	l.or	r6, r18, r18
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L207
	l.or	r12, r18, r18
	l.or	r16, r22, r22
	l.or	r12, r20, r20
.L207:
	l.or	r11, r16, r16
.L203:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L208:
	l.or	r11, r16, r16
	l.j	.L203
	l.or	r12, r18, r18
.L209:
	l.or	r11, r22, r22
	l.j	.L203
	l.or	r12, r20, r20
.L210:
	l.or	r11, r16, r16
	l.j	.L203
	l.or	r12, r18, r18
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
	l.j	.L213
	l.addi	r21, r21, lo(digits)
.L214:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbs	r17, 0(r17)
	l.sb	0(r19), r17
	l.addi	r19, r19, 1
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
.L213:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L214
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
	l.bf	.L217
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L217:
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
	l.bnf	.L222
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L219
	 l.nop

	l.sw	4(r17), r3
.L219:
	l.jr	r9
	 l.nop

.L222:
	l.sw	4(r3), r0
	l.j	.L219
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L224
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L224:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L223
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L223:
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
	l.j	.L227
	l.movhi	r16, hi(0)
.L228:
	l.addi	r16, r16, 1
.L227:
	l.sfne	r16, r22
	l.bnf	.L232
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L228
	l.add	r18, r18, r20
	l.mul	r16, r16, r20
	l.j	.L229
	l.add	r11, r28, r16
.L232:
	l.addi	r17, r22, 1
	l.sw	0(r30), r17
	l.mul	r22, r20, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memcpy
	l.add	r3, r28, r22
.L229:
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
	l.j	.L234
	l.movhi	r16, hi(0)
.L235:
	l.addi	r16, r16, 1
.L234:
	l.sfne	r16, r28
	l.bnf	.L239
	l.or	r4, r18, r18
	l.jalr	r22
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L235
	l.add	r18, r18, r20
	l.mul	r16, r16, r20
	l.j	.L236
	l.add	r11, r26, r16
.L239:
	l.movhi	r11, hi(0)
.L236:
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
	l.bf	.L241
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L241:
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
	l.j	.L243
	l.or	r16, r3, r3
.L244:
	l.addi	r16, r16, 1
.L243:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L244
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L250
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L245
	l.ori	r21, r0, 1
	l.j	.L246
	l.movhi	r21, hi(0)
.L250:
	l.movhi	r21, hi(0)
.L245:
	l.addi	r16, r16, 1
.L246:
	l.movhi	r11, hi(0)
	l.j	.L247
	l.ori	r19, r0, 9
.L248:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
.L247:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L248
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bf	.L254
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L254:
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
	l.j	.L256
	l.or	r16, r3, r3
.L257:
	l.addi	r16, r16, 1
.L256:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L257
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L263
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L258
	l.ori	r21, r0, 1
	l.j	.L259
	l.movhi	r21, hi(0)
.L263:
	l.movhi	r21, hi(0)
.L258:
	l.addi	r16, r16, 1
.L259:
	l.movhi	r11, hi(0)
	l.j	.L260
	l.ori	r19, r0, 9
.L261:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
.L260:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L261
	l.ori	r17, r0, 2
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bf	.L267
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L267:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.j	.L269
	l.or	r16, r3, r3
.L270:
	l.addi	r16, r16, 1
.L269:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L270
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L276
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L271
	l.ori	r25, r0, 1
	l.j	.L272
	l.movhi	r25, hi(0)
.L276:
	l.movhi	r25, hi(0)
.L271:
	l.addi	r16, r16, 1
.L272:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.j	.L273
	l.ori	r23, r0, 9
.L282:
	l.sub	r11, r11, r21
	l.sub	r11, r11, r17
.L273:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r23
	l.bnf	.L284
	l.ori	r17, r0, 30
	l.srl	r17, r12, r17
	l.ori	r21, r0, 2
	l.sll	r19, r11, r21
	l.or	r19, r17, r19
	l.sll	r17, r12, r21
	l.add	r12, r17, r12
	l.sfltu	r12, r17
	l.bf	.L280
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L280:
	l.add	r19, r19, r11
	l.add	r17, r17, r19
	l.add	r19, r12, r12
	l.sfltu	r19, r12
	l.bf	.L281
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L281:
	l.add	r17, r17, r17
	l.add	r11, r11, r17
	l.addi	r16, r16, 1
	l.lbs	r12, -1(r16)
	l.addi	r12, r12, -48
	l.ori	r17, r0, 31
	l.sra	r21, r12, r17
	l.sub	r12, r19, r12
	l.sfgtu	r12, r19
	l.bf	.L282
	l.ori	r17, r0, 1
	l.j	.L282
	l.movhi	r17, hi(0)
.L284:
	l.movhi	r17, hi(0)
	l.sfne	r25, r17
	l.bf	.L286
	l.lwz	r16, 0(r1)
	l.sub	r19, r17, r12
	l.sfne	r17, r12
	l.bnf	.L285
	l.ori	r21, r0, 1
.L279:
	l.sub	r17, r17, r11
	l.sub	r11, r17, r21
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
.L286:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L285:
	l.j	.L279
	l.movhi	r21, hi(0)
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
	l.j	.L288
	l.or	r24, r7, r7
.L296:
	l.srl	r18, r18, r28
.L288:
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L295
	l.ori	r28, r0, 1
	l.srl	r16, r18, r28
	l.mul	r16, r16, r20
	l.add	r16, r22, r16
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L296
	l.sfles	r11, r17
	l.bf	.L293
	l.add	r22, r16, r20
	l.ori	r17, r0, 1
	l.srl	r17, r18, r17
	l.addi	r18, r18, -1
	l.j	.L288
	l.sub	r18, r18, r17
.L295:
	l.movhi	r11, hi(0)
.L291:
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
.L293:
	l.j	.L291
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
	l.j	.L298
	l.or	r20, r4, r4
.L305:
	l.sra	r18, r18, r17
.L298:
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L304
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
	l.bf	.L302
	l.sfles	r11, r17
	l.bf	.L305
	l.ori	r17, r0, 1
	l.add	r20, r16, r22
	l.j	.L305
	l.addi	r18, r18, -1
.L304:
	l.movhi	r11, hi(0)
.L299:
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
.L302:
	l.j	.L299
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
	l.or	r11, r3, r3
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L308
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L311
	l.ori	r17, r0, 1
.L310:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L308:
	l.jr	r9
	 l.nop

.L311:
	l.j	.L310
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
	l.bf	.L315
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L315:
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
	l.j	.L331
	l.lwz	r17, 0(r3)
.L332:
	l.lwz	r17, 0(r3)
.L331:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L326
	l.sfne	r4, r17
	l.bf	.L332
	l.addi	r3, r3, 4
	l.addi	r3, r3, -4
.L326:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L330
	l.movhi	r11, hi(0)
	l.or	r11, r3, r3
.L330:
	l.jr	r9
	 l.nop

	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.j	.L340
	l.lwz	r19, 0(r3)
.L341:
	l.addi	r4, r4, 4
	l.lwz	r19, 0(r3)
.L340:
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L335
	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L335
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfne	r17, r19
	l.bf	.L341
	l.addi	r3, r3, 4
	l.addi	r3, r3, -4
.L335:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L337
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L337
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L337:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L343:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L343
	l.sw	-4(r17), r19
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.j	.L346
	l.or	r11, r3, r3
.L347:
	l.addi	r11, r11, 4
.L346:
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L347
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
.L357:
	l.sfeq	r5, r21
	l.bf	.L356
	l.movhi	r17, hi(0)
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L350
	l.sfeq	r19, r21
	l.bf	.L350
	l.sfne	r17, r21
	l.bnf	.L356
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.j	.L357
	l.addi	r4, r4, 4
.L350:
	l.movhi	r17, hi(0)
.L356:
	l.sfeq	r5, r17
	l.bf	.L353
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L352
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L352
	l.ori	r11, r0, 1
	l.j	.L352
	l.movhi	r11, hi(0)
.L353:
	l.movhi	r11, hi(0)
.L352:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.j	.L365
	l.movhi	r17, hi(0)
.L361:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
.L365:
	l.sfeq	r5, r17
	l.bf	.L366
	l.movhi	r17, hi(0)
	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L361
	l.movhi	r17, hi(0)
.L366:
	l.sfeq	r5, r17
	l.bf	.L364
	l.movhi	r11, hi(0)
	l.or	r11, r3, r3
.L364:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.j	.L375
	l.movhi	r17, hi(0)
.L370:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
.L375:
	l.sfeq	r5, r17
	l.bf	.L376
	l.movhi	r17, hi(0)
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L370
	l.movhi	r17, hi(0)
.L376:
	l.sfeq	r5, r17
	l.bf	.L372
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L371
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L371
	l.ori	r11, r0, 1
	l.j	.L371
	l.movhi	r11, hi(0)
.L372:
	l.movhi	r11, hi(0)
.L371:
	l.jr	r9
	 l.nop

	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
	l.j	.L378
	l.xori	r21, r0, -1
.L379:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
.L378:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L379
	 l.nop

	l.jr	r9
	 l.nop

	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.sfeq	r3, r4
	l.bf	.L381
	l.or	r11, r3, r3
	l.sub	r17, r3, r4
	l.ori	r21, r0, 2
	l.sll	r19, r5, r21
	l.sfgeu	r17, r19
	l.bf	.L386
	l.or	r17, r3, r3
	l.or	r5, r19, r19
	l.j	.L383
	l.xori	r21, r0, -4
.L384:
	l.lwz	r19, 0(r17)
	l.add	r17, r11, r5
	l.sw	0(r17), r19
.L383:
	l.addi	r5, r5, -4
	l.sfne	r5, r21
	l.bf	.L384
	l.add	r17, r4, r5
.L381:
	l.jr	r9
	 l.nop

.L385:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
.L382:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L385
	 l.nop

	l.j	.L381
	 l.nop

.L386:
	l.j	.L382
	l.xori	r21, r0, -1
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
	l.j	.L388
	l.xori	r19, r0, -1
.L389:
	l.addi	r17, r17, 4
	l.sw	-4(r17), r4
.L388:
	l.addi	r5, r5, -1
	l.sfne	r5, r19
	l.bf	.L389
	 l.nop

	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L391
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.j	.L392
	l.add	r4, r4, r5
.L393:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sb	0(r4), r19
.L392:
	l.sfne	r17, r3
	l.bf	.L393
	 l.nop

.L390:
	l.jr	r9
	 l.nop

.L391:
	l.bf	.L390
	l.add	r5, r4, r5
	l.j	.L395
	l.or	r17, r3, r3
.L396:
	l.addi	r17, r17, 1
	l.addi	r4, r4, 1
	l.lbs	r19, -1(r17)
	l.sb	-1(r4), r19
.L395:
	l.sfne	r4, r5
	l.bf	.L396
	 l.nop

	l.j	.L390
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
	l.bnf	.L402
	l.sll	r12, r4, r5
	l.or	r11, r25, r25
	l.movhi	r21, hi(0)
.L402:
	l.sfges	r19, r21
	l.bnf	.L399
	 l.nop

	l.movhi	r12, hi(0)
.L399:
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
	l.bnf	.L403
	l.srl	r3, r3, r5
	l.or	r4, r23, r23
	l.movhi	r17, hi(0)
.L403:
	l.sfges	r19, r17
	l.bnf	.L401
	 l.nop

	l.movhi	r3, hi(0)
.L401:
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
	l.bnf	.L409
	l.srl	r11, r3, r5
	l.or	r12, r25, r25
	l.movhi	r21, hi(0)
.L409:
	l.sfges	r19, r21
	l.bnf	.L406
	 l.nop

	l.movhi	r11, hi(0)
.L406:
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
	l.bnf	.L410
	l.sll	r4, r4, r5
	l.or	r3, r23, r23
	l.movhi	r17, hi(0)
.L410:
	l.sfges	r19, r17
	l.bnf	.L408
	 l.nop

	l.movhi	r4, hi(0)
.L408:
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
.L423:
	l.sfne	r11, r19
	l.bnf	.L427
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L428
	 l.nop

	l.j	.L423
	l.addi	r11, r11, 1
.L428:
	l.addi	r11, r11, 1
.L425:
	l.jr	r9
	 l.nop

.L427:
	l.j	.L425
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L433
	 l.nop

	l.j	.L431
	l.ori	r11, r0, 1
.L432:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
.L431:
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L432
	l.ori	r17, r0, 1
.L430:
	l.jr	r9
	 l.nop

.L433:
	l.j	.L430
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
	l.bf	.L435
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L435
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L435:
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
	l.bf	.L441
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L441
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L441:
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
	l.bf	.L447
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L447
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L447:
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
	l.bf	.L455
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r11, r11
	l.jal	__nesf2
	l.or	r3, r20, r20
	l.sfne	r11, r18
	l.bnf	.L455
	l.sfges	r16, r18
	l.bnf	.L463
	l.movhi	r17, ha(.LC9)
	l.j	.L459
	l.lwz	r18, lo(.LC9)(r17)
.L463:
	l.movhi	r17, ha(.LC8)
	l.j	.L459
	l.lwz	r18, lo(.LC8)(r17)
.L458:
	l.ori	r17, r0, 31
.L464:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L455
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L459:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L464
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L458
	l.or	r20, r11, r11
.L455:
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
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L466
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
	l.bnf	.L466
	l.sfges	r16, r18
	l.bnf	.L474
	l.movhi	r17, ha(.LC11)
	l.addi	r19, r17, lo(.LC11)
	l.lwz	r20, lo(.LC11)(r17)
	l.j	.L470
	l.lwz	r18, 4(r19)
.L474:
	l.movhi	r17, ha(.LC10)
	l.addi	r19, r17, lo(.LC10)
	l.lwz	r20, lo(.LC10)(r17)
	l.j	.L470
	l.lwz	r18, 4(r19)
.L469:
	l.ori	r17, r0, 31
.L475:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L466
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L470:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L475
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L469
	l.or	r22, r12, r12
.L466:
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
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L477
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
	l.bnf	.L477
	l.sfges	r16, r18
	l.bnf	.L485
	l.movhi	r17, ha(.LC13)
	l.addi	r19, r17, lo(.LC13)
	l.lwz	r20, lo(.LC13)(r17)
	l.j	.L481
	l.lwz	r18, 4(r19)
.L485:
	l.movhi	r17, ha(.LC12)
	l.addi	r19, r17, lo(.LC12)
	l.lwz	r20, lo(.LC12)(r17)
	l.j	.L481
	l.lwz	r18, 4(r19)
.L480:
	l.ori	r17, r0, 31
.L486:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L477
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L481:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L486
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L480
	l.or	r22, r12, r12
.L477:
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
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.j	.L488
	l.or	r17, r3, r3
.L489:
	l.addi	r4, r4, 1
	l.lbs	r21, -1(r4)
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r17)
	l.xor	r19, r19, r21
	l.sb	-1(r17), r19
.L488:
	l.sfne	r17, r5
	l.bf	.L489
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
	l.j	.L491
	l.add	r11, r20, r11
.L493:
	l.addi	r18, r18, 1
	l.addi	r11, r11, 1
	l.addi	r16, r16, -1
.L491:
	l.movhi	r19, hi(0)
	l.sfeq	r16, r19
	l.bf	.L496
	l.movhi	r17, hi(0)
	l.lbs	r17, 0(r18)
	l.sfne	r17, r19
	l.bf	.L493
	l.sb	0(r11), r17
	l.movhi	r17, hi(0)
.L496:
	l.sfne	r16, r17
	l.bf	.L494
	 l.nop

	l.sb	0(r11), r0
.L494:
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
.L498:
	l.sfeq	r11, r4
	l.bf	.L499
	l.add	r17, r3, r11
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L500
	 l.nop

.L499:
	l.jr	r9
	 l.nop

.L500:
	l.j	.L498
	l.addi	r11, r11, 1
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L502:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L510
	l.movhi	r11, hi(0)
	l.or	r17, r4, r4
.L505:
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L509
	l.addi	r17, r17, 1
	l.lbs	r21, -1(r17)
	l.lbs	r19, 0(r3)
	l.sfeq	r21, r19
	l.bnf	.L505
	l.or	r11, r3, r3
.L503:
.L510:
	l.jr	r9
	 l.nop

.L509:
	l.j	.L502
	l.addi	r3, r3, 1
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.j	.L513
	l.movhi	r11, hi(0)
.L516:
	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L517
	 l.nop

.L513:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bnf	.L516
	 l.nop

	l.j	.L516
	l.or	r11, r3, r3
.L517:
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
	l.bf	.L522
	l.or	r20, r11, r11
	l.lbs	r22, 0(r18)
.L520:
	l.or	r4, r22, r22
	l.jal	strchr
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L525
	l.or	r16, r11, r11
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.jal	strncmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L526
	l.or	r11, r16, r16
	l.j	.L520
	l.addi	r16, r16, 1
.L525:
	l.j	.L519
	l.movhi	r11, hi(0)
.L522:
	l.or	r11, r16, r16
.L519:
.L526:
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
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.or	r22, r5, r5
	l.or	r20, r6, r6
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L541
	l.movhi	r17, ha(.LC14)
.L543:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L538
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L542
	l.movhi	r17, hi(-2147483648)
	l.or	r11, r18, r18
	l.or	r12, r16, r16
.L531:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L541:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L543
	l.movhi	r17, ha(.LC14)
	l.movhi	r17, hi(-2147483648)
.L542:
	l.xor	r11, r18, r17
	l.j	.L531
	l.or	r12, r16, r16
.L538:
	l.or	r11, r18, r18
	l.j	.L531
	l.or	r12, r16, r16
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
	l.bf	.L549
	l.add	r20, r3, r20
	l.sfltu	r4, r6
	l.bf	.L550
	l.or	r18, r5, r5
	l.addi	r24, r5, 1
	l.j	.L546
	l.addi	r22, r6, -1
.L547:
	l.addi	r16, r16, 1
.L546:
	l.sfleu	r16, r20
	l.bnf	.L553
	l.movhi	r11, hi(0)
	l.lbs	r19, 0(r16)
	l.lbs	r17, 0(r18)
	l.sfne	r19, r17
	l.bf	.L547
	l.or	r5, r22, r22
	l.or	r4, r24, r24
	l.jal	memcmp
	l.addi	r3, r16, 1
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L546
	l.addi	r16, r16, 1
	l.addi	r16, r16, -1
	l.or	r11, r16, r16
.L553:
.L545:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L549:
	l.j	.L545
	l.or	r11, r3, r3
.L550:
	l.j	.L545
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
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r28, r5, r5
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L577
	l.movhi	r17, hi(-2147483648)
	l.movhi	r30, hi(0)
.L557:
	l.movhi	r17, ha(.LC16)
	l.addi	r19, r17, lo(.LC16)
	l.lwz	r5, lo(.LC16)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L578
	l.movhi	r20, hi(0)
	l.movhi	r17, ha(.LC16)
	l.addi	r17, r17, lo(.LC16)
	l.lwz	r26, 0(r17)
	l.lwz	r24, 4(r17)
	l.j	.L559
	l.movhi	r22, ha(.LC17)
.L577:
	l.xor	r16, r16, r17
	l.j	.L557
	l.ori	r30, r0, 1
.L561:
	l.addi	r20, r20, 1
	l.addi	r17, r22, lo(.LC17)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r16, r11, r11
	l.or	r18, r12, r12
.L559:
	l.or	r5, r26, r26
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L561
	l.lwz	r5, lo(.LC17)(r22)
.L562:
.L580:
	l.movhi	r17, hi(0)
.L581:
	l.sfeq	r30, r17
.L579:
	l.bf	.L566
	l.sw	0(r28), r20
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r16, r17
.L566:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
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
.L578:
	l.movhi	r17, ha(.LC17)
	l.addi	r19, r17, lo(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bnf	.L580
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bnf	.L581
	l.movhi	r17, hi(0)
	l.movhi	r20, hi(0)
	l.movhi	r17, ha(.LC17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r24, 0(r17)
	l.j	.L564
	l.lwz	r22, 4(r17)
.L565:
	l.addi	r20, r20, -1
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r16, r11, r11
	l.or	r18, r12, r12
.L564:
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L565
	l.or	r5, r16, r16
	l.j	.L579
	l.sfeq	r30, r17
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r9
	l.or	r16, r4, r4
	l.or	r18, r5, r5
	l.or	r20, r6, r6
	l.or	r22, r3, r3
	l.movhi	r26, hi(0)
	l.j	.L583
	l.movhi	r24, hi(0)
.L586:
	l.add	r18, r18, r18
	l.add	r18, r21, r18
	l.or	r20, r17, r17
	l.ori	r21, r0, 1
	l.srl	r16, r16, r21
	l.ori	r17, r0, 31
	l.sll	r17, r22, r17
	l.or	r16, r17, r16
	l.srl	r22, r22, r21
	l.add	r26, r19, r11
	l.or	r24, r12, r12
.L583:
	l.or	r17, r22, r16
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L588
	l.movhi	r5, hi(0)
	l.andi	r6, r16, 1
	l.or	r3, r18, r18
	l.jal	__muldi3
	l.or	r4, r20, r20
	l.add	r12, r24, r12
	l.sfltu	r12, r24
	l.bf	.L585
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L585:
	l.add	r11, r26, r11
	l.add	r17, r20, r20
	l.sfltu	r17, r20
	l.bf	.L586
	l.ori	r21, r0, 1
	l.j	.L586
	l.movhi	r21, hi(0)
.L588:
	l.or	r11, r26, r26
	l.or	r12, r24, r24
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L590
	l.ori	r17, r0, 1
.L594:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L590:
	l.sfltu	r4, r11
	l.bnf	.L601
	l.movhi	r21, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L598
	l.sfges	r4, r21
	l.bf	.L594
	 l.nop

	l.j	.L604
	l.movhi	r19, hi(0)
.L601:
	l.j	.L592
	l.movhi	r19, hi(0)
.L598:
	l.j	.L592
	l.movhi	r19, hi(0)
.L603:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L592:
	l.movhi	r21, hi(0)
.L604:
	l.sfne	r17, r21
	l.bnf	.L602
	l.sfltu	r11, r4
	l.bf	.L603
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.j	.L603
	l.or	r19, r19, r17
.L602:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L600
	 l.nop

	l.or	r11, r19, r19
.L600:
	l.jr	r9
	 l.nop

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
	l.bf	.L607
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
.L607:
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
	l.bf	.L615
	 l.nop

	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L615:
	l.jr	r9
	l.ori	r11, r0, 63
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.j	.L621
	l.movhi	r11, hi(0)
.L622:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.srl	r3, r3, r19
	l.add	r4, r4, r4
	l.add	r11, r17, r11
.L621:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L622
	l.ori	r19, r0, 1
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.ori	r17, r0, 3
	l.srl	r29, r5, r17
	l.xori	r17, r0, -8
	l.sfltu	r3, r4
	l.bf	.L624
	l.and	r17, r5, r17
	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L625
	l.xori	r21, r0, -1
.L624:
	l.or	r21, r4, r4
	l.or	r19, r3, r3
	l.j	.L626
	l.movhi	r27, hi(0)
.L627:
	l.lwz	r23, 4(r21)
	l.lwz	r25, 0(r21)
	l.sw	0(r19), r25
	l.sw	4(r19), r23
	l.addi	r27, r27, 1
	l.addi	r21, r21, 8
	l.addi	r19, r19, 8
.L626:
	l.sfne	r27, r29
	l.bf	.L627
	l.sfgtu	r5, r17
	l.j	.L633
	 l.nop

.L629:
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
	l.sfgtu	r5, r17
.L633:
	l.bf	.L629
	l.add	r19, r4, r17
.L623:
	l.jr	r9
	 l.nop

.L631:
	l.add	r17, r4, r5
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L625:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L631
	 l.nop

	l.j	.L623
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfltu	r3, r4
	l.bf	.L635
	l.srl	r23, r5, r17
	l.add	r17, r4, r5
	l.sfgeu	r17, r3
	l.bf	.L636
	l.xori	r21, r0, -1
.L635:
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.j	.L637
	l.add	r23, r23, r4
.L638:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.addi	r19, r19, 2
.L637:
	l.sfne	r17, r23
	l.bf	.L638
	 l.nop

	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L634
	l.addi	r5, r5, -1
	l.add	r4, r4, r5
	l.add	r3, r3, r5
	l.lbs	r17, 0(r4)
	l.sb	0(r3), r17
.L634:
	l.jr	r9
	 l.nop

.L640:
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L636:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L640
	l.add	r17, r4, r5
	l.j	.L634
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
	l.bf	.L643
	l.and	r17, r5, r17
	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L644
	l.xori	r21, r0, -1
.L643:
	l.or	r19, r4, r4
	l.or	r21, r3, r3
	l.ori	r23, r0, 2
	l.sll	r25, r25, r23
	l.j	.L645
	l.add	r25, r25, r4
.L646:
	l.lwz	r23, 0(r19)
	l.sw	0(r21), r23
	l.addi	r19, r19, 4
	l.addi	r21, r21, 4
.L645:
	l.sfne	r19, r25
	l.bf	.L646
	l.sfgtu	r5, r17
	l.j	.L652
	 l.nop

.L648:
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
	l.sfgtu	r5, r17
.L652:
	l.bf	.L648
	l.add	r19, r4, r17
.L642:
	l.jr	r9
	 l.nop

.L650:
	l.add	r17, r4, r5
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L644:
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L650
	 l.nop

	l.j	.L642
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
	l.ori	r19, r0, 16
	l.ori	r21, r0, 15
.L664:
	l.sfne	r11, r19
	l.bnf	.L665
	l.sub	r17, r21, r11
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L665
	 l.nop

	l.j	.L664
	l.addi	r11, r11, 1
.L665:
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
.L668:
	l.sfne	r11, r19
	l.bnf	.L669
	l.sra	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L669
	 l.nop

	l.j	.L668
	l.addi	r11, r11, 1
.L669:
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
	l.bf	.L678
	l.movhi	r17, ha(.LC18)
	l.jal	__fixsfsi
	l.or	r3, r16, r16
.L674:
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L678:
	l.lwz	r4, lo(.LC18)(r17)
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L674
	l.add	r11, r11, r17
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.movhi	r17, hi(0)
	l.j	.L680
	l.ori	r21, r0, 16
.L681:
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.add	r11, r19, r11
.L680:
	l.sfne	r17, r21
	l.bf	.L681
	l.sra	r19, r3, r17
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
	l.j	.L683
	l.ori	r21, r0, 16
.L684:
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.add	r11, r19, r11
.L683:
	l.sfne	r17, r21
	l.bf	.L684
	l.sra	r19, r3, r17
	l.jr	r9
	 l.nop

	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.j	.L686
	l.movhi	r11, hi(0)
.L687:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.srl	r3, r3, r19
	l.add	r4, r4, r4
	l.add	r11, r17, r11
.L686:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L687
	l.ori	r19, r0, 1
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L692
	 l.nop

	l.j	.L693
	l.movhi	r11, hi(0)
.L691:
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r3, r3, r3
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.add	r11, r17, r11
	l.movhi	r17, hi(0)
.L693:
	l.sfne	r4, r17
	l.bf	.L691
	l.andi	r17, r4, 1
.L689:
	l.jr	r9
	 l.nop

.L692:
	l.j	.L689
	l.movhi	r11, hi(0)
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L695
	l.ori	r17, r0, 1
.L699:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L695:
	l.sfltu	r4, r11
	l.bnf	.L706
	l.movhi	r21, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L703
	l.sfges	r4, r21
	l.bf	.L699
	 l.nop

	l.j	.L709
	l.movhi	r19, hi(0)
.L706:
	l.j	.L697
	l.movhi	r19, hi(0)
.L703:
	l.j	.L697
	l.movhi	r19, hi(0)
.L708:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L697:
	l.movhi	r21, hi(0)
.L709:
	l.sfne	r17, r21
	l.bnf	.L707
	l.sfltu	r11, r4
	l.bf	.L708
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.j	.L708
	l.or	r19, r19, r17
.L707:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L705
	 l.nop

	l.or	r11, r19, r19
.L705:
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
	l.bf	.L713
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L711
	l.ori	r11, r0, 1
	l.j	.L711
	l.movhi	r11, hi(0)
.L713:
	l.xori	r11, r0, -1
.L711:
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
	l.bf	.L719
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L717
	l.ori	r11, r0, 1
	l.j	.L717
	l.movhi	r11, hi(0)
.L719:
	l.xori	r11, r0, -1
.L717:
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
	l.bnf	.L734
	 l.nop

	l.movhi	r21, hi(0)
.L727:
	l.ori	r19, r0, 33
	l.j	.L728
	l.movhi	r11, hi(0)
.L734:
	l.sub	r4, r0, r4
	l.j	.L727
	l.ori	r21, r0, 1
.L730:
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r3, r3, r3
	l.ori	r23, r0, 1
	l.sra	r4, r4, r23
	l.add	r11, r11, r17
.L728:
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L735
	l.sfeq	r21, r17
	l.addi	r19, r19, -1
	l.andi	r19, r19, 0xff
	l.sfne	r19, r17
	l.bf	.L730
	l.andi	r17, r4, 1
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
.L735:
	l.bf	.L731
	 l.nop

	l.sub	r11, r0, r11
.L731:
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
	l.bnf	.L742
	l.sw	4(r1), r9
	l.movhi	r16, hi(0)
.L737:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L743
	 l.nop

.L738:
	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L744
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L744:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L742:
	l.sub	r3, r0, r3
	l.j	.L737
	l.ori	r16, r0, 1
.L743:
	l.sub	r4, r0, r4
	l.j	.L738
	l.xori	r16, r16, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.movhi	r19, hi(0)
	l.sfges	r3, r19
	l.bnf	.L751
	l.or	r17, r4, r4
	l.movhi	r16, hi(0)
.L746:
	l.movhi	r19, hi(0)
	l.sfges	r17, r19
	l.bf	.L747
	l.or	r4, r17, r17
	l.sub	r4, r0, r17
.L747:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L752
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L752:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L751:
	l.sub	r3, r0, r3
	l.j	.L746
	l.ori	r16, r0, 1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.ori	r19, r0, 17
	l.ori	r17, r0, 1
.L754:
	l.sfltu	r4, r11
	l.bnf	.L765
	l.movhi	r23, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r23
	l.bf	.L762
	l.ori	r21, r0, 16
	l.sll	r21, r4, r21
	l.sfges	r21, r23
	l.bnf	.L766
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.j	.L754
	l.andi	r17, r17, 0xffff
.L765:
	l.j	.L756
	l.movhi	r19, hi(0)
.L762:
	l.j	.L756
	l.movhi	r19, hi(0)
.L766:
	l.j	.L756
	l.movhi	r19, hi(0)
.L768:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L756:
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L767
	l.sfltu	r11, r4
	l.bf	.L768
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.j	.L768
	l.or	r19, r19, r17
.L767:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L764
	 l.nop

	l.or	r11, r19, r19
.L764:
	l.jr	r9
	 l.nop

	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.or	r11, r3, r3
	l.ori	r19, r0, 33
	l.j	.L770
	l.ori	r17, r0, 1
.L774:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L770:
	l.sfltu	r4, r11
	l.bnf	.L781
	l.movhi	r21, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r19, r21
	l.bf	.L778
	l.sfges	r4, r21
	l.bf	.L774
	 l.nop

	l.j	.L784
	l.movhi	r19, hi(0)
.L781:
	l.j	.L772
	l.movhi	r19, hi(0)
.L778:
	l.j	.L772
	l.movhi	r19, hi(0)
.L783:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
.L772:
	l.movhi	r21, hi(0)
.L784:
	l.sfne	r17, r21
	l.bnf	.L782
	l.sfltu	r11, r4
	l.bf	.L783
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.j	.L783
	l.or	r19, r19, r17
.L782:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L780
	 l.nop

	l.or	r11, r19, r19
.L780:
	l.jr	r9
	 l.nop

	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L786
	l.movhi	r17, hi(0)
	l.movhi	r12, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
.L788:
	l.jr	r9
	 l.nop

.L786:
	l.sfeq	r5, r17
	l.bf	.L789
	l.ori	r17, r0, 32
	l.sll	r12, r4, r5
	l.sll	r11, r3, r5
	l.sub	r17, r17, r5
	l.srl	r4, r4, r17
	l.j	.L788
	l.or	r11, r4, r11
.L789:
	l.or	r11, r3, r3
	l.j	.L788
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L791
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.addi	r5, r5, -32
	l.sra	r12, r3, r5
.L793:
	l.jr	r9
	 l.nop

.L791:
	l.sfeq	r5, r17
	l.bf	.L794
	l.ori	r17, r0, 32
	l.sra	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L793
	l.or	r12, r3, r12
.L794:
	l.or	r11, r3, r3
	l.j	.L793
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
	l.bf	.L798
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L798:
	l.ori	r19, r0, 4
	l.sll	r17, r17, r19
	l.ori	r19, r0, 16
	l.sub	r19, r19, r17
	l.srl	r3, r3, r19
	l.andi	r19, r3, 65280
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L799
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L799:
	l.ori	r21, r0, 3
	l.sll	r19, r19, r21
	l.ori	r21, r0, 8
	l.sub	r21, r21, r19
	l.srl	r3, r3, r21
	l.add	r17, r17, r19
	l.andi	r19, r3, 240
	l.sfeq	r19, r23
	l.bf	.L800
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L800:
	l.ori	r21, r0, 2
	l.sll	r19, r19, r21
	l.ori	r21, r0, 4
	l.sub	r21, r21, r19
	l.srl	r3, r3, r21
	l.add	r17, r17, r19
	l.andi	r19, r3, 12
	l.or	r25, r23, r23
	l.sfeq	r19, r23
	l.bf	.L801
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L801:
	l.add	r19, r19, r19
	l.ori	r21, r0, 2
	l.sub	r23, r21, r19
	l.srl	r3, r3, r23
	l.add	r17, r17, r19
	l.and	r19, r3, r21
	l.sfeq	r19, r25
	l.bf	.L802
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L802:
	l.sub	r21, r21, r3
	l.mul	r11, r11, r21
	l.jr	r9
	l.add	r11, r17, r11
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L805
	l.sfgts	r3, r5
	l.bf	.L806
	l.sfltu	r4, r6
	l.bf	.L807
	l.sfgtu	r4, r6
	l.bf	.L808
	 l.nop

	l.j	.L804
	l.ori	r11, r0, 1
.L805:
	l.movhi	r11, hi(0)
.L804:
	l.jr	r9
	 l.nop

.L806:
	l.j	.L804
	l.ori	r11, r0, 2
.L807:
	l.j	.L804
	l.movhi	r11, hi(0)
.L808:
	l.j	.L804
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
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L812
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L812:
	l.ori	r19, r0, 4
	l.sll	r17, r17, r19
	l.srl	r3, r3, r17
	l.andi	r19, r3, 255
	l.sfeq	r19, r21
	l.bf	.L813
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L813:
	l.ori	r23, r0, 3
	l.sll	r19, r19, r23
	l.srl	r3, r3, r19
	l.add	r17, r17, r19
	l.andi	r19, r3, 15
	l.sfeq	r19, r21
	l.bf	.L814
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L814:
	l.ori	r23, r0, 2
	l.sll	r19, r19, r23
	l.srl	r3, r3, r19
	l.add	r17, r17, r19
	l.andi	r19, r3, 3
	l.sfeq	r19, r21
	l.bf	.L815
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L815:
	l.add	r19, r19, r19
	l.srl	r3, r3, r19
	l.andi	r3, r3, 3
	l.add	r17, r17, r19
	l.xori	r19, r3, -1
	l.andi	r19, r19, 1
	l.ori	r21, r0, 1
	l.srl	r3, r3, r21
	l.sub	r11, r23, r3
	l.sub	r19, r0, r19
	l.and	r11, r11, r19
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
	l.bf	.L817
	l.movhi	r17, hi(0)
	l.movhi	r11, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
.L819:
	l.jr	r9
	 l.nop

.L817:
	l.sfeq	r5, r17
	l.bf	.L820
	l.ori	r17, r0, 32
	l.srl	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L819
	l.or	r12, r3, r12
.L820:
	l.or	r11, r3, r3
	l.j	.L819
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
	l.add	r11, r3, r17
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
	l.bnf	.L826
	l.ori	r11, r0, 1
.L825:
	l.sub	r17, r17, r3
	l.jr	r9
	l.sub	r11, r17, r11
.L826:
	l.j	.L825
	l.movhi	r11, hi(0)
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.xor	r4, r4, r3
	l.ori	r17, r0, 16
	l.srl	r17, r4, r17
	l.xor	r4, r4, r17
	l.ori	r17, r0, 8
	l.srl	r17, r4, r17
	l.xor	r4, r4, r17
	l.ori	r17, r0, 4
	l.srl	r17, r4, r17
	l.xor	r4, r4, r17
	l.andi	r4, r4, 15
	l.ori	r11, r0, 27030
	l.sra	r11, r11, r4
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
	l.bf	.L830
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L830:
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
	l.bf	.L831
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L831:
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
	l.bf	.L832
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L832:
	l.add	r21, r23, r21
	l.add	r19, r19, r21
	l.movhi	r21, hi(252641280)
	l.ori	r21, r21, 3855
	l.and	r19, r19, r21
	l.and	r17, r17, r21
	l.add	r17, r19, r17
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.add	r17, r17, r19
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
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.ori	r17, r0, 31
	l.srl	r26, r5, r17
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.lwz	r24, lo(.LC19)(r17)
	l.j	.L837
	l.lwz	r22, 4(r19)
.L835:
	l.ori	r17, r0, 31
.L841:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L842
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L837:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L841
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L835
	l.or	r22, r12, r12
.L842:
	l.sfeq	r26, r17
	l.bf	.L839
	l.or	r11, r24, r24
	l.movhi	r17, ha(.LC19)
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.jal	__divdf3
	l.lwz	r4, 4(r17)
.L838:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L839:
	l.j	.L838
	l.or	r12, r22, r22
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
	l.j	.L846
	l.lwz	r20, lo(.LC20)(r17)
.L844:
	l.ori	r17, r0, 31
.L850:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L852
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L846:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L850
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L844
	l.or	r20, r11, r11
.L852:
	l.sfeq	r22, r17
	l.bf	.L851
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.movhi	r17, ha(.LC20)
	l.jal	__divsf3
	l.lwz	r3, lo(.LC20)(r17)
.L847:
.L851:
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
	l.bf	.L855
	l.sfgtu	r3, r5
	l.bf	.L856
	l.sfltu	r4, r6
	l.bf	.L857
	l.sfgtu	r4, r6
	l.bf	.L858
	 l.nop

	l.j	.L854
	l.ori	r11, r0, 1
.L855:
	l.movhi	r11, hi(0)
.L854:
	l.jr	r9
	 l.nop

.L856:
	l.j	.L854
	l.ori	r11, r0, 2
.L857:
	l.j	.L854
	l.movhi	r11, hi(0)
.L858:
	l.j	.L854
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
