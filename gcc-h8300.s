	.file	"mini-libc.c"
	.h8300h
	.section .text
	.align 1
	.global _memmove
_memmove:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	cmp.l	er1,er0
	bls	.L2
	add.l	er2,er1
	mov.l	er0,er3
	add.l	er2,er3
	mov.l	er2,er2
	beq	.L3:16
.L4:
	subs	#1,er1
	mov.b	@er1,r2l
	subs	#1,er3
	mov.b	r2l,@er3
	cmp.l	er3,er0
	bne	.L4
	bra	.L3:16
.L2:
	beq	.L3:16
	mov.l	er2,er2
	beq	.L3:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#6,er3
	bls	.L5
	mov.l	er1,er3
	or.l	er0,er3
	and.l	#3,er3
	bne	.L5
	mov.l	er1,er4
	adds	#1,er4
	mov.l	er0,er3
	sub.l	er4,er3
	cmp.l	#2,er3
	bls	.L5
	mov.l	er0,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er1,er5
	add.l	er6,er5
.L8:
	mov.l	@er1+,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er1,er5
	bne	.L8
	mov.l	er0,er3
	add.l	er6,er3
	mov.l	er2,er1
	sub.l	er6,er1
	cmp.l	er6,er2
	beq	.L3
	mov.b	@er5,r2l
	mov.b	r2l,@er3
	cmp.l	#1,er1
	beq	.L3
	mov.b	@(1,er5),r2l
	mov.b	r2l,@(1,er3)
	cmp.l	#2,er1
	beq	.L3
	mov.b	@(2,er5),r2l
	mov.b	r2l,@(2,er3)
	bra	.L3
.L5:
	mov.l	er0,er3
	add.l	er0,er2
.L11:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er3,er2
	bne	.L11
.L3:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
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
	bne	.L35
.L37:
	sub.l	er0,er0
	bra	.L34
.L38:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L37
.L35:
	mov.b	@er1,r3l
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
	bne	.L38
	adds	#1,er0
.L34:
	mov.l	@er7+,er4
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.l	er2,er2
	bne	.L45
	bra	.L48
.L47:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L48
.L45:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	bne	.L47
	rts
.L48:
	sub.l	er0,er0
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L51
	bra	.L55
.L53:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L55
.L51:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L53
	bra	.L57
.L55:
	sub.w	r0,r0
	bra	.L50
.L57:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
.L50:
	mov.l	@er7+,er4
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L59
	jsr	@_memcpy
	mov.l	er0,er3
.L59:
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
	bra	.L64
.L66:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L63
.L64:
	cmp.l	er4,er2
	bne	.L66
	sub.l	er0,er0
.L63:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L70
	extu.w	r1
	jsr	@_memset
	mov.l	er0,er3
.L70:
	mov.l	er3,er0
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L78
.L73:
	adds	#1,er1
	adds	#1,er0
.L78:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L73
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	bne	.L80
	rts
.L82:
	adds	#1,er0
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	beq	.L86
.L80:
	cmp.w	r1,r2
	bne	.L82
.L86:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L90:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L92
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L90
	sub.l	er0,er0
.L92:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L101
.L96:
	adds	#1,er0
	adds	#1,er1
.L101:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	beq	.L94
	mov.b	r2l,r0l
	extu.w	r0
	bra	.L95
.L94:
	mov.b	r2l,r2l
	bne	.L96
	sub.w	r0,r0
.L95:
	sub.w	r3,r0
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	mov.l	er0,er3
	mov.b	@er0,r2l
	beq	.L105
	mov.l	er0,er2
.L104:
	adds	#1,er2
	mov.b	@er2,r0l
	bne	.L104
	sub.l	er3,er2
	mov.l	er2,er0
	rts
.L105:
	sub.l	er0,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L115
	mov.b	@er0,r3l
	bne	.L109
	mov.b	@er1,r4l
	extu.w	r4
	sub.w	r0,r0
	bra	.L110
.L114:
	adds	#1,er0
	mov.l	er1,er4
	adds	#1,er4
	mov.b	@er0,r3l
	bne	.L116
	mov.b	@(1,er1),r4l
	extu.w	r4
	sub.w	r0,r0
	bra	.L110
.L109:
	subs	#1,er2
	add.l	er0,er2
	bra	.L111
.L116:
	mov.l	er4,er1
.L111:
	mov.b	@er1,r4l
	extu.w	r4
	mov.b	r4l,r4l
	beq	.L117
	cmp.l	er2,er0
	beq	.L117
	cmp.b	r3l,r4l
	beq	.L114
.L117:
	mov.b	r3l,r0l
	extu.w	r0
.L110:
	sub.w	r4,r0
	bra	.L107
.L115:
	sub.w	r0,r0
.L107:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L122
	and	#254,r2l
	add.l	er0,er2
.L120:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L120
.L122:
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
	bls	.L125
	sub.w	r0,r0
.L125:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L127
	sub.w	r2,r2
.L127:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L131
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L130
	sub.w	r2,r2
.L130:
	mov.w	r2,r0
	rts
.L131:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L138
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L137
	sub.w	r2,r2
.L137:
	mov.w	r2,r0
	rts
.L138:
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
	bls	.L144
	sub.w	r0,r0
.L144:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L147
	sub.w	r0,r0
.L147:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L150
	sub.w	r0,r0
.L150:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L153
	sub.w	r0,r0
.L153:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L157
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L156
	sub.w	r2,r2
.L156:
	mov.w	r2,r0
	rts
.L157:
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
	bls	.L160
	sub.w	r0,r0
.L160:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L166
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L166
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L166
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L163
	sub.w	r2,r2
.L163:
	mov.w	r2,r0
	rts
.L166:
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
	bls	.L169
	sub.w	r0,r0
.L169:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L171
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L178
	sub.w	r0,r0
	rts
.L171:
	cmp.w	#8231,r0
	bls	.L177
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L177
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L177
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L174
	sub.w	r2,r2
.L174:
	mov.w	r2,r0
	rts
.L177:
	mov.w	#1,r0
.L178:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L183
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L184
	sub.w	r0,r0
	rts
.L183:
	mov.w	#1,r0
.L184:
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
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,@er7
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L192
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L187
.L192:
	sub.l	er0,er0
.L187:
	adds	#4,er7
	mov.l	@er7+,er4
	rts
	.size	_fdim, .-_fdim
	.align 1
	.global _fdimf
_fdimf:
	mov.l	er4,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,@er7
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L198
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L193
.L198:
	sub.l	er0,er0
.L193:
	adds	#4,er7
	mov.l	@er7+,er4
	rts
	.size	_fdimf, .-_fdimf
	.align 1
	.global _fmax
_fmax:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	mov.l	er0,er6
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	cmp.b	r0l,r6l
	beq	.L200
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L199
	bra	.L209
.L200:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L199
.L209:
	mov.l	er5,er4
.L199:
	mov.l	er4,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	mov.l	er0,er6
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	cmp.b	r0l,r6l
	beq	.L211
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L210
	bra	.L220
.L211:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L210
.L220:
	mov.l	er5,er4
.L210:
	mov.l	er4,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	mov.l	er0,er6
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	cmp.b	r0l,r6l
	beq	.L222
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L221
	bra	.L231
.L222:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L221
.L231:
	mov.l	er5,er4
.L221:
	mov.l	er4,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmaxl, .-_fmaxl
	.align 1
	.global _fmin
_fmin:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	mov.l	er0,er6
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	cmp.b	r0l,r6l
	beq	.L233
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L241
	bra	.L232
.L233:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L232
.L241:
	mov.l	er5,er4
.L232:
	mov.l	er4,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmin, .-_fmin
	.align 1
	.global _fminf
_fminf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	mov.l	er0,er6
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	cmp.b	r0l,r6l
	beq	.L243
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L251
	bra	.L242
.L243:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L242
.L251:
	mov.l	er5,er4
.L242:
	mov.l	er4,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminf, .-_fminf
	.align 1
	.global _fminl
_fminl:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	mov.l	er0,er6
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	shll.l	er0
	xor.l	er0,er0
	rotxl.l	er0
	cmp.b	r0l,r6l
	beq	.L253
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L261
	bra	.L252
.L253:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L252
.L261:
	mov.l	er5,er4
.L252:
	mov.l	er4,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L263
	mov.l	#_digits,er1
.L264:
	sub.l	er2,er2
	mov.b	r0l,r2l
	and	#63,r2l
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
	bne	.L264
.L263:
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
	blo	.L269
	sub.l	er6,er6
.L269:
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
	bne	.L271
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L271:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L276
	mov.l	er0,@(4,er2)
.L276:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L279
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L279:
	mov.l	@(4,er0),er3
	beq	.L287
	mov.l	er2,@er3
.L287:
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
	beq	.L289
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
.L291:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L288
	adds	#1,er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er6,er2
	bne	.L291
	mov.l	er2,er1
	mov.l	@(12,er7),er3
.L289:
	mov.l	er1,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(32,er7),er2
	beq	.L288
	mov.l	@er7,er1
	mov.l	er5,er0
	jsr	@_memmove
.L288:
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
	mov.l	er1,er4
	mov.l	@er2,er1
	beq	.L305
	sub.l	er5,er5
	mov.l	er1,@(4,er7)
	mov.l	er4,er6
	mov.l	er0,@er7
