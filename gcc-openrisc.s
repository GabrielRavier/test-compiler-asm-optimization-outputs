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
	l.bnf	.L20
	l.andi	r5, r5, 0xff
.L16:
	l.lbz	r17, 0(r4)
	l.sfne	r17, r5
	l.bnf	.L26
	l.sb	0(r3), r17
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bnf	.L16
	l.addi	r3, r3, 1
.L20:
	l.j	.L15
	l.movhi	r11, hi(0)
.L26:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L27
	l.movhi	r11, hi(0)
	l.addi	r11, r3, 1
.L15:
.L27:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L34
	l.andi	r4, r4, 0xff
.L29:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bnf	.L37
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bnf	.L29
	l.addi	r3, r3, 1
.L34:
	l.j	.L28
	l.movhi	r11, hi(0)
.L37:
	l.sfne	r5, r17
	l.bnf	.L34
	l.or	r11, r3, r3
.L28:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L50
	l.movhi	r11, hi(0)
.L39:
	l.lbz	r19, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L49
	l.addi	r3, r3, 1
	l.addi	r5, r5, -1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L39
	l.addi	r4, r4, 1
	l.j	.L38
	l.movhi	r11, hi(0)
.L49:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L50
	l.movhi	r11, hi(0)
	l.lbz	r17, 0(r4)
	l.sub	r11, r19, r17
.L38:
.L50:
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
	l.bf	.L52
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L52:
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
.L58:
	l.sfne	r5, r3
	l.bnf	.L61
	l.or	r11, r5, r5
	l.lbz	r17, 0(r11)
	l.sfeq	r17, r4
	l.bnf	.L58
	l.addi	r5, r5, -1
	l.j	.L57
	 l.nop

.L61:
	l.movhi	r11, hi(0)
.L57:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L63
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
.L64:
	l.sb	0(r17), r4
	l.addi	r17, r17, 1
	l.sfne	r5, r17
	l.bf	.L64
	 l.nop

.L63:
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
	l.bf	.L70
	l.sb	0(r3), r17
.L71:
	l.addi	r4, r4, 1
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L71
	l.sb	0(r11), r17
.L70:
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
	l.bnf	.L76
	l.andi	r4, r4, 0xff
.L77:
	l.andi	r17, r17, 0xff
	l.sfne	r17, r4
	l.bnf	.L76
	l.movhi	r19, hi(0)
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r19
	l.bnf	.L77
	 l.nop

.L76:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.or	r11, r3, r3
.L85:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L84
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L85
	l.addi	r11, r11, 1
	l.movhi	r11, hi(0)
.L84:
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
	l.bnf	.L89
	 l.nop

	l.movhi	r19, hi(0)
	l.sfne	r17, r19
.L93:
	l.bnf	.L92
	l.andi	r17, r17, 0xff
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfne	r17, r11
	l.bnf	.L93
	l.sfne	r17, r19
.L89:
	l.andi	r17, r17, 0xff
.L92:
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
	l.bf	.L95
	l.or	r11, r3, r3
.L96:
	l.addi	r11, r11, 1
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L96
	 l.nop

.L95:
	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L114
	l.movhi	r11, hi(0)
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L101
	l.addi	r5, r5, -1
	l.add	r19, r3, r5
.L102:
	l.lbz	r17, 0(r4)
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L115
	l.sfeq	r3, r19
	l.bf	.L116
	l.sfeq	r17, r11
	l.bnf	.L101
	l.movhi	r17, hi(0)
	l.addi	r3, r3, 1
	l.lbz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bnf	.L102
	l.addi	r4, r4, 1
.L101:
	l.lbz	r17, 0(r4)
.L115:
.L116:
	l.sub	r11, r11, r17
.L99:
.L114:
	l.jr	r9
	 l.nop

	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L117
	l.xori	r17, r0, -2
	l.and	r5, r5, r17
	l.add	r19, r3, r5
.L119:
	l.lbz	r17, 1(r3)
	l.sb	0(r4), r17
	l.lbz	r17, 0(r3)
	l.sb	1(r4), r17
	l.addi	r3, r3, 2
	l.sfne	r3, r19
	l.bf	.L119
	l.addi	r4, r4, 2
.L117:
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
	l.bf	.L122
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L122:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L124
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L124:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L127
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L125
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L125:
	l.jr	r9
	 l.nop

.L127:
	l.j	.L125
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L129
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L129
	 l.nop

	l.movhi	r11, hi(0)
.L129:
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
	l.bf	.L134
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L134:
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
	l.bf	.L136
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L136:
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
	l.bf	.L138
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L138:
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
	l.bf	.L140
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L140:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L143
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bf	.L141
	l.ori	r11, r0, 1
	l.j	.L141
	l.movhi	r11, hi(0)
.L143:
	l.ori	r11, r0, 1
.L141:
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
	l.bf	.L146
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L146:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L147
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L147
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L147
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L147
	 l.nop

	l.movhi	r11, hi(0)
.L147:
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
	l.bf	.L154
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L154:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L164
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L160
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L160
	l.movhi	r17, hi(-65536)
	l.ori	r19, r17, 8192
	l.add	r19, r3, r19
	l.ori	r21, r0, 8184
	l.sfleu	r19, r21
	l.bf	.L160
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L161
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bf	.L155
	l.ori	r11, r0, 1
	l.j	.L155
	l.movhi	r11, hi(0)
.L164:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L155
	l.ori	r11, r0, 1
.L161:
	l.j	.L155
	l.movhi	r11, hi(0)
.L160:
	l.ori	r11, r0, 1
.L155:
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
	l.bf	.L165
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bf	.L165
	 l.nop

	l.movhi	r11, hi(0)
.L165:
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
	l.bnf	.L177
	l.movhi	r17, ha(.LC0)
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
.L170:
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
.L177:
	l.addi	r19, r17, lo(.LC0)
	l.lwz	r11, lo(.LC0)(r17)
	l.j	.L170
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
	l.bf	.L182
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L183
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L186
	l.movhi	r17, ha(.LC1)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
