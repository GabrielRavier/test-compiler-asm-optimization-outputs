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
	cmp.l	er1,er0
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
	mov.l	@(8,er6),er3
	extu.w	r2
	bra	.L9
.L11:
	subs	#1,er3
	adds	#1,er1
	adds	#1,er0
.L9:
	mov.l	er3,er3
	beq	.L10
	mov.b	@er1,r4l
	mov.b	r4l,@er0
	extu.w	r4
	cmp.w	r4,r2
	bne	.L11
.L10:
	mov.l	er3,er3
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
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er0,er4
	add.l	er2,er4
	mov.b	@er4,r4l
	extu.w	r4
	cmp.w	r4,r1
	bne	.L33
	add.l	er2,er0
	bra	.L31
.L33:
	mov.l	er3,er2
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
	mov.b	r2l,r2l
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
	mov.l	er0,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r3,r1
	beq	.L47
	mov.b	@er0+,r2l
	mov.b	r2l,r2l
	bne	.L46
	sub.l	er0,er0
	bra	.L45
.L47:
	mov.l	er2,er0
.L45:
	mov.l	@er7+,er6
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L49
.L51:
	adds	#1,er0
	adds	#1,er1
.L49:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	cmp.b	r3l,r2l
	bne	.L50
	mov.b	r2l,r2l
	bne	.L51
.L50:
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
	mov.l	er0,er3
	mov.l	er3,er2
	bra	.L53
.L54:
	adds	#1,er2
.L53:
	mov.b	@er2,r0l
	mov.b	r0l,r0l
	bne	.L54
	sub.l	er3,er2
	mov.l	er2,er0
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
	beq	.L60
	subs	#1,er2
	add.l	er0,er2
	bra	.L57
.L59:
	adds	#1,er0
	adds	#1,er1
.L57:
	mov.b	@er0,r3l
	mov.b	r3l,r3l
	beq	.L58
	mov.b	@er1,r3l
	mov.b	r3l,r3l
	beq	.L58
	cmp.l	er2,er0
	beq	.L58
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L59
.L58:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L56
.L60:
	sub.w	r0,r0
.L56:
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
	bra	.L62
.L63:
	mov.b	@(1,er3),r4l
	mov.b	r4l,@er1
	mov.b	@er3,r4l
	mov.b	r4l,@(1,er1)
	adds	#2,er1
	adds	#2,er3
.L62:
	mov.l	er0,er4
	add.l	er2,er4
	sub.l	er3,er4
	cmp.l	#1,er4
	bgt	.L63
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
	bls	.L65
	sub.w	r0,r0
.L65:
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
	bls	.L67
	sub.w	r2,r2
.L67:
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
	beq	.L70
	cmp.w	#9,r0
	bne	.L71
	mov.w	#1,r0
	bra	.L69
.L70:
	mov.w	#1,r0
	bra	.L69
.L71:
	sub.w	r0,r0
.L69:
	mov.l	@er7+,er6
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#31,r0
	bls	.L74
	cmp.w	#127,r0
	bne	.L75
	mov.w	#1,r0
	bra	.L73
.L74:
	mov.w	#1,r0
	bra	.L73
.L75:
	sub.w	r0,r0
.L73:
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
	bls	.L77
	sub.w	r0,r0
.L77:
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
	bls	.L79
	sub.w	r0,r0
.L79:
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
	bls	.L81
	sub.w	r0,r0
.L81:
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
	bls	.L83
	sub.w	r0,r0
.L83:
	mov.l	@er7+,er6
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#32,r0
	beq	.L86
	add.w	#-9,r0
	cmp.w	#4,r0
	bhi	.L87
	mov.w	#1,r0
	bra	.L85
.L86:
	mov.w	#1,r0
	bra	.L85
.L87:
	sub.w	r0,r0
.L85:
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
	bls	.L89
	sub.w	r0,r0
.L89:
	mov.l	@er7+,er6
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#31,r0
	bls	.L92
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L93
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L94
	add.w	#7,r0
	cmp.w	#2,r0
	bhi	.L95
	mov.w	#1,r0
	bra	.L91
.L92:
	mov.w	#1,r0
	bra	.L91
.L93:
	mov.w	#1,r0
	bra	.L91
.L94:
	mov.w	#1,r0
	bra	.L91
.L95:
	sub.w	r0,r0
.L91:
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
	bls	.L97
	sub.w	r0,r0
.L97:
	mov.l	@er7+,er6
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.w	#254,r0
	bhi	.L99
	inc #1,r0
	and.w	#127,r0
	mov.w	#1,r2
	cmp.w	#32,r0
	bhi	.L100
	sub.w	r2,r2
.L100:
	mov.w	r2,r0
	bra	.L101
.L99:
	cmp.w	#8231,r0
	bls	.L102
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L103
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L104
	and	#254,r0l
	cmp.w	#-2,r0
	beq	.L105
	mov.w	#1,r0
	bra	.L101
.L102:
	mov.w	#1,r0
	bra	.L101
.L103:
	mov.w	#1,r0
	bra	.L101
.L104:
	mov.w	#1,r0
	bra	.L101
.L105:
	sub.w	r0,r0
.L101:
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
	bls	.L108
	or	#32,r0l
	add.w	#-97,r0
	cmp.w	#5,r0
	bhi	.L109
	mov.w	#1,r0
	bra	.L107
.L108:
	mov.w	#1,r0
	bra	.L107
.L109:
	sub.w	r0,r0
.L107:
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
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L114
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L115
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L118
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___subsf3
	bra	.L112
.L114:
	mov.l	er5,er0
	bra	.L112
.L115:
	mov.l	er4,er0
	bra	.L112
.L118:
	sub.l	er0,er0
.L112:
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
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L122
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L123
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L126
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___subsf3
	bra	.L120
.L122:
	mov.l	er5,er0
	bra	.L120
.L123:
	mov.l	er4,er0
	bra	.L120
.L126:
	sub.l	er0,er0
.L120:
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
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L131
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L128
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L129
	mov.l	er4,er2
	mov.l	er3,er2
	mov.w	r2,r2
	beq	.L128
	mov.l	er5,er4
	bra	.L128
.L129:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L128
	mov.l	er5,er4
	bra	.L128
.L131:
	mov.l	er5,er4
.L128:
	mov.l	er4,er0
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
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L141
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L138
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L139
	mov.l	er4,er2
	mov.l	er3,er2
	mov.w	r2,r2
	beq	.L138
	mov.l	er5,er4
	bra	.L138
.L139:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L138
	mov.l	er5,er4
	bra	.L138
.L141:
	mov.l	er5,er4
.L138:
	mov.l	er4,er0
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
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L151
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L148
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L149
	mov.l	er4,er2
	mov.l	er3,er2
	mov.w	r2,r2
	beq	.L148
	mov.l	er5,er4
	bra	.L148
.L149:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L148
	mov.l	er5,er4
	bra	.L148
.L151:
	mov.l	er5,er4
.L148:
	mov.l	er4,er0
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
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L158
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L162
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L159
	mov.l	er5,er2
	mov.l	er3,er2
	mov.w	r2,r2
	beq	.L158
	mov.l	er5,er4
	bra	.L158
.L159:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L158
	mov.l	er5,er4
	bra	.L158
.L162:
	mov.l	er5,er4
.L158:
	mov.l	er4,er0
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
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L168
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L172
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L169
	mov.l	er5,er2
	mov.l	er3,er2
	mov.w	r2,r2
	beq	.L168
	mov.l	er5,er4
	bra	.L168
.L169:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L168
	mov.l	er5,er4
	bra	.L168
.L172:
	mov.l	er5,er4
.L168:
	mov.l	er4,er0
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
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L178
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L182
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	cmp.w	r2,r3
	beq	.L179
	mov.l	er5,er2
	mov.l	er3,er2
	mov.w	r2,r2
	beq	.L178
	mov.l	er5,er4
	bra	.L178
.L179:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L178
	mov.l	er5,er4
	bra	.L178
.L182:
	mov.l	er5,er4
.L178:
	mov.l	er4,er0
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
	mov.l	#_s___0,er2
	bra	.L188
.L189:
	mov.l	er0,er3
	and.l	#63,er3
	mov.b	@(_digits,er3),r3l
	mov.b	r3l,@er2
	adds	#1,er2
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
.L188:
	mov.l	er0,er0
	bne	.L189
	sub.b	r3l,r3l
	mov.b	r3l,@er2
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
	sub.l	#8,er7
	subs	#4,er7
	subs	#4,er7
	mov.l	#1481765933,er2
	mov.l	er2,@er7
	mov.l	#1284865837,er2
	mov.l	er2,@(4,er7)
	mov.l	@_seed:32,er0
	mov.l	@_seed+4:32,er1
	jsr	@___muldi3
	adds	#4,er7
	adds	#4,er7
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
	blo	.L192
	sub.l	er4,er4
.L192:
	mov.l	@(-16,er6),er5
	add.l	er2,er5
	mov.l	er5,er0
	add.l	er0,er4
	mov.l	er4,er0
	mov.l	er4,@_seed:32
	mov.l	er1,@_seed+4:32
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er4,er3
	shlr.l	er4
	mov.l	er4,er3
	mov.w	r3,r0
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
	bne	.L194
	sub.l	er2,er2
	mov.l	er2,@(4,er0)
	mov.l	er2,@er0
	bra	.L193
.L194:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	mov.l	er2,er2
	beq	.L193
	mov.l	er0,@(4,er2)
.L193:
	mov.l	@er7+,er6
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	@er0,er2
	mov.l	er2,er2
	beq	.L197
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L197:
	mov.l	@(4,er0),er2
	mov.l	er2,er2
	beq	.L196
	mov.l	@er0,er3
	mov.l	er3,@er2
.L196:
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
	mov.l	er1,@(-20,er6)
	mov.l	@er2,er5
	mov.l	er1,@(-12,er6)
	sub.l	er4,er4
	mov.l	er2,@(-24,er6)
	bra	.L200
