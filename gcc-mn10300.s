	.file	"mini-libc.c"
	.am33
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
	mov (8,a3),d0
	jmp .L149
.L158:
	mov (12,a3),d1
	mov (12,a3),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L159
	mov (12,a3),d0
	jmp .L149
.L159:
	mov (12,a3),d1
	mov (8,a3),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L160
	mov (12,a3),d1
	mov (8,a3),d0
	call +__subsf3,[],0
	mov d0,d1
	mov d1,d0
	jmp .L149
.L160:
	mov 0,d0
.L149:
	mov d0,d1
	mov d1,d0
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
	mov (12,a3),d1
	mov (8,a3),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L196
	mov (12,a3),d0
	jmp .L182
.L196:
	mov (8,a3),d0
.L182:
	mov d0,d1
	mov d1,d0
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
	mov (12,a3),d1
	mov (8,a3),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L250
	mov (8,a3),d0
	jmp .L236
.L250:
	mov (12,a3),d0
.L236:
	mov d0,d1
	mov d1,d0
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
	mov (+seed+4),d1
	mov d1,r0
	lsr 1,r0
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
	beq .L279
	mov (-4,a3),d0
	mov (4,d0),d0
	mov (-4,a3),d1
	mov (d1),d1
	mov d1,(d0)
.L279:
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
.L332:
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
	ble .L330
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
.L330:
	mov (-4,a3),d0
	jmp .L331
.L327:
	mov (16,a3),d0
	cmp 0,d0
	bne .L332
	mov 0,d0
.L331:
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
	jmp .L334
.L338:
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
	bne .L335
	mov (-12,a3),d0
	jmp .L336
.L335:
	mov (-16,a3),d0
	cmp 0,d0
	ble .L337
	mov (-12,a3),d1
	mov (20,a3),d0
	add d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	add -1,d0
	mov d0,(-8,a3)
.L337:
	mov (-8,a3),d0
	asr 1,d0
	mov d0,(-8,a3)
.L334:
	mov (-8,a3),d0
	cmp 0,d0
	bne .L338
	mov 0,d0
.L336:
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
	bge .L342
	mov 0,a0
	mov 0,a1
	sub d0,a0,d0
	subc d1,a1,d1
.L342:
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
	bge .L348
	not d0
	inc d0
.L348:
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
	bge .L353
	mov 0,a0
	mov 0,a1
	sub d0,a0,d0
	subc d1,a1,d1
.L353:
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
	jmp .L359
.L361:
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
.L359:
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L360
	mov (8,a3),d0
	mov (d0),d0
	mov (12,a3),d1
	cmp d0,d1
	bne .L361
.L360:
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L362
	mov (8,a3),d0
	jmp .L364
.L362:
	mov 0,d0
.L364:
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
	jmp .L366
.L368:
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add 4,d0
	mov d0,(12,a3)
.L366:
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	bne .L367
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L367
	mov (12,a3),d0
	mov (d0),d0
	cmp 0,d0
	bne .L368
.L367:
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	blt .L369
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L370
	mov 0,a0
.L370:
	extbu a0,d0
	jmp .L372
.L369:
	mov -1,d0
.L372:
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
.L374:
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
	bne .L374
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
	jmp .L377
.L378:
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
.L377:
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	bne .L378
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
	jmp .L381
.L383:
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add 4,d0
	mov d0,(12,a3)
.L381:
	mov (16,a3),d0
	cmp 0,d0
	beq .L382
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	bne .L382
	mov (8,a3),d0
	mov (d0),d0
	cmp 0,d0
	beq .L382
	mov (12,a3),d0
	mov (d0),d0
	cmp 0,d0
	bne .L383
.L382:
	mov (16,a3),d0
	cmp 0,d0
	beq .L384
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	blt .L385
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L386
	mov 0,a0
.L386:
	extbu a0,d0
	jmp .L389
.L385:
	mov -1,d0
	jmp .L389
.L384:
	mov 0,d0
.L389:
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
	jmp .L391
.L393:
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
.L391:
	mov (16,a3),d0
	cmp 0,d0
	beq .L392
	mov (8,a3),d0
	mov (d0),d0
	mov (12,a3),d1
	cmp d0,d1
	bne .L393
.L392:
	mov (16,a3),d0
	cmp 0,d0
	beq .L394
	mov (8,a3),d0
	jmp .L396
