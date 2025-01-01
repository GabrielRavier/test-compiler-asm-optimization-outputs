	.file	"mini-libc.c"
	.am33
	.section .text
	.global memmove
	.type	memmove, @function
memmove:
	cmp d1,d0
	mov (12,sp),a1
	mov d0,a0
	bls .L2
	cmp 0,a1
	beq .L3
	mov_add -1, r0, -1, d1
	add d0,r0
	setlb
.L4:
	movbu (a1,d1),d0
	movbu d0,(a1,r0)
	add -1,a1
	Lne # loop back to: .L4
.L3:
	mov a0,d0
	retf [],0
.L2:
	beq .L3
	cmp 0,a1
	beq .L3
	clr r0
.L5:
	movbu (r0,d1),d0
	movbu d0,(r0,a0)
	inc r0
	cmp r0,a1
	beq .L3
	movbu (r0,d1),d0
	movbu d0,(r0,a0)
	inc r0
	cmp r0,a1
	bne .L5
	jmp .L3
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	mov (16,sp),a0
	movbu (12,sp),r0
	cmp 0,a0
	beq .L19
.L18:
	movbu (d1),a1
	add_add -1, a0, 1, d1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L30
	add_cmp 1, d0, 0, a0
	bne .L18
.L19:
	mov 0,a0
	mov a0,d0
	retf [],0
.L30:
	mov 1,a0
	add d0,a0
	mov a0,d0
	retf [],0
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L31
.L32:
	movbu (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L39
	add_cmp 1, d0, 0, a0
	bne .L32
.L31:
	mov a0,d0
	retf [],0
.L39:
	mov_mov d0, a0, d0, d0
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
	add_add -1, a0, 1, d0
	cmp a1,r0
	bne .L50
	add_cmp 1, d1, 0, a0
	bne .L41
.L45:
	mov a0,d0
	retf [],0
.L50:
	sub a1,r0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L52
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L52:
	mov_mov a1, d0, a1, a0
	ret [],16
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	mov (12,sp),a1
	extbu d1
	add -1,a1
	add_add d0, a1, -1, d0
.L59:
	cmp_mov d0, a1, a1, a0
	beq .L64
	movbu (a0),r0
	add_cmp -1, a1, d1, r0
	bne .L59
	mov a0,d0
	retf [],0
.L64:
	mov 0,a0
	mov a0,d0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	mov_cmp d0, a0, 0, r0
	beq .L66
	add_mov d0, r0, d0, a1
	setlb
.L67:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L67
.L66:
	mov a0,d0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	movbu (d1),a1
	mov d0,a0
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L75
	setlb
.L76:
	movbu (1,d1),d0
	add_add 1, a0, 1, d1
	extbu d0,a1
	cmp 0,a1
	movbu d0,(a0)
	Lne # loop back to: .L76
.L75:
	mov a0,d0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	mov d0,a0
	movbu (d0),d0
	extbu d1
	cmp 0,d0
	beq .L83
.L84:
	cmp d1,d0
	beq .L83
	movbu (1,a0),d0
	add_cmp 1, a0, 0, d0
	bne .L84
.L83:
	mov a0,d0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d0,a0
.L94:
	movbu (a0),d0
	cmp d1,d0
	beq .L93
	add_cmp 1, a0, 0, d0
	bne .L94
	mov d0,a0
.L93:
	mov a0,d0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d1),r0
	movbu (d0),a0
	add_mov -1, d1, 1, a1
	cmp r0,a0
	bne .L100
.L99:
	cmp 0,a0
	beq .L100
	movbu (a1,d0),a0
	inc a1
	movbu (a1,d1),r0
	extbu a0
	cmp r0,a0
	beq .L99
.L100:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L107
	setlb
.L108:
	movbu (1,d1),a0
	add_cmp 1, d1, 0, a0
	Lne # loop back to: .L108
.L107:
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L118
	movbu (d0),a0
	cmp 0,a0
	beq .L115
	add -1,r0
	add d0,r0
.L116:
	movbu (d1),a1
	cmp 0,a1
	beq .L115
	cmp r0,d0
	beq .L115
	add_cmp 1, d0, a0, a1
	bne .L115
	movbu (d0),a0
	add_cmp 1, d1, 0, a0
	bne .L116
.L115:
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L118:
	mov r0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),r0
	cmp 1,r0
	ble .L130
	and -2,r0
	add d0,r0
	setlb
.L132:
	movbu (1,d0),a1
	movbu (d0),a0
	movbu a1,(d1)
	movbu a0,(1,d1)
	add_add 2, d0, 2, d1
	cmp r0,d0
	Lne # loop back to: .L132
.L130:
	retf [],0
	.size	swab, .-swab
	.global isalpha
	.type	isalpha, @function
isalpha:
	mov d0,d1
	or 32,d1
	add -97,d1
	cmp 25,d1
	mov 1,d0
	bls .L137
	clr d0
.L137:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,d1
	cmp 127,d1
	mov 1,d0
	bls .L141
	clr d0
.L141:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L147
	cmp 9,d0
	mov 1,d1
	beq .L146
	clr d1
.L146:
	mov d1,d0
	retf [],0
.L147:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L156
	cmp 127,d0
	mov 1,d1
	beq .L155
	clr d1
.L155:
	mov d1,d0
	retf [],0
.L156:
	mov 1,d0
	retf [],0
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	mov 1,d0
	bls .L163
	clr d0
.L163:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	cmp 93,d1
	mov 1,d0
	bls .L167
	clr d0
.L167:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L171
	clr d0
.L171:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	cmp 94,d1
	mov 1,d0
	bls .L175
	clr d0
.L175:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L181
	add -9,d0
	cmp_mov 4, d0, 1, d1
	bhi .L184
	mov d1,d0
	retf [],0
.L184:
	clr d1
	mov d1,d0
	retf [],0
.L181:
	mov 1,d0
	retf [],0
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov -65,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L186
	clr d0
.L186:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L194
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L197
.L194:
	mov 1,d0
	retf [],0
.L197:
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L194
	add -65529,d0
	cmp_mov 2, d0, 1, d1
	bls .L191
	clr d1
.L191:
	mov d1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	mov 1,d0
	bls .L199
	clr d0
.L199:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L212
	cmp 8231,d0
	bls .L208
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L208
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L208
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L209
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L208:
	mov 1,d0
	retf [],0
.L212:
	inc d0
	mov d0,d1
	and 127,d1
	cmp 32,d1
	mov 1,d0
	bls .L209
	retf [],0
.L209:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L216
	or 32,d0
	mov -97,d1
	add d0,d1
	cmp_mov 5, d1, 1, d0
	bhi .L219
	retf [],0
.L216:
	mov 1,d0
	retf [],0
.L219:
	clr d0
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
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),a2
	bne .L225
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp_mov 0, d0, d0, r4
	bne .L226
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L229
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L229:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L225:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L226:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	movm [d2,d3,a2],(sp)
	mov d1,a2
	add -12,sp
	mov_mov d0, d1, d0, d3
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L235
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d0, d2
	bne .L236
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L239
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
	ret [d2,d3,a2],24
.L239:
	mov d2,d0
	ret [d2,d3,a2],24
.L235:
	mov d3,d0
	ret [d2,d3,a2],24
.L236:
	mov a2,d0
	ret [d2,d3,a2],24
	.size	fdimf, .-fdimf
	.global fmax
	.type	fmax, @function
