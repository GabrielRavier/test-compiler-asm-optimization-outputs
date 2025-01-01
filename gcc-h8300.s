	.file	"mini-libc.c"
	.h8300h
	.section .text
	.align 1
	.global _memmove
_memmove:
	mov.l	er4,@-er7
	cmp.l	er1,er0
	bls	.L2
	mov.l	er1,er3
	add.l	er2,er3
	add.l	er0,er2
	bra	.L3
.L4:
	subs	#1,er3
	mov.b	@er3,r4l
	subs	#1,er2
	mov.b	r4l,@er2
.L3:
	cmp.l	er1,er3
	bne	.L4
	bra	.L5
.L2:
	beq	.L5
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L6
.L7:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L6:
	cmp.l	er2,er3
	bne	.L7
.L5:
	mov.l	@er7+,er4
	rts
	.size	_memmove, .-_memmove
	.align 1
	.global _memccpy
_memccpy:
	mov.l	er4,@-er7
	mov.l	@(8,er7),er4
	extu.w	r2
	bra	.L9
.L11:
	subs	#1,er4
	adds	#1,er1
	adds	#1,er0
.L9:
	mov.l	er4,er4
	beq	.L10
	mov.b	@er1,r3l
	mov.b	r3l,@er0
	extu.w	r3
	cmp.w	r3,r2
	bne	.L11
.L10:
	mov.l	er4,er4
	beq	.L13
	adds	#1,er0
	bra	.L12
.L13:
	sub.l	er0,er0
.L12:
	mov.l	@er7+,er4
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	extu.w	r1
	bra	.L15
.L17:
	adds	#1,er0
	subs	#1,er2
.L15:
	mov.l	er2,er2
	beq	.L16
	mov.b	@er0,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L17
.L16:
	mov.l	er2,er2
	bne	.L20
	sub.l	er0,er0
.L20:
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er4,@-er7
	bra	.L22
.L24:
	subs	#1,er2
	adds	#1,er0
	adds	#1,er1
.L22:
	mov.l	er2,er2
	beq	.L23
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L24
.L23:
	mov.l	er2,er2
	beq	.L26
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L25
.L26:
	sub.w	r0,r0
.L25:
	mov.l	@er7+,er4
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er4,@-er7
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L28
.L29:
	mov.b	@er1+,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L28:
	cmp.l	er2,er3
	bne	.L29
	mov.l	@er7+,er4
	rts
	.size	_memcpy, .-_memcpy
	.align 1
	.global _memrchr
_memrchr:
	mov.l	er4,@-er7
	extu.w	r1
	subs	#1,er2
	bra	.L31
.L33:
	mov.l	er2,er4
	subs	#1,er4
	mov.l	er0,er3
	add.l	er2,er3
	mov.b	@er3,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L34
	add.l	er2,er0
	bra	.L32
.L34:
	mov.l	er4,er2
.L31:
	cmp.l	#-1,er2
	bne	.L33
	sub.l	er0,er0
.L32:
	mov.l	@er7+,er4
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	add.l	er0,er2
	mov.l	er0,er3
	bra	.L36
.L37:
	mov.b	r1l,@er3
	adds	#1,er3
.L36:
	cmp.l	er2,er3
	bne	.L37
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	bra	.L39
.L40:
	adds	#1,er1
	adds	#1,er0
.L39:
	mov.b	@er1,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L40
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	extu.w	r1
	bra	.L42
.L44:
	adds	#1,er0
.L42:
	mov.b	@er0,r2l
	beq	.L45
	extu.w	r2
	cmp.w	r2,r1
	bne	.L44
.L45:
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
.L48:
	mov.b	@er0,r2l
	extu.w	r2
	cmp.w	r2,r1
	beq	.L51
	mov.b	@er0+,r2l
	mov.b	r2l,r2l
	bne	.L48
	sub.l	er0,er0
.L51:
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	bra	.L53
.L55:
	adds	#1,er0
	adds	#1,er1
.L53:
	mov.b	@er0,r2l
	mov.b	@er1,r3l
	cmp.b	r3l,r2l
	bne	.L54
	mov.b	r2l,r2l
	bne	.L55
.L54:
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
	bra	.L57
.L58:
	adds	#1,er0
.L57:
	mov.b	@er0,r3l
	bne	.L58
	sub.l	er2,er0
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er4,@-er7
	mov.l	er2,er2
	beq	.L64
	subs	#1,er2
	add.l	er0,er2
	bra	.L61
.L63:
	adds	#1,er0
	adds	#1,er1
.L61:
	mov.b	@er0,r3l
	beq	.L62
	mov.b	@er1,r3l
	beq	.L62
	cmp.l	er2,er0
	beq	.L62
	mov.b	@er0,r3l
	mov.b	@er1,r4l
	cmp.b	r4l,r3l
	beq	.L63
.L62:
	mov.b	@er0,r0l
	extu.w	r0
	mov.b	@er1,r2l
	extu.w	r2
	sub.w	r2,r0
	bra	.L60
.L64:
	sub.w	r0,r0
.L60:
	mov.l	@er7+,er4
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	mov.l	er4,@-er7
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L66
.L67:
	mov.b	@(1,er3),r4l
	mov.b	r4l,@er1
	mov.b	@er3,r4l
	mov.b	r4l,@(1,er1)
	adds	#2,er1
	adds	#2,er3
.L66:
	mov.l	er2,er4
	sub.l	er3,er4
	cmp.l	#1,er4
	bgt	.L67
	mov.l	@er7+,er4
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
	bls	.L70
	sub.w	r0,r0
.L70:
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.w	#1,r2
	cmp.w	#127,r0
	bls	.L72
	sub.w	r2,r2
.L72:
	mov.w	r2,r0
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	cmp.w	#32,r0
	beq	.L76
	mov.w	#1,r2
	cmp.w	#9,r0
	beq	.L75
	sub.w	r2,r2
