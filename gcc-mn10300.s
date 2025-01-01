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
	beq .L14
	inc d0
.L12:
	mov d0,a0
	retf [],0
.L14:
	mov 0,d0
	jmp .L12
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a1
	extbu d1
	mov_cmp d0, a0, 0, a1
	beq .L17
.L16:
	movbu (a0),d0
	cmp d0,d1
	beq .L17
	inc a0
	add -1,a1
	bne .L16
.L17:
	cmp 0,a1
	beq .L23
	mov a0,d0
.L19:
	mov d0,a0
	retf [],0
.L23:
	mov 0,d0
	jmp .L19
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L26
.L25:
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	bne .L26
	add_add -1, a0, 1, d0
	add_cmp 1, d1, 0, a0
	bne .L25
.L26:
	cmp 0,a0
	beq .L30
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L30:
	mov 0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	mov (12,sp),a0
	cmp 0,a0
	beq .L32
	mov 0,a1
	setlb
.L33:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a0,a1
	Lne # loop back to: .L33
.L32:
	mov d0,a0
	retf [],0
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	extbu d1
	mov (12,sp),a0
	add -1,a0
.L36:
	cmp -1,a0
	beq .L40
	movbu (a0,d0),a1
	mov -1,r0
	add_cmp a0, r0, a1, d1
	beq .L41
	mov r0,a0
	jmp .L36
.L41:
	add a0,d0
	jmp .L37
.L40:
	mov 0,d0
.L37:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L43
	add_mov d0, r0, d0, a1
	setlb
.L44:
	movbu d1,(a1)
	inc a1
	cmp r0,a1
	Lne # loop back to: .L44
.L43:
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
	beq .L47
	setlb
.L48:
	add_add 1, d1, 1, d0
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	Lne # loop back to: .L48
.L47:
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
.L51:
	movbu (d0),a0
	cmp a0,d1
	beq .L52
	inc d0
	movbu (d0),a0
	cmp 0,a0
	bne .L51
.L52:
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
	bne .L62
.L61:
	movbu (d0),a0
	cmp 0,a0
	beq .L62
	add_add 1, d0, 1, d1
	movbu (d0),a1
	movbu (d1),a0
	cmp a0,a1
	beq .L61
.L62:
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
	beq .L68
	mov d0,d1
	setlb
.L67:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L67
.L66:
	sub d0,d1,d0
	retf [],0
.L68:
	mov d0,d1
	jmp .L66
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L75
	movbu (d0),a0
	cmp 0,a0
	beq .L72
	add -1,r0
	add d0,r0
.L73:
	movbu (d1),a0
	cmp 0,a0
	beq .L72
	cmp r0,d0
	beq .L72
	movbu (d0),a1
	cmp a0,a1
	bne .L72
	add_add 1, d0, 1, d1
	movbu (d0),a0
	cmp 0,a0
	bne .L73
.L72:
	movbu (d0),d0
	movbu (d1),d1
	sub d1,d0
	retf [],0
.L75:
	mov 0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a0
	cmp 1,a0
	ble .L77
	add -2,a0
	and -2,a0
	add 2,a0
	add d0,a0
	setlb
.L79:
	movbu (1,d0),a1
	movbu a1,(d1)
	movbu (d0),a1
	movbu a1,(1,d1)
	add_add 2, d1, 2, d0
	cmp a0,d0
	Lne # loop back to: .L79
.L77:
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
	bls .L82
	mov 0,d0
.L82:
	and 1,d0
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov 1,d1
	cmp 127,d0
	bls .L84
	mov 0,d1
.L84:
	mov d1,d0
	and 1,d0
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L88
	mov 1,d1
	cmp 9,d0
	beq .L87
	mov 0,d1
.L87:
	extbu d1,d0
	retf [],0
.L88:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L92
	mov 1,d1
	cmp 127,d0
	beq .L91
	mov 0,d1
.L91:
	extbu d1,d0
	retf [],0
.L92:
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
	bls .L94
	mov 0,d0
.L94:
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
	bls .L96
	mov 0,d0
.L96:
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
	bls .L98
	mov 0,d0
.L98:
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
	bls .L100
	mov 0,d0
.L100:
	and 1,d0
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L104
	add -9,d0
	mov 1,d1
	cmp 4,d0
	bls .L103
	mov 0,d1
.L103:
	extbu d1,d0
	retf [],0
.L104:
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
	bls .L106
	mov 0,d0
.L106:
	and 1,d0
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L110
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L111
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L112
	add -65529,d0
	mov 1,d1
	cmp 2,d0
	bls .L109
	mov 0,d1
.L109:
	extbu d1,d0
	retf [],0
.L110:
	mov 1,d0
	retf [],0
.L111:
	mov 1,d0
	retf [],0
.L112:
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
	bls .L114
	mov 0,d0