fmax:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),a2
	bne .L248
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L249
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L244
	cmp 0,d0
	bne .L250
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L244:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L251
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L255:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L251:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L255
.L250:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L248:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L249:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3],(sp)
	mov d1,d3
	add -12,sp
	mov_mov d0, d1, d0, d2
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L264
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L256
	mov d3,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L258
	cmp 0,d0
	beq .L267
.L264:
	mov d3,d0
.L256:
	ret [d2,d3],20
.L258:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L264
.L267:
	mov d2,d0
	ret [d2,d3],20
	.size	fmaxf, .-fmaxf
	.global fmaxl
	.type	fmaxl, @function
fmaxl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),a2
	bne .L276
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L277
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L272
	cmp 0,d0
	bne .L278
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L272:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L279
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L283:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L279:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L283
.L278:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L276:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L277:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmaxl, .-fmaxl
	.global fmin
	.type	fmin, @function
fmin:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),a2
	bne .L290
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L291
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L286
	cmp 0,d0
	bne .L292
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L286:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L293
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L297:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L293:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L297
.L292:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L290:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L291:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3],(sp)
	mov d1,d2
	add -12,sp
	mov_mov d0, d1, d0, d3
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L304
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d3, d0
	bne .L298
	mov d2,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L300
	cmp 0,d0
	beq .L304
.L306:
	mov d3,d0
.L298:
	ret [d2,d3],20
.L300:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L306
.L304:
	mov d2,d0
	ret [d2,d3],20
	.size	fminf, .-fminf
	.global fminl
	.type	fminl, @function
fminl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),a2
	bne .L317
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L318
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L313
	cmp 0,d0
	bne .L319
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L313:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L320
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L324:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L320:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L324
.L319:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L317:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L318:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L326
	mov +digits,a1
	setlb
.L327:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),a0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu a0,(-1,d1)
	Lne # loop back to: .L327
.L326:
	mov +s.0,d0
	mov 0,a0
	movbu a0,(d1)
	mov d0,a0
	retf [],0
	.size	l64a, .-l64a
	.global srand
	.type	srand, @function
srand:
	add -1,d0
	mov d0,(+seed)
	clr d0
	mov d0,(+seed+4)
	retf [],0
	.size	srand, .-srand
	.global rand
	.type	rand, @function
rand:
	mov (+seed),r3
	mov (+seed+4),r2
	movm [d2,d3],(sp)
	mov 1481765933,d3
	mov 1284865837,d2
	mul 1284865837,r2
	mul r3,d3
	mulu r3,d2,a1,a0
	add_mov d3, r2, 1, r0
	add_mov r2, a1, 0, r1
	add a0,r0
	addc a1,r1
	mov r1,d0
	mov r0,(+seed)
	mov r1,(+seed+4)
	lsr 1,d0
	ret [d2,d3],8
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	cmp 0,d1
	beq .L344
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L336
	mov d0,(4,d1)
.L336:
	retf [],0
.L344:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L346
	mov (4,d0),a0
	mov a0,(4,d1)
.L346:
	mov (4,d0),d0
	cmp 0,d0
	beq .L345
	mov d1,(d0)
.L345:
	retf [],0
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov (60,sp),a0
	mov (64,sp),r4
	mov (a0),a2
	mov (68,sp),r5
	cmp_mov 0, a2, d0, a3
	mov d1,r6
	beq .L357
	clr r7
	mov d1,d2
.L359:
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	add_cmp 1, r7, 0, d0
	mov d2,d3
	beq .L356
	add_cmp r4, d2, r7, a2
	bne .L359
.L357:
	mul r4,a2,d0,d3
	mov (60,sp),a0
	add_add 1, a2, r6, d3
	cmp 0,r4
	mov a2,(a0)
	beq .L356
	mov r4,(12,sp)
	mov_mov a3, d1, d3, d0
	call +memmove,[],0
.L356:
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],48
	.size	lsearch, .-lsearch
	.global lfind
	.type	lfind, @function
lfind:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov (56,sp),a0
	mov (60,sp),r5
	mov (a0),a3
	mov (64,sp),r4
	cmp_mov 0, a3, d0, a2
	beq .L374
	clr d3
	mov d1,d2
.L376:
	mov_mov d2, d1, a2, d0
	mov r4,a0
	calls (a0)
	add_cmp 1, d3, 0, d0
	mov d2,r6
	beq .L373
	add_cmp r5, d2, d3, a3
	bne .L376
.L374:
	clr r6
.L373:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L390
	retf [],0
.L390:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L398:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L392
	cmp 4,d0
	bls .L392
	cmp 43,a0
	beq .L393
	cmp 45,a0
	bne .L415
	movbu (1,d1),a0
	mov -48,d0
	add_add 1, d1, a0, d0
	cmp 9,d0
	bhi .L403
	mov 1,r1
.L396:
	clr d0
.L400:
	setlb
.L416:
	mov -48,r0
	add_add 1, d1, a0, r0
	movbu (d1),a0
	mul 10,d0
	mov -48,a1
	sub_add r0, d0, a0, a1
	cmp 9,a1
	Lls # loop back to: .L416
	cmp 0,r1
	beq .L397
	rets
.L392:
	inc d1
	jmp .L398
.L415:
	mov -48,d0
	clr r1
	add a0,d0
	cmp 9,d0
	bls .L396
.L411:
	clr d0
.L397:
	not d0
	inc d0
	rets
.L393:
	movbu (1,d1),a0
	mov -48,d0
	clr r1
	add_add a0, d0, 1, d1
	cmp 9,d0
	bhi .L411
	clr d0
	jmp .L400
.L403:
	clr d0
	rets
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
	movm [d2,d3,a2,a3],(sp)
.L426:
	movbu (d0),d1
	mov -9,d2
	add d1,d2
	cmp 32,d1
	beq .L420
	cmp 4,d2
	bls .L420
	cmp 43,d1
	beq .L421
	cmp 45,d1
	beq .L422
	mov -48,d2
	add d1,d2
	cmp 9,d2
	bhi .L441
	mov 0,a3
.L424:
	clr r0
	mov 10,d3
	mov r0,r1
.L428:
	setlb
.L443:
	mov -48,d2
	inc d0
	mov 10,a2
	add d1,d2
	movbu (d0),d1
	mul r1,a2
	mulu r0,d3,a1,a0
	mov_mov d2, r2, d2, r3
	mov -48,d2
	add a2,a1
	asr 31,r3
	add d1,d2
	sub r2,a0,r0
	subc r3,a1,r1
	cmp 9,d2
	Lls # loop back to: .L443
	cmp 0,a3
	beq .L425
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L420:
	inc d0
	jmp .L426
.L422:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	bhi .L431
	clr r0
	mov 1,a3
	mov 10,d3
	mov r0,r1
	jmp .L428
.L421:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	mov 0,a3
	bls .L424
	mov_mov a3, r0, a3, r1
.L425:
	clr d0
	sub r0,d0,r0
	subc r1,d0,r1
.L442:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L431:
	clr r0
	mov_mov r0, r1, r0, d0
	mov r1,d1
	ret [d2,d3,a2,a3],16
.L441:
	clr r0
	clr d0
	mov r0,r1
	sub r0,d0,r0
	subc r1,d0,r1
	jmp .L442
	.size	atoll, .-atoll
	.global bsearch
	.type	bsearch, @function
bsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov (56,sp),d2
	mov (60,sp),a3
	mov (64,sp),r5
	mov_mov d0, r4, d1, a2
.L454:
	cmp 0,d2
	beq .L445
.L457:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	add -1,d2
	sub_cmp r6, d2, 0, d0
	blt .L449
	add a3,d3,a2
	cmp 0,d0
	bgt .L454
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],44
.L449:
	mov r6,d2
	cmp 0,d2
	bne .L457
.L445:
	clr d3
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov (60,sp),r6
	mov (64,sp),a2
	cmp 0,r6
	mov (68,sp),r5
	mov (72,sp),r4
	mov_mov d0, a3, d1, d3
	beq .L459
.L462:
	mov r6,d2
	asr 1,d2
	mul a2,d2
	mov r4,(12,sp)
	add_mov d3, d2, a3, d0
	mov_mov d2, d1, r5, a0
	calls (a0)
	cmp 0,d0
	beq .L458
	ble .L461
	add a2,d2,d3
	add -1,r6
.L461:
	asr 1,r6
	cmp 0,r6
	bne .L462
.L459:
	clr d2
.L458:
	mov_mov d2, d0, d2, a0
	ret [d2,d3,a2,a3,exreg1],48
	.size	bsearch_r, .-bsearch_r
	.global div
	.type	div, @function
div:
	ext d0
	div d1,d0
	movm [d2],(sp)
	mov mdr,d1
	ret [d2],4
	.size	div, .-div
	.global imaxabs
	.type	imaxabs, @function
imaxabs:
	movm [d2],(sp)
	cmp_mov 0, d1, d0, r0
	mov_mov d0, a0, d1, a1
	blt .L479
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L479:
	clr d0
	sub r0,d0,a0
	subc d1,d0,a1
	mov_mov a1, d1, a0, d0
	retf [d2],4
	.size	imaxabs, .-imaxabs
	.global imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movm [d2,a2,a3,exreg1],(sp)
	add -20,sp
	mov (64,sp),r4
	mov (68,sp),r5
	mov (60,sp),a3
	mov d1,a2
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d0, d2, a3, d1
	mov a2,d0
	call +__divdi3,[],0
	mov d0,(d2)
	mov d1,(4,d2)
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__moddi3,[],0
	mov d2,a0
	mov d0,(8,d2)
	mov d1,(12,d2)
	ret [d2,a2,a3,exreg1],48
	.size	imaxdiv, .-imaxdiv
	.global labs
	.type	labs, @function
labs:
	cmp 0,d0
	blt .L486
	retf [],0
.L486:
	not d0
	inc d0
	retf [],0
	.size	labs, .-labs
	.global ldiv
	.type	ldiv, @function
ldiv:
	ext d0
	div d1,d0
	movm [d2],(sp)
	mov mdr,d1
	ret [d2],4
	.size	ldiv, .-ldiv
	.global llabs
	.type	llabs, @function
llabs:
	movm [d2],(sp)
	cmp_mov 0, d1, d0, r0
	mov_mov d0, a0, d1, a1
	blt .L494
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L494:
	clr d0
	sub r0,d0,a0
	subc d1,d0,a1
	mov_mov a1, d1, a0, d0
	retf [d2],4
	.size	llabs, .-llabs
	.global lldiv
	.type	lldiv, @function
lldiv:
	movm [d2,a2,a3,exreg1],(sp)
	add -20,sp
	mov (64,sp),r4
	mov (68,sp),r5
	mov (60,sp),a3
	mov d1,a2
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d0, d2, a3, d1
	mov a2,d0
	call +__divdi3,[],0
	mov d0,(d2)
	mov d1,(4,d2)
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__moddi3,[],0
	mov d2,a0
	mov d0,(8,d2)
	mov d1,(12,d2)
	ret [d2,a2,a3,exreg1],48
	.size	lldiv, .-lldiv
	.global wcschr
	.type	wcschr, @function
wcschr:
	mov (d0),a0
	cmp 0,a0
	beq .L497
.L498:
	cmp a0,d1
	beq .L505
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L498
.L497:
	mov a0,d0
	retf [],0
.L505:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d1),r0
	mov (d0),a1
	add_mov -4, d1, 4, a0
	cmp r0,a1
	bne .L508
.L507:
	cmp 0,a1
	beq .L508
	cmp 0,r0
	beq .L508
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L507
.L508:
	cmp r0,a1
	blt .L513
	mov 1,d0
	ble .L520
	retf [],0
.L513:
	mov -1,d0
	retf [],0
.L520:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L522:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L522
	mov a0,d0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L527
	setlb
.L528:
	mov (4,d1),a0
	add_cmp 4, d1, 0, a0
	Lne # loop back to: .L528
.L527:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L540
.L534:
	mov (d0),a1
	mov (d1),r0
	add_cmp -1, a0, r0, a1
	bne .L536
	cmp 0,a1
	beq .L536
	add_add 4, d0, 4, d1
	cmp 0,a0
	bne .L534
.L540:
	mov a0,d0
	retf [],0
.L536:
	mov (d0),a1
	mov (d1),d0
	cmp d0,a1
	blt .L544
	cmp_mov d0, a1, 1, a0
	bgt .L540
	mov 0,a0
	mov a0,d0
	retf [],0
