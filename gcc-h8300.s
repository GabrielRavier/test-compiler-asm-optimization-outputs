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
	bra	.L17
.L18:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
	mov.l	er4,er4
	beq	.L17
.L16:
	mov.b	@er1,r3l
	extu.w	r3
	mov.b	r3l,@er0
	cmp.w	r2,r3
	bne	.L18
	bra	.L25
.L17:
	sub.l	er0,er0
	bra	.L15
.L25:
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
	bne	.L27
	bra	.L30
.L29:
	adds	#1,er0
	dec.l	#1,er2
	beq	.L30
.L27:
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	bne	.L29
	rts
.L30:
	sub.l	er0,er0
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L33
	bra	.L37
.L35:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
	mov.l	er2,er2
	beq	.L37
.L33:
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L35
	bra	.L39
.L37:
	sub.w	r0,r0
	bra	.L32
.L39:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
.L32:
	mov.l	@er7+,er4
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L41
	jsr	@_memcpy
	mov.l	er0,er3
.L41:
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
	bra	.L46
.L48:
	mov.l	er2,er0
	subs	#1,er2
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L45
.L46:
	cmp.l	er4,er2
	bne	.L48
	sub.l	er0,er0
.L45:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er2,er2
	beq	.L56
	add.l	er0,er2
	mov.l	er0,er3
.L51:
	mov.b	r1l,@er3
	adds	#1,er3
	cmp.l	er3,er2
	bne	.L51
.L56:
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L64
.L59:
	adds	#1,er1
	adds	#1,er0
.L64:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L59
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	bne	.L66
	rts
.L68:
	adds	#1,er0
	mov.b	@er0,r2l
	extu.w	r2
	mov.b	r2l,r2l
	beq	.L72
.L66:
	cmp.w	r1,r2
	bne	.L68
.L72:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L76:
	mov.b	@er0,r2l
	mov.b	r2l,r3l
	extu.w	r3
	cmp.w	r1,r3
	beq	.L78
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L76
	sub.l	er0,er0
.L78:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L84
.L82:
	adds	#1,er0
	adds	#1,er1
.L84:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	extu.w	r3
	cmp.b	r3l,r2l
	bne	.L81
	mov.b	r2l,r2l
	bne	.L82
.L81:
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
	beq	.L86
.L87:
	adds	#1,er0
	mov.b	@er0,r3l
	bne	.L87
.L86:
	sub.l	er2,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L95
	mov.b	@er0,r3l
	beq	.L92
	subs	#1,er2
	add.l	er0,er2
	bra	.L93
.L94:
	adds	#1,er0
	adds	#1,er1
	mov.b	@er0,r3l
	beq	.L92
.L93:
	mov.b	@er1,r4l
	beq	.L92
	cmp.l	er2,er0
	beq	.L92
	cmp.b	r3l,r4l
	beq	.L94
.L92:
	mov.b	r3l,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L90
.L95:
	sub.w	r0,r0
.L90:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	cmp.l	#1,er2
	ble	.L109
	and	#254,r2l
	add.l	er0,er2
.L107:
	mov.b	@(1,er0),r3l
	mov.b	r3l,@er1
	mov.b	@er0,r3l
	mov.b	r3l,@(1,er1)
	adds	#2,er1
	adds	#2,er0
	cmp.l	er2,er0
	bne	.L107
.L109:
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
	bls	.L112
	sub.w	r0,r0
.L112:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L114
	sub.w	r2,r2
.L114:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L118
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L117
	sub.w	r2,r2
.L117:
	mov.w	r2,r0
	rts
.L118:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L125
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L124
	sub.w	r2,r2
.L124:
	mov.w	r2,r0
	rts
.L125:
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
	bls	.L131
	sub.w	r0,r0
.L131:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L134
	sub.w	r0,r0
.L134:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L137
	sub.w	r0,r0
.L137:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L140
	sub.w	r0,r0
.L140:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L144
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L143
	sub.w	r2,r2
.L143:
	mov.w	r2,r0
	rts
.L144:
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
	bls	.L147
	sub.w	r0,r0
.L147:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L153
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L153
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L153
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L150
	sub.w	r2,r2
.L150:
	mov.w	r2,r0
	rts
.L153:
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
	bls	.L156
	sub.w	r0,r0
.L156:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L158
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L165
	sub.w	r0,r0
	rts
.L158:
	cmp.w	#8231,r0
	bls	.L164
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L164
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L164
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L161
	sub.w	r2,r2
.L161:
	mov.w	r2,r0
	rts
.L164:
	mov.w	#1,r0
.L165:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L170
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L171
	sub.w	r0,r0
	rts
.L170:
	mov.w	#1,r0
.L171:
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
	bne	.L177
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L178
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L181
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L174
.L177:
	mov.l	er4,er0
	bra	.L174
.L178:
	mov.l	er5,er0
	bra	.L174
.L181:
	sub.l	er0,er0
.L174:
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
	bne	.L185
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L186
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L189
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L182
.L185:
	mov.l	er4,er0
	bra	.L182
.L186:
	mov.l	er5,er0
	bra	.L182
.L189:
	sub.l	er0,er0
.L182:
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
	bne	.L198
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L197
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L192
	mov.w	r2,r2
	bne	.L198
	bra	.L197
.L192:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L198
	mov.l	er5,er4
	bra	.L198
.L197:
	mov.l	er5,er0
	bra	.L190
.L198:
	mov.l	er4,er0
.L190:
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
	bne	.L209
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L208
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L203
	mov.w	r2,r2
	bne	.L209
	bra	.L208
.L203:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L209
	mov.l	er5,er4
	bra	.L209
.L208:
	mov.l	er5,er0
	bra	.L201
.L209:
	mov.l	er4,er0
.L201:
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
	bne	.L220
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L219
	mov.l	er5,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er4,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L214
	mov.w	r2,r2
	bne	.L220
	bra	.L219
.L214:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L220
	mov.l	er5,er4
	bra	.L220
.L219:
	mov.l	er5,er0
	bra	.L212
.L220:
	mov.l	er4,er0
