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
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
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
	cmp.w	r1,r3
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
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L31
	jsr	@_memcpy
	mov.l	er0,er3
.L31:
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
	bra	.L33
.L35:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L32
.L33:
	cmp.l	er4,er2
	bne	.L35
	sub.l	er0,er0
.L32:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er2,er2
	beq	.L40
	add.l	er0,er2
	mov.l	er0,er3
.L38:
	mov.b	r1l,@er3
	adds	#1,er3
	cmp.l	er3,er2
	bne	.L38
.L40:
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L45
.L43:
	adds	#1,er1
	adds	#1,er0
.L45:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L43
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	bne	.L47
	rts
.L49:
	adds	#1,er0
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	beq	.L52
.L47:
	cmp.w	r1,r2
	bne	.L49
.L52:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L56:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L58
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L56
	sub.l	er0,er0
.L58:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L64
.L62:
	adds	#1,er0
	adds	#1,er1
.L64:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	bne	.L61
	mov.b	r2l,r2l
	bne	.L62
.L61:
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
	beq	.L66
.L67:
	adds	#1,er0
	mov.b	@er0,r3l
	bne	.L67
.L66:
	sub.l	er2,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L75
	mov.b	@er0,r3l
	beq	.L72
	subs	#1,er2
	add.l	er0,er2
	bra	.L73
.L74:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r3l
	beq	.L72
.L73:
	mov.b	@er1,r4l
	beq	.L72
	cmp.l	er2,er0
	beq	.L72
	cmp.b	r3l,r4l
	beq	.L74
.L72:
	mov.b	r3l,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L70
.L75:
	sub.w	r0,r0
.L70:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L80
	and	#254,r2l
	add.l	er0,er2
.L78:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L78
.L80:
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
	bls	.L83
	sub.w	r0,r0
.L83:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L85
	sub.w	r2,r2
.L85:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L89
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L88
	sub.w	r2,r2
.L88:
	mov.w	r2,r0
	rts
.L89:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L93
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L92
	sub.w	r2,r2
.L92:
	mov.w	r2,r0
	rts
.L93:
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
	bls	.L96
	sub.w	r0,r0
.L96:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L99
	sub.w	r0,r0
.L99:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L102
	sub.w	r0,r0
.L102:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L105
	sub.w	r0,r0
.L105:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L109
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L108
	sub.w	r2,r2
.L108:
	mov.w	r2,r0
	rts
.L109:
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
	bls	.L112
	sub.w	r0,r0
.L112:
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
	bls	.L118
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L118
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L115
	sub.w	r2,r2
.L115:
	mov.w	r2,r0
	rts
.L118:
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
	bls	.L121
	sub.w	r0,r0
.L121:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L123
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L130
	sub.w	r0,r0
	rts
.L123:
	cmp.w	#8231,r0
	bls	.L129
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L129
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L129
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L126
	sub.w	r2,r2
.L126:
	mov.w	r2,r0
	rts
.L129:
	mov.w	#1,r0
.L130:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L135
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L136
	sub.w	r0,r0
	rts
.L135:
	mov.w	#1,r0
.L136:
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
	bne	.L142
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L143
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L146
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L139
.L142:
	mov.l	er4,er0
	bra	.L139
.L143:
	mov.l	er5,er0
	bra	.L139
.L146:
	sub.l	er0,er0
.L139:
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
	bne	.L150
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L151
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L154
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L147
.L150:
	mov.l	er4,er0
	bra	.L147
.L151:
	mov.l	er5,er0
	bra	.L147
.L154:
	sub.l	er0,er0
.L147:
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
	bne	.L163
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L162
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L157
	mov.w	r2,r2
	bne	.L163
	bra	.L162
.L157:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L163
	mov.l	er5,er4
	bra	.L163
.L162:
	mov.l	er5,er0
	bra	.L155
.L163:
	mov.l	er4,er0
.L155:
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
	bne	.L172
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L171
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L166
	mov.w	r2,r2
	bne	.L172
	bra	.L171
.L166:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L172
	mov.l	er5,er4
	bra	.L172
.L171:
	mov.l	er5,er0
	bra	.L164
.L172:
	mov.l	er4,er0
.L164:
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
	bne	.L181
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L180
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L175
	mov.w	r2,r2
	bne	.L181
	bra	.L180
.L175:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L181
	mov.l	er5,er4
	bra	.L181
.L180:
	mov.l	er5,er0
	bra	.L173
.L181:
	mov.l	er4,er0
.L173:
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
	bne	.L188
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L190
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L184
	mov.w	r2,r2
	bne	.L190
	bra	.L188
.L184:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L190
	mov.l	er5,er4
	bra	.L190
