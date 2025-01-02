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
	l.ori	r19, r0, 6
	l.addi	r17, r5, -1
	l.sfleu	r17, r19
	l.bf	.L5
	l.addi	r19, r4, 1
	l.or	r17, r4, r3
	l.movhi	r19, hi(0)
	l.andi	r17, r17, 3
	l.sfne	r17, r19
	l.bf	.L5
	l.addi	r19, r4, 1
	l.sub	r17, r3, r19
	l.ori	r21, r0, 2
	l.sfleu	r17, r21
	l.bf	.L5
	l.srl	r23, r5, r21
	l.sll	r23, r23, r21
	l.or	r17, r3, r3
	l.add	r21, r4, r23
.L6:
	l.lwz	r19, 0(r4)
	l.addi	r4, r4, 4
	l.sw	0(r17), r19
	l.sfne	r21, r4
	l.bf	.L6
	l.addi	r17, r17, 4
	l.sfeq	r5, r23
	l.add	r17, r11, r23
	l.bf	.L3
	l.sub	r19, r5, r23
	l.lbs	r23, 0(r21)
	l.sb	0(r17), r23
	l.ori	r23, r0, 1
	l.sfeq	r19, r23
	l.bf	.L3
	 l.nop

	l.lbs	r23, 1(r21)
	l.sb	1(r17), r23
	l.ori	r23, r0, 2
	l.sfeq	r19, r23
	l.bf	.L3
	 l.nop

	l.lbs	r19, 2(r21)
	l.jr	r9
	l.sb	2(r17), r19
.L5:
	l.add	r5, r11, r5
	l.j	.L9
	l.or	r17, r11, r11
.L30:
	l.addi	r19, r19, 1
.L9:
	l.addi	r17, r17, 1
	l.lbs	r21, -1(r19)
	l.sfne	r17, r5
	l.bf	.L30
	l.sb	-1(r17), r21
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
	l.j	.L41
	l.movhi	r11, hi(0)
.L35:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L34
	l.addi	r3, r3, 1
.L32:
	l.lbz	r17, 0(r4)
	l.sb	0(r3), r17
	l.sfne	r17, r5
	l.addi	r6, r6, -1
	l.bf	.L35
	l.addi	r4, r4, 1
	l.jr	r9
	l.addi	r11, r3, 1
.L34:
	l.movhi	r11, hi(0)
.L41:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L43
	l.andi	r4, r4, 0xff
	l.j	.L48
	l.movhi	r11, hi(0)
.L45:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L46
	l.addi	r3, r3, 1
.L43:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L45
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L46:
	l.movhi	r11, hi(0)
.L48:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L50
	l.movhi	r11, hi(0)
	l.j	.L57
	 l.nop

.L52:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L54
	l.movhi	r11, hi(0)
.L50:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r11, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.bf	.L52
	l.addi	r4, r4, 1
	l.jr	r9
	l.sub	r11, r11, r17
.L54:
.L57:
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
	l.bf	.L59
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L59:
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
	l.j	.L65
	l.addi	r3, r3, -1
.L67:
	l.lbz	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L64
	 l.nop

.L65:
	l.sfne	r5, r3
	l.or	r11, r5, r5
	l.bf	.L67
	l.addi	r5, r5, -1
	l.movhi	r11, hi(0)
.L64:
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
	l.bnf	.L71
	l.or	r16, r3, r3
	l.jal	memset
	l.andi	r4, r4, 0xff
.L71:
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
	l.bf	.L74
	l.or	r11, r3, r3