.L114:
	and 1,d0
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L123
	cmp 8231,d0
	bls .L119
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L120
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L121
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L122
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L123:
	inc d0
	and 127,d0
	mov 1,d1
	cmp 32,d0
	bhi .L117
	mov 0,d1
.L117:
	extbu d1,d0
	retf [],0
.L119:
	mov 1,d0
	retf [],0
.L120:
	mov 1,d0
	retf [],0
.L121:
	mov 1,d0
	retf [],0
.L122:
	mov 0,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L127
	or 32,d0
	add -97,d0
	mov 1,d1
	cmp 5,d0
	bls .L126
	mov 0,d1
.L126:
	extbu d1,d0
	retf [],0
.L127:
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
	bne .L132
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L133
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L136
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L130:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L132:
	mov_mov d2, a0, d3, a1
	jmp .L130
.L133:
	mov_mov a2, a0, a3, a1
	jmp .L130
.L136:
	mov 0,a0
	mov a0,a1
	jmp .L130
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
	bne .L140
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L141
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L144
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
.L138:
	ret [d2,d3],20
.L140:
	mov d2,d0
	jmp .L138
.L141:
	mov d3,d0
	jmp .L138
.L144:
	mov 0,d0
	jmp .L138
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
	bne .L151
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L152
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L147
	cmp 0,d3
	bge .L153
	mov_mov a2, a0, a3, a1
	jmp .L146
.L147:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L149
	mov_mov a2, d0, a3, d1
.L150:
	mov_mov d0, a0, d1, a1
.L146:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L149:
	mov_mov d2, d0, d3, d1
	jmp .L150
.L151:
	mov_mov a2, a0, a3, a1
	jmp .L146
.L152:
	mov_mov d2, a0, d3, a1
	jmp .L146
.L153:
	mov_mov d2, a0, d3, a1
	jmp .L146
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
	bne .L160
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L161
	mov d2,d1
	and -2147483648,d1
	mov d3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L156
	mov_cmp d2, d0, 0, d2
	bge .L155
	mov d3,d0
	jmp .L155
.L156:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L159
	mov d3,d2
.L159:
	mov d2,d0
.L155:
	ret [d2,d3],20
.L160:
	mov d3,d0
	jmp .L155
.L161:
	mov d2,d0
	jmp .L155
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
	bne .L169
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L170
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L165
	cmp 0,d3
	bge .L171
	mov_mov a2, a0, a3, a1
	jmp .L164
.L165:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L167
	mov_mov a2, d0, a3, d1
.L168:
	mov_mov d0, a0, d1, a1
.L164:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L167:
	mov_mov d2, d0, d3, d1
	jmp .L168
.L169:
	mov_mov a2, a0, a3, a1
	jmp .L164
.L170:
	mov_mov d2, a0, d3, a1
	jmp .L164
.L171:
	mov_mov d2, a0, d3, a1
	jmp .L164
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
	bne .L178
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L179
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L174
	cmp 0,d3
	bge .L180
	mov_mov d2, a0, d3, a1
	jmp .L173
.L174:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L176
	mov_mov d2, d0, d3, d1
.L177:
	mov_mov d0, a0, d1, a1
.L173:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L176:
	mov_mov a2, d0, a3, d1
	jmp .L177
.L178:
	mov_mov a2, a0, a3, a1
	jmp .L173
.L179:
	mov_mov d2, a0, d3, a1
	jmp .L173
.L180:
	mov_mov a2, a0, a3, a1
	jmp .L173
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
	bne .L187
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L188
	mov d3,d1
	and -2147483648,d1
	mov d2,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L183
	mov_cmp d3, d0, 0, d3
	blt .L182
	mov d2,d0
	jmp .L182
.L183:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	bge .L186
	mov d3,d2
.L186:
	mov d2,d0
.L182:
	ret [d2,d3],20
.L187:
	mov d2,d0
	jmp .L182
.L188:
	mov d3,d0
	jmp .L182
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
	bne .L196
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L197
	mov d3,d1
	and -2147483648,d1
	mov a3,d0
	and -2147483648,d0
	cmp d0,d1
	beq .L192
	cmp 0,d3
	bge .L198
	mov_mov d2, a0, d3, a1
	jmp .L191
.L192:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L194
	mov_mov d2, d0, d3, d1
.L195:
	mov_mov d0, a0, d1, a1
.L191:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L194:
	mov_mov a2, d0, a3, d1
	jmp .L195
.L196:
	mov_mov a2, a0, a3, a1
	jmp .L191
.L197:
	mov_mov d2, a0, d3, a1
	jmp .L191
.L198:
	mov_mov a2, a0, a3, a1
	jmp .L191
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
	beq .L202
	mov +s.0,d1
	setlb
