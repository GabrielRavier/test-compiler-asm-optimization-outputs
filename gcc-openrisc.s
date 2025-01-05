	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.sfleu	r3, r4
	l.bf	.L2
	l.or	r11, r3, r3
	l.movhi	r12, hi(0)
	l.sfeq	r5, r12
	l.add	r15, r4, r5
	l.bf	.L3
	l.add	r21, r3, r5
.L4:
	l.addi	r21, r21, -1
	l.lbs	r13, -1(r15)
	l.sb	0(r21), r13
	l.sfne	r11, r21
	l.bf	.L4
	l.addi	r15, r15, -1
.L3:
	l.jr	r9
	 l.nop

.L2:
	l.sfeq	r3, r4
	l.bf	.L3
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L3
	l.ori	r19, r0, 6
	l.addi	r3, r5, -1
	l.sfleu	r3, r19
	l.bf	.L5
	l.addi	r23, r4, 1
	l.or	r6, r4, r11
	l.andi	r7, r6, 3
	l.movhi	r8, hi(0)
	l.sfne	r7, r8
	l.bf	.L5
	l.sub	r12, r11, r23
	l.ori	r21, r0, 2
	l.sfleu	r12, r21
	l.bf	.L5
	l.or	r27, r11, r11
	l.srl	r23, r5, r21
	l.sll	r13, r23, r21
	l.add	r15, r4, r13
.L6:
	l.lwz	r25, 0(r4)
	l.addi	r4, r4, 4
	l.sw	0(r27), r25
	l.sfne	r15, r4
	l.bf	.L6
	l.addi	r27, r27, 4
	l.sfeq	r5, r13
	l.add	r4, r11, r13
	l.bf	.L3
	l.sub	r29, r5, r13
	l.lbs	r5, 0(r15)
	l.ori	r31, r0, 1
	l.sfeq	r29, r31
	l.bf	.L3
	l.sb	0(r4), r5
	l.lbs	r17, 1(r15)
	l.ori	r3, r0, 2
	l.sfeq	r29, r3
	l.bf	.L3
	l.sb	1(r4), r17
	l.lbs	r19, 2(r15)
	l.jr	r9
	l.sb	2(r4), r19
.L5:
	l.add	r6, r11, r5
	l.j	.L9
	l.or	r8, r11, r11
.L30:
	l.addi	r23, r23, 1
.L9:
	l.addi	r8, r8, 1
	l.lbs	r7, -1(r23)
	l.sfne	r8, r6
	l.bf	.L30
	l.sb	-1(r8), r7
	l.jr	r9
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.movhi	r17, hi(0)
	l.sfne	r6, r17
	l.bf	.L32
	l.andi	r5, r5, 0xff
	l.j	.L42
	l.movhi	r11, hi(0)
.L35:
	l.movhi	r8, hi(0)
	l.sfeq	r6, r8
	l.bf	.L34
	l.addi	r3, r3, 1
.L32:
	l.lbz	r7, 0(r4)
	l.sb	0(r3), r7
	l.sfne	r7, r5
	l.addi	r6, r6, -1
	l.bf	.L35
	l.addi	r4, r4, 1
	l.jr	r9
	l.addi	r11, r3, 1
.L34:
	l.movhi	r11, hi(0)
.L42:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L44
	l.andi	r4, r4, 0xff
	l.j	.L51
	l.movhi	r11, hi(0)
.L46:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L47
	l.addi	r3, r3, 1
.L44:
	l.lbz	r6, 0(r3)
	l.sfne	r6, r4
	l.bf	.L46
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L47:
	l.movhi	r11, hi(0)
.L51:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L53
	l.movhi	r11, hi(0)
	l.j	.L63
	 l.nop

.L55:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L57
	l.movhi	r11, hi(0)
.L53:
	l.lbz	r11, 0(r3)
	l.lbz	r6, 0(r4)
	l.sfeq	r11, r6
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.bf	.L55
	l.addi	r4, r4, 1
	l.jr	r9
	l.sub	r11, r11, r6
.L57:
.L63:
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
	l.bf	.L65
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L65:
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
	l.add	r6, r3, r5
	l.andi	r4, r4, 0xff
	l.j	.L71
	l.addi	r3, r3, -1
.L73:
	l.lbz	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L70
	 l.nop

.L71:
	l.sfne	r6, r3
	l.or	r11, r6, r6
	l.bf	.L73
	l.addi	r6, r6, -1
	l.movhi	r11, hi(0)
.L70:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.addi	r1, r1, -8
	l.movhi	r17, hi(0)
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.sfne	r5, r17
	l.bnf	.L77
	l.or	r16, r3, r3
	l.jal	memset
	l.andi	r4, r4, 0xff
.L77:
	l.or	r11, r16, r16
	l.lwz	r9, 4(r1)
	l.lwz	r16, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sb	0(r3), r17
	l.sfeq	r17, r19
	l.bf	.L80
	l.or	r11, r3, r3
.L81:
	l.lbs	r3, 1(r4)
	l.movhi	r5, hi(0)
	l.sfne	r3, r5
	l.sb	1(r11), r3
	l.addi	r11, r11, 1
	l.bf	.L81
	l.addi	r4, r4, 1
.L80:
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.or	r11, r3, r3
	l.movhi	r19, hi(0)
	l.lbs	r3, 0(r3)
	l.sfne	r3, r19
	l.bf	.L87
	l.andi	r4, r4, 0xff
	l.j	.L86
	 l.nop

.L89:
	l.lbs	r3, 1(r11)
	l.sfeq	r3, r5
	l.bf	.L86
	l.addi	r11, r11, 1
.L87:
	l.andi	r17, r3, 0xff
	l.sfne	r17, r4
	l.bf	.L89
	l.movhi	r5, hi(0)
.L86:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.j	.L96
	l.or	r11, r3, r3
.L99:
	l.sfne	r17, r19
	l.bnf	.L98
	l.addi	r11, r11, 1
.L96:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bnf	.L99
	l.movhi	r19, hi(0)
	l.jr	r9
	 l.nop

.L98:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L103:
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfeq	r17, r11
	l.bnf	.L110
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.addi	r3, r3, 1
	l.bf	.L103
	l.addi	r4, r4, 1
	l.movhi	r3, hi(0)
.L102:
	l.andi	r4, r11, 0xff
	l.jr	r9
	l.sub	r11, r3, r4
.L110:
	l.j	.L102
	l.andi	r3, r17, 0xff
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L114
	 l.nop

	l.or	r11, r3, r3
.L113:
	l.lbs	r4, 1(r11)
	l.movhi	r5, hi(0)
	l.sfne	r4, r5
	l.bf	.L113
	l.addi	r11, r11, 1
	l.jr	r9
	l.sub	r11, r11, r3
.L114:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L124
	 l.nop

	l.lbz	r11, 0(r3)
	l.sfne	r11, r17
	l.bnf	.L126
	l.addi	r5, r5, -1
	l.j	.L120
	l.add	r19, r3, r5
.L128:
	l.sfne	r3, r19
	l.bnf	.L119
	l.addi	r3, r3, 1
	l.sfeq	r6, r11
	l.bnf	.L119
	l.movhi	r8, hi(0)
	l.lbz	r11, 0(r3)
	l.sfne	r11, r8
	l.bnf	.L127
	 l.nop

	l.or	r4, r7, r7
.L120:
	l.lbz	r6, 0(r4)
	l.movhi	r21, hi(0)
	l.sfne	r6, r21
	l.bf	.L128
	l.addi	r7, r4, 1
.L119:
	l.sub	r11, r11, r6
.L116:
	l.jr	r9
	 l.nop

.L124:
	l.jr	r9
	l.movhi	r11, hi(0)
.L127:
	l.lbz	r6, 1(r4)
	l.movhi	r11, hi(0)
	l.j	.L116
	l.sub	r11, r11, r6
.L126:
	l.lbz	r6, 0(r4)
	l.movhi	r11, hi(0)
	l.j	.L116
	l.sub	r11, r11, r6
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L129
	l.srl	r5, r5, r17
	l.add	r6, r5, r5
	l.add	r7, r3, r6
.L131:
	l.lbz	r21, 1(r3)
	l.lbz	r19, 0(r3)
	l.addi	r3, r3, 2
	l.sb	0(r4), r21
	l.sb	1(r4), r19
	l.sfne	r3, r7
	l.bf	.L131
	l.addi	r4, r4, 2
.L129:
	l.jr	r9
	 l.nop

	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	l.ori	r3, r3, 32
	l.addi	r4, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r4, r17
	l.bf	.L134
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L134:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L136
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L136:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L139
	l.ori	r4, r0, 9
	l.sfeq	r3, r4
	l.bf	.L137
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L137:
	l.jr	r9
	 l.nop

.L139:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L141
	l.ori	r11, r0, 1
	l.ori	r4, r0, 127
	l.sfeq	r3, r4
	l.bf	.L141
	 l.nop

	l.movhi	r11, hi(0)
.L141:
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
	l.bf	.L146
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L146:
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
	l.bf	.L148
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L148:
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
	l.bf	.L150
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L150:
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
	l.bf	.L152
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L152:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L155
	l.addi	r3, r3, -9
	l.ori	r4, r0, 4
	l.sfleu	r3, r4
	l.bnf	.L157
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L157:
	l.jr	r9
	l.movhi	r11, hi(0)
.L155:
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
	l.bf	.L159
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L159:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L160
	l.ori	r11, r0, 1
	l.addi	r4, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r4, r19
	l.bnf	.L166
	l.addi	r5, r3, -8232
.L160:
	l.jr	r9
	 l.nop

.L166:
	l.sfleu	r5, r11
	l.bf	.L160
	l.movhi	r6, hi(-65536)
	l.ori	r7, r6, 7
	l.add	r3, r3, r7
	l.ori	r8, r0, 2
	l.sfleu	r3, r8
	l.bf	.L160
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
	l.bf	.L168
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L168:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L178
	l.ori	r4, r0, 8231
	l.sfleu	r3, r4
	l.bf	.L174
	l.addi	r19, r3, -8234
	l.ori	r5, r0, 47061
	l.sfleu	r19, r5
	l.bf	.L174
	l.movhi	r6, hi(-65536)
	l.ori	r7, r6, 8192
	l.add	r8, r3, r7
	l.ori	r21, r0, 8184
	l.sfleu	r8, r21
	l.bf	.L174
	l.movhi	r12, hi(1048576)
	l.ori	r11, r6, 4
	l.add	r13, r3, r11
	l.ori	r15, r12, 3
	l.sfgtu	r13, r15
	l.bf	.L175
	l.andi	r3, r3, 65534
	l.ori	r23, r0, 65534
	l.sfne	r3, r23
	l.bnf	.L175
	l.ori	r11, r0, 1
.L169:
	l.jr	r9
	 l.nop

.L174:
	l.jr	r9
	l.ori	r11, r0, 1
.L178:
	l.addi	r25, r3, 1
	l.andi	r27, r25, 127
	l.ori	r29, r0, 32
	l.sfgtu	r27, r29
	l.bf	.L169
	l.ori	r11, r0, 1
.L175:
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
	l.bf	.L179
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r4, r3, -97
	l.ori	r5, r0, 5
	l.sfleu	r4, r5
	l.bnf	.L183
	 l.nop

.L179:
	l.jr	r9
	 l.nop

.L183:
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
	l.bf	.L188
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L189
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L194
	l.or	r5, r22, r22
	l.movhi	r17, ha(.LC0+4)
	l.movhi	r11, hi(0)
	l.lwz	r12, lo(.LC0+4)(r17)
.L185:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L194:
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
.L188:
	l.or	r11, r18, r18
	l.j	.L185
	l.or	r12, r16, r16
.L189:
	l.or	r11, r22, r22
	l.j	.L185
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
	l.bf	.L198
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L195
	l.or	r11, r18, r18
	lf.sfgt.s	r16, r18
	l.bf	.L204
	l.lwz	r20, 8(r1)
	l.movhi	r11, hi(0)
.L195:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L204:
	lf.sub.s	r11, r16, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L198:
	l.j	.L195
	l.or	r11, r16, r16
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
	l.bf	.L213
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L212
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r3, r16, r17
	l.sfeq	r19, r3
	l.bf	.L207
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L216
	l.or	r11, r22, r22
.L213:
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
.L207:
	l.or	r4, r18, r18
	l.or	r6, r20, r20
	l.jal	__ltdf2
	l.or	r3, r22, r22
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bf	.L208
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L215:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L212:
	l.or	r11, r22, r22
.L216:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L208:
	l.or	r16, r22, r22
	l.j	.L215
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
	l.bf	.L222
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L223
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r3, r17, r16
	l.sfeq	r19, r3
	l.bf	.L219
	l.sfne	r19, r20
	l.bf	.L222
	l.or	r11, r18, r18
.L217:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L219:
	lf.sflt.s	r18, r16
	l.bf	.L217
	l.or	r11, r16, r16
.L223:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L222:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
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
	l.bf	.L236
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L235
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r3, r16, r17
	l.sfeq	r19, r3
	l.bf	.L230
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L239
	l.or	r11, r22, r22
.L236:
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
.L230:
	l.or	r4, r18, r18
	l.or	r6, r20, r20
	l.jal	__ltdf2
	l.or	r3, r22, r22
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bf	.L231
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L238:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L235:
	l.or	r11, r22, r22
.L239:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L231:
	l.or	r16, r22, r22
	l.j	.L238
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
	l.bf	.L246
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L248
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r3, r20, r17
	l.sfeq	r19, r3
	l.bf	.L242
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L251
	l.or	r11, r16, r16
.L246:
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
.L242:
	l.or	r4, r18, r18
	l.or	r6, r22, r22
	l.jal	__ltdf2
	l.or	r3, r16, r16
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bf	.L250
	 l.nop

.L248:
	l.or	r11, r16, r16
.L251:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L250:
	l.or	r16, r20, r20
	l.j	.L248
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
	l.bf	.L257
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L258
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r3, r17, r16
	l.sfeq	r19, r3
	l.bf	.L254
	l.sfne	r19, r20
	l.bf	.L258
	l.or	r11, r16, r16
.L252:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L254:
	lf.sflt.s	r18, r16
	l.bf	.L252
	l.or	r11, r18, r18
.L257:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L258:
	l.or	r11, r18, r18
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
	l.bf	.L269
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L271
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r3, r20, r17
	l.sfeq	r19, r3
	l.bf	.L265
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L274
	l.or	r11, r16, r16
.L269:
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
.L265:
	l.or	r4, r18, r18
	l.or	r6, r22, r22
	l.jal	__ltdf2
	l.or	r3, r16, r16
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bf	.L273
	 l.nop

.L271:
	l.or	r11, r16, r16
.L274:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L273:
	l.or	r16, r20, r20
	l.j	.L271
	l.or	r18, r22, r22
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.movhi	r11, ha(.LANCHOR0)
	l.sfeq	r3, r17
	l.bf	.L278
	l.addi	r11, r11, lo(.LANCHOR0)
	l.movhi	r21, ha(.LANCHOR1)
	l.or	r19, r11, r11
	l.addi	r4, r21, lo(.LANCHOR1)
