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
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L20
	l.addi	r3, r3, 1
.L16:
	l.lbz	r17, 0(r4)
	l.sfne	r17, r5
	l.bf	.L18
	l.sb	0(r3), r17
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L20
	 l.nop

	l.jr	r9
	l.addi	r11, r3, 1
.L20:
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
	l.j	.L36
	l.movhi	r11, hi(0)
.L30:
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bf	.L33
	l.addi	r3, r3, 1
.L28:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L30
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L33
	l.or	r11, r3, r3
	l.jr	r9
	 l.nop

.L33:
	l.movhi	r11, hi(0)
.L36:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L38
	l.movhi	r11, hi(0)
	l.j	.L48
	 l.nop

.L40:
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L42
	l.addi	r4, r4, 1
.L38:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r11, r17
	l.bf	.L40
	l.addi	r5, r5, -1
	l.addi	r5, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L42
	 l.nop

	l.jr	r9
	l.sub	r11, r11, r17
.L42:
	l.movhi	r11, hi(0)
.L48:
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
	l.bf	.L50
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L50:
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
	l.j	.L56
	l.addi	r3, r3, -1
.L58:
	l.lbz	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L55
	l.addi	r5, r5, -1
.L56:
	l.sfne	r5, r3
	l.bf	.L58
	l.or	r11, r5, r5
	l.movhi	r11, hi(0)
.L55:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L60
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
.L61:
	l.sb	0(r17), r4
	l.addi	r17, r17, 1
	l.sfne	r5, r17
	l.bf	.L61
	 l.nop

.L60:
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
	l.bf	.L67
	l.sb	0(r3), r17
.L68:
	l.addi	r4, r4, 1
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L68
	l.sb	0(r11), r17
.L67:
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.or	r11, r3, r3
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L74
	l.andi	r4, r4, 0xff
	l.j	.L73
	 l.nop

.L76:
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r19
	l.bf	.L73
	 l.nop

.L74:
	l.andi	r17, r17, 0xff
	l.sfne	r17, r4
	l.bf	.L76
	l.movhi	r19, hi(0)
.L73:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.j	.L82
	l.or	r11, r3, r3
.L85:
	l.sfne	r17, r19
	l.bnf	.L84
	l.addi	r11, r11, 1
.L82:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bnf	.L85
	l.movhi	r19, hi(0)
	l.jr	r9
	 l.nop

.L84:
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
	l.bf	.L92
	l.movhi	r19, hi(0)
	l.j	.L91
	l.andi	r17, r17, 0xff
.L89:
	l.addi	r4, r4, 1
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfne	r17, r11
	l.bf	.L88
	l.movhi	r19, hi(0)
.L92:
	l.sfne	r17, r19
	l.bf	.L89
	l.addi	r3, r3, 1
	l.addi	r3, r3, -1
.L88:
	l.andi	r17, r17, 0xff
.L91:
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
	l.bf	.L94
	l.or	r11, r3, r3
.L95:
	l.addi	r11, r11, 1
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L95
	 l.nop

.L94:
	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L103
	 l.nop

	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L100
	l.addi	r5, r5, -1
	l.j	.L101
	l.add	r19, r3, r5
.L113:
	l.bf	.L100
	l.sfeq	r17, r11
	l.bnf	.L100
	l.movhi	r17, hi(0)
	l.addi	r3, r3, 1
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L100
	l.addi	r4, r4, 1
.L101:
	l.lbz	r17, 0(r4)
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L113
	l.sfeq	r3, r19
.L100:
	l.lbz	r17, 0(r4)
	l.jr	r9
	l.sub	r11, r11, r17
.L103:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L114
	l.xori	r17, r0, -2
	l.and	r5, r5, r17
	l.add	r19, r3, r5
.L116:
	l.lbz	r17, 1(r3)
	l.sb	0(r4), r17
	l.lbz	r17, 0(r3)
	l.sb	1(r4), r17
	l.addi	r3, r3, 2
	l.sfne	r3, r19
	l.bf	.L116
	l.addi	r4, r4, 2
.L114:
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
	l.bf	.L119
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L119:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L121
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L121:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L124
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L122
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L122:
	l.jr	r9
	 l.nop

.L124:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L126
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L126
	 l.nop

	l.movhi	r11, hi(0)
.L126:
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
	l.bf	.L131
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L131:
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
	l.bf	.L133
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L133:
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
	l.bf	.L135
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L135:
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
	l.bf	.L137
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L137:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L140
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bnf	.L142
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L142:
	l.jr	r9
	l.movhi	r11, hi(0)
.L140:
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
	l.bf	.L144
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L144:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L145
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bnf	.L151
	l.addi	r17, r3, -8232
.L145:
	l.jr	r9
	 l.nop

.L151:
	l.sfleu	r17, r11
	l.bf	.L145
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L145
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
	l.bf	.L153
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L153:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L163
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L159
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L159
	l.movhi	r17, hi(-65536)
	l.ori	r19, r17, 8192
	l.add	r19, r3, r19
	l.ori	r21, r0, 8184
	l.sfleu	r19, r21
	l.bf	.L159
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L160
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bnf	.L160
	l.ori	r11, r0, 1
.L154:
	l.jr	r9
	 l.nop

.L159:
	l.jr	r9
	l.ori	r11, r0, 1
.L163:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L154
	l.ori	r11, r0, 1
.L160:
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
	l.bf	.L164
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bnf	.L168
	 l.nop

.L164:
	l.jr	r9
	 l.nop

.L168:
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
	l.bf	.L173
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L174
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L179
	l.or	r5, r22, r22
	l.movhi	r11, hi(0)
	l.movhi	r17, ha(.LC0+4)
	l.lwz	r12, lo(.LC0+4)(r17)
.L170:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L179:
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L173:
	l.or	r11, r18, r18
	l.j	.L170
	l.or	r12, r16, r16
.L174:
	l.or	r11, r22, r22
	l.j	.L170
	l.or	r12, r20, r20
	.size	fdim, .-fdim
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
	l.bf	.L183
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L184
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L189
	l.or	r4, r18, r18
	l.movhi	r11, hi(0)
.L180:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L189:
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L183:
	l.j	.L180
	l.or	r11, r16, r16
.L184:
	l.j	.L180
	l.or	r11, r18, r18
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
	l.bf	.L198
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L197
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L192
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L201
	l.or	r11, r22, r22
