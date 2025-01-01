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
	bra	.L20
.L18:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L20
.L16:
	mov.b	@er1,r3l
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
	bne	.L18
	mov.l	er4,er4
	beq	.L20
	adds	#1,er0
	bra	.L15
.L20:
	sub.l	er0,er0
.L15:
	mov.l	@er7+,er4
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	mov.l	er2,er2
	bne	.L28
	bra	.L33
.L30:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L33
.L28:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	bne	.L30
	mov.l	er2,er2
	bne	.L36
.L33:
	sub.l	er0,er0
.L36:
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L38
	bra	.L42
.L40:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L42
.L38:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L40
	mov.l	er2,er2
	beq	.L42
	mov.b	r3l,r0l
	extu.w	r0
	mov.b	r4l,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L37
.L42:
	sub.w	r0,r0
.L37:
	mov.l	@er7+,er4
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L50
	jsr	@_memcpy
	mov.l	er0,er3
.L50:
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
	bra	.L55
.L57:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L54
.L55:
	cmp.l	er4,er2
	bne	.L57
	sub.l	er0,er0
.L54:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er2,er2
	beq	.L65
	add.l	er0,er2
	mov.l	er0,er3
.L60:
	mov.b	r1l,@er3
	adds	#1,er3
	cmp.l	er3,er2
	bne	.L60
.L65:
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L73
.L68:
	adds	#1,er1
	adds	#1,er0
.L73:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L68
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	bne	.L75
	rts
.L77:
	adds	#1,er0
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	beq	.L81
.L75:
	cmp.w	r1,r2
	bne	.L77
.L81:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L85:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L87
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L85
	sub.l	er0,er0
.L87:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L93
.L91:
	adds	#1,er0
	adds	#1,er1
.L93:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	bne	.L90
	mov.b	r2l,r2l
	bne	.L91
.L90:
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
	beq	.L95
.L96:
	adds	#1,er0
	mov.b	@er0,r3l
	bne	.L96
.L95:
	sub.l	er2,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L104
	mov.b	@er0,r3l
	beq	.L101
	subs	#1,er2
	add.l	er0,er2
	bra	.L102
.L103:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r3l
	beq	.L101
.L102:
	mov.b	@er1,r4l
	beq	.L101
	cmp.l	er2,er0
	beq	.L101
	cmp.b	r3l,r4l
	beq	.L103
.L101:
	mov.b	r3l,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L99
.L104:
	sub.w	r0,r0
.L99:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L118
	and	#254,r2l
	add.l	er0,er2
.L116:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L116
.L118:
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
	bls	.L121
	sub.w	r0,r0
.L121:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L123
	sub.w	r2,r2
.L123:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L127
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L126
	sub.w	r2,r2
.L126:
	mov.w	r2,r0
	rts
.L127:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L134
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L133
	sub.w	r2,r2
.L133:
	mov.w	r2,r0
	rts
.L134:
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
	bls	.L140
	sub.w	r0,r0
.L140:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L143
	sub.w	r0,r0
.L143:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L146
	sub.w	r0,r0
.L146:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L149
	sub.w	r0,r0
.L149:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L153
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L152
	sub.w	r2,r2
.L152:
	mov.w	r2,r0
	rts
.L153:
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
	bls	.L156
	sub.w	r0,r0
.L156:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L162
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L162
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L162
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L159
	sub.w	r2,r2
.L159:
	mov.w	r2,r0
	rts
.L162:
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
	bls	.L165
	sub.w	r0,r0
.L165:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L167
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L174
	sub.w	r0,r0
	rts
.L167:
	cmp.w	#8231,r0
	bls	.L173
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L173
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L173
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L170
	sub.w	r2,r2
.L170:
	mov.w	r2,r0
	rts
.L173:
	mov.w	#1,r0
.L174:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L179
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L180
	sub.w	r0,r0
	rts
.L179:
	mov.w	#1,r0
.L180:
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
	bne	.L186
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L187
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L190
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L183
.L186:
	mov.l	er4,er0
	bra	.L183
.L187:
	mov.l	er5,er0
	bra	.L183
.L190:
	sub.l	er0,er0
.L183:
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
	bne	.L194
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L195
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L198
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L191
.L194:
	mov.l	er4,er0
	bra	.L191
.L195:
	mov.l	er5,er0
	bra	.L191
.L198:
	sub.l	er0,er0
