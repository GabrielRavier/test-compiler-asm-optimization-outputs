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
	l.sfne	r17, r5
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
	l.bnf	.L16
	l.andi	r5, r5, 0xff
.L9:
	l.lbz	r17, 0(r4)
	l.sfne	r5, r17
	l.bnf	.L10
	l.sb	0(r3), r17
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bnf	.L9
	l.addi	r3, r3, 1
.L10:
	l.movhi	r17, hi(0)
.L16:
	l.sfeq	r6, r17
	l.bf	.L15
	l.movhi	r11, hi(0)
	l.addi	r11, r3, 1
.L8:
.L15:
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.andi	r4, r4, 0xff
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L26
	l.or	r11, r3, r3
.L18:
	l.lbz	r17, 0(r3)
	l.sfne	r4, r17
	l.bnf	.L25
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bnf	.L18
	l.addi	r3, r3, 1
	l.j	.L27
	l.or	r11, r3, r3
.L25:
	l.or	r11, r3, r3
.L26:
.L27:
	l.sfne	r5, r17
	l.bf	.L24
	 l.nop

	l.movhi	r11, hi(0)
.L24:
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L35
	l.sfeq	r5, r17
.L29:
	l.lbz	r19, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L30
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.sfeq	r5, r17
	l.bnf	.L29
	l.addi	r4, r4, 1
.L30:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
.L35:
	l.bf	.L36
	l.movhi	r11, hi(0)
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
.L28:
.L36:
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L38
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
.L39:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r4)
	l.sfne	r17, r5
	l.bf	.L39
	l.sb	-1(r17), r19
.L38:
	l.jr	r9
	 l.nop

	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	l.andi	r4, r4, 0xff
	l.addi	r5, r5, -1
	l.xori	r21, r0, -1
.L42:
	l.sfne	r5, r21
	l.bnf	.L46
	l.add	r17, r3, r5
	l.lbz	r17, 0(r17)
	l.sfne	r4, r17
	l.bnf	.L47
	l.addi	r19, r5, -1
	l.j	.L42
	l.or	r5, r19, r19
.L47:
	l.j	.L41
	l.add	r11, r3, r5
.L46:
	l.movhi	r11, hi(0)
.L41:
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L49
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
	l.andi	r4, r4, 0xff
.L50:
	l.sb	0(r17), r4
	l.addi	r17, r17, 1
	l.sfne	r17, r5
	l.bf	.L50
	 l.nop

.L49:
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
	l.bf	.L53
	l.sb	0(r3), r17
.L54:
	l.addi	r4, r4, 1
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r4)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L54
	l.sb	0(r11), r17
.L53:
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.andi	r4, r4, 0xff
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L56
	l.or	r11, r3, r3
.L57:
	l.lbz	r17, 0(r3)
	l.sfne	r4, r17
	l.bnf	.L62
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 1
	l.lbs	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L57
	 l.nop

	l.j	.L56
	l.or	r11, r3, r3
.L62:
	l.or	r11, r3, r3
.L56:
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.or	r11, r3, r3
.L65:
	l.lbs	r17, 0(r11)
	l.sfeq	r4, r17
	l.bf	.L64
	l.movhi	r19, hi(0)
	l.addi	r11, r11, 1
	l.lbs	r17, -1(r11)
	l.sfne	r17, r19
	l.bf	.L65
	 l.nop

	l.movhi	r11, hi(0)
.L64:
	l.jr	r9
	 l.nop

	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	l.lbs	r19, 0(r3)
	l.lbs	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L69
	 l.nop

.L68:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L69
	 l.nop

	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r19, 0(r3)
	l.lbs	r17, 0(r4)
	l.sfne	r19, r17
	l.bnf	.L68
	 l.nop

.L69:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.jr	r9
	l.sub	r11, r11, r17
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L77
	l.or	r11, r3, r3
.L74:
	l.addi	r11, r11, 1
	l.lbs	r19, 0(r11)
	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L74
	 l.nop

.L73:
.L77:
	l.jr	r9
	l.sub	r11, r11, r3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L84
	l.movhi	r11, hi(0)
	l.lbz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L80
	l.addi	r5, r5, -1
	l.add	r17, r3, r5
.L81:
	l.lbz	r19, 0(r4)
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L80
	l.sfeq	r3, r17
	l.bf	.L80
	 l.nop

	l.lbz	r21, 0(r3)
	l.sfeq	r21, r19
	l.bnf	.L80
	l.movhi	r21, hi(0)
	l.addi	r3, r3, 1
	l.lbz	r19, 0(r3)
	l.sfeq	r19, r21
	l.bnf	.L81
	l.addi	r4, r4, 1
.L80:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
.L78:
.L84:
	l.jr	r9
	 l.nop

	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.ori	r19, r0, 1
	l.sfles	r5, r19
	l.bf	.L85
	 l.nop

	l.addi	r17, r5, -2
	l.srl	r17, r17, r19
	l.add	r17, r17, r19
	l.add	r17, r17, r17
	l.add	r17, r3, r17
.L87:
	l.lbs	r19, 1(r3)
	l.sb	0(r4), r19
	l.lbs	r19, 0(r3)
	l.sb	1(r4), r19
	l.addi	r3, r3, 2
	l.sfne	r3, r17
	l.bf	.L87
	l.addi	r4, r4, 2
.L85:
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
	l.bf	.L90
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L90:
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.bf	.L92
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L92:
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L95
	l.ori	r17, r0, 9
	l.sfeq	r3, r17
	l.bf	.L93
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L93:
	l.jr	r9
	 l.nop

.L95:
	l.j	.L93
	l.ori	r11, r0, 1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L97
	l.ori	r11, r0, 1
	l.ori	r17, r0, 127
	l.sfeq	r3, r17
	l.bf	.L97
	 l.nop

	l.movhi	r11, hi(0)
.L97:
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
	l.bf	.L102
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L102:
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
	l.bf	.L104
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L104:
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
	l.bf	.L106
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L106:
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
	l.bf	.L108
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L108:
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L111
	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfleu	r3, r17
	l.bf	.L109
	l.ori	r11, r0, 1
	l.j	.L109
	l.movhi	r11, hi(0)
.L111:
	l.ori	r11, r0, 1
.L109:
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
	l.bf	.L114
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L114:
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L115
	l.ori	r11, r0, 1
	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L115
	l.addi	r17, r3, -8232
	l.sfleu	r17, r11
	l.bf	.L115
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfleu	r3, r17
	l.bf	.L115
	 l.nop

	l.movhi	r11, hi(0)
.L115:
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
	l.bf	.L122
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L122:
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bnf	.L132
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L126
	l.addi	r19, r3, -8234
	l.ori	r17, r0, 47061
	l.sfleu	r19, r17
	l.bf	.L127
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r17, r3, r17
	l.ori	r19, r0, 8184
	l.sfleu	r17, r19
	l.bf	.L128
	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L129
	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfne	r3, r17
	l.bf	.L123
	l.ori	r11, r0, 1
	l.j	.L123
	l.movhi	r11, hi(0)
.L132:
	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.bf	.L123
	l.ori	r11, r0, 1
	l.j	.L123
	l.movhi	r11, hi(0)
.L126:
	l.ori	r11, r0, 1
.L123:
	l.jr	r9
	 l.nop

.L127:
	l.j	.L123
	l.ori	r11, r0, 1
.L128:
	l.j	.L123
	l.ori	r11, r0, 1
.L129:
	l.j	.L123
	l.movhi	r11, hi(0)
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L133
	l.ori	r11, r0, 1
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfleu	r3, r17
	l.bf	.L133
	 l.nop

	l.movhi	r11, hi(0)
.L133:
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
	l.bf	.L141
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r22, r22
	l.jal	__unorddf2
	l.or	r4, r20, r20
	l.sfne	r11, r24
	l.bf	.L142
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bnf	.L145
	l.movhi	r17, ha(.LC0)
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__subdf3
	l.or	r4, r16, r16
.L138:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L141:
	l.or	r11, r18, r18
	l.j	.L138
	l.or	r12, r16, r16
.L142:
	l.or	r11, r22, r22
	l.j	.L138
	l.or	r12, r20, r20
.L145:
	l.addi	r19, r17, lo(.LC0)
	l.lwz	r11, lo(.LC0)(r17)
	l.j	.L138
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
	l.bf	.L150
	l.or	r4, r18, r18
	l.jal	__unordsf2
	l.or	r3, r18, r18
	l.sfne	r11, r20
	l.bf	.L151
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bnf	.L154
	l.movhi	r17, ha(.LC1)
	l.or	r4, r18, r18
	l.jal	__subsf3
	l.or	r3, r16, r16
.L147:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L150:
	l.j	.L147
	l.or	r11, r16, r16
.L151:
	l.j	.L147
	l.or	r11, r18, r18
.L154:
	l.j	.L147
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
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L162
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L163
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L158
	l.or	r5, r20, r20
	l.sfges	r16, r24
	l.bf	.L164
	 l.nop

	l.or	r11, r20, r20
	l.j	.L156
	l.or	r12, r22, r22
