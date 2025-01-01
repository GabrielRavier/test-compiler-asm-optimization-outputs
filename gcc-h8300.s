	.file	"mini-libc.c"
	.h8300h
	.section .text
	.align 1
	.global _memmove
_memmove:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	cmp.l	er1,er0
	bls	.L2
	mov.l	er1,er3
	add.l	er2,er3
	add.l	er0,er2
	bra	.L3
.L4:
	subs	#1,er3
	mov.b	@er3,r4l
	subs	#1,er2
	mov.b	r4l,@er2
.L3:
	cmp.l	er1,er3
	bne	.L4
	bra	.L5
.L2:
	beq	.L5
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L6
.L7:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L6:
	cmp.l	er2,er3
	bne	.L7
.L5:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_memmove, .-_memmove
	.align 1
	.global _memccpy
_memccpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	@(8,er6),er4
	extu.w	r2
	bra	.L9
.L11:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
.L9:
	mov.l	er4,er4
	beq	.L10
	mov.b	@er1,r3l
	mov.b	r3l,@er0
	extu.w	r3
	cmp.w	r3,r2
	bne	.L11
.L10:
	mov.l	er4,er4
	beq	.L13
	adds	#1,er0
	bra	.L12
.L13:
	sub.l	er0,er0
.L12:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	extu.w	r1
	bra	.L15
.L17:
	adds	#1,er0
	subs	#1,er2
.L15:
	mov.l	er2,er2
	beq	.L16
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L17
.L16:
	mov.l	er2,er2
	bne	.L18
	sub.l	er0,er0
.L18:
	mov.l	@er7+,er6
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	bra	.L21
.L23:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
.L21:
	mov.l	er2,er2
	beq	.L22
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L23
.L22:
	mov.l	er2,er2
	beq	.L25
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L24
.L25:
	sub.w	r0,r0
.L24:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L27
.L28:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L27:
	cmp.l	er2,er3
	bne	.L28
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_memcpy, .-_memcpy
	.align 1
	.global _memrchr
_memrchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	extu.w	r1
	subs	#1,er2
	bra	.L30
.L32:
	mov.l	er2,er4
	subs	#1,er4
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	@er3,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L33
	add.l	er2,er0
	bra	.L31
.L33:
	mov.l	er4,er2
.L30:
	cmp.l	#-1,er2
	bne	.L32
	sub.l	er0,er0
.L31:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er6,@-er7
	mov.l	er7,er6
	add.l	er0,er2
	mov.l	er0,er3
	bra	.L35
.L36:
	mov.b	r1l,@er3
	adds	#1,er3
.L35:
	cmp.l	er2,er3
	bne	.L36
	mov.l	@er7+,er6
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L38
.L39:
	adds	#1,er1
	adds	#1,er0
.L38:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L39
	mov.l	@er7+,er6
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	mov.l	er6,@-er7
	mov.l	er7,er6
	extu.w	r1
	bra	.L41
.L43:
	adds	#1,er0
.L41:
	mov.b	@er0,r2l
	beq	.L42
	extu.w	r2
	cmp.w	r2,r1
	bne	.L43
.L42:
	mov.l	@er7+,er6
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
.L46:
	mov.b	@er0,r2l
	extu.w	r2
	cmp.w	r2,r1
	beq	.L45
	mov.b	@er0+,r2l
	mov.b	r2l,r2l
	bne	.L46
	sub.l	er0,er0
.L45:
	mov.l	@er7+,er6
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L50
.L52:
	adds	#1,er0
	adds	#1,er1
.L50:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	cmp.b	r3l,r2l
	bne	.L51
	mov.b	r2l,r2l
	bne	.L52
.L51:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	mov.l	@er7+,er6
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	bra	.L54
.L55:
	adds	#1,er0
.L54:
	mov.b	@er0,r3l
	bne	.L55
	sub.l	er2,er0
	mov.l	@er7+,er6
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L61
	subs	#1,er2
	add.l	er0,er2
	bra	.L58
.L60:
	adds	#1,er0
	adds	#1,er1
.L58:
	mov.b	@er0,r3l
	beq	.L59
	mov.b	@er1,r3l
	beq	.L59
	cmp.l	er2,er0
	beq	.L59
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L60
.L59:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L57
.L61:
	sub.w	r0,r0
.L57:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L63
.L64:
	mov.b	@(1,er3),r4l
	mov.b	r4l,@er1
	mov.b	@er3,r4l
	mov.b	r4l,@(1,er1)
	adds	#2,er1
	adds	#2,er3
.L63:
	mov.l	er2,er4
	sub.l	er3,er4
	cmp.l	#1,er4
	bgt	.L64
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_swab, .-_swab
	.align 1
	.global _isalpha
_isalpha:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	or	#32,r2l
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L66
	sub.w	r0,r0
.L66:
	mov.l	@er7+,er6
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L68
	sub.w	r2,r2
.L68:
	mov.w	r2,r0
	mov.l	@er7+,er6
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#32,r0
	beq	.L71
	cmp.w	#9,r0
	bne	.L72
	mov.w	#1,r0
	bra	.L70
.L71:
	mov.w	#1,r0
	bra	.L70
.L72:
	sub.w	r0,r0
.L70:
	mov.l	@er7+,er6
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#31,r0
	bls	.L75
	cmp.w	#127,r0
	bne	.L76
	mov.w	#1,r0
	bra	.L74
.L75:
	mov.w	#1,r0
	bra	.L74
.L76:
	sub.w	r0,r0
.L74:
	mov.l	@er7+,er6
	rts
	.size	_iscntrl, .-_iscntrl
	.align 1
	.global _isdigit
_isdigit:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	add.w	#-48,r2
	mov.w	#1,r0
	cmp.w	#9,r2
	bls	.L78
	sub.w	r0,r0
.L78:
	mov.l	@er7+,er6
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L80
	sub.w	r0,r0
.L80:
	mov.l	@er7+,er6
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L82
	sub.w	r0,r0
.L82:
	mov.l	@er7+,er6
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L84
	sub.w	r0,r0
.L84:
	mov.l	@er7+,er6
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#32,r0
	beq	.L87
	add.w	#-9,r0
	cmp.w	#4,r0
	bhi	.L88
	mov.w	#1,r0
	bra	.L86
.L87:
	mov.w	#1,r0
	bra	.L86
.L88:
	sub.w	r0,r0
.L86:
	mov.l	@er7+,er6
	rts
	.size	_isspace, .-_isspace
	.align 1
	.global _isupper
_isupper:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	add.w	#-65,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L90
	sub.w	r0,r0
.L90:
	mov.l	@er7+,er6
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#31,r0
	bls	.L93
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L94
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L95
	add.w	#7,r0
	cmp.w	#2,r0
	bhi	.L96
	mov.w	#1,r0
	bra	.L92
.L93:
	mov.w	#1,r0
	bra	.L92
.L94:
	mov.w	#1,r0
	bra	.L92
.L95:
	mov.w	#1,r0
	bra	.L92
.L96:
	sub.w	r0,r0
.L92:
	mov.l	@er7+,er6
	rts
	.size	_iswcntrl, .-_iswcntrl
	.align 1
	.global _iswdigit
_iswdigit:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	add.w	#-48,r2
	mov.w	#1,r0
	cmp.w	#9,r2
	bls	.L98
	sub.w	r0,r0
.L98:
	mov.l	@er7+,er6
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#254,r0
	bhi	.L100
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L102
	sub.w	r0,r0
	bra	.L102
.L100:
	cmp.w	#8231,r0
	bls	.L103
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L104
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L105
	and	#254,r0l
	cmp.w	#-2,r0
	beq	.L106
	mov.w	#1,r0
	bra	.L102
.L103:
	mov.w	#1,r0
	bra	.L102
.L104:
	mov.w	#1,r0
	bra	.L102
.L105:
	mov.w	#1,r0
	bra	.L102
.L106:
	sub.w	r0,r0
.L102:
	mov.l	@er7+,er6
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L109
	or	#32,r0l
	add.w	#-97,r0
	cmp.w	#5,r0
	bhi	.L110
	mov.w	#1,r0
	bra	.L108
.L109:
	mov.w	#1,r0
	bra	.L108
.L110:
	sub.w	r0,r0
.L108:
	mov.l	@er7+,er6
	rts
	.size	_iswxdigit, .-_iswxdigit
	.align 1
	.global _toascii
_toascii:
	mov.l	er6,@-er7
	mov.l	er7,er6
	and.w	#127,r0
	mov.l	@er7+,er6
	rts
	.size	_toascii, .-_toascii
	.align 1
	.global _fdim
_fdim:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L115
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L116
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L119
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L113
.L115:
	mov.l	er4,er0
	bra	.L113
.L116:
	mov.l	er5,er0
	bra	.L113
.L119:
	sub.l	er0,er0
.L113:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fdim, .-_fdim
	.align 1
	.global _fdimf
_fdimf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L123
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L124
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L127
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L121
.L123:
	mov.l	er4,er0
	bra	.L121
.L124:
	mov.l	er5,er0
	bra	.L121
.L127:
	sub.l	er0,er0
.L121:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fdimf, .-_fdimf
	.align 1
	.global _fmax
_fmax:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L132
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L133
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L130
	mov.l	er4,er4
	bpl	.L134
	mov.l	er5,er0
	bra	.L129
.L130:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L137
	mov.l	er5,er0
	bra	.L129
.L132:
	mov.l	er5,er0
	bra	.L129
.L133:
	mov.l	er4,er0
	bra	.L129
.L134:
	mov.l	er4,er0
	bra	.L129
.L137:
	mov.l	er4,er0
.L129:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L142
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L143
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L140
	mov.l	er4,er4
	bpl	.L144
	mov.l	er5,er0
	bra	.L139
.L140:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L147
	mov.l	er5,er0
	bra	.L139
.L142:
	mov.l	er5,er0
	bra	.L139
.L143:
	mov.l	er4,er0
	bra	.L139
.L144:
	mov.l	er4,er0
	bra	.L139
.L147:
	mov.l	er4,er0
.L139:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L152
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L153
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L150
	mov.l	er4,er4
	bpl	.L154
	mov.l	er5,er0
	bra	.L149
.L150:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L157
	mov.l	er5,er0
	bra	.L149
.L152:
	mov.l	er5,er0
	bra	.L149
.L153:
	mov.l	er4,er0
	bra	.L149
.L154:
	mov.l	er4,er0
	bra	.L149