.L307:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L304
	adds	#1,er5
	mov.l	@(24,er7),er2
	add.l	er2,er6
	mov.l	@(4,er7),er2
	cmp.l	er5,er2
	bne	.L307
.L305:
	sub.l	er6,er6
.L304:
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
	bpl	.L318
	neg.w	r0
.L318:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
.L326:
	mov.b	@er0,r3l
	cmp.b	#32,r3l
	beq	.L320
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,r1
	add.w	#-9,r1
	cmp.w	#4,r1
	bls	.L320
	cmp.b	#43,r3l
	beq	.L321
	cmp.b	#45,r3l
	beq	.L322
	bra	.L337
.L321:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L339
	bra	.L331
.L320:
	adds	#1,er0
	bra	.L326
.L322:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bhi	.L331
	mov.w	#1,r0
	mov.w	r0,@(2,er7)
	bra	.L324
.L332:
	mov.l	er0,er3
.L339:
	sub.w	r0,r0
	mov.w	r0,@(2,er7)
.L324:
	sub.w	r0,r0
	mov.w	#10,r6
.L328:
	mov.w	r0,r1
	mulxs.w	r6,er1
	adds	#1,er3
	add.w	#-48,r2
	mov.w	r2,r4
	mov.w	r1,r0
	sub.w	r2,r0
	mov.b	@er3,r2l
	extu.w	r2
	mov.w	r2,r5
	add.w	#-48,r5
	cmp.w	#9,r5
	bls	.L328
	bra	.L338
.L337:
	mov.w	r2,r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L332
	bra	.L331
.L338:
	mov.w	@(2,er7),r2
	bne	.L319
	mov.w	r4,r0
	sub.w	r1,r0
	bra	.L319
.L331:
	sub.w	r0,r0
.L319:
	adds	#4,er7
	mov.l	@er7+,er6
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
.L347:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L341
	mov.b	r2l,r6l
	extu.w	r6
	mov.w	r6,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L341
	cmp.b	#43,r2l
	beq	.L342
	cmp.b	#45,r2l
	beq	.L343
	bra	.L358
.L342:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L360
	bra	.L352
.L341:
	adds	#1,er0
	bra	.L347
.L343:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L352
	mov.w	#1,r4
	bra	.L345
.L353:
	mov.l	er0,er5
.L360:
	sub.w	r4,r4
.L345:
	sub.l	er0,er0
.L349:
	sub.l	er1,er1
	add.b	#10,r1l
	jsr	@___mulsi3
	mov.l	er0,er2
	adds	#1,er5
	mov.w	r6,r3
	add.w	#-48,r3
	exts.l	er3
	sub.l	er3,er0
	mov.b	@er5,r6l
	extu.w	r6
	mov.w	r6,r1
	add.w	#-48,r1
	cmp.w	#9,r1
	bls	.L349
	bra	.L359
.L358:
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L353
	bra	.L352
.L359:
	mov.w	r4,r4
	bne	.L340
	sub.l	er2,er3
	mov.l	er3,er0
	bra	.L340
.L352:
	sub.l	er0,er0
.L340:
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
.L368:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L362
	mov.b	r2l,r4l
	extu.w	r4
	mov.w	r4,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L362
	cmp.b	#43,r2l
	beq	.L363
	cmp.b	#45,r2l
	beq	.L364
	bra	.L381:16
.L363:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L383
	bra	.L375:16
.L362:
	adds	#1,er0
	bra	.L368
.L364:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L375:16
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L366
.L376:
	mov.l	er0,er5
.L383:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L366:
	sub.l	er2,er2
	sub.l	er3,er3
	sub.l	er6,er6
	add.b	#1,r6l
.L371:
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
	bhi	.L370
	sub.l	er2,er2
.L370:
	mov.l	@er7,er3
	mov.l	@(8,er7),er4
	sub.l	er4,er3
	mov.l	er3,er4
	sub.l	er2,er4
	mov.l	er4,er2
	mov.l	er1,er3
	mov.b	@er5,r4l
	extu.w	r4
	mov.w	r4,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L371:16
	bra	.L382
.L381:
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L376:16
	bra	.L375
.L382:
	mov.w	@(18,er7),r0
	bne	.L361
	mov.l	@(12,er7),er2
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	@(12,er7),er3
	cmp.l	er3,er1
	bhi	.L373
	sub.l	er2,er2
.L373:
	mov.l	@(8,er7),er3
	mov.l	@er7,er4
	sub.l	er4,er3
	mov.l	er3,er4
	sub.l	er2,er4
	mov.l	er4,er2
	mov.l	er1,er3
	bra	.L361
.L375:
	sub.l	er2,er2
	sub.l	er3,er3
.L361:
	mov.l	er2,er0
	mov.l	er3,er1
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
	beq	.L385
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
.L388:
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
	bmi	.L389
	beq	.L397
	mov.l	@(24,er7),er2
	add.l	er4,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	subs	#1,er2
	sub.l	er6,er2
	mov.l	er2,er5
	bra	.L386
.L389:
	mov.l	er6,er5
.L386:
	mov.l	er5,er5
	bne	.L388
.L385:
	sub.l	er5,er5
	bra	.L384
.L397:
	mov.l	er4,er5
.L384:
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
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.w	r2,r4
	bne	.L399
.L403:
	sub.l	er6,er6
	bra	.L398
.L399:
	mov.w	r4,r5
	shar.w	r5
	mov.l	@(24,er7),er1
	mov.w	r5,r0
	exts.l	er0
	jsr	@___mulsi3
	mov.l	@er7,er2
	add.l	er2,er0
	mov.l	er0,er6
	mov.l	@(32,er7),er2
	mov.l	er0,er1
	mov.l	@(4,er7),er0
	mov.l	@(28,er7),er3
	jsr	@er3
	mov.w	r0,r0
	beq	.L398
	ble	.L401
	mov.l	@(24,er7),er2
	add.l	er6,er2
	mov.l	er2,@er7
	dec #1,r4
	shar.w	r4
	bne	.L399
	bra	.L403
.L401:
	mov.w	r5,r5
	beq	.L403
	mov.w	r5,r4
	bra	.L399
.L398:
	mov.l	er6,er0
	add.l	#8,er7
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
	bpl	.L415
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L417
	sub.l	er6,er6
.L417:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L415:
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
	bpl	.L421
	neg.l	er0
.L421:
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
	bpl	.L424
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L426
	sub.l	er6,er6
.L426:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L424:
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
	bra	.L435
.L431:
	adds	#2,er0
.L435:
	mov.w	@er0,r2
	beq	.L432
	cmp.w	r2,r1
	bne	.L431
	rts
.L432:
	sub.l	er0,er0
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L444
.L439:
	adds	#2,er0
	adds	#2,er1
.L444:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L438
	mov.w	r2,r2
	bne	.L439
.L438:
	cmp.w	r3,r2
	blo	.L442
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L445
	sub.w	r0,r0
	rts
.L442:
	mov.w	#-1,r0
.L445:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L448:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L448
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L453
	mov.l	er0,er2
.L452:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L452
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
.L453:
	sub.l	er0,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L456
	bra	.L462
.L459:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L462
.L456:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L458
	mov.w	r3,r3
	bne	.L459
	bra	.L458
.L461:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L455
.L462:
	sub.w	r0,r0
	bra	.L455
.L458:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L461
	mov.w	#-1,r0
.L455:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L471
.L467:
	subs	#1,er2
	adds	#2,er0
.L471:
	mov.l	er2,er2
	beq	.L468
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L467
	rts
.L468:
	sub.l	er0,er0
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L473
	bra	.L479
.L475:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L479
.L473:
	mov.w	@er0,r4
	mov.w	@er1,r3
	cmp.w	r3,r4
	beq	.L475
	bra	.L481
.L478:
	mov.w	#1,r0
	cmp.w	r3,r4
	bhi	.L472
.L479:
	sub.w	r0,r0
	bra	.L472
.L481:
	bhs	.L478
	mov.w	#-1,r0
.L472:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L483
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L483:
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
	mov.l	er2,er5
	cmp.l	er1,er0
	beq	.L507:16
	mov.l	er0,@er7
	mov.l	er1,er4
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er6
	shll.l	er6
	mov.l	er6,@(4,er7)
	mov.l	er0,er6
	sub.l	er1,er6
	mov.l	@(4,er7),er2
	cmp.l	er2,er6
	blo	.L489
	mov.l	er5,er5
	bne	.L490
	bra	.L507:16
.L489:
	mov.l	er5,er5
	beq	.L507:16
	shll.l	er3
.L492:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L492
	bra	.L507
.L490:
	cmp.l	#8,er3
	bls	.L518
	mov.l	er1,er6
	or.l	er0,er6
	and.l	#3,er6
	bne	.L518
	mov.l	er1,er6
	adds	#2,er6
	cmp.l	er6,er0
	beq	.L518
	mov.l	er5,er6
	shlr.l	er6
	sub.l	er3,er3
	mov.l	er0,er2
	mov.l	er0,@(4,er7)