.L198:
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
.L192:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L193
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L200:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L197:
	l.or	r11, r22, r22
.L201:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L193:
	l.or	r16, r22, r22
	l.j	.L200
	l.or	r11, r16, r16
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
	l.bf	.L208
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L209
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L204
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L202
	l.or	r11, r18, r18
.L208:
	l.or	r11, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L204:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L202
	l.or	r11, r16, r16
.L209:
	l.or	r11, r18, r18
.L202:
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
	l.bf	.L222
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L221
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L216
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L225
	l.or	r11, r22, r22
.L222:
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
.L216:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L217
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L224:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L221:
	l.or	r11, r22, r22
.L225:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L217:
	l.or	r16, r22, r22
	l.j	.L224
	l.or	r11, r16, r16
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
	l.bf	.L232
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L234
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L228
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L237
	l.or	r11, r16, r16
.L232:
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
.L228:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L236
	 l.nop

.L234:
	l.or	r11, r16, r16
.L237:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L236:
	l.or	r16, r20, r20
	l.j	.L234
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
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L244
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L245
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L240
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L238
	l.or	r11, r16, r16
.L245:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L240:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L238
	l.or	r11, r18, r18
.L244:
	l.or	r11, r16, r16
.L238:
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
	l.bf	.L256
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L258
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L252
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L261
	l.or	r11, r16, r16
.L256:
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
.L252:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L260
	 l.nop

.L258:
	l.or	r11, r16, r16
.L261:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L260:
	l.or	r16, r20, r20
	l.j	.L258
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
	l.bf	.L263
	l.or	r19, r11, r11
	l.movhi	r21, ha(.LANCHOR1)
	l.addi	r21, r21, lo(.LANCHOR1)
.L264:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbz	r17, 0(r17)
	l.sb	0(r19), r17
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L264
	l.addi	r19, r19, 1
.L263:
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
	l.bf	.L269
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L269:
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
	l.bnf	.L278
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L272
	 l.nop

	l.sw	4(r17), r3
.L272:
	l.jr	r9
	 l.nop

.L278:
	l.sw	4(r3), r0
	l.jr	r9
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L280
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L280:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L279
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L279:
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
	l.lwz	r22, 0(r5)
	l.movhi	r17, hi(0)
	l.sfeq	r22, r17
	l.bf	.L289
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L291
	l.movhi	r18, hi(0)
.L304:
	l.sfne	r22, r18
	l.bnf	.L289
	l.add	r16, r16, r20
.L291:
	l.or	r14, r16, r16
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L304
	l.addi	r18, r18, 1
.L288:
	l.or	r11, r14, r14
.L305:
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
.L289:
	l.addi	r17, r22, 1
	l.sw	0(r30), r17
	l.mul	r22, r20, r22
	l.movhi	r17, hi(0)
	l.sfeq	r20, r17
	l.bf	.L288
	l.add	r14, r28, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L305
	l.or	r11, r14, r14
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
	l.bf	.L307
	l.or	r20, r3, r3
	l.or	r24, r6, r6
	l.or	r22, r7, r7
	l.or	r16, r4, r4
	l.j	.L309
	l.movhi	r18, hi(0)
.L318:
	l.sfne	r26, r18
	l.bnf	.L307
	l.add	r16, r16, r24
.L309:
	l.or	r28, r16, r16
	l.or	r4, r16, r16
	l.jalr	r22
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L318
	l.addi	r18, r18, 1
.L306:
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
.L307:
	l.j	.L306
	l.movhi	r28, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L320
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L320:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L322:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L324
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L335
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L335:
	l.bnf	.L336
	l.ori	r19, r0, 43
.L324:
	l.j	.L322
	l.addi	r3, r3, 1
.L336:
	l.sfeq	r17, r19
	l.bf	.L331
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L337
	l.ori	r23, r0, 1
.L325:
	l.addi	r3, r3, 1
.L326:
	l.lbs	r17, 0(r3)
	l.addi	r17, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r17, r21
	l.bnf	.L328
	l.ori	r19, r0, 2
.L338:
	l.sll	r19, r11, r19
	l.add	r11, r19, r11
	l.add	r11, r11, r11
	l.addi	r3, r3, 1
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.sub	r11, r11, r17
	l.lbs	r17, 0(r3)
	l.addi	r17, r17, -48
	l.sfleu	r17, r21
	l.bf	.L338
	l.ori	r19, r0, 2
.L328:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bf	.L321
	 l.nop

	l.sub	r11, r0, r11
.L321:
	l.jr	r9
	 l.nop

.L337:
	l.j	.L326
	l.movhi	r23, hi(0)
.L331:
	l.j	.L325
	l.movhi	r23, hi(0)
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
.L341:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L343
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L356
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L356:
	l.bnf	.L357
	l.ori	r19, r0, 43
.L343:
	l.j	.L341
	l.addi	r3, r3, 1
.L357:
	l.sfeq	r17, r19
	l.bf	.L344
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L358
	 l.nop

.L345:
	l.lbs	r17, 0(r3)
	l.addi	r17, r17, -48
	l.ori	r23, r0, 9
	l.movhi	r11, hi(0)
	l.sfleu	r17, r23
	l.bnf	.L347
	l.movhi	r12, hi(0)
	l.ori	r19, r0, 30
.L360:
	l.srl	r19, r12, r19
	l.ori	r27, r0, 2
	l.sll	r21, r11, r27
	l.or	r21, r19, r21
	l.sll	r19, r12, r27
	l.add	r12, r19, r12
	l.sfltu	r12, r19
	l.bf	.L353
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L353:
	l.add	r21, r21, r11
	l.add	r19, r19, r21
	l.add	r21, r12, r12
	l.sfltu	r21, r12
	l.bf	.L354
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L354:
	l.add	r19, r19, r19
	l.add	r11, r11, r19
	l.addi	r3, r3, 1
	l.ori	r19, r0, 24
	l.sll	r17, r17, r19
	l.sra	r17, r17, r19
	l.ori	r19, r0, 31
	l.sra	r19, r17, r19
	l.sub	r12, r21, r17
	l.sfgtu	r12, r21
	l.bf	.L355
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L355:
	l.sub	r11, r11, r19
	l.sub	r11, r11, r17
	l.lbs	r17, 0(r3)
	l.addi	r17, r17, -48
	l.sfleu	r17, r23
	l.bf	.L360
	l.ori	r19, r0, 30