.L191:
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
	bne	.L207
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L206
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L201
	mov.w	r2,r2
	bne	.L207
	bra	.L206
.L201:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L207
	mov.l	er5,er4
	bra	.L207
.L206:
	mov.l	er5,er0
	bra	.L199
.L207:
	mov.l	er4,er0
.L199:
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
	bne	.L218
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L217
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L212
	mov.w	r2,r2
	bne	.L218
	bra	.L217
.L212:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L218
	mov.l	er5,er4
	bra	.L218
.L217:
	mov.l	er5,er0
	bra	.L210
.L218:
	mov.l	er4,er0
.L210:
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
	bne	.L229
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L228
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L223
	mov.w	r2,r2
	bne	.L229
	bra	.L228
.L223:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L229
	mov.l	er5,er4
	bra	.L229
.L228:
	mov.l	er5,er0
	bra	.L221
.L229:
	mov.l	er4,er0
.L221:
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
	bne	.L238
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L240
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L234
	mov.w	r2,r2
	bne	.L240
	bra	.L238
.L234:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L240
	mov.l	er5,er4
	bra	.L240
.L238:
	mov.l	er5,er0
	bra	.L232
.L240:
	mov.l	er4,er0
.L232:
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
	bne	.L249
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L251
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L245
	mov.w	r2,r2
	bne	.L251
	bra	.L249
.L245:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L251
	mov.l	er5,er4
	bra	.L251
.L249:
	mov.l	er5,er0
	bra	.L243
.L251:
	mov.l	er4,er0
.L243:
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
	bne	.L260
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L262
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L256
	mov.w	r2,r2
	bne	.L262
	bra	.L260
.L256:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L262
	mov.l	er5,er4
	bra	.L262
.L260:
	mov.l	er5,er0
	bra	.L254
.L262:
	mov.l	er4,er0
.L254:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L266
	mov.l	#_digits,er1
.L267:
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
	bne	.L267
.L266:
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
	blo	.L272
	sub.l	er6,er6
.L272:
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
	bne	.L274
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L274:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L279
	mov.l	er0,@(4,er2)
.L279:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L282
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L282:
	mov.l	@(4,er0),er2
	beq	.L290
	mov.l	@er0,er3
	mov.l	er3,@er2
.L290:
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
	beq	.L292
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
.L294:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L291
	adds	#1,er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er6,er2
	bne	.L294
	mov.l	er2,er1
	mov.l	@(12,er7),er3
.L292:
	mov.l	er1,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(32,er7),er2
	mov.l	@er7,er1
	mov.l	@(8,er7),er3
	add.l	er3,er0
	jsr	@_memcpy
	mov.l	er0,er5
.L291:
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
	mov.l	@er2,er2
	beq	.L304
	sub.l	er5,er5
	mov.l	er2,@(4,er7)
	mov.l	er1,er6
	mov.l	er0,@er7
.L306:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L303
	adds	#1,er5
	mov.l	@(24,er7),er2
	add.l	er2,er6
	mov.l	@(4,er7),er2
	cmp.l	er5,er2
	bne	.L306
.L304:
	sub.l	er6,er6
.L303:
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
	bpl	.L317
	neg.w	r0
.L317:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	bra	.L319
.L320:
	adds	#1,er5
.L319:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L320
	cmp.b	#43,r4l
	beq	.L326
	cmp.b	#45,r4l
	bne	.L327
	mov.w	#1,r4
	bra	.L321
.L326:
	sub.w	r4,r4
.L321:
	adds	#1,er5
	bra	.L322
.L323:
	mulxs.w	r1,er0
	adds	#1,er5
	add.w	#-48,r2
	sub.w	r2,r0
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L323
	bra	.L324
.L327:
	sub.w	r4,r4
.L322:
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bhi	.L324
	mov.w	#10,r1
	bra	.L323
.L324:
	mov.w	r4,r4
	bne	.L318
	neg.w	r0
.L318:
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
	bra	.L331
.L332:
	adds	#1,er5
.L331:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r6
	bne	.L332
	cmp.b	#43,r4l
	beq	.L333
	cmp.b	#45,r4l
	bne	.L334
	mov.w	#1,r6
.L333:
	adds	#1,er5
	bra	.L334
.L335:
	sub.l	er1,er1
	add.b	#10,r1l
	jsr	@___mulsi3
	adds	#1,er5
	add.w	#-48,r4
	exts.l	er4
	sub.l	er4,er0
	mov.b	@er5,r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L335
	bra	.L336
