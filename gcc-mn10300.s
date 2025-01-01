	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	mov (12,sp),a1
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
.L5:
	mov d0,a0
	retf [],0
.L2:
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
.L13:
	mov d0,a0
	retf [],0
.L14:
	mov 0,d0
	jmp .L13
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
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
	beq .L21
.L19:
	mov d0,a0
	retf [],0
.L21:
	mov 0,d0
	jmp .L19
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	jmp .L23
.L25:
	add_add -1, a0, 1, d0
	inc d1
.L23:
	cmp 0,a0
	beq .L24
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	beq .L25
.L24:
	cmp 0,a0
	beq .L27
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L27:
	mov 0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	mov (12,sp),a0
	mov 0,a1
	jmp .L29
.L30:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
.L29:
	cmp a0,a1
	bne .L30
	mov d0,a0
	retf [],0
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	extbu d1
	mov (12,sp),a0
	add -1,a0
.L32:
	cmp -1,a0
	beq .L36
	movbu (a0,d0),a1
	mov -1,r0
	add_cmp a0, r0, a1, d1
	beq .L37
	mov r0,a0
	jmp .L32
.L37:
	add a0,d0
	jmp .L33
.L36:
	mov 0,d0
.L33:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	add_mov d0, r0, d0, a1
	jmp .L39
.L40:
	movbu d1,(a1)
	inc a1
.L39:
	cmp r0,a1
	bne .L40
	mov d0,a0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	jmp .L42
.L43:
	add_add 1, d1, 1, d0
.L42:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	bne .L43
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	jmp .L45
.L47:
	inc d0
.L45:
	movbu (d0),a0
	cmp 0,a0
	beq .L46
	cmp a0,d1
	bne .L47
.L46:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L50:
	movbu (d0),a0
	cmp a0,d1
	beq .L49
	inc d0
	movbu (-1,d0),a0
	cmp 0,a0
	bne .L50
	mov 0,d0
.L49:
	mov d0,a0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	jmp .L54
.L56:
	add_add 1, d0, 1, d1
.L54:
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	bne .L55
	cmp 0,a1
	bne .L56
.L55:
	movbu (d0),a0
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	mov d0,d1
	jmp .L58
.L59:
	inc d1
.L58:
	movbu (d1),a0
	cmp 0,a0
	bne .L59
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L65
	add -1,r0
	add d0,r0
.L62:
	movbu (d0),a0
	cmp 0,a0
	beq .L63
	movbu (d1),a0
	cmp 0,a0
	beq .L63
	cmp r0,d0
	beq .L63
	movbu (d0),a1
	cmp a0,a1
	bne .L63
	add_add 1, d0, 1, d1
	jmp .L62
.L63:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L65:
	mov 0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov d0,a0
	mov (12,sp),a1
	add a1,d0
	jmp .L67
.L68:
	movbu (1,a0),a1
	movbu a1,(d1)
	movbu (a0),a1
	movbu a1,(1,d1)
	add_add 2, d1, 2, a0
.L67:
	sub a0,d0,a1
	cmp 1,a1
	bgt .L68
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
	bls .L70
	mov 0,d0
.L70:
	and 1,d0
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov 1,d1
	cmp 127,d0
	bls .L72
	mov 0,d1
.L72:
	mov d1,d0
	and 1,d0
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L75
	cmp 9,d0
	beq .L77
	mov 0,d0
	retf [],0
.L77:
	mov 1,d0
	retf [],0
.L75:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L80
	cmp 127,d0
	beq .L82
	mov 0,d0
	retf [],0
.L82:
	mov 1,d0
	retf [],0
.L80:
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
	beq .L93
	add -9,d0
	cmp 4,d0
	bhi .L94
	mov 1,d0
	retf [],0
.L93:
	mov 1,d0
	retf [],0
.L94:
	mov 0,d0
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
	bls .L99
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L100
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L101
	add -65529,d0
	cmp 2,d0
	bhi .L102
	mov 1,d0
	retf [],0
.L99:
	mov 1,d0
	retf [],0
.L100:
	mov 1,d0
	retf [],0
.L101:
	mov 1,d0
	retf [],0
.L102:
	mov 0,d0
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
	bls .L114
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
	cmp 65534,d0
	beq .L113
	mov 1,d0
	retf [],0
.L114:
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
.L113:
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
	cmp 5,d0
	bhi .L118
	mov 1,d0
	retf [],0
.L117:
	mov 1,d0
	retf [],0
