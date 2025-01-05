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
	l.add	r7, r4, r5
	l.bf	.L3
	l.add	r3, r3, r5
.L4:
	l.addi	r3, r3, -1
	l.lbs	r6, -1(r7)
	l.sb	0(r3), r6
	l.sfne	r11, r3
	l.bf	.L4
	l.addi	r7, r7, -1
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
	l.addi	r17, r4, 1
	l.or	r3, r4, r3
	l.andi	r6, r3, 3
	l.sfnei	r6, 0
	l.bf	.L5
	l.sub	r7, r11, r17
	l.sfleui	r7, 2
	l.bf	.L5
	l.srli	r23, r5, 2
	l.slli	r8, r23, 2
	l.or	r12, r11, r11
	l.add	r21, r4, r8
.L6:
	l.lwz	r19, 0(r4)
	l.addi	r4, r4, 4
	l.sw	0(r12), r19
	l.sfne	r21, r4
	l.bf	.L6
	l.addi	r12, r12, 4
	l.sfeq	r5, r8
	l.add	r4, r11, r8
	l.bf	.L3
	l.sub	r13, r5, r8
	l.lbs	r5, 0(r21)
	l.sfeqi	r13, 1
	l.bf	.L3
	l.sb	0(r4), r5
	l.lbs	r15, 1(r21)
	l.sfeqi	r13, 2
	l.bf	.L3
	l.sb	1(r4), r15
	l.lbs	r25, 2(r21)
	l.jr	r9
	l.sb	2(r4), r25
.L5:
	l.add	r27, r11, r5
	l.j	.L9
	l.or	r31, r11, r11
.L36:
	l.addi	r17, r17, 1
.L9:
	l.addi	r31, r31, 1
	l.lbs	r29, -1(r17)
	l.sfne	r31, r27
	l.bf	.L36
	l.sb	-1(r31), r29
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
	l.srli	r5, r5, 1
	l.add	r6, r5, r5
	l.add	r17, r3, r6
.L138:
	l.lbz	r21, 1(r3)
	l.lbz	r19, 0(r3)
	l.addi	r3, r3, 2
	l.sb	0(r4), r21
	l.sb	1(r4), r19
	l.sfne	r3, r17
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
	l.srli	r3, r3, 6
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
	l.ori	r6, r6, 32557
	l.lwz	r3, 8(r16)
	l.sw	4(r1), r9
	l.jal	__muldi3
	l.lwz	r4, 12(r16)
	l.sfgeui	r12, -1
	l.ori	r17, r0, 1
	l.cmov	r3, r17, r0
	l.add	r11, r3, r11
	l.addi	r12, r12, 1
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.srli	r11, r11, 1
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
.L320:
	l.slli	r7, r21, 2
	l.add	r11, r7, r21
	l.lbs	r23, 1(r3)
	l.add	r8, r11, r11
	l.or	r19, r6, r6
	l.sub	r21, r8, r6
	l.addi	r6, r23, -48
	l.sfleui	r6, 9
	l.bf	.L320
	l.addi	r3, r3, 1
	l.sfnei	r25, 0
	l.bf	.L311
	 l.nop

	l.sub	r21, r19, r8
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
.L339:
	l.lbs	r19, 0(r3)
	l.sfeqi	r19, 32
	l.bf	.L335
	l.addi	r17, r19, -9
	l.sfleui	r17, 4
	l.bf	.L335
	l.sfeqi	r19, 43
	l.bf	.L336
	l.sfeqi	r19, 45
	l.bf	.L337
	l.addi	r6, r19, -48
	l.sfleui	r6, 9
	l.bnf	.L356
	l.movhi	r21, hi(0)
	l.movhi	r25, hi(0)
.L340:
	l.movhi	r21, hi(0)
.L343:
	l.slli	r7, r21, 2
	l.add	r11, r7, r21
	l.lbs	r23, 1(r3)
	l.add	r8, r11, r11
	l.or	r19, r6, r6
	l.sub	r21, r8, r6
	l.addi	r6, r23, -48
	l.sfleui	r6, 9
	l.bf	.L343
	l.addi	r3, r3, 1
	l.sfnei	r25, 0
	l.bf	.L334
	 l.nop

	l.sub	r21, r19, r8
.L334:
.L356:
	l.jr	r9
	l.or	r11, r21, r21
.L335:
	l.j	.L339
	l.addi	r3, r3, 1
.L337:
	l.lbs	r5, 1(r3)
	l.addi	r6, r5, -48
	l.sfleui	r6, 9
	l.addi	r3, r3, 1
	l.bf	.L340
	l.ori	r25, r0, 1
.L346:
	l.j	.L334
	l.movhi	r21, hi(0)
.L336:
	l.lbs	r4, 1(r3)
	l.addi	r6, r4, -48
	l.sfgtui	r6, 9
	l.bf	.L346
	l.addi	r3, r3, 1
	l.j	.L340
	l.movhi	r25, hi(0)
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
.L364:
	l.lbs	r19, 0(r3)
	l.sfeqi	r19, 32
	l.bf	.L358
	l.addi	r17, r19, -9
	l.sfleui	r17, 4
	l.bf	.L358
	l.sfeqi	r19, 43
	l.bf	.L359
	l.sfeqi	r19, 45
	l.bnf	.L379
	l.addi	r6, r19, -48
	l.lbs	r5, 1(r3)
	l.addi	r6, r5, -48
	l.sfgtui	r6, 9
	l.bf	.L369
	l.addi	r3, r3, 1
	l.ori	r31, r0, 1
.L362:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
.L366:
	l.slli	r7, r12, 2
	l.add	r21, r7, r12
	l.slli	r23, r11, 2
	l.srli	r12, r12, 30
	l.sfltu	r21, r7
	l.or	r8, r12, r23
	l.ori	r15, r0, 1
	l.add	r13, r21, r21
	l.cmov	r25, r15, r0
	l.add	r11, r8, r11
	l.sfltu	r13, r21
	l.add	r27, r25, r11
	l.ori	r29, r0, 1
	l.cmov	r19, r29, r0
	l.sub	r12, r13, r6
	l.add	r17, r27, r27
	l.srai	r4, r6, 31
	l.add	r5, r19, r17
	l.sfgtu	r12, r13
	l.lbs	r7, 1(r3)
	l.or	r19, r6, r6
	l.ori	r6, r0, 1
	l.cmov	r21, r6, r0
	l.addi	r6, r7, -48
	l.sub	r23, r5, r4
	l.sfleui	r6, 9
	l.addi	r3, r3, 1
	l.bf	.L366
	l.sub	r11, r23, r21
	l.sfnei	r31, 0
	l.bf	.L357
	l.ori	r3, r0, 1
	l.sub	r12, r19, r13
	l.sfgtu	r12, r19
	l.cmov	r31, r3, r0
	l.sub	r8, r4, r5
	l.sub	r11, r8, r31
.L357:
	l.jr	r9
	 l.nop

.L358:
	l.j	.L364
	l.addi	r3, r3, 1
.L379:
	l.sfleui	r6, 9
	l.bf	.L362
	l.movhi	r31, hi(0)
.L369:
	l.movhi	r11, hi(0)
.L380:
	l.jr	r9
	l.movhi	r12, hi(0)
.L359:
	l.lbs	r4, 1(r3)
	l.addi	r6, r4, -48
	l.sfleui	r6, 9
	l.addi	r3, r3, 1
	l.bf	.L362
	l.movhi	r31, hi(0)
	l.j	.L380
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
	l.bf	.L382
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.j	.L385
	l.or	r26, r7, r7
.L395:
	l.sfeqi	r11, 0
	l.bf	.L381
	l.sub	r16, r16, r28
	l.sfnei	r16, 0
	l.bnf	.L382
	l.add	r20, r18, r22
.L385:
	l.srli	r28, r16, 1
.L396:
	l.mul	r18, r28, r22
	l.add	r18, r20, r18
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.sfltsi	r11, 0
	l.bnf	.L395
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.sfnei	r16, 0
	l.bf	.L396
	l.srli	r28, r16, 1
.L382:
	l.movhi	r18, hi(0)
.L381:
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
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	4(r1), r18
	l.sw	28(r1), r30
	l.sw	32(r1), r9
	l.sfnei	r5, 0
	l.or	r16, r5, r5
	l.or	r24, r3, r3
	l.or	r20, r4, r4
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.bnf	.L402
	l.or	r28, r8, r8
.L410:
	l.srai	r30, r16, 1
.L413:
	l.mul	r18, r30, r22
	l.add	r18, r20, r18
	l.or	r5, r28, r28
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.addi	r16, r16, -1
	l.sfeqi	r11, 0
	l.bf	.L397
	l.srai	r16, r16, 1
	l.sflesi	r11, 0
	l.bf	.L400
	l.sfnei	r16, 0
	l.bf	.L410
	l.add	r20, r18, r22
.L402:
	l.movhi	r18, hi(0)
.L397:
	l.or	r11, r18, r18
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
.L400:
	l.sfeqi	r30, 0
	l.bf	.L402
	l.or	r16, r30, r30
	l.j	.L413
	l.srai	r30, r16, 1
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
	l.bnf	.L418
	l.or	r12, r4, r4
	l.jr	r9
	 l.nop

.L418:
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
	l.bnf	.L423
	l.or	r11, r3, r3
	l.jr	r9
	 l.nop

.L423:
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
	l.bnf	.L428
	l.or	r12, r4, r4
	l.jr	r9
	 l.nop

.L428:
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
	l.bf	.L440
	l.sfne	r4, r17
	l.j	.L439
	l.movhi	r11, hi(0)
.L434:
	l.lwz	r17, 4(r3)
	l.sfeqi	r17, 0
	l.bf	.L435
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L440:
	l.bf	.L434
	 l.nop

	l.jr	r9
	l.or	r11, r3, r3
.L435:
	l.movhi	r11, hi(0)
.L439:
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
	l.bf	.L442
	l.sfltu	r17, r19
	l.j	.L449
	 l.nop

.L444:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L450
	l.sfltu	r17, r19
.L442:
	l.sfnei	r17, 0
	l.addi	r3, r3, 4
	l.bf	.L444
	l.addi	r4, r4, 4
	l.sfltu	r17, r19
.L449:
.L450:
	l.bf	.L441
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L441:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L452:
	l.addi	r17, r17, 4
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfnei	r19, 0
	l.bf	.L452
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
	l.bf	.L454
	 l.nop

	l.or	r11, r3, r3
.L456:
	l.lwz	r17, 4(r11)
	l.sfnei	r17, 0
	l.bf	.L456
	l.addi	r11, r11, 4
	l.sub	r3, r11, r3
	l.srai	r11, r3, 2
.L454:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.sfnei	r5, 0
	l.bf	.L462
	l.movhi	r11, hi(0)
	l.j	.L473
	 l.nop

.L471:
	l.sfnei	r17, 0
	l.bnf	.L464
	l.sfeqi	r5, 0
	l.addi	r3, r3, 4
	l.bf	.L467
	l.addi	r4, r4, 4
.L462:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L471
	l.addi	r5, r5, -1
.L464:
	l.lwz	r3, 0(r3)
	l.lwz	r4, 0(r4)
	l.sfgeu	r3, r4
	l.bnf	.L472
	l.sfgtu	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L472:
	l.jr	r9
	l.xori	r11, r0, -1