.L75:
	mov.w	r2,r0
	rts
.L76:
	mov.w	#1,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L80
	mov.w	#1,r2
	cmp.w	#127,r0
	beq	.L79
	sub.w	r2,r2
.L79:
	mov.w	r2,r0
	rts
.L80:
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
	bls	.L83
	sub.w	r0,r0
.L83:
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.w	r0,r2
	add.w	#-33,r2
	mov.w	#1,r0
	cmp.w	#93,r2
	bls	.L86
	sub.w	r0,r0
.L86:
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#25,r2
	bls	.L89
	sub.w	r0,r0
.L89:
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.w	r0,r2
	add.w	#-32,r2
	mov.w	#1,r0
	cmp.w	#94,r2
	bls	.L92
	sub.w	r0,r0
.L92:
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	cmp.w	#32,r0
	beq	.L96
	add.w	#-9,r0
	mov.w	#1,r2
	cmp.w	#4,r0
	bls	.L95
	sub.w	r2,r2
.L95:
	mov.w	r2,r0
	rts
.L96:
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
	bls	.L99
	sub.w	r0,r0
.L99:
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	cmp.w	#31,r0
	bls	.L103
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L104
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L105
	add.w	#7,r0
	mov.w	#1,r2
	cmp.w	#2,r0
	bls	.L102
	sub.w	r2,r2
.L102:
	mov.w	r2,r0
	rts
.L103:
	mov.w	#1,r0
	rts
.L104:
	mov.w	#1,r0
	rts
.L105:
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
	bls	.L108
	sub.w	r0,r0
.L108:
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	cmp.w	#254,r0
	bhi	.L110
	inc #1,r0
	mov.w	r0,r2
	and.w	#127,r2
	mov.w	#1,r0
	cmp.w	#32,r2
	bhi	.L117
	sub.w	r0,r0
	rts
.L110:
	cmp.w	#8231,r0
	bls	.L114
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L115
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L116
	and	#254,r0l
	mov.w	#1,r2
	cmp.w	#-2,r0
	bne	.L113
	sub.w	r2,r2
.L113:
	mov.w	r2,r0
	rts
.L114:
	mov.w	#1,r0
	rts
.L115:
	mov.w	#1,r0
	rts
.L116:
	mov.w	#1,r0
.L117:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L122
	or	#32,r0l
	mov.w	r0,r2
	add.w	#-97,r2
	mov.w	#1,r0
	cmp.w	#5,r2
	bls	.L123
	sub.w	r0,r0
	rts
.L122:
	mov.w	#1,r0
.L123:
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
	bne	.L129
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L130
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L133
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L127
.L129:
	mov.l	er4,er0
	bra	.L127
.L130:
	mov.l	er5,er0
	bra	.L127
.L133:
	sub.l	er0,er0
.L127:
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
	bne	.L137
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L138
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L141
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L135
.L137:
	mov.l	er4,er0
	bra	.L135
.L138:
	mov.l	er5,er0
	bra	.L135
.L141:
	sub.l	er0,er0
.L135:
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
	bne	.L148
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L149
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
	beq	.L144
	mov.l	er4,er4
	bpl	.L150
	mov.l	er5,er0
	bra	.L143
.L144:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L146
	mov.l	er5,er4
.L146:
	mov.l	er4,er0
	bra	.L143
.L148:
	mov.l	er5,er0
	bra	.L143
.L149:
	mov.l	er4,er0
	bra	.L143
.L150:
	mov.l	er4,er0
.L143:
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
	bne	.L157
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L158
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
	beq	.L153
	mov.l	er4,er4
	bpl	.L159
	mov.l	er5,er0
	bra	.L152
.L153:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L155
	mov.l	er5,er4
.L155:
	mov.l	er4,er0
	bra	.L152
.L157:
	mov.l	er5,er0
	bra	.L152
.L158:
	mov.l	er4,er0
	bra	.L152
.L159:
	mov.l	er4,er0
.L152:
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
	bne	.L166
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L167
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
	beq	.L162
	mov.l	er4,er4
	bpl	.L168
	mov.l	er5,er0
	bra	.L161
.L162:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L164
	mov.l	er5,er4
.L164:
	mov.l	er4,er0
	bra	.L161
.L166:
	mov.l	er5,er0
	bra	.L161
.L167:
	mov.l	er4,er0
	bra	.L161
.L168:
	mov.l	er4,er0
.L161:
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
	bne	.L175
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L176
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
	beq	.L171
	mov.l	er5,er5
	bpl	.L177
	mov.l	er5,er0
	bra	.L170
.L171:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L173
	mov.l	er5,er4
.L173:
	mov.l	er4,er0
	bra	.L170
.L175:
	mov.l	er4,er0
	bra	.L170
.L176:
	mov.l	er5,er0
	bra	.L170
.L177:
	mov.l	er4,er0
.L170:
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
	bne	.L184
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L185
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
	beq	.L180
	mov.l	er5,er5
	bpl	.L186
	mov.l	er5,er0
	bra	.L179
.L180:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L182
	mov.l	er5,er4
.L182:
	mov.l	er4,er0
	bra	.L179
.L184:
	mov.l	er4,er0
	bra	.L179
.L185:
	mov.l	er5,er0
	bra	.L179
.L186:
	mov.l	er4,er0
.L179:
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
	bne	.L193
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L194
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
	beq	.L189
	mov.l	er5,er5
	bpl	.L195
	mov.l	er5,er0
	bra	.L188
.L189:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L191
	mov.l	er5,er4
.L191:
	mov.l	er4,er0
	bra	.L188
.L193:
	mov.l	er4,er0
	bra	.L188
.L194:
	mov.l	er5,er0
	bra	.L188
.L195:
	mov.l	er4,er0
