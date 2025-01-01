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
	beq .L76
	mov 1,d1
	cmp 9,d0
	beq .L75
	mov 0,d1
.L75:
	extbu d1,d0
	retf [],0
.L76:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L80
	mov 1,d1
	cmp 127,d0
	beq .L79
	mov 0,d1
.L79:
	extbu d1,d0
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
	bls .L82
	mov 0,d0
.L82:
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
	bls .L84
	mov 0,d0
.L84:
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
	bls .L86
	mov 0,d0
.L86:
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
	bls .L88
	mov 0,d0
.L88:
	and 1,d0
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L92
	add -9,d0
	mov 1,d1
	cmp 4,d0
	bls .L91
	mov 0,d1
.L91:
	extbu d1,d0
	retf [],0
.L92:
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
	bls .L94
	mov 0,d0
.L94:
	and 1,d0
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L98
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L99
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L100
	add -65529,d0
	mov 1,d1
	cmp 2,d0
	bls .L97
	mov 0,d1
.L97:
	extbu d1,d0
	retf [],0
.L98:
	mov 1,d0
	retf [],0
.L99:
	mov 1,d0
	retf [],0
.L100:
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
	bls .L102
	mov 0,d0
.L102:
	and 1,d0
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L111
	cmp 8231,d0
	bls .L107
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L108
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L109
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L110
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L111:
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L105
	mov 0,d1
.L105:
	extbu d1,d0
	retf [],0
.L107:
	mov 1,d0
	retf [],0
.L108:
	mov 1,d0
	retf [],0
.L109:
	mov 1,d0
	retf [],0
.L110:
	mov 0,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L115
	or 32,d0
	add -97,d0
	mov 1,d1
	cmp 5,d0
	bls .L114
	mov 0,d1
.L114:
	extbu d1,d0
	retf [],0
.L115:
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
	bne .L120
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L121
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L124
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L118:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L120:
	mov_mov d2, a0, d3, a1
	jmp .L118
.L121:
	mov_mov a2, a0, a3, a1
	jmp .L118
.L124:
	mov 0,a0
	mov a0,a1
	jmp .L118
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
	bne .L128
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L129
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L132
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
.L126:
	ret [d2,d3],20
.L128:
	mov d2,d0
	jmp .L126
.L129:
	mov d3,d0
	jmp .L126
.L132:
	mov 0,d0
	jmp .L126
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
	bne .L139
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L140
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L135
	cmp 0,d3
	bge .L141
	mov_mov a2, a0, a3, a1
	jmp .L134
.L135:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L137
	mov_mov a2, d0, a3, d1
.L138:
	mov_mov d0, a0, d1, a1
.L134:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L137:
	mov_mov d2, d0, d3, d1
	jmp .L138
.L139:
	mov_mov a2, a0, a3, a1
	jmp .L134
.L140:
	mov_mov d2, a0, d3, a1
	jmp .L134
.L141:
	mov_mov d2, a0, d3, a1
	jmp .L134
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
	bne .L148
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L149
	mov d2,d1
	and -2147483648,d1
	mov d3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L144
	mov_cmp d2, d0, 0, d2
	bge .L143
	mov d3,d0
	jmp .L143
.L144:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L147
	mov d3,d2
.L147:
	mov d2,d0
.L143:
	ret [d2,d3],20
.L148:
	mov d3,d0
	jmp .L143
.L149:
	mov d2,d0
	jmp .L143
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
	bne .L157
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L158
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L153
	cmp 0,d3
	bge .L159
	mov_mov a2, a0, a3, a1
	jmp .L152
.L153:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L155
	mov_mov a2, d0, a3, d1
.L156:
	mov_mov d0, a0, d1, a1
.L152:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L155:
	mov_mov d2, d0, d3, d1
	jmp .L156
.L157:
	mov_mov a2, a0, a3, a1
	jmp .L152
.L158:
	mov_mov d2, a0, d3, a1
	jmp .L152
