	.file	"mini-libc.c"
	.h8300h
	.section .text
	.align 1
	.global _memmove
_memmove:
	mov.l	er4,@-er7
	cmp.l	er1,er0
	bls	.L2
	add.l	er2,er1
	mov.l	er0,er3
	add.l	er2,er3
	mov.l	er2,er2
	beq	.L3
.L4:
	subs	#1,er1
	mov.b	@er1,r2l
	subs	#1,er3
	mov.b	r2l,@er3
	cmp.l	er3,er0
	bne	.L4
	bra	.L3
.L2:
	beq	.L3
	mov.l	er2,er2
	beq	.L3
	mov.l	er0,er3
	add.l	er0,er2
.L5:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er2,er3
	bne	.L5
.L3:
	mov.l	@er7+,er4
	rts
	.size	_memmove, .-_memmove
	.align 1
	.global _memccpy
_memccpy:
	mov.l	er4,@-er7
	mov.l	@(8,er7),er4
	extu.w	r2
	mov.l	er4,er4
	bne	.L10
	bra	.L11
.L12:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L11
.L10:
	mov.b	@er1,r3l
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
	bne	.L12
.L11:
	mov.l	er4,er4
	beq	.L14
	adds	#1,er0
	bra	.L9
.L14:
	sub.l	er0,er0
.L9:
	mov.l	@er7+,er4
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.l	er2,er2
	bne	.L17
	bra	.L18
.L19:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L18
.L17:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	bne	.L19
.L18:
	mov.l	er2,er2
	bne	.L23
	sub.l	er0,er0
.L23:
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L25
	bra	.L26
.L27:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L26
.L25:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L27
.L26:
	mov.l	er2,er2
	beq	.L29
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L24
.L29:
	sub.w	r0,r0
.L24:
	mov.l	@er7+,er4
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L32
	jsr	@_memcpy
	mov.l	er0,er3
.L32:
	mov.l	er3,er0
	rts
	.size	_memcpy, .-_memcpy
	.align 1
	.global _memrchr
_memrchr:
	mov.l	er4,@-er7
	mov.l	er0,er4
	extu.w	r1
	subs	#1,er2
	add.l	er0,er2
	subs	#1,er4
	bra	.L34
.L36:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L33
.L34:
	cmp.l	er4,er2
	bne	.L36
	sub.l	er0,er0
.L33:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er2,er2
	beq	.L41
	add.l	er0,er2
	mov.l	er0,er3
.L39:
	mov.b	r1l,@er3
	adds	#1,er3
	cmp.l	er3,er2
	bne	.L39
.L41:
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L46
.L44:
	adds	#1,er1
	adds	#1,er0
.L46:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L44
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	bne	.L48
	rts
.L50:
	adds	#1,er0
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	beq	.L53
.L48:
	cmp.w	r1,r2
	bne	.L50
.L53:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L57:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L59
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L57
	sub.l	er0,er0
.L59:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L65
.L63:
	adds	#1,er0
	adds	#1,er1
.L65:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	bne	.L62
	mov.b	r2l,r2l
	bne	.L63
.L62:
	mov.b	r2l,r0l
	extu.w	r0
	sub.w	r3,r0
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	mov.l	er0,er2
	mov.b	@er0,r3l
	beq	.L67
.L68:
	adds	#1,er0
	mov.b	@er0,r3l
	bne	.L68
.L67:
	sub.l	er2,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L76
	mov.b	@er0,r3l
	beq	.L73
	subs	#1,er2
	add.l	er0,er2
	bra	.L74
.L75:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r3l
	beq	.L73
.L74:
	mov.b	@er1,r4l
	beq	.L73
	cmp.l	er2,er0
	beq	.L73
	cmp.b	r3l,r4l
	beq	.L75
.L73:
	mov.b	r3l,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L71
.L76:
	sub.w	r0,r0
.L71:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L81
	and	#254,r2l
	add.l	er0,er2
.L79:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L79
.L81:
	rts
	.size	_swab, .-_swab
	.align 1
	.global _isalpha
_isalpha:
	mov.w	r0,r2
	or	#32,r2l
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L84
	sub.w	r0,r0
.L84:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L86
	sub.w	r2,r2
.L86:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L90
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L89
	sub.w	r2,r2
.L89:
	mov.w	r2,r0
	rts
.L90:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L94
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L93
	sub.w	r2,r2
.L93:
	mov.w	r2,r0
	rts
.L94:
	mov.w	#1,r0
	rts
	.size	_iscntrl, .-_iscntrl
	.align 1
	.global _isdigit
_isdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	mov.w	#1,r0
	cmp.w	#9,r2
	bls	.L97
	sub.w	r0,r0
.L97:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L100
	sub.w	r0,r0
.L100:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L103
	sub.w	r0,r0
.L103:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L106
	sub.w	r0,r0
.L106:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L110
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L109
	sub.w	r2,r2
.L109:
	mov.w	r2,r0
	rts
.L110:
	mov.w	#1,r0
	rts
	.size	_isspace, .-_isspace
	.align 1
	.global _isupper
_isupper:
	mov.w	r0,r2
	add.w	#-65,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L113
	sub.w	r0,r0
.L113:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L119
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L119
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L119
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L116
	sub.w	r2,r2
.L116:
	mov.w	r2,r0
	rts
.L119:
	mov.w	#1,r0
	rts
	.size	_iswcntrl, .-_iswcntrl
	.align 1
	.global _iswdigit
_iswdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	mov.w	#1,r0
	cmp.w	#9,r2
	bls	.L122
	sub.w	r0,r0
.L122:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L124
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L131
	sub.w	r0,r0
	rts
.L124:
	cmp.w	#8231,r0
	bls	.L130
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L130
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L130
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L127
	sub.w	r2,r2
.L127:
	mov.w	r2,r0
	rts
.L130:
	mov.w	#1,r0
.L131:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L136
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L137
	sub.w	r0,r0
	rts
.L136:
	mov.w	#1,r0
.L137:
	rts
	.size	_iswxdigit, .-_iswxdigit
	.align 1
	.global _toascii
_toascii:
	and.w	#127,r0
	rts
	.size	_toascii, .-_toascii
	.align 1
	.global _fdim
_fdim:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L143
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L144
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L147
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L140
.L143:
	mov.l	er4,er0
	bra	.L140
.L144:
	mov.l	er5,er0
	bra	.L140
.L147:
	sub.l	er0,er0
.L140:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fdim, .-_fdim
	.align 1
	.global _fdimf
_fdimf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L151
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L152
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L155
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L148
.L151:
	mov.l	er4,er0
	bra	.L148
.L152:
	mov.l	er5,er0
	bra	.L148
.L155:
	sub.l	er0,er0
.L148:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fdimf, .-_fdimf
	.align 1
	.global _fmax
_fmax:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L164
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L163
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L158
	mov.w	r2,r2
	bne	.L164
	bra	.L163
.L158:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L164
	mov.l	er5,er4
	bra	.L164
.L163:
	mov.l	er5,er0
	bra	.L156
.L164:
	mov.l	er4,er0
.L156:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L173
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L172
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L167
	mov.w	r2,r2
	bne	.L173
	bra	.L172
.L167:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L173
	mov.l	er5,er4
	bra	.L173
.L172:
	mov.l	er5,er0
	bra	.L165
.L173:
	mov.l	er4,er0
.L165:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
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
	bne	.L181
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L176
	mov.w	r2,r2
	bne	.L182
	bra	.L181
.L176:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L182
	mov.l	er5,er4
	bra	.L182
.L181:
	mov.l	er5,er0
	bra	.L174
.L182:
	mov.l	er4,er0
.L174:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmaxl, .-_fmaxl
	.align 1
	.global _fmin
_fmin:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L189
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L191
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L185
	mov.w	r2,r2
	bne	.L191
	bra	.L189
.L185:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L191
	mov.l	er5,er4
	bra	.L191
.L189:
	mov.l	er5,er0
	bra	.L183
.L191:
	mov.l	er4,er0
