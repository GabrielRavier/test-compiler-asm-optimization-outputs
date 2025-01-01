	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r1
	cmp d1,d0
	bls .L2
	add r1,d1
	add r1,d0,r2
	mov r1,a1
	jmp .L3
.L4:
	sub r1,d1,r0
	add -1,r0
	movbu (a1,r0),a0
	sub r1,r2,r0
	add -1,r0
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
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	jmp .L6
.L8:
	mov 0,a1
.L6:
	cmp r1,a1
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
	jmp .L50
.L52:
	add_add 1, d0, 1, d1
.L50:
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	bne .L51
	cmp 0,a1
	bne .L52
.L51:
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
	jmp .L54
.L55:
	inc d1
.L54:
	movbu (d1),a0
	cmp 0,a0
	bne .L55
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
	beq .L61
	add -1,r0
	add d0,r0
	jmp .L58
.L60:
	add_add 1, d0, 1, d1
.L58:
	movbu (d0),a0
	cmp 0,a0
	beq .L59
	movbu (d1),a0
	cmp 0,a0
	beq .L59
	cmp r0,d0
	beq .L59
	movbu (d0),a1
	cmp a0,a1
	beq .L60
.L59:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	jmp .L57
.L61:
	mov 0,d0
.L57:
	mov a3,sp
	retf [a3],4
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	mov d0,a0
	jmp .L63
.L64:
	movbu (1,a0),a1
	movbu a1,(d1)
	movbu (a0),a1
	movbu a1,(1,d1)
	add_add 2, d1, 2, a0
.L63:
	add r0,d0,a1
	sub a0,a1
	cmp 1,a1
	bgt .L64
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
	bls .L66
	mov 0,d0
.L66:
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
	bls .L68
	mov 0,d1
.L68:
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
	beq .L71
	cmp 9,d0
	bne .L72
	mov 1,d0
	jmp .L70
.L71:
	mov 1,d0
	jmp .L70
.L72:
	mov 0,d0
.L70:
	mov a3,sp
	retf [a3],4
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	movm [a3],(sp)
	mov sp,a3
	cmp 31,d0
	bls .L75
	cmp 127,d0
	bne .L76
	mov 1,d0
	jmp .L74
.L75:
	mov 1,d0
	jmp .L74
.L76:
	mov 0,d0
.L74:
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
	bls .L78
	mov 0,d0
.L78:
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
	bls .L80
	mov 0,d0
.L80:
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
	bls .L82
	mov 0,d0
.L82:
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
	bls .L84
	mov 0,d0
.L84:
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
	beq .L87
	add -9,d0
	cmp 4,d0
	bhi .L88
	mov 1,d0
	jmp .L86
.L87:
	mov 1,d0
	jmp .L86
.L88:
	mov 0,d0
.L86:
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
	bls .L90
	mov 0,d0
.L90:
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
	bls .L93
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L94
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L95
	add -65529,d0
	cmp 2,d0
	bhi .L96
	mov 1,d0
	jmp .L92
.L93:
	mov 1,d0
	jmp .L92
.L94:
	mov 1,d0
	jmp .L92
.L95:
	mov 1,d0
	jmp .L92
.L96:
	mov 0,d0
.L92:
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
	bls .L98
	mov 0,d0
.L98:
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
	bhi .L100
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L101
	mov 0,d1
.L101:
	extbu d1,d0
	jmp .L102
.L100:
	cmp 8231,d0
	bls .L103
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L104
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L105
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L106
	and 65534,d0
	cmp 65534,d0
	beq .L107
	mov 1,d0
	jmp .L102
.L103:
	mov 1,d0
	jmp .L102
.L104:
	mov 1,d0
	jmp .L102
.L105:
	mov 1,d0
	jmp .L102
.L106:
	mov 0,d0
	jmp .L102
.L107:
	mov 0,d0
.L102:
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
	bls .L110
	or 32,d0
	add -97,d0
	cmp 5,d0
	bhi .L111
	mov 1,d0
	jmp .L109
.L110:
	mov 1,d0
	jmp .L109
.L111:
	mov 0,d0
.L109:
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
	bne .L116
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L117
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L120
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
	jmp .L114
.L116:
	mov_mov d2, a0, d3, a1
	jmp .L114
.L117:
	mov_mov r4, a0, r5, a1
	jmp .L114
.L120:
	mov 0,a0
	mov a0,a1
.L114:
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
	bne .L124
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L125
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L128
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
	jmp .L122
.L124:
	mov d2,d0
	jmp .L122