.L499:
	mov.l	@er4+,er0
	mov.l	er0,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L499
	mov.l	@(4,er7),er0
	btst	#0,r5l
	beq	.L507
	and	#254,r5l
	shll.l	er5
	add.l	er5,er1
	mov.w	@er1,r2
	add.l	er0,er5
	mov.w	r2,@er5
	bra	.L507
.L518:
	mov.l	er0,er2
.L498:
	mov.w	@er4+,r1
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L498
.L507:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er2,er6
	subs	#1,er6
	mov.l	er2,er2
	beq	.L520:16
	sub.l	er3,er3
	bld	#1,r0l
	rotxl.l	er3
	cmp.l	#5,er6
	bls	.L525
	mov.l	er3,er3
	beq	.L526
	mov.l	er0,er4
	adds	#2,er4
	mov.l	er4,@(4,er7)
	mov.w	r1,@er0
	subs	#1,er6
	bra	.L522
.L526:
	mov.l	er0,@(4,er7)
.L522:
	sub.l	er3,er2
	mov.l	er2,@er7
	mov.l	er2,er5
	shlr.l	er5
	mov.l	er1,er4
	mov.w	r4,e4
	sub.w	r4,r4
	mov.w	r1,r4
	mov.l	er3,er2
	shll.l	er2
	add.l	er0,er2
	sub.l	er3,er3
.L523:
	mov.l	er4,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L523
	mov.l	@er7,er2
	btst	#0,r2l
	beq	.L520
	and	#254,r2l
	sub.l	er2,er6
	shll.l	er2
	mov.l	@(4,er7),er3
	add.l	er3,er2
	bra	.L521
.L525:
	mov.l	er0,er2
.L521:
	mov.w	r1,@er2
	mov.l	er6,er6
	beq	.L520
	mov.w	r1,@(2,er2)
	cmp.l	#1,er6
	beq	.L520
	mov.w	r1,@(4,er2)
	cmp.l	#2,er6
	beq	.L520
	mov.w	r1,@(6,er2)
	cmp.l	#3,er6
	beq	.L520
	mov.w	r1,@(8,er2)
	cmp.l	#4,er6
	beq	.L520
	mov.w	r1,@(10,er2)
.L520:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	cmp.l	er1,er0
	bhs	.L550
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L549:16
.L552:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L552
	bra	.L549:16
.L550:
	beq	.L549:16
	mov.l	er2,er2
	beq	.L549:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#6,er3
	bls	.L553
	mov.l	er1,er3
	or.l	er0,er3
	and.l	#3,er3
	bne	.L553
	mov.l	er0,er4
	adds	#1,er4
	mov.l	er1,er3
	sub.l	er4,er3
	cmp.l	#2,er3
	bls	.L553
	mov.l	er1,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er0,er5
	add.l	er6,er5
.L556:
	mov.l	@er0+,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er0,er5
	bne	.L556
	add.l	er6,er1
	mov.l	er2,er3
	sub.l	er6,er3
	cmp.l	er6,er2
	beq	.L549
	mov.b	@er5,r2l
	mov.b	r2l,@er1
	cmp.l	#1,er3
	beq	.L549
	mov.b	@(1,er5),r2l
	mov.b	r2l,@(1,er1)
	cmp.l	#2,er3
	beq	.L549
	mov.b	@(2,er5),r2l
	mov.b	r2l,@(2,er1)
	bra	.L549
.L553:
	add.l	er0,er2
.L559:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
	cmp.l	er0,er2
	bne	.L559
.L549:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
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
	bmi	.L582
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L587
.L586:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L586
.L587:
	bra	.L583
.L582:
	mov.l	er1,er3
	mov.w	#31,r0
	sub.w	r2,r0
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L589
.L588:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L588
.L589:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L591
.L590:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L590
.L591:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L593
.L592:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L592
.L593:
.L583:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L584
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L595
.L594:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L594
.L595:
	bra	.L585
.L584:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L597
.L596:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L596
.L597:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L599
.L598:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L598
.L599:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L601
.L600:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L600
.L601:
.L585:
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
	bmi	.L603
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L608
.L607:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L607
.L608:
	bra	.L604
.L603:
	mov.l	er0,er3
	mov.w	#31,r0
	sub.w	r2,r0
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L610
.L609:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L609
.L610:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L612
.L611:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L611
.L612:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L614
.L613:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L613
.L614:
.L604:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L605
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L616
.L615:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L615
.L616:
	bra	.L606
.L605:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L618
.L617:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L617
.L618:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L620
.L619:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L619
.L620:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L622
.L621:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L621
.L622:
.L606:
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
	ble	.L627
