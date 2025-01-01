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
	cmp r0,a1
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
	cmp r0,a1
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
	cmp d1,a1
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
	add -16,sp
	mov d0,a1
	mov (28,sp),d0
	cmp 0,d0
	beq .L31
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L31:
	mov_mov a1, a0, a1, d0
	ret [],16
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	mov d0,r0
	extbu d1
	mov (12,sp),a0
	add -1,a0
	add_add d0, a0, -1, r0
.L33:
	cmp r0,a0
	beq .L36
	mov_add a0, d0, -1, a0
	movbu (d0),a1
	cmp d1,a1
	bne .L33
	jmp .L32
.L36:
	mov 0,d0
.L32:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L38
	add_mov d0, r0, d0, a1
	setlb
.L39:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L39
.L38:
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
	beq .L42
	setlb
.L43:
	add_add 1, d1, 1, d0
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	Lne # loop back to: .L43
.L42:
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	movbu (d0),a1
	extbu a1,a0
	cmp 0,a0
	beq .L45
.L46:
	extbu a1
	cmp d1,a1
	beq .L45
	inc d0
	movbu (d0),a1
	extbu a1,a0
	cmp 0,a0
	bne .L46
.L45:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L53:
	movbu (d0),a0
	extbu a0,a1
	cmp d1,a1
	beq .L52
	add_cmp 1, d0, 0, a1
	bne .L53
	mov 0,d0
.L52:
	mov d0,a0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d0),a1
	movbu (d1),r0
	extbu a1,r2
	extbu r0,r1
	mov_add 1, a0, -1, d1
	cmp r1,r2
	bne .L57
.L56:
	extbu a1,r1
	cmp 0,r1
	beq .L57
	movbu (a0,d0),a1
	inc a0
	movbu (a0,d1),r0
	extbu a1,r2
	extbu r0,r1
	cmp r1,r2
	beq .L56
.L57:
	extbu a1
	extbu r0
	sub r0,a1,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp 0,d1
	beq .L64
	mov d0,d1
	setlb
.L63:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L63
.L62:
	sub d0,d1,d0
	retf [],0
.L64:
	mov d0,d1
	jmp .L62
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r1
	cmp 0,r1
	beq .L71
	movbu (d0),a1
	extbu a1,a0
	cmp 0,a0
	beq .L68
	add -1,r1
	add d0,r1
.L69:
	movbu (d1),a0
	extbu a0,r0
	cmp 0,r0
	beq .L68
	cmp r1,d0
	beq .L68
	mov r0,a0
	extbu a1,r0
	cmp r0,a0
	bne .L68
	add_add 1, d0, 1, d1
	movbu (d0),a1
	extbu a1,a0
	cmp 0,a0
	bne .L69
.L68:
	extbu a1
	movbu (d1),d0
	sub d0,a1,d0
	retf [],0
.L71:
	mov 0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a1
	cmp 1,a1
	ble .L72
	and -2,a1
	add d0,a1
	setlb
.L74:
	movbu (1,d0),a0
	movbu a0,(d1)
	movbu (d0),a0
	movbu a0,(1,d1)
	add_add 2, d1, 2, d0
	cmp a1,d0
	Lne # loop back to: .L74
.L72:
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
	bls .L77
	mov 0,d0
.L77:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov_mov d0, d1, 1, d0
	cmp 127,d1
	bls .L79
	mov 0,d0
.L79:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L83
	mov 1,d1
	cmp 9,d0
	beq .L82
	mov 0,d1
.L82:
	mov d1,d0
	retf [],0
.L83:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L87
	mov 1,d1
	cmp 127,d0
	beq .L86
	mov 0,d1
.L86:
	mov d1,d0
	retf [],0
.L87:
	mov 1,d0
	retf [],0
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L89
	mov 0,d0
.L89:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add_mov d0, d1, 1, d0
	cmp 93,d1
	bls .L91
	mov 0,d0
.L91:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L93
	mov 0,d0
.L93:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add_mov d0, d1, 1, d0
	cmp 94,d1
	bls .L95
	mov 0,d0
.L95:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L99
	add -9,d0
	mov_cmp 1, d1, 4, d0
	bls .L98
	mov 0,d1
.L98:
	mov d1,d0
	retf [],0
.L99:
	mov 1,d0
	retf [],0
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov -65,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L101
	mov 0,d0
.L101:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L105
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L106
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L107
	add -65529,d0
	mov_cmp 1, d1, 2, d0
	bls .L104
	mov 0,d1
.L104:
	mov d1,d0
	retf [],0
.L105:
	mov 1,d0
	retf [],0
.L106:
	mov 1,d0
	retf [],0
.L107:
	mov 1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L109
	mov 0,d0
.L109:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L118
	cmp 8231,d0
	bls .L114
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L115
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L116
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L117
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L118:
	inc d0
	mov d0,d1
	and 127,d1
	mov 1,d0
	cmp 32,d1
	bhi .L110
	mov 0,d0
	retf [],0
.L114:
	mov 1,d0
	retf [],0
.L115:
	mov 1,d0
	retf [],0
.L116:
	mov 1,d0
	retf [],0
.L117:
	mov 0,d0
.L110:
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L122
	or 32,d0
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 5,d1
	bls .L119
	mov 0,d0
	retf [],0
.L122:
	mov 1,d0
.L119:
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
	bne .L127
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L128
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L131
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L124:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L127:
	mov_mov d2, a0, d3, a1
	jmp .L124
.L128:
	mov_mov a2, a0, a3, a1
	jmp .L124
