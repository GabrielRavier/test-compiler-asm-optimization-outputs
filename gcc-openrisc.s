	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.sfleu	r3, r4
	l.bf	.L2
	l.or	r11, r3, r3
	l.sfeqi	r5, 0
	l.add	r8, r4, r5
	l.bf	.L3
	l.add	r6, r3, r5
.L4:
	l.addi	r6, r6, -1
	l.lbs	r7, -1(r8)
	l.sb	0(r6), r7
	l.sfne	r11, r6
	l.bf	.L4
	l.addi	r8, r8, -1
.L3:
	l.jr	r9
	 l.nop

.L2:
	l.sfeq	r3, r4
	l.bf	.L3
	l.sfeqi	r5, 0
	l.bf	.L3
	l.addi	r17, r5, -1
	l.sfleui	r17, 6
	l.bf	.L5
	l.addi	r3, r4, 1
	l.or	r3, r4, r11
	l.andi	r6, r3, 3
	l.sfnei	r6, 0
	l.bf	.L5
	l.addi	r3, r4, 1
	l.sub	r7, r11, r3
	l.sfleui	r7, 2
	l.bf	.L5
	l.ori	r8, r0, 2
	l.srl	r23, r5, r8
	l.sll	r12, r23, r8
	l.or	r13, r11, r11
	l.add	r21, r4, r12
.L6:
	l.lwz	r19, 0(r4)
	l.addi	r4, r4, 4
	l.sw	0(r13), r19
	l.sfne	r21, r4
	l.bf	.L6
	l.addi	r13, r13, 4
	l.sfeq	r5, r12
	l.add	r4, r11, r12
	l.bf	.L3
	l.sub	r15, r5, r12
	l.lbs	r5, 0(r21)
	l.sfeqi	r15, 1
	l.bf	.L3
	l.sb	0(r4), r5
	l.lbs	r25, 1(r21)
	l.sfeqi	r15, 2
	l.bf	.L3
	l.sb	1(r4), r25
	l.lbs	r27, 2(r21)
	l.jr	r9
	l.sb	2(r4), r27
.L5:
	l.add	r29, r11, r5
	l.j	.L9
	l.or	r17, r11, r11
.L36:
	l.addi	r3, r3, 1
.L9:
	l.addi	r17, r17, 1
	l.lbs	r31, -1(r3)
	l.sfne	r17, r29
	l.bf	.L36
	l.sb	-1(r17), r31
	l.jr	r9
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.sfnei	r6, 0
	l.bf	.L38
	l.andi	r5, r5, 0xff
	l.j	.L48
	l.movhi	r11, hi(0)
.L41:
	l.sfeqi	r6, 0
	l.bf	.L40
	l.addi	r3, r3, 1
.L38:
	l.lbz	r17, 0(r4)
	l.sb	0(r3), r17
	l.sfne	r17, r5
	l.addi	r6, r6, -1
	l.bf	.L41
	l.addi	r4, r4, 1
	l.jr	r9
	l.addi	r11, r3, 1
.L40:
	l.movhi	r11, hi(0)
.L48:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.sfnei	r5, 0
	l.bf	.L50
	l.andi	r4, r4, 0xff
	l.j	.L57
	l.movhi	r11, hi(0)
.L52:
	l.sfeqi	r5, 0
	l.bf	.L53
	l.addi	r3, r3, 1
.L50:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L52
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L53:
	l.movhi	r11, hi(0)
.L57:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.sfnei	r5, 0
	l.bf	.L59
	l.movhi	r11, hi(0)
	l.j	.L69
	 l.nop

.L61:
	l.sfeqi	r5, 0
	l.bf	.L63
	l.movhi	r11, hi(0)
.L59:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r11, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.bf	.L61
	l.addi	r4, r4, 1
	l.jr	r9
	l.sub	r11, r11, r17
.L63:
.L69:
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
	l.sfeqi	r5, 0
	l.bf	.L71
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L71:
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
	l.j	.L77
	l.addi	r3, r3, -1
.L79:
	l.lbz	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L76
	 l.nop

.L77:
	l.sfne	r6, r3
	l.or	r11, r6, r6
	l.bf	.L79
	l.addi	r6, r6, -1
	l.movhi	r11, hi(0)
.L76:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.sfnei	r5, 0
	l.bnf	.L83
	l.or	r16, r3, r3
	l.jal	memset
	l.andi	r4, r4, 0xff
.L83:
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
	l.sb	0(r3), r17
	l.sfeqi	r17, 0
	l.bf	.L86
	l.or	r11, r3, r3
.L87:
	l.lbs	r3, 1(r4)
	l.sfnei	r3, 0
	l.sb	1(r11), r3
	l.addi	r11, r11, 1
	l.bf	.L87
	l.addi	r4, r4, 1
.L86:
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.or	r11, r3, r3
	l.lbs	r3, 0(r3)
	l.sfnei	r3, 0
	l.bf	.L93
	l.andi	r4, r4, 0xff
	l.j	.L92
	 l.nop

.L95:
	l.lbs	r3, 1(r11)
	l.sfeqi	r3, 0
	l.bf	.L92
	l.addi	r11, r11, 1
.L93:
	l.andi	r17, r3, 0xff
	l.sfne	r17, r4
	l.bf	.L95
	 l.nop

.L92:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.j	.L102
	l.or	r11, r3, r3
.L105:
	l.sfnei	r17, 0
	l.bnf	.L104
	l.addi	r11, r11, 1
.L102:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bnf	.L105
	 l.nop

	l.jr	r9
	 l.nop

.L104:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L109:
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfeq	r17, r11
	l.bnf	.L116
	l.sfnei	r17, 0
	l.addi	r3, r3, 1
	l.bf	.L109
	l.addi	r4, r4, 1
.L108:
	l.andi	r3, r11, 0xff
	l.jr	r9
	l.sub	r11, r17, r3
.L116:
	l.j	.L108
	l.andi	r17, r17, 0xff
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.lbs	r17, 0(r3)
	l.sfeqi	r17, 0
	l.bf	.L120
	 l.nop

	l.or	r11, r3, r3
.L119:
	l.lbs	r4, 1(r11)
	l.sfnei	r4, 0
	l.bf	.L119
	l.addi	r11, r11, 1
	l.jr	r9
	l.sub	r11, r11, r3
.L120:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.sfeqi	r5, 0
	l.bf	.L130
	 l.nop

	l.lbz	r11, 0(r3)
	l.sfnei	r11, 0
	l.bnf	.L132
	l.addi	r5, r5, -1
	l.j	.L126
	l.add	r19, r3, r5
.L134:
	l.sfne	r3, r19
	l.bnf	.L125
	l.addi	r3, r3, 1
	l.sfeq	r17, r11
	l.bnf	.L135
	l.sub	r11, r11, r17
	l.lbz	r11, 0(r3)
	l.sfnei	r11, 0
	l.bnf	.L133
	 l.nop

	l.or	r4, r21, r21
.L126:
	l.lbz	r17, 0(r4)
	l.sfnei	r17, 0
	l.bf	.L134
	l.addi	r21, r4, 1
.L125:
	l.sub	r11, r11, r17
.L122:
.L135:
	l.jr	r9
	 l.nop

.L130:
	l.jr	r9
	l.movhi	r11, hi(0)
.L133:
	l.lbz	r17, 1(r4)
	l.j	.L122
	l.sub	r11, r11, r17
.L132:
	l.lbz	r17, 0(r4)
	l.j	.L122
	l.sub	r11, r11, r17
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.sflesi	r5, 1
	l.bf	.L136
	l.ori	r17, r0, 1
	l.srl	r5, r5, r17
	l.add	r6, r5, r5
	l.add	r7, r3, r6
.L138:
	l.lbz	r21, 1(r3)
	l.lbz	r19, 0(r3)
	l.addi	r3, r3, 2
	l.sb	0(r4), r21
	l.sb	1(r4), r19
	l.sfne	r3, r7
	l.bf	.L138
	l.addi	r4, r4, 2
.L136:
	l.jr	r9
	 l.nop

	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	l.ori	r3, r3, 32
	l.addi	r4, r3, -97
	l.sfleui	r4, 25
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.sfleui	r3, 127
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.sfeqi	r3, 32
	l.bf	.L144
	l.sfeqi	r3, 9
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L144:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.sfleui	r3, 31
	l.bf	.L145
	l.ori	r11, r0, 1
	l.sfeqi	r3, 127
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L145:
	l.jr	r9
	 l.nop

	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	l.addi	r3, r3, -48
	l.sfleui	r3, 9
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	l.addi	r3, r3, -33
	l.sfleui	r3, 93
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	l.addi	r3, r3, -97
	l.sfleui	r3, 25
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	l.addi	r3, r3, -32
	l.sfleui	r3, 94
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.sfeqi	r3, 32
	l.bf	.L154
	l.addi	r3, r3, -9
	l.sfleui	r3, 4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L154:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	l.addi	r3, r3, -65
	l.sfleui	r3, 25
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.sfleui	r3, 31
	l.bf	.L156
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.sfleui	r17, 32
	l.bnf	.L161
	l.addi	r4, r3, -8232
.L156:
	l.jr	r9
	 l.nop

.L161:
	l.sfleu	r4, r11
	l.bf	.L156
	l.movhi	r5, hi(-65536)
	l.ori	r6, r5, 7
	l.add	r3, r3, r6
	l.sfleui	r3, 2
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	l.addi	r3, r3, -48
	l.sfleui	r3, 9
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.sfgtui	r3, 254
	l.bnf	.L170
	l.sfleui	r3, 8231
	l.bf	.L168
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L168
	l.movhi	r4, hi(-65536)
	l.ori	r5, r4, 8192
	l.add	r6, r3, r5
	l.sfleui	r6, 8184
	l.bf	.L168
	l.ori	r7, r4, 4
	l.movhi	r8, hi(1048576)
	l.add	r11, r3, r7
	l.ori	r12, r8, 3
	l.sfgtu	r11, r12
	l.bf	.L169
	l.andi	r3, r3, 65534
	l.ori	r13, r0, 65534
	l.sfne	r3, r13
	l.ori	r15, r0, 1
	l.jr	r9
	l.cmov	r11, r15, r0
.L168:
	l.jr	r9
	l.ori	r11, r0, 1
.L170:
	l.addi	r21, r3, 1
	l.andi	r23, r21, 127
	l.sfgtui	r23, 32
	l.ori	r25, r0, 1
	l.jr	r9
	l.cmov	r11, r25, r0
.L169:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.sfleui	r17, 9
	l.bf	.L171
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r4, r3, -97
	l.sfleui	r4, 5
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L171:
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
	l.bf	.L178
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L179
	l.or	r25, r5, r5
	lf.sfgt.d	r17,r19, r21,r23
	l.bf	.L183
	l.movhi	r25, hi(0)
	l.movhi	r17, ha(.LC0+4)
	l.lwz	r27, lo(.LC0+4)(r17)
.L175:
	l.or	r11, r25, r25
	l.jr	r9
	l.or	r12, r27, r27
.L183:
	lf.sub.d	r25,r27, r17,r19, r21,r23
	l.or	r11, r25, r25
	l.jr	r9
	l.or	r12, r27, r27
.L178:
	l.or	r25, r3, r3
	l.j	.L175
	l.or	r27, r4, r4
.L179:
	l.j	.L175
	l.or	r27, r6, r6
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	lf.sfun.s	r3, r3
	l.bf	.L187
	 l.nop

	lf.sfun.s	r4, r4
	l.bf	.L188
	 l.nop

	lf.sfgt.s	r3, r4
	l.bnf	.L191
	 l.nop

	lf.sub.s	r11, r3, r4
	l.jr	r9
	 l.nop

.L191:
	l.jr	r9
	l.movhi	r11, hi(0)
.L187:
	l.jr	r9
	l.or	r11, r3, r3
.L188:
	l.jr	r9
	l.or	r11, r4, r4
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	lf.sfun.d	r17,r19, r17,r19
	l.or	r21, r5, r5
	l.bf	.L199
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L198
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bnf	.L200
	l.sfnei	r27, 0
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L201
	l.or	r11, r21, r21
.L198:
	l.or	r11, r17, r17
.L202:
	l.jr	r9
	l.or	r12, r19, r19
.L200:
	l.bnf	.L202
	l.or	r11, r17, r17
.L199:
	l.or	r11, r21, r21
