	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (20,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcc .L2
	mov (20,sp),d1
	mov (24,sp),d0
	add d1,d0
	mov d0,(sp)
	mov (16,sp),d1
	mov (24,sp),d0
	add d1,d0
	mov d0,(8,sp)
	jmp .L3
.L4:
	mov (sp),d0
	add -1,d0
	mov d0,(sp)
	mov (8,sp),d0
	add -1,d0
	mov d0,(8,sp)
	mov (sp),d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu d1,(d0)
	mov (24,sp),d0
	add -1,d0
	mov d0,(24,sp)
.L3:
	mov (24,sp),d0
	cmp 0,d0
	bne .L4
	jmp .L5
.L2:
	mov (20,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	beq .L5
	mov (16,sp),d0
	mov d0,(4,sp)
	jmp .L6
.L7:
	mov (20,sp),d1
	mov 1,d0
	add d1,d0
	mov d0,(20,sp)
	mov (4,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(4,sp)
	movbu (d1),d1
	movbu d1,(d0)
	mov (24,sp),d0
	add -1,d0
	mov d0,(24,sp)
.L6:
	mov (24,sp),d0
	cmp 0,d0
	bne .L7
.L5:
	mov (16,sp),d0
	mov d0,a0
	ret [],12
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (16,sp),d0
	extbu d0
	mov d0,(sp)
	jmp .L10
.L12:
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
	mov (12,sp),d0
	inc d0
	mov d0,(12,sp)
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L10:
	mov (20,sp),d0
	cmp 0,d0
	beq .L11
	mov (12,sp),d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu d1,(d0)
	mov (8,sp),d0
	movbu (d0),d0
	extbu d0
	mov (sp),d1
	cmp d0,d1
	bne .L12
.L11:
	mov (20,sp),d0
	cmp 0,d0
	beq .L13
	mov (8,sp),d0
	inc d0
	jmp .L14
.L13:
	mov 0,d0
.L14:
	mov d0,a0
	ret [],4
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (12,sp),d0
	extbu d0
	mov d0,(sp)
	jmp .L16
.L18:
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
	mov (16,sp),d0
	add -1,d0
	mov d0,(16,sp)
.L16:
	mov (16,sp),d0
	cmp 0,d0
	beq .L17
	mov (8,sp),d0
	movbu (d0),d0
	mov (sp),d1
	cmp d0,d1
	bne .L18
.L17:
	mov (16,sp),d0
	cmp 0,d0
	beq .L19
	mov (8,sp),d0
	jmp .L21
.L19:
	mov 0,d0
.L21:
	mov d0,a0
	ret [],4
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L23
.L25:
	mov (12,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L23:
	mov (12,sp),d0
	cmp 0,d0
	beq .L24
	mov (4,sp),d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	beq .L25
.L24:
	mov (12,sp),d0
	cmp 0,d0
	beq .L26
	mov (4,sp),d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu (d0),d0
	sub d0,d1,d0
	rets
.L26:
	mov 0,d0
	rets
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L30
.L31:
	mov (12,sp),d1
	mov 1,d0
	add d1,d0
	mov d0,(12,sp)
	mov (sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(sp)
	movbu (d1),d1
	movbu d1,(d0)
	mov (16,sp),d0
	add -1,d0
	mov d0,(16,sp)
.L30:
	mov (16,sp),d0
	cmp 0,d0
	bne .L31
	mov (8,sp),d0
	mov d0,a0
	ret [],4
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (12,sp),d0
	extbu d0
	mov d0,(sp)
	jmp .L34
.L36:
	mov (8,sp),d1
	mov (16,sp),d0
	add d1,d0
	movbu (d0),d0
	mov (sp),d1
	cmp d0,d1
	bne .L34
	mov (8,sp),d1
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
	mov d0,a0
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
	mov (sp),d0
	mov (12,sp),d1
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
	mov d0,a0
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
	mov d0,a0
	rets
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (12,sp),d0
	extbu d0
	mov d0,(sp)
	jmp .L46
.L48:
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L46:
	mov (8,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L47
	mov (8,sp),d0
	movbu (d0),d0
	mov (sp),d1
	cmp d0,d1
	bne .L48
.L47:
	mov (8,sp),d0
	mov d0,a0
	ret [],4
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d1,(8,sp)
.L53:
	movbu (d0),d1
	mov (8,sp),a0
	cmp d1,a0
	beq .L52
	mov d0,d1
	mov 1,d0
	add d1,d0
	movbu (d1),d1
	cmp 0,d1
	bne .L53
	mov 0,d0
.L52:
	mov d0,a0
	rets
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L56
.L58:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L56:
	mov (4,sp),d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L57
	mov (4,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L58
.L57:
	mov (4,sp),d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu (d0),d0
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
	jmp .L61
.L62:
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L61:
	mov (sp),d0
	movbu (d0),d0
	cmp 0,d0
	bne .L62
	mov (sp),d1
	mov (8,sp),d0
	sub d0,d1,d0
	ret [],4
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(sp)
	cmp 0,d0
	bne .L67
	mov 0,d0
	jmp .L66
.L69:
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
	mov (12,sp),d0
	inc d0
	mov d0,(12,sp)
	mov (sp),d0
	add -1,d0
	mov d0,(sp)
.L67:
	mov (8,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L68
	mov (12,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	beq .L68
	mov (sp),d0
	cmp 0,d0
	beq .L68
	mov (8,sp),d0
	movbu (d0),d1
	mov (12,sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	beq .L69
.L68:
	mov (8,sp),d0
	movbu (d0),d1
	mov (12,sp),d0
	movbu (d0),d0
	sub d0,d1,d0
.L66:
	ret [],4
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L71
.L72:
	mov (4,sp),d0
	inc d0
	movbu (d0),d1
	mov (8,sp),d0
	movbu d1,(d0)
	mov (8,sp),d0
	inc d0
	mov (4,sp),d1
	movbu (d1),d1
	movbu d1,(d0)
	mov (8,sp),d0
	add 2,d0
	mov d0,(8,sp)
	mov (4,sp),d0
	add 2,d0
	mov d0,(4,sp)
	mov (12,sp),d0
	add -2,d0
	mov d0,(12,sp)
.L71:
	mov (12,sp),d0
	cmp 1,d0
	bgt .L72
	rets
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
	bls .L74
	mov 0,d1
.L74:
	mov d1,d0
	rets
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,(4,sp)
	mov 1,d1
	mov (4,sp),d0
	cmp 127,d0
	bls .L77
	mov 0,d1
.L77:
	mov d1,d0
	rets
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 32,d0
	beq .L80
	mov (4,sp),d0
	cmp 9,d0
	bne .L81
.L80:
	mov 1,d0
	rets
.L81:
	mov 0,d0
	rets
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 31,d0
	bls .L85
	mov (4,sp),d0
	cmp 127,d0
	bne .L86
.L85:
	mov 1,d0
	rets
.L86:
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
	bls .L90
	mov 0,d1
.L90:
	mov d1,d0
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
	bls .L93
	mov 0,d1
.L93:
	mov d1,d0
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
	bls .L96
	mov 0,d1
.L96:
	mov d1,d0
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
	bls .L99
	mov 0,d1
.L99:
	mov d1,d0
	rets
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 32,d0
	beq .L102
	mov (4,sp),d0
	add -9,d0
	cmp 4,d0
	bhi .L103
.L102:
	mov 1,d0
	rets
.L103:
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
	bls .L107
	mov 0,d1
.L107:
	mov d1,d0
	rets
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 31,d0
	bls .L110
	mov (4,sp),d0
	add -127,d0
	cmp 32,d0
	bls .L110
	mov (4,sp),d0
	add -8232,d0
	cmp 1,d0
	bls .L110
	mov (4,sp),d0
	add -65529,d0
	cmp 2,d0
	bhi .L111
.L110:
	mov 1,d0
	rets
.L111:
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
	bls .L115
	mov 0,d1
.L115:
	mov d1,d0
	rets
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 254,d0
	bhi .L118
	mov (4,sp),d0
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L119
	mov 0,d1
.L119:
	mov d1,d0
	rets
.L118:
	mov (4,sp),d0
	cmp 8231,d0
	bls .L121
	mov (4,sp),d0
	add -8234,d0
	cmp 47061,d0
	bls .L121
	mov (4,sp),d0
	add -57344,d0
	cmp 8184,d0
	bhi .L122
.L121:
	mov 1,d0
	rets
.L122:
	mov (4,sp),d0
	add -65532,d0
	cmp 1048579,d0
	bhi .L123
	mov (4,sp),d0
	and 65534,d0
	cmp 65534,d0
	bne .L124
.L123:
	mov 0,d0
	rets
.L124:
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
	bls .L126
	mov (4,sp),d0
	or 32,d0
	add -97,d0
	cmp 5,d0
	bhi .L127
.L126:
	mov 1,d0
	rets
.L127:
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
	movm [d2,d3],(sp)
	add -20,sp
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
	beq .L144
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L135
.L144:
	mov (40,sp),d0
	mov d0,(12,sp)
	mov (44,sp),d0
	mov d0,(16,sp)
	mov (40,sp),d0
	mov (44,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L145
	mov (40,sp),a0
	mov (44,sp),a1
	jmp .L135
.L145:
	mov (40,sp),d0
	mov d0,(12,sp)
	mov (44,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L146
	mov (40,sp),d0
	mov d0,(12,sp)
	mov (44,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__subdf3,[],0
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	jmp .L135
.L146:
	mov 0,a0
	mov 0,a1
.L135:
	mov a0,d0
	mov a1,d1
	ret [d2,d3],28
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
	beq .L159
	mov (16,sp),d0
	jmp .L150
.L159:
	mov (20,sp),d1
	mov (20,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L160
	mov (20,sp),d0
	jmp .L150
.L160:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L161
	mov (20,sp),d1
	mov (16,sp),d0
	call +__subsf3,[],0
	mov d0,d1
	mov d1,d0
	jmp .L150
.L161:
	mov 0,d0
.L150:
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
	beq .L177
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L165
.L177:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L178
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L165
.L178:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L168
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L169
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L165
.L169:
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L165
.L168:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L179
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L165
.L179:
	mov (24,sp),a0
	mov (28,sp),a1
.L165:
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
	beq .L195
	mov (20,sp),d0
	jmp .L183
.L195:
	mov (20,sp),d1
	mov (20,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L196
	mov (16,sp),d0
	jmp .L183
.L196:
	mov (16,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L186
	mov (16,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L187
	mov (20,sp),d0
	jmp .L183
.L187:
	mov (16,sp),d0
	jmp .L183
.L186:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L197
	mov (20,sp),d0
	jmp .L183
.L197:
	mov (16,sp),d0
.L183:
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
	beq .L213
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L201
.L213:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L214
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L201
.L214:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L204
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L205
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L201
.L205:
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L201
.L204:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L215
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L201
.L215:
	mov (24,sp),a0
	mov (28,sp),a1
.L201:
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
	beq .L231
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L219
.L231:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L232
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L219
.L232:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L222
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L223
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L219
.L223:
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L219
.L222:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L233
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L219
.L233:
	mov (32,sp),a0
	mov (36,sp),a1
.L219:
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
	beq .L249
	mov (20,sp),d0
	jmp .L237
.L249:
	mov (20,sp),d1
	mov (20,sp),d0
	call +__unordsf2,[],0
	cmp 0,d0
	beq .L250
	mov (16,sp),d0
	jmp .L237
.L250:
	mov (16,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (20,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L240
	mov (16,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L241
	mov (16,sp),d0
	jmp .L237
.L241:
	mov (20,sp),d0
	jmp .L237
.L240:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L251
	mov (16,sp),d0
	jmp .L237
.L251:
	mov (20,sp),d0
.L237:
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
	beq .L267
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L255
.L267:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__unorddf2,[],0
	cmp 0,d0
	beq .L268
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L255
.L268:
	mov (28,sp),d0
	and -2147483648,d0
	mov d0,d1
	mov (36,sp),d0
	and -2147483648,d0
	cmp d0,d1
	beq .L258
	mov (28,sp),d0
	and -2147483648,d0
	cmp 0,d0
	beq .L259
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L255
.L259:
	mov (32,sp),a0
	mov (36,sp),a1
	jmp .L255
.L258:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L269
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L255
.L269:
	mov (32,sp),a0
	mov (36,sp),a1
.L255:
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
	jmp .L271
.L272:
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
.L271:
	mov (sp),d0
	cmp 0,d0
	bne .L272
	mov (4,sp),d0
	mov 0,d1
	movbu d1,(d0)
	mov +s.0,d0
	mov d0,a0
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
	mov (+seed+4),a2
	mov 1284865837,a3
	mul a2,a3
	mov (+seed),a2
	mul 1481765933,a2
	add a3,a2
	mov (+seed),a3
	mov 1284865837,r0
	mulu a3,r0,d1,d0
	add d1,a2
	mov a2,d1
	mov 1,a0
	add d0,a0
	mov 0,a1
	addc d1,a1
	mov a0,(+seed)
	mov a1,(+seed+4)
	mov (+seed+4),d0
	mov d0,d2
	lsr 1,d2
	mov d2,d0
	ret [d2,d3,a2,a3],16
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	mov d0,(4,sp)
	mov d1,(8,sp)
	mov (8,sp),d0
	cmp 0,d0
	bne .L278
	mov (4,sp),d0
	mov 0,d1
	mov d1,(4,d0)
	mov (4,sp),d0
	mov (4,d0),d1
	mov (4,sp),d0
	mov d1,(d0)
	rets
.L278:
	mov (8,sp),d0
	mov (d0),d1
	mov (4,sp),d0
	mov d1,(d0)
	mov (4,sp),d0
	mov (8,sp),d1
	mov d1,(4,d0)
	mov (8,sp),d0
	mov (4,sp),d1
	mov d1,(d0)
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L277
	mov (4,sp),d0
	mov (d0),d0
	mov (4,sp),d1
	mov d1,(4,d0)
.L277:
	rets
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov d0,(4,sp)
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L281
	mov (4,sp),d0
	mov (d0),d0
	mov (4,sp),d1
	mov (4,d1),d1
	mov d1,(4,d0)
.L281:
	mov (4,sp),d0
	mov (4,d0),d0
	cmp 0,d0
	beq .L280
	mov (4,sp),d0
	mov (4,d0),d0
	mov (4,sp),d1
	mov (d1),d1
	mov d1,(d0)
.L280:
	rets
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2],(sp)
	add -28,sp
	mov d0,(44,sp)
	mov d1,(48,sp)
	mov (56,sp),a2
	mov -1,d0
	add a2,d0
	mov d0,(20,sp)
	mov (52,sp),d0
	mov (d0),d0
	mov d0,(16,sp)
	mov 0,d0
	mov d0,(24,sp)
	jmp .L285
.L288:
	mov (24,sp),d0
	mul a2,d0
	mov (48,sp),d1
	add d0,d1
	mov (44,sp),d0
	mov (60,sp),a0
	calls (a0)
	cmp 0,d0
	bne .L286
	mov (24,sp),d0
	mul a2,d0
	mov (48,sp),d1
	add d1,d0
	jmp .L287
.L286:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
.L285:
	mov (24,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L288
	mov (16,sp),d0
	mov 1,d1
	add d0,d1
	mov (52,sp),d0
	mov d1,(d0)
	mov (16,sp),d0
	mul a2,d0
	mov (48,sp),d1
	add d0,d1,a0
	mov (44,sp),d1
	mov (56,sp),d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcpy,[],0
	mov a0,d0
.L287:
	mov d0,a0
	ret [d2,d3,a2],40
	.size	lsearch, .-lsearch
	.global lfind
	.type	lfind, @function
lfind:
	movm [d2,d3,a2],(sp)
	add -24,sp
	mov d0,(40,sp)
	mov d1,(44,sp)
	mov (52,sp),a2
	mov -1,d0
	add a2,d0
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (d0),d0
	mov d0,(12,sp)
	mov 0,d0
	mov d0,(20,sp)
	jmp .L290
.L293:
	mov (20,sp),d0
	mul a2,d0
	mov (44,sp),d1
	add d0,d1
	mov (40,sp),d0
	mov (56,sp),a0
	calls (a0)
	cmp 0,d0
	bne .L291
	mov (20,sp),d0
	mul a2,d0
	mov (44,sp),d1
	add d1,d0
	jmp .L292
.L291:
	mov (20,sp),d0
	inc d0
	mov d0,(20,sp)
.L290:
	mov (20,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcs .L293
	mov 0,d0
.L292:
	mov d0,a0
	ret [d2,d3,a2],36
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov d0,(4,sp)
	mov (4,sp),d0
	cmp 0,d0
	bge .L295
	not d0
	inc d0
.L295:
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
	jmp .L298
.L299:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
.L298:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L299
	mov (24,sp),d0
	movbu (d0),d0
	cmp 43,d0
	beq .L300
	cmp 45,d0
	bne .L302
	mov 1,d0
	mov d0,(12,sp)
.L300:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
	jmp .L302
.L303:
	mov (16,sp),d0
	mov 10,d1
	mul d0,d1
	mov (24,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(24,sp)
	movbu (d0),d0
	add -48,d0
	sub d0,d1,d0
	mov d0,(16,sp)
.L302:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L303
	mov (12,sp),d0
	cmp 0,d0
	bne .L304
	mov (16,sp),d0
	not d0
	inc d0
	jmp .L306
.L304:
	mov (16,sp),d0
.L306:
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
	jmp .L308
.L309:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
.L308:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L309
	mov (24,sp),d0
	movbu (d0),d0
	cmp 43,d0
	beq .L310
	cmp 45,d0
	bne .L312
	mov 1,d0
	mov d0,(12,sp)
.L310:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
	jmp .L312
.L313:
	mov (16,sp),d0
	mov 10,d1
	mul d0,d1
	mov (24,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(24,sp)
	movbu (d0),d0
	add -48,d0
	sub d0,d1,d0
	mov d0,(16,sp)
.L312:
	mov (24,sp),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L313
	mov (12,sp),d0
	cmp 0,d0
	bne .L314
	mov (16,sp),d0
	not d0
	inc d0
	jmp .L316
.L314:
	mov (16,sp),d0
.L316:
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
	jmp .L318
.L319:
	mov (60,sp),d0
	inc d0
	mov d0,(60,sp)
.L318:
	mov (60,sp),d0
	movbu (d0),d0
	extbu d0
	call +isspace,[],0
	cmp 0,d0
	bne .L319
	mov (60,sp),d0
	movbu (d0),d0
	cmp 43,d0
	beq .L320
	cmp 45,d0
	bne .L322
	mov 1,d0
	mov d0,(12,sp)
.L320:
	mov (60,sp),d0
	inc d0
	mov d0,(60,sp)
	jmp .L322
.L323:
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
	add -48,d0
	mov d0,r6
	asr 31,d0
	mov d0,r7
	sub r6,d2,r4
	subc r7,d3,r5
	mov r4,(16,sp)
	mov r5,(20,sp)
.L322:
	mov (60,sp),d0
	movbu (d0),d0
	extbu d0
	add -48,d0
	cmp 9,d0
	bls .L323
	mov (12,sp),d0
	cmp 0,d0
	bne .L324
	mov 0,a0
	mov 0,a1
	mov (16,sp),d0
	mov (20,sp),d1
	sub d0,a0,a2
	subc d1,a1,a3
	jmp .L326
.L324:
	mov (16,sp),a2
	mov (20,sp),a3
.L326:
	mov a2,d0
	mov a3,d1
	ret [d2,d3,a2,a3,exreg1],56
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	jmp .L328
.L333:
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
	bge .L329
	mov (32,sp),d0
	lsr 1,d0
	mov d0,(32,sp)
	jmp .L328
.L329:
	mov (12,sp),d0
	cmp 0,d0
	ble .L331
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
	jmp .L328
.L331:
	mov (16,sp),d0
	jmp .L332
.L328:
	mov (32,sp),d0
	cmp 0,d0
	bne .L333
	mov 0,d0
.L332:
	mov d0,a0
	ret [],20
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	add -28,sp
	mov d0,(32,sp)
	mov d1,(36,sp)
	mov (40,sp),d0
	mov d0,(24,sp)
	jmp .L335
.L339:
	mov (24,sp),d0
	mov d0,d1
	asr 1,d1
	mov (44,sp),d0
	mul d1,d0
	mov (36,sp),d1
	add d1,d0
	mov d0,(20,sp)
	mov (20,sp),d1
	mov (32,sp),a1
	mov (52,sp),d0
	mov d0,(12,sp)
	mov (48,sp),a0
	mov a1,d0
	calls (a0)
	mov d0,(16,sp)
	mov (16,sp),d0
	cmp 0,d0
	bne .L336
	mov (20,sp),d0
	jmp .L337
.L336:
	mov (16,sp),d0
	cmp 0,d0
	ble .L338
	mov (20,sp),d1
	mov (44,sp),d0
	add d1,d0
	mov d0,(36,sp)
	mov (24,sp),d0
	add -1,d0
	mov d0,(24,sp)
.L338:
	mov (24,sp),d0
	asr 1,d0
	mov d0,(24,sp)
.L335:
	mov (24,sp),d0
	cmp 0,d0
	bne .L339
	mov 0,d0
.L337:
	mov d0,a0
	ret [],28
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
	movm [d2],(sp)
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov (12,sp),d1
	cmp 0,d1
	bge .L343
	mov 0,a0
	mov 0,a1
	sub d0,a0,d0
	subc d1,a1,d1
.L343:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [d2],4
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
	bge .L349
	not d0
	inc d0
.L349:
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
	movm [d2],(sp)
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov (12,sp),d1
	cmp 0,d1
	bge .L354
	mov 0,a0
	mov 0,a1
	sub d0,a0,d0
	subc d1,a1,d1
.L354:
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [d2],4
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
	jmp .L360
.L362:
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
.L360:
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L361
	mov (4,sp),d0
	mov (d0),d0
	mov (8,sp),d1
	cmp d0,d1
	bne .L362
.L361:
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L363
	mov (4,sp),d0
	jmp .L365
.L363:
	mov 0,d0
.L365:
	mov d0,a0
	rets
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L367
.L369:
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
	mov (8,sp),d0
	add 4,d0
	mov d0,(8,sp)
.L367:
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	bne .L368
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L368
	mov (8,sp),d0
	mov (d0),d0
	cmp 0,d0
	bne .L369
.L368:
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	blt .L370
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L371
	mov 0,a0
.L371:
	extbu a0,d0
	rets
.L370:
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
.L375:
	mov (12,sp),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,sp)
	mov (sp),d0
	mov 4,a0
	add d0,a0
	mov a0,(sp)
	mov (d1),d1
	mov d1,(d0)
	mov (d0),d0
	cmp 0,d0
	bne .L375
	mov (8,sp),d0
	mov d0,a0
	ret [],4
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	add -4,sp
	mov d0,(8,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L378
.L379:
	mov (sp),d0
	add 4,d0
	mov d0,(sp)
.L378:
	mov (sp),d0
	mov (d0),d0
	cmp 0,d0
	bne .L379
	mov (sp),d1
	mov (8,sp),d0
	sub d0,d1,d0
	asr 2,d0
	ret [],4
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L382
.L384:
	mov (12,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
	mov (8,sp),d0
	add 4,d0
	mov d0,(8,sp)
.L382:
	mov (12,sp),d0
	cmp 0,d0
	beq .L383
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	bne .L383
	mov (4,sp),d0
	mov (d0),d0
	cmp 0,d0
	beq .L383
	mov (8,sp),d0
	mov (d0),d0
	cmp 0,d0
	bne .L384
.L383:
	mov (12,sp),d0
	cmp 0,d0
	beq .L385
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	blt .L386
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L387
	mov 0,a0
.L387:
	extbu a0,d0
	rets
.L386:
	mov -1,d0
	rets
.L385:
	mov 0,d0
	rets
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L392
.L394:
	mov (12,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
.L392:
	mov (12,sp),d0
	cmp 0,d0
	beq .L393
	mov (4,sp),d0
	mov (d0),d0
	mov (8,sp),d1
	cmp d0,d1
	bne .L394
.L393:
	mov (12,sp),d0
	cmp 0,d0
	beq .L395
	mov (4,sp),d0
	jmp .L397
.L395:
	mov 0,d0
.L397:
	mov d0,a0
	rets
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov d0,(4,sp)
	mov d1,(8,sp)
	jmp .L399
.L401:
	mov (12,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov (4,sp),d0
	add 4,d0
	mov d0,(4,sp)
	mov (8,sp),d0
	add 4,d0
	mov d0,(8,sp)
.L399:
	mov (12,sp),d0
	cmp 0,d0
	beq .L400
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	beq .L401
.L400:
	mov (12,sp),d0
	cmp 0,d0
	beq .L402
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	cmp d0,d1
	blt .L403
	mov (4,sp),d0
	mov (d0),d1
	mov (8,sp),d0
	mov (d0),d0
	mov 1,a0
	cmp d0,d1
	bgt .L404
	mov 0,a0
.L404:
	extbu a0,d0
	rets
.L403:
	mov -1,d0
	rets
.L402:
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
	jmp .L409
.L410:
	mov (12,sp),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,sp)
	mov (sp),d0
	mov 4,a0
	add d0,a0
	mov a0,(sp)
	mov (d1),d1
	mov d1,(d0)
.L409:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L410
	mov (8,sp),d0
	mov d0,a0
	ret [],4
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bne .L413
	mov (8,sp),d0
	jmp .L414
.L413:
	mov (8,sp),d1
	mov (12,sp),d0
	sub d0,d1
	mov (16,sp),d0
	asl2 d0
	cmp d0,d1
	bcc .L415
	jmp .L416
.L417:
	mov (16,sp),d0
	asl2 d0
	mov (8,sp),d1
	add d1,d0
	mov (16,sp),d1
	asl2 d1
	mov (12,sp),a0
	add a0,d1
	mov (d1),d1
	mov d1,(d0)
.L416:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L417
	jmp .L418
.L415:
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L419
.L420:
	mov (12,sp),d1
	mov 4,d0
	add d1,d0
	mov d0,(12,sp)
	mov (sp),d0
	mov 4,a0
	add d0,a0
	mov a0,(sp)
	mov (d1),d1
	mov d1,(d0)
.L419:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L420
.L418:
	mov (8,sp),d0
.L414:
	mov d0,a0
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
	jmp .L422
.L423:
	mov (sp),d0
	mov 4,d1
	add d0,d1
	mov d1,(sp)
	mov (12,sp),d1
	mov d1,(d0)
.L422:
	mov (16,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(16,sp)
	cmp 0,d0
	bne .L423
	mov (8,sp),d0
	mov d0,a0
	ret [],4
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcc .L426
	mov (12,sp),d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(4,sp)
	mov (16,sp),d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(sp)
	jmp .L427
.L428:
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
.L427:
	mov (20,sp),d0
	cmp 0,d0
	bne .L428
	jmp .L425
.L426:
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	beq .L425
	jmp .L430
.L431:
	mov (12,sp),d1
	mov 1,d0
	add d1,d0
	mov d0,(12,sp)
	mov (16,sp),d0
	mov 1,a0
	add d0,a0
	mov a0,(16,sp)
	movbu (d1),d1
	movbu d1,(d0)
	mov (20,sp),d0
	add -1,d0
	mov d0,(20,sp)
.L430:
	mov (20,sp),d0
	cmp 0,d0
	bne .L431
.L425:
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
	beq .L434
	mov (28,sp),r0
	asl r0,d0,d3
	mov 0,d2
	jmp .L435
.L434:
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
.L435:
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	and 32,r0
	cmp 0,r0
	beq .L436
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	lsr r0,d1,a0
	mov 0,a1
	jmp .L437
.L436:
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
.L437:
	or d2,a0,a2
	or d3,a1,a3
	mov a2,a0
	mov a3,a1
	mov a0,d0
	mov a1,d1
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
	beq .L440
	mov (28,sp),r0
	lsr r0,d1,d2
	mov 0,d3
	jmp .L441
.L440:
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
.L441:
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	and 32,r0
	cmp 0,r0
	beq .L442
	mov (28,sp),r0
	not r0
	inc r0
	and 63,r0
	asl r0,d0,a1
	mov 0,a0
	jmp .L443
.L442:
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
.L443:
	or d2,a0,a2
	or d3,a1,a3
	mov a2,a0
	mov a3,a1
	mov a0,d0
	mov a1,d1
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
	mov (sp),d0
	asl 8,d0
	movhu (8,sp),d1
	and d1,d0
	mov d0,d1
	lsr 8,d1
	mov (sp),a0
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
	mov (sp),d0
	mov (4,sp),d1
	ret [d2,d3,a2,a3,exreg1],224
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	add -4,sp
	mov d0,(8,sp)
	mov 0,d0
	mov d0,(sp)
	jmp .L468
.L471:
	mov (sp),d0
	mov (8,sp),d1
	lsr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L469
	mov (sp),d0
	inc d0
	jmp .L470
.L469:
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L468:
	mov (sp),d0
	cmp 31,d0
	bls .L471
	mov 0,d0
.L470:
	ret [],4
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	movm [d2],(sp)
	cmp 0,d0
	bne .L473
	mov 0,d2
	jmp .L474
.L473:
	mov 1,d2
	jmp .L475
.L476:
	asr 1,d0
	inc d2
.L475:
	mov d0,d1
	and 1,d1
	cmp 0,d1
	beq .L476
.L474:
	mov d2,d0
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
	blt .L478
	mov 2139095039,d1
	mov (16,sp),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L483
.L478:
	mov 1,d0
	jmp .L482
.L483:
	mov 0,d0
.L482:
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
	blt .L485
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L490
.L485:
	mov 1,d0
	jmp .L489
.L490:
	mov 0,d0
.L489:
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
	blt .L492
	mov -1,d1
	mov 2146435071,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L497
.L492:
	mov 1,d0
	jmp .L496
.L497:
	mov 0,d0
.L496:
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
	bne .L500
	mov (20,sp),d0
	mov d0,d1
	call +__addsf3,[],0
	mov d0,d1
	mov d1,d0
	mov d0,d1
	mov (20,sp),d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L500
	mov (24,sp),d0
	cmp 0,d0
	bge .L502
	mov 1056964608,d0
	jmp .L503
.L502:
	mov 1073741824,d0
.L503:
	mov d0,(12,sp)
.L506:
	mov (24,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L504
	mov (12,sp),d1
	mov (20,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(20,sp)
.L504:
	mov (24,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(24,sp)
	mov (24,sp),d0
	cmp 0,d0
	beq .L500
	mov (12,sp),d1
	mov (12,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(12,sp)
	jmp .L506
.L500:
	mov (20,sp),d0
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
	bne .L511
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
	beq .L511
	mov (40,sp),d0
	cmp 0,d0
	bge .L513
	mov 0,d0
	mov 1071644672,d1
	jmp .L514
.L513:
	mov 0,d0
	mov 1073741824,d1
.L514:
	mov d0,(20,sp)
	mov d1,(24,sp)
.L517:
	mov (40,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L515
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
.L515:
	mov (40,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(40,sp)
	mov (40,sp),d0
	cmp 0,d0
	beq .L511
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
	jmp .L517
.L511:
	mov (32,sp),a0
	mov (36,sp),a1
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
	bne .L522
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
	beq .L522
	mov (40,sp),d0
	cmp 0,d0
	bge .L524
	mov 0,d0
	mov 1071644672,d1
	jmp .L525
.L524:
	mov 0,d0
	mov 1073741824,d1
.L525:
	mov d0,(20,sp)
	mov d1,(24,sp)
.L528:
	mov (40,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L526
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
.L526:
	mov (40,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(40,sp)
	mov (40,sp),d0
	cmp 0,d0
	beq .L522
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
	jmp .L528
.L522:
	mov (32,sp),a0
	mov (36,sp),a1
	mov a0,d0
	mov a1,d1
	ret [],28
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	mov (8,sp),d0
	mov d0,(sp)
	jmp .L533
.L534:
	mov (12,sp),d0
	mov 1,d1
	add d0,d1
	mov d1,(12,sp)
	movbu (d0),a0
	mov (sp),d0
	mov 1,d1
	add d0,d1
	mov d1,(sp)
	movbu (d0),d1
	xor a0,d1
	movbu d1,(d0)
	mov (16,sp),d0
	add -1,d0
	mov d0,(16,sp)
.L533:
	mov (16,sp),d0
	cmp 0,d0
	bne .L534
	mov (8,sp),d0
	mov d0,a0
	ret [],4
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
	jmp .L537
.L539:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
	mov (12,sp),d0
	inc d0
	mov d0,(12,sp)
	mov (28,sp),d0
	add -1,d0
	mov d0,(28,sp)
.L537:
	mov (28,sp),d0
	cmp 0,d0
	beq .L538
	mov (24,sp),d0
	movbu (d0),d1
	mov (12,sp),d0
	movbu d1,(d0)
	mov (12,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L539
.L538:
	mov (28,sp),d0
	cmp 0,d0
	bne .L540
	mov (12,sp),d0
	mov 0,d1
	movbu d1,(d0)
.L540:
	mov (20,sp),d0
	mov d0,a0
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
	jmp .L543
.L548:
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L543:
	mov (sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L544
	mov (8,sp),d1
	mov (sp),d0
	add d1,d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L548
.L544:
	mov (sp),d0
	ret [],4
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	add -4,sp
	mov d0,(8,sp)
	mov d1,(12,sp)
	jmp .L550
.L554:
	mov (12,sp),d0
	mov d0,(sp)
	jmp .L551
.L553:
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
	bne .L551
	mov (8,sp),d0
	jmp .L552
.L551:
	mov (sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L553
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L550:
	mov (8,sp),d0
	movbu (d0),d0
	extbu d0
	cmp 0,d0
	bne .L554
	mov 0,d0
.L552:
	mov d0,a0
	ret [],4
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	add -4,sp
	mov d1,(12,sp)
	mov 0,d1
	mov d1,(sp)
.L557:
	movbu (d0),d1
	mov (12,sp),a0
	cmp d1,a0
	bne .L556
	mov d0,(sp)
.L556:
	mov d0,d1
	mov 1,d0
	add d1,d0
	movbu (d1),d1
	cmp 0,d1
	bne .L557
	mov (sp),d0
	mov d0,a0
	ret [],4
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	add -24,sp
	mov d0,(28,sp)
	mov d1,(32,sp)
	mov (32,sp),d0
	call +strlen,[],0
	mov d0,(20,sp)
	mov (20,sp),d0
	cmp 0,d0
	bne .L562
	mov (28,sp),d0
	jmp .L561
.L564:
	mov (32,sp),d1
	mov (16,sp),a0
	mov (20,sp),d0
	mov d0,(12,sp)
	mov a0,d0
	call +strncmp,[],0
	cmp 0,d0
	bne .L563
	mov (16,sp),d0
	jmp .L561
.L563:
	mov (16,sp),d0
	inc d0
	mov d0,(28,sp)
.L562:
	mov (32,sp),d0
	movbu (d0),d0
	extbu d0,d1
	mov (28,sp),d0
	call +strchr,[],0
	mov a0,(16,sp)
	mov (16,sp),d0
	cmp 0,d0
	bne .L564
	mov 0,d0
.L561:
	mov d0,a0
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
	bge .L566
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (40,sp),d0
	mov (44,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L568
.L566:
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L569
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (40,sp),d0
	mov (44,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L569
.L568:
	mov (32,sp),d2
	mov (36,sp),d0
	mov d0,d3
	xor -2147483648,d3
	jmp .L572
.L569:
	mov (32,sp),d2
	mov (36,sp),d3
.L572:
	mov d2,d0
	mov d3,d1
	ret [d2,d3],28
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	add -20,sp
	mov d0,(24,sp)
	mov d1,(28,sp)
	mov (28,sp),d1
	mov (36,sp),d0
	sub d0,d1,d0
	mov (24,sp),d1
	add d1,d0
	mov d0,(16,sp)
	mov (36,sp),d0
	cmp 0,d0
	bne .L576
	mov (24,sp),d0
	jmp .L577
.L576:
	mov 1,a0
	mov (28,sp),d1
	mov (36,sp),d0
	cmp d0,d1
	bcs .L578
	mov 0,a0
.L578:
	extbu a0,d0
	cmp 0,d0
	beq .L580
	mov 0,d0
	jmp .L577
.L582:
	mov (24,sp),d0
	movbu (d0),d1
	mov (32,sp),d0
	movbu (d0),d0
	extbu d1
	extbu d0
	cmp d0,d1
	bne .L581
	mov (24,sp),d0
	mov 1,a0
	add d0,a0
	mov (32,sp),d0
	mov 1,d1
	add d0,d1
	mov (36,sp),d0
	add -1,d0
	mov d0,(12,sp)
	mov a0,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L581
	mov (24,sp),d0
	jmp .L577
.L581:
	mov (24,sp),d0
	inc d0
	mov d0,(24,sp)
.L580:
	mov (24,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bls .L582
	mov 0,d0
.L577:
	mov d0,a0
	ret [],20
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
	mov d0,a0
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
	bge .L586
	mov (48,sp),a2
	mov (52,sp),d0
	mov d0,a3
	xor -2147483648,a3
	mov a2,(48,sp)
	mov a3,(52,sp)
	mov 1,d0
	mov d0,(24,sp)
.L586:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L603
	jmp .L590
.L591:
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
.L590:
	mov 0,d1
	mov 1072693248,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L591
	jmp .L592
.L603:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L592
	mov 0,d1
	mov 0,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L592
	jmp .L595
.L596:
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
.L595:
	mov 0,d1
	mov 1071644672,d0
	mov d1,(12,sp)
	mov d0,(16,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L596
.L592:
	mov (56,sp),d0
	mov (20,sp),d1
	mov d1,(d0)
	mov (24,sp),d0
	cmp 0,d0
	beq .L597
	mov (48,sp),d2
	mov (52,sp),d0
	mov d0,d3
	xor -2147483648,d3
	mov d2,(48,sp)
	mov d3,(52,sp)
.L597:
	mov (48,sp),a0
	mov (52,sp),a1
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
	jmp .L605
.L608:
	mov (sp),d0
	mov d0,r2
	and 1,r2
	mov (4,sp),d0
	mov d0,r3
	and 0,r3
	mov r2,d0
	or r3,d0
	cmp 0,d0
	beq .L606
	mov (8,sp),r0
	mov (12,sp),r1
	mov (60,sp),d0
	mov (64,sp),d1
	add d0,r0,a2
	addc d1,r1,a3
	mov a2,(8,sp)
	mov a3,(12,sp)
.L606:
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
.L605:
	mov (sp),d0
	mov (4,sp),d1
	or d1,d0
	cmp 0,d0
	bne .L608
	mov (8,sp),a0
	mov (12,sp),a1
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
	jmp .L611
.L613:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (4,sp),d0
	add d0,d0
	mov d0,(4,sp)
.L611:
	mov (16,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L614
	mov (4,sp),d0
	cmp 0,d0
	beq .L614
	mov (16,sp),d0
	cmp 0,d0
	bge .L613
	jmp .L614
.L616:
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L615
	mov (12,sp),d1
	mov (16,sp),d0
	sub d0,d1,d0
	mov d0,(12,sp)
	mov (sp),d1
	mov (4,sp),d0
	or d1,d0
	mov d0,(sp)
.L615:
	mov (4,sp),d0
	lsr 1,d0
	mov d0,(4,sp)
	mov (16,sp),d0
	lsr 1,d0
	mov d0,(16,sp)
.L614:
	mov (4,sp),d0
	cmp 0,d0
	bne .L616
	mov (20,sp),d0
	cmp 0,d0
	beq .L617
	mov (12,sp),d0
	jmp .L618
.L617:
	mov (sp),d0
.L618:
	ret [],8
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	add -4,sp
	movbu d0,(8,sp)
	movbu (8,sp),d0
	cmp 0,d0
	bne .L620
	mov 7,d0
	jmp .L621
.L620:
	movbu (8,sp),d0
	mov d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	mov d0,(sp)
	mov (sp),d0
	add -1,d0
.L621:
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
	bge .L623
	mov (8,sp),d0
	mov d0,a0
	not a0
	mov (12,sp),d0
	mov d0,a1
	not a1
	mov a0,(8,sp)
	mov a1,(12,sp)
.L623:
	mov (8,sp),d0
	mov (12,sp),d1
	or d1,d0
	cmp 0,d0
	bne .L625
	mov 63,d0
	jmp .L626
.L625:
	mov (8,sp),d0
	mov (12,sp),d1
	cmp 0,d1
	beq .L627
	mov 0,a0
	bsch d1, a0
	xor 31,a0
	jmp .L628
.L627:
	mov 0,a0
	bsch d0, a0
	xor 31,a0
	add 32,a0
.L628:
	mov a0,(sp)
	mov (sp),d0
	add -1,d0
.L626:
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
	jmp .L630
.L632:
	mov (8,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L631
	mov (sp),d1
	mov (12,sp),d0
	add d1,d0
	mov d0,(sp)
.L631:
	mov (8,sp),d0
	lsr 1,d0
	mov d0,(8,sp)
	mov (12,sp),d0
	add d0,d0
	mov d0,(12,sp)
.L630:
	mov (8,sp),d0
	cmp 0,d0
	bne .L632
	mov (sp),d0
	ret [],4
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (24,sp),d0
	lsr 3,d0
	mov d0,(sp)
	mov (24,sp),d0
	and -8,d0
	mov d0,(4,sp)
	mov (16,sp),d1
	mov (20,sp),d0
	cmp d0,d1
	bcs .L635
	mov (20,sp),d1
	mov (24,sp),d0
	add d1,d0
	mov (16,sp),d1
	cmp d0,d1
	bls .L642
.L635:
	mov 0,d0
	mov d0,(8,sp)
	jmp .L637
.L638:
	mov (8,sp),d0
	asl2 d0
	add d0,d0
	mov (16,sp),d1
	add d0,d1,a0
	mov (8,sp),d0
	asl2 d0
	add d0,d0
	mov (20,sp),d1
	add d0,d1,a1
	mov (a1),d0
	mov (4,a1),d1
	mov d0,(a0)
	mov d1,(4,a0)
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L637:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcs .L638
	jmp .L639
.L640:
	mov (16,sp),d1
	mov (4,sp),d0
	add d1,d0
	mov (20,sp),a0
	mov (4,sp),d1
	add a0,d1
	movbu (d1),d1
	movbu d1,(d0)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L639:
	mov (24,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	bhi .L640
	jmp .L641
.L643:
	mov (16,sp),d1
	mov (24,sp),d0
	add d1,d0
	mov (20,sp),a0
	mov (24,sp),d1
	add a0,d1
	movbu (d1),d1
	movbu d1,(d0)
.L642:
	mov (24,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(24,sp)
	cmp 0,d0
	bne .L643
.L641:
	nop
	ret [],12
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	add -8,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov (20,sp),d0
	lsr 1,d0
	mov d0,(sp)
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L645
	mov (16,sp),d1
	mov (20,sp),d0
	add d1,d0
	mov (12,sp),d1
	cmp d0,d1
	bls .L651
.L645:
	mov 0,d0
	mov d0,(4,sp)
	jmp .L647
.L648:
	mov (4,sp),d0
	add d0,d0
	mov (12,sp),d1
	add d1,d0
	mov (4,sp),d1
	add d1,d1
	mov (16,sp),a0
	add a0,d1
	movhu (d1),d1
	movhu d1,(d0)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L647:
	mov (4,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcs .L648
	mov (20,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L650
	mov (20,sp),d0
	add -1,d0
	mov (12,sp),d1
	add d1,d0
	mov (16,sp),a0
	mov (20,sp),d1
	add a0,d1
	add -1,d1
	movbu (d1),d1
	movbu d1,(d0)
	jmp .L650
.L652:
	mov (12,sp),d1
	mov (20,sp),d0
	add d1,d0
	mov (16,sp),a0
	mov (20,sp),d1
	add a0,d1
	movbu (d1),d1
	movbu d1,(d0)
.L651:
	mov (20,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(20,sp)
	cmp 0,d0
	bne .L652
.L650:
	nop
	ret [],8
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (24,sp),d0
	lsr 2,d0
	mov d0,(sp)
	mov (24,sp),d0
	and -4,d0
	mov d0,(4,sp)
	mov (16,sp),d1
	mov (20,sp),d0
	cmp d0,d1
	bcs .L654
	mov (20,sp),d1
	mov (24,sp),d0
	add d1,d0
	mov (16,sp),d1
	cmp d0,d1
	bls .L661
.L654:
	mov 0,d0
	mov d0,(8,sp)
	jmp .L656
.L657:
	mov (8,sp),d0
	asl2 d0
	mov (16,sp),d1
	add d1,d0
	mov (8,sp),d1
	asl2 d1
	mov (20,sp),a0
	add a0,d1
	mov (d1),d1
	mov d1,(d0)
	mov (8,sp),d0
	inc d0
	mov d0,(8,sp)
.L656:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcs .L657
	jmp .L658
.L659:
	mov (16,sp),d1
	mov (4,sp),d0
	add d1,d0
	mov (20,sp),a0
	mov (4,sp),d1
	add a0,d1
	movbu (d1),d1
	movbu d1,(d0)
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L658:
	mov (24,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	bhi .L659
	jmp .L660
.L662:
	mov (16,sp),d1
	mov (24,sp),d0
	add d1,d0
	mov (20,sp),a0
	mov (24,sp),d1
	add a0,d1
	movbu (d1),d1
	movbu d1,(d0)
.L661:
	mov (24,sp),d0
	mov -1,d1
	add d0,d1
	mov d1,(24,sp)
	cmp 0,d0
	bne .L662
.L660:
	nop
	ret [],12
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
	add -12,sp
	mov d0,(16,sp)
	mov (16,sp),d0
	call +__floatunsidf,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],12
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
	add -12,sp
	mov d0,(16,sp)
	mov d1,(20,sp)
	mov (16,sp),d0
	mov (20,sp),d1
	call +__floatundidf,[],0
	mov d0,a0
	mov d1,a1
	mov a0,d0
	mov a1,d1
	ret [],12
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
	jmp .L676
.L679:
	mov 15,d1
	mov (sp),d0
	sub d0,d1,d0
	movhu (8,sp),d1
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	bne .L678
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L676:
	mov (sp),d0
	cmp 15,d0
	ble .L679
.L678:
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
	jmp .L683
.L686:
	movhu (8,sp),d1
	mov (sp),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	bne .L685
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L683:
	mov (sp),d0
	cmp 15,d0
	ble .L686
.L685:
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
	blt .L694
	mov 1191182336,d1
	mov (16,sp),d0
	call +__subsf3,[],0
	mov d0,d1
	mov d1,d0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L692
.L694:
	mov (16,sp),d0
	call +__fixsfsi,[],0
.L692:
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
	jmp .L696
.L698:
	movhu (12,sp),d1
	mov (4,sp),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L697
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L697:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L696:
	mov (4,sp),d0
	cmp 15,d0
	ble .L698
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
	jmp .L701
.L703:
	movhu (12,sp),d1
	mov (4,sp),d0
	asr d0,d1,d0
	and 1,d0
	cmp 0,d0
	beq .L702
	mov (sp),d0
	inc d0
	mov d0,(sp)
.L702:
	mov (4,sp),d0
	inc d0
	mov d0,(4,sp)
.L701:
	mov (4,sp),d0
	cmp 15,d0
	ble .L703
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
	jmp .L706
.L708:
	mov (8,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L707
	mov (sp),d1
	mov (12,sp),d0
	add d1,d0
	mov d0,(sp)
.L707:
	mov (8,sp),d0
	lsr 1,d0
	mov d0,(8,sp)
	mov (12,sp),d0
	add d0,d0
	mov d0,(12,sp)
.L706:
	mov (8,sp),d0
	cmp 0,d0
	bne .L708
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
	bne .L713
	mov 0,d0
	jmp .L712
.L715:
	mov (12,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L714
	mov (sp),d1
	mov (8,sp),d0
	add d1,d0
	mov d0,(sp)
.L714:
	mov (8,sp),d0
	add d0,d0
	mov d0,(8,sp)
	mov (12,sp),d0
	lsr 1,d0
	mov d0,(12,sp)
.L713:
	mov (12,sp),d0
	cmp 0,d0
	bne .L715
	mov (sp),d0
.L712:
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
	jmp .L717
.L719:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (4,sp),d0
	add d0,d0
	mov d0,(4,sp)
.L717:
	mov (16,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L720
	mov (4,sp),d0
	cmp 0,d0
	beq .L720
	mov (16,sp),d0
	cmp 0,d0
	bge .L719
	jmp .L720
.L722:
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L721
	mov (12,sp),d1
	mov (16,sp),d0
	sub d0,d1,d0
	mov d0,(12,sp)
	mov (sp),d1
	mov (4,sp),d0
	or d1,d0
	mov d0,(sp)
.L721:
	mov (4,sp),d0
	lsr 1,d0
	mov d0,(4,sp)
	mov (16,sp),d0
	lsr 1,d0
	mov d0,(16,sp)
.L720:
	mov (4,sp),d0
	cmp 0,d0
	bne .L722
	mov (20,sp),d0
	cmp 0,d0
	beq .L723
	mov (12,sp),d0
	jmp .L724
.L723:
	mov (sp),d0
.L724:
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
	bge .L733
	mov -1,d0
	jmp .L728
.L733:
	mov (20,sp),d1
	mov (16,sp),d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L734
	mov 1,d0
	jmp .L728
.L734:
	mov 0,d0
.L728:
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
	bge .L743
	mov -1,d0
	jmp .L738
.L743:
	mov (32,sp),d0
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L744
	mov 1,d0
	jmp .L738
.L744:
	mov 0,d0
.L738:
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
	mov a0,d0
	mov a1,d1
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
	mov a2,d0
	mov a3,d1
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
	bge .L750
	mov (20,sp),d0
	not d0
	inc d0
	mov d0,(20,sp)
	mov 1,d0
	mov d0,(4,sp)
.L750:
	mov 0,d0
	movbu d0,(11,sp)
	jmp .L751
.L754:
	mov (20,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L752
	mov (sp),d1
	mov (16,sp),d0
	add d1,d0
	mov d0,(sp)
.L752:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (20,sp),d0
	asr 1,d0
	mov d0,(20,sp)
	movbu (11,sp),d0
	inc d0
	movbu d0,(11,sp)
.L751:
	mov (20,sp),d0
	cmp 0,d0
	beq .L753
	movbu (11,sp),d0
	cmp 31,d0
	bls .L754
.L753:
	mov (4,sp),d0
	cmp 0,d0
	beq .L755
	mov (sp),d0
	not d0
	inc d0
	jmp .L757
.L755:
	mov (sp),d0
.L757:
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
	bge .L759
	mov (28,sp),d0
	not d0
	inc d0
	mov d0,(28,sp)
	mov 1,d1
	mov (20,sp),d0
	cmp 0,d0
	beq .L760
	mov 0,d1
.L760:
	extbu d1,d0
	mov d0,(20,sp)
.L759:
	mov (32,sp),d0
	cmp 0,d0
	bge .L761
	mov (32,sp),d0
	not d0
	inc d0
	mov d0,(32,sp)
	mov 1,d1
	mov (20,sp),d0
	cmp 0,d0
	beq .L762
	mov 0,d1
.L762:
	extbu d1,d0
	mov d0,(20,sp)
.L761:
	mov (32,sp),d1
	mov (28,sp),a0
	mov 0,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(16,sp)
	mov (20,sp),d0
	cmp 0,d0
	beq .L763
	mov (16,sp),d0
	not d0
	inc d0
	mov d0,(16,sp)
.L763:
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
	bge .L766
	mov (28,sp),d0
	not d0
	inc d0
	mov d0,(28,sp)
	mov 1,d0
	mov d0,(20,sp)
.L766:
	mov (32,sp),d0
	cmp 0,d0
	bge .L767
	mov (32,sp),d0
	not d0
	inc d0
	mov d0,(32,sp)
.L767:
	mov (32,sp),d1
	mov (28,sp),a0
	mov 1,d0
	mov d0,(12,sp)
	mov a0,d0
	call +__udivmodsi4,[],0
	mov d0,(16,sp)
	mov (20,sp),d0
	cmp 0,d0
	beq .L768
	mov (16,sp),d0
	not d0
	inc d0
	mov d0,(16,sp)
.L768:
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
	jmp .L771
.L773:
	movhu (12,sp),d0
	add d0,d0
	movhu d0,(12,sp)
	movhu (2,sp),d0
	add d0,d0
	movhu d0,(2,sp)
.L771:
	movhu (12,sp),d1
	movhu (8,sp),d0
	cmp d0,d1
	bcc .L774
	movhu (2,sp),d0
	cmp 0,d0
	beq .L774
	movhu (12,sp),d0
	exth d0
	cmp 0,d0
	bge .L773
	jmp .L774
.L776:
	movhu (8,sp),d1
	movhu (12,sp),d0
	cmp d0,d1
	bcs .L775
	movhu (8,sp),d1
	movhu (12,sp),d0
	sub d0,d1,d0
	movhu d0,(8,sp)
	movhu (sp),d1
	movhu (2,sp),d0
	or d1,d0
	movhu d0,(sp)
.L775:
	movhu (2,sp),d0
	lsr 1,d0
	movhu d0,(2,sp)
	movhu (12,sp),d0
	lsr 1,d0
	movhu d0,(12,sp)
.L774:
	movhu (2,sp),d0
	cmp 0,d0
	bne .L776
	mov (16,sp),d0
	cmp 0,d0
	beq .L777
	movhu (8,sp),d0
	jmp .L778
.L777:
	movhu (sp),d0
.L778:
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
	jmp .L780
.L782:
	mov (16,sp),d0
	add d0,d0
	mov d0,(16,sp)
	mov (4,sp),d0
	add d0,d0
	mov d0,(4,sp)
.L780:
	mov (16,sp),d1
	mov (12,sp),d0
	cmp d0,d1
	bcc .L783
	mov (4,sp),d0
	cmp 0,d0
	beq .L783
	mov (16,sp),d0
	cmp 0,d0
	bge .L782
	jmp .L783
.L785:
	mov (12,sp),d1
	mov (16,sp),d0
	cmp d0,d1
	bcs .L784
	mov (12,sp),d1
	mov (16,sp),d0
	sub d0,d1,d0
	mov d0,(12,sp)
	mov (sp),d1
	mov (4,sp),d0
	or d1,d0
	mov d0,(sp)
.L784:
	mov (4,sp),d0
	lsr 1,d0
	mov d0,(4,sp)
	mov (16,sp),d0
	lsr 1,d0
	mov d0,(16,sp)
.L783:
	mov (4,sp),d0
	cmp 0,d0
	bne .L785
	mov (20,sp),d0
	cmp 0,d0
	beq .L786
	mov (12,sp),d0
	jmp .L787
.L786:
	mov (sp),d0
.L787:
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
	beq .L789
	mov 0,d0
	mov d0,(sp)
	mov (8,sp),d1
	mov (32,sp),a0
	mov (16,sp),d0
	sub d0,a0,d0
	asl d0,d1,d0
	mov d0,(4,sp)
	jmp .L790
.L789:
	mov (32,sp),d0
	cmp 0,d0
	bne .L791
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L793
.L791:
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
.L790:
	mov (sp),a0
	mov (4,sp),a1
.L793:
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
	beq .L795
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
	jmp .L796
.L795:
	mov (32,sp),d0
	cmp 0,d0
	bne .L797
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L799
.L797:
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
.L796:
	mov (sp),a0
	mov (4,sp),a1
.L799:
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
	mov d0,r4
	lsr 24,r4
	mov 0,r5
	mov (152,sp),d0
	mov d0,a0
	lsr 8,a0
	mov 0,a1
	mov a0,r6
	and 65280,r6
	mov a1,r7
	and 0,r7
	mov r6,a0
	mov r7,a1
	or a0,r4,d0
	mov d0,(104,sp)
	or a1,r5,d1
	mov d1,(108,sp)
	mov (152,sp),d0
	mov d0,d1
	asl 8,d1
	mov (148,sp),d0
	mov d0,d2
	lsr 24,d2
	or d1,d2
	mov (152,sp),d0
	mov d0,d3
	lsr 24,d3
	mov d2,d0
	and 16711680,d0
	mov d0,(32,sp)
	mov d3,d1
	and 0,d1
	mov d1,(36,sp)
	mov (32,sp),d2
	mov (36,sp),d3
	mov (104,sp),d0
	or d2,d0
	mov d0,(96,sp)
	mov (108,sp),d1
	or d3,d1
	mov d1,(100,sp)
	mov (152,sp),d0
	mov d0,d1
	asl 24,d1
	mov (148,sp),d0
	mov d0,a2
	lsr 8,a2
	or d1,a2
	mov (152,sp),d0
	mov d0,a3
	lsr 8,a3
	mov a2,d0
	and -16777216,d0
	mov d0,(24,sp)
	mov a3,d1
	and 0,d1
	mov d1,(28,sp)
	mov (24,sp),a2
	mov (28,sp),a3
	mov (96,sp),d0
	or a2,d0
	mov d0,(88,sp)
	mov (100,sp),d1
	or a3,d1
	mov d1,(92,sp)
	mov (148,sp),d0
	mov d0,d1
	lsr 24,d1
	mov (152,sp),d0
	mov d0,r3
	asl 8,r3
	or d1,r3
	mov (148,sp),d0
	mov d0,r2
	asl 8,r2
	mov r2,d0
	and 0,d0
	mov d0,(16,sp)
	extbu r3,d1
	mov d1,(20,sp)
	mov (16,sp),r2
	mov (20,sp),r3
	mov (88,sp),d0
	or r2,d0
	mov d0,(80,sp)
	mov (92,sp),d1
	or r3,d1
	mov d1,(84,sp)
	mov (148,sp),d0
	mov d0,d1
	lsr 8,d1
	mov (152,sp),d0
	mov d0,r1
	asl 24,r1
	or d1,r1
	mov (148,sp),d0
	mov d0,r0
	asl 24,r0
	mov r0,d0
	and 0,d0
	mov d0,(8,sp)
	mov r1,d1
	and 65280,d1
	mov d1,(12,sp)
	mov (8,sp),r0
	mov (12,sp),r1
	mov (80,sp),d0
	or r0,d0
	mov d0,(72,sp)
	mov (84,sp),d1
	or r1,d1
	mov d1,(76,sp)
	mov (148,sp),d0
	mov d0,d1
	asl 8,d1
	mov d1,(68,sp)
	mov 0,d0
	mov d0,(64,sp)
	mov (64,sp),d1
	and 0,d1
	mov d1,(sp)
	mov (68,sp),d0
	and 16711680,d0
	mov d0,(4,sp)
	mov (sp),d1
	mov d1,(64,sp)
	mov (4,sp),d0
	mov d0,(68,sp)
	mov (72,sp),d1
	mov (64,sp),d0
	or d0,d1
	mov d1,(56,sp)
	mov (76,sp),d1
	mov (68,sp),d0
	or d0,d1
	mov d1,(60,sp)
	mov (148,sp),d0
	mov d0,d1
	asl 24,d1
	mov d1,(52,sp)
	mov 0,d0
	mov d0,(48,sp)
	mov (56,sp),d1
	mov (48,sp),d0
	or d0,d1
	mov d1,(40,sp)
	mov (60,sp),d1
	mov (52,sp),d0
	or d0,d1
	mov d1,(44,sp)
	mov (40,sp),d0
	mov (44,sp),d1
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
	add -52,sp
	mov d0,(56,sp)
	mov (56,sp),d0
	mov d0,(48,sp)
	mov (48,sp),d0
	cmp 65535,d0
	bhi .L805
	mov 16,d0
	jmp .L806
.L805:
	mov 0,d0
.L806:
	mov d0,(44,sp)
	mov 16,d1
	mov (44,sp),d0
	sub d0,d1,d0
	mov (48,sp),d1
	lsr d0,d1,d0
	mov d0,(40,sp)
	mov (44,sp),d0
	mov d0,(36,sp)
	mov (40,sp),d0
	and 65280,d0
	cmp 0,d0
	bne .L807
	mov 8,d0
	jmp .L808
.L807:
	mov 0,d0
.L808:
	mov d0,(32,sp)
	mov 8,d1
	mov (32,sp),d0
	sub d0,d1,d0
	mov (40,sp),d1
	lsr d0,d1,d0
	mov d0,(28,sp)
	mov (36,sp),d1
	mov (32,sp),d0
	add d1,d0
	mov d0,(24,sp)
	mov (28,sp),d0
	and 240,d0
	cmp 0,d0
	bne .L809
	mov 4,d0
	jmp .L810
.L809:
	mov 0,d0
.L810:
	mov d0,(20,sp)
	mov 4,d1
	mov (20,sp),d0
	sub d0,d1,d0
	mov (28,sp),d1
	lsr d0,d1,d0
	mov d0,(16,sp)
	mov (24,sp),d1
	mov (20,sp),d0
	add d1,d0
	mov d0,(12,sp)
	mov (16,sp),d0
	and 12,d0
	cmp 0,d0
	bne .L811
	mov 2,d0
	jmp .L812
.L811:
	mov 0,d0
.L812:
	mov d0,(8,sp)
	mov 2,d1
	mov (8,sp),d0
	sub d0,d1,d0
	mov (16,sp),d1
	lsr d0,d1,d0
	mov d0,(4,sp)
	mov (12,sp),d1
	mov (8,sp),d0
	add d1,d0
	mov d0,(sp)
	mov (4,sp),d0
	and 2,d0
	mov 1,d1
	cmp 0,d0
	beq .L813
	mov 0,d1
.L813:
	mov d1,a0
	mov 2,d1
	mov (4,sp),d0
	sub d0,d1,d0
	mul a0,d0,a1,d1
	mov (sp),d0
	add d1,d0
	ret [],52
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
	bge .L816
	mov 0,d0
	jmp .L821
.L816:
	mov (12,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	ble .L818
	mov 2,d0
	jmp .L821
.L818:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcc .L819
	mov 0,d0
	jmp .L821
.L819:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bls .L820
	mov 2,d0
	jmp .L821
.L820:
	mov 1,d0
.L821:
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
	add -56,sp
	mov d0,(60,sp)
	mov (60,sp),d0
	mov d0,(52,sp)
	mov (52,sp),d0
	exthu d0
	cmp 0,d0
	bne .L825
	mov 16,d0
	jmp .L826
.L825:
	mov 0,d0
.L826:
	mov d0,(48,sp)
	mov (48,sp),d0
	mov (52,sp),d1
	lsr d0,d1,d0
	mov d0,(44,sp)
	mov (48,sp),d0
	mov d0,(40,sp)
	mov (44,sp),d0
	extbu d0
	cmp 0,d0
	bne .L827
	mov 8,d0
	jmp .L828
.L827:
	mov 0,d0
.L828:
	mov d0,(36,sp)
	mov (36,sp),d0
	mov (44,sp),d1
	lsr d0,d1,d0
	mov d0,(32,sp)
	mov (40,sp),d1
	mov (36,sp),d0
	add d1,d0
	mov d0,(28,sp)
	mov (32,sp),d0
	and 15,d0
	cmp 0,d0
	bne .L829
	mov 4,d0
	jmp .L830
.L829:
	mov 0,d0
.L830:
	mov d0,(24,sp)
	mov (24,sp),d0
	mov (32,sp),d1
	lsr d0,d1,d0
	mov d0,(20,sp)
	mov (28,sp),d1
	mov (24,sp),d0
	add d1,d0
	mov d0,(16,sp)
	mov (20,sp),d0
	and 3,d0
	cmp 0,d0
	bne .L831
	mov 2,d0
	jmp .L832
.L831:
	mov 0,d0
.L832:
	mov d0,(12,sp)
	mov (12,sp),d0
	mov (20,sp),d1
	lsr d0,d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	and 3,d0
	mov d0,(4,sp)
	mov (16,sp),d1
	mov (12,sp),d0
	add d1,d0
	mov d0,(sp)
	mov (4,sp),d0
	lsr 1,d0
	mov 2,d1
	sub d0,d1,d0
	mov (4,sp),d1
	not d1
	and 1,d1
	not d1
	inc d1
	and d0,d1
	mov (sp),d0
	add d1,d0
	ret [],56
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
	mov d0,(8,sp)
	mov (28,sp),d0
	mov d0,(12,sp)
	mov (32,sp),d1
	mov (16,sp),d0
	and d1,d0
	cmp 0,d0
	beq .L835
	mov 0,d0
	mov d0,(4,sp)
	mov (12,sp),d1
	mov (32,sp),a0
	mov (16,sp),d0
	sub d0,a0,d0
	lsr d0,d1,d0
	mov d0,(sp)
	jmp .L836
.L835:
	mov (32,sp),d0
	cmp 0,d0
	bne .L837
	mov (24,sp),a0
	mov (28,sp),a1
	jmp .L839
.L837:
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
.L836:
	mov (sp),a0
	mov (4,sp),a1
.L839:
	mov a0,d0
	mov a1,d1
	ret [],20
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	add -32,sp
	mov d0,(36,sp)
	mov d1,(40,sp)
	mov 16,d0
	mov d0,(28,sp)
	mov (28,sp),d0
	mov -1,d1
	lsr d0,d1,d0
	mov d0,(24,sp)
	mov (36,sp),d1
	mov (24,sp),d0
	and d0,d1
	mov (40,sp),a0
	mov (24,sp),d0
	and a0,d0
	mul d1,d0
	mov d0,(sp)
	mov (sp),d1
	mov (28,sp),d0
	lsr d0,d1,d0
	mov d0,(20,sp)
	mov (sp),d0
	mov (24,sp),d1
	and d1,d0
	mov d0,(sp)
	mov (28,sp),d0
	mov (36,sp),d1
	lsr d0,d1
	mov (40,sp),a0
	mov (24,sp),d0
	and a0,d0
	mul d1,d0
	mov (20,sp),d1
	add d1,d0
	mov d0,(16,sp)
	mov (sp),d1
	mov (16,sp),a0
	mov (24,sp),d0
	and d0,a0
	mov (28,sp),d0
	asl d0,a0,d0
	add d1,d0
	mov d0,(sp)
	mov (28,sp),d0
	mov (16,sp),d1
	lsr d0,d1,d0
	mov d0,(4,sp)
	mov (sp),d1
	mov (28,sp),d0
	lsr d0,d1,d0
	mov d0,(12,sp)
	mov (sp),d0
	mov (24,sp),d1
	and d1,d0
	mov d0,(sp)
	mov (28,sp),d0
	mov (40,sp),d1
	lsr d0,d1
	mov (36,sp),a0
	mov (24,sp),d0
	and a0,d0
	mul d1,d0
	mov (12,sp),d1
	add d1,d0
	mov d0,(8,sp)
	mov (sp),d1
	mov (8,sp),a0
	mov (24,sp),d0
	and d0,a0
	mov (28,sp),d0
	asl d0,a0,d0
	add d1,d0
	mov d0,(sp)
	mov (4,sp),d1
	mov (28,sp),d0
	mov (8,sp),a0
	lsr d0,a0,d0
	add d1,d0
	mov d0,(4,sp)
	mov (4,sp),d1
	mov (28,sp),d0
	mov (36,sp),a0
	lsr d0,a0
	mov (28,sp),d0
	mov (40,sp),a1
	lsr d0,a1,d0
	mul a0,d0
	add d1,d0
	mov d0,(4,sp)
	mov (sp),a0
	mov (4,sp),a1
	mov a0,d0
	mov a1,d1
	ret [],32
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
	mov (20,sp),d1
	mov (28,sp),d0
	call +__muldsi3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(12,sp)
	mov a1,(16,sp)
	mov (16,sp),d1
	mov (32,sp),a0
	mov (20,sp),d0
	mul d0,a0
	mov (28,sp),a1
	mov (24,sp),d0
	mul a1,d0
	add a0,d0
	add d1,d0
	mov d0,(16,sp)
	mov (12,sp),a0
	mov (16,sp),a1
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
	ret [d2,d3,a2],12
	.size	__negdi2, .-__negdi2
	.global __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	add -24,sp
	mov d0,(28,sp)
	mov d1,(32,sp)
	mov (28,sp),d0
	mov d0,(sp)
	mov (32,sp),d0
	mov d0,(4,sp)
	mov (4,sp),d1
	mov (sp),d0
	xor d1,d0
	mov d0,(20,sp)
	mov (20,sp),d0
	lsr 16,d0
	mov (20,sp),d1
	xor d1,d0
	mov d0,(16,sp)
	mov (16,sp),d0
	lsr 8,d0
	mov (16,sp),d1
	xor d1,d0
	mov d0,(12,sp)
	mov (12,sp),d0
	lsr 4,d0
	mov (12,sp),d1
	xor d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	ret [],24
	.size	__paritydi2, .-__paritydi2
	.global __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	add -16,sp
	mov d0,(20,sp)
	mov (20,sp),d0
	mov d0,(12,sp)
	mov (12,sp),d0
	lsr 16,d0
	mov (12,sp),d1
	xor d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	lsr 8,d0
	mov (8,sp),d1
	xor d1,d0
	mov d0,(4,sp)
	mov (4,sp),d0
	lsr 4,d0
	mov (4,sp),d1
	xor d1,d0
	mov d0,(sp)
	mov (sp),d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	ret [],16
	.size	__paritysi2, .-__paritysi2
	.global __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -64,sp
	mov d0,(100,sp)
	mov d1,(104,sp)
	mov (100,sp),d0
	mov d0,(56,sp)
	mov (104,sp),d0
	mov d0,(60,sp)
	mov (60,sp),d0
	mov d0,d1
	asl 31,d1
	mov (56,sp),d0
	mov d0,a2
	lsr 1,a2
	or d1,a2
	mov (60,sp),d0
	mov d0,a3
	lsr 1,a3
	mov a2,d0
	and 1431655765,d0
	mov d0,(16,sp)
	mov a3,d1
	and 1431655765,d1
	mov d1,(20,sp)
	mov (56,sp),d0
	mov (60,sp),d1
	mov (16,sp),d2
	mov (20,sp),a0
	sub d2,d0,d2
	subc a0,d1,a0
	mov a0,(4,sp)
	mov d2,(sp)
	mov (sp),d0
	mov d0,(48,sp)
	mov (4,sp),d1
	mov d1,(52,sp)
	mov (52,sp),d0
	asl 30,d0
	mov (48,sp),d1
	mov d1,d2
	lsr 2,d2
	or d0,d2
	mov (52,sp),d0
	mov d0,d3
	lsr 2,d3
	mov d2,r6
	and 858993459,r6
	mov d3,r7
	and 858993459,r7
	mov (48,sp),d0
	mov d0,r4
	and 858993459,r4
	mov (52,sp),d0
	mov d0,r5
	and 858993459,r5
	add r4,r6,r2
	addc r5,r7,r3
	mov r2,(40,sp)
	mov r3,(44,sp)
	mov (44,sp),d0
	asl 28,d0
	mov (40,sp),d1
	mov d1,a0
	lsr 4,a0
	or d0,a0
	mov (44,sp),d0
	mov d0,a1
	lsr 4,a1
	mov (40,sp),d0
	mov (44,sp),d1
	add d0,a0,r0
	addc d1,a1,r1
	mov r0,d0
	and 252645135,d0
	mov d0,(32,sp)
	mov r1,d0
	and 252645135,d0
	mov d0,(36,sp)
	mov (32,sp),d0
	mov (36,sp),d1
	mov d1,a0
	lsr 0,a0
	mov a0,(8,sp)
	mov 0,a1
	mov a1,(12,sp)
	mov (8,sp),d1
	add d1,d0
	mov d0,(28,sp)
	mov (28,sp),d0
	lsr 16,d0
	mov (28,sp),d1
	add d1,d0
	mov d0,(24,sp)
	mov (24,sp),d0
	mov d0,d1
	lsr 8,d1
	mov (24,sp),d0
	add d1,d0
	and 127,d0
	ret [d2,d3,a2,a3,exreg1],96
	.size	__popcountdi2, .-__popcountdi2
	.global __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	add -20,sp
	mov d0,(24,sp)
	mov (24,sp),d0
	mov d0,(16,sp)
	mov (16,sp),d0
	lsr 1,d0
	and 1431655765,d0
	mov (16,sp),d1
	sub d0,d1,d0
	mov d0,(12,sp)
	mov (12,sp),d0
	lsr 2,d0
	mov d0,d1
	and 858993459,d1
	mov (12,sp),d0
	and 858993459,d0
	add d1,d0
	mov d0,(8,sp)
	mov (8,sp),d0
	mov d0,d1
	lsr 4,d1
	mov (8,sp),d0
	add d1,d0
	and 252645135,d0
	mov d0,(4,sp)
	mov (4,sp),d0
	lsr 16,d0
	mov (4,sp),d1
	add d1,d0
	mov d0,(sp)
	mov (sp),d0
	mov d0,d1
	lsr 8,d1
	mov (sp),d0
	add d1,d0
	and 63,d0
	ret [],20
	.size	__popcountsi2, .-__popcountsi2
	.global __powidf2
	.type	__powidf2, @function
__powidf2:
	movm [d2,d3],(sp)
	add -32,sp
	mov d0,(44,sp)
	mov d1,(48,sp)
	mov (52,sp),d0
	lsr 31,d0
	extbu d0
	mov d0,(20,sp)
	mov 0,d0
	mov d0,(24,sp)
	mov 1072693248,d0
	mov d0,(28,sp)
.L858:
	mov (52,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L855
	mov (44,sp),d0
	mov d0,(12,sp)
	mov (48,sp),d0
	mov d0,(16,sp)
	mov (24,sp),d0
	mov (28,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(24,sp)
	mov a1,(28,sp)
.L855:
	mov (52,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(52,sp)
	mov (52,sp),d0
	cmp 0,d0
	beq .L862
	mov (44,sp),d0
	mov d0,(12,sp)
	mov (48,sp),d0
	mov d0,(16,sp)
	mov (44,sp),d0
	mov (48,sp),d1
	call +__muldf3,[],0
	mov d0,a0
	mov d1,a1
	mov a0,(44,sp)
	mov a1,(48,sp)
	jmp .L858
.L862:
	mov (20,sp),d0
	cmp 0,d0
	beq .L859
	mov (24,sp),d0
	mov d0,(12,sp)
	mov (28,sp),d0
	mov d0,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov d0,d2
	mov d1,d3
	mov d2,a0
	mov d3,a1
	jmp .L861
.L859:
	mov (24,sp),a0
	mov (28,sp),a1
.L861:
	mov a0,d0
	mov a1,d1
	ret [d2,d3],40
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
.L868:
	mov (28,sp),d0
	and 1,d0
	cmp 0,d0
	beq .L865
	mov (24,sp),d1
	mov (16,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(16,sp)
.L865:
	mov (28,sp),d0
	mov d0,d1
	lsr 31,d1
	add d1,d0
	asr 1,d0
	mov d0,(28,sp)
	mov (28,sp),d0
	cmp 0,d0
	beq .L872
	mov (24,sp),d1
	mov (24,sp),d0
	call +__mulsf3,[],0
	mov d0,d1
	mov d1,(24,sp)
	jmp .L868
.L872:
	mov (12,sp),d0
	cmp 0,d0
	beq .L869
	mov (16,sp),d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,d1
	mov d1,d0
	jmp .L871
.L869:
	mov (16,sp),d0
.L871:
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
	bcc .L875
	mov 0,d0
	jmp .L880
.L875:
	mov (12,sp),d1
	mov (4,sp),d0
	cmp d0,d1
	bls .L877
	mov 2,d0
	jmp .L880
.L877:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bcc .L878
	mov 0,d0
	jmp .L880
.L878:
	mov (8,sp),d1
	mov (sp),d0
	cmp d0,d1
	bls .L879
	mov 2,d0
	jmp .L880
.L879:
	mov 1,d0
.L880:
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
	mov d0,(12,sp)
	mov (36,sp),d0
	mov d0,(16,sp)
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