.L347:
	l.movhi	r19, hi(0)
	l.sfne	r25, r19
	l.bf	.L340
	l.sub	r17, r0, r12
	l.sfne	r12, r19
	l.bnf	.L359
	l.ori	r19, r0, 1
	l.sub	r11, r0, r11
	l.sub	r11, r11, r19
	l.or	r12, r17, r17
.L340:
	l.jr	r9
	 l.nop

.L358:
	l.ori	r25, r0, 1
.L344:
	l.j	.L345
	l.addi	r3, r3, 1
.L359:
	l.movhi	r19, hi(0)
	l.sub	r11, r0, r11
	l.sub	r11, r11, r19
	l.j	.L340
	l.or	r12, r17, r17
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
	l.bf	.L362
	l.sw	28(r1), r9
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.j	.L365
	l.or	r26, r7, r7
.L372:
	l.bf	.L361
	l.addi	r16, r16, -1
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
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L372
	l.sfles	r11, r17
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
	l.sw	0(r1), r14
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r24
	l.sw	24(r1), r26
	l.sw	28(r1), r28
	l.sw	32(r1), r30
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L375
	l.sw	36(r1), r9
	l.or	r28, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r24, r8, r8
	l.j	.L378
	l.or	r16, r5, r5
.L387:
	l.bf	.L388
	l.movhi	r17, hi(0)
	l.add	r22, r18, r20
	l.addi	r16, r16, -1
	l.sra	r30, r16, r14
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
	l.sfles	r11, r17
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
	l.bf	.L391
	l.or	r12, r4, r4
	l.sub	r12, r0, r4
	l.sfne	r4, r17
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
	l.bf	.L401
	l.or	r12, r4, r4
	l.sub	r12, r0, r4
	l.sfne	r4, r17
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
	l.bf	.L417
	l.sfne	r4, r17
	l.j	.L416
	l.movhi	r11, hi(0)
.L410:
	l.addi	r3, r3, 4
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L413
	l.sfne	r4, r17
.L417:
	l.bf	.L410
	l.movhi	r19, hi(0)
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L413
	l.or	r11, r3, r3
	l.jr	r9
	 l.nop

.L413:
	l.movhi	r11, hi(0)
.L416:
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
	l.bf	.L419
	l.sfltu	r17, r19
	l.j	.L432
	 l.nop

.L430:
	l.bnf	.L433
	l.sfgtu	r17, r19
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L434
	l.sfltu	r17, r19
.L419:
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L430
	l.sfne	r19, r21
	l.sfltu	r17, r19
.L432:
.L434:
	l.bf	.L418
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
.L433:
	l.bnf	.L431
	l.ori	r11, r0, 1
.L418:
	l.jr	r9
	 l.nop

.L431:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L436:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L436
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
	l.bf	.L439
	l.or	r11, r3, r3
.L440:
	l.addi	r11, r11, 4
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L440
	 l.nop

.L439:
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
	l.bf	.L444
	l.movhi	r11, hi(0)
	l.j	.L457
	 l.nop

.L456:
	l.sfne	r17, r19
	l.bnf	.L445
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.sfeq	r5, r17
	l.bf	.L448
	l.addi	r4, r4, 4
.L444:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L456
	l.movhi	r19, hi(0)
.L445:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L448
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L443
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bnf	.L448
	l.ori	r11, r0, 1
.L443:
	l.jr	r9
	 l.nop

.L448:
	l.movhi	r11, hi(0)
.L457:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L459
	l.movhi	r11, hi(0)
	l.j	.L467
	 l.nop

.L461:
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bf	.L464
	l.addi	r3, r3, 4
.L459:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L461
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L464
	l.or	r11, r3, r3
	l.jr	r9
	 l.nop

.L464:
	l.movhi	r11, hi(0)
.L467:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L469
	l.movhi	r11, hi(0)
	l.j	.L481
	 l.nop

.L471:
	l.addi	r3, r3, 4
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L473
	l.addi	r4, r4, 4
.L469:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L471
	l.addi	r5, r5, -1
	l.addi	r5, r5, 1
	l.movhi	r21, hi(0)
	l.sfeq	r5, r21
	l.bf	.L473
	l.sfltu	r19, r17
	l.bf	.L468
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bnf	.L473
	l.ori	r11, r0, 1
.L468:
	l.jr	r9
	 l.nop

.L473:
	l.movhi	r11, hi(0)
.L481:
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
	l.bf	.L483
	l.or	r16, r3, r3
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
.L483:
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
	l.bf	.L489
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.sub	r19, r3, r4
	l.ori	r21, r0, 2
	l.sll	r21, r5, r21
	l.sfltu	r19, r21
	l.bnf	.L500
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L489
	 l.nop

	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
.L492:
	l.lwz	r21, 0(r19)
	l.sw	0(r17), r21
	l.addi	r17, r17, -4
	l.sfne	r4, r19
	l.bf	.L492
	l.addi	r19, r19, -4
.L489:
	l.jr	r9
	 l.nop

.L500:
	l.sfne	r5, r19
	l.or	r19, r3, r3
	l.bnf	.L489
	l.xori	r23, r0, -1
.L491:
	l.addi	r4, r4, 4
	l.addi	r19, r19, 4
	l.lwz	r21, -4(r4)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L491
	l.sw	-4(r19), r21
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
	l.bf	.L502
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L503:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.bf	.L503
	l.sw	-4(r19), r4
.L502:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L509
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L508
	l.add	r4, r4, r5
.L511:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L511
	l.sb	0(r4), r19
.L508:
	l.jr	r9
	 l.nop

.L509:
	l.bf	.L508
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L508
	 l.nop

	l.add	r5, r3, r5
.L512:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r5, r3
	l.bf	.L512
	l.sb	-1(r4), r17
	l.jr	r9
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.addi	r21, r5, -32
	l.sll	r25, r4, r21
	l.ori	r17, r0, 1
	l.srl	r19, r4, r17
	l.ori	r17, r0, 31
	l.sub	r23, r17, r5
	l.srl	r19, r19, r23
	l.sll	r11, r3, r5
	l.or	r11, r19, r11
	l.movhi	r19, hi(0)
	l.sfges	r21, r19
	l.bnf	.L522
	l.sll	r12, r4, r5
	l.or	r11, r25, r25