.L125:
	mov d3,d0
	jmp .L122
.L128:
	mov 0,d0
.L122:
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
	bne .L133
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L134
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L131
	cmp 0,d3
	bge .L135
	mov_mov r4, a0, r5, a1
	jmp .L130
.L131:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L138
	mov_mov r4, a0, r5, a1
	jmp .L130
.L133:
	mov_mov r4, a0, r5, a1
	jmp .L130
.L134:
	mov_mov d2, a0, d3, a1
	jmp .L130
.L135:
	mov_mov d2, a0, d3, a1
	jmp .L130
.L138:
	mov_mov d2, a0, d3, a1
.L130:
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
	bne .L143
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L144
	mov d2,d1
	and -2147483648,d1
	mov d3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L141
	mov_cmp d2, d0, 0, d2
	bge .L145
	mov d3,d0
	jmp .L140
.L141:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L148
	mov d3,d0
	jmp .L140
.L143:
	mov d3,d0
	jmp .L140
.L144:
	mov d2,d0
	jmp .L140
.L145:
	jmp .L140
.L148:
	mov d2,d0
.L140:
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
	bne .L153
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L154
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L151
	cmp 0,d3
	bge .L155
	mov_mov r4, a0, r5, a1
	jmp .L150
.L151:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L158
	mov_mov r4, a0, r5, a1
	jmp .L150
.L153:
	mov_mov r4, a0, r5, a1
	jmp .L150
.L154:
	mov_mov d2, a0, d3, a1
	jmp .L150
.L155:
	mov_mov d2, a0, d3, a1
	jmp .L150
.L158:
	mov_mov d2, a0, d3, a1
.L150:
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
	bne .L163
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L164
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L161
	cmp 0,d3
	bge .L165
	mov_mov d2, a0, d3, a1
	jmp .L160
.L161:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L168
	mov_mov d2, a0, d3, a1
	jmp .L160
.L163:
	mov_mov r4, a0, r5, a1
	jmp .L160
.L164:
	mov_mov d2, a0, d3, a1
	jmp .L160
.L165:
	mov_mov r4, a0, r5, a1
	jmp .L160
.L168:
	mov_mov r4, a0, r5, a1
.L160:
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
	bne .L173
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L174
	mov d3,d1
	and -2147483648,d1
	mov d2,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L171
	mov_cmp d3, d0, 0, d3
	bge .L175
	jmp .L170
.L171:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L178
	mov d3,d0
	jmp .L170
.L173:
	mov d2,d0
	jmp .L170
.L174:
	mov d3,d0
	jmp .L170
.L175:
	mov d2,d0
	jmp .L170
.L178:
	mov d2,d0
.L170:
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
	bne .L183
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L184
	mov d3,d1
	and -2147483648,d1
	mov r5,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L181
	cmp 0,d3
	bge .L185
	mov_mov d2, a0, d3, a1
	jmp .L180
.L181:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L188
	mov_mov d2, a0, d3, a1
	jmp .L180
.L183:
	mov_mov r4, a0, r5, a1
	jmp .L180
.L184:
	mov_mov d2, a0, d3, a1
	jmp .L180
.L185:
	mov_mov r4, a0, r5, a1
	jmp .L180
.L188:
	mov_mov r4, a0, r5, a1
.L180:
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
	jmp .L190
.L191:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
.L190:
	cmp 0,d0
	bne .L191
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
	bne .L195
	mov d1,(4,d0)
	mov d1,(d0)
	jmp .L194
.L195:
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L194
	mov d0,(4,d1)
.L194:
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
	beq .L198
	mov (4,d0),a0
	mov a0,(4,d1)
.L198:
	mov (4,d0),d1
	cmp 0,d1
	beq .L197
	mov (d0),d0
	mov d0,(d1)
.L197:
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
	jmp .L201
.L204:
	mov_mov d3, d1, r4, d0
	mov r6,a0
	calls (a0)
	add_cmp r5, d3, 0, d0
	bne .L202
	mul d2,r5,d1,d0
	add r7,d0
	jmp .L203
.L202:
	inc d2
.L201:
	cmp a2,d2
	bne .L204
	mov 1,d0
	add a2,d0
	mov (44,a3),a0
	mov d0,(a0)
	mul r5,a2,d1,d0
	mov r5,(12,sp)
	mov_add r4, d1, r7, d0
	call +memcpy,[],0
	mov a0,d0
.L203:
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
	jmp .L206
