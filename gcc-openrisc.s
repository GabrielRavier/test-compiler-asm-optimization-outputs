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
	l.bf	.L199
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L204
	l.or	r4, r18, r18
	l.movhi	r11, hi(0)
.L195:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L204:
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.lwz	r9, 12(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L198:
	l.j	.L195
	l.or	r11, r16, r16
.L199:
	l.j	.L195
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
	l.bf	.L223
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L224
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r3, r17, r16
	l.sfeq	r19, r3
	l.bf	.L219
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L217
	l.or	r11, r18, r18
.L223:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L219:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bnf	.L217
	l.or	r11, r16, r16
.L224:
	l.or	r11, r18, r18
.L217:
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
	l.bf	.L237
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L236
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r3, r16, r17
	l.sfeq	r19, r3
	l.bf	.L231
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L240
	l.or	r11, r22, r22
.L237:
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
.L231:
	l.or	r4, r18, r18
	l.or	r6, r20, r20
	l.jal	__ltdf2
	l.or	r3, r22, r22
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bf	.L232
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L239:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L236:
	l.or	r11, r22, r22
.L240:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L232:
	l.or	r16, r22, r22
	l.j	.L239
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
	l.bf	.L247
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L249
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r3, r20, r17
	l.sfeq	r19, r3
	l.bf	.L243
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L252
	l.or	r11, r16, r16
.L247:
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
.L243:
	l.or	r4, r18, r18
	l.or	r6, r22, r22
	l.jal	__ltdf2
	l.or	r3, r16, r16
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bf	.L251
	 l.nop

.L249:
	l.or	r11, r16, r16
.L252:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L251:
	l.or	r16, r20, r20
	l.j	.L249
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
	l.bf	.L259
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L260
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r3, r17, r16
	l.sfeq	r19, r3
	l.bf	.L255
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L253
	l.or	r11, r16, r16
.L260:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L255:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bnf	.L253
	l.or	r11, r18, r18
.L259:
	l.or	r11, r16, r16
.L253:
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
	l.bf	.L271
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L273
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r3, r20, r17
	l.sfeq	r19, r3
	l.bf	.L267
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L276
	l.or	r11, r16, r16
.L271:
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
.L267:
	l.or	r4, r18, r18
	l.or	r6, r22, r22
	l.jal	__ltdf2
	l.or	r3, r16, r16
	l.movhi	r4, hi(0)
	l.sfges	r11, r4
	l.bf	.L275
	 l.nop

.L273:
	l.or	r11, r16, r16
.L276:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L275:
	l.or	r16, r20, r20
	l.j	.L273
	l.or	r18, r22, r22
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.movhi	r11, ha(.LANCHOR0)
	l.sfeq	r3, r17
	l.bf	.L280
	l.addi	r11, r11, lo(.LANCHOR0)
	l.movhi	r21, ha(.LANCHOR1)
	l.or	r19, r11, r11
	l.addi	r4, r21, lo(.LANCHOR1)
.L279:
	l.andi	r5, r3, 63
	l.add	r6, r4, r5
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.lbz	r7, 0(r6)
	l.movhi	r8, hi(0)
	l.sfne	r3, r8
	l.sb	0(r19), r7
	l.bf	.L279
	l.addi	r19, r19, 1
	l.jr	r9
	l.sb	0(r19), r0
.L280:
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
	l.bf	.L284
	l.ori	r3, r0, 1
	l.movhi	r3, hi(0)
.L284:
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
	l.bnf	.L293
	l.movhi	r19, hi(0)
	l.lwz	r5, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r5
	l.sw	0(r4), r3
	l.lwz	r4, 0(r3)
	l.sfeq	r4, r19
	l.bf	.L287
	 l.nop

	l.sw	4(r4), r3
.L287:
	l.jr	r9
	 l.nop

.L293:
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
	l.bf	.L303
	l.movhi	r21, hi(0)
	l.lwz	r4, 4(r3)
	l.sw	4(r17), r4
.L303:
	l.lwz	r3, 4(r3)
	l.sfeq	r3, r21
	l.bf	.L294
	 l.nop

	l.sw	0(r3), r17
.L294:
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
	l.bf	.L305
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L307
	l.movhi	r18, hi(0)
.L320:
	l.sfne	r22, r18
	l.bnf	.L322
	l.addi	r4, r22, 1
.L307:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r3, hi(0)
	l.sfeq	r11, r3
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L320
	l.add	r16, r16, r20
.L304:
	l.or	r11, r14, r14
.L321:
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
.L305:
	l.addi	r4, r22, 1
.L322:
	l.movhi	r6, hi(0)
	l.mul	r5, r20, r22
	l.sw	0(r28), r4
	l.sfeq	r20, r6
	l.bf	.L304
	l.add	r14, r30, r5
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L321
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
	l.bf	.L324
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L326
	l.movhi	r18, hi(0)
.L335:
	l.sfne	r28, r18
	l.bnf	.L323
	l.movhi	r26, hi(0)
.L326:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.movhi	r3, hi(0)
	l.sfeq	r11, r3
	l.or	r26, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L335
	l.add	r16, r16, r22
.L323:
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
.L324:
	l.j	.L323
	l.movhi	r26, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L337
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L337:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L345:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L339
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L339
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L340
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L357
	l.addi	r12, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r12, r8, -48
	l.ori	r11, r0, 9
	l.sfgtu	r12, r11
	l.bf	.L350
	l.addi	r3, r3, 1
	l.ori	r27, r0, 1
.L343:
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 9
	l.ori	r29, r0, 2
.L359:
	l.sll	r31, r15, r29
	l.add	r21, r31, r15
	l.lbs	r23, 1(r3)
	l.add	r4, r21, r21
	l.or	r17, r12, r12
	l.sub	r15, r4, r12
	l.addi	r12, r23, -48
	l.sfleu	r12, r25
	l.bf	.L359
	l.addi	r3, r3, 1
	l.movhi	r3, hi(0)
	l.sfne	r27, r3
	l.bf	.L338
	 l.nop

	l.sub	r15, r17, r4
.L338:
	l.jr	r9
	l.or	r11, r15, r15
.L339:
	l.j	.L345
	l.addi	r3, r3, 1
.L357:
	l.ori	r13, r0, 9
	l.sfleu	r12, r13
	l.bf	.L343
	l.movhi	r27, hi(0)
.L350:
	l.movhi	r15, hi(0)
.L358:
	l.jr	r9
	l.or	r11, r15, r15
.L340:
	l.lbs	r5, 1(r3)
	l.addi	r12, r5, -48
	l.ori	r6, r0, 9
	l.sfleu	r12, r6
	l.addi	r3, r3, 1
	l.bf	.L343
	l.movhi	r27, hi(0)
	l.j	.L358
	l.movhi	r15, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L365:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L361
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L361
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L362
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L379
	l.addi	r12, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r12, r8, -48
	l.ori	r11, r0, 9
	l.sfleu	r12, r11
	l.addi	r3, r3, 1
	l.bnf	.L372
	l.ori	r27, r0, 1
.L366:
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 9
	l.ori	r29, r0, 2
.L381:
	l.sll	r31, r15, r29
	l.add	r21, r31, r15
	l.lbs	r23, 1(r3)
	l.add	r4, r21, r21
	l.or	r17, r12, r12
	l.sub	r15, r4, r12
	l.addi	r12, r23, -48
	l.sfleu	r12, r25
	l.bf	.L381
	l.addi	r3, r3, 1
	l.movhi	r3, hi(0)
	l.sfne	r27, r3
	l.bf	.L360
	 l.nop

	l.sub	r15, r17, r4
.L360:
	l.jr	r9
	l.or	r11, r15, r15
.L361:
	l.j	.L365
	l.addi	r3, r3, 1
.L379:
	l.ori	r13, r0, 9
	l.sfleu	r12, r13
	l.bnf	.L380
	l.movhi	r15, hi(0)
.L373:
	l.j	.L366
	l.movhi	r27, hi(0)
.L362:
	l.lbs	r5, 1(r3)
	l.addi	r12, r5, -48
	l.ori	r6, r0, 9
	l.sfgtu	r12, r6
	l.bnf	.L373
	l.addi	r3, r3, 1
.L372:
	l.movhi	r15, hi(0)
.L380:
	l.jr	r9
	l.or	r11, r15, r15
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L389:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L383
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L383
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L384
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L405
	l.addi	r15, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r15, r8, -48
	l.ori	r11, r0, 9
	l.sfgtu	r15, r11
	l.bf	.L394
	l.addi	r3, r3, 1
	l.ori	r13, r0, 1
.L387:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.ori	r29, r0, 9
.L391:
	l.ori	r27, r0, 2
	l.sll	r31, r12, r27
	l.add	r21, r31, r12
	l.ori	r25, r0, 30
	l.srl	r19, r12, r25
	l.sll	r23, r11, r27
	l.sfltu	r21, r31
	l.or	r4, r19, r23
	l.add	r5, r21, r21
	l.bf	.L402
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L402:
	l.add	r6, r4, r11
	l.sfltu	r5, r21
	l.add	r7, r17, r6
	l.sub	r12, r5, r15
	l.bf	.L403
	l.ori	r8, r0, 1
	l.movhi	r8, hi(0)
.L403:
	l.add	r11, r7, r7
	l.ori	r27, r0, 31
	l.sfgtu	r12, r5
	l.sra	r25, r15, r27
	l.add	r23, r8, r11
	l.lbs	r19, 1(r3)
	l.or	r31, r15, r15
	l.bf	.L404
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L404:
	l.addi	r15, r19, -48
	l.sub	r4, r23, r25
	l.sfleu	r15, r29
	l.addi	r3, r3, 1
	l.bf	.L391
	l.sub	r11, r4, r21
	l.movhi	r3, hi(0)
	l.sfne	r13, r3
	l.bf	.L382
	 l.nop

	l.sub	r12, r31, r5
	l.sfgtu	r12, r31
	l.bf	.L401
	l.ori	r15, r0, 1
	l.movhi	r15, hi(0)
.L401:
	l.sub	r13, r25, r23
	l.sub	r11, r13, r15
.L382:
	l.jr	r9
	 l.nop

.L383:
	l.j	.L389
	l.addi	r3, r3, 1
.L405:
	l.ori	r12, r0, 9
	l.sfleu	r15, r12
	l.bf	.L387
	l.movhi	r13, hi(0)
.L394:
	l.movhi	r11, hi(0)
.L406:
	l.jr	r9
	l.movhi	r12, hi(0)
.L384:
	l.lbs	r5, 1(r3)
	l.addi	r15, r5, -48
	l.ori	r6, r0, 9
	l.sfleu	r15, r6
	l.addi	r3, r3, 1
	l.bf	.L387
	l.movhi	r13, hi(0)
	l.j	.L406
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
	l.bf	.L408
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.j	.L411
	l.or	r26, r7, r7
.L421:
	l.sfeq	r11, r4
	l.bf	.L407
	l.sub	r16, r16, r28
	l.movhi	r5, hi(0)
	l.sfne	r16, r5
	l.bnf	.L408
	l.add	r20, r18, r22
.L411:
	l.ori	r3, r0, 1
	l.srl	r28, r16, r3
	l.mul	r18, r28, r22
	l.add	r18, r20, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r4, hi(0)
	l.sflts	r11, r4
	l.bnf	.L421
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.movhi	r5, hi(0)
	l.sfne	r16, r5
	l.bf	.L411
	 l.nop

.L408:
	l.movhi	r18, hi(0)
.L407:
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
	l.bnf	.L427
	l.or	r28, r8, r8
.L435:
	l.ori	r14, r0, 1
.L438:
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
	l.bf	.L422
	l.sra	r16, r16, r14
	l.sfles	r11, r3
	l.bf	.L425
	l.sfne	r16, r3
	l.bf	.L435
	l.add	r20, r18, r22
.L427:
	l.movhi	r18, hi(0)
.L422:
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
.L425:
	l.movhi	r4, hi(0)
	l.sfeq	r30, r4
	l.bf	.L427
	l.or	r16, r30, r30
	l.j	.L438
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
	l.bf	.L441
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.ori	r11, r0, 1
	l.sub	r12, r0, r4
	l.bnf	.L444
	l.or	r4, r11, r11
	l.sub	r3, r0, r3
	l.sub	r11, r3, r4
.L441:
	l.jr	r9
	 l.nop

.L444:
	l.movhi	r4, hi(0)
	l.sub	r3, r0, r3
	l.j	.L441
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
	l.bf	.L448
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L448:
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
	l.bf	.L451
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.ori	r11, r0, 1
	l.sub	r12, r0, r4
	l.bnf	.L454
	l.or	r4, r11, r11
	l.sub	r3, r0, r3
	l.sub	r11, r3, r4
.L451:
	l.jr	r9
	 l.nop

.L454:
	l.movhi	r4, hi(0)
	l.sub	r3, r0, r3
	l.j	.L451
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
	l.bf	.L466
	l.sfne	r4, r17
	l.j	.L465
	l.movhi	r11, hi(0)
.L460:
	l.lwz	r17, 4(r3)
	l.sfeq	r17, r5
	l.bf	.L461
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L466:
	l.bf	.L460
	l.movhi	r5, hi(0)
	l.jr	r9
	l.or	r11, r3, r3
.L461:
	l.movhi	r11, hi(0)
.L465:
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
	l.bf	.L478
	l.movhi	r21, hi(0)
	l.j	.L477
	l.sfltu	r17, r19
.L470:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L469
	l.movhi	r21, hi(0)
.L478:
	l.sfne	r17, r21
	l.addi	r3, r3, 4
	l.bf	.L470
	l.addi	r4, r4, 4
.L469:
	l.sfltu	r17, r19
.L477:
	l.bf	.L467
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.bnf	.L476
	l.ori	r11, r0, 1
.L467:
	l.jr	r9
	 l.nop

.L476:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L480:
	l.addi	r17, r17, 4
	l.movhi	r21, hi(0)
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfne	r19, r21
	l.bf	.L480
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
	l.bf	.L482
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L489:
	l.lwz	r4, 4(r11)
	l.sfne	r4, r19
	l.bf	.L489
	l.addi	r11, r11, 4
	l.sub	r3, r11, r3
	l.ori	r5, r0, 2
	l.sra	r11, r3, r5
.L482:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L491
	l.movhi	r11, hi(0)
	l.j	.L504
	 l.nop

.L502:
	l.movhi	r7, hi(0)
	l.sfne	r6, r7
	l.bnf	.L493
	l.movhi	r8, hi(0)
	l.sfeq	r5, r8
	l.addi	r3, r3, 4
	l.bf	.L496
	l.addi	r4, r4, 4
.L491:
	l.lwz	r6, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r6, r19
	l.bnf	.L502
	l.addi	r5, r5, -1
.L493:
	l.lwz	r3, 0(r3)
	l.lwz	r4, 0(r4)
	l.sfgeu	r3, r4
	l.bnf	.L503
	l.sfgtu	r3, r4
	l.bnf	.L496
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L503:
	l.jr	r9
	l.xori	r11, r0, -1
.L496:
	l.movhi	r11, hi(0)
.L504:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L506
	l.movhi	r11, hi(0)
	l.j	.L513
	 l.nop

.L508:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L509
	l.addi	r3, r3, 4
.L506:
	l.lwz	r6, 0(r3)
	l.sfne	r6, r4
	l.bf	.L508
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L509:
	l.movhi	r11, hi(0)
.L513:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L515
	l.movhi	r11, hi(0)
	l.j	.L529
	 l.nop

.L517:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L529
	l.movhi	r11, hi(0)
.L515:
	l.lwz	r19, 0(r3)
	l.lwz	r6, 0(r4)
	l.sfeq	r19, r6
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L517
	l.addi	r4, r4, 4
	l.sfgeu	r19, r6
	l.bnf	.L528
	l.sfgtu	r19, r6
	l.bnf	.L520
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L520:
	l.movhi	r11, hi(0)
.L529:
	l.jr	r9
	 l.nop

.L528:
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
	l.bf	.L531
	l.or	r16, r3, r3
	l.ori	r6, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r6
.L531:
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
	l.bnf	.L544
	l.or	r11, r3, r3
	l.ori	r19, r0, 2
	l.sub	r21, r3, r4
	l.sll	r3, r5, r19
	l.sfltu	r21, r3
	l.addi	r17, r5, -1
	l.bnf	.L551
	l.movhi	r6, hi(0)
	l.sfeq	r5, r6
	l.bf	.L544
	l.ori	r8, r0, 2
	l.sll	r12, r17, r8
	l.add	r27, r4, r12
	l.add	r25, r11, r12
.L541:
	l.addi	r25, r25, -4
	l.lwz	r15, 0(r27)
	l.sfne	r4, r27
	l.sw	4(r25), r15
	l.bf	.L541
	l.addi	r27, r27, -4
.L544:
	l.jr	r9
	 l.nop

.L551:
	l.sfne	r5, r6
	l.xori	r23, r0, -1
	l.bnf	.L544
	l.or	r5, r11, r11
.L539:
	l.addi	r5, r5, 4
	l.addi	r17, r17, -1
	l.lwz	r7, 0(r4)
	l.sfne	r17, r23
	l.sw	-4(r5), r7
	l.bf	.L539
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
	l.bf	.L553
	l.addi	r17, r5, -1
	l.xori	r21, r0, -1
.L554:
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.sw	0(r3), r4
	l.bf	.L554
	l.addi	r3, r3, 4
.L553:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L560
	l.sfeq	r3, r4
	l.movhi	r11, hi(0)
	l.sfeq	r5, r11
	l.add	r12, r3, r5
	l.bf	.L559
	l.add	r21, r4, r5
.L562:
	l.addi	r12, r12, -1
	l.addi	r21, r21, -1
	l.lbs	r23, 0(r12)
	l.sfne	r3, r12
	l.bf	.L562
	l.sb	0(r21), r23
.L559:
	l.jr	r9
	 l.nop

.L560:
	l.bf	.L559
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L559
	l.addi	r6, r5, -1
	l.ori	r19, r0, 6
	l.sfleu	r6, r19
	l.bf	.L563
	l.addi	r8, r3, 1
	l.or	r7, r4, r3
	l.andi	r8, r7, 3
	l.movhi	r11, hi(0)
	l.sfne	r8, r11
	l.bf	.L563
	l.addi	r8, r3, 1
	l.sub	r12, r4, r8
	l.ori	r21, r0, 2
	l.sfleu	r12, r21
	l.bf	.L563
	l.srl	r23, r5, r21
	l.sll	r13, r23, r21
	l.or	r27, r4, r4
	l.add	r15, r3, r13
.L564:
	l.lwz	r25, 0(r3)
	l.addi	r3, r3, 4
	l.sw	0(r27), r25
	l.sfne	r15, r3
	l.bf	.L564
	l.addi	r27, r27, 4
	l.sfeq	r5, r13
	l.add	r4, r4, r13
	l.bf	.L559
	l.sub	r3, r5, r13
	l.lbs	r5, 0(r15)
	l.ori	r29, r0, 1
	l.sfeq	r3, r29
	l.bf	.L559
	l.sb	0(r4), r5
	l.lbs	r31, 1(r15)
	l.ori	r17, r0, 2
	l.sfeq	r3, r17
	l.bf	.L559
	l.sb	1(r4), r31
	l.lbs	r6, 2(r15)
	l.jr	r9
	l.sb	2(r4), r6
.L563:
	l.j	.L567
	l.add	r7, r3, r5
.L587:
	l.addi	r8, r8, 1
.L567:
	l.lbs	r19, -1(r8)
	l.sfne	r8, r7
	l.sb	0(r4), r19
	l.bf	.L587
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
	l.bf	.L589
	l.sll	r13, r4, r5
	l.or	r11, r12, r12
.L589:
	l.bf	.L590
	l.movhi	r15, hi(0)
	l.or	r15, r13, r13
.L590:
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
	l.bf	.L591
	l.srl	r3, r3, r27
	l.or	r7, r23, r23
.L591:
	l.bf	.L592
	l.movhi	r8, hi(0)
	l.or	r8, r3, r3
.L592:
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
	l.bf	.L594
	l.srl	r13, r3, r5
	l.or	r12, r11, r11
.L594:
	l.bf	.L595
	l.movhi	r15, hi(0)
	l.or	r15, r13, r13
.L595:
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
	l.bf	.L596
	l.sll	r4, r4, r27
	l.or	r7, r23, r23
.L596:
	l.bf	.L597
	l.movhi	r8, hi(0)
	l.or	r8, r4, r4
.L597:
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
	l.j	.L612
	l.ori	r19, r0, 32
.L615:
	l.sfne	r11, r19
	l.bnf	.L614
	 l.nop

.L612:
	l.srl	r17, r3, r11
	l.andi	r4, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r4, r21
	l.bf	.L615
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L614:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L619
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L616
	l.ori	r4, r0, 1
	l.ori	r11, r0, 1
.L622:
	l.sra	r3, r3, r4
	l.and	r5, r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L622
	l.addi	r11, r11, 1
.L616:
	l.jr	r9
	 l.nop

.L619:
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
	l.bf	.L623
	l.ori	r11, r0, 1
	l.movhi	r4, ha(.LC3)
	l.or	r3, r16, r16
	l.jal	__gtsf2
	l.lwz	r4, lo(.LC3)(r4)
	l.sfgts	r11, r18
	l.bnf	.L629
	l.ori	r11, r0, 1
.L623:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L629:
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
	l.bf	.L630
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC5)
	l.addi	r6, r5, lo(.LC5)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC5)(r5)
	l.jal	__gtdf2
	l.lwz	r6, 4(r6)
	l.sfgts	r11, r20
	l.bnf	.L636
	l.ori	r11, r0, 1