.L188:
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
	mov.l	#_s___0,er3
	mov.l	#_digits,er1
	bra	.L197
.L198:
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
.L197:
	mov.l	er0,er0
	bne	.L198
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
	blo	.L201
	sub.l	er6,er6
.L201:
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
	bne	.L203
	sub.l	er2,er2
	mov.l	er2,@(4,er0)
	mov.l	er2,@er0
	rts
.L203:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L205
	mov.l	er0,@(4,er2)
.L205:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L208
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L208:
	mov.l	@(4,er0),er2
	beq	.L210
	mov.l	@er0,er3
	mov.l	er3,@er2
.L210:
	rts
	.size	_remque, .-_remque
	.align 1
	.global _lsearch
_lsearch:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#16,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,er5
	mov.l	er1,@(8,er7)
	mov.l	@(36,er7),er6
	mov.l	@er2,er1
	sub.l	er4,er4
	mov.l	er1,@er7
	mov.l	er2,@(12,er7)
	bra	.L212
.L215:
	mov.l	er5,er1
	mov.l	@(4,er7),er0
	jsr	@er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.w	r0,r0
	bne	.L213
	mov.l	er2,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er2
	add.l	er2,er0
	bra	.L214
.L213:
	adds	#1,er4
.L212:
	mov.l	@er7,er2
	cmp.l	er2,er4
	bne	.L215
	mov.l	er2,er1
	mov.l	@(12,er7),er2
	mov.l	er1,er3
	adds	#1,er3
	mov.l	er3,@er2
	mov.l	@(32,er7),er0
	jsr	@___mulsi3
	mov.l	@(32,er7),er2
	mov.l	@(4,er7),er1
	mov.l	@(8,er7),er3
	add.l	er3,er0
	jsr	@_memcpy
.L214:
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
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er2,er6
	mov.l	er1,er5
	sub.l	er4,er4
	bra	.L217
.L220:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.l	@(24,er7),er2
	add.l	er2,er5
	mov.w	r0,r0
	bne	.L218
	mov.l	er2,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(4,er7),er2
	add.l	er2,er0
	bra	.L219
.L218:
	adds	#1,er4
.L217:
	cmp.l	er6,er4
	bne	.L220
	sub.l	er0,er0
.L219:
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
	bpl	.L223
	neg.w	r0
.L223:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	bra	.L225
.L226:
	adds	#1,er5
.L225:
	mov.b	@er5,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L226
	mov.b	@er5,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L232
	cmp.w	#45,r2
	bne	.L233
	mov.w	#1,r4
	bra	.L227
.L232:
	sub.w	r4,r4
.L227:
	adds	#1,er5
	bra	.L228
.L233:
	sub.w	r4,r4
.L228:
	mov.l	er5,er2
	sub.w	r0,r0
	mov.w	#10,r1
	bra	.L229
.L230:
	mulxs.w	r1,er0
	mov.b	@er2+,r3l
	extu.w	r3
	add.w	#-48,r3
	sub.w	r3,r0
.L229:
	mov.b	@er2,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L230
	mov.w	r4,r4
	bne	.L231
	neg.w	r0
.L231:
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
	bra	.L236
.L237:
	adds	#1,er4
.L236:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L237
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L243
	cmp.w	#45,r2
	bne	.L244
	mov.w	#1,r6
	bra	.L238
.L243:
	sub.w	r6,r6
.L238:
	adds	#1,er4
	bra	.L239
.L244:
	sub.w	r6,r6
.L239:
	sub.l	er0,er0
	sub.l	er5,er5
	add.b	#10,r5l
	bra	.L240
.L241:
	mov.l	er5,er1
	jsr	@___mulsi3
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	sub.l	er2,er0
.L240:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L241
	mov.w	r6,r6
	bne	.L242
	neg.l	er0
.L242:
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
	bra	.L247
.L248:
	adds	#1,er4
.L247:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L248
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L256
	cmp.w	#45,r2
	bne	.L257
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L249
.L256:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L249:
	adds	#1,er4
	bra	.L250
.L257:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L250:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
	bra	.L251
.L253:
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
	mov.b	@er4,r2l
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
	bhi	.L252
	sub.l	er5,er5
.L252:
	mov.l	@(8,er7),er1
	sub.l	er1,er0
	sub.l	er5,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
	adds	#1,er4
.L251:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L253:16
	mov.w	@(18,er7),r2
	bne	.L258
	sub.l	er2,er2
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er1,er1
	bne	.L255
	sub.l	er4,er4
.L255:
	mov.l	@er7,er3
	sub.l	er3,er2
	mov.l	er2,er5
	sub.l	er4,er5
	mov.l	er5,er2
	mov.l	er1,er3
	bra	.L254
.L258:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
.L254:
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
	bra	.L260
.L264:
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
	bpl	.L261
	shlr.l	er4
	bra	.L260
.L261:
	ble	.L265
	mov.l	@(20,er7),er6
	add.l	er5,er6
	mov.l	er4,er2
	shlr.l	er2
	subs	#1,er4
	sub.l	er2,er4
.L260:
	mov.l	er4,er4
	bne	.L264
	sub.l	er0,er0
	bra	.L263
.L265:
	mov.l	er5,er0
.L263:
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
	mov.l	er1,er6
	bra	.L267
.L270:
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
	beq	.L271
	ble	.L269
	mov.l	@(20,er7),er6
	add.l	er5,er6
	dec #1,r4
.L269:
	shar.w	r4
.L267:
	mov.w	r4,r4
	bne	.L270
	sub.l	er0,er0
	bra	.L268
.L271:
	mov.l	er5,er0
.L268:
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
	bpl	.L274
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L276
	sub.l	er6,er6
.L276:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L274:
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
	bpl	.L280
	neg.l	er0
.L280:
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
	bpl	.L283
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L285
	sub.l	er6,er6
.L285:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L283:
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
	bra	.L288