.L159:
	mov_mov d2, a0, d3, a1
	jmp .L152
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
	bne .L166
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L167
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L162
	cmp 0,d3
	bge .L168
	mov_mov d2, a0, d3, a1
	jmp .L161
.L162:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L164
	mov_mov d2, d0, d3, d1
.L165:
	mov_mov d0, a0, d1, a1
.L161:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L164:
	mov_mov a2, d0, a3, d1
	jmp .L165
.L166:
	mov_mov a2, a0, a3, a1
	jmp .L161
.L167:
	mov_mov d2, a0, d3, a1
	jmp .L161
.L168:
	mov_mov a2, a0, a3, a1
	jmp .L161
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
	bne .L175
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L176
	mov d3,d1
	and -2147483648,d1
	mov d2,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L171
	mov_cmp d3, d0, 0, d3
	blt .L170
	mov d2,d0
	jmp .L170
.L171:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L174
	mov d3,d2
.L174:
	mov d2,d0
.L170:
	ret [d2,d3],20
.L175:
	mov d2,d0
	jmp .L170
.L176:
	mov d3,d0
	jmp .L170
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
	bne .L184
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L185
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L180
	cmp 0,d3
	bge .L186
	mov_mov d2, a0, d3, a1
	jmp .L179
.L180:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L182
	mov_mov d2, d0, d3, d1
.L183:
	mov_mov d0, a0, d1, a1
.L179:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L182:
	mov_mov a2, d0, a3, d1
	jmp .L183
.L184:
	mov_mov a2, a0, a3, a1
	jmp .L179
.L185:
	mov_mov d2, a0, d3, a1
	jmp .L179
.L186:
	mov_mov a2, a0, a3, a1
	jmp .L179
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
	jmp .L188
.L189:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
.L188:
	cmp 0,d0
	bne .L189
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
	beq .L195
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L192
	mov d0,(4,d1)
.L192:
	retf [],0
.L195:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L197
	mov (4,d0),a0
	mov a0,(4,d1)
.L197:
	mov (4,d0),d1
	cmp 0,d1
	beq .L196
	mov (d0),d0
	mov d0,(d1)
.L196:
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
	jmp .L200
.L201:
	inc d2
.L200:
	cmp a2,d2
	beq .L204
	mov_mov d3, d1, a3, d0
	mov r5,a0
	calls (a0)
	add_cmp r4, d3, 0, d0
	bne .L201
	mul d2,r4,d1,d0
	add r6,d0
	jmp .L202
.L204:
	mov 1,d0
	add a2,d0
	mov d0,(r7)
	mul r4,a2,a0,d0
	mov r4,(12,sp)
	mov_add a3, d1, r6, d0
	call +memcpy,[],0
	mov a0,d0
.L202:
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
	jmp .L206
.L207:
	inc d2
.L206:
	cmp a3,d2
	beq .L210
	mov_mov d3, d1, a2, d0
	mov r6,a0
	calls (a0)
	add_cmp r4, d3, 0, d0
	bne .L207
	mul d2,r4,d1,d0
	add r5,d0
	jmp .L208
.L210:
	mov 0,d0
.L208:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L213
.L212:
	retf [],0
.L213:
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
	jmp .L215
.L216:
	inc d2
.L215:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L216
	movbu (d2),d0
	cmp 43,d0
	beq .L222
	cmp 45,d0
	bne .L223
	mov 1,a0
.L217:
	inc d2
.L218:
	mov 0,d0
	jmp .L219
.L222:
	mov 0,a0
	jmp .L217
.L223:
	mov 0,a0
	jmp .L218
.L220:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L219:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L220
	cmp 0,a0
	bne .L221
	not d0
	inc d0
.L221:
	ret [d2],16
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2],(sp)
	add -12,sp
	mov d0,d2
	jmp .L226
.L227:
	inc d2
.L226:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L227
	movbu (d2),d0
	cmp 43,d0
	beq .L233
	cmp 45,d0
	bne .L234
	mov 1,a0
.L228:
	inc d2
.L229:
	mov 0,d0
	jmp .L230
.L233:
	mov 0,a0
	jmp .L228