.L158:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L166
	l.or	r11, r16, r16
	l.or	r16, r20, r20
	l.or	r18, r22, r22
	l.or	r11, r16, r16
.L166:
	l.or	r12, r18, r18
.L156:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L162:
	l.or	r11, r20, r20
	l.j	.L156
	l.or	r12, r22, r22
.L163:
	l.or	r11, r16, r16
	l.j	.L156
	l.or	r12, r18, r18
.L164:
	l.or	r11, r16, r16
	l.j	.L156
	l.or	r12, r18, r18
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
	l.bf	.L173
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L174
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L169
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bnf	.L179
	l.or	r11, r18, r18
.L167:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L179:
	l.j	.L167
	l.or	r11, r16, r16
.L169:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L167
	l.or	r11, r16, r16
	l.j	.L167
	l.or	r11, r18, r18
.L173:
	l.j	.L167
	l.or	r11, r16, r16
.L174:
	l.j	.L167
	l.or	r11, r18, r18
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
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L186
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.jal	__unorddf2
	l.or	r4, r22, r22
	l.sfne	r11, r24
	l.bf	.L187
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r16, r17
	l.and	r17, r20, r17
	l.sfeq	r19, r17
	l.bf	.L182
	l.or	r5, r20, r20
	l.sfges	r16, r24
	l.bf	.L188
	 l.nop

	l.or	r11, r20, r20
	l.j	.L180
	l.or	r12, r22, r22
.L182:
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L190
	l.or	r11, r16, r16
	l.or	r16, r20, r20
	l.or	r18, r22, r22
	l.or	r11, r16, r16
.L190:
	l.or	r12, r18, r18
.L180:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L186:
	l.or	r11, r20, r20
	l.j	.L180
	l.or	r12, r22, r22
.L187:
	l.or	r11, r16, r16
	l.j	.L180
	l.or	r12, r18, r18
.L188:
	l.or	r11, r16, r16
	l.j	.L180
	l.or	r12, r18, r18
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
	l.or	r22, r3, r3
	l.or	r20, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L197
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L198
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L193
	l.or	r5, r16, r16
	l.sfges	r22, r24
	l.bf	.L199
	 l.nop

	l.or	r11, r22, r22
	l.j	.L191
	l.or	r12, r20, r20
.L193:
	l.or	r6, r18, r18
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L196
	l.or	r12, r18, r18
	l.or	r16, r22, r22
	l.or	r12, r20, r20
.L196:
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
.L197:
	l.or	r11, r16, r16
	l.j	.L191
	l.or	r12, r18, r18
.L198:
	l.or	r11, r22, r22
	l.j	.L191
	l.or	r12, r20, r20
.L199:
	l.or	r11, r16, r16
	l.j	.L191
	l.or	r12, r18, r18
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
	l.bf	.L207
	l.or	r4, r16, r16
	l.jal	__unordsf2
	l.or	r3, r16, r16
	l.sfne	r11, r20
	l.bf	.L208
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L203
	l.or	r4, r16, r16
	l.sfges	r18, r20
	l.bnf	.L213
	l.or	r11, r16, r16
.L201:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
.L213:
	l.j	.L201
	l.or	r11, r18, r18
.L203:
	l.jal	__ltsf2
	l.or	r3, r18, r18
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L201
	l.or	r11, r18, r18
	l.j	.L201
	l.or	r11, r16, r16
.L207:
	l.j	.L201
	l.or	r11, r16, r16
.L208:
	l.j	.L201
	l.or	r11, r18, r18
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
	l.or	r22, r3, r3
	l.or	r20, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L220
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.jal	__unorddf2
	l.or	r4, r18, r18
	l.sfne	r11, r24
	l.bf	.L221
	l.movhi	r17, hi(-2147483648)
	l.and	r19, r22, r17
	l.and	r17, r16, r17
	l.sfeq	r19, r17
	l.bf	.L216
	l.or	r5, r16, r16
	l.sfges	r22, r24
	l.bf	.L222
	 l.nop

	l.or	r11, r22, r22
	l.j	.L214
	l.or	r12, r20, r20
.L216:
	l.or	r6, r18, r18
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L219
	l.or	r12, r18, r18
	l.or	r16, r22, r22
	l.or	r12, r20, r20
.L219:
	l.or	r11, r16, r16
.L214:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L220:
	l.or	r11, r16, r16
	l.j	.L214
	l.or	r12, r18, r18
.L221:
	l.or	r11, r22, r22
	l.j	.L214
	l.or	r12, r20, r20
.L222:
	l.or	r11, r16, r16
	l.j	.L214
	l.or	r12, r18, r18
	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L227
	 l.nop

	l.movhi	r19, ha(s.0)
	l.addi	r19, r19, lo(s.0)
	l.movhi	r21, ha(digits)
	l.addi	r21, r21, lo(digits)
.L226:
	l.andi	r17, r3, 63
	l.add	r17, r21, r17
	l.lbs	r17, 0(r17)
	l.sb	0(r19), r17
	l.ori	r17, r0, 6
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L226
	l.addi	r19, r19, 1
.L225:
	l.sb	0(r19), r0
	l.movhi	r11, ha(s.0)
	l.jr	r9
	l.addi	r11, r11, lo(s.0)
.L227:
	l.movhi	r19, ha(s.0)
	l.j	.L225
	l.addi	r19, r19, lo(s.0)
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.addi	r3, r3, -1
	l.movhi	r17, ha(seed)
	l.addi	r19, r17, lo(seed)
	l.sw	lo(seed)(r17), r0
	l.jr	r9
	l.sw	4(r19), r3
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r9
	l.movhi	r16, ha(seed)
	l.addi	r18, r16, lo(seed)
	l.movhi	r5, hi(1481703424)
	l.ori	r5, r5, 62509
	l.movhi	r6, hi(1284833280)
	l.ori	r6, r6, 32557
	l.lwz	r3, lo(seed)(r16)
	l.jal	__muldi3
	l.lwz	r4, 4(r18)
	l.addi	r19, r12, 1
	l.sfltu	r19, r12
	l.bf	.L231
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L231:
	l.add	r11, r17, r11
	l.sw	lo(seed)(r16), r11
	l.sw	4(r18), r19
	l.ori	r17, r0, 1
	l.srl	r11, r11, r17
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r9, 8(r1)
	l.jr	r9
	l.addi	r1, r1, 12
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L236
	l.movhi	r19, hi(0)
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bf	.L233
	 l.nop

	l.sw	4(r17), r3
.L233:
	l.jr	r9
	 l.nop

.L236:
	l.sw	4(r3), r0
	l.j	.L233
	l.sw	0(r3), r0
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L238
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L238:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L237
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L237:
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r30
	l.sw	32(r1), r9
	l.or	r24, r3, r3
	l.or	r28, r4, r4
	l.or	r30, r5, r5
	l.lwz	r22, 0(r5)
	l.movhi	r17, hi(0)
	l.sfeq	r22, r17
	l.bf	.L241
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r18, r4, r4
	l.movhi	r16, hi(0)
.L244:
	l.or	r4, r18, r18
	l.jalr	r26
	l.or	r3, r24, r24
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L247
	 l.nop

	l.addi	r16, r16, 1
	l.sfne	r16, r22
	l.bf	.L244
	l.add	r18, r18, r20
.L241:
	l.addi	r17, r22, 1
	l.sw	0(r30), r17
	l.mul	r22, r20, r22
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memcpy
	l.add	r3, r28, r22
.L240:
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
.L247:
	l.mul	r16, r16, r20
	l.j	.L240
	l.add	r11, r28, r16
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
	l.lwz	r28, 0(r5)
	l.movhi	r17, hi(0)
	l.sfeq	r28, r17
	l.bf	.L252
	l.or	r22, r3, r3
	l.or	r26, r4, r4
	l.or	r20, r6, r6
	l.or	r24, r7, r7
	l.or	r18, r4, r4
	l.movhi	r16, hi(0)
.L251:
	l.or	r4, r18, r18
	l.jalr	r24
	l.or	r3, r22, r22
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L255
	 l.nop

	l.addi	r16, r16, 1
	l.sfne	r16, r28
	l.bf	.L251
	l.add	r18, r18, r20
	l.j	.L248
	l.movhi	r11, hi(0)
.L255:
	l.mul	r16, r16, r20
	l.add	r11, r26, r16
.L248:
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
.L252:
	l.j	.L248
	l.movhi	r11, hi(0)
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L257
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L257:
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.j	.L259
	l.or	r16, r3, r3
.L260:
	l.addi	r16, r16, 1
.L259:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L260
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L266
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L261
	l.ori	r21, r0, 1
	l.j	.L273
	l.movhi	r21, hi(0)
.L266:
	l.movhi	r21, hi(0)
.L261:
	l.addi	r16, r16, 1
	l.lbs	r17, 0(r16)