.L201:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L201
.L200:
	mov 0,d0
	movbu d0,(d1)
	mov +s.0,d0
	mov d0,a0
	retf [],0
.L202:
	mov +s.0,d1
	jmp .L200
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
	beq .L209
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L206
	mov d0,(4,d1)
.L206:
	retf [],0
.L209:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L211
	mov (4,d0),a0
	mov a0,(4,d1)
.L211:
	mov (4,d0),d1
	cmp 0,d1
	beq .L210
	mov (d0),d0
	mov d0,(d1)
.L210:
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
	beq .L214
	mov_mov d1, d3, 0, d2
.L217:
	mov_mov d3, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L219
	add_add 1, d2, r4, d3
	cmp a2,d2
	bne .L217
.L214:
	mov 1,d0
	add a2,d0
	mov d0,(r7)
	mul r4,a2,a0,d0
	mov r4,(12,sp)
	mov_add a3, d1, r6, d0
	call +memcpy,[],0
	mov a0,d0
.L216:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L219:
	mul d2,r4,d1,d0
	add r6,d0
	jmp .L216
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
	beq .L224
	mov_mov d1, d3, 0, d2
.L223:
	mov_mov d3, d1, a2, d0
	mov r6,a0
	calls (a0)
	cmp 0,d0
	beq .L226
	add_add 1, d2, r4, d3
	cmp a3,d2
	bne .L223
	mov 0,d0
	jmp .L221
.L226:
	mul d2,r4,d1,d0
	add r5,d0
.L221:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
.L224:
	mov 0,d0
	jmp .L221
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L229
.L228:
	retf [],0
.L229:
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
	jmp .L231
.L232:
	inc d2
.L231:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L232
	movbu (d2),d0
	cmp 43,d0
	beq .L238
	cmp 45,d0
	bne .L239
	mov 1,a0
.L233:
	inc d2
.L234:
	movbu (d2),d0
	add -48,d0
	cmp 9,d0
	bhi .L240
	mov 0,d0
	setlb
.L236:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	Lls # loop back to: .L236
.L235:
	cmp 0,a0
	bne .L237
	not d0
	inc d0
.L237:
	ret [d2],16
.L238:
	mov 0,a0
	jmp .L233
.L239:
	mov 0,a0
	jmp .L234
.L240:
	mov 0,d0
	jmp .L235
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2],(sp)
	add -12,sp
	mov d0,d2
	jmp .L244
.L245:
	inc d2
.L244:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L245
	movbu (d2),d0
	cmp 43,d0
	beq .L251
	cmp 45,d0
	bne .L252
	mov 1,a0
.L246:
	inc d2
.L247:
	movbu (d2),d0
	add -48,d0
	cmp 9,d0
	bhi .L253
	mov 0,d0
	setlb
.L249:
	mul 10,d0
	inc d2
	movbu (-1,d2),d1
	add -48,d1
	sub d1,d0
	movbu (d2),d1
	add -48,d1
	cmp 9,d1
	Lls # loop back to: .L249
.L248:
	cmp 0,a0
	bne .L250
	not d0
	inc d0
.L250:
	ret [d2],16
.L251:
	mov 0,a0
	jmp .L246
.L252:
	mov 0,a0
	jmp .L247
.L253:
	mov 0,d0
	jmp .L248
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,d2
	jmp .L257
.L258:
	inc d2
.L257:
	movbu (d2),d0
	call +isspace,[],0
	cmp 0,d0
	bne .L258
	movbu (d2),d0
	cmp 43,d0
	beq .L264
	cmp 45,d0
	bne .L265
	mov 1,r0
.L259:
	inc d2
.L260:
	movbu (d2),d0
	add -48,d0
	cmp 9,d0
	bhi .L266
	mov 0,d0
	mov d0,d1
	mov 10,a1
	setlb
.L262:
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
	movbu (d2),a0
	add -48,a0
	cmp 9,a0
	Lls # loop back to: .L262
.L261:
	cmp 0,r0
	bne .L267
	mov 0,a2
	mov a2,a3
	sub d0,a2,a0
	subc d1,a2,a1
.L263:
	mov_mov a0, d0, a1, d1
	ret [d2,a2,a3,exreg1],40
.L264:
	mov 0,r0
	jmp .L259
.L265:
	mov 0,r0
	jmp .L260
.L266:
	mov 0,d0
	mov d0,d1
	jmp .L261
.L267:
	mov_mov d0, a0, d1, a1
	jmp .L263
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
	bne .L273
	mov 0,d0
	jmp .L270
.L278:
	lsr 1,d3
.L272:
	cmp 0,d3
	beq .L277
.L273:
	mov d3,d2
	lsr 1,d2
	mul a3,d2
	add a2,d2
	mov_mov d2, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L278
	ble .L275
	add a3,d2,a2
	mov d3,d0
	add_lsr -1, d3, 1, d0
	sub d0,d3
	jmp .L272
