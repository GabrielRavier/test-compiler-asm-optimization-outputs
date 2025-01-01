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
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	er2,er2
	beq	.L31
	jsr	@_memcpy
.L31:
	mov.l	er4,er0
	mov.l	@er7+,er4
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
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	beq	.L45
.L43:
	adds	#1,er1
	adds	#1,er0
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L43
.L45:
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
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	beq	.L60
	bra	.L61
.L62:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	bne	.L61
.L60:
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
	beq	.L65
.L66:
	adds	#1,er0
	mov.b	@er0,r3l
	bne	.L66
.L65:
	sub.l	er2,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L74
	mov.b	@er0,r3l
	beq	.L71
	subs	#1,er2
	add.l	er0,er2
	bra	.L72
.L73:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r3l
	beq	.L71
.L72:
	mov.b	@er1,r4l
	beq	.L71
	cmp.l	er2,er0
	beq	.L71
	cmp.b	r3l,r4l
	beq	.L73
.L71:
	mov.b	r3l,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L69
.L74:
	sub.w	r0,r0
.L69:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L79
	and	#254,r2l
	add.l	er0,er2
.L77:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L77
.L79:
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
	bls	.L82
	sub.w	r0,r0
.L82:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L84
	sub.w	r2,r2
.L84:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L88
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L87
	sub.w	r2,r2
.L87:
	mov.w	r2,r0
	rts
.L88:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L92
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L91
	sub.w	r2,r2
.L91:
	mov.w	r2,r0
	rts
.L92:
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
	bls	.L95
	sub.w	r0,r0
.L95:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L98
	sub.w	r0,r0
.L98:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L101
	sub.w	r0,r0
.L101:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L104
	sub.w	r0,r0
.L104:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L108
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L107
	sub.w	r2,r2
.L107:
	mov.w	r2,r0
	rts
.L108:
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
	bls	.L111
	sub.w	r0,r0
.L111:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L115
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L116
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L117
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L114
	sub.w	r2,r2
.L114:
	mov.w	r2,r0
	rts
.L115:
	mov.w	#1,r0
	rts
.L116:
	mov.w	#1,r0
	rts
.L117:
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
	bls	.L120
	sub.w	r0,r0
.L120:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L122
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L129
	sub.w	r0,r0
	rts
.L122:
	cmp.w	#8231,r0
	bls	.L126
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L127
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L128
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L125
	sub.w	r2,r2
.L125:
	mov.w	r2,r0
	rts
.L126:
	mov.w	#1,r0
	rts
.L127:
	mov.w	#1,r0
	rts
.L128:
	mov.w	#1,r0
.L129:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L134
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L135
	sub.w	r0,r0
	rts
.L134:
	mov.w	#1,r0
.L135:
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
	bne	.L141
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L142
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L145
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L138
.L141:
	mov.l	er4,er0
	bra	.L138
.L142:
	mov.l	er5,er0
	bra	.L138
.L145:
	sub.l	er0,er0
.L138:
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
	bne	.L149
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L150
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L153
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L146
.L149:
	mov.l	er4,er0
	bra	.L146
.L150:
	mov.l	er5,er0
	bra	.L146
.L153:
	sub.l	er0,er0
.L146:
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
	bne	.L160
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L161
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L156
	mov.w	r2,r2
	bne	.L162
	mov.l	er5,er0
	bra	.L154
.L156:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L158
	mov.l	er5,er4
.L158:
	mov.l	er4,er0
	bra	.L154
.L160:
	mov.l	er4,er0
	bra	.L154
.L161:
	mov.l	er5,er0
	bra	.L154
.L162:
	mov.l	er4,er0
.L154:
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
	bne	.L169
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L170
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L165
	mov.w	r2,r2
	bne	.L171
	mov.l	er5,er0
	bra	.L163
.L165:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L167
	mov.l	er5,er4
.L167:
	mov.l	er4,er0
	bra	.L163
.L169:
	mov.l	er4,er0
	bra	.L163
.L170:
	mov.l	er5,er0
	bra	.L163
.L171:
	mov.l	er4,er0
.L163:
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
	bne	.L178
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L179
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L174
	mov.w	r2,r2
	bne	.L180
	mov.l	er5,er0
	bra	.L172
.L174:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L176
	mov.l	er5,er4
.L176:
	mov.l	er4,er0
	bra	.L172