.L131:
	mov 0,a0
	mov a0,a1
	jmp .L124
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
	bne .L135
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L136
	mov_mov d3, d1, d2, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L139
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
.L132:
	ret [d2,d3],20
.L135:
	mov d2,d0
	jmp .L132
.L136:
	mov d3,d0
	jmp .L132
.L139:
	mov 0,d0
	jmp .L132
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
	bne .L146
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L147
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L142
	cmp 0,d0
	bne .L148
	mov_mov d2, a0, d3, a1
	jmp .L140
.L142:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L143
	mov_mov a2, d0, a3, d1
.L144:
	mov_mov d0, a0, d1, a1
.L140:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L143:
	mov_mov d2, d0, d3, d1
	jmp .L144
.L146:
	mov_mov a2, a0, a3, a1
	jmp .L140
.L147:
	mov_mov d2, a0, d3, a1
	jmp .L140
.L148:
	mov_mov a2, a0, a3, a1
	jmp .L140
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, d2
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L155
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L156
	mov d3,d0
	and -2147483648,d0
	mov d2,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L151
	cmp 0,d0
	bne .L157
	mov d3,d0
	jmp .L149
.L151:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L153
	mov d3,d2
.L153:
	mov d2,d0
.L149:
	ret [d2,d3],20
.L155:
	mov d2,d0
	jmp .L149
.L156:
	mov d3,d0
	jmp .L149
.L157:
	mov d2,d0
	jmp .L149
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
	bne .L164
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L165
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L160
	cmp 0,d0
	bne .L166
	mov_mov d2, a0, d3, a1
	jmp .L158
.L160:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L161
	mov_mov a2, d0, a3, d1
.L162:
	mov_mov d0, a0, d1, a1
.L158:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L161:
	mov_mov d2, d0, d3, d1
	jmp .L162
.L164:
	mov_mov a2, a0, a3, a1
	jmp .L158
.L165:
	mov_mov d2, a0, d3, a1
	jmp .L158
.L166:
	mov_mov a2, a0, a3, a1
	jmp .L158
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
	bne .L173
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L174
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L169
	cmp 0,d0
	bne .L175
	mov_mov a2, a0, a3, a1
	jmp .L167
.L169:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L170
	mov_mov d2, d0, d3, d1
.L171:
	mov_mov d0, a0, d1, a1
.L167:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L170:
	mov_mov a2, d0, a3, d1
	jmp .L171
.L173:
	mov_mov a2, a0, a3, a1
	jmp .L167
.L174:
	mov_mov d2, a0, d3, a1
	jmp .L167
.L175:
	mov_mov d2, a0, d3, a1
	jmp .L167
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L182
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L183
	mov d2,d0
	and -2147483648,d0
	mov d3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L178
	cmp 0,d0
	bne .L184
	mov d3,d0
	jmp .L176
.L178:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L180
	mov d3,d2
.L180:
	mov d2,d0
.L176:
	ret [d2,d3],20
.L182:
	mov d3,d0
	jmp .L176
.L183:
	mov d2,d0
	jmp .L176
.L184:
	mov d2,d0
	jmp .L176
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
	bne .L191
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L192
	mov d3,d0
	and -2147483648,d0
	mov a3,d1
	and -2147483648,d1
	cmp d1,d0
	beq .L187
	cmp 0,d0
	bne .L193
	mov_mov a2, a0, a3, a1
	jmp .L185
.L187:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L188
	mov_mov d2, d0, d3, d1
.L189:
	mov_mov d0, a0, d1, a1
.L185:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L188:
	mov_mov a2, d0, a3, d1
	jmp .L189
.L191:
	mov_mov a2, a0, a3, a1
	jmp .L185
.L192:
	mov_mov d2, a0, d3, a1
	jmp .L185
.L193:
	mov_mov d2, a0, d3, a1
	jmp .L185
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	beq .L197
	mov +s.0,d1
	setlb
.L196:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L196
.L195:
	mov 0,d0
	movbu d0,(d1)
	mov +s.0,d0
	mov d0,a0
	retf [],0
.L197:
	mov +s.0,d1
	jmp .L195
	.size	l64a, .-l64a
	.global srand
	.type	srand, @function
srand:
	add -1,d0
	mov d0,(+seed)
	mov 0,d0
	mov d0,(+seed+4)
	retf [],0
	.size	srand, .-srand
	.global rand
	.type	rand, @function
rand:
	movm [d2],(sp)
	mov (+seed+4),d0
	mov 1284865837,a0
	mul d0,a0
	mov (+seed),a1
	mov 1481765933,d0
	mul a1,d0
	add d0,a0
	mov 1284865837,r0
	mulu a1,r0,d1,d0
	add_mov a0, d1, 0, a0
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
	add -20,sp
	mov_mov d0, a3, d1, r6
	mov (64,sp),r5
	mov (68,sp),r4
	mov (72,sp),a2
	mov (r5),d3
	cmp 0,d3
	beq .L209
	mov_mov d1, d2, 0, r7
.L211:
	mov d2,(16,sp)
	mov_mov d2, d1, a3, d0
	calls (a2)
	cmp 0,d0
	beq .L208
	add_add 1, r7, r4, d2
	cmp r7,d3
	bne .L211
.L209:
	mov 1,d0
	add d3,d0
	mov d0,(r5)
	mul r4,d3,d1,d0
	mov r4,(12,sp)
	mov_add a3, d1, r6, d0
	call +memcpy,[],0
	mov a0,(16,sp)
.L208:
	mov (16,sp),a0
	mov a0,d0
	ret [d2,d3,a2,a3,exreg1],52
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
	beq .L214
	mov_mov d1, d2, 0, d3