.L630:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L636:
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
	l.bf	.L637
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC7)
	l.addi	r6, r5, lo(.LC7)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC7)(r5)
	l.jal	__gtdf2
	l.lwz	r6, 4(r6)
	l.sfgts	r11, r20
	l.bnf	.L643
	l.ori	r11, r0, 1
.L637:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L643:
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
	l.bf	.L647
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L647
	l.sfges	r16, r18
	l.bf	.L649
	l.movhi	r18, hi(1073741824)
	l.movhi	r18, hi(1056964608)
.L649:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L662
	l.ori	r3, r0, 31
.L651:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.ori	r3, r0, 31
.L662:
	l.srl	r4, r16, r3
	l.add	r16, r4, r16
	l.ori	r5, r0, 1
	l.sra	r16, r16, r5
	l.movhi	r6, hi(0)
	l.sfeq	r16, r6
	l.bf	.L663
	l.or	r11, r20, r20
.L652:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r7, r16, 1
	l.or	r18, r11, r11
	l.movhi	r8, hi(0)
	l.ori	r11, r0, 31
	l.srl	r12, r16, r11
	l.sfne	r7, r8
	l.bf	.L651
	l.add	r13, r12, r16
	l.ori	r9, r0, 1
	l.j	.L652
	l.sra	r16, r13, r9