.L178:
	mov.l	er4,er0
	bra	.L172
.L179:
	mov.l	er5,er0
	bra	.L172
.L180:
	mov.l	er4,er0
.L172:
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
	bne	.L187
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L188
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L183
	mov.w	r2,r2
	bne	.L189
	mov.l	er5,er0
	bra	.L181
.L183:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L185
	mov.l	er5,er4
.L185:
	mov.l	er4,er0
	bra	.L181
.L187:
	mov.l	er5,er0
	bra	.L181
.L188:
	mov.l	er4,er0
	bra	.L181
.L189:
	mov.l	er4,er0
.L181:
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
	bne	.L196
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L197
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L192
	mov.w	r2,r2
	bne	.L198
	mov.l	er5,er0
	bra	.L190
.L192:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L194
	mov.l	er5,er4
.L194:
	mov.l	er4,er0
	bra	.L190
.L196:
	mov.l	er5,er0
	bra	.L190
.L197:
	mov.l	er4,er0
	bra	.L190
.L198:
	mov.l	er4,er0
.L190:
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
	bne	.L205
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L206
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L201
	mov.w	r2,r2
	bne	.L207
	mov.l	er5,er0
	bra	.L199
.L201:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L203
	mov.l	er5,er4
.L203:
	mov.l	er4,er0
	bra	.L199
.L205:
	mov.l	er5,er0
	bra	.L199
.L206:
	mov.l	er4,er0
	bra	.L199
.L207:
	mov.l	er4,er0
.L199:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	er0,er0
	beq	.L211
	mov.l	#_s___0,er3
	mov.l	#_digits,er1
.L210:
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
	bne	.L210
	bra	.L209
.L211:
	mov.l	#_s___0,er3
.L209:
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
	blo	.L215
	sub.l	er6,er6
.L215:
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
	bne	.L217
	sub.l	er2,er2
	mov.l	er2,@(4,er0)
	mov.l	er2,@er0
	rts
.L217:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L219
	mov.l	er0,@(4,er2)
.L219:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L222
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L222:
	mov.l	@(4,er0),er2
	beq	.L224
	mov.l	@er0,er3
	mov.l	er3,@er2
.L224:
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
	mov.l	er1,er4
	mov.l	er1,@(12,er7)
	mov.l	@(40,er7),er6
	mov.l	@er2,er1
	beq	.L226
	sub.l	er5,er5
	mov.l	er1,@(8,er7)
	mov.l	er2,@(16,er7)
.L228:
	mov.l	er4,@er7
	mov.l	er4,er1
	mov.l	@(4,er7),er0
	jsr	@er6
	mov.w	r0,r0
	beq	.L225
	adds	#1,er5
	mov.l	@(36,er7),er2
	add.l	er2,er4
	mov.l	@(8,er7),er2
	cmp.l	er5,er2
	bne	.L228
	mov.l	er2,er1
	mov.l	@(16,er7),er2
.L226:
	mov.l	er1,er3
	adds	#1,er3
	mov.l	er3,@er2
	mov.l	@(36,er7),er0
	jsr	@___mulsi3
	mov.l	@(36,er7),er2
	mov.l	@(4,er7),er1
	mov.l	@(12,er7),er3
	add.l	er3,er0
	jsr	@_memcpy
	mov.l	er0,@er7
.L225:
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
	mov.l	@er2,er6
	beq	.L231
	mov.l	er1,er4
	sub.l	er5,er5
	mov.l	er6,@(8,er7)
	mov.l	@(32,er7),er6
.L233:
	mov.l	er4,@er7
	mov.l	er4,er1
	mov.l	@(4,er7),er0
	jsr	@er6
	mov.w	r0,r0
	beq	.L230
	adds	#1,er5
	mov.l	@(28,er7),er2
	add.l	er2,er4
	mov.l	@(8,er7),er2
	cmp.l	er5,er2
	bne	.L233
.L231:
	sub.l	er2,er2
	mov.l	er2,@er7
.L230:
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
	bpl	.L237
	neg.w	r0
.L237:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	bra	.L239
.L240:
	adds	#1,er4
.L239:
	mov.b	@er4,r5l
	mov.b	r5l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L240
	cmp.b	#43,r5l
	beq	.L246
	cmp.b	#45,r5l
	bne	.L247
	mov.w	#1,r5
	bra	.L241