.L201:
	l.jr	r9
	l.or	r12, r23, r23
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	lf.sfun.s	r3, r3
	l.bf	.L208
	 l.nop

	lf.sfun.s	r4, r4
	l.bf	.L209
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r3
	l.and	r5, r17, r4
	l.sfeq	r19, r5
	l.bf	.L205
	l.sfnei	r19, 0
	l.jr	r9
	l.cmov	r11, r4, r3
.L205:
	lf.sflt.s	r3, r4
	l.jr	r9
	l.cmov	r11, r4, r3
.L208:
	l.jr	r9
	l.or	r11, r4, r4
.L209:
	l.jr	r9
	l.or	r11, r3, r3
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	lf.sfun.d	r17,r19, r17,r19
	l.or	r21, r5, r5
	l.bf	.L218
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L217
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bnf	.L219
	l.sfnei	r27, 0
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L220
	l.or	r11, r21, r21
.L217:
	l.or	r11, r17, r17
.L221:
	l.jr	r9
	l.or	r12, r19, r19
.L219:
	l.bnf	.L221
	l.or	r11, r17, r17
.L218:
	l.or	r11, r21, r21
.L220:
	l.jr	r9
	l.or	r12, r23, r23
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	lf.sfun.d	r17,r19, r17,r19
	l.or	r21, r5, r5
	l.bf	.L227
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L229
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bnf	.L230
	l.sfnei	r27, 0
	lf.sflt.d	r17,r19, r21,r23
	l.bnf	.L231
	l.or	r11, r21, r21
.L229:
	l.or	r11, r17, r17
.L232:
	l.jr	r9
	l.or	r12, r19, r19
.L230:
	l.bf	.L232
	l.or	r11, r17, r17
.L227:
	l.or	r11, r21, r21
.L231:
	l.jr	r9
	l.or	r12, r23, r23
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	lf.sfun.s	r3, r3
	l.bf	.L238
	 l.nop

	lf.sfun.s	r4, r4
	l.bf	.L239
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r3
	l.and	r5, r17, r4
	l.sfeq	r19, r5
	l.bf	.L235
	l.sfnei	r19, 0
	l.jr	r9
	l.cmov	r11, r3, r4
.L235:
	lf.sflt.s	r3, r4
	l.jr	r9
	l.cmov	r11, r3, r4
.L238:
	l.jr	r9
	l.or	r11, r4, r4
.L239:
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
	l.bf	.L246
	l.or	r23, r6, r6
	lf.sfun.d	r21,r23, r21,r23
	l.bf	.L248
	l.movhi	r25, hi(-2147483648)
	l.and	r27, r25, r3
	l.and	r3, r25, r5
	l.sfeq	r27, r3
	l.bnf	.L249
	l.sfnei	r27, 0
	lf.sflt.d	r17,r19, r21,r23
	l.bnf	.L250
	l.or	r11, r21, r21
.L248:
	l.or	r11, r17, r17
.L251:
	l.jr	r9
	l.or	r12, r19, r19
.L249:
	l.bf	.L251
	l.or	r11, r17, r17
.L246:
	l.or	r11, r21, r21
.L250:
	l.jr	r9
	l.or	r12, r23, r23
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r11, ha(.LANCHOR0)
	l.sfeqi	r3, 0
	l.bf	.L255
	l.addi	r11, r11, lo(.LANCHOR0)
	l.movhi	r21, ha(.LANCHOR1)
	l.or	r19, r11, r11
	l.addi	r4, r21, lo(.LANCHOR1)
.L254:
	l.andi	r17, r3, 63
	l.add	r5, r4, r17
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.lbz	r6, 0(r5)
	l.sfnei	r3, 0
	l.sb	0(r19), r6
	l.bf	.L254
	l.addi	r19, r19, 1
	l.jr	r9
	l.sb	0(r19), r0
.L255:
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
	l.sfgeui	r12, -1
	l.ori	r17, r0, 1
	l.cmov	r3, r17, r0
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
	l.sfnei	r4, 0
	l.bnf	.L266
	 l.nop

	l.lwz	r17, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r17
	l.sw	0(r4), r3
	l.lwz	r4, 0(r3)
	l.sfeqi	r4, 0
	l.bf	.L260
	 l.nop

	l.sw	4(r4), r3
.L260:
	l.jr	r9
	 l.nop

.L266:
	l.sw	4(r3), r0
	l.jr	r9
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.sfeqi	r17, 0
	l.bf	.L268
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L268:
	l.lwz	r3, 4(r3)
	l.sfeqi	r3, 0
	l.bf	.L267
	 l.nop

	l.sw	0(r3), r17
.L267:
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -40
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
	l.sfeqi	r22, 0
	l.or	r28, r5, r5
	l.or	r24, r3, r3
	l.or	r30, r4, r4
	l.bf	.L277
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L279
	l.movhi	r18, hi(0)
.L292:
	l.sfne	r22, r18
	l.bnf	.L294
	l.addi	r17, r22, 1
.L279:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.sfeqi	r11, 0
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L292
	l.add	r16, r16, r20
.L276:
	l.or	r11, r14, r14
.L293:
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
.L277:
	l.addi	r17, r22, 1
.L294:
	l.mul	r3, r20, r22
	l.sw	0(r28), r17
	l.sfeqi	r20, 0
	l.bf	.L276
	l.add	r14, r30, r3
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L293
	l.or	r11, r14, r14
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -32
	l.sw	24(r1), r28
	l.sw	0(r1), r16
	l.lwz	r28, 0(r5)
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sfeqi	r28, 0
	l.bf	.L296
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L298
	l.movhi	r18, hi(0)
.L307:
	l.sfne	r28, r18
	l.bnf	.L295
	l.movhi	r26, hi(0)
.L298:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.sfeqi	r11, 0
	l.or	r26, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L307
	l.add	r16, r16, r22
.L295:
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
.L296:
	l.j	.L295
	l.movhi	r26, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.sfgesi	r3, 0
	l.bnf	.L310
	l.or	r11, r3, r3
	l.jr	r9
	 l.nop

.L310:
	l.jr	r9
	l.sub	r11, r0, r3
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
.L318:
	l.lbs	r19, 0(r3)
	l.sfeqi	r19, 32
	l.bf	.L312
	l.addi	r17, r19, -9
	l.sfleui	r17, 4
	l.bf	.L312
	l.sfeqi	r19, 43
	l.bf	.L313
	l.sfeqi	r19, 45
	l.bnf	.L333
	l.addi	r6, r19, -48
	l.lbs	r5, 1(r3)
	l.addi	r6, r5, -48
	l.sfgtui	r6, 9
	l.bf	.L323
	l.addi	r3, r3, 1
	l.ori	r25, r0, 1
.L316:
	l.movhi	r21, hi(0)
	l.ori	r7, r0, 2
.L334:
	l.sll	r8, r21, r7
	l.add	r11, r8, r21
	l.lbs	r23, 1(r3)
	l.add	r12, r11, r11
	l.or	r19, r6, r6
	l.sub	r21, r12, r6
	l.addi	r6, r23, -48
	l.sfleui	r6, 9
	l.bf	.L334
	l.addi	r3, r3, 1
	l.sfnei	r25, 0
	l.bf	.L311
	 l.nop

	l.sub	r21, r19, r12
.L311:
	l.jr	r9
	l.or	r11, r21, r21
.L312:
	l.j	.L318
	l.addi	r3, r3, 1
.L333:
	l.sfleui	r6, 9
	l.bf	.L316
	l.movhi	r25, hi(0)
.L323:
	l.j	.L311
	l.movhi	r21, hi(0)
.L313:
	l.lbs	r4, 1(r3)
	l.addi	r6, r4, -48
	l.sfleui	r6, 9
	l.addi	r3, r3, 1
	l.bf	.L316
	l.movhi	r25, hi(0)
	l.j	.L311
	l.movhi	r21, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
.L340:
	l.lbs	r19, 0(r3)
	l.sfeqi	r19, 32
	l.bf	.L336
	l.addi	r17, r19, -9
	l.sfleui	r17, 4
	l.bf	.L336
	l.sfeqi	r19, 43
	l.bf	.L337
	l.sfeqi	r19, 45
	l.bf	.L338
	l.addi	r6, r19, -48
	l.sfleui	r6, 9
	l.bnf	.L357
	l.movhi	r21, hi(0)
	l.movhi	r25, hi(0)
.L341:
	l.movhi	r21, hi(0)
	l.ori	r7, r0, 2
.L358:
	l.sll	r8, r21, r7
	l.add	r11, r8, r21
	l.lbs	r23, 1(r3)
	l.add	r12, r11, r11
	l.or	r19, r6, r6
	l.sub	r21, r12, r6
	l.addi	r6, r23, -48
	l.sfleui	r6, 9
	l.bf	.L358
	l.addi	r3, r3, 1
	l.sfnei	r25, 0
	l.bf	.L335
	 l.nop

	l.sub	r21, r19, r12
.L335:
.L357:
	l.jr	r9
	l.or	r11, r21, r21
.L336:
	l.j	.L340
	l.addi	r3, r3, 1
.L338:
	l.lbs	r5, 1(r3)
	l.addi	r6, r5, -48
	l.sfleui	r6, 9
	l.addi	r3, r3, 1
	l.bf	.L341
	l.ori	r25, r0, 1
.L347:
	l.j	.L335
	l.movhi	r21, hi(0)
.L337:
	l.lbs	r4, 1(r3)
	l.addi	r6, r4, -48
	l.sfgtui	r6, 9
	l.bf	.L347
	l.addi	r3, r3, 1
	l.j	.L341
	l.movhi	r25, hi(0)
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
.L366:
	l.lbs	r19, 0(r3)
	l.sfeqi	r19, 32
	l.bf	.L360
	l.addi	r17, r19, -9
	l.sfleui	r17, 4
	l.bf	.L360
	l.sfeqi	r19, 43
	l.bf	.L361
	l.sfeqi	r19, 45
	l.bnf	.L381
	l.addi	r6, r19, -48
	l.lbs	r5, 1(r3)
	l.addi	r6, r5, -48
	l.sfgtui	r6, 9
	l.bf	.L371
	l.addi	r3, r3, 1
	l.ori	r31, r0, 1
.L364:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
.L368:
	l.ori	r23, r0, 2
	l.sll	r7, r12, r23
	l.ori	r25, r0, 30
	l.add	r21, r7, r12
	l.sll	r8, r11, r23
	l.srl	r12, r12, r25
	l.sfltu	r21, r7
	l.or	r13, r12, r8
	l.ori	r27, r0, 1
	l.add	r15, r21, r21
	l.add	r11, r13, r11
	l.cmov	r29, r27, r0
	l.add	r19, r29, r11
	l.sfltu	r15, r21
	l.sub	r12, r15, r6
	l.ori	r17, r0, 1
	l.ori	r23, r0, 31
	l.cmov	r4, r17, r0
	l.add	r5, r19, r19
	l.sra	r7, r6, r23
	l.sfgtu	r12, r15
	l.lbs	r8, 1(r3)
	l.or	r19, r6, r6
	l.ori	r6, r0, 1
	l.cmov	r21, r6, r0
	l.add	r25, r4, r5
	l.addi	r6, r8, -48
	l.sub	r13, r25, r7
	l.sfleui	r6, 9
	l.addi	r3, r3, 1
	l.bf	.L368
	l.sub	r11, r13, r21
	l.sfnei	r31, 0
	l.bf	.L359
	l.ori	r3, r0, 1
	l.sub	r12, r19, r15
	l.sfgtu	r12, r19
	l.cmov	r31, r3, r0
	l.sub	r15, r7, r25
	l.sub	r11, r15, r31
.L359:
	l.jr	r9
	 l.nop

.L360:
	l.j	.L366
	l.addi	r3, r3, 1
.L381:
	l.sfleui	r6, 9
	l.bf	.L364
	l.movhi	r31, hi(0)
.L371:
	l.movhi	r11, hi(0)
.L382:
	l.jr	r9
	l.movhi	r12, hi(0)
.L361:
	l.lbs	r4, 1(r3)
	l.addi	r6, r4, -48
	l.sfleui	r6, 9
	l.addi	r3, r3, 1
	l.bf	.L364
	l.movhi	r31, hi(0)
	l.j	.L382
	l.movhi	r11, hi(0)
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
	l.sfeqi	r5, 0
	l.bf	.L384
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.j	.L387
	l.or	r26, r7, r7