.L334:
	mov.b	@er5,r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	sub.l	er0,er0
	cmp.w	#9,r2
	bls	.L335
.L336:
	mov.w	r6,r6
	bne	.L330
	neg.l	er0
.L330:
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
	bra	.L344
.L345:
	adds	#1,er5
.L344:
	mov.b	@er5,r4l
	mov.b	r4l,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L345
	mov.w	r0,r3
	cmp.b	#43,r4l
	beq	.L346
	cmp.b	#45,r4l
	bne	.L347:16
	mov.w	#1,r3
.L346:
	adds	#1,er5
	bra	.L347:16
.L353:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
	sub.l	er6,er6
	add.b	#1,r6l
	mov.w	r3,@(18,er7)
	sub.l	er2,er2
	sub.l	er3,er3
.L349:
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
	bhi	.L348
	sub.l	er2,er2
.L348:
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
	bls	.L349:16
	mov.l	er2,@er7
	mov.l	er1,@(4,er7)
	mov.w	@(18,er7),r3
	bra	.L350
.L347:
	mov.b	@er5,r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L353:16
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
.L350:
	mov.w	r3,r3
	bne	.L343
	sub.l	er0,er0
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er3,er3
	bne	.L352
	sub.l	er4,er4
.L352:
	mov.l	@er7,er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
.L343:
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
	mov.l	er2,er4
	beq	.L359
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
.L362:
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
	bmi	.L363
	ble	.L368
	mov.l	@(24,er7),er2
	add.l	er4,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	subs	#1,er2
	sub.l	er6,er2
	mov.l	er2,er5
	bra	.L360
.L363:
	mov.l	er6,er5
.L360:
	mov.l	er5,er5
	bne	.L362
.L359:
	sub.l	er5,er5
	bra	.L358
.L368:
	mov.l	er4,er5
.L358:
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
	beq	.L370
	mov.l	er1,@er7
.L373:
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
	beq	.L369
	ble	.L372
	mov.l	@(24,er7),er2
	add.l	er5,er2
	mov.l	er2,@er7
	dec #1,r4
	shar.w	r4
	mov.w	r4,r6
.L372:
	mov.w	r6,r4
	bne	.L373
.L370:
	sub.l	er5,er5
.L369:
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
	bpl	.L384
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L386
	sub.l	er6,er6
.L386:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L384:
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
	bpl	.L390
	neg.l	er0
.L390:
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
	bpl	.L393
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L395
	sub.l	er6,er6
.L395:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L393:
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
	bra	.L406
.L400:
	adds	#2,er0
.L406:
	mov.w	@er0,r2
	beq	.L403
	cmp.w	r2,r1
	bne	.L400
	mov.w	r2,r2
	bne	.L407
.L403:
	sub.l	er0,er0
.L407:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L420
.L411:
	adds	#2,er0
	adds	#2,er1
.L420:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L410
	mov.w	r2,r2
	beq	.L410
	mov.w	r3,r3
	bne	.L411
	bra	.L419
.L410:
	cmp.w	r3,r2
	blo	.L414
.L419:
	mov.w	#1,r0
	cmp.w	r3,r2
	bhi	.L421
	sub.w	r0,r0
	rts
.L414:
	mov.w	#-1,r0
.L421:
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L424:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L424
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L429
	mov.l	er0,er2
.L428:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L428
	bra	.L427
.L429:
	mov.l	er0,er2
.L427:
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
	bne	.L432
	bra	.L437
.L434:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L437
.L432:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L433
	mov.w	r3,r3
	bne	.L434
.L433:
	mov.l	er2,er2
	beq	.L437
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	blo	.L438
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L431
.L437:
	sub.w	r0,r0
	bra	.L431
.L438:
	mov.w	#-1,r0
.L431:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L454
.L448:
	subs	#1,er2
	adds	#2,er0
.L454:
	mov.l	er2,er2
	beq	.L451
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L448
	mov.l	er2,er2
	bne	.L455
.L451:
	sub.l	er0,er0
.L455:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L457
	bra	.L462
.L459:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L462
.L457:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L459
	mov.l	er2,er2
	beq	.L462
	cmp.w	r4,r3
	blo	.L463
	mov.w	#1,r0
	cmp.w	r4,r3
	bhi	.L456
