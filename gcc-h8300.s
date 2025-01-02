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
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er0,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er1,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L200
	mov.w	r2,r2
	beq	.L205
	mov.l	er1,er0
	bra	.L199
.L200:
	mov.l	er1,@er7
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L205
	mov.l	@er7,er1
	mov.l	er1,er4
.L205:
	mov.l	er4,er0
.L199:
	adds	#4,er7
	mov.l	@er7+,er4
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	mov.l	er4,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er0,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er1,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L209
	mov.w	r2,r2
	beq	.L214
	mov.l	er1,er0
	bra	.L208
.L209:
	mov.l	er1,@er7
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L214
	mov.l	@er7,er1
	mov.l	er1,er4
.L214:
	mov.l	er4,er0
.L208:
	adds	#4,er7
	mov.l	@er7+,er4
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
	mov.l	er4,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er0,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er1,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L218
	mov.w	r2,r2
	beq	.L223
	mov.l	er1,er0
	bra	.L217
.L218:
	mov.l	er1,@er7
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L223
	mov.l	@er7,er1
	mov.l	er1,er4
.L223:
	mov.l	er4,er0
.L217:
	adds	#4,er7
	mov.l	@er7+,er4
	rts
	.size	_fmaxl, .-_fmaxl
	.align 1
	.global _fmin
_fmin:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er1,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L227
	mov.w	r2,r2
	beq	.L232
	bra	.L226
.L227:
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L232
	mov.l	er5,er4
.L232:
	mov.l	er4,er0
.L226:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmin, .-_fmin
	.align 1
	.global _fminf
_fminf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er1,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L236
	mov.w	r2,r2
	beq	.L241
	bra	.L235
.L236:
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L241
	mov.l	er5,er4
.L241:
	mov.l	er4,er0
.L235:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminf, .-_fminf
	.align 1
	.global _fminl
_fminl:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	mov.l	er1,er4
	mov.l	er0,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er1,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L245
	mov.w	r2,r2
	beq	.L250
	bra	.L244
.L245:
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L250
	mov.l	er5,er4
.L250:
	mov.l	er4,er0
.L244:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L254
	mov.l	#_digits,er1
.L255:
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
	bne	.L255
.L254:
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
	blo	.L260
	sub.l	er6,er6
.L260:
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
	bne	.L262
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L262:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L267
	mov.l	er0,@(4,er2)
.L267:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L270
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L270:
	mov.l	@(4,er0),er3
	beq	.L278
	mov.l	er2,@er3
.L278:
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
	beq	.L280
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
.L282:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L279
	adds	#1,er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er6,er2
	bne	.L282
	mov.l	er2,er1
	mov.l	@(12,er7),er3
.L280:
	mov.l	er1,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(32,er7),er2
	beq	.L279
	mov.l	@er7,er1
	mov.l	er5,er0
	jsr	@_memmove
.L279:
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
	beq	.L296
	sub.l	er5,er5
	mov.l	er1,@(4,er7)
	mov.l	er4,er6
	mov.l	er0,@er7
.L298:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L295
	adds	#1,er5
	mov.l	@(24,er7),er2
	add.l	er2,er6
	mov.l	@(4,er7),er2
	cmp.l	er5,er2
	bne	.L298
.L296:
	sub.l	er6,er6
.L295:
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
	bpl	.L309
	neg.w	r0
.L309:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
.L317:
	mov.b	@er0,r3l
	cmp.b	#32,r3l
	beq	.L311
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,r1
	add.w	#-9,r1
	cmp.w	#4,r1
	bls	.L311
	cmp.b	#43,r3l
	beq	.L312
	cmp.b	#45,r3l
	beq	.L313
	bra	.L328
.L312:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L330
	bra	.L322
.L311:
	adds	#1,er0
	bra	.L317
.L313:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bhi	.L322
	mov.w	#1,r0
	mov.w	r0,@(2,er7)
	bra	.L315
.L323:
	mov.l	er0,er3
.L330:
	sub.w	r0,r0
	mov.w	r0,@(2,er7)
.L315:
	sub.w	r0,r0
	mov.w	#10,r6
.L319:
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
	bls	.L319
	bra	.L329
.L328:
	mov.w	r2,r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L323
	bra	.L322
.L329:
	mov.w	@(2,er7),r2
	bne	.L310
	mov.w	r4,r0
	sub.w	r1,r0
	bra	.L310
.L322:
	sub.w	r0,r0
.L310:
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
.L338:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L332
	mov.b	r2l,r6l
	extu.w	r6
	mov.w	r6,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L332
	cmp.b	#43,r2l
	beq	.L333
	cmp.b	#45,r2l
	beq	.L334
	bra	.L349
.L333:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L351
	bra	.L343
.L332:
	adds	#1,er0
	bra	.L338
.L334:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L343
	mov.w	#1,r4
	bra	.L336
.L344:
	mov.l	er0,er5
.L351:
	sub.w	r4,r4
.L336:
	sub.l	er0,er0
.L340:
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
	bls	.L340
	bra	.L350
.L349:
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L344
	bra	.L343
.L350:
	mov.w	r4,r4
	bne	.L331
	sub.l	er2,er3
	mov.l	er3,er0
	bra	.L331
.L343:
	sub.l	er0,er0
.L331:
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
.L359:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L353
	mov.b	r2l,r4l
	extu.w	r4
	mov.w	r4,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L353
	cmp.b	#43,r2l
	beq	.L354
	cmp.b	#45,r2l
	beq	.L355
	bra	.L372:16
.L354:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L374
	bra	.L366:16
.L353:
	adds	#1,er0
	bra	.L359
.L355:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L366:16
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L357
.L367:
	mov.l	er0,er5
.L374:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L357:
	sub.l	er2,er2
	sub.l	er3,er3
	sub.l	er6,er6
	add.b	#1,r6l
.L362:
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
	bhi	.L361
	sub.l	er2,er2
.L361:
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
	bls	.L362:16
	bra	.L373
.L372:
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L367:16
	bra	.L366
.L373:
	mov.w	@(18,er7),r0
	bne	.L352
	mov.l	@(12,er7),er2
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	@(12,er7),er3
	cmp.l	er3,er1
	bhi	.L364
	sub.l	er2,er2
.L364:
	mov.l	@(8,er7),er3
	mov.l	@er7,er4
	sub.l	er4,er3
	mov.l	er3,er4
	sub.l	er2,er4
	mov.l	er4,er2
	mov.l	er1,er3
	bra	.L352