.L290:
	adds	#2,er0
.L288:
	mov.w	@er0,r2
	beq	.L289
	cmp.w	r2,r1
	bne	.L290
.L289:
	mov.w	@er0,r2
	bne	.L293
	sub.l	er0,er0
.L293:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L295
.L297:
	adds	#2,er0
	adds	#2,er1
.L295:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L296
	mov.w	r2,r2
	beq	.L296
	mov.w	r3,r2
	bne	.L297
.L296:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L300
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L299
	sub.w	r2,r2
.L299:
	mov.w	r2,r0
	rts
.L300:
	mov.w	#-1,r0
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L302:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L302
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.l	er0,er2
	bra	.L305
.L306:
	adds	#2,er2
.L305:
	mov.w	@er2,r3
	bne	.L306
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	bra	.L308
.L310:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
.L308:
	mov.l	er2,er2
	beq	.L309
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L309
	mov.w	r3,r3
	beq	.L309
	mov.w	r4,r3
	bne	.L310
.L309:
	mov.l	er2,er2
	beq	.L313
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L314
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L312
	sub.w	r2,r2
.L312:
	mov.w	r2,r0
	bra	.L311
.L313:
	sub.w	r0,r0
	bra	.L311
.L314:
	mov.w	#-1,r0
.L311:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L316
.L318:
	subs	#1,er2
	adds	#2,er0
.L316:
	mov.l	er2,er2
	beq	.L317
	mov.w	@er0,r3
	cmp.w	r3,r1
	bne	.L318
.L317:
	mov.l	er2,er2
	bne	.L321
	sub.l	er0,er0
.L321:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	bra	.L323
.L325:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
.L323:
	mov.l	er2,er2
	beq	.L324
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L325
.L324:
	mov.l	er2,er2
	beq	.L328
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L329
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L327
	sub.w	r2,r2
.L327:
	mov.w	r2,r0
	bra	.L326
.L328:
	sub.w	r0,r0
	bra	.L326
.L329:
	mov.w	#-1,r0
.L326:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er4,@-er7
	mov.l	er0,er3
	bra	.L331
.L332:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L331:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L332
	mov.l	@er7+,er4
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er4,@-er7
	cmp.l	er1,er0
	beq	.L334
	mov.l	er2,er4
	shll.l	er4
	mov.l	er0,er3
	sub.l	er1,er3
	cmp.l	er4,er3
	blo	.L335
	mov.l	er0,er3
	bra	.L336
.L335:
	shll.l	er2
	add.l	er2,er1
	add.l	er0,er2
	mov.l	er0,er4
	subs	#2,er4
	bra	.L337
.L338:
	mov.w	@er1,r3
	mov.w	r3,@er2
.L337:
	subs	#2,er1
	subs	#2,er2
	cmp.l	er4,er2
	bne	.L338
	bra	.L334
.L339:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L336:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L339
.L334:
	mov.l	@er7+,er4
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er0,er3
	bra	.L341
.L342:
	mov.w	r1,@er3
	adds	#2,er3
.L341:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L342
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L344
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er1,er2
	bra	.L345
.L346:
	subs	#1,er3
	mov.b	@er3,r1l
	subs	#1,er2
	mov.b	r1l,@er2
.L345:
	cmp.l	er0,er3
	bne	.L346
	rts
.L344:
	beq	.L350
	mov.l	er1,er3
	add.l	er2,er1
	bra	.L348
.L349:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
.L348:
	cmp.l	er1,er3
	bne	.L349
.L350:
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
	bmi	.L353
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L358
.L357:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L357
.L358:
	bra	.L354
.L353:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L360
.L359:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L359
.L360:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L362
.L361:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L361
.L362:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L364
.L363:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L363
.L364:
.L354:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L355
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L366
.L365:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L365
.L366:
	bra	.L356
.L355:
	mov.l	@er7,er3
	shll.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L368
.L367:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L367
.L368:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L370
.L369:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L369
.L370:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L372
.L371:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L371
.L372:
.L356:
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
	bmi	.L374
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L379
.L378:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L378
.L379:
	bra	.L375
.L374:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L381
.L380:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L380
.L381:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L383
.L382:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L382
.L383:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L385
.L384:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L384
.L385:
.L375:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L376
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L387
.L386:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L386
.L387:
	bra	.L377
.L376:
	mov.l	@(4,er7),er3
	shlr.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L389
.L388:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L388
.L389:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L391
.L390:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L390
.L391:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L393
.L392:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L392
.L393:
.L377:
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
	ble	.L398
.L395:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L395
.L398:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L403
.L400:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L400
.L403:
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
	ble	.L406
.L405:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L405
.L406:
	mov.b	r1l,r1l
	ble	.L408
.L407:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L407
.L408:
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
	ble	.L411
.L410:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L410
.L411:
	mov.b	r1l,r1l
	ble	.L413
.L412:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L412
.L413:
	or.l	er2,er0
	mov.l	@er7+,er4
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L418
.L415:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L415
.L418:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L423
.L420:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L420
.L423:
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
	ble	.L426
.L425:
	shlr.w	r0
	add.b	#-1,r3l
	bne	.L425
.L426:
	mov.b	r1l,r1l
	ble	.L428
.L427:
	shll.w	r2
	add.b	#-1,r1l
	bne	.L427
.L428:
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
	ble	.L431
.L430:
	shll.w	r0
	add.b	#-1,r3l
	bne	.L430
.L431:
	mov.b	r1l,r1l
	ble	.L433
.L432:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L432
.L433:
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
	bra	.L470
.L473:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L475
.L474:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L474
.L475:
	btst	#0,r3l
	beq	.L471
	inc #1,r2
	mov.w	r2,r0
	rts
.L471:
	inc #1,r2
.L470:
	cmp.w	#16,r2
	bne	.L473
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r0
	beq	.L480
	mov.w	#1,r2
	bra	.L478
