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
	mov.l	er0,er4
	add.l	er2,er4
	mov.l	er2,er2
	beq	.L3
.L4:
	subs	#1,er1
	mov.b	@er1,r3l
	subs	#1,er4
	mov.b	r3l,@er4
	cmp.l	er4,er0
	bne	.L4
.L3:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L2:
	beq	.L3
	mov.l	er2,er2
	beq	.L3
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#6,er3
	bls	.L5
	mov.l	er1,er4
	or.l	er0,er4
	and.l	#3,er4
	beq	.L34
.L5:
	mov.l	er0,er3
	add.l	er0,er2
.L11:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er3,er2
	bne	.L11
	bra	.L3
.L34:
	mov.l	er1,er5
	adds	#1,er5
	mov.l	er0,er6
	sub.l	er5,er6
	cmp.l	#2,er6
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
	mov.b	@(1,er5),r6l
	mov.b	r6l,@(1,er3)
	cmp.l	#2,er1
	beq	.L3:16
	mov.b	@(2,er5),r5l
	mov.b	r5l,@(2,er3)
	bra	.L3:16
	.size	_memmove, .-_memmove
	.align 1
	.global _memccpy
_memccpy:
	mov.l	er4,@-er7
	mov.l	@(8,er7),er4
	extu.w	r2
	mov.l	er4,er4
	bne	.L36
	bra	.L38
.L39:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L38
.L36:
	mov.b	@er1,r3l
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
	bne	.L39
	adds	#1,er0
.L35:
	mov.l	@er7+,er4
	rts
.L38:
	sub.l	er0,er0
	bra	.L35
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.l	er2,er2
	bne	.L46
	bra	.L49
.L48:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L49
.L46:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	bne	.L48
	rts
.L49:
	sub.l	er0,er0
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L52
	bra	.L56
.L54:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L56
.L52:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L54
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
.L51:
	mov.l	@er7+,er4
	rts
.L56:
	sub.w	r0,r0
	bra	.L51
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L60
	jsr	@_memcpy
	mov.l	er0,er3
.L60:
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
	bra	.L65
.L67:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L64
.L65:
	cmp.l	er4,er2
	bne	.L67
	sub.l	er0,er0
.L64:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L71
	extu.w	r1
	jsr	@_memset
	mov.l	er0,er3
.L71:
	mov.l	er3,er0
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L79
.L74:
	adds	#1,er1
	adds	#1,er0
.L79:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L74
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	bne	.L81
	rts
.L83:
	adds	#1,er0
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	beq	.L87
.L81:
	cmp.w	r1,r2
	bne	.L83
.L87:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L91:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L93
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L91
	sub.l	er0,er0
.L93:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L102
.L95:
	mov.b	r2l,r2l
	beq	.L103
	adds	#1,er0
	adds	#1,er1
.L102:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	beq	.L95
	mov.b	r2l,r0l
	extu.w	r0
	sub.w	r3,r0
	rts
.L103:
	sub.w	r0,r0
	sub.w	r3,r0
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	mov.l	er0,er3
	mov.b	@er0,r2l
	beq	.L107
	mov.l	er0,er2
.L106:
	adds	#1,er2
	mov.b	@er2,r0l
	bne	.L106
	sub.l	er3,er2
	mov.l	er2,er0
	rts
.L107:
	sub.l	er0,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L117
	mov.b	@er0,r3l
	beq	.L120
	subs	#1,er2
	add.l	er0,er2
	bra	.L113
.L114:
	cmp.l	er2,er0
	beq	.L119
	cmp.b	r3l,r4l
	bne	.L119
	adds	#1,er0
	mov.l	er1,er4
	adds	#1,er4
	mov.b	@er0,r3l
	beq	.L121
	mov.l	er4,er1
.L113:
	mov.b	@er1,r4l
	extu.w	r4
	mov.b	r4l,r4l
	bne	.L114
.L119:
	mov.b	r3l,r0l
	extu.w	r0
.L112:
	sub.w	r4,r0
.L109:
	mov.l	@er7+,er4
	rts
.L117:
	sub.w	r0,r0
	bra	.L109
.L121:
	mov.b	@(1,er1),r4l
	extu.w	r4
	sub.w	r0,r0
	bra	.L112
.L120:
	mov.b	@er1,r4l
	extu.w	r4
	sub.w	r0,r0
	bra	.L112
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L126
	and	#254,r2l
	add.l	er0,er2
.L124:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L124
.L126:
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
	bls	.L129
	sub.w	r0,r0
.L129:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L131
	sub.w	r2,r2
.L131:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L135
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L134
	sub.w	r2,r2
.L134:
	mov.w	r2,r0
	rts
.L135:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L142
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L141
	sub.w	r2,r2
.L141:
	mov.w	r2,r0
	rts
.L142:
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
	bls	.L148
	sub.w	r0,r0
.L148:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L151
	sub.w	r0,r0
.L151:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L154
	sub.w	r0,r0
.L154:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L157
	sub.w	r0,r0
.L157:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L161
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bhi	.L162
	mov.w	r2,r0
	rts
.L162:
	sub.w	r2,r2
	mov.w	r2,r0
	rts
.L161:
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
	bls	.L165
	sub.w	r0,r0
.L165:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L171
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bhi	.L172
.L171:
	mov.w	#1,r0
	rts
.L172:
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L171
	add.w	#7,r0
	mov.w	#1,r1
	cmp.w	#2,r0
	bls	.L168
	sub.w	r1,r1
.L168:
	mov.w	r1,r0
	rts
	.size	_iswcntrl, .-_iswcntrl
	.align 1
	.global _iswdigit
_iswdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	mov.w	#1,r0
	cmp.w	#9,r2
	bls	.L175
	sub.w	r0,r0
.L175:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bls	.L184
	cmp.w	#8231,r0
	bls	.L183
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L183
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L183
	and	#254,r0l
	mov.w	#1,r1
	cmp.w	#-2,r0
	bne	.L180
	sub.w	r1,r1
.L180:
	mov.w	r1,r0
	rts
.L183:
	mov.w	#1,r0
	rts
.L184:
	inc #1,r0
	mov.w	r0,r3
	and.w	#127,r3
	mov.w	#1,r0
	cmp.w	#32,r3
	bhi	.L185
	sub.w	r0,r0
.L185:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L190
	or	#32,r0l
	mov.w	r0,r1
	add.w	#-97,r1
	mov.w	#1,r0
	cmp.w	#5,r1
	bhi	.L191
	rts
.L190:
	mov.w	#1,r0
	rts
.L191:
	sub.w	r0,r0
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
	bne	.L196
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L197
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L201
	sub.l	er0,er0
.L193:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L201:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L193
.L196:
	mov.l	er4,er0
	bra	.L193
.L197:
	mov.l	er5,er0
	bra	.L193
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
	bne	.L205
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L206
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L210
	sub.l	er0,er0
.L202:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L210:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L202
.L205:
	mov.l	er4,er0
	bra	.L202
.L206:
	mov.l	er5,er0
	bra	.L202
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
	bne	.L219
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L218
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	bne	.L222
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L219
	mov.l	er5,er4
.L219:
	mov.l	er4,er0
.L211:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L222:
	mov.w	r2,r2
	bne	.L219
.L218:
	mov.l	er5,er0
	bra	.L211
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
	bne	.L231
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L230
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	bne	.L234
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L231
	mov.l	er5,er4
.L231:
	mov.l	er4,er0
.L223:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L234:
	mov.w	r2,r2
	bne	.L231
.L230:
	mov.l	er5,er0
	bra	.L223
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
	bne	.L243
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L242
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	bne	.L246
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L243
	mov.l	er5,er4
.L243:
	mov.l	er4,er0
.L235:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L246:
	mov.w	r2,r2
	bne	.L243
.L242:
	mov.l	er5,er0
	bra	.L235
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
	bne	.L258
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L255
	mov.l	er5,er4
.L255:
	mov.l	er4,er0
.L247:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L258:
	mov.w	r2,r2
	bne	.L255
.L253:
	mov.l	er5,er0
	bra	.L247
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
	bne	.L265
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L267
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	bne	.L270
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L267
	mov.l	er5,er4
.L267:
	mov.l	er4,er0
.L259:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L270:
	mov.w	r2,r2
	bne	.L267
.L265:
	mov.l	er5,er0
	bra	.L259
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
	bne	.L277
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L279
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	bne	.L282
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L279
	mov.l	er5,er4
.L279:
	mov.l	er4,er0
.L271:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L282:
	mov.w	r2,r2
	bne	.L279
.L277:
	mov.l	er5,er0
	bra	.L271
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L284
	mov.l	#_digits,er1
.L285:
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
	bne	.L285
.L284:
	sub.b	r0l,r0l
	mov.b	r0l,@er3
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
	mov.l	#1481765933,er3
	mov.l	#1284865837,er2
	sub.l	#8,er7
	mov.l	er3,@er7
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
	cmp.l	er5,er6
	blo	.L290
	sub.l	er1,er1
.L290:
	add.l	er0,er4
	mov.l	er4,er2
	mov.l	er1,er4
	add.l	er2,er4
	mov.l	er4,er5
	mov.l	er4,@_seed:32
	mov.l	er3,@_seed+4:32
	shlr.l	er5
	mov.l	er5,er0
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_rand, .-_rand
	.align 1
	.global _insque
_insque:
	mov.l	er1,er1
	beq	.L297
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er1
	beq	.L298
	mov.l	er0,@(4,er1)
	rts
.L297:
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
.L298:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L301
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L301:
	mov.l	@(4,er0),er0
	beq	.L309
	mov.l	er2,@er0
.L309:
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
	beq	.L311
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
	bra	.L313
.L327:
	adds	#1,er6
	mov.l	@(32,er7),er0
	add.l	er0,er5
	mov.l	@(4,er7),er1
	cmp.l	er6,er1
	beq	.L326
.L313:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	bne	.L327
.L310:
	mov.l	er5,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L326:
	mov.l	@(12,er7),er3
.L311:
	mov.l	er1,er6
	adds	#1,er6
	mov.l	er6,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(32,er7),er2
	beq	.L310
	mov.l	@er7,er1
	mov.l	er5,er0
	jsr	@_memmove
	bra	.L310
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
	beq	.L329
	sub.l	er5,er5
	mov.l	er1,@(4,er7)
	mov.l	er4,er6
	mov.l	er0,@er7
	bra	.L331
.L340:
	adds	#1,er5
	mov.l	@(24,er7),er0
	add.l	er0,er6
	mov.l	@(4,er7),er3
	cmp.l	er5,er3
	beq	.L329
.L331:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	bne	.L340
	mov.l	er6,er1
	bra	.L328
.L329:
	sub.l	er1,er1
.L328:
	mov.l	er1,er0
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
	bmi	.L343
	rts
.L343:
	neg.w	r0
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
.L351:
	mov.b	@er0,r3l
	cmp.b	#32,r3l
	beq	.L345
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,r1
	add.w	#-9,r1
	cmp.w	#4,r1
	bls	.L345
	cmp.b	#43,r3l
	beq	.L346:16
	cmp.b	#45,r3l
	bne	.L365
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r4
	add.w	#-48,r4
	cmp.w	#9,r4
	bhi	.L356
	mov.w	#1,r5
	mov.w	r5,@(2,er7)
.L349:
	sub.w	r0,r0
	mov.w	#10,r6
.L353:
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
	bls	.L353
	mov.w	@(2,er7),r2
	bne	.L344
	mov.w	r4,r0
	sub.w	r1,r0
.L344:
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L345:
	adds	#1,er0
	bra	.L351:16
.L365:
	mov.w	r2,r6
	add.w	#-48,r6
	cmp.w	#9,r6
	bhi	.L356
	mov.l	er0,er3
.L364:
	sub.w	r1,r1
	mov.w	r1,@(2,er7)
	bra	.L349
.L346:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L364
.L356:
	sub.w	r0,r0
	bra	.L344
	.size	_atoi, .-_atoi
	.align 1
	.global _atol