.L462:
	sub.w	r0,r0
	bra	.L456
.L463:
	mov.w	#-1,r0
.L456:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L471
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L471:
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
	beq	.L476
	mov.l	er0,@er7
	mov.l	er1,er5
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er2,er6
	shll.l	er6
	mov.l	er6,@(4,er7)
	mov.l	er0,er6
	sub.l	er1,er6
	mov.l	@(4,er7),er4
	cmp.l	er4,er6
	blo	.L477
	mov.l	er2,er2
	bne	.L486
	bra	.L476
.L477:
	mov.l	er2,er2
	beq	.L476
	shll.l	er3
.L479:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L479
	bra	.L476
.L486:
	mov.l	@er7,er4
.L478:
	mov.w	@er5+,r2
	mov.w	r2,@er4
	subs	#1,er3
	adds	#2,er4
	cmp.l	#-1,er3
	bne	.L478
.L476:
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
	mov.l	er0,er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er0
	mov.l	@(16,er7),er1
	or.l	er1,er0
	mov.l	er0,er2
	mov.l	@(20,er7),er3
	mov.l	@(4,er7),er0
	shll.l	er0
	mov.l	er0,er6
	mov.l	@(4,er7),er0
	cmp.l	er0,er6
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@er7,er0
	shll.l	er0
	mov.l	er0,er5
	add.l	er4,er5
	mov.l	er6,er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	cmp.l	er6,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er5,er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,er5
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	mov.l	er0,er4
	add.l	er1,er4
	and	#0,r4l
	sub.w	e4,e4
	mov.l	er4,er0
	or.l	er2,er0
	mov.l	er0,er4
	mov.l	@(4,er7),er0
	mov.w	e0,r6
	mov.b	r6l,r6h
	mov.b	r0h,r6l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r6,e0
	sub.l	er6,er6
	mov.l	er6,@(4,er7)
	sub.w	r0,r0
	extu.w	e0
	mov.l	er0,@er7
	mov.l	@er7,er6
	or.l	er4,er6
	mov.l	er6,er0
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
.L630:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L633
.L632:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L632
.L633:
	inc #1,r2
	btst	#0,r3l
	beq	.L628
	mov.w	r2,r0
	rts
.L628:
	cmp.w	#16,r2
	bne	.L630
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L637
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L640
	mov.w	#1,r0
.L636:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L636
	rts
.L637:
	sub.w	r0,r0
.L640:
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
	bmi	.L645
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L644
	sub.w	r5,r5
.L644:
	mov.w	r5,r0
	bra	.L642
.L645:
	mov.w	#1,r0
.L642:
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
	bmi	.L649
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L648
	sub.w	r5,r5
.L648:
	mov.w	r5,r0
	bra	.L646
.L649:
	mov.w	#1,r0
.L646:
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
	bmi	.L653
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L652
	sub.w	r5,r5
.L652:
	mov.w	r5,r0
	bra	.L650
.L653:
	mov.w	#1,r0
.L650:
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
	bne	.L656
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L656
	mov.w	r4,r4
	bpl	.L662
	mov.l	#1056964608,er1
	bra	.L661
.L662:
	mov.l	#1073741824,er1
.L661:
	btst	#0,r4l
	beq	.L659
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L659:
	mov.w	r4,r2
	mov.w	r4,r4
	bpl	.L660
	inc #1,r2
.L660:
	shar.w	r2
	mov.w	r2,r4
	beq	.L656
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L661
.L656:
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
	bne	.L671
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L671
	mov.w	r4,r4
	bpl	.L677
	mov.l	#1056964608,er1
	bra	.L676
.L677:
	mov.l	#1073741824,er1
.L676:
	btst	#0,r4l
	beq	.L674
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L674:
	mov.w	r4,r2
	mov.w	r4,r4
	bpl	.L675
	inc #1,r2
.L675:
	shar.w	r2
	mov.w	r2,r4
	beq	.L671
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L676
.L671:
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
	bne	.L686
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L686
	mov.w	r4,r4
	bpl	.L692
	mov.l	#1056964608,er1
	bra	.L691
.L692:
	mov.l	#1073741824,er1
.L691:
	btst	#0,r4l
	beq	.L689
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L689:
	mov.w	r4,r2
	mov.w	r4,r4
	bpl	.L690
	inc #1,r2
