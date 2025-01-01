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
	beq .L20
.L16:
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L28
	add_add -1, a0, 1, d1
	add_cmp 1, d0, 0, a0
	bne .L16
.L20:
	mov 0,d0
	jmp .L15
.L28:
	cmp 0,a0
	beq .L20
	inc d0
.L15:
	mov d0,a0
	retf [],0
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L35
.L30:
	movbu (d0),a1
	cmp d1,a1
	beq .L39
	inc d0
	add -1,a0
	bne .L30
.L35:
	mov 0,d0
	jmp .L29
.L39:
	cmp 0,a0
	beq .L35
.L29:
	mov d0,a0
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L45
.L41:
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	bne .L53
	add_add -1, a0, 1, d0
	add_cmp 1, d1, 0, a0
	bne .L41
.L45:
	mov 0,d0
	retf [],0
.L53:
	cmp 0,a0
	beq .L45
	mov r0,d0
	sub a1,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov d0,a1
	mov (28,sp),d0
	cmp 0,d0
	beq .L55
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L55:
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
.L61:
	cmp r0,a0
	beq .L65
	mov_add a0, d0, -1, a0
	movbu (d0),a1
	cmp d1,a1
	bne .L61
	jmp .L60
.L65:
	mov 0,d0
.L60:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L67
	add_mov d0, r0, d0, a1
	setlb
.L68:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L68
.L67:
	mov d0,a0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
.L81:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	beq .L75
	add_add 1, d1, 1, d0
	jmp .L81
.L75:
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	movbu (d0),a0
	cmp 0,a0
	beq .L83
.L84:
	cmp d1,a0
	beq .L83
	inc d0
	movbu (d0),a0
	cmp 0,a0
	bne .L84
.L83:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L93:
	movbu (d0),a0
	cmp d1,a0
	beq .L92
	add_cmp 1, d0, 0, a0
	bne .L93
	mov 0,d0
.L92:
	mov d0,a0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d0),a0
	movbu (d1),r0
	mov_add 1, a1, -1, d1
	cmp r0,a0
	bne .L98
.L97:
	cmp 0,a0
	beq .L98
	movbu (a1,d0),a0
	inc a1
	extbu a0
	movbu (a1,d1),r0
	cmp r0,a0
	beq .L97
.L98:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L104
	setlb
.L105:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L105
.L104:
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L114
	movbu (d0),a0
	cmp 0,a0
	beq .L111
	add -1,r0
	add d0,r0
.L112:
	movbu (d1),a1
	cmp 0,a1
	beq .L111
	cmp r0,d0
	beq .L111
	cmp a0,a1
	bne .L111
	add_add 1, d0, 1, d1
	movbu (d0),a0
	cmp 0,a0
	bne .L112
.L111:
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L114:
	mov 0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a1
	cmp 1,a1
	ble .L125
	and -2,a1
	add d0,a1
	setlb
.L127:
	movbu (1,d0),a0
	movbu a0,(d1)
	movbu (d0),a0
	movbu a0,(1,d1)
	add_add 2, d1, 2, d0
	cmp a1,d0
	Lne # loop back to: .L127
.L125:
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
	bls .L131
	mov 0,d0
.L131:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov_mov d0, d1, 1, d0
	cmp 127,d1
	bls .L134
	mov 0,d0
.L134:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L139
	mov 1,d1
	cmp 9,d0
	beq .L138
	mov 0,d1
.L138:
	mov d1,d0
	retf [],0
.L139:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L147
	mov 1,d1
	cmp 127,d0
	beq .L146
	mov 0,d1
.L146:
	mov d1,d0
	retf [],0
.L147:
	mov 1,d0
	retf [],0
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L153
	mov 0,d0
.L153:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add_mov d0, d1, 1, d0
	cmp 93,d1
	bls .L156
	mov 0,d0
.L156:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L159
	mov 0,d0
.L159:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add_mov d0, d1, 1, d0
	cmp 94,d1
	bls .L162
	mov 0,d0
.L162:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L167
	add -9,d0
	mov_cmp 1, d1, 4, d0
	bls .L166
	mov 0,d1
.L166:
	mov d1,d0
	retf [],0
.L167:
	mov 1,d0
	retf [],0
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov -65,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L170
	mov 0,d0
.L170:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L177
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L177
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L177
	add -65529,d0
	mov_cmp 1, d1, 2, d0
	bls .L174
	mov 0,d1
.L174:
	mov d1,d0
	retf [],0
.L177:
	mov 1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L180
	mov 0,d0
.L180:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L191
	cmp 8231,d0
	bls .L188
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L188
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L188
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L189
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L191:
	inc d0
	mov d0,d1
	and 127,d1
	mov 1,d0
	cmp 32,d1
	bhi .L182
.L189:
	mov 0,d0
.L182:
	retf [],0
.L188:
	mov 1,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L195
	or 32,d0
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 5,d1
	bls .L192
	mov 0,d0
	retf [],0
.L195:
	mov 1,d0