.L209:
	mov_mov d3, d1, a2, d0
	mov r7,a0
	calls (a0)
	add_cmp r5, d3, 0, d0
	bne .L207
	mul d2,r5,d1,d0
	add r6,d0
	jmp .L208
.L207:
	inc d2
.L206:
	cmp r4,d2
	bne .L209
	mov 0,d0
.L208:
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
	bge .L211
	mov 0,d0
	sub d1,d0
.L211:
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
	jmp .L213
.L214:
	inc d2
.L213:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L214
	movbu (d2),d0
	cmp 43,d0
	beq .L220
	cmp 45,d0
	bne .L221
	mov 1,a0
	jmp .L215
.L220:
	mov 0,a0
.L215:
	inc d2
	jmp .L216
.L221:
	mov 0,a0
.L216:
	mov 0,d0
	jmp .L217
.L218:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L217:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L218
	cmp 0,a0
	bne .L219
	not d0
	inc d0
.L219:
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
	jmp .L224
.L225:
	inc d2
.L224:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L225
	movbu (d2),d0
	cmp 43,d0
	beq .L231
	cmp 45,d0
	bne .L232
	mov 1,a0
	jmp .L226
.L231:
	mov 0,a0
.L226:
	inc d2
	jmp .L227
.L232:
	mov 0,a0
.L227:
	mov 0,d0
	jmp .L228
.L229:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L228:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L229
	cmp 0,a0
	bne .L230
	not d0
	inc d0
.L230:
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
	jmp .L235
.L236:
	inc d2
.L235:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L236
	movbu (d2),d0
	cmp 43,d0
	beq .L242
	cmp 45,d0
	bne .L243
	mov 1,r0
	jmp .L237
.L242:
	mov 0,r0
.L237:
	inc d2
	jmp .L238
.L243:
	mov 0,r0
.L238:
	mov 0,d0
	mov d0,d1
	jmp .L239
.L240:
	mov 10,a1
	mul d1,a1
	mov 10,a0
	mulu d0,a0,r5,r4
	add_add a1, r5, 1, d2
	movbu (-1,d2),a0
	add -48,a0
	mov_mov a0, r6, a0, r7
	asr 31,r7
	sub a0,r4,d0
	subc r7,r5,d1
.L239:
	movbu (d2),a0
	add -48,a0
	cmp 9,a0
	bls .L240
	cmp 0,r0
	bne .L244
	sub d0,r0,a0
	subc d1,r0,a1
	jmp .L241
.L244:
	mov_mov d0, a0, d1, a1
.L241:
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
	jmp .L246
.L250:
	mov d3,d2
	lsr 1,d2
	mul r4,d2
	add a2,d2
	mov_mov d2, d1, r5, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	bge .L247
	lsr 1,d3
	jmp .L246
.L247:
	ble .L251
	add r4,d2,a2
	mov d3,d0
	add_lsr -1, d3, 1, d0
	sub d0,d3
.L246:
	cmp 0,d3
	bne .L250
	mov 0,d0
	jmp .L249
.L251:
	mov d2,d0
.L249:
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
	jmp .L253
.L256:
	mov d3,d2
	asr 1,d2
	mul r4,d2
	add a2,d2
	mov r6,(12,sp)
	mov_mov d2, d1, r5, d0
	mov r7,a0
	calls (a0)
	cmp 0,d0
	beq .L257
	ble .L255
	add r4,d2,a2
	add -1,d3
.L255:
	asr 1,d3
.L253:
	cmp 0,d3
	bne .L256
	mov 0,d0
	jmp .L254
.L257:
	mov d2,d0
.L254:
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
	bge .L260
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
.L260:
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
	bge .L264
	mov 0,d0
	sub d1,d0
.L264:
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
	bge .L267
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
.L267:
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
	jmp .L271
.L273:
	add 4,d0
.L271:
	mov (d0),a0
	cmp 0,a0
	beq .L272
	cmp a0,d1
	bne .L273
.L272:
	mov (d0),d1
	cmp 0,d1
	bne .L274
	mov 0,d0
.L274:
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	movm [a3],(sp)
	mov sp,a3
	jmp .L277
.L279:
	add_add 4, d0, 4, d1
.L277:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L278
	cmp 0,a1
	beq .L278
	mov (d1),a0
	cmp 0,a0
	bne .L279
.L278:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L282
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L281
	mov 0,d0
.L281:
	extbu d0
	jmp .L280
.L282:
	mov -1,d0