.L216:
	mov_mov d2, r6, d2, d1
	mov_mov a2, d0, r4, a0
	calls (a0)
	cmp 0,d0
	beq .L213
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L216
.L214:
	mov 0,r6
.L213:
	mov_mov r6, a0, r6, d0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L220
.L219:
	retf [],0
.L220:
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
	jmp .L222
.L223:
	inc d2
.L222:
	movbu (d2),d3
	extbu d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L223
	extbu d3,d1
	cmp 43,d1
	beq .L229
	mov d1,d3
	cmp 45,d1
	bne .L230
	mov 1,a1
.L224:
	inc d2
.L225:
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	bhi .L227
	setlb
.L226:
	mul 10,d0
	inc d2
	extbu d1
	add -48,d1
	sub d1,d0
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	Lls # loop back to: .L226
.L227:
	cmp 0,a1
	bne .L221
	not d0
	inc d0
.L221:
	ret [d2,d3],20
.L229:
	mov d0,a1
	jmp .L224
.L230:
	mov d0,a1
	jmp .L225
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,d2
	jmp .L234
.L235:
	inc d2
.L234:
	movbu (d2),d3
	extbu d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L235
	extbu d3,d1
	cmp 43,d1
	beq .L241
	mov d1,d3
	cmp 45,d1
	bne .L242
	mov 1,a1
.L236:
	inc d2
.L237:
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	bhi .L239
	setlb
.L238:
	mul 10,d0
	inc d2
	extbu d1
	add -48,d1
	sub d1,d0
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	Lls # loop back to: .L238
.L239:
	cmp 0,a1
	bne .L233
	not d0
	inc d0
.L233:
	ret [d2,d3],20
.L241:
	mov d0,a1
	jmp .L236
.L242:
	mov d0,a1
	jmp .L237
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,r4
	jmp .L246
.L247:
	inc r4
.L246:
	movbu (r4),r5
	extbu r5,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L247
	extbu r5,d1
	cmp 43,d1
	beq .L248
	mov d1,r5
	cmp 45,d1
	bne .L249
	mov 1,d0
.L248:
	inc r4
.L249:
	movbu (r4),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	bhi .L255
	mov 0,a0
	mov a0,a1
	mov 10,r1
	setlb
.L250:
	mov 10,r0
	mul a1,r0
	mulu a0,r1,d3,d2
	add_add r0, d3, 1, r4
	extbu d1
	add -48,d1
	mov_mov d1, a2, d1, a3
	asr 31,a3
	sub d1,d2,a0
	subc a3,d3,a1
	movbu (r4),d1
	extbu d1,r0
	add -48,r0
	cmp 9,r0
	Lls # loop back to: .L250
.L251:
	cmp 0,d0
	bne .L245
	sub a0,d0,a0
	subc a1,d0,a1
.L245:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],44
.L255:
	mov 0,a0
	mov a0,a1
	jmp .L251
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov_mov d0, r4, d1, a2
	mov (56,sp),d2
	mov (60,sp),a3
	mov (64,sp),r5
	cmp 0,d2
	bne .L260
.L257:
	mov 0,d3
.L256:
	mov_mov d3, a0, d3, d0
	ret [d2,d3,a2,a3,exreg1],44
.L261:
	mov r6,d2
.L258:
	cmp 0,d2
	beq .L257
.L260:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	add a2,d3
	mov_mov d3, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L261
	ble .L256
	add a3,d3,a2
	add -1,d2
	sub r6,d2
	jmp .L258
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov_mov d0, a3, d1, d3
	mov (64,sp),a2
	mov (68,sp),r5
	mov (72,sp),r4
	mov (60,sp),r6
	cmp 0,r6
	bne .L267
.L264:
	mov 0,d2
.L263:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3,exreg1],48
.L266:
	asr 1,r6
	cmp 0,r6
	beq .L264
.L267:
	mov r6,d2
	asr 1,d2
	mul a2,d2
	add d3,d2
	mov r4,(12,sp)
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L263
	ble .L266
	add a2,d2,d3
	add -1,r6
	jmp .L266
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
	blt .L273
