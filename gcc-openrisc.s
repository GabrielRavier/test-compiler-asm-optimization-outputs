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
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L137
	l.ori	r4, r0, 9
	l.sfeq	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L137:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L138
	l.ori	r11, r0, 1
	l.ori	r4, r0, 127
	l.sfeq	r3, r4
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L138:
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
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	l.addi	r3, r3, -33
	l.ori	r17, r0, 93
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	l.addi	r3, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	l.addi	r3, r3, -32
	l.ori	r17, r0, 94
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L147
	l.addi	r3, r3, -9
	l.ori	r4, r0, 4
	l.sfleu	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L147:
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
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L149
	l.ori	r11, r0, 1
	l.addi	r4, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r4, r19
	l.bnf	.L154
	l.addi	r5, r3, -8232
.L149:
	l.jr	r9
	 l.nop

.L154:
	l.sfleu	r5, r11
	l.bf	.L149
	l.movhi	r6, hi(-65536)
	l.ori	r7, r6, 7
	l.add	r3, r3, r7
	l.ori	r8, r0, 2
	l.sfleu	r3, r8
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L163
	l.ori	r4, r0, 8231
	l.sfleu	r3, r4
	l.bf	.L161
	l.addi	r19, r3, -8234
	l.ori	r5, r0, 47061
	l.sfleu	r19, r5
	l.bf	.L161
	l.movhi	r6, hi(-65536)
	l.ori	r7, r6, 8192
	l.add	r8, r3, r7
	l.ori	r21, r0, 8184
	l.sfleu	r8, r21
	l.bf	.L161
	l.movhi	r12, hi(1048576)
	l.ori	r11, r6, 4
	l.add	r13, r3, r11
	l.ori	r15, r12, 3
	l.sfgtu	r13, r15
	l.bf	.L162
	l.andi	r3, r3, 65534
	l.ori	r23, r0, 65534
	l.sfne	r3, r23
	l.ori	r25, r0, 1
	l.jr	r9
	l.cmov	r11, r25, r0
.L161:
	l.jr	r9
	l.ori	r11, r0, 1
.L163:
	l.addi	r27, r3, 1
	l.andi	r29, r27, 127
	l.ori	r31, r0, 32
	l.sfgtu	r29, r31
	l.ori	r17, r0, 1
	l.jr	r9
	l.cmov	r11, r17, r0
.L162:
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
	l.addi	r4, r3, -97
	l.ori	r5, r0, 5
	l.sfleu	r4, r5
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L164:
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
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	lf.sfun.d	r17,r19, r17,r19
	l.or	r21, r5, r5
	l.bf	.L171
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L172
	l.or	r25, r5, r5
	lf.sfgt.d	r17,r19, r21,r23
	l.bf	.L176
	l.movhi	r25, hi(0)
	l.movhi	r17, ha(.LC0+4)
	l.lwz	r27, lo(.LC0+4)(r17)
.L168:
	l.or	r11, r25, r25
	l.jr	r9
	l.or	r12, r27, r27
.L176:
	lf.sub.d	r25,r27, r17,r19, r21,r23
	l.or	r11, r25, r25
	l.jr	r9
	l.or	r12, r27, r27
.L171:
	l.or	r25, r3, r3
	l.j	.L168
	l.or	r27, r4, r4
.L172:
	l.j	.L168
	l.or	r27, r6, r6
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	lf.sfun.s	r3, r3
	l.bf	.L180
	 l.nop

	lf.sfun.s	r4, r4
	l.bf	.L181
	 l.nop

	lf.sfgt.s	r3, r4
	l.bnf	.L184
	 l.nop

	lf.sub.s	r11, r3, r4
	l.jr	r9
	 l.nop

.L184:
	l.jr	r9
	l.movhi	r11, hi(0)
.L180:
	l.jr	r9
	l.or	r11, r3, r3
.L181:
	l.jr	r9
	l.or	r11, r4, r4
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.or	r21, r3, r3
	l.or	r23, r4, r4
	lf.sfun.d	r21,r23, r21,r23
	l.or	r17, r5, r5
	l.bf	.L192
	l.or	r19, r6, r6
	lf.sfun.d	r17,r19, r17,r19
	l.bf	.L191
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bf	.L187
	l.movhi	r4, hi(0)
	l.sfne	r27, r4
	l.bf	.L193
	l.or	r11, r17, r17
.L191:
	l.or	r11, r21, r21
.L194:
	l.jr	r9
	l.or	r12, r23, r23
.L187:
	lf.sflt.d	r21,r23, r17,r19
	l.bnf	.L194
	l.or	r11, r21, r21
.L192:
	l.or	r11, r17, r17
.L193:
	l.jr	r9
	l.or	r12, r19, r19
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	lf.sfun.s	r3, r3
	l.bf	.L200
	 l.nop

	lf.sfun.s	r4, r4
	l.bf	.L201
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r3
	l.and	r5, r17, r4
	l.sfeq	r19, r5
	l.bf	.L197
	l.movhi	r6, hi(0)
	l.sfne	r19, r6
	l.jr	r9
	l.cmov	r11, r4, r3
.L197:
	lf.sflt.s	r3, r4
	l.jr	r9
	l.cmov	r11, r4, r3
.L200:
	l.jr	r9
	l.or	r11, r4, r4
.L201:
	l.jr	r9
	l.or	r11, r3, r3
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.or	r21, r3, r3
	l.or	r23, r4, r4
	lf.sfun.d	r21,r23, r21,r23
	l.or	r17, r5, r5
	l.bf	.L210
	l.or	r19, r6, r6
	lf.sfun.d	r17,r19, r17,r19
	l.bf	.L209
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bf	.L205
	l.movhi	r4, hi(0)
	l.sfne	r27, r4
	l.bf	.L211
	l.or	r11, r17, r17
.L209:
	l.or	r11, r21, r21
.L212:
	l.jr	r9
	l.or	r12, r23, r23
.L205:
	lf.sflt.d	r21,r23, r17,r19
	l.bnf	.L212
	l.or	r11, r21, r21
.L210:
	l.or	r11, r17, r17
.L211:
	l.jr	r9
	l.or	r12, r19, r19
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	lf.sfun.d	r17,r19, r17,r19
	l.or	r21, r5, r5
	l.bf	.L218
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L220
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bf	.L215
	l.movhi	r4, hi(0)
	l.sfne	r27, r4
	l.bf	.L221
	l.or	r11, r17, r17
.L218:
	l.or	r11, r21, r21
.L222:
	l.jr	r9
	l.or	r12, r23, r23
.L215:
	lf.sflt.d	r17,r19, r21,r23
	l.bnf	.L222
	l.or	r11, r21, r21
.L220:
	l.or	r11, r17, r17
.L221:
	l.jr	r9
	l.or	r12, r19, r19
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	lf.sfun.s	r3, r3
	l.bf	.L228
	 l.nop

	lf.sfun.s	r4, r4
	l.bf	.L229
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r3
	l.and	r5, r17, r4
	l.sfeq	r19, r5
	l.bf	.L225
	l.movhi	r6, hi(0)
	l.sfne	r19, r6
	l.jr	r9
	l.cmov	r11, r3, r4
.L225:
	lf.sflt.s	r3, r4
	l.jr	r9
	l.cmov	r11, r3, r4
.L228:
	l.jr	r9
	l.or	r11, r4, r4
.L229:
	l.jr	r9
	l.or	r11, r3, r3
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	lf.sfun.d	r17,r19, r17,r19
	l.or	r21, r5, r5
	l.bf	.L236
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L238
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bf	.L233
	l.movhi	r4, hi(0)
	l.sfne	r27, r4
	l.bf	.L239
	l.or	r11, r17, r17
.L236:
	l.or	r11, r21, r21
.L240:
	l.jr	r9
	l.or	r12, r23, r23
.L233:
	lf.sflt.d	r17,r19, r21,r23
	l.bnf	.L240
	l.or	r11, r21, r21
.L238:
	l.or	r11, r17, r17
.L239:
	l.jr	r9
	l.or	r12, r19, r19
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.movhi	r11, ha(.LANCHOR0)
	l.sfeq	r3, r17
	l.bf	.L244
	l.addi	r11, r11, lo(.LANCHOR0)
	l.movhi	r21, ha(.LANCHOR1)
	l.or	r19, r11, r11
	l.addi	r4, r21, lo(.LANCHOR1)
.L243:
	l.andi	r5, r3, 63
	l.add	r6, r4, r5
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.lbz	r7, 0(r6)
	l.movhi	r8, hi(0)
	l.sfne	r3, r8
	l.sb	0(r19), r7
	l.bf	.L243
	l.addi	r19, r19, 1
	l.jr	r9
	l.sb	0(r19), r0
.L244:
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
	l.lwz	r3, 8(r16)
	l.lwz	r4, 12(r16)
	l.sw	4(r1), r9
	l.jal	__muldi3
	l.ori	r6, r6, 32557
	l.xori	r17, r0, -1
	l.sfgeu	r12, r17
	l.ori	r3, r0, 1
	l.cmov	r4, r3, r0
	l.add	r11, r4, r11
	l.addi	r12, r12, 1
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.ori	r7, r0, 1
	l.srl	r11, r11, r7
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
	l.bnf	.L255
	l.movhi	r19, hi(0)
	l.lwz	r5, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r5
	l.sw	0(r4), r3
	l.lwz	r4, 0(r3)
	l.sfeq	r4, r19
	l.bf	.L249
	 l.nop

	l.sw	4(r4), r3
.L249:
	l.jr	r9
	 l.nop

.L255:
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
	l.bf	.L265
	l.movhi	r21, hi(0)
	l.lwz	r4, 4(r3)
	l.sw	4(r17), r4
.L265:
	l.lwz	r3, 4(r3)
	l.sfeq	r3, r21
	l.bf	.L256
	 l.nop

	l.sw	0(r3), r17
.L256:
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
	l.bf	.L267
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L269
	l.movhi	r18, hi(0)
.L282:
	l.sfne	r22, r18
	l.bnf	.L284
	l.addi	r4, r22, 1
.L269:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r3, hi(0)
	l.sfeq	r11, r3
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L282
	l.add	r16, r16, r20
.L266:
	l.or	r11, r14, r14
.L283:
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
.L267:
	l.addi	r4, r22, 1
.L284:
	l.movhi	r6, hi(0)
	l.mul	r5, r20, r22
	l.sw	0(r28), r4
	l.sfeq	r20, r6
	l.bf	.L266
	l.add	r14, r30, r5
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L283
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
	l.bf	.L286
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L288
	l.movhi	r18, hi(0)
.L297:
	l.sfne	r28, r18
	l.bnf	.L285
	l.movhi	r26, hi(0)
.L288:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.movhi	r3, hi(0)
	l.sfeq	r11, r3
	l.or	r26, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L297
	l.add	r16, r16, r22
.L285:
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
.L286:
	l.j	.L285
	l.movhi	r26, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L299
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L299:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L307:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L301
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L301
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L302
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L319
	l.addi	r12, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r12, r8, -48
	l.ori	r11, r0, 9
	l.sfgtu	r12, r11
	l.bf	.L312
	l.addi	r3, r3, 1
	l.ori	r27, r0, 1
.L305:
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 9
	l.ori	r29, r0, 2
.L321:
	l.sll	r31, r15, r29
	l.add	r21, r31, r15
	l.lbs	r23, 1(r3)
	l.add	r4, r21, r21
	l.or	r17, r12, r12
	l.sub	r15, r4, r12
	l.addi	r12, r23, -48
	l.sfleu	r12, r25
	l.bf	.L321
	l.addi	r3, r3, 1
	l.movhi	r3, hi(0)
	l.sfne	r27, r3
	l.bf	.L300
	 l.nop

	l.sub	r15, r17, r4
.L300:
	l.jr	r9
	l.or	r11, r15, r15