.L280:
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
.L284:
	mov (d1+),a1
	mov a1,(r0+)
	cmp 0,a1
	Lne # loop back to: .L284
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
	jmp .L286
.L287:
	add 4,d1
.L286:
	mov (d1),a0
	cmp 0,a0
	bne .L287
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
	jmp .L289
.L291:
	add_add -1, a0, 4, d0
	add 4,d1
.L289:
	cmp 0,a0
	beq .L290
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L290
	cmp 0,r0
	beq .L290
	mov (d1),a1
	cmp 0,a1
	bne .L291
.L290:
	cmp 0,a0
	beq .L294
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L295
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L293
	mov 0,d0
.L293:
	extbu d0
	jmp .L292
.L294:
	mov 0,d0
	jmp .L292
.L295:
	mov -1,d0
.L292:
	mov a3,sp
	retf [a3],4
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),a0
	jmp .L297
.L299:
	add_add -1, a0, 4, d0
.L297:
	cmp 0,a0
	beq .L298
	mov (d0),a1
	cmp a1,d1
	bne .L299
.L298:
	cmp 0,a0
	bne .L300
	mov 0,d0
.L300:
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
	jmp .L303
.L305:
	add_add -1, a0, 4, d0
	add 4,d1
.L303:
	cmp 0,a0
	beq .L304
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	beq .L305
.L304:
	cmp 0,a0
	beq .L308
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L309
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L307
	mov 0,d0
.L307:
	extbu d0
	jmp .L306
.L308:
	mov 0,d0
	jmp .L306
.L309:
	mov -1,d0
.L306:
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
	jmp .L311
.L312:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L311:
	add -1,r0
	cmp -1,r0
	bne .L312
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
	beq .L314
	sub d1,d0,r0
	mov a1,a0
	asl2 a0
	cmp a0,r0
	bcc .L319
	add -1,a1
	asl2 a1
	jmp .L316
.L317:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
.L316:
	cmp -4,a1
	bne .L317
	jmp .L314
.L318:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	inc4 r0
	jmp .L315
.L319:
	mov 0,r0
.L315:
	add -1,a1
	cmp -1,a1
	bne .L318
.L314:
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
	jmp .L321
.L322:
	mov d1,(r0+)
.L321:
	add -1,a1
	cmp -1,a1
	bne .L322
	mov d0,a0
	mov a3,sp
	retf [a3],4
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r0
	cmp d1,d0
	bcc .L324
	add_add r0, d0, r0, d1
	mov r0,a0
	jmp .L325
.L326:
	sub r0,d0,a1
	add -1,a1
	movbu (a0,a1),r1
	sub r0,d1,a1
	add -1,a1
	movbu r1,(a0,a1)
	add -1,a0
.L325:
	cmp 0,a0
	bne .L326
	jmp .L323
.L324:
	bne .L330
	jmp .L323
.L329:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	inc a0
	jmp .L328
.L330:
	mov 0,a0
.L328:
	cmp r0,a0
	bne .L329
.L323:
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
	beq .L332
	mov 0,r2
	asl d0,r0,r3
	jmp .L333
.L332:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
.L333:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L334
	not d0
	add_mov 1, d0, 0, a0
	mov a0,a1
	lsr d0,r1,a0
	jmp .L335
.L334:
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
.L335:
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
	beq .L337
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
	jmp .L338
.L337:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
.L338:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L339
	not d0
	add_mov 1, d0, 0, a0
	asl d0,r0,a1
	jmp .L340
.L339:
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
.L340:
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
	jmp .L353
.L356:
	lsr d1,d0,a0
	btst 1,a0
	beq .L354
	mov 1,d0
	add d1,d0
	jmp .L355
.L354:
	inc d1
.L353:
	cmp 32,d1
	bne .L356
	mov 0,d0
.L355:
	mov a3,sp
	retf [a3],4
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	movm [a3],(sp)
	mov sp,a3
	cmp 0,d0
	beq .L361
	mov 1,d1
	jmp .L359
.L360:
	add_asr 1, d1, 1, d0
.L359:
	btst 1,d0
	beq .L360
	mov d1,d0
	jmp .L358
.L361:
	mov 0,d0
.L358:
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
	blt .L365
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L368
	mov 1,d0
	jmp .L363
.L365:
	mov 1,d0
	jmp .L363
.L368:
	mov 0,d0
.L363:
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
	blt .L372
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L375
	mov 1,d0
	jmp .L370
.L372:
	mov 1,d0
	jmp .L370
.L375:
	mov 0,d0
.L370:
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
	blt .L379
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L382
	mov 1,d0
	jmp .L377
