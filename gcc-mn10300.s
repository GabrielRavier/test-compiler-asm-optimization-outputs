	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	mov (12,sp),a1
	cmp d1,d0
	bls .L2
	cmp 0,a1
	beq .L3
	add_mov -1, d1, -1, r0
	add d0,r0
	setlb
.L4:
	movbu (a1,d1),a0
	movbu a0,(a1,r0)
	add -1,a1
	Lne # loop back to: .L4
.L3:
	mov d0,a0
	retf [],0
.L2:
	beq .L3
	cmp 0,a1
	beq .L3
	mov 0,r0
	setlb
.L5:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
	inc r0
	cmp a1,r0
	Lne # loop back to: .L5
	jmp .L3
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	mov (16,sp),a0
	movbu (12,sp),r0
	cmp 0,a0
	beq .L10
.L9:
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp a1,r0
	beq .L10
	add_add -1, a0, 1, d1
	add_cmp 1, d0, 0, a0
	bne .L9
.L10:
	cmp 0,a0
	beq .L13
	inc d0
.L8:
	mov d0,a0
	retf [],0
.L13:
	mov 0,d0
	jmp .L8
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L17
.L16:
	movbu (d0),a1
	cmp a1,d1
	beq .L17
	inc d0
	add -1,a0
	bne .L16
.L17:
	cmp 0,a0
	beq .L22
.L15:
	mov d0,a0
	retf [],0
.L22:
	mov 0,d0
	jmp .L15
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L25
.L24:
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	bne .L25
	add_add -1, a0, 1, d0
	add_cmp 1, d1, 0, a0
	bne .L24
.L25:
	cmp 0,a0
	beq .L28
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L28:
	mov 0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	mov (12,sp),a0
	cmp 0,a0
	beq .L31
	mov 0,a1
	setlb
.L32:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a0,a1
	Lne # loop back to: .L32
.L31:
	mov d0,a0
	retf [],0
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	extbu d1
	mov (12,sp),a0
	add -1,a0
.L35:
	cmp -1,a0
	beq .L39
	movbu (a0,d0),a1
	mov -1,r0
	add_cmp a0, r0, a1, d1
	beq .L40
	mov r0,a0
	jmp .L35
.L40:
	add a0,d0
	jmp .L34
.L39:
	mov 0,d0
.L34:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L42
	add_mov d0, r0, d0, a1
	setlb
.L43:
	movbu d1,(a1)
	inc a1
	cmp r0,a1
	Lne # loop back to: .L43
.L42:
	mov d0,a0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	beq .L46
	setlb
.L47:
	add_add 1, d1, 1, d0
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	Lne # loop back to: .L47
.L46:
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	movbu (d0),a0
	cmp 0,a0
	beq .L49
.L50:
	movbu (d0),a0
	cmp a0,d1
	beq .L49
	inc d0
	movbu (d0),a0
	cmp 0,a0
	bne .L50
.L49:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L57:
	movbu (d0),a0
	cmp a0,d1
	beq .L56
	inc d0
	movbu (-1,d0),a0
	cmp 0,a0
	bne .L57
	mov 0,d0
.L56:
	mov d0,a0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	bne .L61
.L60:
	movbu (d0),a0
	cmp 0,a0
	beq .L61
	add_add 1, d0, 1, d1
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	beq .L60
.L61:
	movbu (d0),a0
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp 0,d1
	beq .L67
	mov d0,d1
	setlb
.L66:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L66
.L65:
	sub d0,d1,d0
	retf [],0
.L67:
	mov d0,d1
	jmp .L65
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L74
	movbu (d0),a0
	cmp 0,a0
	beq .L71
	add -1,r0
	add d0,r0
.L72:
	movbu (d1),a0
	cmp 0,a0
	beq .L71
	cmp r0,d0
	beq .L71
	movbu (d0),a1
	cmp a0,a1
	bne .L71
	add_add 1, d0, 1, d1
	movbu (d0),a0
	cmp 0,a0
	bne .L72
.L71:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L74:
	mov 0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a0
	cmp 1,a0
	ble .L75
	add -2,a0
	and -2,a0
	add 2,a0
	add d0,a0
	setlb
.L77:
	movbu (1,d0),a1
	movbu a1,(d1)
	movbu (d0),a1
	movbu a1,(1,d1)
	add_add 2, d1, 2, d0
	cmp a0,d0
	Lne # loop back to: .L77
.L75:
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
	bls .L80
	mov 0,d0
.L80:
	and 1,d0
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov 1,d1
	cmp 127,d0
	bls .L82
	mov 0,d1
.L82:
	mov d1,d0
	and 1,d0
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L86
	mov 1,d1
	cmp 9,d0
	beq .L85
	mov 0,d1
.L85:
	extbu d1,d0
	retf [],0
.L86:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L90
	mov 1,d1
	cmp 127,d0
	beq .L89
	mov 0,d1
.L89:
	extbu d1,d0
	retf [],0
.L90:
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
	bls .L92
	mov 0,d0
.L92:
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
	bls .L94
	mov 0,d0
.L94:
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
	bls .L96
	mov 0,d0
.L96:
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
	bls .L98
	mov 0,d0