.L183:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmin, .-_fmin
	.align 1
	.global _fminf
_fminf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L198
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L200
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L194
	mov.w	r2,r2
	bne	.L200
	bra	.L198
.L194:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L200
	mov.l	er5,er4
	bra	.L200
.L198:
	mov.l	er5,er0
	bra	.L192
.L200:
	mov.l	er4,er0
.L192:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminf, .-_fminf
	.align 1
	.global _fminl
_fminl:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L207
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L209
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L203
	mov.w	r2,r2
	bne	.L209
	bra	.L207
.L203:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L209
	mov.l	er5,er4
	bra	.L209
.L207:
	mov.l	er5,er0
	bra	.L201
.L209:
	mov.l	er4,er0
.L201:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L211
	mov.l	#_digits,er1
.L212:
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
	bne	.L212
.L211:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
	mov.l	#_s___0,er0
	rts
	.size	_l64a, .-_l64a
	.align 1
	.global _srand
_srand:
	dec #1,r0
	extu.l	er0
	mov.l	er0,@_seed+4:32
	sub.l	er2,er2
	mov.l	er2,@_seed:32
	rts
	.size	_srand, .-_srand
	.align 1
	.global _rand
_rand:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	#1481765933,er2
	mov.l	er2,@er7
	mov.l	#1284865837,er2
	mov.l	er2,@(4,er7)
	mov.l	@_seed:32,er0
	mov.l	@_seed+4:32,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er0,er0
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er5,er6
	add.l	er1,er6
	mov.l	er6,er3
	mov.l	er1,er6
	cmp.l	er5,er3
	blo	.L217
	sub.l	er6,er6
.L217:
	add.l	er0,er4
	mov.l	er4,er2
	mov.l	er6,er4
	add.l	er2,er4
	mov.l	er4,er0
	mov.l	er4,@_seed:32
	mov.l	er3,@_seed+4:32
	shlr.l	er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_rand, .-_rand
	.align 1
	.global _insque
_insque:
	mov.l	er1,er1
	bne	.L219
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L219:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L221
	mov.l	er0,@(4,er2)
.L221:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L224
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L224:
	mov.l	@(4,er0),er2
	beq	.L226
	mov.l	@er0,er3
	mov.l	er3,@er2
.L226:
	rts
	.size	_remque, .-_remque
	.align 1
	.global _lsearch
_lsearch:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#16,er7
	mov.l	er0,@er7
	mov.l	er1,er4
	mov.l	er1,@(8,er7)
	mov.l	er2,er3
	mov.l	@er2,er1
	beq	.L228
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
.L230:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L227
	adds	#1,er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er6,er2
	bne	.L230
	mov.l	er2,er1
	mov.l	@(12,er7),er3
.L228:
	mov.l	er1,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(32,er7),er2
	mov.l	@er7,er1
	mov.l	@(8,er7),er3
	add.l	er3,er0
	jsr	@_memcpy
	mov.l	er0,er5
.L227:
	mov.l	er5,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_lsearch, .-_lsearch
	.align 1
	.global _lfind
_lfind:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	@er2,er2
	beq	.L234
	sub.l	er5,er5
	mov.l	er2,@(4,er7)
	mov.l	er1,er6
	mov.l	er0,@er7
.L236:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L233
	adds	#1,er5
	mov.l	@(24,er7),er2
	add.l	er2,er6
	mov.l	@(4,er7),er2
	cmp.l	er5,er2
	bne	.L236
.L234:
	sub.l	er6,er6
.L233:
	mov.l	er6,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_lfind, .-_lfind
	.align 1
	.global _abs
_abs:
	mov.w	r0,r0
	bpl	.L241
	neg.w	r0
.L241:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	bra	.L243
.L244:
	adds	#1,er4
.L243:
	mov.b	@er4,r5l
	mov.b	r5l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L244
	cmp.b	#43,r5l
	beq	.L250
	cmp.b	#45,r5l
	bne	.L251
	mov.w	#1,r5
	bra	.L245
.L250:
	sub.w	r5,r5
.L245:
	adds	#1,er4
	bra	.L246
.L247:
	mulxs.w	r1,er0
	adds	#1,er4
	add.w	#-48,r2
	sub.w	r2,r0
	mov.b	@er4,r2l
	extu.w	r2
	mov.b	r2l,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L247
	bra	.L248
.L251:
	sub.w	r5,r5
.L246:
	mov.b	@er4,r2l
	extu.w	r2
	mov.b	r2l,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bhi	.L248
	mov.w	#10,r1
	bra	.L247
.L248:
	mov.w	r5,r5
	bne	.L242
	neg.w	r0
.L242:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_atoi, .-_atoi
	.align 1
	.global _atol
_atol:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er5
	bra	.L255
.L256:
	adds	#1,er5
.L255:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r6
	bne	.L256
	cmp.b	#43,r4l
	beq	.L257
	cmp.b	#45,r4l
	bne	.L258
	mov.w	#1,r6
.L257:
	adds	#1,er5
	bra	.L258
.L259:
	sub.l	er1,er1
	add.b	#10,r1l
	jsr	@___mulsi3
	adds	#1,er5
	add.w	#-48,r4
	exts.l	er4
	sub.l	er4,er0
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L259
	bra	.L260
.L258:
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r2l
	extu.w	r2
	add.w	#-48,r2
	sub.l	er0,er0
	cmp.w	#9,r2
	bls	.L259
.L260:
	mov.w	r6,r6
	bne	.L254
	neg.l	er0
.L254:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_atol, .-_atol
	.align 1
	.global _atoll
_atoll:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#20,er7
	mov.l	er0,er5
	bra	.L265
.L266:
	adds	#1,er5
.L265:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L266
	mov.w	r0,r3
	cmp.b	#43,r4l
	beq	.L267
	cmp.b	#45,r4l
	bne	.L268:16
	mov.w	#1,r3
.L267:
	adds	#1,er5
	bra	.L268:16
.L274:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
	sub.l	er6,er6
	add.b	#1,r6l
	mov.w	r3,@(18,er7)
	sub.l	er2,er2
	sub.l	er3,er3
.L270:
	sub.l	#8,er7
	sub.l	er0,er0
	mov.l	er0,@er7
	sub.l	er0,er0
	add.b	#10,r0l
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er2,@er7
	mov.l	er1,@(4,er7)
	adds	#1,er5
	add.w	#-48,r4
	exts.l	er4
	mov.l	er4,@(12,er7)
	shll	e4
	subx	r4l,r4l
	exts.w	r4
	exts.l	er4
	mov.l	er4,@(8,er7)
	mov.l	er1,er2
	mov.l	@(12,er7),er3
	sub.l	er3,er2
	mov.l	er2,er1
	mov.l	er6,er2
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	bhi	.L269
	sub.l	er2,er2
.L269:
	mov.l	@er7,er3
	mov.l	@(8,er7),er4
	sub.l	er4,er3
	mov.l	er3,er4
	sub.l	er2,er4
	mov.l	er4,er2
	mov.l	er1,er3
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r0l
	extu.w	r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L270:16
	mov.l	er2,@er7
	mov.l	er1,@(4,er7)
	mov.w	@(18,er7),r3
	bra	.L271
.L268:
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L274:16
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L271:
	mov.w	r3,r3
	bne	.L264
	sub.l	er0,er0
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er3,er3
	bne	.L273
	sub.l	er4,er4
.L273:
	mov.l	@er7,er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
.L264:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	add.l	#20,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_atoll, .-_atoll
	.align 1
	.global _bsearch
_bsearch:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er2,er4
	beq	.L277
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
.L280:
	mov.l	er5,er6
	shlr.l	er6
	mov.l	@(24,er7),er1
	mov.l	er6,er0
	jsr	@___mulsi3
	mov.l	@er7,er2
	add.l	er2,er0
	mov.l	er0,er4
	mov.l	er0,er1
	mov.l	@(4,er7),er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	bmi	.L281
	ble	.L283
	mov.l	@(24,er7),er2
	add.l	er4,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	subs	#1,er2
	sub.l	er6,er2
	mov.l	er2,er5
	bra	.L278
