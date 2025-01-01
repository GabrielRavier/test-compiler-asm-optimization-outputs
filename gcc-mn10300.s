	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a1
	cmp d1,d0
	bls .L2
	add_mov -1, d1, -1, r0
	add d0,r0
	jmp .L3
.L4:
	movbu (a1,d1),a0
	movbu a0,(a1,r0)
	add -1,a1
.L3:
	cmp 0,a1
	bne .L4
	jmp .L5
.L2:
	bne .L8
	jmp .L5
.L7:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
	inc r0
	jmp .L6
.L8:
	mov 0,r0
.L6:
	cmp a1,r0
	bne .L7
.L5:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	movm [a3],(sp)
	mov sp,a3
	mov (20,a3),a0
	movbu (16,a3),r0
	jmp .L10
.L12:
	add_add -1, a0, 1, d1
	inc d0
.L10:
	cmp 0,a0
	beq .L11
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp a1,r0
	bne .L12
.L11:
	cmp 0,a0
	beq .L14
	inc d0
	jmp .L13
.L14:
	mov 0,d0
.L13:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	extbu d1
	jmp .L16
.L18:
	add_add 1, d0, -1, a0
.L16:
	cmp 0,a0
	beq .L17
	movbu (d0),a1
	cmp a1,d1
	bne .L18
.L17:
	cmp 0,a0
	bne .L19
	mov 0,d0
.L19:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	jmp .L22
.L24:
	add_add -1, a0, 1, d0
	inc d1
.L22:
	cmp 0,a0
	beq .L23
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	beq .L24
.L23:
	cmp 0,a0
	beq .L26
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	jmp .L25
.L26:
	mov 0,d0
.L25:
	mov a3,sp
	retf [a3],4
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	mov 0,a1
	jmp .L28
.L29:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
.L28:
	cmp a0,a1
	bne .L29
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	movm [a3],(sp)
	mov sp,a3
	extbu d1
	mov (16,a3),a0
	add -1,a0
	jmp .L31
.L33:
	movbu (a0,d0),a1
	mov -1,r0
	add_cmp a0, r0, a1, d1
	bne .L34
	add a0,d0
	jmp .L32
.L34:
	mov r0,a0
.L31:
	cmp -1,a0
	bne .L33
	mov 0,d0
.L32:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	add_mov d0, r0, d0, a1
	jmp .L36
.L37:
	movbu d1,(a1)
	inc a1
.L36:
	cmp r0,a1
	bne .L37
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	movm [a3],(sp)
	mov sp,a3
	jmp .L39
.L40:
	add_add 1, d1, 1, d0
.L39:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	bne .L40
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	movm [a3],(sp)
	mov sp,a3
	extbu d1
	jmp .L42
.L44:
	inc d0
.L42:
	movbu (d0),a0
	cmp 0,a0
	beq .L43
	cmp a0,d1
	bne .L44
.L43:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	movm [a3],(sp)
	mov sp,a3
.L47:
	movbu (d0),a0
	cmp a0,d1
	beq .L46
	inc d0
	movbu (-1,d0),a0
	cmp 0,a0
	bne .L47
	mov 0,d0
.L46:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movm [a3],(sp)
	mov sp,a3
	jmp .L51
.L53:
	add_add 1, d0, 1, d1
.L51:
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	bne .L52
	cmp 0,a1
	bne .L53
.L52:
	movbu (d0),a0
	movbu (d1),d0
	sub d0,a0,d0
	mov a3,sp
	retf [a3],4
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movm [a3],(sp)
	mov sp,a3
	mov d0,d1
	jmp .L55
.L56:
	inc d1
.L55:
	movbu (d1),a0
	cmp 0,a0
	bne .L56
	sub d0,d1,d0
	mov a3,sp
	retf [a3],4
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	cmp 0,r0
	beq .L62
	add -1,r0
	add d0,r0
	jmp .L59
.L61:
	add_add 1, d0, 1, d1
.L59:
	movbu (d0),a0
	cmp 0,a0
	beq .L60
	movbu (d1),a0
	cmp 0,a0
	beq .L60
	cmp r0,d0
	beq .L60
	movbu (d0),a1
	cmp a0,a1
	beq .L61
.L60:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	jmp .L58
.L62:
	mov 0,d0
.L58:
	mov a3,sp
	retf [a3],4
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	movm [a3],(sp)
	mov sp,a3
	mov d0,a0
	mov (16,a3),a1
	add a1,d0
	jmp .L64
.L65:
	movbu (1,a0),a1
	movbu a1,(d1)
	movbu (a0),a1
	movbu a1,(1,d1)
	add_add 2, d1, 2, a0
.L64:
	sub a0,d0,a1
	cmp 1,a1
	bgt .L65
	mov a3,sp
	retf [a3],4
	.size	swab, .-swab
	.global isalpha
	.type	isalpha, @function
isalpha:
	movm [a3],(sp)
	mov sp,a3
	mov d0,d1
	or 32,d1
	add -97,d1
	mov 1,d0
	cmp 25,d1
	bls .L67
	mov 0,d0
.L67:
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	movm [a3],(sp)
	mov sp,a3
	mov 1,d1
	cmp 127,d0
	bls .L69
	mov 0,d1
.L69:
	mov d1,d0
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	movm [a3],(sp)
	mov sp,a3
	cmp 32,d0
	beq .L72
	cmp 9,d0
	bne .L73
	mov 1,d0
	jmp .L71
.L72:
	mov 1,d0
	jmp .L71
.L73:
	mov 0,d0
.L71:
	mov a3,sp
	retf [a3],4
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	movm [a3],(sp)
	mov sp,a3
	cmp 31,d0
	bls .L76
	cmp 127,d0
	bne .L77
	mov 1,d0
	jmp .L75
.L76:
	mov 1,d0
	jmp .L75
.L77:
	mov 0,d0
.L75:
	mov a3,sp
	retf [a3],4
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	movm [a3],(sp)
	mov sp,a3
	mov -48,d1
	add d0,d1
	mov 1,d0
	cmp 9,d1
	bls .L79
	mov 0,d0
.L79:
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	movm [a3],(sp)
	mov sp,a3
	mov -33,d1
	add d0,d1
	mov 1,d0
	cmp 93,d1
	bls .L81
	mov 0,d0
.L81:
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	movm [a3],(sp)
	mov sp,a3
	mov -97,d1
	add d0,d1
	mov 1,d0
	cmp 25,d1
	bls .L83
	mov 0,d0
.L83:
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	movm [a3],(sp)
	mov sp,a3
	mov -32,d1
	add d0,d1
	mov 1,d0
	cmp 94,d1
	bls .L85
	mov 0,d0
.L85:
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	movm [a3],(sp)
	mov sp,a3
	cmp 32,d0
	beq .L88
	add -9,d0
	cmp 4,d0
	bhi .L89
	mov 1,d0
	jmp .L87
.L88:
	mov 1,d0
	jmp .L87
.L89:
	mov 0,d0
.L87:
	mov a3,sp
	retf [a3],4
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	movm [a3],(sp)
	mov sp,a3
	mov -65,d1
	add d0,d1
	mov 1,d0
	cmp 25,d1
	bls .L91
	mov 0,d0
.L91:
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	movm [a3],(sp)
	mov sp,a3
	cmp 31,d0
	bls .L94
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L95
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L96
	add -65529,d0
	cmp 2,d0
	bhi .L97
	mov 1,d0
	jmp .L93
.L94:
	mov 1,d0
	jmp .L93
.L95:
	mov 1,d0
	jmp .L93
.L96:
	mov 1,d0
	jmp .L93
.L97:
	mov 0,d0
.L93:
	mov a3,sp
	retf [a3],4
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	movm [a3],(sp)
	mov sp,a3
	mov -48,d1
	add d0,d1
	mov 1,d0
	cmp 9,d1
	bls .L99
	mov 0,d0
.L99:
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	movm [a3],(sp)
	mov sp,a3
	cmp 254,d0
	bhi .L101
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L102
	mov 0,d1
.L102:
	extbu d1,d0
	jmp .L103
.L101:
	cmp 8231,d0
	bls .L104
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L105
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L106
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L107
	and 65534,d0
	cmp 65534,d0
	beq .L108
	mov 1,d0
	jmp .L103
.L104:
	mov 1,d0
	jmp .L103
.L105:
	mov 1,d0
	jmp .L103