.L157:
	mov.l	er4,er0
.L149:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fmaxl, .-_fmaxl
	.align 1
	.global _fmin
_fmin:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L162
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L163
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L160
	mov.l	er5,er5
	bpl	.L164
	mov.l	er5,er0
	bra	.L159
.L160:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L167
	mov.l	er5,er0
	bra	.L159
.L162:
	mov.l	er4,er0
	bra	.L159
.L163:
	mov.l	er5,er0
	bra	.L159
.L164:
	mov.l	er4,er0
	bra	.L159
.L167:
	mov.l	er4,er0
.L159:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fmin, .-_fmin
	.align 1
	.global _fminf
_fminf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L172
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L173
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L170
	mov.l	er5,er5
	bpl	.L174
	mov.l	er5,er0
	bra	.L169
.L170:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L177
	mov.l	er5,er0
	bra	.L169
.L172:
	mov.l	er4,er0
	bra	.L169
.L173:
	mov.l	er5,er0
	bra	.L169
.L174:
	mov.l	er4,er0
	bra	.L169
.L177:
	mov.l	er4,er0
.L169:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fminf, .-_fminf
	.align 1
	.global _fminl
_fminl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L182
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L183
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L180
	mov.l	er5,er5
	bpl	.L184
	mov.l	er5,er0
	bra	.L179
.L180:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L187
	mov.l	er5,er0
	bra	.L179
.L182:
	mov.l	er4,er0
	bra	.L179
.L183:
	mov.l	er5,er0
	bra	.L179
.L184:
	mov.l	er4,er0
	bra	.L179
.L187:
	mov.l	er4,er0
.L179:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_fminl, .-_fminl
	.section	.rodata
	.type	_digits, @object
	.size	_digits, 65
_digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section .text
	.align 1
	.global _l64a
_l64a:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	#_s___0,er3
	mov.l	#_digits,er1
	bra	.L189
.L190:
	mov.l	er0,er2
	and.l	#63,er2
	add.l	er1,er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
.L189:
	mov.l	er0,er0
	bne	.L190
	sub.b	r2l,r2l
	mov.b	r2l,@er3
	mov.l	#_s___0,er0
	mov.l	@er7+,er6
	rts
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
	.align 1
	.global _srand
_srand:
	mov.l	er6,@-er7
	mov.l	er7,er6
	dec #1,r0
	extu.l	er0
	mov.l	er0,@_seed+4:32
	sub.l	er2,er2
	mov.l	er2,@_seed:32
	mov.l	@er7+,er6
	rts
	.size	_srand, .-_srand
	.align 1
	.global _rand
_rand:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	#1481765933,er2
	mov.l	er2,@er7
	mov.l	#1284865837,er2
	mov.l	er2,@(4,er7)
	mov.l	@_seed:32,er0
	mov.l	@_seed+4:32,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	sub.l	er2,er2
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	@(-12,er6),er4
	add.l	er3,er4
	mov.l	er4,er1
	mov.l	er3,er4
	mov.l	@(-12,er6),er5
	cmp.l	er5,er1
	blo	.L193
	sub.l	er4,er4
.L193:
	mov.l	@(-16,er6),er5
	add.l	er2,er5
	add.l	er5,er4
	mov.l	er4,@_seed:32
	mov.l	er1,@_seed+4:32
	shlr.l	er4
	mov.w	r4,r0
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rand, .-_rand
	.align 1
	.global _insque
_insque:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er1,er1
	bne	.L195
	sub.l	er2,er2
	mov.l	er2,@(4,er0)
	mov.l	er2,@er0
	bra	.L194
.L195:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L194
	mov.l	er0,@(4,er2)
.L194:
	mov.l	@er7+,er6
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	@er0,er2
	beq	.L198
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L198:
	mov.l	@(4,er0),er2
	beq	.L197
	mov.l	@er0,er3
	mov.l	er3,@er2
.L197:
	mov.l	@er7+,er6
	rts
	.size	_remque, .-_remque
	.align 1
	.global _lsearch
_lsearch:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,er5
	mov.l	er1,@(-20,er6)
	mov.l	@er2,er1
	sub.l	er4,er4
	mov.l	er1,@(-12,er6)
	mov.l	er2,@(-24,er6)
	bra	.L201
.L204:
	mov.l	er5,er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er2
	jsr	@er2
	mov.l	@(8,er6),er2
	add.l	er2,er5
	mov.w	r0,r0
	bne	.L202
	mov.l	er2,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(-20,er6),er2
	add.l	er2,er0
	bra	.L203
.L202:
	adds	#1,er4
.L201:
	mov.l	@(-12,er6),er2
	cmp.l	er2,er4
	bne	.L204
	mov.l	er2,er1
	mov.l	@(-24,er6),er2
	mov.l	er1,er3
	adds	#1,er3
	mov.l	er3,@er2
	mov.l	@(8,er6),er0
	jsr	@___mulsi3
	mov.l	@(8,er6),er2
	mov.l	@(-16,er6),er1
	mov.l	@(-20,er6),er3
	add.l	er3,er0
	jsr	@_memcpy
.L203:
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_lsearch, .-_lsearch
	.align 1
	.global _lfind
_lfind:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#12,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-20,er6)
	mov.l	@er2,er2
	mov.l	er2,@(-12,er6)
	mov.l	er1,er5
	sub.l	er4,er4
	bra	.L206
.L209:
	mov.l	er5,er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er2
	jsr	@er2
	mov.l	@(8,er6),er2
	add.l	er2,er5
	mov.w	r0,r0
	bne	.L207
	mov.l	er2,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(-20,er6),er2
	add.l	er2,er0
	bra	.L208
.L207:
	adds	#1,er4
.L206:
	mov.l	@(-12,er6),er2
	cmp.l	er2,er4
	bne	.L209
	sub.l	er0,er0
.L208:
	add.l	#12,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_lfind, .-_lfind
	.align 1
	.global _abs
_abs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r0
	bpl	.L211
	neg.w	r0
.L211:
	mov.l	@er7+,er6
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	bra	.L213
.L214:
	adds	#1,er5
.L213:
	mov.b	@er5,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L214
	mov.b	@er5,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L220
	cmp.w	#45,r2
	bne	.L221
	mov.w	#1,r4
	bra	.L215
.L220:
	sub.w	r4,r4
.L215:
	adds	#1,er5
	bra	.L216
.L221:
	sub.w	r4,r4
.L216:
	mov.l	er5,er2
	sub.w	r0,r0
	mov.w	#10,r1
	bra	.L217
.L218:
	mulxs.w	r1,er0
	mov.b	@er2+,r3l
	extu.w	r3
	add.w	#-48,r3
	sub.w	r3,r0
.L217:
	mov.b	@er2,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L218
	mov.w	r4,r4
	bne	.L219
	neg.w	r0
.L219:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_atoi, .-_atoi
	.align 1
	.global _atol
_atol:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er4
	bra	.L224
.L225:
	adds	#1,er4
.L224:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L225
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L231
	cmp.w	#45,r2
	bne	.L232
	mov.w	#1,r2
	mov.w	r2,@(-10,er6)
	bra	.L226
.L231:
	sub.w	r2,r2
	mov.w	r2,@(-10,er6)
.L226:
	adds	#1,er4
	bra	.L227
.L232:
	sub.w	r2,r2
	mov.w	r2,@(-10,er6)
.L227:
	sub.l	er0,er0
	sub.l	er5,er5
	add.b	#10,r5l
	bra	.L228
.L229:
	mov.l	er5,er1
	jsr	@___mulsi3
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	sub.l	er2,er0
.L228:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L229
	mov.w	@(-10,er6),r2
	bne	.L230
	neg.l	er0
.L230:
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_atol, .-_atol
	.align 1
	.global _atoll
_atoll:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#24,er7
	mov.l	er0,er4
	bra	.L235
.L236:
	adds	#1,er4
.L235:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L236
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L244
	cmp.w	#45,r2
	bne	.L245
	mov.w	#1,r2
	mov.w	r2,@(-26,er6)
	bra	.L237
.L244:
	sub.w	r2,r2
	mov.w	r2,@(-26,er6)
.L237:
	adds	#1,er4
	bra	.L238
.L245:
	sub.w	r2,r2
	mov.w	r2,@(-26,er6)
.L238:
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	er4,@(-32,er6)
	bra	.L239:16
