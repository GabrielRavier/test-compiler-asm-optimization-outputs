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
	sub.l	er0,er0
	bra	.L8
.L11:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L13
.L9:
	mov.b	@er1,r3l
	mov.b	r3l,@er0
	extu.w	r3
	cmp.w	r3,r2
	bne	.L11
	bra	.L15
.L13:
	sub.l	er0,er0
	bra	.L8
.L15:
	adds	#1,er0
.L8:
	mov.l	@er7+,er4
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.l	er2,er2
	bne	.L17
	sub.l	er0,er0
	rts
.L19:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L20
.L17:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L19
	rts
.L20:
	sub.l	er0,er0
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L23
	sub.w	r0,r0
	bra	.L22
.L25:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L27
.L23:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L25
	bra	.L29
.L27:
	sub.w	r0,r0
	bra	.L22
.L29:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
.L22:
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
	mov.l	er0,er4
	extu.w	r1
	subs	#1,er2
	add.l	er0,er2
	subs	#1,er4
	bra	.L35
.L37:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r3,r1
	beq	.L34
.L35:
	cmp.l	er4,er2
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
	beq	.L42
	add.l	er0,er2
	mov.l	er0,er3
.L40:
	mov.b	r1l,@er3
	adds	#1,er3
	cmp.l	er2,er3
	bne	.L40
.L42:
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	beq	.L47
.L45:
	adds	#1,er1
	adds	#1,er0
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L45
.L47:
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	bne	.L49
	rts
.L51:
	adds	#1,er0
	mov.b	@er0,r2l
	beq	.L54
.L49:
	mov.b	@er0,r2l
	extu.w	r2
	cmp.w	r2,r1
	bne	.L51
.L54:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L58:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r3,r1
	beq	.L60
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L58
	sub.l	er0,er0
.L60:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	cmp.b	r3l,r2l
	beq	.L62
	bra	.L63
.L64:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	cmp.b	r3l,r2l
	bne	.L63
.L62:
	mov.b	@er0,r2l
	bne	.L64
.L63:
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
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er2
	beq	.L76
	mov.b	@er0,r2l
	beq	.L73
	add.l	er0,er3
	bra	.L74
.L75:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r2l
	beq	.L73
.L74:
	mov.b	@er1,r2l
	beq	.L73
	cmp.l	er3,er0
	beq	.L77
	mov.b	@er0,r4l
	cmp.b	r4l,r2l
	beq	.L75
	bra	.L73
.L77:
	mov.l	er3,er0
.L73:
	mov.b	@er0,r0l
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
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L159
	mov.w	r2,r2
	beq	.L165
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
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L168
	mov.w	r2,r2
	beq	.L174
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
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L177
	mov.w	r2,r2
	beq	.L183
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
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L186
	mov.w	r2,r2
	beq	.L192
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
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L195
	mov.w	r2,r2
	beq	.L201
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
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L204
	mov.w	r2,r2
	beq	.L210
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
	sub.l	#20,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,er4
	mov.l	er1,@(12,er7)
	mov.l	@(40,er7),er6
	mov.l	@er2,er1
	beq	.L229
	sub.l	er5,er5
	mov.l	er1,@(8,er7)
	mov.l	er2,@(16,er7)
.L231:
	mov.l	er4,@er7
	mov.l	er4,er1
	mov.l	@(4,er7),er0
	jsr	@er6
	mov.w	r0,r0
	beq	.L228
	adds	#1,er5
	mov.l	@(36,er7),er2
	add.l	er2,er4
	mov.l	@(8,er7),er2
	cmp.l	er2,er5
	bne	.L231
	mov.l	er2,er1
	mov.l	@(16,er7),er2
.L229:
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
.L228:
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
	mov.l	er0,@er7
	mov.l	@er2,er6
	beq	.L236
	mov.l	er1,er4
	sub.l	er5,er5
	mov.l	er6,@(8,er7)
	mov.l	@(32,er7),er6
.L235:
	mov.l	er4,@(4,er7)
	mov.l	er4,er1
	mov.l	@er7,er0
	jsr	@er6
	mov.w	r0,r0
	beq	.L238
	adds	#1,er5
	mov.l	@(28,er7),er2
	add.l	er2,er4
	mov.l	@(8,er7),er2
	cmp.l	er2,er5
	bne	.L235
	sub.l	er2,er2
	bra	.L233