.L277:
	mov 0,d0
.L270:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],44
.L275:
	mov d2,d0
	jmp .L270
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov d0,r4
	mov (64,sp),a3
	mov (68,sp),r5
	mov (72,sp),r6
	mov (60,sp),d3
	cmp 0,d3
	beq .L283
	mov d1,a2
	jmp .L282
.L281:
	asr 1,d3
	cmp 0,d3
	beq .L286
.L282:
	mov d3,d2
	asr 1,d2
	mul a3,d2
	add a2,d2
	mov r6,(12,sp)
	mov_mov d2, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L284
	ble .L281
	add a3,d2,a2
	add -1,d3
	jmp .L281
.L286:
	mov 0,d0
	jmp .L280
.L283:
	mov 0,d0
	jmp .L280
.L284:
	mov d2,d0
.L280:
	mov d0,a0
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
	blt .L291
.L289:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L291:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L289
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
	blt .L295
.L294:
	retf [],0
.L295:
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
	blt .L300
.L298:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L300:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L298
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
	beq .L304
.L303:
	mov (d0),a0
	cmp a0,d1
	beq .L304
	add 4,d0
	mov (d0),a0
	cmp 0,a0
	bne .L303
.L304:
	mov (d0),d1
	cmp 0,d1
	beq .L309
.L306:
	mov d0,a0
	retf [],0
.L309:
	mov 0,d0
	jmp .L306
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	bne .L312
.L311:
	mov (d0),a0
	cmp 0,a0
	beq .L312
	mov (d1),a0
	cmp 0,a0
	beq .L312
	add_add 4, d0, 4, d1
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	beq .L311
.L312:
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L316
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L315
	mov 0,d0
.L315:
	extbu d0
	retf [],0
.L316:
	mov -1,d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov d0,r0
	setlb
.L319:
	mov (d1+),a1
	mov a1,(r0+)
	cmp 0,a1
	Lne # loop back to: .L319
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L324
	mov d0,d1
	setlb
.L323:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L323
.L322:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
.L324:
	mov d0,d1
	jmp .L322
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L328
.L327:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L328
	cmp 0,r0
	beq .L328
	mov (d1),a1
	cmp 0,a1
	beq .L328
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L327
.L328:
	cmp 0,a0
	beq .L332
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L333
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L331
	mov 0,d0
.L331:
	extbu d0
	retf [],0
.L332:
	mov 0,d0
	retf [],0
.L333:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L337
.L336:
	mov (d0),a1
	cmp a1,d1
	beq .L337
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L336
.L337:
	cmp 0,a0
	beq .L342
.L339:
	mov d0,a0
	retf [],0
.L342:
	mov 0,d0
	jmp .L339
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L345
.L344:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L345
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L344
.L345:
	cmp 0,a0
	beq .L349
	mov (d0),a1
	mov (d1),a0
	cmp a0,a1
	blt .L350
	mov (d1),d1
	mov 1,d0
	cmp d1,a1
	bgt .L348
	mov 0,d0
.L348:
	extbu d0
	retf [],0
.L349:
	mov 0,d0
	retf [],0
.L350:
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov (12,sp),r0
	mov -1,a0
	add_cmp r0, a0, 0, r0
	beq .L353
	mov_mov a0, r0, 0, a1
	setlb
.L354:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	add_add -1, r0, 4, a1
	cmp -1,r0
	Lne # loop back to: .L354
.L353:
	mov d0,a0
	retf [],0
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a1
	cmp d1,d0
	beq .L357
	sub d1,d0,r0
	mov a1,a0
	asl2 a0
	cmp a0,r0
	bcs .L358
	mov -1,a0
	add_cmp a1, a0, 0, a1
	beq .L357
	mov_mov a0, a1, 0, r0
	setlb
.L359:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	add_add -1, a1, 4, r0
	cmp -1,a1
	Lne # loop back to: .L359
	jmp .L357
.L358:
	cmp 0,a1
	beq .L357
	add -1,a1
	asl2 a1
	setlb
.L360:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L360
.L357:
	mov d0,a0
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a1
	mov -1,a0
	add_cmp a1, a0, 0, a1
	beq .L365
	mov_mov a0, a1, d0, r0
	setlb
.L366:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L366
.L365:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L369
	cmp 0,a0
	beq .L368
	add_add -1, d0, -1, d1
	setlb
.L371:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L371
	retf [],0
.L369:
	beq .L368
	cmp 0,a0
	beq .L368
	mov 0,a1
	setlb
.L372:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a0,a1
	Lne # loop back to: .L372
.L368:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L376
	mov 0,r2
	asl d0,r0,r3
.L377:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L378
	not d0
	add_mov 1, d0, 0, a0
	mov a0,a1
	lsr d0,r1,a0