.L277:
	l.andi	r5, r3, 63
	l.add	r6, r4, r5
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.lbz	r7, 0(r6)
	l.movhi	r8, hi(0)
	l.sfne	r3, r8
	l.sb	0(r19), r7
	l.bf	.L277
	l.addi	r19, r19, 1
	l.jr	r9
	l.sb	0(r19), r0
.L278:
	l.or	r19, r11, r11
	l.jr	r9
	l.sb	0(r19), r0
	.size	l64a, .-l64a
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.movhi	r17, ha(.LANCHOR0)
	l.addi	r4, r17, lo(.LANCHOR0)
	l.addi	r3, r3, -1
	l.sw	12(r4), r3
	l.jr	r9
	l.sw	8(r4), r0
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.movhi	r5, hi(1481703424)
	l.movhi	r16, ha(.LANCHOR0)
	l.movhi	r6, hi(1284833280)
	l.addi	r16, r16, lo(.LANCHOR0)
	l.ori	r5, r5, 62509
	l.ori	r6, r6, 32557
	l.lwz	r3, 8(r16)
	l.sw	4(r1), r9
	l.jal	__muldi3
	l.lwz	r4, 12(r16)
	l.xori	r17, r0, -1
	l.sfgeu	r12, r17
	l.bf	.L282
	l.ori	r3, r0, 1
	l.movhi	r3, hi(0)
.L282:
	l.add	r11, r3, r11
	l.addi	r12, r12, 1
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.ori	r4, r0, 1
	l.srl	r11, r11, r4
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
	l.bnf	.L291
	l.movhi	r19, hi(0)
	l.lwz	r5, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r5
	l.sw	0(r4), r3
	l.lwz	r4, 0(r3)
	l.sfeq	r4, r19
	l.bf	.L285
	 l.nop

	l.sw	4(r4), r3
.L285:
	l.jr	r9
	 l.nop

.L291:
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
	l.bf	.L301
	l.movhi	r21, hi(0)
	l.lwz	r4, 4(r3)
	l.sw	4(r17), r4
.L301:
	l.lwz	r3, 4(r3)
	l.sfeq	r3, r21
	l.bf	.L292
	 l.nop

	l.sw	0(r3), r17
.L292:
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
	l.bf	.L303
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L305
	l.movhi	r18, hi(0)
.L318:
	l.sfne	r22, r18
	l.bnf	.L320
	l.addi	r4, r22, 1
.L305:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r3, hi(0)
	l.sfeq	r11, r3
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L318
	l.add	r16, r16, r20
.L302:
	l.or	r11, r14, r14
.L319:
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
.L303:
	l.addi	r4, r22, 1
.L320:
	l.movhi	r6, hi(0)
	l.mul	r5, r20, r22
	l.sw	0(r28), r4
	l.sfeq	r20, r6
	l.bf	.L302
	l.add	r14, r30, r5
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L319
	l.or	r11, r14, r14
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -32
	l.movhi	r17, hi(0)
	l.sw	24(r1), r28
	l.sw	0(r1), r16
	l.lwz	r28, 0(r5)
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sfeq	r28, r17
	l.bf	.L322
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L324
	l.movhi	r18, hi(0)
.L333:
	l.sfne	r28, r18
	l.bnf	.L321
	l.movhi	r26, hi(0)
.L324:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.movhi	r3, hi(0)
	l.sfeq	r11, r3
	l.or	r26, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L333
	l.add	r16, r16, r22
.L321:
	l.or	r11, r26, r26
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
.L322:
	l.j	.L321
	l.movhi	r26, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L335
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L335:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L343:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L337
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L337
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L338
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L355
	l.addi	r12, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r12, r8, -48
	l.ori	r11, r0, 9
	l.sfgtu	r12, r11
	l.bf	.L348
	l.addi	r3, r3, 1
	l.ori	r27, r0, 1
.L341:
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 9
	l.ori	r29, r0, 2
.L357:
	l.sll	r31, r15, r29
	l.add	r21, r31, r15
	l.lbs	r23, 1(r3)
	l.add	r4, r21, r21
	l.or	r17, r12, r12
	l.sub	r15, r4, r12
	l.addi	r12, r23, -48
	l.sfleu	r12, r25
	l.bf	.L357
	l.addi	r3, r3, 1
	l.movhi	r3, hi(0)
	l.sfne	r27, r3
	l.bf	.L336
	 l.nop

	l.sub	r15, r17, r4
.L336:
	l.jr	r9
	l.or	r11, r15, r15
.L337:
	l.j	.L343
	l.addi	r3, r3, 1
.L355:
	l.ori	r13, r0, 9
	l.sfleu	r12, r13
	l.bf	.L341
	l.movhi	r27, hi(0)
.L348:
	l.movhi	r15, hi(0)
.L356:
	l.jr	r9
	l.or	r11, r15, r15
.L338:
	l.lbs	r5, 1(r3)
	l.addi	r12, r5, -48
	l.ori	r6, r0, 9
	l.sfleu	r12, r6
	l.addi	r3, r3, 1
	l.bf	.L341
	l.movhi	r27, hi(0)
	l.j	.L356
	l.movhi	r15, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L363:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L359
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L359
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L360
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L377
	l.addi	r12, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r12, r8, -48
	l.ori	r11, r0, 9
	l.sfleu	r12, r11
	l.addi	r3, r3, 1
	l.bnf	.L370
	l.ori	r27, r0, 1
.L364:
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 9
	l.ori	r29, r0, 2
.L379:
	l.sll	r31, r15, r29
	l.add	r21, r31, r15
	l.lbs	r23, 1(r3)
	l.add	r4, r21, r21
	l.or	r17, r12, r12
	l.sub	r15, r4, r12
	l.addi	r12, r23, -48
	l.sfleu	r12, r25
	l.bf	.L379
	l.addi	r3, r3, 1
	l.movhi	r3, hi(0)
	l.sfne	r27, r3
	l.bf	.L358
	 l.nop

	l.sub	r15, r17, r4
.L358:
	l.jr	r9
	l.or	r11, r15, r15
.L359:
	l.j	.L363
	l.addi	r3, r3, 1
.L377:
	l.ori	r13, r0, 9
	l.sfleu	r12, r13
	l.bnf	.L378
	l.movhi	r15, hi(0)
.L371:
	l.j	.L364
	l.movhi	r27, hi(0)
.L360:
	l.lbs	r5, 1(r3)
	l.addi	r12, r5, -48
	l.ori	r6, r0, 9
	l.sfgtu	r12, r6
	l.bnf	.L371
	l.addi	r3, r3, 1
.L370:
	l.movhi	r15, hi(0)
.L378:
	l.jr	r9
	l.or	r11, r15, r15
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L387:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L381
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L381
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L382
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L403
	l.addi	r15, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r15, r8, -48
	l.ori	r11, r0, 9
	l.sfgtu	r15, r11
	l.bf	.L392
	l.addi	r3, r3, 1
	l.ori	r13, r0, 1
.L385:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.ori	r29, r0, 9
.L389:
	l.ori	r27, r0, 2
	l.sll	r31, r12, r27
	l.add	r21, r31, r12
	l.ori	r25, r0, 30
	l.srl	r19, r12, r25
	l.sll	r23, r11, r27
	l.sfltu	r21, r31
	l.or	r4, r19, r23
	l.add	r5, r21, r21
	l.bf	.L400
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L400:
	l.add	r6, r4, r11
	l.sfltu	r5, r21
	l.add	r7, r17, r6
	l.sub	r12, r5, r15
	l.bf	.L401
	l.ori	r8, r0, 1
	l.movhi	r8, hi(0)
.L401:
	l.add	r11, r7, r7
	l.ori	r27, r0, 31
	l.sfgtu	r12, r5
	l.sra	r25, r15, r27
	l.add	r23, r8, r11
	l.lbs	r19, 1(r3)
	l.or	r31, r15, r15
	l.bf	.L402
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L402:
	l.addi	r15, r19, -48
	l.sub	r4, r23, r25
	l.sfleu	r15, r29
	l.addi	r3, r3, 1
	l.bf	.L389
	l.sub	r11, r4, r21
	l.movhi	r3, hi(0)
	l.sfne	r13, r3
	l.bf	.L380
	 l.nop

	l.sub	r12, r31, r5
	l.sfgtu	r12, r31
	l.bf	.L399
	l.ori	r15, r0, 1
	l.movhi	r15, hi(0)
.L399:
	l.sub	r13, r25, r23
	l.sub	r11, r13, r15
.L380:
	l.jr	r9
	 l.nop

.L381:
	l.j	.L387
	l.addi	r3, r3, 1
.L403:
	l.ori	r12, r0, 9
	l.sfleu	r15, r12
	l.bf	.L385
	l.movhi	r13, hi(0)
.L392:
	l.movhi	r11, hi(0)
.L404:
	l.jr	r9
	l.movhi	r12, hi(0)
.L382:
	l.lbs	r5, 1(r3)
	l.addi	r15, r5, -48
	l.ori	r6, r0, 9
	l.sfleu	r15, r6
	l.addi	r3, r3, 1
	l.bf	.L385
	l.movhi	r13, hi(0)
	l.j	.L404
	l.movhi	r11, hi(0)
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
	l.bf	.L406
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.j	.L409
	l.or	r26, r7, r7
.L419:
	l.sfeq	r11, r4
	l.bf	.L405
	l.sub	r16, r16, r28
	l.movhi	r5, hi(0)
	l.sfne	r16, r5
	l.bnf	.L406
	l.add	r20, r18, r22
.L409:
	l.ori	r3, r0, 1
	l.srl	r28, r16, r3
	l.mul	r18, r28, r22
	l.add	r18, r20, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r4, hi(0)
	l.sflts	r11, r4
	l.bnf	.L419
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.movhi	r5, hi(0)
	l.sfne	r16, r5
	l.bf	.L409
	 l.nop

.L406:
	l.movhi	r18, hi(0)
.L405:
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
	l.sw	4(r1), r16
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r24
	l.sw	24(r1), r26
	l.sw	28(r1), r28
	l.sw	0(r1), r14
	l.sw	8(r1), r18
	l.sw	32(r1), r30
	l.sw	36(r1), r9
	l.sfne	r5, r17
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.bnf	.L425
	l.or	r28, r8, r8
.L433:
	l.ori	r14, r0, 1
.L436:
	l.sra	r30, r16, r14
	l.mul	r18, r30, r22
	l.add	r18, r20, r18
	l.or	r3, r24, r24
	l.or	r5, r28, r28
	l.jalr	r26
	l.or	r4, r18, r18
	l.movhi	r3, hi(0)
	l.addi	r16, r16, -1
	l.sfeq	r11, r3
	l.bf	.L420
	l.sra	r16, r16, r14
	l.sfles	r11, r3
	l.bf	.L423
	l.sfne	r16, r3
	l.bf	.L433
	l.add	r20, r18, r22
.L425:
	l.movhi	r18, hi(0)
.L420:
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
.L423:
	l.movhi	r4, hi(0)
	l.sfeq	r30, r4
	l.bf	.L425
	l.or	r16, r30, r30
	l.j	.L436
	l.ori	r14, r0, 1
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
	l.bf	.L439
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.ori	r11, r0, 1
	l.sub	r12, r0, r4
	l.bnf	.L442
	l.or	r4, r11, r11
	l.sub	r3, r0, r3
	l.sub	r11, r3, r4
.L439:
	l.jr	r9
	 l.nop

.L442:
	l.movhi	r4, hi(0)
	l.sub	r3, r0, r3
	l.j	.L439
	l.sub	r11, r3, r4
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
	l.bf	.L446
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L446:
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
	l.bf	.L449
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.ori	r11, r0, 1
	l.sub	r12, r0, r4
	l.bnf	.L452
	l.or	r4, r11, r11
	l.sub	r3, r0, r3
	l.sub	r11, r3, r4
.L449:
	l.jr	r9
	 l.nop

.L452:
	l.movhi	r4, hi(0)
	l.sub	r3, r0, r3
	l.j	.L449
	l.sub	r11, r3, r4
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
	l.bf	.L464
	l.sfne	r4, r17
	l.j	.L463
	l.movhi	r11, hi(0)
.L458:
	l.lwz	r17, 4(r3)
	l.sfeq	r17, r5
	l.bf	.L459
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L464:
	l.bf	.L458
	l.movhi	r5, hi(0)
	l.jr	r9
	l.or	r11, r3, r3
.L459:
	l.movhi	r11, hi(0)
.L463:
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
	l.bf	.L476
	l.movhi	r21, hi(0)
	l.j	.L475
	l.sfltu	r17, r19
.L468:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L467
	l.movhi	r21, hi(0)
.L476:
	l.sfne	r17, r21
	l.addi	r3, r3, 4
	l.bf	.L468
	l.addi	r4, r4, 4
.L467:
	l.sfltu	r17, r19
.L475:
	l.bf	.L465
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.bnf	.L474
	l.ori	r11, r0, 1
.L465:
	l.jr	r9
	 l.nop

.L474:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L478:
	l.addi	r17, r17, 4
	l.movhi	r21, hi(0)
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfne	r19, r21
	l.bf	.L478
	l.addi	r4, r4, 4
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.movhi	r17, hi(0)
	l.lwz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L480
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L487:
	l.lwz	r4, 4(r11)
	l.sfne	r4, r19
	l.bf	.L487
	l.addi	r11, r11, 4
	l.sub	r3, r11, r3
	l.ori	r5, r0, 2
	l.sra	r11, r3, r5
.L480:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L489
	l.movhi	r11, hi(0)
	l.j	.L502
	 l.nop

.L500:
	l.movhi	r7, hi(0)
	l.sfne	r6, r7
	l.bnf	.L491
	l.movhi	r8, hi(0)
	l.sfeq	r5, r8
	l.addi	r3, r3, 4
	l.bf	.L494
	l.addi	r4, r4, 4
.L489:
	l.lwz	r6, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r6, r19
	l.bnf	.L500
	l.addi	r5, r5, -1
.L491:
	l.lwz	r3, 0(r3)
	l.lwz	r4, 0(r4)
	l.sfgeu	r3, r4
	l.bnf	.L501
	l.sfgtu	r3, r4
	l.bnf	.L494
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L501:
	l.jr	r9
	l.xori	r11, r0, -1
.L494:
	l.movhi	r11, hi(0)
.L502:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L504
	l.movhi	r11, hi(0)
	l.j	.L511
	 l.nop

.L506:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L507
	l.addi	r3, r3, 4
.L504:
	l.lwz	r6, 0(r3)
	l.sfne	r6, r4
	l.bf	.L506
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L507:
	l.movhi	r11, hi(0)
.L511:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L513
	l.movhi	r11, hi(0)
	l.j	.L527
	 l.nop

.L515:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L527
	l.movhi	r11, hi(0)
