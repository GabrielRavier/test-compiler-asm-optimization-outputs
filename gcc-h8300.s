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
	bne	.L9
	bra	.L10
.L11:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L10
.L9:
	mov.b	@er1,r3l
	mov.b	r3l,@er0
	extu.w	r3
	cmp.w	r3,r2
	bne	.L11
.L10:
	mov.l	er4,er4
	beq	.L13
	adds	#1,er0
	bra	.L8
.L13:
	sub.l	er0,er0
.L8:
	mov.l	@er7+,er4
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.l	er2,er2
	bne	.L16
	bra	.L17
.L18:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L17
.L16:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L18
.L17:
	mov.l	er2,er2
	bne	.L22
	sub.l	er0,er0
.L22:
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L24
	bra	.L25
.L26:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L25
.L24:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L26
.L25:
	mov.l	er2,er2
	beq	.L28
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L23
.L28:
	sub.w	r0,r0
.L23:
	mov.l	@er7+,er4
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L31
	mov.l	er0,er3
	add.l	er0,er2
.L32:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er2,er3
	bne	.L32
.L31:
	mov.l	@er7+,er4
	rts
	.size	_memcpy, .-_memcpy
	.align 1
	.global _memrchr
_memrchr:
	mov.l	er4,@-er7
	extu.w	r1
	subs	#1,er2
	bra	.L35
.L37:
	mov.l	er2,er4
	subs	#1,er4
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	@er3,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L38
	add.l	er2,er0
	bra	.L34
.L38:
	mov.l	er4,er2
.L35:
	cmp.l	#-1,er2
	bne	.L37
	sub.l	er0,er0
.L34:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er2,er2
	beq	.L43
	add.l	er0,er2
	mov.l	er0,er3
.L41:
	mov.b	r1l,@er3
	adds	#1,er3
	cmp.l	er2,er3
	bne	.L41
.L43:
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	beq	.L48
.L46:
	adds	#1,er1
	adds	#1,er0
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L46
.L48:
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	bne	.L50
	rts
.L52:
	adds	#1,er0
	mov.b	@er0,r2l
	beq	.L55
.L50:
	mov.b	@er0,r2l
	extu.w	r2
	cmp.w	r2,r1
	bne	.L52
.L55:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
	mov.l	er0,er2
.L59:
	mov.l	er2,er0
	mov.b	@er2,r3l
	extu.w	r3
	cmp.w	r3,r1
	beq	.L61
	mov.b	@er2+,r3l
	mov.b	r3l,r3l
	bne	.L59
	sub.l	er0,er0
.L61:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	cmp.b	r3l,r2l
	beq	.L63
	bra	.L64
.L65:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	cmp.b	r3l,r2l
	bne	.L64
.L63:
	mov.b	@er0,r2l
	bne	.L65
.L64:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	mov.l	er0,er2
	mov.b	@er0,r3l
	beq	.L68
.L69:
	adds	#1,er0
	mov.b	@er0,r3l
	bne	.L69
.L68:
	sub.l	er2,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L77
	mov.b	@er0,r3l
	beq	.L74
	subs	#1,er2
	add.l	er0,er2
	bra	.L75
.L76:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r3l
	beq	.L74
.L75:
	mov.b	@er1,r3l
	beq	.L74
	cmp.l	er2,er0
	beq	.L74
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L76
.L74:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L72
.L77:
	sub.w	r0,r0
.L72:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L82
	subs	#2,er2
	and	#254,r2l
	adds	#2,er2
	add.l	er0,er2
.L80:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L80
.L82:
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
	bls	.L85
	sub.w	r0,r0
.L85:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L87
	sub.w	r2,r2
.L87:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L91
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L90
	sub.w	r2,r2
.L90:
	mov.w	r2,r0
	rts
.L91:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L95
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L94
	sub.w	r2,r2
.L94:
	mov.w	r2,r0
	rts
.L95:
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
	bls	.L98
	sub.w	r0,r0
.L98:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L101
	sub.w	r0,r0
.L101:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L104
	sub.w	r0,r0
.L104:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L107
	sub.w	r0,r0
.L107:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L111
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L110
	sub.w	r2,r2
.L110:
	mov.w	r2,r0
	rts
.L111:
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
	bls	.L114
	sub.w	r0,r0
.L114:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L118
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L119
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L120
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L117
	sub.w	r2,r2
.L117:
	mov.w	r2,r0
	rts
.L118:
	mov.w	#1,r0
	rts
.L119:
	mov.w	#1,r0
	rts
.L120:
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
	bls	.L123
	sub.w	r0,r0
.L123:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L125
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L132
	sub.w	r0,r0
	rts
.L125:
	cmp.w	#8231,r0
	bls	.L129
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L130
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L131
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L128
	sub.w	r2,r2
.L128:
	mov.w	r2,r0
	rts
.L129:
	mov.w	#1,r0
	rts
.L130:
	mov.w	#1,r0
	rts
.L131:
	mov.w	#1,r0
.L132:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L137
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L138
	sub.w	r0,r0
	rts
.L137:
	mov.w	#1,r0
.L138:
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
	bne	.L144
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L145
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L148
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L141
.L144:
	mov.l	er4,er0
	bra	.L141
.L145:
	mov.l	er5,er0
	bra	.L141
.L148:
	sub.l	er0,er0
.L141:
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
	bne	.L152
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L153
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L156
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L149
.L152:
	mov.l	er4,er0
	bra	.L149
.L153:
	mov.l	er5,er0
	bra	.L149
.L156:
	sub.l	er0,er0
.L149:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fdimf, .-_fdimf
	.align 1
	.global _fmax
_fmax:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L163
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L164
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
	beq	.L159
	mov.l	er4,er4
	bpl	.L165
	mov.l	er5,er0
	bra	.L157
.L159:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L161
	mov.l	er5,er4
.L161:
	mov.l	er4,er0
	bra	.L157
.L163:
	mov.l	er5,er0
	bra	.L157
.L164:
	mov.l	er4,er0
	bra	.L157
.L165:
	mov.l	er4,er0
.L157:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L172
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L173
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
	beq	.L168
	mov.l	er4,er4
	bpl	.L174
	mov.l	er5,er0
	bra	.L166
.L168:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L170
	mov.l	er5,er4
.L170:
	mov.l	er4,er0
	bra	.L166
.L172:
	mov.l	er5,er0
	bra	.L166
.L173:
	mov.l	er4,er0
	bra	.L166