.L179:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L182:
	l.j	.L179
	l.or	r11, r16, r16
.L183:
	l.j	.L179
	l.or	r11, r18, r18
.L186:
	l.j	.L179
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
	l.bf	.L196
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L195
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L190
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bf	.L196
	 l.nop

.L195:
	l.or	r11, r22, r22
	l.j	.L188
	l.or	r12, r18, r18
.L190:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L191
	 l.nop

	l.or	r12, r20, r20
.L192:
	l.or	r11, r16, r16
.L188:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L191:
	l.or	r16, r22, r22
	l.j	.L192
	l.or	r12, r18, r18
.L196:
	l.or	r11, r16, r16
	l.j	.L188
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
	l.bf	.L204
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L205
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L200
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L198
	l.or	r11, r18, r18
.L204:
	l.j	.L198
	l.or	r11, r16, r16
.L200:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L198
	l.or	r11, r16, r16
.L205:
	l.or	r11, r18, r18
.L198:
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
	l.bf	.L218
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L217
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L212
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bf	.L218
	 l.nop

.L217:
	l.or	r11, r22, r22
	l.j	.L210
	l.or	r12, r18, r18
.L212:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L213
	 l.nop

	l.or	r12, r20, r20
.L214:
	l.or	r11, r16, r16
.L210:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L213:
	l.or	r16, r22, r22
	l.j	.L214
	l.or	r12, r18, r18
.L218:
	l.or	r11, r16, r16
	l.j	.L210
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
	l.bf	.L228
	 l.nop

.L226:
	l.or	r11, r20, r20
	l.j	.L220
	l.or	r12, r22, r22
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
	l.or	r12, r18, r18
.L220:
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
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.jal	__unordsf2
	l.or	r4, r3, r3
	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L237
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L238
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L233
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L231
	l.or	r11, r16, r16
.L238:
	l.j	.L231
	l.or	r11, r18, r18
.L233:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L231
	l.or	r11, r18, r18
.L237:
	l.or	r11, r16, r16
.L231:
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
	l.bf	.L249
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L251
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L245
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L251
	 l.nop

.L249:
	l.or	r11, r20, r20
	l.j	.L243
	l.or	r12, r22, r22
.L245:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L253
	 l.nop

.L251:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
.L243:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L253:
	l.or	r16, r20, r20
	l.j	.L251
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
	l.bf	.L255
	l.or	r19, r11, r11
	l.movhi	r21, ha(.LANCHOR1)
	l.addi	r21, r21, lo(.LANCHOR1)
.L256:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbz	r17, 0(r17)
	l.sb	0(r19), r17
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L256
	l.addi	r19, r19, 1
.L255:
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
	l.bf	.L261
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L261:
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
	l.bnf	.L270
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L264
	 l.nop

	l.sw	4(r17), r3
.L264:
	l.jr	r9
	 l.nop

.L270:
	l.sw	4(r3), r0
	l.j	.L264
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L272
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L272:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L271
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L271:
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
	l.bf	.L281
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.movhi	r18, hi(0)
.L283:
	l.or	r14, r16, r16
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L280
	l.addi	r18, r18, 1
	l.sfne	r22, r18
	l.bf	.L283
	l.add	r16, r16, r20
.L281:
	l.addi	r17, r22, 1
	l.sw	0(r30), r17
	l.mul	r22, r20, r22
	l.movhi	r17, hi(0)
	l.sfeq	r20, r17
	l.bf	.L280
	l.add	r14, r28, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
.L280:
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
	l.bf	.L297
	l.or	r20, r3, r3
	l.or	r24, r6, r6
	l.or	r22, r7, r7
	l.or	r16, r4, r4
	l.movhi	r18, hi(0)
.L299:
	l.or	r28, r16, r16
	l.or	r4, r16, r16
	l.jalr	r22
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L296
	l.addi	r18, r18, 1
	l.sfne	r26, r18
	l.bf	.L299
	l.add	r16, r16, r24
.L297:
	l.movhi	r28, hi(0)
.L296:
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
	l.bf	.L309
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L309:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.j	.L311
	l.ori	r23, r0, 4
.L324:
	l.bnf	.L325
	l.ori	r19, r0, 43
.L313:
	l.addi	r3, r3, 1
.L311:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L313
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L324
	l.ori	r11, r0, 1
	l.j	.L324
	l.movhi	r11, hi(0)
.L325:
	l.sfeq	r17, r19
	l.bf	.L320
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L314
	l.ori	r23, r0, 1
	l.j	.L315
	l.movhi	r23, hi(0)
.L320:
	l.movhi	r23, hi(0)
.L314:
	l.addi	r3, r3, 1
.L315:
	l.lbs	r17, 0(r3)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bnf	.L317
	l.or	r21, r19, r19
	l.ori	r19, r0, 2
.L326:
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
	l.bf	.L326
	l.ori	r19, r0, 2
.L317:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bf	.L310
	 l.nop

	l.sub	r11, r0, r11
.L310:
	l.jr	r9
	 l.nop

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
	l.j	.L329
	l.ori	r23, r0, 4
.L344:
	l.bnf	.L345
	l.ori	r19, r0, 43
.L331:
	l.addi	r3, r3, 1
.L329:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L331
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L344
	l.ori	r25, r0, 1
	l.j	.L344
	l.movhi	r25, hi(0)
.L345:
	l.sfeq	r17, r19
	l.bf	.L332
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L333
	 l.nop

	l.ori	r25, r0, 1
.L332:
	l.addi	r3, r3, 1
.L333:
	l.lbs	r17, 0(r3)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.sfleu	r17, r19
	l.bf	.L334
	l.ori	r23, r0, 9
.L335:
	l.movhi	r19, hi(0)
	l.sfne	r25, r19
	l.bf	.L328
	l.sub	r17, r0, r12
	l.sfne	r12, r19
	l.bnf	.L346
	l.ori	r19, r0, 1
.L340:
	l.sub	r11, r0, r11
	l.sub	r11, r11, r19
	l.or	r12, r17, r17