.L106:
	mov 1,d0
	jmp .L103
.L107:
	mov 0,d0
	jmp .L103
.L108:
	mov 0,d0
.L103:
	mov a3,sp
	retf [a3],4
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	movm [a3],(sp)
	mov sp,a3
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L111
	or 32,d0
	add -97,d0
	cmp 5,d0
	bhi .L112
	mov 1,d0
	jmp .L110
.L111:
	mov 1,d0
	jmp .L110
.L112:
	mov 0,d0
.L110:
	mov a3,sp
	retf [a3],4
	.size	iswxdigit, .-iswxdigit
	.global toascii
	.type	toascii, @function
toascii:
	movm [a3],(sp)
	mov sp,a3
	and 127,d0
	mov a3,sp
	retf [a3],4
	.size	toascii, .-toascii
	.global fdim
	.type	fdim, @function
fdim:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (40,a3),r4
	mov (44,a3),r5
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L117
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L118
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L121
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
	jmp .L115
.L117:
	mov_mov d2, a0, d3, a1
	jmp .L115
.L118:
	mov_mov r4, a0, r5, a1
	jmp .L115
.L121:
	mov 0,a0
	mov a0,a1
.L115:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L125
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L126
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L129
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
	jmp .L123
.L125:
	mov d2,d0
	jmp .L123
.L126:
	mov d3,d0
	jmp .L123
.L129:
	mov 0,d0
.L123:
	mov a3,sp
	ret [d2,d3,a3],12
	.size	fdimf, .-fdimf
	.global fmax
	.type	fmax, @function
fmax:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (40,a3),r4
	mov (44,a3),r5
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L134
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L135
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L132
	cmp 0,d3
	bge .L136
	mov_mov r4, a0, r5, a1
	jmp .L131
.L132:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L139
	mov_mov r4, a0, r5, a1
	jmp .L131
.L134:
	mov_mov r4, a0, r5, a1
	jmp .L131
.L135:
	mov_mov d2, a0, d3, a1
	jmp .L131
.L136:
	mov_mov d2, a0, d3, a1
	jmp .L131
.L139:
	mov_mov d2, a0, d3, a1
.L131:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L144
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L145
	mov d2,d1
	and -2147483648,d1
	mov d3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L142
	mov_cmp d2, d0, 0, d2
	bge .L146
	mov d3,d0
	jmp .L141
.L142:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L149
	mov d3,d0
	jmp .L141
.L144:
	mov d3,d0
	jmp .L141
.L145:
	mov d2,d0
	jmp .L141
.L146:
	jmp .L141
.L149:
	mov d2,d0
.L141:
	mov a3,sp
	ret [d2,d3,a3],12
	.size	fmaxf, .-fmaxf
	.global fmaxl
	.type	fmaxl, @function
fmaxl:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (40,a3),r4
	mov (44,a3),r5
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L154
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L155
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L152
	cmp 0,d3
	bge .L156
	mov_mov r4, a0, r5, a1
	jmp .L151
.L152:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L159
	mov_mov r4, a0, r5, a1
	jmp .L151
.L154:
	mov_mov r4, a0, r5, a1
	jmp .L151
.L155:
	mov_mov d2, a0, d3, a1
	jmp .L151
.L156:
	mov_mov d2, a0, d3, a1
	jmp .L151
.L159:
	mov_mov d2, a0, d3, a1
.L151:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	fmaxl, .-fmaxl
	.global fmin
	.type	fmin, @function
fmin:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (40,a3),r4
	mov (44,a3),r5
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L164
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L165
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L162
	cmp 0,d3
	bge .L166
	mov_mov d2, a0, d3, a1
	jmp .L161
.L162:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L169
	mov_mov d2, a0, d3, a1
	jmp .L161
.L164:
	mov_mov r4, a0, r5, a1
	jmp .L161
.L165:
	mov_mov d2, a0, d3, a1
	jmp .L161
.L166:
	mov_mov r4, a0, r5, a1
	jmp .L161
.L169:
	mov_mov r4, a0, r5, a1
.L161:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, d3, d1, d2
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L174
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L175
	mov d3,d1
	and -2147483648,d1
	mov d2,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L172
	mov_cmp d3, d0, 0, d3
	bge .L176
	jmp .L171
.L172:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L179
	mov d3,d0
	jmp .L171
.L174:
	mov d2,d0
	jmp .L171
.L175:
	mov d3,d0
	jmp .L171
.L176:
	mov d2,d0
	jmp .L171
.L179:
	mov d2,d0
.L171:
	mov a3,sp
	ret [d2,d3,a3],12
	.size	fminf, .-fminf
	.global fminl
	.type	fminl, @function
fminl:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (40,a3),r4
	mov (44,a3),r5
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L184
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L185
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L182
	cmp 0,d3
	bge .L186
	mov_mov d2, a0, d3, a1
	jmp .L181
.L182:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L189
	mov_mov d2, a0, d3, a1
	jmp .L181
.L184:
	mov_mov r4, a0, r5, a1
	jmp .L181
.L185:
	mov_mov d2, a0, d3, a1
	jmp .L181
.L186:
	mov_mov r4, a0, r5, a1
	jmp .L181
.L189:
	mov_mov r4, a0, r5, a1
.L181:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
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
	mov +s.0,d1
	jmp .L191
.L192:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
.L191:
	cmp 0,d0
	bne .L192
	movbu d0,(d1)
	mov +s.0,d0
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.global srand
	.type	srand, @function
srand:
	movm [a3],(sp)
	mov sp,a3
	mov 0,a0
	mov_mov a0, a1, -1, a0
	add d0,a0
	mov a0,(+seed)
	mov a1,(+seed+4)
	mov a3,sp
	retf [a3],4
	.size	srand, .-srand
	.global rand
	.type	rand, @function
rand:
	movm [d2,a3],(sp)
	mov sp,a3
	mov (+seed),a0
	mov (+seed+4),a1
	mul 1284865837,a1
	mov 1481765933,d0
	mul a0,d0
	add d0,a1
	mov 1284865837,r0
	mulu a0,r0,d1,d0
	add_mov a1, d1, 0, a0
	mov_mov a0, d2, 1, a0
	add d0,a0
	addc d2,d1,a1
	mov a0,(+seed)
	mov a1,(+seed+4)
	mov a1,d0
	lsr 1,d0
	mov a3,sp
	ret [d2,a3],8
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	movm [a3],(sp)
	mov sp,a3
	cmp 0,d1
	bne .L196
	mov d1,(4,d0)
	mov d1,(d0)
	jmp .L195
.L196:
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L195
	mov d0,(4,d1)
.L195:
	mov a3,sp
	retf [a3],4
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	movm [a3],(sp)
	mov sp,a3
	mov (d0),d1
	cmp 0,d1
	beq .L199
	mov (4,d0),a0
	mov a0,(4,d1)
.L199:
	mov (4,d0),d1
	cmp 0,d1
	beq .L198
	mov (d0),d0
	mov d0,(d1)
.L198:
	mov a3,sp
	retf [a3],4
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -16,sp
	mov_mov d0, r4, d1, r7
	mov (48,a3),r5
	mov (52,a3),r6
	mov (44,a3),d0
	mov (d0),a2
	mov_mov d1, d3, 0, d2
	jmp .L202
.L205:
	mov_mov d3, d1, r4, d0
	mov r6,a0
	calls (a0)
	add_cmp r5, d3, 0, d0
	bne .L203
	mul d2,r5,d1,d0
	add r7,d0
	jmp .L204
.L203:
	inc d2
.L202:
	cmp a2,d2
	bne .L205
	mov 1,d0
	add a2,d0
	mov (44,a3),a0
	mov d0,(a0)
	mul r5,a2,d1,d0
	mov r5,(12,sp)
	mov_add r4, d1, r7, d0
	call +memcpy,[],0
	mov a0,d0
.L204:
	mov d0,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	lsearch, .-lsearch
	.global lfind
	.type	lfind, @function
lfind:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, a2, d1, r6
	mov (48,a3),r5
	mov (52,a3),r7
	mov (44,a3),d0
	mov (d0),r4
	mov_mov d1, d3, 0, d2
	jmp .L207
.L210:
	mov_mov d3, d1, a2, d0
	mov r7,a0
	calls (a0)
	add_cmp r5, d3, 0, d0
	bne .L208
	mul d2,r5,d1,d0
	add r6,d0
	jmp .L209
