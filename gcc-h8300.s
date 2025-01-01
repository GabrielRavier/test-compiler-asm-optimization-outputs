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
	bne	.L16
.L18:
	sub.l	er0,er0
	bra	.L15
.L19:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L18
.L16:
	mov.b	@er1,r3l
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
	bne	.L19
	adds	#1,er0
.L15:
	mov.l	@er7+,er4
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.l	er2,er2
	bne	.L26
	bra	.L29
.L28:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L29
.L26:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	bne	.L28
	rts
.L29:
	sub.l	er0,er0
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L32
	bra	.L36
.L34:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L36
.L32:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L34
	bra	.L38
.L36:
	sub.w	r0,r0
	bra	.L31
.L38:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
.L31:
	mov.l	@er7+,er4
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L40
	jsr	@_memcpy
	mov.l	er0,er3
.L40:
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
	bra	.L45
.L47:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L44
.L45:
	cmp.l	er4,er2
	bne	.L47
	sub.l	er0,er0
.L44:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L51
	extu.w	r1
	jsr	@_memset
	mov.l	er0,er3
.L51:
	mov.l	er3,er0
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L59
.L54:
	adds	#1,er1
	adds	#1,er0
.L59:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L54
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	bne	.L61
	rts
.L63:
	adds	#1,er0
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	beq	.L67
.L61:
	cmp.w	r1,r2
	bne	.L63
.L67:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L71:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L73
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L71
	sub.l	er0,er0
.L73:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L82
.L77:
	adds	#1,er0
	adds	#1,er1
.L82:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	beq	.L75
	mov.b	r2l,r0l
	extu.w	r0
	bra	.L76
.L75:
	mov.b	r2l,r2l
	bne	.L77
	sub.w	r0,r0
.L76:
	sub.w	r3,r0
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	mov.l	er0,er3
	mov.b	@er0,r2l
	beq	.L86
	mov.l	er0,er2
.L85:
	adds	#1,er2
	mov.b	@er2,r0l
	bne	.L85
	sub.l	er3,er2
	mov.l	er2,er0
	rts
.L86:
	sub.l	er0,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L96
	mov.b	@er0,r3l
	bne	.L90
	mov.b	@er1,r4l
	extu.w	r4
	sub.w	r0,r0
	bra	.L91
.L95:
	adds	#1,er0
	mov.l	er1,er4
	adds	#1,er4
	mov.b	@er0,r3l
	bne	.L97
	mov.b	@(1,er1),r4l
	extu.w	r4
	sub.w	r0,r0
	bra	.L91
.L90:
	subs	#1,er2
	add.l	er0,er2
	bra	.L92
.L97:
	mov.l	er4,er1
.L92:
	mov.b	@er1,r4l
	extu.w	r4
	mov.b	r4l,r4l
	beq	.L98
	cmp.l	er0,er2
	beq	.L98
	cmp.b	r3l,r4l
	beq	.L95
.L98:
	mov.b	r3l,r0l
	extu.w	r0
.L91:
	sub.w	r4,r0
	bra	.L88
.L96:
	sub.w	r0,r0
.L88:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L103
	and	#254,r2l
	add.l	er0,er2
.L101:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L101
.L103:
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
	bls	.L106
	sub.w	r0,r0
.L106:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L108
	sub.w	r2,r2
.L108:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L112
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L111
	sub.w	r2,r2
.L111:
	mov.w	r2,r0
	rts
.L112:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L119
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L118
	sub.w	r2,r2
.L118:
	mov.w	r2,r0
	rts
.L119:
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
	bls	.L125
	sub.w	r0,r0
.L125:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L128
	sub.w	r0,r0
.L128:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L131
	sub.w	r0,r0
.L131:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L134
	sub.w	r0,r0
.L134:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L138
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L137
	sub.w	r2,r2
.L137:
	mov.w	r2,r0
	rts
.L138:
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
	bls	.L141
	sub.w	r0,r0
.L141:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L147
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L147
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L147
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L144
	sub.w	r2,r2
.L144:
	mov.w	r2,r0
	rts
.L147:
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
	bls	.L150
	sub.w	r0,r0
.L150:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L152
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L159
	sub.w	r0,r0
	rts
.L152:
	cmp.w	#8231,r0
	bls	.L158
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L158
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L158
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L155
	sub.w	r2,r2
.L155:
	mov.w	r2,r0
	rts
.L158:
	mov.w	#1,r0
.L159:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L164
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L165
	sub.w	r0,r0
	rts
.L164:
	mov.w	#1,r0
.L165:
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
	bne	.L171
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L172
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L175
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L168
.L171:
	mov.l	er4,er0
	bra	.L168
.L172:
	mov.l	er5,er0
	bra	.L168
.L175:
	sub.l	er0,er0
.L168:
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
	bne	.L179
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L180
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L183
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L176
.L179:
	mov.l	er4,er0
	bra	.L176
.L180:
	mov.l	er5,er0
	bra	.L176
.L183:
	sub.l	er0,er0
.L176:
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
	bne	.L192
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L191
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L186
	mov.w	r2,r2
	bne	.L192
	bra	.L191
.L186:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L192
	mov.l	er5,er4
	bra	.L192
.L191:
	mov.l	er5,er0
	bra	.L184
.L192:
	mov.l	er4,er0
.L184:
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
	bne	.L203
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L202
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L197
	mov.w	r2,r2
	bne	.L203
	bra	.L202
.L197:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L203
	mov.l	er5,er4
	bra	.L203
.L202:
	mov.l	er5,er0
	bra	.L195
.L203:
	mov.l	er4,er0
.L195:
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
	bne	.L214
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L213
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L208
	mov.w	r2,r2
	bne	.L214
	bra	.L213
.L208:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L214
	mov.l	er5,er4
	bra	.L214
.L213:
	mov.l	er5,er0
	bra	.L206
.L214:
	mov.l	er4,er0
.L206:
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
	bne	.L223
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L225
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L219
	mov.w	r2,r2
	bne	.L225
	bra	.L223
.L219:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L225
	mov.l	er5,er4
	bra	.L225
.L223:
	mov.l	er5,er0
	bra	.L217
.L225:
	mov.l	er4,er0
.L217:
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
	bne	.L234
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L236
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L230
	mov.w	r2,r2
	bne	.L236
	bra	.L234
