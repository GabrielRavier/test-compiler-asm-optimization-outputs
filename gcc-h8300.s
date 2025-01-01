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
	beq	.L75
	cmp.w	#9,r0
	bne	.L76
	mov.w	#1,r0
	rts
.L75:
	mov.w	#1,r0
	rts
.L76:
	sub.w	r0,r0
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	cmp.w	#31,r0
	bls	.L79
	cmp.w	#127,r0
	bne	.L80
	mov.w	#1,r0
	rts
.L79:
	mov.w	#1,r0
	rts
.L80:
	sub.w	r0,r0
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
	beq	.L95
	add.w	#-9,r0
	cmp.w	#4,r0
	bhi	.L96
	mov.w	#1,r0
	rts
.L95:
	mov.w	#1,r0
	rts
.L96:
	sub.w	r0,r0
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
	bls	.L102
	mov.w	r0,r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L103
	add.w	#-8105,r2
	cmp.w	#1,r2
	bls	.L104
	add.w	#7,r0
	cmp.w	#2,r0
	bhi	.L105
	mov.w	#1,r0
	rts
.L102:
	mov.w	#1,r0
	rts
.L103:
	mov.w	#1,r0
	rts
.L104:
	mov.w	#1,r0
	rts
.L105:
	sub.w	r0,r0
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
	bls	.L113
	mov.w	r0,r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L114
	add.w	#16426,r2
	cmp.w	#8184,r2
	bls	.L115
	and	#254,r0l
	cmp.w	#-2,r0
	beq	.L116
	mov.w	#1,r0
	rts
.L113:
	mov.w	#1,r0
	rts
.L114:
	mov.w	#1,r0
	rts
.L115:
	mov.w	#1,r0
	rts
.L116:
	sub.w	r0,r0
.L117:
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.w	r0,r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L121
	or	#32,r0l
	add.w	#-97,r0
	cmp.w	#5,r0
	bhi	.L122
	mov.w	#1,r0
	rts
.L121:
	mov.w	#1,r0
	rts
.L122:
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
	bne	.L127
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L128
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L131
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L125
.L127:
	mov.l	er4,er0
	bra	.L125
.L128:
	mov.l	er5,er0
	bra	.L125
.L131:
	sub.l	er0,er0
.L125:
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
	bne	.L135
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L136
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L139
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___subsf3
	bra	.L133
.L135:
	mov.l	er4,er0
	bra	.L133
.L136:
	mov.l	er5,er0
	bra	.L133
.L139:
	sub.l	er0,er0
.L133:
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
	bne	.L144
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L145
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
	beq	.L142
	mov.l	er4,er4
	bpl	.L146
	mov.l	er5,er0
	bra	.L141
.L142:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L149
	mov.l	er5,er0
	bra	.L141
.L144:
	mov.l	er5,er0
	bra	.L141
.L145:
	mov.l	er4,er0
	bra	.L141
.L146:
	mov.l	er4,er0
	bra	.L141
.L149:
	mov.l	er4,er0
.L141:
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
	bne	.L154
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L155
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
	beq	.L152
	mov.l	er4,er4
	bpl	.L156
	mov.l	er5,er0
	bra	.L151
.L152:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L159
	mov.l	er5,er0
	bra	.L151
.L154:
	mov.l	er5,er0
	bra	.L151
.L155:
	mov.l	er4,er0
	bra	.L151
.L156:
	mov.l	er4,er0
	bra	.L151
.L159:
	mov.l	er4,er0
.L151:
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
	beq	.L162
	mov.l	er4,er4
	bpl	.L166
	mov.l	er5,er0
	bra	.L161
.L162:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L169
	mov.l	er5,er0
	bra	.L161
.L164:
	mov.l	er5,er0
	bra	.L161
.L165:
	mov.l	er4,er0
	bra	.L161
.L166:
	mov.l	er4,er0
	bra	.L161
.L169:
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
	bne	.L174
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L175
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
	beq	.L172
	mov.l	er5,er5
	bpl	.L176
	mov.l	er5,er0
	bra	.L171
.L172:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L179
	mov.l	er5,er0
	bra	.L171
.L174:
	mov.l	er4,er0
	bra	.L171
.L175:
	mov.l	er5,er0
	bra	.L171
.L176:
	mov.l	er4,er0
	bra	.L171
.L179:
	mov.l	er4,er0
.L171:
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
	beq	.L182
	mov.l	er5,er5
	bpl	.L186
	mov.l	er5,er0
	bra	.L181
.L182:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L189
	mov.l	er5,er0
	bra	.L181
.L184:
	mov.l	er4,er0
	bra	.L181
.L185:
	mov.l	er5,er0
	bra	.L181
.L186:
	mov.l	er4,er0
	bra	.L181
.L189:
	mov.l	er4,er0
.L181:
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
	bne	.L194
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___unordsf2
	mov.l	er0,er0
	bne	.L195
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
	beq	.L192
	mov.l	er5,er5
	bpl	.L196
	mov.l	er5,er0
	bra	.L191
.L192:
	mov.l	er4,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L199
	mov.l	er5,er0
	bra	.L191
.L194:
	mov.l	er4,er0
	bra	.L191
.L195:
	mov.l	er5,er0
	bra	.L191
.L196:
	mov.l	er4,er0
	bra	.L191
.L199:
	mov.l	er4,er0
.L191:
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
	bra	.L201
.L202:
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
.L201:
	mov.l	er0,er0
	bne	.L202
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
	blo	.L205
	sub.l	er6,er6
.L205:
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
	bne	.L207
	sub.l	er2,er2
	mov.l	er2,@(4,er0)
	mov.l	er2,@er0
	rts
.L207:
	mov.l	@er1,er2
	mov.l	er2,@er0
	mov.l	er1,@(4,er0)
	mov.l	er0,@er1
	mov.l	@er0,er2
	beq	.L209
	mov.l	er0,@(4,er2)
.L209:
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	@er0,er2
	beq	.L212
	mov.l	@(4,er0),er3
	mov.l	er3,@(4,er2)
.L212:
	mov.l	@(4,er0),er2
	beq	.L214
	mov.l	@er0,er3
	mov.l	er3,@er2
.L214:
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
	bra	.L216
.L219:
	mov.l	er5,er1
	mov.l	@(4,er7),er0
	jsr	@er6
	mov.l	@(32,er7),er2
	add.l	er2,er5
	mov.w	r0,r0
	bne	.L217
	mov.l	er2,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(8,er7),er2
	add.l	er2,er0
	bra	.L218