.L467:
	l.movhi	r11, hi(0)
.L473:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.sfnei	r5, 0
	l.bf	.L475
	l.movhi	r11, hi(0)
	l.j	.L482
	 l.nop

.L477:
	l.sfeqi	r5, 0
	l.bf	.L478
	l.addi	r3, r3, 4
.L475:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L477
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L478:
	l.movhi	r11, hi(0)
.L482:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.sfnei	r5, 0
	l.bf	.L484
	l.movhi	r11, hi(0)
	l.j	.L496
	 l.nop

.L486:
	l.sfeqi	r5, 0
	l.bf	.L489
	l.movhi	r11, hi(0)
.L484:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L486
	l.addi	r4, r4, 4
	l.sfgeu	r19, r17
	l.bnf	.L495
	l.sfgtu	r19, r17
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L489:
.L496:
	l.jr	r9
	 l.nop

.L495:
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
	l.bf	.L498
	l.or	r16, r3, r3
	l.jal	memcpy
	l.slli	r5, r5, 2
.L498:
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
	l.bnf	.L511
	l.or	r11, r3, r3
	l.sub	r21, r3, r4
	l.slli	r19, r5, 2
	l.sfltu	r21, r19
	l.bnf	.L518
	l.addi	r17, r5, -1
	l.sfeqi	r5, 0
	l.bf	.L511
	l.slli	r6, r17, 2
	l.add	r12, r4, r6
	l.add	r8, r3, r6
.L508:
	l.addi	r8, r8, -4
	l.lwz	r23, 0(r12)
	l.sfne	r4, r12
	l.sw	4(r8), r23
	l.bf	.L508
	l.addi	r12, r12, -4
.L511:
	l.jr	r9
	 l.nop

.L518:
	l.sfnei	r5, 0
	l.bnf	.L511
	 l.nop

.L506:
	l.addi	r3, r3, 4
	l.addi	r17, r17, -1
	l.lwz	r5, 0(r4)
	l.sfnei	r17, -1
	l.sw	-4(r3), r5
	l.bf	.L506
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
	l.bf	.L520
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
.L521:
	l.addi	r17, r17, -1
	l.sfnei	r17, -1
	l.sw	0(r19), r4
	l.bf	.L521
	l.addi	r19, r19, 4
.L520:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L527
	l.sfeq	r3, r4
	l.sfeqi	r5, 0
	l.add	r31, r3, r5
	l.bf	.L526
	l.add	r17, r4, r5
.L529:
	l.addi	r31, r31, -1
	l.addi	r17, r17, -1
	l.lbs	r6, 0(r31)
	l.sfne	r3, r31
	l.bf	.L529
	l.sb	0(r17), r6
.L526:
	l.jr	r9
	 l.nop

.L527:
	l.bf	.L526
	l.sfeqi	r5, 0
	l.bf	.L526
	 l.nop

	l.addi	r17, r5, -1
	l.sfleui	r17, 6
	l.bf	.L530
	l.addi	r29, r3, 1
	l.or	r6, r4, r3
	l.andi	r7, r6, 3
	l.sfnei	r7, 0
	l.bf	.L530
	l.sub	r19, r4, r29
	l.sfleui	r19, 2
	l.bf	.L530
	l.srli	r23, r5, 2
	l.slli	r8, r23, 2
	l.or	r12, r4, r4
	l.add	r21, r3, r8
.L531:
	l.lwz	r11, 0(r3)
	l.addi	r3, r3, 4
	l.sw	0(r12), r11
	l.sfne	r21, r3
	l.bf	.L531
	l.addi	r12, r12, 4
	l.sfeq	r5, r8
	l.add	r4, r4, r8
	l.bf	.L526
	l.sub	r3, r5, r8
	l.lbs	r5, 0(r21)
	l.sfeqi	r3, 1
	l.bf	.L526
	l.sb	0(r4), r5
	l.lbs	r13, 1(r21)
	l.sfeqi	r3, 2
	l.bf	.L526
	l.sb	1(r4), r13
	l.lbs	r15, 2(r21)
	l.jr	r9
	l.sb	2(r4), r15
.L530:
	l.j	.L534
	l.add	r25, r3, r5
.L560:
	l.addi	r29, r29, 1
.L534:
	l.lbs	r27, -1(r29)
	l.sfne	r29, r25
	l.sb	0(r4), r27
	l.bf	.L560
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
	l.andi	r6, r17, 63
	l.sub	r19, r23, r5
	l.srli	r21, r4, 1
	l.addi	r11, r5, -32
	l.srl	r7, r21, r19
	l.sll	r27, r3, r5
	l.sub	r12, r23, r6
	l.slli	r8, r3, 1
	l.sfgesi	r11, 0
	l.addi	r25, r6, -32
	l.sll	r13, r4, r11
	l.sll	r5, r4, r5
	l.sll	r29, r8, r12
	l.srl	r4, r4, r6
	l.or	r15, r7, r27
	l.cmov	r31, r13, r15
	l.cmov	r23, r0, r5
	l.srl	r17, r3, r25
	l.sfgesi	r25, 0
	l.srl	r3, r3, r6
	l.or	r21, r29, r4
	l.cmov	r6, r17, r21
	l.cmov	r19, r0, r3
	l.or	r11, r19, r31
	l.jr	r9
	l.or	r12, r6, r23
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.ori	r23, r0, 31
	l.sub	r17, r0, r5
	l.andi	r6, r17, 63
	l.sub	r19, r23, r5
	l.slli	r21, r3, 1
	l.addi	r12, r5, -32
	l.sll	r7, r21, r19
	l.srl	r27, r4, r5
	l.sub	r11, r23, r6
	l.srli	r8, r4, 1
	l.sfgesi	r12, 0
	l.addi	r25, r6, -32
	l.srl	r13, r3, r12
	l.srl	r5, r3, r5
	l.srl	r29, r8, r11
	l.sll	r3, r3, r6
	l.or	r15, r7, r27
	l.cmov	r31, r13, r15
	l.cmov	r23, r0, r5
	l.sll	r17, r4, r25
	l.sfgesi	r25, 0
	l.sll	r4, r4, r6
	l.or	r21, r29, r3
	l.cmov	r6, r17, r21
	l.cmov	r19, r0, r4
	l.or	r11, r6, r23
	l.jr	r9
	l.or	r12, r19, r31
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
	l.srli	r11, r3, 8
	l.slli	r4, r3, 8
	l.jr	r9
	l.or	r11, r11, r4
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.slli	r11, r3, 24
	l.srli	r19, r3, 24
	l.srli	r17, r3, 8
	l.or	r4, r11, r19
	l.andi	r5, r17, 65280
	l.slli	r3, r3, 8
	l.movhi	r6, hi(16711680)
	l.or	r7, r4, r5
	l.and	r8, r3, r6
	l.jr	r9
	l.or	r11, r7, r8
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.slli	r17, r3, 8
	l.srli	r19, r4, 24
	l.or	r5, r17, r19
	l.srli	r21, r3, 8
	l.movhi	r23, hi(16711680)
	l.slli	r11, r4, 24
	l.srli	r12, r3, 24
	l.srli	r7, r4, 8
	l.andi	r6, r21, 65280
	l.andi	r25, r5, 255
	l.or	r8, r12, r6
	l.or	r15, r11, r25
	l.and	r13, r5, r23
	l.slli	r4, r4, 8
	l.andi	r27, r7, 65280
	l.or	r29, r8, r13
	l.slli	r3, r3, 24
	l.or	r31, r15, r27
	l.and	r17, r4, r23
	l.or	r11, r31, r17
	l.jr	r9
	l.or	r12, r29, r3
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.j	.L577
	l.movhi	r11, hi(0)
.L580:
	l.sfnei	r11, 32
	l.bnf	.L579
	 l.nop

.L577:
	l.srl	r17, r3, r11
	l.andi	r4, r17, 1
	l.sfeqi	r4, 0
	l.bf	.L580
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L579:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.sfeqi	r3, 0
	l.bf	.L584
	 l.nop

	l.andi	r11, r3, 1
	l.sfnei	r11, 0
	l.bf	.L581
	 l.nop

	l.ori	r11, r0, 1
.L583:
	l.srai	r3, r3, 1
	l.andi	r17, r3, 1
	l.sfeqi	r17, 0
	l.bf	.L583
	l.addi	r11, r11, 1
.L581:
	l.jr	r9
	 l.nop

.L584:
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
	l.bf	.L587
	l.ori	r11, r0, 1
	l.movhi	r5, ha(.LC3)
	l.lwz	r6, lo(.LC3)(r5)
	lf.sfgt.s	r3, r6
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L587:
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
	l.bf	.L590
	l.ori	r11, r0, 1
	l.movhi	r3, ha(.LC5)
	l.addi	r4, r3, lo(.LC5)
	l.lwz	r21, lo(.LC5)(r3)
	l.lwz	r23, 4(r4)
	lf.sfgt.d	r17,r19, r21,r23
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L590:
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
	l.bf	.L593
	l.ori	r11, r0, 1
	l.movhi	r3, ha(.LC7)
	l.addi	r4, r3, lo(.LC7)
	l.lwz	r21, lo(.LC7)(r3)
	l.lwz	r23, 4(r4)
	lf.sfgt.d	r17,r19, r21,r23
	l.ori	r11, r0, 1
	l.cmov	r11, r11, r0
.L593:
	l.jr	r9
	 l.nop

	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	l.or	r19, r4, r4
	l.srai	r17, r4, 31
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
	l.bf	.L598
	l.or	r11, r3, r3
	lf.add.s	r17, r3, r3
	lf.sfeq.s	r17, r3
	l.bf	.L598
	l.sfgesi	r4, 0
	l.bf	.L599
	l.movhi	r21, hi(1073741824)
	l.movhi	r21, hi(1056964608)
.L599:
	l.andi	r3, r4, 1
	l.sfeqi	r3, 0
	l.bf	.L612
	l.srli	r5, r4, 31
.L601:
	lf.mul.s	r11, r11, r21
	l.srli	r5, r4, 31
.L612:
	l.add	r4, r5, r4
	l.srai	r4, r4, 1
	l.sfeqi	r4, 0
	l.bf	.L598
	l.andi	r19, r4, 1
	l.srli	r6, r4, 31
	l.sfnei	r19, 0
	lf.mul.s	r21, r21, r21
	l.bf	.L601
	l.add	r7, r6, r4
	l.srai	r4, r7, 1
.L611:
	l.andi	r19, r4, 1
	l.srli	r6, r4, 31
	l.sfnei	r19, 0
	lf.mul.s	r21, r21, r21
	l.bf	.L601
	l.add	r7, r6, r4
	l.j	.L611
	l.srai	r4, r7, 1
.L598:
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
	l.bf	.L629
	l.or	r11, r25, r25
	lf.add.d	r17,r19, r25,r27, r25,r27
	lf.sfeq.d	r17,r19, r25,r27
	l.bf	.L629
	l.sfgesi	r5, 0
	l.bnf	.L626
	l.movhi	r3, ha(.LC10+4)
	l.movhi	r21, hi(1073741824)
	l.lwz	r23, lo(.LC10+4)(r3)
