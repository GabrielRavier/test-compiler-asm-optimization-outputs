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
	l.movhi	r17, hi(0)
	l.sfne	r6, r17
	l.bnf	.L16
	l.andi	r5, r5, 0xff
.L9:
	l.lbz	r17, 0(r4)
	l.sfne	r17, r5
	l.bnf	.L10
	l.sb	0(r3), r17
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bnf	.L9
	l.addi	r3, r3, 1
.L10:
	l.movhi	r17, hi(0)
.L16:
	l.sfeq	r6, r17
	l.bf	.L15
	l.movhi	r11, hi(0)
	l.addi	r11, r3, 1
.L8:
.L15:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L22
	l.andi	r4, r4, 0xff
.L18:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bnf	.L22
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bnf	.L18
	l.addi	r3, r3, 1
.L22:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L24
	l.or	r11, r3, r3
	l.movhi	r11, hi(0)
.L24:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L32
	l.sfeq	r5, r17
.L26:
	l.lbz	r19, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L27
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.sfeq	r5, r17
	l.bnf	.L26
	l.addi	r4, r4, 1
.L27:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
.L32:
	l.bf	.L33
	l.movhi	r11, hi(0)
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
.L25:
.L33:
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L35
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L35:
	l.or	r11, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
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
	l.lbz	r17, 0(r11)
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
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L54
	l.andi	r4, r4, 0xff
.L51:
	l.andi	r17, r17, 0xff
	l.sfne	r17, r4
	l.bnf	.L54
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 1
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L51
	 l.nop

.L54:
	l.jr	r9
	l.or	r11, r3, r3
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.or	r11, r3, r3
.L58:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L57
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L58
	l.addi	r11, r11, 1
	l.movhi	r11, hi(0)
.L57:
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
	l.bnf	.L62
	 l.nop

	l.movhi	r19, hi(0)
	l.sfne	r17, r19
.L66:
	l.bnf	.L65
	l.andi	r17, r17, 0xff
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfne	r17, r11
	l.bnf	.L66
	l.sfne	r17, r19
.L62:
	l.andi	r17, r17, 0xff
.L65:
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
	l.bf	.L68
	l.or	r11, r3, r3
.L69:
	l.addi	r11, r11, 1
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L69
	 l.nop

.L68:
	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L78
	l.movhi	r11, hi(0)
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L74
	l.addi	r5, r5, -1
	l.add	r19, r3, r5
.L75:
	l.lbz	r17, 0(r4)
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L79
	l.sfeq	r3, r19
	l.bf	.L80
	l.sfeq	r17, r11
	l.bnf	.L74
	l.movhi	r17, hi(0)
	l.addi	r3, r3, 1
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bnf	.L75
	l.addi	r4, r4, 1
.L74:
	l.lbz	r17, 0(r4)
.L79:
.L80:
	l.sub	r11, r11, r17
.L72:
.L78:
	l.jr	r9
	 l.nop

	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L81
	l.xori	r17, r0, -2
	l.and	r5, r5, r17
	l.add	r19, r3, r5
.L83:
	l.lbz	r17, 1(r3)
	l.sb	0(r4), r17
	l.lbz	r17, 0(r3)
	l.sb	1(r4), r17
	l.addi	r3, r3, 2
	l.sfne	r3, r19
	l.bf	.L83
	l.addi	r4, r4, 2
.L81:
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
	l.bf	.L86
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L86:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L88
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L88:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L91
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L89
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L89:
	l.jr	r9
	 l.nop

.L91:
	l.j	.L89
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L93
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L93
	 l.nop

	l.movhi	r11, hi(0)
.L93:
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
	l.bf	.L98
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L98:
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
	l.bf	.L100
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L100:
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
	l.bf	.L102
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L102:
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
	l.bf	.L104
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L104:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L107
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bf	.L105
	l.ori	r11, r0, 1
	l.j	.L105
	l.movhi	r11, hi(0)
.L107:
	l.ori	r11, r0, 1
.L105:
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
	l.bf	.L110
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L110:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L111
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L111
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L111
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L111
	 l.nop

	l.movhi	r11, hi(0)
.L111:
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
	l.bf	.L118
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L118:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L128
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L124
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L124
	l.movhi	r17, hi(-65536)
	l.ori	r19, r17, 8192
	l.add	r19, r3, r19
	l.ori	r21, r0, 8184
	l.sfleu	r19, r21
	l.bf	.L124
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L125
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bf	.L119
	l.ori	r11, r0, 1
	l.j	.L119
	l.movhi	r11, hi(0)
.L128:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L119
	l.ori	r11, r0, 1
.L125:
	l.j	.L119
	l.movhi	r11, hi(0)
.L124:
	l.ori	r11, r0, 1
.L119:
	l.jr	r9
	 l.nop

	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L129
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bf	.L129
	 l.nop

	l.movhi	r11, hi(0)
.L129:
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
	l.bf	.L137
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L138
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L141
	l.movhi	r17, ha(.LC0)
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
.L134:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L137:
	l.or	r11, r18, r18
	l.j	.L134
	l.or	r12, r16, r16
.L138:
	l.or	r11, r22, r22
	l.j	.L134
	l.or	r12, r20, r20
.L141:
	l.addi	r19, r17, lo(.LC0)
	l.lwz	r11, lo(.LC0)(r17)
	l.j	.L134
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
	l.bf	.L146
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L147
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L150
	l.movhi	r17, ha(.LC1)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
.L143:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L146:
	l.j	.L143
	l.or	r11, r16, r16
.L147:
	l.j	.L143
	l.or	r11, r18, r18
.L150:
	l.j	.L143
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
	l.or	r22, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L160
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L159
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L154
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bf	.L160
	 l.nop

.L159:
	l.or	r11, r22, r22
	l.j	.L152
	l.or	r12, r18, r18
.L154:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L155
	 l.nop

	l.or	r12, r20, r20
.L156:
	l.or	r11, r16, r16
.L152:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L155:
	l.or	r16, r22, r22
	l.j	.L156
	l.or	r12, r18, r18
.L160:
	l.or	r11, r16, r16
	l.j	.L152
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
	l.sfne	r19, r20
	l.bf	.L162
	l.or	r11, r16, r16
	l.j	.L174
	l.or	r11, r18, r18
