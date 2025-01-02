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
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.or	r22, r5, r5
	l.jal	__gtdf2
	l.or	r20, r6, r6
	l.movhi	r17, hi(0)
	l.sfgts	r11, r17
	l.bnf	.L182
	l.movhi	r17, ha(.LC0+4)
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
	l.lwz	r9, 16(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L182:
	l.lwz	r12, lo(.LC0+4)(r17)
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.jal	__gtsf2
	l.or	r18, r4, r4
	l.movhi	r17, hi(0)
	l.sfgts	r11, r17
	l.bnf	.L189
	l.movhi	r11, hi(0)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L189:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.movhi	r17, hi(-2147483648)
	l.addi	r1, r1, -20
	l.and	r19, r3, r17
	l.and	r17, r5, r17
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.sfeq	r19, r17
	l.or	r20, r3, r3
	l.or	r16, r5, r5
	l.or	r22, r4, r4
	l.bf	.L192
	l.or	r18, r6, r6
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L197
	l.or	r11, r3, r3
	l.or	r11, r5, r5
	l.or	r12, r6, r6
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L192:
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L194
	 l.nop

	l.or	r12, r18, r18
.L195:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L197:
	l.or	r12, r4, r4
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L194:
	l.or	r16, r20, r20
	l.j	.L195
	l.or	r12, r22, r22
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	l.movhi	r17, hi(-2147483648)
	l.addi	r1, r1, -12
	l.and	r19, r17, r3
	l.and	r17, r17, r4
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.sfeq	r19, r17
	l.or	r18, r3, r3
	l.bf	.L200
	l.or	r16, r4, r4
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L209
	l.or	r11, r4, r4
.L199:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L200:
	l.jal	__ltsf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L199
	l.or	r11, r16, r16
.L209:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.movhi	r17, hi(-2147483648)
	l.addi	r1, r1, -20
	l.and	r19, r3, r17
	l.and	r17, r5, r17
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.sfeq	r19, r17
	l.or	r20, r3, r3
	l.or	r16, r5, r5
	l.or	r22, r4, r4
	l.bf	.L211
	l.or	r18, r6, r6
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L216
	l.or	r11, r3, r3
	l.or	r11, r5, r5
	l.or	r12, r6, r6
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L211:
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L213
	 l.nop

	l.or	r12, r18, r18
.L214:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L216:
	l.or	r12, r4, r4
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L213:
	l.or	r16, r20, r20
	l.j	.L214
	l.or	r12, r22, r22
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.movhi	r17, hi(-2147483648)
	l.addi	r1, r1, -20
	l.and	r19, r3, r17
	l.and	r17, r5, r17
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.sfeq	r19, r17
	l.or	r16, r3, r3
	l.or	r20, r5, r5
	l.or	r18, r4, r4
	l.bf	.L219
	l.or	r22, r6, r6
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L224
	l.or	r11, r5, r5
	l.or	r11, r3, r3
	l.or	r12, r4, r4
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L219:
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L221
	 l.nop

	l.or	r12, r18, r18
.L222:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L224:
	l.or	r12, r6, r6
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L221:
	l.or	r16, r20, r20
	l.j	.L222
	l.or	r12, r22, r22
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	l.movhi	r17, hi(-2147483648)
	l.addi	r1, r1, -12
	l.and	r19, r17, r3
	l.and	r17, r17, r4
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.sfeq	r19, r17
	l.or	r16, r3, r3
	l.bf	.L227
	l.or	r18, r4, r4
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L236
	l.or	r11, r3, r3
.L226:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L227:
	l.jal	__ltsf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L226
	l.or	r11, r16, r16
.L236:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	l.movhi	r17, hi(-2147483648)
	l.addi	r1, r1, -20
	l.and	r19, r3, r17
	l.and	r17, r5, r17
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.sfeq	r19, r17
	l.or	r16, r3, r3
	l.or	r20, r5, r5
	l.or	r18, r4, r4
	l.bf	.L238
	l.or	r22, r6, r6
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L243
	l.or	r11, r5, r5
	l.or	r11, r3, r3
	l.or	r12, r4, r4
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L238:
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L240
	 l.nop

	l.or	r12, r18, r18
.L241:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L243:
	l.or	r12, r6, r6
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
.L240:
	l.or	r16, r20, r20
	l.j	.L241
	l.or	r12, r22, r22
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.movhi	r11, ha(.LANCHOR0)
	l.addi	r11, r11, lo(.LANCHOR0)
	l.sfeq	r3, r17
	l.bf	.L246
	l.or	r19, r11, r11
	l.movhi	r21, ha(.LANCHOR1)
	l.addi	r21, r21, lo(.LANCHOR1)
.L247:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbz	r17, 0(r17)
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.sb	0(r19), r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L247
	l.addi	r19, r19, 1
.L246:
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
	l.bf	.L252
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L252:
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
	l.bnf	.L261
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r17
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L255
	 l.nop

	l.sw	4(r17), r3
.L255:
	l.jr	r9
	 l.nop

.L261:
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
	l.bf	.L271
	l.movhi	r21, hi(0)
	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L271:
	l.lwz	r19, 4(r3)
	l.sfeq	r19, r21
	l.bf	.L262
	 l.nop

	l.sw	0(r19), r17
.L262:
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
	l.bf	.L273
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L275
	l.movhi	r18, hi(0)
.L288:
	l.sfne	r22, r18
	l.bnf	.L290
	l.addi	r17, r22, 1
.L275:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L288
	l.add	r16, r16, r20
.L272:
	l.or	r11, r14, r14
.L289:
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
.L273:
	l.addi	r17, r22, 1
.L290:
	l.sw	0(r28), r17
	l.movhi	r17, hi(0)
	l.mul	r22, r20, r22
	l.sfeq	r20, r17
	l.bf	.L272
	l.add	r14, r30, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L289
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
	l.bf	.L292
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L294
	l.movhi	r18, hi(0)
.L303:
	l.sfne	r28, r18
	l.bnf	.L291
	l.movhi	r26, hi(0)
.L294:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r26, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L303
	l.add	r16, r16, r22
.L291:
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
.L292:
	l.j	.L291
	l.movhi	r26, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L305
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L305:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L313:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L307
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L307
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L308
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L323
	l.addi	r21, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bf	.L318
	l.addi	r3, r3, 1
	l.ori	r27, r0, 1
.L311:
	l.movhi	r19, hi(0)
	l.ori	r25, r0, 9
.L315:
	l.ori	r17, r0, 2
	l.sll	r17, r19, r17
	l.add	r11, r17, r19
	l.add	r11, r11, r11
	l.lbs	r17, 1(r3)
	l.or	r23, r21, r21
	l.sub	r19, r11, r21
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bf	.L315
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bf	.L306
	 l.nop

	l.sub	r19, r23, r11
.L306:
	l.jr	r9
	l.or	r11, r19, r19
.L307:
	l.j	.L313
	l.addi	r3, r3, 1
.L323:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bf	.L311
	l.movhi	r27, hi(0)
.L318:
	l.movhi	r19, hi(0)
.L324:
	l.jr	r9
	l.or	r11, r19, r19
.L308:
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bf	.L311
	l.movhi	r27, hi(0)
	l.j	.L324
	l.movhi	r19, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L330:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L326
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L326
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L327
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L342
	l.addi	r21, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bnf	.L337
	l.ori	r27, r0, 1
.L331:
	l.movhi	r19, hi(0)
	l.ori	r25, r0, 9
.L334:
	l.ori	r17, r0, 2
	l.sll	r17, r19, r17
	l.add	r11, r17, r19
	l.add	r11, r11, r11
	l.lbs	r17, 1(r3)
	l.or	r23, r21, r21
	l.sub	r19, r11, r21
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bf	.L334
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bf	.L325
	 l.nop

	l.sub	r19, r23, r11
.L325:
	l.jr	r9
	l.or	r11, r19, r19
.L326:
	l.j	.L330
	l.addi	r3, r3, 1
.L342:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bnf	.L343
	l.movhi	r19, hi(0)
.L338:
	l.j	.L331
	l.movhi	r27, hi(0)
.L327:
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bnf	.L338
	l.addi	r3, r3, 1
.L337:
	l.movhi	r19, hi(0)
.L343:
	l.jr	r9
	l.or	r11, r19, r19
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
	 l.nop

	l.ori	r17, r0, 43
	l.sfeq	r19, r17
	l.bf	.L346
	l.ori	r17, r0, 45
	l.sfeq	r19, r17
	l.bnf	.L365
	l.addi	r21, r19, -48
	l.lbs	r19, 1(r3)
	l.addi	r21, r19, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bf	.L356
	l.addi	r3, r3, 1
	l.ori	r13, r0, 1
.L349:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.ori	r29, r0, 9
.L353:
	l.ori	r19, r0, 2
	l.sll	r17, r12, r19
	l.add	r23, r17, r12
	l.ori	r25, r0, 30
	l.srl	r12, r12, r25
	l.sll	r19, r11, r19
	l.sfltu	r23, r17
	l.or	r19, r12, r19
	l.add	r25, r23, r23
	l.bf	.L362
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L362:
	l.add	r19, r19, r11
	l.sfltu	r25, r23
	l.add	r11, r17, r19
	l.sub	r12, r25, r21
	l.bf	.L363
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L363:
	l.ori	r19, r0, 31
	l.add	r11, r11, r11
	l.sfgtu	r12, r25
	l.sra	r23, r21, r19
	l.add	r17, r17, r11
	l.lbs	r19, 1(r3)
	l.or	r31, r21, r21
	l.bf	.L364
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L364:
	l.addi	r21, r19, -48
	l.sub	r11, r17, r23
	l.sfleu	r21, r29
	l.addi	r3, r3, 1
	l.bf	.L353
	l.sub	r11, r11, r27
	l.movhi	r19, hi(0)
	l.sfne	r13, r19
	l.bf	.L344
	 l.nop

	l.sub	r12, r31, r25
	l.sfgtu	r12, r31
	l.bf	.L361
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L361:
	l.sub	r23, r23, r17
	l.sub	r11, r23, r11
.L344:
	l.jr	r9
	 l.nop

.L345:
	l.j	.L351
	l.addi	r3, r3, 1
.L365:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bf	.L349
	l.movhi	r13, hi(0)
.L356:
	l.movhi	r11, hi(0)
.L366:
	l.jr	r9
	l.movhi	r12, hi(0)
.L346:
	l.lbs	r19, 1(r3)
	l.addi	r21, r19, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bf	.L349
	l.movhi	r13, hi(0)
	l.j	.L366
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
	l.bf	.L368
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.j	.L371
	l.or	r24, r7, r7
.L381:
	l.sfeq	r11, r17
	l.bf	.L367
	l.sub	r16, r16, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bnf	.L368
	l.add	r22, r18, r20
.L371:
	l.ori	r17, r0, 1
.L382:
	l.srl	r28, r16, r17
	l.mul	r18, r28, r20
	l.add	r18, r22, r18
	l.or	r4, r18, r18
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L381
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bf	.L382
	l.ori	r17, r0, 1
.L368:
	l.movhi	r18, hi(0)
.L367:
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
	l.bnf	.L388
	l.or	r24, r8, r8
.L384:
	l.ori	r14, r0, 1
.L398:
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
	l.bf	.L383
	l.sra	r16, r16, r14
	l.sfles	r11, r17
	l.bf	.L397
	l.sfne	r16, r17
	l.bf	.L384
	l.add	r22, r18, r20
.L388:
	l.movhi	r18, hi(0)
.L383:
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
.L397:
	l.sfeq	r30, r17
	l.bf	.L388
	l.or	r16, r30, r30
	l.j	.L398
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
	l.bf	.L408
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L408:
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
	l.bf	.L411
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.bnf	.L414
	l.ori	r11, r0, 1
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L411:
	l.jr	r9
	 l.nop

.L414:
	l.movhi	r11, hi(0)
	l.sub	r3, r0, r3
	l.j	.L411
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
	l.bf	.L424
	l.sfne	r4, r17
	l.j	.L423
	l.movhi	r11, hi(0)
.L420:
	l.lwz	r17, 4(r3)
	l.sfeq	r17, r19
	l.bf	.L421
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L424:
	l.bf	.L420
	l.movhi	r19, hi(0)
	l.jr	r9
	l.or	r11, r3, r3
.L421:
	l.movhi	r11, hi(0)
.L423:
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
	l.bf	.L435
	l.movhi	r21, hi(0)
	l.j	.L434
	l.sfltu	r17, r19
.L428:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L427
	l.movhi	r21, hi(0)
.L435:
	l.sfne	r17, r21
	l.addi	r3, r3, 4
	l.bf	.L428
	l.addi	r4, r4, 4
.L427:
	l.sfltu	r17, r19
.L434:
	l.bf	.L425
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.bnf	.L433
	l.ori	r11, r0, 1
.L425:
	l.jr	r9
	 l.nop

.L433:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L437:
	l.addi	r17, r17, 4
	l.movhi	r21, hi(0)
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfne	r19, r21
	l.bf	.L437
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
	l.bf	.L439
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L446:
	l.lwz	r17, 4(r11)
	l.sfne	r17, r19
	l.bf	.L446
	l.addi	r11, r11, 4
	l.sub	r11, r11, r3
	l.ori	r17, r0, 2
	l.sra	r11, r11, r17
.L439:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L448
	l.movhi	r11, hi(0)
	l.j	.L458
	 l.nop

.L456:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L450
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.addi	r3, r3, 4
	l.bf	.L453
	l.addi	r4, r4, 4
.L448:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L456
	l.addi	r5, r5, -1
.L450:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bnf	.L457
	l.sfgtu	r19, r17
	l.bnf	.L453
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L457:
	l.jr	r9
	l.xori	r11, r0, -1
.L453:
	l.movhi	r11, hi(0)
.L458:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L460
	l.movhi	r11, hi(0)
	l.j	.L465
	 l.nop

.L462:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L463
	l.addi	r3, r3, 4
.L460:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L462
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L463:
	l.movhi	r11, hi(0)
.L465:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L467
	l.movhi	r11, hi(0)
	l.j	.L477
	 l.nop

.L469:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L477
	l.movhi	r11, hi(0)
.L467:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L469
	l.addi	r4, r4, 4
	l.sfgeu	r19, r17
	l.bnf	.L476
	l.sfgtu	r19, r17
	l.bnf	.L472
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L472:
	l.movhi	r11, hi(0)
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
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
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
	l.sll	r19, r5, r19
	l.sub	r21, r3, r4
	l.sfltu	r21, r19
	l.addi	r17, r5, -1
	l.bnf	.L498
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L492
	 l.nop

	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
.L489:
	l.addi	r17, r17, -4
	l.lwz	r23, 0(r19)
	l.sfne	r4, r19
	l.sw	4(r17), r23
	l.bf	.L489
	l.addi	r19, r19, -4
.L492:
	l.jr	r9
	 l.nop

.L498:
	l.sfne	r5, r19
	l.xori	r23, r0, -1
	l.bnf	.L492
	l.or	r19, r3, r3
.L487:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.lwz	r21, 0(r4)
	l.sfne	r17, r23
	l.sw	-4(r19), r21
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
	l.bf	.L500
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L501:
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.sw	0(r19), r4
	l.bf	.L501
	l.addi	r19, r19, 4
.L500:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L507
	l.sfeq	r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.add	r17, r3, r5
	l.bf	.L506
	l.add	r4, r4, r5
.L509:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L509
	l.sb	0(r4), r19
.L506:
	l.jr	r9
	 l.nop

.L507:
	l.bf	.L506
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L506
	 l.nop

	l.addi	r17, r5, -1
	l.ori	r19, r0, 6
	l.sfleu	r17, r19
	l.bf	.L510
	l.addi	r17, r3, 1
	l.or	r17, r4, r3
	l.andi	r17, r17, 3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L510
	l.addi	r17, r3, 1
	l.sub	r19, r4, r17
	l.ori	r21, r0, 2
	l.sfleu	r19, r21
	l.bf	.L510
	l.srl	r23, r5, r21
	l.sll	r23, r23, r21
	l.or	r17, r4, r4
	l.add	r21, r3, r23
.L511:
	l.lwz	r19, 0(r3)
	l.addi	r3, r3, 4
	l.sw	0(r17), r19
	l.sfne	r21, r3
	l.bf	.L511
	l.addi	r17, r17, 4
	l.sfeq	r5, r23
	l.add	r4, r4, r23
	l.bf	.L506
	l.sub	r17, r5, r23
	l.lbs	r19, 0(r21)
	l.sb	0(r4), r19
	l.ori	r19, r0, 1
	l.sfeq	r17, r19
	l.bf	.L506
	 l.nop

	l.lbs	r19, 1(r21)
	l.sb	1(r4), r19
	l.ori	r19, r0, 2
	l.sfeq	r17, r19
	l.bf	.L506
	 l.nop

	l.lbs	r17, 2(r21)
	l.jr	r9
	l.sb	2(r4), r17
.L510:
	l.j	.L514
	l.add	r3, r3, r5
.L534:
	l.addi	r17, r17, 1
.L514:
	l.lbs	r19, -1(r17)
	l.sfne	r17, r3
	l.sb	0(r4), r19
	l.bf	.L534
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
	l.bnf	.L536
	l.sll	r12, r4, r5
	l.or	r11, r23, r23
.L536:
	l.bnf	.L537
	 l.nop

	l.movhi	r12, hi(0)
.L537:
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
	l.bnf	.L538
	l.srl	r3, r3, r5
	l.or	r4, r19, r19
.L538:
	l.bnf	.L539
	 l.nop

	l.movhi	r3, hi(0)
.L539:
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
	l.bnf	.L541
	l.srl	r11, r3, r5
	l.or	r12, r23, r23
.L541:
	l.bnf	.L542
	 l.nop

	l.movhi	r11, hi(0)
.L542:
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
	l.bnf	.L543
	l.sll	r4, r4, r5
	l.or	r3, r19, r19
.L543:
	l.bnf	.L544
	 l.nop

	l.movhi	r4, hi(0)
.L544:
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
	l.j	.L559
	l.ori	r19, r0, 32
.L562:
	l.sfne	r11, r19
	l.bnf	.L561
	 l.nop

.L559:
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L562
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L561:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L566
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L563
	 l.nop

	l.ori	r11, r0, 1
.L565:
	l.ori	r17, r0, 1
	l.sra	r3, r3, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L565
	l.addi	r11, r11, 1
.L563:
	l.jr	r9
	 l.nop

.L566:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	l.jr	r9
	l.movhi	r11, hi(0)
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
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r20, r3, r3
	l.jal	__addsf3
	l.sw	4(r1), r18
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L575
	l.sfges	r16, r17
	l.bnf	.L590
	l.movhi	r18, hi(1073741824)
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L592
	l.ori	r17, r0, 31
.L579:
	l.or	r3, r20, r20
.L591:
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
.L578:
	l.ori	r17, r0, 31
.L592:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L593
	l.or	r11, r20, r20
.L580:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L579
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L580
	l.sra	r16, r17, r19
.L575:
	l.or	r11, r20, r20
.L593:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L590:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L578
	l.movhi	r18, hi(1056964608)
	l.j	.L591
	l.or	r3, r20, r20
	.size	ldexpf, .-ldexpf
	.section	.rodata
	.align 4
.LC4:
	.long	1073741824
	.long	0
	.align 4
.LC5:
	.long	1071644672
	.long	0
	.section	.text
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	l.addi	r1, r1, -24
	l.or	r6, r4, r4
	l.sw	8(r1), r16
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.or	r18, r4, r4
	l.sw	20(r1), r9
	l.jal	__adddf3
	l.or	r20, r3, r3
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r11, r11
	l.jal	__nedf2
	l.or	r4, r12, r12
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L595
	l.sfges	r16, r17
	l.bnf	.L610
	l.movhi	r17, ha(.LC4+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC4+4)(r17)
.L597:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L611
	l.ori	r17, r0, 31
.L599:
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
.L611:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L612
	l.or	r11, r20, r20
.L600:
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
	l.bf	.L599
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L600
	l.sra	r16, r17, r19
.L595:
	l.or	r11, r20, r20
.L612:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L610:
	l.movhi	r17, ha(.LC5+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L597
	l.lwz	r6, lo(.LC5+4)(r17)
	.size	ldexp, .-ldexp
	.section	.rodata
	.align 4
.LC6:
	.long	1071644672
	.long	0
	.align 4
.LC7:
	.long	1073741824
	.long	0
	.section	.text
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	l.addi	r1, r1, -24
	l.or	r6, r4, r4
	l.sw	8(r1), r16
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.sw	12(r1), r18
	l.sw	16(r1), r20
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.jal	__adddf3
	l.or	r18, r4, r4
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.or	r3, r20, r20
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L614
	l.sfges	r16, r17
	l.bnf	.L629
	l.movhi	r17, ha(.LC7+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC7+4)(r17)
.L616:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L630
	l.ori	r17, r0, 31
.L618:
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
.L630:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L631
	l.or	r11, r20, r20
.L619:
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
	l.bf	.L618
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L619
	l.sra	r16, r17, r19
.L614:
	l.or	r11, r20, r20
.L631:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L629:
	l.movhi	r17, ha(.LC6+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L616
	l.lwz	r6, lo(.LC6+4)(r17)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L633
	l.or	r11, r3, r3
	l.addi	r17, r5, -1
	l.ori	r21, r0, 3
	l.sfleu	r17, r21
	l.bf	.L634
	 l.nop

	l.or	r17, r3, r4
	l.and	r17, r17, r21
	l.sfne	r17, r19
	l.bf	.L634
	 l.nop

	l.ori	r17, r0, 2
	l.srl	r25, r5, r17
	l.sll	r25, r25, r17
	l.add	r23, r4, r25
	l.or	r17, r3, r3
.L635:
	l.lwz	r21, 0(r17)
	l.lwz	r19, 0(r4)
	l.addi	r4, r4, 4
	l.xor	r19, r19, r21
	l.sw	0(r17), r19
	l.sfne	r23, r4
	l.bf	.L635
	l.addi	r17, r17, 4
	l.sfeq	r5, r25
	l.add	r17, r11, r25
	l.bf	.L633
	l.sub	r21, r5, r25
	l.lbz	r19, 0(r17)
	l.lbz	r25, 0(r23)
	l.xor	r19, r19, r25
	l.sb	0(r17), r19
	l.ori	r19, r0, 1
	l.sfeq	r21, r19
	l.bf	.L633
	 l.nop

	l.lbz	r25, 1(r17)
	l.lbz	r19, 1(r23)
	l.xor	r19, r19, r25
	l.sb	1(r17), r19
	l.ori	r19, r0, 2
	l.sfeq	r21, r19
	l.bf	.L633
	 l.nop

	l.lbz	r21, 2(r17)
	l.lbz	r19, 2(r23)
	l.xor	r19, r19, r21
	l.sb	2(r17), r19
.L633:
	l.jr	r9
	 l.nop

.L634:
	l.add	r5, r4, r5
	l.or	r17, r11, r11
.L637:
	l.lbz	r21, 0(r17)
	l.lbz	r19, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.sb	0(r17), r19
	l.bf	.L637
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
	l.bf	.L658
	l.or	r17, r3, r3
.L646:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L646
	l.addi	r17, r17, 1
	l.movhi	r19, hi(0)
.L658:
	l.sfne	r5, r19
	l.bf	.L647
	 l.nop

	l.j	.L657
	l.sb	0(r17), r0
.L649:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L648
	 l.nop

.L647:
	l.lbs	r19, 0(r4)
	l.movhi	r21, hi(0)
	l.sb	0(r17), r19
	l.sfne	r19, r21
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L649
	l.addi	r17, r17, 1
	l.jr	r9
	 l.nop

.L648:
	l.sb	0(r17), r0
.L657:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L659
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L667:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L662
	 l.nop

.L659:
	l.jr	r9
	 l.nop

.L662:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L667
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
	l.bnf	.L673
	l.or	r11, r3, r3
.L669:
	l.j	.L672
	l.or	r17, r4, r4
.L671:
	l.sfeq	r19, r21
	l.bf	.L670
	 l.nop

.L672:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L671
	l.addi	r17, r17, 1
	l.lbs	r21, 1(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L669
	l.addi	r11, r11, 1
.L673:
	l.movhi	r11, hi(0)
.L670:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L677:
	l.lbs	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L680
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L680:
	l.sfne	r17, r19
	l.bf	.L677
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
	l.bf	.L692
	l.or	r17, r4, r4
.L683:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L683
	l.addi	r17, r17, 1
	l.sfeq	r17, r4
	l.bf	.L692
	l.sub	r29, r17, r4
	l.andi	r31, r25, 0xff
	l.j	.L689
	l.addi	r29, r29, -1
.L702:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L701
	l.addi	r3, r3, 1
.L689:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r25
	l.bnf	.L702
	l.or	r21, r31, r31
	l.add	r27, r3, r29
	l.or	r19, r4, r4
	l.j	.L685
	l.or	r17, r3, r3
.L703:
	l.bf	.L686
	l.addi	r17, r17, 1
	l.sfeq	r23, r21
	l.bnf	.L686
	 l.nop

	l.lbz	r21, 0(r17)
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L686
	l.addi	r19, r19, 1
.L685:
	l.lbz	r23, 0(r19)
	l.movhi	r13, hi(0)
	l.sfeq	r23, r13
	l.bnf	.L703
	l.sfeq	r17, r27
.L686:
	l.lbz	r17, 0(r19)
	l.sfeq	r17, r21
	l.bf	.L692
	 l.nop

	l.j	.L689
	l.addi	r3, r3, 1
.L701:
	l.jr	r9
	l.movhi	r11, hi(0)
.L692:
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
	l.bf	.L715
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
	l.bf	.L716
	l.movhi	r17, hi(-2147483648)
.L708:
	l.or	r11, r16, r16
.L717:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L715:
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L717
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L716:
	l.j	.L708
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L718
	l.or	r11, r3, r3
	l.sfltu	r4, r6
	l.bf	.L729
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L729
	l.addi	r6, r6, -1
	l.lbs	r31, 0(r5)
	l.j	.L724
	l.addi	r5, r5, 1
.L728:
	l.or	r11, r27, r27
.L720:
	l.sfgeu	r25, r11
	l.bnf	.L729
	 l.nop

.L724:
	l.lbs	r17, 0(r11)
	l.sfne	r17, r31
	l.bf	.L728
	l.addi	r27, r11, 1
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L718
	l.or	r19, r5, r5
.L723:
	l.or	r17, r27, r27
	l.j	.L721
	l.add	r29, r27, r6
.L722:
	l.sfeq	r17, r29
	l.bf	.L718
	 l.nop

.L721:
	l.lbz	r23, 0(r17)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r17, r17, 1
	l.bf	.L722
	l.addi	r19, r19, 1
	l.sfgtu	r27, r25
	l.bf	.L729
	 l.nop

	l.lbs	r17, 0(r27)
	l.sfne	r17, r31
	l.bf	.L720
	l.addi	r11, r27, 1
	l.or	r17, r27, r27
	l.or	r19, r5, r5
	l.or	r27, r11, r11
	l.j	.L723
	l.or	r11, r17, r17
.L729:
	l.movhi	r11, hi(0)
.L718:
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
	l.bf	.L735
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L735:
	l.add	r11, r18, r16
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 4
.LC10:
	.long	-1074790400
	.long	0
	.align 4
.LC11:
	.long	-1075838976
	.long	0
	.align 4
.LC12:
	.long	1072693248
	.long	0
	.align 4
.LC13:
	.long	1071644672
	.long	0
	.align 4
.LC14:
	.long	1073741824
	.long	0
	.align 4
.LC15:
	.long	1070596096
	.long	0
	.section	.text
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	l.addi	r1, r1, -40
	l.sw	28(r1), r30
	l.movhi	r6, hi(0)
	l.or	r30, r5, r5
	l.movhi	r5, hi(0)
	l.sw	4(r1), r18
	l.sw	12(r1), r22
	l.sw	32(r1), r2
	l.sw	0(r1), r14
	l.sw	8(r1), r20
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	36(r1), r9
	l.or	r2, r3, r3
	l.or	r18, r4, r4
	l.jal	__ltdf2
	l.movhi	r22, hi(0)
	l.sflts	r11, r22
	l.bf	.L763
	l.movhi	r17, ha(.LC12+4)
	l.movhi	r5, hi(1072693248)
	l.or	r3, r2, r2
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.jal	__gedf2
	l.lwz	r6, lo(.LC12+4)(r17)
	l.sfges	r11, r20
	l.bnf	.L764
	l.movhi	r14, hi(0)
.L743:
	l.movhi	r21, ha(.LC13)
	l.movhi	r17, ha(.LC14)
	l.addi	r17, r17, lo(.LC14)
	l.addi	r19, r21, lo(.LC13)
	l.movhi	r20, hi(0)
	l.lwz	r28, lo(.LC13)(r21)
	l.lwz	r26, 0(r17)
	l.lwz	r24, 4(r17)
	l.lwz	r22, 4(r19)
.L749:
	l.or	r3, r2, r2
	l.or	r4, r18, r18
	l.or	r5, r28, r28
	l.jal	__muldf3
	l.or	r6, r22, r22
	l.or	r3, r2, r2
	l.or	r4, r18, r18
	l.or	r5, r26, r26
	l.or	r6, r24, r24
	l.or	r2, r11, r11
	l.jal	__gedf2
	l.or	r18, r12, r12
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L749
	l.addi	r20, r20, 1
	l.movhi	r17, hi(0)
	l.sfeq	r14, r17
.L766:
	l.bf	.L756
	l.sw	0(r30), r20
	l.movhi	r17, hi(-2147483648)
	l.xor	r11, r2, r17
.L740:
	l.or	r12, r18, r18
	l.lwz	r14, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r30, 28(r1)
	l.lwz	r2, 32(r1)
	l.lwz	r9, 36(r1)
	l.jr	r9
	l.addi	r1, r1, 40
.L764:
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1071644672)
	l.or	r3, r2, r2
	l.or	r4, r18, r18
	l.jal	__ltdf2
	l.lwz	r6, lo(.LC13+4)(r17)
	l.sflts	r11, r20
	l.bnf	.L746
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r2, r2
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bf	.L755
	l.or	r20, r2, r2
.L746:
	l.sw	0(r30), r0
	l.j	.L740
	l.or	r11, r2, r2
.L763:
	l.movhi	r17, hi(-2147483648)
	l.movhi	r5, hi(-1074790400)
	l.or	r3, r2, r2
	l.or	r4, r18, r18
	l.xor	r20, r2, r17
	l.movhi	r17, ha(.LC10+4)
	l.jal	__ledf2
	l.lwz	r6, lo(.LC10+4)(r17)
	l.sfles	r11, r22
	l.bnf	.L765
	l.ori	r14, r0, 1
	l.j	.L743
	l.or	r2, r20, r20
.L756:
	l.j	.L740
	l.or	r11, r2, r2
.L765:
	l.movhi	r17, ha(.LC11+4)
	l.movhi	r5, hi(-1075838976)
	l.or	r3, r2, r2
	l.or	r4, r18, r18
	l.jal	__gtdf2
	l.lwz	r6, lo(.LC11+4)(r17)
	l.sfgts	r11, r22
	l.bnf	.L746
	l.ori	r14, r0, 1
.L744:
	l.movhi	r17, ha(.LC15)
	l.addi	r17, r17, lo(.LC15)
	l.or	r2, r20, r20
	l.movhi	r20, hi(0)
	l.lwz	r24, 0(r17)
	l.lwz	r22, 4(r17)
.L751:
	l.or	r5, r2, r2
	l.or	r6, r18, r18
	l.or	r3, r2, r2
	l.jal	__adddf3
	l.or	r4, r18, r18
	l.or	r3, r2, r2
	l.or	r4, r18, r18
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r2, r11, r11
	l.jal	__ltdf2
	l.or	r18, r12, r12
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L751
	l.addi	r20, r20, -1
	l.j	.L766
	l.sfeq	r14, r17
.L755:
	l.j	.L744
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
	l.bf	.L767
	l.movhi	r12, hi(0)
.L770:
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
	l.bf	.L773
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L773:
	l.sfltu	r21, r6
	l.or	r4, r23, r4
	l.srl	r3, r3, r27
	l.add	r11, r11, r17
	l.bf	.L774
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L774:
	l.or	r17, r3, r4
	l.or	r12, r19, r19
	l.movhi	r19, hi(0)
	l.add	r5, r5, r5
	l.sfne	r17, r19
	l.add	r11, r25, r11
	l.add	r5, r23, r5
	l.bf	.L770
	l.or	r6, r21, r21
.L767:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bf	.L776
	l.ori	r17, r0, 1
	l.j	.L782
	l.movhi	r11, hi(0)
.L780:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L778
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L779
	 l.nop

.L776:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L780
	l.addi	r11, r11, -1
.L777:
	l.movhi	r11, hi(0)
.L782:
	l.sfltu	r3, r4
.L794:
	l.bf	.L793
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L793:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L794
	l.sfltu	r3, r4
.L779:
	l.movhi	r17, hi(0)
.L795:
	l.sfne	r5, r17
	l.bnf	.L792
	 l.nop

	l.or	r11, r3, r3
.L792:
	l.jr	r9
	 l.nop

.L778:
	l.sfeq	r17, r19
	l.bnf	.L777
	l.movhi	r11, hi(0)
	l.j	.L795
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
	l.bf	.L798
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
.L798:
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
	l.bnf	.L812
	l.xor	r4, r4, r21
.L807:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L812:
	l.sfne	r19, r17
	l.bf	.L807
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
	l.bf	.L813
	l.movhi	r11, hi(0)
.L815:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L815
	l.add	r4, r4, r4
.L813:
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
	l.bnf	.L822
	l.and	r27, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L849
	l.movhi	r17, hi(0)
.L822:
	l.movhi	r17, hi(0)
	l.sfne	r25, r17
	l.bnf	.L850
	l.ori	r17, r0, 3
	l.sll	r25, r25, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r25, r25, r4
.L825:
	l.lwz	r23, 0(r17)
	l.lwz	r21, 4(r17)
	l.addi	r17, r17, 8
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.sfne	r17, r25
	l.bf	.L825
	l.addi	r19, r19, 8
	l.sfleu	r5, r27
	l.bf	.L818
	l.sub	r29, r5, r27
	l.addi	r17, r29, -1
	l.ori	r19, r0, 6
	l.sfleu	r17, r19
	l.bf	.L848
	l.addi	r21, r27, 1
	l.add	r19, r3, r27
	l.add	r21, r4, r21
	l.sub	r21, r19, r21
	l.ori	r23, r0, 2
	l.sfleu	r21, r23
	l.bf	.L827
	l.add	r17, r4, r27
	l.or	r21, r17, r19
	l.andi	r21, r21, 3
	l.movhi	r25, hi(0)
	l.sfne	r21, r25
	l.bf	.L827
	l.srl	r25, r29, r23
	l.sll	r25, r25, r23
	l.add	r23, r17, r25
.L828:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L828
	l.addi	r19, r19, 4
	l.sfeq	r29, r25
	l.bf	.L818
	l.add	r27, r27, r25
	l.add	r17, r4, r27
	l.lbs	r21, 0(r17)
	l.add	r19, r3, r27
	l.addi	r17, r27, 1
	l.sfleu	r5, r17
	l.bf	.L818
	l.sb	0(r19), r21
	l.add	r19, r4, r17
	l.lbs	r19, 0(r19)
	l.add	r17, r3, r17
	l.addi	r27, r27, 2
	l.sfleu	r5, r27
	l.bf	.L818
	l.sb	0(r17), r19
	l.add	r4, r4, r27
	l.lbs	r17, 0(r4)
	l.add	r3, r3, r27
	l.sb	0(r3), r17
.L818:
	l.jr	r9
	 l.nop

.L849:
	l.sfne	r5, r17
	l.xori	r21, r0, -1
	l.bnf	.L818
	l.addi	r5, r5, -1
.L823:
	l.add	r19, r4, r5
	l.add	r17, r3, r5
	l.lbs	r19, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L823
	l.sb	0(r17), r19
	l.jr	r9
	 l.nop

.L850:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L818
	 l.nop

.L848:
	l.add	r19, r3, r27
	l.add	r17, r4, r27
.L827:
	l.add	r4, r4, r5
.L830:
	l.lbs	r21, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r19), r21
	l.sfne	r17, r4
	l.bf	.L830
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
	l.bnf	.L855
	l.srl	r27, r5, r17
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L877
	l.movhi	r17, hi(0)
.L855:
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bnf	.L854
	l.addi	r17, r27, -1
	l.ori	r19, r0, 8
	l.sfleu	r17, r19
	l.bf	.L858
	l.or	r17, r4, r3
	l.andi	r17, r17, 3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L858
	l.addi	r17, r4, 2
	l.sfeq	r3, r17
	l.bf	.L858
	l.ori	r17, r0, 2
	l.srl	r25, r5, r17
	l.sll	r23, r25, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r23, r23, r4
.L859:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L859
	l.addi	r19, r19, 4
	l.add	r25, r25, r25
	l.sfeq	r27, r25
	l.bf	.L854
	l.add	r25, r25, r25
	l.add	r17, r4, r25
	l.lhs	r17, 0(r17)
	l.add	r25, r3, r25
	l.sh	0(r25), r17
.L854:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L851
	l.add	r4, r4, r5
	l.lbs	r19, -1(r4)
.L880:
	l.add	r3, r3, r5
	l.sb	-1(r3), r19
.L851:
	l.jr	r9
	 l.nop

.L877:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L851
	l.addi	r17, r5, -1
.L856:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L856
	l.sb	0(r19), r21
	l.jr	r9
	 l.nop

.L858:
	l.add	r27, r27, r27
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r27, r27, r4
.L861:
	l.lhs	r21, 0(r17)
	l.addi	r17, r17, 2
	l.sh	0(r19), r21
	l.sfne	r27, r17
	l.bf	.L861
	l.addi	r19, r19, 2
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L851
	l.add	r4, r4, r5
	l.j	.L880
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
	l.bnf	.L885
	l.and	r25, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L912
	l.movhi	r17, hi(0)
.L885:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bnf	.L913
	l.ori	r17, r0, 2
	l.sll	r23, r23, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r23, r23, r4
.L888:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L888
	l.addi	r19, r19, 4
	l.sfleu	r5, r25
	l.bf	.L881
	l.sub	r29, r5, r25
	l.addi	r17, r29, -1
	l.ori	r19, r0, 6
	l.sfleu	r17, r19
	l.bf	.L911
	l.addi	r21, r25, 1
	l.add	r19, r3, r25
	l.add	r21, r4, r21
	l.sub	r21, r19, r21
	l.ori	r23, r0, 2
	l.sfleu	r21, r23
	l.bf	.L890
	l.add	r17, r4, r25
	l.or	r21, r17, r19
	l.andi	r21, r21, 3
	l.movhi	r27, hi(0)
	l.sfne	r21, r27
	l.bf	.L890
	l.srl	r27, r29, r23
	l.sll	r27, r27, r23
	l.add	r23, r17, r27
.L891:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L891
	l.addi	r19, r19, 4
	l.sfeq	r29, r27
	l.bf	.L881
	l.add	r25, r25, r27
	l.add	r17, r4, r25
	l.lbs	r21, 0(r17)
	l.add	r19, r3, r25
	l.addi	r17, r25, 1
	l.sfleu	r5, r17
	l.bf	.L881
	l.sb	0(r19), r21
	l.add	r19, r4, r17
	l.lbs	r19, 0(r19)
	l.add	r17, r3, r17
	l.addi	r25, r25, 2
	l.sfleu	r5, r25
	l.bf	.L881
	l.sb	0(r17), r19
	l.add	r4, r4, r25
	l.lbs	r17, 0(r4)
	l.add	r3, r3, r25
	l.sb	0(r3), r17
.L881:
	l.jr	r9
	 l.nop

.L912:
	l.sfne	r5, r17
	l.xori	r21, r0, -1
	l.bnf	.L881
	l.addi	r5, r5, -1
.L886:
	l.add	r19, r4, r5
	l.add	r17, r3, r5
	l.lbs	r19, 0(r19)
	l.addi	r5, r5, -1
	l.sfne	r5, r21
	l.bf	.L886
	l.sb	0(r17), r19
	l.jr	r9
	 l.nop

.L913:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L881
	 l.nop

.L911:
	l.add	r19, r3, r25
	l.add	r17, r4, r25
.L890:
	l.add	r4, r4, r5
.L893:
	l.lbs	r21, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r19), r21
	l.sfne	r17, r4
	l.bf	.L893
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
	l.bf	.L927
	l.ori	r17, r0, 14
	l.sra	r11, r3, r17
	l.sfne	r11, r19
	l.bf	.L924
	l.ori	r17, r0, 13
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L928
	l.ori	r17, r0, 12
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L929
	l.ori	r17, r0, 11
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L930
	l.ori	r17, r0, 10
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L931
	l.ori	r17, r0, 9
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L932
	l.ori	r17, r0, 8
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L933
	l.ori	r17, r0, 7
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L934
	l.ori	r17, r0, 6
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L935
	l.ori	r17, r0, 5
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L936
	l.ori	r17, r0, 4
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L937
	l.ori	r17, r0, 3
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L938
	l.ori	r17, r0, 2
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L939
	l.ori	r17, r0, 1
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L940
	l.sfeq	r3, r19
	l.bnf	.L943
	l.ori	r11, r0, 16
.L924:
	l.jr	r9
	 l.nop

.L927:
	l.jr	r9
	l.movhi	r11, hi(0)
.L938:
	l.jr	r9
	l.ori	r11, r0, 12
.L943:
	l.jr	r9
	l.ori	r11, r0, 15
.L928:
	l.jr	r9
	l.ori	r11, r0, 2
.L929:
	l.jr	r9
	l.ori	r11, r0, 3
.L930:
	l.jr	r9
	l.ori	r11, r0, 4
.L931:
	l.jr	r9
	l.ori	r11, r0, 5
.L932:
	l.jr	r9
	l.ori	r11, r0, 6
.L933:
	l.jr	r9
	l.ori	r11, r0, 7
.L934:
	l.jr	r9
	l.ori	r11, r0, 8
.L935:
	l.jr	r9
	l.ori	r11, r0, 9
.L936:
	l.jr	r9
	l.ori	r11, r0, 10
.L937:
	l.jr	r9
	l.ori	r11, r0, 11
.L939:
	l.jr	r9
	l.ori	r11, r0, 13
.L940:
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
	l.bf	.L947
	l.andi	r3, r3, 0xffff
	l.andi	r17, r3, 2
	l.sfne	r17, r19
	l.bf	.L948
	l.andi	r17, r3, 4
	l.sfne	r17, r19
	l.bf	.L949
	l.andi	r17, r3, 8
	l.sfne	r17, r19
	l.bf	.L950
	l.andi	r17, r3, 16
	l.sfne	r17, r19
	l.bf	.L951
	l.andi	r17, r3, 32
	l.sfne	r17, r19
	l.bf	.L952
	l.andi	r17, r3, 64
	l.sfne	r17, r19
	l.bf	.L953
	l.andi	r17, r3, 128
	l.sfne	r17, r19
	l.bf	.L954
	l.andi	r17, r3, 256
	l.sfne	r17, r19
	l.bf	.L955
	l.andi	r17, r3, 512
	l.sfne	r17, r19
	l.bf	.L956
	l.andi	r17, r3, 1024
	l.sfne	r17, r19
	l.bf	.L957
	l.andi	r17, r3, 2048
	l.sfne	r17, r19
	l.bf	.L958
	l.andi	r17, r3, 4096
	l.sfne	r17, r19
	l.bf	.L959
	l.andi	r17, r3, 8192
	l.sfne	r17, r19
	l.bf	.L960
	l.andi	r17, r3, 16384
	l.sfne	r17, r19
	l.bf	.L961
	l.ori	r17, r0, 15
	l.sra	r3, r3, r17
	l.sfeq	r3, r19
	l.bnf	.L964
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L947:
	l.jr	r9
	l.movhi	r11, hi(0)
.L948:
	l.jr	r9
	l.ori	r11, r0, 1
.L959:
	l.jr	r9
	l.ori	r11, r0, 12
.L964:
	l.jr	r9
	l.or	r11, r17, r17
.L949:
	l.jr	r9
	l.ori	r11, r0, 2
.L950:
	l.jr	r9
	l.ori	r11, r0, 3
.L951:
	l.jr	r9
	l.ori	r11, r0, 4
.L952:
	l.jr	r9
	l.ori	r11, r0, 5
.L953:
	l.jr	r9
	l.ori	r11, r0, 6
.L954:
	l.jr	r9
	l.ori	r11, r0, 7
.L955:
	l.jr	r9
	l.ori	r11, r0, 8
.L956:
	l.jr	r9
	l.ori	r11, r0, 9
.L957:
	l.jr	r9
	l.ori	r11, r0, 10
.L958:
	l.jr	r9
	l.ori	r11, r0, 11
.L960:
	l.jr	r9
	l.ori	r11, r0, 13
.L961:
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
	l.bf	.L972
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L972:
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
	l.bf	.L975
	l.movhi	r11, hi(0)
.L977:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
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
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
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
	l.ori	r11, r0, 32
	l.bf	.L987
	l.ori	r17, r0, 1
	l.j	.L993
	l.movhi	r11, hi(0)
.L991:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L989
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L990
	 l.nop

.L987:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L991
	l.addi	r11, r11, -1
.L988:
	l.movhi	r11, hi(0)
.L993:
	l.sfltu	r3, r4
.L1005:
	l.bf	.L1004
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L1004:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1005
	l.sfltu	r3, r4
.L990:
	l.movhi	r17, hi(0)
.L1006:
	l.sfne	r5, r17
	l.bnf	.L1003
	 l.nop

	l.or	r11, r3, r3
.L1003:
	l.jr	r9
	 l.nop

.L989:
	l.sfeq	r17, r19
	l.bnf	.L988
	l.movhi	r11, hi(0)
	l.j	.L1006
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
	l.bf	.L1010
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L1013
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L1013:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L1010:
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
	l.bf	.L1017
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L1020
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1020:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L1017:
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
	l.bnf	.L1039
	l.sfeq	r4, r17
	l.bf	.L1031
	l.movhi	r21, hi(0)
.L1027:
	l.ori	r19, r0, 32
	l.j	.L1030
	l.movhi	r11, hi(0)
.L1040:
	l.sfne	r19, r17
	l.bnf	.L1041
	l.movhi	r17, hi(0)
.L1030:
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
	l.bnf	.L1040
	l.add	r3, r3, r3
	l.movhi	r17, hi(0)
.L1041:
	l.sfeq	r21, r17
	l.bf	.L1025
	 l.nop

	l.sub	r11, r0, r11
.L1025:
	l.jr	r9
	 l.nop

.L1039:
	l.sub	r4, r0, r4
	l.j	.L1027
	l.ori	r21, r0, 1
.L1031:
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
	l.movhi	r23, hi(0)
.L1043:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1062
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.or	r23, r17, r17
	l.sfgtu	r3, r4
.L1062:
	l.or	r21, r3, r3
	l.ori	r19, r0, 32
	l.bf	.L1045
	l.ori	r17, r0, 1
	l.j	.L1051
	l.movhi	r11, hi(0)
.L1048:
	l.movhi	r25, hi(0)
	l.sfne	r19, r25
	l.bnf	.L1049
	 l.nop

.L1045:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L1048
	l.add	r17, r17, r17
.L1049:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1047
	l.movhi	r11, hi(0)
	l.movhi	r11, hi(0)
.L1051:
	l.sfltu	r21, r4
.L1064:
	l.bf	.L1063
	l.ori	r19, r0, 1
	l.sub	r21, r21, r4
	l.or	r11, r11, r17
.L1063:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1064
	l.sfltu	r21, r4
.L1047:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L1042
	 l.nop

	l.sub	r11, r0, r11
.L1042:
	l.jr	r9
	 l.nop

.L1061:
	l.sub	r3, r0, r3
	l.j	.L1043
	l.ori	r23, r0, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1084
	 l.nop

	l.movhi	r21, hi(0)
.L1066:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L1067
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1067:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bf	.L1068
	l.ori	r17, r0, 1
	l.j	.L1086
	l.ori	r19, r0, 1
.L1071:
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bnf	.L1072
	 l.nop

.L1068:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L1071
	l.add	r17, r17, r17
.L1072:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1085
	l.ori	r19, r0, 1
.L1086:
	l.sfltu	r11, r4
	l.bf	.L1073
	l.srl	r17, r17, r19
	l.sub	r11, r11, r4
.L1073:
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1086
	l.ori	r19, r0, 1
.L1070:
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bf	.L1065
	 l.nop

	l.sub	r11, r0, r11
.L1065:
	l.jr	r9
	 l.nop

.L1084:
	l.sub	r3, r0, r3
	l.j	.L1066
	l.ori	r21, r0, 1
.L1085:
	l.j	.L1070
	l.or	r11, r3, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.bnf	.L1204
	l.ori	r23, r0, 16
	l.sll	r17, r4, r23
	l.movhi	r21, hi(0)
	l.sflts	r17, r21
	l.bf	.L1090
	l.add	r17, r4, r4
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1091
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1092
	 l.nop

	l.ori	r17, r0, 2
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1093
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1094
	l.ori	r19, r0, 1
	l.ori	r17, r0, 3
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1095
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1096
	l.ori	r19, r0, 1
	l.ori	r17, r0, 4
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1097
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1098
	l.ori	r19, r0, 1
	l.ori	r17, r0, 5
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1099
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1100
	l.ori	r19, r0, 1
	l.ori	r17, r0, 6
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1101
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1102
	l.ori	r19, r0, 1
	l.ori	r17, r0, 7
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1103
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1104
	l.ori	r19, r0, 1
	l.ori	r17, r0, 8
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1105
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1106
	l.ori	r19, r0, 1
	l.ori	r17, r0, 9
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1107
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1108
	l.ori	r19, r0, 1
	l.ori	r17, r0, 10
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1109
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1110
	l.ori	r19, r0, 1
	l.ori	r17, r0, 11
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1111
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1112
	l.ori	r19, r0, 1
	l.ori	r17, r0, 12
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1113
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1114
	l.ori	r19, r0, 1
	l.ori	r17, r0, 13
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1115
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1116
	l.ori	r19, r0, 1
	l.ori	r17, r0, 14
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1117
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1118
	l.ori	r19, r0, 1
	l.ori	r17, r0, 15
	l.sll	r4, r4, r17
	l.andi	r19, r4, 0xffff
	l.sfleu	r11, r19
	l.bf	.L1119
	l.sfeq	r19, r21
	l.bnf	.L1205
	l.ori	r17, r0, 32768
.L1120:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L1202
	 l.nop

	l.or	r11, r19, r19
.L1202:
	l.jr	r9
	 l.nop

.L1107:
	l.sfltu	r11, r17
	l.bf	.L1139
	l.ori	r21, r0, 512
	l.sub	r11, r11, r17
	l.andi	r11, r11, 0xffff
	l.or	r19, r21, r21
.L1122:
	l.ori	r23, r0, 2
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1123
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1123:
	l.ori	r23, r0, 3
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1124
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1124:
	l.ori	r23, r0, 4
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1125
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1125:
	l.ori	r23, r0, 5
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1126
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1126:
	l.ori	r23, r0, 6
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1127
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1127:
	l.ori	r23, r0, 7
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1128
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1128:
	l.ori	r23, r0, 8
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1129
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1129:
	l.ori	r23, r0, 9
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1130
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1130:
	l.ori	r23, r0, 10
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1131
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1131:
	l.ori	r23, r0, 11
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1132
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1132:
	l.ori	r23, r0, 12
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1133
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1133:
	l.ori	r23, r0, 13
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1134
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1134:
	l.ori	r23, r0, 14
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1120
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1135
	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1135:
	l.ori	r23, r0, 15
	l.srl	r17, r17, r23
	l.ori	r23, r0, 16384
	l.sfne	r21, r23
	l.bnf	.L1120
	l.sfltu	r11, r17
	l.bf	.L1142
	l.sub	r17, r11, r17
	l.andi	r11, r17, 0xffff
	l.j	.L1120
	l.ori	r19, r19, 1
.L1142:
	l.j	.L1120
	l.movhi	r11, hi(0)
.L1204:
	l.sfeq	r4, r11
	l.bf	.L1141
	 l.nop

	l.j	.L1120
	l.movhi	r19, hi(0)
.L1090:
	l.sub	r4, r11, r4
	l.andi	r11, r4, 0xffff
	l.j	.L1120
	l.ori	r19, r0, 1
.L1091:
	l.sfltu	r11, r17
	l.bf	.L1144
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 2
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1092:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 2
	l.andi	r11, r11, 0xffff
	l.andi	r4, r4, 32767
	l.ori	r23, r0, 1
	l.or	r19, r21, r21
.L1140:
	l.sfltu	r11, r4
	l.bf	.L1122
	l.sub	r4, r11, r4
	l.andi	r11, r4, 0xffff
	l.j	.L1122
	l.or	r19, r19, r23
.L1093:
	l.sfltu	r11, r17
	l.bf	.L1145
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 4
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1094:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 4
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 2
	l.j	.L1140
	l.or	r19, r21, r21
.L1095:
	l.sfltu	r11, r17
	l.bf	.L1146
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 8
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1096:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 8
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 4
	l.j	.L1140
	l.or	r19, r21, r21
.L1097:
	l.sfltu	r11, r17
	l.bf	.L1147
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 16
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1098:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 16
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 8
	l.j	.L1140
	l.or	r19, r21, r21
.L1099:
	l.sfltu	r11, r17
	l.bf	.L1148
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 32
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1100:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 32
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 16
	l.j	.L1140
	l.or	r19, r21, r21
.L1101:
	l.sfltu	r11, r17
	l.bf	.L1149
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 64
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1102:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 64
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 32
	l.j	.L1140
	l.or	r19, r21, r21
.L1103:
	l.sfltu	r11, r17
	l.bf	.L1150
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 128
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1104:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 128
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 64
	l.j	.L1140
	l.or	r19, r21, r21
.L1106:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 256
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 128
	l.j	.L1140
	l.or	r19, r21, r21
.L1108:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 512
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 256
	l.j	.L1140
	l.or	r19, r21, r21
.L1141:
	l.ori	r19, r0, 1
	l.j	.L1120
	l.movhi	r11, hi(0)
.L1144:
	l.ori	r21, r0, 2
.L1139:
	l.ori	r19, r0, 1
	l.srl	r23, r21, r19
	l.srl	r4, r17, r19
	l.j	.L1140
	l.movhi	r19, hi(0)
.L1110:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 1024
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 512
	l.j	.L1140
	l.or	r19, r21, r21
.L1112:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 2048
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 1024
	l.j	.L1140
	l.or	r19, r21, r21
.L1145:
	l.j	.L1139
	l.ori	r21, r0, 4
.L1146:
	l.j	.L1139
	l.ori	r21, r0, 8
.L1114:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 4096
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 2048
	l.j	.L1140
	l.or	r19, r21, r21
.L1116:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 8192
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 4096
	l.j	.L1140
	l.or	r19, r21, r21
.L1147:
	l.j	.L1139
	l.ori	r21, r0, 16
.L1148:
	l.j	.L1139
	l.ori	r21, r0, 32
.L1118:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 16384
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 8192
	l.j	.L1140
	l.or	r19, r21, r21
.L1119:
	l.ori	r17, r0, 16
	l.sll	r17, r11, r17
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.ori	r17, r0, 32768
	l.bnf	.L1139
	l.or	r21, r17, r17
	l.or	r19, r17, r17
	l.j	.L1122
	l.movhi	r11, hi(0)
.L1149:
	l.j	.L1139
	l.ori	r21, r0, 64
.L1205:
	l.addi	r11, r11, -32768
	l.ori	r4, r0, 16384
	l.andi	r11, r11, 0xffff
	l.or	r23, r4, r4
	l.or	r21, r17, r17
	l.j	.L1140
	l.or	r19, r17, r17
.L1150:
	l.j	.L1139
	l.ori	r21, r0, 128
.L1105:
	l.sfltu	r11, r17
	l.bf	.L1151
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 256
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1151:
	l.j	.L1139
	l.ori	r21, r0, 256
.L1109:
	l.sfltu	r11, r17
	l.bf	.L1153
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 1024
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1117:
	l.sfltu	r11, r17
	l.bf	.L1157
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 16384
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1153:
	l.j	.L1139
	l.ori	r21, r0, 1024
.L1157:
	l.j	.L1139
	l.ori	r21, r0, 16384
.L1115:
	l.sfltu	r11, r17
	l.bf	.L1156
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 8192
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1113:
	l.sfltu	r11, r17
	l.bf	.L1155
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 4096
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1111:
	l.sfltu	r11, r17
	l.bf	.L1154
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 2048
	l.andi	r11, r11, 0xffff
	l.j	.L1122
	l.or	r19, r21, r21
.L1156:
	l.j	.L1139
	l.ori	r21, r0, 8192
.L1155:
	l.j	.L1139
	l.ori	r21, r0, 4096
.L1154:
	l.j	.L1139
	l.ori	r21, r0, 2048
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1207
	l.ori	r17, r0, 1
	l.j	.L1213
	l.movhi	r11, hi(0)
.L1211:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L1209
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L1210
	 l.nop

.L1207:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1211
	l.addi	r11, r11, -1
.L1208:
	l.movhi	r11, hi(0)
.L1213:
	l.sfltu	r3, r4
.L1225:
	l.bf	.L1224
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L1224:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1225
	l.sfltu	r3, r4
.L1210:
	l.movhi	r17, hi(0)
.L1226:
	l.sfne	r5, r17
	l.bnf	.L1223
	 l.nop

	l.or	r11, r3, r3
.L1223:
	l.jr	r9
	 l.nop

.L1209:
	l.sfeq	r17, r19
	l.bnf	.L1208
	l.movhi	r11, hi(0)
	l.j	.L1226
	l.movhi	r17, hi(0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1228
	 l.nop

	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1228:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L1231
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.srl	r17, r4, r17
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r17, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1231:
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
	l.bf	.L1234
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.jr	r9
	l.sra	r12, r3, r5
.L1234:
	l.sfeq	r5, r17
	l.bf	.L1237
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r17, r12
.L1237:
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
	l.bf	.L1242
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1242:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r25
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r29, hi(0)
	l.sfeq	r19, r29
	l.bf	.L1243
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1243:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.ori	r19, r0, 8
	l.sub	r19, r19, r23
	l.srl	r17, r17, r19
	l.andi	r19, r17, 240
	l.sfeq	r19, r29
	l.bf	.L1244
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1244:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.ori	r19, r0, 4
	l.sub	r19, r19, r21
	l.srl	r17, r17, r19
	l.andi	r19, r17, 12
	l.sfeq	r19, r29
	l.bf	.L1245
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1245:
	l.ori	r11, r0, 2
	l.add	r19, r19, r19
	l.sub	r27, r11, r19
	l.srl	r17, r17, r27
	l.add	r23, r23, r25
	l.and	r25, r17, r11
	l.sfeq	r25, r29
	l.add	r21, r21, r23
	l.bf	.L1241
	l.sub	r11, r11, r17
	l.movhi	r11, hi(0)
.L1241:
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1250
	l.sfgts	r3, r5
	l.bf	.L1251
	l.sfltu	r4, r6
	l.bf	.L1250
	l.sfgtu	r4, r6
	l.bf	.L1251
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1250:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1251:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1256
	l.sfgts	r3, r5
	l.bf	.L1255
	l.sfltu	r4, r6
	l.bf	.L1256
	l.sfgtu	r4, r6
	l.bnf	.L1258
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1256:
	l.jr	r9
	l.xori	r11, r0, -1
.L1258:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1255:
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
	l.bf	.L1260
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1260:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.srl	r17, r3, r25
	l.andi	r19, r17, 255
	l.sfeq	r19, r27
	l.bf	.L1261
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1261:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.srl	r17, r17, r23
	l.andi	r19, r17, 15
	l.sfeq	r19, r27
	l.bf	.L1262
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1262:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.srl	r17, r17, r21
	l.andi	r19, r17, 3
	l.sfeq	r19, r27
	l.bf	.L1263
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1263:
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
	l.bf	.L1265
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1267:
	l.jr	r9
	 l.nop

.L1265:
	l.sfeq	r5, r17
	l.bf	.L1268
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r17, r12
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
	l.bf	.L1272
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L1272:
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
	l.bf	.L1276
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1276:
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
	l.bf	.L1277
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1277:
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
	l.bf	.L1278
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1278:
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
.LC17:
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
	l.movhi	r17, ha(.LC17+4)
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.or	r16, r20, r20
	l.movhi	r22, hi(1072693248)
	l.bf	.L1281
	l.lwz	r18, lo(.LC17+4)(r17)
.L1283:
	l.or	r3, r22, r22
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.lwz	r6, 0(r1)
	l.lwz	r5, 4(r1)
.L1281:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1282
	l.sfges	r20, r17
.L1284:
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
	l.bf	.L1283
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1284
	l.sra	r16, r17, r19
.L1282:
	l.bf	.L1288
	l.or	r11, r22, r22
	l.or	r5, r22, r22
	l.or	r6, r18, r18
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.or	r11, r22, r22
.L1288:
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
	l.bf	.L1290
	l.movhi	r20, hi(1065353216)
.L1292:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
.L1290:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1291
	l.sfges	r22, r17
.L1293:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L1292
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1293
	l.sra	r16, r17, r19
.L1291:
	l.bf	.L1297
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.jal	__divsf3
	l.movhi	r3, hi(1065353216)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L1297:
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
	l.bf	.L1302
	l.sfgtu	r3, r5
	l.bf	.L1303
	l.sfltu	r4, r6
	l.bf	.L1302
	l.sfgtu	r4, r6
	l.bf	.L1303
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1302:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1303:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1308
	l.sfgtu	r3, r5
	l.bf	.L1307
	l.sfltu	r4, r6
	l.bf	.L1308
	l.sfgtu	r4, r6
	l.bnf	.L1310
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1308:
	l.jr	r9
	l.xori	r11, r0, -1
.L1310:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1307:
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
	.global	__subdf3
	.global	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
