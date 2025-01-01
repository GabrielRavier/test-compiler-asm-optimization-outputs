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
	beq .L16
.L9:
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L17
	add_add -1, a0, 1, d1
	add_cmp 1, d0, 0, a0
	bne .L9
	mov 0,d0
	jmp .L8
.L16:
	mov 0,d0
	jmp .L8
.L17:
	inc d0
.L8:
	mov d0,a0
	retf [],0
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L24
.L19:
	movbu (d0),a1
	cmp d1,a1
	beq .L18
	inc d0
	add -1,a0
	bne .L19
	mov 0,d0
.L18:
	mov d0,a0
	retf [],0
.L24:
	mov 0,d0
	jmp .L18
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L33
.L26:
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	bne .L34
	add_add -1, a0, 1, d0
	add_cmp 1, d1, 0, a0
	bne .L26
	mov 0,d0
	retf [],0
.L33:
	mov 0,d0
	retf [],0
.L34:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	mov (12,sp),a0
	cmp 0,a0
	beq .L36
	mov 0,a1
	setlb
.L37:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a0,a1
	Lne # loop back to: .L37
.L36:
	mov d0,a0
	retf [],0
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	mov d0,r0
	extbu d1
	mov (12,sp),a0
	add -1,a0
	add_add d0, a0, -1, r0
.L40:
	cmp r0,a0
	beq .L43
	mov a0,d0
	movbu (a0),a1
	add_cmp -1, a0, d1, a1
	bne .L40
	jmp .L39
.L43:
	mov 0,d0
.L39:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L45
	add_mov d0, r0, d0, a1
	setlb
.L46:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L46
.L45:
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
	beq .L49
	setlb
.L50:
	add_add 1, d1, 1, d0
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	Lne # loop back to: .L50
.L49:
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	movbu (d0),a0
	cmp 0,a0
	beq .L52
.L53:
	movbu (d0),a0
	cmp d1,a0
	beq .L52
	inc d0
	movbu (d0),a0
	cmp 0,a0
	bne .L53
.L52:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L60:
	movbu (d0),a0
	extbu a0,a1
	cmp d1,a1
	beq .L59
	add_cmp 1, d0, 0, a1
	bne .L60
	mov 0,d0
.L59:
	mov d0,a0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	bne .L64
.L63:
	movbu (d0),a0
	cmp 0,a0
	beq .L64
	add_add 1, d0, 1, d1
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	beq .L63
.L64:
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
	beq .L70
	mov d0,d1
	setlb
.L69:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L69
.L68:
	sub d0,d1,d0
	retf [],0
.L70:
	mov d0,d1
	jmp .L68
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),a0
	mov -1,r0
	add_cmp a0, r0, 0, a0
	beq .L77
	movbu (d0),a0
	cmp 0,a0
	beq .L74
	add d0,r0
.L75:
	movbu (d1),a0
	extbu a0,a1
	cmp 0,a1
	beq .L74
	cmp d0,r0
	beq .L78
	mov a1,a0
	movbu (d0),a1
	cmp a1,a0
	bne .L74
	add_add 1, d0, 1, d1
	movbu (d0),a0
	cmp 0,a0
	bne .L75
	jmp .L74
.L78:
	mov r0,d0
.L74:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L77:
	mov 0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a1
	cmp 1,a1
	ble .L79
	and -2,a1
	add d0,a1
	setlb
.L81:
	movbu (1,d0),a0
	movbu a0,(d1)
	movbu (d0),a0
	movbu a0,(1,d1)
	add_add 2, d1, 2, d0
	cmp a1,d0
	Lne # loop back to: .L81
.L79:
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
	bls .L84
	mov 0,d0
.L84:
	and 1,d0
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov 1,d1
	cmp 127,d0
	bls .L86
	mov 0,d1
.L86:
	mov d1,d0
	and 1,d0
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L90
	mov 1,d1
	cmp 9,d0
	beq .L89
	mov 0,d1
.L89:
	extbu d1,d0
	retf [],0
.L90:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L94
	mov 1,d1
	cmp 127,d0
	beq .L93
	mov 0,d1
.L93:
	extbu d1,d0
	retf [],0
.L94:
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
	bls .L96
	mov 0,d0
.L96:
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
	bls .L98
	mov 0,d0
.L98:
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
	bls .L100
	mov 0,d0
.L100:
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
	bls .L102
	mov 0,d0
.L102:
	and 1,d0
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L106
	add -9,d0
	mov 1,d1
	cmp 4,d0
	bls .L105
	mov 0,d1
.L105:
	extbu d1,d0
	retf [],0
.L106:
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
	bls .L108
	mov 0,d0
.L108:
	and 1,d0
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L112
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L113
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L114
	add -65529,d0
	mov 1,d1
	cmp 2,d0
	bls .L111
	mov 0,d1
