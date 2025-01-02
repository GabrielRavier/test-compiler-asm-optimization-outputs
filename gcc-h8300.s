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
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L190
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L191
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L194
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L187
.L190:
	mov.l	er4,er0
	bra	.L187
.L191:
	mov.l	er5,er0
	bra	.L187
.L194:
	sub.l	er0,er0
.L187:
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
	bne	.L198
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L199
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L202
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L195
.L198:
	mov.l	er4,er0
	bra	.L195
.L199:
	mov.l	er5,er0
	bra	.L195
.L202:
	sub.l	er0,er0
.L195:
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
	bne	.L211
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L210
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L205
	mov.w	r2,r2
	bne	.L211
	bra	.L210
.L205:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L211
	mov.l	er5,er4
	bra	.L211
.L210:
	mov.l	er5,er0
	bra	.L203
.L211:
	mov.l	er4,er0
.L203:
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
	bne	.L222
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L221
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L216
	mov.w	r2,r2
	bne	.L222
	bra	.L221
.L216:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L222
	mov.l	er5,er4
	bra	.L222
.L221:
	mov.l	er5,er0
	bra	.L214
.L222:
	mov.l	er4,er0
.L214:
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
	bne	.L233
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L232
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L227
	mov.w	r2,r2
	bne	.L233
	bra	.L232
.L227:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L233
	mov.l	er5,er4
	bra	.L233
.L232:
	mov.l	er5,er0
	bra	.L225
.L233:
	mov.l	er4,er0
.L225:
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
	bne	.L242
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L244
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L238
	mov.w	r2,r2
	bne	.L244
	bra	.L242
.L238:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L244
	mov.l	er5,er4
	bra	.L244
.L242:
	mov.l	er5,er0
	bra	.L236
.L244:
	mov.l	er4,er0
.L236:
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
	bne	.L253
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L255
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L249
	mov.w	r2,r2
	bne	.L255
	bra	.L253
.L249:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L255
	mov.l	er5,er4
	bra	.L255
.L253:
	mov.l	er5,er0
	bra	.L247
.L255:
	mov.l	er4,er0
.L247:
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
	bne	.L264
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L266
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L260
	mov.w	r2,r2
	bne	.L266
	bra	.L264
.L260:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L266
	mov.l	er5,er4
	bra	.L266
.L264:
	mov.l	er5,er0
	bra	.L258
.L266:
	mov.l	er4,er0
.L258:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L270
	mov.l	#_digits,er1
.L271:
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
	bne	.L271
.L270:
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
	blo	.L276
	sub.l	er6,er6
.L276:
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
	bne	.L278
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L278:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L283
	mov.l	er0,@(4,er2)
.L283:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L286
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L286:
	mov.l	@(4,er0),er3
	beq	.L294
	mov.l	er2,@er3
.L294:
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
	beq	.L296
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
.L298:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L295
	adds	#1,er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er6,er2
	bne	.L298
	mov.l	er2,er1
	mov.l	@(12,er7),er3
.L296:
	mov.l	er1,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(32,er7),er2
	beq	.L295
	mov.l	@er7,er1
	mov.l	er5,er0
	jsr	@_memmove
.L295:
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
	beq	.L312
	sub.l	er5,er5
	mov.l	er1,@(4,er7)
	mov.l	er4,er6
	mov.l	er0,@er7
.L314:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L311
	adds	#1,er5
	mov.l	@(24,er7),er2
	add.l	er2,er6
	mov.l	@(4,er7),er2
	cmp.l	er5,er2
	bne	.L314
.L312:
	sub.l	er6,er6
.L311:
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
	bpl	.L325
	neg.w	r0
.L325:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
.L333:
	mov.b	@er0,r3l
	cmp.b	#32,r3l
	beq	.L327
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,r1
	add.w	#-9,r1
	cmp.w	#4,r1
	bls	.L327
	cmp.b	#43,r3l
	beq	.L328
	cmp.b	#45,r3l
	beq	.L329
	bra	.L344
.L328:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L346
	bra	.L338
.L327:
	adds	#1,er0
	bra	.L333
.L329:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bhi	.L338
	mov.w	#1,r0
	mov.w	r0,@(2,er7)
	bra	.L331
.L339:
	mov.l	er0,er3
.L346:
	sub.w	r0,r0
	mov.w	r0,@(2,er7)
.L331:
	sub.w	r0,r0
	mov.w	#10,r6
.L335:
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
	bls	.L335
	bra	.L345
.L344:
	mov.w	r2,r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L339
	bra	.L338
.L345:
	mov.w	@(2,er7),r2
	bne	.L326
	mov.w	r4,r0
	sub.w	r1,r0
	bra	.L326
.L338:
	sub.w	r0,r0
.L326:
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
.L354:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L348
	mov.b	r2l,r6l
	extu.w	r6
	mov.w	r6,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L348
	cmp.b	#43,r2l
	beq	.L349
	cmp.b	#45,r2l
	beq	.L350
	bra	.L365
.L349:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L367
	bra	.L359
.L348:
	adds	#1,er0
	bra	.L354
.L350:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L359
	mov.w	#1,r4
	bra	.L352
.L360:
	mov.l	er0,er5
.L367:
	sub.w	r4,r4
.L352:
	sub.l	er0,er0
.L356:
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
	bls	.L356
	bra	.L366
.L365:
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L360
	bra	.L359
.L366:
	mov.w	r4,r4
	bne	.L347
	sub.l	er2,er3
	mov.l	er3,er0
	bra	.L347
.L359:
	sub.l	er0,er0
.L347:
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
.L375:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L369
	mov.b	r2l,r4l
	extu.w	r4
	mov.w	r4,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L369
	cmp.b	#43,r2l
	beq	.L370
	cmp.b	#45,r2l
	beq	.L371
	bra	.L388:16
.L370:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L390
	bra	.L382:16
.L369:
	adds	#1,er0
	bra	.L375
.L371:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L382:16
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L373
.L383:
	mov.l	er0,er5
.L390:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L373:
	sub.l	er2,er2
	sub.l	er3,er3
	sub.l	er6,er6
	add.b	#1,r6l
.L378:
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
	bhi	.L377
	sub.l	er2,er2
.L377:
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
	bls	.L378:16
	bra	.L389
.L388:
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L383:16
	bra	.L382
.L389:
	mov.w	@(18,er7),r0
	bne	.L368
	mov.l	@(12,er7),er2
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	@(12,er7),er3
	cmp.l	er3,er1
	bhi	.L380
	sub.l	er2,er2