.L192:
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
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L202
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L203
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L206
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L199:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L202:
	mov_mov d2, a0, d3, a1
	jmp .L199
.L203:
	mov_mov a2, a0, a3, a1
	jmp .L199
.L206:
	mov_mov r4, a0, r4, a1
	jmp .L199
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	movm [d2,d3,a2],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a2
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L211
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	mov_cmp d0, d2, 0, d0
	bne .L212
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L215
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
.L208:
	ret [d2,d3,a2],24
.L211:
	mov d3,d0
	jmp .L208
.L212:
	mov a2,d0
	jmp .L208
.L215:
	mov d2,d0
	jmp .L208
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
	bne .L223
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L224
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L219
	cmp 0,a0
	bne .L225
	mov_mov d2, a0, d3, a1
	jmp .L217
.L219:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L226
	mov_mov d2, d0, d3, d1
.L221:
	mov_mov d0, a0, d1, a1
.L217:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L226:
	mov_mov a2, d0, a3, d1
	jmp .L221
.L223:
	mov_mov a2, a0, a3, a1
	jmp .L217
.L224:
	mov_mov d2, a0, d3, a1
	jmp .L217
.L225:
	mov_mov a2, a0, a3, a1
	jmp .L217
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
	bne .L235
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L229
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L231
	cmp 0,a0
	beq .L229
	mov d3,d0
	jmp .L229
.L231:
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L235
	mov d2,d0
	jmp .L229
.L235:
	mov d3,d0
.L229:
	ret [d2,d3],20
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
	bne .L247
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L248
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L243
	cmp 0,a0
	bne .L249
	mov_mov d2, a0, d3, a1
	jmp .L241
.L243:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L250
	mov_mov d2, d0, d3, d1
.L245:
	mov_mov d0, a0, d1, a1
.L241:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L250:
	mov_mov a2, d0, a3, d1
	jmp .L245
.L247:
	mov_mov a2, a0, a3, a1
	jmp .L241
.L248:
	mov_mov d2, a0, d3, a1
	jmp .L241
.L249:
	mov_mov a2, a0, a3, a1
	jmp .L241
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
	bne .L259
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L260
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L255
	cmp 0,a0
	bne .L261
	mov_mov a2, a0, a3, a1
	jmp .L253
.L255:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L262
	mov_mov a2, d0, a3, d1
.L257:
	mov_mov d0, a0, d1, a1
.L253:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L262:
	mov_mov d2, d0, d3, d1
	jmp .L257
.L259:
	mov_mov a2, a0, a3, a1
	jmp .L253
.L260:
	mov_mov d2, a0, d3, a1
	jmp .L253
.L261:
	mov_mov d2, a0, d3, a1
	jmp .L253
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
	bne .L271
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L265
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L267
	cmp 0,a0
	bne .L265
	mov d3,d0
	jmp .L265
.L267:
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L274
.L271:
	mov d3,d0
.L265:
	ret [d2,d3],20
.L274:
	mov d2,d0
	jmp .L265
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
	bne .L283
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L284
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L279
	cmp 0,a0
	bne .L285
	mov_mov a2, a0, a3, a1
	jmp .L277
.L279:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L286
	mov_mov a2, d0, a3, d1
.L281:
	mov_mov d0, a0, d1, a1
.L277:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L286:
	mov_mov d2, d0, d3, d1
	jmp .L281
.L283:
	mov_mov a2, a0, a3, a1
	jmp .L277
.L284:
	mov_mov d2, a0, d3, a1
	jmp .L277
.L285:
	mov_mov d2, a0, d3, a1
	jmp .L277
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	mov +s.0,d1
	cmp 0,d0
	beq .L290
	mov +digits,a1
	setlb
.L291:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L291
.L290:
	mov 0,d0
	movbu d0,(d1)
	mov +s.0,a0
	mov a0,d0
	retf [],0
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
	beq .L306
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L299
	mov d0,(4,d1)
.L299:
	retf [],0
.L306:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L308
	mov (4,d0),a0
	mov a0,(4,d1)
.L308:
	mov (4,d0),d1
	cmp 0,d1
	beq .L307
	mov (d0),d0
	mov d0,(d1)
.L307:
	retf [],0
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov_mov d0, a2, d1, r6
	mov (64,sp),r4
	mov (68,sp),r5
	mov (60,sp),a0
	mov (a0),d3
	cmp 0,d3
	beq .L318
	mov_mov d1, d2, 0, r7
.L320:
	mov_mov d2, a3, d2, d1
	mov_mov a2, d0, r5, a0
	calls (a0)
	cmp 0,d0
	beq .L317
	add_add 1, r7, r4, d2
	cmp r7,d3
	bne .L320
.L318:
	mov 1,d0
	add d3,d0
	mov (60,sp),a0
	mov d0,(a0)
	mul r4,d3,d0,a3
	add_cmp r6, a3, 0, r4
	beq .L317
	mov r4,(12,sp)
	mov_mov a2, d1, a3, d0
	call +memmove,[],0
