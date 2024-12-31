	.file	"mini-libc.c"
	.h8300h
	.section .text
	.align 1
	.global _memmove
_memmove:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	cmp.l	er2,er3
	bhs	.L2
	mov.l	@(-8,er6),er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
	bra	.L3
.L4:
	mov.l	@(-8,er6),er2
	subs	#1,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er2
	subs	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-4,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
.L3:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	bne	.L4
	bra	.L5
.L2:
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	cmp.l	er2,er3
	beq	.L5
	bra	.L6
.L7:
	mov.l	@(-8,er6),er3
	mov.l	er3,er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	adds	#1,er0
	mov.l	er0,@(-4,er6)
	mov.b	@er3,r3l
	mov.b	r3l,@er2
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
.L6:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	bne	.L7
.L5:
	mov.l	@(-12,er6),er2
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_memmove, .-_memmove
	.align 1
	.global _memccpy
_memccpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.w	r2,@(-18,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	mov.w	@(-18,er6),r2
	extu.w	r2
	mov.w	r2,@(-18,er6)
	bra	.L10
.L12:
	mov.l	@(8,er6),er2
	subs	#1,er2
	mov.l	er2,@(8,er6)
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
.L10:
	mov.l	@(8,er6),er2
	mov.l	er2,er2
	beq	.L11
	mov.l	@(-8,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-4,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(-18,er6),r3
	cmp.w	r2,r3
	bne	.L12
.L11:
	mov.l	@(8,er6),er2
	mov.l	er2,er2
	beq	.L13
	mov.l	@(-4,er6),er2
	adds	#1,er2
	bra	.L14
.L13:
	sub.l	er2,er2
.L14:
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_memccpy, .-_memccpy
	.align 1
	.global _memchr
_memchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.l	er2,@(-16,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	mov.w	@(-10,er6),r2
	extu.w	r2
	mov.w	r2,@(-10,er6)
	bra	.L16
.L18:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	subs	#1,er2
	mov.l	er2,@(-16,er6)
.L16:
	mov.l	@(-16,er6),er2
	mov.l	er2,er2
	beq	.L17
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(-10,er6),r3
	cmp.w	r2,r3
	bne	.L18
.L17:
	mov.l	@(-16,er6),er2
	mov.l	er2,er2
	beq	.L19
	mov.l	@(-4,er6),er2
	bra	.L21
.L19:
	sub.l	er2,er2
.L21:
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_memchr, .-_memchr
	.align 1
	.global _memcmp
_memcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	bra	.L23
.L25:
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
.L23:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	beq	.L24
	mov.l	@(-4,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	beq	.L25
.L24:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	beq	.L26
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r0l
	extu.w	r0
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r3l
	extu.w	r3
	mov.w	r0,r2
	sub.w	r3,r2
	bra	.L28
.L26:
	sub.w	r2,r2
.L28:
	mov.w	r2,r0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_memcmp, .-_memcmp
	.align 1
	.global _memcpy
_memcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	bra	.L30
.L31:
	mov.l	@(-8,er6),er3
	mov.l	er3,er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	adds	#1,er0
	mov.l	er0,@(-4,er6)
	mov.b	@er3,r3l
	mov.b	r3l,@er2
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
.L30:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	bne	.L31
	mov.l	@(-12,er6),er2
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_memcpy, .-_memcpy
	.align 1
	.global _memrchr
_memrchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.l	er2,@(-16,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	mov.w	@(-10,er6),r2
	extu.w	r2
	mov.w	r2,@(-10,er6)
	bra	.L34
.L36:
	mov.l	@(-4,er6),er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(-10,er6),r3
	cmp.w	r2,r3
	bne	.L34
	mov.l	@(-4,er6),er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	bra	.L35
.L34:
	mov.l	@(-16,er6),er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@(-16,er6)
	mov.l	er2,er2
	bne	.L36
	sub.l	er2,er2
.L35:
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_memrchr, .-_memrchr
	.align 1
	.global _memset
_memset:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.l	er2,@(-16,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	bra	.L38
.L39:
	mov.w	@(-10,er6),r2
	mov.b	r2l,r3l
	mov.l	@(-4,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-16,er6),er2
	subs	#1,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
.L38:
	mov.l	@(-16,er6),er2
	mov.l	er2,er2
	bne	.L39
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_memset, .-_memset
	.align 1
	.global _stpcpy
_stpcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	bra	.L42
.L43:
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
.L42:
	mov.l	@(-8,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-4,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L43
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_stpcpy, .-_stpcpy
	.align 1
	.global _strchrnul
_strchrnul:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	mov.w	@(-6,er6),r2
	extu.w	r2
	mov.w	r2,@(-6,er6)
	bra	.L46
.L48:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
.L46:
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	beq	.L47
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	@(-6,er6),r3
	cmp.w	r2,r3
	bne	.L48
.L47:
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_strchrnul, .-_strchrnul
	.align 1
	.global _strchr
_strchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.l	er0,er2
	mov.w	r1,@(-2,er6)
.L53:
	mov.b	@er2,r3l
	extu.w	r3
	mov.w	@(-2,er6),r0
	cmp.w	r3,r0
	bne	.L51
	bra	.L52
.L51:
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
	mov.l	@er7+,er6
	rts
	.size	_strchr, .-_strchr
	.align 1
	.global _strcmp
_strcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	bra	.L55
.L57:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
.L55:
	mov.l	@(-4,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	bne	.L56
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L57
.L56:
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r3l
	extu.w	r3
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	sub.w	r2,r3
	mov.w	r3,r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_strcmp, .-_strcmp
	.align 1
	.global _strlen
_strlen:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	bra	.L60
.L61:
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
.L60:
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L61
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	sub.l	er2,er3
	mov.l	er3,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_strlen, .-_strlen
	.align 1
	.global _strncmp
_strncmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@(-20,er6)
	mov.l	er2,er2
	bne	.L66
	sub.w	r2,r2
	bra	.L65:16
.L68:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
.L66:
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	beq	.L67
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	beq	.L67
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	beq	.L67
	mov.l	@(-4,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	beq	.L68
.L67:
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r0l
	extu.w	r0
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r3l
	extu.w	r3
	mov.w	r0,r2
	sub.w	r3,r2
.L65:
	mov.w	r2,r0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_strncmp, .-_strncmp
	.align 1
	.global _swab
_swab:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	bra	.L70
.L71:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.b	@er2,r3l
	mov.l	@(-8,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,@er3
	mov.l	@(-8,er6),er2
	adds	#2,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er2
	adds	#2,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-20,er6),er2
	subs	#2,er2
	mov.l	er2,@(-20,er6)
.L70:
	mov.l	@(-20,er6),er2
	cmp.l	#1,er2
	bgt	.L71
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_swab, .-_swab
	.align 1
	.global _isalpha
_isalpha:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	or	#32,r2l
	add.w	#-97,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#25,r3
	bls	.L73
	sub.b	r2l,r2l
.L73:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isalpha, .-_isalpha
	.align 1
	.global _isascii
_isascii:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r3
	mov.b	#1,r2l
	cmp.w	#127,r3
	bls	.L76
	sub.b	r2l,r2l
.L76:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isascii, .-_isascii
	.align 1
	.global _isblank
_isblank:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	cmp.w	#32,r2
	beq	.L79
	mov.w	@(-2,er6),r2
	cmp.w	#9,r2
	bne	.L80
.L79:
	mov.w	#1,r2
	bra	.L82
.L80:
	sub.w	r2,r2
.L82:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isblank, .-_isblank
	.align 1
	.global _iscntrl
_iscntrl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	cmp.w	#31,r2
	bls	.L84
	mov.w	@(-2,er6),r2
	cmp.w	#127,r2
	bne	.L85
.L84:
	mov.w	#1,r2
	bra	.L87
.L85:
	sub.w	r2,r2
.L87:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_iscntrl, .-_iscntrl
	.align 1
	.global _isdigit
_isdigit:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	add.w	#-48,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#9,r3
	bls	.L89
	sub.b	r2l,r2l
.L89:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isdigit, .-_isdigit
	.align 1
	.global _isgraph
_isgraph:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	add.w	#-33,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#93,r3
	bls	.L92
	sub.b	r2l,r2l
.L92:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isgraph, .-_isgraph
	.align 1
	.global _islower
_islower:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	add.w	#-97,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#25,r3
	bls	.L95
	sub.b	r2l,r2l
.L95:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_islower, .-_islower
	.align 1
	.global _isprint
_isprint:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	add.w	#-32,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#94,r3
	bls	.L98
	sub.b	r2l,r2l
.L98:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isprint, .-_isprint
	.align 1
	.global _isspace
_isspace:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	cmp.w	#32,r2
	beq	.L101
	mov.w	@(-2,er6),r2
	add.w	#-9,r2
	cmp.w	#4,r2
	bhi	.L102
.L101:
	mov.w	#1,r2
	bra	.L104
.L102:
	sub.w	r2,r2
.L104:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isspace, .-_isspace
	.align 1
	.global _isupper
_isupper:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	add.w	#-65,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#25,r3
	bls	.L106
	sub.b	r2l,r2l
.L106:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_isupper, .-_isupper
	.align 1
	.global _iswcntrl
_iswcntrl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	cmp.w	#31,r2
	bls	.L109
	mov.w	@(-2,er6),r2
	add.w	#-127,r2
	cmp.w	#32,r2
	bls	.L109
	mov.w	@(-2,er6),r2
	add.w	#-8232,r2
	cmp.w	#1,r2
	bls	.L109
	mov.w	@(-2,er6),r2
	add.w	#7,r2
	cmp.w	#2,r2
	bhi	.L110
.L109:
	mov.w	#1,r2
	bra	.L112
.L110:
	sub.w	r2,r2
.L112:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_iswcntrl, .-_iswcntrl
	.align 1
	.global _iswdigit
_iswdigit:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	add.w	#-48,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#9,r3
	bls	.L114
	sub.b	r2l,r2l
.L114:
	extu.w	r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_iswdigit, .-_iswdigit
	.align 1
	.global _iswprint
_iswprint:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	cmp.w	#254,r2
	bhi	.L117
	mov.w	@(-2,er6),r2
	inc #1,r2
	and.w	#127,r2
	mov.w	r2,r3
	mov.b	#1,r2l
	cmp.w	#32,r3
	bhi	.L118
	sub.b	r2l,r2l
.L118:
	extu.w	r2
	bra	.L119
.L117:
	mov.w	@(-2,er6),r2
	cmp.w	#8231,r2
	bls	.L120
	mov.w	@(-2,er6),r2
	add.w	#-8234,r2
	cmp.w	#-18475,r2
	bls	.L120
	mov.w	@(-2,er6),r2
	add.b	#32,r2h
	cmp.w	#8184,r2
	bhi	.L121
.L120:
	mov.w	#1,r2
	bra	.L119
.L121:
	mov.w	@(-2,er6),r2
	and	#254,r2l
	cmp.w	#-2,r2
	bne	.L122
	sub.w	r2,r2
	bra	.L119
.L122:
	mov.w	#1,r2
.L119:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_iswprint, .-_iswprint
	.align 1
	.global _iswxdigit
_iswxdigit:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L124
	mov.w	@(-2,er6),r2
	or	#32,r2l
	add.w	#-97,r2
	cmp.w	#5,r2
	bhi	.L125
.L124:
	mov.w	#1,r2
	bra	.L127
.L125:
	sub.w	r2,r2
.L127:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_iswxdigit, .-_iswxdigit
	.align 1
	.global _toascii
_toascii:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	and.w	#127,r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_toascii, .-_toascii
	.align 1
	.global _fdim
_fdim:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L142
	mov.l	@(-4,er6),er2
	bra	.L133
.L142:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L143
	mov.l	@(-8,er6),er2
	bra	.L133
.L143:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L144
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___subsf3
	mov.l	er0,er2
	bra	.L133
.L144:
	sub.l	er2,er2
.L133:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_fdim, .-_fdim
	.align 1
	.global _fdimf
_fdimf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L157
	mov.l	@(-4,er6),er2
	bra	.L148
.L157:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L158
	mov.l	@(-8,er6),er2
	bra	.L148
.L158:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L159
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___subsf3
	mov.l	er0,er2
	bra	.L148
.L159:
	sub.l	er2,er2
.L148:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_fdimf, .-_fdimf
	.align 1
	.global _fmax
_fmax:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L175
	mov.l	@(-8,er6),er2
	bra	.L163:16
.L175:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L176
	mov.l	@(-4,er6),er2
	bra	.L163:16
.L176:
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@(-8,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L166
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L167
	mov.l	@(-8,er6),er2
	bra	.L163
.L167:
	mov.l	@(-4,er6),er2
	bra	.L163
.L166:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L177
	mov.l	@(-8,er6),er2
	bra	.L163
.L177:
	mov.l	@(-4,er6),er2
.L163:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_fmax, .-_fmax
	.align 1
	.global _fmaxf
_fmaxf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L193
	mov.l	@(-8,er6),er2
	bra	.L181:16
.L193:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L194
	mov.l	@(-4,er6),er2
	bra	.L181:16
.L194:
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@(-8,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L184
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L185
	mov.l	@(-8,er6),er2
	bra	.L181
.L185:
	mov.l	@(-4,er6),er2
	bra	.L181
.L184:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L195
	mov.l	@(-8,er6),er2
	bra	.L181
.L195:
	mov.l	@(-4,er6),er2
.L181:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_fmaxf, .-_fmaxf
	.align 1
	.global _fmaxl
_fmaxl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L211
	mov.l	@(-8,er6),er2
	bra	.L199:16
.L211:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L212
	mov.l	@(-4,er6),er2
	bra	.L199:16
.L212:
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@(-8,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L202
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L203
	mov.l	@(-8,er6),er2
	bra	.L199
.L203:
	mov.l	@(-4,er6),er2
	bra	.L199
.L202:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L213
	mov.l	@(-8,er6),er2
	bra	.L199
.L213:
	mov.l	@(-4,er6),er2
.L199:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_fmaxl, .-_fmaxl
	.align 1
	.global _fmin
_fmin:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L229
	mov.l	@(-8,er6),er2
	bra	.L217:16
.L229:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L230
	mov.l	@(-4,er6),er2
	bra	.L217:16
.L230:
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@(-8,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L220
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L221
	mov.l	@(-4,er6),er2
	bra	.L217
.L221:
	mov.l	@(-8,er6),er2
	bra	.L217
.L220:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L231
	mov.l	@(-4,er6),er2
	bra	.L217
.L231:
	mov.l	@(-8,er6),er2
.L217:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_fmin, .-_fmin
	.align 1
	.global _fminf
_fminf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L247
	mov.l	@(-8,er6),er2
	bra	.L235:16
.L247:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L248
	mov.l	@(-4,er6),er2
	bra	.L235:16
.L248:
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@(-8,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L238
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L239
	mov.l	@(-4,er6),er2
	bra	.L235
.L239:
	mov.l	@(-8,er6),er2
	bra	.L235
.L238:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L249
	mov.l	@(-4,er6),er2
	bra	.L235
.L249:
	mov.l	@(-8,er6),er2
.L235:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_fminf, .-_fminf
	.align 1
	.global _fminl
_fminl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L265
	mov.l	@(-8,er6),er2
	bra	.L253:16
.L265:
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L266
	mov.l	@(-4,er6),er2
	bra	.L253:16
.L266:
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@(-8,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	cmp.w	r2,r0
	beq	.L256
	mov.l	@(-4,er6),er2
	shll.l	er2
	xor.l	er2,er2
	rotxl.l	er2
	mov.l	er2,er3
	mov.w	r3,r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L257
	mov.l	@(-4,er6),er2
	bra	.L253
.L257:
	mov.l	@(-8,er6),er2
	bra	.L253
.L256:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L267
	mov.l	@(-4,er6),er2
	bra	.L253
.L267:
	mov.l	@(-8,er6),er2
.L253:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
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
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-12,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	#_s___0,er2
	mov.l	er2,@(-4,er6)
	bra	.L269
.L270:
	mov.l	@(-8,er6),er2
	and.l	#63,er2
	mov.b	@(_digits,er2),r3l
	mov.l	@(-4,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(-8,er6)
.L269:
	mov.l	@(-8,er6),er2
	mov.l	er2,er2
	bne	.L270
	mov.l	@(-4,er6),er2
	sub.b	r3l,r3l
	mov.b	r3l,@er2
	mov.l	#_s___0,er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
	.align 1
	.global _srand
_srand:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r0
	dec #1,r0
	extu.l	er0
	mov.l	er0,er3
	sub.l	er2,er2
	mov.l	er2,@_seed:32
	mov.l	er3,@_seed+4:32
	nop
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_srand, .-_srand
	.align 1
	.global _rand
_rand:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#24,er7
	mov.l	@_seed:32,er2
	mov.l	@_seed+4:32,er3
	mov.l	#1481765933,er1
	mov.l	#1284865837,er0
	mov.l	er1,@er7
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(-12,er6)
	mov.l	er5,er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,er1
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,er3
	cmp.l	er5,er1
	blo	.L274
	sub.l	er2,er2
	mov.l	er2,er3
.L274:
	mov.l	er4,er2
	mov.l	@(-16,er6),er4
	add.l	er4,er2
	mov.l	er2,er0
	mov.l	er3,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,@_seed:32
	mov.l	er3,@_seed+4:32
	mov.l	@_seed:32,er2
	mov.l	er2,@(-20,er6)
	shlr.l	er2
	mov.l	er2,@(-20,er6)
	sub.l	er2,er2
	mov.l	er2,@(-24,er6)
	mov.w	@(-18,er6),r2
	mov.w	r2,r0
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rand, .-_rand
	.align 1
	.global _insque
_insque:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er2
	bne	.L277
	mov.l	@(-4,er6),er2
	sub.l	er3,er3
	mov.l	er3,@(4,er2)
	mov.l	@(-4,er6),er2
	mov.l	@(4,er2),er3
	mov.l	@(-4,er6),er2
	mov.l	er3,@er2
	bra	.L276
.L277:
	mov.l	@(-8,er6),er2
	mov.l	@er2,er3
	mov.l	@(-4,er6),er2
	mov.l	er3,@er2
	mov.l	@(-4,er6),er2
	mov.l	@(-8,er6),er3
	mov.l	er3,@(4,er2)
	mov.l	@(-8,er6),er2
	mov.l	@(-4,er6),er3
	mov.l	er3,@er2
	mov.l	@(-4,er6),er2
	mov.l	@er2,er2
	mov.l	er2,er2
	beq	.L276
	mov.l	@(-4,er6),er2
	mov.l	@er2,er2
	mov.l	@(-4,er6),er3
	mov.l	er3,@(4,er2)
.L276:
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_insque, .-_insque
	.align 1
	.global _remque
_remque:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.l	@er2,er2
	mov.l	er2,er2
	beq	.L280
	mov.l	@(-4,er6),er2
	mov.l	@er2,er2
	mov.l	@(-4,er6),er3
	mov.l	@(4,er3),er3
	mov.l	er3,@(4,er2)
.L280:
	mov.l	@(-4,er6),er2
	mov.l	@(4,er2),er2
	mov.l	er2,er2
	beq	.L279
	mov.l	@(-4,er6),er2
	mov.l	@(4,er2),er2
	mov.l	@(-4,er6),er3
	mov.l	@er3,er3
	mov.l	er3,@er2
.L279:
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_remque, .-_remque
	.align 1
	.global _lsearch
_lsearch:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	sub.l	#28,er7
	mov.l	er0,@(-24,er6)
	mov.l	er1,@(-28,er6)
	mov.l	er2,@(-32,er6)
	mov.l	@(8,er6),er4
	mov.l	er4,er2
	subs	#1,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-32,er6),er2
	mov.l	@er2,er2
	mov.l	er2,@(-20,er6)
	sub.l	er2,er2
	mov.l	er2,@(-8,er6)
	bra	.L284
.L287:
	mov.l	@(-8,er6),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(-24,er6),er3
	mov.l	@(12,er6),er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@er2
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L285
	mov.l	@(-8,er6),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	bra	.L286
.L285:
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
.L284:
	mov.l	@(-8,er6),er3
	mov.l	@(-20,er6),er2
	cmp.l	er2,er3
	blo	.L287
	mov.l	@(-20,er6),er2
	adds	#1,er2
	mov.l	er2,er3
	mov.l	@(-32,er6),er2
	mov.l	er3,@er2
	mov.l	@(-20,er6),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(-24,er6),er3
	mov.l	@(8,er6),er2
	mov.l	er3,er1
	jsr	@_memcpy
	mov.l	er0,er2
.L286:
	mov.l	er2,er0
	add.l	#28,er7
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_lsearch, .-_lsearch
	.align 1
	.global _lfind
_lfind:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	sub.l	#28,er7
	mov.l	er0,@(-24,er6)
	mov.l	er1,@(-28,er6)
	mov.l	er2,@(-32,er6)
	mov.l	@(8,er6),er4
	mov.l	er4,er2
	subs	#1,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-32,er6),er2
	mov.l	@er2,er2
	mov.l	er2,@(-20,er6)
	sub.l	er2,er2
	mov.l	er2,@(-8,er6)
	bra	.L289
.L292:
	mov.l	@(-8,er6),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(-24,er6),er3
	mov.l	@(12,er6),er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@er2
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L290
	mov.l	@(-8,er6),er1
	mov.l	er4,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	bra	.L291
.L290:
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
.L289:
	mov.l	@(-8,er6),er3
	mov.l	@(-20,er6),er2
	cmp.l	er2,er3
	blo	.L292
	sub.l	er2,er2
.L291:
	mov.l	er2,er0
	add.l	#28,er7
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_lfind, .-_lfind
	.align 1
	.global _abs
_abs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	cmp.w	#-1,r2
	bgt	.L294
	neg.w	r2
.L294:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_abs, .-_abs
	.align 1
	.global _atoi
_atoi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	sub.w	r2,r2
	mov.w	r2,@(-4,er6)
	bra	.L297
.L298:
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
.L297:
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	r2,r0
	jsr	@_isspace
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L298
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L299
	cmp.w	#45,r2
	bne	.L301
	mov.w	#1,r2
	mov.w	r2,@(-4,er6)
.L299:
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
	bra	.L301
.L302:
	mov.w	@(-2,er6),r3
	mov.w	#10,r2
	mulxs.w	r3,er2
	mov.w	r2,r0
	mov.l	@(-8,er6),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(-8,er6)
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	mov.w	r2,r3
	mov.w	r0,r2
	sub.w	r3,r2
	mov.w	r2,@(-2,er6)
.L301:
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L302
	mov.w	@(-4,er6),r2
	mov.w	r2,r2
	bne	.L303
	mov.w	@(-2,er6),r2
	neg.w	r2
	bra	.L305
.L303:
	mov.w	@(-2,er6),r2
.L305:
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_atoi, .-_atoi
	.align 1
	.global _atol
_atol:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-12,er6)
	sub.l	er2,er2
	mov.l	er2,@(-4,er6)
	sub.w	r2,r2
	mov.w	r2,@(-6,er6)
	bra	.L307
.L308:
	mov.l	@(-12,er6),er2
	adds	#1,er2
	mov.l	er2,@(-12,er6)
.L307:
	mov.l	@(-12,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	r2,r0
	jsr	@_isspace
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L308
	mov.l	@(-12,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L309
	cmp.w	#45,r2
	bne	.L311
	mov.w	#1,r2
	mov.w	r2,@(-6,er6)
.L309:
	mov.l	@(-12,er6),er2
	adds	#1,er2
	mov.l	er2,@(-12,er6)
	bra	.L311
.L312:
	sub.l	er1,er1
	add.b	#10,r1l
	mov.l	@(-4,er6),er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	@(-12,er6),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(-12,er6)
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	mov.w	r2,r3
	exts.l	er3
	mov.l	er0,er2
	sub.l	er3,er2
	mov.l	er2,@(-4,er6)
.L311:
	mov.l	@(-12,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L312
	mov.w	@(-6,er6),r2
	mov.w	r2,r2
	bne	.L313
	mov.l	@(-4,er6),er2
	neg.l	er2
	bra	.L315
.L313:
	mov.l	@(-4,er6),er2
.L315:
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_atol, .-_atol
	.align 1
	.global _atoll
_atoll:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#24,er7
	mov.l	er0,@(-24,er6)
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	sub.l	er2,er2
	mov.l	er2,@(-12,er6)
	sub.w	r2,r2
	mov.w	r2,@(-18,er6)
	bra	.L317
.L318:
	mov.l	@(-24,er6),er2
	adds	#1,er2
	mov.l	er2,@(-24,er6)
.L317:
	mov.l	@(-24,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	mov.w	r2,r0
	jsr	@_isspace
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L318
	mov.l	@(-24,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	cmp.w	#43,r2
	beq	.L319
	cmp.w	#45,r2
	bne	.L321:16
	mov.w	#1,r2
	mov.w	r2,@(-18,er6)
.L319:
	mov.l	@(-24,er6),er2
	adds	#1,er2
	mov.l	er2,@(-24,er6)
	bra	.L321:16
.L323:
	sub.l	er3,er3
	sub.l	er2,er2
	add.b	#10,r2l
	sub.l	#8,er7
	mov.l	er3,@er7
	mov.l	er2,@(4,er7)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	jsr	@___muldi3
	add.l	#8,er7
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	@(-24,er6),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(-24,er6)
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	exts.l	er2
	mov.l	er2,@(-28,er6)
	shll	e2
	subx	r2l,r2l
	exts.w	r2
	exts.l	er2
	mov.l	er2,er3
	mov.l	er3,@(-32,er6)
	mov.l	er1,er4
	mov.l	@(-28,er6),er5
	sub.l	er5,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	bhi	.L322
	sub.l	er4,er4
.L322:
	mov.l	@(-32,er6),er1
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	er4,er1
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,@(-16,er6)
	mov.l	er3,@(-12,er6)
.L321:
	mov.l	@(-24,er6),er2
	mov.b	@er2,r2l
	extu.w	r2
	add.w	#-48,r2
	cmp.w	#9,r2
	bls	.L323:16
	mov.w	@(-18,er6),r2
	mov.w	r2,r2
	bne	.L324
	sub.l	er2,er2
	sub.l	er3,er3
	mov.l	@(-16,er6),er0
	mov.l	er0,@(-32,er6)
	mov.l	@(-12,er6),er0
	mov.l	er0,@(-28,er6)
	mov.l	er3,er4
	mov.l	@(-28,er6),er5
	sub.l	er5,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er3,er1
	bhi	.L325
	sub.l	er4,er4
.L325:
	mov.l	@(-32,er6),er3
	sub.l	er3,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er4,er3
	sub.l	er3,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	bra	.L327
.L324:
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
.L327:
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#24,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_atoll, .-_atoll
	.align 1
	.global _bsearch
_bsearch:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	bra	.L329:16
.L334:
	mov.l	@(-20,er6),er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(8,er6),er1
	mov.l	er3,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er0
	mov.l	@(-12,er6),er3
	mov.l	@(12,er6),er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@er2
	mov.w	r0,@(-6,er6)
	mov.w	@(-6,er6),r2
	cmp.w	#-1,r2
	bgt	.L330
	mov.l	@(-20,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-20,er6)
	bra	.L329
.L330:
	mov.w	@(-6,er6),r2
	cmp.w	#1,r2
	blt	.L332
	mov.l	@(-4,er6),er3
	mov.l	@(8,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-20,er6),er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	sub.l	er3,er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
	bra	.L329
.L332:
	mov.l	@(-4,er6),er2
	bra	.L333
.L329:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	bne	.L334:16
	sub.l	er2,er2
.L333:
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_bsearch, .-_bsearch
	.align 1
	.global _bsearch_r
_bsearch_r:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#28,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-24,er6)
	mov.l	er2,@(-28,er6)
	mov.l	@(-24,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-28,er6),er2
	mov.w	r2,@(-6,er6)
	bra	.L336:16
.L340:
	mov.w	@(-6,er6),r3
	mov.w	r3,r2
	shar.w	r2
	exts.l	er2
	mov.l	@(8,er6),er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(16,er6),er2
	mov.l	@(-12,er6),er1
	mov.l	@(-20,er6),er0
	mov.l	@(12,er6),er3
	jsr	@er3
	mov.w	r0,@(-14,er6)
	mov.w	@(-14,er6),r2
	mov.w	r2,r2
	bne	.L337
	mov.l	@(-12,er6),er2
	bra	.L338
.L337:
	mov.w	@(-14,er6),r2
	cmp.w	#1,r2
	blt	.L339
	mov.l	@(-12,er6),er3
	mov.l	@(8,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.w	@(-6,er6),r2
	dec #1,r2
	mov.w	r2,@(-6,er6)
.L339:
	mov.w	@(-6,er6),r3
	mov.w	r3,r2
	shar.w	r2
	mov.w	r2,@(-6,er6)
.L336:
	mov.w	@(-6,er6),r2
	mov.w	r2,r2
	bne	.L340:16
	sub.l	er2,er2
.L338:
	mov.l	er2,er0
	add.l	#28,er7
	mov.l	@er7+,er6
	rts
	.size	_bsearch_r, .-_bsearch_r
	.align 1
	.global _div
_div:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.w	r2,@(-12,er6)
	mov.w	@(-10,er6),r2
	mov.w	r2,r3
	exts.l	er3
	mov.w	@(-12,er6),r2
	divxs.w	r2,er3
	mov.w	e3,r2
	mov.w	r3,r0
	mov.w	@(-10,er6),r2
	mov.w	r2,r3
	exts.l	er3
	mov.w	@(-12,er6),r2
	divxs.w	r2,er3
	mov.w	e3,r2
	mov.w	r2,r3
	mov.l	@(-8,er6),er2
	mov.w	r0,@er2
	mov.l	@(-8,er6),er2
	mov.w	r3,@(2,er2)
	mov.l	@(-8,er6),er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_div, .-_div
	.align 1
	.global _imaxabs
_imaxabs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	cmp.l	#-1,er2
	bgt	.L344
	sub.l	er0,er0
	mov.l	er0,@(-24,er6)
	sub.l	er0,er0
	mov.l	er0,@(-20,er6)
	mov.l	@(-20,er6),er4
	sub.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er4,er5
	mov.l	@(-20,er6),er4
	cmp.l	er4,er1
	bhi	.L346
	sub.l	er4,er4
	mov.l	er4,er5
.L346:
	mov.l	@(-24,er6),er4
	sub.l	er2,er4
	mov.l	er4,er0
	mov.l	er0,er2
	mov.l	er5,er3
	sub.l	er3,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
.L344:
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_imaxabs, .-_imaxabs
	.align 1
	.global _imaxdiv
_imaxdiv:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#44,er7
	mov.l	er0,@(-28,er6)
	mov.l	er1,@(-36,er6)
	mov.l	er2,@(-32,er6)
	mov.l	@(8,er6),er2
	mov.l	er2,@er7
	mov.l	@(12,er6),er2
	mov.l	er2,@(4,er7)
	mov.l	@(-36,er6),er0
	mov.l	@(-32,er6),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	@(-36,er6),er2
	mov.l	@(-32,er6),er3
	mov.l	@(8,er6),er0
	mov.l	er0,@er7
	mov.l	@(12,er6),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___moddi3
	mov.l	er0,@(-44,er6)
	mov.l	er1,@(-40,er6)
	mov.l	@(-44,er6),er2
	mov.l	@(-40,er6),er3
	mov.l	@(-28,er6),er0
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	mov.l	@(-28,er6),er0
	mov.l	er2,@(8,er0)
	mov.l	er3,@(12,er0)
	mov.l	@(-28,er6),er0
	add.l	#44,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_imaxdiv, .-_imaxdiv
	.align 1
	.global _labs
_labs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.l	er0,@(-4,er6)
	mov.l	@(-4,er6),er2
	cmp.l	#-1,er2
	bgt	.L351
	neg.l	er2
.L351:
	mov.l	er2,er0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_labs, .-_labs
	.align 1
	.global _ldiv
_ldiv:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	sub.l	#20,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-20,er6)
	mov.l	er2,@(-24,er6)
	mov.l	@(-24,er6),er1
	mov.l	@(-20,er6),er0
	jsr	@___divsi3
	mov.l	er0,er2
	mov.l	er2,er4
	mov.l	@(-20,er6),er2
	mov.l	@(-24,er6),er1
	mov.l	er2,er0
	jsr	@___modsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	mov.l	er4,@er2
	mov.l	@(-16,er6),er2
	mov.l	er3,@(4,er2)
	mov.l	@(-16,er6),er0
	add.l	#20,er7
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_ldiv, .-_ldiv
	.align 1
	.global _llabs
_llabs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	cmp.l	#-1,er2
	bgt	.L356
	sub.l	er0,er0
	mov.l	er0,@(-24,er6)
	sub.l	er0,er0
	mov.l	er0,@(-20,er6)
	mov.l	@(-20,er6),er4
	sub.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er4,er5
	mov.l	@(-20,er6),er4
	cmp.l	er4,er1
	bhi	.L358
	sub.l	er4,er4
	mov.l	er4,er5
.L358:
	mov.l	@(-24,er6),er4
	sub.l	er2,er4
	mov.l	er4,er0
	mov.l	er0,er2
	mov.l	er5,er3
	sub.l	er3,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
.L356:
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_llabs, .-_llabs
	.align 1
	.global _lldiv
_lldiv:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#44,er7
	mov.l	er0,@(-28,er6)
	mov.l	er1,@(-36,er6)
	mov.l	er2,@(-32,er6)
	mov.l	@(8,er6),er2
	mov.l	er2,@er7
	mov.l	@(12,er6),er2
	mov.l	er2,@(4,er7)
	mov.l	@(-36,er6),er0
	mov.l	@(-32,er6),er1
	jsr	@___divdi3
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	@(-36,er6),er2
	mov.l	@(-32,er6),er3
	mov.l	@(8,er6),er0
	mov.l	er0,@er7
	mov.l	@(12,er6),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___moddi3
	mov.l	er0,@(-44,er6)
	mov.l	er1,@(-40,er6)
	mov.l	@(-44,er6),er2
	mov.l	@(-40,er6),er3
	mov.l	@(-28,er6),er0
	mov.l	er4,@er0
	mov.l	er5,@(4,er0)
	mov.l	@(-28,er6),er0
	mov.l	er2,@(8,er0)
	mov.l	er3,@(12,er0)
	mov.l	@(-28,er6),er0
	add.l	#44,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_lldiv, .-_lldiv
	.align 1
	.global _wcschr
_wcschr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	bra	.L363
.L365:
	mov.l	@(-4,er6),er2
	adds	#2,er2
	mov.l	er2,@(-4,er6)
.L363:
	mov.l	@(-4,er6),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L364
	mov.l	@(-4,er6),er2
	mov.w	@er2,r2
	mov.w	@(-6,er6),r3
	cmp.w	r2,r3
	bne	.L365
.L364:
	mov.l	@(-4,er6),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L366
	mov.l	@(-4,er6),er2
	bra	.L368
.L366:
	sub.l	er2,er2
.L368:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_wcschr, .-_wcschr
	.align 1
	.global _wcscmp
_wcscmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	bra	.L370
.L372:
	mov.l	@(-4,er6),er2
	adds	#2,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	adds	#2,er2
	mov.l	er2,@(-8,er6)
.L370:
	mov.l	@(-4,er6),er2
	mov.w	@er2,r3
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	bne	.L371
	mov.l	@(-4,er6),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L371
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L372
.L371:
	mov.l	@(-4,er6),er2
	mov.w	@er2,r3
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	blo	.L373
	mov.l	@(-4,er6),er2
	mov.w	@er2,r0
	mov.l	@(-8,er6),er2
	mov.w	@er2,r3
	mov.b	#1,r2l
	cmp.w	r3,r0
	bhi	.L374
	sub.b	r2l,r2l
.L374:
	extu.w	r2
	bra	.L376
.L373:
	mov.w	#-1,r2
.L376:
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_wcscmp, .-_wcscmp
	.align 1
	.global _wcscpy
_wcscpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
.L378:
	mov.l	@(-12,er6),er3
	mov.l	er3,er2
	adds	#2,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	adds	#2,er0
	mov.l	er0,@(-8,er6)
	mov.w	@er3,r3
	mov.w	r3,@er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L378
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_wcscpy, .-_wcscpy
	.align 1
	.global _wcslen
_wcslen:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	bra	.L381
.L382:
	mov.l	@(-8,er6),er2
	adds	#2,er2
	mov.l	er2,@(-8,er6)
.L381:
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L382
	mov.l	@(-8,er6),er2
	mov.l	@(-4,er6),er3
	sub.l	er3,er2
	shar.l	er2
	mov.l	er2,er3
	mov.l	er3,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_wcslen, .-_wcslen
	.align 1
	.global _wcsncmp
_wcsncmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	er2,@(-12,er6)
	bra	.L385
.L387:
	mov.l	@(-12,er6),er2
	subs	#1,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	adds	#2,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	adds	#2,er2
	mov.l	er2,@(-8,er6)
.L385:
	mov.l	@(-12,er6),er2
	mov.l	er2,er2
	beq	.L386
	mov.l	@(-4,er6),er2
	mov.w	@er2,r3
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	bne	.L386
	mov.l	@(-4,er6),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	beq	.L386
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	mov.w	r2,r2
	bne	.L387
.L386:
	mov.l	@(-12,er6),er2
	mov.l	er2,er2
	beq	.L388
	mov.l	@(-4,er6),er2
	mov.w	@er2,r3
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	blo	.L389
	mov.l	@(-4,er6),er2
	mov.w	@er2,r0
	mov.l	@(-8,er6),er2
	mov.w	@er2,r3
	mov.b	#1,r2l
	cmp.w	r3,r0
	bhi	.L390
	sub.b	r2l,r2l
.L390:
	extu.w	r2
	bra	.L393
.L389:
	mov.w	#-1,r2
	bra	.L393
.L388:
	sub.w	r2,r2
.L393:
	mov.w	r2,r0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_wcsncmp, .-_wcsncmp
	.align 1
	.global _wmemchr
_wmemchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	mov.l	er2,@(-12,er6)
	bra	.L395
.L397:
	mov.l	@(-12,er6),er2
	subs	#1,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	adds	#2,er2
	mov.l	er2,@(-4,er6)
.L395:
	mov.l	@(-12,er6),er2
	mov.l	er2,er2
	beq	.L396
	mov.l	@(-4,er6),er2
	mov.w	@er2,r2
	mov.w	@(-6,er6),r3
	cmp.w	r2,r3
	bne	.L397
.L396:
	mov.l	@(-12,er6),er2
	mov.l	er2,er2
	beq	.L398
	mov.l	@(-4,er6),er2
	bra	.L400
.L398:
	sub.l	er2,er2
.L400:
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_wmemchr, .-_wmemchr
	.align 1
	.global _wmemcmp
_wmemcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	er2,@(-12,er6)
	bra	.L402
.L404:
	mov.l	@(-12,er6),er2
	subs	#1,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	adds	#2,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	adds	#2,er2
	mov.l	er2,@(-8,er6)
.L402:
	mov.l	@(-12,er6),er2
	mov.l	er2,er2
	beq	.L403
	mov.l	@(-4,er6),er2
	mov.w	@er2,r3
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	beq	.L404
.L403:
	mov.l	@(-12,er6),er2
	mov.l	er2,er2
	beq	.L405
	mov.l	@(-4,er6),er2
	mov.w	@er2,r3
	mov.l	@(-8,er6),er2
	mov.w	@er2,r2
	cmp.w	r2,r3
	blo	.L406
	mov.l	@(-4,er6),er2
	mov.w	@er2,r0
	mov.l	@(-8,er6),er2
	mov.w	@er2,r3
	mov.b	#1,r2l
	cmp.w	r3,r0
	bhi	.L407
	sub.b	r2l,r2l
.L407:
	extu.w	r2
	bra	.L410
.L406:
	mov.w	#-1,r2
	bra	.L410
.L405:
	sub.w	r2,r2
.L410:
	mov.w	r2,r0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_wmemcmp, .-_wmemcmp
	.align 1
	.global _wmemcpy
_wmemcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	mov.l	er2,@(-16,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	bra	.L412
.L413:
	mov.l	@(-12,er6),er3
	mov.l	er3,er2
	adds	#2,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	adds	#2,er0
	mov.l	er0,@(-8,er6)
	mov.w	@er3,r3
	mov.w	r3,@er2
.L412:
	mov.l	@(-16,er6),er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@(-16,er6)
	mov.l	er2,er2
	bne	.L413
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_wmemcpy, .-_wmemcpy
	.align 1
	.global _wmemmove
_wmemmove:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	mov.l	er2,@(-16,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bne	.L416
	mov.l	@(-8,er6),er2
	bra	.L417:16
.L416:
	mov.l	@(-8,er6),er3
	mov.l	@(-12,er6),er2
	sub.l	er2,er3
	mov.l	er3,er0
	mov.l	@(-16,er6),er2
	shll.l	er2
	mov.l	er2,er3
	cmp.l	er3,er0
	bhs	.L422
	bra	.L419
.L420:
	mov.l	@(-16,er6),er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-12,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@(-16,er6),er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-8,er6),er2
	add.l	er2,er3
	mov.w	@er0,r2
	mov.w	r2,@er3
.L419:
	mov.l	@(-16,er6),er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@(-16,er6)
	mov.l	er2,er2
	bne	.L420
	bra	.L421
.L423:
	mov.l	@(-12,er6),er3
	mov.l	er3,er2
	adds	#2,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	adds	#2,er0
	mov.l	er0,@(-8,er6)
	mov.w	@er3,r3
	mov.w	r3,@er2
.L422:
	mov.l	@(-16,er6),er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@(-16,er6)
	mov.l	er2,er2
	bne	.L423
.L421:
	mov.l	@(-4,er6),er2
.L417:
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_wmemmove, .-_wmemmove
	.align 1
	.global _wmemset
_wmemset:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.l	er2,@(-16,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	bra	.L425
.L426:
	mov.l	@(-8,er6),er2
	mov.l	er2,er3
	adds	#2,er3
	mov.l	er3,@(-8,er6)
	mov.w	@(-10,er6),r3
	mov.w	r3,@er2
.L425:
	mov.l	@(-16,er6),er2
	mov.l	er2,er3
	subs	#1,er3
	mov.l	er3,@(-16,er6)
	mov.l	er2,er2
	bne	.L426
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_wmemset, .-_wmemset
	.align 1
	.global _bcopy
_bcopy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er3
	mov.l	@(-8,er6),er2
	cmp.l	er2,er3
	bhs	.L429
	mov.l	@(-4,er6),er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-8,er6)
	bra	.L430
.L431:
	mov.l	@(-4,er6),er2
	subs	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	subs	#1,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-4,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-8,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
.L430:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	bne	.L431
	bra	.L428
.L429:
	mov.l	@(-4,er6),er3
	mov.l	@(-8,er6),er2
	cmp.l	er2,er3
	beq	.L428
	bra	.L433
.L434:
	mov.l	@(-4,er6),er3
	mov.l	er3,er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	adds	#1,er0
	mov.l	er0,@(-8,er6)
	mov.b	@er3,r3l
	mov.b	r3l,@er2
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
.L433:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	bne	.L434
.L428:
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_bcopy, .-_bcopy
	.align 1
	.global _rotl64
_rotl64:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#36,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.w	r2,@(-18,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-36,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-32,er6)
	mov.w	@(-18,er6),r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L437
	mov.l	@(-32,er6),er3
	mov.l	er3,@(-28,er6)
	mov.l	@(-28,er6),er3
	mov.b	r2l,r0l
	ble	.L443
.L442:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L442
.L443:
	mov.l	er3,@(-28,er6)
	sub.l	er2,er2
	mov.l	er2,@(-24,er6)
	bra	.L438:16
.L437:
	mov.l	@(-32,er6),er2
	shlr.l	er2
	mov.l	er2,er0
	mov.w	#31,r3
	mov.w	@(-18,er6),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L445
.L444:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L444
.L445:
	mov.l	er2,er1
	mov.w	@(-18,er6),r2
	mov.l	@(-36,er6),er3
	mov.l	er3,@(-28,er6)
	mov.l	@(-28,er6),er3
	mov.b	r2l,r0l
	ble	.L447
.L446:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L446
.L447:
	mov.l	er3,@(-28,er6)
	mov.l	er1,er3
	mov.l	@(-28,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-28,er6)
	mov.w	@(-18,er6),r2
	mov.l	@(-32,er6),er3
	mov.l	er3,@(-24,er6)
	mov.l	@(-24,er6),er3
	mov.b	r2l,r0l
	ble	.L449
.L448:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L448
.L449:
	mov.l	er3,@(-24,er6)
.L438:
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L439
	mov.l	@(-36,er6),er5
	mov.b	r2l,r3l
	ble	.L451
.L450:
	shlr.l	er5
	add.b	#-1,r3l
	bne	.L450
.L451:
	sub.l	er4,er4
	bra	.L440
.L439:
	mov.l	@(-36,er6),er2
	shll.l	er2
	mov.l	er2,er0
	mov.w	#31,r3
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L453
.L452:
	shll.l	er2
	add.b	#-1,r0l
	bne	.L452
.L453:
	mov.l	er2,er3
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	@(-32,er6),er5
	mov.b	r2l,r0l
	ble	.L455
.L454:
	shlr.l	er5
	add.b	#-1,r0l
	bne	.L454
.L455:
	or.l	er3,er5
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	@(-36,er6),er4
	mov.b	r2l,r3l
	ble	.L457
.L456:
	shlr.l	er4
	add.b	#-1,r3l
	bne	.L456
.L457:
.L440:
	mov.l	@(-28,er6),er2
	or.l	er4,er2
	mov.l	er2,@(-44,er6)
	mov.l	@(-24,er6),er2
	or.l	er5,er2
	mov.l	er2,@(-40,er6)
	mov.l	@(-44,er6),er4
	mov.l	@(-40,er6),er5
	mov.l	er4,er2
	mov.l	er5,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#36,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotl64, .-_rotl64
	.align 1
	.global _rotr64
_rotr64:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#36,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.w	r2,@(-18,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-36,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-32,er6)
	mov.w	@(-18,er6),r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L459
	mov.l	@(-36,er6),er3
	mov.l	er3,@(-24,er6)
	mov.l	@(-24,er6),er3
	mov.b	r2l,r0l
	ble	.L465
.L464:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L464
.L465:
	mov.l	er3,@(-24,er6)
	sub.l	er2,er2
	mov.l	er2,@(-28,er6)
	bra	.L460:16
.L459:
	mov.l	@(-36,er6),er2
	shll.l	er2
	mov.l	er2,er0
	mov.w	#31,r3
	mov.w	@(-18,er6),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L467
.L466:
	shll.l	er2
	add.b	#-1,r0l
	bne	.L466
.L467:
	mov.l	er2,er1
	mov.w	@(-18,er6),r2
	mov.l	@(-32,er6),er3
	mov.l	er3,@(-24,er6)
	mov.l	@(-24,er6),er3
	mov.b	r2l,r0l
	ble	.L469
.L468:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L468
.L469:
	mov.l	er3,@(-24,er6)
	mov.l	er1,er3
	mov.l	@(-24,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.w	@(-18,er6),r2
	mov.l	@(-36,er6),er3
	mov.l	er3,@(-28,er6)
	mov.l	@(-28,er6),er3
	mov.b	r2l,r0l
	ble	.L471
.L470:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L470
.L471:
	mov.l	er3,@(-28,er6)
.L460:
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	add.w	#-32,r2
	cmp.w	#-1,r2
	ble	.L461
	mov.l	@(-32,er6),er4
	mov.b	r2l,r3l
	ble	.L473
.L472:
	shll.l	er4
	add.b	#-1,r3l
	bne	.L472
.L473:
	sub.l	er5,er5
	bra	.L462
.L461:
	mov.l	@(-32,er6),er2
	shlr.l	er2
	mov.l	er2,er0
	mov.w	#31,r3
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L475
.L474:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L474
.L475:
	mov.l	er2,er3
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	@(-36,er6),er4
	mov.b	r2l,r0l
	ble	.L477
.L476:
	shll.l	er4
	add.b	#-1,r0l
	bne	.L476
.L477:
	or.l	er3,er4
	mov.w	@(-18,er6),r2
	neg.w	r2
	and.w	#63,r2
	mov.l	@(-32,er6),er5
	mov.b	r2l,r3l
	ble	.L479
.L478:
	shll.l	er5
	add.b	#-1,r3l
	bne	.L478
.L479:
.L462:
	mov.l	@(-28,er6),er2
	or.l	er4,er2
	mov.l	er2,@(-44,er6)
	mov.l	@(-24,er6),er2
	or.l	er5,er2
	mov.l	er2,@(-40,er6)
	mov.l	@(-44,er6),er4
	mov.l	@(-40,er6),er5
	mov.l	er4,er2
	mov.l	er5,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#36,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_rotr64, .-_rotr64
	.align 1
	.global _rotl32
_rotl32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	mov.w	@(-6,er6),r3
	mov.l	@(-4,er6),er2
	cmp.b	#1,r3l
	blt	.L483
.L481:
	rotl.l	er2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L481
.L483:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_rotl32, .-_rotl32
	.align 1
	.global _rotr32
_rotr32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	mov.w	#32,r3
	mov.w	@(-6,er6),r2
	sub.w	r2,r3
	mov.l	@(-4,er6),er2
	cmp.b	#1,r3l
	blt	.L487
.L485:
	rotl.l	er2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L485
.L487:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_rotr32, .-_rotr32
	.align 1
	.global _rotl_sz
_rotl_sz:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	mov.w	@(-6,er6),r2
	mov.l	@(-4,er6),er3
	mov.b	r2l,r0l
	ble	.L491
.L490:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L490
.L491:
	mov.w	@(-6,er6),r2
	mov.w	#32,r0
	sub.w	r2,r0
	mov.l	@(-4,er6),er2
	mov.b	r0l,r1l
	ble	.L493
.L492:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L492
.L493:
	or.l	er3,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_rotl_sz, .-_rotl_sz
	.align 1
	.global _rotr_sz
_rotr_sz:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	mov.w	@(-6,er6),r2
	mov.l	@(-4,er6),er3
	mov.b	r2l,r0l
	ble	.L497
.L496:
	shlr.l	er3
	add.b	#-1,r0l
	bne	.L496
.L497:
	mov.w	@(-6,er6),r2
	mov.w	#32,r0
	sub.w	r2,r0
	mov.l	@(-4,er6),er2
	mov.b	r0l,r1l
	ble	.L499
.L498:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L498
.L499:
	or.l	er3,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_rotr_sz, .-_rotr_sz
	.align 1
	.global _rotl16
_rotl16:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	r1,@(-4,er6)
	mov.w	@(-4,er6),r3
	mov.w	@(-2,er6),r2
	cmp.b	#1,r3l
	blt	.L503
.L501:
	rotl.w	r2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L501
.L503:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_rotl16, .-_rotl16
	.align 1
	.global _rotr16
_rotr16:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	r1,@(-4,er6)
	mov.w	#16,r3
	mov.w	@(-4,er6),r2
	sub.w	r2,r3
	mov.w	@(-2,er6),r2
	cmp.b	#1,r3l
	blt	.L507
.L505:
	rotl.w	r2
	add.b	#-1,r3l
	mov.b	r3l,r3l
	bne	.L505
.L507:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_rotr16, .-_rotr16
	.align 1
	.global _rotl8
_rotl8:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.b	r0l,@(-1,er6)
	mov.w	r1,@(-4,er6)
	mov.b	@(-1,er6),r2l
	extu.w	r2
	mov.w	@(-4,er6),r3
	mov.b	r3l,r0l
	ble	.L511
.L510:
	shll.w	r2
	add.b	#-1,r0l
	bne	.L510
.L511:
	mov.b	r2l,r1l
	mov.b	@(-1,er6),r0l
	extu.w	r0
	mov.w	#8,r3
	mov.w	@(-4,er6),r2
	sub.w	r2,r3
	mov.w	r0,r2
	mov.b	r3l,r0l
	ble	.L513
.L512:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L512
.L513:
	or	r1l,r2l
	mov.b	r2l,r0l
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_rotl8, .-_rotl8
	.align 1
	.global _rotr8
_rotr8:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.b	r0l,@(-1,er6)
	mov.w	r1,@(-4,er6)
	mov.b	@(-1,er6),r2l
	extu.w	r2
	mov.w	@(-4,er6),r3
	mov.b	r3l,r0l
	ble	.L517
.L516:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L516
.L517:
	mov.b	r2l,r1l
	mov.b	@(-1,er6),r0l
	extu.w	r0
	mov.w	#8,r3
	mov.w	@(-4,er6),r2
	sub.w	r2,r3
	mov.w	r0,r2
	mov.b	r3l,r0l
	ble	.L519
.L518:
	shll.w	r2
	add.b	#-1,r0l
	bne	.L518
.L519:
	or	r1l,r2l
	mov.b	r2l,r0l
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_rotr8, .-_rotr8
	.align 1
	.global _bswap_16
_bswap_16:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.w	r0,@(-6,er6)
	mov.w	#255,r2
	mov.w	r2,@(-2,er6)
	mov.w	@(-2,er6),r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,r3
	mov.w	@(-6,er6),r2
	and.w	r3,r2
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,r3
	mov.w	@(-6,er6),r0
	mov.w	@(-2,er6),r2
	and.w	r2,r0
	mov.w	r0,r2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	or.w	r3,r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_bswap_16, .-_bswap_16
	.align 1
	.global _bswap_32
_bswap_32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	sub.l	er2,er2
	add.b	#255,r2l
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@(-8,er6),er2
	and.l	er3,er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er0
	mov.l	@(-8,er6),er2
	and.l	er0,er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	or.l	er2,er3
	mov.l	er3,er0
	mov.l	@(-4,er6),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	@(-8,er6),er3
	and.l	er3,er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	or.l	er2,er0
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	and.l	er2,er3
	mov.l	er3,er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	or.l	er0,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_bswap_32, .-_bswap_32
	.align 1
	.global _bswap_64
_bswap_64:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#208,er7
	mov.l	er0,@(-24,er6)
	mov.l	er1,@(-20,er6)
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	sub.l	er2,er2
	add.b	#255,r2l
	mov.l	er2,@(-12,er6)
	mov.l	@(-12,er6),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er4
	sub.l	er5,er5
	mov.l	@(-24,er6),er2
	and.l	er4,er2
	mov.l	er2,@(-128,er6)
	mov.l	@(-20,er6),er2
	and.l	er5,er2
	mov.l	er2,@(-124,er6)
	mov.l	@(-128,er6),er2
	mov.l	er2,@(-92,er6)
	mov.l	@(-128,er6),er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,@(-92,er6)
	sub.l	er2,er2
	mov.l	er2,@(-96,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-104,er6)
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,@(-104,er6)
	sub.l	er2,er2
	mov.l	er2,@(-100,er6)
	mov.l	@(-24,er6),er2
	mov.l	@(-104,er6),er3
	and.l	er3,er2
	mov.l	er2,@(-208,er6)
	mov.l	@(-20,er6),er2
	mov.l	@(-100,er6),er3
	and.l	er2,er3
	mov.l	er3,@(-204,er6)
	mov.l	@(-208,er6),er2
	mov.l	er2,@(-68,er6)
	mov.l	@(-68,er6),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	er2,@(-68,er6)
	sub.l	er2,er2
	mov.l	er2,@(-72,er6)
	mov.l	@(-96,er6),er2
	mov.l	@(-72,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-136,er6)
	mov.l	@(-92,er6),er2
	mov.l	@(-68,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-132,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-80,er6)
	mov.l	@(-80,er6),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	er2,@(-80,er6)
	sub.l	er2,er2
	mov.l	er2,@(-76,er6)
	mov.l	@(-24,er6),er2
	mov.l	@(-80,er6),er3
	and.l	er3,er2
	mov.l	er2,@(-40,er6)
	mov.l	@(-20,er6),er2
	mov.l	@(-76,er6),er3
	and.l	er2,er3
	mov.l	er3,@(-36,er6)
	mov.l	@(-40,er6),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	@(-36,er6),er3
	mov.l	er3,@(-44,er6)
	mov.l	@(-36,er6),er3
	mov.w	e3,r3
	mov.b	r3h,r3l
	extu.w	r3
	extu.l	er3
	mov.l	er3,@(-44,er6)
	mov.l	@(-44,er6),er3
	or.l	er2,er3
	mov.l	er3,@(-44,er6)
	mov.l	@(-40,er6),er2
	mov.l	er2,@(-48,er6)
	mov.l	@(-40,er6),er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,@(-48,er6)
	mov.l	@(-136,er6),er2
	mov.l	@(-48,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-144,er6)
	mov.l	@(-132,er6),er2
	mov.l	@(-44,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-140,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-152,er6)
	sub.l	er2,er2
	mov.l	er2,@(-148,er6)
	mov.l	@(-24,er6),er2
	mov.l	@(-152,er6),er3
	and.l	er3,er2
	mov.l	er2,@(-112,er6)
	mov.l	@(-20,er6),er2
	mov.l	@(-148,er6),er3
	and.l	er2,er3
	mov.l	er3,@(-108,er6)
	mov.l	@(-112,er6),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	@(-108,er6),er3
	mov.l	er3,@(-28,er6)
	mov.l	@(-28,er6),er3
	mov.w	e3,r0
	mov.b	r3h,r3l
	mov.b	r0l,r3h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e3
	mov.l	er3,@(-28,er6)
	mov.l	@(-28,er6),er3
	or.l	er2,er3
	mov.l	er3,@(-28,er6)
	mov.l	@(-112,er6),er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-32,er6),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	er2,@(-32,er6)
	mov.l	@(-144,er6),er2
	mov.l	@(-32,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-160,er6)
	mov.l	@(-140,er6),er2
	mov.l	@(-28,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-156,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L525
	sub.l	er0,er0
.L525:
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
	blo	.L526
	sub.l	er2,er2
.L526:
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
	blo	.L527
	sub.l	er4,er4
.L527:
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
	blo	.L528
	sub.l	er4,er4
.L528:
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
	blo	.L529
	sub.l	er4,er4
.L529:
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
	blo	.L530
	sub.l	er4,er4
.L530:
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
	blo	.L531
	sub.l	er4,er4
.L531:
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
	blo	.L532
	sub.l	er4,er4
.L532:
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
	blo	.L533
	sub.l	er4,er4
.L533:
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
	blo	.L534
	sub.l	er4,er4
.L534:
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
	blo	.L535
	sub.l	er4,er4
.L535:
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
	blo	.L536
	sub.l	er4,er4
.L536:
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
	blo	.L537
	sub.l	er4,er4
.L537:
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
	blo	.L538
	sub.l	er4,er4
.L538:
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
	blo	.L539
	sub.l	er4,er4
.L539:
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
	blo	.L540
	sub.l	er4,er4
.L540:
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
	blo	.L541
	sub.l	er4,er4
.L541:
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
	blo	.L542
	sub.l	er4,er4
.L542:
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
	blo	.L543
	sub.l	er4,er4
.L543:
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
	blo	.L544
	sub.l	er4,er4
.L544:
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
	blo	.L545
	sub.l	er4,er4
.L545:
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
	blo	.L546
	sub.l	er4,er4
.L546:
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
	blo	.L547
	sub.l	er4,er4
.L547:
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
	blo	.L548
	sub.l	er4,er4
.L548:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	@(-24,er6),er2
	and.l	er4,er2
	mov.l	er2,@(-56,er6)
	mov.l	@(-20,er6),er2
	and.l	er5,er2
	mov.l	er2,@(-52,er6)
	mov.l	@(-52,er6),er0
	mov.l	@(-52,er6),er1
	add.l	er1,er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(-52,er6),er1
	cmp.l	er1,er3
	blo	.L549
	sub.l	er0,er0
.L549:
	mov.l	@(-56,er6),er1
	mov.l	@(-56,er6),er4
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
	blo	.L550
	sub.l	er4,er4
.L550:
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
	blo	.L551
	sub.l	er4,er4
.L551:
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
	blo	.L552
	sub.l	er4,er4
.L552:
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
	blo	.L553
	sub.l	er4,er4
.L553:
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
	blo	.L554
	sub.l	er4,er4
.L554:
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
	blo	.L555
	sub.l	er4,er4
.L555:
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
	blo	.L556
	sub.l	er4,er4
.L556:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(-160,er6),er0
	or.l	er2,er0
	mov.l	er0,@(-168,er6)
	mov.l	@(-156,er6),er0
	or.l	er3,er0
	mov.l	er0,@(-164,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L557
	sub.l	er0,er0
.L557:
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
	blo	.L558
	sub.l	er2,er2
.L558:
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
	blo	.L559
	sub.l	er4,er4
.L559:
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
	blo	.L560
	sub.l	er4,er4
.L560:
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
	blo	.L561
	sub.l	er4,er4
.L561:
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
	blo	.L562
	sub.l	er4,er4
.L562:
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
	blo	.L563
	sub.l	er4,er4
.L563:
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
	blo	.L564
	sub.l	er4,er4
.L564:
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
	blo	.L565
	sub.l	er4,er4
.L565:
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
	blo	.L566
	sub.l	er4,er4
.L566:
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
	blo	.L567
	sub.l	er4,er4
.L567:
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
	blo	.L568
	sub.l	er4,er4
.L568:
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
	blo	.L569
	sub.l	er4,er4
.L569:
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
	blo	.L570
	sub.l	er4,er4
.L570:
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
	blo	.L571
	sub.l	er4,er4
.L571:
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
	blo	.L572
	sub.l	er4,er4
.L572:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	@(-24,er6),er2
	and.l	er4,er2
	mov.l	er2,@(-64,er6)
	mov.l	@(-20,er6),er2
	and.l	er5,er2
	mov.l	er2,@(-60,er6)
	mov.l	@(-60,er6),er0
	mov.l	@(-60,er6),er1
	add.l	er1,er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(-60,er6),er1
	cmp.l	er1,er3
	blo	.L573
	sub.l	er0,er0
.L573:
	mov.l	@(-64,er6),er1
	mov.l	@(-64,er6),er4
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
	blo	.L574
	sub.l	er4,er4
.L574:
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
	blo	.L575
	sub.l	er4,er4
.L575:
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
	blo	.L576
	sub.l	er4,er4
.L576:
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
	blo	.L577
	sub.l	er4,er4
.L577:
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
	blo	.L578
	sub.l	er4,er4
.L578:
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
	blo	.L579
	sub.l	er4,er4
.L579:
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
	blo	.L580
	sub.l	er4,er4
.L580:
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
	blo	.L581
	sub.l	er4,er4
.L581:
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
	blo	.L582
	sub.l	er4,er4
.L582:
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
	blo	.L583
	sub.l	er4,er4
.L583:
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
	blo	.L584
	sub.l	er4,er4
.L584:
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
	blo	.L585
	sub.l	er4,er4
.L585:
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
	blo	.L586
	sub.l	er4,er4
.L586:
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
	blo	.L587
	sub.l	er4,er4
.L587:
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
	blo	.L588
	sub.l	er4,er4
.L588:
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
	blo	.L589
	sub.l	er4,er4
.L589:
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
	blo	.L590
	sub.l	er4,er4
.L590:
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
	blo	.L591
	sub.l	er4,er4
.L591:
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
	blo	.L592
	sub.l	er4,er4
.L592:
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
	blo	.L593
	sub.l	er4,er4
.L593:
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
	blo	.L594
	sub.l	er4,er4
.L594:
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
	blo	.L595
	sub.l	er4,er4
.L595:
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
	blo	.L596
	sub.l	er4,er4
.L596:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	@(-168,er6),er0
	or.l	er2,er0
	mov.l	er0,@(-176,er6)
	mov.l	@(-164,er6),er0
	or.l	er3,er0
	mov.l	er0,@(-172,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L597
	sub.l	er0,er0
.L597:
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
	blo	.L598
	sub.l	er2,er2
.L598:
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
	blo	.L599
	sub.l	er4,er4
.L599:
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
	blo	.L600
	sub.l	er4,er4
.L600:
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
	blo	.L601
	sub.l	er4,er4
.L601:
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
	blo	.L602
	sub.l	er4,er4
.L602:
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
	blo	.L603
	sub.l	er4,er4
.L603:
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
	blo	.L604
	sub.l	er4,er4
.L604:
	mov.l	er2,er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er4
	mov.l	er1,er5
	mov.l	@(-24,er6),er2
	and.l	er4,er2
	mov.l	er2,@(-216,er6)
	mov.l	@(-20,er6),er2
	and.l	er5,er2
	mov.l	er2,@(-212,er6)
	mov.l	@(-212,er6),er2
	mov.l	er2,@(-88,er6)
	mov.l	@(-88,er6),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	er2,@(-88,er6)
	sub.l	er2,er2
	mov.l	er2,@(-84,er6)
	mov.l	@(-176,er6),er2
	mov.l	@(-88,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-184,er6)
	mov.l	@(-172,er6),er2
	mov.l	@(-84,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-180,er6)
	mov.l	@(-24,er6),er3
	mov.l	@(-16,er6),er2
	and.l	er2,er3
	mov.l	er3,@(-192,er6)
	mov.l	@(-20,er6),er3
	mov.l	@(-12,er6),er2
	and.l	er2,er3
	mov.l	er3,@(-188,er6)
	mov.l	@(-188,er6),er2
	mov.l	er2,@(-120,er6)
	mov.l	@(-188,er6),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,@(-120,er6)
	sub.l	er2,er2
	mov.l	er2,@(-116,er6)
	mov.l	@(-184,er6),er2
	mov.l	@(-120,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-200,er6)
	mov.l	@(-180,er6),er2
	mov.l	@(-116,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-196,er6)
	mov.l	@(-200,er6),er2
	mov.l	@(-196,er6),er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#208,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_bswap_64, .-_bswap_64
	.align 1
	.global _ffs
_ffs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.w	r0,@(-6,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L607
.L610:
	mov.w	@(-6,er6),r2
	mov.w	@(-2,er6),r3
	mov.b	r3l,r0l
	ble	.L612
.L611:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L611
.L612:
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L608
	mov.w	@(-2,er6),r2
	inc #1,r2
	bra	.L609
.L608:
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L607:
	mov.w	@(-2,er6),r2
	cmp.w	#15,r2
	bls	.L610
	sub.w	r2,r2
.L609:
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_ffs, .-_ffs
	.align 1
	.global _libiberty_ffs
_libiberty_ffs:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L614
	sub.w	r2,r2
	bra	.L615
.L614:
	mov.w	#1,r4
	bra	.L616
.L617:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,r2
	inc #1,r4
.L616:
	mov.w	r2,r3
	and.w	#1,r3
	mov.w	r3,r3
	beq	.L617
	mov.w	r4,r2
.L615:
	mov.w	r2,r0
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 1
	.global _gl_isinff
_gl_isinff:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.l	er0,@(-4,er6)
	mov.l	#4286578687,er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L619
	mov.l	#2139095039,er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L624
.L619:
	mov.w	#1,r2
	bra	.L623
.L624:
	sub.w	r2,r2
.L623:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_gl_isinff, .-_gl_isinff
	.align 1
	.global _gl_isinfd
_gl_isinfd:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.l	er0,@(-4,er6)
	mov.l	#4286578687,er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L626
	mov.l	#2139095039,er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L631
.L626:
	mov.w	#1,r2
	bra	.L630
.L631:
	sub.w	r2,r2
.L630:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_gl_isinfd, .-_gl_isinfd
	.align 1
	.global _gl_isinfl
_gl_isinfl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.l	er0,@(-4,er6)
	mov.l	#4286578687,er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L633
	mov.l	#2139095039,er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L638
.L633:
	mov.w	#1,r2
	bra	.L637
.L638:
	sub.w	r2,r2
.L637:
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	_gl_isinfl, .-_gl_isinfl
	.align 1
	.global __Qp_itoq
__Qp_itoq:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.w	r1,@(-6,er6)
	mov.w	@(-6,er6),r2
	exts.l	er2
	mov.l	er2,er0
	jsr	@___floatsisf
	mov.l	er0,er3
	mov.l	@(-4,er6),er2
	mov.l	er3,@er2
	nop
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	__Qp_itoq, .-__Qp_itoq
	.align 1
	.global _ldexpf
_ldexpf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bne	.L641:16
	mov.l	@(-8,er6),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,er1
	mov.l	@(-8,er6),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L641:16
	mov.w	@(-10,er6),r2
	cmp.w	#-1,r2
	bgt	.L643
	mov.l	#1056964608,er2
	bra	.L644
.L643:
	mov.l	#1073741824,er2
.L644:
	mov.l	er2,@(-4,er6)
.L648:
	mov.w	@(-10,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L645
	mov.l	@(-4,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-8,er6)
.L645:
	mov.w	@(-10,er6),r2
	cmp.w	#-1,r2
	bgt	.L646
	inc #1,r2
.L646:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(-10,er6)
	mov.w	@(-10,er6),r2
	mov.w	r2,r2
	beq	.L641
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-4,er6)
	bra	.L648
.L641:
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_ldexpf, .-_ldexpf
	.align 1
	.global _ldexp
_ldexp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bne	.L653:16
	mov.l	@(-8,er6),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,er1
	mov.l	@(-8,er6),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L653:16
	mov.w	@(-10,er6),r2
	cmp.w	#-1,r2
	bgt	.L655
	mov.l	#1056964608,er2
	bra	.L656
.L655:
	mov.l	#1073741824,er2
.L656:
	mov.l	er2,@(-4,er6)
.L660:
	mov.w	@(-10,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L657
	mov.l	@(-4,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-8,er6)
.L657:
	mov.w	@(-10,er6),r2
	cmp.w	#-1,r2
	bgt	.L658
	inc #1,r2
.L658:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(-10,er6)
	mov.w	@(-10,er6),r2
	mov.w	r2,r2
	beq	.L653
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-4,er6)
	bra	.L660
.L653:
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_ldexp, .-_ldexp
	.align 1
	.global _ldexpl
_ldexpl:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.w	r1,@(-10,er6)
	mov.l	@(-8,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___unordsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bne	.L665:16
	mov.l	@(-8,er6),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,er1
	mov.l	@(-8,er6),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L665:16
	mov.w	@(-10,er6),r2
	cmp.w	#-1,r2
	bgt	.L667
	mov.l	#1056964608,er2
	bra	.L668
.L667:
	mov.l	#1073741824,er2
.L668:
	mov.l	er2,@(-4,er6)
.L672:
	mov.w	@(-10,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L669
	mov.l	@(-4,er6),er1
	mov.l	@(-8,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-8,er6)
.L669:
	mov.w	@(-10,er6),r2
	cmp.w	#-1,r2
	bgt	.L670
	inc #1,r2
.L670:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(-10,er6)
	mov.w	@(-10,er6),r2
	mov.w	r2,r2
	beq	.L665
	mov.l	@(-4,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-4,er6)
	bra	.L672
.L665:
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_ldexpl, .-_ldexpl
	.align 1
	.global _memxor
_memxor:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-8,er6)
	bra	.L677
.L678:
	mov.l	@(-4,er6),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(-4,er6)
	mov.b	@er2,r0l
	mov.l	@(-8,er6),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(-8,er6)
	mov.b	@er2,r3l
	xor	r0l,r3l
	mov.b	r3l,@er2
	mov.l	@(-20,er6),er2
	subs	#1,er2
	mov.l	er2,@(-20,er6)
.L677:
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	bne	.L678
	mov.l	@(-12,er6),er2
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_memxor, .-_memxor
	.align 1
	.global _strncat
_strncat:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	mov.l	er2,@(-16,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	jsr	@_strlen
	mov.l	er0,er3
	mov.l	@(-8,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
	bra	.L681
.L683:
	mov.l	@(-12,er6),er2
	adds	#1,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	subs	#1,er2
	mov.l	er2,@(-16,er6)
.L681:
	mov.l	@(-16,er6),er2
	mov.l	er2,er2
	beq	.L682
	mov.l	@(-12,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-4,er6),er2
	mov.b	r3l,@er2
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L683
.L682:
	mov.l	@(-16,er6),er2
	mov.l	er2,er2
	bne	.L684
	mov.l	@(-4,er6),er2
	sub.b	r3l,r3l
	mov.b	r3l,@er2
.L684:
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_strncat, .-_strncat
	.align 1
	.global _strnlen
_strnlen:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	sub.l	er2,er2
	mov.l	er2,@(-4,er6)
	bra	.L687
.L692:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
.L687:
	mov.l	@(-4,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bhs	.L688
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	add.l	er3,er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L692
.L688:
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_strnlen, .-_strnlen
	.align 1
	.global _strpbrk
_strpbrk:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	bra	.L694
.L698:
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	bra	.L695
.L697:
	mov.l	@(-4,er6),er2
	mov.l	er2,er3
	adds	#1,er3
	mov.l	er3,@(-4,er6)
	mov.b	@er2,r3l
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	bne	.L695
	mov.l	@(-8,er6),er2
	bra	.L696
.L695:
	mov.l	@(-4,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L697
	mov.l	@(-8,er6),er2
	adds	#1,er2
	mov.l	er2,@(-8,er6)
.L694:
	mov.l	@(-8,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r2l
	bne	.L698
	sub.l	er2,er2
.L696:
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_strpbrk, .-_strpbrk
	.align 1
	.global _strrchr
_strrchr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,er2
	mov.w	r1,@(-6,er6)
	sub.l	er3,er3
	mov.l	er3,@(-4,er6)
.L701:
	mov.b	@er2,r3l
	extu.w	r3
	mov.w	@(-6,er6),r0
	cmp.w	r3,r0
	bne	.L700
	mov.l	er2,@(-4,er6)
.L700:
	mov.l	er2,er3
	mov.l	er3,er2
	adds	#1,er2
	mov.b	@er3,r3l
	mov.b	r3l,r3l
	bne	.L701
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_strrchr, .-_strrchr
	.align 1
	.global _strstr
_strstr:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,er0
	jsr	@_strlen
	mov.l	er0,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er2
	bne	.L706
	mov.l	@(-12,er6),er2
	bra	.L705
.L708:
	mov.l	@(-8,er6),er2
	mov.l	@(-16,er6),er0
	mov.l	@(-4,er6),er3
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@_strncmp
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L707
	mov.l	@(-4,er6),er2
	bra	.L705
.L707:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
.L706:
	mov.l	@(-16,er6),er2
	mov.b	@er2,r2l
	mov.b	r2l,r3l
	extu.w	r3
	mov.l	@(-4,er6),er2
	mov.w	r3,r1
	mov.l	er2,er0
	jsr	@_strchr
	mov.l	er0,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.l	er2,er2
	bne	.L708
	sub.l	er2,er2
.L705:
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	_strstr, .-_strstr
	.align 1
	.global _copysign
_copysign:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	sub.l	er1,er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L710
	sub.l	er1,er1
	mov.l	@(-8,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bgt	.L712
.L710:
	sub.l	er1,er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L713
	sub.l	er1,er1
	mov.l	@(-8,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L713
.L712:
	mov.l	@(-4,er6),er2
	xor.w	#32768,e2
	bra	.L716
.L713:
	mov.l	@(-4,er6),er2
.L716:
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	_copysign, .-_copysign
	.align 1
	.global _memmem
_memmem:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	mov.l	@(-16,er6),er3
	mov.l	@(8,er6),er2
	sub.l	er2,er3
	mov.l	@(-12,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-8,er6)
	mov.l	@(8,er6),er2
	mov.l	er2,er2
	bne	.L720
	mov.l	@(-12,er6),er2
	bra	.L721:16
.L720:
	mov.b	#1,r2l
	mov.l	@(-16,er6),er0
	mov.l	@(8,er6),er3
	cmp.l	er3,er0
	blo	.L722
	sub.b	r2l,r2l
.L722:
	mov.b	r2l,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er2
	beq	.L723
	sub.l	er2,er2
	bra	.L721:16
.L723:
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-4,er6)
	bra	.L724
.L726:
	mov.l	@(-4,er6),er2
	mov.b	@er2,r3l
	mov.l	@(-20,er6),er2
	mov.b	@er2,r2l
	cmp.b	r2l,r3l
	bne	.L725
	mov.l	@(8,er6),er2
	subs	#1,er2
	mov.l	er2,er1
	mov.l	@(-20,er6),er2
	adds	#1,er2
	mov.l	er2,er0
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,er3
	mov.l	er1,er2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@_memcmp
	mov.w	r0,r2
	mov.w	r2,r2
	bne	.L725
	mov.l	@(-4,er6),er2
	bra	.L721
.L725:
	mov.l	@(-4,er6),er2
	adds	#1,er2
	mov.l	er2,@(-4,er6)
.L724:
	mov.l	@(-4,er6),er3
	mov.l	@(-8,er6),er2
	cmp.l	er2,er3
	bls	.L726
	sub.l	er2,er2
.L721:
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_memmem, .-_memmem
	.align 1
	.global _mempcpy
_mempcpy:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	er2,@(-12,er6)
	mov.l	@(-12,er6),er2
	mov.l	@(-8,er6),er0
	mov.l	@(-4,er6),er3
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@_memcpy
	mov.l	er0,er3
	mov.l	@(-12,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_mempcpy, .-_mempcpy
	.align 1
	.global _frexp
_frexp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	sub.w	r2,r2
	mov.w	r2,@(-4,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	sub.l	er1,er1
	mov.l	@(-8,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L730
	mov.l	@(-8,er6),er2
	xor.w	#32768,e2
	mov.l	er2,@(-8,er6)
	mov.w	#1,r2
	mov.w	r2,@(-2,er6)
.L730:
	mov.l	#1065353216,er1
	mov.l	@(-8,er6),er0
	jsr	@___gesf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L747
	bra	.L734
.L735:
	mov.w	@(-4,er6),r2
	inc #1,r2
	mov.w	r2,@(-4,er6)
	mov.l	#1073741824,er1
	mov.l	@(-8,er6),er0
	jsr	@___divsf3
	mov.l	er0,er2
	mov.l	er2,@(-8,er6)
.L734:
	mov.l	#1065353216,er1
	mov.l	@(-8,er6),er0
	jsr	@___gesf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L735
	bra	.L736
.L747:
	mov.l	#1056964608,er1
	mov.l	@(-8,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L736
	sub.l	er1,er1
	mov.l	@(-8,er6),er0
	jsr	@___nesf2
	mov.l	er0,er2
	mov.l	er2,er2
	beq	.L736
	bra	.L739
.L740:
	mov.w	@(-4,er6),r2
	dec #1,r2
	mov.w	r2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er1
	mov.l	er2,er0
	jsr	@___addsf3
	mov.l	er0,er2
	mov.l	er2,@(-8,er6)
.L739:
	mov.l	#1056964608,er1
	mov.l	@(-8,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L740
.L736:
	mov.l	@(-12,er6),er2
	mov.w	@(-4,er6),r3
	mov.w	r3,@er2
	mov.w	@(-2,er6),r2
	mov.w	r2,r2
	beq	.L741
	mov.l	@(-8,er6),er2
	xor.w	#32768,e2
	mov.l	er2,@(-8,er6)
.L741:
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	_frexp, .-_frexp
	.align 1
	.global ___muldi3
___muldi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#48,er7
	mov.l	er0,@(-32,er6)
	mov.l	er1,@(-28,er6)
	sub.l	er2,er2
	mov.l	er2,@(-16,er6)
	sub.l	er2,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-32,er6),er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,@(-20,er6)
	bra	.L749:16
.L754:
	mov.l	@(-24,er6),er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(-56,er6)
	mov.l	@(-20,er6),er2
	and.l	#1,er2
	mov.l	er2,@(-52,er6)
	mov.l	@(-56,er6),er2
	mov.l	@(-52,er6),er3
	or.l	er3,er2
	mov.l	er2,er2
	beq	.L750
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	mov.l	@(8,er6),er2
	mov.l	er2,@(-48,er6)
	mov.l	@(12,er6),er2
	mov.l	er2,@(-44,er6)
	mov.l	@(-44,er6),er4
	add.l	er1,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er4,er5
	cmp.l	er1,er3
	blo	.L752
	sub.l	er4,er4
	mov.l	er4,er5
.L752:
	mov.l	@(-48,er6),er4
	add.l	er0,er4
	mov.l	er4,er2
	mov.l	er5,er0
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er2,@(-16,er6)
	mov.l	er3,@(-12,er6)
.L750:
	mov.l	@(8,er6),er2
	mov.l	@(12,er6),er3
	mov.l	er3,er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	er4,er5
	cmp.l	er3,er1
	blo	.L753
	sub.l	er4,er4
	mov.l	er4,er5
.L753:
	mov.l	er2,er4
	add.l	er2,er4
	mov.l	er4,er0
	mov.l	er5,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,@(8,er6)
	mov.l	er1,@(12,er6)
	mov.l	@(-24,er6),er2
	shlr.l	er2
	xor.l	er2,er2
	rotxr.l	er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-36,er6)
	shlr.l	er2
	mov.l	er2,@(-36,er6)
	mov.l	@(-36,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-36,er6)
	mov.l	@(-24,er6),er2
	mov.l	er2,@(-40,er6)
	shlr.l	er2
	mov.l	er2,@(-40,er6)
	mov.l	@(-40,er6),er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-36,er6),er2
	mov.l	er2,@(-20,er6)
.L749:
	mov.l	@(-24,er6),er2
	mov.l	@(-20,er6),er3
	or.l	er3,er2
	mov.l	er2,er2
	bne	.L754:16
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#48,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___muldi3, .-___muldi3
	.align 1
	.global _udivmodsi4
_udivmodsi4:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	er2,@(-20,er6)
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(-4,er6)
	sub.l	er2,er2
	mov.l	er2,@(-8,er6)
	bra	.L757
.L759:
	mov.l	@(-16,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-4,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-4,er6)
.L757:
	mov.l	@(-16,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bhs	.L760:16
	mov.l	@(-4,er6),er2
	mov.l	er2,er2
	beq	.L760
	mov.l	@(-16,er6),er2
	cmp.l	#-1,er2
	bgt	.L759
	bra	.L760
.L762:
	mov.l	@(-12,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	blo	.L761
	mov.l	@(-12,er6),er2
	mov.l	@(-16,er6),er3
	sub.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-8,er6)
.L761:
	mov.l	@(-4,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-16,er6)
.L760:
	mov.l	@(-4,er6),er2
	mov.l	er2,er2
	bne	.L762
	mov.l	@(-20,er6),er2
	mov.l	er2,er2
	beq	.L763
	mov.l	@(-12,er6),er2
	bra	.L764
.L763:
	mov.l	@(-8,er6),er2
.L764:
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	_udivmodsi4, .-_udivmodsi4
	.align 1
	.global ___clrsbqi2
___clrsbqi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.b	r0l,@(-5,er6)
	mov.b	@(-5,er6),r2l
	mov.b	r2l,r2l
	bne	.L766
	mov.w	#7,r2
	bra	.L767
.L766:
	mov.b	@(-5,er6),r3l
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
	mov.w	r2,@(-2,er6)
	mov.w	@(-2,er6),r2
	dec #1,r2
.L767:
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___clrsbqi2, .-___clrsbqi2
	.align 1
	.global ___clrsbdi2
___clrsbdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-12,er6),er0
	cmp.l	#-1,er0
	bgt	.L769
	mov.l	@(-12,er6),er0
	not.l	er0
	mov.l	er0,er2
	mov.l	@(-8,er6),er0
	not.l	er0
	mov.l	er0,er3
	mov.l	er2,@(-12,er6)
	mov.l	er3,@(-8,er6)
.L769:
	mov.l	@(-12,er6),er2
	mov.l	@(-8,er6),er3
	or.l	er3,er2
	mov.l	er2,er2
	bne	.L771
	mov.w	#63,r2
	bra	.L772
.L771:
	mov.l	@(-12,er6),er2
	mov.l	@(-8,er6),er3
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___clzdi2
	mov.w	r0,r2
	mov.w	r2,@(-2,er6)
	mov.w	@(-2,er6),r2
	dec #1,r2
.L772:
	mov.w	r2,r0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	___clrsbdi2, .-___clrsbdi2
	.align 1
	.global ___mulsi3
___mulsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.w	r0,@(-6,er6)
	mov.w	r1,@(-8,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L774
.L776:
	mov.w	@(-6,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L775
	mov.w	@(-2,er6),r3
	mov.w	@(-8,er6),r2
	add.w	r3,r2
	mov.w	r2,@(-2,er6)
.L775:
	mov.w	@(-6,er6),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(-6,er6)
	mov.w	@(-8,er6),r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@(-8,er6)
.L774:
	mov.w	@(-6,er6),r2
	mov.w	r2,r2
	bne	.L776
	mov.w	@(-2,er6),r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___mulsi3, .-___mulsi3
	.align 1
	.global ___cmovd
___cmovd:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#28,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-24,er6)
	mov.w	r2,@(-26,er6)
	mov.w	@(-26,er6),r3
	mov.w	r3,r2
	shlr.w	r2
	shlr.w	r2
	shlr.w	r2
	mov.w	r2,@(-6,er6)
	mov.w	@(-26,er6),r2
	and	#248,r2l
	mov.w	r2,@(-4,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-24,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-12,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	blo	.L779
	mov.w	@(-26,er6),r2
	extu.l	er2
	mov.l	@(-16,er6),er3
	add.l	er2,er3
	mov.l	@(-12,er6),er2
	cmp.l	er3,er2
	bls	.L786:16
.L779:
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L781
.L782:
	mov.w	@(-2,er6),r2
	extu.l	er2
	shll.l	er2
	shll.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-24,er6),er2
	add.l	er3,er2
	mov.l	er2,er1
	mov.w	@(-2,er6),r2
	extu.l	er2
	shll.l	er2
	shll.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.l	@er1,er2
	mov.l	@(4,er1),er3
	mov.l	er2,@er0
	mov.l	er3,@(4,er0)
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L781:
	mov.w	@(-2,er6),r3
	mov.w	@(-6,er6),r2
	cmp.w	r2,r3
	blo	.L782
	bra	.L783
.L784:
	mov.w	@(-4,er6),r2
	extu.l	er2
	mov.l	@(-16,er6),er3
	add.l	er2,er3
	mov.l	er3,er0
	mov.w	@(-4,er6),r2
	extu.l	er2
	mov.l	@(-12,er6),er3
	add.l	er2,er3
	mov.b	@er0,r2l
	mov.b	r2l,@er3
	mov.w	@(-4,er6),r2
	inc #1,r2
	mov.w	r2,@(-4,er6)
.L783:
	mov.w	@(-26,er6),r3
	mov.w	@(-4,er6),r2
	cmp.w	r2,r3
	bhi	.L784
	bra	.L785
.L787:
	mov.w	@(-26,er6),r2
	extu.l	er2
	mov.l	@(-16,er6),er3
	add.l	er2,er3
	mov.l	er3,er0
	mov.w	@(-26,er6),r2
	extu.l	er2
	mov.l	@(-12,er6),er3
	add.l	er2,er3
	mov.b	@er0,r2l
	mov.b	r2l,@er3
.L786:
	mov.w	@(-26,er6),r2
	mov.w	r2,r3
	dec #1,r3
	mov.w	r3,@(-26,er6)
	mov.w	r2,r2
	bne	.L787
.L785:
	nop
	add.l	#28,er7
	mov.l	@er7+,er6
	rts
	.size	___cmovd, .-___cmovd
	.align 1
	.global ___cmovh
___cmovh:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#24,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-20,er6)
	mov.w	r2,@(-22,er6)
	mov.w	@(-22,er6),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(-4,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	blo	.L789
	mov.w	@(-22,er6),r2
	extu.l	er2
	mov.l	@(-12,er6),er3
	add.l	er2,er3
	mov.l	@(-8,er6),er2
	cmp.l	er3,er2
	bls	.L795:16
.L789:
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L791
.L792:
	mov.w	@(-2,er6),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.w	@(-2,er6),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-16,er6),er2
	add.l	er2,er3
	mov.w	@er0,r2
	mov.w	r2,@er3
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L791:
	mov.w	@(-2,er6),r3
	mov.w	@(-4,er6),r2
	cmp.w	r2,r3
	blo	.L792
	mov.w	@(-22,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L794
	mov.w	@(-22,er6),r2
	dec #1,r2
	extu.l	er2
	mov.l	@(-12,er6),er3
	add.l	er2,er3
	mov.l	er3,er0
	mov.w	@(-22,er6),r2
	dec #1,r2
	extu.l	er2
	mov.l	@(-8,er6),er3
	add.l	er2,er3
	mov.b	@er0,r2l
	mov.b	r2l,@er3
	bra	.L794
.L796:
	mov.w	@(-22,er6),r2
	extu.l	er2
	mov.l	@(-12,er6),er3
	add.l	er2,er3
	mov.l	er3,er0
	mov.w	@(-22,er6),r2
	extu.l	er2
	mov.l	@(-8,er6),er3
	add.l	er2,er3
	mov.b	@er0,r2l
	mov.b	r2l,@er3
.L795:
	mov.w	@(-22,er6),r2
	mov.w	r2,r3
	dec #1,r3
	mov.w	r3,@(-22,er6)
	mov.w	r2,r2
	bne	.L796
.L794:
	nop
	add.l	#24,er7
	mov.l	@er7+,er6
	rts
	.size	___cmovh, .-___cmovh
	.align 1
	.global ___cmovw
___cmovw:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#28,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-24,er6)
	mov.w	r2,@(-26,er6)
	mov.w	@(-26,er6),r3
	mov.w	r3,r2
	shlr.w	r2
	shlr.w	r2
	mov.w	r2,@(-6,er6)
	mov.w	@(-26,er6),r2
	and	#252,r2l
	mov.w	r2,@(-4,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-24,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-12,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	blo	.L798
	mov.w	@(-26,er6),r2
	extu.l	er2
	mov.l	@(-16,er6),er3
	add.l	er2,er3
	mov.l	@(-12,er6),er2
	cmp.l	er3,er2
	bls	.L805:16
.L798:
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L800
.L801:
	mov.w	@(-2,er6),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-24,er6),er2
	add.l	er3,er2
	mov.l	er2,er0
	mov.w	@(-2,er6),r2
	extu.l	er2
	shll.l	er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	add.l	er2,er3
	mov.w	@er0,r2
	mov.w	r2,@er3
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L800:
	mov.w	@(-2,er6),r3
	mov.w	@(-6,er6),r2
	cmp.w	r2,r3
	blo	.L801
	bra	.L802
.L803:
	mov.w	@(-4,er6),r2
	extu.l	er2
	mov.l	@(-16,er6),er3
	add.l	er2,er3
	mov.l	er3,er0
	mov.w	@(-4,er6),r2
	extu.l	er2
	mov.l	@(-12,er6),er3
	add.l	er2,er3
	mov.b	@er0,r2l
	mov.b	r2l,@er3
	mov.w	@(-4,er6),r2
	inc #1,r2
	mov.w	r2,@(-4,er6)
.L802:
	mov.w	@(-26,er6),r3
	mov.w	@(-4,er6),r2
	cmp.w	r2,r3
	bhi	.L803
	bra	.L804
.L806:
	mov.w	@(-26,er6),r2
	extu.l	er2
	mov.l	@(-16,er6),er3
	add.l	er2,er3
	mov.l	er3,er0
	mov.w	@(-26,er6),r2
	extu.l	er2
	mov.l	@(-12,er6),er3
	add.l	er2,er3
	mov.b	@er0,r2l
	mov.b	r2l,@er3
.L805:
	mov.w	@(-26,er6),r2
	mov.w	r2,r3
	dec #1,r3
	mov.w	r3,@(-26,er6)
	mov.w	r2,r2
	bne	.L806
.L804:
	nop
	add.l	#28,er7
	mov.l	@er7+,er6
	rts
	.size	___cmovw, .-___cmovw
	.align 1
	.global ___modi
___modi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	r1,@(-4,er6)
	mov.w	@(-2,er6),r2
	mov.w	r2,r3
	exts.l	er3
	mov.w	@(-4,er6),r2
	divxs.w	r2,er3
	mov.w	e3,r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	___modi, .-___modi
	.align 1
	.global ___uitod
___uitod:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	extu.l	er2
	mov.l	er2,er0
	jsr	@___floatunsisf
	mov.l	er0,er2
	mov.l	er2,er0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	___uitod, .-___uitod
	.align 1
	.global ___uitof
___uitof:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	@(-2,er6),r2
	extu.l	er2
	mov.l	er2,er0
	jsr	@___floatunsisf
	mov.l	er0,er2
	mov.l	er2,er0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	___uitof, .-___uitof
	.align 1
	.global ___ulltod
___ulltod:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-4,er6)
	mov.l	@(-8,er6),er0
	mov.l	@(-4,er6),er1
	jsr	@___floatundisf
	mov.l	er0,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___ulltod, .-___ulltod
	.align 1
	.global ___ulltof
___ulltof:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-4,er6)
	mov.l	@(-8,er6),er0
	mov.l	@(-4,er6),er1
	jsr	@___floatundisf
	mov.l	er0,er2
	mov.l	er2,er0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___ulltof, .-___ulltof
	.align 1
	.global ___umodi
___umodi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.w	r0,@(-2,er6)
	mov.w	r1,@(-4,er6)
	mov.w	@(-2,er6),r2
	mov.w	r2,r3
	extu.l	er3
	mov.w	@(-4,er6),r2
	divxu.w	r2,er3
	mov.w	e3,r2
	mov.w	r2,r0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	___umodi, .-___umodi
	.align 1
	.global ___clzhi2
___clzhi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.w	r0,@(-6,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L820
.L823:
	mov.w	@(-2,er6),r3
	mov.w	#-32768,r2
	mov.b	r3l,r0l
	ble	.L827
.L826:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L826
.L827:
	mov.w	@(-6,er6),r3
	and.w	r3,r2
	mov.w	r2,r2
	bne	.L822
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L820:
	mov.w	@(-2,er6),r2
	cmp.w	#15,r2
	ble	.L823
.L822:
	mov.w	@(-2,er6),r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___clzhi2, .-___clzhi2
	.align 1
	.global ___ctzhi2
___ctzhi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.w	r0,@(-6,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L829
.L832:
	mov.w	@(-2,er6),r3
	mov.w	@(-6,er6),r2
	mov.b	r3l,r0l
	ble	.L836
.L835:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L835
.L836:
	and.w	#1,r2
	mov.w	r2,r2
	bne	.L831
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L829:
	mov.w	@(-2,er6),r2
	cmp.w	#15,r2
	ble	.L832
.L831:
	mov.w	@(-2,er6),r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___ctzhi2, .-___ctzhi2
	.align 1
	.global ___fixunssfsi
___fixunssfsi:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.l	er0,@(-4,er6)
	mov.l	#1191182336,er1
	mov.l	@(-4,er6),er0
	jsr	@___gesf2
	mov.l	er0,er2
	mov.l	er2,er2
	bmi	.L842
	mov.l	#1191182336,er1
	mov.l	@(-4,er6),er0
	jsr	@___subsf3
	mov.l	er0,er2
	mov.l	er2,er0
	jsr	@___fixsfsi
	mov.l	er0,er2
	add.l	#32768,er2
	bra	.L840
.L842:
	mov.l	@(-4,er6),er0
	jsr	@___fixsfsi
	mov.l	er0,er2
.L840:
	mov.l	er2,er0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	___fixunssfsi, .-___fixunssfsi
	.align 1
	.global ___parityhi2
___parityhi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.w	r0,@(-6,er6)
	sub.w	r2,r2
	mov.w	r2,@(-4,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L844
.L846:
	mov.w	@(-2,er6),r3
	mov.w	@(-6,er6),r2
	mov.b	r3l,r0l
	ble	.L849
.L848:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L848
.L849:
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L845
	mov.w	@(-4,er6),r2
	inc #1,r2
	mov.w	r2,@(-4,er6)
.L845:
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L844:
	mov.w	@(-2,er6),r2
	cmp.w	#15,r2
	ble	.L846
	mov.w	@(-4,er6),r2
	and.w	#1,r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___parityhi2, .-___parityhi2
	.align 1
	.global ___popcounthi2
___popcounthi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.w	r0,@(-6,er6)
	sub.w	r2,r2
	mov.w	r2,@(-4,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	bra	.L851
.L853:
	mov.w	@(-2,er6),r3
	mov.w	@(-6,er6),r2
	mov.b	r3l,r0l
	ble	.L856
.L855:
	shlr.w	r2
	add.b	#-1,r0l
	bne	.L855
.L856:
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L852
	mov.w	@(-4,er6),r2
	inc #1,r2
	mov.w	r2,@(-4,er6)
.L852:
	mov.w	@(-2,er6),r2
	inc #1,r2
	mov.w	r2,@(-2,er6)
.L851:
	mov.w	@(-2,er6),r2
	cmp.w	#15,r2
	ble	.L853
	mov.w	@(-4,er6),r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___popcounthi2, .-___popcounthi2
	.align 1
	.global ___mulsi3_iq2000
___mulsi3_iq2000:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	sub.l	er2,er2
	mov.l	er2,@(-4,er6)
	bra	.L858
.L860:
	mov.l	@(-8,er6),er2
	and.l	#1,er2
	mov.l	er2,er2
	beq	.L859
	mov.l	@(-4,er6),er3
	mov.l	@(-12,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
.L859:
	mov.l	@(-8,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-12,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-12,er6)
.L858:
	mov.l	@(-8,er6),er2
	mov.l	er2,er2
	bne	.L860
	mov.l	@(-4,er6),er2
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 1
	.global ___mulsi3_lm32
___mulsi3_lm32:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-12,er6)
	sub.l	er2,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,er2
	bne	.L865
	sub.l	er2,er2
	bra	.L864
.L867:
	mov.l	@(-12,er6),er2
	and.l	#1,er2
	mov.l	er2,er2
	beq	.L866
	mov.l	@(-4,er6),er3
	mov.l	@(-8,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
.L866:
	mov.l	@(-8,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-12,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-12,er6)
.L865:
	mov.l	@(-12,er6),er2
	mov.l	er2,er2
	bne	.L867
	mov.l	@(-4,er6),er2
.L864:
	mov.l	er2,er0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 1
	.global ___udivmodsi4
___udivmodsi4:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.w	r2,@(-18,er6)
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(-4,er6)
	sub.l	er2,er2
	mov.l	er2,@(-8,er6)
	bra	.L869
.L871:
	mov.l	@(-16,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-4,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-4,er6)
.L869:
	mov.l	@(-16,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bhs	.L872:16
	mov.l	@(-4,er6),er2
	mov.l	er2,er2
	beq	.L872
	mov.l	@(-16,er6),er2
	cmp.l	#-1,er2
	bgt	.L871
	bra	.L872
.L874:
	mov.l	@(-12,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	blo	.L873
	mov.l	@(-12,er6),er2
	mov.l	@(-16,er6),er3
	sub.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-8,er6)
.L873:
	mov.l	@(-4,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-16,er6)
.L872:
	mov.l	@(-4,er6),er2
	mov.l	er2,er2
	bne	.L874
	mov.w	@(-18,er6),r2
	mov.w	r2,r2
	beq	.L875
	mov.l	@(-12,er6),er2
	bra	.L876
.L875:
	mov.l	@(-8,er6),er2
.L876:
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	___udivmodsi4, .-___udivmodsi4
	.align 1
	.global ___mspabi_cmpf
___mspabi_cmpf:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L885
	mov.w	#-1,r2
	bra	.L880
.L885:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L886
	mov.w	#1,r2
	bra	.L880
.L886:
	sub.w	r2,r2
.L880:
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 1
	.global ___mspabi_cmpd
___mspabi_cmpd:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-4,er6)
	mov.l	er1,@(-8,er6)
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___ltsf2
	mov.l	er0,er2
	mov.l	er2,er2
	bpl	.L895
	mov.w	#-1,r2
	bra	.L890
.L895:
	mov.l	@(-8,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___gtsf2
	mov.l	er0,er2
	mov.l	er2,er2
	ble	.L896
	mov.w	#1,r2
	bra	.L890
.L896:
	sub.w	r2,r2
.L890:
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 1
	.global ___mspabi_mpysll
___mspabi_mpysll:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	@(-12,er6),er0
	mov.l	er0,er5
	shll	e0
	subx	r0l,r0l
	exts.w	r0
	exts.l	er0
	mov.l	er0,er1
	mov.l	er1,er4
	mov.l	@(-16,er6),er0
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 1
	.global ___mspabi_mpyull
___mspabi_mpyull:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.l	@(-12,er6),er0
	mov.l	er0,er5
	sub.l	er4,er4
	mov.l	@(-16,er6),er0
	mov.l	er0,er3
	sub.l	er2,er2
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er4,er0
	mov.l	er5,er1
	jsr	@___muldi3
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 1
	.global ___mulhi3
___mulhi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.w	r0,@(-10,er6)
	mov.w	r1,@(-12,er6)
	sub.w	r2,r2
	mov.w	r2,@(-4,er6)
	sub.w	r2,r2
	mov.w	r2,@(-6,er6)
	mov.w	@(-12,er6),r2
	cmp.w	#-1,r2
	bgt	.L902
	mov.w	@(-12,er6),r2
	neg.w	r2
	mov.w	r2,@(-12,er6)
	mov.w	#1,r2
	mov.w	r2,@(-4,er6)
.L902:
	sub.b	r2l,r2l
	mov.b	r2l,@(-1,er6)
	bra	.L903
.L906:
	mov.w	@(-12,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L904
	mov.w	@(-6,er6),r3
	mov.w	@(-10,er6),r2
	add.w	r3,r2
	mov.w	r2,@(-6,er6)
.L904:
	mov.w	@(-10,er6),r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@(-10,er6)
	mov.w	@(-12,er6),r3
	mov.w	r3,r2
	shar.w	r2
	mov.w	r2,@(-12,er6)
	mov.b	@(-1,er6),r2l
	add.b	#1,r2l
	mov.b	r2l,@(-1,er6)
.L903:
	mov.w	@(-12,er6),r2
	mov.w	r2,r2
	beq	.L905
	mov.b	@(-1,er6),r2l
	cmp.b	#15,r2l
	bls	.L906
.L905:
	mov.w	@(-4,er6),r2
	mov.w	r2,r2
	beq	.L907
	mov.w	@(-6,er6),r2
	neg.w	r2
	bra	.L909
.L907:
	mov.w	@(-6,er6),r2
.L909:
	mov.w	r2,r0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	___mulhi3, .-___mulhi3
	.align 1
	.global ___divsi3
___divsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	mov.l	@(-12,er6),er2
	cmp.l	#-1,er2
	bgt	.L911
	mov.l	@(-12,er6),er2
	neg.l	er2
	mov.l	er2,@(-12,er6)
	mov.b	#1,r2l
	mov.w	@(-2,er6),r3
	mov.w	r3,r3
	beq	.L912
	sub.b	r2l,r2l
.L912:
	extu.w	r2
	mov.w	r2,@(-2,er6)
.L911:
	mov.l	@(-16,er6),er2
	cmp.l	#-1,er2
	bgt	.L913
	mov.l	@(-16,er6),er2
	neg.l	er2
	mov.l	er2,@(-16,er6)
	mov.b	#1,r2l
	mov.w	@(-2,er6),r3
	mov.w	r3,r3
	beq	.L914
	sub.b	r2l,r2l
.L914:
	extu.w	r2
	mov.w	r2,@(-2,er6)
.L913:
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er3
	sub.w	r2,r2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@___udivmodsi4
	mov.l	er0,er2
	mov.l	er2,@(-8,er6)
	mov.w	@(-2,er6),r2
	mov.w	r2,r2
	beq	.L915
	mov.l	@(-8,er6),er2
	neg.l	er2
	mov.l	er2,@(-8,er6)
.L915:
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	___divsi3, .-___divsi3
	.align 1
	.global ___modsi3
___modsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	sub.w	r2,r2
	mov.w	r2,@(-2,er6)
	mov.l	@(-12,er6),er2
	cmp.l	#-1,er2
	bgt	.L918
	mov.l	@(-12,er6),er2
	neg.l	er2
	mov.l	er2,@(-12,er6)
	mov.w	#1,r2
	mov.w	r2,@(-2,er6)
.L918:
	mov.l	@(-16,er6),er2
	cmp.l	#-1,er2
	bgt	.L919
	mov.l	@(-16,er6),er2
	neg.l	er2
	mov.l	er2,@(-16,er6)
.L919:
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er3
	mov.w	#1,r2
	mov.l	er0,er1
	mov.l	er3,er0
	jsr	@___udivmodsi4
	mov.l	er0,er2
	mov.l	er2,@(-8,er6)
	mov.w	@(-2,er6),r2
	mov.w	r2,r2
	beq	.L920
	mov.l	@(-8,er6),er2
	neg.l	er2
	mov.l	er2,@(-8,er6)
.L920:
	mov.l	@(-8,er6),er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	___modsi3, .-___modsi3
	.align 1
	.global ___udivmodhi4
___udivmodhi4:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#12,er7
	mov.w	r0,@(-6,er6)
	mov.w	r1,@(-8,er6)
	mov.w	r2,@(-10,er6)
	mov.w	#1,r2
	mov.w	r2,@(-2,er6)
	sub.w	r2,r2
	mov.w	r2,@(-4,er6)
	bra	.L923
.L925:
	mov.w	@(-8,er6),r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@(-8,er6)
	mov.w	@(-2,er6),r3
	mov.w	r3,r2
	shll.w	r2
	mov.w	r2,@(-2,er6)
.L923:
	mov.w	@(-8,er6),r3
	mov.w	@(-6,er6),r2
	cmp.w	r2,r3
	bhs	.L926
	mov.w	@(-2,er6),r2
	mov.w	r2,r2
	beq	.L926
	mov.w	@(-8,er6),r2
	cmp.w	#-1,r2
	bgt	.L925
	bra	.L926
.L928:
	mov.w	@(-6,er6),r3
	mov.w	@(-8,er6),r2
	cmp.w	r2,r3
	blo	.L927
	mov.w	@(-6,er6),r2
	mov.w	@(-8,er6),r3
	sub.w	r3,r2
	mov.w	r2,@(-6,er6)
	mov.w	@(-4,er6),r3
	mov.w	@(-2,er6),r2
	or.w	r3,r2
	mov.w	r2,@(-4,er6)
.L927:
	mov.w	@(-2,er6),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(-2,er6)
	mov.w	@(-8,er6),r3
	mov.w	r3,r2
	shlr.w	r2
	mov.w	r2,@(-8,er6)
.L926:
	mov.w	@(-2,er6),r2
	mov.w	r2,r2
	bne	.L928
	mov.w	@(-10,er6),r2
	mov.w	r2,r2
	beq	.L929
	mov.w	@(-6,er6),r2
	bra	.L930
.L929:
	mov.w	@(-4,er6),r2
.L930:
	mov.w	r2,r0
	add.l	#12,er7
	mov.l	@er7+,er6
	rts
	.size	___udivmodhi4, .-___udivmodhi4
	.align 1
	.global ___udivmodsi4_libgcc
___udivmodsi4_libgcc:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-12,er6)
	mov.l	er1,@(-16,er6)
	mov.w	r2,@(-18,er6)
	sub.l	er2,er2
	add.b	#1,r2l
	mov.l	er2,@(-4,er6)
	sub.l	er2,er2
	mov.l	er2,@(-8,er6)
	bra	.L932
.L934:
	mov.l	@(-16,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-4,er6),er3
	mov.l	er3,er2
	shll.l	er2
	mov.l	er2,@(-4,er6)
.L932:
	mov.l	@(-16,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bhs	.L935:16
	mov.l	@(-4,er6),er2
	mov.l	er2,er2
	beq	.L935
	mov.l	@(-16,er6),er2
	cmp.l	#-1,er2
	bgt	.L934
	bra	.L935
.L937:
	mov.l	@(-12,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	blo	.L936
	mov.l	@(-12,er6),er2
	mov.l	@(-16,er6),er3
	sub.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-4,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-8,er6)
.L936:
	mov.l	@(-4,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-16,er6),er3
	mov.l	er3,er2
	shlr.l	er2
	mov.l	er2,@(-16,er6)
.L935:
	mov.l	@(-4,er6),er2
	mov.l	er2,er2
	bne	.L937
	mov.w	@(-18,er6),r2
	mov.w	r2,r2
	beq	.L938
	mov.l	@(-12,er6),er2
	bra	.L939
.L938:
	mov.l	@(-8,er6),er2
.L939:
	mov.l	er2,er0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 1
	.global ___ashldi3
___ashldi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#32,er7
	mov.l	er0,@(-36,er6)
	mov.l	er1,@(-32,er6)
	mov.w	r2,@(-38,er6)
	mov.w	#32,r2
	mov.w	r2,@(-10,er6)
	mov.l	@(-36,er6),er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-32,er6),er2
	mov.l	er2,@(-16,er6)
	mov.w	@(-38,er6),r3
	mov.w	@(-10,er6),r2
	and.w	r3,r2
	mov.w	r2,r2
	beq	.L941
	sub.l	er2,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-16,er6),er0
	mov.w	@(-38,er6),r3
	mov.w	@(-10,er6),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L947
.L946:
	shll.l	er2
	add.b	#-1,r0l
	bne	.L946
.L947:
	mov.l	er2,@(-28,er6)
	bra	.L942:16
.L941:
	mov.w	@(-38,er6),r2
	mov.w	r2,r2
	bne	.L943
	mov.l	@(-36,er6),er2
	mov.l	@(-32,er6),er3
	bra	.L945
.L943:
	mov.l	@(-16,er6),er2
	mov.w	@(-38,er6),r3
	mov.b	r3l,r0l
	ble	.L949
.L948:
	shll.l	er2
	add.b	#-1,r0l
	bne	.L948
.L949:
	mov.l	er2,@(-24,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,er3
	mov.w	@(-38,er6),r2
	mov.b	r2l,r0l
	ble	.L951
.L950:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L950
.L951:
	mov.l	@(-16,er6),er1
	mov.w	@(-10,er6),r0
	mov.w	@(-38,er6),r2
	sub.w	r2,r0
	mov.l	er1,er2
	mov.b	r0l,r1l
	ble	.L953
.L952:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L952
.L953:
	or.l	er3,er2
	mov.l	er2,@(-28,er6)
.L942:
	mov.l	@(-28,er6),er2
	mov.l	@(-24,er6),er3
.L945:
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#32,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___ashldi3, .-___ashldi3
	.align 1
	.global ___ashrdi3
___ashrdi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#32,er7
	mov.l	er0,@(-36,er6)
	mov.l	er1,@(-32,er6)
	mov.w	r2,@(-38,er6)
	mov.w	#32,r2
	mov.w	r2,@(-10,er6)
	mov.l	@(-36,er6),er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-32,er6),er2
	mov.l	er2,@(-16,er6)
	mov.w	@(-38,er6),r3
	mov.w	@(-10,er6),r2
	and.w	r3,r2
	mov.w	r2,r2
	beq	.L955
	mov.l	@(-20,er6),er0
	mov.w	@(-10,er6),r2
	dec #1,r2
	mov.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L961
.L960:
	shar.l	er2
	add.b	#-1,r0l
	bne	.L960
.L961:
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er0
	mov.w	@(-38,er6),r3
	mov.w	@(-10,er6),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L963
.L962:
	shar.l	er2
	add.b	#-1,r0l
	bne	.L962
.L963:
	mov.l	er2,@(-24,er6)
	bra	.L956:16
.L955:
	mov.w	@(-38,er6),r2
	mov.w	r2,r2
	bne	.L957
	mov.l	@(-36,er6),er2
	mov.l	@(-32,er6),er3
	bra	.L959
.L957:
	mov.l	@(-20,er6),er2
	mov.w	@(-38,er6),r3
	mov.b	r3l,r0l
	ble	.L965
.L964:
	shar.l	er2
	add.b	#-1,r0l
	bne	.L964
.L965:
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,er0
	mov.w	@(-10,er6),r2
	mov.w	@(-38,er6),r3
	sub.w	r3,r2
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L967
.L966:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L966
.L967:
	mov.l	@(-16,er6),er2
	mov.w	@(-38,er6),r0
	mov.b	r0l,r1l
	ble	.L969
.L968:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L968
.L969:
	or.l	er3,er2
	mov.l	er2,@(-24,er6)
.L956:
	mov.l	@(-28,er6),er2
	mov.l	@(-24,er6),er3
.L959:
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#32,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___ashrdi3, .-___ashrdi3
	.align 1
	.global ___bswapdi2
___bswapdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#152,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-44,er6)
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,@(-44,er6)
	sub.l	er2,er2
	mov.l	er2,@(-48,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,er5
	mov.w	e5,r2
	mov.b	r5h,r5l
	mov.b	r2l,r5h
	mov.b	r2h,r2l
	extu.w	r2
	mov.w	r2,e5
	sub.l	er4,er4
	mov.l	er4,er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(-64,er6)
	mov.l	er5,er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,@(-60,er6)
	mov.l	@(-48,er6),er2
	mov.l	@(-64,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-72,er6)
	mov.l	@(-44,er6),er2
	mov.l	@(-60,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-68,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,er3
	mov.w	e3,r2
	mov.b	r2l,r2h
	mov.b	r3h,r2l
	mov.b	r3l,r3h
	sub.b	r3l,r3l
	mov.w	r2,e3
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-28,er6)
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-28,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-32,er6)
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-32,er6),er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(-80,er6)
	mov.l	@(-28,er6),er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,@(-76,er6)
	mov.l	@(-72,er6),er2
	mov.l	@(-80,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-88,er6)
	mov.l	@(-68,er6),er2
	mov.l	@(-76,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-84,er6)
	mov.l	@(-16,er6),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-20,er6),er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	mov.l	er2,@(-20,er6)
	mov.l	@(-20,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-24,er6),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	er2,@(-24,er6)
	mov.l	@(-24,er6),er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(-96,er6)
	mov.l	@(-20,er6),er2
	and.l	#-16777216,er2
	mov.l	er2,@(-92,er6)
	mov.l	@(-88,er6),er2
	mov.l	@(-96,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-104,er6)
	mov.l	@(-84,er6),er2
	mov.l	@(-92,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-100,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L971
	sub.l	er0,er0
.L971:
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
	blo	.L972
	sub.l	er2,er2
.L972:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	and	#0,r0h
	sub.w	e0,e0
	mov.l	er0,@(-112,er6)
	mov.l	er3,er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(-108,er6)
	mov.l	@(-104,er6),er2
	mov.l	@(-112,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-120,er6)
	mov.l	@(-100,er6),er2
	mov.l	@(-108,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-116,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	mov.l	er3,er0
	add.l	er3,er0
	mov.l	er0,er5
	sub.l	er0,er0
	add.b	#1,r0l
	cmp.l	er3,er5
	blo	.L979
	sub.l	er0,er0
.L979:
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
	blo	.L980
	sub.l	er2,er2
.L980:
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
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	and	#0,r0l
	sub.w	e0,e0
	mov.l	er0,@(-128,er6)
	mov.l	er3,er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(-124,er6)
	mov.l	@(-120,er6),er2
	mov.l	@(-128,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-136,er6)
	mov.l	@(-116,er6),er2
	mov.l	@(-124,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-132,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-40,er6)
	mov.l	@(-40,er6),er2
	mov.w	e2,r3
	mov.b	r3l,r3h
	mov.b	r2h,r3l
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r3,e2
	mov.l	er2,@(-40,er6)
	sub.l	er2,er2
	mov.l	er2,@(-36,er6)
	mov.l	@(-40,er6),er2
	sub.w	r2,r2
	extu.w	e2
	mov.l	er2,@(-144,er6)
	mov.l	@(-36,er6),er2
	sub.w	r2,r2
	sub.w	e2,e2
	mov.l	er2,@(-140,er6)
	mov.l	@(-136,er6),er2
	mov.l	@(-144,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-152,er6)
	mov.l	@(-132,er6),er2
	mov.l	@(-140,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-148,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-56,er6)
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,@(-56,er6)
	sub.l	er2,er2
	mov.l	er2,@(-52,er6)
	mov.l	@(-152,er6),er2
	mov.l	@(-56,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-160,er6)
	mov.l	@(-148,er6),er2
	mov.l	@(-52,er6),er3
	or.l	er3,er2
	mov.l	er2,@(-156,er6)
	mov.l	@(-160,er6),er2
	mov.l	@(-156,er6),er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#152,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___bswapdi2, .-___bswapdi2
	.align 1
	.global ___bswapsi2
___bswapsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	subs	#4,er7
	mov.l	er0,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.w	e2,r2
	mov.b	r2h,r2l
	extu.w	r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	mov.w	e2,r0
	mov.b	r2h,r2l
	mov.b	r0l,r2h
	mov.b	r0h,r0l
	extu.w	r0
	mov.w	r0,e2
	and	#0,r2l
	sub.w	e2,e2
	or.l	er2,er3
	mov.l	@(-4,er6),er2
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
	mov.l	@(-4,er6),er2
	mov.b	r2l,r2h
	sub.b	r2l,r2l
	mov.w	r2,e2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	er0,er2
	or.l	er3,er2
	mov.l	er2,er0
	adds	#4,er7
	mov.l	@er7+,er6
	rts
	.size	___bswapsi2, .-___bswapsi2
	.align 1
	.global ___clzsi2
___clzsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	cmp.l	#65535,er2
	bhi	.L1007
	sub.l	er2,er2
	add.b	#16,r2l
	bra	.L1008
.L1007:
	sub.l	er2,er2
.L1008:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r0
	mov.w	#16,r2
	sub.w	r0,r2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1018
.L1017:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1017
.L1018:
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	and	#0,r2l
	sub.w	e2,e2
	mov.l	er2,er2
	bne	.L1009
	sub.l	er2,er2
	add.b	#8,r2l
	bra	.L1010
.L1009:
	sub.l	er2,er2
.L1010:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r0
	mov.w	#8,r2
	sub.w	r0,r2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1020
.L1019:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1019
.L1020:
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	and.l	#240,er2
	mov.l	er2,er2
	bne	.L1011
	sub.l	er2,er2
	add.b	#4,r2l
	bra	.L1012
.L1011:
	sub.l	er2,er2
.L1012:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r0
	mov.w	#4,r2
	sub.w	r0,r2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1022
.L1021:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1021
.L1022:
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	and.l	#12,er2
	mov.l	er2,er2
	bne	.L1013
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1014
.L1013:
	sub.l	er2,er2
.L1014:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r0
	mov.w	#2,r2
	sub.w	r0,r2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1024
.L1023:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1023
.L1024:
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	and.l	#2,er2
	mov.l	er2,er3
	mov.b	#1,r2l
	mov.l	er3,er3
	beq	.L1015
	sub.b	r2l,r2l
.L1015:
	extu.w	r2
	mov.w	r2,r0
	sub.l	er3,er3
	add.b	#2,r3l
	mov.l	@(-4,er6),er2
	sub.l	er2,er3
	mov.w	r3,r2
	mulxu.w	r0,er2
	mov.w	r2,r3
	mov.l	@(-12,er6),er2
	add.w	r3,r2
	mov.w	r2,r0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	___clzsi2, .-___clzsi2
	.align 1
	.global ___cmpdi2
___cmpdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#24,er7
	mov.l	er0,@(-24,er6)
	mov.l	er1,@(-20,er6)
	mov.l	@(-24,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(8,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(12,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	bge	.L1026
	sub.l	er2,er2
	bra	.L1031
.L1026:
	mov.l	@(-8,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	ble	.L1028
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1031
.L1028:
	mov.l	@(-4,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bhs	.L1029
	sub.l	er2,er2
	bra	.L1031
.L1029:
	mov.l	@(-4,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bls	.L1030
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1031
.L1030:
	sub.l	er2,er2
	add.b	#1,r2l
.L1031:
	mov.l	er2,er0
	add.l	#24,er7
	mov.l	@er7+,er6
	rts
	.size	___cmpdi2, .-___cmpdi2
	.align 1
	.global ___aeabi_lcmp
___aeabi_lcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-8,er6)
	mov.l	er1,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	@(-4,er6),er3
	mov.l	@(8,er6),er0
	mov.l	er0,@er7
	mov.l	@(12,er6),er0
	mov.l	er0,@(4,er7)
	mov.l	er2,er0
	mov.l	er3,er1
	jsr	@___cmpdi2
	mov.l	er0,er2
	subs	#1,er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 1
	.global ___ctzsi2
___ctzsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	sub.w	e2,e2
	mov.l	er2,er2
	bne	.L1035
	sub.l	er2,er2
	add.b	#16,r2l
	bra	.L1036
.L1035:
	sub.l	er2,er2
.L1036:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1045
.L1044:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1044
.L1045:
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	and	#0,r2h
	sub.w	e2,e2
	mov.l	er2,er2
	bne	.L1037
	sub.l	er2,er2
	add.b	#8,r2l
	bra	.L1038
.L1037:
	sub.l	er2,er2
.L1038:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1047
.L1046:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1046
.L1047:
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	and.l	#15,er2
	mov.l	er2,er2
	bne	.L1039
	sub.l	er2,er2
	add.b	#4,r2l
	bra	.L1040
.L1039:
	sub.l	er2,er2
.L1040:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1049
.L1048:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1048
.L1049:
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	and.l	#3,er2
	mov.l	er2,er2
	bne	.L1041
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1042
.L1041:
	sub.l	er2,er2
.L1042:
	mov.l	er2,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	mov.b	r3l,r0l
	ble	.L1051
.L1050:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1050
.L1051:
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	and.l	#3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-8,er6),er2
	mov.l	@(-12,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-4,er6),er2
	not.l	er2
	and.w	#1,r2
	mov.w	r2,r0
	mov.l	@(-4,er6),er2
	shlr.l	er2
	mov.l	er2,er3
	sub.l	er2,er2
	add.b	#2,r2l
	sub.l	er3,er2
	mov.w	r2,r3
	mov.w	r0,r2
	neg.w	r2
	and.w	r3,r2
	mov.l	@(-12,er6),er3
	add.w	r3,r2
	mov.w	r2,r0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	___ctzsi2, .-___ctzsi2
	.align 1
	.global ___lshrdi3
___lshrdi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#32,er7
	mov.l	er0,@(-36,er6)
	mov.l	er1,@(-32,er6)
	mov.w	r2,@(-38,er6)
	mov.w	#32,r2
	mov.w	r2,@(-10,er6)
	mov.l	@(-36,er6),er2
	mov.l	@(-32,er6),er3
	mov.l	er2,@(-20,er6)
	mov.l	er3,@(-16,er6)
	mov.w	@(-38,er6),r3
	mov.w	@(-10,er6),r2
	and.w	r3,r2
	mov.w	r2,r2
	beq	.L1053
	sub.l	er2,er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er0
	mov.w	@(-38,er6),r3
	mov.w	@(-10,er6),r2
	sub.w	r2,r3
	mov.l	er0,er2
	mov.b	r3l,r0l
	ble	.L1059
.L1058:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1058
.L1059:
	mov.l	er2,@(-24,er6)
	bra	.L1054:16
.L1053:
	mov.w	@(-38,er6),r2
	mov.w	r2,r2
	bne	.L1055
	mov.l	@(-36,er6),er2
	mov.l	@(-32,er6),er3
	bra	.L1057
.L1055:
	mov.l	@(-20,er6),er2
	mov.w	@(-38,er6),r3
	mov.b	r3l,r0l
	ble	.L1061
.L1060:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1060
.L1061:
	mov.l	er2,@(-28,er6)
	mov.l	@(-20,er6),er0
	mov.w	@(-10,er6),r2
	mov.w	@(-38,er6),r3
	sub.w	r3,r2
	mov.l	er0,er3
	mov.b	r2l,r0l
	ble	.L1063
.L1062:
	shll.l	er3
	add.b	#-1,r0l
	bne	.L1062
.L1063:
	mov.l	@(-16,er6),er2
	mov.w	@(-38,er6),r0
	mov.b	r0l,r1l
	ble	.L1065
.L1064:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1064
.L1065:
	or.l	er3,er2
	mov.l	er2,@(-24,er6)
.L1054:
	mov.l	@(-28,er6),er0
	mov.l	@(-24,er6),er1
	mov.l	er0,er2
	mov.l	er1,er3
.L1057:
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#32,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___lshrdi3, .-___lshrdi3
	.align 1
	.global ___muldsi3
___muldsi3:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#28,er7
	mov.l	er0,@(-32,er6)
	mov.l	er1,@(-36,er6)
	mov.w	#16,r2
	mov.w	r2,@(-10,er6)
	mov.w	@(-10,er6),r3
	sub.l	er2,er2
	subs	#1,er2
	mov.b	r3l,r0l
	ble	.L1069
.L1068:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1068
.L1069:
	mov.l	er2,@(-16,er6)
	mov.l	@(-32,er6),er3
	mov.l	@(-16,er6),er2
	and.l	er2,er3
	mov.l	er3,er0
	mov.l	@(-36,er6),er3
	mov.l	@(-16,er6),er2
	and.l	er3,er2
	mov.l	er2,er1
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-24,er6),er2
	mov.w	@(-10,er6),r3
	mov.b	r3l,r0l
	ble	.L1071
.L1070:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1070
.L1071:
	mov.l	er2,@(-20,er6)
	mov.l	@(-24,er6),er3
	mov.l	@(-16,er6),er2
	and.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.w	@(-10,er6),r3
	mov.l	@(-32,er6),er2
	mov.b	r3l,r0l
	ble	.L1073
.L1072:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1072
.L1073:
	mov.l	@(-36,er6),er0
	mov.l	@(-16,er6),er3
	and.l	er0,er3
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-24,er6),er0
	mov.l	@(-20,er6),er3
	mov.l	@(-16,er6),er2
	and.l	er3,er2
	mov.w	@(-10,er6),r3
	mov.b	r3l,r1l
	ble	.L1075
.L1074:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L1074
.L1075:
	add.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.w	@(-10,er6),r3
	mov.l	@(-20,er6),er2
	mov.b	r3l,r0l
	ble	.L1077
.L1076:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1076
.L1077:
	mov.l	er2,@(-28,er6)
	mov.l	@(-24,er6),er2
	mov.w	@(-10,er6),r3
	mov.b	r3l,r0l
	ble	.L1079
.L1078:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1078
.L1079:
	mov.l	er2,@(-20,er6)
	mov.l	@(-24,er6),er3
	mov.l	@(-16,er6),er2
	and.l	er3,er2
	mov.l	er2,@(-24,er6)
	mov.w	@(-10,er6),r3
	mov.l	@(-36,er6),er2
	mov.b	r3l,r0l
	ble	.L1081
.L1080:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1080
.L1081:
	mov.l	@(-32,er6),er0
	mov.l	@(-16,er6),er3
	and.l	er0,er3
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-24,er6),er0
	mov.l	@(-20,er6),er3
	mov.l	@(-16,er6),er2
	and.l	er3,er2
	mov.w	@(-10,er6),r3
	mov.b	r3l,r1l
	ble	.L1083
.L1082:
	shll.l	er2
	add.b	#-1,r1l
	bne	.L1082
.L1083:
	add.l	er0,er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,er0
	mov.w	@(-10,er6),r3
	mov.l	@(-20,er6),er2
	mov.b	r3l,r1l
	ble	.L1085
.L1084:
	shlr.l	er2
	add.b	#-1,r1l
	bne	.L1084
.L1085:
	add.l	er0,er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,er4
	mov.w	@(-10,er6),r3
	mov.l	@(-32,er6),er2
	mov.b	r3l,r0l
	ble	.L1087
.L1086:
	shlr.l	er2
	add.b	#-1,r0l
	bne	.L1086
.L1087:
	mov.w	@(-10,er6),r0
	mov.l	@(-36,er6),er3
	mov.b	r0l,r1l
	ble	.L1089
.L1088:
	shlr.l	er3
	add.b	#-1,r1l
	bne	.L1088
.L1089:
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	add.l	er4,er2
	mov.l	er2,@(-28,er6)
	mov.l	@(-28,er6),er2
	mov.l	@(-24,er6),er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#28,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___muldsi3, .-___muldsi3
	.align 1
	.global ___muldi3_compiler_rt
___muldi3_compiler_rt:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#32,er7
	mov.l	er0,@(-40,er6)
	mov.l	er1,@(-36,er6)
	mov.l	@(-40,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-36,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(8,er6),er2
	mov.l	er2,@(-24,er6)
	mov.l	@(12,er6),er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-20,er6),er3
	mov.l	@(-12,er6),er2
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___muldsi3
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,@(-32,er6)
	mov.l	er3,@(-28,er6)
	mov.l	@(-32,er6),er2
	mov.l	er2,er4
	mov.l	@(-16,er6),er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	mov.l	er2,er1
	mov.l	er3,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	mov.l	er2,er5
	mov.l	@(-12,er6),er2
	mov.l	@(-24,er6),er3
	mov.l	er3,er1
	mov.l	er2,er0
	jsr	@___mulsi3
	mov.l	er0,er2
	add.l	er5,er2
	add.l	er4,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-32,er6),er2
	mov.l	@(-28,er6),er3
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	add.l	#32,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 1
	.global ___negdi2
___negdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-24,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-20,er6)
	sub.l	er0,er0
	sub.l	er1,er1
	mov.l	er1,er4
	mov.l	@(-20,er6),er5
	sub.l	er5,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	bhi	.L1093
	sub.l	er4,er4
.L1093:
	mov.l	@(-24,er6),er1
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,er0
	mov.l	er4,er1
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,er4
	mov.l	er3,er5
	mov.l	er4,er0
	mov.l	er5,er1
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	mov.l	er3,er1
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___negdi2, .-___negdi2
	.align 1
	.global ___paritydi2
___paritydi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#20,er7
	mov.l	er0,@(-20,er6)
	mov.l	er1,@(-16,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-12,er6),er2
	mov.l	er2,er3
	mov.l	@(-8,er6),er2
	xor.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	xor.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	@(-4,er6),er3
	xor.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	xor.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	and.w	#15,r2
	mov.w	r2,r3
	mov.w	#27030,r2
	mov.b	r3l,r0l
	ble	.L1098
.L1097:
	shar.w	r2
	add.b	#-1,r0l
	bne	.L1097
.L1098:
	and.w	#1,r2
	mov.w	r2,r0
	add.l	#20,er7
	mov.l	@er7+,er6
	rts
	.size	___paritydi2, .-___paritydi2
	.align 1
	.global ___paritysi2
___paritysi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	xor.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.l	@(-4,er6),er3
	xor.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	xor.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	and.w	#15,r2
	mov.w	r2,r3
	mov.w	#27030,r2
	mov.b	r3l,r0l
	ble	.L1102
.L1101:
	shar.w	r2
	add.b	#-1,r0l
	bne	.L1101
.L1102:
	and.w	#1,r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___paritysi2, .-___paritysi2
	.align 1
	.global ___popcountdi2
___popcountdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#68,er7
	mov.l	er0,@(-28,er6)
	mov.l	er1,@(-24,er6)
	mov.l	@(-28,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(-24,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-16,er6),er2
	shlr.l	er2
	xor.l	er2,er2
	rotxr.l	er2
	mov.l	er2,er3
	mov.l	@(-12,er6),er2
	shlr.l	er2
	mov.l	er2,er5
	or.l	er3,er5
	mov.l	@(-16,er6),er2
	shlr.l	er2
	mov.l	er2,er4
	mov.l	er4,er2
	and.l	#1431655765,er2
	mov.l	er2,@(-60,er6)
	mov.l	er5,er2
	and.l	#1431655765,er2
	mov.l	er2,@(-56,er6)
	mov.l	@(-16,er6),er0
	mov.l	@(-12,er6),er1
	mov.l	er1,er4
	mov.l	@(-56,er6),er5
	sub.l	er5,er4
	mov.l	er4,er3
	sub.l	er4,er4
	add.b	#1,r4l
	cmp.l	er1,er3
	bhi	.L1104
	sub.l	er4,er4
.L1104:
	mov.l	@(-60,er6),er1
	sub.l	er1,er0
	mov.l	er0,er2
	mov.l	er2,er0
	sub.l	er4,er0
	mov.l	er0,er2
	mov.l	er2,@(-16,er6)
	mov.l	er3,@(-12,er6)
	mov.l	@(-16,er6),er2
	sub.w	e2,e2
	rotr.l	er2
	rotr.l	er2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-40,er6)
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(-40,er6)
	mov.l	@(-40,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-40,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-44,er6)
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(-44,er6)
	mov.l	@(-44,er6),er2
	and.l	#858993459,er2
	mov.l	er2,@(-52,er6)
	mov.l	@(-40,er6),er2
	and.l	#858993459,er2
	mov.l	er2,@(-48,er6)
	mov.l	@(-16,er6),er2
	and.l	#858993459,er2
	mov.l	er2,@(-68,er6)
	mov.l	@(-12,er6),er2
	and.l	#858993459,er2
	mov.l	er2,@(-64,er6)
	mov.l	@(-48,er6),er0
	mov.l	@(-64,er6),er1
	add.l	er1,er0
	mov.l	er0,er3
	sub.l	er0,er0
	add.b	#1,r0l
	mov.l	@(-48,er6),er1
	cmp.l	er1,er3
	blo	.L1105
	sub.l	er0,er0
.L1105:
	mov.l	@(-52,er6),er1
	mov.l	@(-68,er6),er4
	add.l	er4,er1
	mov.l	er1,er2
	add.l	er2,er0
	mov.l	er0,er2
	mov.l	er2,@(-16,er6)
	mov.l	er3,@(-12,er6)
	mov.l	@(-16,er6),er2
	sub.w	e2,e2
	rotr.l	er2
	rotr.l	er2
	rotr.l	er2
	rotr.l	er2
	sub.w	r2,r2
	mov.l	er2,er3
	mov.l	@(-12,er6),er2
	mov.l	er2,@(-32,er6)
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-32,er6),er2
	or.l	er3,er2
	mov.l	er2,@(-32,er6)
	mov.l	@(-16,er6),er2
	mov.l	er2,@(-36,er6)
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,@(-36,er6)
	mov.l	@(-16,er6),er2
	mov.l	@(-12,er6),er3
	mov.l	@(-32,er6),er4
	add.l	er3,er4
	mov.l	er4,er1
	sub.l	er4,er4
	add.b	#1,r4l
	mov.l	@(-32,er6),er5
	cmp.l	er5,er1
	blo	.L1106
	sub.l	er4,er4
.L1106:
	mov.l	@(-36,er6),er5
	add.l	er2,er5
	mov.l	er5,er0
	mov.l	er4,er2
	add.l	er0,er2
	mov.l	er2,er0
	mov.l	er0,er2
	mov.l	er1,er3
	mov.l	er2,er0
	and.l	#252645135,er0
	mov.l	er0,@(-16,er6)
	mov.l	er3,er2
	and.l	#252645135,er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-12,er6),er2
	mov.l	@(-16,er6),er3
	mov.l	er3,@(-72,er6)
	sub.l	er3,er3
	mov.l	er3,@(-76,er6)
	mov.l	@(-72,er6),er3
	add.l	er3,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-20,er6),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(-20,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-20,er6)
	mov.l	@(-20,er6),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.w	r2,r3
	mov.l	@(-20,er6),er2
	add.w	r3,r2
	and.w	#127,r2
	mov.w	r2,r0
	add.l	#68,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
	rts
	.size	___popcountdi2, .-___popcountdi2
	.align 1
	.global ___popcountsi2
___popcountsi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#8,er7
	mov.l	er0,@(-8,er6)
	mov.l	@(-8,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	shlr.l	er2
	mov.l	er2,er3
	and.l	#1431655765,er3
	mov.l	@(-4,er6),er2
	sub.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	and.l	#858993459,er3
	mov.l	@(-4,er6),er2
	and.l	#858993459,er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	shlr.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	add.l	er3,er2
	and.l	#252645135,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.w	e2,r2
	extu.l	er2
	mov.l	er2,er3
	mov.l	@(-4,er6),er2
	add.l	er3,er2
	mov.l	er2,@(-4,er6)
	mov.l	@(-4,er6),er2
	mov.w	e2,r3
	mov.b	r2h,r2l
	mov.b	r3l,r2h
	mov.b	r3h,r3l
	extu.w	r3
	mov.w	r3,e2
	mov.w	r2,r3
	mov.l	@(-4,er6),er2
	add.w	r3,r2
	and.w	#63,r2
	mov.w	r2,r0
	add.l	#8,er7
	mov.l	@er7+,er6
	rts
	.size	___popcountsi2, .-___popcountsi2
	.align 1
	.global ___powidf2
___powidf2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.w	r1,@(-14,er6)
	mov.w	@(-14,er6),r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,r3
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,@(-6,er6)
	mov.l	#1065353216,er2
	mov.l	er2,@(-4,er6)
.L1115:
	mov.w	@(-14,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L1111
	mov.l	@(-12,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-4,er6)
.L1111:
	mov.w	@(-14,er6),r2
	cmp.w	#-1,r2
	bgt	.L1112
	inc #1,r2
.L1112:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(-14,er6)
	mov.w	@(-14,er6),r2
	mov.w	r2,r2
	beq	.L1119
	mov.l	@(-12,er6),er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-12,er6)
	bra	.L1115
.L1119:
	mov.w	@(-6,er6),r2
	mov.w	r2,r2
	beq	.L1116
	mov.l	@(-4,er6),er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er2
	bra	.L1118
.L1116:
	mov.l	@(-4,er6),er2
.L1118:
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	___powidf2, .-___powidf2
	.align 1
	.global ___powisf2
___powisf2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#16,er7
	mov.l	er0,@(-12,er6)
	mov.w	r1,@(-14,er6)
	mov.w	@(-14,er6),r2
	rotl.w	r2
	and.w	#1,r2
	mov.w	r2,r3
	mov.b	r3l,r2l
	extu.w	r2
	mov.w	r2,@(-6,er6)
	mov.l	#1065353216,er2
	mov.l	er2,@(-4,er6)
.L1126:
	mov.w	@(-14,er6),r2
	and.w	#1,r2
	mov.w	r2,r2
	beq	.L1122
	mov.l	@(-12,er6),er1
	mov.l	@(-4,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-4,er6)
.L1122:
	mov.w	@(-14,er6),r2
	cmp.w	#-1,r2
	bgt	.L1123
	inc #1,r2
.L1123:
	shar.w	r2
	mov.w	r2,r3
	mov.w	r3,@(-14,er6)
	mov.w	@(-14,er6),r2
	mov.w	r2,r2
	beq	.L1130
	mov.l	@(-12,er6),er1
	mov.l	@(-12,er6),er0
	jsr	@___mulsf3
	mov.l	er0,er2
	mov.l	er2,@(-12,er6)
	bra	.L1126
.L1130:
	mov.w	@(-6,er6),r2
	mov.w	r2,r2
	beq	.L1127
	mov.l	@(-4,er6),er1
	mov.l	#1065353216,er0
	jsr	@___divsf3
	mov.l	er0,er2
	bra	.L1129
.L1127:
	mov.l	@(-4,er6),er2
.L1129:
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er6
	rts
	.size	___powisf2, .-___powisf2
	.align 1
	.global ___ucmpdi2
___ucmpdi2:
	mov.l	er6,@-er7
	mov.l	er7,er6
	sub.l	#24,er7
	mov.l	er0,@(-24,er6)
	mov.l	er1,@(-20,er6)
	mov.l	@(-24,er6),er2
	mov.l	er2,@(-8,er6)
	mov.l	@(-20,er6),er2
	mov.l	er2,@(-4,er6)
	mov.l	@(8,er6),er2
	mov.l	er2,@(-16,er6)
	mov.l	@(12,er6),er2
	mov.l	er2,@(-12,er6)
	mov.l	@(-8,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	bhs	.L1133
	sub.l	er2,er2
	bra	.L1138
.L1133:
	mov.l	@(-8,er6),er3
	mov.l	@(-16,er6),er2
	cmp.l	er2,er3
	bls	.L1135
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1138
.L1135:
	mov.l	@(-4,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bhs	.L1136
	sub.l	er2,er2
	bra	.L1138
.L1136:
	mov.l	@(-4,er6),er3
	mov.l	@(-12,er6),er2
	cmp.l	er2,er3
	bls	.L1137
	sub.l	er2,er2
	add.b	#2,r2l
	bra	.L1138
.L1137:
	sub.l	er2,er2
	add.b	#1,r2l
.L1138:
	mov.l	er2,er0
	add.l	#24,er7
	mov.l	@er7+,er6
	rts
	.size	___ucmpdi2, .-___ucmpdi2
	.align 1
	.global ___aeabi_ulcmp
___aeabi_ulcmp:
	mov.l	er6,@-er7
	mov.l	er7,er6
	mov.l	er4,@-er7
	mov.l	er5,@-er7
	sub.l	#16,er7
	mov.l	er0,@(-16,er6)
	mov.l	er1,@(-12,er6)
	mov.l	@(8,er6),er2
	mov.l	@(12,er6),er3
	mov.l	@(-16,er6),er4
	mov.l	@(-12,er6),er5
	mov.l	er2,@er7
	mov.l	er3,@(4,er7)
	mov.l	er4,er0
	mov.l	er5,er1
	jsr	@___ucmpdi2
	mov.l	er0,er2
	subs	#1,er2
	mov.l	er2,er0
	add.l	#16,er7
	mov.l	@er7+,er5
	mov.l	@er7+,er4
	mov.l	@er7+,er6
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