.L366:
	sub.l	er2,er2
	sub.l	er3,er3
.L352:
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
	beq	.L376
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
.L379:
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
	bmi	.L380
	beq	.L388
	mov.l	@(24,er7),er2
	add.l	er4,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	subs	#1,er2
	sub.l	er6,er2
	mov.l	er2,er5
	bra	.L377
.L380:
	mov.l	er6,er5
.L377:
	mov.l	er5,er5
	bne	.L379
.L376:
	sub.l	er5,er5
	bra	.L375
.L388:
	mov.l	er4,er5
.L375:
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
	bne	.L390
.L394:
	sub.l	er6,er6
	bra	.L389
.L390:
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
	beq	.L389
	ble	.L392
	mov.l	@(24,er7),er2
	add.l	er6,er2
	mov.l	er2,@er7
	dec #1,r4
	shar.w	r4
	bne	.L390
	bra	.L394
.L392:
	mov.w	r5,r5
	beq	.L394
	mov.w	r5,r4
	bra	.L390
.L389:
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
	bpl	.L406
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L408
	sub.l	er6,er6
.L408:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L406:
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
	bpl	.L412
	neg.l	er0
.L412:
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
	bra	.L426
.L422:
	adds	#2,er0
.L426:
	mov.w	@er0,r2
	beq	.L423
	cmp.w	r2,r1
	bne	.L422
	rts
.L423:
	sub.l	er0,er0
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L435
.L430:
	adds	#2,er0
	adds	#2,er1
.L435:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L429
	mov.w	r2,r2
	bne	.L430
.L429:
	cmp.w	r3,r2
	blo	.L433
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L436
	sub.w	r0,r0
	rts
.L433:
	mov.w	#-1,r0
.L436:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L439:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L439
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L444
	mov.l	er0,er2
.L443:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L443
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
.L444:
	sub.l	er0,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L447
	bra	.L453
.L450:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L453
.L447:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L449
	mov.w	r3,r3
	bne	.L450
	bra	.L449
.L452:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L446
.L453:
	sub.w	r0,r0
	bra	.L446
.L449:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L452
	mov.w	#-1,r0
.L446:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L462
.L458:
	subs	#1,er2
	adds	#2,er0
.L462:
	mov.l	er2,er2
	beq	.L459
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L458
	rts
.L459:
	sub.l	er0,er0
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L464
	bra	.L470
.L466:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L470
.L464:
	mov.w	@er0,r4
	mov.w	@er1,r3
	cmp.w	r3,r4
	beq	.L466
	bra	.L472
.L469:
	mov.w	#1,r0
	cmp.w	r3,r4
	bhi	.L463
.L470:
	sub.w	r0,r0
	bra	.L463
.L472:
	bhs	.L469
	mov.w	#-1,r0
.L463:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L474
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L474:
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
	beq	.L498:16
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
	blo	.L480
	mov.l	er5,er5
	bne	.L481
	bra	.L498:16
.L480:
	mov.l	er5,er5
	beq	.L498:16
	shll.l	er3
.L483:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L483
	bra	.L498
.L481:
	cmp.l	#8,er3
	bls	.L509
	mov.l	er1,er6
	or.l	er0,er6
	and.l	#3,er6
	bne	.L509
	mov.l	er1,er6
	adds	#2,er6
	cmp.l	er6,er0
	beq	.L509
	mov.l	er5,er6
	shlr.l	er6
	sub.l	er3,er3
	mov.l	er0,er2
	mov.l	er0,@(4,er7)
.L490:
	mov.l	@er4+,er0
	mov.l	er0,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L490
	mov.l	@(4,er7),er0
	btst	#0,r5l
	beq	.L498
	and	#254,r5l
	shll.l	er5
	add.l	er5,er1
	mov.w	@er1,r2
	add.l	er0,er5
	mov.w	r2,@er5
	bra	.L498
.L509:
	mov.l	er0,er2
.L489:
	mov.w	@er4+,r1
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L489
.L498:
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
	beq	.L511:16
	sub.l	er3,er3
	bld	#1,r0l
	rotxl.l	er3
	cmp.l	#5,er6
	bls	.L516
	mov.l	er3,er3
	beq	.L517
	mov.l	er0,er4
	adds	#2,er4
	mov.l	er4,@(4,er7)
	mov.w	r1,@er0
	subs	#1,er6
	bra	.L513
.L517:
	mov.l	er0,@(4,er7)
.L513:
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
.L514:
	mov.l	er4,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L514
	mov.l	@er7,er2
	btst	#0,r2l
	beq	.L511
	and	#254,r2l
	sub.l	er2,er6
	shll.l	er2
	mov.l	@(4,er7),er3
	add.l	er3,er2
	bra	.L512
.L516:
	mov.l	er0,er2
.L512:
	mov.w	r1,@er2
	mov.l	er6,er6
	beq	.L511
	mov.w	r1,@(2,er2)
	cmp.l	#1,er6
	beq	.L511
	mov.w	r1,@(4,er2)
	cmp.l	#2,er6
	beq	.L511
	mov.w	r1,@(6,er2)
	cmp.l	#3,er6
	beq	.L511
	mov.w	r1,@(8,er2)
	cmp.l	#4,er6
	beq	.L511
	mov.w	r1,@(10,er2)
.L511:
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
	bhs	.L541
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L540:16
.L543:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L543
	bra	.L540:16
.L541:
	beq	.L540:16
	mov.l	er2,er2
	beq	.L540:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#6,er3
	bls	.L544
	mov.l	er1,er3
	or.l	er0,er3
	and.l	#3,er3
	bne	.L544
	mov.l	er0,er4
	adds	#1,er4
	mov.l	er1,er3
	sub.l	er4,er3
	cmp.l	#2,er3
	bls	.L544
	mov.l	er1,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er0,er5
	add.l	er6,er5
.L547:
	mov.l	@er0+,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er0,er5
	bne	.L547
	add.l	er6,er1
	mov.l	er2,er3
	sub.l	er6,er3
	cmp.l	er6,er2
	beq	.L540
	mov.b	@er5,r2l
	mov.b	r2l,@er1
	cmp.l	#1,er3
	beq	.L540
	mov.b	@(1,er5),r2l
	mov.b	r2l,@(1,er1)
	cmp.l	#2,er3
	beq	.L540
	mov.b	@(2,er5),r2l
	mov.b	r2l,@(2,er1)
	bra	.L540
.L544:
	add.l	er0,er2
.L550:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
	cmp.l	er0,er2
	bne	.L550