.L513:
	l.lwz	r19, 0(r3)
	l.lwz	r6, 0(r4)
	l.sfeq	r19, r6
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L515
	l.addi	r4, r4, 4
	l.sfgeu	r19, r6
	l.bnf	.L526
	l.sfgtu	r19, r6
	l.bnf	.L518
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L518:
	l.movhi	r11, hi(0)
.L527:
	l.jr	r9
	 l.nop

.L526:
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
	l.bf	.L529
	l.or	r16, r3, r3
	l.ori	r6, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r6
.L529:
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
	l.sfne	r3, r4
	l.bnf	.L542
	l.or	r11, r3, r3
	l.ori	r19, r0, 2
	l.sub	r21, r3, r4
	l.sll	r3, r5, r19
	l.sfltu	r21, r3
	l.addi	r17, r5, -1
	l.bnf	.L549
	l.movhi	r6, hi(0)
	l.sfeq	r5, r6
	l.bf	.L542
	l.ori	r8, r0, 2
	l.sll	r12, r17, r8
	l.add	r27, r4, r12
	l.add	r25, r11, r12
.L539:
	l.addi	r25, r25, -4
	l.lwz	r15, 0(r27)
	l.sfne	r4, r27
	l.sw	4(r25), r15
	l.bf	.L539
	l.addi	r27, r27, -4
.L542:
	l.jr	r9
	 l.nop

.L549:
	l.sfne	r5, r6
	l.xori	r23, r0, -1
	l.bnf	.L542
	l.or	r5, r11, r11
.L537:
	l.addi	r5, r5, 4
	l.addi	r17, r17, -1
	l.lwz	r7, 0(r4)
	l.sfne	r17, r23
	l.sw	-4(r5), r7
	l.bf	.L537
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
	l.bf	.L551
	l.addi	r17, r5, -1
	l.xori	r21, r0, -1
.L552:
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.sw	0(r3), r4
	l.bf	.L552
	l.addi	r3, r3, 4
.L551:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L558
	l.sfeq	r3, r4
	l.movhi	r11, hi(0)
	l.sfeq	r5, r11
	l.add	r12, r3, r5
	l.bf	.L557
	l.add	r21, r4, r5
.L560:
	l.addi	r12, r12, -1
	l.addi	r21, r21, -1
	l.lbs	r23, 0(r12)
	l.sfne	r3, r12
	l.bf	.L560
	l.sb	0(r21), r23
.L557:
	l.jr	r9
	 l.nop

.L558:
	l.bf	.L557
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L557
	l.addi	r6, r5, -1
	l.ori	r19, r0, 6
	l.sfleu	r6, r19
	l.bf	.L561
	l.addi	r8, r3, 1
	l.or	r7, r4, r3
	l.andi	r8, r7, 3
	l.movhi	r11, hi(0)
	l.sfne	r8, r11
	l.bf	.L561
	l.addi	r8, r3, 1
	l.sub	r12, r4, r8
	l.ori	r21, r0, 2
	l.sfleu	r12, r21
	l.bf	.L561
	l.srl	r23, r5, r21
	l.sll	r13, r23, r21
	l.or	r27, r4, r4
	l.add	r15, r3, r13
.L562:
	l.lwz	r25, 0(r3)
	l.addi	r3, r3, 4
	l.sw	0(r27), r25
	l.sfne	r15, r3
	l.bf	.L562
	l.addi	r27, r27, 4
	l.sfeq	r5, r13
	l.add	r4, r4, r13
	l.bf	.L557
	l.sub	r3, r5, r13
	l.lbs	r5, 0(r15)
	l.ori	r29, r0, 1
	l.sfeq	r3, r29
	l.bf	.L557
	l.sb	0(r4), r5
	l.lbs	r31, 1(r15)
	l.ori	r17, r0, 2
	l.sfeq	r3, r17
	l.bf	.L557
	l.sb	1(r4), r31
	l.lbs	r6, 2(r15)
	l.jr	r9
	l.sb	2(r4), r6
.L561:
	l.j	.L565
	l.add	r7, r3, r5
.L585:
	l.addi	r8, r8, 1
.L565:
	l.lbs	r19, -1(r8)
	l.sfne	r8, r7
	l.sb	0(r4), r19
	l.bf	.L585
	l.addi	r4, r4, 1
	l.jr	r9
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.ori	r19, r0, 31
	l.ori	r17, r0, 1
	l.addi	r21, r5, -32
	l.srl	r6, r4, r17
	l.sub	r23, r19, r5
	l.movhi	r25, hi(0)
	l.srl	r7, r6, r23
	l.sll	r8, r3, r5
	l.sfges	r21, r25
	l.sll	r11, r4, r21
	l.or	r12, r7, r8
	l.bf	.L587
	l.sll	r13, r4, r5
	l.or	r11, r12, r12
.L587:
	l.bf	.L588
	l.movhi	r15, hi(0)
	l.or	r15, r13, r13
.L588:
	l.sub	r5, r0, r5
	l.andi	r27, r5, 63
	l.ori	r31, r0, 1
	l.addi	r29, r27, -32
	l.sll	r21, r3, r31
	l.sub	r19, r19, r27
	l.movhi	r6, hi(0)
	l.sll	r17, r21, r19
	l.srl	r4, r4, r27
	l.sfges	r29, r6
	l.srl	r7, r3, r29
	l.or	r23, r17, r4
	l.bf	.L589
	l.srl	r3, r3, r27
	l.or	r7, r23, r23
.L589:
	l.bf	.L590
	l.movhi	r8, hi(0)
	l.or	r8, r3, r3
.L590:
	l.or	r11, r8, r11
	l.jr	r9
	l.or	r12, r7, r15
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.ori	r19, r0, 31
	l.ori	r17, r0, 1
	l.addi	r21, r5, -32
	l.sll	r6, r3, r17
	l.sub	r23, r19, r5
	l.movhi	r25, hi(0)
	l.sll	r7, r6, r23
	l.srl	r8, r4, r5
	l.sfges	r21, r25
	l.srl	r12, r3, r21
	l.or	r11, r7, r8
	l.bf	.L592
	l.srl	r13, r3, r5
	l.or	r12, r11, r11
.L592:
	l.bf	.L593
	l.movhi	r15, hi(0)
	l.or	r15, r13, r13
.L593:
	l.sub	r5, r0, r5
	l.andi	r27, r5, 63
	l.ori	r31, r0, 1
	l.addi	r29, r27, -32
	l.srl	r21, r4, r31
	l.sub	r19, r19, r27
	l.movhi	r6, hi(0)
	l.srl	r17, r21, r19
	l.sll	r3, r3, r27
	l.sfges	r29, r6
	l.sll	r7, r4, r29
	l.or	r23, r17, r3
	l.bf	.L594
	l.sll	r4, r4, r27
	l.or	r7, r23, r23
.L594:
	l.bf	.L595
	l.movhi	r8, hi(0)
	l.or	r8, r4, r4
.L595:
	l.or	r11, r7, r15
	l.jr	r9
	l.or	r12, r8, r12
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	l.sub	r17, r0, r4
	l.andi	r5, r17, 31
	l.sll	r4, r3, r4
	l.srl	r3, r3, r5
	l.jr	r9
	l.or	r11, r3, r4
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	l.sub	r17, r0, r4
	l.andi	r5, r17, 31
	l.srl	r4, r3, r4
	l.sll	r3, r3, r5
	l.jr	r9
	l.or	r11, r3, r4
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	l.sub	r17, r0, r4
	l.andi	r5, r17, 31
	l.sll	r4, r3, r4
	l.srl	r3, r3, r5
	l.jr	r9
	l.or	r11, r3, r4
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	l.sub	r17, r0, r4
	l.andi	r5, r17, 31
	l.srl	r4, r3, r4
	l.sll	r3, r3, r5
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
	l.andi	r5, r17, 15
	l.sll	r6, r3, r4
	l.srl	r11, r3, r5
	l.jr	r9
	l.or	r11, r6, r11
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.andi	r4, r4, 15
	l.sub	r17, r0, r4
	l.andi	r3, r3, 0xffff
	l.andi	r5, r17, 15
	l.srl	r6, r3, r4
	l.sll	r11, r3, r5
	l.jr	r9
	l.or	r11, r6, r11
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.andi	r4, r4, 7
	l.sub	r17, r0, r4
	l.andi	r3, r3, 0xff
	l.andi	r5, r17, 7
	l.sll	r6, r3, r4
	l.srl	r11, r3, r5
	l.jr	r9
	l.or	r11, r6, r11
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.andi	r4, r4, 7
	l.sub	r17, r0, r4
	l.andi	r3, r3, 0xff
	l.andi	r5, r17, 7
	l.srl	r6, r3, r4
	l.sll	r11, r3, r5
	l.jr	r9
	l.or	r11, r6, r11
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.andi	r3, r3, 0xffff
	l.ori	r17, r0, 8
	l.srl	r11, r3, r17
	l.sll	r4, r3, r17
	l.jr	r9
	l.or	r11, r11, r4
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.ori	r17, r0, 24
	l.ori	r21, r0, 8
	l.sll	r11, r3, r17
	l.srl	r19, r3, r17
	l.srl	r4, r3, r21
	l.or	r5, r11, r19
	l.andi	r6, r4, 65280
	l.sll	r3, r3, r21
	l.movhi	r7, hi(16711680)
	l.or	r8, r5, r6
	l.and	r12, r3, r7
	l.jr	r9
	l.or	r11, r8, r12
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.ori	r21, r0, 8
	l.ori	r29, r0, 24
	l.sll	r17, r3, r21
	l.srl	r19, r4, r29
	l.or	r5, r17, r19
	l.srl	r7, r3, r21
	l.sll	r11, r4, r29
	l.srl	r12, r3, r29
	l.srl	r13, r4, r21
	l.movhi	r23, hi(16711680)
	l.andi	r25, r5, 255
	l.andi	r8, r7, 65280
	l.or	r15, r12, r8
	l.and	r31, r5, r23
	l.sll	r4, r4, r21
	l.andi	r17, r13, 65280
	l.or	r21, r11, r25
	l.sll	r3, r3, r29
	l.or	r19, r15, r31
	l.or	r29, r21, r17
	l.and	r5, r4, r23
	l.or	r11, r29, r5
	l.jr	r9
	l.or	r12, r19, r3
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.movhi	r11, hi(0)
	l.j	.L610
	l.ori	r19, r0, 32
.L613:
	l.sfne	r11, r19
	l.bnf	.L612
	 l.nop

.L610:
	l.srl	r17, r3, r11
	l.andi	r4, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r4, r21
	l.bf	.L613
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L612:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L617
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L614
	l.ori	r4, r0, 1
	l.ori	r11, r0, 1
.L620:
	l.sra	r3, r3, r4
	l.and	r5, r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L620
	l.addi	r11, r11, 1
.L614:
	l.jr	r9
	 l.nop

.L617:
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
	l.movhi	r17, ha(.LC2)
	l.lwz	r4, lo(.LC2)(r17)
	lf.sflt.s	r3, r4
	l.bf	.L621
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC3)
	l.lwz	r6, lo(.LC3)(r5)
	lf.sfgt.s	r3, r6
	l.bnf	.L625
	 l.nop

.L621:
	l.jr	r9
	 l.nop

.L625:
	l.jr	r9
	l.movhi	r11, hi(0)
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
	l.bf	.L626
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC5)
	l.addi	r6, r5, lo(.LC5)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC5)(r5)
	l.jal	__gtdf2
	l.lwz	r6, 4(r6)
	l.sfgts	r11, r20
	l.bnf	.L632
	l.ori	r11, r0, 1
.L626:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L632:
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
	l.bf	.L633
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC7)
	l.addi	r6, r5, lo(.LC7)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC7)(r5)
	l.jal	__gtdf2
	l.lwz	r6, 4(r6)
	l.sfgts	r11, r20
	l.bnf	.L639
	l.ori	r11, r0, 1
.L633:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L639:
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
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.or	r16, r4, r4
	l.or	r4, r3, r3
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.jal	__unordsf2
	l.or	r18, r3, r3
	l.movhi	r19, hi(0)
	l.sfne	r11, r19
	l.bf	.L643
	 l.nop

	lf.add.s	r17, r18, r18
	lf.sfeq.s	r17, r18
	l.bf	.L643
	l.sfges	r16, r19
	l.bf	.L644
	l.movhi	r9, hi(1073741824)
	l.movhi	r9, hi(1056964608)
.L644:
	l.andi	r3, r16, 1
	l.movhi	r21, hi(0)
	l.sfeq	r3, r21
	l.bf	.L658
	l.ori	r4, r0, 31
.L646:
	lf.mul.s	r18, r18, r9
	l.ori	r4, r0, 31
.L658:
	l.srl	r5, r16, r4
	l.add	r16, r5, r16
	l.ori	r6, r0, 1
	l.sra	r16, r16, r6
	l.movhi	r7, hi(0)
	l.sfeq	r16, r7
	l.bf	.L643
	l.andi	r8, r16, 1
	l.movhi	r11, hi(0)
	l.ori	r12, r0, 31
	l.srl	r13, r16, r12
	l.sfne	r8, r11
	lf.mul.s	r9, r9, r9
	l.bf	.L646
	l.add	r15, r13, r16
	l.ori	r23, r0, 1
	l.sra	r16, r15, r23
.L657:
	l.andi	r8, r16, 1
	l.movhi	r11, hi(0)
	l.ori	r12, r0, 31
	l.srl	r13, r16, r12
	l.sfne	r8, r11
	lf.mul.s	r9, r9, r9
	l.bf	.L646
	l.add	r15, r13, r16
	l.j	.L657
	l.sra	r16, r15, r23
.L643:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
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
	l.bf	.L660
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
	l.bnf	.L660
	l.sfges	r16, r22
	l.bnf	.L675
	l.movhi	r17, ha(.LC10+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC10+4)(r17)
.L662:
	l.andi	r4, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r4, r19
	l.bf	.L676
	l.ori	r7, r0, 31
.L664:
	l.or	r3, r20, r20
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.lwz	r6, 0(r1)
	l.ori	r7, r0, 31
.L676:
	l.srl	r8, r16, r7
	l.add	r16, r8, r16
	l.ori	r9, r0, 1
	l.sra	r16, r16, r9
	l.movhi	r11, hi(0)
	l.sfeq	r16, r11
	l.bf	.L677
	l.or	r11, r20, r20
.L665:
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.andi	r13, r16, 1
	l.or	r6, r12, r12
	l.ori	r15, r0, 31
	l.movhi	r12, hi(0)
	l.srl	r21, r16, r15
	l.sfne	r13, r12
	l.or	r5, r11, r11
	l.bf	.L664
	l.add	r23, r21, r16
	l.ori	r25, r0, 1
	l.j	.L665
	l.sra	r16, r23, r25
.L660:
	l.or	r11, r20, r20