.L236:
	sub.l	er2,er2
	bra	.L233
.L238:
	mov.l	@(4,er7),er2
.L233:
	mov.l	er2,er0
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
	extu.w	r5
	mov.w	r5,r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L244
	cmp.w	#43,r5
	beq	.L250
	cmp.w	#45,r5
	bne	.L251
	mov.w	#1,r1
	bra	.L245
.L250:
	mov.w	r0,r1
.L245:
	adds	#1,er4
	bra	.L246
.L251:
	mov.w	r0,r1
.L246:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L247
	mov.w	#10,r3
.L248:
	mulxs.w	r3,er0
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	sub.w	r2,r0
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L248
.L247:
	mov.w	r1,r1
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
	mov.l	er0,er4
	bra	.L254
.L255:
	adds	#1,er4
.L254:
	mov.b	@er4,r6l
	extu.w	r6
	mov.w	r6,r0
	jsr	@_isspace
	mov.w	r0,r5
	bne	.L255
	cmp.w	#43,r6
	beq	.L256
	cmp.w	#45,r6
	bne	.L257
	mov.w	#1,r5
.L256:
	adds	#1,er4
.L257:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L261
	sub.l	er0,er0
	sub.l	er6,er6
	add.b	#10,r6l
.L259:
	mov.l	er6,er1
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
	bls	.L259
	bra	.L258
.L261:
	sub.l	er0,er0
.L258:
	mov.w	r5,r5
	bne	.L253
	neg.l	er0
.L253:
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
	bra	.L264
.L265:
	adds	#1,er4
.L264:
	mov.b	@er4,r5l
	extu.w	r5
	mov.w	r5,r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L265
	mov.w	r0,r3
	cmp.w	#43,r5
	beq	.L266
	cmp.w	#45,r5
	bne	.L267
	mov.w	#1,r3
.L266:
	adds	#1,er4
.L267:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L273:16
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
	mov.w	r3,@(18,er7)
.L270:
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
	bhi	.L269
	sub.l	er5,er5
.L269:
	mov.l	@(8,er7),er1
	sub.l	er1,er0
	sub.l	er5,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L270:16
	mov.w	@(18,er7),r3
	bra	.L268
.L273:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L268:
	mov.w	r3,r3
	bne	.L263
	sub.l	er0,er0
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er3,er3
	bne	.L272
	sub.l	er4,er4
.L272:
	mov.l	@er7,er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
.L263:
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
	beq	.L279
.L278:
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
	bmi	.L280
	ble	.L275
	mov.l	@(24,er7),er2
	add.l	er5,er2
	mov.l	er2,@er7
	subs	#1,er4
	sub.l	er6,er4
	bra	.L277
.L280:
	mov.l	er6,er4
.L277:
	mov.l	er4,er4
	bne	.L278
	sub.l	er5,er5
	bra	.L275
.L279:
	sub.l	er5,er5
.L275:
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
	beq	.L287
.L286:
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
	beq	.L283
	ble	.L285
	mov.l	@(20,er7),er6
	add.l	er5,er6
	dec #1,r4
.L285:
	shar.w	r4
	bne	.L286
	sub.l	er5,er5
	bra	.L283
.L287:
	sub.l	er5,er5
.L283:
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
	bpl	.L292
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L294
	sub.l	er6,er6
.L294:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L292:
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
	bpl	.L298
	neg.l	er0
.L298:
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
	bpl	.L301
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L303
	sub.l	er6,er6
.L303:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L301:
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
	bne	.L306
	sub.l	er0,er0
	rts
.L309:
	adds	#2,er0
	mov.w	@er0,r2
	beq	.L308
.L306:
	mov.w	@er0,r2
	cmp.w	r2,r1
	bne	.L309
.L308:
	mov.w	@er0,r2
	bne	.L312
	sub.l	er0,er0
.L312:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	beq	.L315
	bra	.L316
.L317:
	adds	#2,er0
	adds	#2,er1
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L316
.L315:
	mov.w	@er0,r2
	beq	.L316
	mov.w	@er1,r2
	bne	.L317