.L203:
	mov.l	@(-12,er6),er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er3
	jsr	@er3
	mov.l	@(8,er6),er3
	mov.l	@(-12,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.w	r0,r0
	bne	.L201
	mov.l	er3,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(-20,er6),er2
	add.l	er2,er0
	bra	.L202
.L201:
	adds	#1,er4
.L200:
	cmp.l	er5,er4
	bne	.L203
	mov.l	@(-24,er6),er2
	mov.l	er5,er3
	adds	#1,er3
	mov.l	er3,@er2
	mov.l	er5,er1
	mov.l	@(8,er6),er0
	jsr	@___mulsi3
	mov.l	@(-20,er6),er2
	add.l	er2,er0
	mov.l	@(8,er6),er2
	mov.l	@(-16,er6),er1
	jsr	@_memcpy
.L202:
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
	bra	.L205
.L208:
	mov.l	er5,er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er2
	jsr	@er2
	mov.l	@(8,er6),er2
	add.l	er2,er5
	mov.w	r0,r0
	bne	.L206
	mov.l	er2,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(-20,er6),er2
	add.l	er2,er0
	bra	.L207
.L206:
	adds	#1,er4
.L205:
	mov.l	@(-12,er6),er2
	cmp.l	er2,er4
	bne	.L208
	sub.l	er0,er0
.L207:
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
	bpl	.L210
	neg.w	r0
.L210:
	mov.l	@er7+,er6
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er4
	bra	.L212
.L213:
	adds	#1,er4
.L212:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L213
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L219
	cmp.w	#45,r2
	bne	.L220
	mov.w	#1,r2
	bra	.L214
.L219:
	sub.w	r2,r2
.L214:
	adds	#1,er4
	bra	.L215
.L220:
	sub.w	r2,r2
.L215:
	sub.w	r0,r0
	bra	.L216
.L217:
	mov.w	#10,r3
	mulxs.w	r3,er0
	mov.b	@er4+,r3l
	extu.w	r3
	add.w	#-48,r3
	sub.w	r3,r0
.L216:
	mov.b	@er4,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L217
	mov.w	r2,r2
	bne	.L218
	neg.w	r0
.L218:
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
	mov.l	er0,er4
	bra	.L223
.L224:
	adds	#1,er4
.L223:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L224
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L230
	cmp.w	#45,r2
	bne	.L231
	mov.w	#1,r5
	bra	.L225
.L230:
	sub.w	r5,r5
.L225:
	adds	#1,er4
	bra	.L226
.L231:
	sub.w	r5,r5
.L226:
	sub.l	er0,er0
	bra	.L227
.L228:
	sub.l	er1,er1
	add.b	#10,r1l
	jsr	@___mulsi3
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	sub.l	er2,er0
.L227:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L228
	mov.w	r5,r5
	bne	.L229
	neg.l	er0
.L229:
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
	sub.l	#20,er7
	mov.l	er0,er5
	bra	.L234
.L235:
	adds	#1,er5
.L234:
	mov.b	@er5,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L235
	mov.b	@er5,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L243
	cmp.w	#45,r2
	bne	.L244
	mov.w	#1,r2
	bra	.L236
.L243:
	sub.w	r2,r2
.L236:
	adds	#1,er5
	bra	.L237
.L244:
	sub.w	r2,r2
.L237:
	sub.l	er3,er3
	mov.l	er3,@(-16,er6)
	mov.l	er3,@(-12,er6)
	mov.w	r2,@(-26,er6)
	bra	.L238:16
.L240:
	subs	#4,er7
	subs	#4,er7
	sub.l	er2,er2
	mov.l	er2,@er7
	sub.l	er2,er2
	add.b	#10,r2l
	mov.l	er2,@(4,er7)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	jsr	@___muldi3
	adds	#4,er7
	adds	#4,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,@(-16,er6)
	mov.l	er3,@(-12,er6)
	mov.b	@er5,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	mov.l	er2,@(-20,er6)
	shll	e2
	subx	r2l,r2l
	exts.w	r2
	exts.l	er2
	mov.l	er2,@(-24,er6)
	mov.l	er1,er0
	mov.l	@(-20,er6),er1
	sub.l	er1,er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(-12,er6),er1
	cmp.l	er1,er3
	bhi	.L239
	sub.l	er0,er0
.L239:
	mov.l	@(-16,er6),er1
	mov.l	@(-24,er6),er4
	sub.l	er4,er1
	mov.l	er1,er2
	sub.l	er0,er1
	mov.l	er1,er2
	mov.l	er1,@(-16,er6)
	mov.l	er3,@(-12,er6)
	adds	#1,er5
.L238:
	mov.b	@er5,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L240:16
	mov.w	@(-26,er6),r2
	mov.w	r2,r2
	bne	.L245
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-12,er6),er4
	neg.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er1,er1
	bne	.L242
	sub.l	er4,er4
.L242:
	mov.l	@(-16,er6),er3
	sub.l	er3,er2
	mov.l	er2,er0
	mov.l	er0,er5
	sub.l	er4,er5
	mov.l	er5,er0
	mov.l	er5,er2
	mov.l	er1,er3
	bra	.L241
.L245:
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
.L241:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#20,er7
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
	bra	.L247
.L251:
	mov.l	@(8,er6),er1
	mov.l	er4,er0
	shlr.l	er0
	jsr	@___mulsi3
	mov.l	@(-12,er6),er2
	add.l	er2,er0
	mov.l	er0,er5
	mov.l	er5,er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er2
	jsr	@er2
	mov.w	r0,r0
	bpl	.L248
	shlr.l	er4
	bra	.L247
.L248:
	mov.w	r0,r0
	ble	.L252
	mov.l	@(8,er6),er2
	add.l	er5,er2
	mov.l	er2,@(-12,er6)
	mov.l	er4,er2
	shlr.l	er2
	subs	#1,er4
	sub.l	er2,er4
.L247:
	mov.l	er4,er4
	bne	.L251
	sub.l	er0,er0
	bra	.L250
.L252:
	mov.l	er5,er0
.L250:
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
	bra	.L254
.L257:
	mov.w	r4,r0
	shar.w	r0
	mov.l	@(8,er6),er1
	exts.l	er0
	jsr	@___mulsi3
	mov.l	@(-12,er6),er2
	add.l	er2,er0
	mov.l	er0,er5
	mov.l	@(16,er6),er2
	mov.l	er5,er1
	mov.l	@(-16,er6),er0
	mov.l	@(12,er6),er3
	jsr	@er3
	mov.w	r0,r0
	beq	.L258
	mov.w	r0,r0
	ble	.L256
	mov.l	@(8,er6),er2
	add.l	er5,er2
	mov.l	er2,@(-12,er6)
	dec #1,r4
.L256:
	shar.w	r4
.L254:
	mov.w	r4,r4
	bne	.L257
	sub.l	er0,er0
	bra	.L255
.L258:
	mov.l	er5,er0
.L255:
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
	sub.l	#8,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er4
	bpl	.L261
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	er5,er0
	neg.l	er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er3,er3
	bne	.L263
	sub.l	er0,er0
.L263:
	mov.l	@(-16,er6),er1
	sub.l	er4,er1
	mov.l	er1,er2
	sub.l	er0,er1
	mov.l	er1,er2
	mov.l	er1,er4
	mov.l	er3,er5
.L261:
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#8,er7
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
	sub.l	#12,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	@(8,er6),er4
	mov.l	@(12,er6),er5
	subs	#4,er7
	subs	#4,er7
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	er1,er0
	mov.l	er2,er1
	jsr	@___divdi3
	adds	#4,er7
	adds	#4,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(-20,er6),er0
	mov.l	er2,@er0
	mov.l	er3,@(4,er0)
	subs	#4,er7
	subs	#4,er7
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	jsr	@___moddi3
	adds	#4,er7
	adds	#4,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(-20,er6),er0
	mov.l	er2,@(8,er0)
	mov.l	er3,@(12,er0)
	add.l	#12,er7
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
	bpl	.L266
	neg.l	er0
.L266:
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
	sub.l	#8,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er4
	bpl	.L269
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	er5,er0
	neg.l	er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er3,er3
	bne	.L271
	sub.l	er0,er0
.L271:
	mov.l	@(-16,er6),er1
	sub.l	er4,er1
	mov.l	er1,er2
	sub.l	er0,er1
	mov.l	er1,er2
	mov.l	er1,er4
	mov.l	er3,er5
.L269:
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#8,er7
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
	sub.l	#12,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	@(8,er6),er4
	mov.l	@(12,er6),er5
	subs	#4,er7
	subs	#4,er7
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	er1,er0
	mov.l	er2,er1
	jsr	@___divdi3
	adds	#4,er7
	adds	#4,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(-20,er6),er0
	mov.l	er2,@er0
	mov.l	er3,@(4,er0)
	subs	#4,er7
	subs	#4,er7
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	jsr	@___moddi3
	adds	#4,er7
	adds	#4,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(-20,er6),er0
	mov.l	er2,@(8,er0)
	mov.l	er3,@(12,er0)
	add.l	#12,er7
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
	bra	.L274
.L276:
	adds	#2,er0
.L274:
	mov.w	@er0,r2
	mov.w	r2,r2
	beq	.L275
	cmp.w	r2,r1
	bne	.L276
.L275:
	mov.w	@er0,r2
	mov.w	r2,r2
	bne	.L277
	sub.l	er0,er0
.L277:
	mov.l	@er7+,er6
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L280
.L282:
	adds	#2,er0
	adds	#2,er1
.L280:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L281
	mov.w	r2,r2
	beq	.L281
	mov.w	r3,r2
	mov.w	r2,r2
	bne	.L282
.L281:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L285
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L284
	sub.w	r2,r2
.L284:
	mov.w	r2,r0
	bra	.L283
.L285:
	mov.w	#-1,r0