.L544:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L545
.L546:
	mov (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L553
	add_cmp 4, d0, 0, a0
	bne .L546
.L545:
	mov a0,d0
	retf [],0
.L553:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L564
.L555:
	mov (d0),r0
	mov (d1),a1
	add_add -1, a0, 4, d0
	cmp a1,r0
	bne .L567
	add_cmp 4, d1, 0, a0
	bne .L555
.L564:
	clr d0
	retf [],0
.L567:
	bge .L560
	mov -1,d0
.L554:
	retf [],0
.L560:
	mov 1,d0
	bgt .L554
	clr d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L569
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L569:
	mov_mov a1, d0, a1, a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L576
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L590
	cmp 0,d0
	beq .L576
	asl2 a1
	setlb
.L579:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L579
.L576:
	mov a0,d0
	retf [],0
.L590:
	clr r0
	cmp r0,d0
	beq .L576
.L578:
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	beq .L576
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	bne .L578
	jmp .L576
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L592
	mov d0,r0
	setlb
.L593:
	add -1,a1
	cmp -1,a1
	mov d1,(r0+)
	Lne # loop back to: .L593
.L592:
	mov a0,d0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L601
	cmp 0,a0
	beq .L600
	add_add -1, d0, -1, d1
	setlb
.L603:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L603
	retf [],0
.L601:
	beq .L600
	cmp 0,a0
	beq .L600
	mov 0,a1
	setlb
.L604:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	Lne # loop back to: .L604
.L600:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	movm [d2],(sp)
	mov (16,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L616
	clr d0
	asl a0,r2,d1
.L617:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L618
	clr r0
	mov r0,r1
	lsr a0,r3,r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L618:
	mov_mov r3, a1, a0, d2
	add a1,a1
	not d2
	asl d2,a1
	lsr a0,r2,r0
	or a1,r0
	lsr a0,r3,r1
	or d1,r1,a1
	or d0,r0,a0
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L616:
	mov_mov r2, a1, a0, d2
	lsr 1,a1
	not d2
	lsr d2,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L617
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2],(sp)
	mov (16,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L623
	clr d0
	mov d0,d1
	lsr a0,r3,d0
.L624:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L625
	asl a0,r2,r1
	clr r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L625:
	mov_mov r2, a1, a0, d2
	lsr 1,a1
	not d2
	lsr d2,a1
	asl a0,r3,r1
	or a1,r1
	asl a0,r2,r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L623:
	mov_mov d1, a1, a0, d2
	add a1,a1
	not d2
	asl d2,a1
	lsr a0,r2,d0
	or_lsr a1, d0, a0, d1
	jmp .L624
	.size	rotr64, .-rotr64
	.global rotl32
	.type	rotl32, @function
rotl32:
	mov 0,a0
	sub d1,a0
	asl d1,d0,d1
	lsr a0,d0
	or d1,d0
	retf [],0
	.size	rotl32, .-rotl32
	.global rotr32
	.type	rotr32, @function
rotr32:
	mov 0,a0
	sub d1,a0
	lsr d1,d0,d1
	asl a0,d0
	or d1,d0
	retf [],0
	.size	rotr32, .-rotr32
	.global rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	mov 0,a0
	sub d1,a0
	asl d1,d0,d1
	lsr a0,d0
	or d1,d0
	retf [],0
	.size	rotl_sz, .-rotl_sz
	.global rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	mov 0,a0
	sub d1,a0
	lsr d1,d0,d1
	asl a0,d0
	or d1,d0
	retf [],0
	.size	rotr_sz, .-rotr_sz
	.global rotl16
	.type	rotl16, @function
rotl16:
	and 15,d1
	mov 0,a1
	sub d1,a1
	and 15,a1
	exthu d0,a0
	lsr a1,a0
	asl d1,d0
	or a0,d0
	retf [],0
	.size	rotl16, .-rotl16
	.global rotr16
	.type	rotr16, @function
rotr16:
	and 15,d1
	mov 0,a1
	sub d1,a1
	and 15,a1
	exthu d0,a0
	lsr d1,a0,d1
	asl a1,d0
	or d1,d0
	retf [],0
	.size	rotr16, .-rotr16
	.global rotl8
	.type	rotl8, @function
rotl8:
	and 7,d1
	mov 0,a1
	sub d1,a1
	and 7,a1
	extbu d0,a0
	lsr a1,a0
	asl d1,d0
	or a0,d0
	retf [],0
	.size	rotl8, .-rotl8
	.global rotr8
	.type	rotr8, @function
rotr8:
	and 7,d1
	mov 0,a1
	sub d1,a1
	and 7,a1
	extbu d0,a0
	lsr d1,a0,d1
	asl a1,d0
	or d1,d0
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
	mov d0,a0
	lsr 8,a0
	mov_mov d0, d1, d0, a1
	and 65280,a0
	asl 24,d1
	lsr 24,a1
	asl 8,d0
	and 16711680,d0
	or a1,d1
	or a0,d1
	or d1,d0
	retf [],0
	.size	bswap_32, .-bswap_32
	.global bswap_64
	.type	bswap_64, @function
bswap_64:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d1, r1, d1, a2
	add -120,sp
	lsr 24,a2
	mov a2,(48,sp)
	mov d1,d3
	mov (48,sp),a2
	lsr 8,d3
	mov_mov d0, r0, d0, a1
	mov_mov d0, d2, d3, d0
	and 65280,d0
	mov a2,(56,sp)
	mov d0,(72,sp)
	asl 8,d1
	lsr 24,d2
	or d1,d2
	mov d3,(64,sp)
	mov d2,a2
	mov (72,sp),d3
	mov (56,sp),d2
	mov_mov r1, d0, r0, r2
	and 16711680,a2
	asl 24,d0
	lsr 8,r2
	or d0,r2
	mov a2,(88,sp)
	or_mov d3, d2, r2, a2
	mov d2,(80,sp)
	and -16777216,a2
	mov (80,sp),d3
	mov a2,(104,sp)
	mov (88,sp),a2
	mov 0,a0
	asl 24,a1
	or a2,d3
	mov a0,(68,sp)
	mov a0,(52,sp)
	mov a0,(76,sp)
	mov a0,(92,sp)
	mov a0,(108,sp)
	mov a1,(60,sp)
	mov a0,(8,sp)
	mov a0,(24,sp)
	mov a1,(84,sp)
	mov a0,(112,sp)
	mov d3,(96,sp)
	mov d1,r5
	mov (104,sp),a2
	mov r2,d1
	and 65280,d1
	mov r0,d2
	lsr 24,d2
	mov d1,(28,sp)
	or d2,r5
	or a2,d3
	extbu r5,d0
	mov a1,a2
	or d0,a2
	mov d0,(12,sp)
	mov r0,r4
	mov (28,sp),d0
	asl 8,r4
	mov r4,d1
	and 16711680,d1
	mov a2,(20,sp)
	or_mov d0, a2, d3, d2
	mov d1,(44,sp)
	mov a2,(36,sp)
	or a0,d2
	mov d2,(16,sp)
	or a0,d2
	mov d3,(sp)
	mov d2,(32,sp)
	mov (44,sp),d3
	mov d2,a2
	mov (36,sp),d2
	or a0,a2
	mov a0,(40,sp)
	or d3,d2,a3
	mov a1,(100,sp)
	mov a1,(4,sp)
	mov r4,(116,sp)
	mov_mov r2, r7, a1, r6
	mov_mov a2, d0, a3, d1
	retf [d2,d3,a2,a3,exreg1],152
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	clr d1
.L654:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L658
	cmp 32,d1
	bne .L654
	mov a0,d0
	retf [],0
.L658:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L659
	and 1,d0
	bne .L659
	mov 1,d0
	setlb
.L661:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L661
	retf [],0
.L659:
	retf [],0
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movm [d2],(sp)
	mov -8388609,d1
	add -12,sp
	mov d0,d2
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L670
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L673
	mov d2,d0
.L667:
	ret [d2],16
.L670:
	mov 1,d0
	ret [d2],16
.L673:
	clr d2
	mov d2,d0
	jmp .L667
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movm [d2,d3,a2],(sp)
	mov_mov d0, d2, -1, a2
	mov -1048577,d0
	add -20,sp
	mov d0,(16,sp)
	mov a2,(12,sp)
	mov_mov d2, d0, d1, d3
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L677
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L680
	mov d2,d0
.L674:
	ret [d2,d3,a2],32
.L677:
	mov 1,d0
	ret [d2,d3,a2],32
.L680:
	clr d2
	mov d2,d0
	jmp .L674
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movm [d2,d3,a2],(sp)
	mov_mov d0, d2, -1, a2
	mov -1048577,d0
	add -20,sp
	mov d0,(16,sp)
	mov a2,(12,sp)
	mov_mov d2, d0, d1, d3
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L684
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L687
	mov d2,d0
.L681:
	ret [d2,d3,a2],32
.L684:
	mov 1,d0
	ret [d2,d3,a2],32
.L687:
	clr d2
	mov d2,d0
	jmp .L681
	.size	gl_isinfl, .-gl_isinfl
	.global _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	movm [d2],(sp)
	mov d0,d2
	add -12,sp
	mov d1,d0
	call +__floatsidf,[],0
	mov d0,(d2)
	mov d1,(4,d2)
	ret [d2],16
	.size	_Qp_itoq, .-_Qp_itoq
	.global ldexpf
	.type	ldexpf, @function
ldexpf:
	movm [d2,d3,a2],(sp)
	mov d1,d2
	add -12,sp
	mov_mov d0, d1, d0, a2
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L691
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L691
	cmp 0,d2
	blt .L707
	btst 1,d2
	mov 1073741824,d3
	beq .L694
.L695:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L694:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L691
.L696:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,d1
	lsr 31,d1
	add d2,d1
	btst 1,d2
	mov d0,d3
	bne .L695
	mov d1,d2
	asr 1,d2
	jmp .L696
.L691:
	mov a2,d0
	ret [d2,d3,a2],24
.L707:
	btst 1,d2
	mov 1056964608,d3
	beq .L694
	jmp .L695
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d1, a3, d0, a2
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),r4
	mov d0,r5
	bne .L709
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L709
	cmp_mov 0, r4, r5, d2
	blt .L725
	btst 1,r4
	mov 1073741824,d3
	beq .L712
.L713:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L712:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L709
.L714:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L713
	mov r0,r4
	asr 1,r4
	jmp .L714
.L709:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L725:
	btst 1,r4
	mov 1071644672,d3
	beq .L712
	jmp .L713
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d1, a3, d0, a2
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),r4
	mov d0,r5
	bne .L727
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L727
	cmp_mov 0, r4, r5, d2
	blt .L743
	btst 1,r4
	mov 1073741824,d3
	beq .L730
