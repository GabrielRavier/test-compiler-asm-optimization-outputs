	.file	"mini-libc.c"
	.h8300h
	.section .text
	.align 1
	.global _memmove
_memmove:
	sub.l	#24,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(4,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	bhs	.L2
	mov.l	@(4,er7),er3
	mov.l	@er7,er2
	add.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.l	@(8,er7),er3
	mov.l	@er7,er2
	add.l	er3,er2
	mov.l	er2,@(20,er7)
	bra	.L3
.L4:
	mov.l	@(12,er7),er2
	subs	#1,er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er2
	subs	#1,er2
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er2
	mov.b	@er2,r3l
	mov.l	@(20,er7),er2
	mov.b	r3l,@er2
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L3:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L4
	bra	.L5
.L2:
	mov.l	@(4,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	beq	.L5
	mov.l	@(8,er7),er2
	mov.l	er2,@(16,er7)
	bra	.L6
.L7:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	mov.l	@(16,er7),er2
	mov.l	er2,er0
	adds	#1,er0
	mov.l	er0,@(16,er7)
	mov.b	@er3,r3l
	mov.b	r3l,@er2
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L6:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L7
.L5:
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#24,er7
	rts
	.size	_memmove, .-_memmove
	.align 1
	.global _memccpy
_memccpy:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.w	r2,@(2,er7)
	mov.w	@(2,er7),r2
	extu.w	r2
	mov.w	r2,@(14,er7)
	bra	.L10
.L12:
	mov.l	@(20,er7),er2
	subs	#1,er2
	mov.l	er2,@(20,er7)
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
.L10:
	mov.l	@(20,er7),er2
	mov.l	er2,er2
	beq	.L11
	mov.l	@(4,er7),er2
	mov.b	@er2,r3l
	mov.l	@(8,er7),er2
	mov.b	r3l,@er2
	mov.l	@(8,er7),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(14,er7),r3
	cmp.w	r2,r3
	bne	.L12
.L11:
	mov.l	@(20,er7),er2
	mov.l	er2,er2
	beq	.L13
	mov.l	@(8,er7),er2
	adds	#1,er2
	bra	.L14
.L13:
	sub.l	er2,er2
.L14:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.w	r1,@(6,er7)
	mov.l	er2,@er7
	mov.w	@(6,er7),r2
	extu.w	r2
	mov.w	r2,@(14,er7)
	bra	.L16
.L18:
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L16:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L17
	mov.l	@(8,er7),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(14,er7),r3
	cmp.w	r2,r3
	bne	.L18
.L17:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L19
	mov.l	@(8,er7),er2
	bra	.L21
.L19:
	sub.l	er2,er2
.L21:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	sub.l	#12,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	bra	.L23
.L25:
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
.L23:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L24
	mov.l	@(8,er7),er2
	mov.b	@er2,r3l
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	beq	.L25
.L24:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L26
	mov.l	@(8,er7),er2
	mov.b	@er2,r0l
	extu.w	r0
	mov.l	@(4,er7),er2
	mov.b	@er2,r3l
	extu.w	r3
	mov.w	r0,r2
	sub.w	r3,r2
	bra	.L28
.L26:
	sub.w	r2,r2
.L28:
	mov.w	r2,r0
	add.l	#12,er7
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	mov.l	er2,@(12,er7)
	bra	.L30
.L31:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	mov.l	@(12,er7),er2
	mov.l	er2,er0
	adds	#1,er0
	mov.l	er0,@(12,er7)
	mov.b	@er3,r3l
	mov.b	r3l,@er2
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L30:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L31
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_memcpy, .-_memcpy
	.align 1
	.global _memrchr
_memrchr:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.w	r1,@(6,er7)
	mov.l	er2,@er7
	mov.w	@(6,er7),r2
	extu.w	r2
	mov.w	r2,@(14,er7)
	bra	.L34
.L36:
	mov.l	@(8,er7),er3
	mov.l	@er7,er2
	add.l	er3,er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(14,er7),r3
	cmp.w	r2,r3
	bne	.L34
	mov.l	@(8,er7),er3
	mov.l	@er7,er2
	add.l	er3,er2
	bra	.L35
.L34:
	mov.l	@er7,er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,er2
	bne	.L36
	sub.l	er2,er2
.L35:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.w	r1,@(6,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	mov.l	er2,@(12,er7)
	bra	.L38
.L39:
	mov.l	@(12,er7),er2
	mov.w	@(6,er7),r3
	mov.b	r3l,@er2
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
	mov.l	@(12,er7),er2
	adds	#1,er2
	mov.l	er2,@(12,er7)
.L38:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L39
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	bra	.L42
.L43:
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
.L42:
	mov.l	@er7,er2
	mov.b	@er2,r3l
	mov.l	@(4,er7),er2
	mov.b	r3l,@er2
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L43
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	@(2,er7),r2
	extu.w	r2
	mov.w	r2,@(10,er7)
	bra	.L46
.L48:
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
.L46:
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	beq	.L47
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(10,er7),r3
	cmp.w	r2,r3
	bne	.L48
.L47:
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
	subs	#4,er7
	mov.l	er0,er2
	mov.w	r1,@(2,er7)
.L53:
	mov.b	@er2,r3l
	extu.w	r3
	mov.w	@(2,er7),r0
	cmp.w	r3,r0
	beq	.L52
	mov.l	er2,er3
	mov.l	er3,er2
	adds	#1,er2
	mov.b	@er3,r3l
	mov.b	r3l,r3l
	bne	.L53
	sub.l	er2,er2
.L52:
	mov.l	er2,er0
	adds	#4,er7
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	bra	.L56
.L58:
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
.L56:
	mov.l	@(4,er7),er2
	mov.b	@er2,r3l
	mov.l	@er7,er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	bne	.L57
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L58
.L57:
	mov.l	@(4,er7),er2
	mov.b	@er2,r3l
	extu.w	r3
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	sub.w	r2,r3
	mov.w	r3,r0
	add.l	#8,er7
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	er2,@(4,er7)
	bra	.L61
.L62:
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
.L61:
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L62
	mov.l	@(4,er7),er3
	mov.l	@er7,er2
	sub.l	er2,er3
	mov.l	er3,er0
	add.l	#8,er7
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@er7,er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@(12,er7)
	mov.l	er2,er2
	bne	.L67
	sub.w	r2,r2
	bra	.L66:16
.L69:
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	mov.l	@(12,er7),er2
	subs	#1,er2
	mov.l	er2,@(12,er7)
.L67:
	mov.l	@(8,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	beq	.L68
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	beq	.L68
	mov.l	@(12,er7),er2
	mov.l	er2,er2
	beq	.L68
	mov.l	@(8,er7),er2
	mov.b	@er2,r3l
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	beq	.L69
.L68:
	mov.l	@(8,er7),er2
	mov.b	@er2,r0l
	extu.w	r0
	mov.l	@(4,er7),er2
	mov.b	@er2,r3l
	extu.w	r3
	mov.w	r0,r2
	sub.w	r3,r2
.L66:
	mov.w	r2,r0
	add.l	#16,er7
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	sub.l	#12,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	bra	.L71
.L72:
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.b	@er2,r3l
	mov.l	@(4,er7),er2
	mov.b	r3l,@er2
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
	mov.l	@(4,er7),er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
	mov.l	@(8,er7),er2
	adds	#2,er2
	mov.l	er2,@(8,er7)
	mov.l	@er7,er2
	subs	#2,er2
	mov.l	er2,@er7
.L71:
	mov.l	@er7,er2
	cmp.l	#1,er2
	bgt	.L72
	add.l	#12,er7
	rts
	.size	_swab, .-_swab
	.align 1
	.global _isalpha
_isalpha:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	or	#32,r2l
	add.w	#-97,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#25,r3
	bls	.L74
	sub.w	r2,r2
.L74:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	#1,r2
	mov.w	@(2,er7),r3
	cmp.w	#127,r3
	bls	.L77
	sub.w	r2,r2
.L77:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	cmp.w	#32,r2
	beq	.L80
	mov.w	@(2,er7),r2
	cmp.w	#9,r2
	bne	.L81
.L80:
	mov.w	#1,r2
	bra	.L83
.L81:
	sub.w	r2,r2
.L83:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	cmp.w	#31,r2
	bls	.L85
	mov.w	@(2,er7),r2
	cmp.w	#127,r2
	bne	.L86
.L85:
	mov.w	#1,r2
	bra	.L88
.L86:
	sub.w	r2,r2
.L88:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_iscntrl, .-_iscntrl
	.align 1
	.global _isdigit
_isdigit:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	add.w	#-48,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#9,r3
	bls	.L90
	sub.w	r2,r2
.L90:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	add.w	#-33,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#93,r3
	bls	.L93
	sub.w	r2,r2
.L93:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	add.w	#-97,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#25,r3
	bls	.L96
	sub.w	r2,r2
.L96:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	add.w	#-32,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#94,r3
	bls	.L99
	sub.w	r2,r2
.L99:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	cmp.w	#32,r2
	beq	.L102
	mov.w	@(2,er7),r2
	add.w	#-9,r2
	cmp.w	#4,r2
	bhi	.L103
.L102:
	mov.w	#1,r2
	bra	.L105
.L103:
	sub.w	r2,r2
.L105:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isspace, .-_isspace
	.align 1
	.global _isupper
_isupper:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	add.w	#-65,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#25,r3
	bls	.L107
	sub.w	r2,r2
.L107:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	cmp.w	#31,r2
	bls	.L110
	mov.w	@(2,er7),r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L110
	mov.w	@(2,er7),r2
	add.w	#-8232,r2
	cmp.w	#1,r2
	bls	.L110
	mov.w	@(2,er7),r2
	add.w	#7,r2
	cmp.w	#2,r2
	bhi	.L111
.L110:
	mov.w	#1,r2
	bra	.L113
.L111:
	sub.w	r2,r2
.L113:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_iswcntrl, .-_iswcntrl
	.align 1
	.global _iswdigit
_iswdigit:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	add.w	#-48,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#9,r3
	bls	.L115
	sub.w	r2,r2
.L115:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	cmp.w	#254,r2
	bhi	.L118
	mov.w	@(2,er7),r2
	inc #1,r2
	and.w	#127,r2
	mov.w	r2,r3
	mov.w	#1,r2
	cmp.w	#32,r3
	bhi	.L120
	sub.w	r2,r2
	bra	.L120
.L118:
	mov.w	@(2,er7),r2
	cmp.w	#8231,r2
	bls	.L121
	mov.w	@(2,er7),r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L121
	mov.w	@(2,er7),r2
	add.b	#32,r2h
	cmp.w	#8184,r2
	bhi	.L122
.L121:
	mov.w	#1,r2
	bra	.L120
.L122:
	mov.w	@(2,er7),r2
	and	#254,r2l
	cmp.w	#-2,r2
	bne	.L123
	sub.w	r2,r2
	bra	.L120
.L123:
	mov.w	#1,r2
.L120:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L125
	mov.w	@(2,er7),r2
	or	#32,r2l
	add.w	#-97,r2
	cmp.w	#5,r2
	bhi	.L126
.L125:
	mov.w	#1,r2
	bra	.L128
.L126:
	sub.w	r2,r2
.L128:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_iswxdigit, .-_iswxdigit
	.align 1
	.global _toascii
_toascii:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	and.w	#127,r2
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_toascii, .-_toascii
	.align 1
	.global _fdim
_fdim:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L143
	mov.l	@(4,er7),er2
	bra	.L134
.L143:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L144
	mov.l	@er7,er2
	bra	.L134
.L144:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L145
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___subsf3
	mov.l	er0,er2
	bra	.L134
.L145:
	sub.l	er2,er2
.L134:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_fdim, .-_fdim
	.align 1
	.global _fdimf
_fdimf:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L158
	mov.l	@(4,er7),er2
	bra	.L149
.L158:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L159
	mov.l	@er7,er2
	bra	.L149
.L159:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L160
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___subsf3
	mov.l	er0,er2
	bra	.L149
.L160:
	sub.l	er2,er2
.L149:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_fdimf, .-_fdimf
	.align 1
	.global _fmax
_fmax:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L176
	mov.l	@er7,er2
	bra	.L164:16
.L176:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L177
	mov.l	@(4,er7),er2
	bra	.L164:16
.L177:
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@er7,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L167
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L168
	mov.l	@er7,er2
	bra	.L164
.L168:
	mov.l	@(4,er7),er2
	bra	.L164
.L167:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L178
	mov.l	@er7,er2
	bra	.L164
.L178:
	mov.l	@(4,er7),er2
.L164:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L194
	mov.l	@er7,er2
	bra	.L182:16
.L194:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L195
	mov.l	@(4,er7),er2
	bra	.L182:16
.L195:
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@er7,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L185
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L186
	mov.l	@er7,er2
	bra	.L182
.L186:
	mov.l	@(4,er7),er2
	bra	.L182
.L185:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L196
	mov.l	@er7,er2
	bra	.L182
.L196:
	mov.l	@(4,er7),er2
.L182:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L212
	mov.l	@er7,er2
	bra	.L200:16
.L212:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L213
	mov.l	@(4,er7),er2
	bra	.L200:16
.L213:
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@er7,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L203
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L204
	mov.l	@er7,er2
	bra	.L200
.L204:
	mov.l	@(4,er7),er2
	bra	.L200
.L203:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L214
	mov.l	@er7,er2
	bra	.L200
.L214:
	mov.l	@(4,er7),er2
.L200:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_fmaxl, .-_fmaxl
	.align 1
	.global _fmin
_fmin:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L230
	mov.l	@er7,er2
	bra	.L218:16
.L230:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L231
	mov.l	@(4,er7),er2
	bra	.L218:16
.L231:
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@er7,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L221
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L222
	mov.l	@(4,er7),er2
	bra	.L218
.L222:
	mov.l	@er7,er2
	bra	.L218
.L221:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L232
	mov.l	@(4,er7),er2
	bra	.L218
.L232:
	mov.l	@er7,er2
.L218:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_fmin, .-_fmin
	.align 1
	.global _fminf
_fminf:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L248
	mov.l	@er7,er2
	bra	.L236:16
.L248:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L249
	mov.l	@(4,er7),er2
	bra	.L236:16
.L249:
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@er7,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L239
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L240
	mov.l	@(4,er7),er2
	bra	.L236
.L240:
	mov.l	@er7,er2
	bra	.L236
.L239:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L250
	mov.l	@(4,er7),er2
	bra	.L236
.L250:
	mov.l	@er7,er2
.L236:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_fminf, .-_fminf
	.align 1
	.global _fminl
_fminl:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L266
	mov.l	@er7,er2
	bra	.L254:16
.L266:
	mov.l	@er7,er1
	mov.l	@er7,er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L267
	mov.l	@(4,er7),er2
	bra	.L254:16
.L267:
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@er7,er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L257
	mov.l	@(4,er7),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L258
	mov.l	@(4,er7),er2
	bra	.L254
.L258:
	mov.l	@er7,er2
	bra	.L254
.L257:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L268
	mov.l	@(4,er7),er2
	bra	.L254
.L268:
	mov.l	@er7,er2
.L254:
	mov.l	er2,er0
	add.l	#8,er7
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
	sub.l	#12,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	er2,@(4,er7)
	mov.l	#_s___0,er2
	mov.l	er2,@(8,er7)
	bra	.L270
.L271:
	mov.l	@(4,er7),er2
	and.l	#63,er2
	mov.b	@(_digits,er2),r3l
	mov.l	@(8,er7),er2
	mov.b	r3l,@er2
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(4,er7)
.L270:
	mov.l	@(4,er7),er2
	mov.l	er2,er2
	bne	.L271
	mov.l	@(8,er7),er2
	sub.b	r3l,r3l
	mov.b	r3l,@er2
	mov.l	#_s___0,er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
	.align 1
	.global _srand
_srand:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r0
	dec #1,r0
	extu.l	er0
	mov.l	er0,er3
	sub.l	er2,er2
	mov.l	er2,@_seed:32
	mov.l	er3,@_seed+4:32
	nop
	adds	#4,er7
	rts
	.size	_srand, .-_srand
	.align 1
	.global _rand
_rand:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#16,er7
	mov.l	#1481765933,er3
	mov.l	#1284865837,er2
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
	mov.l	@_seed:32,er0
	mov.l	@_seed+4:32,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	sub.l	er2,er2
	sub.l	er3,er3
	add.b	#1,r3l
	mov.l	er5,er6
	add.l	er3,er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	cmp.l	er5,er1
	blo	.L275
	sub.l	er6,er6
.L275:
	add.l	er2,er4
	mov.l	er4,er0
	mov.l	er6,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,@_seed:32
	mov.l	er3,@_seed+4:32
	mov.l	@_seed:32,er2
	mov.l	er2,@(4,er7)
	shlr.l	er2
	mov.l	er2,@(4,er7)
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.w	@(6,er7),r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_rand, .-_rand
	.align 1
	.global _insque
_insque:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L278
	mov.l	@(4,er7),er2
	sub.l	er3,er3
	mov.l	er3,@(4,er2)
	mov.l	@(4,er7),er2
	mov.l	@(4,er2),er3
	mov.l	@(4,er7),er2
	mov.l	er3,@er2
	bra	.L277
.L278:
	mov.l	@er7,er2
	mov.l	@er2,er3
	mov.l	@(4,er7),er2
	mov.l	er3,@er2
	mov.l	@(4,er7),er2
	mov.l	@er7,er3
	mov.l	er3,@(4,er2)
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	mov.l	er3,@er2
	mov.l	@(4,er7),er2
	mov.l	@er2,er2
	mov.l	er2,er2
	beq	.L277
	mov.l	@(4,er7),er2
	mov.l	@er2,er2
	mov.l	@(4,er7),er3
	mov.l	er3,@(4,er2)
.L277:
	add.l	#8,er7
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	@er2,er2
	mov.l	er2,er2
	beq	.L281
	mov.l	@er7,er2
	mov.l	@er2,er2
	mov.l	@er7,er3
	mov.l	@(4,er3),er3
	mov.l	er3,@(4,er2)
.L281:
	mov.l	@er7,er2
	mov.l	@(4,er2),er2
	mov.l	er2,er2
	beq	.L280
	mov.l	@er7,er2
	mov.l	@(4,er2),er2
	mov.l	@er7,er3
	mov.l	@er3,er3
	mov.l	er3,@er2
.L280:
	adds	#4,er7
	rts
	.size	_remque, .-_remque
	.align 1
	.global _lsearch
_lsearch:
	mov.l	er4,@-er7
	sub.l	#24,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(32,er7),er4
	mov.l	er4,er2
	subs	#1,er2
	mov.l	er2,@(16,er7)
	mov.l	@er7,er2
	mov.l	@er2,er2
	mov.l	er2,@(12,er7)
	sub.l	er2,er2
	mov.l	er2,@(20,er7)
	bra	.L285
.L288:
	mov.l	@(20,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(8,er7),er3
	mov.l	@(36,er7),er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@er2
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L286
	mov.l	@(20,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	bra	.L287
.L286:
	mov.l	@(20,er7),er2
	adds	#1,er2
	mov.l	er2,@(20,er7)
.L285:
	mov.l	@(20,er7),er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	blo	.L288
	mov.l	@(12,er7),er2
	adds	#1,er2
	mov.l	er2,er3
	mov.l	@er7,er2
	mov.l	er3,@er2
	mov.l	@(12,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(8,er7),er3
	mov.l	@(32,er7),er2
	mov.l	er3,er1
	jsr	@_memcpy
	mov.l	er0,er2
.L287:
	mov.l	er2,er0
	add.l	#24,er7
	mov.l	@er7+,er4
	rts
	.size	_lsearch, .-_lsearch
	.align 1
	.global _lfind
_lfind:
	mov.l	er4,@-er7
	sub.l	#24,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(32,er7),er4
	mov.l	er4,er2
	subs	#1,er2
	mov.l	er2,@(16,er7)
	mov.l	@er7,er2
	mov.l	@er2,er2
	mov.l	er2,@(12,er7)
	sub.l	er2,er2
	mov.l	er2,@(20,er7)
	bra	.L290
.L293:
	mov.l	@(20,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(8,er7),er3
	mov.l	@(36,er7),er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@er2
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L291
	mov.l	@(20,er7),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	bra	.L292
.L291:
	mov.l	@(20,er7),er2
	adds	#1,er2
	mov.l	er2,@(20,er7)
.L290:
	mov.l	@(20,er7),er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	blo	.L293
	sub.l	er2,er2
.L292:
	mov.l	er2,er0
	add.l	#24,er7
	mov.l	@er7+,er4
	rts
	.size	_lfind, .-_lfind
	.align 1
	.global _abs
_abs:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L295
	neg.w	r2
.L295:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	sub.l	#8,er7
	mov.l	er0,@er7
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	sub.w	r2,r2
	mov.w	r2,@(4,er7)
	bra	.L298
.L299:
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
.L298:
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	r2,r0
	jsr	@_isspace
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L299
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L300
	cmp.w	#45,r2
	bne	.L302
	mov.w	#1,r2
	mov.w	r2,@(4,er7)
.L300:
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
	bra	.L302
.L303:
	mov.w	@(6,er7),r3
	mov.w	#10,r2
	mulxs.w	r3,er2
	mov.w	r2,r0
	mov.l	@er7,er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@er7
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	mov.w	r2,r3
	mov.w	r0,r2
	sub.w	r3,r2
	mov.w	r2,@(6,er7)
.L302:
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L303
	mov.w	@(4,er7),r2
	mov.w	r2,r2
	bne	.L304
	mov.w	@(6,er7),r2
	neg.w	r2
	bra	.L306
.L304:
	mov.w	@(6,er7),r2
.L306:
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	_atoi, .-_atoi
	.align 1
	.global _atol
_atol:
	sub.l	#12,er7
	mov.l	er0,@er7
	sub.l	er2,er2
	mov.l	er2,@(8,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L308
.L309:
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
.L308:
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	r2,r0
	jsr	@_isspace
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L309
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L310
	cmp.w	#45,r2
	bne	.L312
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
.L310:
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
	bra	.L312
.L313:
	sub.l	er1,er1
	add.b	#10,r1l
	mov.l	@(8,er7),er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	@er7,er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@er7
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	mov.w	r2,r3
	exts.l	er3
	mov.l	er0,er2
	sub.l	er3,er2
	mov.l	er2,@(8,er7)
.L312:
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L313
	mov.w	@(6,er7),r2
	mov.w	r2,r2
	bne	.L314
	mov.l	@(8,er7),er2
	neg.l	er2
	bra	.L316
.L314:
	mov.l	@(8,er7),er2
.L316:
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_atol, .-_atol
	.align 1
	.global _atoll
_atoll:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#16,er7
	mov.l	er0,@er7
	sub.l	er2,er2
	mov.l	er2,@(8,er7)
	sub.l	er2,er2
	mov.l	er2,@(12,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L318
.L319:
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
.L318:
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	r2,r0
	jsr	@_isspace
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L319
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L320
	cmp.w	#45,r2
	bne	.L322:16
	mov.w	#1,r2
	mov.w	r2,@(6,er7)
.L320:
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,@er7
	bra	.L322:16
.L324:
	sub.l	er3,er3
	sub.l	er2,er2
	add.b	#10,r2l
	sub.l	#8,er7
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
	mov.l	@(16,er7),er0
	mov.l	@(20,er7),er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	@er7,er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@er7
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	mov.l	er2,er5
	shll	e2
	subx	r2l,r2l
	exts.w	r2
	exts.l	er2
	mov.l	er2,er3
	mov.l	er3,er4
	mov.l	er1,er6
	sub.l	er5,er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	cmp.l	er1,er3
	bhi	.L323
	sub.l	er6,er6
.L323:
	sub.l	er4,er0
	mov.l	er0,er2
	mov.l	er2,er0
	sub.l	er6,er0
	mov.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.l	er3,@(12,er7)
.L322:
	mov.l	@er7,er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L324:16
	mov.w	@(6,er7),r2
	mov.w	r2,r2
	bne	.L325
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	@(8,er7),er4
	mov.l	@(12,er7),er5
	mov.l	er1,er6
	sub.l	er5,er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	cmp.l	er1,er3
	bhi	.L326
	sub.l	er6,er6
.L326:
	sub.l	er4,er0
	mov.l	er0,er2
	mov.l	er2,er0
	sub.l	er6,er0
	mov.l	er0,er2
	mov.l	er2,er4
	mov.l	er3,er5
	bra	.L328
.L325:
	mov.l	@(8,er7),er4
	mov.l	@(12,er7),er5
.L328:
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
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	bra	.L330:16
.L335:
	mov.l	@er7,er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(24,er7),er1
	mov.l	er3,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(16,er7),er0
	mov.l	@(8,er7),er3
	mov.l	@(28,er7),er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@er2
	mov.w	r0,@(14,er7)
	mov.w	@(14,er7),r2
	cmp.w	#-1,r2
	bgt	.L331
	mov.l	@er7,er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@er7
	bra	.L330
.L331:
	mov.w	@(14,er7),r2
	cmp.w	#1,r2
	blt	.L333
	mov.l	@(16,er7),er3
	mov.l	@(24,er7),er2
	add.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.l	@er7,er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@er7,er2
	sub.l	er3,er2
	subs	#1,er2
	mov.l	er2,@er7
	bra	.L330
.L333:
	mov.l	@(16,er7),er2
	bra	.L334
.L330:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L335:16
	sub.l	er2,er2
.L334:
	mov.l	er2,er0
	add.l	#20,er7
	rts
	.size	_bsearch, .-_bsearch
	.align 1
	.global _bsearch_r
_bsearch_r:
	sub.l	#24,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@er7,er2
	mov.w	r2,@(22,er7)
	bra	.L337:16
.L341:
	mov.w	@(22,er7),r3
	mov.w	r3,r2
	shar.w	r2
	exts.l	er2
	mov.l	@(28,er7),er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(36,er7),er2
	mov.l	@(16,er7),er1
	mov.l	@(8,er7),er0
	mov.l	@(32,er7),er3
	jsr	@er3
	mov.w	r0,@(14,er7)
	mov.w	@(14,er7),r2
	mov.w	r2,r2
	bne	.L338
	mov.l	@(16,er7),er2
	bra	.L339
.L338:
	mov.w	@(14,er7),r2
	cmp.w	#1,r2
	blt	.L340
	mov.l	@(16,er7),er3
	mov.l	@(28,er7),er2
	add.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.w	@(22,er7),r2
	dec #1,r2
	mov.w	r2,@(22,er7)
.L340:
	mov.w	@(22,er7),r3
	mov.w	r3,r2
	shar.w	r2
	mov.w	r2,@(22,er7)
.L337:
	mov.w	@(22,er7),r2
	mov.w	r2,r2
	bne	.L341:16
	sub.l	er2,er2
.L339:
	mov.l	er2,er0
	add.l	#24,er7
	rts
	.size	_bsearch_r, .-_bsearch_r
	.align 1
	.global _div
_div:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	r2,@er7
	mov.w	@(2,er7),r2
	mov.w	r2,r3
	exts.l	er3
	mov.w	@er7,r2
	divxs.w	r2,er3
	mov.w	e3,r2
	mov.w	r3,r0
	mov.w	@(2,er7),r2
	mov.w	r2,r3
	exts.l	er3
	mov.w	@er7,r2
	divxs.w	r2,er3
	mov.w	e3,r2
	mov.w	r2,r3
	mov.l	@(4,er7),er2
	mov.w	r0,@er2
	mov.l	@(4,er7),er2
	mov.w	r3,@(2,er2)
	mov.l	@(4,er7),er0
	add.l	#12,er7
	rts
	.size	_div, .-_div
	.align 1
	.global _imaxabs
_imaxabs:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	cmp.l	#-1,er2
	bgt	.L345
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er5,er6
	sub.l	er3,er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	cmp.l	er5,er1
	bhi	.L347
	sub.l	er6,er6
.L347:
	sub.l	er2,er4
	mov.l	er4,er0
	mov.l	er0,er2
	sub.l	er6,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
.L345:
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#8,er7
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
	sub.l	#44,er7
	mov.l	er0,@(24,er7)
	mov.l	er1,@(16,er7)
	mov.l	er2,@(20,er7)
	mov.l	@(56,er7),er2
	mov.l	er2,@er7
	mov.l	@(60,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	@(16,er7),er0
	mov.l	@(20,er7),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	@(16,er7),er2
	mov.l	@(20,er7),er3
	mov.l	@(56,er7),er0
	mov.l	er0,@er7
	mov.l	@(60,er7),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___moddi3
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	@(8,er7),er2
	mov.l	@(12,er7),er3
	mov.l	@(24,er7),er0
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	mov.l	@(24,er7),er0
	mov.l	er2,@(8,er0)
	mov.l	er3,@(12,er0)
	mov.l	@(24,er7),er0
	add.l	#44,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_imaxdiv, .-_imaxdiv
	.align 1
	.global _labs
_labs:
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	cmp.l	#-1,er2
	bgt	.L352
	neg.l	er2
.L352:
	mov.l	er2,er0
	adds	#4,er7
	rts
	.size	_labs, .-_labs
	.align 1
	.global _ldiv
_ldiv:
	mov.l	er4,@-er7
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___divsi3
	mov.l	er0,er2
	mov.l	er2,er4
	mov.l	@(4,er7),er2
	mov.l	@er7,er1
	mov.l	er2,er0
	jsr	@___modsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	mov.l	er4,@er2
	mov.l	@(8,er7),er2
	mov.l	er3,@(4,er2)
	mov.l	@(8,er7),er0
	add.l	#20,er7
	mov.l	@er7+,er4
	rts
	.size	_ldiv, .-_ldiv
	.align 1
	.global _llabs
_llabs:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	cmp.l	#-1,er2
	bgt	.L357
	sub.l	er4,er4
	sub.l	er5,er5
	mov.l	er5,er6
	sub.l	er3,er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	cmp.l	er5,er1
	bhi	.L359
	sub.l	er6,er6
.L359:
	sub.l	er2,er4
	mov.l	er4,er0
	mov.l	er0,er2
	sub.l	er6,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
.L357:
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#8,er7
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
	sub.l	#44,er7
	mov.l	er0,@(24,er7)
	mov.l	er1,@(16,er7)
	mov.l	er2,@(20,er7)
	mov.l	@(56,er7),er2
	mov.l	er2,@er7
	mov.l	@(60,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	@(16,er7),er0
	mov.l	@(20,er7),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	@(16,er7),er2
	mov.l	@(20,er7),er3
	mov.l	@(56,er7),er0
	mov.l	er0,@er7
	mov.l	@(60,er7),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___moddi3
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	@(8,er7),er2
	mov.l	@(12,er7),er3
	mov.l	@(24,er7),er0
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	mov.l	@(24,er7),er0
	mov.l	er2,@(8,er0)
	mov.l	er3,@(12,er0)
	mov.l	@(24,er7),er0
	add.l	#44,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_lldiv, .-_lldiv
	.align 1
	.global _wcschr
_wcschr:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	bra	.L364
.L366:
	mov.l	@(4,er7),er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
.L364:
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L365
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	mov.w	@(2,er7),r3
	cmp.w	r2,r3
	bne	.L366
.L365:
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L367
	mov.l	@(4,er7),er2
	bra	.L369
.L367:
	sub.l	er2,er2
.L369:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	bra	.L371
.L373:
	mov.l	@(4,er7),er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
	mov.l	@er7,er2
	adds	#2,er2
	mov.l	er2,@er7
.L371:
	mov.l	@(4,er7),er2
	mov.w	@er2,r3
	mov.l	@er7,er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	bne	.L372
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L372
	mov.l	@er7,er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L373
.L372:
	mov.l	@(4,er7),er2
	mov.w	@er2,r3
	mov.l	@er7,er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	blo	.L374
	mov.l	@(4,er7),er2
	mov.w	@er2,r0
	mov.l	@er7,er2
	mov.w	@er2,r3
	mov.b	#1,r2l
	cmp.w	r3,r0
	bhi	.L375
	sub.b	r2l,r2l
.L375:
	extu.w	r2
	bra	.L377
.L374:
	mov.w	#-1,r2
.L377:
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@(4,er7),er2
	mov.l	er2,@(8,er7)
.L379:
	mov.l	@er7,er3
	mov.l	er3,er2
	adds	#2,er2
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	adds	#2,er0
	mov.l	er0,@(8,er7)
	mov.w	@er3,r3
	mov.w	r3,@er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L379
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	er2,@(4,er7)
	bra	.L382
.L383:
	mov.l	@(4,er7),er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
.L382:
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L383
	mov.l	@(4,er7),er2
	mov.l	@er7,er3
	sub.l	er3,er2
	shar.l	er2
	mov.l	er2,er3
	mov.l	er3,er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	sub.l	#12,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	bra	.L386
.L388:
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	adds	#2,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
.L386:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L387
	mov.l	@(8,er7),er2
	mov.w	@er2,r3
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	bne	.L387
	mov.l	@(8,er7),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L387
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L388
.L387:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L389
	mov.l	@(8,er7),er2
	mov.w	@er2,r3
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	blo	.L390
	mov.l	@(8,er7),er2
	mov.w	@er2,r0
	mov.l	@(4,er7),er2
	mov.w	@er2,r3
	mov.b	#1,r2l
	cmp.w	r3,r0
	bhi	.L391
	sub.b	r2l,r2l
.L391:
	extu.w	r2
	bra	.L394
.L390:
	mov.w	#-1,r2
	bra	.L394
.L389:
	sub.w	r2,r2
.L394:
	mov.w	r2,r0
	add.l	#12,er7
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	sub.l	#12,er7
	mov.l	er0,@(8,er7)
	mov.w	r1,@(6,er7)
	mov.l	er2,@er7
	bra	.L396
.L398:
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	adds	#2,er2
	mov.l	er2,@(8,er7)
.L396:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L397
	mov.l	@(8,er7),er2
	mov.w	@er2,r2
	mov.w	@(6,er7),r3
	cmp.w	r2,r3
	bne	.L398
.L397:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L399
	mov.l	@(8,er7),er2
	bra	.L401
.L399:
	sub.l	er2,er2
.L401:
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	sub.l	#12,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	bra	.L403
.L405:
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	adds	#2,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
.L403:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L404
	mov.l	@(8,er7),er2
	mov.w	@er2,r3
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	beq	.L405
.L404:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L406
	mov.l	@(8,er7),er2
	mov.w	@er2,r3
	mov.l	@(4,er7),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	blo	.L407
	mov.l	@(8,er7),er2
	mov.w	@er2,r0
	mov.l	@(4,er7),er2
	mov.w	@er2,r3
	mov.b	#1,r2l
	cmp.w	r3,r0
	bhi	.L408
	sub.b	r2l,r2l
.L408:
	extu.w	r2
	bra	.L411
.L407:
	mov.w	#-1,r2
	bra	.L411
.L406:
	sub.w	r2,r2
.L411:
	mov.w	r2,r0
	add.l	#12,er7
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	mov.l	er2,@(12,er7)
	bra	.L413
.L414:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
	mov.l	@(12,er7),er2
	mov.l	er2,er0
	adds	#2,er0
	mov.l	er0,@(12,er7)
	mov.w	@er3,r3
	mov.w	r3,@er2
.L413:
	mov.l	@er7,er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,er2
	bne	.L414
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	bne	.L417
	mov.l	@(8,er7),er2
	bra	.L418:16
.L417:
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	sub.l	er2,er3
	mov.l	er3,er0
	mov.l	@er7,er2
	shll.l	er2
	mov.l	er2,er3
	cmp.l	er3,er0
	bhs	.L419
	bra	.L420
.L421:
	mov.l	@er7,er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@er7,er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.w	@er2,r2
	mov.w	r2,@er0
.L420:
	mov.l	@er7,er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,er2
	bne	.L421
	bra	.L422
.L419:
	mov.l	@(8,er7),er2
	mov.l	er2,@(12,er7)
	bra	.L423
.L424:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	adds	#2,er2
	mov.l	er2,@(4,er7)
	mov.l	@(12,er7),er2
	mov.l	er2,er0
	adds	#2,er0
	mov.l	er0,@(12,er7)
	mov.w	@er3,r3
	mov.w	r3,@er2
.L423:
	mov.l	@er7,er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,er2
	bne	.L424
.L422:
	mov.l	@(8,er7),er2
.L418:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.w	r1,@(6,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	mov.l	er2,@(12,er7)
	bra	.L426
.L427:
	mov.l	@(12,er7),er2
	mov.l	er2,er3
	adds	#2,er3
	mov.l	er3,@(12,er7)
	mov.w	@(6,er7),r3
	mov.w	r3,@er2
.L426:
	mov.l	@er7,er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@er7
	mov.l	er2,er2
	bne	.L427
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	bhs	.L430
	mov.l	@(8,er7),er3
	mov.l	@er7,er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(4,er7),er3
	mov.l	@er7,er2
	add.l	er3,er2
	mov.l	er2,@(12,er7)
	bra	.L431
.L432:
	mov.l	@(16,er7),er2
	subs	#1,er2
	mov.l	er2,@(16,er7)
	mov.l	@(12,er7),er2
	subs	#1,er2
	mov.l	er2,@(12,er7)
	mov.l	@(16,er7),er2
	mov.b	@er2,r3l
	mov.l	@(12,er7),er2
	mov.b	r3l,@er2
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L431:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L432
	bra	.L429
.L430:
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	beq	.L429
	bra	.L434
.L435:
	mov.l	@(8,er7),er3
	mov.l	er3,er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	adds	#1,er0
	mov.l	er0,@(4,er7)
	mov.b	@er3,r3l
	mov.b	r3l,@er2
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L434:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L435
.L429:
	add.l	#20,er7
	rts
	.size	_bcopy, .-_bcopy
	.align 1
	.global _rotl64
_rotl64:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#32,er7
	mov.l	er0,@(24,er7)
	mov.l	er1,@(28,er7)
	mov.w	r2,@(22,er7)
	mov.l	@(24,er7),er0
	mov.l	@(28,er7),er1
	mov.w	@(22,er7),r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L438
	mov.l	er1,@er7
	mov.l	@er7,er3
	mov.b	r2l,r6l
	ble	.L444
.L443:
	shll.l	er3
	add.b	#-1,r6l
	bne	.L443
.L444:
	mov.l	er3,@er7
	sub.l	er2,er2
	mov.l	er2,@(4,er7)
	bra	.L439:16
.L438:
	mov.l	er1,er6
	shlr.l	er6
	mov.w	#31,r3
	mov.w	@(22,er7),r2
	sub.w	r2,r3
	mov.b	r3l,r2l
	ble	.L446
.L445:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L445
.L446:
	mov.l	er6,@(16,er7)
	mov.w	@(22,er7),r2
	mov.l	er0,@er7
	mov.l	@er7,er3
	mov.b	r2l,r6l
	ble	.L448
.L447:
	shll.l	er3
	add.b	#-1,r6l
	bne	.L447
.L448:
	mov.l	er3,@er7
	mov.l	@er7,er2
	mov.l	@(16,er7),er3
	or.l	er3,er2
	mov.l	er2,@er7
	mov.w	@(22,er7),r2
	mov.l	er1,@(4,er7)
	mov.l	@(4,er7),er3
	mov.b	r2l,r6l
	ble	.L450
.L449:
	shll.l	er3
	add.b	#-1,r6l
	bne	.L449
.L450:
	mov.l	er3,@(4,er7)
.L439:
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L440
	mov.l	er0,er5
	mov.b	r2l,r3l
	ble	.L452
.L451:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L451
.L452:
	sub.l	er4,er4
	bra	.L441
.L440:
	mov.l	er0,er6
	shll.l	er6
	mov.w	#31,r3
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	sub.w	r2,r3
	mov.b	r3l,r2l
	ble	.L454
.L453:
	shll.l	er6
	add.b	#-1,r2l
	bne	.L453
.L454:
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	er1,er5
	mov.b	r2l,r3l
	ble	.L456
.L455:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L455
.L456:
	or.l	er6,er5
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	er0,er4
	mov.b	r2l,r3l
	ble	.L458
.L457:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L457
.L458:
.L441:
	mov.l	@er7,er2
	or.l	er4,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	or.l	er5,er2
	mov.l	er2,@(12,er7)
	mov.l	@(8,er7),er4
	mov.l	@(12,er7),er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#32,er7
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
	sub.l	#32,er7
	mov.l	er0,@(24,er7)
	mov.l	er1,@(28,er7)
	mov.w	r2,@(22,er7)
	mov.l	@(24,er7),er0
	mov.l	@(28,er7),er1
	mov.w	@(22,er7),r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L460
	mov.l	er0,@(4,er7)
	mov.l	@(4,er7),er3
	mov.b	r2l,r6l
	ble	.L466
.L465:
	shlr.l	er3
	add.b	#-1,r6l
	bne	.L465
.L466:
	mov.l	er3,@(4,er7)
	sub.l	er2,er2
	mov.l	er2,@er7
	bra	.L461:16
.L460:
	mov.l	er0,er6
	shll.l	er6
	mov.w	#31,r3
	mov.w	@(22,er7),r2
	sub.w	r2,r3
	mov.b	r3l,r2l
	ble	.L468
.L467:
	shll.l	er6
	add.b	#-1,r2l
	bne	.L467
.L468:
	mov.l	er6,@(16,er7)
	mov.w	@(22,er7),r2
	mov.l	er1,@(4,er7)
	mov.l	@(4,er7),er3
	mov.b	r2l,r6l
	ble	.L470
.L469:
	shlr.l	er3
	add.b	#-1,r6l
	bne	.L469
.L470:
	mov.l	er3,@(4,er7)
	mov.l	@(4,er7),er2
	mov.l	@(16,er7),er3
	or.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.w	@(22,er7),r2
	mov.l	er0,@er7
	mov.l	@er7,er3
	mov.b	r2l,r6l
	ble	.L472
.L471:
	shlr.l	er3
	add.b	#-1,r6l
	bne	.L471
.L472:
	mov.l	er3,@er7
.L461:
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L462
	mov.l	er1,er4
	mov.b	r2l,r3l
	ble	.L474
.L473:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L473
.L474:
	sub.l	er5,er5
	bra	.L463
.L462:
	mov.l	er1,er6
	shlr.l	er6
	mov.w	#31,r3
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	sub.w	r2,r3
	mov.b	r3l,r2l
	ble	.L476
.L475:
	shlr.l	er6
	add.b	#-1,r2l
	bne	.L475
.L476:
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	er0,er4
	mov.b	r2l,r3l
	ble	.L478
.L477:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L477
.L478:
	or.l	er6,er4
	mov.w	@(22,er7),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	er1,er5
	mov.b	r2l,r3l
	ble	.L480
.L479:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L479
.L480:
.L463:
	mov.l	@er7,er2
	or.l	er4,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	or.l	er5,er2
	mov.l	er2,@(12,er7)
	mov.l	@(8,er7),er4
	mov.l	@(12,er7),er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#32,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_rotr64, .-_rotr64
	.align 1
	.global _rotl32
_rotl32:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	@(2,er7),r3
	mov.l	@(4,er7),er2
	cmp.b	#1,r3l
	blt	.L484
.L482:
	rotl.l	er2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L482
.L484:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	#32,r3
	mov.w	@(2,er7),r2
	sub.w	r2,r3
	mov.l	@(4,er7),er2
	cmp.b	#1,r3l
	blt	.L488
.L486:
	rotl.l	er2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L486
.L488:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	@(2,er7),r2
	mov.l	@(4,er7),er3
	mov.b	r2l,r0l
	ble	.L492
.L491:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L491
.L492:
	mov.w	#32,r0
	mov.w	@(2,er7),r2
	sub.w	r2,r0
	mov.l	@(4,er7),er2
	mov.b	r0l,r1l
	ble	.L494
.L493:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L493
.L494:
	or.l	er3,er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	@(2,er7),r2
	mov.l	@(4,er7),er3
	mov.b	r2l,r0l
	ble	.L498
.L497:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L497
.L498:
	mov.w	#32,r0
	mov.w	@(2,er7),r2
	sub.w	r2,r0
	mov.l	@(4,er7),er2
	mov.b	r0l,r1l
	ble	.L500
.L499:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L499
.L500:
	or.l	er3,er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	r1,@er7
	mov.w	@er7,r3
	mov.w	@(2,er7),r2
	cmp.b	#1,r3l
	blt	.L504
.L502:
	rotl.w	r2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L502
.L504:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	r1,@er7
	mov.w	#16,r3
	mov.w	@er7,r2
	sub.w	r2,r3
	mov.w	@(2,er7),r2
	cmp.b	#1,r3l
	blt	.L508
.L506:
	rotl.w	r2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L506
.L508:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	subs	#4,er7
	mov.b	r0l,@(3,er7)
	mov.w	r1,@er7
	mov.b	@(3,er7),r2l
	extu.w	r2
	mov.w	@er7,r3
	mov.b	r3l,r0l
	ble	.L512
.L511:
	shll.w	r2
	add.b	#-1,r0l
	bne	.L511
.L512:
	mov.b	r2l,r1l
	mov.b	@(3,er7),r0l
	extu.w	r0
	mov.w	#8,r3
	mov.w	@er7,r2
	sub.w	r2,r3
	mov.w	r0,r2
	mov.b	r3l,r0l
	ble	.L514
.L513:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L513
.L514:
	or	r1l,r2l
	mov.b	r2l,r0l
	adds	#4,er7
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	subs	#4,er7
	mov.b	r0l,@(3,er7)
	mov.w	r1,@er7
	mov.b	@(3,er7),r2l
	extu.w	r2
	mov.w	@er7,r3
	mov.b	r3l,r0l
	ble	.L518
.L517:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L517
.L518:
	mov.b	r2l,r1l
	mov.b	@(3,er7),r0l
	extu.w	r0
	mov.w	#8,r3
	mov.w	@er7,r2
	sub.w	r2,r3
	mov.w	r0,r2
	mov.b	r3l,r0l
	ble	.L520
.L519:
	shll.w	r2
	add.b	#-1,r0l
	bne	.L519
.L520:
	or	r1l,r2l
	mov.b	r2l,r0l
	adds	#4,er7
	rts
	.size	_rotr8, .-_rotr8
	.align 1
	.global _bswap_16
_bswap_16:
	sub.l	#8,er7
	mov.w	r0,@(2,er7)
	mov.w	#255,r2
	mov.w	r2,@(6,er7)
	mov.w	@(6,er7),r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,r3
	mov.w	@(2,er7),r2
	and.w	r3,r2
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,r3
	mov.w	@(2,er7),r0
	mov.w	@(6,er7),r2
	and.w	r2,r0
	mov.w	r0,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	or.w	r3,r2
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	_bswap_16, .-_bswap_16
	.align 1
	.global _bswap_32
_bswap_32:
	sub.l	#8,er7
	mov.l	er0,@er7
	sub.l	er2,er2
	add.b	#255,r2l
	mov.l	er2,@(4,er7)
	mov.l	@(4,er7),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@er7,er2
	and.l	er3,er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(4,er7),er2
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er0
	mov.l	@er7,er2
	and.l	er0,er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	or.l	er2,er3
	mov.l	er3,er0
	mov.l	@(4,er7),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	@er7,er3
	and.l	er3,er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	or.l	er2,er0
	mov.l	@er7,er3
	mov.l	@(4,er7),er2
	and.l	er2,er3
	mov.l	er3,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	or.l	er0,er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_bswap_32, .-_bswap_32
	.align 1
	.global _bswap_64
_bswap_64:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#208,er7
	mov.l	er0,@(192,er7)
	mov.l	er1,@(196,er7)
	sub.l	er2,er2
	mov.l	er2,@(200,er7)
	sub.l	er2,er2
	add.b	#255,r2l
	mov.l	er2,@(204,er7)
	mov.l	@(204,er7),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er4
	sub.l	er5,er5
	mov.l	@(192,er7),er2
	and.l	er4,er2
	mov.l	er2,@(96,er7)
	mov.l	@(196,er7),er2
	and.l	er5,er2
	mov.l	er2,@(100,er7)
	mov.l	@(96,er7),er2
	mov.l	er2,@(68,er7)
	mov.l	@(96,er7),er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,@(68,er7)
	sub.l	er2,er2
	mov.l	er2,@(64,er7)
	mov.l	@(204,er7),er2
	mov.l	er2,@(72,er7)
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,@(72,er7)
	sub.l	er2,er2
	mov.l	er2,@(76,er7)
	mov.l	@(192,er7),er2
	mov.l	@(72,er7),er3
	and.l	er3,er2
	mov.l	er2,@(176,er7)
	mov.l	@(196,er7),er2
	mov.l	@(76,er7),er3
	and.l	er2,er3
	mov.l	er3,@(180,er7)
	mov.l	@(176,er7),er2
	mov.l	er2,@(44,er7)
	mov.l	@(44,er7),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	er2,@(44,er7)
	sub.l	er2,er2
	mov.l	er2,@(40,er7)
	mov.l	@(64,er7),er2
	mov.l	@(40,er7),er3
	or.l	er3,er2
	mov.l	er2,@(104,er7)
	mov.l	@(68,er7),er2
	mov.l	@(44,er7),er3
	or.l	er3,er2
	mov.l	er2,@(108,er7)
	mov.l	@(204,er7),er2
	mov.l	er2,@(48,er7)
	mov.l	@(48,er7),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	er2,@(48,er7)
	sub.l	er2,er2
	mov.l	er2,@(52,er7)
	mov.l	@(192,er7),er2
	mov.l	@(48,er7),er3
	and.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(196,er7),er2
	mov.l	@(52,er7),er3
	and.l	er2,er3
	mov.l	er3,@(12,er7)
	mov.l	@(8,er7),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	@(12,er7),er3
	mov.l	er3,@(20,er7)
	mov.l	@(12,er7),er3
	mov.w	e3,r3
	mov.b	r3h,r3l
	extu.w	r3
	extu.l	er3
	mov.l	er3,@(20,er7)
	mov.l	@(20,er7),er3
	or.l	er2,er3
	mov.l	er3,@(20,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,@(16,er7)
	mov.l	@(8,er7),er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,@(16,er7)
	mov.l	@(104,er7),er2
	mov.l	@(16,er7),er3
	or.l	er3,er2
	mov.l	er2,@(112,er7)
	mov.l	@(108,er7),er2
	mov.l	@(20,er7),er3
	or.l	er3,er2
	mov.l	er2,@(116,er7)
	mov.l	@(204,er7),er2
	mov.l	er2,@(120,er7)
	sub.l	er2,er2
	mov.l	er2,@(124,er7)
	mov.l	@(192,er7),er2
	mov.l	@(120,er7),er3
	and.l	er3,er2
	mov.l	er2,@(80,er7)
	mov.l	@(196,er7),er2
	mov.l	@(124,er7),er3
	and.l	er2,er3
	mov.l	er3,@(84,er7)
	mov.l	@(80,er7),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	@(84,er7),er3
	mov.l	er3,@(4,er7)
	mov.l	@(4,er7),er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	mov.l	er3,@(4,er7)
	mov.l	@(4,er7),er3
	or.l	er2,er3
	mov.l	er3,@(4,er7)
	mov.l	@(80,er7),er2
	mov.l	er2,@er7
	mov.l	@er7,er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	er2,@er7
	mov.l	@(112,er7),er2
	mov.l	@er7,er3
	or.l	er3,er2
	mov.l	er2,@(128,er7)
	mov.l	@(116,er7),er2
	mov.l	@(4,er7),er3
	or.l	er3,er2
	mov.l	er2,@(132,er7)
	mov.l	@(200,er7),er2
	mov.l	@(204,er7),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L526
	sub.l	er0,er0
.L526:
	mov.l	er2,er1
	add.l	er2,er1
	mov.l	er1,er4
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er2,er4
	mov.l	er5,er2
	add.l	er5,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	cmp.l	er5,er1
	blo	.L527
	sub.l	er2,er2
.L527:
	mov.l	er4,er3
	add.l	er4,er3
	mov.l	er3,er0
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L528
	sub.l	er4,er4
.L528:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L529
	sub.l	er4,er4
.L529:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L530
	sub.l	er4,er4
.L530:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L531
	sub.l	er4,er4
.L531:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L532
	sub.l	er4,er4
.L532:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L533
	sub.l	er4,er4
.L533:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L534
	sub.l	er4,er4
.L534:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L535
	sub.l	er4,er4
.L535:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L536
	sub.l	er4,er4
.L536:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L537
	sub.l	er4,er4
.L537:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L538
	sub.l	er4,er4
.L538:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L539
	sub.l	er4,er4
.L539:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L540
	sub.l	er4,er4
.L540:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L541
	sub.l	er4,er4
.L541:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L542
	sub.l	er4,er4
.L542:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L543
	sub.l	er4,er4
.L543:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L544
	sub.l	er4,er4
.L544:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L545
	sub.l	er4,er4
.L545:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L546
	sub.l	er4,er4
.L546:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L547
	sub.l	er4,er4
.L547:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L548
	sub.l	er4,er4
.L548:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L549
	sub.l	er4,er4
.L549:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	@(192,er7),er2
	and.l	er4,er2
	mov.l	er2,@(24,er7)
	mov.l	@(196,er7),er2
	and.l	er5,er2
	mov.l	er2,@(28,er7)
	mov.l	@(28,er7),er0
	mov.l	@(28,er7),er1
	add.l	er1,er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(28,er7),er1
	cmp.l	er1,er3
	blo	.L550
	sub.l	er0,er0
.L550:
	mov.l	@(24,er7),er1
	mov.l	@(24,er7),er4
	add.l	er4,er1
	mov.l	er1,er2
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L551
	sub.l	er4,er4
.L551:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L552
	sub.l	er4,er4
.L552:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L553
	sub.l	er4,er4
.L553:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L554
	sub.l	er4,er4
.L554:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L555
	sub.l	er4,er4
.L555:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L556
	sub.l	er4,er4
.L556:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L557
	sub.l	er4,er4
.L557:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(128,er7),er0
	or.l	er2,er0
	mov.l	er0,@(136,er7)
	mov.l	@(132,er7),er0
	or.l	er3,er0
	mov.l	er0,@(140,er7)
	mov.l	@(200,er7),er2
	mov.l	@(204,er7),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L558
	sub.l	er0,er0
.L558:
	mov.l	er2,er1
	add.l	er2,er1
	mov.l	er1,er4
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er2,er4
	mov.l	er5,er2
	add.l	er5,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	cmp.l	er5,er1
	blo	.L559
	sub.l	er2,er2
.L559:
	mov.l	er4,er3
	add.l	er4,er3
	mov.l	er3,er0
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L560
	sub.l	er4,er4
.L560:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L561
	sub.l	er4,er4
.L561:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L562
	sub.l	er4,er4
.L562:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L563
	sub.l	er4,er4
.L563:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L564
	sub.l	er4,er4
.L564:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L565
	sub.l	er4,er4
.L565:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L566
	sub.l	er4,er4
.L566:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L567
	sub.l	er4,er4
.L567:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L568
	sub.l	er4,er4
.L568:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L569
	sub.l	er4,er4
.L569:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L570
	sub.l	er4,er4
.L570:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L571
	sub.l	er4,er4
.L571:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L572
	sub.l	er4,er4
.L572:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L573
	sub.l	er4,er4
.L573:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	@(192,er7),er2
	and.l	er4,er2
	mov.l	er2,@(32,er7)
	mov.l	@(196,er7),er2
	and.l	er5,er2
	mov.l	er2,@(36,er7)
	mov.l	@(36,er7),er0
	mov.l	@(36,er7),er1
	add.l	er1,er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(36,er7),er1
	cmp.l	er1,er3
	blo	.L574
	sub.l	er0,er0
.L574:
	mov.l	@(32,er7),er1
	mov.l	@(32,er7),er4
	add.l	er4,er1
	mov.l	er1,er2
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L575
	sub.l	er4,er4
.L575:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L576
	sub.l	er4,er4
.L576:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L577
	sub.l	er4,er4
.L577:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L578
	sub.l	er4,er4
.L578:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L579
	sub.l	er4,er4
.L579:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L580
	sub.l	er4,er4
.L580:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L581
	sub.l	er4,er4
.L581:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L582
	sub.l	er4,er4
.L582:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L583
	sub.l	er4,er4
.L583:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L584
	sub.l	er4,er4
.L584:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L585
	sub.l	er4,er4
.L585:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L586
	sub.l	er4,er4
.L586:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L587
	sub.l	er4,er4
.L587:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L588
	sub.l	er4,er4
.L588:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L589
	sub.l	er4,er4
.L589:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L590
	sub.l	er4,er4
.L590:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L591
	sub.l	er4,er4
.L591:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L592
	sub.l	er4,er4
.L592:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L593
	sub.l	er4,er4
.L593:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L594
	sub.l	er4,er4
.L594:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L595
	sub.l	er4,er4
.L595:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L596
	sub.l	er4,er4
.L596:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L597
	sub.l	er4,er4
.L597:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(136,er7),er0
	or.l	er2,er0
	mov.l	er0,@(144,er7)
	mov.l	@(140,er7),er0
	or.l	er3,er0
	mov.l	er0,@(148,er7)
	mov.l	@(200,er7),er2
	mov.l	@(204,er7),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L598
	sub.l	er0,er0
.L598:
	mov.l	er2,er1
	add.l	er2,er1
	mov.l	er1,er4
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er2,er4
	mov.l	er5,er2
	add.l	er5,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	cmp.l	er5,er1
	blo	.L599
	sub.l	er2,er2
.L599:
	mov.l	er4,er3
	add.l	er4,er3
	mov.l	er3,er0
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L600
	sub.l	er4,er4
.L600:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L601
	sub.l	er4,er4
.L601:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L602
	sub.l	er4,er4
.L602:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L603
	sub.l	er4,er4
.L603:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L604
	sub.l	er4,er4
.L604:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L605
	sub.l	er4,er4
.L605:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	@(192,er7),er2
	and.l	er4,er2
	mov.l	er2,@(184,er7)
	mov.l	@(196,er7),er2
	and.l	er5,er2
	mov.l	er2,@(188,er7)
	mov.l	@(188,er7),er2
	mov.l	er2,@(56,er7)
	mov.l	@(56,er7),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	er2,@(56,er7)
	sub.l	er2,er2
	mov.l	er2,@(60,er7)
	mov.l	@(144,er7),er2
	mov.l	@(56,er7),er3
	or.l	er3,er2
	mov.l	er2,@(152,er7)
	mov.l	@(148,er7),er2
	mov.l	@(60,er7),er3
	or.l	er3,er2
	mov.l	er2,@(156,er7)
	mov.l	@(192,er7),er3
	mov.l	@(200,er7),er2
	and.l	er2,er3
	mov.l	er3,@(160,er7)
	mov.l	@(196,er7),er3
	mov.l	@(204,er7),er2
	and.l	er2,er3
	mov.l	er3,@(164,er7)
	mov.l	@(164,er7),er2
	mov.l	er2,@(88,er7)
	mov.l	@(164,er7),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,@(88,er7)
	sub.l	er2,er2
	mov.l	er2,@(92,er7)
	mov.l	@(152,er7),er2
	mov.l	@(88,er7),er3
	or.l	er3,er2
	mov.l	er2,@(168,er7)
	mov.l	@(156,er7),er2
	mov.l	@(92,er7),er3
	or.l	er3,er2
	mov.l	er2,@(172,er7)
	mov.l	@(168,er7),er0
	mov.l	@(172,er7),er1
	add.l	#208,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	_bswap_64, .-_bswap_64
	.align 1
	.global _ffs
_ffs:
	sub.l	#8,er7
	mov.w	r0,@(2,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L608
.L611:
	mov.w	@(6,er7),r3
	mov.w	@(2,er7),r2
	mov.b	r3l,r0l
	ble	.L613
.L612:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L612
.L613:
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L609
	mov.w	@(6,er7),r2
	inc #1,r2
	bra	.L610
.L609:
	mov.w	@(6,er7),r2
	inc #1,r2
	mov.w	r2,@(6,er7)
.L608:
	mov.w	@(6,er7),r2
	cmp.w	#15,r2
	bls	.L611
	sub.w	r2,r2
.L610:
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.l	er4,@-er7
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L615
	sub.w	r4,r4
	bra	.L616
.L615:
	mov.w	#1,r4
	bra	.L617
.L618:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,r2
	inc #1,r4
.L617:
	mov.w	r2,r3
	and.w	#1,r3
	mov.w	r3,r3
	beq	.L618
.L616:
	mov.w	r4,r0
	mov.l	@er7+,er4
	rts
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 1
	.global _gl_isinff
_gl_isinff:
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	#4286578687,er1
	mov.l	@er7,er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L620
	mov.l	#2139095039,er1
	mov.l	@er7,er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L625
.L620:
	mov.w	#1,r2
	bra	.L624
.L625:
	sub.w	r2,r2
.L624:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_gl_isinff, .-_gl_isinff
	.align 1
	.global _gl_isinfd
_gl_isinfd:
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	#4286578687,er1
	mov.l	@er7,er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L627
	mov.l	#2139095039,er1
	mov.l	@er7,er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L632
.L627:
	mov.w	#1,r2
	bra	.L631
.L632:
	sub.w	r2,r2
.L631:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_gl_isinfd, .-_gl_isinfd
	.align 1
	.global _gl_isinfl
_gl_isinfl:
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	#4286578687,er1
	mov.l	@er7,er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L634
	mov.l	#2139095039,er1
	mov.l	@er7,er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L639
.L634:
	mov.w	#1,r2
	bra	.L638
.L639:
	sub.w	r2,r2
.L638:
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	_gl_isinfl, .-_gl_isinfl
	.align 1
	.global __Qp_itoq
__Qp_itoq:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	@(2,er7),r2
	exts.l	er2
	mov.l	er2,er0
	jsr	@___floatsisf
	mov.l	er0,er3
	mov.l	@(4,er7),er2
	mov.l	er3,@er2
	nop
	add.l	#8,er7
	rts
	.size	__Qp_itoq, .-__Qp_itoq
	.align 1
	.global _ldexpf
_ldexpf:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bne	.L642:16
	mov.l	@(4,er7),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,er1
	mov.l	@(4,er7),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L642:16
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L644
	mov.l	#1056964608,er2
	bra	.L645
.L644:
	mov.l	#1073741824,er2
.L645:
	mov.l	er2,@(8,er7)
.L649:
	mov.w	@(2,er7),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L646
	mov.l	@(8,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(4,er7)
.L646:
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L647
	inc #1,r2
.L647:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(2,er7)
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L642
	mov.l	@(8,er7),er1
	mov.l	@(8,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(8,er7)
	bra	.L649
.L642:
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_ldexpf, .-_ldexpf
	.align 1
	.global _ldexp
_ldexp:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bne	.L654:16
	mov.l	@(4,er7),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,er1
	mov.l	@(4,er7),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L654:16
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L656
	mov.l	#1056964608,er2
	bra	.L657
.L656:
	mov.l	#1073741824,er2
.L657:
	mov.l	er2,@(8,er7)
.L661:
	mov.w	@(2,er7),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L658
	mov.l	@(8,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(4,er7)
.L658:
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L659
	inc #1,r2
.L659:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(2,er7)
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L654
	mov.l	@(8,er7),er1
	mov.l	@(8,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(8,er7)
	bra	.L661
.L654:
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_ldexp, .-_ldexp
	.align 1
	.global _ldexpl
_ldexpl:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bne	.L666:16
	mov.l	@(4,er7),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,er1
	mov.l	@(4,er7),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L666:16
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L668
	mov.l	#1056964608,er2
	bra	.L669
.L668:
	mov.l	#1073741824,er2
.L669:
	mov.l	er2,@(8,er7)
.L673:
	mov.w	@(2,er7),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L670
	mov.l	@(8,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(4,er7)
.L670:
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L671
	inc #1,r2
.L671:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(2,er7)
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L666
	mov.l	@(8,er7),er1
	mov.l	@(8,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(8,er7)
	bra	.L673
.L666:
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_ldexpl, .-_ldexpl
	.align 1
	.global _memxor
_memxor:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	mov.l	er2,@(12,er7)
	bra	.L678
.L679:
	mov.l	@(4,er7),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(4,er7)
	mov.b	@er2,r0l
	mov.l	@(12,er7),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(12,er7)
	mov.b	@er2,r3l
	xor	r0l,r3l
	mov.b	r3l,@er2
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L678:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L679
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	jsr	@_strlen
	mov.l	er0,er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.l	er2,@(12,er7)
	bra	.L682
.L684:
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
	mov.l	@(12,er7),er2
	adds	#1,er2
	mov.l	er2,@(12,er7)
	mov.l	@er7,er2
	subs	#1,er2
	mov.l	er2,@er7
.L682:
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L683
	mov.l	@(4,er7),er2
	mov.b	@er2,r3l
	mov.l	@(12,er7),er2
	mov.b	r3l,@er2
	mov.l	@(12,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L684
.L683:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L685
	mov.l	@(12,er7),er2
	sub.b	r3l,r3l
	mov.b	r3l,@er2
.L685:
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	sub.l	er2,er2
	mov.l	er2,@(8,er7)
	bra	.L688
.L693:
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
.L688:
	mov.l	@(8,er7),er3
	mov.l	@er7,er2
	cmp.l	er2,er3
	bhs	.L689
	mov.l	@(4,er7),er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L693
.L689:
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	bra	.L695
.L699:
	mov.l	@er7,er2
	mov.l	er2,@(8,er7)
	bra	.L696
.L698:
	mov.l	@(8,er7),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(8,er7)
	mov.b	@er2,r3l
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	bne	.L696
	mov.l	@(4,er7),er2
	bra	.L697
.L696:
	mov.l	@(8,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L698
	mov.l	@(4,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
.L695:
	mov.l	@(4,er7),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L699
	sub.l	er2,er2
.L697:
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	sub.l	#8,er7
	mov.l	er0,er2
	mov.w	r1,@(2,er7)
	sub.l	er3,er3
	mov.l	er3,@(4,er7)
.L702:
	mov.b	@er2,r3l
	extu.w	r3
	mov.w	@(2,er7),r0
	cmp.w	r3,r0
	bne	.L701
	mov.l	er2,@(4,er7)
.L701:
	mov.l	er2,er3
	mov.l	er3,er2
	adds	#1,er2
	mov.b	@er3,r3l
	mov.b	r3l,r3l
	bne	.L702
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	sub.l	#16,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@er7,er2
	mov.l	er2,er0
	jsr	@_strlen
	mov.l	er0,@(12,er7)
	mov.l	@(12,er7),er2
	mov.l	er2,er2
	bne	.L707
	mov.l	@(4,er7),er2
	bra	.L706
.L709:
	mov.l	@(12,er7),er2
	mov.l	@er7,er0
	mov.l	@(8,er7),er3
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@_strncmp
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L708
	mov.l	@(8,er7),er2
	bra	.L706
.L708:
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(4,er7)
.L707:
	mov.l	@er7,er2
	mov.b	@er2,r2l
	mov.b	r2l,r3l
	extu.w	r3
	mov.l	@(4,er7),er2
	mov.w	r3,r1
	mov.l	er2,er0
	jsr	@_strchr
	mov.l	er0,@(8,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,er2
	bne	.L709
	sub.l	er2,er2
.L706:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_strstr, .-_strstr
	.align 1
	.global _copysign
_copysign:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L711
	sub.l	er1,er1
	mov.l	@er7,er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bgt	.L713
.L711:
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L714
	sub.l	er1,er1
	mov.l	@er7,er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L714
.L713:
	mov.l	@(4,er7),er2
	xor.w	#32768,e2
	bra	.L717
.L714:
	mov.l	@(4,er7),er2
.L717:
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	_copysign, .-_copysign
	.align 1
	.global _memmem
_memmem:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@(4,er7),er3
	mov.l	@(20,er7),er2
	sub.l	er2,er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er2
	mov.l	er2,er2
	bne	.L721
	mov.l	@(8,er7),er2
	bra	.L722:16
.L721:
	mov.b	#1,r2l
	mov.l	@(4,er7),er0
	mov.l	@(20,er7),er3
	cmp.l	er3,er0
	blo	.L723
	sub.b	r2l,r2l
.L723:
	mov.b	r2l,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er2
	beq	.L725
	sub.l	er2,er2
	bra	.L722
.L727:
	mov.l	@(8,er7),er2
	mov.b	@er2,r3l
	mov.l	@er7,er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	bne	.L726
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,er3
	mov.l	@(20,er7),er2
	subs	#1,er2
	mov.l	er2,er1
	mov.l	@er7,er2
	adds	#1,er2
	mov.l	er2,er0
	mov.l	er1,er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@_memcmp
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L726
	mov.l	@(8,er7),er2
	bra	.L722
.L726:
	mov.l	@(8,er7),er2
	adds	#1,er2
	mov.l	er2,@(8,er7)
.L725:
	mov.l	@(8,er7),er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	bls	.L727
	sub.l	er2,er2
.L722:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	_memmem, .-_memmem
	.align 1
	.global _mempcpy
_mempcpy:
	sub.l	#12,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	mov.l	@er7,er2
	mov.l	@(4,er7),er0
	mov.l	@(8,er7),er3
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@_memcpy
	mov.l	er0,er3
	mov.l	@er7,er2
	add.l	er3,er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_mempcpy, .-_mempcpy
	.align 1
	.global _frexp
_frexp:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	sub.w	r2,r2
	mov.w	r2,@(8,er7)
	sub.w	r2,r2
	mov.w	r2,@(10,er7)
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L731
	mov.l	@(4,er7),er2
	xor.w	#32768,e2
	mov.l	er2,@(4,er7)
	mov.w	#1,r2
	mov.w	r2,@(10,er7)
.L731:
	mov.l	#1065353216,er1
	mov.l	@(4,er7),er0
	jsr	@___gesf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L748
	bra	.L735
.L736:
	mov.w	@(8,er7),r2
	inc #1,r2
	mov.w	r2,@(8,er7)
	mov.l	#1073741824,er1
	mov.l	@(4,er7),er0
	jsr	@___divsf3
	mov.l	er0,er2
	mov.l	er2,@(4,er7)
.L735:
	mov.l	#1065353216,er1
	mov.l	@(4,er7),er0
	jsr	@___gesf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L736
	bra	.L737
.L748:
	mov.l	#1056964608,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L737
	sub.l	er1,er1
	mov.l	@(4,er7),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L737
	bra	.L740
.L741:
	mov.w	@(8,er7),r2
	dec #1,r2
	mov.w	r2,@(8,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,@(4,er7)
.L740:
	mov.l	#1056964608,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L741
.L737:
	mov.l	@er7,er2
	mov.w	@(8,er7),r3
	mov.w	r3,@er2
	mov.w	@(10,er7),r2
	mov.w	r2,r2
	beq	.L742
	mov.l	@(4,er7),er2
	xor.w	#32768,e2
	mov.l	er2,@(4,er7)
.L742:
	mov.l	@(4,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	_frexp, .-_frexp
	.align 1
	.global ___muldi3
___muldi3:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	mov.l	er6,@-er7
	sub.l	#44,er7
	mov.l	er0,@(20,er7)
	mov.l	er1,@(24,er7)
	sub.l	er2,er2
	mov.l	er2,@(36,er7)
	sub.l	er2,er2
	mov.l	er2,@(40,er7)
	mov.l	@(20,er7),er2
	mov.l	er2,@(28,er7)
	mov.l	@(24,er7),er2
	mov.l	er2,@(32,er7)
	bra	.L750:16
.L755:
	mov.l	@(28,er7),er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(8,er7)
	mov.l	@(32,er7),er2
	and.l	#1,er2
	mov.l	er2,@(12,er7)
	mov.l	@(8,er7),er2
	mov.l	@(12,er7),er3
	or.l	er3,er2
	mov.l	er2,er2
	beq	.L751
	mov.l	@(36,er7),er0
	mov.l	@(40,er7),er1
	mov.l	@(60,er7),er2
	mov.l	er2,@er7
	mov.l	@(64,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	@(4,er7),er6
	add.l	er1,er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er6,@(16,er7)
	cmp.l	er1,er3
	blo	.L753
	sub.l	er6,er6
	mov.l	er6,@(16,er7)
.L753:
	mov.l	@er7,er6
	add.l	er0,er6
	mov.l	er6,er2
	mov.l	@(16,er7),er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er2,@(36,er7)
	mov.l	er3,@(40,er7)
.L751:
	mov.l	@(60,er7),er2
	mov.l	@(64,er7),er3
	mov.l	er3,er6
	add.l	er3,er6
	mov.l	er6,er1
	sub.l	er6,er6
	add.b	#1,r6l
	mov.l	er6,@er7
	cmp.l	er3,er1
	blo	.L754
	sub.l	er6,er6
	mov.l	er6,@er7
.L754:
	mov.l	er2,er6
	add.l	er2,er6
	mov.l	er6,er0
	mov.l	@er7,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,@(60,er7)
	mov.l	er1,@(64,er7)
	mov.l	@(28,er7),er2
	shlr.l	er2
	xor.l	er2,er2
	rotxr.l	er2
	mov.l	er2,er3
	mov.l	@(32,er7),er2
	shlr.l	er2
	mov.l	er2,er5
	or.l	er3,er5
	mov.l	@(28,er7),er2
	shlr.l	er2
	mov.l	er2,er4
	mov.l	er4,@(28,er7)
	mov.l	er5,@(32,er7)
.L750:
	mov.l	@(28,er7),er2
	mov.l	@(32,er7),er3
	or.l	er3,er2
	mov.l	er2,er2
	bne	.L755:16
	mov.l	@(36,er7),er2
	mov.l	@(40,er7),er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#44,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___muldi3, .-___muldi3
	.align 1
	.global _udivmodsi4
_udivmodsi4:
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.l	er2,@er7
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(16,er7)
	sub.l	er2,er2
	mov.l	er2,@(12,er7)
	bra	.L758
.L760:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(4,er7)
	mov.l	@(16,er7),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(16,er7)
.L758:
	mov.l	@(4,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	bhs	.L761:16
	mov.l	@(16,er7),er2
	mov.l	er2,er2
	beq	.L761
	mov.l	@(4,er7),er2
	cmp.l	#-1,er2
	bgt	.L760
	bra	.L761
.L763:
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	blo	.L762
	mov.l	@(8,er7),er2
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er3
	mov.l	@(16,er7),er2
	or.l	er3,er2
	mov.l	er2,@(12,er7)
.L762:
	mov.l	@(16,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(16,er7)
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(4,er7)
.L761:
	mov.l	@(16,er7),er2
	mov.l	er2,er2
	bne	.L763
	mov.l	@er7,er2
	mov.l	er2,er2
	beq	.L764
	mov.l	@(8,er7),er2
	bra	.L765
.L764:
	mov.l	@(12,er7),er2
.L765:
	mov.l	er2,er0
	add.l	#20,er7
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	sub.l	#8,er7
	mov.b	r0l,@(3,er7)
	mov.b	@(3,er7),r2l
	mov.b	r2l,r2l
	bne	.L767
	mov.w	#7,r2
	bra	.L768
.L767:
	mov.b	@(3,er7),r3l
	extu.w	r3
	mov.w	r3,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	extu.l	er2
	mov.l	er2,er0
	jsr	@___clzsi2
	mov.w	r0,r2
	extu.l	er2
	sub.l	#16,er2
	mov.w	r2,@(6,er7)
	mov.w	@(6,er7),r2
	dec #1,r2
.L768:
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___clrsbqi2, .-___clrsbqi2
	.align 1
	.global ___clrsbdi2
___clrsbdi2:
	sub.l	#12,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er0
	cmp.l	#-1,er0
	bgt	.L770
	mov.l	@er7,er0
	not.l	er0
	mov.l	er0,er2
	mov.l	@(4,er7),er0
	not.l	er0
	mov.l	er0,er3
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
.L770:
	mov.l	@er7,er2
	mov.l	@(4,er7),er3
	or.l	er3,er2
	mov.l	er2,er2
	bne	.L772
	mov.w	#63,r2
	bra	.L773
.L772:
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___clzdi2
	mov.w	r0,r2
	mov.w	r2,@(10,er7)
	mov.w	@(10,er7),r2
	dec #1,r2
.L773:
	mov.w	r2,r0
	add.l	#12,er7
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	sub.l	#8,er7
	mov.w	r0,@(2,er7)
	mov.w	r1,@er7
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L775
.L777:
	mov.w	@(2,er7),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L776
	mov.w	@(6,er7),r3
	mov.w	@er7,r2
	add.w	r3,r2
	mov.w	r2,@(6,er7)
.L776:
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(2,er7)
	mov.w	@er7,r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@er7
.L775:
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	bne	.L777
	mov.w	@(6,er7),r2
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___mulsi3, .-___mulsi3
	.align 1
	.global ___cmovd
___cmovd:
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.w	r2,@(2,er7)
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	shlr.w	r2
	shlr.w	r2
	shlr.w	r2
	mov.w	r2,@(14,er7)
	mov.w	@(2,er7),r2
	and	#248,r2l
	mov.w	r2,@(16,er7)
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	blo	.L780
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er3
	add.l	er2,er3
	mov.l	@(8,er7),er2
	cmp.l	er3,er2
	bls	.L787:16
.L780:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
	bra	.L782
.L783:
	mov.w	@(18,er7),r2
	extu.l	er2
	shll.l	er2
	shll.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.w	@(18,er7),r2
	extu.l	er2
	shll.l	er2
	shll.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.l	er2,er1
	mov.l	@er1,er2
	mov.l	@(4,er1),er3
	mov.l	er2,@er0
	mov.l	er3,@(4,er0)
	mov.w	@(18,er7),r2
	inc #1,r2
	mov.w	r2,@(18,er7)
.L782:
	mov.w	@(18,er7),r3
	mov.w	@(14,er7),r2
	cmp.w	r2,r3
	blo	.L783
	bra	.L784
.L785:
	mov.w	@(16,er7),r2
	extu.l	er2
	mov.l	@(8,er7),er3
	add.l	er2,er3
	mov.w	@(16,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er0
	add.l	er0,er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
	mov.w	@(16,er7),r2
	inc #1,r2
	mov.w	r2,@(16,er7)
.L784:
	mov.w	@(2,er7),r3
	mov.w	@(16,er7),r2
	cmp.w	r2,r3
	bhi	.L785
	bra	.L786
.L788:
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(8,er7),er3
	add.l	er2,er3
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er0
	add.l	er0,er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
.L787:
	mov.w	@(2,er7),r2
	mov.w	r2,r3
	dec #1,r3
	mov.w	r3,@(2,er7)
	mov.w	r2,r2
	bne	.L788
.L786:
	nop
	add.l	#20,er7
	rts
	.size	___cmovd, .-___cmovd
	.align 1
	.global ___cmovh
___cmovh:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.w	r2,@(2,er7)
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(12,er7)
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	blo	.L790
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er3
	add.l	er2,er3
	mov.l	@(8,er7),er2
	cmp.l	er3,er2
	bls	.L796:16
.L790:
	sub.w	r2,r2
	mov.w	r2,@(14,er7)
	bra	.L792
.L793:
	mov.w	@(14,er7),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.w	@(14,er7),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.w	@er2,r2
	mov.w	r2,@er0
	mov.w	@(14,er7),r2
	inc #1,r2
	mov.w	r2,@(14,er7)
.L792:
	mov.w	@(14,er7),r3
	mov.w	@(12,er7),r2
	cmp.w	r2,r3
	blo	.L793
	mov.w	@(2,er7),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L795
	mov.w	@(2,er7),r2
	dec #1,r2
	mov.w	r2,r0
	extu.l	er0
	mov.w	@(2,er7),r2
	dec #1,r2
	extu.l	er2
	mov.l	@(8,er7),er3
	add.l	er2,er3
	mov.l	@(4,er7),er2
	add.l	er0,er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
	bra	.L795
.L797:
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(8,er7),er3
	add.l	er2,er3
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er0
	add.l	er0,er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
.L796:
	mov.w	@(2,er7),r2
	mov.w	r2,r3
	dec #1,r3
	mov.w	r3,@(2,er7)
	mov.w	r2,r2
	bne	.L797
.L795:
	nop
	add.l	#16,er7
	rts
	.size	___cmovh, .-___cmovh
	.align 1
	.global ___cmovw
___cmovw:
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.w	r2,@(2,er7)
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	shlr.w	r2
	shlr.w	r2
	mov.w	r2,@(14,er7)
	mov.w	@(2,er7),r2
	and	#252,r2l
	mov.w	r2,@(16,er7)
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	blo	.L799
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er3
	add.l	er2,er3
	mov.l	@(8,er7),er2
	cmp.l	er3,er2
	bls	.L806:16
.L799:
	sub.w	r2,r2
	mov.w	r2,@(18,er7)
	bra	.L801
.L802:
	mov.w	@(18,er7),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.w	@(18,er7),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.w	@er2,r2
	mov.w	r2,@er0
	mov.w	@(18,er7),r2
	inc #1,r2
	mov.w	r2,@(18,er7)
.L801:
	mov.w	@(18,er7),r3
	mov.w	@(14,er7),r2
	cmp.w	r2,r3
	blo	.L802
	bra	.L803
.L804:
	mov.w	@(16,er7),r2
	extu.l	er2
	mov.l	@(8,er7),er3
	add.l	er2,er3
	mov.w	@(16,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er0
	add.l	er0,er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
	mov.w	@(16,er7),r2
	inc #1,r2
	mov.w	r2,@(16,er7)
.L803:
	mov.w	@(2,er7),r3
	mov.w	@(16,er7),r2
	cmp.w	r2,r3
	bhi	.L804
	bra	.L805
.L807:
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(8,er7),er3
	add.l	er2,er3
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	@(4,er7),er0
	add.l	er0,er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
.L806:
	mov.w	@(2,er7),r2
	mov.w	r2,r3
	dec #1,r3
	mov.w	r3,@(2,er7)
	mov.w	r2,r2
	bne	.L807
.L805:
	nop
	add.l	#20,er7
	rts
	.size	___cmovw, .-___cmovw
	.align 1
	.global ___modi
___modi:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	r1,@er7
	mov.w	@(2,er7),r2
	mov.w	r2,r3
	exts.l	er3
	mov.w	@er7,r2
	divxs.w	r2,er3
	mov.w	e3,r2
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	___modi, .-___modi
	.align 1
	.global ___uitod
___uitod:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	er2,er0
	jsr	@___floatunsisf
	mov.l	er0,er2
	mov.l	er2,er0
	adds	#4,er7
	rts
	.size	___uitod, .-___uitod
	.align 1
	.global ___uitof
___uitof:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	@(2,er7),r2
	extu.l	er2
	mov.l	er2,er0
	jsr	@___floatunsisf
	mov.l	er0,er2
	mov.l	er2,er0
	adds	#4,er7
	rts
	.size	___uitof, .-___uitof
	.align 1
	.global ___ulltod
___ulltod:
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___floatundisf
	mov.l	er0,er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	___ulltod, .-___ulltod
	.align 1
	.global ___ulltof
___ulltof:
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er0
	mov.l	@(4,er7),er1
	jsr	@___floatundisf
	mov.l	er0,er2
	mov.l	er2,er0
	add.l	#8,er7
	rts
	.size	___ulltof, .-___ulltof
	.align 1
	.global ___umodi
___umodi:
	subs	#4,er7
	mov.w	r0,@(2,er7)
	mov.w	r1,@er7
	mov.w	@(2,er7),r2
	mov.w	r2,r3
	extu.l	er3
	mov.w	@er7,r2
	divxu.w	r2,er3
	mov.w	e3,r2
	mov.w	r2,r0
	adds	#4,er7
	rts
	.size	___umodi, .-___umodi
	.align 1
	.global ___clzhi2
___clzhi2:
	sub.l	#8,er7
	mov.w	r0,@(2,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L821
.L824:
	mov.w	@(6,er7),r3
	mov.w	#-32768,r2
	mov.b	r3l,r0l
	ble	.L828
.L827:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L827
.L828:
	mov.w	@(2,er7),r3
	and.w	r3,r2
	mov.w	r2,r2
	bne	.L823
	mov.w	@(6,er7),r2
	inc #1,r2
	mov.w	r2,@(6,er7)
.L821:
	mov.w	@(6,er7),r2
	cmp.w	#15,r2
	ble	.L824
.L823:
	mov.w	@(6,er7),r2
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	sub.l	#8,er7
	mov.w	r0,@(2,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L830
.L833:
	mov.w	@(6,er7),r3
	mov.w	@(2,er7),r2
	mov.b	r3l,r0l
	ble	.L837
.L836:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L836
.L837:
	and.w	#1,r2
	mov.w	r2,r2
	bne	.L832
	mov.w	@(6,er7),r2
	inc #1,r2
	mov.w	r2,@(6,er7)
.L830:
	mov.w	@(6,er7),r2
	cmp.w	#15,r2
	ble	.L833
.L832:
	mov.w	@(6,er7),r2
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___ctzhi2, .-___ctzhi2
	.align 1
	.global ___fixunssfsi
___fixunssfsi:
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	#1191182336,er1
	mov.l	@er7,er0
	jsr	@___gesf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L843
	mov.l	#1191182336,er1
	mov.l	@er7,er0
	jsr	@___subsf3
	mov.l	er0,er2
	mov.l	er2,er0
	jsr	@___fixsfsi
	mov.l	er0,er2
	add.l	#32768,er2
	bra	.L841
.L843:
	mov.l	@er7,er0
	jsr	@___fixsfsi
	mov.l	er0,er2
.L841:
	mov.l	er2,er0
	adds	#4,er7
	rts
	.size	___fixunssfsi, .-___fixunssfsi
	.align 1
	.global ___parityhi2
___parityhi2:
	sub.l	#8,er7
	mov.w	r0,@(2,er7)
	sub.w	r2,r2
	mov.w	r2,@(4,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L845
.L847:
	mov.w	@(6,er7),r3
	mov.w	@(2,er7),r2
	mov.b	r3l,r0l
	ble	.L850
.L849:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L849
.L850:
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L846
	mov.w	@(4,er7),r2
	inc #1,r2
	mov.w	r2,@(4,er7)
.L846:
	mov.w	@(6,er7),r2
	inc #1,r2
	mov.w	r2,@(6,er7)
.L845:
	mov.w	@(6,er7),r2
	cmp.w	#15,r2
	ble	.L847
	mov.w	@(4,er7),r2
	and.w	#1,r2
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___parityhi2, .-___parityhi2
	.align 1
	.global ___popcounthi2
___popcounthi2:
	sub.l	#8,er7
	mov.w	r0,@(2,er7)
	sub.w	r2,r2
	mov.w	r2,@(4,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	bra	.L852
.L854:
	mov.w	@(6,er7),r3
	mov.w	@(2,er7),r2
	mov.b	r3l,r0l
	ble	.L857
.L856:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L856
.L857:
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L853
	mov.w	@(4,er7),r2
	inc #1,r2
	mov.w	r2,@(4,er7)
.L853:
	mov.w	@(6,er7),r2
	inc #1,r2
	mov.w	r2,@(6,er7)
.L852:
	mov.w	@(6,er7),r2
	cmp.w	#15,r2
	ble	.L854
	mov.w	@(4,er7),r2
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	sub.l	er2,er2
	mov.l	er2,@(8,er7)
	bra	.L859
.L861:
	mov.l	@(4,er7),er2
	and.l	#1,er2
	mov.l	er2,er2
	beq	.L860
	mov.l	@(8,er7),er3
	mov.l	@er7,er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
.L860:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(4,er7)
	mov.l	@er7,er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@er7
.L859:
	mov.l	@(4,er7),er2
	mov.l	er2,er2
	bne	.L861
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	sub.l	#12,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	sub.l	er2,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,er2
	bne	.L866
	sub.l	er2,er2
	bra	.L865
.L868:
	mov.l	@er7,er2
	and.l	#1,er2
	mov.l	er2,er2
	beq	.L867
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	add.l	er3,er2
	mov.l	er2,@(8,er7)
.L867:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(4,er7)
	mov.l	@er7,er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@er7
.L866:
	mov.l	@er7,er2
	mov.l	er2,er2
	bne	.L868
	mov.l	@(8,er7),er2
.L865:
	mov.l	er2,er0
	add.l	#12,er7
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.w	r2,@(2,er7)
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(16,er7)
	sub.l	er2,er2
	mov.l	er2,@(12,er7)
	bra	.L870
.L872:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(4,er7)
	mov.l	@(16,er7),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(16,er7)
.L870:
	mov.l	@(4,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	bhs	.L873:16
	mov.l	@(16,er7),er2
	mov.l	er2,er2
	beq	.L873
	mov.l	@(4,er7),er2
	cmp.l	#-1,er2
	bgt	.L872
	bra	.L873
.L875:
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	blo	.L874
	mov.l	@(8,er7),er2
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er3
	mov.l	@(16,er7),er2
	or.l	er3,er2
	mov.l	er2,@(12,er7)
.L874:
	mov.l	@(16,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(16,er7)
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(4,er7)
.L873:
	mov.l	@(16,er7),er2
	mov.l	er2,er2
	bne	.L875
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L876
	mov.l	@(8,er7),er2
	bra	.L877
.L876:
	mov.l	@(12,er7),er2
.L877:
	mov.l	er2,er0
	add.l	#20,er7
	rts
	.size	___udivmodsi4, .-___udivmodsi4
	.align 1
	.global ___mspabi_cmpf
___mspabi_cmpf:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L886
	mov.w	#-1,r2
	bra	.L881
.L886:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L887
	mov.w	#1,r2
	bra	.L881
.L887:
	sub.w	r2,r2
.L881:
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 1
	.global ___mspabi_cmpd
___mspabi_cmpd:
	sub.l	#8,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L896
	mov.w	#-1,r2
	bra	.L891
.L896:
	mov.l	@er7,er1
	mov.l	@(4,er7),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L897
	mov.w	#1,r2
	bra	.L891
.L897:
	sub.w	r2,r2
.L891:
	mov.w	r2,r0
	add.l	#8,er7
	rts
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 1
	.global ___mspabi_mpysll
___mspabi_mpysll:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(12,er7)
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er0
	mov.l	er0,er5
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,er1
	mov.l	er1,er4
	mov.l	@(8,er7),er0
	mov.l	er0,er3
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,er1
	mov.l	er1,er2
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er4,er0
	mov.l	er5,er1
	jsr	@___muldi3
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,er2
	mov.l	er5,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 1
	.global ___mspabi_mpyull
___mspabi_mpyull:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(12,er7)
	mov.l	er1,@(8,er7)
	mov.l	@(12,er7),er0
	mov.l	er0,er5
	sub.l	er4,er4
	mov.l	@(8,er7),er0
	mov.l	er0,er3
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er4,er0
	mov.l	er5,er1
	jsr	@___muldi3
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	er4,er2
	mov.l	er5,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 1
	.global ___mulhi3
___mulhi3:
	sub.l	#12,er7
	mov.w	r0,@(2,er7)
	mov.w	r1,@er7
	sub.w	r2,r2
	mov.w	r2,@(8,er7)
	sub.w	r2,r2
	mov.w	r2,@(6,er7)
	mov.w	@er7,r2
	cmp.w	#-1,r2
	bgt	.L903
	mov.w	@er7,r2
	neg.w	r2
	mov.w	r2,@er7
	mov.w	#1,r2
	mov.w	r2,@(8,er7)
.L903:
	sub.b	r2l,r2l
	mov.b	r2l,@(11,er7)
	bra	.L904
.L907:
	mov.w	@er7,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L905
	mov.w	@(6,er7),r3
	mov.w	@(2,er7),r2
	add.w	r3,r2
	mov.w	r2,@(6,er7)
.L905:
	mov.w	@(2,er7),r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@(2,er7)
	mov.w	@er7,r3
	mov.w	r3,r2
	shar.w	r2
	mov.w	r2,@er7
	mov.b	@(11,er7),r2l
	add.b	#1,r2l
	mov.b	r2l,@(11,er7)
.L904:
	mov.w	@er7,r2
	mov.w	r2,r2
	beq	.L906
	mov.b	@(11,er7),r2l
	cmp.b	#15,r2l
	bls	.L907
.L906:
	mov.w	@(8,er7),r2
	mov.w	r2,r2
	beq	.L908
	mov.w	@(6,er7),r2
	neg.w	r2
	bra	.L910
.L908:
	mov.w	@(6,er7),r2
.L910:
	mov.w	r2,r0
	add.l	#12,er7
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	sub.l	#16,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	sub.w	r2,r2
	mov.w	r2,@(14,er7)
	mov.l	@(4,er7),er2
	cmp.l	#-1,er2
	bgt	.L912
	mov.l	@(4,er7),er2
	neg.l	er2
	mov.l	er2,@(4,er7)
	mov.b	#1,r2l
	mov.w	@(14,er7),r3
	mov.w	r3,r3
	beq	.L913
	sub.b	r2l,r2l
.L913:
	extu.w	r2
	mov.w	r2,@(14,er7)
.L912:
	mov.l	@er7,er2
	cmp.l	#-1,er2
	bgt	.L914
	mov.l	@er7,er2
	neg.l	er2
	mov.l	er2,@er7
	mov.b	#1,r2l
	mov.w	@(14,er7),r3
	mov.w	r3,r3
	beq	.L915
	sub.b	r2l,r2l
.L915:
	extu.w	r2
	mov.w	r2,@(14,er7)
.L914:
	mov.l	@er7,er0
	mov.l	@(4,er7),er3
	sub.w	r2,r2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@___udivmodsi4
	mov.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.w	@(14,er7),r2
	mov.w	r2,r2
	beq	.L916
	mov.l	@(8,er7),er2
	neg.l	er2
	mov.l	er2,@(8,er7)
.L916:
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	sub.l	#16,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	sub.w	r2,r2
	mov.w	r2,@(14,er7)
	mov.l	@(4,er7),er2
	cmp.l	#-1,er2
	bgt	.L919
	mov.l	@(4,er7),er2
	neg.l	er2
	mov.l	er2,@(4,er7)
	mov.w	#1,r2
	mov.w	r2,@(14,er7)
.L919:
	mov.l	@er7,er2
	cmp.l	#-1,er2
	bgt	.L920
	mov.l	@er7,er2
	neg.l	er2
	mov.l	er2,@er7
.L920:
	mov.l	@er7,er0
	mov.l	@(4,er7),er3
	mov.w	#1,r2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@___udivmodsi4
	mov.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.w	@(14,er7),r2
	mov.w	r2,r2
	beq	.L921
	mov.l	@(8,er7),er2
	neg.l	er2
	mov.l	er2,@(8,er7)
.L921:
	mov.l	@(8,er7),er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	sub.l	#12,er7
	mov.w	r0,@(6,er7)
	mov.w	r1,@(4,er7)
	mov.w	r2,@(2,er7)
	mov.w	#1,r2
	mov.w	r2,@(10,er7)
	sub.w	r2,r2
	mov.w	r2,@(8,er7)
	bra	.L924
.L926:
	mov.w	@(4,er7),r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@(4,er7)
	mov.w	@(10,er7),r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@(10,er7)
.L924:
	mov.w	@(4,er7),r3
	mov.w	@(6,er7),r2
	cmp.w	r2,r3
	bhs	.L927
	mov.w	@(10,er7),r2
	mov.w	r2,r2
	beq	.L927
	mov.w	@(4,er7),r2
	cmp.w	#-1,r2
	bgt	.L926
	bra	.L927
.L929:
	mov.w	@(6,er7),r3
	mov.w	@(4,er7),r2
	cmp.w	r2,r3
	blo	.L928
	mov.w	@(6,er7),r2
	mov.w	@(4,er7),r3
	sub.w	r3,r2
	mov.w	r2,@(6,er7)
	mov.w	@(8,er7),r3
	mov.w	@(10,er7),r2
	or.w	r3,r2
	mov.w	r2,@(8,er7)
.L928:
	mov.w	@(10,er7),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(10,er7)
	mov.w	@(4,er7),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(4,er7)
.L927:
	mov.w	@(10,er7),r2
	mov.w	r2,r2
	bne	.L929
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L930
	mov.w	@(6,er7),r2
	bra	.L931
.L930:
	mov.w	@(8,er7),r2
.L931:
	mov.w	r2,r0
	add.l	#12,er7
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	sub.l	#20,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(4,er7)
	mov.w	r2,@(2,er7)
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(16,er7)
	sub.l	er2,er2
	mov.l	er2,@(12,er7)
	bra	.L933
.L935:
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(4,er7)
	mov.l	@(16,er7),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(16,er7)
.L933:
	mov.l	@(4,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	bhs	.L936:16
	mov.l	@(16,er7),er2
	mov.l	er2,er2
	beq	.L936
	mov.l	@(4,er7),er2
	cmp.l	#-1,er2
	bgt	.L935
	bra	.L936
.L938:
	mov.l	@(8,er7),er3
	mov.l	@(4,er7),er2
	cmp.l	er2,er3
	blo	.L937
	mov.l	@(8,er7),er2
	mov.l	@(4,er7),er3
	sub.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er3
	mov.l	@(16,er7),er2
	or.l	er3,er2
	mov.l	er2,@(12,er7)
.L937:
	mov.l	@(16,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(16,er7)
	mov.l	@(4,er7),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(4,er7)
.L936:
	mov.l	@(16,er7),er2
	mov.l	er2,er2
	bne	.L938
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L939
	mov.l	@(8,er7),er2
	bra	.L940
.L939:
	mov.l	@(12,er7),er2
.L940:
	mov.l	er2,er0
	add.l	#20,er7
	rts
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 1
	.global ___ashldi3
___ashldi3:
	sub.l	#32,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@(8,er7)
	mov.w	r2,@(2,er7)
	mov.w	#32,r2
	mov.w	r2,@(30,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,@(24,er7)
	mov.w	@(2,er7),r3
	mov.w	@(30,er7),r2
	and.w	r3,r2
	mov.w	r2,r2
	beq	.L942
	sub.l	er2,er2
	mov.l	er2,@(16,er7)
	mov.l	@(24,er7),er0
	mov.w	@(2,er7),r3
	mov.w	@(30,er7),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L948
.L947:
	shll.l	er2
	add.b	#-1,r0l
	bne	.L947
.L948:
	mov.l	er2,@(12,er7)
	bra	.L943:16
.L942:
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	bne	.L944
	mov.l	@(4,er7),er2
	mov.l	@(8,er7),er3
	bra	.L946
.L944:
	mov.l	@(24,er7),er2
	mov.w	@(2,er7),r3
	mov.b	r3l,r0l
	ble	.L950
.L949:
	shll.l	er2
	add.b	#-1,r0l
	bne	.L949
.L950:
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	mov.l	er2,er3
	mov.w	@(2,er7),r2
	mov.b	r2l,r0l
	ble	.L952
.L951:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L951
.L952:
	mov.l	@(24,er7),er1
	mov.w	@(30,er7),r0
	mov.w	@(2,er7),r2
	sub.w	r2,r0
	mov.l	er1,er2
	mov.b	r0l,r1l
	ble	.L954
.L953:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L953
.L954:
	or.l	er3,er2
	mov.l	er2,@(12,er7)
.L943:
	mov.l	@(12,er7),er2
	mov.l	@(16,er7),er3
.L946:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#32,er7
	rts
	.size	___ashldi3, .-___ashldi3
	.align 1
	.global ___ashrdi3
___ashrdi3:
	sub.l	#32,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@(8,er7)
	mov.w	r2,@(2,er7)
	mov.w	#32,r2
	mov.w	r2,@(30,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,@(24,er7)
	mov.w	@(2,er7),r3
	mov.w	@(30,er7),r2
	and.w	r3,r2
	mov.w	r2,r2
	beq	.L956
	mov.l	@(20,er7),er0
	mov.w	@(30,er7),r2
	dec #1,r2
	mov.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L962
.L961:
	shar.l	er2
	add.b	#-1,r0l
	bne	.L961
.L962:
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er0
	mov.w	@(2,er7),r3
	mov.w	@(30,er7),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L964
.L963:
	shar.l	er2
	add.b	#-1,r0l
	bne	.L963
.L964:
	mov.l	er2,@(16,er7)
	bra	.L957:16
.L956:
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	bne	.L958
	mov.l	@(4,er7),er2
	mov.l	@(8,er7),er3
	bra	.L960
.L958:
	mov.l	@(20,er7),er2
	mov.w	@(2,er7),r3
	mov.b	r3l,r0l
	ble	.L966
.L965:
	shar.l	er2
	add.b	#-1,r0l
	bne	.L965
.L966:
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er2
	mov.l	er2,er0
	mov.w	@(30,er7),r2
	mov.w	@(2,er7),r3
	sub.w	r3,r2
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L968
.L967:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L967
.L968:
	mov.l	@(24,er7),er2
	mov.w	@(2,er7),r0
	mov.b	r0l,r1l
	ble	.L970
.L969:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L969
.L970:
	or.l	er3,er2
	mov.l	er2,@(16,er7)
.L957:
	mov.l	@(12,er7),er2
	mov.l	@(16,er7),er3
.L960:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#32,er7
	rts
	.size	___ashrdi3, .-___ashrdi3
	.align 1
	.global ___bswapdi2
___bswapdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#144,er7
	mov.l	er0,@(136,er7)
	mov.l	er1,@(140,er7)
	mov.l	@(136,er7),er0
	mov.l	er0,@(20,er7)
	mov.w	e0,r0
	mov.b	r0h,r0l
	extu.w	r0
	extu.l	er0
	mov.l	er0,@(20,er7)
	sub.l	er0,er0
	mov.l	er0,@(16,er7)
	mov.l	@(136,er7),er0
	mov.l	er0,er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	sub.l	er2,er2
	mov.l	er2,er0
	sub.w	r0,r0
	sub.w	e0,e0
	mov.l	er0,@(104,er7)
	mov.l	er3,er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,@(108,er7)
	mov.l	@(104,er7),er2
	mov.l	@(108,er7),er3
	mov.l	@(16,er7),er0
	or.l	er2,er0
	mov.l	er0,@(32,er7)
	mov.l	@(20,er7),er0
	or.l	er3,er0
	mov.l	er0,@(36,er7)
	mov.l	@(136,er7),er2
	mov.l	er2,er3
	mov.w	e3,r2
	mov.b	r2l,r2h
	mov.b	r3h,r2l
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	mov.w	r2,e3
	mov.l	@(140,er7),er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er5
	or.l	er3,er5
	mov.l	@(136,er7),er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er4
	mov.l	er4,er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(112,er7)
	mov.l	er5,er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,@(116,er7)
	mov.l	@(112,er7),er4
	mov.l	@(116,er7),er5
	mov.l	@(32,er7),er2
	or.l	er4,er2
	mov.l	er2,@(40,er7)
	mov.l	@(36,er7),er2
	or.l	er5,er2
	mov.l	er2,@(44,er7)
	mov.l	@(136,er7),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@(140,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	@(4,er7),er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	mov.l	er2,@(4,er7)
	mov.l	@(4,er7),er2
	or.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.l	@(136,er7),er2
	mov.l	er2,@er7
	mov.l	@er7,er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	er2,@er7
	mov.l	@er7,er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(120,er7)
	mov.l	@(4,er7),er2
	and.l	#-16777216,er2
	mov.l	er2,@(124,er7)
	mov.l	@(120,er7),er2
	mov.l	er2,@er7
	mov.l	@(124,er7),er2
	mov.l	er2,@(4,er7)
	mov.l	@(40,er7),er2
	mov.l	@er7,er3
	or.l	er3,er2
	mov.l	er2,@(48,er7)
	mov.l	@(44,er7),er2
	mov.l	@(4,er7),er3
	or.l	er3,er2
	mov.l	er2,@(52,er7)
	mov.l	@(136,er7),er2
	mov.l	@(140,er7),er3
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L972
	sub.l	er4,er4
.L972:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L973
	sub.l	er4,er4
.L973:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L974
	sub.l	er4,er4
.L974:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L975
	sub.l	er4,er4
.L975:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L976
	sub.l	er4,er4
.L976:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L977
	sub.l	er4,er4
.L977:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L978
	sub.l	er4,er4
.L978:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L979
	sub.l	er4,er4
.L979:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er2,er0
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,@(56,er7)
	mov.l	er3,er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(60,er7)
	mov.l	@(48,er7),er2
	mov.l	@(56,er7),er3
	or.l	er3,er2
	mov.l	er2,@(64,er7)
	mov.l	@(52,er7),er2
	mov.l	@(60,er7),er3
	or.l	er3,er2
	mov.l	er2,@(68,er7)
	mov.l	@(136,er7),er2
	mov.l	@(140,er7),er3
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L980
	sub.l	er4,er4
.L980:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L981
	sub.l	er4,er4
.L981:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L982
	sub.l	er4,er4
.L982:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L983
	sub.l	er4,er4
.L983:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L984
	sub.l	er4,er4
.L984:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L985
	sub.l	er4,er4
.L985:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L986
	sub.l	er4,er4
.L986:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L987
	sub.l	er4,er4
.L987:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L988
	sub.l	er4,er4
.L988:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L989
	sub.l	er4,er4
.L989:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L990
	sub.l	er4,er4
.L990:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L991
	sub.l	er4,er4
.L991:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L992
	sub.l	er4,er4
.L992:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L993
	sub.l	er4,er4
.L993:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L994
	sub.l	er4,er4
.L994:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L995
	sub.l	er4,er4
.L995:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L996
	sub.l	er4,er4
.L996:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L997
	sub.l	er4,er4
.L997:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L998
	sub.l	er4,er4
.L998:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L999
	sub.l	er4,er4
.L999:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L1000
	sub.l	er4,er4
.L1000:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L1001
	sub.l	er4,er4
.L1001:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	blo	.L1002
	sub.l	er4,er4
.L1002:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er1,er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	blo	.L1003
	sub.l	er4,er4
.L1003:
	mov.l	er0,er5
	add.l	er0,er5
	mov.l	er5,er2
	mov.l	er4,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er2,er0
	and	#0,r0l
	sub.w	e0,e0
	mov.l	er0,@(72,er7)
	mov.l	er3,er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(76,er7)
	mov.l	@(64,er7),er2
	mov.l	@(72,er7),er3
	or.l	er3,er2
	mov.l	er2,@(80,er7)
	mov.l	@(68,er7),er2
	mov.l	@(76,er7),er3
	or.l	er3,er2
	mov.l	er2,@(84,er7)
	mov.l	@(140,er7),er2
	mov.l	er2,@(8,er7)
	mov.l	@(8,er7),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	er2,@(8,er7)
	sub.l	er2,er2
	mov.l	er2,@(12,er7)
	mov.l	@(8,er7),er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,@(128,er7)
	mov.l	@(12,er7),er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(132,er7)
	mov.l	@(128,er7),er2
	mov.l	er2,@(8,er7)
	mov.l	@(132,er7),er2
	mov.l	er2,@(12,er7)
	mov.l	@(80,er7),er2
	mov.l	@(8,er7),er3
	or.l	er3,er2
	mov.l	er2,@(88,er7)
	mov.l	@(84,er7),er2
	mov.l	@(12,er7),er3
	or.l	er3,er2
	mov.l	er2,@(92,er7)
	mov.l	@(140,er7),er2
	mov.l	er2,@(24,er7)
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,@(24,er7)
	sub.l	er2,er2
	mov.l	er2,@(28,er7)
	mov.l	@(88,er7),er2
	mov.l	@(24,er7),er3
	or.l	er3,er2
	mov.l	er2,@(96,er7)
	mov.l	@(92,er7),er2
	mov.l	@(28,er7),er3
	or.l	er3,er2
	mov.l	er2,@(100,er7)
	mov.l	@(96,er7),er0
	mov.l	@(100,er7),er1
	add.l	#144,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___bswapdi2, .-___bswapdi2
	.align 1
	.global ___bswapsi2
___bswapsi2:
	subs	#4,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@er7,er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	and	#0,r2l
	sub.w	e2,e2
	or.l	er2,er3
	mov.l	@er7,er2
	mov.w	e2,r0
	mov.b	r0l,r0h
	mov.b	r2h,r0l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r0,e2
	sub.w	r2,r2
	extu.w	e2
	or.l	er2,er3
	mov.l	er3,er0
	mov.l	@er7,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	er0,er2
	or.l	er3,er2
	mov.l	er2,er0
	adds	#4,er7
	rts
	.size	___bswapsi2, .-___bswapsi2
	.align 1
	.global ___clzsi2
___clzsi2:
	sub.l	#56,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	er2,@(52,er7)
	mov.l	@(52,er7),er2
	cmp.l	#65535,er2
	bhi	.L1008
	sub.l	er2,er2
	add.b	#16,r2l
	bra	.L1009
.L1008:
	sub.l	er2,er2
.L1009:
	mov.l	er2,@(48,er7)
	mov.l	@(48,er7),er2
	mov.w	#16,r3
	sub.w	r2,r3
	mov.l	@(52,er7),er2
	mov.b	r3l,r0l
	ble	.L1019
.L1018:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1018
.L1019:
	mov.l	er2,@(44,er7)
	mov.l	@(48,er7),er2
	mov.l	er2,@(40,er7)
	mov.l	@(44,er7),er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,er2
	bne	.L1010
	sub.l	er2,er2
	add.b	#8,r2l
	bra	.L1011
.L1010:
	sub.l	er2,er2
.L1011:
	mov.l	er2,@(36,er7)
	mov.l	@(36,er7),er2
	mov.w	#8,r3
	sub.w	r2,r3
	mov.l	@(44,er7),er2
	mov.b	r3l,r0l
	ble	.L1021
.L1020:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1020
.L1021:
	mov.l	er2,@(32,er7)
	mov.l	@(40,er7),er3
	mov.l	@(36,er7),er2
	add.l	er3,er2
	mov.l	er2,@(28,er7)
	mov.l	@(32,er7),er2
	and.l	#240,er2
	mov.l	er2,er2
	bne	.L1012
	sub.l	er2,er2
	add.b	#4,r2l
	bra	.L1013
.L1012:
	sub.l	er2,er2
.L1013:
	mov.l	er2,@(24,er7)
	mov.l	@(24,er7),er2
	mov.w	#4,r3
	sub.w	r2,r3
	mov.l	@(32,er7),er2
	mov.b	r3l,r0l
	ble	.L1023
.L1022:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1022
.L1023:
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er3
	mov.l	@(24,er7),er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(20,er7),er2
	and.l	#12,er2
	mov.l	er2,er2
	bne	.L1014
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1015
.L1014:
	sub.l	er2,er2
.L1015:
	mov.l	er2,@(12,er7)
	mov.l	@(12,er7),er2
	mov.w	#2,r3
	sub.w	r2,r3
	mov.l	@(20,er7),er2
	mov.b	r3l,r0l
	ble	.L1025
.L1024:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1024
.L1025:
	mov.l	er2,@(8,er7)
	mov.l	@(16,er7),er3
	mov.l	@(12,er7),er2
	add.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.l	@(8,er7),er2
	and.l	#2,er2
	mov.l	er2,er3
	mov.w	#1,r2
	mov.l	er3,er3
	beq	.L1016
	sub.w	r2,r2
.L1016:
	mov.w	r2,r0
	sub.l	er2,er2
	add.b	#2,r2l
	mov.l	@(8,er7),er3
	sub.l	er3,er2
	mov.w	r0,r3
	mulxu.w	r2,er3
	mov.l	@(4,er7),er2
	add.w	r3,r2
	mov.w	r2,r0
	add.l	#56,er7
	rts
	.size	___clzsi2, .-___clzsi2
	.align 1
	.global ___cmpdi2
___cmpdi2:
	sub.l	#24,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er2
	mov.l	er2,@(16,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er2
	mov.l	er2,@(8,er7)
	mov.l	@(32,er7),er2
	mov.l	er2,@(12,er7)
	mov.l	@(16,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	bge	.L1027
	sub.l	er2,er2
	bra	.L1032
.L1027:
	mov.l	@(16,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	ble	.L1029
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1032
.L1029:
	mov.l	@(20,er7),er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	bhs	.L1030
	sub.l	er2,er2
	bra	.L1032
.L1030:
	mov.l	@(20,er7),er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	bls	.L1031
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1032
.L1031:
	sub.l	er2,er2
	add.b	#1,r2l
.L1032:
	mov.l	er2,er0
	add.l	#24,er7
	rts
	.size	___cmpdi2, .-___cmpdi2
	.align 1
	.global ___aeabi_lcmp
___aeabi_lcmp:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	@(8,er7),er2
	mov.l	@(12,er7),er3
	mov.l	@(20,er7),er0
	mov.l	er0,@er7
	mov.l	@(24,er7),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___cmpdi2
	mov.l	er0,er2
	subs	#1,er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 1
	.global ___ctzsi2
___ctzsi2:
	sub.l	#60,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	er2,@(56,er7)
	mov.l	@(56,er7),er2
	sub.w	e2,e2
	mov.l	er2,er2
	bne	.L1036
	sub.l	er2,er2
	add.b	#16,r2l
	bra	.L1037
.L1036:
	sub.l	er2,er2
.L1037:
	mov.l	er2,@(52,er7)
	mov.l	@(52,er7),er2
	mov.b	r2l,r3l
	mov.l	@(56,er7),er2
	mov.b	r3l,r0l
	ble	.L1046
.L1045:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1045
.L1046:
	mov.l	er2,@(48,er7)
	mov.l	@(52,er7),er2
	mov.l	er2,@(44,er7)
	mov.l	@(48,er7),er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er2
	bne	.L1038
	sub.l	er2,er2
	add.b	#8,r2l
	bra	.L1039
.L1038:
	sub.l	er2,er2
.L1039:
	mov.l	er2,@(40,er7)
	mov.l	@(40,er7),er2
	mov.b	r2l,r3l
	mov.l	@(48,er7),er2
	mov.b	r3l,r0l
	ble	.L1048
.L1047:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1047
.L1048:
	mov.l	er2,@(36,er7)
	mov.l	@(44,er7),er3
	mov.l	@(40,er7),er2
	add.l	er3,er2
	mov.l	er2,@(32,er7)
	mov.l	@(36,er7),er2
	and.l	#15,er2
	mov.l	er2,er2
	bne	.L1040
	sub.l	er2,er2
	add.b	#4,r2l
	bra	.L1041
.L1040:
	sub.l	er2,er2
.L1041:
	mov.l	er2,@(28,er7)
	mov.l	@(28,er7),er2
	mov.b	r2l,r3l
	mov.l	@(36,er7),er2
	mov.b	r3l,r0l
	ble	.L1050
.L1049:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1049
.L1050:
	mov.l	er2,@(24,er7)
	mov.l	@(32,er7),er3
	mov.l	@(28,er7),er2
	add.l	er3,er2
	mov.l	er2,@(20,er7)
	mov.l	@(24,er7),er2
	and.l	#3,er2
	mov.l	er2,er2
	bne	.L1042
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1043
.L1042:
	sub.l	er2,er2
.L1043:
	mov.l	er2,@(16,er7)
	mov.l	@(16,er7),er2
	mov.b	r2l,r3l
	mov.l	@(24,er7),er2
	mov.b	r3l,r0l
	ble	.L1052
.L1051:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1051
.L1052:
	mov.l	er2,@(12,er7)
	mov.l	@(12,er7),er2
	and.l	#3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(20,er7),er3
	mov.l	@(16,er7),er2
	add.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.l	@(8,er7),er2
	not.l	er2
	mov.l	er2,er0
	mov.l	@(8,er7),er2
	shlr.l	er2
	mov.l	er2,er3
	sub.l	er2,er2
	add.b	#2,r2l
	sub.l	er3,er2
	mov.w	r0,r3
	and.w	#1,r3
	neg.w	r3
	and.w	r2,r3
	mov.l	@(4,er7),er2
	add.w	r3,r2
	mov.w	r2,r0
	add.l	#60,er7
	rts
	.size	___ctzsi2, .-___ctzsi2
	.align 1
	.global ___lshrdi3
___lshrdi3:
	sub.l	#32,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@(8,er7)
	mov.w	r2,@(2,er7)
	mov.w	#32,r2
	mov.w	r2,@(30,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	@(8,er7),er2
	mov.l	er2,@(24,er7)
	mov.w	@(2,er7),r3
	mov.w	@(30,er7),r2
	and.w	r3,r2
	mov.w	r2,r2
	beq	.L1054
	sub.l	er2,er2
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er0
	mov.w	@(2,er7),r3
	mov.w	@(30,er7),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L1060
.L1059:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1059
.L1060:
	mov.l	er2,@(16,er7)
	bra	.L1055:16
.L1054:
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	bne	.L1056
	mov.l	@(4,er7),er2
	mov.l	@(8,er7),er3
	bra	.L1058
.L1056:
	mov.l	@(20,er7),er2
	mov.w	@(2,er7),r3
	mov.b	r3l,r0l
	ble	.L1062
.L1061:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1061
.L1062:
	mov.l	er2,@(12,er7)
	mov.l	@(20,er7),er0
	mov.w	@(30,er7),r2
	mov.w	@(2,er7),r3
	sub.w	r3,r2
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L1064
.L1063:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1063
.L1064:
	mov.l	@(24,er7),er2
	mov.w	@(2,er7),r0
	mov.b	r0l,r1l
	ble	.L1066
.L1065:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1065
.L1066:
	or.l	er3,er2
	mov.l	er2,@(16,er7)
.L1055:
	mov.l	@(12,er7),er2
	mov.l	@(16,er7),er3
.L1058:
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#32,er7
	rts
	.size	___lshrdi3, .-___lshrdi3
	.align 1
	.global ___muldsi3
___muldsi3:
	mov.l	er4,@-er7
	sub.l	#40,er7
	mov.l	er0,@(4,er7)
	mov.l	er1,@er7
	mov.w	#16,r2
	mov.w	r2,@(38,er7)
	mov.w	@(38,er7),r3
	sub.l	er2,er2
	subs	#1,er2
	mov.b	r3l,r0l
	ble	.L1070
.L1069:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1069
.L1070:
	mov.l	er2,@(32,er7)
	mov.l	@(4,er7),er3
	mov.l	@(32,er7),er2
	and.l	er2,er3
	mov.l	er3,er0
	mov.l	@er7,er3
	mov.l	@(32,er7),er2
	and.l	er3,er2
	mov.l	er2,er1
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,@(12,er7)
	mov.l	@(12,er7),er2
	mov.w	@(38,er7),r3
	mov.b	r3l,r0l
	ble	.L1072
.L1071:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1071
.L1072:
	mov.l	er2,@(28,er7)
	mov.l	@(12,er7),er2
	mov.l	@(32,er7),er3
	and.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.w	@(38,er7),r3
	mov.l	@(4,er7),er2
	mov.b	r3l,r0l
	ble	.L1074
.L1073:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1073
.L1074:
	mov.l	@er7,er0
	mov.l	@(32,er7),er3
	and.l	er0,er3
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(28,er7),er2
	add.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(12,er7),er0
	mov.l	@(24,er7),er3
	mov.l	@(32,er7),er2
	and.l	er3,er2
	mov.w	@(38,er7),r3
	mov.b	r3l,r1l
	ble	.L1076
.L1075:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L1075
.L1076:
	add.l	er0,er2
	mov.l	er2,@(12,er7)
	mov.w	@(38,er7),r3
	mov.l	@(24,er7),er2
	mov.b	r3l,r0l
	ble	.L1078
.L1077:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1077
.L1078:
	mov.l	er2,@(8,er7)
	mov.l	@(12,er7),er2
	mov.w	@(38,er7),r3
	mov.b	r3l,r0l
	ble	.L1080
.L1079:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1079
.L1080:
	mov.l	er2,@(20,er7)
	mov.l	@(12,er7),er2
	mov.l	@(32,er7),er3
	and.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.w	@(38,er7),r3
	mov.l	@er7,er2
	mov.b	r3l,r0l
	ble	.L1082
.L1081:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1081
.L1082:
	mov.l	@(4,er7),er0
	mov.l	@(32,er7),er3
	and.l	er0,er3
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(20,er7),er2
	add.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(12,er7),er0
	mov.l	@(16,er7),er3
	mov.l	@(32,er7),er2
	and.l	er3,er2
	mov.w	@(38,er7),r3
	mov.b	r3l,r1l
	ble	.L1084
.L1083:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L1083
.L1084:
	add.l	er0,er2
	mov.l	er2,@(12,er7)
	mov.l	@(8,er7),er0
	mov.w	@(38,er7),r3
	mov.l	@(16,er7),er2
	mov.b	r3l,r1l
	ble	.L1086
.L1085:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1085
.L1086:
	add.l	er0,er2
	mov.l	er2,@(8,er7)
	mov.l	@(8,er7),er4
	mov.w	@(38,er7),r3
	mov.l	@(4,er7),er2
	mov.b	r3l,r0l
	ble	.L1088
.L1087:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1087
.L1088:
	mov.w	@(38,er7),r0
	mov.l	@er7,er3
	mov.b	r0l,r1l
	ble	.L1090
.L1089:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1089
.L1090:
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er2,@(8,er7)
	mov.l	@(8,er7),er2
	mov.l	@(12,er7),er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#40,er7
	mov.l	@er7+,er4
	rts
	.size	___muldsi3, .-___muldsi3
	.align 1
	.global ___muldi3_compiler_rt
___muldi3_compiler_rt:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#32,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er2
	mov.l	er2,@(24,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,@(28,er7)
	mov.l	@(44,er7),er2
	mov.l	er2,@(16,er7)
	mov.l	@(48,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	@(20,er7),er3
	mov.l	@(28,er7),er2
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___muldsi3
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,@(8,er7)
	mov.l	er3,@(12,er7)
	mov.l	@(8,er7),er4
	mov.l	@(24,er7),er2
	mov.l	@(20,er7),er3
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er5
	mov.l	@(28,er7),er2
	mov.l	@(16,er7),er3
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	add.l	er5,er2
	add.l	er4,er2
	mov.l	er2,@(8,er7)
	mov.l	@(8,er7),er2
	mov.l	@(12,er7),er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#32,er7
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
	sub.l	#8,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er4
	mov.l	@(4,er7),er5
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er1,er6
	sub.l	er5,er6
	mov.l	er6,er3
	sub.l	er6,er6
	add.b	#1,r6l
	cmp.l	er1,er3
	bhi	.L1094
	sub.l	er6,er6
.L1094:
	sub.l	er4,er0
	mov.l	er0,er2
	mov.l	er2,er0
	sub.l	er6,er0
	mov.l	er0,er2
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#8,er7
	mov.l	@er7+,er6
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___negdi2, .-___negdi2
	.align 1
	.global ___paritydi2
___paritydi2:
	sub.l	#32,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er2
	mov.l	er2,@(8,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,@(12,er7)
	mov.l	@(8,er7),er3
	mov.l	@(12,er7),er2
	xor.l	er3,er2
	mov.l	er2,@(28,er7)
	mov.l	@(28,er7),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(28,er7),er2
	xor.l	er3,er2
	mov.l	er2,@(24,er7)
	mov.l	@(24,er7),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	@(24,er7),er3
	xor.l	er3,er2
	mov.l	er2,@(20,er7)
	mov.l	@(20,er7),er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(20,er7),er2
	xor.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(16,er7),er2
	mov.w	r2,r3
	and.w	#15,r3
	mov.w	#27030,r2
	mov.b	r3l,r0l
	ble	.L1099
.L1098:
	shar.w	r2
	add.b	#-1,r0l
	bne	.L1098
.L1099:
	and.w	#1,r2
	mov.w	r2,r0
	add.l	#32,er7
	rts
	.size	___paritydi2, .-___paritydi2
	.align 1
	.global ___paritysi2
___paritysi2:
	sub.l	#20,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	er2,@(16,er7)
	mov.l	@(16,er7),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(16,er7),er2
	xor.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.l	@(12,er7),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	@(12,er7),er3
	xor.l	er3,er2
	mov.l	er2,@(8,er7)
	mov.l	@(8,er7),er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	xor.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.l	@(4,er7),er2
	mov.w	r2,r3
	and.w	#15,r3
	mov.w	#27030,r2
	mov.b	r3l,r0l
	ble	.L1103
.L1102:
	shar.w	r2
	add.b	#-1,r0l
	bne	.L1102
.L1103:
	and.w	#1,r2
	mov.w	r2,r0
	add.l	#20,er7
	rts
	.size	___paritysi2, .-___paritysi2
	.align 1
	.global ___popcountdi2
___popcountdi2:
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#96,er7
	mov.l	er0,@(48,er7)
	mov.l	er1,@(52,er7)
	mov.l	@(48,er7),er2
	mov.l	er2,@(88,er7)
	mov.l	@(52,er7),er2
	mov.l	er2,@(92,er7)
	mov.l	@(88,er7),er2
	shlr.l	er2
	xor.l	er2,er2
	rotxr.l	er2
	mov.l	er2,er3
	mov.l	@(92,er7),er2
	shlr.l	er2
	mov.l	er2,er5
	or.l	er3,er5
	mov.l	@(88,er7),er2
	shlr.l	er2
	mov.l	er2,er4
	mov.l	er4,er2
	and.l	#1431655765,er2
	mov.l	er2,@(24,er7)
	mov.l	er5,er2
	and.l	#1431655765,er2
	mov.l	er2,@(28,er7)
	mov.l	@(88,er7),er0
	mov.l	@(92,er7),er1
	mov.l	er1,er4
	mov.l	@(28,er7),er5
	sub.l	er5,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	bhi	.L1105
	sub.l	er4,er4
.L1105:
	mov.l	@(24,er7),er1
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,er0
	sub.l	er4,er0
	mov.l	er0,er2
	mov.l	er2,@(80,er7)
	mov.l	er3,@(84,er7)
	mov.l	@(80,er7),er2
	sub.w	e2,e2
	rotr.l	er2
	rotr.l	er2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@(84,er7),er2
	mov.l	er2,@(12,er7)
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(12,er7)
	mov.l	@(12,er7),er2
	or.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.l	@(80,er7),er2
	mov.l	er2,@(8,er7)
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(8,er7)
	mov.l	@(8,er7),er2
	and.l	#858993459,er2
	mov.l	er2,@(16,er7)
	mov.l	@(12,er7),er2
	and.l	#858993459,er2
	mov.l	er2,@(20,er7)
	mov.l	@(80,er7),er2
	and.l	#858993459,er2
	mov.l	er2,@(32,er7)
	mov.l	@(84,er7),er2
	and.l	#858993459,er2
	mov.l	er2,@(36,er7)
	mov.l	@(20,er7),er0
	mov.l	@(36,er7),er1
	add.l	er1,er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(20,er7),er1
	cmp.l	er1,er3
	blo	.L1106
	sub.l	er0,er0
.L1106:
	mov.l	@(16,er7),er1
	mov.l	@(32,er7),er4
	add.l	er4,er1
	mov.l	er1,er2
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er2,@(72,er7)
	mov.l	er3,@(76,er7)
	mov.l	@(72,er7),er2
	sub.w	e2,e2
	rotr.l	er2
	rotr.l	er2
	rotr.l	er2
	rotr.l	er2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@(76,er7),er2
	mov.l	er2,@(4,er7)
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(4,er7)
	mov.l	@(4,er7),er2
	or.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.l	@(72,er7),er2
	mov.l	er2,@er7
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@er7
	mov.l	@(72,er7),er2
	mov.l	@(76,er7),er3
	mov.l	@(4,er7),er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	@(4,er7),er5
	cmp.l	er5,er1
	blo	.L1107
	sub.l	er4,er4
.L1107:
	mov.l	@er7,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	and.l	#252645135,er0
	mov.l	er0,@(64,er7)
	mov.l	er3,er2
	and.l	#252645135,er2
	mov.l	er2,@(68,er7)
	mov.l	@(68,er7),er2
	mov.l	@(64,er7),er3
	mov.l	er3,@(44,er7)
	sub.l	er3,er3
	mov.l	er3,@(40,er7)
	mov.l	@(44,er7),er3
	add.l	er3,er2
	mov.l	er2,@(60,er7)
	mov.l	@(60,er7),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(60,er7),er2
	add.l	er3,er2
	mov.l	er2,@(56,er7)
	mov.l	@(56,er7),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	@(56,er7),er3
	add.w	r3,r2
	and.w	#127,r2
	mov.w	r2,r0
	add.l	#96,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	rts
	.size	___popcountdi2, .-___popcountdi2
	.align 1
	.global ___popcountsi2
___popcountsi2:
	sub.l	#24,er7
	mov.l	er0,@er7
	mov.l	@er7,er2
	mov.l	er2,@(20,er7)
	mov.l	@(20,er7),er2
	shlr.l	er2
	mov.l	er2,er3
	and.l	#1431655765,er3
	mov.l	@(20,er7),er2
	sub.l	er3,er2
	mov.l	er2,@(16,er7)
	mov.l	@(16,er7),er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	and.l	#858993459,er3
	mov.l	@(16,er7),er2
	and.l	#858993459,er2
	add.l	er3,er2
	mov.l	er2,@(12,er7)
	mov.l	@(12,er7),er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(12,er7),er2
	add.l	er3,er2
	and.l	#252645135,er2
	mov.l	er2,@(8,er7)
	mov.l	@(8,er7),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(8,er7),er2
	add.l	er3,er2
	mov.l	er2,@(4,er7)
	mov.l	@(4,er7),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	@(4,er7),er3
	add.w	r3,r2
	and.w	#63,r2
	mov.w	r2,r0
	add.l	#24,er7
	rts
	.size	___popcountsi2, .-___popcountsi2
	.align 1
	.global ___powidf2
___powidf2:
	sub.l	#16,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	@(2,er7),r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,r3
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,@(10,er7)
	mov.l	#1065353216,er2
	mov.l	er2,@(12,er7)
.L1116:
	mov.w	@(2,er7),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L1112
	mov.l	@(4,er7),er1
	mov.l	@(12,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(12,er7)
.L1112:
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L1113
	inc #1,r2
.L1113:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(2,er7)
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L1120
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(4,er7)
	bra	.L1116
.L1120:
	mov.w	@(10,er7),r2
	mov.w	r2,r2
	beq	.L1117
	mov.l	@(12,er7),er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er2
	bra	.L1119
.L1117:
	mov.l	@(12,er7),er2
.L1119:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	___powidf2, .-___powidf2
	.align 1
	.global ___powisf2
___powisf2:
	sub.l	#16,er7
	mov.l	er0,@(4,er7)
	mov.w	r1,@(2,er7)
	mov.w	@(2,er7),r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,r3
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,@(10,er7)
	mov.l	#1065353216,er2
	mov.l	er2,@(12,er7)
.L1127:
	mov.w	@(2,er7),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L1123
	mov.l	@(4,er7),er1
	mov.l	@(12,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(12,er7)
.L1123:
	mov.w	@(2,er7),r2
	cmp.w	#-1,r2
	bgt	.L1124
	inc #1,r2
.L1124:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(2,er7)
	mov.w	@(2,er7),r2
	mov.w	r2,r2
	beq	.L1131
	mov.l	@(4,er7),er1
	mov.l	@(4,er7),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(4,er7)
	bra	.L1127
.L1131:
	mov.w	@(10,er7),r2
	mov.w	r2,r2
	beq	.L1128
	mov.l	@(12,er7),er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er2
	bra	.L1130
.L1128:
	mov.l	@(12,er7),er2
.L1130:
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	___powisf2, .-___powisf2
	.align 1
	.global ___ucmpdi2
___ucmpdi2:
	sub.l	#24,er7
	mov.l	er0,@er7
	mov.l	er1,@(4,er7)
	mov.l	@er7,er2
	mov.l	er2,@(16,er7)
	mov.l	@(4,er7),er2
	mov.l	er2,@(20,er7)
	mov.l	@(28,er7),er2
	mov.l	er2,@(8,er7)
	mov.l	@(32,er7),er2
	mov.l	er2,@(12,er7)
	mov.l	@(16,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	bhs	.L1134
	sub.l	er2,er2
	bra	.L1139
.L1134:
	mov.l	@(16,er7),er3
	mov.l	@(8,er7),er2
	cmp.l	er2,er3
	bls	.L1136
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1139
.L1136:
	mov.l	@(20,er7),er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	bhs	.L1137
	sub.l	er2,er2
	bra	.L1139
.L1137:
	mov.l	@(20,er7),er3
	mov.l	@(12,er7),er2
	cmp.l	er2,er3
	bls	.L1138
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1139
.L1138:
	sub.l	er2,er2
	add.b	#1,r2l
.L1139:
	mov.l	er2,er0
	add.l	#24,er7
	rts
	.size	___ucmpdi2, .-___ucmpdi2
	.align 1
	.global ___aeabi_ulcmp
___aeabi_ulcmp:
	sub.l	#16,er7
	mov.l	er0,@(8,er7)
	mov.l	er1,@(12,er7)
	mov.l	@(8,er7),er2
	mov.l	@(12,er7),er3
	mov.l	@(20,er7),er0
	mov.l	er0,@er7
	mov.l	@(24,er7),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___ucmpdi2
	mov.l	er0,er2
	subs	#1,er2
	mov.l	er2,er0
	add.l	#16,er7
	rts
	.size	___aeabi_ulcmp, .-___aeabi_ulcmp
	.local	_s___0
	.comm	_s___0,7,1
	.global ___fixsfsi
	.global ___floatundisf
	.global ___floatunsisf
	.global ___clzdi2
	.global ___clzsi2
	.global ___divsf3
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