.L379:
	mov 1,d0
	jmp .L377
.L382:
	mov 0,d0
.L377:
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
	bne .L385
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov_mov d0, d1, a2, d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L385
	cmp 0,d2
	bge .L390
	mov 1056964608,d3
	jmp .L389
.L390:
	mov 1073741824,d3
.L389:
	btst 1,d2
	beq .L388
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
.L388:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L385
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L389
.L385:
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
	bne .L393
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L393
	cmp 0,a2
	bge .L398
	mov 0,d2
	mov 1071644672,d3
	jmp .L397
.L398:
	mov 0,d2
	mov 1073741824,d3
.L397:
	btst 1,a2
	beq .L396
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L396:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L393
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L397
.L393:
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
	bne .L401
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L401
	cmp 0,a2
	bge .L406
	mov 0,d2
	mov 1071644672,d3
	jmp .L405
.L406:
	mov 0,d2
	mov 1073741824,d3
.L405:
	btst 1,a2
	beq .L404
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L404:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L401
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L405
.L401:
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
	jmp .L409
.L410:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
.L409:
	cmp r2,a1
	bne .L410
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
	jmp .L412
.L414:
	add_add 1, d2, 1, d0
	add -1,a2
.L412:
	cmp 0,a2
	beq .L413
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	bne .L414
.L413:
	cmp 0,a2
	bne .L415
	mov 0,d1
	movbu d1,(d0)
.L415:
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
	jmp .L417
.L419:
	inc d0
.L417:
	cmp d1,d0
	beq .L418
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L419
.L418:
	mov a3,sp
	retf [a3],4
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movm [a3],(sp)
	mov sp,a3
	jmp .L421
.L423:
	inc a1
	movbu (-1,a1),r1
	movbu (d0),r0
	cmp r0,r1
	bne .L424
	jmp .L422
.L426:
	mov d1,a1
.L424:
	movbu (a1),r0
	cmp 0,r0
	bne .L423
	inc d0
.L421:
	movbu (d0),a0
	cmp 0,a0
	bne .L426
	mov 0,d0
.L422:
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
.L429:
	movbu (a0),a1
	cmp a1,d1
	bne .L428
	mov a0,d0
.L428:
	inc a0
	movbu (-1,a0),a1
	cmp 0,a1
	bne .L429
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
	beq .L435
	movbu (d3),r4
	jmp .L433
.L434:
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L436
	inc d2
.L433:
	mov_mov r4, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	bne .L434
	mov 0,d0
	jmp .L432
.L435:
	mov d2,d0
	jmp .L432
.L436:
	mov d2,d0
.L432:
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
	bge .L438
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L440
.L438:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L448
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L449
.L440:
	mov d2,a0
	mov -2147483648,a1
	add d3,a1
	jmp .L441
.L448:
	mov_mov d2, a0, d3, a1
	jmp .L441
.L449:
	mov_mov d2, a0, d3, a1
.L441:
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
	mov (44,a3),d3
	mov (48,a3),r4
	sub r4,d1,a2
	add_cmp d0, a2, 0, r4
	beq .L451
	mov 1,a0
	cmp r4,d1
	bcs .L452
	mov 0,a0
.L452:
	extbu a0
	cmp 0,a0
	bne .L457
	mov d0,d2
	jmp .L453
.L455:
	movbu (d2),d1
	movbu (d3),d0
	cmp d0,d1
	bne .L454
	mov -1,d0
	add r4,d0
	mov d0,(12,sp)
	mov 1,d1
	add_mov d3, d1, 1, d0
	add d2,d0
	call +memcmp,[],0
	cmp 0,d0
	beq .L458
.L454:
	inc d2
.L453:
	cmp a2,d2
	bls .L455
	mov 0,d0
	jmp .L451
.L457:
	mov 0,d0
	jmp .L451
.L458:
	mov d2,d0
.L451:
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
	bge .L477
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r4
	jmp .L461
.L477:
	mov 0,r4
.L461:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L472
	jmp .L478
.L465:
	add_mov 1, a2, 0, d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L463
.L472:
	mov 0,a2
.L463:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L465
	jmp .L466
.L478:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L479
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L474
	mov 0,a2
	jmp .L466
.L469:
	add -1,a2
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L468
.L474:
	mov 0,a2
.L468:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L469
	jmp .L466
.L479:
	mov 0,a2
.L466:
	mov (44,a3),d0
	mov a2,(d0)
	cmp 0,r4
	beq .L470
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L470:
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
	jmp .L481