.L316:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L320
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L322
	sub.w	r0,r0
	rts
.L320:
	mov.w	#-1,r0
.L322:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L325:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L325
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L330
	mov.l	er0,er2
.L329:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L329
	bra	.L328
.L330:
	mov.l	er0,er2
.L328:
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
	bne	.L333
	sub.w	r0,r0
	bra	.L332
.L336:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L339
.L333:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L335
	mov.w	r3,r3
	bne	.L336
	bra	.L335
.L338:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L332
	sub.w	r0,r0
	bra	.L332
.L339:
	sub.w	r0,r0
	bra	.L332
.L335:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L338
	mov.w	#-1,r0
.L332:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	mov.l	er2,er2
	bne	.L342
	sub.l	er0,er0
	rts
.L344:
	subs	#1,er2
	adds	#2,er0
	mov.l	er2,er2
	beq	.L345
.L342:
	mov.w	@er0,r3
	cmp.w	r3,r1
	bne	.L344
	rts
.L345:
	sub.l	er0,er0
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L348
	sub.w	r0,r0
	bra	.L347
.L350:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L354
.L348:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L350
	bra	.L356
.L353:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L347
	sub.w	r0,r0
	bra	.L347
.L354:
	sub.w	r0,r0
	bra	.L347
.L356:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L353
	mov.w	#-1,r0
.L347:
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
	beq	.L358
	mov.l	er0,er2
.L359:
	mov.w	@er1+,r4
	mov.w	r4,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L359
.L358:
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
	beq	.L362
	mov.l	er0,er3
	mov.l	er1,er4
	mov.l	er2,er6
	shll.l	er6
	mov.l	er0,er2
	sub.l	er1,er2
	cmp.l	er6,er2
	blo	.L363
	mov.l	er5,er1
	subs	#1,er1
	mov.l	er5,er5
	bne	.L364
	bra	.L362
.L363:
	mov.l	er5,er2
	subs	#1,er2
	mov.l	er5,er5
	beq	.L362
	shll.l	er2
.L365:
	mov.l	er1,er3
	add.l	er2,er3
	mov.w	@er3,r4
	mov.l	er0,er3
	add.l	er2,er3
	mov.w	r4,@er3
	subs	#2,er2
	cmp.l	#-2,er2
	bne	.L365
	bra	.L362
.L364:
	mov.w	@er4+,r2
	mov.w	r2,@er3
	subs	#1,er1
	adds	#2,er3
	cmp.l	#-1,er1
	bne	.L364
.L362:
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
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
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
	neg.w	r2
	and.w	#63,r2
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
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
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
	neg.w	r2
	and.w	#63,r2
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
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.w	#32,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L437
.L436:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L436
.L437:
	mov.b	r1l,r1l
	ble	.L439
.L438:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L438
.L439:
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
	ble	.L442
.L441:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L441
.L442:
	mov.b	r1l,r1l
	ble	.L444
.L443:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L443
.L444:
	or.l	er2,er0
	mov.l	@er7+,er4
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
	mov.l	er4,@-er7
	mov.b	r0l,r2l
	extu.w	r2
	mov.w	#8,r3
	sub.w	r1,r3
	mov.w	r2,r0
	mov.b	r3l,r3l
	ble	.L457
.L456:
	shlr.w	r0
	add.b	#-1,r3l
	bne	.L456
.L457:
	mov.b	r1l,r1l
	ble	.L459
.L458:
	shll.w	r2
	add.b	#-1,r1l
	bne	.L458
.L459:
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
	ble	.L462
.L461:
	shll.w	r0
	add.b	#-1,r3l
	bne	.L461
.L462:
	mov.b	r1l,r1l
	ble	.L464
.L463:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L463
.L464:
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
.L503:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L506
.L505:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L505
.L506:
	btst	#0,r3l
	beq	.L501
	inc #1,r2
	mov.w	r2,r0
	rts
.L501:
	inc #1,r2
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
	mov.w	r2,r0
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
	mov.l	er6,@-er7
	mov.l	er0,er6
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L528
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L528
	mov.w	r4,r4
	bpl	.L534
	mov.l	#1056964608,er5
	bra	.L533
.L534:
	mov.l	#1073741824,er5