.L230:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L236
	mov.l	er5,er4
	bra	.L236
.L234:
	mov.l	er5,er0
	bra	.L228
.L236:
	mov.l	er4,er0
.L228:
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
	bne	.L245
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L247
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L241
	mov.w	r2,r2
	bne	.L247
	bra	.L245
.L241:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L247
	mov.l	er5,er4
	bra	.L247
.L245:
	mov.l	er5,er0
	bra	.L239
.L247:
	mov.l	er4,er0
.L239:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L251
	mov.l	#_digits,er1
.L252:
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
	bne	.L252
.L251:
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
	blo	.L257
	sub.l	er6,er6
.L257:
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
	bne	.L259
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L259:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L264
	mov.l	er0,@(4,er2)
.L264:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L267
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L267:
	mov.l	@(4,er0),er3
	beq	.L275
	mov.l	er2,@er3
.L275:
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
	beq	.L277
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
.L279:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L276
	adds	#1,er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er6,er2
	bne	.L279
	mov.l	er2,er1
	mov.l	@(12,er7),er3
.L277:
	mov.l	er1,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(32,er7),er2
	beq	.L276
	mov.l	@er7,er1
	mov.l	er5,er0
	jsr	@_memmove
.L276:
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
	beq	.L293
	sub.l	er5,er5
	mov.l	er1,@(4,er7)
	mov.l	er4,er6
	mov.l	er0,@er7
.L295:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L292
	adds	#1,er5
	mov.l	@(24,er7),er2
	add.l	er2,er6
	mov.l	@(4,er7),er2
	cmp.l	er5,er2
	bne	.L295
.L293:
	sub.l	er6,er6
.L292:
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
	bpl	.L306
	neg.w	r0
.L306:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
.L314:
	mov.b	@er0,r3l
	cmp.b	#32,r3l
	beq	.L308
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,r1
	add.w	#-9,r1
	cmp.w	#4,r1
	bls	.L308
	cmp.b	#43,r3l
	beq	.L309
	cmp.b	#45,r3l
	beq	.L310
	bra	.L325
.L309:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L327
	bra	.L319
.L308:
	adds	#1,er0
	bra	.L314
.L310:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bhi	.L319
	mov.w	#1,r0
	mov.w	r0,@(2,er7)
	bra	.L312
.L320:
	mov.l	er0,er3
.L327:
	sub.w	r0,r0
	mov.w	r0,@(2,er7)
.L312:
	sub.w	r0,r0
	mov.w	#10,r6
.L316:
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
	bls	.L316
	bra	.L326
.L325:
	mov.w	r2,r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L320
	bra	.L319
.L326:
	mov.w	@(2,er7),r2
	bne	.L307
	mov.w	r4,r0
	sub.w	r1,r0
	bra	.L307
.L319:
	sub.w	r0,r0
.L307:
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
.L335:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L329
	mov.b	r2l,r6l
	extu.w	r6
	mov.w	r6,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L329
	cmp.b	#43,r2l
	beq	.L330
	cmp.b	#45,r2l
	beq	.L331
	bra	.L346
.L330:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L348
	bra	.L340
.L329:
	adds	#1,er0
	bra	.L335
.L331:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L340
	mov.w	#1,r4
	bra	.L333
.L341:
	mov.l	er0,er5
.L348:
	sub.w	r4,r4
.L333:
	sub.l	er0,er0
.L337:
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
	bls	.L337
	bra	.L347
.L346:
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L341
	bra	.L340
.L347:
	mov.w	r4,r4
	bne	.L328
	sub.l	er2,er3
	mov.l	er3,er0
	bra	.L328
.L340:
	sub.l	er0,er0
.L328:
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
.L356:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L350
	mov.b	r2l,r4l
	extu.w	r4
	mov.w	r4,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L350
	cmp.b	#43,r2l
	beq	.L351
	cmp.b	#45,r2l
	beq	.L352
	bra	.L369:16
.L351:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L371
	bra	.L363:16
.L350:
	adds	#1,er0
	bra	.L356
.L352:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L363:16
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L354
.L364:
	mov.l	er0,er5
.L371:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L354:
	sub.l	er2,er2
	sub.l	er3,er3
	sub.l	er6,er6
	add.b	#1,r6l
.L359:
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
	bhi	.L358
	sub.l	er2,er2
.L358:
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
	bls	.L359:16
	bra	.L370
.L369:
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L364:16
	bra	.L363
.L370:
	mov.w	@(18,er7),r0
	bne	.L349
	mov.l	@(12,er7),er2
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	@(12,er7),er3
	cmp.l	er3,er1
	bhi	.L361
	sub.l	er2,er2
.L361:
	mov.l	@(8,er7),er3
	mov.l	@er7,er4
	sub.l	er4,er3
	mov.l	er3,er4
	sub.l	er2,er4
	mov.l	er4,er2
	mov.l	er1,er3
	bra	.L349
.L363:
	sub.l	er2,er2
	sub.l	er3,er3
.L349:
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
	beq	.L373
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
.L376:
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
	bmi	.L377
	beq	.L385
	mov.l	@(24,er7),er2
	add.l	er4,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	subs	#1,er2
	sub.l	er6,er2
	mov.l	er2,er5
	bra	.L374
.L377:
	mov.l	er6,er5
.L374:
	mov.l	er5,er5
	bne	.L376
.L373:
	sub.l	er5,er5
	bra	.L372
.L385:
	mov.l	er4,er5
.L372:
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
	mov.w	r2,r4
	bne	.L397
.L390:
	sub.l	er5,er5
	bra	.L386
.L397:
	mov.l	er1,@er7
.L387:
	mov.w	r4,r6
	shar.w	r6
	mov.l	@(24,er7),er1
	mov.w	r6,r0
	exts.l	er0
	jsr	@___mulsi3
	mov.l	@er7,er2
	add.l	er2,er0
	mov.l	er0,er5
	mov.l	@(32,er7),er2
	mov.l	er0,er1
	mov.l	@(4,er7),er0
	mov.l	@(28,er7),er3
	jsr	@er3
	mov.w	r0,r0
	beq	.L386
	ble	.L391
	mov.l	@(24,er7),er2
	add.l	er5,er2
	mov.l	er2,@er7
	dec #1,r4
	shar.w	r4
	bra	.L389
.L391:
	mov.w	r6,r4