.L98:
	and 1,d0
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L102
	add -9,d0
	mov 1,d1
	cmp 4,d0
	bls .L101
	mov 0,d1
.L101:
	extbu d1,d0
	retf [],0
.L102:
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
	bls .L104
	mov 0,d0
.L104:
	and 1,d0
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L108
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L109
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L110
	add -65529,d0
	mov 1,d1
	cmp 2,d0
	bls .L107
	mov 0,d1
.L107:
	extbu d1,d0
	retf [],0
.L108:
	mov 1,d0
	retf [],0
.L109:
	mov 1,d0
	retf [],0
.L110:
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
	bls .L112
	mov 0,d0
.L112:
	and 1,d0
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L121
	cmp 8231,d0
	bls .L117
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L118
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L119
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L120
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L121:
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L115
	mov 0,d1
.L115:
	extbu d1,d0
	retf [],0
.L117:
	mov 1,d0
	retf [],0
.L118:
	mov 1,d0
	retf [],0
.L119:
	mov 1,d0
	retf [],0
.L120:
	mov 0,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L125
	or 32,d0
	add -97,d0
	mov 1,d1
	cmp 5,d0
	bls .L124
	mov 0,d1
.L124:
	extbu d1,d0
	retf [],0
.L125:
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
	bne .L130
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L131
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L134
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L127:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L130:
	mov_mov d2, a0, d3, a1
	jmp .L127
.L131:
	mov_mov a2, a0, a3, a1
	jmp .L127
.L134:
	mov 0,a0
	mov a0,a1
	jmp .L127
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
	bne .L138
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L139
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L142
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
.L135:
	ret [d2,d3],20
.L138:
	mov d2,d0
	jmp .L135
.L139:
	mov d3,d0
	jmp .L135
.L142:
	mov 0,d0
	jmp .L135
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
	bne .L149
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L150
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L145
	cmp 0,d3
	bge .L151
	mov_mov a2, a0, a3, a1
	jmp .L143
.L145:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L147
	mov_mov a2, d0, a3, d1
.L148:
	mov_mov d0, a0, d1, a1
.L143:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L147:
	mov_mov d2, d0, d3, d1
	jmp .L148
.L149:
	mov_mov a2, a0, a3, a1
	jmp .L143
.L150:
	mov_mov d2, a0, d3, a1
	jmp .L143
.L151:
	mov_mov d2, a0, d3, a1
	jmp .L143
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
	bne .L158
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L159
	mov d2,d1
	and -2147483648,d1
	mov d3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L154
	mov_cmp d2, d0, 0, d2
	bge .L152
	mov d3,d0
	jmp .L152
.L154:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L157
	mov d3,d2
.L157:
	mov d2,d0
.L152:
	ret [d2,d3],20
.L158:
	mov d3,d0
	jmp .L152
.L159:
	mov d2,d0
	jmp .L152
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
	bne .L167
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L168
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L163
	cmp 0,d3
	bge .L169
	mov_mov a2, a0, a3, a1
	jmp .L161
.L163:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L165
	mov_mov a2, d0, a3, d1
.L166:
	mov_mov d0, a0, d1, a1
.L161:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L165:
	mov_mov d2, d0, d3, d1
	jmp .L166
.L167:
	mov_mov a2, a0, a3, a1
	jmp .L161
.L168:
	mov_mov d2, a0, d3, a1
	jmp .L161
.L169:
	mov_mov d2, a0, d3, a1
	jmp .L161
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
	bne .L176
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L177
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L172
	cmp 0,d3
	bge .L178
	mov_mov d2, a0, d3, a1
	jmp .L170
.L172:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L174
	mov_mov d2, d0, d3, d1
.L175:
	mov_mov d0, a0, d1, a1
.L170:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L174:
	mov_mov a2, d0, a3, d1
	jmp .L175
.L176:
	mov_mov a2, a0, a3, a1
	jmp .L170
.L177:
	mov_mov d2, a0, d3, a1
	jmp .L170
.L178:
	mov_mov a2, a0, a3, a1
	jmp .L170
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
	bne .L185
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L186
	mov d3,d1
	and -2147483648,d1
	mov d2,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L181
	mov_cmp d3, d0, 0, d3
	blt .L179
	mov d2,d0
	jmp .L179
.L181:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L184
	mov d3,d2
.L184:
	mov d2,d0
.L179:
	ret [d2,d3],20
.L185:
	mov d2,d0
	jmp .L179
.L186:
	mov d3,d0
	jmp .L179
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
	bne .L194
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L195
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L190
	cmp 0,d3
	bge .L196
	mov_mov d2, a0, d3, a1
	jmp .L188
.L190:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L192
	mov_mov d2, d0, d3, d1
.L193:
	mov_mov d0, a0, d1, a1
.L188:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L192:
	mov_mov a2, d0, a3, d1
	jmp .L193
.L194:
	mov_mov a2, a0, a3, a1
	jmp .L188
.L195:
	mov_mov d2, a0, d3, a1
	jmp .L188
.L196:
	mov_mov a2, a0, a3, a1
	jmp .L188
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
	cmp 0,d0
	beq .L200
	mov +s.0,d1
	setlb