.L647:
	l.or	r11, r20, r20
.L663:
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
	l.bf	.L665
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
	l.bnf	.L665
	l.sfges	r16, r22
	l.bnf	.L680
	l.movhi	r17, ha(.LC10+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC10+4)(r17)
.L667:
	l.andi	r4, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r4, r19
	l.bf	.L681
	l.ori	r7, r0, 31
.L669:
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
.L681:
	l.srl	r8, r16, r7
	l.add	r16, r8, r16
	l.ori	r9, r0, 1
	l.sra	r16, r16, r9
	l.movhi	r11, hi(0)
	l.sfeq	r16, r11
	l.bf	.L682
	l.or	r11, r20, r20
.L670:
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
	l.bf	.L669
	l.add	r23, r21, r16
	l.ori	r25, r0, 1
	l.j	.L670
	l.sra	r16, r23, r25
.L665:
	l.or	r11, r20, r20
.L682:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L680:
	l.movhi	r3, ha(.LC11+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L667
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
	l.bf	.L684
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
	l.bnf	.L684
	l.sfges	r16, r22
	l.bnf	.L699
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC13+4)(r17)
.L686:
	l.andi	r4, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r4, r19
	l.bf	.L700
	l.ori	r7, r0, 31
.L688:
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
.L700:
	l.srl	r8, r16, r7
	l.add	r16, r8, r16
	l.ori	r9, r0, 1
	l.sra	r16, r16, r9
	l.movhi	r11, hi(0)
	l.sfeq	r16, r11
	l.bf	.L701
	l.or	r11, r20, r20
.L689:
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
	l.bf	.L688
	l.add	r23, r21, r16
	l.ori	r25, r0, 1
	l.j	.L689
	l.sra	r16, r23, r25
.L684:
	l.or	r11, r20, r20