.L389:
	mov.w	r4,r4
	bne	.L387
	bra	.L390
.L386:
	mov.l	er5,er0
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
	bpl	.L401
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L403
	sub.l	er6,er6
.L403:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L401:
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
	bpl	.L407
	neg.l	er0
.L407:
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
	bpl	.L410
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L412
	sub.l	er6,er6
.L412:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L410:
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
	bra	.L421
.L417:
	adds	#2,er0
.L421:
	mov.w	@er0,r2
	beq	.L418
	cmp.w	r2,r1
	bne	.L417
	rts
.L418:
	sub.l	er0,er0
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L430
.L425:
	adds	#2,er0
	adds	#2,er1
.L430:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L424
	mov.w	r2,r2
	bne	.L425
.L424:
	cmp.w	r3,r2
	blo	.L428
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L431
	sub.w	r0,r0
	rts
.L428:
	mov.w	#-1,r0
.L431:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L434:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L434
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L439
	mov.l	er0,er2
.L438:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L438
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
.L439:
	sub.l	er0,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L442
	bra	.L448
.L445:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L448
.L442:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L444
	mov.w	r3,r3
	bne	.L445
	bra	.L444
.L447:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L441
.L448:
	sub.w	r0,r0
	bra	.L441
.L444:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L447
	mov.w	#-1,r0
.L441:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L457
.L453:
	subs	#1,er2
	adds	#2,er0
.L457:
	mov.l	er2,er2
	beq	.L454
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L453
	rts
.L454:
	sub.l	er0,er0
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L459
	bra	.L465
.L461:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L465
.L459:
	mov.w	@er0,r4
	mov.w	@er1,r3
	cmp.w	r3,r4
	beq	.L461
	bra	.L467
.L464:
	mov.w	#1,r0
	cmp.w	r3,r4
	bhi	.L458
.L465:
	sub.w	r0,r0
	bra	.L458
.L467:
	bhs	.L464
	mov.w	#-1,r0
.L458:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L469
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L469:
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
	beq	.L480
	mov.l	er0,@er7
	mov.l	er1,er5
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er0,er6
	sub.l	er1,er6
	mov.l	er6,@(4,er7)
	mov.l	er2,er6
	shll.l	er6
	mov.l	@(4,er7),er4
	cmp.l	er6,er4
	blo	.L475
	mov.l	er2,er2
	bne	.L486
	bra	.L480
.L475:
	mov.l	er2,er2
	beq	.L480
	shll.l	er3
.L478:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L478
	bra	.L480
.L486:
	mov.l	er0,er4
.L476:
	mov.w	@er5+,r2
	mov.w	r2,@er4
	subs	#1,er3
	adds	#2,er4
	cmp.l	#-1,er3
	bne	.L476
.L480:
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
	beq	.L494
	mov.l	er0,er2
.L489:
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L489
.L494:
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L496
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L508
.L498:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L498
	rts
.L496:
	beq	.L508
	mov.l	er2,er2
	beq	.L508
	add.l	er0,er2
.L499:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
	cmp.l	er2,er0
	bne	.L499
.L508:
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
	bmi	.L511
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L516
.L515:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L515
.L516:
	bra	.L512
.L511:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L518
.L517:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L517
.L518:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L520
.L519:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L519
.L520:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L522
.L521:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L521
.L522:
.L512:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L513
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L524
.L523:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L523
.L524:
	bra	.L514
.L513:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L526
.L525:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L525
.L526:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L528
.L527:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L527
.L528:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L530
.L529:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L529
.L530:
.L514:
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
	bmi	.L532
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L537
.L536:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L536
.L537:
	bra	.L533
.L532:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L539
.L538:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L538
.L539:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L541
.L540:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L540
.L541:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L543
.L542:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L542
.L543:
.L533:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L534
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L545
.L544:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L544
.L545:
	bra	.L535
.L534:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L547
.L546:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L546
.L547:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L549
.L548:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L548
.L549:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L551
.L550:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L550
.L551:
.L535:
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
	ble	.L556
.L553:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L553
.L556:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L561
.L558:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L558
.L561:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L566
.L563:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L563
.L566:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L571
.L568:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L568
.L571:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L576
.L573:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L573
.L576:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L581
.L578:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L578
.L581:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L586
.L583:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L583
.L586:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L591
.L588:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L588
.L591:
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
	bne	.L630
	btst	#1,r0l
	bne	.L631
	btst	#2,r0l
	bne	.L632
	btst	#3,r0l
	bne	.L633
	btst	#4,r0l
	bne	.L634
	btst	#5,r0l
	bne	.L635
	btst	#6,r0l
	bne	.L636
	btst	#7,r0l
	bne	.L637
	btst	#0,r0h
	bne	.L638
	btst	#1,r0h
	bne	.L639
	btst	#2,r0h
	bne	.L640
	btst	#3,r0h
	bne	.L641
	btst	#4,r0h
	bne	.L642
	btst	#5,r0h
	bne	.L643
	btst	#6,r0h
	bne	.L644
	mov.w	r0,r0
	beq	.L645
	mov.w	#16,r0
	rts
.L630:
	mov.w	#1,r0
	rts
.L631:
	mov.w	#2,r0
	rts
.L632:
	mov.w	#3,r0
	rts
.L633:
	mov.w	#4,r0
	rts
.L634:
	mov.w	#5,r0
	rts
.L635:
	mov.w	#6,r0
	rts
.L636:
	mov.w	#7,r0
	rts
.L637:
	mov.w	#8,r0
	rts
.L638:
	mov.w	#9,r0
	rts
.L639:
	mov.w	#10,r0
	rts
.L640:
	mov.w	#11,r0
	rts
.L641:
	mov.w	#12,r0
	rts
.L642:
	mov.w	#13,r0
	rts
.L643:
	mov.w	#14,r0
	rts
.L644:
	mov.w	#15,r0
	rts
.L645:
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L649
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L652
	mov.w	#1,r0
.L648:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L648
	rts
.L649:
	sub.w	r0,r0
.L652:
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
	bmi	.L657
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L656
	sub.w	r5,r5
.L656:
	mov.w	r5,r0
	bra	.L654
.L657:
	mov.w	#1,r0
.L654:
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
	bmi	.L661
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L660
	sub.w	r5,r5
.L660:
	mov.w	r5,r0
	bra	.L658