.L379:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L376:
	mov r0,d1
	mov_lsr d0, a0, 1, d1
	not a0
	lsr a0,d1
	asl d0,r1,r3
	or d1,r3
	asl d0,r0,r2
	jmp .L377
.L378:
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
	jmp .L379
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, r0, d1, r1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L381
	mov 0,r2
	mov r2,r3
	lsr d0,r1,r2
.L382:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L383
	not d0
	add_mov 1, d0, 0, a0
	asl d0,r0,a1
.L384:
	or r2,a0,r0
	or r3,a1,r1
	mov_mov r0, d0, r1, d1
	retf [],0
.L381:
	mov r1,d1
	mov_asl d0, a0, 1, d1
	not a0
	asl a0,d1
	lsr d0,r0,r2
	or d1,r2
	lsr d0,r1,r3
	jmp .L382
.L383:
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
	jmp .L384
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
.L399:
	lsr d1,d0,a0
	btst 1,a0
	bne .L401
	inc d1
	cmp 32,d1
	bne .L399
	mov 0,d0
	retf [],0
.L401:
	mov 1,d0
	add d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp 0,d0
	beq .L405
	btst 1,d0
	bne .L406
	mov 1,d1
	setlb
.L404:
	add_asr 1, d1, 1, d0
	btst 1,d0
	Leq # loop back to: .L404
	mov d1,d0
	retf [],0
.L405:
	mov 0,d0
	retf [],0
.L406:
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
	blt .L411
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L412
.L410:
	extbu d2,d0
.L409:
	ret [d2,d3],20
.L412:
	mov 0,d2
	jmp .L410
.L411:
	mov 1,d0
	jmp .L409
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
	blt .L416
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L417
.L415:
	extbu a2,d0
.L414:
	ret [d2,d3,a2],32
.L417:
	mov 0,a2
	jmp .L415
.L416:
	mov 1,d0
	jmp .L414
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
	blt .L421
	mov 1,a2
	mov -1,d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L422
.L420:
	extbu a2,d0
.L419:
	ret [d2,d3,a2],32
.L422:
	mov 0,a2
	jmp .L420
.L421:
	mov 1,d0
	jmp .L419
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
	bne .L425
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov_mov d0, d1, a2, d0
	call +__nesf2,[],0
	cmp 0,d0
	beq .L425
	cmp 0,d2
	blt .L432
	mov 1073741824,d3
	jmp .L429
.L432:
	mov 1056964608,d3
	jmp .L429
.L428:
	mov d2,d1
	lsr 31,d1
	add d1,d2
	asr 1,d2
	cmp 0,d2
	beq .L425
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L429:
	btst 1,d2
	beq .L428
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L428
.L425:
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
	bne .L434
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L434
	cmp 0,r4
	blt .L441
	mov 0,d2
	mov 1073741824,d3
	jmp .L438
.L441:
	mov 0,d2
	mov 1071644672,d3
	jmp .L438
.L437:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L434
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L438:
	btst 1,r4
	beq .L437
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L437
.L434:
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
	bne .L443
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L443
	cmp 0,r4
	blt .L450
	mov 0,d2
	mov 1073741824,d3
	jmp .L447
.L450:
	mov 0,d2
	mov 1071644672,d3
	jmp .L447
.L446:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L443
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L447:
	btst 1,r4
	beq .L446
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L446
.L443:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L452
	add_mov d1, r2, d0, a1
	setlb
.L453:
	inc d1
	movbu (-1,d1),r1
	inc a1
	movbu (-1,a1),r0
	xor r1,r0
	movbu r0,(-1,a1)
	cmp r2,d1
	Lne # loop back to: .L453
.L452:
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
	beq .L457
.L456:
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L457
	add_add 1, d2, 1, d0
	add -1,d3
	bne .L456
.L457:
	cmp 0,d3
	bne .L459
	mov 0,d1
	movbu d1,(d0)
.L459:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
	cmp d0,d1
	beq .L467
.L462:
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L464
.L463:
	retf [],0
.L467:
	retf [],0
.L464:
	inc d0
	cmp d1,d0
	bne .L462
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),a0
	cmp 0,a0
	beq .L476
.L469:
	mov d1,a1
.L472:
	movbu (a1),r0
	cmp 0,r0
	beq .L477
	inc a1
	movbu (-1,a1),r1
	movbu (d0),r0
	cmp r0,r1
	bne .L472
.L470:
	mov d0,a0
	retf [],0
.L476:
	mov 0,d0
	jmp .L470
.L477:
	inc d0
	movbu (d0),a0
	cmp 0,a0
	bne .L469
	mov 0,d0
	jmp .L470
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a0, 0, d0
	jmp .L480
.L479:
	inc a0
	movbu (-1,a0),a1
	cmp 0,a1
	beq .L483