.L397:
	l.sfeqi	r11, 0
	l.bf	.L383
	l.sub	r16, r16, r28
	l.sfnei	r16, 0
	l.bnf	.L384
	l.add	r20, r18, r22
.L387:
	l.ori	r17, r0, 1
.L398:
	l.srl	r28, r16, r17
	l.mul	r18, r28, r22
	l.add	r18, r20, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.sfltsi	r11, 0
	l.bnf	.L397
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.sfnei	r16, 0
	l.bf	.L398
	l.ori	r17, r0, 1
.L384:
	l.movhi	r18, hi(0)
.L383:
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
	l.sfnei	r5, 0
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.bnf	.L404
	l.or	r28, r8, r8
.L412:
	l.ori	r14, r0, 1
.L415:
	l.sra	r30, r16, r14
	l.mul	r18, r30, r22
	l.add	r18, r20, r18
	l.or	r5, r28, r28
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.addi	r16, r16, -1
	l.sfeqi	r11, 0
	l.bf	.L399
	l.sra	r16, r16, r14
	l.sflesi	r11, 0
	l.bf	.L402
	l.sfnei	r16, 0
	l.bf	.L412
	l.add	r20, r18, r22
.L404:
	l.movhi	r18, hi(0)
.L399:
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
.L402:
	l.sfeqi	r30, 0
	l.bf	.L404
	l.or	r16, r30, r30
	l.j	.L415
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
	l.sfgesi	r3, 0
	l.or	r11, r3, r3
	l.bnf	.L420
	l.or	r12, r4, r4
	l.jr	r9
	 l.nop

.L420:
	l.sfnei	r4, 0
	l.ori	r11, r0, 1
	l.sub	r12, r0, r4
	l.sub	r3, r0, r3
	l.cmov	r4, r11, r0
	l.jr	r9
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
	l.sfgesi	r3, 0
	l.bnf	.L425
	l.or	r11, r3, r3
	l.jr	r9
	 l.nop

.L425:
	l.jr	r9
	l.sub	r11, r0, r3
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
	l.sfgesi	r3, 0
	l.or	r11, r3, r3
	l.bnf	.L430
	l.or	r12, r4, r4
	l.jr	r9
	 l.nop

.L430:
	l.sfnei	r4, 0
	l.ori	r11, r0, 1
	l.sub	r12, r0, r4
	l.sub	r3, r0, r3
	l.cmov	r4, r11, r0
	l.jr	r9
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
	l.lwz	r17, 0(r3)
	l.sfnei	r17, 0
	l.bf	.L442
	l.sfne	r4, r17
	l.j	.L441
	l.movhi	r11, hi(0)
.L436:
	l.lwz	r17, 4(r3)
	l.sfeqi	r17, 0
	l.bf	.L437
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L442:
	l.bf	.L436
	 l.nop

	l.jr	r9
	l.or	r11, r3, r3
.L437:
	l.movhi	r11, hi(0)
.L441:
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
	l.bf	.L444
	l.sfltu	r17, r19
	l.j	.L451
	 l.nop

.L446:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L452
	l.sfltu	r17, r19
.L444:
	l.sfnei	r17, 0
	l.addi	r3, r3, 4
	l.bf	.L446
	l.addi	r4, r4, 4
	l.sfltu	r17, r19
.L451:
.L452:
	l.bf	.L443
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L443:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L454:
	l.addi	r17, r17, 4
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfnei	r19, 0
	l.bf	.L454
	l.addi	r4, r4, 4
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.lwz	r11, 0(r3)
	l.sfeqi	r11, 0
	l.bf	.L456
	 l.nop

	l.or	r11, r3, r3
.L458:
	l.lwz	r17, 4(r11)
	l.sfnei	r17, 0
	l.bf	.L458
	l.addi	r11, r11, 4
	l.sub	r3, r11, r3
	l.ori	r4, r0, 2
	l.sra	r11, r3, r4
.L456:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.sfnei	r5, 0
	l.bf	.L464
	l.movhi	r11, hi(0)
	l.j	.L475
	 l.nop

.L473:
	l.sfnei	r17, 0
	l.bnf	.L466
	l.sfeqi	r5, 0
	l.addi	r3, r3, 4
	l.bf	.L469
	l.addi	r4, r4, 4
.L464:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L473
	l.addi	r5, r5, -1
.L466:
	l.lwz	r3, 0(r3)
	l.lwz	r4, 0(r4)
	l.sfgeu	r3, r4
	l.bnf	.L474
	l.sfgtu	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L474:
	l.jr	r9
	l.xori	r11, r0, -1
.L469:
	l.movhi	r11, hi(0)
.L475:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.sfnei	r5, 0
	l.bf	.L477
	l.movhi	r11, hi(0)
	l.j	.L484
	 l.nop

.L479:
	l.sfeqi	r5, 0
	l.bf	.L480
	l.addi	r3, r3, 4
.L477:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L479
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L480:
	l.movhi	r11, hi(0)
.L484:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.sfnei	r5, 0
	l.bf	.L486
	l.movhi	r11, hi(0)
	l.j	.L498
	 l.nop

.L488:
	l.sfeqi	r5, 0
	l.bf	.L491
	l.movhi	r11, hi(0)
.L486:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L488
	l.addi	r4, r4, 4
	l.sfgeu	r19, r17
	l.bnf	.L497
	l.sfgtu	r19, r17
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L491:
.L498:
	l.jr	r9
	 l.nop

.L497:
	l.jr	r9
	l.xori	r11, r0, -1
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.sfeqi	r5, 0
	l.bf	.L500
	l.or	r16, r3, r3
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
.L500:
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
	l.bnf	.L513
	l.or	r11, r3, r3
	l.ori	r19, r0, 2
	l.sub	r21, r3, r4
	l.sll	r3, r5, r19
	l.sfltu	r21, r3
	l.bnf	.L520
	l.addi	r17, r5, -1
	l.sfeqi	r5, 0
	l.bf	.L513
	l.ori	r7, r0, 2
	l.sll	r8, r17, r7
	l.add	r15, r4, r8
	l.add	r13, r11, r8
.L510:
	l.addi	r13, r13, -4
	l.lwz	r23, 0(r15)
	l.sfne	r4, r15
	l.sw	4(r13), r23
	l.bf	.L510
	l.addi	r15, r15, -4
.L513:
	l.jr	r9
	 l.nop

.L520:
	l.sfnei	r5, 0
	l.bnf	.L513
	l.or	r5, r11, r11
.L508:
	l.addi	r5, r5, 4
	l.addi	r17, r17, -1
	l.lwz	r6, 0(r4)
	l.sfnei	r17, -1
	l.sw	-4(r5), r6
	l.bf	.L508
	l.addi	r4, r4, 4
	l.jr	r9
	 l.nop

	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.sfeqi	r5, 0
	l.or	r11, r3, r3
	l.bf	.L522
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
.L523:
	l.addi	r17, r17, -1
	l.sfnei	r17, -1
	l.sw	0(r19), r4
	l.bf	.L523
	l.addi	r19, r19, 4
.L522:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L529
	l.sfeq	r3, r4
	l.sfeqi	r5, 0
	l.add	r17, r3, r5
	l.bf	.L528
	l.add	r6, r4, r5
.L531:
	l.addi	r17, r17, -1
	l.addi	r6, r6, -1
	l.lbs	r7, 0(r17)
	l.sfne	r3, r17
	l.bf	.L531
	l.sb	0(r6), r7
.L528:
	l.jr	r9
	 l.nop

.L529:
	l.bf	.L528
	l.sfeqi	r5, 0
	l.bf	.L528
	 l.nop

	l.addi	r17, r5, -1
	l.sfleui	r17, 6
	l.bf	.L532
	l.addi	r31, r3, 1
	l.or	r6, r4, r3
	l.andi	r7, r6, 3
	l.sfnei	r7, 0
	l.bf	.L532
	l.sub	r19, r4, r31
	l.sfleui	r19, 2
	l.bf	.L532
	l.ori	r8, r0, 2
	l.srl	r23, r5, r8
	l.sll	r11, r23, r8
	l.or	r13, r4, r4
	l.add	r21, r3, r11
.L533:
	l.lwz	r12, 0(r3)
	l.addi	r3, r3, 4
	l.sw	0(r13), r12
	l.sfne	r21, r3
	l.bf	.L533
	l.addi	r13, r13, 4
	l.sfeq	r5, r11
	l.add	r4, r4, r11
	l.bf	.L528
	l.sub	r3, r5, r11
	l.lbs	r5, 0(r21)
	l.sfeqi	r3, 1
	l.bf	.L528
	l.sb	0(r4), r5
	l.lbs	r15, 1(r21)
	l.sfeqi	r3, 2
	l.bf	.L528
	l.sb	1(r4), r15
	l.lbs	r25, 2(r21)
	l.jr	r9
	l.sb	2(r4), r25
.L532:
	l.j	.L536
	l.add	r27, r3, r5
.L562:
	l.addi	r31, r31, 1
.L536:
	l.lbs	r29, -1(r31)
	l.sfne	r31, r27
	l.sb	0(r4), r29
	l.bf	.L562
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
	l.sfgesi	r11, 0
	l.addi	r13, r6, -32
	l.sll	r15, r4, r11
	l.sll	r5, r4, r5
	l.sll	r31, r8, r12
	l.srl	r4, r4, r6
	l.or	r29, r7, r27
	l.cmov	r23, r15, r29
	l.cmov	r17, r0, r5
	l.srl	r25, r3, r13
	l.sfgesi	r13, 0
	l.srl	r3, r3, r6
	l.or	r21, r31, r4
	l.cmov	r6, r25, r21
	l.cmov	r19, r0, r3
	l.or	r11, r19, r23
	l.jr	r9
	l.or	r12, r6, r17
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
	l.sfgesi	r12, 0
	l.addi	r13, r6, -32
	l.srl	r15, r3, r12
	l.srl	r5, r3, r5
	l.srl	r31, r8, r11
	l.sll	r3, r3, r6
	l.or	r29, r7, r27
	l.cmov	r23, r15, r29
	l.cmov	r17, r0, r5
	l.sll	r25, r4, r13
	l.sfgesi	r13, 0
	l.sll	r4, r4, r6
	l.or	r21, r31, r3
	l.cmov	r6, r25, r21
	l.cmov	r19, r0, r4
	l.or	r11, r6, r17
	l.jr	r9
	l.or	r12, r19, r23
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
	l.j	.L579
	l.movhi	r11, hi(0)
.L582:
	l.sfnei	r11, 32
	l.bnf	.L581
	 l.nop

.L579:
	l.srl	r17, r3, r11
	l.andi	r4, r17, 1
	l.sfeqi	r4, 0
	l.bf	.L582
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L581:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.sfeqi	r3, 0
	l.bf	.L586
	 l.nop

	l.andi	r11, r3, 1
	l.sfnei	r11, 0
	l.bf	.L583
	l.ori	r17, r0, 1
	l.ori	r11, r0, 1
.L589:
	l.sra	r3, r3, r17
	l.and	r4, r3, r17
	l.sfeqi	r4, 0
	l.bf	.L589
	l.addi	r11, r11, 1
.L583:
	l.jr	r9
	 l.nop

.L586:
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
	l.bf	.L590
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC3)
	l.lwz	r6, lo(.LC3)(r5)
	lf.sfgt.s	r3, r6
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L590:
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
	l.bf	.L593
	l.ori	r11, r0, 1
	l.movhi	r3, ha(.LC5)
	l.addi	r4, r3, lo(.LC5)
	l.lwz	r21, lo(.LC5)(r3)
	l.lwz	r23, 4(r4)
	lf.sfgt.d	r17,r19, r21,r23
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L593:
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
	l.bf	.L596
	l.ori	r11, r0, 1
	l.movhi	r3, ha(.LC7)
	l.addi	r4, r3, lo(.LC7)
	l.lwz	r21, lo(.LC7)(r3)
	l.lwz	r23, 4(r4)
	lf.sfgt.d	r17,r19, r21,r23
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L596:
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
	l.bf	.L601
	l.or	r11, r3, r3
	lf.add.s	r17, r3, r3
	lf.sfeq.s	r17, r3
	l.bf	.L601
	l.sfgesi	r4, 0
	l.bf	.L602
	l.movhi	r19, hi(1073741824)
	l.movhi	r19, hi(1056964608)