.L661:
	mov.w	#1,r0
.L658:
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
	bmi	.L665
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L664
	sub.w	r5,r5
.L664:
	mov.w	r5,r0
	bra	.L662
.L665:
	mov.w	#1,r0
.L662:
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
	bne	.L668
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L668
	mov.w	r4,r4
	bpl	.L676
	mov.l	#1056964608,er1
	bra	.L670
.L676:
	mov.l	#1073741824,er1
.L670:
	btst	#0,r4l
	beq	.L671
.L673:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L671:
	mov.w	r4,r4
	bpl	.L672
	inc #1,r4
.L672:
	shar.w	r4
	beq	.L668
.L675:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L673
	mov.w	r4,r4
	bpl	.L674
	inc #1,r4
.L674:
	shar.w	r4
	bra	.L675
.L668:
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
	bne	.L685
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L685
	mov.w	r4,r4
	bpl	.L693
	mov.l	#1056964608,er1
	bra	.L687
.L693:
	mov.l	#1073741824,er1
.L687:
	btst	#0,r4l
	beq	.L688
.L690:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L688:
	mov.w	r4,r4
	bpl	.L689
	inc #1,r4
.L689:
	shar.w	r4
	beq	.L685
.L692:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L690
	mov.w	r4,r4
	bpl	.L691
	inc #1,r4
.L691:
	shar.w	r4
	bra	.L692
.L685:
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
	bne	.L702
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L702
	mov.w	r4,r4
	bpl	.L710
	mov.l	#1056964608,er1
	bra	.L704
.L710:
	mov.l	#1073741824,er1
.L704:
	btst	#0,r4l
	beq	.L705
.L707:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L705:
	mov.w	r4,r4
	bpl	.L706
	inc #1,r4
.L706:
	shar.w	r4
	beq	.L702
.L709:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L707
	mov.w	r4,r4
	bpl	.L708
	inc #1,r4
.L708:
	shar.w	r4
	bra	.L709
.L702:
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
	beq	.L719
	mov.l	er0,er3
	add.l	er1,er2
.L720:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er2,er1
	bne	.L720
.L719:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er4,@-er7
	mov.b	@er0,r3l
	beq	.L732
	mov.l	er0,er3
.L727:
	adds	#1,er3
	mov.b	@er3,r4l
	bne	.L727
	bra	.L726
.L732:
	mov.l	er0,er3
.L726:
	mov.l	er2,er2
	bne	.L728
	bra	.L729
.L730:
	adds	#1,er1
	adds	#1,er3
	dec.l	#1,er2
	beq	.L729
.L728:
	mov.b	@er1,r4l
	mov.b	r4l,@er3
	mov.b	r4l,r4l
	bne	.L730
	bra	.L731
.L729:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
.L731:
	mov.l	@er7+,er4
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er1,er1
	bne	.L739
	rts
.L741:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L739
	rts
.L739:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L741
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L745
	bra	.L749
.L747:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L746
.L748:
	mov.b	@er2,r3l
	bne	.L747
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L749
.L745:
	mov.l	er1,er2
	bra	.L748
.L749:
	sub.l	er0,er0
.L746:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L753:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r4,r1
	bne	.L752
	mov.l	er2,er0
.L752:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L753
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
	beq	.L755
.L757:
	adds	#1,er2
	mov.b	@er2,r3l
	bne	.L757
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	beq	.L755
	subs	#1,er2
	mov.l	er2,@(8,er7)
	bra	.L765
.L764:
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(4,er7),er6
	mov.l	er0,er3
	mov.b	r4l,r1l
	mov.l	er0,@er7
	mov.l	er5,er0
	bra	.L759
.L763:
	adds	#1,er3
	mov.l	er6,er5
	adds	#1,er5
	mov.b	@er3,r2l
	bne	.L760
	mov.l	@er7,er0
	mov.b	@(1,er6),r1l
	bra	.L761
.L760:
	mov.b	@er5,r1l
	beq	.L774
	mov.l	er5,er6
.L759:
	cmp.l	er0,er3
	beq	.L775
	cmp.b	r2l,r1l
	beq	.L763
	bra	.L774
.L775:
	mov.l	@er7,er0
.L761:
	cmp.b	r1l,r2l
	bne	.L762
	bra	.L755
.L774:
	mov.l	@er7,er0
.L762:
	adds	#1,er0
.L765:
	mov.b	@er0,r2l
	cmp.b	r2l,r4l
	beq	.L764
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L765
	sub.l	er0,er0
.L755:
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
	bpl	.L785
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L780
	bra	.L779
.L785:
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L780
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L780
.L779:
	xor.w	#32768,e4
.L780:
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
	mov.l	er0,er3
	mov.l	er2,er0
	mov.l	er2,@(4,er7)
	mov.l	@(32,er7),er2
	beq	.L792
	cmp.l	er2,er1
	blo	.L794
	sub.l	er2,er1
	add.l	er3,er1
	cmp.l	er1,er3
	bhi	.L794
	mov.b	@er0,r6l
	subs	#1,er2
	mov.l	er2,@er7
.L791:
	mov.b	@er3,r2l
	mov.l	er3,er0
	adds	#1,er3
	cmp.b	r6l,r2l
	bne	.L788
	mov.l	@(4,er7),er4
	adds	#1,er4
	mov.l	@er7,er2
	bne	.L795
	bra	.L786
.L790:
	adds	#1,er2
	adds	#1,er4
	cmp.l	er5,er2
	bne	.L789
	mov.l	@(12,er7),er0
	bra	.L786
.L795:
	mov.l	er3,er2
	mov.l	@er7,er5
	add.l	er3,er5
	mov.l	er0,@(12,er7)
	mov.l	er3,@(8,er7)
.L789:
	mov.b	@er2,r0l
	mov.b	@er4,r3l
	cmp.b	r3l,r0l
	beq	.L790
	mov.l	@(8,er7),er3
.L788:
	cmp.l	er3,er1
	bhs	.L791
	bra	.L794
.L792:
	mov.l	er3,er0
	bra	.L786
.L794:
	sub.l	er0,er0
.L786:
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
	beq	.L798
	mov.l	er4,er2
	jsr	@_memmove
	mov.l	er0,er3