.L234:
	mov 0,a0
	jmp .L229
.L231:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
.L230:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bls .L231
	cmp 0,a0
	bne .L232
	not d0
	inc d0
.L232:
	ret [d2],16
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,d2
	jmp .L237
.L238:
	inc d2
.L237:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L238
	movbu (d2),d0
	cmp 43,d0
	beq .L244
	cmp 45,d0
	bne .L245
	mov 1,r0
.L239:
	inc d2
.L240:
	mov 0,d0
	mov d0,d1
	mov 10,a1
	jmp .L241
.L244:
	mov 0,r0
	jmp .L239
.L245:
	mov 0,r0
	jmp .L240
.L242:
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
.L241:
	movbu (d2),a0
	add -48,a0
	cmp 9,a0
	bls .L242
	cmp 0,r0
	bne .L246
	mov 0,a2
	mov a2,a3
	sub d0,a2,a0
	subc d1,a2,a1
.L243:
	mov_mov a0, d0, a1, d1
	ret [d2,a2,a3,exreg1],40
.L246:
	mov_mov d0, a0, d1, a1
	jmp .L243
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
	jmp .L248
.L255:
	lsr 1,d3
.L248:
	cmp 0,d3
	beq .L254
	mov d3,d2
	lsr 1,d2
	mul a3,d2
	add a2,d2
	mov_mov d2, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L255
	ble .L253
	add a3,d2,a2
	mov d3,d0
	add_lsr -1, d3, 1, d0
	sub d0,d3
	jmp .L248
.L254:
	mov 0,d0
.L251:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
.L253:
	mov d2,d0
	jmp .L251
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
	jmp .L257
.L259:
	asr 1,d3
.L257:
	cmp 0,d3
	beq .L262
	mov d3,d2
	asr 1,d2
	mul a3,d2
	add a2,d2
	mov r5,(12,sp)
	mov_mov d2, d1, r4, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	beq .L261
	ble .L259
	add a3,d2,a2
	add -1,d3
	jmp .L259
.L262:
	mov 0,d0
.L258:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L261:
	mov d2,d0
	jmp .L258
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
	blt .L267
.L265:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L267:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L265
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
	blt .L271
.L270:
	retf [],0
.L271:
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
	blt .L276
.L274:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L276:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L274
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
	jmp .L279
.L281:
	add 4,d0
.L279:
	mov (d0),a0
	cmp 0,a0
	beq .L280
	cmp a0,d1
	bne .L281
.L280:
	mov (d0),d1
	cmp 0,d1
	beq .L284
.L282:
	mov d0,a0
	retf [],0
.L284:
	mov 0,d0
	jmp .L282
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	jmp .L286
.L288:
	add_add 4, d0, 4, d1
.L286:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L287
	cmp 0,a1
	beq .L287
	mov (d1),a0
	cmp 0,a0
	bne .L288
.L287:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L291
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L290
	mov 0,d0
.L290:
	extbu d0
	retf [],0
.L291:
	mov -1,d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov d0,r0
	setlb
.L293:
	mov (d1+),a1
	mov a1,(r0+)
	cmp 0,a1
	Lne # loop back to: .L293
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov d0,d1
	jmp .L296
.L297:
	add 4,d1
.L296:
	mov (d1),a0
	cmp 0,a0
	bne .L297
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
.L299:
	cmp 0,a0
	beq .L300
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L300
	cmp 0,r0
	beq .L300
	mov (d1),a1
	cmp 0,a1
	beq .L300
	add_add -1, a0, 4, d0
	add 4,d1
	jmp .L299
.L300:
	cmp 0,a0
	beq .L304
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L305
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L303
	mov 0,d0
.L303:
	extbu d0
	retf [],0
.L304:
	mov 0,d0
	retf [],0
.L305:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	jmp .L307
.L309:
	add_add -1, a0, 4, d0
.L307:
	cmp 0,a0
	beq .L308
	mov (d0),a1
	cmp a1,d1
	bne .L309
.L308:
	cmp 0,a0
	beq .L312
.L310:
	mov d0,a0
	retf [],0