.L111:
	extbu d1,d0
	retf [],0
.L112:
	mov 1,d0
	retf [],0
.L113:
	mov 1,d0
	retf [],0
.L114:
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
	bls .L116
	mov 0,d0
.L116:
	and 1,d0
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L125
	cmp 8231,d0
	bls .L121
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L122
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L123
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L124
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L125:
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L119
	mov 0,d1
.L119:
	extbu d1,d0
	retf [],0
.L121:
	mov 1,d0
	retf [],0
.L122:
	mov 1,d0
	retf [],0
.L123:
	mov 1,d0
	retf [],0
.L124:
	mov 0,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L129
	or 32,d0
	add -97,d0
	mov 1,d1
	cmp 5,d0
	bls .L128
	mov 0,d1
.L128:
	extbu d1,d0
	retf [],0
.L129:
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
	bne .L134
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L135
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L138
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L131:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L134:
	mov_mov d2, a0, d3, a1
	jmp .L131
.L135:
	mov_mov a2, a0, a3, a1
	jmp .L131
.L138:
	mov 0,a0
	mov a0,a1
	jmp .L131
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
	bne .L142
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L143
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L146
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
.L139:
	ret [d2,d3],20
.L142:
	mov d2,d0
	jmp .L139
.L143:
	mov d3,d0
	jmp .L139
.L146:
	mov 0,d0
	jmp .L139
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
	bne .L153
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L154
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L149
	cmp 0,d0
	beq .L155
	mov_mov a2, a0, a3, a1
	jmp .L147
.L149:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L151
	mov_mov a2, d0, a3, d1
.L152:
	mov_mov d0, a0, d1, a1
.L147:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L151:
	mov_mov d2, d0, d3, d1
	jmp .L152
.L153:
	mov_mov a2, a0, a3, a1
	jmp .L147
.L154:
	mov_mov d2, a0, d3, a1
	jmp .L147
.L155:
	mov_mov d2, a0, d3, a1
	jmp .L147
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
	bne .L162
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L163
	mov d2,d0
	and -2147483648,d0
	mov d3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L158
	cmp 0,d0
	beq .L164
	mov d3,d0
	jmp .L156
.L158:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L161
	mov d3,d2
.L161:
	mov d2,d0
.L156:
	ret [d2,d3],20
.L162:
	mov d3,d0
	jmp .L156
.L163:
	mov d2,d0
	jmp .L156
.L164:
	mov d2,d0
	jmp .L156
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
	bne .L171
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L172
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L167
	cmp 0,d0
	beq .L173
	mov_mov a2, a0, a3, a1
	jmp .L165
.L167:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L169
	mov_mov a2, d0, a3, d1
.L170:
	mov_mov d0, a0, d1, a1
.L165:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L169:
	mov_mov d2, d0, d3, d1
	jmp .L170
.L171:
	mov_mov a2, a0, a3, a1
	jmp .L165
.L172:
	mov_mov d2, a0, d3, a1
	jmp .L165
.L173:
	mov_mov d2, a0, d3, a1
	jmp .L165
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
	bne .L180
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L181
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L176
	cmp 0,d0
	beq .L182
	mov_mov d2, a0, d3, a1
	jmp .L174
.L176:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L178
	mov_mov d2, d0, d3, d1
.L179:
	mov_mov d0, a0, d1, a1
.L174:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L178:
	mov_mov a2, d0, a3, d1
	jmp .L179
.L180:
	mov_mov a2, a0, a3, a1
	jmp .L174
.L181:
	mov_mov d2, a0, d3, a1
	jmp .L174
.L182:
	mov_mov a2, a0, a3, a1
	jmp .L174
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
	bne .L189
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L190
	mov d3,d0
	and -2147483648,d0
	mov d2,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L185
	cmp 0,d0
	beq .L191
	mov d3,d0
	jmp .L183
.L185:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L188
	mov d3,d2
.L188:
	mov d2,d0
.L183:
	ret [d2,d3],20
.L189:
	mov d2,d0
	jmp .L183
.L190:
	mov d3,d0
	jmp .L183
.L191:
	mov d2,d0
	jmp .L183
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
	bne .L198
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L199
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L194
	cmp 0,d0
	beq .L200
	mov_mov d2, a0, d3, a1
	jmp .L192
.L194:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L196
	mov_mov d2, d0, d3, d1
.L197:
	mov_mov d0, a0, d1, a1
.L192:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L196:
	mov_mov a2, d0, a3, d1
	jmp .L197
.L198:
	mov_mov a2, a0, a3, a1
	jmp .L192
.L199:
	mov_mov d2, a0, d3, a1
	jmp .L192
.L200:
	mov_mov a2, a0, a3, a1
	jmp .L192
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
	beq .L204
	mov +s.0,d1
	setlb
.L203:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L203
.L202:
	mov 0,d0
	movbu d0,(d1)
	mov +s.0,d0
	mov d0,a0
	retf [],0