.L118:
	mov 0,d0
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
	bne .L123
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L124
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L127
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L121:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L123:
	mov_mov d2, a0, d3, a1
	jmp .L121
.L124:
	mov_mov a2, a0, a3, a1
	jmp .L121
.L127:
	mov 0,a0
	mov a0,a1
	jmp .L121
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
	bne .L131
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L132
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L135
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
.L129:
	ret [d2,d3],20
.L131:
	mov d2,d0
	jmp .L129
.L132:
	mov d3,d0
	jmp .L129
.L135:
	mov 0,d0
	jmp .L129
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
	bne .L140
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L141
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L138
	cmp 0,d3
	bge .L142
	mov_mov a2, a0, a3, a1
.L137:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L138:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L145
	mov_mov a2, a0, a3, a1
	jmp .L137
.L140:
	mov_mov a2, a0, a3, a1
	jmp .L137
.L141:
	mov_mov d2, a0, d3, a1
	jmp .L137
.L142:
	mov_mov d2, a0, d3, a1
	jmp .L137
.L145:
	mov_mov d2, a0, d3, a1
	jmp .L137
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
	beq .L148
	mov_cmp d2, d0, 0, d2
	bge .L147
	mov d3,d0
.L147:
	ret [d2,d3],20
.L148:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L155
	mov d3,d0
	jmp .L147
.L150:
	mov d3,d0
	jmp .L147
.L151:
	mov d2,d0
	jmp .L147
.L155:
	mov d2,d0
	jmp .L147
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
	bne .L160
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L161
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L158
	cmp 0,d3
	bge .L162
	mov_mov a2, a0, a3, a1
.L157:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L158:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L165
	mov_mov a2, a0, a3, a1
	jmp .L157
.L160:
	mov_mov a2, a0, a3, a1
	jmp .L157
.L161:
	mov_mov d2, a0, d3, a1
	jmp .L157
.L162:
	mov_mov d2, a0, d3, a1
	jmp .L157
.L165:
	mov_mov d2, a0, d3, a1
	jmp .L157
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
	bne .L170
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L171
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L168
	cmp 0,d3
	bge .L172
	mov_mov d2, a0, d3, a1
.L167:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L168:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L175
	mov_mov d2, a0, d3, a1
	jmp .L167
.L170:
	mov_mov a2, a0, a3, a1
	jmp .L167
.L171:
	mov_mov d2, a0, d3, a1
	jmp .L167
.L172:
	mov_mov a2, a0, a3, a1
	jmp .L167
.L175:
	mov_mov a2, a0, a3, a1
	jmp .L167
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
	bne .L180
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L181
	mov d3,d1
	and -2147483648,d1
	mov d2,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L178
	mov_cmp d3, d0, 0, d3
	bge .L182
.L177:
	ret [d2,d3],20
.L178:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L185
	mov d3,d0
	jmp .L177
.L180:
	mov d2,d0
	jmp .L177
.L181:
	mov d3,d0
	jmp .L177
.L182:
	mov d2,d0
	jmp .L177
.L185:
	mov d2,d0
	jmp .L177
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
	bne .L190
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L191
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L188
	cmp 0,d3
	bge .L192
	mov_mov d2, a0, d3, a1
.L187:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L188:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L195
	mov_mov d2, a0, d3, a1
	jmp .L187
.L190:
	mov_mov a2, a0, a3, a1
	jmp .L187
.L191:
	mov_mov d2, a0, d3, a1
	jmp .L187
.L192:
	mov_mov a2, a0, a3, a1
	jmp .L187
.L195:
	mov_mov a2, a0, a3, a1
	jmp .L187
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
	jmp .L197
.L198:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
.L197:
	cmp 0,d0
	bne .L198
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
	beq .L204
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L201
	mov d0,(4,d1)
.L201:
	retf [],0
.L204:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L206
	mov (4,d0),a0
	mov a0,(4,d1)
.L206:
	mov (4,d0),d1
	cmp 0,d1
	beq .L205
	mov (d0),d0
	mov d0,(d1)
.L205:
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
	jmp .L209
.L210:
	inc d2
.L209:
	cmp a2,d2
	beq .L213
	mov_mov d3, d1, a3, d0
	mov r5,a0
	calls (a0)
	add_cmp r4, d3, 0, d0
	bne .L210
	mul d2,r4,d1,d0
	add r6,d0
	jmp .L211
.L213:
	mov 1,d0
	add a2,d0
	mov d0,(r7)
	mul r4,a2,a0,d0
	mov r4,(12,sp)
	mov_add a3, d1, r6, d0
	call +memcpy,[],0
	mov a0,d0