.L677:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L675:
	l.movhi	r3, ha(.LC11+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L662
	l.lwz	r6, lo(.LC11+4)(r3)
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
	l.bf	.L679
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
	l.bnf	.L679
	l.sfges	r16, r22
	l.bnf	.L694
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC13+4)(r17)
.L681:
	l.andi	r4, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r4, r19
	l.bf	.L695
	l.ori	r7, r0, 31
.L683:
	l.or	r3, r20, r20
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.lwz	r5, 4(r1)
	l.lwz	r6, 0(r1)
	l.ori	r7, r0, 31
.L695:
	l.srl	r8, r16, r7
	l.add	r16, r8, r16
	l.ori	r9, r0, 1
	l.sra	r16, r16, r9
	l.movhi	r11, hi(0)
	l.sfeq	r16, r11
	l.bf	.L696
	l.or	r11, r20, r20
.L684:
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.andi	r13, r16, 1
	l.or	r6, r12, r12
	l.ori	r15, r0, 31
	l.movhi	r12, hi(0)
	l.srl	r21, r16, r15
	l.sfne	r13, r12
	l.or	r5, r11, r11
	l.bf	.L683
	l.add	r23, r21, r16
	l.ori	r25, r0, 1
	l.j	.L684
	l.sra	r16, r23, r25
.L679:
	l.or	r11, r20, r20
.L696:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L694:
	l.movhi	r3, ha(.LC12+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L681
	l.lwz	r6, lo(.LC12+4)(r3)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L698
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.ori	r21, r0, 3
	l.sfleu	r17, r21
	l.bf	.L699
	l.or	r3, r3, r4
	l.and	r6, r3, r21
	l.sfne	r6, r19
	l.bf	.L699
	l.ori	r7, r0, 2
	l.srl	r25, r5, r7
	l.sll	r8, r25, r7
	l.or	r27, r11, r11
	l.add	r23, r4, r8
.L700:
	l.lwz	r12, 0(r27)
	l.lwz	r13, 0(r4)
	l.addi	r4, r4, 4
	l.xor	r15, r13, r12
	l.sw	0(r27), r15
	l.sfne	r23, r4
	l.bf	.L700
	l.addi	r27, r27, 4
	l.sfeq	r5, r8
	l.add	r4, r11, r8
	l.bf	.L698
	l.sub	r29, r5, r8
	l.lbz	r5, 0(r4)
	l.lbz	r31, 0(r23)
	l.xor	r19, r5, r31
	l.ori	r17, r0, 1
	l.sfeq	r29, r17
	l.bf	.L698
	l.sb	0(r4), r19
	l.lbz	r21, 1(r4)
	l.lbz	r3, 1(r23)
	l.xor	r6, r3, r21
	l.ori	r7, r0, 2
	l.sfeq	r29, r7
	l.bf	.L698
	l.sb	1(r4), r6
	l.lbz	r25, 2(r4)
	l.lbz	r8, 2(r23)
	l.xor	r23, r8, r25
	l.sb	2(r4), r23
.L698:
	l.jr	r9
	 l.nop

.L699:
	l.add	r12, r4, r5
	l.or	r29, r11, r11
.L702:
	l.lbz	r13, 0(r29)
	l.lbz	r15, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r27, r15, r13
	l.sfne	r12, r4
	l.sb	0(r29), r27
	l.bf	.L702
	l.addi	r29, r29, 1
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
	l.bf	.L710
	l.or	r12, r3, r3
.L711:
	l.lbs	r3, 1(r12)
	l.movhi	r21, hi(0)
	l.sfne	r3, r21
	l.bf	.L711
	l.addi	r12, r12, 1
.L710:
	l.movhi	r6, hi(0)
	l.sfne	r5, r6
	l.bf	.L712
	 l.nop

	l.j	.L723
	l.sb	0(r12), r0
.L714:
	l.movhi	r13, hi(0)
	l.sfeq	r5, r13
	l.bf	.L713
	 l.nop

.L712:
	l.lbs	r7, 0(r4)
	l.movhi	r8, hi(0)
	l.sb	0(r12), r7
	l.sfne	r7, r8
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L714
	l.addi	r12, r12, 1
	l.jr	r9
	 l.nop

.L713:
	l.sb	0(r12), r0
.L723:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L724
	l.movhi	r11, hi(0)
	l.add	r5, r3, r11
.L733:
	l.lbs	r6, 0(r5)
	l.movhi	r19, hi(0)
	l.sfne	r6, r19
	l.bf	.L727
	 l.nop

.L724:
	l.jr	r9
	 l.nop

.L727:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L733
	l.add	r5, r3, r11
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
	l.bnf	.L739
	l.or	r11, r3, r3
.L735:
	l.j	.L738
	l.or	r3, r4, r4
.L737:
	l.sfeq	r19, r21
	l.bf	.L736
	 l.nop

.L738:
	l.lbs	r19, 0(r3)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L737
	l.addi	r3, r3, 1
	l.lbs	r21, 1(r11)
	l.movhi	r5, hi(0)
	l.sfeq	r21, r5
	l.bnf	.L735
	l.addi	r11, r11, 1
.L739:
	l.movhi	r11, hi(0)
.L736:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L744:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.bnf	.L747
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L747:
	l.sfne	r17, r19
	l.bf	.L744
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
	l.bf	.L759
	l.or	r5, r4, r4
.L750:
	l.lbs	r19, 1(r5)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L750
	l.addi	r5, r5, 1
	l.sfeq	r5, r4
	l.bf	.L759
	l.sub	r29, r5, r4
	l.andi	r31, r25, 0xff
	l.j	.L768
	l.addi	r11, r29, -1
.L770:
	l.sfne	r6, r7
	l.bnf	.L769
	l.addi	r3, r3, 1
.L768:
	l.lbs	r6, 0(r3)
	l.sfeq	r6, r25
	l.bnf	.L770
	l.movhi	r7, hi(0)
	l.or	r12, r31, r31
	l.add	r27, r3, r11
	l.or	r15, r4, r4
	l.j	.L752
	l.or	r8, r3, r3
.L771:
	l.bf	.L753
	l.addi	r8, r8, 1
	l.sfeq	r23, r12
	l.bnf	.L753
	l.movhi	r17, hi(0)
	l.lbz	r12, 0(r8)
	l.sfeq	r12, r17
	l.bf	.L753
	l.addi	r15, r15, 1
.L752:
	l.lbz	r23, 0(r15)
	l.movhi	r13, hi(0)
	l.sfeq	r23, r13
	l.bnf	.L771
	l.sfeq	r8, r27
.L753:
	l.lbz	r19, 0(r15)
	l.sfeq	r19, r12
	l.bf	.L759
	 l.nop

	l.j	.L768
	l.addi	r3, r3, 1
.L769:
	l.jr	r9
	l.movhi	r11, hi(0)
.L759:
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
	l.bf	.L783
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L776
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L784
	l.movhi	r17, hi(-2147483648)
.L776:
	l.or	r11, r16, r16
.L785:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L783:
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L785
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L784:
	l.j	.L776
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L786
	l.or	r11, r3, r3
	l.sfltu	r4, r6
	l.bf	.L797
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L797
	l.addi	r6, r6, -1
	l.lbs	r31, 0(r5)
	l.j	.L792
	l.addi	r5, r5, 1
.L796:
	l.or	r11, r27, r27
.L788:
	l.sfgeu	r25, r11
	l.bnf	.L797
	 l.nop

.L792:
	l.lbs	r3, 0(r11)
	l.sfne	r3, r31
	l.bf	.L796
	l.addi	r27, r11, 1
	l.movhi	r7, hi(0)
	l.sfeq	r6, r7
	l.bf	.L786
	l.or	r19, r5, r5
.L791:
	l.or	r8, r27, r27
	l.j	.L789
	l.add	r29, r27, r6
.L790:
	l.sfeq	r8, r29
	l.bf	.L786
	 l.nop

.L789:
	l.lbz	r23, 0(r8)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r8, r8, 1
	l.bf	.L790
	l.addi	r19, r19, 1
	l.sfgtu	r27, r25
	l.bf	.L797
	 l.nop

	l.lbs	r12, 0(r27)
	l.sfne	r12, r31
	l.bf	.L788
	l.addi	r11, r27, 1
	l.or	r13, r27, r27
	l.or	r19, r5, r5
	l.or	r27, r11, r11
	l.j	.L791
	l.or	r11, r13, r13
.L797:
	l.movhi	r11, hi(0)
.L786:
	l.jr	r9
	 l.nop

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
	l.bf	.L803
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L803:
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
	l.bf	.L831
	l.movhi	r3, ha(.LC18)
	l.addi	r24, r3, lo(.LC18)
	l.movhi	r5, hi(1072693248)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.jal	__gedf2
	l.lwz	r6, 4(r24)
	l.sfges	r11, r20
	l.bnf	.L832
	l.movhi	r14, hi(0)
.L811:
	l.movhi	r9, ha(.LC19)
	l.addi	r11, r9, lo(.LC19)
	l.movhi	r20, hi(0)
	l.lwz	r26, 0(r24)
	l.lwz	r28, lo(.LC19)(r9)
	l.lwz	r24, 4(r24)
	l.lwz	r22, 4(r11)
.L817:
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.or	r5, r28, r28
	l.jal	__muldf3
	l.or	r6, r22, r22
	l.or	r16, r11, r11
	l.or	r4, r12, r12
	l.or	r5, r26, r26
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r18, r12, r12
	l.movhi	r12, hi(0)
	l.sfges	r11, r12
	l.bf	.L817
	l.addi	r20, r20, 1
	l.movhi	r13, hi(0)
.L834:
	l.sfeq	r14, r13
	l.bf	.L824
	l.sw	0(r30), r20
	l.movhi	r15, hi(-2147483648)
	l.xor	r11, r16, r15
.L808:
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
.L832:
	l.movhi	r4, ha(.LC19)
	l.addi	r26, r4, lo(.LC19)
	l.movhi	r5, hi(1071644672)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	l.lwz	r6, 4(r26)
	l.sflts	r11, r20
	l.bnf	.L814
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bf	.L823
	l.or	r28, r16, r16
.L814:
	l.sw	0(r30), r0
	l.j	.L808
	l.or	r11, r16, r16
.L831:
	l.movhi	r19, hi(-2147483648)
	l.movhi	r17, ha(.LC16+4)
	l.movhi	r5, hi(-1074790400)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.xor	r28, r16, r19
	l.jal	__ledf2
	l.lwz	r6, lo(.LC16+4)(r17)
	l.sfles	r11, r22
	l.bnf	.L833
	l.movhi	r8, ha(.LC18)
	l.or	r16, r28, r28
	l.ori	r14, r0, 1
	l.j	.L811
	l.addi	r24, r8, lo(.LC18)
.L824:
	l.j	.L808
	l.or	r11, r16, r16
.L833:
	l.movhi	r6, ha(.LC17+4)
	l.movhi	r5, hi(-1075838976)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	l.lwz	r6, lo(.LC17+4)(r6)
	l.sfgts	r11, r22
	l.bnf	.L814
	l.movhi	r5, ha(.LC19)
	l.ori	r14, r0, 1
	l.addi	r26, r5, lo(.LC19)
.L812:
	l.or	r16, r28, r28
	l.movhi	r20, hi(0)
	l.lwz	r24, 0(r26)
	l.lwz	r22, 4(r26)
.L819:
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
	l.movhi	r7, hi(0)
	l.sflts	r11, r7
	l.bf	.L819
	l.addi	r20, r20, -1
	l.j	.L834
	l.movhi	r13, hi(0)
.L823:
	l.j	.L812
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
	l.bf	.L835
	l.movhi	r12, hi(0)
.L838:
	l.andi	r7, r4, 1
	l.sub	r8, r0, r7
	l.and	r13, r8, r6
	l.add	r15, r12, r13
	l.sfltu	r15, r12
	l.ori	r23, r0, 31
	l.sub	r25, r0, r7
	l.ori	r27, r0, 1
	l.add	r21, r6, r6
	l.sll	r12, r3, r23
	l.srl	r4, r4, r27
	l.and	r29, r25, r5
	l.bf	.L841
	l.ori	r31, r0, 1
	l.movhi	r31, hi(0)
.L841:
	l.sfltu	r21, r6
	l.srl	r3, r3, r27
	l.or	r4, r12, r4
	l.add	r11, r11, r29
	l.bf	.L842
	l.ori	r6, r0, 1
	l.movhi	r6, hi(0)
.L842:
	l.or	r17, r3, r4
	l.movhi	r19, hi(0)
	l.add	r5, r5, r5
	l.sfne	r17, r19
	l.add	r5, r6, r5
	l.add	r11, r31, r11
	l.or	r12, r15, r15
	l.bf	.L838
	l.or	r6, r21, r21
.L835:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bf	.L844
	l.ori	r12, r0, 1
	l.j	.L867
	l.sfleu	r4, r3
.L848:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r12, r12, r12
	l.bf	.L846
	l.movhi	r6, hi(0)
	l.sfeq	r11, r6
	l.bf	.L847
	 l.nop

.L844:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L848
	l.addi	r11, r11, -1
.L849:
	l.movhi	r11, hi(0)
.L850:
	l.sfgeu	r3, r4
	l.ori	r21, r0, 1
	l.sub	r7, r3, r4
	l.bnf	.L864
	l.srl	r4, r4, r21
	l.or	r3, r7, r7
.L864:
	l.ori	r8, r0, 1
	l.or	r13, r12, r12
	l.bf	.L865
	l.srl	r12, r12, r8
	l.movhi	r13, hi(0)
.L865:
	l.movhi	r15, hi(0)
	l.sfne	r12, r15
	l.bf	.L850
	l.or	r11, r11, r13
.L847:
	l.movhi	r4, hi(0)
.L869:
	l.sfne	r5, r4
	l.bnf	.L861
	 l.nop

	l.or	r11, r3, r3
.L861:
	l.jr	r9
	 l.nop

.L846:
	l.sfeq	r12, r6
	l.bnf	.L849
	l.movhi	r11, hi(0)
	l.j	.L869
	l.movhi	r4, hi(0)
.L867:
	l.bnf	.L862
	l.sub	r17, r3, r4
	l.or	r3, r17, r17
.L862:
	l.bf	.L847
	l.ori	r11, r0, 1
	l.j	.L847
	l.movhi	r11, hi(0)
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.ori	r19, r0, 24
	l.sll	r17, r3, r19
	l.ori	r21, r0, 31
	l.sra	r4, r17, r19
	l.sra	r5, r17, r21
	l.sfeq	r4, r5
	l.bf	.L872
	l.xor	r3, r4, r5
	l.ori	r6, r0, 8
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzsi2
	l.sll	r3, r3, r6
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L872:
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
	l.or	r5, r4, r4
	l.xor	r3, r3, r21
	l.bnf	.L886
	l.xor	r4, r4, r21
.L881:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L886:
	l.sfne	r5, r17
	l.bf	.L881
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
	l.bf	.L887
	l.movhi	r11, hi(0)
.L889:
	l.andi	r5, r3, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r3, r3, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r4
	l.sfne	r3, r8
	l.add	r11, r11, r7
	l.bf	.L889
	l.add	r4, r4, r4
.L887:
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.xori	r27, r0, -8
	l.ori	r17, r0, 3
	l.sfgeu	r3, r4
	l.srl	r25, r5, r17
	l.bnf	.L896
	l.and	r6, r5, r27
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L926
	l.movhi	r8, hi(0)
.L896:
	l.movhi	r13, hi(0)
	l.sfne	r25, r13
	l.bnf	.L927
	l.ori	r23, r0, 3
	l.sll	r29, r25, r23
	l.or	r17, r4, r4
	l.or	r7, r3, r3
	l.add	r31, r29, r4
.L899:
	l.lwz	r27, 0(r17)
	l.lwz	r25, 4(r17)
	l.addi	r17, r17, 8
	l.sw	0(r7), r27
	l.sw	4(r7), r25
	l.sfne	r17, r31
	l.bf	.L899
	l.addi	r7, r7, 8
	l.sfleu	r5, r6
	l.bf	.L892
	 l.nop

	l.sub	r8, r5, r6
	l.addi	r21, r8, -1
	l.ori	r19, r0, 6
	l.sfleu	r21, r19
	l.bf	.L925
	l.addi	r11, r6, 1
	l.add	r19, r3, r6
	l.add	r12, r4, r11
	l.sub	r13, r19, r12
	l.ori	r15, r0, 2
	l.sfleu	r13, r15
	l.bf	.L901
	l.add	r17, r4, r6
	l.or	r23, r17, r19
	l.andi	r29, r23, 3
	l.movhi	r31, hi(0)
	l.sfne	r29, r31
	l.bf	.L901
	l.srl	r27, r8, r15
	l.sll	r25, r27, r15
	l.add	r7, r17, r25
.L902:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r7
	l.bf	.L902
	l.addi	r19, r19, 4
	l.sfeq	r8, r25
	l.bf	.L892
	l.add	r6, r6, r25
	l.add	r17, r4, r6
	l.lbs	r8, 0(r17)
	l.add	r19, r3, r6
	l.addi	r11, r6, 1
	l.sfleu	r5, r11
	l.bf	.L892
	l.sb	0(r19), r8
	l.add	r12, r4, r11
	l.lbs	r13, 0(r12)
	l.add	r15, r3, r11
	l.addi	r23, r6, 2
	l.sfleu	r5, r23
	l.bf	.L892
	l.sb	0(r15), r13
	l.add	r4, r4, r23
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r23
	l.sb	0(r3), r5
.L892:
	l.jr	r9
	 l.nop

.L926:
	l.sfne	r5, r8
	l.xori	r21, r0, -1
	l.bnf	.L892
	l.addi	r5, r5, -1
.L897:
	l.add	r19, r4, r5
	l.add	r11, r3, r5
	l.lbs	r12, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L897
	l.sb	0(r11), r12
	l.jr	r9
	 l.nop

.L927:
	l.movhi	r15, hi(0)
	l.sfne	r5, r15
	l.bnf	.L892
	 l.nop

.L925:
	l.add	r19, r3, r6
	l.add	r17, r4, r6
.L901:
	l.add	r29, r4, r5
.L904:
	l.lbs	r31, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r19), r31
	l.sfne	r17, r29
	l.bf	.L904
	l.addi	r19, r19, 1
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfgeu	r3, r4
	l.bnf	.L932
	l.srl	r27, r5, r17
	l.add	r6, r4, r5
	l.sfgtu	r3, r6
	l.bnf	.L955
	l.movhi	r7, hi(0)