.L217:
	adds	#1,er4
.L216:
	mov.l	@er7,er2
	cmp.l	er2,er4
	bne	.L219
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
.L218:
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
	bra	.L221
.L224:
	mov.l	er5,er1
	mov.l	@er7,er0
	mov.l	@(28,er7),er2
	jsr	@er2
	mov.l	@(24,er7),er2
	add.l	er2,er5
	mov.w	r0,r0
	bne	.L222
	mov.l	er2,er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	@(4,er7),er2
	add.l	er2,er0
	bra	.L223
.L222:
	adds	#1,er4
.L221:
	cmp.l	er6,er4
	bne	.L224
	sub.l	er0,er0
.L223:
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
	bpl	.L227
	neg.w	r0
.L227:
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er5
	bra	.L229
.L230:
	adds	#1,er5
.L229:
	mov.b	@er5,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L230
	mov.b	@er5,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L236
	cmp.w	#45,r2
	bne	.L237
	mov.w	#1,r4
	bra	.L231
.L236:
	sub.w	r4,r4
.L231:
	adds	#1,er5
	bra	.L232
.L237:
	sub.w	r4,r4
.L232:
	mov.l	er5,er2
	sub.w	r0,r0
	mov.w	#10,r1
	bra	.L233
.L234:
	mulxs.w	r1,er0
	mov.b	@er2+,r3l
	extu.w	r3
	add.w	#-48,r3
	sub.w	r3,r0
.L233:
	mov.b	@er2,r3l
	extu.w	r3
	add.w	#-48,r3
	cmp.w	#9,r3
	bls	.L234
	mov.w	r4,r4
	bne	.L235
	neg.w	r0
.L235:
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
	bra	.L240
.L241:
	adds	#1,er4
.L240:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L241
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L247
	cmp.w	#45,r2
	bne	.L248
	mov.w	#1,r6
	bra	.L242
.L247:
	sub.w	r6,r6
.L242:
	adds	#1,er4
	bra	.L243
.L248:
	sub.w	r6,r6
.L243:
	sub.l	er0,er0
	sub.l	er5,er5
	add.b	#10,r5l
	bra	.L244
.L245:
	mov.l	er5,er1
	jsr	@___mulsi3
	mov.b	@er4+,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	sub.l	er2,er0
.L244:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L245
	mov.w	r6,r6
	bne	.L246
	neg.l	er0
.L246:
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
	bra	.L251
.L252:
	adds	#1,er4
.L251:
	mov.b	@er4,r0l
	extu.w	r0
	jsr	@_isspace
	mov.w	r0,r0
	bne	.L252
	mov.b	@er4,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L260
	cmp.w	#45,r2
	bne	.L261
	mov.w	#1,r2
	mov.w	r2,@(18,er7)
	bra	.L253
.L260:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L253:
	adds	#1,er4
	bra	.L254
.L261:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
.L254:
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er2,@(4,er7)
	bra	.L255
.L257:
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
	bhi	.L256
	sub.l	er5,er5
.L256:
	mov.l	@(8,er7),er1
	sub.l	er1,er0
	sub.l	er5,er0
	mov.l	er0,@er7
	mov.l	er3,@(4,er7)
	adds	#1,er4
.L255:
	mov.b	@er4,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L257:16
	mov.w	@(18,er7),r2
	bne	.L262
	sub.l	er2,er2
	mov.l	@(4,er7),er4
	neg.l	er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er1,er1
	bne	.L259
	sub.l	er4,er4
.L259:
	mov.l	@er7,er3
	sub.l	er3,er2
	mov.l	er2,er5
	sub.l	er4,er5
	mov.l	er5,er2
	mov.l	er1,er3
	bra	.L258
.L262:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
.L258:
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
	bra	.L264
.L268:
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
	bpl	.L265
	shlr.l	er4
	bra	.L264
.L265:
	ble	.L269
	mov.l	@(20,er7),er6
	add.l	er5,er6
	mov.l	er4,er2
	shlr.l	er2
	subs	#1,er4
	sub.l	er2,er4
.L264:
	mov.l	er4,er4
	bne	.L268
	sub.l	er0,er0
	bra	.L267
.L269:
	mov.l	er5,er0
.L267:
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
	bra	.L271
.L274:
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
	beq	.L275
	ble	.L273
	mov.l	@(20,er7),er6
	add.l	er5,er6
	dec #1,r4
.L273:
	shar.w	r4
.L271:
	mov.w	r4,r4
	bne	.L274
	sub.l	er0,er0
	bra	.L272
.L275:
	mov.l	er5,er0
.L272:
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
	bpl	.L278
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L280
	sub.l	er6,er6
.L280:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L278:
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
	bpl	.L284
	neg.l	er0
.L284:
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
	bpl	.L287
	sub.l	er0,er0
	mov.l	er1,er6
	neg.l	er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er3,er3
	bne	.L289
	sub.l	er6,er6
.L289:
	sub.l	er4,er0
	sub.l	er6,er0
	mov.l	er0,er4
	mov.l	er3,er5
.L287:
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
	bra	.L292
.L294:
	adds	#2,er0
.L292:
	mov.w	@er0,r2
	beq	.L293
	cmp.w	r2,r1
	bne	.L294
.L293:
	mov.w	@er0,r2
	bne	.L297
	sub.l	er0,er0
.L297:
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	bra	.L299
.L301:
	adds	#2,er0
	adds	#2,er1
.L299:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	bne	.L300
	mov.w	r2,r2
	beq	.L300
	mov.w	r3,r2
	bne	.L301
.L300:
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L304
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L303
	sub.w	r2,r2
.L303:
	mov.w	r2,r0
	rts
.L304:
	mov.w	#-1,r0
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er0,er2
.L306:
	mov.w	@er1+,r3
	mov.w	r3,@er2
	adds	#2,er2
	mov.w	r3,r3
	bne	.L306
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.l	er0,er2
	bra	.L309
.L310:
	adds	#2,er2
.L309:
	mov.w	@er2,r3
	bne	.L310
	sub.l	er0,er2
	shar.l	er2
	mov.l	er2,er0
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er4,@-er7
	bra	.L312
.L314:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
.L312:
	mov.l	er2,er2
	beq	.L313
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	bne	.L313
	mov.w	r3,r3
	beq	.L313
	mov.w	r4,r3
	bne	.L314