.L701:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L699:
	l.movhi	r3, ha(.LC12+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L686
	l.lwz	r6, lo(.LC12+4)(r3)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L703
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.ori	r21, r0, 3
	l.sfleu	r17, r21
	l.bf	.L704
	l.or	r3, r3, r4
	l.and	r6, r3, r21
	l.sfne	r6, r19
	l.bf	.L704
	l.ori	r7, r0, 2
	l.srl	r25, r5, r7
	l.sll	r8, r25, r7
	l.or	r27, r11, r11
	l.add	r23, r4, r8
.L705:
	l.lwz	r12, 0(r27)
	l.lwz	r13, 0(r4)
	l.addi	r4, r4, 4
	l.xor	r15, r13, r12
	l.sw	0(r27), r15
	l.sfne	r23, r4
	l.bf	.L705
	l.addi	r27, r27, 4
	l.sfeq	r5, r8
	l.add	r4, r11, r8
	l.bf	.L703
	l.sub	r29, r5, r8
	l.lbz	r5, 0(r4)
	l.lbz	r31, 0(r23)
	l.xor	r19, r5, r31
	l.ori	r17, r0, 1
	l.sfeq	r29, r17
	l.bf	.L703
	l.sb	0(r4), r19
	l.lbz	r21, 1(r4)
	l.lbz	r3, 1(r23)
	l.xor	r6, r3, r21
	l.ori	r7, r0, 2
	l.sfeq	r29, r7
	l.bf	.L703
	l.sb	1(r4), r6
	l.lbz	r25, 2(r4)
	l.lbz	r8, 2(r23)
	l.xor	r23, r8, r25
	l.sb	2(r4), r23
.L703:
	l.jr	r9
	 l.nop

.L704:
	l.add	r12, r4, r5
	l.or	r29, r11, r11
.L707:
	l.lbz	r13, 0(r29)
	l.lbz	r15, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r27, r15, r13
	l.sfne	r12, r4
	l.sb	0(r29), r27
	l.bf	.L707
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
	l.bf	.L715
	l.or	r12, r3, r3
.L716:
	l.lbs	r3, 1(r12)
	l.movhi	r21, hi(0)
	l.sfne	r3, r21
	l.bf	.L716
	l.addi	r12, r12, 1
.L715:
	l.movhi	r6, hi(0)
	l.sfne	r5, r6
	l.bf	.L717
	 l.nop

	l.j	.L728
	l.sb	0(r12), r0
.L719:
	l.movhi	r13, hi(0)
	l.sfeq	r5, r13
	l.bf	.L718
	 l.nop

.L717:
	l.lbs	r7, 0(r4)
	l.movhi	r8, hi(0)
	l.sb	0(r12), r7
	l.sfne	r7, r8
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L719
	l.addi	r12, r12, 1
	l.jr	r9
	 l.nop

.L718:
	l.sb	0(r12), r0
.L728:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L729
	l.movhi	r11, hi(0)
	l.add	r5, r3, r11
.L738:
	l.lbs	r6, 0(r5)
	l.movhi	r19, hi(0)
	l.sfne	r6, r19
	l.bf	.L732
	 l.nop

.L729:
	l.jr	r9
	 l.nop

.L732:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L738
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
	l.bnf	.L744
	l.or	r11, r3, r3
.L740:
	l.j	.L743
	l.or	r3, r4, r4
.L742:
	l.sfeq	r19, r21
	l.bf	.L741
	 l.nop

.L743:
	l.lbs	r19, 0(r3)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L742
	l.addi	r3, r3, 1
	l.lbs	r21, 1(r11)
	l.movhi	r5, hi(0)
	l.sfeq	r21, r5
	l.bnf	.L740
	l.addi	r11, r11, 1
.L744:
	l.movhi	r11, hi(0)
.L741:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L749:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.bnf	.L752
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L752:
	l.sfne	r17, r19
	l.bf	.L749
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
	l.bf	.L764
	l.or	r5, r4, r4
.L755:
	l.lbs	r19, 1(r5)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L755
	l.addi	r5, r5, 1
	l.sfeq	r5, r4
	l.bf	.L764
	l.sub	r29, r5, r4
	l.andi	r31, r25, 0xff
	l.j	.L773
	l.addi	r11, r29, -1
.L775:
	l.sfne	r6, r7
	l.bnf	.L774
	l.addi	r3, r3, 1
.L773:
	l.lbs	r6, 0(r3)
	l.sfeq	r6, r25
	l.bnf	.L775
	l.movhi	r7, hi(0)
	l.or	r12, r31, r31
	l.add	r27, r3, r11
	l.or	r15, r4, r4
	l.j	.L757
	l.or	r8, r3, r3
.L776:
	l.bf	.L758
	l.addi	r8, r8, 1
	l.sfeq	r23, r12
	l.bnf	.L758
	l.movhi	r17, hi(0)
	l.lbz	r12, 0(r8)
	l.sfeq	r12, r17
	l.bf	.L758
	l.addi	r15, r15, 1
.L757:
	l.lbz	r23, 0(r15)
	l.movhi	r13, hi(0)
	l.sfeq	r23, r13
	l.bnf	.L776
	l.sfeq	r8, r27
.L758:
	l.lbz	r19, 0(r15)
	l.sfeq	r19, r12
	l.bf	.L764
	 l.nop

	l.j	.L773
	l.addi	r3, r3, 1
.L774:
	l.jr	r9
	l.movhi	r11, hi(0)
.L764:
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
	l.bf	.L788
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L781
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L789
	l.movhi	r17, hi(-2147483648)
.L781:
	l.or	r11, r16, r16
.L790:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L788:
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L790
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L789:
	l.j	.L781
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L791
	l.or	r11, r3, r3
	l.sfltu	r4, r6
	l.bf	.L802
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L802
	l.addi	r6, r6, -1
	l.lbs	r31, 0(r5)
	l.j	.L797
	l.addi	r5, r5, 1
.L801:
	l.or	r11, r27, r27
.L793:
	l.sfgeu	r25, r11
	l.bnf	.L802
	 l.nop

.L797:
	l.lbs	r3, 0(r11)
	l.sfne	r3, r31
	l.bf	.L801
	l.addi	r27, r11, 1
	l.movhi	r7, hi(0)
	l.sfeq	r6, r7
	l.bf	.L791
	l.or	r19, r5, r5
.L796:
	l.or	r8, r27, r27
	l.j	.L794
	l.add	r29, r27, r6
.L795:
	l.sfeq	r8, r29
	l.bf	.L791
	 l.nop

.L794:
	l.lbz	r23, 0(r8)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r8, r8, 1
	l.bf	.L795
	l.addi	r19, r19, 1
	l.sfgtu	r27, r25
	l.bf	.L802
	 l.nop

	l.lbs	r12, 0(r27)
	l.sfne	r12, r31
	l.bf	.L793
	l.addi	r11, r27, 1
	l.or	r13, r27, r27
	l.or	r19, r5, r5
	l.or	r27, r11, r11
	l.j	.L796
	l.or	r11, r13, r13
.L802:
	l.movhi	r11, hi(0)
.L791:
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
	l.bf	.L808
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L808:
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
	l.bf	.L836
	l.movhi	r3, ha(.LC18)
	l.addi	r24, r3, lo(.LC18)
	l.movhi	r5, hi(1072693248)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.jal	__gedf2
	l.lwz	r6, 4(r24)
	l.sfges	r11, r20
	l.bnf	.L837
	l.movhi	r14, hi(0)
.L816:
	l.movhi	r9, ha(.LC19)
	l.addi	r11, r9, lo(.LC19)
	l.movhi	r20, hi(0)
	l.lwz	r26, 0(r24)
	l.lwz	r28, lo(.LC19)(r9)
	l.lwz	r24, 4(r24)
	l.lwz	r22, 4(r11)
.L822:
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
	l.bf	.L822
	l.addi	r20, r20, 1
	l.movhi	r13, hi(0)
.L839:
	l.sfeq	r14, r13
	l.bf	.L829
	l.sw	0(r30), r20
	l.movhi	r15, hi(-2147483648)
	l.xor	r11, r16, r15
.L813:
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
.L837:
	l.movhi	r4, ha(.LC19)
	l.addi	r26, r4, lo(.LC19)
	l.movhi	r5, hi(1071644672)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	l.lwz	r6, 4(r26)
	l.sflts	r11, r20
	l.bnf	.L819
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bf	.L828
	l.or	r28, r16, r16
.L819:
	l.sw	0(r30), r0
	l.j	.L813
	l.or	r11, r16, r16
.L836:
	l.movhi	r19, hi(-2147483648)
	l.movhi	r17, ha(.LC16+4)
	l.movhi	r5, hi(-1074790400)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.xor	r28, r16, r19
	l.jal	__ledf2
	l.lwz	r6, lo(.LC16+4)(r17)
	l.sfles	r11, r22
	l.bnf	.L838
	l.movhi	r8, ha(.LC18)
	l.or	r16, r28, r28
	l.ori	r14, r0, 1
	l.j	.L816
	l.addi	r24, r8, lo(.LC18)
.L829:
	l.j	.L813
	l.or	r11, r16, r16
.L838:
	l.movhi	r6, ha(.LC17+4)
	l.movhi	r5, hi(-1075838976)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	l.lwz	r6, lo(.LC17+4)(r6)
	l.sfgts	r11, r22
	l.bnf	.L819
	l.movhi	r5, ha(.LC19)
	l.ori	r14, r0, 1
	l.addi	r26, r5, lo(.LC19)
.L817:
	l.or	r16, r28, r28
	l.movhi	r20, hi(0)
	l.lwz	r24, 0(r26)
	l.lwz	r22, 4(r26)
.L824:
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
	l.bf	.L824
	l.addi	r20, r20, -1
	l.j	.L839
	l.movhi	r13, hi(0)
.L828:
	l.j	.L817
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
	l.bf	.L840
	l.movhi	r12, hi(0)
.L843:
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
	l.bf	.L846
	l.ori	r31, r0, 1
	l.movhi	r31, hi(0)
.L846:
	l.sfltu	r21, r6
	l.srl	r3, r3, r27
	l.or	r4, r12, r4
	l.add	r11, r11, r29
	l.bf	.L847
	l.ori	r6, r0, 1
	l.movhi	r6, hi(0)
.L847:
	l.or	r17, r3, r4
	l.movhi	r19, hi(0)
	l.add	r5, r5, r5
	l.sfne	r17, r19
	l.add	r5, r6, r5
	l.add	r11, r31, r11
	l.or	r12, r15, r15
	l.bf	.L843
	l.or	r6, r21, r21
.L840:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bf	.L849
	l.ori	r12, r0, 1
	l.j	.L872
	l.sfleu	r4, r3
.L853:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r12, r12, r12
	l.bf	.L851
	l.movhi	r6, hi(0)
	l.sfeq	r11, r6
	l.bf	.L852
	 l.nop

.L849:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L853
	l.addi	r11, r11, -1
.L854:
	l.movhi	r11, hi(0)
.L855:
	l.sfgeu	r3, r4
	l.ori	r21, r0, 1
	l.sub	r7, r3, r4
	l.bnf	.L869
	l.srl	r4, r4, r21
	l.or	r3, r7, r7
.L869:
	l.ori	r8, r0, 1
	l.or	r13, r12, r12
	l.bf	.L870
	l.srl	r12, r12, r8
	l.movhi	r13, hi(0)
.L870:
	l.movhi	r15, hi(0)
	l.sfne	r12, r15
	l.bf	.L855
	l.or	r11, r11, r13
.L852:
	l.movhi	r4, hi(0)
.L874:
	l.sfne	r5, r4
	l.bnf	.L866
	 l.nop

	l.or	r11, r3, r3
.L866:
	l.jr	r9
	 l.nop

.L851:
	l.sfeq	r12, r6
	l.bnf	.L854
	l.movhi	r11, hi(0)
	l.j	.L874
	l.movhi	r4, hi(0)
.L872:
	l.bnf	.L867
	l.sub	r17, r3, r4
	l.or	r3, r17, r17
.L867:
	l.bf	.L852
	l.ori	r11, r0, 1
	l.j	.L852
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
	l.bf	.L877
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
.L877:
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
	l.bnf	.L891
	l.xor	r4, r4, r21
.L886:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L891:
	l.sfne	r5, r17
	l.bf	.L886
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
	l.bf	.L892
	l.movhi	r11, hi(0)
.L894:
	l.andi	r5, r3, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r3, r3, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r4
	l.sfne	r3, r8
	l.add	r11, r11, r7
	l.bf	.L894
	l.add	r4, r4, r4
.L892:
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
	l.bnf	.L901
	l.and	r6, r5, r27
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L931
	l.movhi	r8, hi(0)
.L901:
	l.movhi	r13, hi(0)
	l.sfne	r25, r13
	l.bnf	.L932
	l.ori	r23, r0, 3
	l.sll	r29, r25, r23
	l.or	r17, r4, r4
	l.or	r7, r3, r3
	l.add	r31, r29, r4
.L904:
	l.lwz	r27, 0(r17)
	l.lwz	r25, 4(r17)
	l.addi	r17, r17, 8
	l.sw	0(r7), r27
	l.sw	4(r7), r25
	l.sfne	r17, r31
	l.bf	.L904
	l.addi	r7, r7, 8
	l.sfleu	r5, r6
	l.bf	.L897
	 l.nop

	l.sub	r8, r5, r6
	l.addi	r21, r8, -1
	l.ori	r19, r0, 6
	l.sfleu	r21, r19
	l.bf	.L930
	l.addi	r11, r6, 1
	l.add	r19, r3, r6
	l.add	r12, r4, r11
	l.sub	r13, r19, r12
	l.ori	r15, r0, 2
	l.sfleu	r13, r15
	l.bf	.L906
	l.add	r17, r4, r6
	l.or	r23, r17, r19
	l.andi	r29, r23, 3
	l.movhi	r31, hi(0)
	l.sfne	r29, r31
	l.bf	.L906
	l.srl	r27, r8, r15
	l.sll	r25, r27, r15
	l.add	r7, r17, r25
.L907:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r7
	l.bf	.L907
	l.addi	r19, r19, 4
	l.sfeq	r8, r25
	l.bf	.L897
	l.add	r6, r6, r25
	l.add	r17, r4, r6
	l.lbs	r8, 0(r17)
	l.add	r19, r3, r6
	l.addi	r11, r6, 1
	l.sfleu	r5, r11
	l.bf	.L897
	l.sb	0(r19), r8
	l.add	r12, r4, r11
	l.lbs	r13, 0(r12)
	l.add	r15, r3, r11
	l.addi	r23, r6, 2
	l.sfleu	r5, r23
	l.bf	.L897
	l.sb	0(r15), r13
	l.add	r4, r4, r23
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r23
	l.sb	0(r3), r5
.L897:
	l.jr	r9
	 l.nop

.L931:
	l.sfne	r5, r8
	l.xori	r21, r0, -1
	l.bnf	.L897
	l.addi	r5, r5, -1
.L902:
	l.add	r19, r4, r5
	l.add	r11, r3, r5
	l.lbs	r12, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L902
	l.sb	0(r11), r12
	l.jr	r9
	 l.nop

.L932:
	l.movhi	r15, hi(0)
	l.sfne	r5, r15
	l.bnf	.L897
	 l.nop

.L930:
	l.add	r19, r3, r6
	l.add	r17, r4, r6
.L906:
	l.add	r29, r4, r5
.L909:
	l.lbs	r31, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r19), r31
	l.sfne	r17, r29
	l.bf	.L909
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
	l.bnf	.L937
	l.srl	r27, r5, r17
	l.add	r6, r4, r5
	l.sfgtu	r3, r6
	l.bnf	.L960
	l.movhi	r7, hi(0)