.L212:
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
	bne	.L229
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L231
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L225
	mov.w	r2,r2
	bne	.L231
	bra	.L229
.L225:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L231
	mov.l	er5,er4
	bra	.L231
.L229:
	mov.l	er5,er0
	bra	.L223
.L231:
	mov.l	er4,er0
.L223:
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
	bne	.L240
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L242
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L236
	mov.w	r2,r2
	bne	.L242
	bra	.L240
.L236:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L242
	mov.l	er5,er4
	bra	.L242
.L240:
	mov.l	er5,er0
	bra	.L234
.L242:
	mov.l	er4,er0
.L234:
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
	bne	.L251
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L253
	mov.l	er4,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er5,er3
	shll.l	er3
	xor.l	er3,er3
	rotxl.l	er3
	cmp.w	r3,r2
	beq	.L247
	mov.w	r2,r2
	bne	.L253
	bra	.L251
.L247:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L253
	mov.l	er5,er4
	bra	.L253
.L251:
	mov.l	er5,er0
	bra	.L245
.L253:
	mov.l	er4,er0
.L245:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_fminl, .-_fminl
	.align 1
	.global _l64a
_l64a:
	mov.l	#_s___0,er3
	mov.l	er0,er0
	beq	.L257
	mov.l	#_digits,er1
.L258:
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
	bne	.L258
.L257:
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
	blo	.L263
	sub.l	er6,er6
.L263:
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
	bne	.L265
	mov.l	er1,@(4,er0)
	mov.l	er1,@er0
	rts
.L265:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L270
	mov.l	er0,@(4,er2)
.L270:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L273
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L273:
	mov.l	@(4,er0),er3
	beq	.L281
	mov.l	er2,@er3
.L281:
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
	beq	.L283
	sub.l	er6,er6
	mov.l	er1,@(4,er7)
	mov.l	er4,er5
	mov.l	er2,@(12,er7)