.L484:
	mov d0,r2
	and 1,r2
	clr r3
	cmp r3,r2
	beq .L482
	add d2,r4
	addc d3,r5
.L482:
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
.L481:
	or d1,d0,a2
	bne .L484
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
	jmp .L486
.L488:
	add d1,d1
	add a0,a0
.L486:
	cmp d0,d1
	bcc .L493
	add -1,a1
	beq .L494
	cmp 0,d1
	bge .L488
	mov 0,a1
	jmp .L489
.L493:
	mov 0,a1
	jmp .L489
.L494:
	mov 0,a1
	jmp .L489
.L491:
	cmp d1,d0
	bcs .L490
	or_sub a0, a1, d1, d0
.L490:
	lsr 1,a0
	lsr 1,d1
.L489:
	cmp 0,a0
	bne .L491
	cmp 0,r0
	bne .L492
	mov a1,d0
.L492:
	mov a3,sp
	retf [a3],4
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	movm [a3],(sp)
	mov sp,a3
	btst 255,d0
	beq .L498
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	jmp .L497
.L498:
	mov 7,d0
.L497:
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
	bge .L500
	not d0
	not d1
	mov_mov d0, a0, d1, a1
.L500:
	or a1,a0,d0
	beq .L506
	cmp 0,a1
	beq .L504
	mov 0,d0
	bsch a1, d0
	xor 31,d0
	jmp .L505
.L504:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
.L505:
	add -1,d0
	jmp .L502
.L506:
	mov 63,d0
.L502:
	mov a3,sp
	retf [a3],4
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d0
	jmp .L508
.L510:
	btst 1,a0
	beq .L509
	add d1,d0
.L509:
	lsr 1,a0
	add d1,d1
.L508:
	cmp 0,a0
	bne .L510
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
	bcc .L512
.L514:
	mov 0,a0
	mov a0,r3
	jmp .L513
.L512:
	add r2,d1,a0
	cmp d0,a0
	bcs .L514
	jmp .L515
