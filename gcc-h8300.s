	.file	"mini-libc.c"
	.h8300sn
	.section .text
	.align 1
	.global _memmove
_memmove:
	stm.l	er4-er6,@-er7
	cmp.w	r1,r0
	bls	.L2
	add.w	r2,r1
	mov.w	r0,r4
	add.w	r2,r4
	mov.w	r2,r2
	beq	.L3
.L4:
	dec #1,r1
	mov.b	@er1,r3l
	dec #1,r4
	mov.b	r3l,@er4
	cmp.w	r4,r0
	bne	.L4
.L3:
	ldm.l	@er7+,er4-er6
	rts
.L2:
	beq	.L3
	mov.w	r2,r2
	beq	.L3
	mov.w	r2,r3
	dec #1,r3
	cmp.w	#6,r3
	bls	.L5
	mov.w	r1,r4
	or.w	r0,r4
	and.w	#3,r4
	beq	.L34
.L5:
	mov.w	r0,r3
	add.w	r0,r2
.L11:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	inc #1,r3
	cmp.w	r3,r2
	bne	.L11
	bra	.L3
.L34:
	mov.w	r1,r5
	inc #1,r5
	mov.w	r0,r6
	sub.w	r5,r6
	cmp.w	#2,r6
	bls	.L5
	mov.w	r0,r3
	mov.w	r2,r6
	and	#252,r6l
	mov.w	r1,r5
	add.w	r6,r5
.L8:
	mov.l	@er1+,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.w	r1,r5
	bne	.L8
	mov.w	r0,r3
	add.w	r6,r3
	mov.w	r2,r1
	sub.w	r6,r1
	cmp.w	r6,r2
	beq	.L3
	mov.b	@er5,r2l
	mov.b	r2l,@er3
	cmp.w	#1,r1
	beq	.L3
	mov.b	@(1,er5),r6l
	mov.b	r6l,@(1,er3)
	cmp.w	#2,r1
	beq	.L3
	mov.b	@(2,er5),r5l
	mov.b	r5l,@(2,er3)
	bra	.L3:16
	.size	_memmove, .-_memmove
	.align 1
	.global _memccpy
_memccpy:
	mov.l	er4,@-er7
	mov.w	@(8,er7),r4
	extu.w	r2
	mov.w	r4,r4
	bne	.L36
	bra	.L38
.L39:
	dec #1,r4
	inc #1,r1
	inc #1,r0
	mov.w	r4,r4
	beq	.L38
.L36:
	mov.b	@er1,r3l
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
	bne	.L39
	inc #1,r0
.L35:
	mov.l	@er7+,er4
	rts
.L38:
	sub.w	r0,r0
	bra	.L35
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.w	r2,r2
	bne	.L46
	bra	.L49
.L48:
	inc #1,r0
	dec #1,r2
	beq	.L49
.L46:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	bne	.L48
	rts
.L49:
	sub.w	r0,r0
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.w	r2,r2
	bne	.L52
	bra	.L56
.L54:
	dec #1,r2
	inc #1,r0
	inc #1,r1
	mov.w	r2,r2
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
	mov.w	r0,r3
	mov.w	r2,r2
	beq	.L60
	jsr	@_memcpy
	mov.w	r0,r3
.L60:
	mov.w	r3,r0
	rts
	.size	_memcpy, .-_memcpy
	.align 1
	.global _memrchr
_memrchr:
	mov.l	er4,@-er7
	mov.w	r0,r4
	extu.w	r1
	dec #1,r2
	add.w	r0,r2
	dec #1,r4
	bra	.L65
.L67:
	mov.w	r2,r0
	dec #1,r2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L64
.L65:
	cmp.w	r4,r2
	bne	.L67
	sub.w	r0,r0
.L64:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.w	r0,r3
	mov.w	r2,r2
	beq	.L71
	extu.w	r1
	jsr	@_memset
	mov.w	r0,r3
.L71:
	mov.w	r3,r0
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L79
.L74:
	inc #1,r1
	inc #1,r0
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
	inc #1,r0
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
	inc #1,r0
	mov.b	r2l,r2l
	bne	.L91
	sub.w	r0,r0
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
	inc #1,r0
	inc #1,r1
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
	mov.w	r0,r3
	mov.b	@er0,r2l
	beq	.L107
	mov.w	r0,r2
.L106:
	inc #1,r2
	mov.b	@er2,r0l
	bne	.L106
	sub.w	r3,r2
	mov.w	r2,r0
	rts
.L107:
	sub.w	r0,r0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.w	r2,r2
	beq	.L117
	mov.b	@er0,r3l
	beq	.L120
	dec #1,r2
	add.w	r0,r2
	bra	.L113
.L114:
	cmp.w	r2,r0
	beq	.L119
	cmp.b	r3l,r4l
	bne	.L119
	inc #1,r0
	mov.w	r1,r4
	inc #1,r4
	mov.b	@er0,r3l
	beq	.L121
	mov.w	r4,r1
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
	cmp.w	#1,r2
	ble	.L126
	and	#254,r2l
	add.w	r0,r2
.L124:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	inc #2,r1
	inc #2,r0
	cmp.w	r2,r0
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
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L201:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	ldm.l	@er7+,er4-er5
	rts
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
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L210:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	ldm.l	@er7+,er4-er5
	rts
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
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L222:
	mov.w	r2,r2
	bne	.L219
.L218:
	mov.l	er5,er0
	ldm.l	@er7+,er4-er5
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L234:
	mov.w	r2,r2
	bne	.L231
.L230:
	mov.l	er5,er0
	ldm.l	@er7+,er4-er5
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L246:
	mov.w	r2,r2
	bne	.L243
.L242:
	mov.l	er5,er0
	ldm.l	@er7+,er4-er5
	rts
	.size	_fmaxl, .-_fmaxl
	.align 1
	.global _fmin
_fmin:
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L258:
	mov.w	r2,r2
	bne	.L255
.L253:
	mov.l	er5,er0
	ldm.l	@er7+,er4-er5
	rts
	.size	_fmin, .-_fmin
	.align 1
	.global _fminf
_fminf:
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L270:
	mov.w	r2,r2
	bne	.L267
.L265:
	mov.l	er5,er0
	ldm.l	@er7+,er4-er5
	rts
	.size	_fminf, .-_fminf
	.align 1
	.global _fminl
_fminl:
	stm.l	er4-er5,@-er7
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
	ldm.l	@er7+,er4-er5
	rts
.L282:
	mov.w	r2,r2
	bne	.L279
.L277:
	mov.l	er5,er0
	ldm.l	@er7+,er4-er5
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.w	#_s___0,r3
	mov.l	er0,er0
	beq	.L284
	mov.w	#_digits,r1
.L285:
	sub.l	er2,er2
	mov.b	r0l,r2l
	and	#63,r2l
	add.w	r1,r2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
	inc #1,r3
	shlr.l	#2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	bne	.L285
.L284:
	sub.b	r0l,r0l
	mov.b	r0l,@er3
	mov.w	#_s___0,r0
	rts
	.size	_l64a, .-_l64a
	.align 1
	.global _srand
_srand:
	dec #1,r0
	extu.l	er0
	mov.l	er0,@_seed+4:16
	sub.l	er2,er2
	mov.l	er2,@_seed:16
	rts
	.size	_srand, .-_srand
	.align 1
	.global _rand
_rand:
	stm.l	er4-er6,@-er7
	mov.l	#1481765933,er3
	mov.l	#1284865837,er2
	add.w	#-8,r7
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
	mov.l	@_seed:16,er0
	mov.l	@_seed+4:16,er1
	jsr	@___muldi3
	add.w	#8,r7
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
	mov.l	er4,@_seed:16
	mov.l	er3,@_seed+4:16
	shlr.l	er5
	mov.l	er5,er0
	ldm.l	@er7+,er4-er6
	rts
	.size	_rand, .-_rand
	.align 1
	.global _insque
_insque:
	mov.w	r1,r1
	beq	.L297
	mov.w	@er1,r2
	mov.w	r2,@er0
	mov.w	r1,@(2,er0)
	mov.w	r0,@er1
	mov.w	@er0,r1
	beq	.L298
	mov.w	r0,@(2,er1)
	rts
.L297:
	mov.w	r1,@(2,er0)
	mov.w	r1,@er0
.L298:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.w	@er0,r2
	beq	.L301
	mov.w	@(2,er0),r3
	mov.w	r3,@(2,er2)
.L301:
	mov.w	@(2,er0),r0
	beq	.L309
	mov.w	r2,@er0
.L309:
	rts
	.size	_remque, .-_remque
	.align 1
	.global _lsearch
_lsearch:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	r0,@er7
	mov.w	r2,@(4,er7)
	mov.w	@er2,r3
	beq	.L311
	sub.w	r6,r6
	mov.w	r3,@(2,er7)
	mov.w	r1,r5
	mov.w	r1,@(6,er7)
	bra	.L313
.L327:
	inc #1,r6
	mov.w	@(24,er7),r0
	add.w	r0,r5
	mov.w	@(2,er7),r1
	cmp.w	r6,r1
	beq	.L326
.L313:
	mov.w	r5,r4
	mov.w	r5,r1
	mov.w	@er7,r0
	mov.w	@(28,er7),r2
	jsr	@er2
	mov.w	r0,r0
	bne	.L327
.L310:
	mov.w	r4,r0
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L326:
	mov.w	r1,r3
	mov.w	@(6,er7),r1
.L311:
	mov.w	r3,r6
	inc #1,r6
	mov.w	@(4,er7),r5
	mov.w	r6,@er5
	mov.w	@(24,er7),r2
	mulxu.w	r2,er3
	add.w	r3,r1
	mov.w	r1,r4
	mov.w	r2,r2
	beq	.L310
	mov.w	@er7,r1
	mov.w	r4,r0
	jsr	@_memmove
	bra	.L310
	.size	_lsearch, .-_lsearch
	.align 1
	.global _lfind
_lfind:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	mov.w	r1,r4
	mov.w	@er2,r1
	beq	.L329
	sub.w	r5,r5
	mov.w	r1,@(2,er7)
	mov.w	r4,r6
	mov.w	r0,@er7
	bra	.L331
.L340:
	inc #1,r5
	mov.w	@(20,er7),r0
	add.w	r0,r6
	mov.w	@(2,er7),r3
	cmp.w	r5,r3
	beq	.L329
.L331:
	mov.w	r6,r1
	mov.w	@er7,r0
	mov.w	@(24,er7),r2
	jsr	@er2
	mov.w	r0,r0
	bne	.L340
	mov.w	r6,r1
	bra	.L328
.L329:
	sub.w	r1,r1
.L328:
	mov.w	r1,r0
	adds	#4,er7
	ldm.l	@er7+,er4-er6
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
	stm.l	er4-er6,@-er7
.L351:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L345
	mov.b	r2l,r3l
	extu.w	r3
	mov.w	r3,r1
	add.w	#-9,r1
	cmp.w	#4,r1
	bls	.L345
	cmp.b	#43,r2l
	beq	.L346
	cmp.b	#45,r2l
	beq	.L347
	mov.w	r3,r5
	add.w	#-48,r5
	cmp.w	#9,r5
	bhi	.L356
	mov.w	r0,r1
.L364:
	sub.w	r4,r4
.L349:
	sub.w	r0,r0
.L353:
	mov.w	r0,r2
	shll.w	#2,r2
	add.w	r0,r2
	shll.w	r2
	inc #1,r1
	add.w	#-48,r3
	mov.w	r3,r5
	mov.w	r2,r0
	sub.w	r3,r0
	mov.b	@er1,r3l
	extu.w	r3
	mov.w	r3,r6
	add.w	#-48,r6
	cmp.w	#9,r6
	bls	.L353
	mov.w	r4,r4
	bne	.L344
	mov.w	r5,r0
	sub.w	r2,r0
.L344:
	ldm.l	@er7+,er4-er6
	rts
.L345:
	inc #1,r0
	bra	.L351
.L347:
	mov.w	r0,r1
	inc #1,r1
	mov.b	@(1,er0),r3l
	extu.w	r3
	mov.w	r3,r4
	add.w	#-48,r4
	cmp.w	#9,r4
	bhi	.L356
	mov.w	#1,r4
	bra	.L349
.L346:
	mov.w	r0,r1
	inc #1,r1
	mov.b	@(1,er0),r3l
	extu.w	r3
	mov.w	r3,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L364
.L356:
	sub.w	r0,r0
	ldm.l	@er7+,er4-er6
	rts
	.size	_atoi, .-_atoi
	.align 1
	.global _atol
_atol:
	stm.l	er4-er6,@-er7
.L372:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L366
	mov.b	r2l,r5l
	extu.w	r5
	mov.w	r5,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L366
	cmp.b	#43,r2l
	beq	.L367
	cmp.b	#45,r2l
	beq	.L368
	mov.w	r5,r1
	add.w	#-48,r1
	cmp.w	#9,r1
	bhi	.L377
	mov.w	r0,r1
.L385:
	sub.w	r4,r4
.L370:
	sub.l	er0,er0
.L374:
	mov.l	er0,er2
	shll.l	#2,er2
	add.l	er0,er2
	shll.l	er2
	inc #1,r1
	mov.w	r5,r3
	add.w	#-48,r3
	exts.l	er3
	mov.l	er2,er0
	sub.l	er3,er0
	mov.b	@er1,r5l
	extu.w	r5
	mov.w	r5,r6
	add.w	#-48,r6
	cmp.w	#9,r6
	bls	.L374
	mov.w	r4,r4
	bne	.L365
	sub.l	er2,er3
	mov.l	er3,er0
.L365:
	ldm.l	@er7+,er4-er6
	rts
.L366:
	inc #1,r0
	bra	.L372
.L368:
	mov.w	r0,r1
	inc #1,r1
	mov.b	@(1,er0),r5l
	extu.w	r5
	mov.w	r5,r4
	add.w	#-48,r4
	cmp.w	#9,r4
	bhi	.L377
	mov.w	#1,r4
	bra	.L370