.L479:
	shar.w	r0
	inc #1,r2
.L478:
	btst	#0,r0l
	beq	.L479
	mov.w	r2,r0
	rts
.L480:
	sub.w	r0,r0
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
	bmi	.L484
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L483
	sub.w	r5,r5
.L483:
	mov.w	r5,r0
	bra	.L482
.L484:
	mov.w	#1,r0
.L482:
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
	bmi	.L488
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L487
	sub.w	r5,r5
.L487:
	mov.w	r5,r0
	bra	.L486
.L488:
	mov.w	#1,r0
.L486:
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
	bmi	.L492
	mov.w	#1,r5
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L491
	sub.w	r5,r5
.L491:
	mov.w	r5,r0
	bra	.L490
.L492:
	mov.w	#1,r0
.L490:
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
	bne	.L495
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L495
	mov.w	r4,r4
	bpl	.L501
	mov.l	#1056964608,er5
	bra	.L500
.L501:
	mov.l	#1073741824,er5
.L500:
	btst	#0,r4l
	beq	.L498
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L498:
	mov.w	r4,r2
	bpl	.L499
	inc #1,r2
.L499:
	shar.w	r2
	mov.w	r2,r4
	beq	.L495
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L500
.L495:
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
	bne	.L504
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L504
	mov.w	r4,r4
	bpl	.L510
	mov.l	#1056964608,er5
	bra	.L509
.L510:
	mov.l	#1073741824,er5
.L509:
	btst	#0,r4l
	beq	.L507
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L507:
	mov.w	r4,r2
	bpl	.L508
	inc #1,r2
.L508:
	shar.w	r2
	mov.w	r2,r4
	beq	.L504
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L509
.L504:
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
	bne	.L513
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L513
	mov.w	r4,r4
	bpl	.L519
	mov.l	#1056964608,er5
	bra	.L518
.L519:
	mov.l	#1073741824,er5
.L518:
	btst	#0,r4l
	beq	.L516
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L516:
	mov.w	r4,r2
	bpl	.L517
	inc #1,r2
.L517:
	shar.w	r2
	mov.w	r2,r4
	beq	.L513
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L518
.L513:
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
	mov.l	er0,er3
	add.l	er0,er2
	bra	.L522
.L523:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L522:
	cmp.l	er2,er3
	bne	.L523
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
	bra	.L525
.L527:
	adds	#1,er5
	adds	#1,er0
	subs	#1,er4
.L525:
	mov.l	er4,er4
	beq	.L526
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L527
.L526:
	mov.l	er4,er4
	bne	.L528
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L528:
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
	sub.l	er0,er0
	bra	.L530
.L532:
	adds	#1,er0
.L530:
	cmp.l	er1,er0
	beq	.L533
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L532
.L533:
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	bra	.L535
.L537:
	mov.b	@er2+,r3l
	mov.b	@er0,r4l
	cmp.b	r4l,r3l
	beq	.L536
.L538:
	mov.b	@er2,r3l
	bne	.L537
	adds	#1,er0
.L535:
	mov.b	@er0,r2l
	beq	.L540
	mov.l	er1,er2
	bra	.L538
.L540:
	sub.l	er0,er0
.L536:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er0,er2
	sub.l	er0,er0
.L543:
	mov.b	@er2,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L542
	mov.l	er2,er0
.L542:
	mov.b	@er2+,r3l
	mov.b	r3l,r3l
	bne	.L543
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
	beq	.L550
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L548
.L549:
	mov.l	er6,er2
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L551
	adds	#1,er4
.L548:
	mov.w	@(2,er7),r1
	mov.l	er4,er0
	jsr	@_strchr
	mov.l	er0,er4
	bne	.L549
	sub.l	er0,er0
	bra	.L547
.L550:
	mov.l	er4,er0
	bra	.L547
.L551:
	mov.l	er4,er0
.L547:
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
	bpl	.L553
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L555
.L553:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L563
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L564
.L555:
	mov.l	er4,er0
	xor.w	#32768,e0
	bra	.L556
.L563:
	mov.l	er4,er0
	bra	.L556
.L564:
	mov.l	er4,er0
.L556:
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
	mov.l	er2,er5
	mov.l	@(24,er7),er2
	mov.l	er1,er6
	sub.l	er2,er6
	add.l	er0,er6
	mov.l	er2,er2
	beq	.L566
	cmp.l	er2,er1
	blo	.L572
	subs	#1,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	bra	.L568
.L570:
	mov.b	@er4,r2l
	mov.b	@er5,r3l
	cmp.b	r3l,r2l
	bne	.L569
	mov.l	@er7,er2
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L573
.L569:
	adds	#1,er4
.L568:
	cmp.l	er6,er4
	bls	.L570
	sub.l	er0,er0
	bra	.L566
.L572:
	sub.l	er0,er0
	bra	.L566
.L573:
	mov.l	er4,er0
.L566:
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
	bpl	.L592
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L576
.L592:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L576:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L587
	bra	.L593
.L580:
	inc #1,r6
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L578
.L587:
	sub.w	r6,r6
	mov.l	#1065353216,er5
.L578:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L580
	bra	.L581
.L593:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L594
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L589
	sub.w	r6,r6
	bra	.L581
.L584:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	bra	.L583
.L589:
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L583:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L584
	bra	.L581
.L594:
	sub.w	r6,r6
.L581:
	mov.l	@(4,er7),er2
	mov.w	r6,@er2
	mov.w	@(2,er7),r2
	beq	.L585
	xor.w	#32768,e4
.L585:
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
	sub.l	er2,er2
	mov.l	er2,@(24,er7)
	mov.l	er2,@(28,er7)
	bra	.L596:16