.L271:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L273:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L271
	.size	imaxabs, .-imaxabs
	.global imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movm [d2,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, a2
	mov (60,sp),a3
	mov (64,sp),r4
	mov (68,sp),r5
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d1, d0, a3, d1
	call +__divdi3,[],0
	mov d0,(d2)
	mov d1,(4,d2)
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__moddi3,[],0
	mov d0,(8,d2)
	mov d1,(12,d2)
	mov d2,a0
	ret [d2,a2,a3,exreg1],48
	.size	imaxdiv, .-imaxdiv
	.global labs
	.type	labs, @function
labs:
	mov_cmp d0, d1, 0, d0
	blt .L277
.L276:
	retf [],0
.L277:
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
	blt .L282
.L280:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L282:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L280
	.size	llabs, .-llabs
	.global lldiv
	.type	lldiv, @function
lldiv:
	movm [d2,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, a2
	mov (60,sp),a3
	mov (64,sp),r4
	mov (68,sp),r5
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d1, d0, a3, d1
	call +__divdi3,[],0
	mov d0,(d2)
	mov d1,(4,d2)
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__moddi3,[],0
	mov d0,(8,d2)
	mov d1,(12,d2)
	mov d2,a0
	ret [d2,a2,a3,exreg1],48
	.size	lldiv, .-lldiv
	.global wcschr
	.type	wcschr, @function
wcschr:
	mov (d0),a0
	cmp 0,a0
	beq .L286
.L285:
	cmp a0,d1
	beq .L286
	add 4,d0
	mov (d0),a0
	cmp 0,a0
	bne .L285
.L286:
	cmp 0,a0
	beq .L291
.L284:
	mov d0,a0
	retf [],0
.L291:
	mov 0,d0
	jmp .L284
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),r0
	mov_add 4, a0, -4, d1
	cmp r0,a1
	bne .L294
.L293:
	cmp 0,a1
	beq .L294
	cmp 0,r0
	beq .L294
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L293
.L294:
	cmp r0,a1
	blt .L299
	mov 1,d0
	bgt .L292
	mov 0,d0
	retf [],0
.L299:
	mov -1,d0
.L292:
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov 0,a1
	setlb
.L302:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L302
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L307
	mov d0,d1
	setlb
.L306:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L306
.L305:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
.L307:
	mov d0,d1
	jmp .L305
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L311
.L310:
	mov (d0),a1
	mov (d1),r0
	cmp r0,a1
	bne .L311
	cmp 0,a1
	beq .L311
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L310
.L311:
	cmp 0,a0
	beq .L315
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L316
	mov 1,d0
	bgt .L309
	mov 0,d0
	retf [],0
.L315:
	mov 0,d0
	retf [],0
.L316:
	mov -1,d0
.L309:
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L320
.L319:
	mov (d0),a1
	cmp d1,a1
	beq .L320
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L319
.L320:
	cmp 0,a0
	beq .L325
.L318:
	mov d0,a0
	retf [],0
.L325:
	mov 0,d0
	jmp .L318
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L328
.L327:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L328
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L327
.L328:
	cmp 0,a0
	beq .L332
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L333
	mov 1,d0
	bgt .L326
	mov 0,d0
	retf [],0
.L332:
	mov 0,d0
	retf [],0
.L333:
	mov -1,d0
.L326:
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov d0,a1
	mov (28,sp),d0
	cmp 0,d0
	beq .L336
	asl2 d0
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L336:
	mov_mov a1, a0, a1, d0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a0
	cmp d1,d0
	beq .L338
	mov -1,a1
	add a0,a1
	sub d1,d0,r1
	mov a0,r0
	asl2 r0
	cmp r0,r1
	bcs .L339
	mov 0,r0
	cmp r0,a0
	beq .L338
	setlb
.L340:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	add_add -1, a1, 4, r0
	cmp -1,a1
	Lne # loop back to: .L340
	jmp .L338
.L339:
	cmp 0,a0
	beq .L338
	asl2 a1
	setlb
.L341:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L341
.L338:
	mov d0,a0
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a0
	mov -1,a1
	add_cmp a0, a1, 0, a0
	beq .L347
	mov d0,r0
	setlb
.L348:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L348
.L347:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L351
	cmp 0,a0
	beq .L350
	add_add -1, d0, -1, d1
	setlb
.L353:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L353
	retf [],0
.L351:
	beq .L350
	cmp 0,a0
	beq .L350
	mov 0,a1
	setlb
.L354:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	Lne # loop back to: .L354
.L350:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L358
	mov 0,r0
	asl d0,a0,r1
.L359:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L360
	not d0
	add_mov 1, d0, 0, r2
	mov r2,r3
	lsr d0,a1,r2
.L361:
	or r0,r2,a0
	or r1,r3,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L358:
	mov a0,d1
	mov_lsr d0, r0, 1, d1
	not r0
	lsr r0,d1
	asl d0,a1,r1
	or d1,r1
	asl d0,a0,r0
	jmp .L359
.L360:
	mov a1,d1
	add d1,d1
	not d0
	inc d0
	and 63,d0
	mov d0,r2
	not r2
	asl r2,d1
	lsr d0,a0,r2
	or d1,r2
	lsr d0,a1,r3
	jmp .L361
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L363
	mov 0,r0
	mov r0,r1
	lsr d0,a1,r0
.L364:
	mov 0,d1
	sub d0,d1
	and 32,d1
	beq .L365
	not d0
	add_mov 1, d0, 0, r2
	asl d0,a0,r3
.L366:
	or r0,r2,a0
	or r1,r3,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L363:
	mov a1,d1
	mov_asl d0, r0, 1, d1
	not r0
	asl r0,d1
	lsr d0,a0,r0
	or d1,r0
	lsr d0,a1,r1
	jmp .L364
.L365:
	mov a0,d1
	lsr 1,d1
	not d0
	inc d0
	and 63,d0
	mov d0,r2
	not r2
	lsr r2,d1
	asl d0,a1,r3
	or d1,r3
	asl d0,a0,r2
	jmp .L366
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
	mov d0,d1
	asl 24,d1
	mov d0,a0
	lsr 24,a0
	or_mov a0, d1, d0, a0
	lsr 8,a0
	and 65280,a0
	or a0,d1
	asl 8,d0
	and 16711680,d0
	or d1,d0
	retf [],0
	.size	bswap_32, .-bswap_32
	.global bswap_64
	.type	bswap_64, @function
bswap_64:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d0, a0, d1, a1
	mov_mov 0, d0, a0, d1
	asl 24,d1
	mov a1,a2
	lsr 24,a2
	mov_mov a2, d2, a1, a2
	lsr 8,a2
	mov a2,r0
	and 65280,r0
	or r0,d2,a2
	mov_mov d1, a3, a1, r4
	asl 8,r4
	mov a0,r0
	lsr 24,r0
	or r4,r0
	mov r0,r2
	and 16711680,r2
	or r2,a2,d2
	mov a1,d1
	asl 24,d1
	mov a0,r0
	lsr 8,r0
	or d1,r0
	mov r0,r2
	and -16777216,r2
	or r2,d2,a2
	mov a0,a1
	lsr 24,a1
	mov r4,r1
	or_mov a1, r1, a0, r0
	asl 8,r0
	extbu r1,r3
	or d0,a2,d2
	or r3,a3,d3
	mov a0,a1
	lsr 8,a1
	mov d1,r3
	or a1,r3
	mov r3,a1
	and 65280,a1
	or d0,d2,r2
	or a1,d3,r3
	mov r0,r1
	and 16711680,r1
	or d0,r2,a0
	or r1,r3,a1
	mov_mov a0, d0, a1, d1
	retf [d2,d3,a2,a3,exreg1],32
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	mov 0,d1
.L381:
	lsr d1,d0,a0
	inc d1
	btst 1,a0
	bne .L383
	cmp 32,d1
	bne .L381
	mov 0,d0
	retf [],0
.L383:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov_cmp d0, d1, 0, d0
	beq .L384
	and 1,d0
	bne .L384
	mov 1,d0
	setlb
.L386:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L386
	retf [],0
.L384:
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
	blt .L392
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L393
.L391:
	mov d2,d0
.L389:
	ret [d2,d3],20
.L393:
	mov 0,d2
	jmp .L391
.L392:
	mov 1,d0
	jmp .L389
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
	blt .L397
	mov_mov 1, a2, -1, d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L398
.L396:
	mov a2,d0
.L394:
	ret [d2,d3,a2],32
.L398:
	mov 0,a2
	jmp .L396
.L397:
	mov 1,d0
	jmp .L394
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
	blt .L402
	mov_mov 1, a2, -1, d0
	mov d0,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L403
.L401:
	mov a2,d0
.L399:
	ret [d2,d3,a2],32
.L403:
	mov 0,a2
	jmp .L401
.L402:
	mov 1,d0
	jmp .L399
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
	bne .L406
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L406
	cmp 0,d2
	blt .L413
	mov 1073741824,d3
	jmp .L410
.L413:
	mov 1056964608,d3
	jmp .L410
.L409:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L406
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L410:
	btst 1,d2
	beq .L409
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L409
.L406:
	mov a2,d0
	ret [d2,d3,a2],24
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),r4
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L415
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov d2,(12,sp)
	mov d3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L415
	cmp 0,r4
	blt .L422
	mov 0,a2
	mov 1073741824,a3
	jmp .L419