.L313:
	mov.l	er2,er2
	beq	.L317
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L318
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L316
	sub.w	r2,r2
.L316:
	mov.w	r2,r0
	bra	.L315
.L317:
	sub.w	r0,r0
	bra	.L315
.L318:
	mov.w	#-1,r0
.L315:
	mov.l	@er7+,er4
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	bra	.L320
.L322:
	subs	#1,er2
	adds	#2,er0
.L320:
	mov.l	er2,er2
	beq	.L321
	mov.w	@er0,r3
	cmp.w	r3,r1
	bne	.L322
.L321:
	mov.l	er2,er2
	bne	.L325
	sub.l	er0,er0
.L325:
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er4,@-er7
	bra	.L327
.L329:
	subs	#1,er2
	adds	#2,er0
	adds	#2,er1
.L327:
	mov.l	er2,er2
	beq	.L328
	mov.w	@er0,r3
	mov.w	@er1,r4
	cmp.w	r4,r3
	beq	.L329
.L328:
	mov.l	er2,er2
	beq	.L332
	mov.w	@er0,r2
	mov.w	@er1,r3
	cmp.w	r3,r2
	blo	.L333
	mov.w	#1,r2
	mov.w	@er0,r0
	cmp.w	r3,r0
	bhi	.L331
	sub.w	r2,r2
.L331:
	mov.w	r2,r0
	bra	.L330
.L332:
	sub.w	r0,r0
	bra	.L330
.L333:
	mov.w	#-1,r0
.L330:
	mov.l	@er7+,er4
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er4,@-er7
	mov.l	er0,er3
	bra	.L335
.L336:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L335:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L336
	mov.l	@er7+,er4
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er4,@-er7
	cmp.l	er1,er0
	beq	.L338
	mov.l	er2,er4
	shll.l	er4
	mov.l	er0,er3
	sub.l	er1,er3
	cmp.l	er4,er3
	blo	.L339
	mov.l	er0,er3
	bra	.L340
.L339:
	shll.l	er2
	add.l	er2,er1
	add.l	er0,er2
	mov.l	er0,er4
	subs	#2,er4
	bra	.L341
.L342:
	mov.w	@er1,r3
	mov.w	r3,@er2
.L341:
	subs	#2,er1
	subs	#2,er2
	cmp.l	er4,er2
	bne	.L342
	bra	.L338
.L343:
	mov.w	@er1+,r4
	mov.w	r4,@er3
	adds	#2,er3
.L340:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L343
.L338:
	mov.l	@er7+,er4
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er0,er3
	bra	.L345
.L346:
	mov.w	r1,@er3
	adds	#2,er3
.L345:
	subs	#1,er2
	cmp.l	#-1,er2
	bne	.L346
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	cmp.l	er1,er0
	bhs	.L348
	mov.l	er0,er3
	add.l	er2,er3
	add.l	er1,er2
	bra	.L349
.L350:
	subs	#1,er3
	mov.b	@er3,r1l
	subs	#1,er2
	mov.b	r1l,@er2
.L349:
	cmp.l	er0,er3
	bne	.L350
	rts
.L348:
	beq	.L354
	mov.l	er1,er3
	add.l	er2,er1
	bra	.L352
.L353:
	mov.b	@er0+,r2l
	mov.b	r2l,@er3
	adds	#1,er3
.L352:
	cmp.l	er1,er3
	bne	.L353
.L354:
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
	bmi	.L357
	sub.l	er5,er5
	mov.l	er1,er4
	mov.b	r3l,r3l
	ble	.L362
.L361:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L361
.L362:
	bra	.L358
.L357:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@(4,er7),er3
	shlr.l	er3
	mov.b	r0l,r0l
	ble	.L364
.L363:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L363
.L364:
	mov.l	@er7,er4
	mov.b	r2l,r0l
	ble	.L366
.L365:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L365
.L366:
	or.l	er3,er4
	mov.l	@(4,er7),er5
	mov.b	r2l,r3l
	ble	.L368
.L367:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L367
.L368:
.L358:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L359
	sub.l	er0,er0
	mov.l	@er7,er1
	mov.b	r3l,r3l
	ble	.L370
.L369:
	shlr.l	er1
	add.b	#-1,r3l
	bne	.L369
.L370:
	bra	.L360
.L359:
	mov.l	@er7,er3
	shll.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L372
.L371:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L371
.L372:
	mov.l	@(4,er7),er1
	mov.b	r2l,r6l
	ble	.L374
.L373:
	shlr.l	er1
	add.b	#-1,r6l
	bne	.L373
.L374:
	or.l	er3,er1
	mov.l	@er7,er0
	mov.b	r2l,r2l
	ble	.L376
.L375:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L375
.L376:
.L360:
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
	bmi	.L378
	sub.l	er4,er4
	mov.l	er0,er5
	mov.b	r3l,r3l
	ble	.L383
.L382:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L382
.L383:
	bra	.L379
.L378:
	mov.w	#31,r0
	sub.w	r2,r0
	mov.l	@er7,er3
	shll.l	er3
	mov.b	r0l,r0l
	ble	.L385
.L384:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L384
.L385:
	mov.l	@(4,er7),er5
	mov.b	r2l,r0l
	ble	.L387
.L386:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L386
.L387:
	or.l	er3,er5
	mov.l	@er7,er4
	mov.b	r2l,r3l
	ble	.L389
.L388:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L388
.L389:
.L379:
	mov.w	r2,r3
	neg.w	r3
	and.w	#63,r3
	add.w	#-32,r3
	bmi	.L380
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	mov.b	r3l,r3l
	ble	.L391
.L390:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L390
.L391:
	bra	.L381
.L380:
	mov.l	@(4,er7),er3
	shlr.l	er3
	neg.w	r2
	and.w	#63,r2
	mov.w	#31,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L393
.L392:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L392
.L393:
	mov.l	@er7,er0
	mov.b	r2l,r6l
	ble	.L395
.L394:
	shll.l	er0
	add.b	#-1,r6l
	bne	.L394
.L395:
	or.l	er3,er0
	mov.l	@(4,er7),er1
	mov.b	r2l,r2l
	ble	.L397
.L396:
	shll.l	er1
	add.b	#-1,r2l
	bne	.L396
.L397:
.L381:
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
	ble	.L402
.L399:
	rotl.l	er0
	add.b	#-1,r1l
	bne	.L399
.L402:
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.w	#32,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L407
.L404:
	rotl.l	er0
	add.b	#-1,r2l
	bne	.L404