.L208:
	inc d2
.L207:
	cmp r4,d2
	bne .L210
	mov 0,d0
.L209:
	mov d0,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	movm [a3],(sp)
	mov sp,a3
	mov_cmp d0, d1, 0, d0
	bge .L212
	mov 0,d0
	sub d1,d0
.L212:
	mov a3,sp
	retf [a3],4
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	movm [d2,a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,d2
	jmp .L214
.L215:
	inc d2
.L214:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L215
	movbu (d2),d0
	cmp 43,d0
	beq .L221
	cmp 45,d0
	bne .L222
	mov 1,a0
	jmp .L216
.L221:
	mov 0,a0
.L216:
	inc d2
	jmp .L217
.L222:
	mov 0,a0
.L217:
	mov 0,d0
	jmp .L218
.L219:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L218:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L219
	cmp 0,a0
	bne .L220
	not d0
	inc d0
.L220:
	mov a3,sp
	ret [d2,a3],8
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2,a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,d2
	jmp .L225
.L226:
	inc d2
.L225:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L226
	movbu (d2),d0
	cmp 43,d0
	beq .L232
	cmp 45,d0
	bne .L233
	mov 1,a0
	jmp .L227
.L232:
	mov 0,a0
.L227:
	inc d2
	jmp .L228
.L233:
	mov 0,a0
.L228:
	mov 0,d0
	jmp .L229
.L230:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L229:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L230
	cmp 0,a0
	bne .L231
	not d0
	inc d0
.L231:
	mov a3,sp
	ret [d2,a3],8
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,a3,exreg1],(sp)
	mov sp,a3
	add -12,sp
	mov d0,d2
	jmp .L236
.L237:
	inc d2
.L236:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L237
	movbu (d2),d0
	cmp 43,d0
	beq .L243
	cmp 45,d0
	bne .L244
	mov 1,r0
	jmp .L238
.L243:
	mov 0,r0
.L238:
	inc d2
	jmp .L239
.L244:
	mov 0,r0
.L239:
	mov 0,d0
	mov d0,d1
	mov 10,a1
	jmp .L240
.L241:
	mov 10,a0
	mul d1,a0
	mulu d0,a1,r5,r4
	add_add a0, r5, 1, d2
	movbu (-1,d2),a0
	add -48,a0
	mov_mov a0, r6, a0, r7
	asr 31,r7
	sub a0,r4,d0
	subc r7,r5,d1
.L240:
	movbu (d2),a0
	add -48,a0
	cmp 9,a0
	bls .L241
	cmp 0,r0
	bne .L245
	sub d0,r0,a0
	subc d1,r0,a1
	jmp .L242
.L245:
	mov_mov d0, a0, d1, a1
.L242:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,a3,exreg1],24
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, r5, d1, a2
	mov (44,a3),d3
	mov (48,a3),r4
	mov (52,a3),r6
	jmp .L247
.L251:
	mov d3,d2
	lsr 1,d2
	mul r4,d2
	add a2,d2
	mov_mov d2, d1, r5, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	bge .L248
	lsr 1,d3
	jmp .L247
.L248:
	ble .L252
	add r4,d2,a2
	mov d3,d0
	add_lsr -1, d3, 1, d0
	sub d0,d3
.L247:
	cmp 0,d3
	bne .L251
	mov 0,d0
	jmp .L250
.L252:
	mov d2,d0
.L250:
	mov d0,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -16,sp
	mov d0,r5
	mov (48,a3),r4
	mov (52,a3),r7
	mov (56,a3),r6
	mov (44,a3),d3
	mov d1,a2
	jmp .L254
.L257:
	mov d3,d2
	asr 1,d2
	mul r4,d2
	add a2,d2
	mov r6,(12,sp)
	mov_mov d2, d1, r5, d0
	mov r7,a0
	calls (a0)
	cmp 0,d0
	beq .L258
	ble .L256
	add r4,d2,a2
	add -1,d3
.L256:
	asr 1,d3
.L254:
	cmp 0,d3
	bne .L257
	mov 0,d0
	jmp .L255
.L258:
	mov d2,d0
.L255:
	mov d0,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	bsearch_r, .-bsearch_r
	.global div
	.type	div, @function
div:
	movm [d2,a3],(sp)
	mov sp,a3
	ext d0
	div d1,d0
	mov mdr,d1
	mov a3,sp
	ret [d2,a3],8
	.size	div, .-div
	.global imaxabs
	.type	imaxabs, @function
imaxabs:
	movm [d2,a3],(sp)
	mov sp,a3
	mov_mov d0, r0, d0, a0
	mov_cmp d1, a1, 0, d1
	bge .L261
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
.L261:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	retf [d2,a3],8
	.size	imaxabs, .-imaxabs
	.global imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -28,sp
	mov_mov d0, a2, d1, r6
	mov (44,a3),r7
	mov (48,a3),d2
	mov (52,a3),d3
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d1, d0, r7, d1
	call +__divdi3,[],0
	mov_mov d0, r4, d1, r5
	mov d0,(-8,a3)
	mov d1,(-4,a3)
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r6, d0, r7, d1
	call +__moddi3,[],0
	mov r4,d2
	mov r4,(a2)
	mov r5,(4,a2)
	mov d0,(8,a2)
	mov d1,(12,a2)
	mov a2,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	imaxdiv, .-imaxdiv
	.global labs
	.type	labs, @function
labs:
	movm [a3],(sp)
	mov sp,a3
	mov_cmp d0, d1, 0, d0
	bge .L265
	mov 0,d0
	sub d1,d0
.L265:
	mov a3,sp
	retf [a3],4
	.size	labs, .-labs
	.global ldiv
	.type	ldiv, @function
ldiv:
	movm [d2,a3],(sp)
	mov sp,a3
	ext d0
	div d1,d0
	mov mdr,d1
	mov a3,sp
	ret [d2,a3],8
	.size	ldiv, .-ldiv
	.global llabs
	.type	llabs, @function
llabs:
	movm [d2,a3],(sp)
	mov sp,a3
	mov_mov d0, r0, d0, a0
	mov_cmp d1, a1, 0, d1
	bge .L268
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
.L268:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	retf [d2,a3],8
	.size	llabs, .-llabs
	.global lldiv
	.type	lldiv, @function
lldiv:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -28,sp
	mov_mov d0, a2, d1, r6
	mov (44,a3),r7
	mov (48,a3),d2
	mov (52,a3),d3
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d1, d0, r7, d1
	call +__divdi3,[],0
	mov_mov d0, r4, d1, r5
	mov d0,(-8,a3)
	mov d1,(-4,a3)
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r6, d0, r7, d1
	call +__moddi3,[],0
	mov r4,d2
	mov r4,(a2)
	mov r5,(4,a2)
	mov d0,(8,a2)
	mov d1,(12,a2)
	mov a2,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	lldiv, .-lldiv
	.global wcschr
	.type	wcschr, @function
wcschr:
	movm [a3],(sp)
	mov sp,a3
	jmp .L272
.L274:
	add 4,d0
.L272:
	mov (d0),a0
	cmp 0,a0
	beq .L273
	cmp a0,d1
	bne .L274
.L273:
	mov (d0),d1
	cmp 0,d1
	bne .L275
	mov 0,d0
.L275:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	movm [a3],(sp)
	mov sp,a3
	jmp .L278
.L280:
	add_add 4, d0, 4, d1
.L278:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L279
	cmp 0,a1
	beq .L279
	mov (d1),a0
	cmp 0,a0
	bne .L280
.L279:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L283
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L282
	mov 0,d0
.L282:
	extbu d0
	jmp .L281
.L283:
	mov -1,d0
.L281:
	mov a3,sp
	retf [a3],4
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	movm [a3],(sp)
	mov sp,a3
	mov d0,r0
	setlb
.L285:
	mov (d1+),a1
	mov a1,(r0+)
	cmp 0,a1
	Lne # loop back to: .L285
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	movm [a3],(sp)
	mov sp,a3
	mov d0,d1
	jmp .L288
.L289:
	add 4,d1
.L288:
	mov (d1),a0
	cmp 0,a0
	bne .L289
	sub d0,d1,d0
	asr 2,d0
	mov a3,sp
	retf [a3],4
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	jmp .L291
.L293:
	add_add -1, a0, 4, d0
	add 4,d1