.L174:
	mov.l	er4,er0
.L166:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L181
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L182
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
	beq	.L177
	mov.l	er4,er4
	bpl	.L183
	mov.l	er5,er0
	bra	.L175
.L177:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L179
	mov.l	er5,er4
.L179:
	mov.l	er4,er0
	bra	.L175
.L181:
	mov.l	er5,er0
	bra	.L175
.L182:
	mov.l	er4,er0
	bra	.L175
.L183:
	mov.l	er4,er0
.L175:
	mov.l	@er7+,er5
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
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L190
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L191
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
	beq	.L186
	mov.l	er5,er5
	bpl	.L192
	mov.l	er5,er0
	bra	.L184
.L186:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L188
	mov.l	er5,er4
.L188:
	mov.l	er4,er0
	bra	.L184
.L190:
	mov.l	er4,er0
	bra	.L184
.L191:
	mov.l	er5,er0
	bra	.L184
.L192:
	mov.l	er4,er0
.L184:
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
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L199
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L200
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
	beq	.L195
	mov.l	er5,er5
	bpl	.L201
	mov.l	er5,er0
	bra	.L193
.L195:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L197
	mov.l	er5,er4
.L197:
	mov.l	er4,er0
	bra	.L193
.L199:
	mov.l	er4,er0
	bra	.L193
.L200:
	mov.l	er5,er0
	bra	.L193
.L201:
	mov.l	er4,er0
.L193:
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
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L208
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L209
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
	beq	.L204
	mov.l	er5,er5
	bpl	.L210
	mov.l	er5,er0
	bra	.L202
.L204:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L206
	mov.l	er5,er4
.L206:
	mov.l	er4,er0
	bra	.L202
.L208:
	mov.l	er4,er0
	bra	.L202
.L209:
	mov.l	er5,er0
	bra	.L202
.L210:
	mov.l	er4,er0
.L202:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
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
	mov.l	er0,er0
	beq	.L214
	mov.l	#_s___0,er3
	mov.l	#_digits,er1
.L213:
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
	bne	.L213
	bra	.L212
.L214:
	mov.l	#_s___0,er3
.L212:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
	mov.l	#_s___0,er0
	rts
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
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
	blo	.L218
	sub.l	er6,er6
.L218:
	add.l	er0,er4
	mov.l	er6,er0
	add.l	er4,er0
	mov.l	er0,@_seed:32
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
	bne	.L220
	sub.l	er2,er2
	mov.l	er2,@(4,er0)
	mov.l	er2,@er0
	rts
.L220:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L222
	mov.l	er0,@(4,er2)
.L222:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L225
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L225:
	mov.l	@(4,er0),er2
	beq	.L227
	mov.l	@er0,er3
	mov.l	er3,@er2
.L227:
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
	mov.l	er1,er5
	mov.l	er1,@(8,er7)
	mov.l	@(36,er7),er6
	mov.l	@er2,er1
	beq	.L229
	sub.l	er4,er4
	mov.l	er1,@(4,er7)
	mov.l	er2,@(12,er7)