.L407:
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
	ble	.L410
.L409:
	shlr.l	er0
	add.b	#-1,r3l
	bne	.L409
.L410:
	mov.b	r1l,r1l
	ble	.L412
.L411:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L411
.L412:
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
	ble	.L415
.L414:
	shll.l	er0
	add.b	#-1,r3l
	bne	.L414
.L415:
	mov.b	r1l,r1l
	ble	.L417
.L416:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L416
.L417:
	or.l	er2,er0
	mov.l	@er7+,er4
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.b	r1l,r1l
	ble	.L422
.L419:
	rotl.w	r0
	add.b	#-1,r1l
	bne	.L419
.L422:
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.w	#16,r2
	sub.w	r1,r2
	mov.b	r2l,r2l
	ble	.L427
.L424:
	rotl.w	r0
	add.b	#-1,r2l
	bne	.L424
.L427:
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
	ble	.L430
.L429:
	shlr.w	r0
	add.b	#-1,r3l
	bne	.L429
.L430:
	mov.b	r1l,r1l
	ble	.L432
.L431:
	shll.w	r2
	add.b	#-1,r1l
	bne	.L431
.L432:
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
	ble	.L435
.L434:
	shll.w	r0
	add.b	#-1,r3l
	bne	.L434
.L435:
	mov.b	r1l,r1l
	ble	.L437
.L436:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L436
.L437:
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
	bra	.L474
.L477:
	mov.w	r0,r3
	mov.b	r2l,r1l
	ble	.L479
.L478:
	shlr.w	r3
	add.b	#-1,r1l
	bne	.L478
.L479:
	btst	#0,r3l
	beq	.L475
	inc #1,r2
	mov.w	r2,r0
	rts
.L475:
	inc #1,r2
.L474:
	cmp.w	#16,r2
	bne	.L477
	sub.w	r0,r0
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.w	r0,r0
	beq	.L484
	mov.w	#1,r2
	bra	.L482
.L483:
	shar.w	r0
	inc #1,r2
.L482:
	btst	#0,r0l
	beq	.L483
	mov.w	r2,r0
	rts
.L484:
	sub.w	r0,r0
	rts
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 1
	.global _gl_isinff
_gl_isinff:
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L488
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L491
	mov.w	#1,r0
	bra	.L486
.L488:
	mov.w	#1,r0
	bra	.L486
.L491:
	sub.w	r0,r0
.L486:
	mov.l	@er7+,er4
	rts
	.size	_gl_isinff, .-_gl_isinff
	.align 1
	.global _gl_isinfd
_gl_isinfd:
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L495
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L498
	mov.w	#1,r0
	bra	.L493
.L495:
	mov.w	#1,r0
	bra	.L493
.L498:
	sub.w	r0,r0
.L493:
	mov.l	@er7+,er4
	rts
	.size	_gl_isinfd, .-_gl_isinfd
	.align 1
	.global _gl_isinfl
_gl_isinfl:
	mov.l	er4,@-er7
	mov.l	er0,er4
	mov.l	#4286578687,er1
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L502
	mov.l	#2139095039,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L505
	mov.w	#1,r0
	bra	.L500
.L502:
	mov.w	#1,r0
	bra	.L500
.L505:
	sub.w	r0,r0
.L500:
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
	bne	.L508
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L508
	mov.w	r4,r4
	bpl	.L514
	mov.l	#1056964608,er5
	bra	.L513
.L514:
	mov.l	#1073741824,er5
.L513:
	btst	#0,r4l
	beq	.L511
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L511:
	mov.w	r4,r2
	bpl	.L512
	inc #1,r2
.L512:
	shar.w	r2
	mov.w	r2,r4
	beq	.L508
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L513
.L508:
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
	bne	.L517
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L517
	mov.w	r4,r4
	bpl	.L523
	mov.l	#1056964608,er5
	bra	.L522
.L523:
	mov.l	#1073741824,er5
.L522:
	btst	#0,r4l
	beq	.L520
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L520:
	mov.w	r4,r2
	bpl	.L521
	inc #1,r2
.L521:
	shar.w	r2
	mov.w	r2,r4
	beq	.L517
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L522
.L517:
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
	bne	.L526
	mov.l	er6,er1
	mov.l	er6,er0
	jsr	@___addsf3
	mov.l	er0,er1
	mov.l	er6,er0
	jsr	@___nesf2
	mov.l	er0,er0
	beq	.L526
	mov.w	r4,r4
	bpl	.L532
	mov.l	#1056964608,er5
	bra	.L531
.L532:
	mov.l	#1073741824,er5
.L531:
	btst	#0,r4l
	beq	.L529
	mov.l	er5,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L529:
	mov.w	r4,r2
	bpl	.L530
	inc #1,r2
.L530:
	shar.w	r2
	mov.w	r2,r4
	beq	.L526
	mov.l	er5,er1
	mov.l	er5,er0
	jsr	@___mulsf3
	mov.l	er0,er5
	bra	.L531
.L526:
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
	bra	.L535
.L536:
	mov.b	@er1+,r4l
	mov.b	@er3,r5l
	xor	r5l,r4l
	mov.b	r4l,@er3
	adds	#1,er3
.L535:
	cmp.l	er2,er3
	bne	.L536
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
	bra	.L538
.L540:
	adds	#1,er5
	adds	#1,er0
	subs	#1,er4
.L538:
	mov.l	er4,er4
	beq	.L539
	mov.b	@er5,r2l
	mov.b	r2l,@er0
	mov.b	r2l,r2l
	bne	.L540
.L539:
	mov.l	er4,er4
	bne	.L541
	sub.b	r2l,r2l
	mov.b	r2l,@er0
.L541:
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
	bra	.L543
.L545:
	adds	#1,er0
.L543:
	cmp.l	er1,er0
	beq	.L546
	mov.l	er2,er3
	add.l	er0,er3
	mov.b	@er3,r3l
	bne	.L545
.L546:
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er4,@-er7
	bra	.L548
.L550:
	mov.b	@er2+,r3l
	mov.b	@er0,r4l
	cmp.b	r4l,r3l
	beq	.L549
.L551:
	mov.b	@er2,r3l
	bne	.L550
	adds	#1,er0
.L548:
	mov.b	@er0,r2l
	beq	.L553
	mov.l	er1,er2
	bra	.L551
.L553:
	sub.l	er0,er0
.L549:
	mov.l	@er7+,er4
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er0,er2
	sub.l	er0,er0