.L204:
	mov +s.0,d1
	jmp .L202
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
	beq .L211
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L208
	mov d0,(4,d1)
.L208:
	retf [],0
.L211:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L213
	mov (4,d0),a0
	mov a0,(4,d1)
.L213:
	mov (4,d0),d1
	cmp 0,d1
	beq .L212
	mov (d0),d0
	mov d0,(d1)
.L212:
	retf [],0
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov_mov d0, r4, d1, r7
	mov (64,sp),r5
	mov (68,sp),a3
	mov (60,sp),d0
	mov (d0),a2
	cmp 0,a2
	beq .L216
	mov_mov d1, d2, 0, d3
.L218:
	mov_mov d2, r6, d2, d1
	mov r4,d0
	calls (a3)
	cmp 0,d0
	beq .L215
	add_add 1, d3, r5, d2
	cmp d3,a2
	bne .L218
.L216:
	mov 1,d0
	add a2,d0
	mov (60,sp),d1
	mov d0,(d1)
	mul r5,a2,d1,d0
	mov r5,(12,sp)
	mov_add r4, d1, r7, d0
	call +memcpy,[],0
	mov a0,r6
.L215:
	mov_mov r6, a0, r6, d0
	ret [d2,d3,a2,a3,exreg1],48
	.size	lsearch, .-lsearch
	.global lfind
	.type	lfind, @function
lfind:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,a2
	mov (60,sp),r5
	mov (64,sp),r4
	mov (56,sp),d0
	mov (d0),a3
	cmp 0,a3
	beq .L223
	mov_mov d1, d2, 0, d3
.L222:
	mov_mov d2, r6, d2, d1
	mov_mov a2, d0, r4, a0
	calls (a0)
	cmp 0,d0
	beq .L220
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L222
	mov 0,r6
.L220:
	mov_mov r6, a0, r6, d0
	ret [d2,d3,a2,a3,exreg1],44
.L223:
	mov 0,r6
	jmp .L220
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
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,d2
	jmp .L229
.L230:
	inc d2
.L229:
	movbu (d2),d3
	extbu d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L230
	extbu d3,d1
	cmp 43,d1
	beq .L236
	mov d1,d3
	cmp 45,d1
	bne .L237
	mov 1,a0
.L231:
	inc d2
.L232:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bhi .L233
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
	ret [d2,d3],20
.L236:
	mov d0,a0
	jmp .L231
.L237:
	mov d0,a0
	jmp .L232
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,d2
	jmp .L240
.L241:
	inc d2
.L240:
	movbu (d2),d3
	extbu d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L241
	extbu d3,d1
	cmp 43,d1
	beq .L247
	mov d1,d3
	cmp 45,d1
	bne .L248
	mov 1,a0
.L242:
	inc d2
.L243:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bhi .L244
	setlb
.L245:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	Lls # loop back to: .L245
.L244:
	cmp 0,a0
	bne .L239
	not d0
	inc d0
.L239:
	ret [d2,d3],20
.L247:
	mov d0,a0
	jmp .L242
.L248:
	mov d0,a0
	jmp .L243
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,d2
	jmp .L251
.L252:
	inc d2
.L251:
	movbu (d2),d3
	extbu d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L252
	extbu d3,d1
	cmp 43,d1
	beq .L253
	mov d1,d3
	cmp 45,d1
	bne .L254
	mov 1,d0
.L253:
	inc d2
.L254:
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	bhi .L258
	mov 0,a0
	mov a0,a1
	mov 10,d3
	setlb
.L256:
	mov 10,d1
	mul a1,d1
	mulu a0,d3,a3,a2
	add_add d1, a3, 1, d2
	movbu (-1,d2),d1
	add -48,d1
	mov_mov d1, r4, d1, r5
	asr 31,r5
	sub d1,a2,a0
	subc r5,a3,a1
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	Lls # loop back to: .L256
.L255:
	cmp 0,d0
	bne .L250
	sub a0,d0,a0
	subc a1,d0,a1
.L250:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],44
.L258:
	mov 0,a0
	mov a0,a1
	jmp .L255
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov_mov d0, r5, d1, a3
	mov (56,sp),d3
	mov (60,sp),r4
	mov (64,sp),r6
	cmp 0,d3
	bne .L263
	mov 0,d2
	jmp .L260
.L265:
	mov a2,d3
.L262:
	cmp 0,d3
	beq .L267
.L263:
	mov d3,a2
	lsr 1,a2
	mul a2,r4,d0,d2
	add a3,d2
	mov_mov d2, d1, r5, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	blt .L265
	ble .L260
	add r4,d2,a3
	add -1,d3
	sub a2,d3
	jmp .L262
.L267:
	mov 0,d2
.L260:
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
	bne .L271
	mov 0,d2
	jmp .L268