.L232:
	mov.l	er5,er1
	mov.l	@er7,er0
	jsr	@er6
	mov.w	r0,r0
	bne	.L230
	mov.l	@(32,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er2
	add.l	er2,er0
	bra	.L228
.L230:
	adds	#1,er4
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er2,er4
	bne	.L232
	mov.l	er2,er1
	mov.l	@(12,er7),er2
.L229:
	mov.l	er1,er3
	adds	#1,er3
	mov.l	er3,@er2
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(32,er7),er2
	mov.l	@er7,er1
	mov.l	@(8,er7),er3
	add.l	er3,er0
	jsr	@_memcpy
.L228:
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
	sub.l	#12,er7
	mov.l	er0,@er7
	mov.l	er1,@(8,er7)
	mov.l	@er2,er6
	beq	.L238
	mov.l	er1,er5
	sub.l	er4,er4
	mov.l	er6,@(4,er7)
	mov.l	@(32,er7),er6
.L237:
	mov.l	er5,er1
	mov.l	@er7,er0
	jsr	@er6
	mov.w	r0,r0
	bne	.L236
	mov.l	@(28,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er2
	add.l	er2,er0
	bra	.L234
.L236:
	adds	#1,er4
	mov.l	@(28,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er2,er4
	bne	.L237
	sub.l	er0,er0
	bra	.L234
.L238:
	sub.l	er0,er0
.L234:
	add.l	#12,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_lfind, .-_lfind
	.align 1
	.global _abs
_abs:
	mov.w	r0,r0
	bpl	.L242
	neg.w	r0
.L242:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er0,er4
	bra	.L244
.L245:
	adds	#1,er4
.L244:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L245
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L251
	cmp.w	#45,r2
	bne	.L252
	mov.w	#1,r1
	bra	.L246
.L251:
	sub.w	r1,r1
.L246:
	adds	#1,er4
	bra	.L247
.L252:
	sub.w	r1,r1
.L247:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L253
	sub.w	r0,r0
	mov.w	#10,r3
.L249:
	mulxs.w	r3,er0
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	sub.w	r2,r0
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L249
	bra	.L248
.L253:
	sub.w	r0,r0
.L248:
	mov.w	r1,r1
	bne	.L243
	neg.w	r0
.L243:
	mov.l	@er7+,er4
	rts
	.size	_atoi, .-_atoi
	.align 1
	.global _atol
_atol:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	bra	.L256
.L257:
	adds	#1,er4
.L256:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L257
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L263
	cmp.w	#45,r2
	bne	.L264
	mov.w	#1,r6
	bra	.L258
.L263:
	sub.w	r6,r6
.L258:
	adds	#1,er4
	bra	.L259
.L264:
	sub.w	r6,r6
.L259:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L265
	sub.l	er0,er0
	sub.l	er5,er5
	add.b	#10,r5l
.L261:
	mov.l	er5,er1
	jsr	@___mulsi3
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	sub.l	er2,er0
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L261
	bra	.L260
.L265:
	sub.l	er0,er0
.L260:
	mov.w	r6,r6
	bne	.L255
	neg.l	er0
.L255:
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
	mov.l	er0,er4
	bra	.L268
.L269:
	adds	#1,er4
.L268:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L269
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L277
	cmp.w	#45,r2
	bne	.L278
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L270
.L277:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L270:
	adds	#1,er4
	bra	.L271
.L278:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L271:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L279:16
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L274:
	sub.l	#8,er7
	sub.l	er2,er2
	mov.l	er2,@er7
	sub.l	er2,er2
	add.b	#10,r2l
	mov.l	er2,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er2,er0
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	mov.l	er2,@(12,er7)
	shll	e2
	subx	r2l,r2l
	exts.w	r2
	exts.l	er2
	mov.l	er2,@(8,er7)
	mov.l	er1,er5
	mov.l	@(12,er7),er6
	sub.l	er6,er5
	mov.l	er5,er3
	sub.l	er5,er5
	add.b	#1,r5l
	cmp.l	er1,er3
	bhi	.L273
	sub.l	er5,er5
.L273:
	mov.l	@(8,er7),er1
	sub.l	er1,er0
	sub.l	er5,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L274:16
	bra	.L272
.L279:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L272:
	mov.w	@(18,er7),r2
	bne	.L267
	sub.l	er0,er0
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er3,er3
	bne	.L276
	sub.l	er4,er4
.L276:
	mov.l	@er7,er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
.L267:
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
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	er1,er6
	mov.l	er2,er4
	beq	.L286
.L285:
	mov.l	@(20,er7),er1
	mov.l	er4,er0
	shlr.l	er0
	jsr	@___mulsi3
	add.l	er6,er0
	mov.l	er0,er5
	mov.l	er0,er1
	mov.l	@er7,er0
	mov.l	@(24,er7),er2
	jsr	@er2
	mov.w	r0,r0
	bpl	.L283
	shlr.l	er4
	bra	.L284
.L283:
	ble	.L281
	mov.l	@(20,er7),er6
	add.l	er5,er6
	mov.l	er4,er2
	shlr.l	er2
	subs	#1,er4
	sub.l	er2,er4
.L284:
	mov.l	er4,er4
	bne	.L285
	sub.l	er5,er5
	bra	.L281
.L286:
	sub.l	er5,er5
.L281:
	mov.l	er5,er0
	adds	#4,er7
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
	mov.l	er0,@er7
	mov.l	er1,er6
	mov.w	r2,r4
	beq	.L293
.L292:
	mov.l	@(20,er7),er1
	mov.w	r4,r0
	shar.w	r0
	exts.l	er0
	jsr	@___mulsi3
	add.l	er6,er0
	mov.l	er0,er5
	mov.l	@(28,er7),er2
	mov.l	er0,er1
	mov.l	@er7,er0
	mov.l	@(24,er7),er3
	jsr	@er3
	mov.w	r0,r0
	beq	.L289
	ble	.L291
	mov.l	@(20,er7),er6
	add.l	er5,er6
	dec #1,r4
.L291:
	shar.w	r4
	bne	.L292
	sub.l	er5,er5
	bra	.L289
.L293:
	sub.l	er5,er5
.L289:
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
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er0
	bpl	.L298
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L300
	sub.l	er6,er6
.L300:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L298:
	mov.l	er4,er0
	mov.l	er5,er1
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
	sub.l	#16,er7
	mov.l	er0,er6
	mov.l	er1,@(8,er7)
	mov.l	er2,@(12,er7)
	mov.l	@(32,er7),er4
	mov.l	@(36,er7),er5
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er2,@er6
	mov.l	er1,@(4,er6)
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	er2,@(8,er6)
	mov.l	er1,@(12,er6)
	mov.l	er6,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_imaxdiv, .-_imaxdiv
	.align 1
	.global _labs
_labs:
	mov.l	er0,er0
	bpl	.L304
	neg.l	er0
.L304:
	rts
	.size	_labs, .-_labs
	.align 1
	.global _ldiv
_ldiv:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er2,er6
	mov.l	er2,er1
	mov.l	er5,er0
	jsr	@___divsi3
	mov.l	er0,@er4
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___modsi3
	mov.l	er0,@(4,er4)
	mov.l	er4,er0
	mov.l	@er7+,er6
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
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er0
	bpl	.L307
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L309
	sub.l	er6,er6
.L309:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L307:
	mov.l	er4,er0
	mov.l	er5,er1
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
	sub.l	#16,er7
	mov.l	er0,er6
	mov.l	er1,@(8,er7)
	mov.l	er2,@(12,er7)
	mov.l	@(32,er7),er4
	mov.l	@(36,er7),er5
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er2,@er6
	mov.l	er1,@(4,er6)
	mov.l	er4,@er7
	mov.l	er5,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	er2,@(8,er6)
	mov.l	er1,@(12,er6)
	mov.l	er6,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_lldiv, .-_lldiv
	.align 1
	.global _wcschr
_wcschr:
	mov.w	@er0,r2
	bne	.L312
	bra	.L313
.L314:
	adds	#2,er0
	mov.w	@er0,r2
	beq	.L313
.L312:
	mov.w	@er0,r2
	cmp.w	r2,r1
	bne	.L314
.L313:
	mov.w	@er0,r2
	bne	.L318
	sub.l	er0,er0
.L318:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	beq	.L320
	bra	.L321
.L322:
	adds	#2,er0
	adds	#2,er1
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L321
.L320:
	mov.w	@er0,r2
	beq	.L321
	mov.w	@er1,r2
	bne	.L322
.L321:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L325
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L324
	sub.w	r2,r2
.L324:
	mov.w	r2,r0
	rts
.L325:
	mov.w	#-1,r0
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L328:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L328
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L333
	mov.l	er0,er2
.L332:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L332
	bra	.L331
.L333:
	mov.l	er0,er2
.L331:
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
	bne	.L336
	bra	.L337
.L338:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L337
.L336:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L337
	mov.w	r3,r3
	beq	.L337
	mov.w	r4,r3
	bne	.L338
.L337:
	mov.l	er2,er2
	beq	.L341
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L342
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L340
	sub.w	r2,r2
.L340:
	mov.w	r2,r0
	bra	.L335
.L341:
	sub.w	r0,r0
	bra	.L335
.L342:
	mov.w	#-1,r0
.L335:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	mov.l	er2,er2
	bne	.L345
	bra	.L346
.L347:
	subs	#1,er2
	adds	#2,er0
	mov.l	er2,er2
	beq	.L346
.L345:
	mov.w	@er0,r3
	cmp.w	r3,r1
	bne	.L347
.L346:
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
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L359
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L357
	sub.w	r2,r2
.L357:
	mov.w	r2,r0
	bra	.L352
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
	mov.l	er4,@-er7
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er2
	beq	.L362
	mov.l	er0,er2
.L363:
	mov.w	@er1+,r4
	mov.w	r4,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L363
.L362:
	mov.l	@er7+,er4
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er4,@-er7
	cmp.l	er1,er0
	beq	.L366
	mov.l	er2,er4
	shll.l	er4
	mov.l	er0,er3
	sub.l	er1,er3
	cmp.l	er4,er3
	blo	.L367
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er2
	bne	.L368
	bra	.L366
.L367:
	mov.l	er2,er2
	beq	.L366
	subs	#1,er2
	shll.l	er2
.L369:
	mov.l	er1,er3
	add.l	er2,er3
	mov.w	@er3,r4
	mov.l	er0,er3
	add.l	er2,er3
	mov.w	r4,@er3
	subs	#2,er2
	cmp.l	#-2,er2
	bne	.L369
	bra	.L366
.L368:
	mov.l	er0,er2
.L370:
	mov.w	@er1+,r4
	mov.w	r4,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L370
.L366:
	mov.l	@er7+,er4
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er2
	beq	.L377
	mov.l	er0,er2
.L375:
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L375
.L377:
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L379
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L385
.L381:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L381
	rts
.L379:
	beq	.L385
	mov.l	er2,er2
	beq	.L385
	mov.l	er0,er3
	add.l	er2,er0
.L382:
	mov.b	@er3+,r2l
	mov.b	r2l,@er1
	adds	#1,er1
	cmp.l	er0,er3
	bne	.L382
.L385:
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
	bmi	.L388
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L393
.L392:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L392
.L393:
	bra	.L389
.L388:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L395
.L394:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L394
.L395:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L397
.L396:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L396
.L397:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L399
.L398:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L398
.L399:
.L389:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L390
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L401
.L400:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L400
.L401:
	bra	.L391
.L390:
	mov.l	@er7,er3
	shll.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L403
.L402:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L402
.L403:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L405
.L404:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L404
.L405:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L407
.L406:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L406
.L407:
.L391:
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
	bmi	.L409
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L414
.L413:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L413
.L414:
	bra	.L410
.L409:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L416
.L415:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L415
.L416:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L418
.L417:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L417
.L418:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L420
.L419:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L419
.L420:
.L410:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L411
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L422
.L421:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L421
.L422:
	bra	.L412
.L411:
	mov.l	@(4,er7),er3
	shlr.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L424
.L423:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L423
.L424:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L426
.L425:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L425
.L426:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L428
.L427:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L427
.L428:
.L412:
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
	ble	.L433
.L430:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L430
.L433:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L438
.L435:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L435
.L438:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.w	#32,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L441
.L440:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L440
.L441:
	mov.b	r1l,r1l
	ble	.L443
.L442:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L442
.L443:
	or.l	er2,er0
	mov.l	@er7+,er4
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.w	#32,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L446
.L445:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L445
.L446:
	mov.b	r1l,r1l
	ble	.L448
.L447:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L447
.L448:
	or.l	er2,er0
	mov.l	@er7+,er4
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L453
.L450:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L450
.L453:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L458
.L455:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L455
.L458:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	mov.l	er4,@-er7
	mov.b	r0l,r2l
	extu.w	r2
	mov.w	#8,r3
	sub.w	r1,r3
	mov.w	r2,r0
	mov.b	r3l,r3l
	ble	.L461
.L460:
	shlr.w	r0
	add.b	#-1,r3l
	bne	.L460
.L461:
	mov.b	r1l,r1l
	ble	.L463
.L462:
	shll.w	r2
	add.b	#-1,r1l
	bne	.L462
.L463:
	or	r2l,r0l
	mov.l	@er7+,er4
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	mov.l	er4,@-er7
	mov.b	r0l,r2l
	extu.w	r2
	mov.w	#8,r3
	sub.w	r1,r3
	mov.w	r2,r0
	mov.b	r3l,r3l
	ble	.L466
.L465:
	shll.w	r0
	add.b	#-1,r3l
	bne	.L465
.L466:
	mov.b	r1l,r1l
	ble	.L468
.L467:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L467
.L468:
	or	r2l,r0l
	mov.l	@er7+,er4
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
	mov.l	@er7,er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	mov.l	@er7,er0
	and.l	#-16777216,er0
	mov.l	er0,er4
	mov.w	e4,r4
	mov.b	r4h,r4l
	extu.w	r4
	extu.l	er4
	mov.l	er3,er2
	or.l	er4,er2
	mov.l	er2,@(12,er7)
	mov.l	@er7,er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,er0
	mov.l	er2,er6
	mov.w	e6,r4
	mov.b	r4l,r4h
	mov.b	r6h,r4l
	mov.b	r6l,r6h
	sub.b	r6l,r6l
	mov.w	r4,e6
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er0,er2
	sub.l	er0,er0
	or.l	er2,er0
	mov.l	er0,@(16,er7)
	mov.l	@(12,er7),er0
	or.l	er6,er0
	mov.l	er0,@(20,er7)
	mov.l	@er7,er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r4,e4
	sub.w	r4,r4
	mov.l	er4,er3
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	mov.l	@(16,er7),er0
	or.l	er2,er0
	mov.l	er0,er4
	mov.l	@(20,er7),er0
	or.l	er3,er0
	mov.l	er0,er5
	mov.l	@(4,er7),er2
	and.l	#-16777216,er2
	mov.l	er2,@(12,er7)
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	sub.l	er2,er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(8,er7),er2
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
	mov.l	er4,er2
	or.l	er0,er2
	mov.l	er2,@(16,er7)
	mov.l	er5,er2
	or.l	er1,er2
	mov.l	er2,@(20,er7)
	sub.l	er3,er3
	mov.l	@(4,er7),er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er4
	shll.l	er2
	mov.l	er2,er6
	cmp.l	er4,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,er5
	add.l	er1,er5
	mov.l	er6,er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	cmp.l	er6,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er5,er2
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
	mov.l	er2,er1
	cmp.l	er5,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	mov.l	@(16,er7),er4
	or.l	er0,er4
	mov.l	er4,er2
	mov.l	@(20,er7),er4
	or.l	er1,er4
	mov.l	er4,er3
	mov.l	@(4,er7),er0
	and	#0,r0l
	sub.w	e0,e0
	mov.w	e0,r4
	mov.b	r4l,r4h
	mov.b	r0h,r4l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r4,e0
	or.l	er2,er0
	mov.l	er0,@(8,er7)
	mov.l	er3,@(12,er7)
	mov.l	@(4,er7),er0
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	mov.w	r4,e4
	sub.w	r4,r4
	mov.l	er4,er0
	mov.l	@(8,er7),er1
	or.l	er1,er0
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
.L507:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L510
.L509:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L509
.L510:
	btst	#0,r3l
	beq	.L505
	inc #1,r2
	mov.w	r2,r0
	rts
.L505:
	inc #1,r2
	cmp.w	#16,r2
	bne	.L507
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L514
	btst	#0,r2l
	bne	.L515
	mov.w	#1,r0
.L513:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L513
	rts
.L514:
	sub.w	r0,r0
	rts
.L515:
	mov.w	#1,r0
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
	mov.l	er6,@-er7
	mov.l	er0,er6
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L531
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L531
	mov.w	r4,r4
	bpl	.L537
	mov.l	#1056964608,er5
	bra	.L536
.L537:
	mov.l	#1073741824,er5
.L536:
	btst	#0,r4l
	beq	.L534
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L534:
	mov.w	r4,r2
	bpl	.L535
	inc #1,r2
.L535:
	shar.w	r2
	mov.w	r2,r4
	beq	.L531
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L536
.L531:
	mov.l	er6,er0
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
	mov.l	er6,@-er7
	mov.l	er0,er6
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L540
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L540
	mov.w	r4,r4
	bpl	.L546
	mov.l	#1056964608,er5
	bra	.L545
.L546:
	mov.l	#1073741824,er5
.L545:
	btst	#0,r4l
	beq	.L543
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L543:
	mov.w	r4,r2
	bpl	.L544
	inc #1,r2
.L544:
	shar.w	r2
	mov.w	r2,r4
	beq	.L540
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L545
.L540:
	mov.l	er6,er0
	mov.l	@er7+,er6
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
	mov.l	er0,er6
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L549
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L549
	mov.w	r4,r4
	bpl	.L555
	mov.l	#1056964608,er5
	bra	.L554
.L555:
	mov.l	#1073741824,er5
.L554:
	btst	#0,r4l
	beq	.L552
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L552:
	mov.w	r4,r2
	bpl	.L553
	inc #1,r2
.L553:
	shar.w	r2
	mov.w	r2,r4
	beq	.L549
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L554
.L549:
	mov.l	er6,er0
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
	mov.l	er2,er2
	beq	.L558
	mov.l	er1,er5
	mov.l	er0,er3
	add.l	er2,er1
.L559:
	mov.b	@er5+,r4l
	mov.b	@er3,r2l
	xor	r2l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er1,er5
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
	mov.l	er0,er6
	mov.l	er1,er5
	mov.l	er2,er4
	jsr	@_strlen
	add.l	er6,er0
	mov.l	er4,er4
	bne	.L562
	bra	.L563
.L564:
	adds	#1,er5
	adds	#1,er0
	dec.l	#1,er4
	beq	.L563
.L562:
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L564
.L563:
	mov.l	er4,er4
	bne	.L565
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L565:
	mov.l	er6,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	mov.l	er1,er1
	bne	.L571
	sub.l	er0,er0
	rts
.L570:
	adds	#1,er0
	cmp.l	er1,er0
	bne	.L568
	rts
.L571:
	sub.l	er0,er0
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
	mov.b	@er0,r2l
	bne	.L573
	sub.l	er0,er0
	bra	.L574
.L575:
	mov.b	@er2+,r3l
	mov.b	@er0,r4l
	cmp.b	r4l,r3l
	beq	.L574
.L576:
	mov.b	@er2,r3l
	bne	.L575
	adds	#1,er0
	mov.b	@er0,r2l
	beq	.L577
.L573:
	mov.l	er1,er2
	bra	.L576
.L577:
	sub.l	er0,er0
.L574:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er0,er2
	sub.l	er0,er0
.L581:
	mov.b	@er2,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L580
	mov.l	er2,er0
.L580:
	mov.b	@er2+,r3l
	mov.b	r3l,r3l
	bne	.L581
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er1,er0
	jsr	@_strlen
	mov.l	er0,er6
	beq	.L584
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L586
.L587:
	mov.l	er6,er2
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L584
	adds	#1,er4
.L586:
	mov.w	@(2,er7),r1
	mov.l	er4,er0
	jsr	@_strchr
	mov.l	er0,er4
	bne	.L587
.L584:
	mov.l	er4,er0
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
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L590
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L592
.L590:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L593
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L593
.L592:
	xor.w	#32768,e4
.L593:
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
	sub.l	#8,er7
	mov.l	er0,er4
	mov.l	@(24,er7),er3
	mov.l	er1,er5
	sub.l	er3,er5
	add.l	er0,er5
	mov.l	er3,er3
	beq	.L598
	cmp.l	er3,er1
	blo	.L604
	cmp.l	er5,er0
	bhi	.L605
	mov.b	@er2+,r6l
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
.L602:
	mov.b	@er4,r2l
	cmp.b	r6l,r2l
	bne	.L601
	mov.l	@er7,er2
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L606
.L601:
	adds	#1,er4
	cmp.l	er4,er5
	bhs	.L602
	sub.l	er0,er0
	bra	.L598
.L604:
	sub.l	er0,er0
	bra	.L598
.L605:
	sub.l	er0,er0
	bra	.L598
.L606:
	mov.l	er4,er0
.L598:
	add.l	#8,er7
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
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L614:
	inc #1,r5
	mov.l	er6,er1
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
	mov.l	er0,er0
	beq	.L632
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L618:
	dec #1,r5
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er6,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L618
	bra	.L615
.L631:
	sub.w	r5,r5
	bra	.L615
.L632:
	sub.w	r5,r5
.L615:
	mov.l	@(4,er7),er2
	mov.w	r5,@er2
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
	blo	.L651
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L644
.L648:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L645
.L644:
	mov.l	er3,er3
	bne	.L652
	sub.l	er0,er0
	bra	.L647
.L645:
	dec #1,r0
	bne	.L643
	bra	.L644
.L651:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L643:
	mov.l	er1,er1
	bpl	.L648
	bra	.L644
.L652:
	sub.l	er0,er0
.L646:
	cmp.l	er1,er4
	blo	.L649
	sub.l	er1,er4
	or.l	er3,er0
.L649:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L646
.L647:
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
	mov.l	er6,@-er7
	mov.l	er0,er2
	mov.l	er0,er4
	shll	e4
	subx	r4l,r4l
	exts.w	r4
	exts.l	er4
	mov.l	er4,er0
	mov.l	er4,er6
	xor.l	er2,er6
	xor.l	er1,er0
	mov.l	er0,er5
	mov.l	er6,er2
	or.l	er0,er2
	beq	.L661
	mov.l	er6,er0
	mov.l	er5,er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L658
.L661:
	mov.w	#63,r0
.L658:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	beq	.L665
	sub.w	r0,r0
.L664:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.w	r1,r3
	add.w	r3,r0
	shlr.w	r2
	shll.w	r1
	mov.w	r2,r2
	bne	.L664
	rts
.L665:
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
	blo	.L668
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L668
	mov.w	r2,r2
	bne	.L669
	bra	.L667:16
.L668:
	mov.w	r6,r6
	beq	.L671
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L672:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L672
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L671:
	cmp.w	r5,r2
	bls	.L667
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
.L673:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L673
	bra	.L667
.L669:
	dec #1,r2
	extu.l	er2
.L674:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L674
.L667:
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
	blo	.L679
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L679
	mov.w	r2,r2
	bne	.L680
	bra	.L678
.L679:
	mov.w	r6,r6
	beq	.L682
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L683:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L683
.L682:
	btst	#0,r2l
	beq	.L678
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L678
.L680:
	dec #1,r2
	extu.l	er2
.L684:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L684
.L678:
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
	blo	.L688
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L688
	mov.w	r2,r2
	bne	.L689
	bra	.L687
.L688:
	mov.w	r6,r6
	beq	.L691
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L692:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L692
	mov.w	@(2,er7),r5
.L691:
	cmp.w	r5,r2
	bls	.L687
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
.L693:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L693
	bra	.L687
.L689:
	dec #1,r2
	extu.l	er2
.L694:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L694
.L687:
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
	bmi	.L708
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L706
.L707:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L710
.L709:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L709
.L710:
	and.w	r3,r2
	bne	.L704
.L706:
	inc #1,r0
	cmp.w	#16,r0
	bne	.L707
	bra	.L704
.L708:
	sub.w	r0,r0
.L704:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
.L713:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L717
.L716:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L716
.L717:
	btst	#0,r2l
	bne	.L715
	inc #1,r0
	cmp.w	#16,r0
	bne	.L713
.L715:
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
	bmi	.L723
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L718
.L723:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L718:
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
.L725:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L728
.L727:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L727
.L728:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L725
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
.L730:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L733
.L732:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L732
.L733:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L730
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L737
	sub.l	er0,er0
.L736:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L736
	rts
.L737:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L742
	mov.l	er1,er1
	beq	.L743
	sub.l	er0,er0
.L741:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L741
	rts
.L742:
	sub.l	er0,er0
	rts
.L743:
	sub.l	er0,er0
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L754
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L747
.L751:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L748
.L747:
	mov.l	er3,er3
	bne	.L755
	sub.l	er0,er0
	bra	.L750
.L748:
	dec #1,r0
	bne	.L746
	bra	.L747
.L754:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L746:
	mov.l	er1,er1
	bpl	.L751
	bra	.L747
.L755:
	sub.l	er0,er0
.L749:
	cmp.l	er1,er4
	blo	.L752
	sub.l	er1,er4
	or.l	er3,er0
.L752:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L749
.L750:
	mov.w	r2,r2
	beq	.L745
	mov.l	er4,er0
.L745:
	mov.l	@er7+,er4
	rts
	.size	___udivmodsi4, .-___udivmodsi4
	.align 1
	.global ___mspabi_cmpf
___mspabi_cmpf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L761
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L760
	sub.w	r6,r6
.L760:
	mov.w	r6,r0
	bra	.L758
.L761:
	mov.w	#-1,r0
.L758:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 1
	.global ___mspabi_cmpd
___mspabi_cmpd:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L765
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L764
	sub.w	r6,r6
.L764:
	mov.w	r6,r0
	bra	.L762
.L765:
	mov.w	#-1,r0
.L762:
	mov.l	@er7+,er6
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
	bpl	.L773
	neg.w	r1
	mov.w	#1,r5
	bra	.L769
.L773:
	sub.w	r5,r5
.L769:
	mov.w	r1,r1
	beq	.L774
	mov.b	#16,r4l
	sub.w	r0,r0
.L771:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r3
	shar.w	r1
	beq	.L770
	add.b	#-1,r4l
	bne	.L771
	bra	.L770
.L774:
	sub.w	r0,r0
.L770:
	mov.w	r5,r5
	beq	.L768
	neg.w	r0
.L768:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L780
	neg.l	er0
	mov.w	#1,r4
	bra	.L777
.L780:
	sub.w	r4,r4
.L777:
	mov.l	er1,er1
	bpl	.L778
	neg.l	er1
	xor	#1,r4l
.L778:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L776
	neg.l	er0
.L776:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L785
	neg.l	er0
	mov.w	#1,r4
	bra	.L782
.L785:
	sub.w	r4,r4
.L782:
	mov.l	er2,er1
	bpl	.L783
	neg.l	er2
	mov.l	er2,er1
.L783:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L781
	neg.l	er0
.L781:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	r0,r4
	cmp.w	r0,r1
	blo	.L795
	mov.w	#1,r3
	bra	.L788
.L792:
	shll.w	r1
	shll.w	r3
	cmp.w	r1,r4
	bhi	.L789
.L788:
	mov.w	r3,r3
	bne	.L796
	sub.w	r0,r0
	bra	.L791
.L789:
	dec #1,r0
	bne	.L787
	bra	.L788
.L795:
	mov.w	#16,r0
	mov.w	#1,r3
.L787:
	mov.w	r1,r1
	bpl	.L792
	bra	.L788
.L796:
	sub.w	r0,r0
.L790:
	cmp.w	r1,r4
	blo	.L793
	sub.w	r1,r4
	or.w	r3,r0
.L793:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L790
.L791:
	mov.w	r2,r2
	beq	.L786
	mov.w	r4,r0
.L786:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L808
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L801
.L805:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L802
.L801:
	mov.l	er3,er3
	bne	.L809
	sub.l	er0,er0
	bra	.L804
.L802:
	dec #1,r0
	bne	.L800
	bra	.L801
.L808:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L800:
	mov.l	er1,er1
	bpl	.L805
	bra	.L801
.L809:
	sub.l	er0,er0
.L803:
	cmp.l	er1,er4
	blo	.L806
	sub.l	er1,er4
	or.l	er3,er0
.L806:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L803
.L804:
	mov.w	r2,r2
	beq	.L799
	mov.l	er4,er0
.L799:
	mov.l	@er7+,er4
	rts
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 1
	.global ___ashldi3
___ashldi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	btst	#5,r2l
	beq	.L813
	sub.l	er3,er3
	mov.l	er3,@(4,er7)
	add.w	#-32,r2
	mov.l	er1,er3
	mov.b	r2l,r2l
	ble	.L818
.L817:
	shll.l	er3
	add.b	#-1,r2l
	bne	.L817
.L818:
	mov.l	er3,@er7
	bra	.L814
.L813:
	mov.w	r2,r2
	beq	.L816
	mov.l	@(12,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L820
.L819:
	shll.l	er0
	add.b	#-1,r1l
	bne	.L819
.L820:
	mov.l	er0,@(4,er7)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L822
.L821:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L821
.L822:
	mov.l	@(8,er7),er0
	mov.b	r2l,r2l
	ble	.L824
.L823:
	shll.l	er0
	add.b	#-1,r2l
	bne	.L823
.L824:
	or.l	er0,er3
	mov.l	er3,@er7
.L814:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L812
.L816:
	mov.l	er0,er2
	mov.l	er1,er3
.L812:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___ashldi3, .-___ashldi3
	.align 1
	.global ___ashrdi3
___ashrdi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	btst	#5,r2l
	beq	.L826
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@er7
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L831
.L830:
	shar.l	er3
	add.b	#-1,r2l
	bne	.L830
.L831:
	mov.l	er3,@(4,er7)
	bra	.L827
.L826:
	mov.w	r2,r2
	beq	.L829
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L833
.L832:
	shar.l	er0
	add.b	#-1,r1l
	bne	.L832
.L833:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L835
.L834:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L834
.L835:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L837
.L836:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L836
.L837:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L827:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L825
.L829:
	mov.l	er0,er2
	mov.l	er1,er3
.L825:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
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
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er2
	mov.l	@(16,er7),er3
	or.l	er3,er2
	mov.l	er2,er4
	mov.l	@(20,er7),er5
	mov.l	@(4,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(4,er7),er2
	mov.l	@(12,er7),er3
	cmp.l	er2,er3
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,er1
	mov.l	@(12,er7),er2
	cmp.l	er2,er1
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	mov.l	er2,er0
	add.l	er3,er0
	and	#0,r0l
	sub.w	e0,e0
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er2,@(8,er7)
	mov.l	er5,@(12,er7)
	mov.l	@(4,er7),er2
	mov.w	e2,r0
	mov.b	r0l,r0h
	mov.b	r2h,r0l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r0,e2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,er0
	mov.l	@(8,er7),er1
	or.l	er1,er0
	mov.l	er5,er1
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
	.size	___bswapsi2, .-___bswapsi2
	.align 1
	.global ___clzsi2
___clzsi2:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	#65535,er2
	bls	.L873
	sub.l	er0,er0
.L873:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L878
.L877:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L877
.L878:
	mov.l	er2,er1
	and	#0,r1l
	sub.w	e1,e1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L874
	sub.l	er3,er3
.L874:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L880
.L879:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L879
.L880:
	add.l	er0,er3
	mov.l	er2,er0
	and.l	#240,er0
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L875
	sub.l	er1,er1
.L875:
	shll.l	er1
	shll.l	er1
	mov.w	#4,r0
	sub.w	r1,r0
	mov.b	r0l,r0l
	ble	.L882
.L881:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L881
.L882:
	add.l	er3,er1
	mov.l	er2,er3
	and.l	#12,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er3,er3
	beq	.L876
	sub.l	er0,er0
.L876:
	shll.l	er0
	mov.w	#2,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L884
.L883:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L883
.L884:
	mov.l	er2,er3
	shlr.l	er3
	and.w	#1,r3
	sub.l	er4,er4
	add.b	#2,r4l
	sub.l	er2,er4
	mov.w	r3,r2
	dec #1,r2
	and.w	r4,r2
	add.l	er1,er0
	add.w	r2,r0
	mov.l	@er7+,er4
	rts
	.size	___clzsi2, .-___clzsi2
	.align 1
	.global ___cmpdi2
___cmpdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,er4
	mov.l	@(28,er7),er2
	mov.l	@(32,er7),er3
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	cmp.l	er2,er4
	blt	.L887
	cmp.l	er2,er4
	bgt	.L888
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L889
	bhi	.L890
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L885
.L887:
	sub.l	er0,er0
	bra	.L885
.L888:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L885
.L889:
	sub.l	er0,er0
	bra	.L885
.L890:
	sub.l	er0,er0
	add.b	#2,r0l
.L885:
	add.l	#16,er7
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
	beq	.L893
	sub.l	er0,er0
.L893:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L898
.L897:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L897
.L898:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L894
	sub.l	er3,er3
.L894:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L900
.L899:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L899
.L900:
	add.l	er0,er3
	mov.l	er2,er1
	and.l	#15,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L895
	sub.l	er0,er0
.L895:
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L902
.L901:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L901
.L902:
	add.l	er0,er3
	mov.l	er2,er1
	and.l	#3,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L896
	sub.l	er0,er0
.L896:
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L904
.L903:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L903
.L904:
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
	rts
	.size	___ctzsi2, .-___ctzsi2
	.align 1
	.global ___lshrdi3
___lshrdi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	btst	#5,r2l
	beq	.L906
	sub.l	er3,er3
	mov.l	er3,@er7
	add.w	#-32,r2
	mov.l	er0,er3
	mov.b	r2l,r2l
	ble	.L911
.L910:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L910
.L911:
	mov.l	er3,@(4,er7)
	bra	.L907
.L906:
	mov.w	r2,r2
	beq	.L909
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L913
.L912:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L912
.L913:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L915
.L914:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L914
.L915:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L917
.L916:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L916
.L917:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L907:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L905
.L909:
	mov.l	er0,er2
	mov.l	er1,er3
.L905:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___lshrdi3, .-___lshrdi3
	.align 1
	.global ___muldsi3
___muldsi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#24,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er2
	sub.w	e2,e2
	mov.l	er1,er3
	sub.w	e3,e3
	mov.l	er3,@(4,er7)
	mov.l	er3,er1
	mov.l	er2,@er7
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er6
	mov.w	e6,r6
	extu.l	er6
	mov.l	er0,er2
	sub.w	e2,e2
	mov.l	er2,@(12,er7)
	mov.w	e4,r4
	extu.l	er4
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er6,er0
	mov.l	er0,er6
	mov.w	e6,r6
	extu.l	er6
	mov.w	r0,r3
	extu.l	er3
	mov.l	er3,@(8,er7)
	mov.w	e5,r5
	extu.l	er5
	mov.l	er5,@(4,er7)
	mov.l	er5,er1
	mov.l	@er7,er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er2
	add.l	er2,er0
	mov.l	er0,er3
	mov.w	r3,e3
	sub.w	r3,r3
	mov.l	er3,er5
	mov.l	@(12,er7),er2
	add.l	er2,er5
	mov.w	e0,r0
	extu.l	er0
	add.l	er0,er6
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er0,er6
	mov.l	er6,er0
	mov.l	er5,er1
	add.l	#24,er7
	mov.l	@er7+,er6
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
	sub.l	#52,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	@(68,er7),er2
	mov.l	er2,@(16,er7)
	mov.l	@(72,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	er0,er6
	mov.l	@(16,er7),er2
	mov.l	er2,@(24,er7)
	mov.l	@(20,er7),er1
	mov.l	@(12,er7),er0
	jsr	@___muldsi3
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er0,er4
	mov.l	@(20,er7),er1
	mov.l	er6,er0
	jsr	@___mulsi3
	mov.l	er0,er5
	mov.l	@(12,er7),er1
	mov.l	@(24,er7),er0
	jsr	@___mulsi3
	add.l	er0,er5
	add.l	er5,er4
	mov.l	er4,er0
	mov.l	@(4,er7),er1
	add.l	#52,er7
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
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L921
	sub.l	er6,er6
.L921:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er3,er1
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___negdi2, .-___negdi2
	.align 1
	.global ___paritydi2
___paritydi2:
	mov.l	er4,@-er7
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
	ble	.L924
.L923:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L923
.L924:
	and.w	#1,r0
	add.l	#8,er7
	mov.l	@er7+,er4
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
	ble	.L927
.L926:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L926
.L927:
	and.w	#1,r0
	rts
	.size	___paritysi2, .-___paritysi2
	.align 1
	.global ___popcountdi2
___popcountdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er1,er4
	shlr.l	er4
	mov.l	er4,er3
	rotxl.l	er3
	bor	#0,r0l
	rotxr.l	er3
	mov.l	er0,er4
	shlr.l	er4
	mov.l	er4,er6
	and.l	#1431655765,er6
	mov.l	er6,er4
	mov.l	er3,er2
	and.l	#1431655765,er2
	mov.l	er2,er5
	mov.l	er1,er2
	sub.l	er5,er2
	mov.l	er2,@(4,er7)
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	@(4,er7),er3
	cmp.l	er1,er3
	bhi	.L929
	sub.l	er2,er2
.L929:
	mov.l	er0,er3
	sub.l	er4,er3
	sub.l	er2,er3
	mov.l	er3,er4
	mov.l	@(4,er7),er5
	mov.l	er3,er0
	sub.w	e0,e0
	rotr.l	er0
	rotr.l	er0
	sub.w	r0,r0
	mov.l	er5,er1
	shlr.l	er1
	shlr.l	er1
	mov.l	er1,er3
	or.l	er0,er3
	mov.l	er4,er0
	shlr.l	er0
	shlr.l	er0
	mov.l	er0,er6
	and.l	#858993459,er6
	mov.l	er6,er0
	mov.l	er3,er2
	and.l	#858993459,er2
	mov.l	er2,er1
	mov.l	er4,er2
	and.l	#858993459,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	and.l	#858993459,er2
	mov.l	er2,@(4,er7)
	mov.l	er1,er2
	mov.l	@(4,er7),er3
	add.l	er3,er2
	mov.l	er2,er6
	cmp.l	er1,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er0,er2
	mov.l	@er7,er0
	add.l	er0,er2
	mov.l	er2,er5
	mov.l	er3,er2
	add.l	er5,er2
	mov.l	er2,er0
	mov.l	er2,er4
	sub.w	e4,e4
	rotr.l	er4
	rotr.l	er4
	rotr.l	er4
	rotr.l	er4
	sub.w	r4,r4
	mov.l	er6,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	or.l	er4,er2
	mov.l	er2,@(4,er7)
	mov.l	er0,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@er7
	mov.l	@(4,er7),er2
	add.l	er6,er2
	mov.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@er7,er2
	add.l	er0,er2
	mov.l	er2,er4
	mov.l	er3,er2
	add.l	er4,er2
	mov.l	er2,er4
	and.l	#252645135,er4
	mov.l	er5,er0
	and.l	#252645135,er0
	mov.l	er0,er3
	add.l	er4,er3
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
	add.l	#8,er7
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
	mov.w	r1,r5
	mov.w	r1,r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,@(2,er7)
	mov.l	#1065353216,er6
.L937:
	btst	#0,r5l
	beq	.L934
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L934:
	mov.w	r5,r2
	bpl	.L935
	inc #1,r2
.L935:
	shar.w	r2
	mov.w	r2,r5
	beq	.L936
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L937
.L936:
	mov.w	@(2,er7),r2
	beq	.L933
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er6
.L933:
	mov.l	er6,er0
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
	mov.w	r1,r5
	mov.w	r1,r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,@(2,er7)
	mov.l	#1065353216,er6
.L943:
	btst	#0,r5l
	beq	.L940
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L940:
	mov.w	r5,r2
	bpl	.L941
	inc #1,r2
.L941:
	shar.w	r2
	mov.w	r2,r5
	beq	.L942
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L943
.L942:
	mov.w	@(2,er7),r2
	beq	.L939
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er6
.L939:
	mov.l	er6,er0
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
	sub.l	#16,er7
	mov.l	er0,er4
	mov.l	@(28,er7),er2
	mov.l	@(32,er7),er3
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	cmp.l	er2,er4
	blo	.L947
	cmp.l	er2,er4
	bhi	.L948
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L949
	bhi	.L950
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L945
.L947:
	sub.l	er0,er0
	bra	.L945
.L948:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L945
.L949:
	sub.l	er0,er0
	bra	.L945
.L950:
	sub.l	er0,er0
	add.b	#2,r0l
.L945:
	add.l	#16,er7
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