.L690:
	shar.w	r2
	mov.w	r2,r4
	beq	.L686
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	bra	.L691
.L686:
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
	beq	.L701
	mov.l	er0,er3
	add.l	er1,er2
.L702:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er2,er1
	bne	.L702
.L701:
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
	bne	.L708
	bra	.L713
.L710:
	adds	#1,er6
	adds	#1,er0
	dec.l	#1,er4
	beq	.L713
.L708:
	mov.b	@er6,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L710
	mov.l	er4,er4
	bne	.L711
.L713:
	mov.b	r4l,@er0
.L711:
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
	bne	.L718
	rts
.L720:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L718
	rts
.L718:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L720
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L724
	bra	.L728
.L726:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L725
.L727:
	mov.b	@er2,r3l
	bne	.L726
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L728
.L724:
	mov.l	er1,er2
	bra	.L727
.L728:
	sub.l	er0,er0
.L725:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L732:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r1,r4
	bne	.L731
	mov.l	er2,er0
.L731:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L732
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
	beq	.L735
	mov.b	@er4,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L737
.L738:
	mov.l	er5,er2
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L735
	adds	#1,er6
.L737:
	mov.w	@(2,er7),r1
	mov.l	er6,er0
	jsr	@_strchr
	mov.l	er0,er6
	bne	.L738
.L735:
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
	mov.l	er0,er4
	mov.l	er1,er5
	sub.l	er1,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L744
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L746
.L744:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L747
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L747
.L746:
	xor.w	#32768,e4
.L747:
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
	sub.l	#12,er7
	mov.l	er0,er4
	mov.l	@(28,er7),er0
	beq	.L756
	cmp.l	er0,er1
	blo	.L758
	sub.l	er0,er1
	add.l	er4,er1
	cmp.l	er1,er4
	bhi	.L758
	mov.b	@er2+,r3l
	subs	#1,er0
	mov.l	er0,@(4,er7)
	mov.b	r3l,r6l
	mov.l	er1,er3
	mov.l	er2,@(8,er7)
.L755:
	mov.b	@er4,r2l
	mov.l	er4,er5
	adds	#1,er4
	cmp.b	r6l,r2l
	bne	.L754
	mov.l	er3,@er7
	mov.l	@(4,er7),er2
	mov.l	@(8,er7),er1
	mov.l	er4,er0
	jsr	@_memcmp
	mov.l	@er7,er3
	mov.w	r0,r0
	beq	.L763
.L754:
	cmp.l	er3,er4
	bls	.L755
	bra	.L758
.L756:
	mov.l	er4,er6
	bra	.L752
.L758:
	sub.l	er6,er6
	bra	.L752
.L763:
	mov.l	er5,er6
.L752:
	mov.l	er6,er0
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
	bpl	.L788
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L766
.L788:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L766:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bmi	.L789
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L770:
	inc #1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L770
	bra	.L771
.L789:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L790
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	sub.w	r6,r6
	mov.l	er0,er0
	beq	.L771
	mov.l	#1056964608,er5
.L774:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L774
	bra	.L771
.L790:
	sub.w	r6,r6
.L771:
	mov.l	@(4,er7),er2
	mov.w	r6,@er2
	mov.w	@(2,er7),r2
	beq	.L775
	xor.w	#32768,e4
.L775:
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
	beq	.L799:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L798:
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
	bne	.L795
	sub.l	er6,er6
.L795:
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
	bne	.L798:16
	bra	.L792
.L799:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L792:
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
	blo	.L809
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L810
.L806:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L803
	dec #1,r0
	bne	.L802
	bra	.L814
.L803:
	mov.l	er3,er3
	bne	.L810
.L814:
	sub.l	er0,er0
	bra	.L805
.L809:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L802:
	mov.l	er1,er1
	bpl	.L806
	bra	.L803
.L810:
	sub.l	er0,er0
.L804:
	cmp.l	er1,er4
	blo	.L807
	sub.l	er1,er4
	or.l	er3,er0
.L807:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L804
.L805:
	mov.l	er2,er2
	beq	.L801
	mov.l	er4,er0
.L801:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L817
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L817:
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
	bne	.L822
	cmp.l	er3,er1
	beq	.L823
.L822:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L818
.L823:
	mov.w	#63,r0
.L818:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	beq	.L827
	sub.w	r0,r0