.L422:
	mov 0,a2
	mov 1071644672,a3
	jmp .L419
.L418:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L415
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L419:
	btst 1,r4
	beq .L418
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L418
.L415:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),r4
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L424
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov d2,(12,sp)
	mov d3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L424
	cmp 0,r4
	blt .L431
	mov 0,a2
	mov 1073741824,a3
	jmp .L428
.L431:
	mov 0,a2
	mov 1071644672,a3
	jmp .L428
.L427:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L424
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L428:
	btst 1,r4
	beq .L427
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L427
.L424:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L433
	add_mov d1, r2, d0, a1
	setlb
.L434:
	add_add 1, d1, 1, a1
	movbu (-1,a1),r0
	movbu (-1,d1),r1
	xor r1,r0
	movbu r0,(-1,a1)
	cmp d1,r2
	Lne # loop back to: .L434
.L433:
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
	beq .L438
.L437:
	movbu (d2),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L438
	add_add 1, d2, 1, d0
	add -1,d3
	bne .L437
.L438:
	cmp 0,d3
	bne .L440
	mov 0,d1
	movbu d1,(d0)
.L440:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
	cmp d0,d1
	beq .L449
.L443:
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L450
.L442:
	retf [],0
.L449:
	mov d1,d0
	retf [],0
.L450:
	inc d0
	cmp d0,d1
	bne .L443
	mov d1,d0
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r2
	extbu r2,a0
	cmp 0,a0
	beq .L458
.L452:
	mov d1,r0
	extbu r2
.L455:
	movbu (r0),a1
	extbu a1,r1
	cmp 0,r1
	beq .L459
	inc r0
	extbu a1
	cmp r2,a1
	bne .L455
.L453:
	mov d0,a0
	retf [],0
.L458:
	mov 0,d0
	jmp .L453
.L459:
	inc d0
	movbu (d0),r2
	extbu r2,a0
	cmp 0,a0
	bne .L452
	mov 0,d0
	jmp .L453
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a1, 0, d0
	jmp .L462
.L461:
	inc a1
	extbu a0
	cmp 0,a0
	beq .L465
.L462:
	movbu (a1),a0
	extbu a0,r0
	cmp d1,r0
	bne .L461
	mov a1,d0
	jmp .L461
.L465:
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
	beq .L466
	movbu (d3),a3
.L468:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L466
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L466
	inc d2
	jmp .L468
.L466:
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
	blt .L480
.L472:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L475
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L474
.L475:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3],36
.L480:
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L472
.L474:
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
	jmp .L475
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov d0,d2
	mov (60,sp),r5
	mov (64,sp),r4
	cmp 0,r4
	beq .L485
	cmp r4,d1
	bcs .L486
	sub r4,d1,d3
	add d0,d3
	cmp d3,d0
	bhi .L487
	movbu (r5),a3
	add_add 1, r5, -1, r4
	jmp .L484
.L483:
	cmp d3,d2
	bhi .L489
.L484:
	movbu (d2),d0
	mov_add d2, a2, 1, d2
	extbu d0
	cmp a3,d0
	bne .L483
	mov r4,(12,sp)
	mov_mov r5, d1, d2, d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L483
	jmp .L481
.L489:
	mov 0,a2
.L481:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2,a3,exreg1],48
.L485:
	mov d0,a2
	jmp .L481