_atol:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
.L373:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L367
	mov.b	r2l,r6l
	extu.w	r6
	mov.w	r6,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L367
	cmp.b	#43,r2l
	beq	.L368
	cmp.b	#45,r2l
	beq	.L369
	mov.w	r6,r4
	add.w	#-48,r4
	cmp.w	#9,r4
	bhi	.L378
	mov.l	er0,er5
.L386:
	sub.w	r4,r4
.L371:
	sub.l	er0,er0
.L375:
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
	bls	.L375
	mov.w	r4,r4
	bne	.L366
	sub.l	er2,er3
	mov.l	er3,er0
.L366:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L367:
	adds	#1,er0
	bra	.L373
.L369:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r1
	add.w	#-48,r1
	cmp.w	#9,r1
	bhi	.L378
	mov.w	#1,r4
	bra	.L371
.L368:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L386
.L378:
	sub.l	er0,er0
	bra	.L366
	.size	_atol, .-_atol
	.align 1
	.global _atoll
_atoll:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#20,er7
.L394:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L388:16
	mov.b	r2l,r4l
	extu.w	r4
	mov.w	r4,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L388:16
	cmp.b	#43,r2l
	beq	.L389:16
	cmp.b	#45,r2l
	bne	.L410:16
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r1
	add.w	#-48,r1
	cmp.w	#9,r1
	bhi	.L401:16
	mov.w	#1,r6
	mov.w	r6,@(18,er7)
.L392:
	sub.l	er2,er2
	sub.l	er3,er3
	sub.l	er6,er6
	add.b	#1,r6l
.L397:
	sub.l	er1,er1
	sub.l	#8,er7
	mov.l	er1,@er7
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
	mov.l	er1,er4
	mov.l	@(12,er7),er1
	sub.l	er1,er4
	mov.l	er4,er1
	mov.l	er6,er2
	mov.l	@(4,er7),er0
	cmp.l	er0,er4
	bhi	.L396
	sub.l	er2,er2
.L396:
	mov.l	@er7,er3
	mov.l	@(8,er7),er4
	sub.l	er4,er3
	sub.l	er2,er3
	mov.l	er3,er2
	mov.l	er1,er3
	mov.b	@er5,r4l
	extu.w	r4
	mov.w	r4,r1
	add.w	#-48,r1
	cmp.w	#9,r1
	bls	.L397:16
	mov.w	@(18,er7),r0
	bne	.L387
	mov.l	@(12,er7),er5
	mov.l	@(4,er7),er6
	sub.l	er6,er5
	mov.l	er5,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	@(12,er7),er4
	cmp.l	er4,er5
	bhi	.L399
	sub.l	er2,er2
.L399:
	mov.l	@(8,er7),er0
	mov.l	@er7,er3
	sub.l	er3,er0
	mov.l	er0,er5
	sub.l	er2,er5
	mov.l	er5,er2
	mov.l	er1,er3
.L387:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#20,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L388:
	adds	#1,er0
	bra	.L394:16
.L410:
	mov.w	r4,r5
	add.w	#-48,r5
	cmp.w	#9,r5
	bhi	.L401
	mov.l	er0,er5
.L409:
	sub.w	r0,r0
	mov.w	r0,@(18,er7)
	bra	.L392:16
.L389:
	mov.l	er0,er5
	adds	#1,er5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L409
.L401:
	sub.l	er2,er2
	sub.l	er3,er3
	bra	.L387
	.size	_atoll, .-_atoll
	.align 1
	.global _bsearch
_bsearch:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er2,er4
	beq	.L412
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
	bra	.L415
.L425:
	beq	.L424
	mov.l	@(24,er7),er0
	add.l	er4,er0
	mov.l	er0,@er7
	mov.l	er5,er1
	subs	#1,er1
	sub.l	er6,er1
	mov.l	er1,er5
	mov.l	er5,er5
	beq	.L412
.L415:
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
	mov.l	@(28,er7),er3
	jsr	@er3
	mov.w	r0,r0
	bpl	.L425
	mov.l	er6,er5
	mov.l	er5,er5
	bne	.L415
.L412:
	sub.l	er5,er5
.L411:
	mov.l	er5,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L424:
	mov.l	er4,er5
	bra	.L411
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
	beq	.L431
.L427:
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
	beq	.L426
	ble	.L429
	mov.l	@(24,er7),er0
	add.l	er6,er0
	mov.l	er0,@er7
	dec #1,r4
	shar.w	r4
	bne	.L427
.L431:
	sub.l	er6,er6
.L426:
	mov.l	er6,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L429:
	mov.w	r5,r5
	beq	.L431
	mov.w	r5,r4
	bra	.L427
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
	mov.l	er1,er6
	mov.l	er0,er0
	bmi	.L446
.L443:
	mov.l	er2,er0
	mov.l	er6,er1
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L446:
	sub.l	er4,er4
	neg.l	er6
	mov.l	er6,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er6,er6
	bne	.L445
	sub.l	er3,er3
.L445:
	sub.l	er2,er4
	sub.l	er3,er4
	mov.l	er4,er2
	mov.l	er1,er6
	bra	.L443
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
	mov.l	er0,@er4
	mov.l	er1,@(4,er4)
	mov.l	@(16,er7),er2
	mov.l	@(20,er7),er3
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er5,er0
	mov.l	er6,er1
	jsr	@___moddi3
	mov.l	er0,er5
	mov.l	er5,@(8,er4)
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
	bmi	.L450
	rts
.L450:
	neg.l	er0
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
	mov.l	er1,er6
	mov.l	er0,er0
	bmi	.L456
.L453:
	mov.l	er2,er0
	mov.l	er6,er1
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L456:
	sub.l	er4,er4
	neg.l	er6
	mov.l	er6,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er6,er6
	bne	.L455
	sub.l	er3,er3
.L455:
	sub.l	er2,er4
	sub.l	er3,er4
	mov.l	er4,er2
	mov.l	er1,er6
	bra	.L453
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
	mov.l	er0,@er4
	mov.l	er1,@(4,er4)
	mov.l	@(16,er7),er2
	mov.l	@(20,er7),er3
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er5,er0
	mov.l	er6,er1
	jsr	@___moddi3
	mov.l	er0,er5
	mov.l	er5,@(8,er4)
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
	bra	.L465
.L467:
	cmp.w	r2,r1
	beq	.L468
	adds	#2,er0
.L465:
	mov.w	@er0,r2
	bne	.L467
	sub.l	er0,er0
	rts
.L468:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L478
.L479:
	mov.w	r2,r2
	beq	.L472
	adds	#2,er0
	adds	#2,er1
.L478:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	beq	.L479
.L472:
	cmp.w	r3,r2
	blo	.L476
	mov.w	#1,r0
	cmp.w	r3,r2
	bls	.L480
	rts
.L476:
	mov.w	#-1,r0
	rts
.L480:
	sub.w	r0,r0
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L482:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L482
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L487
	mov.l	er0,er2
.L486:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L486
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
.L487:
	sub.l	er0,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L490
	bra	.L496
.L498:
	mov.w	r3,r3
	beq	.L492
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L496
.L490:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L498
.L492:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L495
	mov.w	#-1,r0
.L489:
	mov.l	@er7+,er4
	rts
.L495:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L489
.L496:
	sub.w	r0,r0
	bra	.L489
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L506
.L508:
	mov.w	@er0,r3
	cmp.w	r1,r3
	beq	.L509
	subs	#1,er2
	adds	#2,er0
.L506:
	mov.l	er2,er2
	bne	.L508
	sub.l	er0,er0
	rts
.L509:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L512
	bra	.L518
.L514:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L518
.L512:
	mov.w	@er0,r4
	mov.w	@er1,r3
	cmp.w	r3,r4
	beq	.L514
	blo	.L521
	mov.w	#1,r0
	cmp.w	r3,r4
	bhi	.L511
.L518:
	sub.w	r0,r0
.L511:
	mov.l	@er7+,er4
	rts
.L521:
	mov.w	#-1,r0
	bra	.L511
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L523
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L523:
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
	beq	.L547
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
	bhs	.L559
	mov.l	er5,er5
	beq	.L547
	shll.l	er3
.L532:
	mov.l	er1,er5
	add.l	er3,er5
	mov.w	@er5,r6
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r6,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L532
.L547:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L559:
	mov.l	er5,er5
	beq	.L547
	cmp.l	#8,er3
	bls	.L558
	mov.l	er1,er6
	or.l	er0,er6
	and.l	#3,er6
	bne	.L558
	mov.l	er1,er2
	adds	#2,er2
	cmp.l	er2,er0
	beq	.L558
	mov.l	er5,er6
	shlr.l	er6
	sub.l	er3,er3
	mov.l	er0,er2
	mov.l	er0,@(4,er7)
.L539:
	mov.l	@er4+,er0
	mov.l	er0,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L539
	mov.l	@(4,er7),er0
	btst	#0,r5l
	beq	.L547
	and	#254,r5l
	shll.l	er5
	add.l	er5,er1
	mov.w	@er1,r4
	add.l	er0,er5
	mov.w	r4,@er5
	bra	.L547
.L558:
	mov.l	er0,er5
.L538:
	mov.w	@er4+,r1
	mov.w	r1,@er5
	subs	#1,er3
	adds	#2,er5
	cmp.l	#-1,er3
	bne	.L538
	bra	.L547
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
	beq	.L561:16
	sub.l	er3,er3
	bld	#1,r0l
	rotxl.l	er3
	cmp.l	#5,er6
	bls	.L566:16
	mov.l	er3,er3
	beq	.L567:16
	mov.l	er0,er4
	adds	#2,er4
	mov.l	er4,@(4,er7)
	mov.w	r1,@er0
	subs	#1,er6
.L563:
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
.L564:
	mov.l	er4,@er2
	adds	#1,er3
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L564
	mov.l	@er7,er2
	btst	#0,r2l
	beq	.L561
	and	#254,r2l
	sub.l	er2,er6
	shll.l	er2
	mov.l	@(4,er7),er5
	add.l	er5,er2
.L562:
	mov.w	r1,@er2
	mov.l	er6,er6
	beq	.L561
	mov.w	r1,@(2,er2)
	cmp.l	#1,er6
	beq	.L561
	mov.w	r1,@(4,er2)
	cmp.l	#2,er6
	beq	.L561
	mov.w	r1,@(6,er2)
	cmp.l	#3,er6
	beq	.L561
	mov.w	r1,@(8,er2)
	cmp.l	#4,er6
	beq	.L561
	mov.w	r1,@(10,er2)
.L561:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L567:
	mov.l	er0,@(4,er7)
	bra	.L563:16
.L566:
	mov.l	er0,er2
	bra	.L562
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	cmp.l	er1,er0
	bhs	.L591
	mov.l	er0,er5
	add.l	er2,er5
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L590
.L593:
	subs	#1,er5
	mov.b	@er5,r4l
	subs	#1,er1
	mov.b	r4l,@er1
	cmp.l	er5,er0
	bne	.L593
.L590:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L591:
	beq	.L590
	mov.l	er2,er2
	beq	.L590
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#6,er3
	bls	.L594
	mov.l	er1,er4
	or.l	er0,er4
	and.l	#3,er4
	beq	.L622
.L594:
	add.l	er0,er2
.L600:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
	cmp.l	er0,er2
	bne	.L600
	bra	.L590
.L622:
	mov.l	er0,er5
	adds	#1,er5
	mov.l	er1,er6
	sub.l	er5,er6
	cmp.l	#2,er6
	bls	.L594
	mov.l	er1,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er0,er5
	add.l	er6,er5
.L597:
	mov.l	@er0+,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er0,er5
	bne	.L597
	add.l	er6,er1
	mov.l	er2,er0
	sub.l	er6,er0
	cmp.l	er6,er2
	beq	.L590
	mov.b	@er5,r2l
	mov.b	r2l,@er1
	cmp.l	#1,er0
	beq	.L590
	mov.b	@(1,er5),r3l
	mov.b	r3l,@(1,er1)
	cmp.l	#2,er0
	beq	.L590:16
	mov.b	@(2,er5),r6l
	mov.b	r6l,@(2,er1)
	bra	.L590:16
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
	bmi	.L624
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L630
.L629:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L629
.L630:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L626
.L628:
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L632
.L631:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L631
.L632:
.L627:
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er1,er4
	or.l	er5,er4
	mov.l	er2,er0
	mov.l	er4,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L624:
	mov.l	er1,er6
	mov.w	#31,r0
	sub.w	r2,r0
	shlr.l	er6
	mov.b	r0l,r0l
	ble	.L634