.L480:
	movbu (a0),a1
	cmp a1,d1
	bne .L479
	mov a0,d0
	jmp .L479
.L483:
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
	beq .L488
	movbu (d3),a3
.L486:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L490
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L489
	inc d2
	jmp .L486
.L490:
	mov 0,d0
	jmp .L485
.L488:
	mov d2,d0
.L485:
	mov d0,a0
	ret [d2,d3,a2,a3],32
.L489:
	mov d2,d0
	jmp .L485
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
	blt .L504
.L492:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L502
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L494
	mov_mov d2, a0, d3, a1
.L495:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L504:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L492
.L494:
	mov d2,a0
	mov -2147483648,a1
	add d3,a1
	jmp .L495
.L502:
	mov_mov d2, a0, d3, a1
	jmp .L495
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov (60,sp),r4
	mov (64,sp),a0
	sub a0,d1,d3
	add_cmp d0, d3, 0, a0
	beq .L506
	mov 1,a1
	cmp a0,d1
	bcs .L507
	mov 0,a1
.L507:
	extbu a1
	cmp 0,a1
	bne .L511
	cmp d3,d0
	bhi .L512
	mov d0,d2
	movbu (r4),a2
	add_mov 1, r4, -1, a3
	add a0,a3
	jmp .L509
.L508:
	inc d2
	cmp d2,d3
	bcs .L515
.L509:
	movbu (d2),d0
	cmp a2,d0
	bne .L508
	mov a3,(12,sp)
	mov_mov r4, d1, 1, d0
	add d2,d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L508
	mov d2,d0
	jmp .L506
.L515:
	mov 0,d0
.L506:
	mov d0,a0
	ret [d2,d3,a2,a3,exreg1],48
.L511:
	mov 0,d0
	jmp .L506
.L512:
	mov 0,d0
	jmp .L506
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
	blt .L541
	mov 0,r6
.L518:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L538
	mov 0,a2
	mov a2,a3
	mov 1071644672,r5
	mov 1072693248,r4
.L522:
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
	bge .L522
.L523:
	mov (64,sp),d0
	mov a2,(d0)
	cmp 0,r6
	beq .L527
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L527:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L541:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r6
	jmp .L518
.L538:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L539
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L540
	mov 0,a2
	mov a2,r4
	mov 1071644672,a3
.L526:
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
	blt .L526
	jmp .L523
.L539:
	mov 0,a2
	jmp .L523
.L540:
	mov 0,a2
	jmp .L523
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -24,sp
	mov (68,sp),a0
	mov (72,sp),a1
	or d1,d0,r0
	beq .L546
	mov 0,r0
	mov r0,r1
	jmp .L545
.L547:
	mov (16,sp),r0
	mov (20,sp),r1
.L545:
	mov d0,r2
	and 1,r2
	clr r3
	mov r2,(sp)
	mov r3,(4,sp)
	mov r3,(8,sp)
	mov r3,(12,sp)
	mov_mov r3, d2, r3, d3
	sub r2,d2
	subc r3,d3
	and d2,a0,r6
	and d3,a1,r7
	add r6,r0,r4
	addc r1,r7,a2
	mov a2,(20,sp)
	mov r4,(16,sp)
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
	or a3,a2,r0
	cmp r3,r0
	bne .L547
	mov (16,sp),r0
	mov (20,sp),r1
.L543:
	mov_mov r0, d0, r1, d1
	retf [d2,d3,a2,a3,exreg1],56
.L546:
	mov 0,r0
	mov r0,r1
	jmp .L543
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L550
	mov 32,a1
	mov 1,a0
.L549:
	cmp 0,d1
	blt .L550
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L550
	add -1,a1
	bne .L549
.L550:
	mov 0,a1
	cmp a1,a0
	bne .L552
.L553:
	cmp 0,r0
	bne .L556
	mov a1,d0
.L556:
	retf [],0
.L555:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L553
.L552:
	cmp d1,d0
	bcs .L555
	or_sub a0, a1, d1, d0
	jmp .L555
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	btst 255,d0
	beq .L564
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L564:
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
	beq .L570
	mov_cmp d0, a0, 0, d1
	beq .L568
	mov 0,d0
	bsch d1, d0
	xor 31,d0
.L569:
	add -1,d0
	retf [],0
.L568:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L569
.L570:
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_cmp d0, a1, 0, d0
	beq .L574
	mov 0,d0
	setlb
.L573:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L573
	retf [],0
.L574:
	mov 0,d0
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2],(sp)
	mov (16,sp),r2
	mov r2,d2
	mov_lsr r2, a1, 3, d2
	and -8,a1
	cmp d1,d0
	bcs .L577
	add r2,d1,a0
	cmp d0,a0
	bcs .L577
	mov -1,a0
	add_cmp r2, a0, 0, r2
	beq .L576
	mov a0,r2
	setlb