.L246:
	mov.w	r0,r5
.L241:
	adds	#1,er4
	bra	.L242
.L243:
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
	bls	.L243
	bra	.L244
.L247:
	mov.w	r0,r5
.L242:
	mov.b	@er4,r2l
	extu.w	r2
	mov.b	r2l,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bhi	.L244
	mov.w	#10,r1
	bra	.L243
.L244:
	mov.w	r5,r5
	bne	.L238
	neg.w	r0
.L238:
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
	bra	.L251
.L252:
	adds	#1,er5
.L251:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r6
	bne	.L252
	cmp.b	#43,r4l
	beq	.L253
	cmp.b	#45,r4l
	bne	.L254
	mov.w	#1,r6
.L253:
	adds	#1,er5
	bra	.L254
.L258:
	sub.l	er0,er0
.L255:
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
	bls	.L255
	bra	.L256
.L254:
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L258
	sub.l	er0,er0
.L256:
	mov.w	r6,r6
	bne	.L250
	neg.l	er0
.L250:
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
	bra	.L261
.L262:
	adds	#1,er5
.L261:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L262
	mov.w	r0,r3
	cmp.b	#43,r4l
	beq	.L263
	cmp.b	#45,r4l
	bne	.L264:16
	mov.w	#1,r3
.L263:
	adds	#1,er5
	bra	.L264:16
.L270:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
	mov.w	r3,@(18,er7)
.L266:
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
	bhi	.L265
	sub.l	er4,er4
.L265:
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
	bls	.L266:16
	mov.w	@(18,er7),r3
	bra	.L267
.L264:
	mov.b	@er5,r4l
	extu.w	r4
	mov.b	r4l,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L270:16
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L267:
	mov.w	r3,r3
	bne	.L260
	sub.l	er0,er0
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er3,er3
	bne	.L269
	sub.l	er4,er4
.L269:
	mov.l	@er7,er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
.L260:
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
	mov.l	er1,@er7
	mov.l	er2,er4
	beq	.L273
.L276:
	mov.l	er4,er6
	shlr.l	er6
	mov.l	@(24,er7),er1
	mov.l	er6,er0
	jsr	@___mulsi3
	mov.l	@er7,er2
	add.l	er2,er0
	mov.l	er0,er5
	mov.l	er0,er1
	mov.l	@(4,er7),er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	bmi	.L277
	ble	.L272
	mov.l	@(24,er7),er2
	add.l	er5,er2
	mov.l	er2,@er7
	subs	#1,er4
	sub.l	er6,er4
	bra	.L274
.L277:
	mov.l	er6,er4
.L274:
	mov.l	er4,er4
	bne	.L276
.L273:
	sub.l	er5,er5
.L272:
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
	mov.l	er0,@er7
	mov.l	er1,er6
	mov.w	r2,r4
	beq	.L281
.L284:
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
	beq	.L280
	ble	.L283
	mov.l	@(20,er7),er6
	add.l	er5,er6
	dec #1,r4
.L283:
	shar.w	r4
	bne	.L284
.L281:
	sub.l	er5,er5
.L280:
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
	bpl	.L289
	sub.l	er0,er0
	mov.l	er5,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L291
	sub.l	er6,er6
.L291:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L289:
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
	bpl	.L295
	neg.l	er0
.L295:
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
	bpl	.L298
	sub.l	er0,er0
	mov.l	er5,er6
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
	bne	.L303
	bra	.L304
.L305:
	adds	#2,er0
	mov.w	@er0,r2
	beq	.L304
.L303:
	cmp.w	r2,r1
	bne	.L305
.L304:
	mov.w	r2,r2
	bne	.L309
	sub.l	er0,er0
.L309:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	beq	.L311
	bra	.L312
.L313:
	adds	#2,er0
	adds	#2,er1
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L312
.L311:
	mov.w	r2,r2
	beq	.L312
	mov.w	r3,r3
	bne	.L313
.L312:
	cmp.w	r3,r2
	blo	.L316
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L318
	sub.w	r0,r0
	rts
.L316:
	mov.w	#-1,r0
.L318:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L321:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L321
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L326
	mov.l	er0,er2
.L325:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L325
	bra	.L324
.L326:
	mov.l	er0,er2
.L324:
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
	bne	.L329
	bra	.L330
.L331:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L330
.L329:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L330
	mov.w	r3,r3
	bne	.L331