.L328:
	l.jr	r9
	 l.nop

.L343:
	l.sub	r11, r11, r19
	l.sub	r11, r11, r17
	l.lbs	r17, 0(r3)
	l.addi	r17, r17, -48
	l.sfleu	r17, r23
	l.bnf	.L335
	 l.nop

.L334:
	l.ori	r19, r0, 30
	l.srl	r19, r12, r19
	l.ori	r27, r0, 2
	l.sll	r21, r11, r27
	l.or	r21, r19, r21
	l.sll	r19, r12, r27
	l.add	r12, r19, r12
	l.sfltu	r12, r19
	l.bf	.L341
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L341:
	l.add	r21, r21, r11
	l.add	r19, r19, r21
	l.add	r21, r12, r12
	l.sfltu	r21, r12
	l.bf	.L342
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L342:
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
	l.bf	.L343
	l.ori	r17, r0, 1
	l.j	.L343
	l.movhi	r17, hi(0)
.L346:
	l.j	.L340
	l.movhi	r19, hi(0)
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
	l.bf	.L348
	l.sw	28(r1), r9
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.j	.L351
	l.or	r26, r7, r7
.L352:
	l.or	r16, r28, r28
	l.movhi	r17, hi(0)
.L358:
	l.sfne	r16, r17
	l.bnf	.L347
	l.movhi	r18, hi(0)
.L351:
	l.ori	r17, r0, 1
	l.srl	r28, r16, r17
	l.mul	r18, r28, r20
	l.add	r18, r22, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L352
	l.sfles	r11, r17
	l.bf	.L347
	l.add	r22, r18, r20
	l.addi	r16, r16, -1
	l.j	.L358
	l.sub	r16, r16, r28
.L348:
	l.movhi	r18, hi(0)
.L347:
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
	l.bf	.L360
	l.sw	36(r1), r9
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r28, r7, r7
	l.j	.L363
	l.or	r24, r8, r8
.L362:
	l.movhi	r17, hi(0)
	l.sfne	r30, r17
.L372:
	l.bnf	.L360
	l.or	r16, r30, r30
.L363:
	l.ori	r14, r0, 1
	l.sra	r30, r16, r14
	l.mul	r18, r30, r20
	l.add	r18, r22, r18
	l.or	r5, r24, r24
	l.or	r4, r18, r18
	l.jalr	r28
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L359
	l.sfles	r11, r17
	l.bf	.L372
	l.sfne	r30, r17
	l.add	r22, r18, r20
	l.addi	r16, r16, -1
	l.j	.L362
	l.sra	r30, r16, r14
.L360:
	l.movhi	r18, hi(0)
.L359:
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
	l.bf	.L375
	l.or	r12, r4, r4
	l.sub	r12, r0, r4
	l.sfne	r4, r17
	l.bnf	.L378
	l.ori	r11, r0, 1
.L377:
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L375:
	l.jr	r9
	 l.nop

.L378:
	l.j	.L377
	l.movhi	r11, hi(0)
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
	l.bf	.L382
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L382:
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
	l.bf	.L385
	l.or	r12, r4, r4
	l.sub	r12, r0, r4
	l.sfne	r4, r17
	l.bnf	.L388
	l.ori	r11, r0, 1
.L387:
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L385:
	l.jr	r9
	 l.nop

.L388:
	l.j	.L387
	l.movhi	r11, hi(0)
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
	l.bnf	.L401
	l.movhi	r11, hi(0)
	l.sfne	r4, r17
.L402:
	l.bnf	.L400
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 4
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L402
	l.sfne	r4, r17
.L397:
	l.j	.L391
	l.movhi	r11, hi(0)
.L400:
	l.sfne	r17, r19
	l.bnf	.L397
	l.or	r11, r3, r3
.L391:
.L401:
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
	l.bnf	.L415
	l.sfltu	r17, r19
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
.L417:
	l.bf	.L405
	l.sfne	r19, r21
	l.bnf	.L416
	l.sfgtu	r17, r19
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L417
	l.sfeq	r17, r21
.L405:
	l.sfltu	r17, r19
.L415:
	l.bf	.L403
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
.L416:
	l.bf	.L403
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L403:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L419:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L419
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
	l.bf	.L422
	l.or	r11, r3, r3
.L423:
	l.addi	r11, r11, 4
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L423
	 l.nop

.L422:
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
	l.bnf	.L439
	l.movhi	r11, hi(0)
.L427:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L428
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L428
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.sfeq	r5, r17
	l.bnf	.L427
	l.addi	r4, r4, 4
.L431:
	l.movhi	r11, hi(0)
.L426:
.L439:
	l.jr	r9
	 l.nop

.L428:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L431
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L426
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L426
	l.ori	r11, r0, 1
	l.j	.L439
	l.movhi	r11, hi(0)
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L450
	l.movhi	r11, hi(0)
.L441:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bnf	.L449
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bnf	.L441
	l.addi	r3, r3, 4
.L446:
	l.j	.L440
	l.movhi	r11, hi(0)
.L449:
	l.sfne	r5, r17
	l.bnf	.L446
	l.or	r11, r3, r3
.L440:
.L450:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L465
	l.movhi	r11, hi(0)
.L452:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L464
	l.addi	r3, r3, 4
	l.addi	r5, r5, -1
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L452
	l.addi	r4, r4, 4
.L456:
	l.movhi	r11, hi(0)
.L451:
.L465:
	l.jr	r9
	 l.nop

.L464:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L456
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L451
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L451
	l.ori	r11, r0, 1
	l.j	.L465
	l.movhi	r11, hi(0)
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
	l.bf	.L467
	l.or	r16, r3, r3
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
.L467:
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
	l.bf	.L473
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.sub	r19, r3, r4
	l.ori	r21, r0, 2
	l.sll	r21, r5, r21
	l.sfltu	r19, r21
	l.bf	.L474
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.or	r19, r3, r3
	l.bnf	.L473
	l.xori	r23, r0, -1