.L199:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L199
.L198:
	mov 0,d0
	movbu d0,(d1)
	mov +s.0,d0
	mov d0,a0
	retf [],0
.L200:
	mov +s.0,d1
	jmp .L198
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
	beq .L207
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L204
	mov d0,(4,d1)
.L204:
	retf [],0
.L207:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L209
	mov (4,d0),a0
	mov a0,(4,d1)
.L209:
	mov (4,d0),d1
	cmp 0,d1
	beq .L208
	mov (d0),d0
	mov d0,(d1)
.L208:
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
	cmp 0,a2
	beq .L212
	mov_mov d1, d3, 0, d2
.L215:
	mov_mov d3, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L217
	add_add 1, d2, r4, d3
	cmp a2,d2
	bne .L215
.L212:
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
.L217:
	mul d2,r4,d1,d0
	add r6,d0
	jmp .L211
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
	cmp 0,a3
	beq .L222
	mov_mov d1, d3, 0, d2
.L221:
	mov_mov d3, d1, a2, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	beq .L224
	add_add 1, d2, r4, d3
	cmp a3,d2
	bne .L221
	mov 0,d0
	jmp .L218
.L224:
	mul d2,r4,d1,d0
	add r5,d0
.L218:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
.L222:
	mov 0,d0
	jmp .L218
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L227
.L226:
	retf [],0
.L227:
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
	jmp .L229
.L230:
	inc d2
.L229:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L230
	movbu (d2),d0
	cmp 43,d0
	beq .L236
	cmp 45,d0
	bne .L237
	mov 1,a0
.L231:
	inc d2
.L232:
	movbu (d2),d0
	add -48,d0
	cmp 9,d0
	bhi .L238
	mov 0,d0
	setlb
.L234:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	Lls # loop back to: .L234
.L233:
	cmp 0,a0
	bne .L228
	not d0
	inc d0
.L228:
	ret [d2],16
.L236:
	mov 0,a0
	jmp .L231
.L237:
	mov 0,a0
	jmp .L232
.L238:
	mov 0,d0
	jmp .L233
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2],(sp)
	add -12,sp
	mov d0,d2
	jmp .L241
.L242:
	inc d2
.L241:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L242
	movbu (d2),d0
	cmp 43,d0
	beq .L248
	cmp 45,d0
	bne .L249
	mov 1,a0
.L243:
	inc d2
.L244:
	movbu (d2),d0
	add -48,d0
	cmp 9,d0
	bhi .L250
	mov 0,d0
	setlb
.L246:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	Lls # loop back to: .L246
.L245:
	cmp 0,a0
	bne .L240
	not d0
	inc d0
.L240:
	ret [d2],16
.L248:
	mov 0,a0
	jmp .L243
.L249:
	mov 0,a0
	jmp .L244
.L250:
	mov 0,d0
	jmp .L245
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,d2
	jmp .L253
.L254:
	inc d2
.L253:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L254
	movbu (d2),d0
	cmp 43,d0
	beq .L260
	cmp 45,d0
	bne .L261
	mov 1,r0
.L255:
	inc d2
.L256:
	movbu (d2),d0
	add -48,d0
	cmp 9,d0
	bhi .L262
	mov 0,a0
	mov a0,a1
	mov 10,d1
	setlb
.L258:
	mov 10,d0
	mul a1,d0
	mulu a0,d1,a3,a2
	add_add d0, a3, 1, d2
	movbu (-1,d2),d0
	add -48,d0
	mov_mov d0, r4, d0, r5
	asr 31,r5
	sub d0,a2,a0
	subc r5,a3,a1
	movbu (d2),d0
	add -48,d0
	cmp 9,d0
	Lls # loop back to: .L258
.L257:
	cmp 0,r0
	bne .L252
	mov 0,d0
	sub a0,d0,a0
	subc a1,d0,a1
.L252:
	mov_mov a0, d0, a1, d1
	ret [d2,a2,a3,exreg1],40
.L260:
	mov 0,r0
	jmp .L255
.L261:
	mov 0,r0
	jmp .L256
.L262:
	mov 0,a0
	mov a0,a1
	jmp .L257
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
	cmp 0,d3
	bne .L268
	mov 0,d2
	jmp .L264
.L272:
	lsr 1,d3
.L267:
	cmp 0,d3
	beq .L271
.L268:
	mov d3,d2
	lsr 1,d2
	mul a3,d2
	add a2,d2
	mov_mov d2, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L272
	ble .L264
	add a3,d2,a2
	mov d3,d0
	add_lsr -1, d3, 1, d0
	sub d0,d3
	jmp .L267
.L271:
	mov 0,d2
.L264:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3,exreg1],44
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov_mov d0, r4, d1, a2
	mov (64,sp),a3
	mov (68,sp),r6
	mov (72,sp),r5
	mov (60,sp),d3
	cmp 0,d3
	bne .L276
	mov 0,d2
	jmp .L273
.L275:
	asr 1,d3
	cmp 0,d3
	beq .L279
.L276:
	mov d3,d2
	asr 1,d2
	mul a3,d2
	add a2,d2
	mov r5,(12,sp)
	mov_mov d2, d1, r4, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	beq .L273
	ble .L275
	add a3,d2,a2
	add -1,d3
	jmp .L275