.L283:
	mov.l	@er7+,er6
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
.L287:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L287
	mov.l	@er7+,er6
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	bra	.L289
.L290:
	adds	#2,er2
.L289:
	mov.w	@er2,r3
	mov.w	r3,r3
	bne	.L290
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
	mov.l	er0,er3
	bra	.L292
.L294:
	subs	#1,er2
	adds	#2,er3
	adds	#2,er1
.L292:
	mov.l	er2,er2
	beq	.L293
	mov.w	@er3,r0
	mov.w	@er1,r4
	cmp.w	r4,r0
	bne	.L293
	mov.w	r0,r0
	beq	.L293
	mov.w	r4,r0
	mov.w	r0,r0
	bne	.L294
.L293:
	mov.l	er2,er2
	beq	.L297
	mov.w	@er3,r2
	mov.w	@er1,r0
	cmp.w	r0,r2
	blo	.L298
	mov.w	#1,r0
	mov.w	r2,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhi	.L295
	sub.w	r0,r0
	bra	.L295
.L297:
	sub.w	r0,r0
	bra	.L295
.L298:
	mov.w	#-1,r0
.L295:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	bra	.L300
.L302:
	subs	#1,er2
	adds	#2,er0
.L300:
	mov.l	er2,er2
	beq	.L301
	mov.w	@er0,r3
	cmp.w	r3,r1
	bne	.L302
.L301:
	mov.l	er2,er2
	bne	.L303
	sub.l	er0,er0
.L303:
	mov.l	@er7+,er6
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er3
	bra	.L306
.L308:
	subs	#1,er2
	adds	#2,er3
	adds	#2,er1
.L306:
	mov.l	er2,er2
	beq	.L307
	mov.w	@er3,r0
	mov.w	@er1,r4
	cmp.w	r4,r0
	beq	.L308
.L307:
	mov.l	er2,er2
	beq	.L311
	mov.w	@er3,r2
	mov.w	@er1,r0
	cmp.w	r0,r2
	blo	.L312
	mov.w	#1,r0
	mov.w	r2,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhi	.L309
	sub.w	r0,r0
	bra	.L309
.L311:
	sub.w	r0,r0
	bra	.L309
.L312:
	mov.w	#-1,r0
.L309:
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
	bra	.L314
.L315:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L314:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L315
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
	beq	.L317
	mov.l	er2,er4
	shll.l	er4
	mov.l	er0,er3
	sub.l	er1,er3
	cmp.l	er4,er3
	blo	.L318
	mov.l	er0,er3
	bra	.L319
.L318:
	shll.l	er2
	mov.l	er2,er3
	add.l	er3,er1
	add.l	er0,er2
	mov.l	er0,er3
	subs	#2,er3
	bra	.L320
.L321:
	mov.w	@er1,r4
	mov.w	r4,@er2
.L320:
	subs	#2,er1
	subs	#2,er2
	cmp.l	er3,er2
	bne	.L321
	bra	.L317
.L322:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L319:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L322
.L317:
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
	bra	.L324
.L325:
	mov.w	r1,@er3
	adds	#2,er3
.L324:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L325
	mov.l	@er7+,er6
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	cmp.l	er1,er0
	bhs	.L327
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er1,er2
	bra	.L328
.L329:
	subs	#1,er3
	mov.b	@er3,r1l
	subs	#1,er2
	mov.b	r1l,@er2
.L328:
	cmp.l	er0,er3
	bne	.L329
	bra	.L326
.L327:
	cmp.l	er1,er0
	beq	.L326
	add.l	er1,er2
	bra	.L331
.L332:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
.L331:
	cmp.l	er2,er1
	bne	.L332
.L326:
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
	mov.w	r3,r3
	bmi	.L334
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r0l
	ble	.L339
.L338:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L338
.L339:
	bra	.L335
.L334:
	mov.l	@(-12,er6),er1
	shlr.l	er1
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	er1,er3
	mov.b	r0l,r1l
	ble	.L341
.L340:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L340
.L341:
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	@(-16,er6),er4
	mov.b	r2l,r0l
	ble	.L343
.L342:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L342
.L343:
	or.l	er3,er4
	mov.l	@(-12,er6),er5
	mov.b	r2l,r3l
	ble	.L345
.L344:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L344
.L345:
.L335:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	mov.w	r3,r3
	bmi	.L336
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-16,er6),er1
	mov.b	r3l,r2l
	ble	.L347
.L346:
	shlr.l	er1
	add.b	#-1,r2l
	bne	.L346
.L347:
	bra	.L337
.L336:
	mov.l	@(-16,er6),er0
	shll.l	er0
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r1
	sub.w	r2,r1
	mov.l	er0,er3
	mov.b	r1l,r0l
	ble	.L349
.L348:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L348
.L349:
	mov.l	er3,@(-20,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-12,er6),er1
	mov.b	r2l,r3l
	ble	.L351
.L350:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L350
.L351:
	mov.l	@(-20,er6),er3
	or.l	er3,er1
	mov.l	@(-16,er6),er0
	mov.b	r2l,r3l
	ble	.L353
.L352:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L352
.L353:
.L337:
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er2,@(-16,er6)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	er2,@(-12,er6)
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
	mov.w	r3,r3
	bmi	.L355
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er0,er5
	mov.b	r3l,r0l
	ble	.L360
.L359:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L359
.L360:
	bra	.L356
.L355:
	mov.l	@(-16,er6),er1
	shll.l	er1
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	er1,er3
	mov.b	r0l,r1l
	ble	.L362
.L361:
	shll.l	er3
	add.b	#-1,r1l
	bne	.L361
.L362:
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	@(-12,er6),er5
	mov.b	r2l,r0l
	ble	.L364
.L363:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L363
.L364:
	or.l	er3,er5
	mov.l	@(-16,er6),er4
	mov.b	r2l,r3l
	ble	.L366
.L365:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L365
.L366:
.L356:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	mov.w	r3,r3
	bmi	.L357
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-12,er6),er0
	mov.b	r3l,r2l
	ble	.L368
.L367:
	shll.l	er0
	add.b	#-1,r2l
	bne	.L367
.L368:
	bra	.L358
.L357:
	mov.l	@(-12,er6),er0
	shlr.l	er0
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r1
	sub.w	r2,r1
	mov.l	er0,er3
	mov.b	r1l,r0l
	ble	.L370
.L369:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L369
.L370:
	mov.l	er3,@(-20,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-16,er6),er0
	mov.b	r2l,r3l
	ble	.L372
.L371:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L371
.L372:
	mov.l	@(-20,er6),er3
	or.l	er3,er0
	mov.l	@(-12,er6),er1
	mov.b	r2l,r3l
	ble	.L374
.L373:
	shll.l	er1
	add.b	#-1,r3l
	bne	.L373
.L374:
.L358:
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er2,@(-16,er6)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	er2,@(-12,er6)
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
	ble	.L377
.L376:
	rotl.l	er0
	add.b	#-1,r1l
	mov.b	r1l,r1l
	bne	.L376
.L377:
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
	ble	.L380
.L379:
	rotl.l	er0
	add.b	#-1,r2l
	mov.b	r2l,r2l
	bne	.L379
.L380:
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
	mov.l	er2,er0
	mov.b	r3l,r4l
	ble	.L383
.L382:
	shlr.l	er0
	add.b	#-1,r4l
	bne	.L382
.L383:
	mov.b	r1l,r3l
	ble	.L385
.L384:
	shll.l	er2
	add.b	#-1,r3l
	bne	.L384
.L385:
	mov.l	er2,er3
	or.l	er3,er0
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
	mov.l	er2,er0
	mov.b	r3l,r4l
	ble	.L388
.L387:
	shll.l	er0
	add.b	#-1,r4l
	bne	.L387
.L388:
	mov.b	r1l,r3l
	ble	.L390
.L389:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L389
.L390:
	mov.l	er2,er3
	or.l	er3,er0
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
	ble	.L393
.L392:
	rotl.w	r0
	add.b	#-1,r1l
	mov.b	r1l,r1l
	bne	.L392
.L393:
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
	ble	.L396
.L395:
	rotl.w	r0
	add.b	#-1,r2l
	mov.b	r2l,r2l
	bne	.L395
.L396:
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
	mov.b	r3l,r4l
	ble	.L399
.L398:
	shlr.w	r0
	add.b	#-1,r4l
	bne	.L398
.L399:
	mov.b	r1l,r3l
	ble	.L401
.L400:
	shll.w	r2
	add.b	#-1,r3l
	bne	.L400
.L401:
	mov.w	r2,r3
	or	r3l,r0l
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
	mov.b	r3l,r4l
	ble	.L404
.L403:
	shll.w	r0
	add.b	#-1,r4l
	bne	.L403
.L404:
	mov.b	r1l,r3l
	ble	.L406
.L405:
	shlr.w	r2
	add.b	#-1,r3l
	bne	.L405
.L406:
	mov.w	r2,r3
	or	r3l,r0l
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotr8, .-_rotr8
	.align 1
	.global _bswap_16
_bswap_16:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	mov.w	r2,r3
	and	#0,r3h
	and	#0,r2l
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,r0
	or.b	r3l,r0h
	mov.l	@er7+,er6
	rts
	.size	_bswap_16, .-_bswap_16
	.align 1
	.global _bswap_32