.L188:
	mov.l	er5,er0
	bra	.L182
.L190:
	mov.l	er4,er0
.L182:
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
	bne	.L197
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L199
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L193
	mov.w	r2,r2
	bne	.L199
	bra	.L197
.L193:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L199
	mov.l	er5,er4
	bra	.L199
.L197:
	mov.l	er5,er0
	bra	.L191
.L199:
	mov.l	er4,er0
.L191:
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
	bne	.L206
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L208
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L202
	mov.w	r2,r2
	bne	.L208
	bra	.L206
.L202:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L208
	mov.l	er5,er4
	bra	.L208
.L206:
	mov.l	er5,er0
	bra	.L200
.L208:
	mov.l	er4,er0
.L200:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L210
	mov.l	#_digits,er1
.L211:
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
	bne	.L211
.L210:
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
	blo	.L216
	sub.l	er6,er6
.L216:
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
	bne	.L218
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L218:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L220
	mov.l	er0,@(4,er2)
.L220:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L223
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L223:
	mov.l	@(4,er0),er2
	beq	.L225
	mov.l	@er0,er3
	mov.l	er3,@er2
.L225:
	rts
	.size	_remque, .-_remque
	.align 1
	.global _lsearch
_lsearch:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#20,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@(12,er7)
	mov.l	er2,er3
	mov.l	@er2,er5
	beq	.L227
	sub.l	er6,er6
	mov.l	er5,@(8,er7)
	mov.l	er1,er5
	mov.l	er2,@(16,er7)
	mov.l	@(40,er7),er4
.L229:
	mov.l	er5,@er7
	mov.l	er5,er1
	mov.l	@(4,er7),er0
	jsr	@er4
	mov.w	r0,r0
	beq	.L226
	adds	#1,er6
	mov.l	@(36,er7),er2
	add.l	er2,er5
	mov.l	@(8,er7),er2
	cmp.l	er6,er2
	bne	.L229
	mov.l	er2,er5
	mov.l	@(16,er7),er3
.L227:
	mov.l	er5,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	er5,er1
	mov.l	@(36,er7),er0
	jsr	@___mulsi3
	mov.l	@(36,er7),er2
	mov.l	@(4,er7),er1
	mov.l	@(12,er7),er3
	add.l	er3,er0
	jsr	@_memcpy
	mov.l	er0,@er7
.L226:
	mov.l	@er7,er0
	add.l	#20,er7
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
	mov.l	er0,@(4,er7)
	mov.l	@(32,er7),er5
	mov.l	@er2,er3
	beq	.L232
	sub.l	er4,er4
	mov.l	er3,@(8,er7)
	mov.l	er4,er6
	mov.l	er1,er4
.L234:
	mov.l	er4,@er7
	mov.l	er4,er1
	mov.l	@(4,er7),er0
	jsr	@er5
	mov.w	r0,r0
	beq	.L231
	adds	#1,er6
	mov.l	@(28,er7),er2
	add.l	er2,er4
	mov.l	@(8,er7),er2
	cmp.l	er6,er2
	bne	.L234
.L232:
	sub.l	er2,er2
	mov.l	er2,@er7
.L231:
	mov.l	@er7,er0
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
	bpl	.L238
	neg.w	r0
.L238:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	bra	.L240
.L241:
	adds	#1,er4
.L240:
	mov.b	@er4,r5l
	mov.b	r5l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L241
	cmp.b	#43,r5l
	beq	.L247
	cmp.b	#45,r5l
	bne	.L248
	mov.w	#1,r5
	bra	.L242
.L247:
	sub.w	r5,r5
.L242:
	adds	#1,er4
	bra	.L243
.L244:
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
	bls	.L244
	bra	.L245
.L248:
	sub.w	r5,r5
.L243:
	mov.b	@er4,r2l
	extu.w	r2
	mov.b	r2l,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bhi	.L245
	mov.w	#10,r1
	bra	.L244
.L245:
	mov.w	r5,r5
	bne	.L239
	neg.w	r0
.L239:
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
	mov.l	er0,er6
	bra	.L252
.L253:
	adds	#1,er6
.L252:
	mov.b	@er6,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r5
	bne	.L253
	cmp.b	#43,r4l
	beq	.L254
	cmp.b	#45,r4l
	bne	.L255
	mov.w	#1,r5
.L254:
	adds	#1,er6
	bra	.L255
.L256:
	sub.l	er1,er1
	add.b	#10,r1l
	jsr	@___mulsi3
	adds	#1,er6
	add.w	#-48,r4
	exts.l	er4
	sub.l	er4,er0
	mov.b	@er6,r4l
	extu.w	r4
	mov.b	r4l,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L256
	bra	.L257