.L270:
	asr 1,d3
	cmp 0,d3
	beq .L274
.L271:
	mov d3,d2
	asr 1,d2
	mul a3,d2
	add a2,d2
	mov r5,(12,sp)
	mov_mov d2, d1, r4, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	beq .L268
	ble .L270
	add a3,d2,a2
	add -1,d3
	jmp .L270
.L274:
	mov 0,d2
.L268:
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
	blt .L279
.L277:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L279:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L277
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
	blt .L283
.L282:
	retf [],0
.L283:
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
	blt .L288
.L286:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L288:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L286
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
.L291:
	mov (d0),a0
	cmp d1,a0
	beq .L293
	add 4,d0
	mov (d0),a0
	cmp 0,a0
	bne .L291
.L293:
	mov (d0),d1
	cmp 0,d1
	beq .L298
.L290:
	mov d0,a0
	retf [],0
.L297:
	mov 0,d0
	jmp .L290
.L298:
	mov 0,d0
	jmp .L290
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L301
.L300:
	mov (d0),a0
	cmp 0,a0
	beq .L301
	mov (d1),a0
	cmp 0,a0
	beq .L301
	add_add 4, d0, 4, d1
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	beq .L300
.L301:
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L305
	mov 1,d0
	bgt .L304
	mov 0,d0
.L304:
	extbu d0
	retf [],0
.L305:
	mov -1,d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov 0,a1
	setlb
.L308:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L308
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L313
	mov d0,d1
	setlb
.L312:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L312
.L311:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
.L313:
	mov d0,d1
	jmp .L311
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L324
.L316:
	mov (d0),a1
	mov (d1),r0
	cmp r0,a1
	bne .L318
	cmp 0,a1
	beq .L318
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L316
	mov 0,d0
	retf [],0
.L324:
	mov 0,d0
	retf [],0
.L321:
	mov 1,d0
	bgt .L320
	mov 0,d0
.L320:
	extbu d0
	retf [],0
.L318:
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	bge .L321
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L331
.L326:
	mov (d0),a1
	cmp d1,a1
	beq .L325
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L326
	mov 0,d0
.L325:
	mov d0,a0
	retf [],0
.L331:
	mov 0,d0
	jmp .L325
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L342
.L333:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L343
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L333
	mov 0,d0
	retf [],0
.L342:
	mov 0,d0
	retf [],0
.L338:
	mov 1,d0
	bgt .L337
	mov 0,d0
.L337:
	extbu d0
	retf [],0
.L343:
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	bge .L338
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov (12,sp),a0
	mov -1,r0
	add_cmp a0, r0, 0, a0
	beq .L345
	mov 0,a1
	setlb
.L346:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	add_add -1, r0, 4, a1
	cmp -1,r0
	Lne # loop back to: .L346
.L345:
	mov d0,a0
	retf [],0
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),r0
	cmp d1,d0
	beq .L349
	sub d1,d0,a1
	mov r0,a0
	asl2 a0
	cmp a0,a1
	bcs .L350
	mov -1,a0
	add_mov r0, a0, 0, a1
	cmp a1,r0
	beq .L349
	setlb
.L351:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	add_add -1, a0, 4, a1
	cmp -1,a0
	Lne # loop back to: .L351
	jmp .L349
.L350:
	mov -1,a1
	add_cmp r0, a1, 0, r0
	beq .L349
	asl2 a1
	setlb
.L352:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L352
.L349:
	mov d0,a0
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a0
	mov -1,a1
	add_cmp a0, a1, 0, a0
	beq .L358
	mov d0,r0
	setlb
.L359:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L359
.L358:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L362
	cmp 0,a0
	beq .L361
	add_add -1, d0, -1, d1
	setlb
.L364:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L364
	retf [],0
.L362:
	beq .L361
	cmp 0,a0
	beq .L361
	mov 0,a1
	setlb
.L365:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a0,a1
	Lne # loop back to: .L365
.L361:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L369
	mov 0,r2
	asl d0,r0,r3
.L370:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L371
	mov 0,a0
	sub_mov d0, a0, 0, d0
	mov d0,d1
	lsr a0,r1,d0
.L372:
	or r2,d0,a0
	or r3,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L369:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
	jmp .L370
.L371:
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
	jmp .L372
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L374
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
.L375:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L376
	mov 0,a0
	sub_mov d0, a0, 0, d0
	asl a0,r0,d1
.L377:
	or r2,d0,a0
	or r3,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L374:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
	jmp .L375
.L376:
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
	jmp .L377
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
	and 15,d1
	asl d1,d0,a0
	exthu d0
	not d1
	inc d1
	and 15,d1
	lsr d1,d0
	or a0,d0
	retf [],0
	.size	rotl16, .-rotl16
	.global rotr16
	.type	rotr16, @function