.L273:
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfgtu	r17, r19
	l.bf	.L263
	l.movhi	r11, hi(0)
	l.ori	r17, r0, 2
.L271:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L271
	l.ori	r17, r0, 2
.L263:
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bf	.L272
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L272:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.j	.L275
	l.or	r16, r3, r3
.L276:
	l.addi	r16, r16, 1
.L275:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L276
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L282
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L277
	l.ori	r21, r0, 1
	l.j	.L289
	l.movhi	r21, hi(0)
.L282:
	l.movhi	r21, hi(0)
.L277:
	l.addi	r16, r16, 1
	l.lbs	r17, 0(r16)
.L289:
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfgtu	r17, r19
	l.bf	.L279
	l.movhi	r11, hi(0)
	l.ori	r17, r0, 2
.L287:
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r17, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r11, -1(r16)
	l.addi	r11, r11, -48
	l.sub	r11, r17, r11
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r19
	l.bf	.L287
	l.ori	r17, r0, 2
.L279:
	l.movhi	r17, hi(0)
	l.sfne	r21, r17
	l.bf	.L288
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L288:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.j	.L291
	l.or	r16, r3, r3
.L292:
	l.addi	r16, r16, 1
.L291:
	l.jal	isspace
	l.lbs	r3, 0(r16)
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L292
	l.ori	r19, r0, 43
	l.lbs	r17, 0(r16)
	l.sfeq	r17, r19
	l.bf	.L298
	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bnf	.L293
	l.ori	r25, r0, 1
	l.j	.L309
	l.movhi	r25, hi(0)
.L298:
	l.movhi	r25, hi(0)
.L293:
	l.addi	r16, r16, 1
	l.lbs	r17, 0(r16)
.L309:
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfgtu	r17, r19
	l.bf	.L300
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.j	.L296
	l.or	r23, r19, r19
.L305:
	l.sub	r11, r11, r21
	l.sub	r11, r11, r17
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.sfleu	r17, r23
	l.bnf	.L295
	 l.nop

.L296:
	l.ori	r17, r0, 30
	l.srl	r17, r12, r17
	l.ori	r21, r0, 2
	l.sll	r19, r11, r21
	l.or	r19, r17, r19
	l.sll	r17, r12, r21
	l.add	r12, r17, r12
	l.sfltu	r12, r17
	l.bf	.L303
	l.ori	r17, r0, 1
	l.movhi	r17, hi(0)
.L303:
	l.add	r19, r19, r11
	l.add	r17, r17, r19
	l.add	r19, r12, r12
	l.sfltu	r19, r12
	l.bf	.L304
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L304:
	l.add	r17, r17, r17
	l.add	r11, r11, r17
	l.addi	r16, r16, 1
	l.lbs	r12, -1(r16)
	l.addi	r12, r12, -48
	l.ori	r17, r0, 31
	l.sra	r21, r12, r17
	l.sub	r12, r19, r12
	l.sfgtu	r12, r19
	l.bf	.L305
	l.ori	r17, r0, 1
	l.j	.L305
	l.movhi	r17, hi(0)
.L300:
	l.movhi	r12, hi(0)
.L295:
	l.movhi	r17, hi(0)
	l.sfne	r25, r17
	l.bf	.L308
	l.lwz	r16, 0(r1)
	l.sub	r19, r17, r12
	l.sfne	r17, r12
	l.bnf	.L307
	l.ori	r21, r0, 1
.L302:
	l.sub	r11, r17, r11
	l.sub	r11, r11, r21
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
.L308:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L307:
	l.j	.L302
	l.movhi	r21, hi(0)
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
	l.sw	28(r1), r9
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r18, r5, r5
	l.or	r20, r6, r6
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L314
	l.or	r24, r7, r7
	l.j	.L310
	l.movhi	r16, hi(0)
.L319:
	l.srl	r18, r18, r28
.L313:
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L318
	l.movhi	r16, hi(0)
.L314:
	l.ori	r28, r0, 1
	l.srl	r16, r18, r28
	l.mul	r16, r16, r20
	l.add	r16, r22, r16
	l.or	r4, r16, r16
	l.jalr	r24
	l.or	r3, r26, r26
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L319
	l.sfles	r11, r17
	l.bf	.L310
	l.add	r22, r16, r20
	l.ori	r17, r0, 1
	l.srl	r17, r18, r17
	l.addi	r18, r18, -1
	l.j	.L313
	l.sub	r18, r18, r17
.L318:
.L310:
	l.or	r11, r16, r16
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
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
	l.or	r28, r3, r3
	l.or	r22, r4, r4
	l.or	r20, r6, r6
	l.or	r26, r7, r7
	l.or	r24, r8, r8
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bnf	.L323
	l.or	r18, r5, r5
	l.j	.L320
	l.movhi	r16, hi(0)
.L328:
	l.sra	r18, r18, r17
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bnf	.L327
	l.movhi	r16, hi(0)
.L323:
	l.ori	r17, r0, 1
	l.sra	r16, r18, r17
	l.mul	r16, r16, r20
	l.add	r16, r22, r16
	l.or	r5, r24, r24
	l.or	r4, r16, r16
	l.jalr	r26
	l.or	r3, r28, r28
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L320
	l.sfles	r11, r17
	l.bf	.L328
	l.ori	r17, r0, 1
	l.add	r22, r16, r20
	l.j	.L328
	l.addi	r18, r18, -1
.L327:
.L320:
	l.or	r11, r16, r16
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
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
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
	l.bf	.L331
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L334
	l.ori	r17, r0, 1
.L333:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L331:
	l.jr	r9
	 l.nop

.L334:
	l.j	.L333
	l.movhi	r17, hi(0)
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
	l.or	r16, r3, r3
	l.or	r24, r4, r4
	l.or	r22, r5, r5
	l.or	r28, r6, r6
	l.or	r26, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r22, r22
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r28, r28
	l.or	r6, r26, r26
	l.or	r3, r24, r24
	l.jal	__moddi3
	l.or	r4, r22, r22
	l.sw	0(r16), r20
	l.sw	4(r16), r18
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.or	r11, r16, r16
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
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L338
	l.or	r11, r3, r3
	l.sub	r11, r0, r3
.L338:
	l.jr	r9
	 l.nop

	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
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
	l.bf	.L341
	l.or	r12, r4, r4
	l.movhi	r11, hi(0)
	l.sub	r12, r11, r4
	l.sfne	r11, r4
	l.bnf	.L344
	l.ori	r17, r0, 1
.L343:
	l.sub	r11, r11, r3
	l.sub	r11, r11, r17
.L341:
	l.jr	r9
	 l.nop

.L344:
	l.j	.L343
	l.movhi	r17, hi(0)
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r9
	l.or	r16, r3, r3
	l.or	r24, r4, r4
	l.or	r22, r5, r5
	l.or	r28, r6, r6
	l.or	r26, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.jal	__divdi3
	l.or	r4, r22, r22
	l.or	r20, r11, r11
	l.or	r18, r12, r12
	l.or	r5, r28, r28
	l.or	r6, r26, r26
	l.or	r3, r24, r24
	l.jal	__moddi3
	l.or	r4, r22, r22
	l.sw	0(r16), r20
	l.sw	4(r16), r18
	l.sw	8(r16), r11
	l.sw	12(r16), r12
	l.or	r11, r16, r16
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
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L349
	l.or	r11, r3, r3
	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
.L356:
	l.bnf	.L355
	l.movhi	r19, hi(0)
	l.addi	r3, r3, 4
	l.lwz	r17, 0(r3)
	l.sfeq	r17, r19
	l.bnf	.L356
	l.sfne	r4, r17
	l.j	.L349
	l.or	r11, r3, r3
.L355:
	l.or	r11, r3, r3
.L349:
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L354
	 l.nop

	l.movhi	r11, hi(0)
.L354:
	l.jr	r9
	 l.nop

	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L365
	l.sfltu	r19, r17
.L358:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L359
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L359
	 l.nop

	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bnf	.L358
	 l.nop

.L359:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
.L365:
	l.bf	.L357
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L357
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L357:
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L367:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L367
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
	l.bf	.L370
	l.or	r11, r3, r3
.L371:
	l.addi	r11, r11, 4
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L371
	 l.nop

.L370:
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
	l.bnf	.L383
	l.sfeq	r5, r17
.L375:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L376
	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L384
	l.movhi	r17, hi(0)
	l.lwz	r17, 0(r4)
	l.sfne	r17, r19
	l.bnf	.L376
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.sfeq	r5, r17
	l.bnf	.L375
	l.addi	r4, r4, 4
.L376:
	l.movhi	r17, hi(0)
.L384:
	l.sfeq	r5, r17
.L383:
	l.bf	.L379
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L374
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L374
	l.ori	r11, r0, 1
	l.j	.L374
	l.movhi	r11, hi(0)
.L379:
	l.movhi	r11, hi(0)
.L374:
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L394
	l.or	r11, r3, r3