.L312:
	mov 0,d0
	jmp .L310
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	jmp .L314
.L316:
	add_add -1, a0, 4, d0
	add 4,d1
.L314:
	cmp 0,a0
	beq .L315
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	beq .L316
.L315:
	cmp 0,a0
	beq .L319
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L320
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L318
	mov 0,d0
.L318:
	extbu d0
	retf [],0
.L319:
	mov 0,d0
	retf [],0
.L320:
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov (12,sp),r0
	mov 0,a1
	jmp .L322
.L323:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L322:
	add -1,r0
	cmp -1,r0
	bne .L323
	mov d0,a0
	retf [],0
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a1
	cmp d1,d0
	beq .L325
	sub d1,d0,r0
	mov a1,a0
	asl2 a0
	cmp a0,r0
	bcc .L330
	add -1,a1
	asl2 a1
	jmp .L327
.L328:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
.L327:
	cmp -4,a1
	bne .L328
.L325:
	mov d0,a0
	retf [],0
.L329:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	inc4 r0
.L326:
	add -1,a1
	cmp -1,a1
	bne .L329
	jmp .L325
.L330:
	mov 0,r0
	jmp .L326
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a1
	mov d0,r0
	jmp .L332
.L333:
	mov d1,(r0+)
.L332:
	add -1,a1
	cmp -1,a1
	bne .L333
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L335
	add_add -1, d0, -1, d1
	jmp .L336
.L337:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
.L336:
	cmp 0,a0
	bne .L337
	retf [],0
.L335:
	beq .L342
	mov 0,a1
	jmp .L339
.L342:
	retf [],0
.L340:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
.L339:
	cmp a0,a1
	bne .L340
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L344
	mov 0,r2
	asl d0,r0,r3
.L345:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L346
	not d0
	add_mov 1, d0, 0, a0
	mov a0,a1
	lsr d0,r1,a0
.L347:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L344:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
	jmp .L345
.L346:
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
	jmp .L347
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L349
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
.L350:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L351
	not d0
	add_mov 1, d0, 0, a0
	asl d0,r0,a1
.L352:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L349:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
	jmp .L350
.L351:
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
	jmp .L352
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
.L365:
	cmp 32,d1
	beq .L369
	lsr d1,d0,a0
	btst 1,a0
	bne .L370
	inc d1
	jmp .L365
.L370:
	mov 1,d0
	add d1,d0
	retf [],0
.L369:
	mov 0,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp 0,d0
	beq .L375
	mov 1,d1
	jmp .L373
.L374:
	add_asr 1, d1, 1, d0
.L373:
	btst 1,d0
	beq .L374
	mov d1,d0
	retf [],0
.L375:
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
	blt .L379
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L380
.L378:
	extbu d2,d0
.L377:
	ret [d2,d3],20
.L380:
	mov 0,d2
	jmp .L378
.L379:
	mov 1,d0
	jmp .L377
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
	blt .L384
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L385
.L383:
	extbu a2,d0
.L382:
	ret [d2,d3,a2],32
.L385:
	mov 0,a2
	jmp .L383
.L384:
	mov 1,d0
	jmp .L382
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
	blt .L389
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L390
.L388:
	extbu a2,d0
.L387:
	ret [d2,d3,a2],32
.L390:
	mov 0,a2
	jmp .L388
.L389:
	mov 1,d0
	jmp .L387
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
	bne .L393
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov_mov d0, d1, a2, d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L393
	cmp 0,d2
	blt .L400
	mov 1073741824,d3
	jmp .L397
.L400:
	mov 1056964608,d3
	jmp .L397
.L396:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L393
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L397:
	btst 1,d2
	beq .L396
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L396
.L393:
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
	bne .L402
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L402
	cmp 0,r4
	blt .L409
	mov 0,d2
	mov 1073741824,d3
	jmp .L406
.L409:
	mov 0,d2
	mov 1071644672,d3
	jmp .L406