.L281:
	mov.l	er6,er5
.L278:
	mov.l	er5,er5
	bne	.L280
.L277:
	sub.l	er5,er5
	bra	.L276
.L283:
	mov.l	er4,er5
.L276:
	mov.l	er5,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_bsearch, .-_bsearch
	.align 1
	.global _bsearch_r
_bsearch_r:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er1,er6
	mov.w	r2,r4
	beq	.L285
	mov.w	r4,r5
	mov.l	er0,@er7
.L288:
	mov.l	@(20,er7),er1
	mov.w	r5,r0
	shar.w	r0
	exts.l	er0
	jsr	@___mulsi3
	add.l	er6,er0
	mov.l	er0,er4
	mov.l	@(28,er7),er2
	mov.l	er0,er1
	mov.l	@er7,er0
	mov.l	@(24,er7),er3
	jsr	@er3
	mov.w	r0,r0
	beq	.L290
	ble	.L287
	mov.l	@(20,er7),er6
	add.l	er4,er6
	dec #1,r5
.L287:
	shar.w	r5
	bne	.L288
.L285:
	sub.l	er5,er5
	bra	.L284
.L290:
	mov.l	er4,er5
.L284:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_bsearch_r, .-_bsearch_r
	.align 1
	.global _div
_div:
	exts.l	er1
	divxs.w	r2,er1
	mov.w	e1,r2
	mov.w	r1,@er0
	mov.w	r2,@(2,er0)
	rts
	.size	_div, .-_div
	.align 1
	.global _imaxabs
_imaxabs:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er0,er0
	bpl	.L293
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L295
	sub.l	er6,er6
.L295:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L293:
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_imaxabs, .-_imaxabs
	.align 1
	.global _imaxdiv
_imaxdiv:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#24,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er2,er6
	mov.l	@(40,er7),er2
	mov.l	@(44,er7),er3
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er2,@(16,er7)
	mov.l	er3,@(20,er7)
	mov.l	er1,er0
	mov.l	er6,er1
	jsr	@___divdi3
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	er0,er2
	mov.l	er2,@er4
	mov.l	er1,@(4,er4)
	mov.l	@(16,er7),er2
	mov.l	@(20,er7),er3
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er5,er0
	mov.l	er6,er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	er2,@(8,er4)
	mov.l	er1,@(12,er4)
	mov.l	er4,er0
	add.l	#24,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_imaxdiv, .-_imaxdiv
	.align 1
	.global _labs
_labs:
	mov.l	er0,er0
	bpl	.L299
	neg.l	er0
.L299:
	rts
	.size	_labs, .-_labs
	.align 1
	.global _ldiv
_ldiv:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er2,er1
	mov.l	er2,@er7
	mov.l	er5,er0
	jsr	@___divsi3
	mov.l	er0,@er4
	mov.l	@er7,er1
	mov.l	er5,er0
	jsr	@___modsi3
	mov.l	er0,@(4,er4)
	mov.l	er4,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_ldiv, .-_ldiv
	.align 1
	.global _llabs
_llabs:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er0,er0
	bpl	.L302
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L304
	sub.l	er6,er6
.L304:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L302:
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_llabs, .-_llabs
	.align 1
	.global _lldiv
_lldiv:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#24,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er2,er6
	mov.l	@(40,er7),er2
	mov.l	@(44,er7),er3
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er2,@(16,er7)
	mov.l	er3,@(20,er7)
	mov.l	er1,er0
	mov.l	er6,er1
	jsr	@___divdi3
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	er0,er2
	mov.l	er2,@er4
	mov.l	er1,@(4,er4)
	mov.l	@(16,er7),er2
	mov.l	@(20,er7),er3
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er5,er0
	mov.l	er6,er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	er2,@(8,er4)
	mov.l	er1,@(12,er4)
	mov.l	er4,er0
	add.l	#24,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_lldiv, .-_lldiv
	.align 1
	.global _wcschr
_wcschr:
	bra	.L313
.L309:
	adds	#2,er0
.L313:
	mov.w	@er0,r2
	beq	.L308
	cmp.w	r2,r1
	bne	.L309
.L308:
	mov.w	r2,r2
	bne	.L314
	sub.l	er0,er0
.L314:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L323
.L318:
	adds	#2,er0
	adds	#2,er1
.L323:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L317
	mov.w	r2,r2
	beq	.L317
	mov.w	r3,r3
	bne	.L318
.L317:
	cmp.w	r3,r2
	blo	.L321
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L324
	sub.w	r0,r0
	rts
.L321:
	mov.w	#-1,r0
.L324:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L327:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L327
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L332
	mov.l	er0,er2
.L331:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L331
	bra	.L330
.L332:
	mov.l	er0,er2
.L330:
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L335
	bra	.L336
.L337:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L336
.L335:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L336
	mov.w	r3,r3
	bne	.L337
.L336:
	mov.l	er2,er2
	beq	.L340
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L341
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L334
.L340:
	sub.w	r0,r0
	bra	.L334
.L341:
	mov.w	#-1,r0
.L334:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L350
.L346:
	subs	#1,er2
	adds	#2,er0
.L350:
	mov.l	er2,er2
	beq	.L345
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L346
.L345:
	mov.l	er2,er2
	bne	.L351
	sub.l	er0,er0
.L351:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L353
	bra	.L354
.L355:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L354
.L353:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L355
.L354:
	mov.l	er2,er2
	beq	.L358
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L359
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L352
.L358:
	sub.w	r0,r0
	bra	.L352
.L359:
	mov.w	#-1,r0
.L352:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L362
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L362:
	mov.l	er3,er0
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	cmp.l	er1,er0
	beq	.L364
	mov.l	er0,@er7
	mov.l	er1,er5
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er6
	shll.l	er6
	mov.l	er6,@(4,er7)
	mov.l	er0,er6
	sub.l	er1,er6
	mov.l	@(4,er7),er4
	cmp.l	er4,er6
	blo	.L365
	mov.l	er2,er2
	bne	.L371
	bra	.L364
.L365:
	mov.l	er2,er2
	beq	.L364
	shll.l	er3
.L367:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L367
	bra	.L364
.L371:
	mov.l	@er7,er4
.L366:
	mov.w	@er5+,r2
	mov.w	r2,@er4
	subs	#1,er3
	adds	#2,er4
	cmp.l	#-1,er3
	bne	.L366
.L364:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er2
	beq	.L376
	mov.l	er0,er2
.L374:
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L374
.L376:
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L378
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L384
.L380:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L380
	rts
.L378:
	beq	.L384
	mov.l	er2,er2
	beq	.L384
	add.l	er0,er2
.L381:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
	cmp.l	er2,er0
	bne	.L381
.L384:
	rts
	.size	_bcopy, .-_bcopy
	.align 1
	.global _rotl64
_rotl64:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L387
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L392
.L391:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L391
.L392:
	bra	.L388
.L387:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L394
.L393:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L393
.L394:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L396
.L395:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L395
.L396:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L398
.L397:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L397
.L398:
.L388:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L389
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L400
.L399:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L399
.L400:
	bra	.L390
.L389:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L402
.L401:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L401
.L402:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L404
.L403:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L403
.L404:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L406
.L405:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L405
.L406:
.L390:
	mov.l	er0,er6
	or.l	er4,er6
	mov.l	er1,er0
	or.l	er5,er0
	mov.l	er0,er3
	mov.l	er6,er0
	mov.l	er3,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_rotl64, .-_rotl64
	.align 1
	.global _rotr64
_rotr64:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L408
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L413
.L412:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L412
.L413:
	bra	.L409
.L408:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L415
.L414:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L414
.L415:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L417
.L416:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L416
.L417:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L419
.L418:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L418
.L419:
.L409:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L410
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L421
.L420:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L420
.L421:
	bra	.L411