.L367:
	mov.w	r0,r1
	inc #1,r1
	mov.b	@(1,er0),r5l
	extu.w	r5
	mov.w	r5,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L385
.L377:
	sub.l	er0,er0
	ldm.l	@er7+,er4-er6
	rts
	.size	_atol, .-_atol
	.align 1
	.global _atoll
_atoll:
	stm.l	er4-er6,@-er7
	add.w	#-20,r7
.L393:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L387:16
	mov.b	r2l,r4l
	extu.w	r4
	mov.w	r4,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L387:16
	cmp.b	#43,r2l
	beq	.L388:16
	cmp.b	#45,r2l
	bne	.L409:16
	mov.w	r0,r5
	inc #1,r5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r1
	add.w	#-48,r1
	cmp.w	#9,r1
	bhi	.L400:16
	mov.w	#1,r6
	mov.w	r6,@(18,er7)
.L391:
	sub.l	er2,er2
	sub.l	er3,er3
	sub.l	er6,er6
	add.b	#1,r6l
.L396:
	sub.l	er1,er1
	add.w	#-8,r7
	mov.l	er1,@er7
	sub.l	er0,er0
	add.b	#10,r0l
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___muldi3
	add.w	#8,r7
	mov.l	er0,er2
	mov.l	er2,@er7
	mov.l	er1,@(4,er7)
	inc #1,r5
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
	bhi	.L395
	sub.l	er2,er2
.L395:
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
	bls	.L396:16
	mov.w	@(18,er7),r0
	bne	.L386
	mov.l	@(12,er7),er5
	mov.l	@(4,er7),er6
	sub.l	er6,er5
	mov.l	er5,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	@(12,er7),er4
	cmp.l	er4,er5
	bhi	.L398
	sub.l	er2,er2
.L398:
	mov.l	@(8,er7),er0
	mov.l	@er7,er3
	sub.l	er3,er0
	mov.l	er0,er5
	sub.l	er2,er5
	mov.l	er5,er2
	mov.l	er1,er3
.L386:
	mov.l	er2,er0
	mov.l	er3,er1
	add.w	#20,r7
	ldm.l	@er7+,er4-er6
	rts
.L387:
	inc #1,r0
	bra	.L393:16
.L409:
	mov.w	r4,r5
	add.w	#-48,r5
	cmp.w	#9,r5
	bhi	.L400
	mov.w	r0,r5
.L408:
	sub.w	r0,r0
	mov.w	r0,@(18,er7)
	bra	.L391:16
.L388:
	mov.w	r0,r5
	inc #1,r5
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L408
.L400:
	sub.l	er2,er2
	sub.l	er3,er3
	bra	.L386
	.size	_atoll, .-_atoll
	.align 1
	.global _bsearch
_bsearch:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	r2,r4
	beq	.L411
	mov.w	r0,@(6,er7)
	mov.w	r1,r6
	bra	.L414
.L424:
	mov.l	@er7,er1
	mov.w	r0,r0
	beq	.L423
	mov.w	@(24,er7),r6
	add.w	r1,r6
	dec #1,r4
	sub.w	r5,r4
	mov.w	r4,r4
	beq	.L411
.L414:
	mov.w	r4,r5
	shlr.w	r5
	mov.w	@(24,er7),r1
	mulxu.w	r5,er1
	add.w	r6,r1
	mov.l	er1,@er7
	mov.w	@(6,er7),r0
	mov.w	@(28,er7),r2
	jsr	@er2
	mov.w	r0,r0
	bpl	.L424
	mov.w	r5,r4
	mov.w	r4,r4
	bne	.L414
.L411:
	sub.w	r0,r0
.L410:
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L423:
	mov.w	r1,r0
	bra	.L410
	.size	_bsearch, .-_bsearch
	.align 1
	.global _bsearch_r
_bsearch_r:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	r0,@(6,er7)
	mov.w	r1,@(4,er7)
	mov.w	@(24,er7),r6
	mov.w	r2,r4
	beq	.L430
.L426:
	mov.w	r4,r5
	shar.w	r5
	mov.w	r5,r1
	mulxu.w	r6,er1
	mov.w	@(4,er7),r2
	add.w	r2,r1
	mov.w	@(32,er7),r2
	mov.l	er1,@er7
	mov.w	@(6,er7),r0
	mov.w	@(28,er7),r3
	jsr	@er3
	mov.l	@er7,er1
	mov.w	r0,r0
	beq	.L425
	ble	.L428
	add.w	r6,r1
	mov.w	r1,@(4,er7)
	dec #1,r4
	shar.w	r4
	bne	.L426
.L430:
	sub.w	r1,r1
.L425:
	mov.w	r1,r0
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L428:
	mov.w	r5,r5
	beq	.L430
	mov.w	r5,r4
	bra	.L426
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
	stm.l	er4-er6,@-er7
	mov.l	er0,er2
	mov.l	er1,er6
	mov.l	er0,er0
	bmi	.L445
	mov.l	er2,er0
	mov.l	er6,er1
	ldm.l	@er7+,er4-er6
	rts
.L445:
	sub.l	er4,er4
	neg.l	er6
	mov.l	er6,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er6,er6
	bne	.L444
	sub.l	er3,er3
.L444:
	sub.l	er2,er4
	sub.l	er3,er4
	mov.l	er4,er2
	mov.l	er1,er6
	mov.l	er2,er0
	mov.l	er6,er1
	ldm.l	@er7+,er4-er6
	rts
	.size	_imaxabs, .-_imaxabs
	.align 1
	.global _imaxdiv
_imaxdiv:
	stm.l	er4-er6,@-er7
	add.w	#-24,r7
	mov.w	r0,r4
	mov.l	er1,er5
	mov.l	er2,er6
	mov.l	@(38,er7),er2
	mov.l	@(42,er7),er3
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
	mov.w	r4,r0
	add.w	#24,r7
	ldm.l	@er7+,er4-er6
	rts
	.size	_imaxdiv, .-_imaxdiv
	.align 1
	.global _labs
_labs:
	mov.l	er0,er0
	bmi	.L449
	rts
.L449:
	neg.l	er0
	rts
	.size	_labs, .-_labs
	.align 1
	.global _ldiv
_ldiv:
	stm.l	er4-er5,@-er7
	subs	#4,er7
	mov.w	r0,r4
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
	mov.w	r4,r0
	adds	#4,er7
	ldm.l	@er7+,er4-er5
	rts
	.size	_ldiv, .-_ldiv
	.align 1
	.global _llabs
_llabs:
	stm.l	er4-er6,@-er7
	mov.l	er0,er2
	mov.l	er1,er6
	mov.l	er0,er0
	bmi	.L455
	mov.l	er2,er0
	mov.l	er6,er1
	ldm.l	@er7+,er4-er6
	rts
.L455:
	sub.l	er4,er4
	neg.l	er6
	mov.l	er6,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er6,er6
	bne	.L454
	sub.l	er3,er3
.L454:
	sub.l	er2,er4
	sub.l	er3,er4
	mov.l	er4,er2
	mov.l	er1,er6
	mov.l	er2,er0
	mov.l	er6,er1
	ldm.l	@er7+,er4-er6
	rts
	.size	_llabs, .-_llabs
	.align 1
	.global _lldiv
_lldiv:
	stm.l	er4-er6,@-er7
	add.w	#-24,r7
	mov.w	r0,r4
	mov.l	er1,er5
	mov.l	er2,er6
	mov.l	@(38,er7),er2
	mov.l	@(42,er7),er3
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
	mov.w	r4,r0
	add.w	#24,r7
	ldm.l	@er7+,er4-er6
	rts
	.size	_lldiv, .-_lldiv
	.align 1
	.global _wcschr
_wcschr:
	bra	.L464
.L466:
	cmp.w	r2,r1
	beq	.L467
	inc #2,r0
.L464:
	mov.w	@er0,r2
	bne	.L466
	sub.w	r0,r0
	rts
.L467:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L477
.L478:
	mov.w	r2,r2
	beq	.L471
	inc #2,r0
	inc #2,r1
.L477:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	beq	.L478
.L471:
	cmp.w	r3,r2
	blo	.L475
	mov.w	#1,r0
	cmp.w	r3,r2
	bls	.L479
	rts
.L475:
	mov.w	#-1,r0
	rts
.L479:
	sub.w	r0,r0
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.w	r0,r2
.L481:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	inc #2,r2
	mov.w	r3,r3
	bne	.L481
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	r0,r3
	mov.w	@er0,r0
	beq	.L490
	mov.w	r3,r2
.L485:
	inc #2,r2
	mov.w	@er2,r0
	bne	.L485
	sub.w	r3,r2
	shar.w	r2
	mov.w	r2,r0
.L490:
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	mov.w	r2,r2
	bne	.L492
	bra	.L498
.L500:
	mov.w	r3,r3
	beq	.L494
	dec #1,r2
	inc #2,r0
	inc #2,r1
	mov.w	r2,r2
	beq	.L498
.L492:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L500
.L494:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L497
	mov.w	#-1,r0
.L491:
	mov.l	@er7+,er4
	rts
.L497:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L491
.L498:
	sub.w	r0,r0
	bra	.L491
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L508
.L510:
	mov.w	@er0,r3
	cmp.w	r1,r3
	beq	.L511
	dec #1,r2
	inc #2,r0
.L508:
	mov.w	r2,r2
	bne	.L510
	sub.w	r0,r0
	rts
.L511:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.w	r2,r2
	bne	.L514
	bra	.L520
.L516:
	dec #1,r2
	inc #2,r0
	inc #2,r1
	mov.w	r2,r2
	beq	.L520
.L514:
	mov.w	@er0,r4
	mov.w	@er1,r3
	cmp.w	r3,r4
	beq	.L516
	blo	.L523
	mov.w	#1,r0
	cmp.w	r3,r4
	bhi	.L513
.L520:
	sub.w	r0,r0
.L513:
	mov.l	@er7+,er4
	rts
.L523:
	mov.w	#-1,r0
	bra	.L513
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.w	r0,r3
	mov.w	r2,r2
	beq	.L525
	shll.w	r2
	jsr	@_memcpy
	mov.w	r0,r3
.L525:
	mov.w	r3,r0
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	cmp.w	r1,r0
	beq	.L549
	mov.w	r0,@er7
	mov.w	r1,r5
	mov.w	r2,r4
	dec #1,r4
	mov.w	r2,r6
	shll.w	r6
	mov.w	r6,@(2,er7)
	mov.w	r0,r6
	sub.w	r1,r6
	mov.w	@(2,er7),r3
	cmp.w	r3,r6
	bhs	.L561
	mov.w	r2,r2
	beq	.L549
	shll.w	r4
.L534:
	mov.w	r1,r2
	add.w	r4,r2
	mov.w	@er2,r6
	mov.w	r0,r3
	add.w	r4,r3
	mov.w	r6,@er3
	dec #2,r4
	cmp.w	#-2,r4
	bne	.L534
.L549:
	adds	#4,er7
	ldm.l	@er7+,er4-er6
	rts
.L561:
	mov.w	r2,r2
	beq	.L549
	cmp.w	#8,r4
	bls	.L560
	mov.w	r1,r6
	or.w	r0,r6
	and.w	#3,r6
	bne	.L560
	mov.w	r1,r3
	inc #2,r3
	cmp.w	r3,r0
	beq	.L560
	mov.w	r2,r6
	shlr.w	r6
	sub.w	r4,r4
	mov.w	r0,r3
	mov.w	r0,@(2,er7)
.L541:
	mov.l	@er5+,er0
	mov.l	er0,@er3
	inc #1,r4
	adds	#4,er3
	cmp.w	r6,r4
	bne	.L541
	mov.w	@(2,er7),r0
	btst	#0,r2l
	beq	.L549
	and	#254,r2l
	shll.w	r2
	add.w	r2,r1
	mov.w	@er1,r5
	add.w	r0,r2
	mov.w	r5,@er2
	bra	.L549
.L560:
	mov.w	r0,r1
.L540:
	mov.w	@er5+,r2
	mov.w	r2,@er1
	dec #1,r4
	inc #2,r1
	cmp.w	#-1,r4
	bne	.L540
	bra	.L549
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	mov.w	r2,r6
	dec #1,r6
	mov.w	r2,r2
	beq	.L563:16
	sub.l	er3,er3
	bld	#1,r0l
	rotxl.l	er3
	cmp.w	#5,r6
	bls	.L568:16
	mov.w	r3,r3
	beq	.L569:16
	mov.w	r0,r4
	inc #2,r4
	mov.w	r4,@(2,er7)
	mov.w	r1,@er0
	dec #1,r6
.L565:
	sub.w	r3,r2
	mov.w	r2,@er7
	mov.w	r2,r5
	shlr.w	r5
	mov.l	er1,er4
	mov.w	r4,e4
	sub.w	r4,r4
	mov.w	r1,r4
	mov.w	r3,r2
	shll.w	r2
	add.w	r0,r2
	sub.w	r3,r3
.L566:
	mov.l	er4,@er2
	inc #1,r3
	adds	#4,er2
	cmp.w	r5,r3
	bne	.L566
	mov.w	@er7,r5
	mov.l	er5,er4
	btst	#0,r4l
	beq	.L563
	and	#254,r5l
	sub.w	r5,r6
	shll.w	r5
	mov.w	@(2,er7),r2
	add.w	r5,r2
.L564:
	mov.w	r1,@er2
	mov.w	r6,r6
	beq	.L563
	mov.w	r1,@(2,er2)
	cmp.w	#1,r6
	beq	.L563
	mov.w	r1,@(4,er2)
	cmp.w	#2,r6
	beq	.L563
	mov.w	r1,@(6,er2)
	cmp.w	#3,r6
	beq	.L563
	mov.w	r1,@(8,er2)
	cmp.w	#4,r6
	beq	.L563
	mov.w	r1,@(10,er2)
.L563:
	adds	#4,er7
	ldm.l	@er7+,er4-er6
	rts