.L475:
	l.addi	r4, r4, 4
	l.addi	r19, r19, 4
	l.lwz	r21, -4(r4)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L475
	l.sw	-4(r19), r21
	l.j	.L473
	 l.nop

.L474:
	l.sfeq	r5, r19
	l.bf	.L473
	 l.nop

	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
.L476:
	l.lwz	r21, 0(r19)
	l.sw	0(r17), r21
	l.addi	r17, r17, -4
	l.sfne	r4, r19
	l.bf	.L476
	l.addi	r19, r19, -4
.L473:
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
	l.bf	.L485
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L486:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.bf	.L486
	l.sw	-4(r19), r4
.L485:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L492
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L491
	l.add	r4, r4, r5
.L494:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L494
	l.sb	0(r4), r19
.L491:
	l.jr	r9
	 l.nop

.L492:
	l.bf	.L491
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L491
	 l.nop

	l.add	r5, r3, r5
.L495:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r5, r3
	l.bf	.L495
	l.sb	-1(r4), r17
	l.j	.L491
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
	l.bnf	.L509
	l.sll	r12, r4, r5
	l.or	r11, r25, r25
	l.movhi	r21, hi(0)
.L509:
	l.sfges	r19, r21
	l.bnf	.L506
	 l.nop

	l.movhi	r12, hi(0)
.L506:
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
	l.bnf	.L510
	l.srl	r3, r3, r5
	l.or	r4, r23, r23
	l.movhi	r17, hi(0)
.L510:
	l.sfges	r19, r17
	l.bnf	.L508
	 l.nop

	l.movhi	r3, hi(0)
.L508:
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
	l.bnf	.L516
	l.srl	r11, r3, r5
	l.or	r12, r25, r25
	l.movhi	r21, hi(0)
.L516:
	l.sfges	r19, r21
	l.bnf	.L513
	 l.nop

	l.movhi	r11, hi(0)
.L513:
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
	l.bnf	.L517
	l.sll	r4, r4, r5
	l.or	r3, r23, r23
	l.movhi	r17, hi(0)
.L517:
	l.sfges	r19, r17
	l.bnf	.L515
	 l.nop

	l.movhi	r4, hi(0)
.L515:
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
	l.ori	r19, r0, 32
	l.srl	r17, r3, r11
.L534:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L529
	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L534
	l.srl	r17, r3, r11
	l.movhi	r11, hi(0)
.L529:
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L541
	l.movhi	r11, hi(0)
	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L535
	l.ori	r17, r0, 1
	l.ori	r11, r0, 1
.L542:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L542
	l.ori	r17, r0, 1
.L535:
.L541:
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
	l.bf	.L543
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L543
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L543:
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
	l.bf	.L549
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L549
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L549:
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
	l.bf	.L555
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L555
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L555:
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
	l.bf	.L564
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L564
	l.sfges	r16, r18
	l.bf	.L568
	l.movhi	r18, hi(1073741824)
	l.j	.L568
	l.movhi	r18, hi(1056964608)
.L567:
	l.ori	r17, r0, 31
.L578:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L564
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L568:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L578
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L567
	l.or	r20, r11, r11
.L564:
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
	l.bf	.L580
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
	l.bnf	.L580
	l.sfges	r16, r22
	l.bnf	.L594
	l.movhi	r17, ha(.LC10+4)
	l.movhi	r5, hi(1073741824)
	l.j	.L584
	l.lwz	r6, lo(.LC10+4)(r17)
.L594:
	l.movhi	r5, hi(1071644672)
	l.movhi	r17, ha(.LC11+4)
	l.j	.L584
	l.lwz	r6, lo(.LC11+4)(r17)
.L583:
	l.ori	r17, r0, 31
.L595:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L580
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.or	r5, r11, r11
	l.or	r6, r12, r12
.L584:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L595
	l.ori	r17, r0, 31
	l.sw	4(r1), r5
	l.sw	0(r1), r6
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.j	.L583
	l.lwz	r6, 0(r1)
.L580:
	l.or	r11, r20, r20
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
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
	l.bnf	.L597
	l.sfges	r16, r22
	l.bnf	.L611
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1073741824)
	l.j	.L601
	l.lwz	r6, lo(.LC13+4)(r17)
.L611:
	l.movhi	r5, hi(1071644672)
	l.movhi	r17, ha(.LC12+4)
	l.j	.L601
	l.lwz	r6, lo(.LC12+4)(r17)
.L600:
	l.ori	r17, r0, 31
.L612:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L597
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.or	r5, r11, r11
	l.or	r6, r12, r12
.L601:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L612
	l.ori	r17, r0, 31
	l.sw	4(r1), r5
	l.sw	0(r1), r6
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.j	.L600
	l.lwz	r6, 0(r1)
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
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L614
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L615:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r17)
	l.lbz	r21, -1(r4)
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.bf	.L615
	l.sb	-1(r17), r19
.L614:
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
	l.bf	.L635
	l.or	r17, r3, r3
.L622:
	l.addi	r17, r17, 1
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L622
	l.movhi	r19, hi(0)
.L635:
	l.sfne	r5, r19
	l.bnf	.L629
	 l.nop