.L330:
	mov.l	er2,er2
	beq	.L334
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L335
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L328
	sub.w	r0,r0
	bra	.L328
.L334:
	sub.w	r0,r0
	bra	.L328
.L335:
	mov.w	#-1,r0
.L328:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	mov.l	er2,er2
	bne	.L338
	bra	.L339
.L340:
	subs	#1,er2
	adds	#2,er0
	mov.l	er2,er2
	beq	.L339
.L338:
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L340
.L339:
	mov.l	er2,er2
	bne	.L344
	sub.l	er0,er0
.L344:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L346
	bra	.L347
.L348:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L347
.L346:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L348
.L347:
	mov.l	er2,er2
	beq	.L351
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L352
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L345
	sub.w	r0,r0
	bra	.L345
.L351:
	sub.w	r0,r0
	bra	.L345
.L352:
	mov.w	#-1,r0
.L345:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	er2,er2
	beq	.L355
	shll.l	er2
	jsr	@_memcpy
.L355:
	mov.l	er4,er0
	mov.l	@er7+,er4
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er2,er5
	cmp.l	er1,er0
	beq	.L357
	mov.l	er0,er3
	mov.l	er1,er4
	mov.l	er2,er6
	shll.l	er6
	mov.l	er0,er2
	sub.l	er1,er2
	cmp.l	er6,er2
	blo	.L358
	mov.l	er5,er1
	subs	#1,er1
	mov.l	er5,er5
	bne	.L359
	bra	.L357
.L358:
	mov.l	er5,er2
	subs	#1,er2
	mov.l	er5,er5
	beq	.L357
	shll.l	er2
.L360:
	mov.l	er1,er3
	add.l	er2,er3
	mov.w	@er3,r4
	mov.l	er0,er3
	add.l	er2,er3
	mov.w	r4,@er3
	subs	#2,er2
	cmp.l	#-2,er2
	bne	.L360
	bra	.L357
.L359:
	mov.w	@er4+,r2
	mov.w	r2,@er3
	subs	#1,er1
	adds	#2,er3
	cmp.l	#-1,er1
	bne	.L359
.L357:
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
	beq	.L368
	mov.l	er0,er2
.L366:
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L366
.L368:
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L370
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L376
.L372:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L372
	rts
.L370:
	beq	.L376
	mov.l	er2,er2
	beq	.L376
	mov.l	er0,er3
	add.l	er2,er0
.L373:
	mov.b	@er3+,r2l
	mov.b	r2l,@er1
	adds	#1,er1
	cmp.l	er0,er3
	bne	.L373
.L376:
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
	bmi	.L379
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L384
.L383:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L383
.L384:
	bra	.L380
.L379:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L386
.L385:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L385
.L386:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L388
.L387:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L387
.L388:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L390
.L389:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L389
.L390:
.L380:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L381
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L392
.L391:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L391
.L392:
	bra	.L382
.L381:
	mov.l	@er7,er3
	shll.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L394
.L393:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L393
.L394:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L396
.L395:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L395
.L396:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L398
.L397:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L397
.L398:
.L382:
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
	bmi	.L400
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L405
.L404:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L404
.L405:
	bra	.L401
.L400:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L407
.L406:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L406
.L407:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L409
.L408:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L408
.L409:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L411
.L410:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L410
.L411:
.L401:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L402
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L413
.L412:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L412
.L413:
	bra	.L403
.L402:
	mov.l	@(4,er7),er3
	shlr.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L415
.L414:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L414
.L415:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L417
.L416:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L416
.L417:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L419
.L418:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L418
.L419:
.L403:
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
	ble	.L424
.L421:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L421
.L424:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L429
.L426:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L426
.L429:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L434
.L431:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L431
.L434:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L439
.L436:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L436
.L439:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L444
.L441:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L441
.L444:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L449
.L446:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L446
.L449:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L454
.L451:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L451
.L454:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L459
.L456:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L456
.L459:
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
.L498:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L501
.L500:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L500
.L501:
	btst	#0,r3l
	beq	.L496
	inc #1,r2
	mov.w	r2,r0
	rts
.L496:
	inc #1,r2
	cmp.w	#16,r2
	bne	.L498
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L505
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L507
	mov.w	#1,r0
.L504:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L504
	rts
.L505:
	mov.w	r2,r0