.L569:
	mov.w	r0,@(2,er7)
	bra	.L565
.L568:
	mov.w	r0,r2
	bra	.L564
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	stm.l	er4-er6,@-er7
	cmp.w	r1,r0
	bhs	.L593
	mov.w	r0,r5
	add.w	r2,r5
	add.w	r2,r1
	mov.w	r2,r2
	beq	.L592
.L595:
	dec #1,r5
	mov.b	@er5,r4l
	dec #1,r1
	mov.b	r4l,@er1
	cmp.w	r5,r0
	bne	.L595
.L592:
	ldm.l	@er7+,er4-er6
	rts
.L593:
	beq	.L592
	mov.w	r2,r2
	beq	.L592
	mov.w	r2,r3
	dec #1,r3
	cmp.w	#6,r3
	bls	.L596
	mov.w	r1,r4
	or.w	r0,r4
	and.w	#3,r4
	beq	.L624
.L596:
	add.w	r0,r2
.L602:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	inc #1,r1
	cmp.w	r0,r2
	bne	.L602
	bra	.L592
.L624:
	mov.w	r0,r5
	inc #1,r5
	mov.w	r1,r6
	sub.w	r5,r6
	cmp.w	#2,r6
	bls	.L596
	mov.w	r1,r3
	mov.w	r2,r6
	and	#252,r6l
	mov.w	r0,r5
	add.w	r6,r5
.L599:
	mov.l	@er0+,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.w	r0,r5
	bne	.L599
	add.w	r6,r1
	mov.w	r2,r0
	sub.w	r6,r0
	cmp.w	r6,r2
	beq	.L592
	mov.b	@er5,r2l
	mov.b	r2l,@er1
	cmp.w	#1,r0
	beq	.L592
	mov.b	@(1,er5),r3l
	mov.b	r3l,@(1,er1)
	cmp.w	#2,r0
	beq	.L592
	mov.b	@(2,er5),r6l
	mov.b	r6l,@(2,er1)
	bra	.L592:16
	.size	_bcopy, .-_bcopy
	.align 1
	.global _rotl64
_rotl64:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L626
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L632
.L631:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L631
.L632:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L628
.L630:
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L634
.L633:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L633
.L634:
.L629:
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er1,er4
	or.l	er5,er4
	mov.l	er2,er0
	mov.l	er4,er1
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L626:
	mov.l	er1,er6
	mov.w	#31,r0
	sub.w	r2,r0
	shlr.l	er6
	mov.b	r0l,r0l
	ble	.L636
.L635:
	shlr.l	er6
	add.b	#-1,r0l
	bne	.L635
.L636:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L638
.L637:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L637
.L638:
	or.l	er6,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L640
.L639:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L639
.L640:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bpl	.L630
.L628:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r6
	sub.w	r2,r6
	mov.b	r6l,r6l
	ble	.L642
.L641:
	shll.l	er3
	add.b	#-1,r6l
	bne	.L641
.L642:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L644
.L643:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L643
.L644:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L646
.L645:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L645
.L646:
	bra	.L629:16
	.size	_rotl64, .-_rotl64
	.align 1
	.global _rotr64
_rotr64:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L648
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L654
.L653:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L653
.L654:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L650
.L652:
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L656
.L655:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L655
.L656:
.L651:
	mov.l	er0,er2
	or.l	er4,er2
	mov.l	er1,er4
	or.l	er5,er4
	mov.l	er2,er0
	mov.l	er4,er1
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L648:
	mov.l	er0,er6
	mov.w	#31,r0
	sub.w	r2,r0
	shll.l	er6
	mov.b	r0l,r0l
	ble	.L658
.L657:
	shll.l	er6
	add.b	#-1,r0l
	bne	.L657
.L658:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L660
.L659:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L659
.L660:
	or.l	er6,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L662
.L661:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L661
.L662:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bpl	.L652
.L650:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r6
	sub.w	r2,r6
	mov.b	r6l,r6l
	ble	.L664
.L663:
	shlr.l	er3
	add.b	#-1,r6l
	bne	.L663
.L664:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L666
.L665:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L665
.L666:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L668
.L667:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L667
.L668:
	bra	.L651:16
	.size	_rotr64, .-_rotr64
	.align 1
	.global _rotl32
_rotl32:
	mov.b	r1l,r1l
	ble	.L673
.L670:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L670
.L673:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L678
.L675:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L675
.L678:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L683
.L680:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L680
.L683:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L688
.L685:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L685
.L688:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L693
.L690:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L690
.L693:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L698
.L695:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L695
.L698:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L703
.L700:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L700
.L703:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L708
.L705:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L705
.L708:
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
	mov.l	er2,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	and	#0,r1l
	sub.w	e1,e1
	or.l	er1,er0
	shll.l	#2,er2
	shll.l	#2,er2
	shll.l	#2,er2
	shll.l	#2,er2
	sub.w	r2,r2
	extu.w	e2
	or.l	er2,er0
	rts
	.size	_bswap_32, .-_bswap_32
	.align 1
	.global _bswap_64