.L731:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L730:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L727
.L732:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L731
	mov r0,r4
	asr 1,r4
	jmp .L732
.L727:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L743:
	btst 1,r4
	mov 1071644672,d3
	beq .L730
	jmp .L731
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L745
	add_mov d1, r2, d0, a1
	setlb
.L746:
	movbu (a1),r0
	movbu (d1),r1
	add_add 1, a1, 1, d1
	xor_cmp r1, r0, d1, r2
	movbu r0,(-1,a1)
	Lne # loop back to: .L746
.L745:
	mov a0,d0
	retf [],0
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov d0,a0
	movbu (d0),d0
	mov (12,sp),r1
	cmp_mov 0, d0, a0, a1
	beq .L766
	setlb
.L755:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L755
.L766:
	cmp 0,r1
	beq .L757
.L769:
	movbu (d1),r0
	add_add -1, r1, 1, d1
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L759
	add_cmp 1, a1, 0, r1
	bne .L769
.L757:
	clr d0
	movbu d0,(a1)
.L759:
	mov a0,d0
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L770
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L773
.L770:
	mov a0,d0
	retf [],0
.L773:
	inc a0
	cmp a0,d1
	beq .L770
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L770
	jmp .L773
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L784
.L780:
	mov d1,a1
.L783:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L788
	cmp r1,r0
	bne .L783
	mov a0,d0
	retf [],0
.L788:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L780
.L784:
	mov_mov r1, a0, r1, d0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov 0,a0
.L791:
	movbu (d0),a1
	cmp a1,d1
	beq .L795
	add_cmp 1, d0, 0, a1
	bne .L791
.L796:
	mov a0,d0
	retf [],0
.L795:
	mov_add d0, a0, 1, d0
	cmp 0,a1
	bne .L791
	jmp .L796
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2],(sp)
	movbu (d1),r2
	cmp 0,r2
	beq .L808
	mov d1,a0
	setlb
.L799:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L799
	sub d1,a0,d2
	cmp d1,a0
	beq .L808
	add -1,d2
.L805:
	movbu (d0),a0
	cmp r2,a0
	beq .L804
	add_cmp 1, d0, 0, a0
	bne .L805
	mov a0,d0
	retf [d2],4
.L804:
	add d2,d0,r3
	mov_mov d1, r0, d0, a1
.L801:
	movbu (r0),r1
	cmp 0,r1
	beq .L802
	cmp a1,r3
	beq .L802
	add_cmp 1, a1, a0, r1
	bne .L802
	movbu (a1),a0
	add_cmp 1, r0, 0, a0
	bne .L801
.L802:
	movbu (r0),a1
	cmp a0,a1
	beq .L808
	inc d0
	jmp .L805
.L808:
	mov_mov d0, a0, d0, d0
	retf [d2],4
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a2,exreg1],(sp)
	mov 0,a2
	add -20,sp
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp a2,d0
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov (60,sp),r4
	mov (64,sp),r5
	blt .L831
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L823
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L822
.L823:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L831:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L823
.L822:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, d2, d0
	mov d3,d1
	ret [d2,d3,a2,exreg1],48
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2],(sp)
	mov (20,sp),r1
	mov (16,sp),r2
	cmp 0,r1
	beq .L838
	cmp r1,d1
	bcs .L840
	sub r1,d1,r3
	add d0,r3
	cmp r3,d0
	bhi .L840
	movbu (r2),d2
.L837:
	movbu (d0),d1
	mov_add d0, a0, 1, d0
	extbu d1
	cmp d2,d1
	beq .L845
.L834:
	cmp d0,r3
	bcc .L837
.L840:
	mov 0,a0
.L832:
	mov a0,d0
	retf [d2],4
.L845:
	cmp 1,r1
	beq .L832
	mov 1,d1
.L835:
	movbu (d1,a0),r0
	movbu (d1,r2),a1
	add_cmp 1, d1, a1, r0
	bne .L834
	cmp d1,r1
	bne .L835
	mov a0,d0
	retf [d2],4
.L838:
	mov_mov d0, a0, d0, d0
	retf [d2],4
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L847
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L847:
	add d2,a1,a0
	mov a0,d0
	ret [d2],20
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov 0,a3
	add -20,sp
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp a3,d0
	mov a3,(12,sp)
	blt .L878
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L879
	clr r6
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
.L862:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L862
.L863:
	mov (64,sp),d0
	cmp 0,a3
	mov r6,(d0)
	beq .L869
	mov -2147483648,a1
	mov_add d2, a0, d3, a1
.L853:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L869:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L879:
	mov 1071644672,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L859
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L868
.L859:
	mov (64,sp),d1
	clr d0
	mov_mov d2, a0, d3, a1
	mov d0,(d1)
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L878:
	mov -1074790400,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ledf2,[],0
	mov -2147483648,r5
	add_cmp d3, r5, a3, d0
	mov d2,r4
	bgt .L880
	clr r6
	mov_mov r5, d3, 1, a3
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
	jmp .L862
.L880:
	mov -1075838976,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp a3,d0
	bgt .L866
	mov (64,sp),d0
	mov -2147483648,a1
	mov r5,d3
	mov a3,(d0)
	mov_add d2, a0, d3, a1
	jmp .L853
.L866:
	clr r6
	mov 1,a3
	mov 1071644672,a2
	mov_mov r4, d2, r5, d3
	mov r6,r4
.L864:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L863
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L864
	jmp .L863
.L868:
	mov_mov d2, r4, d3, r5
	clr r6
	mov r4,d2
	mov 1071644672,a2
	mov_mov r5, d3, r6, r4
	jmp .L864
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	or d1,d0,a2
	mov (60,sp),a0
	mov (64,sp),a1
	mov d1,a3
	beq .L885
	clr r4
	mov r4,r5
	setlb