.L279:
	mov 0,d2
.L273:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3,exreg1],48
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
	blt .L284
.L282:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L284:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L282
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
	blt .L288
.L287:
	retf [],0
.L288:
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
	blt .L293
.L291:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L293:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L291
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
	mov (d0),a0
	cmp 0,a0
	beq .L297
.L296:
	mov (d0),a0
	cmp a0,d1
	beq .L297
	add 4,d0
	mov (d0),a0
	cmp 0,a0
	bne .L296
.L297:
	mov (d0),d1
	cmp 0,d1
	beq .L302
.L295:
	mov d0,a0
	retf [],0
.L302:
	mov 0,d0
	jmp .L295
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L305
.L304:
	mov (d0),a0
	cmp 0,a0
	beq .L305
	mov (d1),a0
	cmp 0,a0
	beq .L305
	add_add 4, d0, 4, d1
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	beq .L304
.L305:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L309
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L308
	mov 0,d0
.L308:
	extbu d0
	retf [],0
.L309:
	mov -1,d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov d0,r0
	setlb
.L312:
	mov (d1+),a1
	mov a1,(r0+)
	cmp 0,a1
	Lne # loop back to: .L312
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L317
	mov d0,d1
	setlb
.L316:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L316
.L315:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
.L317:
	mov d0,d1
	jmp .L315
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L321
.L320:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L321
	cmp 0,r0
	beq .L321
	mov (d1),a1
	cmp 0,a1
	beq .L321
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L320
.L321:
	cmp 0,a0
	beq .L325
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L326
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L324
	mov 0,d0
.L324:
	extbu d0
	retf [],0
.L325:
	mov 0,d0
	retf [],0
.L326:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L330
.L329:
	mov (d0),a1
	cmp a1,d1
	beq .L330
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L329
.L330:
	cmp 0,a0
	beq .L335
.L328:
	mov d0,a0
	retf [],0
.L335:
	mov 0,d0
	jmp .L328
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L338
.L337:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L338
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L337
.L338:
	cmp 0,a0
	beq .L342
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L343
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L341
	mov 0,d0
.L341:
	extbu d0
	retf [],0
.L342:
	mov 0,d0
	retf [],0
.L343:
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov (12,sp),a0
	mov -1,r0
	add_cmp a0, r0, 0, a0
	beq .L346
	mov 0,a1
	setlb
.L347:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	add_add -1, r0, 4, a1
	cmp -1,r0
	Lne # loop back to: .L347
.L346:
	mov d0,a0
	retf [],0
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a1
	cmp d1,d0
	beq .L350
	sub d1,d0,r0
	mov a1,a0
	asl2 a0
	cmp a0,r0
	bcs .L351
	mov -1,a0
	add_mov a1, a0, 0, r0
	cmp r0,a1
	beq .L350
	setlb
.L352:
	mov (r0,d1),a1
	mov a1,(r0,d0)
	add_add -1, a0, 4, r0
	cmp -1,a0
	Lne # loop back to: .L352
	jmp .L350
.L351:
	cmp 0,a1
	beq .L350
	add -1,a1
	asl2 a1
	setlb
.L353:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L353
.L350:
	mov d0,a0
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a0
	mov -1,a1
	add_cmp a0, a1, 0, a0
	beq .L359
	mov d0,r0
	setlb
.L360:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L360
.L359:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L363
	cmp 0,a0
	beq .L362
	add_add -1, d0, -1, d1
	setlb
.L365:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L365
	retf [],0
.L363:
	beq .L362
	cmp 0,a0
	beq .L362
	mov 0,a1
	setlb
.L366:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a0,a1
	Lne # loop back to: .L366
.L362:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L370
	mov 0,r2
	asl d0,r0,r3
.L371:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L372
	mov 0,a0
	sub_mov d0, a0, 0, d0
	mov d0,d1
	lsr a0,r1,d0
.L373:
	or r2,d0,a0
	or r3,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L370:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
	jmp .L371
.L372:
	mov r1,a1
	mov_asl 0, a0, 1, a1
	sub d0,a0
	and 63,a0
	mov a0,d0
	not d0
	asl d0,a1
	lsr a0,r0,d0
	or a1,d0
	lsr a0,r1,d1
	jmp .L373
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L375
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
.L376:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L377
	mov 0,a0
	sub_mov d0, a0, 0, d0
	asl a0,r0,d1
.L378:
	or r2,d0,a0
	or r3,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L375:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
	jmp .L376
.L377:
	mov r0,a1
	mov_lsr 0, a0, 1, a1
	sub d0,a0
	and 63,a0
	mov a0,d0
	not d0
	lsr d0,a1
	asl a0,r1,d1
	or a1,d1
	asl a0,r0,d0
	jmp .L378
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
.L393:
	lsr d1,d0,a0
	btst 1,a0
	bne .L395
	inc d1
	cmp 32,d1
	bne .L393
	mov 0,d0
	retf [],0
.L395:
	mov 1,d0
	add d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov_cmp d0, d1, 0, d0
	beq .L399
	btst 1,d0
	bne .L400
	mov 1,d0
	setlb
.L398:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L398
	retf [],0
.L399:
	mov 0,d0
	retf [],0