.L556:
	mov.b	@er2,r3l
	extu.w	r3
	cmp.w	r3,r1
	bne	.L555
	mov.l	er2,er0
.L555:
	mov.b	@er2+,r3l
	mov.b	r3l,r3l
	bne	.L556
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
	beq	.L563
	mov.b	@er5,r2l
	extu.w	r2
	mov.w	r2,@(2,er7)
	bra	.L561
.L562:
	mov.l	er6,er2
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@_strncmp
	mov.w	r0,r0
	beq	.L564
	adds	#1,er4
.L561:
	mov.w	@(2,er7),r1
	mov.l	er4,er0
	jsr	@_strchr
	mov.l	er0,er4
	bne	.L562
	sub.l	er0,er0
	bra	.L560
.L563:
	mov.l	er4,er0
	bra	.L560
.L564:
	mov.l	er4,er0
.L560:
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
	bpl	.L566
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L568
.L566:
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	ble	.L576
	sub.l	er1,er1
	mov.l	er5,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L577
.L568:
	mov.l	er4,er0
	xor.w	#32768,e0
	bra	.L569
.L576:
	mov.l	er4,er0
	bra	.L569
.L577:
	mov.l	er4,er0
.L569:
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
	beq	.L579
	cmp.l	er2,er1
	blo	.L585
	subs	#1,er2
	mov.l	er2,@er7
	mov.l	er5,er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	bra	.L581
.L583:
	mov.b	@er4,r2l
	mov.b	@er5,r3l
	cmp.b	r3l,r2l
	bne	.L582
	mov.l	@er7,er2
	mov.l	@(4,er7),er1
	mov.l	er4,er0
	adds	#1,er0
	jsr	@_memcmp
	mov.w	r0,r0
	beq	.L586
.L582:
	adds	#1,er4
.L581:
	cmp.l	er6,er4
	bls	.L583
	sub.l	er0,er0
	bra	.L579
.L585:
	sub.l	er0,er0
	bra	.L579
.L586:
	mov.l	er4,er0
.L579:
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
	bpl	.L605
	xor.w	#32768,e4
	mov.w	#1,r2
	mov.w	r2,@(2,er7)
	bra	.L589
.L605:
	sub.w	r2,r2
	mov.w	r2,@(2,er7)
.L589:
	mov.l	#1065353216,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L600
	bra	.L606
.L593:
	inc #1,r6
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L591
.L600:
	sub.w	r6,r6
	mov.l	#1065353216,er5
.L591:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gesf2
	mov.l	er0,er0
	bpl	.L593
	bra	.L594
.L606:
	mov.l	#1056964608,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bpl	.L607
	sub.l	er1,er1
	mov.l	er4,er0
	jsr	@___nesf2
	mov.l	er0,er0
	bne	.L602
	sub.w	r6,r6
	bra	.L594
.L597:
	dec #1,r6
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___addsf3
	mov.l	er0,er4
	bra	.L596
.L602:
	sub.w	r6,r6
	mov.l	#1056964608,er5
.L596:
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L597
	bra	.L594
.L607:
	sub.w	r6,r6
.L594:
	mov.l	@(4,er7),er2
	mov.w	r6,@er2
	mov.w	@(2,er7),r2
	beq	.L598
	xor.w	#32768,e4
.L598:
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
	sub.l	#36,er7
	mov.l	@(52,er7),er2
	mov.l	er2,@(8,er7)
	mov.l	@(56,er7),er2
	mov.l	er2,@(12,er7)
	mov.l	er0,er2
	mov.l	er1,er3
	sub.l	er0,er0
	mov.l	er0,@(24,er7)
	mov.l	er0,@(28,er7)
	bra	.L609:16
.L614:
	sub.l	er0,er0
	mov.l	er0,@(16,er7)
	mov.l	er3,er0
	and.l	#1,er0
	mov.l	er0,@(20,er7)
	sub.l	er0,er0
	mov.l	@(20,er7),er1
	or.l	er1,er0
	beq	.L610
	mov.l	@(28,er7),er6
	mov.l	@(12,er7),er0
	add.l	er0,er6
	mov.l	er6,@(4,er7)
	mov.l	@(28,er7),er6
	mov.l	@(4,er7),er0
	cmp.l	er6,er0
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	er6,@(32,er7)
	mov.l	@(24,er7),er6
	mov.l	@(8,er7),er0
	add.l	er0,er6
	mov.l	er6,@er7
	mov.l	@(32,er7),er6
	mov.l	@er7,er0
	add.l	er0,er6
	mov.l	er6,@er7
	mov.l	er6,@(24,er7)
	mov.l	@(4,er7),er0
	mov.l	er0,@(28,er7)
.L610:
	mov.l	@(12,er7),er6
	shll.l	er6
	mov.l	er6,er1
	mov.l	@(12,er7),er6
	cmp.l	er6,er1
	xor.l	er6,er6
	bst	#0,r6l
	mov.l	er6,@(32,er7)
	mov.l	@(8,er7),er6
	shll.l	er6
	mov.l	er6,er0
	mov.l	@(32,er7),er6
	add.l	er0,er6
	mov.l	er6,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	er3,er0
	shlr.l	er0
	mov.l	er0,er5
	rotxl.l	er5
	bor	#0,r2l
	rotxr.l	er5
	shlr.l	er2
	mov.l	er5,er3
.L609:
	mov.l	er2,er0
	or.l	er3,er0
	bne	.L614:16
	mov.l	@(24,er7),er0
	mov.l	@(28,er7),er1
	add.l	#36,er7
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
	bra	.L616
.L618:
	shll.l	er1
	shll.l	er3
.L616:
	cmp.l	er0,er1
	bhs	.L623
	dec #1,r4
	beq	.L624
	mov.l	er1,er1
	bpl	.L618
	sub.l	er4,er4
	bra	.L619
.L623:
	sub.l	er4,er4
	bra	.L619
.L624:
	sub.l	er4,er4
	bra	.L619
.L621:
	cmp.l	er1,er0
	blo	.L620
	sub.l	er1,er0
	or.l	er3,er4
.L620:
	shlr.l	er3
	shlr.l	er1
.L619:
	mov.l	er3,er3
	bne	.L621
	mov.l	er2,er2
	bne	.L622
	mov.l	er4,er0
.L622:
	mov.l	@er7+,er4
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.b	r0l,r0l
	beq	.L628
	mov.b	r0l,r0h
	sub.b	r0l,r0l
	extu.l	er0
	jsr	@___clzsi2
	add.w	#-17,r0
	rts
