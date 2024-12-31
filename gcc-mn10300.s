	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	mov (sp),d1
	mov (4,sp),d0
	cmp d0,d1
	bcc .L2
	mov (sp),d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(sp)
	mov (4,sp),d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(4,sp)
	jmp .L3
.L4:
	mov (sp),d0
	add -1,d0
	mov d0,(sp)
	mov (4,sp),d0
	add -1,d0
	mov d0,(4,sp)
	mov (sp),d0
	movbu (d0),d1
	mov (4,sp),d0
	movbu d1,(d0)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L3:
	mov (20,sp),d0
	cmp 0,d0
	bne .L4
	jmp .L5
.L2:
	mov (sp),d1
	mov (4,sp),d0
	cmp d0,d1
	beq .L5
	jmp .L6
.L7:
	mov (sp),d1
	mov 1,d0
	add d1,d0
	mov d0,(sp)
	mov (4,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(4,sp)
	movbu (d1),d1
	movbu d1,(d0)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L6:
	mov (20,sp),d0
	cmp 0,d0
	bne .L7
.L5:
	mov (12,sp),d0
	mov d0,d1
	mov d1,a0
	ret [],8
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	mov (20,sp),d0
	extbu d0
	mov d0,(20,sp)
	jmp .L10
.L12:
	mov (24,sp),d0
	add -1,d0
	mov d0,(24,sp)
	mov (sp),d0
	inc d0
	mov d0,(sp)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L10:
	mov (24,sp),d0
	cmp 0,d0
	beq .L11
	mov (sp),d0
	movbu (d0),d1
	mov (4,sp),d0
	movbu d1,(d0)
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0
	mov (20,sp),d1
	cmp d0,d1
	bne .L12
.L11:
	mov (24,sp),d0
	cmp 0,d0
	beq .L13
	mov (4,sp),d0
	inc d0
	jmp .L14
.L13:
	mov 0,d0
.L14:
	mov d0,d1
	mov d1,a0
	ret [],8
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	mov (12,sp),d0
	extbu d0
	mov d0,(12,sp)
	jmp .L16
.L18:
	mov (sp),d0
	inc d0
	mov d0,(sp)
	mov (16,sp),d0
	add -1,d0
	mov d0,(16,sp)
.L16:
	mov (16,sp),d0
	cmp 0,d0
	beq .L17
	mov (sp),d0
	movbu (d0),d0
	extbu d0
	mov (12,sp),d1
	cmp d0,d1
	bne .L18
.L17:
	mov (16,sp),d0
	cmp 0,d0
	beq .L19
	mov (sp),d0
	jmp .L21
.L19:
	mov 0,d0
.L21:
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	jmp .L23
.L25:
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L23:
	mov (20,sp),d0
	cmp 0,d0
	beq .L24
	mov (4,sp),d0
	movbu (d0),d1
	mov (sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	beq .L25
.L24:
	mov (20,sp),d0
	cmp 0,d0
	beq .L26
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0,d1
	mov (sp),d0
	movbu (d0),d0
	extbu d0
	sub d0,d1,d0
	jmp .L28
.L26:
	mov 0,d0
.L28:
	ret [],8
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	jmp .L30
.L31:
	mov (sp),d1
	mov 1,d0
	add d1,d0
	mov d0,(sp)
	mov (4,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(4,sp)
	movbu (d1),d1
	movbu d1,(d0)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L30:
	mov (20,sp),d0
	cmp 0,d0
	bne .L31
	mov (12,sp),d0
	mov d0,d1
	mov d1,a0
	ret [],8
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	mov (12,sp),d0
	extbu d0
	mov d0,(12,sp)
	jmp .L34
.L36:
	mov (sp),d1
	mov (16,sp),d0
	add d1,d0
	movbu (d0),d0
	extbu d0
	mov (12,sp),d1
	cmp d0,d1
	bne .L34
	mov (sp),d1
	mov (16,sp),d0
	add d1,d0
	jmp .L35
.L34:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L36
	mov 0,d0
.L35:
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L38
.L39:
	mov (12,sp),d0
	mov d0,d1
	mov (sp),d0
	movbu d1,(d0)
	mov (16,sp),d0
	add -1,d0
	mov d0,(16,sp)
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L38:
	mov (16,sp),d0
	cmp 0,d0
	bne .L39
	mov (8,sp),d0
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L42
.L43:
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L42:
	mov (8,sp),d0
	movbu (d0),d1
	mov (4,sp),d0
	movbu d1,(d0)
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L43
	mov (4,sp),d0
	mov d0,d1
	mov d1,a0
	rets
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	mov d0,(4,sp)
	mov d1,(8,sp)
	mov (8,sp),d0
	extbu d0
	mov d0,(8,sp)
	jmp .L46
.L48:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L46:
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L47
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0
	mov (8,sp),d1
	cmp d0,d1
	bne .L48
.L47:
	mov (4,sp),d0
	mov d0,d1
	mov d1,a0
	rets
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d1,(8,sp)
.L53:
	movbu (d0),d1
	extbu d1
	mov (8,sp),a0
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
	rets
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L55
.L57:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L55:
	mov (4,sp),d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L56
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L57
.L56:
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0,d1
	mov (8,sp),d0
	movbu (d0),d0
	extbu d0
	sub d0,d1,d0
	rets
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	add -4,sp
	mov d0,(8,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L60
.L61:
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L60:
	mov (8,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L61
	mov (8,sp),d1
	mov (sp),d0
	sub d0,d1,d0
	ret [],4
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	mov (20,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(20,sp)
	cmp 0,d0
	bne .L66
	mov 0,d0
	jmp .L65
.L68:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
	mov (sp),d0
	inc d0
	mov d0,(sp)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L66:
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L67
	mov (sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L67
	mov (20,sp),d0
	cmp 0,d0
	beq .L67
	mov (4,sp),d0
	movbu (d0),d1
	mov (sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	beq .L68
.L67:
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0,d1
	mov (sp),d0
	movbu (d0),d0
	extbu d0
	sub d0,d1,d0
.L65:
	ret [],8
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	jmp .L70
.L71:
	mov (4,sp),d0
	inc d0
	movbu (d0),d1
	mov (sp),d0
	movbu d1,(d0)
	mov (sp),d0
	inc d0
	mov (4,sp),d1
	movbu (d1),d1
	movbu d1,(d0)
	mov (sp),d0
	add 2,d0
	mov d0,(sp)
	mov (4,sp),d0
	add 2,d0
	mov d0,(4,sp)
	mov (20,sp),d0
	add -2,d0
	mov d0,(20,sp)
.L70:
	mov (20,sp),d0
	cmp 1,d0
	bgt .L71
	ret [],8
	.size	swab, .-swab
	.global isalpha
	.type	isalpha, @function
isalpha:
	mov d0,(4,sp)
	mov (4,sp),d0
	or 32,d0
	add -97,d0
	mov 1,d1
	cmp 25,d0
	bls .L73
	mov 0,d1
.L73:
	extbu d1,d0
	rets
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,(4,sp)
	mov (4,sp),d0
	mov 1,d1
	cmp 127,d0
	bls .L76
	mov 0,d1
.L76:
	extbu d1,d0
	rets
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 32,d0
	beq .L79
	mov (4,sp),d0
	cmp 9,d0
	bne .L80
.L79:
	mov 1,d0
	rets
.L80:
	mov 0,d0
	rets
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 31,d0
	bls .L84
	mov (4,sp),d0
	cmp 127,d0
	bne .L85
.L84:
	mov 1,d0
	rets
.L85:
	mov 0,d0
	rets
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -48,d0
	mov 1,d1
	cmp 9,d0
	bls .L89
	mov 0,d1
.L89:
	extbu d1,d0
	rets
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -33,d0
	mov 1,d1
	cmp 93,d0
	bls .L92
	mov 0,d1
.L92:
	extbu d1,d0
	rets
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -97,d0
	mov 1,d1
	cmp 25,d0
	bls .L95
	mov 0,d1
.L95:
	extbu d1,d0
	rets
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -32,d0
	mov 1,d1
	cmp 94,d0
	bls .L98
	mov 0,d1
.L98:
	extbu d1,d0
	rets
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 32,d0
	beq .L101
	mov (4,sp),d0
	add -9,d0
	cmp 4,d0
	bhi .L102
.L101:
	mov 1,d0
	rets
.L102:
	mov 0,d0
	rets
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -65,d0
	mov 1,d1
	cmp 25,d0
	bls .L106
	mov 0,d1
.L106:
	extbu d1,d0
	rets
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 31,d0
	bls .L109
	mov (4,sp),d0
	add -127,d0
	cmp 32,d0
	bls .L109
	mov (4,sp),d0
	add -8232,d0
	cmp 1,d0
	bls .L109
	mov (4,sp),d0
	add -65529,d0
	cmp 2,d0
	bhi .L110
.L109:
	mov 1,d0
	rets
.L110:
	mov 0,d0
	rets
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -48,d0
	mov 1,d1
	cmp 9,d0
	bls .L114
	mov 0,d1
.L114:
	extbu d1,d0
	rets
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 254,d0
	bhi .L117
	mov (4,sp),d0
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L118
	mov 0,d1
.L118:
	extbu d1,d0
	rets
.L117:
	mov (4,sp),d0
	cmp 8231,d0
	bls .L120
	mov (4,sp),d0
	add -8234,d0
	cmp 47061,d0
	bls .L120
	mov (4,sp),d0
	add -57344,d0
	cmp 8184,d0
	bhi .L121
.L120:
	mov 1,d0
	rets
.L121:
	mov (4,sp),d0
	add -65532,d0
	cmp 1048579,d0
	bhi .L122
	mov (4,sp),d0
	and 65534,d0
	cmp 65534,d0
	bne .L123
.L122:
	mov 0,d0
	rets
.L123:
	mov 1,d0
	rets
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -48,d0
	cmp 9,d0
	bls .L125
	mov (4,sp),d0
	or 32,d0
	add -97,d0
	cmp 5,d0
	bhi .L126
.L125:
	mov 1,d0
	rets
.L126:
	mov 0,d0
	rets
	.size	iswxdigit, .-iswxdigit
	.global toascii
	.type	toascii, @function
toascii:
	mov d0,(4,sp)
	mov (4,sp),d0
	and 127,d0
	rets
	.size	toascii, .-toascii
	.global fdim
	.type	fdim, @function
fdim:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L143
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L134
.L143:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L144
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L134
.L144:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L145
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
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
	ret [],20
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (16,sp),d1
	mov (16,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L158
	mov (16,sp),d0
	jmp .L149
.L158:
	mov (20,sp),d1
	mov (20,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L159
	mov (20,sp),d0
	jmp .L149
.L159:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L160
	mov (20,sp),d1
	mov (16,sp),d0
	call +__subsf3,[],0
	mov d0,d1
	mov d1,d0
	jmp .L149
.L160:
	mov 0,d0
.L149:
	mov d0,d1
	mov d1,d0
	ret [],12
	.size	fdimf, .-fdimf
	.global fmax
	.type	fmax, @function
fmax:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L176
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L164
.L176:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L177
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L164
.L177:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L167
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L168
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L164
.L168:
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L164
.L167:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L178
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L164
.L178:
	mov (24,sp),d0
	mov (28,sp),d1
.L164:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (16,sp),d1
	mov (16,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L194
	mov (20,sp),d0
	jmp .L182
.L194:
	mov (20,sp),d1
	mov (20,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L195
	mov (16,sp),d0
	jmp .L182
.L195:
	mov (16,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L185
	mov (16,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L186
	mov (20,sp),d0
	jmp .L182
.L186:
	mov (16,sp),d0
	jmp .L182
.L185:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L196
	mov (20,sp),d0
	jmp .L182
.L196:
	mov (16,sp),d0
.L182:
	mov d0,d1
	mov d1,d0
	ret [],12
	.size	fmaxf, .-fmaxf
	.global fmaxl
	.type	fmaxl, @function
fmaxl:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L212
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L200
.L212:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L213
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L200
.L213:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L203
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L204
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L200
.L204:
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L200
.L203:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L214
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L200
.L214:
	mov (24,sp),d0
	mov (28,sp),d1
.L200:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	fmaxl, .-fmaxl
	.global fmin
	.type	fmin, @function
fmin:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L230
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L218
.L230:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L231
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L218
.L231:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L221
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L222
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L218
.L222:
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L218
.L221:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L232
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L218
.L232:
	mov (32,sp),d0
	mov (36,sp),d1
.L218:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (16,sp),d1
	mov (16,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L248
	mov (20,sp),d0
	jmp .L236
.L248:
	mov (20,sp),d1
	mov (20,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L249
	mov (16,sp),d0
	jmp .L236
.L249:
	mov (16,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L239
	mov (16,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L240
	mov (16,sp),d0
	jmp .L236
.L240:
	mov (20,sp),d0
	jmp .L236
.L239:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L250
	mov (16,sp),d0
	jmp .L236
.L250:
	mov (20,sp),d0
.L236:
	mov d0,d1
	mov d1,d0
	ret [],12
	.size	fminf, .-fminf
	.global fminl
	.type	fminl, @function
fminl:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L266
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L254
.L266:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L267
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L254
.L267:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L257
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L258
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L254
.L258:
	mov (32,sp),d0
	mov (36,sp),d1
	jmp .L254
.L257:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L268
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L254
.L268:
	mov (32,sp),d0
	mov (36,sp),d1
.L254:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
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
	add -8,sp
	mov d0,(12,sp)
	mov (12,sp),d0
	mov d0,(sp)
	mov +s.0,d0
	mov d0,(4,sp)
	jmp .L270
.L271:
	mov (sp),d0
	and 63,d0
	movbu (+digits,d0),d1
	mov (4,sp),d0
	movbu d1,(d0)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
	mov (sp),d0
	lsr 6,d0
	mov d0,(sp)
.L270:
	mov (sp),d0
	cmp 0,d0
	bne .L271
	mov (4,sp),d0
	mov 0,d1
	movbu d1,(d0)
	mov +s.0,d0
	mov d0,d1
	mov d1,a0
	ret [],8
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.global srand
	.type	srand, @function
srand:
	mov d0,(4,sp)
	mov (4,sp),d0
	add -1,d0
	mov d0,a0
	mov 0,a1
	mov a0,(+seed)
	mov a1,(+seed+4)
	nop
	rets
	.size	srand, .-srand
	.global rand
	.type	rand, @function
rand:
	movm [d2,d3,a2,a3],(sp)
	mov (+seed),a0
	mov (+seed+4),a1
	mov 1284865837,r1
	mul a1,r1
	mov 1481765933,r0
	mul a0,r0
	add r1,r0
	mov 1284865837,r1
	mulu a0,r1,d1,d0
	add d1,r0,a0
	mov a0,d1
	mov 1,d2
	add d0,d2
	mov 0,d3
	addc d1,d3
	mov d2,(+seed)
	mov d3,(+seed+4)
	mov (+seed+4),d1
	mov d1,a2
	lsr 1,a2
	mov a2,d0
	ret [d2,d3,a2,a3],16
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	mov (sp),d0
	cmp 0,d0
	bne .L277
	mov (4,sp),d0
	mov 0,d1
	mov d1,(4,d0)
	mov (4,sp),d0
	mov (4,d0),d1
	mov (4,sp),d0
	mov d1,(d0)
	jmp .L276
.L277:
	mov (sp),d0
	mov (d0),d1
	mov (4,sp),d0
	mov d1,(d0)
	mov (4,sp),d0
	mov (sp),d1
	mov d1,(4,d0)
	mov (sp),d0
	mov (4,sp),d1
	mov d1,(d0)
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L276
	mov (4,sp),d0
	mov (d0),d0
	mov (4,sp),d1
	mov d1,(4,d0)
.L276:
	ret [],8
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	add -4,sp
	mov d0,(8,sp)
	mov (8,sp),d0
	mov d0,(sp)
	mov (sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L280
	mov (sp),d0
	mov (d0),d0
	mov (sp),d1
	mov (4,d1),d1
	mov d1,(4,d0)
.L280:
	mov (sp),d0
	mov (4,d0),d0
	cmp 0,d0
	beq .L279
	mov (sp),d0
	mov (4,d0),d0
	mov (sp),d1
	mov (d1),d1
	mov d1,(d0)
.L279:
	ret [],4
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2],(sp)
	add -32,sp
	mov d0,(48,sp)
	mov d1,(52,sp)
	mov (60,sp),a2
	mov a2,d0
	add -1,d0
	mov d0,(24,sp)
	mov (52,sp),d0
	mov d0,(20,sp)
	mov (56,sp),d0
	mov (d0),d0
	mov d0,(16,sp)
	mov 0,d0
	mov d0,(28,sp)
	jmp .L284
.L287:
	mov (28,sp),d0
	mul a2,d0
	mov (20,sp),d1
	add d0,d1
	mov (48,sp),d0
	mov (64,sp),a0
	calls (a0)
	cmp 0,d0
	bne .L285
	mov (28,sp),d0
	mul a2,d0
	mov (20,sp),d1
	add d1,d0
	jmp .L286
.L285:
	mov (28,sp),d0
	inc d0
	mov d0,(28,sp)
.L284:
	mov (28,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L287
	mov (16,sp),d0
	mov 1,d1
	add d0,d1
	mov (56,sp),d0
	mov d1,(d0)
	mov (16,sp),d0
	mul a2,d0
	mov (20,sp),d1
	add d0,d1,a0
	mov (48,sp),d1
	mov (60,sp),d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcpy,[],0
	mov a0,d0
.L286:
	mov d0,d1
	mov d1,a0
	ret [d2,d3,a2],44
	.size	lsearch, .-lsearch
	.global lfind
	.type	lfind, @function
lfind:
	movm [d2,d3,a2],(sp)
	add -28,sp
	mov d0,(44,sp)
	mov d1,(48,sp)
	mov (56,sp),a2
	mov a2,d0
	add -1,d0
	mov d0,(20,sp)
	mov (48,sp),d0
	mov d0,(16,sp)
	mov (52,sp),d0
	mov (d0),d0
	mov d0,(12,sp)
	mov 0,d0
	mov d0,(24,sp)
	jmp .L289
.L292:
	mov (24,sp),d0
	mul a2,d0
	mov (16,sp),d1
	add d0,d1
	mov (44,sp),d0
	mov (60,sp),a0
	calls (a0)
	cmp 0,d0
	bne .L290
	mov (24,sp),d0
	mul a2,d0
	mov (16,sp),d1
	add d1,d0
	jmp .L291
.L290:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
.L289:
	mov (24,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcs .L292
	mov 0,d0
.L291:
	mov d0,d1
	mov d1,a0
	ret [d2,d3,a2],40
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 0,d0
	bge .L294
	not d0
	inc d0
.L294:
	rets
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	add -20,sp
	mov d0,(24,sp)
	mov 0,d0
	mov d0,(16,sp)
	mov 0,d0
	mov d0,(12,sp)
	jmp .L297
.L298:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
.L297:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L298
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 43,d0
	beq .L299
	cmp 45,d0
	bne .L301
	mov 1,d0
	mov d0,(12,sp)
.L299:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
	jmp .L301
.L302:
	mov (16,sp),d0
	mov 10,d1
	mul d0,d1
	mov (24,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(24,sp)
	movbu (d0),d0
	extbu d0
	add -48,d0
	sub d0,d1,d0
	mov d0,(16,sp)
.L301:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L302
	mov (12,sp),d0
	cmp 0,d0
	bne .L303
	mov (16,sp),d0
	not d0
	inc d0
	jmp .L305
.L303:
	mov (16,sp),d0
.L305:
	ret [],20
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	add -20,sp
	mov d0,(24,sp)
	mov 0,d0
	mov d0,(16,sp)
	mov 0,d0
	mov d0,(12,sp)
	jmp .L307
.L308:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
.L307:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L308
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 43,d0
	beq .L309
	cmp 45,d0
	bne .L311
	mov 1,d0
	mov d0,(12,sp)
.L309:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
	jmp .L311
.L312:
	mov (16,sp),d0
	mov 10,d1
	mul d0,d1
	mov (24,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(24,sp)
	movbu (d0),d0
	extbu d0
	add -48,d0
	sub d0,d1,d0
	mov d0,(16,sp)
.L311:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L312
	mov (12,sp),d0
	cmp 0,d0
	bne .L313
	mov (16,sp),d0
	not d0
	inc d0
	jmp .L315
.L313:
	mov (16,sp),d0
.L315:
	ret [],20
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -24,sp
	mov d0,(60,sp)
	mov 0,d0
	mov d0,(16,sp)
	mov 0,d0
	mov d0,(20,sp)
	mov 0,d0
	mov d0,(12,sp)
	jmp .L317
.L318:
	mov (60,sp),d0
	inc d0
	mov d0,(60,sp)
.L317:
	mov (60,sp),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L318
	mov (60,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 43,d0
	beq .L319
	cmp 45,d0
	bne .L321
	mov 1,d0
	mov d0,(12,sp)
.L319:
	mov (60,sp),d0
	inc d0
	mov d0,(60,sp)
	jmp .L321
.L322:
	mov (20,sp),d0
	mov 10,d1
	mul d0,d1
	mov (16,sp),d0
	mul 0,d0
	add d1,d0
	mov (16,sp),d1
	mov 10,a0
	mulu d1,a0,d3,d2
	add d3,d0
	mov d0,d3
	mov (60,sp),d0
	mov 1,d1
	add d0,d1
	mov d1,(60,sp)
	movbu (d0),d0
	extbu d0
	add -48,d0
	mov d0,r6
	asr 31,d0
	mov d0,r7
	sub r6,d2,r4
	subc r7,d3,r5
	mov r4,(16,sp)
	mov r5,(20,sp)
.L321:
	mov (60,sp),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L322
	mov (12,sp),d0
	cmp 0,d0
	bne .L323
	mov 0,a0
	mov 0,a1
	mov (16,sp),d0
	mov (20,sp),d1
	sub d0,a0,a2
	subc d1,a1,a3
	jmp .L325
.L323:
	mov (16,sp),a2
	mov (20,sp),a3
.L325:
	mov a2,a0
	mov a3,a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],56
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	jmp .L327
.L332:
	mov (32,sp),d0
	mov d0,d1
	lsr 1,d1
	mov (36,sp),d0
	mul d1,d0
	mov (28,sp),d1
	add d1,d0
	mov d0,(16,sp)
	mov (16,sp),d1
	mov (24,sp),d0
	mov (40,sp),a0
	calls (a0)
	mov d0,(12,sp)
	mov (12,sp),d0
	cmp 0,d0
	bge .L328
	mov (32,sp),d0
	lsr 1,d0
	mov d0,(32,sp)
	jmp .L327
.L328:
	mov (12,sp),d0
	cmp 0,d0
	ble .L330
	mov (16,sp),d1
	mov (36,sp),d0
	add d1,d0
	mov d0,(28,sp)
	mov (32,sp),d0
	lsr 1,d0
	mov (32,sp),d1
	sub d0,d1,d0
	add -1,d0
	mov d0,(32,sp)
	jmp .L327
.L330:
	mov (16,sp),d0
	jmp .L331
.L327:
	mov (32,sp),d0
	cmp 0,d0
	bne .L332
	mov 0,d0
.L331:
	mov d0,d1
	mov d1,a0
	ret [],20
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	add -32,sp
	mov d0,(36,sp)
	mov d1,(40,sp)
	mov (40,sp),d0
	mov d0,(28,sp)
	mov (44,sp),d0
	mov d0,(24,sp)
	jmp .L334
.L338:
	mov (24,sp),d0
	asr 1,d0
	mov d0,d1
	mov (48,sp),d0
	mul d1,d0
	mov (28,sp),d1
	add d1,d0
	mov d0,(20,sp)
	mov (20,sp),d1
	mov (36,sp),a1
	mov (56,sp),d0
	mov d0,(12,sp)
	mov (52,sp),a0
	mov a1,d0
	calls (a0)
	mov d0,(16,sp)
	mov (16,sp),d0
	cmp 0,d0
	bne .L335
	mov (20,sp),d0
	jmp .L336
.L335:
	mov (16,sp),d0
	cmp 0,d0
	ble .L337
	mov (20,sp),d1
	mov (48,sp),d0
	add d1,d0
	mov d0,(28,sp)
	mov (24,sp),d0
	add -1,d0
	mov d0,(24,sp)
.L337:
	mov (24,sp),d0
	asr 1,d0
	mov d0,(24,sp)
.L334:
	mov (24,sp),d0
	cmp 0,d0
	bne .L338
	mov 0,d0
.L336:
	mov d0,d1
	mov d1,a0
	ret [],32
	.size	bsearch_r, .-bsearch_r
	.global div
	.type	div, @function
div:
	movm [d2,d3],(sp)
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov (16,sp),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov a0,d2
	mov d2,mdr
	div d1,d0
	mov d0,a1
	mov (12,sp),d0
	mov (16,sp),d1
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
	ret [d2,d3],8
	.size	div, .-div
	.global imaxabs
	.type	imaxabs, @function
imaxabs:
	movm [d2,d3],(sp)
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov (16,sp),d1
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
	ret [d2,d3],8
	.size	imaxabs, .-imaxabs
	.global imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movm [d2,d3],(sp)
	add -36,sp
	mov d0,(48,sp)
	mov d1,(52,sp)
	mov (60,sp),d0
	mov d0,(12,sp)
	mov (64,sp),d0
	mov d0,(16,sp)
	mov (52,sp),d0
	mov (56,sp),d1
	call +__divdi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d2
	mov a1,d3
	mov (52,sp),a0
	mov (56,sp),a1
	mov (60,sp),d0
	mov d0,(12,sp)
	mov (64,sp),d0
	mov d0,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__moddi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov (48,sp),a0
	mov d2,(a0)
	mov d3,(4,a0)
	mov (48,sp),a0
	mov d0,(8,a0)
	mov d1,(12,a0)
	mov (48,sp),a0
	ret [d2,d3],44
	.size	imaxdiv, .-imaxdiv
	.global labs
	.type	labs, @function
labs:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 0,d0
	bge .L348
	not d0
	inc d0
.L348:
	rets
	.size	labs, .-labs
	.global ldiv
	.type	ldiv, @function
ldiv:
	movm [d2,d3],(sp)
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov (16,sp),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov a0,d2
	mov d2,mdr
	div d1,d0
	mov d0,a1
	mov (12,sp),d0
	mov (16,sp),d1
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
	ret [d2,d3],8
	.size	ldiv, .-ldiv
	.global llabs
	.type	llabs, @function
llabs:
	movm [d2,d3],(sp)
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov (16,sp),d1
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
	ret [d2,d3],8
	.size	llabs, .-llabs
	.global lldiv
	.type	lldiv, @function
lldiv:
	movm [d2,d3],(sp)
	add -36,sp
	mov d0,(48,sp)
	mov d1,(52,sp)
	mov (60,sp),d0
	mov d0,(12,sp)
	mov (64,sp),d0
	mov d0,(16,sp)
	mov (52,sp),d0
	mov (56,sp),d1
	call +__divdi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d2
	mov a1,d3
	mov (52,sp),a0
	mov (56,sp),a1
	mov (60,sp),d0
	mov d0,(12,sp)
	mov (64,sp),d0
	mov d0,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__moddi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	mov (48,sp),a0
	mov d2,(a0)
	mov d3,(4,a0)
	mov (48,sp),a0
	mov d0,(8,a0)
	mov d1,(12,a0)
	mov (48,sp),a0
	ret [d2,d3],44
	.size	lldiv, .-lldiv
	.global wcschr
	.type	wcschr, @function
wcschr:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L359
.L361:
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
.L359:
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L360
	mov (4,sp),d0
	mov (d0),d0
	mov (8,sp),d1
	cmp d0,d1
	bne .L361
.L360:
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L362
	mov (4,sp),d0
	jmp .L364
.L362:
	mov 0,d0
.L364:
	mov d0,d1
	mov d1,a0
	rets
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L366
.L368:
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
	mov (8,sp),d0
	add 4,d0
	mov d0,(8,sp)
.L366:
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	bne .L367
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L367
	mov (8,sp),d0
	mov (d0),d0
	cmp 0,d0
	bne .L368
.L367:
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	blt .L369
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L370
	mov 0,a0
.L370:
	extbu a0,d0
	rets
.L369:
	mov -1,d0
	rets
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
.L374:
	mov (12,sp),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,sp)
	mov (8,sp),d0
	mov 4,a0
	add d0,a0
	mov a0,(8,sp)
	mov (d1),d1
	mov d1,(d0)
	mov (d0),d0
	cmp 0,d0
	bne .L374
	mov (sp),d0
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	add -4,sp
	mov d0,(8,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L377
.L378:
	mov (8,sp),d0
	add 4,d0
	mov d0,(8,sp)
.L377:
	mov (8,sp),d0
	mov (d0),d0
	cmp 0,d0
	bne .L378
	mov (8,sp),d1
	mov (sp),d0
	sub d0,d1,d0
	asr 2,d0
	ret [],4
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L381
.L383:
	mov (12,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
	mov (8,sp),d0
	add 4,d0
	mov d0,(8,sp)
.L381:
	mov (12,sp),d0
	cmp 0,d0
	beq .L382
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	bne .L382
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L382
	mov (8,sp),d0
	mov (d0),d0
	cmp 0,d0
	bne .L383
.L382:
	mov (12,sp),d0
	cmp 0,d0
	beq .L384
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	blt .L385
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L386
	mov 0,a0
.L386:
	extbu a0,d0
	rets
.L385:
	mov -1,d0
	rets
.L384:
	mov 0,d0
	rets
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L391
.L393:
	mov (12,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
.L391:
	mov (12,sp),d0
	cmp 0,d0
	beq .L392
	mov (4,sp),d0
	mov (d0),d0
	mov (8,sp),d1
	cmp d0,d1
	bne .L393
.L392:
	mov (12,sp),d0
	cmp 0,d0
	beq .L394
	mov (4,sp),d0
	jmp .L396
.L394:
	mov 0,d0
.L396:
	mov d0,d1
	mov d1,a0
	rets
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L398
.L400:
	mov (12,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
	mov (8,sp),d0
	add 4,d0
	mov d0,(8,sp)
.L398:
	mov (12,sp),d0
	cmp 0,d0
	beq .L399
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	beq .L400
.L399:
	mov (12,sp),d0
	cmp 0,d0
	beq .L401
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	blt .L402
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L403
	mov 0,a0
.L403:
	extbu a0,d0
	rets
.L402:
	mov -1,d0
	rets
.L401:
	mov 0,d0
	rets
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L408
.L409:
	mov (12,sp),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,sp)
	mov (8,sp),d0
	mov 4,a0
	add d0,a0
	mov a0,(8,sp)
	mov (d1),d1
	mov d1,(d0)
.L408:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L409
	mov (sp),d0
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	mov (8,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bne .L412
	mov (8,sp),d0
	jmp .L413
.L412:
	mov (8,sp),d1
	mov (12,sp),d0
	sub d0,d1
	mov (16,sp),d0
	asl2 d0
	cmp d0,d1
	bcc .L418
	jmp .L415
.L416:
	mov (16,sp),d0
	asl2 d0
	mov (12,sp),d1
	add d0,d1
	mov (16,sp),d0
	asl2 d0
	mov (8,sp),a0
	add a0,d0
	mov (d1),d1
	mov d1,(d0)
.L415:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L416
	jmp .L417
.L419:
	mov (12,sp),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,sp)
	mov (8,sp),d0
	mov 4,a0
	add d0,a0
	mov a0,(8,sp)
	mov (d1),d1
	mov d1,(d0)
.L418:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L419
.L417:
	mov (sp),d0
.L413:
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L421
.L422:
	mov (8,sp),d0
	mov 4,d1
	add d0,d1
	mov d1,(8,sp)
	mov (12,sp),d1
	mov d1,(d0)
.L421:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L422
	mov (sp),d0
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d0
	mov d0,(4,sp)
	mov (16,sp),d0
	mov d0,(sp)
	mov (4,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcc .L425
	mov (4,sp),d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(4,sp)
	mov (sp),d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(sp)
	jmp .L426
.L427:
	mov (4,sp),d0
	add -1,d0
	mov d0,(4,sp)
	mov (sp),d0
	add -1,d0
	mov d0,(sp)
	mov (4,sp),d0
	movbu (d0),d1
	mov (sp),d0
	movbu d1,(d0)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L426:
	mov (20,sp),d0
	cmp 0,d0
	bne .L427
	jmp .L424
.L425:
	mov (4,sp),d1
	mov (sp),d0
	cmp d0,d1
	beq .L424
	jmp .L429
.L430:
	mov (4,sp),d1
	mov 1,d0
	add d1,d0
	mov d0,(4,sp)
	mov (sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(sp)
	movbu (d1),d1
	movbu d1,(d0)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L429:
	mov (20,sp),d0
	cmp 0,d0
	bne .L430
.L424:
	ret [],8
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	movm [d2,d3,a2,a3],(sp)
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d0
	mov (24,sp),d1
	mov (28,sp),r0
	and 32,r0
	cmp 0,r0
	beq .L433
	mov (28,sp),r0
	asl r0,d0,d3
	mov 0,d2
	jmp .L434
.L433:
	mov d0,r1
	lsr 1,r1
	mov (28,sp),r0
	not r0
	lsr r0,r1,r0
	mov (28,sp),r1
	asl r1,d1,d3
	or r0,d3
	mov (28,sp),r0
	asl r0,d0,d2
.L434:
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	and 32,r0
	cmp 0,r0
	beq .L435
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	lsr r0,d1,a0
	mov 0,a1
	jmp .L436
.L435:
	mov d1,r1
	add r1,r1
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	not r0
	asl r0,r1,r0
	mov (28,sp),r1
	not r1
	inc r1
	and 63,r1
	lsr r1,d0,a0
	or r0,a0
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	lsr r0,d1,a1
.L436:
	or d2,a0,a2
	or d3,a1,a3
	mov a2,a0
	mov a3,a1
	mov a0,d2
	mov a1,d3
	mov d2,d0
	mov d3,d1
	ret [d2,d3,a2,a3],16
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2,d3,a2,a3],(sp)
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d0
	mov (24,sp),d1
	mov (28,sp),r0
	and 32,r0
	cmp 0,r0
	beq .L439
	mov (28,sp),r0
	lsr r0,d1,d2
	mov 0,d3
	jmp .L440
.L439:
	mov d1,r1
	add r1,r1
	mov (28,sp),r0
	not r0
	asl r0,r1,r0
	mov (28,sp),r1
	lsr r1,d0,d2
	or r0,d2
	mov (28,sp),r0
	lsr r0,d1,d3
.L440:
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	and 32,r0
	cmp 0,r0
	beq .L441
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	asl r0,d0,a1
	mov 0,a0
	jmp .L442
.L441:
	mov d0,r1
	lsr 1,r1
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	not r0
	lsr r0,r1,r0
	mov (28,sp),r1
	not r1
	inc r1
	and 63,r1
	asl r1,d1,a1
	or r0,a1
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	asl r0,d0,a0
.L442:
	or d2,a0,a2
	or d3,a1,a3
	mov a2,a0
	mov a3,a1
	mov a0,d2
	mov a1,d3
	mov d2,d0
	mov d3,d1
	ret [d2,d3,a2,a3],16
	.size	rotr64, .-rotr64
	.global rotl32
	.type	rotl32, @function
rotl32:
	mov d0,(4,sp)
	mov d1,(8,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	asl d1,d0,d1
	mov (8,sp),a0
	not a0
	inc a0
	and 31,a0
	lsr a0,d0
	or d1,d0
	rets
	.size	rotl32, .-rotl32
	.global rotr32
	.type	rotr32, @function
rotr32:
	mov d0,(4,sp)
	mov d1,(8,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	lsr d1,d0,d1
	mov (8,sp),a0
	not a0
	inc a0
	and 31,a0
	asl a0,d0
	or d1,d0
	rets
	.size	rotr32, .-rotr32
	.global rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	mov d0,(4,sp)
	mov d1,(8,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	asl d1,d0,d1
	mov (8,sp),a0
	not a0
	inc a0
	and 31,a0
	lsr a0,d0
	or d1,d0
	rets
	.size	rotl_sz, .-rotl_sz
	.global rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	mov d0,(4,sp)
	mov d1,(8,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	lsr d1,d0,d1
	mov (8,sp),a0
	not a0
	inc a0
	and 31,a0
	asl a0,d0
	or d1,d0
	rets
	.size	rotr_sz, .-rotr_sz
	.global rotl16
	.type	rotl16, @function
rotl16:
	mov d1,(8,sp)
	movhu d0,(4,sp)
	movhu (4,sp),d1
	mov (8,sp),d0
	asl d0,d1,d0
	mov d0,a1
	movhu (4,sp),d1
	mov 16,a0
	mov (8,sp),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	or a1,d0
	rets
	.size	rotl16, .-rotl16
	.global rotr16
	.type	rotr16, @function
rotr16:
	mov d1,(8,sp)
	movhu d0,(4,sp)
	movhu (4,sp),d1
	mov (8,sp),d0
	lsr d0,d1,d0
	mov d0,a1
	movhu (4,sp),d1
	mov 16,a0
	mov (8,sp),d0
	sub d0,a0,d0
	asl d0,d1,d0
	or a1,d0
	rets
	.size	rotr16, .-rotr16
	.global rotl8
	.type	rotl8, @function
rotl8:
	mov d1,(8,sp)
	movbu d0,(4,sp)
	movbu (4,sp),d1
	mov (8,sp),d0
	asl d0,d1,d0
	mov d0,a1
	movbu (4,sp),d1
	mov 8,a0
	mov (8,sp),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	or a1,d0
	rets
	.size	rotl8, .-rotl8
	.global rotr8
	.type	rotr8, @function
rotr8:
	mov d1,(8,sp)
	movbu d0,(4,sp)
	movbu (4,sp),d1
	mov (8,sp),d0
	lsr d0,d1,d0
	mov d0,a1
	movbu (4,sp),d1
	mov 8,a0
	mov (8,sp),d0
	sub d0,a0,d0
	asl d0,d1,d0
	or a1,d0
	rets
	.size	rotr8, .-rotr8
	.global bswap_16
	.type	bswap_16, @function
bswap_16:
	add -4,sp
	movhu d0,(8,sp)
	mov 255,d0
	mov d0,(sp)
	movhu (8,sp),d1
	mov (sp),d0
	asl 8,d0
	and d1,d0
	lsr 8,d0
	mov d0,d1
	mov (sp),d0
	mov d0,a0
	movhu (8,sp),d0
	and a0,d0
	asl 8,d0
	or d1,d0
	ret [],4
	.size	bswap_16, .-bswap_16
	.global bswap_32
	.type	bswap_32, @function
bswap_32:
	add -4,sp
	mov d0,(8,sp)
	mov 255,d0
	mov d0,(sp)
	mov (sp),d0
	mov d0,d1
	asl 24,d1
	mov (8,sp),d0
	and d1,d0
	mov d0,d1
	lsr 24,d1
	mov (sp),d0
	mov d0,a0
	asl 16,a0
	mov (8,sp),d0
	and a0,d0
	lsr 8,d0
	or d0,d1
	mov (sp),d0
	mov d0,a0
	asl 8,a0
	mov (8,sp),d0
	and a0,d0
	asl 8,d0
	or d0,d1
	mov (8,sp),a0
	mov (sp),d0
	and a0,d0
	asl 24,d0
	or d1,d0
	ret [],4
	.size	bswap_32, .-bswap_32
	.global bswap_64
	.type	bswap_64, @function
bswap_64:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -192,sp
	mov d0,(228,sp)
	mov d1,(232,sp)
	mov 255,d0
	mov d0,(184,sp)
	mov 0,d0
	mov d0,(188,sp)
	mov (184,sp),d0
	mov d0,a1
	asl 24,a1
	mov (232,sp),d0
	and a1,d0,r3
	mov r3,d0
	lsr 24,d0
	mov d0,(176,sp)
	mov 0,d1
	mov d1,(180,sp)
	mov (184,sp),d0
	mov d0,d3
	asl 16,d3
	mov 0,d2
	mov (228,sp),d0
	and d2,d0
	mov d0,(168,sp)
	mov (232,sp),d0
	and d3,d0
	mov d0,(172,sp)
	mov (172,sp),r0
	lsr 8,r0
	mov 0,r1
	mov (176,sp),a0
	or r0,a0
	mov a0,(160,sp)
	mov (180,sp),d0
	or r1,d0
	mov d0,(164,sp)
	mov (184,sp),d0
	mov d0,d1
	asl 8,d1
	mov d1,(156,sp)
	mov 0,a0
	mov a0,(152,sp)
	mov (228,sp),d0
	mov (152,sp),r4
	and d0,r4
	mov (232,sp),d0
	mov (156,sp),r5
	and d0,r5
	mov r5,d0
	asl 8,d0
	mov r4,a2
	lsr 24,a2
	or d0,a2
	mov r5,a3
	lsr 24,a3
	mov (160,sp),d0
	or a2,d0
	mov d0,(144,sp)
	mov (164,sp),d1
	or a3,d1
	mov d1,(148,sp)
	mov (184,sp),d0
	mov d0,a0
	asl 0,a0
	mov a0,(140,sp)
	mov 0,d0
	mov d0,(136,sp)
	mov (228,sp),d0
	mov (136,sp),d1
	and d0,d1
	mov d1,(128,sp)
	mov (232,sp),d0
	mov (140,sp),a0
	and d0,a0
	mov a0,(132,sp)
	mov (132,sp),d0
	asl 24,d0
	mov (128,sp),r6
	lsr 8,r6
	or d0,r6
	mov (132,sp),r7
	lsr 8,r7
	mov (144,sp),d0
	or r6,d0
	mov d0,(120,sp)
	mov (148,sp),d1
	or r7,d1
	mov d1,(124,sp)
	mov (184,sp),d0
	mov d0,d1
	lsr 8,d1
	mov (188,sp),d0
	mov d0,a0
	asl 24,a0
	mov a0,(116,sp)
	mov (116,sp),d0
	or d1,d0
	mov d0,(116,sp)
	mov (184,sp),d0
	mov d0,d1
	asl 24,d1
	mov d1,(112,sp)
	mov (228,sp),d0
	mov (112,sp),a0
	and d0,a0
	mov a0,(104,sp)
	mov (232,sp),d0
	mov (116,sp),d1
	and d0,d1
	mov d1,(108,sp)
	mov (104,sp),d0
	lsr 24,d0
	mov (108,sp),a0
	asl 8,a0
	mov a0,(100,sp)
	mov (100,sp),d1
	or d0,d1
	mov d1,(100,sp)
	mov (104,sp),a0
	asl 8,a0
	mov a0,(96,sp)
	mov (120,sp),d0
	mov (96,sp),d1
	or d1,d0
	mov d0,(88,sp)
	mov (124,sp),a0
	mov (100,sp),d0
	or d0,a0
	mov a0,(92,sp)
	mov (184,sp),d0
	mov d0,d1
	lsr 16,d1
	mov (188,sp),d0
	mov d0,a0
	asl 16,a0
	mov a0,(84,sp)
	mov (84,sp),d0
	or d1,d0
	mov d0,(84,sp)
	mov (184,sp),d0
	mov d0,d1
	asl 16,d1
	mov d1,(80,sp)
	mov (228,sp),d0
	mov (80,sp),a0
	and d0,a0
	mov a0,(72,sp)
	mov (232,sp),d0
	mov (84,sp),d1
	and d0,d1
	mov d1,(76,sp)
	mov (72,sp),d0
	lsr 8,d0
	mov (76,sp),a0
	asl 24,a0
	mov a0,(68,sp)
	mov (68,sp),d1
	or d0,d1
	mov d1,(68,sp)
	mov (72,sp),a0
	asl 24,a0
	mov a0,(64,sp)
	mov (88,sp),d0
	mov (64,sp),d1
	or d1,d0
	mov d0,(56,sp)
	mov (92,sp),a0
	mov (68,sp),d0
	or d0,a0
	mov a0,(60,sp)
	mov (184,sp),d0
	lsr 24,d0
	mov (188,sp),d1
	mov d1,a0
	asl 8,a0
	mov a0,(52,sp)
	mov (52,sp),d1
	or d0,d1
	mov d1,(52,sp)
	mov (184,sp),d0
	mov d0,a0
	asl 8,a0
	mov a0,(48,sp)
	mov (228,sp),d0
	mov (48,sp),d1
	and d0,d1
	mov d1,(40,sp)
	mov (232,sp),d0
	mov (52,sp),a0
	and d0,a0
	mov a0,(44,sp)
	mov (40,sp),d0
	asl 8,d0
	mov d0,(36,sp)
	mov 0,d1
	mov d1,(32,sp)
	mov (56,sp),a0
	mov (32,sp),d0
	or d0,a0
	mov a0,(24,sp)
	mov (60,sp),d1
	mov (36,sp),a0
	or a0,d1
	mov d1,(28,sp)
	mov (228,sp),d1
	mov (184,sp),d0
	and d0,d1,d0
	mov d0,(16,sp)
	mov (232,sp),d1
	mov (188,sp),d0
	and d0,d1,d0
	mov d0,(20,sp)
	mov (16,sp),d0
	asl 24,d0
	mov d0,(12,sp)
	mov 0,d1
	mov d1,(8,sp)
	mov (24,sp),a0
	mov (8,sp),d0
	or d0,a0
	mov a0,(sp)
	mov (28,sp),d1
	mov (12,sp),a0
	or a0,d1
	mov d1,(4,sp)
	mov (sp),a0
	mov (4,sp),a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],224
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	add -4,sp
	mov d0,(8,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L467
.L470:
	mov (8,sp),d1
	mov (sp),d0
	lsr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L468
	mov (sp),d0
	inc d0
	jmp .L469
.L468:
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L467:
	mov (sp),d0
	cmp 31,d0
	bls .L470
	mov 0,d0
.L469:
	ret [],4
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	movm [d2],(sp)
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
	ret [d2],4
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	add -12,sp
	mov d0,(16,sp)
	mov -8388609,d1
	mov (16,sp),d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L477
	mov 2139095039,d1
	mov (16,sp),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L482
.L477:
	mov 1,d0
	jmp .L481
.L482:
	mov 0,d0
.L481:
	ret [],12
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov -1,d1
	mov -1048577,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L484
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L489
.L484:
	mov 1,d0
	jmp .L488
.L489:
	mov 0,d0
.L488:
	ret [],20
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov -1,d1
	mov -1048577,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L491
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L496
.L491:
	mov 1,d0
	jmp .L495
.L496:
	mov 0,d0
.L495:
	ret [],20
	.size	gl_isinfl, .-gl_isinfl
	.global _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (20,sp),d0
	call +__floatsidf,[],0
	mov d0,a0
	mov d1,a1
	mov (16,sp),d0
	mov a0,(d0)
	mov a1,(4,d0)
	nop
	ret [],12
	.size	_Qp_itoq, .-_Qp_itoq
	.global ldexpf
	.type	ldexpf, @function
ldexpf:
	add -16,sp
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d1
	mov (20,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L499
	mov (20,sp),d0
	mov d0,d1
	call +__addsf3,[],0
	mov d0,d1
	mov d1,d0
	mov d0,d1
	mov (20,sp),d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L499
	mov (24,sp),d0
	cmp 0,d0
	bge .L501
	mov 1056964608,d0
	jmp .L502
.L501:
	mov 1073741824,d0
.L502:
	mov d0,(12,sp)
.L505:
	mov (24,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L503
	mov (12,sp),d1
	mov (20,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(20,sp)
.L503:
	mov (24,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(24,sp)
	mov (24,sp),d0
	cmp 0,d0
	beq .L499
	mov (12,sp),d1
	mov (12,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(12,sp)
	jmp .L505
.L499:
	mov (20,sp),d0
	mov d0,d1
	mov d1,d0
	ret [],16
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	add -28,sp
	mov d0,(32,sp)
	mov d1,(36,sp)
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L510
	mov (32,sp),a0
	mov (36,sp),a1
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
	mov (32,sp),d0
	mov (36,sp),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L510
	mov (40,sp),d0
	cmp 0,d0
	bge .L512
	mov 0,d0
	mov 1071644672,d1
	jmp .L513
.L512:
	mov 0,d0
	mov 1073741824,d1
.L513:
	mov d0,(20,sp)
	mov d1,(24,sp)
.L516:
	mov (40,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L514
	mov (20,sp),d0
	mov d0,(12,sp)
	mov (24,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(32,sp)
	mov a1,(36,sp)
.L514:
	mov (40,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(40,sp)
	mov (40,sp),d0
	cmp 0,d0
	beq .L510
	mov (20,sp),d0
	mov d0,(12,sp)
	mov (24,sp),d0
	mov d0,(16,sp)
	mov (20,sp),d0
	mov (24,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(20,sp)
	mov a1,(24,sp)
	jmp .L516
.L510:
	mov (32,sp),d0
	mov (36,sp),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],28
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	add -28,sp
	mov d0,(32,sp)
	mov d1,(36,sp)
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L521
	mov (32,sp),a0
	mov (36,sp),a1
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
	mov (32,sp),d0
	mov (36,sp),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L521
	mov (40,sp),d0
	cmp 0,d0
	bge .L523
	mov 0,d0
	mov 1071644672,d1
	jmp .L524
.L523:
	mov 0,d0
	mov 1073741824,d1
.L524:
	mov d0,(20,sp)
	mov d1,(24,sp)
.L527:
	mov (40,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L525
	mov (20,sp),d0
	mov d0,(12,sp)
	mov (24,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(32,sp)
	mov a1,(36,sp)
.L525:
	mov (40,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(40,sp)
	mov (40,sp),d0
	cmp 0,d0
	beq .L521
	mov (20,sp),d0
	mov d0,(12,sp)
	mov (24,sp),d0
	mov d0,(16,sp)
	mov (20,sp),d0
	mov (24,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(20,sp)
	mov a1,(24,sp)
	jmp .L527
.L521:
	mov (32,sp),d0
	mov (36,sp),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],28
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (16,sp),d0
	mov d0,(4,sp)
	mov (12,sp),d0
	mov d0,(sp)
	jmp .L532
.L533:
	mov (4,sp),d0
	mov 1,d1
	add d0,d1
	mov d1,(4,sp)
	movbu (d0),a0
	mov (sp),d0
	mov 1,d1
	add d0,d1
	mov d1,(sp)
	movbu (d0),d1
	xor a0,d1
	movbu d1,(d0)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L532:
	mov (20,sp),d0
	cmp 0,d0
	bne .L533
	mov (12,sp),d0
	mov d0,d1
	mov d1,a0
	ret [],8
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	add -16,sp
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d0
	call +strlen,[],0
	mov d0,d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(12,sp)
	jmp .L536
.L538:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
	mov (12,sp),d0
	inc d0
	mov d0,(12,sp)
	mov (28,sp),d0
	add -1,d0
	mov d0,(28,sp)
.L536:
	mov (28,sp),d0
	cmp 0,d0
	beq .L537
	mov (24,sp),d0
	movbu (d0),d1
	mov (12,sp),d0
	movbu d1,(d0)
	mov (12,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L538
.L537:
	mov (28,sp),d0
	cmp 0,d0
	bne .L539
	mov (12,sp),d0
	mov 0,d1
	movbu d1,(d0)
.L539:
	mov (20,sp),d0
	mov d0,d1
	mov d1,a0
	ret [],16
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L542
.L547:
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L542:
	mov (sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L543
	mov (8,sp),d1
	mov (sp),d0
	add d1,d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L547
.L543:
	mov (sp),d0
	ret [],4
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	jmp .L549
.L553:
	mov (12,sp),d0
	mov d0,(sp)
	jmp .L550
.L552:
	mov (sp),d0
	mov 1,d1
	add d0,d1
	mov d1,(sp)
	movbu (d0),d1
	mov (8,sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L550
	mov (8,sp),d0
	jmp .L551
.L550:
	mov (sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L552
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L549:
	mov (8,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L553
	mov 0,d0
.L551:
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	add -4,sp
	mov d1,(12,sp)
	mov 0,d1
	mov d1,(sp)
.L556:
	movbu (d0),d1
	extbu d1
	mov (12,sp),a0
	cmp d1,a0
	bne .L555
	mov d0,(sp)
.L555:
	mov d0,d1
	mov 1,d0
	add d1,d0
	movbu (d1),d1
	extbu d1
	cmp 0,d1
	bne .L556
	mov (sp),d0
	mov d0,d1
	mov d1,a0
	ret [],4
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	add -24,sp
	mov d0,(28,sp)
	mov d1,(32,sp)
	mov (28,sp),d0
	mov d0,(20,sp)
	mov (32,sp),d0
	call +strlen,[],0
	mov d0,(16,sp)
	mov (16,sp),d0
	cmp 0,d0
	bne .L561
	mov (28,sp),d0
	jmp .L560
.L563:
	mov (32,sp),d1
	mov (20,sp),a0
	mov (16,sp),d0
	mov d0,(12,sp)
	mov a0,d0
	call +strncmp,[],0
	cmp 0,d0
	bne .L562
	mov (20,sp),d0
	jmp .L560
.L562:
	mov (20,sp),d0
	inc d0
	mov d0,(20,sp)
.L561:
	mov (32,sp),d0
	movbu (d0),d0
	extbu d0,d1
	mov (20,sp),d0
	call +strchr,[],0
	mov a0,(20,sp)
	mov (20,sp),d0
	cmp 0,d0
	bne .L563
	mov 0,d0
.L560:
	mov d0,d1
	mov d1,a0
	ret [],24
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3],(sp)
	add -20,sp
	mov d0,(32,sp)
	mov d1,(36,sp)
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L565
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (40,sp),d0
	mov (44,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L567
.L565:
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L568
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (40,sp),d0
	mov (44,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L568
.L567:
	mov (32,sp),d2
	mov (36,sp),d0
	mov d0,d3
	xor -2147483648,d3
	jmp .L571
.L568:
	mov (32,sp),d2
	mov (36,sp),d3
.L571:
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3],28
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	add -24,sp
	mov d0,(28,sp)
	mov d1,(32,sp)
	mov (32,sp),d1
	mov (40,sp),d0
	sub d0,d1,d0
	mov (28,sp),d1
	add d1,d0
	mov d0,(16,sp)
	mov (40,sp),d0
	cmp 0,d0
	bne .L575
	mov (28,sp),d0
	jmp .L576
.L575:
	mov 1,a0
	mov (32,sp),d1
	mov (40,sp),d0
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
	mov (28,sp),d0
	mov d0,(20,sp)
	jmp .L579
.L581:
	mov (20,sp),d0
	movbu (d0),d1
	mov (36,sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L580
	mov (20,sp),d0
	mov 1,a0
	add d0,a0
	mov (36,sp),d0
	mov 1,d1
	add d0,d1
	mov (40,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L580
	mov (20,sp),d0
	jmp .L576
.L580:
	mov (20,sp),d0
	inc d0
	mov d0,(20,sp)
.L579:
	mov (20,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bls .L581
	mov 0,d0
.L576:
	mov d0,d1
	mov d1,a0
	ret [],24
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	add -16,sp
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (24,sp),d1
	mov (20,sp),a0
	mov (28,sp),d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcpy,[],0
	mov a0,d1
	mov (28,sp),d0
	add d1,d0
	mov d0,d1
	mov d1,a0
	ret [],16
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a2,a3],(sp)
	add -28,sp
	mov d0,(48,sp)
	mov d1,(52,sp)
	mov 0,d0
	mov d0,(20,sp)
	mov 0,d0
	mov d0,(24,sp)
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L585
	mov (48,sp),a2
	mov (52,sp),d0
	mov d0,a3
	xor -2147483648,a3
	mov a2,(48,sp)
	mov a3,(52,sp)
	mov 1,d0
	mov d0,(24,sp)
.L585:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L602
	jmp .L589
.L590:
	mov (20,sp),d0
	inc d0
	mov d0,(20,sp)
	mov 0,d1
	mov 1073741824,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__divdf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(48,sp)
	mov a1,(52,sp)
.L589:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L590
	jmp .L591
.L602:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L591
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L591
	jmp .L594
.L595:
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
	mov (48,sp),a0
	mov (52,sp),a1
	mov a0,(12,sp)
	mov a1,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__adddf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(48,sp)
	mov a1,(52,sp)
.L594:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L595
.L591:
	mov (56,sp),d0
	mov (20,sp),d1
	mov d1,(d0)
	mov (24,sp),d0
	cmp 0,d0
	beq .L596
	mov (48,sp),d2
	mov (52,sp),d0
	mov d0,d3
	xor -2147483648,d3
	mov d2,(48,sp)
	mov d3,(52,sp)
.L596:
	mov (48,sp),d0
	mov (52,sp),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3,a2,a3],44
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov d0,(52,sp)
	mov d1,(56,sp)
	mov 0,d0
	mov d0,(8,sp)
	mov 0,d0
	mov d0,(12,sp)
	mov (52,sp),d0
	mov d0,(sp)
	mov (56,sp),d0
	mov d0,(4,sp)
	jmp .L604
.L607:
	mov (sp),d0
	mov d0,r2
	and 1,r2
	mov (4,sp),d0
	mov d0,r3
	and 0,r3
	mov r2,d0
	or r3,d0
	cmp 0,d0
	beq .L605
	mov (8,sp),r0
	mov (12,sp),r1
	mov (60,sp),d0
	mov (64,sp),d1
	add d0,r0,a2
	addc d1,r1,a3
	mov a2,(8,sp)
	mov a3,(12,sp)
.L605:
	mov (60,sp),d0
	lsr 31,d0
	mov (64,sp),d1
	mov d1,a1
	add a1,a1
	or d0,a1
	mov (60,sp),d0
	mov d0,a0
	add a0,a0
	mov a0,(60,sp)
	mov a1,(64,sp)
	mov (4,sp),d0
	asl 31,d0
	mov (sp),d1
	mov d1,d2
	lsr 1,d2
	or d0,d2
	mov (4,sp),d0
	mov d0,d3
	lsr 1,d3
	mov d2,(sp)
	mov d3,(4,sp)
.L604:
	mov (sp),d0
	mov (4,sp),d1
	or d1,d0
	cmp 0,d0
	bne .L607
	mov (8,sp),d0
	mov (12,sp),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],48
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov 1,d0
	mov d0,(4,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L610
.L612:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (4,sp),d0
	add d0,d0
	mov d0,(4,sp)
.L610:
	mov (16,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L613
	mov (4,sp),d0
	cmp 0,d0
	beq .L613
	mov (16,sp),d0
	cmp 0,d0
	bge .L612
	jmp .L613
.L615:
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L614
	mov (12,sp),d1
	mov (16,sp),d0
	sub d0,d1,d0
	mov d0,(12,sp)
	mov (sp),d1
	mov (4,sp),d0
	or d1,d0
	mov d0,(sp)
.L614:
	mov (4,sp),d0
	lsr 1,d0
	mov d0,(4,sp)
	mov (16,sp),d0
	lsr 1,d0
	mov d0,(16,sp)
.L613:
	mov (4,sp),d0
	cmp 0,d0
	bne .L615
	mov (20,sp),d0
	cmp 0,d0
	beq .L616
	mov (12,sp),d0
	jmp .L617
.L616:
	mov (sp),d0
.L617:
	ret [],8
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	add -4,sp
	movbu d0,(8,sp)
	movbu (8,sp),d0
	cmp 0,d0
	bne .L619
	mov 7,d0
	jmp .L620
.L619:
	movbu (8,sp),d0
	mov d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	mov d0,(sp)
	mov (sp),d0
	add -1,d0
.L620:
	ret [],4
	.size	__clrsbqi2, .-__clrsbqi2
	.global __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (12,sp),d0
	cmp 0,d0
	bge .L622
	mov (8,sp),d0
	mov d0,a0
	not a0
	mov (12,sp),d0
	mov d0,a1
	not a1
	mov a0,(8,sp)
	mov a1,(12,sp)
.L622:
	mov (8,sp),d0
	mov (12,sp),d1
	or d1,d0
	cmp 0,d0
	bne .L624
	mov 63,d0
	jmp .L625
.L624:
	mov (8,sp),d0
	mov (12,sp),d1
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
	mov a0,(sp)
	mov (sp),d0
	add -1,d0
.L625:
	ret [],4
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L629
.L631:
	mov (8,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L630
	mov (sp),d1
	mov (12,sp),d0
	add d1,d0
	mov d0,(sp)
.L630:
	mov (8,sp),d0
	lsr 1,d0
	mov d0,(8,sp)
	mov (12,sp),d0
	add d0,d0
	mov d0,(12,sp)
.L629:
	mov (8,sp),d0
	cmp 0,d0
	bne .L631
	mov (sp),d0
	ret [],4
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (32,sp),d0
	lsr 3,d0
	mov d0,(8,sp)
	mov (32,sp),d0
	and -8,d0
	mov d0,(12,sp)
	mov (24,sp),d0
	mov d0,(4,sp)
	mov (28,sp),d0
	mov d0,(sp)
	mov (4,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcs .L634
	mov (sp),d1
	mov (32,sp),d0
	add d1,d0
	mov (4,sp),d1
	cmp d0,d1
	bls .L641
.L634:
	mov 0,d0
	mov d0,(16,sp)
	jmp .L636
.L637:
	mov (16,sp),d0
	asl2 d0
	add d0,d0
	mov (28,sp),d1
	add d0,d1,a1
	mov (16,sp),d0
	asl2 d0
	add d0,d0
	mov (24,sp),d1
	add d0,d1,a0
	mov (a1),d0
	mov (4,a1),d1
	mov d0,(a0)
	mov d1,(4,a0)
	mov (16,sp),d0
	inc d0
	mov d0,(16,sp)
.L636:
	mov (16,sp),d1
	mov (8,sp),d0
	cmp d0,d1
	bcs .L637
	jmp .L638
.L639:
	mov (sp),d1
	mov (12,sp),d0
	add d0,d1
	mov (4,sp),a0
	mov (12,sp),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
	mov (12,sp),d0
	inc d0
	mov d0,(12,sp)
.L638:
	mov (32,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bhi .L639
	jmp .L640
.L642:
	mov (sp),d1
	mov (32,sp),d0
	add d0,d1
	mov (4,sp),a0
	mov (32,sp),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L641:
	mov (32,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(32,sp)
	cmp 0,d0
	bne .L642
.L640:
	nop
	ret [],20
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	add -16,sp
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (28,sp),d0
	lsr 1,d0
	mov d0,(8,sp)
	mov (20,sp),d0
	mov d0,(4,sp)
	mov (24,sp),d0
	mov d0,(sp)
	mov (4,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcs .L644
	mov (sp),d1
	mov (28,sp),d0
	add d1,d0
	mov (4,sp),d1
	cmp d0,d1
	bls .L650
.L644:
	mov 0,d0
	mov d0,(12,sp)
	jmp .L646
.L647:
	mov (12,sp),d0
	add d0,d0
	mov (24,sp),d1
	add d0,d1
	mov (12,sp),d0
	add d0,d0
	mov (20,sp),a0
	add a0,d0
	movhu (d1),d1
	movhu d1,(d0)
	mov (12,sp),d0
	inc d0
	mov d0,(12,sp)
.L646:
	mov (12,sp),d1
	mov (8,sp),d0
	cmp d0,d1
	bcs .L647
	mov (28,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L649
	mov (28,sp),d0
	add -1,d0
	mov (sp),d1
	add d0,d1
	mov (28,sp),d0
	add -1,d0
	mov (4,sp),a0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
	jmp .L649
.L651:
	mov (sp),d1
	mov (28,sp),d0
	add d0,d1
	mov (4,sp),a0
	mov (28,sp),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L650:
	mov (28,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(28,sp)
	cmp 0,d0
	bne .L651
.L649:
	nop
	ret [],16
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (32,sp),d0
	lsr 2,d0
	mov d0,(8,sp)
	mov (32,sp),d0
	and -4,d0
	mov d0,(12,sp)
	mov (24,sp),d0
	mov d0,(4,sp)
	mov (28,sp),d0
	mov d0,(sp)
	mov (4,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcs .L653
	mov (sp),d1
	mov (32,sp),d0
	add d1,d0
	mov (4,sp),d1
	cmp d0,d1
	bls .L660
.L653:
	mov 0,d0
	mov d0,(16,sp)
	jmp .L655
.L656:
	mov (16,sp),d0
	asl2 d0
	mov (28,sp),d1
	add d0,d1
	mov (16,sp),d0
	asl2 d0
	mov (24,sp),a0
	add a0,d0
	mov (d1),d1
	mov d1,(d0)
	mov (16,sp),d0
	inc d0
	mov d0,(16,sp)
.L655:
	mov (16,sp),d1
	mov (8,sp),d0
	cmp d0,d1
	bcs .L656
	jmp .L657
.L658:
	mov (sp),d1
	mov (12,sp),d0
	add d0,d1
	mov (4,sp),a0
	mov (12,sp),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
	mov (12,sp),d0
	inc d0
	mov d0,(12,sp)
.L657:
	mov (32,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bhi .L658
	jmp .L659
.L661:
	mov (sp),d1
	mov (32,sp),d0
	add d0,d1
	mov (4,sp),a0
	mov (32,sp),d0
	add a0,d0
	movbu (d1),d1
	movbu d1,(d0)
.L660:
	mov (32,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(32,sp)
	cmp 0,d0
	bne .L661
.L659:
	nop
	ret [],20
	.size	__cmovw, .-__cmovw
	.global __modi
	.type	__modi, @function
__modi:
	movm [d2],(sp)
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov (12,sp),d1
	ext d0
	mov mdr,d2
	mov d2,a0
	mov d0,a1
	mov a0,d2
	mov d2,mdr
	div d1,a1
	mov mdr,d0
	ret [d2],4
	.size	__modi, .-__modi
	.global __uitod
	.type	__uitod, @function
__uitod:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,(24,sp)
	mov (24,sp),d0
	call +__floatunsidf,[],0
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3],20
	.size	__uitod, .-__uitod
	.global __uitof
	.type	__uitof, @function
__uitof:
	add -12,sp
	mov d0,(16,sp)
	mov (16,sp),d0
	call +__floatunsisf,[],0
	mov d0,d1
	mov d1,d0
	ret [],12
	.size	__uitof, .-__uitof
	.global __ulltod
	.type	__ulltod, @function
__ulltod:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__floatundidf,[],0
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3],20
	.size	__ulltod, .-__ulltod
	.global __ulltof
	.type	__ulltof, @function
__ulltof:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (16,sp),d0
	mov (20,sp),d1
	call +__floatundisf,[],0
	mov d0,d1
	mov d1,d0
	ret [],12
	.size	__ulltof, .-__ulltof
	.global __umodi
	.type	__umodi, @function
__umodi:
	movm [d2],(sp)
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d1
	mov (12,sp),d0
	mov 0,d2
	mov d2,mdr
	divu d0,d1
	mov mdr,d0
	ret [d2],4
	.size	__umodi, .-__umodi
	.global __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	add -4,sp
	movhu d0,(8,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L675
.L678:
	movhu (8,sp),d1
	mov 15,a0
	mov (sp),d0
	sub d0,a0,d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	bne .L677
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L675:
	mov (sp),d0
	cmp 15,d0
	ble .L678
.L677:
	mov (sp),d0
	ret [],4
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	add -4,sp
	movhu d0,(8,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L682
.L685:
	movhu (8,sp),d1
	mov (sp),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	bne .L684
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L682:
	mov (sp),d0
	cmp 15,d0
	ble .L685
.L684:
	mov (sp),d0
	ret [],4
	.size	__ctzhi2, .-__ctzhi2
	.global __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	add -12,sp
	mov d0,(16,sp)
	mov 1191182336,d1
	mov (16,sp),d0
	call +__gesf2,[],0
	cmp 0,d0
	blt .L693
	mov 1191182336,d1
	mov (16,sp),d0
	call +__subsf3,[],0
	mov d0,d1
	mov d1,d0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L691
.L693:
	mov (16,sp),d0
	call +__fixsfsi,[],0
.L691:
	ret [],12
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	add -8,sp
	movhu d0,(12,sp)
	mov 0,d0
	mov d0,(sp)
	mov 0,d0
	mov d0,(4,sp)
	jmp .L695
.L697:
	movhu (12,sp),d1
	mov (4,sp),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L696
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L696:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L695:
	mov (4,sp),d0
	cmp 15,d0
	ble .L697
	mov (sp),d0
	and 1,d0
	ret [],8
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	add -8,sp
	movhu d0,(12,sp)
	mov 0,d0
	mov d0,(sp)
	mov 0,d0
	mov d0,(4,sp)
	jmp .L700
.L702:
	movhu (12,sp),d1
	mov (4,sp),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L701
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L701:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L700:
	mov (4,sp),d0
	cmp 15,d0
	ble .L702
	mov (sp),d0
	ret [],8
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L705
.L707:
	mov (8,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L706
	mov (sp),d1
	mov (12,sp),d0
	add d1,d0
	mov d0,(sp)
.L706:
	mov (8,sp),d0
	lsr 1,d0
	mov d0,(8,sp)
	mov (12,sp),d0
	add d0,d0
	mov d0,(12,sp)
.L705:
	mov (8,sp),d0
	cmp 0,d0
	bne .L707
	mov (sp),d0
	ret [],4
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov 0,d0
	mov d0,(sp)
	mov (8,sp),d0
	cmp 0,d0
	bne .L712
	mov 0,d0
	jmp .L711
.L714:
	mov (12,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L713
	mov (sp),d1
	mov (8,sp),d0
	add d1,d0
	mov d0,(sp)
.L713:
	mov (8,sp),d0
	add d0,d0
	mov d0,(8,sp)
	mov (12,sp),d0
	lsr 1,d0
	mov d0,(12,sp)
.L712:
	mov (12,sp),d0
	cmp 0,d0
	bne .L714
	mov (sp),d0
.L711:
	ret [],4
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov 1,d0
	mov d0,(4,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L716
.L718:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (4,sp),d0
	add d0,d0
	mov d0,(4,sp)
.L716:
	mov (16,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L719
	mov (4,sp),d0
	cmp 0,d0
	beq .L719
	mov (16,sp),d0
	cmp 0,d0
	bge .L718
	jmp .L719
.L721:
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L720
	mov (12,sp),d1
	mov (16,sp),d0
	sub d0,d1,d0
	mov d0,(12,sp)
	mov (sp),d1
	mov (4,sp),d0
	or d1,d0
	mov d0,(sp)
.L720:
	mov (4,sp),d0
	lsr 1,d0
	mov d0,(4,sp)
	mov (16,sp),d0
	lsr 1,d0
	mov d0,(16,sp)
.L719:
	mov (4,sp),d0
	cmp 0,d0
	bne .L721
	mov (20,sp),d0
	cmp 0,d0
	beq .L722
	mov (12,sp),d0
	jmp .L723
.L722:
	mov (sp),d0
.L723:
	ret [],8
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (20,sp),d1
	mov (16,sp),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L732
	mov -1,d0
	jmp .L727
.L732:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L733
	mov 1,d0
	jmp .L727
.L733:
	mov 0,d0
.L727:
	ret [],12
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L742
	mov -1,d0
	jmp .L737
.L742:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L743
	mov 1,d0
	jmp .L737
.L743:
	mov 0,d0
.L737:
	ret [],20
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	movm [d2,d3,a2,a3],(sp)
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d0
	mov d0,a2
	asr 31,d0
	mov d0,a3
	mov (24,sp),d0
	mov d0,d2
	asr 31,d0
	mov d0,d3
	mul a3,d2,d0,d1
	mul d3,a2,a0,d0
	add d1,d0
	mulu a2,d2,a1,a0
	add a1,d0
	mov d0,a1
	mov a0,d2
	mov a1,d3
	mov d2,d0
	mov d3,d1
	ret [d2,d3,a2,a3],16
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	movm [d2,d3,a2,a3],(sp)
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d0
	mov d0,d2
	mov 0,d3
	mov (24,sp),d0
	mov d0,a0
	mov 0,a1
	mul d3,a0,d0,d1
	mul a1,d2,a2,d0
	add d1,d0
	mulu d2,a0,a3,a2
	add a3,d0
	mov d0,a3
	mov a2,a0
	mov a3,a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3,a2,a3],16
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.global __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov 0,d0
	mov d0,(4,sp)
	mov 0,d0
	mov d0,(sp)
	mov (20,sp),d0
	cmp 0,d0
	bge .L749
	mov (20,sp),d0
	not d0
	inc d0
	mov d0,(20,sp)
	mov 1,d0
	mov d0,(4,sp)
.L749:
	mov 0,d0
	movbu d0,(11,sp)
	jmp .L750
.L753:
	mov (20,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L751
	mov (sp),d1
	mov (16,sp),d0
	add d1,d0
	mov d0,(sp)
.L751:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (20,sp),d0
	asr 1,d0
	mov d0,(20,sp)
	movbu (11,sp),d0
	inc d0
	movbu d0,(11,sp)
.L750:
	mov (20,sp),d0
	cmp 0,d0
	beq .L752
	movbu (11,sp),d0
	cmp 31,d0
	bls .L753
.L752:
	mov (4,sp),d0
	cmp 0,d0
	beq .L754
	mov (sp),d0
	not d0
	inc d0
	jmp .L756
.L754:
	mov (sp),d0
.L756:
	ret [],12
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	add -24,sp
	mov d0,(28,sp)
	mov d1,(32,sp)
	mov 0,d0
	mov d0,(20,sp)
	mov (28,sp),d0
	cmp 0,d0
	bge .L758
	mov (28,sp),d0
	not d0
	inc d0
	mov d0,(28,sp)
	mov 1,d1
	mov (20,sp),d0
	cmp 0,d0
	beq .L759
	mov 0,d1
.L759:
	extbu d1,d0
	mov d0,(20,sp)
.L758:
	mov (32,sp),d0
	cmp 0,d0
	bge .L760
	mov (32,sp),d0
	not d0
	inc d0
	mov d0,(32,sp)
	mov 1,d1
	mov (20,sp),d0
	cmp 0,d0
	beq .L761
	mov 0,d1
.L761:
	extbu d1,d0
	mov d0,(20,sp)
.L760:
	mov (28,sp),a0
	mov (32,sp),d1
	mov 0,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(16,sp)
	mov (20,sp),d0
	cmp 0,d0
	beq .L762
	mov (16,sp),d0
	not d0
	inc d0
	mov d0,(16,sp)
.L762:
	mov (16,sp),d0
	ret [],24
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	add -24,sp
	mov d0,(28,sp)
	mov d1,(32,sp)
	mov 0,d0
	mov d0,(20,sp)
	mov (28,sp),d0
	cmp 0,d0
	bge .L765
	mov (28,sp),d0
	not d0
	inc d0
	mov d0,(28,sp)
	mov 1,d0
	mov d0,(20,sp)
.L765:
	mov (32,sp),d0
	cmp 0,d0
	bge .L766
	mov (32,sp),d0
	not d0
	inc d0
	mov d0,(32,sp)
.L766:
	mov (28,sp),a0
	mov (32,sp),d1
	mov 1,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(16,sp)
	mov (20,sp),d0
	cmp 0,d0
	beq .L767
	mov (16,sp),d0
	not d0
	inc d0
	mov d0,(16,sp)
.L767:
	mov (16,sp),d0
	ret [],24
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	add -4,sp
	movhu d0,(8,sp)
	mov d1,d0
	movhu d0,(12,sp)
	mov 1,d0
	movhu d0,(2,sp)
	mov 0,d0
	movhu d0,(sp)
	jmp .L770
.L772:
	movhu (12,sp),d0
	add d0,d0
	movhu d0,(12,sp)
	movhu (2,sp),d0
	add d0,d0
	movhu d0,(2,sp)
.L770:
	movhu (12,sp),d1
	movhu (8,sp),d0
	cmp d0,d1
	bcc .L773
	movhu (2,sp),d0
	cmp 0,d0
	beq .L773
	movhu (12,sp),d0
	exth d0
	cmp 0,d0
	bge .L772
	jmp .L773
.L775:
	movhu (8,sp),d1
	movhu (12,sp),d0
	cmp d0,d1
	bcs .L774
	movhu (8,sp),d1
	movhu (12,sp),d0
	sub d0,d1,d0
	movhu d0,(8,sp)
	movhu (sp),d1
	movhu (2,sp),d0
	or d1,d0
	movhu d0,(sp)
.L774:
	movhu (2,sp),d0
	lsr 1,d0
	movhu d0,(2,sp)
	movhu (12,sp),d0
	lsr 1,d0
	movhu d0,(12,sp)
.L773:
	movhu (2,sp),d0
	cmp 0,d0
	bne .L775
	mov (16,sp),d0
	cmp 0,d0
	beq .L776
	movhu (8,sp),d0
	jmp .L777
.L776:
	movhu (sp),d0
.L777:
	ret [],4
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov 1,d0
	mov d0,(4,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L779
.L781:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (4,sp),d0
	add d0,d0
	mov d0,(4,sp)
.L779:
	mov (16,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L782
	mov (4,sp),d0
	cmp 0,d0
	beq .L782
	mov (16,sp),d0
	cmp 0,d0
	bge .L781
	jmp .L782
.L784:
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L783
	mov (12,sp),d1
	mov (16,sp),d0
	sub d0,d1,d0
	mov d0,(12,sp)
	mov (sp),d1
	mov (4,sp),d0
	or d1,d0
	mov d0,(sp)
.L783:
	mov (4,sp),d0
	lsr 1,d0
	mov d0,(4,sp)
	mov (16,sp),d0
	lsr 1,d0
	mov d0,(16,sp)
.L782:
	mov (4,sp),d0
	cmp 0,d0
	bne .L784
	mov (20,sp),d0
	cmp 0,d0
	beq .L785
	mov (12,sp),d0
	jmp .L786
.L785:
	mov (sp),d0
.L786:
	ret [],8
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov 32,d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov d0,(8,sp)
	mov (28,sp),d0
	mov d0,(12,sp)
	mov (32,sp),d1
	mov (16,sp),d0
	and d1,d0
	cmp 0,d0
	beq .L788
	mov 0,d0
	mov d0,(sp)
	mov (8,sp),d1
	mov (32,sp),a0
	mov (16,sp),d0
	sub d0,a0,d0
	asl d0,d1,d0
	mov d0,(4,sp)
	jmp .L789
.L788:
	mov (32,sp),d0
	cmp 0,d0
	bne .L790
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L792
.L790:
	mov (8,sp),d1
	mov (32,sp),d0
	asl d0,d1,d0
	mov d0,(sp)
	mov (12,sp),d0
	mov d0,d1
	mov (32,sp),d0
	asl d0,d1
	mov (8,sp),a0
	mov (16,sp),a1
	mov (32,sp),d0
	sub d0,a1,d0
	lsr d0,a0,d0
	or d1,d0
	mov d0,(4,sp)
.L789:
	mov (sp),d0
	mov (4,sp),d1
.L792:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov 32,d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov d0,(8,sp)
	mov (28,sp),d0
	mov d0,(12,sp)
	mov (32,sp),d1
	mov (16,sp),d0
	and d1,d0
	cmp 0,d0
	beq .L794
	mov (12,sp),d1
	mov (16,sp),d0
	add -1,d0
	asr d0,d1,d0
	mov d0,(4,sp)
	mov (12,sp),d1
	mov (32,sp),a0
	mov (16,sp),d0
	sub d0,a0,d0
	asr d0,d1,d0
	mov d0,(sp)
	jmp .L795
.L794:
	mov (32,sp),d0
	cmp 0,d0
	bne .L796
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L798
.L796:
	mov (12,sp),d1
	mov (32,sp),d0
	asr d0,d1,d0
	mov d0,(4,sp)
	mov (12,sp),d0
	mov d0,a0
	mov (16,sp),d1
	mov (32,sp),d0
	sub d0,d1,d0
	asl d0,a0,d1
	mov (8,sp),a0
	mov (32,sp),d0
	lsr d0,a0,d0
	or d1,d0
	mov d0,(sp)
.L795:
	mov (sp),d0
	mov (4,sp),d1
.L798:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -112,sp
	mov d0,(148,sp)
	mov d1,(152,sp)
	mov (152,sp),d0
	mov d0,r0
	lsr 24,r0
	mov 0,r1
	mov (152,sp),d0
	mov d0,a0
	lsr 8,a0
	mov 0,a1
	mov a0,d2
	and 65280,d2
	mov a1,d3
	and 0,d3
	or d2,r0,r6
	or d3,r1,r7
	mov (152,sp),d0
	mov d0,d1
	asl 8,d1
	mov (148,sp),d0
	mov d0,a2
	lsr 24,a2
	or d1,a2
	mov (152,sp),d0
	mov d0,a3
	lsr 24,a3
	mov a2,r4
	and 16711680,r4
	mov a3,r5
	and 0,r5
	or r4,r6,d0
	mov d0,(104,sp)
	or r5,r7,d1
	mov d1,(108,sp)
	mov (152,sp),d0
	mov d0,d1
	asl 24,d1
	mov (148,sp),d0
	mov d0,r2
	lsr 8,r2
	or d1,r2
	mov (152,sp),d0
	mov d0,r3
	lsr 8,r3
	mov r2,a0
	and -16777216,a0
	mov a0,(96,sp)
	mov r3,d0
	and 0,d0
	mov d0,(100,sp)
	mov (104,sp),d1
	mov (96,sp),a0
	or a0,d1
	mov d1,(88,sp)
	mov (108,sp),d0
	mov (100,sp),d1
	or d1,d0
	mov d0,(92,sp)
	mov (148,sp),d0
	mov d0,d1
	lsr 24,d1
	mov (152,sp),d0
	mov d0,a0
	asl 8,a0
	mov a0,(84,sp)
	mov (84,sp),d0
	or d1,d0
	mov d0,(84,sp)
	mov (148,sp),d0
	mov d0,d1
	asl 8,d1
	mov d1,(80,sp)
	mov (80,sp),a0
	and 0,a0
	mov a0,(72,sp)
	movbu (84,sp),d0
	mov d0,(76,sp)
	mov (88,sp),d1
	mov (72,sp),a0
	or a0,d1
	mov d1,(64,sp)
	mov (92,sp),d0
	mov (76,sp),d1
	or d1,d0
	mov d0,(68,sp)
	mov (148,sp),d0
	mov d0,d1
	lsr 8,d1
	mov (152,sp),d0
	mov d0,a0
	asl 24,a0
	mov a0,(60,sp)
	mov (60,sp),d0
	or d1,d0
	mov d0,(60,sp)
	mov (148,sp),d0
	mov d0,d1
	asl 24,d1
	mov d1,(56,sp)
	mov (56,sp),a0
	and 0,a0
	mov a0,(48,sp)
	mov (60,sp),d0
	and 65280,d0
	mov d0,(52,sp)
	mov (64,sp),d1
	mov (48,sp),a0
	or a0,d1
	mov d1,(40,sp)
	mov (68,sp),d0
	mov (52,sp),d1
	or d1,d0
	mov d0,(44,sp)
	mov (148,sp),d0
	mov d0,a0
	asl 8,a0
	mov a0,(36,sp)
	mov 0,d0
	mov d0,(32,sp)
	mov (32,sp),d1
	and 0,d1
	mov d1,(24,sp)
	mov (36,sp),a0
	and 16711680,a0
	mov a0,(28,sp)
	mov (40,sp),d0
	mov (24,sp),d1
	or d1,d0
	mov d0,(16,sp)
	mov (44,sp),a0
	mov (28,sp),d0
	or d0,a0
	mov a0,(20,sp)
	mov (148,sp),d0
	mov d0,d1
	asl 24,d1
	mov d1,(12,sp)
	mov 0,a0
	mov a0,(8,sp)
	mov (16,sp),d0
	mov (8,sp),d1
	or d1,d0
	mov d0,(sp)
	mov (20,sp),a0
	mov (12,sp),d0
	or d0,a0
	mov a0,(4,sp)
	mov (sp),a0
	mov (4,sp),a1
	mov a0,d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],144
	.size	__bswapdi2, .-__bswapdi2
	.global __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	mov d0,(4,sp)
	mov (4,sp),d0
	mov d0,d1
	lsr 24,d1
	mov (4,sp),d0
	lsr 8,d0
	and 65280,d0
	or d0,d1
	mov (4,sp),d0
	asl 8,d0
	and 16711680,d0
	or d0,d1
	mov (4,sp),d0
	asl 24,d0
	or d1,d0
	rets
	.size	__bswapsi2, .-__bswapsi2
	.global __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	add -12,sp
	mov d0,(16,sp)
	mov (16,sp),d0
	mov d0,(8,sp)
	mov (8,sp),d0
	cmp 65535,d0
	bhi .L804
	mov 16,d0
	jmp .L805
.L804:
	mov 0,d0
.L805:
	mov d0,(4,sp)
	mov 16,d1
	mov (4,sp),d0
	sub d0,d1,d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov d0,(sp)
	mov (8,sp),d0
	and 65280,d0
	cmp 0,d0
	bne .L806
	mov 8,d0
	jmp .L807
.L806:
	mov 0,d0
.L807:
	mov d0,(4,sp)
	mov 8,d1
	mov (4,sp),d0
	sub d0,d1,d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov (sp),d1
	add d1,d0
	mov d0,(sp)
	mov (8,sp),d0
	and 240,d0
	cmp 0,d0
	bne .L808
	mov 4,d0
	jmp .L809
.L808:
	mov 0,d0
.L809:
	mov d0,(4,sp)
	mov 4,d1
	mov (4,sp),d0
	sub d0,d1,d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov (sp),d1
	add d1,d0
	mov d0,(sp)
	mov (8,sp),d0
	and 12,d0
	cmp 0,d0
	bne .L810
	mov 2,d0
	jmp .L811
.L810:
	mov 0,d0
.L811:
	mov d0,(4,sp)
	mov 2,d1
	mov (4,sp),d0
	sub d0,d1,d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov (sp),d1
	add d1,d0
	mov d0,(sp)
	mov (8,sp),d0
	and 2,d0
	mov 1,d1
	cmp 0,d0
	beq .L812
	mov 0,d1
.L812:
	extbu d1,d0
	mov d0,a0
	mov 2,d1
	mov (8,sp),d0
	sub d0,d1,d0
	mul a0,d0,a1,d1
	mov (sp),d0
	add d1,d0
	ret [],12
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	add -16,sp
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d0
	mov d0,(8,sp)
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(sp)
	mov (32,sp),d0
	mov d0,(4,sp)
	mov (12,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	bge .L815
	mov 0,d0
	jmp .L820
.L815:
	mov (12,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	ble .L817
	mov 2,d0
	jmp .L820
.L817:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcc .L818
	mov 0,d0
	jmp .L820
.L818:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bls .L819
	mov 2,d0
	jmp .L820
.L819:
	mov 1,d0
.L820:
	ret [],16
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),a0
	mov (28,sp),a1
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__cmpdi2,[],0
	add -1,d0
	ret [],20
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	add -12,sp
	mov d0,(16,sp)
	mov (16,sp),d0
	mov d0,(8,sp)
	mov (8,sp),d0
	exthu d0
	cmp 0,d0
	bne .L824
	mov 16,d0
	jmp .L825
.L824:
	mov 0,d0
.L825:
	mov d0,(4,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov d0,(sp)
	mov (8,sp),d0
	extbu d0
	cmp 0,d0
	bne .L826
	mov 8,d0
	jmp .L827
.L826:
	mov 0,d0
.L827:
	mov d0,(4,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov (sp),d1
	add d1,d0
	mov d0,(sp)
	mov (8,sp),d0
	and 15,d0
	cmp 0,d0
	bne .L828
	mov 4,d0
	jmp .L829
.L828:
	mov 0,d0
.L829:
	mov d0,(4,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov (sp),d1
	add d1,d0
	mov d0,(sp)
	mov (8,sp),d0
	and 3,d0
	cmp 0,d0
	bne .L830
	mov 2,d0
	jmp .L831
.L830:
	mov 0,d0
.L831:
	mov d0,(4,sp)
	mov (4,sp),d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	and 3,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	mov (sp),d1
	add d1,d0
	mov d0,(sp)
	mov (8,sp),d0
	not d0
	mov d0,d1
	and 1,d1
	mov (8,sp),d0
	lsr 1,d0
	mov 2,a0
	sub d0,a0,d0
	not d1
	inc d1
	and d0,d1
	mov (sp),d0
	add d1,d0
	ret [],12
	.size	__ctzsi2, .-__ctzsi2
	.global __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov 32,d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (32,sp),d1
	mov (16,sp),d0
	and d1,d0
	cmp 0,d0
	beq .L834
	mov 0,d0
	mov d0,(4,sp)
	mov (12,sp),d1
	mov (32,sp),a0
	mov (16,sp),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	mov d0,(sp)
	jmp .L835
.L834:
	mov (32,sp),d0
	cmp 0,d0
	bne .L836
	mov (24,sp),d0
	mov (28,sp),d1
	jmp .L838
.L836:
	mov (12,sp),d1
	mov (32,sp),d0
	lsr d0,d1,d0
	mov d0,(4,sp)
	mov (12,sp),d1
	mov (16,sp),a0
	mov (32,sp),d0
	sub d0,a0,d0
	asl d0,d1
	mov (8,sp),a0
	mov (32,sp),d0
	lsr d0,a0,d0
	or d1,d0
	mov d0,(sp)
.L835:
	mov (sp),a0
	mov (4,sp),a1
	mov a0,d0
	mov a1,d1
.L838:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov 16,d0
	mov d0,(16,sp)
	mov (16,sp),d0
	mov -1,d1
	lsr d0,d1,d0
	mov d0,(12,sp)
	mov (24,sp),d1
	mov (12,sp),d0
	and d0,d1
	mov (28,sp),a0
	mov (12,sp),d0
	and a0,d0
	mul d1,d0
	mov d0,(sp)
	mov (sp),d1
	mov (16,sp),d0
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (sp),d1
	mov (12,sp),d0
	and d1,d0
	mov d0,(sp)
	mov (16,sp),d0
	mov (24,sp),d1
	lsr d0,d1
	mov (28,sp),a0
	mov (12,sp),d0
	and a0,d0
	mul d1,d0
	mov (8,sp),d1
	add d1,d0
	mov d0,(8,sp)
	mov (sp),d1
	mov (8,sp),a0
	mov (12,sp),d0
	and d0,a0
	mov (16,sp),d0
	asl d0,a0,d0
	add d1,d0
	mov d0,(sp)
	mov (16,sp),d0
	mov (8,sp),d1
	lsr d0,d1,d0
	mov d0,(4,sp)
	mov (sp),d1
	mov (16,sp),d0
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (sp),d1
	mov (12,sp),d0
	and d1,d0
	mov d0,(sp)
	mov (16,sp),d0
	mov (28,sp),d1
	lsr d0,d1
	mov (24,sp),a0
	mov (12,sp),d0
	and a0,d0
	mul d1,d0
	mov (8,sp),d1
	add d1,d0
	mov d0,(8,sp)
	mov (sp),d1
	mov (8,sp),a0
	mov (12,sp),d0
	and d0,a0
	mov (16,sp),d0
	asl d0,a0,d0
	add d1,d0
	mov d0,(sp)
	mov (4,sp),d0
	mov d0,a0
	mov (16,sp),d0
	mov (8,sp),d1
	lsr d0,d1,d0
	add a0,d0
	mov d0,(4,sp)
	mov (4,sp),d0
	mov d0,a1
	mov (16,sp),d0
	mov (24,sp),d1
	lsr d0,d1
	mov (16,sp),d0
	mov (28,sp),a0
	lsr d0,a0,d0
	mul d1,d0
	add a1,d0
	mov d0,(4,sp)
	mov (sp),d0
	mov (4,sp),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	__muldsi3, .-__muldsi3
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	add -36,sp
	mov d0,(40,sp)
	mov d1,(44,sp)
	mov (40,sp),d0
	mov d0,(28,sp)
	mov (44,sp),d0
	mov d0,(32,sp)
	mov (48,sp),d0
	mov d0,(20,sp)
	mov (52,sp),d0
	mov d0,(24,sp)
	mov (28,sp),d0
	mov (20,sp),d1
	call +__muldsi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(12,sp)
	mov a1,(16,sp)
	mov (16,sp),d0
	mov d0,a0
	mov (32,sp),d0
	mov d0,d1
	mov (20,sp),d0
	mul d0,d1
	mov (28,sp),d0
	mov (24,sp),a1
	mul a1,d0
	add d1,d0
	add a0,d0
	mov d0,(16,sp)
	mov (12,sp),d0
	mov (16,sp),d1
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],36
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	movm [d2,d3,a2],(sp)
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (16,sp),d0
	mov (20,sp),d1
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
	ret [d2,d3,a2],12
	.size	__negdi2, .-__negdi2
	.global __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (16,sp),d0
	mov d0,(sp)
	mov (20,sp),d0
	mov d0,(4,sp)
	mov (4,sp),d0
	mov d0,d1
	mov (sp),d0
	xor d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	lsr 16,d0
	mov (8,sp),d1
	xor d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	lsr 8,d0
	mov (8,sp),d1
	xor d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	lsr 4,d0
	mov (8,sp),d1
	xor d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	ret [],12
	.size	__paritydi2, .-__paritydi2
	.global __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	add -4,sp
	mov d0,(8,sp)
	mov (8,sp),d0
	mov d0,(sp)
	mov (sp),d0
	lsr 16,d0
	mov (sp),d1
	xor d1,d0
	mov d0,(sp)
	mov (sp),d0
	lsr 8,d0
	mov (sp),d1
	xor d1,d0
	mov d0,(sp)
	mov (sp),d0
	lsr 4,d0
	mov (sp),d1
	xor d1,d0
	mov d0,(sp)
	mov (sp),d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	ret [],4
	.size	__paritysi2, .-__paritysi2
	.global __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -36,sp
	mov d0,(72,sp)
	mov d1,(76,sp)
	mov (72,sp),d0
	mov d0,(28,sp)
	mov (76,sp),d0
	mov d0,(32,sp)
	mov (32,sp),d0
	mov d0,d1
	asl 31,d1
	mov (28,sp),d0
	mov d0,a2
	lsr 1,a2
	or d1,a2
	mov (32,sp),d0
	mov d0,a3
	lsr 1,a3
	mov a2,d0
	and 1431655765,d0
	mov d0,(16,sp)
	mov a3,d1
	and 1431655765,d1
	mov d1,(20,sp)
	mov (28,sp),d0
	mov (32,sp),d1
	mov (16,sp),d2
	mov (20,sp),a0
	sub d2,d0,d2
	subc a0,d1,a0
	mov a0,(4,sp)
	mov d2,(sp)
	mov (sp),d0
	mov d0,(28,sp)
	mov (4,sp),d1
	mov d1,(32,sp)
	mov (32,sp),d0
	asl 30,d0
	mov (28,sp),d1
	mov d1,d2
	lsr 2,d2
	or d0,d2
	mov (32,sp),d0
	mov d0,d3
	lsr 2,d3
	mov d2,r6
	and 858993459,r6
	mov d3,r7
	and 858993459,r7
	mov (28,sp),d0
	mov d0,r4
	and 858993459,r4
	mov (32,sp),d0
	mov d0,r5
	and 858993459,r5
	add r4,r6,r2
	addc r5,r7,r3
	mov r2,(28,sp)
	mov r3,(32,sp)
	mov (32,sp),d0
	asl 28,d0
	mov (28,sp),d1
	mov d1,a0
	lsr 4,a0
	or d0,a0
	mov (32,sp),d0
	mov d0,a1
	lsr 4,a1
	mov (28,sp),d0
	mov (32,sp),d1
	add d0,a0,r0
	addc d1,a1,r1
	mov r0,d0
	and 252645135,d0
	mov d0,(28,sp)
	mov r1,d0
	and 252645135,d0
	mov d0,(32,sp)
	mov (28,sp),d0
	mov (32,sp),d1
	mov d1,a0
	lsr 0,a0
	mov a0,(8,sp)
	mov 0,a1
	mov a1,(12,sp)
	mov (8,sp),d1
	add d1,d0
	mov d0,(24,sp)
	mov (24,sp),d0
	lsr 16,d0
	mov (24,sp),d1
	add d1,d0
	mov d0,(24,sp)
	mov (24,sp),d0
	mov d0,d1
	lsr 8,d1
	mov (24,sp),d0
	add d1,d0
	and 127,d0
	ret [d2,d3,a2,a3,exreg1],68
	.size	__popcountdi2, .-__popcountdi2
	.global __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	add -4,sp
	mov d0,(8,sp)
	mov (8,sp),d0
	mov d0,(sp)
	mov (sp),d0
	lsr 1,d0
	and 1431655765,d0
	mov (sp),d1
	sub d0,d1,d0
	mov d0,(sp)
	mov (sp),d0
	lsr 2,d0
	mov d0,d1
	and 858993459,d1
	mov (sp),d0
	and 858993459,d0
	add d1,d0
	mov d0,(sp)
	mov (sp),d0
	mov d0,d1
	lsr 4,d1
	mov (sp),d0
	add d1,d0
	and 252645135,d0
	mov d0,(sp)
	mov (sp),d0
	lsr 16,d0
	mov (sp),d1
	add d1,d0
	mov d0,(sp)
	mov (sp),d0
	mov d0,d1
	lsr 8,d1
	mov (sp),d0
	add d1,d0
	and 63,d0
	ret [],4
	.size	__popcountsi2, .-__popcountsi2
	.global __powidf2
	.type	__powidf2, @function
__powidf2:
	add -32,sp
	mov d0,(36,sp)
	mov d1,(40,sp)
	mov (44,sp),d0
	lsr 31,d0
	extbu d0
	mov d0,(20,sp)
	mov 0,d0
	mov d0,(24,sp)
	mov 1072693248,d0
	mov d0,(28,sp)
.L857:
	mov (44,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L854
	mov (36,sp),d0
	mov d0,(12,sp)
	mov (40,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(24,sp)
	mov a1,(28,sp)
.L854:
	mov (44,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(44,sp)
	mov (44,sp),d0
	cmp 0,d0
	beq .L861
	mov (36,sp),d0
	mov d0,(12,sp)
	mov (40,sp),d0
	mov d0,(16,sp)
	mov (36,sp),d0
	mov (40,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(36,sp)
	mov a1,(40,sp)
	jmp .L857
.L861:
	mov (20,sp),d0
	cmp 0,d0
	beq .L858
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
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
	mov (24,sp),d0
	mov (28,sp),d1
.L860:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],32
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (28,sp),d0
	lsr 31,d0
	extbu d0
	mov d0,(12,sp)
	mov 1065353216,d0
	mov d0,(16,sp)
.L867:
	mov (28,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L864
	mov (24,sp),d1
	mov (16,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(16,sp)
.L864:
	mov (28,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(28,sp)
	mov (28,sp),d0
	cmp 0,d0
	beq .L871
	mov (24,sp),d1
	mov (24,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(24,sp)
	jmp .L867
.L871:
	mov (12,sp),d0
	cmp 0,d0
	beq .L868
	mov (16,sp),d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,d1
	mov d1,d0
	jmp .L870
.L868:
	mov (16,sp),d0
.L870:
	mov d0,d1
	mov d1,d0
	ret [],20
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	add -16,sp
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov (20,sp),d0
	mov d0,(8,sp)
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(sp)
	mov (32,sp),d0
	mov d0,(4,sp)
	mov (12,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	bcc .L874
	mov 0,d0
	jmp .L879
.L874:
	mov (12,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	bls .L876
	mov 2,d0
	jmp .L879
.L876:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcc .L877
	mov 0,d0
	jmp .L879
.L877:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bls .L878
	mov 2,d0
	jmp .L879
.L878:
	mov 1,d0
.L879:
	ret [],16
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (24,sp),a0
	mov (28,sp),a1
	mov (32,sp),d0
	mov (36,sp),d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov a0,d0
	mov a1,d1
	call +__ucmpdi2,[],0
	add -1,d0
	ret [],20
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