.L75:
	l.lbs	r17, 1(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.sb	1(r11), r17
	l.addi	r11, r11, 1
	l.bf	.L75
	l.addi	r4, r4, 1
.L74:
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
	l.bf	.L81
	l.andi	r4, r4, 0xff
	l.j	.L80
	 l.nop

.L83:
	l.lbs	r17, 1(r11)
	l.sfeq	r17, r19
	l.bf	.L80
	l.addi	r11, r11, 1
.L81:
	l.andi	r17, r17, 0xff
	l.sfne	r17, r4
	l.bf	.L83
	l.movhi	r19, hi(0)
.L80:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.j	.L89
	l.or	r11, r3, r3
.L92:
	l.sfne	r17, r19
	l.bnf	.L91
	l.addi	r11, r11, 1
.L89:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bnf	.L92
	l.movhi	r19, hi(0)
	l.jr	r9
	 l.nop

.L91:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L96:
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfeq	r17, r11
	l.bnf	.L101
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.addi	r3, r3, 1
	l.bf	.L96
	l.addi	r4, r4, 1
	l.movhi	r17, hi(0)
.L95:
	l.andi	r11, r11, 0xff
	l.jr	r9
	l.sub	r11, r17, r11
.L101:
	l.j	.L95
	l.andi	r17, r17, 0xff
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L105
	 l.nop

	l.or	r11, r3, r3
.L104:
	l.lbs	r17, 1(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L104
	l.addi	r11, r11, 1
	l.jr	r9
	l.sub	r11, r11, r3
.L105:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L115
	 l.nop

	l.lbz	r11, 0(r3)
	l.sfne	r11, r17
	l.bnf	.L117
	l.addi	r5, r5, -1
	l.j	.L111
	l.add	r19, r3, r5
.L119:
	l.sfne	r3, r19
	l.bnf	.L110
	l.addi	r3, r3, 1
	l.sfeq	r17, r11
	l.bnf	.L120
	l.sub	r11, r11, r17
	l.lbz	r11, 0(r3)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L118
	 l.nop

	l.or	r4, r21, r21
.L111:
	l.movhi	r21, hi(0)
	l.lbz	r17, 0(r4)
	l.sfne	r17, r21
	l.bf	.L119
	l.addi	r21, r4, 1
.L110:
	l.sub	r11, r11, r17
.L107:
.L120:
	l.jr	r9
	 l.nop

.L115:
	l.jr	r9
	l.movhi	r11, hi(0)
.L118:
	l.lbz	r17, 1(r4)
	l.movhi	r11, hi(0)
	l.j	.L107
	l.sub	r11, r11, r17
.L117:
	l.lbz	r17, 0(r4)
	l.movhi	r11, hi(0)
	l.j	.L107
	l.sub	r11, r11, r17
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L121
	l.srl	r5, r5, r17
	l.add	r5, r5, r5
	l.add	r17, r3, r5
.L123:
	l.lbz	r21, 1(r3)
	l.lbz	r19, 0(r3)
	l.addi	r3, r3, 2
	l.sb	0(r4), r21
	l.sb	1(r4), r19
	l.sfne	r3, r17
	l.bf	.L123
	l.addi	r4, r4, 2
.L121:
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
	l.bf	.L126
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L126:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L128
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L128:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L131
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L129
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L129:
	l.jr	r9
	 l.nop

.L131:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L133
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L133
	 l.nop

	l.movhi	r11, hi(0)
.L133:
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
	l.bf	.L138
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L138:
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
	l.bf	.L140
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L140:
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
	l.bf	.L142
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L142:
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
	l.bf	.L144
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L144:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L147
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bnf	.L149
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L149:
	l.jr	r9
	l.movhi	r11, hi(0)
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
	l.bf	.L151
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L151:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L152
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bnf	.L158
	l.addi	r17, r3, -8232
.L152:
	l.jr	r9
	 l.nop

.L158:
	l.sfleu	r17, r11
	l.bf	.L152
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L152
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
	l.bf	.L160
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L160:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L170
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L166
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L166
	l.movhi	r17, hi(-65536)
	l.ori	r19, r17, 8192
	l.add	r19, r3, r19
	l.ori	r21, r0, 8184
	l.sfleu	r19, r21
	l.bf	.L166
	l.ori	r17, r17, 4
	l.movhi	r19, hi(1048576)
	l.add	r17, r3, r17
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L167
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bnf	.L167
	l.ori	r11, r0, 1
.L161:
	l.jr	r9
	 l.nop

.L166:
	l.jr	r9
	l.ori	r11, r0, 1
.L170:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L161
	l.ori	r11, r0, 1
.L167:
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
	l.bf	.L171
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bnf	.L175
	 l.nop

.L171:
	l.jr	r9
	 l.nop

.L175:
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
	l.bf	.L180
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L181
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L186
	l.or	r5, r22, r22
	l.movhi	r17, ha(.LC0+4)
	l.movhi	r11, hi(0)
	l.lwz	r12, lo(.LC0+4)(r17)
.L177:
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
.L180:
	l.or	r11, r18, r18
	l.j	.L177
	l.or	r12, r16, r16
.L181:
	l.or	r11, r22, r22
	l.j	.L177
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
	l.bf	.L190
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L191
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L196
	l.or	r4, r18, r18
	l.movhi	r11, hi(0)
.L187:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L196:
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.lwz	r9, 12(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L190:
	l.j	.L187
	l.or	r11, r16, r16
.L191:
	l.j	.L187
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
	l.bf	.L205
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L204
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L199
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L208
	l.or	r11, r22, r22
.L205:
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
.L199:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L200
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L207:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L204:
	l.or	r11, r22, r22
.L208:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L200:
	l.or	r16, r22, r22
	l.j	.L207
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
	l.bf	.L215
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L216
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L211
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L209
	l.or	r11, r18, r18
.L215:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L211:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L209
	l.or	r11, r16, r16
.L216:
	l.or	r11, r18, r18
.L209:
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
	l.bf	.L229
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L228
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L223
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L232
	l.or	r11, r22, r22
.L229:
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
.L223:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L224
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L231:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L228:
	l.or	r11, r22, r22
.L232:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L224:
	l.or	r16, r22, r22
	l.j	.L231
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
	l.bf	.L239
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L241
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L235
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L244
	l.or	r11, r16, r16
.L239:
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
.L235:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L243
	 l.nop

.L241:
	l.or	r11, r16, r16
.L244:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L243:
	l.or	r16, r20, r20
	l.j	.L241
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
	l.bf	.L251
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L252
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L247
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L245
	l.or	r11, r16, r16
.L252:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L247:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L245
	l.or	r11, r18, r18
.L251:
	l.or	r11, r16, r16
.L245:
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
	l.bf	.L263
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L265
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L259
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L268
	l.or	r11, r16, r16
.L263:
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
.L259:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L267
	 l.nop

.L265:
	l.or	r11, r16, r16
.L268:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L267:
	l.or	r16, r20, r20
	l.j	.L265
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
	l.bf	.L270
	l.or	r19, r11, r11
	l.movhi	r21, ha(.LANCHOR1)
	l.addi	r21, r21, lo(.LANCHOR1)
.L271:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbz	r17, 0(r17)
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.sb	0(r19), r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L271
	l.addi	r19, r19, 1
.L270:
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
	l.bf	.L276
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L276:
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
	l.bnf	.L285
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r17
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L279
	 l.nop

	l.sw	4(r17), r3
.L279:
	l.jr	r9
	 l.nop

.L285:
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
	l.bf	.L295
	l.movhi	r21, hi(0)
	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L295:
	l.lwz	r19, 4(r3)
	l.sfeq	r19, r21
	l.bf	.L286
	 l.nop

	l.sw	0(r19), r17
.L286:
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
	l.bf	.L297
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L299
	l.movhi	r18, hi(0)
.L312:
	l.sfne	r22, r18
	l.bnf	.L314
	l.addi	r17, r22, 1
.L299:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L312
	l.add	r16, r16, r20
.L296:
	l.or	r11, r14, r14
.L313:
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
.L297:
	l.addi	r17, r22, 1
.L314:
	l.sw	0(r28), r17
	l.movhi	r17, hi(0)
	l.mul	r22, r20, r22
	l.sfeq	r20, r17
	l.bf	.L296
	l.add	r14, r30, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L313
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
	l.bf	.L316
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L318
	l.movhi	r18, hi(0)
.L327:
	l.sfne	r28, r18
	l.bnf	.L315
	l.movhi	r26, hi(0)
.L318:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r26, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L327
	l.add	r16, r16, r22
.L315:
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
.L316:
	l.j	.L315
	l.movhi	r26, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L329
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L329:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L337:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L331
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L331
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L332
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L347
	l.addi	r21, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bf	.L342
	l.addi	r3, r3, 1
	l.ori	r27, r0, 1
.L335:
	l.movhi	r19, hi(0)
	l.ori	r25, r0, 9
.L339:
	l.ori	r17, r0, 2
	l.sll	r17, r19, r17
	l.add	r11, r17, r19
	l.add	r11, r11, r11
	l.lbs	r17, 1(r3)
	l.or	r23, r21, r21
	l.sub	r19, r11, r21
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bf	.L339
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bf	.L330
	 l.nop

	l.sub	r19, r23, r11
.L330:
	l.jr	r9
	l.or	r11, r19, r19
.L331:
	l.j	.L337
	l.addi	r3, r3, 1
.L347:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bf	.L335
	l.movhi	r27, hi(0)
.L342:
	l.movhi	r19, hi(0)
.L348:
	l.jr	r9
	l.or	r11, r19, r19
.L332:
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bf	.L335
	l.movhi	r27, hi(0)
	l.j	.L348
	l.movhi	r19, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L354:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L350
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L350
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L351
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L366
	l.addi	r21, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bnf	.L361
	l.ori	r27, r0, 1
.L355:
	l.movhi	r19, hi(0)
	l.ori	r25, r0, 9
.L358:
	l.ori	r17, r0, 2
	l.sll	r17, r19, r17
	l.add	r11, r17, r19
	l.add	r11, r11, r11
	l.lbs	r17, 1(r3)
	l.or	r23, r21, r21
	l.sub	r19, r11, r21
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bf	.L358
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bf	.L349
	 l.nop

	l.sub	r19, r23, r11
.L349:
	l.jr	r9
	l.or	r11, r19, r19
.L350:
	l.j	.L354
	l.addi	r3, r3, 1
.L366:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bnf	.L367
	l.movhi	r19, hi(0)
.L362:
	l.j	.L355
	l.movhi	r27, hi(0)
.L351:
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bnf	.L362
	l.addi	r3, r3, 1
.L361:
	l.movhi	r19, hi(0)
.L367:
	l.jr	r9
	l.or	r11, r19, r19
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L375:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L369
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L369
	 l.nop

	l.ori	r17, r0, 43
	l.sfeq	r19, r17
	l.bf	.L370
	l.ori	r17, r0, 45
	l.sfeq	r19, r17
	l.bnf	.L389
	l.addi	r21, r19, -48
	l.lbs	r19, 1(r3)
	l.addi	r21, r19, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bf	.L380
	l.addi	r3, r3, 1
	l.ori	r13, r0, 1
.L373:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.ori	r29, r0, 9
.L377:
	l.ori	r19, r0, 2
	l.sll	r17, r12, r19
	l.add	r23, r17, r12
	l.ori	r25, r0, 30
	l.srl	r12, r12, r25
	l.sll	r19, r11, r19
	l.sfltu	r23, r17
	l.or	r19, r12, r19
	l.add	r25, r23, r23
	l.bf	.L386
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L386:
	l.add	r19, r19, r11
	l.sfltu	r25, r23
	l.add	r11, r17, r19
	l.sub	r12, r25, r21
	l.bf	.L387
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L387:
	l.ori	r19, r0, 31
	l.add	r11, r11, r11
	l.sfgtu	r12, r25
	l.sra	r23, r21, r19
	l.add	r17, r17, r11
	l.lbs	r19, 1(r3)
	l.or	r31, r21, r21
	l.bf	.L388
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L388:
	l.addi	r21, r19, -48
	l.sub	r11, r17, r23
	l.sfleu	r21, r29
	l.addi	r3, r3, 1
	l.bf	.L377
	l.sub	r11, r11, r27
	l.movhi	r19, hi(0)
	l.sfne	r13, r19
	l.bf	.L368
	 l.nop

	l.sub	r12, r31, r25
	l.sfgtu	r12, r31
	l.bf	.L385
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L385:
	l.sub	r23, r23, r17
	l.sub	r11, r23, r11
.L368:
	l.jr	r9
	 l.nop

.L369:
	l.j	.L375
	l.addi	r3, r3, 1
.L389:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bf	.L373
	l.movhi	r13, hi(0)
.L380:
	l.movhi	r11, hi(0)
.L390:
	l.jr	r9
	l.movhi	r12, hi(0)
.L370:
	l.lbs	r19, 1(r3)
	l.addi	r21, r19, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bf	.L373
	l.movhi	r13, hi(0)
	l.j	.L390
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
	l.bf	.L392
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.j	.L395
	l.or	r24, r7, r7
.L405:
	l.sfeq	r11, r17
	l.bf	.L391
	l.sub	r16, r16, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bnf	.L392
	l.add	r22, r18, r20
.L395:
	l.ori	r17, r0, 1
.L406:
	l.srl	r28, r16, r17
	l.mul	r18, r28, r20
	l.add	r18, r22, r18
	l.or	r4, r18, r18
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L405
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bf	.L406
	l.ori	r17, r0, 1
.L392:
	l.movhi	r18, hi(0)
.L391:
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
	l.or	r28, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.bnf	.L412
	l.or	r24, r8, r8
.L408:
	l.ori	r14, r0, 1
.L422:
	l.sra	r30, r16, r14
	l.mul	r18, r30, r20
	l.add	r18, r22, r18
	l.or	r5, r24, r24
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.addi	r16, r16, -1
	l.sfeq	r11, r17
	l.bf	.L407
	l.sra	r16, r16, r14
	l.sfles	r11, r17
	l.bf	.L421
	l.sfne	r16, r17
	l.bf	.L408
	l.add	r22, r18, r20
.L412:
	l.movhi	r18, hi(0)
.L407:
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
.L421:
	l.sfeq	r30, r17
	l.bf	.L412
	l.or	r16, r30, r30
	l.j	.L422
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
	l.bf	.L425
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.bnf	.L428
	l.ori	r11, r0, 1
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L425:
	l.jr	r9
	 l.nop

.L428:
	l.movhi	r11, hi(0)
	l.sub	r3, r0, r3
	l.j	.L425
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
	l.bf	.L432
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L432:
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
	l.bf	.L435
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.bnf	.L438
	l.ori	r11, r0, 1
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L435:
	l.jr	r9
	 l.nop

.L438:
	l.movhi	r11, hi(0)
	l.sub	r3, r0, r3
	l.j	.L435
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
	l.bf	.L448
	l.sfne	r4, r17
	l.j	.L447
	l.movhi	r11, hi(0)
.L444:
	l.lwz	r17, 4(r3)
	l.sfeq	r17, r19
	l.bf	.L445
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L448:
	l.bf	.L444
	l.movhi	r19, hi(0)
	l.jr	r9
	l.or	r11, r3, r3
.L445:
	l.movhi	r11, hi(0)
.L447:
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
	l.bf	.L459
	l.movhi	r21, hi(0)
	l.j	.L458
	l.sfltu	r17, r19
.L452:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L451
	l.movhi	r21, hi(0)
.L459:
	l.sfne	r17, r21
	l.addi	r3, r3, 4
	l.bf	.L452
	l.addi	r4, r4, 4
.L451:
	l.sfltu	r17, r19
.L458:
	l.bf	.L449
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.bnf	.L457
	l.ori	r11, r0, 1
.L449:
	l.jr	r9
	 l.nop

.L457:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L461:
	l.addi	r17, r17, 4
	l.movhi	r21, hi(0)
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfne	r19, r21
	l.bf	.L461
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
	l.bf	.L463
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L470:
	l.lwz	r17, 4(r11)
	l.sfne	r17, r19
	l.bf	.L470
	l.addi	r11, r11, 4
	l.sub	r11, r11, r3
	l.ori	r17, r0, 2
	l.sra	r11, r11, r17
.L463:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L472
	l.movhi	r11, hi(0)
	l.j	.L482
	 l.nop

.L480:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L474
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.addi	r3, r3, 4
	l.bf	.L477
	l.addi	r4, r4, 4
.L472:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L480
	l.addi	r5, r5, -1
.L474:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bnf	.L481
	l.sfgtu	r19, r17
	l.bnf	.L477
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L481:
	l.jr	r9
	l.xori	r11, r0, -1
.L477:
	l.movhi	r11, hi(0)
.L482:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L484
	l.movhi	r11, hi(0)
	l.j	.L489
	 l.nop

.L486:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L487
	l.addi	r3, r3, 4
.L484:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L486
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L487:
	l.movhi	r11, hi(0)
.L489:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L491
	l.movhi	r11, hi(0)
	l.j	.L501
	 l.nop

.L493:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L501
	l.movhi	r11, hi(0)
.L491:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L493
	l.addi	r4, r4, 4
	l.sfgeu	r19, r17
	l.bnf	.L500
	l.sfgtu	r19, r17
	l.bnf	.L496
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L496:
	l.movhi	r11, hi(0)
.L501:
	l.jr	r9
	 l.nop

.L500:
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
	l.bf	.L503
	l.or	r16, r3, r3
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
.L503:
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
	l.bnf	.L516
	l.or	r11, r3, r3
	l.ori	r19, r0, 2
	l.sll	r19, r5, r19
	l.sub	r21, r3, r4
	l.sfltu	r21, r19
	l.addi	r17, r5, -1
	l.bnf	.L522
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L516
	 l.nop

	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
.L513:
	l.addi	r17, r17, -4
	l.lwz	r23, 0(r19)
	l.sfne	r4, r19
	l.sw	4(r17), r23
	l.bf	.L513
	l.addi	r19, r19, -4
.L516:
	l.jr	r9
	 l.nop

.L522:
	l.sfne	r5, r19
	l.xori	r23, r0, -1
	l.bnf	.L516
	l.or	r19, r3, r3
.L511:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.lwz	r21, 0(r4)
	l.sfne	r17, r23
	l.sw	-4(r19), r21
	l.bf	.L511
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
	l.bf	.L524
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L525:
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.sw	0(r19), r4
	l.bf	.L525
	l.addi	r19, r19, 4
.L524:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L531
	l.sfeq	r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.add	r17, r3, r5
	l.bf	.L530
	l.add	r4, r4, r5
.L533:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L533
	l.sb	0(r4), r19
.L530:
	l.jr	r9
	 l.nop

.L531:
	l.bf	.L530
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L530
	 l.nop

	l.addi	r17, r5, -1
	l.ori	r19, r0, 6
	l.sfleu	r17, r19
	l.bf	.L534
	l.addi	r17, r3, 1
	l.or	r17, r4, r3
	l.andi	r17, r17, 3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L534
	l.addi	r17, r3, 1
	l.sub	r19, r4, r17
	l.ori	r21, r0, 2
	l.sfleu	r19, r21
	l.bf	.L534
	l.srl	r23, r5, r21
	l.sll	r23, r23, r21
	l.or	r17, r4, r4
	l.add	r21, r3, r23
.L535:
	l.lwz	r19, 0(r3)
	l.addi	r3, r3, 4
	l.sw	0(r17), r19
	l.sfne	r21, r3
	l.bf	.L535
	l.addi	r17, r17, 4
	l.sfeq	r5, r23
	l.add	r4, r4, r23
	l.bf	.L530
	l.sub	r17, r5, r23
	l.lbs	r19, 0(r21)
	l.sb	0(r4), r19
	l.ori	r19, r0, 1
	l.sfeq	r17, r19
	l.bf	.L530
	 l.nop

	l.lbs	r19, 1(r21)
	l.sb	1(r4), r19
	l.ori	r19, r0, 2
	l.sfeq	r17, r19
	l.bf	.L530
	 l.nop

	l.lbs	r17, 2(r21)
	l.jr	r9
	l.sb	2(r4), r17
.L534:
	l.j	.L538
	l.add	r3, r3, r5
.L558:
	l.addi	r17, r17, 1
.L538:
	l.lbs	r19, -1(r17)
	l.sfne	r17, r3
	l.sb	0(r4), r19
	l.bf	.L558
	l.addi	r4, r4, 1
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
	l.bnf	.L560
	l.sll	r12, r4, r5
	l.or	r11, r23, r23
.L560:
	l.bnf	.L561
	 l.nop

	l.movhi	r12, hi(0)
.L561:
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
	l.bnf	.L562
	l.srl	r3, r3, r5
	l.or	r4, r19, r19
.L562:
	l.bnf	.L563
	 l.nop

	l.movhi	r3, hi(0)
.L563:
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
	l.bnf	.L565
	l.srl	r11, r3, r5
	l.or	r12, r23, r23
.L565:
	l.bnf	.L566
	 l.nop

	l.movhi	r11, hi(0)
.L566:
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
	l.bnf	.L567
	l.sll	r4, r4, r5
	l.or	r3, r19, r19
.L567:
	l.bnf	.L568
	 l.nop

	l.movhi	r4, hi(0)
.L568:
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
	l.j	.L583
	l.ori	r19, r0, 32
.L586:
	l.sfne	r11, r19
	l.bnf	.L585
	 l.nop

.L583:
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L586
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L585:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L590
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L587
	 l.nop

	l.ori	r11, r0, 1
.L589:
	l.ori	r17, r0, 1
	l.sra	r3, r3, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L589
	l.addi	r11, r11, 1
.L587:
	l.jr	r9
	 l.nop

.L590:
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
	l.bf	.L593
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.or	r3, r16, r16
	l.jal	__gtsf2
	l.lwz	r4, lo(.LC3)(r17)
	l.sfgts	r11, r18
	l.bnf	.L599
	l.ori	r11, r0, 1
.L593:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L599:
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
	l.bf	.L600
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC5)(r17)
	l.jal	__gtdf2
	l.lwz	r6, 4(r19)
	l.sfgts	r11, r20
	l.bnf	.L606
	l.ori	r11, r0, 1
.L600:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L606:
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
	l.bf	.L607
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC7)(r17)
	l.jal	__gtdf2
	l.lwz	r6, 4(r19)
	l.sfgts	r11, r20
	l.bnf	.L613
	l.ori	r11, r0, 1
.L607:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L613:
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
	l.bf	.L617
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L617
	l.sfges	r16, r18
	l.bf	.L619
	l.movhi	r18, hi(1073741824)
	l.movhi	r18, hi(1056964608)
.L619:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L632
	l.ori	r17, r0, 31
.L621:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.ori	r17, r0, 31
.L632:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L633
	l.or	r11, r20, r20
.L622:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L621
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L622
	l.sra	r16, r17, r19
.L617:
	l.or	r11, r20, r20
.L633:
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
	l.bf	.L635
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
	l.bnf	.L635
	l.sfges	r16, r22
	l.bnf	.L650
	l.movhi	r17, ha(.LC10+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC10+4)(r17)
.L637:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L651
	l.ori	r17, r0, 31
.L639:
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
.L651:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L652
	l.or	r11, r20, r20
.L640:
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
	l.bf	.L639
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L640
	l.sra	r16, r17, r19
.L635:
	l.or	r11, r20, r20
.L652:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L650:
	l.movhi	r17, ha(.LC11+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L637
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
	l.bf	.L654
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
	l.bnf	.L654
	l.sfges	r16, r22
	l.bnf	.L669
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC13+4)(r17)
.L656:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L670
	l.ori	r17, r0, 31
.L658:
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
.L670:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L671
	l.or	r11, r20, r20
.L659:
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
	l.bf	.L658
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L659
	l.sra	r16, r17, r19
.L654:
	l.or	r11, r20, r20
.L671:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L669:
	l.movhi	r17, ha(.LC12+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L656
	l.lwz	r6, lo(.LC12+4)(r17)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L673
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.ori	r21, r0, 3
	l.sfleu	r17, r21
	l.bf	.L674
	 l.nop

	l.or	r17, r3, r4
	l.and	r17, r17, r21
	l.sfne	r17, r19
	l.bf	.L674
	 l.nop

	l.ori	r17, r0, 2
	l.srl	r25, r5, r17
	l.sll	r25, r25, r17
	l.add	r23, r4, r25
	l.or	r17, r3, r3
.L675:
	l.lwz	r21, 0(r17)
	l.lwz	r19, 0(r4)
	l.addi	r4, r4, 4
	l.xor	r19, r19, r21
	l.sw	0(r17), r19
	l.sfne	r23, r4
	l.bf	.L675
	l.addi	r17, r17, 4
	l.sfeq	r5, r25
	l.add	r17, r11, r25
	l.bf	.L673
	l.sub	r21, r5, r25
	l.lbz	r19, 0(r17)
	l.lbz	r25, 0(r23)
	l.xor	r19, r19, r25
	l.sb	0(r17), r19
	l.ori	r19, r0, 1
	l.sfeq	r21, r19
	l.bf	.L673
	 l.nop

	l.lbz	r25, 1(r17)
	l.lbz	r19, 1(r23)
	l.xor	r19, r19, r25
	l.sb	1(r17), r19
	l.ori	r19, r0, 2
	l.sfeq	r21, r19
	l.bf	.L673
	 l.nop

	l.lbz	r21, 2(r17)
	l.lbz	r19, 2(r23)
	l.xor	r19, r19, r21
	l.sb	2(r17), r19
.L673:
	l.jr	r9
	 l.nop

.L674:
	l.add	r5, r4, r5
	l.or	r17, r11, r11
.L677:
	l.lbz	r21, 0(r17)
	l.lbz	r19, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.sb	0(r17), r19
	l.bf	.L677
	l.addi	r17, r17, 1
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
	l.bf	.L698
	l.or	r17, r3, r3
.L686:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L686
	l.addi	r17, r17, 1
	l.movhi	r19, hi(0)
.L698:
	l.sfne	r5, r19
	l.bf	.L687
	 l.nop

	l.j	.L697
	l.sb	0(r17), r0
.L689:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L688
	 l.nop

.L687:
	l.lbs	r19, 0(r4)
	l.movhi	r21, hi(0)
	l.sb	0(r17), r19
	l.sfne	r19, r21
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L689
	l.addi	r17, r17, 1
	l.jr	r9
	 l.nop

.L688:
	l.sb	0(r17), r0
.L697:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L699
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L707:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L702
	 l.nop

.L699:
	l.jr	r9
	 l.nop

.L702:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L707
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
	l.bnf	.L713
	l.or	r11, r3, r3
.L709:
	l.j	.L712
	l.or	r17, r4, r4
.L711:
	l.sfeq	r19, r21
	l.bf	.L710
	 l.nop

.L712:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L711
	l.addi	r17, r17, 1
	l.lbs	r21, 1(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L709
	l.addi	r11, r11, 1
.L713:
	l.movhi	r11, hi(0)
.L710:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L717:
	l.lbs	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L720
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L720:
	l.sfne	r17, r19
	l.bf	.L717
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
	l.bf	.L732
	l.or	r17, r4, r4
.L723:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L723
	l.addi	r17, r17, 1
	l.sfeq	r17, r4
	l.bf	.L732
	l.sub	r29, r17, r4
	l.andi	r31, r25, 0xff
	l.j	.L729
	l.addi	r29, r29, -1
.L742:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L741
	l.addi	r3, r3, 1
.L729:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r25
	l.bnf	.L742
	l.or	r21, r31, r31
	l.add	r27, r3, r29
	l.or	r19, r4, r4
	l.j	.L725
	l.or	r17, r3, r3
.L743:
	l.bf	.L726
	l.addi	r17, r17, 1
	l.sfeq	r23, r21
	l.bnf	.L726
	 l.nop

	l.lbz	r21, 0(r17)
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L726
	l.addi	r19, r19, 1
.L725:
	l.lbz	r23, 0(r19)
	l.movhi	r13, hi(0)
	l.sfeq	r23, r13
	l.bnf	.L743
	l.sfeq	r17, r27
.L726:
	l.lbz	r17, 0(r19)
	l.sfeq	r17, r21
	l.bf	.L732
	 l.nop

	l.j	.L729
	l.addi	r3, r3, 1
.L741:
	l.jr	r9
	l.movhi	r11, hi(0)
.L732:
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
	l.bf	.L755
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L748
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L756
	l.movhi	r17, hi(-2147483648)
.L748:
	l.or	r11, r16, r16
.L757:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L755:
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L757
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L756:
	l.j	.L748
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L758
	l.or	r11, r3, r3
	l.sfltu	r4, r6
	l.bf	.L769
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L769
	l.addi	r6, r6, -1
	l.lbs	r31, 0(r5)
	l.j	.L764
	l.addi	r5, r5, 1
.L768:
	l.or	r11, r27, r27
.L760:
	l.sfgeu	r25, r11
	l.bnf	.L769
	 l.nop

.L764:
	l.lbs	r17, 0(r11)
	l.sfne	r17, r31
	l.bf	.L768
	l.addi	r27, r11, 1
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L758
	l.or	r19, r5, r5
.L763:
	l.or	r17, r27, r27
	l.j	.L761
	l.add	r29, r27, r6
.L762:
	l.sfeq	r17, r29
	l.bf	.L758
	 l.nop

.L761:
	l.lbz	r23, 0(r17)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r17, r17, 1
	l.bf	.L762
	l.addi	r19, r19, 1
	l.sfgtu	r27, r25
	l.bf	.L769
	 l.nop

	l.lbs	r17, 0(r27)
	l.sfne	r17, r31
	l.bf	.L760
	l.addi	r11, r27, 1
	l.or	r17, r27, r27
	l.or	r19, r5, r5
	l.or	r27, r11, r11
	l.j	.L763
	l.or	r11, r17, r17
.L769:
	l.movhi	r11, hi(0)
.L758:
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
	l.bf	.L775
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L775:
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
	l.bf	.L803
	l.movhi	r5, hi(1072693248)
	l.movhi	r22, ha(.LC18)
	l.addi	r22, r22, lo(.LC18)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.jal	__gedf2
	l.lwz	r6, 4(r22)
	l.sfges	r11, r20
	l.bnf	.L804
	l.movhi	r14, hi(0)
.L783:
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.movhi	r20, hi(0)
	l.lwz	r26, 0(r22)
	l.lwz	r24, 4(r22)
	l.lwz	r28, lo(.LC19)(r17)
	l.lwz	r22, 4(r19)
.L789:
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
	l.bf	.L789
	l.addi	r20, r20, 1
	l.movhi	r17, hi(0)
	l.sfeq	r14, r17
.L806:
	l.bf	.L796
	l.sw	0(r30), r20
	l.movhi	r17, hi(-2147483648)
	l.xor	r11, r16, r17
.L780:
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
.L804:
	l.movhi	r17, ha(.LC19)
	l.addi	r22, r17, lo(.LC19)
	l.movhi	r5, hi(1071644672)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	l.lwz	r6, 4(r22)
	l.sflts	r11, r20
	l.bnf	.L786
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bf	.L795
	l.or	r20, r16, r16
.L786:
	l.sw	0(r30), r0
	l.j	.L780
	l.or	r11, r16, r16
.L803:
	l.movhi	r17, hi(-2147483648)
	l.movhi	r5, hi(-1074790400)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.xor	r20, r16, r17
	l.movhi	r17, ha(.LC16+4)
	l.jal	__ledf2
	l.lwz	r6, lo(.LC16+4)(r17)
	l.sfles	r11, r22
	l.bnf	.L805
	l.ori	r14, r0, 1
	l.movhi	r22, ha(.LC18)
	l.or	r16, r20, r20
	l.j	.L783
	l.addi	r22, r22, lo(.LC18)
.L796:
	l.j	.L780
	l.or	r11, r16, r16
.L805:
	l.movhi	r17, ha(.LC17+4)
	l.movhi	r5, hi(-1075838976)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	l.lwz	r6, lo(.LC17+4)(r17)
	l.sfgts	r11, r22
	l.bnf	.L786
	l.movhi	r17, ha(.LC19)
	l.ori	r14, r0, 1
	l.addi	r22, r17, lo(.LC19)
.L784:
	l.or	r16, r20, r20
	l.movhi	r20, hi(0)
	l.lwz	r24, 0(r22)
	l.lwz	r22, 4(r22)
.L791:
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
	l.bf	.L791
	l.addi	r20, r20, -1
	l.j	.L806
	l.sfeq	r14, r17
.L795:
	l.j	.L784
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
	l.bf	.L807
	l.movhi	r12, hi(0)
.L810:
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
	l.bf	.L813
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L813:
	l.sfltu	r21, r6
	l.or	r4, r23, r4
	l.srl	r3, r3, r27
	l.add	r11, r11, r17
	l.bf	.L814
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L814:
	l.or	r17, r3, r4
	l.or	r12, r19, r19
	l.movhi	r19, hi(0)
	l.add	r5, r5, r5
	l.sfne	r17, r19
	l.add	r11, r25, r11
	l.add	r5, r23, r5
	l.bf	.L810
	l.or	r6, r21, r21
.L807:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bf	.L816
	l.ori	r17, r0, 1
	l.j	.L822
	l.movhi	r11, hi(0)
.L820:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L818
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L819
	 l.nop

.L816:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L820
	l.addi	r11, r11, -1
.L817:
	l.movhi	r11, hi(0)
.L822:
	l.sfltu	r3, r4
.L834:
	l.bf	.L833
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L833:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L834
	l.sfltu	r3, r4
.L819:
	l.movhi	r17, hi(0)
.L835:
	l.sfne	r5, r17
	l.bnf	.L832
	 l.nop

	l.or	r11, r3, r3
.L832:
	l.jr	r9
	 l.nop

.L818:
	l.sfeq	r17, r19
	l.bnf	.L817
	l.movhi	r11, hi(0)
	l.j	.L835
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
	l.bf	.L838
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
.L838:
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
	l.bnf	.L852
	l.xor	r4, r4, r21
.L847:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L852:
	l.sfne	r19, r17
	l.bf	.L847
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
	l.bf	.L853
	l.movhi	r11, hi(0)
.L855:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L855
	l.add	r4, r4, r4
.L853:
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.ori	r17, r0, 3
	l.xori	r27, r0, -8
	l.sfgeu	r3, r4
	l.srl	r25, r5, r17
	l.bnf	.L862
	l.and	r27, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L889
	l.movhi	r17, hi(0)
.L862:
	l.movhi	r17, hi(0)
	l.sfne	r25, r17
	l.bnf	.L890
	l.ori	r17, r0, 3
	l.sll	r25, r25, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r25, r25, r4
.L865:
	l.lwz	r23, 0(r17)
	l.lwz	r21, 4(r17)
	l.addi	r17, r17, 8
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.sfne	r17, r25
	l.bf	.L865
	l.addi	r19, r19, 8
	l.sfleu	r5, r27
	l.bf	.L858
	l.sub	r29, r5, r27
	l.addi	r17, r29, -1
	l.ori	r19, r0, 6
	l.sfleu	r17, r19
	l.bf	.L888
	l.addi	r21, r27, 1
	l.add	r19, r3, r27
	l.add	r21, r4, r21
	l.sub	r21, r19, r21
	l.ori	r23, r0, 2
	l.sfleu	r21, r23
	l.bf	.L867
	l.add	r17, r4, r27
	l.or	r21, r17, r19
	l.andi	r21, r21, 3
	l.movhi	r25, hi(0)
	l.sfne	r21, r25
	l.bf	.L867
	l.srl	r25, r29, r23
	l.sll	r25, r25, r23
	l.add	r23, r17, r25
.L868:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L868
	l.addi	r19, r19, 4
	l.sfeq	r29, r25
	l.bf	.L858
	l.add	r27, r27, r25
	l.add	r17, r4, r27
	l.lbs	r21, 0(r17)
	l.add	r19, r3, r27
	l.addi	r17, r27, 1
	l.sfleu	r5, r17
	l.bf	.L858
	l.sb	0(r19), r21
	l.add	r19, r4, r17
	l.lbs	r19, 0(r19)
	l.add	r17, r3, r17
	l.addi	r27, r27, 2
	l.sfleu	r5, r27
	l.bf	.L858
	l.sb	0(r17), r19
	l.add	r4, r4, r27
	l.lbs	r17, 0(r4)
	l.add	r3, r3, r27
	l.sb	0(r3), r17
.L858:
	l.jr	r9
	 l.nop

.L889:
	l.sfne	r5, r17
	l.xori	r21, r0, -1
	l.bnf	.L858
	l.addi	r5, r5, -1
.L863:
	l.add	r19, r4, r5
	l.add	r17, r3, r5
	l.lbs	r19, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L863
	l.sb	0(r17), r19
	l.jr	r9
	 l.nop

.L890:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L858
	 l.nop

.L888:
	l.add	r19, r3, r27
	l.add	r17, r4, r27
.L867:
	l.add	r4, r4, r5
.L870:
	l.lbs	r21, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r19), r21
	l.sfne	r17, r4
	l.bf	.L870
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
	l.bnf	.L895
	l.srl	r27, r5, r17
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L917
	l.movhi	r17, hi(0)
.L895:
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bnf	.L894
	l.addi	r17, r27, -1
	l.ori	r19, r0, 8
	l.sfleu	r17, r19
	l.bf	.L898
	l.or	r17, r4, r3
	l.andi	r17, r17, 3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L898
	l.addi	r17, r4, 2
	l.sfeq	r3, r17
	l.bf	.L898
	l.ori	r17, r0, 2
	l.srl	r25, r5, r17
	l.sll	r23, r25, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r23, r23, r4
.L899:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L899
	l.addi	r19, r19, 4
	l.add	r25, r25, r25
	l.sfeq	r27, r25
	l.bf	.L894
	l.add	r25, r25, r25
	l.add	r17, r4, r25
	l.lhs	r17, 0(r17)
	l.add	r25, r3, r25
	l.sh	0(r25), r17
.L894:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L891
	l.add	r4, r4, r5
	l.lbs	r19, -1(r4)
.L920:
	l.add	r3, r3, r5
	l.sb	-1(r3), r19
.L891:
	l.jr	r9
	 l.nop

.L917:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L891
	l.addi	r17, r5, -1
.L896:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L896
	l.sb	0(r19), r21
	l.jr	r9
	 l.nop

.L898:
	l.add	r27, r27, r27
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r27, r27, r4
.L901:
	l.lhs	r21, 0(r17)
	l.addi	r17, r17, 2
	l.sh	0(r19), r21
	l.sfne	r27, r17
	l.bf	.L901
	l.addi	r19, r19, 2
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L891
	l.add	r4, r4, r5
	l.j	.L920
	l.lbs	r19, -1(r4)
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.ori	r17, r0, 2
	l.xori	r25, r0, -4
	l.sfgeu	r3, r4
	l.srl	r23, r5, r17
	l.bnf	.L925
	l.and	r25, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L952
	l.movhi	r17, hi(0)
.L925:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bnf	.L953
	l.ori	r17, r0, 2
	l.sll	r23, r23, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r23, r23, r4
.L928:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L928
	l.addi	r19, r19, 4
	l.sfleu	r5, r25
	l.bf	.L921
	l.sub	r29, r5, r25
	l.addi	r17, r29, -1
	l.ori	r19, r0, 6
	l.sfleu	r17, r19
	l.bf	.L951
	l.addi	r21, r25, 1
	l.add	r19, r3, r25
	l.add	r21, r4, r21
	l.sub	r21, r19, r21
	l.ori	r23, r0, 2
	l.sfleu	r21, r23
	l.bf	.L930
	l.add	r17, r4, r25
	l.or	r21, r17, r19
	l.andi	r21, r21, 3
	l.movhi	r27, hi(0)
	l.sfne	r21, r27
	l.bf	.L930
	l.srl	r27, r29, r23
	l.sll	r27, r27, r23
	l.add	r23, r17, r27
.L931:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L931
	l.addi	r19, r19, 4
	l.sfeq	r29, r27
	l.bf	.L921
	l.add	r25, r25, r27
	l.add	r17, r4, r25
	l.lbs	r21, 0(r17)
	l.add	r19, r3, r25
	l.addi	r17, r25, 1
	l.sfleu	r5, r17
	l.bf	.L921
	l.sb	0(r19), r21
	l.add	r19, r4, r17
	l.lbs	r19, 0(r19)
	l.add	r17, r3, r17
	l.addi	r25, r25, 2
	l.sfleu	r5, r25
	l.bf	.L921
	l.sb	0(r17), r19
	l.add	r4, r4, r25
	l.lbs	r17, 0(r4)
	l.add	r3, r3, r25
	l.sb	0(r3), r17
.L921:
	l.jr	r9
	 l.nop

.L952:
	l.sfne	r5, r17
	l.xori	r21, r0, -1
	l.bnf	.L921
	l.addi	r5, r5, -1
.L926:
	l.add	r19, r4, r5
	l.add	r17, r3, r5
	l.lbs	r19, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L926
	l.sb	0(r17), r19
	l.jr	r9
	 l.nop

.L953:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L921
	 l.nop

.L951:
	l.add	r19, r3, r25
	l.add	r17, r4, r25
.L930:
	l.add	r4, r4, r5
.L933:
	l.lbs	r21, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r19), r21
	l.sfne	r17, r4
	l.bf	.L933
	l.addi	r19, r19, 1
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
	l.ori	r17, r0, 15
	l.sra	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L967
	l.ori	r17, r0, 14
	l.sra	r11, r3, r17
	l.sfne	r11, r19
	l.bf	.L964
	l.ori	r17, r0, 13
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L968
	l.ori	r17, r0, 12
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L969
	l.ori	r17, r0, 11
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L970
	l.ori	r17, r0, 10
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L971
	l.ori	r17, r0, 9
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L972
	l.ori	r17, r0, 8
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L973
	l.ori	r17, r0, 7
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L974
	l.ori	r17, r0, 6
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L975
	l.ori	r17, r0, 5
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L976
	l.ori	r17, r0, 4
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L977
	l.ori	r17, r0, 3
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L978
	l.ori	r17, r0, 2
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L979
	l.ori	r17, r0, 1
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L980
	l.sfeq	r3, r19
	l.bnf	.L983
	l.ori	r11, r0, 16
.L964:
	l.jr	r9
	 l.nop

.L967:
	l.jr	r9
	l.movhi	r11, hi(0)
.L978:
	l.jr	r9
	l.ori	r11, r0, 12
.L983:
	l.jr	r9
	l.ori	r11, r0, 15
.L968:
	l.jr	r9
	l.ori	r11, r0, 2
.L969:
	l.jr	r9
	l.ori	r11, r0, 3
.L970:
	l.jr	r9
	l.ori	r11, r0, 4
.L971:
	l.jr	r9
	l.ori	r11, r0, 5
.L972:
	l.jr	r9
	l.ori	r11, r0, 6
.L973:
	l.jr	r9
	l.ori	r11, r0, 7
.L974:
	l.jr	r9
	l.ori	r11, r0, 8
.L975:
	l.jr	r9
	l.ori	r11, r0, 9
.L976:
	l.jr	r9
	l.ori	r11, r0, 10
.L977:
	l.jr	r9
	l.ori	r11, r0, 11
.L979:
	l.jr	r9
	l.ori	r11, r0, 13
.L980:
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
	l.bf	.L987
	l.andi	r3, r3, 0xffff
	l.andi	r17, r3, 2
	l.sfne	r17, r19
	l.bf	.L988
	l.andi	r17, r3, 4
	l.sfne	r17, r19
	l.bf	.L989
	l.andi	r17, r3, 8
	l.sfne	r17, r19
	l.bf	.L990
	l.andi	r17, r3, 16
	l.sfne	r17, r19
	l.bf	.L991
	l.andi	r17, r3, 32
	l.sfne	r17, r19
	l.bf	.L992
	l.andi	r17, r3, 64
	l.sfne	r17, r19
	l.bf	.L993
	l.andi	r17, r3, 128
	l.sfne	r17, r19
	l.bf	.L994
	l.andi	r17, r3, 256
	l.sfne	r17, r19
	l.bf	.L995
	l.andi	r17, r3, 512
	l.sfne	r17, r19
	l.bf	.L996
	l.andi	r17, r3, 1024
	l.sfne	r17, r19
	l.bf	.L997
	l.andi	r17, r3, 2048
	l.sfne	r17, r19
	l.bf	.L998
	l.andi	r17, r3, 4096
	l.sfne	r17, r19
	l.bf	.L999
	l.andi	r17, r3, 8192
	l.sfne	r17, r19
	l.bf	.L1000
	l.andi	r17, r3, 16384
	l.sfne	r17, r19
	l.bf	.L1001
	l.ori	r17, r0, 15
	l.sra	r3, r3, r17
	l.sfeq	r3, r19
	l.bnf	.L1004
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L987:
	l.jr	r9
	l.movhi	r11, hi(0)
.L988:
	l.jr	r9
	l.ori	r11, r0, 1
.L999:
	l.jr	r9
	l.ori	r11, r0, 12
.L1004:
	l.jr	r9
	l.or	r11, r17, r17
.L989:
	l.jr	r9
	l.ori	r11, r0, 2
.L990:
	l.jr	r9
	l.ori	r11, r0, 3
.L991:
	l.jr	r9
	l.ori	r11, r0, 4
.L992:
	l.jr	r9
	l.ori	r11, r0, 5
.L993:
	l.jr	r9
	l.ori	r11, r0, 6
.L994:
	l.jr	r9
	l.ori	r11, r0, 7
.L995:
	l.jr	r9
	l.ori	r11, r0, 8
.L996:
	l.jr	r9
	l.ori	r11, r0, 9
.L997:
	l.jr	r9
	l.ori	r11, r0, 10
.L998:
	l.jr	r9
	l.ori	r11, r0, 11
.L1000:
	l.jr	r9
	l.ori	r11, r0, 13
.L1001:
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
	l.bf	.L1012
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L1012:
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
	l.ori	r17, r0, 1
	l.sra	r11, r3, r17
	l.and	r19, r3, r17
	l.and	r11, r11, r17
	l.ori	r17, r0, 2
	l.sra	r17, r3, r17
	l.add	r11, r11, r19
	l.andi	r17, r17, 1
	l.ori	r19, r0, 3
	l.sra	r19, r3, r19
	l.add	r11, r11, r17
	l.ori	r17, r0, 4
	l.andi	r19, r19, 1
	l.sra	r17, r3, r17
	l.add	r11, r11, r19
	l.andi	r17, r17, 1
	l.ori	r19, r0, 5
	l.sra	r19, r3, r19
	l.add	r11, r11, r17
	l.ori	r17, r0, 6
	l.andi	r19, r19, 1
	l.sra	r17, r3, r17
	l.add	r11, r11, r19
	l.andi	r17, r17, 1
	l.ori	r19, r0, 7
	l.sra	r19, r3, r19
	l.add	r11, r11, r17
	l.ori	r17, r0, 8
	l.andi	r19, r19, 1
	l.sra	r17, r3, r17
	l.add	r11, r11, r19
	l.andi	r17, r17, 1
	l.ori	r19, r0, 9
	l.sra	r19, r3, r19
	l.add	r11, r11, r17
	l.ori	r17, r0, 10
	l.andi	r19, r19, 1
	l.sra	r17, r3, r17
	l.add	r11, r11, r19
	l.andi	r17, r17, 1
	l.ori	r19, r0, 11
	l.sra	r19, r3, r19
	l.add	r11, r11, r17
	l.ori	r17, r0, 12
	l.andi	r19, r19, 1
	l.sra	r17, r3, r17
	l.add	r11, r11, r19
	l.andi	r17, r17, 1
	l.ori	r19, r0, 13
	l.sra	r19, r3, r19
	l.add	r11, r11, r17
	l.ori	r17, r0, 14
	l.andi	r19, r19, 1
	l.sra	r17, r3, r17
	l.add	r11, r11, r19
	l.andi	r17, r17, 1
	l.add	r11, r11, r17
	l.ori	r17, r0, 15
	l.sra	r3, r3, r17
	l.add	r11, r11, r3
	l.jr	r9
	l.andi	r11, r11, 1
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	l.andi	r3, r3, 0xffff
	l.ori	r17, r0, 1
	l.sra	r17, r3, r17
	l.ori	r19, r0, 2
	l.andi	r21, r3, 1
	l.sra	r19, r3, r19
	l.andi	r17, r17, 1
	l.add	r17, r17, r21
	l.andi	r19, r19, 1
	l.ori	r21, r0, 3
	l.sra	r21, r3, r21
	l.add	r17, r17, r19
	l.ori	r19, r0, 4
	l.andi	r21, r21, 1
	l.sra	r19, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r19, 1
	l.ori	r21, r0, 5
	l.sra	r21, r3, r21
	l.add	r17, r17, r19
	l.ori	r19, r0, 6
	l.andi	r21, r21, 1
	l.sra	r19, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r19, 1
	l.ori	r21, r0, 7
	l.sra	r21, r3, r21
	l.add	r17, r17, r19
	l.ori	r19, r0, 8
	l.andi	r21, r21, 1
	l.sra	r19, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r19, 1
	l.ori	r21, r0, 9
	l.sra	r21, r3, r21
	l.add	r17, r17, r19
	l.ori	r19, r0, 10
	l.andi	r21, r21, 1
	l.sra	r19, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r19, 1
	l.ori	r21, r0, 11
	l.sra	r21, r3, r21
	l.add	r17, r17, r19
	l.ori	r19, r0, 12
	l.andi	r21, r21, 1
	l.sra	r19, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r19, 1
	l.ori	r21, r0, 13
	l.sra	r21, r3, r21
	l.add	r17, r17, r19
	l.ori	r19, r0, 14
	l.andi	r21, r21, 1
	l.sra	r19, r3, r19
	l.add	r17, r17, r21
	l.andi	r19, r19, 1
	l.add	r17, r17, r19
	l.ori	r19, r0, 15
	l.sra	r11, r3, r19
	l.jr	r9
	l.add	r11, r17, r11
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L1015
	l.movhi	r11, hi(0)
.L1017:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L1017
	l.add	r4, r4, r4
.L1015:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L1020
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L1020
	 l.nop

.L1022:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L1022
	l.add	r3, r3, r3
.L1020:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1027
	l.ori	r17, r0, 1
	l.j	.L1033
	l.movhi	r11, hi(0)
.L1031:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L1029
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L1030
	 l.nop

.L1027:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1031
	l.addi	r11, r11, -1
.L1028:
	l.movhi	r11, hi(0)
.L1033:
	l.sfltu	r3, r4
.L1045:
	l.bf	.L1044
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L1044:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1045
	l.sfltu	r3, r4
.L1030:
	l.movhi	r17, hi(0)
.L1046:
	l.sfne	r5, r17
	l.bnf	.L1043
	 l.nop

	l.or	r11, r3, r3
.L1043:
	l.jr	r9
	 l.nop

.L1029:
	l.sfeq	r17, r19
	l.bnf	.L1028
	l.movhi	r11, hi(0)
	l.j	.L1046
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
	l.bf	.L1050
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L1053
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L1053:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L1050:
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
	l.bf	.L1057
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L1060
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1060:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1057:
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
	l.bnf	.L1079
	l.sfeq	r4, r17
	l.bf	.L1071
	l.movhi	r21, hi(0)
.L1067:
	l.ori	r19, r0, 32
	l.j	.L1070
	l.movhi	r11, hi(0)
.L1080:
	l.sfne	r19, r17
	l.bnf	.L1081
	l.movhi	r17, hi(0)
.L1070:
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
	l.bnf	.L1080
	l.add	r3, r3, r3
	l.movhi	r17, hi(0)
.L1081:
	l.sfeq	r21, r17
	l.bf	.L1065
	 l.nop

	l.sub	r11, r0, r11
.L1065:
	l.jr	r9
	 l.nop

.L1079:
	l.sub	r4, r0, r4
	l.j	.L1067
	l.ori	r21, r0, 1
.L1071:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1101
	 l.nop

	l.ori	r17, r0, 1
	l.movhi	r23, hi(0)
.L1083:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1102
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.or	r23, r17, r17
	l.sfgtu	r3, r4
.L1102:
	l.or	r21, r3, r3
	l.ori	r19, r0, 32
	l.bf	.L1085
	l.ori	r17, r0, 1
	l.j	.L1091
	l.movhi	r11, hi(0)
.L1088:
	l.movhi	r25, hi(0)
	l.sfne	r19, r25
	l.bnf	.L1089
	 l.nop

.L1085:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L1088
	l.add	r17, r17, r17
.L1089:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1087
	l.movhi	r11, hi(0)
	l.movhi	r11, hi(0)
.L1091:
	l.sfltu	r21, r4
.L1104:
	l.bf	.L1103
	l.ori	r19, r0, 1
	l.sub	r21, r21, r4
	l.or	r11, r11, r17
.L1103:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1104
	l.sfltu	r21, r4
.L1087:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L1082
	 l.nop

	l.sub	r11, r0, r11
.L1082:
	l.jr	r9
	 l.nop

.L1101:
	l.sub	r3, r0, r3
	l.j	.L1083
	l.ori	r23, r0, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1124
	 l.nop

	l.movhi	r21, hi(0)
.L1106:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L1107
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1107:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bf	.L1108
	l.ori	r17, r0, 1
	l.j	.L1126
	l.ori	r19, r0, 1
.L1111:
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bnf	.L1112
	 l.nop

.L1108:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L1111
	l.add	r17, r17, r17
.L1112:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1125
	l.ori	r19, r0, 1
.L1126:
	l.sfltu	r11, r4
	l.bf	.L1113
	l.srl	r17, r17, r19
	l.sub	r11, r11, r4
.L1113:
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1126
	l.ori	r19, r0, 1
.L1110:
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bf	.L1105
	 l.nop

	l.sub	r11, r0, r11
.L1105:
	l.jr	r9
	 l.nop

.L1124:
	l.sub	r3, r0, r3
	l.j	.L1106
	l.ori	r21, r0, 1
.L1125:
	l.j	.L1110
	l.or	r11, r3, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.bnf	.L1244
	l.ori	r23, r0, 16
	l.sll	r17, r4, r23
	l.movhi	r21, hi(0)
	l.sflts	r17, r21
	l.bf	.L1130
	l.add	r17, r4, r4
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1131
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1132
	 l.nop

	l.ori	r17, r0, 2
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1133
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1134
	l.ori	r19, r0, 1
	l.ori	r17, r0, 3
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1135
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1136
	l.ori	r19, r0, 1
	l.ori	r17, r0, 4
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1137
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1138
	l.ori	r19, r0, 1
	l.ori	r17, r0, 5
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1139
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1140
	l.ori	r19, r0, 1
	l.ori	r17, r0, 6
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1141
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1142
	l.ori	r19, r0, 1
	l.ori	r17, r0, 7
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1143
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1144
	l.ori	r19, r0, 1
	l.ori	r17, r0, 8
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1145
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1146
	l.ori	r19, r0, 1
	l.ori	r17, r0, 9
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1147
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1148
	l.ori	r19, r0, 1
	l.ori	r17, r0, 10
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1149
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1150
	l.ori	r19, r0, 1
	l.ori	r17, r0, 11
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1151
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1152
	l.ori	r19, r0, 1
	l.ori	r17, r0, 12
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1153
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1154
	l.ori	r19, r0, 1
	l.ori	r17, r0, 13
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1155
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1156
	l.ori	r19, r0, 1
	l.ori	r17, r0, 14
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1157
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1158
	l.ori	r19, r0, 1
	l.ori	r17, r0, 15
	l.sll	r4, r4, r17
	l.andi	r19, r4, 0xffff
	l.sfleu	r11, r19
	l.bf	.L1159
	l.sfeq	r19, r21
	l.bnf	.L1245
	l.ori	r17, r0, 32768
.L1160:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L1242
	 l.nop

	l.or	r11, r19, r19
.L1242:
	l.jr	r9
	 l.nop

.L1147:
	l.sfltu	r11, r17
	l.bf	.L1179
	l.ori	r21, r0, 512
	l.sub	r11, r11, r17
	l.andi	r11, r11, 0xffff
	l.or	r19, r21, r21
.L1162:
	l.ori	r23, r0, 2
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1163
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1163:
	l.ori	r23, r0, 3
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1164
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1164:
	l.ori	r23, r0, 4
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1165
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1165:
	l.ori	r23, r0, 5
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1166
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1166:
	l.ori	r23, r0, 6
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1167
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1167:
	l.ori	r23, r0, 7
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1168
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1168:
	l.ori	r23, r0, 8
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1169
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1169:
	l.ori	r23, r0, 9
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1170
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1170:
	l.ori	r23, r0, 10
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1171
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1171:
	l.ori	r23, r0, 11
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1172
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1172:
	l.ori	r23, r0, 12
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1173
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1173:
	l.ori	r23, r0, 13
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1174
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1174:
	l.ori	r23, r0, 14
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1160
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1175
	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1175:
	l.ori	r23, r0, 15
	l.srl	r17, r17, r23
	l.ori	r23, r0, 16384
	l.sfne	r21, r23
	l.bnf	.L1160
	l.sfltu	r11, r17
	l.bf	.L1182
	l.sub	r17, r11, r17
	l.andi	r11, r17, 0xffff
	l.j	.L1160
	l.ori	r19, r19, 1
.L1182:
	l.j	.L1160
	l.movhi	r11, hi(0)
.L1244:
	l.sfeq	r4, r11
	l.bf	.L1181
	 l.nop

	l.j	.L1160
	l.movhi	r19, hi(0)
.L1130:
	l.sub	r4, r11, r4
	l.andi	r11, r4, 0xffff
	l.j	.L1160
	l.ori	r19, r0, 1
.L1131:
	l.sfltu	r11, r17
	l.bf	.L1184
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 2
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1132:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 2
	l.andi	r11, r11, 0xffff
	l.andi	r4, r4, 32767
	l.ori	r23, r0, 1
	l.or	r19, r21, r21
.L1180:
	l.sfltu	r11, r4
	l.bf	.L1162
	l.sub	r4, r11, r4
	l.andi	r11, r4, 0xffff
	l.j	.L1162
	l.or	r19, r19, r23
.L1133:
	l.sfltu	r11, r17
	l.bf	.L1185
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 4
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1134:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 4
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 2
	l.j	.L1180
	l.or	r19, r21, r21
.L1135:
	l.sfltu	r11, r17
	l.bf	.L1186
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 8
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1136:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 8
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 4
	l.j	.L1180
	l.or	r19, r21, r21
.L1137:
	l.sfltu	r11, r17
	l.bf	.L1187
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 16
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1138:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 16
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 8
	l.j	.L1180
	l.or	r19, r21, r21
.L1139:
	l.sfltu	r11, r17
	l.bf	.L1188
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 32
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1140:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 32
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 16
	l.j	.L1180
	l.or	r19, r21, r21
.L1141:
	l.sfltu	r11, r17
	l.bf	.L1189
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 64
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1142:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 64
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 32
	l.j	.L1180
	l.or	r19, r21, r21
.L1143:
	l.sfltu	r11, r17
	l.bf	.L1190
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 128
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1144:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 128
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 64
	l.j	.L1180
	l.or	r19, r21, r21
.L1146:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 256
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 128
	l.j	.L1180
	l.or	r19, r21, r21
.L1148:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 512
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 256
	l.j	.L1180
	l.or	r19, r21, r21
.L1181:
	l.ori	r19, r0, 1
	l.j	.L1160
	l.movhi	r11, hi(0)
.L1184:
	l.ori	r21, r0, 2
.L1179:
	l.ori	r19, r0, 1
	l.srl	r23, r21, r19
	l.srl	r4, r17, r19
	l.j	.L1180
	l.movhi	r19, hi(0)
.L1150:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 1024
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 512
	l.j	.L1180
	l.or	r19, r21, r21
.L1152:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 2048
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 1024
	l.j	.L1180
	l.or	r19, r21, r21
.L1185:
	l.j	.L1179
	l.ori	r21, r0, 4
.L1186:
	l.j	.L1179
	l.ori	r21, r0, 8
.L1154:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 4096
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 2048
	l.j	.L1180
	l.or	r19, r21, r21
.L1156:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 8192
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 4096
	l.j	.L1180
	l.or	r19, r21, r21
.L1187:
	l.j	.L1179
	l.ori	r21, r0, 16
.L1188:
	l.j	.L1179
	l.ori	r21, r0, 32
.L1158:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 16384
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 8192
	l.j	.L1180
	l.or	r19, r21, r21
.L1159:
	l.ori	r17, r0, 16
	l.sll	r17, r11, r17
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.ori	r17, r0, 32768
	l.bnf	.L1179
	l.or	r21, r17, r17
	l.or	r19, r17, r17
	l.j	.L1162
	l.movhi	r11, hi(0)
.L1189:
	l.j	.L1179
	l.ori	r21, r0, 64
.L1245:
	l.addi	r11, r11, -32768
	l.ori	r4, r0, 16384
	l.andi	r11, r11, 0xffff
	l.or	r23, r4, r4
	l.or	r21, r17, r17
	l.j	.L1180
	l.or	r19, r17, r17
.L1190:
	l.j	.L1179
	l.ori	r21, r0, 128
.L1145:
	l.sfltu	r11, r17
	l.bf	.L1191
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 256
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1191:
	l.j	.L1179
	l.ori	r21, r0, 256
.L1149:
	l.sfltu	r11, r17
	l.bf	.L1193
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 1024
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1157:
	l.sfltu	r11, r17
	l.bf	.L1197
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 16384
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1193:
	l.j	.L1179
	l.ori	r21, r0, 1024
.L1197:
	l.j	.L1179
	l.ori	r21, r0, 16384
.L1155:
	l.sfltu	r11, r17
	l.bf	.L1196
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 8192
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1153:
	l.sfltu	r11, r17
	l.bf	.L1195
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 4096
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1151:
	l.sfltu	r11, r17
	l.bf	.L1194
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 2048
	l.andi	r11, r11, 0xffff
	l.j	.L1162
	l.or	r19, r21, r21
.L1196:
	l.j	.L1179
	l.ori	r21, r0, 8192
.L1195:
	l.j	.L1179
	l.ori	r21, r0, 4096
.L1194:
	l.j	.L1179
	l.ori	r21, r0, 2048
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1247
	l.ori	r17, r0, 1
	l.j	.L1253
	l.movhi	r11, hi(0)
.L1251:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L1249
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L1250
	 l.nop

.L1247:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1251
	l.addi	r11, r11, -1
.L1248:
	l.movhi	r11, hi(0)
.L1253:
	l.sfltu	r3, r4
.L1265:
	l.bf	.L1264
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L1264:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1265
	l.sfltu	r3, r4
.L1250:
	l.movhi	r17, hi(0)
.L1266:
	l.sfne	r5, r17
	l.bnf	.L1263
	 l.nop

	l.or	r11, r3, r3
.L1263:
	l.jr	r9
	 l.nop

.L1249:
	l.sfeq	r17, r19
	l.bnf	.L1248
	l.movhi	r11, hi(0)
	l.j	.L1266
	l.movhi	r17, hi(0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1268
	 l.nop

	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1268:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L1271
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.srl	r17, r4, r17
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r17, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1271:
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
	l.bf	.L1274
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.jr	r9
	l.sra	r12, r3, r5
.L1274:
	l.sfeq	r5, r17
	l.bf	.L1277
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r17, r12
.L1277:
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
	l.bf	.L1282
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1282:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r25
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r29, hi(0)
	l.sfeq	r19, r29
	l.bf	.L1283
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1283:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.ori	r19, r0, 8
	l.sub	r19, r19, r23
	l.srl	r17, r17, r19
	l.andi	r19, r17, 240
	l.sfeq	r19, r29
	l.bf	.L1284
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1284:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.ori	r19, r0, 4
	l.sub	r19, r19, r21
	l.srl	r17, r17, r19
	l.andi	r19, r17, 12
	l.sfeq	r19, r29
	l.bf	.L1285
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1285:
	l.ori	r11, r0, 2
	l.add	r19, r19, r19
	l.sub	r27, r11, r19
	l.srl	r17, r17, r27
	l.add	r23, r23, r25
	l.and	r25, r17, r11
	l.sfeq	r25, r29
	l.add	r21, r21, r23
	l.bf	.L1281
	l.sub	r11, r11, r17
	l.movhi	r11, hi(0)
.L1281:
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1290
	l.sfgts	r3, r5
	l.bf	.L1291
	l.sfltu	r4, r6
	l.bf	.L1290
	l.sfgtu	r4, r6
	l.bf	.L1291
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1290:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1291:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1296
	l.sfgts	r3, r5
	l.bf	.L1295
	l.sfltu	r4, r6
	l.bf	.L1296
	l.sfgtu	r4, r6
	l.bnf	.L1298
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1296:
	l.jr	r9
	l.xori	r11, r0, -1
.L1298:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1295:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.movhi	r27, hi(0)
	l.sfeq	r17, r27
	l.bf	.L1300
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1300:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.srl	r17, r3, r25
	l.andi	r19, r17, 255
	l.sfeq	r19, r27
	l.bf	.L1301
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1301:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.srl	r17, r17, r23
	l.andi	r19, r17, 15
	l.sfeq	r19, r27
	l.bf	.L1302
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1302:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.srl	r17, r17, r21
	l.andi	r19, r17, 3
	l.sfeq	r19, r27
	l.bf	.L1303
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1303:
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
	l.bf	.L1305
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1307:
	l.jr	r9
	 l.nop

.L1305:
	l.sfeq	r5, r17
	l.bf	.L1308
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r17, r12
	l.j	.L1307
	l.or	r11, r3, r3
.L1308:
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
	l.bf	.L1312
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L1312:
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
	l.bf	.L1316
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1316:
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
	l.bf	.L1317
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1317:
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
	l.bf	.L1318
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1318:
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
	l.bf	.L1321
	l.lwz	r18, lo(.LC21+4)(r17)
.L1323:
	l.or	r3, r22, r22
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.lwz	r6, 0(r1)
	l.lwz	r5, 4(r1)
.L1321:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1322
	l.sfges	r20, r17
.L1324:
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
	l.bf	.L1323
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1324
	l.sra	r16, r17, r19
.L1322:
	l.bf	.L1328
	l.or	r11, r22, r22
	l.or	r5, r22, r22
	l.or	r6, r18, r18
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.or	r11, r22, r22
.L1328:
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
	l.bf	.L1330
	l.movhi	r20, hi(1065353216)
.L1332:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
.L1330:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1331
	l.sfges	r22, r17
.L1333:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L1332
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1333
	l.sra	r16, r17, r19
.L1331:
	l.bf	.L1337
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.jal	__divsf3
	l.movhi	r3, hi(1065353216)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L1337:
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
	l.bf	.L1342
	l.sfgtu	r3, r5
	l.bf	.L1343
	l.sfltu	r4, r6
	l.bf	.L1342
	l.sfgtu	r4, r6
	l.bf	.L1343
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1342:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1343:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1348
	l.sfgtu	r3, r5
	l.bf	.L1347
	l.sfltu	r4, r6
	l.bf	.L1348
	l.sfgtu	r4, r6
	l.bnf	.L1350
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1348:
	l.jr	r9
	l.xori	r11, r0, -1
.L1350:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1347:
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