_bswap_32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	mov.l	er2,er3
	sub.w	r3,r3
	extu.w	e3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	mov.l	er3,er0
	mov.l	er2,er1
	and.l	#-16777216,er1
	mov.l	er1,er3
	mov.w	e3,r3
	mov.b	r3h,r3l
	extu.w	r3
	extu.l	er3
	or.l	er3,er0
	mov.l	er2,er1
	and	#0,r1l
	sub.w	e1,e1
	mov.l	er1,er3
	mov.w	e3,r1
	mov.b	r1l,r1h
	mov.b	r3h,r1l
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	mov.w	r1,e3
	or.l	er3,er0
	and	#0,r2h
	sub.w	e2,e2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er3
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
	sub.l	#24,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-16,er6),er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er0
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er0,er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-16,er6),er4
	and.l	#-16777216,er4
	mov.l	er4,er0
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er0,er5
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er0,er5
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er3,er2
	or.l	er5,er2
	mov.l	er2,er1
	sub.l	er2,er2
	mov.l	er2,@(-24,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-16,er6),er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,@(-24,er6)
	sub.l	er2,er2
	mov.l	@(-24,er6),er3
	sub.l	er4,er4
	sub.l	er5,er5
	mov.w	e3,r2
	mov.b	r2l,r2h
	mov.b	r3h,r2l
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	mov.w	r2,e3
	mov.l	er3,er5
	mov.l	@(-24,er6),er4
	mov.l	er4,er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er4
	sub.l	er2,er2
	mov.l	er2,@(-24,er6)
	or.l	er4,er2
	mov.l	er2,@(-24,er6)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	er2,@(-20,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-16,er6),er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er0
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er0,er4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r4,e4
	sub.w	r4,r4
	mov.l	er4,er3
	mov.l	er0,er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	sub.l	er0,er0
	mov.l	er0,@(-32,er6)
	mov.l	er0,@(-28,er6)
	mov.l	@(-24,er6),er0
	or.l	er2,er0
	mov.l	er0,@(-32,er6)
	mov.l	@(-20,er6),er0
	or.l	er3,er0
	mov.l	er0,@(-28,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-12,er6),er2
	and.l	#-16777216,er2
	mov.l	er2,er1
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L410
	sub.l	er4,er4
.L410:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L411
	sub.l	er4,er4
.L411:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L412
	sub.l	er4,er4
.L412:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L413
	sub.l	er4,er4
.L413:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L414
	sub.l	er4,er4
.L414:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L415
	sub.l	er4,er4
.L415:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L416
	sub.l	er4,er4
.L416:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L417
	sub.l	er4,er4
.L417:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	sub.l	er2,er2
	mov.l	er2,@(-24,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-32,er6),er2
	or.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-28,er6),er2
	or.l	er1,er2
	mov.l	er2,@(-20,er6)
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-12,er6),er0
	sub.w	r0,r0
	extu.w	e0
	mov.l	er0,er3
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L418
	sub.l	er4,er4
.L418:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L419
	sub.l	er4,er4
.L419:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L420
	sub.l	er4,er4
.L420:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L421
	sub.l	er4,er4
.L421:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L422
	sub.l	er4,er4
.L422:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L423
	sub.l	er4,er4
.L423:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L424
	sub.l	er4,er4
.L424:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L425
	sub.l	er4,er4
.L425:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L426
	sub.l	er4,er4
.L426:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L427
	sub.l	er4,er4
.L427:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L428
	sub.l	er4,er4
.L428:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L429
	sub.l	er4,er4
.L429:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L430
	sub.l	er4,er4
.L430:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L431
	sub.l	er4,er4
.L431:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L432
	sub.l	er4,er4
.L432:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L433
	sub.l	er4,er4
.L433:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L434
	sub.l	er4,er4
.L434:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L435
	sub.l	er4,er4
.L435:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L436
	sub.l	er4,er4
.L436:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L437
	sub.l	er4,er4
.L437:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L438
	sub.l	er4,er4
.L438:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L439
	sub.l	er4,er4
.L439:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L440
	sub.l	er4,er4
.L440:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L441
	sub.l	er4,er4
.L441:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	@(-24,er6),er0
	or.l	er2,er0
	mov.l	er0,er4
	mov.l	@(-20,er6),er0
	or.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-12,er6),er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,er1
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er1,er2
	mov.w	e2,r0
	mov.b	r0l,r0h
	mov.b	r2h,r0l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r0,e2
	sub.l	er0,er0
	mov.l	er0,@(-24,er6)
	mov.l	er0,@(-20,er6)
	or.l	er4,er2
	mov.l	er2,@(-24,er6)
	mov.l	er5,@(-20,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-12,er6),er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er1
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er1,er2
	mov.l	er1,er0
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r0,e0
	sub.w	r0,r0
	mov.l	er0,er2
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-24,er6),er3
	or.l	er3,er2
	mov.l	er2,er0
	mov.l	er5,er1
	mov.l	er0,er2
	mov.l	er5,er3
	add.l	#24,er7
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
	bra	.L443
.L446:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L448
.L447:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L447
.L448:
	btst	#0,r3l
	beq	.L444
	inc #1,r2
	mov.w	r2,r0
	bra	.L445
.L444:
	inc #1,r2
.L443:
	cmp.w	#16,r2
	bne	.L446
	sub.w	r0,r0
.L445:
	mov.l	@er7+,er6
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r0
	beq	.L453
	mov.w	#1,r2
	bra	.L451
.L452:
	shar.w	r0
	inc #1,r2
.L451:
	btst	#0,r0l
	beq	.L452
	mov.w	r2,r0
	bra	.L450
.L453:
	sub.w	r0,r0
.L450:
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
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L457
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L460
	mov.w	#1,r0
	bra	.L455
.L457:
	mov.w	#1,r0
	bra	.L455
.L460:
	sub.w	r0,r0
.L455:
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
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L464
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L467
	mov.w	#1,r0
	bra	.L462
.L464:
	mov.w	#1,r0
	bra	.L462
.L467:
	sub.w	r0,r0
.L462:
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
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L471
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L474
	mov.w	#1,r0
	bra	.L469
.L471:
	mov.w	#1,r0
	bra	.L469
.L474:
	sub.w	r0,r0
.L469:
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
	mov.l	er0,er5
	mov.l	er5,@(-12,er6)
	mov.w	r1,r4
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L477
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L477
	mov.w	r4,r4
	bpl	.L483
	mov.l	#1056964608,er5
	bra	.L482
.L483:
	mov.l	#1073741824,er5
.L482:
	btst	#0,r4l
	beq	.L480
	mov.l	er5,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L480:
	mov.w	r4,r2
	mov.w	r2,r2
	bpl	.L481
	inc #1,r2
.L481:
	shar.w	r2
	mov.w	r2,r4
	mov.w	r4,r4
	beq	.L477
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L482
.L477:
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
	mov.l	er0,er5
	mov.l	er5,@(-12,er6)
	mov.w	r1,r4
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L486
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L486
	mov.w	r4,r4
	bpl	.L492
	mov.l	#1056964608,er5
	bra	.L491
.L492:
	mov.l	#1073741824,er5
.L491:
	btst	#0,r4l
	beq	.L489
	mov.l	er5,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L489:
	mov.w	r4,r2
	mov.w	r2,r2
	bpl	.L490
	inc #1,r2
.L490:
	shar.w	r2
	mov.w	r2,r4
	mov.w	r4,r4
	beq	.L486
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L491
.L486:
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
	mov.l	er0,er5
	mov.l	er5,@(-12,er6)
	mov.w	r1,r4
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L495
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L495
	mov.w	r4,r4
	bpl	.L501
	mov.l	#1056964608,er5
	bra	.L500
.L501:
	mov.l	#1073741824,er5
.L500:
	btst	#0,r4l
	beq	.L498
	mov.l	er5,er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
.L498:
	mov.w	r4,r2
	mov.w	r2,r2
	bpl	.L499
	inc #1,r2
.L499:
	shar.w	r2
	mov.w	r2,r4
	mov.w	r4,r4
	beq	.L495
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L500
.L495:
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
	bra	.L504
.L505:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L504:
	cmp.l	er2,er3
	bne	.L505
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
	bra	.L507
.L509:
	adds	#1,er5
	adds	#1,er0
	subs	#1,er4
.L507:
	mov.l	er4,er4
	beq	.L508
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L509
.L508:
	mov.l	er4,er4
	bne	.L510
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L510:
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
	bra	.L512
.L514:
	adds	#1,er0
.L512:
	cmp.l	er1,er0
	beq	.L513
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	mov.b	r3l,r3l
	bne	.L514
.L513:
	mov.l	@er7+,er6
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	bra	.L516
.L518:
	mov.b	@er2+,r3l
	mov.b	@er0,r4l
	cmp.b	r4l,r3l
	beq	.L517
.L519:
	mov.b	@er2,r3l
	mov.b	r3l,r3l
	bne	.L518
	adds	#1,er0
.L516:
	mov.b	@er0,r2l
	mov.b	r2l,r2l
	beq	.L521
	mov.l	er1,er2
	bra	.L519
.L521:
	sub.l	er0,er0
.L517:
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L524:
	mov.l	er2,er3
	mov.b	@er2,r4l
	extu.w	r4
	cmp.w	r4,r1
	bne	.L523
	mov.l	er3,er0
.L523:
	mov.b	@er2+,r3l
	mov.b	r3l,r3l
	bne	.L524
	mov.l	@er7+,er4
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
	mov.l	er5,er0
	jsr	@_strlen
	mov.l	er0,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,er2
	beq	.L527
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,@(-10,er6)
	bra	.L528
.L529:
	mov.l	@(-16,er6),er2
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L527
	adds	#1,er4
.L528:
	mov.w	@(-10,er6),r1
	mov.l	er4,er0
	jsr	@_strchr
	mov.l	er0,er4
	mov.l	er4,er4
	bne	.L529
.L527:
	mov.l	er4,er0
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
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L533
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L535
.L533:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L536
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L536
.L535:
	xor.w	#32768,e4
.L536:
	mov.l	er4,er0
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
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er2,er5
	mov.l	er1,er2
	mov.l	@(8,er6),er3
	sub.l	er3,er2
	add.l	er4,er2
	mov.l	er2,@(-12,er6)
	mov.l	er3,er2
	mov.l	er2,er2
	beq	.L551
	sub.l	er2,er2
	add.b	#1,r2l
	cmp.l	er3,er1
	blo	.L547
	sub.l	er2,er2
.L547:
	mov.l	er2,er2
	bne	.L552
	bra	.L548