.L533:
	btst	#0,r4l
	beq	.L531
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L531:
	mov.w	r4,r2
	bpl	.L532
	inc #1,r2
.L532:
	shar.w	r2
	mov.w	r2,r4
	beq	.L528
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L533
.L528:
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
	bne	.L537
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L537
	mov.w	r4,r4
	bpl	.L543
	mov.l	#1056964608,er5
	bra	.L542
.L543:
	mov.l	#1073741824,er5
.L542:
	btst	#0,r4l
	beq	.L540
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L540:
	mov.w	r4,r2
	bpl	.L541
	inc #1,r2
.L541:
	shar.w	r2
	mov.w	r2,r4
	beq	.L537
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L542
.L537:
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
	bne	.L546
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L546
	mov.w	r4,r4
	bpl	.L552
	mov.l	#1056964608,er5
	bra	.L551
.L552:
	mov.l	#1073741824,er5
.L551:
	btst	#0,r4l
	beq	.L549
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L549:
	mov.w	r4,r2
	bpl	.L550
	inc #1,r2
.L550:
	shar.w	r2
	mov.w	r2,r4
	beq	.L546
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L551
.L546:
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
	mov.l	er0,er6
	mov.l	er1,er5
	mov.l	er2,er4
	jsr	@_strlen
	add.l	er6,er0
	mov.l	er4,er4
	bne	.L559
	bra	.L560
.L561:
	adds	#1,er5
	adds	#1,er0
	dec.l	#1,er4
	beq	.L560
.L559:
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L561
	bra	.L562
.L560:
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L562:
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
	bne	.L568
	mov.l	er1,er0
	rts
.L567:
	adds	#1,er0
	cmp.l	er1,er0
	bne	.L565
	bra	.L569
.L568:
	sub.l	er0,er0
.L565:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	beq	.L570
	bra	.L567
.L569:
	mov.l	er1,er0
.L570:
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
	adds	#1,er2
	mov.b	@er0,r4l
	cmp.b	r3l,r4l
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
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L581:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r4,r1
	bne	.L580
	mov.l	er2,er0
.L580:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L581
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
	bpl	.L598
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L593
	bra	.L592
.L598:
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
	beq	.L599
	cmp.l	er3,er1
	blo	.L605
	cmp.l	er5,er0
	bhi	.L606
	mov.b	@er2+,r6l
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
.L603:
	mov.b	@er4,r2l
	cmp.b	r6l,r2l
	bne	.L602
	mov.l	@er7,er2
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L607
.L602:
	adds	#1,er4
	cmp.l	er4,er5
	bhs	.L603
	sub.l	er0,er0
	bra	.L599
.L605:
	sub.l	er0,er0
	bra	.L599
.L606:
	sub.l	er0,er0
	bra	.L599
.L607:
	mov.l	er4,er0
.L599:
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
	bpl	.L630
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L611
.L630:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L611:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L631
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L615:
	inc #1,r5
	mov.l	er6,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L615
	bra	.L616
.L631:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L632
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L633
	sub.w	r5,r5
	mov.l	#1056964608,er6
.L619:
	dec #1,r5
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er6,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L619
	bra	.L616
.L632:
	sub.w	r5,r5
	bra	.L616
.L633:
	sub.w	r5,r5
.L616:
	mov.l	@(4,er7),er2
	mov.w	r5,@er2
	mov.w	@(2,er7),r2
	beq	.L620
	xor.w	#32768,e4
.L620:
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
	beq	.L641:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L640:
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
	bne	.L637
	sub.l	er6,er6
.L637:
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
	bne	.L640:16
	bra	.L634
.L641:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L634:
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
	blo	.L653
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L647
.L649:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L646
	mov.l	er3,er3
	bne	.L647
	mov.l	er3,er0
	bra	.L648
.L646:
	dec #1,r0
	bne	.L644
	bra	.L654
.L653:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L644:
	mov.l	er1,er1
	bpl	.L649
.L647:
	sub.l	er0,er0
.L651:
	cmp.l	er1,er4
	blo	.L650
	sub.l	er1,er4
	or.l	er3,er0
.L650:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L651
	bra	.L648
.L654:
	sub.l	er0,er0