.L317:
	mov_mov a3, a0, a3, d0
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
	beq .L334
	mov_mov d1, d2, 0, d3
.L336:
	mov_mov d2, r6, d2, d1
	mov_mov a2, d0, r4, a0
	calls (a0)
	cmp 0,d0
	beq .L333
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L336
.L334:
	mov 0,r6
.L333:
	mov_mov r6, a0, r6, d0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L348
.L346:
	retf [],0
.L348:
	mov 0,d0
	sub d1,d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
	jmp .L350
.L353:
	inc d1
.L350:
	movbu (d1),a0
	cmp 32,a0
	beq .L353
	mov -9,d0
	add a0,d0
	cmp 4,d0
	bls .L353
	mov 0,d0
	cmp 43,a0
	beq .L360
	cmp 45,a0
	bne .L361
	mov 1,r0
.L354:
	inc d1
	jmp .L355
.L360:
	mov 0,r0
	jmp .L354
.L356:
	mul 10,d0
	inc d1
	add -48,a0
	sub a0,d0
.L355:
	movbu (d1),a0
	mov -48,a1
	add a0,a1
	cmp 9,a1
	bls .L356
	cmp 0,r0
	bne .L349
	not d0
	inc d0
.L349:
	rets
.L361:
	mov 0,r0
	jmp .L355
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	add -12,sp
	call +atoi,[],0
	ret [],12
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2],(sp)
	jmp .L370
.L373:
	inc d0
.L370:
	movbu (d0),d1
	cmp 32,d1
	beq .L373
	mov -9,d2
	add d1,d2
	cmp 4,d2
	bls .L373
	mov 0,a2
	cmp 43,d1
	beq .L374
	cmp 45,d1
	bne .L375
	mov 1,a2
.L374:
	inc d0
.L375:
	movbu (d0),d1
	mov -48,d2
	add_mov d1, d2, 0, r2
	mov r2,r3
	cmp 9,d2
	bhi .L377
	mov 10,d2
	setlb
.L376:
	mov 10,d3
	mul r3,d3
	mulu r2,d2,a1,a0
	add_add d3, a1, 1, d0
	add -48,d1
	mov d1,r1
	asr 31,r1
	sub d1,a0,r2
	subc r1,a1,r3
	movbu (d0),d1
	mov -48,d3
	add d1,d3
	cmp 9,d3
	Lls # loop back to: .L376
.L377:
	cmp 0,a2
	bne .L369
	sub r2,a2,r2
	subc r3,a2,r3
.L369:
	mov_mov r2, d0, r3, d1
	ret [d2,d3,a2],12
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
	jmp .L398
.L393:
	mov r6,d2
.L398:
	cmp 0,d2
	beq .L389
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	add a2,d3
	mov_mov d3, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L393
	ble .L388
	add a3,d3,a2
	add -1,d2
	sub r6,d2
	jmp .L398
.L389:
	mov 0,d3
.L388:
	mov_mov d3, a0, d3, d0
	ret [d2,d3,a2,a3,exreg1],44
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
	bne .L404
.L401:
	mov 0,d2
.L400:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3,exreg1],48
.L403:
	asr 1,r6
	cmp 0,r6
	beq .L401
.L404:
	mov r6,d2
	asr 1,d2
	mul a2,d2
	add d3,d2
	mov r4,(12,sp)
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L400
	ble .L403
	add a2,d2,d3
	add -1,r6
	jmp .L403
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
	blt .L419
.L416:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L419:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L416
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
	blt .L425
.L423:
	retf [],0
.L425:
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
	blt .L432
.L429:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L432:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L429
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
	jmp .L444
.L438:
	add 4,d0
.L444:
	mov (d0),a0
	cmp 0,a0
	beq .L441
	cmp a0,d1
	bne .L438
	cmp 0,a0
	beq .L441
.L435:
	mov d0,a0
	retf [],0
.L441:
	mov 0,d0
	jmp .L435
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),r0
	mov_add 4, a0, -4, d1
	cmp r0,a1
	bne .L448
.L447:
	cmp 0,a1
	beq .L448
	cmp 0,r0
	beq .L448
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L447
.L448:
	cmp r0,a1
	blt .L453
	mov 1,d0
	bgt .L446
	mov 0,d0
	retf [],0
.L453:
	mov -1,d0
.L446:
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov 0,a1
	setlb
.L460:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L460
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L464
	setlb
.L465:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L465
.L464:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L475
.L470:
	mov (d0),a1
	mov (d1),r0
	cmp r0,a1
	bne .L471
	cmp 0,a1
	beq .L471
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L470
.L475:
	mov 0,d0
	retf [],0
.L471:
	cmp 0,a0
	beq .L475
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L476
	mov 1,d0
	bgt .L469
	jmp .L475
.L476:
	mov -1,d0
.L469:
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L490
.L485:
	mov (d0),a1
	cmp d1,a1
	beq .L494
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L485
.L490:
	mov 0,d0
	jmp .L484
.L494:
	cmp 0,a0
	beq .L490