.L241:
	sub.l	#8,er7
	sub.l	er2,er2
	mov.l	er2,@er7
	sub.l	er2,er2
	add.b	#10,r2l
	mov.l	er2,@(4,er7)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	@(-32,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	mov.l	er2,@(-20,er6)
	shll	e2
	subx	r2l,r2l
	exts.w	r2
	exts.l	er2
	mov.l	er2,@(-24,er6)
	mov.l	er1,er5
	mov.l	@(-20,er6),er4
	sub.l	er4,er5
	mov.l	er5,er3
	sub.l	er5,er5
	add.b	#1,r5l
	cmp.l	er1,er3
	bhi	.L240
	sub.l	er5,er5
.L240:
	mov.l	@(-24,er6),er1
	sub.l	er1,er0
	sub.l	er5,er0
	mov.l	er0,@(-16,er6)
	mov.l	er3,@(-12,er6)
	mov.l	@(-32,er6),er2
	adds	#1,er2
	mov.l	er2,@(-32,er6)
.L239:
	mov.l	@(-32,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L241:16
	mov.w	@(-26,er6),r2
	bne	.L246
	sub.l	er4,er4
	mov.l	@(-12,er6),er2
	neg.l	er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er1,er1
	bne	.L243
	sub.l	er2,er2
.L243:
	mov.l	er4,er3
	mov.l	@(-16,er6),er4
	sub.l	er4,er3
	mov.l	er3,er4
	sub.l	er2,er4
	mov.l	er4,er2
	mov.l	er1,er3
	bra	.L242
.L246:
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
.L242:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#24,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_atoll, .-_atoll
	.align 1
	.global _bsearch
_bsearch:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	er2,er4
	bra	.L248
.L252:
	mov.l	@(8,er6),er1
	mov.l	er4,er0
	shlr.l	er0
	jsr	@___mulsi3
	mov.l	@(-12,er6),er2
	add.l	er2,er0
	mov.l	er0,er5
	mov.l	er0,er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er2
	jsr	@er2
	mov.w	r0,r0
	bpl	.L249
	shlr.l	er4
	bra	.L248
.L249:
	ble	.L253
	mov.l	@(8,er6),er2
	add.l	er5,er2
	mov.l	er2,@(-12,er6)
	mov.l	er4,er2
	shlr.l	er2
	subs	#1,er4
	sub.l	er2,er4
.L248:
	mov.l	er4,er4
	bne	.L252
	sub.l	er0,er0
	bra	.L251
.L253:
	mov.l	er5,er0
.L251:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_bsearch, .-_bsearch
	.align 1
	.global _bsearch_r
_bsearch_r:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,@(-16,er6)
	mov.w	r2,r4
	mov.l	er1,@(-12,er6)
	bra	.L255
.L258:
	mov.l	@(8,er6),er1
	mov.w	r4,r0
	shar.w	r0
	exts.l	er0
	jsr	@___mulsi3
	mov.l	@(-12,er6),er2
	add.l	er2,er0
	mov.l	er0,er5
	mov.l	@(16,er6),er2
	mov.l	er0,er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er3
	jsr	@er3
	mov.w	r0,r0
	beq	.L259
	ble	.L257
	mov.l	@(8,er6),er2
	add.l	er5,er2
	mov.l	er2,@(-12,er6)
	dec #1,r4
.L257:
	shar.w	r4
.L255:
	mov.w	r4,r4
	bne	.L258
	sub.l	er0,er0
	bra	.L256
.L259:
	mov.l	er5,er0
.L256:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_bsearch_r, .-_bsearch_r
	.align 1
	.global _div
_div:
	mov.l	er6,@-er7
	mov.l	er7,er6
	exts.l	er1
	divxs.w	r2,er1
	mov.w	e1,r2
	mov.w	r1,@er0
	mov.w	r2,@(2,er0)
	mov.l	@er7+,er6
	rts
	.size	_div, .-_div
	.align 1
	.global _imaxabs
_imaxabs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#12,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er0
	bpl	.L262
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er1,er0
	neg.l	er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er0,@(-20,er6)
	mov.l	er3,er3
	bne	.L264
	sub.l	er0,er0
	mov.l	er0,@(-20,er6)
.L264:
	mov.l	@(-16,er6),er0
	sub.l	er4,er0
	mov.l	er0,er1
	mov.l	@(-20,er6),er0
	sub.l	er0,er1
	mov.l	er1,er4
	mov.l	er3,er5
.L262:
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#12,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_imaxabs, .-_imaxabs
	.align 1
	.global _imaxdiv
_imaxdiv:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#20,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	@(8,er6),er4
	mov.l	@(12,er6),er5
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	er1,er0
	mov.l	er2,er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	@(-20,er6),er0
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	@(-20,er6),er0
	mov.l	er2,@(8,er0)
	mov.l	er1,@(12,er0)
	add.l	#20,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_imaxdiv, .-_imaxdiv
	.align 1
	.global _labs
_labs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er0
	bpl	.L267
	neg.l	er0
.L267:
	mov.l	@er7+,er6
	rts
	.size	_labs, .-_labs
	.align 1
	.global _ldiv
_ldiv:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er2,@(-12,er6)
	mov.l	er2,er1
	mov.l	er5,er0
	jsr	@___divsi3
	mov.l	er0,@er4
	mov.l	@(-12,er6),er1
	mov.l	er5,er0
	jsr	@___modsi3
	mov.l	er0,@(4,er4)
	mov.l	er4,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_ldiv, .-_ldiv
	.align 1
	.global _llabs
_llabs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#12,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er0
	bpl	.L270
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er1,er0
	neg.l	er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er0,@(-20,er6)
	mov.l	er3,er3
	bne	.L272
	sub.l	er0,er0
	mov.l	er0,@(-20,er6)
.L272:
	mov.l	@(-16,er6),er0
	sub.l	er4,er0
	mov.l	er0,er1
	mov.l	@(-20,er6),er0
	sub.l	er0,er1
	mov.l	er1,er4
	mov.l	er3,er5
.L270:
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#12,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_llabs, .-_llabs
	.align 1
	.global _lldiv
_lldiv:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#20,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	@(8,er6),er4
	mov.l	@(12,er6),er5
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	er1,er0
	mov.l	er2,er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	@(-20,er6),er0
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	@(-20,er6),er0
	mov.l	er2,@(8,er0)
	mov.l	er1,@(12,er0)
	add.l	#20,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_lldiv, .-_lldiv
	.align 1
	.global _wcschr
_wcschr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L275
.L277:
	adds	#2,er0
.L275:
	mov.w	@er0,r2
	beq	.L276
	cmp.w	r2,r1
	bne	.L277
.L276:
	mov.w	@er0,r2
	bne	.L278
	sub.l	er0,er0
.L278:
	mov.l	@er7+,er6
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L281
.L283:
	adds	#2,er0
	adds	#2,er1
.L281:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L282
	mov.w	r2,r2
	beq	.L282
	mov.w	r3,r2
	bne	.L283
.L282:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L286
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L285
	sub.w	r2,r2
.L285:
	mov.w	r2,r0
	bra	.L284
.L286:
	mov.w	#-1,r0
.L284:
	mov.l	@er7+,er6
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
.L288:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L288
	mov.l	@er7+,er6
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	bra	.L291
.L292:
	adds	#2,er2
.L291:
	mov.w	@er2,r3
	bne	.L292
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	mov.l	@er7+,er6
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	bra	.L294
.L296:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
.L294:
	mov.l	er2,er2
	beq	.L295
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L295
	mov.w	r3,r3
	beq	.L295
	mov.w	r4,r3
	bne	.L296
.L295:
	mov.l	er2,er2
	beq	.L299
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L300
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L298
	sub.w	r2,r2
.L298:
	mov.w	r2,r0
	bra	.L297
.L299:
	sub.w	r0,r0
	bra	.L297
.L300:
	mov.w	#-1,r0
.L297:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L302
.L304:
	subs	#1,er2
	adds	#2,er0
.L302:
	mov.l	er2,er2
	beq	.L303
	mov.w	@er0,r3
	cmp.w	r3,r1
	bne	.L304
.L303:
	mov.l	er2,er2
	bne	.L305
	sub.l	er0,er0
.L305:
	mov.l	@er7+,er6
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	bra	.L308
.L310:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
.L308:
	mov.l	er2,er2
	beq	.L309
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L310
.L309:
	mov.l	er2,er2
	beq	.L313
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L314
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L312
	sub.w	r2,r2
.L312:
	mov.w	r2,r0
	bra	.L311
.L313:
	sub.w	r0,r0
	bra	.L311
.L314:
	mov.w	#-1,r0
.L311:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er3
	bra	.L316
.L317:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L316:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L317
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	cmp.l	er1,er0
	beq	.L319
	mov.l	er2,er4
	shll.l	er4
	mov.l	er0,er3
	sub.l	er1,er3
	cmp.l	er4,er3
	blo	.L320
	mov.l	er0,er3
	bra	.L321
.L320:
	shll.l	er2
	add.l	er2,er1
	add.l	er0,er2
	mov.l	er0,er4
	subs	#2,er4
	bra	.L322
.L323:
	mov.w	@er1,r3
	mov.w	r3,@er2
.L322:
	subs	#2,er1
	subs	#2,er2
	cmp.l	er4,er2
	bne	.L323
	bra	.L319
.L324:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L321:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L324
.L319:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er3
	bra	.L326
.L327:
	mov.w	r1,@er3
	adds	#2,er3
.L326:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L327
	mov.l	@er7+,er6
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.l	er1,er0
	bhs	.L329
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er1,er2
	bra	.L330
.L331:
	subs	#1,er3
	mov.b	@er3,r1l
	subs	#1,er2
	mov.b	r1l,@er2
.L330:
	cmp.l	er0,er3
	bne	.L331
	bra	.L328
.L329:
	beq	.L328
	mov.l	er1,er3
	add.l	er2,er1
	bra	.L333
.L334:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
.L333:
	cmp.l	er1,er3
	bne	.L334
.L328:
	mov.l	@er7+,er6
	rts
	.size	_bcopy, .-_bcopy
	.align 1
	.global _rotl64
_rotl64:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#12,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L336
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L341
.L340:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L340
.L341:
	bra	.L337
.L336:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(-12,er6),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L343
.L342:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L342
.L343:
	mov.l	@(-16,er6),er4
	mov.b	r2l,r0l
	ble	.L345
.L344:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L344
.L345:
	or.l	er3,er4
	mov.l	@(-12,er6),er5
	mov.b	r2l,r3l
	ble	.L347
.L346:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L346
.L347:
.L337:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L338
	sub.l	er0,er0
	mov.l	@(-16,er6),er1
	mov.b	r3l,r3l
	ble	.L349
.L348:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L348
.L349:
	bra	.L339
.L338:
	mov.l	@(-16,er6),er0
	shll.l	er0
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L351
.L350:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L350
.L351:
	mov.l	er0,@(-20,er6)
	mov.l	@(-12,er6),er1
	mov.b	r2l,r3l
	ble	.L353
.L352:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L352
.L353:
	mov.l	@(-20,er6),er3
	or.l	er3,er1
	mov.l	@(-16,er6),er0
	mov.b	r2l,r2l
	ble	.L355
.L354:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L354
.L355:
.L339:
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er2,@(-16,er6)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	@(-16,er6),er0
	mov.l	er2,er1
	add.l	#12,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotl64, .-_rotl64
	.align 1
	.global _rotr64
_rotr64:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#12,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L357
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L362
.L361:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L361
.L362:
	bra	.L358
.L357:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(-16,er6),er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L364
.L363:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L363
.L364:
	mov.l	@(-12,er6),er5
	mov.b	r2l,r0l
	ble	.L366
.L365:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L365
.L366:
	or.l	er3,er5
	mov.l	@(-16,er6),er4
	mov.b	r2l,r3l
	ble	.L368
.L367:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L367
.L368:
.L358:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L359
	sub.l	er1,er1
	mov.l	@(-12,er6),er0
	mov.b	r3l,r3l
	ble	.L370
.L369:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L369
.L370:
	bra	.L360
.L359:
	mov.l	@(-12,er6),er0
	shlr.l	er0
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L372
.L371:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L371
.L372:
	mov.l	er0,@(-20,er6)
	mov.l	@(-16,er6),er0
	mov.b	r2l,r3l
	ble	.L374
.L373:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L373
.L374:
	mov.l	@(-20,er6),er3
	or.l	er3,er0
	mov.l	@(-12,er6),er1
	mov.b	r2l,r2l
	ble	.L376
.L375:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L375
.L376:
.L360:
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er2,@(-16,er6)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	@(-16,er6),er0
	mov.l	er2,er1
	add.l	#12,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotr64, .-_rotr64
	.align 1
	.global _rotl32
_rotl32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.b	r1l,r1l
	ble	.L379
.L378:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L378
.L379:
	mov.l	@er7+,er6
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L383
.L382:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L382
.L383:
	mov.l	@er7+,er6
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.w	#32,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L387
.L386:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L386
.L387:
	mov.b	r1l,r1l
	ble	.L389
.L388:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L388
.L389:
	or.l	er2,er0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.w	#32,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L392
.L391:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L391
.L392:
	mov.b	r1l,r1l
	ble	.L394
.L393:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L393
.L394:
	or.l	er2,er0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.b	r1l,r1l
	ble	.L397
.L396:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L396
.L397:
	mov.l	@er7+,er6
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L401
.L400:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L400
.L401:
	mov.l	@er7+,er6
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.b	r0l,r2l
	extu.w	r2
	mov.w	#8,r3
	sub.w	r1,r3
	mov.w	r2,r0
	mov.b	r3l,r3l
	ble	.L405
.L404:
	shlr.w	r0
	add.b	#-1,r3l
	bne	.L404
.L405:
	mov.b	r1l,r1l
	ble	.L407
.L406:
	shll.w	r2
	add.b	#-1,r1l
	bne	.L406
.L407:
	or	r2l,r0l
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.b	r0l,r2l
	extu.w	r2
	mov.w	#8,r3
	sub.w	r1,r3
	mov.w	r2,r0
	mov.b	r3l,r3l
	ble	.L410
.L409:
	shll.w	r0
	add.b	#-1,r3l
	bne	.L409
.L410:
	mov.b	r1l,r1l
	ble	.L412
.L411:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L411
.L412:
	or	r2l,r0l
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotr8, .-_rotr8
	.align 1
	.global _bswap_16
_bswap_16:
	mov.l	er6,@-er7
	mov.l	er7,er6
	xor.b	r0l,r0h
	xor.b	r0h,r0l
	xor.b	r0l,r0h
	mov.l	@er7+,er6
	rts
	.size	_bswap_16, .-_bswap_16
	.align 1
	.global _bswap_32
_bswap_32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	mov.l	er0,er3
	sub.w	r3,r3
	extu.w	e3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	mov.l	er2,er0
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	or.l	er0,er3
	mov.l	er2,er0
	and	#0,r0l
	sub.w	e0,e0
	mov.w	e0,r1
	mov.b	r1l,r1h
	mov.b	r0h,r1l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r1,e0
	or.l	er0,er3
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er0
	or.l	er3,er0
	mov.l	@er7+,er6
	rts
	.size	_bswap_32, .-_bswap_32
	.align 1
	.global _bswap_64
_bswap_64:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#32,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	@(-16,er6),er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	mov.l	@(-16,er6),er0
	and.l	#-16777216,er0
	mov.l	er0,er4
	mov.w	e4,r4
	mov.b	r4h,r4l
	extu.w	r4
	extu.l	er4
	mov.l	er3,er2
	or.l	er4,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-16,er6),er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,er0
	mov.l	er2,er4
	mov.w	e4,r5
	mov.b	r5l,r5h
	mov.b	r4h,r5l
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r5,e4
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er0,er2
	sub.l	er0,er0
	or.l	er2,er0
	mov.l	er0,@(-32,er6)
	mov.l	@(-20,er6),er0
	or.l	er4,er0
	mov.l	er0,@(-28,er6)
	mov.l	@(-16,er6),er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r4,e4
	sub.w	r4,r4
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	mov.l	@(-32,er6),er0
	or.l	er2,er0
	mov.l	er0,@(-40,er6)
	mov.l	@(-28,er6),er0
	or.l	er4,er0
	mov.l	er0,@(-36,er6)
	sub.l	er3,er3
	mov.l	@(-12,er6),er2
	and.l	#-16777216,er2
	mov.l	er2,er4
	shll.l	er2
	mov.l	er2,@(-20,er6)
	cmp.l	er4,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er3,er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(-20,er6),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er3,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	cmp.l	er5,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er4,er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(-20,er6),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er3,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	cmp.l	er5,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er4,er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(-20,er6),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er3,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	cmp.l	er5,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er4,er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,er1
	mov.l	@(-20,er6),er2
	cmp.l	er2,er1
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	mov.l	@(-40,er6),er2
	or.l	er0,er2
	mov.l	er2,er4
	mov.l	@(-36,er6),er2
	or.l	er1,er2
	mov.l	er2,er5
	sub.l	er0,er0
	mov.l	@(-12,er6),er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er1
	shll.l	er2
	mov.l	er2,@(-20,er6)
	cmp.l	er1,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er0,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er0
	shll.l	er0
	mov.l	er0,er3
	mov.l	@(-20,er6),er0
	cmp.l	er0,er3
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er0
	shll.l	er0
	mov.l	er0,er2
	add.l	er1,er2
	mov.l	er4,er0
	or.l	er2,er0
	mov.l	er0,@(-24,er6)
	mov.l	er5,er0
	or.l	er3,er0
	mov.l	er0,@(-20,er6)
	mov.l	@(-12,er6),er2
	and	#0,r2l
	sub.w	e2,e2
	mov.w	e2,r0
	mov.b	r0l,r0h
	mov.b	r2h,r0l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r0,e2
	mov.l	@(-24,er6),er3
	or.l	er3,er2
	mov.l	er2,er4
	mov.l	@(-20,er6),er5
	mov.l	@(-12,er6),er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er0
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r0,e0
	sub.w	r0,r0
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er2,er0
	mov.l	er5,er1
	add.l	#32,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_bswap_64, .-_bswap_64
	.align 1
	.global _ffs
_ffs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.w	r2,r2
	bra	.L449
.L452:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L454
.L453:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L453
.L454:
	btst	#0,r3l
	beq	.L450
	inc #1,r2
	mov.w	r2,r0
	bra	.L451
.L450:
	inc #1,r2
.L449:
	cmp.w	#16,r2
	bne	.L452
	sub.w	r0,r0
.L451:
	mov.l	@er7+,er6
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r0
	beq	.L459
	mov.w	#1,r2
	bra	.L457
.L458:
	shar.w	r0
	inc #1,r2
.L457:
	btst	#0,r0l
	beq	.L458
	mov.w	r2,r0
	bra	.L456
.L459:
	sub.w	r0,r0
.L456:
	mov.l	@er7+,er6
	rts
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 1
	.global _gl_isinff
_gl_isinff:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L463
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L466
	mov.w	#1,r0
	bra	.L461
.L463:
	mov.w	#1,r0
	bra	.L461
.L466:
	sub.w	r0,r0
.L461:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_gl_isinff, .-_gl_isinff
	.align 1
	.global _gl_isinfd
_gl_isinfd:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L470
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L473
	mov.w	#1,r0
	bra	.L468
.L470:
	mov.w	#1,r0
	bra	.L468
.L473:
	sub.w	r0,r0
.L468:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_gl_isinfd, .-_gl_isinfd
	.align 1
	.global _gl_isinfl
_gl_isinfl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L477
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L480
	mov.w	#1,r0
	bra	.L475
.L477:
	mov.w	#1,r0
	bra	.L475
.L480:
	sub.w	r0,r0
.L475:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_gl_isinfl, .-_gl_isinfl
	.align 1
	.global __Qp_itoq
__Qp_itoq:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.w	r1,r0
	exts.l	er0
	jsr	@___floatsisf
	mov.l	er0,@er4
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	__Qp_itoq, .-__Qp_itoq
	.align 1
	.global _ldexpf
_ldexpf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,@(-12,er6)
	mov.w	r1,r4
	mov.l	er0,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L483
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L483
	mov.w	r4,r4
	bpl	.L489
	mov.l	#1056964608,er5
	bra	.L488
.L489:
	mov.l	#1073741824,er5
.L488:
	btst	#0,r4l
	beq	.L486
	mov.l	er5,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L486:
	mov.w	r4,r2
	bpl	.L487
	inc #1,r2
.L487:
	shar.w	r2
	mov.w	r2,r4
	beq	.L483
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L488
.L483:
	mov.l	@(-12,er6),er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_ldexpf, .-_ldexpf
	.align 1
	.global _ldexp
_ldexp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,@(-12,er6)
	mov.w	r1,r4
	mov.l	er0,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L492
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L492
	mov.w	r4,r4
	bpl	.L498
	mov.l	#1056964608,er5
	bra	.L497
.L498:
	mov.l	#1073741824,er5
.L497:
	btst	#0,r4l
	beq	.L495
	mov.l	er5,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L495:
	mov.w	r4,r2
	bpl	.L496
	inc #1,r2
.L496:
	shar.w	r2
	mov.w	r2,r4
	beq	.L492
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L497
.L492:
	mov.l	@(-12,er6),er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_ldexp, .-_ldexp
	.align 1
	.global _ldexpl
_ldexpl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,@(-12,er6)
	mov.w	r1,r4
	mov.l	er0,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L501
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L501
	mov.w	r4,r4
	bpl	.L507
	mov.l	#1056964608,er5
	bra	.L506
.L507:
	mov.l	#1073741824,er5
.L506:
	btst	#0,r4l
	beq	.L504
	mov.l	er5,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L504:
	mov.w	r4,r2
	bpl	.L505
	inc #1,r2
.L505:
	shar.w	r2
	mov.w	r2,r4
	beq	.L501
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L506
.L501:
	mov.l	@(-12,er6),er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_ldexpl, .-_ldexpl
	.align 1
	.global _memxor
_memxor:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L510
.L511:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L510:
	cmp.l	er2,er3
	bne	.L511
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er1,er5
	mov.l	er2,er4
	mov.l	er0,@(-12,er6)
	jsr	@_strlen
	mov.l	@(-12,er6),er2
	add.l	er2,er0
	bra	.L513
.L515:
	adds	#1,er5
	adds	#1,er0
	subs	#1,er4
.L513:
	mov.l	er4,er4
	beq	.L514
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L515
.L514:
	mov.l	er4,er4
	bne	.L516
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L516:
	mov.l	@(-12,er6),er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	sub.l	er0,er0
	bra	.L518
.L520:
	adds	#1,er0
.L518:
	cmp.l	er1,er0
	beq	.L519
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L520
.L519:
	mov.l	@er7+,er6
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	bra	.L522
.L524:
	mov.b	@er2+,r3l
	mov.b	@er0,r4l
	cmp.b	r4l,r3l
	beq	.L523
.L525:
	mov.b	@er2,r3l
	bne	.L524
	adds	#1,er0
.L522:
	mov.b	@er0,r2l
	beq	.L527
	mov.l	er1,er2
	bra	.L525
.L527:
	sub.l	er0,er0
.L523:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	sub.l	er0,er0
.L530:
	mov.b	@er2,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L529
	mov.l	er2,er0
.L529:
	mov.b	@er2+,r3l
	mov.b	r3l,r3l
	bne	.L530
	mov.l	@er7+,er6
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er1,er0
	jsr	@_strlen
	mov.l	er0,er2
	beq	.L537
	mov.b	@er5,r3l
	extu.w	r3
	mov.w	r3,@(-10,er6)
	mov.l	er2,@(-16,er6)
	bra	.L535
.L536:
	mov.l	@(-16,er6),er2
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L538
	adds	#1,er4
.L535:
	mov.w	@(-10,er6),r1
	mov.l	er4,er0
	jsr	@_strchr
	mov.l	er0,er4
	bne	.L536
	sub.l	er0,er0
	bra	.L534
.L537:
	mov.l	er4,er0
	bra	.L534
.L538:
	mov.l	er4,er0
.L534:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_strstr, .-_strstr
	.align 1
	.global _copysign
_copysign:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L540
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L542
.L540:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L550
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L551
.L542:
	mov.l	er4,er0
	xor.w	#32768,e0
	bra	.L543
.L550:
	mov.l	er4,er0
	bra	.L543
.L551:
	mov.l	er4,er0
.L543:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_copysign, .-_copysign
	.align 1
	.global _memmem
_memmem:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#12,er7
	mov.l	er0,er4
	mov.l	er2,er5
	mov.l	@(8,er6),er2
	mov.l	er1,er3
	sub.l	er2,er3
	add.l	er0,er3
	mov.l	er3,@(-12,er6)
	mov.l	er2,er2
	beq	.L553
	cmp.l	er2,er1
	blo	.L559
	subs	#1,er2
	mov.l	er2,@(-16,er6)
	mov.l	er5,er2
	adds	#1,er2
	mov.l	er2,@(-20,er6)
	bra	.L555
.L557:
	mov.b	@er4,r2l
	mov.b	@er5,r3l
	cmp.b	r3l,r2l
	bne	.L556
	mov.l	@(-16,er6),er2
	mov.l	@(-20,er6),er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L560
.L556:
	adds	#1,er4
.L555:
	mov.l	@(-12,er6),er2
	cmp.l	er2,er4
	bls	.L557
	sub.l	er0,er0
	bra	.L553
.L559:
	sub.l	er0,er0
	bra	.L553
.L560:
	mov.l	er4,er0
.L553:
	add.l	#12,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_memmem, .-_memmem
	.align 1
	.global _mempcpy
_mempcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er2,er4
	jsr	@_memcpy
	add.l	er4,er0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_mempcpy, .-_mempcpy
	.align 1
	.global _frexp
_frexp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	mov.l	er1,@(-16,er6)
	sub.l	er1,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L579
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(-10,er6)
	bra	.L563
.L579:
	sub.w	r2,r2
	mov.w	r2,@(-10,er6)
.L563:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L574
	bra	.L580
.L567:
	inc #1,r5
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L565
.L574:
	sub.w	r5,r5
.L565:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L567
	bra	.L568
.L580:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L581
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L576
	sub.w	r5,r5
	bra	.L568
.L571:
	dec #1,r5
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	bra	.L570
.L576:
	sub.w	r5,r5
.L570:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L571
	bra	.L568
.L581:
	sub.w	r5,r5
.L568:
	mov.l	@(-16,er6),er2
	mov.w	r5,@er2
	mov.w	@(-10,er6),r2
	beq	.L572
	xor.w	#32768,e4
.L572:
	mov.l	er4,er0
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_frexp, .-_frexp
	.align 1
	.global ___muldi3
___muldi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#44,er7
	mov.l	@(8,er6),er2
	mov.l	er2,@(-48,er6)
	mov.l	@(12,er6),er2
	mov.l	er2,@(-44,er6)
	mov.l	er0,er2
	mov.l	er1,er3
	sub.l	er0,er0
	mov.l	er0,@(-40,er6)
	mov.l	er0,@(-36,er6)
	mov.l	@(-48,er6),er0
	mov.l	er0,@(-24,er6)
	mov.l	@(-44,er6),er0
	mov.l	er0,@(-20,er6)
	bra	.L583:16
.L588:
	mov.l	er3,er0
	and.l	#1,er0
	mov.l	er0,@(-28,er6)
	sub.l	er0,er0
	mov.l	@(-28,er6),er1
	or.l	er1,er0
	beq	.L584
	mov.l	@(-36,er6),er4
	mov.l	@(-20,er6),er5
	add.l	er5,er4
	mov.l	er4,er1
	mov.l	@(-36,er6),er4
	cmp.l	er4,er1
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	er4,@(-52,er6)
	mov.l	@(-40,er6),er5
	mov.l	@(-24,er6),er4
	add.l	er4,er5
	mov.l	@(-52,er6),er4
	add.l	er5,er4
	mov.l	er4,@(-40,er6)
	mov.l	er1,@(-36,er6)
.L584:
	mov.l	@(-20,er6),er4
	shll.l	er4
	mov.l	er4,er1
	mov.l	@(-20,er6),er4
	cmp.l	er4,er1
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(-24,er6),er4
	shll.l	er4
	add.l	er4,er5
	mov.l	er5,@(-24,er6)
	mov.l	er1,@(-20,er6)
	mov.l	er3,er0
	shlr.l	er0
	rotxl.l	er0
	bor	#0,r2l
	rotxr.l	er0
	shlr.l	er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-16,er6),er2
	mov.l	er0,er3
