	.file	"mini-libc.c"
	.am33_2
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (-8,a3),d1
	mov (-4,a3),d0
	cmp d0,d1
	bcc .L2
	mov (-8,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov d0,(-8,a3)
	mov (-4,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov d0,(-4,a3)
	jmp .L3
.L4:
	mov (-8,a3),d0
	add -1,d0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	add -1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	movbu (d0),d1
	mov (-4,a3),d0
	movbu d1,(d0)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L3:
	mov (16,a3),d0
	cmp 0,d0
	bne .L4
	jmp .L5
.L2:
	mov (-8,a3),d1
	mov (-4,a3),d0
	cmp d0,d1
	beq .L5
	jmp .L6
.L7:
	mov (-8,a3),d1
	mov 1,d0
	add d1,d0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	mov 1,a0
	add d0,a0
	mov a0,(-4,a3)
	movbu (d1),d1
	movbu d1,(d0)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L6:
	mov (16,a3),d0
	cmp 0,d0
	bne .L7
.L5:
	mov (8,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (16,a3),d0
	extbu d0
	mov d0,(16,a3)
	jmp .L10
.L12:
	mov (20,a3),d0
	add -1,d0
	mov d0,(20,a3)
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L10:
	mov (20,a3),d0
	cmp 0,d0
	beq .L11
	mov (-8,a3),d0
	movbu (d0),d1
	mov (-4,a3),d0
	movbu d1,(d0)
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0
	mov (16,a3),d1
	cmp d0,d1
	bne .L12
.L11:
	mov (20,a3),d0
	cmp 0,d0
	beq .L13
	mov (-4,a3),d0
	inc d0
	jmp .L14
.L13:
	mov 0,d0
.L14:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	extbu d0
	mov d0,(12,a3)
	jmp .L16
.L18:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L16:
	mov (16,a3),d0
	cmp 0,d0
	beq .L17
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0
	mov (12,a3),d1
	cmp d0,d1
	bne .L18
.L17:
	mov (16,a3),d0
	cmp 0,d0
	beq .L19
	mov (-4,a3),d0
	jmp .L21
.L19:
	mov 0,d0
.L21:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	jmp .L23
.L25:
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
.L23:
	mov (16,a3),d0
	cmp 0,d0
	beq .L24
	mov (-4,a3),d0
	movbu (d0),d1
	mov (-8,a3),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	beq .L25
.L24:
	mov (16,a3),d0
	cmp 0,d0
	beq .L26
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0,d1
	mov (-8,a3),d0
	movbu (d0),d0
	extbu d0
	sub d0,d1,d0
	jmp .L28
.L26:
	mov 0,d0
.L28:
	mov a3,sp
	ret [a3],4
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	jmp .L30
.L31:
	mov (-8,a3),d1
	mov 1,d0
	add d1,d0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	mov 1,a0
	add d0,a0
	mov a0,(-4,a3)
	movbu (d1),d1
	movbu d1,(d0)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L30:
	mov (16,a3),d0
	cmp 0,d0
	bne .L31
	mov (8,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	extbu d0
	mov d0,(12,a3)
	jmp .L34
.L36:
	mov (-4,a3),d1
	mov (16,a3),d0
	add d1,d0
	movbu (d0),d0
	extbu d0
	mov (12,a3),d1
	cmp d0,d1
	bne .L34
	mov (-4,a3),d1
	mov (16,a3),d0
	add d1,d0
	jmp .L35
.L34:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L36
	mov 0,d0
.L35:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	jmp .L38
.L39:
	mov (12,a3),d0
	mov d0,d1
	mov (-4,a3),d0
	movbu d1,(d0)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L38:
	mov (16,a3),d0
	cmp 0,d0
	bne .L39
	mov (8,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L42
.L43:
	mov (12,a3),d0
	inc d0
	mov d0,(12,a3)
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
.L42:
	mov (12,a3),d0
	movbu (d0),d1
	mov (8,a3),d0
	movbu d1,(d0)
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L43
	mov (8,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d0
	extbu d0
	mov d0,(12,a3)
	jmp .L46
.L48:
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
.L46:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L47
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	mov (12,a3),d1
	cmp d0,d1
	bne .L48
.L47:
	mov (8,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	movm [a3],(sp)
	mov sp,a3
	mov d1,(12,a3)
.L53:
	movbu (d0),d1
	extbu d1
	mov (12,a3),a0
	cmp d1,a0
	bne .L51
	jmp .L52
.L51:
	mov d0,d1
	mov 1,d0
	add d1,d0
	movbu (d1),d1
	extbu d1
	cmp 0,d1
	bne .L53
	mov 0,d0
.L52:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L55
.L57:
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
	mov (12,a3),d0
	inc d0
	mov d0,(12,a3)
.L55:
	mov (8,a3),d0
	movbu (d0),d1
	mov (12,a3),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L56
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L57
.L56:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0,d1
	mov (12,a3),d0
	movbu (d0),d0
	extbu d0
	sub d0,d1,d0
	mov a3,sp
	ret [a3],4
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	jmp .L60
.L61:
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
.L60:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L61
	mov (8,a3),d1
	mov (-4,a3),d0
	sub d0,d1,d0
	mov a3,sp
	ret [a3],4
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L66
	mov 0,d0
	jmp .L65
.L68:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L66:
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L67
	mov (-8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L67
	mov (16,a3),d0
	cmp 0,d0
	beq .L67
	mov (-4,a3),d0
	movbu (d0),d1
	mov (-8,a3),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	beq .L68
.L67:
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0,d1
	mov (-8,a3),d0
	movbu (d0),d0
	extbu d0
	sub d0,d1,d0
.L65:
	mov a3,sp
	ret [a3],4
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	jmp .L70
.L71:
	mov (-4,a3),d0
	inc d0
	movbu (d0),d1
	mov (-8,a3),d0
	movbu d1,(d0)
	mov (-8,a3),d0
	inc d0
	mov (-4,a3),d1
	movbu (d1),d1
	movbu d1,(d0)
	mov (-8,a3),d0
	add 2,d0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	add 2,d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	add -2,d0
	mov d0,(16,a3)
.L70:
	mov (16,a3),d0
	cmp 1,d0
	bgt .L71
	nop
	nop
	mov a3,sp
	ret [a3],4
	.size	swab, .-swab
	.global isalpha
	.type	isalpha, @function
isalpha:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	or 32,d0
	add -97,d0
	mov 1,d1
	cmp 25,d0
	bls .L73
	mov 0,d1
.L73:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	mov 1,d1
	cmp 127,d0
	bls .L76
	mov 0,d1
.L76:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	cmp 32,d0
	beq .L79
	mov (8,a3),d0
	cmp 9,d0
	bne .L80
.L79:
	mov 1,d0
	jmp .L82
.L80:
	mov 0,d0
.L82:
	mov a3,sp
	ret [a3],4
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	cmp 31,d0
	bls .L84
	mov (8,a3),d0
	cmp 127,d0
	bne .L85
.L84:
	mov 1,d0
	jmp .L87
.L85:
	mov 0,d0
.L87:
	mov a3,sp
	ret [a3],4
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -48,d0
	mov 1,d1
	cmp 9,d0
	bls .L89
	mov 0,d1
.L89:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -33,d0
	mov 1,d1
	cmp 93,d0
	bls .L92
	mov 0,d1
.L92:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -97,d0
	mov 1,d1
	cmp 25,d0
	bls .L95
	mov 0,d1
.L95:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -32,d0
	mov 1,d1
	cmp 94,d0
	bls .L98
	mov 0,d1
.L98:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	cmp 32,d0
	beq .L101
	mov (8,a3),d0
	add -9,d0
	cmp 4,d0
	bhi .L102
.L101:
	mov 1,d0
	jmp .L104
.L102:
	mov 0,d0
.L104:
	mov a3,sp
	ret [a3],4
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -65,d0
	mov 1,d1
	cmp 25,d0
	bls .L106
	mov 0,d1
.L106:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	cmp 31,d0
	bls .L109
	mov (8,a3),d0
	add -127,d0
	cmp 32,d0
	bls .L109
	mov (8,a3),d0
	add -8232,d0
	cmp 1,d0
	bls .L109
	mov (8,a3),d0
	add -65529,d0
	cmp 2,d0
	bhi .L110
.L109:
	mov 1,d0
	jmp .L112
.L110:
	mov 0,d0
.L112:
	mov a3,sp
	ret [a3],4
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -48,d0
	mov 1,d1
	cmp 9,d0
	bls .L114
	mov 0,d1
.L114:
	extbu d1,d0
	mov a3,sp
	ret [a3],4
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	cmp 254,d0
	bhi .L117
	mov (8,a3),d0
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L118
	mov 0,d1
.L118:
	extbu d1,d0
	jmp .L119
.L117:
	mov (8,a3),d0
	cmp 8231,d0
	bls .L120
	mov (8,a3),d0
	add -8234,d0
	cmp 47061,d0
	bls .L120
	mov (8,a3),d0
	add -57344,d0
	cmp 8184,d0
	bhi .L121
.L120:
	mov 1,d0
	jmp .L119
.L121:
	mov (8,a3),d0
	add -65532,d0
	cmp 1048579,d0
	bhi .L122
	mov (8,a3),d0
	and 65534,d0
	cmp 65534,d0
	bne .L123
.L122:
	mov 0,d0
	jmp .L119
.L123:
	mov 1,d0
.L119:
	mov a3,sp
	ret [a3],4
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -48,d0
	cmp 9,d0
	bls .L125
	mov (8,a3),d0
	or 32,d0
	add -97,d0
	cmp 5,d0
	bhi .L126
.L125:
	mov 1,d0
	jmp .L128
.L126:
	mov 0,d0
.L128:
	mov a3,sp
	ret [a3],4
	.size	iswxdigit, .-iswxdigit
	.global toascii
	.type	toascii, @function
toascii:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	and 127,d0
	mov a3,sp
	ret [a3],4
	.size	toascii, .-toascii
	.global fdim
	.type	fdim, @function
fdim:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L143
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L134
.L143:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L144
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L134
.L144:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L145
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__subdf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	jmp .L134
.L145:
	mov 0,d0
	mov 0,d1
.L134:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d1
	mov (8,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L158
	fmov (8,a3),fs24
	jmp .L149
.L158:
	mov (12,a3),d1
	mov (12,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L159
	fmov (12,a3),fs24
	jmp .L149
.L159:
	fmov (8,a3),fs26
	fmov (12,a3),fs24
	fcmp fs24, fs26
	fbgt .L157
	jmp .L160
.L157:
	fmov (8,a3),fs24
	fmov (12,a3),fs26
	fsub fs26, fs24
	jmp .L149
.L160:
	fmov 0x0,fs24
.L149:
	fmov fs24,d0
	mov a3,sp
	ret [a3],4
	.size	fdimf, .-fdimf
	.global fmax
	.type	fmax, @function
fmax:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L176
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L164
.L176:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L177
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L164
.L177:
	mov (12,a3),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,a3),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L167
	mov (12,a3),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L168
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L164
.L168:
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L164
.L167:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L178
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L164
.L178:
	mov (8,a3),d0
	mov (12,a3),d1
.L164:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d1
	mov (8,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L194
	mov (12,a3),d0
	jmp .L182
.L194:
	mov (12,a3),d1
	mov (12,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L195
	mov (8,a3),d0
	jmp .L182
.L195:
	mov (8,a3),d0
	and -2147483648,d0
	mov d0,d1
	mov (12,a3),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L185
	mov (8,a3),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L186
	mov (12,a3),d0
	jmp .L182
.L186:
	mov (8,a3),d0
	jmp .L182
.L185:
	fmov (8,a3),fs26
	fmov (12,a3),fs24
	fcmp fs24, fs26
	fblt .L193
	jmp .L196
.L193:
	mov (12,a3),d0
	jmp .L182
.L196:
	mov (8,a3),d0
.L182:
	mov a3,sp
	ret [a3],4
	.size	fmaxf, .-fmaxf
	.global fmaxl
	.type	fmaxl, @function
fmaxl:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L212
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L200
.L212:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L213
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L200
.L213:
	mov (12,a3),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,a3),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L203
	mov (12,a3),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L204
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L200
.L204:
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L200
.L203:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L214
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L200
.L214:
	mov (8,a3),d0
	mov (12,a3),d1
.L200:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	fmaxl, .-fmaxl
	.global fmin
	.type	fmin, @function
fmin:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L230
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L218
.L230:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L231
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L218
.L231:
	mov (12,a3),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,a3),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L221
	mov (12,a3),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L222
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L218
.L222:
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L218
.L221:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L232
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L218
.L232:
	mov (16,a3),d0
	mov (20,a3),d1
.L218:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d1
	mov (8,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L248
	mov (12,a3),d0
	jmp .L236
.L248:
	mov (12,a3),d1
	mov (12,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L249
	mov (8,a3),d0
	jmp .L236
.L249:
	mov (8,a3),d0
	and -2147483648,d0
	mov d0,d1
	mov (12,a3),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L239
	mov (8,a3),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L240
	mov (8,a3),d0
	jmp .L236
.L240:
	mov (12,a3),d0
	jmp .L236
.L239:
	fmov (8,a3),fs26
	fmov (12,a3),fs24
	fcmp fs24, fs26
	fblt .L247
	jmp .L250
.L247:
	mov (8,a3),d0
	jmp .L236
.L250:
	mov (12,a3),d0
.L236:
	mov a3,sp
	ret [a3],4
	.size	fminf, .-fminf
	.global fminl
	.type	fminl, @function
fminl:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L266
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L254
.L266:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L267
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L254
.L267:
	mov (12,a3),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,a3),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L257
	mov (12,a3),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L258
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L254
.L258:
	mov (16,a3),d0
	mov (20,a3),d1
	jmp .L254
.L257:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L268
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L254
.L268:
	mov (16,a3),d0
	mov (20,a3),d1
.L254:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section .text
	.global l64a
	.type	l64a, @function
l64a:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-8,a3)
	mov +s.0,d0
	mov d0,(-4,a3)
	jmp .L270
.L271:
	mov (-8,a3),d0
	and 63,d0
	movbu (+digits,d0),d1
	mov (-4,a3),d0
	movbu d1,(d0)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	lsr 6,d0
	mov d0,(-8,a3)
.L270:
	mov (-8,a3),d0
	cmp 0,d0
	bne .L271
	mov (-4,a3),d0
	mov 0,d1
	movbu d1,(d0)
	mov +s.0,d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.global srand
	.type	srand, @function
srand:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	add -1,d0
	mov d0,a0
	mov 0,a1
	mov a0,(+seed)
	mov a1,(+seed+4)
	nop
	mov a3,sp
	ret [a3],4
	.size	srand, .-srand
	.global rand
	.type	rand, @function
rand:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	mov (+seed),a0
	mov (+seed+4),a1
	mov 1284865837,r2
	mul a1,r2
	mov 1481765933,a2
	mul a0,a2
	add r2,a2
	mov 1284865837,r2
	mulu a0,r2,d1,d0
	add d1,a2,a0
	mov a0,d1
	mov 1,d2
	add d0,d2
	mov 0,d3
	addc d1,d3
	mov d2,(+seed)
	mov d3,(+seed+4)
	mov (+seed),d0
	mov (+seed+4),d1
	mov d1,r0
	lsr 1,r0
	mov 0,r1
	mov r0,d0
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (-8,a3),d0
	cmp 0,d0
	bne .L277
	mov (-4,a3),d0
	mov 0,d1
	mov d1,(4,d0)
	mov (-4,a3),d0
	mov (4,d0),d1
	mov (-4,a3),d0
	mov d1,(d0)
	jmp .L276
.L277:
	mov (-8,a3),d0
	mov (d0),d1
	mov (-4,a3),d0
	mov d1,(d0)
	mov (-4,a3),d0
	mov (-8,a3),d1
	mov d1,(4,d0)
	mov (-8,a3),d0
	mov (-4,a3),d1
	mov d1,(d0)
	mov (-4,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L276
	mov (-4,a3),d0
	mov (d0),d0
	mov (-4,a3),d1
	mov d1,(4,d0)
.L276:
	mov a3,sp
	ret [a3],4
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L280
	mov (-4,a3),d0
	mov (d0),d0
	mov (-4,a3),d1
	mov (4,d1),d1
	mov d1,(4,d0)
.L280:
	mov (-4,a3),d0
	mov (4,d0),d0
	cmp 0,d0
	beq .L282
	mov (-4,a3),d0
	mov (4,d0),d0
	mov (-4,a3),d1
	mov (d1),d1
	mov d1,(d0)
.L282:
	nop
	mov a3,sp
	ret [a3],4
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	add -32,sp
	mov d0,(20,a3)
	mov d1,(24,a3)
	mov (32,a3),a2
	mov a2,d0
	add -1,d0
	mov d0,(-8,a3)
	mov a2,d2
	mov 0,d3
	mov d2,d0
	lsr 29,d0
	mov d3,a1
	asl 3,a1
	or d0,a1
	mov d2,a0
	asl 3,a0
	mov (24,a3),d0
	mov d0,(-12,a3)
	mov (28,a3),d0
	mov (d0),d0
	mov d0,(-16,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L284
.L287:
	mov (-4,a3),d0
	mul a2,d0
	mov (-12,a3),d1
	add d0,d1
	mov (20,a3),d0
	mov (36,a3),a0
	calls (a0)
	cmp 0,d0
	bne .L285
	mov (-4,a3),d0
	mul a2,d0
	mov (-12,a3),d1
	add d1,d0
	jmp .L286
.L285:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L284:
	mov (-4,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bcs .L287
	mov (-16,a3),d0
	mov 1,d1
	add d0,d1
	mov (28,a3),d0
	mov d1,(d0)
	mov (-16,a3),d0
	mul a2,d0
	mov (-12,a3),d1
	add d0,d1,a0
	mov (20,a3),d1
	mov (32,a3),d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcpy,[],0
	mov a0,d0
.L286:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	lsearch, .-lsearch
	.global lfind
	.type	lfind, @function
lfind:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	add -28,sp
	mov d0,(20,a3)
	mov d1,(24,a3)
	mov (32,a3),a2
	mov a2,d0
	add -1,d0
	mov d0,(-8,a3)
	mov a2,d2
	mov 0,d3
	mov d2,d0
	lsr 29,d0
	mov d3,a1
	asl 3,a1
	or d0,a1
	mov d2,a0
	asl 3,a0
	mov (24,a3),d0
	mov d0,(-12,a3)
	mov (28,a3),d0
	mov (d0),d0
	mov d0,(-16,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L289
.L292:
	mov (-4,a3),d0
	mul a2,d0
	mov (-12,a3),d1
	add d0,d1
	mov (20,a3),d0
	mov (36,a3),a0
	calls (a0)
	cmp 0,d0
	bne .L290
	mov (-4,a3),d0
	mul a2,d0
	mov (-12,a3),d1
	add d1,d0
	jmp .L291
.L290:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L289:
	mov (-4,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bcs .L292
	mov 0,d0
.L291:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	cmp 0,d0
	bge .L294
	not d0
	inc d0
.L294:
	mov a3,sp
	ret [a3],4
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov 0,d0
	mov d0,(-8,a3)
	jmp .L297
.L298:
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
.L297:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L298
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 43,d0
	beq .L299
	cmp 45,d0
	bne .L301
	mov 1,d0
	mov d0,(-8,a3)
.L299:
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
	jmp .L301
.L302:
	mov (-4,a3),d0
	mov 10,d1
	mul d0,d1
	mov (8,a3),d0
	mov 1,a0
	add d0,a0
	mov a0,(8,a3)
	movbu (d0),d0
	extbu d0
	add -48,d0
	sub d0,d1,d0
	mov d0,(-4,a3)
.L301:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L302
	mov (-8,a3),d0
	cmp 0,d0
	bne .L303
	mov (-4,a3),d0
	not d0
	inc d0
	jmp .L305
.L303:
	mov (-4,a3),d0
.L305:
	mov a3,sp
	ret [a3],4
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov 0,d0
	mov d0,(-8,a3)
	jmp .L307
.L308:
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
.L307:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L308
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 43,d0
	beq .L309
	cmp 45,d0
	bne .L311
	mov 1,d0
	mov d0,(-8,a3)
.L309:
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
	jmp .L311
.L312:
	mov (-4,a3),d0
	mov 10,d1
	mul d0,d1
	mov (8,a3),d0
	mov 1,a0
	add d0,a0
	mov a0,(8,a3)
	movbu (d0),d0
	extbu d0
	add -48,d0
	sub d0,d1,d0
	mov d0,(-4,a3)
.L311:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L312
	mov (-8,a3),d0
	cmp 0,d0
	bne .L313
	mov (-4,a3),d0
	not d0
	inc d0
	jmp .L315
.L313:
	mov (-4,a3),d0
.L315:
	mov a3,sp
	ret [a3],4
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -32,sp
	mov d0,(32,a3)
	mov 0,d0
	mov d0,(-8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov 0,d0
	mov d0,(-12,a3)
	jmp .L317
.L318:
	mov (32,a3),d0
	inc d0
	mov d0,(32,a3)
.L317:
	mov (32,a3),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L318
	mov (32,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 43,d0
	beq .L319
	cmp 45,d0
	bne .L321
	mov 1,d0
	mov d0,(-12,a3)
.L319:
	mov (32,a3),d0
	inc d0
	mov d0,(32,a3)
	jmp .L321
.L322:
	mov (-4,a3),d0
	mov 10,d1
	mul d0,d1
	mov (-8,a3),d0
	mul 0,d0
	add d1,d0
	mov (-8,a3),d1
	mov 10,a0
	mulu d1,a0,d3,d2
	add d3,d0
	mov d0,d3
	mov (32,a3),d0
	mov 1,d1
	add d0,d1
	mov d1,(32,a3)
	movbu (d0),d0
	extbu d0
	add -48,d0
	mov d0,(-20,a3)
	asr 31,d0
	mov d0,(-16,a3)
	mov (-20,a3),d0
	mov (-16,a3),d1
	sub d0,d2,r6
	subc d1,d3,r7
	mov r6,(-8,a3)
	mov r7,(-4,a3)
.L321:
	mov (32,a3),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L322
	mov (-12,a3),d0
	cmp 0,d0
	bne .L323
	mov 0,a0
	mov 0,a1
	mov (-8,a3),d0
	mov (-4,a3),d1
	sub d0,a0,r4
	subc d1,a1,r5
	jmp .L325
.L323:
	mov (-8,a3),r4
	mov (-4,a3),r5
.L325:
	mov r4,a0
	mov r5,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L327
.L331:
	mov (16,a3),d0
	mov d0,d1
	lsr 1,d1
	mov (20,a3),d0
	mul d1,d0
	mov (12,a3),d1
	add d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d1
	mov (8,a3),d0
	mov (24,a3),a0
	calls (a0)
	mov d0,(-8,a3)
	mov (-8,a3),d0
	cmp 0,d0
	bge .L328
	mov (16,a3),d0
	lsr 1,d0
	mov d0,(16,a3)
	jmp .L327
.L328:
	mov (-8,a3),d0
	cmp 0,d0
	ble .L329
	mov (-4,a3),d1
	mov (20,a3),d0
	add d1,d0
	mov d0,(12,a3)
	mov (16,a3),d0
	lsr 1,d0
	mov (16,a3),d1
	sub d0,d1,d0
	add -1,d0
	mov d0,(16,a3)
	jmp .L327
.L329:
	mov (-4,a3),d0
	jmp .L330
.L327:
	mov (16,a3),d0
	cmp 0,d0
	bne .L331
	mov 0,d0
.L330:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [a3],(sp)
	mov sp,a3
	add -32,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	mov d0,(-8,a3)
	jmp .L333
.L337:
	mov (-8,a3),d0
	asr 1,d0
	mov d0,d1
	mov (20,a3),d0
	mul d1,d0
	mov (-4,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-12,a3),d1
	mov (8,a3),a1
	mov (28,a3),d0
	mov d0,(12,sp)
	mov (24,a3),a0
	mov a1,d0
	calls (a0)
	mov d0,(-16,a3)
	mov (-16,a3),d0
	cmp 0,d0
	bne .L334
	mov (-12,a3),d0
	jmp .L335
.L334:
	mov (-16,a3),d0
	cmp 0,d0
	ble .L336
	mov (-12,a3),d1
	mov (20,a3),d0
	add d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	add -1,d0
	mov d0,(-8,a3)
.L336:
	mov (-8,a3),d0
	asr 1,d0
	mov d0,(-8,a3)
.L333:
	mov (-8,a3),d0
	cmp 0,d0
	bne .L337
	mov 0,d0
.L335:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	bsearch_r, .-bsearch_r
	.global div
	.type	div, @function
div:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (16,a3),d0
	mov (20,a3),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov a0,d2
	mov d2,mdr
	div d1,d0
	mov d0,a1
	mov (16,a3),d0
	mov (20,a3),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov d0,d3
	mov a0,d2
	mov d2,mdr
	div d1,d3
	mov mdr,d0
	mov a1,d2
	mov d0,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	div, .-div
	.global imaxabs
	.type	imaxabs, @function
imaxabs:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (16,a3),d0
	mov (20,a3),d1
	cmp 0,d1
	bge .L341
	mov 0,a0
	mov 0,a1
	sub d0,a0,d0
	subc d1,a1,d1
.L341:
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	imaxabs, .-imaxabs
	.global imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -36,sp
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (28,a3),d0
	mov d0,(12,sp)
	mov (32,a3),d0
	mov d0,(16,sp)
	mov (20,a3),d0
	mov (24,a3),d1
	call +__divdi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d2
	mov a1,d3
	mov (20,a3),a0
	mov (24,a3),a1
	mov (28,a3),d0
	mov d0,(12,sp)
	mov (32,a3),d0
	mov d0,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__moddi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov (16,a3),a0
	mov d2,(a0)
	mov d3,(4,a0)
	mov (16,a3),a0
	mov d0,(8,a0)
	mov d1,(12,a0)
	mov (16,a3),a0
	mov a3,sp
	ret [d2,d3,a3],12
	.size	imaxdiv, .-imaxdiv
	.global labs
	.type	labs, @function
labs:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	cmp 0,d0
	bge .L347
	not d0
	inc d0
.L347:
	mov a3,sp
	ret [a3],4
	.size	labs, .-labs
	.global ldiv
	.type	ldiv, @function
ldiv:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (16,a3),d0
	mov (20,a3),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov a0,d2
	mov d2,mdr
	div d1,d0
	mov d0,a1
	mov (16,a3),d0
	mov (20,a3),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov d0,d3
	mov a0,d2
	mov d2,mdr
	div d1,d3
	mov mdr,d0
	mov a1,d2
	mov d0,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	ldiv, .-ldiv
	.global llabs
	.type	llabs, @function
llabs:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (16,a3),d0
	mov (20,a3),d1
	cmp 0,d1
	bge .L352
	mov 0,a0
	mov 0,a1
	sub d0,a0,d0
	subc d1,a1,d1
.L352:
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	llabs, .-llabs
	.global lldiv
	.type	lldiv, @function
lldiv:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -36,sp
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (28,a3),d0
	mov d0,(12,sp)
	mov (32,a3),d0
	mov d0,(16,sp)
	mov (20,a3),d0
	mov (24,a3),d1
	call +__divdi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d2
	mov a1,d3
	mov (20,a3),a0
	mov (24,a3),a1
	mov (28,a3),d0
	mov d0,(12,sp)
	mov (32,a3),d0
	mov d0,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__moddi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov (16,a3),a0
	mov d2,(a0)
	mov d3,(4,a0)
	mov (16,a3),a0
	mov d0,(8,a0)
	mov d1,(12,a0)
	mov (16,a3),a0
	mov a3,sp
	ret [d2,d3,a3],12
	.size	lldiv, .-lldiv
	.global wcschr
	.type	wcschr, @function
wcschr:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L358
.L360:
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
.L358:
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L359
	mov (8,a3),d0
	mov (d0),d0
	mov (12,a3),d1
	cmp d0,d1
	bne .L360
.L359:
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L361
	mov (8,a3),d0
	jmp .L363
.L361:
	mov 0,d0
.L363:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L365
.L367:
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add 4,d0
	mov d0,(12,a3)
.L365:
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	bne .L366
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L366
	mov (12,a3),d0
	mov (d0),d0
	cmp 0,d0
	bne .L367
.L366:
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	blt .L368
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L369
	mov 0,a0
.L369:
	extbu a0,d0
	jmp .L371
.L368:
	mov -1,d0
.L371:
	mov a3,sp
	ret [a3],4
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	nop
.L373:
	mov (12,a3),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,a3)
	mov (8,a3),d0
	mov 4,a0
	add d0,a0
	mov a0,(8,a3)
	mov (d1),d1
	mov d1,(d0)
	mov (d0),d0
	cmp 0,d0
	bne .L373
	mov (-4,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	jmp .L376
.L377:
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
.L376:
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	bne .L377
	mov (8,a3),d1
	mov (-4,a3),d0
	sub d0,d1,d0
	asr 2,d0
	mov a3,sp
	ret [a3],4
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L380
.L382:
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add 4,d0
	mov d0,(12,a3)
.L380:
	mov (16,a3),d0
	cmp 0,d0
	beq .L381
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	bne .L381
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L381
	mov (12,a3),d0
	mov (d0),d0
	cmp 0,d0
	bne .L382
.L381:
	mov (16,a3),d0
	cmp 0,d0
	beq .L383
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	blt .L384
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L385
	mov 0,a0
.L385:
	extbu a0,d0
	jmp .L388
.L384:
	mov -1,d0
	jmp .L388
.L383:
	mov 0,d0
.L388:
	mov a3,sp
	ret [a3],4
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L390
.L392:
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
.L390:
	mov (16,a3),d0
	cmp 0,d0
	beq .L391
	mov (8,a3),d0
	mov (d0),d0
	mov (12,a3),d1
	cmp d0,d1
	bne .L392
.L391:
	mov (16,a3),d0
	cmp 0,d0
	beq .L393
	mov (8,a3),d0
	jmp .L395
.L393:
	mov 0,d0
.L395:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L397
.L399:
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add 4,d0
	mov d0,(12,a3)
.L397:
	mov (16,a3),d0
	cmp 0,d0
	beq .L398
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	beq .L399
.L398:
	mov (16,a3),d0
	cmp 0,d0
	beq .L400
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	blt .L401
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L402
	mov 0,a0
.L402:
	extbu a0,d0
	jmp .L405
.L401:
	mov -1,d0
	jmp .L405
.L400:
	mov 0,d0
.L405:
	mov a3,sp
	ret [a3],4
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	jmp .L407
.L408:
	mov (12,a3),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,a3)
	mov (8,a3),d0
	mov 4,a0
	add d0,a0
	mov a0,(8,a3)
	mov (d1),d1
	mov d1,(d0)
.L407:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L408
	mov (-4,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (8,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bne .L411
	mov (8,a3),d0
	jmp .L412
.L411:
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1
	mov (16,a3),d0
	asl2 d0
	cmp d0,d1
	bcc .L417
	jmp .L414
.L415:
	mov (16,a3),d0
	asl2 d0
	mov (12,a3),d1
	add d0,d1
	mov (16,a3),d0
	asl2 d0
	mov (8,a3),a0
	add a0,d0
	mov (d1),d1
	mov d1,(d0)
.L414:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L415
	jmp .L416
.L418:
	mov (12,a3),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,a3)
	mov (8,a3),d0
	mov 4,a0
	add d0,a0
	mov a0,(8,a3)
	mov (d1),d1
	mov d1,(d0)
.L417:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L418
.L416:
	mov (-4,a3),d0
.L412:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	jmp .L420
.L421:
	mov (8,a3),d0
	mov 4,d1
	add d0,d1
	mov d1,(8,a3)
	mov (12,a3),d1
	mov d1,(d0)
.L420:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L421
	mov (-4,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (-4,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bcc .L424
	mov (-4,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov d0,(-8,a3)
	jmp .L425
.L426:
	mov (-4,a3),d0
	add -1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	add -1,d0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	movbu (d0),d1
	mov (-8,a3),d0
	movbu d1,(d0)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L425:
	mov (16,a3),d0
	cmp 0,d0
	bne .L426
	jmp .L430
.L424:
	mov (-4,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	beq .L430
	jmp .L428
.L429:
	mov (-4,a3),d1
	mov 1,d0
	add d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov 1,a0
	add d0,a0
	mov a0,(-8,a3)
	movbu (d1),d1
	movbu d1,(d0)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L428:
	mov (16,a3),d0
	cmp 0,d0
	bne .L429
.L430:
	nop
	mov a3,sp
	ret [a3],4
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	mov d0,(20,a3)
	mov d1,(24,a3)
	mov (20,a3),d0
	mov (24,a3),d1
	mov (28,a3),a2
	and 32,a2
	cmp 0,a2
	beq .L432
	mov (28,a3),a2
	asl a2,d0,d3
	mov 0,d2
	jmp .L433
.L432:
	mov d0,r2
	lsr 1,r2
	mov (28,a3),a2
	not a2
	lsr a2,r2,a2
	mov (28,a3),r2
	asl r2,d1,d3
	or a2,d3
	mov (28,a3),a2
	asl a2,d0,d2
.L433:
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	and 32,a2
	cmp 0,a2
	beq .L434
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	lsr a2,d1,a0
	mov 0,a1
	jmp .L435
.L434:
	mov d1,r2
	add r2,r2
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	not a2
	asl a2,r2,a2
	mov (28,a3),r2
	not r2
	inc r2
	and 63,r2
	lsr r2,d0,a0
	or a2,a0
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	lsr a2,d1,a1
.L435:
	or d2,a0,r0
	or d3,a1,r1
	mov r0,a0
	mov r1,a1
	mov a0,d2
	mov a1,d3
	mov d2,d0
	mov d3,d1
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	mov d0,(20,a3)
	mov d1,(24,a3)
	mov (20,a3),d0
	mov (24,a3),d1
	mov (28,a3),a2
	and 32,a2
	cmp 0,a2
	beq .L438
	mov (28,a3),a2
	lsr a2,d1,d2
	mov 0,d3
	jmp .L439
.L438:
	mov d1,r2
	add r2,r2
	mov (28,a3),a2
	not a2
	asl a2,r2,a2
	mov (28,a3),r2
	lsr r2,d0,d2
	or a2,d2
	mov (28,a3),a2
	lsr a2,d1,d3
.L439:
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	and 32,a2
	cmp 0,a2
	beq .L440
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	asl a2,d0,a1
	mov 0,a0
	jmp .L441
.L440:
	mov d0,r2
	lsr 1,r2
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	not a2
	lsr a2,r2,a2
	mov (28,a3),r2
	not r2
	inc r2
	and 63,r2
	asl r2,d1,a1
	or a2,a1
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	asl a2,d0,a0
.L441:
	or d2,a0,r0
	or d3,a1,r1
	mov r0,a0
	mov r1,a1
	mov a0,d2
	mov a1,d3
	mov d2,d0
	mov d3,d1
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	rotr64, .-rotr64
	.global rotl32
	.type	rotl32, @function
rotl32:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov (12,a3),d1
	asl d1,d0,d1
	mov (12,a3),a0
	not a0
	inc a0
	and 31,a0
	lsr a0,d0
	or d1,d0
	mov a3,sp
	ret [a3],4
	.size	rotl32, .-rotl32
	.global rotr32
	.type	rotr32, @function
rotr32:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov (12,a3),d1
	lsr d1,d0,d1
	mov (12,a3),a0
	not a0
	inc a0
	and 31,a0
	asl a0,d0
	or d1,d0
	mov a3,sp
	ret [a3],4
	.size	rotr32, .-rotr32
	.global rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov (12,a3),d1
	asl d1,d0,d1
	mov (12,a3),a0
	not a0
	inc a0
	and 31,a0
	lsr a0,d0
	or d1,d0
	mov a3,sp
	ret [a3],4
	.size	rotl_sz, .-rotl_sz
	.global rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov (12,a3),d1
	lsr d1,d0,d1
	mov (12,a3),a0
	not a0
	inc a0
	and 31,a0
	asl a0,d0
	or d1,d0
	mov a3,sp
	ret [a3],4
	.size	rotr_sz, .-rotr_sz
	.global rotl16
	.type	rotl16, @function
rotl16:
	movm [a3],(sp)
	mov sp,a3
	mov d1,(12,a3)
	movhu d0,(8,a3)
	movhu (8,a3),d1
	mov (12,a3),d0
	asl d0,d1,d0
	mov d0,a1
	movhu (8,a3),d1
	mov 16,a0
	mov (12,a3),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	or a1,d0
	mov a3,sp
	ret [a3],4
	.size	rotl16, .-rotl16
	.global rotr16
	.type	rotr16, @function
rotr16:
	movm [a3],(sp)
	mov sp,a3
	mov d1,(12,a3)
	movhu d0,(8,a3)
	movhu (8,a3),d1
	mov (12,a3),d0
	lsr d0,d1,d0
	mov d0,a1
	movhu (8,a3),d1
	mov 16,a0
	mov (12,a3),d0
	sub d0,a0,d0
	asl d0,d1,d0
	or a1,d0
	mov a3,sp
	ret [a3],4
	.size	rotr16, .-rotr16
	.global rotl8
	.type	rotl8, @function
rotl8:
	movm [a3],(sp)
	mov sp,a3
	mov d1,(12,a3)
	movbu d0,(8,a3)
	movbu (8,a3),d1
	mov (12,a3),d0
	asl d0,d1,d0
	mov d0,a1
	movbu (8,a3),d1
	mov 8,a0
	mov (12,a3),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	or a1,d0
	mov a3,sp
	ret [a3],4
	.size	rotl8, .-rotl8
	.global rotr8
	.type	rotr8, @function
rotr8:
	movm [a3],(sp)
	mov sp,a3
	mov d1,(12,a3)
	movbu d0,(8,a3)
	movbu (8,a3),d1
	mov (12,a3),d0
	lsr d0,d1,d0
	mov d0,a1
	movbu (8,a3),d1
	mov 8,a0
	mov (12,a3),d0
	sub d0,a0,d0
	asl d0,d1,d0
	or a1,d0
	mov a3,sp
	ret [a3],4
	.size	rotr8, .-rotr8
	.global bswap_16
	.type	bswap_16, @function
bswap_16:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	movhu d0,(8,a3)
	mov 255,d0
	mov d0,(-4,a3)
	movhu (8,a3),d1
	mov (-4,a3),d0
	asl 8,d0
	and d1,d0
	lsr 8,d0
	mov d0,d1
	mov (-4,a3),d0
	mov d0,a0
	movhu (8,a3),d0
	and a0,d0
	asl 8,d0
	or d1,d0
	mov a3,sp
	ret [a3],4
	.size	bswap_16, .-bswap_16
	.global bswap_32
	.type	bswap_32, @function
bswap_32:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov 255,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	mov d0,d1
	asl 24,d1
	mov (8,a3),d0
	and d1,d0
	mov d0,d1
	lsr 24,d1
	mov (-4,a3),d0
	mov d0,a0
	asl 16,a0
	mov (8,a3),d0
	and a0,d0
	lsr 8,d0
	or d0,d1
	mov (-4,a3),d0
	mov d0,a0
	asl 8,a0
	mov (8,a3),d0
	and a0,d0
	asl 8,d0
	or d0,d1
	mov (8,a3),a0
	mov (-4,a3),d0
	and a0,d0
	asl 24,d0
	or d1,d0
	mov a3,sp
	ret [a3],4
	.size	bswap_32, .-bswap_32
	.global bswap_64
	.type	bswap_64, @function
bswap_64:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -200,sp
	mov d0,(32,a3)
	mov d1,(36,a3)
	mov 255,d0
	mov d0,(-8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov d0,a1
	asl 24,a1
	mov 0,a0
	mov (32,a3),d0
	and a0,d0,r4
	mov (36,a3),d0
	and a1,d0,r5
	mov r5,d0
	lsr 24,d0
	mov d0,(-16,a3)
	mov 0,d1
	mov d1,(-12,a3)
	mov (-8,a3),d0
	mov d0,d3
	asl 16,d3
	mov 0,d2
	mov (32,a3),d0
	and d2,d0
	mov d0,(-24,a3)
	mov (36,a3),d0
	and d3,d0
	mov d0,(-20,a3)
	mov (-20,a3),r2
	lsr 8,r2
	mov 0,r3
	mov (-16,a3),a0
	or r2,a0
	mov a0,(-32,a3)
	mov (-12,a3),d0
	or r3,d0
	mov d0,(-28,a3)
	mov (-8,a3),d0
	mov d0,d1
	asl 8,d1
	mov d1,(-36,a3)
	mov 0,a0
	mov a0,(-40,a3)
	mov (32,a3),d0
	mov (-40,a3),r6
	and d0,r6
	mov (36,a3),d0
	mov (-36,a3),r7
	and d0,r7
	mov r7,d0
	asl 8,d0
	mov r6,r0
	lsr 24,r0
	or d0,r0
	mov r7,r1
	lsr 24,r1
	mov (-32,a3),d0
	or r0,d0
	mov d0,(-48,a3)
	mov (-28,a3),d1
	or r1,d1
	mov d1,(-44,a3)
	mov (-8,a3),d0
	mov d0,a0
	asl 0,a0
	mov a0,(-52,a3)
	mov 0,d0
	mov d0,(-56,a3)
	mov (32,a3),d0
	mov (-56,a3),d1
	and d0,d1
	mov d1,(-64,a3)
	mov (36,a3),d0
	mov (-52,a3),a0
	and d0,a0
	mov a0,(-60,a3)
	mov (-60,a3),d0
	asl 24,d0
	mov (-64,a3),d1
	lsr 8,d1
	mov d1,(-72,a3)
	mov (-72,a3),a0
	or d0,a0
	mov a0,(-72,a3)
	mov (-60,a3),d0
	lsr 8,d0
	mov d0,(-68,a3)
	mov (-48,a3),d1
	mov (-72,a3),a0
	or a0,d1
	mov d1,(-80,a3)
	mov (-44,a3),d0
	mov (-68,a3),d1
	or d1,d0
	mov d0,(-76,a3)
	mov (-8,a3),d0
	mov d0,d1
	lsr 8,d1
	mov (-4,a3),d0
	mov d0,a0
	asl 24,a0
	mov a0,(-84,a3)
	mov (-84,a3),d0
	or d1,d0
	mov d0,(-84,a3)
	mov (-8,a3),d0
	mov d0,d1
	asl 24,d1
	mov d1,(-88,a3)
	mov (32,a3),d0
	mov (-88,a3),a0
	and d0,a0
	mov a0,(-96,a3)
	mov (36,a3),d0
	mov (-84,a3),d1
	and d0,d1
	mov d1,(-92,a3)
	mov (-96,a3),d0
	lsr 24,d0
	mov (-92,a3),a0
	asl 8,a0
	mov a0,(-100,a3)
	mov (-100,a3),d1
	or d0,d1
	mov d1,(-100,a3)
	mov (-96,a3),a0
	asl 8,a0
	mov a0,(-104,a3)
	mov (-80,a3),d0
	mov (-104,a3),d1
	or d1,d0
	mov d0,(-112,a3)
	mov (-76,a3),a0
	mov (-100,a3),d0
	or d0,a0
	mov a0,(-108,a3)
	mov (-8,a3),d0
	mov d0,d1
	lsr 16,d1
	mov (-4,a3),d0
	mov d0,a0
	asl 16,a0
	mov a0,(-116,a3)
	mov (-116,a3),d0
	or d1,d0
	mov d0,(-116,a3)
	mov (-8,a3),d0
	mov d0,d1
	asl 16,d1
	mov d1,(-120,a3)
	mov (32,a3),d0
	mov (-120,a3),a0
	and d0,a0
	mov a0,(-128,a3)
	mov (36,a3),d0
	mov (-116,a3),d1
	and d0,d1
	mov d1,(-124,a3)
	mov (-128,a3),d0
	lsr 8,d0
	mov (-124,a3),a0
	asl 24,a0
	mov a0,(-132,a3)
	mov (-132,a3),d1
	or d0,d1
	mov d1,(-132,a3)
	mov (-128,a3),a0
	asl 24,a0
	mov a0,(-136,a3)
	mov (-112,a3),d0
	mov (-136,a3),d1
	or d1,d0
	mov d0,(-144,a3)
	mov (-108,a3),a0
	mov (-132,a3),d0
	or d0,a0
	mov a0,(-140,a3)
	mov (-8,a3),d0
	mov d0,d1
	lsr 24,d1
	mov (-4,a3),d0
	mov d0,a0
	asl 8,a0
	mov a0,(-148,a3)
	mov (-148,a3),d0
	or d1,d0
	mov d0,(-148,a3)
	mov (-8,a3),d0
	mov d0,d1
	asl 8,d1
	mov d1,(-152,a3)
	mov (32,a3),d0
	mov (-152,a3),a0
	and d0,a0
	mov a0,(-160,a3)
	mov (36,a3),d0
	mov (-148,a3),d1
	and d0,d1
	mov d1,(-156,a3)
	mov (-160,a3),a0
	asl 8,a0
	mov a0,(-164,a3)
	mov 0,d0
	mov d0,(-168,a3)
	mov (-144,a3),d1
	mov (-168,a3),a0
	or a0,d1
	mov d1,(-176,a3)
	mov (-140,a3),d0
	mov (-164,a3),d1
	or d1,d0
	mov d0,(-172,a3)
	mov (32,a3),d1
	mov (-8,a3),d0
	and d0,d1,d0
	mov d0,(-184,a3)
	mov (36,a3),d1
	mov (-4,a3),d0
	and d0,d1,d0
	mov d0,(-180,a3)
	mov (-184,a3),a0
	asl 24,a0
	mov a0,(-188,a3)
	mov 0,d0
	mov d0,(-192,a3)
	mov (-176,a3),d1
	mov (-192,a3),a0
	or a0,d1
	mov d1,(-200,a3)
	mov (-172,a3),d0
	mov (-188,a3),d1
	or d1,d0
	mov d0,(-196,a3)
	mov (-200,a3),a0
	mov (-196,a3),a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L466
.L469:
	mov (8,a3),d1
	mov (-4,a3),d0
	lsr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L467
	mov (-4,a3),d0
	inc d0
	jmp .L468
.L467:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L466:
	mov (-4,a3),d0
	cmp 31,d0
	bls .L469
	mov 0,d0
.L468:
	mov a3,sp
	ret [a3],4
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	movm [d2,a3],(sp)
	mov sp,a3
	cmp 0,d0
	bne .L471
	mov 0,d0
	jmp .L472
.L471:
	mov 1,d2
	jmp .L473
.L474:
	asr 1,d0
	inc d2
.L473:
	mov d0,d1
	and 1,d1
	cmp 0,d1
	beq .L474
	mov d2,d0
.L472:
	mov a3,sp
	ret [d2,a3],8
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	fmov (8,a3),fs24
	fcmp 0xff7fffff, fs24
	fblt .L476
	fmov (8,a3),fs24
	fcmp 0x7f7fffff, fs24
	fbgt .L476
	jmp .L481
.L476:
	mov 1,d0
	jmp .L480
.L481:
	mov 0,d0
.L480:
	mov a3,sp
	ret [a3],4
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov -1,d1
	mov -1048577,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L483
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L488
.L483:
	mov 1,d0
	jmp .L487
.L488:
	mov 0,d0
.L487:
	mov a3,sp
	ret [a3],4
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov -1,d1
	mov -1048577,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L490
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L495
.L490:
	mov 1,d0
	jmp .L494
.L495:
	mov 0,d0
.L494:
	mov a3,sp
	ret [a3],4
	.size	gl_isinfl, .-gl_isinfl
	.global _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d0
	call +__floatsidf,[],0
	mov d0,a0
	mov d1,a1
	mov (8,a3),d0
	mov a0,(d0)
	mov a1,(4,d0)
	nop
	mov a3,sp
	ret [a3],4
	.size	_Qp_itoq, .-_Qp_itoq
	.global ldexpf
	.type	ldexpf, @function
ldexpf:
	movm [a3],(sp)
	mov sp,a3
	add -16,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d1
	mov (8,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L498
	fmov (8,a3),fs24
	fadd fs24, fs24
	fmov (8,a3),fs26
	fcmp fs24, fs26
	fbeq .L498
	mov (12,a3),d0
	cmp 0,d0
	bge .L499
	mov 0x3f000000,d0
	jmp .L500
.L499:
	mov 0x40000000,d0
.L500:
	mov d0,(-4,a3)
.L503:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L501
	fmov (8,a3),fs26
	fmov (-4,a3),fs24
	fmul fs26, fs24
	fmov fs24,(8,a3)
.L501:
	mov (12,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(12,a3)
	mov (12,a3),d0
	cmp 0,d0
	beq .L505
	fmov (-4,a3),fs24
	fmul fs24, fs24
	fmov fs24,(-4,a3)
	jmp .L503
.L505:
	nop
.L498:
	mov (8,a3),d0
	mov a3,sp
	ret [a3],4
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [a3],(sp)
	mov sp,a3
	add -28,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L507
	mov (8,a3),a0
	mov (12,a3),a1
	mov a0,(12,sp)
	mov a1,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__adddf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L507
	mov (16,a3),d0
	cmp 0,d0
	bge .L509
	mov 0,d0
	mov 1071644672,d1
	jmp .L510
.L509:
	mov 0,d0
	mov 1073741824,d1
.L510:
	mov d0,(-8,a3)
	mov d1,(-4,a3)
.L513:
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L511
	mov (-8,a3),d0
	mov d0,(12,sp)
	mov (-4,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(8,a3)
	mov a1,(12,a3)
.L511:
	mov (16,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(16,a3)
	mov (16,a3),d0
	cmp 0,d0
	beq .L516
	mov (-8,a3),d0
	mov d0,(12,sp)
	mov (-4,a3),d0
	mov d0,(16,sp)
	mov (-8,a3),d0
	mov (-4,a3),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(-8,a3)
	mov a1,(-4,a3)
	jmp .L513
.L516:
	nop
.L507:
	mov (8,a3),d0
	mov (12,a3),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [a3],(sp)
	mov sp,a3
	add -28,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L518
	mov (8,a3),a0
	mov (12,a3),a1
	mov a0,(12,sp)
	mov a1,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__adddf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L518
	mov (16,a3),d0
	cmp 0,d0
	bge .L520
	mov 0,d0
	mov 1071644672,d1
	jmp .L521
.L520:
	mov 0,d0
	mov 1073741824,d1
.L521:
	mov d0,(-8,a3)
	mov d1,(-4,a3)
.L524:
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L522
	mov (-8,a3),d0
	mov d0,(12,sp)
	mov (-4,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(8,a3)
	mov a1,(12,a3)
.L522:
	mov (16,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(16,a3)
	mov (16,a3),d0
	cmp 0,d0
	beq .L527
	mov (-8,a3),d0
	mov d0,(12,sp)
	mov (-4,a3),d0
	mov d0,(16,sp)
	mov (-8,a3),d0
	mov (-4,a3),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(-8,a3)
	mov a1,(-4,a3)
	jmp .L524
.L527:
	nop
.L518:
	mov (8,a3),d0
	mov (12,a3),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d0
	mov d0,(-4,a3)
	mov (8,a3),d0
	mov d0,(-8,a3)
	jmp .L529
.L530:
	mov (-4,a3),d0
	mov 1,d1
	add d0,d1
	mov d1,(-4,a3)
	movbu (d0),a0
	mov (-8,a3),d0
	mov 1,d1
	add d0,d1
	mov d1,(-8,a3)
	movbu (d0),d1
	xor a0,d1
	movbu d1,(d0)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L529:
	mov (16,a3),d0
	cmp 0,d0
	bne .L530
	mov (8,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	movm [a3],(sp)
	mov sp,a3
	add -16,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	call +strlen,[],0
	mov d0,d1
	mov (8,a3),d0
	add d1,d0
	mov d0,(-4,a3)
	jmp .L533
.L535:
	mov (12,a3),d0
	inc d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L533:
	mov (16,a3),d0
	cmp 0,d0
	beq .L534
	mov (12,a3),d0
	movbu (d0),d1
	mov (-4,a3),d0
	movbu d1,(d0)
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L535
.L534:
	mov (16,a3),d0
	cmp 0,d0
	bne .L536
	mov (-4,a3),d0
	mov 0,d1
	movbu d1,(d0)
.L536:
	mov (8,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L539
.L544:
	nop
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L539:
	mov (-4,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcc .L540
	mov (8,a3),d1
	mov (-4,a3),d0
	add d1,d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L544
.L540:
	mov (-4,a3),d0
	mov a3,sp
	ret [a3],4
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	jmp .L546
.L550:
	mov (12,a3),d0
	mov d0,(-4,a3)
	jmp .L547
.L549:
	mov (-4,a3),d0
	mov 1,d1
	add d0,d1
	mov d1,(-4,a3)
	movbu (d0),d1
	mov (8,a3),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L547
	mov (8,a3),d0
	jmp .L548
.L547:
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L549
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
.L546:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L550
	mov 0,d0
.L548:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d1,(12,a3)
	mov 0,d1
	mov d1,(-4,a3)
.L553:
	movbu (d0),d1
	extbu d1
	mov (12,a3),a0
	cmp d1,a0
	bne .L552
	mov d0,(-4,a3)
.L552:
	mov d0,d1
	mov 1,d0
	add d1,d0
	movbu (d1),d1
	extbu d1
	cmp 0,d1
	bne .L553
	mov (-4,a3),d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [a3],(sp)
	mov sp,a3
	add -24,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	call +strlen,[],0
	mov d0,(-8,a3)
	mov (-8,a3),d0
	cmp 0,d0
	bne .L558
	mov (8,a3),d0
	jmp .L557
.L560:
	mov (12,a3),d1
	mov (-4,a3),a0
	mov (-8,a3),d0
	mov d0,(12,sp)
	mov a0,d0
	call +strncmp,[],0
	cmp 0,d0
	bne .L559
	mov (-4,a3),d0
	jmp .L557
.L559:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L558:
	mov (12,a3),d0
	movbu (d0),d0
	extbu d0,d1
	mov (-4,a3),d0
	call +strchr,[],0
	mov a0,(-4,a3)
	mov (-4,a3),d0
	cmp 0,d0
	bne .L560
	mov 0,d0
.L557:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L562
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,a3),d0
	mov (28,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L564
.L562:
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L565
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,a3),d0
	mov (28,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L565
.L564:
	mov (16,a3),d2
	mov (20,a3),d0
	mov d0,d3
	xor -2147483648,d3
	jmp .L568
.L565:
	mov (16,a3),d2
	mov (20,a3),d3
.L568:
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [a3],(sp)
	mov sp,a3
	add -24,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d1
	mov (20,a3),d0
	sub d0,d1,d0
	mov (8,a3),d1
	add d1,d0
	mov d0,(-8,a3)
	mov (20,a3),d0
	cmp 0,d0
	bne .L572
	mov (8,a3),d0
	jmp .L573
.L572:
	mov 1,a0
	mov (12,a3),d1
	mov (20,a3),d0
	cmp d0,d1
	bcs .L574
	mov 0,a0
.L574:
	extbu a0,d0
	cmp 0,d0
	beq .L575
	mov 0,d0
	jmp .L573
.L575:
	mov (8,a3),d0
	mov d0,(-4,a3)
	jmp .L576
.L578:
	mov (-4,a3),d0
	movbu (d0),d1
	mov (16,a3),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L577
	mov (-4,a3),d0
	mov 1,a0
	add d0,a0
	mov (16,a3),d0
	mov 1,d1
	add d0,d1
	mov (20,a3),d0
	add -1,d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L577
	mov (-4,a3),d0
	jmp .L573
.L577:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L576:
	mov (-4,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bls .L578
	mov 0,d0
.L573:
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [a3],(sp)
	mov sp,a3
	add -16,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d1
	mov (8,a3),a0
	mov (16,a3),d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcpy,[],0
	mov a0,d1
	mov (16,a3),d0
	add d1,d0
	mov d0,d1
	mov d1,a0
	mov a3,sp
	ret [a3],4
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -28,sp
	mov d0,(32,a3)
	mov d1,(36,a3)
	mov 0,d0
	mov d0,(-8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L582
	mov (32,a3),r4
	mov (36,a3),d0
	mov d0,r5
	xor -2147483648,r5
	mov r4,(32,a3)
	mov r5,(36,a3)
	mov 1,d0
	mov d0,(-4,a3)
.L582:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L599
	jmp .L586
.L587:
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
	mov 0,d1
	mov 1073741824,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__divdf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(32,a3)
	mov a1,(36,a3)
.L586:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L587
	jmp .L588
.L599:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L588
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L588
	jmp .L591
.L592:
	mov (-8,a3),d0
	add -1,d0
	mov d0,(-8,a3)
	mov (32,a3),a0
	mov (36,a3),a1
	mov a0,(12,sp)
	mov a1,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__adddf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(32,a3)
	mov a1,(36,a3)
.L591:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L592
.L588:
	mov (40,a3),d0
	mov (-8,a3),d1
	mov d1,(d0)
	mov (-4,a3),d0
	cmp 0,d0
	beq .L593
	mov (32,a3),d2
	mov (36,a3),d0
	mov d0,d3
	xor -2147483648,d3
	mov d2,(32,a3)
	mov d3,(36,a3)
.L593:
	mov (32,a3),d0
	mov (36,a3),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -16,sp
	mov d0,(36,a3)
	mov d1,(40,a3)
	mov 0,d0
	mov d0,(-8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov (36,a3),d0
	mov d0,(-16,a3)
	mov (40,a3),d0
	mov d0,(-12,a3)
	jmp .L601
.L604:
	mov (-16,a3),d0
	mov d0,r4
	and 1,r4
	mov (-12,a3),d0
	mov d0,r5
	and 0,r5
	mov r4,d0
	or r5,d0
	cmp 0,d0
	beq .L602
	mov (-8,a3),r2
	mov (-4,a3),r3
	mov (44,a3),d0
	mov (48,a3),d1
	add d0,r2,r0
	addc d1,r3,r1
	mov r0,(-8,a3)
	mov r1,(-4,a3)
.L602:
	mov (44,a3),d0
	lsr 31,d0
	mov (48,a3),d1
	mov d1,a1
	add a1,a1
	or d0,a1
	mov (44,a3),d0
	mov d0,a0
	add a0,a0
	mov a0,(44,a3)
	mov a1,(48,a3)
	mov (-12,a3),d0
	asl 31,d0
	mov (-16,a3),d1
	mov d1,d2
	lsr 1,d2
	or d0,d2
	mov (-12,a3),d0
	mov d0,d3
	lsr 1,d3
	mov d2,(-16,a3)
	mov d3,(-12,a3)
.L601:
	mov (-16,a3),d0
	mov (-12,a3),d1
	or d1,d0
	cmp 0,d0
	bne .L604
	mov (-8,a3),d0
	mov (-4,a3),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 1,d0
	mov d0,(-4,a3)
	mov 0,d0
	mov d0,(-8,a3)
	jmp .L607
.L609:
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	add d0,d0
	mov d0,(-4,a3)
.L607:
	mov (12,a3),d1
	mov (8,a3),d0
	cmp d0,d1
	bcc .L610
	mov (-4,a3),d0
	cmp 0,d0
	beq .L610
	mov (12,a3),d0
	cmp 0,d0
	bge .L609
	jmp .L610
.L612:
	mov (8,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcs .L611
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1,d0
	mov d0,(8,a3)
	mov (-8,a3),d1
	mov (-4,a3),d0
	or d1,d0
	mov d0,(-8,a3)
.L611:
	mov (-4,a3),d0
	lsr 1,d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L610:
	mov (-4,a3),d0
	cmp 0,d0
	bne .L612
	mov (16,a3),d0
	cmp 0,d0
	beq .L613
	mov (8,a3),d0
	jmp .L614
.L613:
	mov (-8,a3),d0
.L614:
	mov a3,sp
	ret [a3],4
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	movbu d0,(8,a3)
	movbu (8,a3),d0
	cmp 0,d0
	bne .L616
	mov 7,d0
	jmp .L617
.L616:
	movbu (8,a3),d0
	mov d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	add -1,d0
.L617:
	mov a3,sp
	ret [a3],4
	.size	__clrsbqi2, .-__clrsbqi2
	.global __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d0
	cmp 0,d0
	bge .L619
	mov (8,a3),d0
	mov d0,a0
	not a0
	mov (12,a3),d0
	mov d0,a1
	not a1
	mov a0,(8,a3)
	mov a1,(12,a3)
.L619:
	mov (8,a3),d0
	mov (12,a3),d1
	or d1,d0
	cmp 0,d0
	bne .L621
	mov 63,d0
	jmp .L622
.L621:
	mov (8,a3),d0
	mov (12,a3),d1
	cmp 0,d1
	beq .L623
	mov 0,a0
	bsch d1, a0
	xor 31,a0
	jmp .L624
.L623:
	mov 0,a0
	bsch d0, a0
	xor 31,a0
	add 32,a0
.L624:
	mov a0,(-4,a3)
	mov (-4,a3),d0
	add -1,d0
.L622:
	mov a3,sp
	ret [a3],4
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L626
.L628:
	mov (8,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L627
	mov (-4,a3),d1
	mov (12,a3),d0
	add d1,d0
	mov d0,(-4,a3)
.L627:
	mov (8,a3),d0
	lsr 1,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
.L626:
	mov (8,a3),d0
	cmp 0,d0
	bne .L628
	mov (-4,a3),d0
	mov a3,sp
	ret [a3],4
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (16,a3),d0
	lsr 3,d0
	mov d0,(-12,a3)
	mov (16,a3),d0
	and -8,d0
	mov d0,(-8,a3)
	mov (8,a3),d0
	mov d0,(-16,a3)
	mov (12,a3),d0
	mov d0,(-20,a3)
	mov (-16,a3),d1
	mov (-20,a3),d0
	cmp d0,d1
	bcs .L631
	mov (-20,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov (-16,a3),d1
	cmp d0,d1
	bls .L638
.L631:
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L633
.L634:
	mov (-4,a3),d0
	asl2 d0
	add d0,d0
	mov (12,a3),d1
	add d0,d1,a1
	mov (-4,a3),d0
	asl2 d0
	add d0,d0
	mov (8,a3),d1
	add d0,d1,a0
	mov (a1),d0
	mov (4,a1),d1
	mov d0,(a0)
	mov d1,(4,a0)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L633:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bcs .L634
	jmp .L635
.L636:
	mov (-20,a3),d1
	mov (-8,a3),d0
	add d0,d1
	mov (-16,a3),a0
	mov (-8,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
.L635:
	mov (16,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bhi .L636
	jmp .L637
.L639:
	mov (-20,a3),d1
	mov (16,a3),d0
	add d0,d1
	mov (-16,a3),a0
	mov (16,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L638:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L639
	nop
.L637:
	nop
	mov a3,sp
	ret [a3],4
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	movm [a3],(sp)
	mov sp,a3
	add -16,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (16,a3),d0
	lsr 1,d0
	mov d0,(-8,a3)
	mov (8,a3),d0
	mov d0,(-12,a3)
	mov (12,a3),d0
	mov d0,(-16,a3)
	mov (-12,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bcs .L641
	mov (-16,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov (-12,a3),d1
	cmp d0,d1
	bls .L647
.L641:
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L643
.L644:
	mov (-4,a3),d0
	add d0,d0
	mov (12,a3),d1
	add d0,d1
	mov (-4,a3),d0
	add d0,d0
	mov (8,a3),a0
	add a0,d0
	movhu (d1),d1
	movhu d1,(d0)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L643:
	mov (-4,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bcs .L644
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L646
	mov (16,a3),d0
	add -1,d0
	mov (-16,a3),d1
	add d0,d1
	mov (16,a3),d0
	add -1,d0
	mov (-12,a3),a0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
	jmp .L646
.L648:
	mov (-16,a3),d1
	mov (16,a3),d0
	add d0,d1
	mov (-12,a3),a0
	mov (16,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L647:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L648
	nop
.L646:
	nop
	mov a3,sp
	ret [a3],4
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (16,a3),d0
	lsr 2,d0
	mov d0,(-12,a3)
	mov (16,a3),d0
	and -4,d0
	mov d0,(-8,a3)
	mov (8,a3),d0
	mov d0,(-16,a3)
	mov (12,a3),d0
	mov d0,(-20,a3)
	mov (-16,a3),d1
	mov (-20,a3),d0
	cmp d0,d1
	bcs .L650
	mov (-20,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov (-16,a3),d1
	cmp d0,d1
	bls .L657
.L650:
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L652
.L653:
	mov (-4,a3),d0
	asl2 d0
	mov (12,a3),d1
	add d0,d1
	mov (-4,a3),d0
	asl2 d0
	mov (8,a3),a0
	add a0,d0
	mov (d1),d1
	mov d1,(d0)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L652:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bcs .L653
	jmp .L654
.L655:
	mov (-20,a3),d1
	mov (-8,a3),d0
	add d0,d1
	mov (-16,a3),a0
	mov (-8,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
.L654:
	mov (16,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bhi .L655
	jmp .L656
.L658:
	mov (-20,a3),d1
	mov (16,a3),d0
	add d0,d1
	mov (-16,a3),a0
	mov (16,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L657:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L658
	nop
.L656:
	nop
	mov a3,sp
	ret [a3],4
	.size	__cmovw, .-__cmovw
	.global __modi
	.type	__modi, @function
__modi:
	movm [d2,a3],(sp)
	mov sp,a3
	mov d0,(12,a3)
	mov d1,(16,a3)
	mov (12,a3),d0
	mov (16,a3),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov d0,a1
	mov a0,d2
	mov d2,mdr
	div d1,a1
	mov mdr,d0
	mov a3,sp
	ret [d2,a3],8
	.size	__modi, .-__modi
	.global __uitod
	.type	__uitod, @function
__uitod:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(16,a3)
	mov (16,a3),d0
	call +__floatunsidf,[],0
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	__uitod, .-__uitod
	.global __uitof
	.type	__uitof, @function
__uitof:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	call +__floatunsisf,[],0
	mov a3,sp
	ret [a3],4
	.size	__uitof, .-__uitof
	.global __ulltod
	.type	__ulltod, @function
__ulltod:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__floatundidf,[],0
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	__ulltod, .-__ulltod
	.global __ulltof
	.type	__ulltof, @function
__ulltof:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__floatundisf,[],0
	mov a3,sp
	ret [a3],4
	.size	__ulltof, .-__ulltof
	.global __umodi
	.type	__umodi, @function
__umodi:
	movm [d2,a3],(sp)
	mov sp,a3
	mov d0,(12,a3)
	mov d1,(16,a3)
	mov (12,a3),d1
	mov (16,a3),d0
	mov 0,d2
	mov d2,mdr
	divu d0,d1
	mov mdr,d0
	mov a3,sp
	ret [d2,a3],8
	.size	__umodi, .-__umodi
	.global __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	movhu d0,(8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L672
.L675:
	movhu (8,a3),d1
	mov 15,a0
	mov (-4,a3),d0
	sub d0,a0,d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	bne .L677
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L672:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L675
	jmp .L674
.L677:
	nop
.L674:
	mov (-4,a3),d0
	mov a3,sp
	ret [a3],4
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	movhu d0,(8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L679
.L682:
	movhu (8,a3),d1
	mov (-4,a3),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	bne .L684
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L679:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L682
	jmp .L681
.L684:
	nop
.L681:
	mov (-4,a3),d0
	mov a3,sp
	ret [a3],4
	.size	__ctzhi2, .-__ctzhi2
	.global __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	fmov (8,a3),fs24
	fcmp 0x47000000, fs24
	fbge .L689
	jmp .L690
.L689:
	fmov (8,a3),fs24
	fsub 0x47000000, fs24, fs24
	fmov fs24,d0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L688
.L690:
	mov (8,a3),d0
	call +__fixsfsi,[],0
.L688:
	mov a3,sp
	ret [a3],4
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	movhu d0,(8,a3)
	mov 0,d0
	mov d0,(-8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L692
.L694:
	movhu (8,a3),d1
	mov (-4,a3),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L693
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
.L693:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L692:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L694
	mov (-8,a3),d0
	and 1,d0
	mov a3,sp
	ret [a3],4
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	movhu d0,(8,a3)
	mov 0,d0
	mov d0,(-8,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L697
.L699:
	movhu (8,a3),d1
	mov (-4,a3),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L698
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
.L698:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L697:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L699
	mov (-8,a3),d0
	mov a3,sp
	ret [a3],4
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L702
.L704:
	mov (8,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L703
	mov (-4,a3),d1
	mov (12,a3),d0
	add d1,d0
	mov d0,(-4,a3)
.L703:
	mov (8,a3),d0
	lsr 1,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
.L702:
	mov (8,a3),d0
	cmp 0,d0
	bne .L704
	mov (-4,a3),d0
	mov a3,sp
	ret [a3],4
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov (8,a3),d0
	cmp 0,d0
	bne .L709
	mov 0,d0
	jmp .L708
.L711:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L710
	mov (-4,a3),d1
	mov (8,a3),d0
	add d1,d0
	mov d0,(-4,a3)
.L710:
	mov (8,a3),d0
	add d0,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L709:
	mov (12,a3),d0
	cmp 0,d0
	bne .L711
	mov (-4,a3),d0
.L708:
	mov a3,sp
	ret [a3],4
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 1,d0
	mov d0,(-4,a3)
	mov 0,d0
	mov d0,(-8,a3)
	jmp .L713
.L715:
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	add d0,d0
	mov d0,(-4,a3)
.L713:
	mov (12,a3),d1
	mov (8,a3),d0
	cmp d0,d1
	bcc .L716
	mov (-4,a3),d0
	cmp 0,d0
	beq .L716
	mov (12,a3),d0
	cmp 0,d0
	bge .L715
	jmp .L716
.L718:
	mov (8,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcs .L717
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1,d0
	mov d0,(8,a3)
	mov (-8,a3),d1
	mov (-4,a3),d0
	or d1,d0
	mov d0,(-8,a3)
.L717:
	mov (-4,a3),d0
	lsr 1,d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L716:
	mov (-4,a3),d0
	cmp 0,d0
	bne .L718
	mov (16,a3),d0
	cmp 0,d0
	beq .L719
	mov (8,a3),d0
	jmp .L720
.L719:
	mov (-8,a3),d0
.L720:
	mov a3,sp
	ret [a3],4
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov d1,(12,a3)
	fmov (8,a3),fs26
	fmov (12,a3),fs24
	fcmp fs24, fs26
	fblt .L727
	jmp .L729
.L727:
	mov -1,d0
	jmp .L724
.L729:
	fmov (8,a3),fs26
	fmov (12,a3),fs24
	fcmp fs24, fs26
	fbgt .L728
	jmp .L730
.L728:
	mov 1,d0
	jmp .L724
.L730:
	mov 0,d0
.L724:
	mov a3,sp
	ret [a3],4
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L739
	mov -1,d0
	jmp .L734
.L739:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L740
	mov 1,d0
	jmp .L734
.L740:
	mov 0,d0
.L734:
	mov a3,sp
	ret [a3],4
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	mov d0,(16,a3)
	mov d1,(20,a3)
	mov (16,a3),d0
	mov d0,r0
	asr 31,d0
	mov d0,r1
	mov (20,a3),d0
	mov d0,d2
	asr 31,d0
	mov d0,d3
	mul r1,d2,d0,d1
	mul d3,r0,a0,d0
	add d1,d0
	mulu r0,d2,a1,a0
	add a1,d0
	mov d0,a1
	mov a0,d2
	mov a1,d3
	mov d2,d0
	mov d3,d1
	mov a3,sp
	ret [d2,d3,a3],12
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	mov d0,(20,a3)
	mov d1,(24,a3)
	mov (20,a3),d0
	mov d0,d2
	mov 0,d3
	mov (24,a3),d0
	mov d0,a0
	mov 0,a1
	mul d3,a0,d0,d1
	mul a1,d2,a2,d0
	add d1,d0
	mulu d2,a0,r1,r0
	add r1,d0
	mov d0,r1
	mov r0,a0
	mov r1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.global __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 0,d0
	mov d0,(-8,a3)
	mov 0,d0
	mov d0,(-12,a3)
	mov (12,a3),d0
	cmp 0,d0
	bge .L746
	mov (12,a3),d0
	not d0
	inc d0
	mov d0,(12,a3)
	mov 1,d0
	mov d0,(-8,a3)
.L746:
	mov 0,d0
	movbu d0,(-1,a3)
	jmp .L747
.L750:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L748
	mov (-12,a3),d1
	mov (8,a3),d0
	add d1,d0
	mov d0,(-12,a3)
.L748:
	mov (8,a3),d0
	add d0,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	asr 1,d0
	mov d0,(12,a3)
	movbu (-1,a3),d0
	inc d0
	movbu d0,(-1,a3)
.L747:
	mov (12,a3),d0
	cmp 0,d0
	beq .L749
	movbu (-1,a3),d0
	cmp 31,d0
	bls .L750
.L749:
	mov (-8,a3),d0
	cmp 0,d0
	beq .L751
	mov (-12,a3),d0
	not d0
	inc d0
	jmp .L753
.L751:
	mov (-12,a3),d0
.L753:
	mov a3,sp
	ret [a3],4
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [a3],(sp)
	mov sp,a3
	add -24,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov (8,a3),d0
	cmp 0,d0
	bge .L755
	mov (8,a3),d0
	not d0
	inc d0
	mov d0,(8,a3)
	mov 1,d1
	mov (-4,a3),d0
	cmp 0,d0
	beq .L756
	mov 0,d1
.L756:
	extbu d1,d0
	mov d0,(-4,a3)
.L755:
	mov (12,a3),d0
	cmp 0,d0
	bge .L757
	mov (12,a3),d0
	not d0
	inc d0
	mov d0,(12,a3)
	mov 1,d1
	mov (-4,a3),d0
	cmp 0,d0
	beq .L758
	mov 0,d1
.L758:
	extbu d1,d0
	mov d0,(-4,a3)
.L757:
	mov (8,a3),a0
	mov (12,a3),d1
	mov 0,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	cmp 0,d0
	beq .L759
	mov (-8,a3),d0
	not d0
	inc d0
	mov d0,(-8,a3)
.L759:
	mov (-8,a3),d0
	mov a3,sp
	ret [a3],4
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [a3],(sp)
	mov sp,a3
	add -24,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 0,d0
	mov d0,(-4,a3)
	mov (8,a3),d0
	cmp 0,d0
	bge .L762
	mov (8,a3),d0
	not d0
	inc d0
	mov d0,(8,a3)
	mov 1,d0
	mov d0,(-4,a3)
.L762:
	mov (12,a3),d0
	cmp 0,d0
	bge .L763
	mov (12,a3),d0
	not d0
	inc d0
	mov d0,(12,a3)
.L763:
	mov (8,a3),a0
	mov (12,a3),d1
	mov 1,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	cmp 0,d0
	beq .L764
	mov (-8,a3),d0
	not d0
	inc d0
	mov d0,(-8,a3)
.L764:
	mov (-8,a3),d0
	mov a3,sp
	ret [a3],4
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	movhu d0,(8,a3)
	mov d1,d0
	movhu d0,(12,a3)
	mov 1,d0
	movhu d0,(-2,a3)
	mov 0,d0
	movhu d0,(-4,a3)
	jmp .L767
.L769:
	movhu (12,a3),d0
	add d0,d0
	movhu d0,(12,a3)
	movhu (-2,a3),d0
	add d0,d0
	movhu d0,(-2,a3)
.L767:
	movhu (12,a3),d1
	movhu (8,a3),d0
	cmp d0,d1
	bcc .L770
	movhu (-2,a3),d0
	cmp 0,d0
	beq .L770
	movhu (12,a3),d0
	exth d0
	cmp 0,d0
	bge .L769
	jmp .L770
.L772:
	movhu (8,a3),d1
	movhu (12,a3),d0
	cmp d0,d1
	bcs .L771
	movhu (8,a3),d1
	movhu (12,a3),d0
	sub d0,d1,d0
	movhu d0,(8,a3)
	movhu (-4,a3),d1
	movhu (-2,a3),d0
	or d1,d0
	movhu d0,(-4,a3)
.L771:
	movhu (-2,a3),d0
	lsr 1,d0
	movhu d0,(-2,a3)
	movhu (12,a3),d0
	lsr 1,d0
	movhu d0,(12,a3)
.L770:
	movhu (-2,a3),d0
	cmp 0,d0
	bne .L772
	mov (16,a3),d0
	cmp 0,d0
	beq .L773
	movhu (8,a3),d0
	jmp .L774
.L773:
	movhu (-4,a3),d0
.L774:
	mov a3,sp
	ret [a3],4
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 1,d0
	mov d0,(-4,a3)
	mov 0,d0
	mov d0,(-8,a3)
	jmp .L776
.L778:
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	add d0,d0
	mov d0,(-4,a3)
.L776:
	mov (12,a3),d1
	mov (8,a3),d0
	cmp d0,d1
	bcc .L779
	mov (-4,a3),d0
	cmp 0,d0
	beq .L779
	mov (12,a3),d0
	cmp 0,d0
	bge .L778
	jmp .L779
.L781:
	mov (8,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcs .L780
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1,d0
	mov d0,(8,a3)
	mov (-8,a3),d1
	mov (-4,a3),d0
	or d1,d0
	mov d0,(-8,a3)
.L780:
	mov (-4,a3),d0
	lsr 1,d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L779:
	mov (-4,a3),d0
	cmp 0,d0
	bne .L781
	mov (16,a3),d0
	cmp 0,d0
	beq .L782
	mov (8,a3),d0
	jmp .L783
.L782:
	mov (-8,a3),d0
.L783:
	mov a3,sp
	ret [a3],4
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 32,d0
	mov d0,(-4,a3)
	mov (8,a3),d0
	mov d0,(-12,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (16,a3),d1
	mov (-4,a3),d0
	and d1,d0
	cmp 0,d0
	beq .L785
	mov 0,d0
	mov d0,(-20,a3)
	mov (-12,a3),d1
	mov (16,a3),a0
	mov (-4,a3),d0
	sub d0,a0,d0
	asl d0,d1,d0
	mov d0,(-16,a3)
	jmp .L786
.L785:
	mov (16,a3),d0
	cmp 0,d0
	bne .L787
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L789
.L787:
	mov (-12,a3),d1
	mov (16,a3),d0
	asl d0,d1,d0
	mov d0,(-20,a3)
	mov (-8,a3),d0
	mov d0,d1
	mov (16,a3),d0
	asl d0,d1
	mov (-12,a3),a0
	mov (-4,a3),a1
	mov (16,a3),d0
	sub d0,a1,d0
	lsr d0,a0,d0
	or d1,d0
	mov d0,(-16,a3)
.L786:
	mov (-20,a3),d0
	mov (-16,a3),d1
.L789:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 32,d0
	mov d0,(-4,a3)
	mov (8,a3),d0
	mov d0,(-12,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (16,a3),d1
	mov (-4,a3),d0
	and d1,d0
	cmp 0,d0
	beq .L791
	mov (-8,a3),d1
	mov (-4,a3),d0
	add -1,d0
	asr d0,d1,d0
	mov d0,(-16,a3)
	mov (-8,a3),d1
	mov (16,a3),a0
	mov (-4,a3),d0
	sub d0,a0,d0
	asr d0,d1,d0
	mov d0,(-20,a3)
	jmp .L792
.L791:
	mov (16,a3),d0
	cmp 0,d0
	bne .L793
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L795
.L793:
	mov (-8,a3),d1
	mov (16,a3),d0
	asr d0,d1,d0
	mov d0,(-16,a3)
	mov (-8,a3),d0
	mov d0,a0
	mov (-4,a3),d1
	mov (16,a3),d0
	sub d0,d1,d0
	asl d0,a0,d1
	mov (-12,a3),a0
	mov (16,a3),d0
	lsr d0,a0,d0
	or d1,d0
	mov d0,(-20,a3)
.L792:
	mov (-20,a3),d0
	mov (-16,a3),d1
.L795:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -120,sp
	mov d0,(32,a3)
	mov d1,(36,a3)
	mov (36,a3),d0
	mov d0,r2
	lsr 24,r2
	mov 0,r3
	mov (36,a3),d0
	mov d0,a0
	lsr 8,a0
	mov 0,a1
	mov a0,d2
	and 65280,d2
	mov a1,d3
	and 0,d3
	or d2,r2,d0
	mov d0,(-8,a3)
	or d3,r3,d1
	mov d1,(-4,a3)
	mov (36,a3),d0
	mov d0,d1
	asl 8,d1
	mov (32,a3),d0
	mov d0,r0
	lsr 24,r0
	or d1,r0
	mov (36,a3),d0
	mov d0,r1
	lsr 24,r1
	mov r0,r6
	and 16711680,r6
	mov r1,r7
	and 0,r7
	mov (-8,a3),a0
	or r6,a0
	mov a0,(-16,a3)
	mov (-4,a3),d0
	or r7,d0
	mov d0,(-12,a3)
	mov (36,a3),d0
	mov d0,d1
	asl 24,d1
	mov (32,a3),d0
	mov d0,r4
	lsr 8,r4
	or d1,r4
	mov (36,a3),d0
	mov d0,r5
	lsr 8,r5
	mov r4,d1
	and -16777216,d1
	mov d1,(-24,a3)
	mov r5,a0
	and 0,a0
	mov a0,(-20,a3)
	mov (-16,a3),d0
	mov (-24,a3),d1
	or d1,d0
	mov d0,(-32,a3)
	mov (-12,a3),a0
	mov (-20,a3),d0
	or d0,a0
	mov a0,(-28,a3)
	mov (32,a3),d0
	mov d0,d1
	lsr 24,d1
	mov (36,a3),d0
	mov d0,a0
	asl 8,a0
	mov a0,(-36,a3)
	mov (-36,a3),d0
	or d1,d0
	mov d0,(-36,a3)
	mov (32,a3),d0
	mov d0,d1
	asl 8,d1
	mov d1,(-40,a3)
	mov (-40,a3),a0
	and 0,a0
	mov a0,(-48,a3)
	movbu (-36,a3),d0
	mov d0,(-44,a3)
	mov (-32,a3),d1
	mov (-48,a3),a0
	or a0,d1
	mov d1,(-56,a3)
	mov (-28,a3),d0
	mov (-44,a3),d1
	or d1,d0
	mov d0,(-52,a3)
	mov (32,a3),d0
	mov d0,d1
	lsr 8,d1
	mov (36,a3),d0
	mov d0,a0
	asl 24,a0
	mov a0,(-60,a3)
	mov (-60,a3),d0
	or d1,d0
	mov d0,(-60,a3)
	mov (32,a3),d0
	mov d0,d1
	asl 24,d1
	mov d1,(-64,a3)
	mov (-64,a3),a0
	and 0,a0
	mov a0,(-72,a3)
	mov (-60,a3),d0
	and 65280,d0
	mov d0,(-68,a3)
	mov (-56,a3),d1
	mov (-72,a3),a0
	or a0,d1
	mov d1,(-80,a3)
	mov (-52,a3),d0
	mov (-68,a3),d1
	or d1,d0
	mov d0,(-76,a3)
	mov (32,a3),d0
	mov d0,a0
	asl 8,a0
	mov a0,(-84,a3)
	mov 0,d0
	mov d0,(-88,a3)
	mov (-88,a3),d1
	and 0,d1
	mov d1,(-96,a3)
	mov (-84,a3),a0
	and 16711680,a0
	mov a0,(-92,a3)
	mov (-80,a3),d0
	mov (-96,a3),d1
	or d1,d0
	mov d0,(-104,a3)
	mov (-76,a3),a0
	mov (-92,a3),d0
	or d0,a0
	mov a0,(-100,a3)
	mov (32,a3),d0
	mov d0,d1
	asl 24,d1
	mov d1,(-108,a3)
	mov 0,a0
	mov a0,(-112,a3)
	mov (-104,a3),d0
	mov (-112,a3),d1
	or d1,d0
	mov d0,(-120,a3)
	mov (-100,a3),a0
	mov (-108,a3),d0
	or d0,a0
	mov a0,(-116,a3)
	mov (-120,a3),a0
	mov (-116,a3),a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	__bswapdi2, .-__bswapdi2
	.global __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	movm [a3],(sp)
	mov sp,a3
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,d1
	lsr 24,d1
	mov (8,a3),d0
	lsr 8,d0
	and 65280,d0
	or d0,d1
	mov (8,a3),d0
	asl 8,d0
	and 16711680,d0
	or d0,d1
	mov (8,a3),d0
	asl 24,d0
	or d1,d0
	mov a3,sp
	ret [a3],4
	.size	__bswapsi2, .-__bswapsi2
	.global __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	cmp 65535,d0
	bhi .L801
	mov 16,d0
	jmp .L802
.L801:
	mov 0,d0
.L802:
	mov d0,(-8,a3)
	mov 16,d1
	mov (-8,a3),d0
	sub d0,d1,d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	and 65280,d0
	cmp 0,d0
	bne .L803
	mov 8,d0
	jmp .L804
.L803:
	mov 0,d0
.L804:
	mov d0,(-8,a3)
	mov 8,d1
	mov (-8,a3),d0
	sub d0,d1,d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	and 240,d0
	cmp 0,d0
	bne .L805
	mov 4,d0
	jmp .L806
.L805:
	mov 0,d0
.L806:
	mov d0,(-8,a3)
	mov 4,d1
	mov (-8,a3),d0
	sub d0,d1,d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	and 12,d0
	cmp 0,d0
	bne .L807
	mov 2,d0
	jmp .L808
.L807:
	mov 0,d0
.L808:
	mov d0,(-8,a3)
	mov 2,d1
	mov (-8,a3),d0
	sub d0,d1,d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	and 2,d0
	mov 1,d1
	cmp 0,d0
	beq .L809
	mov 0,d1
.L809:
	extbu d1,d0
	mov d0,a0
	mov 2,d1
	mov (-4,a3),d0
	sub d0,d1,d0
	mul a0,d0,a1,d1
	mov (-12,a3),d0
	add d1,d0
	mov a3,sp
	ret [a3],4
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	movm [a3],(sp)
	mov sp,a3
	add -16,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-8,a3)
	mov (12,a3),d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	mov d0,(-16,a3)
	mov (20,a3),d0
	mov d0,(-12,a3)
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bge .L812
	mov 0,d0
	jmp .L817
.L812:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	ble .L814
	mov 2,d0
	jmp .L817
.L814:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bcc .L815
	mov 0,d0
	jmp .L817
.L815:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bls .L816
	mov 2,d0
	jmp .L817
.L816:
	mov 1,d0
.L817:
	mov a3,sp
	ret [a3],4
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),a0
	mov (12,a3),a1
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__cmpdi2,[],0
	add -1,d0
	mov a3,sp
	ret [a3],4
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	exthu d0
	cmp 0,d0
	bne .L821
	mov 16,d0
	jmp .L822
.L821:
	mov 0,d0
.L822:
	mov d0,(-8,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	extbu d0
	cmp 0,d0
	bne .L823
	mov 8,d0
	jmp .L824
.L823:
	mov 0,d0
.L824:
	mov d0,(-8,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	and 15,d0
	cmp 0,d0
	bne .L825
	mov 4,d0
	jmp .L826
.L825:
	mov 0,d0
.L826:
	mov d0,(-8,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	and 3,d0
	cmp 0,d0
	bne .L827
	mov 2,d0
	jmp .L828
.L827:
	mov 0,d0
.L828:
	mov d0,(-8,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	lsr d0,d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	and 3,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-4,a3),d0
	not d0
	mov d0,d1
	and 1,d1
	mov (-4,a3),d0
	lsr 1,d0
	mov 2,a0
	sub d0,a0,d0
	not d1
	inc d1
	and d0,d1
	mov (-12,a3),d0
	add d1,d0
	mov a3,sp
	ret [a3],4
	.size	__ctzsi2, .-__ctzsi2
	.global __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 32,d0
	mov d0,(-4,a3)
	mov (8,a3),d0
	mov (12,a3),d1
	mov d0,(-12,a3)
	mov d1,(-8,a3)
	mov (16,a3),d1
	mov (-4,a3),d0
	and d1,d0
	cmp 0,d0
	beq .L831
	mov 0,d0
	mov d0,(-16,a3)
	mov (-8,a3),d1
	mov (16,a3),a0
	mov (-4,a3),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	mov d0,(-20,a3)
	jmp .L832
.L831:
	mov (16,a3),d0
	cmp 0,d0
	bne .L833
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L835
.L833:
	mov (-8,a3),d1
	mov (16,a3),d0
	lsr d0,d1,d0
	mov d0,(-16,a3)
	mov (-8,a3),d1
	mov (-4,a3),a0
	mov (16,a3),d0
	sub d0,a0,d0
	asl d0,d1
	mov (-12,a3),a0
	mov (16,a3),d0
	lsr d0,a0,d0
	or d1,d0
	mov d0,(-20,a3)
.L832:
	mov (-20,a3),a0
	mov (-16,a3),a1
	mov a0,d0
	mov a1,d1
.L835:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov 16,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	mov -1,d1
	lsr d0,d1,d0
	mov d0,(-8,a3)
	mov (8,a3),d1
	mov (-8,a3),d0
	and d0,d1
	mov (12,a3),a0
	mov (-8,a3),d0
	and a0,d0
	mul d1,d0
	mov d0,(-20,a3)
	mov (-20,a3),d1
	mov (-4,a3),d0
	lsr d0,d1,d0
	mov d0,(-12,a3)
	mov (-20,a3),d1
	mov (-8,a3),d0
	and d1,d0
	mov d0,(-20,a3)
	mov (-4,a3),d0
	mov (8,a3),d1
	lsr d0,d1
	mov (12,a3),a0
	mov (-8,a3),d0
	and a0,d0
	mul d1,d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-20,a3),d1
	mov (-12,a3),a0
	mov (-8,a3),d0
	and d0,a0
	mov (-4,a3),d0
	asl d0,a0,d0
	add d1,d0
	mov d0,(-20,a3)
	mov (-4,a3),d0
	mov (-12,a3),d1
	lsr d0,d1,d0
	mov d0,(-16,a3)
	mov (-20,a3),d1
	mov (-4,a3),d0
	lsr d0,d1,d0
	mov d0,(-12,a3)
	mov (-20,a3),d1
	mov (-8,a3),d0
	and d1,d0
	mov d0,(-20,a3)
	mov (-4,a3),d0
	mov (12,a3),d1
	lsr d0,d1
	mov (8,a3),a0
	mov (-8,a3),d0
	and a0,d0
	mul d1,d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-20,a3),d1
	mov (-12,a3),a0
	mov (-8,a3),d0
	and d0,a0
	mov (-4,a3),d0
	asl d0,a0,d0
	add d1,d0
	mov d0,(-20,a3)
	mov (-16,a3),d0
	mov d0,a0
	mov (-4,a3),d0
	mov (-12,a3),d1
	lsr d0,d1,d0
	add a0,d0
	mov d0,(-16,a3)
	mov (-16,a3),d0
	mov d0,a1
	mov (-4,a3),d0
	mov (8,a3),d1
	lsr d0,d1
	mov (-4,a3),d0
	mov (12,a3),a0
	lsr d0,a0,d0
	mul d1,d0
	add a1,d0
	mov d0,(-16,a3)
	mov (-20,a3),d0
	mov (-16,a3),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	__muldsi3, .-__muldsi3
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movm [a3],(sp)
	mov sp,a3
	add -36,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-8,a3)
	mov (12,a3),d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	mov d0,(-16,a3)
	mov (20,a3),d0
	mov d0,(-12,a3)
	mov (-8,a3),d0
	mov (-16,a3),d1
	call +__muldsi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(-24,a3)
	mov a1,(-20,a3)
	mov (-20,a3),d0
	mov d0,a0
	mov (-4,a3),d0
	mov d0,d1
	mov (-16,a3),d0
	mul d0,d1
	mov (-8,a3),d0
	mov (-12,a3),a1
	mul a1,d0
	add d1,d0
	add a0,d0
	mov d0,(-20,a3)
	mov (-24,a3),d0
	mov (-20,a3),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	mov d0,(20,a3)
	mov d1,(24,a3)
	mov (20,a3),d0
	mov (24,a3),d1
	mov 0,a0
	mov 0,a1
	sub d0,a0,d2
	subc d1,a1,d3
	mov d2,d0
	mov d3,d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	__negdi2, .-__negdi2
	.global __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-12,a3)
	mov (12,a3),d0
	mov d0,(-8,a3)
	mov (-8,a3),d0
	mov d0,d1
	mov (-12,a3),d0
	xor d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 16,d0
	mov (-4,a3),d1
	xor d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 8,d0
	mov (-4,a3),d1
	xor d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 4,d0
	mov (-4,a3),d1
	xor d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	mov a3,sp
	ret [a3],4
	.size	__paritydi2, .-__paritydi2
	.global __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 16,d0
	mov (-4,a3),d1
	xor d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 8,d0
	mov (-4,a3),d1
	xor d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 4,d0
	mov (-4,a3),d1
	xor d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	mov a3,sp
	ret [a3],4
	.size	__paritysi2, .-__paritysi2
	.global __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -44,sp
	mov d0,(32,a3)
	mov d1,(36,a3)
	mov (32,a3),d0
	mov d0,(-8,a3)
	mov (36,a3),d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	mov d0,d1
	asl 31,d1
	mov (-8,a3),d0
	mov d0,d2
	lsr 1,d2
	or d1,d2
	mov (-4,a3),d0
	mov d0,d3
	lsr 1,d3
	mov d2,d0
	and 1431655765,d0
	mov d0,(-20,a3)
	mov d3,d1
	and 1431655765,d1
	mov d1,(-16,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	mov (-20,a3),d2
	mov (-16,a3),a0
	sub d2,d0,r2
	subc a0,d1,r3
	mov r2,(-8,a3)
	mov r3,(-4,a3)
	mov (-4,a3),d0
	asl 30,d0
	mov (-8,a3),d1
	mov d1,r0
	lsr 2,r0
	or d0,r0
	mov (-4,a3),d0
	mov d0,r1
	lsr 2,r1
	mov r0,d0
	and 858993459,d0
	mov d0,(-28,a3)
	mov r1,d1
	and 858993459,d1
	mov d1,(-24,a3)
	mov (-8,a3),d0
	mov d0,d2
	and 858993459,d2
	mov d2,(-36,a3)
	mov (-4,a3),d0
	mov d0,a0
	and 858993459,a0
	mov a0,(-32,a3)
	mov (-28,a3),r6
	mov (-24,a3),r7
	mov (-36,a3),a1
	mov (-32,a3),d0
	add a1,r6
	addc d0,r7
	mov r6,(-8,a3)
	mov r7,(-4,a3)
	mov (-4,a3),d0
	asl 28,d0
	mov (-8,a3),d1
	mov d1,a0
	lsr 4,a0
	or d0,a0
	mov (-4,a3),d0
	mov d0,a1
	lsr 4,a1
	mov (-8,a3),d0
	mov (-4,a3),d1
	add d0,a0,r4
	addc d1,a1,r5
	mov r4,d0
	and 252645135,d0
	mov d0,(-8,a3)
	mov r5,d0
	and 252645135,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	mov d1,a0
	lsr 0,a0
	mov a0,(-44,a3)
	mov 0,a1
	mov a1,(-40,a3)
	mov (-44,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-12,a3),d0
	lsr 16,d0
	mov (-12,a3),d1
	add d1,d0
	mov d0,(-12,a3)
	mov (-12,a3),d0
	mov d0,d1
	lsr 8,d1
	mov (-12,a3),d0
	add d1,d0
	and 127,d0
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	__popcountdi2, .-__popcountdi2
	.global __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	movm [a3],(sp)
	mov sp,a3
	add -4,sp
	mov d0,(8,a3)
	mov (8,a3),d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 1,d0
	and 1431655765,d0
	mov (-4,a3),d1
	sub d0,d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 2,d0
	mov d0,d1
	and 858993459,d1
	mov (-4,a3),d0
	and 858993459,d0
	add d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	mov d0,d1
	lsr 4,d1
	mov (-4,a3),d0
	add d1,d0
	and 252645135,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	lsr 16,d0
	mov (-4,a3),d1
	add d1,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	mov d0,d1
	lsr 8,d1
	mov (-4,a3),d0
	add d1,d0
	and 63,d0
	mov a3,sp
	ret [a3],4
	.size	__popcountsi2, .-__popcountsi2
	.global __powidf2
	.type	__powidf2, @function
__powidf2:
	movm [a3],(sp)
	mov sp,a3
	add -32,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (16,a3),d0
	lsr 31,d0
	extbu d0
	mov d0,(-12,a3)
	mov 0,d0
	mov d0,(-8,a3)
	mov 1072693248,d0
	mov d0,(-4,a3)
.L854:
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L851
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (-8,a3),d0
	mov (-4,a3),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(-8,a3)
	mov a1,(-4,a3)
.L851:
	mov (16,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(16,a3)
	mov (16,a3),d0
	cmp 0,d0
	beq .L859
	mov (8,a3),d0
	mov d0,(12,sp)
	mov (12,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(8,a3)
	mov a1,(12,a3)
	jmp .L854
.L859:
	nop
	mov (-12,a3),d0
	cmp 0,d0
	beq .L855
	mov (-8,a3),d0
	mov d0,(12,sp)
	mov (-4,a3),d0
	mov d0,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	jmp .L857
.L855:
	mov (-8,a3),d0
	mov (-4,a3),d1
.L857:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov a3,sp
	ret [a3],4
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [a3],(sp)
	mov sp,a3
	add -8,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d0
	lsr 31,d0
	extbu d0
	mov d0,(-8,a3)
	mov 0x3f800000,d0
	mov d0,(-4,a3)
.L864:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L861
	fmov (-4,a3),fs26
	fmov (8,a3),fs24
	fmul fs26, fs24
	fmov fs24,(-4,a3)
.L861:
	mov (12,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(12,a3)
	mov (12,a3),d0
	cmp 0,d0
	beq .L869
	fmov (8,a3),fs24
	fmul fs24, fs24
	fmov fs24,(8,a3)
	jmp .L864
.L869:
	nop
	mov (-8,a3),d0
	cmp 0,d0
	beq .L865
	fmov 0x3f800000,fs24
	fmov (-4,a3),fs26
	fdiv fs26, fs24
	jmp .L867
.L865:
	fmov (-4,a3),fs24
.L867:
	fmov fs24,d0
	mov a3,sp
	ret [a3],4
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	movm [a3],(sp)
	mov sp,a3
	add -16,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),d0
	mov d0,(-8,a3)
	mov (12,a3),d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	mov d0,(-16,a3)
	mov (20,a3),d0
	mov d0,(-12,a3)
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bcc .L871
	mov 0,d0
	jmp .L876
.L871:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bls .L873
	mov 2,d0
	jmp .L876
.L873:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bcc .L874
	mov 0,d0
	jmp .L876
.L874:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bls .L875
	mov 2,d0
	jmp .L876
.L875:
	mov 1,d0
.L876:
	mov a3,sp
	ret [a3],4
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (8,a3),a0
	mov (12,a3),a1
	mov (16,a3),d0
	mov (20,a3),d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__ucmpdi2,[],0
	add -1,d0
	mov a3,sp
	ret [a3],4
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.global __fixsfsi
	.global __floatundisf
	.global __floatundidf
	.global __floatunsisf
	.global __floatunsidf
	.global __divdf3
	.global __gedf2
	.global __muldf3
	.global __nedf2
	.global __adddf3
	.global __floatsidf
	.global __moddi3
	.global __divdi3
	.global __ltdf2
	.global __unordsf2
	.global __subdf3
	.global __gtdf2
	.global __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