.L826:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.w	r1,r3
	add.w	r3,r0
	shlr.w	r2
	shll.w	r1
	mov.w	r2,r2
	bne	.L826
	rts
.L827:
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
	bhs	.L830
.L833:
	mov.w	r6,r6
	bne	.L831
	bra	.L832
.L830:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L833
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L834
	bra	.L829:16
.L831:
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L836:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L836
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L832:
	cmp.w	r5,r2
	bls	.L829
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
.L837:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L837
	bra	.L829
.L834:
	mov.w	r3,r2
	extu.l	er2
.L838:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L838
.L829:
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
	bhs	.L843
.L846:
	mov.w	r6,r6
	bne	.L844
	bra	.L845
.L843:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L846
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L847
	bra	.L842
.L844:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L849:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L849
.L845:
	btst	#0,r2l
	beq	.L842
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L842
.L847:
	mov.w	r3,r2
	extu.l	er2
.L850:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L850
.L842:
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
	bhs	.L857
.L860:
	mov.w	r6,r6
	bne	.L858
	bra	.L859
.L857:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L860
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L861
	bra	.L856
.L858:
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L863:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L863
	mov.w	@(2,er7),r5
.L859:
	cmp.w	r5,r2
	bls	.L856
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
.L864:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L864
	bra	.L856
.L861:
	mov.w	r3,r2
	extu.l	er2
.L865:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L865
.L856:
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
	bmi	.L879
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L877
.L878:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L881
.L880:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L880
.L881:
	and.w	r3,r2
	bne	.L875
.L877:
	inc #1,r0
	cmp.w	#16,r0
	bne	.L878
	bra	.L875
.L879:
	sub.w	r0,r0
.L875:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
.L884:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L888
.L887:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L887
.L888:
	btst	#0,r2l
	bne	.L886
	inc #1,r0
	cmp.w	#16,r0
	bne	.L884
.L886:
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
	bmi	.L894
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L889
.L894:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L889:
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
.L896:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L899
.L898:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L898
.L899:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L896
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
.L901:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L904
.L903:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L903
.L904:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L901
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L908
	sub.l	er0,er0
.L907:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L907
	rts
.L908:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L913
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L916
.L912:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L912
	rts
.L913:
	sub.l	er0,er0
	rts
.L916:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L926
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L927
.L923:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L920
	dec #1,r0
	bne	.L919
	bra	.L931
.L920:
	mov.l	er3,er3
	bne	.L927
.L931:
	sub.l	er0,er0
	bra	.L922
.L926:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L919:
	mov.l	er1,er1
	bpl	.L923
	bra	.L920
.L927:
	sub.l	er0,er0
.L921:
	cmp.l	er1,er4
	blo	.L924
	sub.l	er1,er4
	or.l	er3,er0
.L924:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L921
.L922:
	mov.w	r2,r2
	beq	.L918
	mov.l	er4,er0
.L918:
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
	bmi	.L935
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L934
	sub.w	r5,r5
.L934:
	mov.w	r5,r0
	bra	.L932
.L935:
	mov.w	#-1,r0
.L932:
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
	bmi	.L939
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L938
	sub.w	r5,r5
.L938:
	mov.w	r5,r0
	bra	.L936
.L939:
	mov.w	#-1,r0
.L936:
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
	bpl	.L947
	neg.w	r1
	mov.w	#1,r5
	bra	.L943
.L947:
	sub.w	r5,r5
.L943:
	mov.w	r1,r1
	beq	.L948
	mov.b	#16,r4l
	sub.w	r0,r0
.L945:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r3
	shar.w	r1
	beq	.L944
	add.b	#-1,r4l
	bne	.L945
	bra	.L944
.L948:
	sub.w	r0,r0
.L944:
	mov.w	r5,r5
	beq	.L942
	neg.w	r0
.L942:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L960
	neg.l	er0
	mov.w	#1,r4
	bra	.L957
.L960:
	sub.w	r4,r4
.L957:
	mov.l	er1,er1
	bpl	.L958
	neg.l	er1
	xor	#1,r4l
.L958:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L956
	neg.l	er0
.L956:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L968
	neg.l	er0
	mov.w	#1,r4
	bra	.L965
.L968:
	sub.w	r4,r4
.L965:
	mov.l	er2,er1
	mov.l	er2,er2
	bpl	.L966
	neg.l	er2
	mov.l	er2,er1
.L966:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L964
	neg.l	er0