.L937:
	l.movhi	r11, hi(0)
	l.sfne	r27, r11
	l.bnf	.L936
	l.addi	r12, r27, -1
	l.ori	r13, r0, 8
	l.sfleu	r12, r13
	l.bf	.L940
	l.or	r15, r4, r3
	l.andi	r25, r15, 3
	l.movhi	r29, hi(0)
	l.sfne	r25, r29
	l.bf	.L940
	l.addi	r31, r4, 2
	l.sfeq	r3, r31
	l.bf	.L940
	l.ori	r17, r0, 2
	l.srl	r6, r5, r17
	l.sll	r7, r6, r17
	l.or	r8, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r7, r4
.L941:
	l.lwz	r21, 0(r8)
	l.addi	r8, r8, 4
	l.sw	0(r19), r21
	l.sfne	r8, r23
	l.bf	.L941
	l.addi	r19, r19, 4
	l.add	r11, r6, r6
	l.sfeq	r27, r11
	l.bf	.L936
	l.add	r27, r11, r11
	l.add	r12, r4, r27
	l.lhs	r13, 0(r12)
	l.add	r15, r3, r27
	l.sh	0(r15), r13
.L936:
	l.andi	r7, r5, 1
	l.movhi	r23, hi(0)
	l.sfeq	r7, r23
	l.bf	.L933
	l.add	r4, r4, r5
	l.lbs	r21, -1(r4)
.L963:
	l.add	r3, r3, r5
	l.sb	-1(r3), r21
.L933:
	l.jr	r9
	 l.nop

.L960:
	l.sfne	r5, r7
	l.addi	r8, r5, -1
	l.bnf	.L933
	l.xori	r23, r0, -1
.L938:
	l.add	r21, r4, r8
	l.add	r19, r3, r8
	l.lbs	r5, 0(r21)
	l.addi	r8, r8, -1
	l.sfne	r8, r23
	l.bf	.L938
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L940:
	l.add	r25, r27, r27
	l.or	r17, r4, r4
	l.or	r6, r3, r3
	l.add	r29, r25, r4
.L943:
	l.lhs	r31, 0(r17)
	l.addi	r17, r17, 2
	l.sh	0(r6), r31
	l.sfne	r29, r17
	l.bf	.L943
	l.addi	r6, r6, 2
	l.andi	r7, r5, 1
	l.movhi	r23, hi(0)
	l.sfeq	r7, r23
	l.bf	.L933
	l.add	r4, r4, r5
	l.j	.L963
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
	l.bnf	.L968
	l.and	r6, r5, r25
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L998
	l.movhi	r8, hi(0)
.L968:
	l.movhi	r13, hi(0)
	l.sfne	r23, r13
	l.bnf	.L999
	l.ori	r27, r0, 2
	l.sll	r29, r23, r27
	l.or	r17, r4, r4
	l.or	r23, r3, r3
	l.add	r31, r29, r4
.L971:
	l.lwz	r25, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r23), r25
	l.sfne	r17, r31
	l.bf	.L971
	l.addi	r23, r23, 4
	l.sfleu	r5, r6
	l.bf	.L964
	l.ori	r21, r0, 6
	l.sub	r7, r5, r6
	l.addi	r8, r7, -1
	l.sfleu	r8, r21
	l.bf	.L997
	l.addi	r11, r6, 1
	l.add	r12, r4, r11
	l.add	r19, r3, r6
	l.sub	r13, r19, r12
	l.ori	r15, r0, 2
	l.sfleu	r13, r15
	l.bf	.L973
	l.add	r11, r4, r6
	l.or	r27, r11, r19
	l.andi	r29, r27, 3
	l.movhi	r31, hi(0)
	l.sfne	r29, r31
	l.bf	.L973
	l.srl	r25, r7, r15
	l.sll	r8, r25, r15
	l.add	r23, r11, r8
.L974:
	l.lwz	r21, 0(r11)
	l.addi	r11, r11, 4
	l.sw	0(r19), r21
	l.sfne	r11, r23
	l.bf	.L974
	l.addi	r19, r19, 4
	l.sfeq	r7, r8
	l.bf	.L964
	l.add	r6, r6, r8
	l.add	r19, r4, r6
	l.lbs	r7, 0(r19)
	l.add	r11, r3, r6
	l.addi	r17, r6, 1
	l.sfleu	r5, r17
	l.bf	.L964
	l.sb	0(r11), r7
	l.add	r12, r4, r17
	l.lbs	r13, 0(r12)
	l.add	r15, r3, r17
	l.addi	r27, r6, 2
	l.sfleu	r5, r27
	l.bf	.L964
	l.sb	0(r15), r13
	l.add	r4, r4, r27
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r27
	l.sb	0(r3), r5
.L964:
	l.jr	r9
	 l.nop

.L998:
	l.sfne	r5, r8
	l.xori	r21, r0, -1
	l.bnf	.L964
	l.addi	r5, r5, -1
.L969:
	l.add	r19, r4, r5
	l.add	r11, r3, r5
	l.lbs	r12, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L969
	l.sb	0(r11), r12
	l.jr	r9
	 l.nop

.L999:
	l.movhi	r15, hi(0)
	l.sfne	r5, r15
	l.bnf	.L964
	 l.nop

.L997:
	l.add	r19, r3, r6
	l.add	r11, r4, r6
.L973:
	l.add	r29, r4, r5
.L976:
	l.lbs	r31, 0(r11)
	l.addi	r11, r11, 1
	l.sb	0(r19), r31
	l.sfne	r11, r29
	l.bf	.L976
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
	l.bf	.L1013
	l.ori	r5, r0, 14
	l.sra	r11, r3, r5
	l.sfne	r11, r19
	l.bf	.L1010
	l.ori	r6, r0, 13
	l.sra	r7, r3, r6
	l.sfne	r7, r19
	l.bf	.L1014
	l.ori	r8, r0, 12
	l.sra	r11, r3, r8
	l.sfne	r11, r19
	l.bf	.L1015
	l.ori	r12, r0, 11
	l.sra	r13, r3, r12
	l.sfne	r13, r19
	l.bf	.L1016
	l.ori	r15, r0, 10
	l.sra	r21, r3, r15
	l.sfne	r21, r19
	l.bf	.L1017
	l.ori	r23, r0, 9
	l.sra	r25, r3, r23
	l.sfne	r25, r19
	l.bf	.L1018
	l.ori	r27, r0, 8
	l.sra	r29, r3, r27
	l.sfne	r29, r19
	l.bf	.L1019
	l.ori	r31, r0, 7
	l.sra	r17, r3, r31
	l.sfne	r17, r19
	l.bf	.L1020
	l.ori	r4, r0, 6
	l.sra	r5, r3, r4
	l.sfne	r5, r19
	l.bf	.L1021
	l.ori	r6, r0, 5
	l.sra	r7, r3, r6
	l.sfne	r7, r19
	l.bf	.L1022
	l.ori	r8, r0, 4
	l.sra	r11, r3, r8
	l.sfne	r11, r19
	l.bf	.L1023
	l.ori	r12, r0, 3
	l.sra	r13, r3, r12
	l.sfne	r13, r19
	l.bf	.L1024
	l.ori	r15, r0, 2
	l.sra	r21, r3, r15
	l.sfne	r21, r19
	l.bf	.L1025
	l.ori	r23, r0, 1
	l.sra	r25, r3, r23
	l.sfne	r25, r19
	l.bf	.L1026
	l.sfeq	r3, r19
	l.bnf	.L1029
	l.ori	r11, r0, 16
.L1010:
	l.jr	r9
	 l.nop

.L1013:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1024:
	l.jr	r9
	l.ori	r11, r0, 12
.L1029:
	l.jr	r9
	l.ori	r11, r0, 15
.L1014:
	l.jr	r9
	l.ori	r11, r0, 2
.L1015:
	l.jr	r9
	l.ori	r11, r0, 3
.L1016:
	l.jr	r9
	l.ori	r11, r0, 4
.L1017:
	l.jr	r9
	l.ori	r11, r0, 5
.L1018:
	l.jr	r9
	l.ori	r11, r0, 6
.L1019:
	l.jr	r9
	l.ori	r11, r0, 7
.L1020:
	l.jr	r9
	l.ori	r11, r0, 8
.L1021:
	l.jr	r9
	l.ori	r11, r0, 9
.L1022:
	l.jr	r9
	l.ori	r11, r0, 10
.L1023:
	l.jr	r9
	l.ori	r11, r0, 11
.L1025:
	l.jr	r9
	l.ori	r11, r0, 13
.L1026:
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
	l.bf	.L1033
	l.andi	r3, r3, 0xffff
	l.andi	r4, r3, 2
	l.sfne	r4, r19
	l.bf	.L1034
	l.andi	r5, r3, 4
	l.sfne	r5, r19
	l.bf	.L1035
	l.andi	r6, r3, 8
	l.sfne	r6, r19
	l.bf	.L1036
	l.andi	r7, r3, 16
	l.sfne	r7, r19
	l.bf	.L1037
	l.andi	r8, r3, 32
	l.sfne	r8, r19
	l.bf	.L1038
	 l.nop

	l.andi	r11, r3, 64
	l.sfne	r11, r19
	l.bf	.L1039
	l.andi	r12, r3, 128
	l.sfne	r12, r19
	l.bf	.L1040
	l.andi	r13, r3, 256
	l.sfne	r13, r19
	l.bf	.L1041
	l.andi	r15, r3, 512
	l.sfne	r15, r19
	l.bf	.L1042
	l.andi	r21, r3, 1024
	l.sfne	r21, r19
	l.bf	.L1043
	l.andi	r23, r3, 2048
	l.sfne	r23, r19
	l.bf	.L1044
	l.andi	r25, r3, 4096
	l.sfne	r25, r19
	l.bf	.L1045
	l.andi	r27, r3, 8192
	l.sfne	r27, r19
	l.bf	.L1046
	l.andi	r29, r3, 16384
	l.sfne	r29, r19
	l.bf	.L1047
	l.ori	r31, r0, 15
	l.sra	r17, r3, r31
	l.sfeq	r17, r19
	l.bnf	.L1050
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L1033:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1034:
	l.jr	r9
	l.ori	r11, r0, 1
.L1045:
	l.jr	r9
	l.ori	r11, r0, 12
.L1050:
	l.jr	r9
	l.or	r11, r31, r31
.L1035:
	l.jr	r9
	l.ori	r11, r0, 2
