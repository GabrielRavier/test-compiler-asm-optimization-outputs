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
	beq	.L14
	adds	#1,er0
	bra	.L12
.L14:
	sub.l	er0,er0
.L12:
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
	beq	.L29
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L27
.L29:
	sub.w	r0,r0
.L27:
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
	bra	.L36
.L38:
	mov.l	er4,er2
.L35:
	cmp.l	#-1,er2
	bne	.L37
	sub.l	er0,er0
.L36:
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
	beq	.L54
.L50:
	mov.b	@er0,r2l
	extu.w	r2
	cmp.w	r2,r1
	bne	.L52
.L54:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L58:
	mov.b	@er0,r2l
	extu.w	r2
	cmp.w	r2,r1
	beq	.L61
	mov.b	@er0+,r2l
	mov.b	r2l,r2l
	bne	.L58
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
	bra	.L73
.L77:
	sub.w	r0,r0
.L73:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L83
	subs	#2,er2
	and	#254,r2l
	adds	#2,er2
	add.l	er0,er2
.L81:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L81
.L83:
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
	bls	.L86
	sub.w	r0,r0
.L86:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L88
	sub.w	r2,r2
.L88:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L92
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L91
	sub.w	r2,r2
.L91:
	mov.w	r2,r0
	rts
.L92:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L96
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L95
	sub.w	r2,r2
.L95:
	mov.w	r2,r0
	rts
.L96:
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
	bls	.L99
	sub.w	r0,r0
.L99:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L102
	sub.w	r0,r0
.L102:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L105
	sub.w	r0,r0
.L105:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L108
	sub.w	r0,r0
.L108:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L112
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L111
	sub.w	r2,r2
.L111:
	mov.w	r2,r0
	rts
.L112:
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
	bls	.L115
	sub.w	r0,r0
.L115:
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
	bls	.L120
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L121
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L118
	sub.w	r2,r2
.L118:
	mov.w	r2,r0
	rts
.L119:
	mov.w	#1,r0
	rts
.L120:
	mov.w	#1,r0
	rts
.L121:
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
	bls	.L124
	sub.w	r0,r0
.L124:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L126
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L133
	sub.w	r0,r0
	rts
.L126:
	cmp.w	#8231,r0
	bls	.L130
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L131
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L132
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L129
	sub.w	r2,r2
.L129:
	mov.w	r2,r0
	rts
.L130:
	mov.w	#1,r0
	rts
.L131:
	mov.w	#1,r0
	rts
.L132:
	mov.w	#1,r0
.L133:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L138
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L139
	sub.w	r0,r0
	rts
.L138:
	mov.w	#1,r0
.L139:
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
	bne	.L145
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L146
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L149
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L143
.L145:
	mov.l	er4,er0
	bra	.L143
.L146:
	mov.l	er5,er0
	bra	.L143
.L149:
	sub.l	er0,er0
.L143:
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
	bne	.L153
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L154
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L157
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L151
.L153:
	mov.l	er4,er0
	bra	.L151
.L154:
	mov.l	er5,er0
	bra	.L151
.L157:
	sub.l	er0,er0
.L151:
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
	bne	.L164
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L165
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
	beq	.L160
	mov.l	er4,er4
	bpl	.L166
	mov.l	er5,er0
	bra	.L159
.L160:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L162
	mov.l	er5,er4
.L162:
	mov.l	er4,er0
	bra	.L159
.L164:
	mov.l	er5,er0
	bra	.L159
.L165:
	mov.l	er4,er0
	bra	.L159
.L166:
	mov.l	er4,er0
.L159:
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
	bne	.L173
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L174
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
	beq	.L169
	mov.l	er4,er4
	bpl	.L175
	mov.l	er5,er0
	bra	.L168
.L169:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L171
	mov.l	er5,er4
.L171:
	mov.l	er4,er0
	bra	.L168
.L173:
	mov.l	er5,er0
	bra	.L168
.L174:
	mov.l	er4,er0
	bra	.L168
.L175:
	mov.l	er4,er0
.L168:
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
	bne	.L182
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L183
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
	beq	.L178
	mov.l	er4,er4
	bpl	.L184
	mov.l	er5,er0
	bra	.L177
.L178:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L180
	mov.l	er5,er4
.L180:
	mov.l	er4,er0
	bra	.L177
.L182:
	mov.l	er5,er0
	bra	.L177
.L183:
	mov.l	er4,er0
	bra	.L177
.L184:
	mov.l	er4,er0
.L177:
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
	bne	.L191
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L192
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
	beq	.L187
	mov.l	er5,er5
	bpl	.L193
	mov.l	er5,er0
	bra	.L186
.L187:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L189
	mov.l	er5,er4
.L189:
	mov.l	er4,er0
	bra	.L186
.L191:
	mov.l	er4,er0
	bra	.L186
.L192:
	mov.l	er5,er0
	bra	.L186
.L193:
	mov.l	er4,er0
.L186:
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
	bne	.L200
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L201
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
	beq	.L196
	mov.l	er5,er5
	bpl	.L202
	mov.l	er5,er0
	bra	.L195
.L196:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L198
	mov.l	er5,er4
.L198:
	mov.l	er4,er0
	bra	.L195
.L200:
	mov.l	er4,er0
	bra	.L195
.L201:
	mov.l	er5,er0
	bra	.L195
.L202:
	mov.l	er4,er0
.L195:
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
	bne	.L209
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L210
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
	beq	.L205
	mov.l	er5,er5
	bpl	.L211
	mov.l	er5,er0
	bra	.L204
.L205:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L207
	mov.l	er5,er4
.L207:
	mov.l	er4,er0
	bra	.L204
.L209:
	mov.l	er4,er0
	bra	.L204