.L615:
	l.andi	r6, r5, 1
	l.sfeqi	r6, 0
	l.bf	.L630
	l.srli	r7, r5, 31
.L617:
	lf.mul.d	r25,r27, r25,r27, r21,r23
	l.srli	r7, r5, 31
.L630:
	l.add	r5, r7, r5
	l.srai	r5, r5, 1
	l.sfeqi	r5, 0
	l.bf	.L614
	l.andi	r19, r5, 1
	l.srli	r8, r5, 31
	l.sfnei	r19, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L617
	l.add	r11, r8, r5
	l.srai	r5, r11, 1
.L628:
	l.andi	r19, r5, 1
	l.srli	r8, r5, 31
	l.sfnei	r19, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L617
	l.add	r11, r8, r5
	l.j	.L628
	l.srai	r5, r11, 1
.L614:
	l.or	r11, r25, r25
.L629:
	l.jr	r9
	l.or	r12, r27, r27
.L626:
	l.movhi	r4, ha(.LC11+4)
	l.movhi	r21, hi(1071644672)
	l.j	.L615
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
	l.bf	.L647
	l.or	r11, r25, r25
	lf.add.d	r17,r19, r25,r27, r25,r27
	lf.sfeq.d	r25,r27, r17,r19
	l.bf	.L647
	l.sfgesi	r5, 0
	l.bnf	.L644
	l.movhi	r3, ha(.LC13+4)
	l.movhi	r21, hi(1073741824)
	l.lwz	r23, lo(.LC13+4)(r3)
.L633:
	l.andi	r6, r5, 1
	l.sfeqi	r6, 0
	l.bf	.L648
	l.srli	r7, r5, 31
.L635:
	lf.mul.d	r25,r27, r25,r27, r21,r23
	l.srli	r7, r5, 31
.L648:
	l.add	r5, r7, r5
	l.srai	r5, r5, 1
	l.sfeqi	r5, 0
	l.bf	.L632
	l.andi	r19, r5, 1
	l.srli	r8, r5, 31
	l.sfnei	r19, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L635
	l.add	r11, r8, r5
	l.srai	r5, r11, 1
.L646:
	l.andi	r19, r5, 1
	l.srli	r8, r5, 31
	l.sfnei	r19, 0
	lf.mul.d	r21,r23, r21,r23, r21,r23
	l.bf	.L635
	l.add	r11, r8, r5
	l.j	.L646
	l.srai	r5, r11, 1
.L632:
	l.or	r11, r25, r25
.L647:
	l.jr	r9
	l.or	r12, r27, r27
.L644:
	l.movhi	r4, ha(.LC12+4)
	l.movhi	r21, hi(1071644672)
	l.j	.L633
	l.lwz	r23, lo(.LC12+4)(r4)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.sfeqi	r5, 0
	l.bf	.L650
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.sfleui	r17, 3
	l.bf	.L651
	l.or	r3, r3, r4
	l.andi	r6, r3, 3
	l.sfnei	r6, 0
	l.bf	.L651
	l.srli	r25, r5, 2
	l.slli	r7, r25, 2
	l.or	r12, r11, r11
	l.add	r23, r4, r7
.L652:
	l.lwz	r21, 0(r12)
	l.lwz	r19, 0(r4)
	l.addi	r4, r4, 4
	l.xor	r8, r19, r21
	l.sw	0(r12), r8
	l.sfne	r23, r4
	l.bf	.L652
	l.addi	r12, r12, 4
	l.sfeq	r5, r7
	l.add	r4, r11, r7
	l.bf	.L650
	l.sub	r13, r5, r7
	l.lbz	r5, 0(r4)
	l.lbz	r15, 0(r23)
	l.xor	r27, r5, r15
	l.sfeqi	r13, 1
	l.bf	.L650
	l.sb	0(r4), r27
	l.lbz	r29, 1(r4)
	l.lbz	r31, 1(r23)
	l.xor	r17, r31, r29
	l.sfeqi	r13, 2
	l.bf	.L650
	l.sb	1(r4), r17
	l.lbz	r3, 2(r4)
	l.lbz	r6, 2(r23)
	l.xor	r25, r6, r3
	l.sb	2(r4), r25
.L650:
	l.jr	r9
	 l.nop

.L651:
	l.add	r7, r4, r5
	l.or	r8, r11, r11
.L654:
	l.lbz	r23, 0(r8)
	l.lbz	r21, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r19, r21, r23
	l.sfne	r7, r4
	l.sb	0(r8), r19
	l.bf	.L654
	l.addi	r8, r8, 1
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
	l.bf	.L668
	l.or	r6, r3, r3
.L669:
	l.lbs	r19, 1(r6)
	l.sfnei	r19, 0
	l.bf	.L669
	l.addi	r6, r6, 1
.L668:
	l.sfnei	r5, 0
	l.bf	.L670
	 l.nop

	l.j	.L681
	l.sb	0(r6), r0
.L672:
	l.sfeqi	r5, 0
	l.bf	.L671
	 l.nop

.L670:
	l.lbs	r3, 0(r4)
	l.sb	0(r6), r3
	l.sfnei	r3, 0
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L672
	l.addi	r6, r6, 1
	l.jr	r9
	 l.nop

.L671:
	l.sb	0(r6), r0
.L681:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.sfnei	r4, 0
	l.bnf	.L682
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L691:
	l.lbs	r5, 0(r17)
	l.sfnei	r5, 0
	l.bf	.L685
	 l.nop

.L682:
	l.jr	r9
	 l.nop

.L685:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L691
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
	l.bnf	.L697
	l.or	r11, r3, r3
.L693:
	l.j	.L696
	l.or	r17, r4, r4
.L695:
	l.sfeq	r19, r21
	l.bf	.L694
	 l.nop

.L696:
	l.lbs	r19, 0(r17)
	l.sfnei	r19, 0
	l.bf	.L695
	l.addi	r17, r17, 1
	l.lbs	r21, 1(r11)
	l.sfeqi	r21, 0
	l.bnf	.L693
	l.addi	r11, r11, 1
.L697:
	l.movhi	r11, hi(0)
.L694:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L702:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r4
	l.cmov	r11, r3, r11
	l.sfnei	r17, 0
	l.bf	.L702
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
	l.bf	.L715
	l.or	r17, r4, r4
.L706:
	l.lbs	r19, 1(r17)
	l.sfnei	r19, 0
	l.bf	.L706
	l.addi	r17, r17, 1
	l.sfeq	r17, r4
	l.bf	.L715
	l.sub	r29, r17, r4
	l.andi	r31, r25, 0xff
	l.j	.L724
	l.addi	r7, r29, -1
.L726:
	l.bnf	.L725
	l.addi	r3, r3, 1
.L724:
	l.lbs	r5, 0(r3)
	l.sfeq	r5, r25
	l.bnf	.L726
	l.sfnei	r5, 0
	l.or	r21, r31, r31
	l.add	r27, r3, r7
	l.or	r8, r4, r4
	l.j	.L708
	l.or	r6, r3, r3
.L727:
	l.bf	.L709
	l.addi	r6, r6, 1
	l.sfeq	r23, r21
	l.bnf	.L709
	 l.nop

	l.lbz	r21, 0(r6)
	l.sfeqi	r21, 0
	l.bf	.L709
	l.addi	r8, r8, 1
.L708:
	l.lbz	r23, 0(r8)
	l.sfeqi	r23, 0
	l.bnf	.L727
	l.sfeq	r6, r27
.L709:
	l.lbz	r11, 0(r8)
	l.sfeq	r11, r21
	l.bf	.L715
	 l.nop

	l.j	.L724
	l.addi	r3, r3, 1
.L725:
	l.jr	r9
	l.movhi	r11, hi(0)
.L715:
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
	l.bf	.L738
	l.movhi	r3, hi(0)
	l.or	r12, r3, r3
	l.or	r13, r23, r23
	lf.sfgt.d	r17,r19, r12,r13
	l.bnf	.L739
	l.or	r11, r17, r17
	lf.sflt.d	r25,r27, r21,r23
	l.bf	.L740
	l.movhi	r5, hi(-2147483648)
	l.or	r11, r17, r17
.L739:
	l.jr	r9
	l.or	r12, r19, r19
.L738:
	l.or	r21, r3, r3
	lf.sfgt.d	r25,r27, r21,r23
	l.bnf	.L739
	l.or	r11, r17, r17
	l.movhi	r5, hi(-2147483648)
.L740:
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
	l.bf	.L741
	l.or	r11, r3, r3
	l.sfltu	r4, r6
	l.bf	.L752
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L752
	l.addi	r6, r6, -1
	l.lbs	r31, 0(r5)
	l.j	.L747
	l.addi	r5, r5, 1
.L751:
	l.or	r11, r27, r27
.L743:
	l.sfgeu	r25, r11
	l.bnf	.L752
	 l.nop

.L747:
	l.lbs	r17, 0(r11)
	l.sfne	r17, r31
	l.bf	.L751
	l.addi	r27, r11, 1
	l.sfeqi	r6, 0
	l.bf	.L741
	l.or	r19, r5, r5
.L746:
	l.or	r3, r27, r27
	l.j	.L744
	l.add	r29, r27, r6
.L745:
	l.sfeq	r3, r29
	l.bf	.L741
	 l.nop

.L744:
	l.lbz	r23, 0(r3)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r3, r3, 1
	l.bf	.L745
	l.addi	r19, r19, 1
	l.sfgtu	r27, r25
	l.bf	.L752
	 l.nop

	l.lbs	r7, 0(r27)
	l.sfne	r7, r31
	l.bf	.L743
	l.addi	r11, r27, 1
	l.or	r8, r27, r27
	l.or	r19, r5, r5
	l.or	r27, r11, r11
	l.j	.L746
	l.or	r11, r8, r8
.L752:
	l.movhi	r11, hi(0)
.L741:
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
	l.bf	.L758
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L758:
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
	l.bf	.L785
	l.movhi	r27, hi(1072693248)
	l.movhi	r3, ha(.LC18)
	l.addi	r4, r3, lo(.LC18)
	l.lwz	r31, 4(r4)
	l.or	r29, r31, r31
	lf.sfge.d	r17,r19, r27,r29
	l.bnf	.L786
	l.movhi	r15, hi(0)
.L766:
	l.movhi	r6, ha(.LC19)
	l.movhi	r31, hi(0)
	l.addi	r7, r6, lo(.LC19)
.L772:
	l.lwz	r21, 0(r7)
	l.lwz	r23, 4(r7)
	lf.mul.d	r17,r19, r17,r19, r21,r23
	l.lwz	r21, 0(r4)
	l.lwz	r23, 4(r4)
	lf.sfge.d	r17,r19, r21,r23
	l.bf	.L772
	l.addi	r31, r31, 1
	l.sfeqi	r15, 0
.L788:
	l.bf	.L779
	l.sw	0(r5), r31
	l.movhi	r5, hi(-2147483648)
	l.xor	r11, r17, r5
	l.jr	r9
	l.or	r12, r19, r19