.L164:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L162
	l.or	r11, r16, r16
.L169:
	l.or	r11, r18, r18
.L162:
.L174:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L168:
	l.j	.L162
	l.or	r11, r16, r16
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
	l.or	r22, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L183
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L182
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L177
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bf	.L183
	 l.nop

.L182:
	l.or	r11, r22, r22
	l.j	.L175
	l.or	r12, r18, r18
.L177:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L178
	 l.nop

	l.or	r12, r20, r20
.L179:
	l.or	r11, r16, r16
.L175:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L178:
	l.or	r16, r22, r22
	l.j	.L179
	l.or	r12, r18, r18
.L183:
	l.or	r11, r16, r16
	l.j	.L175
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
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L191
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L193
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L187
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L193
	 l.nop

.L191:
	l.or	r11, r20, r20
	l.j	.L185
	l.or	r12, r22, r22
.L187:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L195
	 l.nop

.L193:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
.L185:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L195:
	l.or	r16, r20, r20
	l.j	.L193
	l.or	r18, r22, r22
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
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L202
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L203
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r16
	l.and	r17, r17, r18
	l.sfeq	r19, r17
	l.bf	.L198
	l.or	r4, r18, r18
	l.sfne	r19, r20
	l.bf	.L196
	l.or	r11, r16, r16
	l.j	.L208
	l.or	r11, r18, r18
.L198:
	l.jal	__ltsf2
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L196
	l.or	r11, r16, r16
.L202:
	l.or	r11, r18, r18
.L196:
.L208:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L203:
	l.j	.L196
	l.or	r11, r16, r16
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
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L215
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L217
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L211
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L217
	 l.nop

.L215:
	l.or	r11, r20, r20
	l.j	.L209
	l.or	r12, r22, r22
.L211:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L219
	 l.nop

.L217:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
.L209:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L219:
	l.or	r16, r20, r20
	l.j	.L217
	l.or	r18, r22, r22
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.movhi	r19, ha(.LANCHOR0)
	l.sfeq	r3, r17
	l.bf	.L221
	l.addi	r19, r19, lo(.LANCHOR0)
	l.movhi	r21, ha(.LANCHOR1)
	l.addi	r21, r21, lo(.LANCHOR1)
.L222:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbz	r17, 0(r17)
	l.sb	0(r19), r17
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L222
	l.addi	r19, r19, 1
.L221:
	l.sb	0(r19), r0
	l.movhi	r11, ha(.LANCHOR0)
	l.jr	r9
	l.addi	r11, r11, lo(.LANCHOR0)
	.size	l64a, .-l64a
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.movhi	r17, ha(.LANCHOR0)
	l.addi	r17, r17, lo(.LANCHOR0)
	l.addi	r3, r3, -1
	l.sw	12(r17), r3
	l.jr	r9
	l.sw	8(r17), r0
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.movhi	r16, ha(.LANCHOR0)
	l.addi	r16, r16, lo(.LANCHOR0)
	l.movhi	r5, hi(1481703424)
	l.ori	r5, r5, 62509
	l.movhi	r6, hi(1284833280)
	l.ori	r6, r6, 32557
	l.lwz	r3, 8(r16)
	l.jal	__muldi3
	l.lwz	r4, 12(r16)
	l.addi	r19, r12, 1
	l.xori	r17, r0, -1
	l.sfgeu	r12, r17
	l.bf	.L227
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L227:
	l.add	r11, r17, r11
	l.sw	8(r16), r11
	l.sw	12(r16), r19
	l.ori	r17, r0, 1
	l.srl	r11, r11, r17
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L233
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L230
	 l.nop

	l.sw	4(r17), r3
.L230:
	l.jr	r9
	 l.nop

.L233:
	l.sw	4(r3), r0
	l.j	.L230
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L235
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L235:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L234
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L234:
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
	l.bf	.L238
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.movhi	r18, hi(0)
.L240:
	l.or	r14, r16, r16
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L237
	l.addi	r18, r18, 1
	l.sfne	r20, r18
	l.bf	.L240
	l.add	r16, r16, r22
.L238:
	l.addi	r17, r20, 1
	l.sw	0(r30), r17
	l.mul	r20, r22, r20
	l.or	r5, r22, r22
	l.or	r4, r24, r24
	l.jal	memcpy
	l.add	r3, r28, r20
	l.or	r14, r11, r11
.L237:
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
.L246:
	l.or	r28, r16, r16
	l.or	r4, r16, r16
	l.jalr	r22
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L243
	l.addi	r18, r18, 1
	l.sfne	r26, r18
	l.bf	.L246
	l.add	r16, r16, r24
.L244:
	l.movhi	r28, hi(0)
.L243:
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
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L250
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L250:
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
	l.j	.L252
	l.or	r16, r3, r3
.L253:
	l.addi	r16, r16, 1
.L252:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L253
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L259
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bnf	.L254
	l.ori	r23, r0, 1
	l.j	.L255
	l.movhi	r23, hi(0)
.L259:
	l.movhi	r23, hi(0)
.L254:
	l.addi	r16, r16, 1
.L255:
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r19, r21
	l.bnf	.L257
	l.ori	r19, r0, 2
.L264:
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
	l.bf	.L264
	l.ori	r19, r0, 2
.L257:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bf	.L265
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L265:
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
	l.j	.L267
	l.or	r16, r3, r3
.L268:
	l.addi	r16, r16, 1
.L267:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L268
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L274
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bnf	.L269
	l.ori	r23, r0, 1
	l.j	.L270
	l.movhi	r23, hi(0)
.L274:
	l.movhi	r23, hi(0)
.L269:
	l.addi	r16, r16, 1
.L270:
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r19, r21
	l.bnf	.L272
	l.ori	r19, r0, 2
.L279:
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
	l.bf	.L279
	l.ori	r19, r0, 2
.L272:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bf	.L280
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L280:
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
	l.j	.L282
	l.or	r16, r3, r3
.L283:
	l.addi	r16, r16, 1
.L282:
	l.lbs	r18, 0(r16)
	l.jal	isspace
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L283
	l.ori	r17, r0, 43
	l.sfeq	r18, r17
	l.bf	.L284
	l.ori	r17, r0, 45
	l.sfne	r18, r17
	l.bf	.L285
	 l.nop

	l.ori	r11, r0, 1