.L1036:
	l.jr	r9
	l.ori	r11, r0, 3
.L1037:
	l.jr	r9
	l.ori	r11, r0, 4
.L1038:
	l.jr	r9
	l.ori	r11, r0, 5
.L1039:
	l.jr	r9
	l.ori	r11, r0, 6
.L1040:
	l.jr	r9
	l.ori	r11, r0, 7
.L1041:
	l.jr	r9
	l.ori	r11, r0, 8
.L1042:
	l.jr	r9
	l.ori	r11, r0, 9
.L1043:
	l.jr	r9
	l.ori	r11, r0, 10
.L1044:
	l.jr	r9
	l.ori	r11, r0, 11
.L1046:
	l.jr	r9
	l.ori	r11, r0, 13
.L1047:
	l.jr	r9
	l.ori	r11, r0, 14
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
	l.bf	.L1058
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L1058:
	l.jal	__subsf3
	l.or	r3, r18, r18
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r3, r0, 32768
	l.add	r11, r11, r3
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
	l.bf	.L1061
	l.movhi	r11, hi(0)
.L1063:
	l.andi	r5, r3, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r3, r3, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r4
	l.sfne	r3, r8
	l.add	r11, r11, r7
	l.bf	.L1063
	l.add	r4, r4, r4
.L1061:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L1066
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L1066
	 l.nop

.L1068:
	l.andi	r5, r4, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r4, r4, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r3
	l.sfne	r4, r8
	l.add	r11, r11, r7
	l.bf	.L1068
	l.add	r3, r3, r3
.L1066:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1073
	l.ori	r12, r0, 1
	l.j	.L1096
	l.sfgeu	r3, r4
.L1077:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r12, r12, r12
	l.bf	.L1075
	l.movhi	r6, hi(0)
	l.sfeq	r11, r6
	l.bf	.L1076
	 l.nop

.L1073:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1077
	l.addi	r11, r11, -1
.L1078:
	l.movhi	r11, hi(0)
.L1079:
	l.sfgeu	r3, r4
	l.ori	r21, r0, 1
	l.sub	r7, r3, r4
	l.bnf	.L1093
	l.srl	r4, r4, r21
	l.or	r3, r7, r7
.L1093:
	l.ori	r8, r0, 1
	l.or	r13, r12, r12
	l.bf	.L1094
	l.srl	r12, r12, r8
	l.movhi	r13, hi(0)
.L1094:
	l.movhi	r15, hi(0)
	l.sfne	r12, r15
	l.bf	.L1079
	l.or	r11, r11, r13
.L1076:
	l.movhi	r4, hi(0)
.L1098:
	l.sfne	r5, r4
	l.bnf	.L1090
	 l.nop

	l.or	r11, r3, r3
.L1090:
	l.jr	r9
	 l.nop

.L1075:
	l.sfeq	r12, r6
	l.bnf	.L1078
	l.movhi	r11, hi(0)
	l.j	.L1098
	l.movhi	r4, hi(0)
.L1096:
	l.bnf	.L1091
	l.sub	r17, r3, r4
	l.or	r3, r17, r17
.L1091:
	l.bf	.L1076
	l.ori	r11, r0, 1
	l.j	.L1076
	l.movhi	r11, hi(0)
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
	l.bf	.L1102
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L1105
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L1105:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L1102:
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
	l.bf	.L1109
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L1112
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1112:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1109:
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
	l.bnf	.L1131
	l.movhi	r5, hi(0)
	l.sfeq	r4, r5
	l.bf	.L1123
	l.movhi	r21, hi(0)
.L1119:
	l.ori	r12, r0, 32
	l.j	.L1122
	l.movhi	r11, hi(0)
.L1132:
	l.sfne	r12, r13
	l.bnf	.L1121
	 l.nop

.L1122:
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
	l.bnf	.L1132
	l.add	r3, r3, r3
.L1121:
	l.movhi	r3, hi(0)
	l.sfeq	r21, r3
	l.bf	.L1117
	 l.nop

	l.sub	r11, r0, r11
.L1117:
	l.jr	r9
	 l.nop

.L1131:
	l.sub	r4, r0, r4
	l.j	.L1119
	l.ori	r21, r0, 1
.L1123:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1162
	 l.nop

	l.ori	r17, r0, 1
	l.movhi	r25, hi(0)
.L1134:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1163
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.or	r25, r17, r17
	l.sfgtu	r3, r4
.L1163:
	l.or	r23, r3, r3
	l.or	r6, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1136
	l.ori	r8, r0, 1
	l.j	.L1159
	l.sfgeu	r3, r4
.L1140:
	l.movhi	r27, hi(0)
	l.sfne	r21, r27
	l.bnf	.L1141
	 l.nop

.L1136:
	l.add	r6, r6, r6
	l.sfgtu	r3, r6
	l.addi	r21, r21, -1
	l.bf	.L1140
	l.add	r8, r8, r8
.L1141:
	l.movhi	r3, hi(0)
	l.sfne	r8, r3
	l.bnf	.L1139
	l.movhi	r11, hi(0)
.L1138:
	l.sfgeu	r23, r6
	l.ori	r5, r0, 1
	l.sub	r4, r23, r6
	l.bnf	.L1155
	l.srl	r6, r6, r5
	l.or	r23, r4, r4
.L1155:
	l.ori	r7, r0, 1
	l.or	r12, r8, r8
	l.bf	.L1156
	l.srl	r8, r8, r7
	l.movhi	r12, hi(0)
.L1156:
	l.movhi	r13, hi(0)
	l.sfne	r8, r13
	l.bf	.L1138
	l.or	r11, r11, r12
.L1139:
	l.movhi	r15, hi(0)
	l.sfeq	r25, r15
	l.bf	.L1133
	 l.nop

	l.sub	r11, r0, r11
.L1133:
	l.jr	r9
	 l.nop

.L1162:
	l.sub	r3, r0, r3
	l.j	.L1134
	l.ori	r25, r0, 1
.L1159:
	l.bf	.L1139
	l.ori	r11, r0, 1
	l.j	.L1139
	l.movhi	r11, hi(0)
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1192
	 l.nop

	l.movhi	r23, hi(0)
.L1165:
	l.movhi	r5, hi(0)
	l.sfges	r4, r5
	l.bf	.L1166
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1166:
	l.sfgtu	r3, r4
	l.or	r7, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1167
	l.ori	r19, r0, 1
	l.j	.L1189
	l.sfgeu	r3, r4
.L1171:
	l.movhi	r25, hi(0)
	l.sfne	r21, r25
	l.bnf	.L1193
	l.movhi	r4, hi(0)
.L1167:
	l.add	r7, r7, r7
	l.sfgtu	r3, r7
	l.addi	r21, r21, -1
	l.bf	.L1171
	l.add	r19, r19, r19
	l.movhi	r4, hi(0)
.L1193:
	l.sfne	r19, r4
	l.bnf	.L1191
	 l.nop

.L1169:
	l.ori	r3, r0, 1
	l.sfgeu	r11, r7
	l.sub	r6, r11, r7
	l.srl	r19, r19, r3
	l.bnf	.L1186
	l.srl	r7, r7, r3
	l.or	r11, r6, r6
.L1186:
	l.movhi	r8, hi(0)
	l.sfne	r19, r8
	l.bf	.L1169
	 l.nop

.L1170:
	l.movhi	r12, hi(0)
	l.sfeq	r23, r12
	l.bf	.L1164
	 l.nop

	l.sub	r11, r0, r11
.L1164:
	l.jr	r9
	 l.nop

.L1192:
	l.sub	r3, r0, r3
	l.j	.L1165
	l.ori	r23, r0, 1
.L1189:
	l.bf	.L1170
	l.sub	r11, r3, r4
.L1191:
	l.j	.L1170
	l.or	r11, r3, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.bnf	.L1315
	l.ori	r23, r0, 16
	l.sll	r3, r4, r23
	l.movhi	r21, hi(0)
	l.sflts	r3, r21
	l.bf	.L1197
	l.add	r8, r4, r4
	l.andi	r17, r8, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1204
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1204
	l.ori	r12, r0, 2
	l.sll	r13, r4, r12
	l.andi	r17, r13, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1206
	l.sll	r15, r17, r23
	l.sflts	r15, r21
	l.bf	.L1206
	l.ori	r25, r0, 3
	l.sll	r27, r4, r25
	l.andi	r17, r27, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1208
	l.sll	r29, r17, r23
	l.sflts	r29, r21
	l.bf	.L1208
	l.ori	r31, r0, 4
	l.sll	r17, r4, r31
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1210
	l.sll	r3, r17, r23
	l.sflts	r3, r21
	l.bf	.L1210
	l.ori	r6, r0, 5
	l.sll	r7, r4, r6
	l.andi	r17, r7, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1212
	l.sll	r8, r17, r23
	l.sflts	r8, r21
	l.bf	.L1212
	l.ori	r19, r0, 6
	l.sll	r12, r4, r19
	l.andi	r17, r12, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1214
	l.sll	r13, r17, r23
	l.sflts	r13, r21
	l.bf	.L1214
	l.ori	r15, r0, 7
	l.sll	r25, r4, r15
	l.andi	r17, r25, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1216
	l.sll	r27, r17, r23
	l.sflts	r27, r21
	l.bf	.L1216
	l.ori	r29, r0, 8
	l.sll	r31, r4, r29
	l.andi	r17, r31, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1218
	l.sll	r3, r17, r23
	l.sflts	r3, r21
	l.bf	.L1218
	 l.nop

	l.ori	r17, r0, 9
	l.sll	r6, r4, r17
	l.andi	r17, r6, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1220
	l.sll	r7, r17, r23
	l.sflts	r7, r21
	l.bf	.L1220
	l.ori	r8, r0, 10
	l.sll	r19, r4, r8
	l.andi	r17, r19, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1199
	l.ori	r12, r0, 1024
	l.sll	r12, r17, r23
	l.sflts	r12, r21
	l.bf	.L1222
	l.ori	r13, r0, 11
	l.sll	r15, r4, r13
	l.andi	r17, r15, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1224
	l.sll	r25, r17, r23
	l.sflts	r25, r21
	l.bf	.L1224
	l.ori	r27, r0, 12
	l.sll	r29, r4, r27
	l.andi	r17, r29, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1226
	l.sll	r31, r17, r23
	l.sflts	r31, r21
	l.bf	.L1226
	l.ori	r3, r0, 13
	l.sll	r17, r4, r3
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1228
	l.sll	r6, r17, r23
	l.sflts	r6, r21
	l.bf	.L1228
	l.ori	r7, r0, 14
	l.sll	r8, r4, r7
	l.andi	r17, r8, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1230
	l.sll	r23, r17, r23
	l.sflts	r23, r21
	l.bf	.L1230
	l.ori	r19, r0, 15
	l.sll	r4, r4, r19
	l.andi	r7, r4, 0xffff
	l.sfleu	r11, r7
	l.bf	.L1231
	l.sfeq	r7, r21
	l.bnf	.L1316
	l.ori	r12, r0, 32768