.L486:
	mov 0,a2
	jmp .L481
.L487:
	mov 0,a2
	jmp .L481
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
	blt .L515
	mov 0,r5
.L492:
	mov 0,d0
	mov d0,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp 0,d0
	blt .L512
	mov 0,r6
	mov r6,a2
	mov 1071644672,r4
	mov 1072693248,a3
.L496:
	inc r6
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__gedf2,[],0
	cmp 0,d0
	bge .L496
.L497:
	mov (64,sp),d0
	mov r6,(d0)
	cmp 0,r5
	beq .L501
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L501:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L515:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r5
	jmp .L492
.L512:
	mov 0,d0
	mov d0,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L513
	mov 0,d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L514
	mov 0,r6
	mov r6,a3
	mov 1071644672,a2
.L500:
	add -1,r6
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
	mov a3,(12,sp)
	mov a2,(16,sp)
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L500
	jmp .L497
.L513:
	mov 0,r6
	jmp .L497
.L514:
	mov 0,r6
	jmp .L497
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -8,sp
	mov d1,d3
	mov (52,sp),a0
	mov (56,sp),a1
	or d1,d0,d2
	beq .L520
	mov 0,r4
	mov r4,r5
	setlb
.L519:
	mov d0,a2
	and 1,a2
	clr a3
	mov a3,d3
	sub a2,a3,r0
	subc a3,a3,r1
	mov r1,(4,sp)
	mov r0,(sp)
	mov r0,r6
	and_mov a0, r6, r1, r7
	and a1,r7
	add r6,r4
	addc r7,r5
	mov a0,d2
	lsr 31,d2
	mov a1,r1
	add r1,r1
	or_mov d2, r1, a0, r0
	add r0,r0
	mov_mov r0, a0, r1, a1
	mov d1,d2
	asl 31,d2
	mov d0,r2
	lsr 1,r2
	or_mov d2, r2, d1, r3
	mov_lsr r2, d0, 1, r3
	mov r3,d1
	or r3,r2,d2
	cmp a3,d2
	Lne # loop back to: .L519
.L516:
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L520:
	mov 0,r4
	mov r4,r5
	jmp .L516
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L524
	mov 32,d0
	mov 1,a0
.L523:
	cmp 0,d1
	blt .L524
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L524
	add -1,d0
	bne .L523
	mov d0,a0
.L524:
	mov 0,d0
	cmp d0,a0
	bne .L525
	mov a0,d0
.L526:
	cmp 0,r0
	bne .L536
.L522:
	retf [],0
.L528:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L526
.L525:
	cmp d1,a1
	bcs .L528
	or_sub a0, d0, d1, a1
	jmp .L528
.L536:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	btst 255,d0
	beq .L539
	extbu d0,d1
	asl 8,d1
	mov 0,d0
	bsch d1, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L539:
	mov 7,d0
	retf [],0
	.size	__clrsbqi2, .-__clrsbqi2
	.global __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	mov_mov d0, r0, d1, d0
	asr 31,d0
	xor d0,r0,a0
	xor d0,d1,a1
	cmp d0,r0
	beq .L548
.L546:
	cmp 0,a1
	beq .L543
	mov 0,d0
	bsch a1, d0
	xor 31,d0
.L544:
	add -1,d0
	retf [],0
.L548:
	cmp d0,d1
	bne .L546
	mov 63,d0
	retf [],0
.L543:
	mov 0,d0
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L544
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_cmp d0, a1, 0, d0
	beq .L552
	mov 0,d0
	setlb
.L551:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L551
	retf [],0
.L552:
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
	bcc .L555
.L558:
	cmp 0,d2
	beq .L557
	mov_asl 0, a0, 3, d2
	setlb