.L516:
	mov (a0,d1),r0
	add a0,d1,d2
	mov (4,d2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	inc r3
	add 8,a0
.L513:
	cmp d3,r3
	bne .L516
	jmp .L517
.L518:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
.L517:
	cmp a1,r2
	bhi .L518
	jmp .L511
.L520:
	movbu (r2,d1),a0
	movbu a0,(r2,d0)
.L515:
	add -1,r2
	cmp -1,r2
	bne .L520
.L511:
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
	bcc .L522
.L524:
	mov_asl 0, a0, 1, r1
	jmp .L523
.L522:
	add a1,d1,a0
	cmp d0,a0
	bcs .L524
	jmp .L525
.L526:
	movhu (a0,d1),r0
	movhu r0,(a0,d0)
	add 2,a0
.L523:
	cmp r1,a0
	bne .L526
	btst 1,a1
	beq .L521
	add -1,a1
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
	jmp .L521
.L528:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
.L525:
	add -1,a1
	cmp -1,a1
	bne .L528
.L521:
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
	bcc .L530
.L532:
	mov_asl 0, a1, 2, r2
	jmp .L531
.L530:
	add r0,d1,a1
	cmp d0,a1
	bcs .L532
	jmp .L533
.L534:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L531:
	cmp r2,a1
	bne .L534
	jmp .L535
.L536:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
.L535:
	cmp a0,r0
	bhi .L536
	jmp .L529
.L538:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
.L533:
	add -1,r0
	cmp -1,r0
	bne .L538
.L529:
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
	mov d0,a1
	mov 0,d0
	jmp .L546
.L548:
	exthu a1,d1
	mov 15,a0
	sub d0,a0
	asr a0,d1
	btst 1,d1
	bne .L547
	inc d0
.L546:
	cmp 16,d0
	bne .L548
.L547:
	mov a3,sp
	retf [a3],4
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	movm [a3],(sp)
	mov sp,a3
	mov d0,a0
	mov 0,d0
	jmp .L550
.L552:
	exthu a0,d1
	asr d0,d1
	btst 1,d1
	bne .L551
	inc d0
.L550:
	cmp 16,d0
	bne .L552
.L551:
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
	blt .L558
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L556
.L558:
	mov d2,d0
	call +__fixsfsi,[],0
.L556:
	mov a3,sp
	ret [d2,a3],8
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	movm [a3],(sp)
	mov sp,a3
	mov d0,a1
	mov 0,d0
	mov d0,d1
	jmp .L560
.L562:
	exthu a1,a0
	asr d1,a0
	btst 1,a0
	beq .L561
	inc d0
.L561:
	inc d1
.L560:
	cmp 16,d1
	bne .L562
	and 1,d0
	mov a3,sp
	retf [a3],4
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	movm [a3],(sp)
	mov sp,a3
	mov d0,a1
	mov 0,d0
	mov d0,d1
	jmp .L564
.L566:
	exthu a1,a0
	asr d1,a0
	btst 1,a0
	beq .L565
	inc d0
.L565:
	inc d1
.L564:
	cmp 16,d1
	bne .L566
	mov a3,sp
	retf [a3],4
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	movm [a3],(sp)
	mov sp,a3
	mov_mov d0, a0, 0, d0
	jmp .L568
.L570:
	btst 1,a0
	beq .L569
	add d1,d0
.L569:
	lsr 1,a0
	add d1,d1
.L568:
	cmp 0,a0
	bne .L570
	mov a3,sp
	retf [a3],4
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	movm [a3],(sp)
	mov sp,a3
	cmp 0,d0
	beq .L576
	mov 0,a0
	jmp .L573
.L575:
	btst 1,d1
	beq .L574
	add d0,a0
.L574:
	add d0,d0
	lsr 1,d1
.L573:
	cmp 0,d1
	bne .L575
	mov a0,d0
	jmp .L572
.L576:
	mov 0,d0
.L572:
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
	jmp .L578
.L580:
	add d1,d1
	add a0,a0
.L578:
	cmp d0,d1
	bcc .L585
	add -1,a1
	beq .L586
	cmp 0,d1
	bge .L580
	mov 0,a1
	jmp .L581
.L585:
	mov 0,a1
	jmp .L581
.L586:
	mov 0,a1
	jmp .L581
.L583:
	cmp d1,d0
	bcs .L582
	or_sub a0, a1, d1, d0
.L582:
	lsr 1,a0
	lsr 1,d1
.L581:
	cmp 0,a0
	bne .L583
	cmp 0,r0
	bne .L584
	mov a1,d0
.L584:
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
	blt .L590
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	bgt .L591
	mov 0,d0
	jmp .L589
.L590:
	mov -1,d0
	jmp .L589
.L591:
	mov 1,d0
.L589:
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
	blt .L594
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L595
	mov 0,d0
	jmp .L593
.L594:
	mov -1,d0
	jmp .L593
.L595:
	mov 1,d0
.L593:
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
	bge .L605
	not d1
	add_mov 1, d1, 1, r1
	jmp .L599
.L605:
	mov 0,r1
.L599:
	mov 33,a1
	mov 0,r0
	jmp .L600
.L603:
	btst 1,d1
	beq .L601
	add d0,r0
.L601:
	add d0,d0
	asr 1,d1
.L600:
	cmp 0,d1
	beq .L602
	mov -1,a0
	add a1,a0
	mov a0,a1
	btst 255,a0
	bne .L603
.L602:
	cmp 0,r1
	beq .L606
	mov 0,d0
	sub r0,d0
	jmp .L604
.L606:
	mov r0,d0
.L604:
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
	bge .L612
	not d0
	add_mov 1, d0, 1, d2
	jmp .L608
.L612:
	mov 0,d2
.L608:
	cmp 0,d1
	bge .L609
	not d1
	inc d1
	mov 1,a0
	cmp 0,d2
	beq .L610
	mov 0,a0
.L610:
	extbu a0,d2
.L609:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L611
	not d0
	inc d0
.L611:
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
	bge .L617
	not d0
	add_mov 1, d0, 1, d2
	jmp .L614
.L617:
	mov 0,d2
.L614:
	cmp 0,d1
	bge .L615
	not d1
	inc d1
.L615:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L616
	not d0
	inc d0
.L616:
	mov a3,sp
	ret [d2,a3],8
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movm [a3],(sp)
	mov sp,a3
	mov (16,a3),r2
	mov 17,r0
	mov 1,a0
	jmp .L619
.L621:
	add d1,d1
	add a0,a0
.L619:
	exthu d1,a1
	exthu d0,r1
	cmp r1,a1
	bcc .L626
	add -1,r0
	beq .L627
	exth d1,a1
	cmp 0,a1
	bge .L621
	mov 0,r1
	jmp .L622
.L626:
	mov 0,r1
	jmp .L622
.L627:
	mov 0,r1
	jmp .L622
.L624:
	exthu d0,a1
	exthu d1,r0
	cmp r0,a1
	bcs .L623
	or_sub a0, r1, d1, d0
.L623:
	asl 16,a0
	lsr 17,a0
	asl 16,d1
	lsr 17,d1
.L622:
	exthu a0,a1
	cmp 0,a1
	bne .L624
	cmp 0,r2
	bne .L625
	mov r1,d0
.L625:
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
	jmp .L630
.L632:
	add d1,d1
	add a0,a0
.L630:
	cmp d0,d1
	bcc .L637
	add -1,a1
	beq .L638
	cmp 0,d1
	bge .L632
	mov 0,a1
	jmp .L633
.L637:
	mov 0,a1
	jmp .L633
.L638:
	mov 0,a1
	jmp .L633
.L635:
	cmp d1,d0
	bcs .L634
	or_sub a0, a1, d1, d0
.L634:
	lsr 1,a0
	lsr 1,d1
.L633:
	cmp 0,a0
	bne .L635
	cmp 0,r0
	bne .L636
	mov a1,d0
.L636:
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
	beq .L641
	mov 0,d0
	asl r2,r0,d1
	jmp .L642
.L641:
	cmp 0,r2
	beq .L644
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a1,a0,d1
.L642:
	mov_mov d0, a0, d1, a1
	jmp .L643
.L644:
.L643:
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
	beq .L646
	asr 31,d1
	asr r2,r1,d0
	jmp .L647
.L646:
	cmp 0,r2
	beq .L649
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
.L647:
	mov_mov d0, a0, d1, a1
	jmp .L648
.L649:
.L648:
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
	bhi .L658
	mov 16,a0
	jmp .L653
.L658:
	mov 0,a0
.L653:
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	bne .L659
	mov 8,a1
	jmp .L654
.L659:
	mov 0,a1
.L654:
	mov 8,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	btst 240,d1
	bne .L660
	mov 4,a1
	jmp .L655
.L660:
	mov 0,a1
.L655:
	mov 4,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	btst 12,d1
	bne .L661
	mov 2,a1
	jmp .L656
.L661:
	mov 0,a1
.L656:
	mov 2,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	mov d1,a1
	and 2,a1
	mov 1,d0
	beq .L657
	mov 0,d0
.L657:
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
	bgt .L664
	cmp a1,d1
	blt .L665
	cmp a0,d0
	bhi .L666
	bcs .L667
	mov 1,d0
	jmp .L663
.L664:
	mov 0,d0
	jmp .L663
.L665:
	mov 2,d0
	jmp .L663
.L666:
	mov 0,d0
	jmp .L663
.L667:
	mov 2,d0
.L663:
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
	bne .L674
	mov 16,a0
	jmp .L670
.L674:
	mov 0,a0
.L670:
	lsr a0,d0,d1
	extbu d1,d0
	cmp 0,d0
	bne .L675
	mov 8,d0
	jmp .L671
.L675:
	mov 0,d0
.L671:
	add_lsr d0, a0, d0, d1
	btst 15,d1
	bne .L676
	mov 4,d0
	jmp .L672
.L676:
	mov 0,d0
.L672:
	add_lsr d0, a0, d0, d1
	btst 3,d1
	bne .L677
	mov 2,d0
	jmp .L673
.L677:
	mov 0,d0
.L673:
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
	beq .L679
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
	jmp .L680
.L679:
	cmp 0,r2
	beq .L682
	mov_lsr 0, a0, r2, d1
	sub r2,a0
	asl a0,a1,a0
	lsr r2,r0
	or r0,a0,d0
.L680:
	mov_mov d0, r0, d1, r1
	jmp .L681
.L682:
.L681:
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
.L693:
	btst 1,a2
	beq .L691
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L691:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L692
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L693
.L692:
	cmp 0,r6
	beq .L695
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
	jmp .L694
.L695:
	mov_mov r4, a0, r5, a1
.L694:
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
.L699:
	btst 1,d2
	beq .L697
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
.L697:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L698
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L699
.L698:
	cmp 0,r4
	beq .L701
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	jmp .L700
.L701:
	mov a2,d0
.L700:
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
	bhi .L704
	cmp a1,d1
	bcs .L705
	cmp a0,d0
	bhi .L706
	bcs .L707
	mov 1,d0
	jmp .L703
.L704:
	mov 0,d0
	jmp .L703
.L705:
	mov 2,d0
	jmp .L703
.L706:
	mov 0,d0
	jmp .L703
.L707:
	mov 2,d0
.L703:
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