.L284:
	l.addi	r16, r16, 1
.L285:
	l.lbs	r17, 0(r16)
	l.addi	r19, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r19, r21
	l.movhi	r19, hi(0)
	l.movhi	r12, hi(0)
	l.bf	.L286
	l.ori	r25, r0, 9
.L287:
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L281
	l.sfne	r11, r12
	l.bnf	.L296
	l.ori	r17, r0, 1
.L291:
	l.sub	r19, r11, r19
	l.sub	r19, r19, r17
	l.sub	r12, r11, r12
.L281:
	l.or	r11, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L294:
	l.sub	r19, r19, r21
	l.sub	r19, r19, r17
	l.lbs	r17, 0(r16)
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bnf	.L287
	 l.nop

.L286:
	l.ori	r21, r0, 30
	l.srl	r21, r12, r21
	l.ori	r27, r0, 2
	l.sll	r23, r19, r27
	l.or	r23, r21, r23
	l.sll	r21, r12, r27
	l.add	r12, r21, r12
	l.sfltu	r12, r21
	l.bf	.L292
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L292:
	l.add	r23, r23, r19
	l.add	r21, r21, r23
	l.add	r23, r12, r12
	l.sfltu	r23, r12
	l.bf	.L293
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L293:
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
	l.bf	.L294
	l.ori	r17, r0, 1
	l.j	.L294
	l.movhi	r17, hi(0)
.L296:
	l.j	.L291
	l.movhi	r17, hi(0)
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
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L298
	l.sw	28(r1), r9
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.j	.L301
	l.or	r26, r7, r7
.L302:
	l.or	r16, r28, r28
	l.movhi	r17, hi(0)
.L305:
	l.sfne	r16, r17
	l.bnf	.L297
	l.movhi	r18, hi(0)
.L301:
	l.ori	r17, r0, 1
	l.srl	r28, r16, r17
	l.mul	r18, r28, r20
	l.add	r18, r22, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L302
	l.sfles	r11, r17
	l.bf	.L297
	l.add	r22, r18, r20
	l.addi	r16, r16, -1
	l.j	.L305
	l.sub	r16, r16, r28
.L298:
	l.movhi	r18, hi(0)
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
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L307
	l.sw	28(r1), r9
	l.or	r28, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r24, r8, r8
	l.j	.L310
	l.or	r18, r5, r5
.L313:
	l.sra	r18, r18, r17
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L306
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
	l.bf	.L306
	l.sfles	r11, r17
	l.bf	.L313
	l.ori	r17, r0, 1
	l.add	r22, r16, r20
	l.j	.L313
	l.addi	r18, r18, -1
.L307:
	l.movhi	r16, hi(0)
.L306:
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
	l.sw	0(r3), r17
	l.mul	r17, r17, r5
	l.sub	r4, r4, r17
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
	l.bf	.L316
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L319
	l.ori	r17, r0, 1
.L318:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L316:
	l.jr	r9
	 l.nop

.L319:
	l.j	.L318
	l.movhi	r17, hi(0)
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
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
	l.or	r24, r6, r6
	l.or	r22, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r18, r18
	l.sw	0(r16), r11
	l.sw	4(r16), r12
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__moddi3
	l.or	r4, r18, r18
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.or	r11, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L323
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L323:
	l.jr	r9
	 l.nop

	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.sw	0(r3), r17
	l.mul	r17, r17, r5
	l.sub	r4, r4, r17
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
	l.bf	.L326
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L329
	l.ori	r17, r0, 1
.L328:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L326:
	l.jr	r9
	 l.nop

.L329:
	l.j	.L328
	l.movhi	r17, hi(0)
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
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
	l.or	r24, r6, r6
	l.or	r22, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r18, r18
	l.sw	0(r16), r11
	l.sw	4(r16), r12
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__moddi3
	l.or	r4, r18, r18
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.or	r11, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L340
	 l.nop

	l.sfne	r4, r17
.L341:
	l.bnf	.L337
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 4
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L341
	l.sfne	r4, r17
.L337:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
.L340:
	l.bf	.L339
	l.or	r11, r3, r3
	l.movhi	r11, hi(0)
.L339:
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
	l.bnf	.L350
	l.sfltu	r17, r19
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
.L351:
	l.bf	.L344
	l.sfne	r19, r21
	l.bnf	.L350
	l.sfltu	r17, r19
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L351
	l.sfeq	r17, r21
.L344:
	l.sfltu	r17, r19
.L350:
	l.bf	.L342
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.bf	.L342
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L342:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L353:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L353
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
	l.bf	.L356
	l.or	r11, r3, r3
.L357:
	l.addi	r11, r11, 4
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L357
	 l.nop

.L356:
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
	l.bnf	.L369
	l.sfeq	r5, r17
.L361:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L362
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L362
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.sfeq	r5, r17
	l.bnf	.L361
	l.addi	r4, r4, 4
.L362:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
.L369:
	l.bf	.L365
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L360
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L360
	l.ori	r11, r0, 1
.L365:
	l.movhi	r11, hi(0)
.L360:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L378
	 l.nop

.L371:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bnf	.L375
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bnf	.L371
	l.addi	r3, r3, 4
.L375:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
.L378:
	l.bf	.L377
	l.or	r11, r3, r3
	l.movhi	r11, hi(0)
.L377:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L388
	l.sfeq	r5, r17
.L380:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L381
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.sfeq	r5, r17
	l.bnf	.L380
	l.addi	r4, r4, 4
.L381:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
.L388:
	l.bf	.L384
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L379
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L379
	l.ori	r11, r0, 1
.L384:
	l.movhi	r11, hi(0)
.L379:
	l.jr	r9
	 l.nop

	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L390
	l.or	r16, r3, r3
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
.L390:
	l.or	r11, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.sfeq	r3, r4
	l.bf	.L393
	l.or	r11, r3, r3
	l.or	r23, r4, r4
	l.addi	r17, r5, -1
	l.sub	r19, r3, r4
	l.ori	r21, r0, 2
	l.sll	r21, r5, r21
	l.sfltu	r19, r21
	l.bf	.L394
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.or	r19, r3, r3
	l.bnf	.L393
	l.xori	r23, r0, -1