.L583:
	mov.l	er2,er0
	or.l	er3,er0
	bne	.L588:16
	mov.l	@(-40,er6),er0
	mov.l	@(-36,er6),er1
	add.l	#44,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___muldi3, .-___muldi3
	.align 1
	.global _udivmodsi4
_udivmodsi4:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	#33,r4
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L590
.L592:
	shll.l	er1
	shll.l	er3
.L590:
	cmp.l	er0,er1
	bhs	.L597
	dec #1,r4
	beq	.L598
	mov.l	er1,er1
	bpl	.L592
	sub.l	er4,er4
	bra	.L593
.L597:
	sub.l	er4,er4
	bra	.L593
.L598:
	sub.l	er4,er4
	bra	.L593
.L595:
	cmp.l	er1,er0
	blo	.L594
	sub.l	er1,er0
	or.l	er3,er4
.L594:
	shlr.l	er3
	shlr.l	er1
.L593:
	mov.l	er3,er3
	bne	.L595
	mov.l	er2,er2
	bne	.L596
	mov.l	er4,er0
.L596:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.b	r0l,r0l
	beq	.L602
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	bra	.L601
.L602:
	mov.w	#7,r0
.L601:
	mov.l	@er7+,er6
	rts
	.size	___clrsbqi2, .-___clrsbqi2
	.align 1
	.global ___clrsbdi2
___clrsbdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er0,er0
	bpl	.L604
	mov.l	er0,er4
	not.l	er4
	mov.l	er1,er2
	not.l	er2
	mov.l	er2,er1
	mov.l	er4,er2
	mov.l	er1,er3
.L604:
	mov.l	er2,er0
	or.l	er3,er0
	beq	.L608
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L606
.L608:
	mov.w	#63,r0
.L606:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	sub.w	r0,r0
	bra	.L610
.L612:
	btst	#0,r2l
	beq	.L611
	add.w	r1,r0
.L611:
	shlr.w	r2
	shll.w	r1
.L610:
	mov.w	r2,r2
	bne	.L612
	mov.l	@er7+,er6
	rts
	.size	___mulsi3, .-___mulsi3
	.align 1
	.global ___cmovd
___cmovd:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#12,er7
	mov.l	er0,er4
	mov.w	r2,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r2,r3
	and	#248,r3l
	mov.w	r3,@(-10,er6)
	cmp.l	er1,er0
	bhs	.L614
.L616:
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er5
	shll.l	er5
	shll.l	er5
	shll.l	er5
	add.l	er1,er5
	mov.l	er4,@(-16,er6)
	mov.l	er1,@(-20,er6)
	mov.l	er5,er1
	bra	.L615
.L614:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L616
	bra	.L617
.L618:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
.L615:
	cmp.l	er1,er3
	bne	.L618
	mov.l	@(-16,er6),er4
	mov.l	@(-20,er6),er1
	mov.w	@(-10,er6),r3
	extu.l	er3
	bra	.L619
.L620:
	mov.l	er1,er0
	add.l	er3,er0
	mov.b	@er0,r5l
	mov.l	er4,er0
	add.l	er3,er0
	mov.b	r5l,@er0
	adds	#1,er3
.L619:
	cmp.w	r3,r2
	bhi	.L620
	bra	.L613
.L622:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er0
	add.l	er3,er0
	mov.b	@er0,r0l
	add.l	er4,er3
	mov.b	r0l,@er3
.L617:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L622
.L613:
	add.l	#12,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___cmovd, .-___cmovd
	.align 1
	.global ___cmovh
___cmovh:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r2,r4
	shlr.w	r4
	cmp.l	er1,er0
	bhs	.L624
.L626:
	mov.l	er1,er3
	mov.l	er5,er0
	extu.l	er4
	shll.l	er4
	add.l	er1,er4
	mov.l	er5,@(-12,er6)
	bra	.L625
.L624:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L626
	bra	.L627
.L628:
	mov.w	@er3+,r5
	mov.w	r5,@er0
	adds	#2,er0
.L625:
	cmp.l	er4,er3
	bne	.L628
	mov.l	@(-12,er6),er5
	btst	#0,r2l
	beq	.L623
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er2,er5
	mov.b	r3l,@er5
	bra	.L623
.L630:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er0
	add.l	er3,er0
	mov.b	@er0,r0l
	add.l	er5,er3
	mov.b	r0l,@er3
.L627:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L630
.L623:
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___cmovh, .-___cmovh
	.align 1
	.global ___cmovw
___cmovw:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,er5
	mov.w	r2,r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r2,r3
	and	#252,r3l
	mov.w	r3,@(-10,er6)
	cmp.l	er1,er0
	bhs	.L632
