	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	mov (12,sp),a1
	cmp d1,d0
	bls .L10
	add_mov -1, d1, -1, r0
	add d0,r0
	jmp .L2
.L4:
	movbu (a1,d1),a0
	movbu a0,(a1,r0)
	add -1,a1
.L2:
	cmp 0,a1
	bne .L4
.L5:
	mov d0,a0
	retf [],0
.L10:
	beq .L5
	mov 0,r0
	jmp .L6
.L7:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
	inc r0
.L6:
	cmp a1,r0
	bne .L7
	jmp .L5
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	mov (16,sp),a0
	movbu (12,sp),r0
	jmp .L12
.L14:
	add_add -1, a0, 1, d1
	inc d0
.L12:
	cmp 0,a0
	beq .L13
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp a1,r0
	bne .L14
.L13:
	cmp 0,a0
	beq .L16
	inc d0
.L15:
	mov d0,a0
	retf [],0
.L16:
	mov 0,d0
	jmp .L15
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	jmp .L18
.L20:
	add_add 1, d0, -1, a0
.L18:
	cmp 0,a0
	beq .L19
	movbu (d0),a1
	cmp a1,d1
	bne .L20
.L19:
	cmp 0,a0
	beq .L23
.L21:
	mov d0,a0
	retf [],0
.L23:
	mov 0,d0
	jmp .L21
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	jmp .L25
.L27:
	add_add -1, a0, 1, d0
	inc d1
.L25:
	cmp 0,a0
	beq .L26
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	beq .L27
.L26:
	cmp 0,a0
	beq .L29
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L29:
	mov 0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	mov (12,sp),a0
	mov 0,a1
	jmp .L31
.L32:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
.L31:
	cmp a0,a1
	bne .L32
	mov d0,a0
	retf [],0
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	extbu d1
	mov (12,sp),a0
	add -1,a0
.L34:
	cmp -1,a0
	beq .L38
	movbu (a0,d0),a1
	mov -1,r0
	add_cmp a0, r0, a1, d1
	beq .L39
	mov r0,a0
	jmp .L34
.L39:
	add a0,d0
	jmp .L35
.L38:
	mov 0,d0
.L35:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	add_mov d0, r0, d0, a1
	jmp .L41
.L42:
	movbu d1,(a1)
	inc a1
.L41:
	cmp r0,a1
	bne .L42
	mov d0,a0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	jmp .L44
.L45:
	add_add 1, d1, 1, d0
.L44:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	bne .L45
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	jmp .L47
.L49:
	inc d0
.L47:
	movbu (d0),a0
	cmp 0,a0
	beq .L48
	cmp a0,d1
	bne .L49
.L48:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L52:
	movbu (d0),a0
	cmp a0,d1
	beq .L51
	inc d0
	movbu (-1,d0),a0
	cmp 0,a0
	bne .L52
	mov 0,d0
.L51:
	mov d0,a0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	jmp .L56
.L58:
	add_add 1, d0, 1, d1
.L56:
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	bne .L57
	cmp 0,a1
	bne .L58
.L57:
	movbu (d0),a0
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	mov d0,d1
	jmp .L60
.L61:
	inc d1
.L60:
	movbu (d1),a0
	cmp 0,a0
	bne .L61
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L67
	add -1,r0
	add d0,r0
.L64:
	movbu (d0),a0
	cmp 0,a0
	beq .L65
	movbu (d1),a0
	cmp 0,a0
	beq .L65
	cmp r0,d0
	beq .L65
	movbu (d0),a1
	cmp a0,a1
	bne .L65
	add_add 1, d0, 1, d1
	jmp .L64
.L65:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L67:
	mov 0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov d0,a0
	mov (12,sp),a1
	add a1,d0
	jmp .L69
.L70:
	movbu (1,a0),a1
	movbu a1,(d1)
	movbu (a0),a1
	movbu a1,(1,d1)
	add_add 2, d1, 2, a0
.L69:
	sub a0,d0,a1
	cmp 1,a1
	bgt .L70
	retf [],0
	.size	swab, .-swab
	.global isalpha
	.type	isalpha, @function
isalpha:
	mov d0,d1
	or 32,d1
	add -97,d1
	mov 1,d0
	cmp 25,d1
	bls .L72
	mov 0,d0
.L72:
	and 1,d0
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov 1,d1
	cmp 127,d0
	bls .L74
	mov 0,d1
.L74:
	mov d1,d0
	and 1,d0
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L78
	mov 1,d1
	cmp 9,d0
	beq .L77
	mov 0,d1
.L77:
	extbu d1,d0
	retf [],0
.L78:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L82
	mov 1,d1
	cmp 127,d0
	beq .L81
	mov 0,d1
.L81:
	extbu d1,d0
	retf [],0
.L82:
	mov 1,d0
	retf [],0
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov -48,d1
	add d0,d1
	mov 1,d0
	cmp 9,d1
	bls .L84
	mov 0,d0
.L84:
	and 1,d0
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	mov 1,d0
	cmp 93,d1
	bls .L86
	mov 0,d0
.L86:
	and 1,d0
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	mov 1,d0
	cmp 25,d1
	bls .L88
	mov 0,d0
.L88:
	and 1,d0
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	mov 1,d0
	cmp 94,d1
	bls .L90
	mov 0,d0
.L90:
	and 1,d0
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L94
	add -9,d0
	mov 1,d1
	cmp 4,d0
	bls .L93
	mov 0,d1
.L93:
	extbu d1,d0
	retf [],0
.L94:
	mov 1,d0
	retf [],0
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov -65,d1
	add d0,d1
	mov 1,d0
	cmp 25,d1
	bls .L96
	mov 0,d0
.L96:
	and 1,d0
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L100
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L101
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L102
	add -65529,d0
	mov 1,d1
	cmp 2,d0
	bls .L99
	mov 0,d1
.L99:
	extbu d1,d0
	retf [],0
.L100:
	mov 1,d0
	retf [],0
.L101:
	mov 1,d0
	retf [],0
.L102:
	mov 1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add d0,d1
	mov 1,d0
	cmp 9,d1
	bls .L104
	mov 0,d0
.L104:
	and 1,d0
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L113
	cmp 8231,d0
	bls .L109
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L110
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L111
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L112
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L113:
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L107
	mov 0,d1
.L107:
	extbu d1,d0
	retf [],0
.L109:
	mov 1,d0
	retf [],0
.L110:
	mov 1,d0
	retf [],0
.L111:
	mov 1,d0
	retf [],0
.L112:
	mov 0,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L117
	or 32,d0
	add -97,d0
	mov 1,d1
	cmp 5,d0
	bls .L116
	mov 0,d1
.L116:
	extbu d1,d0
	retf [],0