.L211:
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
	jmp .L215
.L216:
	inc d2
.L215:
	cmp a3,d2
	beq .L219
	mov_mov d3, d1, a2, d0
	mov r6,a0
	calls (a0)
	add_cmp r4, d3, 0, d0
	bne .L216
	mul d2,r4,d1,d0
	add r5,d0
	jmp .L217
.L219:
	mov 0,d0
.L217:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L222
.L221:
	retf [],0
.L222:
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
.L226:
	inc d2
.L227:
	mov 0,d0
	jmp .L228
.L231:
	mov 0,a0
	jmp .L226
.L232:
	mov 0,a0
	jmp .L227
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
	ret [d2],16
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2],(sp)
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
	mov 1,a0
.L237:
	inc d2
.L238:
	mov 0,d0
	jmp .L239
.L242:
	mov 0,a0
	jmp .L237
.L243:
	mov 0,a0
	jmp .L238
.L240:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L239:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L240
	cmp 0,a0
	bne .L241
	not d0
	inc d0
.L241:
	ret [d2],16
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,d2
	jmp .L246
.L247:
	inc d2
.L246:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L247
	movbu (d2),d0
	cmp 43,d0
	beq .L253
	cmp 45,d0
	bne .L254
	mov 1,r0
.L248:
	inc d2
.L249:
	mov 0,d0
	mov d0,d1
	mov 10,a1
	jmp .L250
.L253:
	mov 0,r0
	jmp .L248
.L254:
	mov 0,r0
	jmp .L249
.L251:
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
.L250:
	movbu (d2),a0
	add -48,a0
	cmp 9,a0
	bls .L251
	cmp 0,r0
	bne .L255
	mov 0,a2
	mov a2,a3
	sub d0,a2,a0
	subc d1,a2,a1
.L252:
	mov_mov a0, d0, a1, d1
	ret [d2,a2,a3,exreg1],40
.L255:
	mov_mov d0, a0, d1, a1
	jmp .L252
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
	jmp .L257
.L264:
	lsr 1,d3
.L257:
	cmp 0,d3
	beq .L263
	mov d3,d2
	lsr 1,d2
	mul a3,d2
	add a2,d2
	mov_mov d2, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L264
	ble .L262
	add a3,d2,a2
	mov d3,d0
	add_lsr -1, d3, 1, d0
	sub d0,d3
	jmp .L257
.L263:
	mov 0,d0
.L260:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
.L262:
	mov d2,d0
	jmp .L260
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
	jmp .L266
.L268:
	asr 1,d3
.L266:
	cmp 0,d3
	beq .L271
	mov d3,d2
	asr 1,d2
	mul a3,d2
	add a2,d2
	mov r5,(12,sp)
	mov_mov d2, d1, r4, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	beq .L270
	ble .L268
	add a3,d2,a2
	add -1,d3
	jmp .L268
.L271:
	mov 0,d0
.L267:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L270:
	mov d2,d0
	jmp .L267
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
	blt .L276
.L274:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L276:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L274
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
	blt .L280
.L279:
	retf [],0
.L280:
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
	blt .L285
.L283:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L285:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L283
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
	jmp .L288
.L290:
	add 4,d0
.L288:
	mov (d0),a0
	cmp 0,a0
	beq .L289
	cmp a0,d1
	bne .L290
.L289:
	mov (d0),d1
	cmp 0,d1
	beq .L293
.L291:
	mov d0,a0
	retf [],0
.L293:
	mov 0,d0
	jmp .L291
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	jmp .L295
.L297:
	add_add 4, d0, 4, d1
.L295:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L296
	cmp 0,a1
	beq .L296
	mov (d1),a0
	cmp 0,a0
	bne .L297
.L296:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L300
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L299
	mov 0,d0
.L299:
	extbu d0
	retf [],0
.L300:
	mov -1,d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov d0,r0
	setlb
.L302:
	mov (d1+),a1
	mov a1,(r0+)
	cmp 0,a1
	Lne # loop back to: .L302
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov d0,d1
	jmp .L305
.L306:
	add 4,d1
.L305:
	mov (d1),a0
	cmp 0,a0
	bne .L306
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
.L308:
	cmp 0,a0
	beq .L309
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L309
	cmp 0,r0
	beq .L309
	mov (d1),a1
	cmp 0,a1
	beq .L309
	add_add -1, a0, 4, d0
	add 4,d1
	jmp .L308