.L1200:
	l.movhi	r31, hi(0)
.L1319:
	l.sfne	r5, r31
	l.bf	.L1275
	 l.nop

	l.or	r11, r7, r7
.L1275:
	l.jr	r9
	 l.nop

.L1204:
	l.ori	r12, r0, 2
.L1199:
	l.sfgeu	r11, r17
	l.bf	.L1317
	l.sub	r21, r11, r17
	l.or	r21, r11, r11
	l.sfgeu	r11, r17
.L1317:
	l.andi	r13, r12, 0xffff
	l.bf	.L1277
	l.andi	r11, r21, 0xffff
	l.movhi	r13, hi(0)
.L1277:
	l.ori	r15, r0, 1
	l.srl	r27, r17, r15
	l.sfgeu	r11, r27
	l.srl	r25, r12, r15
	l.bf	.L1318
	l.sub	r29, r11, r27
	l.or	r29, r11, r11
	l.sfgeu	r11, r27
.L1318:
	l.or	r31, r25, r25
	l.bf	.L1309
	l.andi	r11, r29, 0xffff
	l.movhi	r31, hi(0)
.L1309:
	l.ori	r6, r0, 2
	l.srl	r19, r12, r6
	l.movhi	r23, hi(0)
	l.or	r3, r13, r31
	l.sfeq	r19, r23
	l.andi	r7, r3, 0xffff
	l.bf	.L1200
	l.srl	r8, r17, r6
	l.sfgeu	r11, r8
	l.bf	.L1306
	l.sub	r4, r11, r8
	l.or	r4, r29, r29
.L1306:
	l.bf	.L1307
	l.andi	r11, r4, 0xffff
	l.movhi	r19, hi(0)
.L1307:
	l.ori	r13, r0, 3
	l.srl	r21, r12, r13
	l.movhi	r25, hi(0)
	l.or	r7, r7, r19
	l.sfeq	r21, r25
	l.andi	r7, r7, 0xffff
	l.bf	.L1200
	l.srl	r15, r17, r13
	l.sfgeu	r11, r15
	l.bf	.L1304
	l.sub	r27, r11, r15
	l.or	r27, r4, r4
.L1304:
	l.bf	.L1305
	l.andi	r11, r27, 0xffff
	l.movhi	r21, hi(0)
.L1305:
	l.ori	r31, r0, 4
	l.srl	r23, r12, r31
	l.movhi	r6, hi(0)
	l.or	r29, r7, r21
	l.sfeq	r23, r6
	l.andi	r7, r29, 0xffff
	l.bf	.L1200
	l.srl	r3, r17, r31
	l.sfgeu	r11, r3
	l.bf	.L1302
	l.sub	r8, r11, r3
	l.or	r8, r27, r27
.L1302:
	l.bf	.L1303
	l.andi	r11, r8, 0xffff
	l.movhi	r23, hi(0)
.L1303:
	l.ori	r19, r0, 5
	l.srl	r25, r12, r19
	l.movhi	r15, hi(0)
	l.or	r4, r7, r23
	l.sfeq	r25, r15
	l.andi	r7, r4, 0xffff
	l.bf	.L1200
	l.srl	r13, r17, r19
	l.sfgeu	r11, r13
	l.bf	.L1300
	l.sub	r27, r11, r13
	l.or	r27, r8, r8
.L1300:
	l.bf	.L1301
	l.andi	r11, r27, 0xffff
	l.movhi	r25, hi(0)
.L1301:
	l.ori	r21, r0, 6
	l.srl	r6, r12, r21
	l.movhi	r31, hi(0)
	l.or	r7, r7, r25
	l.sfeq	r6, r31
	l.andi	r7, r7, 0xffff
	l.bf	.L1319
	l.srl	r29, r17, r21
	l.sfgeu	r11, r29
	l.bf	.L1298
	l.sub	r3, r11, r29
	l.or	r3, r27, r27
.L1298:
	l.bf	.L1299
	l.andi	r11, r3, 0xffff
	l.movhi	r6, hi(0)
.L1299:
	l.ori	r23, r0, 7
	l.srl	r15, r12, r23
	l.movhi	r19, hi(0)
	l.or	r8, r7, r6
	l.sfeq	r15, r19
	l.andi	r7, r8, 0xffff
	l.bf	.L1200
	l.srl	r4, r17, r23
	l.sfgeu	r11, r4
	l.bf	.L1296
	l.sub	r13, r11, r4
	l.or	r13, r3, r3
.L1296:
	l.bf	.L1297
	l.andi	r11, r13, 0xffff
	l.movhi	r15, hi(0)
.L1297:
	l.ori	r25, r0, 8
	l.srl	r3, r12, r25
	l.movhi	r29, hi(0)
	l.or	r27, r7, r15
	l.sfeq	r3, r29
	l.andi	r7, r27, 0xffff
	l.bf	.L1200
	l.srl	r21, r17, r25
	l.sfgeu	r11, r21
	l.bf	.L1294
	l.sub	r31, r11, r21
	l.or	r31, r13, r13
.L1294:
	l.bf	.L1295
	l.andi	r11, r31, 0xffff
	l.movhi	r3, hi(0)
.L1295:
	l.ori	r6, r0, 9
	l.srl	r19, r12, r6
	l.movhi	r23, hi(0)
	l.or	r7, r7, r3
	l.sfeq	r19, r23
	l.andi	r7, r7, 0xffff
	l.bf	.L1200
	l.srl	r8, r17, r6
	l.sfgeu	r11, r8
	l.bf	.L1292
	l.sub	r4, r11, r8
	l.or	r4, r31, r31
.L1292:
	l.bf	.L1293
	l.andi	r11, r4, 0xffff
	l.movhi	r19, hi(0)
.L1293:
	l.ori	r15, r0, 10
	l.srl	r21, r12, r15
	l.movhi	r25, hi(0)
	l.or	r13, r7, r19
	l.sfeq	r21, r25
	l.andi	r7, r13, 0xffff
	l.bf	.L1200
	l.srl	r27, r17, r15
	l.sfgeu	r11, r27
	l.bf	.L1290
	l.sub	r29, r11, r27
	l.or	r29, r4, r4
.L1290:
	l.bf	.L1291
	l.andi	r11, r29, 0xffff
	l.movhi	r21, hi(0)
.L1291:
	l.ori	r3, r0, 11
	l.srl	r4, r12, r3
	l.movhi	r8, hi(0)
	l.or	r31, r7, r21
	l.sfeq	r4, r8
	l.andi	r7, r31, 0xffff
	l.bf	.L1200
	l.srl	r6, r17, r3
	l.sfgeu	r11, r6
	l.bf	.L1288
	l.sub	r23, r11, r6
	l.or	r23, r29, r29
.L1288:
	l.bf	.L1289
	l.andi	r11, r23, 0xffff
	l.movhi	r4, hi(0)
.L1289:
	l.ori	r13, r0, 12
	l.srl	r19, r12, r13
	l.movhi	r27, hi(0)
	l.or	r7, r7, r4
	l.sfeq	r19, r27
	l.andi	r7, r7, 0xffff
	l.bf	.L1200
	l.srl	r15, r17, r13
	l.sfgeu	r11, r15
	l.bf	.L1286
	l.sub	r25, r11, r15
	l.or	r25, r23, r23
.L1286:
	l.bf	.L1287
	l.andi	r11, r25, 0xffff
	l.movhi	r19, hi(0)
.L1287:
	l.ori	r31, r0, 13
	l.srl	r21, r12, r31
	l.movhi	r6, hi(0)
	l.or	r29, r7, r19
	l.sfeq	r21, r6
	l.andi	r7, r29, 0xffff
	l.bf	.L1200
	l.srl	r3, r17, r31
	l.sfgeu	r11, r3
	l.bf	.L1284
	l.sub	r8, r11, r3
	l.or	r8, r25, r25
.L1284:
	l.bf	.L1285
	l.andi	r11, r8, 0xffff
	l.movhi	r21, hi(0)
.L1285:
	l.ori	r4, r0, 14
	l.srl	r25, r12, r4
	l.movhi	r15, hi(0)
	l.or	r23, r7, r21
	l.sfeq	r25, r15
	l.andi	r7, r23, 0xffff
	l.bf	.L1200
	l.srl	r13, r17, r4
	l.sfgeu	r11, r13
	l.bf	.L1282
	l.sub	r27, r11, r13
	l.or	r27, r8, r8
.L1282:
	l.bf	.L1283
	l.andi	r11, r27, 0xffff
	l.movhi	r25, hi(0)
.L1283:
	l.ori	r19, r0, 15
	l.srl	r29, r17, r19
	l.ori	r17, r0, 16384
	l.or	r7, r7, r25
	l.sfeq	r12, r17
	l.bf	.L1200
	l.andi	r7, r7, 0xffff
	l.sfgeu	r11, r29
	l.sub	r21, r11, r29
	l.bf	.L1311
	l.ori	r12, r0, 1
	l.movhi	r12, hi(0)
.L1311:
	l.bf	.L1281
	 l.nop

	l.or	r21, r27, r27
.L1281:
	l.andi	r11, r21, 0xffff
	l.j	.L1200
	l.or	r7, r12, r7
.L1206:
	l.j	.L1199
	l.ori	r12, r0, 4
.L1208:
	l.j	.L1199
	l.ori	r12, r0, 8
.L1210:
	l.j	.L1199
	l.ori	r12, r0, 16
.L1220:
	l.j	.L1199
	l.ori	r12, r0, 512