.L786:
	l.movhi	r6, ha(.LC19)
	l.addi	r7, r6, lo(.LC19)
	l.movhi	r27, hi(1071644672)
	l.lwz	r8, 4(r7)
	l.or	r29, r8, r8
	lf.sflt.d	r17,r19, r27,r29
	l.bnf	.L769
	l.movhi	r21, hi(0)
	lf.sfne.d	r17,r19, r21,r23
	l.bf	.L778
	l.or	r13, r19, r19
.L769:
	l.sw	0(r5), r0
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L785:
	l.movhi	r29, ha(.LC16+4)
	l.movhi	r21, hi(-1074790400)
	l.lwz	r23, lo(.LC16+4)(r29)
	lf.sfle.d	r17,r19, r21,r23
	l.movhi	r25, hi(-2147483648)
	l.xor	r12, r3, r25
	l.bnf	.L787
	l.or	r13, r4, r4
	l.movhi	r23, ha(.LC18)
	l.or	r17, r12, r12
	l.ori	r15, r0, 1
	l.j	.L766
	l.addi	r4, r23, lo(.LC18)
.L779:
	l.or	r11, r17, r17
	l.jr	r9
	l.or	r12, r19, r19
.L787:
	l.movhi	r3, ha(.LC17+4)
	l.movhi	r21, hi(-1075838976)
	l.lwz	r23, lo(.LC17+4)(r3)
	lf.sfgt.d	r17,r19, r21,r23
	l.bnf	.L769
	l.ori	r15, r0, 1
	l.movhi	r17, ha(.LC19)
	l.addi	r7, r17, lo(.LC19)
.L767:
	l.or	r17, r12, r12
	l.or	r19, r13, r13
	l.movhi	r31, hi(0)
.L774:
	lf.add.d	r17,r19, r17,r19, r17,r19
	l.lwz	r21, 0(r7)
	l.lwz	r23, 4(r7)
	lf.sflt.d	r17,r19, r21,r23
	l.bf	.L774
	l.addi	r31, r31, -1
	l.j	.L788
	l.sfeqi	r15, 0
.L778:
	l.or	r12, r17, r17
	l.j	.L767
	l.movhi	r15, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r17, r4, r3
	l.sfeqi	r17, 0
	l.movhi	r11, hi(0)
	l.bf	.L789
	l.movhi	r12, hi(0)
.L792:
	l.andi	r7, r4, 1
	l.sub	r19, r0, r7
	l.and	r8, r19, r6
	l.add	r13, r12, r8
	l.slli	r23, r3, 31
	l.srli	r4, r4, 1
	l.sfltu	r13, r12
	l.add	r21, r6, r6
	l.sub	r12, r0, r7
	l.ori	r25, r0, 1
	l.srli	r3, r3, 1
	l.or	r4, r23, r4
	l.and	r15, r12, r5
	l.cmov	r27, r25, r0
	l.or	r31, r3, r4
	l.sfltu	r21, r6
	l.ori	r6, r0, 1
	l.cmov	r29, r6, r0
	l.add	r11, r11, r15
	l.add	r5, r5, r5
	l.sfnei	r31, 0
	l.add	r11, r27, r11
	l.or	r12, r13, r13
	l.add	r5, r29, r5
	l.bf	.L792
	l.or	r6, r21, r21
.L789:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r6, r0, 32
	l.bf	.L796
	l.ori	r17, r0, 1
	l.j	.L815
	l.sfleu	r4, r3
.L800:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L798
	l.add	r17, r17, r17
	l.sfeqi	r6, 0
	l.bf	.L817
	l.sfnei	r5, 0
.L796:
	l.sfgesi	r4, 0
	l.bf	.L800
	l.addi	r6, r6, -1
.L801:
	l.movhi	r6, hi(0)
.L802:
	l.sfgeu	r3, r4
	l.cmov	r19, r17, r0
	l.sub	r21, r3, r4
	l.srli	r17, r17, 1
	l.cmov	r3, r21, r3
	l.sfnei	r17, 0
	l.or	r6, r6, r19
	l.bf	.L802
	l.srli	r4, r4, 1
.L799:
	l.sfnei	r5, 0
.L817:
	l.jr	r9
	l.cmov	r11, r3, r6
.L798:
	l.sfeqi	r17, 0
	l.bnf	.L801
	l.movhi	r6, hi(0)
	l.j	.L817
	l.sfnei	r5, 0
.L815:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L799
	l.cmov	r6, r11, r0
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.extbs	r3, r3
	l.srai	r17, r3, 7
	l.sfeq	r3, r17
	l.bf	.L820
	l.xor	r19, r3, r17
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzsi2
	l.slli	r3, r19, 8
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L820:
	l.jr	r9
	l.ori	r11, r0, 7
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.srai	r21, r3, 31
	l.or	r17, r3, r3
	l.sfne	r17, r21
	l.or	r19, r4, r4
	l.xor	r3, r3, r21
	l.bnf	.L834
	l.xor	r4, r4, r21
.L829:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L834:
	l.sfne	r19, r17
	l.bf	.L829
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 63
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.sfeqi	r3, 0
	l.bf	.L835
	l.movhi	r11, hi(0)
.L837:
	l.andi	r17, r3, 1
	l.sub	r5, r0, r17
	l.srli	r3, r3, 1
	l.and	r6, r5, r4
	l.sfnei	r3, 0
	l.add	r11, r11, r6
	l.bf	.L837
	l.add	r4, r4, r4
.L835:
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.xori	r27, r0, -8
	l.sfgeu	r3, r4
	l.srli	r25, r5, 3
	l.bnf	.L844
	l.and	r6, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L874
	l.sfnei	r5, 0
.L844:
	l.sfnei	r25, 0
	l.bnf	.L875
	l.slli	r8, r25, 3
	l.or	r13, r4, r4
	l.or	r15, r3, r3
	l.add	r11, r8, r4
.L847:
	l.lwz	r23, 0(r13)
	l.lwz	r12, 4(r13)
	l.addi	r13, r13, 8
	l.sw	0(r15), r23
	l.sw	4(r15), r12
	l.sfne	r13, r11
	l.bf	.L847
	l.addi	r15, r15, 8
	l.sfleu	r5, r6
	l.bf	.L840
	l.sub	r29, r5, r6
	l.addi	r31, r29, -1
	l.sfleui	r31, 6
	l.bf	.L873
	l.addi	r27, r6, 1
	l.add	r15, r3, r6
	l.add	r25, r4, r27
	l.sub	r21, r15, r25
	l.sfleui	r21, 2
	l.bf	.L849
	l.add	r17, r4, r6
	l.or	r7, r17, r15
	l.andi	r8, r7, 3
	l.sfnei	r8, 0
	l.bf	.L849
	l.srli	r11, r29, 2
	l.slli	r12, r11, 2
	l.add	r23, r17, r12
.L850:
	l.lwz	r13, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r15), r13
	l.sfne	r17, r23
	l.bf	.L850
	l.addi	r15, r15, 4
	l.sfeq	r29, r12
	l.bf	.L840
	l.add	r6, r6, r12
	l.add	r17, r4, r6
	l.lbs	r15, 0(r17)
	l.add	r19, r3, r6
	l.addi	r29, r6, 1
	l.sfleu	r5, r29
	l.bf	.L840
	l.sb	0(r19), r15
	l.add	r31, r4, r29
	l.lbs	r25, 0(r31)
	l.add	r21, r3, r29
	l.addi	r27, r6, 2
	l.sfleu	r5, r27
	l.bf	.L840
	l.sb	0(r21), r25
	l.add	r4, r4, r27
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r27
	l.sb	0(r3), r5
.L840:
	l.jr	r9
	 l.nop

.L874:
	l.bnf	.L840
	l.addi	r7, r5, -1
.L845:
	l.add	r21, r4, r7
	l.add	r19, r3, r7
	l.lbs	r5, 0(r21)
	l.addi	r7, r7, -1
	l.sfnei	r7, -1
	l.bf	.L845
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L875:
	l.sfnei	r5, 0
	l.bnf	.L840
	 l.nop

.L873:
	l.add	r15, r3, r6
	l.add	r17, r4, r6
.L849:
	l.add	r7, r4, r5
.L852:
	l.lbs	r8, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r15), r8
	l.sfne	r17, r7
	l.bf	.L852
	l.addi	r15, r15, 1
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.sfgeu	r3, r4
	l.bnf	.L880
	l.srli	r27, r5, 1
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L903
	l.sfnei	r5, 0
.L880:
	l.sfnei	r27, 0
	l.bnf	.L879
	l.addi	r7, r27, -1
	l.sfleui	r7, 8
	l.bf	.L883
	l.or	r8, r4, r3
	l.andi	r11, r8, 3
	l.sfnei	r11, 0
	l.bf	.L883
	l.addi	r12, r4, 2
	l.sfeq	r3, r12
	l.bf	.L883
	l.or	r29, r4, r4
	l.srli	r25, r5, 2
	l.slli	r23, r25, 2
	l.or	r31, r3, r3
	l.add	r13, r23, r4
.L884:
	l.lwz	r15, 0(r29)
	l.addi	r29, r29, 4
	l.sw	0(r31), r15
	l.sfne	r29, r13
	l.bf	.L884
	l.addi	r31, r31, 4
	l.add	r17, r25, r25
	l.sfeq	r27, r17
	l.bf	.L879
	l.add	r27, r17, r17
	l.add	r21, r4, r27
	l.lhs	r19, 0(r21)
	l.add	r6, r3, r27
	l.sh	0(r6), r19
.L879:
	l.andi	r23, r5, 1
	l.sfeqi	r23, 0
	l.bf	.L876
	l.add	r4, r4, r5
	l.lbs	r13, -1(r4)
.L906:
	l.add	r3, r3, r5
	l.sb	-1(r3), r13
.L876:
	l.jr	r9
	 l.nop

.L903:
	l.bnf	.L876
	l.addi	r6, r5, -1
.L881:
	l.add	r21, r4, r6
	l.add	r19, r3, r6
	l.lbs	r5, 0(r21)
	l.addi	r6, r6, -1
	l.sfnei	r6, -1
	l.bf	.L881
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L883:
	l.add	r7, r27, r27
	l.or	r12, r4, r4
	l.or	r25, r3, r3
	l.add	r8, r7, r4
.L886:
	l.lhs	r11, 0(r12)
	l.addi	r12, r12, 2
	l.sh	0(r25), r11
	l.sfne	r8, r12
	l.bf	.L886
	l.addi	r25, r25, 2
	l.andi	r23, r5, 1
	l.sfeqi	r23, 0
	l.bf	.L876
	l.add	r4, r4, r5
	l.j	.L906
	l.lbs	r13, -1(r4)
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.xori	r25, r0, -4
	l.sfgeu	r3, r4
	l.srli	r23, r5, 2
	l.bnf	.L911
	l.and	r6, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L941
	l.sfnei	r5, 0
.L911:
	l.sfnei	r23, 0
	l.bnf	.L942
	l.slli	r8, r23, 2
	l.or	r13, r4, r4
	l.or	r15, r3, r3
	l.add	r11, r8, r4