.L602:
	l.andi	r3, r4, 1
	l.sfeqi	r3, 0
	l.bf	.L615
	l.ori	r5, r0, 31
.L604:
	lf.mul.s	r11, r11, r19
	l.ori	r5, r0, 31
.L615:
	l.srl	r6, r4, r5
	l.add	r4, r6, r4
	l.ori	r7, r0, 1
	l.sra	r4, r4, r7
	l.sfeqi	r4, 0
	l.bf	.L601
	l.andi	r8, r4, 1
	l.ori	r12, r0, 31
	l.srl	r13, r4, r12
	l.sfnei	r8, 0
	lf.mul.s	r19, r19, r19
	l.bf	.L604
	l.add	r15, r13, r4
	l.ori	r21, r0, 1
	l.sra	r4, r15, r21
.L614:
	l.andi	r8, r4, 1
	l.ori	r12, r0, 31
	l.srl	r13, r4, r12
	l.sfnei	r8, 0
	lf.mul.s	r19, r19, r19
	l.bf	.L604
	l.add	r15, r13, r4
	l.j	.L614
	l.sra	r4, r15, r21
.L601:
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
	l.bf	.L632
	l.or	r11, r25, r25
	lf.add.d	r17,r19, r25,r27, r25,r27
	lf.sfeq.d	r17,r19, r25,r27
	l.bf	.L632
	l.sfgesi	r5, 0
	l.bnf	.L629
	l.movhi	r3, ha(.LC10+4)
	l.movhi	r21, hi(1073741824)
	l.lwz	r23, lo(.LC10+4)(r3)
.L618:
	l.andi	r6, r5, 1
	l.sfeqi	r6, 0
	l.bf	.L633
	l.ori	r7, r0, 31
.L620:
	lf.mul.d	r25,r27, r25,r27, r21,r23
	l.ori	r7, r0, 31
.L633:
	l.srl	r8, r5, r7
	l.add	r5, r8, r5
	l.ori	r11, r0, 1
	l.sra	r5, r5, r11
	l.sfeqi	r5, 0
	l.bf	.L617
	l.ori	r13, r0, 31
	l.andi	r12, r5, 1
	l.srl	r15, r5, r13
	l.sfnei	r12, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L620
	l.add	r29, r15, r5
	l.ori	r19, r0, 1
	l.sra	r5, r29, r19
.L631:
	l.andi	r12, r5, 1
	l.ori	r13, r0, 31
	l.srl	r15, r5, r13
	l.sfnei	r12, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L620
	l.add	r29, r15, r5
	l.j	.L631
	l.sra	r5, r29, r19
.L617:
	l.or	r11, r25, r25
.L632:
	l.jr	r9
	l.or	r12, r27, r27
.L629:
	l.movhi	r4, ha(.LC11+4)
	l.movhi	r21, hi(1071644672)
	l.j	.L618
	l.lwz	r23, lo(.LC11+4)(r4)
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
	l.bf	.L650
	l.or	r11, r25, r25
	lf.add.d	r17,r19, r25,r27, r25,r27
	lf.sfeq.d	r25,r27, r17,r19
	l.bf	.L650
	l.sfgesi	r5, 0
	l.bnf	.L647
	l.movhi	r3, ha(.LC13+4)
	l.movhi	r21, hi(1073741824)
	l.lwz	r23, lo(.LC13+4)(r3)
.L636:
	l.andi	r6, r5, 1
	l.sfeqi	r6, 0
	l.bf	.L651
	l.ori	r7, r0, 31
.L638:
	lf.mul.d	r25,r27, r25,r27, r21,r23
	l.ori	r7, r0, 31
.L651:
	l.srl	r8, r5, r7
	l.add	r5, r8, r5
	l.ori	r11, r0, 1
	l.sra	r5, r5, r11
	l.sfeqi	r5, 0
	l.bf	.L635
	l.ori	r13, r0, 31
	l.andi	r12, r5, 1
	l.srl	r15, r5, r13
	l.sfnei	r12, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L638
	l.add	r29, r15, r5
	l.ori	r19, r0, 1
	l.sra	r5, r29, r19
.L649:
	l.andi	r12, r5, 1
	l.ori	r13, r0, 31
	l.srl	r15, r5, r13
	l.sfnei	r12, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L638
	l.add	r29, r15, r5
	l.j	.L649
	l.sra	r5, r29, r19
.L635:
	l.or	r11, r25, r25
.L650:
	l.jr	r9
	l.or	r12, r27, r27
.L647:
	l.movhi	r4, ha(.LC12+4)
	l.movhi	r21, hi(1071644672)
	l.j	.L636
	l.lwz	r23, lo(.LC12+4)(r4)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.sfeqi	r5, 0
	l.bf	.L653
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.sfleui	r17, 3
	l.bf	.L654
	l.or	r3, r3, r4
	l.andi	r6, r3, 3
	l.sfnei	r6, 0
	l.bf	.L654
	l.ori	r7, r0, 2
	l.srl	r25, r5, r7
	l.sll	r8, r25, r7
	l.or	r13, r11, r11
	l.add	r23, r4, r8
.L655:
	l.lwz	r21, 0(r13)
	l.lwz	r19, 0(r4)
	l.addi	r4, r4, 4
	l.xor	r12, r19, r21
	l.sw	0(r13), r12
	l.sfne	r23, r4
	l.bf	.L655
	l.addi	r13, r13, 4
	l.sfeq	r5, r8
	l.add	r4, r11, r8
	l.bf	.L653
	l.sub	r15, r5, r8
	l.lbz	r5, 0(r4)
	l.lbz	r27, 0(r23)
	l.xor	r29, r5, r27
	l.sfeqi	r15, 1
	l.bf	.L653
	l.sb	0(r4), r29
	l.lbz	r31, 1(r4)
	l.lbz	r17, 1(r23)
	l.xor	r3, r17, r31
	l.sfeqi	r15, 2
	l.bf	.L653
	l.sb	1(r4), r3
	l.lbz	r6, 2(r4)
	l.lbz	r7, 2(r23)
	l.xor	r25, r7, r6
	l.sb	2(r4), r25
.L653:
	l.jr	r9
	 l.nop

.L654:
	l.add	r8, r4, r5
	l.or	r12, r11, r11
.L657:
	l.lbz	r23, 0(r12)
	l.lbz	r21, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r19, r21, r23
	l.sfne	r8, r4
	l.sb	0(r12), r19
	l.bf	.L657
	l.addi	r12, r12, 1
	l.jr	r9
	 l.nop

	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.lbs	r17, 0(r3)
	l.sfeqi	r17, 0
	l.or	r11, r3, r3
	l.bf	.L671
	l.or	r6, r3, r3
.L672:
	l.lbs	r19, 1(r6)
	l.sfnei	r19, 0
	l.bf	.L672
	l.addi	r6, r6, 1
.L671:
	l.sfnei	r5, 0
	l.bf	.L673
	 l.nop

	l.j	.L684
	l.sb	0(r6), r0
.L675:
	l.sfeqi	r5, 0
	l.bf	.L674
	 l.nop

.L673:
	l.lbs	r3, 0(r4)
	l.sb	0(r6), r3
	l.sfnei	r3, 0
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L675
	l.addi	r6, r6, 1
	l.jr	r9
	 l.nop

.L674:
	l.sb	0(r6), r0
.L684:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.sfnei	r4, 0
	l.bnf	.L685
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L694:
	l.lbs	r5, 0(r17)
	l.sfnei	r5, 0
	l.bf	.L688
	 l.nop

.L685:
	l.jr	r9
	 l.nop

.L688:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L694
	l.add	r17, r3, r11
	l.jr	r9
	 l.nop

	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.lbs	r21, 0(r3)
	l.sfnei	r21, 0
	l.bnf	.L700
	l.or	r11, r3, r3
.L696:
	l.j	.L699
	l.or	r17, r4, r4
.L698:
	l.sfeq	r19, r21
	l.bf	.L697
	 l.nop

.L699:
	l.lbs	r19, 0(r17)
	l.sfnei	r19, 0
	l.bf	.L698
	l.addi	r17, r17, 1
	l.lbs	r21, 1(r11)
	l.sfeqi	r21, 0
	l.bnf	.L696
	l.addi	r11, r11, 1
.L700:
	l.movhi	r11, hi(0)
.L697:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L705:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.cmov	r11, r3, r11
	l.sfnei	r17, 0
	l.bf	.L705
	l.addi	r3, r3, 1
	l.jr	r9
	 l.nop

	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.lbs	r25, 0(r4)
	l.sfeqi	r25, 0
	l.bf	.L718
	l.or	r17, r4, r4
.L709:
	l.lbs	r19, 1(r17)
	l.sfnei	r19, 0
	l.bf	.L709
	l.addi	r17, r17, 1
	l.sfeq	r17, r4
	l.bf	.L718
	l.sub	r29, r17, r4
	l.andi	r31, r25, 0xff
	l.j	.L727
	l.addi	r7, r29, -1
.L729:
	l.bnf	.L728
	l.addi	r3, r3, 1
.L727:
	l.lbs	r5, 0(r3)
	l.sfeq	r5, r25
	l.bnf	.L729
	l.sfnei	r5, 0
	l.or	r21, r31, r31
	l.add	r27, r3, r7
	l.or	r8, r4, r4
	l.j	.L711
	l.or	r6, r3, r3
.L730:
	l.bf	.L712
	l.addi	r6, r6, 1
	l.sfeq	r23, r21
	l.bnf	.L712
	 l.nop

	l.lbz	r21, 0(r6)
	l.sfeqi	r21, 0
	l.bf	.L712
	l.addi	r8, r8, 1
.L711:
	l.lbz	r23, 0(r8)
	l.sfeqi	r23, 0
	l.bnf	.L730
	l.sfeq	r6, r27
.L712:
	l.lbz	r11, 0(r8)
	l.sfeq	r11, r21
	l.bf	.L718
	 l.nop

	l.j	.L727
	l.addi	r3, r3, 1
.L728:
	l.jr	r9
	l.movhi	r11, hi(0)
.L718:
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
	l.bf	.L741
	l.movhi	r3, hi(0)
	l.or	r12, r3, r3
	l.or	r13, r23, r23
	lf.sfgt.d	r17,r19, r12,r13
	l.bnf	.L742
	l.or	r11, r17, r17
	lf.sflt.d	r25,r27, r21,r23
	l.bf	.L743
	l.movhi	r5, hi(-2147483648)
	l.or	r11, r17, r17
.L742:
	l.jr	r9
	l.or	r12, r19, r19
.L741:
	l.or	r21, r3, r3
	lf.sfgt.d	r25,r27, r21,r23
	l.bnf	.L742
	l.or	r11, r17, r17
	l.movhi	r5, hi(-2147483648)
.L743:
	l.xor	r17, r17, r5
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.sfeqi	r6, 0
	l.bf	.L744
	l.or	r11, r3, r3
	l.sfltu	r4, r6
	l.bf	.L755
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L755
	l.addi	r6, r6, -1
	l.lbs	r31, 0(r5)
	l.j	.L750
	l.addi	r5, r5, 1
.L754:
	l.or	r11, r27, r27
.L746:
	l.sfgeu	r25, r11
	l.bnf	.L755
	 l.nop

.L750:
	l.lbs	r17, 0(r11)
	l.sfne	r17, r31
	l.bf	.L754
	l.addi	r27, r11, 1
	l.sfeqi	r6, 0
	l.bf	.L744
	l.or	r19, r5, r5
.L749:
	l.or	r3, r27, r27
	l.j	.L747
	l.add	r29, r27, r6
.L748:
	l.sfeq	r3, r29
	l.bf	.L744
	 l.nop

.L747:
	l.lbz	r23, 0(r3)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r3, r3, 1
	l.bf	.L748
	l.addi	r19, r19, 1
	l.sfgtu	r27, r25
	l.bf	.L755
	 l.nop

	l.lbs	r7, 0(r27)
	l.sfne	r7, r31
	l.bf	.L746
	l.addi	r11, r27, 1
	l.or	r8, r27, r27
	l.or	r19, r5, r5
	l.or	r27, r11, r11
	l.j	.L749
	l.or	r11, r8, r8
.L755:
	l.movhi	r11, hi(0)