.L405:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L402
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L406:
	btst 1,r4
	beq .L405
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L405
.L402:
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
	bne .L411
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L411
	cmp 0,r4
	blt .L418
	mov 0,d2
	mov 1073741824,d3
	jmp .L415
.L418:
	mov 0,d2
	mov 1071644672,d3
	jmp .L415
.L414:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L411
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L415:
	btst 1,r4
	beq .L414
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L414
.L411:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	add_mov d0, r2, d0, a1
	jmp .L420
.L421:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
.L420:
	cmp r2,a1
	bne .L421
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
	jmp .L423
.L425:
	add_add 1, d2, 1, d0
	add -1,d3
.L423:
	cmp 0,d3
	beq .L424
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	bne .L425
.L424:
	cmp 0,d3
	bne .L426
	mov 0,d1
	movbu d1,(d0)
.L426:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
.L428:
	cmp d1,d0
	beq .L429
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L430
.L429:
	retf [],0
.L430:
	inc d0
	jmp .L428
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
.L432:
	movbu (d0),a0
	cmp 0,a0
	beq .L438
	mov d1,a1
.L435:
	movbu (a1),r0
	cmp 0,r0
	beq .L439
	inc a1
	movbu (-1,a1),r1
	movbu (d0),r0
	cmp r0,r1
	bne .L435
.L433:
	mov d0,a0
	retf [],0
.L439:
	inc d0
	jmp .L432
.L438:
	mov 0,d0
	jmp .L433
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a0, 0, d0
	jmp .L442
.L441:
	inc a0
	movbu (-1,a0),a1
	cmp 0,a1
	beq .L445
.L442:
	movbu (a0),a1
	cmp a1,d1
	bne .L441
	mov a0,d0
	jmp .L441
.L445:
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
	beq .L450
	movbu (d3),a3
.L448:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L452
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L451
	inc d2
	jmp .L448
.L452:
	mov 0,d0
	jmp .L447
.L450:
	mov d2,d0
.L447:
	mov d0,a0
	ret [d2,d3,a2,a3],32
.L451:
	mov d2,d0
	jmp .L447
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
	blt .L466
.L454:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L464
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L456
	mov_mov d2, a0, d3, a1
.L457:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L466:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L454
.L456:
	mov d2,a0
	mov -2147483648,a1
	add d3,a1
	jmp .L457
.L464:
	mov_mov d2, a0, d3, a1
	jmp .L457
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
	beq .L468
	mov 1,a1
	cmp a0,d1
	bcs .L469
	mov 0,a1
.L469:
	extbu a1
	cmp 0,a1
	bne .L474
	mov_mov d0, d2, 1, r4
	add_mov a2, r4, -1, a3
	add a0,a3
	jmp .L470
.L471:
	inc d2
.L470:
	cmp d3,d2
	bhi .L476
	movbu (d2),d1
	movbu (a2),d0
	cmp d0,d1
	bne .L471
	mov a3,(12,sp)
	mov_mov r4, d1, 1, d0
	add d2,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L471
	mov d2,d0
	jmp .L468
.L476:
	mov 0,d0
.L468:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L474:
	mov 0,d0
	jmp .L468
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
	blt .L498
	mov 0,r6
.L479:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L499
	mov 0,a2
	mov a2,a3
	mov 1072693248,r4
	mov 1071644672,r5
	jmp .L481
.L498:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r6
	jmp .L479
.L483:
	inc a2
	mov a3,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L481:
	mov a3,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	bge .L483
.L484:
	mov (64,sp),d0
	mov a2,(d0)
	cmp 0,r6
	beq .L488
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L488:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L499:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L497
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L492
	mov 0,a2
	jmp .L484
.L487:
	add -1,a2
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
.L486:
	mov r4,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L487
	jmp .L484
.L492:
	mov 0,a2
	mov a2,r4
	mov 1071644672,a3
	jmp .L486
.L497:
	mov 0,a2
	jmp .L484
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -8,sp
	mov (52,sp),r0
	mov (56,sp),r1
	mov 0,r4
	mov r4,r5
	jmp .L501