.L301:
	l.j	.L307
	l.addi	r3, r3, 1
.L319:
	l.ori	r13, r0, 9
	l.sfleu	r12, r13
	l.bf	.L305
	l.movhi	r27, hi(0)
.L312:
	l.movhi	r15, hi(0)
.L320:
	l.jr	r9
	l.or	r11, r15, r15
.L302:
	l.lbs	r5, 1(r3)
	l.addi	r12, r5, -48
	l.ori	r6, r0, 9
	l.sfleu	r12, r6
	l.addi	r3, r3, 1
	l.bf	.L305
	l.movhi	r27, hi(0)
	l.j	.L320
	l.movhi	r15, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L327:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L323
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L323
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L324
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L341
	l.addi	r12, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r12, r8, -48
	l.ori	r11, r0, 9
	l.sfleu	r12, r11
	l.addi	r3, r3, 1
	l.bnf	.L334
	l.ori	r27, r0, 1
.L328:
	l.movhi	r15, hi(0)
	l.ori	r25, r0, 9
	l.ori	r29, r0, 2
.L343:
	l.sll	r31, r15, r29
	l.add	r21, r31, r15
	l.lbs	r23, 1(r3)
	l.add	r4, r21, r21
	l.or	r17, r12, r12
	l.sub	r15, r4, r12
	l.addi	r12, r23, -48
	l.sfleu	r12, r25
	l.bf	.L343
	l.addi	r3, r3, 1
	l.movhi	r3, hi(0)
	l.sfne	r27, r3
	l.bf	.L322
	 l.nop

	l.sub	r15, r17, r4
.L322:
	l.jr	r9
	l.or	r11, r15, r15
.L323:
	l.j	.L327
	l.addi	r3, r3, 1
.L341:
	l.ori	r13, r0, 9
	l.sfleu	r12, r13
	l.bnf	.L342
	l.movhi	r15, hi(0)
.L335:
	l.j	.L328
	l.movhi	r27, hi(0)
.L324:
	l.lbs	r5, 1(r3)
	l.addi	r12, r5, -48
	l.ori	r6, r0, 9
	l.sfgtu	r12, r6
	l.bnf	.L335
	l.addi	r3, r3, 1
.L334:
	l.movhi	r15, hi(0)
.L342:
	l.jr	r9
	l.or	r11, r15, r15
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L351:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L345
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L345
	l.ori	r4, r0, 43
	l.sfeq	r19, r4
	l.bf	.L346
	l.ori	r7, r0, 45
	l.sfeq	r19, r7
	l.bnf	.L363
	l.addi	r15, r19, -48
	l.lbs	r8, 1(r3)
	l.addi	r15, r8, -48
	l.ori	r11, r0, 9
	l.sfgtu	r15, r11
	l.bf	.L356
	l.addi	r3, r3, 1
	l.ori	r13, r0, 1
.L349:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.ori	r29, r0, 9
.L353:
	l.ori	r27, r0, 2
	l.sll	r31, r12, r27
	l.ori	r25, r0, 30
	l.add	r21, r31, r12
	l.srl	r19, r12, r25
	l.sll	r23, r11, r27
	l.sfltu	r21, r31
	l.or	r4, r19, r23
	l.ori	r17, r0, 1
	l.add	r5, r21, r21
	l.cmov	r6, r17, r0
	l.add	r7, r4, r11
	l.sfltu	r5, r21
	l.add	r8, r6, r7
	l.sub	r12, r5, r15
	l.ori	r11, r0, 1
	l.ori	r21, r0, 31
	l.cmov	r27, r11, r0
	l.sra	r25, r15, r21
	l.sfgtu	r12, r5
	l.lbs	r19, 1(r3)
	l.add	r31, r8, r8
	l.or	r4, r15, r15
	l.ori	r15, r0, 1
	l.cmov	r17, r15, r0
	l.add	r23, r27, r31
	l.addi	r15, r19, -48
	l.sub	r6, r23, r25
	l.sfleu	r15, r29
	l.addi	r3, r3, 1
	l.bf	.L353
	l.sub	r11, r6, r17
	l.movhi	r3, hi(0)
	l.sfne	r13, r3
	l.bf	.L344
	l.ori	r13, r0, 1
	l.sub	r12, r4, r5
	l.sfgtu	r12, r4
	l.cmov	r29, r13, r0
	l.sub	r5, r25, r23
	l.sub	r11, r5, r29
.L344:
	l.jr	r9
	 l.nop

.L345:
	l.j	.L351
	l.addi	r3, r3, 1
.L363:
	l.ori	r12, r0, 9
	l.sfleu	r15, r12
	l.bf	.L349
	l.movhi	r13, hi(0)
.L356:
	l.movhi	r11, hi(0)
.L364:
	l.jr	r9
	l.movhi	r12, hi(0)
.L346:
	l.lbs	r5, 1(r3)
	l.addi	r15, r5, -48
	l.ori	r6, r0, 9
	l.sfleu	r15, r6
	l.addi	r3, r3, 1
	l.bf	.L349
	l.movhi	r13, hi(0)
	l.j	.L364
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
	l.bf	.L366
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.j	.L369
	l.or	r26, r7, r7
.L379:
	l.sfeq	r11, r4
	l.bf	.L365
	l.sub	r16, r16, r28
	l.movhi	r5, hi(0)
	l.sfne	r16, r5
	l.bnf	.L366
	l.add	r20, r18, r22
.L369:
	l.ori	r3, r0, 1
	l.srl	r28, r16, r3
	l.mul	r18, r28, r22
	l.add	r18, r20, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r4, hi(0)
	l.sflts	r11, r4
	l.bnf	.L379
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.movhi	r5, hi(0)
	l.sfne	r16, r5
	l.bf	.L369
	 l.nop

.L366:
	l.movhi	r18, hi(0)
.L365:
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
	l.bnf	.L385
	l.or	r28, r8, r8
.L393:
	l.ori	r14, r0, 1
.L396:
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
	l.bf	.L380
	l.sra	r16, r16, r14
	l.sfles	r11, r3
	l.bf	.L383
	l.sfne	r16, r3
	l.bf	.L393
	l.add	r20, r18, r22
.L385:
	l.movhi	r18, hi(0)
.L380:
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
.L383:
	l.movhi	r4, hi(0)
	l.sfeq	r30, r4
	l.bf	.L385
	l.or	r16, r30, r30
	l.j	.L396
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
	l.bf	.L399
	l.or	r12, r4, r4
	l.ori	r11, r0, 1
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.sub	r3, r0, r3
	l.cmov	r4, r11, r0
	l.sub	r11, r3, r4
.L399:
	l.jr	r9
	 l.nop

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
	l.bf	.L404
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L404:
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
	l.bf	.L407
	l.or	r12, r4, r4
	l.ori	r11, r0, 1
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.sub	r3, r0, r3
	l.cmov	r4, r11, r0
	l.sub	r11, r3, r4
.L407:
	l.jr	r9
	 l.nop

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
	l.bf	.L420
	l.sfne	r4, r17
	l.j	.L419
	l.movhi	r11, hi(0)
.L414:
	l.lwz	r17, 4(r3)
	l.sfeq	r17, r5
	l.bf	.L415
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L420:
	l.bf	.L414
	l.movhi	r5, hi(0)
	l.jr	r9
	l.or	r11, r3, r3
.L415:
	l.movhi	r11, hi(0)
.L419:
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
	l.bf	.L430
	l.movhi	r21, hi(0)
	l.j	.L429
	l.sfltu	r17, r19
.L424:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L423
	l.movhi	r21, hi(0)
.L430:
	l.sfne	r17, r21
	l.addi	r3, r3, 4
	l.bf	.L424
	l.addi	r4, r4, 4
.L423:
	l.sfltu	r17, r19
.L429:
	l.bf	.L421
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L421:
	l.jr	r9
	 l.nop

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
	l.movhi	r17, hi(0)
	l.lwz	r11, 0(r3)
	l.sfeq	r11, r17
	l.bf	.L434
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L441:
	l.lwz	r4, 4(r11)
	l.sfne	r4, r19
	l.bf	.L441
	l.addi	r11, r11, 4
	l.sub	r3, r11, r3
	l.ori	r5, r0, 2
	l.sra	r11, r3, r5
.L434:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L443
	l.movhi	r11, hi(0)
	l.j	.L454
	 l.nop

.L452:
	l.movhi	r7, hi(0)
	l.sfne	r6, r7
	l.bnf	.L445
	l.movhi	r8, hi(0)
	l.sfeq	r5, r8
	l.addi	r3, r3, 4
	l.bf	.L448
	l.addi	r4, r4, 4
.L443:
	l.lwz	r6, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r6, r19
	l.bnf	.L452
	l.addi	r5, r5, -1
.L445:
	l.lwz	r3, 0(r3)
	l.lwz	r4, 0(r4)
	l.sfgeu	r3, r4
	l.bnf	.L453
	l.sfgtu	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L453:
	l.jr	r9
	l.xori	r11, r0, -1
.L448:
	l.movhi	r11, hi(0)
.L454:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L456
	l.movhi	r11, hi(0)
	l.j	.L463
	 l.nop

.L458:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L459
	l.addi	r3, r3, 4
.L456:
	l.lwz	r6, 0(r3)
	l.sfne	r6, r4
	l.bf	.L458
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L459:
	l.movhi	r11, hi(0)
.L463:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L465
	l.movhi	r11, hi(0)
	l.j	.L477
	 l.nop

.L467:
	l.movhi	r7, hi(0)
	l.sfeq	r5, r7
	l.bf	.L470
	l.movhi	r11, hi(0)
.L465:
	l.lwz	r19, 0(r3)
	l.lwz	r6, 0(r4)
	l.sfeq	r19, r6
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L467
	l.addi	r4, r4, 4
	l.sfgeu	r19, r6
	l.bnf	.L476
	l.sfgtu	r19, r6
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L470:
.L477:
	l.jr	r9
	 l.nop

.L476:
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
	l.bf	.L479
	l.or	r16, r3, r3
	l.ori	r6, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r6
.L479:
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
	l.bnf	.L492
	l.or	r11, r3, r3
	l.ori	r19, r0, 2
	l.sub	r21, r3, r4
	l.sll	r3, r5, r19
	l.sfltu	r21, r3
	l.addi	r17, r5, -1
	l.bnf	.L499
	l.movhi	r6, hi(0)
	l.sfeq	r5, r6
	l.bf	.L492
	l.ori	r8, r0, 2
	l.sll	r12, r17, r8
	l.add	r27, r4, r12
	l.add	r25, r11, r12
.L489:
	l.addi	r25, r25, -4
	l.lwz	r15, 0(r27)
	l.sfne	r4, r27
	l.sw	4(r25), r15
	l.bf	.L489
	l.addi	r27, r27, -4
.L492:
	l.jr	r9
	 l.nop

.L499:
	l.sfne	r5, r6
	l.xori	r23, r0, -1
	l.bnf	.L492
	l.or	r5, r11, r11
.L487:
	l.addi	r5, r5, 4
	l.addi	r17, r17, -1
	l.lwz	r7, 0(r4)
	l.sfne	r17, r23
	l.sw	-4(r5), r7
	l.bf	.L487
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
	l.bf	.L501
	l.addi	r17, r5, -1
	l.xori	r21, r0, -1
.L502:
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.sw	0(r3), r4
	l.bf	.L502
	l.addi	r3, r3, 4
.L501:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L508
	l.sfeq	r3, r4
	l.movhi	r11, hi(0)
	l.sfeq	r5, r11
	l.add	r12, r3, r5
	l.bf	.L507
	l.add	r21, r4, r5
.L510:
	l.addi	r12, r12, -1
	l.addi	r21, r21, -1
	l.lbs	r23, 0(r12)
	l.sfne	r3, r12
	l.bf	.L510
	l.sb	0(r21), r23
.L507:
	l.jr	r9
	 l.nop