.L540:
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
	bmi	.L573
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L578
.L577:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L577
.L578:
	bra	.L574
.L573:
	mov.l	er1,er3
	mov.w	#31,r0
	sub.w	r2,r0
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L580
.L579:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L579
.L580:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L582
.L581:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L581
.L582:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L584
.L583:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L583
.L584:
.L574:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L575
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L586
.L585:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L585
.L586:
	bra	.L576
.L575:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L588
.L587:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L587
.L588:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L590
.L589:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L589
.L590:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L592
.L591:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L591
.L592:
.L576:
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
	bmi	.L594
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L599
.L598:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L598
.L599:
	bra	.L595
.L594:
	mov.l	er0,er3
	mov.w	#31,r0
	sub.w	r2,r0
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L601
.L600:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L600
.L601:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L603
.L602:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L602
.L603:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L605
.L604:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L604
.L605:
.L595:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L596
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L607
.L606:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L606
.L607:
	bra	.L597
.L596:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L609
.L608:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L608
.L609:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L611
.L610:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L610
.L611:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L613
.L612:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L612
.L613:
.L597:
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
	ble	.L618
.L615:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L615
.L618:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L623
.L620:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L620
.L623:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L628
.L625:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L625
.L628:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L633
.L630:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L630
.L633:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L638
.L635:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L635
.L638:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L643
.L640:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L640
.L643:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L648
.L645:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L645
.L648:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L653
.L650:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L650
.L653:
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
	bne	.L692
	btst	#1,r0l
	bne	.L693
	btst	#2,r0l
	bne	.L694
	btst	#3,r0l
	bne	.L695
	btst	#4,r0l
	bne	.L696
	btst	#5,r0l
	bne	.L697
	btst	#6,r0l
	bne	.L698
	btst	#7,r0l
	bne	.L699
	btst	#0,r0h
	bne	.L700
	btst	#1,r0h
	bne	.L701
	btst	#2,r0h
	bne	.L702
	btst	#3,r0h
	bne	.L703
	btst	#4,r0h
	bne	.L704
	btst	#5,r0h
	bne	.L705
	btst	#6,r0h
	bne	.L706
	mov.w	r0,r0
	beq	.L707
	mov.w	#16,r0
	rts
.L692:
	mov.w	#1,r0
	rts
.L693:
	mov.w	#2,r0
	rts
.L694:
	mov.w	#3,r0
	rts
.L695:
	mov.w	#4,r0
	rts
.L696:
	mov.w	#5,r0
	rts
.L697:
	mov.w	#6,r0
	rts
.L698:
	mov.w	#7,r0
	rts
.L699:
	mov.w	#8,r0
	rts
.L700:
	mov.w	#9,r0
	rts
.L701:
	mov.w	#10,r0
	rts
.L702:
	mov.w	#11,r0
	rts
.L703:
	mov.w	#12,r0
	rts
.L704:
	mov.w	#13,r0
	rts
.L705:
	mov.w	#14,r0
	rts
.L706:
	mov.w	#15,r0
	rts
.L707:
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L711
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L714
	mov.w	#1,r0
.L710:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L710
	rts
.L711:
	sub.w	r0,r0
.L714:
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
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L721
	mov.w	r4,r4
	bpl	.L729
	mov.l	#1056964608,er1
	bra	.L723
.L729:
	mov.l	#1073741824,er1
.L723:
	btst	#0,r4l
	beq	.L724
.L726:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L724:
	mov.w	r4,r4
	bpl	.L725
	inc #1,r4
.L725:
	shar.w	r4
	beq	.L721
.L728:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L726
	mov.w	r4,r4
	bpl	.L727
	inc #1,r4
.L727:
	shar.w	r4
	bra	.L728
.L721:
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
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L738
	mov.w	r4,r4
	bpl	.L746
	mov.l	#1056964608,er1
	bra	.L740
.L746:
	mov.l	#1073741824,er1
.L740:
	btst	#0,r4l
	beq	.L741
.L743:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L741:
	mov.w	r4,r4
	bpl	.L742
	inc #1,r4
.L742:
	shar.w	r4
	beq	.L738
.L745:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L743
	mov.w	r4,r4
	bpl	.L744
	inc #1,r4
.L744:
	shar.w	r4
	bra	.L745
.L738:
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
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L755
	mov.w	r4,r4
	bpl	.L763
	mov.l	#1056964608,er1
	bra	.L757
.L763:
	mov.l	#1073741824,er1
.L757:
	btst	#0,r4l
	beq	.L758
.L760:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L758:
	mov.w	r4,r4
	bpl	.L759
	inc #1,r4
.L759:
	shar.w	r4
	beq	.L755
.L762:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L760
	mov.w	r4,r4
	bpl	.L761
	inc #1,r4
.L761:
	shar.w	r4
	bra	.L762
.L755:
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
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er2,er2
	beq	.L772:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#3,er3
	bls	.L773
	mov.l	er0,er3
	or.l	er1,er3
	and.l	#3,er3
	bne	.L773
	mov.l	er0,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er6,@er7
	mov.l	er1,er5
	add.l	er6,er5
.L774:
	mov.l	@er1+,er4
	mov.l	@er3,er6
	xor.l	er6,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er1,er5
	bne	.L774
	mov.l	er0,er3
	mov.l	@er7,er4
	add.l	er4,er3
	mov.l	er2,er1
	sub.l	er4,er1
	cmp.l	er4,er2
	beq	.L772
	mov.b	@er3,r2l
	mov.b	@er5,r4l
	xor	r4l,r2l
	mov.b	r2l,@er3
	cmp.l	#1,er1
	beq	.L772
	mov.b	@(1,er3),r2l
	mov.b	@(1,er5),r4l
	xor	r4l,r2l
	mov.b	r2l,@(1,er3)
	cmp.l	#2,er1
	beq	.L772
	mov.b	@(2,er5),r2l
	mov.b	@(2,er3),r1l
	xor	r1l,r2l
	mov.b	r2l,@(2,er3)
	bra	.L772
.L773:
	mov.l	er0,er3
	add.l	er1,er2
.L776:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er1,er2
	bne	.L776
.L772:
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
	beq	.L796
	mov.l	er0,er3
.L791:
	adds	#1,er3
	mov.b	@er3,r4l
	bne	.L791
	bra	.L790
.L796:
	mov.l	er0,er3
.L790:
	mov.l	er2,er2
	bne	.L792
	bra	.L793