.L484:
	mov d0,a0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L501
.L496:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L510
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L496
.L501:
	mov 0,d0
	retf [],0
.L510:
	cmp 0,a0
	beq .L501
	cmp a1,r0
	blt .L502
	mov 1,d0
	bgt .L495
	jmp .L501
.L502:
	mov -1,d0
.L495:
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov d0,a1
	mov (28,sp),d0
	cmp 0,d0
	beq .L512
	asl2 d0
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L512:
	mov_mov a1, a0, a1, d0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a0
	cmp d1,d0
	beq .L518
	mov -1,a1
	add a0,a1
	sub d1,d0,r1
	mov a0,r0
	asl2 r0
	cmp r0,r1
	bcs .L519
	mov 0,r0
	cmp r0,a0
	beq .L518
	setlb
.L520:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	add_add -1, a1, 4, r0
	cmp -1,a1
	Lne # loop back to: .L520
	jmp .L518
.L519:
	cmp 0,a0
	beq .L518
	asl2 a1
	setlb
.L521:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L521
.L518:
	mov d0,a0
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a0
	mov -1,a1
	add_cmp a0, a1, 0, a0
	beq .L531
	mov d0,r0
	setlb
.L532:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L532
.L531:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L539
	cmp 0,a0
	beq .L538
	add_add -1, d0, -1, d1
	setlb
.L541:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L541
	retf [],0
.L539:
	beq .L538
	cmp 0,a0
	beq .L538
	mov 0,a1
	setlb
.L542:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	Lne # loop back to: .L542
.L538:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L553
	mov 0,r0
	asl d0,a0,r1
.L554:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L555
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L556:
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L553:
	mov a0,d1
	mov_lsr d0, r0, 1, d1
	not r0
	lsr r0,d1
	asl d0,a1,r1
	or d1,r1
	asl d0,a0,r0
	jmp .L554
.L555:
	mov a1,r3
	mov_asl r2, d0, 1, r3
	not d0
	asl d0,r3
	lsr r2,a0,d0
	or r3,d0
	lsr r2,a1,d1
	jmp .L556
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L559
	mov 0,r0
	mov r0,r1
	lsr d0,a1,r0
.L560:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L561
	mov 0,d0
	asl r2,a0,d1
.L562:
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L559:
	mov a1,d1
	mov_asl d0, r0, 1, d1
	not r0
	asl r0,d1
	lsr d0,a0,r0
	or d1,r0
	lsr d0,a1,r1
	jmp .L560
.L561:
	mov a0,r3
	mov_lsr r2, d0, 1, r3
	not d0
	lsr d0,r3
	asl r2,a1,d1
	or r3,d1
	asl r2,a0,d0
	jmp .L562
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
	exthu d0,d1
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
.L589:
	lsr d1,d0,a0
	inc d1
	btst 1,a0
	bne .L592
	cmp 32,d1
	bne .L589
	mov 0,d0
	retf [],0
.L592:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov_cmp d0, d1, 0, d0
	beq .L596
	and 1,d0
	bne .L593
	mov 1,d0
	setlb
.L595:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L595
	retf [],0
.L596:
	mov 0,d0
.L593:
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
	blt .L603
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L605
.L602:
	mov d2,d0
.L600:
	ret [d2,d3],20
.L605:
	mov 0,d2
	jmp .L602
.L603:
	mov 1,d0
	jmp .L600
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,a3
	mov a3,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L609
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L611
.L608:
	mov a2,d0
.L606:
	ret [d2,d3,a2,a3],36
.L611:
	mov 0,a2
	jmp .L608
.L609:
	mov 1,d0
	jmp .L606
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov -1,a3
	mov a3,(12,sp)
	mov -1048577,d0
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L615
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L617
.L614:
	mov a2,d0
.L612:
	ret [d2,d3,a2,a3],36
.L617:
	mov 0,a2
	jmp .L614
.L615:
	mov 1,d0
	jmp .L612
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
	bne .L621
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L621
	cmp 0,d2
	blt .L635
	mov 1073741824,d3
	jmp .L625
.L635:
	mov 1056964608,d3
	jmp .L625
.L624:
	mov d2,d1
	lsr 31,d1
	add d2,d1
	asr 1,d1
	mov_cmp d1, d2, 0, d1
	beq .L621
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L625:
	btst 1,d2
	beq .L624
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L624
.L621:
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
	mov_cmp d0, r5, 0, d0
	bne .L637
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L637
	mov_cmp r5, d2, 0, r4
	blt .L651
	mov 1073741824,d3
	jmp .L641
.L651:
	mov 1071644672,d3
	jmp .L641
.L640:
	mov r4,d0
	lsr 31,d0
	add r4,d0
	asr 1,d0
	mov_cmp d0, r4, 0, d0
	beq .L637
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L641:
	btst 1,r4
	beq .L640
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L640
.L637:
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
	mov_cmp d0, r5, 0, d0
	bne .L653
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L653
	mov_cmp r5, d2, 0, r4
	blt .L667
	mov 1073741824,d3
	jmp .L657