.L285:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(36,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L282
	adds	#1,er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.l	@(4,er7),er2
	cmp.l	er6,er2
	bne	.L285
	mov.l	er2,er1
	mov.l	@(12,er7),er3
.L283:
	mov.l	er1,er2
	adds	#1,er2
	mov.l	er2,@er3
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er5
	add.l	er0,er5
	mov.l	@(32,er7),er2
	beq	.L282
	mov.l	@er7,er1
	mov.l	er5,er0
	jsr	@_memmove
.L282:
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
	beq	.L299
	sub.l	er5,er5
	mov.l	er2,@(4,er7)
	mov.l	er1,er6
	mov.l	er0,@er7
.L301:
	mov.l	er6,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.w	r0,r0
	beq	.L298
	adds	#1,er5
	mov.l	@(24,er7),er2
	add.l	er2,er6
	mov.l	@(4,er7),er2
	cmp.l	er5,er2
	bne	.L301
.L299:
	sub.l	er6,er6
.L298:
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
	bpl	.L312
	neg.w	r0
.L312:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
.L320:
	mov.b	@er0,r3l
	cmp.b	#32,r3l
	beq	.L314
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,r1
	add.w	#-9,r1
	cmp.w	#4,r1
	bls	.L314
	cmp.b	#43,r3l
	beq	.L315
	cmp.b	#45,r3l
	beq	.L316
	bra	.L331
.L315:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bls	.L333
	bra	.L334
.L314:
	adds	#1,er0
	bra	.L320
.L316:
	mov.l	er0,er3
	adds	#1,er3
	mov.b	@(1,er0),r2l
	extu.w	r2
	mov.w	r2,r0
	add.w	#-48,r0
	cmp.w	#9,r0
	bhi	.L325
	mov.w	#1,r5
	bra	.L318
.L326:
	mov.l	er0,er3
.L333:
	sub.w	r5,r5
.L318:
	sub.w	r0,r0
	mov.w	#10,r4
.L322:
	mulxs.w	r4,er0
	adds	#1,er3
	add.w	#-48,r2
	sub.w	r2,r0
	mov.b	@er3,r2l
	extu.w	r2
	mov.w	r2,r1
	add.w	#-48,r1
	cmp.w	#9,r1
	bls	.L322
	bra	.L332
.L331:
	mov.w	r2,r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L326
.L334:
	sub.w	r0,r0
	bra	.L319
.L332:
	mov.w	r5,r5
	bne	.L313
.L319:
	neg.w	r0
	bra	.L313
.L325:
	sub.w	r0,r0
.L313:
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
.L342:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L336
	mov.b	r2l,r4l
	extu.w	r4
	mov.w	r4,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L336
	cmp.b	#43,r2l
	beq	.L337
	cmp.b	#45,r2l
	beq	.L338
	bra	.L353
.L337:
	mov.l	er0,er6
	adds	#1,er6
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L355
	bra	.L356
.L336:
	adds	#1,er0
	bra	.L342
.L338:
	mov.l	er0,er6
	adds	#1,er6
	mov.b	@(1,er0),r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L347
	mov.w	#1,r5
	bra	.L340
.L348:
	mov.l	er0,er6
.L355:
	sub.w	r5,r5
.L340:
	sub.l	er0,er0
.L344:
	sub.l	er1,er1
	add.b	#10,r1l
	jsr	@___mulsi3
	adds	#1,er6
	add.w	#-48,r4
	exts.l	er4
	sub.l	er4,er0
	mov.b	@er6,r4l
	extu.w	r4
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L344
	bra	.L354
.L353:
	mov.w	r4,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L348
.L356:
	sub.l	er0,er0
	bra	.L341
.L354:
	mov.w	r5,r5
	bne	.L335
.L341:
	neg.l	er0
	bra	.L335
.L347:
	sub.l	er0,er0
.L335:
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
	sub.l	#16,er7
.L364:
	mov.b	@er0,r2l
	cmp.b	#32,r2l
	beq	.L358
	mov.b	r2l,r6l
	extu.w	r6
	mov.w	r6,r3
	add.w	#-9,r3
	cmp.w	#4,r3
	bls	.L358
	cmp.b	#43,r2l
	beq	.L359
	cmp.b	#45,r2l
	beq	.L360
	bra	.L377:16
.L359:
	mov.l	er0,er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L379
	bra	.L380:16
.L358:
	adds	#1,er0
	bra	.L364
.L360:
	mov.l	er0,er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	mov.b	@(1,er0),r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bhi	.L371:16
	mov.w	#1,r2
	mov.w	r2,@(14,er7)
	bra	.L362
.L372:
	mov.l	er0,@(8,er7)
.L379:
	sub.w	r2,r2
	mov.w	r2,@(14,er7)
.L362:
	sub.l	er4,er4
	sub.l	er5,er5
.L367:
	sub.l	#8,er7
	sub.l	er2,er2
	mov.l	er2,@er7
	sub.l	er2,er2
	add.b	#10,r2l
	mov.l	er2,@(4,er7)
	mov.l	er4,er0
	mov.l	er5,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	add.w	#-48,r6
	exts.l	er6
	mov.l	er6,@(4,er7)
	shll	e6
	subx	r6l,r6l
	exts.w	r6
	exts.l	er6
	mov.l	er6,@er7
	mov.l	er1,er4
	mov.l	@(4,er7),er5
	sub.l	er5,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	bhi	.L366
	sub.l	er4,er4
.L366:
	mov.l	@er7,er1
	sub.l	er1,er0
	sub.l	er4,er0
	mov.l	er0,er4
	mov.l	er3,er5
	mov.l	@(8,er7),er2
	mov.b	@er2,r6l
	extu.w	r6
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L367:16
	bra	.L378
.L377:
	mov.w	r6,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L372:16
.L380:
	sub.l	er4,er4
	sub.l	er5,er5
	bra	.L363
.L378:
	mov.w	@(14,er7),r2
	bne	.L357
.L363:
	sub.l	er0,er0
	mov.l	er5,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L369
	sub.l	er6,er6
.L369:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
	bra	.L357
.L371:
	sub.l	er4,er4
	sub.l	er5,er5
.L357:
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#16,er7
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
	beq	.L382
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	er4,er5
.L385:
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
	bmi	.L386
	ble	.L391
	mov.l	@(24,er7),er2
	add.l	er4,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	subs	#1,er2
	sub.l	er6,er2
	mov.l	er2,er5
	bra	.L383
.L386:
	mov.l	er6,er5
.L383:
	mov.l	er5,er5
	bne	.L385
.L382:
	sub.l	er5,er5
	bra	.L381
.L391:
	mov.l	er4,er5
.L381:
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
	beq	.L393
	mov.l	er1,@er7
.L396:
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
	beq	.L392
	ble	.L395
	mov.l	@(24,er7),er2
	add.l	er5,er2
	mov.l	er2,@er7
	dec #1,r4
	shar.w	r4
	mov.w	r4,r6
.L395:
	mov.w	r6,r4
	bne	.L396
.L393:
	sub.l	er5,er5
.L392:
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
	bpl	.L407
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L409
	sub.l	er6,er6
.L409:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L407:
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
	bpl	.L413
	neg.l	er0
.L413:
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
	bpl	.L416
	sub.l	er4,er4
	mov.l	er3,er6
	neg.l	er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er1,er1
	bne	.L418
	sub.l	er6,er6
.L418:
	sub.l	er2,er4
	sub.l	er6,er4
	mov.l	er4,er2
	mov.l	er1,er3
.L416:
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
	bra	.L427
.L423:
	adds	#2,er0
.L427:
	mov.w	@er0,r2
	beq	.L424
	cmp.w	r2,r1
	bne	.L423
	rts
.L424:
	sub.l	er0,er0
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L440
.L431:
	adds	#2,er0
	adds	#2,er1
.L440:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bne	.L430
	mov.w	r3,r3
	beq	.L430
	mov.w	r2,r2
	bne	.L431
	bra	.L432
.L430:
	cmp.w	r2,r3
	blo	.L435
.L432:
	cmp.w	r3,r2
	xor.w	r0,r0
	bst	#0,r0l
	rts
.L435:
	mov.w	#-1,r0
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L442:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L442
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.w	@er0,r2
	beq	.L447
	mov.l	er0,er2
.L446:
	adds	#2,er2
	mov.w	@er2,r3
	bne	.L446
	bra	.L445
.L447:
	mov.l	er0,er2
.L445:
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
	bne	.L450
	bra	.L456
.L453:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L456
.L450:
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L452
	mov.w	r3,r3
	bne	.L453
	bra	.L452
.L455:
	mov.w	#1,r0
	cmp.w	r2,r3
	bhi	.L449
.L456:
	sub.w	r0,r0
	bra	.L449
.L452:
	mov.w	@er0,r3
	mov.w	@er1,r2
	cmp.w	r2,r3
	bhs	.L455
	mov.w	#-1,r0
.L449:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L465
.L461:
	subs	#1,er2
	adds	#2,er0
.L465:
	mov.l	er2,er2
	beq	.L462
	mov.w	@er0,r3
	cmp.w	r1,r3
	bne	.L461
	rts
.L462:
	sub.l	er0,er0
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	bne	.L467
	bra	.L473
.L469:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
	mov.l	er2,er2
	beq	.L473
.L467:
	mov.w	@er0,r4
	mov.w	@er1,r3
	cmp.w	r3,r4
	beq	.L469
	bra	.L475
.L472:
	mov.w	#1,r0
	cmp.w	r3,r4
	bhi	.L466
.L473:
	sub.w	r0,r0
	bra	.L466
.L475:
	bhs	.L472
	mov.w	#-1,r0
.L466:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er0,er3
	mov.l	er2,er2
	beq	.L477
	shll.l	er2
	jsr	@_memcpy
	mov.l	er0,er3
.L477:
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
	beq	.L482
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
	blo	.L483
	mov.l	er2,er2
	bne	.L492
	bra	.L482
.L483:
	mov.l	er2,er2
	beq	.L482
	shll.l	er3
.L485:
	mov.l	er1,er2
	add.l	er3,er2
	mov.w	@er2,r4
	mov.l	er0,er2
	add.l	er3,er2
	mov.w	r4,@er2
	subs	#2,er3
	cmp.l	#-2,er3
	bne	.L485
	bra	.L482
.L492:
	mov.l	er0,er4
.L484:
	mov.w	@er5+,r2
	mov.w	r2,@er4
	subs	#1,er3
	adds	#2,er4
	cmp.l	#-1,er3
	bne	.L484
.L482:
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
	beq	.L500
	mov.l	er0,er2
.L495:
	mov.w	r1,@er2
	subs	#1,er3
	adds	#2,er2
	cmp.l	#-1,er3
	bne	.L495
.L500:
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L502
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er2,er1
	mov.l	er2,er2
	beq	.L514
.L504:
	subs	#1,er3
	mov.b	@er3,r2l
	subs	#1,er1
	mov.b	r2l,@er1
	cmp.l	er3,er0
	bne	.L504
	rts
.L502:
	beq	.L514
	mov.l	er2,er2
	beq	.L514
	add.l	er0,er2
.L505:
	mov.b	@er0+,r3l
	mov.b	r3l,@er1
	adds	#1,er1
	cmp.l	er2,er0
	bne	.L505
.L514:
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
	bmi	.L517
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L522
.L521:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L521
.L522:
	bra	.L518
.L517:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L524
.L523:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L523
.L524:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L526
.L525:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L525
.L526:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L528
.L527:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L527
.L528:
.L518:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L519
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L530
.L529:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L529
.L530:
	bra	.L520
.L519:
	mov.l	@er7,er3
	shll.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L532
.L531:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L531
.L532:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L534
.L533:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L533
.L534:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L536
.L535:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L535
.L536:
.L520:
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
	bmi	.L538
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L543
.L542:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L542
.L543:
	bra	.L539
.L538:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L545
.L544:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L544
.L545:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L547
.L546:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L546
.L547:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L549
.L548:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L548
.L549:
.L539:
	neg.w	r2
	and.w	#63,r2
	mov.w	r2,r3
	add.w	#-32,r3
	bmi	.L540
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L551
.L550:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L550
.L551:
	bra	.L541
.L540:
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L553
.L552:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L552
.L553:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L555
.L554:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L554
.L555:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L557
.L556:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L556
.L557:
.L541:
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
	ble	.L562
.L559:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L559
.L562:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L567
.L564:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L564
.L567:
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.b	r1l,r1l
	ble	.L572
.L569:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L569
.L572:
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L577
.L574:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L574
.L577:
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L582
.L579:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L579
.L582:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L587
.L584:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L584
.L587:
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	and.w	#7,r1
	mov.b	r1l,r1l
	ble	.L592
.L589:
	rotl.b	r0l
	add.b	#-1,r1l
	bne	.L589
.L592:
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	and.w	#7,r1
	mov.w	#8,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L597
.L594:
	rotl.b	r0l
	add.b	#-1,r2l
	bne	.L594
.L597:
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
	sub.w	r2,r2
.L636:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L639
.L638:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L638
.L639:
	inc #1,r2
	btst	#0,r3l
	beq	.L634
	mov.w	r2,r0
	rts
.L634:
	cmp.w	#16,r2
	bne	.L636
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r2
	beq	.L643
	mov.w	r2,r0
	and.w	#1,r0
	bne	.L646
	mov.w	#1,r0
.L642:
	shar.w	r2
	inc #1,r0
	btst	#0,r2l
	beq	.L642
	rts
.L643:
	sub.w	r0,r0
.L646:
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
	bmi	.L651
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L650
	sub.w	r5,r5
.L650:
	mov.w	r5,r0
	bra	.L648
.L651:
	mov.w	#1,r0
.L648:
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
	bmi	.L655
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L654
	sub.w	r5,r5
.L654:
	mov.w	r5,r0
	bra	.L652
.L655:
	mov.w	#1,r0
.L652:
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
	bmi	.L659
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L658
	sub.w	r5,r5
.L658:
	mov.w	r5,r0
	bra	.L656
.L659:
	mov.w	#1,r0
.L656:
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
	bne	.L662
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L662
	mov.w	r4,r4
	bpl	.L670
	mov.l	#1056964608,er1
	bra	.L664
.L670:
	mov.l	#1073741824,er1
.L664:
	btst	#0,r4l
	beq	.L665
.L667:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L665:
	mov.w	r4,r4
	bpl	.L666
	inc #1,r4
.L666:
	shar.w	r4
	beq	.L662
.L669:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L667
	mov.w	r4,r4
	bpl	.L668
	inc #1,r4
.L668:
	shar.w	r4
	bra	.L669
.L662:
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
	bne	.L679
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er5,er1
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L679
	mov.w	r4,r4
	bpl	.L687
	mov.l	#1056964608,er1
	bra	.L681
.L687:
	mov.l	#1073741824,er1
.L681:
	btst	#0,r4l
	beq	.L682
.L684:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L682:
	mov.w	r4,r4
	bpl	.L683
	inc #1,r4
.L683:
	shar.w	r4
	beq	.L679
.L686:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L684
	mov.w	r4,r4
	bpl	.L685
	inc #1,r4
.L685:
	shar.w	r4
	bra	.L686
.L679:
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
	bne	.L696
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er5,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L696
	mov.w	r4,r4
	bpl	.L704
	mov.l	#1056964608,er1
	bra	.L698
.L704:
	mov.l	#1073741824,er1
.L698:
	btst	#0,r4l
	beq	.L699
.L701:
	mov.l	er1,@er7
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	mov.l	@er7,er1
.L699:
	mov.w	r4,r4
	bpl	.L700
	inc #1,r4
.L700:
	shar.w	r4
	beq	.L696
.L703:
	mov.l	er1,er0
	jsr	@___mulsf3
	mov.l	er0,er1
	btst	#0,r4l
	bne	.L701
	mov.w	r4,r4
	bpl	.L702
	inc #1,r4
.L702:
	shar.w	r4
	bra	.L703
.L696:
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
	beq	.L713
	mov.l	er0,er3
	add.l	er1,er2
.L714:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
	cmp.l	er2,er1
	bne	.L714
.L713:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er4,@-er7
	mov.b	@er0,r3l
	beq	.L726
	mov.l	er0,er3
.L721:
	adds	#1,er3
	mov.b	@er3,r4l
	bne	.L721
	bra	.L720
.L726:
	mov.l	er0,er3
.L720:
	mov.l	er2,er2
	bne	.L722
	bra	.L723
.L724:
	adds	#1,er1
	adds	#1,er3
	dec.l	#1,er2
	beq	.L723
.L722:
	mov.b	@er1,r4l
	mov.b	r4l,@er3
	mov.b	r4l,r4l
	bne	.L724
	bra	.L725
.L723:
	sub.b	r2l,r2l
	mov.b	r2l,@er3
.L725:
	mov.l	@er7+,er4
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er0,er2
	sub.l	er0,er0
	mov.l	er1,er1
	bne	.L733
	rts
.L735:
	adds	#1,er0
	cmp.l	er0,er1
	bne	.L733
	rts
.L733:
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L735
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	mov.b	@er0,r4l
	bne	.L739
	bra	.L743
.L741:
	adds	#1,er2
	cmp.b	r4l,r3l
	beq	.L740
.L742:
	mov.b	@er2,r3l
	bne	.L741
	adds	#1,er0
	mov.b	@er0,r4l
	beq	.L743
.L739:
	mov.l	er1,er2
	bra	.L742
.L743:
	sub.l	er0,er0
.L740:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er4,@-er7
	mov.l	er0,er2
	sub.l	er0,er0
.L747:
	mov.b	@er2,r3l
	mov.b	r3l,r4l
	extu.w	r4
	cmp.w	r1,r4
	bne	.L746
	mov.l	er2,er0
.L746:
	adds	#1,er2
	mov.b	r3l,r3l
	bne	.L747
	mov.l	@er7+,er4
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er1,er2
	mov.l	er1,@er7
	mov.b	@er1,r5l
	beq	.L750
.L752:
	adds	#1,er2
	mov.b	@er2,r3l
	bne	.L752
	mov.l	@er7,er3
	sub.l	er3,er2
	beq	.L750
	subs	#1,er2
	mov.l	er2,@(4,er7)
	bra	.L758
.L757:
	mov.l	@(4,er7),er6
	add.l	er0,er6
	mov.l	@er7,er1
	mov.l	er0,er3
	bra	.L754
.L756:
	adds	#1,er3
	adds	#1,er1
	mov.b	@er3,r2l
	beq	.L755
.L754:
	mov.b	@er1,r4l
	beq	.L755
	cmp.l	er3,er6
	beq	.L755
	cmp.b	r2l,r4l
	beq	.L756
.L755:
	mov.b	@er1,r3l
	cmp.b	r2l,r3l
	beq	.L750
	adds	#1,er0
.L758:
	mov.b	@er0,r2l
	cmp.b	r5l,r2l
	beq	.L757
	adds	#1,er0
	mov.b	r2l,r2l
	bne	.L758
	sub.l	er0,er0
.L750:
	add.l	#8,er7
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
	bpl	.L779
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L774
	bra	.L773
.L779:
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L774
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L774
.L773:
	xor.w	#32768,e4
.L774:
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
	mov.l	er2,@(8,er7)
	mov.l	@(28,er7),er3
	beq	.L780
	cmp.l	er3,er1
	blo	.L788
	sub.l	er3,er1
	add.l	er0,er1
	mov.l	er1,er5
	cmp.l	er1,er0
	bhi	.L788
	mov.b	@er2,r6l
	mov.l	er3,er1
	add.l	er0,er1
.L785:
	mov.b	@er4,r2l
	mov.l	er4,er0
	adds	#1,er4
	cmp.b	r6l,r2l
	bne	.L782
	mov.l	@(8,er7),er3
	adds	#1,er3
	mov.l	@(28,er7),er2
	cmp.l	#1,er2
	bne	.L789
	bra	.L780
.L784:
	adds	#1,er2
	adds	#1,er3
	cmp.l	er1,er2
	bne	.L783
	mov.l	@(4,er7),er0
	bra	.L780
.L789:
	mov.l	er4,er2
	mov.l	er0,@(4,er7)
	mov.l	er4,@er7
.L783:
	mov.b	@er2,r0l
	mov.b	@er3,r4l
	cmp.b	r4l,r0l
	beq	.L784
	mov.l	@er7,er4
.L782:
	adds	#1,er1
	cmp.l	er4,er5
	bhs	.L785
.L788:
	sub.l	er0,er0
.L780:
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
	mov.l	er0,er3
	mov.l	er2,er4
	beq	.L792
	mov.l	er4,er2
	jsr	@_memmove
	mov.l	er0,er3
.L792:
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
	bpl	.L817
	mov.l	er4,er5
	xor.w	#32768,e5
	mov.l	#3212836864,er1
	mov.l	er4,er0
	jsr	@___lesf2
	mov.l	er0,er0
	ble	.L808
	mov.l	#3204448256,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L809
	sub.w	r2,r2
	mov.w	r2,@er6
	mov.l	er5,er4
	bra	.L801:16
.L817:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L810
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L802
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L811
.L802:
	sub.w	r2,r2
	mov.l	@er7,er3
	mov.w	r2,@er3
	mov.l	er4,er0
	bra	.L796:16
.L808:
	mov.l	er5,er4
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L799
.L810:
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L799:
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L805:
	inc #1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	mov.l	#1065353216,er1
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L805
	bra	.L806
.L809:
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
	bra	.L800
.L811:
	mov.l	er4,er5
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
.L800:
	mov.l	er5,er4
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L807:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	mov.l	er5,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L807
.L806:
	mov.l	@er7,er2
	mov.w	r6,@er2
	mov.w	@(6,er7),r2
	beq	.L812
.L801:
	mov.l	er4,er0
	xor.w	#32768,e0
	bra	.L796
.L812:
	mov.l	er4,er0
.L796:
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
	beq	.L825:16
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L824:
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
	bne	.L821
	sub.l	er6,er6
.L821:
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
	bne	.L824:16
	bra	.L818
.L825:
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	er2,@(20,er7)
.L818:
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
	blo	.L836
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L829
.L832:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L830
	mov.l	er3,er3
	bne	.L829
	bra	.L837
.L830:
	dec #1,r0
	bne	.L828
	bra	.L837
.L836:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L828:
	mov.l	er1,er1
	bpl	.L832
.L829:
	sub.l	er0,er0
.L834:
	cmp.l	er1,er4
	blo	.L833
	sub.l	er1,er4
	or.l	er3,er0
.L833:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L834
	bra	.L831
.L837:
	sub.l	er0,er0
.L831:
	mov.l	er2,er2
	beq	.L827
	mov.l	er4,er0
.L827:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L842
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L842:
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
	bne	.L847
	cmp.l	er3,er1
	beq	.L848
.L847:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L843
.L848:
	mov.w	#63,r0
.L843:
	add.l	#8,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	beq	.L852
	sub.w	r0,r0
.L851:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.w	r1,r3
	add.w	r3,r0
	shlr.w	r2
	shll.w	r1
	mov.w	r2,r2
	bne	.L851
	rts
.L852:
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
	blo	.L855
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L855
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L856
	bra	.L854:16
.L855:
	mov.w	r6,r6
	beq	.L858
	mov.l	er1,er3
	mov.l	er4,er0
	extu.l	er6
	shll.l	er6
	shll.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
	mov.l	er4,@(4,er7)
.L859:
	mov.l	@er3,er4
	mov.l	@(4,er3),er5
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er0
	adds	#4,er0
	cmp.l	er6,er3
	bne	.L859
	mov.w	@(2,er7),r5
	mov.l	@(4,er7),er4
.L858:
	cmp.w	r5,r2
	bls	.L854
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
.L860:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
	cmp.l	er1,er0
	bne	.L860
	bra	.L854
.L856:
	mov.w	r3,r2
	extu.l	er2
.L861:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r0l
	mov.l	er4,er3
	add.l	er2,er3
	mov.b	r0l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L861
.L854:
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
	blo	.L869
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L869
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L870
	bra	.L868
.L869:
	mov.w	r6,r6
	beq	.L872
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
.L873:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L873
.L872:
	btst	#0,r2l
	beq	.L868
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er0,er2
	mov.b	r3l,@er2
	bra	.L868
.L870:
	mov.w	r3,r2
	extu.l	er2
.L874:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L874
.L868:
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
	blo	.L884
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L884
	mov.w	r2,r3
	dec #1,r3
	mov.w	r2,r2
	bne	.L885
	bra	.L883
.L884:
	mov.w	r6,r6
	beq	.L887
	mov.l	er1,er4
	mov.l	er0,er3
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	mov.w	r5,@(2,er7)
.L888:
	mov.w	@er4+,r5
	mov.w	r5,@er3
	adds	#2,er3
	cmp.l	er6,er4
	bne	.L888
	mov.w	@(2,er7),r5
.L887:
	cmp.w	r5,r2
	bls	.L883
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
.L889:
	mov.b	@er3+,r2l
	mov.b	r2l,@er0
	adds	#1,er0
	cmp.l	er1,er3
	bne	.L889
	bra	.L883
.L885:
	mov.w	r3,r2
	extu.l	er2
.L890:
	mov.l	er1,er3
	add.l	er2,er3
	mov.b	@er3,r4l
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	r4l,@er3
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L890
.L883:
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
	bmi	.L907
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L905
.L906:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L909
.L908:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L908
.L909:
	and.w	r3,r2
	bne	.L903
.L905:
	inc #1,r0
	cmp.w	#16,r0
	bne	.L906
	bra	.L903
.L907:
	sub.w	r0,r0
.L903:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
.L912:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L916
.L915:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L915
.L916:
	btst	#0,r2l
	bne	.L914
	inc #1,r0
	cmp.w	#16,r0
	bne	.L912
.L914:
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
	bmi	.L922
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L917
.L922:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L917:
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
.L924:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L927
.L926:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L926
.L927:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L924
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
.L929:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L932
.L931:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L931
.L932:
	and.w	#1,r3
	add.w	r3,r0
	inc #1,r2
	cmp.w	#16,r2
	bne	.L929
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	beq	.L936
	sub.l	er0,er0
.L935:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	add.l	er3,er0
	shlr.l	er2
	shll.l	er1
	mov.l	er2,er2
	bne	.L935
	rts
.L936:
	sub.l	er0,er0
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er3
	beq	.L941
	sub.l	er0,er0
	mov.l	er1,er1
	beq	.L944
.L940:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er3,er2
	add.l	er2,er0
	shll.l	er3
	shlr.l	er1
	bne	.L940
	rts
.L941:
	sub.l	er0,er0
	rts
.L944:
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L955
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L948
.L951:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bhi	.L949
	mov.l	er3,er3
	bne	.L948
	bra	.L956
.L949:
	dec #1,r0
	bne	.L947
	bra	.L956
.L955:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L947:
	mov.l	er1,er1
	bpl	.L951
.L948:
	sub.l	er0,er0
.L953:
	cmp.l	er1,er4
	blo	.L952
	sub.l	er1,er4
	or.l	er3,er0
.L952:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L953
	bra	.L950
.L956:
	sub.l	er0,er0
.L950:
	mov.w	r2,r2
	beq	.L946
	mov.l	er4,er0
.L946:
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
	bmi	.L962
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L961
	sub.w	r5,r5
.L961:
	mov.w	r5,r0
	bra	.L959
.L962:
	mov.w	#-1,r0
.L959:
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
	bmi	.L966
	mov.w	#1,r5
	mov.l	@er7,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L965
	sub.w	r5,r5
.L965:
	mov.w	r5,r0
	bra	.L963
.L966:
	mov.w	#-1,r0
.L963:
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
	bpl	.L970
	neg.w	r1
	mov.w	#1,r5
	bra	.L971
.L970:
	beq	.L975
	sub.w	r5,r5
.L971:
	mov.b	#16,r4l
	sub.w	r0,r0
.L974:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	add.w	r2,r0
	shll.w	r3
	shar.w	r1
	beq	.L973
	add.b	#-1,r4l
	bne	.L974
.L973:
	mov.w	r5,r5
	beq	.L969
	neg.w	r0
	bra	.L969
.L975:
	sub.w	r0,r0
.L969:
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
	bpl	.L994
	neg.l	er0
	mov.w	#1,r5
	bra	.L984
.L994:
	sub.w	r5,r5
.L984:
	mov.l	er1,er1
	bpl	.L985
	neg.l	er1
	xor	#1,r5l
.L985:
	mov.l	er0,er4
	cmp.l	er0,er1
	blo	.L995
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L987
.L989:
	mov.l	er2,er2
	bne	.L987
	sub.l	er0,er0
	bra	.L988
.L990:
	dec #1,r3
	bne	.L986
	bra	.L989
.L995:
	mov.w	#32,r3
	sub.l	er2,er2
	add.b	#1,r2l
.L986:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er0
	bhi	.L990
	bra	.L989
.L987:
	sub.l	er0,er0
.L992:
	cmp.l	er1,er4
	blo	.L991
	sub.l	er1,er4
	or.l	er2,er0
.L991:
	shlr.l	er2
	shlr.l	er1
	mov.l	er2,er2
	bne	.L992
.L988:
	mov.w	r5,r5
	beq	.L983
	neg.l	er0
.L983:
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
	bpl	.L1014
	neg.l	er3
	mov.w	#1,r5
	bra	.L1004
.L1014:
	sub.w	r5,r5
.L1004:
	mov.l	er1,er1
	bpl	.L1005
	neg.l	er1
.L1005:
	mov.l	er3,er0
	cmp.l	er3,er1
	blo	.L1015
	sub.l	er2,er2
	add.b	#1,r2l
	bra	.L1012
.L1010:
	dec #1,r4
	bne	.L1006
	bra	.L1023
.L1015:
	mov.w	#32,r4
	sub.l	er2,er2
	add.b	#1,r2l
.L1006:
	shll.l	er1
	shll.l	er2
	cmp.l	er1,er3
	bhi	.L1010
	bra	.L1023
.L1012:
	cmp.l	er1,er0
	blo	.L1011
	sub.l	er1,er0
.L1011:
	shlr.l	er2
	shlr.l	er1
.L1023:
	mov.l	er2,er2
	bne	.L1012
	mov.w	r5,r5
	beq	.L1003
	neg.l	er0
.L1003:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	r0,r4
	cmp.w	r0,r1
	blo	.L1033
	mov.w	#1,r3
	bra	.L1026
.L1029:
	shll.w	r1
	shll.w	r3
	cmp.w	r1,r4
	bhi	.L1027
	mov.w	r3,r3
	bne	.L1026
	sub.w	r0,r0
	bra	.L1028
.L1027:
	dec #1,r0
	bne	.L1025
	bra	.L1028
.L1033:
	mov.w	#16,r0
	mov.w	#1,r3
.L1025:
	mov.w	r1,r1
	bpl	.L1029
.L1026:
	sub.w	r0,r0
.L1031:
	cmp.w	r1,r4
	blo	.L1030
	sub.w	r1,r4
	or.w	r3,r0
.L1030:
	shlr.w	r3
	shlr.w	r1
	mov.w	r3,r3
	bne	.L1031
.L1028:
	mov.w	r2,r2
	beq	.L1024
	mov.w	r4,r0
.L1024:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.l	er0,er4
	cmp.l	er1,er0
	bhi	.L1048
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L1041
.L1044:
	shll.l	er1
	shll.l	er3
	cmp.l	er1,er4
	bls	.L1042
	dec #1,r0
	bne	.L1040
	bra	.L1050
.L1048:
	mov.w	#32,r0
	sub.l	er3,er3
	add.b	#1,r3l
.L1040:
	mov.l	er1,er1
	bpl	.L1044
	bra	.L1041
.L1042:
	mov.l	er3,er3
	beq	.L1050
.L1041:
	sub.l	er0,er0
.L1046:
	cmp.l	er1,er4
	blo	.L1045
	sub.l	er1,er4
	or.l	er3,er0
.L1045:
	shlr.l	er3
	shlr.l	er1
	mov.l	er3,er3
	bne	.L1046
	bra	.L1043
.L1050:
	sub.l	er0,er0
.L1043:
	mov.w	r2,r2
	beq	.L1039
	mov.l	er4,er0
.L1039:
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
	beq	.L1054
	add.w	#-32,r2
	mov.l	er1,er4
	mov.b	r2l,r2l
	ble	.L1059
.L1058:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1058
.L1059:
	sub.l	er0,er0
	bra	.L1055
.L1054:
	mov.w	r2,r2
	beq	.L1057
	mov.l	er1,er0
	mov.b	r2l,r3l
	ble	.L1061
.L1060:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1060
.L1061:
	mov.w	#32,r1
	sub.w	r2,r1
	mov.l	er5,er3
	mov.b	r1l,r1l
	ble	.L1063
.L1062:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1062
.L1063:
	mov.b	r2l,r2l
	ble	.L1065
.L1064:
	shll.l	er4
	add.b	#-1,r2l
	bne	.L1064
.L1065:
	or.l	er3,er4
.L1055:
	mov.l	er4,er2
	mov.l	er0,er3
	bra	.L1053
.L1057:
	mov.l	er0,er2
	mov.l	er1,er3
.L1053:
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
	beq	.L1067
	mov.l	er0,er1
	shll	e1
	subx	r1l,r1l
	exts.w	r1
	exts.l	er1
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1072
.L1071:
	shar.l	er0
	add.b	#-1,r2l
	bne	.L1071
.L1072:
	bra	.L1068
.L1067:
	mov.w	r2,r2
	beq	.L1070
	mov.l	er0,er1
	mov.b	r2l,r3l
	ble	.L1074
.L1073:
	shar.l	er1
	add.b	#-1,r3l
	bne	.L1073
.L1074:
	mov.w	#32,r3
	sub.w	r2,r3
	mov.b	r3l,r3l
	ble	.L1076
.L1075:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L1075
.L1076:
	mov.l	er5,er3
	mov.b	r2l,r2l
	ble	.L1078
.L1077:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L1077
.L1078:
	or.l	er3,er0
.L1068:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1066
.L1070:
	mov.l	er0,er2
	mov.l	er1,er3
.L1066:
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
	bls	.L1114
	sub.l	er0,er0
.L1114:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#16,r3
	sub.w	r0,r3
	mov.b	r3l,r3l
	ble	.L1130
.L1129:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1129
.L1130:
	sub.l	er1,er1
	mov.b	r2h,r1h
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1115
	sub.l	er3,er3
.L1115:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#8,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1132
.L1131:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1131
.L1132:
	add.l	er3,er0
	sub.l	er1,er1
	mov.b	r2l,r1l
	and	#240,r1l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er1,er1
	beq	.L1116
	sub.l	er3,er3
.L1116:
	shll.l	er3
	shll.l	er3
	mov.w	#4,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L1134
.L1133:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1133
.L1134:
	add.l	er0,er3
	mov.l	er3,er4
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#12,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1117
	sub.l	er3,er3
.L1117:
	shll.l	er3
	mov.l	er3,er1
	mov.w	#2,r3
	sub.w	r1,r3
	mov.b	r3l,r3l
	ble	.L1136
.L1135:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1135
.L1136:
	btst	#1,r2l
	bne	.L1118
	sub.l	er0,er0
	add.b	#2,r0l
	sub.w	r2,r0
	bra	.L1119
.L1118:
	sub.w	r0,r0
.L1119:
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
	blt	.L1141
	bgt	.L1142
	cmp.l	er3,er5
	blo	.L1141
	bhi	.L1142
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1137
.L1141:
	sub.l	er0,er0
	bra	.L1137
.L1142:
	sub.l	er0,er0
	add.b	#2,r0l
.L1137:
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
	blt	.L1147
	bgt	.L1148
	cmp.l	er3,er5
	blo	.L1147
	bhi	.L1148
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1144
.L1147:
	sub.l	er0,er0
	bra	.L1144
.L1148:
	sub.l	er0,er0
	add.b	#2,r0l
.L1144:
	subs	#1,er0
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
	beq	.L1150
	sub.l	er0,er0
.L1150:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r3l
	ble	.L1167
.L1166:
	shlr.l	er2
	add.b	#-1,r3l
	bne	.L1166
.L1167:
	sub.l	er3,er3
	add.b	#1,r3l
	mov.b	r2l,r2l
	beq	.L1151
	sub.l	er3,er3
.L1151:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r1l
	ble	.L1169
.L1168:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1168
.L1169:
	add.l	er0,er3
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#15,r0l
	sub.l	er1,er1
	add.b	#1,r1l
	mov.l	er0,er0
	beq	.L1152
	sub.l	er1,er1
.L1152:
	shll.l	er1
	shll.l	er1
	mov.b	r1l,r0l
	ble	.L1171
.L1170:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1170
.L1171:
	add.l	er3,er1
	sub.l	er0,er0
	mov.b	r2l,r0l
	and	#3,r0l
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er0,er0
	beq	.L1153
	sub.l	er3,er3
.L1153:
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L1173
.L1172:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1172
.L1173:
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
	beq	.L1175
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L1180
.L1179:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1179
.L1180:
	sub.l	er1,er1
	bra	.L1176
.L1175:
	mov.w	r2,r2
	beq	.L1178
	mov.l	@er7,er1
	mov.l	er1,er3
	mov.b	r2l,r0l
	ble	.L1182
.L1181:
	shlr.l	er1
	add.b	#-1,r0l
	bne	.L1181
.L1182:
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L1184
.L1183:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1183
.L1184:
	mov.l	er5,er0
	mov.b	r2l,r2l
	ble	.L1186
.L1185:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L1185
.L1186:
	or.l	er3,er0
.L1176:
	mov.l	er1,er2
	mov.l	er0,er3
	bra	.L1174
.L1178:
	mov.l	er0,er2
	mov.l	er1,er3
.L1174:
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
	bne	.L1190
	sub.l	er6,er6
.L1190:
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
	ble	.L1193
.L1192:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1192
.L1193:
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
	ble	.L1196
.L1195:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L1195
.L1196:
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
	bhi	.L1198
	sub.l	er0,er0
.L1198:
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
	beq	.L1210
	mov.w	r1,r4
	mov.l	#1065353216,er5
.L1206:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L1203
.L1210:
	mov.w	@(2,er7),r4
	mov.l	#1065353216,er5
.L1203:
	mov.w	r4,r4
	bpl	.L1204
	inc #1,r4
.L1204:
	shar.w	r4
	beq	.L1205
.L1208:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1206
	mov.w	r4,r4
	bpl	.L1207
	inc #1,r4
.L1207:
	shar.w	r4
	bra	.L1208
.L1205:
	mov.w	@(2,er7),r2
	bpl	.L1202
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1202:
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
	beq	.L1219
	mov.w	r1,r4
	mov.l	#1065353216,er5
.L1215:
	mov.l	er6,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L1212
.L1219:
	mov.w	@(2,er7),r4
	mov.l	#1065353216,er5
.L1212:
	mov.w	r4,r4
	bpl	.L1213
	inc #1,r4
.L1213:
	shar.w	r4
	beq	.L1214
.L1217:
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
	btst	#0,r4l
	bne	.L1215
	mov.w	r4,r4
	bpl	.L1216
	inc #1,r4
.L1216:
	shar.w	r4
	bra	.L1217
.L1214:
	mov.w	@(2,er7),r2
	bpl	.L1211
	mov.l	er5,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er5
.L1211:
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
	blo	.L1224
	bhi	.L1225
	cmp.l	er3,er5
	blo	.L1224
	bhi	.L1225
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1220
.L1224:
	sub.l	er0,er0
	bra	.L1220
.L1225:
	sub.l	er0,er0
	add.b	#2,r0l
.L1220:
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
	blo	.L1230
	bhi	.L1231
	cmp.l	er3,er5
	blo	.L1230
	bhi	.L1231
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L1227
.L1230:
	sub.l	er0,er0
	bra	.L1227
.L1231:
	sub.l	er0,er0
	add.b	#2,r0l
.L1227:
	subs	#1,er0
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