.L410:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L423
.L422:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L422
.L423:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L425
.L424:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L424
.L425:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L427
.L426:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L426
.L427:
.L411:
	mov.l	er0,er6
	or.l	er4,er6
	mov.l	er1,er0
	or.l	er5,er0
	mov.l	er0,er3
	mov.l	er6,er0
	mov.l	er3,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_rotr64, .-_rotr64
	.align 1
	.global _rotl32
_rotl32:
	mov.b	r1l,r1l
	ble	.L432
.L429:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L429
.L432:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L437
.L434:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L434
.L437:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L442
.L439:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L439
.L442:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L447
.L444:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L444
.L447:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L452
.L449:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L449
.L452:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L457
.L454:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L454
.L457:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L462
.L459:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L459
.L462:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L467
.L464:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L464
.L467:
	rts
	.size	_rotr8, .-_rotr8
	.align 1
	.global _bswap_16
_bswap_16:
	xor.b	r0l,r0h
	xor.b	r0h,r0l
	xor.b	r0l,r0h
	rts
	.size	_bswap_16, .-_bswap_16
	.align 1
	.global _bswap_32
_bswap_32:
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
	rts
	.size	_bswap_32, .-_bswap_32
	.align 1
	.global _bswap_64
_bswap_64:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#24,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er1,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er0,er3
	mov.l	er2,er0
	mov.l	@er7,er5
	mov.w	e5,r2
	mov.b	r5h,r5l
	mov.b	r2l,r5h
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,e5
	sub.l	er2,er2
	mov.l	er5,er4
	and	#0,r4l
	sub.w	e4,e4
	mov.l	er0,er6
	or.l	er2,er6
	mov.l	er3,er0
	or.l	er4,er0
	mov.l	er0,er5
	mov.l	@er7,er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	@(4,er7),er1
	mov.l	er1,er3
	mov.w	e3,r3
	mov.b	r3h,r3l
	extu.w	r3
	extu.l	er3
	mov.l	er3,er1
	or.l	er2,er1
	sub.l	er2,er2
	mov.l	er1,er0
	sub.w	r0,r0
	extu.w	e0
	or.l	er2,er6
	mov.l	er5,er4
	or.l	er0,er4
	mov.l	er4,er1
	mov.l	@er7,er4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r4,e4
	sub.w	r4,r4
	mov.l	@(4,er7),er3
	mov.w	e3,r5
	mov.b	r3h,r3l
	mov.b	r5l,r3h
	mov.b	r5h,r5l
	extu.w	r5
	mov.w	r5,e3
	or.l	er4,er3
	sub.l	er4,er4
	mov.l	er3,er2
	and.l	#-16777216,er2
	mov.l	er2,er5
	mov.l	er6,er2
	or.l	er4,er2
	mov.l	er2,@(16,er7)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	er2,@(20,er7)
	mov.l	@(4,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er2,er5
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er0,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	mov.l	er0,er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er0
	mov.l	@(16,er7),er1
	or.l	er1,er0
	mov.l	er0,er2
	mov.l	@(20,er7),er3
	mov.l	@(4,er7),er0
	shll.l	er0
	mov.l	er0,er6
	mov.l	@(4,er7),er0
	cmp.l	er0,er6
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@er7,er0
	shll.l	er0
	mov.l	er0,er5
	add.l	er4,er5
	mov.l	er6,er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	cmp.l	er6,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er5,er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,er5
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	mov.l	er0,er4
	add.l	er1,er4
	and	#0,r4l
	sub.w	e4,e4
	mov.l	er4,er0
	or.l	er2,er0
	mov.l	er0,er4
	mov.l	@(4,er7),er0
	mov.w	e0,r6
	mov.b	r6l,r6h
	mov.b	r0h,r6l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r6,e0
	sub.l	er6,er6
	mov.l	er6,@(4,er7)
	sub.w	r0,r0
	extu.w	e0
	mov.l	er0,@er7
	mov.l	@er7,er6
	or.l	er4,er6
	mov.l	er6,er0
	mov.l	er3,er1
	add.l	#24,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_bswap_64, .-_bswap_64
	.align 1
	.global _ffs
_ffs:
	sub.w	r2,r2
.L506:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L509
.L508:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L508
.L509:
	inc #1,r2
	btst	#0,r3l
	beq	.L504
	mov.w	r2,r0
	rts
.L504:
	cmp.w	#16,r2
	bne	.L506
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L513
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L515
	mov.w	#1,r0
.L512:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L512
	rts
.L513:
	sub.w	r0,r0
.L515:
	rts
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 1
	.global _gl_isinff
_gl_isinff:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L520
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L519
	sub.w	r5,r5
.L519:
	mov.w	r5,r0
	bra	.L517
.L520:
	mov.w	#1,r0
.L517:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_gl_isinff, .-_gl_isinff
	.align 1
	.global _gl_isinfd
_gl_isinfd:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L524
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L523
	sub.w	r5,r5
.L523:
	mov.w	r5,r0
	bra	.L521
.L524:
	mov.w	#1,r0
.L521:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_gl_isinfd, .-_gl_isinfd
	.align 1
	.global _gl_isinfl
_gl_isinfl:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L528
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L527
	sub.w	r5,r5
.L527:
	mov.w	r5,r0
	bra	.L525
.L528:
	mov.w	#1,r0
.L525:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_gl_isinfl, .-_gl_isinfl
	.align 1
	.global __Qp_itoq
__Qp_itoq:
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.w	r1,r0
	exts.l	er0
	jsr	@___floatsisf
	mov.l	er0,@er4
	mov.l	@er7+,er4
	rts
	.size	__Qp_itoq, .-__Qp_itoq
	.align 1
	.global _ldexpf
_ldexpf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L531
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L531
	mov.w	r4,r4
	bpl	.L537
	mov.l	#1056964608,er1
	bra	.L536
.L537:
	mov.l	#1073741824,er1
.L536:
	btst	#0,r4l
	beq	.L534
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L534:
	mov.w	r4,r2
	bpl	.L535
	inc #1,r2
.L535:
	shar.w	r2
	mov.w	r2,r4
	beq	.L531
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L536
.L531:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_ldexpf, .-_ldexpf
	.align 1
	.global _ldexp
_ldexp:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L540
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L540
	mov.w	r4,r4
	bpl	.L546
	mov.l	#1056964608,er1
	bra	.L545
.L546:
	mov.l	#1073741824,er1
.L545:
	btst	#0,r4l
	beq	.L543
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L543:
	mov.w	r4,r2
	bpl	.L544
	inc #1,r2
.L544:
	shar.w	r2
	mov.w	r2,r4
	beq	.L540
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L545
.L540:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_ldexp, .-_ldexp
	.align 1
	.global _ldexpl
_ldexpl:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L549
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L549
	mov.w	r4,r4
	bpl	.L555
	mov.l	#1056964608,er1
	bra	.L554
.L555:
	mov.l	#1073741824,er1
.L554:
	btst	#0,r4l
	beq	.L552
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L552:
	mov.w	r4,r2
	bpl	.L553
	inc #1,r2
.L553:
	shar.w	r2
	mov.w	r2,r4
	beq	.L549
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L554
.L549:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_ldexpl, .-_ldexpl
	.align 1
	.global _memxor
_memxor:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er2,er2
	beq	.L558
	mov.l	er0,er3
	add.l	er1,er2
.L559:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er2,er1
	bne	.L559
.L558:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er5
	mov.l	er1,er6
	mov.l	er2,er4
	jsr	@_strlen
	add.l	er5,er0
	mov.l	er4,er4
	bne	.L562
	bra	.L563
.L564:
	adds	#1,er6
	adds	#1,er0
	dec.l	#1,er4
	beq	.L563
.L562:
	mov.b	@er6,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L564
.L563:
	mov.l	er4,er4
	bne	.L565
	mov.b	r4l,@er0
.L565:
	mov.l	er5,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er1,er1
	bne	.L568
	rts
.L570:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L568
	rts
.L568:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L570
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L574
	bra	.L578
.L576:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L575
.L577:
	mov.b	@er2,r3l
	bne	.L576
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L578
.L574:
	mov.l	er1,er2
	bra	.L577
.L578:
	sub.l	er0,er0
.L575:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L582:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r1,r4
	bne	.L581
	mov.l	er2,er0
.L581:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L582
	mov.l	@er7+,er4
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er0,er6
	mov.l	er1,er4
	mov.l	er1,er0
	jsr	@_strlen
	mov.l	er0,er5
	beq	.L585
	mov.b	@er4,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L587
.L588:
	mov.l	er5,er2
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L585
	adds	#1,er6
.L587:
	mov.w	@(2,er7),r1
	mov.l	er6,er0
	jsr	@_strchr
	mov.l	er0,er6
	bne	.L588
.L585:
	mov.l	er6,er0
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_strstr, .-_strstr
	.align 1
	.global _copysign
_copysign:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er6,er6
	mov.l	er6,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L591
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L593
.L591:
	sub.l	er6,er6
	mov.l	er6,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L594
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L594
.L593:
	xor.w	#32768,e4
.L594:
	mov.l	er4,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_copysign, .-_copysign
	.align 1
	.global _memmem
_memmem:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#12,er7
	mov.l	er0,er4
	mov.l	@(28,er7),er0
	beq	.L603
	cmp.l	er0,er1
	blo	.L605
	sub.l	er0,er1
	add.l	er4,er1
	cmp.l	er1,er4
	bhi	.L605
	mov.b	@er2+,r3l
	subs	#1,er0
	mov.l	er0,@(4,er7)
	mov.b	r3l,r6l
	mov.l	er1,er3
	mov.l	er2,@(8,er7)
.L602:
	mov.b	@er4,r2l
	mov.l	er4,er5
	adds	#1,er4
	cmp.b	r6l,r2l
	bne	.L601
	mov.l	er3,@er7
	mov.l	@(4,er7),er2
	mov.l	@(8,er7),er1
	mov.l	er4,er0
	jsr	@_memcmp
	mov.l	@er7,er3
	mov.w	r0,r0
	beq	.L607
.L601:
	cmp.l	er3,er4
	bls	.L602
	bra	.L605
.L603:
	mov.l	er4,er6
	bra	.L599
.L605:
	sub.l	er6,er6
	bra	.L599
.L607:
	mov.l	er5,er6
.L599:
	mov.l	er6,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_memmem, .-_memmem
	.align 1
	.global _mempcpy
_mempcpy:
	mov.l	er4,@-er7
	mov.l	er2,er4
	jsr	@_memcpy
	add.l	er4,er0
	mov.l	@er7+,er4
	rts
	.size	_mempcpy, .-_mempcpy
	.align 1
	.global _frexp
_frexp:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	mov.l	er1,@(4,er7)
	sub.l	er1,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L629
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L610
.L629:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L610:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L630
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L614:
	inc #1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L614
	bra	.L615
.L630:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L631
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	sub.w	r6,r6
	mov.l	er0,er0
	beq	.L615
	mov.l	#1056964608,er5
.L618:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L618
	bra	.L615
.L631:
	sub.w	r6,r6
.L615:
	mov.l	@(4,er7),er2
	mov.w	r6,@er2
	mov.w	@(2,er7),r2
	beq	.L619
	xor.w	#32768,e4
.L619:
	mov.l	er4,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_frexp, .-_frexp
	.align 1
	.global ___muldi3
___muldi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#40,er7
	mov.l	er0,er2
	mov.l	@(56,er7),er0
	mov.l	er0,@er7
	mov.l	@(60,er7),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er4
	mov.l	er1,er5
	or.l	er1,er2
	beq	.L640:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L639:
	sub.l	er2,er2
	mov.l	er2,@(24,er7)
	mov.l	er5,er2
	and.l	#1,er2
	mov.l	er2,@(28,er7)
	sub.l	er0,er0
	mov.l	@(28,er7),er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L636
	sub.l	er6,er6
.L636:
	mov.l	@(24,er7),er1
	sub.l	er1,er0
	mov.l	er0,er2
	sub.l	er6,er2
	mov.l	@er7,er0
	and.l	er2,er0
	mov.l	er0,@(32,er7)
	mov.l	er3,er2
	mov.l	@(4,er7),er3
	and.l	er3,er2
	mov.l	er2,@(36,er7)
	mov.l	@(20,er7),er0
	mov.l	@(36,er7),er1
	add.l	er1,er0
	mov.l	er0,er3
	mov.l	@(20,er7),er0
	cmp.l	er0,er3
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er1
	mov.l	@(32,er7),er6
	add.l	er6,er1
	add.l	er1,er0
	mov.l	er0,@(16,er7)
	mov.l	er3,@(20,er7)
	mov.l	@(4,er7),er0
	shll.l	er0
	mov.l	er0,er3
	mov.l	@(4,er7),er0
	cmp.l	er0,er3
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er1
	shll.l	er1
	add.l	er1,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
	mov.l	er5,er2
	shlr.l	er2
	rotxl.l	er2
	bor	#0,r4l
	rotxr.l	er2
	mov.l	er2,@(12,er7)
	mov.l	er4,er2
	shlr.l	er2
	mov.l	er2,@(8,er7)
	mov.l	er2,er4
	mov.l	@(12,er7),er5
	or.l	er5,er2
	bne	.L639:16
	bra	.L633
.L640:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L633:
	mov.l	@(16,er7),er0
	mov.l	@(20,er7),er1
	add.l	#40,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___muldi3, .-___muldi3
	.align 1
	.global _udivmodsi4
_udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L650
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L644
.L647:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L644
	dec #1,r0
	bne	.L643
	sub.l	er3,er3
.L644:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L645
	bra	.L646
.L650:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L643:
	mov.l	er1,er1
	bpl	.L647
	bra	.L644
.L645:
	cmp.l	er1,er4
	blo	.L648
	sub.l	er1,er4
	or.l	er3,er0
.L648:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L645
.L646:
	mov.l	er2,er2
	beq	.L642
	mov.l	er4,er0
.L642:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L657
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L657:
	mov.w	#7,r0
	rts
	.size	___clrsbqi2, .-___clrsbqi2
	.align 1
	.global ___clrsbdi2
___clrsbdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,er3
	mov.l	er4,er0
	xor.l	er3,er0
	mov.l	er0,@er7
	mov.l	er1,er0
	xor.l	er3,er0
	mov.l	er0,@(4,er7)
	cmp.l	er3,er4
	bne	.L662
	cmp.l	er3,er1
	beq	.L663
.L662:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L658
.L663:
	mov.w	#63,r0
.L658:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	beq	.L667
	sub.w	r0,r0
.L666:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.w	r1,r3
	add.w	r3,r0
	shlr.w	r2
	shll.w	r1
	mov.w	r2,r2
	bne	.L666
	rts
.L667:
	sub.w	r0,r0
	rts
	.size	___mulsi3, .-___mulsi3
	.align 1
	.global ___cmovd
___cmovd:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r2,r5
	and	#248,r5l
	cmp.l	er1,er0
	bhs	.L670
.L673:
	mov.w	r6,r6
	bne	.L671
	bra	.L672
.L670:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L673
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L674
	bra	.L669:16
.L671:
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L676:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L676
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L672:
	cmp.w	r5,r2
	bls	.L669
	mov.w	r5,r6
	extu.l	er6
	mov.l	er1,er0
	add.l	er6,er0
	mov.l	er4,er3
	add.l	er6,er3
	adds	#1,er1
	add.l	er6,er1
	dec #1,r2
	sub.w	r5,r2
	extu.l	er2
	add.l	er2,er1
.L677:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L677
	bra	.L669
.L674:
	mov.w	r3,r2
	extu.l	er2
.L678:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L678
.L669:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___cmovd, .-___cmovd
	.align 1
	.global ___cmovh
___cmovh:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.w	r2,r6
	shlr.w	r6
	cmp.l	er1,er0
	bhs	.L683
.L686:
	mov.w	r6,r6
	bne	.L684
	bra	.L685
.L683:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L686
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L687
	bra	.L682
.L684:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L689:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L689
.L685:
	btst	#0,r2l
	beq	.L682
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L682
.L687:
	mov.w	r3,r2
	extu.l	er2
.L690:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L690
.L682:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___cmovh, .-___cmovh
	.align 1
	.global ___cmovw
___cmovw:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r2,r5
	and	#252,r5l
	cmp.l	er1,er0
	bhs	.L694
.L697:
	mov.w	r6,r6
	bne	.L695
	bra	.L696
.L694:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L697
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L698
	bra	.L693
.L695:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L700:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L700
	mov.w	@(2,er7),r5
.L696:
	cmp.w	r5,r2
	bls	.L693
	mov.w	r5,r4
	extu.l	er4
	mov.l	er1,er3
	add.l	er4,er3
	add.l	er4,er0
	adds	#1,er1
	add.l	er4,er1
	dec #1,r2
	sub.w	r5,r2
	extu.l	er2
	add.l	er2,er1
.L701:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L701
	bra	.L693
.L698:
	mov.w	r3,r2
	extu.l	er2
.L702:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L702
.L693:
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___cmovw, .-___cmovw
	.align 1
	.global ___modi
___modi:
	exts.l	er0
	mov.l	er0,er2
	divxs.w	r1,er2
	mov.w	e2,r0
	rts
	.size	___modi, .-___modi
	.align 1
	.global ___uitod
___uitod:
	extu.l	er0
	jsr	@___floatunsisf
	rts
	.size	___uitod, .-___uitod
	.align 1
	.global ___uitof
___uitof:
	extu.l	er0
	jsr	@___floatunsisf
	rts
	.size	___uitof, .-___uitof
	.align 1
	.global ___ulltod
___ulltod:
	jsr	@___floatundisf
	rts
	.size	___ulltod, .-___ulltod
	.align 1
	.global ___ulltof
___ulltof:
	jsr	@___floatundisf
	rts
	.size	___ulltof, .-___ulltof
	.align 1
	.global ___umodi
___umodi:
	extu.l	er0
	mov.l	er0,er2
	divxu.w	r1,er2
	mov.w	e2,r0
	rts
	.size	___umodi, .-___umodi
	.align 1
	.global ___clzhi2
___clzhi2:
	mov.l	er4,@-er7
	mov.w	r0,r3
	bmi	.L716
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L714
.L715:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L718
.L717:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L717
.L718:
	and.w	r3,r2
	bne	.L712
.L714:
	inc #1,r0
	cmp.w	#16,r0
	bne	.L715
	bra	.L712
.L716:
	sub.w	r0,r0
.L712:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
.L721:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L725
.L724:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L724
.L725:
	btst	#0,r2l
	bne	.L723
	inc #1,r0
	cmp.w	#16,r0
	bne	.L721
.L723:
	rts
	.size	___ctzhi2, .-___ctzhi2
	.align 1
	.global ___fixunssfsi
___fixunssfsi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	#1191182336,er5
	mov.l	er5,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L731
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L726
.L731:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L726:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___fixunssfsi, .-___fixunssfsi
	.align 1
	.global ___parityhi2
___parityhi2:
	mov.l	er4,@-er7
	mov.w	r0,r1
	sub.w	r0,r0
	sub.w	r2,r2
.L733:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L736
.L735:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L735
.L736:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L733
	and.w	#1,r0
	mov.l	@er7+,er4
	rts
	.size	___parityhi2, .-___parityhi2
	.align 1
	.global ___popcounthi2
___popcounthi2:
	mov.l	er4,@-er7
	mov.w	r0,r1
	sub.w	r0,r0
	sub.w	r2,r2
.L738:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L741
.L740:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L740
.L741:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L738
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L745
	sub.l	er0,er0
.L744:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L744
	rts
.L745:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L750
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L753
.L749:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L749
	rts
.L750:
	sub.l	er0,er0
	rts
.L753:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L763
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L757
.L760:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L757
	dec #1,r0
	bne	.L756
	sub.l	er3,er3
.L757:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L758
	bra	.L759
.L763:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L756:
	mov.l	er1,er1
	bpl	.L760
	bra	.L757
.L758:
	cmp.l	er1,er4
	blo	.L761
	sub.l	er1,er4
	or.l	er3,er0
.L761:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L758
.L759:
	mov.w	r2,r2
	beq	.L755
	mov.l	er4,er0
.L755:
	mov.l	@er7+,er4
	rts
	.size	___udivmodsi4, .-___udivmodsi4
	.align 1
	.global ___mspabi_cmpf
___mspabi_cmpf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,@er7
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L771
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L770
	sub.w	r5,r5
.L770:
	mov.w	r5,r0
	bra	.L768
.L771:
	mov.w	#-1,r0
.L768:
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 1
	.global ___mspabi_cmpd
___mspabi_cmpd:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,@er7
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L775
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L774
	sub.w	r5,r5
.L774:
	mov.w	r5,r0
	bra	.L772
.L775:
	mov.w	#-1,r0
.L772:
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 1
	.global ___mspabi_mpysll
___mspabi_mpysll:
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
	rts
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 1
	.global ___mspabi_mpyull
___mspabi_mpyull:
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
	rts
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 1
	.global ___mulhi3
___mulhi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.w	r0,r3
	mov.w	r1,r1
	bpl	.L783
	neg.w	r1
	mov.w	#1,r5
	bra	.L779
.L783:
	sub.w	r5,r5
.L779:
	mov.w	r1,r1
	beq	.L784
	mov.b	#16,r4l
	sub.w	r0,r0
.L781:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r3
	shar.w	r1
	beq	.L780
	add.b	#-1,r4l
	bne	.L781
	bra	.L780
.L784:
	sub.w	r0,r0
.L780:
	mov.w	r5,r5
	beq	.L778
	neg.w	r0
.L778:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L790
	neg.l	er0
	mov.w	#1,r4
	bra	.L787
.L790:
	sub.w	r4,r4
.L787:
	mov.l	er1,er1
	bpl	.L788
	neg.l	er1
	xor	#1,r4l
.L788:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L786
	neg.l	er0
.L786:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L795
	neg.l	er0
	mov.w	#1,r4
	bra	.L792
.L795:
	sub.w	r4,r4
.L792:
	mov.l	er2,er1
	bpl	.L793
	neg.l	er2
	mov.l	er2,er1
.L793:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L791
	neg.l	er0
.L791:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	r0,r4
	cmp.w	r0,r1
	blo	.L804
	mov.w	#1,r3
	bra	.L798
.L801:
	shll.w	r1
	shll.w	r0
	cmp.w	r1,r4
	bls	.L805
	dec #1,r3
	bne	.L797
	bra	.L798
.L805:
	mov.w	r0,r3
.L798:
	sub.w	r0,r0
	mov.w	r3,r3
	bne	.L799
	bra	.L800
.L804:
	mov.w	#16,r3
	mov.w	#1,r0
.L797:
	mov.w	r1,r1
	bpl	.L801
	bra	.L805
.L799:
	cmp.w	r1,r4
	blo	.L802
	sub.w	r1,r4
	or.w	r3,r0
.L802:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L799
.L800:
	mov.w	r2,r2
	beq	.L796
	mov.w	r4,r0
.L796:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L818
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L812
.L815:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L812
	dec #1,r0
	bne	.L811
	sub.l	er3,er3
.L812:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L813
	bra	.L814
.L818:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L811:
	mov.l	er1,er1
	bpl	.L815
	bra	.L812
.L813:
	cmp.l	er1,er4
	blo	.L816
	sub.l	er1,er4
	or.l	er3,er0
.L816:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L813
.L814:
	mov.w	r2,r2
	beq	.L810
	mov.l	er4,er0
.L810:
	mov.l	@er7+,er4
	rts
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 1
	.global ___ashldi3
___ashldi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,er4
	mov.l	er1,er5
	btst	#5,r2l
	beq	.L824
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L829
.L828:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L828
.L829:
	sub.l	er0,er0
	bra	.L825
.L824:
	mov.w	r2,r2
	beq	.L827
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L831
.L830:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L830
.L831:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L833
.L832:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L832
.L833:
	mov.b	r2l,r2l
	ble	.L835
.L834:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L834
.L835:
	or.l	er3,er4
.L825:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L823
.L827:
	mov.l	er0,er2
	mov.l	er1,er3
.L823:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___ashldi3, .-___ashldi3
	.align 1
	.global ___ashrdi3
___ashrdi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er1,er5
	btst	#5,r2l
	beq	.L837
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L842
.L841:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L841
.L842:
	bra	.L838
.L837:
	mov.w	r2,r2
	beq	.L840
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L844
.L843:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L843
.L844:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L846
.L845:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L845
.L846:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L848
.L847:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L847
.L848:
	or.l	er3,er0
.L838:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L836
.L840:
	mov.l	er0,er2
	mov.l	er1,er3
.L836:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___ashrdi3, .-___ashrdi3
	.align 1
	.global ___bswapdi2
___bswapdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#24,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er0,er3
	mov.l	er1,er0
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r0,e0
	sub.w	r0,r0
	mov.l	@er7,er5
	mov.w	e5,r2
	mov.b	r5h,r5l
	mov.b	r2l,r5h
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,e5
	sub.l	er2,er2
	mov.l	er5,er4
	and	#0,r4l
	sub.w	e4,e4
	mov.l	er0,er6
	or.l	er2,er6
	mov.l	er3,er0
	or.l	er4,er0
	mov.l	er0,er5
	mov.l	@er7,er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	@(4,er7),er1
	mov.l	er1,er3
	mov.w	e3,r3
	mov.b	r3h,r3l
	extu.w	r3
	extu.l	er3
	mov.l	er3,er1
	or.l	er2,er1
	sub.l	er2,er2
	mov.l	er1,er0
	sub.w	r0,r0
	extu.w	e0
	or.l	er2,er6
	mov.l	er5,er4
	or.l	er0,er4
	mov.l	er4,er1
	mov.l	@er7,er4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r4,e4
	sub.w	r4,r4
	mov.l	@(4,er7),er3
	mov.w	e3,r5
	mov.b	r3h,r3l
	mov.b	r5l,r3h
	mov.b	r5h,r5l
	extu.w	r5
	mov.w	r5,e3
	or.l	er4,er3
	sub.l	er4,er4
	mov.l	er3,er2
	and.l	#-16777216,er2
	mov.l	er2,er5
	mov.l	er6,er2
	or.l	er4,er2
	mov.l	er2,@(16,er7)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	er2,@(20,er7)
	mov.l	@(4,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er2,er5
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er0,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	mov.l	er0,er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er0
	mov.l	@(16,er7),er1
	or.l	er1,er0
	mov.l	er0,er2
	mov.l	@(20,er7),er3
	mov.l	@(4,er7),er0
	shll.l	er0
	mov.l	er0,er6
	mov.l	@(4,er7),er0
	cmp.l	er0,er6
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@er7,er0
	shll.l	er0
	mov.l	er0,er5
	add.l	er4,er5
	mov.l	er6,er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	cmp.l	er6,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er5,er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,er5
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	mov.l	er0,er4
	add.l	er1,er4
	and	#0,r4l
	sub.w	e4,e4
	mov.l	er4,er0
	or.l	er2,er0
	mov.l	er0,er4
	mov.l	@(4,er7),er0
	mov.w	e0,r6
	mov.b	r6l,r6h
	mov.b	r0h,r6l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r6,e0
	sub.l	er6,er6
	mov.l	er6,@(4,er7)
	sub.w	r0,r0
	extu.w	e0
	mov.l	er0,@er7
	mov.l	@er7,er6
	or.l	er4,er6
	mov.l	er6,er0
	mov.l	er3,er1
	add.l	#24,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___bswapdi2, .-___bswapdi2
	.align 1
	.global ___bswapsi2
___bswapsi2:
	mov.l	er0,er2
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er2,er3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	mov.w	r3,e3
	sub.w	r3,r3
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
	rts
	.size	___bswapsi2, .-___bswapsi2
	.align 1
	.global ___clzsi2
___clzsi2:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	#65535,er2
	bls	.L884
	sub.l	er0,er0
.L884:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L891
.L890:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L890
.L891:
	mov.l	er2,er1
	and	#0,r1l
	sub.w	e1,e1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L885
	sub.l	er3,er3
.L885:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L893
.L892:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L892
.L893:
	add.l	er3,er0
	mov.l	er2,er1
	and.l	#240,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L886
	sub.l	er3,er3
.L886:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L895
.L894:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L894
.L895:
	add.l	er0,er3
	mov.l	er3,er4
	mov.l	er2,er0
	and.l	#12,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L887
	sub.l	er3,er3
.L887:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L897
.L896:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L896
.L897:
	btst	#1,r2l
	bne	.L888
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L889
.L888:
	sub.w	r0,r0
.L889:
	add.l	er4,er1
	add.w	r1,r0
	mov.l	@er7+,er4
	rts
	.size	___clzsi2, .-___clzsi2
	.align 1
	.global ___cmpdi2
___cmpdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er1,er5
	mov.l	@(12,er7),er2
	mov.l	@(16,er7),er3
	cmp.l	er2,er0
	blt	.L902
	bgt	.L903
	cmp.l	er3,er5
	blo	.L902
	bhi	.L903
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L898
.L902:
	sub.l	er0,er0
	bra	.L898
.L903:
	sub.l	er0,er0
	add.b	#2,r0l
.L898:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___cmpdi2, .-___cmpdi2
	.align 1
	.global ___aeabi_lcmp
___aeabi_lcmp:
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(4,er7),er0
	mov.l	@(8,er7),er1
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___cmpdi2
	add.l	#8,er7
	subs	#1,er0
	rts
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 1
	.global ___ctzsi2
___ctzsi2:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
	add.b	#1,r0l
	mov.w	r2,r2
	beq	.L906
	sub.l	er0,er0
.L906:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L911
.L910:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L910
.L911:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L907
	sub.l	er3,er3
.L907:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L913
.L912:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L912
.L913:
	add.l	er0,er3
	mov.l	er2,er0
	and.l	#15,er0
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L908
	sub.l	er1,er1
.L908:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L915
.L914:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L914
.L915:
	add.l	er3,er1
	mov.l	er2,er0
	and.l	#3,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L909
	sub.l	er3,er3
.L909:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L917
.L916:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L916
.L917:
	and.l	#3,er2
	mov.l	er2,er4
	not.l	er4
	and.w	#1,r4
	shlr.l	er2
	sub.l	er0,er0
	add.b	#2,r0l
	sub.l	er2,er0
	mulxu.b	r0l,r4
	add.l	er1,er3
	mov.l	er3,er0
	add.w	r4,r0
	mov.l	@er7+,er4
	rts
	.size	___ctzsi2, .-___ctzsi2
	.align 1
	.global ___lshrdi3
___lshrdi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#16,er7
	mov.l	er1,er5
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	btst	#5,r2l
	beq	.L919
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L924
.L923:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L923
.L924:
	sub.l	er1,er1
	bra	.L920
.L919:
	mov.w	r2,r2
	beq	.L922
	mov.l	@er7,er1
	mov.l	er1,er3
	mov.b	r2l,r0l
	ble	.L926
.L925:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L925
.L926:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L928
.L927:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L927
.L928:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L930
.L929:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L929
.L930:
	or.l	er3,er0
.L920:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L918
.L922:
	mov.l	er0,er2
	mov.l	er1,er3
.L918:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___lshrdi3, .-___lshrdi3
	.align 1
	.global ___muldsi3
___muldsi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#8,er7
	mov.l	er1,er3
	mov.w	r0,r1
	mulxu.w	r3,er1
	mov.l	er1,er5
	mov.w	e5,r5
	extu.l	er5
	mov.l	er0,er4
	mov.w	e4,r4
	extu.l	er4
	mov.w	r3,r2
	mulxu.w	r4,er2
	add.l	er5,er2
	mov.w	r2,r5
	extu.l	er5
	mov.w	e3,r3
	extu.l	er3
	mulxu.w	r3,er0
	add.l	er5,er0
	extu.l	er1
	mov.l	er0,er5
	mov.w	r5,e5
	sub.w	r5,r5
	add.l	er5,er1
	mov.w	e2,r2
	extu.l	er2
	mulxu.w	r3,er4
	add.l	er4,er2
	mov.w	e0,r0
	extu.l	er0
	add.l	er0,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___muldsi3, .-___muldsi3
	.align 1
	.global ___muldi3_compiler_rt
___muldi3_compiler_rt:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#24,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(40,er7),er4
	mov.l	@(44,er7),er5
	mov.l	er5,er1
	mov.l	er3,er0
	mov.l	er2,@(8,er7)
	mov.l	er3,@(12,er7)
	jsr	@___muldsi3
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,er1
	mov.l	er5,er0
	jsr	@___mulsi3
	mov.l	er0,er6
	mov.l	er4,er1
	mov.l	@(12,er7),er3
	mov.l	er3,er0
	jsr	@___mulsi3
	add.l	er0,er6
	mov.l	@er7,er2
	add.l	er2,er6
	mov.l	er6,er0
	mov.l	@(4,er7),er1
	add.l	#24,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 1
	.global ___negdi2
___negdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er0,er0
	mov.l	er5,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L934
	sub.l	er6,er6
.L934:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er4,er0
	mov.l	er3,er1
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___negdi2, .-___negdi2
	.align 1
	.global ___paritydi2
___paritydi2:
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
	xor.l	er2,er3
	mov.l	er3,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	xor.l	er3,er2
	and.w	#15,r2
	mov.w	#27030,r0
	mov.b	r2l,r2l
	ble	.L937
.L936:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L936
.L937:
	and.w	#1,r0
	rts
	.size	___paritydi2, .-___paritydi2
	.align 1
	.global ___paritysi2
___paritysi2:
	xor.w	e0,r0
	mov.l	er0,er3
	mov.w	e3,r2
	mov.b	r3h,r3l
	mov.b	r2l,r3h
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,e3
	xor.l	er0,er3
	mov.l	er3,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	xor.l	er3,er2
	and.w	#15,r2
	mov.w	#27030,r0
	mov.b	r2l,r2l
	ble	.L940
.L939:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L939
.L940:
	and.w	#1,r0
	rts
	.size	___paritysi2, .-___paritysi2
	.align 1
	.global ___popcountdi2
___popcountdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#16,er7
	mov.l	er1,er5
	mov.l	er0,er2
	mov.l	er1,er4
	shlr.l	er4
	mov.l	er4,er1
	rotxl.l	er1
	bor	#0,r0l
	rotxr.l	er1
	mov.l	er0,er4
	shlr.l	er4
	and.l	#1431655765,er4
	mov.l	er4,@er7
	mov.l	er1,er0
	and.l	#1431655765,er0
	mov.l	er0,@(4,er7)
	mov.l	er5,er0
	mov.l	@(4,er7),er1
	sub.l	er1,er0
	mov.l	er0,er6
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er5,er6
	bhi	.L942
	sub.l	er0,er0
.L942:
	mov.l	@er7,er3
	sub.l	er3,er2
	sub.l	er0,er2
	mov.l	er2,er0
	mov.l	er6,er1
	mov.l	er2,er4
	sub.w	e4,e4
	rotr.l	er4
	rotr.l	er4
	sub.w	r4,r4
	mov.l	er6,er5
	shlr.l	er5
	shlr.l	er5
	mov.l	er5,er3
	or.l	er4,er3
	mov.l	er2,er4
	shlr.l	er4
	shlr.l	er4
	mov.l	er4,er6
	and.l	#858993459,er6
	mov.l	er3,er2
	and.l	#858993459,er2
	mov.l	er2,er5
	mov.l	er0,er2
	and.l	#858993459,er2
	mov.l	er2,@er7
	mov.l	er1,er2
	and.l	#858993459,er2
	mov.l	er2,@(4,er7)
	mov.l	er5,er2
	mov.l	@(4,er7),er3
	add.l	er3,er2
	mov.l	er2,@(12,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er6,er2
	mov.l	@er7,er0
	add.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.l	er3,er2
	mov.l	@(8,er7),er3
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	er2,er4
	mov.l	@(12,er7),er5
	mov.l	er2,er0
	sub.w	e0,e0
	rotr.l	er0
	rotr.l	er0
	rotr.l	er0
	rotr.l	er0
	sub.w	r0,r0
	mov.l	er5,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	or.l	er0,er2
	mov.l	er2,@(4,er7)
	mov.l	er4,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@er7
	mov.l	@(4,er7),er2
	add.l	er5,er2
	mov.l	er2,er1
	mov.l	@(4,er7),er2
	cmp.l	er2,er1
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@er7,er2
	add.l	er4,er2
	mov.l	er2,er0
	mov.l	er3,er2
	add.l	er0,er2
	mov.l	er2,er0
	and.l	#252645135,er0
	mov.l	er0,er2
	mov.l	er1,er0
	and.l	#252645135,er0
	mov.l	er0,er3
	add.l	er2,er3
	mov.l	er3,er2
	mov.w	e2,r2
	extu.l	er2
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
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___popcountdi2, .-___popcountdi2
	.align 1
	.global ___popcountsi2
___popcountsi2:
	mov.l	er0,er2
	shlr.l	er2
	and.l	#1431655765,er2
	sub.l	er2,er0
	mov.l	er0,er3
	shlr.l	er3
	shlr.l	er3
	and.l	#858993459,er3
	and.l	#858993459,er0
	add.l	er0,er3
	mov.l	er3,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
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
	rts
	.size	___popcountsi2, .-___popcountsi2
	.align 1
	.global ___powidf2
___powidf2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.w	r1,@(2,er7)
	mov.w	r1,r6
	mov.l	#1065353216,er5
.L950:
	btst	#0,r6l
	beq	.L947
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L947:
	mov.w	r6,r3
	bpl	.L948
	inc #1,r3
.L948:
	shar.w	r3
	mov.w	r3,r6
	beq	.L949
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L950
.L949:
	mov.w	@(2,er7),r2
	bpl	.L946
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L946:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___powidf2, .-___powidf2
	.align 1
	.global ___powisf2
___powisf2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.w	r1,@(2,er7)
	mov.w	r1,r6
	mov.l	#1065353216,er5
.L956:
	btst	#0,r6l
	beq	.L953
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L953:
	mov.w	r6,r3
	bpl	.L954
	inc #1,r3
.L954:
	shar.w	r3
	mov.w	r3,r6
	beq	.L955
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L956
.L955:
	mov.w	@(2,er7),r2
	bpl	.L952
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L952:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___powisf2, .-___powisf2
	.align 1
	.global ___ucmpdi2
___ucmpdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er1,er5
	mov.l	@(12,er7),er2
	mov.l	@(16,er7),er3
	cmp.l	er2,er0
	blo	.L962
	bhi	.L963
	cmp.l	er3,er5
	blo	.L962
	bhi	.L963
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L958
.L962:
	sub.l	er0,er0
	bra	.L958
.L963:
	sub.l	er0,er0
	add.b	#2,r0l
.L958:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___ucmpdi2, .-___ucmpdi2
	.align 1
	.global ___aeabi_ulcmp
___aeabi_ulcmp:
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(4,er7),er0
	mov.l	@(8,er7),er1
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___ucmpdi2
	add.l	#8,er7
	subs	#1,er0
	rts
	.size	___aeabi_ulcmp, .-___aeabi_ulcmp
	.local	_s___0
	.comm	_s___0,7,1
	.local	_seed
	.comm	_seed,8,4
	.section	.rodata
	.type	_digits, @object
	.size	_digits, 65
_digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