.L914:
	l.lwz	r12, 0(r13)
	l.addi	r13, r13, 4
	l.sw	0(r15), r12
	l.sfne	r13, r11
	l.bf	.L914
	l.addi	r15, r15, 4
	l.sfleu	r5, r6
	l.bf	.L907
	l.sub	r29, r5, r6
	l.addi	r27, r29, -1
	l.sfleui	r27, 6
	l.bf	.L940
	l.addi	r31, r6, 1
	l.add	r15, r3, r6
	l.add	r25, r4, r31
	l.sub	r23, r15, r25
	l.sfleui	r23, 2
	l.bf	.L916
	l.add	r17, r4, r6
	l.or	r21, r17, r15
	l.andi	r7, r21, 3
	l.sfnei	r7, 0
	l.bf	.L916
	l.srli	r8, r29, 2
	l.slli	r11, r8, 2
	l.add	r12, r17, r11
.L917:
	l.lwz	r13, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r15), r13
	l.sfne	r17, r12
	l.bf	.L917
	l.addi	r15, r15, 4
	l.sfeq	r29, r11
	l.bf	.L907
	l.add	r6, r6, r11
	l.add	r17, r4, r6
	l.lbs	r15, 0(r17)
	l.add	r19, r3, r6
	l.addi	r29, r6, 1
	l.sfleu	r5, r29
	l.bf	.L907
	l.sb	0(r19), r15
	l.add	r27, r4, r29
	l.lbs	r31, 0(r27)
	l.add	r23, r3, r29
	l.addi	r25, r6, 2
	l.sfleu	r5, r25
	l.bf	.L907
	l.sb	0(r23), r31
	l.add	r4, r4, r25
	l.lbs	r5, 0(r4)
	l.add	r3, r3, r25
	l.sb	0(r3), r5
.L907:
	l.jr	r9
	 l.nop

.L941:
	l.bnf	.L907
	l.addi	r7, r5, -1
.L912:
	l.add	r21, r4, r7
	l.add	r19, r3, r7
	l.lbs	r5, 0(r21)
	l.addi	r7, r7, -1
	l.sfnei	r7, -1
	l.bf	.L912
	l.sb	0(r19), r5
	l.jr	r9
	 l.nop

.L942:
	l.sfnei	r5, 0
	l.bnf	.L907
	 l.nop

.L940:
	l.add	r15, r3, r6
	l.add	r17, r4, r6
.L916:
	l.add	r7, r4, r5
.L919:
	l.lbs	r21, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r15), r21
	l.sfne	r17, r7
	l.bf	.L919
	l.addi	r15, r15, 1
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
	l.bf	.L949
	l.slli	r17, r20, 31
	lf.itof.d	r17,r19, r20,r22
	l.or	r11, r17, r17
.L951:
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L949:
	l.srli	r21, r22, 1
	l.andi	r19, r22, 1
	l.or	r3, r17, r21
	l.or	r18, r19, r3
	l.srli	r16, r20, 1
	lf.itof.d	r4,r5, r16,r18
	lf.add.d	r17,r19, r4,r5, r4,r5
	l.j	.L951
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
	l.srai	r17, r3, 15
	l.sfnei	r17, 0
	l.bf	.L958
	 l.nop

	l.srai	r11, r3, 14
	l.sfnei	r11, 0
	l.bf	.L955
	l.srai	r4, r3, 13
	l.sfnei	r4, 0
	l.bf	.L959
	l.srai	r5, r3, 12
	l.sfnei	r5, 0
	l.bf	.L960
	l.srai	r6, r3, 11
	l.sfnei	r6, 0
	l.bf	.L961
	l.srai	r7, r3, 10
	l.sfnei	r7, 0
	l.bf	.L962
	l.srai	r8, r3, 9
	l.sfnei	r8, 0
	l.bf	.L963
	 l.nop

	l.srai	r11, r3, 8
	l.sfnei	r11, 0
	l.bf	.L964
	l.srai	r12, r3, 7
	l.sfnei	r12, 0
	l.bf	.L965
	l.srai	r13, r3, 6
	l.sfnei	r13, 0
	l.bf	.L966
	l.srai	r15, r3, 5
	l.sfnei	r15, 0
	l.bf	.L967
	l.srai	r19, r3, 4
	l.sfnei	r19, 0
	l.bf	.L968
	l.srai	r21, r3, 3
	l.sfnei	r21, 0
	l.bf	.L969
	l.srai	r23, r3, 2
	l.sfnei	r23, 0
	l.bf	.L970
	l.srai	r25, r3, 1
	l.sfnei	r25, 0
	l.bf	.L971
	l.sfeqi	r3, 0
	l.bnf	.L974
	l.ori	r11, r0, 16
.L955:
	l.jr	r9
	 l.nop

.L958:
	l.jr	r9
	l.movhi	r11, hi(0)
.L969:
	l.jr	r9
	l.ori	r11, r0, 12
.L974:
	l.jr	r9
	l.ori	r11, r0, 15
.L959:
	l.jr	r9
	l.ori	r11, r0, 2
.L960:
	l.jr	r9
	l.ori	r11, r0, 3
.L961:
	l.jr	r9
	l.ori	r11, r0, 4
.L962:
	l.jr	r9
	l.ori	r11, r0, 5
.L963:
	l.jr	r9
	l.ori	r11, r0, 6
.L964:
	l.jr	r9
	l.ori	r11, r0, 7
.L965:
	l.jr	r9
	l.ori	r11, r0, 8
.L966:
	l.jr	r9
	l.ori	r11, r0, 9
.L967:
	l.jr	r9
	l.ori	r11, r0, 10
.L968:
	l.jr	r9
	l.ori	r11, r0, 11
.L970:
	l.jr	r9
	l.ori	r11, r0, 13
.L971:
	l.jr	r9
	l.ori	r11, r0, 14
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	l.andi	r17, r3, 1
	l.sfnei	r17, 0
	l.bf	.L978
	l.andi	r3, r3, 0xffff
	l.andi	r4, r3, 2
	l.sfnei	r4, 0
	l.bf	.L979
	l.andi	r5, r3, 4
	l.sfnei	r5, 0
	l.bf	.L980
	l.andi	r6, r3, 8
	l.sfnei	r6, 0
	l.bf	.L981
	l.andi	r7, r3, 16
	l.sfnei	r7, 0
	l.bf	.L982
	l.andi	r8, r3, 32
	l.sfnei	r8, 0
	l.bf	.L983
	 l.nop

	l.andi	r11, r3, 64
	l.sfnei	r11, 0
	l.bf	.L984
	l.andi	r12, r3, 128
	l.sfnei	r12, 0
	l.bf	.L985
	l.andi	r13, r3, 256
	l.sfnei	r13, 0
	l.bf	.L986
	l.andi	r15, r3, 512
	l.sfnei	r15, 0
	l.bf	.L987
	l.andi	r19, r3, 1024
	l.sfnei	r19, 0
	l.bf	.L988
	l.andi	r21, r3, 2048
	l.sfnei	r21, 0
	l.bf	.L989
	l.andi	r23, r3, 4096
	l.sfnei	r23, 0
	l.bf	.L990
	l.andi	r25, r3, 8192
	l.sfnei	r25, 0
	l.bf	.L991
	l.andi	r27, r3, 16384
	l.sfnei	r27, 0
	l.bf	.L992
	l.srai	r29, r3, 15
	l.sfeqi	r29, 0
	l.bnf	.L995
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L978:
	l.jr	r9
	l.movhi	r11, hi(0)
.L979:
	l.jr	r9
	l.ori	r11, r0, 1
.L990:
	l.jr	r9
	l.ori	r11, r0, 12
.L995:
	l.jr	r9
	l.ori	r11, r0, 15
.L980:
	l.jr	r9
	l.ori	r11, r0, 2
.L981:
	l.jr	r9
	l.ori	r11, r0, 3
.L982:
	l.jr	r9
	l.ori	r11, r0, 4
.L983:
	l.jr	r9
	l.ori	r11, r0, 5
.L984:
	l.jr	r9
	l.ori	r11, r0, 6
.L985:
	l.jr	r9
	l.ori	r11, r0, 7
.L986:
	l.jr	r9
	l.ori	r11, r0, 8
.L987:
	l.jr	r9
	l.ori	r11, r0, 9
.L988:
	l.jr	r9
	l.ori	r11, r0, 10
.L989:
	l.jr	r9
	l.ori	r11, r0, 11
.L991:
	l.jr	r9
	l.ori	r11, r0, 13
.L992:
	l.jr	r9
	l.ori	r11, r0, 14
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.movhi	r17, hi(1191182336)
	lf.sfge.s	r3, r17
	l.bf	.L1002
	l.ori	r4, r0, 32768
	lf.ftoi.s	r11, r3
	l.jr	r9
	 l.nop

.L1002:
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
	l.srai	r11, r3, 1
	l.andi	r4, r11, 1
	l.andi	r19, r3, 1
	l.srai	r17, r3, 2
	l.add	r5, r4, r19
	l.andi	r6, r17, 1
	l.srai	r7, r3, 3
	l.add	r8, r5, r6
	l.andi	r12, r7, 1
	l.srai	r13, r3, 4
	l.add	r15, r8, r12
	l.andi	r21, r13, 1
	l.srai	r23, r3, 5
	l.add	r25, r15, r21
	l.andi	r27, r23, 1
	l.srai	r29, r3, 6
	l.add	r31, r25, r27
	l.andi	r11, r29, 1
	l.srai	r4, r3, 7
	l.add	r5, r31, r11
	l.andi	r19, r4, 1
	l.srai	r17, r3, 8
	l.add	r6, r5, r19
	l.andi	r7, r17, 1
	l.srai	r8, r3, 9
	l.add	r12, r6, r7
	l.andi	r13, r8, 1
	l.srai	r15, r3, 10
	l.add	r21, r12, r13
	l.srai	r25, r3, 11
	l.andi	r23, r15, 1
	l.srai	r31, r3, 12
	l.add	r27, r21, r23
	l.andi	r29, r25, 1
	l.add	r11, r27, r29
	l.srai	r5, r3, 13
	l.andi	r4, r31, 1
	l.add	r6, r11, r4
	l.srai	r17, r3, 14
	l.andi	r19, r5, 1
	l.add	r7, r6, r19
	l.andi	r8, r17, 1
	l.add	r12, r7, r8
	l.srai	r3, r3, 15
	l.add	r13, r12, r3
	l.jr	r9
	l.andi	r11, r13, 1
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	l.andi	r3, r3, 0xffff
	l.srai	r17, r3, 1
	l.andi	r4, r17, 1
	l.andi	r21, r3, 1
	l.srai	r19, r3, 2
	l.add	r5, r4, r21
	l.andi	r6, r19, 1
	l.srai	r7, r3, 3
	l.add	r8, r5, r6
	l.andi	r11, r7, 1
	l.srai	r12, r3, 4
	l.add	r13, r8, r11
	l.andi	r15, r12, 1
	l.srai	r23, r3, 5
	l.add	r25, r13, r15
	l.andi	r27, r23, 1
	l.srai	r29, r3, 6
	l.add	r31, r25, r27
	l.andi	r17, r29, 1
	l.srai	r4, r3, 7
	l.add	r5, r31, r17
	l.andi	r21, r4, 1
	l.srai	r19, r3, 8
	l.add	r6, r5, r21
	l.andi	r7, r19, 1
	l.srai	r8, r3, 9
	l.add	r11, r6, r7
	l.andi	r12, r8, 1
	l.srai	r13, r3, 10
	l.add	r15, r11, r12
	l.srai	r25, r3, 11
	l.andi	r23, r13, 1
	l.srai	r31, r3, 12
	l.add	r27, r15, r23
	l.andi	r29, r25, 1
	l.srai	r5, r3, 13
	l.add	r17, r27, r29
	l.andi	r4, r31, 1
	l.srai	r19, r3, 14
	l.add	r6, r17, r4
	l.andi	r21, r5, 1
	l.add	r7, r6, r21
	l.andi	r8, r19, 1
	l.add	r12, r7, r8
	l.srai	r3, r3, 15
	l.jr	r9
	l.add	r11, r12, r3
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.sfeqi	r3, 0
	l.bf	.L1005
	l.movhi	r11, hi(0)