.L794:
	adds	#1,er1
	adds	#1,er3
	dec.l	#1,er2
	beq	.L793
.L792:
	mov.b	@er1,r4l
	mov.b	r4l,@er3
	mov.b	r4l,r4l
	bne	.L794
	bra	.L795
.L793:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
.L795:
	mov.l	@er7+,er4
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er1,er1
	bne	.L803
	rts
.L805:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L803
	rts
.L803:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L805
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L809
	bra	.L813
.L811:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L810
.L812:
	mov.b	@er2,r3l
	bne	.L811
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L813
.L809:
	mov.l	er1,er2
	bra	.L812
.L813:
	sub.l	er0,er0
.L810:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L817:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r4,r1
	bne	.L816
	mov.l	er2,er0
.L816:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L817
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
	beq	.L819
.L821:
	adds	#1,er2
	mov.b	@er2,r3l
	bne	.L821
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	beq	.L819
	subs	#1,er2
	mov.l	er2,@(8,er7)
	bra	.L829
.L828:
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(4,er7),er6
	mov.l	er0,er3
	mov.b	r4l,r1l
	mov.b	r4l,@(3,er7)
	bra	.L823
.L827:
	adds	#1,er3
	mov.l	er6,er4
	adds	#1,er4
	mov.b	@er3,r2l
	bne	.L824
	mov.b	@(3,er7),r4l
	mov.b	@(1,er6),r1l
	bra	.L825
.L824:
	mov.b	@er4,r1l
	beq	.L838
	mov.l	er4,er6
.L823:
	cmp.l	er5,er3
	beq	.L839
	cmp.b	r1l,r2l
	beq	.L827
	bra	.L838
.L839:
	mov.b	@(3,er7),r4l
.L825:
	cmp.b	r1l,r2l
	beq	.L819
	bra	.L826
.L838:
	mov.b	@(3,er7),r4l
.L826:
	adds	#1,er0
.L829:
	mov.b	@er0,r2l
	cmp.b	r4l,r2l
	beq	.L828
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L829
	sub.l	er0,er0
.L819:
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
	bpl	.L849
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L844
	bra	.L843
.L849:
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L844
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L844
.L843:
	xor.w	#32768,e4
.L844:
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
	beq	.L850:16
	cmp.l	er3,er1
	blo	.L861
	sub.l	er3,er1
	add.l	er0,er1
	cmp.l	er1,er0
	bhi	.L861
	mov.b	@er2+,r6l
	mov.l	er2,@(4,er7)
	subs	#1,er3
	mov.l	er3,@er7
.L856:
	mov.l	er0,er4
	mov.b	@er4+,r2l
	cmp.b	r6l,r2l
	bne	.L860
	mov.l	@(4,er7),er3
	mov.l	@er7,er2
	beq	.L850
.L855:
	mov.l	er4,er2
	mov.l	@er7,er5
	add.l	er4,er5
	mov.l	er1,@(8,er7)
	mov.l	er0,@(12,er7)
	bra	.L853
.L854:
	adds	#1,er2
	adds	#1,er3
	cmp.l	er5,er2
	beq	.L867
.L853:
	mov.b	@er2,r0l
	mov.b	@er3,r1l
	cmp.b	r1l,r0l
	beq	.L854
	mov.l	@(8,er7),er1
	cmp.l	er1,er4
	bhi	.L861
	mov.l	er4,er0
	mov.b	@er0+,r2l
	cmp.b	r2l,r6l
	bne	.L852
	mov.l	@(4,er7),er3
	mov.l	er4,er2
	mov.l	er0,er4
	mov.l	er2,er0
	bra	.L855
.L860:
	mov.l	er4,er0
.L852:
	cmp.l	er0,er1
	bhs	.L856
.L861:
	sub.l	er0,er0
	bra	.L850
.L867:
	mov.l	@(12,er7),er0
.L850:
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
	beq	.L870
	mov.l	er4,er2
	jsr	@_memmove
	mov.l	er0,er3
.L870:
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
	bpl	.L895
	mov.l	er4,er5
	xor.w	#32768,e5
	mov.l	#3212836864,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L886
	mov.l	#3204448256,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L887
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er4,er0
	bra	.L874:16
.L895:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L888
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L880
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L889
.L880:
	sub.w	r2,r2
	mov.l	@er7,er3
	mov.w	r2,@er3
	mov.l	er4,er0
	bra	.L874:16
.L886:
	mov.l	er5,er4
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L877
.L888:
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L877:
	sub.w	r6,r6
.L883:
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
	bpl	.L883
	bra	.L884
.L887:
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L878
.L889:
	mov.l	er4,er5
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L878:
	mov.l	er5,er4
	sub.w	r6,r6
.L885:
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
	bmi	.L885
.L884:
	mov.l	@er7,er2
	mov.w	r6,@er2
	mov.l	er4,er0
	mov.w	@(6,er7),r2
	beq	.L874
	xor.w	#32768,e0
.L874:
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
	beq	.L903:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L902:
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
	bne	.L899
	sub.l	er6,er6
.L899:
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
	bne	.L902:16
	bra	.L896
.L903:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L896:
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
	blo	.L914
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L907
.L910:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L908
	dec #1,r0
	bne	.L906
	bra	.L916
.L914:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L906:
	mov.l	er1,er1
	bpl	.L910
	bra	.L907
.L908:
	mov.l	er3,er3
	beq	.L916
.L907:
	sub.l	er0,er0
.L912:
	cmp.l	er1,er4
	blo	.L911
	sub.l	er1,er4
	or.l	er3,er0
.L911:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L912
	bra	.L909
.L916:
	sub.l	er0,er0
.L909:
	mov.l	er2,er2
	beq	.L905
	mov.l	er4,er0
.L905:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L921
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L921:
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
	bne	.L926
	cmp.l	er3,er1
	beq	.L927
.L926:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L922
.L927:
	mov.w	#63,r0
.L922:
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
	beq	.L931:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928:16
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
	beq	.L928
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
	beq	.L928
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
	beq	.L928
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
	bra	.L928
.L931:
	sub.w	r0,r0
.L928:
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
	blo	.L975
	mov.w	r4,r2
	extu.l	er2
	add.l	er1,er2
	cmp.l	er2,er0
	bhi	.L975
	mov.w	r4,r2
	dec #1,r2
	mov.w	r4,r4
	bne	.L976:16
	bra	.L974:16
.L975:
	mov.w	r6,r6
	beq	.L978
	mov.l	er1,er2
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.l	er0,@(4,er7)
	mov.l	er1,er5