.L578:
	movbu (r2,d1),a0
	movbu a0,(r2,d0)
	add -1,r2
	cmp -1,r2
	Lne # loop back to: .L578
	jmp .L576
.L577:
	cmp 0,d2
	beq .L580
	mov_asl 0, a0, 3, d2
	setlb
.L581:
	mov (a0,d1),r0
	add a0,d1,r3
	mov (4,r3),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp d2,a0
	Lne # loop back to: .L581
.L580:
	cmp a1,r2
	bls .L576
	setlb
.L582:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp r2,a1
	Lne # loop back to: .L582
.L576:
	retf [d2],4
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),a1
	mov a1,r1
	cmp_lsr d1, d0, 1, r1
	bcs .L588
	add a1,d1,a0
	cmp d0,a0
	bcs .L588
	mov -1,a0
	add_cmp a1, a0, 0, a1
	beq .L596
	mov a0,a1
	setlb
.L589:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L589
.L587:
	retf [],0
.L596:
	retf [],0
.L588:
	cmp 0,r1
	beq .L591
	mov_asl 0, a0, 1, r1
	setlb
.L592:
	movhu (a0,d1),r0
	movhu r0,(a0,d0)
	add 2,a0
	cmp r1,a0
	Lne # loop back to: .L592
.L591:
	btst 1,a1
	beq .L587
	add -1,a1
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
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
	bcs .L598
	add r0,d1,a1
	cmp d0,a1
	bcs .L598
	mov -1,a0
	add_cmp r0, a0, 0, r0
	beq .L608
	mov a0,r0
	setlb
.L599:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
	add -1,r0
	cmp -1,r0
	Lne # loop back to: .L599
.L597:
	retf [],0
.L608:
	retf [],0
.L598:
	cmp 0,r2
	beq .L601
	mov_asl 0, a1, 2, r2
	setlb
.L602:
	mov (a1,d1),r1
	mov r1,(a1,d0)
	inc4 a1
	cmp r2,a1
	Lne # loop back to: .L602
.L601:
	cmp a0,r0
	bls .L597
	setlb
.L603:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp r0,a0
	Lne # loop back to: .L603
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
.L617:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L616
	inc d1
	cmp 16,d1
	bne .L617
.L616:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L621:
	asr d1,d0,a0
	btst 1,a0
	bne .L620
	inc d1
	cmp 16,d1
	bne .L621
.L620:
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
	bge .L629
	mov d2,d0
	call +__fixsfsi,[],0
.L626:
	ret [d2],16
.L629:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L626
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a0
	mov a0,d1
	exthu d0,a1
	setlb
.L631:
	asr d1,a1,d0
	and 1,d0
	add_add d0, a0, 1, d1
	cmp 16,d1
	Lne # loop back to: .L631
	mov a0,d0
	and 1,d0
	retf [],0
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov 0,a0
	mov a0,d1
	exthu d0,a1
	setlb
.L634:
	asr d1,a1,d0
	and 1,d0
	add_add d0, a0, 1, d1
	cmp 16,d1
	Lne # loop back to: .L634
	mov a0,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_cmp d0, a1, 0, d0
	beq .L639
	mov 0,d0
	setlb
.L638:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L638
	retf [],0
.L639:
	mov 0,d0
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov_cmp d0, a1, 0, d0
	beq .L644
	cmp 0,d1
	beq .L645
	mov 0,d0
	setlb
.L643:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L643
	retf [],0
.L644:
	mov 0,d0
	retf [],0
.L645:
	mov 0,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L649
	mov 32,a1
	mov 1,a0
.L648:
	cmp 0,d1
	blt .L649
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L649
	add -1,a1
	bne .L648
.L649:
	mov 0,a1
	cmp a1,a0
	bne .L651
.L652:
	cmp 0,r0
	bne .L655
	mov a1,d0
.L655:
	retf [],0
.L654:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L652
.L651:
	cmp d1,d0
	bcs .L654
	or_sub a0, a1, d1, d0
	jmp .L654
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3,a2],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a2
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L664
	mov 1,d2
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L665
.L663:
	extbu d2,d0
.L662:
	ret [d2,d3,a2],24
.L665:
	mov 0,d2
	jmp .L663
.L664:
	mov -1,d0
	jmp .L662
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
	blt .L669
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L670
.L668:
	extbu r4,d0
.L667:
	ret [d2,d3,a2,a3,exreg1],52
.L670:
	mov 0,r4
	jmp .L668
.L669:
	mov -1,d0
	jmp .L667
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
	mov_cmp d0, a1, 0, d1
	blt .L683
	mov 0,r1
.L674:
	cmp 0,d1
	beq .L679
	mov 32,r0
	mov 0,d0