.L667:
	mov 1071644672,d3
	jmp .L657
.L656:
	mov r4,d0
	lsr 31,d0
	add r4,d0
	asr 1,d0
	mov_cmp d0, r4, 0, d0
	beq .L653
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L657:
	btst 1,r4
	beq .L656
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L656
.L653:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L669
	add_mov d1, r2, d0, a1
	setlb
.L670:
	add_add 1, d1, 1, a1
	movbu (-1,a1),r0
	movbu (-1,d1),r1
	xor r1,r0
	movbu r0,(-1,a1)
	cmp d1,r2
	Lne # loop back to: .L670
.L669:
	mov d0,a0
	retf [],0
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov (12,sp),r1
	movbu (d0),a0
	mov_cmp d0, a1, 0, a0
	beq .L677
	setlb
.L678:
	inc a1
	movbu (a1),r0
	cmp 0,r0
	Lne # loop back to: .L678
.L677:
	cmp 0,r1
	beq .L685
.L679:
	movbu (d1),r0
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L691
	add_add 1, d1, 1, a1
	add -1,r1
	bne .L679
	jmp .L685
.L691:
	cmp 0,r1
	bne .L682
.L685:
	movbu r1,(a1)
.L682:
	mov d0,a0
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
	cmp d0,d1
	beq .L700
.L693:
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L695
.L692:
	retf [],0
.L700:
	retf [],0
.L695:
	inc d0
	cmp d0,d1
	bne .L693
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
.L709:
	movbu (d0),r1
	cmp 0,r1
	beq .L706
	mov d1,a1
.L705:
	movbu (a1),r0
	cmp 0,r0
	beq .L711
	add_cmp 1, a1, r1, r0
	bne .L705
.L703:
	mov d0,a0
	retf [],0
.L711:
	inc d0
	jmp .L709
.L706:
	mov 0,d0
	jmp .L703
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a0, 0, d0
	jmp .L714
.L713:
	add_cmp 1, a0, 0, a1
	beq .L718
.L714:
	movbu (a0),a1
	cmp d1,a1
	bne .L713
	mov a0,d0
	jmp .L713
.L718:
	mov d0,a0
	retf [],0
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2],(sp)
	movbu (d1),r2
	mov_cmp d1, a0, 0, r2
	beq .L720
	setlb
.L721:
	inc a0
	movbu (a0),a1
	cmp 0,a1
	Lne # loop back to: .L721
.L720:
	sub d1,a0,d2
	cmp d1,a0
	beq .L722
	add -1,d2
	jmp .L728
.L731:
	mov d1,r0
	jmp .L724
.L727:
	cmp 0,d0
	beq .L722
	movbu (d0),a1
	cmp 0,a1
	beq .L731
	add d2,d0,r3
	mov_mov d1, r0, d0, a0
.L725:
	movbu (r0),r1
	cmp 0,r1
	beq .L724
	cmp r3,a0
	beq .L724
	cmp a1,r1
	bne .L724
	add_add 1, a0, 1, r0
	movbu (a0),a1
	cmp 0,a1
	bne .L725
.L724:
	movbu (r0),a0
	cmp a1,a0
	beq .L722
	inc d0
.L728:
	movbu (d0),a0
	cmp r2,a0
	beq .L727
	add_cmp 1, d0, 0, a0
	bne .L728
	mov 0,d0
.L722:
	mov d0,a0
	retf [d2],4
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov 0,r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L754
.L745:
	mov 0,r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L748
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L747
.L748:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L754:
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L745
.L747:
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
	jmp .L748
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2],(sp)
	mov d0,r2
	mov (24,sp),a2
	mov (28,sp),d2
	cmp 0,d2
	beq .L755
	cmp d2,d1
	bcs .L765
	sub d2,d1,r3
	add d0,r3
	cmp r3,d0
	bhi .L765
	movbu (a2),d3
	jmp .L762
.L778:
	cmp 0,d1
	beq .L755
	cmp r0,r1
	beq .L755
.L757:
	cmp r3,r2
	bhi .L765
.L762:
	movbu (r2),d1
	mov_add r2, d0, 1, r2
	extbu d1
	cmp d3,d1
	bne .L757
	mov 1,a0
	add_mov a2, a0, -1, d1
	add_cmp d2, d1, 1, d2
	beq .L755
	mov r2,a1
.L758:
	movbu (a1),r1
	movbu (a0),r0
	cmp r0,r1
	bne .L778
	add_add -1, d1, 1, a1
	add_cmp 1, a0, 0, d1
	bne .L758
.L755:
	mov d0,a0
	retf [d2,d3,a2],12
.L765:
	mov 0,d0
	jmp .L755
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov d0,a1
	mov (32,sp),d2
	cmp 0,d2
	beq .L780
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L780:
	add d2,a1,d0
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
	blt .L813
	mov 0,r5