.L744:
	l.jr	r9
	 l.nop

	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.sfeqi	r5, 0
	l.or	r16, r5, r5
	l.bf	.L761
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L761:
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
	l.bf	.L788
	l.movhi	r27, hi(1072693248)
	l.movhi	r3, ha(.LC18)
	l.addi	r4, r3, lo(.LC18)
	l.lwz	r31, 4(r4)
	l.or	r29, r31, r31
	lf.sfge.d	r17,r19, r27,r29
	l.bnf	.L789
	l.movhi	r15, hi(0)
.L769:
	l.movhi	r6, ha(.LC19)
	l.movhi	r31, hi(0)
	l.addi	r7, r6, lo(.LC19)
.L775:
	l.lwz	r21, 0(r7)
	l.lwz	r23, 4(r7)
	lf.mul.d	r17,r19, r17,r19, r21,r23
	l.lwz	r21, 0(r4)
	l.lwz	r23, 4(r4)
	lf.sfge.d	r17,r19, r21,r23
	l.bf	.L775
	l.addi	r31, r31, 1
	l.sfeqi	r15, 0
.L791:
	l.bf	.L782
	l.sw	0(r5), r31
	l.movhi	r5, hi(-2147483648)
	l.xor	r11, r17, r5
	l.jr	r9
	l.or	r12, r19, r19
.L789:
	l.movhi	r6, ha(.LC19)
	l.addi	r7, r6, lo(.LC19)
	l.movhi	r27, hi(1071644672)
	l.lwz	r8, 4(r7)
	l.or	r29, r8, r8
	lf.sflt.d	r17,r19, r27,r29
	l.bnf	.L772
	l.movhi	r21, hi(0)
	lf.sfne.d	r17,r19, r21,r23
	l.bf	.L781
	l.or	r13, r19, r19
.L772:
	l.sw	0(r5), r0
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L788:
	l.movhi	r29, ha(.LC16+4)
	l.movhi	r21, hi(-1074790400)
	l.lwz	r23, lo(.LC16+4)(r29)
	lf.sfle.d	r17,r19, r21,r23
	l.movhi	r25, hi(-2147483648)
	l.xor	r12, r3, r25
	l.bnf	.L790
	l.or	r13, r4, r4
	l.movhi	r23, ha(.LC18)
	l.or	r17, r12, r12
	l.ori	r15, r0, 1
	l.j	.L769
	l.addi	r4, r23, lo(.LC18)
.L782:
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L790:
	l.movhi	r3, ha(.LC17+4)
	l.movhi	r21, hi(-1075838976)
	l.lwz	r23, lo(.LC17+4)(r3)
	lf.sfgt.d	r17,r19, r21,r23
	l.bnf	.L772
	l.ori	r15, r0, 1
	l.movhi	r17, ha(.LC19)
	l.addi	r7, r17, lo(.LC19)
.L770:
	l.or	r17, r12, r12
	l.or	r19, r13, r13
	l.movhi	r31, hi(0)
.L777:
	lf.add.d	r17,r19, r17,r19, r17,r19
	l.lwz	r21, 0(r7)
	l.lwz	r23, 4(r7)
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L777
	l.addi	r31, r31, -1
	l.j	.L791
	l.sfeqi	r15, 0
.L781:
	l.or	r12, r17, r17
	l.j	.L770
	l.movhi	r15, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r17, r4, r3
	l.sfeqi	r17, 0
	l.movhi	r11, hi(0)
	l.bf	.L792
	l.movhi	r12, hi(0)
.L795:
	l.andi	r7, r4, 1
	l.sub	r19, r0, r7
	l.and	r8, r19, r6
	l.add	r13, r12, r8
	l.ori	r27, r0, 1
	l.ori	r23, r0, 31
	l.sfltu	r13, r12
	l.srl	r4, r4, r27
	l.sll	r12, r3, r23
	l.add	r21, r6, r6
	l.sub	r15, r0, r7
	l.or	r4, r12, r4
	l.ori	r25, r0, 1
	l.srl	r3, r3, r27
	l.and	r29, r15, r5
	l.cmov	r31, r25, r0
	l.or	r17, r3, r4
	l.sfltu	r21, r6
	l.ori	r6, r0, 1
	l.cmov	r7, r6, r0
	l.add	r11, r11, r29
	l.add	r5, r5, r5
	l.sfnei	r17, 0
	l.add	r11, r31, r11
	l.or	r12, r13, r13
	l.add	r5, r7, r5
	l.bf	.L795
	l.or	r6, r21, r21
.L792:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r6, r0, 32
	l.bf	.L799
	l.ori	r17, r0, 1
	l.j	.L818
	l.sfleu	r4, r3
.L803:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L801
	l.add	r17, r17, r17
	l.sfeqi	r6, 0
	l.bf	.L820
	l.sfnei	r5, 0
.L799:
	l.sfgesi	r4, 0
	l.bf	.L803
	l.addi	r6, r6, -1
.L804:
	l.movhi	r6, hi(0)
.L805:
	l.sfgeu	r3, r4
	l.ori	r23, r0, 1
	l.cmov	r19, r17, r0
	l.sub	r21, r3, r4
	l.srl	r17, r17, r23
	l.cmov	r3, r21, r3
	l.sfnei	r17, 0
	l.or	r6, r6, r19
	l.bf	.L805
	l.srl	r4, r4, r23
.L802:
	l.sfnei	r5, 0
.L820:
	l.jr	r9
	l.cmov	r11, r3, r6
.L801:
	l.sfeqi	r17, 0
	l.bnf	.L804
	l.movhi	r6, hi(0)
	l.j	.L820
	l.sfnei	r5, 0
.L818:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L802
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
	l.bf	.L823
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
.L823:
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
	l.bnf	.L837
	l.xor	r4, r4, r21
.L832:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L837:
	l.sfne	r5, r17
	l.bf	.L832
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 63
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.sfeqi	r3, 0
	l.bf	.L838
	l.movhi	r11, hi(0)
.L840:
	l.andi	r17, r3, 1
	l.ori	r19, r0, 1
	l.sub	r5, r0, r17
	l.srl	r3, r3, r19
	l.and	r6, r5, r4
	l.sfnei	r3, 0
	l.add	r11, r11, r6
	l.bf	.L840
	l.add	r4, r4, r4
.L838:
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
	l.bnf	.L847
	l.and	r6, r5, r27
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L877
	l.sfnei	r5, 0
.L847:
	l.sfnei	r25, 0
	l.bnf	.L878
	l.ori	r11, r0, 3
	l.sll	r12, r25, r11
	l.or	r29, r4, r4
	l.or	r31, r3, r3
	l.add	r13, r12, r4
.L850:
	l.lwz	r23, 0(r29)
	l.lwz	r15, 4(r29)
	l.addi	r29, r29, 8
	l.sw	0(r31), r23
	l.sw	4(r31), r15
	l.sfne	r29, r13
	l.bf	.L850
	l.addi	r31, r31, 8
	l.sfleu	r5, r6
	l.bf	.L843
	 l.nop

	l.sub	r7, r5, r6
	l.addi	r27, r7, -1
	l.sfleui	r27, 6
	l.bf	.L876
	l.addi	r17, r6, 1
	l.add	r19, r3, r6
	l.add	r25, r4, r17
	l.sub	r21, r19, r25
	l.sfleui	r21, 2
	l.bf	.L852
	l.add	r31, r4, r6
	l.or	r8, r31, r19
	l.andi	r11, r8, 3
	l.sfnei	r11, 0
	l.bf	.L852
	l.ori	r12, r0, 2
	l.srl	r13, r7, r12
	l.sll	r15, r13, r12
	l.add	r23, r31, r15
.L853:
	l.lwz	r29, 0(r31)
	l.addi	r31, r31, 4
	l.sw	0(r19), r29
	l.sfne	r31, r23
	l.bf	.L853
	l.addi	r19, r19, 4
	l.sfeq	r7, r15
	l.bf	.L843
	l.add	r6, r6, r15
	l.add	r19, r4, r6
	l.lbs	r31, 0(r19)
	l.add	r7, r3, r6
	l.addi	r27, r6, 1
	l.sfleu	r5, r27
	l.bf	.L843
	l.sb	0(r7), r31
	l.add	r17, r4, r27
	l.lbs	r25, 0(r17)
	l.add	r21, r3, r27
	l.addi	r8, r6, 2
	l.sfleu	r5, r8
	l.bf	.L843
	l.sb	0(r21), r25
	l.add	r4, r4, r8
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r8
	l.sb	0(r3), r5
.L843:
	l.jr	r9
	 l.nop

.L877:
	l.bnf	.L843
	l.addi	r8, r5, -1
.L848:
	l.add	r21, r4, r8
	l.add	r19, r3, r8
	l.lbs	r5, 0(r21)
	l.addi	r8, r8, -1
	l.sfnei	r8, -1
	l.bf	.L848
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L878:
	l.sfnei	r5, 0
	l.bnf	.L843
	 l.nop

.L876:
	l.add	r19, r3, r6
	l.add	r31, r4, r6
.L852:
	l.add	r11, r4, r5
.L855:
	l.lbs	r12, 0(r31)
	l.addi	r31, r31, 1
	l.sb	0(r19), r12
	l.sfne	r31, r11
	l.bf	.L855
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
	l.bnf	.L883
	l.srl	r27, r5, r17
	l.add	r6, r4, r5
	l.sfgtu	r3, r6
	l.bnf	.L906
	l.sfnei	r5, 0
.L883:
	l.sfnei	r27, 0
	l.bnf	.L882
	l.addi	r8, r27, -1
	l.sfleui	r8, 8
	l.bf	.L886
	l.or	r11, r4, r3
	l.andi	r12, r11, 3
	l.sfnei	r12, 0
	l.bf	.L886
	l.addi	r13, r4, 2
	l.sfeq	r3, r13
	l.bf	.L886
	l.ori	r15, r0, 2
	l.srl	r25, r5, r15
	l.sll	r23, r25, r15
	l.or	r17, r4, r4
	l.or	r6, r3, r3
	l.add	r29, r23, r4
.L887:
	l.lwz	r31, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r6), r31
	l.sfne	r17, r29
	l.bf	.L887
	l.addi	r6, r6, 4
	l.add	r21, r25, r25
	l.sfeq	r27, r21
	l.bf	.L882
	l.add	r27, r21, r21
	l.add	r19, r4, r27
	l.lhs	r7, 0(r19)
	l.add	r8, r3, r27
	l.sh	0(r8), r7
.L882:
	l.andi	r23, r5, 1
	l.sfeqi	r23, 0
	l.bf	.L879
	l.add	r4, r4, r5
	l.lbs	r29, -1(r4)
.L909:
	l.add	r3, r3, r5
	l.sb	-1(r3), r29
.L879:
	l.jr	r9
	 l.nop

.L906:
	l.bnf	.L879
	l.addi	r7, r5, -1
.L884:
	l.add	r21, r4, r7
	l.add	r19, r3, r7
	l.lbs	r5, 0(r21)
	l.addi	r7, r7, -1
	l.sfnei	r7, -1
	l.bf	.L884
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L886:
	l.add	r11, r27, r27
	l.or	r15, r4, r4
	l.or	r25, r3, r3
	l.add	r12, r11, r4
.L889:
	l.lhs	r13, 0(r15)
	l.addi	r15, r15, 2
	l.sh	0(r25), r13
	l.sfne	r12, r15
	l.bf	.L889
	l.addi	r25, r25, 2
	l.andi	r23, r5, 1
	l.sfeqi	r23, 0
	l.bf	.L879
	l.add	r4, r4, r5
	l.j	.L909
	l.lbs	r29, -1(r4)
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.xori	r25, r0, -4
	l.ori	r17, r0, 2
	l.sfgeu	r3, r4
	l.srl	r23, r5, r17
	l.bnf	.L914
	l.and	r6, r5, r25
	l.add	r7, r4, r5
	l.sfgtu	r3, r7
	l.bnf	.L944
	l.sfnei	r5, 0
.L914:
	l.sfnei	r23, 0
	l.bnf	.L945
	l.ori	r11, r0, 2
	l.sll	r12, r23, r11
	l.or	r27, r4, r4
	l.or	r29, r3, r3
	l.add	r13, r12, r4