.L508:
	l.bf	.L507
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L507
	l.addi	r6, r5, -1
	l.ori	r19, r0, 6
	l.sfleu	r6, r19
	l.bf	.L511
	l.addi	r8, r3, 1
	l.or	r7, r4, r3
	l.andi	r8, r7, 3
	l.movhi	r11, hi(0)
	l.sfne	r8, r11
	l.bf	.L511
	l.addi	r8, r3, 1
	l.sub	r12, r4, r8
	l.ori	r21, r0, 2
	l.sfleu	r12, r21
	l.bf	.L511
	l.srl	r23, r5, r21
	l.sll	r13, r23, r21
	l.or	r27, r4, r4
	l.add	r15, r3, r13
.L512:
	l.lwz	r25, 0(r3)
	l.addi	r3, r3, 4
	l.sw	0(r27), r25
	l.sfne	r15, r3
	l.bf	.L512
	l.addi	r27, r27, 4
	l.sfeq	r5, r13
	l.add	r4, r4, r13
	l.bf	.L507
	l.sub	r3, r5, r13
	l.lbs	r5, 0(r15)
	l.ori	r29, r0, 1
	l.sfeq	r3, r29
	l.bf	.L507
	l.sb	0(r4), r5
	l.lbs	r31, 1(r15)
	l.ori	r17, r0, 2
	l.sfeq	r3, r17
	l.bf	.L507
	l.sb	1(r4), r31
	l.lbs	r6, 2(r15)
	l.jr	r9
	l.sb	2(r4), r6
.L511:
	l.j	.L515
	l.add	r7, r3, r5
.L535:
	l.addi	r8, r8, 1
.L515:
	l.lbs	r19, -1(r8)
	l.sfne	r8, r7
	l.sb	0(r4), r19
	l.bf	.L535
	l.addi	r4, r4, 1
	l.jr	r9
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.ori	r23, r0, 31
	l.sub	r17, r0, r5
	l.ori	r25, r0, 1
	l.andi	r6, r17, 63
	l.srl	r21, r4, r25
	l.sub	r19, r23, r5
	l.addi	r11, r5, -32
	l.srl	r7, r21, r19
	l.sll	r27, r3, r5
	l.sll	r8, r3, r25
	l.sub	r12, r23, r6
	l.movhi	r29, hi(0)
	l.sfges	r11, r29
	l.addi	r13, r6, -32
	l.sll	r15, r4, r11
	l.sll	r5, r4, r5
	l.sll	r23, r8, r12
	l.srl	r4, r4, r6
	l.or	r31, r7, r27
	l.cmov	r17, r15, r31
	l.cmov	r25, r0, r5
	l.srl	r21, r3, r13
	l.sfges	r13, r29
	l.srl	r3, r3, r6
	l.or	r19, r23, r4
	l.cmov	r6, r21, r19
	l.cmov	r11, r0, r3
	l.or	r11, r11, r17
	l.jr	r9
	l.or	r12, r6, r25
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.ori	r23, r0, 31
	l.sub	r17, r0, r5
	l.ori	r25, r0, 1
	l.andi	r6, r17, 63
	l.sll	r21, r3, r25
	l.sub	r19, r23, r5
	l.addi	r12, r5, -32
	l.sll	r7, r21, r19
	l.srl	r27, r4, r5
	l.srl	r8, r4, r25
	l.sub	r11, r23, r6
	l.movhi	r29, hi(0)
	l.sfges	r12, r29
	l.addi	r13, r6, -32
	l.srl	r15, r3, r12
	l.srl	r5, r3, r5
	l.srl	r23, r8, r11
	l.sll	r3, r3, r6
	l.or	r31, r7, r27
	l.cmov	r17, r15, r31
	l.cmov	r25, r0, r5
	l.sll	r21, r4, r13
	l.sfges	r13, r29
	l.sll	r4, r4, r6
	l.or	r19, r23, r3
	l.cmov	r6, r21, r19
	l.cmov	r12, r0, r4
	l.or	r11, r6, r25
	l.jr	r9
	l.or	r12, r12, r17
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	l.ori	r17, r0, 32
	l.sub	r4, r17, r4
	l.jr	r9
	l.ror	r11, r3, r4
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	l.jr	r9
	l.ror	r11, r3, r4
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	l.ori	r17, r0, 32
	l.sub	r4, r17, r4
	l.jr	r9
	l.ror	r11, r3, r4
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	l.jr	r9
	l.ror	r11, r3, r4
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
	l.j	.L552
	l.ori	r19, r0, 32
.L555:
	l.sfne	r11, r19
	l.bnf	.L554
	 l.nop

.L552:
	l.srl	r17, r3, r11
	l.andi	r4, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r4, r21
	l.bf	.L555
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L554:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L559
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L556
	l.ori	r4, r0, 1
	l.ori	r11, r0, 1
.L562:
	l.sra	r3, r3, r4
	l.and	r5, r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L562
	l.addi	r11, r11, 1
.L556:
	l.jr	r9
	 l.nop

.L559:
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
	l.bf	.L563
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC3)
	l.lwz	r6, lo(.LC3)(r5)
	lf.sfgt.s	r3, r6
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L563:
	l.jr	r9
	 l.nop

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
	l.movhi	r25, ha(.LC4)
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.addi	r27, r25, lo(.LC4)
	l.lwz	r21, lo(.LC4)(r25)
	l.lwz	r23, 4(r27)
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L566
	l.ori	r11, r0, 1
	l.movhi	r3, ha(.LC5)
	l.addi	r4, r3, lo(.LC5)
	l.lwz	r21, lo(.LC5)(r3)
	l.lwz	r23, 4(r4)
	lf.sfgt.d	r17,r19, r21,r23
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L566:
	l.jr	r9
	 l.nop

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
	l.movhi	r25, ha(.LC6)
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.addi	r27, r25, lo(.LC6)
	l.lwz	r21, lo(.LC6)(r25)
	l.lwz	r23, 4(r27)
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L569
	l.ori	r11, r0, 1
	l.movhi	r3, ha(.LC7)
	l.addi	r4, r3, lo(.LC7)
	l.lwz	r21, lo(.LC7)(r3)
	l.lwz	r23, 4(r4)
	lf.sfgt.d	r17,r19, r21,r23
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L569:
	l.jr	r9
	 l.nop

	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	l.ori	r21, r0, 31
	l.or	r19, r4, r4
	l.sra	r17, r4, r21
	lf.itof.d	r17,r19, r17,r19
	l.sw	0(r3), r17
	l.jr	r9
	l.sw	4(r3), r19
	.size	_Qp_itoq, .-_Qp_itoq
	.align 4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	lf.sfun.s	r3, r3
	l.bf	.L574
	l.or	r11, r3, r3
	lf.add.s	r17, r3, r3
	lf.sfeq.s	r17, r3
	l.bf	.L574
	l.movhi	r3, hi(0)
	l.sfges	r4, r3
	l.bf	.L575
	l.movhi	r19, hi(1073741824)
	l.movhi	r19, hi(1056964608)
.L575:
	l.andi	r5, r4, 1
	l.movhi	r21, hi(0)
	l.sfeq	r5, r21
	l.bf	.L588
	l.ori	r6, r0, 31
.L577:
	lf.mul.s	r11, r11, r19
	l.ori	r6, r0, 31
.L588:
	l.srl	r7, r4, r6
	l.add	r4, r7, r4
	l.ori	r8, r0, 1
	l.sra	r4, r4, r8
	l.movhi	r12, hi(0)
	l.sfeq	r4, r12
	l.bf	.L574
	l.andi	r13, r4, 1
	l.movhi	r15, hi(0)
	l.ori	r23, r0, 31
	l.srl	r25, r4, r23
	l.sfne	r13, r15
	lf.mul.s	r19, r19, r19
	l.bf	.L577
	l.add	r27, r25, r4
	l.ori	r29, r0, 1
	l.sra	r4, r27, r29
.L587:
	l.andi	r13, r4, 1
	l.movhi	r15, hi(0)
	l.ori	r23, r0, 31
	l.srl	r25, r4, r23
	l.sfne	r13, r15
	lf.mul.s	r19, r19, r19
	l.bf	.L577
	l.add	r27, r25, r4
	l.j	.L587
	l.sra	r4, r27, r29
.L574:
	l.jr	r9
	 l.nop

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
	l.or	r25, r3, r3
	l.or	r27, r4, r4
	lf.sfun.d	r25,r27, r25,r27
	l.bf	.L605
	l.or	r11, r25, r25
	lf.add.d	r17,r19, r25,r27, r25,r27
	lf.sfeq.d	r17,r19, r25,r27
	l.bf	.L605
	l.movhi	r3, hi(0)
	l.sfges	r5, r3
	l.bnf	.L602
	l.movhi	r4, ha(.LC10+4)
	l.movhi	r21, hi(1073741824)
	l.lwz	r23, lo(.LC10+4)(r4)
.L591:
	l.andi	r7, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r7, r19
	l.bf	.L606
	l.ori	r8, r0, 31
.L593:
	lf.mul.d	r25,r27, r25,r27, r21,r23
	l.ori	r8, r0, 31
.L606:
	l.srl	r11, r5, r8
	l.add	r5, r11, r5
	l.ori	r12, r0, 1
	l.sra	r5, r5, r12
	l.movhi	r13, hi(0)
	l.sfeq	r5, r13
	l.bf	.L590
	l.andi	r15, r5, 1
	l.movhi	r29, hi(0)
	l.ori	r31, r0, 31
	l.srl	r17, r5, r31
	l.sfne	r15, r29
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L593
	l.add	r3, r17, r5
	l.ori	r4, r0, 1
	l.sra	r5, r3, r4
.L604:
	l.andi	r15, r5, 1
	l.movhi	r29, hi(0)
	l.ori	r31, r0, 31
	l.srl	r17, r5, r31
	l.sfne	r15, r29
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L593
	l.add	r3, r17, r5
	l.j	.L604
	l.sra	r5, r3, r4
.L590:
	l.or	r11, r25, r25
.L605:
	l.jr	r9
	l.or	r12, r27, r27
.L602:
	l.movhi	r6, ha(.LC11+4)
	l.movhi	r21, hi(1071644672)
	l.j	.L591
	l.lwz	r23, lo(.LC11+4)(r6)
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
	l.or	r25, r3, r3
	l.or	r27, r4, r4
	lf.sfun.d	r25,r27, r25,r27
	l.bf	.L623
	l.or	r11, r25, r25
	lf.add.d	r17,r19, r25,r27, r25,r27
	lf.sfeq.d	r25,r27, r17,r19
	l.bf	.L623
	l.movhi	r3, hi(0)
	l.sfges	r5, r3
	l.bnf	.L620
	l.movhi	r4, ha(.LC13+4)
	l.movhi	r21, hi(1073741824)
	l.lwz	r23, lo(.LC13+4)(r4)
.L609:
	l.andi	r7, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r7, r19
	l.bf	.L624
	l.ori	r8, r0, 31
.L611:
	lf.mul.d	r25,r27, r25,r27, r21,r23
	l.ori	r8, r0, 31
.L624:
	l.srl	r11, r5, r8
	l.add	r5, r11, r5
	l.ori	r12, r0, 1
	l.sra	r5, r5, r12
	l.movhi	r13, hi(0)
	l.sfeq	r5, r13
	l.bf	.L608
	l.andi	r15, r5, 1
	l.movhi	r29, hi(0)
	l.ori	r31, r0, 31
	l.srl	r17, r5, r31
	l.sfne	r15, r29
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L611
	l.add	r3, r17, r5
	l.ori	r4, r0, 1
	l.sra	r5, r3, r4
.L622:
	l.andi	r15, r5, 1
	l.movhi	r29, hi(0)
	l.ori	r31, r0, 31
	l.srl	r17, r5, r31
	l.sfne	r15, r29
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L611
	l.add	r3, r17, r5
	l.j	.L622
	l.sra	r5, r3, r4