.L309:
	cmp 0,a0
	beq .L313
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L314
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L312
	mov 0,d0
.L312:
	extbu d0
	retf [],0
.L313:
	mov 0,d0
	retf [],0
.L314:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	jmp .L316
.L318:
	add_add -1, a0, 4, d0
.L316:
	cmp 0,a0
	beq .L317
	mov (d0),a1
	cmp a1,d1
	bne .L318
.L317:
	cmp 0,a0
	beq .L321
.L319:
	mov d0,a0
	retf [],0
.L321:
	mov 0,d0
	jmp .L319
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	jmp .L323
.L325:
	add_add -1, a0, 4, d0
	add 4,d1
.L323:
	cmp 0,a0
	beq .L324
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	beq .L325
.L324:
	cmp 0,a0
	beq .L328
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L329
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L327
	mov 0,d0
.L327:
	extbu d0
	retf [],0
.L328:
	mov 0,d0
	retf [],0
.L329:
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov (12,sp),r0
	mov 0,a1
	jmp .L331
.L332:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L331:
	add -1,r0
	cmp -1,r0
	bne .L332
	mov d0,a0
	retf [],0
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a1
	cmp d1,d0
	beq .L334
	sub d1,d0,r0
	mov a1,a0
	asl2 a0
	cmp a0,r0
	bcc .L339
	add -1,a1
	asl2 a1
	jmp .L336
.L337:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
.L336:
	cmp -4,a1
	bne .L337
.L334:
	mov d0,a0
	retf [],0
.L338:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	inc4 r0
.L335:
	add -1,a1
	cmp -1,a1
	bne .L338
	jmp .L334
.L339:
	mov 0,r0
	jmp .L335
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a1
	mov d0,r0
	jmp .L341
.L342:
	mov d1,(r0+)
.L341:
	add -1,a1
	cmp -1,a1
	bne .L342
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L344
	add_add -1, d0, -1, d1
	jmp .L345
.L346:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
.L345:
	cmp 0,a0
	bne .L346
	retf [],0
.L344:
	beq .L351
	mov 0,a1
	jmp .L348
.L351:
	retf [],0
.L349:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
.L348:
	cmp a0,a1
	bne .L349
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L353
	mov 0,r2
	asl d0,r0,r3
.L354:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L355
	not d0
	add_mov 1, d0, 0, a0
	mov a0,a1
	lsr d0,r1,a0
.L356:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L353:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
	jmp .L354
.L355:
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
	jmp .L356
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L358
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
.L359:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L360
	not d0
	add_mov 1, d0, 0, a0
	asl d0,r0,a1
.L361:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L358:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
	jmp .L359
.L360:
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
	jmp .L361
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
.L374:
	cmp 32,d1
	beq .L378
	lsr d1,d0,a0
	btst 1,a0
	bne .L379
	inc d1
	jmp .L374
.L379:
	mov 1,d0
	add d1,d0
	retf [],0
.L378:
	mov 0,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp 0,d0
	beq .L384
	mov 1,d1
	jmp .L382
.L383:
	add_asr 1, d1, 1, d0
.L382:
	btst 1,d0
	beq .L383
	mov d1,d0
	retf [],0
.L384:
	mov 0,d0
	retf [],0
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movm [d2],(sp)
	add -12,sp
	mov d0,d2
	mov -8388609,d1
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L388
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L391
	mov 1,d0
	jmp .L386
.L388:
	mov 1,d0
.L386:
	ret [d2],16