.L917:
	l.lwz	r15, 0(r27)
	l.addi	r27, r27, 4
	l.sw	0(r29), r15
	l.sfne	r27, r13
	l.bf	.L917
	l.addi	r29, r29, 4
	l.sfleu	r5, r6
	l.bf	.L910
	 l.nop

	l.sub	r31, r5, r6
	l.addi	r25, r31, -1
	l.sfleui	r25, 6
	l.bf	.L943
	l.addi	r17, r6, 1
	l.add	r19, r3, r6
	l.add	r23, r4, r17
	l.sub	r7, r19, r23
	l.sfleui	r7, 2
	l.bf	.L919
	l.add	r29, r4, r6
	l.or	r21, r29, r19
	l.andi	r8, r21, 3
	l.sfnei	r8, 0
	l.bf	.L919
	l.ori	r11, r0, 2
	l.srl	r12, r31, r11
	l.sll	r13, r12, r11
	l.add	r15, r29, r13
.L920:
	l.lwz	r27, 0(r29)
	l.addi	r29, r29, 4
	l.sw	0(r19), r27
	l.sfne	r29, r15
	l.bf	.L920
	l.addi	r19, r19, 4
	l.sfeq	r31, r13
	l.bf	.L910
	l.add	r6, r6, r13
	l.add	r19, r4, r6
	l.lbs	r29, 0(r19)
	l.add	r31, r3, r6
	l.addi	r25, r6, 1
	l.sfleu	r5, r25
	l.bf	.L910
	l.sb	0(r31), r29
	l.add	r17, r4, r25
	l.lbs	r23, 0(r17)
	l.add	r7, r3, r25
	l.addi	r21, r6, 2
	l.sfleu	r5, r21
	l.bf	.L910
	l.sb	0(r7), r23
	l.add	r4, r4, r21
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r21
	l.sb	0(r3), r5
.L910:
	l.jr	r9
	 l.nop

.L944:
	l.bnf	.L910
	l.addi	r8, r5, -1
.L915:
	l.add	r21, r4, r8
	l.add	r19, r3, r8
	l.lbs	r5, 0(r21)
	l.addi	r8, r8, -1
	l.sfnei	r8, -1
	l.bf	.L915
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L945:
	l.sfnei	r5, 0
	l.bnf	.L910
	 l.nop

.L943:
	l.add	r19, r3, r6
	l.add	r29, r4, r6
.L919:
	l.add	r8, r4, r5
.L922:
	l.lbs	r11, 0(r29)
	l.addi	r29, r29, 1
	l.sb	0(r19), r11
	l.sfne	r29, r8
	l.bf	.L922
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
	l.sflesi	r11, 1
	l.bf	.L952
	l.ori	r23, r0, 1
	lf.itof.d	r17,r19, r20,r22
	l.or	r11, r17, r17
.L954:
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L952:
	l.ori	r17, r0, 31
	l.sll	r3, r20, r17
	l.srl	r21, r22, r23
	l.and	r19, r22, r23
	l.or	r4, r3, r21
	l.or	r18, r19, r4
	l.srl	r16, r20, r23
	lf.itof.d	r5,r6, r16,r18
	lf.add.d	r17,r19, r5,r6, r5,r6
	l.j	.L954
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
	l.sfnei	r4, 0
	l.bf	.L961
	l.ori	r5, r0, 14
	l.sra	r11, r3, r5
	l.sfnei	r11, 0
	l.bf	.L958
	l.ori	r6, r0, 13
	l.sra	r7, r3, r6
	l.sfnei	r7, 0
	l.bf	.L962
	l.ori	r8, r0, 12
	l.sra	r11, r3, r8
	l.sfnei	r11, 0
	l.bf	.L963
	l.ori	r12, r0, 11
	l.sra	r13, r3, r12
	l.sfnei	r13, 0
	l.bf	.L964
	l.ori	r15, r0, 10
	l.sra	r19, r3, r15
	l.sfnei	r19, 0
	l.bf	.L965
	l.ori	r21, r0, 9
	l.sra	r23, r3, r21
	l.sfnei	r23, 0
	l.bf	.L966
	l.ori	r25, r0, 8
	l.sra	r27, r3, r25
	l.sfnei	r27, 0
	l.bf	.L967
	l.ori	r29, r0, 7
	l.sra	r31, r3, r29
	l.sfnei	r31, 0
	l.bf	.L968
	l.ori	r17, r0, 6
	l.sra	r4, r3, r17
	l.sfnei	r4, 0
	l.bf	.L969
	l.ori	r5, r0, 5
	l.sra	r6, r3, r5
	l.sfnei	r6, 0
	l.bf	.L970
	l.ori	r7, r0, 4
	l.sra	r8, r3, r7
	l.sfnei	r8, 0
	l.bf	.L971
	 l.nop

	l.ori	r11, r0, 3
	l.sra	r12, r3, r11
	l.sfnei	r12, 0
	l.bf	.L972
	l.ori	r13, r0, 2
	l.sra	r15, r3, r13
	l.sfnei	r15, 0
	l.bf	.L973
	l.ori	r19, r0, 1
	l.sra	r21, r3, r19
	l.sfnei	r21, 0
	l.bf	.L974
	l.sfeqi	r3, 0
	l.bnf	.L977
	l.ori	r11, r0, 16
.L958:
	l.jr	r9
	 l.nop

.L961:
	l.jr	r9
	l.movhi	r11, hi(0)
.L972:
	l.jr	r9
	l.ori	r11, r0, 12
.L977:
	l.jr	r9
	l.ori	r11, r0, 15
.L962:
	l.jr	r9
	l.ori	r11, r0, 2
.L963:
	l.jr	r9
	l.ori	r11, r0, 3
.L964:
	l.jr	r9
	l.ori	r11, r0, 4
.L965:
	l.jr	r9
	l.ori	r11, r0, 5
.L966:
	l.jr	r9
	l.ori	r11, r0, 6
.L967:
	l.jr	r9
	l.ori	r11, r0, 7
.L968:
	l.jr	r9
	l.ori	r11, r0, 8
.L969:
	l.jr	r9
	l.ori	r11, r0, 9
.L970:
	l.jr	r9
	l.ori	r11, r0, 10
.L971:
	l.jr	r9
	l.ori	r11, r0, 11
.L973:
	l.jr	r9
	l.ori	r11, r0, 13
.L974:
	l.jr	r9
	l.ori	r11, r0, 14
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	l.andi	r17, r3, 1
	l.sfnei	r17, 0
	l.bf	.L981
	l.andi	r3, r3, 0xffff
	l.andi	r4, r3, 2
	l.sfnei	r4, 0
	l.bf	.L982
	l.andi	r5, r3, 4
	l.sfnei	r5, 0
	l.bf	.L983
	l.andi	r6, r3, 8
	l.sfnei	r6, 0
	l.bf	.L984
	l.andi	r7, r3, 16
	l.sfnei	r7, 0
	l.bf	.L985
	l.andi	r8, r3, 32
	l.sfnei	r8, 0
	l.bf	.L986
	 l.nop

	l.andi	r11, r3, 64
	l.sfnei	r11, 0
	l.bf	.L987
	l.andi	r12, r3, 128
	l.sfnei	r12, 0
	l.bf	.L988
	l.andi	r13, r3, 256
	l.sfnei	r13, 0
	l.bf	.L989
	l.andi	r15, r3, 512
	l.sfnei	r15, 0
	l.bf	.L990
	l.andi	r19, r3, 1024
	l.sfnei	r19, 0
	l.bf	.L991
	l.andi	r21, r3, 2048
	l.sfnei	r21, 0
	l.bf	.L992
	l.andi	r23, r3, 4096
	l.sfnei	r23, 0
	l.bf	.L993
	l.andi	r25, r3, 8192
	l.sfnei	r25, 0
	l.bf	.L994
	l.andi	r27, r3, 16384
	l.sfnei	r27, 0
	l.bf	.L995
	l.ori	r29, r0, 15
	l.sra	r31, r3, r29
	l.sfeqi	r31, 0
	l.bnf	.L998
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L981:
	l.jr	r9
	l.movhi	r11, hi(0)
.L982:
	l.jr	r9
	l.ori	r11, r0, 1
.L993:
	l.jr	r9
	l.ori	r11, r0, 12
.L998:
	l.jr	r9
	l.or	r11, r29, r29
.L983:
	l.jr	r9
	l.ori	r11, r0, 2
.L984:
	l.jr	r9
	l.ori	r11, r0, 3
.L985:
	l.jr	r9
	l.ori	r11, r0, 4
.L986:
	l.jr	r9
	l.ori	r11, r0, 5
.L987:
	l.jr	r9
	l.ori	r11, r0, 6
.L988:
	l.jr	r9
	l.ori	r11, r0, 7
.L989:
	l.jr	r9
	l.ori	r11, r0, 8
.L990:
	l.jr	r9
	l.ori	r11, r0, 9
.L991:
	l.jr	r9
	l.ori	r11, r0, 10
.L992:
	l.jr	r9
	l.ori	r11, r0, 11
.L994:
	l.jr	r9
	l.ori	r11, r0, 13
.L995:
	l.jr	r9
	l.ori	r11, r0, 14
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.movhi	r17, hi(1191182336)
	lf.sfge.s	r3, r17
	l.bf	.L1005
	l.ori	r4, r0, 32768
	lf.ftoi.s	r11, r3
	l.jr	r9
	 l.nop

.L1005:
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
	l.sfeqi	r3, 0
	l.bf	.L1008
	l.movhi	r11, hi(0)
.L1010:
	l.andi	r17, r3, 1
	l.ori	r19, r0, 1
	l.sub	r5, r0, r17
	l.srl	r3, r3, r19
	l.and	r6, r5, r4
	l.sfnei	r3, 0
	l.add	r11, r11, r6
	l.bf	.L1010
	l.add	r4, r4, r4
.L1008:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.sfeqi	r3, 0
	l.bf	.L1013
	l.movhi	r11, hi(0)
	l.sfeqi	r4, 0
	l.bf	.L1013
	 l.nop

.L1015:
	l.andi	r17, r4, 1
	l.ori	r19, r0, 1
	l.sub	r5, r0, r17
	l.srl	r4, r4, r19
	l.and	r6, r5, r3
	l.sfnei	r4, 0
	l.add	r11, r11, r6
	l.bf	.L1015
	l.add	r3, r3, r3
.L1013:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r6, r0, 32
	l.bf	.L1020
	l.ori	r17, r0, 1
	l.j	.L1039
	l.sfgeu	r3, r4
.L1024:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L1022
	l.add	r17, r17, r17
	l.sfeqi	r6, 0
	l.bf	.L1041
	l.sfnei	r5, 0
.L1020:
	l.sfgesi	r4, 0
	l.bf	.L1024
	l.addi	r6, r6, -1
.L1025:
	l.movhi	r6, hi(0)
.L1026:
	l.sfgeu	r3, r4
	l.ori	r23, r0, 1
	l.cmov	r19, r17, r0
	l.sub	r21, r3, r4
	l.srl	r17, r17, r23
	l.cmov	r3, r21, r3
	l.sfnei	r17, 0
	l.or	r6, r6, r19
	l.bf	.L1026
	l.srl	r4, r4, r23
.L1023:
	l.sfnei	r5, 0
.L1041:
	l.jr	r9
	l.cmov	r11, r3, r6
.L1022:
	l.sfeqi	r17, 0
	l.bnf	.L1025
	l.movhi	r6, hi(0)
	l.j	.L1041
	l.sfnei	r5, 0
.L1039:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L1023
	l.cmov	r6, r11, r0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	lf.sflt.s	r3, r4
	l.bf	.L1044
	 l.nop

	lf.sfgt.s	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1044:
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
	l.bf	.L1047
	 l.nop

	lf.sfgt.d	r21,r23, r17,r19
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1047:
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
	l.sfgesi	r4, 0
	l.bnf	.L1066
	l.sfeqi	r4, 0
	l.bf	.L1058
	l.movhi	r21, hi(0)
.L1054:
	l.ori	r7, r0, 32
	l.j	.L1057
	l.movhi	r11, hi(0)
.L1067:
	l.sfnei	r7, 0
	l.bnf	.L1068
	l.sfeqi	r21, 0