.L291:
	cmp 0,a0
	beq .L292
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L292
	cmp 0,r0
	beq .L292
	mov (d1),a1
	cmp 0,a1
	bne .L293
.L292:
	cmp 0,a0
	beq .L296
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L297
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L295
	mov 0,d0
.L295:
	extbu d0
	jmp .L294
.L296:
	mov 0,d0
	jmp .L294
.L297:
	mov -1,d0
.L294:
	mov a3,sp
	retf [a3],4
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	jmp .L299
.L301:
	add_add -1, a0, 4, d0
.L299:
	cmp 0,a0
	beq .L300
	mov (d0),a1
	cmp a1,d1
	bne .L301
.L300:
	cmp 0,a0
	bne .L302
	mov 0,d0
.L302:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	jmp .L305
.L307:
	add_add -1, a0, 4, d0
	add 4,d1
.L305:
	cmp 0,a0
	beq .L306
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	beq .L307
.L306:
	cmp 0,a0
	beq .L310
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L311
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L309
	mov 0,d0
.L309:
	extbu d0
	jmp .L308
.L310:
	mov 0,d0
	jmp .L308
.L311:
	mov -1,d0
.L308:
	mov a3,sp
	retf [a3],4
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	mov 0,a1
	jmp .L313
.L314:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L313:
	add -1,r0
	cmp -1,r0
	bne .L314
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a1
	cmp d1,d0
	beq .L316
	sub d1,d0,r0
	mov a1,a0
	asl2 a0
	cmp a0,r0
	bcc .L321
	add -1,a1
	asl2 a1
	jmp .L318
.L319:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
.L318:
	cmp -4,a1
	bne .L319
	jmp .L316
.L320:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	inc4 r0
	jmp .L317
.L321:
	mov 0,r0
.L317:
	add -1,a1
	cmp -1,a1
	bne .L320
.L316:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a1
	mov d0,r0
	jmp .L323
.L324:
	mov d1,(r0+)
.L323:
	add -1,a1
	cmp -1,a1
	bne .L324
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	cmp d1,d0
	bcc .L326
	add_add -1, d0, -1, d1
	jmp .L327
.L328:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
.L327:
	cmp 0,a0
	bne .L328
	jmp .L325
.L326:
	bne .L332
	jmp .L325
.L331:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	jmp .L330
.L332:
	mov 0,a1
.L330:
	cmp a0,a1
	bne .L331
.L325:
	mov a3,sp
	retf [a3],4
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, r0, d1, r1
	mov (16,a3),d0
	mov d0,d1
	and 32,d1
	beq .L334
	mov 0,r2
	asl d0,r0,r3
	jmp .L335
.L334:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
.L335:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L336
	not d0
	add_mov 1, d0, 0, a0
	mov a0,a1
	lsr d0,r1,a0
	jmp .L337
.L336:
	mov r1,d1
	add d1,d1
	not d0
	inc d0
	and 63,d0
	mov d0,a0
	not a0
	asl a0,d1
	lsr d0,r0,a0
	or d1,a0
	lsr d0,r1,a1
.L337:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	mov a3,sp
	retf [a3],4
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, r0, d1, r1
	mov (16,a3),d0
	mov d0,d1
	and 32,d1
	beq .L339
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
	jmp .L340
.L339:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
.L340:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L341
	not d0
	add_mov 1, d0, 0, a0
	asl d0,r0,a1
	jmp .L342
.L341:
	mov r0,d1
	lsr 1,d1
	not d0
	inc d0
	and 63,d0
	mov d0,a0
	not a0
	lsr a0,d1
	asl d0,r1,a1
	or d1,a1
	asl d0,r0,a0
.L342:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	mov a3,sp
	retf [a3],4
	.size	rotr64, .-rotr64
	.global rotl32
	.type	rotl32, @function
rotl32:
	movm [a3],(sp)
	mov sp,a3
	asl d1,d0,a0
	not d1
	inc d1
	lsr d1,d0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotl32, .-rotl32
	.global rotr32
	.type	rotr32, @function
rotr32:
	movm [a3],(sp)
	mov sp,a3
	lsr d1,d0,a0
	not d1
	inc d1
	asl d1,d0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotr32, .-rotr32
	.global rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	movm [a3],(sp)
	mov sp,a3
	asl d1,d0,a0
	not d1
	inc d1
	lsr d1,d0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotl_sz, .-rotl_sz
	.global rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	movm [a3],(sp)
	mov sp,a3
	lsr d1,d0,a0
	not d1
	inc d1
	asl d1,d0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotr_sz, .-rotr_sz
	.global rotl16
	.type	rotl16, @function
rotl16:
	movm [a3],(sp)
	mov sp,a3
	exthu d0,a0
	asl d1,a0,d0
	mov 16,a1
	sub d1,a1,d1
	lsr d1,a0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotl16, .-rotl16
	.global rotr16
	.type	rotr16, @function
rotr16:
	movm [a3],(sp)
	mov sp,a3
	exthu d0,a0
	lsr d1,a0,d0
	mov 16,a1
	sub d1,a1,d1
	asl d1,a0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotr16, .-rotr16
	.global rotl8
	.type	rotl8, @function
rotl8:
	movm [a3],(sp)
	mov sp,a3
	extbu d0,a0
	asl d1,a0,d0
	mov 8,a1
	sub d1,a1,d1
	lsr d1,a0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotl8, .-rotl8
	.global rotr8
	.type	rotr8, @function
rotr8:
	movm [a3],(sp)
	mov sp,a3
	extbu d0,a0
	lsr d1,a0,d0
	mov 8,a1
	sub d1,a1,d1
	asl d1,a0
	or a0,d0
	mov a3,sp
	retf [a3],4
	.size	rotr8, .-rotr8
	.global bswap_16
	.type	bswap_16, @function
bswap_16:
	movm [a3],(sp)
	mov sp,a3
	mov d0,d1
	and 65280,d1
	lsr 8,d1
	extbu d0
	asl 8,d0
	or d1,d0
	mov a3,sp
	retf [a3],4
	.size	bswap_16, .-bswap_16
	.global bswap_32
	.type	bswap_32, @function
bswap_32:
	movm [a3],(sp)
	mov sp,a3
	mov d0,a0
	lsr 24,a0
	mov d0,d1
	and 16711680,d1
	lsr 8,d1
	or_mov a0, d1, d0, a0
	and 65280,a0
	asl 8,a0
	or a0,d1
	asl 24,d0
	or d1,d0
	mov a3,sp
	retf [a3],4
	.size	bswap_32, .-bswap_32
	.global bswap_64
	.type	bswap_64, @function
bswap_64:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	mov_mov d0, a0, d1, a1
	mov_mov 0, d2, d1, d3
	and -16777216,d3
	mov_mov d2, d1, d3, d0
	lsr 24,d0
	mov_mov d2, r0, a1, r1
	and 16711680,r1
	mov r1,d2
	lsr 8,d2
	or d0,d2,r4
	mov a1,d3
	and 65280,d3
	mov d3,d0
	asl 8,d0
	lsr 24,r0
	or_mov d0, r0, d3, r1
	lsr 24,r1
	or r0,r4,r2
	mov r1,r3
	extbu a1,d3
	mov d3,d0
	asl 24,d0
	mov d1,r0
	lsr 8,r0
	or_mov d0, r0, d3, r1
	lsr 8,r1
	or r0,r2,d2
	or r1,r3,d3
	mov a0,r2
	and -16777216,r2
	mov r2,r1
	lsr 24,r1
	mov r2,r0
	asl 8,r0
	or r0,d2,r2
	or r1,d3,r3
	mov a0,d2
	and 16711680,d2
	mov d2,r1
	lsr 8,r1
	mov d2,r0
	asl 24,r0
	or r0,r2,r4
	or r1,r3,r5
	mov a0,d2
	and 65280,d2
	mov d2,r1
	asl 8,r1
	mov r4,d2
	or r1,r5,d3
	extbu a0,r2
	mov r2,r1
	asl 24,r1
	or r1,d3,a1
	mov_mov r4, d0, a1, d1
	mov a3,sp
	retf [d2,d3,a3,exreg1],28
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	movm [a3],(sp)
	mov sp,a3
	mov 0,d1
	jmp .L355
.L358:
	lsr d1,d0,a0
	btst 1,a0
	beq .L356
	mov 1,d0
	add d1,d0
	jmp .L357