.L1007:
	l.andi	r17, r3, 1
	l.sub	r5, r0, r17
	l.srli	r3, r3, 1
	l.and	r6, r5, r4
	l.sfnei	r3, 0
	l.add	r11, r11, r6
	l.bf	.L1007
	l.add	r4, r4, r4
.L1005:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.sfeqi	r3, 0
	l.bf	.L1010
	l.movhi	r11, hi(0)
	l.sfeqi	r4, 0
	l.bf	.L1010
	 l.nop

.L1012:
	l.andi	r17, r4, 1
	l.sub	r5, r0, r17
	l.srli	r4, r4, 1
	l.and	r6, r5, r3
	l.sfnei	r4, 0
	l.add	r11, r11, r6
	l.bf	.L1012
	l.add	r3, r3, r3
.L1010:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r6, r0, 32
	l.bf	.L1017
	l.ori	r17, r0, 1
	l.j	.L1036
	l.sfgeu	r3, r4
.L1021:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L1019
	l.add	r17, r17, r17
	l.sfeqi	r6, 0
	l.bf	.L1038
	l.sfnei	r5, 0
.L1017:
	l.sfgesi	r4, 0
	l.bf	.L1021
	l.addi	r6, r6, -1
.L1022:
	l.movhi	r6, hi(0)
.L1023:
	l.sfgeu	r3, r4
	l.cmov	r19, r17, r0
	l.sub	r21, r3, r4
	l.srli	r17, r17, 1
	l.cmov	r3, r21, r3
	l.sfnei	r17, 0
	l.or	r6, r6, r19
	l.bf	.L1023
	l.srli	r4, r4, 1
.L1020:
	l.sfnei	r5, 0
.L1038:
	l.jr	r9
	l.cmov	r11, r3, r6
.L1019:
	l.sfeqi	r17, 0
	l.bnf	.L1022
	l.movhi	r6, hi(0)
	l.j	.L1038
	l.sfnei	r5, 0
.L1036:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L1020
	l.cmov	r6, r11, r0
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	lf.sflt.s	r3, r4
	l.bf	.L1041
	 l.nop

	lf.sfgt.s	r3, r4
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1041:
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
	l.bf	.L1044
	 l.nop

	lf.sfgt.d	r21,r23, r17,r19
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1044:
	l.jr	r9
	l.xori	r11, r0, -1
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	l.or	r17, r3, r3
	l.addi	r1, r1, -4
	l.or	r6, r4, r4
	l.srai	r5, r4, 31
	l.srai	r3, r3, 31
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
	l.bnf	.L1063
	l.sfeqi	r4, 0
	l.bf	.L1055
	l.movhi	r21, hi(0)
.L1051:
	l.ori	r7, r0, 32
	l.j	.L1054
	l.movhi	r11, hi(0)
.L1064:
	l.sfnei	r7, 0
	l.bnf	.L1065
	l.sfeqi	r21, 0
.L1054:
	l.andi	r17, r4, 1
	l.sub	r5, r0, r17
	l.srai	r4, r4, 1
	l.and	r6, r5, r3
	l.addi	r19, r7, -1
	l.sfeqi	r4, 0
	l.andi	r7, r19, 0xff
	l.add	r11, r11, r6
	l.bnf	.L1064
	l.add	r3, r3, r3
	l.sfeqi	r21, 0
.L1065:
	l.bf	.L1049
	 l.nop

	l.sub	r11, r0, r11
.L1049:
	l.jr	r9
	 l.nop

.L1063:
	l.sub	r4, r0, r4
	l.j	.L1051
	l.ori	r21, r0, 1
.L1055:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.sfgesi	r3, 0
	l.bnf	.L1092
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 1
	l.movhi	r27, hi(0)
.L1067:
	l.sfgesi	r4, 0
	l.bf	.L1093
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.or	r27, r17, r17
	l.sfgtu	r3, r4
.L1093:
	l.or	r23, r3, r3
	l.or	r5, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1069
	l.ori	r19, r0, 1
	l.j	.L1090
	l.sfgeu	r3, r4
.L1073:
	l.sfnei	r21, 0
	l.bnf	.L1094
	l.sfnei	r19, 0
.L1069:
	l.add	r5, r5, r5
	l.sfgtu	r3, r5
	l.addi	r21, r21, -1
	l.bf	.L1073
	l.add	r19, r19, r19
	l.sfnei	r19, 0
.L1094:
	l.bnf	.L1072
	l.movhi	r11, hi(0)
.L1071:
	l.sfgeu	r23, r5
	l.cmov	r3, r19, r0
	l.sub	r25, r23, r5
	l.srli	r19, r19, 1
	l.cmov	r23, r25, r23
	l.sfnei	r19, 0
	l.or	r11, r11, r3
	l.bf	.L1071
	l.srli	r5, r5, 1
.L1072:
	l.sfeqi	r27, 0
	l.bf	.L1066
	 l.nop

	l.sub	r11, r0, r11
.L1066:
	l.jr	r9
	 l.nop

.L1092:
	l.sub	r3, r0, r3
	l.j	.L1067
	l.ori	r27, r0, 1
.L1090:
	l.ori	r11, r0, 1
	l.j	.L1072
	l.cmov	r11, r11, r0
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.sfgesi	r3, 0
	l.bnf	.L1120
	 l.nop

	l.movhi	r23, hi(0)
.L1096:
	l.sfgesi	r4, 0
	l.bf	.L1097
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1097:
	l.sfgtu	r3, r4
	l.or	r17, r4, r4
	l.ori	r21, r0, 32
	l.bf	.L1098
	l.ori	r19, r0, 1
	l.j	.L1118
	l.sub	r11, r3, r4
.L1102:
	l.sfnei	r21, 0
	l.bnf	.L1122
	l.sfnei	r19, 0
.L1098:
	l.add	r17, r17, r17
	l.sfgtu	r3, r17
	l.addi	r21, r21, -1
	l.bf	.L1102
	l.add	r19, r19, r19
	l.sfnei	r19, 0
.L1122:
	l.bnf	.L1121
	 l.nop

.L1100:
	l.sfgeu	r11, r17
	l.sub	r3, r11, r17
	l.srli	r19, r19, 1
	l.cmov	r11, r3, r11
	l.sfnei	r19, 0
	l.bf	.L1100
	l.srli	r17, r17, 1
.L1101:
	l.sfeqi	r23, 0
	l.bf	.L1095
	 l.nop

	l.sub	r11, r0, r11
.L1095:
	l.jr	r9
	 l.nop

.L1120:
	l.sub	r3, r0, r3
	l.j	.L1096
	l.ori	r23, r0, 1
.L1121:
	l.j	.L1101
	l.or	r11, r3, r3
.L1118:
	l.sfgeu	r3, r4
	l.j	.L1101
	l.cmov	r11, r11, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r8, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r8
	l.bnf	.L1209
	l.sfeq	r4, r8
	l.exths	r17, r4
	l.sfltsi	r17, 0
	l.bf	.L1126
	l.add	r12, r4, r4
	l.andi	r17, r12, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1133
	l.exths	r13, r17
	l.sfltsi	r13, 0
	l.bf	.L1133
	l.slli	r15, r4, 2
	l.andi	r17, r15, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1135
	l.exths	r21, r17
	l.sfltsi	r21, 0
	l.bf	.L1135
	l.slli	r23, r4, 3
	l.andi	r17, r23, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1137
	l.exths	r25, r17
	l.sfltsi	r25, 0
	l.bf	.L1137
	l.slli	r27, r4, 4
	l.andi	r17, r27, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1139
	l.exths	r29, r17
	l.sfltsi	r29, 0
	l.bf	.L1139
	l.slli	r31, r4, 5
	l.andi	r17, r31, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1141
	l.exths	r6, r17
	l.sfltsi	r6, 0
	l.bf	.L1141
	l.slli	r3, r4, 6
	l.andi	r17, r3, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1143
	 l.nop

	l.exths	r19, r17
	l.sfltsi	r19, 0
	l.bf	.L1143
	 l.nop

	l.slli	r17, r4, 7
	l.andi	r17, r17, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1145
	l.exths	r7, r17
	l.sfltsi	r7, 0
	l.bf	.L1145
	l.slli	r11, r4, 8
	l.andi	r17, r11, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1147
	l.exths	r12, r17
	l.sfltsi	r12, 0
	l.bf	.L1147
	l.slli	r13, r4, 9
	l.andi	r17, r13, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1149
	l.exths	r15, r17
	l.sfltsi	r15, 0
	l.bf	.L1149
	l.slli	r21, r4, 10
	l.andi	r17, r21, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1151
	l.exths	r23, r17
	l.sfltsi	r23, 0
	l.bf	.L1151
	l.slli	r25, r4, 11
	l.andi	r17, r25, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1153
	l.exths	r27, r17
	l.sfltsi	r27, 0
	l.bf	.L1153
	l.slli	r29, r4, 12
	l.andi	r17, r29, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1155
	l.exths	r31, r17
	l.sfltsi	r31, 0
	l.bf	.L1155
	l.slli	r6, r4, 13
	l.andi	r17, r6, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1157
	l.exths	r3, r17
	l.sfltsi	r3, 0
	l.bf	.L1157
	 l.nop

	l.slli	r19, r4, 14
	l.andi	r17, r19, 0xffff
	l.sfleu	r8, r17
	l.bf	.L1159
	l.exths	r7, r17
	l.sfltsi	r7, 0
	l.bf	.L1159
	l.slli	r11, r4, 15
	l.andi	r11, r11, 0xffff
	l.sfleu	r8, r11
	l.bf	.L1160
	l.sfeqi	r11, 0
	l.bnf	.L1210
	 l.nop

.L1129:
	l.sfnei	r5, 0
	l.jr	r9
	l.cmov	r11, r8, r11
.L1133:
	l.ori	r4, r0, 2