.L395:
	l.addi	r4, r4, 4
	l.addi	r19, r19, 4
	l.lwz	r21, -4(r4)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L395
	l.sw	-4(r19), r21
	l.j	.L393
	 l.nop

.L394:
	l.sfeq	r5, r19
	l.bf	.L393
	 l.nop

	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
.L396:
	l.lwz	r21, 0(r19)
	l.sw	0(r17), r21
	l.addi	r17, r17, -4
	l.sfne	r23, r19
	l.bf	.L396
	l.addi	r19, r19, -4
.L393:
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
	l.bf	.L402
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L403:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.bf	.L403
	l.sw	-4(r19), r4
.L402:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L406
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L405
	l.add	r4, r4, r5
.L408:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L408
	l.sb	0(r4), r19
.L405:
	l.jr	r9
	 l.nop

.L406:
	l.bf	.L405
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L405
	 l.nop

	l.add	r5, r3, r5
.L409:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r5, r3
	l.bf	.L409
	l.sb	-1(r4), r17
	l.j	.L405
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
	l.bnf	.L417
	l.sll	r12, r4, r5
	l.or	r11, r25, r25
	l.movhi	r21, hi(0)
.L417:
	l.sfges	r19, r21
	l.bnf	.L414
	 l.nop

	l.movhi	r12, hi(0)
.L414:
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
	l.bnf	.L418
	l.srl	r3, r3, r5
	l.or	r4, r23, r23
	l.movhi	r17, hi(0)
.L418:
	l.sfges	r19, r17
	l.bnf	.L416
	 l.nop

	l.movhi	r3, hi(0)
.L416:
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
	l.bnf	.L424
	l.srl	r11, r3, r5
	l.or	r12, r25, r25
	l.movhi	r21, hi(0)
.L424:
	l.sfges	r19, r21
	l.bnf	.L421
	 l.nop

	l.movhi	r11, hi(0)
.L421:
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
	l.bnf	.L425
	l.sll	r4, r4, r5
	l.or	r3, r23, r23
	l.movhi	r17, hi(0)
.L425:
	l.sfges	r19, r17
	l.bnf	.L423
	 l.nop

	l.movhi	r4, hi(0)
.L423:
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
	l.andi	r17, r3, 0xffff
	l.andi	r11, r3, 65280
	l.ori	r19, r0, 8
	l.srl	r11, r11, r19
	l.sll	r17, r17, r19
	l.jr	r9
	l.or	r11, r11, r17
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.ori	r17, r0, 24
	l.sll	r11, r3, r17
	l.srl	r17, r3, r17
	l.or	r11, r11, r17
	l.ori	r19, r0, 8
	l.srl	r17, r3, r19
	l.andi	r17, r17, 65280
	l.or	r11, r11, r17
	l.sll	r3, r3, r19
	l.movhi	r17, hi(16711680)
	l.and	r3, r3, r17
	l.jr	r9
	l.or	r11, r11, r3
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.ori	r25, r0, 24
	l.sll	r19, r4, r25
	l.srl	r12, r3, r25
	l.ori	r23, r0, 8
	l.srl	r17, r3, r23
	l.andi	r17, r17, 65280
	l.or	r12, r12, r17
	l.sll	r21, r3, r23
	l.srl	r17, r4, r25
	l.or	r17, r21, r17
	l.movhi	r21, hi(16711680)
	l.and	r17, r17, r21
	l.or	r12, r12, r17
	l.sll	r3, r3, r25
	l.or	r27, r23, r23
	l.srl	r17, r4, r23
	l.or	r17, r3, r17
	l.movhi	r23, hi(-16777216)
	l.and	r17, r17, r23
	l.sll	r11, r4, r27
	l.srl	r23, r4, r25
	l.or	r19, r19, r23
	l.srl	r4, r4, r27
	l.andi	r4, r4, 65280
	l.or	r19, r19, r4
	l.and	r11, r11, r21
	l.or	r11, r19, r11
	l.jr	r9
	l.or	r12, r12, r17
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 32
	l.srl	r17, r3, r11
.L442:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L437
	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L442
	l.srl	r17, r3, r11
	l.movhi	r11, hi(0)
.L437:
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L448
	l.movhi	r11, hi(0)
	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L443
	l.ori	r17, r0, 1
	l.ori	r11, r0, 1
.L449:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L449
	l.ori	r17, r0, 1
.L443:
.L448:
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
	l.bf	.L450
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L450
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L450:
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
	l.bf	.L456
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L456
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L456:
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
	l.bf	.L462
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L462
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L462:
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
	l.bf	.L471
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L471
	l.sfges	r16, r18
	l.bnf	.L479
	l.movhi	r17, ha(.LC8)
	l.j	.L475
	l.lwz	r18, lo(.LC8)(r17)
.L479:
	l.movhi	r17, ha(.LC9)
	l.j	.L475
	l.lwz	r18, lo(.LC9)(r17)
.L474:
	l.ori	r17, r0, 31
.L480:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
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
	l.bf	.L482
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
	l.bnf	.L482
	l.sfges	r16, r18
	l.bnf	.L490
	l.movhi	r17, ha(.LC10)
	l.addi	r19, r17, lo(.LC10)
	l.lwz	r20, lo(.LC10)(r17)
	l.j	.L486
	l.lwz	r18, 4(r19)
.L490:
	l.movhi	r17, ha(.LC11)
	l.addi	r19, r17, lo(.LC11)
	l.lwz	r20, lo(.LC11)(r17)
	l.j	.L486
	l.lwz	r18, 4(r19)
.L485:
	l.ori	r17, r0, 31
.L491:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L482
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L486:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L491
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L485
	l.or	r22, r12, r12
.L482:
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
	l.bf	.L493
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
	l.bnf	.L493
	l.sfges	r16, r18
	l.bnf	.L501
	l.movhi	r17, ha(.LC12)
	l.addi	r19, r17, lo(.LC12)
	l.lwz	r20, lo(.LC12)(r17)
	l.j	.L497
	l.lwz	r18, 4(r19)
.L501:
	l.movhi	r17, ha(.LC13)
	l.addi	r19, r17, lo(.LC13)
	l.lwz	r20, lo(.LC13)(r17)
	l.j	.L497
	l.lwz	r18, 4(r19)