.L932:
	l.movhi	r11, hi(0)
	l.sfne	r27, r11
	l.bnf	.L931
	l.addi	r12, r27, -1
	l.ori	r13, r0, 8
	l.sfleu	r12, r13
	l.bf	.L935
	l.or	r15, r4, r3
	l.andi	r25, r15, 3
	l.movhi	r29, hi(0)
	l.sfne	r25, r29
	l.bf	.L935
	l.addi	r31, r4, 2
	l.sfeq	r3, r31
	l.bf	.L935
	l.ori	r17, r0, 2
	l.srl	r6, r5, r17
	l.sll	r7, r6, r17
	l.or	r8, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r7, r4
.L936:
	l.lwz	r21, 0(r8)
	l.addi	r8, r8, 4
	l.sw	0(r19), r21
	l.sfne	r8, r23
	l.bf	.L936
	l.addi	r19, r19, 4
	l.add	r11, r6, r6
	l.sfeq	r27, r11
	l.bf	.L931
	l.add	r27, r11, r11
	l.add	r12, r4, r27
	l.lhs	r13, 0(r12)
	l.add	r15, r3, r27
	l.sh	0(r15), r13
.L931:
	l.andi	r7, r5, 1
	l.movhi	r23, hi(0)
	l.sfeq	r7, r23
	l.bf	.L928
	l.add	r4, r4, r5
	l.lbs	r21, -1(r4)
.L958:
	l.add	r3, r3, r5
	l.sb	-1(r3), r21
.L928:
	l.jr	r9
	 l.nop

.L955:
	l.sfne	r5, r7
	l.addi	r8, r5, -1
	l.bnf	.L928
	l.xori	r23, r0, -1
.L933:
	l.add	r21, r4, r8
	l.add	r19, r3, r8
	l.lbs	r5, 0(r21)
	l.addi	r8, r8, -1
	l.sfne	r8, r23
	l.bf	.L933
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L935:
	l.add	r25, r27, r27
	l.or	r17, r4, r4
	l.or	r6, r3, r3
	l.add	r29, r25, r4
.L938:
	l.lhs	r31, 0(r17)
	l.addi	r17, r17, 2
	l.sh	0(r6), r31
	l.sfne	r29, r17
	l.bf	.L938
	l.addi	r6, r6, 2
	l.andi	r7, r5, 1
	l.movhi	r23, hi(0)
	l.sfeq	r7, r23
	l.bf	.L928
	l.add	r4, r4, r5
	l.j	.L958
	l.lbs	r21, -1(r4)
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.xori	r25, r0, -4
	l.ori	r17, r0, 2
	l.sfgeu	r3, r4
	l.srl	r23, r5, r17
	l.bnf	.L963
	l.and	r6, r5, r25
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L993
	l.movhi	r8, hi(0)
.L963:
	l.movhi	r13, hi(0)
	l.sfne	r23, r13
	l.bnf	.L994
	l.ori	r27, r0, 2
	l.sll	r29, r23, r27
	l.or	r17, r4, r4
	l.or	r23, r3, r3
	l.add	r31, r29, r4
.L966:
	l.lwz	r25, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r23), r25
	l.sfne	r17, r31
	l.bf	.L966
	l.addi	r23, r23, 4
	l.sfleu	r5, r6
	l.bf	.L959
	l.ori	r21, r0, 6
	l.sub	r7, r5, r6
	l.addi	r8, r7, -1
	l.sfleu	r8, r21
	l.bf	.L992
	l.addi	r11, r6, 1
	l.add	r12, r4, r11
	l.add	r19, r3, r6
	l.sub	r13, r19, r12
	l.ori	r15, r0, 2
	l.sfleu	r13, r15
	l.bf	.L968
	l.add	r11, r4, r6
	l.or	r27, r11, r19
	l.andi	r29, r27, 3
	l.movhi	r31, hi(0)
	l.sfne	r29, r31
	l.bf	.L968
	l.srl	r25, r7, r15
	l.sll	r8, r25, r15
	l.add	r23, r11, r8
.L969:
	l.lwz	r21, 0(r11)
	l.addi	r11, r11, 4
	l.sw	0(r19), r21
	l.sfne	r11, r23
	l.bf	.L969
	l.addi	r19, r19, 4
	l.sfeq	r7, r8
	l.bf	.L959
	l.add	r6, r6, r8
	l.add	r19, r4, r6
	l.lbs	r7, 0(r19)
	l.add	r11, r3, r6
	l.addi	r17, r6, 1
	l.sfleu	r5, r17
	l.bf	.L959
	l.sb	0(r11), r7
	l.add	r12, r4, r17
	l.lbs	r13, 0(r12)
	l.add	r15, r3, r17
	l.addi	r27, r6, 2
	l.sfleu	r5, r27
	l.bf	.L959
	l.sb	0(r15), r13
	l.add	r4, r4, r27
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r27
	l.sb	0(r3), r5
.L959:
	l.jr	r9
	 l.nop

.L993:
	l.sfne	r5, r8
	l.xori	r21, r0, -1
	l.bnf	.L959
	l.addi	r5, r5, -1
.L964:
	l.add	r19, r4, r5
	l.add	r11, r3, r5
	l.lbs	r12, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L964
	l.sb	0(r11), r12
	l.jr	r9
	 l.nop

.L994:
	l.movhi	r15, hi(0)
	l.sfne	r5, r15
	l.bnf	.L959
	 l.nop

.L992:
	l.add	r19, r3, r6
	l.add	r11, r4, r6
.L968:
	l.add	r29, r4, r5
.L971:
	l.lbs	r31, 0(r11)
	l.addi	r11, r11, 1
	l.sb	0(r19), r31
	l.sfne	r11, r29
	l.bf	.L971
	l.addi	r19, r19, 1
	l.jr	r9
	 l.nop

	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	l.div	r11, r3, r4
	l.mul	r4, r11, r4
	l.jr	r9
	l.sub	r11, r3, r4
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
	l.movhi	r17, hi(0)
	l.sflts	r3, r17
	l.bf	.L1000
	l.ori	r4, r0, 1
	lf.itof.s	r11, r3
	l.jr	r9
	 l.nop

.L1000:
	l.andi	r11, r3, 1
	l.srl	r3, r3, r4
	l.or	r5, r11, r3
	lf.itof.s	r6, r5
	lf.add.s	r11, r6, r6
	l.jr	r9
	 l.nop

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
	l.mul	r4, r11, r4
	l.jr	r9
	l.sub	r11, r3, r4
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	l.andi	r3, r3, 0xffff
	l.ori	r17, r0, 15
	l.sra	r4, r3, r17
	l.movhi	r19, hi(0)
	l.sfne	r4, r19
	l.bf	.L1009
	l.ori	r5, r0, 14
	l.sra	r11, r3, r5
	l.sfne	r11, r19
	l.bf	.L1006
	l.ori	r6, r0, 13
	l.sra	r7, r3, r6
	l.sfne	r7, r19
	l.bf	.L1010
	l.ori	r8, r0, 12
	l.sra	r11, r3, r8
	l.sfne	r11, r19
	l.bf	.L1011
	l.ori	r12, r0, 11
	l.sra	r13, r3, r12
	l.sfne	r13, r19
	l.bf	.L1012
	l.ori	r15, r0, 10
	l.sra	r21, r3, r15
	l.sfne	r21, r19
	l.bf	.L1013
	l.ori	r23, r0, 9
	l.sra	r25, r3, r23
	l.sfne	r25, r19
	l.bf	.L1014
	l.ori	r27, r0, 8
	l.sra	r29, r3, r27
	l.sfne	r29, r19
	l.bf	.L1015
	l.ori	r31, r0, 7
	l.sra	r17, r3, r31
	l.sfne	r17, r19
	l.bf	.L1016
	l.ori	r4, r0, 6
	l.sra	r5, r3, r4
	l.sfne	r5, r19
	l.bf	.L1017
	l.ori	r6, r0, 5
	l.sra	r7, r3, r6
	l.sfne	r7, r19
	l.bf	.L1018
	l.ori	r8, r0, 4
	l.sra	r11, r3, r8
	l.sfne	r11, r19
	l.bf	.L1019
	l.ori	r12, r0, 3
	l.sra	r13, r3, r12
	l.sfne	r13, r19
	l.bf	.L1020
	l.ori	r15, r0, 2
	l.sra	r21, r3, r15
	l.sfne	r21, r19
	l.bf	.L1021
	l.ori	r23, r0, 1
	l.sra	r25, r3, r23
	l.sfne	r25, r19
	l.bf	.L1022
	l.sfeq	r3, r19
	l.bnf	.L1025
	l.ori	r11, r0, 16
.L1006:
	l.jr	r9
	 l.nop

.L1009:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1020:
	l.jr	r9
	l.ori	r11, r0, 12
.L1025:
	l.jr	r9
	l.ori	r11, r0, 15
.L1010:
	l.jr	r9
	l.ori	r11, r0, 2
.L1011:
	l.jr	r9
	l.ori	r11, r0, 3
.L1012:
	l.jr	r9
	l.ori	r11, r0, 4
.L1013:
	l.jr	r9
	l.ori	r11, r0, 5
.L1014:
	l.jr	r9
	l.ori	r11, r0, 6
.L1015:
	l.jr	r9
	l.ori	r11, r0, 7
.L1016:
	l.jr	r9
	l.ori	r11, r0, 8
.L1017:
	l.jr	r9
	l.ori	r11, r0, 9
.L1018:
	l.jr	r9
	l.ori	r11, r0, 10
.L1019:
	l.jr	r9
	l.ori	r11, r0, 11
.L1021:
	l.jr	r9
	l.ori	r11, r0, 13
.L1022:
	l.jr	r9
	l.ori	r11, r0, 14
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1029
	l.andi	r3, r3, 0xffff
	l.andi	r4, r3, 2
	l.sfne	r4, r19
	l.bf	.L1030
	l.andi	r5, r3, 4
	l.sfne	r5, r19
	l.bf	.L1031
	l.andi	r6, r3, 8
	l.sfne	r6, r19
	l.bf	.L1032
	l.andi	r7, r3, 16
	l.sfne	r7, r19
	l.bf	.L1033
	l.andi	r8, r3, 32
	l.sfne	r8, r19
	l.bf	.L1034
	 l.nop

	l.andi	r11, r3, 64
	l.sfne	r11, r19
	l.bf	.L1035
	l.andi	r12, r3, 128
	l.sfne	r12, r19
	l.bf	.L1036
	l.andi	r13, r3, 256
	l.sfne	r13, r19
	l.bf	.L1037
	l.andi	r15, r3, 512
	l.sfne	r15, r19
	l.bf	.L1038
	l.andi	r21, r3, 1024
	l.sfne	r21, r19
	l.bf	.L1039
	l.andi	r23, r3, 2048
	l.sfne	r23, r19
	l.bf	.L1040
	l.andi	r25, r3, 4096
	l.sfne	r25, r19
	l.bf	.L1041
	l.andi	r27, r3, 8192
	l.sfne	r27, r19
	l.bf	.L1042
	l.andi	r29, r3, 16384
	l.sfne	r29, r19
	l.bf	.L1043
	l.ori	r31, r0, 15
	l.sra	r17, r3, r31
	l.sfeq	r17, r19
	l.bnf	.L1046
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L1029:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1030:
	l.jr	r9
	l.ori	r11, r0, 1
.L1041:
	l.jr	r9
	l.ori	r11, r0, 12
.L1046:
	l.jr	r9
	l.or	r11, r31, r31
