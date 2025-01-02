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
	l.j	.L25
	l.movhi	r11, hi(0)
.L19:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L18
	l.addi	r3, r3, 1
.L16:
	l.lbz	r17, 0(r4)
	l.sb	0(r3), r17
	l.sfne	r17, r5
	l.addi	r6, r6, -1
	l.bf	.L19
	l.addi	r4, r4, 1
	l.jr	r9
	l.addi	r11, r3, 1
.L18:
	l.movhi	r11, hi(0)
.L25:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L27
	l.andi	r4, r4, 0xff
	l.j	.L32
	l.movhi	r11, hi(0)
.L29:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L30
	l.addi	r3, r3, 1
.L27:
	l.lbz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L29
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L30:
	l.movhi	r11, hi(0)
.L32:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L34
	l.movhi	r11, hi(0)
	l.j	.L41
	 l.nop

.L36:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L38
	l.movhi	r11, hi(0)
.L34:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r11, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.bf	.L36
	l.addi	r4, r4, 1
	l.jr	r9
	l.sub	r11, r11, r17
.L38:
.L41:
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
	l.bf	.L43
	l.or	r16, r3, r3
	l.jal	memcpy
	 l.nop

.L43:
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
	l.j	.L49
	l.addi	r3, r3, -1
.L51:
	l.lbz	r17, 0(r11)
	l.sfeq	r17, r4
	l.bf	.L48
	 l.nop

.L49:
	l.sfne	r5, r3
	l.or	r11, r5, r5
	l.bf	.L51
	l.addi	r5, r5, -1
	l.movhi	r11, hi(0)
.L48:
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
	l.bnf	.L55
	l.or	r16, r3, r3
	l.jal	memset
	l.andi	r4, r4, 0xff
.L55:
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
	l.bf	.L58
	l.or	r11, r3, r3