.L634:
	mov.l	er1,er3
	mov.l	er5,er0
	extu.l	er4
	shll.l	er4
	add.l	er1,er4
	mov.l	er5,@(-16,er6)
	bra	.L633
.L632:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L634
	bra	.L635
.L636:
	mov.w	@er3+,r5
	mov.w	r5,@er0
	adds	#2,er0
.L633:
	cmp.l	er4,er3
	bne	.L636
	mov.l	@(-16,er6),er5
	mov.w	@(-10,er6),r3
	extu.l	er3
	bra	.L637
.L638:
	mov.l	er1,er0
	add.l	er3,er0
	mov.b	@er0,r4l
	mov.l	er5,er0
	add.l	er3,er0
	mov.b	r4l,@er0
	adds	#1,er3
.L637:
	cmp.w	r3,r2
	bhi	.L638
	bra	.L631
.L640:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er0
	add.l	er3,er0
	mov.b	@er0,r0l
	add.l	er5,er3
	mov.b	r0l,@er3
.L635:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L640
.L631:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___cmovw, .-___cmovw
	.align 1
	.global ___modi
___modi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	exts.l	er0
	mov.l	er0,er2
	divxs.w	r1,er2
	mov.w	e2,r0
	mov.l	@er7+,er6
	rts
	.size	___modi, .-___modi
	.align 1
	.global ___uitod
___uitod:
	mov.l	er6,@-er7
	mov.l	er7,er6
	extu.l	er0
	jsr	@___floatunsisf
	mov.l	@er7+,er6
	rts
	.size	___uitod, .-___uitod
	.align 1
	.global ___uitof
___uitof:
	mov.l	er6,@-er7
	mov.l	er7,er6
	extu.l	er0
	jsr	@___floatunsisf
	mov.l	@er7+,er6
	rts
	.size	___uitof, .-___uitof
	.align 1
	.global ___ulltod
___ulltod:
	mov.l	er6,@-er7
	mov.l	er7,er6
	jsr	@___floatundisf
	mov.l	@er7+,er6
	rts
	.size	___ulltod, .-___ulltod
	.align 1
	.global ___ulltof
___ulltof:
	mov.l	er6,@-er7
	mov.l	er7,er6
	jsr	@___floatundisf
	mov.l	@er7+,er6
	rts
	.size	___ulltof, .-___ulltof
	.align 1
	.global ___umodi
___umodi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	extu.l	er0
	mov.l	er0,er2
	divxu.w	r1,er2
	mov.w	e2,r0
	mov.l	@er7+,er6
	rts
	.size	___umodi, .-___umodi
	.align 1
	.global ___clzhi2
___clzhi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	r0,r3
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L648
.L650:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L652
.L651:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L651
.L652:
	and.w	r3,r2
	bne	.L649
	inc #1,r0
.L648:
	cmp.w	#16,r0
	bne	.L650
.L649:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r3
	sub.w	r0,r0
	bra	.L654
.L656:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L658
.L657:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L657
.L658:
	btst	#0,r2l
	bne	.L655
	inc #1,r0
.L654:
	cmp.w	#16,r0
	bne	.L656
.L655:
	mov.l	@er7+,er6
	rts
	.size	___ctzhi2, .-___ctzhi2
	.align 1
	.global ___fixunssfsi
___fixunssfsi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#1191182336,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L664
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L662
.L664:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L662:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___fixunssfsi, .-___fixunssfsi
	.align 1
	.global ___parityhi2
___parityhi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	r0,r1
	sub.w	r0,r0
	sub.w	r2,r2
	bra	.L666
.L668:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L670
.L669:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L669
.L670:
	btst	#0,r3l
	beq	.L667
	inc #1,r0
.L667:
	inc #1,r2
.L666:
	cmp.w	#16,r2
	bne	.L668
	and.w	#1,r0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___parityhi2, .-___parityhi2
	.align 1
	.global ___popcounthi2
___popcounthi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	r0,r1
	sub.w	r0,r0
	sub.w	r2,r2
	bra	.L672
.L674:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L676
.L675:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L675
.L676:
	btst	#0,r3l
	beq	.L673
	inc #1,r0
.L673:
	inc #1,r2
.L672:
	cmp.w	#16,r2
	bne	.L674
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	sub.l	er0,er0
	bra	.L678
.L680:
	btst	#0,r2l
	beq	.L679
	add.l	er1,er0
.L679:
	shlr.l	er2
	shll.l	er1
.L678:
	mov.l	er2,er2
	bne	.L680
	mov.l	@er7+,er6
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er0
	beq	.L686
	sub.l	er2,er2
	bra	.L683
.L685:
	btst	#0,r1l
	beq	.L684
	add.l	er0,er2
.L684:
	shll.l	er0
	shlr.l	er1
.L683:
	mov.l	er1,er1
	bne	.L685
	mov.l	er2,er0
	bra	.L682
.L686:
	sub.l	er0,er0
.L682:
	mov.l	@er7+,er6
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	#33,r4
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L688
.L690:
	shll.l	er1
	shll.l	er3
.L688:
	cmp.l	er0,er1
	bhs	.L695
	dec #1,r4
	beq	.L696
	mov.l	er1,er1
	bpl	.L690
	sub.l	er4,er4
	bra	.L691
.L695:
	sub.l	er4,er4
	bra	.L691
.L696:
	sub.l	er4,er4
	bra	.L691
.L693:
	cmp.l	er1,er0
	blo	.L692
	sub.l	er1,er0
	or.l	er3,er4
.L692:
	shlr.l	er3
	shlr.l	er1
.L691:
	mov.l	er3,er3
	bne	.L693
	mov.w	r2,r2
	bne	.L694
	mov.l	er4,er0
.L694:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___udivmodsi4, .-___udivmodsi4
	.align 1
	.global ___mspabi_cmpf
___mspabi_cmpf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L700
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L701
	sub.w	r0,r0
	bra	.L699
.L700:
	mov.w	#-1,r0
	bra	.L699
.L701:
	mov.w	#1,r0
.L699:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 1
	.global ___mspabi_cmpd
___mspabi_cmpd:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L704
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L705
	sub.w	r0,r0
	bra	.L703
.L704:
	mov.w	#-1,r0
	bra	.L703
.L705:
	mov.w	#1,r0
.L703:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 1
	.global ___mspabi_mpysll
___mspabi_mpysll:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er1,er5
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	sub.l	#8,er7
	mov.l	er1,@er7
	mov.l	er5,@(4,er7)
	mov.l	er3,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 1
	.global ___mspabi_mpyull
___mspabi_mpyull:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	sub.l	er2,er2
	sub.l	#8,er7
	mov.l	er2,@er7
	mov.l	er1,@(4,er7)
	sub.l	er0,er0
	mov.l	er5,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 1
	.global ___mulhi3
___mulhi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	r0,r3
	mov.w	r1,r1
	bpl	.L715
	neg.w	r1
	mov.w	#1,r4
	bra	.L709
.L715:
	sub.w	r4,r4
.L709:
	mov.b	#17,r2l
	sub.w	r0,r0
	bra	.L710
.L713:
	btst	#0,r1l
	beq	.L711
	add.w	r3,r0
.L711:
	shll.w	r3
	shar.w	r1
.L710:
	mov.w	r1,r1
	beq	.L712
	add.b	#-1,r2l
	bne	.L713
.L712:
	mov.w	r4,r4
	beq	.L714
	neg.w	r0
.L714:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L722
	neg.l	er0
	mov.w	#1,r4
	bra	.L718
.L722:
	sub.w	r4,r4
.L718:
	mov.l	er1,er1
	bpl	.L719
	neg.l	er1
	mov.b	#1,r2l
	mov.w	r4,r4
	beq	.L720
	sub.b	r2l,r2l
.L720:
	mov.b	r2l,r4l
	extu.w	r4
.L719:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L721
	neg.l	er0
.L721:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L727
	neg.l	er0
	mov.w	#1,r4
	bra	.L724
.L727:
	sub.w	r4,r4
.L724:
	mov.l	er1,er1
	bpl	.L725
	neg.l	er1
.L725:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L726
	neg.l	er0
.L726:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	#17,r4
	mov.w	#1,r3
	bra	.L729
.L731:
	shll.w	r1
	shll.w	r3
.L729:
	cmp.w	r0,r1
	bhs	.L736
	dec #1,r4
	beq	.L737
	mov.w	r1,r1
	bpl	.L731
	sub.w	r4,r4
	bra	.L732
.L736:
	sub.w	r4,r4
	bra	.L732
.L737:
	sub.w	r4,r4
	bra	.L732
.L734:
	cmp.w	r1,r0
	blo	.L733
	sub.w	r1,r0
	or.w	r3,r4
.L733:
	shlr.w	r3
	shlr.w	r1
.L732:
	mov.w	r3,r3
	bne	.L734
	mov.w	r2,r2
	bne	.L735
	mov.w	r4,r0
.L735:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	#33,r4
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L740
.L742:
	shll.l	er1
	shll.l	er3
.L740:
	cmp.l	er0,er1
	bhs	.L747
	dec #1,r4
	beq	.L748
	mov.l	er1,er1
	bpl	.L742
	sub.l	er4,er4
	bra	.L743
.L747:
	sub.l	er4,er4
	bra	.L743
.L748:
	sub.l	er4,er4
	bra	.L743
.L745:
	cmp.l	er1,er0
	blo	.L744
	sub.l	er1,er0
	or.l	er3,er4
.L744:
	shlr.l	er3
	shlr.l	er1
.L743:
	mov.l	er3,er3
	bne	.L745
	mov.w	r2,r2
	bne	.L746
	mov.l	er4,er0
.L746:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 1
	.global ___ashldi3
___ashldi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	btst	#5,r2l
	beq	.L751
	sub.l	er3,er3
	mov.l	er3,@(-20,er6)
	add.w	#-32,r2
	mov.l	er1,er3
	mov.b	r2l,r2l
	ble	.L756
.L755:
	shll.l	er3
	add.b	#-1,r2l
	bne	.L755
.L756:
	mov.l	er3,@(-24,er6)
	bra	.L752
.L751:
	mov.w	r2,r2
	beq	.L754
	mov.l	@(-12,er6),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L758
.L757:
	shll.l	er0
	add.b	#-1,r1l
	bne	.L757
.L758:
	mov.l	er0,@(-20,er6)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L760