.L550:
	mov.b	@er4,r2l
	mov.b	@er5,r3l
	cmp.b	r3l,r2l
	bne	.L549
	mov.l	@(8,er6),er2
	subs	#1,er2
	mov.l	er5,er1
	adds	#1,er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L553
.L549:
	adds	#1,er4
.L548:
	mov.l	@(-12,er6),er2
	cmp.l	er2,er4
	bls	.L550
	sub.l	er0,er0
	bra	.L546
.L551:
	mov.l	er4,er0
	bra	.L546
.L552:
	sub.l	er0,er0
	bra	.L546
.L553:
	mov.l	er4,er0
.L546:
	adds	#4,er7
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
	mov.l	er4,er2
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
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L572
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(-10,er6)
	bra	.L556
.L572:
	sub.w	r2,r2
	mov.w	r2,@(-10,er6)
.L556:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L567
	bra	.L573
.L560:
	inc #1,r5
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L558
.L567:
	sub.w	r5,r5
.L558:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L560
	bra	.L561
.L573:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L574
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L569
	sub.w	r5,r5
	bra	.L561
.L564:
	dec #1,r5
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	bra	.L563
.L569:
	sub.w	r5,r5
.L563:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L564
	bra	.L561
.L574:
	sub.w	r5,r5
.L561:
	mov.l	@(-16,er6),er2
	mov.w	r5,@er2
	mov.w	@(-10,er6),r2
	mov.w	r2,r2
	beq	.L565
	xor.w	#32768,e4
.L565:
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
	sub.l	#36,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	@(8,er6),er2
	mov.l	er2,@(-24,er6)
	mov.l	@(12,er6),er2
	mov.l	er2,@(-20,er6)
	mov.l	er4,er0
	mov.l	er5,er1
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	er0,er4
	mov.l	er1,er5
	bra	.L576:16
.L581:
	sub.l	er2,er2
	mov.l	er2,@(-40,er6)
	mov.l	er5,er2
	and.l	#1,er2
	mov.l	er2,@(-36,er6)
	sub.l	er0,er0
	or.l	er2,er0
	mov.l	er0,er0
	beq	.L577
	mov.l	@(-12,er6),er2
	mov.l	@(-20,er6),er3
	add.l	er3,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(-44,er6)
	mov.l	@(-12,er6),er2
	cmp.l	er2,er1
	blo	.L579
	sub.l	er2,er2
	mov.l	er2,@(-44,er6)
.L579:
	mov.l	@(-16,er6),er2
	mov.l	@(-24,er6),er3
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(-44,er6),er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er2,@(-16,er6)
	mov.l	er1,@(-12,er6)
.L577:
	mov.l	@(-20,er6),er2
	shll.l	er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	cmp.l	er2,er1
	blo	.L580
	sub.l	er2,er2
	mov.l	er2,er3
.L580:
	mov.l	@(-24,er6),er2
	shll.l	er2
	mov.l	er2,er0
	mov.l	er3,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er2,@(-24,er6)
	mov.l	er1,@(-20,er6)
	mov.l	er5,@(-28,er6)
	mov.l	er5,er2
	shlr.l	er2
	mov.l	er2,@(-28,er6)
	rotxl.l	er2
	bor	#0,r4l
	rotxr.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	er4,@(-32,er6)
	mov.l	er4,er2
	shlr.l	er2
	mov.l	er2,@(-32,er6)
	mov.l	er2,er4
	mov.l	@(-28,er6),er5
.L576:
	mov.l	er4,er0
	or.l	er5,er0
	mov.l	er0,er0
	bne	.L581:16
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	add.l	#36,er7
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
	bra	.L583
.L585:
	shll.l	er1
	shll.l	er3
.L583:
	cmp.l	er0,er1
	bhs	.L590
	dec #1,r4
	mov.w	r4,r4
	beq	.L591
	mov.l	er1,er1
	bpl	.L585
	sub.l	er4,er4
	bra	.L587
.L588:
	cmp.l	er1,er0
	blo	.L586
	sub.l	er1,er0
	or.l	er3,er4
.L586:
	shlr.l	er3
	shlr.l	er1
	bra	.L587
.L590:
	sub.l	er4,er4
	bra	.L587
.L591:
	sub.l	er4,er4
.L587:
	mov.l	er3,er3
	bne	.L588
	mov.l	er2,er2
	bne	.L589
	mov.l	er4,er0
.L589:
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
	beq	.L595
	mov.b	r0l,r2l
	extu.w	r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,r0
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	bra	.L594
.L595:
	mov.w	#7,r0
.L594:
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
	mov.l	er2,er2
	bpl	.L597
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er2,er4
	not.l	er4
	mov.l	er4,er0
	mov.l	er3,er2
	not.l	er2
	mov.l	er2,er1
	mov.l	er0,er2
	mov.l	er1,er3
.L597:
	mov.l	er2,er0
	or.l	er3,er0
	mov.l	er0,er0
	beq	.L601
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L599
.L601:
	mov.w	#63,r0
.L599:
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
	bra	.L603
.L605:
	btst	#0,r2l
	beq	.L604
	add.w	r1,r0
.L604:
	shlr.w	r2
	shll.w	r1
.L603:
	mov.w	r2,r2
	bne	.L605
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
	mov.l	er4,@(-12,er6)
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r3,r0
	mov.w	r2,r3
	and	#248,r3l
	mov.w	r3,@(-14,er6)
	cmp.l	er1,er4
	bhs	.L607
.L609:
	mov.l	er1,er3
	mov.l	@(-12,er6),er4
	extu.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.l	er0,er5
	add.l	er1,er5
	mov.l	er1,@(-20,er6)
	bra	.L608
.L607:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	mov.l	@(-12,er6),er4
	cmp.l	er3,er4
	bhi	.L609
	bra	.L610
.L611:
	mov.l	@er3,er0
	mov.l	@(4,er3),er1
	mov.l	er0,@er4
	mov.l	er1,@(4,er4)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er4
	adds	#4,er4
.L608:
	cmp.l	er5,er3
	bne	.L611
	mov.l	@(-20,er6),er1
	mov.w	@(-14,er6),r3
	extu.l	er3
	bra	.L612
.L613:
	mov.l	er1,er0
	add.l	er3,er0
	mov.b	@er0,r4l
	mov.l	@(-12,er6),er0
	add.l	er3,er0
	mov.b	r4l,@er0
	adds	#1,er3
.L612:
	cmp.w	r3,r2
	bhi	.L613
	bra	.L606
.L615:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er0
	add.l	er3,er0
	mov.b	@er0,r0l
	mov.l	@(-12,er6),er4
	add.l	er4,er3
	mov.b	r0l,@er3
.L610:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L615
.L606:
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
	sub.l	#8,er7
	mov.w	r2,r3
	shlr.w	r3
	cmp.l	er1,er0
	bhs	.L617
.L619:
	mov.l	er1,er4
	mov.l	er0,@(-12,er6)
	extu.l	er3
	shll.l	er3
	mov.l	er3,er5
	add.l	er1,er5
	mov.w	r2,@(-14,er6)
	bra	.L618
.L617:
	mov.w	r2,r4
	extu.l	er4
	add.l	er1,er4
	cmp.l	er4,er0
	bhi	.L619
	bra	.L620
.L621:
	mov.w	@er4+,r3
	mov.l	@(-12,er6),er2
	mov.w	r3,@er2
	adds	#2,er2
	mov.l	er2,@(-12,er6)
.L618:
	cmp.l	er5,er4
	bne	.L621
	mov.w	@(-14,er6),r2
	btst	#0,r2l
	beq	.L616
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er2,er0
	mov.b	r3l,@er0
	bra	.L616
.L623:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r4l
	add.l	er0,er3
	mov.b	r4l,@er3
.L620:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L623
.L616:
	add.l	#8,er7
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
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r2,r4
	and	#252,r4l
	mov.w	r4,@(-14,er6)
	cmp.l	er1,er0
	bhs	.L625
.L627:
	mov.l	er1,er4
	mov.l	er0,@(-12,er6)
	extu.l	er3
	shll.l	er3
	mov.l	er3,er5
	add.l	er1,er5
	mov.l	er5,er3
	mov.w	r2,@(-16,er6)
	bra	.L626
.L625:
	mov.w	r2,r4
	extu.l	er4
	add.l	er1,er4
	cmp.l	er4,er0
	bhi	.L627
	bra	.L628
.L629:
	mov.w	@er4+,r5
	mov.l	@(-12,er6),er2
	mov.w	r5,@er2
	adds	#2,er2
	mov.l	er2,@(-12,er6)
.L626:
	cmp.l	er3,er4
	bne	.L629
	mov.w	@(-16,er6),r2
	mov.w	@(-14,er6),r3
	extu.l	er3
	bra	.L630
.L631:
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r5l
	mov.l	er0,er4
	add.l	er3,er4
	mov.b	r5l,@er4
	adds	#1,er3
.L630:
	cmp.w	r3,r2
	bhi	.L631
	bra	.L624
.L633:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r4l
	add.l	er0,er3
	mov.b	r4l,@er3
.L628:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L633
.L624:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___floatundisf
	mov.l	@er7+,er6
	rts
	.size	___ulltod, .-___ulltod
	.align 1
	.global ___ulltof
___ulltof:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
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
	mov.w	r0,r3
	sub.w	r0,r0
	bra	.L641
.L643:
	mov.w	#-32768,r1
	mov.w	r1,r2
	mov.b	r0l,r1l
	ble	.L645
.L644:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L644
.L645:
	and.w	r3,r2
	mov.w	r2,r2
	bne	.L642
	inc #1,r0
.L641:
	cmp.w	#16,r0
	bne	.L643
.L642:
	mov.l	@er7+,er6
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.w	r0,r2
	sub.w	r0,r0
	bra	.L647
.L649:
	mov.w	r2,r3
	mov.b	r0l,r1l
	ble	.L651
.L650:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L650
.L651:
	btst	#0,r3l
	bne	.L648
	inc #1,r0