.L633:
	shlr.l	er6
	add.b	#-1,r0l
	bne	.L633
.L634:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L636
.L635:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L635
.L636:
	or.l	er6,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L638
.L637:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L637
.L638:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bpl	.L628
.L626:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r6
	sub.w	r2,r6
	mov.b	r6l,r6l
	ble	.L640
.L639:
	shll.l	er3
	add.b	#-1,r6l
	bne	.L639
.L640:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L642
.L641:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L641
.L642:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L644
.L643:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L643
.L644:
	bra	.L627:16
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
	bmi	.L646
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L652
.L651:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L651
.L652:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L648
.L650:
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L654
.L653:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L653
.L654:
.L649:
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er1,er4
	or.l	er5,er4
	mov.l	er2,er0
	mov.l	er4,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L646:
	mov.l	er0,er6
	mov.w	#31,r0
	sub.w	r2,r0
	shll.l	er6
	mov.b	r0l,r0l
	ble	.L656
.L655:
	shll.l	er6
	add.b	#-1,r0l
	bne	.L655
.L656:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L658
.L657:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L657
.L658:
	or.l	er6,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L660
.L659:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L659
.L660:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bpl	.L650
.L648:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r6
	sub.w	r2,r6
	mov.b	r6l,r6l
	ble	.L662
.L661:
	shlr.l	er3
	add.b	#-1,r6l
	bne	.L661
.L662:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L664
.L663:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L663
.L664:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L666
.L665:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L665
.L666:
	bra	.L649:16
	.size	_rotr64, .-_rotr64
	.align 1
	.global _rotl32
_rotl32:
	mov.b	r1l,r1l
	ble	.L671