.L786:
	mov 0,a2
	mov a2,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp a2,d0
	blt .L809
	mov a2,r6
	mov 1071644672,r4
	mov 1072693248,a3
.L790:
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
	bge .L790
.L791:
	mov (64,sp),d0
	mov r6,(d0)
	cmp 0,r5
	beq .L795
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L795:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L813:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r5
	jmp .L786
.L809:
	mov a2,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L810
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	mov_cmp 0, r6, 0, d0
	beq .L791
	mov r6,a3
	mov 1071644672,a2
.L794:
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
	blt .L794
	jmp .L791
.L810:
	mov 0,r6
	jmp .L791
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
	beq .L818
	mov 0,r4
	mov r4,r5
	setlb
.L817:
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
	Lne # loop back to: .L817
.L814:
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L818:
	mov_mov d2, r4, d2, r5
	jmp .L814
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L830
	mov 32,d0
	mov 1,a0
.L822:
	cmp 0,d1
	blt .L823
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L823
	add -1,d0
	bne .L822
.L834:
	mov 0,d0
.L825:
	cmp 0,r0
	bne .L836
.L821:
	retf [],0
.L823:
	cmp 0,a0
	beq .L834
.L830:
	mov 0,d0
	jmp .L824
.L827:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L825
.L824:
	cmp d1,a1
	bcs .L827
	or_sub a0, d0, d1, a1
	jmp .L827
.L836:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L839
	asl 8,d0
	mov 0,d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L839:
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
	beq .L850
.L847:
	mov_cmp 0, d0, 0, a1
	beq .L844
	bsch a1, d0
	xor 31,d0
.L845:
	add -1,d0
	retf [],0
.L850:
	cmp d0,d1
	bne .L847
	mov 63,d0
	retf [],0
.L844:
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L845
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_mov d0, a1, 0, d0
	cmp 0,a1
	beq .L854
	setlb
.L853:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L853
	retf [],0
.L854:
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
	bcc .L858
.L861:
	cmp 0,d2
	beq .L860
	mov_asl 0, a0, 3, d2
	setlb