.L356:
	inc d1
.L355:
	cmp 32,d1
	bne .L358
	mov 0,d0
.L357:
	mov a3,sp
	retf [a3],4
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	movm [a3],(sp)
	mov sp,a3
	cmp 0,d0
	beq .L363
	mov 1,d1
	jmp .L361
.L362:
	add_asr 1, d1, 1, d0
.L361:
	btst 1,d0
	beq .L362
	mov d1,d0
	jmp .L360
.L363:
	mov 0,d0
.L360:
	mov a3,sp
	retf [a3],4
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movm [d2,a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,d2
	mov -8388609,d1
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L367
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L370
	mov 1,d0
	jmp .L365
.L367:
	mov 1,d0
	jmp .L365
.L370:
	mov 0,d0
.L365:
	mov a3,sp
	ret [d2,a3],8
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,d0
	mov d0,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L374
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L377
	mov 1,d0
	jmp .L372
.L374:
	mov 1,d0
	jmp .L372
.L377:
	mov 0,d0
.L372:
	mov a3,sp
	ret [d2,d3,a3],12
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,d0
	mov d0,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L381
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L384
	mov 1,d0
	jmp .L379
.L381:
	mov 1,d0
	jmp .L379
.L384:
	mov 0,d0
.L379:
	mov a3,sp
	ret [d2,d3,a3],12
	.size	gl_isinfl, .-gl_isinfl
	.global _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	movm [d2,a3],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, d2, d1, d0
	call +__floatsidf,[],0
	mov d0,(d2)
	mov d1,(4,d2)
	mov a3,sp
	ret [d2,a3],8
	.size	_Qp_itoq, .-_Qp_itoq
	.global ldexpf
	.type	ldexpf, @function
ldexpf:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, a2, d1, d2
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L387
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov_mov d0, d1, a2, d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L387
	cmp 0,d2
	bge .L392
	mov 1056964608,d3
	jmp .L391
.L392:
	mov 1073741824,d3
.L391:
	btst 1,d2
	beq .L390
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
.L390:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L387
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L391
.L387:
	mov a2,d0
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, r4, d1, r5
	mov (44,a3),a2
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L395
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L395
	cmp 0,a2
	bge .L400
	mov 0,d2
	mov 1071644672,d3
	jmp .L399
.L400:
	mov 0,d2
	mov 1073741824,d3
.L399:
	btst 1,a2
	beq .L398
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L398:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L395
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L399
.L395:
	mov_mov r4, d0, r5, d1
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, r4, d1, r5
	mov (44,a3),a2
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L403
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L403
	cmp 0,a2
	bge .L408
	mov 0,d2
	mov 1071644672,d3
	jmp .L407
.L408:
	mov 0,d2
	mov 1073741824,d3
.L407:
	btst 1,a2
	beq .L406
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L406:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L403
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L407
.L403:
	mov_mov r4, d0, r5, d1
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r2
	add_mov d0, r2, d0, a1
	jmp .L411
.L412:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
.L411:
	cmp r2,a1
	bne .L412
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	movm [d2,d3,a2,a3],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, d3, d1, d2
	mov (28,a3),a2
	call +strlen,[],0
	add d3,d0
	jmp .L414
.L416:
	add_add 1, d2, 1, d0
	add -1,a2
.L414:
	cmp 0,a2
	beq .L415
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	bne .L416
.L415:
	cmp 0,a2
	bne .L417
	mov 0,d1
	movbu d1,(d0)
.L417:
	mov_mov d3, a0, d3, d0
	mov a3,sp
	ret [d2,d3,a2,a3],16
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d0
	jmp .L419
.L421:
	inc d0
.L419:
	cmp d1,d0
	beq .L420
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L421
.L420:
	mov a3,sp
	retf [a3],4
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movm [a3],(sp)
	mov sp,a3
	jmp .L423
.L425:
	inc a1
	movbu (-1,a1),r1
	movbu (d0),r0
	cmp r0,r1
	bne .L426
	jmp .L424
.L428:
	mov d1,a1
.L426:
	movbu (a1),r0
	cmp 0,r0
	bne .L425
	inc d0
.L423:
	movbu (d0),a0
	cmp 0,a0
	bne .L428
	mov 0,d0
.L424:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d0
.L431:
	movbu (a0),a1
	cmp a1,d1
	bne .L430
	mov a0,d0
.L430:
	inc a0
	movbu (-1,a0),a1
	cmp 0,a1
	bne .L431
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -16,sp
	mov_mov d0, d2, d1, d3
	mov d1,d0
	call +strlen,[],0
	mov_cmp d0, a2, 0, d0
	beq .L438
	movbu (d3),r4
	jmp .L436
.L437:
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L439
	inc d2
.L436:
	mov_mov r4, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	bne .L437
	mov 0,d0
	jmp .L435
.L438:
	mov d2,d0
	jmp .L435
.L439:
	mov d2,d0
.L435:
	mov d0,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (40,a3),r4
	mov (44,a3),r5
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L441
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L443
.L441:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L451
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L452
.L443:
	mov d2,a0
	mov -2147483648,a1
	add d3,a1
	jmp .L444
.L451:
	mov_mov d2, a0, d3, a1
	jmp .L444
.L452:
	mov_mov d2, a0, d3, a1
.L444:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -16,sp
	mov (44,a3),a2
	mov (48,a3),r4
	sub r4,d1,d3
	add_cmp d0, d3, 0, r4
	beq .L454
	mov 1,a0
	cmp r4,d1
	bcs .L455
	mov 0,a0
.L455:
	extbu a0
	cmp 0,a0
	bne .L460
	mov_mov d0, d2, 1, r5
	add_add a2, r5, -1, r4
	jmp .L456
.L458:
	movbu (d2),d1
	movbu (a2),d0
	cmp d0,d1
	bne .L457
	mov r4,(12,sp)
	mov_mov r5, d1, 1, d0
	add d2,d0
	call +memcmp,[],0
	cmp 0,d0
	beq .L461
.L457:
	inc d2
.L456:
	cmp d3,d2
	bls .L458
	mov 0,d0
	jmp .L454
.L460:
	mov 0,d0
	jmp .L454
.L461:
	mov d2,d0
.L454:
	mov d0,a0
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2,a3],(sp)
	mov sp,a3
	add -16,sp
	mov (20,a3),d2
	mov d2,(12,sp)
	call +memcpy,[],0
	add d2,a0,d0
	mov d0,a0
	mov a3,sp
	ret [d2,a3],8
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L480
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r7
	jmp .L464
.L480:
	mov 0,r7
.L464:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L475
	jmp .L481
.L468:
	inc a2
	mov r4,(12,sp)
	mov r6,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L466
.L475:
	mov 0,a2
	mov a2,r4
	mov 1072693248,r5
	mov 1071644672,r6
.L466:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L468
	jmp .L469
.L481:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L482
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L477
	mov 0,a2
	jmp .L469
.L472:
	add -1,a2
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L471
.L477:
	mov 0,a2
	mov a2,r5
	mov 1071644672,r4
.L471:
	mov r5,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L472
	jmp .L469
.L482:
	mov 0,a2
.L469:
	mov (44,a3),d0
	mov a2,(d0)
	cmp 0,r7
	beq .L473
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L473:
	mov_mov d2, d0, d3, d1
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	mov (44,a3),d2
	mov (48,a3),d3
	mov 0,r4
	mov r4,r5
	jmp .L484
.L487:
	mov d0,r2
	and 1,r2
	clr r3
	cmp r3,r2
	beq .L485
	add d2,r4
	addc d3,r5
.L485:
	mov d2,a2
	lsr 31,a2
	mov d3,a1
	add a1,a1
	or_mov a2, a1, d2, a0
	add a0,a0
	mov_mov a0, d2, a1, d3
	mov d1,a2
	asl 31,a2
	mov d0,r0
	lsr 1,r0
	or_mov a2, r0, d1, r1
	mov_lsr r0, d0, 1, r1
	mov r1,d1
.L484:
	or d1,d0,a2
	bne .L487
	mov_mov r4, d0, r5, d1
	mov a3,sp
	retf [d2,d3,a2,a3,exreg1],32
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	mov 33,a1
	mov 1,a0
	jmp .L489
.L491:
	add d1,d1
	add a0,a0
