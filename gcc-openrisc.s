	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.sfleu	r3, r4
	l.bf	.L2
	l.or	r11, r3, r3
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.add	r4, r4, r5
	l.bf	.L3
	l.add	r17, r3, r5
.L4:
	l.addi	r17, r17, -1
	l.lbs	r19, -1(r4)
	l.sb	0(r17), r19
	l.sfne	r11, r17
	l.bf	.L4
	l.addi	r4, r4, -1
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
	l.addi	r17, r17, 1
	l.lbs	r19, 0(r4)
	l.sb	-1(r17), r19
	l.sfne	r5, r17
	l.bf	.L5
	l.addi	r4, r4, 1
	l.jr	r9
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.movhi	r17, hi(0)
	l.sfne	r6, r17
	l.bf	.L16
	l.andi	r5, r5, 0xff
	l.j	.L26
	l.movhi	r11, hi(0)
.L18:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L17
	l.addi	r3, r3, 1
.L16:
	l.lbz	r17, 0(r4)
	l.sb	0(r3), r17
	l.sfne	r17, r5
	l.addi	r6, r6, -1
	l.bf	.L18
	l.addi	r4, r4, 1
	l.jr	r9
	l.addi	r11, r3, 1
.L17:
	l.movhi	r11, hi(0)
.L26:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L28
	l.andi	r4, r4, 0xff
	l.j	.L33
	l.movhi	r11, hi(0)
.L30:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L31
	l.addi	r3, r3, 1
.L28:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L30
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L31:
	l.movhi	r11, hi(0)
.L33:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L35
	l.movhi	r11, hi(0)
	l.j	.L42
	 l.nop

.L37:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L39
	l.movhi	r11, hi(0)
.L35:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r11, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.bf	.L37
	l.addi	r4, r4, 1
	l.jr	r9
	l.sub	r11, r11, r17
.L39:
.L42:
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.addi	r1, r1, -8
	l.movhi	r17, hi(0)
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.sfeq	r5, r17
	l.bf	.L44
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L44:
	l.or	r11, r16, r16
	l.lwz	r9, 4(r1)
	l.lwz	r16, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	l.addi	r5, r5, -1
	l.add	r5, r3, r5
	l.andi	r4, r4, 0xff
	l.j	.L50
	l.addi	r3, r3, -1
.L52:
	l.lbz	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L49
	 l.nop

.L50:
	l.sfne	r5, r3
	l.or	r11, r5, r5
	l.bf	.L52
	l.addi	r5, r5, -1
	l.movhi	r11, hi(0)
.L49:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L54
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
.L55:
	l.sb	0(r17), r4
	l.addi	r17, r17, 1
	l.sfne	r5, r17
	l.bf	.L55
	 l.nop

.L54:
	l.jr	r9
	 l.nop

	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sb	0(r3), r17
	l.sfeq	r17, r19
	l.bf	.L61
	l.or	r11, r3, r3