.L400:
	mov 1,d0
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
	blt .L405
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L406
.L404:
	extbu d2,d0
.L402:
	ret [d2,d3],20
.L406:
	mov 0,d2
	jmp .L404
.L405:
	mov 1,d0
	jmp .L402
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
	blt .L410
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L411
.L409:
	extbu a2,d0
.L407:
	ret [d2,d3,a2],32
.L411:
	mov 0,a2
	jmp .L409
.L410:
	mov 1,d0
	jmp .L407
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
	blt .L415
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L416
.L414:
	extbu a2,d0
.L412:
	ret [d2,d3,a2],32
.L416:
	mov 0,a2
	jmp .L414
.L415:
	mov 1,d0
	jmp .L412
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
	bne .L419
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov_mov d0, d1, a2, d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L419
	cmp 0,d2
	blt .L426
	mov 1073741824,d3
	jmp .L423
.L426:
	mov 1056964608,d3
	jmp .L423
.L422:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L419
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L423:
	btst 1,d2
	beq .L422
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L422
.L419:
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
	bne .L428
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L428
	cmp 0,r4
	blt .L435
	mov 0,d2
	mov 1073741824,d3
	jmp .L432
.L435:
	mov 0,d2
	mov 1071644672,d3
	jmp .L432
.L431:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L428
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L432:
	btst 1,r4
	beq .L431
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L431
.L428:
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
	bne .L437
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L437
	cmp 0,r4
	blt .L444
	mov 0,d2
	mov 1073741824,d3
	jmp .L441
.L444:
	mov 0,d2
	mov 1071644672,d3
	jmp .L441
.L440:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L437
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L441:
	btst 1,r4
	beq .L440
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L440
.L437:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L446
	add_mov d1, r2, d0, a1
	setlb
.L447:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
	cmp r2,d1
	Lne # loop back to: .L447
.L446:
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
	add_cmp a2, d0, 0, d3
	beq .L451
.L450:
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L451
	add_add 1, d2, 1, d0
	add -1,d3
	bne .L450
.L451:
	cmp 0,d3
	bne .L453
	mov 0,d1
	movbu d1,(d0)
.L453:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
	cmp d0,d1
	beq .L461
.L456:
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L458
.L455:
	retf [],0
.L461:
	retf [],0
.L458:
	inc d0
	cmp d1,d0
	bne .L456
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),a0
	cmp 0,a0
	beq .L469
.L463:
	mov d1,a0
.L466:
	movbu (a0),a1
	cmp 0,a1
	beq .L470
	inc a0
	movbu (-1,a0),r0
	movbu (d0),a1
	cmp a1,r0
	bne .L466
.L464:
	mov d0,a0
	retf [],0
.L469:
	mov 0,d0
	jmp .L464
.L470:
	inc d0
	movbu (d0),a0
	cmp 0,a0
	bne .L463
	mov 0,d0
	jmp .L464
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a0, 0, d0
	jmp .L473
.L472:
	inc a0
	movbu (-1,a0),a1
	cmp 0,a1
	beq .L476
.L473:
	movbu (a0),a1
	cmp a1,d1
	bne .L472
	mov a0,d0
	jmp .L472
.L476:
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
	beq .L477
	movbu (d3),a3
.L479:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L477
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L477
	inc d2
	jmp .L479
.L477:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3],32
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
	blt .L491
.L483:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L486
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L485
.L486:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3],36
.L491:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L483
.L485:
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
	jmp .L486
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov d0,d2
	mov (60,sp),r4
	mov (64,sp),d0
	sub d0,d1,d3
	add_cmp d2, d3, 0, d0
	beq .L497
	mov 1,a0
	cmp d0,d1
	bcs .L494
	mov 0,a0
.L494:
	extbu a0
	cmp 0,a0
	bne .L498
	cmp d3,d2
	bhi .L499
	movbu (r4),a2
	add_mov 1, r4, -1, a3
	add d0,a3
	jmp .L496
.L495:
	inc d2
	cmp d2,d3
	bcs .L502
.L496:
	movbu (d2),d0
	cmp a2,d0
	bne .L495
	mov a3,(12,sp)
	mov_mov r4, d1, 1, d0
	add d2,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L495
	mov d2,d0
	jmp .L492
.L502:
	mov 0,d0
.L492:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L497:
	mov d2,d0
	jmp .L492
.L498:
	mov 0,d0
	jmp .L492
.L499:
	mov 0,d0
	jmp .L492
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
	blt .L528
	mov 0,r6
.L505:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L525
	mov 0,a2
	mov a2,a3
	mov 1071644672,r5
	mov 1072693248,r4
.L509:
	inc a2
	mov a3,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	mov a3,(12,sp)
	mov r4,(16,sp)
	call +__gedf2,[],0
	cmp 0,d0
	bge .L509
.L510:
	mov (64,sp),d0
	mov a2,(d0)
	cmp 0,r6
	beq .L514
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L514:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L528:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r6
	jmp .L505
.L525:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L526
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L527
	mov 0,a2
	mov a2,r4
	mov 1071644672,a3
.L513:
	add -1,a2
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
	mov r4,(12,sp)
	mov a3,(16,sp)
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L513
	jmp .L510