.L676:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L675
	mov -1,a0
	add r0,a0
	mov a0,r0
	btst 255,a0
	bne .L676
.L675:
	cmp 0,r1
	beq .L677
	not d0
	inc d0
.L677:
	retf [],0
.L683:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L674
.L679:
	mov 0,d0
	jmp .L675
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L689
	mov 0,d2
.L685:
	cmp 0,d1
	blt .L690
.L686:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L687
	not d0
	inc d0
.L687:
	ret [d2],20
.L689:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L685
.L690:
	not d1
	inc d1
	xor 1,d2
	jmp .L686
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L696
	mov 0,d2
.L692:
	mov_cmp a0, d1, 0, a0
	blt .L697
.L693:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L694
	not d0
	inc d0
.L694:
	ret [d2],20
.L696:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L692
.L697:
	mov 0,d1
	sub a0,d1
	jmp .L693
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r3
	mov d0,r1
	mov d1,a0
	exthu d1
	exthu d0
	mov 1,a1
	cmp d0,d1
	bcc .L700
	mov 16,r0
	mov 1,a1
	exthu r1,r2
.L699:
	exth a0,d0
	cmp 0,d0
	blt .L700
	mov a0,d1
	add d1,d1
	mov d1,a0
	add a1,a1
	exthu d1
	cmp d1,r2
	bls .L700
	add -1,r0
	bne .L699
.L700:
	exthu a1,d1
	mov 0,d0
	cmp 0,d1
	bne .L702
.L703:
	cmp 0,r3
	bne .L712
.L706:
	retf [],0
.L705:
	exthu a1,d1
	lsr 1,d1
	mov d1,a1
	asl 16,a0
	lsr 17,a0
	cmp 0,d1
	beq .L703
.L702:
	exthu r1,d1
	exthu a0,r0
	cmp r0,d1
	bcs .L705
	or_sub a1, d0, a0, r1
	jmp .L705
.L712:
	mov r1,d0
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L715
	mov 32,a1
	mov 1,a0
.L714:
	cmp 0,d1
	blt .L715
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L715
	add -1,a1
	bne .L714
.L715:
	mov 0,a1
	cmp a1,a0
	bne .L717
.L718:
	cmp 0,r0
	bne .L721
	mov a1,d0
.L721:
	retf [],0
.L720:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L718
.L717:
	cmp d1,d0
	bcs .L720
	or_sub a0, a1, d1, d0
	jmp .L720
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov d0,r0
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L728
	mov 0,d0
	asl r2,r0,d1
.L729:
	mov_mov d0, a0, d1, a1
.L730:
	mov_mov a0, d0, a1, d1
	retf [],0
.L728:
	cmp 0,r2
	beq .L730
	asl r2,r0,d0
	asl r2,a1
	not r2
	inc r2
	lsr r2,a0
	or a1,a0,d1
	jmp .L729
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov d1,r1
	mov (12,sp),r2
	mov_mov d0, a0, d1, a1
	mov r2,d0
	and 32,d0
	beq .L733
	asr 31,d1
	asr r2,r1,d0
.L734:
	mov_mov d0, a0, d1, a1
.L735:
	mov_mov a0, d0, a1, d1
	retf [],0
.L733:
	cmp 0,r2
	beq .L735
	mov_asr 0, r0, r2, d1
	sub r2,r0
	asl r0,r1,r0
	lsr r2,a0
	or a0,r0,d0
	jmp .L734
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
	bls .L740
	mov 0,a0
.L740:
	extbu a0
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L741
	mov 0,d0
.L741:
	extbu d0
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L742
	mov 0,d0
.L742:
	extbu d0
	mov_asl 4, a1, 2, d0
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 12,d1
	beq .L743
	mov 0,d0
.L743:
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
	bgt .L746
	cmp a1,d1
	blt .L747
	cmp a0,d0
	bhi .L748
	bcs .L749
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
	mov d0,d1
	exthu d0
	mov 1,a0
	cmp 0,d0
	beq .L752
	mov 0,a0
.L752:
	extbu a0
	asl 4,a0
	lsr a0,d1
	extbu d1,a1
	mov 1,d0
	cmp 0,a1
	beq .L753
	mov 0,d0
.L753:
	extbu d0
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L754
	mov 0,d0
.L754:
	extbu d0
	asl2 d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 3,d1
	beq .L755
	mov 0,d0
.L755:
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
	beq .L773
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L772:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L773:
	mov_mov r4, a0, r5, a1
	jmp .L772
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
	beq .L779
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
.L778:
	ret [d2,d3,a2,a3],28
.L779:
	mov a2,d0
	jmp .L778
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov (16,sp),d1
	cmp a1,d1
	bhi .L782
	cmp a1,d1
	bcs .L783
	cmp a0,d0
	bhi .L784
	bcs .L785
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