.L759:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L759
.L760:
	mov.l	@(-16,er6),er0
	mov.b	r2l,r2l
	ble	.L762
.L761:
	shll.l	er0
	add.b	#-1,r2l
	bne	.L761
.L762:
	or.l	er0,er3
	mov.l	er3,@(-24,er6)
.L752:
	mov.l	@(-24,er6),er2
	mov.l	@(-20,er6),er3
	bra	.L753
.L754:
	mov.l	er0,er2
	mov.l	er1,er3
.L753:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___ashldi3, .-___ashldi3
	.align 1
	.global ___ashrdi3
___ashrdi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	btst	#5,r2l
	beq	.L764
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@(-24,er6)
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L769
.L768:
	shar.l	er3
	add.b	#-1,r2l
	bne	.L768
.L769:
	mov.l	er3,@(-20,er6)
	bra	.L765
.L764:
	mov.w	r2,r2
	beq	.L767
	mov.l	@(-16,er6),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L771
.L770:
	shar.l	er0
	add.b	#-1,r1l
	bne	.L770
.L771:
	mov.l	er0,@(-24,er6)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L773
.L772:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L772
.L773:
	mov.l	@(-12,er6),er0
	mov.b	r2l,r2l
	ble	.L775
.L774:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L774
.L775:
	or.l	er0,er3
	mov.l	er3,@(-20,er6)
.L765:
	mov.l	@(-24,er6),er2
	mov.l	@(-20,er6),er3
	bra	.L766
.L767:
	mov.l	er0,er2
	mov.l	er1,er3
.L766:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___ashrdi3, .-___ashrdi3
	.align 1
	.global ___bswapdi2
___bswapdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#24,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er1,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,@(-16,er6)
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er0,er3
	mov.l	@(-16,er6),er0
	mov.l	er0,@(-24,er6)
	mov.l	er3,@(-20,er6)
	mov.l	er4,er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	sub.l	er0,er0
	mov.l	er3,er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,er1
	mov.l	@(-24,er6),er2
	or.l	er0,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-20,er6),er2
	or.l	er1,er2
	mov.l	er2,@(-12,er6)
	mov.l	er4,er0
	mov.w	e0,r2
	mov.b	r2l,r2h
	mov.b	r0h,r2l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r2,e0
	mov.l	er5,er1
	mov.w	e1,r1
	mov.b	r1h,r1l
	extu.w	r1
	extu.l	er1
	mov.l	er1,er3
	or.l	er0,er3
	sub.l	er0,er0
	mov.l	er3,er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er1
	mov.l	@(-16,er6),er2
	or.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-12,er6),er2
	or.l	er1,er2
	mov.l	er2,@(-20,er6)
	mov.l	er4,er0
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r0,e0
	sub.w	r0,r0
	mov.l	er5,er3
	mov.w	e3,r1
	mov.b	r3h,r3l
	mov.b	r1l,r3h
	mov.b	r1h,r1l
	extu.w	r1
	mov.w	r1,e3
	or.l	er0,er3
	sub.l	er0,er0
	mov.l	er3,er2
	and.l	#-16777216,er2
	mov.l	er2,er1
	mov.l	@(-24,er6),er2
	or.l	er0,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-20,er6),er2
	or.l	er1,er2
	mov.l	er2,@(-28,er6)
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(-12,er6)
	cmp.l	er5,er2
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	er4,er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-12,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-16,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-12,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-16,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-12,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-16,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-12,er6),er2
	shll.l	er2
	mov.l	er2,er1
	mov.l	@(-12,er6),er2
	cmp.l	er2,er1
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-16,er6),er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er2
	mov.l	@(-32,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	cmp.l	er5,er2
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	er4,er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-28,er6),er2
	shll.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-28,er6),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(-32,er6),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,er1
	mov.l	@(-20,er6),er2
	cmp.l	er2,er1
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(-24,er6),er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	and	#0,r0l
	sub.w	e0,e0
	mov.l	er0,er2
	mov.l	@(-16,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-20,er6)
	mov.l	er5,er2
	mov.w	e2,r0
	mov.b	r0l,r0h
	mov.b	r2h,r0l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r0,e2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er0
	mov.l	@(-24,er6),er1
	or.l	er1,er0
	mov.l	@(-20,er6),er3
	mov.l	er3,er1
	add.l	#24,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___bswapdi2, .-___bswapdi2
	.align 1
	.global ___bswapsi2
___bswapsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r0,e0
	sub.w	r0,r0
	mov.l	er2,er3
	mov.w	e3,r3
	mov.b	r3h,r3l
	extu.w	r3
	extu.l	er3
	or.l	er3,er0
	mov.l	er2,er3
	mov.w	e3,r1
	mov.b	r3h,r3l
	mov.b	r1l,r3h
	mov.b	r1h,r1l
	extu.w	r1
	mov.w	r1,e3
	and	#0,r3l
	sub.w	e3,e3
	or.l	er3,er0
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	sub.w	r2,r2
	extu.w	e2
	or.l	er2,er0
	mov.l	@er7+,er6
	rts
	.size	___bswapsi2, .-___bswapsi2
	.align 1
	.global ___clzsi2
___clzsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er2
	cmp.l	#65535,er0
	bhi	.L815
	sub.l	er3,er3
	add.b	#16,r3l
	bra	.L811
.L815:
	sub.l	er3,er3
.L811:
	mov.w	#16,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L820
.L819:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L819
.L820:
	mov.l	er2,er0
	and.l	#65280,er0
	bne	.L816
	sub.l	er4,er4
	add.b	#8,r4l
	bra	.L812
.L816:
	sub.l	er4,er4
.L812:
	mov.w	#8,r1
	sub.w	r4,r1
	mov.b	r1l,r1l
	ble	.L822
.L821:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L821
.L822:
	mov.l	er2,er0
	add.l	er4,er3
	and.l	#240,er0
	bne	.L817
	sub.l	er4,er4
	add.b	#4,r4l
	bra	.L813
.L817:
	sub.l	er4,er4
.L813:
	mov.w	#4,r1
	sub.w	r4,r1
	mov.b	r1l,r1l
	ble	.L824
.L823:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L823
.L824:
	mov.l	er2,er0
	add.l	er4,er3
	and.l	#12,er0
	bne	.L818
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L814
.L818:
	sub.l	er0,er0
.L814:
	mov.w	#2,r4
	sub.w	r0,r4
	mov.b	r4l,r4l
	ble	.L826
.L825:
	shlr.l	er2
	add.b	#-1,r4l
	bne	.L825
.L826:
	mov.l	er2,er1
	shlr.l	er2
	and.w	#1,r2
	xor	#1,r2l
	sub.l	er4,er4
	add.b	#2,r4l
	sub.l	er1,er4
	mulxu.w	r4,er2
	add.l	er3,er0
	add.w	r2,r0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___clzsi2, .-___clzsi2
	.align 1
	.global ___cmpdi2
___cmpdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	sub.l	#16,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(8,er6),er0
	mov.l	@(12,er6),er1
	mov.l	er3,@(-8,er6)
	cmp.l	er0,er2
	blt	.L829
	cmp.l	er0,er2
	bgt	.L830
	mov.l	@(-8,er6),er2
	cmp.l	er1,er2
	blo	.L831
	bhi	.L832
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L828
.L829:
	sub.l	er0,er0
	bra	.L828
.L830:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L828
.L831:
	sub.l	er0,er0
	bra	.L828
.L832:
	sub.l	er0,er0
	add.b	#2,r0l
.L828:
	add.l	#16,er7
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___cmpdi2, .-___cmpdi2
	.align 1
	.global ___aeabi_lcmp
___aeabi_lcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(8,er6),er0
	mov.l	@(12,er6),er1
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___cmpdi2
	add.l	#8,er7
	subs	#1,er0
	mov.l	@er7+,er6
	rts
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 1
	.global ___ctzsi2
___ctzsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.w	r0,r0
	bne	.L839
	sub.l	er3,er3
	add.b	#16,r3l
	bra	.L835
.L839:
	sub.l	er3,er3
.L835:
	mov.b	r3l,r0l
	ble	.L844
.L843:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L843
.L844:
	mov.b	r2l,r2l
	bne	.L840
	sub.l	er1,er1
	add.b	#8,r1l
	bra	.L836
.L840:
	sub.l	er1,er1
.L836:
	mov.b	r1l,r0l
	ble	.L846
.L845:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L845
.L846:
	mov.l	er2,er0
	add.l	er1,er3
	and.l	#15,er0
	bne	.L841
	sub.l	er1,er1
	add.b	#4,r1l
	bra	.L837
.L841:
	sub.l	er1,er1
.L837:
	mov.b	r1l,r0l
	ble	.L848
.L847:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L847
.L848:
	mov.l	er2,er0
	add.l	er1,er3
	and.l	#3,er0
	bne	.L842
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L838
.L842:
	sub.l	er0,er0
.L838:
	mov.b	r0l,r1l
	ble	.L850
.L849:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L849
.L850:
	sub.l	er4,er4
	bld	#1,r2l
	rotxl.l	er4
	sub.l	er1,er1
	add.b	#2,r1l
	sub.l	er4,er1
	not.w	r2
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.l	er3,er0
	add.w	r2,r0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___ctzsi2, .-___ctzsi2
	.align 1
	.global ___lshrdi3
___lshrdi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	btst	#5,r2l
	beq	.L852
	sub.l	er3,er3
	mov.l	er3,@(-24,er6)
	add.w	#-32,r2
	mov.l	er0,er3
	mov.b	r2l,r2l
	ble	.L857
.L856:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L856
.L857:
	mov.l	er3,@(-20,er6)
	bra	.L853
.L852:
	mov.w	r2,r2
	beq	.L855
	mov.l	@(-16,er6),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L859
.L858:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L858
.L859:
	mov.l	er0,@(-24,er6)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L861
.L860:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L860
.L861:
	mov.l	@(-12,er6),er0
	mov.b	r2l,r2l
	ble	.L863
.L862:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L862
.L863:
	or.l	er0,er3
	mov.l	er3,@(-20,er6)
.L853:
	mov.l	@(-24,er6),er2
	mov.l	@(-20,er6),er3
	bra	.L854
.L855:
	mov.l	er0,er2
	mov.l	er1,er3
.L854:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___lshrdi3, .-___lshrdi3
	.align 1
	.global ___muldsi3
___muldsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#28,er7
	mov.l	er0,er4
	sub.w	e0,e0
	mov.l	er1,@(-20,er6)
	mov.l	er1,er2
	sub.w	e2,e2
	mov.l	er2,@(-28,er6)
	mov.l	er2,er1
	mov.l	er0,@(-24,er6)
	jsr	@___mulsi3
	mov.l	er0,er5
	mov.w	e5,r5
	extu.l	er5
	mov.l	er0,er3
	sub.w	e3,e3
	mov.l	er3,@(-32,er6)
	mov.w	e4,r4
	extu.l	er4
	mov.l	@(-28,er6),er1
	mov.l	er4,@(-28,er6)
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	er5,er3
	mov.w	e3,r3
	extu.l	er3
	mov.l	er3,@(-36,er6)
	extu.l	er5
	mov.l	@(-32,er6),er4
	mov.l	@(-20,er6),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,@(-20,er6)
	mov.l	er2,er1
	mov.l	@(-24,er6),er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	er5,er2
	mov.w	r2,e2
	sub.w	r2,r2
	add.l	er2,er4
	mov.w	e5,r5
	extu.l	er5
	mov.l	er5,er2
	mov.l	@(-36,er6),er5
	add.l	er2,er5
	mov.l	@(-20,er6),er1
	mov.l	@(-28,er6),er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	er5,er0
	mov.l	er4,er1
	add.l	#28,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___muldsi3, .-___muldsi3
	.align 1
	.global ___muldi3_compiler_rt
___muldi3_compiler_rt:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#52,er7
	mov.l	er0,@(-48,er6)
	mov.l	er1,@(-44,er6)
	mov.l	@(8,er6),er4
	mov.l	@(12,er6),er5
	mov.l	er0,@(-52,er6)
	mov.l	er4,@(-56,er6)
	mov.l	er5,er1
	mov.l	@(-44,er6),er0
	jsr	@___muldsi3
	mov.l	er0,@(-40,er6)
	mov.l	er1,@(-36,er6)
	mov.l	er0,er2
	mov.l	er2,@(-60,er6)
	mov.l	er5,er1
	mov.l	@(-52,er6),er0
	jsr	@___mulsi3
	mov.l	er0,er4
	mov.l	@(-44,er6),er1
	mov.l	@(-56,er6),er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	@(-60,er6),er0
	add.l	er4,er0
	mov.l	@(-36,er6),er3
	mov.l	er3,er1
	add.l	#52,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 1
	.global ___negdi2
___negdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,@(-16,er6)
	sub.l	er2,er2
	mov.l	er1,er0
	neg.l	er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er5,er5
	bne	.L867
	sub.l	er0,er0
.L867:
	mov.l	@(-16,er6),er3
	sub.l	er3,er2
	mov.l	er2,er1
	sub.l	er0,er1
	mov.l	er1,er0
	mov.l	er5,er1
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___negdi2, .-___negdi2
	.align 1
	.global ___paritydi2
___paritydi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,er2
	xor.l	er1,er2
	xor.w	e2,r2
	mov.l	er2,er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	xor.l	er3,er2
	mov.l	er2,er3
	shlr.l	er3
	shlr.l	er3
	shlr.l	er3
	shlr.l	er3
	xor.l	er3,er2
	and.w	#15,r2
	mov.w	#27030,r0
	mov.b	r2l,r2l
	ble	.L870
.L869:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L869
.L870:
	and.w	#1,r0
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___paritydi2, .-___paritydi2
	.align 1
	.global ___paritysi2
___paritysi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	xor.w	e0,r0
	mov.l	er0,er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	xor.l	er2,er0
	mov.l	er0,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	xor.l	er0,er2
	and.w	#15,r2
	mov.w	#27030,r0
	mov.b	r2l,r2l
	ble	.L873
.L872:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L872
.L873:
	and.w	#1,r0
	mov.l	@er7+,er6
	rts
	.size	___paritysi2, .-___paritysi2
	.align 1
	.global ___popcountdi2
___popcountdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	er1,er2
	shlr.l	er2
	mov.l	er2,er1
	mov.l	@(-16,er6),er2
	rotxl.l	er1
	bor	#0,r2l
	rotxr.l	er1
	shlr.l	er2
	mov.l	er2,er4
	and.l	#1431655765,er4
	mov.l	er4,er2
	mov.l	er1,er0
	and.l	#1431655765,er0
	mov.l	er0,er3
	mov.l	@(-12,er6),er0
	sub.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(-12,er6),er1
	cmp.l	er1,er5
	bhi	.L875
	sub.l	er0,er0
.L875:
	mov.l	@(-16,er6),er1
	sub.l	er2,er1
	mov.l	er1,er2
	sub.l	er0,er2
	mov.l	er2,er4
	mov.l	er2,@(-16,er6)
	mov.l	er5,@(-12,er6)
	sub.w	e2,e2
	rotr.l	er2
	rotr.l	er2
	sub.w	r2,r2
	mov.l	er5,er3
	shlr.l	er3
	shlr.l	er3
	mov.l	er3,er1
	or.l	er2,er1
	mov.l	er4,er2
	shlr.l	er2
	shlr.l	er2
	and.l	#858993459,er2
	mov.l	er2,er4
	mov.l	er1,er2
	and.l	#858993459,er2
	mov.l	er2,er5
	mov.l	@(-16,er6),er2
	and.l	#858993459,er2
	mov.l	er2,er0
	mov.l	@(-12,er6),er2
	and.l	#858993459,er2
	mov.l	er2,er1
	mov.l	er5,er2
	add.l	er1,er2
	mov.l	er2,@(-20,er6)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.l	er3,er2
	mov.l	@(-24,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-16,er6),er0
	sub.w	e0,e0
	rotr.l	er0
	rotr.l	er0
	rotr.l	er0
	rotr.l	er0
	sub.w	r0,r0
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er5
	or.l	er0,er5
	mov.l	@(-16,er6),er4
	mov.l	er4,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er4
	mov.l	er5,er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,er1
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	mov.l	@(-16,er6),er4
	add.l	er4,er2
	add.l	er2,er3
	mov.l	er3,er0
	and.l	#252645135,er0
	mov.l	er1,er2
	and.l	#252645135,er2
	mov.l	er2,@(-12,er6)
	mov.l	er0,er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,er3
	mov.w	e3,r3
	extu.l	er3
	add.l	er3,er2
	mov.l	er2,er0
	mov.w	e0,r3
	mov.b	r0h,r0l
	mov.b	r3l,r0h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e0
	add.w	r2,r0
	and.w	#127,r0
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___popcountdi2, .-___popcountdi2
	.align 1
	.global ___popcountsi2
___popcountsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	mov.l	er0,er3
	shlr.l	er3
	and.l	#1431655765,er3
	sub.l	er3,er2
	mov.l	er2,er3
	shlr.l	er3
	shlr.l	er3
	and.l	#858993459,er3
	and.l	#858993459,er2
	add.l	er3,er2
	mov.l	er2,er3
	shlr.l	er3
	shlr.l	er3
	shlr.l	er3
	shlr.l	er3
	add.l	er3,er2
	and.l	#252645135,er2
	mov.l	er2,er3
	mov.w	e3,r3
	extu.l	er3
	add.l	er3,er2
	mov.l	er2,er0
	mov.w	e0,r3
	mov.b	r0h,r0l
	mov.b	r3l,r0h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e0
	add.w	r2,r0
	and.w	#63,r0
	mov.l	@er7+,er6
	rts
	.size	___popcountsi2, .-___popcountsi2
	.align 1
	.global ___powidf2
___powidf2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	mov.w	r1,r5
	mov.w	r1,r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,@(-14,er6)
	mov.l	#1065353216,er2
	mov.l	er2,@(-12,er6)
.L883:
	btst	#0,r5l
	beq	.L880
	mov.l	er4,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L880:
	mov.w	r5,r2
	bpl	.L881
	inc #1,r2
.L881:
	shar.w	r2
	mov.w	r2,r5
	beq	.L882
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L883
.L882:
	mov.w	@(-14,er6),r2
	beq	.L885
	mov.l	@(-12,er6),er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L884
.L885:
	mov.l	@(-12,er6),er0
.L884:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___powidf2, .-___powidf2
	.align 1
	.global ___powisf2
___powisf2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	mov.w	r1,r5
	mov.w	r1,r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,@(-14,er6)
	mov.l	#1065353216,er2
	mov.l	er2,@(-12,er6)
.L890:
	btst	#0,r5l
	beq	.L887
	mov.l	er4,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L887:
	mov.w	r5,r2
	bpl	.L888
	inc #1,r2
.L888:
	shar.w	r2
	mov.w	r2,r5
	beq	.L889
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L890
.L889:
	mov.w	@(-14,er6),r2
	beq	.L892
	mov.l	@(-12,er6),er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L891
.L892:
	mov.l	@(-12,er6),er0
.L891:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___powisf2, .-___powisf2
	.align 1
	.global ___ucmpdi2
___ucmpdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	sub.l	#16,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(8,er6),er0
	mov.l	@(12,er6),er1
	mov.l	er3,@(-8,er6)
	cmp.l	er0,er2
	blo	.L895
	cmp.l	er0,er2
	bhi	.L896
	mov.l	@(-8,er6),er2
	cmp.l	er1,er2
	blo	.L897
	bhi	.L898
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L894
.L895:
	sub.l	er0,er0
	bra	.L894
.L896:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L894
.L897:
	sub.l	er0,er0
	bra	.L894
.L898:
	sub.l	er0,er0
	add.b	#2,r0l
.L894:
	add.l	#16,er7
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___ucmpdi2, .-___ucmpdi2
	.align 1
	.global ___aeabi_ulcmp
___aeabi_ulcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(8,er6),er0
	mov.l	@(12,er6),er1
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___ucmpdi2
	add.l	#8,er7
	subs	#1,er0
	mov.l	@er7+,er6
	rts
	.size	___aeabi_ulcmp, .-___aeabi_ulcmp
	.local	_s___0
	.comm	_s___0,7,1
	.global ___divsf3
	.global ___fixsfsi
	.global ___floatundisf
	.global ___floatunsisf
	.global ___clzdi2
	.global ___clzsi2
	.global ___gesf2
	.global ___mulsf3
	.global ___nesf2
	.global ___addsf3
	.global ___floatsisf
	.global ___modsi3
	.global ___divsi3
	.global ___moddi3
	.global ___divdi3
	.global ___mulsi3
	.global ___muldi3
	.global ___ltsf2
	.global ___subsf3
	.global ___gtsf2
	.global ___unordsf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.end