.L526:
	mov 0,a2
	jmp .L510
.L527:
	mov 0,a2
	jmp .L510
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov (60,sp),r0
	mov (64,sp),r1
	or d1,d0,a0
	beq .L533
	mov 0,r4
	mov r4,r5
	setlb
.L532:
	mov d0,d2
	and 1,d2
	mov d2,(sp)
	clr d3
	mov d3,(4,sp)
	mov d2,(8,sp)
	mov d3,(12,sp)
	mov d3,a1
	sub d2,d3,r6
	subc d3,d3,r7
	and r6,r0,d2
	and r7,r1,d3
	add d2,r4
	addc d3,r5
	mov r0,a0
	lsr 31,a0
	mov r1,a3
	add a3,a3
	or_mov a0, a3, r0, a2
	add a2,a2
	mov_mov a2, r0, a3, r1
	mov d1,a0
	asl 31,a0
	mov d0,r2
	lsr 1,r2
	or_mov a0, r2, d1, r3
	mov_lsr r2, d0, 1, r3
	mov r3,d1
	or r3,r2,a0
	cmp a1,a0
	Lne # loop back to: .L532
.L529:
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],48
.L533:
	mov 0,r4
	mov r4,r5
	jmp .L529
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L537
	mov 32,d0
	mov 1,a0
.L536:
	cmp 0,d1
	blt .L537
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L537
	add -1,d0
	bne .L536
.L537:
	mov 0,d0
	cmp d0,a0
	bne .L539
.L540:
	cmp 0,r0
	bne .L549
.L535:
	retf [],0
.L542:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L540
.L539:
	cmp d1,a1
	bcs .L542
	or_sub a0, d0, d1, a1
	jmp .L542
.L549:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	btst 255,d0
	beq .L552
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L552:
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
	beq .L558
	mov_cmp d0, a0, 0, d1
	beq .L556
	mov 0,d0
	bsch d1, d0
	xor 31,d0
.L557:
	add -1,d0
	retf [],0
.L556:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L557
.L558:
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_cmp d0, a1, 0, d0
	beq .L562
	mov 0,d0
	setlb
.L561:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L561
	retf [],0
.L562:
	mov 0,d0
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2],(sp)
	mov (16,sp),r3
	mov r3,d2
	mov_lsr r3, a1, 3, d2
	and -8,a1
	cmp d1,d0
	bcs .L565
	add r3,d1,a0
	cmp d0,a0
	bcs .L565
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L564
	setlb
.L566:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L566
	jmp .L564
.L565:
	cmp 0,d2
	beq .L568
	mov_asl 0, a0, 3, d2
	setlb