.L380:
	mov.l	@(8,er7),er3
	mov.l	@er7,er4
	sub.l	er4,er3
	mov.l	er3,er4
	sub.l	er2,er4
	mov.l	er4,er2
	mov.l	er1,er3
	bra	.L368
.L382:
	sub.l	er2,er2
	sub.l	er3,er3
.L368:
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
	beq	.L392
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
.L395:
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
	bmi	.L396
	beq	.L404
	mov.l	@(24,er7),er2
	add.l	er4,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	subs	#1,er2
	sub.l	er6,er2
	mov.l	er2,er5
	bra	.L393
.L396:
	mov.l	er6,er5
.L393:
	mov.l	er5,er5
	bne	.L395
.L392:
	sub.l	er5,er5
	bra	.L391
.L404:
	mov.l	er4,er5
.L391:
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
	bne	.L406
.L410:
	sub.l	er6,er6
	bra	.L405
.L406:
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
	beq	.L405
	ble	.L408
	mov.l	@(24,er7),er2
	add.l	er6,er2
	mov.l	er2,@er7
	dec #1,r4
	shar.w	r4
	bne	.L406
	bra	.L410
.L408:
	mov.w	r5,r5
	beq	.L410
	mov.w	r5,r4
	bra	.L406
.L405:
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
	bpl	.L422
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L424
	sub.l	er6,er6
.L424:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L422:
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
	bpl	.L428
	neg.l	er0
.L428:
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
	bpl	.L431
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L433
	sub.l	er6,er6
.L433:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L431:
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
	bra	.L442
.L438:
	adds	#2,er0
.L442:
	mov.w	@er0,r2
	beq	.L439
	cmp.w	r2,r1
	bne	.L438
	rts
.L439:
	sub.l	er0,er0
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L451
.L446:
	adds	#2,er0
	adds	#2,er1
.L451:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L445
	mov.w	r2,r2
	bne	.L446
.L445:
	cmp.w	r3,r2
	blo	.L449
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L452
	sub.w	r0,r0
	rts
.L449:
	mov.w	#-1,r0
.L452:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L455:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L455
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L460
	mov.l	er0,er2
.L459:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L459
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
.L460:
	sub.l	er0,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L463
	bra	.L469
.L466:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L469
.L463:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L465
	mov.w	r3,r3
	bne	.L466
	bra	.L465
.L468:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L462
.L469:
	sub.w	r0,r0
	bra	.L462
.L465:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L468
	mov.w	#-1,r0
.L462:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L478
.L474:
	subs	#1,er2
	adds	#2,er0
.L478:
	mov.l	er2,er2
	beq	.L475
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L474
	rts
.L475:
	sub.l	er0,er0
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L480
	bra	.L486
.L482:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L486
.L480:
	mov.w	@er0,r4
	mov.w	@er1,r3
	cmp.w	r3,r4
	beq	.L482
	bra	.L488
.L485:
	mov.w	#1,r0
	cmp.w	r3,r4
	bhi	.L479
.L486:
	sub.w	r0,r0
	bra	.L479
.L488:
	bhs	.L485
	mov.w	#-1,r0
.L479:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L490
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L490:
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
	beq	.L514:16
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
	blo	.L496
	mov.l	er5,er5
	bne	.L497
	bra	.L514:16
.L496:
	mov.l	er5,er5
	beq	.L514:16
	shll.l	er3
.L499:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L499
	bra	.L514
.L497:
	cmp.l	#8,er3
	bls	.L525
	mov.l	er1,er6
	or.l	er0,er6
	and.l	#3,er6
	bne	.L525
	mov.l	er1,er6
	adds	#2,er6
	cmp.l	er6,er0
	beq	.L525
	mov.l	er5,er6
	shlr.l	er6
	sub.l	er3,er3
	mov.l	er0,er2
	mov.l	er0,@(4,er7)
.L506:
	mov.l	@er4+,er0
	mov.l	er0,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L506
	mov.l	@(4,er7),er0
	btst	#0,r5l
	beq	.L514
	and	#254,r5l
	shll.l	er5
	add.l	er5,er1
	mov.w	@er1,r2
	add.l	er0,er5
	mov.w	r2,@er5
	bra	.L514
.L525:
	mov.l	er0,er2
.L505:
	mov.w	@er4+,r1
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L505
.L514:
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
	beq	.L527:16
	sub.l	er3,er3
	bld	#1,r0l
	rotxl.l	er3
	cmp.l	#5,er6
	bls	.L532
	mov.l	er3,er3
	beq	.L533
	mov.l	er0,er4
	adds	#2,er4
	mov.l	er4,@(4,er7)
	mov.w	r1,@er0
	subs	#1,er6
	bra	.L529
.L533:
	mov.l	er0,@(4,er7)
.L529:
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
.L530:
	mov.l	er4,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L530
	mov.l	@er7,er2
	btst	#0,r2l
	beq	.L527
	and	#254,r2l
	sub.l	er2,er6
	shll.l	er2
	mov.l	@(4,er7),er3
	add.l	er3,er2
	bra	.L528
.L532:
	mov.l	er0,er2
.L528:
	mov.w	r1,@er2
	mov.l	er6,er6
	beq	.L527
	mov.w	r1,@(2,er2)
	cmp.l	#1,er6
	beq	.L527
	mov.w	r1,@(4,er2)
	cmp.l	#2,er6
	beq	.L527
	mov.w	r1,@(6,er2)
	cmp.l	#3,er6
	beq	.L527
	mov.w	r1,@(8,er2)
	cmp.l	#4,er6
	beq	.L527
	mov.w	r1,@(10,er2)
.L527:
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
	bhs	.L557
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L556:16
.L559:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L559
	bra	.L556:16
.L557:
	beq	.L556:16
	mov.l	er2,er2
	beq	.L556:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#6,er3
	bls	.L560
	mov.l	er1,er3
	or.l	er0,er3
	and.l	#3,er3
	bne	.L560
	mov.l	er0,er4
	adds	#1,er4
	mov.l	er1,er3
	sub.l	er4,er3
	cmp.l	#2,er3
	bls	.L560
	mov.l	er1,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er0,er5
	add.l	er6,er5
.L563:
	mov.l	@er0+,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er0,er5
	bne	.L563
	add.l	er6,er1
	mov.l	er2,er3
	sub.l	er6,er3
	cmp.l	er6,er2
	beq	.L556
	mov.b	@er5,r2l
	mov.b	r2l,@er1
	cmp.l	#1,er3
	beq	.L556
	mov.b	@(1,er5),r2l
	mov.b	r2l,@(1,er1)
	cmp.l	#2,er3
	beq	.L556
	mov.b	@(2,er5),r2l
	mov.b	r2l,@(2,er1)
	bra	.L556