.L1128:
	l.sfgeu	r8, r17
	l.sub	r12, r8, r17
	l.cmov	r13, r12, r8
	l.andi	r15, r13, 0xffff
	l.srli	r25, r17, 1
	l.sfgeu	r8, r17
	l.cmov	r8, r4, r0
	l.sub	r27, r15, r25
	l.sfgeu	r15, r25
	l.cmov	r29, r27, r15
	l.srli	r23, r4, 1
	l.sfgeu	r15, r25
	l.andi	r21, r8, 0xffff
	l.cmov	r31, r23, r0
	l.srli	r3, r4, 2
	l.or	r6, r21, r31
	l.sfeqi	r3, 0
	l.andi	r8, r29, 0xffff
	l.andi	r11, r6, 0xffff
	l.bf	.L1129
	l.srli	r19, r17, 2
	l.sfgeu	r8, r19
	l.sub	r7, r8, r19
	l.cmov	r12, r3, r0
	l.srli	r15, r4, 3
	l.cmov	r13, r7, r29
	l.or	r11, r11, r12
	l.sfeqi	r15, 0
	l.andi	r8, r13, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1129
	l.srli	r21, r17, 3
	l.sfgeu	r8, r21
	l.cmov	r23, r15, r0
	l.sub	r8, r8, r21
	l.srli	r29, r4, 4
	l.cmov	r25, r8, r13
	l.or	r27, r11, r23
	l.sfeqi	r29, 0
	l.andi	r8, r25, 0xffff
	l.andi	r11, r27, 0xffff
	l.bf	.L1129
	l.srli	r31, r17, 4
	l.sfgeu	r8, r31
	l.sub	r6, r8, r31
	l.cmov	r3, r29, r0
	l.srli	r12, r4, 5
	l.cmov	r19, r6, r25
	l.or	r7, r11, r3
	l.sfeqi	r12, 0
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1129
	l.srli	r13, r17, 5
	l.sfgeu	r8, r13
	l.sub	r15, r8, r13
	l.cmov	r21, r12, r0
	l.srli	r27, r4, 6
	l.cmov	r25, r15, r19
	l.or	r11, r11, r21
	l.sfeqi	r27, 0
	l.andi	r8, r25, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1129
	l.srli	r23, r17, 6
	l.sfgeu	r8, r23
	l.cmov	r29, r27, r0
	l.sub	r8, r8, r23
	l.srli	r3, r4, 7
	l.cmov	r31, r8, r25
	l.or	r6, r11, r29
	l.sfeqi	r3, 0
	l.andi	r8, r31, 0xffff
	l.andi	r11, r6, 0xffff
	l.bf	.L1129
	l.srli	r19, r17, 7
	l.sfgeu	r8, r19
	l.sub	r7, r8, r19
	l.cmov	r12, r3, r0
	l.srli	r21, r4, 8
	l.cmov	r13, r7, r31
	l.or	r15, r11, r12
	l.sfeqi	r21, 0
	l.andi	r8, r13, 0xffff
	l.andi	r11, r15, 0xffff
	l.bf	.L1129
	l.srli	r25, r17, 8
	l.sfgeu	r8, r25
	l.sub	r27, r8, r25
	l.srli	r29, r4, 9
	l.cmov	r8, r21, r0
	l.cmov	r23, r27, r13
	l.or	r11, r11, r8
	l.sfeqi	r29, 0
	l.andi	r8, r23, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1129
	l.srli	r31, r17, 9
	l.sfgeu	r8, r31
	l.sub	r6, r8, r31
	l.cmov	r3, r29, r0
	l.srli	r12, r4, 10
	l.cmov	r19, r6, r23
	l.or	r7, r11, r3
	l.sfeqi	r12, 0
	l.andi	r8, r19, 0xffff
	l.andi	r11, r7, 0xffff
	l.bf	.L1129
	l.srli	r13, r17, 10
	l.sfgeu	r8, r13
	l.sub	r15, r8, r13
	l.cmov	r21, r12, r0
	l.srli	r27, r4, 11
	l.cmov	r23, r15, r19
	l.or	r25, r11, r21
	l.sfeqi	r27, 0
	l.andi	r8, r23, 0xffff
	l.andi	r11, r25, 0xffff
	l.bf	.L1129
	l.srli	r29, r17, 11
	l.sfgeu	r8, r29
	l.cmov	r31, r27, r0
	l.sub	r8, r8, r29
	l.srli	r3, r4, 12
	l.cmov	r6, r8, r23
	l.or	r11, r11, r31
	l.sfeqi	r3, 0
	l.andi	r8, r6, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1129
	l.srli	r19, r17, 12
	l.sfgeu	r8, r19
	l.sub	r7, r8, r19
	l.cmov	r12, r3, r0
	l.srli	r21, r4, 13
	l.cmov	r13, r7, r6
	l.or	r15, r11, r12
	l.sfeqi	r21, 0
	l.andi	r8, r13, 0xffff
	l.andi	r11, r15, 0xffff
	l.bf	.L1129
	l.srli	r23, r17, 13
	l.sfgeu	r8, r23
	l.sub	r25, r8, r23
	l.cmov	r27, r21, r0
	l.srli	r29, r4, 14
	l.cmov	r31, r25, r13
	l.or	r6, r11, r27
	l.sfeqi	r29, 0
	l.andi	r8, r31, 0xffff
	l.andi	r11, r6, 0xffff
	l.bf	.L1129
	l.srli	r3, r17, 14
	l.sfgeu	r8, r3
	l.cmov	r19, r29, r0
	l.sub	r8, r8, r3
	l.cmov	r7, r8, r31
	l.or	r11, r11, r19
	l.sfeqi	r4, 16384
	l.andi	r8, r7, 0xffff
	l.andi	r11, r11, 0xffff
	l.bf	.L1129
	l.srli	r17, r17, 15
	l.sfgeu	r8, r17
	l.sub	r4, r8, r17
	l.ori	r12, r0, 1
	l.cmov	r13, r12, r0
	l.cmov	r15, r4, r7
	l.andi	r8, r15, 0xffff
	l.or	r11, r13, r11
	l.sfnei	r5, 0
	l.jr	r9
	l.cmov	r11, r8, r11
.L1135:
	l.j	.L1128
	l.ori	r4, r0, 4
.L1137:
	l.j	.L1128
	l.ori	r4, r0, 8
.L1139:
	l.j	.L1128
	l.ori	r4, r0, 16
.L1149:
	l.j	.L1128
	l.ori	r4, r0, 512
.L1141:
	l.j	.L1128
	l.ori	r4, r0, 32
.L1143:
	l.j	.L1128
	l.ori	r4, r0, 64
.L1145:
	l.j	.L1128
	l.ori	r4, r0, 128
.L1147:
	l.j	.L1128
	l.ori	r4, r0, 256
.L1209:
	l.sub	r6, r8, r4
	l.cmov	r3, r6, r8
	l.ori	r19, r0, 1
	l.andi	r8, r3, 0xffff
	l.j	.L1129
	l.cmov	r11, r19, r0
.L1151:
	l.j	.L1128
	l.ori	r4, r0, 1024
.L1153:
	l.j	.L1128
	l.ori	r4, r0, 2048
.L1155:
	l.j	.L1128
	l.ori	r4, r0, 4096
.L1157:
	l.j	.L1128
	l.ori	r4, r0, 8192
.L1159:
	l.j	.L1128
	l.ori	r4, r0, 16384
.L1210:
	l.ori	r4, r0, 32768
	l.j	.L1128
	l.or	r17, r4, r4
.L1160:
	l.ori	r17, r0, 32768
	l.j	.L1128
	l.or	r4, r17, r17
.L1126:
	l.sub	r7, r8, r4
	l.andi	r8, r7, 0xffff
	l.j	.L1129
	l.ori	r11, r0, 1
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r6, r0, 32
	l.bf	.L1212
	l.ori	r17, r0, 1
	l.j	.L1231
	l.sfgeu	r3, r4
.L1216:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L1214
	l.add	r17, r17, r17
	l.sfeqi	r6, 0
	l.bf	.L1233
	l.sfnei	r5, 0
.L1212:
	l.sfgesi	r4, 0
	l.bf	.L1216
	l.addi	r6, r6, -1
.L1217:
	l.movhi	r6, hi(0)
.L1218:
	l.sfgeu	r3, r4
	l.cmov	r19, r17, r0
	l.sub	r21, r3, r4
	l.srli	r17, r17, 1
	l.cmov	r3, r21, r3
	l.sfnei	r17, 0
	l.or	r6, r6, r19
	l.bf	.L1218
	l.srli	r4, r4, 1
.L1215:
	l.sfnei	r5, 0
.L1233:
	l.jr	r9
	l.cmov	r11, r3, r6
.L1214:
	l.sfeqi	r17, 0
	l.bnf	.L1217
	l.movhi	r6, hi(0)
	l.j	.L1233
	l.sfnei	r5, 0
.L1231:
	l.ori	r11, r0, 1
	l.sub	r4, r3, r4
	l.cmov	r3, r4, r3
	l.j	.L1215
	l.cmov	r6, r11, r0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.sfeqi	r17, 0
	l.bf	.L1235
	 l.nop

	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1235:
	l.sfeqi	r5, 0
	l.bf	.L1238
	l.ori	r6, r0, 32
	l.sub	r7, r6, r5
	l.srl	r8, r4, r7
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r8, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1238:
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
	l.bf	.L1241
	l.srai	r11, r3, 31
	l.addi	r5, r5, -32
	l.jr	r9
	l.sra	r12, r3, r5
.L1241:
	l.sfeqi	r5, 0
	l.bf	.L1244
	l.ori	r6, r0, 32
	l.sub	r7, r6, r5
	l.sll	r8, r3, r7
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r8, r12
.L1244:
	l.or	r11, r3, r3
	l.jr	r9
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.slli	r17, r3, 8
	l.srli	r19, r4, 24
	l.or	r5, r17, r19
	l.srli	r21, r3, 8
	l.movhi	r23, hi(16711680)
	l.srli	r12, r3, 24
	l.slli	r11, r4, 24
	l.srli	r7, r4, 8
	l.andi	r6, r21, 65280
	l.andi	r25, r5, 255
	l.or	r8, r12, r6
	l.or	r15, r11, r25
	l.and	r13, r5, r23
	l.slli	r4, r4, 8
	l.andi	r27, r7, 65280
	l.or	r29, r8, r13
	l.slli	r3, r3, 24
	l.or	r31, r15, r27
	l.and	r17, r4, r23
	l.or	r11, r31, r17
	l.jr	r9
	l.or	r12, r29, r3
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.srli	r11, r3, 24
	l.slli	r19, r3, 24
	l.srli	r17, r3, 8
	l.or	r4, r11, r19
	l.andi	r5, r17, 65280
	l.slli	r3, r3, 8
	l.movhi	r6, hi(16711680)
	l.or	r7, r4, r5
	l.and	r8, r3, r6
	l.jr	r9
	l.or	r11, r7, r8
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.ori	r17, r0, 65535
	l.sfleu	r3, r17
	l.ori	r25, r0, 1
	l.cmov	r4, r25, r0
	l.slli	r5, r4, 4
	l.ori	r6, r0, 16
	l.sub	r7, r6, r5
	l.srl	r3, r3, r7
	l.andi	r19, r3, 65280
	l.sfeqi	r19, 0
	l.ori	r23, r0, 1
	l.cmov	r8, r23, r0
	l.slli	r12, r8, 3
	l.ori	r11, r0, 8
	l.sub	r13, r11, r12
	l.srl	r15, r3, r13
	l.andi	r21, r15, 240
	l.sfeqi	r21, 0
	l.ori	r27, r0, 1
	l.cmov	r29, r27, r0
	l.slli	r31, r29, 2
	l.ori	r17, r0, 4
	l.sub	r25, r17, r31
	l.srl	r4, r15, r25
	l.andi	r6, r4, 12
	l.sfeqi	r6, 0
	l.ori	r7, r0, 1
	l.cmov	r3, r7, r0
	l.ori	r8, r0, 2
	l.add	r19, r3, r3
	l.sub	r23, r8, r19
	l.srl	r11, r4, r23
	l.add	r5, r12, r5
	l.and	r12, r11, r8
	l.sub	r15, r8, r11
	l.add	r13, r31, r5
	l.sfeqi	r12, 0
	l.cmov	r21, r15, r0
	l.add	r27, r19, r13
	l.jr	r9
	l.add	r11, r21, r27
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1252
	l.sfgts	r3, r5
	l.bf	.L1253
	l.sfltu	r4, r6
	l.bf	.L1252
	l.sfgtu	r4, r6
	l.bf	.L1253
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1252:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1253:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1258
	l.sfgts	r3, r5
	l.bf	.L1257
	l.sfltu	r4, r6
	l.bf	.L1258
	l.sfgtu	r4, r6
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1258:
	l.jr	r9
	l.xori	r11, r0, -1