.L507:
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
	bmi	.L512
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L511
	sub.w	r5,r5
.L511:
	mov.w	r5,r0
	bra	.L509
.L512:
	mov.w	#1,r0
.L509:
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
	bmi	.L516
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L515
	sub.w	r5,r5
.L515:
	mov.w	r5,r0
	bra	.L513
.L516:
	mov.w	#1,r0
.L513:
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
	bne	.L523
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er6,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L523
	mov.w	r4,r4
	bpl	.L529
	mov.l	#1056964608,er5
	bra	.L528
.L529:
	mov.l	#1073741824,er5
.L528:
	btst	#0,r4l
	beq	.L526
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L526:
	mov.w	r4,r2
	bpl	.L527
	inc #1,r2
.L527:
	shar.w	r2
	mov.w	r2,r4
	beq	.L523
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L528
.L523:
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
	bne	.L532
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er6,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L532
	mov.w	r4,r4
	bpl	.L538
	mov.l	#1056964608,er5
	bra	.L537
.L538:
	mov.l	#1073741824,er5
.L537:
	btst	#0,r4l
	beq	.L535
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L535:
	mov.w	r4,r2
	bpl	.L536
	inc #1,r2
.L536:
	shar.w	r2
	mov.w	r2,r4
	beq	.L532
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L537
.L532:
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
	bne	.L541
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er6,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L541
	mov.w	r4,r4
	bpl	.L547
	mov.l	#1056964608,er5
	bra	.L546
.L547:
	mov.l	#1073741824,er5
.L546:
	btst	#0,r4l
	beq	.L544
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L544:
	mov.w	r4,r2
	bpl	.L545
	inc #1,r2
.L545:
	shar.w	r2
	mov.w	r2,r4
	beq	.L541
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L546
.L541:
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
	beq	.L550
	mov.l	er1,er5
	mov.l	er0,er3
	add.l	er2,er1
.L551:
	mov.b	@er5+,r4l
	mov.b	@er3,r2l
	xor	r2l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er1,er5
	bne	.L551
.L550:
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
	bne	.L554
	bra	.L555
.L556:
	adds	#1,er5
	adds	#1,er0
	dec.l	#1,er4
	beq	.L555
.L554:
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L556
.L555:
	mov.l	er4,er4
	bne	.L557
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L557:
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
	bne	.L563
	mov.l	er1,er0
	rts
.L562:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L560
	bra	.L564
.L563:
	sub.l	er0,er0
.L560:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	beq	.L565
	bra	.L562
.L564:
	mov.l	er1,er0
.L565:
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L568
	sub.l	er0,er0
	bra	.L569
.L570:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L569
.L571:
	mov.b	@er2,r3l
	bne	.L570
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L572
.L568:
	mov.l	er1,er2
	bra	.L571
.L572:
	sub.l	er0,er0
.L569:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L576:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r1,r4
	bne	.L575
	mov.l	er2,er0
.L575:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L576
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
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er1,er0
	jsr	@_strlen
	mov.l	er0,er6
	beq	.L579
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L581
.L582:
	mov.l	er6,er2
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L579
	adds	#1,er4
.L581:
	mov.w	@(2,er7),r1
	mov.l	er4,er0
	jsr	@_strchr
	mov.l	er0,er4
	bne	.L582
.L579:
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
	bpl	.L585
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L587
.L585:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L588
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L588
.L587:
	xor.w	#32768,e4
.L588:
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
	beq	.L593
	cmp.l	er3,er1
	blo	.L598
	sub.l	er3,er1
	add.l	er0,er1
	mov.l	er1,er5
	cmp.l	er1,er0
	bhi	.L599
	mov.b	@er2+,r6l
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
.L596:
	mov.b	@er4,r2l
	cmp.b	r6l,r2l
	bne	.L595
	mov.l	@er7,er2
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L600
.L595:
	adds	#1,er4
	cmp.l	er4,er5
	bhs	.L596
	sub.l	er0,er0
	bra	.L593
.L598:
	sub.l	er0,er0
	bra	.L593
.L599:
	sub.l	er0,er0
	bra	.L593
.L600:
	mov.l	er4,er0
.L593:
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
	bpl	.L623
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L604
.L623:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L604:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L624
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L608:
	inc #1,r5
	mov.l	er6,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L608
	bra	.L609