.L608:
	l.or	r11, r25, r25
.L623:
	l.jr	r9
	l.or	r12, r27, r27
.L620:
	l.movhi	r6, ha(.LC12+4)
	l.movhi	r21, hi(1071644672)
	l.j	.L609
	l.lwz	r23, lo(.LC12+4)(r6)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L626
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.ori	r21, r0, 3
	l.sfleu	r17, r21
	l.bf	.L627
	l.or	r3, r3, r4
	l.and	r6, r3, r21
	l.sfne	r6, r19
	l.bf	.L627
	l.ori	r7, r0, 2
	l.srl	r25, r5, r7
	l.sll	r8, r25, r7
	l.or	r27, r11, r11
	l.add	r23, r4, r8
.L628:
	l.lwz	r12, 0(r27)
	l.lwz	r13, 0(r4)
	l.addi	r4, r4, 4
	l.xor	r15, r13, r12
	l.sw	0(r27), r15
	l.sfne	r23, r4
	l.bf	.L628
	l.addi	r27, r27, 4
	l.sfeq	r5, r8
	l.add	r4, r11, r8
	l.bf	.L626
	l.sub	r29, r5, r8
	l.lbz	r5, 0(r4)
	l.lbz	r31, 0(r23)
	l.xor	r19, r5, r31
	l.ori	r17, r0, 1
	l.sfeq	r29, r17
	l.bf	.L626
	l.sb	0(r4), r19
	l.lbz	r21, 1(r4)
	l.lbz	r3, 1(r23)
	l.xor	r6, r3, r21
	l.ori	r7, r0, 2
	l.sfeq	r29, r7
	l.bf	.L626
	l.sb	1(r4), r6
	l.lbz	r25, 2(r4)
	l.lbz	r8, 2(r23)
	l.xor	r23, r8, r25
	l.sb	2(r4), r23
.L626:
	l.jr	r9
	 l.nop

.L627:
	l.add	r12, r4, r5
	l.or	r29, r11, r11
.L630:
	l.lbz	r13, 0(r29)
	l.lbz	r15, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r27, r15, r13
	l.sfne	r12, r4
	l.sb	0(r29), r27
	l.bf	.L630
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
	l.bf	.L638
	l.or	r12, r3, r3
.L639:
	l.lbs	r3, 1(r12)
	l.movhi	r21, hi(0)
	l.sfne	r3, r21
	l.bf	.L639
	l.addi	r12, r12, 1
.L638:
	l.movhi	r6, hi(0)
	l.sfne	r5, r6
	l.bf	.L640
	 l.nop

	l.j	.L651
	l.sb	0(r12), r0
.L642:
	l.movhi	r13, hi(0)
	l.sfeq	r5, r13
	l.bf	.L641
	 l.nop

.L640:
	l.lbs	r7, 0(r4)
	l.movhi	r8, hi(0)
	l.sb	0(r12), r7
	l.sfne	r7, r8
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L642
	l.addi	r12, r12, 1
	l.jr	r9
	 l.nop

.L641:
	l.sb	0(r12), r0
.L651:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L652
	l.movhi	r11, hi(0)
	l.add	r5, r3, r11
.L661:
	l.lbs	r6, 0(r5)
	l.movhi	r19, hi(0)
	l.sfne	r6, r19
	l.bf	.L655
	 l.nop

.L652:
	l.jr	r9
	 l.nop

.L655:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L661
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
	l.bnf	.L667
	l.or	r11, r3, r3
.L663:
	l.j	.L666
	l.or	r3, r4, r4
.L665:
	l.sfeq	r19, r21
	l.bf	.L664
	 l.nop

.L666:
	l.lbs	r19, 0(r3)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L665
	l.addi	r3, r3, 1
	l.lbs	r21, 1(r11)
	l.movhi	r5, hi(0)
	l.sfeq	r21, r5
	l.bnf	.L663
	l.addi	r11, r11, 1
.L667:
	l.movhi	r11, hi(0)
.L664:
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
	l.movhi	r19, hi(0)
	l.cmov	r11, r3, r11
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
	l.lbs	r25, 0(r4)
	l.movhi	r17, hi(0)
	l.sfeq	r25, r17
	l.bf	.L685
	l.or	r5, r4, r4
.L676:
	l.lbs	r19, 1(r5)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L676
	l.addi	r5, r5, 1
	l.sfeq	r5, r4
	l.bf	.L685
	l.sub	r29, r5, r4
	l.andi	r31, r25, 0xff
	l.j	.L694
	l.addi	r11, r29, -1
.L696:
	l.sfne	r6, r7
	l.bnf	.L695
	l.addi	r3, r3, 1
.L694:
	l.lbs	r6, 0(r3)
	l.sfeq	r6, r25
	l.bnf	.L696
	l.movhi	r7, hi(0)
	l.or	r12, r31, r31
	l.add	r27, r3, r11
	l.or	r15, r4, r4
	l.j	.L678
	l.or	r8, r3, r3
.L697:
	l.bf	.L679
	l.addi	r8, r8, 1
	l.sfeq	r23, r12
	l.bnf	.L679
	l.movhi	r17, hi(0)
	l.lbz	r12, 0(r8)
	l.sfeq	r12, r17
	l.bf	.L679
	l.addi	r15, r15, 1
.L678:
	l.lbz	r23, 0(r15)
	l.movhi	r13, hi(0)
	l.sfeq	r23, r13
	l.bnf	.L697
	l.sfeq	r8, r27
.L679:
	l.lbz	r19, 0(r15)
	l.sfeq	r19, r12
	l.bf	.L685
	 l.nop

	l.j	.L694
	l.addi	r3, r3, 1
.L695:
	l.jr	r9
	l.movhi	r11, hi(0)
.L685:
	l.jr	r9
	l.or	r11, r3, r3
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
	l.or	r17, r3, r3
	l.movhi	r29, ha(.LC14+4)
	l.movhi	r21, hi(0)
	l.or	r19, r4, r4
	l.lwz	r23, lo(.LC14+4)(r29)
	lf.sflt.d	r17,r19, r21,r23
	l.or	r25, r5, r5
	l.or	r27, r6, r6
	l.bf	.L708
	l.movhi	r3, hi(0)
	l.or	r12, r3, r3
	l.or	r13, r23, r23
	lf.sfgt.d	r17,r19, r12,r13
	l.bnf	.L709
	l.or	r11, r17, r17
	lf.sflt.d	r25,r27, r21,r23
	l.bf	.L710
	l.movhi	r5, hi(-2147483648)
	l.or	r11, r17, r17
.L709:
	l.jr	r9
	l.or	r12, r19, r19
.L708:
	l.or	r21, r3, r3
	lf.sfgt.d	r25,r27, r21,r23
	l.bnf	.L709
	l.or	r11, r17, r17
	l.movhi	r5, hi(-2147483648)
.L710:
	l.xor	r17, r17, r5
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L711
	l.or	r11, r3, r3
	l.sfltu	r4, r6
	l.bf	.L722
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L722
	l.addi	r6, r6, -1
	l.lbs	r31, 0(r5)
	l.j	.L717
	l.addi	r5, r5, 1
.L721:
	l.or	r11, r27, r27
.L713:
	l.sfgeu	r25, r11
	l.bnf	.L722
	 l.nop

.L717:
	l.lbs	r3, 0(r11)
	l.sfne	r3, r31
	l.bf	.L721
	l.addi	r27, r11, 1
	l.movhi	r7, hi(0)
	l.sfeq	r6, r7
	l.bf	.L711
	l.or	r19, r5, r5
.L716:
	l.or	r8, r27, r27
	l.j	.L714
	l.add	r29, r27, r6
.L715:
	l.sfeq	r8, r29
	l.bf	.L711
	 l.nop

.L714:
	l.lbz	r23, 0(r8)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r8, r8, 1
	l.bf	.L715
	l.addi	r19, r19, 1
	l.sfgtu	r27, r25
	l.bf	.L722
	 l.nop

	l.lbs	r12, 0(r27)
	l.sfne	r12, r31
	l.bf	.L713
	l.addi	r11, r27, 1
	l.or	r13, r27, r27
	l.or	r19, r5, r5
	l.or	r27, r11, r11
	l.j	.L716
	l.or	r11, r13, r13
.L722:
	l.movhi	r11, hi(0)
.L711:
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
	l.bf	.L728
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L728:
	l.add	r11, r18, r16
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 4
.LC15:
	.long	0
	.long	0
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
	l.or	r17, r3, r3
	l.movhi	r25, ha(.LC15+4)
	l.or	r19, r4, r4
	l.movhi	r21, hi(0)
	l.lwz	r23, lo(.LC15+4)(r25)
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L755
	l.movhi	r27, hi(1072693248)
	l.movhi	r3, ha(.LC18)
	l.addi	r4, r3, lo(.LC18)
	l.lwz	r31, 4(r4)
	l.or	r29, r31, r31
	lf.sfge.d	r17,r19, r27,r29
	l.bnf	.L756
	l.movhi	r15, hi(0)
.L736:
	l.movhi	r6, ha(.LC19)
	l.movhi	r31, hi(0)
	l.addi	r7, r6, lo(.LC19)
.L742:
	l.lwz	r21, 0(r7)
	l.lwz	r23, 4(r7)
	lf.mul.d	r17,r19, r17,r19, r21,r23
	l.lwz	r21, 0(r4)
	l.lwz	r23, 4(r4)
	lf.sfge.d	r17,r19, r21,r23
	l.bf	.L742
	l.addi	r31, r31, 1
	l.sw	0(r5), r31
.L758:
	l.movhi	r5, hi(0)
	l.sfeq	r15, r5
	l.bf	.L749
	l.movhi	r4, hi(-2147483648)
	l.xor	r11, r17, r4
	l.jr	r9
	l.or	r12, r19, r19
.L756:
	l.movhi	r6, ha(.LC19)
	l.addi	r7, r6, lo(.LC19)
	l.movhi	r27, hi(1071644672)
	l.lwz	r8, 4(r7)
	l.or	r29, r8, r8
	lf.sflt.d	r17,r19, r27,r29
	l.bnf	.L739
	l.movhi	r21, hi(0)
	lf.sfne.d	r17,r19, r21,r23
	l.bf	.L748
	l.or	r13, r19, r19
.L739:
	l.sw	0(r5), r0
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L755:
	l.movhi	r29, ha(.LC16+4)
	l.movhi	r21, hi(-1074790400)
	l.lwz	r23, lo(.LC16+4)(r29)
	lf.sfle.d	r17,r19, r21,r23
	l.movhi	r25, hi(-2147483648)
	l.xor	r12, r3, r25
	l.bnf	.L757
	l.or	r13, r4, r4
	l.movhi	r23, ha(.LC18)
	l.or	r17, r12, r12
	l.ori	r15, r0, 1
	l.j	.L736
	l.addi	r4, r23, lo(.LC18)
.L749:
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L757:
	l.movhi	r3, ha(.LC17+4)
	l.movhi	r21, hi(-1075838976)
	l.lwz	r23, lo(.LC17+4)(r3)
	lf.sfgt.d	r17,r19, r21,r23
	l.bnf	.L739
	l.ori	r15, r0, 1
	l.movhi	r17, ha(.LC19)
	l.addi	r7, r17, lo(.LC19)
.L737:
	l.or	r17, r12, r12
	l.or	r19, r13, r13
	l.movhi	r31, hi(0)
.L744:
	lf.add.d	r17,r19, r17,r19, r17,r19
	l.lwz	r21, 0(r7)
	l.lwz	r23, 4(r7)
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L744
	l.addi	r31, r31, -1
	l.j	.L758
	l.sw	0(r5), r31
.L748:
	l.or	r12, r17, r17
	l.j	.L737
	l.movhi	r15, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r17, r4, r3
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.movhi	r11, hi(0)
	l.bf	.L759
	l.movhi	r12, hi(0)