.L599:
	sub.l	er2,er2
	mov.l	er2,@(32,er7)
	mov.l	er5,er2
	and.l	#1,er2
	mov.l	er2,@(36,er7)
	sub.l	#8,er7
	mov.l	@(8,er7),er2
	mov.l	er2,@er7
	mov.l	@(12,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	@(40,er7),er0
	mov.l	@(44,er7),er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,@(16,er7)
	mov.l	er1,@(20,er7)
	mov.l	@(28,er7),er2
	mov.l	@(20,er7),er3
	add.l	er3,er2
	mov.l	er2,er1
	cmp.l	er3,er2
	xor.l	er3,er3
	bst	#0,r3l
	mov.l	@(24,er7),er2
	mov.l	@(16,er7),er6
	add.l	er6,er2
	mov.l	er2,er0
	mov.l	er3,er2
	add.l	er0,er2
	mov.l	er2,@(16,er7)
	mov.l	er1,@(20,er7)
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
	mov.l	@(16,er7),er2
	mov.l	er2,@(24,er7)
	mov.l	@(20,er7),er2
	mov.l	er2,@(28,er7)
.L596:
	mov.l	er4,er2
	or.l	er5,er2
	bne	.L599:16
	mov.l	@(24,er7),er0
	mov.l	@(28,er7),er1
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
	mov.w	#33,r4
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L601
.L603:
	shll.l	er1
	shll.l	er3
.L601:
	cmp.l	er0,er1
	bhs	.L608
	dec #1,r4
	beq	.L609
	mov.l	er1,er1
	bpl	.L603
	sub.l	er4,er4
	bra	.L604
.L608:
	sub.l	er4,er4
	bra	.L604
.L609:
	sub.l	er4,er4
	bra	.L604
.L606:
	cmp.l	er1,er0
	blo	.L605
	sub.l	er1,er0
	or.l	er3,er4
.L605:
	shlr.l	er3
	shlr.l	er1
.L604:
	mov.l	er3,er3
	bne	.L606
	mov.l	er2,er2
	bne	.L607
	mov.l	er4,er0
.L607:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L613
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L613:
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
	beq	.L617
	mov.l	er6,er0
	mov.l	er5,er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L615
.L617:
	mov.w	#63,r0
.L615:
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	sub.w	r0,r0
	bra	.L619
.L620:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.w	r1,r3
	shlr.w	r2
	add.w	r3,r0
	shll.w	r1
.L619:
	mov.w	r2,r2
	bne	.L620
	rts
	.size	___mulsi3, .-___mulsi3
	.align 1
	.global ___cmovd
___cmovd:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,er5
	mov.l	er1,er6
	mov.w	r2,r0
	shlr.w	r0
	shlr.w	r0
	shlr.w	r0
	mov.w	r2,r3
	and	#248,r3l
	mov.w	r3,@(2,er7)
	cmp.l	er1,er5
	bhs	.L622
.L624:
	mov.l	er6,er3
	mov.l	er5,er4
	extu.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	add.l	er6,er0
	mov.l	er5,@(4,er7)
	mov.l	er0,er5
	bra	.L623
.L622:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er5
	bhi	.L624
	bra	.L625
.L626:
	mov.l	@er3,er0
	mov.l	@(4,er3),er1
	mov.l	er0,@er4
	mov.l	er1,@(4,er4)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er4
	adds	#4,er4
.L623:
	cmp.l	er5,er3
	bne	.L626
	mov.l	@(4,er7),er5
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L627
.L628:
	mov.l	er6,er0
	add.l	er3,er0
	mov.b	@er0,r1l
	mov.l	er5,er0
	add.l	er3,er0
	mov.b	r1l,@er0
	adds	#1,er3
.L627:
	cmp.w	r3,r2
	bhi	.L628
	bra	.L621
.L630:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er6,er0
	add.l	er3,er0
	mov.b	@er0,r0l
	add.l	er5,er3
	mov.b	r0l,@er3
.L625:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L630
.L621:
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
	bhs	.L632
.L634:
	mov.l	er1,er3
	mov.l	er0,er4
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	bra	.L633
.L632:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L634
	bra	.L635
.L636:
	mov.w	@er3+,r5
	mov.w	r5,@er4
	adds	#2,er4
.L633:
	cmp.l	er6,er3
	bne	.L636
	btst	#0,r2l
	beq	.L631
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er2,er0
	mov.b	r3l,@er0
	bra	.L631
.L638:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r4l
	add.l	er0,er3
	mov.b	r4l,@er3
.L635:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L638
.L631:
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
	mov.w	r2,r5
	shlr.w	r5
	shlr.w	r5
	mov.w	r2,r3
	and	#252,r3l
	mov.w	r3,@(2,er7)
	cmp.l	er1,er0
	bhs	.L640
.L642:
	mov.l	er1,er3
	mov.l	er0,er4
	extu.l	er5
	shll.l	er5
	add.l	er1,er5
	bra	.L641
.L640:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L642
	bra	.L643
.L644:
	mov.w	@er3+,r6
	mov.w	r6,@er4
	adds	#2,er4
.L641:
	cmp.l	er5,er3
	bne	.L644
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L645
.L646:
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r5l
	mov.l	er0,er4
	add.l	er3,er4
	mov.b	r5l,@er4
	adds	#1,er3
.L645:
	cmp.w	r3,r2
	bhi	.L646
	bra	.L639
.L648:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r4l
	add.l	er0,er3
	mov.b	r4l,@er3
.L643:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L648
.L639:
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
	sub.w	r0,r0
	mov.w	#-32768,r1
	bra	.L656
.L658:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L660
.L659:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L659
.L660:
	and.w	r3,r2
	bne	.L657
	inc #1,r0
.L656:
	cmp.w	#16,r0
	bne	.L658
.L657:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
	bra	.L662
.L664:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L667
.L666:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L666
.L667:
	btst	#0,r2l
	bne	.L665
	inc #1,r0
.L662:
	cmp.w	#16,r0
	bne	.L664
.L665:
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
	bmi	.L673
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L671
.L673:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L671:
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
	bra	.L675
.L676:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L678
.L677:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L677
.L678:
	and.w	#1,r3
	inc #1,r2
	add.w	r3,r0
.L675:
	cmp.w	#16,r2
	bne	.L676
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
	bra	.L680
.L681:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L683
.L682:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L682
.L683:
	and.w	#1,r3
	inc #1,r2
	add.w	r3,r0
.L680:
	cmp.w	#16,r2
	bne	.L681
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	sub.l	er0,er0
	bra	.L685
.L686:
	mov.l	er2,er3
	and.l	#1,er3
	neg.l	er3
	and.l	er1,er3
	shlr.l	er2
	add.l	er3,er0
	shll.l	er1
.L685:
	mov.l	er2,er2
	bne	.L686
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er0
	beq	.L691
	sub.l	er3,er3
	bra	.L689
.L690:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.l	er0,er2
	shlr.l	er1
	add.l	er2,er3
	shll.l	er0
.L689:
	mov.l	er1,er1
	bne	.L690
	mov.l	er3,er0
	rts
.L691:
	sub.l	er0,er0
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er4,@-er7
	mov.w	#33,r4
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L693
.L695:
	shll.l	er1
	shll.l	er3
.L693:
	cmp.l	er0,er1
	bhs	.L700
	dec #1,r4
	beq	.L701
	mov.l	er1,er1
	bpl	.L695
	sub.l	er4,er4
	bra	.L696
.L700:
	sub.l	er4,er4
	bra	.L696
.L701:
	sub.l	er4,er4
	bra	.L696
.L698:
	cmp.l	er1,er0
	blo	.L697
	sub.l	er1,er0
	or.l	er3,er4
.L697:
	shlr.l	er3
	shlr.l	er1
.L696:
	mov.l	er3,er3
	bne	.L698
	mov.w	r2,r2
	bne	.L699
	mov.l	er4,er0
.L699:
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
	bmi	.L706
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L705
	sub.w	r6,r6
.L705:
	mov.w	r6,r0
	bra	.L704
.L706:
	mov.w	#-1,r0
.L704:
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
	bmi	.L710
	mov.w	#1,r6
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L709
	sub.w	r6,r6
.L709:
	mov.w	r6,r0
	bra	.L708
.L710:
	mov.w	#-1,r0
.L708:
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
	bpl	.L719
	neg.w	r1
	mov.w	#1,r5
	bra	.L714
.L719:
	sub.w	r5,r5
.L714:
	mov.b	#17,r4l
	sub.w	r0,r0
	bra	.L715
.L717:
	mov.l	er1,er2
	and.l	#1,er2
	neg.l	er2
	and.w	r3,r2
	shar.w	r1
	add.w	r2,r0
	shll.w	r3
.L715:
	mov.w	r1,r1
	beq	.L716
	add.b	#-1,r4l
	bne	.L717
.L716:
	mov.w	r5,r5
	beq	.L718
	neg.w	r0
.L718:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L726
	neg.l	er0
	mov.w	#1,r4
	bra	.L722
.L726:
	sub.w	r4,r4
.L722:
	mov.l	er1,er1
	bpl	.L723
	neg.l	er1
	mov.b	#1,r2l
	mov.w	r4,r4
	beq	.L724
	sub.b	r2l,r2l
.L724:
	mov.b	r2l,r4l
	extu.w	r4
.L723:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L725
	neg.l	er0
.L725:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er1,er2
	mov.l	er0,er0
	bpl	.L731
	neg.l	er0
	mov.w	#1,r4
	bra	.L728
.L731:
	sub.w	r4,r4
.L728:
	mov.l	er2,er1
	bpl	.L729
	neg.l	er2
	mov.l	er2,er1
.L729:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L730
	neg.l	er0
.L730:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	#17,r4
	mov.w	#1,r3
	bra	.L733
.L735:
	shll.w	r1
	shll.w	r3
.L733:
	cmp.w	r0,r1
	bhs	.L740
	dec #1,r4
	beq	.L741
	mov.w	r1,r1
	bpl	.L735
	sub.w	r4,r4
	bra	.L736
.L740:
	sub.w	r4,r4
	bra	.L736
.L741:
	sub.w	r4,r4
	bra	.L736
.L738:
	cmp.w	r1,r0
	blo	.L737
	sub.w	r1,r0
	or.w	r3,r4
.L737:
	shlr.w	r3
	shlr.w	r1
.L736:
	mov.w	r3,r3
	bne	.L738
	mov.w	r2,r2
	bne	.L739
	mov.w	r4,r0
.L739:
	mov.l	@er7+,er4
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er4,@-er7
	mov.w	#33,r4
	sub.l	er3,er3
	add.b	#1,r3l
	bra	.L744
.L746:
	shll.l	er1
	shll.l	er3
.L744:
	cmp.l	er0,er1
	bhs	.L751
	dec #1,r4
	beq	.L752
	mov.l	er1,er1
	bpl	.L746
	sub.l	er4,er4
	bra	.L747
.L751:
	sub.l	er4,er4
	bra	.L747
.L752:
	sub.l	er4,er4
	bra	.L747
.L749:
	cmp.l	er1,er0
	blo	.L748
	sub.l	er1,er0
	or.l	er3,er4
.L748:
	shlr.l	er3
	shlr.l	er1
.L747:
	mov.l	er3,er3
	bne	.L749
	mov.w	r2,r2
	bne	.L750
	mov.l	er4,er0
.L750:
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
	beq	.L755
	sub.l	er3,er3
	mov.l	er3,@(4,er7)
	add.w	#-32,r2
	mov.l	er1,er3
	mov.b	r2l,r2l
	ble	.L760
.L759:
	shll.l	er3
	add.b	#-1,r2l
	bne	.L759
.L760:
	mov.l	er3,@er7
	bra	.L756
.L755:
	mov.w	r2,r2
	beq	.L758
	mov.l	@(12,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L762
.L761:
	shll.l	er0
	add.b	#-1,r1l
	bne	.L761
.L762:
	mov.l	er0,@(4,er7)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L764
.L763:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L763
.L764:
	mov.l	@(8,er7),er0
	mov.b	r2l,r2l
	ble	.L766
.L765:
	shll.l	er0
	add.b	#-1,r2l
	bne	.L765
.L766:
	or.l	er0,er3
	mov.l	er3,@er7
.L756:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L757
.L758:
	mov.l	er0,er2
	mov.l	er1,er3
.L757:
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
	beq	.L768
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@er7
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L773
.L772:
	shar.l	er3
	add.b	#-1,r2l
	bne	.L772
.L773:
	mov.l	er3,@(4,er7)
	bra	.L769
.L768:
	mov.w	r2,r2
	beq	.L771
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L775
.L774:
	shar.l	er0
	add.b	#-1,r1l
	bne	.L774
.L775:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L777
.L776:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L776
.L777:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L779
.L778:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L778
.L779:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L769:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L770
.L771:
	mov.l	er0,er2
	mov.l	er1,er3
.L770:
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
	bls	.L815
	sub.l	er3,er3
.L815:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.w	#16,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L820
.L819:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L819
.L820:
	mov.l	er2,er0
	and	#0,r0l
	sub.w	e0,e0
	mov.l	er0,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L816
	sub.l	er0,er0
.L816:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.w	#8,r4
	sub.w	r0,r4
	mov.b	r4l,r4l
	ble	.L822
.L821:
	shlr.l	er2
	add.b	#-1,r4l
	bne	.L821
.L822:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#240,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L817
	sub.l	er0,er0
.L817:
	shll.l	er0
	shll.l	er0
	mov.w	#4,r4
	sub.w	r0,r4
	mov.b	r4l,r4l
	ble	.L824
.L823:
	shlr.l	er2
	add.b	#-1,r4l
	bne	.L823
.L824:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#12,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L818
	sub.l	er0,er0
.L818:
	shll.l	er0
	mov.w	#2,r1
	sub.w	r0,r1
	mov.b	r1l,r1l
	ble	.L826
.L825:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L825
.L826:
	mov.l	er2,er4
	shlr.l	er2
	and.w	#1,r2
	xor	#1,r2l
	sub.l	er1,er1
	add.b	#2,r1l
	sub.l	er4,er1
	mulxu.w	r1,er2
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
	blt	.L829
	cmp.l	er2,er4
	bgt	.L830
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L831
	bhi	.L832
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L828
.L829:
	sub.l	er0,er0
	bra	.L828
.L830:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L828
.L831:
	sub.l	er0,er0
	bra	.L828
.L832:
	sub.l	er0,er0
	add.b	#2,r0l
.L828:
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
	beq	.L835
	sub.l	er3,er3
.L835:
	shll.l	er3
	shll.l	er3
	shll.l	er3
	shll.l	er3
	mov.b	r3l,r0l
	ble	.L840
.L839:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L839
.L840:
	sub.l	er0,er0
	add.b	#1,r0l
	mov.b	r2l,r2l
	beq	.L836
	sub.l	er0,er0
.L836:
	shll.l	er0
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L842
.L841:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L841
.L842:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#15,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L837
	sub.l	er0,er0
.L837:
	shll.l	er0
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L844
.L843:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L843
.L844:
	mov.l	er2,er1
	add.l	er0,er3
	and.l	#3,er1
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	er1,er1
	beq	.L838
	sub.l	er0,er0
.L838:
	shll.l	er0
	mov.b	r0l,r1l
	ble	.L846
.L845:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L845
.L846:
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
	beq	.L848
	sub.l	er3,er3
	mov.l	er3,@er7
	add.w	#-32,r2
	mov.l	er0,er3
	mov.b	r2l,r2l
	ble	.L853
.L852:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L852
.L853:
	mov.l	er3,@(4,er7)
	bra	.L849
.L848:
	mov.w	r2,r2
	beq	.L851
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L855
.L854:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L854
.L855:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L857
.L856:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L856
.L857:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L859
.L858:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L858
.L859:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L849:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L850
.L851:
	mov.l	er0,er2
	mov.l	er1,er3
.L850:
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
	bne	.L863
	sub.l	er6,er6
.L863:
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
	ble	.L866
.L865:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L865
.L866:
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
	ble	.L869
.L868:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L868
.L869:
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
	bhi	.L871
	sub.l	er0,er0
.L871:
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
.L879:
	btst	#0,r5l
	beq	.L876
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L876:
	mov.w	r5,r2
	bpl	.L877
	inc #1,r2
.L877:
	shar.w	r2
	mov.w	r2,r5
	beq	.L878
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L879
.L878:
	mov.w	@(2,er7),r2
	beq	.L881
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L880
.L881:
	mov.l	er6,er0
.L880:
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
.L886:
	btst	#0,r5l
	beq	.L883
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L883:
	mov.w	r5,r2
	bpl	.L884
	inc #1,r2
.L884:
	shar.w	r2
	mov.w	r2,r5
	beq	.L885
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L886
.L885:
	mov.w	@(2,er7),r2
	beq	.L888
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L887
.L888:
	mov.l	er6,er0
.L887:
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
	blo	.L891
	cmp.l	er2,er4
	bhi	.L892
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L893
	bhi	.L894
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L890
.L891:
	sub.l	er0,er0
	bra	.L890
.L892:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L890
.L893:
	sub.l	er0,er0
	bra	.L890
.L894:
	sub.l	er0,er0
	add.b	#2,r0l
.L890:
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