.L623:
	l.lbs	r19, 0(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L633
	l.sb	0(r17), r19
	l.addi	r4, r4, 1
	l.addi	r5, r5, -1
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bnf	.L623
	l.addi	r17, r17, 1
	l.j	.L634
	l.sb	0(r17), r0
.L633:
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bf	.L626
	 l.nop

.L629:
	l.sb	0(r17), r0
.L626:
.L634:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L636
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L643:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L639
	 l.nop

.L636:
	l.jr	r9
	 l.nop

.L639:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L643
	l.add	r17, r3, r11
	l.j	.L636
	 l.nop

	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.lbs	r21, 0(r3)
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bnf	.L649
	l.or	r11, r3, r3
.L645:
	l.or	r17, r4, r4
.L648:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bnf	.L651
	l.sfeq	r19, r21
	l.bnf	.L648
	l.addi	r17, r17, 1
.L646:
	l.jr	r9
	 l.nop

.L651:
	l.addi	r11, r11, 1
	l.lbs	r21, 0(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L645
	 l.nop

.L649:
	l.j	.L646
	l.movhi	r11, hi(0)
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.j	.L654
	l.movhi	r11, hi(0)
.L657:
	l.movhi	r19, hi(0)
.L659:
	l.sfne	r17, r19
	l.bnf	.L658
	l.addi	r3, r3, 1
.L654:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.bnf	.L659
	l.movhi	r19, hi(0)
	l.j	.L657
	l.or	r11, r3, r3
.L658:
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
	l.bf	.L661
	l.or	r17, r4, r4
.L662:
	l.addi	r17, r17, 1
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L662
	 l.nop

.L661:
	l.sfeq	r17, r4
	l.bf	.L663
	l.sub	r29, r17, r4
	l.j	.L669
	l.addi	r29, r29, -1
.L672:
	l.j	.L665
	l.or	r21, r4, r4
.L668:
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L663
	 l.nop

	l.lbz	r19, 0(r11)
	l.sfeq	r19, r17
	l.bf	.L672
	l.or	r17, r11, r11
	l.add	r27, r11, r29
	l.or	r21, r4, r4
.L666:
	l.lbz	r23, 0(r21)
	l.movhi	r31, hi(0)
	l.sfeq	r23, r31
	l.bf	.L665
	l.sfeq	r17, r27
	l.bf	.L665
	l.sfeq	r23, r19
	l.bnf	.L665
	l.addi	r17, r17, 1
	l.lbz	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bnf	.L666
	l.addi	r21, r21, 1
.L665:
	l.lbz	r17, 0(r21)
	l.sfeq	r17, r19
	l.bf	.L663
	 l.nop

	l.addi	r11, r11, 1
.L669:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r25
	l.bf	.L668
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L669
	l.addi	r11, r11, 1
	l.movhi	r11, hi(0)
.L663:
	l.jr	r9
	 l.nop

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
	l.bf	.L694
	l.movhi	r5, hi(0)
.L696:
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L688
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L695
	l.movhi	r17, hi(-2147483648)
.L688:
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
.L694:
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L696
	l.movhi	r5, hi(0)
	l.movhi	r17, hi(-2147483648)
.L695:
	l.j	.L688
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L705
	l.sfltu	r4, r6
	l.bf	.L719
	l.movhi	r11, hi(0)
	l.sub	r27, r4, r6
	l.add	r27, r3, r27
	l.sfgtu	r3, r27
	l.bf	.L719
	 l.nop

	l.j	.L704
	l.lbs	r29, 0(r5)
.L718:
	l.movhi	r23, hi(0)
	l.sfeq	r17, r23
	l.bf	.L697
	 l.nop

	l.lbz	r17, 0(r19)
	l.sfeq	r25, r17
	l.bf	.L697
	 l.nop

.L699:
	l.sfleu	r3, r27
	l.bnf	.L719
	l.movhi	r11, hi(0)
.L704:
	l.lbs	r17, 0(r3)
	l.or	r11, r3, r3
	l.sfne	r17, r29
	l.bf	.L699
	l.addi	r3, r3, 1
	l.addi	r17, r6, -1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L697
	l.addi	r19, r5, 1
	l.or	r21, r3, r3
.L700:
	l.lbz	r25, 0(r21)
	l.lbz	r23, 0(r19)
	l.sfeq	r25, r23
	l.bnf	.L718
	l.addi	r21, r21, 1
	l.addi	r17, r17, -1
	l.movhi	r23, hi(0)
	l.sfeq	r17, r23
	l.bnf	.L700
	l.addi	r19, r19, 1
.L697:
.L719:
	l.jr	r9
	 l.nop

.L705:
	l.j	.L697
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
	l.bf	.L721
	l.or	r16, r5, r5
	l.jal	memmove
	 l.nop

.L721:
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
	l.or	r28, r5, r5
	l.movhi	r5, hi(0)
	l.jal	__ltdf2
	l.movhi	r6, hi(0)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L754
	l.movhi	r17, hi(-2147483648)
	l.movhi	r30, hi(0)
.L727:
	l.movhi	r20, ha(.LC16)
	l.addi	r20, r20, lo(.LC16)
	l.movhi	r5, hi(1072693248)
	l.lwz	r6, 4(r20)
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L750
	l.movhi	r14, hi(0)
	l.movhi	r17, ha(.LC17)
	l.lwz	r26, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r24, 4(r17)
	l.lwz	r22, 0(r20)
	l.lwz	r20, 4(r20)
.L731:
	l.addi	r14, r14, 1
	l.or	r5, r26, r26
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r16, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r12, r12
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L731
	 l.nop

.L732:
	l.movhi	r17, hi(0)
	l.sfeq	r30, r17
.L755:
	l.bf	.L736
	l.sw	0(r28), r14
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r16, r17
.L736:
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
.L754:
	l.xor	r16, r16, r17
	l.j	.L727
	l.ori	r30, r0, 1
.L750:
	l.movhi	r17, ha(.LC17)
	l.addi	r20, r17, lo(.LC17)
	l.movhi	r5, hi(1071644672)
	l.lwz	r6, 4(r20)
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r22, hi(0)
	l.sflts	r11, r22
	l.bnf	.L751
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r22
	l.bnf	.L732
	l.movhi	r14, hi(0)
	l.lwz	r22, 0(r20)
	l.lwz	r20, 4(r20)
.L735:
	l.addi	r14, r14, -1
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r16, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r12, r12
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L735
	l.sfeq	r30, r17
	l.j	.L755
	 l.nop

.L751:
	l.j	.L732
	l.movhi	r14, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r23, r3, r3
	l.or	r19, r4, r4
	l.or	r4, r4, r3
	l.movhi	r17, hi(0)
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bnf	.L759
	l.movhi	r12, hi(0)
.L756:
	l.jr	r9
	 l.nop

.L763:
	l.add	r5, r5, r5
	l.add	r5, r21, r5
	l.or	r6, r17, r17
	l.ori	r17, r0, 31
	l.sll	r17, r23, r17
	l.ori	r21, r0, 1
	l.srl	r19, r19, r21
	l.or	r19, r17, r19
	l.srl	r23, r23, r21
	l.or	r17, r23, r19
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L756
	 l.nop

.L759:
	l.andi	r17, r19, 1
	l.sub	r21, r0, r17
	l.and	r17, r21, r5
	l.and	r21, r21, r6
	l.add	r21, r12, r21
	l.sfltu	r21, r12
	l.bf	.L762
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L762:
	l.add	r11, r11, r17
	l.add	r11, r25, r11
	l.or	r12, r21, r21
	l.add	r17, r6, r6
	l.sfltu	r17, r6
	l.bf	.L763
	l.ori	r21, r0, 1
	l.j	.L763
	l.movhi	r21, hi(0)
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bnf	.L781
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L783:
	l.bnf	.L766
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L766
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L783
	l.sfges	r4, r21
.L774:
	l.movhi	r11, hi(0)
.L768:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L782
	 l.nop

	l.or	r11, r3, r3
.L782:
	l.jr	r9
	 l.nop

.L766:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L774
	 l.nop

.L781:
	l.j	.L770
	l.movhi	r11, hi(0)
.L784:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L768
	 l.nop

.L770:
	l.sfltu	r3, r4
	l.bf	.L784
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L784
	l.or	r11, r11, r17
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
	l.bf	.L787
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
.L787:
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
	l.bnf	.L801
	l.xor	r4, r4, r21
.L796:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L801:
	l.sfne	r19, r17
	l.bf	.L796
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
	l.bf	.L802
	l.movhi	r11, hi(0)
.L804:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L804
	l.add	r4, r4, r4
.L802:
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
	l.bf	.L808
	l.and	r27, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bf	.L821
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L807
	l.xori	r23, r0, -1
.L809:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L809
	l.sb	0(r19), r21
	l.j	.L807
	 l.nop

.L808:
	l.movhi	r17, hi(0)
.L821:
	l.sfeq	r25, r17
	l.bf	.L811
	l.ori	r21, r0, 3
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r25, r25, r21
	l.add	r25, r25, r4
.L812:
	l.lwz	r21, 4(r17)
	l.lwz	r23, 0(r17)
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.addi	r17, r17, 8
	l.sfne	r17, r25
	l.bf	.L812
	l.addi	r19, r19, 8
.L811:
	l.sfleu	r5, r27
	l.bf	.L807
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r4, r4, r5
.L813:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r4
	l.bf	.L813
	l.addi	r3, r3, 1
.L807:
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfltu	r3, r4
	l.bf	.L823
	l.srl	r23, r5, r17
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bf	.L837
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L822
	l.xori	r23, r0, -1
.L824:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L824
	l.sb	0(r19), r21
	l.j	.L822
	 l.nop

.L823:
	l.movhi	r17, hi(0)
.L837:
	l.sfeq	r23, r17
	l.bf	.L826
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.add	r23, r23, r4
.L827:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.sfne	r17, r23
	l.bf	.L827
	l.addi	r19, r19, 2
.L826:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L822
	l.add	r4, r4, r5
	l.lbs	r17, -1(r4)
	l.add	r3, r3, r5
	l.sb	-1(r3), r17
.L822:
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
	l.bf	.L839
	l.and	r25, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bf	.L852
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L838
	l.xori	r23, r0, -1
.L840:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L840
	l.sb	0(r19), r21
	l.j	.L838
	 l.nop

.L839:
	l.movhi	r17, hi(0)
.L852:
	l.sfeq	r23, r17
	l.bf	.L842
	l.ori	r21, r0, 2
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r23, r23, r21
	l.add	r23, r23, r4
.L843:
	l.lwz	r21, 0(r17)
	l.sw	0(r19), r21
	l.addi	r17, r17, 4
	l.sfne	r17, r23
	l.bf	.L843
	l.addi	r19, r19, 4
.L842:
	l.sfleu	r5, r25
	l.bf	.L838
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r4, r4, r5
.L844:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r4
	l.bf	.L844
	l.addi	r3, r3, 1
.L838:
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
.L867:
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L863
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r21
	l.bf	.L867
	l.sub	r17, r19, r11
.L863:
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
.L872:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L868
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L872
	l.sra	r17, r3, r11
.L868:
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
	l.bf	.L880
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
.L873:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L880:
	l.jal	__subsf3
	l.or	r3, r18, r18
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L873
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
.L882:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L882
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
.L885:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L885
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
	l.bf	.L887
	l.movhi	r11, hi(0)
.L889:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L889
	l.add	r4, r4, r4
.L887:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L892
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L892
	 l.nop

.L894:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L894
	l.add	r3, r3, r3
.L892:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bnf	.L915
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L917:
	l.bnf	.L900
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L900
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L917
	l.sfges	r4, r21
.L908:
	l.movhi	r11, hi(0)
.L902:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L916
	 l.nop

	l.or	r11, r3, r3
.L916:
	l.jr	r9
	 l.nop

.L900:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L908
	 l.nop

.L915:
	l.j	.L904
	l.movhi	r11, hi(0)
.L918:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L902
	 l.nop

.L904:
	l.sfltu	r3, r4
	l.bf	.L918
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L918
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
	l.bf	.L922
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L919
	l.ori	r11, r0, 1
	l.j	.L919
	l.movhi	r11, hi(0)
.L922:
	l.xori	r11, r0, -1
.L919:
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
	l.bf	.L928
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L925
	l.ori	r11, r0, 1
	l.j	.L925
	l.movhi	r11, hi(0)
.L928:
	l.xori	r11, r0, -1
.L925:
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
	l.bnf	.L949
	 l.nop

	l.movhi	r21, hi(0)
.L936:
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L951
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 32
	l.andi	r17, r4, 1
.L950:
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.sra	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L952
	l.add	r3, r3, r3
	l.addi	r19, r19, -1
	l.andi	r19, r19, 0xff
	l.sfne	r19, r17
	l.bf	.L950
	l.andi	r17, r4, 1
.L937:
	l.movhi	r17, hi(0)
.L951:
.L952:
	l.sfeq	r21, r17
	l.bf	.L935
	 l.nop

	l.sub	r11, r0, r11
.L935:
	l.jr	r9
	 l.nop

.L949:
	l.sub	r4, r0, r4
	l.j	.L936
	l.ori	r21, r0, 1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L973
	 l.nop

	l.movhi	r23, hi(0)
.L954:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L974
	 l.nop

.L955:
	l.sfleu	r3, r4
	l.bf	.L963
	l.or	r21, r3, r3
	l.ori	r19, r0, 32
	l.ori	r17, r0, 1
.L957:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L956
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r25, hi(0)
	l.sfne	r19, r25
	l.bf	.L957
	 l.nop

	l.movhi	r19, hi(0)
.L958:
.L976:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L953
	l.or	r11, r19, r19
	l.sub	r11, r0, r19
.L953:
	l.jr	r9
	 l.nop

.L973:
	l.sub	r3, r0, r3
	l.j	.L954
	l.ori	r23, r0, 1
.L974:
	l.sub	r4, r0, r4
	l.j	.L955
	l.xori	r23, r23, 1
.L963:
	l.j	.L972
	l.ori	r17, r0, 1
.L956:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L976
	 l.nop

.L972:
	l.j	.L960
	l.movhi	r19, hi(0)
.L975:
	l.or	r19, r19, r17
	l.ori	r25, r0, 1
.L977:
	l.srl	r17, r17, r25
	l.srl	r4, r4, r25
	l.movhi	r25, hi(0)
	l.sfne	r17, r25
	l.bnf	.L958
	 l.nop

.L960:
	l.sfltu	r21, r4
	l.bf	.L977
	l.ori	r25, r0, 1
	l.j	.L975
	l.sub	r21, r21, r4
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L998
	 l.nop

	l.movhi	r25, hi(0)
.L979:
	l.or	r23, r3, r3
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L980
	l.or	r17, r4, r4
	l.sub	r17, r0, r4
.L980:
	l.sfleu	r3, r17
	l.bf	.L988
	l.ori	r21, r0, 32
	l.ori	r19, r0, 1
	l.add	r17, r17, r17
.L1001:
	l.sfleu	r3, r17
	l.bf	.L981
	l.add	r19, r19, r19
	l.addi	r21, r21, -1
	l.movhi	r27, hi(0)
	l.sfne	r21, r27
	l.bf	.L1001
	l.add	r17, r17, r17
.L983:
	l.movhi	r17, hi(0)
.L1000:
	l.sfeq	r25, r17
	l.bf	.L978
	l.or	r11, r23, r23
	l.sub	r11, r0, r23
.L978:
	l.jr	r9
	 l.nop

.L998:
	l.sub	r3, r0, r3
	l.j	.L979
	l.ori	r25, r0, 1
.L988:
	l.j	.L993
	l.ori	r19, r0, 1
.L981:
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L1002
	l.sfltu	r23, r17
	l.j	.L1000
	l.movhi	r17, hi(0)
.L999:
	l.ori	r21, r0, 1
.L1003:
	l.srl	r19, r19, r21
	l.srl	r17, r17, r21
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L983
	 l.nop

.L993:
	l.sfltu	r23, r17
.L1002:
	l.bf	.L1003
	l.ori	r21, r0, 1
	l.j	.L999
	l.sub	r23, r23, r17
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.ori	r19, r0, 16
	l.bnf	.L1020
	l.ori	r17, r0, 1
	l.ori	r21, r0, 16
.L1022:
	l.sll	r21, r4, r21
	l.movhi	r23, hi(0)
	l.sfges	r21, r23
	l.bnf	.L1006
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.sfleu	r11, r4
	l.bf	.L1006
	l.andi	r17, r17, 0xffff
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L1022
	l.ori	r21, r0, 16
	l.movhi	r19, hi(0)
.L1008:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L1021
	 l.nop

	l.or	r11, r19, r19
.L1021:
	l.jr	r9
	 l.nop

.L1006:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1008
	 l.nop

.L1020:
	l.j	.L1010
	l.movhi	r19, hi(0)
.L1023:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L1008
	 l.nop

.L1010:
	l.sfltu	r11, r4
	l.bf	.L1023
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.j	.L1023
	l.or	r19, r17, r19
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bnf	.L1041
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L1043:
	l.bnf	.L1026
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L1026
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bnf	.L1043
	l.sfges	r4, r21
.L1034:
	l.movhi	r11, hi(0)
.L1028:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L1042
	 l.nop

	l.or	r11, r3, r3
.L1042:
	l.jr	r9
	 l.nop

.L1026:
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1034
	 l.nop

.L1041:
	l.j	.L1030
	l.movhi	r11, hi(0)
.L1044:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1028
	 l.nop

.L1030:
	l.sfltu	r3, r4
	l.bf	.L1044
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L1044
	l.or	r11, r11, r17
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1046
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r12, hi(0)
.L1048:
	l.jr	r9
	 l.nop

.L1046:
	l.sfeq	r5, r17
	l.bf	.L1049
	l.ori	r17, r0, 32
	l.sll	r12, r4, r5
	l.sub	r17, r17, r5
	l.srl	r4, r4, r17
	l.sll	r11, r3, r5
	l.j	.L1048
	l.or	r11, r4, r11
.L1049:
	l.or	r11, r3, r3
	l.j	.L1048
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1051
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.addi	r5, r5, -32
	l.sra	r12, r3, r5
.L1053:
	l.jr	r9
	 l.nop

.L1051:
	l.sfeq	r5, r17
	l.bf	.L1054
	l.ori	r17, r0, 32
	l.sra	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L1053
	l.or	r12, r3, r12
.L1054:
	l.or	r11, r3, r3
	l.j	.L1053
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
	l.bf	.L1059
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1059:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r21
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r25, hi(0)
	l.sfeq	r19, r25
	l.bf	.L1060
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1060:
	l.ori	r23, r0, 3
	l.sll	r19, r19, r23
	l.ori	r23, r0, 8
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r21, r19, r21
	l.andi	r19, r17, 240
	l.sfeq	r19, r25
	l.bf	.L1061
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1061:
	l.ori	r23, r0, 2
	l.sll	r19, r19, r23
	l.ori	r23, r0, 4
	l.sub	r23, r23, r19
	l.srl	r17, r17, r23
	l.add	r21, r19, r21
	l.andi	r19, r17, 12
	l.sfeq	r19, r25
	l.bf	.L1062
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1062:
	l.add	r19, r19, r19
	l.ori	r11, r0, 2
	l.sub	r23, r11, r19
	l.srl	r17, r17, r23
	l.sub	r11, r11, r17
	l.andi	r17, r17, 2
	l.sfeq	r17, r25
	l.bf	.L1058
	 l.nop

	l.movhi	r11, hi(0)
.L1058:
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1067
	l.sfgts	r3, r5
	l.bf	.L1068
	l.sfltu	r4, r6
	l.bf	.L1067
	l.sfgtu	r4, r6
	l.bf	.L1068
	 l.nop

	l.j	.L1063
	l.ori	r11, r0, 1
.L1067:
	l.movhi	r11, hi(0)
.L1063:
	l.jr	r9
	 l.nop

.L1068:
	l.j	.L1063
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1073
	l.sfgts	r3, r5
	l.bf	.L1074
	l.sfltu	r4, r6
	l.bf	.L1073
	l.sfgtu	r4, r6
	l.bf	.L1074
	 l.nop

	l.j	.L1070
	l.ori	r11, r0, 1
.L1073:
	l.movhi	r11, hi(0)
.L1070:
	l.jr	r9
	l.addi	r11, r11, -1
.L1074:
	l.j	.L1070
	l.ori	r11, r0, 2
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.movhi	r23, hi(0)
	l.sfeq	r17, r23
	l.bf	.L1076
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1076:
	l.ori	r17, r0, 4
	l.sll	r21, r21, r17
	l.srl	r17, r3, r21
	l.andi	r19, r17, 255
	l.sfeq	r19, r23
	l.bf	.L1077
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1077:
	l.ori	r25, r0, 3
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r21, r19, r21
	l.andi	r19, r17, 15
	l.sfeq	r19, r23
	l.bf	.L1078
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1078:
	l.ori	r25, r0, 2
	l.sll	r19, r19, r25
	l.srl	r17, r17, r19
	l.add	r21, r19, r21
	l.andi	r19, r17, 3
	l.sfeq	r19, r23
	l.bf	.L1079
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1079:
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
	l.bf	.L1081
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r11, hi(0)
.L1083:
	l.jr	r9
	 l.nop

.L1081:
	l.sfeq	r5, r17
	l.bf	.L1084
	l.ori	r17, r0, 32
	l.srl	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L1083
	l.or	r12, r3, r12
.L1084:
	l.or	r11, r3, r3
	l.j	.L1083
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
	l.bnf	.L1089
	l.ori	r11, r0, 1
.L1088:
	l.sub	r17, r17, r3
	l.jr	r9
	l.sub	r11, r17, r11
.L1089:
	l.j	.L1088
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
	l.bf	.L1093
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1093:
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
	l.bf	.L1094
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1094:
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
	l.bf	.L1095
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1095:
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
	l.j	.L1100
	l.lwz	r20, lo(.LC19+4)(r17)
.L1098:
	l.ori	r17, r0, 31
.L1107:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1108
	l.or	r5, r18, r18
	l.or	r3, r18, r18
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.or	r18, r11, r11
	l.or	r6, r12, r12
.L1100:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1107
	l.ori	r17, r0, 31
	l.or	r5, r18, r18
	l.sw	0(r1), r6
	l.or	r3, r22, r22
	l.jal	__muldf3
	l.or	r4, r20, r20
	l.or	r22, r11, r11
	l.or	r20, r12, r12
	l.j	.L1098
	l.lwz	r6, 0(r1)
.L1108:
	l.sfges	r24, r17
	l.bnf	.L1106
	l.or	r5, r22, r22
.L1097:
	l.or	r11, r22, r22
	l.or	r12, r20, r20
	l.lwz	r16, 4(r1)
	l.lwz	r18, 8(r1)
	l.lwz	r20, 12(r1)
	l.lwz	r22, 16(r1)
	l.lwz	r24, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L1106:
	l.or	r6, r20, r20
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.j	.L1097
	l.or	r20, r12, r12
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
	l.j	.L1112
	l.movhi	r20, hi(1065353216)
.L1110:
	l.ori	r17, r0, 31
.L1119:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1120
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L1112:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1119
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L1110
	l.or	r20, r11, r11
.L1120:
	l.sfges	r22, r17
	l.bnf	.L1118
	l.or	r4, r20, r20
.L1109:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L1118:
	l.jal	__divsf3
	l.movhi	r3, hi(1065353216)
	l.j	.L1109
	l.or	r20, r11, r11
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.sfltu	r3, r5
	l.bf	.L1125
	l.sfgtu	r3, r5
	l.bf	.L1126
	l.sfltu	r4, r6
	l.bf	.L1125
	l.sfgtu	r4, r6
	l.bf	.L1126
	 l.nop

	l.j	.L1121
	l.ori	r11, r0, 1
.L1125:
	l.movhi	r11, hi(0)
.L1121:
	l.jr	r9
	 l.nop

.L1126:
	l.j	.L1121
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1131
	l.sfgtu	r3, r5
	l.bf	.L1132
	l.sfltu	r4, r6
	l.bf	.L1131
	l.sfgtu	r4, r6
	l.bf	.L1132
	 l.nop

	l.j	.L1128
	l.ori	r11, r0, 1
.L1131:
	l.movhi	r11, hi(0)
.L1128:
	l.jr	r9
	l.addi	r11, r11, -1
.L1132:
	l.j	.L1128
	l.ori	r11, r0, 2
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