.L648:
	mov.l	er2,er2
	beq	.L643
	mov.l	er4,er0
.L643:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L659
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L659:
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
	beq	.L663
	mov.l	er6,er0
	mov.l	er5,er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L660
.L663:
	mov.w	#63,r0
.L660:
	mov.l	@er7+,er6
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
	blo	.L670
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L670
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L671
	bra	.L669:16
.L670:
	mov.w	r6,r6
	beq	.L673
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L674:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L674
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L673:
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
.L675:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L675
	bra	.L669
.L671:
	mov.w	r3,r2
	extu.l	er2
.L676:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L676
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
	blo	.L681
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L681
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L682
	bra	.L680
.L681:
	mov.w	r6,r6
	beq	.L684
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L685:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L685
.L684:
	btst	#0,r2l
	beq	.L680
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L680
.L682:
	mov.w	r3,r2
	extu.l	er2
.L686:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L686
.L680:
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
	blo	.L690
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L690
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L691
	bra	.L689
.L690:
	mov.w	r6,r6
	beq	.L693
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
.L693:
	cmp.w	r5,r2
	bls	.L689
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
	bra	.L689
.L691:
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
.L689:
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
	blo	.L757
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L751
.L753:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L750
	mov.l	er3,er3
	bne	.L751
	mov.l	er3,er0
	bra	.L752
.L750:
	dec #1,r0
	bne	.L748
	bra	.L758
.L757:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L748:
	mov.l	er1,er1
	bpl	.L753
.L751:
	sub.l	er0,er0
.L755:
	cmp.l	er1,er4
	blo	.L754
	sub.l	er1,er4
	or.l	er3,er0
.L754:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L755
	bra	.L752
.L758:
	sub.l	er0,er0
.L752:
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
	bmi	.L764
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L763
	sub.w	r6,r6
.L763:
	mov.w	r6,r0
	bra	.L761
.L764:
	mov.w	#-1,r0
.L761:
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
	bmi	.L768
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L767
	sub.w	r6,r6
.L767:
	mov.w	r6,r0
	bra	.L765
.L768:
	mov.w	#-1,r0
.L765:
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
	bpl	.L772
	neg.w	r1
	mov.w	#1,r5
	bra	.L776
.L777:
	sub.w	r5,r5
.L776:
	mov.b	#16,r4l
	sub.w	r0,r0
.L774:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r3
	shar.w	r1
	beq	.L773
	add.b	#-1,r4l
	bne	.L774
.L773:
	mov.w	r5,r5
	beq	.L771
	neg.w	r0
	bra	.L771
.L772:
	bne	.L777
	mov.w	r1,r0
.L771:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er0,er0
	bpl	.L780
	neg.l	er0
	mov.l	er1,er1
	bpl	.L786
	bra	.L781
.L783:
	neg.l	er0
	rts
.L786:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	bra	.L783
.L785:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	rts
.L780:
	mov.l	er1,er1
	bpl	.L785
	sub.w	r2,r2
	neg.l	er1
	jsr	@___udivmodsi4
	bra	.L783
.L781:
	sub.w	r2,r2
	neg.l	er1
	jsr	@___udivmodsi4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L788
	mov.l	er1,er1
	bpl	.L789
	neg.l	er2
	mov.l	er2,er1
.L789:
	mov.w	#1,r2
	neg.l	er0
	jsr	@___udivmodsi4
	neg.l	er0
	rts
.L788:
	mov.l	er1,er1
	bpl	.L790
	neg.l	er2
	mov.l	er2,er1
.L790:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	r0,r4
	cmp.w	r0,r1
	blo	.L802
	mov.w	#1,r3
	bra	.L796
.L798:
	shll.w	r1
	shll.w	r3
	cmp.w	r1,r4
	bhi	.L795
	mov.w	r3,r3
	bne	.L796
	mov.w	r3,r0
	bra	.L797
.L795:
	dec #1,r0
	bne	.L793
	bra	.L797
.L802:
	mov.w	#16,r0
	mov.w	#1,r3
.L793:
	mov.w	r1,r1
	bpl	.L798
.L796:
	sub.w	r0,r0
.L800:
	cmp.w	r1,r4
	blo	.L799
	sub.w	r1,r4
	or.w	r3,r0