.L255:
	mov.b	@er6,r4l
	extu.w	r4
	mov.b	r4l,r3l
	extu.w	r3
	add.w	#-48,r3
	sub.l	er0,er0
	cmp.w	#9,r3
	bls	.L256
.L257:
	mov.w	r5,r5
	bne	.L251
	neg.l	er0
.L251:
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
	bra	.L262
.L263:
	adds	#1,er5
.L262:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L263
	mov.w	r0,r3
	cmp.b	#43,r4l
	beq	.L264
	cmp.b	#45,r4l
	bne	.L265:16
	mov.w	#1,r3
.L264:
	adds	#1,er5
	bra	.L265:16
.L271:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
	mov.w	r3,@(18,er7)
.L267:
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
	adds	#1,er5
	add.w	#-48,r4
	exts.l	er4
	mov.l	er4,@(12,er7)
	shll	e4
	subx	r4l,r4l
	exts.w	r4
	exts.l	er4
	mov.l	er4,@(8,er7)
	mov.l	er1,er4
	mov.l	@(12,er7),er6
	sub.l	er6,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	bhi	.L266
	sub.l	er4,er4
.L266:
	mov.l	@(8,er7),er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L267:16
	mov.w	@(18,er7),r3
	bra	.L268
.L265:
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L271:16
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L268:
	mov.w	r3,r3
	bne	.L261
	sub.l	er0,er0
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er3,er3
	bne	.L270
	sub.l	er4,er4
.L270:
	mov.l	@er7,er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
.L261:
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
	mov.l	er0,@(4,er7)
	mov.l	er1,er5
	mov.l	er2,er2
	beq	.L274
	mov.l	er2,er6