.L628:
	mov.w	#7,r0
	rts
	.size	___clrsbqi2, .-___clrsbqi2
	.align 1
	.global ___clrsbdi2
___clrsbdi2:
	mov.l	er4,@-er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er0,er0
	bpl	.L630
	mov.l	er0,er4
	not.l	er4
	mov.l	er1,er2
	not.l	er2
	mov.l	er2,er1
	mov.l	er4,er2
	mov.l	er1,er3
.L630:
	mov.l	er2,er0
	or.l	er3,er0
	beq	.L634
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___clzdi2
	dec #1,r0
	bra	.L632
.L634:
	mov.w	#63,r0
.L632:
	mov.l	@er7+,er4
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.w	r0,r2
	sub.w	r0,r0
	bra	.L636
.L638:
	btst	#0,r2l
	beq	.L637
	add.w	r1,r0
.L637:
	shlr.w	r2
	shll.w	r1
.L636:
	mov.w	r2,r2
	bne	.L638
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
	bhs	.L640
.L642:
	mov.l	er6,er3
	mov.l	er5,er4
	extu.l	er0
	shll.l	er0
	shll.l	er0
	shll.l	er0
	add.l	er6,er0
	mov.l	er5,@(4,er7)
	mov.l	er0,er5
	bra	.L641
.L640:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er5
	bhi	.L642
	bra	.L643
.L644:
	mov.l	@er3,er0
	mov.l	@(4,er3),er1
	mov.l	er0,@er4
	mov.l	er1,@(4,er4)
	adds	#4,er3
	adds	#4,er3
	adds	#4,er4
	adds	#4,er4
.L641:
	cmp.l	er5,er3
	bne	.L644
	mov.l	@(4,er7),er5
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L645
.L646:
	mov.l	er6,er0
	add.l	er3,er0
	mov.b	@er0,r1l
	mov.l	er5,er0
	add.l	er3,er0
	mov.b	r1l,@er0
	adds	#1,er3
.L645:
	cmp.w	r3,r2
	bhi	.L646
	bra	.L639
.L648:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er6,er0
	add.l	er3,er0
	mov.b	@er0,r0l
	add.l	er5,er3
	mov.b	r0l,@er3
.L643:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L648
.L639:
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
	bhs	.L650
.L652:
	mov.l	er1,er3
	mov.l	er0,er4
	extu.l	er6
	shll.l	er6
	add.l	er1,er6
	bra	.L651
.L650:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L652
	bra	.L653
.L654:
	mov.w	@er3+,r5
	mov.w	r5,@er4
	adds	#2,er4
.L651:
	cmp.l	er6,er3
	bne	.L654
	btst	#0,r2l
	beq	.L649
	dec #1,r2
	extu.l	er2
	add.l	er2,er1
	mov.b	@er1,r3l
	add.l	er2,er0
	mov.b	r3l,@er0
	bra	.L649
.L656:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r4l
	add.l	er0,er3
	mov.b	r4l,@er3
.L653:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L656
.L649:
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
	bhs	.L658
.L660:
	mov.l	er1,er3
	mov.l	er0,er4
	extu.l	er5
	shll.l	er5
	add.l	er1,er5
	bra	.L659
.L658:
	mov.w	r2,r3
	extu.l	er3
	add.l	er1,er3
	cmp.l	er3,er0
	bhi	.L660
	bra	.L661
.L662:
	mov.w	@er3+,r6
	mov.w	r6,@er4
	adds	#2,er4
.L659:
	cmp.l	er5,er3
	bne	.L662
	mov.w	@(2,er7),r3
	extu.l	er3
	bra	.L663
.L664:
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r5l
	mov.l	er0,er4
	add.l	er3,er4
	mov.b	r5l,@er4
	adds	#1,er3
.L663:
	cmp.w	r3,r2
	bhi	.L664
	bra	.L657
.L666:
	mov.w	r2,r3
	extu.l	er3
	mov.l	er1,er4
	add.l	er3,er4
	mov.b	@er4,r4l
	add.l	er0,er3
	mov.b	r4l,@er3
.L661:
	dec #1,r2
	cmp.w	#-1,r2
	bne	.L666
.L657:
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
	bra	.L674
.L676:
	mov.w	r1,r2
	mov.b	r0l,r4l
	ble	.L678
.L677:
	shlr.w	r2
	add.b	#-1,r4l
	bne	.L677
.L678:
	and.w	r3,r2
	bne	.L675
	inc #1,r0
.L674:
	cmp.w	#16,r0
	bne	.L676
.L675:
	mov.l	@er7+,er4
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.w	r0,r3
	sub.w	r0,r0
	bra	.L680
.L682:
	mov.w	r3,r2
	mov.b	r0l,r1l
	ble	.L685
.L684:
	shlr.w	r2
	add.b	#-1,r1l
	bne	.L684
.L685:
	btst	#0,r2l
	bne	.L683
	inc #1,r0
.L680:
	cmp.w	#16,r0
	bne	.L682
.L683:
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
	bmi	.L691
	mov.l	#1191182336,er1
	mov.l	er4,er0
	jsr	@___subsf3
	jsr	@___fixsfsi
	add.l	#32768,er0
	bra	.L689
.L691:
	mov.l	er4,er0
	jsr	@___fixsfsi
.L689:
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
	bra	.L693
.L695:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L697
.L696:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L696
.L697:
	btst	#0,r3l
	beq	.L694
	inc #1,r0
.L694:
	inc #1,r2
.L693:
	cmp.w	#16,r2
	bne	.L695
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
	bra	.L699
.L701:
	mov.w	r1,r3
	mov.b	r2l,r4l
	ble	.L703
.L702:
	shlr.w	r3
	add.b	#-1,r4l
	bne	.L702
.L703:
	btst	#0,r3l
	beq	.L700
	inc #1,r0
.L700:
	inc #1,r2
.L699:
	cmp.w	#16,r2
	bne	.L701
	mov.l	@er7+,er4
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er0,er2
	sub.l	er0,er0
	bra	.L705
.L707:
	btst	#0,r2l
	beq	.L706
	add.l	er1,er0
.L706:
	shlr.l	er2
	shll.l	er1
.L705:
	mov.l	er2,er2
	bne	.L707
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er0,er0
	beq	.L713
	sub.l	er2,er2
	bra	.L710