.L117:
	mov 1,d0
	retf [],0
	.size	iswxdigit, .-iswxdigit
	.global toascii
	.type	toascii, @function
toascii:
	and 127,d0
	retf [],0
	.size	toascii, .-toascii
	.global fdim
	.type	fdim, @function
fdim:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (48,sp),a2
	mov (52,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L122
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L123
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L126
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L120:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L122:
	mov_mov d2, a0, d3, a1
	jmp .L120
.L123:
	mov_mov a2, a0, a3, a1
	jmp .L120
.L126:
	mov 0,a0
	mov a0,a1
	jmp .L120
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L130
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L131
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L134
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
.L128:
	ret [d2,d3],20
.L130:
	mov d2,d0
	jmp .L128
.L131:
	mov d3,d0
	jmp .L128
.L134:
	mov 0,d0
	jmp .L128
	.size	fdimf, .-fdimf
	.global fmax
	.type	fmax, @function
fmax:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (48,sp),a2
	mov (52,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L141
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L142
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L137
	cmp 0,d3
	bge .L143
	mov_mov a2, a0, a3, a1
	jmp .L136
.L137:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L139
	mov_mov a2, d0, a3, d1
.L140:
	mov_mov d0, a0, d1, a1
.L136:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L139:
	mov_mov d2, d0, d3, d1
	jmp .L140
.L141:
	mov_mov a2, a0, a3, a1
	jmp .L136
.L142:
	mov_mov d2, a0, d3, a1
	jmp .L136
.L143:
	mov_mov d2, a0, d3, a1
	jmp .L136
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L150
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L151
	mov d2,d1
	and -2147483648,d1
	mov d3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L146
	mov_cmp d2, d0, 0, d2
	bge .L145
	mov d3,d0
	jmp .L145
.L146:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L149
	mov d3,d2
.L149:
	mov d2,d0
.L145:
	ret [d2,d3],20
.L150:
	mov d3,d0
	jmp .L145
.L151:
	mov d2,d0
	jmp .L145
	.size	fmaxf, .-fmaxf
	.global fmaxl
	.type	fmaxl, @function
fmaxl:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (48,sp),a2
	mov (52,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L159
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L160
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L155
	cmp 0,d3
	bge .L161
	mov_mov a2, a0, a3, a1
	jmp .L154
.L155:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L157
	mov_mov a2, d0, a3, d1
.L158:
	mov_mov d0, a0, d1, a1
.L154:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L157:
	mov_mov d2, d0, d3, d1
	jmp .L158
.L159:
	mov_mov a2, a0, a3, a1
	jmp .L154
.L160:
	mov_mov d2, a0, d3, a1
	jmp .L154
.L161:
	mov_mov d2, a0, d3, a1
	jmp .L154
	.size	fmaxl, .-fmaxl
	.global fmin
	.type	fmin, @function
fmin:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (48,sp),a2
	mov (52,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L168
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L169
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L164
	cmp 0,d3
	bge .L170
	mov_mov d2, a0, d3, a1
	jmp .L163
.L164:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L166
	mov_mov d2, d0, d3, d1
.L167:
	mov_mov d0, a0, d1, a1
.L163:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L166:
	mov_mov a2, d0, a3, d1
	jmp .L167
.L168:
	mov_mov a2, a0, a3, a1
	jmp .L163
.L169:
	mov_mov d2, a0, d3, a1
	jmp .L163
.L170:
	mov_mov a2, a0, a3, a1
	jmp .L163
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, d2
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L177
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L178
	mov d3,d1
	and -2147483648,d1
	mov d2,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L173
	mov_cmp d3, d0, 0, d3
	blt .L172
	mov d2,d0
	jmp .L172
.L173:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L176
	mov d3,d2
.L176:
	mov d2,d0
.L172:
	ret [d2,d3],20
.L177:
	mov d2,d0
	jmp .L172
.L178:
	mov d3,d0
	jmp .L172
	.size	fminf, .-fminf
	.global fminl
	.type	fminl, @function
fminl:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (48,sp),a2
	mov (52,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L186
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L187
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L182
	cmp 0,d3
	bge .L188
	mov_mov d2, a0, d3, a1
	jmp .L181
.L182:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L184
	mov_mov d2, d0, d3, d1
.L185:
	mov_mov d0, a0, d1, a1
.L181:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L184:
	mov_mov a2, d0, a3, d1
	jmp .L185
.L186:
	mov_mov a2, a0, a3, a1
	jmp .L181
.L187:
	mov_mov d2, a0, d3, a1
	jmp .L181
.L188:
	mov_mov a2, a0, a3, a1
	jmp .L181
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
	retf [],0
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.global srand
	.type	srand, @function
srand:
	mov 0,a0
	mov_mov a0, a1, -1, a0
	add d0,a0
	mov a0,(+seed)
	mov a1,(+seed+4)
	retf [],0
	.size	srand, .-srand
	.global rand
	.type	rand, @function
rand:
	movm [d2],(sp)
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
	ret [d2],4
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	cmp 0,d1
	beq .L197
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L194
	mov d0,(4,d1)
.L194:
	retf [],0
.L197:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
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
	retf [],0
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov_mov d0, a3, d1, r6
	mov (60,sp),r7
	mov (64,sp),r4
	mov (68,sp),r5
	mov (r7),a2
	mov_mov d1, d3, 0, d2
	jmp .L202
.L203:
	inc d2
.L202:
	cmp a2,d2
	beq .L206
	mov_mov d3, d1, a3, d0
	mov r5,a0
	calls (a0)
	add_cmp r4, d3, 0, d0
	bne .L203
	mul d2,r4,d1,d0
	add r6,d0
	jmp .L204
.L206:
	mov 1,d0
	add a2,d0
	mov d0,(r7)
	mul r4,a2,a0,d0
	mov r4,(12,sp)
	mov_add a3, d1, r6, d0
	call +memcpy,[],0
	mov a0,d0
.L204:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
	.size	lsearch, .-lsearch
	.global lfind
	.type	lfind, @function
lfind:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov_mov d0, a2, d1, r5
	mov (60,sp),r4
	mov (64,sp),r6
	mov (56,sp),d0
	mov (d0),a3
	mov_mov d1, d3, 0, d2
	jmp .L208
.L209:
	inc d2
.L208:
	cmp a3,d2
	beq .L212
	mov_mov d3, d1, a2, d0
	mov r6,a0
	calls (a0)
	add_cmp r4, d3, 0, d0
	bne .L209
	mul d2,r4,d1,d0
	add r5,d0
	jmp .L210
.L212:
	mov 0,d0
.L210:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L215
.L214:
	retf [],0
.L215:
	mov 0,d0
	sub d1,d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	movm [d2],(sp)
	add -12,sp
	mov d0,d2
	jmp .L217
.L218:
	inc d2
.L217:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L218
	movbu (d2),d0
	cmp 43,d0
	beq .L224
	cmp 45,d0
	bne .L225
	mov 1,a0
.L219:
	inc d2
.L220:
	mov 0,d0
	jmp .L221
.L224:
	mov 0,a0
	jmp .L219
.L225:
	mov 0,a0
	jmp .L220
.L222:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L221:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L222
	cmp 0,a0
	bne .L223
	not d0
	inc d0
.L223:
	ret [d2],16
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2],(sp)
	add -12,sp
	mov d0,d2
	jmp .L228
.L229:
	inc d2
.L228:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L229
	movbu (d2),d0
	cmp 43,d0
	beq .L235
	cmp 45,d0
	bne .L236
	mov 1,a0
.L230:
	inc d2
.L231:
	mov 0,d0
	jmp .L232
.L235:
	mov 0,a0
	jmp .L230
.L236:
	mov 0,a0
	jmp .L231
.L233:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L232:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L233
	cmp 0,a0
	bne .L234
	not d0
	inc d0
.L234:
	ret [d2],16
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,d2
	jmp .L239
.L240:
	inc d2
.L239:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L240
	movbu (d2),d0
	cmp 43,d0
	beq .L246
	cmp 45,d0
	bne .L247
	mov 1,r0
.L241:
	inc d2
.L242:
	mov 0,d0
	mov d0,d1
	mov 10,a1
	jmp .L243
.L246:
	mov 0,r0
	jmp .L241
.L247:
	mov 0,r0
	jmp .L242
.L244:
	mov 10,a0
	mul d1,a0
	mulu d0,a1,a3,a2
	add_add a0, a3, 1, d2
	movbu (-1,d2),a0
	add -48,a0
	mov_mov a0, r4, a0, r5
	asr 31,r5
	sub a0,a2,d0
	subc r5,a3,d1
.L243:
	movbu (d2),a0
	add -48,a0
	cmp 9,a0
	bls .L244
	cmp 0,r0
	bne .L248
	mov 0,a2
	mov a2,a3
	sub d0,a2,a0
	subc d1,a2,a1
.L245:
	mov_mov a0, d0, a1, d1
	ret [d2,a2,a3,exreg1],40
.L248:
	mov_mov d0, a0, d1, a1
	jmp .L245
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov_mov d0, r4, d1, a2
	mov (56,sp),d3
	mov (60,sp),a3
	mov (64,sp),r5
	jmp .L250
.L257:
	lsr 1,d3
.L250:
	cmp 0,d3
	beq .L256
	mov d3,d2
	lsr 1,d2
	mul a3,d2
	add a2,d2
	mov_mov d2, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L257
	ble .L255
	add a3,d2,a2
	mov d3,d0
	add_lsr -1, d3, 1, d0
	sub d0,d3
	jmp .L250
.L256:
	mov 0,d0
.L253:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
.L255:
	mov d2,d0
	jmp .L253
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov d0,r4
	mov (64,sp),a3
	mov (68,sp),r6
	mov (72,sp),r5
	mov (60,sp),d3
	mov d1,a2
	jmp .L259
.L261:
	asr 1,d3
.L259:
	cmp 0,d3
	beq .L264
	mov d3,d2
	asr 1,d2
	mul a3,d2
	add a2,d2
	mov r5,(12,sp)
	mov_mov d2, d1, r4, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	beq .L263
	ble .L261
	add a3,d2,a2
	add -1,d3
	jmp .L261
.L264:
	mov 0,d0
.L260:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L263:
	mov d2,d0
	jmp .L260
	.size	bsearch_r, .-bsearch_r
	.global div
	.type	div, @function
div:
	movm [d2],(sp)
	ext d0
	div d1,d0
	mov mdr,d1
	ret [d2],4
	.size	div, .-div
	.global imaxabs
	.type	imaxabs, @function
imaxabs:
	movm [d2],(sp)
	mov_mov d0, r0, d0, a0
	mov_cmp d1, a1, 0, d1
	blt .L269
.L267:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L269:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L267
	.size	imaxabs, .-imaxabs
	.global imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -28,sp
	mov_mov d0, r6, d1, d2
	mov (72,sp),d3
	mov (76,sp),r4
	mov (80,sp),r5
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d1, d0, d3, d1
	call +__divdi3,[],0
	mov_mov d0, a2, d1, a3
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__moddi3,[],0
	mov a2,d2
	mov a2,(r6)
	mov a3,(4,r6)
	mov d0,(8,r6)
	mov d1,(12,r6)
	mov r6,a0
	ret [d2,d3,a2,a3,exreg1],60
	.size	imaxdiv, .-imaxdiv
	.global labs
	.type	labs, @function
labs:
	mov_cmp d0, d1, 0, d0
	blt .L273
.L272:
	retf [],0
.L273:
	mov 0,d0
	sub d1,d0
	retf [],0
	.size	labs, .-labs
	.global ldiv
	.type	ldiv, @function
ldiv:
	movm [d2],(sp)
	ext d0
	div d1,d0
	mov mdr,d1
	ret [d2],4
	.size	ldiv, .-ldiv
	.global llabs
	.type	llabs, @function
llabs:
	movm [d2],(sp)
	mov_mov d0, r0, d0, a0
	mov_cmp d1, a1, 0, d1
	blt .L278
.L276:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L278:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L276
	.size	llabs, .-llabs
	.global lldiv
	.type	lldiv, @function
lldiv:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -28,sp
	mov_mov d0, r6, d1, d2
	mov (72,sp),d3
	mov (76,sp),r4
	mov (80,sp),r5
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d1, d0, d3, d1
	call +__divdi3,[],0
	mov_mov d0, a2, d1, a3
	mov d0,(20,sp)
	mov d1,(24,sp)
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__moddi3,[],0
	mov a2,d2
	mov a2,(r6)
	mov a3,(4,r6)
	mov d0,(8,r6)
	mov d1,(12,r6)
	mov r6,a0
	ret [d2,d3,a2,a3,exreg1],60
	.size	lldiv, .-lldiv
	.global wcschr
	.type	wcschr, @function
wcschr:
	jmp .L281
.L283:
	add 4,d0
.L281:
	mov (d0),a0
	cmp 0,a0
	beq .L282
	cmp a0,d1
	bne .L283
.L282:
	mov (d0),d1
	cmp 0,d1
	beq .L286
.L284:
	mov d0,a0
	retf [],0
.L286:
	mov 0,d0
	jmp .L284
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	jmp .L288
.L290:
	add_add 4, d0, 4, d1
.L288:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L289
	cmp 0,a1
	beq .L289
	mov (d1),a0
	cmp 0,a0
	bne .L290
.L289:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L293
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L292
	mov 0,d0
.L292:
	extbu d0
	retf [],0
.L293:
	mov -1,d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov d0,r0
	setlb
.L295:
	mov (d1+),a1
	mov a1,(r0+)
	cmp 0,a1
	Lne # loop back to: .L295
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov d0,d1
	jmp .L298
.L299:
	add 4,d1
.L298:
	mov (d1),a0
	cmp 0,a0
	bne .L299
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
.L301:
	cmp 0,a0
	beq .L302
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L302
	cmp 0,r0
	beq .L302
	mov (d1),a1
	cmp 0,a1
	beq .L302
	add_add -1, a0, 4, d0
	add 4,d1
	jmp .L301
.L302:
	cmp 0,a0
	beq .L306
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L307
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L305
	mov 0,d0
.L305:
	extbu d0
	retf [],0
.L306:
	mov 0,d0
	retf [],0
.L307:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	jmp .L309
.L311:
	add_add -1, a0, 4, d0
.L309:
	cmp 0,a0
	beq .L310
	mov (d0),a1
	cmp a1,d1
	bne .L311
.L310:
	cmp 0,a0
	beq .L314
.L312:
	mov d0,a0
	retf [],0
.L314:
	mov 0,d0
	jmp .L312
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	jmp .L316
.L318:
	add_add -1, a0, 4, d0
	add 4,d1
.L316:
	cmp 0,a0
	beq .L317
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	beq .L318
.L317:
	cmp 0,a0
	beq .L321
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L322
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L320
	mov 0,d0
.L320:
	extbu d0
	retf [],0
.L321:
	mov 0,d0
	retf [],0
.L322:
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov (12,sp),r0
	mov 0,a1
	jmp .L324
.L325:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L324:
	add -1,r0
	cmp -1,r0
	bne .L325
	mov d0,a0
	retf [],0
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a1
	cmp d1,d0
	beq .L327
	sub d1,d0,r0
	mov a1,a0
	asl2 a0
	cmp a0,r0
	bcc .L332
	add -1,a1
	asl2 a1
	jmp .L329
.L330:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
.L329:
	cmp -4,a1
	bne .L330
.L327:
	mov d0,a0
	retf [],0
.L331:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	inc4 r0
.L328:
	add -1,a1
	cmp -1,a1
	bne .L331
	jmp .L327
.L332:
	mov 0,r0
	jmp .L328
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a1
	mov d0,r0
	jmp .L334
.L335:
	mov d1,(r0+)
.L334:
	add -1,a1
	cmp -1,a1
	bne .L335
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L345
	add_add -1, d0, -1, d1
	jmp .L337
.L339:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
.L337:
	cmp 0,a0
	bne .L339
	retf [],0
.L345:
	beq .L346
	mov 0,a1
	jmp .L341
.L346:
	retf [],0
.L342:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
.L341:
	cmp a0,a1
	bne .L342
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L348
	mov 0,r2
	asl d0,r0,r3
.L349:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L350
	not d0
	add_mov 1, d0, 0, a0
	mov a0,a1
	lsr d0,r1,a0
.L351:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L348:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
	jmp .L349
.L350:
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
	jmp .L351
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L353
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
.L354:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L355
	not d0
	add_mov 1, d0, 0, a0
	asl d0,r0,a1
.L356:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L353:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
	jmp .L354
.L355:
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
	jmp .L356
	.size	rotr64, .-rotr64
	.global rotl32
	.type	rotl32, @function
rotl32:
	asl d1,d0,a0
	not d1
	inc d1
	lsr d1,d0
	or a0,d0
	retf [],0
	.size	rotl32, .-rotl32
	.global rotr32
	.type	rotr32, @function
rotr32:
	lsr d1,d0,a0
	not d1
	inc d1
	asl d1,d0
	or a0,d0
	retf [],0
	.size	rotr32, .-rotr32
	.global rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	asl d1,d0,a0
	not d1
	inc d1
	lsr d1,d0
	or a0,d0
	retf [],0
	.size	rotl_sz, .-rotl_sz
	.global rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	lsr d1,d0,a0
	not d1
	inc d1
	asl d1,d0
	or a0,d0
	retf [],0
	.size	rotr_sz, .-rotr_sz
	.global rotl16
	.type	rotl16, @function
rotl16:
	exthu d0,a0
	asl d1,a0,d0
	mov 16,a1
	sub d1,a1,d1
	lsr d1,a0
	or a0,d0
	retf [],0
	.size	rotl16, .-rotl16
	.global rotr16
	.type	rotr16, @function
rotr16:
	exthu d0,a0
	lsr d1,a0,d0
	mov 16,a1
	sub d1,a1,d1
	asl d1,a0
	or a0,d0
	retf [],0
	.size	rotr16, .-rotr16
	.global rotl8
	.type	rotl8, @function
rotl8:
	extbu d0,a0
	asl d1,a0,d0
	mov 8,a1
	sub d1,a1,d1
	lsr d1,a0
	or a0,d0
	retf [],0
	.size	rotl8, .-rotl8
	.global rotr8
	.type	rotr8, @function
rotr8:
	extbu d0,a0
	lsr d1,a0,d0
	mov 8,a1
	sub d1,a1,d1
	asl d1,a0
	or a0,d0
	retf [],0
	.size	rotr8, .-rotr8
	.global bswap_16
	.type	bswap_16, @function
bswap_16:
	mov d0,d1
	and 65280,d1
	lsr 8,d1
	extbu d0
	asl 8,d0
	or d1,d0
	retf [],0
	.size	bswap_16, .-bswap_16
	.global bswap_32
	.type	bswap_32, @function
bswap_32:
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
	retf [],0
	.size	bswap_32, .-bswap_32
	.global bswap_64
	.type	bswap_64, @function
bswap_64:
	movm [d2,d3,a2,a3],(sp)
	mov_mov d0, a0, d1, a1
	mov_mov 0, d2, d1, d3
	and -16777216,d3
	mov_mov d2, d1, d3, d0
	lsr 24,d0
	mov a1,a3
	and 16711680,a3
	mov a3,d2
	lsr 8,d2
	mov d1,a3
	or d0,d2,a2
	mov a1,r3
	and 65280,r3
	mov r3,d0
	asl 8,d0
	mov d1,r0
	lsr 24,r0
	or_mov d0, r0, r3, r1
	lsr 24,r1
	or r0,a2,d2
	mov r1,d3
	extbu a1,r3
	mov r3,d0
	asl 24,d0
	mov d1,r0
	lsr 8,r0
	or_mov d0, r0, r3, r1
	lsr 8,r1
	or r0,d2,r2
	or r1,d3,r3
	mov a0,d2
	and -16777216,d2
	mov d2,r1
	lsr 24,r1
	mov d2,r0
	asl 8,r0
	or r0,r2,d2
	or r1,r3,d3
	mov a0,r2
	and 16711680,r2
	mov r2,r1
	lsr 8,r1
	mov r2,r0
	asl 24,r0
	or r0,d2,r2
	or r1,d3,r3
	mov a0,r0
	and 65280,r0
	mov r0,d3
	asl 8,d3
	mov r2,r0
	or d3,r3,r1
	extbu a0,r2
	mov r2,d3
	asl 24,d3
	or d3,r1,a1
	mov_mov r0, d0, a1, d1
	retf [d2,d3,a2,a3],16
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	mov 0,d1
.L369:
	cmp 32,d1
	beq .L373
	lsr d1,d0,a0
	btst 1,a0
	bne .L374
	inc d1
	jmp .L369
.L374:
	mov 1,d0
	add d1,d0
	retf [],0
.L373:
	mov 0,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp 0,d0
	beq .L379
	mov 1,d1
	jmp .L377
.L378:
	add_asr 1, d1, 1, d0
.L377:
	btst 1,d0
	beq .L378
	mov d1,d0
	retf [],0
.L379:
	mov 0,d0
	retf [],0
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,d3
	mov -8388609,d1
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L383
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L384
.L382:
	extbu d2,d0
.L381:
	ret [d2,d3],20
.L384:
	mov 0,d2
	jmp .L382
.L383:
	mov 1,d0
	jmp .L381
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movm [d2,d3,a2],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,d0
	mov d0,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L388
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L389
.L387:
	extbu a2,d0
.L386:
	ret [d2,d3,a2],32
.L389:
	mov 0,a2
	jmp .L387
.L388:
	mov 1,d0
	jmp .L386
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movm [d2,d3,a2],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,d0
	mov d0,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L393
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L394
.L392:
	extbu a2,d0
.L391:
	ret [d2,d3,a2],32
.L394:
	mov 0,a2
	jmp .L392
.L393:
	mov 1,d0
	jmp .L391
	.size	gl_isinfl, .-gl_isinfl
	.global _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	movm [d2],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d0
	call +__floatsidf,[],0
	mov d0,(d2)
	mov d1,(4,d2)
	ret [d2],16
	.size	_Qp_itoq, .-_Qp_itoq
	.global ldexpf
	.type	ldexpf, @function
ldexpf:
	movm [d2,d3,a2],(sp)
	add -12,sp
	mov_mov d0, a2, d1, d2
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L397
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov_mov d0, d1, a2, d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L397
	cmp 0,d2
	blt .L404
	mov 1073741824,d3
	jmp .L401
.L404:
	mov 1056964608,d3
	jmp .L401
.L400:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L397
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L401:
	btst 1,d2
	beq .L400
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L400
.L397:
	mov a2,d0
	ret [d2,d3,a2],24
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, a2, d1, a3
	mov (64,sp),r4
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L406
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L406
	cmp 0,r4
	blt .L413
	mov 0,d2
	mov 1073741824,d3
	jmp .L410
.L413:
	mov 0,d2
	mov 1071644672,d3
	jmp .L410
.L409:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L406
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L410:
	btst 1,r4
	beq .L409
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L409
.L406:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, a2, d1, a3
	mov (64,sp),r4
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L415
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L415
	cmp 0,r4
	blt .L422
	mov 0,d2
	mov 1073741824,d3
	jmp .L419
.L422:
	mov 0,d2
	mov 1071644672,d3
	jmp .L419
.L418:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L415
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L419:
	btst 1,r4
	beq .L418
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L418
.L415:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	add_mov d0, r2, d0, a1
	jmp .L424
.L425:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
.L424:
	cmp r2,a1
	bne .L425
	mov d0,a0
	retf [],0
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	movm [d2,d3,a2],(sp)
	add -12,sp
	mov_mov d0, a2, d1, d2
	mov (36,sp),d3
	call +strlen,[],0
	add a2,d0
	jmp .L427
.L429:
	add_add 1, d2, 1, d0
	add -1,d3
.L427:
	cmp 0,d3
	beq .L428
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	bne .L429
.L428:
	cmp 0,d3
	bne .L430
	mov 0,d1
	movbu d1,(d0)
.L430:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
.L432:
	cmp d1,d0
	beq .L433
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L434
.L433:
	retf [],0
.L434:
	inc d0
	jmp .L432
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
.L436:
	movbu (d0),a0
	cmp 0,a0
	beq .L442
	mov d1,a1
.L439:
	movbu (a1),r0
	cmp 0,r0
	beq .L443
	inc a1
	movbu (-1,a1),r1
	movbu (d0),r0
	cmp r0,r1
	bne .L439
.L437:
	mov d0,a0
	retf [],0
.L443:
	inc d0
	jmp .L436
.L442:
	mov 0,d0
	jmp .L437
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a0, 0, d0
	jmp .L446
.L445:
	inc a0
	movbu (-1,a0),a1
	cmp 0,a1
	beq .L449
.L446:
	movbu (a0),a1
	cmp a1,d1
	bne .L445
	mov a0,d0
	jmp .L445
.L449:
	mov d0,a0
	retf [],0
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2,a3],(sp)
	add -16,sp
	mov_mov d0, d2, d1, d3
	mov d1,d0
	call +strlen,[],0
	mov_cmp d0, a2, 0, d0
	beq .L454
	movbu (d3),a3
.L452:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L456
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L455
	inc d2
	jmp .L452
.L456:
	mov 0,d0
	jmp .L451
.L454:
	mov d2,d0
.L451:
	mov d0,a0
	ret [d2,d3,a2,a3],32
.L455:
	mov d2,d0
	jmp .L451
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (48,sp),a2
	mov (52,sp),a3
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L470
.L458:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L468
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L460
	mov_mov d2, a0, d3, a1
.L461:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L470:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L458
.L460:
	mov d2,a0
	mov -2147483648,a1
	add d3,a1
	jmp .L461
.L468:
	mov_mov d2, a0, d3, a1
	jmp .L461
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov (60,sp),a2
	mov (64,sp),a0
	sub a0,d1,d3
	add_cmp d0, d3, 0, a0
	beq .L472
	mov 1,a1
	cmp a0,d1
	bcs .L473
	mov 0,a1
.L473:
	extbu a1
	cmp 0,a1
	bne .L478
	mov_mov d0, d2, 1, r4
	add_mov a2, r4, -1, a3
	add a0,a3
	jmp .L474
.L475:
	inc d2
.L474:
	cmp d3,d2
	bhi .L480
	movbu (d2),d1
	movbu (a2),d0
	cmp d0,d1
	bne .L475
	mov a3,(12,sp)
	mov_mov r4, d1, 1, d0
	add d2,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L475
	mov d2,d0
	jmp .L472
.L480:
	mov 0,d0
.L472:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L478:
	mov 0,d0
	jmp .L472
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov d2,(12,sp)
	call +memcpy,[],0
	add d2,a0,d0
	mov d0,a0
	ret [d2],20
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L502
	mov 0,r6
.L483:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L503
	mov 0,a2
	mov a2,a3
	mov 1072693248,r4
	mov 1071644672,r5
	jmp .L485
.L502:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r6
	jmp .L483
.L487:
	inc a2
	mov a3,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L485:
	mov a3,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L487
.L488:
	mov (64,sp),d0
	mov a2,(d0)
	cmp 0,r6
	beq .L492
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L492:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L503:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L501
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L496
	mov 0,a2
	jmp .L488
.L491:
	add -1,a2
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
.L490:
	mov r4,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L491
	jmp .L488
.L496:
	mov 0,a2
	mov a2,r4
	mov 1071644672,a3
	jmp .L490
.L501:
	mov 0,a2
	jmp .L488
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -24,sp
	mov (68,sp),a0
	mov (72,sp),a1
	mov 0,r0
	mov r0,(sp)
	mov r0,(4,sp)
	jmp .L505
.L506:
	mov d0,r2
	and 1,r2
	clr r3
	mov r2,(8,sp)
	mov r3,(12,sp)
	sub r2,r3,d2
	subc r3,r3,d3
	and d2,a0,r6
	and d3,a1,r7
	mov (sp),r0
	mov (4,sp),r4
	add r6,r0
	addc r7,r4
	mov r4,(20,sp)
	mov r0,(16,sp)
	mov a0,r0
	lsr 31,r0
	mov a1,r5
	add r5,r5
	or_mov r0, r5, a0, r4
	add r4,r4
	mov_mov r4, a0, r5, a1
	mov d1,r0
	asl 31,r0
	mov d0,a2
	lsr 1,a2
	or_mov r0, a2, d1, a3
	mov_lsr a2, d0, 1, a3
	mov a3,d1
	mov (16,sp),r0
	mov r0,(sp)
	mov (20,sp),r0
	mov r0,(4,sp)
.L505:
	or d1,d0,r0
	bne .L506
	mov (sp),d0
	mov (4,sp),d1
	retf [d2,d3,a2,a3,exreg1],56
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L508
.L510:
	add d1,d1
	add a0,a0
.L508:
	cmp d0,d1
	bcc .L515
	add -1,a1
	beq .L516
	cmp 0,d1
	bge .L510
	mov 0,a1
	jmp .L511
.L515:
	mov 0,a1
	jmp .L511
.L516:
	mov 0,a1
	jmp .L511
.L512:
	lsr 1,a0
	lsr 1,d1
.L511:
	cmp 0,a0
	beq .L518
	cmp d1,d0
	bcs .L512
	or_sub a0, a1, d1, d0
	jmp .L512
.L518:
	cmp 0,r0
	bne .L514
	mov a1,d0
.L514:
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	btst 255,d0
	beq .L521
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L521:
	mov 7,d0
	retf [],0
	.size	__clrsbqi2, .-__clrsbqi2
	.global __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	mov d1,a0
	asr 31,a0
	xor d0,a0,d0
	xor d1,a0,d1
	or d1,d0,a0
	beq .L527
	mov_cmp d0, a0, 0, d1
	beq .L525
	mov 0,d0
	bsch d1, d0
	xor 31,d0
.L526:
	add -1,d0
	retf [],0
.L525:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L526
.L527:
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_mov d0, a1, 0, d0
	jmp .L529
.L530:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
.L529:
	cmp 0,a1
	bne .L530
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2,d3],(sp)
	mov (20,sp),r2
	mov r2,d3
	mov_lsr r2, a1, 3, d3
	and -8,a1
	cmp d1,d0
	bcs .L532
	add r2,d1,a0
	cmp d0,a0
	bcc .L533
.L532:
	mov 0,a0
	mov a0,r3
	jmp .L534
.L535:
	mov (a0,d1),r0
	add a0,d1,d2
	mov (4,d2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	inc r3
	add 8,a0
.L534:
	cmp d3,r3
	bne .L535
	jmp .L536
.L537:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
.L536:
	cmp a1,r2
	bhi .L537
.L531:
	retf [d2,d3],8
.L539:
	movbu (r2,d1),a0
	movbu a0,(r2,d0)
.L533:
	add -1,r2
	cmp -1,r2
	bne .L539
	jmp .L531
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),a1
	mov a1,r1
	cmp_lsr d1, d0, 1, r1
	bcs .L542
	add a1,d1,a0
	cmp d0,a0
	bcc .L543
.L542:
	mov_asl 0, a0, 1, r1
	jmp .L544
.L545:
	movhu (a0,d1),r0
	movhu r0,(a0,d0)
	add 2,a0
.L544:
	cmp r1,a0
	bne .L545
	btst 1,a1
	beq .L541
	add -1,a1
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
	retf [],0
.L547:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
.L543:
	add -1,a1
	cmp -1,a1
	bne .L547
.L541:
	retf [],0
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	mov (12,sp),r0
	mov r0,r2
	mov_lsr r0, a0, 2, r2
	and -4,a0
	cmp d1,d0
	bcs .L550
	add r0,d1,a1
	cmp d0,a1
	bcc .L551
.L550:
	mov_asl 0, a1, 2, r2
	jmp .L552
.L553:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L552:
	cmp r2,a1
	bne .L553
	jmp .L554
.L555:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
.L554:
	cmp a0,r0
	bhi .L555
	retf [],0
.L557:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
.L551:
	add -1,r0
	cmp -1,r0
	bne .L557
	retf [],0
	.size	__cmovw, .-__cmovw
	.global __modi
	.type	__modi, @function
__modi:
	movm [d2],(sp)
	mov d0,a0
	ext d0
	div d1,a0
	mov mdr,d0
	ret [d2],4
	.size	__modi, .-__modi
	.global __uitod
	.type	__uitod, @function
__uitod:
	add -12,sp
	call +__floatunsidf,[],0
	ret [],12
	.size	__uitod, .-__uitod
	.global __uitof
	.type	__uitof, @function
__uitof:
	add -12,sp
	call +__floatunsisf,[],0
	ret [],12
	.size	__uitof, .-__uitof
	.global __ulltod
	.type	__ulltod, @function
__ulltod:
	add -12,sp
	call +__floatundidf,[],0
	ret [],12
	.size	__ulltod, .-__ulltod
	.global __ulltof
	.type	__ulltof, @function
__ulltof:
	add -12,sp
	call +__floatundisf,[],0
	ret [],12
	.size	__ulltof, .-__ulltof
	.global __umodi
	.type	__umodi, @function
__umodi:
	movm [d2],(sp)
	mov_mov d0, a0, 0, d2
	mov d2,mdr
	divu d1,a0
	mov mdr,d0
	ret [d2],4
	.size	__umodi, .-__umodi
	.global __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	mov 0,d1
	exthu d0
	mov 15,a1
.L566:
	cmp 16,d1
	beq .L567
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L567
	inc d1
	jmp .L566
.L567:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L570:
	cmp 16,d1
	beq .L571
	asr d1,d0,a0
	btst 1,a0
	bne .L571
	inc d1
	jmp .L570
.L571:
	mov d1,d0
	retf [],0
	.size	__ctzhi2, .-__ctzhi2
	.global __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	movm [d2],(sp)
	add -12,sp
	mov d0,d2
	mov 1191182336,d1
	call +__gesf2,[],0
	cmp 0,d0
	bge .L579
	mov d2,d0
	call +__fixsfsi,[],0
.L576:
	ret [d2],16
.L579:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L576
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	jmp .L581
.L582:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
.L581:
	cmp 16,d1
	bne .L582
	mov a1,d0
	and 1,d0
	retf [],0
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	jmp .L584
.L585:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
.L584:
	cmp 16,d1
	bne .L585
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_mov d0, a1, 0, d0
	jmp .L587
.L588:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
.L587:
	cmp 0,a1
	bne .L588
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp 0,d0
	beq .L593
	mov 0,a1
	jmp .L591
.L592:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_asl d0, a0, 1, d0
	add_lsr a0, a1, 1, d1
.L591:
	cmp 0,d1
	bne .L592
	mov a1,d0
	retf [],0
.L593:
	mov 0,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L595
.L597:
	add d1,d1
	add a0,a0
.L595:
	cmp d0,d1
	bcc .L602
	add -1,a1
	beq .L603
	cmp 0,d1
	bge .L597
	mov 0,a1
	jmp .L598
.L602:
	mov 0,a1
	jmp .L598
.L603:
	mov 0,a1
	jmp .L598
.L599:
	lsr 1,a0
	lsr 1,d1
.L598:
	cmp 0,a0
	beq .L605
	cmp d1,d0
	bcs .L599
	or_sub a0, a1, d1, d0
	jmp .L599
.L605:
	cmp 0,r0
	bne .L601
	mov a1,d0
.L601:
	retf [],0
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3,a2],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a2
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L609
	mov 1,d2
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L610
.L608:
	extbu d2,d0
.L607:
	ret [d2,d3,a2],24
.L610:
	mov 0,d2
	jmp .L608
.L609:
	mov -1,d0
	jmp .L607
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L614
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L615
.L613:
	extbu r4,d0
.L612:
	ret [d2,d3,a2,a3,exreg1],52
.L615:
	mov 0,r4
	jmp .L613
.L614:
	mov -1,d0
	jmp .L612
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	mov_mov d1, r0, d0, a1
	asr 31,a1
	asr 31,d1
	mul r0,a1
	mul d0,d1
	add a1,d1
	mulu d0,r0,r1,r0
	add_mov r1, d1, r0, d0
	rets
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	mulu d0,d1,r1,r0
	mov_mov r0, d0, r1, d1
	retf [],0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.global __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	cmp 0,d1
	blt .L626
	mov 0,r1
.L619:
	mov 33,r0
	mov 0,a1
	jmp .L620
.L626:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L619
.L622:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_asl d0, a0, 1, d0
	add_asr a0, a1, 1, d1
.L620:
	cmp 0,d1
	beq .L621
	mov -1,a0
	add r0,a0
	mov a0,r0
	btst 255,a0
	bne .L622
.L621:
	cmp 0,r1
	beq .L625
	mov 0,d0
	sub a1,d0
	retf [],0
.L625:
	mov a1,d0
	retf [],0
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L632
	mov 0,d2
.L628:
	cmp 0,d1
	blt .L633
.L629:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L630
	not d0
	inc d0
.L630:
	ret [d2],20
.L632:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L628
.L633:
	not d1
	inc d1
	xor 1,d2
	jmp .L629
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L639
	mov 0,d2
.L635:
	mov_cmp a0, d1, 0, a0
	blt .L640
.L636:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L637
	not d0
	inc d0
.L637:
	ret [d2],20
.L639:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L635
.L640:
	mov 0,d1
	sub a0,d1
	jmp .L636
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r2
	mov 17,a1
	mov 1,a0
	exthu d0,r1
.L642:
	exthu d1,r0
	cmp r1,r0
	bcc .L649
	add -1,a1
	beq .L650
	exth d1,r0
	cmp 0,r0
	blt .L652
	add d1,d1
	add a0,a0
	jmp .L642
.L652:
	mov 0,r1
	jmp .L645
.L649:
	mov 0,r1
	jmp .L645
.L650:
	mov 0,r1
	jmp .L645
.L646:
	asl 16,a0
	lsr 17,a0
	asl 16,d1
	lsr 17,d1
.L645:
	exthu a0,a1
	cmp 0,a1
	beq .L653
	exthu d0,a1
	exthu d1,r0
	cmp r0,a1
	bcs .L646
	or_sub a0, r1, d1, d0
	jmp .L646
.L653:
	cmp 0,r2
	bne .L648
	mov r1,d0
.L648:
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L655
.L657:
	add d1,d1
	add a0,a0
.L655:
	cmp d0,d1
	bcc .L662
	add -1,a1
	beq .L663
	cmp 0,d1
	bge .L657
	mov 0,a1
	jmp .L658
.L662:
	mov 0,a1
	jmp .L658
.L663:
	mov 0,a1
	jmp .L658
.L659:
	lsr 1,a0
	lsr 1,d1
.L658:
	cmp 0,a0
	beq .L665
	cmp d1,d0
	bcs .L659
	or_sub a0, a1, d1, d0
	jmp .L659
.L665:
	cmp 0,r0
	bne .L661
	mov a1,d0
.L661:
	retf [],0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov d0,r0
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L667
	mov 0,d0
	asl r2,r0,d1
.L668:
	mov_mov d0, a0, d1, a1
.L669:
	mov_mov a0, d0, a1, d1
	retf [],0
.L667:
	cmp 0,r2
	beq .L669
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a1,a0,d1
	jmp .L668
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov d1,r1
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L672
	asr 31,d1
	asr r2,r1,d0
.L673:
	mov_mov d0, a0, d1, a1
.L674:
	mov_mov a0, d0, a1, d1
	retf [],0
.L672:
	cmp 0,r2
	beq .L674
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
	jmp .L673
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov_mov d0, a0, d1, a1
	mov 0,d0
	mov_mov d0, d1, a1, d0
	lsr 24,d0
	mov a1,d2
	lsr 8,d2
	mov d1,(4,sp)
	mov d2,a2
	and 65280,a2
	mov a2,(sp)
	mov a1,r0
	asl 8,r0
	mov a0,d2
	lsr 24,d2
	or_mov r0, d2, d1, r5
	mov d2,r4
	and 16711680,r4
	mov a1,a3
	asl 24,a3
	mov a0,d2
	lsr 8,d2
	or_mov a3, d2, d1, r7
	mov d2,r6
	and -16777216,r6
	mov a0,a1
	lsr 24,a1
	mov r0,r3
	or_mov a1, r3, a0, r2
	asl 8,r2
	mov d1,d2
	extbu r3,d3
	mov a0,a1
	lsr 8,a1
	mov a3,r1
	or_mov a1, r1, a0, r0
	asl 24,r0
	mov r1,a1
	and 65280,a1
	mov d1,(8,sp)
	mov r2,(12,sp)
	mov (12,sp),r3
	and 16711680,r3
	mov r0,(12,sp)
	mov d0,r0
	mov (12,sp),r1
	mov (sp),d0
	or r0,d0
	or r4,d0,a2
	or r6,a2,d0
	or d1,d0,a2
	or d3,r1,a3
	or d1,a2,d0
	or a1,a3,d1
	or r5,d0,a0
	or r3,d1,a1
	mov_mov a0, d0, a1, d1
	retf [d2,d3,a2,a3,exreg1],48
	.size	__bswapdi2, .-__bswapdi2
	.global __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
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
	retf [],0
	.size	__bswapsi2, .-__bswapsi2
	.global __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	mov 1,a0
	cmp 65535,d0
	bls .L679
	mov 0,a0
.L679:
	extbu a0
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L680
	mov 0,d0
.L680:
	extbu d0
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L681
	mov 0,d0
.L681:
	extbu d0
	mov_asl 4, a1, 2, d0
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 12,d1
	beq .L682
	mov 0,d0
.L682:
	extbu d0
	mov_asl 2, a1, 1, d0
	sub d0,a1,r0
	add_lsr d0, a0, r0, d1
	mov d1,d0
	and a1,d0
	sub_lsr d1, a1, 1, d0
	add -1,d0
	and a1,d0
	add a0,d0
	retf [],0
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bgt .L685
	cmp a1,d1
	blt .L686
	cmp a0,d0
	bhi .L687
	bcs .L688
	mov 1,d0
	retf [],0
.L685:
	mov 0,d0
	retf [],0
.L686:
	mov 2,d0
	retf [],0
.L687:
	mov 0,d0
	retf [],0
.L688:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	add -20,sp
	mov_mov d0, a0, d1, a1
	mov (32,sp),d0
	mov (36,sp),d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a0, d0, a1, d1
	call +__cmpdi2,[],0
	add -1,d0
	ret [],20
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	mov d0,d1
	exthu d0
	mov 1,a0
	cmp 0,d0
	beq .L691
	mov 0,a0
.L691:
	extbu a0
	asl 4,a0
	lsr a0,d1
	extbu d1,a1
	mov 1,d0
	cmp 0,a1
	beq .L692
	mov 0,d0
.L692:
	extbu d0
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L693
	mov 0,d0
.L693:
	extbu d0
	asl2 d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 3,d1
	beq .L694
	mov 0,d0
.L694:
	extbu d0
	add d0,d0
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
	retf [],0
	.size	__ctzsi2, .-__ctzsi2
	.global __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	mov d1,a1
	mov (12,sp),r2
	mov_mov d0, r0, d1, r1
	mov r2,d0
	and 32,d0
	beq .L696
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L697:
	mov_mov d0, r0, d1, r1
.L698:
	mov_mov r0, d0, r1, d1
	retf [],0
.L696:
	cmp 0,r2
	beq .L698
	mov_lsr 0, a0, r2, d1
	sub r2,a0
	asl a0,a1,a0
	lsr r2,r0
	or r0,a0,d0
	jmp .L697
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
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
	rets
	.size	__muldsi3, .-__muldsi3
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov_mov d0, r4, d1, r5
	mov (56,sp),a2
	mov (60,sp),a3
	mov_mov d0, r6, a2, d2
	mov a2,d1
	call +__muldsi3,[],0
	mov_mov d0, r0, d1, r1
	mul r5,a2,d0,d1
	mul a3,r6
	add r6,d1
	add_mov r1, d1, r0, d0
	ret [d2,d3,a2,a3,exreg1],44
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	movm [d2],(sp)
	mov_mov d0, a0, 0, d0
	sub a0,d0,a0
	subc d1,d0,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
	.size	__negdi2, .-__negdi2
	.global __paritydi2
	.type	__paritydi2, @function
__paritydi2:
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
	retf [],0
	.size	__paritydi2, .-__paritydi2
	.global __paritysi2
	.type	__paritysi2, @function
__paritysi2:
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
	retf [],0
	.size	__paritysi2, .-__paritysi2
	.global __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	movm [d2],(sp)
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
	retf [d2],4
	.size	__popcountdi2, .-__popcountdi2
	.global __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
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
	retf [],0
	.size	__popcountsi2, .-__popcountsi2
	.global __powidf2
	.type	__powidf2, @function
__powidf2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov a2,a3
	lsr 31,a3
	mov 0,r4
	mov 1072693248,r5
	jmp .L710
.L708:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L709
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L710:
	btst 1,a2
	beq .L708
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
	jmp .L708
.L709:
	cmp 0,a3
	beq .L712
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L711:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L712:
	mov_mov r4, a0, r5, a1
	jmp .L711
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, d2
	mov d1,a3
	lsr 31,a3
	mov 1065353216,a2
	jmp .L716
.L714:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L715
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L716:
	btst 1,d2
	beq .L714
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L714
.L715:
	cmp 0,a3
	beq .L718
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
.L717:
	ret [d2,d3,a2,a3],28
.L718:
	mov a2,d0
	jmp .L717
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bhi .L721
	cmp a1,d1
	bcs .L722
	cmp a0,d0
	bhi .L723
	bcs .L724
	mov 1,d0
	retf [],0
.L721:
	mov 0,d0
	retf [],0
.L722:
	mov 2,d0
	retf [],0
.L723:
	mov 0,d0
	retf [],0
.L724:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	add -20,sp
	mov (32,sp),r0
	mov (36,sp),r1
	mov r0,(12,sp)
	mov r1,(16,sp)
	call +__ucmpdi2,[],0
	add -1,d0
	ret [],20
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