.L762:
	l.andi	r7, r4, 1
	l.sub	r8, r0, r7
	l.and	r13, r8, r6
	l.add	r15, r12, r13
	l.ori	r27, r0, 1
	l.ori	r23, r0, 31
	l.sfltu	r15, r12
	l.srl	r4, r4, r27
	l.sll	r12, r3, r23
	l.add	r21, r6, r6
	l.sub	r25, r0, r7
	l.or	r4, r12, r4
	l.ori	r31, r0, 1
	l.srl	r3, r3, r27
	l.and	r29, r25, r5
	l.cmov	r19, r31, r0
	l.or	r17, r3, r4
	l.sfltu	r21, r6
	l.movhi	r8, hi(0)
	l.ori	r6, r0, 1
	l.cmov	r7, r6, r0
	l.add	r11, r11, r29
	l.add	r5, r5, r5
	l.sfne	r17, r8
	l.add	r11, r19, r11
	l.or	r12, r15, r15
	l.add	r5, r7, r5
	l.bf	.L762
	l.or	r6, r21, r21
.L759:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r6, r0, 32
	l.bf	.L766
	l.ori	r17, r0, 1
	l.j	.L785
	l.sfleu	r4, r3
.L770:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L768
	l.movhi	r7, hi(0)
	l.sfeq	r6, r7
	l.bf	.L787
	l.movhi	r13, hi(0)
.L766:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L770
	l.addi	r6, r6, -1
.L771:
	l.movhi	r6, hi(0)
.L772:
	l.sfgeu	r3, r4
	l.ori	r23, r0, 1
	l.cmov	r8, r17, r0
	l.sub	r21, r3, r4
	l.srl	r17, r17, r23
	l.movhi	r12, hi(0)
	l.cmov	r3, r21, r3
	l.sfne	r17, r12
	l.or	r6, r6, r8
	l.bf	.L772
	l.srl	r4, r4, r23
.L769:
	l.movhi	r13, hi(0)
.L787:
	l.sfne	r5, r13
	l.jr	r9
	l.cmov	r11, r3, r6
.L768:
	l.sfeq	r17, r7
	l.bnf	.L771
	l.movhi	r6, hi(0)
	l.j	.L787
	l.movhi	r13, hi(0)
.L785:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L769
	l.cmov	r6, r11, r0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.extbs	r3, r3
	l.ori	r17, r0, 7
	l.sra	r4, r3, r17
	l.sfeq	r3, r4
	l.bf	.L790
	l.xor	r19, r3, r4
	l.ori	r5, r0, 8
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzsi2
	l.sll	r3, r19, r5
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L790:
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
	l.bnf	.L804
	l.xor	r4, r4, r21
.L799:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L804:
	l.sfne	r5, r17
	l.bf	.L799
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
	l.bf	.L805
	l.movhi	r11, hi(0)
.L807:
	l.andi	r5, r3, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r3, r3, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r4
	l.sfne	r3, r8
	l.add	r11, r11, r7
	l.bf	.L807
	l.add	r4, r4, r4
.L805:
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
	l.bnf	.L814
	l.and	r6, r5, r27
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L844
	l.movhi	r8, hi(0)
.L814:
	l.movhi	r13, hi(0)
	l.sfne	r25, r13
	l.bnf	.L845
	l.ori	r23, r0, 3
	l.sll	r29, r25, r23
	l.or	r17, r4, r4
	l.or	r7, r3, r3
	l.add	r31, r29, r4
.L817:
	l.lwz	r27, 0(r17)
	l.lwz	r25, 4(r17)
	l.addi	r17, r17, 8
	l.sw	0(r7), r27
	l.sw	4(r7), r25
	l.sfne	r17, r31
	l.bf	.L817
	l.addi	r7, r7, 8
	l.sfleu	r5, r6
	l.bf	.L810
	 l.nop

	l.sub	r8, r5, r6
	l.addi	r21, r8, -1
	l.ori	r19, r0, 6
	l.sfleu	r21, r19
	l.bf	.L843
	l.addi	r11, r6, 1
	l.add	r19, r3, r6
	l.add	r12, r4, r11
	l.sub	r13, r19, r12
	l.ori	r15, r0, 2
	l.sfleu	r13, r15
	l.bf	.L819
	l.add	r17, r4, r6
	l.or	r23, r17, r19
	l.andi	r29, r23, 3
	l.movhi	r31, hi(0)
	l.sfne	r29, r31
	l.bf	.L819
	l.srl	r27, r8, r15
	l.sll	r25, r27, r15
	l.add	r7, r17, r25
.L820:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r7
	l.bf	.L820
	l.addi	r19, r19, 4
	l.sfeq	r8, r25
	l.bf	.L810
	l.add	r6, r6, r25
	l.add	r17, r4, r6
	l.lbs	r8, 0(r17)
	l.add	r19, r3, r6
	l.addi	r11, r6, 1
	l.sfleu	r5, r11
	l.bf	.L810
	l.sb	0(r19), r8
	l.add	r12, r4, r11
	l.lbs	r13, 0(r12)
	l.add	r15, r3, r11
	l.addi	r23, r6, 2
	l.sfleu	r5, r23
	l.bf	.L810
	l.sb	0(r15), r13
	l.add	r4, r4, r23
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r23
	l.sb	0(r3), r5
.L810:
	l.jr	r9
	 l.nop

.L844:
	l.sfne	r5, r8
	l.xori	r21, r0, -1
	l.bnf	.L810
	l.addi	r5, r5, -1
.L815:
	l.add	r19, r4, r5
	l.add	r11, r3, r5
	l.lbs	r12, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L815
	l.sb	0(r11), r12
	l.jr	r9
	 l.nop

.L845:
	l.movhi	r15, hi(0)
	l.sfne	r5, r15
	l.bnf	.L810
	 l.nop

.L843:
	l.add	r19, r3, r6
	l.add	r17, r4, r6
.L819:
	l.add	r29, r4, r5
.L822:
	l.lbs	r31, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r19), r31
	l.sfne	r17, r29
	l.bf	.L822
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
	l.bnf	.L850
	l.srl	r27, r5, r17
	l.add	r6, r4, r5
	l.sfgtu	r3, r6
	l.bnf	.L873
	l.movhi	r7, hi(0)
.L850:
	l.movhi	r11, hi(0)
	l.sfne	r27, r11
	l.bnf	.L849
	l.addi	r12, r27, -1
	l.ori	r13, r0, 8
	l.sfleu	r12, r13
	l.bf	.L853
	l.or	r15, r4, r3
	l.andi	r25, r15, 3
	l.movhi	r29, hi(0)
	l.sfne	r25, r29
	l.bf	.L853
	l.addi	r31, r4, 2
	l.sfeq	r3, r31
	l.bf	.L853
	l.ori	r17, r0, 2
	l.srl	r6, r5, r17
	l.sll	r7, r6, r17
	l.or	r8, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r7, r4
.L854:
	l.lwz	r21, 0(r8)
	l.addi	r8, r8, 4
	l.sw	0(r19), r21
	l.sfne	r8, r23
	l.bf	.L854
	l.addi	r19, r19, 4
	l.add	r11, r6, r6
	l.sfeq	r27, r11
	l.bf	.L849
	l.add	r27, r11, r11
	l.add	r12, r4, r27
	l.lhs	r13, 0(r12)
	l.add	r15, r3, r27
	l.sh	0(r15), r13
.L849:
	l.andi	r7, r5, 1
	l.movhi	r23, hi(0)
	l.sfeq	r7, r23
	l.bf	.L846
	l.add	r4, r4, r5
	l.lbs	r21, -1(r4)
.L876:
	l.add	r3, r3, r5
	l.sb	-1(r3), r21
.L846:
	l.jr	r9
	 l.nop

.L873:
	l.sfne	r5, r7
	l.addi	r8, r5, -1
	l.bnf	.L846
	l.xori	r23, r0, -1
.L851:
	l.add	r21, r4, r8
	l.add	r19, r3, r8
	l.lbs	r5, 0(r21)
	l.addi	r8, r8, -1
	l.sfne	r8, r23
	l.bf	.L851
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L853:
	l.add	r25, r27, r27
	l.or	r17, r4, r4
	l.or	r6, r3, r3
	l.add	r29, r25, r4
.L856:
	l.lhs	r31, 0(r17)
	l.addi	r17, r17, 2
	l.sh	0(r6), r31
	l.sfne	r29, r17
	l.bf	.L856
	l.addi	r6, r6, 2
	l.andi	r7, r5, 1
	l.movhi	r23, hi(0)
	l.sfeq	r7, r23
	l.bf	.L846
	l.add	r4, r4, r5
	l.j	.L876
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
	l.bnf	.L881
	l.and	r6, r5, r25
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L911
	l.movhi	r8, hi(0)
.L881:
	l.movhi	r13, hi(0)
	l.sfne	r23, r13
	l.bnf	.L912
	l.ori	r27, r0, 2
	l.sll	r29, r23, r27
	l.or	r17, r4, r4
	l.or	r23, r3, r3
	l.add	r31, r29, r4
.L884:
	l.lwz	r25, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r23), r25
	l.sfne	r17, r31
	l.bf	.L884
	l.addi	r23, r23, 4
	l.sfleu	r5, r6
	l.bf	.L877
	l.ori	r21, r0, 6
	l.sub	r7, r5, r6
	l.addi	r8, r7, -1
	l.sfleu	r8, r21
	l.bf	.L910
	l.addi	r11, r6, 1
	l.add	r12, r4, r11
	l.add	r19, r3, r6
	l.sub	r13, r19, r12
	l.ori	r15, r0, 2
	l.sfleu	r13, r15
	l.bf	.L886
	l.add	r11, r4, r6
	l.or	r27, r11, r19
	l.andi	r29, r27, 3
	l.movhi	r31, hi(0)
	l.sfne	r29, r31
	l.bf	.L886
	l.srl	r25, r7, r15
	l.sll	r8, r25, r15
	l.add	r23, r11, r8
.L887:
	l.lwz	r21, 0(r11)
	l.addi	r11, r11, 4
	l.sw	0(r19), r21
	l.sfne	r11, r23
	l.bf	.L887
	l.addi	r19, r19, 4
	l.sfeq	r7, r8
	l.bf	.L877
	l.add	r6, r6, r8
	l.add	r19, r4, r6
	l.lbs	r7, 0(r19)
	l.add	r11, r3, r6
	l.addi	r17, r6, 1
	l.sfleu	r5, r17
	l.bf	.L877
	l.sb	0(r11), r7
	l.add	r12, r4, r17
	l.lbs	r13, 0(r12)
	l.add	r15, r3, r17
	l.addi	r27, r6, 2
	l.sfleu	r5, r27
	l.bf	.L877
	l.sb	0(r15), r13
	l.add	r4, r4, r27
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r27
	l.sb	0(r3), r5
.L877:
	l.jr	r9
	 l.nop

.L911:
	l.sfne	r5, r8
	l.xori	r21, r0, -1
	l.bnf	.L877
	l.addi	r5, r5, -1
.L882:
	l.add	r19, r4, r5
	l.add	r11, r3, r5
	l.lbs	r12, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L882
	l.sb	0(r11), r12
	l.jr	r9
	 l.nop

.L912:
	l.movhi	r15, hi(0)
	l.sfne	r5, r15
	l.bnf	.L877
	 l.nop

.L910:
	l.add	r19, r3, r6
	l.add	r11, r4, r6
.L886:
	l.add	r29, r4, r5