.L1057:
	l.andi	r17, r4, 1
	l.ori	r23, r0, 1
	l.sub	r5, r0, r17
	l.sra	r4, r4, r23
	l.and	r6, r5, r3
	l.addi	r19, r7, -1
	l.sfeqi	r4, 0
	l.andi	r7, r19, 0xff
	l.add	r11, r11, r6
	l.bnf	.L1067
	l.add	r3, r3, r3
	l.sfeqi	r21, 0
.L1068:
	l.bf	.L1052
	 l.nop

	l.sub	r11, r0, r11
.L1052:
	l.jr	r9
	 l.nop

.L1066:
	l.sub	r4, r0, r4
	l.j	.L1054
	l.ori	r21, r0, 1
.L1058:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.sfgesi	r3, 0
	l.bnf	.L1095
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 1
	l.movhi	r27, hi(0)
.L1070:
	l.sfgesi	r4, 0
	l.bf	.L1096
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.or	r27, r17, r17
	l.sfgtu	r3, r4
.L1096:
	l.or	r23, r3, r3
	l.or	r5, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1072
	l.ori	r19, r0, 1
	l.j	.L1093
	l.sfgeu	r3, r4
.L1076:
	l.sfnei	r21, 0
	l.bnf	.L1097
	l.sfnei	r19, 0
.L1072:
	l.add	r5, r5, r5
	l.sfgtu	r3, r5
	l.addi	r21, r21, -1
	l.bf	.L1076
	l.add	r19, r19, r19
	l.sfnei	r19, 0
.L1097:
	l.bnf	.L1075
	l.movhi	r11, hi(0)
.L1074:
	l.sfgeu	r23, r5
	l.ori	r29, r0, 1
	l.cmov	r3, r19, r0
	l.sub	r25, r23, r5
	l.srl	r19, r19, r29
	l.cmov	r23, r25, r23
	l.sfnei	r19, 0
	l.or	r11, r11, r3
	l.bf	.L1074
	l.srl	r5, r5, r29
.L1075:
	l.sfeqi	r27, 0
	l.bf	.L1069
	 l.nop

	l.sub	r11, r0, r11
.L1069:
	l.jr	r9
	 l.nop

.L1095:
	l.sub	r3, r0, r3
	l.j	.L1070
	l.ori	r27, r0, 1
.L1093:
	l.ori	r11, r0, 1
	l.j	.L1075
	l.cmov	r11, r11, r0
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.sfgesi	r3, 0
	l.bnf	.L1123
	 l.nop

	l.movhi	r23, hi(0)
.L1099:
	l.sfgesi	r4, 0
	l.bf	.L1100
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1100:
	l.sfgtu	r3, r4
	l.or	r17, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1101
	l.ori	r19, r0, 1
	l.j	.L1121
	l.sub	r11, r3, r4
.L1105:
	l.sfnei	r21, 0
	l.bnf	.L1125
	l.sfnei	r19, 0
.L1101:
	l.add	r17, r17, r17
	l.sfgtu	r3, r17
	l.addi	r21, r21, -1
	l.bf	.L1105
	l.add	r19, r19, r19
	l.sfnei	r19, 0
.L1125:
	l.bnf	.L1124
	 l.nop

	l.ori	r25, r0, 1
.L1126:
	l.sfgeu	r11, r17
	l.sub	r3, r11, r17
	l.srl	r19, r19, r25
	l.cmov	r11, r3, r11
	l.sfnei	r19, 0
	l.bf	.L1126
	l.srl	r17, r17, r25
.L1104:
	l.sfeqi	r23, 0
	l.bf	.L1098
	 l.nop

	l.sub	r11, r0, r11
.L1098:
	l.jr	r9
	 l.nop

.L1123:
	l.sub	r3, r0, r3
	l.j	.L1099
	l.ori	r23, r0, 1
.L1124:
	l.j	.L1104
	l.or	r11, r3, r3
.L1121:
	l.sfgeu	r3, r4
	l.j	.L1104
	l.cmov	r11, r11, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r8, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r8
	l.bnf	.L1213
	l.sfeq	r4, r8
	l.exths	r17, r4
	l.sfltsi	r17, 0
	l.bf	.L1130
	l.add	r12, r4, r4
	l.andi	r17, r12, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1137
	l.exths	r13, r17
	l.sfltsi	r13, 0
	l.bf	.L1137
	l.ori	r15, r0, 2
	l.sll	r21, r4, r15
	l.andi	r17, r21, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1139
	l.exths	r23, r17
	l.sfltsi	r23, 0
	l.bf	.L1139
	l.ori	r25, r0, 3
	l.sll	r27, r4, r25
	l.andi	r17, r27, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1141
	l.exths	r29, r17
	l.sfltsi	r29, 0
	l.bf	.L1141
	l.ori	r31, r0, 4
	l.sll	r6, r4, r31
	l.andi	r17, r6, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1143
	l.exths	r3, r17
	l.sfltsi	r3, 0
	l.bf	.L1143
	l.ori	r19, r0, 5
	l.sll	r17, r4, r19
	l.andi	r17, r17, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1145
	 l.nop

	l.exths	r7, r17
	l.sfltsi	r7, 0
	l.bf	.L1145
	l.ori	r11, r0, 6
	l.sll	r12, r4, r11
	l.andi	r17, r12, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1147
	l.exths	r13, r17
	l.sfltsi	r13, 0
	l.bf	.L1147
	l.ori	r15, r0, 7
	l.sll	r21, r4, r15
	l.andi	r17, r21, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1149
	l.exths	r23, r17
	l.sfltsi	r23, 0
	l.bf	.L1149
	l.ori	r25, r0, 8
	l.sll	r27, r4, r25
	l.andi	r17, r27, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1151
	l.exths	r29, r17
	l.sfltsi	r29, 0
	l.bf	.L1151
	l.ori	r31, r0, 9
	l.sll	r6, r4, r31
	l.andi	r17, r6, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1153
	l.exths	r3, r17
	l.sfltsi	r3, 0
	l.bf	.L1153
	l.ori	r19, r0, 10
	l.sll	r17, r4, r19
	l.andi	r17, r17, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1155
	 l.nop

	l.exths	r7, r17
	l.sfltsi	r7, 0
	l.bf	.L1155
	l.ori	r11, r0, 11
	l.sll	r12, r4, r11
	l.andi	r17, r12, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1157
	l.exths	r13, r17
	l.sfltsi	r13, 0
	l.bf	.L1157
	l.ori	r15, r0, 12
	l.sll	r21, r4, r15
	l.andi	r17, r21, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1159
	l.exths	r23, r17
	l.sfltsi	r23, 0
	l.bf	.L1159
	l.ori	r25, r0, 13
	l.sll	r27, r4, r25
	l.andi	r17, r27, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1161
	l.exths	r29, r17
	l.sfltsi	r29, 0
	l.bf	.L1161
	l.ori	r31, r0, 14
	l.sll	r6, r4, r31
	l.andi	r17, r6, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1163
	l.exths	r3, r17
	l.sfltsi	r3, 0
	l.bf	.L1163
	l.ori	r19, r0, 15
	l.sll	r7, r4, r19
	l.andi	r11, r7, 0xffff
	l.sfleu	r8, r11
	l.bf	.L1164
	l.sfeqi	r11, 0
	l.bnf	.L1214
	l.ori	r4, r0, 32768
.L1133:
	l.sfnei	r5, 0
	l.jr	r9
	l.cmov	r11, r8, r11
.L1137:
	l.ori	r4, r0, 2
.L1132:
	l.sfgeu	r8, r17
	l.sub	r11, r8, r17
	l.cmov	r12, r11, r8
	l.ori	r21, r0, 1
	l.andi	r13, r12, 0xffff
	l.srl	r25, r17, r21
	l.sfgeu	r8, r17
	l.cmov	r8, r4, r0
	l.sub	r27, r13, r25
	l.sfgeu	r13, r25
	l.cmov	r29, r27, r13
	l.ori	r3, r0, 2
	l.sfgeu	r13, r25
	l.srl	r23, r4, r21
	l.andi	r15, r8, 0xffff
	l.cmov	r31, r23, r0
	l.srl	r19, r4, r3
	l.or	r6, r15, r31
	l.sfeqi	r19, 0
	l.andi	r8, r29, 0xffff
	l.andi	r11, r6, 0xffff
	l.bf	.L1133
	l.srl	r7, r17, r3
	l.sfgeu	r8, r7
	l.ori	r15, r0, 3
	l.sub	r12, r8, r7
	l.srl	r21, r4, r15
	l.cmov	r8, r19, r0
	l.cmov	r13, r12, r29
	l.or	r11, r11, r8
	l.sfeqi	r21, 0
	l.andi	r8, r13, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1133
	l.srl	r23, r17, r15
	l.sfgeu	r8, r23
	l.ori	r3, r0, 4
	l.sub	r25, r8, r23
	l.cmov	r27, r21, r0
	l.srl	r29, r4, r3
	l.cmov	r31, r25, r13
	l.or	r6, r11, r27
	l.sfeqi	r29, 0
	l.andi	r8, r31, 0xffff
	l.andi	r11, r6, 0xffff
	l.bf	.L1133
	l.srl	r19, r17, r3
	l.sfgeu	r8, r19
	l.ori	r15, r0, 5
	l.sub	r7, r8, r19
	l.cmov	r12, r29, r0
	l.srl	r21, r4, r15
	l.cmov	r13, r7, r31
	l.or	r11, r11, r12
	l.sfeqi	r21, 0
	l.andi	r8, r13, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1133
	l.srl	r23, r17, r15
	l.sfgeu	r8, r23
	l.ori	r6, r0, 6
	l.sub	r8, r8, r23
	l.cmov	r27, r21, r0
	l.srl	r3, r4, r6
	l.cmov	r25, r8, r13
	l.or	r31, r11, r27
	l.sfeqi	r3, 0
	l.andi	r8, r25, 0xffff
	l.andi	r11, r31, 0xffff
	l.bf	.L1133
	l.srl	r29, r17, r6
	l.sfgeu	r8, r29
	l.ori	r15, r0, 7
	l.sub	r19, r8, r29
	l.cmov	r7, r3, r0
	l.srl	r21, r4, r15
	l.cmov	r12, r19, r25
	l.or	r13, r11, r7
	l.sfeqi	r21, 0
	l.andi	r8, r12, 0xffff
	l.andi	r11, r13, 0xffff
	l.bf	.L1133
	l.srl	r23, r17, r15
	l.sfgeu	r8, r23
	l.ori	r31, r0, 8
	l.sub	r8, r8, r23
	l.cmov	r27, r21, r0
	l.srl	r6, r4, r31
	l.cmov	r25, r8, r12
	l.or	r11, r11, r27
	l.sfeqi	r6, 0
	l.andi	r8, r25, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1133
	l.srl	r3, r17, r31
	l.sfgeu	r8, r3
	l.ori	r13, r0, 9
	l.sub	r19, r8, r3
	l.cmov	r29, r6, r0
	l.srl	r15, r4, r13
	l.cmov	r7, r19, r25
	l.or	r12, r11, r29
	l.sfeqi	r15, 0
	l.andi	r8, r7, 0xffff
	l.andi	r11, r12, 0xffff
	l.bf	.L1133
	l.srl	r21, r17, r13
	l.sfgeu	r8, r21
	l.ori	r31, r0, 10
	l.sub	r23, r8, r21
	l.srl	r6, r4, r31
	l.cmov	r8, r15, r0
	l.cmov	r25, r23, r7
	l.or	r27, r11, r8
	l.sfeqi	r6, 0
	l.andi	r8, r25, 0xffff
	l.andi	r11, r27, 0xffff
	l.bf	.L1133
	l.srl	r3, r17, r31
	l.sfgeu	r8, r3
	l.ori	r12, r0, 11
	l.sub	r19, r8, r3
	l.cmov	r29, r6, r0
	l.srl	r13, r4, r12
	l.cmov	r7, r19, r25
	l.or	r11, r11, r29
	l.sfeqi	r13, 0
	l.andi	r8, r7, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1133
	l.srl	r15, r17, r12
	l.sfgeu	r8, r15
	l.ori	r31, r0, 12
	l.sub	r21, r8, r15
	l.cmov	r23, r13, r0
	l.srl	r6, r4, r31
	l.cmov	r25, r21, r7
	l.or	r27, r11, r23
	l.sfeqi	r6, 0
	l.andi	r8, r25, 0xffff
	l.andi	r11, r27, 0xffff
	l.bf	.L1133
	l.srl	r3, r17, r31
	l.sfgeu	r8, r3
	l.ori	r12, r0, 13
	l.sub	r8, r8, r3
	l.cmov	r19, r6, r0
	l.srl	r13, r4, r12
	l.cmov	r7, r8, r25
	l.or	r29, r11, r19
	l.sfeqi	r13, 0
	l.andi	r8, r7, 0xffff
	l.andi	r11, r29, 0xffff
	l.bf	.L1133
	l.srl	r15, r17, r12
	l.sfgeu	r8, r15
	l.ori	r27, r0, 14
	l.sub	r21, r8, r15
	l.cmov	r23, r13, r0
	l.srl	r31, r4, r27
	l.cmov	r25, r21, r7
	l.or	r11, r11, r23
	l.sfeqi	r31, 0
	l.andi	r8, r25, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1133
	l.srl	r6, r17, r27
	l.sfgeu	r8, r6
	l.sub	r3, r8, r6
	l.cmov	r8, r31, r0
	l.cmov	r19, r3, r25
	l.or	r7, r11, r8
	l.ori	r29, r0, 15
	l.sfeqi	r4, 16384
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1133
	l.srl	r17, r17, r29
	l.sfgeu	r8, r17
	l.sub	r4, r8, r17
	l.ori	r12, r0, 1
	l.cmov	r13, r12, r0
	l.cmov	r15, r4, r19
	l.andi	r8, r15, 0xffff
	l.or	r11, r13, r11
	l.sfnei	r5, 0
	l.jr	r9
	l.cmov	r11, r8, r11