.L798:
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
	bpl	.L823
	mov.l	er4,er5
	xor.w	#32768,e5
	mov.l	#3212836864,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L814
	mov.l	#3204448256,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L815
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er4,er0
	bra	.L802:16
.L823:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L816
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L808
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L817
.L808:
	sub.w	r2,r2
	mov.l	@er7,er3
	mov.w	r2,@er3
	mov.l	er4,er0
	bra	.L802
.L814:
	mov.l	er5,er4
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L805
.L816:
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L805:
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L811:
	inc #1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L811
	bra	.L812
.L815:
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L806
.L817:
	mov.l	er4,er5
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L806:
	mov.l	er5,er4
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L813:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L813
.L812:
	mov.l	@er7,er2
	mov.w	r6,@er2
	mov.l	er4,er0
	mov.w	@(6,er7),r2
	beq	.L802
	xor.w	#32768,e0
.L802:
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
	beq	.L831:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L830:
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
	bne	.L827
	sub.l	er6,er6
.L827:
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
	bne	.L830:16
	bra	.L824
.L831:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L824:
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
	blo	.L842
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L835
.L838:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L836
	dec #1,r0
	bne	.L834
	bra	.L844
.L842:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L834:
	mov.l	er1,er1
	bpl	.L838
	bra	.L835
.L836:
	mov.l	er3,er3
	beq	.L844
.L835:
	sub.l	er0,er0
.L840:
	cmp.l	er1,er4
	blo	.L839
	sub.l	er1,er4
	or.l	er3,er0
.L839:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L840
	bra	.L837
.L844:
	sub.l	er0,er0
.L837:
	mov.l	er2,er2
	beq	.L833
	mov.l	er4,er0
.L833:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L849
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L849:
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
	bne	.L854
	cmp.l	er3,er1
	beq	.L855
.L854:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L850
.L855:
	mov.w	#63,r0
.L850:
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
	beq	.L859:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856:16
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
	beq	.L856
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
	beq	.L856
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
	beq	.L856
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
	bra	.L856
.L859:
	sub.w	r0,r0
.L856:
	mov.l	@er7+,er4
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
	blo	.L903
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L903
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L904
	bra	.L902:16
.L903:
	mov.w	r6,r6
	beq	.L906
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L907:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L907
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L906:
	cmp.w	r5,r2
	bls	.L902
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
.L908:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L908
	bra	.L902
.L904:
	mov.w	r3,r2
	extu.l	er2
.L909:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L909
.L902:
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
	blo	.L917
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L917
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L918
	bra	.L916
.L917:
	mov.w	r6,r6
	beq	.L920
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L921:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L921
.L920:
	btst	#0,r2l
	beq	.L916
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L916
.L918:
	mov.w	r3,r2
	extu.l	er2
.L923:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L923
.L916:
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
	blo	.L933
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L933
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L934
	bra	.L932
.L933:
	mov.w	r6,r6
	beq	.L936
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L937:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L937
	mov.w	@(2,er7),r5
.L936:
	cmp.w	r5,r2
	bls	.L932
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
.L938:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L938
	bra	.L932
.L934:
	mov.w	r3,r2
	extu.l	er2
.L939:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L939
.L932:
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
	mov.w	r0,r0
	bmi	.L955:16
	btst	#6,r0h
	bne	.L956
	btst	#5,r0h
	bne	.L957
	btst	#4,r0h
	bne	.L958
	btst	#3,r0h
	bne	.L959
	btst	#2,r0h
	bne	.L960
	btst	#1,r0h
	bne	.L961
	btst	#0,r0h
	bne	.L962
	btst	#7,r0l
	bne	.L963
	btst	#6,r0l
	bne	.L964
	btst	#5,r0l
	bne	.L965
	btst	#4,r0l
	bne	.L966
	btst	#3,r0l
	bne	.L967
	btst	#2,r0l
	bne	.L968
	btst	#1,r0l
	bne	.L969
	mov.w	r0,r0
	beq	.L970
	mov.w	#15,r0
	rts
.L956:
	mov.w	#1,r0
	rts
.L957:
	mov.w	#2,r0
	rts
.L958:
	mov.w	#3,r0
	rts
.L959:
	mov.w	#4,r0
	rts
.L960:
	mov.w	#5,r0
	rts
.L961:
	mov.w	#6,r0
	rts
.L962:
	mov.w	#7,r0
	rts
.L963:
	mov.w	#8,r0
	rts
.L964:
	mov.w	#9,r0
	rts
.L965:
	mov.w	#10,r0
	rts
.L966:
	mov.w	#11,r0
	rts
.L967:
	mov.w	#12,r0
	rts
.L968:
	mov.w	#13,r0
	rts
.L969:
	mov.w	#14,r0
	rts
.L955:
	sub.w	r0,r0
	rts
.L970:
	mov.w	#16,r0
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	btst	#0,r0l
	bne	.L974
	btst	#1,r0l
	bne	.L975
	btst	#2,r0l
	bne	.L976
	btst	#3,r0l
	bne	.L977
	btst	#4,r0l
	bne	.L978
	btst	#5,r0l
	bne	.L979
	btst	#6,r0l
	bne	.L980
	btst	#7,r0l
	bne	.L981
	btst	#0,r0h
	bne	.L982
	btst	#1,r0h
	bne	.L983
	btst	#2,r0h
	bne	.L984
	btst	#3,r0h
	bne	.L985
	btst	#4,r0h
	bne	.L986
	btst	#5,r0h
	bne	.L987
	btst	#6,r0h
	bne	.L988
	mov.w	r0,r0
	beq	.L989
	mov.w	#15,r0
	rts
.L974:
	sub.w	r0,r0
	rts
.L975:
	mov.w	#1,r0
	rts
.L976:
	mov.w	#2,r0
	rts
.L977:
	mov.w	#3,r0
	rts
.L978:
	mov.w	#4,r0
	rts
.L979:
	mov.w	#5,r0
	rts
.L980:
	mov.w	#6,r0
	rts
.L981:
	mov.w	#7,r0
	rts
.L982:
	mov.w	#8,r0
	rts
.L983:
	mov.w	#9,r0
	rts
.L984:
	mov.w	#10,r0
	rts
.L985:
	mov.w	#11,r0
	rts
.L986:
	mov.w	#12,r0
	rts
.L987:
	mov.w	#13,r0
	rts
.L988:
	mov.w	#14,r0
	rts