.L889:
	l.lbs	r31, 0(r11)
	l.addi	r11, r11, 1
	l.sb	0(r19), r31
	l.sfne	r11, r29
	l.bf	.L889
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
	l.or	r19, r3, r3
	l.movhi	r17, hi(0)
	lf.itof.d	r17,r19, r17,r19
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	l.or	r19, r3, r3
	l.movhi	r17, hi(0)
	lf.itof.d	r17,r19, r17,r19
	l.addi	r1, r1, -4
	l.or	r3, r17, r17
	l.sw	0(r1), r9
	l.jal	__truncdfsf2
	l.or	r4, r19, r19
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	l.xori	r5, r0, -1
	l.addi	r1, r1, -20
	l.or	r6, r5, r5
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	16(r1), r9
	l.or	r20, r3, r3
	l.jal	__cmpdi2
	l.or	r22, r4, r4
	l.ori	r17, r0, 1
	l.sfles	r11, r17
	l.bf	.L919
	l.ori	r23, r0, 1
	lf.itof.d	r17,r19, r20,r22
	l.or	r11, r17, r17
.L921:
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L919:
	l.ori	r3, r0, 31
	l.sll	r4, r20, r3
	l.srl	r21, r22, r23
	l.and	r19, r22, r23
	l.or	r5, r4, r21
	l.or	r18, r19, r5
	l.srl	r16, r20, r23
	lf.itof.d	r6,r7, r16,r18
	lf.add.d	r17,r19, r6,r7, r6,r7
	l.j	.L921
	l.or	r11, r17, r17
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
	l.bf	.L928
	l.ori	r5, r0, 14
	l.sra	r11, r3, r5
	l.sfne	r11, r19
	l.bf	.L925
	l.ori	r6, r0, 13
	l.sra	r7, r3, r6
	l.sfne	r7, r19
	l.bf	.L929
	l.ori	r8, r0, 12
	l.sra	r11, r3, r8
	l.sfne	r11, r19
	l.bf	.L930
	l.ori	r12, r0, 11
	l.sra	r13, r3, r12
	l.sfne	r13, r19
	l.bf	.L931
	l.ori	r15, r0, 10
	l.sra	r21, r3, r15
	l.sfne	r21, r19
	l.bf	.L932
	l.ori	r23, r0, 9
	l.sra	r25, r3, r23
	l.sfne	r25, r19
	l.bf	.L933
	l.ori	r27, r0, 8
	l.sra	r29, r3, r27
	l.sfne	r29, r19
	l.bf	.L934
	l.ori	r31, r0, 7
	l.sra	r17, r3, r31
	l.sfne	r17, r19
	l.bf	.L935
	l.ori	r4, r0, 6
	l.sra	r5, r3, r4
	l.sfne	r5, r19
	l.bf	.L936
	l.ori	r6, r0, 5
	l.sra	r7, r3, r6
	l.sfne	r7, r19
	l.bf	.L937
	l.ori	r8, r0, 4
	l.sra	r11, r3, r8
	l.sfne	r11, r19
	l.bf	.L938
	l.ori	r12, r0, 3
	l.sra	r13, r3, r12
	l.sfne	r13, r19
	l.bf	.L939
	l.ori	r15, r0, 2
	l.sra	r21, r3, r15
	l.sfne	r21, r19
	l.bf	.L940
	l.ori	r23, r0, 1
	l.sra	r25, r3, r23
	l.sfne	r25, r19
	l.bf	.L941
	l.sfeq	r3, r19
	l.bnf	.L944
	l.ori	r11, r0, 16
.L925:
	l.jr	r9
	 l.nop

.L928:
	l.jr	r9
	l.movhi	r11, hi(0)
.L939:
	l.jr	r9
	l.ori	r11, r0, 12
.L944:
	l.jr	r9
	l.ori	r11, r0, 15
.L929:
	l.jr	r9
	l.ori	r11, r0, 2
.L930:
	l.jr	r9
	l.ori	r11, r0, 3
.L931:
	l.jr	r9
	l.ori	r11, r0, 4
.L932:
	l.jr	r9
	l.ori	r11, r0, 5
.L933:
	l.jr	r9
	l.ori	r11, r0, 6
.L934:
	l.jr	r9
	l.ori	r11, r0, 7
.L935:
	l.jr	r9
	l.ori	r11, r0, 8
.L936:
	l.jr	r9
	l.ori	r11, r0, 9
.L937:
	l.jr	r9
	l.ori	r11, r0, 10
.L938:
	l.jr	r9
	l.ori	r11, r0, 11
.L940:
	l.jr	r9
	l.ori	r11, r0, 13
.L941:
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
	l.bf	.L948
	l.andi	r3, r3, 0xffff
	l.andi	r4, r3, 2
	l.sfne	r4, r19
	l.bf	.L949
	l.andi	r5, r3, 4
	l.sfne	r5, r19
	l.bf	.L950
	l.andi	r6, r3, 8
	l.sfne	r6, r19
	l.bf	.L951
	l.andi	r7, r3, 16
	l.sfne	r7, r19
	l.bf	.L952
	l.andi	r8, r3, 32
	l.sfne	r8, r19
	l.bf	.L953
	 l.nop

	l.andi	r11, r3, 64
	l.sfne	r11, r19
	l.bf	.L954
	l.andi	r12, r3, 128
	l.sfne	r12, r19
	l.bf	.L955
	l.andi	r13, r3, 256
	l.sfne	r13, r19
	l.bf	.L956
	l.andi	r15, r3, 512
	l.sfne	r15, r19
	l.bf	.L957
	l.andi	r21, r3, 1024
	l.sfne	r21, r19
	l.bf	.L958
	l.andi	r23, r3, 2048
	l.sfne	r23, r19
	l.bf	.L959
	l.andi	r25, r3, 4096
	l.sfne	r25, r19
	l.bf	.L960
	l.andi	r27, r3, 8192
	l.sfne	r27, r19
	l.bf	.L961
	l.andi	r29, r3, 16384
	l.sfne	r29, r19
	l.bf	.L962
	l.ori	r31, r0, 15
	l.sra	r17, r3, r31
	l.sfeq	r17, r19
	l.bnf	.L965
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L948:
	l.jr	r9
	l.movhi	r11, hi(0)
.L949:
	l.jr	r9
	l.ori	r11, r0, 1
.L960:
	l.jr	r9
	l.ori	r11, r0, 12
.L965:
	l.jr	r9
	l.or	r11, r31, r31
.L950:
	l.jr	r9
	l.ori	r11, r0, 2
.L951:
	l.jr	r9
	l.ori	r11, r0, 3
.L952:
	l.jr	r9
	l.ori	r11, r0, 4
.L953:
	l.jr	r9
	l.ori	r11, r0, 5
.L954:
	l.jr	r9
	l.ori	r11, r0, 6
.L955:
	l.jr	r9
	l.ori	r11, r0, 7
.L956:
	l.jr	r9
	l.ori	r11, r0, 8
.L957:
	l.jr	r9
	l.ori	r11, r0, 9
.L958:
	l.jr	r9
	l.ori	r11, r0, 10
.L959:
	l.jr	r9
	l.ori	r11, r0, 11
.L961:
	l.jr	r9
	l.ori	r11, r0, 13
.L962:
	l.jr	r9
	l.ori	r11, r0, 14
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.movhi	r17, hi(1191182336)
	lf.sfge.s	r3, r17
	l.bf	.L972
	l.ori	r4, r0, 32768
	lf.ftoi.s	r11, r3
	l.jr	r9
	 l.nop

.L972:
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
	l.bf	.L975
	l.movhi	r11, hi(0)
.L977:
	l.andi	r5, r3, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r3, r3, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r4
	l.sfne	r3, r8
	l.add	r11, r11, r7
	l.bf	.L977
	l.add	r4, r4, r4
.L975:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L980
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L980
	 l.nop

.L982:
	l.andi	r5, r4, 1
	l.ori	r19, r0, 1
	l.sub	r6, r0, r5
	l.srl	r4, r4, r19
	l.movhi	r8, hi(0)
	l.and	r7, r6, r3
	l.sfne	r4, r8
	l.add	r11, r11, r7
	l.bf	.L982
	l.add	r3, r3, r3
.L980:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r6, r0, 32
	l.bf	.L987
	l.ori	r17, r0, 1
	l.j	.L1006
	l.sfgeu	r3, r4
.L991:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L989
	l.movhi	r7, hi(0)
	l.sfeq	r6, r7
	l.bf	.L1008
	l.movhi	r13, hi(0)
.L987:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L991
	l.addi	r6, r6, -1
.L992:
	l.movhi	r6, hi(0)
.L993:
	l.sfgeu	r3, r4
	l.ori	r23, r0, 1
	l.cmov	r8, r17, r0
	l.sub	r21, r3, r4
	l.srl	r17, r17, r23
	l.movhi	r12, hi(0)
	l.cmov	r3, r21, r3
	l.sfne	r17, r12
	l.or	r6, r6, r8
	l.bf	.L993
	l.srl	r4, r4, r23
.L990:
	l.movhi	r13, hi(0)
.L1008:
	l.sfne	r5, r13
	l.jr	r9
	l.cmov	r11, r3, r6
.L989:
	l.sfeq	r17, r7
	l.bnf	.L992
	l.movhi	r6, hi(0)
	l.j	.L1008
	l.movhi	r13, hi(0)
.L1006:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L990
	l.cmov	r6, r11, r0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	lf.sflt.s	r3, r4
	l.bf	.L1011
	 l.nop

	lf.sfgt.s	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1011:
	l.jr	r9
	l.xori	r11, r0, -1
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	l.or	r21, r3, r3
	l.or	r17, r5, r5
	l.or	r23, r4, r4
	l.or	r19, r6, r6
	lf.sflt.d	r21,r23, r17,r19
	l.bf	.L1014
	 l.nop

	lf.sfgt.d	r21,r23, r17,r19
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1014:
	l.jr	r9
	l.xori	r11, r0, -1
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
	l.bnf	.L1033
	l.movhi	r5, hi(0)
	l.sfeq	r4, r5
	l.bf	.L1025
	l.movhi	r21, hi(0)
.L1021:
	l.ori	r12, r0, 32
	l.j	.L1024
	l.movhi	r11, hi(0)
.L1034:
	l.sfne	r12, r13
	l.bnf	.L1023
	 l.nop

.L1024:
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
	l.bnf	.L1034
	l.add	r3, r3, r3
.L1023:
	l.movhi	r3, hi(0)
	l.sfeq	r21, r3
	l.bf	.L1019
	 l.nop

	l.sub	r11, r0, r11
.L1019:
	l.jr	r9
	 l.nop

.L1033:
	l.sub	r4, r0, r4
	l.j	.L1021
	l.ori	r21, r0, 1
.L1025:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1061
	 l.nop

	l.ori	r17, r0, 1
	l.movhi	r27, hi(0)
.L1036:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1062
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.or	r27, r17, r17
	l.sfgtu	r3, r4
.L1062:
	l.or	r23, r3, r3
	l.or	r7, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1038
	l.ori	r6, r0, 1
	l.j	.L1059
	l.sfgeu	r3, r4
.L1042:
	l.movhi	r25, hi(0)
	l.sfne	r21, r25
	l.bnf	.L1043
	 l.nop

.L1038:
	l.add	r7, r7, r7
	l.sfgtu	r3, r7
	l.addi	r21, r21, -1
	l.bf	.L1042
	l.add	r6, r6, r6
.L1043:
	l.movhi	r3, hi(0)
	l.sfne	r6, r3
	l.bnf	.L1041
	l.movhi	r11, hi(0)
.L1040:
	l.sfgeu	r23, r7
	l.ori	r29, r0, 1
	l.cmov	r5, r6, r0
	l.sub	r4, r23, r7
	l.srl	r6, r6, r29
	l.movhi	r8, hi(0)
	l.cmov	r23, r4, r23
	l.sfne	r6, r8
	l.or	r11, r11, r5
	l.bf	.L1040
	l.srl	r7, r7, r29
.L1041:
	l.movhi	r12, hi(0)
	l.sfeq	r27, r12
	l.bf	.L1035
	 l.nop

	l.sub	r11, r0, r11