.L712:
	btst	#0,r1l
	beq	.L711
	add.l	er0,er2
.L711:
	shll.l	er0
	shlr.l	er1
.L710:
	mov.l	er1,er1
	bne	.L712
	mov.l	er2,er0
	rts
.L713:
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
	bra	.L715
.L717:
	shll.l	er1
	shll.l	er3
.L715:
	cmp.l	er0,er1
	bhs	.L722
	dec #1,r4
	beq	.L723
	mov.l	er1,er1
	bpl	.L717
	sub.l	er4,er4
	bra	.L718
.L722:
	sub.l	er4,er4
	bra	.L718
.L723:
	sub.l	er4,er4
	bra	.L718
.L720:
	cmp.l	er1,er0
	blo	.L719
	sub.l	er1,er0
	or.l	er3,er4
.L719:
	shlr.l	er3
	shlr.l	er1
.L718:
	mov.l	er3,er3
	bne	.L720
	mov.w	r2,r2
	bne	.L721
	mov.l	er4,er0
.L721:
	mov.l	@er7+,er4
	rts
	.size	___udivmodsi4, .-___udivmodsi4
	.align 1
	.global ___mspabi_cmpf
___mspabi_cmpf:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L727
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L728
	sub.w	r0,r0
	bra	.L726
.L727:
	mov.w	#-1,r0
	bra	.L726
.L728:
	mov.w	#1,r0
.L726:
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 1
	.global ___mspabi_cmpd
___mspabi_cmpd:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er0,er4
	mov.l	er1,er5
	jsr	@___ltsf2
	mov.l	er0,er0
	bmi	.L731
	mov.l	er5,er1
	mov.l	er4,er0
	jsr	@___gtsf2
	mov.l	er0,er0
	bgt	.L732
	sub.w	r0,r0
	bra	.L730
.L731:
	mov.w	#-1,r0
	bra	.L730
.L732:
	mov.w	#1,r0
.L730:
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
	mov.w	r0,r3
	mov.w	r1,r1
	bpl	.L742
	neg.w	r1
	mov.w	#1,r4
	bra	.L736
.L742:
	sub.w	r4,r4
.L736:
	mov.b	#17,r2l
	sub.w	r0,r0
	bra	.L737
.L740:
	btst	#0,r1l
	beq	.L738
	add.w	r3,r0
.L738:
	shll.w	r3
	shar.w	r1
.L737:
	mov.w	r1,r1
	beq	.L739
	add.b	#-1,r2l
	bne	.L740
.L739:
	mov.w	r4,r4
	beq	.L741
	neg.w	r0
.L741:
	mov.l	@er7+,er4
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L749
	neg.l	er0
	mov.w	#1,r4
	bra	.L745
.L749:
	sub.w	r4,r4
.L745:
	mov.l	er1,er1
	bpl	.L746
	neg.l	er1
	mov.b	#1,r2l
	mov.w	r4,r4
	beq	.L747
	sub.b	r2l,r2l
.L747:
	mov.b	r2l,r4l
	extu.w	r4
.L746:
	sub.w	r2,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L748
	neg.l	er0
.L748:
	mov.l	@er7+,er4
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er4,@-er7
	mov.l	er0,er0
	bpl	.L754
	neg.l	er0
	mov.w	#1,r4
	bra	.L751
.L754:
	sub.w	r4,r4
.L751:
	mov.l	er1,er1
	bpl	.L752
	neg.l	er1
.L752:
	mov.w	#1,r2
	jsr	@___udivmodsi4
	mov.w	r4,r4
	beq	.L753
	neg.l	er0
.L753:
	mov.l	@er7+,er4
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er4,@-er7
	mov.w	#17,r4
	mov.w	#1,r3
	bra	.L756
.L758:
	shll.w	r1
	shll.w	r3
.L756:
	cmp.w	r0,r1
	bhs	.L763
	dec #1,r4
	beq	.L764
	mov.w	r1,r1
	bpl	.L758
	sub.w	r4,r4
	bra	.L759
.L763:
	sub.w	r4,r4
	bra	.L759
.L764:
	sub.w	r4,r4
	bra	.L759
.L761:
	cmp.w	r1,r0
	blo	.L760
	sub.w	r1,r0
	or.w	r3,r4
.L760:
	shlr.w	r3
	shlr.w	r1
.L759:
	mov.w	r3,r3
	bne	.L761
	mov.w	r2,r2
	bne	.L762
	mov.w	r4,r0
.L762:
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
	bra	.L767
.L769:
	shll.l	er1
	shll.l	er3
.L767:
	cmp.l	er0,er1
	bhs	.L774
	dec #1,r4
	beq	.L775
	mov.l	er1,er1
	bpl	.L769
	sub.l	er4,er4
	bra	.L770
.L774:
	sub.l	er4,er4
	bra	.L770
.L775:
	sub.l	er4,er4
	bra	.L770
.L772:
	cmp.l	er1,er0
	blo	.L771
	sub.l	er1,er0
	or.l	er3,er4
.L771:
	shlr.l	er3
	shlr.l	er1
.L770:
	mov.l	er3,er3
	bne	.L772
	mov.w	r2,r2
	bne	.L773
	mov.l	er4,er0
.L773:
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
	beq	.L778
	sub.l	er3,er3
	mov.l	er3,@(4,er7)
	add.w	#-32,r2
	mov.l	er1,er3
	mov.b	r2l,r2l
	ble	.L783
.L782:
	shll.l	er3
	add.b	#-1,r2l
	bne	.L782
.L783:
	mov.l	er3,@er7
	bra	.L779