.L864:
	mov (a0,d1),r0
	add a0,d1,r2
	mov (4,r2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp a0,d2
	Lne # loop back to: .L864
.L860:
	cmp a1,r3
	bls .L857
	setlb
.L865:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L865
.L857:
	retf [d2],4
.L858:
	add r3,d1,a0
	cmp a0,d0
	bhi .L861
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L857
	setlb
.L862:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L862
	jmp .L857
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcc .L872
.L875:
	cmp 0,r0
	beq .L874
	mov_asl 0, a0, 1, r0
	setlb
.L878:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L878
.L874:
	btst 1,r1
	beq .L871
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L872:
	add r1,d1,a0
	cmp a0,d0
	bhi .L875
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L886
	setlb
.L876:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L876
.L871:
	retf [],0
.L886:
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
	bcc .L888
.L891:
	cmp 0,r2
	beq .L890
	mov_asl 0, a1, 2, r2
	setlb
.L894:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L894
.L890:
	cmp a0,r1
	bls .L887
	setlb
.L895:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L895
	retf [],0
.L888:
	add r1,d1,a1
	cmp a1,d0
	bhi .L891
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L901
	setlb
.L892:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L892
.L887:
	retf [],0
.L901:
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
.L916:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L914
	inc d1
	cmp 16,d1
	bne .L916
.L914:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L921:
	asr d1,d0,a0
	btst 1,a0
	bne .L919
	inc d1
	cmp 16,d1
	bne .L921
.L919:
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
	bge .L931
	mov d2,d0
	call +__fixsfsi,[],0
.L924:
	ret [d2],16
.L931:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L924
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	setlb
.L933:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L933
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
.L937:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L937
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_mov d0, a1, 0, d0
	cmp 0,a1
	beq .L943
	setlb
.L942:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L942
	retf [],0
.L943:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov_mov d0, a1, 0, d0
	cmp 0,a1
	beq .L949
	cmp 0,d1
	beq .L950
	setlb
.L948:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L948
	retf [],0
.L949:
	retf [],0
.L950:
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d1, d0
	bls .L962
	mov 32,d0
	mov 1,a0
.L954:
	cmp 0,d1
	blt .L955
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L955
	add -1,d0
	bne .L954
.L966:
	mov 0,d0
.L957:
	cmp 0,r0
	bne .L968
.L953:
	retf [],0
.L955:
	cmp 0,a0
	beq .L966
.L962:
	mov 0,d0
	jmp .L956
.L959:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L957
.L956:
	cmp d1,a1
	bcs .L959
	or_sub a0, d0, d1, a1
	jmp .L959
.L968:
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
	blt .L972
	mov_mov 1, d2, a2, d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L974
.L971:
	mov d2,d0
.L969:
	ret [d2,d3,a2],24
.L974:
	mov 0,d2
	jmp .L971
.L972:
	mov -1,d0
	jmp .L969
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
	blt .L978
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L980
.L977:
	mov r4,d0
.L975:
	ret [d2,d3,a2,a3,exreg1],52
.L980:
	mov 0,r4
	jmp .L977
.L978:
	mov -1,d0
	jmp .L975
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	mul d0,d1,a1,a0
	mov_mov a0, d0, a1, d1
	retf [],0
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	mulu d0,d1,a1,a0
	mov_mov a0, d0, a1, d1
	retf [],0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.global __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	mov_cmp d0, a1, 0, d1
	blt .L1000
	mov 0,r1
.L986:
	cmp 0,d1
	beq .L991
	mov 32,r0
	mov 0,d0
.L988:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L987
	mov -1,a0
	add r0,a0
	mov a0,r0
	extbu a0
	cmp 0,a0
	bne .L988
.L987:
	cmp 0,r1
	beq .L985
	not d0
	inc d0
.L985:
	retf [],0
.L1000:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L986
.L991:
	mov 0,d0
	jmp .L987
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1022
	mov 0,r1
.L1002:
	cmp 0,d1
	blt .L1023
.L1003:
	mov_cmp d0, r0, d1, d0
	bls .L1011
	mov 32,a1
	mov 1,a0
.L1005:
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L1004
	add -1,a1
	bne .L1005
.L1012:
	mov 0,a1
.L1006:
	mov_cmp a1, d0, 0, r1
	beq .L1001
	mov 0,d0
	sub a1,d0
.L1001:
	retf [],0
.L1022:
	not d0
	add_mov 1, d0, 1, r1
	jmp .L1002
.L1023:
	not d1
	inc d1
	xor 1,r1
	jmp .L1003
.L1011:
	mov 1,a0
	jmp .L1020
.L1004:
	cmp 0,a0
	beq .L1012
.L1020:
	mov 0,a1
	jmp .L1008
.L1024:
	or_sub a0, a1, d1, r0
.L1007:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L1006
.L1008:
	cmp d1,r0
	bcs .L1007
	jmp .L1024
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	mov_cmp d1, a0, 0, d0
	blt .L1047
	mov 0,r1
.L1026:
	mov_mov d0, r0, a0, d1
	cmp 0,a0
	blt .L1048
.L1027:
	cmp d1,d0
	bls .L1035
	mov 32,a1
	mov 1,a0
.L1029:
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L1045
	add -1,a1
	bne .L1029
.L1030:
	mov_cmp r0, d0, 0, r1
	beq .L1025
	mov 0,d0
	sub r0,d0
.L1025:
	retf [],0
.L1047:
	not d0
	add_mov 1, d0, 1, r1
	jmp .L1026
.L1048:
	mov 0,d1
	sub a0,d1
	jmp .L1027
.L1035:
	mov 1,a0
	jmp .L1040
.L1049:
	sub d1,r0
.L1031:
	lsr 1,a0
	lsr 1,d1
.L1045:
	cmp 0,a0
	beq .L1030
.L1040:
	cmp d1,r0
	bcs .L1031
	jmp .L1049
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r3
	mov d0,r2
	mov d1,a0
	exthu d1
	exthu d0
	cmp d0,d1
	bcc .L1065
	mov 16,d1
	mov 1,r0
	exthu r2,a1
.L1051:
	exth a0,d0
	cmp 0,d0
	blt .L1052
	mov a0,d0
	add d0,d0
	mov d0,a0
	add r0,r0
	exthu d0
	cmp d0,a1
	bls .L1052
	add -1,d1
	bne .L1051
	mov 0,r0
.L1063:
	mov r0,d0
.L1054:
	cmp 0,r3
	bne .L1066
.L1050:
	retf [],0
.L1065:
	mov 1,r0
	mov 1,d1
	jmp .L1059
.L1052:
	exthu r0,d1
	cmp 0,d1
	beq .L1063
.L1059:
	mov 0,d0
	jmp .L1053
.L1056:
	lsr 1,d1
	mov d1,r0
	lsr 1,a1
	mov a1,a0
	cmp 0,d1
	beq .L1054
	exthu d1
.L1053:
	exthu r2,r1
	exthu a0,a1
	cmp a1,r1
	bcs .L1056
	or_sub r0, d0, a0, r2
	jmp .L1056
.L1066:
	mov r2,d0
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d1, d0
	bls .L1076
	mov 32,d0
	mov 1,a0
.L1068:
	cmp 0,d1
	blt .L1069
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1069
	add -1,d0
	bne .L1068
.L1080:
	mov 0,d0
.L1071:
	cmp 0,r0
	bne .L1082
.L1067:
	retf [],0
.L1069:
	cmp 0,a0
	beq .L1080
.L1076:
	mov 0,d0
	jmp .L1070
.L1073:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L1071
.L1070:
	cmp d1,a1
	bcs .L1073
	or_sub a0, d0, d1, a1
	jmp .L1073
.L1082:
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
	beq .L1084
	mov_asl 0, r0, d0, a0
.L1085:
	mov a0,r1
.L1086:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1084:
	cmp 0,d0
	beq .L1087
	asl d0,a0,r0
	mov 0,d1
	sub d0,d1
	lsr d1,a0,d1
	asl d0,a1,d0
	or d0,d1,a0
	jmp .L1085
.L1087:
	mov_mov a0, r0, a1, r1
	jmp .L1086
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d1
	mov d1,d0
	and 32,d0
	beq .L1090
	mov a1,d0
	asr 31,d0
	asr d1,a1,d1
.L1091:
	mov_mov d1, r0, d0, r1
.L1092:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1090:
	cmp 0,d1
	beq .L1093
	asr d1,a1,d0
	mov 0,r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	jmp .L1091
.L1093:
	mov_mov a0, r0, a1, r1
	jmp .L1092
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
	bls .L1100
	mov 0,a0
.L1100:
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L1101
	mov 0,d0
.L1101:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L1102
	mov 0,d0
.L1102:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	add_lsr a0, d0, a1, d1
	mov 1,a0
	btst 12,d1
	beq .L1103
	mov 0,a0
.L1103:
	mov_asl 2, a1, 1, a0
	sub a0,a1,r0
	lsr r0,d1
	mov d1,r0
	lsr 1,r0
	btst 1,r0
	bne .L1104
	sub d1,a1
.L1105:
	add a0,d0
	add a1,d0
	retf [],0
.L1104:
	mov 0,a1
	jmp .L1105
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	blt .L1120
	bgt .L1121
	cmp a0,r0
	bcs .L1120
	bhi .L1121
	mov 1,d0
	retf [],0
.L1120:
	mov 0,d0
	retf [],0
.L1121:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	blt .L1127
	bgt .L1128
	cmp a0,r0
	bcs .L1127
	bhi .L1128
	mov 1,d0
	jmp .L1124
.L1127:
	mov 0,d0
.L1124:
	add -1,d0
	retf [],0
.L1128:
	mov 2,d0
	jmp .L1124
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	mov_cmp 1, a0, 0, d1
	beq .L1131
	mov 0,a0
.L1131:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	mov_cmp 1, d0, 0, a1
	beq .L1132
	mov 0,d0
.L1132:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L1133
	mov 0,d0
.L1133:
	asl2 d0
	lsr d0,d1
	add a0,d0,a1
	mov 1,d0
	btst 3,d1
	beq .L1134
	mov 0,d0
.L1134:
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
	beq .L1149
	lsr d1,a1,d1
	mov 0,d0
.L1150:
	mov_mov d1, r0, d0, r1
.L1151:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1149:
	cmp 0,d1
	beq .L1152
	lsr d1,a1,d0
	mov 0,r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	jmp .L1150
.L1152:
	mov a0,r0
	jmp .L1151
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
	mov_mov d0, a0, d1, a1
	mov (28,sp),r0
	mov (32,sp),r1
	exthu d0,d1
	exthu r0,d0
	mul d1,d0,d2,d3
	mov d3,a2
	lsr 16,a2
	mov a0,d2
	lsr 16,d2
	mul d2,d0
	add a2,d0
	exthu d0,a3
	mov r0,a2
	lsr 16,a2
	mul a2,d1
	add a3,d1
	exthu d3
	mov d1,a3
	asl 16,a3
	add a3,d3,r2
	lsr 16,d0
	mul a2,d2
	add d2,d0
	lsr 16,d1
	add d1,d0
	mov d0,d3
	mul a0,r1,d0,d1
	add d3,d1
	mul a1,r0
	add_mov r0, d1, r2, d0
	ret [d2,d3,a2,a3],16
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
	mov_mov d0, d2, d1, d3
	mov (64,sp),r4
	mov_mov r4, r5, 0, a2
	mov 1072693248,a3
	jmp .L1171
.L1169:
	mov r5,d0
	lsr 31,d0
	add r5,d0
	asr 1,d0
	mov_cmp d0, r5, 0, d0
	beq .L1170
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L1171:
	btst 1,r5
	beq .L1169
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L1169
.L1170:
	cmp 0,r4
	blt .L1177
.L1168:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1177:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov 0,d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L1168
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a3
	mov d1,d2
	mov 1065353216,a2
	jmp .L1181
.L1179:
	mov d2,a0
	lsr 31,a0
	add d2,a0
	asr 1,a0
	mov_cmp a0, d2, 0, a0
	beq .L1180
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L1181:
	btst 1,d2
	beq .L1179
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L1179
.L1180:
	cmp 0,a3
	blt .L1187
.L1178:
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1187:
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,a2
	jmp .L1178
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	bcs .L1192
	bhi .L1193
	cmp a0,r0
	bcs .L1192
	bhi .L1193
	mov 1,d0
	retf [],0
.L1192:
	mov 0,d0
	retf [],0
.L1193:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	bcs .L1199
	bhi .L1200
	cmp a0,r0
	bcs .L1199
	bhi .L1200
	mov 1,d0
	jmp .L1196
.L1199:
	mov 0,d0
.L1196:
	add -1,d0
	retf [],0
.L1200:
	mov 2,d0
	jmp .L1196
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