.L560:
	add.l	er0,er2
.L566:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
	cmp.l	er0,er2
	bne	.L566
.L556:
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
	bmi	.L589
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L594
.L593:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L593
.L594:
	bra	.L590
.L589:
	mov.l	er1,er3
	mov.w	#31,r0
	sub.w	r2,r0
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L596
.L595:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L595
.L596:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L598
.L597:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L597
.L598:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L600
.L599:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L599
.L600:
.L590:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L591
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L602
.L601:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L601
.L602:
	bra	.L592
.L591:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L604
.L603:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L603
.L604:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L606
.L605:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L605
.L606:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L608
.L607:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L607
.L608:
.L592:
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
	bmi	.L610
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L615
.L614:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L614
.L615:
	bra	.L611
.L610:
	mov.l	er0,er3
	mov.w	#31,r0
	sub.w	r2,r0
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L617
.L616:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L616
.L617:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L619
.L618:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L618
.L619:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L621
.L620:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L620
.L621:
.L611:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L612
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L623
.L622:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L622
.L623:
	bra	.L613
.L612:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L625
.L624:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L624
.L625:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L627
.L626:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L626
.L627:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L629
.L628:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L628
.L629:
.L613:
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
	ble	.L634
.L631:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L631
.L634:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L639
.L636:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L636
.L639:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L644
.L641:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L641
.L644:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L649
.L646:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L646
.L649:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L654
.L651:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L651
.L654:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L659
.L656:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L656
.L659:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L664
.L661:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L661
.L664:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L669
.L666:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L666
.L669:
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
	bne	.L708
	btst	#1,r0l
	bne	.L709
	btst	#2,r0l
	bne	.L710
	btst	#3,r0l
	bne	.L711
	btst	#4,r0l
	bne	.L712
	btst	#5,r0l
	bne	.L713
	btst	#6,r0l
	bne	.L714
	btst	#7,r0l
	bne	.L715
	btst	#0,r0h
	bne	.L716
	btst	#1,r0h
	bne	.L717
	btst	#2,r0h
	bne	.L718
	btst	#3,r0h
	bne	.L719
	btst	#4,r0h
	bne	.L720
	btst	#5,r0h
	bne	.L721
	btst	#6,r0h
	bne	.L722
	mov.w	r0,r0
	beq	.L723
	mov.w	#16,r0
	rts
.L708:
	mov.w	#1,r0
	rts
.L709:
	mov.w	#2,r0
	rts
.L710:
	mov.w	#3,r0
	rts
.L711:
	mov.w	#4,r0
	rts
.L712:
	mov.w	#5,r0
	rts
.L713:
	mov.w	#6,r0
	rts
.L714:
	mov.w	#7,r0
	rts
.L715:
	mov.w	#8,r0
	rts
.L716:
	mov.w	#9,r0
	rts
.L717:
	mov.w	#10,r0
	rts
.L718:
	mov.w	#11,r0
	rts
.L719:
	mov.w	#12,r0
	rts
.L720:
	mov.w	#13,r0
	rts
.L721:
	mov.w	#14,r0
	rts
.L722:
	mov.w	#15,r0
	rts
.L723:
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L727
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L730
	mov.w	#1,r0
.L726:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L726
	rts
.L727:
	sub.w	r0,r0
.L730:
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
	bmi	.L735
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L734
	sub.w	r5,r5
.L734:
	mov.w	r5,r0
	bra	.L732
.L735:
	mov.w	#1,r0
.L732:
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
	bmi	.L739
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L738
	sub.w	r5,r5
.L738:
	mov.w	r5,r0
	bra	.L736
.L739:
	mov.w	#1,r0
.L736:
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
	bmi	.L743
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L742
	sub.w	r5,r5
.L742:
	mov.w	r5,r0
	bra	.L740
.L743:
	mov.w	#1,r0
.L740:
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
	bne	.L746
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L746
	mov.w	r4,r4
	bpl	.L754
	mov.l	#1056964608,er1
	bra	.L748
.L754:
	mov.l	#1073741824,er1
.L748:
	btst	#0,r4l
	beq	.L749
.L751:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L749:
	mov.w	r4,r4
	bpl	.L750
	inc #1,r4
.L750:
	shar.w	r4
	beq	.L746
.L753:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L751
	mov.w	r4,r4
	bpl	.L752
	inc #1,r4
.L752:
	shar.w	r4
	bra	.L753
.L746:
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
	bne	.L763
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L763
	mov.w	r4,r4
	bpl	.L771
	mov.l	#1056964608,er1
	bra	.L765
.L771:
	mov.l	#1073741824,er1
.L765:
	btst	#0,r4l
	beq	.L766
.L768:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L766:
	mov.w	r4,r4
	bpl	.L767
	inc #1,r4
.L767:
	shar.w	r4
	beq	.L763
.L770:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L768
	mov.w	r4,r4
	bpl	.L769
	inc #1,r4
.L769:
	shar.w	r4
	bra	.L770
.L763:
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
	bne	.L780
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L780
	mov.w	r4,r4
	bpl	.L788
	mov.l	#1056964608,er1
	bra	.L782
.L788:
	mov.l	#1073741824,er1
.L782:
	btst	#0,r4l
	beq	.L783
.L785:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L783:
	mov.w	r4,r4
	bpl	.L784
	inc #1,r4
.L784:
	shar.w	r4
	beq	.L780
.L787:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L785
	mov.w	r4,r4
	bpl	.L786
	inc #1,r4
.L786:
	shar.w	r4
	bra	.L787
.L780:
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
	beq	.L797:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#3,er3
	bls	.L798
	mov.l	er0,er3
	or.l	er1,er3
	and.l	#3,er3
	bne	.L798
	mov.l	er0,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er6,@er7
	mov.l	er1,er5
	add.l	er6,er5
.L799:
	mov.l	@er1+,er4
	mov.l	@er3,er6
	xor.l	er6,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er1,er5
	bne	.L799
	mov.l	er0,er3
	mov.l	@er7,er4
	add.l	er4,er3
	mov.l	er2,er1
	sub.l	er4,er1
	cmp.l	er4,er2
	beq	.L797
	mov.b	@er3,r2l
	mov.b	@er5,r4l
	xor	r4l,r2l
	mov.b	r2l,@er3
	cmp.l	#1,er1
	beq	.L797
	mov.b	@(1,er3),r2l
	mov.b	@(1,er5),r4l
	xor	r4l,r2l
	mov.b	r2l,@(1,er3)
	cmp.l	#2,er1
	beq	.L797
	mov.b	@(2,er5),r2l
	mov.b	@(2,er3),r1l
	xor	r1l,r2l
	mov.b	r2l,@(2,er3)
	bra	.L797