.L1139:
	l.j	.L1132
	l.ori	r4, r0, 4
.L1141:
	l.j	.L1132
	l.ori	r4, r0, 8
.L1143:
	l.j	.L1132
	l.ori	r4, r0, 16
.L1153:
	l.j	.L1132
	l.ori	r4, r0, 512
.L1145:
	l.j	.L1132
	l.ori	r4, r0, 32
.L1147:
	l.j	.L1132
	l.ori	r4, r0, 64
.L1149:
	l.j	.L1132
	l.ori	r4, r0, 128
.L1151:
	l.j	.L1132
	l.ori	r4, r0, 256
.L1213:
	l.sub	r6, r8, r4
	l.cmov	r3, r6, r8
	l.ori	r19, r0, 1
	l.andi	r8, r3, 0xffff
	l.j	.L1133
	l.cmov	r11, r19, r0
.L1155:
	l.j	.L1132
	l.ori	r4, r0, 1024
.L1157:
	l.j	.L1132
	l.ori	r4, r0, 2048
.L1159:
	l.j	.L1132
	l.ori	r4, r0, 4096
.L1161:
	l.j	.L1132
	l.ori	r4, r0, 8192
.L1163:
	l.j	.L1132
	l.ori	r4, r0, 16384
.L1214:
	l.j	.L1132
	l.or	r17, r4, r4
.L1164:
	l.ori	r17, r0, 32768
	l.j	.L1132
	l.or	r4, r17, r17
.L1130:
	l.sub	r7, r8, r4
	l.andi	r8, r7, 0xffff
	l.j	.L1133
	l.ori	r11, r0, 1
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r6, r0, 32
	l.bf	.L1216
	l.ori	r17, r0, 1
	l.j	.L1235
	l.sfgeu	r3, r4
.L1220:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L1218
	l.add	r17, r17, r17
	l.sfeqi	r6, 0
	l.bf	.L1237
	l.sfnei	r5, 0
.L1216:
	l.sfgesi	r4, 0
	l.bf	.L1220
	l.addi	r6, r6, -1
.L1221:
	l.movhi	r6, hi(0)
.L1222:
	l.sfgeu	r3, r4
	l.ori	r23, r0, 1
	l.cmov	r19, r17, r0
	l.sub	r21, r3, r4
	l.srl	r17, r17, r23
	l.cmov	r3, r21, r3
	l.sfnei	r17, 0
	l.or	r6, r6, r19
	l.bf	.L1222
	l.srl	r4, r4, r23
.L1219:
	l.sfnei	r5, 0
.L1237:
	l.jr	r9
	l.cmov	r11, r3, r6
.L1218:
	l.sfeqi	r17, 0
	l.bnf	.L1221
	l.movhi	r6, hi(0)
	l.j	.L1237
	l.sfnei	r5, 0
.L1235:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L1219
	l.cmov	r6, r11, r0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.sfeqi	r17, 0
	l.bf	.L1239
	 l.nop

	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1239:
	l.sfeqi	r5, 0
	l.bf	.L1242
	l.ori	r6, r0, 32
	l.sub	r7, r6, r5
	l.srl	r8, r4, r7
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r8, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1242:
	l.or	r11, r3, r3
	l.jr	r9
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.sfeqi	r17, 0
	l.bf	.L1245
	 l.nop

	l.addi	r5, r5, -32
	l.ori	r4, r0, 31
	l.sra	r11, r3, r4
	l.jr	r9
	l.sra	r12, r3, r5
.L1245:
	l.sfeqi	r5, 0
	l.bf	.L1248
	l.ori	r6, r0, 32
	l.sub	r7, r6, r5
	l.sll	r8, r3, r7
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r8, r12
.L1248:
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
	l.andi	r19, r3, 65280
	l.sfeqi	r19, 0
	l.ori	r23, r0, 1
	l.cmov	r11, r23, r0
	l.ori	r12, r0, 3
	l.sll	r13, r11, r12
	l.ori	r15, r0, 8
	l.sub	r21, r15, r13
	l.srl	r27, r3, r21
	l.andi	r29, r27, 240
	l.sfeqi	r29, 0
	l.ori	r31, r0, 1
	l.cmov	r17, r31, r0
	l.ori	r25, r0, 2
	l.sll	r4, r17, r25
	l.ori	r5, r0, 4
	l.sub	r7, r5, r4
	l.srl	r8, r27, r7
	l.andi	r3, r8, 12
	l.sfeqi	r3, 0
	l.ori	r19, r0, 1
	l.cmov	r23, r19, r0
	l.ori	r11, r0, 2
	l.add	r12, r23, r23
	l.sub	r15, r11, r12
	l.srl	r27, r8, r15
	l.add	r6, r13, r6
	l.and	r13, r27, r11
	l.sub	r29, r11, r27
	l.add	r21, r4, r6
	l.sfeqi	r13, 0
	l.cmov	r31, r29, r0
	l.add	r17, r12, r21
	l.jr	r9
	l.add	r11, r31, r17
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1256
	l.sfgts	r3, r5
	l.bf	.L1257
	l.sfltu	r4, r6
	l.bf	.L1256
	l.sfgtu	r4, r6
	l.bf	.L1257
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1256:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1257:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1262
	l.sfgts	r3, r5
	l.bf	.L1261
	l.sfltu	r4, r6
	l.bf	.L1262
	l.sfgtu	r4, r6
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1262:
	l.jr	r9
	l.xori	r11, r0, -1
.L1261:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.sfeqi	r17, 0
	l.ori	r25, r0, 1
	l.cmov	r4, r25, r0
	l.ori	r5, r0, 4
	l.sll	r6, r4, r5
	l.srl	r3, r3, r6
	l.andi	r19, r3, 255
	l.sfeqi	r19, 0
	l.ori	r23, r0, 1
	l.cmov	r7, r23, r0
	l.ori	r8, r0, 3
	l.sll	r12, r7, r8
	l.srl	r11, r3, r12
	l.andi	r13, r11, 15
	l.sfeqi	r13, 0
	l.ori	r21, r0, 1
	l.cmov	r15, r21, r0
	l.ori	r27, r0, 2
	l.sll	r29, r15, r27
	l.srl	r31, r11, r29
	l.andi	r17, r31, 3
	l.sfeqi	r17, 0
	l.ori	r25, r0, 1
	l.cmov	r4, r25, r0
	l.add	r5, r4, r4
	l.srl	r3, r31, r5
	l.andi	r19, r3, 3
	l.xori	r7, r19, -1
	l.ori	r8, r0, 1
	l.add	r6, r12, r6
	l.andi	r23, r7, 1
	l.srl	r12, r19, r8
	l.ori	r11, r0, 2
	l.sub	r21, r11, r12
	l.add	r13, r29, r6
	l.sub	r15, r0, r23
	l.and	r27, r15, r21
	l.add	r29, r5, r13
	l.jr	r9
	l.add	r11, r27, r29
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r17, r5, 32
	l.sfeqi	r17, 0
	l.bf	.L1265
	l.sfeqi	r5, 0
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1267:
	l.jr	r9
	 l.nop

.L1265:
	l.bf	.L1268
	l.ori	r6, r0, 32
	l.sub	r7, r6, r5
	l.sll	r8, r3, r7
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r8, r12
	l.j	.L1267
	l.or	r11, r3, r3
.L1268:
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
	l.andi	r17, r5, 1
	l.movhi	r29, ha(.LC21)
	l.or	r21, r3, r3
	l.sfeqi	r17, 0
	l.addi	r3, r29, lo(.LC21)
	l.or	r23, r4, r4
	l.or	r31, r5, r5
	l.movhi	r25, hi(1072693248)
	l.bf	.L1277
	l.lwz	r27, 4(r3)
.L1279:
	lf.mul.d	r25,r27, r25,r27, r21,r23
.L1277:
	l.ori	r19, r0, 31
	l.srl	r4, r31, r19
	l.add	r6, r4, r31
	l.ori	r7, r0, 1
	l.sra	r31, r6, r7
	l.sfeqi	r31, 0
	l.bf	.L1278
	l.andi	r8, r31, 1
	l.ori	r11, r0, 31
	l.srl	r12, r31, r11
	l.sfnei	r8, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L1279
	l.add	r13, r12, r31
	l.ori	r15, r0, 1
	l.sra	r31, r13, r15
.L1284:
	l.andi	r8, r31, 1
	l.ori	r11, r0, 31
	l.srl	r12, r31, r11
	l.sfnei	r8, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L1279
	l.add	r13, r12, r31
	l.j	.L1284
	l.sra	r31, r13, r15
.L1278:
	l.sfgesi	r5, 0
	l.bf	.L1285
	l.or	r11, r25, r25
	l.movhi	r17, hi(1072693248)
	l.lwz	r19, 4(r3)
	lf.div.d	r25,r27, r17,r19, r25,r27
	l.or	r11, r25, r25
.L1285:
	l.jr	r9
	l.or	r12, r27, r27
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.andi	r17, r4, 1
	l.sfeqi	r17, 0
	l.or	r23, r4, r4
	l.bf	.L1287
	l.movhi	r11, hi(1065353216)
.L1289:
	lf.mul.s	r11, r11, r3
.L1287:
	l.ori	r19, r0, 31
	l.srl	r5, r23, r19
	l.add	r6, r5, r23
	l.ori	r7, r0, 1
	l.sra	r23, r6, r7
	l.sfeqi	r23, 0
	l.bf	.L1288
	l.andi	r8, r23, 1
	l.ori	r12, r0, 31
	l.srl	r13, r23, r12
	l.sfnei	r8, 0
	lf.mul.s	r3, r3, r3
	l.bf	.L1289
	l.add	r15, r13, r23
	l.ori	r21, r0, 1
	l.sra	r23, r15, r21
.L1295:
	l.andi	r8, r23, 1
	l.ori	r12, r0, 31
	l.srl	r13, r23, r12
	l.sfnei	r8, 0
	lf.mul.s	r3, r3, r3
	l.bf	.L1289
	l.add	r15, r13, r23
	l.j	.L1295
	l.sra	r23, r15, r21
.L1288:
	l.sfgesi	r4, 0
	l.bnf	.L1294
	l.movhi	r3, hi(1065353216)
	l.jr	r9
	 l.nop

.L1294:
	lf.div.s	r11, r3, r11
	l.jr	r9
	 l.nop

	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.sfltu	r3, r5
	l.bf	.L1300
	l.sfgtu	r3, r5
	l.bf	.L1301
	l.sfltu	r4, r6
	l.bf	.L1300
	l.sfgtu	r4, r6
	l.bf	.L1301
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1300:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1301:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1306
	l.sfgtu	r3, r5
	l.bf	.L1305
	l.sfltu	r4, r6
	l.bf	.L1306
	l.sfgtu	r4, r6
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1306:
	l.jr	r9
	l.xori	r11, r0, -1
.L1305:
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