.L210:
	mov.l	er5,er0
	bra	.L204
.L211:
	mov.l	er4,er0
.L204:
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
	beq	.L215
	mov.l	#_s___0,er3
	mov.l	#_digits,er1
.L214:
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
	bne	.L214
	bra	.L213
.L215:
	mov.l	#_s___0,er3
.L213:
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
	blo	.L219
	sub.l	er6,er6
.L219:
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
	bne	.L221
	sub.l	er2,er2
	mov.l	er2,@(4,er0)
	mov.l	er2,@er0
	rts
.L221:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L223
	mov.l	er0,@(4,er2)
.L223:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L226
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L226:
	mov.l	@(4,er0),er2
	beq	.L228
	mov.l	@er0,er3
	mov.l	er3,@er2
.L228:
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
	beq	.L230
	sub.l	er4,er4
	mov.l	er1,@(4,er7)
	mov.l	er2,@(12,er7)
.L233:
	mov.l	er5,er1
	mov.l	@er7,er0
	jsr	@er6
	mov.w	r0,r0
	bne	.L231
	mov.l	@(32,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er2
	add.l	er2,er0
	bra	.L232
.L231:
	adds	#1,er4
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er2,er4
	bne	.L233
	mov.l	er2,er1
	mov.l	@(12,er7),er2
.L230:
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
.L232:
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
	beq	.L239
	mov.l	er1,er5
	sub.l	er4,er4
	mov.l	er6,@(4,er7)
	mov.l	@(32,er7),er6
.L238:
	mov.l	er5,er1
	mov.l	@er7,er0
	jsr	@er6
	mov.w	r0,r0
	bne	.L237
	mov.l	@(28,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er2
	add.l	er2,er0
	bra	.L236
.L237:
	adds	#1,er4
	mov.l	@(28,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er2,er4
	bne	.L238
	sub.l	er0,er0
	bra	.L236
.L239:
	sub.l	er0,er0
.L236:
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
	bpl	.L243
	neg.w	r0
.L243:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er0,er4
	bra	.L245
.L246:
	adds	#1,er4
.L245:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L246
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L252
	cmp.w	#45,r2
	bne	.L253
	mov.w	#1,r1
	bra	.L247
.L252:
	sub.w	r1,r1
.L247:
	adds	#1,er4
	bra	.L248
.L253:
	sub.w	r1,r1
.L248:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L254
	sub.w	r0,r0
	mov.w	#10,r3
.L250:
	mulxs.w	r3,er0
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	sub.w	r2,r0
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L250
	bra	.L249
.L254:
	sub.w	r0,r0
.L249:
	mov.w	r1,r1
	bne	.L251
	neg.w	r0
.L251:
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
	bra	.L258
.L259:
	adds	#1,er4
.L258:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L259
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L265
	cmp.w	#45,r2
	bne	.L266
	mov.w	#1,r6
	bra	.L260
.L265:
	sub.w	r6,r6
.L260:
	adds	#1,er4
	bra	.L261
.L266:
	sub.w	r6,r6
.L261:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L267
	sub.l	er0,er0
	sub.l	er5,er5
	add.b	#10,r5l
.L263:
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
	bls	.L263
	bra	.L262
.L267:
	sub.l	er0,er0
.L262:
	mov.w	r6,r6
	bne	.L264
	neg.l	er0
.L264:
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
	bra	.L271
.L272:
	adds	#1,er4
.L271:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L272
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L280
	cmp.w	#45,r2
	bne	.L281
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L273
.L280:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L273:
	adds	#1,er4
	bra	.L274
.L281:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L274:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L282:16
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L277:
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
	bhi	.L276
	sub.l	er5,er5
.L276:
	mov.l	@(8,er7),er1
	sub.l	er1,er0
	sub.l	er5,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L277:16
	bra	.L275
.L282:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L275:
	mov.w	@(18,er7),r2
	bne	.L283
	sub.l	er2,er2
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er1,er1
	bne	.L279
	sub.l	er4,er4
.L279:
	mov.l	@er7,er3
	sub.l	er3,er2
	mov.l	er2,er5
	sub.l	er4,er5
	mov.l	er5,er2
	mov.l	er1,er3
	bra	.L278
.L283:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
.L278:
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
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	er1,er6
	mov.l	er2,er4
	beq	.L290
.L289:
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
	bpl	.L287
	shlr.l	er4
	bra	.L288
.L287:
	ble	.L291
	mov.l	@(20,er7),er6
	add.l	er5,er6
	mov.l	er4,er2
	shlr.l	er2
	subs	#1,er4
	sub.l	er2,er4
.L288:
	mov.l	er4,er4
	bne	.L289
	sub.l	er0,er0
	bra	.L286
.L290:
	sub.l	er0,er0
	bra	.L286
.L291:
	mov.l	er5,er0
.L286:
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
	mov.w	r2,r4
	beq	.L297
	mov.l	er1,er6
.L296:
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
	beq	.L298
	ble	.L295
	mov.l	@(20,er7),er6
	add.l	er5,er6
	dec #1,r4
.L295:
	shar.w	r4
	bne	.L296
	sub.l	er0,er0
	bra	.L294
.L297:
	sub.l	er0,er0
	bra	.L294
.L298:
	mov.l	er5,er0
.L294:
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
	bpl	.L302
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L304
	sub.l	er6,er6
.L304:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L302:
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
	bpl	.L308
	neg.l	er0
.L308:
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
	bpl	.L311
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L313
	sub.l	er6,er6
.L313:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L311:
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
	bne	.L316
	bra	.L317
.L318:
	adds	#2,er0
	mov.w	@er0,r2
	beq	.L317
.L316:
	mov.w	@er0,r2
	cmp.w	r2,r1
	bne	.L318
.L317:
	mov.w	@er0,r2
	bne	.L322
	sub.l	er0,er0
.L322:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	beq	.L324
	bra	.L325
.L326:
	adds	#2,er0
	adds	#2,er1
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L325
.L324:
	mov.w	@er0,r2
	beq	.L325
	mov.w	@er1,r2
	bne	.L326
.L325:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L329
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L328
	sub.w	r2,r2
.L328:
	mov.w	r2,r0
	rts
.L329:
	mov.w	#-1,r0
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L332:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L332
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L337
	mov.l	er0,er2
.L336:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L336
	bra	.L335
.L337:
	mov.l	er0,er2
.L335:
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
	bne	.L340
	bra	.L341
.L342:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L341
.L340:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L341
	mov.w	r3,r3
	beq	.L341
	mov.w	r4,r3
	bne	.L342
.L341:
	mov.l	er2,er2
	beq	.L345
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L346
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L344
	sub.w	r2,r2
.L344:
	mov.w	r2,r0
	bra	.L343
.L345:
	sub.w	r0,r0
	bra	.L343
.L346:
	mov.w	#-1,r0
.L343:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	mov.l	er2,er2
	bne	.L349
	bra	.L350
.L351:
	subs	#1,er2
	adds	#2,er0
	mov.l	er2,er2
	beq	.L350
.L349:
	mov.w	@er0,r3
	cmp.w	r3,r1
	bne	.L351
.L350:
	mov.l	er2,er2
	bne	.L355
	sub.l	er0,er0
.L355:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L357
	bra	.L358
.L359:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L358
.L357:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L359
.L358:
	mov.l	er2,er2
	beq	.L362
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L363
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L361
	sub.w	r2,r2
.L361:
	mov.w	r2,r0
	bra	.L360
.L362:
	sub.w	r0,r0
	bra	.L360
.L363:
	mov.w	#-1,r0
.L360:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er4,@-er7
	mov.l	er2,er4
	subs	#1,er4
	mov.l	er2,er2
	beq	.L366
	mov.l	er0,er3
	mov.l	er4,er2
.L367:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	subs	#1,er2
	adds	#2,er3
	cmp.l	#-1,er2
	bne	.L367
.L366:
	mov.l	@er7+,er4
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er4,@-er7
	cmp.l	er1,er0
	beq	.L370
	mov.l	er2,er4
	shll.l	er4
	mov.l	er0,er3
	sub.l	er1,er3
	cmp.l	er4,er3
	blo	.L371
	mov.l	er2,er4
	subs	#1,er4
	mov.l	er2,er2
	bne	.L372
	bra	.L370
.L371:
	mov.l	er2,er2
	beq	.L370
	subs	#1,er2
	shll.l	er2
.L373:
	mov.l	er1,er3
	add.l	er2,er3
	mov.w	@er3,r4
	mov.l	er0,er3
	add.l	er2,er3
	mov.w	r4,@er3
	subs	#2,er2
	cmp.l	#-2,er2
	bne	.L373
	bra	.L370
.L372:
	mov.l	er0,er3
	mov.l	er4,er2
.L374:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	subs	#1,er2
	adds	#2,er3
	cmp.l	#-1,er2
	bne	.L374
.L370:
	mov.l	@er7+,er4
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er4,@-er7
	mov.l	er2,er4
	subs	#1,er4
	mov.l	er2,er2
	beq	.L378
	mov.l	er0,er3
	mov.l	er4,er2
.L379:
	mov.w	r1,@er3
	subs	#1,er2
	adds	#2,er3
	cmp.l	#-1,er2
	bne	.L379
.L378:
	mov.l	@er7+,er4
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L382
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L388
.L384:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L384
	rts
.L382:
	beq	.L388
	mov.l	er2,er2
	beq	.L388
	mov.l	er0,er3
	add.l	er2,er0
.L385:
	mov.b	@er3+,r2l
	mov.b	r2l,@er1
	adds	#1,er1
	cmp.l	er0,er3
	bne	.L385
.L388:
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
	bmi	.L391
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L396
.L395:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L395
.L396:
	bra	.L392
.L391:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L398
.L397:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L397
.L398:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L400
.L399:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L399
.L400:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L402
.L401:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L401
.L402:
.L392:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L393
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L404
.L403:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L403
.L404:
	bra	.L394
.L393:
	mov.l	@er7,er3
	shll.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L406
.L405:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L405
.L406:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L408
.L407:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L407
.L408:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L410
.L409:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L409
.L410:
.L394:
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
	bmi	.L412
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L417
.L416:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L416
.L417:
	bra	.L413
.L412:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L419
.L418:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L418
.L419:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L421
.L420:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L420
.L421:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L423
.L422:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L422
.L423:
.L413:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L414
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L425
.L424:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L424
.L425:
	bra	.L415
.L414:
	mov.l	@(4,er7),er3
	shlr.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L427
.L426:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L426
.L427:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L429
.L428:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L428
.L429:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L431
.L430:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L430
.L431:
.L415:
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
	ble	.L436
.L433:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L433
.L436:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L441
.L438:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L438
.L441:
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
	ble	.L444
.L443:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L443
.L444:
	mov.b	r1l,r1l
	ble	.L446
.L445:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L445
.L446:
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
	ble	.L449
.L448:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L448
.L449:
	mov.b	r1l,r1l
	ble	.L451
.L450:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L450
.L451:
	or.l	er2,er0
	mov.l	@er7+,er4
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L456
.L453:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L453
.L456:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L461
.L458:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L458
.L461:
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
	ble	.L464
.L463:
	shlr.w	r0
	add.b	#-1,r3l
	bne	.L463
.L464:
	mov.b	r1l,r1l
	ble	.L466
.L465:
	shll.w	r2
	add.b	#-1,r1l
	bne	.L465
.L466:
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
	ble	.L469
.L468:
	shll.w	r0
	add.b	#-1,r3l
	bne	.L468
.L469:
	mov.b	r1l,r1l
	ble	.L471
.L470:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L470
.L471:
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
.L510:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L513
.L512:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L512
.L513:
	btst	#0,r3l
	beq	.L508
	inc #1,r2
	mov.w	r2,r0
	rts
.L508:
	inc #1,r2
	cmp.w	#16,r2
	bne	.L510
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r0
	beq	.L517
	btst	#0,r0l
	bne	.L518
	mov.w	#1,r2
.L516:
	shar.w	r0
	inc #1,r2
	btst	#0,r0l
	beq	.L516
	mov.w	r2,r0
	rts
.L517:
	sub.w	r0,r0
	rts
.L518:
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
	bmi	.L523
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L522
	sub.w	r5,r5
.L522:
	mov.w	r5,r0
	bra	.L521
.L523:
	mov.w	#1,r0
.L521:
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
	bmi	.L527
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L526
	sub.w	r5,r5
.L526:
	mov.w	r5,r0
	bra	.L525
.L527:
	mov.w	#1,r0
.L525:
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
	bmi	.L531
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L530
	sub.w	r5,r5
.L530:
	mov.w	r5,r0
	bra	.L529
.L531:
	mov.w	#1,r0
.L529:
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
	bne	.L534
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L534
	mov.w	r4,r4
	bpl	.L540
	mov.l	#1056964608,er5
	bra	.L539
.L540:
	mov.l	#1073741824,er5
.L539:
	btst	#0,r4l
	beq	.L537
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L537:
	mov.w	r4,r2
	bpl	.L538
	inc #1,r2
.L538:
	shar.w	r2
	mov.w	r2,r4
	beq	.L534
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L539
.L534:
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
	bne	.L543
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L543
	mov.w	r4,r4
	bpl	.L549
	mov.l	#1056964608,er5
	bra	.L548
.L549:
	mov.l	#1073741824,er5
.L548:
	btst	#0,r4l
	beq	.L546
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L546:
	mov.w	r4,r2
	bpl	.L547
	inc #1,r2
.L547:
	shar.w	r2
	mov.w	r2,r4
	beq	.L543
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L548
.L543:
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
	bne	.L552
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L552
	mov.w	r4,r4
	bpl	.L558
	mov.l	#1056964608,er5
	bra	.L557
.L558:
	mov.l	#1073741824,er5
.L557:
	btst	#0,r4l
	beq	.L555
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L555:
	mov.w	r4,r2
	bpl	.L556
	inc #1,r2
.L556:
	shar.w	r2
	mov.w	r2,r4
	beq	.L552
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L557
.L552:
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
	beq	.L561
	mov.l	er1,er5
	mov.l	er0,er3
	add.l	er2,er1
.L562:
	mov.b	@er5+,r4l
	mov.b	@er3,r2l
	xor	r2l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er1,er5
	bne	.L562
.L561:
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
	bne	.L565
	bra	.L566
.L567:
	adds	#1,er5
	adds	#1,er0
	dec.l	#1,er4
	beq	.L566
.L565:
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L567
.L566:
	mov.l	er4,er4
	bne	.L568
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L568:
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
	bne	.L574
	sub.l	er0,er0
	rts
.L573:
	adds	#1,er0
	cmp.l	er1,er0
	bne	.L571
	rts
.L574:
	sub.l	er0,er0
.L571:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L573
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r2l
	bne	.L576
	sub.l	er0,er0
	bra	.L577
.L578:
	mov.b	@er2+,r3l
	mov.b	@er0,r4l
	cmp.b	r4l,r3l
	beq	.L577
.L579:
	mov.b	@er2,r3l
	bne	.L578
	adds	#1,er0
	mov.b	@er0,r2l
	beq	.L581
.L576:
	mov.l	er1,er2
	bra	.L579
.L581:
	sub.l	er0,er0
.L577:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er0,er2
	sub.l	er0,er0
.L585:
	mov.b	@er2,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L584
	mov.l	er2,er0
.L584:
	mov.b	@er2+,r3l
	mov.b	r3l,r3l
	bne	.L585
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
	beq	.L592
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L590
.L591:
	mov.l	er6,er2
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L593
	adds	#1,er4
.L590:
	mov.w	@(2,er7),r1
	mov.l	er4,er0
	jsr	@_strchr
	mov.l	er0,er4
	bne	.L591
	sub.l	er0,er0
	bra	.L589
.L592:
	mov.l	er4,er0
	bra	.L589
.L593:
	mov.l	er4,er0
.L589:
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
	bpl	.L595
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L597
.L595:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L605
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L606
.L597:
	mov.l	er4,er0
	xor.w	#32768,e0
	bra	.L598
.L605:
	mov.l	er4,er0
	bra	.L598
.L606:
	mov.l	er4,er0
.L598:
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
	beq	.L608
	cmp.l	er3,er1
	blo	.L613
	cmp.l	er5,er0
	bhi	.L614
	mov.b	@er2+,r6l
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
.L611:
	mov.b	@er4,r2l
	cmp.b	r6l,r2l
	bne	.L610
	mov.l	@er7,er2
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L615
.L610:
	adds	#1,er4
	cmp.l	er4,er5
	bhs	.L611
	sub.l	er0,er0
	bra	.L608
.L613:
	sub.l	er0,er0
	bra	.L608
.L614:
	sub.l	er0,er0
	bra	.L608
.L615:
	mov.l	er4,er0
.L608:
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
	bpl	.L638
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L619
.L638:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L619:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L639
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L623:
	inc #1,r5
	mov.l	er6,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L623
	bra	.L624
.L639:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L640
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L641
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L627:
	dec #1,r5
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er6,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L627
	bra	.L624
.L640:
	sub.w	r5,r5
	bra	.L624
.L641:
	sub.w	r5,r5
.L624:
	mov.l	@(4,er7),er2
	mov.w	r5,@er2
	mov.w	@(2,er7),r2
	beq	.L628
	xor.w	#32768,e4
.L628:
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
	sub.l	#52,er7
	mov.l	er0,er2
	mov.l	@(68,er7),er0
	mov.l	er0,@(32,er7)
	mov.l	@(72,er7),er0
	mov.l	er0,@(36,er7)
	mov.l	er2,er4
	mov.l	er1,er5
	or.l	er1,er2
	beq	.L649:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
	mov.l	@(32,er7),er2
	mov.l	er2,@er7
	mov.l	er0,@(4,er7)
	bra	.L648
.L650:
	mov.l	@(32,er7),er2
	mov.l	er2,@(16,er7)
	mov.l	@(36,er7),er2
	mov.l	er2,@(20,er7)
.L648:
	sub.l	er2,er2
	mov.l	er2,@(40,er7)
	mov.l	er5,er2
	and.l	#1,er2
	mov.l	er2,@(44,er7)
	sub.l	er2,er2
	mov.l	er2,@(32,er7)
	mov.l	er2,@(36,er7)
	mov.l	@(44,er7),er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er6,@(48,er7)
	mov.l	er3,er3
	bne	.L645
	sub.l	er6,er6
	mov.l	er6,@(48,er7)
.L645:
	mov.l	@(32,er7),er6
	mov.l	@(40,er7),er0
	sub.l	er0,er6
	mov.l	er6,er2
	mov.l	@(48,er7),er0
	sub.l	er0,er2
	mov.l	er2,er6
	mov.l	@er7,er0
	and.l	er0,er6
	mov.l	er6,@(24,er7)
	mov.l	er3,er2
	mov.l	@(4,er7),er3
	and.l	er3,er2
	mov.l	er2,@(28,er7)
	mov.l	@(28,er7),er6
	mov.l	@(20,er7),er0
	add.l	er0,er6
	mov.l	er6,er3
	mov.l	@(28,er7),er6
	cmp.l	er6,er3
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	er6,@(32,er7)
	mov.l	@(16,er7),er6
	mov.l	@(24,er7),er0
	add.l	er0,er6
	mov.l	er6,er2
	mov.l	@(32,er7),er6
	add.l	er2,er6
	mov.l	er6,@(32,er7)
	mov.l	er3,@(36,er7)
	mov.l	@(4,er7),er6
	shll.l	er6
	mov.l	er6,er3
	mov.l	@(4,er7),er0
	cmp.l	er0,er6
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@er7,er0
	shll.l	er0
	add.l	er0,er6
	mov.l	er6,@er7
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
	bne	.L650:16
	mov.l	@(32,er7),er2
	mov.l	er2,@(16,er7)
	mov.l	@(36,er7),er2
	mov.l	er2,@(20,er7)
	bra	.L643
.L649:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L643:
	mov.l	@(16,er7),er0
	mov.l	@(20,er7),er1
	add.l	#52,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___muldi3, .-___muldi3
	.align 1
	.global _udivmodsi4
_udivmodsi4:
	mov.l	er4,@-er7
	cmp.l	er0,er1
	blo	.L660
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L653
.L657:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er0
	bhi	.L654
.L653:
	mov.l	er3,er3
	bne	.L661
	sub.l	er4,er4
	bra	.L656
.L654:
	dec #1,r4
	bne	.L652
	bra	.L653
.L660:
	mov.w	#32,r4
	sub.l	er3,er3
	add.b	#1,r3l
.L652:
	mov.l	er1,er1
	bpl	.L657
	bra	.L653
.L661:
	sub.l	er4,er4
.L655:
	cmp.l	er1,er0
	blo	.L658
	sub.l	er1,er0
	or.l	er3,er4
.L658:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L655
.L656:
	mov.l	er2,er2
	bne	.L659
	mov.l	er4,er0
.L659:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L666
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L666:
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
	beq	.L670
	mov.l	er6,er0
	mov.l	er5,er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L668
.L670:
	mov.w	#63,r0
.L668:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r3
	beq	.L674
	sub.w	r0,r0
	bra	.L673
.L675:
	mov.w	r2,r0
.L673:
	mov.l	er3,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.w	r0,r2
	shlr.w	r3
	shll.w	r1
	mov.w	r3,r3
	bne	.L675
	mov.w	r2,r0
	rts
.L674:
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
	blo	.L677
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L677
	mov.w	r2,r2
	bne	.L678
	bra	.L676:16
.L677:
	mov.w	r6,r6
	beq	.L680
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L681:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L681
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L680:
	cmp.w	r5,r2
	bls	.L676
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
.L682:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L682
	bra	.L676
.L678:
	dec #1,r2
	extu.l	er2
.L683:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L683
.L676:
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
.L692:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L692
.L691:
	btst	#0,r2l
	beq	.L687
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L687
.L689:
	dec #1,r2
	extu.l	er2
.L693:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L693
.L687:
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
	blo	.L697
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L697
	mov.w	r2,r2
	bne	.L698
	bra	.L696
.L697:
	mov.w	r6,r6
	beq	.L700
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L701:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L701
	mov.w	@(2,er7),r5
.L700:
	cmp.w	r5,r2
	bls	.L696
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
.L702:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L702
	bra	.L696
.L698:
	dec #1,r2
	extu.l	er2
.L703:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L703
.L696:
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
	bmi	.L717
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L715
.L716:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L719
.L718:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L718
.L719:
	and.w	r3,r2
	bne	.L714
.L715:
	inc #1,r0
	cmp.w	#16,r0
	bne	.L716
	bra	.L714
.L717:
	sub.w	r0,r0
.L714:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
.L722:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L726
.L725:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L725
.L726:
	btst	#0,r2l
	bne	.L724
	inc #1,r0
	cmp.w	#16,r0
	bne	.L722
.L724:
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
	bmi	.L732
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L730
.L732:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L730:
	mov.l	@er7+,er4
	rts
	.size	___fixunssfsi, .-___fixunssfsi
	.align 1
	.global ___parityhi2
___parityhi2:
	mov.l	er4,@-er7
	mov.w	r0,r1
	sub.w	r3,r3
	sub.w	r2,r2
.L734:
	mov.w	r1,r0
	mov.b	r2l,r4l
	ble	.L737
.L736:
	shlr.w	r0
	add.b	#-1,r4l
	bne	.L736
.L737:
	and.w	#1,r0
	add.w	r0,r3
	inc #1,r2
	cmp.w	#16,r2
	bne	.L734
	and.w	#1,r3
	mov.w	r3,r0
	mov.l	@er7+,er4
	rts
	.size	___parityhi2, .-___parityhi2
	.align 1
	.global ___popcounthi2
___popcounthi2:
	mov.l	er4,@-er7
	mov.w	r0,r1
	sub.w	r3,r3
	sub.w	r2,r2
.L739:
	mov.w	r1,r0
	mov.b	r2l,r4l
	ble	.L742
.L741:
	shlr.w	r0
	add.b	#-1,r4l
	bne	.L741
.L742:
	and.w	#1,r0
	add.w	r0,r3
	inc #1,r2
	cmp.w	#16,r2
	bne	.L739
	mov.w	r3,r0
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er3
	beq	.L746
	sub.l	er0,er0
	bra	.L745
.L747:
	mov.l	er2,er0
.L745:
	mov.l	er3,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er1,er2
	add.l	er0,er2
	shlr.l	er3
	shll.l	er1
	mov.l	er3,er3
	bne	.L747
	mov.l	er2,er0
	rts
.L746:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er2
	beq	.L751
	mov.l	er1,er1
	beq	.L752
	sub.l	er3,er3
.L750:
	mov.l	er1,er0
	and.l	#1,er0
	neg.l	er0
	and.l	er2,er0
	add.l	er0,er3
	shll.l	er2
	shlr.l	er1
	bne	.L750
	bra	.L749
.L751:
	sub.l	er3,er3
	bra	.L749
.L752:
	sub.l	er3,er3
.L749:
	mov.l	er3,er0
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	cmp.l	er0,er1
	blo	.L763
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L756
.L760:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er0
	bhi	.L757
.L756:
	mov.l	er3,er3
	bne	.L764
	sub.l	er4,er4
	bra	.L759
.L757:
	dec #1,r4
	bne	.L755
	bra	.L756
.L763:
	mov.w	#32,r4
	sub.l	er3,er3
	add.b	#1,r3l
.L755:
	mov.l	er1,er1
	bpl	.L760
	bra	.L756
.L764:
	sub.l	er4,er4
.L758:
	cmp.l	er1,er0
	blo	.L761
	sub.l	er1,er0
	or.l	er3,er4
.L761:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L758
.L759:
	mov.w	r2,r2
	bne	.L762
	mov.l	er4,er0
.L762:
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
	bmi	.L770
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L769
	sub.w	r6,r6
.L769:
	mov.w	r6,r0
	bra	.L768
.L770:
	mov.w	#-1,r0
.L768:
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
	bmi	.L774
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L773
	sub.w	r6,r6
.L773:
	mov.w	r6,r0
	bra	.L772
.L774:
	mov.w	#-1,r0
.L772:
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
	bpl	.L782
	neg.w	r1
	mov.w	#1,r5
	bra	.L778
.L782:
	sub.w	r5,r5
.L778:
	mov.w	r1,r1
	beq	.L783
	mov.b	#16,r4l
	sub.w	r0,r0
	bra	.L780
.L785:
	mov.w	r2,r0
.L780:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r0,r2
	shll.w	r3
	shar.w	r1
	beq	.L784
	add.b	#-1,r4l
	bne	.L785
	mov.w	r2,r0
	bra	.L779
.L783:
	sub.w	r0,r0
	bra	.L779
.L784:
	mov.w	r2,r0
.L779:
	mov.w	r5,r5
	beq	.L781
	neg.w	r0
.L781:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L791
	neg.l	er0
	mov.w	#1,r4
	bra	.L788
.L791:
	sub.w	r4,r4
.L788:
	mov.l	er1,er1
	bpl	.L789
	neg.l	er1
	xor	#1,r4l
.L789:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L790
	neg.l	er0
.L790:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L796
	neg.l	er0
	mov.w	#1,r4
	bra	.L793
.L796:
	sub.w	r4,r4
.L793:
	mov.l	er2,er1
	bpl	.L794
	neg.l	er2
	mov.l	er2,er1
.L794:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L795
	neg.l	er0
.L795:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	cmp.w	r0,r1
	blo	.L806
	mov.w	#1,r3
	bra	.L799
.L803:
	shll.w	r1
	shll.w	r3
	cmp.w	r1,r0
	bhi	.L800
.L799:
	mov.w	r3,r3
	bne	.L807
	sub.w	r4,r4
	bra	.L802
.L800:
	dec #1,r4
	bne	.L798
	bra	.L799
.L806:
	mov.w	#16,r4
	mov.w	#1,r3
.L798:
	mov.w	r1,r1
	bpl	.L803
	bra	.L799
.L807:
	sub.w	r4,r4
.L801:
	cmp.w	r1,r0
	blo	.L804
	sub.w	r1,r0
	or.w	r3,r4
.L804:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L801
.L802:
	mov.w	r2,r2
	bne	.L805
	mov.w	r4,r0
.L805:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	cmp.l	er0,er1
	blo	.L819
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L812
.L816:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er0
	bhi	.L813
.L812:
	mov.l	er3,er3
	bne	.L820
	sub.l	er4,er4
	bra	.L815
.L813:
	dec #1,r4
	bne	.L811
	bra	.L812
.L819:
	mov.w	#32,r4
	sub.l	er3,er3
	add.b	#1,r3l
.L811:
	mov.l	er1,er1
	bpl	.L816
	bra	.L812
.L820:
	sub.l	er4,er4
.L814:
	cmp.l	er1,er0
	blo	.L817
	sub.l	er1,er0
	or.l	er3,er4
.L817:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L814
.L815:
	mov.w	r2,r2
	bne	.L818
	mov.l	er4,er0
.L818:
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
	beq	.L824
	sub.l	er3,er3
	mov.l	er3,@(4,er7)
	add.w	#-32,r2
	mov.l	er1,er3
	mov.b	r2l,r2l
	ble	.L829
.L828:
	shll.l	er3
	add.b	#-1,r2l
	bne	.L828
.L829:
	mov.l	er3,@er7
	bra	.L825
.L824:
	mov.w	r2,r2
	beq	.L827
	mov.l	@(12,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L831
.L830:
	shll.l	er0
	add.b	#-1,r1l
	bne	.L830
.L831:
	mov.l	er0,@(4,er7)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L833
.L832:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L832
.L833:
	mov.l	@(8,er7),er0
	mov.b	r2l,r2l
	ble	.L835
.L834:
	shll.l	er0
	add.b	#-1,r2l
	bne	.L834
.L835:
	or.l	er0,er3
	mov.l	er3,@er7
.L825:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L826
.L827:
	mov.l	er0,er2
	mov.l	er1,er3
.L826:
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
	beq	.L837
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@er7
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L842
.L841:
	shar.l	er3
	add.b	#-1,r2l
	bne	.L841
.L842:
	mov.l	er3,@(4,er7)
	bra	.L838
.L837:
	mov.w	r2,r2
	beq	.L840
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L844
.L843:
	shar.l	er0
	add.b	#-1,r1l
	bne	.L843
.L844:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L846
.L845:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L845
.L846:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L848
.L847:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L847
.L848:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L838:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L839
.L840:
	mov.l	er0,er2
	mov.l	er1,er3
.L839:
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
	sub.l	er3,er3
	add.b	#1,r3l
	cmp.l	#65535,er0
	bls	.L884
	sub.l	er3,er3
.L884:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#16,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L889
.L888:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L888
.L889:
	mov.l	er2,er0
	and	#0,r0l
	sub.w	e0,e0
	mov.l	er0,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L885
	sub.l	er0,er0
.L885:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#8,r4
	sub.w	r0,r4
	mov.b	r4l,r4l
	ble	.L891
.L890:
	shlr.l	er2
	add.b	#-1,r4l
	bne	.L890
.L891:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#240,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L886
	sub.l	er0,er0
.L886:
	shll.l	er0
	shll.l	er0
	mov.w	#4,r4
	sub.w	r0,r4
	mov.b	r4l,r4l
	ble	.L893
.L892:
	shlr.l	er2
	add.b	#-1,r4l
	bne	.L892
.L893:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#12,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L887
	sub.l	er0,er0
.L887:
	shll.l	er0
	mov.w	#2,r1
	sub.w	r0,r1
	mov.b	r1l,r1l
	ble	.L895
.L894:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L894
.L895:
	mov.l	er2,er4
	shlr.l	er2
	and.w	#1,r2
	sub.l	er1,er1
	add.b	#2,r1l
	sub.l	er4,er1
	dec #1,r2
	and.w	r1,r2
	add.l	er3,er0
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
	blt	.L898
	cmp.l	er2,er4
	bgt	.L899
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L900
	bhi	.L901
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L897
.L898:
	sub.l	er0,er0
	bra	.L897
.L899:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L897
.L900:
	sub.l	er0,er0
	bra	.L897
.L901:
	sub.l	er0,er0
	add.b	#2,r0l
.L897:
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
	sub.l	er3,er3
	add.b	#1,r3l
	mov.w	r0,r0
	beq	.L904
	sub.l	er3,er3
.L904:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L909
.L908:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L908
.L909:
	sub.l	er0,er0
	add.b	#1,r0l
	mov.b	r2l,r2l
	beq	.L905
	sub.l	er0,er0
.L905:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L911
.L910:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L910
.L911:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#15,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L906
	sub.l	er0,er0
.L906:
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L913
.L912:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L912
.L913:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#3,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L907
	sub.l	er0,er0
.L907:
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L915
.L914:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L914
.L915:
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
	beq	.L917
	sub.l	er3,er3
	mov.l	er3,@er7
	add.w	#-32,r2
	mov.l	er0,er3
	mov.b	r2l,r2l
	ble	.L922
.L921:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L921
.L922:
	mov.l	er3,@(4,er7)
	bra	.L918
.L917:
	mov.w	r2,r2
	beq	.L920
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L924
.L923:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L923
.L924:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L926
.L925:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L925
.L926:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L928
.L927:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L927
.L928:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L918:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L919
.L920:
	mov.l	er0,er2
	mov.l	er1,er3
.L919:
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
	mov.l	er0,er5
	mov.l	er1,er6
	mov.l	er0,er2
	sub.w	e2,e2
	mov.l	er1,er3
	sub.w	e3,e3
	mov.l	er3,@(4,er7)
	mov.l	er3,er1
	mov.l	er2,@er7
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er4
	mov.w	e4,r4
	extu.l	er4
	mov.l	er0,er2
	sub.w	e2,e2
	mov.l	er2,@(8,er7)
	mov.w	e5,r5
	extu.l	er5
	mov.l	@(4,er7),er1
	mov.l	er5,er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	er4,er1
	mov.w	e1,r1
	extu.l	er1
	mov.l	er1,@(12,er7)
	extu.l	er4
	mov.w	e6,r6
	extu.l	er6
	mov.l	er6,@(4,er7)
	mov.l	er6,er1
	mov.l	@er7,er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	er4,er0
	mov.w	r0,e0
	sub.w	r0,r0
	mov.l	er0,er6
	mov.l	@(8,er7),er2
	add.l	er2,er6
	mov.w	e4,r4
	extu.l	er4
	mov.l	@(12,er7),er2
	add.l	er2,er4
	mov.l	@(4,er7),er1
	mov.l	er5,er0
	jsr	@___mulsi3
	add.l	er0,er4
	mov.l	er4,er0
	mov.l	er6,er1
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
	mov.l	@(4,er7),er3
	mov.l	er4,er0
	mov.l	er3,er1
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
	bne	.L932
	sub.l	er6,er6
.L932:
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
	ble	.L935
.L934:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L934
.L935:
	and.w	#1,r0
	add.l	#8,er7
	mov.l	@er7+,er4
	rts
	.size	___paritydi2, .-___paritydi2
	.align 1
	.global ___paritysi2
___paritysi2:
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
	ble	.L938
.L937:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L937
.L938:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er1,er4
	shlr.l	er4
	mov.l	er4,er1
	rotxl.l	er1
	bor	#0,r0l
	rotxr.l	er1
	mov.l	er0,er4
	shlr.l	er4
	mov.l	er4,er6
	and.l	#1431655765,er6
	mov.l	er6,er4
	mov.l	er1,er0
	and.l	#1431655765,er0
	mov.l	er0,er5
	mov.l	er3,er0
	sub.l	er5,er0
	mov.l	er0,@(4,er7)
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(4,er7),er1
	cmp.l	er3,er1
	bhi	.L940
	sub.l	er0,er0
.L940:
	sub.l	er4,er2
	mov.l	er2,er1
	sub.l	er0,er1
	mov.l	er1,er2
	mov.l	@(4,er7),er3
	mov.l	er1,er4
	sub.w	e4,e4
	rotr.l	er4
	rotr.l	er4
	sub.w	r4,r4
	mov.l	er3,er5
	shlr.l	er5
	shlr.l	er5
	mov.l	er5,er1
	or.l	er4,er1
	mov.l	er2,er4
	shlr.l	er4
	shlr.l	er4
	mov.l	er4,er6
	and.l	#858993459,er6
	mov.l	er6,er4
	mov.l	er1,er0
	and.l	#858993459,er0
	mov.l	er2,er6
	and.l	#858993459,er6
	mov.l	er3,er2
	and.l	#858993459,er2
	mov.l	er2,er1
	mov.l	er0,er2
	add.l	er1,er2
	mov.l	er2,@(4,er7)
	cmp.l	er0,er2
	xor.l	er2,er2
	bst	#0,r2l
	mov.l	er4,er3
	add.l	er6,er3
	add.l	er3,er2
	mov.l	er2,@er7
	mov.l	@(4,er7),er3
	mov.l	er2,er4
	sub.w	e4,e4
	rotr.l	er4
	rotr.l	er4
	rotr.l	er4
	rotr.l	er4
	sub.w	r4,r4
	mov.l	er3,er5
	shlr.l	er5
	shlr.l	er5
	shlr.l	er5
	shlr.l	er5
	mov.l	er5,er1
	or.l	er4,er1
	mov.l	er2,er4
	shlr.l	er4
	shlr.l	er4
	shlr.l	er4
	shlr.l	er4
	mov.l	er4,er0
	mov.l	er1,er6
	add.l	er3,er6
	mov.l	er6,er5
	cmp.l	er1,er6
	xor.l	er6,er6
	bst	#0,r6l
	add.l	er2,er0
	add.l	er0,er6
	mov.l	er6,er4
	and.l	#252645135,er4
	mov.l	er5,er0
	and.l	#252645135,er0
	mov.l	er0,er3
	mov.l	er4,er0
	add.l	er3,er0
	mov.l	er0,er2
	mov.l	er0,er3
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
.L948:
	btst	#0,r5l
	beq	.L945
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L945:
	mov.w	r5,r2
	bpl	.L946
	inc #1,r2
.L946:
	shar.w	r2
	mov.w	r2,r5
	beq	.L947
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L948
.L947:
	mov.w	@(2,er7),r2
	beq	.L950
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L949
.L950:
	mov.l	er6,er0
.L949:
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
.L955:
	btst	#0,r5l
	beq	.L952
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L952:
	mov.w	r5,r2
	bpl	.L953
	inc #1,r2
.L953:
	shar.w	r2
	mov.w	r2,r5
	beq	.L954
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L955
.L954:
	mov.w	@(2,er7),r2
	beq	.L957
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L956
.L957:
	mov.l	er6,er0
.L956:
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
	blo	.L960
	cmp.l	er2,er4
	bhi	.L961
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L962
	bhi	.L963
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L959
.L960:
	sub.l	er0,er0
	bra	.L959
.L961:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L959
.L962:
	sub.l	er0,er0
	bra	.L959
.L963:
	sub.l	er0,er0
	add.b	#2,r0l
.L959:
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