.L989:
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
	bmi	.L995
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L990
.L995:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L990:
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
	beq	.L1001
	sub.l	er0,er0
.L1000:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L1000
	rts
.L1001:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L1006
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L1009
.L1005:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L1005
	rts
.L1006:
	sub.l	er0,er0
	rts
.L1009:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1020
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1013
.L1016:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1014
	dec #1,r0
	bne	.L1012
	bra	.L1022
.L1020:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1012:
	mov.l	er1,er1
	bpl	.L1016
	bra	.L1013
.L1014:
	mov.l	er3,er3
	beq	.L1022
.L1013:
	sub.l	er0,er0
.L1018:
	cmp.l	er1,er4
	blo	.L1017
	sub.l	er1,er4
	or.l	er3,er0
.L1017:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1018
	bra	.L1015
.L1022:
	sub.l	er0,er0
.L1015:
	mov.w	r2,r2
	beq	.L1011
	mov.l	er4,er0
.L1011:
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
	bmi	.L1028
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1027
	sub.w	r5,r5
.L1027:
	mov.w	r5,r0
	bra	.L1025
.L1028:
	mov.w	#-1,r0
.L1025:
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
	bmi	.L1032
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L1031
	sub.w	r5,r5
.L1031:
	mov.w	r5,r0
	bra	.L1029
.L1032:
	mov.w	#-1,r0
.L1029:
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
	bpl	.L1036
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
	bne	.L1037
	bra	.L1038:16
.L1036:
	beq	.L1043:16
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	mov.l	er2,er0
	and.w	r5,r0
	mov.w	r5,r3
	shll.w	r3
	mov.w	r1,r2
	shar.w	r2
	bne	.L1040
	bra	.L1035:16
.L1037:
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r3
	shar.w	r3
	mov.w	r3,r1
	bne	.L1044
	bra	.L1038:16
.L1040:
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r1
	shar.w	r1
	beq	.L1035:16
	sub.w	r3,r3
	bra	.L1041
.L1044:
	mov.w	#1,r3
.L1041:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r5,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	beq	.L1042:16
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
	beq	.L1042:16
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
	beq	.L1042:16
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
	beq	.L1042:16
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
	beq	.L1042:16
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
	beq	.L1042:16
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
	beq	.L1042:16
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
	beq	.L1042:16
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
	beq	.L1042
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
	beq	.L1042
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
	beq	.L1042
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
.L1042:
	mov.w	r3,r3
	beq	.L1035
.L1038:
	neg.w	r0
	bra	.L1035
.L1043:
	sub.w	r0,r0
.L1035:
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
	bpl	.L1095
	neg.l	er0
	mov.w	#1,r5
	bra	.L1085
.L1095:
	sub.w	r5,r5
.L1085:
	mov.l	er1,er1
	bpl	.L1086
	neg.l	er1
	xor	#1,r5l
.L1086:
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L1096
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1088
.L1090:
	mov.l	er2,er2
	bne	.L1088
	sub.l	er0,er0
	bra	.L1089
.L1091:
	dec #1,r3
	bne	.L1087
	bra	.L1090
.L1096:
	mov.w	#32,r3
	sub.l	er2,er2
	add.b	#1,r2l
.L1087:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er0
	bhi	.L1091
	bra	.L1090
.L1088:
	sub.l	er0,er0
.L1093:
	cmp.l	er1,er4
	blo	.L1092
	sub.l	er1,er4
	or.l	er2,er0
.L1092:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1093
.L1089:
	mov.w	r5,r5
	beq	.L1084
	neg.l	er0
.L1084:
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
	bpl	.L1115
	neg.l	er3
	mov.w	#1,r5
	bra	.L1105
.L1115:
	sub.w	r5,r5
.L1105:
	mov.l	er1,er1
	bpl	.L1106
	neg.l	er1
.L1106:
	mov.l	er3,er0
	cmp.l	er3,er1
	blo	.L1116
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1113
.L1110:
	mov.l	er2,er2
	bne	.L1113
	mov.l	er3,er0
	bra	.L1109
.L1111:
	dec #1,r4
	bne	.L1107
	bra	.L1110
.L1116:
	mov.w	#32,r4
	sub.l	er2,er2
	add.b	#1,r2l
.L1107:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er3
	bhi	.L1111
	bra	.L1110
.L1113:
	cmp.l	er1,er0
	blo	.L1112
	sub.l	er1,er0
.L1112:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L1113
.L1109:
	mov.w	r5,r5
	beq	.L1104
	neg.l	er0
.L1104:
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
	blo	.L1125
	beq	.L1178:16
	sub.w	r1,r1
	bra	.L1157:16
.L1125:
	mov.w	r1,r1
	bmi	.L1127:16
	mov.w	r1,r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1128:16
	mov.w	r3,r3
	bmi	.L1129:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1130:16
	mov.w	r3,r3
	bmi	.L1131:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1132:16
	mov.w	r3,r3
	bmi	.L1133:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1134:16
	mov.w	r3,r3
	bmi	.L1135:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1136:16
	mov.w	r3,r3
	bmi	.L1137:16
	mov.w	r1,r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1138:16
	mov.w	r3,r3
	bmi	.L1139:16
	mov.w	r1,r3
	shar.b	r3h
	mov.b	r3l,r3h
	rotxr.w	r3
	and.b	#0x80,r3l
	cmp.w	r3,r0
	bls	.L1140:16
	mov.w	r3,r3
	bmi	.L1141:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	cmp.w	r3,r0
	bls	.L1142:16
	mov.w	r3,r3
	bmi	.L1143:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1144:16
	mov.w	r3,r3
	bmi	.L1145:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1146:16
	mov.w	r3,r3
	bmi	.L1147:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1148:16
	mov.w	r3,r3
	bmi	.L1149:16
	mov.w	r1,r3
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	shll.w	r3
	shll.w	r3
	shll.w	r3
	shll.w	r3
	cmp.w	r3,r0
	bls	.L1150:16
	mov.w	r3,r3
	bmi	.L1151:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	rotr.w	r3
	and.w	#57344,r3
	cmp.w	r3,r0
	bls	.L1152:16
	mov.w	r3,r3
	bmi	.L1153:16
	mov.w	r1,r3
	rotr.w	r3
	rotr.w	r3
	and.w	#49152,r3
	cmp.w	r3,r0
	bls	.L1154:16
	mov.w	r3,r3
	bmi	.L1155:16
	rotr.w	r1
	and.w	#32768,r1
	cmp.w	r1,r0
	bls	.L1156:16
	mov.w	r1,r1
	beq	.L1157:16
	bra	.L1235:16