.L798:
	mov.l	er0,er3
	add.l	er1,er2
.L801:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er1,er2
	bne	.L801
.L797:
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
	beq	.L821
	mov.l	er0,er3
.L816:
	adds	#1,er3
	mov.b	@er3,r4l
	bne	.L816
	bra	.L815
.L821:
	mov.l	er0,er3
.L815:
	mov.l	er2,er2
	bne	.L817
	bra	.L818
.L819:
	adds	#1,er1
	adds	#1,er3
	dec.l	#1,er2
	beq	.L818
.L817:
	mov.b	@er1,r4l
	mov.b	r4l,@er3
	mov.b	r4l,r4l
	bne	.L819
	bra	.L820
.L818:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
.L820:
	mov.l	@er7+,er4
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er1,er1
	bne	.L828
	rts
.L830:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L828
	rts
.L828:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L830
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L834
	bra	.L838
.L836:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L835
.L837:
	mov.b	@er2,r3l
	bne	.L836
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L838
.L834:
	mov.l	er1,er2
	bra	.L837
.L838:
	sub.l	er0,er0
.L835:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L842:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r4,r1
	bne	.L841
	mov.l	er2,er0
.L841:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L842
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
	beq	.L844
.L846:
	adds	#1,er2
	mov.b	@er2,r3l
	bne	.L846
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	beq	.L844
	subs	#1,er2
	mov.l	er2,@(8,er7)
	bra	.L854
.L853:
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(4,er7),er6
	mov.l	er0,er3
	mov.b	r4l,r1l
	mov.b	r4l,@(3,er7)
	bra	.L848
.L852:
	adds	#1,er3
	mov.l	er6,er4
	adds	#1,er4
	mov.b	@er3,r2l
	bne	.L849
	mov.b	@(3,er7),r4l
	mov.b	@(1,er6),r1l
	bra	.L850
.L849:
	mov.b	@er4,r1l
	beq	.L863
	mov.l	er4,er6
.L848:
	cmp.l	er5,er3
	beq	.L864
	cmp.b	r1l,r2l
	beq	.L852
	bra	.L863
.L864:
	mov.b	@(3,er7),r4l
.L850:
	cmp.b	r1l,r2l
	beq	.L844
	bra	.L851
.L863:
	mov.b	@(3,er7),r4l
.L851:
	adds	#1,er0
.L854:
	mov.b	@er0,r2l
	cmp.b	r4l,r2l
	beq	.L853
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L854
	sub.l	er0,er0
.L844:
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
	bpl	.L874
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L869
	bra	.L868
.L874:
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L869
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L869
.L868:
	xor.w	#32768,e4
.L869:
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
	beq	.L875:16
	cmp.l	er3,er1
	blo	.L886
	sub.l	er3,er1
	add.l	er0,er1
	cmp.l	er1,er0
	bhi	.L886
	mov.b	@er2+,r6l
	mov.l	er2,@(4,er7)
	subs	#1,er3
	mov.l	er3,@er7
.L881:
	mov.l	er0,er4
	mov.b	@er4+,r2l
	cmp.b	r6l,r2l
	bne	.L885
	mov.l	@(4,er7),er3
	mov.l	@er7,er2
	beq	.L875
.L880:
	mov.l	er4,er2
	mov.l	@er7,er5
	add.l	er4,er5
	mov.l	er1,@(8,er7)
	mov.l	er0,@(12,er7)
	bra	.L878
.L879:
	adds	#1,er2
	adds	#1,er3
	cmp.l	er5,er2
	beq	.L892
.L878:
	mov.b	@er2,r0l
	mov.b	@er3,r1l
	cmp.b	r1l,r0l
	beq	.L879
	mov.l	@(8,er7),er1
	cmp.l	er1,er4
	bhi	.L886
	mov.l	er4,er0
	mov.b	@er0+,r2l
	cmp.b	r2l,r6l
	bne	.L877
	mov.l	@(4,er7),er3
	mov.l	er4,er2
	mov.l	er0,er4
	mov.l	er2,er0
	bra	.L880
.L885:
	mov.l	er4,er0
.L877:
	cmp.l	er0,er1
	bhs	.L881
.L886:
	sub.l	er0,er0
	bra	.L875
.L892:
	mov.l	@(12,er7),er0
.L875:
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
	beq	.L895
	mov.l	er4,er2
	jsr	@_memmove
	mov.l	er0,er3
.L895:
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
	bpl	.L920
	mov.l	er4,er5
	xor.w	#32768,e5
	mov.l	#3212836864,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L911
	mov.l	#3204448256,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L912
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er4,er0
	bra	.L899:16
.L920:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L913
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L905
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L914
.L905:
	sub.w	r2,r2
	mov.l	@er7,er3
	mov.w	r2,@er3
	mov.l	er4,er0
	bra	.L899:16
.L911:
	mov.l	er5,er4
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L902
.L913:
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L902:
	sub.w	r6,r6
.L908:
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
	bpl	.L908
	bra	.L909
.L912:
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L903
.L914:
	mov.l	er4,er5
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L903:
	mov.l	er5,er4
	sub.w	r6,r6
.L910:
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
	bmi	.L910
.L909:
	mov.l	@er7,er2
	mov.w	r6,@er2
	mov.l	er4,er0
	mov.w	@(6,er7),r2
	beq	.L899
	xor.w	#32768,e0
.L899:
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
	beq	.L928:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L927:
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
	bne	.L924
	sub.l	er6,er6
.L924:
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
	bne	.L927:16
	bra	.L921
.L928:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L921:
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
	blo	.L939
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L932
.L935:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L933
	dec #1,r0
	bne	.L931
	bra	.L941
.L939:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L931:
	mov.l	er1,er1
	bpl	.L935
	bra	.L932
.L933:
	mov.l	er3,er3
	beq	.L941
.L932:
	sub.l	er0,er0
.L937:
	cmp.l	er1,er4
	blo	.L936
	sub.l	er1,er4
	or.l	er3,er0
.L936:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L937
	bra	.L934
.L941:
	sub.l	er0,er0
.L934:
	mov.l	er2,er2
	beq	.L930
	mov.l	er4,er0