.L624:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L625
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L626
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L612:
	dec #1,r5
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er6,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L612
	bra	.L609
.L625:
	sub.w	r5,r5
	bra	.L609
.L626:
	sub.w	r5,r5
.L609:
	mov.l	@(4,er7),er2
	mov.w	r5,@er2
	mov.w	@(2,er7),r2
	beq	.L613
	xor.w	#32768,e4
.L613:
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
	beq	.L634:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L633:
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
	bne	.L630
	sub.l	er6,er6
.L630:
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
	bne	.L633:16
	bra	.L627
.L634:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L627:
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
	blo	.L644
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L638
.L641:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L638
	dec #1,r0
	bne	.L637
	sub.l	er3,er3
.L638:
	mov.l	er3,er3
	bne	.L645
	mov.l	er3,er0
	bra	.L640
.L644:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L637:
	mov.l	er1,er1
	bpl	.L641
	bra	.L638
.L645:
	sub.l	er0,er0
.L639:
	cmp.l	er1,er4
	blo	.L642
	sub.l	er1,er4
	or.l	er3,er0
.L642:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L639
.L640:
	mov.l	er2,er2
	beq	.L636
	mov.l	er4,er0
.L636:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L651
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L651:
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
	bne	.L656
	cmp.l	er3,er1
	beq	.L657
.L656:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L652
.L657:
	mov.w	#63,r0
.L652:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	beq	.L661
	sub.w	r0,r0
.L660:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.w	r1,r3
	add.w	r3,r0
	shlr.w	r2
	shll.w	r1
	mov.w	r2,r2
	bne	.L660
	rts
.L661:
	mov.w	r2,r0
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
	bhs	.L664
.L667:
	mov.w	r6,r6
	bne	.L665
	bra	.L666
.L664:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L667
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L668
	bra	.L663:16
.L665:
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L670:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L670
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L666:
	cmp.w	r5,r2
	bls	.L663
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
.L671:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L671
	bra	.L663
.L668:
	mov.w	r3,r2
	extu.l	er2
.L672:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L672
.L663:
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
	bhs	.L677
.L680:
	mov.w	r6,r6
	bne	.L678
	bra	.L679
.L677:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L680
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L681
	bra	.L676
.L678:
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
.L679:
	btst	#0,r2l
	beq	.L676
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L676
.L681:
	mov.w	r3,r2
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
.L676:
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
	bhs	.L688
.L691:
	mov.w	r6,r6
	bne	.L689
	bra	.L690
.L688:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L691
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L692
	bra	.L687
.L689:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L694:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L694
	mov.w	@(2,er7),r5
.L690:
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
.L695:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L695
	bra	.L687
.L692:
	mov.w	r3,r2
	extu.l	er2
.L696:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L696
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
	bmi	.L710
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L708
.L709:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L712
.L711:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L711
.L712:
	and.w	r3,r2
	bne	.L706
.L708:
	inc #1,r0
	cmp.w	#16,r0
	bne	.L709
	bra	.L706
.L710:
	sub.w	r0,r0
.L706:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
.L715:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L719
.L718:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L718
.L719:
	btst	#0,r2l
	bne	.L717
	inc #1,r0
	cmp.w	#16,r0
	bne	.L715
.L717:
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
	bmi	.L725
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L720
.L725:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L720:
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
.L727:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L730
.L729:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L729
.L730:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L727
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
.L732:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L735
.L734:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L734
.L735:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L732
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L739
	sub.l	er0,er0
.L738:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L738
	rts
.L739:
	mov.l	er2,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L744
	mov.l	er1,er1
	beq	.L745
	sub.l	er0,er0
.L743:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L743
	rts
.L744:
	mov.l	er3,er0
	rts
.L745:
	mov.l	er1,er0
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L755
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L749
.L752:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L749
	dec #1,r0
	bne	.L748
	sub.l	er3,er3
.L749:
	mov.l	er3,er3
	bne	.L756
	mov.l	er3,er0
	bra	.L751
.L755:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L748:
	mov.l	er1,er1
	bpl	.L752
	bra	.L749
.L756:
	sub.l	er0,er0
.L750:
	cmp.l	er1,er4
	blo	.L753
	sub.l	er1,er4
	or.l	er3,er0
.L753:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L750
.L751:
	mov.w	r2,r2
	beq	.L747
	mov.l	er4,er0