.L391:
	mov 0,d0
	jmp .L386
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movm [d2,d3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,d0
	mov d0,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L395
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L398
	mov 1,d0
	jmp .L393
.L395:
	mov 1,d0
.L393:
	ret [d2,d3],28
.L398:
	mov 0,d0
	jmp .L393
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movm [d2,d3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,d0
	mov d0,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L402
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L405
	mov 1,d0
	jmp .L400
.L402:
	mov 1,d0
.L400:
	ret [d2,d3],28
.L405:
	mov 0,d0
	jmp .L400
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
	bne .L408
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov_mov d0, d1, a2, d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L408
	cmp 0,d2
	blt .L415
	mov 1073741824,d3
	jmp .L412
.L415:
	mov 1056964608,d3
	jmp .L412
.L411:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L408
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L412:
	btst 1,d2
	beq .L411
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L411
.L408:
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
	bne .L417
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L417
	cmp 0,r4
	blt .L424
	mov 0,d2
	mov 1073741824,d3
	jmp .L421
.L424:
	mov 0,d2
	mov 1071644672,d3
	jmp .L421
.L420:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L417
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L421:
	btst 1,r4
	beq .L420
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L420
.L417:
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
	bne .L426
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L426
	cmp 0,r4
	blt .L433
	mov 0,d2
	mov 1073741824,d3
	jmp .L430
.L433:
	mov 0,d2
	mov 1071644672,d3
	jmp .L430
.L429:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L426
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L430:
	btst 1,r4
	beq .L429
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L429
.L426:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	add_mov d0, r2, d0, a1
	jmp .L435
.L436:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
.L435:
	cmp r2,a1
	bne .L436
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
	jmp .L438
.L440:
	add_add 1, d2, 1, d0
	add -1,d3
.L438:
	cmp 0,d3
	beq .L439
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	bne .L440
.L439:
	cmp 0,d3
	bne .L441
	mov 0,d1
	movbu d1,(d0)
.L441:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
.L443:
	cmp d1,d0
	beq .L444
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L445
.L444:
	retf [],0
.L445:
	inc d0
	jmp .L443
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
.L447:
	movbu (d0),a0
	cmp 0,a0
	beq .L453
	mov d1,a1
.L450:
	movbu (a1),r0
	cmp 0,r0
	beq .L454
	inc a1
	movbu (-1,a1),r1
	movbu (d0),r0
	cmp r0,r1
	bne .L450
.L448:
	mov d0,a0
	retf [],0
.L454:
	inc d0
	jmp .L447
.L453:
	mov 0,d0
	jmp .L448
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a0, 0, d0
	jmp .L457
.L456:
	inc a0
	movbu (-1,a0),a1
	cmp 0,a1
	beq .L460
.L457:
	movbu (a0),a1
	cmp a1,d1
	bne .L456
	mov a0,d0
	jmp .L456
.L460:
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
	beq .L465
	movbu (d3),a3
.L463:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L467
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L466
	inc d2
	jmp .L463
.L467:
	mov 0,d0
	jmp .L462
.L465:
	mov d2,d0
.L462:
	mov d0,a0
	ret [d2,d3,a2,a3],32
.L466:
	mov d2,d0
	jmp .L462
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
	blt .L481
.L469:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L479
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L471
	mov_mov d2, a0, d3, a1
.L472:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L481:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L469
.L471:
	mov d2,a0
	mov -2147483648,a1
	add d3,a1
	jmp .L472
.L479:
	mov_mov d2, a0, d3, a1
	jmp .L472
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
	beq .L483
	mov 1,a1
	cmp a0,d1
	bcs .L484
	mov 0,a1
.L484:
	extbu a1
	cmp 0,a1
	bne .L489
	mov_mov d0, d2, 1, r4
	add_mov a2, r4, -1, a3
	add a0,a3
	jmp .L485
.L486:
	inc d2
.L485:
	cmp d3,d2
	bhi .L491
	movbu (d2),d1
	movbu (a2),d0
	cmp d0,d1
	bne .L486
	mov a3,(12,sp)
	mov_mov r4, d1, 1, d0
	add d2,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L486
	mov d2,d0
	jmp .L483
.L491:
	mov 0,d0
.L483:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L489:
	mov 0,d0
	jmp .L483
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
	blt .L513
	mov 0,r6
.L494:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L514
	mov 0,a2
	mov a2,a3
	mov 1072693248,r4
	mov 1071644672,r5
	jmp .L496
.L513:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r6
	jmp .L494
.L498:
	inc a2
	mov a3,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L496:
	mov a3,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L498
.L499:
	mov (64,sp),d0
	mov a2,(d0)
	cmp 0,r6
	beq .L503
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L503:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L514:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L512
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L507
	mov 0,a2
	jmp .L499
.L502:
	add -1,a2
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
.L501:
	mov r4,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L502
	jmp .L499
.L507:
	mov 0,a2
	mov a2,r4
	mov 1071644672,a3
	jmp .L501
.L512:
	mov 0,a2
	jmp .L499
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov (44,sp),a0
	mov (48,sp),a1
	mov 0,a2
	mov a2,a3
	jmp .L516
.L517:
	mov a0,r4
	lsr 31,r4
	mov a1,r1
	add r1,r1
	or_mov r4, r1, a0, r0
	add r0,r0
	mov_mov r0, a0, r1, a1
	mov d1,r4
	asl 31,r4
	mov d0,r2
	lsr 1,r2
	or_mov r4, r2, d1, r3
	mov_lsr r2, d0, 1, r3
	mov r3,d1
.L516:
	or d1,d0,r4
	beq .L520
	mov d0,d2
	and 1,d2
	clr d3
	cmp d3,d2
	beq .L517
	add a0,a2
	addc a1,a3
	jmp .L517
.L520:
	mov_mov a2, d0, a3, d1
	retf [d2,d3,a2,a3,exreg1],32
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L522
.L524:
	add d1,d1
	add a0,a0
.L522:
	cmp d0,d1
	bcc .L529
	add -1,a1
	beq .L530
	cmp 0,d1
	bge .L524
	mov 0,a1
	jmp .L525
.L529:
	mov 0,a1
	jmp .L525
.L530:
	mov 0,a1
	jmp .L525
.L526:
	lsr 1,a0
	lsr 1,d1
.L525:
	cmp 0,a0
	beq .L532
	cmp d1,d0
	bcs .L526
	or_sub a0, a1, d1, d0
	jmp .L526
.L532:
	cmp 0,r0
	bne .L528
	mov a1,d0
.L528:
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	btst 255,d0
	beq .L535
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L535:
	mov 7,d0
	retf [],0
	.size	__clrsbqi2, .-__clrsbqi2
	.global __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	mov_mov d0, a0, d1, a1
	cmp 0,d1
	blt .L544
.L537:
	or a1,a0,d0
	beq .L543
	cmp 0,a1
	beq .L541
	mov 0,d0
	bsch a1, d0
	xor 31,d0
.L542:
	add -1,d0
	retf [],0
.L544:
	not d0
	not d1
	mov_mov d0, a0, d1, a1
	jmp .L537
.L541:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L542
.L543:
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_mov d0, a0, 0, d0
	jmp .L546
.L547:
	lsr 1,a0
	add d1,d1
.L546:
	cmp 0,a0
	beq .L549
	btst 1,a0
	beq .L547
	add d1,d0
	jmp .L547
.L549:
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
	bcc .L551
.L553:
	mov 0,a0
	mov a0,r3
	jmp .L552
.L551:
	add r2,d1,a0
	cmp d0,a0
	bcs .L553
	jmp .L554
.L555:
	mov (a0,d1),r0
	add a0,d1,d2
	mov (4,d2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	inc r3
	add 8,a0
.L552:
	cmp d3,r3
	bne .L555
	jmp .L556
.L557:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
.L556:
	cmp a1,r2
	bhi .L557
.L550:
	retf [d2,d3],8
.L559:
	movbu (r2,d1),a0
	movbu a0,(r2,d0)
.L554:
	add -1,r2
	cmp -1,r2
	bne .L559
	jmp .L550
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),a1
	mov a1,r1
	cmp_lsr d1, d0, 1, r1
	bcc .L561
.L563:
	mov_asl 0, a0, 1, r1
	jmp .L562
.L561:
	add a1,d1,a0
	cmp d0,a0
	bcs .L563
	jmp .L564
.L565:
	movhu (a0,d1),r0
	movhu r0,(a0,d0)
	add 2,a0
.L562:
	cmp r1,a0
	bne .L565
	btst 1,a1
	beq .L560
	add -1,a1
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
	retf [],0
.L567:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
.L564:
	add -1,a1
	cmp -1,a1
	bne .L567
.L560:
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
	bcc .L569
.L571:
	mov_asl 0, a1, 2, r2
	jmp .L570
.L569:
	add r0,d1,a1
	cmp d0,a1
	bcs .L571
	jmp .L572
.L573:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L570:
	cmp r2,a1
	bne .L573
	jmp .L574
.L575:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
.L574:
	cmp a0,r0
	bhi .L575
	retf [],0
.L577:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
.L572:
	add -1,r0
	cmp -1,r0
	bne .L577
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
.L585:
	cmp 16,d1
	beq .L586
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L586
	inc d1
	jmp .L585
.L586:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L589:
	cmp 16,d1
	beq .L590
	asr d1,d0,a0
	btst 1,a0
	bne .L590
	inc d1
	jmp .L589
.L590:
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
	bge .L598
	mov d2,d0
	call +__fixsfsi,[],0
.L595:
	ret [d2],16
.L598:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L595
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,r0
	mov r0,d1
	exthu d0
	jmp .L600
.L601:
	inc d1
.L600:
	cmp 16,d1
	beq .L603
	asr d1,d0,a0
	btst 1,a0
	beq .L601
	inc r0
	jmp .L601
.L603:
	mov r0,d0
	and 1,d0
	retf [],0
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov_mov d0, a1, 0, d0
	mov d0,d1
	exthu a1
	jmp .L605
.L606:
	inc d1
.L605:
	cmp 16,d1
	beq .L608
	asr d1,a1,a0
	btst 1,a0
	beq .L606
	inc d0
	jmp .L606
.L608:
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_mov d0, a0, 0, d0
	jmp .L610
.L611:
	lsr 1,a0
	add d1,d1
.L610:
	cmp 0,a0
	beq .L613
	btst 1,a0
	beq .L611
	add d1,d0
	jmp .L611
.L613:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp 0,d0
	beq .L619
	mov 0,a0
	jmp .L616
.L617:
	add d0,d0
	lsr 1,d1
.L616:
	cmp 0,d1
	beq .L620
	btst 1,d1
	beq .L617
	add d0,a0
	jmp .L617
.L620:
	mov a0,d0
	retf [],0
.L619:
	mov 0,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L622
.L624:
	add d1,d1
	add a0,a0
.L622:
	cmp d0,d1
	bcc .L629
	add -1,a1
	beq .L630
	cmp 0,d1
	bge .L624
	mov 0,a1
	jmp .L625
.L629:
	mov 0,a1
	jmp .L625
.L630:
	mov 0,a1
	jmp .L625
.L626:
	lsr 1,a0
	lsr 1,d1
.L625:
	cmp 0,a0
	beq .L632
	cmp d1,d0
	bcs .L626
	or_sub a0, a1, d1, d0
	jmp .L626
.L632:
	cmp 0,r0
	bne .L628
	mov a1,d0
.L628:
	retf [],0
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L635
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	bgt .L636
	mov 0,d0
.L634:
	ret [d2,d3],20
.L635:
	mov -1,d0
	jmp .L634
.L636:
	mov 1,d0
	jmp .L634
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (48,sp),a2
	mov (52,sp),a3
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L639
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	bgt .L640
	mov 0,d0
.L638:
	ret [d2,d3,a2,a3],36
.L639:
	mov -1,d0
	jmp .L638
.L640:
	mov 1,d0
	jmp .L638
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
	blt .L652
	mov 0,r1
.L644:
	mov 33,a1
	mov 0,r0
	jmp .L645
.L652:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L644
.L646:
	add d0,d0
	asr 1,d1
.L645:
	cmp 0,d1
	beq .L647
	mov -1,a0
	add a1,a0
	mov a0,a1
	btst 255,a0
	beq .L647
	btst 1,d1
	beq .L646
	add d0,r0
	jmp .L646
.L647:
	cmp 0,r1
	beq .L651
	mov 0,d0
	sub r0,d0
	retf [],0
.L651:
	mov r0,d0
	retf [],0
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L659
	mov 0,d2
.L654:
	cmp 0,d1
	blt .L660
.L655:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L657
	not d0
	inc d0
.L657:
	ret [d2],20
.L659:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L654
.L660:
	not d1
	inc d1
	mov 1,a0
	cmp 0,d2
	beq .L656
	mov 0,a0
.L656:
	extbu a0,d2
	jmp .L655
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L666
	mov 0,d2
.L662:
	cmp 0,d1
	blt .L667
.L663:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L664
	not d0
	inc d0
.L664:
	ret [d2],20
.L666:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L662
.L667:
	not d1
	inc d1
	jmp .L663
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r2
	mov 17,a1
	mov 1,a0
	exthu d0,r1
.L669:
	exthu d1,r0
	cmp r1,r0
	bcc .L676
	add -1,a1
	beq .L677
	exth d1,r0
	cmp 0,r0
	blt .L679
	add d1,d1
	add a0,a0
	jmp .L669
.L679:
	mov 0,r1
	jmp .L672
.L676:
	mov 0,r1
	jmp .L672
.L677:
	mov 0,r1
	jmp .L672
.L673:
	asl 16,a0
	lsr 17,a0
	asl 16,d1
	lsr 17,d1
.L672:
	exthu a0,a1
	cmp 0,a1
	beq .L680
	exthu d0,a1
	exthu d1,r0
	cmp r0,a1
	bcs .L673
	or_sub a0, r1, d1, d0
	jmp .L673
.L680:
	cmp 0,r2
	bne .L675
	mov r1,d0
.L675:
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L682
.L684:
	add d1,d1
	add a0,a0
.L682:
	cmp d0,d1
	bcc .L689
	add -1,a1
	beq .L690
	cmp 0,d1
	bge .L684
	mov 0,a1
	jmp .L685
.L689:
	mov 0,a1
	jmp .L685
.L690:
	mov 0,a1
	jmp .L685
.L686:
	lsr 1,a0
	lsr 1,d1
.L685:
	cmp 0,a0
	beq .L692
	cmp d1,d0
	bcs .L686
	or_sub a0, a1, d1, d0
	jmp .L686
.L692:
	cmp 0,r0
	bne .L688
	mov a1,d0
.L688:
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
	beq .L694
	mov 0,d0
	asl r2,r0,d1
.L695:
	mov_mov d0, a0, d1, a1
.L696:
	mov_mov a0, d0, a1, d1
	retf [],0
.L694:
	cmp 0,r2
	beq .L696
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a1,a0,d1
	jmp .L695
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov d1,r1
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L699
	asr 31,d1
	asr r2,r1,d0
.L700:
	mov_mov d0, a0, d1, a1
.L701:
	mov_mov a0, d0, a1, d1
	retf [],0
.L699:
	cmp 0,r2
	beq .L701
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
	jmp .L700
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
	cmp 65535,d0
	bhi .L711
	mov 16,a0
.L706:
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	bne .L712
	mov 8,a1
.L707:
	mov 8,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	btst 240,d1
	bne .L713
	mov 4,a1
.L708:
	mov 4,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	btst 12,d1
	bne .L714
	mov 2,a1
.L709:
	mov 2,d0
	sub a1,d0
	add_lsr a1, a0, d0, d1
	mov d1,a1
	and 2,a1
	mov 1,d0
	beq .L710
	mov 0,d0
.L710:
	extbu d0
	mov 2,a1
	sub d1,a1,d1
	mul d1,d0
	add a0,d0
	rets
.L711:
	mov 0,a0
	jmp .L706
.L712:
	mov 0,a1
	jmp .L707
.L713:
	mov 0,a1
	jmp .L708
.L714:
	mov 0,a1
	jmp .L709
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bgt .L717
	cmp a1,d1
	blt .L718
	cmp a0,d0
	bhi .L719
	bcs .L720
	mov 1,d0
	retf [],0
.L717:
	mov 0,d0
	retf [],0
.L718:
	mov 2,d0
	retf [],0
.L719:
	mov 0,d0
	retf [],0
.L720:
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
	exthu d0,d1
	cmp 0,d1
	bne .L727
	mov 16,a0
.L723:
	lsr a0,d0,d1
	extbu d1,d0
	cmp 0,d0
	bne .L728
	mov 8,d0
.L724:
	add_lsr d0, a0, d0, d1
	btst 15,d1
	bne .L729
	mov 4,d0
.L725:
	add_lsr d0, a0, d0, d1
	btst 3,d1
	bne .L730
	mov 2,d0
.L726:
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
.L727:
	mov 0,a0
	jmp .L723
.L728:
	mov 0,d0
	jmp .L724
.L729:
	mov 0,d0
	jmp .L725
.L730:
	mov 0,d0
	jmp .L726
	.size	__ctzsi2, .-__ctzsi2
	.global __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	mov d1,a1
	mov (12,sp),r2
	mov_mov d0, r0, d1, r1
	mov r2,d0
	and 32,d0
	beq .L732
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L733:
	mov_mov d0, r0, d1, r1
.L734:
	mov_mov r0, d0, r1, d1
	retf [],0
.L732:
	cmp 0,r2
	beq .L734
	mov_lsr 0, a0, r2, d1
	sub r2,a0
	asl a0,a1,a0
	lsr r2,r0
	or r0,a0,d0
	jmp .L733
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
	jmp .L746
.L744:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L745
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L746:
	btst 1,a2
	beq .L744
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
	jmp .L744
.L745:
	cmp 0,a3
	beq .L748
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L747:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L748:
	mov_mov r4, a0, r5, a1
	jmp .L747
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
	jmp .L752
.L750:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L751
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L752:
	btst 1,d2
	beq .L750
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L750
.L751:
	cmp 0,a3
	beq .L754
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
.L753:
	ret [d2,d3,a2,a3],28
.L754:
	mov a2,d0
	jmp .L753
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bhi .L757
	cmp a1,d1
	bcs .L758
	cmp a0,d0
	bhi .L759
	bcs .L760
	mov 1,d0
	retf [],0
.L757:
	mov 0,d0
	retf [],0
.L758:
	mov 2,d0
	retf [],0
.L759:
	mov 0,d0
	retf [],0
.L760:
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