.L1257:
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
	l.slli	r5, r4, 4
	l.srl	r3, r3, r5
	l.andi	r19, r3, 255
	l.sfeqi	r19, 0
	l.ori	r23, r0, 1
	l.cmov	r6, r23, r0
	l.slli	r7, r6, 3
	l.srl	r8, r3, r7
	l.andi	r11, r8, 15
	l.sfeqi	r11, 0
	l.ori	r21, r0, 1
	l.cmov	r12, r21, r0
	l.slli	r13, r12, 2
	l.srl	r15, r8, r13
	l.andi	r27, r15, 3
	l.sfeqi	r27, 0
	l.ori	r29, r0, 1
	l.cmov	r31, r29, r0
	l.add	r4, r31, r31
	l.srl	r17, r15, r4
	l.andi	r25, r17, 3
	l.xori	r3, r25, -1
	l.add	r5, r7, r5
	l.andi	r19, r3, 1
	l.srli	r23, r25, 1
	l.ori	r6, r0, 2
	l.sub	r11, r0, r19
	l.add	r7, r13, r5
	l.sub	r8, r6, r23
	l.and	r21, r11, r8
	l.add	r12, r4, r7
	l.jr	r9
	l.add	r11, r21, r12
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r17, r5, 32
	l.sfeqi	r17, 0
	l.bf	.L1261
	l.sfeqi	r5, 0
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1263:
	l.jr	r9
	 l.nop

.L1261:
	l.bf	.L1264
	l.ori	r6, r0, 32
	l.sub	r7, r6, r5
	l.sll	r8, r3, r7
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r8, r12
	l.j	.L1263
	l.or	r11, r3, r3
.L1264:
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
	l.srli	r3, r3, 16
	l.srli	r19, r12, 16
	l.mul	r5, r17, r3
	l.add	r6, r5, r19
	l.srli	r4, r4, 16
	l.mul	r8, r11, r4
	l.andi	r7, r6, 0xffff
	l.add	r13, r8, r7
	l.srli	r15, r6, 16
	l.mul	r21, r3, r4
	l.andi	r23, r12, 0xffff
	l.slli	r25, r13, 16
	l.add	r27, r15, r21
	l.srli	r29, r13, 16
	l.add	r11, r27, r29
	l.jr	r9
	l.add	r12, r23, r25
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.andi	r19, r4, 65535
	l.andi	r17, r6, 65535
	l.mul	r12, r19, r17
	l.srli	r21, r4, 16
	l.mul	r7, r17, r21
	l.srli	r23, r12, 16
	l.srli	r11, r6, 16
	l.add	r8, r7, r23
	l.mul	r13, r19, r11
	l.andi	r25, r8, 0xffff
	l.mul	r29, r21, r11
	l.add	r15, r13, r25
	l.srli	r27, r8, 16
	l.add	r31, r27, r29
	l.srli	r19, r15, 16
	l.mul	r4, r4, r5
	l.add	r17, r31, r19
	l.andi	r5, r12, 0xffff
	l.add	r21, r4, r17
	l.slli	r12, r15, 16
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
	l.srli	r17, r3, 16
	l.xor	r4, r17, r3
	l.srli	r19, r4, 8
	l.xor	r5, r19, r4
	l.srli	r6, r5, 4
	l.xor	r7, r6, r5
	l.andi	r8, r7, 15
	l.ori	r11, r0, 27030
	l.sra	r12, r11, r8
	l.jr	r9
	l.andi	r11, r12, 1
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	l.srli	r17, r3, 16
	l.xor	r4, r17, r3
	l.srli	r3, r4, 8
	l.xor	r5, r3, r4
	l.srli	r6, r5, 4
	l.xor	r7, r6, r5
	l.andi	r8, r7, 15
	l.ori	r11, r0, 27030
	l.sra	r12, r11, r8
	l.jr	r9
	l.andi	r11, r12, 1
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.slli	r17, r3, 31
	l.srli	r21, r4, 1
	l.movhi	r19, hi(1431633920)
	l.ori	r5, r19, 21845
	l.or	r6, r17, r21
	l.and	r7, r6, r5
	l.sub	r8, r4, r7
	l.srli	r11, r3, 1
	l.sfgtu	r8, r4
	l.ori	r12, r0, 1
	l.and	r4, r11, r5
	l.cmov	r13, r12, r0
	l.sub	r3, r3, r4
	l.sub	r15, r3, r13
	l.slli	r25, r15, 30
	l.srli	r23, r8, 2
	l.movhi	r27, hi(858980352)
	l.ori	r29, r27, 13107
	l.or	r31, r25, r23
	l.and	r21, r31, r29
	l.and	r17, r8, r29
	l.add	r5, r21, r17
	l.srli	r19, r15, 2
	l.sfltu	r5, r21
	l.and	r6, r19, r29
	l.and	r7, r15, r29
	l.ori	r8, r0, 1
	l.cmov	r11, r8, r0
	l.add	r4, r6, r7
	l.add	r12, r11, r4
	l.slli	r13, r12, 28
	l.srli	r3, r5, 4
	l.or	r15, r13, r3
	l.add	r25, r15, r5
	l.srli	r23, r12, 4
	l.sfltu	r25, r15
	l.ori	r27, r0, 1
	l.add	r31, r23, r12
	l.cmov	r29, r27, r0
	l.movhi	r21, hi(252641280)
	l.ori	r17, r21, 3855
	l.add	r5, r29, r31
	l.and	r19, r5, r17
	l.and	r6, r25, r17
	l.add	r7, r19, r6
	l.srli	r8, r7, 16
	l.add	r4, r8, r7
	l.srli	r11, r4, 8
	l.add	r12, r11, r4
	l.jr	r9
	l.andi	r11, r12, 127
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	l.movhi	r19, hi(1431633920)
	l.srli	r17, r3, 1
	l.ori	r4, r19, 21845
	l.and	r5, r17, r4
	l.sub	r3, r3, r5
	l.movhi	r6, hi(858980352)
	l.ori	r7, r6, 13107
	l.srli	r8, r3, 2
	l.and	r11, r8, r7
	l.and	r12, r3, r7
	l.add	r13, r11, r12
	l.srli	r15, r13, 4
	l.movhi	r21, hi(252641280)
	l.add	r23, r15, r13
	l.ori	r25, r21, 3855
	l.and	r27, r23, r25
	l.srli	r29, r27, 16
	l.add	r31, r29, r27
	l.srli	r19, r31, 8
	l.add	r17, r19, r31
	l.jr	r9
	l.andi	r11, r17, 63
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
	l.movhi	r23, ha(.LC21)
	l.or	r25, r3, r3
	l.sfeqi	r17, 0
	l.addi	r3, r23, lo(.LC21)
	l.or	r27, r4, r4
	l.or	r8, r5, r5
	l.movhi	r29, hi(1072693248)
	l.bf	.L1273
	l.lwz	r31, 4(r3)
.L1275:
	l.or	r19, r29, r29
	l.or	r21, r31, r31
	lf.mul.d	r19,r21, r19,r21, r25,r27
	l.or	r29, r19, r19
	l.or	r31, r21, r21
.L1273:
	l.srli	r19, r8, 31
	l.add	r4, r19, r8
	l.srai	r8, r4, 1
	l.sfeqi	r8, 0
	l.bf	.L1274
	l.andi	r21, r8, 1
	l.srli	r6, r8, 31
	l.sfnei	r21, 0
	lf.mul.d	r25,r27, r25,r27, r25,r27
	l.bf	.L1275
	l.add	r7, r6, r8
	l.srai	r8, r7, 1
.L1280:
	l.andi	r21, r8, 1
	l.srli	r6, r8, 31
	l.sfnei	r21, 0
	lf.mul.d	r25,r27, r25,r27, r25,r27
	l.bf	.L1275
	l.add	r7, r6, r8
	l.j	.L1280
	l.srai	r8, r7, 1
.L1274:
	l.sfgesi	r5, 0
	l.bf	.L1281
	l.or	r11, r29, r29
	l.or	r21, r29, r29
	l.or	r23, r31, r31
	l.movhi	r17, hi(1072693248)
	l.lwz	r19, 4(r3)
	lf.div.d	r17,r19, r17,r19, r21,r23
	l.or	r29, r17, r17
	l.or	r31, r19, r19
	l.or	r11, r29, r29
.L1281:
	l.jr	r9
	l.or	r12, r31, r31
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.andi	r17, r4, 1
	l.sfeqi	r17, 0
	l.or	r8, r4, r4
	l.bf	.L1283
	l.movhi	r11, hi(1065353216)
.L1285:
	lf.mul.s	r11, r11, r3
.L1283:
	l.srli	r19, r8, 31
	l.add	r5, r19, r8
	l.srai	r8, r5, 1
	l.sfeqi	r8, 0
	l.bf	.L1284
	l.andi	r21, r8, 1
	l.srli	r6, r8, 31
	l.sfnei	r21, 0
	lf.mul.s	r3, r3, r3
	l.bf	.L1285
	l.add	r7, r6, r8
	l.srai	r8, r7, 1
.L1291:
	l.andi	r21, r8, 1
	l.srli	r6, r8, 31
	l.sfnei	r21, 0
	lf.mul.s	r3, r3, r3
	l.bf	.L1285
	l.add	r7, r6, r8
	l.j	.L1291
	l.srai	r8, r7, 1
.L1284:
	l.sfgesi	r4, 0
	l.bnf	.L1290
	l.movhi	r3, hi(1065353216)
	l.jr	r9
	 l.nop

.L1290:
	lf.div.s	r11, r3, r11
	l.jr	r9
	 l.nop

	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.sfltu	r3, r5
	l.bf	.L1296
	l.sfgtu	r3, r5
	l.bf	.L1297
	l.sfltu	r4, r6
	l.bf	.L1296
	l.sfgtu	r4, r6
	l.bf	.L1297
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1296:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1297:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1302
	l.sfgtu	r3, r5
	l.bf	.L1301
	l.sfltu	r4, r6
	l.bf	.L1302
	l.sfgtu	r4, r6
	l.ori	r11, r0, 1
	l.jr	r9
	l.cmov	r11, r11, r0
.L1302:
	l.jr	r9
	l.xori	r11, r0, -1
.L1301:
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