.L522:
	l.bnf	.L523
	 l.nop

	l.movhi	r12, hi(0)
.L523:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r21, r5, -32
	l.srl	r23, r3, r21
	l.ori	r19, r0, 1
	l.sll	r19, r3, r19
	l.sub	r17, r17, r5
	l.sll	r17, r19, r17
	l.srl	r4, r4, r5
	l.or	r4, r17, r4
	l.movhi	r17, hi(0)
	l.sfges	r21, r17
	l.bnf	.L524
	l.srl	r3, r3, r5
	l.or	r4, r23, r23
.L524:
	l.bnf	.L525
	 l.nop

	l.movhi	r3, hi(0)
.L525:
	l.or	r11, r3, r11
	l.jr	r9
	l.or	r12, r4, r12
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.addi	r21, r5, -32
	l.srl	r25, r3, r21
	l.ori	r17, r0, 1
	l.sll	r19, r3, r17
	l.ori	r17, r0, 31
	l.sub	r23, r17, r5
	l.sll	r19, r19, r23
	l.srl	r12, r4, r5
	l.or	r12, r19, r12
	l.movhi	r19, hi(0)
	l.sfges	r21, r19
	l.bnf	.L527
	l.srl	r11, r3, r5
	l.or	r12, r25, r25
.L527:
	l.bnf	.L528
	 l.nop

	l.movhi	r11, hi(0)
.L528:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r21, r5, -32
	l.sll	r23, r4, r21
	l.ori	r19, r0, 1
	l.srl	r19, r4, r19
	l.sub	r17, r17, r5
	l.srl	r17, r19, r17
	l.sll	r3, r3, r5
	l.or	r3, r17, r3
	l.movhi	r17, hi(0)
	l.sfges	r21, r17
	l.bnf	.L529
	l.sll	r4, r4, r5
	l.or	r3, r23, r23
.L529:
	l.bnf	.L530
	 l.nop

	l.movhi	r4, hi(0)
.L530:
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
	l.andi	r3, r3, 0xffff
	l.ori	r17, r0, 8
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
	l.ori	r23, r0, 24
	l.sll	r17, r4, r23
	l.srl	r12, r3, r23
	l.ori	r25, r0, 8
	l.srl	r19, r3, r25
	l.andi	r19, r19, 65280
	l.or	r12, r12, r19
	l.sll	r21, r3, r25
	l.srl	r19, r4, r23
	l.or	r19, r21, r19
	l.movhi	r21, hi(16711680)
	l.and	r19, r19, r21
	l.or	r12, r12, r19
	l.sll	r3, r3, r23
	l.sll	r11, r4, r25
	l.srl	r19, r4, r23
	l.or	r17, r17, r19
	l.srl	r4, r4, r25
	l.andi	r4, r4, 65280
	l.or	r17, r17, r4
	l.and	r11, r11, r21
	l.or	r11, r17, r11
	l.jr	r9
	l.or	r12, r12, r3
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.movhi	r11, hi(0)
	l.j	.L545
	l.ori	r19, r0, 32
.L548:
	l.sfne	r11, r19
	l.bnf	.L547
	 l.nop

.L545:
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L548
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L547:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L552
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L549
	l.ori	r17, r0, 1
	l.ori	r11, r0, 1
.L555:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L555
	l.ori	r17, r0, 1
.L549:
	l.jr	r9
	 l.nop

.L552:
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
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC2)
	l.jal	__ltsf2
	l.lwz	r4, lo(.LC2)(r17)
	l.movhi	r18, hi(0)
	l.sflts	r11, r18
	l.bf	.L556
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bnf	.L562
	l.ori	r11, r0, 1
.L556:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L562:
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
	l.bf	.L563
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L569
	l.ori	r11, r0, 1
.L563:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L569:
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
	l.bf	.L570
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L576
	l.ori	r11, r0, 1
.L570:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L576:
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
	l.bf	.L580
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L580
	l.sfges	r16, r18
	l.bf	.L584
	l.movhi	r18, hi(1073741824)
	l.j	.L584
	l.movhi	r18, hi(1056964608)
.L594:
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L584:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L595
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.or	r20, r11, r11
	l.ori	r17, r0, 31
.L595:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L594
	l.or	r4, r18, r18
.L580:
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
	l.addi	r1, r1, -28
	l.sw	8(r1), r16
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r22, hi(0)
	l.sfne	r11, r22
	l.bf	.L597
	l.or	r3, r20, r20
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r11, r11
	l.jal	__nedf2
	l.or	r4, r12, r12
	l.sfne	r11, r22
	l.bnf	.L597
	l.sfges	r16, r22
	l.bnf	.L611
	l.movhi	r17, ha(.LC10+4)
	l.movhi	r5, hi(1073741824)
	l.j	.L601
	l.lwz	r6, lo(.LC10+4)(r17)
.L612:
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.or	r5, r11, r11
	l.or	r6, r12, r12
.L601:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L613
	l.ori	r17, r0, 31
	l.sw	4(r1), r5
	l.sw	0(r1), r6
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.lwz	r6, 0(r1)
	l.ori	r17, r0, 31
.L613:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L612
	l.or	r3, r5, r5
.L597:
	l.or	r11, r20, r20
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L611:
	l.movhi	r5, hi(1071644672)
	l.movhi	r17, ha(.LC11+4)
	l.j	.L601
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
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r22
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r22, hi(0)
	l.sfne	r11, r22
	l.bf	.L615
	l.or	r3, r20, r20
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.or	r3, r20, r20
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r22
	l.bnf	.L615
	l.sfges	r16, r22
	l.bnf	.L629
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1073741824)
	l.j	.L619
	l.lwz	r6, lo(.LC13+4)(r17)
.L630:
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.or	r5, r11, r11
	l.or	r6, r12, r12
.L619:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L631
	l.ori	r17, r0, 31
	l.sw	4(r1), r5
	l.sw	0(r1), r6
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.lwz	r6, 0(r1)
	l.ori	r17, r0, 31
.L631:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L630
	l.or	r3, r5, r5
.L615:
	l.or	r11, r20, r20
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L629:
	l.movhi	r5, hi(1071644672)
	l.movhi	r17, ha(.LC12+4)
	l.j	.L619
	l.lwz	r6, lo(.LC12+4)(r17)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L633
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L634:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r17)
	l.lbz	r21, -1(r4)
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.bf	.L634
	l.sb	-1(r17), r19