.L1182:
	mov.w	#2,r4
	bra	.L1176
.L1183:
	mov.w	#4,r4
	bra	.L1176
.L1184:
	mov.w	#8,r4
	bra	.L1176
.L1185:
	mov.w	#16,r4
	bra	.L1176
.L1186:
	mov.w	#32,r4
	bra	.L1176
.L1187:
	mov.w	#64,r4
	bra	.L1176
.L1188:
	mov.w	#128,r4
	bra	.L1176
.L1189:
	mov.w	#256,r4
	bra	.L1176
.L1190:
	mov.w	#512,r4
	bra	.L1176
.L1191:
	mov.w	#1024,r4
	bra	.L1176
.L1192:
	mov.w	#2048,r4
	bra	.L1176
.L1193:
	mov.w	#4096,r4
	bra	.L1176
.L1194:
	mov.w	#8192,r4
	bra	.L1176
.L1195:
	mov.w	#16384,r4
.L1176:
	mov.w	r4,r6
	shlr.w	r6
	mov.w	r3,r5
	shlr.w	r5
	sub.w	r1,r1
.L1177:
	cmp.w	r5,r0
	blo	.L1159
	sub.w	r5,r0
	or.w	r6,r1
	bra	.L1159
.L1181:
	mov.w	r3,r1
	sub.w	r0,r0
.L1159:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1160
	sub.w	r6,r0
	or.w	r5,r1
.L1160:
	mov.w	r4,r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r3,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1161
	sub.w	r6,r0
	or.w	r5,r1
.L1161:
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
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1162
	sub.w	r6,r0
	or.w	r5,r1
.L1162:
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
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1163
	sub.w	r6,r0
	or.w	r5,r1
.L1163:
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
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1164
	sub.w	r6,r0
	or.w	r5,r1
.L1164:
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
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1165
	sub.w	r6,r0
	or.w	r5,r1
.L1165:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	mov.w	r5,r5
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1166
	sub.w	r6,r0
	or.w	r5,r1
.L1166:
	mov.w	r4,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	mov.w	r3,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	mov.w	r5,r5
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1167
	sub.w	r6,r0
	or.w	r5,r1
.L1167:
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
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1168
	sub.w	r6,r0
	or.w	r5,r1
.L1168:
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
	beq	.L1157:16
	cmp.w	r6,r0
	blo	.L1169
	sub.w	r6,r0
	or.w	r5,r1
.L1169:
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
	beq	.L1157
	cmp.w	r6,r0
	blo	.L1170
	sub.w	r6,r0
	or.w	r5,r1
.L1170:
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
	beq	.L1157
	cmp.w	r6,r0
	blo	.L1171
	sub.w	r6,r0
	or.w	r5,r1
.L1171:
	mov.w	r4,r5
	rotl.w	r5
	rotl.w	r5
	and.w	#3,r5
	mov.w	r3,r6
	rotl.w	r6
	rotl.w	r6
	and.w	#3,r6
	mov.w	r5,r5
	beq	.L1157
	cmp.w	r6,r0
	blo	.L1172
	sub.w	r6,r0
	or.w	r5,r1
.L1172:
	rotl.w	r3
	and.w	#1,r3
	cmp.w	#16384,r4
	bne	.L1173
	bra	.L1157
.L1178:
	mov.w	#1,r1
	sub.w	r0,r0
	bra	.L1157
.L1173:
	cmp.w	r3,r0
	blo	.L1180
	sub.w	r3,r0
	or	#1,r1l
	bra	.L1157
.L1180:
	sub.w	r0,r0
.L1157:
	mov.w	r2,r2
	bne	.L1124:16
	mov.w	r1,r0
	bra	.L1124:16
.L1156:
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r0,r0
	bmi	.L1181:16
	bra	.L1176:16
.L1128:
	blo	.L1182:16
	sub.w	r3,r0
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1130:
	blo	.L1183:16
	sub.w	r3,r0
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1132:
	blo	.L1184:16
	sub.w	r3,r0
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1134:
	blo	.L1185:16
	sub.w	r3,r0
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1136:
	blo	.L1186:16
	sub.w	r3,r0
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1138:
	blo	.L1187:16
	sub.w	r3,r0
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1140:
	blo	.L1188:16
	sub.w	r3,r0
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1142:
	blo	.L1189:16
	sub.w	r3,r0
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1144:
	blo	.L1190:16
	sub.w	r3,r0
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1146:
	blo	.L1191:16
	sub.w	r3,r0
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1148:
	blo	.L1192:16
	sub.w	r3,r0
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1150:
	blo	.L1193:16
	sub.w	r3,r0
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1152:
	blo	.L1194:16
	sub.w	r3,r0
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1154:
	blo	.L1195:16
	sub.w	r3,r0
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1159:16
.L1235:
	add.b	#128,r0h
	mov.w	#16384,r5
	mov.w	r5,r6
	mov.w	#-32768,r3
	mov.w	r3,r4
	mov.w	r3,r1
	bra	.L1177:16
.L1127:
	sub.w	r1,r0
	mov.w	#1,r1
	bra	.L1157:16
.L1129:
	sub.w	r3,r0
	and	#127,r1h
	mov.w	r1,r5
	mov.w	#1,r6
	mov.w	#2,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1131:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2,r6
	mov.w	#4,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1133:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4,r6
	mov.w	#8,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1135:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8,r6
	mov.w	#16,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1137:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#16,r6
	mov.w	#32,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1139:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#32,r6
	mov.w	#64,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1141:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#64,r6
	mov.w	#128,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1143:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#128,r6
	mov.w	#256,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1145:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#256,r6
	mov.w	#512,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1147:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#512,r6
	mov.w	#1024,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1149:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#1024,r6
	mov.w	#2048,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1151:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#2048,r6
	mov.w	#4096,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1153:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#4096,r6
	mov.w	#8192,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1155:
	sub.w	r3,r0
	mov.w	r3,r5
	shlr.w	r5
	mov.w	#8192,r6
	mov.w	#16384,r4
	mov.w	r4,r1
	bra	.L1177:16