.L1212:
	l.j	.L1199
	l.ori	r12, r0, 32
.L1214:
	l.j	.L1199
	l.ori	r12, r0, 64
.L1216:
	l.j	.L1199
	l.ori	r12, r0, 128
.L1218:
	l.j	.L1199
	l.ori	r12, r0, 256
.L1315:
	l.sfeq	r4, r11
	l.bf	.L1310
	l.sub	r17, r11, r4
	l.or	r17, r11, r11
.L1310:
	l.andi	r11, r17, 0xffff
	l.bf	.L1200
	l.ori	r7, r0, 1
	l.j	.L1200
	l.movhi	r7, hi(0)
.L1222:
	l.j	.L1199
	l.ori	r12, r0, 1024
.L1224:
	l.j	.L1199
	l.ori	r12, r0, 2048
.L1226:
	l.j	.L1199
	l.ori	r12, r0, 4096
.L1228:
	l.j	.L1199
	l.ori	r12, r0, 8192
.L1230:
	l.j	.L1199
	l.ori	r12, r0, 16384
.L1316:
	l.j	.L1199
	l.or	r17, r12, r12
.L1231:
	l.ori	r17, r0, 32768
	l.j	.L1199
	l.or	r12, r17, r17
.L1197:
	l.sub	r6, r11, r4
	l.andi	r11, r6, 0xffff
	l.j	.L1200
	l.ori	r7, r0, 1
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1321
	l.ori	r12, r0, 1
	l.j	.L1344
	l.sfgeu	r3, r4
.L1325:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r12, r12, r12
	l.bf	.L1323
	l.movhi	r6, hi(0)
	l.sfeq	r11, r6
	l.bf	.L1324
	 l.nop

.L1321:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1325
	l.addi	r11, r11, -1
.L1326:
	l.movhi	r11, hi(0)
.L1327:
	l.sfgeu	r3, r4
	l.ori	r21, r0, 1
	l.sub	r7, r3, r4
	l.bnf	.L1341
	l.srl	r4, r4, r21
	l.or	r3, r7, r7
.L1341:
	l.ori	r8, r0, 1
	l.or	r13, r12, r12
	l.bf	.L1342
	l.srl	r12, r12, r8
	l.movhi	r13, hi(0)
.L1342:
	l.movhi	r15, hi(0)
	l.sfne	r12, r15
	l.bf	.L1327
	l.or	r11, r11, r13
.L1324:
	l.movhi	r4, hi(0)
.L1346:
	l.sfne	r5, r4
	l.bnf	.L1338
	 l.nop

	l.or	r11, r3, r3
.L1338:
	l.jr	r9
	 l.nop

.L1323:
	l.sfeq	r12, r6
	l.bnf	.L1326
	l.movhi	r11, hi(0)
	l.j	.L1346
	l.movhi	r4, hi(0)
.L1344:
	l.bnf	.L1339
	l.sub	r17, r3, r4
	l.or	r3, r17, r17
.L1339:
	l.bf	.L1324
	l.ori	r11, r0, 1
	l.j	.L1324
	l.movhi	r11, hi(0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1348
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1348:
	l.sfeq	r5, r6
	l.bf	.L1351
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.srl	r12, r4, r8
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r12, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1351:
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
	l.bf	.L1354
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.ori	r4, r0, 31
	l.sra	r11, r3, r4
	l.jr	r9
	l.sra	r12, r3, r5
.L1354:
	l.sfeq	r5, r6
	l.bf	.L1357
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.sll	r13, r3, r8
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r13, r12
.L1357:
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
	l.bf	.L1362
	l.or	r4, r25, r25
	l.movhi	r4, hi(0)
.L1362:
	l.ori	r5, r0, 4
	l.sll	r6, r4, r5
	l.ori	r7, r0, 16
	l.sub	r8, r7, r6
	l.srl	r3, r3, r8
	l.andi	r19, r3, 65280
	l.movhi	r29, hi(0)
	l.ori	r23, r0, 1
	l.sfeq	r19, r29
	l.bf	.L1363
	l.or	r11, r23, r23
	l.movhi	r11, hi(0)
.L1363:
	l.ori	r12, r0, 3
	l.sll	r13, r11, r12
	l.ori	r15, r0, 8
	l.sub	r21, r15, r13
	l.srl	r27, r3, r21
	l.andi	r31, r27, 240
	l.ori	r17, r0, 1
	l.sfeq	r31, r29
	l.bf	.L1364
	l.or	r25, r17, r17
	l.movhi	r25, hi(0)
.L1364:
	l.ori	r4, r0, 2
	l.sll	r5, r25, r4
	l.ori	r7, r0, 4
	l.sub	r8, r7, r5
	l.srl	r3, r27, r8
	l.andi	r19, r3, 12
	l.ori	r23, r0, 1
	l.sfeq	r19, r29
	l.bf	.L1365
	l.or	r12, r23, r23
	l.movhi	r12, hi(0)
.L1365:
	l.ori	r11, r0, 2
	l.add	r15, r12, r12
	l.sub	r21, r11, r15
	l.srl	r31, r3, r21
	l.and	r27, r31, r11
	l.add	r6, r13, r6
	l.sfeq	r27, r29
	l.sub	r13, r11, r31
	l.bf	.L1361
	l.add	r29, r5, r6
	l.movhi	r13, hi(0)
.L1361:
	l.add	r17, r15, r29
	l.jr	r9
	l.add	r11, r13, r17
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1370
	l.sfgts	r3, r5
	l.bf	.L1371
	l.sfltu	r4, r6
	l.bf	.L1370
	l.sfgtu	r4, r6
	l.bf	.L1371
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1370:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1371:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1376
	l.sfgts	r3, r5
	l.bf	.L1375
	l.sfltu	r4, r6
	l.bf	.L1376
	l.sfgtu	r4, r6
	l.bnf	.L1378
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1376:
	l.jr	r9
	l.xori	r11, r0, -1
.L1378:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1375:
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
	l.bf	.L1380
	l.or	r4, r25, r25
	l.movhi	r4, hi(0)
.L1380:
	l.ori	r5, r0, 4
	l.sll	r6, r4, r5
	l.srl	r3, r3, r6
	l.andi	r19, r3, 255
	l.ori	r23, r0, 1
	l.sfeq	r19, r27
	l.bf	.L1381
	l.or	r7, r23, r23
	l.movhi	r7, hi(0)
.L1381:
	l.ori	r8, r0, 3
	l.sll	r12, r7, r8
	l.srl	r11, r3, r12
	l.andi	r13, r11, 15
	l.ori	r21, r0, 1
	l.sfeq	r13, r27
	l.bf	.L1382
	l.or	r15, r21, r21
	l.movhi	r15, hi(0)
.L1382:
	l.ori	r29, r0, 2
	l.sll	r31, r15, r29
	l.srl	r17, r11, r31
	l.andi	r25, r17, 3
	l.sfeq	r25, r27
	l.ori	r27, r0, 1
	l.bf	.L1383
	l.or	r4, r27, r27
	l.movhi	r4, hi(0)
.L1383:
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
	l.bf	.L1385
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1387:
	l.jr	r9
	 l.nop

.L1385:
	l.sfeq	r5, r6
	l.bf	.L1388
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.sll	r11, r3, r8
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r11, r12
	l.j	.L1387
	l.or	r11, r3, r3
.L1388:
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
	l.bf	.L1392
	l.or	r4, r11, r11
	l.movhi	r4, hi(0)
.L1392:
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
	l.bf	.L1396
	l.or	r15, r13, r13
	l.movhi	r15, hi(0)
.L1396:
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
	l.bf	.L1397
	l.or	r13, r4, r4
	l.movhi	r13, hi(0)
.L1397:
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
	l.bf	.L1398
	l.or	r6, r19, r19
	l.movhi	r6, hi(0)
.L1398:
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
	l.bf	.L1401
	l.lwz	r18, lo(.LC21+4)(r3)
.L1403:
	l.or	r3, r22, r22
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.lwz	r6, 0(r1)
	l.lwz	r5, 4(r1)
.L1401:
	l.ori	r4, r0, 31
	l.srl	r7, r16, r4
	l.add	r16, r7, r16
	l.ori	r8, r0, 1
	l.sra	r16, r16, r8
	l.movhi	r9, hi(0)
	l.sfeq	r16, r9
	l.bf	.L1402
	 l.nop

.L1404:
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
	l.bf	.L1403
	l.add	r21, r15, r16
	l.ori	r23, r0, 1
	l.j	.L1404
	l.sra	r16, r21, r23
.L1402:
	l.movhi	r5, hi(0)
	l.sfges	r20, r5
	l.bf	.L1408
	l.or	r11, r22, r22
	l.or	r5, r22, r22
	l.or	r6, r18, r18
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.or	r11, r22, r22
.L1408:
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
	l.bf	.L1410
	l.movhi	r20, hi(1065353216)
.L1412:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
.L1410:
	l.ori	r3, r0, 31
	l.srl	r4, r16, r3
	l.add	r16, r4, r16
	l.ori	r5, r0, 1
	l.sra	r16, r16, r5
	l.movhi	r6, hi(0)
	l.sfeq	r16, r6
	l.bf	.L1411
	l.movhi	r15, hi(0)
.L1413:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r7, r16, 1
	l.or	r18, r11, r11
	l.movhi	r8, hi(0)
	l.ori	r11, r0, 31
	l.srl	r12, r16, r11
	l.sfne	r7, r8
	l.bf	.L1412
	l.add	r13, r12, r16
	l.ori	r9, r0, 1
	l.j	.L1413
	l.sra	r16, r13, r9
.L1411:
	l.sfges	r22, r15
	l.bf	.L1417
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.jal	__divsf3
	l.movhi	r3, hi(1065353216)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L1417:
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
	l.bf	.L1422
	l.sfgtu	r3, r5
	l.bf	.L1423
	l.sfltu	r4, r6
	l.bf	.L1422
	l.sfgtu	r4, r6
	l.bf	.L1423
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1422:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1423:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1428
	l.sfgtu	r3, r5
	l.bf	.L1427
	l.sfltu	r4, r6
	l.bf	.L1428
	l.sfgtu	r4, r6
	l.bnf	.L1430
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1428:
	l.jr	r9
	l.xori	r11, r0, -1
.L1430:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1427:
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