.L1035:
	l.jr	r9
	 l.nop

.L1061:
	l.sub	r3, r0, r3
	l.j	.L1036
	l.ori	r27, r0, 1
.L1059:
	l.ori	r11, r0, 1
	l.j	.L1041
	l.cmov	r11, r11, r0
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1088
	 l.nop

	l.movhi	r23, hi(0)
.L1064:
	l.movhi	r5, hi(0)
	l.sfges	r4, r5
	l.bf	.L1065
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1065:
	l.sfgtu	r3, r4
	l.or	r7, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1066
	l.ori	r19, r0, 1
	l.j	.L1086
	l.sub	r11, r3, r4
.L1070:
	l.movhi	r25, hi(0)
	l.sfne	r21, r25
	l.bnf	.L1090
	l.movhi	r4, hi(0)
.L1066:
	l.add	r7, r7, r7
	l.sfgtu	r3, r7
	l.addi	r21, r21, -1
	l.bf	.L1070
	l.add	r19, r19, r19
	l.movhi	r4, hi(0)
.L1090:
	l.sfne	r19, r4
	l.bnf	.L1089
	 l.nop

	l.ori	r6, r0, 1
.L1091:
	l.sfgeu	r11, r7
	l.sub	r3, r11, r7
	l.srl	r19, r19, r6
	l.movhi	r8, hi(0)
	l.cmov	r11, r3, r11
	l.sfne	r19, r8
	l.bf	.L1091
	l.srl	r7, r7, r6
.L1069:
	l.movhi	r12, hi(0)
	l.sfeq	r23, r12
	l.bf	.L1063
	 l.nop

	l.sub	r11, r0, r11
.L1063:
	l.jr	r9
	 l.nop

.L1088:
	l.sub	r3, r0, r3
	l.j	.L1064
	l.ori	r23, r0, 1
.L1089:
	l.j	.L1069
	l.or	r11, r3, r3
.L1086:
	l.sfgeu	r3, r4
	l.j	.L1069
	l.cmov	r11, r11, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r8, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r8
	l.bnf	.L1175
	l.movhi	r21, hi(0)
	l.exths	r17, r4
	l.sflts	r17, r21
	l.bf	.L1095
	l.add	r12, r4, r4
	l.andi	r17, r12, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1102
	l.exths	r13, r17
	l.sflts	r13, r21
	l.bf	.L1102
	l.ori	r15, r0, 2
	l.sll	r23, r4, r15
	l.andi	r17, r23, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1104
	l.exths	r25, r17
	l.sflts	r25, r21
	l.bf	.L1104
	l.ori	r27, r0, 3
	l.sll	r29, r4, r27
	l.andi	r17, r29, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1106
	l.exths	r31, r17
	l.sflts	r31, r21
	l.bf	.L1106
	l.ori	r6, r0, 4
	l.sll	r3, r4, r6
	l.andi	r17, r3, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1108
	l.exths	r19, r17
	l.sflts	r19, r21
	l.bf	.L1108
	 l.nop

	l.ori	r17, r0, 5
	l.sll	r7, r4, r17
	l.andi	r17, r7, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1110
	l.exths	r11, r17
	l.sflts	r11, r21
	l.bf	.L1110
	l.ori	r12, r0, 6
	l.sll	r13, r4, r12
	l.andi	r17, r13, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1112
	l.exths	r15, r17
	l.sflts	r15, r21
	l.bf	.L1112
	l.ori	r23, r0, 7
	l.sll	r25, r4, r23
	l.andi	r17, r25, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1114
	l.exths	r27, r17
	l.sflts	r27, r21
	l.bf	.L1114
	l.ori	r29, r0, 8
	l.sll	r31, r4, r29
	l.andi	r17, r31, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1116
	l.exths	r6, r17
	l.sflts	r6, r21
	l.bf	.L1116
	l.ori	r3, r0, 9
	l.sll	r19, r4, r3
	l.andi	r17, r19, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1118
	l.exths	r7, r17
	l.sflts	r7, r21
	l.bf	.L1118
	 l.nop

	l.ori	r17, r0, 10
	l.sll	r11, r4, r17
	l.andi	r17, r11, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1120
	l.exths	r12, r17
	l.sflts	r12, r21
	l.bf	.L1120
	l.ori	r13, r0, 11
	l.sll	r15, r4, r13
	l.andi	r17, r15, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1122
	l.exths	r23, r17
	l.sflts	r23, r21
	l.bf	.L1122
	l.ori	r25, r0, 12
	l.sll	r27, r4, r25
	l.andi	r17, r27, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1124
	l.exths	r29, r17
	l.sflts	r29, r21
	l.bf	.L1124
	l.ori	r31, r0, 13
	l.sll	r6, r4, r31
	l.andi	r17, r6, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1126
	l.exths	r3, r17
	l.sflts	r3, r21
	l.bf	.L1126
	l.ori	r19, r0, 14
	l.sll	r7, r4, r19
	l.andi	r17, r7, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1128
	l.exths	r11, r17
	l.sflts	r11, r21
	l.bf	.L1128
	l.ori	r12, r0, 15
	l.sll	r13, r4, r12
	l.andi	r11, r13, 0xffff
	l.sfleu	r8, r11
	l.bf	.L1129
	l.sfeq	r11, r21
	l.bnf	.L1176
	l.ori	r4, r0, 32768
.L1098:
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.jr	r9
	l.cmov	r11, r8, r11
.L1102:
	l.ori	r4, r0, 2
.L1097:
	l.sfgeu	r8, r17
	l.sub	r21, r8, r17
	l.cmov	r15, r21, r8
	l.ori	r25, r0, 1
	l.andi	r23, r15, 0xffff
	l.srl	r6, r17, r25
	l.sfgeu	r8, r17
	l.cmov	r8, r4, r0
	l.sub	r27, r23, r6
	l.sfgeu	r23, r6
	l.cmov	r3, r27, r23
	l.ori	r12, r0, 2
	l.sfgeu	r23, r6
	l.srl	r29, r4, r25
	l.andi	r31, r8, 0xffff
	l.cmov	r19, r29, r0
	l.srl	r13, r4, r12
	l.movhi	r15, hi(0)
	l.or	r7, r31, r19
	l.sfeq	r13, r15
	l.andi	r8, r3, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1098
	l.srl	r21, r17, r12
	l.sfgeu	r8, r21
	l.ori	r25, r0, 3
	l.sub	r8, r8, r21
	l.cmov	r31, r13, r0
	l.srl	r29, r4, r25
	l.cmov	r23, r8, r3
	l.or	r11, r11, r31
	l.sfeq	r29, r15
	l.andi	r8, r23, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1098
	l.srl	r6, r17, r25
	l.sfgeu	r8, r6
	l.ori	r12, r0, 4
	l.sub	r3, r8, r6
	l.cmov	r27, r29, r0
	l.srl	r13, r4, r12
	l.cmov	r19, r3, r23
	l.or	r7, r11, r27
	l.sfeq	r13, r15
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1098
	l.srl	r21, r17, r12
	l.sfgeu	r8, r21
	l.ori	r25, r0, 5
	l.sub	r8, r8, r21
	l.cmov	r31, r13, r0
	l.srl	r29, r4, r25
	l.cmov	r23, r8, r19
	l.or	r11, r11, r31
	l.sfeq	r29, r15
	l.andi	r8, r23, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1098
	l.srl	r6, r17, r25
	l.sfgeu	r8, r6
	l.ori	r12, r0, 6
	l.sub	r3, r8, r6
	l.cmov	r27, r29, r0
	l.srl	r13, r4, r12
	l.cmov	r19, r3, r23
	l.or	r7, r11, r27
	l.sfeq	r13, r15
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1098
	l.srl	r21, r17, r12
	l.sfgeu	r8, r21
	l.ori	r25, r0, 7
	l.sub	r8, r8, r21
	l.cmov	r31, r13, r0
	l.srl	r29, r4, r25
	l.cmov	r23, r8, r19
	l.or	r11, r11, r31
	l.sfeq	r29, r15
	l.andi	r8, r23, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1098
	l.srl	r6, r17, r25
	l.sfgeu	r8, r6
	l.ori	r12, r0, 8
	l.sub	r3, r8, r6
	l.cmov	r27, r29, r0
	l.srl	r13, r4, r12
	l.cmov	r19, r3, r23
	l.or	r7, r11, r27
	l.sfeq	r13, r15
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1098
	l.srl	r21, r17, r12
	l.sfgeu	r8, r21
	l.ori	r25, r0, 9
	l.sub	r8, r8, r21
	l.cmov	r31, r13, r0
	l.srl	r29, r4, r25
	l.cmov	r23, r8, r19
	l.or	r11, r11, r31
	l.sfeq	r29, r15
	l.andi	r8, r23, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1098
	l.srl	r6, r17, r25
	l.sfgeu	r8, r6
	l.ori	r12, r0, 10
	l.sub	r3, r8, r6
	l.cmov	r27, r29, r0
	l.srl	r13, r4, r12
	l.cmov	r19, r3, r23
	l.or	r7, r11, r27
	l.sfeq	r13, r15
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1098
	l.srl	r21, r17, r12
	l.sfgeu	r8, r21
	l.ori	r25, r0, 11
	l.sub	r8, r8, r21
	l.cmov	r31, r13, r0
	l.srl	r29, r4, r25
	l.cmov	r23, r8, r19
	l.or	r11, r11, r31
	l.sfeq	r29, r15
	l.andi	r8, r23, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1098
	l.srl	r6, r17, r25
	l.sfgeu	r8, r6
	l.ori	r12, r0, 12
	l.sub	r3, r8, r6
	l.cmov	r27, r29, r0
	l.srl	r13, r4, r12
	l.cmov	r19, r3, r23
	l.or	r7, r11, r27
	l.sfeq	r13, r15
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1098
	l.srl	r21, r17, r12
	l.sfgeu	r8, r21
	l.ori	r25, r0, 13
	l.sub	r8, r8, r21
	l.cmov	r31, r13, r0
	l.srl	r29, r4, r25
	l.cmov	r23, r8, r19
	l.or	r11, r11, r31
	l.sfeq	r29, r15
	l.andi	r8, r23, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1098
	l.srl	r6, r17, r25
	l.sfgeu	r8, r6
	l.ori	r12, r0, 14
	l.sub	r3, r8, r6
	l.cmov	r27, r29, r0
	l.srl	r13, r4, r12
	l.cmov	r19, r3, r23
	l.or	r7, r11, r27
	l.sfeq	r13, r15
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1098
	l.srl	r21, r17, r12
	l.sfgeu	r8, r21
	l.sub	r15, r8, r21
	l.ori	r29, r0, 16384
	l.cmov	r8, r13, r0
	l.cmov	r31, r15, r19
	l.or	r23, r11, r8
	l.ori	r25, r0, 15
	l.sfeq	r4, r29
	l.andi	r8, r31, 0xffff
	l.andi	r11, r23, 0xffff
	l.bf	.L1098
	l.srl	r17, r17, r25
	l.sfgeu	r8, r17
	l.sub	r4, r8, r17
	l.ori	r6, r0, 1
	l.cmov	r3, r6, r0
	l.cmov	r27, r4, r31
	l.movhi	r19, hi(0)
	l.andi	r8, r27, 0xffff
	l.or	r11, r3, r11
	l.sfne	r5, r19
	l.jr	r9
	l.cmov	r11, r8, r11
.L1104:
	l.j	.L1097
	l.ori	r4, r0, 4
.L1106:
	l.j	.L1097
	l.ori	r4, r0, 8
.L1108:
	l.j	.L1097
	l.ori	r4, r0, 16
.L1118:
	l.j	.L1097
	l.ori	r4, r0, 512
.L1110:
	l.j	.L1097
	l.ori	r4, r0, 32
.L1112:
	l.j	.L1097
	l.ori	r4, r0, 64