.L778:
	mov.w	r2,r2
	beq	.L781
	mov.l	@(12,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L785
.L784:
	shll.l	er0
	add.b	#-1,r1l
	bne	.L784
.L785:
	mov.l	er0,@(4,er7)
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L787
.L786:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L786
.L787:
	mov.l	@(8,er7),er0
	mov.b	r2l,r2l
	ble	.L789
.L788:
	shll.l	er0
	add.b	#-1,r2l
	bne	.L788
.L789:
	or.l	er0,er3
	mov.l	er3,@er7
.L779:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L780
.L781:
	mov.l	er0,er2
	mov.l	er1,er3
.L780:
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
	beq	.L791
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,@er7
	add.w	#-32,r2
	mov.b	r2l,r2l
	ble	.L796
.L795:
	shar.l	er3
	add.b	#-1,r2l
	bne	.L795
.L796:
	mov.l	er3,@(4,er7)
	bra	.L792
.L791:
	mov.w	r2,r2
	beq	.L794
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L798
.L797:
	shar.l	er0
	add.b	#-1,r1l
	bne	.L797
.L798:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L800
.L799:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L799
.L800:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L802
.L801:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L801
.L802:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L792:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L793
.L794:
	mov.l	er0,er2
	mov.l	er1,er3
.L793:
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
	cmp.l	#65535,er0
	bhi	.L842
	sub.l	er3,er3
	add.b	#16,r3l
	bra	.L838
.L842:
	sub.l	er3,er3
.L838:
	mov.w	#16,r1
	sub.w	r3,r1
	mov.b	r1l,r1l
	ble	.L847
.L846:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L846
.L847:
	mov.l	er2,er0
	and.l	#65280,er0
	bne	.L843
	sub.l	er4,er4
	add.b	#8,r4l
	bra	.L839
.L843:
	sub.l	er4,er4
.L839:
	mov.w	#8,r1
	sub.w	r4,r1
	mov.b	r1l,r1l
	ble	.L849
.L848:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L848
.L849:
	mov.l	er2,er0
	add.l	er4,er3
	and.l	#240,er0
	bne	.L844
	sub.l	er4,er4
	add.b	#4,r4l
	bra	.L840
.L844:
	sub.l	er4,er4
.L840:
	mov.w	#4,r1
	sub.w	r4,r1
	mov.b	r1l,r1l
	ble	.L851
.L850:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L850
.L851:
	mov.l	er2,er0
	add.l	er4,er3
	and.l	#12,er0
	bne	.L845
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L841
.L845:
	sub.l	er0,er0
.L841:
	mov.w	#2,r1
	sub.w	r0,r1
	mov.b	r1l,r1l
	ble	.L853
.L852:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L852
.L853:
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
	blt	.L856
	cmp.l	er2,er4
	bgt	.L857
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L858
	bhi	.L859
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L855
.L856:
	sub.l	er0,er0
	bra	.L855
.L857:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L855
.L858:
	sub.l	er0,er0
	bra	.L855
.L859:
	sub.l	er0,er0
	add.b	#2,r0l
.L855:
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
	mov.w	r0,r0
	bne	.L866
	sub.l	er3,er3
	add.b	#16,r3l
	bra	.L862
.L866:
	sub.l	er3,er3
.L862:
	mov.b	r3l,r0l
	ble	.L871
.L870:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L870
.L871:
	mov.b	r2l,r2l
	bne	.L867
	sub.l	er1,er1
	add.b	#8,r1l
	bra	.L863
.L867:
	sub.l	er1,er1
.L863:
	mov.b	r1l,r0l
	ble	.L873
.L872:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L872
.L873:
	mov.l	er2,er0
	add.l	er1,er3
	and.l	#15,er0
	bne	.L868
	sub.l	er1,er1
	add.b	#4,r1l
	bra	.L864
.L868:
	sub.l	er1,er1
.L864:
	mov.b	r1l,r0l
	ble	.L875
.L874:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L874
.L875:
	mov.l	er2,er0
	add.l	er1,er3
	and.l	#3,er0
	bne	.L869
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L865
.L869:
	sub.l	er0,er0
.L865:
	mov.b	r0l,r1l
	ble	.L877
.L876:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L876
.L877:
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
	beq	.L879
	sub.l	er3,er3
	mov.l	er3,@er7
	add.w	#-32,r2
	mov.l	er0,er3
	mov.b	r2l,r2l
	ble	.L884
.L883:
	shlr.l	er3
	add.b	#-1,r2l
	bne	.L883
.L884:
	mov.l	er3,@(4,er7)
	bra	.L880
.L879:
	mov.w	r2,r2
	beq	.L882
	mov.l	@(8,er7),er3
	mov.l	er3,er0
	mov.b	r2l,r1l
	ble	.L886
.L885:
	shlr.l	er0
	add.b	#-1,r1l
	bne	.L885
.L886:
	mov.l	er0,@er7
	mov.w	#32,r0
	sub.w	r2,r0
	mov.b	r0l,r0l
	ble	.L888
.L887:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L887
.L888:
	mov.l	@(12,er7),er0
	mov.b	r2l,r2l
	ble	.L890
.L889:
	shlr.l	er0
	add.b	#-1,r2l
	bne	.L889
.L890:
	or.l	er0,er3
	mov.l	er3,@(4,er7)
.L880:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	bra	.L881
.L882:
	mov.l	er0,er2
	mov.l	er1,er3
.L881:
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
	bne	.L894
	sub.l	er6,er6
.L894:
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
	ble	.L897
.L896:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L896
.L897:
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
	ble	.L900
.L899:
	shar.w	r0
	add.b	#-1,r2l
	bne	.L899
.L900:
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
	bhi	.L902
	sub.l	er0,er0
.L902:
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
.L910:
	btst	#0,r5l
	beq	.L907
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L907:
	mov.w	r5,r2
	bpl	.L908
	inc #1,r2
.L908:
	shar.w	r2
	mov.w	r2,r5
	beq	.L909
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L910
.L909:
	mov.w	@(2,er7),r2
	beq	.L912
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L911
.L912:
	mov.l	er6,er0
.L911:
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
.L917:
	btst	#0,r5l
	beq	.L914
	mov.l	er4,er1
	mov.l	er6,er0
	jsr	@___mulsf3
	mov.l	er0,er6
.L914:
	mov.w	r5,r2
	bpl	.L915
	inc #1,r2
.L915:
	shar.w	r2
	mov.w	r2,r5
	beq	.L916
	mov.l	er4,er1
	mov.l	er4,er0
	jsr	@___mulsf3
	mov.l	er0,er4
	bra	.L917
.L916:
	mov.w	@(2,er7),r2
	beq	.L919
	mov.l	er6,er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	bra	.L918
.L919:
	mov.l	er6,er0
.L918:
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
	blo	.L922
	cmp.l	er2,er4
	bhi	.L923
	mov.l	@(4,er7),er3
	cmp.l	er3,er1
	blo	.L924
	bhi	.L925
	sub.l	er0,er0
	add.b	#1,r0l
	bra	.L921
.L922:
	sub.l	er0,er0
	bra	.L921
.L923:
	sub.l	er0,er0
	add.b	#2,r0l
	bra	.L921
.L924:
	sub.l	er0,er0
	bra	.L921
.L925:
	sub.l	er0,er0
	add.b	#2,r0l
.L921:
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