.L964:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	r0,r4
	cmp.w	r0,r1
	blo	.L980
	mov.w	#1,r3
	bra	.L982
.L977:
	shll.w	r1
	shll.w	r0
	cmp.w	r1,r4
	bls	.L981
	dec #1,r3
	bne	.L973
	bra	.L986
.L981:
	mov.w	r0,r3
	mov.w	r0,r0
	bne	.L982
.L986:
	sub.w	r0,r0
	bra	.L976
.L980:
	mov.w	#16,r3
	mov.w	#1,r0
.L973:
	mov.w	r1,r1
	bpl	.L977
	bra	.L981
.L982:
	sub.w	r0,r0
.L975:
	cmp.w	r1,r4
	blo	.L978
	sub.w	r1,r4
	or.w	r3,r0
.L978:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L975
.L976:
	mov.w	r2,r2
	beq	.L972
	mov.w	r4,r0
.L972:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L995
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L996
.L992:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L989
	dec #1,r0
	bne	.L988
	bra	.L1000
.L989:
	mov.l	er3,er3
	bne	.L996
.L1000:
	sub.l	er0,er0
	bra	.L991
.L995:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L988:
	mov.l	er1,er1
	bpl	.L992
	bra	.L989
.L996:
	sub.l	er0,er0
.L990:
	cmp.l	er1,er4
	blo	.L993
	sub.l	er1,er4
	or.l	er3,er0
.L993:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L990
.L991:
	mov.w	r2,r2
	beq	.L987
	mov.l	er4,er0
.L987:
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
	beq	.L1002
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1007
.L1006:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1006
.L1007:
	sub.l	er0,er0
	bra	.L1003
.L1002:
	mov.w	r2,r2
	beq	.L1005
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1009
.L1008:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1008
.L1009:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1011
.L1010:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1010
.L1011:
	mov.b	r2l,r2l
	ble	.L1013
.L1012:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1012
.L1013:
	or.l	er3,er4
.L1003:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L1001
.L1005:
	mov.l	er0,er2
	mov.l	er1,er3
.L1001:
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
	beq	.L1015
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1020
.L1019:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1019
.L1020:
	bra	.L1016
.L1015:
	mov.w	r2,r2
	beq	.L1018
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1022
.L1021:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1021
.L1022:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1024
.L1023:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1023
.L1024:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L1026
.L1025:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L1025
.L1026:
	or.l	er3,er0
.L1016:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1014
.L1018:
	mov.l	er0,er2
	mov.l	er1,er3
.L1014:
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
	mov.l	er0,er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er0
	mov.l	@(16,er7),er1
	or.l	er1,er0
	mov.l	er0,er2
	mov.l	@(20,er7),er3
	mov.l	@(4,er7),er0
	shll.l	er0
	mov.l	er0,er6
	mov.l	@(4,er7),er0
	cmp.l	er0,er6
	xor.l	er4,er4
	bst	#0,r4l
	mov.l	@er7,er0
	shll.l	er0
	mov.l	er0,er5
	add.l	er4,er5
	mov.l	er6,er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	cmp.l	er6,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	er5,er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,@(12,er7)
	mov.l	@(20,er7),er1
	cmp.l	er1,er0
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	add.l	er1,er0
	mov.l	er0,@(8,er7)
	mov.l	@(12,er7),er0
	shll.l	er0
	mov.l	er0,@(20,er7)
	mov.l	@(12,er7),er1
	cmp.l	er1,er0
	xor.l	er5,er5
	bst	#0,r5l
	mov.l	@(8,er7),er0
	shll.l	er0
	add.l	er5,er0
	mov.l	er0,@(16,er7)
	mov.l	@(20,er7),er0
	shll.l	er0
	mov.l	er0,er5
	mov.l	@(20,er7),er0
	cmp.l	er0,er5
	xor.l	er1,er1
	bst	#0,r1l
	mov.l	@(16,er7),er0
	shll.l	er0
	mov.l	er0,er4
	add.l	er1,er4
	and	#0,r4l
	sub.w	e4,e4
	mov.l	er4,er0
	or.l	er2,er0
	mov.l	er0,er4
	mov.l	@(4,er7),er0
	mov.w	e0,r6
	mov.b	r6l,r6h
	mov.b	r0h,r6l
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	mov.w	r6,e0
	sub.l	er6,er6
	mov.l	er6,@(4,er7)
	sub.w	r0,r0
	extu.w	e0
	mov.l	er0,@er7
	mov.l	@er7,er6
	or.l	er4,er6
	mov.l	er6,er0
	mov.l	er3,er1
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
	bls	.L1062
	sub.l	er0,er0