.L747:
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
	bmi	.L763
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L762
	sub.w	r6,r6
.L762:
	mov.w	r6,r0
	bra	.L760
.L763:
	mov.w	#-1,r0
.L760:
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
	bmi	.L767
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L766
	sub.w	r6,r6
.L766:
	mov.w	r6,r0
	bra	.L764
.L767:
	mov.w	#-1,r0
.L764:
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
	bpl	.L775
	neg.w	r1
	mov.w	#1,r5
	bra	.L771
.L775:
	sub.w	r5,r5
.L771:
	mov.w	r1,r1
	beq	.L776
	mov.b	#16,r4l
	sub.w	r0,r0
.L773:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r3
	shar.w	r1
	beq	.L772
	add.b	#-1,r4l
	bne	.L773
	bra	.L772
.L776:
	mov.w	r1,r0
.L772:
	mov.w	r5,r5
	beq	.L770
	neg.w	r0
.L770:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L782
	neg.l	er0
	mov.w	#1,r4
	bra	.L779
.L782:
	sub.w	r4,r4
.L779:
	mov.l	er1,er1
	bpl	.L780
	neg.l	er1
	xor	#1,r4l
.L780:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L778
	neg.l	er0
.L778:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L787
	neg.l	er0
	mov.w	#1,r4
	bra	.L784
.L787:
	sub.w	r4,r4
.L784:
	mov.l	er2,er1
	bpl	.L785
	neg.l	er2
	mov.l	er2,er1
.L785:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L783
	neg.l	er0
.L783:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	r0,r4
	cmp.w	r0,r1
	blo	.L796
	mov.w	#1,r3
	bra	.L790
.L793:
	shll.w	r1
	shll.w	r0
	cmp.w	r1,r4
	bls	.L797
	dec #1,r3
	bne	.L789
	bra	.L790
.L797:
	mov.w	r0,r3
.L790:
	mov.w	r3,r3
	bne	.L798
	mov.w	r3,r0
	bra	.L792
.L796:
	mov.w	#16,r3
	mov.w	#1,r0
.L789:
	mov.w	r1,r1
	bpl	.L793
	mov.w	r0,r3
	bra	.L790
.L798:
	sub.w	r0,r0
.L791:
	cmp.w	r1,r4
	blo	.L794
	sub.w	r1,r4
	or.w	r3,r0
.L794:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L791
.L792:
	mov.w	r2,r2
	beq	.L788
	mov.w	r4,r0
.L788:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L810
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L804
.L807:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L804
	dec #1,r0
	bne	.L803
	sub.l	er3,er3
.L804:
	mov.l	er3,er3
	bne	.L811
	mov.l	er3,er0
	bra	.L806
.L810:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L803:
	mov.l	er1,er1
	bpl	.L807
	bra	.L804
.L811:
	sub.l	er0,er0
.L805:
	cmp.l	er1,er4
	blo	.L808
	sub.l	er1,er4
	or.l	er3,er0
.L808:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L805
.L806:
	mov.w	r2,r2
	beq	.L802
	mov.l	er4,er0
.L802:
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
	beq	.L816
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L821
.L820:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L820
.L821:
	sub.l	er0,er0
	bra	.L817
.L816:
	mov.w	r2,r2
	beq	.L819
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L823
.L822:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L822
.L823:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L825
.L824:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L824
.L825:
	mov.b	r2l,r2l
	ble	.L827
.L826:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L826
.L827:
	or.l	er3,er4
.L817:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L815
.L819:
	mov.l	er0,er2
	mov.l	er1,er3
.L815:
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
	beq	.L829
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L834
.L833:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L833
.L834:
	bra	.L830
.L829:
	mov.w	r2,r2
	beq	.L832
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L836
.L835:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L835
.L836:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L838
.L837:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L837
.L838:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L840
.L839:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L839
.L840:
	or.l	er3,er0
.L830:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L828
.L832:
	mov.l	er0,er2
	mov.l	er1,er3
.L828:
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
	bls	.L876
	sub.l	er0,er0
.L876:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L883
.L882:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L882
.L883:
	mov.l	er2,er1
	and	#0,r1l
	sub.w	e1,e1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L877
	sub.l	er3,er3
.L877:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L885
.L884:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L884
.L885:
	add.l	er3,er0
	mov.l	er2,er1
	and.l	#240,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L878
	sub.l	er3,er3