.L647:
	cmp.w	#16,r0
	bne	.L649
.L648:
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
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L657
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L655
.L657:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L655:
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
	sub.w	r2,r2
	sub.w	r3,r3
	bra	.L659
.L661:
	mov.w	r0,r1
	mov.b	r3l,r4l
	ble	.L663
.L662:
	shlr.w	r1
	add.b	#-1,r4l
	bne	.L662
.L663:
	btst	#0,r1l
	beq	.L660
	inc #1,r2
.L660:
	inc #1,r3
.L659:
	cmp.w	#16,r3
	bne	.L661
	and.w	#1,r2
	mov.w	r2,r0
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
	mov.w	r0,r3
	sub.w	r0,r0
	sub.w	r2,r2
	bra	.L665
.L667:
	mov.w	r3,r1
	mov.b	r2l,r4l
	ble	.L669
.L668:
	shlr.w	r1
	add.b	#-1,r4l
	bne	.L668
.L669:
	btst	#0,r1l
	beq	.L666
	inc #1,r0
.L666:
	inc #1,r2
.L665:
	cmp.w	#16,r2
	bne	.L667
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
	bra	.L671
.L673:
	btst	#0,r2l
	beq	.L672
	add.l	er1,er0
.L672:
	shlr.l	er2
	shll.l	er1
.L671:
	mov.l	er2,er2
	bne	.L673
	mov.l	@er7+,er6
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er0
	beq	.L679
	sub.l	er2,er2
	bra	.L676
.L678:
	btst	#0,r1l
	beq	.L677
	add.l	er0,er2
.L677:
	shll.l	er0
	shlr.l	er1
.L676:
	mov.l	er1,er1
	bne	.L678
	mov.l	er2,er0
	bra	.L675
.L679:
	sub.l	er0,er0
.L675:
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
	bra	.L681
.L683:
	shll.l	er1
	shll.l	er3
.L681:
	cmp.l	er0,er1
	bhs	.L688
	dec #1,r4
	mov.w	r4,r4
	beq	.L689
	mov.l	er1,er1
	bpl	.L683
	sub.l	er4,er4
	bra	.L685
.L686:
	cmp.l	er1,er0
	blo	.L684
	sub.l	er1,er0
	or.l	er3,er4
.L684:
	shlr.l	er3
	shlr.l	er1
	bra	.L685
.L688:
	sub.l	er4,er4
	bra	.L685
.L689:
	sub.l	er4,er4
.L685:
	mov.l	er3,er3
	bne	.L686
	mov.w	r2,r2
	bne	.L687
	mov.l	er4,er0
.L687:
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
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L693
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L694
	sub.w	r0,r0
	bra	.L692
.L693:
	mov.w	#-1,r0
	bra	.L692
.L694:
	mov.w	#1,r0
.L692:
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
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L697
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L698
	sub.w	r0,r0
	bra	.L696
.L697:
	mov.w	#-1,r0
	bra	.L696
.L698:
	mov.w	#1,r0
.L696:
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
	sub.l	#8,er7
	mov.l	er0,er4
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	mov.l	er2,@(-12,er6)
	mov.l	er4,@(-12,er6)
	mov.l	er4,er0
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@(-16,er6)
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er1,er5
	mov.l	er1,er2
	shll	e2
	subx	r2l,r2l
	exts.w	r2
	exts.l	er2
	mov.l	er2,er4
	subs	#4,er7
	subs	#4,er7
	mov.l	er2,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(-12,er6),er1
	jsr	@___muldi3
	adds	#4,er7
	adds	#4,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#8,er7
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
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er0,er5
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er1,er3
	subs	#4,er7
	subs	#4,er7
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	sub.l	er0,er0
	mov.l	er5,er1
	jsr	@___muldi3
	adds	#4,er7
	adds	#4,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
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
	mov.w	r0,r2
	mov.w	r1,r1
	bpl	.L708
	neg.w	r1
	mov.w	#1,r4
	bra	.L702
.L708:
	sub.w	r4,r4
.L702:
	mov.b	#17,r3l
	sub.w	r0,r0
	bra	.L703
.L706:
	btst	#0,r1l
	beq	.L704
	add.w	r2,r0
.L704:
	shll.w	r2
	shar.w	r1
.L703:
	mov.w	r1,r1
	beq	.L705
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L706
.L705:
	mov.w	r4,r4
	beq	.L707
	neg.w	r0
.L707:
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
	bpl	.L715
	neg.l	er0
	mov.w	#1,r4
	bra	.L711
.L715:
	sub.w	r4,r4
.L711:
	mov.l	er1,er1
	bpl	.L712
	neg.l	er1
	mov.b	#1,r2l
	mov.w	r4,r4
	beq	.L713
	sub.b	r2l,r2l
.L713:
	mov.b	r2l,r4l
	extu.w	r4
.L712:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L714
	neg.l	er0
.L714:
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
	bpl	.L720
	neg.l	er0
	mov.w	#1,r4
	bra	.L717
.L720:
	sub.w	r4,r4
.L717:
	mov.l	er1,er1
	bpl	.L718
	neg.l	er1
.L718:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L719
	neg.l	er0
.L719:
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
	bra	.L722
.L724:
	shll.w	r1
	shll.w	r3
.L722:
	cmp.w	r0,r1
	bhs	.L729
	dec #1,r4
	mov.w	r4,r4
	beq	.L730
	mov.w	r1,r1
	bpl	.L724
	sub.w	r4,r4
	bra	.L726
.L727:
	cmp.w	r1,r0
	blo	.L725
	sub.w	r1,r0
	or.w	r3,r4
.L725:
	shlr.w	r3
	shlr.w	r1
	bra	.L726
.L729:
	sub.w	r4,r4
	bra	.L726
.L730:
	sub.w	r4,r4
.L726:
	mov.w	r3,r3
	bne	.L727
	mov.w	r2,r2
	bne	.L728
	mov.w	r4,r0
.L728:
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
	bra	.L733
.L735:
	shll.l	er1
	shll.l	er3
.L733:
	cmp.l	er0,er1
	bhs	.L740
	dec #1,r4
	mov.w	r4,r4
	beq	.L741
	mov.l	er1,er1
	bpl	.L735
	sub.l	er4,er4
	bra	.L737
.L738:
	cmp.l	er1,er0
	blo	.L736
	sub.l	er1,er0
	or.l	er3,er4
.L736:
	shlr.l	er3
	shlr.l	er1
	bra	.L737
.L740:
	sub.l	er4,er4
	bra	.L737
.L741:
	sub.l	er4,er4
.L737:
	mov.l	er3,er3
	bne	.L738
	mov.w	r2,r2
	bne	.L739
	mov.l	er4,er0
.L739:
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
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,@(-16,er6)
	mov.l	er5,@(-12,er6)
	btst	#5,r2l
	beq	.L744
	sub.l	er3,er3
	mov.l	er3,@(-20,er6)
	add.w	#-32,r2
	mov.l	er5,er0
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L749
.L748:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L748
.L749:
	mov.l	er3,@(-24,er6)
	bra	.L745
.L744:
	mov.w	r2,r2
	beq	.L747
	mov.l	@(-12,er6),er0
	mov.l	er0,er3
	mov.b	r2l,r1l
	ble	.L751
.L750:
	shll.l	er3
	add.b	#-1,r1l
	bne	.L750
.L751:
	mov.l	er3,@(-20,er6)
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er0,er3
	mov.b	r1l,r0l
	ble	.L753
.L752:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L752
.L753:
	mov.l	@(-16,er6),er1
	mov.l	er1,er0
	mov.b	r2l,r1l
	ble	.L755
.L754:
	shll.l	er0
	add.b	#-1,r1l
	bne	.L754
.L755:
	or.l	er0,er3
	mov.l	er3,@(-24,er6)
.L745:
	mov.l	@(-24,er6),er2
	mov.l	@(-20,er6),er3
	bra	.L746
.L747:
	mov.l	er4,er2
	mov.l	er5,er3
.L746:
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
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,@(-16,er6)
	mov.l	er5,@(-12,er6)
	btst	#5,r2l
	beq	.L757
	mov.l	er4,er3
	mov.l	er3,er0
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@(-24,er6)
	add.w	#-32,r2
	mov.b	r2l,r0l
	ble	.L762
.L761:
	shar.l	er3
	add.b	#-1,r0l
	bne	.L761
.L762:
	mov.l	er3,er0
	mov.l	er0,@(-20,er6)
	bra	.L758
.L757:
	mov.w	r2,r2
	beq	.L760
	mov.l	@(-16,er6),er0
	mov.l	er0,er3
	mov.b	r2l,r1l
	ble	.L764
.L763:
	shar.l	er3
	add.b	#-1,r1l
	bne	.L763
.L764:
	mov.l	er3,@(-24,er6)
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er0,er3
	mov.b	r1l,r0l
	ble	.L766
.L765:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L765
.L766:
	mov.l	@(-12,er6),er1
	mov.l	er1,er0
	mov.b	r2l,r1l
	ble	.L768
.L767:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L767
.L768:
	or.l	er0,er3
	mov.l	er3,@(-20,er6)
.L758:
	mov.l	@(-24,er6),er2
	mov.l	@(-20,er6),er3
	bra	.L759
.L760:
	mov.l	er4,er2
	mov.l	er5,er3