.L561:
	mov (a0,d1),r0
	add a0,d1,r2
	mov (4,r2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp a0,d2
	Lne # loop back to: .L561
.L557:
	cmp a1,r3
	bls .L554
	setlb
.L562:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L562
.L554:
	retf [d2],4
.L555:
	add r3,d1,a0
	cmp a0,d0
	bhi .L558
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L554
	setlb
.L559:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L559
	jmp .L554
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcc .L568
.L571:
	cmp 0,r0
	beq .L570
	mov_asl 0, a0, 1, r0
	setlb
.L574:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L574
.L570:
	btst 1,r1
	beq .L567
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L568:
	add r1,d1,a0
	cmp a0,d0
	bhi .L571
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L578
	setlb
.L572:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L572
.L567:
	retf [],0
.L578:
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
	bcc .L580
.L583:
	cmp 0,r2
	beq .L582
	mov_asl 0, a1, 2, r2
	setlb
.L586:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L586
.L582:
	cmp a0,r1
	bls .L579
	setlb
.L587:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L587
	retf [],0
.L580:
	add r1,d1,a1
	cmp a1,d0
	bhi .L583
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L592
	setlb
.L584:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L584
.L579:
	retf [],0
.L592:
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
.L601:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L599
	inc d1
	cmp 16,d1
	bne .L601
.L599:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L605:
	asr d1,d0,a0
	btst 1,a0
	bne .L603
	inc d1
	cmp 16,d1
	bne .L605
.L603:
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
	bge .L613
	mov d2,d0
	call +__fixsfsi,[],0
.L607:
	ret [d2],16
.L613:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L607
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	setlb
.L615:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L615
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
.L618:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L618
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_cmp d0, a1, 0, d0
	beq .L623
	mov 0,d0
	setlb
.L622:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L622
	retf [],0
.L623:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov_cmp d0, a1, 0, d0
	beq .L628
	cmp 0,d1
	beq .L629
	mov 0,d0
	setlb
.L627:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L627
	retf [],0
.L628:
	retf [],0
.L629:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L633
	mov 32,d0
	mov 1,a0
.L632:
	cmp 0,d1
	blt .L633
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L633
	add -1,d0
	bne .L632
	mov d0,a0
.L633:
	mov 0,d0
	cmp d0,a0
	bne .L634
	mov a0,d0
.L635:
	cmp 0,r0
	bne .L645
.L631:
	retf [],0
.L637:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L635
.L634:
	cmp d1,a1
	bcs .L637
	or_sub a0, d0, d1, a1
	jmp .L637
.L645:
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
	blt .L649
	mov_mov 1, d2, a2, d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L650
.L648:
	mov d2,d0
.L646:
	ret [d2,d3,a2],24
.L650:
	mov 0,d2
	jmp .L648
.L649:
	mov -1,d0
	jmp .L646
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
	blt .L654
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L655
.L653:
	mov r4,d0
.L651:
	ret [d2,d3,a2,a3,exreg1],52
.L655:
	mov 0,r4
	jmp .L653
.L654:
	mov -1,d0
	jmp .L651
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
	blt .L666
	mov 0,r1
.L659:
	cmp 0,d1
	beq .L664
	mov 32,r0
	mov 0,d0
.L661:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L660
	mov -1,a0
	add r0,a0
	mov a0,r0
	btst 255,a0
	bne .L661
.L660:
	cmp 0,r1
	beq .L658
	not d0
	inc d0
.L658:
	retf [],0
.L666:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L659
.L664:
	mov d1,d0
	jmp .L660
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L672
	mov 0,d2
.L668:
	cmp 0,d1
	blt .L673
.L669:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L667
	not d0
	inc d0
.L667:
	ret [d2],20
.L672:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L668
.L673:
	not d1
	inc d1
	xor 1,d2
	jmp .L669
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L679
	mov 0,d2
.L675:
	mov_cmp a0, d1, 0, a0
	blt .L680
.L676:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L674
	not d0
	inc d0
.L674:
	ret [d2],20
.L679:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L675
.L680:
	mov 0,d1
	sub a0,d1
	jmp .L676
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
	bcc .L683
	mov 16,d1
	mov 1,a1
	exthu r0,r1
.L682:
	exth a0,d0
	cmp 0,d0
	blt .L683
	mov a0,d0
	add d0,d0
	mov d0,a0
	add a1,a1
	exthu d0
	cmp d0,r1
	bls .L683
	add -1,d1
	bne .L682
	mov 0,a1
.L683:
	exthu a1,d1
	mov 0,d0
	cmp 0,d1
	bne .L684
	mov a1,d0
.L685:
	cmp 0,r2
	bne .L695
.L681:
	retf [],0
.L687:
	exthu a1,d1
	lsr 1,d1
	mov d1,a1
	asl 16,a0
	lsr 17,a0
	cmp 0,d1
	beq .L685
.L684:
	exthu r0,d1
	exthu a0,r1
	cmp r1,d1
	bcs .L687
	or_sub a1, d0, a0, r0
	jmp .L687
.L695:
	mov r0,d0
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L698
	mov 32,d0
	mov 1,a0
.L697:
	cmp 0,d1
	blt .L698
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L698
	add -1,d0
	bne .L697
	mov d0,a0
.L698:
	mov 0,d0
	cmp d0,a0
	bne .L699
	mov a0,d0
.L700:
	cmp 0,r0
	bne .L710
.L696:
	retf [],0
.L702:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L700
.L699:
	cmp d1,a1
	bcs .L702
	or_sub a0, d0, d1, a1
	jmp .L702
.L710:
	mov a1,d0
	retf [],0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L712
	mov_asl 0, r0, d0, a0
.L713:
	mov a0,r1
.L714:
	mov_mov r0, d0, r1, d1
	retf [],0
.L712:
	cmp 0,d0
	beq .L715
	asl d0,a0,r0
	mov 0,d1
	sub d0,d1
	lsr d1,a0,d1
	asl d0,a1,d0
	or d0,d1,a0
	jmp .L713
.L715:
	mov_mov a0, r0, a1, r1
	jmp .L714
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d1
	mov d1,d0
	and 32,d0
	beq .L717
	mov a1,d0
	asr 31,d0
	asr d1,a1,d1
.L718:
	mov_mov d1, r0, d0, r1
.L719:
	mov_mov r0, d0, r1, d1
	retf [],0
.L717:
	cmp 0,d1
	beq .L720
	asr d1,a1,d0
	mov 0,r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	jmp .L718
.L720:
	mov_mov a0, r0, a1, r1
	jmp .L719
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d0, a0, d1, a1
	mov 0,d0
	mov_mov d0, d1, a1, d0
	lsr 24,d0
	mov a0,a3
	asl 24,a3
	mov a1,a2
	lsr 8,a2
	mov a2,r0
	and 65280,r0
	or r0,d0,a2
	mov a1,r4
	asl 8,r4
	mov a0,r0
	lsr 24,r0
	or r4,r0
	mov r0,r2
	and 16711680,r2
	or r2,a2,d2
	mov a1,d0
	asl 24,d0
	mov a0,r0
	lsr 8,r0
	or d0,r0
	mov r0,r2
	and -16777216,r2
	or r2,d2,a2
	mov a0,a1
	lsr 24,a1
	mov r4,r1
	or_mov a1, r1, a0, r0
	asl 8,r0
	extbu r1,r3
	or d1,a2,d2
	or r3,a3,d3
	mov a0,a1
	lsr 8,a1
	mov d0,r3
	or a1,r3
	mov r3,a1
	and 65280,a1
	or d1,d2,r2
	or a1,d3,r3
	mov r0,r1
	and 16711680,r1
	or d1,r2,a0
	or r1,r3,a1
	mov_mov a0, d0, a1, d1
	retf [d2,d3,a2,a3,exreg1],32
	.size	__bswapdi2, .-__bswapdi2
	.global __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	mov d0,d1
	lsr 24,d1
	mov d0,a0
	asl 24,a0
	or_mov a0, d1, d0, a0
	lsr 8,a0
	and 65280,a0
	or a0,d1
	asl 8,d0
	and 16711680,d0
	or d1,d0
	retf [],0
	.size	__bswapsi2, .-__bswapsi2
	.global __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	mov 1,a0
	cmp 65535,d0
	bls .L724
	mov 0,a0
.L724:
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L725
	mov 0,d0
.L725:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L726
	mov 0,d0
.L726:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	add_lsr a0, d0, a1, d1
	mov 1,a0
	btst 12,d1
	beq .L727
	mov 0,a0
.L727:
	mov_asl 2, a1, 1, a0
	sub a0,a1
	lsr a1,d1
	mov d1,a1
	lsr 1,a1
	btst 1,a1
	bne .L728
	mov 2,a1
	sub d1,a1,d1
.L729:
	add a0,d0
	add d1,d0
	retf [],0
.L728:
	mov 0,d1
	jmp .L729
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	blt .L732
	bgt .L733
	cmp a0,r0
	bcs .L734
	bhi .L735
	mov 1,d0
	retf [],0
.L732:
	mov 0,d0
	retf [],0
.L733:
	mov 2,d0
	retf [],0
.L734:
	mov 0,d0
	retf [],0
.L735:
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
	mov_cmp 1, a0, 0, d1
	beq .L738
	mov 0,a0
.L738:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	mov_cmp 1, d0, 0, a1
	beq .L739
	mov 0,d0
.L739:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L740
	mov 0,d0
.L740:
	asl2 d0
	lsr d0,d1
	add a0,d0,a1
	mov 1,d0
	btst 3,d1
	beq .L741
	mov 0,d0
.L741:
	add d0,d0
	lsr d0,d1
	and 3,d1
	mov d1,a0
	not a0
	and 1,a0
	mov_lsr 2, r0, 1, d1
	sub_mov d1, r0, 0, d1
	sub a0,d1
	and_add r0, d1, a1, d0
	add d1,d0
	retf [],0
	.size	__ctzsi2, .-__ctzsi2
	.global __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d1
	mov_mov a1, r1, d1, d0
	and 32,d0
	beq .L743
	lsr d1,a1,d1
	mov 0,d0
.L744:
	mov_mov d1, r0, d0, r1
.L745:
	mov_mov r0, d0, r1, d1
	retf [],0
.L743:
	cmp 0,d1
	beq .L746
	lsr d1,a1,d0
	mov 0,a1
	sub d1,a1
	asl a1,r1,a1
	lsr d1,a0,d1
	or a1,d1
	jmp .L744
.L746:
	mov a0,r0
	jmp .L745
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movm [d2],(sp)
	exthu d0,a1
	exthu d1,a0
	mul a1,a0,d2,r2
	mov r2,r1
	lsr 16,r1
	lsr 16,d0
	mul d0,a0
	add r1,a0
	exthu a0,r1
	lsr 16,d1
	mul d1,a1
	add r1,a1
	exthu r2
	mov a1,r3
	asl 16,r3
	add r3,r2,r0
	lsr 16,a0
	mul d0,d1
	add a0,d1
	lsr 16,a1
	add_mov a1, d1, r0, d0
	ret [d2],4
	.size	__muldsi3, .-__muldsi3
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov (40,sp),a2
	mov (44,sp),a3
	mov a2,d1
	call +__muldsi3,[],0
	mov_mov d0, r0, d1, r1
	mul a2,d3,d0,d1
	mul a3,d2
	add d2,d1
	add_mov r1, d1, r0, d2
	mov_mov d1, d3, r0, d0
	ret [d2,d3,a2,a3],28
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	movm [d2],(sp)
	mov_mov d0, r0, 0, d0
	sub r0,d0,a0
	subc d1,d0,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
	.size	__negdi2, .-__negdi2
	.global __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	mov d0,a0
	xor d1,a0
	mov a0,d1
	lsr 16,d1
	xor a0,d1
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
	mov_mov d0, r4, d1, r5
	mov (64,sp),a2
	mov_mov a2, a3, 0, d2
	mov 1072693248,d3
	jmp .L757
.L755:
	mov a3,d0
	lsr 31,d0
	add d0,a3
	asr 1,a3
	cmp 0,a3
	beq .L756
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L757:
	btst 1,a3
	beq .L755
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L755
.L756:
	cmp 0,a2
	blt .L759
.L754:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L759:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L754
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a3
	mov d1,d2
	mov 1065353216,a2
	jmp .L763
.L761:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L762
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L763:
	btst 1,d2
	beq .L761
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L761
.L762:
	cmp 0,a3
	blt .L765
.L760:
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L765:
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,a2
	jmp .L760
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	bcs .L768
	bhi .L769
	cmp a0,r0
	bcs .L770
	bhi .L771
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
	mov_mov d0, a0, d1, a1
	mov (32,sp),d0
	mov (36,sp),d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a0, d0, a1, d1
	call +__ucmpdi2,[],0
	add -1,d0
	ret [],20
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.local	seed
	.comm	seed,8,4
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