.L1124:
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
	bhi	.L1245
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1238
.L1241:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1239
	dec #1,r0
	bne	.L1237
	bra	.L1247
.L1245:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1237:
	mov.l	er1,er1
	bpl	.L1241
	bra	.L1238
.L1239:
	mov.l	er3,er3
	beq	.L1247
.L1238:
	sub.l	er0,er0
.L1243:
	cmp.l	er1,er4
	blo	.L1242
	sub.l	er1,er4
	or.l	er3,er0
.L1242:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1243
	bra	.L1240
.L1247:
	sub.l	er0,er0
.L1240:
	mov.w	r2,r2
	beq	.L1236
	mov.l	er4,er0
.L1236:
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
	beq	.L1251
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1256
.L1255:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1255
.L1256:
	sub.l	er0,er0
	bra	.L1252
.L1251:
	mov.w	r2,r2
	beq	.L1254
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1258
.L1257:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1257
.L1258:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1260
.L1259:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1259
.L1260:
	mov.b	r2l,r2l
	ble	.L1262
.L1261:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1261
.L1262:
	or.l	er3,er4
.L1252:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L1250
.L1254:
	mov.l	er0,er2
	mov.l	er1,er3
.L1250:
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
	beq	.L1264
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1269
.L1268:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1268
.L1269:
	bra	.L1265
.L1264:
	mov.w	r2,r2
	beq	.L1267
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1271
.L1270:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1270
.L1271:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1273
.L1272:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1272
.L1273:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L1275
.L1274:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L1274
.L1275:
	or.l	er3,er0
.L1265:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1263
.L1267:
	mov.l	er0,er2
	mov.l	er1,er3
.L1263:
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
	bls	.L1311
	sub.l	er0,er0
.L1311:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1327
.L1326:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1326
.L1327:
	sub.l	er1,er1
	mov.b	r2h,r1h
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1312
	sub.l	er3,er3
.L1312:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1329
.L1328:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1328
.L1329:
	add.l	er3,er0
	sub.l	er1,er1
	mov.b	r2l,r1l
	and	#240,r1l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1313
	sub.l	er3,er3
.L1313:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1331
.L1330:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1330
.L1331:
	add.l	er0,er3
	mov.l	er3,er4
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#12,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1314
	sub.l	er3,er3
.L1314:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1333
.L1332:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1332
.L1333:
	btst	#1,r2l
	bne	.L1315
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L1316
.L1315:
	sub.w	r0,r0
.L1316:
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
	blt	.L1338
	bgt	.L1339
	cmp.l	er3,er5
	blo	.L1338
	bhi	.L1339
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1334
.L1338:
	sub.l	er0,er0
	bra	.L1334
.L1339:
	sub.l	er0,er0
	add.b	#2,r0l
.L1334:
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
	blt	.L1345
	bgt	.L1344
	cmp.l	er3,er5
	blo	.L1345
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1340
	sub.l	er0,er0
	bra	.L1340
.L1344:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1340
.L1345:
	sub.l	er0,er0
	subs	#1,er0
.L1340:
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
	beq	.L1347
	sub.l	er0,er0
.L1347:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L1364
.L1363:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1363
.L1364:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1348
	sub.l	er3,er3
.L1348:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1366
.L1365:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1365
.L1366:
	add.l	er0,er3
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#15,r0l
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L1349
	sub.l	er1,er1
.L1349:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L1368
.L1367:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1367
.L1368:
	add.l	er3,er1
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#3,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1350
	sub.l	er3,er3
.L1350:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1370
.L1369:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1369
.L1370:
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
	beq	.L1372
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1377
.L1376:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1376
.L1377:
	sub.l	er1,er1
	bra	.L1373
.L1372:
	mov.w	r2,r2
	beq	.L1375
	mov.l	@er7,er1
	mov.l	er1,er3
	mov.b	r2l,r0l
	ble	.L1379
.L1378:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1378
.L1379:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1381
.L1380:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1380
.L1381:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L1383
.L1382:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1382
.L1383:
	or.l	er3,er0
.L1373:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1371
.L1375:
	mov.l	er0,er2
	mov.l	er1,er3
.L1371:
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
	bne	.L1387
	sub.l	er6,er6
.L1387:
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
	ble	.L1390
.L1389:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1389
.L1390:
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
	ble	.L1393
.L1392:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1392
.L1393:
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
	bhi	.L1395
	sub.l	er0,er0
.L1395:
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
	btst	#0,r1l
	beq	.L1407
	mov.w	r1,r4
	mov.l	#1065353216,er5
.L1403:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L1400
.L1407:
	mov.w	@(2,er7),r4
	mov.l	#1065353216,er5
.L1400:
	mov.w	r4,r4
	bpl	.L1401
	inc #1,r4
.L1401:
	shar.w	r4
	beq	.L1402
.L1405:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1403
	mov.w	r4,r4
	bpl	.L1404
	inc #1,r4
.L1404:
	shar.w	r4
	bra	.L1405
.L1402:
	mov.w	@(2,er7),r2
	bpl	.L1399
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1399:
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
	btst	#0,r1l
	beq	.L1416
	mov.w	r1,r4
	mov.l	#1065353216,er5
.L1412:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L1409
.L1416:
	mov.w	@(2,er7),r4
	mov.l	#1065353216,er5
.L1409:
	mov.w	r4,r4
	bpl	.L1410
	inc #1,r4
.L1410:
	shar.w	r4
	beq	.L1411
.L1414:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1412
	mov.w	r4,r4
	bpl	.L1413
	inc #1,r4
.L1413:
	shar.w	r4
	bra	.L1414
.L1411:
	mov.w	@(2,er7),r2
	bpl	.L1408
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1408:
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
	blo	.L1421
	bhi	.L1422
	cmp.l	er3,er5
	blo	.L1421
	bhi	.L1422
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1417
.L1421:
	sub.l	er0,er0
	bra	.L1417
.L1422:
	sub.l	er0,er0
	add.b	#2,r0l
.L1417:
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
	blo	.L1428
	bhi	.L1427
	cmp.l	er3,er5
	blo	.L1428
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1423
	sub.l	er0,er0
	bra	.L1423
.L1427:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1423
.L1428:
	sub.l	er0,er0
	subs	#1,er0
.L1423:
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