_bswap_64:
	stm.l	er4-er6,@-er7
	add.w	#-32,r7
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
	mov.l	er0,er1
	mov.l	@er7,er4
	mov.l	er4,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	sub.l	er0,er0
	sub.l	er5,er5
	mov.b	r2h,r5h
	or.l	er0,er6
	mov.l	er6,er4
	or.l	er5,er1
	mov.l	er1,er5
	mov.l	@er7,er0
	shll.l	#2,er0
	shll.l	#2,er0
	shll.l	#2,er0
	shll.l	#2,er0
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er6
	or.l	er0,er6
	sub.l	er0,er0
	mov.l	er6,er1
	sub.w	r1,r1
	extu.w	e1
	or.l	er0,er4
	mov.l	er4,@(8,er7)
	or.l	er1,er5
	mov.l	er5,@(12,er7)
	mov.l	@er7,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	@(4,er7),er3
	mov.l	er3,er6
	shlr.l	#2,er6
	shlr.l	#2,er6
	shlr.l	#2,er6
	shlr.l	#2,er6
	mov.l	er6,er1
	or.l	er2,er1
	sub.l	er0,er0
	mov.l	er1,er4
	and.l	#-16777216,er4
	mov.l	@(8,er7),er2
	or.l	er0,er2
	mov.l	er2,er6
	mov.l	@(12,er7),er3
	or.l	er4,er3
	mov.l	er3,er4
	mov.l	@(4,er7),er1
	shll.l	er1
	mov.l	er1,@(12,er7)
	mov.l	@(4,er7),er0
	mov.l	@(12,er7),er5
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	er5,er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	cmp.l	er5,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(8,er7),er5
	shll.l	er5
	add.l	er0,er5
	mov.l	er5,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er5
	cmp.l	er5,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er1
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er3
	shll.l	er3
	add.l	er5,er3
	mov.l	er3,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er2
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er5
	shll.l	er5
	add.l	er0,er5
	mov.l	er5,@(8,er7)
	mov.l	@(12,er7),er3
	shll.l	er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er3
	or.l	er6,er3
	mov.l	er3,@(24,er7)
	mov.l	er4,@(28,er7)
	mov.l	@(4,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(4,er7),er1
	mov.l	@(12,er7),er5
	cmp.l	er1,er5
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.l	er5,er3
	shll.l	er3
	mov.l	er3,@(20,er7)
	cmp.l	er5,er3
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er6
	shll.l	er6
	mov.l	er6,er1
	add.l	er3,er1
	and	#0,r1l
	sub.w	e1,e1
	mov.l	@(24,er7),er0
	or.l	er1,er0
	mov.l	@(4,er7),er2
	mov.l	er2,er3
	shll.l	#2,er3
	shll.l	#2,er3
	shll.l	#2,er3
	shll.l	#2,er3
	mov.l	er3,er1
	sub.l	er6,er6
	mov.l	er6,@(4,er7)
	sub.w	r1,r1
	extu.w	e1
	mov.l	er1,@er7
	mov.l	@er7,er5
	or.l	er0,er5
	mov.l	er5,er0
	mov.l	er4,er1
	add.w	#32,r7
	ldm.l	@er7+,er4-er6
	rts
	.size	_bswap_64, .-_bswap_64
	.align 1
	.global _ffs
_ffs:
	btst	#0,r0l
	bne	.L747
	btst	#1,r0l
	bne	.L748
	btst	#2,r0l
	bne	.L749
	btst	#3,r0l
	bne	.L750
	btst	#4,r0l
	bne	.L751
	btst	#5,r0l
	bne	.L752
	btst	#6,r0l
	bne	.L753
	btst	#7,r0l
	bne	.L754
	btst	#0,r0h
	bne	.L755
	btst	#1,r0h
	bne	.L756
	btst	#2,r0h
	bne	.L757
	btst	#3,r0h
	bne	.L758
	btst	#4,r0h
	bne	.L759
	btst	#5,r0h
	bne	.L760
	btst	#6,r0h
	bne	.L761
	mov.w	r0,r0
	bne	.L763
	sub.w	r0,r0
	rts
.L747:
	mov.w	#1,r0
	rts
.L748:
	mov.w	#2,r0
	rts
.L759:
	mov.w	#13,r0
	rts
.L749:
	mov.w	#3,r0
	rts
.L750:
	mov.w	#4,r0
	rts
.L751:
	mov.w	#5,r0
	rts
.L752:
	mov.w	#6,r0
	rts
.L753:
	mov.w	#7,r0
	rts
.L754:
	mov.w	#8,r0
	rts
.L755:
	mov.w	#9,r0
	rts
.L756:
	mov.w	#10,r0
	rts
.L757:
	mov.w	#11,r0
	rts
.L758:
	mov.w	#12,r0
	rts
.L760:
	mov.w	#14,r0
	rts
.L761:
	mov.w	#15,r0
	rts
.L763:
	mov.w	#16,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L767
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L770
	mov.w	#1,r0
.L766:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L766
	rts
.L767:
	sub.w	r0,r0
.L770:
	rts
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 1
	.global _gl_isinff
_gl_isinff:
	stm.l	er4-er5,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L775
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L776
.L774:
	mov.w	r5,r0
	ldm.l	@er7+,er4-er5
	rts
.L775:
	mov.w	#1,r0
	ldm.l	@er7+,er4-er5
	rts
.L776:
	sub.w	r5,r5
	bra	.L774
	.size	_gl_isinff, .-_gl_isinff
	.align 1
	.global _gl_isinfd
_gl_isinfd:
	stm.l	er4-er5,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L780
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L781
.L779:
	mov.w	r5,r0
	ldm.l	@er7+,er4-er5
	rts
.L780:
	mov.w	#1,r0
	ldm.l	@er7+,er4-er5
	rts
.L781:
	sub.w	r5,r5
	bra	.L779
	.size	_gl_isinfd, .-_gl_isinfd
	.align 1
	.global _gl_isinfl
_gl_isinfl:
	stm.l	er4-er5,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L785
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L786
.L784:
	mov.w	r5,r0
	ldm.l	@er7+,er4-er5
	rts
.L785:
	mov.w	#1,r0
	ldm.l	@er7+,er4-er5
	rts
.L786:
	sub.w	r5,r5
	bra	.L784
	.size	_gl_isinfl, .-_gl_isinfl
	.align 1
	.global __Qp_itoq
__Qp_itoq:
	mov.l	er4,@-er7
	mov.w	r0,r4
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
	stm.l	er4-er5,@-er7
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L789
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L789
	mov.w	r4,r4
	bmi	.L805
	mov.l	#1073741824,er1
.L791:
	btst	#0,r4l
	beq	.L792
.L794:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L792:
	mov.w	r4,r4
	bpl	.L793
	inc #1,r4
.L793:
	shar.w	r4
	beq	.L789
.L796:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L794
	mov.w	r4,r4
	bmi	.L806
	shar.w	r4
	bra	.L796
.L789:
	mov.l	er5,er0
	adds	#4,er7
	ldm.l	@er7+,er4-er5
	rts
.L806:
	inc #1,r4
	shar.w	r4
	bra	.L796
.L805:
	mov.l	#1056964608,er1
	bra	.L791
	.size	_ldexpf, .-_ldexpf
	.align 1
	.global _ldexp
_ldexp:
	stm.l	er4-er5,@-er7
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L808
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L808
	mov.w	r4,r4
	bmi	.L824
	mov.l	#1073741824,er1
.L810:
	btst	#0,r4l
	beq	.L811
.L813:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L811:
	mov.w	r4,r4
	bpl	.L812
	inc #1,r4
.L812:
	shar.w	r4
	beq	.L808
.L815:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L813
	mov.w	r4,r4
	bmi	.L825
	shar.w	r4
	bra	.L815
.L808:
	mov.l	er5,er0
	adds	#4,er7
	ldm.l	@er7+,er4-er5
	rts
.L825:
	inc #1,r4
	shar.w	r4
	bra	.L815
.L824:
	mov.l	#1056964608,er1
	bra	.L810
	.size	_ldexp, .-_ldexp
	.align 1
	.global _ldexpl
_ldexpl:
	stm.l	er4-er5,@-er7
	subs	#4,er7
	mov.l	er0,er5
	mov.w	r1,r4
	mov.l	er0,er1
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L827
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L827
	mov.w	r4,r4
	bmi	.L843
	mov.l	#1073741824,er1
.L829:
	btst	#0,r4l
	beq	.L830
.L832:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L830:
	mov.w	r4,r4
	bpl	.L831
	inc #1,r4
.L831:
	shar.w	r4
	beq	.L827
.L834:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L832
	mov.w	r4,r4
	bmi	.L844
	shar.w	r4
	bra	.L834
.L827:
	mov.l	er5,er0
	adds	#4,er7
	ldm.l	@er7+,er4-er5
	rts
.L844:
	inc #1,r4
	shar.w	r4
	bra	.L834
.L843:
	mov.l	#1056964608,er1
	bra	.L829
	.size	_ldexpl, .-_ldexpl
	.align 1
	.global _memxor
_memxor:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	mov.w	r2,r2
	beq	.L846
	mov.w	r2,r3
	dec #1,r3
	cmp.w	#3,r3
	bls	.L847
	mov.w	r0,r4
	or.w	r1,r4
	and.w	#3,r4
	bne	.L847
	mov.w	r0,r3
	mov.w	r2,r6
	and	#252,r6l
	mov.w	r6,@(2,er7)
	mov.w	r1,r5
	add.w	r6,r5
.L848:
	mov.l	@er1+,er4
	mov.l	@er3,er6
	xor.l	er6,er4
	mov.l	er4,@er3
	adds	#4,er3
	cmp.w	r1,r5
	bne	.L848
	mov.w	r0,r3
	mov.w	@(2,er7),r4
	add.w	r4,r3
	mov.w	r2,r1
	sub.w	r4,r1
	cmp.w	r4,r2
	beq	.L846
	mov.b	@er3,r2l
	mov.b	@er5,r6l
	xor	r6l,r2l
	mov.b	r2l,@er3
	cmp.w	#1,r1
	beq	.L846
	mov.b	@(1,er3),r2l
	mov.b	@(1,er5),r4l
	xor	r4l,r2l
	mov.b	r2l,@(1,er3)
	cmp.w	#2,r1
	beq	.L846
	mov.b	@(2,er5),r5l
	mov.b	@(2,er3),r1l
	xor	r1l,r5l
	mov.b	r5l,@(2,er3)
.L846:
	adds	#4,er7
	ldm.l	@er7+,er4-er6
	rts
.L847:
	mov.w	r0,r3
	add.w	r1,r2
.L850:
	mov.b	@er1+,r6l
	mov.b	@er3,r4l
	xor	r4l,r6l
	mov.b	r6l,@er3
	inc #1,r3
	cmp.w	r1,r2
	bne	.L850
	bra	.L846
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er4,@-er7
	mov.b	@er0,r3l
	beq	.L870
	mov.w	r0,r3
.L865:
	inc #1,r3
	mov.b	@er3,r4l
	bne	.L865
.L864:
	mov.w	r2,r2
	bne	.L866
	bra	.L867
.L868:
	inc #1,r1
	inc #1,r3
	dec #1,r2
	beq	.L867
.L866:
	mov.b	@er1,r4l
	mov.b	r4l,@er3
	mov.b	r4l,r4l
	bne	.L868
.L869:
	mov.l	@er7+,er4
	rts
.L867:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
	bra	.L869
.L870:
	mov.w	r0,r3
	bra	.L864
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.w	r0,r2
	sub.w	r0,r0
	mov.w	r1,r1
	beq	.L883
.L877:
	mov.w	r2,r3
	add.w	r0,r3
	mov.b	@er3,r3l
	bne	.L879
	rts
.L879:
	inc #1,r0
	cmp.w	r0,r1
	bne	.L877
	rts
.L883:
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	beq	.L890
.L886:
	mov.w	r1,r2
	bra	.L889
.L888:
	inc #1,r2
	cmp.b	r4l,r3l
	beq	.L887
.L889:
	mov.b	@er2,r3l
	bne	.L888
	inc #1,r0
	mov.b	@er0,r4l
	bne	.L886
.L890:
	sub.w	r0,r0
.L887:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.w	r0,r2
	sub.w	r4,r4
	bra	.L896
.L899:
	mov.w	r4,r0
	mov.w	r0,r4
	inc #1,r2
	mov.b	r3l,r3l
	beq	.L900
.L896:
	mov.b	@er2,r3l
	mov.b	r3l,r0l
	extu.w	r0
	cmp.w	r1,r0
	bne	.L899
	mov.w	r2,r0
	mov.w	r0,r4
	inc #1,r2
	mov.b	r3l,r3l
	bne	.L896
.L900:
	mov.l	@er7+,er4
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	r1,r2
	mov.w	r1,@(4,er7)
	mov.b	@er1,r4l
	beq	.L901
.L903:
	inc #1,r2
	mov.b	@er2,r3l
	bne	.L903
	mov.w	@(4,er7),r3
	sub.w	r3,r2
	beq	.L901
	dec #1,r2
	mov.w	r2,@(6,er7)
	bra	.L911
.L923:
	inc #1,r0
	mov.b	r2l,r2l
	beq	.L922
.L911:
	mov.b	@er0,r2l
	cmp.b	r4l,r2l
	bne	.L923
	mov.w	@(6,er7),r5
	add.w	r0,r5
	mov.w	@(4,er7),r6
	mov.w	r0,r3
	mov.b	r4l,r1l
	mov.b	r4l,@(3,er7)
	bra	.L905
.L925:
	mov.w	r4,r6
.L905:
	cmp.w	r5,r3
	beq	.L921
	cmp.b	r1l,r2l
	bne	.L920
	inc #1,r3
	mov.w	r6,r4
	inc #1,r4
	mov.b	@er3,r2l
	beq	.L924
	mov.b	@er4,r1l
	bne	.L925
.L920:
	mov.b	@(3,er7),r4l
	inc #1,r0
	bra	.L911
.L922:
	sub.w	r0,r0
.L901:
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L921:
	mov.b	@(3,er7),r4l
.L907:
	cmp.b	r1l,r2l
	beq	.L901
	inc #1,r0
	bra	.L911
.L924:
	mov.b	@(3,er7),r4l
	mov.b	@(1,er6),r1l
	bra	.L907
	.size	_strstr, .-_strstr
	.align 1
	.global _copysign
_copysign:
	stm.l	er4-er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	sub.l	er1,er1
	mov.l	er0,er0
	bmi	.L936
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L930
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L929
.L930:
	mov.l	er4,er0
	ldm.l	@er7+,er4-er5
	rts
.L936:
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L930
.L929:
	xor.w	#32768,e4
	mov.l	er4,er0
	ldm.l	@er7+,er4-er5
	rts
	.size	_copysign, .-_copysign
	.align 1
	.global _memmem
_memmem:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	@(24,er7),r3
	beq	.L937
	cmp.w	r3,r1
	blo	.L948
	sub.w	r3,r1
	add.w	r0,r1
	cmp.w	r1,r0
	bhi	.L948
	mov.b	@er2+,r6l
	mov.w	r2,@(2,er7)
	dec #1,r3
	mov.w	r3,@er7
	bra	.L943
.L947:
	mov.w	r4,r0
.L939:
	cmp.w	r0,r1
	blo	.L948
.L943:
	mov.w	r0,r4
	mov.b	@er4+,r2l
	cmp.b	r6l,r2l
	bne	.L947
	mov.w	@(2,er7),r3
	mov.w	@er7,r2
	beq	.L937
.L942:
	mov.w	r4,r2
	mov.w	@er7,r5
	add.w	r4,r5
	mov.w	r1,@(4,er7)
	mov.w	r0,@(6,er7)
	bra	.L940
.L941:
	inc #1,r2
	inc #1,r3
	cmp.w	r5,r2
	beq	.L954
.L940:
	mov.b	@er2,r0l
	mov.b	@er3,r1l
	cmp.b	r1l,r0l
	beq	.L941
	mov.w	@(4,er7),r1
	cmp.w	r1,r4
	bhi	.L948
	mov.w	r4,r0
	mov.b	@er0+,r5l
	cmp.b	r5l,r6l
	bne	.L939
	mov.w	@(2,er7),r3
	mov.w	r4,r2
	mov.w	r0,r4
	mov.w	r2,r0
	bra	.L942
.L954:
	mov.w	@(6,er7),r0
.L937:
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L948:
	sub.w	r0,r0
	bra	.L937
	.size	_memmem, .-_memmem
	.align 1
	.global _mempcpy
_mempcpy:
	mov.l	er4,@-er7
	mov.w	r0,r3
	mov.w	r2,r4
	beq	.L957
	mov.w	r4,r2
	jsr	@_memmove
	mov.w	r0,r3
.L957:
	add.w	r4,r3
	mov.w	r3,r0
	mov.l	@er7+,er4
	rts
	.size	_mempcpy, .-_mempcpy
	.align 1
	.global _frexp
_frexp:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.w	r1,r6
	mov.w	r1,@er7
	sub.l	er1,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L983
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L984
	sub.w	r1,r1
	mov.w	r1,@(2,er7)
.L964:
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L970:
	inc #1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L970
.L971:
	mov.w	@er7,r0
	mov.w	r6,@er0
	mov.l	er4,er0
	mov.w	@(2,er7),r2
	beq	.L961
	xor.w	#32768,e0
.L961:
	adds	#4,er7
	ldm.l	@er7+,er4-er6
	rts
.L984:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L967
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L976
.L967:
	sub.w	r2,r2
	mov.w	@er7,r3
	mov.w	r2,@er3
	mov.l	er4,er0
	bra	.L961
.L983:
	mov.l	er4,er5
	xor.w	#32768,e5
	mov.l	#3212836864,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	bgt	.L985
	mov.l	er5,er4
	mov.w	#1,r3
	mov.w	r3,@(2,er7)
	bra	.L964:16
.L985:
	mov.l	#3204448256,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L974
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er4,er0
	bra	.L961
.L974:
	mov.w	#1,r4
	mov.w	r4,@(2,er7)
.L965:
	mov.l	er5,er4
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L972:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L972
	bra	.L971:16
.L976:
	mov.l	er4,er5
	sub.w	r0,r0
	mov.w	r0,@(2,er7)
	bra	.L965
	.size	_frexp, .-_frexp
	.align 1
	.global ___muldi3
___muldi3:
	stm.l	er4-er6,@-er7
	add.w	#-40,r7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(54,er7),er0
	mov.l	er0,@er7
	mov.l	@(58,er7),er1
	mov.l	er1,@(4,er7)
	mov.l	er2,er4
	mov.l	er3,er5
	or.l	er3,er2
	beq	.L993:16
	sub.l	er6,er6
	mov.l	er6,@(16,er7)
	mov.l	er6,@(20,er7)
.L992:
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
	bne	.L989
	sub.l	er6,er6
.L989:
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
	bne	.L992:16
.L986:
	mov.l	@(16,er7),er0
	mov.l	@(20,er7),er1
	add.w	#40,r7
	ldm.l	@er7+,er4-er6
	rts
.L993:
	sub.l	er3,er3
	mov.l	er3,@(16,er7)
	mov.l	er3,@(20,er7)
	bra	.L986
	.size	___muldi3, .-___muldi3
	.align 1
	.global _udivmodsi4
_udivmodsi4:
	stm.l	er4-er6,@-er7
	mov.l	er0,er3
	cmp.l	er0,er1
	bhs	.L1024
	mov.w	#32,r0
	sub.l	er4,er4
	add.b	#1,r4l
	bra	.L996
.L1000:
	shll.l	er1
	shll.l	er4
	cmp.l	er1,er3
	bls	.L998
	dec #1,r0
	beq	.L1016
.L996:
	mov.l	er1,er1
	bpl	.L1000
.L1001:
	sub.l	er0,er0
	bra	.L1008
.L1025:
	mov.l	er4,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	beq	.L999
.L1008:
	mov.l	er3,er6
	sub.l	er1,er6
	cmp.l	er1,er3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.l	er1,er3
	blo	.L1005
	mov.l	er6,er3
.L1005:
	mov.b	r5l,r5l
	bne	.L1025
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	bne	.L1008
.L999:
	mov.l	er2,er2
	beq	.L995
	mov.l	er3,er0
.L995:
	ldm.l	@er7+,er4-er6
	rts
.L998:
	mov.l	er4,er4
	bne	.L1001
.L1016:
	sub.l	er0,er0
	bra	.L999
.L1024:
	mov.l	er0,er4
	sub.l	er1,er4
	mov.b	#1,r0l
	cmp.l	er3,er1
	bls	.L1019
	sub.b	r0l,r0l
	cmp.l	er3,er1
	bls	.L1019
.L1013:
	extu.w	r0
	extu.l	er0
	bra	.L999
.L1019:
	mov.l	er4,er3
	bra	.L1013
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L1028
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L1028:
	mov.w	#7,r0
	rts
	.size	___clrsbqi2, .-___clrsbqi2
	.align 1
	.global ___clrsbdi2
___clrsbdi2:
	stm.l	er4-er5,@-er7
	add.w	#-8,r7
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
	beq	.L1035
.L1033:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
.L1029:
	add.w	#8,r7
	ldm.l	@er7+,er4-er5
	rts
.L1035:
	cmp.l	er3,er5
	bne	.L1033
	mov.w	#63,r0
	bra	.L1029
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.l	er4,@-er7
	mov.w	r0,r2
	beq	.L1039:16
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
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	#2,r3
	mov.w	r1,r4
	shll.w	#2,r4
	mov.w	r3,r3
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	#2,r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	#2,r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	#2,r3
	shlr.w	#2,r3
	mov.w	r1,r4
	shll.w	#2,r4
	shll.w	#2,r4
	mov.w	r3,r3
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	#2,r3
	shlr.w	#2,r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	#2,r3
	shlr.w	#2,r3
	shlr.w	#2,r3
	mov.w	r1,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	#2,r4
	mov.w	r3,r3
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	shlr.w	#2,r3
	shlr.w	#2,r3
	shlr.w	#2,r3
	shlr.w	r3
	mov.w	r1,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L1036:16
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
	beq	.L1036:16
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
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	#2,r3
	mov.w	r1,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	#2,r4
	mov.w	r3,r3
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	#2,r3
	shlr.w	r3
	mov.w	r1,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	#2,r4
	shll.w	r4
	mov.w	r3,r3
	beq	.L1036:16
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	rotl.w	#2,r3
	rotl.w	#2,r3
	and.w	#15,r3
	mov.w	r1,r4
	rotr.w	#2,r4
	rotr.w	#2,r4
	and.w	#61440,r4
	mov.w	r3,r3
	beq	.L1036
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	rotl.w	#2,r3
	rotl.w	r3
	and.w	#7,r3
	mov.w	r1,r4
	rotr.w	#2,r4
	rotr.w	r4
	and.w	#57344,r4
	mov.w	r3,r3
	beq	.L1036
	and.l	#1,er3
	neg.l	er3
	and.w	r4,r3
	add.w	r3,r0
	mov.w	r2,r3
	rotl.w	#2,r3
	and.w	#3,r3
	mov.w	r1,r4
	rotr.w	#2,r4
	and.w	#49152,r4
	mov.w	r3,r3
	beq	.L1036
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
.L1036:
	mov.l	@er7+,er4
	rts
.L1039:
	sub.w	r0,r0
	bra	.L1036
	.size	___mulsi3, .-___mulsi3
	.align 1
	.global ___cmovd
___cmovd:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	r2,r4
	mov.w	r2,r6
	shlr.w	#2,r6
	shlr.w	r6
	and	#248,r2l
	mov.w	r2,@(2,er7)
	cmp.w	r1,r0
	blo	.L1083
	mov.w	r1,r3
	add.w	r4,r3
	cmp.w	r3,r0
	bls	.L1112:16
.L1083:
	mov.w	r6,r6
	beq	.L1086:16
	mov.w	r1,r2
	mov.w	r0,r3
	shll.w	#2,r6
	shll.w	r6
	add.w	r1,r6
	mov.w	r0,@(4,er7)
	mov.w	r1,r5
.L1087:
	mov.l	@er2,er0
	mov.l	@(4,er2),er1
	mov.l	er0,@er3
	mov.l	er1,@(4,er3)
	add.w	#8,r2
	add.w	#8,r3
	cmp.w	r6,r2
	bne	.L1087
	mov.w	@(4,er7),r0
	mov.w	r5,r1
	mov.w	@(2,er7),r3
	cmp.w	r3,r4
	bls	.L1082
	mov.w	r4,r6
	sub.w	r3,r6
	mov.w	r6,@(4,er7)
	dec #1,r6
	cmp.w	#6,r6
	bls	.L1113:16
	mov.w	r3,r5
	mov.w	r3,r2
	add.w	r0,r2
	add.w	r1,r3
	inc #1,r5
	add.w	r1,r5
	mov.w	r2,r6
	sub.w	r5,r6
	cmp.w	#2,r6
	bhi	.L1114
.L1089:
	add.w	r4,r1
.L1094:
	mov.b	@er3+,r4l
	mov.b	r4l,@er2
	inc #1,r2
	cmp.w	r1,r3
	bne	.L1094
.L1082:
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L1114:
	mov.w	r3,r5
	or.w	r2,r5
	and.w	#3,r5
	bne	.L1089
	mov.w	@(4,er7),r5
	and	#252,r5l
	mov.w	r3,r6
	add.w	r5,r6
	mov.w	r5,@(6,er7)
.L1092:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.w	r6,r3
	bne	.L1092
	mov.w	@(6,er7),r6
	mov.w	@(2,er7),r2
	add.w	r6,r2
	mov.w	@(4,er7),r3
	cmp.w	r6,r3
	beq	.L1082
	mov.w	r1,r5
	add.w	r2,r5
	mov.b	@er5,r6l
	mov.w	r0,r3
	add.w	r2,r3
	mov.b	r6l,@er3
	mov.w	r2,r6
	inc #1,r6
	cmp.w	r6,r4
	bls	.L1082
	mov.w	r1,r5
	add.w	r6,r5
	mov.b	@er5,r3l
	add.w	r0,r6
	mov.b	r3l,@er6
	inc #2,r2
	cmp.w	r2,r4
	bls	.L1082
	add.w	r2,r1
	mov.b	@er1,r1l
	add.w	r2,r0
	mov.b	r1l,@er0
	bra	.L1082
.L1112:
	mov.w	r4,r5
	dec #1,r5
	mov.w	r4,r4
	beq	.L1082
.L1084:
	mov.w	r1,r4
	add.w	r5,r4
	mov.b	@er4,r6l
	mov.w	r0,r2
	add.w	r5,r2
	mov.b	r6l,@er2
	dec #1,r5
	cmp.w	#-1,r5
	bne	.L1084
	bra	.L1082:16
.L1086:
	mov.w	r4,r4
	beq	.L1082:16
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	add.w	r0,r2
	add.w	r1,r3
	bra	.L1089:16
.L1113:
	mov.w	r3,r2
	add.w	r0,r2
	add.w	r5,r3
	bra	.L1089:16
	.size	___cmovd, .-___cmovd
	.align 1
	.global ___cmovh
___cmovh:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	r2,r5
	shlr.w	r5
	cmp.w	r1,r0
	blo	.L1116
	mov.w	r1,r3
	add.w	r2,r3
	cmp.w	r3,r0
	bls	.L1144:16
.L1116:
	mov.w	r5,r5
	beq	.L1119
	mov.w	r5,r3
	dec #1,r3
	cmp.w	#8,r3
	bls	.L1120
	mov.w	r1,r6
	or.w	r0,r6
	and.w	#3,r6
	beq	.L1145
.L1120:
	mov.w	r1,r4
	mov.w	r0,r3
	shll.w	r5
	add.w	r1,r5
.L1125:
	mov.w	@er4+,r6
	mov.w	r6,@er3
	inc #2,r3
	cmp.w	r4,r5
	bne	.L1125
.L1119:
	btst	#0,r2l
	beq	.L1115
.L1146:
	dec #1,r2
	add.w	r2,r1
	mov.b	@er1,r1l
	add.w	r2,r0
	mov.b	r1l,@er0
.L1115:
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L1145:
	mov.w	r1,r4
	inc #2,r4
	cmp.w	r4,r0
	beq	.L1120
	mov.w	r2,r4
	shlr.w	#2,r4
	mov.w	r4,@(2,er7)
	mov.w	r1,r4
	mov.w	r0,r3
	mov.w	r2,r6
	and	#252,r6l
	mov.w	r6,@(6,er7)
	add.w	r1,r6
	mov.w	r5,@(4,er7)
.L1123:
	mov.l	@er4+,er5
	mov.l	er5,@er3
	adds	#4,er3
	cmp.w	r6,r4
	bne	.L1123
	mov.w	@(4,er7),r4
	mov.w	@(2,er7),r3
	shll.w	r3
	cmp.w	r3,r4
	beq	.L1119
	mov.w	@(6,er7),r6
	mov.w	r6,r5
	add.w	r1,r5
	mov.w	@er5,r4
	mov.w	r6,r3
	add.w	r0,r3
	mov.w	r4,@er3
	btst	#0,r2l
	beq	.L1115
	bra	.L1146
.L1144:
	mov.w	r2,r6
	dec #1,r6
	mov.w	r2,r2
	beq	.L1115
.L1117:
	mov.w	r1,r2
	add.w	r6,r2
	mov.b	@er2,r4l
	mov.w	r0,r5
	add.w	r6,r5
	mov.b	r4l,@er5
	dec #1,r6
	cmp.w	#-1,r6
	bne	.L1117
	bra	.L1115
	.size	___cmovh, .-___cmovh
	.align 1
	.global ___cmovw
___cmovw:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.w	r2,r4
	mov.w	r2,r6
	shlr.w	#2,r6
	and	#252,r2l
	mov.w	r2,@er7
	cmp.w	r1,r0
	blo	.L1148
	mov.w	r1,r3
	add.w	r4,r3
	cmp.w	r3,r0
	bls	.L1186:16
.L1148:
	mov.w	r6,r6
	beq	.L1187:16
	mov.w	r6,r3
	dec #1,r3
	cmp.w	#8,r3
	bls	.L1153
	mov.w	r0,r5
	or.w	r1,r5
	and.w	#3,r5
	beq	.L1188
.L1153:
	mov.w	r1,r3
	mov.w	r0,r2
	shll.w	r6
	add.w	r1,r6
.L1158:
	mov.w	@er3+,r5
	mov.w	r5,@er2
	inc #2,r2
	cmp.w	r6,r3
	bne	.L1158
.L1159:
	mov.w	@er7,r3
	cmp.w	r3,r4
	bls	.L1147
	mov.w	r4,r6
	sub.w	r3,r6
	mov.w	r6,@(2,er7)
	dec #1,r6
	cmp.w	#6,r6
	bls	.L1189:16
	mov.w	r3,r5
	mov.w	r3,r2
	add.w	r0,r2
	add.w	r1,r3
	inc #1,r5
	add.w	r1,r5
	mov.w	r2,r6
	sub.w	r5,r6
	cmp.w	#2,r6
	bhi	.L1190
.L1152:
	add.w	r4,r1
.L1164:
	mov.b	@er3+,r0l
	mov.b	r0l,@er2
	inc #1,r2
	cmp.w	r3,r1
	bne	.L1164
.L1147:
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L1188:
	mov.w	r1,r2
	inc #2,r2
	cmp.w	r2,r0
	beq	.L1153
	mov.w	r4,r3
	shlr.w	#2,r3
	shlr.w	r3
	mov.w	r3,r5
	mov.w	r3,@(2,er7)
	mov.w	r1,r3
	mov.w	r0,r2
	shll.w	#2,r5
	mov.w	r5,@(6,er7)
	add.w	r1,r5
	mov.w	r6,@(4,er7)
.L1156:
	mov.l	@er3+,er6
	mov.l	er6,@er2
	adds	#4,er2
	cmp.w	r5,r3
	bne	.L1156
	mov.w	@(4,er7),r5
	mov.w	@(2,er7),r3
	shll.w	r3
	cmp.w	r3,r5
	beq	.L1159:16
	mov.w	@(6,er7),r6
	mov.w	r6,r2
	add.w	r1,r2
	mov.w	@er2,r5
	mov.w	r6,r3
	add.w	r0,r3
	mov.w	r5,@er3
	bra	.L1159:16
.L1190:
	mov.w	r3,r5
	or.w	r2,r5
	and.w	#3,r5
	bne	.L1152
	mov.w	@(2,er7),r5
	and	#252,r5l
	mov.w	r3,r6
	add.w	r5,r6
	mov.w	r5,@(4,er7)
.L1162:
	mov.l	@er3+,er5
	mov.l	er5,@er2
	adds	#4,er2
	cmp.w	r6,r3
	bne	.L1162
	mov.w	@(4,er7),r6
	mov.w	@er7,r2
	add.w	r6,r2
	mov.w	@(2,er7),r3
	cmp.w	r6,r3
	beq	.L1147:16
	mov.w	r1,r5
	add.w	r2,r5
	mov.b	@er5,r6l
	mov.w	r0,r3
	add.w	r2,r3
	mov.b	r6l,@er3
	mov.w	r2,r6
	inc #1,r6
	cmp.w	r6,r4
	bls	.L1147:16
	mov.w	r1,r5
	add.w	r6,r5
	mov.b	@er5,r3l
	add.w	r0,r6
	mov.b	r3l,@er6
	inc #2,r2
	cmp.w	r2,r4
	bls	.L1147:16
	add.w	r2,r1
	mov.b	@er1,r1l
	add.w	r2,r0
	mov.b	r1l,@er0
	bra	.L1147:16
.L1186:
	mov.w	r4,r5
	dec #1,r5
	mov.w	r4,r4
	beq	.L1147:16
.L1149:
	mov.w	r1,r4
	add.w	r5,r4
	mov.b	@er4,r6l
	mov.w	r0,r2
	add.w	r5,r2
	mov.b	r6l,@er2
	dec #1,r5
	cmp.w	#-1,r5
	bne	.L1149
	bra	.L1147:16
.L1187:
	mov.w	r4,r4
	beq	.L1147:16
	mov.w	@er7,r3
	mov.w	r3,r2
	add.w	r0,r2
	add.w	r1,r3
	bra	.L1152:16
.L1189:
	mov.w	r3,r2
	add.w	r0,r2
	add.w	r1,r3
	bra	.L1152:16
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
	bmi	.L1200
	btst	#6,r0h
	bne	.L1201
	btst	#5,r0h
	bne	.L1202
	btst	#4,r0h
	bne	.L1203
	btst	#3,r0h
	bne	.L1204
	btst	#2,r0h
	bne	.L1205
	btst	#1,r0h
	bne	.L1206
	btst	#0,r0h
	bne	.L1207
	btst	#7,r0l
	bne	.L1208
	btst	#6,r0l
	bne	.L1209
	btst	#5,r0l
	bne	.L1210
	btst	#4,r0l
	bne	.L1211
	btst	#3,r0l
	bne	.L1212
	btst	#2,r0l
	bne	.L1213
	btst	#1,r0l
	bne	.L1214
	mov.w	r0,r0
	bne	.L1216
	mov.w	#16,r0
	rts
.L1200:
	sub.w	r0,r0
	rts
.L1201:
	mov.w	#1,r0
	rts
.L1212:
	mov.w	#12,r0
	rts
.L1202:
	mov.w	#2,r0
	rts
.L1203:
	mov.w	#3,r0
	rts
.L1204:
	mov.w	#4,r0
	rts
.L1205:
	mov.w	#5,r0
	rts
.L1206:
	mov.w	#6,r0
	rts
.L1207:
	mov.w	#7,r0
	rts
.L1208:
	mov.w	#8,r0
	rts
.L1209:
	mov.w	#9,r0
	rts
.L1210:
	mov.w	#10,r0
	rts
.L1211:
	mov.w	#11,r0
	rts
.L1213:
	mov.w	#13,r0
	rts
.L1214:
	mov.w	#14,r0
	rts
.L1216:
	mov.w	#15,r0
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	btst	#0,r0l
	bne	.L1220
	btst	#1,r0l
	bne	.L1221
	btst	#2,r0l
	bne	.L1222
	btst	#3,r0l
	bne	.L1223
	btst	#4,r0l
	bne	.L1224
	btst	#5,r0l
	bne	.L1225
	btst	#6,r0l
	bne	.L1226
	btst	#7,r0l
	bne	.L1227
	btst	#0,r0h
	bne	.L1228
	btst	#1,r0h
	bne	.L1229
	btst	#2,r0h
	bne	.L1230
	btst	#3,r0h
	bne	.L1231
	btst	#4,r0h
	bne	.L1232
	btst	#5,r0h
	bne	.L1233
	btst	#6,r0h
	bne	.L1234
	mov.w	r0,r0
	bne	.L1236
	mov.w	#16,r0
	rts
.L1220:
	sub.w	r0,r0
	rts
.L1221:
	mov.w	#1,r0
	rts
.L1232:
	mov.w	#12,r0
	rts
.L1222:
	mov.w	#2,r0
	rts
.L1223:
	mov.w	#3,r0
	rts
.L1224:
	mov.w	#4,r0
	rts
.L1225:
	mov.w	#5,r0
	rts
.L1226:
	mov.w	#6,r0
	rts
.L1227:
	mov.w	#7,r0
	rts
.L1228:
	mov.w	#8,r0
	rts
.L1229:
	mov.w	#9,r0
	rts
.L1230:
	mov.w	#10,r0
	rts
.L1231:
	mov.w	#11,r0
	rts
.L1233:
	mov.w	#13,r0
	rts
.L1234:
	mov.w	#14,r0
	rts
.L1236:
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
	bpl	.L1243
	mov.l	er4,er0
	jsr	@___fixsfsi
.L1237:
	mov.l	@er7+,er4
	rts
.L1243:
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L1237
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
	beq	.L1249
	sub.l	er0,er0
.L1248:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L1248
	rts
.L1249:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L1254
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L1257
.L1253:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L1253
	rts
.L1254:
	sub.l	er0,er0
	rts
.L1257:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	stm.l	er4-er6,@-er7
	mov.l	er0,er3
	cmp.l	er0,er1
	bhs	.L1288
	mov.w	#32,r0
	sub.l	er4,er4
	add.b	#1,r4l
	bra	.L1260
.L1264:
	shll.l	er1
	shll.l	er4
	cmp.l	er1,er3
	bls	.L1262
	dec #1,r0
	beq	.L1280
.L1260:
	mov.l	er1,er1
	bpl	.L1264
.L1265:
	sub.l	er0,er0
	bra	.L1272
.L1289:
	mov.l	er4,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	beq	.L1263
.L1272:
	mov.l	er3,er6
	sub.l	er1,er6
	cmp.l	er1,er3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.l	er1,er3
	blo	.L1269
	mov.l	er6,er3
.L1269:
	mov.b	r5l,r5l
	bne	.L1289
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	bne	.L1272
.L1263:
	mov.w	r2,r2
	beq	.L1259
	mov.l	er3,er0
.L1259:
	ldm.l	@er7+,er4-er6
	rts
.L1262:
	mov.l	er4,er4
	bne	.L1265
.L1280:
	sub.l	er0,er0
	bra	.L1263
.L1288:
	mov.l	er0,er4
	sub.l	er1,er4
	mov.b	#1,r0l
	cmp.l	er3,er1
	bls	.L1283
	sub.b	r0l,r0l
	cmp.l	er3,er1
	bls	.L1283
.L1277:
	extu.w	r0
	extu.l	er0
	bra	.L1263
.L1283:
	mov.l	er4,er3
	bra	.L1277
	.size	___udivmodsi4, .-___udivmodsi4
	.align 1
	.global ___mspabi_cmpf
___mspabi_cmpf:
	stm.l	er4-er5,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,@er7
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L1293
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L1294
.L1292:
	mov.w	r5,r0
.L1290:
	adds	#4,er7
	ldm.l	@er7+,er4-er5
	rts
.L1294:
	sub.w	r5,r5
	bra	.L1292
.L1293:
	mov.w	#-1,r0
	bra	.L1290
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 1
	.global ___mspabi_cmpd
___mspabi_cmpd:
	stm.l	er4-er5,@-er7
	subs	#4,er7
	mov.l	er0,er4
	mov.l	er1,@er7
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L1298
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L1299
.L1297:
	mov.w	r5,r0
.L1295:
	adds	#4,er7
	ldm.l	@er7+,er4-er5
	rts
.L1299:
	sub.w	r5,r5
	bra	.L1297
.L1298:
	mov.w	#-1,r0
	bra	.L1295
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 1
	.global ___mspabi_mpysll
___mspabi_mpysll:
	stm.l	er4-er5,@-er7
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
	add.w	#-8,r7
	mov.l	er1,@er7
	mov.l	er5,@(4,er7)
	mov.l	er3,er1
	jsr	@___muldi3
	add.w	#8,r7
	mov.l	er0,er2
	mov.l	er1,er4
	mov.l	er2,er0
	mov.l	er4,er1
	ldm.l	@er7+,er4-er5
	rts
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 1
	.global ___mspabi_mpyull
___mspabi_mpyull:
	stm.l	er4-er5,@-er7
	mov.l	er0,er5
	sub.l	er2,er2
	add.w	#-8,r7
	mov.l	er2,@er7
	mov.l	er1,@(4,er7)
	sub.l	er0,er0
	mov.l	er5,er1
	jsr	@___muldi3
	add.w	#8,r7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,er0
	mov.l	er5,er1
	ldm.l	@er7+,er4-er5
	rts
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 1
	.global ___mulhi3
___mulhi3:
	stm.l	er4-er5,@-er7
	mov.w	r0,r5
	mov.w	r1,r1
	bmi	.L1351:16
	beq	.L1310:16
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	mov.l	er2,er0
	and.w	r5,r0
	mov.w	r5,r3
	shll.w	r3
	mov.w	r1,r4
	shar.w	r4
	beq	.L1302:16
	and.l	#1,er4
	neg.l	er4
	and.w	r3,r4
	add.w	r4,r0
	shll.w	#2,r5
	shar.w	#2,r1
	beq	.L1302:16
	sub.w	r3,r3
.L1308:
	mov.l	er1,er4
	and.l	#1,er4
	neg.l	er4
	and.w	r5,r4
	add.w	r4,r0
	mov.w	r5,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	r2
	beq	.L1309:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	#2,r4
	mov.w	r1,r2
	shar.w	#2,r2
	beq	.L1309:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	#2,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	#2,r2
	shar.w	r2
	beq	.L1309:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	#2,r4
	shll.w	#2,r4
	mov.w	r1,r2
	shar.w	#2,r2
	shar.w	#2,r2
	beq	.L1309:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	#2,r2
	shar.w	#2,r2
	shar.w	r2
	beq	.L1309:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	#2,r4
	mov.w	r1,r2
	shar.w	#2,r2
	shar.w	#2,r2
	shar.w	#2,r2
	beq	.L1309:16
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	#2,r4
	shll.w	r4
	mov.w	r1,r2
	shar.w	#2,r2
	shar.w	#2,r2
	shar.w	#2,r2
	shar.w	r2
	beq	.L1309:16
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
	beq	.L1309:16
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
	beq	.L1309
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	#2,r4
	mov.w	r1,r2
	mov.b	r2h,r2l
	exts.w	r2
	shar.w	#2,r2
	beq	.L1309
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r2,r0
	mov.w	r5,r4
	mov.b	r4l,r4h
	sub.b	r4l,r4l
	shll.w	#2,r4
	shll.w	r4
	mov.w	r1,r2
	mov.b	r2h,r2l
	exts.w	r2
	shar.w	#2,r2
	shar.w	r2
	beq	.L1309
	rotr.w	#2,r5
	rotr.w	#2,r5
	and.w	#61440,r5
	mov.b	r1h,r1l
	exts.w	r1
	shar.w	#2,r1
	shar.w	#2,r1
	neg.w	r1
	and.w	r5,r1
	and.l	#1,er2
	neg.l	er2
	and.w	r4,r2
	add.w	r0,r2
	mov.w	r1,r0
	add.w	r2,r0
.L1309:
	mov.w	r3,r3
	beq	.L1302
.L1305:
	neg.w	r0
.L1302:
	ldm.l	@er7+,er4-er5
	rts
.L1351:
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
	beq	.L1305
	and.l	#1,er2
	neg.l	er2
	and.w	r1,r2
	add.w	r2,r0
	shll.w	#2,r5
	shar.w	#2,r3
	mov.w	r3,r1
	beq	.L1305
	mov.w	#1,r3
	bra	.L1308:16
.L1310:
	sub.w	r0,r0
	bra	.L1302
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	stm.l	er4-er6,@-er7
	mov.l	er0,er0
	bmi	.L1381
	mov.w	#1,r2
	sub.w	r5,r5
.L1353:
	mov.l	er1,er1
	bpl	.L1354
	neg.l	er1
	mov.w	r2,r5
.L1354:
	mov.l	er1,er2
	mov.l	er0,er4
	cmp.l	er0,er1
	bhs	.L1382
	mov.w	#32,r1
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1355
.L1359:
	dec #1,r1
	beq	.L1360
.L1355:
	shll.l	er2
	shll.l	er3
	cmp.l	er2,er0
	bhi	.L1359
.L1360:
	sub.l	er0,er0
	mov.l	er3,er3
	bne	.L1357
	bra	.L1358
.L1383:
	mov.l	er3,er6
	or.l	er6,er0
	shlr.l	er3
	shlr.l	er2
	mov.l	er3,er3
	beq	.L1358
.L1357:
	mov.l	er4,er1
	sub.l	er2,er1
	cmp.l	er2,er4
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.l	er2,er4
	bhs	.L1364
	mov.l	er4,er1
.L1364:
	mov.l	er1,er4
	mov.b	r6l,r6l
	bne	.L1383
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er3
	shlr.l	er2
	mov.l	er3,er3
	bne	.L1357
.L1358:
	mov.w	r5,r5
	beq	.L1352
	neg.l	er0
.L1352:
	ldm.l	@er7+,er4-er6
	rts
.L1381:
	neg.l	er0
	sub.w	r2,r2
	mov.w	#1,r5
	bra	.L1353
.L1382:
	sub.l	er3,er3
	add.b	#1,r3l
	cmp.l	er0,er1
	bls	.L1368
	sub.l	er3,er3
.L1368:
	mov.l	er3,er0
	bra	.L1358
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	stm.l	er4-er5,@-er7
	mov.l	er0,er5
	bmi	.L1414
	sub.w	r4,r4
.L1385:
	mov.l	er1,er1
	bpl	.L1386
	neg.l	er1
.L1386:
	mov.l	er1,er2
	mov.l	er5,er0
	cmp.l	er5,er1
	bhs	.L1415
	mov.w	#32,r1
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1387
.L1391:
	dec #1,r1
	beq	.L1392
.L1387:
	shll.l	er2
	shll.l	er3
	cmp.l	er2,er5
	bhi	.L1391
.L1392:
	mov.l	er3,er3
	beq	.L1398
.L1389:
	mov.l	er0,er5
	sub.l	er2,er5
	cmp.l	er2,er0
	blo	.L1395
	mov.l	er5,er0
.L1395:
	shlr.l	er3
	shlr.l	er2
	mov.l	er3,er3
	bne	.L1389
.L1390:
	mov.w	r4,r4
	beq	.L1384
	neg.l	er0
.L1384:
	ldm.l	@er7+,er4-er5
	rts
.L1414:
	neg.l	er5
	mov.w	#1,r4
	bra	.L1385
.L1415:
	sub.l	er1,er0
	cmp.l	er5,er1
	bhi	.L1398
	mov.l	er0,er5
.L1398:
	mov.l	er5,er0
	bra	.L1390
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	mov.w	r0,r3
	mov.w	r2,@(2,er7)
	cmp.w	r0,r1
	bhs	.L1646:16
	mov.w	r1,r1
	bmi	.L1423:16
	mov.w	r1,r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1530:16
	mov.w	r2,r2
	bmi	.L1530:16
	mov.w	r1,r2
	shll.w	#2,r2
	cmp.w	r2,r0
	bls	.L1532:16
	mov.w	r2,r2
	bmi	.L1532:16
	mov.w	r1,r2
	shll.w	#2,r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1534:16
	mov.w	r2,r2
	bmi	.L1534:16
	mov.w	r1,r2
	shll.w	#2,r2
	shll.w	#2,r2
	cmp.w	r2,r0
	bls	.L1536:16
	mov.w	r2,r2
	bmi	.L1536:16
	mov.w	r1,r2
	shll.w	#2,r2
	shll.w	#2,r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1538:16
	mov.w	r2,r2
	bmi	.L1538:16
	mov.w	r1,r2
	shll.w	#2,r2
	shll.w	#2,r2
	shll.w	#2,r2
	cmp.w	r2,r0
	bls	.L1540:16
	mov.w	r2,r2
	bmi	.L1540:16
	mov.w	r1,r2
	shll.w	#2,r2
	shll.w	#2,r2
	shll.w	#2,r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1542:16
	mov.w	r2,r2
	bmi	.L1542:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	cmp.w	r2,r0
	bls	.L1544:16
	mov.w	r2,r2
	bmi	.L1544:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1546:16
	mov.w	r2,r2
	bmi	.L1546:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	shll.w	#2,r2
	cmp.w	r2,r0
	bls	.L1548:16
	mov.w	r2,r2
	bmi	.L1548:16
	mov.w	r1,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	shll.w	#2,r2
	shll.w	r2
	cmp.w	r2,r0
	bls	.L1550:16
	mov.w	r2,r2
	bmi	.L1550:16
	mov.w	r1,r2
	rotr.w	#2,r2
	rotr.w	#2,r2
	and.w	#61440,r2
	cmp.w	r2,r0
	bls	.L1552:16
	mov.w	r2,r2
	bmi	.L1552:16
	mov.w	r1,r2
	rotr.w	#2,r2
	rotr.w	r2
	and.w	#57344,r2
	cmp.w	r2,r0
	bls	.L1554:16
	mov.w	r2,r2
	bmi	.L1554:16
	mov.w	r1,r2
	rotr.w	#2,r2
	and.w	#49152,r2
	cmp.w	r2,r0
	bls	.L1556:16
	mov.w	r2,r2
	bmi	.L1556:16
	rotr.w	r1
	and.w	#32768,r1
	cmp.w	r1,r0
	bls	.L1557:16
	mov.w	r1,r1
	bne	.L1557:16
.L1426:
	mov.w	@(2,er7),r2
	bne	.L1416
	mov.w	r1,r0
.L1416:
	adds	#4,er7
	ldm.l	@er7+,er4-er6
	rts
.L1530:
	mov.w	#2,r0
	mov.w	r0,@er7
.L1425:
	mov.w	r3,r4
	sub.w	r2,r4
	cmp.w	r2,r3
	bhs	.L1525
	mov.w	r3,r4
.L1525:
	cmp.w	r2,r3
	blo	.L1642:16
	mov.w	@er7,r1
.L1527:
	mov.w	@er7,r6
	shlr.w	r6
	mov.w	r2,r5
	shlr.w	r5
	mov.w	r4,r3
	sub.w	r5,r3
	cmp.w	r5,r4
	bhs	.L1429
	mov.w	r4,r3
.L1429:
	mov.w	r3,r0
	cmp.w	r5,r4
	bhs	.L1431
	sub.w	r6,r6
.L1431:
	or.w	r6,r1
	mov.w	@er7,r4
	shlr.w	#2,r4
	mov.w	r2,r6
	shlr.w	#2,r6
	mov.w	r4,r4
	beq	.L1426
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1436
	mov.w	r0,r3
.L1436:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1438
	sub.w	r4,r4
.L1438:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	#2,r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	#2,r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1426
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1442
	mov.w	r0,r3
.L1442:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1444
	sub.w	r4,r4
.L1444:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	#2,r4
	shlr.w	#2,r4
	mov.w	r2,r6
	shlr.w	#2,r6
	shlr.w	#2,r6
	mov.w	r4,r4
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1448
	mov.w	r0,r3
.L1448:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1450
	sub.w	r4,r4
.L1450:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	#2,r4
	shlr.w	#2,r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	#2,r6
	shlr.w	#2,r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1454
	mov.w	r0,r3
.L1454:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1456
	sub.w	r4,r4
.L1456:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	#2,r4
	shlr.w	#2,r4
	shlr.w	#2,r4
	mov.w	r2,r6
	shlr.w	#2,r6
	shlr.w	#2,r6
	shlr.w	#2,r6
	mov.w	r4,r4
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1460
	mov.w	r0,r3
.L1460:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1462
	sub.w	r4,r4
.L1462:
	or.w	r4,r1
	mov.w	@er7,r4
	shlr.w	#2,r4
	shlr.w	#2,r4
	shlr.w	#2,r4
	shlr.w	r4
	mov.w	r2,r6
	shlr.w	#2,r6
	shlr.w	#2,r6
	shlr.w	#2,r6
	shlr.w	r6
	mov.w	r4,r4
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1466
	mov.w	r0,r3
.L1466:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1468
	sub.w	r4,r4
.L1468:
	or.w	r4,r1
	mov.w	@er7,r4
	mov.b	r4h,r4l
	extu.w	r4
	mov.w	r2,r6
	mov.b	r6h,r6l
	extu.w	r6
	mov.w	r4,r4
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r6,r0
	cmp.w	r6,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r6,r3
	blo	.L1472
	mov.w	r0,r3
.L1472:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1474
	sub.w	r4,r4
.L1474:
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
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.w	r4,r3
	blo	.L1632:16
	mov.w	r0,r4
.L1478:
	mov.w	r4,r0
	mov.b	r6l,r6l
	bne	.L1480
	sub.w	r5,r5
.L1480:
	or.w	r5,r1
	mov.w	@er7,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	#2,r5
	mov.w	r2,r3
	mov.b	r3h,r3l
	extu.w	r3
	shlr.w	#2,r3
	mov.w	r5,r5
	beq	.L1426:16
	mov.w	r4,r0
	sub.w	r3,r0
	cmp.w	r3,r4
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.w	r3,r4
	blo	.L1633:16
	mov.w	r0,r3
.L1484:
	mov.w	r3,r0
	mov.b	r6l,r6l
	bne	.L1486
	sub.w	r5,r5
.L1486:
	or.w	r5,r1
	mov.w	@er7,r4
	mov.b	r4h,r4l
	extu.w	r4
	shlr.w	#2,r4
	shlr.w	r4
	mov.w	r2,r5
	mov.b	r5h,r5l
	extu.w	r5
	shlr.w	#2,r5
	shlr.w	r5
	mov.w	r4,r4
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r5,r0
	cmp.w	r5,r3
	xor.b	r6l,r6l
	bist	#0,r6l
	cmp.w	r5,r3
	blo	.L1490
	mov.w	r0,r3
.L1490:
	mov.w	r3,r0
	mov.b	r6l,r6l
	bne	.L1492
	sub.w	r4,r4
.L1492:
	or.w	r4,r1
	mov.w	@er7,r6
	rotl.w	#2,r6
	rotl.w	#2,r6
	and.w	#15,r6
	mov.w	r2,r4
	rotl.w	#2,r4
	rotl.w	#2,r4
	and.w	#15,r4
	mov.w	r6,r6
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r4,r3
	blo	.L1496
	mov.w	r0,r3
.L1496:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1498
	sub.w	r6,r6
.L1498:
	or.w	r6,r1
	mov.w	@er7,r6
	rotl.w	#2,r6
	rotl.w	r6
	and.w	#7,r6
	mov.w	r2,r4
	rotl.w	#2,r4
	rotl.w	r4
	and.w	#7,r4
	mov.w	r6,r6
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r4,r3
	blo	.L1502
	mov.w	r0,r3
.L1502:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1504
	sub.w	r6,r6
.L1504:
	or.w	r6,r1
	mov.w	@er7,r6
	rotl.w	#2,r6
	and.w	#3,r6
	mov.w	r2,r4
	rotl.w	#2,r4
	and.w	#3,r4
	mov.w	r6,r6
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r4,r0
	cmp.w	r4,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r4,r3
	blo	.L1508
	mov.w	r0,r3
.L1508:
	mov.w	r3,r0
	mov.b	r5l,r5l
	bne	.L1510
	sub.w	r6,r6
.L1510:
	or.w	r6,r1
	rotl.w	r2
	and.w	#1,r2
	mov.w	@er7,r4
	cmp.w	#16384,r4
	beq	.L1426:16
	mov.w	r3,r0
	sub.w	r2,r0
	cmp.w	r2,r3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.w	r2,r3
	blo	.L1514
	mov.w	r0,r3
.L1514:
	mov.w	r3,r0
	mov.b	r5l,r2l
	extu.w	r2
	or.w	r2,r1
	bra	.L1426:16
.L1642:
	sub.w	r1,r1
	bra	.L1527:16
.L1632:
	mov.w	r3,r4
	bra	.L1478:16
.L1633:
	mov.w	r4,r3
	bra	.L1484:16
.L1532:
	mov.w	#4,r1
	mov.w	r1,@er7
	bra	.L1425:16
.L1534:
	mov.w	#8,r4
	mov.w	r4,@er7
	bra	.L1425:16
.L1536:
	mov.w	#16,r5
	mov.w	r5,@er7
	bra	.L1425:16
.L1546:
	mov.w	#512,r5
	mov.w	r5,@er7
	bra	.L1425:16
.L1538:
	mov.w	#32,r6
	mov.w	r6,@er7
	bra	.L1425:16
.L1540:
	mov.w	#64,r0
	mov.w	r0,@er7
	bra	.L1425:16
.L1542:
	mov.w	#128,r1
	mov.w	r1,@er7
	bra	.L1425:16
.L1544:
	mov.w	#256,r4
	mov.w	r4,@er7
	bra	.L1425:16
.L1646:
	sub.w	r1,r0
	cmp.w	r3,r1
	beq	.L1420
	mov.w	r3,r0
.L1420:
	cmp.w	r3,r1
	stc	ccr,r1l
	shlr.b	#2,r1l
	and.w	#1,r1
	bra	.L1426:16
.L1548:
	mov.w	#1024,r6
	mov.w	r6,@er7
	bra	.L1425:16
.L1550:
	mov.w	#2048,r0
	mov.w	r0,@er7
	bra	.L1425:16
.L1552:
	mov.w	#4096,r1
	mov.w	r1,@er7
	bra	.L1425:16
.L1554:
	mov.w	#8192,r4
	mov.w	r4,@er7
	bra	.L1425:16
.L1556:
	mov.w	#16384,r5
	mov.w	r5,@er7
	bra	.L1425:16
.L1557:
	mov.w	#-32768,r2
	mov.w	r2,@er7
	bra	.L1425:16
.L1423:
	sub.w	r1,r3
	mov.w	r3,r0
	mov.w	#1,r1
	bra	.L1426:16
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	stm.l	er4-er6,@-er7
	mov.l	er0,er3
	cmp.l	er1,er0
	bls	.L1676
	mov.w	#32,r0
	sub.l	er4,er4
	add.b	#1,r4l
	bra	.L1648
.L1652:
	shll.l	er1
	shll.l	er4
	cmp.l	er1,er3
	bls	.L1650
	dec #1,r0
	beq	.L1668
.L1648:
	mov.l	er1,er1
	bpl	.L1652
.L1653:
	sub.l	er0,er0
	bra	.L1660
.L1677:
	mov.l	er4,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	beq	.L1651
.L1660:
	mov.l	er3,er6
	sub.l	er1,er6
	cmp.l	er1,er3
	xor.b	r5l,r5l
	bist	#0,r5l
	cmp.l	er1,er3
	blo	.L1657
	mov.l	er6,er3
.L1657:
	mov.b	r5l,r5l
	bne	.L1677
	sub.l	er6,er6
	or.l	er6,er0
	shlr.l	er4
	shlr.l	er1
	mov.l	er4,er4
	bne	.L1660
.L1651:
	mov.w	r2,r2
	beq	.L1647
	mov.l	er3,er0
.L1647:
	ldm.l	@er7+,er4-er6
	rts
.L1650:
	mov.l	er4,er4
	bne	.L1653
.L1668:
	sub.l	er0,er0
	bra	.L1651
.L1676:
	mov.l	er0,er4
	sub.l	er1,er4
	cmp.l	er1,er0
	xor.b	r0l,r0l
	bist	#0,r0l
	cmp.l	er1,er3
	blo	.L1664
	mov.l	er4,er3
.L1664:
	extu.w	r0
	extu.l	er0
	bra	.L1651
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 1
	.global ___ashldi3
___ashldi3:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.l	er0,er4
	mov.l	er1,er5
	btst	#5,r2l
	beq	.L1679
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1684
.L1683:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1683
.L1684:
	sub.l	er0,er0
.L1680:
	mov.l	er4,er2
	mov.l	er0,er6
.L1678:
	mov.l	er2,er0
	mov.l	er6,er1
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L1679:
	mov.w	r2,r2
	beq	.L1682
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1686
.L1685:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1685
.L1686:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1688
.L1687:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1687
.L1688:
	mov.b	r2l,r2l
	ble	.L1690
.L1689:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1689
.L1690:
	or.l	er3,er4
	bra	.L1680
.L1682:
	mov.l	er0,er2
	mov.l	er1,er6
	bra	.L1678
	.size	___ashldi3, .-___ashldi3
	.align 1
	.global ___ashrdi3
___ashrdi3:
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.l	er1,er5
	btst	#5,r2l
	beq	.L1692
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1697
.L1696:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1696
.L1697:
.L1693:
	mov.l	er1,er2
	mov.l	er0,er4
.L1691:
	mov.l	er2,er0
	mov.l	er4,er1
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L1692:
	mov.w	r2,r2
	beq	.L1695
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1699
.L1698:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1698
.L1699:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1701
.L1700:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1700
.L1701:
	mov.l	er5,er6
	mov.b	r2l,r2l
	ble	.L1703
.L1702:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L1702
.L1703:
	or.l	er6,er0
	bra	.L1693
.L1695:
	mov.l	er0,er2
	mov.l	er1,er4
	bra	.L1691
	.size	___ashrdi3, .-___ashrdi3
	.align 1
	.global ___bswapdi2
___bswapdi2:
	stm.l	er4-er6,@-er7
	add.w	#-32,r7
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
	mov.l	er3,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	sub.l	er5,er5
	sub.l	er4,er4
	mov.b	r2h,r4h
	mov.l	er4,er3
	or.l	er5,er6
	mov.l	er6,er4
	or.l	er3,er0
	mov.l	er0,er5
	mov.l	@er7,er2
	shll.l	#2,er2
	shll.l	#2,er2
	shll.l	#2,er2
	shll.l	#2,er2
	mov.l	@(4,er7),er1
	mov.w	e1,r1
	mov.b	r1h,r1l
	extu.w	r1
	extu.l	er1
	mov.l	er1,er3
	or.l	er2,er3
	sub.l	er6,er6
	mov.l	er3,er0
	sub.w	r0,r0
	extu.w	e0
	or.l	er6,er4
	mov.l	er4,@(8,er7)
	or.l	er0,er5
	mov.l	er5,@(12,er7)
	mov.l	@er7,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	@(4,er7),er3
	mov.l	er3,er6
	shlr.l	#2,er6
	shlr.l	#2,er6
	shlr.l	#2,er6
	shlr.l	#2,er6
	mov.l	er6,er1
	or.l	er2,er1
	sub.l	er0,er0
	mov.l	er1,er4
	and.l	#-16777216,er4
	mov.l	@(8,er7),er2
	or.l	er0,er2
	mov.l	er2,er6
	mov.l	@(12,er7),er3
	or.l	er4,er3
	mov.l	er3,er4
	mov.l	@(4,er7),er1
	shll.l	er1
	mov.l	er1,@(12,er7)
	mov.l	@(4,er7),er0
	mov.l	@(12,er7),er5
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	er5,er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	cmp.l	er5,er1
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(8,er7),er5
	shll.l	er5
	add.l	er0,er5
	mov.l	er5,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er3,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er5
	cmp.l	er5,er0
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er1
	shll.l	er1
	mov.l	er1,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er1
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er3
	shll.l	er3
	add.l	er5,er3
	mov.l	er3,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er2
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@(16,er7),er5
	shll.l	er5
	add.l	er0,er5
	mov.l	er5,@(8,er7)
	mov.l	@(12,er7),er3
	shll.l	er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,er3
	or.l	er6,er3
	mov.l	er3,@(24,er7)
	mov.l	er4,@(28,er7)
	mov.l	@(4,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(4,er7),er1
	mov.l	@(12,er7),er5
	cmp.l	er1,er5
	xor.l	er0,er0
	bst	#0,r0l
	mov.l	@er7,er2
	shll.l	er2
	add.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.l	er5,er3
	shll.l	er3
	mov.l	er3,@(20,er7)
	cmp.l	er5,er3
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	er5,@(20,er7)
	mov.l	@(12,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er6
	shll.l	er6
	mov.l	er6,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er2
	shll.l	er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(8,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(16,er7)
	mov.l	@(20,er7),er5
	shll.l	er5
	mov.l	er5,@(12,er7)
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(16,er7),er2
	shll.l	er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er6
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er2
	shll.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er3
	cmp.l	er3,er2
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	@(16,er7),er1
	shll.l	er1
	add.l	er6,er1
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er5
	shll.l	er5
	mov.l	@(12,er7),er2
	cmp.l	er2,er5
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(8,er7),er6
	shll.l	er6
	mov.l	er6,er1
	add.l	er3,er1
	and	#0,r1l
	sub.w	e1,e1
	mov.l	@(24,er7),er0
	or.l	er1,er0
	mov.l	@(4,er7),er2
	mov.l	er2,er3
	shll.l	#2,er3
	shll.l	#2,er3
	shll.l	#2,er3
	shll.l	#2,er3
	mov.l	er3,er1
	sub.l	er6,er6
	mov.l	er6,@(4,er7)
	sub.w	r1,r1
	extu.w	e1
	mov.l	er1,@er7
	mov.l	@er7,er5
	or.l	er0,er5
	mov.l	er5,er0
	mov.l	er4,er1
	add.w	#32,r7
	ldm.l	@er7+,er4-er6
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
	mov.l	er2,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	and	#0,r1l
	sub.w	e1,e1
	or.l	er1,er0
	shll.l	#2,er2
	shll.l	#2,er2
	shll.l	#2,er2
	shll.l	#2,er2
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
	bls	.L1739
	sub.l	er0,er0
.L1739:
	shll.l	#2,er0
	shll.l	#2,er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1755
.L1754:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1754
.L1755:
	sub.l	er1,er1
	mov.b	r2h,r1h
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1740
	sub.l	er3,er3
.L1740:
	shll.l	#2,er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1757
.L1756:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1756
.L1757:
	add.l	er3,er0
	sub.l	er4,er4
	mov.b	r2l,r4l
	and	#240,r4l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er4,er4
	beq	.L1741
	sub.l	er3,er3
.L1741:
	shll.l	#2,er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1759
.L1758:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1758
.L1759:
	add.l	er0,er3
	mov.l	er3,er4
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#12,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1742
	sub.l	er3,er3
.L1742:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1761
.L1760:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1760
.L1761:
	btst	#1,r2l
	bne	.L1743
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
.L1744:
	add.l	er4,er1
	add.w	r1,r0
	mov.l	@er7+,er4
	rts
.L1743:
	sub.w	r0,r0
	bra	.L1744
	.size	___clzsi2, .-___clzsi2
	.align 1
	.global ___cmpdi2
___cmpdi2:
	stm.l	er4-er5,@-er7
	mov.l	er1,er5
	mov.l	@(10,er7),er2
	mov.l	@(14,er7),er3
	cmp.l	er2,er0
	blt	.L1766
	bgt	.L1767
	cmp.l	er3,er5
	blo	.L1766
	bhi	.L1767
	sub.l	er0,er0
	add.b	#1,r0l
	ldm.l	@er7+,er4-er5
	rts
.L1766:
	sub.l	er0,er0
	ldm.l	@er7+,er4-er5
	rts
.L1767:
	sub.l	er0,er0
	add.b	#2,r0l
	ldm.l	@er7+,er4-er5
	rts
	.size	___cmpdi2, .-___cmpdi2
	.align 1
	.global ___aeabi_lcmp
___aeabi_lcmp:
	stm.l	er4-er5,@-er7
	mov.l	er1,er5
	mov.l	@(10,er7),er2
	mov.l	@(14,er7),er3
	cmp.l	er2,er0
	blt	.L1773
	bgt	.L1772
	cmp.l	er3,er5
	blo	.L1773
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1768
	sub.l	er0,er0
	ldm.l	@er7+,er4-er5
	rts
.L1773:
	sub.l	er0,er0
	subs	#1,er0
.L1768:
	ldm.l	@er7+,er4-er5
	rts
.L1772:
	sub.l	er0,er0
	add.b	#1,r0l
	ldm.l	@er7+,er4-er5
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
	beq	.L1775
	sub.l	er0,er0
.L1775:
	shll.l	#2,er0
	shll.l	#2,er0
	mov.b	r0l,r3l
	ble	.L1792
.L1791:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1791
.L1792:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1776
	sub.l	er3,er3
.L1776:
	shll.l	#2,er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1794
.L1793:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1793
.L1794:
	add.l	er0,er3
	sub.l	er4,er4
	mov.b	r2l,r4l
	and	#15,r4l
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er4,er4
	beq	.L1777
	sub.l	er1,er1
.L1777:
	shll.l	#2,er1
	mov.b	r1l,r0l
	ble	.L1796
.L1795:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1795
.L1796:
	add.l	er3,er1
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#3,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1778
	sub.l	er3,er3
.L1778:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1798
.L1797:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1797
.L1798:
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
	stm.l	er4-er6,@-er7
	add.w	#-8,r7
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,er6
	btst	#5,r2l
	beq	.L1800
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1805
.L1804:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L1804
.L1805:
	sub.l	er1,er1
.L1801:
	mov.l	er1,er2
	mov.l	er6,er4
.L1799:
	mov.l	er2,er0
	mov.l	er4,er1
	add.w	#8,r7
	ldm.l	@er7+,er4-er6
	rts
.L1800:
	mov.w	r2,r2
	beq	.L1803
	mov.l	er4,er3
	mov.l	er4,er1
	mov.b	r2l,r0l
	ble	.L1807
.L1806:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1806
.L1807:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1809
.L1808:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1808
.L1809:
	mov.l	er5,er6
	mov.b	r2l,r2l
	ble	.L1811
.L1810:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L1810
.L1811:
	or.l	er3,er6
	bra	.L1801
.L1803:
	mov.l	er4,er2
	mov.l	er5,er4
	bra	.L1799
	.size	___lshrdi3, .-___lshrdi3
	.align 1
	.global ___muldsi3
___muldsi3:
	stm.l	er4-er5,@-er7
	add.w	#-8,r7
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
	add.w	#8,r7
	ldm.l	@er7+,er4-er5
	rts
	.size	___muldsi3, .-___muldsi3
	.align 1
	.global ___muldi3_compiler_rt
___muldi3_compiler_rt:
	stm.l	er4-er6,@-er7
	add.w	#-24,r7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@(38,er7),er2
	mov.l	er2,@(8,er7)
	mov.l	@(42,er7),er0
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
	add.w	#24,r7
	ldm.l	@er7+,er4-er6
	rts
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 1
	.global ___negdi2
___negdi2:
	stm.l	er4-er6,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er0,er0
	mov.l	er5,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er6,er6
	bne	.L1815
	sub.l	er1,er1
.L1815:
	sub.l	er4,er0
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	er3,er1
	ldm.l	@er7+,er4-er6
	rts
	.size	___negdi2, .-___negdi2
	.align 1
	.global ___paritydi2
___paritydi2:
	mov.l	er0,er2
	xor.l	er1,er2
	xor.w	e2,r2
	mov.l	er2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	xor.l	er2,er0
	mov.l	er0,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	xor.l	er0,er1
	and.w	#15,r1
	mov.w	#27030,r0
	mov.b	r1l,r1l
	ble	.L1818
.L1817:
	shar.w	r0
	add.b	#-1,r1l
	bne	.L1817
.L1818:
	and.w	#1,r0
	rts
	.size	___paritydi2, .-___paritydi2
	.align 1
	.global ___paritysi2
___paritysi2:
	xor.w	e0,r0
	mov.l	er0,er3
	shlr.l	#2,er3
	shlr.l	#2,er3
	shlr.l	#2,er3
	shlr.l	#2,er3
	xor.l	er0,er3
	mov.l	er3,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	xor.l	er3,er2
	and.w	#15,r2
	mov.w	#27030,r0
	mov.b	r2l,r2l
	ble	.L1821
.L1820:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1820
.L1821:
	and.w	#1,r0
	rts
	.size	___paritysi2, .-___paritysi2
	.align 1
	.global ___popcountdi2
___popcountdi2:
	stm.l	er4-er6,@-er7
	add.w	#-16,r7
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
	bhi	.L1823
	sub.l	er4,er4
.L1823:
	mov.l	@er7,er3
	sub.l	er3,er2
	sub.l	er4,er2
	mov.l	er2,er0
	mov.l	er6,er1
	sub.w	e2,e2
	rotr.l	#2,er2
	sub.w	r2,r2
	mov.l	er6,er5
	shlr.l	#2,er5
	mov.l	er5,er3
	or.l	er2,er3
	mov.l	er0,er6
	shlr.l	#2,er6
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
	rotr.l	#2,er5
	rotr.l	#2,er5
	sub.w	r5,r5
	mov.l	er3,er2
	shlr.l	#2,er2
	shlr.l	#2,er2
	or.l	er5,er2
	mov.l	er2,@(4,er7)
	mov.l	er0,er6
	shlr.l	#2,er6
	shlr.l	#2,er6
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
	shlr.l	#2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	add.w	r4,r0
	and.w	#127,r0
	add.w	#16,r7
	ldm.l	@er7+,er4-er6
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
	shlr.l	#2,er3
	and.l	#858993459,er3
	and.l	#858993459,er0
	add.l	er0,er3
	mov.l	er3,er1
	shlr.l	#2,er1
	shlr.l	#2,er1
	add.l	er3,er1
	and.l	#252645135,er1
	mov.l	er1,er0
	mov.w	e0,r0
	extu.l	er0
	add.l	er0,er1
	mov.l	er1,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	shlr.l	#2,er0
	add.w	r1,r0
	and.w	#63,r0
	rts
	.size	___popcountsi2, .-___popcountsi2
	.align 1
	.global ___powidf2
___powidf2:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	mov.l	er0,er6
	mov.w	r1,@(2,er7)
	mov.w	r1,r4
	mov.l	#1065353216,er5
	btst	#0,r1l
	beq	.L1828
.L1831:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1828:
	mov.w	r4,r4
	bpl	.L1829
	inc #1,r4
.L1829:
	shar.w	r4
	beq	.L1830
.L1833:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1831
	mov.w	r4,r4
	bmi	.L1836
	shar.w	r4
	bra	.L1833
.L1836:
	inc #1,r4
	shar.w	r4
	bra	.L1833
.L1830:
	mov.w	@(2,er7),r2
	bpl	.L1827
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1827:
	mov.l	er5,er0
	adds	#4,er7
	ldm.l	@er7+,er4-er6
	rts
	.size	___powidf2, .-___powidf2
	.align 1
	.global ___powisf2
___powisf2:
	stm.l	er4-er6,@-er7
	subs	#4,er7
	mov.l	er0,er6
	mov.w	r1,@(2,er7)
	mov.w	r1,r4
	mov.l	#1065353216,er5
	btst	#0,r1l
	beq	.L1838
.L1841:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1838:
	mov.w	r4,r4
	bpl	.L1839
	inc #1,r4
.L1839:
	shar.w	r4
	beq	.L1840
.L1843:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1841
	mov.w	r4,r4
	bmi	.L1846
	shar.w	r4
	bra	.L1843
.L1846:
	inc #1,r4
	shar.w	r4
	bra	.L1843
.L1840:
	mov.w	@(2,er7),r2
	bpl	.L1837
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1837:
	mov.l	er5,er0
	adds	#4,er7
	ldm.l	@er7+,er4-er6
	rts
	.size	___powisf2, .-___powisf2
	.align 1
	.global ___ucmpdi2
___ucmpdi2:
	stm.l	er4-er5,@-er7
	mov.l	er1,er5
	mov.l	@(10,er7),er2
	mov.l	@(14,er7),er3
	cmp.l	er2,er0
	blo	.L1851
	bhi	.L1852
	cmp.l	er3,er5
	blo	.L1851
	bhi	.L1852
	sub.l	er0,er0
	add.b	#1,r0l
	ldm.l	@er7+,er4-er5
	rts
.L1851:
	sub.l	er0,er0
	ldm.l	@er7+,er4-er5
	rts
.L1852:
	sub.l	er0,er0
	add.b	#2,r0l
	ldm.l	@er7+,er4-er5
	rts
	.size	___ucmpdi2, .-___ucmpdi2
	.align 1
	.global ___aeabi_ulcmp
___aeabi_ulcmp:
	stm.l	er4-er5,@-er7
	mov.l	er1,er5
	mov.l	@(10,er7),er2
	mov.l	@(14,er7),er3
	cmp.l	er2,er0
	blo	.L1858
	bhi	.L1857
	cmp.l	er3,er5
	blo	.L1858
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	bhi	.L1853
	sub.l	er0,er0
	ldm.l	@er7+,er4-er5
	rts
.L1858:
	sub.l	er0,er0
	subs	#1,er0
.L1853:
	ldm.l	@er7+,er4-er5
	rts
.L1857:
	sub.l	er0,er0
	add.b	#1,r0l
	ldm.l	@er7+,er4-er5
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
	.global ___mulsi3
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
	.global ___muldi3
	.global ___ltsf2
	.global ___subsf3
	.global ___gtsf2
	.global ___unordsf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.end