.L502:
	mov d0,d2
	and 1,d2
	mov d2,(sp)
	clr a0
	mov a0,(4,sp)
	mov d2,a0
	mul r1,a0,d2,a1
	mulu r0,a0,r3,r2
	add a1,r3
	add r2,r4,r6
	addc r5,r3,r7
	mov r0,a0
	lsr 31,a0
	mov r1,a3
	add a3,a3
	or_mov a0, a3, r0, a2
	add a2,a2
	mov_mov a2, r0, a3, r1
	mov d1,a0
	asl 31,a0
	mov d0,d2
	lsr 1,d2
	or_mov a0, d2, d1, d3
	mov_lsr d2, d0, 1, d3
	mov_mov d3, d1, r6, r4
	mov r7,r5
.L501:
	or d1,d0,a0
	bne .L502
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L504
.L506:
	add d1,d1
	add a0,a0
.L504:
	cmp d0,d1
	bcc .L511
	add -1,a1
	beq .L512
	cmp 0,d1
	bge .L506
	mov 0,a1
	jmp .L507
.L511:
	mov 0,a1
	jmp .L507
.L512:
	mov 0,a1
	jmp .L507
.L508:
	lsr 1,a0
	lsr 1,d1
.L507:
	cmp 0,a0
	beq .L514
	cmp d1,d0
	bcs .L508
	or_sub a0, a1, d1, d0
	jmp .L508
.L514:
	cmp 0,r0
	bne .L510
	mov a1,d0
.L510:
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	btst 255,d0
	beq .L517
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L517:
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
	beq .L523
	mov_cmp d0, a0, 0, d1
	beq .L521
	mov 0,d0
	bsch d1, d0
	xor 31,d0
.L522:
	add -1,d0
	retf [],0
.L521:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L522
.L523:
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_mov d0, a1, 0, d0
	jmp .L525
.L526:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
.L525:
	cmp 0,a1
	bne .L526
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
	bcc .L528
.L530:
	mov 0,a0
	mov a0,r3
	jmp .L529
.L528:
	add r2,d1,a0
	cmp d0,a0
	bcs .L530
	jmp .L531
.L532:
	mov (a0,d1),r0
	add a0,d1,d2
	mov (4,d2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	inc r3
	add 8,a0
.L529:
	cmp d3,r3
	bne .L532
	jmp .L533
.L534:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
.L533:
	cmp a1,r2
	bhi .L534
.L527:
	retf [d2,d3],8
.L536:
	movbu (r2,d1),a0
	movbu a0,(r2,d0)
.L531:
	add -1,r2
	cmp -1,r2
	bne .L536
	jmp .L527
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),a1
	mov a1,r1
	cmp_lsr d1, d0, 1, r1
	bcc .L538
.L540:
	mov_asl 0, a0, 1, r1
	jmp .L539
.L538:
	add a1,d1,a0
	cmp d0,a0
	bcs .L540
	jmp .L541
.L542:
	movhu (a0,d1),r0
	movhu r0,(a0,d0)
	add 2,a0
.L539:
	cmp r1,a0
	bne .L542
	btst 1,a1
	beq .L537
	add -1,a1
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
	retf [],0
.L544:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
.L541:
	add -1,a1
	cmp -1,a1
	bne .L544
.L537:
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
	bcc .L546
.L548:
	mov_asl 0, a1, 2, r2
	jmp .L547
.L546:
	add r0,d1,a1
	cmp d0,a1
	bcs .L548
	jmp .L549
.L550:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
.L547:
	cmp r2,a1
	bne .L550
	jmp .L551
.L552:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
.L551:
	cmp a0,r0
	bhi .L552
	retf [],0
.L554:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
.L549:
	add -1,r0
	cmp -1,r0
	bne .L554
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
.L562:
	cmp 16,d1
	beq .L563
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L563
	inc d1
	jmp .L562
.L563:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L566:
	cmp 16,d1
	beq .L567
	asr d1,d0,a0
	btst 1,a0
	bne .L567
	inc d1
	jmp .L566
.L567:
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
	bge .L575
	mov d2,d0
	call +__fixsfsi,[],0