.L1114:
	l.j	.L1097
	l.ori	r4, r0, 128
.L1116:
	l.j	.L1097
	l.ori	r4, r0, 256
.L1175:
	l.sfeq	r4, r8
	l.sub	r6, r8, r4
	l.cmov	r3, r6, r8
	l.ori	r19, r0, 1
	l.andi	r8, r3, 0xffff
	l.j	.L1098
	l.cmov	r11, r19, r0
.L1120:
	l.j	.L1097
	l.ori	r4, r0, 1024
.L1122:
	l.j	.L1097
	l.ori	r4, r0, 2048
.L1124:
	l.j	.L1097
	l.ori	r4, r0, 4096
.L1126:
	l.j	.L1097
	l.ori	r4, r0, 8192
.L1128:
	l.j	.L1097
	l.ori	r4, r0, 16384
.L1176:
	l.j	.L1097
	l.or	r17, r4, r4
.L1129:
	l.ori	r17, r0, 32768
	l.j	.L1097
	l.or	r4, r17, r17
.L1095:
	l.sub	r7, r8, r4
	l.andi	r8, r7, 0xffff
	l.j	.L1098
	l.ori	r11, r0, 1
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r6, r0, 32
	l.bf	.L1178
	l.ori	r17, r0, 1
	l.j	.L1197
	l.sfgeu	r3, r4
.L1182:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L1180
	l.movhi	r7, hi(0)
	l.sfeq	r6, r7
	l.bf	.L1199
	l.movhi	r13, hi(0)
.L1178:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1182
	l.addi	r6, r6, -1
.L1183:
	l.movhi	r6, hi(0)
.L1184:
	l.sfgeu	r3, r4
	l.ori	r23, r0, 1
	l.cmov	r8, r17, r0
	l.sub	r21, r3, r4
	l.srl	r17, r17, r23
	l.movhi	r12, hi(0)
	l.cmov	r3, r21, r3
	l.sfne	r17, r12
	l.or	r6, r6, r8
	l.bf	.L1184
	l.srl	r4, r4, r23
.L1181:
	l.movhi	r13, hi(0)
.L1199:
	l.sfne	r5, r13
	l.jr	r9
	l.cmov	r11, r3, r6
.L1180:
	l.sfeq	r17, r7
	l.bnf	.L1183
	l.movhi	r6, hi(0)
	l.j	.L1199
	l.movhi	r13, hi(0)
.L1197:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L1181
	l.cmov	r6, r11, r0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1201
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1201:
	l.sfeq	r5, r6
	l.bf	.L1204
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.srl	r12, r4, r8
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r12, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1204:
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
	l.bf	.L1207
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.ori	r4, r0, 31
	l.sra	r11, r3, r4
	l.jr	r9
	l.sra	r12, r3, r5
.L1207:
	l.sfeq	r5, r6
	l.bf	.L1210
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.sll	r13, r3, r8
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r13, r12
.L1210:
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
	l.sfleu	r3, r17
	l.ori	r25, r0, 1
	l.cmov	r4, r25, r0
	l.ori	r5, r0, 4
	l.sll	r6, r4, r5
	l.ori	r7, r0, 16
	l.sub	r8, r7, r6
	l.srl	r3, r3, r8
	l.movhi	r29, hi(0)
	l.andi	r19, r3, 65280
	l.sfeq	r19, r29
	l.ori	r23, r0, 1
	l.cmov	r11, r23, r0
	l.ori	r12, r0, 3
	l.sll	r13, r11, r12
	l.ori	r15, r0, 8
	l.sub	r21, r15, r13
	l.srl	r27, r3, r21
	l.andi	r31, r27, 240
	l.sfeq	r31, r29
	l.ori	r17, r0, 1
	l.cmov	r25, r17, r0
	l.ori	r4, r0, 2
	l.sll	r5, r25, r4
	l.ori	r7, r0, 4
	l.sub	r8, r7, r5
	l.srl	r3, r27, r8
	l.andi	r19, r3, 12
	l.sfeq	r19, r29
	l.ori	r23, r0, 1
	l.cmov	r11, r23, r0
	l.add	r12, r11, r11
	l.ori	r15, r0, 2
	l.sub	r21, r15, r12
	l.srl	r27, r3, r21
	l.add	r6, r13, r6
	l.and	r13, r27, r15
	l.add	r31, r5, r6
	l.sub	r17, r15, r27
	l.sfeq	r13, r29
	l.cmov	r29, r17, r0
	l.add	r25, r12, r31
	l.jr	r9
	l.add	r11, r29, r25
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1218
	l.sfgts	r3, r5
	l.bf	.L1219
	l.sfltu	r4, r6
	l.bf	.L1218
	l.sfgtu	r4, r6
	l.bf	.L1219
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1218:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1219:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1224
	l.sfgts	r3, r5
	l.bf	.L1223
	l.sfltu	r4, r6
	l.bf	.L1224
	l.sfgtu	r4, r6
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1224:
	l.jr	r9
	l.xori	r11, r0, -1
.L1223:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.movhi	r27, hi(0)
	l.andi	r17, r3, 65535
	l.sfeq	r17, r27
	l.ori	r25, r0, 1
	l.cmov	r4, r25, r0
	l.ori	r5, r0, 4
	l.sll	r6, r4, r5
	l.srl	r3, r3, r6
	l.andi	r19, r3, 255
	l.sfeq	r19, r27
	l.ori	r23, r0, 1
	l.cmov	r7, r23, r0
	l.ori	r8, r0, 3
	l.sll	r12, r7, r8
	l.srl	r11, r3, r12
	l.andi	r13, r11, 15
	l.sfeq	r13, r27
	l.ori	r21, r0, 1
	l.cmov	r15, r21, r0
	l.ori	r29, r0, 2
	l.sll	r31, r15, r29
	l.srl	r17, r11, r31
	l.andi	r25, r17, 3
	l.sfeq	r25, r27
	l.ori	r27, r0, 1
	l.cmov	r4, r27, r0
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
	l.bf	.L1227
	l.movhi	r6, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1229:
	l.jr	r9
	 l.nop

.L1227:
	l.sfeq	r5, r6
	l.bf	.L1230
	l.ori	r7, r0, 32
	l.sub	r8, r7, r5
	l.sll	r11, r3, r8
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r11, r12
	l.j	.L1229
	l.or	r11, r3, r3
.L1230:
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
	l.sub	r3, r17, r3
	l.cmov	r4, r11, r0
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
	l.sll	r5, r3, r17
	l.srl	r21, r4, r23
	l.movhi	r19, hi(1431633920)
	l.ori	r6, r19, 21845
	l.or	r7, r5, r21
	l.and	r8, r7, r6
	l.sub	r11, r4, r8
	l.srl	r12, r3, r23
	l.sfgtu	r11, r4
	l.ori	r13, r0, 1
	l.and	r4, r12, r6
	l.cmov	r15, r13, r0
	l.sub	r3, r3, r4
	l.sub	r27, r3, r15
	l.ori	r31, r0, 2
	l.ori	r25, r0, 30
	l.sll	r29, r27, r25
	l.srl	r17, r11, r31
	l.movhi	r5, hi(858980352)
	l.ori	r19, r5, 13107
	l.or	r23, r29, r17
	l.and	r21, r23, r19
	l.and	r6, r11, r19
	l.add	r7, r21, r6
	l.srl	r8, r27, r31
	l.sfltu	r7, r21
	l.and	r11, r8, r19
	l.and	r12, r27, r19
	l.ori	r4, r0, 1
	l.cmov	r13, r4, r0
	l.add	r15, r11, r12
	l.add	r3, r13, r15
	l.ori	r25, r0, 4
	l.ori	r27, r0, 28
	l.sll	r29, r3, r27
	l.srl	r31, r7, r25
	l.or	r5, r29, r31
	l.add	r17, r5, r7
	l.srl	r23, r3, r25
	l.sfltu	r17, r5
	l.ori	r19, r0, 1
	l.add	r7, r23, r3
	l.cmov	r6, r19, r0
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
	l.movhi	r29, ha(.LC21)
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.or	r21, r3, r3
	l.sfeq	r17, r19
	l.addi	r3, r29, lo(.LC21)
	l.or	r23, r4, r4
	l.or	r29, r5, r5
	l.movhi	r25, hi(1072693248)
	l.bf	.L1239
	l.lwz	r27, 4(r3)
.L1241:
	lf.mul.d	r25,r27, r25,r27, r21,r23
.L1239:
	l.ori	r4, r0, 31
	l.srl	r6, r29, r4
	l.add	r7, r6, r29
	l.ori	r8, r0, 1
	l.sra	r29, r7, r8
	l.movhi	r11, hi(0)
	l.sfeq	r29, r11
	l.bf	.L1240
	l.andi	r12, r29, 1
	l.movhi	r31, hi(0)
	l.ori	r13, r0, 31
	l.srl	r15, r29, r13
	l.sfne	r12, r31
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L1241
	l.add	r19, r15, r29
	l.ori	r17, r0, 1
	l.sra	r29, r19, r17
.L1246:
	l.andi	r12, r29, 1
	l.movhi	r31, hi(0)
	l.ori	r13, r0, 31
	l.srl	r15, r29, r13
	l.sfne	r12, r31
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L1241
	l.add	r19, r15, r29
	l.j	.L1246
	l.sra	r29, r19, r17
.L1240:
	l.movhi	r21, hi(0)
	l.sfges	r5, r21
	l.bf	.L1247
	l.or	r11, r25, r25
	l.movhi	r17, hi(1072693248)
	l.lwz	r19, 4(r3)
	lf.div.d	r25,r27, r17,r19, r25,r27
	l.or	r11, r25, r25
.L1247:
	l.jr	r9
	l.or	r12, r27, r27
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.andi	r17, r4, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.or	r29, r4, r4
	l.bf	.L1249
	l.movhi	r11, hi(1065353216)
.L1251:
	lf.mul.s	r11, r11, r3
.L1249:
	l.ori	r5, r0, 31
	l.srl	r6, r29, r5
	l.add	r7, r6, r29
	l.ori	r8, r0, 1
	l.sra	r29, r7, r8
	l.movhi	r12, hi(0)
	l.sfeq	r29, r12
	l.bf	.L1250
	l.andi	r13, r29, 1
	l.movhi	r21, hi(0)
	l.ori	r15, r0, 31
	l.srl	r23, r29, r15
	l.sfne	r13, r21
	lf.mul.s	r3, r3, r3
	l.bf	.L1251
	l.add	r25, r23, r29
	l.ori	r27, r0, 1
	l.sra	r29, r25, r27
.L1257:
	l.andi	r13, r29, 1
	l.movhi	r21, hi(0)
	l.ori	r15, r0, 31
	l.srl	r23, r29, r15
	l.sfne	r13, r21
	lf.mul.s	r3, r3, r3
	l.bf	.L1251
	l.add	r25, r23, r29
	l.j	.L1257
	l.sra	r29, r25, r27
.L1250:
	l.movhi	r3, hi(0)
	l.sfges	r4, r3
	l.bnf	.L1256
	 l.nop

	l.jr	r9
	 l.nop

.L1256:
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
	l.bf	.L1262
	l.sfgtu	r3, r5
	l.bf	.L1263
	l.sfltu	r4, r6
	l.bf	.L1262
	l.sfgtu	r4, r6
	l.bf	.L1263
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1262:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1263:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1268
	l.sfgtu	r3, r5
	l.bf	.L1267
	l.sfltu	r4, r6
	l.bf	.L1268
	l.sfgtu	r4, r6
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1268:
	l.jr	r9
	l.xori	r11, r0, -1
.L1267:
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
	.global	__floatundisf
	.global	__cmpdi2
	.global	__truncdfsf2
	.global	__clzdi2
	.global	__clzsi2
	.global	__moddi3
	.global	__divdi3
	.global	__muldi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