.L624:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L624
.L627:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L632
.L629:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L629
.L632:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L637
.L634:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L634
.L637:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L642
.L639:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L639
.L642:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L647
.L644:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L644
.L647:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L652
.L649:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L649
.L652:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L657
.L654:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L654
.L657:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L662
.L659:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L659
.L662:
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
	sub.l	#32,er7
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
	sub.l	er4,er4
	mov.b	r5h,r4h
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
	mov.l	er2,@(8,er7)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	er2,@(12,er7)
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
	mov.l	er2,@(20,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(20,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(20,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(20,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
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
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er2
	mov.l	@(8,er7),er3
	or.l	er3,er2
	mov.l	er2,er4
	mov.l	@(12,er7),er5
	mov.l	@(4,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(4,er7),er2
	mov.l	@(20,er7),er3
	cmp.l	er2,er3
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(16,er7)
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er1
	mov.l	@(20,er7),er2
	cmp.l	er2,er1
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	and	#0,r0l
	sub.w	e0,e0
	or.l	er0,er4
	mov.l	er4,er0
	mov.l	er5,er1
	mov.l	@(4,er7),er2
	mov.w	e2,r4
	mov.b	r4l,r4h
	mov.b	r2h,r4l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r4,e2
	sub.w	r2,r2
	extu.w	e2
	or.l	er2,er0
	add.l	#32,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_bswap_64, .-_bswap_64
	.align 1
	.global _ffs
_ffs:
	btst	#0,r0l
	bne	.L701
	btst	#1,r0l
	bne	.L702
	btst	#2,r0l
	bne	.L703
	btst	#3,r0l
	bne	.L704
	btst	#4,r0l
	bne	.L705
	btst	#5,r0l
	bne	.L706
	btst	#6,r0l
	bne	.L707
	btst	#7,r0l
	bne	.L708
	btst	#0,r0h
	bne	.L709
	btst	#1,r0h
	bne	.L710
	btst	#2,r0h
	bne	.L711
	btst	#3,r0h
	bne	.L712
	btst	#4,r0h
	bne	.L713
	btst	#5,r0h
	bne	.L714
	btst	#6,r0h
	bne	.L715
	mov.w	r0,r0
	beq	.L716
	mov.w	#16,r0
	rts
.L701:
	mov.w	#1,r0
	rts
.L702:
	mov.w	#2,r0
	rts
.L703:
	mov.w	#3,r0
	rts
.L704:
	mov.w	#4,r0
	rts
.L705:
	mov.w	#5,r0
	rts
.L706:
	mov.w	#6,r0
	rts
.L707:
	mov.w	#7,r0
	rts
.L708:
	mov.w	#8,r0
	rts
.L709:
	mov.w	#9,r0
	rts
.L710:
	mov.w	#10,r0
	rts
.L711:
	mov.w	#11,r0
	rts
.L712:
	mov.w	#12,r0
	rts
.L713:
	mov.w	#13,r0
	rts
.L714:
	mov.w	#14,r0
	rts
.L715:
	mov.w	#15,r0
	rts
.L716:
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L720
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L723
	mov.w	#1,r0
.L719:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L719
	rts
.L720:
	sub.w	r0,r0
.L723:
	rts
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 1
	.global _gl_isinff
_gl_isinff:
	sub.w	r0,r0
	rts
	.size	_gl_isinff, .-_gl_isinff
	.align 1
	.global _gl_isinfd
_gl_isinfd:
	sub.w	r0,r0
	rts
	.size	_gl_isinfd, .-_gl_isinfd
	.align 1
	.global _gl_isinfl
_gl_isinfl:
	sub.w	r0,r0
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
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er0,er6
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___addsf3
	mov.l	er0,er5
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L729
	mov.w	r4,r4
	bpl	.L738
	mov.l	#1056964608,er1
	bra	.L732
.L738:
	mov.l	#1073741824,er1
.L732:
	mov.l	er6,er5
	btst	#0,r4l
	beq	.L733
.L735:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L733:
	mov.w	r4,r4
	bpl	.L734
	inc #1,r4
.L734:
	shar.w	r4
	beq	.L729
.L737:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L735
	mov.w	r4,r4
	bpl	.L736
	inc #1,r4
.L736:
	shar.w	r4
	bra	.L737
.L729:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er6
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
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L745
	mov.w	r4,r4
	bpl	.L753
	mov.l	#1056964608,er1
	bra	.L747
.L753:
	mov.l	#1073741824,er1
.L747:
	btst	#0,r4l
	beq	.L748
.L750:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L748:
	mov.w	r4,r4
	bpl	.L749
	inc #1,r4
.L749:
	shar.w	r4
	beq	.L745
.L752:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L750
	mov.w	r4,r4
	bpl	.L751
	inc #1,r4
.L751:
	shar.w	r4
	bra	.L752
.L745:
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
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er0,er6
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___addsf3
	mov.l	er0,er5
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L761
	mov.w	r4,r4
	bpl	.L770
	mov.l	#1056964608,er1
	bra	.L764
.L770:
	mov.l	#1073741824,er1
.L764:
	mov.l	er6,er5
	btst	#0,r4l
	beq	.L765
.L767:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L765:
	mov.w	r4,r4
	bpl	.L766
	inc #1,r4
.L766:
	shar.w	r4
	beq	.L761
.L769:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L767
	mov.w	r4,r4
	bpl	.L768
	inc #1,r4
.L768:
	shar.w	r4
	bra	.L769
.L761:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_ldexpl, .-_ldexpl
	.align 1
	.global _memxor
_memxor:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er2,er2
	beq	.L777:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#3,er3
	bls	.L778
	mov.l	er0,er3
	or.l	er1,er3
	and.l	#3,er3
	bne	.L778
	mov.l	er0,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er6,@er7
	mov.l	er1,er5
	add.l	er6,er5
.L779:
	mov.l	@er1+,er4
	mov.l	@er3,er6
	xor.l	er6,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er1,er5
	bne	.L779
	mov.l	er0,er3
	mov.l	@er7,er4
	add.l	er4,er3
	mov.l	er2,er1
	sub.l	er4,er1
	cmp.l	er4,er2
	beq	.L777
	mov.b	@er3,r2l
	mov.b	@er5,r4l
	xor	r4l,r2l
	mov.b	r2l,@er3
	cmp.l	#1,er1
	beq	.L777
	mov.b	@(1,er3),r2l
	mov.b	@(1,er5),r4l
	xor	r4l,r2l
	mov.b	r2l,@(1,er3)
	cmp.l	#2,er1
	beq	.L777
	mov.b	@(2,er5),r2l
	mov.b	@(2,er3),r1l
	xor	r1l,r2l
	mov.b	r2l,@(2,er3)
	bra	.L777
.L778:
	mov.l	er0,er3
	add.l	er1,er2
.L781:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er1,er2
	bne	.L781
.L777:
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er4,@-er7
	mov.b	@er0,r3l
	beq	.L801
	mov.l	er0,er3
.L796:
	adds	#1,er3
	mov.b	@er3,r4l
	bne	.L796
	bra	.L795
.L801:
	mov.l	er0,er3
.L795:
	mov.l	er2,er2
	bne	.L797
	bra	.L798
.L799:
	adds	#1,er1
	adds	#1,er3
	dec.l	#1,er2
	beq	.L798
.L797:
	mov.b	@er1,r4l
	mov.b	r4l,@er3
	mov.b	r4l,r4l
	bne	.L799
	bra	.L800
.L798:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
.L800:
	mov.l	@er7+,er4
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er1,er1
	bne	.L808
	rts
.L810:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L808
	rts
.L808:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L810
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L814
	bra	.L818
.L816:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L815
.L817:
	mov.b	@er2,r3l
	bne	.L816
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L818
.L814:
	mov.l	er1,er2
	bra	.L817
.L818:
	sub.l	er0,er0
.L815:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L822:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r4,r1
	bne	.L821
	mov.l	er2,er0
.L821:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L822
	mov.l	@er7+,er4
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#12,er7
	mov.l	er1,er2
	mov.l	er1,@(4,er7)
	mov.b	@er1,r4l
	beq	.L824
.L826:
	adds	#1,er2
	mov.b	@er2,r3l
	bne	.L826
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	beq	.L824
	subs	#1,er2
	mov.l	er2,@(8,er7)
	bra	.L834
.L833:
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(4,er7),er6
	mov.l	er0,er3
	mov.b	r4l,r1l
	mov.b	r4l,@(3,er7)
	bra	.L828
.L832:
	adds	#1,er3
	mov.l	er6,er4
	adds	#1,er4
	mov.b	@er3,r2l
	bne	.L829
	mov.b	@(3,er7),r4l
	mov.b	@(1,er6),r1l
	bra	.L830
.L829:
	mov.b	@er4,r1l
	beq	.L843
	mov.l	er4,er6
.L828:
	cmp.l	er5,er3
	beq	.L844
	cmp.b	r1l,r2l
	beq	.L832
	bra	.L843
.L844:
	mov.b	@(3,er7),r4l
.L830:
	cmp.b	r1l,r2l
	beq	.L824
	bra	.L831
.L843:
	mov.b	@(3,er7),r4l
.L831:
	adds	#1,er0
.L834:
	mov.b	@er0,r2l
	cmp.b	r4l,r2l
	beq	.L833
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L834
	sub.l	er0,er0
.L824:
	add.l	#12,er7
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
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	sub.l	er1,er1
	mov.l	er0,er0
	bpl	.L854
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L849
	bra	.L848
.L854:
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L849
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L849
.L848:
	xor.w	#32768,e4
.L849:
	mov.l	er4,er0
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
	sub.l	#16,er7
	mov.l	@(32,er7),er3
	beq	.L855:16
	cmp.l	er3,er1
	blo	.L866
	sub.l	er3,er1
	add.l	er0,er1
	cmp.l	er1,er0
	bhi	.L866
	mov.b	@er2+,r6l
	mov.l	er2,@(4,er7)
	subs	#1,er3
	mov.l	er3,@er7
.L861:
	mov.l	er0,er4
	mov.b	@er4+,r2l
	cmp.b	r6l,r2l
	bne	.L865
	mov.l	@(4,er7),er3
	mov.l	@er7,er2
	beq	.L855
.L860:
	mov.l	er4,er2
	mov.l	@er7,er5
	add.l	er4,er5
	mov.l	er1,@(8,er7)
	mov.l	er0,@(12,er7)
	bra	.L858
.L859:
	adds	#1,er2
	adds	#1,er3
	cmp.l	er5,er2
	beq	.L872
.L858:
	mov.b	@er2,r0l
	mov.b	@er3,r1l
	cmp.b	r1l,r0l
	beq	.L859
	mov.l	@(8,er7),er1
	cmp.l	er1,er4
	bhi	.L866
	mov.l	er4,er0
	mov.b	@er0+,r2l
	cmp.b	r2l,r6l
	bne	.L857
	mov.l	@(4,er7),er3
	mov.l	er4,er2
	mov.l	er0,er4
	mov.l	er2,er0
	bra	.L860
.L865:
	mov.l	er4,er0
.L857:
	cmp.l	er0,er1
	bhs	.L861
.L866:
	sub.l	er0,er0
	bra	.L855
.L872:
	mov.l	@(12,er7),er0
.L855:
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_memmem, .-_memmem
	.align 1
	.global _mempcpy
_mempcpy:
	mov.l	er4,@-er7
	mov.l	er0,er3
	mov.l	er2,er4
	beq	.L875
	mov.l	er4,er2
	jsr	@_memmove
	mov.l	er0,er3
.L875:
	add.l	er4,er3
	mov.l	er3,er0
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
	mov.l	er1,er6
	mov.l	er1,@er7
	sub.l	er1,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L900
	mov.l	er4,er5
	xor.w	#32768,e5
	mov.l	#3212836864,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L891
	mov.l	#3204448256,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L892:16
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er4,er0
	bra	.L879:16
.L900:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L893
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L901
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L894
	mov.w	r0,@er6
	mov.l	er4,er0
	bra	.L879:16
.L901:
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er4,er0
	bra	.L879:16
.L891:
	mov.l	er5,er4
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L882
.L893:
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L882:
	sub.w	r6,r6
.L888:
	inc #1,r6
	mov.l	er4,er5
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1073741824,er1
	mov.l	er5,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L888
	bra	.L889
.L892:
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L883
.L894:
	mov.l	er4,er5
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L883:
	mov.l	er5,er4
	sub.w	r6,r6
.L890:
	dec #1,r6
	mov.l	er4,er5
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	#1048576000,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L890
.L889:
	mov.l	@er7,er2
	mov.w	r6,@er2
	mov.l	er4,er0
	mov.w	@(6,er7),r2
	beq	.L879
	xor.w	#32768,e0
.L879:
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
	beq	.L909:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L908:
	sub.l	er2,er2
	mov.l	er2,@(24,er7)
	sub.l	er2,er2
	mov.b	r5l,r2l
	and	#1,r2l
	mov.l	er2,@(28,er7)
	sub.l	er0,er0
	mov.l	@(28,er7),er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L905
	sub.l	er6,er6
.L905:
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
	bne	.L908:16
	bra	.L902
.L909:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L902:
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
	blo	.L920
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L913
.L916:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L914
	dec #1,r0
	bne	.L912
	bra	.L922
.L920:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L912:
	mov.l	er1,er1
	bpl	.L916
	bra	.L913
.L914:
	mov.l	er3,er3
	beq	.L922
.L913:
	sub.l	er0,er0
.L918:
	cmp.l	er1,er4
	blo	.L917
	sub.l	er1,er4
	or.l	er3,er0
.L917:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L918
	bra	.L915
.L922:
	sub.l	er0,er0
.L915:
	mov.l	er2,er2
	beq	.L911
	mov.l	er4,er0
.L911:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L927
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L927:
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
	bne	.L932
	cmp.l	er3,er1
	beq	.L933
.L932:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L928
.L933:
	mov.w	#63,r0
.L928:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.l	er4,@-er7
	mov.w	r0,r2
	beq	.L937:16
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	mov.l	er3,er0
	and.w	r1,r0
	mov.w	r2,r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shal.b	r3l
	mov.b	r3h,r3l
	rotxl.w	r3
	and.b	#0x01,r3h
	mov.w	r1,r4
	shar.b	r4h
	mov.b	r4l,r4h
	rotxr.w	r4
	and.b	#0x80,r4l
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r1,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	r3
	mov.w	r1,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r1,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L934
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	rotl.w	r3
	rotl.w	r3
	rotl.w	r3
	and.w	#7,r3
	mov.w	r1,r4
	rotr.w	r4
	rotr.w	r4
	rotr.w	r4
	and.w	#57344,r4
	mov.w	r3,r3
	beq	.L934
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	rotl.w	r3
	rotl.w	r3
	and.w	#3,r3
	mov.w	r1,r4
	rotr.w	r4
	rotr.w	r4
	and.w	#49152,r4
	mov.w	r3,r3
	beq	.L934
	rotr.w	r1
	and.w	#32768,r1
	shll	r2h
	subx	r2h,r2h
	mov.b	r2h,r2l
	and.w	r1,r2
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r0,r3
	add.w	r3,r2
	mov.w	r2,r0
	bra	.L934
.L937:
	sub.w	r0,r0
.L934:
	mov.l	@er7+,er4
	rts
	.size	___mulsi3, .-___mulsi3
	.align 1
	.global ___cmovd
___cmovd:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#12,er7
	mov.w	r2,r4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	and	#248,r2l
	mov.w	r2,@(2,er7)
	cmp.l	er1,er0
	blo	.L981
	mov.w	r4,r2
	extu.l	er2
	add.l	er1,er2
	cmp.l	er2,er0
	bhi	.L981
	mov.w	r4,r2
	dec #1,r2
	mov.w	r4,r4
	bne	.L982:16
	bra	.L980:16
.L981:
	mov.w	r6,r6
	beq	.L984
	mov.l	er1,er2
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.l	er0,@(4,er7)
	mov.l	er1,er5
.L985:
	mov.l	@er2,er0
	mov.l	@(4,er2),er1
	mov.l	er0,@er3
	mov.l	er1,@(4,er3)
	adds	#4,er2
	adds	#4,er2
	adds	#4,er3
	adds	#4,er3
	cmp.l	er6,er2
	bne	.L985
	bra	.L1011
.L984:
	mov.w	r4,r4
	beq	.L980:16
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L987:16
.L1011:
	mov.l	@(4,er7),er0
	mov.l	er5,er1
	mov.w	@(2,er7),r3
	cmp.w	r3,r4
	bls	.L980:16
	mov.w	r4,r2
	sub.w	r3,r2
	mov.w	r2,@(4,er7)
	dec #1,r2
	extu.l	er3
	cmp.w	#6,r2
	bls	.L987:16
	mov.l	er0,er2
	add.l	er3,er2
	mov.l	er5,er6
	add.l	er3,er6
	mov.l	er6,@(8,er7)
	mov.l	er3,er5
	adds	#1,er5
	add.l	er1,er5
	mov.l	er2,er6
	sub.l	er5,er6
	cmp.l	#2,er6
	bls	.L987
	mov.l	@(8,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L987
	mov.l	er6,er3
	mov.w	@(4,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L990:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L990
	mov.w	@(4,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@(2,er7),r5
	add.w	r5,r2
	and.w	#3,r3
	beq	.L980
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	mov.w	r2,r3
	inc #1,r3
	cmp.w	r3,r4
	bls	.L980
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L980
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L980
.L987:
	mov.l	er1,er2
	add.l	er3,er2
	add.l	er3,er0
	adds	#1,er1
	add.l	er3,er1
	dec #1,r4
	mov.w	@(2,er7),r3
	sub.w	r3,r4
	extu.l	er4
	add.l	er4,er1
.L992:
	mov.b	@er2+,r3l
	mov.b	r3l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L992
	bra	.L980
.L982:
	extu.l	er2
.L994:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L994
.L980:
	add.l	#12,er7
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
	subs	#4,er7
	mov.w	r2,r5
	shlr.w	r5
	cmp.l	er1,er0
	blo	.L1013
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L1013
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L1014:16
	bra	.L1012:16
.L1013:
	mov.w	r5,r5
	beq	.L1016
	mov.w	r5,r3
	dec #1,r3
	cmp.w	#8,r3
	bls	.L1017
	mov.l	er1,er3
	or.l	er0,er3
	and.l	#3,er3
	bne	.L1017
	mov.l	er1,er3
	adds	#2,er3
	cmp.l	er3,er0
	beq	.L1017
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r6,@er7
	mov.l	er1,er4
	mov.w	r6,r3
	extu.l	er3
	mov.l	er3,er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er0,er3
.L1020:
	mov.l	@er4+,er5
	mov.l	er5,@er3
	adds	#4,er3
	cmp.l	er6,er4
	bne	.L1020
	mov.w	@(2,er7),r5
	mov.w	@er7,r3
	shll.w	r3
	cmp.w	r3,r5
	beq	.L1016
	extu.l	er3
	shll.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.w	@er4,r4
	add.l	er0,er3
	mov.w	r4,@er3
	bra	.L1016
.L1017:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er5
	shll.l	er5
	add.l	er1,er5
.L1022:
	mov.w	@er4+,r6
	mov.w	r6,@er3
	adds	#2,er3
	cmp.l	er4,er5
	bne	.L1022
.L1016:
	btst	#0,r2l
	beq	.L1012
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L1012
.L1014:
	mov.w	r3,r2
	extu.l	er2
.L1025:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1025
.L1012:
	adds	#4,er7
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
	sub.l	#8,er7
	mov.w	r2,r4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	and	#252,r2l
	mov.w	r2,@er7
	cmp.l	er1,er0
	blo	.L1041
	mov.w	r4,r2
	extu.l	er2
	add.l	er1,er2
	cmp.l	er2,er0
	bhi	.L1041
	mov.w	r4,r2
	dec #1,r2
	mov.w	r4,r4
	bne	.L1042:16
	bra	.L1040:16
.L1041:
	mov.w	r6,r6
	bne	.L1044
	mov.w	r4,r4
	beq	.L1040:16
	mov.w	@er7,r3
	extu.l	er3
	bra	.L1045:16
.L1044:
	mov.w	r6,r2
	dec #1,r2
	cmp.w	#8,r2
	bls	.L1046
	mov.l	er0,er2
	or.l	er1,er2
	and.l	#3,er2
	bne	.L1046
	mov.l	er1,er2
	adds	#2,er2
	cmp.l	er2,er0
	beq	.L1046
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r5,@(2,er7)
	mov.l	er1,er3
	mov.w	r5,r2
	extu.l	er2
	mov.l	er2,er5
	shll.l	er5
	shll.l	er5
	add.l	er1,er5
	mov.w	r6,@(4,er7)
	mov.l	er0,er2
.L1049:
	mov.l	@er3+,er6
	mov.l	er6,@er2
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L1049
	mov.w	@(4,er7),r6
	mov.w	@(2,er7),r2
	shll.w	r2
	cmp.w	r2,r6
	beq	.L1052
	extu.l	er2
	shll.l	er2
	mov.l	er1,er3
	add.l	er2,er3
	mov.w	@er3,r3
	add.l	er0,er2
	mov.w	r3,@er2
	bra	.L1052
.L1046:
	mov.l	er1,er3
	mov.l	er0,er2
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L1051:
	mov.w	@er3+,r5
	mov.w	r5,@er2
	adds	#2,er2
	cmp.l	er6,er3
	bne	.L1051
.L1052:
	mov.w	@er7,r3
	cmp.w	r3,r4
	bls	.L1040:16
	mov.w	r4,r2
	sub.w	r3,r2
	mov.w	r2,@(2,er7)
	dec #1,r2
	extu.l	er3
	cmp.w	#6,r2
	bls	.L1045:16
	mov.l	er0,er2
	add.l	er3,er2
	mov.l	er1,er6
	add.l	er3,er6
	mov.l	er6,@(4,er7)
	mov.l	er3,er5
	adds	#1,er5
	add.l	er1,er5
	mov.l	er2,er6
	sub.l	er5,er6
	cmp.l	#2,er6
	bls	.L1045
	mov.l	@(4,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L1045
	mov.l	er6,er3
	mov.w	@(2,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L1055:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L1055
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@er7,r5
	add.w	r5,r2
	and.w	#3,r3
	beq	.L1040
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	mov.w	r2,r3
	inc #1,r3
	cmp.w	r3,r4
	bls	.L1040
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L1040
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L1040
.L1045:
	mov.l	er1,er2
	add.l	er3,er2
	add.l	er3,er0
	dec #1,r4
	mov.w	@er7,r5
	sub.w	r5,r4
	extu.l	er4
	adds	#1,er1
	add.l	er3,er1
	add.l	er4,er1
.L1057:
	mov.b	@er2+,r3l
	mov.b	r3l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L1057
	bra	.L1040
.L1042:
	extu.l	er2
.L1059:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1059
.L1040:
	add.l	#8,er7
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
	mov.w	r0,r0
	bmi	.L1090:16
	btst	#6,r0h
	bne	.L1091
	btst	#5,r0h
	bne	.L1092
	btst	#4,r0h
	bne	.L1093
	btst	#3,r0h
	bne	.L1094
	btst	#2,r0h
	bne	.L1095
	btst	#1,r0h
	bne	.L1096
	btst	#0,r0h
	bne	.L1097
	btst	#7,r0l
	bne	.L1098
	btst	#6,r0l
	bne	.L1099
	btst	#5,r0l
	bne	.L1100
	btst	#4,r0l
	bne	.L1101
	btst	#3,r0l
	bne	.L1102
	btst	#2,r0l
	bne	.L1103
	btst	#1,r0l
	bne	.L1104
	mov.w	r0,r0
	beq	.L1105
	mov.w	#15,r0
	rts
.L1091:
	mov.w	#1,r0
	rts
.L1092:
	mov.w	#2,r0
	rts
.L1093:
	mov.w	#3,r0
	rts
.L1094:
	mov.w	#4,r0
	rts
.L1095:
	mov.w	#5,r0
	rts
.L1096:
	mov.w	#6,r0
	rts
.L1097:
	mov.w	#7,r0
	rts
.L1098:
	mov.w	#8,r0
	rts
.L1099:
	mov.w	#9,r0
	rts
.L1100:
	mov.w	#10,r0
	rts
.L1101:
	mov.w	#11,r0
	rts
.L1102:
	mov.w	#12,r0
	rts
.L1103:
	mov.w	#13,r0
	rts
.L1104:
	mov.w	#14,r0
	rts
.L1090:
	sub.w	r0,r0
	rts
.L1105:
	mov.w	#16,r0
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	btst	#0,r0l
	bne	.L1109
	btst	#1,r0l
	bne	.L1110
	btst	#2,r0l
	bne	.L1111
	btst	#3,r0l
	bne	.L1112
	btst	#4,r0l
	bne	.L1113
	btst	#5,r0l
	bne	.L1114
	btst	#6,r0l
	bne	.L1115
	btst	#7,r0l
	bne	.L1116
	btst	#0,r0h
	bne	.L1117
	btst	#1,r0h
	bne	.L1118
	btst	#2,r0h
	bne	.L1119
	btst	#3,r0h
	bne	.L1120
	btst	#4,r0h
	bne	.L1121
	btst	#5,r0h
	bne	.L1122
	btst	#6,r0h
	bne	.L1123
	mov.w	r0,r0
	beq	.L1124
	mov.w	#15,r0
	rts
.L1109:
	sub.w	r0,r0
	rts
.L1110:
	mov.w	#1,r0
	rts
.L1111:
	mov.w	#2,r0
	rts
.L1112:
	mov.w	#3,r0
	rts
.L1113:
	mov.w	#4,r0
	rts
.L1114:
	mov.w	#5,r0
	rts
.L1115:
	mov.w	#6,r0
	rts
.L1116:
	mov.w	#7,r0
	rts
.L1117:
	mov.w	#8,r0
	rts
.L1118:
	mov.w	#9,r0
	rts
.L1119:
	mov.w	#10,r0
	rts
.L1120:
	mov.w	#11,r0
	rts
.L1121:
	mov.w	#12,r0
	rts
.L1122:
	mov.w	#13,r0
	rts
.L1123:
	mov.w	#14,r0
	rts
.L1124:
	mov.w	#16,r0
	rts
	.size	___ctzhi2, .-___ctzhi2
	.align 1
	.global ___fixunssfsi
___fixunssfsi:
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#1191182336,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L1130
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L1125
.L1130:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L1125:
	mov.l	@er7+,er4
	rts
	.size	___fixunssfsi, .-___fixunssfsi
	.align 1
	.global ___parityhi2
___parityhi2:
	mov.w	r0,r2
	sub.l	er0,er0
	bld	#1,r2l
	rotxl.l	er0
	mov.w	r2,r3
	and.w	#1,r3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#2,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#3,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#4,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#5,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#6,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#7,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#0,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#1,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#2,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#3,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#4,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#5,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er3,er3
	bld	#6,r2h
	rotxl.l	er3
	add.w	r3,r0
	rotl.w	r2
	and.w	#1,r2
	add.w	r2,r0
	and.w	#1,r0
	rts
	.size	___parityhi2, .-___parityhi2
	.align 1
	.global ___popcounthi2
___popcounthi2:
	sub.l	er2,er2
	bld	#1,r0l
	rotxl.l	er2
	mov.w	r0,r3
	and.w	#1,r3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#2,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#3,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#4,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#5,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#6,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#7,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#0,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#1,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#2,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#3,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#4,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#5,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er3,er3
	bld	#6,r0h
	rotxl.l	er3
	add.w	r3,r2
	rotl.w	r0
	and.w	#1,r0
	add.w	r2,r0
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L1136
	sub.l	er0,er0
.L1135:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L1135
	rts
.L1136:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L1141
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L1144
.L1140:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L1140
	rts
.L1141:
	sub.l	er0,er0
	rts
.L1144:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1155
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1148
.L1151:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1149
	dec #1,r0
	bne	.L1147
	bra	.L1157
.L1155:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1147:
	mov.l	er1,er1
	bpl	.L1151
	bra	.L1148
.L1149:
	mov.l	er3,er3
	beq	.L1157
.L1148:
	sub.l	er0,er0
.L1153:
	cmp.l	er1,er4
	blo	.L1152
	sub.l	er1,er4
	or.l	er3,er0
.L1152:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1153
	bra	.L1150
.L1157:
	sub.l	er0,er0
.L1150:
	mov.w	r2,r2
	beq	.L1146
	mov.l	er4,er0
.L1146:
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
	bmi	.L1163
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1162
	sub.w	r5,r5
.L1162:
	mov.w	r5,r0
	bra	.L1160
.L1163:
	mov.w	#-1,r0
.L1160:
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
	bmi	.L1167
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1166
	sub.w	r5,r5
.L1166:
	mov.w	r5,r0
	bra	.L1164
.L1167:
	mov.w	#-1,r0
.L1164:
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
	mov.w	r0,r5
	mov.w	r1,r1
	bpl	.L1171
	mov.w	r1,r3
	neg.w	r3
	and.l	#1,er1
	neg.l	er1
	mov.w	r1,r0
	and.w	r5,r0
	mov.w	r5,r1
	shll.w	r1
	mov.w	r3,r2
	shar.w	r2
	bne	.L1172
	bra	.L1173:16
.L1171:
	beq	.L1178:16
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	mov.l	er2,er0
	and.w	r5,r0
	mov.w	r5,r3
	shll.w	r3
	mov.w	r1,r2
	shar.w	r2
	bne	.L1175
	bra	.L1170:16
.L1172:
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r3
	shar.w	r3
	mov.w	r3,r1
	bne	.L1179
	bra	.L1173:16
.L1175:
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r1
	shar.w	r1
	beq	.L1170:16
	sub.w	r3,r3
	bra	.L1176
.L1179:
	mov.w	#1,r3
.L1176:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r5,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	shar.w	r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shar.b	r4h
	mov.b	r4l,r4h
	rotxr.w	r4
	and.b	#0x80,r4l
	mov.w	r1,r2
	shal.b	r2l
	mov.b	r2h,r2l
	rotxl.b	r2l
	subx	r2h,r2h
	mov.w	r2,r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r1,r2
	mov.b	r2h,r2l
	exts.w	r2
	beq	.L1177:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	r4
	mov.w	r1,r2
	mov.b	r2h,r2l
	exts.w	r2
	shar.w	r2
	beq	.L1177
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	r4
	shll.w	r4
	mov.w	r1,r2
	mov.b	r2h,r2l
	exts.w	r2
	shar.w	r2
	shar.w	r2
	beq	.L1177
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	r4
	shll.w	r4
	shll.w	r4
	mov.w	r1,r2
	mov.b	r2h,r2l
	exts.w	r2
	shar.w	r2
	shar.w	r2
	shar.w	r2
	beq	.L1177
	mov.b	r5l,r5h
	sub.b	r5l,r5l
	shll.w	r5
	shll.w	r5
	shll.w	r5
	shll.w	r5
	mov.b	r1h,r1l
	exts.w	r1
	shar.w	r1
	shar.w	r1
	shar.w	r1
	shar.w	r1
	neg.w	r1
	and.w	r5,r1
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r0,r2
	mov.w	r1,r0
	add.w	r2,r0
.L1177:
	mov.w	r3,r3
	beq	.L1170
.L1173:
	neg.w	r0
	bra	.L1170
.L1178:
	sub.w	r0,r0
.L1170:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er0
	bpl	.L1230
	neg.l	er0
	sub.w	r2,r2
	mov.w	#1,r5
	bra	.L1220
.L1230:
	mov.w	#1,r2
	sub.w	r5,r5
.L1220:
	mov.l	er1,er1
	bpl	.L1221
	neg.l	er1
	mov.w	r2,r5
.L1221:
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1231
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1223
.L1225:
	dec #1,r3
	bne	.L1222
.L1226:
	mov.l	er2,er2
	bne	.L1223
	sub.l	er0,er0
	bra	.L1224
.L1231:
	mov.w	#32,r3
	sub.l	er2,er2
	add.b	#1,r2l
.L1222:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er0
	bhi	.L1225
	bra	.L1226
.L1223:
	sub.l	er0,er0
.L1228:
	cmp.l	er1,er4
	blo	.L1227
	sub.l	er1,er4
	or.l	er2,er0
.L1227:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1228
.L1224:
	mov.w	r5,r5
	beq	.L1219
	neg.l	er0
.L1219:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er3
	bpl	.L1248
	neg.l	er3
	mov.w	#1,r5
	bra	.L1238
.L1248:
	sub.w	r5,r5
.L1238:
	mov.l	er1,er1
	bpl	.L1239
	neg.l	er1
.L1239:
	mov.l	er3,er0
	cmp.l	er3,er1
	blo	.L1249
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1246
.L1243:
	dec #1,r4
	bne	.L1240
.L1244:
	mov.l	er2,er2
	bne	.L1246
	mov.l	er3,er0
	bra	.L1242
.L1249:
	mov.w	#32,r4
	sub.l	er2,er2
	add.b	#1,r2l
.L1240:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er3
	bhi	.L1243
	bra	.L1244
.L1246:
	cmp.l	er1,er0
	blo	.L1245
	sub.l	er1,er0
.L1245:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1246
.L1242:
	mov.w	r5,r5
	beq	.L1237
	neg.l	er0
.L1237:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	cmp.w	r0,r1
	blo	.L1256
	beq	.L1309:16
	sub.w	r1,r1
	bra	.L1288:16
.L1256:
	mov.w	r1,r1
	bmi	.L1258:16
	mov.w	r1,r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1259:16
	mov.w	r3,r3
	bmi	.L1260:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1261:16
	mov.w	r3,r3
	bmi	.L1262:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1263:16
	mov.w	r3,r3
	bmi	.L1264:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1265:16
	mov.w	r3,r3
	bmi	.L1266:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1267:16
	mov.w	r3,r3
	bmi	.L1268:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1269:16
	mov.w	r3,r3
	bmi	.L1270:16
	mov.w	r1,r3
	shar.b	r3h
	mov.b	r3l,r3h
	rotxr.w	r3
	and.b	#0x80,r3l
	cmp.w	r3,r0
	bls	.L1271:16
	mov.w	r3,r3
	bmi	.L1272:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	cmp.w	r3,r0
	bls	.L1273:16
	mov.w	r3,r3
	bmi	.L1274:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1275:16
	mov.w	r3,r3
	bmi	.L1276:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1277:16
	mov.w	r3,r3
	bmi	.L1278:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1279:16
	mov.w	r3,r3
	bmi	.L1280:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1281:16
	mov.w	r3,r3
	bmi	.L1282:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	rotr.w	r3
	and.w	#57344,r3
	cmp.w	r3,r0
	bls	.L1283:16
	mov.w	r3,r3
	bmi	.L1284:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	and.w	#49152,r3
	cmp.w	r3,r0
	bls	.L1285:16
	mov.w	r3,r3
	bmi	.L1286:16
	rotr.w	r1
	and.w	#32768,r1
	cmp.w	r1,r0
	bls	.L1287:16
	mov.w	r1,r1
	beq	.L1288:16
	bra	.L1366:16
.L1313:
	mov.w	#2,r4
	bra	.L1307
.L1314:
	mov.w	#4,r4
	bra	.L1307
.L1315:
	mov.w	#8,r4
	bra	.L1307
.L1316:
	mov.w	#16,r4
	bra	.L1307
.L1317:
	mov.w	#32,r4
	bra	.L1307
.L1318:
	mov.w	#64,r4
	bra	.L1307
.L1319:
	mov.w	#128,r4
	bra	.L1307
.L1320:
	mov.w	#256,r4
	bra	.L1307
.L1321:
	mov.w	#512,r4
	bra	.L1307
.L1322:
	mov.w	#1024,r4
	bra	.L1307
.L1323:
	mov.w	#2048,r4
	bra	.L1307
.L1324:
	mov.w	#4096,r4
	bra	.L1307
.L1325:
	mov.w	#8192,r4
	bra	.L1307
.L1326:
	mov.w	#16384,r4
.L1307:
	mov.w	r4,r6
	shlr.w	r6
	mov.w	r3,r5
	shlr.w	r5
	sub.w	r1,r1
.L1308:
	cmp.w	r5,r0
	blo	.L1290
	sub.w	r5,r0
	or.w	r6,r1
	bra	.L1290
.L1312:
	mov.w	r3,r1
	sub.w	r0,r0
.L1290:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1291
	sub.w	r6,r0
	or.w	r5,r1
.L1291:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1292
	sub.w	r6,r0
	or.w	r5,r1
.L1292:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1293
	sub.w	r6,r0
	or.w	r5,r1
.L1293:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1294
	sub.w	r6,r0
	or.w	r5,r1
.L1294:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1295
	sub.w	r6,r0
	or.w	r5,r1
.L1295:
	mov.w	r4,r5
	shal.b	r5l
	mov.b	r5h,r5l
	rotxl.w	r5
	and.b	#0x01,r5h
	mov.w	r3,r6
	shal.b	r6l
	mov.b	r6h,r6l
	rotxl.w	r6
	and.b	#0x01,r6h
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1296
	sub.w	r6,r0
	or.w	r5,r1
.L1296:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1297
	sub.w	r6,r0
	or.w	r5,r1
.L1297:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1298
	sub.w	r6,r0
	or.w	r5,r1
.L1298:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1299
	sub.w	r6,r0
	or.w	r5,r1
.L1299:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288:16
	cmp.w	r6,r0
	blo	.L1300
	sub.w	r6,r0
	or.w	r5,r1
.L1300:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1288
	cmp.w	r6,r0
	blo	.L1301
	sub.w	r6,r0
	or.w	r5,r1
.L1301:
	mov.w	r4,r5
	rotl.w	r5
	rotl.w	r5
	rotl.w	r5
	and.w	#7,r5
	mov.w	r3,r6
	rotl.w	r6
	rotl.w	r6
	rotl.w	r6
	and.w	#7,r6
	mov.w	r5,r5
	beq	.L1288
	cmp.w	r6,r0
	blo	.L1302
	sub.w	r6,r0
	or.w	r5,r1
.L1302:
	mov.w	r4,r5
	rotl.w	r5
	rotl.w	r5
	and.w	#3,r5
	mov.w	r3,r6
	rotl.w	r6
	rotl.w	r6
	and.w	#3,r6
	mov.w	r5,r5
	beq	.L1288
	cmp.w	r6,r0
	blo	.L1303
	sub.w	r6,r0
	or.w	r5,r1
.L1303:
	rotl.w	r3
	and.w	#1,r3
	cmp.w	#16384,r4
	bne	.L1304
	bra	.L1288
.L1309:
	mov.w	#1,r1
	sub.w	r0,r0
	bra	.L1288
.L1304:
	cmp.w	r3,r0
	blo	.L1311
	sub.w	r3,r0
	or	#1,r1l
	bra	.L1288
.L1311:
	sub.w	r0,r0
.L1288:
	mov.w	r2,r2
	bne	.L1255:16
	mov.w	r1,r0
	bra	.L1255:16
.L1287:
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r0,r0
	bmi	.L1312:16
	bra	.L1307:16
.L1259:
	blo	.L1313:16
	sub.w	r3,r0
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1261:
	blo	.L1314:16
	sub.w	r3,r0
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1263:
	blo	.L1315:16
	sub.w	r3,r0
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1265:
	blo	.L1316:16
	sub.w	r3,r0
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1267:
	blo	.L1317:16
	sub.w	r3,r0
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1269:
	blo	.L1318:16
	sub.w	r3,r0
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1271:
	blo	.L1319:16
	sub.w	r3,r0
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1273:
	blo	.L1320:16
	sub.w	r3,r0
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1275:
	blo	.L1321:16
	sub.w	r3,r0
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1277:
	blo	.L1322:16
	sub.w	r3,r0
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1279:
	blo	.L1323:16
	sub.w	r3,r0
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1281:
	blo	.L1324:16
	sub.w	r3,r0
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1283:
	blo	.L1325:16
	sub.w	r3,r0
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1285:
	blo	.L1326:16
	sub.w	r3,r0
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1290:16
.L1366:
	add.b	#128,r0h
	mov.w	#16384,r5
	mov.w	r5,r6
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r3,r1
	bra	.L1308:16
.L1258:
	sub.w	r1,r0
	mov.w	#1,r1
	bra	.L1288:16
.L1260:
	sub.w	r3,r0
	and	#127,r1h
	mov.w	r1,r5
	mov.w	#1,r6
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1262:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2,r6
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1264:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4,r6
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1266:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8,r6
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1268:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#16,r6
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1270:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#32,r6
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1272:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#64,r6
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1274:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#128,r6
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1276:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#256,r6
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1278:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#512,r6
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1280:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#1024,r6
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1282:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2048,r6
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1284:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4096,r6
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1286:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8192,r6
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1308:16
.L1255:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er1,er0
	bhi	.L1376
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1369
.L1372:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1370
	dec #1,r0
	bne	.L1368
	bra	.L1378
.L1376:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1368:
	mov.l	er1,er1
	bpl	.L1372
	bra	.L1369
.L1370:
	mov.l	er3,er3
	beq	.L1378
.L1369:
	sub.l	er0,er0
.L1374:
	cmp.l	er1,er4
	blo	.L1373
	sub.l	er1,er4
	or.l	er3,er0
.L1373:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1374
	bra	.L1371
.L1378:
	sub.l	er0,er0
.L1371:
	mov.w	r2,r2
	beq	.L1367
	mov.l	er4,er0
.L1367:
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
	beq	.L1382
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1387
.L1386:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1386
.L1387:
	sub.l	er0,er0
	bra	.L1383
.L1382:
	mov.w	r2,r2
	beq	.L1385
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1389
.L1388:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1388
.L1389:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1391
.L1390:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1390
.L1391:
	mov.b	r2l,r2l
	ble	.L1393
.L1392:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1392
.L1393:
	or.l	er3,er4
.L1383:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L1381
.L1385:
	mov.l	er0,er2
	mov.l	er1,er3
.L1381:
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
	beq	.L1395
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1400
.L1399:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1399
.L1400:
	bra	.L1396
.L1395:
	mov.w	r2,r2
	beq	.L1398
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1402
.L1401:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1401
.L1402:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1404
.L1403:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1403
.L1404:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L1406
.L1405:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L1405
.L1406:
	or.l	er3,er0
.L1396:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1394
.L1398:
	mov.l	er0,er2
	mov.l	er1,er3
.L1394:
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
	sub.l	#32,er7
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
	sub.l	er4,er4
	mov.b	r5h,r4h
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
	mov.l	er2,@(8,er7)
	mov.l	er1,er2
	or.l	er5,er2
	mov.l	er2,@(12,er7)
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
	mov.l	er2,@(20,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(20,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(20,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	mov.l	er2,er4
	add.l	er1,er4
	mov.l	er5,er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er5
	mov.l	@(20,er7),er2
	cmp.l	er2,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
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
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er2
	mov.l	@(8,er7),er3
	or.l	er3,er2
	mov.l	er2,er4
	mov.l	@(12,er7),er5
	mov.l	@(4,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(4,er7),er2
	mov.l	@(20,er7),er3
	cmp.l	er2,er3
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(16,er7)
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,er1
	mov.l	@(20,er7),er2
	cmp.l	er2,er1
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	and	#0,r0l
	sub.w	e0,e0
	or.l	er0,er4
	mov.l	er4,er0
	mov.l	er5,er1
	mov.l	@(4,er7),er2
	mov.w	e2,r4
	mov.b	r4l,r4h
	mov.b	r2h,r4l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r4,e2
	sub.w	r2,r2
	extu.w	e2
	or.l	er2,er0
	add.l	#32,er7
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
	bls	.L1442
	sub.l	er0,er0
.L1442:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1458
.L1457:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1457
.L1458:
	sub.l	er1,er1
	mov.b	r2h,r1h
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1443
	sub.l	er3,er3
.L1443:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1460
.L1459:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1459
.L1460:
	add.l	er3,er0
	sub.l	er1,er1
	mov.b	r2l,r1l
	and	#240,r1l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1444
	sub.l	er3,er3
.L1444:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1462
.L1461:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1461
.L1462:
	add.l	er0,er3
	mov.l	er3,er4
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#12,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1445
	sub.l	er3,er3
.L1445:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1464
.L1463:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1463
.L1464:
	btst	#1,r2l
	bne	.L1446
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L1447
.L1446:
	sub.w	r0,r0
.L1447:
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
	blt	.L1469
	bgt	.L1470
	cmp.l	er3,er5
	blo	.L1469
	bhi	.L1470
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1465
.L1469:
	sub.l	er0,er0
	bra	.L1465
.L1470:
	sub.l	er0,er0
	add.b	#2,r0l
.L1465:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___cmpdi2, .-___cmpdi2
	.align 1
	.global ___aeabi_lcmp
___aeabi_lcmp:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er1,er5
	mov.l	@(12,er7),er2
	mov.l	@(16,er7),er3
	cmp.l	er2,er0
	blt	.L1476
	bgt	.L1475
	cmp.l	er3,er5
	blo	.L1476
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1471
	sub.l	er0,er0
	bra	.L1471
.L1475:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1471
.L1476:
	sub.l	er0,er0
	subs	#1,er0
.L1471:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
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
	beq	.L1478
	sub.l	er0,er0
.L1478:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L1495
.L1494:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1494
.L1495:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1479
	sub.l	er3,er3
.L1479:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1497
.L1496:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1496
.L1497:
	add.l	er0,er3
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#15,r0l
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L1480
	sub.l	er1,er1
.L1480:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L1499
.L1498:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1498
.L1499:
	add.l	er3,er1
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#3,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1481
	sub.l	er3,er3
.L1481:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1501
.L1500:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1500
.L1501:
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
	beq	.L1503
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1508
.L1507:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1507
.L1508:
	sub.l	er1,er1
	bra	.L1504
.L1503:
	mov.w	r2,r2
	beq	.L1506
	mov.l	er0,er1
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L1510
.L1509:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1509
.L1510:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1512
.L1511:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1511
.L1512:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L1514
.L1513:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1513
.L1514:
	or.l	er3,er0
.L1504:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1502
.L1506:
	mov.l	er0,er2
	mov.l	er1,er3
.L1502:
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
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@(40,er7),er2
	mov.l	er2,@(8,er7)
	mov.l	@(44,er7),er2
	mov.l	er2,@(12,er7)
	mov.w	@(6,er7),r4
	mov.w	@(14,er7),r2
	mulxu.w	r2,er4
	mov.l	er4,er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er1,er3
	mov.w	e3,r3
	extu.l	er3
	mov.w	@(14,er7),r0
	mulxu.w	r3,er0
	add.l	er2,er0
	mov.w	r0,r5
	extu.l	er5
	mov.l	@(12,er7),er1
	mov.w	e1,r1
	extu.l	er1
	mov.w	@(6,er7),r2
	mulxu.w	r1,er2
	add.l	er5,er2
	extu.l	er4
	mov.l	er2,er5
	mov.w	r5,e5
	sub.w	r5,r5
	add.l	er5,er4
	mov.w	e0,r0
	extu.l	er0
	mulxu.w	r1,er3
	add.l	er0,er3
	mov.w	e2,r2
	extu.l	er2
	add.l	er2,er3
	mov.l	er3,er5
	mov.l	@(8,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	@er7,er1
	mov.l	@(12,er7),er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	er5,er0
	mov.l	er4,er1
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
	bne	.L1518
	sub.l	er6,er6
.L1518:
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
	ble	.L1521
.L1520:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1520
.L1521:
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
	ble	.L1524
.L1523:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1523
.L1524:
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
	bhi	.L1526
	sub.l	er0,er0
.L1526:
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
	mov.l	er0,er6
	mov.w	r1,@(2,er7)
	mov.w	r1,r4
	mov.l	#1065353216,er5
	btst	#0,r1l
	beq	.L1531
.L1534:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1531:
	mov.w	r4,r4
	bpl	.L1532
	inc #1,r4
.L1532:
	shar.w	r4
	beq	.L1533
.L1536:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1534
	mov.w	r4,r4
	bpl	.L1535
	inc #1,r4
.L1535:
	shar.w	r4
	bra	.L1536
.L1533:
	mov.w	@(2,er7),r2
	bpl	.L1530
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1530:
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
	mov.l	er0,er6
	mov.w	r1,@(2,er7)
	mov.w	r1,r4
	mov.l	#1065353216,er5
	btst	#0,r1l
	beq	.L1540
.L1543:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1540:
	mov.w	r4,r4
	bpl	.L1541
	inc #1,r4
.L1541:
	shar.w	r4
	beq	.L1542
.L1545:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1543
	mov.w	r4,r4
	bpl	.L1544
	inc #1,r4
.L1544:
	shar.w	r4
	bra	.L1545
.L1542:
	mov.w	@(2,er7),r2
	bpl	.L1539
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1539:
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
	blo	.L1552
	bhi	.L1553
	cmp.l	er3,er5
	blo	.L1552
	bhi	.L1553
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1548
.L1552:
	sub.l	er0,er0
	bra	.L1548
.L1553:
	sub.l	er0,er0
	add.b	#2,r0l
.L1548:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___ucmpdi2, .-___ucmpdi2
	.align 1
	.global ___aeabi_ulcmp
___aeabi_ulcmp:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er1,er5
	mov.l	@(12,er7),er2
	mov.l	@(16,er7),er3
	cmp.l	er2,er0
	blo	.L1559
	bhi	.L1558
	cmp.l	er3,er5
	blo	.L1559
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1554
	sub.l	er0,er0
	bra	.L1554
.L1558:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1554
.L1559:
	sub.l	er0,er0
	subs	#1,er0
.L1554:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
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
	.global ___lesf2
	.global ___gesf2
	.global ___ltsf2
	.global ___subsf3
	.global ___gtsf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.end