.L277:
	mov.l	er6,er4
	shlr.l	er4
	mov.l	@(24,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er5,er0
	mov.l	er0,er1
	mov.l	er0,@er7
	mov.l	@(4,er7),er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	bmi	.L278
	mov.l	@er7,er1
	mov.w	r0,r0
	ble	.L280
	mov.l	@(24,er7),er5
	add.l	er1,er5
	mov.l	er6,er2
	subs	#1,er2
	sub.l	er4,er2
	mov.l	er2,er6
	bra	.L275
.L278:
	mov.l	er4,er6
.L275:
	mov.l	er6,er6
	bne	.L277
.L274:
	sub.l	er6,er6
	bra	.L273
.L280:
	mov.l	er1,er6
.L273:
	mov.l	er6,er0
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
	mov.l	er0,@er7
	mov.l	er1,er4
	mov.w	r2,r5
	beq	.L282
	mov.w	r5,r6
.L285:
	mov.l	@(20,er7),er1
	mov.w	r6,r0
	shar.w	r0
	exts.l	er0
	jsr	@___mulsi3
	add.l	er4,er0
	mov.l	er0,er5
	mov.l	@(28,er7),er2
	mov.l	er0,er1
	mov.l	@er7,er0
	mov.l	@(24,er7),er3
	jsr	@er3
	mov.w	r0,r0
	beq	.L287
	ble	.L284
	mov.l	@(20,er7),er4
	add.l	er5,er4
	dec #1,r6
.L284:
	shar.w	r6
	bne	.L285
.L282:
	sub.l	er6,er6
	bra	.L281
.L287:
	mov.l	er5,er6
.L281:
	mov.l	er6,er0
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
	bpl	.L290
	sub.l	er0,er0
	mov.l	er5,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L292
	sub.l	er6,er6
.L292:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L290:
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
	mov.l	er0,er4
	mov.l	er1,@(8,er7)
	mov.l	er2,@(12,er7)
	mov.l	@(32,er7),er5
	mov.l	@(36,er7),er6
	mov.l	er5,@er7
	mov.l	er6,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er2,@er4
	mov.l	er1,@(4,er4)
	mov.l	er5,@er7
	mov.l	er6,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	er2,@(8,er4)
	mov.l	er1,@(12,er4)
	mov.l	er4,er0
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
	bpl	.L296
	neg.l	er0
.L296:
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
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er0,er0
	bpl	.L299
	sub.l	er0,er0
	mov.l	er5,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L301
	sub.l	er6,er6
.L301:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L299:
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
	mov.l	er0,er4
	mov.l	er1,@(8,er7)
	mov.l	er2,@(12,er7)
	mov.l	@(32,er7),er5
	mov.l	@(36,er7),er6
	mov.l	er5,@er7
	mov.l	er6,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er2,@er4
	mov.l	er1,@(4,er4)
	mov.l	er5,@er7
	mov.l	er6,@(4,er7)
	mov.l	@(8,er7),er0
	mov.l	@(12,er7),er1
	jsr	@___moddi3
	mov.l	er0,er2
	mov.l	er2,@(8,er4)
	mov.l	er1,@(12,er4)
	mov.l	er4,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_lldiv, .-_lldiv
	.align 1
	.global _wcschr
_wcschr:
	bra	.L310
.L306:
	adds	#2,er0
.L310:
	mov.w	@er0,r2
	beq	.L305
	cmp.w	r2,r1
	bne	.L306
.L305:
	mov.w	r2,r2
	bne	.L311
	sub.l	er0,er0
.L311:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L320
.L315:
	adds	#2,er0
	adds	#2,er1
.L320:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L314
	mov.w	r2,r2
	beq	.L314
	mov.w	r3,r3
	bne	.L315
.L314:
	cmp.w	r3,r2
	blo	.L318
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L321
	sub.w	r0,r0
	rts
.L318:
	mov.w	#-1,r0
.L321:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L324:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L324
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L329
	mov.l	er0,er2
.L328:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L328
	bra	.L327
.L329:
	mov.l	er0,er2
.L327:
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
	bne	.L332
	bra	.L333
.L334:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L333
.L332:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L333
	mov.w	r3,r3
	bne	.L334
.L333:
	mov.l	er2,er2
	beq	.L337
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L338
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L331
.L337:
	sub.w	r0,r0
	bra	.L331
.L338:
	mov.w	#-1,r0
.L331:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L347
.L343:
	subs	#1,er2
	adds	#2,er0
.L347:
	mov.l	er2,er2
	beq	.L342
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L343
.L342:
	mov.l	er2,er2
	bne	.L348
	sub.l	er0,er0
.L348:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L350
	bra	.L351
.L352:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L351
.L350:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L352
.L351:
	mov.l	er2,er2
	beq	.L355
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L356
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L349
.L355:
	sub.w	r0,r0
	bra	.L349
.L356:
	mov.w	#-1,r0
.L349:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L359
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L359:
	mov.l	er3,er0
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	cmp.l	er1,er0
	beq	.L361
	mov.l	er0,@er7
	mov.l	er1,er5
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er6
	shll.l	er6
	mov.l	er0,er4
	sub.l	er1,er4
	cmp.l	er6,er4
	blo	.L362
	mov.l	er2,er2
	bne	.L368
	bra	.L361
.L362:
	mov.l	er2,er2
	beq	.L361
	shll.l	er3
.L364:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L364
	bra	.L361
.L368:
	mov.l	@er7,er4
.L363:
	mov.w	@er5+,r2
	mov.w	r2,@er4
	subs	#1,er3
	adds	#2,er4
	cmp.l	#-1,er3
	bne	.L363
.L361:
	adds	#4,er7
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
	beq	.L373
	mov.l	er0,er2
.L371:
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L371
.L373:
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L375
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L381
.L377:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L377
	rts
.L375:
	beq	.L381
	mov.l	er2,er2
	beq	.L381
	mov.l	er0,er3
	add.l	er2,er0
.L378:
	mov.b	@er3+,r2l
	mov.b	r2l,@er1
	adds	#1,er1
	cmp.l	er0,er3
	bne	.L378
.L381:
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
	bmi	.L384
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L389
.L388:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L388
.L389:
	bra	.L385
.L384:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L391
.L390:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L390
.L391:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L393
.L392:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L392
.L393:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L395
.L394:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L394
.L395:
.L385:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L386
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L397
.L396:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L396
.L397:
	bra	.L387
.L386:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L399
.L398:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L398
.L399:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L401
.L400:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L400
.L401:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L403
.L402:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L402
.L403:
.L387:
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
	bmi	.L405
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L410
.L409:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L409
.L410:
	bra	.L406
.L405:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L412
.L411:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L411
.L412:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L414
.L413:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L413
.L414:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L416
.L415:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L415
.L416:
.L406:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L407
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L418
.L417:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L417
.L418:
	bra	.L408
.L407:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L420
.L419:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L419
.L420:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L422
.L421:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L421
.L422:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L424
.L423:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L423
.L424:
.L408:
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
	ble	.L429
.L426:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L426
.L429:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L434
.L431:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L431
.L434:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L439
.L436:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L436
.L439:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L444
.L441:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L441
.L444:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L449
.L446:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L446
.L449:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L454
.L451:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L451
.L454:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L459
.L456:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L456
.L459:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L464
.L461:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L461
.L464:
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
	.size	_bswap_64, .-_bswap_64
	.align 1
	.global _ffs
_ffs:
	sub.w	r2,r2
.L503:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L506
.L505:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L505
.L506:
	inc #1,r2
	btst	#0,r3l
	beq	.L501
	mov.w	r2,r0
	rts
.L501:
	cmp.w	#16,r2
	bne	.L503
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L510
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L512
	mov.w	#1,r0
.L509:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L509
	rts
.L510:
	sub.w	r0,r0
.L512:
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
	bmi	.L517
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L516
	sub.w	r5,r5
.L516:
	mov.w	r5,r0
	bra	.L514
.L517:
	mov.w	#1,r0
.L514:
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
	bmi	.L521
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L520
	sub.w	r5,r5
.L520:
	mov.w	r5,r0
	bra	.L518
.L521:
	mov.w	#1,r0
.L518:
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
	bmi	.L525
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L524
	sub.w	r5,r5
.L524:
	mov.w	r5,r0
	bra	.L522
.L525:
	mov.w	#1,r0
.L522:
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
	bne	.L528
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L528
	mov.w	r4,r4
	bpl	.L534
	mov.l	#1056964608,er1
	bra	.L533
.L534:
	mov.l	#1073741824,er1
.L533:
	btst	#0,r4l
	beq	.L531
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L531:
	mov.w	r4,r2
	bpl	.L532
	inc #1,r2
.L532:
	shar.w	r2
	mov.w	r2,r4
	beq	.L528
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L533
.L528:
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
	bne	.L537
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L537
	mov.w	r4,r4
	bpl	.L543
	mov.l	#1056964608,er1
	bra	.L542
.L543:
	mov.l	#1073741824,er1
.L542:
	btst	#0,r4l
	beq	.L540
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L540:
	mov.w	r4,r2
	bpl	.L541
	inc #1,r2
.L541:
	shar.w	r2
	mov.w	r2,r4
	beq	.L537
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L542
.L537:
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
	bne	.L546
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L546
	mov.w	r4,r4
	bpl	.L552
	mov.l	#1056964608,er1
	bra	.L551
.L552:
	mov.l	#1073741824,er1
.L551:
	btst	#0,r4l
	beq	.L549
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L549:
	mov.w	r4,r2
	bpl	.L550
	inc #1,r2
.L550:
	shar.w	r2
	mov.w	r2,r4
	beq	.L546
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L551
.L546:
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
	beq	.L555
	mov.l	er1,er5
	mov.l	er0,er3
	add.l	er2,er1
.L556:
	mov.b	@er5+,r4l
	mov.b	@er3,r2l
	xor	r2l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er1,er5
	bne	.L556
.L555:
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
	bne	.L559
	bra	.L560
.L561:
	adds	#1,er6
	adds	#1,er0
	dec.l	#1,er4
	beq	.L560
.L559:
	mov.b	@er6,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L561
.L560:
	mov.l	er4,er4
	bne	.L562
	mov.b	r4l,@er0
.L562:
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
	bne	.L565
	rts
.L567:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L565
	rts
.L565:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L567
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L571
	bra	.L575
.L573:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L572
.L574:
	mov.b	@er2,r3l
	bne	.L573
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L575
.L571:
	mov.l	er1,er2
	bra	.L574
.L575:
	sub.l	er0,er0
.L572:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L579:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r1,r4
	bne	.L578
	mov.l	er2,er0
.L578:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L579
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
	beq	.L582
	mov.b	@er4,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L584
.L585:
	mov.l	er5,er2
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L582
	adds	#1,er6
.L584:
	mov.w	@(2,er7),r1
	mov.l	er6,er0
	jsr	@_strchr
	mov.l	er0,er6
	bne	.L585
.L582:
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
	bpl	.L588
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L590
.L588:
	sub.l	er6,er6
	mov.l	er6,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L591
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L591
.L590:
	xor.w	#32768,e4
.L591:
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
	mov.l	er1,er5
	mov.l	@(28,er7),er3
	beq	.L600
	cmp.l	er3,er1
	blo	.L602
	sub.l	er3,er5
	add.l	er0,er5
	cmp.l	er5,er0
	bhi	.L602
	mov.l	er2,er1
	mov.b	@er1+,r6l
	subs	#1,er3
	mov.l	er3,@(4,er7)
	mov.l	er1,@(8,er7)
.L599:
	mov.b	@er4,r2l
	mov.l	er4,@er7
	adds	#1,er4
	cmp.b	r6l,r2l
	bne	.L598
	mov.l	@(4,er7),er2
	mov.l	@(8,er7),er1
	mov.l	er4,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L604
.L598:
	cmp.l	er5,er4
	bls	.L599
	bra	.L602
.L600:
	mov.l	er0,er3
	bra	.L596
.L602:
	sub.l	er3,er3
	bra	.L596
.L604:
	mov.l	@er7,er3
.L596:
	mov.l	er3,er0
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
	bpl	.L626
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L607
.L626:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L607:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L627
	sub.w	r6,r6
	mov.l	#1065353216,er5
.L611:
	inc #1,r6
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L611
	bra	.L612
.L627:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L628
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	sub.w	r6,r6
	mov.l	er0,er0
	beq	.L612
	mov.l	#1056964608,er5
.L615:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L615
	bra	.L612
.L628:
	sub.w	r6,r6
.L612:
	mov.l	@(4,er7),er2
	mov.w	r6,@er2
	mov.w	@(2,er7),r2
	beq	.L616
	xor.w	#32768,e4
.L616:
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
	beq	.L637:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L636:
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
	bne	.L633
	sub.l	er6,er6
.L633:
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
	bne	.L636:16
	bra	.L630
.L637:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L630:
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
	blo	.L647
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L641
.L644:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L641
	dec #1,r0
	bne	.L640
	sub.l	er3,er3
.L641:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L642
	bra	.L643
.L647:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L640:
	mov.l	er1,er1
	bpl	.L644
	bra	.L641
.L642:
	cmp.l	er1,er4
	blo	.L645
	sub.l	er1,er4
	or.l	er3,er0
.L645:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L642
.L643:
	mov.l	er2,er2
	beq	.L639
	mov.l	er4,er0
.L639:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L654
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L654:
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
	bne	.L659
	cmp.l	er3,er1
	beq	.L660
.L659:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L655
.L660:
	mov.w	#63,r0
.L655:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	beq	.L664
	sub.w	r0,r0
.L663:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.w	r1,r3
	add.w	r3,r0
	shlr.w	r2
	shll.w	r1
	mov.w	r2,r2
	bne	.L663
	rts
.L664:
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
	bhs	.L667
.L670:
	mov.w	r6,r6
	bne	.L668
	bra	.L669
.L667:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L670
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L671
	bra	.L666:16
.L668:
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L673:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L673
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L669:
	cmp.w	r5,r2
	bls	.L666
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
.L674:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L674
	bra	.L666
.L671:
	mov.w	r3,r2
	extu.l	er2
.L675:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L675
.L666:
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
	bhs	.L680
.L683:
	mov.w	r6,r6
	bne	.L681
	bra	.L682
.L680:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L683
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L684
	bra	.L679
.L681:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L686:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L686
.L682:
	btst	#0,r2l
	beq	.L679
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L679
.L684:
	mov.w	r3,r2
	extu.l	er2
.L687:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L687
.L679:
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
	bhs	.L691
.L694:
	mov.w	r6,r6
	bne	.L692
	bra	.L693
.L691:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L694
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L695
	bra	.L690
.L692:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L697:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L697
	mov.w	@(2,er7),r5
.L693:
	cmp.w	r5,r2
	bls	.L690
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
.L698:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L698
	bra	.L690
.L695:
	mov.w	r3,r2
	extu.l	er2
.L699:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L699
.L690:
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
	bmi	.L713
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L711
.L712:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L715
.L714:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L714
.L715:
	and.w	r3,r2
	bne	.L709
.L711:
	inc #1,r0
	cmp.w	#16,r0
	bne	.L712
	bra	.L709
.L713:
	sub.w	r0,r0
.L709:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
.L718:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L722
.L721:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L721
.L722:
	btst	#0,r2l
	bne	.L720
	inc #1,r0
	cmp.w	#16,r0
	bne	.L718
.L720:
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
	bmi	.L728
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L723
.L728:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L723:
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
.L735:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L738
.L737:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L737
.L738:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L735
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L742
	sub.l	er0,er0
.L741:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L741
	rts
.L742:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L747
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L750
.L746:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L746
	rts
.L747:
	sub.l	er0,er0
	rts
.L750:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L760
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L754
.L757:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L754
	dec #1,r0
	bne	.L753
	sub.l	er3,er3
.L754:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L755
	bra	.L756
.L760:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L753:
	mov.l	er1,er1
	bpl	.L757
	bra	.L754
.L755:
	cmp.l	er1,er4
	blo	.L758
	sub.l	er1,er4
	or.l	er3,er0
.L758:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L755
.L756:
	mov.w	r2,r2
	beq	.L752
	mov.l	er4,er0
.L752:
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
	bmi	.L768
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L767
	sub.w	r5,r5
.L767:
	mov.w	r5,r0
	bra	.L765
.L768:
	mov.w	#-1,r0
.L765:
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
	bmi	.L772
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L771
	sub.w	r5,r5
.L771:
	mov.w	r5,r0
	bra	.L769
.L772:
	mov.w	#-1,r0
.L769:
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
	bpl	.L780
	neg.w	r1
	mov.w	#1,r5
	bra	.L776
.L780:
	sub.w	r5,r5
.L776:
	mov.w	r1,r1
	beq	.L781
	mov.b	#16,r4l
	sub.w	r0,r0
.L778:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r3
	shar.w	r1
	beq	.L777
	add.b	#-1,r4l
	bne	.L778
	bra	.L777
.L781:
	sub.w	r0,r0
.L777:
	mov.w	r5,r5
	beq	.L775
	neg.w	r0
.L775:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L787
	neg.l	er0
	mov.w	#1,r4
	bra	.L784
.L787:
	sub.w	r4,r4
.L784:
	mov.l	er1,er1
	bpl	.L785
	neg.l	er1
	xor	#1,r4l
.L785:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L783
	neg.l	er0
.L783:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L792
	neg.l	er0
	mov.w	#1,r4
	bra	.L789
.L792:
	sub.w	r4,r4
.L789:
	mov.l	er2,er1
	bpl	.L790
	neg.l	er2
	mov.l	er2,er1
.L790:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L788
	neg.l	er0
.L788:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	r0,r4
	cmp.w	r0,r1
	blo	.L801
	mov.w	#1,r3
	bra	.L795
.L798:
	shll.w	r1
	shll.w	r0
	cmp.w	r1,r4
	bls	.L802
	dec #1,r3
	bne	.L794
	bra	.L795
.L802:
	mov.w	r0,r3
.L795:
	sub.w	r0,r0
	mov.w	r3,r3
	bne	.L796
	bra	.L797
.L801:
	mov.w	#16,r3
	mov.w	#1,r0
.L794:
	mov.w	r1,r1
	bpl	.L798
	bra	.L802
.L796:
	cmp.w	r1,r4
	blo	.L799
	sub.w	r1,r4
	or.w	r3,r0
.L799:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L796
.L797:
	mov.w	r2,r2
	beq	.L793
	mov.w	r4,r0
.L793:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L815
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L809
.L812:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L809
	dec #1,r0
	bne	.L808
	sub.l	er3,er3
.L809:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L810
	bra	.L811
.L815:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L808:
	mov.l	er1,er1
	bpl	.L812
	bra	.L809
.L810:
	cmp.l	er1,er4
	blo	.L813
	sub.l	er1,er4
	or.l	er3,er0
.L813:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L810
.L811:
	mov.w	r2,r2
	beq	.L807
	mov.l	er4,er0
.L807:
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
	beq	.L821
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L826
.L825:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L825
.L826:
	sub.l	er0,er0
	bra	.L822
.L821:
	mov.w	r2,r2
	beq	.L824
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L828
.L827:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L827
.L828:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L830
.L829:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L829
.L830:
	mov.b	r2l,r2l
	ble	.L832
.L831:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L831
.L832:
	or.l	er3,er4
.L822:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L820
.L824:
	mov.l	er0,er2
	mov.l	er1,er3
.L820:
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
	beq	.L834
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L839
.L838:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L838
.L839:
	bra	.L835
.L834:
	mov.w	r2,r2
	beq	.L837
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L841
.L840:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L840
.L841:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L843
.L842:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L842
.L843:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L845
.L844:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L844
.L845:
	or.l	er3,er0
.L835:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L833
.L837:
	mov.l	er0,er2
	mov.l	er1,er3
.L833:
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
	bls	.L881
	sub.l	er0,er0
.L881:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L888
.L887:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L887
.L888:
	mov.l	er2,er1
	and	#0,r1l
	sub.w	e1,e1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L882
	sub.l	er3,er3
.L882:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L890
.L889:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L889
.L890:
	add.l	er3,er0
	mov.l	er2,er1
	and.l	#240,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L883
	sub.l	er3,er3
.L883:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L892
.L891:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L891
.L892:
	add.l	er0,er3
	mov.l	er3,er4
	mov.l	er2,er0
	and.l	#12,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L884
	sub.l	er3,er3
.L884:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L894
.L893:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L893
.L894:
	btst	#1,r2l
	bne	.L885
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L886
.L885:
	sub.w	r0,r0
.L886:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(12,er7),er0
	mov.l	@(16,er7),er1
	cmp.l	er0,er2
	blt	.L899
	bgt	.L900
	cmp.l	er1,er3
	blo	.L899
	bhi	.L900
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L895
.L899:
	sub.l	er0,er0
	bra	.L895
.L900:
	sub.l	er0,er0
	add.b	#2,r0l
.L895:
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
	beq	.L903
	sub.l	er0,er0
.L903:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L908
.L907:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L907
.L908:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L904
	sub.l	er3,er3
.L904:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L910
.L909:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L909
.L910:
	add.l	er0,er3
	mov.l	er2,er0
	and.l	#15,er0
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L905
	sub.l	er1,er1
.L905:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L912
.L911:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L911
.L912:
	add.l	er3,er1
	mov.l	er2,er0
	and.l	#3,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L906
	sub.l	er3,er3
.L906:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L914
.L913:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L913
.L914:
	and.l	#3,er2
	mov.l	er2,er0
	not.l	er0
	and.w	#1,r0
	shlr.l	er2
	sub.l	er4,er4
	add.b	#2,r4l
	sub.l	er2,er4
	mov.w	r0,r2
	neg.w	r2
	and.w	r4,r2
	add.l	er1,er3
	mov.l	er3,er0
	add.w	r2,r0
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
	beq	.L916
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L921
.L920:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L920
.L921:
	sub.l	er1,er1
	bra	.L917
.L916:
	mov.w	r2,r2
	beq	.L919
	mov.l	@er7,er1
	mov.l	er1,er3
	mov.b	r2l,r0l
	ble	.L923
.L922:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L922
.L923:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L925
.L924:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L924
.L925:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L927
.L926:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L926
.L927:
	or.l	er3,er0
.L917:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L915
.L919:
	mov.l	er0,er2
	mov.l	er1,er3
.L915:
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
	mov.l	er6,@-er7
	sub.l	#20,er7
	mov.l	er0,er4
	mov.l	er0,er3
	sub.w	e3,e3
	mov.l	er1,er0
	mov.l	er1,@(8,er7)
	sub.w	e0,e0
	mov.l	er0,@(4,er7)
	mov.l	er0,er1
	mov.l	er3,@er7
	mov.l	er3,er0
	jsr	@___mulsi3
	mov.l	er0,er5
	mov.l	er0,er6
	mov.w	e6,r6
	extu.l	er6
	mov.w	e4,r4
	extu.l	er4
	mov.l	er4,er1
	mov.l	@(4,er7),er0
	jsr	@___mulsi3
	add.l	er0,er6
	sub.w	e5,e5
	mov.l	er6,er2
	mov.w	r2,e2
	sub.w	r2,r2
	add.l	er2,er5
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,@(4,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,er1
	mov.w	e1,r1
	extu.l	er1
	mov.l	er1,@(8,er7)
	mov.l	@er7,er0
	jsr	@___mulsi3
	mov.l	@(4,er7),er2
	add.l	er0,er2
	sub.w	e5,e5
	mov.l	er2,er3
	mov.l	er2,@er7
	mov.w	r3,e3
	sub.w	r3,r3
	add.l	er3,er5
	mov.w	e6,r6
	extu.l	er6
	mov.l	@(8,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er0,er6
	mov.l	@er7,er2
	mov.w	e2,r2
	extu.l	er2
	add.l	er2,er6
	mov.l	er6,er0
	mov.l	er5,er1
	add.l	#20,er7
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
	sub.l	#24,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	@(40,er7),er4
	mov.l	@(44,er7),er5
	mov.l	er5,er1
	mov.l	@(12,er7),er0
	jsr	@___muldsi3
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@(8,er7),er1
	mov.l	er5,er0
	jsr	@___mulsi3
	mov.l	er0,er6
	mov.l	er4,er1
	mov.l	@(12,er7),er0
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
	bne	.L931
	sub.l	er6,er6
.L931:
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
	ble	.L934
.L933:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L933
.L934:
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
	ble	.L937
.L936:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L936
.L937:
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
	bhi	.L939
	sub.l	er2,er2
.L939:
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
	mov.w	r1,@(2,er7)
	mov.w	r1,r6
	mov.l	#1065353216,er5
.L947:
	btst	#0,r6l
	beq	.L944
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L944:
	mov.w	r6,r3
	bpl	.L945
	inc #1,r3
.L945:
	shar.w	r3
	mov.w	r3,r6
	beq	.L946
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L947
.L946:
	mov.w	@(2,er7),r2
	bpl	.L943
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L943:
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
.L953:
	btst	#0,r6l
	beq	.L950
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L950:
	mov.w	r6,r3
	bpl	.L951
	inc #1,r3
.L951:
	shar.w	r3
	mov.w	r3,r6
	beq	.L952
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L953
.L952:
	mov.w	@(2,er7),r2
	bpl	.L949
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L949:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(12,er7),er0
	mov.l	@(16,er7),er1
	cmp.l	er0,er2
	blo	.L959
	bhi	.L960
	cmp.l	er1,er3
	blo	.L959
	bhi	.L960
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L955
.L959:
	sub.l	er0,er0
	bra	.L955
.L960:
	sub.l	er0,er0
	add.b	#2,r0l
.L955:
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