.L1031:
	l.jr	r9
	l.ori	r11, r0, 2
.L1032:
	l.jr	r9
	l.ori	r11, r0, 3
.L1033:
	l.jr	r9
	l.ori	r11, r0, 4
.L1034:
	l.jr	r9
	l.ori	r11, r0, 5
.L1035:
	l.jr	r9
	l.ori	r11, r0, 6
.L1036:
	l.jr	r9
	l.ori	r11, r0, 7
.L1037:
	l.jr	r9
	l.ori	r11, r0, 8
.L1038:
	l.jr	r9
	l.ori	r11, r0, 9
.L1039:
	l.jr	r9
	l.ori	r11, r0, 10
.L1040:
	l.jr	r9
	l.ori	r11, r0, 11
.L1042:
	l.jr	r9
	l.ori	r11, r0, 13
.L1043:
	l.jr	r9
	l.ori	r11, r0, 14
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.movhi	r17, hi(1191182336)
	lf.sfge.s	r3, r17
	l.bf	.L1053
	l.ori	r4, r0, 32768
	lf.ftoi.s	r11, r3
	l.jr	r9
	 l.nop

.L1053:
	lf.sub.s	r3, r3, r17
	lf.ftoi.s	r5, r3
	l.jr	r9
	l.add	r11, r5, r4
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.andi	r3, r3, 0xffff
	l.ori	r17, r0, 1
	l.sra	r11, r3, r17
	l.ori	r5, r0, 2
	l.and	r4, r11, r17
	l.and	r19, r3, r17
	l.sra	r6, r3, r5
	l.ori	r12, r0, 3
	l.add	r7, r4, r19
	l.sra	r13, r3, r12
	l.andi	r8, r6, 1
	l.ori	r23, r0, 4
	l.add	r15, r7, r8
	l.sra	r25, r3, r23
	l.andi	r21, r13, 1
	l.ori	r31, r0, 5
	l.add	r27, r15, r21
	l.sra	r17, r3, r31
	l.andi	r29, r25, 1
	l.ori	r19, r0, 6
	l.add	r11, r27, r29
	l.sra	r5, r3, r19
	l.andi	r4, r17, 1
	l.ori	r8, r0, 7
	l.add	r6, r11, r4
	l.sra	r12, r3, r8
	l.andi	r7, r5, 1
	l.ori	r21, r0, 8
	l.add	r13, r6, r7
	l.sra	r23, r3, r21
	l.andi	r15, r12, 1
	l.ori	r29, r0, 9
	l.add	r25, r13, r15
	l.sra	r31, r3, r29
	l.andi	r27, r23, 1
	l.ori	r17, r0, 10
	l.add	r11, r25, r27
	l.sra	r19, r3, r17
	l.andi	r4, r31, 1
	l.ori	r7, r0, 11
	l.add	r5, r11, r4
	l.sra	r8, r3, r7
	l.andi	r6, r19, 1
	l.ori	r15, r0, 12
	l.add	r12, r5, r6
	l.andi	r13, r8, 1
	l.sra	r21, r3, r15
	l.ori	r27, r0, 13
	l.sra	r29, r3, r27
	l.add	r23, r12, r13
	l.andi	r25, r21, 1
	l.ori	r4, r0, 14
	l.andi	r11, r29, 1
	l.sra	r17, r3, r4
	l.add	r31, r23, r25
	l.add	r19, r31, r11
	l.andi	r5, r17, 1
	l.ori	r7, r0, 15
	l.add	r6, r19, r5
	l.sra	r3, r3, r7
	l.add	r8, r6, r3
	l.jr	r9
	l.andi	r11, r8, 1
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	l.andi	r3, r3, 0xffff
	l.ori	r17, r0, 1
	l.sra	r4, r3, r17
	l.ori	r19, r0, 2
	l.sra	r6, r3, r19
	l.andi	r5, r4, 1
	l.andi	r21, r3, 1
	l.ori	r11, r0, 3
	l.add	r7, r5, r21
	l.sra	r12, r3, r11
	l.andi	r8, r6, 1
	l.ori	r23, r0, 4
	l.add	r13, r7, r8
	l.sra	r25, r3, r23
	l.andi	r15, r12, 1
	l.ori	r31, r0, 5
	l.add	r27, r13, r15
	l.sra	r4, r3, r31
	l.andi	r29, r25, 1
	l.ori	r21, r0, 6
	l.add	r17, r27, r29
	l.sra	r19, r3, r21
	l.andi	r5, r4, 1
	l.ori	r8, r0, 7
	l.add	r6, r17, r5
	l.sra	r11, r3, r8
	l.andi	r7, r19, 1
	l.ori	r15, r0, 8
	l.add	r12, r6, r7
	l.sra	r23, r3, r15
	l.andi	r13, r11, 1
	l.ori	r29, r0, 9
	l.add	r25, r12, r13
	l.sra	r31, r3, r29
	l.andi	r27, r23, 1
	l.ori	r5, r0, 10
	l.add	r4, r25, r27
	l.sra	r21, r3, r5
	l.andi	r17, r31, 1
	l.ori	r7, r0, 11
	l.add	r6, r4, r17
	l.sra	r8, r3, r7
	l.andi	r19, r21, 1
	l.ori	r13, r0, 12
	l.add	r11, r6, r19
	l.sra	r15, r3, r13
	l.andi	r12, r8, 1
	l.ori	r27, r0, 13
	l.add	r23, r11, r12
	l.sra	r29, r3, r27
	l.andi	r25, r15, 1
	l.ori	r17, r0, 14
	l.sra	r5, r3, r17
	l.add	r31, r23, r25
	l.andi	r4, r29, 1
	l.add	r21, r31, r4
	l.andi	r6, r5, 1
	l.ori	r19, r0, 15
	l.add	r7, r21, r6
	l.sra	r3, r3, r19
	l.jr	r9
	l.add	r11, r7, r3
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L1056
	l.movhi	r11, hi(0)
.L1058:
	l.andi	r5, r3, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r3, r3, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r4
	l.sfne	r3, r8
	l.add	r11, r11, r7
	l.bf	.L1058
	l.add	r4, r4, r4
.L1056:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L1061
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L1061
	 l.nop

.L1063:
	l.andi	r5, r4, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r4, r4, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r3
	l.sfne	r4, r8
	l.add	r11, r11, r7
	l.bf	.L1063
	l.add	r3, r3, r3
.L1061:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1068
	l.ori	r12, r0, 1
	l.j	.L1091
	l.sfgeu	r3, r4
.L1072:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r12, r12, r12
	l.bf	.L1070
	l.movhi	r6, hi(0)
	l.sfeq	r11, r6
	l.bf	.L1071
	 l.nop

.L1068:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1072
	l.addi	r11, r11, -1
.L1073:
	l.movhi	r11, hi(0)
.L1074:
	l.sfgeu	r3, r4
	l.ori	r21, r0, 1
	l.sub	r7, r3, r4
	l.bnf	.L1088
	l.srl	r4, r4, r21
	l.or	r3, r7, r7
.L1088:
	l.ori	r8, r0, 1
	l.or	r13, r12, r12
	l.bf	.L1089
	l.srl	r12, r12, r8
	l.movhi	r13, hi(0)
.L1089:
	l.movhi	r15, hi(0)
	l.sfne	r12, r15
	l.bf	.L1074
	l.or	r11, r11, r13
.L1071:
	l.movhi	r4, hi(0)
.L1093:
	l.sfne	r5, r4
	l.bnf	.L1085
	 l.nop

	l.or	r11, r3, r3
.L1085:
	l.jr	r9
	 l.nop

.L1070:
	l.sfeq	r12, r6
	l.bnf	.L1073
	l.movhi	r11, hi(0)
	l.j	.L1093
	l.movhi	r4, hi(0)
.L1091:
	l.bnf	.L1086
	l.sub	r17, r3, r4
	l.or	r3, r17, r17
.L1086:
	l.bf	.L1071
	l.ori	r11, r0, 1
	l.j	.L1071
	l.movhi	r11, hi(0)
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	lf.sflt.s	r3, r4
	l.bf	.L1096
	 l.nop

	lf.sfgt.s	r3, r4
	l.bnf	.L1098
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1098:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1096:
	l.jr	r9
	l.xori	r11, r0, -1
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
	l.bf	.L1102
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L1105
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1105:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1102:
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
	l.bnf	.L1124
	l.movhi	r5, hi(0)
	l.sfeq	r4, r5
	l.bf	.L1116
	l.movhi	r21, hi(0)
.L1112:
	l.ori	r12, r0, 32
	l.j	.L1115
	l.movhi	r11, hi(0)
.L1125:
	l.sfne	r12, r13
	l.bnf	.L1114
	 l.nop

.L1115:
	l.andi	r6, r4, 1
	l.ori	r23, r0, 1
	l.sub	r7, r0, r6
	l.sra	r4, r4, r23
	l.movhi	r13, hi(0)
	l.and	r8, r7, r3
	l.addi	r19, r12, -1
	l.sfeq	r4, r13
	l.andi	r12, r19, 0xff
	l.add	r11, r11, r8
	l.bnf	.L1125
	l.add	r3, r3, r3
.L1114:
	l.movhi	r3, hi(0)
	l.sfeq	r21, r3
	l.bf	.L1110
	 l.nop

	l.sub	r11, r0, r11
.L1110:
	l.jr	r9
	 l.nop

.L1124:
	l.sub	r4, r0, r4
	l.j	.L1112
	l.ori	r21, r0, 1
.L1116:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1155
	 l.nop

	l.ori	r17, r0, 1
	l.movhi	r25, hi(0)
.L1127:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1156
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.or	r25, r17, r17
	l.sfgtu	r3, r4
.L1156:
	l.or	r23, r3, r3
	l.or	r6, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1129
	l.ori	r8, r0, 1
	l.j	.L1152
	l.sfgeu	r3, r4
.L1133:
	l.movhi	r27, hi(0)
	l.sfne	r21, r27
	l.bnf	.L1134
	 l.nop

.L1129:
	l.add	r6, r6, r6
	l.sfgtu	r3, r6
	l.addi	r21, r21, -1
	l.bf	.L1133
	l.add	r8, r8, r8
.L1134:
	l.movhi	r3, hi(0)
	l.sfne	r8, r3
	l.bnf	.L1132
	l.movhi	r11, hi(0)
.L1131:
	l.sfgeu	r23, r6
	l.ori	r5, r0, 1
	l.sub	r4, r23, r6
	l.bnf	.L1148
	l.srl	r6, r6, r5
	l.or	r23, r4, r4
.L1148:
	l.ori	r7, r0, 1
	l.or	r12, r8, r8
	l.bf	.L1149
	l.srl	r8, r8, r7
	l.movhi	r12, hi(0)
.L1149:
	l.movhi	r13, hi(0)
	l.sfne	r8, r13
	l.bf	.L1131
	l.or	r11, r11, r12
.L1132:
	l.movhi	r15, hi(0)
	l.sfeq	r25, r15
	l.bf	.L1126
	 l.nop

	l.sub	r11, r0, r11
.L1126:
	l.jr	r9
	 l.nop

.L1155:
	l.sub	r3, r0, r3
	l.j	.L1127
	l.ori	r25, r0, 1
.L1152:
	l.bf	.L1132
	l.ori	r11, r0, 1
	l.j	.L1132
	l.movhi	r11, hi(0)
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1185
	 l.nop

	l.movhi	r23, hi(0)
.L1158:
	l.movhi	r5, hi(0)
	l.sfges	r4, r5
	l.bf	.L1159
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1159:
	l.sfgtu	r3, r4
	l.or	r7, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1160
	l.ori	r19, r0, 1
	l.j	.L1182
	l.sfgeu	r3, r4
.L1164:
	l.movhi	r25, hi(0)
	l.sfne	r21, r25
	l.bnf	.L1186
	l.movhi	r4, hi(0)
.L1160:
	l.add	r7, r7, r7
	l.sfgtu	r3, r7
	l.addi	r21, r21, -1
	l.bf	.L1164
	l.add	r19, r19, r19
	l.movhi	r4, hi(0)
.L1186:
	l.sfne	r19, r4
	l.bnf	.L1184
	 l.nop

.L1162:
	l.ori	r3, r0, 1
	l.sfgeu	r11, r7
	l.sub	r6, r11, r7
	l.srl	r19, r19, r3
	l.bnf	.L1179
	l.srl	r7, r7, r3
	l.or	r11, r6, r6
.L1179:
	l.movhi	r8, hi(0)
	l.sfne	r19, r8
	l.bf	.L1162
	 l.nop

.L1163:
	l.movhi	r12, hi(0)
	l.sfeq	r23, r12
	l.bf	.L1157
	 l.nop

	l.sub	r11, r0, r11
.L1157:
	l.jr	r9
	 l.nop

.L1185:
	l.sub	r3, r0, r3
	l.j	.L1158
	l.ori	r23, r0, 1
.L1182:
	l.bf	.L1163
	l.sub	r11, r3, r4
.L1184:
	l.j	.L1163
	l.or	r11, r3, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.bnf	.L1308
	l.ori	r23, r0, 16
	l.sll	r3, r4, r23
	l.movhi	r21, hi(0)
	l.sflts	r3, r21
	l.bf	.L1190
	l.add	r8, r4, r4
	l.andi	r17, r8, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1197
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1197
	l.ori	r12, r0, 2
	l.sll	r13, r4, r12
	l.andi	r17, r13, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1199
	l.sll	r15, r17, r23
	l.sflts	r15, r21
	l.bf	.L1199
	l.ori	r25, r0, 3
	l.sll	r27, r4, r25
	l.andi	r17, r27, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1201
	l.sll	r29, r17, r23
	l.sflts	r29, r21
	l.bf	.L1201
	l.ori	r31, r0, 4
	l.sll	r17, r4, r31
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1203
	l.sll	r3, r17, r23
	l.sflts	r3, r21
	l.bf	.L1203
	l.ori	r6, r0, 5
	l.sll	r7, r4, r6
	l.andi	r17, r7, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1205
	l.sll	r8, r17, r23
	l.sflts	r8, r21
	l.bf	.L1205
	l.ori	r19, r0, 6
	l.sll	r12, r4, r19
	l.andi	r17, r12, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1207
	l.sll	r13, r17, r23
	l.sflts	r13, r21
	l.bf	.L1207
	l.ori	r15, r0, 7
	l.sll	r25, r4, r15
	l.andi	r17, r25, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1209
	l.sll	r27, r17, r23
	l.sflts	r27, r21
	l.bf	.L1209
	l.ori	r29, r0, 8
	l.sll	r31, r4, r29
	l.andi	r17, r31, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1211
	l.sll	r3, r17, r23
	l.sflts	r3, r21
	l.bf	.L1211
	 l.nop

	l.ori	r17, r0, 9
	l.sll	r6, r4, r17
	l.andi	r17, r6, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1213
	l.sll	r7, r17, r23
	l.sflts	r7, r21
	l.bf	.L1213
	l.ori	r8, r0, 10
	l.sll	r19, r4, r8
	l.andi	r17, r19, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1192
	l.ori	r12, r0, 1024
	l.sll	r12, r17, r23
	l.sflts	r12, r21
	l.bf	.L1215
	l.ori	r13, r0, 11
	l.sll	r15, r4, r13
	l.andi	r17, r15, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1217
	l.sll	r25, r17, r23
	l.sflts	r25, r21
	l.bf	.L1217
	l.ori	r27, r0, 12
	l.sll	r29, r4, r27
	l.andi	r17, r29, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1219
	l.sll	r31, r17, r23
	l.sflts	r31, r21
	l.bf	.L1219
	l.ori	r3, r0, 13
	l.sll	r17, r4, r3
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1221
	l.sll	r6, r17, r23
	l.sflts	r6, r21
	l.bf	.L1221
	l.ori	r7, r0, 14
	l.sll	r8, r4, r7
	l.andi	r17, r8, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1223
	l.sll	r23, r17, r23
	l.sflts	r23, r21
	l.bf	.L1223
	l.ori	r19, r0, 15
	l.sll	r4, r4, r19
	l.andi	r7, r4, 0xffff
	l.sfleu	r11, r7
	l.bf	.L1224
	l.sfeq	r7, r21
	l.bnf	.L1309
	l.ori	r12, r0, 32768