.L759:
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
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(-12,er6),er0
	mov.l	er0,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er0
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-16,er6),er3
	mov.l	er3,er4
	mov.w	e4,r4
	mov.b	r4h,r4l
	extu.w	r4
	extu.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er0,er4
	mov.l	er3,er5
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-16,er6),er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er3,er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,er1
	sub.l	er2,er2
	mov.l	er2,@(-24,er6)
	mov.l	er2,@(-20,er6)
	mov.l	er4,er2
	or.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.l	er5,er2
	or.l	er1,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-16,er6),er0
	mov.w	e0,r2
	mov.b	r2l,r2h
	mov.b	r0h,r2l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r2,e0
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-12,er6),er3
	mov.l	er3,er1
	mov.w	e1,r1
	mov.b	r1h,r1l
	extu.w	r1
	extu.l	er1
	mov.l	er1,er3
	or.l	er0,er3
	mov.l	@(-16,er6),er2
	mov.l	er2,er0
	mov.l	er5,er0
	mov.l	er0,er2
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er3,er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er1
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	@(-24,er6),er2
	or.l	er0,er2
	mov.l	er2,er4
	mov.l	@(-20,er6),er2
	or.l	er1,er2
	mov.l	er2,er5
	mov.l	@(-16,er6),er0
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r0,e0
	sub.w	r0,r0
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-12,er6),er3
	mov.w	e3,r1
	mov.b	r3h,r3l
	mov.b	r1l,r3h
	mov.b	r1h,r1l
	extu.w	r1
	mov.w	r1,e3
	or.l	er0,er3
	mov.l	@(-16,er6),er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er3,er2
	and.l	#-16777216,er2
	mov.l	er2,er1
	sub.l	er2,er2
	mov.l	er2,@(-32,er6)
	mov.l	er2,@(-28,er6)
	mov.l	er4,er2
	or.l	er0,er2
	mov.l	er2,@(-32,er6)
	mov.l	er5,er2
	or.l	er1,er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-12,er6),er0
	shll.l	er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(-12,er6),er1
	cmp.l	er1,er3
	blo	.L770
	sub.l	er0,er0
.L770:
	mov.l	@(-16,er6),er1
	shll.l	er1
	mov.l	er1,er2
	add.l	er0,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L771
	sub.l	er4,er4
.L771:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L772
	sub.l	er4,er4
.L772:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L773
	sub.l	er4,er4
.L773:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L774
	sub.l	er4,er4
.L774:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L775
	sub.l	er4,er4
.L775:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L776
	sub.l	er4,er4
.L776:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L777
	sub.l	er4,er4
.L777:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	sub.l	er2,er2
	sub.l	er3,er3
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er0,@(-24,er6)
	mov.l	er0,@(-20,er6)
	mov.l	@(-32,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er0
	shll.l	er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(-12,er6),er1
	cmp.l	er1,er3
	blo	.L778
	sub.l	er0,er0
.L778:
	mov.l	@(-16,er6),er1
	shll.l	er1
	mov.l	er1,er2
	add.l	er0,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L779
	sub.l	er4,er4
.L779:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L780
	sub.l	er4,er4
.L780:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L781
	sub.l	er4,er4
.L781:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L782
	sub.l	er4,er4
.L782:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L783
	sub.l	er4,er4
.L783:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L784
	sub.l	er4,er4
.L784:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L785
	sub.l	er4,er4
.L785:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L786
	sub.l	er4,er4
.L786:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L787
	sub.l	er4,er4
.L787:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L788
	sub.l	er4,er4
.L788:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L789
	sub.l	er4,er4
.L789:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L790
	sub.l	er4,er4
.L790:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L791
	sub.l	er4,er4
.L791:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L792
	sub.l	er4,er4
.L792:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L793
	sub.l	er4,er4
.L793:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L794
	sub.l	er4,er4
.L794:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L795
	sub.l	er4,er4
.L795:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L796
	sub.l	er4,er4
.L796:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L797
	sub.l	er4,er4
.L797:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L798
	sub.l	er4,er4
.L798:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L799
	sub.l	er4,er4
.L799:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	mov.l	er1,er4
	shll.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L800
	sub.l	er4,er4
.L800:
	shll.l	er0
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er3,er4
	shll.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L801
	sub.l	er4,er4
.L801:
	shll.l	er2
	mov.l	er2,er0
	add.l	er4,er0
	sub.l	er2,er2
	sub.l	er3,er3
	and	#0,r0l
	sub.w	e0,e0
	mov.l	er0,er2
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	@(-24,er6),er3
	or.l	er3,er2
	mov.l	er2,er4
	mov.l	@(-20,er6),er5
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-12,er6),er2
	mov.w	e2,r0
	mov.b	r0l,r0h
	mov.b	r2h,r0l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r0,e2
	sub.l	er0,er0
	sub.l	er1,er1
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er0
	sub.l	er2,er2
	sub.l	er3,er3
	or.l	er4,er0
	mov.l	er0,er2
	mov.l	er5,er3
	mov.l	er2,er0
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
	mov.l	er2,er0
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
	mov.l	er2,er3
	sub.w	r3,r3
	extu.w	e3
	or.l	er3,er0
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
	cmp.l	#65535,er2
	bhi	.L808
	sub.l	er1,er1
	add.b	#16,r1l
	bra	.L804
.L808:
	sub.l	er1,er1
.L804:
	mov.w	#16,r3
	sub.w	r1,r3
	mov.b	r3l,r0l
	ble	.L813
.L812:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L812
.L813:
	mov.l	er2,er3
	and	#0,r3l
	sub.w	e3,e3
	mov.l	er3,er3
	bne	.L809
	sub.l	er3,er3
	add.b	#8,r3l
	bra	.L805
.L809:
	sub.l	er3,er3
.L805:
	mov.w	#8,r0
	sub.w	r3,r0
	mov.b	r0l,r4l
	ble	.L815
.L814:
	shlr.l	er2
	add.b	#-1,r4l
	bne	.L814
.L815:
	add.l	er3,er1
	mov.l	er2,er3
	and.l	#240,er3
	mov.l	er3,er3
	bne	.L810
	sub.l	er3,er3
	add.b	#4,r3l
	bra	.L806
.L810:
	sub.l	er3,er3
.L806:
	mov.w	#4,r0
	sub.w	r3,r0
	mov.b	r0l,r4l
	ble	.L817
.L816:
	shlr.l	er2
	add.b	#-1,r4l
	bne	.L816
.L817:
	add.l	er3,er1
	mov.l	er2,er3
	and.l	#12,er3
	mov.l	er3,er3
	bne	.L811
	sub.l	er4,er4
	add.b	#2,r4l
	bra	.L807
.L811:
	sub.l	er4,er4
.L807:
	mov.w	#2,r3
	sub.w	r4,r3
	mov.b	r3l,r0l
	ble	.L819
.L818:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L818
.L819:
	mov.l	er2,er3
	shlr.l	er3
	mov.w	r3,r0
	and.w	#1,r0
	xor	#1,r0l
	sub.l	er3,er3
	add.b	#2,r3l
	sub.l	er2,er3
	mulxu.w	r3,er0
	add.l	er1,er4
	add.w	r4,r0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___clzsi2, .-___clzsi2
	.align 1
	.global ___cmpdi2
___cmpdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(8,er6),er0
	mov.l	@(12,er6),er1
	mov.l	er2,@(-8,er6)
	mov.l	er3,@(-4,er6)
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	er0,er3
	cmp.l	er3,er2
	blt	.L822
	cmp.l	er3,er2
	bgt	.L823
	mov.l	@(-4,er6),er2
	mov.l	er1,er3
	cmp.l	er3,er2
	blo	.L824
	cmp.l	er3,er2
	bhi	.L825
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L821
.L822:
	sub.l	er0,er0
	bra	.L821
.L823:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L821
.L824:
	sub.l	er0,er0
	bra	.L821
.L825:
	sub.l	er0,er0
	add.b	#2,r0l
.L821:
	add.l	#16,er7
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
	subs	#4,er7
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___cmpdi2
	adds	#4,er7
	adds	#4,er7
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
	mov.w	r0,r0
	bne	.L832
	sub.l	er2,er2
	add.b	#16,r2l
	bra	.L828
.L832:
	sub.l	er2,er2
.L828:
	mov.b	r2l,r3l
	ble	.L837
.L836:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L836
.L837:
	mov.b	r0l,r0l
	bne	.L833
	sub.l	er3,er3
	add.b	#8,r3l
	bra	.L829
.L833:
	sub.l	er3,er3
.L829:
	mov.b	r3l,r1l
	ble	.L839
.L838:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L838
.L839:
	add.l	er3,er2
	mov.l	er0,er3
	and.l	#15,er3
	mov.l	er3,er3
	bne	.L834
	sub.l	er3,er3
	add.b	#4,r3l
	bra	.L830
.L834:
	sub.l	er3,er3
.L830:
	mov.b	r3l,r1l
	ble	.L841
.L840:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L840
.L841:
	add.l	er3,er2
	mov.l	er0,er3
	and.l	#3,er3
	mov.l	er3,er3
	bne	.L835
	sub.l	er3,er3
	add.b	#2,r3l
	bra	.L831
.L835:
	sub.l	er3,er3
.L831:
	mov.b	r3l,r1l
	ble	.L843
.L842:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L842
.L843:
	and.l	#3,er0
	mov.l	er0,er4
	shlr.l	er4
	sub.l	er1,er1
	add.b	#2,r1l
	sub.l	er4,er1
	not.l	er0
	and.w	#1,r0
	neg.w	r0
	and.w	r1,r0
	add.l	er2,er3
	add.w	r3,r0
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
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,@(-16,er6)
	mov.l	er5,@(-12,er6)
	btst	#5,r2l
	beq	.L845
	sub.l	er3,er3
	mov.l	er3,@(-24,er6)
	add.w	#-32,r2
	mov.l	er4,er0
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L850
.L849:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L849
.L850:
	mov.l	er3,@(-20,er6)
	bra	.L846
.L845:
	mov.w	r2,r2
	beq	.L848
	mov.l	@(-16,er6),er0
	mov.l	er0,er3
	mov.b	r2l,r1l
	ble	.L852
.L851:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L851
.L852:
	mov.l	er3,@(-24,er6)
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er0,er3
	mov.b	r1l,r0l
	ble	.L854
.L853:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L853
.L854:
	mov.l	@(-12,er6),er1
	mov.l	er1,er0
	mov.b	r2l,r1l
	ble	.L856