.L386:
	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
	l.bnf	.L393
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.sfeq	r5, r17
	l.bnf	.L386
	l.addi	r3, r3, 4
	l.j	.L395
	l.or	r11, r3, r3
.L393:
	l.or	r11, r3, r3
.L394:
.L395:
	l.sfne	r5, r17
	l.bf	.L392
	 l.nop

	l.movhi	r11, hi(0)
.L392:
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L405
	l.sfeq	r5, r17
.L397:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bnf	.L398
	l.movhi	r17, hi(0)
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.sfeq	r5, r17
	l.bnf	.L397
	l.addi	r4, r4, 4
.L398:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
.L405:
	l.bf	.L401
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L396
	l.xori	r11, r0, -1
	l.sfgtu	r19, r17
	l.bf	.L396
	l.ori	r11, r0, 1
	l.j	.L396
	l.movhi	r11, hi(0)
.L401:
	l.movhi	r11, hi(0)
.L396:
	l.jr	r9
	 l.nop

	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.or	r11, r3, r3
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L407
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r23, r0, -1
.L408:
	l.addi	r4, r4, 4
	l.addi	r19, r19, 4
	l.lwz	r21, -4(r4)
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L408
	l.sw	-4(r19), r21
.L407:
	l.jr	r9
	 l.nop

	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.sfeq	r3, r4
	l.bf	.L411
	l.or	r11, r3, r3
	l.sub	r17, r3, r4
	l.ori	r19, r0, 2
	l.sll	r19, r5, r19
	l.sfltu	r17, r19
	l.bf	.L412
	l.movhi	r17, hi(0)
	l.addi	r19, r5, -1
	l.sfne	r5, r17
	l.or	r17, r3, r3
	l.bnf	.L411
	l.xori	r23, r0, -1
.L413:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r21, -4(r4)
	l.addi	r19, r19, -1
	l.sfne	r19, r23
	l.bf	.L413
	l.sw	-4(r17), r21
	l.j	.L411
	 l.nop

.L412:
	l.sfeq	r5, r17
	l.bf	.L411
	 l.nop

	l.addi	r17, r5, -1
	l.ori	r19, r0, 2
	l.sll	r17, r17, r19
	l.add	r19, r4, r17
	l.add	r17, r3, r17
	l.addi	r4, r4, -4
.L414:
	l.lwz	r21, 0(r19)
	l.sw	0(r17), r21
	l.addi	r19, r19, -4
	l.sfne	r19, r4
	l.bf	.L414
	l.addi	r17, r17, -4
.L411:
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
	l.bf	.L420
	l.addi	r17, r5, -1
	l.or	r19, r3, r3
	l.xori	r21, r0, -1
.L421:
	l.addi	r19, r19, 4
	l.addi	r17, r17, -1
	l.sfne	r17, r21
	l.bf	.L421
	l.sw	-4(r19), r4
.L420:
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.sfgeu	r3, r4
	l.bf	.L424
	l.sfeq	r3, r4
	l.add	r17, r3, r5
	l.movhi	r19, hi(0)
	l.sfeq	r5, r19
	l.bf	.L423
	l.add	r4, r4, r5
.L426:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sfne	r3, r17
	l.bf	.L426
	l.sb	0(r4), r19
.L423:
	l.jr	r9
	 l.nop

.L424:
	l.bf	.L423
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L423
	 l.nop

	l.add	r5, r3, r5
.L427:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.lbs	r17, -1(r3)
	l.sfne	r3, r5
	l.bf	.L427
	l.sb	-1(r4), r17
	l.j	.L423
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
	l.bnf	.L435
	l.sll	r12, r4, r5
	l.or	r11, r25, r25
	l.movhi	r21, hi(0)
.L435:
	l.sfges	r19, r21
	l.bnf	.L432
	 l.nop

	l.movhi	r12, hi(0)
.L432:
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
	l.bnf	.L436
	l.srl	r3, r3, r5
	l.or	r4, r23, r23
	l.movhi	r17, hi(0)
.L436:
	l.sfges	r19, r17
	l.bnf	.L434
	 l.nop

	l.movhi	r3, hi(0)
.L434:
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
	l.bnf	.L442
	l.srl	r11, r3, r5
	l.or	r12, r25, r25
	l.movhi	r21, hi(0)
.L442:
	l.sfges	r19, r21
	l.bnf	.L439
	 l.nop

	l.movhi	r11, hi(0)
.L439:
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
	l.bnf	.L443
	l.sll	r4, r4, r5
	l.or	r3, r23, r23
	l.movhi	r17, hi(0)
.L443:
	l.sfges	r19, r17
	l.bnf	.L441
	 l.nop

	l.movhi	r4, hi(0)
.L441:
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
	l.sll	r11, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.srl	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.andi	r3, r3, 0xffff
	l.srl	r11, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.andi	r3, r3, 0xff
	l.sll	r11, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.srl	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.andi	r3, r3, 0xff
	l.srl	r11, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.andi	r11, r3, 65280
	l.ori	r17, r0, 8
	l.srl	r11, r11, r17
	l.andi	r3, r3, 0xff
	l.sll	r3, r3, r17
	l.jr	r9
	l.or	r11, r11, r3
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.ori	r19, r0, 24
	l.srl	r17, r3, r19
	l.ori	r21, r0, 8
	l.srl	r11, r3, r21
	l.andi	r11, r11, 65280
	l.or	r11, r11, r17
	l.andi	r17, r3, 65280
	l.sll	r17, r17, r21
	l.or	r11, r11, r17
	l.sll	r3, r3, r19
	l.jr	r9
	l.or	r11, r11, r3
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.ori	r21, r0, 24
	l.srl	r19, r3, r21
	l.movhi	r17, hi(16711680)
	l.and	r12, r3, r17
	l.ori	r23, r0, 8
	l.srl	r12, r12, r23
	l.or	r12, r12, r19
	l.andi	r19, r3, 65280
	l.sll	r19, r19, r23
	l.or	r12, r12, r19
	l.sll	r3, r3, r21
	l.srl	r11, r4, r21
	l.and	r17, r4, r17
	l.srl	r17, r17, r23
	l.or	r11, r11, r17
	l.andi	r17, r4, 65280
	l.sll	r17, r17, r23
	l.or	r11, r11, r17
	l.sll	r4, r4, r21
	l.or	r11, r11, r4
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
.L461:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfeq	r17, r21
	l.bnf	.L460
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L461
	l.srl	r17, r3, r11
	l.j	.L455
	l.movhi	r11, hi(0)
.L460:
	l.addi	r11, r11, 1
.L455:
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.movhi	r19, hi(0)
	l.sfeq	r3, r19
	l.bf	.L465
	l.andi	r17, r3, 1
	l.sfne	r17, r19
	l.bf	.L468
	l.ori	r11, r0, 1
	l.ori	r17, r0, 1
.L469:
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
	l.and	r17, r3, r17
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L469
	l.ori	r17, r0, 1
.L462:
.L468:
	l.jr	r9
	 l.nop

.L465:
	l.j	.L462
	l.movhi	r11, hi(0)
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
	l.bf	.L470
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r18
	l.bf	.L470
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L470:
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
	l.bf	.L476
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC5)
	l.addi	r19, r17, lo(.LC5)
	l.lwz	r5, lo(.LC5)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L476
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L476:
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
	l.bf	.L482
	l.ori	r11, r0, 1
	l.movhi	r17, ha(.LC7)
	l.addi	r19, r17, lo(.LC7)
	l.lwz	r5, lo(.LC7)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r20
	l.bf	.L482
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L482:
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
	.section	.rodata.cst4
	.align 4
.LC8:
	.long	1073741824
	.align 4
.LC9:
	.long	1056964608
	.section	.text
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
	l.bf	.L491
	l.or	r4, r20, r20
	l.jal	__addsf3
	l.or	r3, r20, r20
	l.or	r4, r11, r11
	l.jal	__nesf2
	l.or	r3, r20, r20
	l.sfne	r11, r18
	l.bnf	.L491
	l.sfges	r16, r18
	l.bnf	.L499
	l.movhi	r17, ha(.LC8)
	l.j	.L495
	l.lwz	r18, lo(.LC8)(r17)
.L499:
	l.movhi	r17, ha(.LC9)
	l.j	.L495
	l.lwz	r18, lo(.LC9)(r17)
.L494:
	l.ori	r17, r0, 31
.L500:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L491
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L495:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L500
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L494
	l.or	r20, r11, r11
.L491:
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
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L502
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r24, r24
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.or	r3, r24, r24
	l.jal	__nedf2
	l.or	r4, r22, r22
	l.sfne	r11, r18
	l.bnf	.L502
	l.sfges	r16, r18
	l.bnf	.L510
	l.movhi	r17, ha(.LC10)
	l.addi	r19, r17, lo(.LC10)
	l.lwz	r20, lo(.LC10)(r17)
	l.j	.L506
	l.lwz	r18, 4(r19)