.L884:
	mov_mov d0, r0, d1, d3
	mov d0,r2
	asl 31,d3
	lsr 1,r2
	and 1,r0
	clr r1
	or d3,r2
	sub r0,r1,d2
	mov r2,(sp)
	mov d2,(8,sp)
	mov (sp),d0
	mov (8,sp),r6
	subc r1,r1,d3
	mov_mov a0, a2, a1, r3
	mov d1,d2
	lsr 1,d2
	lsr 31,a2
	mov_asl a0, r2, 1, r3
	or_mov a2, r3, d3, r7
	and a1,r7
	and_asl a0, r6, 1, r2
	or d2,d0,a2
	add r6,r4
	addc r7,r5
	cmp r1,a2
	mov d3,(12,sp)
	mov d2,(4,sp)
	mov_mov r1, a3, d2, d1
	mov_mov r2, a0, r3, a1
	Lne # loop back to: .L884
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],48
.L885:
	mov_mov a2, r4, a2, r5
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],48
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp d0,d1
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bcc .L891
	mov 32,d0
	mov 1,a0
.L890:
	add_cmp -1, d0, 0, d1
	blt .L891
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L906
	cmp 0,d0
	bne .L890
.L893:
	cmp 0,r0
	bne .L907
.L889:
	retf [],0
.L906:
	cmp_mov 0, a0, a0, d0
	beq .L893
.L891:
	clr d0
.L896:
	cmp d1,a1
	bcs .L895
	or_sub a0, d0, d1, a1
.L895:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L896
	cmp 0,r0
	beq .L889
.L907:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L910
	asl 8,d0
	clr d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L910:
	mov 7,d0
	retf [],0
	.size	__clrsbqi2, .-__clrsbqi2
	.global __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	mov d1,a0
	asr 31,a0
	xor a0,d0,r2
	xor a0,d1,r3
	cmp a0,d0
	beq .L923
.L919:
	clr d0
	cmp 0,r3
	bne .L924
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L924:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L923:
	cmp a0,d1
	bne .L919
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L928
	clr d0
	setlb
.L927:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L927
	retf [],0
.L928:
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2],(sp)
	mov (16,sp),r3
	mov_mov r3, a1, r3, d2
	and -8,a1
	cmp_lsr d1, d0, 3, d2
	bcs .L933
	add r3,d1,a0
	cmp a0,d0
	bls .L949
.L933:
	cmp 0,d2
	beq .L936
	mov_asl 0, a0, 3, d2
	setlb
.L937:
	add a0,d1,r2
	mov (a0,d1),r0
	mov (4,r2),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp a0,d2
	mov r1,(4,r2)
	Lne # loop back to: .L937
.L936:
	cmp a1,r3
	bls .L932
	setlb
.L938:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L938
.L932:
	retf [d2],4
.L949:
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L932
.L934:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L932
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L934
	jmp .L932
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcs .L951
	add r1,d1,a0
	cmp a0,d0
	bls .L967
.L951:
	cmp 0,r0
	beq .L954
	mov_asl 0, a0, 1, r0
	setlb
.L955:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L955
.L954:
	btst 1,r1
	beq .L950
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L967:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L968
	setlb
.L952:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L952
.L950:
	retf [],0
.L968:
	retf [],0
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	mov (12,sp),r1
	mov_mov r1, a0, r1, r2
	and -4,a0
	cmp_lsr d1, d0, 2, r2
	bcs .L970
	add r1,d1,a1
	cmp a1,d0
	bls .L985
.L970:
	cmp 0,r2
	beq .L973
	mov_asl 0, a1, 2, r2
	setlb
.L974:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L974
.L973:
	cmp a0,r1
	bls .L969
	setlb
.L975:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L975
	retf [],0
.L985:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L986
	setlb
.L971:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L971
.L969:
	retf [],0
.L986:
	retf [],0
	.size	__cmovw, .-__cmovw
	.global __modi
	.type	__modi, @function
__modi:
	mov d0,a0
	ext d0
	div d1,a0
	movm [d2],(sp)
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
	clr d2
	mov d0,a0
	mov d2,mdr
	divu d1,a0
	mov mdr,d0
	ret [d2],4
	.size	__umodi, .-__umodi
	.global __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	mov 15,a1
	clr d1
	exthu d0
.L1001:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L999
	inc d1
	cmp 16,d1
	bne .L1001
.L999:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	clr d1
	exthu d0
.L1007:
	asr d1,d0,a0
	btst 1,a0
	bne .L1005
	inc d1
	cmp 16,d1
	bne .L1007
.L1005:
	mov d1,d0
	retf [],0
	.size	__ctzhi2, .-__ctzhi2
	.global __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	movm [d2],(sp)
	mov 1191182336,d1
	add -12,sp
	mov d0,d2
	call +__gesf2,[],0
	cmp 0,d0
	bge .L1019
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1019:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	ret [d2],16
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	exthu d0
	mov a1,d1
	setlb
.L1021:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
	cmp 16,d1
	Lne # loop back to: .L1021
	mov a1,d0
	and 1,d0
	retf [],0
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov 0,a1
	exthu d0
	mov a1,d1
	setlb
.L1026:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
	cmp 16,d1
	Lne # loop back to: .L1026
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmp_mov 0, d0, d0, a1
	beq .L1033
	clr d0
	setlb
.L1032:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1032
	retf [],0
.L1033:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1040
	cmp 0,d1
	beq .L1041
	clr d0
	setlb
.L1039:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1039
	retf [],0
.L1040:
	retf [],0
.L1041:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1047
	mov 32,d0
	mov 1,a0
.L1046:
	add_cmp -1, d0, 0, d1
	blt .L1047
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1048
	cmp 0,d0
	bne .L1046
	cmp 0,r0
	bne .L1063
.L1045:
	retf [],0
.L1048:
	cmp 0,a0
	beq .L1055
.L1047:
	clr d0
.L1052:
	cmp d1,a1
	bcs .L1051
	or_sub a0, d0, d1, a1
.L1051:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1052
	cmp 0,r0
	beq .L1045
.L1063:
	mov a1,d0
	retf [],0
.L1055:
	cmp_mov 0, r0, a0, d0
	beq .L1045
	jmp .L1063
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L1067
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1070
	mov d2,d0
.L1064:
	ret [d2,d3],20
.L1070:
	clr d2
	mov d2,d0
	jmp .L1064