.L489:
	cmp d0,d1
	bcc .L496
	add -1,a1
	beq .L497
	cmp 0,d1
	bge .L491
	mov 0,a1
	jmp .L492
.L496:
	mov 0,a1
	jmp .L492
.L497:
	mov 0,a1
	jmp .L492
.L494:
	cmp d1,d0
	bcs .L493
	or_sub a0, a1, d1, d0
.L493:
	lsr 1,a0
	lsr 1,d1
.L492:
	cmp 0,a0
	bne .L494
	cmp 0,r0
	bne .L495
	mov a1,d0
.L495:
	mov a3,sp
	retf [a3],4
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	movm [a3],(sp)
	mov sp,a3
	btst 255,d0
	beq .L501
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	jmp .L500
.L501:
	mov 7,d0
.L500:
	mov a3,sp
	retf [a3],4
	.size	__clrsbqi2, .-__clrsbqi2
	.global __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, d1, a1
	cmp 0,d1
	bge .L503
	not d0
	not d1
	mov_mov d0, a0, d1, a1
.L503:
	or a1,a0,d0
	beq .L509
	cmp 0,a1
	beq .L507
	mov 0,d0
	bsch a1, d0
	xor 31,d0
	jmp .L508
.L507:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
.L508:
	add -1,d0
	jmp .L505
.L509:
	mov 63,d0
.L505:
	mov a3,sp
	retf [a3],4
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d0
	jmp .L511
.L513:
	btst 1,a0
	beq .L512
	add d1,d0
.L512:
	lsr 1,a0
	add d1,d1
.L511:
	cmp 0,a0
	bne .L513
	mov a3,sp
	retf [a3],4
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	mov (24,a3),r2
	mov r2,d3
	mov_lsr r2, a1, 3, d3
	and -8,a1
	cmp d1,d0
	bcc .L515
.L517:
	mov 0,a0
	mov a0,r3
	jmp .L516
.L515:
	add r2,d1,a0
	cmp d0,a0
	bcs .L517
	jmp .L518
.L519:
	mov (a0,d1),r0
	add a0,d1,d2
	mov (4,d2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	inc r3
	add 8,a0
.L516:
	cmp d3,r3
	bne .L519
	jmp .L520
.L521:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
.L520:
	cmp a1,r2
	bhi .L521
	jmp .L514
.L523:
	movbu (r2,d1),a0
	movbu a0,(r2,d0)
.L518:
	add -1,r2
	cmp -1,r2
	bne .L523
.L514:
	mov a3,sp
	retf [d2,d3,a3],12
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a1
	mov a1,r1
	cmp_lsr d1, d0, 1, r1
	bcc .L525
.L527:
	mov_asl 0, a0, 1, r1
	jmp .L526
.L525:
	add a1,d1,a0
	cmp d0,a0
	bcs .L527
	jmp .L528
.L529:
	movhu (a0,d1),r0
	movhu r0,(a0,d0)
	add 2,a0
.L526:
	cmp r1,a0
	bne .L529
	btst 1,a1
	beq .L524
	add -1,a1
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
	jmp .L524
.L531:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
.L528:
	add -1,a1
	cmp -1,a1
	bne .L531
.L524:
	mov a3,sp
	retf [a3],4
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	mov r0,r2
	mov_lsr r0, a0, 2, r2
	and -4,a0
	cmp d1,d0
	bcc .L533
.L535:
	mov_asl 0, a1, 2, r2
	jmp .L534
.L533:
	add r0,d1,a1
	cmp d0,a1
	bcs .L535
	jmp .L536
.L537:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L534:
	cmp r2,a1
	bne .L537
	jmp .L538
.L539:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
.L538:
	cmp a0,r0
	bhi .L539
	jmp .L532
.L541:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
.L536:
	add -1,r0
	cmp -1,r0
	bne .L541
.L532:
	mov a3,sp
	retf [a3],4
	.size	__cmovw, .-__cmovw
	.global __modi
	.type	__modi, @function
__modi:
	movm [d2,a3],(sp)
	mov sp,a3
	mov d0,a0
	ext d0
	div d1,a0
	mov mdr,d0
	mov a3,sp
	ret [d2,a3],8
	.size	__modi, .-__modi
	.global __uitod
	.type	__uitod, @function
__uitod:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	call +__floatunsidf,[],0
	mov a3,sp
	ret [a3],4
	.size	__uitod, .-__uitod
	.global __uitof
	.type	__uitof, @function
__uitof:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	call +__floatunsisf,[],0
	mov a3,sp
	ret [a3],4
	.size	__uitof, .-__uitof
	.global __ulltod
	.type	__ulltod, @function
__ulltod:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	call +__floatundidf,[],0
	mov a3,sp
	ret [a3],4
	.size	__ulltod, .-__ulltod
	.global __ulltof
	.type	__ulltof, @function
__ulltof:
	movm [a3],(sp)
	mov sp,a3
	add -12,sp
	call +__floatundisf,[],0
	mov a3,sp
	ret [a3],4
	.size	__ulltof, .-__ulltof
	.global __umodi
	.type	__umodi, @function
__umodi:
	movm [d2,a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d2
	mov d2,mdr
	divu d1,a0
	mov mdr,d0
	mov a3,sp
	ret [d2,a3],8
	.size	__umodi, .-__umodi
	.global __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	movm [a3],(sp)
	mov sp,a3
	mov 0,d1
	exthu d0
	mov 15,a1
	jmp .L549
.L551:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L550
	inc d1
.L549:
	cmp 16,d1
	bne .L551
.L550:
	mov d1,d0
	mov a3,sp
	retf [a3],4
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	movm [a3],(sp)
	mov sp,a3
	mov 0,d1
	exthu d0
	jmp .L553
.L555:
	asr d1,d0,a0
	btst 1,a0
	bne .L554
	inc d1
.L553:
	cmp 16,d1
	bne .L555
.L554:
	mov d1,d0
	mov a3,sp
	retf [a3],4
	.size	__ctzhi2, .-__ctzhi2
	.global __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	movm [d2,a3],(sp)
	mov sp,a3
	add -12,sp
	mov d0,d2
	mov 1191182336,d1
	call +__gesf2,[],0
	cmp 0,d0
	blt .L561
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L559
.L561:
	mov d2,d0
	call +__fixsfsi,[],0
.L559:
	mov a3,sp
	ret [d2,a3],8
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	movm [a3],(sp)
	mov sp,a3
	mov 0,r0
	mov r0,d1
	exthu d0
	jmp .L563
.L565:
	asr d1,d0,a0
	btst 1,a0
	beq .L564
	inc r0
.L564:
	inc d1
.L563:
	cmp 16,d1
	bne .L565
	mov r0,d0
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a1, 0, d0
	mov d0,d1
	exthu a1
	jmp .L567
.L569:
	asr d1,a1,a0
	btst 1,a0
	beq .L568
	inc d0
.L568:
	inc d1
.L567:
	cmp 16,d1
	bne .L569
	mov a3,sp
	retf [a3],4
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d0
	jmp .L571
.L573:
	btst 1,a0
	beq .L572
	add d1,d0
.L572:
	lsr 1,a0
	add d1,d1
.L571:
	cmp 0,a0
	bne .L573
	mov a3,sp
	retf [a3],4
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	movm [a3],(sp)
	mov sp,a3
	cmp 0,d0
	beq .L579
	mov 0,a0
	jmp .L576
.L578:
	btst 1,d1
	beq .L577
	add d0,a0
.L577:
	add d0,d0
	lsr 1,d1
.L576:
	cmp 0,d1
	bne .L578
	mov a0,d0
	jmp .L575
.L579:
	mov 0,d0
.L575:
	mov a3,sp
	retf [a3],4
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	mov 33,a1
	mov 1,a0
	jmp .L581
.L583:
	add d1,d1
	add a0,a0
.L581:
	cmp d0,d1
	bcc .L588
	add -1,a1
	beq .L589
	cmp 0,d1
	bge .L583
	mov 0,a1
	jmp .L584
.L588:
	mov 0,a1
	jmp .L584
.L589:
	mov 0,a1
	jmp .L584
.L586:
	cmp d1,d0
	bcs .L585
	or_sub a0, a1, d1, d0
.L585:
	lsr 1,a0
	lsr 1,d1
.L584:
	cmp 0,a0
	bne .L586
	cmp 0,r0
	bne .L587
	mov a1,d0
.L587:
	mov a3,sp
	retf [a3],4
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3,a3],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L593
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	bgt .L594
	mov 0,d0
	jmp .L592
.L593:
	mov -1,d0
	jmp .L592
.L594:
	mov 1,d0
.L592:
	mov a3,sp
	ret [d2,d3,a3],12
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (40,a3),r4
	mov (44,a3),r5
	mov r4,(12,sp)
	mov r5,(16,sp)
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L597
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L598
	mov 0,d0
	jmp .L596
.L597:
	mov -1,d0
	jmp .L596
.L598:
	mov 1,d0
.L596:
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d1, r0, d0, a1
	asr 31,a1
	asr 31,d1
	mul r0,a1
	mul d0,d1
	add a1,d1
	mulu d0,r0,r1,r0
	add_mov r1, d1, r0, d0
	mov a3,sp
	ret [a3],4
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	movm [a3],(sp)
	mov sp,a3
	mulu d0,d1,r1,r0
	mov_mov r0, d0, r1, d1
	mov a3,sp
	retf [a3],4
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.global __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	movm [a3],(sp)
	mov sp,a3
	cmp 0,d1
	bge .L608
	not d1
	add_mov 1, d1, 1, r1
	jmp .L602
.L608:
	mov 0,r1
.L602:
	mov 33,a1
	mov 0,r0
	jmp .L603
.L606:
	btst 1,d1
	beq .L604
	add d0,r0
.L604:
	add d0,d0
	asr 1,d1
.L603:
	cmp 0,d1
	beq .L605
	mov -1,a0
	add a1,a0
	mov a0,a1
	btst 255,a0
	bne .L606
.L605:
	cmp 0,r1
	beq .L609
	mov 0,d0
	sub r0,d0
	jmp .L607
.L609:
	mov r0,d0
.L607:
	mov a3,sp
	retf [a3],4
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2,a3],(sp)
	mov sp,a3
	add -16,sp
	cmp 0,d0
	bge .L615
	not d0
	add_mov 1, d0, 1, d2
	jmp .L611