.L878:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L887
.L886:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L886
.L887:
	add.l	er0,er3
	mov.l	er3,er4
	mov.l	er2,er0
	and.l	#12,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L879
	sub.l	er3,er3
.L879:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L889
.L888:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L888
.L889:
	btst	#1,r2l
	bne	.L880
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L881
.L880:
	sub.w	r0,r0
.L881:
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
	blt	.L892
	bgt	.L893
	cmp.l	er1,er3
	blo	.L894
	bhi	.L895
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L890
.L892:
	sub.l	er0,er0
	bra	.L890
.L893:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L890
.L894:
	sub.l	er0,er0
	bra	.L890
.L895:
	sub.l	er0,er0
	add.b	#2,r0l
.L890:
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
	beq	.L898
	sub.l	er0,er0
.L898:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L903
.L902:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L902
.L903:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L899
	sub.l	er3,er3
.L899:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L905
.L904:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L904
.L905:
	add.l	er0,er3
	mov.l	er2,er0
	and.l	#15,er0
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L900
	sub.l	er1,er1
.L900:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L907
.L906:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L906
.L907:
	add.l	er3,er1
	mov.l	er2,er0
	and.l	#3,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L901
	sub.l	er3,er3
.L901:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L909
.L908:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L908
.L909:
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
	beq	.L911
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L916
.L915:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L915
.L916:
	sub.l	er1,er1
	bra	.L912
.L911:
	mov.w	r2,r2
	beq	.L914
	mov.l	@er7,er1
	mov.l	er1,er3
	mov.b	r2l,r0l
	ble	.L918
.L917:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L917
.L918:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L920
.L919:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L919
.L920:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L922
.L921:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L921
.L922:
	or.l	er3,er0
.L912:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L910
.L914:
	mov.l	er0,er2
	mov.l	er1,er3
.L910:
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
	sub.l	#24,er7
	mov.l	er0,er4
	mov.l	er0,er5
	sub.w	e5,e5
	mov.l	er1,@(8,er7)
	mov.l	er1,er2
	sub.w	e2,e2
	mov.l	er2,@(4,er7)
	mov.l	er2,er1
	mov.l	er5,@er7
	mov.l	er5,er0
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
	mov.l	er5,er3
	sub.w	e3,e3
	mov.l	er3,er2
	mov.l	er6,er3
	mov.w	r3,e3
	sub.w	r3,r3
	add.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.w	e3,r3
	extu.l	er3
	mov.l	er3,er5
	mov.l	@(8,er7),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,@(4,er7)
	mov.l	er2,er1
	mov.l	@er7,er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	@(12,er7),er3
	sub.w	e3,e3
	mov.l	er3,er2
	mov.l	er5,er3
	mov.w	r3,e3
	sub.w	r3,r3
	mov.l	er2,er0
	add.l	er3,er0
	mov.l	er0,@er7
	mov.w	e6,r6
	extu.l	er6
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er0,er6
	mov.w	e5,r5
	extu.l	er5
	add.l	er5,er6
	mov.l	er6,er0
	mov.l	@er7,er2
	mov.l	er2,er1
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
	bne	.L926
	sub.l	er6,er6
.L926:
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
	ble	.L929
.L928:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L928
.L929:
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
	ble	.L932
.L931:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L931
.L932:
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
	bhi	.L934
	sub.l	er2,er2
.L934:
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
	mov.w	r1,r5
	mov.l	#1065353216,er6
.L942:
	btst	#0,r5l
	beq	.L939
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L939:
	mov.w	r5,r2
	bpl	.L940
	inc #1,r2
.L940:
	shar.w	r2
	mov.w	r2,r5
	beq	.L941
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L942
.L941:
	mov.w	@(2,er7),r2
	bpl	.L938
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er6
.L938:
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
	mov.w	r1,@(2,er7)
	mov.w	r1,r5
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
	bpl	.L944
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er6
.L944:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(12,er7),er0
	mov.l	@(16,er7),er1
	cmp.l	er0,er2
	blo	.L952
	bhi	.L953
	cmp.l	er1,er3
	blo	.L954
	bhi	.L955
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L950
.L952:
	sub.l	er0,er0
	bra	.L950
.L953:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L950
.L954:
	sub.l	er0,er0
	bra	.L950
.L955:
	sub.l	er0,er0
	add.b	#2,r0l
.L950:
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