.L799:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L800
.L797:
	mov.w	r2,r2
	beq	.L792
	mov.w	r4,r0
.L792:
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
.L811:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L808
	mov.l	er3,er3
	bne	.L809
	mov.l	er3,er0
	bra	.L810
.L808:
	dec #1,r0
	bne	.L806
	bra	.L816
.L815:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L806:
	mov.l	er1,er1
	bpl	.L811
.L809:
	sub.l	er0,er0
.L813:
	cmp.l	er1,er4
	blo	.L812
	sub.l	er1,er4
	or.l	er3,er0
.L812:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L813
	bra	.L810
.L816:
	sub.l	er0,er0
.L810:
	mov.w	r2,r2
	beq	.L805
	mov.l	er4,er0
.L805:
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
	beq	.L820
	sub.l	er3,er3
	mov.l	er3,@(4,er7)
	add.w	#-32,r2
	mov.l	er1,er3
	mov.b	r2l,r2l
	ble	.L825
.L824:
	shll.l	er3
	add.b	#-1,r2l
	bne	.L824
.L825:
	mov.l	er3,@er7
	bra	.L821
.L820:
	mov.w	r2,r2
	beq	.L823
	mov.l	@(12,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L827
.L826:
	shll.l	er0
	add.b	#-1,r1l
	bne	.L826
.L827:
	mov.l	er0,@(4,er7)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L829
.L828:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L828
.L829:
	mov.l	@(8,er7),er0
	mov.b	r2l,r2l
	ble	.L831
.L830:
	shll.l	er0
	add.b	#-1,r2l
	bne	.L830
.L831:
	or.l	er0,er3
	mov.l	er3,@er7
.L821:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L819
.L823:
	mov.l	er0,er2
	mov.l	er1,er3
.L819:
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
	beq	.L833
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@er7
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L838
.L837:
	shar.l	er3
	add.b	#-1,r2l
	bne	.L837
.L838:
	mov.l	er3,@(4,er7)
	bra	.L834
.L833:
	mov.w	r2,r2
	beq	.L836
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L840
.L839:
	shar.l	er0
	add.b	#-1,r1l
	bne	.L839
.L840:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L842
.L841:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L841
.L842:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L844
.L843:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L843
.L844:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L834:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L832
.L836:
	mov.l	er0,er2
	mov.l	er1,er3
.L832:
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
	bls	.L880
	sub.l	er0,er0
.L880:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L885
.L884:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L884
.L885:
	mov.l	er2,er1
	and	#0,r1l
	sub.w	e1,e1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L881
	sub.l	er3,er3
.L881:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L887
.L886:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L886
.L887:
	add.l	er0,er3
	mov.l	er2,er0
	and.l	#240,er0
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L882
	sub.l	er1,er1
.L882:
	shll.l	er1
	shll.l	er1
	mov.w	#4,r0
	sub.w	r1,r0
	mov.b	r0l,r0l
	ble	.L889
.L888:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L888
.L889:
	add.l	er3,er1
	mov.l	er2,er3
	and.l	#12,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er3,er3
	beq	.L883
	sub.l	er0,er0
.L883:
	shll.l	er0
	mov.w	#2,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L891
.L890:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L890
.L891:
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
	sub.l	#24,er7
	mov.l	@(36,er7),er2
	mov.l	er2,@er7
	mov.l	@(40,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	er1,@(20,er7)
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	mov.l	er3,@(12,er7)
	cmp.l	er2,er0
	blt	.L894
	bgt	.L895
	mov.l	@(12,er7),er2
	cmp.l	er2,er1
	blo	.L896
	bhi	.L897
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L892
.L894:
	sub.l	er0,er0
	bra	.L892
.L895:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L892
.L896:
	sub.l	er0,er0
	bra	.L892
.L897:
	sub.l	er0,er0
	add.b	#2,r0l
.L892:
	add.l	#24,er7
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
	beq	.L900
	sub.l	er0,er0
.L900:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L905
.L904:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L904
.L905:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L901
	sub.l	er3,er3
.L901:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L907
.L906:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L906
.L907:
	add.l	er0,er3
	mov.l	er2,er1
	and.l	#15,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L902
	sub.l	er0,er0
.L902:
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L909
.L908:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L908
.L909:
	add.l	er0,er3
	mov.l	er2,er1
	and.l	#3,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L903
	sub.l	er0,er0
.L903:
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L911
.L910:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L910
.L911:
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
	beq	.L913
	sub.l	er3,er3
	mov.l	er3,@er7
	add.w	#-32,r2
	mov.l	er0,er3
	mov.b	r2l,r2l
	ble	.L918
.L917:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L917
.L918:
	mov.l	er3,@(4,er7)
	bra	.L914
.L913:
	mov.w	r2,r2
	beq	.L916
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L920
.L919:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L919
.L920:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L922
.L921:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L921
.L922:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L924
.L923:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L923
.L924:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L914:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L912
.L916:
	mov.l	er0,er2
	mov.l	er1,er3
.L912:
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
	mov.l	er0,er5
	mov.l	er0,@(8,er7)
	mov.w	e5,r5
	extu.l	er5
	mov.w	e4,r4
	extu.l	er4
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	er5,er3
	mov.w	r3,e3
	sub.w	r3,r3
	mov.l	@(8,er7),er2
	sub.w	e2,e2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.w	e3,r3
	extu.l	er3
	mov.l	er3,@(12,er7)
	mov.w	e6,r6
	extu.l	er6
	mov.l	er6,@(4,er7)
	mov.l	er6,er1
	mov.l	@er7,er0
	jsr	@___mulsi3
	mov.l	@(12,er7),er2
	add.l	er2,er0
	mov.l	er0,er3
	mov.w	r3,e3
	sub.w	r3,r3
	mov.l	er3,er6
	mov.l	@(8,er7),er2
	sub.w	e2,e2
	add.l	er2,er6
	mov.w	e0,r0
	extu.l	er0
	mov.w	e5,r5
	extu.l	er5
	add.l	er0,er5
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	add.l	er0,er5
	mov.l	er5,er0
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
	sub.l	#48,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	@(64,er7),er2
	mov.l	er2,@(16,er7)
	mov.l	@(68,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	er0,er6
	mov.l	@(16,er7),er5
	mov.l	er2,er1
	mov.l	@(12,er7),er0
	jsr	@___muldsi3
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	er0,er4
	mov.l	er6,er1
	mov.l	@(20,er7),er0
	jsr	@___mulsi3
	mov.l	er0,er6
	mov.l	er5,er1
	mov.l	@(12,er7),er0
	jsr	@___mulsi3
	add.l	er0,er6
	add.l	er6,er4
	mov.l	er4,er0
	mov.l	@(4,er7),er1
	add.l	#48,er7
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
	bne	.L928
	sub.l	er6,er6
.L928:
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
	ble	.L931
.L930:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L930
.L931:
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
	ble	.L934
.L933:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L933
.L934:
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
	bhi	.L936
	sub.l	er2,er2
.L936:
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
.L944:
	btst	#0,r5l
	beq	.L941
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L941:
	mov.w	r5,r2
	bpl	.L942
	inc #1,r2
.L942:
	shar.w	r2
	mov.w	r2,r5
	beq	.L943
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L944
.L943:
	mov.w	@(2,er7),r2
	beq	.L940
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er6
.L940:
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
.L950:
	btst	#0,r5l
	beq	.L947
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L947:
	mov.w	r5,r2
	bpl	.L948
	inc #1,r2
.L948:
	shar.w	r2
	mov.w	r2,r5
	beq	.L949
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L950
.L949:
	mov.w	@(2,er7),r2
	beq	.L946
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er6
.L946:
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
	sub.l	#24,er7
	mov.l	@(36,er7),er2
	mov.l	er2,@er7
	mov.l	@(40,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	er1,@(20,er7)
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	mov.l	er3,@(12,er7)
	cmp.l	er2,er0
	blo	.L954
	bhi	.L955
	mov.l	@(12,er7),er2
	cmp.l	er2,er1
	blo	.L956
	bhi	.L957
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L952
.L954:
	sub.l	er0,er0
	bra	.L952
.L955:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L952
.L956:
	sub.l	er0,er0
	bra	.L952
.L957:
	sub.l	er0,er0
	add.b	#2,r0l
.L952:
	add.l	#24,er7
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