.L1193:
	l.movhi	r31, hi(0)
.L1312:
	l.sfne	r5, r31
	l.bf	.L1268
	 l.nop

	l.or	r11, r7, r7
.L1268:
	l.jr	r9
	 l.nop

.L1197:
	l.ori	r12, r0, 2
.L1192:
	l.sfgeu	r11, r17
	l.bf	.L1310
	l.sub	r21, r11, r17
	l.or	r21, r11, r11
	l.sfgeu	r11, r17
.L1310:
	l.andi	r13, r12, 0xffff
	l.bf	.L1270
	l.andi	r11, r21, 0xffff
	l.movhi	r13, hi(0)
.L1270:
	l.ori	r15, r0, 1
	l.srl	r27, r17, r15
	l.sfgeu	r11, r27
	l.srl	r25, r12, r15
	l.bf	.L1311
	l.sub	r29, r11, r27
	l.or	r29, r11, r11
	l.sfgeu	r11, r27
.L1311:
	l.or	r31, r25, r25
	l.bf	.L1302
	l.andi	r11, r29, 0xffff
	l.movhi	r31, hi(0)
.L1302:
	l.ori	r6, r0, 2
	l.srl	r19, r12, r6
	l.movhi	r23, hi(0)
	l.or	r3, r13, r31
	l.sfeq	r19, r23
	l.andi	r7, r3, 0xffff
	l.bf	.L1193
	l.srl	r8, r17, r6
	l.sfgeu	r11, r8
	l.bf	.L1299
	l.sub	r4, r11, r8
	l.or	r4, r29, r29
.L1299:
	l.bf	.L1300
	l.andi	r11, r4, 0xffff
	l.movhi	r19, hi(0)
.L1300:
	l.ori	r13, r0, 3
	l.srl	r21, r12, r13
	l.movhi	r25, hi(0)
	l.or	r7, r7, r19
	l.sfeq	r21, r25
	l.andi	r7, r7, 0xffff
	l.bf	.L1193
	l.srl	r15, r17, r13
	l.sfgeu	r11, r15
	l.bf	.L1297
	l.sub	r27, r11, r15
	l.or	r27, r4, r4
.L1297:
	l.bf	.L1298
	l.andi	r11, r27, 0xffff
	l.movhi	r21, hi(0)
.L1298:
	l.ori	r31, r0, 4
	l.srl	r23, r12, r31
	l.movhi	r6, hi(0)
	l.or	r29, r7, r21
	l.sfeq	r23, r6
	l.andi	r7, r29, 0xffff
	l.bf	.L1193
	l.srl	r3, r17, r31
	l.sfgeu	r11, r3
	l.bf	.L1295
	l.sub	r8, r11, r3
	l.or	r8, r27, r27
.L1295:
	l.bf	.L1296
	l.andi	r11, r8, 0xffff
	l.movhi	r23, hi(0)
.L1296:
	l.ori	r19, r0, 5
	l.srl	r25, r12, r19
	l.movhi	r15, hi(0)
	l.or	r4, r7, r23
	l.sfeq	r25, r15
	l.andi	r7, r4, 0xffff
	l.bf	.L1193
	l.srl	r13, r17, r19
	l.sfgeu	r11, r13
	l.bf	.L1293
	l.sub	r27, r11, r13
	l.or	r27, r8, r8
.L1293:
	l.bf	.L1294
	l.andi	r11, r27, 0xffff
	l.movhi	r25, hi(0)
.L1294:
	l.ori	r21, r0, 6
	l.srl	r6, r12, r21
	l.movhi	r31, hi(0)
	l.or	r7, r7, r25
	l.sfeq	r6, r31
	l.andi	r7, r7, 0xffff
	l.bf	.L1312
	l.srl	r29, r17, r21
	l.sfgeu	r11, r29
	l.bf	.L1291
	l.sub	r3, r11, r29
	l.or	r3, r27, r27
.L1291:
	l.bf	.L1292
	l.andi	r11, r3, 0xffff
	l.movhi	r6, hi(0)
.L1292:
	l.ori	r23, r0, 7
	l.srl	r15, r12, r23
	l.movhi	r19, hi(0)
	l.or	r8, r7, r6
	l.sfeq	r15, r19
	l.andi	r7, r8, 0xffff
	l.bf	.L1193
	l.srl	r4, r17, r23
	l.sfgeu	r11, r4
	l.bf	.L1289
	l.sub	r13, r11, r4
	l.or	r13, r3, r3
.L1289:
	l.bf	.L1290
	l.andi	r11, r13, 0xffff
	l.movhi	r15, hi(0)
.L1290:
	l.ori	r25, r0, 8
	l.srl	r3, r12, r25
	l.movhi	r29, hi(0)
	l.or	r27, r7, r15
	l.sfeq	r3, r29
	l.andi	r7, r27, 0xffff
	l.bf	.L1193
	l.srl	r21, r17, r25
	l.sfgeu	r11, r21
	l.bf	.L1287
	l.sub	r31, r11, r21
	l.or	r31, r13, r13
.L1287:
	l.bf	.L1288
	l.andi	r11, r31, 0xffff
	l.movhi	r3, hi(0)
.L1288:
	l.ori	r6, r0, 9
	l.srl	r19, r12, r6
	l.movhi	r23, hi(0)
	l.or	r7, r7, r3
	l.sfeq	r19, r23
	l.andi	r7, r7, 0xffff
	l.bf	.L1193
	l.srl	r8, r17, r6
	l.sfgeu	r11, r8
	l.bf	.L1285
	l.sub	r4, r11, r8
	l.or	r4, r31, r31
.L1285:
	l.bf	.L1286
	l.andi	r11, r4, 0xffff
	l.movhi	r19, hi(0)
.L1286:
	l.ori	r15, r0, 10
	l.srl	r21, r12, r15
	l.movhi	r25, hi(0)
	l.or	r13, r7, r19
	l.sfeq	r21, r25
	l.andi	r7, r13, 0xffff
	l.bf	.L1193
	l.srl	r27, r17, r15
	l.sfgeu	r11, r27
	l.bf	.L1283
	l.sub	r29, r11, r27
	l.or	r29, r4, r4
.L1283:
	l.bf	.L1284
	l.andi	r11, r29, 0xffff
	l.movhi	r21, hi(0)
.L1284:
	l.ori	r3, r0, 11
	l.srl	r4, r12, r3
	l.movhi	r8, hi(0)
	l.or	r31, r7, r21
	l.sfeq	r4, r8
	l.andi	r7, r31, 0xffff
	l.bf	.L1193
	l.srl	r6, r17, r3
	l.sfgeu	r11, r6
	l.bf	.L1281
	l.sub	r23, r11, r6
	l.or	r23, r29, r29
.L1281:
	l.bf	.L1282
	l.andi	r11, r23, 0xffff
	l.movhi	r4, hi(0)
.L1282:
	l.ori	r13, r0, 12
	l.srl	r19, r12, r13
	l.movhi	r27, hi(0)
	l.or	r7, r7, r4
	l.sfeq	r19, r27
	l.andi	r7, r7, 0xffff
	l.bf	.L1193
	l.srl	r15, r17, r13
	l.sfgeu	r11, r15
	l.bf	.L1279
	l.sub	r25, r11, r15
	l.or	r25, r23, r23
.L1279:
	l.bf	.L1280
	l.andi	r11, r25, 0xffff
	l.movhi	r19, hi(0)
.L1280:
	l.ori	r31, r0, 13
	l.srl	r21, r12, r31
	l.movhi	r6, hi(0)
	l.or	r29, r7, r19
	l.sfeq	r21, r6
	l.andi	r7, r29, 0xffff
	l.bf	.L1193
	l.srl	r3, r17, r31
	l.sfgeu	r11, r3
	l.bf	.L1277
	l.sub	r8, r11, r3
	l.or	r8, r25, r25
.L1277:
	l.bf	.L1278
	l.andi	r11, r8, 0xffff
	l.movhi	r21, hi(0)
.L1278:
	l.ori	r4, r0, 14
	l.srl	r25, r12, r4
	l.movhi	r15, hi(0)
	l.or	r23, r7, r21
	l.sfeq	r25, r15
	l.andi	r7, r23, 0xffff
	l.bf	.L1193
	l.srl	r13, r17, r4
	l.sfgeu	r11, r13
	l.bf	.L1275
	l.sub	r27, r11, r13
	l.or	r27, r8, r8
.L1275:
	l.bf	.L1276
	l.andi	r11, r27, 0xffff
	l.movhi	r25, hi(0)
.L1276:
	l.ori	r19, r0, 15
	l.srl	r29, r17, r19
	l.ori	r17, r0, 16384
	l.or	r7, r7, r25
	l.sfeq	r12, r17
	l.bf	.L1193
	l.andi	r7, r7, 0xffff
	l.sfgeu	r11, r29
	l.sub	r21, r11, r29
	l.bf	.L1304
	l.ori	r12, r0, 1
	l.movhi	r12, hi(0)
.L1304:
	l.bf	.L1274
	 l.nop

	l.or	r21, r27, r27
.L1274:
	l.andi	r11, r21, 0xffff
	l.j	.L1193
	l.or	r7, r12, r7
.L1199:
	l.j	.L1192
	l.ori	r12, r0, 4
.L1201:
	l.j	.L1192
	l.ori	r12, r0, 8
.L1203:
	l.j	.L1192
	l.ori	r12, r0, 16
.L1213:
	l.j	.L1192
	l.ori	r12, r0, 512
.L1205:
	l.j	.L1192
	l.ori	r12, r0, 32
.L1207:
	l.j	.L1192
	l.ori	r12, r0, 64
.L1209:
	l.j	.L1192
	l.ori	r12, r0, 128
.L1211:
	l.j	.L1192
	l.ori	r12, r0, 256
.L1308:
	l.sfeq	r4, r11
	l.bf	.L1303
	l.sub	r17, r11, r4
	l.or	r17, r11, r11
.L1303:
	l.andi	r11, r17, 0xffff
	l.bf	.L1193
	l.ori	r7, r0, 1
	l.j	.L1193
	l.movhi	r7, hi(0)
.L1215:
	l.j	.L1192
	l.ori	r12, r0, 1024
.L1217:
	l.j	.L1192
	l.ori	r12, r0, 2048
.L1219:
	l.j	.L1192
	l.ori	r12, r0, 4096
.L1221:
	l.j	.L1192
	l.ori	r12, r0, 8192
.L1223:
	l.j	.L1192
	l.ori	r12, r0, 16384
.L1309:
	l.j	.L1192
	l.or	r17, r12, r12
.L1224:
	l.ori	r17, r0, 32768
	l.j	.L1192
	l.or	r12, r17, r17
.L1190:
	l.sub	r6, r11, r4
	l.andi	r11, r6, 0xffff
	l.j	.L1193
	l.ori	r7, r0, 1
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1314
	l.ori	r12, r0, 1
	l.j	.L1337
	l.sfgeu	r3, r4
.L1318:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r12, r12, r12
	l.bf	.L1316
	l.movhi	r6, hi(0)
	l.sfeq	r11, r6
	l.bf	.L1317
	 l.nop

.L1314:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1318
	l.addi	r11, r11, -1
.L1319:
	l.movhi	r11, hi(0)
.L1320:
	l.sfgeu	r3, r4
	l.ori	r21, r0, 1
	l.sub	r7, r3, r4
	l.bnf	.L1334
	l.srl	r4, r4, r21
	l.or	r3, r7, r7
.L1334:
	l.ori	r8, r0, 1
	l.or	r13, r12, r12
	l.bf	.L1335
	l.srl	r12, r12, r8
	l.movhi	r13, hi(0)
.L1335:
	l.movhi	r15, hi(0)
	l.sfne	r12, r15
	l.bf	.L1320
	l.or	r11, r11, r13
.L1317:
	l.movhi	r4, hi(0)
.L1339:
	l.sfne	r5, r4
	l.bnf	.L1331
	 l.nop

	l.or	r11, r3, r3
.L1331:
	l.jr	r9
	 l.nop

.L1316:
	l.sfeq	r12, r6
	l.bnf	.L1319
	l.movhi	r11, hi(0)
	l.j	.L1339
	l.movhi	r4, hi(0)
.L1337:
	l.bnf	.L1332
	l.sub	r17, r3, r4
	l.or	r3, r17, r17