.L510:
	l.movhi	r17, ha(.LC11)
	l.addi	r19, r17, lo(.LC11)
	l.lwz	r20, lo(.LC11)(r17)
	l.j	.L506
	l.lwz	r18, 4(r19)
.L505:
	l.ori	r17, r0, 31
.L511:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L502
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L506:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L511
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L505
	l.or	r22, r12, r12
.L502:
	l.or	r11, r24, r24
	l.or	r12, r22, r22
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	ldexp, .-ldexp
	.section	.rodata
	.align 4
.LC12:
	.long	1073741824
	.long	0
	.align 4
.LC13:
	.long	1071644672
	.long	0
	.section	.text
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r24, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r5, r3, r3
	l.jal	__unorddf2
	l.or	r6, r4, r4
	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L513
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.or	r3, r24, r24
	l.jal	__adddf3
	l.or	r4, r22, r22
	l.or	r5, r11, r11
	l.or	r6, r12, r12
	l.or	r3, r24, r24
	l.jal	__nedf2
	l.or	r4, r22, r22
	l.sfne	r11, r18
	l.bnf	.L513
	l.sfges	r16, r18
	l.bnf	.L521
	l.movhi	r17, ha(.LC12)
	l.addi	r19, r17, lo(.LC12)
	l.lwz	r20, lo(.LC12)(r17)
	l.j	.L517
	l.lwz	r18, 4(r19)
.L521:
	l.movhi	r17, ha(.LC13)
	l.addi	r19, r17, lo(.LC13)
	l.lwz	r20, lo(.LC13)(r17)
	l.j	.L517
	l.lwz	r18, 4(r19)
.L516:
	l.ori	r17, r0, 31
.L522:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L513
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L517:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L522
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L516
	l.or	r22, r12, r12
.L513:
	l.or	r11, r24, r24
	l.or	r12, r22, r22
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L524
	l.or	r11, r3, r3
	l.add	r5, r4, r5
	l.or	r17, r3, r3
.L525:
	l.addi	r4, r4, 1
	l.lbs	r21, -1(r4)
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r17)
	l.xor	r19, r19, r21
	l.sfne	r4, r5
	l.bf	.L525
	l.sb	-1(r17), r19
.L524:
	l.jr	r9
	 l.nop

	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.jal	strlen
	l.or	r16, r5, r5
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bnf	.L534
	l.add	r11, r20, r11
.L528:
	l.lbs	r17, 0(r18)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L529
	l.sb	0(r11), r17
	l.addi	r18, r18, 1
	l.addi	r16, r16, -1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bnf	.L528
	l.addi	r11, r11, 1
.L529:
	l.movhi	r17, hi(0)
.L534:
	l.sfne	r16, r17
	l.bf	.L531
	 l.nop

	l.sb	0(r11), r0
.L531:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r9, 12(r1)
	l.jr	r9
	l.addi	r1, r1, 16
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bnf	.L535
	l.movhi	r11, hi(0)
	l.add	r17, r3, r11
.L541:
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L538
	 l.nop

.L535:
	l.jr	r9
	 l.nop

.L538:
	l.addi	r11, r11, 1
	l.sfeq	r11, r4
	l.bnf	.L541
	l.add	r17, r3, r11
	l.j	.L535
	 l.nop

	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L549
	l.or	r11, r3, r3
.L543:
	l.or	r17, r4, r4
.L546:
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bnf	.L550
	l.addi	r17, r17, 1
	l.lbs	r21, -1(r17)
	l.lbs	r19, 0(r11)
	l.sfeq	r21, r19
	l.bnf	.L546
	 l.nop

.L544:
	l.jr	r9
	 l.nop

.L549:
	l.j	.L544
	l.movhi	r11, hi(0)
.L550:
	l.addi	r11, r11, 1
	l.lbs	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bnf	.L543
	 l.nop

	l.j	.L544
	l.movhi	r11, hi(0)
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.j	.L553
	l.movhi	r11, hi(0)
.L556:
	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L557
	 l.nop

.L553:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bnf	.L556
	 l.nop

	l.j	.L556
	l.or	r11, r3, r3
.L557:
	l.jr	r9
	 l.nop

	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	strlen
	l.or	r3, r4, r4
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L558
	l.or	r20, r11, r11
	l.lbs	r22, 0(r18)
.L560:
	l.or	r4, r22, r22
	l.jal	strchr
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bnf	.L564
	l.or	r16, r11, r11
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.jal	strncmp
	l.or	r3, r16, r16
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L565
	l.or	r11, r16, r16
	l.j	.L560
	l.addi	r16, r16, 1
.L564:
	l.movhi	r16, hi(0)
.L558:
	l.or	r11, r16, r16
.L565:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
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
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L576
	l.movhi	r17, ha(.LC14)
.L578:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__gtdf2
	l.or	r4, r18, r18
	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L570
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__ltdf2
	l.or	r4, r20, r20
	l.sflts	r11, r24
	l.bf	.L577
	l.movhi	r17, hi(-2147483648)
.L570:
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
.L576:
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r22, r22
	l.jal	__gtdf2
	l.or	r4, r20, r20
	l.sfgts	r11, r24
	l.bnf	.L578
	l.movhi	r17, ha(.LC14)
	l.movhi	r17, hi(-2147483648)
.L577:
	l.j	.L570
	l.xor	r16, r16, r17
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.sub	r18, r4, r6
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L583
	l.add	r18, r3, r18
	l.sfltu	r4, r6
	l.bf	.L584
	l.sfgtu	r3, r18
	l.bf	.L585
	l.addi	r24, r5, 1
	l.lbs	r22, 0(r5)
	l.j	.L582
	l.addi	r20, r6, -1
.L581:
	l.addi	r16, r16, 1
.L590:
	l.sfgeu	r18, r16
	l.bnf	.L589
	l.movhi	r11, hi(0)
.L582:
	l.lbs	r17, 0(r16)
	l.sfne	r17, r22
	l.bf	.L581
	l.or	r5, r20, r20
	l.or	r4, r24, r24
	l.jal	memcmp
	l.addi	r3, r16, 1
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bnf	.L590
	l.addi	r16, r16, 1
	l.addi	r16, r16, -1
	l.or	r11, r16, r16
.L589:
.L579:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r9, 20(r1)
	l.jr	r9
	l.addi	r1, r1, 24
.L583:
	l.j	.L579
	l.or	r11, r3, r3
.L584:
	l.j	.L579
	l.movhi	r11, hi(0)
.L585:
	l.j	.L579
	l.movhi	r11, hi(0)
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.jal	memcpy
	l.or	r16, r5, r5
	l.add	r11, r11, r16
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 4
.LC15:
	.long	0
	.long	0
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
	l.or	r14, r4, r4
	l.or	r28, r5, r5
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.jal	__ltdf2
	l.lwz	r6, 4(r17)
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L618
	l.movhi	r17, hi(-2147483648)
	l.movhi	r30, hi(0)
.L594:
	l.movhi	r17, ha(.LC16)
	l.addi	r19, r17, lo(.LC16)
	l.lwz	r5, lo(.LC16)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__gedf2
	l.or	r4, r14, r14
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L614
	l.movhi	r18, hi(0)
	l.movhi	r17, ha(.LC17)
	l.lwz	r26, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r24, 4(r17)
	l.movhi	r17, ha(.LC16)
	l.addi	r17, r17, lo(.LC16)
	l.lwz	r22, 0(r17)
	l.lwz	r20, 4(r17)
.L598:
	l.addi	r18, r18, 1
	l.or	r5, r26, r26
	l.or	r6, r24, r24
	l.or	r3, r16, r16
	l.jal	__muldf3
	l.or	r4, r14, r14
	l.or	r3, r11, r11
	l.or	r4, r12, r12
	l.or	r16, r3, r3
	l.or	r14, r12, r12
	l.or	r5, r22, r22
	l.jal	__gedf2
	l.or	r6, r20, r20
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L598
	 l.nop

.L599:
.L620:
	l.movhi	r17, hi(0)
	l.sfeq	r30, r17
.L619:
	l.bf	.L603
	l.sw	0(r28), r18
	l.movhi	r17, hi(-2147483648)
	l.xor	r16, r16, r17
.L603:
	l.or	r11, r16, r16
	l.or	r12, r14, r14
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
.L618:
	l.xor	r16, r16, r17
	l.j	.L594
	l.ori	r30, r0, 1