.L979:
	mov.l	@er2,er0
	mov.l	@(4,er2),er1
	mov.l	er0,@er3
	mov.l	er1,@(4,er3)
	adds	#4,er2
	adds	#4,er2
	adds	#4,er3
	adds	#4,er3
	cmp.l	er6,er2
	bne	.L979
	bra	.L1005
.L978:
	mov.w	r4,r4
	beq	.L974:16
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L981:16
.L1005:
	mov.l	@(4,er7),er0
	mov.l	er5,er1
	mov.w	@(2,er7),r3
	cmp.w	r3,r4
	bls	.L974:16
	mov.w	r4,r2
	sub.w	r3,r2
	mov.w	r2,@(4,er7)
	dec #1,r2
	extu.l	er3
	cmp.w	#6,r2
	bls	.L981:16
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
	bls	.L981
	mov.l	@(8,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L981
	mov.l	er6,er3
	mov.w	@(4,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L984:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L984
	mov.w	@(4,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@(2,er7),r5
	add.w	r5,r2
	and.w	#3,r3
	beq	.L974
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
	bls	.L974
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L974
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L974
.L981:
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
.L986:
	mov.b	@er2+,r3l
	mov.b	r3l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L986
	bra	.L974
.L976:
	extu.l	er2
.L988:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L988
.L974:
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
	blo	.L1007
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L1007
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L1008:16
	bra	.L1006:16
.L1007:
	mov.w	r5,r5
	beq	.L1010
	mov.w	r5,r3
	dec #1,r3
	cmp.w	#8,r3
	bls	.L1011
	mov.l	er1,er3
	or.l	er0,er3
	and.l	#3,er3
	bne	.L1011
	mov.l	er1,er3
	adds	#2,er3
	cmp.l	er3,er0
	beq	.L1011
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
.L1014:
	mov.l	@er4+,er5
	mov.l	er5,@er3
	adds	#4,er3
	cmp.l	er6,er4
	bne	.L1014
	mov.w	@(2,er7),r5
	mov.w	@er7,r3
	shll.w	r3
	cmp.w	r3,r5
	beq	.L1010
	extu.l	er3
	shll.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.w	@er4,r4
	add.l	er0,er3
	mov.w	r4,@er3
	bra	.L1010
.L1011:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er5
	shll.l	er5
	add.l	er1,er5
.L1016:
	mov.w	@er4+,r6
	mov.w	r6,@er3
	adds	#2,er3
	cmp.l	er4,er5
	bne	.L1016
.L1010:
	btst	#0,r2l
	beq	.L1006
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L1006
.L1008:
	mov.w	r3,r2
	extu.l	er2
.L1019:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1019
.L1006:
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
	blo	.L1035
	mov.w	r4,r2
	extu.l	er2
	add.l	er1,er2
	cmp.l	er2,er0
	bhi	.L1035
	mov.w	r4,r2
	dec #1,r2
	mov.w	r4,r4
	bne	.L1036:16
	bra	.L1034:16
.L1035:
	mov.w	r6,r6
	bne	.L1038
	mov.w	r4,r4
	beq	.L1034:16
	mov.w	@er7,r3
	extu.l	er3
	bra	.L1039:16
.L1038:
	mov.w	r6,r2
	dec #1,r2
	cmp.w	#8,r2
	bls	.L1040
	mov.l	er0,er2
	or.l	er1,er2
	and.l	#3,er2
	bne	.L1040
	mov.l	er1,er2
	adds	#2,er2
	cmp.l	er2,er0
	beq	.L1040
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
.L1043:
	mov.l	@er3+,er6
	mov.l	er6,@er2
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L1043
	mov.w	@(4,er7),r6
	mov.w	@(2,er7),r2
	shll.w	r2
	cmp.w	r2,r6
	beq	.L1046
	extu.l	er2
	shll.l	er2
	mov.l	er1,er3
	add.l	er2,er3
	mov.w	@er3,r3
	add.l	er0,er2
	mov.w	r3,@er2
	bra	.L1046
.L1040:
	mov.l	er1,er3
	mov.l	er0,er2
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L1045:
	mov.w	@er3+,r5
	mov.w	r5,@er2
	adds	#2,er2
	cmp.l	er6,er3
	bne	.L1045
.L1046:
	mov.w	@er7,r3
	cmp.w	r3,r4
	bls	.L1034:16
	mov.w	r4,r2
	sub.w	r3,r2
	mov.w	r2,@(2,er7)
	dec #1,r2
	extu.l	er3
	cmp.w	#6,r2
	bls	.L1039:16
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
	bls	.L1039
	mov.l	@(4,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L1039
	mov.l	er6,er3
	mov.w	@(2,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L1049:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L1049
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@er7,r5
	add.w	r5,r2
	and.w	#3,r3
	beq	.L1034
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
	bls	.L1034
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L1034
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L1034
.L1039:
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
.L1051:
	mov.b	@er2+,r3l
	mov.b	r3l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L1051
	bra	.L1034
.L1036:
	extu.l	er2
.L1053:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1053
.L1034:
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
	bmi	.L1084:16
	btst	#6,r0h
	bne	.L1085
	btst	#5,r0h
	bne	.L1086
	btst	#4,r0h
	bne	.L1087
	btst	#3,r0h
	bne	.L1088
	btst	#2,r0h
	bne	.L1089
	btst	#1,r0h
	bne	.L1090
	btst	#0,r0h
	bne	.L1091
	btst	#7,r0l
	bne	.L1092
	btst	#6,r0l
	bne	.L1093
	btst	#5,r0l
	bne	.L1094
	btst	#4,r0l
	bne	.L1095
	btst	#3,r0l
	bne	.L1096
	btst	#2,r0l
	bne	.L1097
	btst	#1,r0l
	bne	.L1098
	mov.w	r0,r0
	beq	.L1099
	mov.w	#15,r0
	rts
.L1085:
	mov.w	#1,r0
	rts
.L1086:
	mov.w	#2,r0
	rts
.L1087:
	mov.w	#3,r0
	rts
.L1088:
	mov.w	#4,r0
	rts
.L1089:
	mov.w	#5,r0
	rts
.L1090:
	mov.w	#6,r0
	rts
.L1091:
	mov.w	#7,r0
	rts
.L1092:
	mov.w	#8,r0
	rts
.L1093:
	mov.w	#9,r0
	rts
.L1094:
	mov.w	#10,r0
	rts
.L1095:
	mov.w	#11,r0
	rts
.L1096:
	mov.w	#12,r0
	rts
.L1097:
	mov.w	#13,r0
	rts
.L1098:
	mov.w	#14,r0
	rts
.L1084:
	sub.w	r0,r0
	rts
.L1099:
	mov.w	#16,r0
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	btst	#0,r0l
	bne	.L1103
	btst	#1,r0l
	bne	.L1104
	btst	#2,r0l
	bne	.L1105
	btst	#3,r0l
	bne	.L1106
	btst	#4,r0l
	bne	.L1107
	btst	#5,r0l
	bne	.L1108
	btst	#6,r0l
	bne	.L1109
	btst	#7,r0l
	bne	.L1110
	btst	#0,r0h
	bne	.L1111
	btst	#1,r0h
	bne	.L1112
	btst	#2,r0h
	bne	.L1113
	btst	#3,r0h
	bne	.L1114
	btst	#4,r0h
	bne	.L1115
	btst	#5,r0h
	bne	.L1116
	btst	#6,r0h
	bne	.L1117
	mov.w	r0,r0
	beq	.L1118
	mov.w	#15,r0
	rts
.L1103:
	sub.w	r0,r0
	rts
.L1104:
	mov.w	#1,r0
	rts
.L1105:
	mov.w	#2,r0
	rts
.L1106:
	mov.w	#3,r0
	rts
.L1107:
	mov.w	#4,r0
	rts
.L1108:
	mov.w	#5,r0
	rts
.L1109:
	mov.w	#6,r0
	rts
.L1110:
	mov.w	#7,r0
	rts
.L1111:
	mov.w	#8,r0
	rts
.L1112:
	mov.w	#9,r0
	rts
.L1113:
	mov.w	#10,r0
	rts
.L1114:
	mov.w	#11,r0
	rts
.L1115:
	mov.w	#12,r0
	rts
.L1116:
	mov.w	#13,r0
	rts
.L1117:
	mov.w	#14,r0
	rts
.L1118:
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
	bmi	.L1124
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L1119
.L1124:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L1119:
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
	beq	.L1130
	sub.l	er0,er0
.L1129:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L1129
	rts
.L1130:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L1135
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L1138
.L1134:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L1134
	rts
.L1135:
	sub.l	er0,er0
	rts
.L1138:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1149
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1142
.L1145:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1143
	dec #1,r0
	bne	.L1141
	bra	.L1151
.L1149:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1141:
	mov.l	er1,er1
	bpl	.L1145
	bra	.L1142
.L1143:
	mov.l	er3,er3
	beq	.L1151
.L1142:
	sub.l	er0,er0
.L1147:
	cmp.l	er1,er4
	blo	.L1146
	sub.l	er1,er4
	or.l	er3,er0
.L1146:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1147
	bra	.L1144
.L1151:
	sub.l	er0,er0
.L1144:
	mov.w	r2,r2
	beq	.L1140
	mov.l	er4,er0
.L1140:
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
	bmi	.L1157
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1156
	sub.w	r5,r5
.L1156:
	mov.w	r5,r0
	bra	.L1154
.L1157:
	mov.w	#-1,r0
.L1154:
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
	bmi	.L1161
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1160
	sub.w	r5,r5
.L1160:
	mov.w	r5,r0
	bra	.L1158
.L1161:
	mov.w	#-1,r0
.L1158:
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
	bpl	.L1165
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
	bne	.L1166
	bra	.L1167:16
.L1165:
	beq	.L1172:16
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	mov.l	er2,er0
	and.w	r5,r0
	mov.w	r5,r3
	shll.w	r3
	mov.w	r1,r2
	shar.w	r2
	bne	.L1169
	bra	.L1164:16
.L1166:
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r3
	shar.w	r3
	mov.w	r3,r1
	bne	.L1173
	bra	.L1167:16
.L1169:
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r1
	shar.w	r1
	beq	.L1164:16
	sub.w	r3,r3
	bra	.L1170
.L1173:
	mov.w	#1,r3
.L1170:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r5,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	beq	.L1171:16
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
	beq	.L1171:16
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
	beq	.L1171:16
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
	beq	.L1171:16
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
	beq	.L1171:16
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
	beq	.L1171:16
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
	beq	.L1171:16
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
	beq	.L1171:16
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
	beq	.L1171
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
	beq	.L1171
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
	beq	.L1171
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
.L1171:
	mov.w	r3,r3
	beq	.L1164
.L1167:
	neg.w	r0
	bra	.L1164
.L1172:
	sub.w	r0,r0
.L1164:
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
	bpl	.L1224
	neg.l	er0
	sub.w	r2,r2
	mov.w	#1,r5
	bra	.L1214
.L1224:
	mov.w	#1,r2
	sub.w	r5,r5
.L1214:
	mov.l	er1,er1
	bpl	.L1215
	neg.l	er1
	mov.w	r2,r5
.L1215:
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1225
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1217
.L1219:
	dec #1,r3
	bne	.L1216
.L1220:
	mov.l	er2,er2
	bne	.L1217
	sub.l	er0,er0
	bra	.L1218
.L1225:
	mov.w	#32,r3
	sub.l	er2,er2
	add.b	#1,r2l
.L1216:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er0
	bhi	.L1219
	bra	.L1220
.L1217:
	sub.l	er0,er0
.L1222:
	cmp.l	er1,er4
	blo	.L1221
	sub.l	er1,er4
	or.l	er2,er0
.L1221:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1222
.L1218:
	mov.w	r5,r5
	beq	.L1213
	neg.l	er0
.L1213:
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
	bpl	.L1242
	neg.l	er3
	mov.w	#1,r5
	bra	.L1232
.L1242:
	sub.w	r5,r5
.L1232:
	mov.l	er1,er1
	bpl	.L1233
	neg.l	er1
.L1233:
	mov.l	er3,er0
	cmp.l	er3,er1
	blo	.L1243
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1240
.L1237:
	dec #1,r4
	bne	.L1234
.L1238:
	mov.l	er2,er2
	bne	.L1240
	mov.l	er3,er0
	bra	.L1236
.L1243:
	mov.w	#32,r4
	sub.l	er2,er2
	add.b	#1,r2l
.L1234:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er3
	bhi	.L1237
	bra	.L1238
.L1240:
	cmp.l	er1,er0
	blo	.L1239
	sub.l	er1,er0
.L1239:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1240
.L1236:
	mov.w	r5,r5
	beq	.L1231
	neg.l	er0
.L1231:
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
	blo	.L1250
	beq	.L1303:16
	sub.w	r1,r1
	bra	.L1282:16
.L1250:
	mov.w	r1,r1
	bmi	.L1252:16
	mov.w	r1,r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1253:16
	mov.w	r3,r3
	bmi	.L1254:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1255:16
	mov.w	r3,r3
	bmi	.L1256:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1257:16
	mov.w	r3,r3
	bmi	.L1258:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1259:16
	mov.w	r3,r3
	bmi	.L1260:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
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
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1263:16
	mov.w	r3,r3
	bmi	.L1264:16
	mov.w	r1,r3
	shar.b	r3h
	mov.b	r3l,r3h
	rotxr.w	r3
	and.b	#0x80,r3l
	cmp.w	r3,r0
	bls	.L1265:16
	mov.w	r3,r3
	bmi	.L1266:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	cmp.w	r3,r0
	bls	.L1267:16
	mov.w	r3,r3
	bmi	.L1268:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1269:16
	mov.w	r3,r3
	bmi	.L1270:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1271:16
	mov.w	r3,r3
	bmi	.L1272:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1273:16
	mov.w	r3,r3
	bmi	.L1274:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1275:16
	mov.w	r3,r3
	bmi	.L1276:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	rotr.w	r3
	and.w	#57344,r3
	cmp.w	r3,r0
	bls	.L1277:16
	mov.w	r3,r3
	bmi	.L1278:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	and.w	#49152,r3
	cmp.w	r3,r0
	bls	.L1279:16
	mov.w	r3,r3
	bmi	.L1280:16
	rotr.w	r1
	and.w	#32768,r1
	cmp.w	r1,r0
	bls	.L1281:16
	mov.w	r1,r1
	beq	.L1282:16
	bra	.L1360:16
.L1307:
	mov.w	#2,r4
	bra	.L1301
.L1308:
	mov.w	#4,r4
	bra	.L1301
.L1309:
	mov.w	#8,r4
	bra	.L1301
.L1310:
	mov.w	#16,r4
	bra	.L1301
.L1311:
	mov.w	#32,r4
	bra	.L1301
.L1312:
	mov.w	#64,r4
	bra	.L1301
.L1313:
	mov.w	#128,r4
	bra	.L1301
.L1314:
	mov.w	#256,r4
	bra	.L1301
.L1315:
	mov.w	#512,r4
	bra	.L1301
.L1316:
	mov.w	#1024,r4
	bra	.L1301
.L1317:
	mov.w	#2048,r4
	bra	.L1301
.L1318:
	mov.w	#4096,r4
	bra	.L1301
.L1319:
	mov.w	#8192,r4
	bra	.L1301
.L1320:
	mov.w	#16384,r4
.L1301:
	mov.w	r4,r6
	shlr.w	r6
	mov.w	r3,r5
	shlr.w	r5
	sub.w	r1,r1
.L1302:
	cmp.w	r5,r0
	blo	.L1284
	sub.w	r5,r0
	or.w	r6,r1
	bra	.L1284
.L1306:
	mov.w	r3,r1
	sub.w	r0,r0
.L1284:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1285
	sub.w	r6,r0
	or.w	r5,r1
.L1285:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1286
	sub.w	r6,r0
	or.w	r5,r1
.L1286:
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
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1287
	sub.w	r6,r0
	or.w	r5,r1
.L1287:
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
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1288
	sub.w	r6,r0
	or.w	r5,r1
.L1288:
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
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1289
	sub.w	r6,r0
	or.w	r5,r1
.L1289:
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
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1290
	sub.w	r6,r0
	or.w	r5,r1
.L1290:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	mov.w	r5,r5
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1291
	sub.w	r6,r0
	or.w	r5,r1
.L1291:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1292
	sub.w	r6,r0
	or.w	r5,r1
.L1292:
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
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1293
	sub.w	r6,r0
	or.w	r5,r1
.L1293:
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
	beq	.L1282:16
	cmp.w	r6,r0
	blo	.L1294
	sub.w	r6,r0
	or.w	r5,r1
.L1294:
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
	beq	.L1282
	cmp.w	r6,r0
	blo	.L1295
	sub.w	r6,r0
	or.w	r5,r1
.L1295:
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
	beq	.L1282
	cmp.w	r6,r0
	blo	.L1296
	sub.w	r6,r0
	or.w	r5,r1
.L1296:
	mov.w	r4,r5
	rotl.w	r5
	rotl.w	r5
	and.w	#3,r5
	mov.w	r3,r6
	rotl.w	r6
	rotl.w	r6
	and.w	#3,r6
	mov.w	r5,r5
	beq	.L1282
	cmp.w	r6,r0
	blo	.L1297
	sub.w	r6,r0
	or.w	r5,r1
.L1297:
	rotl.w	r3
	and.w	#1,r3
	cmp.w	#16384,r4
	bne	.L1298
	bra	.L1282
.L1303:
	mov.w	#1,r1
	sub.w	r0,r0
	bra	.L1282
.L1298:
	cmp.w	r3,r0
	blo	.L1305
	sub.w	r3,r0
	or	#1,r1l
	bra	.L1282
.L1305:
	sub.w	r0,r0
.L1282:
	mov.w	r2,r2
	bne	.L1249:16
	mov.w	r1,r0
	bra	.L1249:16
.L1281:
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r0,r0
	bmi	.L1306:16
	bra	.L1301:16
.L1253:
	blo	.L1307:16
	sub.w	r3,r0
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1255:
	blo	.L1308:16
	sub.w	r3,r0
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1257:
	blo	.L1309:16
	sub.w	r3,r0
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1259:
	blo	.L1310:16
	sub.w	r3,r0
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1261:
	blo	.L1311:16
	sub.w	r3,r0
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1263:
	blo	.L1312:16
	sub.w	r3,r0
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1265:
	blo	.L1313:16
	sub.w	r3,r0
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1267:
	blo	.L1314:16
	sub.w	r3,r0
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1269:
	blo	.L1315:16
	sub.w	r3,r0
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1271:
	blo	.L1316:16
	sub.w	r3,r0
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1273:
	blo	.L1317:16
	sub.w	r3,r0
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1275:
	blo	.L1318:16
	sub.w	r3,r0
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1277:
	blo	.L1319:16
	sub.w	r3,r0
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1279:
	blo	.L1320:16
	sub.w	r3,r0
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1284:16
.L1360:
	add.b	#128,r0h
	mov.w	#16384,r5
	mov.w	r5,r6
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r3,r1
	bra	.L1302:16
.L1252:
	sub.w	r1,r0
	mov.w	#1,r1
	bra	.L1282:16
.L1254:
	sub.w	r3,r0
	and	#127,r1h
	mov.w	r1,r5
	mov.w	#1,r6
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1256:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2,r6
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1258:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4,r6
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1260:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8,r6
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1262:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#16,r6
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1264:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#32,r6
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1266:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#64,r6
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1268:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#128,r6
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1270:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#256,r6
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1272:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#512,r6
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1274:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#1024,r6
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1276:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2048,r6
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1278:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4096,r6
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1280:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8192,r6
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1302:16
.L1249:
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
	bhi	.L1370
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1363
.L1366:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1364
	dec #1,r0
	bne	.L1362
	bra	.L1372
.L1370:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1362:
	mov.l	er1,er1
	bpl	.L1366
	bra	.L1363
.L1364:
	mov.l	er3,er3
	beq	.L1372
.L1363:
	sub.l	er0,er0
.L1368:
	cmp.l	er1,er4
	blo	.L1367
	sub.l	er1,er4
	or.l	er3,er0
.L1367:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1368
	bra	.L1365
.L1372:
	sub.l	er0,er0
.L1365:
	mov.w	r2,r2
	beq	.L1361
	mov.l	er4,er0
.L1361:
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
	beq	.L1376
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1381
.L1380:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1380
.L1381:
	sub.l	er0,er0
	bra	.L1377
.L1376:
	mov.w	r2,r2
	beq	.L1379
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1383
.L1382:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1382
.L1383:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1385
.L1384:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1384
.L1385:
	mov.b	r2l,r2l
	ble	.L1387
.L1386:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1386
.L1387:
	or.l	er3,er4
.L1377:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L1375
.L1379:
	mov.l	er0,er2
	mov.l	er1,er3
.L1375:
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
	beq	.L1389
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1394
.L1393:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1393
.L1394:
	bra	.L1390
.L1389:
	mov.w	r2,r2
	beq	.L1392
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1396
.L1395:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1395
.L1396:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1398
.L1397:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1397
.L1398:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L1400
.L1399:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L1399
.L1400:
	or.l	er3,er0
.L1390:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1388
.L1392:
	mov.l	er0,er2
	mov.l	er1,er3
.L1388:
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
	bls	.L1436
	sub.l	er0,er0
.L1436:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1452
.L1451:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1451
.L1452:
	sub.l	er1,er1
	mov.b	r2h,r1h
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1437
	sub.l	er3,er3
.L1437:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1454
.L1453:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1453
.L1454:
	add.l	er3,er0
	sub.l	er1,er1
	mov.b	r2l,r1l
	and	#240,r1l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1438
	sub.l	er3,er3
.L1438:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1456
.L1455:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1455
.L1456:
	add.l	er0,er3
	mov.l	er3,er4
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#12,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1439
	sub.l	er3,er3
.L1439:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1458
.L1457:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1457
.L1458:
	btst	#1,r2l
	bne	.L1440
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L1441
.L1440:
	sub.w	r0,r0
.L1441:
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
	blt	.L1463
	bgt	.L1464
	cmp.l	er3,er5
	blo	.L1463
	bhi	.L1464
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1459
.L1463:
	sub.l	er0,er0
	bra	.L1459
.L1464:
	sub.l	er0,er0
	add.b	#2,r0l
.L1459:
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
	blt	.L1470
	bgt	.L1469
	cmp.l	er3,er5
	blo	.L1470
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1465
	sub.l	er0,er0
	bra	.L1465
.L1469:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1465
.L1470:
	sub.l	er0,er0
	subs	#1,er0
.L1465:
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
	beq	.L1472
	sub.l	er0,er0
.L1472:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L1489
.L1488:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1488
.L1489:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1473
	sub.l	er3,er3
.L1473:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1491
.L1490:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1490
.L1491:
	add.l	er0,er3
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#15,r0l
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L1474
	sub.l	er1,er1
.L1474:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L1493
.L1492:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1492
.L1493:
	add.l	er3,er1
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#3,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1475
	sub.l	er3,er3
.L1475:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1495
.L1494:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1494
.L1495:
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
	beq	.L1497
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1502
.L1501:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1501
.L1502:
	sub.l	er1,er1
	bra	.L1498
.L1497:
	mov.w	r2,r2
	beq	.L1500
	mov.l	er0,er1
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L1504
.L1503:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1503
.L1504:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1506
.L1505:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1505
.L1506:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L1508
.L1507:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1507
.L1508:
	or.l	er3,er0
.L1498:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1496
.L1500:
	mov.l	er0,er2
	mov.l	er1,er3
.L1496:
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
	bne	.L1512
	sub.l	er6,er6
.L1512:
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
	ble	.L1515
.L1514:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1514
.L1515:
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
	ble	.L1518
.L1517:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1517
.L1518:
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
	bhi	.L1520
	sub.l	er0,er0
.L1520:
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
	beq	.L1525
.L1528:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1525:
	mov.w	r4,r4
	bpl	.L1526
	inc #1,r4
.L1526:
	shar.w	r4
	beq	.L1527
.L1530:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1528
	mov.w	r4,r4
	bpl	.L1529
	inc #1,r4
.L1529:
	shar.w	r4
	bra	.L1530
.L1527:
	mov.w	@(2,er7),r2
	bpl	.L1524
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1524:
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
	beq	.L1534
.L1537:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1534:
	mov.w	r4,r4
	bpl	.L1535
	inc #1,r4
.L1535:
	shar.w	r4
	beq	.L1536
.L1539:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1537
	mov.w	r4,r4
	bpl	.L1538
	inc #1,r4
.L1538:
	shar.w	r4
	bra	.L1539
.L1536:
	mov.w	@(2,er7),r2
	bpl	.L1533
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1533:
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
	blo	.L1546
	bhi	.L1547
	cmp.l	er3,er5
	blo	.L1546
	bhi	.L1547
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1542
.L1546:
	sub.l	er0,er0
	bra	.L1542
.L1547:
	sub.l	er0,er0
	add.b	#2,r0l
.L1542:
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
	blo	.L1553
	bhi	.L1552
	cmp.l	er3,er5
	blo	.L1553
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1548
	sub.l	er0,er0
	bra	.L1548
.L1552:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1548
.L1553:
	sub.l	er0,er0
	subs	#1,er0
.L1548:
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
	.global ___gesf2
	.global ___lesf2
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
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.end