.L496:
	l.ori	r17, r0, 31
.L502:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L493
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L497:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L502
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L496
	l.or	r22, r12, r12
.L493:
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
	l.bf	.L504
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L505:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r17)
	l.lbz	r21, -1(r4)
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.bf	.L505
	l.sb	-1(r17), r19
.L504:
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
	l.bnf	.L514
	l.add	r11, r20, r11
.L508:
	l.lbs	r17, 0(r18)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L509
	l.sb	0(r11), r17
	l.addi	r18, r18, 1
	l.addi	r16, r16, -1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L508
	l.addi	r11, r11, 1
.L509:
	l.movhi	r17, hi(0)
.L514:
	l.sfne	r16, r17
	l.bf	.L511
	 l.nop

	l.sb	0(r11), r0
.L511:
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
	l.bnf	.L515
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L522:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L518
	 l.nop

.L515:
	l.jr	r9
	 l.nop

.L518:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L522
	l.add	r17, r3, r11
	l.j	.L515
	 l.nop

	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.lbs	r21, 0(r3)
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bnf	.L528
	l.or	r11, r3, r3
.L524:
	l.or	r17, r4, r4
.L527:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bnf	.L530
	l.sfeq	r19, r21
	l.bnf	.L527
	l.addi	r17, r17, 1
.L525:
	l.jr	r9
	 l.nop

.L530:
	l.addi	r11, r11, 1
	l.lbs	r21, 0(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L524
	 l.nop

.L528:
	l.j	.L525
	l.movhi	r11, hi(0)
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.j	.L533
	l.movhi	r11, hi(0)
.L536:
	l.movhi	r19, hi(0)
.L538:
	l.sfne	r17, r19
	l.bnf	.L537
	l.addi	r3, r3, 1
.L533:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.bnf	.L538
	l.movhi	r19, hi(0)
	l.j	.L536
	l.or	r11, r3, r3
.L537:
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
	l.bf	.L539
	l.or	r20, r11, r11
	l.lbs	r22, 0(r18)
.L541:
	l.or	r4, r22, r22
	l.jal	strchr
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L539
	l.or	r16, r11, r11
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.jal	strncmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L545
	l.or	r11, r16, r16
	l.j	.L541
	l.addi	r16, r16, 1
.L539:
	l.or	r11, r16, r16
.L545:
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
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r9
	l.or	r18, r3, r3
	l.or	r20, r4, r4
	l.or	r24, r5, r5
	l.or	r22, r6, r6
	l.movhi	r16, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r16)
	l.addi	r17, r16, lo(.LC14)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r26, hi(0)
	l.sflts	r11, r26
	l.bf	.L556
	l.lwz	r5, lo(.LC14)(r16)
	l.movhi	r16, ha(.LC14)
.L558:
	l.lwz	r5, lo(.LC14)(r16)
	l.addi	r17, r16, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.movhi	r26, hi(0)
	l.sfgts	r11, r26
	l.bnf	.L550
	l.lwz	r5, lo(.LC14)(r16)
	l.addi	r16, r16, lo(.LC14)
	l.lwz	r6, 4(r16)
	l.or	r3, r24, r24
	l.jal	__ltdf2
	l.or	r4, r22, r22
	l.sflts	r11, r26
	l.bf	.L557
	l.movhi	r17, hi(-2147483648)
.L550:
	l.or	r11, r18, r18
	l.or	r12, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L556:
	l.addi	r16, r16, lo(.LC14)
	l.lwz	r6, 4(r16)
	l.or	r3, r24, r24
	l.jal	__gtdf2
	l.or	r4, r22, r22
	l.sfgts	r11, r26
	l.bnf	.L558
	l.movhi	r16, ha(.LC14)
	l.movhi	r17, hi(-2147483648)
.L557:
	l.j	.L550
	l.xor	r18, r18, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r9
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L563
	l.or	r16, r3, r3
	l.sfltu	r4, r6
	l.bf	.L565
	l.sub	r18, r4, r6
	l.add	r18, r3, r18
	l.sfgtu	r3, r18
	l.bf	.L565
	l.addi	r22, r6, -1
	l.lbs	r24, 0(r5)
	l.j	.L562
	l.addi	r26, r5, 1
.L561:
	l.sfleu	r16, r18
.L569:
	l.bnf	.L559
	l.movhi	r20, hi(0)
.L562:
	l.lbs	r17, 0(r16)
	l.or	r20, r16, r16
	l.sfne	r17, r24
	l.bf	.L561
	l.addi	r16, r16, 1
	l.or	r5, r22, r22
	l.or	r4, r26, r26
	l.jal	memcmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L569
	l.sfleu	r16, r18
	l.j	.L568
	l.or	r11, r20, r20
.L563:
	l.j	.L559
	l.or	r20, r3, r3
.L565:
	l.movhi	r20, hi(0)
.L559:
	l.or	r11, r20, r20
.L568:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
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
	l.or	r28, r3, r3
	l.or	r30, r4, r4
	l.or	r24, r5, r5
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L597
	l.movhi	r17, hi(-2147483648)
	l.movhi	r26, hi(0)
.L573:
	l.movhi	r17, ha(.LC16)
	l.addi	r19, r17, lo(.LC16)
	l.lwz	r5, lo(.LC16)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r28, r28
	l.jal	__gedf2
	l.or	r4, r30, r30
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L593
	l.movhi	r14, hi(0)
	l.movhi	r17, ha(.LC17)
	l.lwz	r22, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r20, 4(r17)
	l.movhi	r17, ha(.LC16)
	l.addi	r17, r17, lo(.LC16)
	l.lwz	r18, 0(r17)
	l.lwz	r16, 4(r17)
.L577:
	l.addi	r14, r14, 1
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r28, r28
	l.jal	__muldf3
	l.or	r4, r30, r30
	l.or	r3, r11, r11
	l.or	r4, r12, r12
	l.or	r28, r3, r3
	l.or	r30, r12, r12
	l.or	r5, r18, r18
	l.jal	__gedf2
	l.or	r6, r16, r16
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L577
	 l.nop

.L578:
	l.movhi	r17, hi(0)
	l.sfeq	r26, r17