.L1067:
	mov -1,d0
	ret [d2,d3],20
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.global __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov (52,sp),a3
	mov (48,sp),a2
	mov a3,(16,sp)
	mov a2,(12,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L1074
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1077
	mov d2,d0
.L1071:
	ret [d2,d3,a2,a3],36
.L1077:
	clr d2
	mov d2,d0
	jmp .L1071
.L1074:
	mov -1,d0
	ret [d2,d3,a2,a3],36
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
	cmp_mov 0, d1, d0, r0
	blt .L1098
	beq .L1088
	clr r2
	clr d0
	mov 32,a1
.L1087:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1086
	cmp 0,r1
	bne .L1087
.L1086:
	cmp 0,r2
	beq .L1082
	not d0
	inc d0
	retf [],0
.L1088:
	mov d1,d0
.L1082:
	retf [],0
.L1098:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1087
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1121
	clr r1
	cmp 0,d1
	blt .L1122
.L1101:
	cmp_mov d1, d0, 1, a0
	mov d0,r0
	bls .L1103
	mov 32,a1
	mov 1,a0
.L1102:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1105
	cmp 0,a1
	bne .L1102
.L1105:
	cmp_mov 0, a0, a0, d0
	beq .L1104
.L1103:
	clr d0
.L1108:
	cmp r0,d1
	bhi .L1107
	or_sub a0, d0, d1, r0
.L1107:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1108
.L1104:
	cmp 0,r1
	beq .L1099
	not d0
	inc d0
.L1099:
	retf [],0
.L1122:
	not d1
	xor 1,r1
	inc d1
	jmp .L1101
.L1121:
	not d0
	add_cmp 1, d0, 0, d1
	mov 1,r1
	bge .L1101
	jmp .L1122
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1146
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1147
.L1125:
	cmp_mov d1, d0, 1, a0
	bls .L1132
	mov 32,a1
	mov 1,a0
.L1126:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1143
	cmp 0,a1
	bne .L1126
.L1143:
	cmp 0,a0
	beq .L1148
.L1132:
	cmp_lsr d1, r0, 1, a0
	bcs .L1131
	sub d1,r0
.L1131:
	cmp_lsr 0, a0, 1, d1
	bne .L1132
.L1148:
	cmp_mov 0, r1, r0, d0
	beq .L1123
	not d0
	inc d0
.L1123:
	retf [],0
.L1147:
	not d1
	inc d1
	jmp .L1125
.L1146:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1125
	jmp .L1147
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movm [d2],(sp)
	mov d0,r2
	exthu d1,a0
	exthu d0
	cmp d0,a0
	bcc .L1164
	mov 16,d0
	mov 1,r0
	exthu r2,r1
.L1150:
	mov_mov d1, a1, r0, r3
	add a1,a1
	exth d1,a0
	add_asl -1, d0, 1, r3
	cmp 0,a0
	exthu a1,d2
	blt .L1151
	cmp d2,r1
	mov a1,d1
	mov r3,r0
	bls .L1165
	cmp 0,d0
	bne .L1150
	mov (16,sp),d1
	cmp 0,d1
	bne .L1166
.L1149:
	retf [d2],4
.L1165:
	exthu r3,d0
	cmp 0,d0
	beq .L1167
.L1151:
	clr d0
.L1156:
	exthu d1,a1
	exthu r0,a0
	mov_lsr a1, r3, 1, a0
	cmp_lsr a1, r1, 1, r3
	bcs .L1155
	or_sub r0, d0, d1, r2
.L1155:
	cmp 0,a0
	mov a0,r0
	mov r3,d1
	exthu r2,r1
	bne .L1156
	mov (16,sp),d1
	cmp 0,d1
	beq .L1149
.L1166:
	mov r2,d0
	retf [d2],4
.L1164:
	mov d0,r1
	mov 1,r0
	clr d0
	jmp .L1156
.L1167:
	mov (16,sp),d1
	mov r3,d0
	cmp 0,d1
	beq .L1149
	jmp .L1166
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1170
	mov 32,d0
	mov 1,a0
.L1169:
	add_cmp -1, d0, 0, d1
	blt .L1170
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1171
	cmp 0,d0
	bne .L1169
	cmp 0,r0
	bne .L1186
.L1168:
	retf [],0
.L1171:
	cmp 0,a0
	beq .L1178
.L1170:
	clr d0
.L1175:
	cmp d1,a1
	bcs .L1174
	or_sub a0, d0, d1, a1
.L1174:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1175
	cmp 0,r0
	beq .L1168
.L1186:
	mov a1,d0
	retf [],0
.L1178:
	cmp_mov 0, r0, a0, d0
	beq .L1168
	jmp .L1186
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, a0, d0
	and 32,d0
	beq .L1188
	mov 0,a1
	asl a0,r2,a0
	mov_mov a1, r0, a0, r1
.L1190:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1188:
	cmp 0,a0
	beq .L1191
	clr d0
	sub a0,d0
	lsr d0,r2,d0
	asl a0,d1
	asl a0,r2,a1
	or d1,d0,a0
	mov_mov a1, r0, a0, r1
	jmp .L1190
.L1191:
	mov_mov r2, r0, d1, r1
	mov_mov r0, d0, r1, d1
	retf [],0
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov (12,sp),a0
	mov_mov d0, r0, d1, r1
	mov a0,d0
	and 32,d0
	beq .L1195
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1197:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1195:
	cmp 0,a0
	beq .L1198
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	asr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1197
.L1198:
	mov_mov r0, r2, d1, r3
	mov_mov r2, d0, r3, d1
	retf [],0
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov d0,a0
	add -120,sp
	clr r0
	mov_mov d1, d0, a0, a2
	mov r0,r1
	lsr 8,d0
	mov r0,(68,sp)
	mov_mov d1, a1, r0, d2
	lsr 24,a2
	mov d1,r0
	asl 8,d1
	or_mov d1, a2, d0, a3
	mov a2,(sp)
	and 65280,a3
	mov a3,(72,sp)
	mov (sp),a3
	mov (72,sp),a2
	and 16711680,a3
	lsr 24,r0
	mov d0,(64,sp)
	mov_mov a0, r2, a1, d0
	mov a3,(88,sp)
	asl 24,d0
	lsr 8,r2
	or_mov d0, r2, r0, a3
	or a2,a3
	mov a3,(80,sp)
	mov r2,a3
	and -16777216,a3
	mov (88,sp),a2
	mov a3,(104,sp)
	mov (80,sp),a3
	mov a0,d3
	asl 24,d3
	or a2,a3
	mov a3,(96,sp)
	mov r1,(76,sp)
	mov r1,(92,sp)
	mov r0,(56,sp)
	mov r0,(4,sp)
	mov r1,(108,sp)
	mov d3,(60,sp)
	mov r1,(16,sp)
	mov r1,(32,sp)
	mov d3,(84,sp)
	mov r1,(112,sp)
	mov r1,(48,sp)
	mov (104,sp),a2
	mov (96,sp),d0
	mov a0,a1
	lsr 24,a1
	or_mov a2, d0, d1, r5
	mov d0,(8,sp)
	or a1,r5
	extbu r5,a3
	mov r2,d1
	mov a3,(20,sp)
	and 65280,d1
	mov (8,sp),a2
	mov d1,(36,sp)
	mov (20,sp),d1
	mov a0,r4
	asl 8,r4
	or r1,a2
	mov a2,(24,sp)
	mov_mov d3, d0, r4, a2
	or d1,d0
	and 16711680,a2
	mov d0,(28,sp)
	mov a2,(52,sp)
	mov (24,sp),a3
	mov (36,sp),a2
	mov (28,sp),d1
	mov (52,sp),d0
	or r1,a3
	or_mov a2, d1, a3, a2
	mov a3,(40,sp)
	or r1,a2
	or d0,d1,a3
	mov d1,(44,sp)
	mov d3,(100,sp)
	mov d3,(12,sp)
	mov r4,(116,sp)
	mov_mov r2, r7, d3, r6
	mov_mov a2, d0, a3, d1
	retf [d2,d3,a2,a3,exreg1],152
	.size	__bswapdi2, .-__bswapdi2
	.global __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	mov d0,a0
	lsr 8,a0
	mov_mov d0, d1, d0, a1
	and 65280,a0
	lsr 24,d1
	asl 24,a1
	asl 8,d0
	and 16711680,d0
	or a1,d1
	or a0,d1
	or d1,d0
	retf [],0
	.size	__bswapsi2, .-__bswapsi2
	.global __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	cmp 65535,d0
	mov 1,a0
	bls .L1206
	mov 0,a0
.L1206:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	mov 1,d0
	beq .L1207
	clr d0
.L1207:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub_add d0, a1, d0, a0
	lsr a1,d1
	btst 240,d1
	mov 1,d0
	beq .L1208
	clr d0
.L1208:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	btst 12,d1
	mov 1,a0
	beq .L1209
	mov 0,a0
.L1209:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1211
	sub d1,r1,d0
.L1211:
	add a1,a0
	add a0,d0
	retf [],0
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	blt .L1227
	bgt .L1228
	cmp a0,r0
	bcs .L1227
	bhi .L1228
	mov 1,d0
	retf [],0
.L1227:
	clr d0
	retf [],0
.L1228:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	blt .L1235
	bgt .L1236
	cmp a0,r0
	bcs .L1235
	bhi .L1236
	mov 1,d0
	add -1,d0
	retf [],0
.L1235:
	clr d0
	add -1,d0
	retf [],0
.L1236:
	mov 2,d0
	add -1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a0
	beq .L1240
	mov 0,a0
.L1240:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	cmp_mov 0, a1, 1, d0
	beq .L1241
	clr d0
.L1241:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	btst 15,d1
	mov 1,d0
	beq .L1242
	clr d0
.L1242:
	asl2 d0
	add a0,d0,a1
	lsr d0,d1
	btst 3,d1
	mov 1,d0
	beq .L1243
	clr d0
.L1243:
	add d0,d0
	lsr d0,d1
	and 3,d1
	mov d1,a0
	not a0
	mov_lsr 2, r0, 1, d1
	and 1,a0
	sub d1,r0
	clr d1
	sub_add a0, d1, a1, d0
	and r0,d1
	add d1,d0
	retf [],0
	.size	__ctzsi2, .-__ctzsi2
	.global __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	mov (12,sp),a0
	mov_mov d0, r0, d1, r1
	mov a0,a1
	and 32,a1
	beq .L1259
	mov 0,a1
	lsr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1261:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1259:
	cmp 0,a0
	beq .L1262
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	lsr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1261
.L1262:
	mov_mov d0, r2, d1, r3
	mov_mov r2, d0, r3, d1
	retf [],0
	.size	__lshrdi3, .-__lshrdi3
	.global __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	exthu d0,a1
	exthu d1,a0
	movm [d2],(sp)
	mul a1,a0,d2,r2
	lsr 16,d0
	mul d0,a0
	lsr 16,d1
	mov r2,r3
	mul d1,a1
	lsr 16,r3
	add r3,a0
	mul d1,d0
	exthu a0,d1
	add_mov d1, a1, a0, d1
	lsr 16,d1
	add_mov d0, d1, a1, d0
	asl 16,d0
	exthu r2
	add d0,r2,r0
	lsr 16,a1
	add_mov a1, d1, r0, d0
	ret [d2],4
	.size	__muldsi3, .-__muldsi3
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movm [d2,d3,a2,a3],(sp)
	mov (28,sp),r0
	mov_mov d0, r2, d1, r3
	mov d0,a2
	exthu d0,d1
	exthu r0,d0
	mul d1,d0,a0,a1
	lsr 16,a2
	mul a2,d0
	mov r0,a0
	lsr 16,a0
	mov a1,a3
	mul a0,d1
	lsr 16,a3
	add a3,d0
	mul a0,a2
	mov (32,sp),r1
	exthu d0,a0
	add a0,d1
	lsr 16,d0
	mov d1,a0
	asl 16,a0
	lsr 16,d1
	add a2,d0
	exthu a1
	add d1,d0
	add a0,a1,d2
	mul r2,r1,a0,d1
	mul r3,r0
	add d0,d1
	add_mov r0, d1, d2, d0
	ret [d2,d3,a2,a3],16
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	mov 0,a0
	mov a0,r0
	sub d0,a0
	subc d1,r0,a1
	mov_mov a0, d0, a1, d1
	retf [],0
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
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d0, r2, d1, a2
	asl 31,a2
	lsr 1,r2
	or_mov a2, r2, d1, r3
	mov_lsr r2, d2, 1, r3
	and 1431655765,d2
	mov r3,d3
	add -40,sp
	and 1431655765,d3
	sub d2,d0,r0
	subc d3,d1,r1
	mov_mov r1, d0, r0, r6
	asl 30,d0
	mov_lsr r0, a0, 2, r6
	or d0,r6
	and 858993459,a0
	mov r6,d2
	and 858993459,d2
	mov a0,(8,sp)
	mov r1,r7
	lsr 2,r7
	mov d2,(sp)
	mov d2,a0
	mov (8,sp),d2
	mov r7,d0
	and 858993459,d0
	mov_mov d1, a3, r1, d1
	and 858993459,d1
	add d2,a0
	mov d0,a1
	addc d1,a1
	mov d0,(4,sp)
	mov_mov a0, r4, a1, d0
	asl 28,d0
	mov_lsr a1, r5, 4, r4
	or_lsr d0, r4, 4, r5
	add a0,r4,d2
	addc a1,r5,d0
	mov d0,(20,sp)
	mov d2,(16,sp)
	and 252645135,d0
	and 252645135,d2
	mov d0,(28,sp)
	mov d0,(32,sp)
	add d2,d0
	mov d1,(12,sp)
	mov d0,d1
	lsr 16,d1
	add d0,d1
	mov_mov d1, d0, 0, a0
	lsr 8,d0
	add d1,d0
	mov d2,(24,sp)
	mov a0,(36,sp)
	and 127,d0
	retf [d2,d3,a2,a3,exreg1],72
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
	and 858993459,d0
	and 858993459,d1
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
	mov (64,sp),a3
	mov_mov d0, d2, d1, d3
	mov a3,d0
	and 1,d0
	beq .L1285
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1282:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, a2, d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp_mov 0, a2, d1, r5
	beq .L1281
.L1283:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,r0
	lsr 31,r0
	add a2,r0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1282
	mov r0,a2
	asr 1,a2
	jmp .L1283
.L1281:
	cmp 0,a3
	blt .L1288
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1285:
	mov_mov a3, a2, d0, r4
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	bne .L1283
	jmp .L1281
.L1288:
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov 1072693248,d1
	mov a2,d0
	call +__divdf3,[],0
	mov_mov d0, r4, d1, r5
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	btst 1,d1
	mov 1065353216,a2
	mov_mov d1, a3, d0, d3
	mov d1,d2
	beq .L1290
.L1292:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1290:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1291
.L1293:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,a0
	lsr 31,a0
	add d2,a0
	btst 1,d2
	mov d0,d3
	bne .L1292
	mov a0,d2
	asr 1,d2
	jmp .L1293
.L1291:
	cmp 0,a3
	blt .L1298
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1298:
	mov 1065353216,d0
	mov a2,d1
	call +__divsf3,[],0
	mov_mov d0, a2, d0, d0
	ret [d2,d3,a2,a3],28
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	bcs .L1303
	bhi .L1304
	cmp a0,r0
	bcs .L1303
	bhi .L1304
	mov 1,d0
	retf [],0
.L1303:
	clr d0
	retf [],0
.L1304:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	bcs .L1311
	bhi .L1312
	cmp a0,r0
	bcs .L1311
	bhi .L1312
	mov 1,d0
	add -1,d0
	retf [],0
.L1311:
	clr d0
	add -1,d0
	retf [],0
.L1312:
	mov 2,d0
	add -1,d0
	retf [],0
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
	.global __ledf2
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