.L855:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L855
.L856:
	or.l	er0,er3
	mov.l	er3,@(-20,er6)
.L846:
	mov.l	@(-24,er6),er2
	mov.l	@(-20,er6),er3
	bra	.L847
.L848:
	mov.l	er4,er2
	mov.l	er5,er3
.L847:
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
	sub.l	#24,er7
	mov.l	er0,@(-20,er6)
	mov.l	er0,er2
	sub.w	e2,e2
	mov.l	er1,@(-24,er6)
	mov.l	er1,er3
	sub.w	e3,e3
	mov.l	er3,@(-32,er6)
	mov.l	er3,er1
	mov.l	er2,@(-28,er6)
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,@(-12,er6)
	mov.l	er0,er4
	mov.w	e4,r4
	extu.l	er4
	mov.l	er0,er5
	sub.w	e5,e5
	mov.l	er5,@(-12,er6)
	mov.l	@(-20,er6),er3
	mov.w	e3,r3
	extu.l	er3
	mov.l	@(-32,er6),er1
	mov.l	er3,@(-20,er6)
	mov.l	er3,er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	er4,er2
	mov.w	r2,e2
	sub.w	r2,r2
	add.l	er5,er2
	mov.l	er2,@(-12,er6)
	mov.w	e4,r4
	extu.l	er4
	mov.l	er4,@(-32,er6)
	mov.l	er4,@(-16,er6)
	mov.l	er2,er5
	mov.w	e5,r5
	extu.l	er5
	mov.l	er5,er4
	mov.l	er2,er5
	sub.w	e5,e5
	mov.l	er5,@(-12,er6)
	mov.l	@(-24,er6),er1
	mov.w	e1,r1
	extu.l	er1
	mov.l	er1,@(-24,er6)
	mov.l	@(-28,er6),er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	er4,er2
	mov.w	r2,e2
	sub.w	r2,r2
	add.l	er2,er5
	mov.l	er5,@(-12,er6)
	mov.l	er4,er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	@(-32,er6),er4
	add.l	er2,er4
	mov.l	er4,@(-16,er6)
	mov.l	@(-24,er6),er1
	mov.l	@(-20,er6),er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	er4,@(-16,er6)
	mov.l	er4,er2
	mov.l	er5,er3
	mov.l	er2,er0
	mov.l	er5,er1
	add.l	#24,er7
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
	sub.l	#32,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(8,er6),er0
	mov.l	@(12,er6),er1
	mov.l	er2,@(-16,er6)
	mov.l	er3,@(-12,er6)
	mov.l	er0,@(-24,er6)
	mov.l	er1,@(-20,er6)
	mov.l	er3,er0
	jsr	@___muldsi3
	mov.l	er0,@(-40,er6)
	mov.l	er1,@(-36,er6)
	mov.l	er0,er2
	mov.l	er2,@(-32,er6)
	mov.l	er1,er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er1
	mov.l	@(-16,er6),er0
	jsr	@___mulsi3
	mov.l	er0,er4
	mov.l	@(-12,er6),er1
	mov.l	@(-24,er6),er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	@(-32,er6),er2
	add.l	er2,er4
	mov.l	er4,@(-32,er6)
	mov.l	er4,er2
	mov.l	@(-36,er6),er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#32,er7
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
	mov.l	er1,@(-12,er6)
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er1,er0
	neg.l	er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er5,er5
	bne	.L860
	sub.l	er0,er0
.L860:
	mov.l	@(-16,er6),er3
	sub.l	er3,er2
	mov.l	er2,er4
	mov.l	er4,er1
	sub.l	er0,er1
	mov.l	er1,er4
	mov.l	er1,er2
	mov.l	er5,er3
	mov.l	er2,er0
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
	sub.l	#8,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,@(-8,er6)
	mov.l	er3,@(-4,er6)
	mov.l	er3,er2
	mov.l	er0,er3
	xor.l	er3,er2
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
	xor.l	er2,er3
	and.w	#15,r3
	mov.w	#27030,r2
	mov.b	r3l,r0l
	ble	.L863
.L862:
	shar.w	r2
	add.b	#-1,r0l
	bne	.L862
.L863:
	mov.w	r2,r0
	and.w	#1,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___paritydi2, .-___paritydi2
	.align 1
	.global ___paritysi2
___paritysi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er0,er2
	xor.w	e0,r2
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
	xor.l	er2,er3
	and.w	#15,r3
	mov.w	#27030,r2
	mov.b	r3l,r0l
	ble	.L866
.L865:
	shar.w	r2
	add.b	#-1,r0l
	bne	.L865
.L866:
	mov.w	r2,r0
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,@(-16,er6)
	mov.l	er3,@(-12,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er3,er1
	mov.l	er1,er2
	shlr.l	er2
	mov.l	er2,er1
	mov.l	@(-16,er6),er2
	rotxl.l	er1
	bor	#0,r2l
	rotxr.l	er1
	mov.l	er2,er0
	mov.l	er0,er2
	shlr.l	er2
	mov.l	er2,er0
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er0,er4
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
	bhi	.L868
	sub.l	er0,er0
.L868:
	mov.l	@(-16,er6),er1
	sub.l	er2,er1
	mov.l	er1,er4
	mov.l	er4,er2
	sub.l	er0,er2
	mov.l	er2,er4
	mov.l	er2,@(-16,er6)
	mov.l	er5,@(-12,er6)
	mov.l	er4,er0
	sub.w	e0,e0
	rotr.l	er0
	rotr.l	er0
	sub.w	r0,r0
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er5,er3
	mov.l	er3,er1
	shlr.l	er1
	shlr.l	er1
	mov.l	er1,er3
	or.l	er0,er3
	mov.l	er4,er2
	mov.l	er2,er0
	shlr.l	er0
	shlr.l	er0
	mov.l	er0,er2
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er2,er4
	and.l	#858993459,er4
	mov.l	er4,er0
	mov.l	er3,er2
	and.l	#858993459,er2
	mov.l	er2,er1
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-16,er6),er4
	and.l	#858993459,er4
	mov.l	er4,er2
	mov.l	er5,er4
	and.l	#858993459,er4
	mov.l	er4,er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.l	er4,@(-20,er6)
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	@(-20,er6),er5
	cmp.l	er1,er5
	blo	.L869
	sub.l	er4,er4
.L869:
	add.l	er2,er0
	mov.l	er0,@(-24,er6)
	mov.l	er4,er2
	mov.l	er0,er3
	add.l	er3,er2
	mov.l	er2,@(-24,er6)
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
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-20,er6),er3
	mov.l	er3,er1
	shlr.l	er1
	shlr.l	er1
	shlr.l	er1
	shlr.l	er1
	mov.l	er1,er3
	or.l	er0,er3
	mov.l	@(-16,er6),er2
	mov.l	er2,er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	shlr.l	er0
	mov.l	er0,er2
	mov.l	er3,er0
	mov.l	@(-12,er6),er1
	add.l	er1,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L870
	sub.l	er0,er0
.L870:
	mov.l	@(-16,er6),er3
	add.l	er3,er2
	mov.l	er2,er4
	add.l	er4,er0
	mov.l	er0,er4
	mov.l	er0,er2
	mov.l	er5,er3
	and.l	#252645135,er0
	mov.l	er0,@(-16,er6)
	mov.l	er3,er2
	and.l	#252645135,er2
	mov.l	er2,@(-12,er6)
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	er0,er3
	mov.l	er3,er2
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
	shlr.l	er2
	and.l	#1431655765,er2
	mov.l	er2,er3
	mov.l	er0,er2
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
	add.l	er2,er3
	mov.l	er3,er2
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
	mov.l	er0,@(-12,er6)
	mov.w	r1,r4
	mov.w	r4,r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,@(-14,er6)
	mov.l	#1065353216,er5
.L876:
	btst	#0,r4l
	beq	.L873
	mov.l	@(-12,er6),er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L873:
	mov.w	r4,r4
	bpl	.L874
	inc #1,r4
.L874:
	shar.w	r4
	mov.w	r4,r4
	beq	.L875
	mov.l	@(-12,er6),er0
	mov.l	er0,er1
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
	bra	.L876
.L875:
	mov.w	@(-14,er6),r2
	mov.w	r2,r2
	beq	.L878
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L877
.L878:
	mov.l	er5,er0
.L877:
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
	mov.l	er0,@(-12,er6)
	mov.w	r1,r4
	mov.w	r4,r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,@(-14,er6)
	mov.l	#1065353216,er5
.L883:
	btst	#0,r4l
	beq	.L880
	mov.l	@(-12,er6),er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L880:
	mov.w	r4,r4
	bpl	.L881
	inc #1,r4
.L881:
	shar.w	r4
	mov.w	r4,r4
	beq	.L882
	mov.l	@(-12,er6),er0
	mov.l	er0,er1
	jsr	@___mulsf3
	mov.l	er0,@(-12,er6)
	bra	.L883
.L882:
	mov.w	@(-14,er6),r2
	mov.w	r2,r2
	beq	.L885
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L884
.L885:
	mov.l	er5,er0
.L884:
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
	sub.l	#16,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(8,er6),er0
	mov.l	@(12,er6),er1
	mov.l	er2,@(-8,er6)
	mov.l	er3,@(-4,er6)
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	er0,er3
	cmp.l	er3,er2
	blo	.L888
	cmp.l	er3,er2
	bhi	.L889
	mov.l	@(-4,er6),er2
	mov.l	er1,er3
	cmp.l	er3,er2
	blo	.L890
	cmp.l	er3,er2
	bhi	.L891
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L887
.L888:
	sub.l	er0,er0
	bra	.L887
.L889:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L887
.L890:
	sub.l	er0,er0
	bra	.L887
.L891:
	sub.l	er0,er0
	add.b	#2,r0l
.L887:
	add.l	#16,er7
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
	subs	#4,er7
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___ucmpdi2
	adds	#4,er7
	adds	#4,er7
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