.L572:
	ret [d2],16
.L575:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L572
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	jmp .L577
.L578:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
.L577:
	cmp 16,d1
	bne .L578
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
	jmp .L580
.L581:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
.L580:
	cmp 16,d1
	bne .L581
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_mov d0, a1, 0, d0
	jmp .L583
.L584:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
.L583:
	cmp 0,a1
	bne .L584
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp 0,d0
	beq .L589
	mov 0,a1
	jmp .L587
.L588:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_asl d0, a0, 1, d0
	add_lsr a0, a1, 1, d1
.L587:
	cmp 0,d1
	bne .L588
	mov a1,d0
	retf [],0
.L589:
	mov 0,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L591
.L593:
	add d1,d1
	add a0,a0
.L591:
	cmp d0,d1
	bcc .L598
	add -1,a1
	beq .L599
	cmp 0,d1
	bge .L593
	mov 0,a1
	jmp .L594
.L598:
	mov 0,a1
	jmp .L594
.L599:
	mov 0,a1
	jmp .L594
.L595:
	lsr 1,a0
	lsr 1,d1
.L594:
	cmp 0,a0
	beq .L601
	cmp d1,d0
	bcs .L595
	or_sub a0, a1, d1, d0
	jmp .L595
.L601:
	cmp 0,r0
	bne .L597
	mov a1,d0
.L597:
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
	blt .L605
	mov 1,d2
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L606
.L604:
	extbu d2,d0
.L603:
	ret [d2,d3,a2],24
.L606:
	mov 0,d2
	jmp .L604
.L605:
	mov -1,d0
	jmp .L603
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
	blt .L610
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L611
.L609:
	extbu r4,d0
.L608:
	ret [d2,d3,a2,a3,exreg1],52
.L611:
	mov 0,r4
	jmp .L609
.L610:
	mov -1,d0
	jmp .L608
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
	blt .L622
	mov 0,r1
.L615:
	mov 33,r0
	mov 0,a1
	jmp .L616
.L622:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L615
.L618:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_asl d0, a0, 1, d0
	add_asr a0, a1, 1, d1
.L616:
	cmp 0,d1
	beq .L617
	mov -1,a0
	add r0,a0
	mov a0,r0
	btst 255,a0
	bne .L618
.L617:
	cmp 0,r1
	beq .L621
	mov 0,d0
	sub a1,d0
	retf [],0
.L621:
	mov a1,d0
	retf [],0
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L629
	mov 0,d2
.L624:
	cmp 0,d1
	blt .L630
.L625:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L627
	not d0
	inc d0
.L627:
	ret [d2],20
.L629:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L624
.L630:
	not d1
	inc d1
	mov 1,a0
	cmp 0,d2
	beq .L626
	mov 0,a0
.L626:
	extbu a0,d2
	jmp .L625
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L636
	mov 0,d2
.L632:
	mov_cmp a0, d1, 0, a0
	blt .L637
.L633:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L634
	not d0
	inc d0
.L634:
	ret [d2],20
.L636:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L632
.L637:
	mov 0,d1
	sub a0,d1
	jmp .L633
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r2
	mov 17,a1
	mov 1,a0
	exthu d0,r1
.L639:
	exthu d1,r0
	cmp r1,r0
	bcc .L646
	add -1,a1
	beq .L647
	exth d1,r0
	cmp 0,r0
	blt .L649
	add d1,d1
	add a0,a0
	jmp .L639
.L649:
	mov 0,r1
	jmp .L642
.L646:
	mov 0,r1
	jmp .L642
.L647:
	mov 0,r1
	jmp .L642
.L643:
	asl 16,a0
	lsr 17,a0
	asl 16,d1
	lsr 17,d1
.L642:
	exthu a0,a1
	cmp 0,a1
	beq .L650
	exthu d0,a1
	exthu d1,r0
	cmp r0,a1
	bcs .L643
	or_sub a0, r1, d1, d0
	jmp .L643
.L650:
	cmp 0,r2
	bne .L645
	mov r1,d0