.L394:
	mov 0,d0
.L396:
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
	jmp .L398
.L400:
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
	mov (8,a3),d0
	add 4,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add 4,d0
	mov d0,(12,a3)
.L398:
	mov (16,a3),d0
	cmp 0,d0
	beq .L399
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	beq .L400
.L399:
	mov (16,a3),d0
	cmp 0,d0
	beq .L401
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	cmp d0,d1
	blt .L402
	mov (8,a3),d0
	mov (d0),d1
	mov (12,a3),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L403
	mov 0,a0
.L403:
	extbu a0,d0
	jmp .L406
.L402:
	mov -1,d0
	jmp .L406
.L401:
	mov 0,d0
.L406:
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
	jmp .L408
.L409:
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
.L408:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L409
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
	bne .L412
	mov (8,a3),d0
	jmp .L413
.L412:
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1
	mov (16,a3),d0
	asl2 d0
	cmp d0,d1
	bcc .L418
	jmp .L415
.L416:
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
.L415:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L416
	jmp .L417
.L419:
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
.L418:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L419
.L417:
	mov (-4,a3),d0
.L413:
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
	jmp .L421
.L422:
	mov (8,a3),d0
	mov 4,d1
	add d0,d1
	mov d1,(8,a3)
	mov (12,a3),d1
	mov d1,(d0)