.L569:
	mov (a0,d1),r0
	add a0,d1,r2
	mov (4,r2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp d2,a0
	Lne # loop back to: .L569
.L568:
	cmp a1,r3
	bls .L564
	setlb
.L570:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp r3,a1
	Lne # loop back to: .L570
.L564:
	retf [d2],4
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcs .L576
	add r1,d1,a0
	cmp d0,a0
	bcs .L576
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L584
	setlb
.L577:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L577
.L575:
	retf [],0
.L584:
	retf [],0
.L576:
	cmp 0,r0
	beq .L579
	mov_asl 0, a0, 1, r0
	setlb
.L580:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp r0,a0
	Lne # loop back to: .L580
.L579:
	btst 1,r1
	beq .L575
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	mov (12,sp),r1
	mov r1,r2
	mov_lsr r1, a0, 2, r2
	and -4,a0
	cmp d1,d0
	bcs .L586
	add r1,d1,a1
	cmp d0,a1
	bcs .L586
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L596
	setlb
.L587:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L587
.L585:
	retf [],0
.L596:
	retf [],0
.L586:
	cmp 0,r2
	beq .L589
	mov_asl 0, a1, 2, r2
	setlb
.L590:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp r2,a1
	Lne # loop back to: .L590
.L589:
	cmp a0,r1
	bls .L585
	setlb
.L591:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp r1,a0
	Lne # loop back to: .L591
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
.L605:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L603
	inc d1
	cmp 16,d1
	bne .L605
.L603:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L609:
	asr d1,d0,a0
	btst 1,a0
	bne .L607
	inc d1
	cmp 16,d1
	bne .L609
.L607:
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
	bge .L617
	mov d2,d0
	call +__fixsfsi,[],0
.L611:
	ret [d2],16
.L617:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L611
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	setlb
.L619:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L619
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
	setlb
.L622:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L622
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_cmp d0, a1, 0, d0
	beq .L627
	mov 0,d0
	setlb
.L626:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L626
	retf [],0
.L627:
	mov 0,d0
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov_cmp d0, a1, 0, d0
	beq .L632
	cmp 0,d1
	beq .L633
	mov 0,d0
	setlb
.L631:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L631
	retf [],0
.L632:
	mov 0,d0
	retf [],0
.L633:
	mov 0,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L637
	mov 32,d0
	mov 1,a0
.L636:
	cmp 0,d1
	blt .L637
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L637
	add -1,d0
	bne .L636
.L637:
	mov 0,d0
	cmp d0,a0
	bne .L639
.L640:
	cmp 0,r0
	bne .L649
.L635:
	retf [],0
.L642:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L640
.L639:
	cmp d1,a1
	bcs .L642
	or_sub a0, d0, d1, a1
	jmp .L642
.L649:
	mov a1,d0
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
	blt .L653
	mov 1,d2
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L654
.L652:
	extbu d2,d0
.L650:
	ret [d2,d3,a2],24
.L654:
	mov 0,d2
	jmp .L652
.L653:
	mov -1,d0
	jmp .L650
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
	blt .L658
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L659
.L657:
	extbu r4,d0
.L655:
	ret [d2,d3,a2,a3,exreg1],52
.L659:
	mov 0,r4
	jmp .L657
.L658:
	mov -1,d0
	jmp .L655
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	movm [d2],(sp)
	mov_mov d0, r0, d0, r1
	asr 31,r1
	mov_mov d1, a0, d1, a1
	asr 31,a1
	mul r1,d1,d0,d1
	mul a1,r0,d2,d0
	add d0,d1,a1
	mulu r0,a0,d1,d0
	add d1,a1
	mov a1,d1
	retf [d2],4
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
	mov_cmp d0, a1, 0, d1
	blt .L670
	mov 0,r1
.L663:
	cmp 0,d1
	beq .L668
	mov 32,r0
	mov 0,d0
.L665:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L664
	mov -1,a0
	add r0,a0
	mov a0,r0
	btst 255,a0
	bne .L665
.L664:
	cmp 0,r1
	beq .L662
	not d0
	inc d0
.L662:
	retf [],0
.L670:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L663
.L668:
	mov 0,d0
	jmp .L664
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L676
	mov 0,d2
.L672:
	cmp 0,d1
	blt .L677
.L673:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L671
	not d0
	inc d0
.L671:
	ret [d2],20
.L676:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L672
.L677:
	not d1
	inc d1
	xor 1,d2
	jmp .L673
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L683
	mov 0,d2
.L679:
	mov_cmp a0, d1, 0, a0
	blt .L684
.L680:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L678
	not d0
	inc d0
.L678:
	ret [d2],20
.L683:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L679
.L684:
	mov 0,d1
	sub a0,d1
	jmp .L680
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r2
	mov d0,r0
	mov d1,a0
	exthu d1
	exthu d0
	mov 1,a1
	cmp d0,d1
	bcc .L687
	mov 16,d1
	mov 1,a1
	exthu r0,r1
.L686:
	exth a0,d0
	cmp 0,d0
	blt .L687
	mov a0,d0
	add d0,d0
	mov d0,a0
	add a1,a1
	exthu d0
	cmp d0,r1
	bls .L687
	add -1,d1
	bne .L686
.L687:
	exthu a1,d1
	mov 0,d0
	cmp 0,d1
	bne .L689
.L690:
	cmp 0,r2
	bne .L699
.L685:
	retf [],0
.L692:
	exthu a1,d1
	lsr 1,d1
	mov d1,a1
	asl 16,a0
	lsr 17,a0
	cmp 0,d1
	beq .L690
.L689:
	exthu r0,d1
	exthu a0,r1
	cmp r1,d1
	bcs .L692
	or_sub a1, d0, a0, r0
	jmp .L692
.L699:
	mov r0,d0
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L702
	mov 32,d0
	mov 1,a0
.L701:
	cmp 0,d1
	blt .L702
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L702
	add -1,d0
	bne .L701
.L702:
	mov 0,d0
	cmp d0,a0
	bne .L704
.L705:
	cmp 0,r0
	bne .L714
.L700:
	retf [],0
.L707:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L705
.L704:
	cmp d1,a1
	bcs .L707
	or_sub a0, d0, d1, a1
	jmp .L707
.L714:
	mov a1,d0
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
	beq .L716
	mov 0,d0
	asl r2,r0,d1
.L717:
	mov_mov d0, a0, d1, a1
.L718:
	mov_mov a0, d0, a1, d1
	retf [],0
.L716:
	cmp 0,r2
	beq .L718
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a1,a0,d1
	jmp .L717
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov d1,r1
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L721
	asr 31,d1
	asr r2,r1,d0
.L722:
	mov_mov d0, a0, d1, a1
.L723:
	mov_mov a0, d0, a1, d1
	retf [],0
.L721:
	cmp 0,r2
	beq .L723
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
	jmp .L722
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
	mov 1,a1
	cmp 65535,d0
	bls .L728
	mov 0,a1
.L728:
	extbu a1
	asl 4,a1
	mov 16,d1
	sub a1,d1
	lsr d1,d0,d1
	mov 1,a0
	btst 65280,d1
	beq .L729
	mov 0,a0
.L729:
	extbu a0,d0
	asl2 d0
	add d0,d0
	mov 8,a0
	sub d0,a0
	add_lsr a1, d0, a0, d1
	mov 1,a0
	btst 240,d1
	beq .L730
	mov 0,a0
.L730:
	extbu a0
	mov_asl 4, a1, 2, a0
	sub a0,a1
	add_lsr a0, d0, a1, d1
	mov 1,a0
	btst 12,d1
	beq .L731
	mov 0,a0
.L731:
	extbu a0
	mov_asl 2, a1, 1, a0
	sub a0,a1,r0
	add_lsr a0, d0, r0, d1
	mov d1,a0
	and a1,a0
	sub_lsr d1, a1, 1, a0
	add -1,a0
	and a1,a0,d1
	add d1,d0
	retf [],0
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bgt .L734
	cmp a1,d1
	blt .L735
	cmp a0,d0
	bhi .L736
	bcs .L737
	mov 1,d0
	retf [],0
.L734:
	mov 0,d0
	retf [],0
.L735:
	mov 2,d0
	retf [],0
.L736:
	mov 0,d0
	retf [],0
.L737:
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
	mov 1,a1
	cmp 0,d1
	beq .L740
	mov 0,a1
.L740:
	extbu a1
	asl 4,a1
	lsr a1,d0,d1
	extbu d1,d0
	mov 1,a0
	cmp 0,d0
	beq .L741
	mov 0,a0
.L741:
	extbu a0,d0
	asl2 d0
	add d0,d0
	add_lsr a1, d0, d0, d1
	mov 1,a0
	btst 15,d1
	beq .L742
	mov 0,a0
.L742:
	extbu a0
	asl2 a0
	add_lsr a0, d0, a0, d1
	mov 1,a0
	btst 3,d1
	beq .L743
	mov 0,a0
.L743:
	extbu a0
	add a0,a0
	lsr a0,d1
	and 3,d1
	add_mov a0, d0, d1, a1
	not a1
	and 1,a1
	mov_lsr 2, a0, 1, d1
	sub d1,a0,d1
	not a1
	inc a1
	and a1,d1
	add d1,d0
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
	beq .L745
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L746:
	mov_mov d0, r0, d1, r1
.L747:
	mov_mov r0, d0, r1, d1
	retf [],0
.L745:
	cmp 0,r2
	beq .L747
	mov_lsr 0, a0, r2, d1
	sub r2,a0
	asl a0,a1,a0
	lsr r2,r0
	or r0,a0,d0
	jmp .L746
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	exthu d0,r0
	exthu d1,r1
	mul r0,r1,a0,r2
	mov r2,r3
	lsr 16,r3
	exthu r2
	lsr 16,d0
	mul d0,r1
	add r3,r1
	mov r1,r3
	asl 16,r3
	add r2,r3,a0
	mov r1,a1
	lsr 16,a1
	mov a0,r2
	lsr 16,r2
	exthu a0,r1
	lsr 16,d1
	mul d1,r0
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
	mov_mov d0, r6, d1, r7
	mov a2,d1
	call +__muldsi3,[],0
	mov_mov d0, r0, d1, r1
	mul r5,a2,d0,d1
	mul a3,r6
	add r6,d1
	add_mov r1, d1, r0, d2
	mov_mov d1, d3, r0, d0
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
	xor d0,d1
	mov d1,d0
	lsr 8,d0
	xor d1,d0
	mov d0,d1
	lsr 4,d1
	xor d0,d1
	and 15,d1
	mov 27030,d0
	asr d1,d0
	and 1,d0
	retf [],0
	.size	__paritydi2, .-__paritydi2
	.global __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	mov d0,d1
	lsr 16,d1
	xor d0,d1
	mov d1,d0
	lsr 8,d0
	xor d1,d0
	mov d0,d1
	lsr 4,d1
	xor d0,d1
	and 15,d1
	mov 27030,d0
	asr d1,d0
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
	lsr 1,d0
	or_lsr r0, d0, 1, d1
	mov d0,r0
	and 1431655765,r0
	mov d1,r1
	and 1431655765,r1
	sub r0,a0,d0
	subc r1,a1,d1
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
	mov r0,a0
	and 252645135,a0
	mov r1,a1
	and 252645135,a1
	mov a1,d0
	add a0,d0
	mov d0,d1
	lsr 16,d1
	add d0,d1
	mov d1,d0
	lsr 8,d0
	add d1,d0
	and 127,d0
	retf [d2],4
	.size	__popcountdi2, .-__popcountdi2
	.global __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	mov d0,d1
	lsr 1,d1
	and 1431655765,d1
	sub d1,d0
	mov d0,d1
	lsr 2,d1
	and 858993459,d1
	and 858993459,d0
	add d0,d1
	mov d1,d0
	lsr 4,d0
	add d1,d0
	and 252645135,d0
	mov d0,d1
	lsr 16,d1
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
	jmp .L759
.L757:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L758
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L759:
	btst 1,a2
	beq .L757
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
	jmp .L757
.L758:
	cmp 0,a3
	beq .L756
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, r4, d1, r5
.L756:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
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
	jmp .L764
.L762:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L763
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L764:
	btst 1,d2
	beq .L762
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L762
.L763:
	cmp 0,a3
	beq .L761
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,a2
.L761:
	mov a2,d0
	ret [d2,d3,a2,a3],28
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bhi .L768
	cmp a1,d1
	bcs .L769
	cmp a0,d0
	bhi .L770
	bcs .L771
	mov 1,d0
	retf [],0
.L768:
	mov 0,d0
	retf [],0
.L769:
	mov 2,d0
	retf [],0
.L770:
	mov 0,d0
	retf [],0
.L771:
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