rotr16:
	and 15,d1
	exthu d0,a0
	lsr d1,a0
	not d1
	inc d1
	and 15,d1
	asl d1,d0
	or a0,d0
	retf [],0
	.size	rotr16, .-rotr16
	.global rotl8
	.type	rotl8, @function
rotl8:
	and 7,d1
	asl d1,d0,a0
	extbu d0
	not d1
	inc d1
	and 7,d1
	lsr d1,d0
	or a0,d0
	retf [],0
	.size	rotl8, .-rotl8
	.global rotr8
	.type	rotr8, @function
rotr8:
	and 7,d1
	extbu d0,a0
	lsr d1,a0
	not d1
	inc d1
	and 7,d1
	asl d1,d0
	or a0,d0
	retf [],0
	.size	rotr8, .-rotr8
	.global bswap_16
	.type	bswap_16, @function
bswap_16:
	mov d0,d1
	and 65280,d1
	lsr 8,d1
	asl 8,d0
	or d1,d0
	retf [],0
	.size	bswap_16, .-bswap_16
	.global bswap_32
	.type	bswap_32, @function
bswap_32:
	mov_mov d0, d1, d0, a1
	lsr 24,a1
	mov d0,a0
	lsr 8,a0
	and 65280,a0
	asl 8,d0
	and 16711680,d0
	asl 24,d1
	or a1,d1
	or a0,d1
	or d1,d0
	retf [],0
	.size	bswap_32, .-bswap_32
	.global bswap_64
	.type	bswap_64, @function
bswap_64:
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
	or d0,r4,a2
	or a2,r6,d0
	or d0,d1,a2
	or r1,d3,a3
	or a2,d1,d0
	or a3,a1,d1
	or d0,r5,a0
	or d1,r3,a1
	mov_mov a0, d0, a1, d1
	retf [d2,d3,a2,a3,exreg1],48
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	mov 0,d1
.L392:
	lsr d1,d0,a0
	btst 1,a0
	bne .L394
	inc d1
	cmp 32,d1
	bne .L392
	mov 0,d0
	retf [],0
.L394:
	mov 1,d0
	add d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov_cmp d0, d1, 0, d0
	beq .L395
	and 1,d0
	bne .L395
	mov 1,d0
	setlb
.L397:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L397
	retf [],0
.L395:
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
	blt .L403
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L404
.L402:
	extbu d2,d0
.L400:
	ret [d2,d3],20
.L404:
	mov 0,d2
	jmp .L402
.L403:
	mov 1,d0
	jmp .L400
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
	blt .L408
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L409
.L407:
	extbu a2,d0
.L405:
	ret [d2,d3,a2],32
.L409:
	mov 0,a2
	jmp .L407
.L408:
	mov 1,d0
	jmp .L405
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
	blt .L413
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L414
.L412:
	extbu a2,d0
.L410:
	ret [d2,d3,a2],32
.L414:
	mov 0,a2
	jmp .L412
.L413:
	mov 1,d0
	jmp .L410
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
	bne .L417
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L417
	cmp 0,d2
	blt .L424
	mov 1073741824,d3
	jmp .L421
.L424:
	mov 1056964608,d3
	jmp .L421