.L62:
	l.lbs	r17, 1(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.sb	1(r11), r17
	l.addi	r11, r11, 1
	l.bf	.L62
	l.addi	r4, r4, 1
.L61:
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
	l.or	r11, r3, r3
	l.bf	.L68
	l.andi	r4, r4, 0xff
	l.j	.L67
	 l.nop

.L70:
	l.lbs	r17, 1(r11)
	l.sfeq	r17, r19
	l.bf	.L67
	l.addi	r11, r11, 1
.L68:
	l.andi	r17, r17, 0xff
	l.sfne	r17, r4
	l.bf	.L70
	l.movhi	r19, hi(0)
.L67:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.j	.L76
	l.or	r11, r3, r3
.L79:
	l.sfne	r17, r19
	l.bnf	.L78
	l.addi	r11, r11, 1
.L76:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bnf	.L79
	l.movhi	r19, hi(0)
	l.jr	r9
	 l.nop

.L78:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfeq	r17, r11
	l.bf	.L86
	l.movhi	r19, hi(0)
	l.j	.L85
	l.andi	r17, r17, 0xff
.L83:
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfne	r17, r11
	l.bf	.L82
	l.movhi	r19, hi(0)
.L86:
	l.sfne	r17, r19
	l.addi	r3, r3, 1
	l.bf	.L83
	l.addi	r4, r4, 1
.L82:
	l.andi	r17, r17, 0xff
.L85:
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
	l.bf	.L88
	l.or	r11, r3, r3
.L89:
	l.lbs	r19, 1(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L89
	l.addi	r11, r11, 1
.L88:
	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L97
	 l.nop

	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L94
	l.addi	r5, r5, -1
	l.j	.L95
	l.add	r19, r3, r5
.L107:
	l.bf	.L94
	l.addi	r3, r3, 1
	l.sfeq	r17, r11
	l.bnf	.L94
	l.movhi	r17, hi(0)
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L94
	l.addi	r4, r4, 1
.L95:
	l.lbz	r17, 0(r4)
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L107
	l.sfeq	r3, r19
.L94:
	l.lbz	r17, 0(r4)
	l.jr	r9
	l.sub	r11, r11, r17
.L97:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L108
	l.xori	r17, r0, -2
	l.and	r5, r5, r17
	l.add	r21, r3, r5
.L110:
	l.lbz	r19, 1(r3)
	l.lbz	r17, 0(r3)
	l.addi	r3, r3, 2
	l.sb	0(r4), r19
	l.sb	1(r4), r17
	l.sfne	r3, r21
	l.bf	.L110
	l.addi	r4, r4, 2
.L108:
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
	l.bf	.L113
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L113:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L115
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L115:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L118
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L116
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L116:
	l.jr	r9
	 l.nop

.L118:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L120
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L120
	 l.nop

	l.movhi	r11, hi(0)
.L120:
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
	l.bf	.L125
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L125:
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
	l.bf	.L127
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L127:
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
	l.bf	.L129
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L129:
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
	l.bf	.L131
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L131:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L134
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bnf	.L136
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L136:
	l.jr	r9
	l.movhi	r11, hi(0)
.L134:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	l.addi	r3, r3, -65
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.bf	.L138
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L138:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L139
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bnf	.L145
	l.addi	r17, r3, -8232
.L139:
	l.jr	r9
	 l.nop

.L145:
	l.sfleu	r17, r11
	l.bf	.L139
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L139
	l.ori	r11, r0, 1
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.bf	.L147
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L147:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L157
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L153
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L153
	l.movhi	r17, hi(-65536)
	l.ori	r19, r17, 8192
	l.add	r19, r3, r19
	l.ori	r21, r0, 8184
	l.sfleu	r19, r21
	l.bf	.L153
	l.ori	r17, r17, 4
	l.movhi	r19, hi(1048576)
	l.add	r17, r3, r17
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L154
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bnf	.L154
	l.ori	r11, r0, 1
.L148:
	l.jr	r9
	 l.nop

.L153:
	l.jr	r9
	l.ori	r11, r0, 1
.L157:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L148
	l.ori	r11, r0, 1
.L154:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L158
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bnf	.L162
	 l.nop

.L158:
	l.jr	r9
	 l.nop

.L162:
	l.jr	r9
	l.movhi	r11, hi(0)
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
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.or	r20, r6, r6
	l.or	r22, r5, r5
	l.or	r6, r4, r4
	l.or	r5, r3, r3
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.jal	__unorddf2
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L167
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L168
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L173
	l.or	r5, r22, r22
	l.movhi	r17, ha(.LC0+4)
	l.movhi	r11, hi(0)
	l.lwz	r12, lo(.LC0+4)(r17)
.L164:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L173:
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
	l.lwz	r9, 20(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L167:
	l.or	r11, r18, r18
	l.j	.L164
	l.or	r12, r16, r16
.L168:
	l.or	r11, r22, r22
	l.j	.L164
	l.or	r12, r20, r20
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	l.addi	r1, r1, -16
	l.sw	4(r1), r18
	l.or	r18, r4, r4
	l.or	r4, r3, r3
	l.sw	0(r1), r16
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r16, r3, r3
	l.jal	__unordsf2
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L177
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L178
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L183
	l.or	r4, r18, r18
	l.movhi	r11, hi(0)
.L174:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L183:
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.lwz	r9, 12(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L177:
	l.j	.L174
	l.or	r11, r16, r16
.L178:
	l.j	.L174
	l.or	r11, r18, r18
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	8(r1), r20
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.sw	4(r1), r18
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r22, r3, r3
	l.or	r18, r4, r4
	l.jal	__unorddf2
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L192
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L191
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L186
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L195
	l.or	r11, r22, r22
.L192:
	l.or	r11, r16, r16
	l.or	r12, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L186:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L187
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L194:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L191:
	l.or	r11, r22, r22
.L195:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L187:
	l.or	r16, r22, r22
	l.j	.L194
	l.or	r11, r16, r16
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.or	r16, r4, r4
	l.or	r4, r3, r3
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r18, r3, r3
	l.jal	__unordsf2
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L202
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L203
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L198
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L196
	l.or	r11, r18, r18
.L202:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L198:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L196
	l.or	r11, r16, r16
.L203:
	l.or	r11, r18, r18
.L196:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	8(r1), r20
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.sw	4(r1), r18
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r22, r3, r3
	l.or	r18, r4, r4
	l.jal	__unorddf2
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L216
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L215
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L210
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L219
	l.or	r11, r22, r22
.L216:
	l.or	r11, r16, r16
	l.or	r12, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L210:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L211
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L218:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L215:
	l.or	r11, r22, r22
.L219:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L211:
	l.or	r16, r22, r22
	l.j	.L218
	l.or	r11, r16, r16
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.addi	r1, r1, -24
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__unorddf2
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L226
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L228
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L222
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L231
	l.or	r11, r16, r16
.L226:
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
.L222:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L230
	 l.nop

.L228:
	l.or	r11, r16, r16
.L231:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L230:
	l.or	r16, r20, r20
	l.j	.L228
	l.or	r18, r22, r22
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.or	r16, r4, r4
	l.or	r4, r3, r3
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r18, r3, r3
	l.jal	__unordsf2
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L238
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L239
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L234
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L232
	l.or	r11, r16, r16
.L239:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L234:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L232
	l.or	r11, r18, r18
.L238:
	l.or	r11, r16, r16
.L232:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	l.addi	r1, r1, -24
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__unorddf2
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L250
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L252
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L246
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L255
	l.or	r11, r16, r16
.L250:
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
.L246:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L254
	 l.nop

.L252:
	l.or	r11, r16, r16
.L255:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L254:
	l.or	r16, r20, r20
	l.j	.L252
	l.or	r18, r22, r22
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.movhi	r11, ha(.LANCHOR0)
	l.addi	r11, r11, lo(.LANCHOR0)
	l.sfeq	r3, r17
	l.bf	.L257
	l.or	r19, r11, r11
	l.movhi	r21, ha(.LANCHOR1)
	l.addi	r21, r21, lo(.LANCHOR1)
.L258:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbz	r17, 0(r17)
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.sb	0(r19), r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L258
	l.addi	r19, r19, 1
.L257:
	l.jr	r9
	l.sb	0(r19), r0
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
	l.movhi	r5, hi(1481703424)
	l.movhi	r6, hi(1284833280)
	l.movhi	r16, ha(.LANCHOR0)
	l.addi	r16, r16, lo(.LANCHOR0)
	l.ori	r5, r5, 62509
	l.ori	r6, r6, 32557
	l.sw	4(r1), r9
	l.lwz	r3, 8(r16)
	l.jal	__muldi3
	l.lwz	r4, 12(r16)
	l.xori	r17, r0, -1
	l.sfgeu	r12, r17
	l.bf	.L263
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L263:
	l.add	r11, r17, r11
	l.addi	r12, r12, 1
	l.sw	8(r16), r11
	l.sw	12(r16), r12
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
	l.bnf	.L272
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r17
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L266
	 l.nop

	l.sw	4(r17), r3
.L266:
	l.jr	r9
	 l.nop

.L272:
	l.sw	4(r3), r0
	l.jr	r9
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L282
	l.movhi	r21, hi(0)
	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L282:
	l.lwz	r19, 4(r3)
	l.sfeq	r19, r21
	l.bf	.L273
	 l.nop

	l.sw	0(r19), r17
.L273:
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -40
	l.movhi	r17, hi(0)
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r24
	l.sw	28(r1), r28
	l.sw	32(r1), r30
	l.lwz	r22, 0(r5)
	l.sw	0(r1), r14
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	24(r1), r26
	l.sw	36(r1), r9
	l.sfeq	r22, r17
	l.or	r28, r5, r5
	l.or	r24, r3, r3
	l.or	r30, r4, r4
	l.bf	.L284
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L286
	l.movhi	r18, hi(0)
.L299:
	l.sfne	r22, r18
	l.bnf	.L301
	l.addi	r17, r22, 1
.L286:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L299
	l.add	r16, r16, r20
.L283:
	l.or	r11, r14, r14
.L300:
	l.lwz	r16, 4(r1)
	l.lwz	r14, 0(r1)
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
.L284:
	l.addi	r17, r22, 1
.L301:
	l.sw	0(r28), r17
	l.movhi	r17, hi(0)
	l.mul	r22, r20, r22
	l.sfeq	r20, r17
	l.bf	.L283
	l.add	r14, r30, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L300
	l.or	r11, r14, r14
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -32
	l.movhi	r17, hi(0)
	l.sw	20(r1), r26
	l.sw	0(r1), r16
	l.lwz	r26, 0(r5)
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	24(r1), r28
	l.sfeq	r26, r17
	l.bf	.L303
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L305
	l.movhi	r18, hi(0)
.L314:
	l.sfne	r26, r18
	l.bnf	.L302
	l.movhi	r28, hi(0)
.L305:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r28, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L314
	l.add	r16, r16, r22
.L302:
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
.L303:
	l.j	.L302
	l.movhi	r28, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L316
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L316:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L324:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L318
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L318
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L319
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L335
	l.addi	r19, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfgtu	r19, r17
	l.bf	.L329
	l.addi	r3, r3, 1
	l.ori	r23, r0, 1
.L322:
	l.movhi	r11, hi(0)
	l.ori	r21, r0, 9
.L326:
	l.ori	r17, r0, 2
	l.sll	r17, r11, r17
	l.add	r11, r17, r11
	l.add	r11, r11, r11
	l.lbs	r17, 1(r3)
	l.sub	r11, r11, r19
	l.addi	r19, r17, -48
	l.sfleu	r19, r21
	l.bf	.L326
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bnf	.L323
	 l.nop

	l.jr	r9
	 l.nop

.L318:
	l.j	.L324
	l.addi	r3, r3, 1
.L335:
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.bf	.L322
	l.movhi	r23, hi(0)
	l.movhi	r11, hi(0)
.L323:
	l.jr	r9
	l.sub	r11, r0, r11
.L319:
	l.lbs	r17, 1(r3)
	l.addi	r19, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r19, r17
	l.addi	r3, r3, 1
	l.bf	.L322
	l.movhi	r23, hi(0)
	l.j	.L323
	l.movhi	r11, hi(0)
.L329:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.j	atoi
	 l.nop

	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L344:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L338
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L338
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L339
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L359
	l.addi	r17, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfgtu	r17, r19
	l.bf	.L349
	l.addi	r3, r3, 1
	l.ori	r29, r0, 1
.L342:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.ori	r27, r0, 9
.L346:
	l.ori	r21, r0, 2
	l.sll	r19, r12, r21
	l.add	r23, r19, r12
	l.ori	r25, r0, 30
	l.srl	r12, r12, r25
	l.sll	r21, r11, r21
	l.sfltu	r23, r19
	l.or	r21, r12, r21
	l.add	r25, r23, r23
	l.bf	.L355
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L355:
	l.add	r21, r21, r11
	l.sfltu	r25, r23
	l.add	r19, r19, r21
	l.sub	r12, r25, r17
	l.bf	.L356
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L356:
	l.add	r19, r19, r19
	l.ori	r21, r0, 31
	l.sfgtu	r12, r25
	l.sra	r21, r17, r21
	l.add	r11, r11, r19
	l.lbs	r17, 1(r3)
	l.bf	.L357
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L357:
	l.addi	r17, r17, -48
	l.sub	r11, r11, r21
	l.sfleu	r17, r27
	l.addi	r3, r3, 1
	l.bf	.L346
	l.sub	r11, r11, r19
	l.movhi	r17, hi(0)
	l.sfne	r29, r17
	l.bf	.L337
	 l.nop

.L343:
	l.movhi	r17, hi(0)
	l.sfne	r12, r17
	l.sub	r12, r0, r12
	l.bf	.L354
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L354:
	l.sub	r11, r0, r11
	l.sub	r11, r11, r17
.L337:
	l.jr	r9
	 l.nop

.L338:
	l.j	.L344
	l.addi	r3, r3, 1
.L359:
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L342
	l.movhi	r29, hi(0)
	l.movhi	r11, hi(0)
.L360:
	l.j	.L343
	l.movhi	r12, hi(0)
.L339:
	l.lbs	r17, 1(r3)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.addi	r3, r3, 1
	l.bf	.L342
	l.movhi	r29, hi(0)
	l.j	.L360
	l.movhi	r11, hi(0)
.L349:
	l.movhi	r11, hi(0)
	l.jr	r9
	l.movhi	r12, hi(0)
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	l.addi	r1, r1, -32
	l.movhi	r17, hi(0)
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sfeq	r5, r17
	l.bf	.L362
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.j	.L365
	l.or	r24, r7, r7
.L372:
	l.sfles	r11, r17
	l.bf	.L361
	l.sub	r16, r16, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bnf	.L362
	l.add	r22, r18, r20
.L365:
	l.ori	r17, r0, 1
.L373:
	l.srl	r28, r16, r17
	l.mul	r18, r28, r20
	l.add	r18, r22, r18
	l.or	r4, r18, r18
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L372
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bf	.L373
	l.ori	r17, r0, 1
.L362:
	l.movhi	r18, hi(0)
.L361:
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
	l.addi	r1, r1, -40
	l.movhi	r17, hi(0)
	l.sw	0(r1), r14
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r24
	l.sw	24(r1), r26
	l.sw	28(r1), r28
	l.sw	32(r1), r30
	l.sfeq	r5, r17
	l.bf	.L375
	l.sw	36(r1), r9
	l.or	r16, r5, r5
	l.or	r28, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.j	.L378
	l.or	r24, r8, r8
.L387:
	l.sfles	r11, r17
	l.bf	.L388
	l.movhi	r17, hi(0)
	l.sra	r30, r16, r14
	l.add	r22, r18, r20
.L388:
	l.sfne	r30, r17
	l.bnf	.L375
	l.or	r16, r30, r30
.L378:
	l.ori	r14, r0, 1
	l.sra	r30, r16, r14
	l.mul	r18, r30, r20
	l.add	r18, r22, r18
	l.or	r5, r24, r24
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L387
	l.addi	r16, r16, -1
.L374:
	l.or	r11, r18, r18
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
.L375:
	l.j	.L374
	l.movhi	r18, hi(0)
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.or	r11, r3, r3
	l.sw	0(r3), r17
	l.jr	r9
	l.sw	4(r3), r4
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.or	r11, r3, r3
	l.bf	.L391
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.bnf	.L394
	l.ori	r11, r0, 1
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L391:
	l.jr	r9
	 l.nop

.L394:
	l.movhi	r11, hi(0)
	l.sub	r3, r0, r3
	l.j	.L391
	l.sub	r11, r3, r11
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	l.addi	r1, r1, -24
	l.sw	4(r1), r18
	l.or	r18, r5, r5
	l.sw	0(r1), r16
	l.sw	8(r1), r20
	l.sw	16(r1), r24
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r24, r6, r6
	l.or	r5, r6, r6
	l.or	r3, r4, r4
	l.or	r6, r7, r7
	l.or	r4, r18, r18
	l.sw	12(r1), r22
	l.sw	20(r1), r9
	l.jal	__divdi3
	l.or	r22, r7, r7
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
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
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
	l.bf	.L398
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L398:
	l.jr	r9
	 l.nop

	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.or	r11, r3, r3
	l.sw	0(r3), r17
	l.jr	r9
	l.sw	4(r3), r4
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.or	r11, r3, r3
	l.bf	.L401
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.bnf	.L404
	l.ori	r11, r0, 1
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L401:
	l.jr	r9
	 l.nop

.L404:
	l.movhi	r11, hi(0)
	l.sub	r3, r0, r3
	l.j	.L401
	l.sub	r11, r3, r11
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	l.addi	r1, r1, -24
	l.sw	4(r1), r18
	l.or	r18, r5, r5
	l.sw	0(r1), r16
	l.sw	8(r1), r20
	l.sw	16(r1), r24
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r24, r6, r6
	l.or	r5, r6, r6
	l.or	r3, r4, r4
	l.or	r6, r7, r7
	l.or	r4, r18, r18
	l.sw	12(r1), r22
	l.sw	20(r1), r9
	l.jal	__divdi3
	l.or	r22, r7, r7
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
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
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
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r3)
	l.sfne	r17, r19
	l.bf	.L414
	l.sfne	r4, r17
	l.j	.L413
	l.movhi	r11, hi(0)
.L410:
	l.lwz	r17, 4(r3)
	l.sfeq	r17, r19
	l.bf	.L411
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L414:
	l.bf	.L410
	l.movhi	r19, hi(0)
	l.jr	r9
	l.or	r11, r3, r3
.L411:
	l.movhi	r11, hi(0)
.L413:
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
	l.bf	.L416
	l.sfltu	r17, r19
	l.j	.L428
	 l.nop

.L427:
	l.sfne	r19, r21
	l.bnf	.L429
	l.sfltu	r19, r17
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L430
	l.sfltu	r17, r19
.L416:
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.addi	r3, r3, 4
	l.bnf	.L427
	l.addi	r4, r4, 4
	l.sfltu	r17, r19
.L428:
.L430:
	l.bnf	.L419
	l.xori	r11, r0, -1
.L415:
	l.jr	r9
	 l.nop

.L419:
	l.sfltu	r19, r17
.L429:
	l.bf	.L415
	l.ori	r11, r0, 1
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L432:
	l.addi	r17, r17, 4
	l.movhi	r21, hi(0)
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfne	r19, r21
	l.bf	.L432
	l.addi	r4, r4, 4
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L435
	l.or	r11, r3, r3
	l.movhi	r19, hi(0)
.L439:
	l.lwz	r17, 4(r11)
	l.sfne	r17, r19
	l.bf	.L439
	l.addi	r11, r11, 4
.L435:
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
	l.bf	.L441
	l.movhi	r11, hi(0)
	l.j	.L451
	 l.nop

.L449:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L443
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.addi	r3, r3, 4
	l.bf	.L446
	l.addi	r4, r4, 4
.L441:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L449
	l.addi	r5, r5, -1
.L443:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bnf	.L450
	l.sfgtu	r19, r17
	l.bnf	.L446
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L450:
	l.jr	r9
	l.xori	r11, r0, -1
.L446:
	l.movhi	r11, hi(0)
.L451:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L453
	l.movhi	r11, hi(0)
	l.j	.L458
	 l.nop

.L455:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L456
	l.addi	r3, r3, 4
.L453:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L455
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L456:
	l.movhi	r11, hi(0)
.L458:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L460
	l.movhi	r11, hi(0)
	l.j	.L470
	 l.nop

.L462:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L470
	l.movhi	r11, hi(0)
.L460:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L462
	l.addi	r4, r4, 4
	l.sfgeu	r19, r17
	l.bnf	.L469
	l.sfgtu	r19, r17
	l.bnf	.L465
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L465:
	l.movhi	r11, hi(0)
.L470:
	l.jr	r9
	 l.nop

.L469:
	l.jr	r9
	l.xori	r11, r0, -1
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.addi	r1, r1, -8
	l.movhi	r17, hi(0)
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.sfeq	r5, r17
	l.bf	.L472
	l.or	r16, r3, r3
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
.L472:
	l.or	r11, r16, r16
	l.lwz	r9, 4(r1)
	l.lwz	r16, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.sfeq	r3, r4
	l.bf	.L478
	l.or	r11, r3, r3
	l.ori	r19, r0, 2
	l.sll	r19, r5, r19
	l.sub	r21, r3, r4
	l.sfltu	r21, r19
	l.addi	r17, r5, -1
	l.bnf	.L489
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L478
	 l.nop

	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
.L481:
	l.addi	r17, r17, -4
	l.lwz	r23, 0(r19)
	l.sfne	r4, r19
	l.sw	4(r17), r23
	l.bf	.L481
	l.addi	r19, r19, -4
.L478:
	l.jr	r9
	 l.nop

.L489:
	l.sfne	r5, r19
	l.xori	r23, r0, -1
	l.bnf	.L478
	l.or	r19, r3, r3
.L480:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.lwz	r21, 0(r4)
	l.sfne	r17, r23
	l.sw	-4(r19), r21
	l.bf	.L480
	l.addi	r4, r4, 4
	l.jr	r9
	 l.nop

	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.or	r11, r3, r3
	l.bf	.L491
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L492:
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.sw	0(r19), r4
	l.bf	.L492
	l.addi	r19, r19, 4
.L491:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L498
	l.sfeq	r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.add	r17, r3, r5
	l.bf	.L497
	l.add	r4, r4, r5
.L500:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L500
	l.sb	0(r4), r19
.L497:
	l.jr	r9
	 l.nop

.L498:
	l.bf	.L497
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L497
	 l.nop

	l.add	r5, r3, r5
.L501:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r5, r3
	l.bf	.L501
	l.sb	-1(r4), r17
	l.jr	r9
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.ori	r17, r0, 31
	l.ori	r19, r0, 1
	l.sub	r23, r17, r5
	l.srl	r19, r4, r19
	l.srl	r19, r19, r23
	l.sll	r11, r3, r5
	l.addi	r21, r5, -32
	l.or	r11, r19, r11
	l.movhi	r19, hi(0)
	l.sfges	r21, r19
	l.sll	r23, r4, r21
	l.bnf	.L511
	l.sll	r12, r4, r5
	l.or	r11, r23, r23
.L511:
	l.bnf	.L512
	 l.nop

	l.movhi	r12, hi(0)
.L512:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.ori	r19, r0, 1
	l.sll	r19, r3, r19
	l.sub	r17, r17, r5
	l.sll	r17, r19, r17
	l.srl	r4, r4, r5
	l.addi	r21, r5, -32
	l.or	r4, r17, r4
	l.movhi	r17, hi(0)
	l.sfges	r21, r17
	l.srl	r19, r3, r21
	l.bnf	.L513
	l.srl	r3, r3, r5
	l.or	r4, r19, r19
.L513:
	l.bnf	.L514
	 l.nop

	l.movhi	r3, hi(0)
.L514:
	l.or	r11, r3, r11
	l.jr	r9
	l.or	r12, r4, r12
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.ori	r17, r0, 31
	l.ori	r19, r0, 1
	l.sub	r23, r17, r5
	l.sll	r19, r3, r19
	l.sll	r19, r19, r23
	l.srl	r12, r4, r5
	l.addi	r21, r5, -32
	l.or	r12, r19, r12
	l.movhi	r19, hi(0)
	l.sfges	r21, r19
	l.srl	r23, r3, r21
	l.bnf	.L516
	l.srl	r11, r3, r5
	l.or	r12, r23, r23
.L516:
	l.bnf	.L517
	 l.nop

	l.movhi	r11, hi(0)
.L517:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.ori	r19, r0, 1
	l.srl	r19, r4, r19
	l.sub	r17, r17, r5
	l.srl	r17, r19, r17
	l.sll	r3, r3, r5
	l.addi	r21, r5, -32
	l.or	r3, r17, r3
	l.movhi	r17, hi(0)
	l.sfges	r21, r17
	l.sll	r19, r4, r21
	l.bnf	.L518
	l.sll	r4, r4, r5
	l.or	r3, r19, r19
.L518:
	l.bnf	.L519
	 l.nop

	l.movhi	r4, hi(0)
.L519:
	l.or	r11, r3, r11
	l.jr	r9
	l.or	r12, r4, r12
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	l.sub	r17, r0, r4
	l.andi	r17, r17, 31
	l.sll	r4, r3, r4
	l.srl	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r4
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	l.sub	r17, r0, r4
	l.andi	r17, r17, 31
	l.srl	r4, r3, r4
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r4
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	l.sub	r17, r0, r4
	l.andi	r17, r17, 31
	l.sll	r4, r3, r4
	l.srl	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r4
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	l.sub	r17, r0, r4
	l.andi	r17, r17, 31
	l.srl	r4, r3, r4
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r4
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	l.andi	r4, r4, 15
	l.sub	r17, r0, r4
	l.andi	r3, r3, 0xffff
	l.andi	r17, r17, 15
	l.sll	r4, r3, r4
	l.srl	r11, r3, r17
	l.jr	r9
	l.or	r11, r4, r11
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.andi	r4, r4, 15
	l.sub	r17, r0, r4
	l.andi	r3, r3, 0xffff
	l.andi	r17, r17, 15
	l.srl	r4, r3, r4
	l.sll	r11, r3, r17
	l.jr	r9
	l.or	r11, r4, r11
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.andi	r4, r4, 7
	l.sub	r17, r0, r4
	l.andi	r3, r3, 0xff
	l.andi	r17, r17, 7
	l.sll	r4, r3, r4
	l.srl	r11, r3, r17
	l.jr	r9
	l.or	r11, r4, r11
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.andi	r4, r4, 7
	l.sub	r17, r0, r4
	l.andi	r3, r3, 0xff
	l.andi	r17, r17, 7
	l.srl	r4, r3, r4
	l.sll	r11, r3, r17
	l.jr	r9
	l.or	r11, r4, r11
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.ori	r17, r0, 8
	l.andi	r3, r3, 0xffff
	l.srl	r11, r3, r17
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r11, r3
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.ori	r17, r0, 24
	l.ori	r21, r0, 8
	l.srl	r19, r3, r17
	l.sll	r11, r3, r17
	l.srl	r17, r3, r21
	l.or	r11, r11, r19
	l.andi	r17, r17, 65280
	l.sll	r3, r3, r21
	l.or	r11, r11, r17
	l.movhi	r17, hi(16711680)
	l.and	r3, r3, r17
	l.jr	r9
	l.or	r11, r11, r3
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.ori	r27, r0, 24
	l.ori	r29, r0, 8
	l.sll	r19, r3, r29
	l.srl	r21, r3, r29
	l.srl	r17, r4, r27
	l.movhi	r23, hi(16711680)
	l.sll	r11, r4, r27
	l.srl	r12, r3, r27
	l.srl	r25, r4, r27
	l.andi	r21, r21, 65280
	l.or	r17, r19, r17
	l.srl	r19, r4, r29
	l.or	r12, r12, r21
	l.and	r17, r17, r23
	l.sll	r4, r4, r29
	l.or	r11, r11, r25
	l.andi	r19, r19, 65280
	l.or	r12, r12, r17
	l.sll	r3, r3, r27
	l.or	r11, r11, r19
	l.and	r4, r4, r23
	l.or	r11, r11, r4
	l.jr	r9
	l.or	r12, r12, r3
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.movhi	r11, hi(0)
	l.j	.L534
	l.ori	r19, r0, 32
.L537:
	l.sfne	r11, r19
	l.bnf	.L536
	 l.nop

.L534:
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L537
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L536:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L541
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L538
	 l.nop

	l.ori	r11, r0, 1
.L540:
	l.ori	r17, r0, 1
	l.sra	r3, r3, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L540
	l.addi	r11, r11, 1
.L538:
	l.jr	r9
	 l.nop

.L541:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4,"aM",@progbits,4
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
	l.movhi	r17, ha(.LC2)
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.movhi	r18, hi(0)
	l.jal	__ltsf2
	l.lwz	r4, lo(.LC2)(r17)
	l.sflts	r11, r18
	l.bf	.L544
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.or	r3, r16, r16
	l.jal	__gtsf2
	l.lwz	r4, lo(.LC3)(r17)
	l.sfgts	r11, r18
	l.bnf	.L550
	l.ori	r11, r0, 1
.L544:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L550:
	l.movhi	r11, hi(0)
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
	l.movhi	r17, ha(.LC4)
	l.addi	r1, r1, -16
	l.addi	r19, r17, lo(.LC4)
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.movhi	r20, hi(0)
	l.lwz	r5, lo(.LC4)(r17)
	l.jal	__ltdf2
	l.lwz	r6, 4(r19)
	l.sflts	r11, r20
	l.bf	.L551
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC5)(r17)
	l.jal	__gtdf2
	l.lwz	r6, 4(r19)
	l.sfgts	r11, r20
	l.bnf	.L557
	l.ori	r11, r0, 1
.L551:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L557:
	l.movhi	r11, hi(0)
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
	l.movhi	r17, ha(.LC6)
	l.addi	r1, r1, -16
	l.addi	r19, r17, lo(.LC6)
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.movhi	r20, hi(0)
	l.lwz	r5, lo(.LC6)(r17)
	l.jal	__ltdf2
	l.lwz	r6, 4(r19)
	l.sflts	r11, r20
	l.bf	.L558
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC7)(r17)
	l.jal	__gtdf2
	l.lwz	r6, 4(r19)
	l.sfgts	r11, r20
	l.bnf	.L564
	l.ori	r11, r0, 1
.L558:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L564:
	l.movhi	r11, hi(0)
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
	l.or	r16, r3, r3
	l.sw	4(r1), r9
	l.jal	__floatsidf
	l.or	r3, r4, r4
	l.sw	0(r16), r11
	l.sw	4(r16), r12
	l.lwz	r9, 4(r1)
	l.lwz	r16, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	_Qp_itoq, .-_Qp_itoq
	.align 4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.or	r16, r4, r4
	l.or	r4, r3, r3
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r20, r3, r3
	l.jal	__unordsf2
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L568
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L568
	l.sfges	r16, r18
	l.bf	.L570
	l.movhi	r18, hi(1073741824)
	l.movhi	r18, hi(1056964608)
.L570:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L583
	l.ori	r17, r0, 31
.L572:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.ori	r17, r0, 31
.L583:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L584
	l.or	r11, r20, r20
.L573:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L572
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L573
	l.sra	r16, r17, r19
.L568:
	l.or	r11, r20, r20
.L584:
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
	l.addi	r1, r1, -28
	l.sw	8(r1), r16
	l.or	r6, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.jal	__unorddf2
	l.movhi	r22, hi(0)
	l.sfne	r11, r22
	l.bf	.L586
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r11, r11
	l.jal	__nedf2
	l.or	r4, r12, r12
	l.sfne	r11, r22
	l.bnf	.L586
	l.sfges	r16, r22
	l.bnf	.L601
	l.movhi	r17, ha(.LC10+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC10+4)(r17)
.L588:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L602
	l.ori	r17, r0, 31
.L590:
	l.or	r3, r20, r20
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.lwz	r6, 0(r1)
	l.ori	r17, r0, 31
.L602:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L603
	l.or	r11, r20, r20
.L591:
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.bf	.L590
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L591
	l.sra	r16, r17, r19
.L586:
	l.or	r11, r20, r20
.L603:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L601:
	l.movhi	r17, ha(.LC11+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L588
	l.lwz	r6, lo(.LC11+4)(r17)
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
	l.sw	8(r1), r16
	l.or	r6, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.jal	__unorddf2
	l.movhi	r22, hi(0)
	l.sfne	r11, r22
	l.bf	.L605
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.or	r3, r20, r20
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r22
	l.bnf	.L605
	l.sfges	r16, r22
	l.bnf	.L620
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC13+4)(r17)
.L607:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L621
	l.ori	r17, r0, 31
.L609:
	l.or	r3, r20, r20
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.lwz	r6, 0(r1)
	l.ori	r17, r0, 31
.L621:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L622
	l.or	r11, r20, r20
.L610:
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.bf	.L609
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L610
	l.sra	r16, r17, r19
.L605:
	l.or	r11, r20, r20
.L622:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L620:
	l.movhi	r17, ha(.LC12+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L607
	l.lwz	r6, lo(.LC12+4)(r17)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L624
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L625:
	l.lbz	r19, 0(r17)
	l.lbz	r21, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.sb	0(r17), r19
	l.bf	.L625
	l.addi	r17, r17, 1
.L624:
	l.jr	r9
	 l.nop

	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.or	r11, r3, r3
	l.bf	.L644
	l.or	r17, r3, r3
.L632:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L632
	l.addi	r17, r17, 1
	l.movhi	r19, hi(0)
.L644:
	l.sfne	r5, r19
	l.bf	.L633
	 l.nop

	l.j	.L643
	l.sb	0(r17), r0
.L635:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L634
	 l.nop

.L633:
	l.lbs	r19, 0(r4)
	l.movhi	r21, hi(0)
	l.sb	0(r17), r19
	l.sfne	r19, r21
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L635
	l.addi	r17, r17, 1
	l.jr	r9
	 l.nop

.L634:
	l.sb	0(r17), r0
.L643:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L645
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L653:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L648
	 l.nop

.L645:
	l.jr	r9
	 l.nop

.L648:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L653
	l.add	r17, r3, r11
	l.jr	r9
	 l.nop

	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.lbs	r21, 0(r3)
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bnf	.L659
	l.or	r11, r3, r3
.L655:
	l.j	.L658
	l.or	r17, r4, r4
.L657:
	l.sfeq	r19, r21
	l.bf	.L656
	 l.nop

.L658:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L657
	l.addi	r17, r17, 1
	l.lbs	r21, 1(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L655
	l.addi	r11, r11, 1
.L659:
	l.movhi	r11, hi(0)
.L656:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L663:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.bnf	.L667
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L667:
	l.sfne	r17, r19
	l.bf	.L663
	l.addi	r3, r3, 1
	l.jr	r9
	 l.nop

	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.lbs	r25, 0(r4)
	l.movhi	r17, hi(0)
	l.sfeq	r25, r17
	l.bf	.L679
	l.or	r17, r4, r4
.L670:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L670
	l.addi	r17, r17, 1
	l.sfeq	r17, r4
	l.bf	.L679
	l.sub	r29, r17, r4
	l.andi	r31, r25, 0xff
	l.j	.L676
	l.addi	r29, r29, -1
.L689:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L688
	l.addi	r3, r3, 1
.L676:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r25
	l.bnf	.L689
	l.or	r21, r31, r31
	l.add	r27, r3, r29
	l.or	r19, r4, r4
	l.j	.L672
	l.or	r17, r3, r3
.L690:
	l.bf	.L673
	l.addi	r17, r17, 1
	l.sfeq	r23, r21
	l.bnf	.L673
	 l.nop

	l.lbz	r21, 0(r17)
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L673
	l.addi	r19, r19, 1
.L672:
	l.lbz	r23, 0(r19)
	l.movhi	r13, hi(0)
	l.sfeq	r23, r13
	l.bnf	.L690
	l.sfeq	r27, r17
.L673:
	l.lbz	r17, 0(r19)
	l.sfeq	r17, r21
	l.bf	.L679
	 l.nop

	l.j	.L676
	l.addi	r3, r3, 1
.L688:
	l.jr	r9
	l.movhi	r11, hi(0)
.L679:
	l.jr	r9
	l.or	r11, r3, r3
	.size	strstr, .-strstr
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	l.addi	r1, r1, -24
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.or	r20, r6, r6
	l.or	r22, r5, r5
	l.movhi	r6, hi(0)
	l.movhi	r5, hi(0)
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__ltdf2
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.movhi	r5, hi(0)
	l.bf	.L702
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L695
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L703
	l.movhi	r17, hi(-2147483648)
.L695:
	l.or	r11, r16, r16
.L704:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L702:
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L704
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L703:
	l.j	.L695
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L711
	l.sfltu	r4, r6
	l.bf	.L713
	l.sub	r27, r4, r6
	l.add	r27, r3, r27
	l.sfgtu	r3, r27
	l.bf	.L713
	l.add	r25, r3, r6
	l.lbs	r29, 0(r5)
	l.j	.L710
	l.ori	r31, r0, 1
.L707:
	l.sfgeu	r27, r3
	l.bnf	.L713
	l.addi	r25, r25, 1
.L710:
	l.lbs	r17, 0(r3)
	l.sfne	r17, r29
	l.or	r11, r3, r3
	l.bf	.L707
	l.addi	r3, r3, 1
	l.sfne	r6, r31
	l.bnf	.L705
	l.addi	r19, r5, 1
	l.or	r17, r3, r3
.L708:
	l.lbz	r23, 0(r17)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r17, r17, 1
	l.bnf	.L707
	l.addi	r19, r19, 1
	l.sfeq	r17, r25
	l.bnf	.L708
	 l.nop

.L705:
	l.jr	r9
	 l.nop

.L713:
	l.jr	r9
	l.movhi	r11, hi(0)
.L711:
	l.jr	r9
	l.or	r11, r3, r3
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -12
	l.movhi	r17, hi(0)
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.sfeq	r5, r17
	l.or	r16, r5, r5
	l.bf	.L717
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L717:
	l.add	r11, r18, r16
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 4
.LC16:
	.long	-1074790400
	.long	0
	.align 4
.LC17:
	.long	-1075838976
	.long	0
	.align 4
.LC18:
	.long	1072693248
	.long	0
	.align 4
.LC19:
	.long	1071644672
	.long	0
	.section	.text
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	l.addi	r1, r1, -40
	l.sw	32(r1), r30
	l.movhi	r6, hi(0)
	l.or	r30, r5, r5
	l.movhi	r5, hi(0)
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	16(r1), r22
	l.sw	0(r1), r14
	l.sw	12(r1), r20
	l.sw	20(r1), r24
	l.sw	24(r1), r26
	l.sw	28(r1), r28
	l.sw	36(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__ltdf2
	l.movhi	r22, hi(0)
	l.sflts	r11, r22
	l.bf	.L745
	l.movhi	r5, hi(1072693248)
	l.movhi	r22, ha(.LC18)
	l.addi	r22, r22, lo(.LC18)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.jal	__gedf2
	l.lwz	r6, 4(r22)
	l.sfges	r11, r20
	l.bnf	.L746
	l.movhi	r14, hi(0)
.L725:
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.movhi	r20, hi(0)
	l.lwz	r26, 0(r22)
	l.lwz	r24, 4(r22)
	l.lwz	r28, lo(.LC19)(r17)
	l.lwz	r22, 4(r19)
.L731:
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.or	r5, r28, r28
	l.jal	__muldf3
	l.or	r6, r22, r22
	l.or	r16, r11, r11
	l.or	r5, r26, r26
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.or	r4, r12, r12
	l.jal	__gedf2
	l.or	r18, r12, r12
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L731
	l.addi	r20, r20, 1
	l.movhi	r17, hi(0)
	l.sfeq	r14, r17
.L748:
	l.bf	.L738
	l.sw	0(r30), r20
.L727:
	l.movhi	r17, hi(-2147483648)
	l.xor	r11, r16, r17
.L722:
	l.or	r12, r18, r18
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
.L746:
	l.movhi	r17, ha(.LC19)
	l.addi	r22, r17, lo(.LC19)
	l.movhi	r5, hi(1071644672)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	l.lwz	r6, 4(r22)
	l.sflts	r11, r20
	l.bnf	.L728
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bf	.L737
	l.or	r20, r16, r16
.L728:
	l.sw	0(r30), r0
	l.j	.L722
	l.or	r11, r16, r16
.L745:
	l.movhi	r17, ha(.LC16+4)
	l.movhi	r5, hi(-1074790400)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ledf2
	l.lwz	r6, lo(.LC16+4)(r17)
	l.movhi	r20, hi(-2147483648)
	l.sfles	r11, r22
	l.bnf	.L747
	l.xor	r20, r16, r20
	l.movhi	r22, ha(.LC18)
	l.or	r16, r20, r20
	l.ori	r14, r0, 1
	l.j	.L725
	l.addi	r22, r22, lo(.LC18)
.L738:
	l.j	.L722
	l.or	r11, r16, r16
.L747:
	l.movhi	r17, ha(.LC17+4)
	l.movhi	r5, hi(-1075838976)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	l.lwz	r6, lo(.LC17+4)(r17)
	l.sfgts	r11, r22
	l.bf	.L735
	l.movhi	r17, ha(.LC19)
	l.sw	0(r30), r0
	l.j	.L727
	l.or	r16, r20, r20
.L735:
	l.ori	r14, r0, 1
	l.addi	r22, r17, lo(.LC19)
.L726:
	l.or	r16, r20, r20
	l.movhi	r20, hi(0)
	l.lwz	r24, 0(r22)
	l.lwz	r22, 4(r22)
.L733:
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r16, r11, r11
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.or	r4, r12, r12
	l.jal	__ltdf2
	l.or	r18, r12, r12
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L733
	l.addi	r20, r20, -1
	l.j	.L748
	l.sfeq	r14, r17
.L737:
	l.j	.L726
	l.movhi	r14, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r17, r4, r3
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.movhi	r11, hi(0)
	l.bf	.L749
	l.movhi	r12, hi(0)
.L752:
	l.andi	r17, r4, 1
	l.sub	r19, r0, r17
	l.and	r19, r19, r6
	l.add	r19, r12, r19
	l.ori	r23, r0, 31
	l.sub	r17, r0, r17
	l.ori	r27, r0, 1
	l.sfltu	r19, r12
	l.add	r21, r6, r6
	l.sll	r23, r3, r23
	l.srl	r4, r4, r27
	l.and	r17, r17, r5
	l.bf	.L755
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L755:
	l.sfltu	r21, r6
	l.or	r4, r23, r4
	l.srl	r3, r3, r27
	l.add	r11, r11, r17
	l.bf	.L756
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L756:
	l.or	r17, r3, r4
	l.or	r12, r19, r19
	l.movhi	r19, hi(0)
	l.add	r5, r5, r5
	l.sfne	r17, r19
	l.add	r11, r25, r11
	l.add	r5, r23, r5
	l.bf	.L752
	l.or	r6, r21, r21
.L749:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bf	.L758
	l.ori	r17, r0, 1
	l.j	.L764
	l.movhi	r11, hi(0)
.L762:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.add	r17, r17, r17
	l.bnf	.L774
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L761
	 l.nop

.L758:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L762
	l.addi	r11, r11, -1
.L759:
	l.movhi	r11, hi(0)
.L764:
	l.sfltu	r3, r4
.L777:
	l.bf	.L776
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L776:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L777
	l.sfltu	r3, r4
.L761:
	l.movhi	r17, hi(0)
.L775:
	l.sfne	r5, r17
	l.bnf	.L773
	 l.nop

	l.or	r11, r3, r3
.L773:
	l.jr	r9
	 l.nop

.L774:
	l.sfne	r17, r19
	l.bf	.L759
	l.movhi	r11, hi(0)
	l.j	.L775
	l.movhi	r17, hi(0)
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.ori	r19, r0, 24
	l.sll	r17, r3, r19
	l.sra	r17, r17, r19
	l.ori	r19, r0, 31
	l.sra	r19, r17, r19
	l.sfeq	r17, r19
	l.bf	.L780
	l.xor	r3, r17, r19
	l.ori	r17, r0, 8
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzsi2
	l.sll	r3, r3, r17
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L780:
	l.jr	r9
	l.ori	r11, r0, 7
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.ori	r19, r0, 31
	l.sra	r21, r3, r19
	l.or	r17, r3, r3
	l.sfne	r17, r21
	l.or	r19, r4, r4
	l.xor	r3, r3, r21
	l.bnf	.L794
	l.xor	r4, r4, r21
.L789:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L794:
	l.sfne	r19, r17
	l.bf	.L789
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
	l.bf	.L795
	l.movhi	r11, hi(0)
.L797:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L797
	l.add	r4, r4, r4
.L795:
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.ori	r17, r0, 3
	l.xori	r27, r0, -8
	l.sfltu	r3, r4
	l.srl	r25, r5, r17
	l.bf	.L801
	l.and	r27, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L814
	l.movhi	r17, hi(0)
.L801:
	l.movhi	r17, hi(0)
	l.sfeq	r25, r17
	l.bf	.L815
	l.sfleu	r5, r27
	l.ori	r17, r0, 3
	l.sll	r25, r25, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r25, r25, r4
.L805:
	l.lwz	r23, 0(r17)
	l.lwz	r21, 4(r17)
	l.addi	r17, r17, 8
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.sfne	r17, r25
	l.bf	.L805
	l.addi	r19, r19, 8
	l.sfleu	r5, r27
.L815:
	l.bf	.L800
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r4, r4, r5
.L806:
	l.lbs	r19, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r3), r19
	l.sfne	r17, r4
	l.bf	.L806
	l.addi	r3, r3, 1
.L800:
	l.jr	r9
	 l.nop

.L814:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L800
	l.addi	r17, r5, -1
.L802:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L802
	l.sb	0(r19), r21
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfltu	r3, r4
	l.bf	.L817
	l.srl	r23, r5, r17
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L831
	l.movhi	r17, hi(0)
.L817:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L820
	l.or	r17, r4, r4
	l.add	r23, r23, r23
	l.or	r19, r3, r3
	l.add	r23, r23, r4
.L821:
	l.lhs	r21, 0(r17)
	l.addi	r17, r17, 2
	l.sh	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L821
	l.addi	r19, r19, 2
.L820:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L816
	l.add	r4, r4, r5
	l.lbs	r19, -1(r4)
	l.add	r3, r3, r5
	l.sb	-1(r3), r19
.L816:
	l.jr	r9
	 l.nop

.L831:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L816
	l.addi	r17, r5, -1
.L818:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L818
	l.sb	0(r19), r21
	l.jr	r9
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.ori	r17, r0, 2
	l.xori	r25, r0, -4
	l.sfltu	r3, r4
	l.srl	r23, r5, r17
	l.bf	.L833
	l.and	r25, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L846
	l.movhi	r17, hi(0)
.L833:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L847
	l.sfleu	r5, r25
	l.ori	r17, r0, 2
	l.sll	r23, r23, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r23, r23, r4
.L837:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L837
	l.addi	r19, r19, 4
	l.sfleu	r5, r25
.L847:
	l.bf	.L832
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r4, r4, r5
.L838:
	l.lbs	r19, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r3), r19
	l.sfne	r17, r4
	l.bf	.L838
	l.addi	r3, r3, 1
.L832:
	l.jr	r9
	 l.nop

.L846:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L832
	l.addi	r17, r5, -1
.L834:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L834
	l.sb	0(r19), r21
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
.L862:
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L858
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r21
	l.bf	.L862
	l.sub	r17, r19, r11
.L858:
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
.L867:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L863
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L867
	l.sra	r17, r3, r11
.L863:
	l.jr	r9
	 l.nop

	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.movhi	r16, hi(1191182336)
	l.or	r4, r16, r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.jal	__gesf2
	l.or	r18, r3, r3
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L875
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L875:
	l.jal	__subsf3
	l.or	r3, r18, r18
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.add	r11, r11, r17
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.movhi	r17, hi(0)
	l.ori	r21, r0, 16
.L877:
	l.sra	r19, r3, r17
	l.addi	r17, r17, 1
	l.andi	r19, r19, 1
	l.sfne	r17, r21
	l.bf	.L877
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
.L880:
	l.sra	r19, r3, r17
	l.addi	r17, r17, 1
	l.andi	r19, r19, 1
	l.sfne	r17, r21
	l.bf	.L880
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
	l.bf	.L882
	l.movhi	r11, hi(0)
.L884:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L884
	l.add	r4, r4, r4
.L882:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L887
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L887
	 l.nop

.L889:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L889
	l.add	r3, r3, r3
.L887:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L894
	l.ori	r17, r0, 1
	l.j	.L900
	l.movhi	r11, hi(0)
.L898:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L896
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L897
	 l.nop

.L894:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L898
	l.addi	r11, r11, -1
.L895:
	l.movhi	r11, hi(0)
.L900:
	l.sfltu	r3, r4
.L912:
	l.bf	.L911
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L911:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L912
	l.sfltu	r3, r4
.L897:
	l.movhi	r17, hi(0)
.L913:
	l.sfne	r5, r17
	l.bnf	.L910
	 l.nop

	l.or	r11, r3, r3
.L910:
	l.jr	r9
	 l.nop

.L896:
	l.sfeq	r17, r19
	l.bnf	.L895
	l.movhi	r11, hi(0)
	l.j	.L913
	l.movhi	r17, hi(0)
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
	l.or	r18, r4, r4
	l.jal	__ltsf2
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L917
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L920
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L920:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L917:
	l.xori	r11, r0, -1
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
	l.or	r20, r6, r6
	l.jal	__ltdf2
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L924
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L927
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L927:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L924:
	l.xori	r11, r0, -1
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
	l.or	r17, r3, r3
	l.ori	r19, r0, 31
	l.addi	r1, r1, -4
	l.or	r6, r4, r4
	l.sra	r5, r4, r19
	l.sra	r3, r3, r19
	l.sw	0(r1), r9
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
	l.or	r17, r3, r3
	l.addi	r1, r1, -4
	l.or	r6, r4, r4
	l.movhi	r5, hi(0)
	l.movhi	r3, hi(0)
	l.sw	0(r1), r9
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
	l.bnf	.L946
	l.sfeq	r4, r17
	l.bf	.L938
	l.movhi	r21, hi(0)
.L934:
	l.ori	r19, r0, 32
	l.j	.L937
	l.movhi	r11, hi(0)
.L947:
	l.sfne	r19, r17
	l.bnf	.L948
	l.movhi	r17, hi(0)
.L937:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.ori	r23, r0, 1
	l.sra	r4, r4, r23
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.addi	r19, r19, -1
	l.sfeq	r4, r17
	l.andi	r19, r19, 0xff
	l.bnf	.L947
	l.add	r3, r3, r3
	l.movhi	r17, hi(0)
.L948:
	l.sfeq	r21, r17
	l.bf	.L932
	 l.nop

	l.sub	r11, r0, r11
.L932:
	l.jr	r9
	 l.nop

.L946:
	l.sub	r4, r0, r4
	l.j	.L934
	l.ori	r21, r0, 1
.L938:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L970
	 l.nop

	l.movhi	r23, hi(0)
.L950:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L971
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.xori	r23, r23, 1
	l.sfgtu	r3, r4
.L971:
	l.or	r21, r3, r3
	l.ori	r19, r0, 32
	l.bf	.L952
	l.ori	r17, r0, 1
	l.j	.L958
	l.movhi	r11, hi(0)
.L956:
	l.movhi	r25, hi(0)
	l.sfeq	r19, r25
	l.bf	.L955
	 l.nop

.L952:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L956
	l.add	r17, r17, r17
.L955:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L954
	l.movhi	r11, hi(0)
	l.movhi	r11, hi(0)
.L958:
	l.sfltu	r21, r4
.L973:
	l.bf	.L972
	l.ori	r19, r0, 1
	l.sub	r21, r21, r4
	l.or	r11, r11, r17
.L972:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L973
	l.sfltu	r21, r4
.L954:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L949
	 l.nop

	l.sub	r11, r0, r11
.L949:
	l.jr	r9
	 l.nop

.L970:
	l.sub	r3, r0, r3
	l.j	.L950
	l.ori	r23, r0, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L996
	 l.nop

	l.movhi	r21, hi(0)
.L975:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L976
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L976:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bf	.L977
	l.ori	r17, r0, 1
	l.j	.L998
	l.ori	r19, r0, 1
.L981:
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L995
	 l.nop

.L977:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L981
	l.add	r17, r17, r17
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L997
	l.ori	r19, r0, 1
.L998:
	l.sfltu	r11, r4
	l.bf	.L982
	l.srl	r17, r17, r19
	l.sub	r11, r11, r4
.L982:
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
.L995:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L998
	l.ori	r19, r0, 1
.L997:
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bf	.L974
	 l.nop

	l.sub	r11, r0, r11
.L974:
	l.jr	r9
	 l.nop

.L996:
	l.sub	r3, r0, r3
	l.j	.L975
	l.ori	r21, r0, 1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.ori	r21, r0, 16
	l.bnf	.L1001
	l.ori	r17, r0, 1
	l.ori	r19, r0, 16
.L1015:
	l.sll	r19, r4, r19
	l.movhi	r27, hi(0)
	l.sfges	r19, r27
	l.add	r25, r4, r4
	l.add	r23, r17, r17
	l.bnf	.L1001
	l.addi	r21, r21, -1
	l.andi	r4, r25, 0xffff
	l.sfgtu	r11, r4
	l.andi	r17, r23, 0xffff
	l.bnf	.L1013
	l.movhi	r19, hi(0)
	l.sfeq	r21, r19
	l.bnf	.L1015
	l.ori	r19, r0, 16
	l.movhi	r21, hi(0)
.L1016:
	l.movhi	r17, hi(0)
.L1014:
	l.sfne	r5, r17
	l.bf	.L1012
	 l.nop

	l.or	r11, r21, r21
.L1012:
	l.jr	r9
	 l.nop

.L1013:
	l.sfne	r17, r19
	l.bnf	.L1016
	l.movhi	r21, hi(0)
.L1001:
	l.movhi	r21, hi(0)
	l.sfltu	r11, r4
.L1017:
	l.ori	r23, r0, 1
	l.sub	r19, r11, r4
	l.bf	.L1005
	l.srl	r4, r4, r23
	l.or	r21, r17, r21
	l.andi	r11, r19, 0xffff
.L1005:
	l.ori	r19, r0, 1
	l.srl	r17, r17, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1017
	l.sfltu	r11, r4
	l.j	.L1014
	l.movhi	r17, hi(0)
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1019
	l.ori	r17, r0, 1
	l.j	.L1025
	l.movhi	r11, hi(0)
.L1023:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L1021
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L1022
	 l.nop

.L1019:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1023
	l.addi	r11, r11, -1
.L1020:
	l.movhi	r11, hi(0)
.L1025:
	l.sfltu	r3, r4
.L1037:
	l.bf	.L1036
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L1036:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1037
	l.sfltu	r3, r4
.L1022:
	l.movhi	r17, hi(0)
.L1038:
	l.sfne	r5, r17
	l.bnf	.L1035
	 l.nop

	l.or	r11, r3, r3
.L1035:
	l.jr	r9
	 l.nop

.L1021:
	l.sfeq	r17, r19
	l.bnf	.L1020
	l.movhi	r11, hi(0)
	l.j	.L1038
	l.movhi	r17, hi(0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1040
	 l.nop

	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1040:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L1043
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.srl	r17, r4, r17
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r17, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1043:
	l.or	r11, r3, r3
	l.jr	r9
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1046
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.jr	r9
	l.sra	r12, r3, r5
.L1046:
	l.sfeq	r5, r17
	l.bf	.L1049
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r17, r12
.L1049:
	l.or	r11, r3, r3
	l.jr	r9
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.ori	r27, r0, 24
	l.ori	r29, r0, 8
	l.sll	r19, r3, r29
	l.srl	r21, r3, r29
	l.srl	r17, r4, r27
	l.movhi	r23, hi(16711680)
	l.srl	r12, r3, r27
	l.sll	r11, r4, r27
	l.srl	r25, r4, r27
	l.andi	r21, r21, 65280
	l.or	r17, r19, r17
	l.srl	r19, r4, r29
	l.or	r12, r12, r21
	l.and	r17, r17, r23
	l.sll	r4, r4, r29
	l.or	r11, r11, r25
	l.andi	r19, r19, 65280
	l.or	r12, r12, r17
	l.sll	r3, r3, r27
	l.or	r11, r11, r19
	l.and	r4, r4, r23
	l.or	r11, r11, r4
	l.jr	r9
	l.or	r12, r12, r3
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.ori	r17, r0, 24
	l.ori	r21, r0, 8
	l.sll	r19, r3, r17
	l.srl	r11, r3, r17
	l.srl	r17, r3, r21
	l.or	r11, r11, r19
	l.andi	r17, r17, 65280
	l.sll	r3, r3, r21
	l.or	r11, r11, r17
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
	l.bf	.L1054
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1054:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r25
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r29, hi(0)
	l.sfeq	r19, r29
	l.bf	.L1055
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1055:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.ori	r19, r0, 8
	l.sub	r19, r19, r23
	l.srl	r17, r17, r19
	l.andi	r19, r17, 240
	l.sfeq	r19, r29
	l.bf	.L1056
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1056:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.ori	r19, r0, 4
	l.sub	r19, r19, r21
	l.srl	r17, r17, r19
	l.andi	r19, r17, 12
	l.sfeq	r19, r29
	l.bf	.L1057
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1057:
	l.ori	r11, r0, 2
	l.add	r19, r19, r19
	l.sub	r27, r11, r19
	l.srl	r17, r17, r27
	l.add	r23, r23, r25
	l.and	r25, r17, r11
	l.sfeq	r25, r29
	l.add	r21, r21, r23
	l.bf	.L1053
	l.sub	r11, r11, r17
	l.movhi	r11, hi(0)
.L1053:
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1062
	l.sfgts	r3, r5
	l.bf	.L1063
	l.sfltu	r4, r6
	l.bf	.L1062
	l.sfgtu	r4, r6
	l.bf	.L1063
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1062:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1063:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1068
	l.sfgts	r3, r5
	l.bf	.L1069
	l.sfltu	r4, r6
	l.bf	.L1068
	l.sfgtu	r4, r6
	l.bf	.L1069
	 l.nop

	l.ori	r11, r0, 1
	l.jr	r9
	l.addi	r11, r11, -1
.L1068:
	l.movhi	r11, hi(0)
	l.jr	r9
	l.addi	r11, r11, -1
.L1069:
	l.ori	r11, r0, 2
	l.jr	r9
	l.addi	r11, r11, -1
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.movhi	r27, hi(0)
	l.sfeq	r17, r27
	l.bf	.L1071
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1071:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.srl	r17, r3, r25
	l.andi	r19, r17, 255
	l.sfeq	r19, r27
	l.bf	.L1072
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1072:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.srl	r17, r17, r23
	l.andi	r19, r17, 15
	l.sfeq	r19, r27
	l.bf	.L1073
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1073:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.srl	r17, r17, r21
	l.andi	r19, r17, 3
	l.sfeq	r19, r27
	l.bf	.L1074
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1074:
	l.add	r19, r19, r19
	l.srl	r17, r17, r19
	l.andi	r17, r17, 3
	l.add	r23, r23, r25
	l.xori	r11, r17, -1
	l.ori	r25, r0, 1
	l.add	r21, r21, r23
	l.srl	r17, r17, r25
	l.ori	r23, r0, 2
	l.andi	r11, r11, 1
	l.sub	r17, r23, r17
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
	l.bf	.L1076
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1078:
	l.jr	r9
	 l.nop

.L1076:
	l.sfeq	r5, r17
	l.bf	.L1079
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r17, r12
	l.j	.L1078
	l.or	r11, r3, r3
.L1079:
	l.or	r11, r3, r3
	l.jr	r9
	l.or	r12, r4, r4
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.ori	r21, r0, 16
	l.andi	r11, r3, 65535
	l.andi	r17, r4, 65535
	l.mul	r12, r11, r17
	l.srl	r3, r3, r21
	l.srl	r19, r12, r21
	l.mul	r17, r17, r3
	l.srl	r4, r4, r21
	l.add	r17, r17, r19
	l.andi	r19, r17, 0xffff
	l.mul	r11, r11, r4
	l.add	r11, r11, r19
	l.srl	r17, r17, r21
	l.mul	r3, r3, r4
	l.sll	r19, r11, r21
	l.add	r17, r17, r3
	l.srl	r11, r11, r21
	l.andi	r12, r12, 0xffff
	l.add	r11, r17, r11
	l.jr	r9
	l.add	r12, r12, r19
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.ori	r27, r0, 16
	l.andi	r19, r4, 65535
	l.andi	r17, r6, 65535
	l.mul	r12, r19, r17
	l.srl	r21, r4, r27
	l.srl	r23, r12, r27
	l.mul	r17, r17, r21
	l.add	r17, r17, r23
	l.srl	r23, r6, r27
	l.andi	r25, r17, 0xffff
	l.mul	r19, r19, r23
	l.add	r19, r19, r25
	l.mul	r21, r21, r23
	l.srl	r17, r17, r27
	l.add	r17, r17, r21
	l.srl	r21, r19, r27
	l.add	r17, r17, r21
	l.mul	r4, r4, r5
	l.sll	r19, r19, r27
	l.add	r4, r4, r17
	l.mul	r6, r6, r3
	l.andi	r12, r12, 0xffff
	l.add	r11, r4, r6
	l.jr	r9
	l.add	r12, r12, r19
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.movhi	r17, hi(0)
	l.sfne	r17, r4
	l.sub	r12, r17, r4
	l.bf	.L1083
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L1083:
	l.sub	r17, r17, r3
	l.jr	r9
	l.sub	r11, r17, r11
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
	l.ori	r23, r0, 1
	l.sll	r21, r3, r17
	l.movhi	r19, hi(1431633920)
	l.srl	r17, r4, r23
	l.ori	r19, r19, 21845
	l.or	r17, r21, r17
	l.and	r17, r17, r19
	l.sub	r17, r4, r17
	l.srl	r21, r3, r23
	l.sfgtu	r17, r4
	l.and	r19, r21, r19
	l.bf	.L1087
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1087:
	l.sub	r3, r3, r19
	l.sub	r3, r3, r21
	l.ori	r19, r0, 30
	l.ori	r25, r0, 2
	l.sll	r23, r3, r19
	l.srl	r21, r17, r25
	l.movhi	r19, hi(858980352)
	l.ori	r19, r19, 13107
	l.or	r21, r23, r21
	l.and	r21, r21, r19
	l.and	r17, r17, r19
	l.add	r17, r21, r17
	l.srl	r23, r3, r25
	l.sfltu	r17, r21
	l.and	r23, r23, r19
	l.and	r3, r3, r19
	l.bf	.L1088
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1088:
	l.add	r19, r23, r3
	l.add	r21, r21, r19
	l.ori	r25, r0, 4
	l.ori	r19, r0, 28
	l.sll	r23, r21, r19
	l.srl	r19, r17, r25
	l.or	r19, r23, r19
	l.add	r17, r19, r17
	l.sfltu	r17, r19
	l.srl	r23, r21, r25
	l.bf	.L1089
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1089:
	l.add	r23, r23, r21
	l.movhi	r21, hi(252641280)
	l.ori	r21, r21, 3855
	l.add	r19, r19, r23
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
	l.movhi	r19, hi(1431633920)
	l.srl	r17, r3, r17
	l.ori	r19, r19, 21845
	l.and	r17, r17, r19
	l.sub	r3, r3, r17
	l.ori	r19, r0, 2
	l.movhi	r17, hi(858980352)
	l.ori	r17, r17, 13107
	l.srl	r19, r3, r19
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
.LC21:
	.long	1072693248
	.long	0
	.section	.text
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	l.addi	r1, r1, -28
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sw	8(r1), r16
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.or	r20, r5, r5
	l.sfeq	r17, r19
	l.sw	24(r1), r9
	l.movhi	r17, ha(.LC21+4)
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.or	r16, r20, r20
	l.movhi	r22, hi(1072693248)
	l.bf	.L1092
	l.lwz	r18, lo(.LC21+4)(r17)
.L1094:
	l.or	r3, r22, r22
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.lwz	r6, 0(r1)
	l.lwz	r5, 4(r1)
.L1092:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1093
	l.sfges	r20, r17
.L1095:
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.bf	.L1094
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1095
	l.sra	r16, r17, r19
.L1093:
	l.bf	.L1099
	l.or	r11, r22, r22
	l.or	r5, r22, r22
	l.or	r6, r18, r18
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.or	r11, r22, r22
.L1099:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.addi	r1, r1, -20
	l.andi	r17, r4, 1
	l.movhi	r19, hi(0)
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.sfeq	r17, r19
	l.or	r22, r4, r4
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.bf	.L1101
	l.movhi	r20, hi(1065353216)
.L1103:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
.L1101:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1102
	l.sfges	r22, r17
.L1104:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L1103
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1104
	l.sra	r16, r17, r19
.L1102:
	l.bf	.L1108
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.jal	__divsf3
	l.movhi	r3, hi(1065353216)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L1108:
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
	l.bf	.L1113
	l.sfgtu	r3, r5
	l.bf	.L1114
	l.sfltu	r4, r6
	l.bf	.L1113
	l.sfgtu	r4, r6
	l.bf	.L1114
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1113:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1114:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1119
	l.sfgtu	r3, r5
	l.bf	.L1120
	l.sfltu	r4, r6
	l.bf	.L1119
	l.sfgtu	r4, r6
	l.bf	.L1120
	 l.nop

	l.ori	r11, r0, 1
	l.jr	r9
	l.addi	r11, r11, -1
.L1119:
	l.movhi	r11, hi(0)
	l.jr	r9
	l.addi	r11, r11, -1
.L1120:
	l.ori	r11, r0, 2
	l.jr	r9
	l.addi	r11, r11, -1
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
	.global	__ledf2
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