.L1332:
	l.bf	.L1317
	l.ori	r11, r0, 1
	l.j	.L1317
	l.movhi	r11, hi(0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1341
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1341:
	l.sfeq	r5, r6
	l.bf	.L1344
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.srl	r12, r4, r8
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r12, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1344:
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
	l.bf	.L1347
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.ori	r4, r0, 31
	l.sra	r11, r3, r4
	l.jr	r9
	l.sra	r12, r3, r5
.L1347:
	l.sfeq	r5, r6
	l.bf	.L1350
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.sll	r13, r3, r8
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r13, r12
.L1350:
	l.or	r11, r3, r3
	l.jr	r9
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.ori	r21, r0, 8
	l.ori	r29, r0, 24
	l.sll	r17, r3, r21
	l.srl	r19, r4, r29
	l.or	r5, r17, r19
	l.srl	r7, r3, r21
	l.srl	r12, r3, r29
	l.sll	r11, r4, r29
	l.srl	r13, r4, r21
	l.movhi	r23, hi(16711680)
	l.andi	r25, r5, 255
	l.andi	r8, r7, 65280
	l.or	r15, r12, r8
	l.and	r31, r5, r23
	l.sll	r4, r4, r21
	l.andi	r17, r13, 65280
	l.or	r21, r11, r25
	l.sll	r3, r3, r29
	l.or	r19, r15, r31
	l.or	r29, r21, r17
	l.and	r5, r4, r23
	l.or	r11, r29, r5
	l.jr	r9
	l.or	r12, r19, r3
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.ori	r17, r0, 24
	l.ori	r21, r0, 8
	l.srl	r11, r3, r17
	l.sll	r19, r3, r17
	l.srl	r4, r3, r21
	l.or	r5, r11, r19
	l.andi	r6, r4, 65280
	l.sll	r3, r3, r21
	l.movhi	r7, hi(16711680)
	l.or	r8, r5, r6
	l.and	r12, r3, r7
	l.jr	r9
	l.or	r11, r8, r12
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.ori	r17, r0, 65535
	l.ori	r25, r0, 1
	l.sfleu	r3, r17
	l.bf	.L1355
	l.or	r4, r25, r25
	l.movhi	r4, hi(0)
.L1355:
	l.ori	r5, r0, 4
	l.sll	r6, r4, r5
	l.ori	r7, r0, 16
	l.sub	r8, r7, r6
	l.srl	r3, r3, r8
	l.andi	r19, r3, 65280
	l.movhi	r29, hi(0)
	l.ori	r23, r0, 1
	l.sfeq	r19, r29
	l.bf	.L1356
	l.or	r11, r23, r23
	l.movhi	r11, hi(0)
.L1356:
	l.ori	r12, r0, 3
	l.sll	r13, r11, r12
	l.ori	r15, r0, 8
	l.sub	r21, r15, r13
	l.srl	r27, r3, r21
	l.andi	r31, r27, 240
	l.ori	r17, r0, 1
	l.sfeq	r31, r29
	l.bf	.L1357
	l.or	r25, r17, r17
	l.movhi	r25, hi(0)
.L1357:
	l.ori	r4, r0, 2
	l.sll	r5, r25, r4
	l.ori	r7, r0, 4
	l.sub	r8, r7, r5
	l.srl	r3, r27, r8
	l.andi	r19, r3, 12
	l.ori	r23, r0, 1
	l.sfeq	r19, r29
	l.bf	.L1358
	l.or	r12, r23, r23
	l.movhi	r12, hi(0)
.L1358:
	l.ori	r11, r0, 2
	l.add	r15, r12, r12
	l.sub	r21, r11, r15
	l.srl	r31, r3, r21
	l.and	r27, r31, r11
	l.add	r6, r13, r6
	l.sfeq	r27, r29
	l.sub	r13, r11, r31
	l.bf	.L1354
	l.add	r29, r5, r6
	l.movhi	r13, hi(0)
.L1354:
	l.add	r17, r15, r29
	l.jr	r9
	l.add	r11, r13, r17
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1363
	l.sfgts	r3, r5
	l.bf	.L1364
	l.sfltu	r4, r6
	l.bf	.L1363
	l.sfgtu	r4, r6
	l.bf	.L1364
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1363:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1364:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1369
	l.sfgts	r3, r5
	l.bf	.L1368
	l.sfltu	r4, r6
	l.bf	.L1369
	l.sfgtu	r4, r6
	l.bnf	.L1371
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1369:
	l.jr	r9
	l.xori	r11, r0, -1
.L1371:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1368:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.movhi	r27, hi(0)
	l.ori	r25, r0, 1
	l.sfeq	r17, r27
	l.bf	.L1373
	l.or	r4, r25, r25
	l.movhi	r4, hi(0)
.L1373:
	l.ori	r5, r0, 4
	l.sll	r6, r4, r5
	l.srl	r3, r3, r6
	l.andi	r19, r3, 255
	l.ori	r23, r0, 1
	l.sfeq	r19, r27
	l.bf	.L1374
	l.or	r7, r23, r23
	l.movhi	r7, hi(0)
.L1374:
	l.ori	r8, r0, 3
	l.sll	r12, r7, r8
	l.srl	r11, r3, r12
	l.andi	r13, r11, 15
	l.ori	r21, r0, 1
	l.sfeq	r13, r27
	l.bf	.L1375
	l.or	r15, r21, r21
	l.movhi	r15, hi(0)
.L1375:
	l.ori	r29, r0, 2
	l.sll	r31, r15, r29
	l.srl	r17, r11, r31
	l.andi	r25, r17, 3
	l.sfeq	r25, r27
	l.ori	r27, r0, 1
	l.bf	.L1376
	l.or	r4, r27, r27
	l.movhi	r4, hi(0)
.L1376:
	l.add	r5, r4, r4
	l.srl	r3, r17, r5
	l.andi	r19, r3, 3
	l.xori	r7, r19, -1
	l.ori	r8, r0, 1
	l.add	r6, r12, r6
	l.andi	r23, r7, 1
	l.srl	r12, r19, r8
	l.ori	r11, r0, 2
	l.sub	r21, r11, r12
	l.add	r13, r31, r6
	l.sub	r15, r0, r23
	l.and	r29, r15, r21
	l.add	r31, r5, r13
	l.jr	r9
	l.add	r11, r29, r31
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1378
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1380:
	l.jr	r9
	 l.nop

.L1378:
	l.sfeq	r5, r6
	l.bf	.L1381
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.sll	r11, r3, r8
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r11, r12
	l.j	.L1380
	l.or	r11, r3, r3
.L1381:
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
	l.mul	r5, r17, r3
	l.add	r6, r5, r19
	l.srl	r4, r4, r21
	l.mul	r8, r11, r4
	l.andi	r7, r6, 0xffff
	l.add	r13, r8, r7
	l.srl	r23, r6, r21
	l.mul	r25, r3, r4
	l.andi	r27, r12, 0xffff
	l.sll	r29, r13, r21
	l.add	r31, r23, r25
	l.srl	r11, r13, r21
	l.add	r11, r31, r11
	l.jr	r9
	l.add	r12, r27, r29
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
	l.mul	r7, r17, r21
	l.srl	r11, r6, r27
	l.add	r8, r7, r23
	l.mul	r13, r19, r11
	l.andi	r25, r8, 0xffff
	l.mul	r31, r21, r11
	l.add	r15, r13, r25
	l.srl	r29, r8, r27
	l.add	r19, r29, r31
	l.srl	r17, r15, r27
	l.or	r23, r27, r27
	l.mul	r4, r4, r5
	l.add	r27, r19, r17
	l.andi	r5, r12, 0xffff
	l.add	r21, r4, r27
	l.sll	r12, r15, r23
	l.mul	r6, r6, r3
	l.add	r11, r21, r6
	l.jr	r9
	l.add	r12, r5, r12
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.movhi	r17, hi(0)
	l.sfne	r17, r4
	l.ori	r11, r0, 1
	l.sub	r12, r17, r4
	l.bf	.L1385
	l.or	r4, r11, r11
	l.movhi	r4, hi(0)
.L1385:
	l.sub	r3, r17, r3
	l.jr	r9
	l.sub	r11, r3, r4
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.xor	r3, r3, r4
	l.ori	r17, r0, 16
	l.srl	r4, r3, r17
	l.xor	r5, r4, r3
	l.ori	r19, r0, 8
	l.srl	r6, r5, r19
	l.xor	r7, r6, r5
	l.ori	r8, r0, 4
	l.srl	r11, r7, r8
	l.xor	r12, r11, r7
	l.andi	r13, r12, 15
	l.ori	r15, r0, 27030
	l.sra	r21, r15, r13
	l.jr	r9
	l.andi	r11, r21, 1
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	l.ori	r17, r0, 16
	l.srl	r4, r3, r17
	l.xor	r5, r4, r3
	l.ori	r19, r0, 8
	l.srl	r3, r5, r19
	l.xor	r6, r3, r5
	l.ori	r7, r0, 4
	l.srl	r8, r6, r7
	l.xor	r11, r8, r6
	l.andi	r12, r11, 15
	l.ori	r13, r0, 27030
	l.sra	r15, r13, r12
	l.jr	r9
	l.andi	r11, r15, 1
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.ori	r23, r0, 1
	l.ori	r17, r0, 31
	l.srl	r21, r4, r23
	l.sll	r5, r3, r17
	l.movhi	r19, hi(1431633920)
	l.ori	r6, r19, 21845
	l.or	r7, r5, r21
	l.and	r8, r7, r6
	l.sub	r11, r4, r8
	l.srl	r12, r3, r23
	l.sfgtu	r11, r4
	l.ori	r13, r0, 1
	l.and	r4, r12, r6
	l.bf	.L1389
	l.or	r15, r13, r13
	l.movhi	r15, hi(0)
.L1389:
	l.sub	r3, r3, r4
	l.sub	r27, r3, r15
	l.ori	r31, r0, 2
	l.ori	r25, r0, 30
	l.srl	r17, r11, r31
	l.sll	r29, r27, r25
	l.movhi	r5, hi(858980352)
	l.ori	r19, r5, 13107
	l.or	r23, r29, r17
	l.and	r21, r23, r19
	l.and	r6, r11, r19
	l.add	r7, r21, r6
	l.srl	r8, r27, r31
	l.ori	r4, r0, 1
	l.sfltu	r7, r21
	l.and	r11, r8, r19
	l.and	r12, r27, r19
	l.bf	.L1390
	l.or	r13, r4, r4
	l.movhi	r13, hi(0)
.L1390:
	l.add	r15, r11, r12
	l.add	r3, r13, r15
	l.ori	r25, r0, 4
	l.ori	r27, r0, 28
	l.sll	r29, r3, r27
	l.srl	r31, r7, r25
	l.or	r5, r29, r31
	l.add	r17, r5, r7
	l.ori	r19, r0, 1
	l.sfltu	r17, r5
	l.srl	r23, r3, r25
	l.bf	.L1391
	l.or	r6, r19, r19
	l.movhi	r6, hi(0)
.L1391:
	l.add	r7, r23, r3
	l.movhi	r21, hi(252641280)
	l.ori	r8, r21, 3855
	l.add	r11, r6, r7
	l.and	r12, r11, r8
	l.and	r4, r17, r8
	l.add	r13, r12, r4
	l.ori	r15, r0, 16
	l.srl	r3, r13, r15
	l.add	r27, r3, r13
	l.ori	r29, r0, 8
	l.srl	r25, r27, r29
	l.add	r31, r25, r27
	l.jr	r9
	l.andi	r11, r31, 127
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	l.movhi	r19, hi(1431633920)
	l.ori	r17, r0, 1
	l.srl	r4, r3, r17
	l.ori	r5, r19, 21845
	l.and	r6, r4, r5
	l.sub	r3, r3, r6
	l.movhi	r7, hi(858980352)
	l.ori	r11, r0, 2
	l.ori	r8, r7, 13107
	l.srl	r12, r3, r11
	l.and	r15, r3, r8
	l.and	r13, r12, r8
	l.add	r23, r13, r15
	l.ori	r21, r0, 4
	l.srl	r25, r23, r21
	l.movhi	r27, hi(252641280)
	l.add	r29, r25, r23
	l.ori	r31, r27, 3855
	l.and	r17, r29, r31
	l.ori	r19, r0, 16
	l.srl	r4, r17, r19
	l.add	r5, r4, r17
	l.ori	r6, r0, 8
	l.srl	r3, r5, r6
	l.add	r7, r3, r5
	l.jr	r9
	l.andi	r11, r7, 63
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
	l.sw	24(r1), r9
	l.or	r5, r3, r3
	l.sfeq	r17, r19
	l.movhi	r3, ha(.LC21+4)
	l.or	r6, r4, r4
	l.or	r16, r20, r20
	l.movhi	r22, hi(1072693248)
	l.bf	.L1394
	l.lwz	r18, lo(.LC21+4)(r3)
.L1396:
	l.or	r3, r22, r22
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.lwz	r6, 0(r1)
	l.lwz	r5, 4(r1)
.L1394:
	l.ori	r4, r0, 31
	l.srl	r7, r16, r4
	l.add	r16, r7, r16
	l.ori	r8, r0, 1
	l.sra	r16, r16, r8
	l.movhi	r9, hi(0)
	l.sfeq	r16, r9
	l.bf	.L1395
	 l.nop

.L1397:
	l.or	r3, r5, r5
	l.jal	__muldf3
	l.or	r4, r6, r6
	l.andi	r13, r16, 1
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.movhi	r11, hi(0)
	l.ori	r12, r0, 31
	l.srl	r15, r16, r12
	l.sfne	r13, r11
	l.bf	.L1396
	l.add	r21, r15, r16
	l.ori	r23, r0, 1
	l.j	.L1397
	l.sra	r16, r21, r23
.L1395:
	l.movhi	r5, hi(0)
	l.sfges	r20, r5
	l.bf	.L1401
	l.or	r11, r22, r22
	l.or	r5, r22, r22
	l.or	r6, r18, r18
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.or	r11, r22, r22
.L1401:
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
	l.andi	r17, r4, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.or	r29, r4, r4
	l.bf	.L1403
	l.movhi	r11, hi(1065353216)
.L1405:
	lf.mul.s	r11, r11, r3
.L1403:
	l.ori	r5, r0, 31
	l.srl	r6, r29, r5
	l.add	r7, r6, r29
	l.ori	r8, r0, 1
	l.sra	r29, r7, r8
	l.movhi	r12, hi(0)
	l.sfeq	r29, r12
	l.bf	.L1404
	l.andi	r13, r29, 1
	l.movhi	r21, hi(0)
	l.ori	r15, r0, 31
	l.srl	r23, r29, r15
	l.sfne	r13, r21
	lf.mul.s	r3, r3, r3
	l.bf	.L1405
	l.add	r25, r23, r29
	l.ori	r27, r0, 1
	l.sra	r29, r25, r27
.L1411:
	l.andi	r13, r29, 1
	l.movhi	r21, hi(0)
	l.ori	r15, r0, 31
	l.srl	r23, r29, r15
	l.sfne	r13, r21
	lf.mul.s	r3, r3, r3
	l.bf	.L1405
	l.add	r25, r23, r29
	l.j	.L1411
	l.sra	r29, r25, r27
.L1404:
	l.movhi	r3, hi(0)
	l.sfges	r4, r3
	l.bnf	.L1410
	 l.nop

	l.jr	r9
	 l.nop

.L1410:
	l.movhi	r4, hi(1065353216)
	lf.div.s	r11, r4, r11
	l.jr	r9
	 l.nop

	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.sfltu	r3, r5
	l.bf	.L1416
	l.sfgtu	r3, r5
	l.bf	.L1417
	l.sfltu	r4, r6
	l.bf	.L1416
	l.sfgtu	r4, r6
	l.bf	.L1417
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1416:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1417:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1422
	l.sfgtu	r3, r5
	l.bf	.L1421
	l.sfltu	r4, r6
	l.bf	.L1422
	l.sfgtu	r4, r6
	l.bnf	.L1424
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1422:
	l.jr	r9
	l.xori	r11, r0, -1
.L1424:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1421:
	l.jr	r9
	l.ori	r11, r0, 1
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
	.align 4
	.set	.LANCHOR1,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.global	__divdf3
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__gedf2
	.global	__ledf2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__muldi3
	.global	__ltdf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