.L421:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L422
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
	bcc .L425
	mov (-4,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov d0,(-4,a3)
	mov (-8,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov d0,(-8,a3)
	jmp .L426
.L427:
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
.L426:
	mov (16,a3),d0
	cmp 0,d0
	bne .L427
	jmp .L424
.L425:
	mov (-4,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	beq .L424
	jmp .L429
.L430:
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
.L429:
	mov (16,a3),d0
	cmp 0,d0
	bne .L430
.L424:
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
	beq .L433
	mov (28,a3),a2
	asl a2,d0,d3
	mov 0,d2
	jmp .L434
.L433:
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
.L434:
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	and 32,a2
	cmp 0,a2
	beq .L435
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	lsr a2,d1,a0
	mov 0,a1
	jmp .L436
.L435:
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
.L436:
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
	beq .L439
	mov (28,a3),a2
	lsr a2,d1,d2
	mov 0,d3
	jmp .L440
.L439:
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
.L440:
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	and 32,a2
	cmp 0,a2
	beq .L441
	mov (28,a3),a2
	not a2
	inc a2
	and 63,a2
	asl a2,d0,a1
	mov 0,a0
	jmp .L442
.L441:
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
.L442:
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
	jmp .L467
.L470:
	mov (8,a3),d1
	mov (-4,a3),d0
	lsr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L468
	mov (-4,a3),d0
	inc d0
	jmp .L469
.L468:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L467:
	mov (-4,a3),d0
	cmp 31,d0
	bls .L470
	mov 0,d0
.L469:
	mov a3,sp
	ret [a3],4
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	movm [d2,a3],(sp)
	mov sp,a3
	cmp 0,d0
	bne .L472
	mov 0,d0
	jmp .L473
.L472:
	mov 1,d2
	jmp .L474
.L475:
	asr 1,d0
	inc d2
.L474:
	mov d0,d1
	and 1,d1
	cmp 0,d1
	beq .L475
	mov d2,d0
.L473:
	mov a3,sp
	ret [d2,a3],8
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov -8388609,d1
	mov (8,a3),d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L477
	mov 2139095039,d1
	mov (8,a3),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L482
.L477:
	mov 1,d0
	jmp .L481
.L482:
	mov 0,d0
.L481:
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
	blt .L484
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L489
.L484:
	mov 1,d0
	jmp .L488
.L489:
	mov 0,d0
.L488:
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
	blt .L491
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L496
.L491:
	mov 1,d0
	jmp .L495
.L496:
	mov 0,d0
.L495:
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
	bne .L499
	mov (8,a3),d0
	mov d0,d1
	call +__addsf3,[],0
	mov d0,d1
	mov d1,d0
	mov d0,d1
	mov (8,a3),d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L499
	mov (12,a3),d0
	cmp 0,d0
	bge .L501
	mov 1056964608,d0
	jmp .L502
.L501:
	mov 1073741824,d0
.L502:
	mov d0,(-4,a3)
.L505:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L503
	mov (-4,a3),d1
	mov (8,a3),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(8,a3)
.L503:
	mov (12,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(12,a3)
	mov (12,a3),d0
	cmp 0,d0
	beq .L499
	mov (-4,a3),d1
	mov (-4,a3),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(-4,a3)
	jmp .L505
.L499:
	mov (8,a3),d0
	mov d0,d1
	mov d1,d0
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
	bne .L510
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
	beq .L510
	mov (16,a3),d0
	cmp 0,d0
	bge .L512
	mov 0,d0
	mov 1071644672,d1
	jmp .L513
.L512:
	mov 0,d0
	mov 1073741824,d1
.L513:
	mov d0,(-8,a3)
	mov d1,(-4,a3)
.L516:
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L514
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
.L514:
	mov (16,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(16,a3)
	mov (16,a3),d0
	cmp 0,d0
	beq .L510
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
	jmp .L516
.L510:
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
	bne .L521
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
	beq .L521
	mov (16,a3),d0
	cmp 0,d0
	bge .L523
	mov 0,d0
	mov 1071644672,d1
	jmp .L524
.L523:
	mov 0,d0
	mov 1073741824,d1
.L524:
	mov d0,(-8,a3)
	mov d1,(-4,a3)
.L527:
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L525
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
.L525:
	mov (16,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(16,a3)
	mov (16,a3),d0
	cmp 0,d0
	beq .L521
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
	jmp .L527
.L521:
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
	jmp .L532
.L533:
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
.L532:
	mov (16,a3),d0
	cmp 0,d0
	bne .L533
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
	jmp .L536
.L538:
	mov (12,a3),d0
	inc d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
	mov (16,a3),d0
	add -1,d0
	mov d0,(16,a3)
.L536:
	mov (16,a3),d0
	cmp 0,d0
	beq .L537
	mov (12,a3),d0
	movbu (d0),d1
	mov (-4,a3),d0
	movbu d1,(d0)
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L538
.L537:
	mov (16,a3),d0
	cmp 0,d0
	bne .L539
	mov (-4,a3),d0
	mov 0,d1
	movbu d1,(d0)
.L539:
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
	jmp .L542
.L547:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L542:
	mov (-4,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcc .L543
	mov (8,a3),d1
	mov (-4,a3),d0
	add d1,d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L547
.L543:
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
	jmp .L549
.L553:
	mov (12,a3),d0
	mov d0,(-4,a3)
	jmp .L550
.L552:
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
	bne .L550
	mov (8,a3),d0
	jmp .L551
.L550:
	mov (-4,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L552
	mov (8,a3),d0
	inc d0
	mov d0,(8,a3)
.L549:
	mov (8,a3),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L553
	mov 0,d0
.L551:
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
.L556:
	movbu (d0),d1
	extbu d1
	mov (12,a3),a0
	cmp d1,a0
	bne .L555
	mov d0,(-4,a3)
.L555:
	mov d0,d1
	mov 1,d0
	add d1,d0
	movbu (d1),d1
	extbu d1
	cmp 0,d1
	bne .L556
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
	bne .L561
	mov (8,a3),d0
	jmp .L560
.L563:
	mov (12,a3),d1
	mov (-4,a3),a0
	mov (-8,a3),d0
	mov d0,(12,sp)
	mov a0,d0
	call +strncmp,[],0
	cmp 0,d0
	bne .L562
	mov (-4,a3),d0
	jmp .L560
.L562:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L561:
	mov (12,a3),d0
	movbu (d0),d0
	extbu d0,d1
	mov (-4,a3),d0
	call +strchr,[],0
	mov a0,(-4,a3)
	mov (-4,a3),d0
	cmp 0,d0
	bne .L563
	mov 0,d0
.L560:
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
	bge .L565
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,a3),d0
	mov (28,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L567
.L565:
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (16,a3),d0
	mov (20,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L568
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,a3),d0
	mov (28,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L568
.L567:
	mov (16,a3),d2
	mov (20,a3),d0
	mov d0,d3
	xor -2147483648,d3
	jmp .L571
.L568:
	mov (16,a3),d2
	mov (20,a3),d3
.L571:
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
	bne .L575
	mov (8,a3),d0
	jmp .L576
.L575:
	mov 1,a0
	mov (12,a3),d1
	mov (20,a3),d0
	cmp d0,d1
	bcs .L577
	mov 0,a0
.L577:
	extbu a0,d0
	cmp 0,d0
	beq .L578
	mov 0,d0
	jmp .L576
.L578:
	mov (8,a3),d0
	mov d0,(-4,a3)
	jmp .L579
.L581:
	mov (-4,a3),d0
	movbu (d0),d1
	mov (16,a3),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L580
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
	bne .L580
	mov (-4,a3),d0
	jmp .L576
.L580:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L579:
	mov (-4,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bls .L581
	mov 0,d0
.L576:
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
	bge .L585
	mov (32,a3),r4
	mov (36,a3),d0
	mov d0,r5
	xor -2147483648,r5
	mov r4,(32,a3)
	mov r5,(36,a3)
	mov 1,d0
	mov d0,(-4,a3)
.L585:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L602
	jmp .L589
.L590:
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
.L589:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L590
	jmp .L591
.L602:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L591
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L591
	jmp .L594
.L595:
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
.L594:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,a3),d0
	mov (36,a3),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L595
.L591:
	mov (40,a3),d0
	mov (-8,a3),d1
	mov d1,(d0)
	mov (-4,a3),d0
	cmp 0,d0
	beq .L596
	mov (32,a3),d2
	mov (36,a3),d0
	mov d0,d3
	xor -2147483648,d3
	mov d2,(32,a3)
	mov d3,(36,a3)
.L596:
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
	jmp .L604
.L607:
	mov (-16,a3),d0
	mov d0,r4
	and 1,r4
	mov (-12,a3),d0
	mov d0,r5
	and 0,r5
	mov r4,d0
	or r5,d0
	cmp 0,d0
	beq .L605
	mov (-8,a3),r2
	mov (-4,a3),r3
	mov (44,a3),d0
	mov (48,a3),d1
	add d0,r2,r0
	addc d1,r3,r1
	mov r0,(-8,a3)
	mov r1,(-4,a3)
.L605:
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
.L604:
	mov (-16,a3),d0
	mov (-12,a3),d1
	or d1,d0
	cmp 0,d0
	bne .L607
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
	jmp .L610
.L612:
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	add d0,d0
	mov d0,(-4,a3)
.L610:
	mov (12,a3),d1
	mov (8,a3),d0
	cmp d0,d1
	bcc .L613
	mov (-4,a3),d0
	cmp 0,d0
	beq .L613
	mov (12,a3),d0
	cmp 0,d0
	bge .L612
	jmp .L613
.L615:
	mov (8,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcs .L614
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1,d0
	mov d0,(8,a3)
	mov (-8,a3),d1
	mov (-4,a3),d0
	or d1,d0
	mov d0,(-8,a3)
.L614:
	mov (-4,a3),d0
	lsr 1,d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L613:
	mov (-4,a3),d0
	cmp 0,d0
	bne .L615
	mov (16,a3),d0
	cmp 0,d0
	beq .L616
	mov (8,a3),d0
	jmp .L617
.L616:
	mov (-8,a3),d0
.L617:
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
	bne .L619
	mov 7,d0
	jmp .L620
.L619:
	movbu (8,a3),d0
	mov d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	mov d0,(-4,a3)
	mov (-4,a3),d0
	add -1,d0
.L620:
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
	bge .L622
	mov (8,a3),d0
	mov d0,a0
	not a0
	mov (12,a3),d0
	mov d0,a1
	not a1
	mov a0,(8,a3)
	mov a1,(12,a3)
.L622:
	mov (8,a3),d0
	mov (12,a3),d1
	or d1,d0
	cmp 0,d0
	bne .L624
	mov 63,d0
	jmp .L625
.L624:
	mov (8,a3),d0
	mov (12,a3),d1
	cmp 0,d1
	beq .L626
	mov 0,a0
	bsch d1, a0
	xor 31,a0
	jmp .L627
.L626:
	mov 0,a0
	bsch d0, a0
	xor 31,a0
	add 32,a0
.L627:
	mov a0,(-4,a3)
	mov (-4,a3),d0
	add -1,d0
.L625:
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
	jmp .L629
.L631:
	mov (8,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L630
	mov (-4,a3),d1
	mov (12,a3),d0
	add d1,d0
	mov d0,(-4,a3)
.L630:
	mov (8,a3),d0
	lsr 1,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
.L629:
	mov (8,a3),d0
	cmp 0,d0
	bne .L631
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
	bcs .L634
	mov (-20,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov (-16,a3),d1
	cmp d0,d1
	bls .L641
.L634:
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L636
.L637:
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
.L636:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bcs .L637
	jmp .L638
.L639:
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
.L638:
	mov (16,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bhi .L639
	jmp .L640
.L642:
	mov (-20,a3),d1
	mov (16,a3),d0
	add d0,d1
	mov (-16,a3),a0
	mov (16,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L641:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L642
.L640:
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
	bcs .L644
	mov (-16,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov (-12,a3),d1
	cmp d0,d1
	bls .L650
.L644:
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L646
.L647:
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
.L646:
	mov (-4,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bcs .L647
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L649
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
	jmp .L649
.L651:
	mov (-16,a3),d1
	mov (16,a3),d0
	add d0,d1
	mov (-12,a3),a0
	mov (16,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L650:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L651
.L649:
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
	bcs .L653
	mov (-20,a3),d1
	mov (16,a3),d0
	add d1,d0
	mov (-16,a3),d1
	cmp d0,d1
	bls .L660
.L653:
	mov 0,d0
	mov d0,(-4,a3)
	jmp .L655
.L656:
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
.L655:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bcs .L656
	jmp .L657
.L658:
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
.L657:
	mov (16,a3),d1
	mov (-8,a3),d0
	cmp d0,d1
	bhi .L658
	jmp .L659
.L661:
	mov (-20,a3),d1
	mov (16,a3),d0
	add d0,d1
	mov (-16,a3),a0
	mov (16,a3),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L660:
	mov (16,a3),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,a3)
	cmp 0,d0
	bne .L661
.L659:
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
	mov d0,d1
	mov d1,d0
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
	mov d0,d1
	mov d1,d0
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
	jmp .L675
.L678:
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
.L675:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L678
.L677:
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
	jmp .L682
.L685:
	movhu (8,a3),d1
	mov (-4,a3),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	bne .L684
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L682:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L685
.L684:
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
	mov 1191182336,d1
	mov (8,a3),d0
	call +__gesf2,[],0
	cmp 0,d0
	blt .L693
	mov 1191182336,d1
	mov (8,a3),d0
	call +__subsf3,[],0
	mov d0,d1
	mov d1,d0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L691
.L693:
	mov (8,a3),d0
	call +__fixsfsi,[],0
.L691:
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
	jmp .L695
.L697:
	movhu (8,a3),d1
	mov (-4,a3),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L696
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
.L696:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L695:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L697
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
	jmp .L700
.L702:
	movhu (8,a3),d1
	mov (-4,a3),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L701
	mov (-8,a3),d0
	inc d0
	mov d0,(-8,a3)
.L701:
	mov (-4,a3),d0
	inc d0
	mov d0,(-4,a3)
.L700:
	mov (-4,a3),d0
	cmp 15,d0
	ble .L702
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
	jmp .L705
.L707:
	mov (8,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L706
	mov (-4,a3),d1
	mov (12,a3),d0
	add d1,d0
	mov d0,(-4,a3)
.L706:
	mov (8,a3),d0
	lsr 1,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
.L705:
	mov (8,a3),d0
	cmp 0,d0
	bne .L707
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
	bne .L712
	mov 0,d0
	jmp .L711
.L714:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L713
	mov (-4,a3),d1
	mov (8,a3),d0
	add d1,d0
	mov d0,(-4,a3)
.L713:
	mov (8,a3),d0
	add d0,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L712:
	mov (12,a3),d0
	cmp 0,d0
	bne .L714
	mov (-4,a3),d0
.L711:
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
	jmp .L716
.L718:
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	add d0,d0
	mov d0,(-4,a3)
.L716:
	mov (12,a3),d1
	mov (8,a3),d0
	cmp d0,d1
	bcc .L719
	mov (-4,a3),d0
	cmp 0,d0
	beq .L719
	mov (12,a3),d0
	cmp 0,d0
	bge .L718
	jmp .L719
.L721:
	mov (8,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcs .L720
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1,d0
	mov d0,(8,a3)
	mov (-8,a3),d1
	mov (-4,a3),d0
	or d1,d0
	mov d0,(-8,a3)
.L720:
	mov (-4,a3),d0
	lsr 1,d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L719:
	mov (-4,a3),d0
	cmp 0,d0
	bne .L721
	mov (16,a3),d0
	cmp 0,d0
	beq .L722
	mov (8,a3),d0
	jmp .L723
.L722:
	mov (-8,a3),d0
.L723:
	mov a3,sp
	ret [a3],4
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d1
	mov (8,a3),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L732
	mov -1,d0
	jmp .L727
.L732:
	mov (12,a3),d1
	mov (8,a3),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L733
	mov 1,d0
	jmp .L727
.L733:
	mov 0,d0
.L727:
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
	bge .L742
	mov -1,d0
	jmp .L737
.L742:
	mov (16,a3),d0
	mov d0,(12,sp)
	mov (20,a3),d0
	mov d0,(16,sp)
	mov (8,a3),d0
	mov (12,a3),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L743
	mov 1,d0
	jmp .L737
.L743:
	mov 0,d0
.L737:
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
	bge .L749
	mov (12,a3),d0
	not d0
	inc d0
	mov d0,(12,a3)
	mov 1,d0
	mov d0,(-8,a3)
.L749:
	mov 0,d0
	movbu d0,(-1,a3)
	jmp .L750
.L753:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L751
	mov (-12,a3),d1
	mov (8,a3),d0
	add d1,d0
	mov d0,(-12,a3)
.L751:
	mov (8,a3),d0
	add d0,d0
	mov d0,(8,a3)
	mov (12,a3),d0
	asr 1,d0
	mov d0,(12,a3)
	movbu (-1,a3),d0
	inc d0
	movbu d0,(-1,a3)
.L750:
	mov (12,a3),d0
	cmp 0,d0
	beq .L752
	movbu (-1,a3),d0
	cmp 31,d0
	bls .L753
.L752:
	mov (-8,a3),d0
	cmp 0,d0
	beq .L754
	mov (-12,a3),d0
	not d0
	inc d0
	jmp .L756
.L754:
	mov (-12,a3),d0
.L756:
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
	bge .L758
	mov (8,a3),d0
	not d0
	inc d0
	mov d0,(8,a3)
	mov 1,d1
	mov (-4,a3),d0
	cmp 0,d0
	beq .L759
	mov 0,d1
.L759:
	extbu d1,d0
	mov d0,(-4,a3)
.L758:
	mov (12,a3),d0
	cmp 0,d0
	bge .L760
	mov (12,a3),d0
	not d0
	inc d0
	mov d0,(12,a3)
	mov 1,d1
	mov (-4,a3),d0
	cmp 0,d0
	beq .L761
	mov 0,d1
.L761:
	extbu d1,d0
	mov d0,(-4,a3)
.L760:
	mov (8,a3),a0
	mov (12,a3),d1
	mov 0,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	cmp 0,d0
	beq .L762
	mov (-8,a3),d0
	not d0
	inc d0
	mov d0,(-8,a3)
.L762:
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
	bge .L765
	mov (8,a3),d0
	not d0
	inc d0
	mov d0,(8,a3)
	mov 1,d0
	mov d0,(-4,a3)
.L765:
	mov (12,a3),d0
	cmp 0,d0
	bge .L766
	mov (12,a3),d0
	not d0
	inc d0
	mov d0,(12,a3)
.L766:
	mov (8,a3),a0
	mov (12,a3),d1
	mov 1,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(-8,a3)
	mov (-4,a3),d0
	cmp 0,d0
	beq .L767
	mov (-8,a3),d0
	not d0
	inc d0
	mov d0,(-8,a3)
.L767:
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
	jmp .L770
.L772:
	movhu (12,a3),d0
	add d0,d0
	movhu d0,(12,a3)
	movhu (-2,a3),d0
	add d0,d0
	movhu d0,(-2,a3)
.L770:
	movhu (12,a3),d1
	movhu (8,a3),d0
	cmp d0,d1
	bcc .L773
	movhu (-2,a3),d0
	cmp 0,d0
	beq .L773
	movhu (12,a3),d0
	exth d0
	cmp 0,d0
	bge .L772
	jmp .L773
.L775:
	movhu (8,a3),d1
	movhu (12,a3),d0
	cmp d0,d1
	bcs .L774
	movhu (8,a3),d1
	movhu (12,a3),d0
	sub d0,d1,d0
	movhu d0,(8,a3)
	movhu (-4,a3),d1
	movhu (-2,a3),d0
	or d1,d0
	movhu d0,(-4,a3)
.L774:
	movhu (-2,a3),d0
	lsr 1,d0
	movhu d0,(-2,a3)
	movhu (12,a3),d0
	lsr 1,d0
	movhu d0,(12,a3)
.L773:
	movhu (-2,a3),d0
	cmp 0,d0
	bne .L775
	mov (16,a3),d0
	cmp 0,d0
	beq .L776
	movhu (8,a3),d0
	jmp .L777
.L776:
	movhu (-4,a3),d0
.L777:
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
	jmp .L779
.L781:
	mov (12,a3),d0
	add d0,d0
	mov d0,(12,a3)
	mov (-4,a3),d0
	add d0,d0
	mov d0,(-4,a3)
.L779:
	mov (12,a3),d1
	mov (8,a3),d0
	cmp d0,d1
	bcc .L782
	mov (-4,a3),d0
	cmp 0,d0
	beq .L782
	mov (12,a3),d0
	cmp 0,d0
	bge .L781
	jmp .L782
.L784:
	mov (8,a3),d1
	mov (12,a3),d0
	cmp d0,d1
	bcs .L783
	mov (8,a3),d1
	mov (12,a3),d0
	sub d0,d1,d0
	mov d0,(8,a3)
	mov (-8,a3),d1
	mov (-4,a3),d0
	or d1,d0
	mov d0,(-8,a3)
.L783:
	mov (-4,a3),d0
	lsr 1,d0
	mov d0,(-4,a3)
	mov (12,a3),d0
	lsr 1,d0
	mov d0,(12,a3)
.L782:
	mov (-4,a3),d0
	cmp 0,d0
	bne .L784
	mov (16,a3),d0
	cmp 0,d0
	beq .L785
	mov (8,a3),d0
	jmp .L786
.L785:
	mov (-8,a3),d0
.L786:
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
	beq .L788
	mov 0,d0
	mov d0,(-20,a3)
	mov (-12,a3),d1
	mov (16,a3),a0
	mov (-4,a3),d0
	sub d0,a0,d0
	asl d0,d1,d0
	mov d0,(-16,a3)
	jmp .L789
.L788:
	mov (16,a3),d0
	cmp 0,d0
	bne .L790
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L792
.L790:
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
.L789:
	mov (-20,a3),d0
	mov (-16,a3),d1
.L792:
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
	beq .L794
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
	jmp .L795
.L794:
	mov (16,a3),d0
	cmp 0,d0
	bne .L796
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L798
.L796:
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
.L795:
	mov (-20,a3),d0
	mov (-16,a3),d1
.L798:
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
	bhi .L804
	mov 16,d0
	jmp .L805
.L804:
	mov 0,d0
.L805:
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
	bne .L806
	mov 8,d0
	jmp .L807
.L806:
	mov 0,d0
.L807:
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
	bne .L808
	mov 4,d0
	jmp .L809
.L808:
	mov 0,d0
.L809:
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
	bne .L810
	mov 2,d0
	jmp .L811
.L810:
	mov 0,d0
.L811:
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
	beq .L812
	mov 0,d1
.L812:
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
	bge .L815
	mov 0,d0
	jmp .L820
.L815:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	ble .L817
	mov 2,d0
	jmp .L820
.L817:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bcc .L818
	mov 0,d0
	jmp .L820
.L818:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bls .L819
	mov 2,d0
	jmp .L820
.L819:
	mov 1,d0
.L820:
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
	bne .L824
	mov 16,d0
	jmp .L825
.L824:
	mov 0,d0
.L825:
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
	bne .L826
	mov 8,d0
	jmp .L827
.L826:
	mov 0,d0
.L827:
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
	bne .L828
	mov 4,d0
	jmp .L829
.L828:
	mov 0,d0
.L829:
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
	bne .L830
	mov 2,d0
	jmp .L831
.L830:
	mov 0,d0
.L831:
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
	beq .L834
	mov 0,d0
	mov d0,(-16,a3)
	mov (-8,a3),d1
	mov (16,a3),a0
	mov (-4,a3),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	mov d0,(-20,a3)
	jmp .L835
.L834:
	mov (16,a3),d0
	cmp 0,d0
	bne .L836
	mov (8,a3),d0
	mov (12,a3),d1
	jmp .L838
.L836:
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
.L835:
	mov (-20,a3),a0
	mov (-16,a3),a1
	mov a0,d0
	mov a1,d1
.L838:
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
	mov d0,r0
	lsr 1,r0
	or d1,r0
	mov (-4,a3),d0
	mov d0,r1
	lsr 1,r1
	mov r0,d0
	and 1431655765,d0
	mov d0,(-20,a3)
	mov r1,d1
	and 1431655765,d1
	mov d1,(-16,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	mov (-20,a3),d2
	mov (-16,a3),a0
	sub d2,d0,d2
	subc a0,d1,a0
	mov a0,(-40,a3)
	mov d2,(-44,a3)
	mov (-44,a3),d0
	mov d0,(-8,a3)
	mov (-40,a3),d1
	mov d1,(-4,a3)
	mov (-4,a3),d0
	asl 30,d0
	mov (-8,a3),d1
	mov d1,d2
	lsr 2,d2
	or d0,d2
	mov (-4,a3),d0
	mov d0,d3
	lsr 2,d3
	mov d2,a0
	and 858993459,a0
	mov a0,(-28,a3)
	mov d3,a1
	and 858993459,a1
	mov a1,(-24,a3)
	mov (-8,a3),d0
	mov d0,r6
	and 858993459,r6
	mov (-4,a3),d0
	mov d0,r7
	and 858993459,r7
	mov (-28,a3),r4
	mov (-24,a3),r5
	add r6,r4
	addc r7,r5
	mov r4,(-8,a3)
	mov r5,(-4,a3)
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
	add d0,a0,r2
	addc d1,a1,r3
	mov r2,d0
	and 252645135,d0
	mov d0,(-8,a3)
	mov r3,d0
	and 252645135,d0
	mov d0,(-4,a3)
	mov (-8,a3),d0
	mov (-4,a3),d1
	mov d1,a0
	lsr 0,a0
	mov a0,(-36,a3)
	mov 0,a1
	mov a1,(-32,a3)
	mov (-36,a3),d1
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
.L857:
	mov (16,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L854
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
.L854:
	mov (16,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(16,a3)
	mov (16,a3),d0
	cmp 0,d0
	beq .L861
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
	jmp .L857
.L861:
	mov (-12,a3),d0
	cmp 0,d0
	beq .L858
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
	jmp .L860
.L858:
	mov (-8,a3),d0
	mov (-4,a3),d1
.L860:
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
	add -20,sp
	mov d0,(8,a3)
	mov d1,(12,a3)
	mov (12,a3),d0
	lsr 31,d0
	extbu d0
	mov d0,(-8,a3)
	mov 1065353216,d0
	mov d0,(-4,a3)
.L867:
	mov (12,a3),d0
	and 1,d0
	cmp 0,d0
	beq .L864
	mov (8,a3),d1
	mov (-4,a3),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(-4,a3)
.L864:
	mov (12,a3),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(12,a3)
	mov (12,a3),d0
	cmp 0,d0
	beq .L871
	mov (8,a3),d1
	mov (8,a3),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(8,a3)
	jmp .L867
.L871:
	mov (-8,a3),d0
	cmp 0,d0
	beq .L868
	mov (-4,a3),d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,d1
	mov d1,d0
	jmp .L870
.L868:
	mov (-4,a3),d0
.L870:
	mov d0,d1
	mov d1,d0
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
	bcc .L874
	mov 0,d0
	jmp .L879
.L874:
	mov (-4,a3),d1
	mov (-12,a3),d0
	cmp d0,d1
	bls .L876
	mov 2,d0
	jmp .L879
.L876:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bcc .L877
	mov 0,d0
	jmp .L879
.L877:
	mov (-8,a3),d1
	mov (-16,a3),d0
	cmp d0,d1
	bls .L878
	mov 2,d0
	jmp .L879
.L878:
	mov 1,d0
.L879:
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
	.global __divsf3
	.global __fixsfsi
	.global __gesf2
	.global __floatundisf
	.global __floatundidf
	.global __floatunsisf
	.global __floatunsidf
	.global __divdf3
	.global __gedf2
	.global __muldf3
	.global __nedf2
	.global __adddf3
	.global __mulsf3
	.global __nesf2
	.global __addsf3
	.global __floatsidf
	.global __moddi3
	.global __divdi3
	.global __ltsf2
	.global __ltdf2
	.global __subsf3
	.global __gtsf2
	.global __unordsf2
	.global __subdf3
	.global __gtdf2
	.global __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