.L1062:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1078
.L1077:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1077
.L1078:
	mov.l	er2,er1
	and	#0,r1l
	sub.w	e1,e1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1063
	sub.l	er3,er3
.L1063:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1080
.L1079:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1079
.L1080:
	add.l	er3,er0
	mov.l	er2,er1
	and.l	#240,er1
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1064
	sub.l	er3,er3
.L1064:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1082
.L1081:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1081
.L1082:
	add.l	er0,er3
	mov.l	er3,er4
	mov.l	er2,er0
	and.l	#12,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1065
	sub.l	er3,er3
.L1065:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1084
.L1083:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1083
.L1084:
	btst	#1,r2l
	bne	.L1066
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L1067
.L1066:
	sub.w	r0,r0
.L1067:
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
	blt	.L1089
	bgt	.L1090
	cmp.l	er3,er5
	blo	.L1089
	bhi	.L1090
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1085
.L1089:
	sub.l	er0,er0
	bra	.L1085
.L1090:
	sub.l	er0,er0
	add.b	#2,r0l
.L1085:
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
	beq	.L1093
	sub.l	er0,er0
.L1093:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L1110
.L1109:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1109
.L1110:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1094
	sub.l	er3,er3
.L1094:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1112
.L1111:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1111
.L1112:
	add.l	er0,er3
	mov.l	er2,er0
	and.l	#15,er0
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L1095
	sub.l	er1,er1
.L1095:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L1114
.L1113:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1113
.L1114:
	add.l	er3,er1
	mov.l	er2,er0
	and.l	#3,er0
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1096
	sub.l	er3,er3
.L1096:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1116
.L1115:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1115
.L1116:
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
	beq	.L1118
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1123
.L1122:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1122
.L1123:
	sub.l	er1,er1
	bra	.L1119
.L1118:
	mov.w	r2,r2
	beq	.L1121
	mov.l	@er7,er1
	mov.l	er1,er3
	mov.b	r2l,r0l
	ble	.L1125
.L1124:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1124
.L1125:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1127
.L1126:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1126
.L1127:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L1129
.L1128:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1128
.L1129:
	or.l	er3,er0
.L1119:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1117
.L1121:
	mov.l	er0,er2
	mov.l	er1,er3
.L1117:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(40,er7),er4
	mov.l	@(44,er7),er5
	mov.l	er5,er1
	mov.l	er3,er0
	mov.l	er2,@(8,er7)
	mov.l	er3,@(12,er7)
	jsr	@___muldsi3
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,er1
	mov.l	er5,er0
	jsr	@___mulsi3
	mov.l	er0,er6
	mov.l	er4,er1
	mov.l	@(12,er7),er3
	mov.l	er3,er0
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
	bne	.L1133
	sub.l	er6,er6
.L1133:
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
	ble	.L1136
.L1135:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1135
.L1136:
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
	ble	.L1139
.L1138:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1138
.L1139:
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
	bhi	.L1141
	sub.l	er0,er0
.L1141:
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
.L1149:
	btst	#0,r4l
	beq	.L1146
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1146:
	mov.w	r4,r3
	mov.w	r4,r4
	bpl	.L1147
	inc #1,r3
.L1147:
	shar.w	r3
	mov.w	r3,r4
	beq	.L1148
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	bra	.L1149
.L1148:
	mov.w	@(2,er7),r2
	bpl	.L1145
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1145:
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
.L1158:
	btst	#0,r4l
	beq	.L1155
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
.L1155:
	mov.w	r4,r3
	mov.w	r4,r4
	bpl	.L1156
	inc #1,r3
.L1156:
	shar.w	r3
	mov.w	r3,r4
	beq	.L1157
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	bra	.L1158
.L1157:
	mov.w	@(2,er7),r2
	bpl	.L1154
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1154:
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
	blo	.L1167
	bhi	.L1168
	cmp.l	er3,er5
	blo	.L1167
	bhi	.L1168
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1163
.L1167:
	sub.l	er0,er0
	bra	.L1163
.L1168:
	sub.l	er0,er0
	add.b	#2,r0l
.L1163:
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