.L633:
	l.jr	r9
	 l.nop

	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.or	r11, r3, r3
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L653
	l.or	r17, r3, r3
.L641:
	l.addi	r17, r17, 1
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L641
	l.movhi	r19, hi(0)
.L653:
	l.sfne	r5, r19
	l.bf	.L642
	 l.nop

	l.j	.L652
	l.sb	0(r17), r0
.L644:
	l.addi	r4, r4, 1
	l.addi	r5, r5, -1
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L648
	l.addi	r17, r17, 1
.L642:
	l.lbs	r19, 0(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L644
	l.sb	0(r17), r19
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bf	.L645
	 l.nop

.L648:
	l.sb	0(r17), r0
.L645:
.L652:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L654
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L662:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L657
	 l.nop

.L654:
	l.jr	r9
	 l.nop

.L657:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L662
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
	l.bnf	.L668
	l.or	r11, r3, r3
	l.j	.L667
	l.or	r17, r4, r4
.L666:
	l.bf	.L665
	l.addi	r17, r17, 1
.L667:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L666
	l.sfeq	r19, r21
	l.addi	r11, r11, 1
	l.lbs	r21, 0(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L667
	l.or	r17, r4, r4
.L668:
	l.movhi	r11, hi(0)
.L665:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L672:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.bnf	.L676
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L676:
	l.sfne	r17, r19
	l.bf	.L672
	l.addi	r3, r3, 1
	l.jr	r9
	 l.nop

	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.or	r11, r3, r3
	l.lbs	r25, 0(r4)
	l.movhi	r17, hi(0)
	l.sfeq	r25, r17
	l.bf	.L678
	l.or	r17, r4, r4
.L679:
	l.addi	r17, r17, 1
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L679
	 l.nop

.L678:
	l.sfeq	r17, r4
	l.bf	.L680
	l.sub	r29, r17, r4
	l.j	.L686
	l.addi	r29, r29, -1
.L702:
	l.sfne	r17, r19
	l.bnf	.L701
	l.addi	r11, r11, 1
.L686:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r25
	l.bnf	.L702
	l.movhi	r19, hi(0)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L680
	 l.nop

	l.lbz	r19, 0(r11)
	l.sfeq	r19, r17
	l.bf	.L689
	l.or	r17, r11, r11
	l.add	r27, r11, r29
	l.j	.L683
	l.or	r21, r4, r4
.L703:
	l.bf	.L682
	l.sfeq	r23, r19
	l.bnf	.L682
	l.addi	r17, r17, 1
	l.lbz	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L682
	l.addi	r21, r21, 1
.L683:
	l.lbz	r23, 0(r21)
	l.movhi	r31, hi(0)
	l.sfeq	r23, r31
	l.bnf	.L703
	l.sfeq	r17, r27
.L682:
	l.lbz	r17, 0(r21)
	l.sfeq	r17, r19
	l.bf	.L680
	 l.nop

	l.j	.L686
	l.addi	r11, r11, 1
.L701:
	l.movhi	r11, hi(0)
.L680:
	l.jr	r9
	 l.nop

.L689:
	l.j	.L682
	l.or	r21, r4, r4
	.size	strstr, .-strstr
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
	l.movhi	r5, hi(0)
	l.jal	__ltdf2
	l.movhi	r6, hi(0)
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L714
	l.movhi	r5, hi(0)
.L716:
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L708
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L715
	l.movhi	r17, hi(-2147483648)
.L708:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L714:
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L716
	l.movhi	r5, hi(0)
	l.movhi	r17, hi(-2147483648)
.L715:
	l.j	.L708
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L725
	l.sfltu	r4, r6
	l.bf	.L727
	l.sub	r27, r4, r6
	l.add	r27, r3, r27
	l.sfgtu	r3, r27
	l.bf	.L727
	 l.nop

	l.j	.L724
	l.lbs	r29, 0(r5)
.L719:
	l.sfleu	r3, r27
.L738:
	l.bnf	.L727
	 l.nop

.L724:
	l.lbs	r17, 0(r3)
	l.or	r11, r3, r3
	l.sfne	r17, r29
	l.bf	.L719
	l.addi	r3, r3, 1
	l.addi	r17, r6, -1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L717
	l.addi	r19, r5, 1
	l.j	.L720
	l.or	r21, r3, r3
.L722:
	l.addi	r21, r21, 1
	l.movhi	r23, hi(0)
	l.sfeq	r17, r23
	l.bf	.L717
	l.addi	r19, r19, 1
.L720:
	l.lbz	r25, 0(r21)
	l.lbz	r23, 0(r19)
	l.sfeq	r25, r23
	l.bf	.L722
	l.addi	r17, r17, -1
	l.addi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L717
	l.sfeq	r25, r23
	l.bnf	.L738
	l.sfleu	r3, r27
.L717:
	l.jr	r9
	 l.nop

.L727:
	l.jr	r9
	l.movhi	r11, hi(0)
.L725:
	l.jr	r9
	l.or	r11, r3, r3
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.or	r18, r3, r3
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L740
	l.or	r16, r5, r5
	l.jal	memmove
	 l.nop

.L740:
	l.add	r11, r18, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	mempcpy, .-mempcpy
	.section	.rodata
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
	l.or	r18, r4, r4
	l.or	r30, r5, r5
	l.movhi	r5, hi(0)
	l.jal	__ltdf2
	l.movhi	r6, hi(0)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L773
	l.movhi	r17, hi(-2147483648)
	l.movhi	r14, hi(0)
.L746:
	l.movhi	r24, ha(.LC16)
	l.addi	r24, r24, lo(.LC16)
	l.lwz	r22, 4(r24)
	l.movhi	r5, hi(1072693248)
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L769
	l.movhi	r20, hi(0)
	l.movhi	r17, ha(.LC17)
	l.lwz	r28, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r26, 4(r17)
	l.lwz	r24, 0(r24)
.L750:
	l.addi	r20, r20, 1
	l.or	r5, r28, r28
	l.or	r6, r26, r26
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r16, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r12, r12
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L750
	 l.nop

.L751:
.L775:
	l.movhi	r17, hi(0)
	l.sfeq	r14, r17
.L774:
	l.bf	.L755
	l.sw	0(r30), r20
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r16, r17
.L755:
	l.or	r11, r16, r16
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
.L773:
	l.xor	r16, r16, r17
	l.j	.L746
	l.ori	r14, r0, 1
.L769:
	l.movhi	r17, ha(.LC17)
	l.addi	r22, r17, lo(.LC17)
	l.lwz	r24, 4(r22)
	l.movhi	r5, hi(1071644672)
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bnf	.L775
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bnf	.L771
	 l.nop

	l.lwz	r22, 0(r22)
.L754:
	l.addi	r20, r20, -1
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r16, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r22, r22
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r12, r12
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L754
	l.sfeq	r14, r17
	l.j	.L774
	 l.nop

.L771:
	l.j	.L751
	l.movhi	r20, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r23, r3, r3
	l.or	r21, r4, r4
	l.or	r4, r4, r3
	l.movhi	r17, hi(0)
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L776
	l.movhi	r12, hi(0)
	l.andi	r17, r21, 1
.L784:
	l.sub	r19, r0, r17
	l.and	r17, r19, r5
	l.and	r19, r19, r6
	l.add	r19, r12, r19
	l.sfltu	r19, r12
	l.bf	.L782
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L782:
	l.add	r11, r11, r17
	l.add	r11, r25, r11
	l.or	r12, r19, r19
	l.add	r17, r6, r6
	l.sfltu	r17, r6
	l.bf	.L783
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L783:
	l.add	r5, r5, r5
	l.add	r5, r19, r5
	l.or	r6, r17, r17
	l.ori	r17, r0, 31
	l.sll	r17, r23, r17
	l.ori	r19, r0, 1
	l.srl	r21, r21, r19
	l.srl	r23, r23, r19
	l.or	r21, r17, r21
	l.or	r17, r23, r21
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L784
	l.andi	r17, r21, 1
.L776:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bf	.L786
	l.ori	r17, r0, 1
	l.j	.L791
	l.movhi	r11, hi(0)
.L788:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L787
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L789
	l.movhi	r11, hi(0)
.L786:
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
	l.bf	.L788
	 l.nop

.L787:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L789
	l.movhi	r11, hi(0)
.L791:
	l.sfltu	r3, r4
.L805:
	l.bf	.L804
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L804:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L805
	l.sfltu	r3, r4
.L789:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L803
	 l.nop

	l.or	r11, r3, r3
.L803:
	l.jr	r9
	 l.nop

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
	l.bf	.L808
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
.L808:
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
	l.bnf	.L822
	l.xor	r4, r4, r21
.L817:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L822:
	l.sfne	r19, r17
	l.bf	.L817
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
	l.bf	.L823
	l.movhi	r11, hi(0)
.L825:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L825
	l.add	r4, r4, r4
.L823:
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
	l.bf	.L829
	l.and	r27, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L842
	l.addi	r17, r5, -1
.L829:
	l.movhi	r17, hi(0)
	l.sfeq	r25, r17
	l.bf	.L832
	l.ori	r21, r0, 3
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r25, r25, r21
	l.add	r25, r25, r4
.L833:
	l.lwz	r21, 4(r17)
	l.lwz	r23, 0(r17)
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.addi	r17, r17, 8
	l.sfne	r17, r25
	l.bf	.L833
	l.addi	r19, r19, 8
.L832:
	l.sfleu	r5, r27
	l.bf	.L828
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r4, r4, r5
.L834:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r4
	l.bf	.L834
	l.addi	r3, r3, 1
.L828:
	l.jr	r9
	 l.nop

.L842:
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L828
	l.xori	r23, r0, -1
.L830:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L830
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
	l.bf	.L844
	l.srl	r23, r5, r17
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L858
	l.addi	r17, r5, -1
.L844:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L847
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.add	r23, r23, r4
.L848:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.sfne	r17, r23
	l.bf	.L848
	l.addi	r19, r19, 2
.L847:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L843
	l.add	r4, r4, r5
	l.lbs	r17, -1(r4)
	l.add	r3, r3, r5
	l.sb	-1(r3), r17
.L843:
	l.jr	r9
	 l.nop

.L858:
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L843
	l.xori	r23, r0, -1
.L845:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L845
	l.sb	0(r19), r21
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
	l.bf	.L860
	l.and	r25, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L873
	l.addi	r17, r5, -1
.L860:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L863
	l.ori	r21, r0, 2
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r23, r23, r21
	l.add	r23, r23, r4
.L864:
	l.lwz	r21, 0(r17)
	l.sw	0(r19), r21
	l.addi	r17, r17, 4
	l.sfne	r17, r23
	l.bf	.L864
	l.addi	r19, r19, 4
.L863:
	l.sfleu	r5, r25
	l.bf	.L859
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r4, r4, r5
.L865:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r4
	l.bf	.L865
	l.addi	r3, r3, 1
.L859:
	l.jr	r9
	 l.nop

.L873:
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L859
	l.xori	r23, r0, -1
.L861:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L861
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
.L888:
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L884
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r21
	l.bf	.L888
	l.sub	r17, r19, r11
.L884:
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
.L893:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L889
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L893
	l.sra	r17, r3, r11
.L889:
	l.jr	r9
	 l.nop

	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.or	r18, r3, r3
	l.movhi	r16, hi(1191182336)
	l.jal	__gesf2
	l.or	r4, r16, r16
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L901
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L901:
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
.L903:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L903
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
.L906:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L906
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
	l.bf	.L908
	l.movhi	r11, hi(0)
.L910:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L910
	l.add	r4, r4, r4
.L908:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L913
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L913
	 l.nop

.L915:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L915
	l.add	r3, r3, r3
.L913:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bf	.L920
	l.ori	r17, r0, 1
	l.j	.L925
	l.movhi	r11, hi(0)
.L922:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L921
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L923
	l.movhi	r11, hi(0)
.L920:
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
	l.bf	.L922
	 l.nop

.L921:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L923
	l.movhi	r11, hi(0)
.L925:
	l.sfltu	r3, r4
.L939:
	l.bf	.L938
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L938:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L939
	l.sfltu	r3, r4
.L923:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L937
	 l.nop

	l.or	r11, r3, r3
.L937:
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
	l.bf	.L943
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L946
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L946:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L943:
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
	l.jal	__ltdf2
	l.or	r20, r6, r6
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L950
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L953
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L953:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L950:
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
	l.bnf	.L972
	 l.nop

	l.movhi	r21, hi(0)
.L959:
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L964
	 l.nop

	l.ori	r19, r0, 32
	l.j	.L961
	l.movhi	r11, hi(0)
.L973:
	l.addi	r19, r19, -1
	l.andi	r19, r19, 0xff
	l.sfne	r19, r17
	l.bnf	.L974
	l.movhi	r17, hi(0)
.L961:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.sra	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bnf	.L973
	l.add	r3, r3, r3
.L960:
	l.movhi	r17, hi(0)
.L974:
	l.sfeq	r21, r17
	l.bf	.L958
	 l.nop

	l.sub	r11, r0, r11
.L958:
	l.jr	r9
	 l.nop

.L972:
	l.sub	r4, r0, r4
	l.j	.L959
	l.ori	r21, r0, 1
.L964:
	l.j	.L960
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L995
	 l.nop

	l.movhi	r23, hi(0)
.L976:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L997
	l.sfleu	r3, r4
	l.sub	r4, r0, r4
	l.xori	r23, r23, 1
	l.sfleu	r3, r4
.L997:
	l.bf	.L985
	l.or	r21, r3, r3
	l.ori	r19, r0, 32
	l.j	.L979
	l.ori	r17, r0, 1
.L996:
	l.addi	r19, r19, -1
	l.movhi	r25, hi(0)
	l.sfne	r19, r25
	l.bnf	.L980
	l.movhi	r11, hi(0)
.L979:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bnf	.L996
	l.add	r17, r17, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L980
	l.movhi	r11, hi(0)
.L994:
	l.movhi	r11, hi(0)
	l.sfltu	r21, r4
.L999:
	l.bf	.L998
	l.ori	r19, r0, 1
	l.sub	r21, r21, r4
	l.or	r11, r11, r17
.L998:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L999
	l.sfltu	r21, r4
.L980:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L975
	 l.nop

	l.sub	r11, r0, r11
.L975:
	l.jr	r9
	 l.nop

.L995:
	l.sub	r3, r0, r3
	l.j	.L976
	l.ori	r23, r0, 1
.L985:
	l.j	.L994
	l.ori	r17, r0, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1020
	 l.nop

	l.movhi	r21, hi(0)
.L1001:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L1002
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1002:
	l.sfleu	r3, r4
	l.bf	.L1010
	l.ori	r19, r0, 32
	l.j	.L1004
	l.ori	r17, r0, 1
.L1021:
	l.addi	r19, r19, -1
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bnf	.L1005
	 l.nop

.L1004:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bnf	.L1021
	l.add	r17, r17, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1005
	 l.nop

.L1015:
	l.sfltu	r11, r4
.L1023:
	l.bf	.L1022
	l.ori	r19, r0, 1
	l.sub	r11, r11, r4
.L1022:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1023
	l.sfltu	r11, r4
.L1005:
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bf	.L1000
	 l.nop

	l.sub	r11, r0, r11
.L1000:
	l.jr	r9
	 l.nop

.L1020:
	l.sub	r3, r0, r3
	l.j	.L1001
	l.ori	r21, r0, 1
.L1010:
	l.j	.L1015
	l.ori	r17, r0, 1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.ori	r19, r0, 16
	l.bnf	.L1040
	l.ori	r17, r0, 1
	l.ori	r21, r0, 16
.L1043:
	l.sll	r21, r4, r21
	l.movhi	r23, hi(0)
	l.sfges	r21, r23
	l.bnf	.L1026
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.sfleu	r11, r4
	l.bf	.L1026
	l.andi	r17, r17, 0xffff
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L1043
	l.ori	r21, r0, 16
	l.movhi	r19, hi(0)
.L1044:
	l.movhi	r17, hi(0)
.L1042:
	l.sfne	r5, r17
	l.bf	.L1041
	 l.nop

	l.or	r11, r19, r19
.L1041:
	l.jr	r9
	 l.nop

.L1026:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1044
	 l.nop

.L1040:
	l.movhi	r19, hi(0)
	l.sfltu	r11, r4
.L1046:
	l.bf	.L1045
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.or	r19, r17, r19
.L1045:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L1046
	l.sfltu	r11, r4
	l.j	.L1042
	l.movhi	r17, hi(0)
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bf	.L1048
	l.ori	r17, r0, 1
	l.j	.L1053
	l.movhi	r11, hi(0)
.L1050:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L1049
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L1051
	l.movhi	r11, hi(0)
.L1048:
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
	l.bf	.L1050
	 l.nop

.L1049:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1051
	l.movhi	r11, hi(0)
.L1053:
	l.sfltu	r3, r4
.L1067:
	l.bf	.L1066
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L1066:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1067
	l.sfltu	r3, r4
.L1051:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L1065
	 l.nop

	l.or	r11, r3, r3
.L1065:
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
	l.bf	.L1069
	 l.nop

	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.jr	r9
	l.movhi	r12, hi(0)
.L1069:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L1072
	l.ori	r17, r0, 32
	l.sll	r12, r4, r5
	l.sub	r17, r17, r5
	l.srl	r4, r4, r17
	l.sll	r11, r3, r5
	l.jr	r9
	l.or	r11, r4, r11
.L1072:
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
	l.bf	.L1074
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.addi	r5, r5, -32
	l.jr	r9
	l.sra	r12, r3, r5
.L1074:
	l.sfeq	r5, r17
	l.bf	.L1077
	l.sra	r11, r3, r5
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.jr	r9
	l.or	r12, r3, r12
.L1077:
	l.or	r11, r3, r3
	l.jr	r9
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.ori	r23, r0, 24
	l.srl	r12, r3, r23
	l.sll	r17, r4, r23
	l.ori	r25, r0, 8
	l.srl	r19, r3, r25
	l.andi	r19, r19, 65280
	l.or	r12, r12, r19
	l.sll	r21, r3, r25
	l.srl	r19, r4, r23
	l.or	r19, r21, r19
	l.movhi	r21, hi(16711680)
	l.and	r19, r19, r21
	l.or	r12, r12, r19
	l.sll	r3, r3, r23
	l.sll	r11, r4, r25
	l.srl	r19, r4, r23
	l.or	r17, r17, r19
	l.srl	r4, r4, r25
	l.andi	r4, r4, 65280
	l.or	r17, r17, r4
	l.and	r11, r11, r21
	l.or	r11, r17, r11
	l.jr	r9
	l.or	r12, r12, r3
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
	l.bf	.L1082
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1082:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r21
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r25, hi(0)
	l.sfeq	r19, r25
	l.bf	.L1083
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1083:
	l.ori	r23, r0, 3
	l.sll	r19, r19, r23
	l.ori	r23, r0, 8
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r21, r19, r21
	l.andi	r19, r17, 240
	l.sfeq	r19, r25
	l.bf	.L1084
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1084:
	l.ori	r23, r0, 2
	l.sll	r19, r19, r23
	l.ori	r23, r0, 4
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r21, r19, r21
	l.andi	r19, r17, 12
	l.sfeq	r19, r25
	l.bf	.L1085
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1085:
	l.add	r19, r19, r19
	l.ori	r11, r0, 2
	l.sub	r23, r11, r19
	l.srl	r17, r17, r23
	l.sub	r11, r11, r17
	l.andi	r17, r17, 2
	l.sfeq	r17, r25
	l.bf	.L1081
	 l.nop

	l.movhi	r11, hi(0)
.L1081:
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1090
	l.sfgts	r3, r5
	l.bf	.L1091
	l.sfltu	r4, r6
	l.bf	.L1090
	l.sfgtu	r4, r6
	l.bf	.L1091
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1090:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1091:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1096
	l.sfgts	r3, r5
	l.bf	.L1097
	l.sfltu	r4, r6
	l.bf	.L1096
	l.sfgtu	r4, r6
	l.bf	.L1097
	 l.nop

	l.ori	r11, r0, 1
	l.jr	r9
	l.addi	r11, r11, -1
.L1096:
	l.movhi	r11, hi(0)
	l.jr	r9
	l.addi	r11, r11, -1
.L1097:
	l.ori	r11, r0, 2
	l.jr	r9
	l.addi	r11, r11, -1
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.movhi	r23, hi(0)
	l.sfeq	r17, r23
	l.bf	.L1099
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1099:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.srl	r17, r3, r21
	l.andi	r19, r17, 255
	l.sfeq	r19, r23
	l.bf	.L1100
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1100:
	l.ori	r25, r0, 3
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r21, r19, r21
	l.andi	r19, r17, 15
	l.sfeq	r19, r23
	l.bf	.L1101
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1101:
	l.ori	r25, r0, 2
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r21, r19, r21
	l.andi	r19, r17, 3
	l.sfeq	r19, r23
	l.bf	.L1102
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1102:
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
	l.bf	.L1104
	 l.nop

	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.jr	r9
	l.movhi	r11, hi(0)
.L1104:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L1107
	l.srl	r11, r3, r5
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.jr	r9
	l.or	r12, r3, r12
.L1107:
	l.or	r11, r3, r3
	l.jr	r9
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
	l.andi	r19, r4, 65535
	l.andi	r17, r6, 65535
	l.mul	r12, r19, r17
	l.ori	r27, r0, 16
	l.srl	r23, r12, r27
	l.srl	r21, r4, r27
	l.mul	r17, r17, r21
	l.add	r17, r17, r23
	l.andi	r25, r17, 0xffff
	l.srl	r23, r6, r27
	l.mul	r19, r19, r23
	l.add	r19, r19, r25
	l.andi	r12, r12, 0xffff
	l.sll	r25, r19, r27
	l.srl	r17, r17, r27
	l.mul	r21, r21, r23
	l.add	r17, r17, r21
	l.srl	r19, r19, r27
	l.add	r17, r17, r19
	l.mul	r4, r4, r5
	l.add	r4, r4, r17
	l.mul	r6, r6, r3
	l.add	r11, r4, r6
	l.jr	r9
	l.add	r12, r12, r25
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.movhi	r17, hi(0)
	l.sub	r12, r17, r4
	l.sfne	r17, r4
	l.bf	.L1111
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L1111:
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
	l.bf	.L1115
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1115:
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
	l.bf	.L1116
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1116:
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
	l.bf	.L1117
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1117:
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
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r24
	l.sw	24(r1), r9
	l.or	r18, r3, r3
	l.or	r6, r4, r4
	l.or	r24, r5, r5
	l.or	r16, r5, r5
	l.movhi	r22, hi(1072693248)
	l.movhi	r17, ha(.LC19+4)
	l.j	.L1122
	l.lwz	r20, lo(.LC19+4)(r17)
.L1128:
	l.or	r3, r18, r18
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.or	r18, r11, r11
	l.or	r6, r12, r12
.L1122:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1129
	l.ori	r17, r0, 31
	l.or	r5, r18, r18
	l.sw	0(r1), r6
	l.or	r3, r22, r22
	l.jal	__muldf3
	l.or	r4, r20, r20
	l.or	r22, r11, r11
	l.or	r20, r12, r12
	l.lwz	r6, 0(r1)
	l.ori	r17, r0, 31
.L1129:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L1128
	l.or	r5, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r24, r17
	l.bf	.L1130
	l.or	r11, r22, r22
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.or	r20, r12, r12
	l.or	r11, r22, r22
.L1130:
	l.or	r12, r20, r20
	l.lwz	r16, 4(r1)
	l.lwz	r18, 8(r1)
	l.lwz	r20, 12(r1)
	l.lwz	r22, 16(r1)
	l.lwz	r24, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	__powidf2, .-__powidf2
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
	l.j	.L1134
	l.movhi	r20, hi(1065353216)
.L1140:
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L1134:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1141
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.or	r20, r11, r11
	l.ori	r17, r0, 31
.L1141:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L1140
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r22, r17
	l.bf	.L1142
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.jal	__divsf3
	l.movhi	r3, hi(1065353216)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L1142:
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
	l.bf	.L1147
	l.sfgtu	r3, r5
	l.bf	.L1148
	l.sfltu	r4, r6
	l.bf	.L1147
	l.sfgtu	r4, r6
	l.bf	.L1148
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1147:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1148:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1153
	l.sfgtu	r3, r5
	l.bf	.L1154
	l.sfltu	r4, r6
	l.bf	.L1153
	l.sfgtu	r4, r6
	l.bf	.L1154
	 l.nop

	l.ori	r11, r0, 1
	l.jr	r9
	l.addi	r11, r11, -1
.L1153:
	l.movhi	r11, hi(0)
	l.jr	r9
	l.addi	r11, r11, -1
.L1154:
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