.L598:
	l.bf	.L582
	l.sw	0(r24), r14
	l.movhi	r17, hi(-2147483648)
	l.xor	r28, r28, r17
.L582:
	l.or	r11, r28, r28
	l.or	r12, r30, r30
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
.L597:
	l.xor	r28, r28, r17
	l.j	.L573
	l.ori	r26, r0, 1
.L593:
	l.movhi	r17, ha(.LC17)
	l.addi	r19, r17, lo(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r28, r28
	l.jal	__ltdf2
	l.or	r4, r30, r30
	l.movhi	r16, hi(0)
	l.sflts	r11, r16
	l.bnf	.L594
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r28, r28
	l.jal	__nedf2
	l.or	r4, r30, r30
	l.sfne	r11, r16
	l.bnf	.L578
	l.movhi	r14, hi(0)
	l.movhi	r17, ha(.LC17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r18, 0(r17)
	l.lwz	r16, 4(r17)
.L581:
	l.addi	r14, r14, -1
	l.or	r5, r28, r28
	l.or	r6, r30, r30
	l.or	r3, r28, r28
	l.jal	__adddf3
	l.or	r4, r30, r30
	l.or	r3, r11, r11
	l.or	r4, r12, r12
	l.or	r28, r3, r3
	l.or	r30, r12, r12
	l.or	r5, r18, r18
	l.jal	__ltdf2
	l.or	r6, r16, r16
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L581
	l.sfeq	r26, r17
	l.j	.L598
	 l.nop

.L594:
	l.j	.L578
	l.movhi	r14, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r21, r3, r3
	l.or	r23, r4, r4
	l.or	r4, r4, r3
	l.movhi	r17, hi(0)
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L599
	l.movhi	r12, hi(0)
	l.j	.L602
	l.movhi	r25, hi(0)
.L608:
	l.j	.L605
	l.movhi	r19, hi(0)
.L607:
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
	l.bnf	.L599
	 l.nop

.L602:
	l.andi	r19, r23, 1
	l.sub	r17, r25, r19
	l.sfne	r25, r19
	l.bnf	.L608
	l.ori	r19, r0, 1
.L605:
	l.sub	r19, r25, r19
	l.and	r19, r19, r5
	l.and	r17, r17, r6
	l.add	r17, r12, r17
	l.sfltu	r17, r12
	l.bf	.L606
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L606:
	l.add	r11, r11, r19
	l.add	r11, r27, r11
	l.or	r12, r17, r17
	l.add	r17, r6, r6
	l.sfltu	r17, r6
	l.bf	.L607
	l.ori	r19, r0, 1
	l.j	.L607
	l.movhi	r19, hi(0)
.L599:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bnf	.L611
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L624:
	l.bnf	.L611
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L611
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L624
	l.sfges	r4, r21
	l.movhi	r17, hi(0)
.L611:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L615
	l.movhi	r11, hi(0)
.L613:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L623
	 l.nop

	l.or	r11, r3, r3
.L623:
	l.jr	r9
	 l.nop

.L625:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L613
	 l.nop

.L615:
	l.sfltu	r3, r4
	l.bf	.L625
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L625
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
	l.sfeq	r17, r19
	l.bf	.L628
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
.L628:
	l.jr	r9
	l.ori	r11, r0, 7
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.ori	r21, r0, 31
	l.sra	r21, r3, r21
	l.xor	r3, r3, r21
	l.sfne	r17, r21
	l.bnf	.L642
	l.xor	r4, r4, r21
.L637:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L642:
	l.sfne	r19, r17
	l.bf	.L637
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
	l.bf	.L643
	l.movhi	r11, hi(0)
.L645:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L645
	l.add	r4, r4, r4
.L643:
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
	l.sfltu	r3, r4
	l.bf	.L649
	l.and	r27, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bf	.L659
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L648
	l.xori	r23, r0, -1
.L650:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L650
	l.sb	0(r19), r21
	l.j	.L648
	 l.nop

.L649:
	l.movhi	r17, hi(0)
.L659:
	l.sfeq	r25, r17
	l.bf	.L652
	l.ori	r21, r0, 3
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r25, r25, r21
	l.add	r25, r25, r4
.L653:
	l.lwz	r21, 4(r17)
	l.lwz	r23, 0(r17)
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.addi	r17, r17, 8
	l.sfne	r17, r25
	l.bf	.L653
	l.addi	r19, r19, 8
.L652:
	l.sfleu	r5, r27
	l.bf	.L648
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r4, r4, r5
.L654:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r4
	l.bf	.L654
	l.addi	r3, r3, 1
.L648:
	l.jr	r9
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
	l.sfgtu	r3, r17
	l.bf	.L669
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L660
	l.xori	r23, r0, -1
.L662:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L662
	l.sb	0(r19), r21
	l.j	.L660
	 l.nop

.L661:
	l.movhi	r17, hi(0)
.L669:
	l.sfeq	r23, r17
	l.bf	.L664
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.add	r23, r23, r4
.L665:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.sfne	r17, r23
	l.bf	.L665
	l.addi	r19, r19, 2
.L664:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L660
	l.add	r4, r4, r5
	l.lbs	r17, -1(r4)
	l.add	r3, r3, r5
	l.sb	-1(r3), r17
.L660:
	l.jr	r9
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.ori	r17, r0, 2
	l.srl	r23, r5, r17
	l.xori	r25, r0, -4
	l.sfltu	r3, r4
	l.bf	.L671
	l.and	r25, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bf	.L681
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L670
	l.xori	r23, r0, -1
.L672:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L672
	l.sb	0(r19), r21
	l.j	.L670
	 l.nop

.L671:
	l.movhi	r17, hi(0)
.L681:
	l.sfeq	r23, r17
	l.bf	.L674
	l.ori	r21, r0, 2
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r23, r23, r21
	l.add	r23, r23, r4
.L675:
	l.lwz	r21, 0(r17)
	l.sw	0(r19), r21
	l.addi	r17, r17, 4
	l.sfne	r17, r23
	l.bf	.L675
	l.addi	r19, r19, 4
.L674:
	l.sfleu	r5, r25
	l.bf	.L670
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r4, r4, r5
.L676:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r4
	l.bf	.L676
	l.addi	r3, r3, 1
.L670:
	l.jr	r9
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
.L696:
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L692
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r21
	l.bf	.L696
	l.sub	r17, r19, r11
.L692:
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
.L701:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L697
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L701
	l.sra	r17, r3, r11
.L697:
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
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.or	r18, r3, r3
	l.movhi	r17, ha(.LC18)
	l.lwz	r16, lo(.LC18)(r17)
	l.jal	__gesf2
	l.or	r4, r16, r16
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L709
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
.L702:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L709:
	l.jal	__subsf3
	l.or	r3, r18, r18
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L702
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
.L711:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L711
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
.L714:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L714
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
	l.bf	.L716
	l.movhi	r11, hi(0)
.L718:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L718
	l.add	r4, r4, r4
.L716:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L721
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L721
	 l.nop

.L723:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L723
	l.add	r3, r3, r3
.L721:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bnf	.L729
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L742:
	l.bnf	.L729
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L729
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L742
	l.sfges	r4, r21
	l.movhi	r17, hi(0)
.L729:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L733
	l.movhi	r11, hi(0)
.L731:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L741
	 l.nop

	l.or	r11, r3, r3
.L741:
	l.jr	r9
	 l.nop

.L743:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L731
	 l.nop

.L733:
	l.sfltu	r3, r4
	l.bf	.L743
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L743
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
	l.bf	.L747
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L744
	l.ori	r11, r0, 1
	l.j	.L744
	l.movhi	r11, hi(0)
.L747:
	l.xori	r11, r0, -1
.L744:
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
	l.bf	.L753
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L750
	l.ori	r11, r0, 1
	l.j	.L750
	l.movhi	r11, hi(0)
.L753:
	l.xori	r11, r0, -1
.L750:
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
	l.bnf	.L768
	 l.nop

	l.movhi	r21, hi(0)
.L761:
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L770
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 32
	l.andi	r17, r4, 1
.L769:
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.sra	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L771
	l.add	r3, r3, r3
	l.addi	r19, r19, -1
	l.andi	r19, r19, 0xff
	l.sfne	r19, r17
	l.bf	.L769
	l.andi	r17, r4, 1
.L762:
	l.movhi	r17, hi(0)
.L770:
.L771:
	l.sfeq	r21, r17
	l.bf	.L760
	 l.nop

	l.sub	r11, r0, r11
.L760:
	l.jr	r9
	 l.nop

.L768:
	l.sub	r4, r0, r4
	l.j	.L761
	l.ori	r21, r0, 1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L778
	l.sw	4(r1), r9
	l.movhi	r16, hi(0)
.L773:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L779
	 l.nop

.L774:
	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L780
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L780:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L778:
	l.sub	r3, r0, r3
	l.j	.L773
	l.ori	r16, r0, 1
.L779:
	l.sub	r4, r0, r4
	l.j	.L774
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
	l.bnf	.L787
	l.or	r17, r4, r4
	l.movhi	r16, hi(0)
.L782:
	l.movhi	r19, hi(0)
	l.sfges	r17, r19
	l.bf	.L783
	l.or	r4, r17, r17
	l.sub	r4, r0, r17
.L783:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L788
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L788:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L787:
	l.sub	r3, r0, r3
	l.j	.L782
	l.ori	r16, r0, 1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.ori	r19, r0, 16
	l.bnf	.L791
	l.ori	r17, r0, 1
	l.ori	r21, r0, 16
.L803:
	l.sll	r21, r4, r21
	l.movhi	r23, hi(0)
	l.sfges	r21, r23
	l.bnf	.L791
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.sfleu	r11, r4
	l.bf	.L791
	l.andi	r17, r17, 0xffff
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L803
	l.ori	r21, r0, 16
	l.movhi	r17, hi(0)
.L791:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L804
	l.sfltu	r11, r4
	l.movhi	r19, hi(0)
.L793:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L802
	 l.nop

	l.or	r11, r19, r19
.L802:
	l.jr	r9
	 l.nop

.L805:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L793
	l.sfltu	r11, r4
.L804:
	l.bf	.L805
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.j	.L805
	l.or	r19, r17, r19
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bnf	.L808
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L821:
	l.bnf	.L808
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L808
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L821
	l.sfges	r4, r21
	l.movhi	r17, hi(0)
.L808:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L812
	l.movhi	r11, hi(0)
.L810:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L820
	 l.nop

	l.or	r11, r3, r3
.L820:
	l.jr	r9
	 l.nop

.L822:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L810
	 l.nop

.L812:
	l.sfltu	r3, r4
	l.bf	.L822
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L822
	l.or	r11, r11, r17
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L824
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r12, hi(0)
.L826:
	l.jr	r9
	 l.nop

.L824:
	l.sfeq	r5, r17
	l.bf	.L827
	l.ori	r17, r0, 32
	l.sll	r12, r4, r5
	l.sub	r17, r17, r5
	l.srl	r4, r4, r17
	l.sll	r11, r3, r5
	l.j	.L826
	l.or	r11, r4, r11
.L827:
	l.or	r11, r3, r3
	l.j	.L826
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L829
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.addi	r5, r5, -32
	l.sra	r12, r3, r5
.L831:
	l.jr	r9
	 l.nop

.L829:
	l.sfeq	r5, r17
	l.bf	.L832
	l.ori	r17, r0, 32
	l.sra	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L831
	l.or	r12, r3, r12
.L832:
	l.or	r11, r3, r3
	l.j	.L831
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.ori	r25, r0, 24
	l.srl	r12, r3, r25
	l.sll	r19, r4, r25
	l.ori	r23, r0, 8
	l.srl	r17, r3, r23
	l.andi	r17, r17, 65280
	l.or	r12, r12, r17
	l.sll	r21, r3, r23
	l.srl	r17, r4, r25
	l.or	r17, r21, r17
	l.movhi	r21, hi(16711680)
	l.and	r17, r17, r21
	l.or	r12, r12, r17
	l.sll	r3, r3, r25
	l.or	r27, r23, r23
	l.srl	r17, r4, r23
	l.or	r17, r3, r17
	l.movhi	r23, hi(-16777216)
	l.and	r17, r17, r23
	l.sll	r11, r4, r27
	l.srl	r23, r4, r25
	l.or	r19, r19, r23
	l.srl	r4, r4, r27
	l.andi	r4, r4, 65280
	l.or	r19, r19, r4
	l.and	r11, r11, r21
	l.or	r11, r19, r11
	l.jr	r9
	l.or	r12, r12, r17
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.ori	r17, r0, 24
	l.srl	r11, r3, r17
	l.sll	r17, r3, r17
	l.or	r11, r11, r17
	l.ori	r19, r0, 8
	l.srl	r17, r3, r19
	l.andi	r17, r17, 65280
	l.or	r11, r11, r17
	l.sll	r3, r3, r19
	l.movhi	r17, hi(16711680)
	l.and	r3, r3, r17
	l.jr	r9
	l.or	r11, r11, r3
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.ori	r17, r0, 65535
	l.sfleu	r3, r17
	l.bf	.L837
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L837:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r21
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r25, hi(0)
	l.sfeq	r19, r25
	l.bf	.L838
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L838:
	l.ori	r23, r0, 3
	l.sll	r19, r19, r23
	l.ori	r23, r0, 8
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r21, r19, r21
	l.andi	r19, r17, 240
	l.sfeq	r19, r25
	l.bf	.L839
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L839:
	l.ori	r23, r0, 2
	l.sll	r19, r19, r23
	l.ori	r23, r0, 4
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r21, r19, r21
	l.andi	r19, r17, 12
	l.sfeq	r19, r25
	l.bf	.L840
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L840:
	l.add	r19, r19, r19
	l.ori	r11, r0, 2
	l.sub	r23, r11, r19
	l.srl	r17, r17, r23
	l.sub	r11, r11, r17
	l.andi	r17, r17, 2
	l.sfeq	r17, r25
	l.bf	.L836
	 l.nop

	l.movhi	r11, hi(0)
.L836:
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
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
	l.bf	.L845
	l.sfgtu	r4, r6
	l.bf	.L846
	 l.nop

	l.j	.L841
	l.ori	r11, r0, 1
.L845:
	l.movhi	r11, hi(0)
.L841:
	l.jr	r9
	 l.nop

.L846:
	l.j	.L841
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
	l.bf	.L850
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L850:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.srl	r17, r3, r21
	l.andi	r19, r17, 255
	l.sfeq	r19, r23
	l.bf	.L851
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L851:
	l.ori	r25, r0, 3
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r21, r19, r21
	l.andi	r19, r17, 15
	l.sfeq	r19, r23
	l.bf	.L852
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L852:
	l.ori	r25, r0, 2
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r21, r19, r21
	l.andi	r19, r17, 3
	l.sfeq	r19, r23
	l.bf	.L853
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L853:
	l.add	r19, r19, r19
	l.srl	r17, r17, r19
	l.andi	r17, r17, 3
	l.xori	r11, r17, -1
	l.andi	r11, r11, 1
	l.ori	r23, r0, 1
	l.srl	r17, r17, r23
	l.sub	r17, r25, r17
	l.sub	r11, r0, r11
	l.and	r11, r11, r17
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L855
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r11, hi(0)
.L857:
	l.jr	r9
	 l.nop

.L855:
	l.sfeq	r5, r17
	l.bf	.L858
	l.ori	r17, r0, 32
	l.srl	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L857
	l.or	r12, r3, r12
.L858:
	l.or	r11, r3, r3
	l.j	.L857
	l.or	r12, r4, r4
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.andi	r11, r3, 65535
	l.andi	r17, r4, 65535
	l.mul	r12, r11, r17
	l.ori	r21, r0, 16
	l.srl	r19, r12, r21
	l.srl	r3, r3, r21
	l.mul	r17, r17, r3
	l.add	r17, r17, r19
	l.andi	r19, r17, 0xffff
	l.srl	r4, r4, r21
	l.mul	r11, r11, r4
	l.add	r11, r11, r19
	l.andi	r12, r12, 0xffff
	l.sll	r19, r11, r21
	l.srl	r17, r17, r21
	l.mul	r3, r3, r4
	l.add	r17, r17, r3
	l.srl	r11, r11, r21
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
	l.or	r22, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r16, r6, r6
	l.or	r4, r6, r6
	l.jal	__muldsi3
	l.or	r3, r18, r18
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
	l.bnf	.L864
	l.ori	r11, r0, 1
.L863:
	l.sub	r17, r17, r3
	l.jr	r9
	l.sub	r11, r17, r11
.L864:
	l.j	.L863
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
	l.bf	.L868
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L868:
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
	l.bf	.L869
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L869:
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
	l.bf	.L870
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L870:
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
	l.or	r26, r5, r5
	l.or	r16, r5, r5
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.lwz	r24, lo(.LC19)(r17)
	l.j	.L875
	l.lwz	r22, 4(r19)
.L873:
	l.ori	r17, r0, 31
.L879:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L880
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L875:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L879
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L873
	l.or	r22, r12, r12
.L880:
	l.sfges	r26, r17
	l.bnf	.L878
	l.movhi	r17, ha(.LC19)
.L872:
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
.L878:
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.jal	__divdf3
	l.lwz	r4, 4(r17)
	l.or	r24, r11, r11
	l.j	.L872
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
	l.j	.L884
	l.lwz	r20, lo(.LC20)(r17)
.L882:
	l.ori	r17, r0, 31
.L888:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L889
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L884:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L888
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L882
	l.or	r20, r11, r11
.L889:
	l.sfges	r22, r17
	l.bnf	.L887
	l.or	r4, r20, r20
.L881:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L887:
	l.movhi	r17, ha(.LC20)
	l.jal	__divsf3
	l.lwz	r3, lo(.LC20)(r17)
	l.j	.L881
	l.or	r20, r11, r11
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.sfltu	r3, r5
	l.bf	.L894
	l.sfgtu	r3, r5
	l.bf	.L895
	l.sfltu	r4, r6
	l.bf	.L894
	l.sfgtu	r4, r6
	l.bf	.L895
	 l.nop

	l.j	.L890
	l.ori	r11, r0, 1
.L894:
	l.movhi	r11, hi(0)
.L890:
	l.jr	r9
	 l.nop

.L895:
	l.j	.L890
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
	.section	.bss
	.align 4
	.set	.LANCHOR0,. + 0
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.zero	1
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.section	.rodata
	.set	.LANCHOR1,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