.L420:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L417
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L421:
	btst 1,d2
	beq .L420
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L420
.L417:
	mov a2,d0
	ret [d2,d3,a2],24
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [d2,d3,a2,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (60,sp),a2
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L426
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov d2,(12,sp)
	mov d3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L426
	cmp 0,a2
	blt .L433
	mov 0,r4
	mov 1073741824,r5
	jmp .L430
.L433:
	mov 0,r4
	mov 1071644672,r5
	jmp .L430
.L429:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L426
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L430:
	btst 1,a2
	beq .L429
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L429
.L426:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [d2,d3,a2,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (60,sp),a2
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L435
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov d2,(12,sp)
	mov d3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L435
	cmp 0,a2
	blt .L442
	mov 0,r4
	mov 1073741824,r5
	jmp .L439
.L442:
	mov 0,r4
	mov 1071644672,r5
	jmp .L439
.L438:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L435
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L439:
	btst 1,a2
	beq .L438
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L438
.L435:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L444
	add_mov d1, r2, d0, a1
	setlb
.L445:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
	cmp d1,r2
	Lne # loop back to: .L445
.L444:
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
	beq .L449
.L448:
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L451
	add_add 1, d2, 1, d0
	add -1,d3
	bne .L448
.L449:
	mov 0,d1
	movbu d1,(d0)
.L451:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
	cmp d0,d1
	beq .L460
.L454:
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L461
.L453:
	retf [],0
.L460:
	mov d1,d0
	retf [],0
.L461:
	inc d0
	cmp d0,d1
	bne .L454
	mov d1,d0
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),a0
	cmp 0,a0
	beq .L469
.L463:
	mov d1,a1
.L466:
	movbu (a1),a0
	extbu a0,r0
	cmp 0,r0
	beq .L470
	inc a1
	movbu (d0),r0
	extbu a0
	cmp a0,r0
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
	mov_mov d0, a1, 0, d0
	jmp .L473
.L472:
	inc a1
	extbu a0
	cmp 0,a0
	beq .L476
.L473:
	movbu (a1),a0
	extbu a0,r0
	cmp d1,r0
	bne .L472
	mov a1,d0
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
	blt .L492
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
.L492:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L486
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
	cmp d0,d1
	bcs .L498
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
	jmp .L493
.L502:
	mov 0,d0
.L493:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L497:
	mov d2,d0
	jmp .L493
.L498:
	mov 0,d0
	jmp .L493
.L499:
	mov 0,d0
	jmp .L493
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
	and r0,r6,d2
	and r1,r7,d3
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
	bcc .L543
	mov 32,d0
	mov 1,a0
.L536:
	cmp 0,d1
	blt .L543
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L538
	add -1,d0
	bne .L536
.L539:
	cmp 0,r0
	bne .L548
.L535:
	retf [],0
.L541:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L539
.L542:
	cmp d1,a1
	bcs .L541
	or_sub a0, d0, d1, a1
	jmp .L541
.L538:
	cmp 0,a0
	beq .L549
.L543:
	mov 0,d0
	jmp .L542
.L549:
	mov a0,d0
	jmp .L539
.L548:
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
	mov_mov d0, a0, d1, d0
	asr 31,d0
	xor d0,a0,r0
	xor d0,d1,r1
	cmp d0,a0
	beq .L561
.L559:
	cmp 0,r1
	beq .L556
	mov 0,d0
	bsch r1, d0
	xor 31,d0
.L557:
	add -1,d0
	retf [],0
.L561:
	cmp d0,d1
	bne .L559
	mov 63,d0
	retf [],0
.L556:
	mov 0,d0
	bsch r0, d0
	xor 31,d0
	add 32,d0
	jmp .L557
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_cmp d0, a1, 0, d0
	beq .L565
	mov 0,d0
	setlb
.L564:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L564
	retf [],0
.L565:
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
	bcs .L568
	add r3,d1,a0
	cmp d0,a0
	bcs .L568
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L567
	setlb
.L569:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L569
	jmp .L567
.L568:
	cmp 0,d2
	beq .L571
	mov_asl 0, a0, 3, d2
	setlb
.L572:
	mov (a0,d1),r0
	add a0,d1,r2
	mov (4,r2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp d2,a0
	Lne # loop back to: .L572
.L571:
	cmp a1,r3
	bls .L567
	setlb
.L573:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L573
.L567:
	retf [d2],4
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcs .L579
	add r1,d1,a0
	cmp d0,a0
	bcs .L579
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L587
	setlb
.L580:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L580
.L578:
	retf [],0
.L587:
	retf [],0
.L579:
	cmp 0,r0
	beq .L582
	mov_asl 0, a0, 1, r0
	setlb
.L583:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L583
.L582:
	btst 1,r1
	beq .L578
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
	bcs .L589
	add r1,d1,a1
	cmp d0,a1
	bcs .L589
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L599
	setlb
.L590:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L590
.L588:
	retf [],0
.L599:
	retf [],0
.L589:
	cmp 0,r2
	beq .L592
	mov_asl 0, a1, 2, r2
	setlb
.L593:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp r2,a1
	Lne # loop back to: .L593
.L592:
	cmp a0,r1
	bls .L588
	setlb
.L594:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L594
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
.L608:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L606
	inc d1
	cmp 16,d1
	bne .L608
.L606:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L612:
	asr d1,d0,a0
	btst 1,a0
	bne .L610
	inc d1
	cmp 16,d1
	bne .L612
.L610:
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
	bge .L620
	mov d2,d0
	call +__fixsfsi,[],0
.L614:
	ret [d2],16
.L620:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L614
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
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
.L625:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L625
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_cmp d0, a1, 0, d0
	beq .L630
	mov 0,d0
	setlb
.L629:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L629
	retf [],0
.L630:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov_cmp d0, a1, 0, d0
	beq .L635
	cmp 0,d1
	beq .L636
	mov 0,d0
	setlb
.L634:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L634
	retf [],0
.L635:
	retf [],0
.L636:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L646
	mov 32,d0
	mov 1,a0
.L639:
	cmp 0,d1
	blt .L646
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L641
	add -1,d0
	bne .L639
.L642:
	cmp 0,r0
	bne .L651
.L638:
	retf [],0
.L644:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L642
.L645:
	cmp d1,a1
	bcs .L644
	or_sub a0, d0, d1, a1
	jmp .L644
.L641:
	cmp 0,a0
	beq .L652
.L646:
	mov 0,d0
	jmp .L645
.L652:
	mov a0,d0
	jmp .L642
.L651:
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
	blt .L656
	mov 1,d2
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L657
.L655:
	extbu d2,d0
.L653:
	ret [d2,d3,a2],24
.L657:
	mov 0,d2
	jmp .L655
.L656:
	mov -1,d0
	jmp .L653
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
	blt .L661
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L662
.L660:
	extbu r4,d0
.L658:
	ret [d2,d3,a2,a3,exreg1],52
.L662:
	mov 0,r4
	jmp .L660
.L661:
	mov -1,d0
	jmp .L658
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
	blt .L673
	mov 0,r1
	cmp r1,d1
	beq .L674
.L670:
	mov 32,r0
	mov 0,d0
.L668:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L667
	mov -1,a0
	add r0,a0
	mov a0,r0
	btst 255,a0
	bne .L668
.L667:
	cmp 0,r1
	beq .L665
	not d0
	inc d0
	retf [],0
.L673:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L670
.L674:
	mov d1,d0
.L665:
	retf [],0
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	add -16,sp
	cmp 0,d0
	blt .L683
	cmp 0,d1
	blt .L684
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	jmp .L675
.L683:
	not d0
	add_cmp 1, d0, 0, d1
	blt .L685
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
.L679:
	not d0
	inc d0
.L675:
	ret [],16
.L684:
	mov 0,a0
	mov a0,(12,sp)
	not d1
	inc d1
	call +__udivmodsi4,[],0
	jmp .L679
.L685:
	mov 0,a0
	mov a0,(12,sp)
	not d1
	inc d1
	call +__udivmodsi4,[],0
	jmp .L675
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L691
	cmp 0,d1
	blt .L692
.L689:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	jmp .L686
.L691:
	not d0
	add_cmp 1, d0, 0, d1
	blt .L693
.L688:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	not d0
	inc d0
.L686:
	ret [],16
.L693:
	mov 0,d1
	sub a0,d1
	jmp .L688
.L692:
	mov 0,d1
	sub a0,d1
	jmp .L689
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r2
	mov d0,r1
	mov d1,a0
	exthu d1
	exthu d0
	mov 1,a1
	cmp d0,d1
	bcc .L702
	mov 16,r0
	mov 1,a1
	exthu r1,r3
.L695:
	exth a0,d0
	cmp 0,d0
	blt .L702
	mov a0,d0
	add d0,d0
	mov d0,a0
	mov a1,d1
	add d1,d1
	mov d1,a1
	exthu d0
	cmp d0,r3
	bls .L697
	add -1,r0
	bne .L695
	mov 0,d0
.L698:
	cmp 0,r2
	bne .L708
.L694:
	retf [],0
.L700:
	exthu a1,d1
	lsr 1,d1
	mov d1,a1
	asl 16,a0
	lsr 17,a0
	cmp 0,d1
	beq .L698
.L701:
	exthu r1,d1
	exthu a0,r0
	cmp r0,d1
	bcs .L700
	or_sub a1, d0, a0, r1
	jmp .L700
.L697:
	exthu d1,d0
	cmp 0,d0
	beq .L709
.L702:
	mov 0,d0
	jmp .L701
.L709:
	mov d1,d0
	jmp .L698
.L708:
	mov r1,d0
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L718
	mov 32,d0
	mov 1,a0
.L711:
	cmp 0,d1
	blt .L718
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L713
	add -1,d0
	bne .L711
.L714:
	cmp 0,r0
	bne .L723
.L710:
	retf [],0
.L716:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L714
.L717:
	cmp d1,a1
	bcs .L716
	or_sub a0, d0, d1, a1
	jmp .L716
.L713:
	cmp 0,a0
	beq .L724
.L718:
	mov 0,d0
	jmp .L717
.L724:
	mov a0,d0
	jmp .L714
.L723:
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
	beq .L726
	mov 0,d0
	asl r2,r0,d1
.L727:
	mov_mov d0, a0, d1, a1
.L728:
	mov_mov a0, d0, a1, d1
	retf [],0
.L726:
	cmp 0,r2
	beq .L728
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a0,a1,d1
	jmp .L727
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov d1,r1
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L731
	asr 31,d1
	asr r2,r1,d0
.L732:
	mov_mov d0, a0, d1, a1
.L733:
	mov_mov a0, d0, a1, d1
	retf [],0
.L731:
	cmp 0,r2
	beq .L733
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
	jmp .L732
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
	or d0,r4,a2
	or a2,r6,d0
	or d0,d1,a2
	or r1,d3,a3
	or a2,d1,d0
	or a3,a1,d1
	or d0,r5,a0
	or d1,r3,a1
	mov_mov a0, d0, a1, d1
	retf [d2,d3,a2,a3,exreg1],48
	.size	__bswapdi2, .-__bswapdi2
	.global __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	mov_mov d0, d1, d0, a1
	lsr 24,a1
	mov d0,a0
	lsr 8,a0
	and 65280,a0
	asl 8,d0
	and 16711680,d0
	asl 24,d1
	or a1,d1
	or a0,d1
	or d1,d0
	retf [],0
	.size	__bswapsi2, .-__bswapsi2
	.global __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	mov 1,a1
	cmp 65535,d0
	bls .L738
	mov 0,a1
.L738:
	extbu a1
	asl 4,a1
	mov 16,d1
	sub a1,d1
	lsr d1,d0,d1
	mov 1,a0
	btst 65280,d1
	beq .L739
	mov 0,a0
.L739:
	extbu a0,d0
	asl2 d0
	add d0,d0
	mov 8,a0
	sub d0,a0
	add_lsr d0, a1, a0, d1
	mov 1,a0
	btst 240,d1
	beq .L740
	mov 0,a0
.L740:
	extbu a0,d0
	mov_asl 4, a0, 2, d0
	sub d0,a0
	add_lsr d0, a1, a0, d1
	mov 1,a0
	btst 12,d1
	beq .L741
	mov 0,a0
.L741:
	extbu a0,d0
	mov_asl 2, a0, 1, d0
	sub d0,a0,r0
	add_lsr a1, d0, r0, d1
	mov d1,a1
	and_sub a0, a1, d1, a0
	cmp 0,a1
	beq .L743
	mov 0,a0
.L743:
	add a0,d0
	retf [],0
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov (12,sp),r2
	mov (16,sp),r3
	mov_cmp d0, r0, r3, d1
	blt .L746
	bgt .L747
	cmp r2,r0
	bcs .L748
	bhi .L749
	mov 1,d0
	retf [],0
.L746:
	mov 0,d0
	retf [],0
.L747:
	mov 2,d0
	retf [],0
.L748:
	mov 0,d0
	retf [],0
.L749:
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
	beq .L752
	mov 0,a1
.L752:
	extbu a1
	asl 4,a1
	lsr a1,d0,d1
	extbu d1,d0
	mov 1,a0
	cmp 0,d0
	beq .L753
	mov 0,a0
.L753:
	extbu a0,d0
	asl2 d0
	add d0,d0
	add_lsr d0, a1, d0, d1
	mov 1,a0
	btst 15,d1
	beq .L754
	mov 0,a0
.L754:
	extbu a0,d0
	asl2 d0
	add_lsr d0, a1, d0, d1
	mov 1,a0
	btst 3,d1
	beq .L755
	mov 0,a0
.L755:
	extbu a0,d0
	add d0,d0
	lsr d0,d1
	and 3,d1
	add_mov a1, d0, d1, a0
	not a0
	and 1,a0
	mov_lsr 2, a1, 1, d1
	sub_mov d1, a1, 0, d1
	sub a0,d1
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
	beq .L757
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L758:
	mov_mov d0, r0, d1, r1
.L759:
	mov_mov r0, d0, r1, d1
	retf [],0
.L757:
	cmp 0,r2
	beq .L759
	mov_lsr 0, a0, r2, d1
	sub r2,a0
	asl a0,a1,a0
	lsr r2,r0
	or r0,a0,d0
	jmp .L758
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movm [d2],(sp)
	exthu d0,a0
	exthu d1,a1
	mul a0,a1,d2,r0
	mov r0,r1
	lsr 16,r1
	lsr 16,d0
	mul d0,a1
	add r1,a1
	mov a1,r2
	lsr 16,r2
	exthu a1
	exthu r0,r1
	mov d1,r0
	lsr 16,r0
	mul a0,r0,d2,d1
	add a1,d1
	mov d1,r3
	asl 16,r3
	add r3,r1,a0
	lsr 16,d1
	mul r0,d0
	add r2,d0
	add_mov d0, d1, a0, d0
	ret [d2],4
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
	mov (64,sp),a3
	mov_mov a3, a2, 0, r4
	mov 1072693248,r5
	jmp .L771
.L769:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L770
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L771:
	btst 1,a2
	beq .L769
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
	jmp .L769
.L770:
	cmp 0,a3
	blt .L773
.L768:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L773:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, r4, d1, r5
	jmp .L768
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a3
	mov d1,d2
	mov 1065353216,a2
	jmp .L777
.L775:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L776
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L777:
	btst 1,d2
	beq .L775
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L775
.L776:
	cmp 0,a3
	blt .L779
.L774:
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L779:
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,a2
	jmp .L774
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov (12,sp),r2
	mov (16,sp),r3
	mov_cmp d0, r0, r3, d1
	bcs .L782
	bhi .L783
	cmp r2,r0
	bcs .L784
	bhi .L785
	mov 1,d0
	retf [],0
.L782:
	mov 0,d0
	retf [],0
.L783:
	mov 2,d0
	retf [],0
.L784:
	mov 0,d0
	retf [],0
.L785:
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