.L615:
	mov 0,d2
.L611:
	cmp 0,d1
	bge .L612
	not d1
	inc d1
	mov 1,a0
	cmp 0,d2
	beq .L613
	mov 0,a0
.L613:
	extbu a0,d2
.L612:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L614
	not d0
	inc d0
.L614:
	mov a3,sp
	ret [d2,a3],8
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2,a3],(sp)
	mov sp,a3
	add -16,sp
	cmp 0,d0
	bge .L620
	not d0
	add_mov 1, d0, 1, d2
	jmp .L617
.L620:
	mov 0,d2
.L617:
	cmp 0,d1
	bge .L618
	not d1
	inc d1
.L618:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L619
	not d0
	inc d0
.L619:
	mov a3,sp
	ret [d2,a3],8
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r2
	mov 17,a1
	mov 1,a0
	exthu d0,r1
	jmp .L622
.L624:
	add d1,d1
	add a0,a0
.L622:
	exthu d1,r0
	cmp r1,r0
	bcc .L629
	add -1,a1
	beq .L630
	exth d1,r0
	cmp 0,r0
	bge .L624
	mov 0,r1
	jmp .L625
.L629:
	mov 0,r1
	jmp .L625
.L630:
	mov 0,r1
	jmp .L625
.L627:
	exthu d0,a1
	exthu d1,r0
	cmp r0,a1
	bcs .L626
	or_sub a0, r1, d1, d0
.L626:
	asl 16,a0
	lsr 17,a0
	asl 16,d1
	lsr 17,d1
.L625:
	exthu a0,a1
	cmp 0,a1
	bne .L627
	cmp 0,r2
	bne .L628
	mov r1,d0
.L628:
	mov a3,sp
	retf [a3],4
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	mov 33,a1
	mov 1,a0
	jmp .L633
.L635:
	add d1,d1
	add a0,a0
.L633:
	cmp d0,d1
	bcc .L640
	add -1,a1
	beq .L641
	cmp 0,d1
	bge .L635
	mov 0,a1
	jmp .L636
.L640:
	mov 0,a1
	jmp .L636
.L641:
	mov 0,a1
	jmp .L636
.L638:
	cmp d1,d0
	bcs .L637
	or_sub a0, a1, d1, d0
.L637:
	lsr 1,a0
	lsr 1,d1
.L636:
	cmp 0,a0
	bne .L638
	cmp 0,r0
	bne .L639
	mov a1,d0
.L639:
	mov a3,sp
	retf [a3],4
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	movm [a3],(sp)
	mov sp,a3
	mov d0,r0
	mov (16,a3),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L644
	mov 0,d0
	asl r2,r0,d1
	jmp .L645
.L644:
	cmp 0,r2
	beq .L647
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a1,a0,d1
.L645:
	mov_mov d0, a0, d1, a1
	jmp .L646
.L647:
.L646:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	retf [a3],4
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	movm [a3],(sp)
	mov sp,a3
	mov d1,r1
	mov (16,a3),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L649
	asr 31,d1
	asr r2,r1,d0
	jmp .L650
.L649:
	cmp 0,r2
	beq .L652
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
.L650:
	mov_mov d0, a0, d1, a1
	jmp .L651
.L652:
.L651:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	retf [a3],4
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -16,sp
	mov_mov d0, a0, d1, a1
	mov 0,d0
	mov_mov d0, d1, a1, d0
	lsr 24,d0
	mov a1,d2
	lsr 8,d2
	mov d2,r4
	and 65280,r4
	mov a1,r0
	asl 8,r0
	mov a0,d2
	lsr 24,d2
	or_mov r0, d2, d1, r7
	mov d2,r6
	and 16711680,r6
	mov a1,r5
	asl 24,r5
	mov a0,d2
	lsr 8,d2
	or r5,d2
	mov d2,a2
	and -16777216,a2
	mov a2,(-16,a3)
	mov a0,a1
	lsr 24,a1
	mov r0,r3
	or_mov a1, r3, a0, r2
	asl 8,r2
	mov d1,d2
	extbu r3,d3
	mov a0,a1
	lsr 8,a1
	mov r5,r1
	or_mov a1, r1, a0, r0
	asl 24,r0
	mov r1,a1
	and 65280,a1
	mov d1,a2
	mov r2,(-4,a3)
	mov (-4,a3),r3
	and 16711680,r3
	mov r0,(-4,a3)
	mov (-4,a3),r1
	or r4,d0
	or r6,d0,r0
	mov (-16,a3),d0
	or r0,d0
	or d1,d0,r0
	or d3,r1
	or d1,r0,d0
	or a1,r1,d1
	or r7,d0,a0
	or r3,d1,a1
	mov_mov a0, d0, a1, d1
	mov a3,sp
	retf [d2,d3,a2,a3,exreg1],32
	.size	__bswapdi2, .-__bswapdi2
	.global __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	movm [a3],(sp)
	mov sp,a3
	mov d0,d1
	lsr 24,d1
	mov d0,a1
	lsr 8,a1
	and 65280,a1
	mov d0,a0
	asl 8,a0
	and 16711680,a0
	asl 24,d0
	or d0,d1
	or a1,d1
	or a0,d1,d0
	mov a3,sp
	retf [a3],4
	.size	__bswapsi2, .-__bswapsi2
	.global __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	movm [a3],(sp)
	mov sp,a3
	cmp 65535,d0
	bhi .L661
	mov 16,a0
	jmp .L656
.L661:
	mov 0,a0
.L656:
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	bne .L662
	mov 8,a1
	jmp .L657
.L662:
	mov 0,a1
.L657:
	mov 8,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	btst 240,d1
	bne .L663
	mov 4,a1
	jmp .L658
.L663:
	mov 0,a1
.L658:
	mov 4,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	btst 12,d1
	bne .L664
	mov 2,a1
	jmp .L659
.L664:
	mov 0,a1
.L659:
	mov 2,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	mov d1,a1
	and 2,a1
	mov 1,d0
	beq .L660
	mov 0,d0
.L660:
	extbu d0
	mov 2,a1
	sub d1,a1,d1
	mul d1,d0
	add a0,d0
	mov a3,sp
	ret [a3],4
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, d1, a1
	mov (16,a3),d0
	mov (20,a3),d1
	cmp a1,d1
	bgt .L667
	cmp a1,d1
	blt .L668
	cmp a0,d0
	bhi .L669
	bcs .L670
	mov 1,d0
	jmp .L666