.L59:
	l.lbs	r17, 1(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.sb	1(r11), r17
	l.addi	r11, r11, 1
	l.bf	.L59
	l.addi	r4, r4, 1
.L58:
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
	l.bf	.L65
	l.andi	r4, r4, 0xff
	l.j	.L64
	 l.nop

.L67:
	l.lbs	r17, 1(r11)
	l.sfeq	r17, r19
	l.bf	.L64
	l.addi	r11, r11, 1
.L65:
	l.andi	r17, r17, 0xff
	l.sfne	r17, r4
	l.bf	.L67
	l.movhi	r19, hi(0)
.L64:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.j	.L73
	l.or	r11, r3, r3
.L76:
	l.sfne	r17, r19
	l.bnf	.L75
	l.addi	r11, r11, 1
.L73:
	l.lbs	r17, 0(r11)
	l.sfeq	r17, r4
	l.bnf	.L76
	l.movhi	r19, hi(0)
	l.jr	r9
	 l.nop

.L75:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L80:
	l.lbs	r17, 0(r3)
	l.lbs	r11, 0(r4)
	l.sfeq	r17, r11
	l.bnf	.L85
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.addi	r3, r3, 1
	l.bf	.L80
	l.addi	r4, r4, 1
	l.movhi	r17, hi(0)
.L79:
	l.andi	r11, r11, 0xff
	l.jr	r9
	l.sub	r11, r17, r11
.L85:
	l.j	.L79
	l.andi	r17, r17, 0xff
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L89
	 l.nop

	l.or	r11, r3, r3
.L88:
	l.lbs	r17, 1(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L88
	l.addi	r11, r11, 1
	l.jr	r9
	l.sub	r11, r11, r3
.L89:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L99
	 l.nop

	l.lbz	r11, 0(r3)
	l.sfne	r11, r17
	l.bnf	.L101
	l.addi	r5, r5, -1
	l.j	.L95
	l.add	r19, r3, r5
.L103:
	l.sfne	r19, r3
	l.bnf	.L94
	l.addi	r3, r3, 1
	l.sfeq	r17, r11
	l.bnf	.L104
	l.sub	r11, r11, r17
	l.lbz	r11, 0(r3)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L102
	 l.nop

	l.or	r4, r21, r21
.L95:
	l.movhi	r21, hi(0)
	l.lbz	r17, 0(r4)
	l.sfne	r17, r21
	l.bf	.L103
	l.addi	r21, r4, 1
.L94:
	l.sub	r11, r11, r17
.L91:
.L104:
	l.jr	r9
	 l.nop

.L99:
	l.jr	r9
	l.movhi	r11, hi(0)
.L102:
	l.lbz	r17, 1(r4)
	l.movhi	r11, hi(0)
	l.j	.L91
	l.sub	r11, r11, r17
.L101:
	l.lbz	r17, 0(r4)
	l.movhi	r11, hi(0)
	l.j	.L91
	l.sub	r11, r11, r17
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r17, r0, 1
	l.sfles	r5, r17
	l.bf	.L105
	l.srl	r5, r5, r17
	l.add	r5, r5, r5
	l.add	r17, r3, r5
.L107:
	l.lbz	r21, 1(r3)
	l.lbz	r19, 0(r3)
	l.addi	r3, r3, 2
	l.sb	0(r4), r21
	l.sb	1(r4), r19
	l.sfne	r3, r17
	l.bf	.L107
	l.addi	r4, r4, 2
.L105:
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
	l.bf	.L110
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L110:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L112
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L112:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L115
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L113
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L113:
	l.jr	r9
	 l.nop

.L115:
	l.jr	r9
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L117
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L117
	 l.nop

	l.movhi	r11, hi(0)
.L117:
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
	l.bf	.L122
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L122:
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
	l.bf	.L124
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L124:
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
	l.bf	.L126
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L126:
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
	l.bf	.L128
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L128:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L131
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bnf	.L133
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L133:
	l.jr	r9
	l.movhi	r11, hi(0)
.L131:
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
	l.bf	.L135
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L135:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L136
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bnf	.L142
	l.addi	r17, r3, -8232
.L136:
	l.jr	r9
	 l.nop

.L142:
	l.sfleu	r17, r11
	l.bf	.L136
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L136
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
	l.bf	.L144
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L144:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L154
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L150
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L150
	l.movhi	r17, hi(-65536)
	l.ori	r19, r17, 8192
	l.add	r19, r3, r19
	l.ori	r21, r0, 8184
	l.sfleu	r19, r21
	l.bf	.L150
	l.ori	r17, r17, 4
	l.movhi	r19, hi(1048576)
	l.add	r17, r3, r17
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L151
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bnf	.L151
	l.ori	r11, r0, 1
.L145:
	l.jr	r9
	 l.nop

.L150:
	l.jr	r9
	l.ori	r11, r0, 1
.L154:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L145
	l.ori	r11, r0, 1
.L151:
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
	l.bf	.L155
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bnf	.L159
	 l.nop

.L155:
	l.jr	r9
	 l.nop

.L159:
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
	l.bf	.L164
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L165
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L170
	l.or	r5, r22, r22
	l.movhi	r17, ha(.LC0+4)
	l.movhi	r11, hi(0)
	l.lwz	r12, lo(.LC0+4)(r17)
.L161:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L170:
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
.L164:
	l.or	r11, r18, r18
	l.j	.L161
	l.or	r12, r16, r16
.L165:
	l.or	r11, r22, r22
	l.j	.L161
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
	l.bf	.L174
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L175
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L180
	l.or	r4, r18, r18
	l.movhi	r11, hi(0)
.L171:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L180:
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.lwz	r9, 12(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L174:
	l.j	.L171
	l.or	r11, r16, r16
.L175:
	l.j	.L171
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
	l.bf	.L189
	l.or	r5, r16, r16
	l.or	r6, r20, r20
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L188
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L183
	l.or	r5, r16, r16
	l.sfne	r19, r24
	l.bnf	.L192
	l.or	r11, r22, r22
.L189:
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
.L183:
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L184
	l.or	r12, r18, r18
	l.or	r12, r20, r20
	l.or	r11, r16, r16
.L191:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L188:
	l.or	r11, r22, r22
.L192:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L184:
	l.or	r16, r22, r22
	l.j	.L191
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
	l.bf	.L199
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L200
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L195
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L193
	l.or	r11, r18, r18
.L199:
	l.or	r11, r16, r16
	l.lwz	r18, 4(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L195:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L193
	l.or	r11, r16, r16
.L200:
	l.or	r11, r18, r18
.L193:
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
	l.and	r17, r16, r17
	l.sfeq	r19, r17
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
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
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
	l.bf	.L223
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L225
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L219
	l.or	r5, r20, r20
	l.sfne	r19, r24
	l.bf	.L228
	l.or	r11, r16, r16
.L223:
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
.L219:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L227
	 l.nop

.L225:
	l.or	r11, r16, r16
.L228:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L227:
	l.or	r16, r20, r20
	l.j	.L225
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
	l.bf	.L235
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L236
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L231
	l.or	r4, r16, r16
	l.sfne	r19, r20
	l.bnf	.L229
	l.or	r11, r16, r16
.L236:
	l.or	r11, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L231:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L229
	l.or	r11, r18, r18
.L235:
	l.or	r11, r16, r16
.L229:
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
	l.and	r17, r20, r17
	l.sfeq	r19, r17
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
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
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
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.movhi	r11, ha(.LANCHOR0)
	l.addi	r11, r11, lo(.LANCHOR0)
	l.sfeq	r3, r17
	l.bf	.L254
	l.or	r19, r11, r11
	l.movhi	r21, ha(.LANCHOR1)
	l.addi	r21, r21, lo(.LANCHOR1)
.L255:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbz	r17, 0(r17)
	l.ori	r23, r0, 6
	l.srl	r3, r3, r23
	l.sb	0(r19), r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L255
	l.addi	r19, r19, 1
.L254:
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
	l.bf	.L260
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L260:
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
	l.bnf	.L269
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	4(r3), r4
	l.sw	0(r3), r17
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L263
	 l.nop

	l.sw	4(r17), r3
.L263:
	l.jr	r9
	 l.nop

.L269:
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
	l.bf	.L279
	l.movhi	r21, hi(0)
	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L279:
	l.lwz	r19, 4(r3)
	l.sfeq	r19, r21
	l.bf	.L270
	 l.nop

	l.sw	0(r19), r17
.L270:
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
	l.bf	.L281
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r16, r4, r4
	l.j	.L283
	l.movhi	r18, hi(0)
.L296:
	l.sfne	r22, r18
	l.bnf	.L298
	l.addi	r17, r22, 1
.L283:
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r14, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L296
	l.add	r16, r16, r20
.L280:
	l.or	r11, r14, r14
.L297:
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
.L281:
	l.addi	r17, r22, 1
.L298:
	l.sw	0(r28), r17
	l.movhi	r17, hi(0)
	l.mul	r22, r20, r22
	l.sfeq	r20, r17
	l.bf	.L280
	l.add	r14, r30, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memmove
	l.or	r3, r14, r14
	l.j	.L297
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
	l.bf	.L300
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r6, r6
	l.or	r24, r7, r7
	l.or	r16, r4, r4
	l.j	.L302
	l.movhi	r18, hi(0)
.L311:
	l.sfne	r28, r18
	l.bnf	.L299
	l.movhi	r26, hi(0)
.L302:
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r20, r20
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.or	r26, r16, r16
	l.addi	r18, r18, 1
	l.bnf	.L311
	l.add	r16, r16, r22
.L299:
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
.L300:
	l.j	.L299
	l.movhi	r26, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L313
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L313:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L321:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L315
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L315
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L316
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L331
	l.addi	r21, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bf	.L326
	l.addi	r3, r3, 1
	l.ori	r27, r0, 1
.L319:
	l.movhi	r19, hi(0)
	l.ori	r25, r0, 9
.L323:
	l.ori	r17, r0, 2
	l.sll	r17, r19, r17
	l.add	r11, r17, r19
	l.add	r11, r11, r11
	l.lbs	r17, 1(r3)
	l.or	r23, r21, r21
	l.sub	r19, r11, r21
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bf	.L323
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bf	.L314
	 l.nop

	l.sub	r19, r23, r11
.L314:
	l.jr	r9
	l.or	r11, r19, r19
.L315:
	l.j	.L321
	l.addi	r3, r3, 1
.L331:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bf	.L319
	l.movhi	r27, hi(0)
.L326:
	l.movhi	r19, hi(0)
.L332:
	l.jr	r9
	l.or	r11, r19, r19
.L316:
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bf	.L319
	l.movhi	r27, hi(0)
	l.j	.L332
	l.movhi	r19, hi(0)
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L338:
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r21
	l.bf	.L334
	l.addi	r19, r17, -9
	l.sfleu	r19, r23
	l.bf	.L334
	 l.nop

	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L335
	l.ori	r19, r0, 45
	l.sfeq	r17, r19
	l.bnf	.L350
	l.addi	r21, r17, -48
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bnf	.L345
	l.ori	r27, r0, 1
.L339:
	l.movhi	r19, hi(0)
	l.ori	r25, r0, 9
.L342:
	l.ori	r17, r0, 2
	l.sll	r17, r19, r17
	l.add	r11, r17, r19
	l.add	r11, r11, r11
	l.lbs	r17, 1(r3)
	l.or	r23, r21, r21
	l.sub	r19, r11, r21
	l.addi	r21, r17, -48
	l.sfleu	r21, r25
	l.bf	.L342
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r27, r17
	l.bf	.L333
	 l.nop

	l.sub	r19, r23, r11
.L333:
	l.jr	r9
	l.or	r11, r19, r19
.L334:
	l.j	.L338
	l.addi	r3, r3, 1
.L350:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bnf	.L351
	l.movhi	r19, hi(0)
.L346:
	l.j	.L339
	l.movhi	r27, hi(0)
.L335:
	l.lbs	r17, 1(r3)
	l.addi	r21, r17, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bnf	.L346
	l.addi	r3, r3, 1
.L345:
	l.movhi	r19, hi(0)
.L351:
	l.jr	r9
	l.or	r11, r19, r19
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.ori	r21, r0, 32
	l.ori	r23, r0, 4
.L359:
	l.lbs	r19, 0(r3)
	l.sfeq	r19, r21
	l.bf	.L353
	l.addi	r17, r19, -9
	l.sfleu	r17, r23
	l.bf	.L353
	 l.nop

	l.ori	r17, r0, 43
	l.sfeq	r19, r17
	l.bf	.L354
	l.ori	r17, r0, 45
	l.sfeq	r19, r17
	l.bnf	.L373
	l.addi	r21, r19, -48
	l.lbs	r19, 1(r3)
	l.addi	r21, r19, -48
	l.ori	r17, r0, 9
	l.sfgtu	r21, r17
	l.bf	.L364
	l.addi	r3, r3, 1
	l.ori	r13, r0, 1
.L357:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.ori	r29, r0, 9
.L361:
	l.ori	r19, r0, 2
	l.sll	r17, r12, r19
	l.add	r23, r17, r12
	l.ori	r25, r0, 30
	l.srl	r12, r12, r25
	l.sll	r19, r11, r19
	l.sfltu	r23, r17
	l.or	r19, r12, r19
	l.add	r25, r23, r23
	l.bf	.L370
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L370:
	l.add	r19, r19, r11
	l.sfltu	r25, r23
	l.add	r11, r17, r19
	l.sub	r12, r25, r21
	l.bf	.L371
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L371:
	l.ori	r19, r0, 31
	l.add	r11, r11, r11
	l.sfgtu	r12, r25
	l.sra	r23, r21, r19
	l.add	r17, r17, r11
	l.lbs	r19, 1(r3)
	l.or	r31, r21, r21
	l.bf	.L372
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L372:
	l.addi	r21, r19, -48
	l.sub	r11, r17, r23
	l.sfleu	r21, r29
	l.addi	r3, r3, 1
	l.bf	.L361
	l.sub	r11, r11, r27
	l.movhi	r19, hi(0)
	l.sfne	r13, r19
	l.bf	.L352
	 l.nop

	l.sub	r12, r31, r25
	l.sfgtu	r12, r31
	l.bf	.L369
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L369:
	l.sub	r23, r23, r17
	l.sub	r11, r23, r11
.L352:
	l.jr	r9
	 l.nop

.L353:
	l.j	.L359
	l.addi	r3, r3, 1
.L373:
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.bf	.L357
	l.movhi	r13, hi(0)
.L364:
	l.movhi	r11, hi(0)
.L374:
	l.jr	r9
	l.movhi	r12, hi(0)
.L354:
	l.lbs	r19, 1(r3)
	l.addi	r21, r19, -48
	l.ori	r17, r0, 9
	l.sfleu	r21, r17
	l.addi	r3, r3, 1
	l.bf	.L357
	l.movhi	r13, hi(0)
	l.j	.L374
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
	l.bf	.L376
	l.sw	28(r1), r9
	l.or	r16, r5, r5
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.j	.L379
	l.or	r24, r7, r7
.L389:
	l.sfeq	r11, r17
	l.bf	.L375
	l.sub	r16, r16, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bnf	.L376
	l.add	r22, r18, r20
.L379:
	l.ori	r17, r0, 1
.L390:
	l.srl	r28, r16, r17
	l.mul	r18, r28, r20
	l.add	r18, r22, r18
	l.or	r4, r18, r18
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L389
	l.addi	r16, r16, -1
	l.or	r16, r28, r28
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bf	.L390
	l.ori	r17, r0, 1
.L376:
	l.movhi	r18, hi(0)
.L375:
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
	l.sfne	r5, r17
	l.bnf	.L395
	l.sw	36(r1), r9
	l.or	r16, r5, r5
	l.or	r28, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.j	.L392
	l.or	r24, r8, r8
.L404:
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bnf	.L395
	l.add	r22, r18, r20
.L392:
	l.ori	r14, r0, 1
.L405:
	l.sra	r30, r16, r14
	l.mul	r18, r30, r20
	l.add	r18, r22, r18
	l.or	r5, r24, r24
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L391
	l.addi	r16, r16, -1
	l.sfles	r11, r17
	l.bnf	.L404
	l.sra	r16, r16, r14
	l.or	r16, r30, r30
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bf	.L405
	l.ori	r14, r0, 1
.L395:
	l.movhi	r18, hi(0)
.L391:
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
	l.bf	.L408
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.bnf	.L411
	l.ori	r11, r0, 1
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L408:
	l.jr	r9
	 l.nop

.L411:
	l.movhi	r11, hi(0)
	l.sub	r3, r0, r3
	l.j	.L408
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
	l.bf	.L415
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L415:
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
	l.bf	.L418
	l.or	r12, r4, r4
	l.sfne	r4, r17
	l.sub	r12, r0, r4
	l.bnf	.L421
	l.ori	r11, r0, 1
	l.sub	r3, r0, r3
	l.sub	r11, r3, r11
.L418:
	l.jr	r9
	 l.nop

.L421:
	l.movhi	r11, hi(0)
	l.sub	r3, r0, r3
	l.j	.L418
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
	l.bf	.L431
	l.sfne	r4, r17
	l.j	.L430
	l.movhi	r11, hi(0)
.L427:
	l.lwz	r17, 4(r3)
	l.sfeq	r17, r19
	l.bf	.L428
	l.addi	r3, r3, 4
	l.sfne	r4, r17
.L431:
	l.bf	.L427
	l.movhi	r19, hi(0)
	l.jr	r9
	l.or	r11, r3, r3
.L428:
	l.movhi	r11, hi(0)
.L430:
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
	l.movhi	r21, hi(0)
	l.j	.L441
	l.sfltu	r17, r19
.L435:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bf	.L434
	l.movhi	r21, hi(0)
.L442:
	l.sfne	r17, r21
	l.addi	r3, r3, 4
	l.bf	.L435
	l.addi	r4, r4, 4
.L434:
	l.sfltu	r17, r19
.L441:
	l.bf	.L432
	l.xori	r11, r0, -1
	l.sfgtu	r17, r19
	l.bnf	.L440
	l.ori	r11, r0, 1
.L432:
	l.jr	r9
	 l.nop

.L440:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L444:
	l.addi	r17, r17, 4
	l.movhi	r21, hi(0)
	l.lwz	r19, 0(r4)
	l.sw	-4(r17), r19
	l.sfne	r19, r21
	l.bf	.L444
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
	l.bf	.L446
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L453:
	l.lwz	r17, 4(r11)
	l.sfne	r17, r19
	l.bf	.L453
	l.addi	r11, r11, 4
	l.sub	r11, r11, r3
	l.ori	r17, r0, 2
	l.sra	r11, r11, r17
.L446:
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L455
	l.movhi	r11, hi(0)
	l.j	.L465
	 l.nop

.L463:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L457
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.addi	r3, r3, 4
	l.bf	.L460
	l.addi	r4, r4, 4
.L455:
	l.lwz	r17, 0(r3)
	l.lwz	r19, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L463
	l.addi	r5, r5, -1
.L457:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfgeu	r19, r17
	l.bnf	.L464
	l.sfgtu	r19, r17
	l.bnf	.L460
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L464:
	l.jr	r9
	l.xori	r11, r0, -1
.L460:
	l.movhi	r11, hi(0)
.L465:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L467
	l.movhi	r11, hi(0)
	l.j	.L472
	 l.nop

.L469:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L470
	l.addi	r3, r3, 4
.L467:
	l.lwz	r17, 0(r3)
	l.sfne	r17, r4
	l.bf	.L469
	l.addi	r5, r5, -1
	l.jr	r9
	l.or	r11, r3, r3
.L470:
	l.movhi	r11, hi(0)
.L472:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L474
	l.movhi	r11, hi(0)
	l.j	.L484
	 l.nop

.L476:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L484
	l.movhi	r11, hi(0)
.L474:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.bf	.L476
	l.addi	r4, r4, 4
	l.sfgeu	r19, r17
	l.bnf	.L483
	l.sfgtu	r19, r17
	l.bnf	.L479
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L479:
	l.movhi	r11, hi(0)
.L484:
	l.jr	r9
	 l.nop

.L483:
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
	l.bf	.L486
	l.or	r16, r3, r3
	l.ori	r17, r0, 2
	l.jal	memcpy
	l.sll	r5, r5, r17
.L486:
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
	l.bnf	.L499
	l.or	r11, r3, r3
	l.ori	r19, r0, 2
	l.sll	r19, r5, r19
	l.sub	r21, r3, r4
	l.sfltu	r21, r19
	l.addi	r17, r5, -1
	l.bnf	.L505
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L499
	 l.nop

	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
.L496:
	l.addi	r17, r17, -4
	l.lwz	r23, 0(r19)
	l.sfne	r4, r19
	l.sw	4(r17), r23
	l.bf	.L496
	l.addi	r19, r19, -4
.L499:
	l.jr	r9
	 l.nop

.L505:
	l.sfne	r5, r19
	l.xori	r23, r0, -1
	l.bnf	.L499
	l.or	r19, r3, r3
.L494:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.lwz	r21, 0(r4)
	l.sfne	r17, r23
	l.sw	-4(r19), r21
	l.bf	.L494
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
	l.bf	.L507
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L508:
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.sw	0(r19), r4
	l.bf	.L508
	l.addi	r19, r19, 4
.L507:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L514
	l.sfeq	r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.add	r17, r3, r5
	l.bf	.L513
	l.add	r4, r4, r5
.L516:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L516
	l.sb	0(r4), r19
.L513:
	l.jr	r9
	 l.nop

.L514:
	l.bf	.L513
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L513
	 l.nop

	l.add	r5, r3, r5
.L517:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r5, r3
	l.bf	.L517
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
	l.bnf	.L527
	l.sll	r12, r4, r5
	l.or	r11, r23, r23
.L527:
	l.bnf	.L528
	 l.nop

	l.movhi	r12, hi(0)
.L528:
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
	l.bnf	.L529
	l.srl	r3, r3, r5
	l.or	r4, r19, r19
.L529:
	l.bnf	.L530
	 l.nop

	l.movhi	r3, hi(0)
.L530:
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
	l.bnf	.L532
	l.srl	r11, r3, r5
	l.or	r12, r23, r23
.L532:
	l.bnf	.L533
	 l.nop

	l.movhi	r11, hi(0)
.L533:
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
	l.bnf	.L534
	l.sll	r4, r4, r5
	l.or	r3, r19, r19
.L534:
	l.bnf	.L535
	 l.nop

	l.movhi	r4, hi(0)
.L535:
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
	l.j	.L550
	l.ori	r19, r0, 32
.L553:
	l.sfne	r11, r19
	l.bnf	.L552
	 l.nop

.L550:
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bf	.L553
	l.addi	r11, r11, 1
	l.jr	r9
	 l.nop

.L552:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L557
	 l.nop

	l.andi	r11, r3, 1
	l.sfne	r11, r17
	l.bf	.L554
	 l.nop

	l.ori	r11, r0, 1
.L556:
	l.ori	r17, r0, 1
	l.sra	r3, r3, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L556
	l.addi	r11, r11, 1
.L554:
	l.jr	r9
	 l.nop

.L557:
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
	l.bf	.L560
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.or	r3, r16, r16
	l.jal	__gtsf2
	l.lwz	r4, lo(.LC3)(r17)
	l.sfgts	r11, r18
	l.bnf	.L566
	l.ori	r11, r0, 1
.L560:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L566:
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
	l.bf	.L567
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC5)(r17)
	l.jal	__gtdf2
	l.lwz	r6, 4(r19)
	l.sfgts	r11, r20
	l.bnf	.L573
	l.ori	r11, r0, 1
.L567:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L573:
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
	l.bf	.L574
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.or	r3, r18, r18
	l.or	r4, r16, r16
	l.lwz	r5, lo(.LC7)(r17)
	l.jal	__gtdf2
	l.lwz	r6, 4(r19)
	l.sfgts	r11, r20
	l.bnf	.L580
	l.ori	r11, r0, 1
.L574:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L580:
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
	l.bf	.L584
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r20, r20
	l.jal	__nesf2
	l.or	r3, r11, r11
	l.sfne	r11, r18
	l.bnf	.L584
	l.sfges	r16, r18
	l.bf	.L586
	l.movhi	r18, hi(1073741824)
	l.movhi	r18, hi(1056964608)
.L586:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L599
	l.ori	r17, r0, 31
.L588:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.ori	r17, r0, 31
.L599:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L600
	l.or	r11, r20, r20
.L589:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L588
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L589
	l.sra	r16, r17, r19
.L584:
	l.or	r11, r20, r20
.L600:
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
	l.bf	.L602
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
	l.bnf	.L602
	l.sfges	r16, r22
	l.bnf	.L617
	l.movhi	r17, ha(.LC10+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC10+4)(r17)
.L604:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L618
	l.ori	r17, r0, 31
.L606:
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
.L618:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L619
	l.or	r11, r20, r20
.L607:
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
	l.bf	.L606
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L607
	l.sra	r16, r17, r19
.L602:
	l.or	r11, r20, r20
.L619:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L617:
	l.movhi	r17, ha(.LC11+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L604
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
	l.bf	.L621
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
	l.bnf	.L621
	l.sfges	r16, r22
	l.bnf	.L636
	l.movhi	r17, ha(.LC13+4)
	l.movhi	r5, hi(1073741824)
	l.lwz	r6, lo(.LC13+4)(r17)
.L623:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L637
	l.ori	r17, r0, 31
.L625:
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
.L637:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L638
	l.or	r11, r20, r20
.L626:
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
	l.bf	.L625
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L626
	l.sra	r16, r17, r19
.L621:
	l.or	r11, r20, r20
.L638:
	l.or	r12, r18, r18
	l.lwz	r16, 8(r1)
	l.lwz	r18, 12(r1)
	l.lwz	r20, 16(r1)
	l.lwz	r22, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
.L636:
	l.movhi	r17, ha(.LC12+4)
	l.movhi	r5, hi(1071644672)
	l.j	.L623
	l.lwz	r6, lo(.LC12+4)(r17)
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L640
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L641:
	l.lbz	r19, 0(r17)
	l.lbz	r21, 0(r4)
	l.addi	r4, r4, 1
	l.xor	r19, r19, r21
	l.sfne	r5, r4
	l.sb	0(r17), r19
	l.bf	.L641
	l.addi	r17, r17, 1
.L640:
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
	l.bf	.L660
	l.or	r17, r3, r3
.L648:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L648
	l.addi	r17, r17, 1
	l.movhi	r19, hi(0)
.L660:
	l.sfne	r5, r19
	l.bf	.L649
	 l.nop

	l.j	.L659
	l.sb	0(r17), r0
.L651:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L650
	 l.nop

.L649:
	l.lbs	r19, 0(r4)
	l.movhi	r21, hi(0)
	l.sb	0(r17), r19
	l.sfne	r19, r21
	l.addi	r5, r5, -1
	l.addi	r4, r4, 1
	l.bf	.L651
	l.addi	r17, r17, 1
	l.jr	r9
	 l.nop

.L650:
	l.sb	0(r17), r0
.L659:
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L661
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L669:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L664
	 l.nop

.L661:
	l.jr	r9
	 l.nop

.L664:
	l.addi	r11, r11, 1
	l.sfeq	r4, r11
	l.bnf	.L669
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
	l.bnf	.L675
	l.or	r11, r3, r3
.L671:
	l.j	.L674
	l.or	r17, r4, r4
.L673:
	l.sfeq	r19, r21
	l.bf	.L672
	 l.nop

.L674:
	l.lbs	r19, 0(r17)
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bf	.L673
	l.addi	r17, r17, 1
	l.lbs	r21, 1(r11)
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bnf	.L671
	l.addi	r11, r11, 1
.L675:
	l.movhi	r11, hi(0)
.L672:
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.movhi	r11, hi(0)
.L679:
	l.lbs	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L682
	l.movhi	r19, hi(0)
	l.or	r11, r3, r3
.L682:
	l.sfne	r17, r19
	l.bf	.L679
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
	l.bf	.L694
	l.or	r17, r4, r4
.L685:
	l.lbs	r19, 1(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L685
	l.addi	r17, r17, 1
	l.sfeq	r17, r4
	l.bf	.L694
	l.sub	r29, r17, r4
	l.andi	r31, r25, 0xff
	l.j	.L691
	l.addi	r29, r29, -1
.L704:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L703
	l.addi	r3, r3, 1
.L691:
	l.lbs	r17, 0(r3)
	l.sfeq	r25, r17
	l.bnf	.L704
	l.or	r21, r31, r31
	l.add	r27, r3, r29
	l.or	r19, r4, r4
	l.j	.L687
	l.or	r17, r3, r3
.L705:
	l.bf	.L688
	l.addi	r17, r17, 1
	l.sfeq	r23, r21
	l.bnf	.L688
	 l.nop

	l.lbz	r21, 0(r17)
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L688
	l.addi	r19, r19, 1
.L687:
	l.lbz	r23, 0(r19)
	l.movhi	r13, hi(0)
	l.sfeq	r23, r13
	l.bnf	.L705
	l.sfeq	r17, r27
.L688:
	l.lbz	r17, 0(r19)
	l.sfeq	r17, r21
	l.bf	.L694
	 l.nop

	l.j	.L691
	l.addi	r3, r3, 1
.L703:
	l.jr	r9
	l.movhi	r11, hi(0)
.L694:
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
	l.bf	.L717
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L710
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L718
	l.movhi	r17, hi(-2147483648)
.L710:
	l.or	r11, r16, r16
.L719:
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L717:
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L719
	l.or	r11, r16, r16
	l.movhi	r17, hi(-2147483648)
.L718:
	l.j	.L710
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L726
	l.sfltu	r4, r6
	l.bf	.L728
	l.sub	r4, r4, r6
	l.add	r25, r3, r4
	l.sfgtu	r3, r25
	l.bf	.L728
	l.addi	r6, r6, -1
	l.j	.L725
	l.lbs	r29, 0(r5)
.L722:
	l.sfgeu	r25, r3
	l.bnf	.L728
	 l.nop

.L725:
	l.lbs	r17, 0(r3)
	l.sfne	r17, r29
	l.or	r11, r3, r3
	l.bf	.L722
	l.addi	r3, r3, 1
	l.movhi	r17, hi(0)
	l.sfne	r6, r17
	l.bnf	.L720
	l.addi	r19, r5, 1
	l.or	r17, r3, r3
	l.add	r27, r3, r6
.L723:
	l.lbz	r23, 0(r17)
	l.lbz	r21, 0(r19)
	l.sfeq	r23, r21
	l.addi	r17, r17, 1
	l.bnf	.L722
	l.addi	r19, r19, 1
	l.sfeq	r17, r27
	l.bnf	.L723
	 l.nop

.L720:
	l.jr	r9
	 l.nop

.L726:
	l.jr	r9
	l.or	r11, r3, r3
.L728:
	l.jr	r9
	l.movhi	r11, hi(0)
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
	l.bf	.L732
	l.or	r18, r3, r3
	l.jal	memmove
	 l.nop

.L732:
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
	l.bf	.L760
	l.movhi	r5, hi(1072693248)
	l.movhi	r22, ha(.LC18)
	l.addi	r22, r22, lo(.LC18)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.movhi	r20, hi(0)
	l.jal	__gedf2
	l.lwz	r6, 4(r22)
	l.sfges	r11, r20
	l.bnf	.L761
	l.movhi	r14, hi(0)
.L740:
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.movhi	r20, hi(0)
	l.lwz	r26, 0(r22)
	l.lwz	r24, 4(r22)
	l.lwz	r28, lo(.LC19)(r17)
	l.lwz	r22, 4(r19)
.L746:
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
	l.bf	.L746
	l.addi	r20, r20, 1
	l.movhi	r17, hi(0)
	l.sfeq	r14, r17
.L763:
	l.bf	.L753
	l.sw	0(r30), r20
	l.movhi	r17, hi(-2147483648)
	l.xor	r11, r16, r17
.L737:
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
.L761:
	l.movhi	r17, ha(.LC19)
	l.addi	r22, r17, lo(.LC19)
	l.movhi	r5, hi(1071644672)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	l.lwz	r6, 4(r22)
	l.sflts	r11, r20
	l.bnf	.L743
	l.movhi	r5, hi(0)
	l.movhi	r6, hi(0)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r18, r18
	l.sfne	r11, r20
	l.bf	.L752
	l.or	r20, r16, r16
.L743:
	l.sw	0(r30), r0
	l.j	.L737
	l.or	r11, r16, r16
.L760:
	l.movhi	r17, hi(-2147483648)
	l.movhi	r5, hi(-1074790400)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.xor	r20, r16, r17
	l.movhi	r17, ha(.LC16+4)
	l.jal	__ledf2
	l.lwz	r6, lo(.LC16+4)(r17)
	l.sfles	r11, r22
	l.bnf	.L762
	l.ori	r14, r0, 1
	l.movhi	r22, ha(.LC18)
	l.or	r16, r20, r20
	l.j	.L740
	l.addi	r22, r22, lo(.LC18)
.L753:
	l.j	.L737
	l.or	r11, r16, r16
.L762:
	l.movhi	r17, ha(.LC17+4)
	l.movhi	r5, hi(-1075838976)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	l.lwz	r6, lo(.LC17+4)(r17)
	l.sfgts	r11, r22
	l.bnf	.L743
	l.movhi	r17, ha(.LC19)
	l.ori	r14, r0, 1
	l.addi	r22, r17, lo(.LC19)
.L741:
	l.or	r16, r20, r20
	l.movhi	r20, hi(0)
	l.lwz	r24, 0(r22)
	l.lwz	r22, 4(r22)
.L748:
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
	l.bf	.L748
	l.addi	r20, r20, -1
	l.j	.L763
	l.sfeq	r14, r17
.L752:
	l.j	.L741
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
	l.bf	.L764
	l.movhi	r12, hi(0)
.L767:
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
	l.bf	.L770
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L770:
	l.sfltu	r21, r6
	l.or	r4, r23, r4
	l.srl	r3, r3, r27
	l.add	r11, r11, r17
	l.bf	.L771
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L771:
	l.or	r17, r3, r4
	l.or	r12, r19, r19
	l.movhi	r19, hi(0)
	l.add	r5, r5, r5
	l.sfne	r17, r19
	l.add	r11, r25, r11
	l.add	r5, r23, r5
	l.bf	.L767
	l.or	r6, r21, r21
.L764:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r11, r0, 32
	l.bf	.L773
	l.ori	r17, r0, 1
	l.j	.L779
	l.movhi	r11, hi(0)
.L777:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L775
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L776
	 l.nop

.L773:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L777
	l.addi	r11, r11, -1
.L774:
	l.movhi	r11, hi(0)
.L779:
	l.sfltu	r3, r4
.L791:
	l.bf	.L790
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L790:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L791
	l.sfltu	r3, r4
.L776:
	l.movhi	r17, hi(0)
.L792:
	l.sfne	r5, r17
	l.bnf	.L789
	 l.nop

	l.or	r11, r3, r3
.L789:
	l.jr	r9
	 l.nop

.L775:
	l.sfeq	r17, r19
	l.bnf	.L774
	l.movhi	r11, hi(0)
	l.j	.L792
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
	l.bf	.L795
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
.L795:
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
	l.bnf	.L809
	l.xor	r4, r4, r21
.L804:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L809:
	l.sfne	r19, r17
	l.bf	.L804
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
	l.bf	.L810
	l.movhi	r11, hi(0)
.L812:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L812
	l.add	r4, r4, r4
.L810:
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
	l.bnf	.L819
	l.and	r27, r5, r27
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L828
	l.movhi	r17, hi(0)
.L819:
	l.movhi	r17, hi(0)
	l.sfne	r25, r17
	l.bnf	.L829
	l.sfleu	r5, r27
	l.ori	r17, r0, 3
	l.sll	r25, r25, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r25, r25, r4
.L822:
	l.lwz	r23, 0(r17)
	l.lwz	r21, 4(r17)
	l.addi	r17, r17, 8
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.sfne	r17, r25
	l.bf	.L822
	l.addi	r19, r19, 8
	l.sfleu	r5, r27
.L829:
	l.bf	.L815
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r4, r4, r5
.L823:
	l.lbs	r19, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r3), r19
	l.sfne	r17, r4
	l.bf	.L823
	l.addi	r3, r3, 1
.L815:
	l.jr	r9
	 l.nop

.L828:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L815
	l.addi	r17, r5, -1
.L820:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L820
	l.sb	0(r19), r21
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfgeu	r3, r4
	l.bnf	.L834
	l.srl	r23, r5, r17
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L845
	l.movhi	r17, hi(0)
.L834:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bnf	.L833
	l.or	r17, r4, r4
	l.add	r23, r23, r23
	l.or	r19, r3, r3
	l.add	r23, r23, r4
.L837:
	l.lhs	r21, 0(r17)
	l.addi	r17, r17, 2
	l.sh	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L837
	l.addi	r19, r19, 2
.L833:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L830
	l.add	r4, r4, r5
	l.lbs	r19, -1(r4)
	l.add	r3, r3, r5
	l.sb	-1(r3), r19
.L830:
	l.jr	r9
	 l.nop

.L845:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L830
	l.addi	r17, r5, -1
.L835:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L835
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
	l.sfgeu	r3, r4
	l.srl	r23, r5, r17
	l.bnf	.L850
	l.and	r25, r5, r25
	l.add	r17, r4, r5
	l.sfgtu	r3, r17
	l.bnf	.L859
	l.movhi	r17, hi(0)
.L850:
	l.movhi	r17, hi(0)
	l.sfne	r23, r17
	l.bnf	.L860
	l.sfleu	r5, r25
	l.ori	r17, r0, 2
	l.sll	r23, r23, r17
	l.or	r19, r3, r3
	l.or	r17, r4, r4
	l.add	r23, r23, r4
.L853:
	l.lwz	r21, 0(r17)
	l.addi	r17, r17, 4
	l.sw	0(r19), r21
	l.sfne	r17, r23
	l.bf	.L853
	l.addi	r19, r19, 4
	l.sfleu	r5, r25
.L860:
	l.bf	.L846
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r4, r4, r5
.L854:
	l.lbs	r19, 0(r17)
	l.addi	r17, r17, 1
	l.sb	0(r3), r19
	l.sfne	r17, r4
	l.bf	.L854
	l.addi	r3, r3, 1
.L846:
	l.jr	r9
	 l.nop

.L859:
	l.sfne	r5, r17
	l.xori	r23, r0, -1
	l.bnf	.L846
	l.addi	r17, r5, -1
.L851:
	l.add	r21, r4, r17
	l.add	r19, r3, r17
	l.lbs	r21, 0(r21)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L851
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
	l.ori	r17, r0, 15
	l.sra	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L874
	l.ori	r17, r0, 14
	l.sra	r11, r3, r17
	l.sfne	r11, r19
	l.bf	.L871
	l.ori	r17, r0, 13
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L875
	l.ori	r17, r0, 12
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L876
	l.ori	r17, r0, 11
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L877
	l.ori	r17, r0, 10
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L878
	l.ori	r17, r0, 9
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L879
	l.ori	r17, r0, 8
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L880
	l.ori	r17, r0, 7
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L881
	l.ori	r17, r0, 6
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L882
	l.ori	r17, r0, 5
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L883
	l.ori	r17, r0, 4
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L884
	l.ori	r17, r0, 3
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L885
	l.ori	r17, r0, 2
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L886
	l.ori	r17, r0, 1
	l.sra	r17, r3, r17
	l.sfne	r17, r19
	l.bf	.L887
	l.sfeq	r3, r19
	l.bnf	.L890
	l.ori	r11, r0, 16
.L871:
	l.jr	r9
	 l.nop

.L874:
	l.jr	r9
	l.movhi	r11, hi(0)
.L885:
	l.jr	r9
	l.ori	r11, r0, 12
.L890:
	l.jr	r9
	l.ori	r11, r0, 15
.L875:
	l.jr	r9
	l.ori	r11, r0, 2
.L876:
	l.jr	r9
	l.ori	r11, r0, 3
.L877:
	l.jr	r9
	l.ori	r11, r0, 4
.L878:
	l.jr	r9
	l.ori	r11, r0, 5
.L879:
	l.jr	r9
	l.ori	r11, r0, 6
.L880:
	l.jr	r9
	l.ori	r11, r0, 7
.L881:
	l.jr	r9
	l.ori	r11, r0, 8
.L882:
	l.jr	r9
	l.ori	r11, r0, 9
.L883:
	l.jr	r9
	l.ori	r11, r0, 10
.L884:
	l.jr	r9
	l.ori	r11, r0, 11
.L886:
	l.jr	r9
	l.ori	r11, r0, 13
.L887:
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
	l.bf	.L894
	l.andi	r3, r3, 0xffff
	l.andi	r17, r3, 2
	l.sfne	r17, r19
	l.bf	.L895
	l.andi	r17, r3, 4
	l.sfne	r17, r19
	l.bf	.L896
	l.andi	r17, r3, 8
	l.sfne	r17, r19
	l.bf	.L897
	l.andi	r17, r3, 16
	l.sfne	r17, r19
	l.bf	.L898
	l.andi	r17, r3, 32
	l.sfne	r17, r19
	l.bf	.L899
	l.andi	r17, r3, 64
	l.sfne	r17, r19
	l.bf	.L900
	l.andi	r17, r3, 128
	l.sfne	r17, r19
	l.bf	.L901
	l.andi	r17, r3, 256
	l.sfne	r17, r19
	l.bf	.L902
	l.andi	r17, r3, 512
	l.sfne	r17, r19
	l.bf	.L903
	l.andi	r17, r3, 1024
	l.sfne	r17, r19
	l.bf	.L904
	l.andi	r17, r3, 2048
	l.sfne	r17, r19
	l.bf	.L905
	l.andi	r17, r3, 4096
	l.sfne	r17, r19
	l.bf	.L906
	l.andi	r17, r3, 8192
	l.sfne	r17, r19
	l.bf	.L907
	l.andi	r17, r3, 16384
	l.sfne	r17, r19
	l.bf	.L908
	l.ori	r17, r0, 15
	l.sra	r3, r3, r17
	l.sfeq	r3, r19
	l.bnf	.L911
	l.ori	r11, r0, 16
	l.jr	r9
	 l.nop

.L894:
	l.jr	r9
	l.movhi	r11, hi(0)
.L895:
	l.jr	r9
	l.ori	r11, r0, 1
.L906:
	l.jr	r9
	l.ori	r11, r0, 12
.L911:
	l.jr	r9
	l.or	r11, r17, r17
.L896:
	l.jr	r9
	l.ori	r11, r0, 2
.L897:
	l.jr	r9
	l.ori	r11, r0, 3
.L898:
	l.jr	r9
	l.ori	r11, r0, 4
.L899:
	l.jr	r9
	l.ori	r11, r0, 5
.L900:
	l.jr	r9
	l.ori	r11, r0, 6
.L901:
	l.jr	r9
	l.ori	r11, r0, 7
.L902:
	l.jr	r9
	l.ori	r11, r0, 8
.L903:
	l.jr	r9
	l.ori	r11, r0, 9
.L904:
	l.jr	r9
	l.ori	r11, r0, 10
.L905:
	l.jr	r9
	l.ori	r11, r0, 11
.L907:
	l.jr	r9
	l.ori	r11, r0, 13
.L908:
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
	l.bf	.L919
	l.or	r4, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r18, r18
	l.lwz	r9, 8(r1)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 12
.L919:
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
	l.bf	.L922
	l.movhi	r11, hi(0)
.L924:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.ori	r19, r0, 1
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L924
	l.add	r4, r4, r4
.L922:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L927
	l.movhi	r11, hi(0)
	l.sfeq	r4, r17
	l.bf	.L927
	 l.nop

.L929:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.add	r11, r11, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L929
	l.add	r3, r3, r3
.L927:
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L934
	l.ori	r17, r0, 1
	l.j	.L940
	l.movhi	r11, hi(0)
.L938:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L936
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L937
	 l.nop

.L934:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L938
	l.addi	r11, r11, -1
.L935:
	l.movhi	r11, hi(0)
.L940:
	l.sfltu	r3, r4
.L952:
	l.bf	.L951
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L951:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L952
	l.sfltu	r3, r4
.L937:
	l.movhi	r17, hi(0)
.L953:
	l.sfne	r5, r17
	l.bnf	.L950
	 l.nop

	l.or	r11, r3, r3
.L950:
	l.jr	r9
	 l.nop

.L936:
	l.sfeq	r17, r19
	l.bnf	.L935
	l.movhi	r11, hi(0)
	l.j	.L953
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
	l.bf	.L957
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L960
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L960:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L957:
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
	l.bf	.L964
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L967
	l.ori	r11, r0, 1
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L967:
	l.movhi	r11, hi(0)
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L964:
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
	l.bnf	.L986
	l.sfeq	r4, r17
	l.bf	.L978
	l.movhi	r21, hi(0)
.L974:
	l.ori	r19, r0, 32
	l.j	.L977
	l.movhi	r11, hi(0)
.L987:
	l.sfne	r19, r17
	l.bnf	.L988
	l.movhi	r17, hi(0)
.L977:
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
	l.bnf	.L987
	l.add	r3, r3, r3
	l.movhi	r17, hi(0)
.L988:
	l.sfeq	r21, r17
	l.bf	.L972
	 l.nop

	l.sub	r11, r0, r11
.L972:
	l.jr	r9
	 l.nop

.L986:
	l.sub	r4, r0, r4
	l.j	.L974
	l.ori	r21, r0, 1
.L978:
	l.jr	r9
	l.movhi	r11, hi(0)
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1008
	 l.nop

	l.movhi	r23, hi(0)
.L990:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L1009
	l.sfgtu	r3, r4
	l.sub	r4, r0, r4
	l.xori	r23, r23, 1
	l.sfgtu	r3, r4
.L1009:
	l.or	r21, r3, r3
	l.ori	r19, r0, 32
	l.bf	.L992
	l.ori	r17, r0, 1
	l.j	.L998
	l.movhi	r11, hi(0)
.L995:
	l.movhi	r25, hi(0)
	l.sfne	r19, r25
	l.bnf	.L996
	 l.nop

.L992:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L995
	l.add	r17, r17, r17
.L996:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L994
	l.movhi	r11, hi(0)
	l.movhi	r11, hi(0)
.L998:
	l.sfltu	r21, r4
.L1011:
	l.bf	.L1010
	l.ori	r19, r0, 1
	l.sub	r21, r21, r4
	l.or	r11, r11, r17
.L1010:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1011
	l.sfltu	r21, r4
.L994:
	l.movhi	r17, hi(0)
	l.sfeq	r23, r17
	l.bf	.L989
	 l.nop

	l.sub	r11, r0, r11
.L989:
	l.jr	r9
	 l.nop

.L1008:
	l.sub	r3, r0, r3
	l.j	.L990
	l.ori	r23, r0, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L1031
	 l.nop

	l.movhi	r21, hi(0)
.L1013:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L1014
	l.or	r11, r3, r3
	l.sub	r4, r0, r4
.L1014:
	l.sfgtu	r3, r4
	l.ori	r19, r0, 32
	l.bf	.L1015
	l.ori	r17, r0, 1
	l.j	.L1033
	l.ori	r19, r0, 1
.L1018:
	l.movhi	r23, hi(0)
	l.sfne	r19, r23
	l.bnf	.L1019
	 l.nop

.L1015:
	l.add	r4, r4, r4
	l.sfgtu	r3, r4
	l.addi	r19, r19, -1
	l.bf	.L1018
	l.add	r17, r17, r17
.L1019:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L1032
	l.ori	r19, r0, 1
.L1033:
	l.sfltu	r11, r4
	l.bf	.L1020
	l.srl	r17, r17, r19
	l.sub	r11, r11, r4
.L1020:
	l.ori	r19, r0, 1
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1033
	l.ori	r19, r0, 1
.L1017:
	l.movhi	r17, hi(0)
	l.sfeq	r21, r17
	l.bf	.L1012
	 l.nop

	l.sub	r11, r0, r11
.L1012:
	l.jr	r9
	 l.nop

.L1031:
	l.sub	r3, r0, r3
	l.j	.L1013
	l.ori	r21, r0, 1
.L1032:
	l.j	.L1017
	l.or	r11, r3, r3
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.bnf	.L1151
	l.ori	r23, r0, 16
	l.sll	r17, r4, r23
	l.movhi	r21, hi(0)
	l.sflts	r17, r21
	l.bf	.L1037
	l.add	r17, r4, r4
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1038
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1039
	 l.nop

	l.ori	r17, r0, 2
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1040
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1041
	l.ori	r19, r0, 1
	l.ori	r17, r0, 3
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1042
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1043
	l.ori	r19, r0, 1
	l.ori	r17, r0, 4
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1044
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1045
	l.ori	r19, r0, 1
	l.ori	r17, r0, 5
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1046
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1047
	l.ori	r19, r0, 1
	l.ori	r17, r0, 6
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1048
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1049
	l.ori	r19, r0, 1
	l.ori	r17, r0, 7
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1050
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1051
	l.ori	r19, r0, 1
	l.ori	r17, r0, 8
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1052
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1053
	l.ori	r19, r0, 1
	l.ori	r17, r0, 9
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1054
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1055
	l.ori	r19, r0, 1
	l.ori	r17, r0, 10
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1056
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1057
	l.ori	r19, r0, 1
	l.ori	r17, r0, 11
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1058
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1059
	l.ori	r19, r0, 1
	l.ori	r17, r0, 12
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1060
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1061
	l.ori	r19, r0, 1
	l.ori	r17, r0, 13
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1062
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1063
	l.ori	r19, r0, 1
	l.ori	r17, r0, 14
	l.sll	r17, r4, r17
	l.andi	r17, r17, 0xffff
	l.sfleu	r11, r17
	l.bf	.L1064
	l.sll	r19, r17, r23
	l.sflts	r19, r21
	l.bf	.L1065
	l.ori	r19, r0, 1
	l.ori	r17, r0, 15
	l.sll	r4, r4, r17
	l.andi	r19, r4, 0xffff
	l.sfleu	r11, r19
	l.bf	.L1066
	l.sfeq	r19, r21
	l.bnf	.L1152
	l.ori	r17, r0, 32768
.L1067:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L1149
	 l.nop

	l.or	r11, r19, r19
.L1149:
	l.jr	r9
	 l.nop

.L1054:
	l.sfltu	r11, r17
	l.bf	.L1086
	l.ori	r21, r0, 512
	l.sub	r11, r11, r17
	l.andi	r11, r11, 0xffff
	l.or	r19, r21, r21
.L1069:
	l.ori	r23, r0, 2
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1070
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1070:
	l.ori	r23, r0, 3
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1071
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1071:
	l.ori	r23, r0, 4
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1072
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1072:
	l.ori	r23, r0, 5
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1073
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1073:
	l.ori	r23, r0, 6
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1074
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1074:
	l.ori	r23, r0, 7
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1075
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1075:
	l.ori	r23, r0, 8
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1076
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1076:
	l.ori	r23, r0, 9
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1077
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1077:
	l.ori	r23, r0, 10
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1078
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1078:
	l.ori	r23, r0, 11
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1079
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1079:
	l.ori	r23, r0, 12
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1080
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1080:
	l.ori	r23, r0, 13
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1081
	 l.nop

	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1081:
	l.ori	r23, r0, 14
	l.srl	r25, r21, r23
	l.movhi	r27, hi(0)
	l.sfeq	r25, r27
	l.bf	.L1067
	l.srl	r23, r17, r23
	l.sfltu	r11, r23
	l.bf	.L1082
	l.sub	r23, r11, r23
	l.andi	r11, r23, 0xffff
	l.or	r19, r19, r25
.L1082:
	l.ori	r23, r0, 15
	l.srl	r17, r17, r23
	l.ori	r23, r0, 16384
	l.sfne	r21, r23
	l.bnf	.L1067
	l.sfltu	r11, r17
	l.bf	.L1089
	l.sub	r17, r11, r17
	l.andi	r11, r17, 0xffff
	l.j	.L1067
	l.ori	r19, r19, 1
.L1089:
	l.j	.L1067
	l.movhi	r11, hi(0)
.L1151:
	l.sfeq	r4, r11
	l.bf	.L1088
	 l.nop

	l.j	.L1067
	l.movhi	r19, hi(0)
.L1037:
	l.sub	r4, r11, r4
	l.andi	r11, r4, 0xffff
	l.j	.L1067
	l.ori	r19, r0, 1
.L1038:
	l.sfltu	r11, r17
	l.bf	.L1091
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 2
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1039:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 2
	l.andi	r11, r11, 0xffff
	l.andi	r4, r4, 32767
	l.ori	r23, r0, 1
	l.or	r19, r21, r21
.L1087:
	l.sfltu	r11, r4
	l.bf	.L1069
	l.sub	r4, r11, r4
	l.andi	r11, r4, 0xffff
	l.j	.L1069
	l.or	r19, r19, r23
.L1040:
	l.sfltu	r11, r17
	l.bf	.L1092
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 4
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1041:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 4
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 2
	l.j	.L1087
	l.or	r19, r21, r21
.L1042:
	l.sfltu	r11, r17
	l.bf	.L1093
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 8
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1043:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 8
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 4
	l.j	.L1087
	l.or	r19, r21, r21
.L1044:
	l.sfltu	r11, r17
	l.bf	.L1094
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 16
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1045:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 16
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 8
	l.j	.L1087
	l.or	r19, r21, r21
.L1046:
	l.sfltu	r11, r17
	l.bf	.L1095
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 32
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1047:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 32
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 16
	l.j	.L1087
	l.or	r19, r21, r21
.L1048:
	l.sfltu	r11, r17
	l.bf	.L1096
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 64
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1049:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 64
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 32
	l.j	.L1087
	l.or	r19, r21, r21
.L1050:
	l.sfltu	r11, r17
	l.bf	.L1097
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 128
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1051:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 128
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 64
	l.j	.L1087
	l.or	r19, r21, r21
.L1053:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 256
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 128
	l.j	.L1087
	l.or	r19, r21, r21
.L1055:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 512
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 256
	l.j	.L1087
	l.or	r19, r21, r21
.L1088:
	l.ori	r19, r0, 1
	l.j	.L1067
	l.movhi	r11, hi(0)
.L1091:
	l.ori	r21, r0, 2
.L1086:
	l.ori	r19, r0, 1
	l.srl	r23, r21, r19
	l.srl	r4, r17, r19
	l.j	.L1087
	l.movhi	r19, hi(0)
.L1057:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 1024
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 512
	l.j	.L1087
	l.or	r19, r21, r21
.L1059:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 2048
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 1024
	l.j	.L1087
	l.or	r19, r21, r21
.L1092:
	l.j	.L1086
	l.ori	r21, r0, 4
.L1093:
	l.j	.L1086
	l.ori	r21, r0, 8
.L1061:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 4096
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 2048
	l.j	.L1087
	l.or	r19, r21, r21
.L1063:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 8192
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 4096
	l.j	.L1087
	l.or	r19, r21, r21
.L1094:
	l.j	.L1086
	l.ori	r21, r0, 16
.L1095:
	l.j	.L1086
	l.ori	r21, r0, 32
.L1065:
	l.sub	r11, r11, r17
	l.ori	r21, r0, 16384
	l.srl	r4, r17, r19
	l.andi	r11, r11, 0xffff
	l.ori	r23, r0, 8192
	l.j	.L1087
	l.or	r19, r21, r21
.L1066:
	l.ori	r17, r0, 16
	l.sll	r17, r11, r17
	l.movhi	r19, hi(0)
	l.sflts	r17, r19
	l.ori	r17, r0, 32768
	l.bnf	.L1086
	l.or	r21, r17, r17
	l.or	r19, r17, r17
	l.j	.L1069
	l.movhi	r11, hi(0)
.L1096:
	l.j	.L1086
	l.ori	r21, r0, 64
.L1152:
	l.addi	r11, r11, -32768
	l.ori	r4, r0, 16384
	l.andi	r11, r11, 0xffff
	l.or	r23, r4, r4
	l.or	r21, r17, r17
	l.j	.L1087
	l.or	r19, r17, r17
.L1097:
	l.j	.L1086
	l.ori	r21, r0, 128
.L1052:
	l.sfltu	r11, r17
	l.bf	.L1098
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 256
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1098:
	l.j	.L1086
	l.ori	r21, r0, 256
.L1056:
	l.sfltu	r11, r17
	l.bf	.L1100
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 1024
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1064:
	l.sfltu	r11, r17
	l.bf	.L1104
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 16384
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1100:
	l.j	.L1086
	l.ori	r21, r0, 1024
.L1104:
	l.j	.L1086
	l.ori	r21, r0, 16384
.L1062:
	l.sfltu	r11, r17
	l.bf	.L1103
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 8192
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1060:
	l.sfltu	r11, r17
	l.bf	.L1102
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 4096
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1058:
	l.sfltu	r11, r17
	l.bf	.L1101
	 l.nop

	l.sub	r11, r11, r17
	l.ori	r21, r0, 2048
	l.andi	r11, r11, 0xffff
	l.j	.L1069
	l.or	r19, r21, r21
.L1103:
	l.j	.L1086
	l.ori	r21, r0, 8192
.L1102:
	l.j	.L1086
	l.ori	r21, r0, 4096
.L1101:
	l.j	.L1086
	l.ori	r21, r0, 2048
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfgtu	r3, r4
	l.ori	r11, r0, 32
	l.bf	.L1154
	l.ori	r17, r0, 1
	l.j	.L1160
	l.movhi	r11, hi(0)
.L1158:
	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.add	r17, r17, r17
	l.bf	.L1156
	l.movhi	r19, hi(0)
	l.sfeq	r11, r19
	l.bf	.L1157
	 l.nop

.L1154:
	l.movhi	r19, hi(0)
	l.sfges	r4, r19
	l.bf	.L1158
	l.addi	r11, r11, -1
.L1155:
	l.movhi	r11, hi(0)
.L1160:
	l.sfltu	r3, r4
.L1172:
	l.bf	.L1171
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.or	r11, r11, r17
.L1171:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L1172
	l.sfltu	r3, r4
.L1157:
	l.movhi	r17, hi(0)
.L1173:
	l.sfne	r5, r17
	l.bnf	.L1170
	 l.nop

	l.or	r11, r3, r3
.L1170:
	l.jr	r9
	 l.nop

.L1156:
	l.sfeq	r17, r19
	l.bnf	.L1155
	l.movhi	r11, hi(0)
	l.j	.L1173
	l.movhi	r17, hi(0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L1175
	 l.nop

	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
	l.movhi	r4, hi(0)
	l.jr	r9
	l.or	r12, r4, r4
.L1175:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L1178
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.srl	r17, r4, r17
	l.sll	r11, r3, r5
	l.sll	r4, r4, r5
	l.or	r11, r17, r11
	l.jr	r9
	l.or	r12, r4, r4
.L1178:
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
	l.bf	.L1181
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.jr	r9
	l.sra	r12, r3, r5
.L1181:
	l.sfeq	r5, r17
	l.bf	.L1184
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.sra	r11, r3, r5
	l.jr	r9
	l.or	r12, r17, r12
.L1184:
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
	l.bf	.L1189
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1189:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r25
	l.srl	r17, r3, r17
	l.andi	r19, r17, 65280
	l.movhi	r29, hi(0)
	l.sfeq	r19, r29
	l.bf	.L1190
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1190:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.ori	r19, r0, 8
	l.sub	r19, r19, r23
	l.srl	r17, r17, r19
	l.andi	r19, r17, 240
	l.sfeq	r19, r29
	l.bf	.L1191
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1191:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.ori	r19, r0, 4
	l.sub	r19, r19, r21
	l.srl	r17, r17, r19
	l.andi	r19, r17, 12
	l.sfeq	r19, r29
	l.bf	.L1192
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1192:
	l.ori	r11, r0, 2
	l.add	r19, r19, r19
	l.sub	r27, r11, r19
	l.srl	r17, r17, r27
	l.add	r23, r23, r25
	l.and	r25, r17, r11
	l.sfeq	r25, r29
	l.add	r21, r21, r23
	l.bf	.L1188
	l.sub	r11, r11, r17
	l.movhi	r11, hi(0)
.L1188:
	l.add	r19, r19, r21
	l.jr	r9
	l.add	r11, r11, r19
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L1197
	l.sfgts	r3, r5
	l.bf	.L1198
	l.sfltu	r4, r6
	l.bf	.L1197
	l.sfgtu	r4, r6
	l.bf	.L1198
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1197:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1198:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.sflts	r3, r5
	l.bf	.L1203
	l.sfgts	r3, r5
	l.bf	.L1202
	l.sfltu	r4, r6
	l.bf	.L1203
	l.sfgtu	r4, r6
	l.bnf	.L1205
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1203:
	l.jr	r9
	l.xori	r11, r0, -1
.L1205:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1202:
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
	l.bf	.L1207
	l.ori	r25, r0, 1
	l.movhi	r25, hi(0)
.L1207:
	l.ori	r17, r0, 4
	l.sll	r25, r25, r17
	l.srl	r17, r3, r25
	l.andi	r19, r17, 255
	l.sfeq	r19, r27
	l.bf	.L1208
	l.ori	r23, r0, 1
	l.movhi	r23, hi(0)
.L1208:
	l.ori	r19, r0, 3
	l.sll	r23, r23, r19
	l.srl	r17, r17, r23
	l.andi	r19, r17, 15
	l.sfeq	r19, r27
	l.bf	.L1209
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1209:
	l.ori	r19, r0, 2
	l.sll	r21, r21, r19
	l.srl	r17, r17, r21
	l.andi	r19, r17, 3
	l.sfeq	r19, r27
	l.bf	.L1210
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1210:
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
	l.bf	.L1212
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
	l.movhi	r3, hi(0)
	l.or	r11, r3, r3
.L1214:
	l.jr	r9
	 l.nop

.L1212:
	l.sfeq	r5, r17
	l.bf	.L1215
	l.ori	r17, r0, 32
	l.sub	r17, r17, r5
	l.sll	r17, r3, r17
	l.srl	r12, r4, r5
	l.srl	r3, r3, r5
	l.or	r12, r17, r12
	l.j	.L1214
	l.or	r11, r3, r3
.L1215:
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
	l.bf	.L1219
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L1219:
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
	l.bf	.L1223
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1223:
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
	l.bf	.L1224
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L1224:
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
	l.bf	.L1225
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L1225:
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
	l.bf	.L1228
	l.lwz	r18, lo(.LC21+4)(r17)
.L1230:
	l.or	r3, r22, r22
	l.or	r4, r18, r18
	l.sw	4(r1), r5
	l.jal	__muldf3
	l.sw	0(r1), r6
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.lwz	r6, 0(r1)
	l.lwz	r5, 4(r1)
.L1228:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1229
	l.sfges	r20, r17
.L1231:
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
	l.bf	.L1230
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1231
	l.sra	r16, r17, r19
.L1229:
	l.bf	.L1235
	l.or	r11, r22, r22
	l.or	r5, r22, r22
	l.or	r6, r18, r18
	l.movhi	r3, hi(1072693248)
	l.jal	__divdf3
	l.movhi	r4, hi(0)
	l.or	r22, r11, r11
	l.or	r18, r12, r12
	l.or	r11, r22, r22
.L1235:
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
	l.bf	.L1237
	l.movhi	r20, hi(1065353216)
.L1239:
	l.or	r3, r20, r20
	l.jal	__mulsf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
.L1237:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L1238
	l.sfges	r22, r17
.L1240:
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.or	r18, r11, r11
	l.bf	.L1239
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.j	.L1240
	l.sra	r16, r17, r19
.L1238:
	l.bf	.L1244
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.jal	__divsf3
	l.movhi	r3, hi(1065353216)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L1244:
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
	l.bf	.L1249
	l.sfgtu	r3, r5
	l.bf	.L1250
	l.sfltu	r4, r6
	l.bf	.L1249
	l.sfgtu	r4, r6
	l.bf	.L1250
	 l.nop

	l.jr	r9
	l.ori	r11, r0, 1
.L1249:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1250:
	l.jr	r9
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.sfltu	r3, r5
	l.bf	.L1255
	l.sfgtu	r3, r5
	l.bf	.L1254
	l.sfltu	r4, r6
	l.bf	.L1255
	l.sfgtu	r4, r6
	l.bnf	.L1257
	l.ori	r11, r0, 1
	l.jr	r9
	 l.nop

.L1255:
	l.jr	r9
	l.xori	r11, r0, -1
.L1257:
	l.jr	r9
	l.movhi	r11, hi(0)
.L1254:
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