.L930:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L946
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L946:
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
	bne	.L951
	cmp.l	er3,er1
	beq	.L952
.L951:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L947
.L952:
	mov.w	#63,r0
.L947:
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
	beq	.L956:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953:16
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
	beq	.L953
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
	beq	.L953
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
	beq	.L953
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
	bra	.L953
.L956:
	sub.w	r0,r0
.L953:
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
	blo	.L1000
	mov.w	r4,r2
	extu.l	er2
	add.l	er1,er2
	cmp.l	er2,er0
	bhi	.L1000
	mov.w	r4,r2
	dec #1,r2
	mov.w	r4,r4
	bne	.L1001:16
	bra	.L999:16
.L1000:
	mov.w	r6,r6
	beq	.L1003
	mov.l	er1,er2
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.l	er0,@(4,er7)
	mov.l	er1,er5
.L1004:
	mov.l	@er2,er0
	mov.l	@(4,er2),er1
	mov.l	er0,@er3
	mov.l	er1,@(4,er3)
	adds	#4,er2
	adds	#4,er2
	adds	#4,er3
	adds	#4,er3
	cmp.l	er6,er2
	bne	.L1004
	bra	.L1030
.L1003:
	mov.w	r4,r4
	beq	.L999:16
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L1006:16
.L1030:
	mov.l	@(4,er7),er0
	mov.l	er5,er1
	mov.w	@(2,er7),r3
	cmp.w	r3,r4
	bls	.L999:16
	mov.w	r4,r2
	sub.w	r3,r2
	mov.w	r2,@(4,er7)
	dec #1,r2
	extu.l	er3
	cmp.w	#6,r2
	bls	.L1006:16
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
	bls	.L1006
	mov.l	@(8,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L1006
	mov.l	er6,er3
	mov.w	@(4,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L1009:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L1009
	mov.w	@(4,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@(2,er7),r5
	add.w	r5,r2
	and.w	#3,r3
	beq	.L999
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
	bls	.L999
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L999
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L999
.L1006:
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
.L1011:
	mov.b	@er2+,r3l
	mov.b	r3l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L1011
	bra	.L999
.L1001:
	extu.l	er2
.L1013:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1013
.L999:
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
	blo	.L1032
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L1032
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L1033:16
	bra	.L1031:16
.L1032:
	mov.w	r5,r5
	beq	.L1035
	mov.w	r5,r3
	dec #1,r3
	cmp.w	#8,r3
	bls	.L1036
	mov.l	er1,er3
	or.l	er0,er3
	and.l	#3,er3
	bne	.L1036
	mov.l	er1,er3
	adds	#2,er3
	cmp.l	er3,er0
	beq	.L1036
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
.L1039:
	mov.l	@er4+,er5
	mov.l	er5,@er3
	adds	#4,er3
	cmp.l	er6,er4
	bne	.L1039
	mov.w	@(2,er7),r5
	mov.w	@er7,r3
	shll.w	r3
	cmp.w	r3,r5
	beq	.L1035
	extu.l	er3
	shll.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.w	@er4,r4
	add.l	er0,er3
	mov.w	r4,@er3
	bra	.L1035
.L1036:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er5
	shll.l	er5
	add.l	er1,er5
.L1041:
	mov.w	@er4+,r6
	mov.w	r6,@er3
	adds	#2,er3
	cmp.l	er4,er5
	bne	.L1041
.L1035:
	btst	#0,r2l
	beq	.L1031
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L1031
.L1033:
	mov.w	r3,r2
	extu.l	er2
.L1044:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1044
.L1031:
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
	blo	.L1060
	mov.w	r4,r2
	extu.l	er2
	add.l	er1,er2
	cmp.l	er2,er0
	bhi	.L1060
	mov.w	r4,r2
	dec #1,r2
	mov.w	r4,r4
	bne	.L1061:16
	bra	.L1059:16
.L1060:
	mov.w	r6,r6
	bne	.L1063
	mov.w	r4,r4
	beq	.L1059:16
	mov.w	@er7,r3
	extu.l	er3
	bra	.L1064:16
.L1063:
	mov.w	r6,r2
	dec #1,r2
	cmp.w	#8,r2
	bls	.L1065
	mov.l	er0,er2
	or.l	er1,er2
	and.l	#3,er2
	bne	.L1065
	mov.l	er1,er2
	adds	#2,er2
	cmp.l	er2,er0
	beq	.L1065
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
.L1068:
	mov.l	@er3+,er6
	mov.l	er6,@er2
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L1068
	mov.w	@(4,er7),r6
	mov.w	@(2,er7),r2
	shll.w	r2
	cmp.w	r2,r6
	beq	.L1071
	extu.l	er2
	shll.l	er2
	mov.l	er1,er3
	add.l	er2,er3
	mov.w	@er3,r3
	add.l	er0,er2
	mov.w	r3,@er2
	bra	.L1071
.L1065:
	mov.l	er1,er3
	mov.l	er0,er2
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L1070:
	mov.w	@er3+,r5
	mov.w	r5,@er2
	adds	#2,er2
	cmp.l	er6,er3
	bne	.L1070
.L1071:
	mov.w	@er7,r3
	cmp.w	r3,r4
	bls	.L1059:16
	mov.w	r4,r2
	sub.w	r3,r2
	mov.w	r2,@(2,er7)
	dec #1,r2
	extu.l	er3
	cmp.w	#6,r2
	bls	.L1064:16
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
	bls	.L1064
	mov.l	@(4,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L1064
	mov.l	er6,er3
	mov.w	@(2,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L1074:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L1074
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@er7,r5
	add.w	r5,r2
	and.w	#3,r3
	beq	.L1059
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
	bls	.L1059
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r5l
	add.l	er0,er3
	mov.b	r5l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L1059
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L1059
.L1064:
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
.L1076:
	mov.b	@er2+,r3l
	mov.b	r3l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L1076
	bra	.L1059
.L1061:
	extu.l	er2
.L1078:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1078
.L1059:
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
	bmi	.L1109:16
	btst	#6,r0h
	bne	.L1110
	btst	#5,r0h
	bne	.L1111
	btst	#4,r0h
	bne	.L1112
	btst	#3,r0h
	bne	.L1113
	btst	#2,r0h
	bne	.L1114
	btst	#1,r0h
	bne	.L1115
	btst	#0,r0h
	bne	.L1116
	btst	#7,r0l
	bne	.L1117
	btst	#6,r0l
	bne	.L1118
	btst	#5,r0l
	bne	.L1119
	btst	#4,r0l
	bne	.L1120
	btst	#3,r0l
	bne	.L1121
	btst	#2,r0l
	bne	.L1122
	btst	#1,r0l
	bne	.L1123
	mov.w	r0,r0
	beq	.L1124
	mov.w	#15,r0
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
.L1109:
	sub.w	r0,r0
	rts
.L1124:
	mov.w	#16,r0
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	btst	#0,r0l
	bne	.L1128
	btst	#1,r0l
	bne	.L1129
	btst	#2,r0l
	bne	.L1130
	btst	#3,r0l
	bne	.L1131
	btst	#4,r0l
	bne	.L1132
	btst	#5,r0l
	bne	.L1133
	btst	#6,r0l
	bne	.L1134
	btst	#7,r0l
	bne	.L1135
	btst	#0,r0h
	bne	.L1136
	btst	#1,r0h
	bne	.L1137
	btst	#2,r0h
	bne	.L1138
	btst	#3,r0h
	bne	.L1139
	btst	#4,r0h
	bne	.L1140
	btst	#5,r0h
	bne	.L1141
	btst	#6,r0h
	bne	.L1142
	mov.w	r0,r0
	beq	.L1143
	mov.w	#15,r0
	rts
.L1128:
	sub.w	r0,r0
	rts
.L1129:
	mov.w	#1,r0
	rts
.L1130:
	mov.w	#2,r0
	rts
.L1131:
	mov.w	#3,r0
	rts
.L1132:
	mov.w	#4,r0
	rts
.L1133:
	mov.w	#5,r0
	rts
.L1134:
	mov.w	#6,r0
	rts
.L1135:
	mov.w	#7,r0
	rts
.L1136:
	mov.w	#8,r0
	rts
.L1137:
	mov.w	#9,r0
	rts
.L1138:
	mov.w	#10,r0
	rts
.L1139:
	mov.w	#11,r0
	rts
.L1140:
	mov.w	#12,r0
	rts
.L1141:
	mov.w	#13,r0
	rts
.L1142:
	mov.w	#14,r0
	rts
.L1143:
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
	bmi	.L1149
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L1144
.L1149:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L1144:
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
	beq	.L1155
	sub.l	er0,er0
.L1154:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L1154
	rts
.L1155:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L1160
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L1163
.L1159:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L1159
	rts
.L1160:
	sub.l	er0,er0
	rts
.L1163:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1174
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1167
.L1170:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1168
	dec #1,r0
	bne	.L1166
	bra	.L1176
.L1174:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1166:
	mov.l	er1,er1
	bpl	.L1170
	bra	.L1167
.L1168:
	mov.l	er3,er3
	beq	.L1176
.L1167:
	sub.l	er0,er0
.L1172:
	cmp.l	er1,er4
	blo	.L1171
	sub.l	er1,er4
	or.l	er3,er0
.L1171:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1172
	bra	.L1169
.L1176:
	sub.l	er0,er0
.L1169:
	mov.w	r2,r2
	beq	.L1165
	mov.l	er4,er0
.L1165:
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
	bmi	.L1182
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1181
	sub.w	r5,r5
.L1181:
	mov.w	r5,r0
	bra	.L1179
.L1182:
	mov.w	#-1,r0
.L1179:
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
	bmi	.L1186
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1185
	sub.w	r5,r5
.L1185:
	mov.w	r5,r0
	bra	.L1183
.L1186:
	mov.w	#-1,r0
.L1183:
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
	bpl	.L1190
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
	bne	.L1191
	bra	.L1192:16
.L1190:
	beq	.L1197:16
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	mov.l	er2,er0
	and.w	r5,r0
	mov.w	r5,r3
	shll.w	r3
	mov.w	r1,r2
	shar.w	r2
	bne	.L1194
	bra	.L1189:16
.L1191:
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r3
	shar.w	r3
	mov.w	r3,r1
	bne	.L1198
	bra	.L1192:16
.L1194:
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r1
	shar.w	r1
	beq	.L1189:16
	sub.w	r3,r3
	bra	.L1195
.L1198:
	mov.w	#1,r3
.L1195:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r5,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	beq	.L1196:16
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
	beq	.L1196:16
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
	beq	.L1196:16
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
	beq	.L1196:16
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
	beq	.L1196:16
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
	beq	.L1196:16
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
	beq	.L1196:16
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
	beq	.L1196:16
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
	beq	.L1196
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
	beq	.L1196
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
	beq	.L1196
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
.L1196:
	mov.w	r3,r3
	beq	.L1189
.L1192:
	neg.w	r0
	bra	.L1189
.L1197:
	sub.w	r0,r0
.L1189:
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
	bpl	.L1249
	neg.l	er0
	sub.w	r2,r2
	mov.w	#1,r5
	bra	.L1239
.L1249:
	mov.w	#1,r2
	sub.w	r5,r5
.L1239:
	mov.l	er1,er1
	bpl	.L1240
	neg.l	er1
	mov.w	r2,r5
.L1240:
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1250
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1242
.L1244:
	dec #1,r3
	bne	.L1241
.L1245:
	mov.l	er2,er2
	bne	.L1242
	sub.l	er0,er0
	bra	.L1243
.L1250:
	mov.w	#32,r3
	sub.l	er2,er2
	add.b	#1,r2l
.L1241:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er0
	bhi	.L1244
	bra	.L1245
.L1242:
	sub.l	er0,er0
.L1247:
	cmp.l	er1,er4
	blo	.L1246
	sub.l	er1,er4
	or.l	er2,er0
.L1246:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1247
.L1243:
	mov.w	r5,r5
	beq	.L1238
	neg.l	er0
.L1238:
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
	bpl	.L1267
	neg.l	er3
	mov.w	#1,r5
	bra	.L1257
.L1267:
	sub.w	r5,r5
.L1257:
	mov.l	er1,er1
	bpl	.L1258
	neg.l	er1
.L1258:
	mov.l	er3,er0
	cmp.l	er3,er1
	blo	.L1268
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1265
.L1262:
	dec #1,r4
	bne	.L1259
.L1263:
	mov.l	er2,er2
	bne	.L1265
	mov.l	er3,er0
	bra	.L1261
.L1268:
	mov.w	#32,r4
	sub.l	er2,er2
	add.b	#1,r2l
.L1259:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er3
	bhi	.L1262
	bra	.L1263
.L1265:
	cmp.l	er1,er0
	blo	.L1264
	sub.l	er1,er0
.L1264:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1265
.L1261:
	mov.w	r5,r5
	beq	.L1256
	neg.l	er0
.L1256:
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
	blo	.L1275
	beq	.L1328:16
	sub.w	r1,r1
	bra	.L1307:16
.L1275:
	mov.w	r1,r1
	bmi	.L1277:16
	mov.w	r1,r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1278:16
	mov.w	r3,r3
	bmi	.L1279:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1280:16
	mov.w	r3,r3
	bmi	.L1281:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1282:16
	mov.w	r3,r3
	bmi	.L1283:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1284:16
	mov.w	r3,r3
	bmi	.L1285:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1286:16
	mov.w	r3,r3
	bmi	.L1287:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1288:16
	mov.w	r3,r3
	bmi	.L1289:16
	mov.w	r1,r3
	shar.b	r3h
	mov.b	r3l,r3h
	rotxr.w	r3
	and.b	#0x80,r3l
	cmp.w	r3,r0
	bls	.L1290:16
	mov.w	r3,r3
	bmi	.L1291:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	cmp.w	r3,r0
	bls	.L1292:16
	mov.w	r3,r3
	bmi	.L1293:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1294:16
	mov.w	r3,r3
	bmi	.L1295:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1296:16
	mov.w	r3,r3
	bmi	.L1297:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1298:16
	mov.w	r3,r3
	bmi	.L1299:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1300:16
	mov.w	r3,r3
	bmi	.L1301:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	rotr.w	r3
	and.w	#57344,r3
	cmp.w	r3,r0
	bls	.L1302:16
	mov.w	r3,r3
	bmi	.L1303:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	and.w	#49152,r3
	cmp.w	r3,r0
	bls	.L1304:16
	mov.w	r3,r3
	bmi	.L1305:16
	rotr.w	r1
	and.w	#32768,r1
	cmp.w	r1,r0
	bls	.L1306:16
	mov.w	r1,r1
	beq	.L1307:16
	bra	.L1385:16
.L1332:
	mov.w	#2,r4
	bra	.L1326
.L1333:
	mov.w	#4,r4
	bra	.L1326
.L1334:
	mov.w	#8,r4
	bra	.L1326
.L1335:
	mov.w	#16,r4
	bra	.L1326
.L1336:
	mov.w	#32,r4
	bra	.L1326
.L1337:
	mov.w	#64,r4
	bra	.L1326
.L1338:
	mov.w	#128,r4
	bra	.L1326
.L1339:
	mov.w	#256,r4
	bra	.L1326
.L1340:
	mov.w	#512,r4
	bra	.L1326
.L1341:
	mov.w	#1024,r4
	bra	.L1326
.L1342:
	mov.w	#2048,r4
	bra	.L1326
.L1343:
	mov.w	#4096,r4
	bra	.L1326
.L1344:
	mov.w	#8192,r4
	bra	.L1326
.L1345:
	mov.w	#16384,r4
.L1326:
	mov.w	r4,r6
	shlr.w	r6
	mov.w	r3,r5
	shlr.w	r5
	sub.w	r1,r1
.L1327:
	cmp.w	r5,r0
	blo	.L1309
	sub.w	r5,r0
	or.w	r6,r1
	bra	.L1309
.L1331:
	mov.w	r3,r1
	sub.w	r0,r0
.L1309:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1310
	sub.w	r6,r0
	or.w	r5,r1
.L1310:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1311
	sub.w	r6,r0
	or.w	r5,r1
.L1311:
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
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1312
	sub.w	r6,r0
	or.w	r5,r1
.L1312:
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
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1313
	sub.w	r6,r0
	or.w	r5,r1
.L1313:
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
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1314
	sub.w	r6,r0
	or.w	r5,r1
.L1314:
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
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1315
	sub.w	r6,r0
	or.w	r5,r1
.L1315:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	mov.w	r5,r5
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1316
	sub.w	r6,r0
	or.w	r5,r1
.L1316:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1317
	sub.w	r6,r0
	or.w	r5,r1
.L1317:
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
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1318
	sub.w	r6,r0
	or.w	r5,r1
.L1318:
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
	beq	.L1307:16
	cmp.w	r6,r0
	blo	.L1319
	sub.w	r6,r0
	or.w	r5,r1
.L1319:
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
	beq	.L1307
	cmp.w	r6,r0
	blo	.L1320
	sub.w	r6,r0
	or.w	r5,r1
.L1320:
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
	beq	.L1307
	cmp.w	r6,r0
	blo	.L1321
	sub.w	r6,r0
	or.w	r5,r1
.L1321:
	mov.w	r4,r5
	rotl.w	r5
	rotl.w	r5
	and.w	#3,r5
	mov.w	r3,r6
	rotl.w	r6
	rotl.w	r6
	and.w	#3,r6
	mov.w	r5,r5
	beq	.L1307
	cmp.w	r6,r0
	blo	.L1322
	sub.w	r6,r0
	or.w	r5,r1
.L1322:
	rotl.w	r3
	and.w	#1,r3
	cmp.w	#16384,r4
	bne	.L1323
	bra	.L1307
.L1328:
	mov.w	#1,r1
	sub.w	r0,r0
	bra	.L1307
.L1323:
	cmp.w	r3,r0
	blo	.L1330
	sub.w	r3,r0
	or	#1,r1l
	bra	.L1307
.L1330:
	sub.w	r0,r0
.L1307:
	mov.w	r2,r2
	bne	.L1274:16
	mov.w	r1,r0
	bra	.L1274:16
.L1306:
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r0,r0
	bmi	.L1331:16
	bra	.L1326:16
.L1278:
	blo	.L1332:16
	sub.w	r3,r0
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1280:
	blo	.L1333:16
	sub.w	r3,r0
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1282:
	blo	.L1334:16
	sub.w	r3,r0
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1284:
	blo	.L1335:16
	sub.w	r3,r0
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1286:
	blo	.L1336:16
	sub.w	r3,r0
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1288:
	blo	.L1337:16
	sub.w	r3,r0
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1290:
	blo	.L1338:16
	sub.w	r3,r0
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1292:
	blo	.L1339:16
	sub.w	r3,r0
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1294:
	blo	.L1340:16
	sub.w	r3,r0
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1296:
	blo	.L1341:16
	sub.w	r3,r0
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1298:
	blo	.L1342:16
	sub.w	r3,r0
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1300:
	blo	.L1343:16
	sub.w	r3,r0
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1302:
	blo	.L1344:16
	sub.w	r3,r0
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1304:
	blo	.L1345:16
	sub.w	r3,r0
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1309:16
.L1385:
	add.b	#128,r0h
	mov.w	#16384,r5
	mov.w	r5,r6
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r3,r1
	bra	.L1327:16
.L1277:
	sub.w	r1,r0
	mov.w	#1,r1
	bra	.L1307:16
.L1279:
	sub.w	r3,r0
	and	#127,r1h
	mov.w	r1,r5
	mov.w	#1,r6
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1281:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2,r6
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1283:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4,r6
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1285:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8,r6
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1287:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#16,r6
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1289:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#32,r6
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1291:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#64,r6
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1293:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#128,r6
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1295:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#256,r6
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1297:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#512,r6
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1299:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#1024,r6
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1301:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2048,r6
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1303:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4096,r6
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1305:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8192,r6
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1327:16
.L1274:
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
	bhi	.L1395
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1388
.L1391:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1389
	dec #1,r0
	bne	.L1387
	bra	.L1397
.L1395:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1387:
	mov.l	er1,er1
	bpl	.L1391
	bra	.L1388
.L1389:
	mov.l	er3,er3
	beq	.L1397
.L1388:
	sub.l	er0,er0
.L1393:
	cmp.l	er1,er4
	blo	.L1392
	sub.l	er1,er4
	or.l	er3,er0
.L1392:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1393
	bra	.L1390
.L1397:
	sub.l	er0,er0
.L1390:
	mov.w	r2,r2
	beq	.L1386
	mov.l	er4,er0
.L1386:
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
	beq	.L1401
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1406
.L1405:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1405
.L1406:
	sub.l	er0,er0
	bra	.L1402
.L1401:
	mov.w	r2,r2
	beq	.L1404
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1408
.L1407:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1407
.L1408:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1410
.L1409:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1409
.L1410:
	mov.b	r2l,r2l
	ble	.L1412
.L1411:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1411
.L1412:
	or.l	er3,er4
.L1402:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L1400
.L1404:
	mov.l	er0,er2
	mov.l	er1,er3
.L1400:
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
	beq	.L1414
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1419
.L1418:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1418
.L1419:
	bra	.L1415
.L1414:
	mov.w	r2,r2
	beq	.L1417
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1421
.L1420:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1420
.L1421:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1423
.L1422:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1422
.L1423:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L1425
.L1424:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L1424
.L1425:
	or.l	er3,er0
.L1415:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1413
.L1417:
	mov.l	er0,er2
	mov.l	er1,er3
.L1413:
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
	bls	.L1461
	sub.l	er0,er0
.L1461:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1477
.L1476:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1476
.L1477:
	sub.l	er1,er1
	mov.b	r2h,r1h
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1462
	sub.l	er3,er3
.L1462:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1479
.L1478:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1478
.L1479:
	add.l	er3,er0
	sub.l	er1,er1
	mov.b	r2l,r1l
	and	#240,r1l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1463
	sub.l	er3,er3
.L1463:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1481
.L1480:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1480
.L1481:
	add.l	er0,er3
	mov.l	er3,er4
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#12,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1464
	sub.l	er3,er3
.L1464:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1483
.L1482:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1482
.L1483:
	btst	#1,r2l
	bne	.L1465
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L1466
.L1465:
	sub.w	r0,r0
.L1466:
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
	blt	.L1488
	bgt	.L1489
	cmp.l	er3,er5
	blo	.L1488
	bhi	.L1489
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1484
.L1488:
	sub.l	er0,er0
	bra	.L1484
.L1489:
	sub.l	er0,er0
	add.b	#2,r0l
.L1484:
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
	blt	.L1495
	bgt	.L1494
	cmp.l	er3,er5
	blo	.L1495
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1490
	sub.l	er0,er0
	bra	.L1490
.L1494:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1490
.L1495:
	sub.l	er0,er0
	subs	#1,er0
.L1490:
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
	beq	.L1497
	sub.l	er0,er0
.L1497:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L1514
.L1513:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1513
.L1514:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1498
	sub.l	er3,er3
.L1498:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1516
.L1515:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1515
.L1516:
	add.l	er0,er3
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#15,r0l
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L1499
	sub.l	er1,er1
.L1499:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L1518
.L1517:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1517
.L1518:
	add.l	er3,er1
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#3,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1500
	sub.l	er3,er3
.L1500:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1520
.L1519:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1519
.L1520:
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
	beq	.L1522
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1527
.L1526:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1526
.L1527:
	sub.l	er1,er1
	bra	.L1523
.L1522:
	mov.w	r2,r2
	beq	.L1525
	mov.l	er0,er1
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L1529
.L1528:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1528
.L1529:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1531
.L1530:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1530
.L1531:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L1533
.L1532:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1532
.L1533:
	or.l	er3,er0
.L1523:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1521
.L1525:
	mov.l	er0,er2
	mov.l	er1,er3
.L1521:
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
	bne	.L1537
	sub.l	er6,er6
.L1537:
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
	ble	.L1540
.L1539:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1539
.L1540:
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
	ble	.L1543
.L1542:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1542
.L1543:
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
	bhi	.L1545
	sub.l	er0,er0
.L1545:
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
	beq	.L1550
.L1553:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1550:
	mov.w	r4,r4
	bpl	.L1551
	inc #1,r4
.L1551:
	shar.w	r4
	beq	.L1552
.L1555:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1553
	mov.w	r4,r4
	bpl	.L1554
	inc #1,r4
.L1554:
	shar.w	r4
	bra	.L1555
.L1552:
	mov.w	@(2,er7),r2
	bpl	.L1549
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1549:
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
	beq	.L1559
.L1562:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1559:
	mov.w	r4,r4
	bpl	.L1560
	inc #1,r4
.L1560:
	shar.w	r4
	beq	.L1561
.L1564:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1562
	mov.w	r4,r4
	bpl	.L1563
	inc #1,r4
.L1563:
	shar.w	r4
	bra	.L1564
.L1561:
	mov.w	@(2,er7),r2
	bpl	.L1558
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1558:
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
	blo	.L1571
	bhi	.L1572
	cmp.l	er3,er5
	blo	.L1571
	bhi	.L1572
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1567
.L1571:
	sub.l	er0,er0
	bra	.L1567
.L1572:
	sub.l	er0,er0
	add.b	#2,r0l
.L1567:
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
	blo	.L1578
	bhi	.L1577
	cmp.l	er3,er5
	blo	.L1578
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1573
	sub.l	er0,er0
	bra	.L1573
.L1577:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1573
.L1578:
	sub.l	er0,er0
	subs	#1,er0
.L1573:
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
	.global ___unordsf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.end