.L667:
	mov 0,d0
	jmp .L666
.L668:
	mov 2,d0
	jmp .L666
.L669:
	mov 0,d0
	jmp .L666
.L670:
	mov 2,d0
.L666:
	mov a3,sp
	retf [a3],4
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, a0, d1, a1
	mov (16,a3),d0
	mov (20,a3),d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a0, d0, a1, d1
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
	exthu d0,d1
	cmp 0,d1
	bne .L677
	mov 16,a0
	jmp .L673
.L677:
	mov 0,a0
.L673:
	lsr a0,d0,d1
	extbu d1,d0
	cmp 0,d0
	bne .L678
	mov 8,d0
	jmp .L674
.L678:
	mov 0,d0
.L674:
	add_lsr d0, a0, d0, d1
	btst 15,d1
	bne .L679
	mov 4,d0
	jmp .L675
.L679:
	mov 0,d0
.L675:
	add_lsr d0, a0, d0, d1
	btst 3,d1
	bne .L680
	mov 2,d0
	jmp .L676
.L680:
	mov 0,d0
.L676:
	lsr d0,d1
	and 3,d1
	add_mov d0, a0, d1, a1
	not a1
	and 1,a1
	mov_lsr 2, d0, 1, d1
	sub d1,d0
	not a1
	inc a1
	and a1,d0
	add a0,d0
	mov a3,sp
	retf [a3],4
	.size	__ctzsi2, .-__ctzsi2
	.global __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	movm [a3],(sp)
	mov sp,a3
	mov d1,a1
	mov (16,a3),r2
	mov_mov d0, r0, d1, r1
	mov r2,d0
	and 32,d0
	beq .L682
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
	jmp .L683
.L682:
	cmp 0,r2
	beq .L685
	mov_lsr 0, a0, r2, d1
	sub r2,a0
	asl a0,a1,a0
	lsr r2,r0
	or r0,a0,d0
.L683:
	mov_mov d0, r0, d1, r1
	jmp .L684
.L685:
.L684:
	mov_mov r0, d0, r1, d1
	mov a3,sp
	retf [a3],4
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movm [a3],(sp)
	mov sp,a3
	exthu d0,r2
	exthu d1,r3
	mul r2,r3,a0,r1
	mov r1,r0
	lsr 16,r0
	exthu r1
	lsr 16,d0
	mul d0,r3
	add r3,r0
	mov r0,r3
	asl 16,r3
	add r1,r3,a0
	mov r0,a1
	lsr 16,a1
	mov a0,r0
	lsr 16,r0
	exthu a0,r1
	lsr 16,d1
	mul d1,r2
	add r2,r0
	mov r0,r2
	asl 16,r2
	add r1,r2,a0
	lsr 16,r0
	add a1,r0
	mul d0,d1
	add_mov r0, d1, a0, d0
	mov a3,sp
	ret [a3],4
	.size	__muldsi3, .-__muldsi3
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movm [d2,d3,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, r4, d1, r5
	mov (40,a3),d2
	mov (44,a3),d3
	mov d0,(-8,a3)
	mov d1,(-4,a3)
	mov_mov d2, r6, d2, d1
	call +__muldsi3,[],0
	mov_mov d0, r0, d1, r1
	mul r5,d2,d0,d1
	mov r4,d0
	mul d3,d0
	add d0,d1
	add_mov r1, d1, r0, d0
	mov a3,sp
	ret [d2,d3,a3,exreg1],28
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	movm [d2,a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d0
	sub a0,d0,a0
	subc d1,d0,a1
	mov_mov a0, d0, a1, d1
	mov a3,sp
	retf [d2,a3],8
	.size	__negdi2, .-__negdi2
	.global __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	movm [a3],(sp)
	mov sp,a3
	xor d1,d0
	mov d0,d1
	lsr 16,d1
	xor d1,d0
	mov d0,d1
	lsr 8,d1
	xor d1,d0
	mov d0,d1
	lsr 4,d1
	xor d1,d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	__paritydi2, .-__paritydi2
	.global __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	movm [a3],(sp)
	mov sp,a3
	mov d0,d1
	lsr 16,d1
	xor d1,d0
	mov d0,d1
	lsr 8,d1
	xor d1,d0
	mov d0,d1
	lsr 4,d1
	xor d1,d0
	and 15,d0
	mov 27030,d1
	asr d0,d1,d0
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	__paritysi2, .-__paritysi2
	.global __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	movm [d2,a3],(sp)
	mov sp,a3
	mov_mov d0, a0, d1, a1
	mov d1,r0
	asl 31,r0
	lsr 1,a0
	or_lsr r0, a0, 1, a1
	mov a0,r0
	and 1431655765,r0
	mov a1,r1
	and 1431655765,r1
	sub r0,d0
	subc r1,d1
	mov d1,a0
	asl 30,a0
	mov d0,r0
	lsr 2,r0
	or_mov a0, r0, d1, r1
	mov_lsr r0, a0, 2, r1
	and 858993459,a0
	mov r1,a1
	and 858993459,a1
	mov d0,r0
	and 858993459,r0
	mov d1,r1
	and 858993459,r1
	add r0,a0,d0
	addc a1,r1,d1
	mov d1,r0
	asl 28,r0
	mov d0,a0
	lsr 4,a0
	or_mov r0, a0, d1, a1
	lsr 4,a1
	add d0,a0,r0
	addc a1,d1,r1
	mov r0,d0
	and 252645135,d0
	mov r1,d1
	and 252645135,d1
	mov d1,a0
	add d0,a0
	mov a0,d0
	lsr 16,d0
	add d0,a0
	mov a0,d0
	lsr 8,d0
	add a0,d0
	and 127,d0
	mov a3,sp
	retf [d2,a3],8
	.size	__popcountdi2, .-__popcountdi2
	.global __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	movm [a3],(sp)
	mov sp,a3
	mov d0,d1
	lsr 1,d1
	and 1431655765,d1
	sub d1,d0,d1
	mov d1,d0
	lsr 2,d0
	and 858993459,d0
	and 858993459,d1
	add d0,d1
	mov d1,d0
	lsr 4,d0
	add d0,d1
	and 252645135,d1
	mov d1,d0
	lsr 16,d0
	add d0,d1
	mov d1,d0
	lsr 8,d0
	add d1,d0
	and 63,d0
	mov a3,sp
	retf [a3],4
	.size	__popcountsi2, .-__popcountsi2
	.global __powidf2
	.type	__powidf2, @function
__powidf2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (44,a3),a2
	mov a2,r6
	lsr 31,r6
	mov 0,r4
	mov 1072693248,r5
.L696:
	btst 1,a2
	beq .L694
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L694:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L695
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L696
.L695:
	cmp 0,r6
	beq .L698
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
	jmp .L697
.L698:
	mov_mov r4, a0, r5, a1
.L697:
	mov_mov a0, d0, a1, d1
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov sp,a3
	add -12,sp
	mov_mov d0, d3, d1, d2
	mov d1,r4
	lsr 31,r4
	mov 1065353216,a2
.L702:
	btst 1,d2
	beq .L700
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
.L700:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L701
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L702
.L701:
	cmp 0,r4
	beq .L704
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	jmp .L703
.L704:
	mov a2,d0
.L703:
	mov a3,sp
	ret [d2,d3,a2,a3,exreg1],32
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, d1, a1
	mov (16,a3),d0
	mov (20,a3),d1
	cmp a1,d1
	bhi .L707
	cmp a1,d1
	bcs .L708
	cmp a0,d0
	bhi .L709
	bcs .L710
	mov 1,d0
	jmp .L706
.L707:
	mov 0,d0
	jmp .L706
.L708:
	mov 2,d0
	jmp .L706
.L709:
	mov 0,d0
	jmp .L706
.L710:
	mov 2,d0
.L706:
	mov a3,sp
	retf [a3],4
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	movm [a3],(sp)
	mov sp,a3
	add -20,sp
	mov (16,a3),r0
	mov (20,a3),r1
	mov r0,(12,sp)
	mov r1,(16,sp)
	call +__ucmpdi2,[],0
	add -1,d0
	mov a3,sp
	ret [a3],4
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.global __divsf3
	.global __divdf3
	.global __fixsfsi
	.global __gesf2
	.global __floatundisf
	.global __floatundidf
	.global __floatunsisf
	.global __floatunsidf
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