.L645:
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov (12,sp),r0
	mov 33,a1
	mov 1,a0
	jmp .L652
.L654:
	add d1,d1
	add a0,a0
.L652:
	cmp d0,d1
	bcc .L659
	add -1,a1
	beq .L660
	cmp 0,d1
	bge .L654
	mov 0,a1
	jmp .L655
.L659:
	mov 0,a1
	jmp .L655
.L660:
	mov 0,a1
	jmp .L655
.L656:
	lsr 1,a0
	lsr 1,d1
.L655:
	cmp 0,a0
	beq .L662
	cmp d1,d0
	bcs .L656
	or_sub a0, a1, d1, d0
	jmp .L656
.L662:
	cmp 0,r0
	bne .L658
	mov a1,d0
.L658:
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
	beq .L664
	mov 0,d0
	asl r2,r0,d1
.L665:
	mov_mov d0, a0, d1, a1
.L666:
	mov_mov a0, d0, a1, d1
	retf [],0
.L664:
	cmp 0,r2
	beq .L666
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a1,a0,d1
	jmp .L665
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov d1,r1
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L669
	asr 31,d1
	asr r2,r1,d0
.L670:
	mov_mov d0, a0, d1, a1
.L671:
	mov_mov a0, d0, a1, d1
	retf [],0
.L669:
	cmp 0,r2
	beq .L671
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
	jmp .L670
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
	bls .L676
	mov 0,a0
.L676:
	extbu a0
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L677
	mov 0,d0
.L677:
	extbu d0
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L678
	mov 0,d0
.L678:
	extbu d0
	mov_asl 4, a1, 2, d0
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 12,d1
	beq .L679
	mov 0,d0
.L679:
	extbu d0
	mov_asl 2, a1, 1, d0
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov d1,a1
	and 2,a1
	mov 1,d0
	beq .L680
	mov 0,d0
.L680:
	extbu d0
	mov 2,a1
	sub d1,a1,d1
	mul d1,d0
	add a0,d0
	rets
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bgt .L683
	cmp a1,d1
	blt .L684
	cmp a0,d0
	bhi .L685
	bcs .L686
	mov 1,d0
	retf [],0
.L683:
	mov 0,d0
	retf [],0
.L684:
	mov 2,d0
	retf [],0
.L685:
	mov 0,d0
	retf [],0
.L686:
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
	beq .L689
	mov 0,a0
.L689:
	extbu a0
	asl 4,a0
	lsr a0,d1
	extbu d1,a1
	mov 1,d0
	cmp 0,a1
	beq .L690
	mov 0,d0
.L690:
	extbu d0
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L691
	mov 0,d0
.L691:
	extbu d0
	asl2 d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 3,d1
	beq .L692
	mov 0,d0
.L692:
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
	beq .L694
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L695:
	mov_mov d0, r0, d1, r1
.L696:
	mov_mov r0, d0, r1, d1
	retf [],0
.L694:
	cmp 0,r2
	beq .L696
	mov_lsr 0, a0, r2, d1
	sub r2,a0
	asl a0,a1,a0
	lsr r2,r0
	or r0,a0,d0
	jmp .L695
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
	jmp .L708
.L706:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L707
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L708:
	btst 1,a2
	beq .L706
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
	jmp .L706
.L707:
	cmp 0,a3
	beq .L710
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L709:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L710:
	mov_mov r4, a0, r5, a1
	jmp .L709
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
	jmp .L714
.L712:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L713
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L714:
	btst 1,d2
	beq .L712
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L712
.L713:
	cmp 0,a3
	beq .L716
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
.L715:
	ret [d2,d3,a2,a3],28
.L716:
	mov a2,d0
	jmp .L715
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bhi .L719
	cmp a1,d1
	bcs .L720
	cmp a0,d0
	bhi .L721
	bcs .L722
	mov 1,d0
	retf [],0
.L719:
	mov 0,d0
	retf [],0
.L720:
	mov 2,d0
	retf [],0
.L721:
	mov 0,d0
	retf [],0
.L722:
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