.L614:
	l.movhi	r17, ha(.LC17)
	l.addi	r19, r17, lo(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.lwz	r6, 4(r19)
	l.or	r3, r16, r16
	l.jal	__ltdf2
	l.or	r4, r14, r14
	l.movhi	r18, hi(0)
	l.sflts	r11, r18
	l.bnf	.L620
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.jal	__nedf2
	l.or	r4, r14, r14
	l.sfne	r11, r18
	l.bnf	.L616
	l.movhi	r17, ha(.LC17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r22, 0(r17)
	l.lwz	r20, 4(r17)
.L602:
	l.addi	r18, r18, -1
	l.or	r5, r16, r16
	l.or	r6, r14, r14
	l.or	r3, r16, r16
	l.jal	__adddf3
	l.or	r4, r14, r14
	l.or	r3, r11, r11
	l.or	r4, r12, r12
	l.or	r16, r3, r3
	l.or	r14, r12, r12
	l.or	r5, r22, r22
	l.jal	__ltdf2
	l.or	r6, r20, r20
	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L602
	l.sfeq	r30, r17
	l.j	.L619
	 l.nop

.L616:
	l.j	.L599
	l.movhi	r18, hi(0)
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.or	r23, r4, r4
	l.or	r4, r4, r3
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L625
	l.or	r21, r3, r3
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
	l.j	.L624
	l.movhi	r25, hi(0)
.L630:
	l.j	.L627
	l.movhi	r19, hi(0)
.L629:
	l.add	r5, r5, r5
	l.add	r5, r19, r5
	l.or	r6, r17, r17
	l.ori	r17, r0, 31
	l.sll	r19, r21, r17
	l.ori	r27, r0, 1
	l.srl	r17, r23, r27
	l.or	r17, r19, r17
	l.srl	r21, r21, r27
	l.or	r23, r17, r17
	l.or	r17, r21, r17
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L621
	 l.nop

.L624:
	l.andi	r19, r23, 1
	l.sub	r17, r25, r19
	l.sfne	r25, r19
	l.bnf	.L630
	l.ori	r19, r0, 1
.L627:
	l.sub	r19, r25, r19
	l.and	r19, r5, r19
	l.and	r17, r6, r17
	l.add	r17, r12, r17
	l.sfltu	r17, r12
	l.bf	.L628
	l.ori	r27, r0, 1
	l.movhi	r27, hi(0)
.L628:
	l.add	r11, r11, r19
	l.add	r11, r27, r11
	l.or	r12, r17, r17
	l.add	r17, r6, r6
	l.sfltu	r17, r6
	l.bf	.L629
	l.ori	r19, r0, 1
	l.j	.L629
	l.movhi	r19, hi(0)
.L625:
	l.movhi	r11, hi(0)
	l.movhi	r12, hi(0)
.L621:
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bnf	.L633
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L647:
	l.bnf	.L633
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L633
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L647
	l.sfges	r4, r21
.L633:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L634
	l.movhi	r11, hi(0)
.L635:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L646
	 l.nop

	l.or	r11, r3, r3
.L646:
	l.jr	r9
	 l.nop

.L648:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L635
	 l.nop

.L634:
	l.sfltu	r3, r4
	l.bf	.L648
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L648
	l.or	r11, r11, r17
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.ori	r21, r0, 24
	l.sll	r17, r3, r21
	l.sra	r17, r17, r21
	l.ori	r19, r0, 7
	l.sra	r19, r17, r19
	l.sll	r19, r19, r21
	l.sra	r19, r19, r21
	l.sfeq	r19, r17
	l.bf	.L651
	l.xor	r3, r19, r17
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.ori	r17, r0, 8
	l.jal	__clzsi2
	l.sll	r3, r3, r17
	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L651:
	l.jr	r9
	l.ori	r11, r0, 7
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.ori	r17, r0, 31
	l.sra	r17, r3, r17
	l.xor	r3, r17, r3
	l.xor	r4, r17, r4
	l.or	r17, r3, r4
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L659
	 l.nop

	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
.L659:
	l.jr	r9
	l.ori	r11, r0, 63
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L669
	l.movhi	r11, hi(0)
.L666:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L666
	l.add	r4, r4, r4
.L664:
.L669:
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
	l.sfgeu	r3, r4
	l.bf	.L671
	l.and	r27, r5, r27
	l.movhi	r17, hi(0)
.L683:
	l.sfne	r25, r17
	l.bnf	.L673
	l.ori	r21, r0, 3
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r25, r25, r21
	l.add	r25, r25, r4
.L677:
	l.lwz	r21, 4(r17)
	l.lwz	r23, 0(r17)
	l.sw	0(r19), r23
	l.sw	4(r19), r21
	l.addi	r17, r17, 8
	l.sfne	r17, r25
	l.bf	.L677
	l.addi	r19, r19, 8
.L673:
	l.sfleu	r5, r27
	l.bf	.L670
	 l.nop

	l.add	r17, r4, r27
	l.add	r3, r3, r27
	l.add	r5, r5, r4
.L678:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r5
	l.bf	.L678
	l.addi	r3, r3, 1
.L670:
	l.jr	r9
	 l.nop

.L671:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L683
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L670
	l.xori	r23, r0, -1
.L675:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L675
	l.sb	0(r19), r21
	l.j	.L670
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.ori	r17, r0, 1
	l.sfgeu	r3, r4
	l.bf	.L685
	l.srl	r23, r5, r17
	l.movhi	r17, hi(0)
.L695:
	l.sfne	r23, r17
	l.bnf	.L687
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.add	r23, r23, r23
	l.add	r23, r23, r4
.L691:
	l.lhs	r21, 0(r17)
	l.sh	0(r19), r21
	l.addi	r17, r17, 2
	l.sfne	r17, r23
	l.bf	.L691
	l.addi	r19, r19, 2
.L687:
	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L684
	l.addi	r5, r5, -1
	l.add	r4, r4, r5
	l.add	r3, r3, r5
	l.lbs	r17, 0(r4)
	l.sb	0(r3), r17
.L684:
	l.jr	r9
	 l.nop

.L685:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L695
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L684
	l.xori	r23, r0, -1
.L689:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L689
	l.sb	0(r19), r21
	l.j	.L684
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.ori	r17, r0, 2
	l.srl	r23, r5, r17
	l.xori	r25, r0, -4
	l.sfgeu	r3, r4
	l.bf	.L697
	l.and	r25, r5, r25
	l.movhi	r17, hi(0)
.L709:
	l.sfne	r23, r17
	l.bnf	.L699
	l.ori	r21, r0, 2
	l.or	r17, r4, r4
	l.or	r19, r3, r3
	l.sll	r23, r23, r21
	l.add	r23, r23, r4
.L703:
	l.lwz	r21, 0(r17)
	l.sw	0(r19), r21
	l.addi	r17, r17, 4
	l.sfne	r17, r23
	l.bf	.L703
	l.addi	r19, r19, 4
.L699:
	l.sfleu	r5, r25
	l.bf	.L696
	 l.nop

	l.add	r17, r4, r25
	l.add	r3, r3, r25
	l.add	r5, r5, r4
.L704:
	l.lbs	r19, 0(r17)
	l.sb	0(r3), r19
	l.addi	r17, r17, 1
	l.sfne	r17, r5
	l.bf	.L704
	l.addi	r3, r3, 1
.L696:
	l.jr	r9
	 l.nop

.L697:
	l.add	r17, r4, r5
	l.sfltu	r17, r3
	l.bf	.L709
	l.movhi	r17, hi(0)
	l.addi	r17, r5, -1
	l.movhi	r19, hi(0)
	l.sfne	r5, r19
	l.bnf	.L696
	l.xori	r23, r0, -1
.L701:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.addi	r17, r17, -1
	l.sfne	r17, r23
	l.bf	.L701
	l.sb	0(r19), r21
	l.j	.L696
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
.L724:
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r23, hi(0)
	l.sfne	r17, r23
	l.bf	.L720
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r21
	l.bf	.L724
	l.sub	r17, r19, r11
.L720:
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
.L729:
	l.andi	r17, r17, 1
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L725
	 l.nop

	l.addi	r11, r11, 1
	l.sfne	r11, r19
	l.bf	.L729
	l.sra	r17, r3, r11
.L725:
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
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC18)
	l.jal	__gesf2
	l.lwz	r4, lo(.LC18)(r17)
	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L737
	l.movhi	r17, ha(.LC18)
	l.jal	__fixsfsi
	l.or	r3, r16, r16
.L730:
	l.lwz	r16, 0(r1)
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L737:
	l.lwz	r4, lo(.LC18)(r17)
	l.jal	__subsf3
	l.or	r3, r16, r16
	l.jal	__fixsfsi
	l.or	r3, r11, r11
	l.ori	r17, r0, 32768
	l.j	.L730
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
.L739:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L739
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
.L742:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.addi	r17, r17, 1
	l.sfne	r17, r21
	l.bf	.L742
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
	l.bf	.L749
	l.movhi	r11, hi(0)
.L746:
	l.andi	r17, r3, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r4
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L746
	l.add	r4, r4, r4
.L744:
.L749:
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L753
	l.sfeq	r4, r17
	l.bf	.L756
	l.movhi	r11, hi(0)
.L752:
	l.andi	r17, r4, 1
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L752
	l.add	r3, r3, r3
.L750:
.L756:
	l.jr	r9
	 l.nop

.L753:
	l.j	.L750
	l.movhi	r11, hi(0)
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bnf	.L759
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L773:
	l.bnf	.L759
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L759
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L773
	l.sfges	r4, r21
.L759:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L760
	l.movhi	r11, hi(0)
.L761:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L772
	 l.nop

	l.or	r11, r3, r3
.L772:
	l.jr	r9
	 l.nop

.L774:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L761
	 l.nop

.L760:
	l.sfltu	r3, r4
	l.bf	.L774
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L774
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
	l.bf	.L778
	l.or	r4, r18, r18
	l.jal	__gtsf2
	l.or	r3, r16, r16
	l.sfgts	r11, r20
	l.bf	.L775
	l.ori	r11, r0, 1
	l.j	.L775
	l.movhi	r11, hi(0)
.L778:
	l.xori	r11, r0, -1
.L775:
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
	l.bf	.L784
	l.or	r5, r22, r22
	l.or	r6, r20, r20
	l.or	r3, r18, r18
	l.jal	__gtdf2
	l.or	r4, r16, r16
	l.sfgts	r11, r24
	l.bf	.L781
	l.ori	r11, r0, 1
	l.j	.L781
	l.movhi	r11, hi(0)
.L784:
	l.xori	r11, r0, -1
.L781:
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
	l.bnf	.L799
	 l.nop

	l.movhi	r21, hi(0)
.L792:
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L801
	l.movhi	r11, hi(0)
	l.ori	r19, r0, 32
	l.andi	r17, r4, 1
.L800:
	l.sub	r17, r0, r17
	l.and	r17, r17, r3
	l.add	r11, r11, r17
	l.ori	r17, r0, 1
	l.sra	r4, r4, r17
	l.movhi	r17, hi(0)
	l.sfeq	r4, r17
	l.bf	.L802
	l.add	r3, r3, r3
	l.addi	r19, r19, -1
	l.andi	r19, r19, 0xff
	l.sfne	r19, r17
	l.bf	.L800
	l.andi	r17, r4, 1
.L793:
	l.movhi	r17, hi(0)
.L801:
.L802:
	l.sfeq	r21, r17
	l.bf	.L791
	 l.nop

	l.sub	r11, r0, r11
.L791:
	l.jr	r9
	 l.nop

.L799:
	l.sub	r4, r0, r4
	l.j	.L792
	l.ori	r21, r0, 1
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bnf	.L809
	l.sw	4(r1), r9
	l.movhi	r16, hi(0)
.L804:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bnf	.L810
	 l.nop

.L805:
	l.jal	__udivmodsi4
	l.movhi	r5, hi(0)
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L811
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L811:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L809:
	l.sub	r3, r0, r3
	l.j	.L804
	l.ori	r16, r0, 1
.L810:
	l.sub	r4, r0, r4
	l.j	.L805
	l.xori	r16, r16, 1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r16
	l.sw	4(r1), r9
	l.movhi	r19, hi(0)
	l.sfges	r3, r19
	l.bnf	.L818
	l.or	r17, r4, r4
	l.movhi	r16, hi(0)
.L813:
	l.movhi	r19, hi(0)
	l.sfges	r17, r19
	l.bf	.L814
	l.or	r4, r17, r17
	l.sub	r4, r0, r17
.L814:
	l.jal	__udivmodsi4
	l.ori	r5, r0, 1
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L819
	l.lwz	r16, 0(r1)
	l.sub	r11, r0, r11
.L819:
	l.lwz	r9, 4(r1)
	l.jr	r9
	l.addi	r1, r1, 8
.L818:
	l.sub	r3, r0, r3
	l.j	.L813
	l.ori	r16, r0, 1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.sfltu	r4, r11
	l.ori	r19, r0, 16
	l.bnf	.L822
	l.ori	r17, r0, 1
	l.ori	r21, r0, 16
.L835:
	l.sll	r21, r4, r21
	l.movhi	r23, hi(0)
	l.sfges	r21, r23
	l.bnf	.L822
	 l.nop

	l.add	r4, r4, r4
	l.andi	r4, r4, 0xffff
	l.add	r17, r17, r17
	l.sfleu	r11, r4
	l.bf	.L822
	l.andi	r17, r17, 0xffff
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L835
	l.ori	r21, r0, 16
.L822:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L836
	l.sfltu	r11, r4
.L824:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bf	.L834
	 l.nop

	l.or	r11, r19, r19
.L834:
	l.jr	r9
	 l.nop

.L837:
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bnf	.L824
	l.sfltu	r11, r4
.L836:
	l.bf	.L837
	l.ori	r21, r0, 1
	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.j	.L837
	l.or	r19, r19, r17
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.sfltu	r4, r3
	l.ori	r19, r0, 32
	l.bnf	.L840
	l.ori	r17, r0, 1
	l.movhi	r21, hi(0)
	l.sfges	r4, r21
.L854:
	l.bnf	.L840
	 l.nop

	l.add	r4, r4, r4
	l.sfleu	r3, r4
	l.bf	.L840
	l.add	r17, r17, r17
	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L854
	l.sfges	r4, r21
.L840:
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L841
	l.movhi	r11, hi(0)
.L842:
	l.movhi	r17, hi(0)
	l.sfne	r5, r17
	l.bnf	.L853
	 l.nop

	l.or	r11, r3, r3
.L853:
	l.jr	r9
	 l.nop

.L855:
	l.srl	r17, r17, r19
	l.srl	r4, r4, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bnf	.L842
	 l.nop

.L841:
	l.sfltu	r3, r4
	l.bf	.L855
	l.ori	r19, r0, 1
	l.sub	r3, r3, r4
	l.j	.L855
	l.or	r11, r11, r17
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L857
	l.movhi	r17, hi(0)
	l.movhi	r12, hi(0)
	l.addi	r5, r5, -32
	l.sll	r11, r4, r5
.L859:
	l.jr	r9
	 l.nop

.L857:
	l.sfeq	r5, r17
	l.bf	.L860
	l.ori	r17, r0, 32
	l.sll	r12, r4, r5
	l.sll	r11, r3, r5
	l.sub	r17, r17, r5
	l.srl	r4, r4, r17
	l.j	.L859
	l.or	r11, r4, r11
.L860:
	l.or	r11, r3, r3
	l.j	.L859
	l.or	r12, r4, r4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L862
	l.movhi	r17, hi(0)
	l.ori	r17, r0, 31
	l.sra	r11, r3, r17
	l.addi	r5, r5, -32
	l.sra	r12, r3, r5
.L864:
	l.jr	r9
	 l.nop

.L862:
	l.sfeq	r5, r17
	l.bf	.L865
	l.ori	r17, r0, 32
	l.sra	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L864
	l.or	r12, r3, r12
.L865:
	l.or	r11, r3, r3
	l.j	.L864
	l.or	r12, r4, r4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.ori	r27, r0, 24
	l.srl	r17, r3, r27
	l.ori	r29, r0, 8
	l.srl	r23, r3, r29
	l.andi	r23, r23, 65280
	l.sll	r21, r3, r29
	l.srl	r19, r4, r27
	l.or	r19, r21, r19
	l.movhi	r25, hi(16711680)
	l.and	r19, r19, r25
	l.sll	r3, r3, r27
	l.srl	r12, r4, r29
	l.or	r12, r3, r12
	l.movhi	r21, hi(-16777216)
	l.and	r12, r12, r21
	l.or	r21, r29, r29
	l.sll	r11, r4, r29
	l.or	r29, r27, r27
	l.srl	r27, r4, r27
	l.srl	r21, r4, r21
	l.sll	r4, r4, r29
	l.andi	r21, r21, 65280
	l.and	r11, r11, r25
	l.or	r17, r17, r23
	l.or	r17, r17, r19
	l.or	r4, r4, r27
	l.or	r4, r4, r21
	l.or	r11, r4, r11
	l.jr	r9
	l.or	r12, r17, r12
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.ori	r23, r0, 24
	l.srl	r19, r3, r23
	l.ori	r21, r0, 8
	l.srl	r17, r3, r21
	l.andi	r17, r17, 65280
	l.sll	r11, r3, r21
	l.movhi	r21, hi(16711680)
	l.and	r11, r11, r21
	l.sll	r3, r3, r23
	l.or	r3, r3, r19
	l.or	r3, r3, r17
	l.jr	r9
	l.or	r11, r3, r11
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.ori	r17, r0, 65535
	l.sfleu	r3, r17
	l.bf	.L869
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L869:
	l.ori	r17, r0, 4
	l.sll	r19, r19, r17
	l.ori	r17, r0, 16
	l.sub	r17, r17, r19
	l.srl	r17, r3, r17
	l.andi	r21, r17, 65280
	l.movhi	r25, hi(0)
	l.sfeq	r21, r25
	l.bf	.L870
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L870:
	l.ori	r21, r0, 3
	l.sll	r11, r11, r21
	l.ori	r21, r0, 8
	l.sub	r21, r21, r11
	l.srl	r17, r17, r21
	l.add	r19, r11, r19
	l.andi	r21, r17, 240
	l.sfeq	r21, r25
	l.bf	.L871
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L871:
	l.ori	r23, r0, 2
	l.sll	r21, r21, r23
	l.ori	r23, r0, 4
	l.sub	r23, r23, r21
	l.srl	r17, r17, r23
	l.add	r19, r19, r21
	l.andi	r21, r17, 12
	l.sfeq	r21, r25
	l.bf	.L872
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L872:
	l.add	r21, r21, r21
	l.ori	r23, r0, 2
	l.sub	r25, r23, r21
	l.srl	r17, r17, r25
	l.add	r19, r19, r21
	l.and	r11, r17, r23
	l.ori	r21, r0, 1
	l.srl	r11, r11, r21
	l.sub	r23, r23, r17
	l.addi	r11, r11, -1
	l.and	r11, r11, r23
	l.jr	r9
	l.add	r11, r19, r11
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.sflts	r3, r5
	l.bf	.L875
	l.sfgts	r3, r5
	l.bf	.L876
	l.sfltu	r4, r6
	l.bf	.L877
	l.sfgtu	r4, r6
	l.bf	.L878
	 l.nop

	l.j	.L874
	l.ori	r11, r0, 1
.L875:
	l.movhi	r11, hi(0)
.L874:
	l.jr	r9
	 l.nop

.L876:
	l.j	.L874
	l.ori	r11, r0, 2
.L877:
	l.j	.L874
	l.movhi	r11, hi(0)
.L878:
	l.j	.L874
	l.ori	r11, r0, 2
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__cmpdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.andi	r17, r3, 65535
	l.movhi	r23, hi(0)
	l.sfeq	r17, r23
	l.bf	.L882
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L882:
	l.ori	r17, r0, 4
	l.sll	r19, r19, r17
	l.srl	r17, r3, r19
	l.andi	r21, r17, 255
	l.sfeq	r21, r23
	l.bf	.L883
	l.ori	r11, r0, 1
	l.movhi	r11, hi(0)
.L883:
	l.ori	r21, r0, 3
	l.sll	r11, r11, r21
	l.srl	r17, r17, r11
	l.add	r19, r11, r19
	l.andi	r21, r17, 15
	l.sfeq	r21, r23
	l.bf	.L884
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L884:
	l.ori	r25, r0, 2
	l.sll	r21, r21, r25
	l.srl	r17, r17, r21
	l.add	r19, r19, r21
	l.andi	r21, r17, 3
	l.sfeq	r21, r23
	l.bf	.L885
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L885:
	l.add	r21, r21, r21
	l.srl	r17, r17, r21
	l.andi	r17, r17, 3
	l.add	r19, r19, r21
	l.xori	r21, r17, -1
	l.andi	r21, r21, 1
	l.ori	r23, r0, 1
	l.srl	r17, r17, r23
	l.sub	r11, r25, r17
	l.sub	r17, r0, r21
	l.and	r11, r11, r17
	l.jr	r9
	l.add	r11, r19, r11
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.andi	r17, r5, 32
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L887
	l.movhi	r17, hi(0)
	l.movhi	r11, hi(0)
	l.addi	r5, r5, -32
	l.srl	r12, r3, r5
.L889:
	l.jr	r9
	 l.nop

.L887:
	l.sfeq	r5, r17
	l.bf	.L890
	l.ori	r17, r0, 32
	l.srl	r11, r3, r5
	l.sub	r17, r17, r5
	l.sll	r3, r3, r17
	l.srl	r12, r4, r5
	l.j	.L889
	l.or	r12, r3, r12
.L890:
	l.or	r11, r3, r3
	l.j	.L889
	l.or	r12, r4, r4
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.andi	r17, r3, 65535
	l.andi	r19, r4, 65535
	l.mul	r12, r17, r19
	l.ori	r23, r0, 16
	l.srl	r21, r12, r23
	l.srl	r3, r3, r23
	l.mul	r19, r3, r19
	l.add	r19, r19, r21
	l.srl	r21, r19, r23
	l.andi	r19, r19, 0xffff
	l.andi	r12, r12, 0xffff
	l.srl	r4, r4, r23
	l.mul	r17, r17, r4
	l.add	r17, r17, r19
	l.sll	r19, r17, r23
	l.srl	r17, r17, r23
	l.add	r17, r17, r21
	l.mul	r3, r3, r4
	l.add	r11, r3, r17
	l.jr	r9
	l.add	r12, r19, r12
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r9
	l.or	r22, r3, r3
	l.or	r20, r4, r4
	l.or	r18, r5, r5
	l.or	r16, r6, r6
	l.or	r4, r6, r6
	l.jal	__muldsi3
	l.or	r3, r20, r20
	l.mul	r16, r16, r22
	l.mul	r18, r18, r20
	l.add	r16, r16, r18
	l.add	r11, r16, r11
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r9, 16(r1)
	l.jr	r9
	l.addi	r1, r1, 20
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.movhi	r17, hi(0)
	l.sub	r12, r17, r4
	l.sfne	r17, r4
	l.bnf	.L896
	l.ori	r11, r0, 1
.L895:
	l.sub	r17, r17, r3
	l.jr	r9
	l.sub	r11, r17, r11
.L896:
	l.j	.L895
	l.movhi	r11, hi(0)
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.xor	r4, r4, r3
	l.ori	r17, r0, 16
	l.srl	r17, r4, r17
	l.xor	r17, r17, r4
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
	l.bf	.L900
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L900:
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
	l.bf	.L901
	l.ori	r21, r0, 1
	l.movhi	r21, hi(0)
.L901:
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
	l.bf	.L902
	l.ori	r19, r0, 1
	l.movhi	r19, hi(0)
.L902:
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
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.ori	r17, r0, 31
	l.srl	r26, r5, r17
	l.movhi	r17, ha(.LC19)
	l.addi	r19, r17, lo(.LC19)
	l.lwz	r24, lo(.LC19)(r17)
	l.j	.L907
	l.lwz	r22, 4(r19)
.L905:
	l.ori	r17, r0, 31
.L910:
	l.srl	r17, r16, r17
	l.add	r17, r17, r16
	l.ori	r19, r0, 1
	l.sra	r16, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L912
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.jal	__muldf3
	l.or	r4, r18, r18
	l.or	r20, r11, r11
	l.or	r18, r12, r12
.L907:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L910
	l.ori	r17, r0, 31
	l.or	r5, r20, r20
	l.or	r6, r18, r18
	l.or	r3, r24, r24
	l.jal	__muldf3
	l.or	r4, r22, r22
	l.or	r24, r11, r11
	l.j	.L905
	l.or	r22, r12, r12
.L912:
	l.sfeq	r26, r17
	l.bf	.L911
	l.or	r11, r24, r24
	l.movhi	r17, ha(.LC19)
	l.or	r5, r24, r24
	l.or	r6, r22, r22
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.jal	__divdf3
	l.lwz	r4, 4(r17)
	l.or	r24, r11, r11
	l.or	r22, r12, r12
	l.or	r11, r24, r24
.L911:
	l.or	r12, r22, r22
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r9, 24(r1)
	l.jr	r9
	l.addi	r1, r1, 28
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC20:
	.long	1065353216
	.section	.text
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
	l.or	r16, r4, r4
	l.ori	r17, r0, 31
	l.srl	r22, r4, r17
	l.movhi	r17, ha(.LC20)
	l.j	.L916
	l.lwz	r20, lo(.LC20)(r17)
.L914:
	l.ori	r17, r0, 31
.L919:
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L921
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r18, r18
	l.or	r18, r11, r11
.L916:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L919
	l.ori	r17, r0, 31
	l.or	r4, r18, r18
	l.jal	__mulsf3
	l.or	r3, r20, r20
	l.j	.L914
	l.or	r20, r11, r11
.L921:
	l.sfeq	r22, r17
	l.bf	.L920
	l.or	r11, r20, r20
	l.or	r4, r20, r20
	l.movhi	r17, ha(.LC20)
	l.jal	__divsf3
	l.lwz	r3, lo(.LC20)(r17)
	l.or	r20, r11, r11
	l.or	r11, r20, r20
.L920:
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
	l.bf	.L924
	l.sfgtu	r3, r5
	l.bf	.L925
	l.sfltu	r4, r6
	l.bf	.L926
	l.sfgtu	r4, r6
	l.bf	.L927
	 l.nop

	l.j	.L923
	l.ori	r11, r0, 1
.L924:
	l.movhi	r11, hi(0)
.L923:
	l.jr	r9
	 l.nop

.L925:
	l.j	.L923
	l.ori	r11, r0, 2
.L926:
	l.j	.L923
	l.movhi	r11, hi(0)
.L927:
	l.j	.L923
	l.ori	r11, r0, 2
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.addi	r1, r1, -4
	l.sw	0(r1), r9
	l.jal	__ucmpdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r9, 0(r1)
	l.jr	r9
	l.addi	r1, r1, 4
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
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