.L668:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L668
.L671:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L676
.L673:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L673
.L676:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L681
.L678:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L678
.L681:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L686
.L683:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L683
.L686:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L691
.L688:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L688
.L691:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L696
.L693:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L693
.L696:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L701
.L698:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L698
.L701:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L706
.L703:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L703
.L706:
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
	mov.l	er2,er6
	mov.l	@er7,er3
	mov.w	e3,r2
	mov.b	r3h,r3l
	mov.b	r2l,r3h
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,e3
	sub.l	er2,er2
	sub.l	er4,er4
	mov.b	r3h,r4h
	or.l	er2,er6
	or.l	er4,er0
	mov.l	er0,er4
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
	mov.l	er3,er5
	or.l	er2,er5
	sub.l	er2,er2
	mov.l	er5,er0
	sub.w	r0,r0
	extu.w	e0
	or.l	er2,er6
	or.l	er0,er4
	mov.l	@er7,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	@(4,er7),er3
	mov.w	e3,r5
	mov.b	r3h,r3l
	mov.b	r5l,r3h
	mov.b	r5h,r5l
	extu.w	r5
	mov.w	r5,e3
	or.l	er2,er3
	sub.l	er1,er1
	mov.l	er3,er5
	and.l	#-16777216,er5
	or.l	er1,er6
	mov.l	er6,@(8,er7)
	or.l	er5,er4
	mov.l	er4,@(12,er7)
	mov.l	@(4,er7),er0
	shll.l	er0
	mov.l	@(4,er7),er2
	cmp.l	er2,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@er7,er5
	shll.l	er5
	mov.l	er5,er6
	add.l	er1,er6
	mov.l	er0,er4
	shll.l	er4
	mov.l	er4,@(20,er7)
	cmp.l	er0,er4
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	er6,er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	@(20,er7),er1
	cmp.l	er1,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er6,er4
	mov.l	er2,er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	cmp.l	er2,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	@(20,er7),er1
	cmp.l	er1,er5
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er6,er4
	mov.l	er5,er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	cmp.l	er5,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	er4,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	@(20,er7),er1
	cmp.l	er1,er5
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er6,er4
	mov.l	er5,er0
	shll.l	er0
	cmp.l	er5,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	er4,er2
	shll.l	er2
	mov.l	er2,er1
	add.l	er5,er1
	and	#0,r1h
	sub.w	e1,e1
	mov.l	er1,er6
	mov.l	@(8,er7),er4
	or.l	er4,er6
	mov.l	@(12,er7),er5
	mov.l	@(4,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(4,er7),er2
	mov.l	@(20,er7),er3
	cmp.l	er2,er3
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@er7,er4
	shll.l	er4
	add.l	er1,er4
	mov.l	er4,@(16,er7)
	mov.l	er3,er0
	shll.l	er0
	mov.l	er0,@(28,er7)
	cmp.l	er3,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	mov.l	@(28,er7),er4
	cmp.l	er4,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(24,er7),er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er2
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er4,er0
	mov.l	er0,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er4
	shll.l	er4
	add.l	er1,er4
	mov.l	er4,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(28,er7)
	mov.l	@(20,er7),er2
	cmp.l	er2,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(24,er7)
	mov.l	@(28,er7),er4
	shll.l	er4
	mov.l	er4,@(20,er7)
	mov.l	@(28,er7),er0
	cmp.l	er0,er4
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er1
	shll.l	er1
	mov.l	er1,@(28,er7)
	mov.l	@(20,er7),er4
	cmp.l	er4,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er1
	cmp.l	er1,er2
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(24,er7),er0
	shll.l	er0
	add.l	er4,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er1,er4
	mov.l	er4,@(24,er7)
	mov.l	@(28,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(28,er7),er2
	cmp.l	er2,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er4
	shll.l	er4
	mov.l	er4,@(28,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er4
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	mov.l	@(28,er7),er4
	cmp.l	er4,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(24,er7),er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er2
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er4,er0
	mov.l	er0,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er4
	shll.l	er4
	add.l	er1,er4
	mov.l	er4,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(28,er7)
	mov.l	@(20,er7),er2
	cmp.l	er2,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(24,er7)
	mov.l	@(28,er7),er4
	shll.l	er4
	mov.l	er4,@(20,er7)
	mov.l	@(28,er7),er0
	cmp.l	er0,er4
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er1
	shll.l	er1
	mov.l	er1,@(28,er7)
	mov.l	@(20,er7),er4
	cmp.l	er4,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er1
	cmp.l	er1,er2
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(24,er7),er0
	shll.l	er0
	add.l	er4,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er1,er4
	mov.l	er4,@(24,er7)
	mov.l	@(28,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(28,er7),er2
	cmp.l	er2,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er4
	shll.l	er4
	mov.l	er4,@(28,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er4
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(28,er7),er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	mov.l	@(28,er7),er4
	cmp.l	er4,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(24,er7),er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	@(20,er7),er4
	cmp.l	er4,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er3,er0
	and	#0,r0l
	sub.w	e0,e0
	or.l	er0,er6
	mov.l	@(4,er7),er1
	mov.w	e1,r4
	mov.b	r4l,r4h
	mov.b	r1h,r4l
	mov.b	r1l,r1h
	sub.b	r1l,r1l
	mov.w	r4,e1
	sub.w	r1,r1
	extu.w	e1
	or.l	er1,er6
	mov.l	er6,er0
	mov.l	er5,er1
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
	bne	.L745
	btst	#1,r0l
	bne	.L746
	btst	#2,r0l
	bne	.L747
	btst	#3,r0l
	bne	.L748
	btst	#4,r0l
	bne	.L749
	btst	#5,r0l
	bne	.L750
	btst	#6,r0l
	bne	.L751
	btst	#7,r0l
	bne	.L752
	btst	#0,r0h
	bne	.L753
	btst	#1,r0h
	bne	.L754
	btst	#2,r0h
	bne	.L755
	btst	#3,r0h
	bne	.L756
	btst	#4,r0h
	bne	.L757
	btst	#5,r0h
	bne	.L758
	btst	#6,r0h
	bne	.L759
	mov.w	r0,r0
	bne	.L761
	sub.w	r0,r0
	rts
.L745:
	mov.w	#1,r0
	rts
.L746:
	mov.w	#2,r0
	rts
.L757:
	mov.w	#13,r0
	rts
.L747:
	mov.w	#3,r0
	rts
.L748:
	mov.w	#4,r0
	rts
.L749:
	mov.w	#5,r0
	rts
.L750:
	mov.w	#6,r0
	rts
.L751:
	mov.w	#7,r0
	rts
.L752:
	mov.w	#8,r0
	rts
.L753:
	mov.w	#9,r0
	rts
.L754:
	mov.w	#10,r0
	rts
.L755:
	mov.w	#11,r0
	rts
.L756:
	mov.w	#12,r0
	rts
.L758:
	mov.w	#14,r0
	rts
.L759:
	mov.w	#15,r0
	rts
.L761:
	mov.w	#16,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L765
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L768
	mov.w	#1,r0
.L764:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L764
	rts
.L765:
	sub.w	r0,r0
.L768:
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
	bmi	.L773
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L774
.L772:
	mov.w	r5,r0
.L770:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L773:
	mov.w	#1,r0
	bra	.L770
.L774:
	sub.w	r5,r5
	bra	.L772
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
	bmi	.L778
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L779
.L777:
	mov.w	r5,r0
.L775:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L778:
	mov.w	#1,r0
	bra	.L775
.L779:
	sub.w	r5,r5
	bra	.L777
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
	bmi	.L783
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L784
.L782:
	mov.w	r5,r0
.L780:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L783:
	mov.w	#1,r0
	bra	.L780
.L784:
	sub.w	r5,r5
	bra	.L782
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
	bne	.L787
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L787
	mov.w	r4,r4
	bmi	.L803
	mov.l	#1073741824,er1
.L789:
	btst	#0,r4l
	beq	.L790
.L792:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L790:
	mov.w	r4,r4
	bpl	.L791
	inc #1,r4
.L791:
	shar.w	r4
	beq	.L787
.L794:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L792
	mov.w	r4,r4
	bmi	.L804
	shar.w	r4
	bra	.L794
.L787:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L804:
	inc #1,r4
	shar.w	r4
	bra	.L794
.L803:
	mov.l	#1056964608,er1
	bra	.L789
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
	bne	.L806
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L806
	mov.w	r4,r4
	bmi	.L822
	mov.l	#1073741824,er1
.L808:
	btst	#0,r4l
	beq	.L809
.L811:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L809:
	mov.w	r4,r4
	bpl	.L810
	inc #1,r4
.L810:
	shar.w	r4
	beq	.L806
.L813:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L811
	mov.w	r4,r4
	bmi	.L823
	shar.w	r4
	bra	.L813
.L806:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L823:
	inc #1,r4
	shar.w	r4
	bra	.L813
.L822:
	mov.l	#1056964608,er1
	bra	.L808
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
	bne	.L825
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L825
	mov.w	r4,r4
	bmi	.L841
	mov.l	#1073741824,er1
.L827:
	btst	#0,r4l
	beq	.L828
.L830:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L828:
	mov.w	r4,r4
	bpl	.L829
	inc #1,r4
.L829:
	shar.w	r4
	beq	.L825
.L832:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L830
	mov.w	r4,r4
	bmi	.L842
	shar.w	r4
	bra	.L832
.L825:
	mov.l	er5,er0
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L842:
	inc #1,r4
	shar.w	r4
	bra	.L832
.L841:
	mov.l	#1056964608,er1
	bra	.L827
	.size	_ldexpl, .-_ldexpl
	.align 1
	.global _memxor
_memxor:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.l	er2,er2
	beq	.L844:16
	mov.l	er2,er3
	subs	#1,er3
	cmp.l	#3,er3
	bls	.L845:16
	mov.l	er0,er4
	or.l	er1,er4
	and.l	#3,er4
	bne	.L845
	mov.l	er0,er3
	mov.l	er2,er6
	and	#252,r6l
	mov.l	er6,@er7
	mov.l	er1,er5
	add.l	er6,er5
.L846:
	mov.l	@er1+,er4
	mov.l	@er3,er6
	xor.l	er6,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.l	er1,er5
	bne	.L846
	mov.l	er0,er3
	mov.l	@er7,er4
	add.l	er4,er3
	mov.l	er2,er1
	sub.l	er4,er1
	cmp.l	er4,er2
	beq	.L844
	mov.b	@er3,r2l
	mov.b	@er5,r6l
	xor	r6l,r2l
	mov.b	r2l,@er3
	cmp.l	#1,er1
	beq	.L844
	mov.b	@(1,er3),r2l
	mov.b	@(1,er5),r4l
	xor	r4l,r2l
	mov.b	r2l,@(1,er3)
	cmp.l	#2,er1
	beq	.L844
	mov.b	@(2,er5),r5l
	mov.b	@(2,er3),r1l
	xor	r1l,r5l
	mov.b	r5l,@(2,er3)
.L844:
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L845:
	mov.l	er0,er3
	add.l	er1,er2
.L848:
	mov.b	@er1+,r6l
	mov.b	@er3,r4l
	xor	r4l,r6l
	mov.b	r6l,@er3
	adds	#1,er3
	cmp.l	er1,er2
	bne	.L848
	bra	.L844
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er4,@-er7
	mov.b	@er0,r3l
	beq	.L868
	mov.l	er0,er3
.L863:
	adds	#1,er3
	mov.b	@er3,r4l
	bne	.L863
.L862:
	mov.l	er2,er2
	bne	.L864
	bra	.L865
.L866:
	adds	#1,er1
	adds	#1,er3
	dec.l	#1,er2
	beq	.L865
.L864:
	mov.b	@er1,r4l
	mov.b	r4l,@er3
	mov.b	r4l,r4l
	bne	.L866
.L867:
	mov.l	@er7+,er4
	rts
.L865:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
	bra	.L867
.L868:
	mov.l	er0,er3
	bra	.L862
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L881
.L875:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L877
	rts
.L877:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L875
	rts
.L881:
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	beq	.L888
.L884:
	mov.l	er1,er2
	bra	.L887
.L886:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L885
.L887:
	mov.b	@er2,r3l
	bne	.L886
	adds	#1,er0
	mov.b	@er0,r4l
	bne	.L884
.L888:
	sub.l	er0,er0
.L885:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er4,er4
	bra	.L894
.L897:
	mov.l	er4,er0
	mov.l	er0,er4
	adds	#1,er2
	mov.b	r3l,r3l
	beq	.L898
.L894:
	mov.b	@er2,r3l
	mov.b	r3l,r0l
	extu.w	r0
	cmp.w	r1,r0
	bne	.L897
	mov.l	er2,er0
	mov.l	er0,er4
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L894
.L898:
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
	beq	.L899
.L901:
	adds	#1,er2
	mov.b	@er2,r3l
	bne	.L901
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	beq	.L899
	subs	#1,er2
	mov.l	er2,@(8,er7)
	bra	.L909
.L921:
	adds	#1,er0
	mov.b	r2l,r2l
	beq	.L920
.L909:
	mov.b	@er0,r2l
	cmp.b	r4l,r2l
	bne	.L921
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(4,er7),er6
	mov.l	er0,er3
	mov.b	r4l,r1l
	mov.b	r4l,@(3,er7)
	bra	.L903
.L923:
	mov.l	er4,er6
.L903:
	cmp.l	er5,er3
	beq	.L919
	cmp.b	r1l,r2l
	bne	.L918
	adds	#1,er3
	mov.l	er6,er4
	adds	#1,er4
	mov.b	@er3,r2l
	beq	.L922
	mov.b	@er4,r1l
	bne	.L923
.L918:
	mov.b	@(3,er7),r4l
	adds	#1,er0
	bra	.L909
.L920:
	sub.l	er0,er0
.L899:
	add.l	#12,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L919:
	mov.b	@(3,er7),r4l
.L905:
	cmp.b	r1l,r2l
	beq	.L899
	adds	#1,er0
	bra	.L909
.L922:
	mov.b	@(3,er7),r4l
	mov.b	@(1,er6),r1l
	bra	.L905
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
	bmi	.L934
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L928
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L927
.L928:
	mov.l	er4,er0
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L934:
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L928
.L927:
	xor.w	#32768,e4
	bra	.L928
	.size	_copysign, .-_copysign
	.align 1
	.global _memmem
_memmem:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#16,er7
	mov.l	@(32,er7),er3
	beq	.L935:16
	cmp.l	er3,er1
	blo	.L946:16
	sub.l	er3,er1
	add.l	er0,er1
	cmp.l	er1,er0
	bhi	.L946:16
	mov.b	@er2+,r6l
	mov.l	er2,@(4,er7)
	subs	#1,er3
	mov.l	er3,@er7
	bra	.L941
.L945:
	mov.l	er4,er0
.L937:
	cmp.l	er0,er1
	blo	.L946
.L941:
	mov.l	er0,er4
	mov.b	@er4+,r2l
	cmp.b	r6l,r2l
	bne	.L945
	mov.l	@(4,er7),er3
	mov.l	@er7,er2
	beq	.L935
.L940:
	mov.l	er4,er2
	mov.l	@er7,er5
	add.l	er4,er5
	mov.l	er1,@(8,er7)
	mov.l	er0,@(12,er7)
	bra	.L938
.L939:
	adds	#1,er2
	adds	#1,er3
	cmp.l	er5,er2
	beq	.L952
.L938:
	mov.b	@er2,r0l
	mov.b	@er3,r1l
	cmp.b	r1l,r0l
	beq	.L939
	mov.l	@(8,er7),er1
	cmp.l	er1,er4
	bhi	.L946
	mov.l	er4,er0
	mov.b	@er0+,r5l
	cmp.b	r5l,r6l
	bne	.L937
	mov.l	@(4,er7),er3
	mov.l	er4,er2
	mov.l	er0,er4
	mov.l	er2,er0
	bra	.L940
.L952:
	mov.l	@(12,er7),er0
.L935:
	add.l	#16,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L946:
	sub.l	er0,er0
	bra	.L935
	.size	_memmem, .-_memmem
	.align 1
	.global _mempcpy
_mempcpy:
	mov.l	er4,@-er7
	mov.l	er0,er3
	mov.l	er2,er4
	beq	.L955
	mov.l	er4,er2
	jsr	@_memmove
	mov.l	er0,er3
.L955:
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
	bmi	.L981:16
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L982
	sub.w	r1,r1
	mov.w	r1,@(6,er7)
.L962:
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L968:
	inc #1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L968
.L969:
	mov.l	@er7,er0
	mov.w	r6,@er0
	mov.l	er4,er0
	mov.w	@(6,er7),r2
	beq	.L959
	xor.w	#32768,e0
.L959:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L982:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L965
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L974
.L965:
	sub.w	r2,r2
	mov.l	@er7,er3
	mov.w	r2,@er3
	mov.l	er4,er0
	bra	.L959
.L981:
	mov.l	er4,er5
	xor.w	#32768,e5
	mov.l	#3212836864,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	bgt	.L983
	mov.l	er5,er4
	mov.w	#1,r3
	mov.w	r3,@(6,er7)
	bra	.L962:16
.L983:
	mov.l	#3204448256,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L972
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er4,er0
	bra	.L959
.L972:
	mov.w	#1,r4
	mov.w	r4,@(6,er7)
.L963:
	mov.l	er5,er4
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L970:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L970
	bra	.L969:16
.L974:
	mov.l	er4,er5
	sub.w	r0,r0
	mov.w	r0,@(6,er7)
	bra	.L963
	.size	_frexp, .-_frexp
	.align 1
	.global ___muldi3
___muldi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#40,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(56,er7),er0
	mov.l	er0,@er7
	mov.l	@(60,er7),er1
	mov.l	er1,@(4,er7)
	mov.l	er2,er4
	mov.l	er3,er5
	or.l	er3,er2
	beq	.L991:16
	sub.l	er6,er6
	mov.l	er6,@(16,er7)
	mov.l	er6,@(20,er7)
.L990:
	sub.l	er2,er2
	mov.l	er2,@(24,er7)
	sub.l	er3,er3
	mov.b	r5l,r3l
	and	#1,r3l
	mov.l	er3,@(28,er7)
	sub.l	er0,er0
	mov.l	@(28,er7),er1
	neg.l	er1
	mov.l	er1,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L987
	sub.l	er6,er6
.L987:
	mov.l	@(24,er7),er2
	sub.l	er2,er0
	mov.l	er0,er1
	sub.l	er6,er1
	mov.l	@er7,er0
	and.l	er1,er0
	mov.l	er0,@(32,er7)
	mov.l	er3,er6
	mov.l	@(4,er7),er3
	and.l	er3,er6
	mov.l	er6,@(36,er7)
	mov.l	@(20,er7),er2
	mov.l	@(36,er7),er1
	add.l	er1,er2
	mov.l	er2,er3
	mov.l	@(20,er7),er0
	cmp.l	er0,er2
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er2
	mov.l	@(32,er7),er6
	add.l	er6,er2
	add.l	er2,er0
	mov.l	er0,@(16,er7)
	mov.l	er3,@(20,er7)
	mov.l	@(4,er7),er1
	shll.l	er1
	mov.l	@(4,er7),er0
	cmp.l	er0,er1
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er2,er6
	mov.l	er6,@er7
	mov.l	er1,@(4,er7)
	shlr.l	er5
	rotxl.l	er5
	bor	#0,r4l
	rotxr.l	er5
	mov.l	er5,@(12,er7)
	mov.l	er4,er1
	shlr.l	er1
	mov.l	er1,@(8,er7)
	mov.l	er1,er4
	mov.l	@(12,er7),er5
	or.l	er5,er1
	bne	.L990:16
.L984:
	mov.l	@(16,er7),er0
	mov.l	@(20,er7),er1
	add.l	#40,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L991:
	sub.l	er3,er3
	mov.l	er3,@(16,er7)
	mov.l	er3,@(20,er7)
	bra	.L984
	.size	___muldi3, .-___muldi3
	.align 1
	.global _udivmodsi4
_udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er3
	cmp.l	er0,er1
	bhs	.L1022
	mov.w	#32,r0
	sub.l	er4,er4
	add.b	#1,r4l
	bra	.L994
.L998:
	shll.l	er1
	shll.l	er4
	cmp.l	er1,er3
	bls	.L996
	dec #1,r0
	beq	.L1014
.L994:
	mov.l	er1,er1
	bpl	.L998
.L999:
	sub.l	er0,er0
	bra	.L1006
.L1023:
	mov.l	er4,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	beq	.L997
.L1006:
	mov.l	er3,er6
	sub.l	er1,er6
	cmp.l	er1,er3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.l	er1,er3
	blo	.L1003
	mov.l	er6,er3
.L1003:
	mov.b	r5l,r5l
	bne	.L1023
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	bne	.L1006
.L997:
	mov.l	er2,er2
	beq	.L993
	mov.l	er3,er0
.L993:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L996:
	mov.l	er4,er4
	bne	.L999
.L1014:
	sub.l	er0,er0
	bra	.L997
.L1022:
	mov.l	er0,er4
	sub.l	er1,er4
	mov.b	#1,r0l
	cmp.l	er3,er1
	bls	.L1017
	sub.b	r0l,r0l
	cmp.l	er3,er1
	bls	.L1017
.L1011:
	extu.w	r0
	extu.l	er0
	bra	.L997
.L1017:
	mov.l	er4,er3
	bra	.L1011
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L1026
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L1026:
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
	mov.l	er1,er5
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,er3
	mov.l	er4,er0
	xor.l	er3,er0
	mov.l	er0,@er7
	xor.l	er3,er1
	mov.l	er1,@(4,er7)
	cmp.l	er3,er4
	beq	.L1033
.L1031:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
.L1027:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1033:
	cmp.l	er3,er5
	bne	.L1031
	mov.w	#63,r0
	bra	.L1027
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.l	er4,@-er7
	mov.w	r0,r2
	beq	.L1037:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034:16
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
	beq	.L1034
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
	beq	.L1034
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
	beq	.L1034
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
.L1034:
	mov.l	@er7+,er4
	rts
.L1037:
	sub.w	r0,r0
	bra	.L1034
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
	blo	.L1081
	mov.w	r4,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bls	.L1112:16
.L1081:
	mov.w	r6,r6
	beq	.L1084:16
	mov.l	er1,er2
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.l	er0,@(4,er7)
	mov.l	er1,er5
.L1085:
	mov.l	@er2,er0
	mov.l	@(4,er2),er1
	mov.l	er0,@er3
	mov.l	er1,@(4,er3)
	adds	#4,er2
	adds	#4,er2
	adds	#4,er3
	adds	#4,er3
	cmp.l	er6,er2
	bne	.L1085
	mov.l	@(4,er7),er0
	mov.l	er5,er1
	mov.w	@(2,er7),r3
	cmp.w	r3,r4
	bls	.L1080
	mov.w	r4,r6
	sub.w	r3,r6
	mov.w	r6,@(4,er7)
	dec #1,r6
	extu.l	er3
	cmp.w	#6,r6
	bls	.L1087
	mov.l	er0,er2
	add.l	er3,er2
	add.l	er3,er5
	mov.l	er5,@(8,er7)
	mov.l	er3,er5
	adds	#1,er5
	add.l	er1,er5
	mov.l	er2,er6
	sub.l	er5,er6
	cmp.l	#2,er6
	bhi	.L1113
.L1087:
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
.L1092:
	mov.b	@er2+,r4l
	mov.b	r4l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L1092
.L1080:
	add.l	#12,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1113:
	mov.l	@(8,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L1087
	mov.l	er6,er3
	mov.w	@(4,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L1090:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L1090
	mov.w	@(4,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@(2,er7),r6
	add.w	r6,r2
	and.w	#3,r3
	beq	.L1080
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r6l
	add.l	er0,er3
	mov.b	r6l,@er3
	mov.w	r2,r3
	inc #1,r3
	cmp.w	r3,r4
	bls	.L1080
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r6l
	add.l	er0,er3
	mov.b	r6l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L1080:16
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r1l
	add.l	er0,er2
	mov.b	r1l,@er2
	bra	.L1080:16
.L1112:
	mov.w	r4,r5
	dec #1,r5
	mov.w	r4,r4
	beq	.L1080:16
	extu.l	er5
.L1094:
	mov.l	er1,er4
	add.l	er5,er4
	mov.b	@er4,r6l
	mov.l	er0,er2
	add.l	er5,er2
	mov.b	r6l,@er2
	subs	#1,er5
	cmp.l	#-1,er5
	bne	.L1094
	bra	.L1080:16
.L1084:
	mov.w	r4,r4
	beq	.L1080:16
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L1087:16
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
	blo	.L1115
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bls	.L1142:16
.L1115:
	mov.w	r5,r5
	beq	.L1118
	mov.w	r5,r4
	dec #1,r4
	cmp.w	#8,r4
	bls	.L1119
	mov.l	er1,er6
	or.l	er0,er6
	and.l	#3,er6
	beq	.L1143
.L1119:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er5
	shll.l	er5
	add.l	er1,er5
.L1124:
	mov.w	@er4+,r6
	mov.w	r6,@er3
	adds	#2,er3
	cmp.l	er4,er5
	bne	.L1124
.L1118:
	btst	#0,r2l
	beq	.L1114
.L1144:
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r1l
	add.l	er0,er2
	mov.b	r1l,@er2
.L1114:
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1143:
	mov.l	er1,er3
	adds	#2,er3
	cmp.l	er3,er0
	beq	.L1119
	mov.w	r2,r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r3,@er7
	mov.l	er1,er4
	extu.l	er3
	mov.l	er3,er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er0,er3
.L1122:
	mov.l	@er4+,er5
	mov.l	er5,@er3
	adds	#4,er3
	cmp.l	er6,er4
	bne	.L1122
	mov.w	@(2,er7),r4
	mov.w	@er7,r6
	shll.w	r6
	cmp.w	r6,r4
	beq	.L1118
	extu.l	er6
	shll.l	er6
	mov.l	er1,er3
	add.l	er6,er3
	mov.w	@er3,r5
	add.l	er0,er6
	mov.w	r5,@er6
	btst	#0,r2l
	beq	.L1114
	bra	.L1144
.L1142:
	mov.w	r2,r4
	dec #1,r4
	mov.w	r2,r2
	beq	.L1114
	mov.w	r4,r2
	extu.l	er2
.L1127:
	mov.l	er1,er6
	add.l	er2,er6
	mov.b	@er6,r5l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r5l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L1127
	bra	.L1114:16
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
	blo	.L1146
	mov.w	r4,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bls	.L1186:16
.L1146:
	mov.w	r6,r6
	beq	.L1187:16
	mov.w	r6,r3
	dec #1,r3
	cmp.w	#8,r3
	bls	.L1151
	mov.l	er0,er5
	or.l	er1,er5
	and.l	#3,er5
	beq	.L1188:16
.L1151:
	mov.l	er1,er3
	mov.l	er0,er2
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L1156:
	mov.w	@er3+,r5
	mov.w	r5,@er2
	adds	#2,er2
	cmp.l	er6,er3
	bne	.L1156
.L1157:
	mov.w	@er7,r3
	cmp.w	r3,r4
	bls	.L1145
	mov.w	r4,r5
	sub.w	r3,r5
	mov.w	r5,@(2,er7)
	dec #1,r5
	extu.l	er3
	cmp.w	#6,r5
	bls	.L1150
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
	bhi	.L1189:16
.L1150:
	mov.l	er1,er2
	add.l	er3,er2
	add.l	er3,er0
	dec #1,r4
	mov.w	@er7,r6
	sub.w	r6,r4
	extu.l	er4
	adds	#1,er1
	add.l	er3,er1
	add.l	er4,er1
.L1162:
	mov.b	@er2+,r4l
	mov.b	r4l,@er0
	adds	#1,er0
	cmp.l	er1,er2
	bne	.L1162
.L1145:
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1188:
	mov.l	er1,er2
	adds	#2,er2
	cmp.l	er2,er0
	beq	.L1151:16
	mov.w	r4,r2
	shlr.w	r2
	shlr.w	r2
	shlr.w	r2
	mov.w	r2,@(2,er7)
	mov.l	er1,er3
	extu.l	er2
	mov.l	er2,er5
	shll.l	er5
	shll.l	er5
	add.l	er1,er5
	mov.w	r6,@(4,er7)
	mov.l	er0,er2
.L1154:
	mov.l	@er3+,er6
	mov.l	er6,@er2
	adds	#4,er2
	cmp.l	er5,er3
	bne	.L1154
	mov.w	@(4,er7),r3
	mov.w	@(2,er7),r5
	shll.w	r5
	cmp.w	r5,r3
	beq	.L1157:16
	extu.l	er5
	shll.l	er5
	mov.l	er1,er2
	add.l	er5,er2
	mov.w	@er2,r6
	add.l	er0,er5
	mov.w	r6,@er5
	bra	.L1157:16
.L1189:
	mov.l	@(4,er7),er6
	mov.l	er6,er5
	or.l	er2,er5
	and.l	#3,er5
	bne	.L1150:16
	mov.l	er6,er3
	mov.w	@(2,er7),r6
	shlr.w	r6
	shlr.w	r6
	extu.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er3,er6
.L1160:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.l	er6,er3
	bne	.L1160
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	and	#252,r2l
	mov.w	@er7,r6
	add.w	r6,r2
	and.w	#3,r3
	beq	.L1145:16
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r6l
	add.l	er0,er3
	mov.b	r6l,@er3
	mov.w	r2,r3
	inc #1,r3
	cmp.w	r3,r4
	bls	.L1145:16
	extu.l	er3
	mov.l	er1,er5
	add.l	er3,er5
	mov.b	@er5,r6l
	add.l	er0,er3
	mov.b	r6l,@er3
	inc #2,r2
	cmp.w	r2,r4
	bls	.L1145:16
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r1l
	add.l	er0,er2
	mov.b	r1l,@er2
	bra	.L1145:16
.L1186:
	mov.w	r4,r5
	dec #1,r5
	mov.w	r4,r4
	beq	.L1145:16
	extu.l	er5
.L1164:
	mov.l	er1,er4
	add.l	er5,er4
	mov.b	@er4,r6l
	mov.l	er0,er2
	add.l	er5,er2
	mov.b	r6l,@er2
	subs	#1,er5
	cmp.l	#-1,er5
	bne	.L1164
	bra	.L1145:16
.L1187:
	mov.w	r4,r4
	beq	.L1145:16
	mov.w	@er7,r3
	extu.l	er3
	bra	.L1150:16
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
	bmi	.L1199
	btst	#6,r0h
	bne	.L1200
	btst	#5,r0h
	bne	.L1201
	btst	#4,r0h
	bne	.L1202
	btst	#3,r0h
	bne	.L1203
	btst	#2,r0h
	bne	.L1204
	btst	#1,r0h
	bne	.L1205
	btst	#0,r0h
	bne	.L1206
	btst	#7,r0l
	bne	.L1207
	btst	#6,r0l
	bne	.L1208
	btst	#5,r0l
	bne	.L1209
	btst	#4,r0l
	bne	.L1210
	btst	#3,r0l
	bne	.L1211
	btst	#2,r0l
	bne	.L1212
	btst	#1,r0l
	bne	.L1213
	mov.w	r0,r0
	bne	.L1215
	mov.w	#16,r0
	rts
.L1199:
	sub.w	r0,r0
	rts
.L1200:
	mov.w	#1,r0
	rts
.L1211:
	mov.w	#12,r0
	rts
.L1201:
	mov.w	#2,r0
	rts
.L1202:
	mov.w	#3,r0
	rts
.L1203:
	mov.w	#4,r0
	rts
.L1204:
	mov.w	#5,r0
	rts
.L1205:
	mov.w	#6,r0
	rts
.L1206:
	mov.w	#7,r0
	rts
.L1207:
	mov.w	#8,r0
	rts
.L1208:
	mov.w	#9,r0
	rts
.L1209:
	mov.w	#10,r0
	rts
.L1210:
	mov.w	#11,r0
	rts
.L1212:
	mov.w	#13,r0
	rts
.L1213:
	mov.w	#14,r0
	rts
.L1215:
	mov.w	#15,r0
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	btst	#0,r0l
	bne	.L1219
	btst	#1,r0l
	bne	.L1220
	btst	#2,r0l
	bne	.L1221
	btst	#3,r0l
	bne	.L1222
	btst	#4,r0l
	bne	.L1223
	btst	#5,r0l
	bne	.L1224
	btst	#6,r0l
	bne	.L1225
	btst	#7,r0l
	bne	.L1226
	btst	#0,r0h
	bne	.L1227
	btst	#1,r0h
	bne	.L1228
	btst	#2,r0h
	bne	.L1229
	btst	#3,r0h
	bne	.L1230
	btst	#4,r0h
	bne	.L1231
	btst	#5,r0h
	bne	.L1232
	btst	#6,r0h
	bne	.L1233
	mov.w	r0,r0
	bne	.L1235
	mov.w	#16,r0
	rts
.L1219:
	sub.w	r0,r0
	rts
.L1220:
	mov.w	#1,r0
	rts
.L1231:
	mov.w	#12,r0
	rts
.L1221:
	mov.w	#2,r0
	rts
.L1222:
	mov.w	#3,r0
	rts
.L1223:
	mov.w	#4,r0
	rts
.L1224:
	mov.w	#5,r0
	rts
.L1225:
	mov.w	#6,r0
	rts
.L1226:
	mov.w	#7,r0
	rts
.L1227:
	mov.w	#8,r0
	rts
.L1228:
	mov.w	#9,r0
	rts
.L1229:
	mov.w	#10,r0
	rts
.L1230:
	mov.w	#11,r0
	rts
.L1232:
	mov.w	#13,r0
	rts
.L1233:
	mov.w	#14,r0
	rts
.L1235:
	mov.w	#15,r0
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
	bpl	.L1242
	mov.l	er4,er0
	jsr	@___fixsfsi
.L1236:
	mov.l	@er7+,er4
	rts
.L1242:
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L1236
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
	sub.l	er1,er1
	bld	#2,r2l
	rotxl.l	er1
	add.w	r1,r0
	sub.l	er3,er3
	bld	#3,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er1,er1
	bld	#4,r2l
	rotxl.l	er1
	add.w	r1,r0
	sub.l	er3,er3
	bld	#5,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er1,er1
	bld	#6,r2l
	rotxl.l	er1
	add.w	r1,r0
	sub.l	er3,er3
	bld	#7,r2l
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er1,er1
	bld	#0,r2h
	rotxl.l	er1
	add.w	r1,r0
	sub.l	er3,er3
	bld	#1,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er1,er1
	bld	#2,r2h
	rotxl.l	er1
	add.w	r1,r0
	sub.l	er3,er3
	bld	#3,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er1,er1
	bld	#4,r2h
	rotxl.l	er1
	add.w	r1,r0
	sub.l	er3,er3
	bld	#5,r2h
	rotxl.l	er3
	add.w	r3,r0
	sub.l	er1,er1
	bld	#6,r2h
	rotxl.l	er1
	add.w	r1,r0
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
	sub.l	er1,er1
	bld	#2,r0l
	rotxl.l	er1
	add.w	r1,r2
	sub.l	er3,er3
	bld	#3,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er1,er1
	bld	#4,r0l
	rotxl.l	er1
	add.w	r1,r2
	sub.l	er3,er3
	bld	#5,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er1,er1
	bld	#6,r0l
	rotxl.l	er1
	add.w	r1,r2
	sub.l	er3,er3
	bld	#7,r0l
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er1,er1
	bld	#0,r0h
	rotxl.l	er1
	add.w	r1,r2
	sub.l	er3,er3
	bld	#1,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er1,er1
	bld	#2,r0h
	rotxl.l	er1
	add.w	r1,r2
	sub.l	er3,er3
	bld	#3,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er1,er1
	bld	#4,r0h
	rotxl.l	er1
	add.w	r1,r2
	sub.l	er3,er3
	bld	#5,r0h
	rotxl.l	er3
	add.w	r3,r2
	sub.l	er1,er1
	bld	#6,r0h
	rotxl.l	er1
	add.w	r1,r2
	rotl.w	r0
	and.w	#1,r0
	add.w	r2,r0
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L1248
	sub.l	er0,er0
.L1247:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L1247
	rts
.L1248:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L1253
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L1256
.L1252:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L1252
	rts
.L1253:
	sub.l	er0,er0
	rts
.L1256:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er3
	cmp.l	er0,er1
	bhs	.L1287
	mov.w	#32,r0
	sub.l	er4,er4
	add.b	#1,r4l
	bra	.L1259
.L1263:
	shll.l	er1
	shll.l	er4
	cmp.l	er1,er3
	bls	.L1261
	dec #1,r0
	beq	.L1279
.L1259:
	mov.l	er1,er1
	bpl	.L1263
.L1264:
	sub.l	er0,er0
	bra	.L1271
.L1288:
	mov.l	er4,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	beq	.L1262
.L1271:
	mov.l	er3,er6
	sub.l	er1,er6
	cmp.l	er1,er3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.l	er1,er3
	blo	.L1268
	mov.l	er6,er3
.L1268:
	mov.b	r5l,r5l
	bne	.L1288
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	bne	.L1271
.L1262:
	mov.w	r2,r2
	beq	.L1258
	mov.l	er3,er0
.L1258:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1261:
	mov.l	er4,er4
	bne	.L1264
.L1279:
	sub.l	er0,er0
	bra	.L1262
.L1287:
	mov.l	er0,er4
	sub.l	er1,er4
	mov.b	#1,r0l
	cmp.l	er3,er1
	bls	.L1282
	sub.b	r0l,r0l
	cmp.l	er3,er1
	bls	.L1282
.L1276:
	extu.w	r0
	extu.l	er0
	bra	.L1262
.L1282:
	mov.l	er4,er3
	bra	.L1276
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
	bmi	.L1292
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L1293
.L1291:
	mov.w	r5,r0
.L1289:
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1293:
	sub.w	r5,r5
	bra	.L1291
.L1292:
	mov.w	#-1,r0
	bra	.L1289
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
	bmi	.L1297
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L1298
.L1296:
	mov.w	r5,r0
.L1294:
	adds	#4,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1298:
	sub.w	r5,r5
	bra	.L1296
.L1297:
	mov.w	#-1,r0
	bra	.L1294
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
	bmi	.L1350:16
	beq	.L1309:16
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	mov.l	er2,er0
	and.w	r5,r0
	mov.w	r5,r3
	shll.w	r3
	mov.w	r1,r4
	shar.w	r4
	beq	.L1301:16
	and.l	#1,er4
	neg.l	er4
	and.w	r3,r4
	add.w	r4,r0
	shll.w	r5
	shll.w	r5
	shar.w	r1
	shar.w	r1
	beq	.L1301:16
	sub.w	r3,r3
.L1307:
	mov.l	er1,er4
	and.l	#1,er4
	neg.l	er4
	and.w	r5,r4
	add.w	r4,r0
	mov.w	r5,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	beq	.L1308:16
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
	beq	.L1308:16
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
	beq	.L1308:16
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
	beq	.L1308:16
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
	beq	.L1308:16
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
	beq	.L1308:16
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
	beq	.L1308:16
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
	beq	.L1308:16
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
	beq	.L1308
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
	beq	.L1308
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
	beq	.L1308
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
.L1308:
	mov.w	r3,r3
	beq	.L1301
.L1304:
	neg.w	r0
.L1301:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1350:
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
	beq	.L1304
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.w	r2,r0
	shll.w	r5
	shll.w	r5
	shar.w	r3
	shar.w	r3
	mov.w	r3,r1
	beq	.L1304
	mov.w	#1,r3
	bra	.L1307:16
.L1309:
	sub.w	r0,r0
	bra	.L1301
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er0
	bmi	.L1380
	mov.w	#1,r2
	sub.w	r5,r5
.L1352:
	mov.l	er1,er1
	bpl	.L1353
	neg.l	er1
	mov.w	r2,r5
.L1353:
	mov.l	er1,er2
	mov.l	er0,er4
	cmp.l	er0,er1
	bhs	.L1381
	mov.w	#32,r1
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1354
.L1358:
	dec #1,r1
	beq	.L1359
.L1354:
	shll.l	er2
	shll.l	er3
	cmp.l	er2,er0
	bhi	.L1358
.L1359:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L1356
	bra	.L1357
.L1382:
	mov.l	er3,er6
	or.l	er6,er0
	shlr.l	er3
	shlr.l	er2
	mov.l	er3,er3
	beq	.L1357
.L1356:
	mov.l	er4,er1
	sub.l	er2,er1
	cmp.l	er2,er4
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.l	er2,er4
	bhs	.L1363
	mov.l	er4,er1
.L1363:
	mov.l	er1,er4
	mov.b	r6l,r6l
	bne	.L1382
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er3
	shlr.l	er2
	mov.l	er3,er3
	bne	.L1356
.L1357:
	mov.w	r5,r5
	beq	.L1351
	neg.l	er0
.L1351:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1380:
	neg.l	er0
	sub.w	r2,r2
	mov.w	#1,r5
	bra	.L1352
.L1381:
	sub.l	er3,er3
	add.b	#1,r3l
	cmp.l	er0,er1
	bls	.L1367
	sub.l	er3,er3
.L1367:
	mov.l	er3,er0
	bra	.L1357
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	bmi	.L1413
	sub.w	r4,r4
.L1384:
	mov.l	er1,er1
	bpl	.L1385
	neg.l	er1
.L1385:
	mov.l	er1,er2
	mov.l	er5,er0
	cmp.l	er5,er1
	bhs	.L1414
	mov.w	#32,r1
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1386
.L1390:
	dec #1,r1
	beq	.L1391
.L1386:
	shll.l	er2
	shll.l	er3
	cmp.l	er2,er5
	bhi	.L1390
.L1391:
	mov.l	er3,er3
	beq	.L1397
.L1388:
	mov.l	er0,er5
	sub.l	er2,er5
	cmp.l	er2,er0
	blo	.L1394
	mov.l	er5,er0
.L1394:
	shlr.l	er3
	shlr.l	er2
	mov.l	er3,er3
	bne	.L1388
.L1389:
	mov.w	r4,r4
	beq	.L1383
	neg.l	er0
.L1383:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1413:
	neg.l	er5
	mov.w	#1,r4
	bra	.L1384
.L1414:
	sub.l	er1,er0
	cmp.l	er5,er1
	bhi	.L1397
	mov.l	er0,er5
.L1397:
	mov.l	er5,er0
	bra	.L1389
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	subs	#4,er7
	mov.w	r0,r3
	mov.w	r2,@(2,er7)
	cmp.w	r0,r1
	bhs	.L1645:16
	mov.w	r1,r1
	bmi	.L1422:16
	mov.w	r1,r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1529:16
	mov.w	r2,r2
	bmi	.L1529:16
	mov.w	r1,r2
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1531:16
	mov.w	r2,r2
	bmi	.L1531:16
	mov.w	r1,r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1533:16
	mov.w	r2,r2
	bmi	.L1533:16
	mov.w	r1,r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1535:16
	mov.w	r2,r2
	bmi	.L1535:16
	mov.w	r1,r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1537:16
	mov.w	r2,r2
	bmi	.L1537:16
	mov.w	r1,r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1539:16
	mov.w	r2,r2
	bmi	.L1539:16
	mov.w	r1,r2
	shar.b	r2h
	mov.b	r2l,r2h
	rotxr.w	r2
	and.b	#0x80,r2l
	cmp.w	r2,r0
	bls	.L1541:16
	mov.w	r2,r2
	bmi	.L1541:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	cmp.w	r2,r0
	bls	.L1543:16
	mov.w	r2,r2
	bmi	.L1543:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1545:16
	mov.w	r2,r2
	bmi	.L1545:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1547:16
	mov.w	r2,r2
	bmi	.L1547:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	shll.w	r2
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1549:16
	mov.w	r2,r2
	bmi	.L1549:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	shll.w	r2
	shll.w	r2
	shll.w	r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1551:16
	mov.w	r2,r2
	bmi	.L1551:16
	mov.w	r1,r2
	rotr.w	r2
	rotr.w	r2
	rotr.w	r2
	and.w	#57344,r2
	cmp.w	r2,r0
	bls	.L1553:16
	mov.w	r2,r2
	bmi	.L1553:16
	mov.w	r1,r2
	rotr.w	r2
	rotr.w	r2
	and.w	#49152,r2
	cmp.w	r2,r0
	bls	.L1555:16
	mov.w	r2,r2
	bmi	.L1555:16
	rotr.w	r1
	and.w	#32768,r1
	cmp.w	r1,r0
	bls	.L1556:16
	mov.w	r1,r1
	bne	.L1556:16
.L1425:
	mov.w	@(2,er7),r2
	bne	.L1415
	mov.w	r1,r0
.L1415:
	adds	#4,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1529:
	mov.w	#2,r0
	mov.w	r0,@er7
.L1424:
	mov.w	r3,r4
	sub.w	r2,r4
	cmp.w	r2,r3
	bhs	.L1524
	mov.w	r3,r4
.L1524:
	cmp.w	r2,r3
	blo	.L1641:16
	mov.w	@er7,r1
.L1526:
	mov.w	@er7,r6
	shlr.w	r6
	mov.w	r2,r5
	shlr.w	r5
	mov.w	r4,r3
	sub.w	r5,r3
	cmp.w	r5,r4
	bhs	.L1428
	mov.w	r4,r3
.L1428:
	mov.w	r3,r0
	cmp.w	r5,r4
	bhs	.L1430
	sub.w	r6,r6
.L1430:
	or.w	r6,r1
	mov.w	@er7,r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1425
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1435
	mov.w	r0,r3
.L1435:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1437
	sub.w	r4,r4
.L1437:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1441
	mov.w	r0,r3
.L1441:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1443
	sub.w	r4,r4
.L1443:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1447
	mov.w	r0,r3
.L1447:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1449
	sub.w	r4,r4
.L1449:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1453
	mov.w	r0,r3
.L1453:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1455
	sub.w	r4,r4
.L1455:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1459
	mov.w	r0,r3
.L1459:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1461
	sub.w	r4,r4
.L1461:
	or.w	r4,r1
	mov.w	@er7,r4
	shal.b	r4l
	mov.b	r4h,r4l
	rotxl.w	r4
	and.b	#0x01,r4h
	mov.w	r2,r6
	shal.b	r6l
	mov.b	r6h,r6l
	rotxl.w	r6
	and.b	#0x01,r6h
	mov.w	r4,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1465
	mov.w	r0,r3
.L1465:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1467
	sub.w	r4,r4
.L1467:
	or.w	r4,r1
	mov.w	@er7,r4
	mov.b	r4h,r4l
	extu.w	r4
	mov.w	r2,r6
	mov.b	r6h,r6l
	extu.w	r6
	mov.w	r4,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1471
	mov.w	r0,r3
.L1471:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1473
	sub.w	r4,r4
.L1473:
	or.w	r4,r1
	mov.w	@er7,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	mov.w	r2,r4
	mov.b	r4h,r4l
	extu.w	r4
	shlr.w	r4
	mov.w	r5,r5
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.w	r4,r3
	blo	.L1631:16
	mov.w	r0,r4
.L1477:
	mov.w	r4,r0
	mov.b	r6l,r6l
	bne	.L1479
	sub.w	r5,r5
.L1479:
	or.w	r5,r1
	mov.w	@er7,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	r3
	shlr.w	r3
	mov.w	r5,r5
	beq	.L1425:16
	mov.w	r4,r0
	sub.w	r3,r0
	cmp.w	r3,r4
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.w	r3,r4
	blo	.L1632:16
	mov.w	r0,r3
.L1483:
	mov.w	r3,r0
	mov.b	r6l,r6l
	bne	.L1485
	sub.w	r5,r5
.L1485:
	or.w	r5,r1
	mov.w	@er7,r4
	mov.b	r4h,r4l
	extu.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r2,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r4,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r5,r0
	cmp.w	r5,r3
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.w	r5,r3
	blo	.L1489
	mov.w	r0,r3
.L1489:
	mov.w	r3,r0
	mov.b	r6l,r6l
	bne	.L1491
	sub.w	r4,r4
.L1491:
	or.w	r4,r1
	mov.w	@er7,r6
	mov.b	r6h,r6l
	extu.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	shlr.w	r6
	mov.w	r2,r4
	mov.b	r4h,r4l
	extu.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	shlr.w	r4
	mov.w	r6,r6
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r4,r3
	blo	.L1495
	mov.w	r0,r3
.L1495:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1497
	sub.w	r6,r6
.L1497:
	or.w	r6,r1
	mov.w	@er7,r6
	rotl.w	r6
	rotl.w	r6
	rotl.w	r6
	and.w	#7,r6
	mov.w	r2,r4
	rotl.w	r4
	rotl.w	r4
	rotl.w	r4
	and.w	#7,r4
	mov.w	r6,r6
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r4,r3
	blo	.L1501
	mov.w	r0,r3
.L1501:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1503
	sub.w	r6,r6
.L1503:
	or.w	r6,r1
	mov.w	@er7,r6
	rotl.w	r6
	rotl.w	r6
	and.w	#3,r6
	mov.w	r2,r4
	rotl.w	r4
	rotl.w	r4
	and.w	#3,r4
	mov.w	r6,r6
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r4,r3
	blo	.L1507
	mov.w	r0,r3
.L1507:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1509
	sub.w	r6,r6
.L1509:
	or.w	r6,r1
	rotl.w	r2
	and.w	#1,r2
	mov.w	@er7,r4
	cmp.w	#16384,r4
	beq	.L1425:16
	mov.w	r3,r0
	sub.w	r2,r0
	cmp.w	r2,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r2,r3
	blo	.L1513
	mov.w	r0,r3
.L1513:
	mov.w	r3,r0
	mov.b	r5l,r2l
	extu.w	r2
	or.w	r2,r1
	bra	.L1425:16
.L1641:
	sub.w	r1,r1
	bra	.L1526:16
.L1631:
	mov.w	r3,r4
	bra	.L1477:16
.L1632:
	mov.w	r4,r3
	bra	.L1483:16
.L1531:
	mov.w	#4,r1
	mov.w	r1,@er7
	bra	.L1424:16
.L1533:
	mov.w	#8,r4
	mov.w	r4,@er7
	bra	.L1424:16
.L1535:
	mov.w	#16,r5
	mov.w	r5,@er7
	bra	.L1424:16
.L1545:
	mov.w	#512,r5
	mov.w	r5,@er7
	bra	.L1424:16
.L1537:
	mov.w	#32,r6
	mov.w	r6,@er7
	bra	.L1424:16
.L1539:
	mov.w	#64,r0
	mov.w	r0,@er7
	bra	.L1424:16
.L1541:
	mov.w	#128,r1
	mov.w	r1,@er7
	bra	.L1424:16
.L1543:
	mov.w	#256,r4
	mov.w	r4,@er7
	bra	.L1424:16
.L1645:
	sub.w	r1,r0
	cmp.w	r3,r1
	beq	.L1419
	mov.w	r3,r0
.L1419:
	cmp.w	r3,r1
	stc	ccr,r1l
	bld	#2,r1l
	xor.w	r1,r1
	bst	#0,r1l
	bra	.L1425:16
.L1547:
	mov.w	#1024,r6
	mov.w	r6,@er7
	bra	.L1424:16
.L1549:
	mov.w	#2048,r0
	mov.w	r0,@er7
	bra	.L1424:16
.L1551:
	mov.w	#4096,r1
	mov.w	r1,@er7
	bra	.L1424:16
.L1553:
	mov.w	#8192,r4
	mov.w	r4,@er7
	bra	.L1424:16
.L1555:
	mov.w	#16384,r5
	mov.w	r5,@er7
	bra	.L1424:16
.L1556:
	mov.w	#-32768,r2
	mov.w	r2,@er7
	bra	.L1424:16
.L1422:
	sub.w	r1,r3
	mov.w	r3,r0
	mov.w	#1,r1
	bra	.L1425:16
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	mov.l	er0,er3
	cmp.l	er1,er0
	bls	.L1675
	mov.w	#32,r0
	sub.l	er4,er4
	add.b	#1,r4l
	bra	.L1647
.L1651:
	shll.l	er1
	shll.l	er4
	cmp.l	er1,er3
	bls	.L1649
	dec #1,r0
	beq	.L1667
.L1647:
	mov.l	er1,er1
	bpl	.L1651
.L1652:
	sub.l	er0,er0
	bra	.L1659
.L1676:
	mov.l	er4,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	beq	.L1650
.L1659:
	mov.l	er3,er6
	sub.l	er1,er6
	cmp.l	er1,er3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.l	er1,er3
	blo	.L1656
	mov.l	er6,er3
.L1656:
	mov.b	r5l,r5l
	bne	.L1676
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	bne	.L1659
.L1650:
	mov.w	r2,r2
	beq	.L1646
	mov.l	er3,er0
.L1646:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1649:
	mov.l	er4,er4
	bne	.L1652
.L1667:
	sub.l	er0,er0
	bra	.L1650
.L1675:
	mov.l	er0,er4
	sub.l	er1,er4
	cmp.l	er1,er0
	xor.b	r0l,r0l
	bist	#0,r0l
	cmp.l	er1,er3
	blo	.L1663
	mov.l	er4,er3
.L1663:
	extu.w	r0
	extu.l	er0
	bra	.L1650
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
	beq	.L1678
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1683
.L1682:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1682
.L1683:
	sub.l	er0,er0
.L1679:
	mov.l	er4,er2
	mov.l	er0,er6
.L1677:
	mov.l	er2,er0
	mov.l	er6,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1678:
	mov.w	r2,r2
	beq	.L1681
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1685
.L1684:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1684
.L1685:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1687
.L1686:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1686
.L1687:
	mov.b	r2l,r2l
	ble	.L1689
.L1688:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1688
.L1689:
	or.l	er3,er4
	bra	.L1679
.L1681:
	mov.l	er0,er2
	mov.l	er1,er6
	bra	.L1677
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
	beq	.L1691
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1696
.L1695:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1695
.L1696:
.L1692:
	mov.l	er1,er2
	mov.l	er0,er4
.L1690:
	mov.l	er2,er0
	mov.l	er4,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1691:
	mov.w	r2,r2
	beq	.L1694
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1698
.L1697:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1697
.L1698:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1700
.L1699:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1699
.L1700:
	mov.l	er5,er6
	mov.b	r2l,r2l
	ble	.L1702
.L1701:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L1701
.L1702:
	or.l	er6,er0
	bra	.L1692
.L1694:
	mov.l	er0,er2
	mov.l	er1,er4
	bra	.L1690
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
	mov.b	r1l,r1h
	sub.b	r1l,r1l
	mov.w	r1,e1
	sub.w	r1,r1
	mov.l	er1,er6
	mov.l	@er7,er3
	mov.w	e3,r2
	mov.b	r3h,r3l
	mov.b	r2l,r3h
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,e3
	sub.l	er2,er2
	sub.l	er4,er4
	mov.b	r3h,r4h
	or.l	er2,er6
	or.l	er4,er0
	mov.l	er0,er5
	mov.l	@er7,er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	@(4,er7),er3
	mov.w	e3,r3
	mov.b	r3h,r3l
	extu.w	r3
	extu.l	er3
	mov.l	er3,er4
	or.l	er2,er4
	sub.l	er1,er1
	mov.l	er4,er0
	sub.w	r0,r0
	extu.w	e0
	or.l	er1,er6
	or.l	er0,er5
	mov.l	er5,er1
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
	sub.l	er0,er0
	mov.l	er3,er2
	and.l	#-16777216,er2
	or.l	er0,er6
	mov.l	er6,@(8,er7)
	or.l	er2,er1
	mov.l	er1,@(12,er7)
	mov.l	@(4,er7),er4
	shll.l	er4
	mov.l	@(4,er7),er0
	cmp.l	er0,er4
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@er7,er2
	shll.l	er2
	mov.l	er2,er6
	add.l	er5,er6
	mov.l	er4,er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	cmp.l	er4,er1
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	er6,er3
	shll.l	er3
	add.l	er4,er3
	mov.l	er3,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	@(20,er7),er2
	cmp.l	er2,er0
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	mov.l	er1,er4
	add.l	er6,er4
	mov.l	er0,er3
	shll.l	er3
	mov.l	er3,@(20,er7)
	cmp.l	er0,er3
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	er4,er5
	shll.l	er5
	add.l	er0,er5
	mov.l	er5,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	@(20,er7),er1
	cmp.l	er1,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er3,er4
	mov.l	er2,er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	cmp.l	er2,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	er4,er2
	shll.l	er2
	add.l	er5,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er6
	shll.l	er6
	mov.l	@(20,er7),er1
	cmp.l	er1,er6
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er0,er4
	mov.l	er6,er5
	shll.l	er5
	cmp.l	er6,er5
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	er4,er3
	shll.l	er3
	mov.l	er3,er1
	add.l	er6,er1
	and	#0,r1h
	sub.w	e1,e1
	mov.l	er1,er0
	mov.l	@(8,er7),er4
	or.l	er4,er0
	mov.l	er0,er6
	mov.l	@(12,er7),er5
	mov.l	@(4,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(4,er7),er1
	mov.l	@(20,er7),er3
	cmp.l	er1,er3
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er4
	shll.l	er4
	add.l	er0,er4
	mov.l	er4,@(16,er7)
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(28,er7)
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er1,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(28,er7),er4
	cmp.l	er4,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er0
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er4,er1
	mov.l	er1,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er0
	cmp.l	er0,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er4
	shll.l	er4
	add.l	er3,er4
	mov.l	er4,@(16,er7)
	mov.l	@(20,er7),er1
	shll.l	er1
	mov.l	er1,@(28,er7)
	mov.l	@(20,er7),er2
	cmp.l	er2,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er4
	shll.l	er4
	mov.l	er4,@(20,er7)
	mov.l	@(28,er7),er1
	cmp.l	er1,er4
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er4
	shll.l	er4
	mov.l	er4,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er4
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er4
	cmp.l	er4,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(28,er7)
	mov.l	@(20,er7),er2
	cmp.l	er2,er0
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er4,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	mov.l	@(28,er7),er0
	cmp.l	er0,er1
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er4,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er1
	shll.l	er1
	mov.l	er1,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er4
	shll.l	er4
	add.l	er0,er4
	mov.l	er4,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er1
	cmp.l	er1,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er0
	shll.l	er0
	add.l	er3,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er4
	shll.l	er4
	mov.l	er4,@(28,er7)
	mov.l	@(20,er7),er2
	cmp.l	er2,er4
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er1,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(28,er7),er4
	cmp.l	er4,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er0
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er4,er1
	mov.l	er1,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er0
	cmp.l	er0,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er4
	shll.l	er4
	add.l	er3,er4
	mov.l	er4,@(16,er7)
	mov.l	@(20,er7),er1
	shll.l	er1
	mov.l	er1,@(28,er7)
	mov.l	@(20,er7),er2
	cmp.l	er2,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er0,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er4
	shll.l	er4
	mov.l	er4,@(20,er7)
	mov.l	@(28,er7),er1
	cmp.l	er1,er4
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er4
	shll.l	er4
	mov.l	er4,@(28,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er4
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(24,er7)
	mov.l	@(28,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er4
	cmp.l	er4,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(28,er7)
	mov.l	@(20,er7),er2
	cmp.l	er2,er0
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(16,er7),er3
	shll.l	er3
	add.l	er4,er3
	mov.l	er3,@(24,er7)
	mov.l	@(28,er7),er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	mov.l	@(28,er7),er0
	cmp.l	er0,er1
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(24,er7),er2
	shll.l	er2
	add.l	er4,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er3
	shll.l	er3
	mov.l	@(20,er7),er0
	cmp.l	er0,er3
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@(16,er7),er2
	shll.l	er2
	mov.l	er2,er3
	add.l	er4,er3
	and	#0,r3l
	sub.w	e3,e3
	or.l	er3,er6
	mov.l	@(4,er7),er0
	mov.w	e0,r4
	mov.b	r4l,r4h
	mov.b	r0h,r4l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r4,e0
	sub.w	r0,r0
	extu.w	e0
	or.l	er0,er6
	mov.l	er6,er0
	mov.l	er5,er1
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
	bls	.L1738
	sub.l	er0,er0
.L1738:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1754
.L1753:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1753
.L1754:
	sub.l	er1,er1
	mov.b	r2h,r1h
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1739
	sub.l	er3,er3
.L1739:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1756
.L1755:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1755
.L1756:
	add.l	er3,er0
	sub.l	er4,er4
	mov.b	r2l,r4l
	and	#240,r4l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er4,er4
	beq	.L1740
	sub.l	er3,er3
.L1740:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1758
.L1757:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1757
.L1758:
	add.l	er0,er3
	mov.l	er3,er4
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#12,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1741
	sub.l	er3,er3
.L1741:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1760
.L1759:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1759
.L1760:
	btst	#1,r2l
	bne	.L1742
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
.L1743:
	add.l	er4,er1
	add.w	r1,r0
	mov.l	@er7+,er4
	rts
.L1742:
	sub.w	r0,r0
	bra	.L1743
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
	blt	.L1765
	bgt	.L1766
	cmp.l	er3,er5
	blo	.L1765
	bhi	.L1766
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1761
.L1765:
	sub.l	er0,er0
.L1761:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1766:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L1761
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
	blt	.L1772
	bgt	.L1771
	cmp.l	er3,er5
	blo	.L1772
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1767
	sub.l	er0,er0
	bra	.L1767
.L1772:
	sub.l	er0,er0
	subs	#1,er0
.L1767:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1771:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1767
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 1
	.global ___ctzsi2
___ctzsi2:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
	add.b	#1,r0l
	mov.w	r2,r2
	beq	.L1774
	sub.l	er0,er0
.L1774:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L1791
.L1790:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1790
.L1791:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1775
	sub.l	er3,er3
.L1775:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1793
.L1792:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1792
.L1793:
	add.l	er0,er3
	sub.l	er4,er4
	mov.b	r2l,r4l
	and	#15,r4l
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er4,er4
	beq	.L1776
	sub.l	er1,er1
.L1776:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L1795
.L1794:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1794
.L1795:
	add.l	er3,er1
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#3,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1777
	sub.l	er3,er3
.L1777:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1797
.L1796:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1796
.L1797:
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
	sub.l	#8,er7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,er6
	btst	#5,r2l
	beq	.L1799
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1804
.L1803:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L1803
.L1804:
	sub.l	er1,er1
.L1800:
	mov.l	er1,er2
	mov.l	er6,er4
.L1798:
	mov.l	er2,er0
	mov.l	er4,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1799:
	mov.w	r2,r2
	beq	.L1802
	mov.l	er4,er3
	mov.l	er4,er1
	mov.b	r2l,r0l
	ble	.L1806
.L1805:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1805
.L1806:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1808
.L1807:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1807
.L1808:
	mov.l	er5,er6
	mov.b	r2l,r2l
	ble	.L1810
.L1809:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L1809
.L1810:
	or.l	er3,er6
	bra	.L1800
.L1802:
	mov.l	er4,er2
	mov.l	er5,er4
	bra	.L1798
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
	mov.l	@(44,er7),er0
	mov.l	er0,@(12,er7)
	mov.w	@(6,er7),r4
	mov.w	@(14,er7),r3
	mulxu.w	r3,er4
	mov.l	er4,er5
	mov.w	e5,r5
	extu.l	er5
	mov.l	er1,er3
	mov.w	e3,r3
	extu.l	er3
	mov.w	@(14,er7),r6
	mulxu.w	r3,er6
	add.l	er5,er6
	mov.w	r6,r0
	extu.l	er0
	mov.l	@(12,er7),er1
	mov.w	e1,r1
	extu.l	er1
	mov.w	@(6,er7),r2
	mulxu.w	r1,er2
	add.l	er0,er2
	extu.l	er4
	mov.l	er2,er5
	mov.w	r5,e5
	sub.w	r5,r5
	add.l	er5,er4
	mov.w	e6,r6
	extu.l	er6
	mulxu.w	r1,er3
	add.l	er6,er3
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
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er6,er6
	bne	.L1814
	sub.l	er1,er1
.L1814:
	sub.l	er4,er0
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,er0
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
	mov.l	er2,er1
	mov.w	e1,r0
	mov.b	r1h,r1l
	mov.b	r0l,r1h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e1
	xor.l	er2,er1
	mov.l	er1,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	xor.l	er1,er2
	and.w	#15,r2
	mov.w	#27030,r0
	mov.b	r2l,r2l
	ble	.L1817
.L1816:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1816
.L1817:
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
	ble	.L1820
.L1819:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1819
.L1820:
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
	mov.l	er0,er4
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er1,er0
	shlr.l	er0
	mov.l	er0,er1
	rotxl.l	er1
	bor	#0,r4l
	rotxr.l	er1
	mov.l	er4,er6
	shlr.l	er6
	mov.l	er6,er4
	and.l	#1431655765,er4
	mov.l	er4,@er7
	mov.l	er1,er5
	and.l	#1431655765,er5
	mov.l	er5,@(4,er7)
	mov.l	er3,er0
	mov.l	@(4,er7),er1
	sub.l	er1,er0
	mov.l	er0,er6
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er0
	bhi	.L1822
	sub.l	er4,er4
.L1822:
	mov.l	@er7,er3
	sub.l	er3,er2
	sub.l	er4,er2
	mov.l	er2,er0
	mov.l	er6,er1
	sub.w	e2,e2
	rotr.l	er2
	rotr.l	er2
	sub.w	r2,r2
	mov.l	er6,er5
	shlr.l	er5
	shlr.l	er5
	mov.l	er5,er3
	or.l	er2,er3
	mov.l	er0,er6
	shlr.l	er6
	shlr.l	er6
	mov.l	er6,er2
	and.l	#858993459,er2
	mov.l	er3,er5
	and.l	#858993459,er5
	and.l	#858993459,er0
	mov.l	er0,@er7
	and.l	#858993459,er1
	mov.l	er1,@(4,er7)
	mov.l	er5,er4
	mov.l	@(4,er7),er3
	add.l	er3,er4
	mov.l	er4,@(12,er7)
	cmp.l	er5,er4
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@er7,er6
	add.l	er6,er2
	mov.l	er2,@(8,er7)
	mov.l	er5,er0
	mov.l	@(8,er7),er1
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	er0,er4
	mov.l	@(12,er7),er3
	mov.l	er0,er5
	sub.w	e5,e5
	rotr.l	er5
	rotr.l	er5
	rotr.l	er5
	rotr.l	er5
	sub.w	r5,r5
	mov.l	er3,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	or.l	er5,er2
	mov.l	er2,@(4,er7)
	mov.l	er0,er6
	shlr.l	er6
	shlr.l	er6
	shlr.l	er6
	shlr.l	er6
	mov.l	er6,@er7
	mov.l	@(4,er7),er0
	add.l	er3,er0
	mov.l	er0,er1
	mov.l	@(4,er7),er3
	cmp.l	er3,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@er7,er2
	add.l	er4,er2
	mov.l	er5,er6
	add.l	er2,er6
	mov.l	er6,er0
	and.l	#252645135,er0
	mov.l	er1,er3
	and.l	#252645135,er3
	add.l	er0,er3
	mov.l	er3,er4
	mov.w	e4,r4
	extu.l	er4
	add.l	er3,er4
	mov.l	er4,er0
	mov.w	e0,r3
	mov.b	r0h,r0l
	mov.b	r3l,r0h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e0
	add.w	r4,r0
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
	mov.l	er3,er1
	shlr.l	er1
	shlr.l	er1
	shlr.l	er1
	shlr.l	er1
	add.l	er3,er1
	and.l	#252645135,er1
	mov.l	er1,er0
	mov.w	e0,r0
	extu.l	er0
	add.l	er0,er1
	mov.l	er1,er0
	mov.w	e0,r3
	mov.b	r0h,r0l
	mov.b	r3l,r0h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e0
	add.w	r1,r0
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
	beq	.L1827
.L1830:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1827:
	mov.w	r4,r4
	bpl	.L1828
	inc #1,r4
.L1828:
	shar.w	r4
	beq	.L1829
.L1832:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1830
	mov.w	r4,r4
	bmi	.L1835
	shar.w	r4
	bra	.L1832
.L1835:
	inc #1,r4
	shar.w	r4
	bra	.L1832
.L1829:
	mov.w	@(2,er7),r2
	bpl	.L1826
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1826:
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
	beq	.L1837
.L1840:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1837:
	mov.w	r4,r4
	bpl	.L1838
	inc #1,r4
.L1838:
	shar.w	r4
	beq	.L1839
.L1842:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1840
	mov.w	r4,r4
	bmi	.L1845
	shar.w	r4
	bra	.L1842
.L1845:
	inc #1,r4
	shar.w	r4
	bra	.L1842
.L1839:
	mov.w	@(2,er7),r2
	bpl	.L1836
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1836:
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
	blo	.L1850
	bhi	.L1851
	cmp.l	er3,er5
	blo	.L1850
	bhi	.L1851
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1846
.L1850:
	sub.l	er0,er0
.L1846:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1851:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L1846
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
	blo	.L1857
	bhi	.L1856
	cmp.l	er3,er5
	blo	.L1857
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1852
	sub.l	er0,er0
	bra	.L1852
.L1857:
	sub.l	er0,er0
	subs	#1,er0
.L1852:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
.L1856:
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1852
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
