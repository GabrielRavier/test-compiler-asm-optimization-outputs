	.file	"mini-libc.c"
	.am33_2
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
	mov_add -1, r1, -1, d1
	add d0,r1
	setlb
.L4:
	movbu (a1,d1),r2
	movbu r2,(a1,r1)
	add -1,a1
	Lne # loop back to: .L4
	retf [],0
.L2:
	bne .L40
.L3:
	retf [],0
.L40:
	cmp 0,a1
	beq .L3
	mov -1,d0
	add a1,d0
	cmp 6,d0
	bls .L14
	or a0,d1,r0
	and 3,r0
	bne .L14
	mov 1,r1
	add d1,r1
	sub r1,a0,r2
	cmp 2,r2
	bls .L14
	mov a1,r1
	and -4,r1
	setlb
.L8:
	mov (r0,d1),r2
	mov r2,(r0,a0)
	inc4 r0
	cmp r1,r0
	Lne # loop back to: .L8
	add r0,a0,r3
	sub r0,a1,d0
	add_cmp r0, d1, r0, a1
	beq .L3
	movbu (d1),a1
	cmp 1,d0
	movbu a1,(r3)
	beq .L3
	movbu (1,d1),r0
	cmp 2,d0
	movbu r0,(1,r3)
	beq .L3
	movbu (2,d1),d1
	movbu d1,(2,r3)
	retf [],0
.L14:
	clr r3
.L36:
	movbu (r3,d1),d0
	movbu d0,(r3,a0)
	inc r3
	cmp r3,a1
	beq .L3
	movbu (r3,d1),d0
	movbu d0,(r3,a0)
	inc r3
	cmp r3,a1
	bne .L36
	retf [],0
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	mov (16,sp),a0
	movbu (12,sp),r0
	cmp 0,a0
	beq .L44
.L42:
	movbu (d1),a1
	add_add -1, a0, 1, d1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L54
	add_cmp 1, d0, 0, a0
	bne .L42
.L44:
	mov 0,a0
	retf [],0
.L54:
	mov 1,a0
	add d0,a0
	retf [],0
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L65
.L56:
	movbu (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L66
	add_cmp 1, d0, 0, a0
	bne .L56
	retf [],0
.L66:
	mov d0,a0
	retf [],0
.L65:
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L72
.L68:
	movbu (d0),r0
	movbu (d1),a1
	add_add -1, a0, 1, d0
	add_cmp 1, d1, a1, r0
	bne .L80
	cmp 0,a0
	bne .L68
.L72:
	mov a0,d0
	retf [],0
.L80:
	sub a1,r0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L82
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L82:
	mov a1,a0
	ret [],16
	.size	memcpy, .-memcpy
	.global memrchr
	.type	memrchr, @function
memrchr:
	mov (12,sp),a1
	extbu d1
	add -1,a1
	add_add d0, a1, -1, d0
.L89:
	cmp_mov d0, a1, a1, a0
	beq .L94
	movbu (a0),r0
	add_cmp -1, a1, d1, r0
	bne .L89
	retf [],0
.L94:
	mov 0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L98
	mov a0,(12,sp)
	extbu d1
	call +memset,[],0
	mov a0,a1
.L98:
	mov a1,a0
	ret [],16
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	movbu (d1),a1
	mov d0,a0
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L102
	setlb
.L103:
	movbu (1,d1),d0
	add_add 1, a0, 1, d1
	extbu d0,r0
	cmp 0,r0
	movbu d0,(a0)
	Lne # loop back to: .L103
.L102:
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	mov d0,a0
	movbu (d0),d0
	extbu d1
	cmp 0,d0
	beq .L110
.L111:
	cmp d1,d0
	beq .L110
	movbu (1,a0),d0
	add_cmp 1, a0, 0, d0
	bne .L111
.L110:
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d0,a0
.L122:
	movbu (a0),d0
	cmp d1,d0
	beq .L121
	add_cmp 1, a0, 0, d0
	bne .L122
	mov d0,a0
.L121:
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d1),r0
	movbu (d0),a0
	add_mov -1, d1, 1, a1
	cmp r0,a0
	bne .L128
.L127:
	cmp 0,a0
	beq .L128
	movbu (a1,d0),a0
	inc a1
	movbu (a1,d1),r0
	extbu a0
	cmp r0,a0
	beq .L127
.L128:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp 0,d1
	beq .L140
	mov d0,a1
	setlb
.L139:
	movbu (1,a1),a0
	add_cmp 1, a1, 0, a0
	Lne # loop back to: .L139
	sub d0,a1,d0
	retf [],0
.L140:
	mov d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L152
	movbu (d0),a0
	cmp 0,a0
	beq .L156
	movbu (d1),a1
	mov_add 1, r1, -1, r0
	add_add d0, r0, d1, r1
	cmp 0,a1
	beq .L147
.L158:
	cmp r0,d0
	beq .L147
	add_cmp 1, d0, a0, a1
	bne .L147
	movbu (d0),a0
	cmp 0,a0
	beq .L157
	mov r1,d1
	movbu (d1),a1
	mov 1,r1
	add_cmp d1, r1, 0, a1
	bne .L158
.L147:
	sub a1,a0,d0
	retf [],0
.L152:
	mov r0,d0
	retf [],0
.L157:
	movbu (1,d1),a1
	sub a1,a0,d0
	retf [],0
.L156:
	movbu (d1),a1
	sub a1,a0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),r0
	cmp 1,r0
	ble .L159
	and -2,r0
	add d0,r0
	setlb
.L161:
	movbu (1,d0),a1
	movbu (d0),a0
	add_add 2, d1, 2, d0
	cmp r0,d0
	movbu a1,(-2,d1)
	movbu a0,(-1,d1)
	Lne # loop back to: .L161
.L159:
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
	bls .L166
	clr d0
.L166:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,d1
	cmp 127,d1
	mov 1,d0
	bls .L170
	clr d0
.L170:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L176
	cmp 9,d0
	mov 1,d1
	beq .L175
	clr d1
.L175:
	mov d1,d0
	retf [],0
.L176:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L185
	cmp 127,d0
	mov 1,d1
	beq .L184
	clr d1
.L184:
	mov d1,d0
	retf [],0
.L185:
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
	bls .L192
	clr d0
.L192:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	cmp 93,d1
	mov 1,d0
	bls .L196
	clr d0
.L196:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L200
	clr d0
.L200:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	cmp 94,d1
	mov 1,d0
	bls .L204
	clr d0
.L204:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L210
	add -9,d0
	cmp_mov 4, d0, 1, d1
	bhi .L213
	mov d1,d0
	retf [],0
.L213:
	clr d1
	mov d1,d0
	retf [],0
.L210:
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
	bls .L215
	clr d0
.L215:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L223
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L226
.L223:
	mov 1,d0
	retf [],0
.L226:
	mov -8232,a0
	add d0,a0
	cmp 1,a0
	bls .L223
	add -65529,d0
	cmp_mov 2, d0, 1, a1
	bls .L220
	clr a1
.L220:
	mov a1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	mov 1,d0
	bls .L228
	clr d0
.L228:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L241
	cmp 8231,d0
	bls .L237
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L237
	mov -57344,a0
	add d0,a0
	cmp 8184,a0
	bls .L237
	mov -65532,a1
	add d0,a1
	cmp 1048579,a1
	bhi .L238
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L237:
	mov 1,d0
	retf [],0
.L241:
	inc d0
	mov d0,r0
	and 127,r0
	cmp 32,r0
	mov 1,d0
	bls .L238
	retf [],0
.L238:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L245
	or 32,d0
	mov -97,a1
	add d0,a1
	cmp_mov 5, a1, 1, a0
	bhi .L248
	mov a0,d0
	retf [],0
.L245:
	mov 1,d0
	retf [],0
.L248:
	mov 0,a0
	mov a0,d0
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
	bne .L254
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp_mov 0, d0, d0, r4
	bne .L255
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L258
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L258:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L254:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L255:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	add -20,sp
	mov d1,a0
	mov d0,d1
	fmov fs16,(12,sp)
	fmov fs18,(16,sp)
	fmov d0,fs16
	fmov a0,fs18
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L264
	fmov fs18,d1
	fmov fs18,d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L265
	fcmp fs18, fs16
	fbgt .L267
	mov 0x0,d0
	fmov (12,sp),fs16
	fmov (16,sp),fs18
	ret [],20
.L267:
	fsub fs18, fs16
	fmov (16,sp),fs18
	fmov fs16,d0
	fmov (12,sp),fs16
	ret [],20
.L264:
	fmov fs16,d0
	fmov (16,sp),fs18
	fmov (12,sp),fs16
	ret [],20
.L265:
	fmov fs18,d0
	fmov (12,sp),fs16
	fmov (16,sp),fs18
	ret [],20
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
	bne .L278
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L279
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L274
	cmp 0,d0
	bne .L280
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L274:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L281
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
.L285:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L281:
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
	jmp .L285
.L280:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L278:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L279:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3],(sp)
	mov d1,d2
	add -12,sp
	mov d0,d1
	mov d0,d3
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L294
	mov d2,d1
	mov d2,d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L293
	mov_mov d3, d0, d2, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L288
	cmp 0,d0
	beq .L293
.L294:
	mov d2,d0
	ret [d2,d3],20
.L288:
	fmov d3,fs24
	fmov d2,fs26
	fcmp fs26, fs24
	fblt .L294
.L293:
	mov d3,d0
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
	bne .L305
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L306
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L301
	cmp 0,d0
	bne .L307
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L301:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L308
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
.L312:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L308:
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
	jmp .L312
.L307:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L305:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L306:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
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
	bne .L319
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L320
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L315
	cmp 0,d0
	bne .L321
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L315:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L322
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
.L326:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L322:
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
	jmp .L326
.L321:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L319:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L320:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3],(sp)
	mov d1,d3
	add -12,sp
	mov d0,d1
	mov d0,d2
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L333
	mov d3,d1
	mov d3,d0
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L335
	mov_mov d2, d0, d3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L329
	cmp 0,d0
	beq .L333
.L335:
	mov d2,d0
	ret [d2,d3],20
.L329:
	fmov d2,fs24
	fmov d3,fs26
	fcmp fs26, fs24
	fblt .L335
.L333:
	mov d3,d0
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
	bne .L346
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L347
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L342
	cmp 0,d0
	bne .L348
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L342:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L349
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
.L353:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L349:
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
	jmp .L353
.L348:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L346:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L347:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L355
	mov +digits,a1
	setlb
.L356:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),r0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu r0,(-1,d1)
	Lne # loop back to: .L356
.L355:
	clr d0
	movbu d0,(d1)
	mov +s.0,a0
	retf [],0
	.size	l64a, .-l64a
	.global srand
	.type	srand, @function
srand:
	clr d1
	add -1,d0
	mov d0,(+seed)
	mov d1,(+seed+4)
	retf [],0
	.size	srand, .-srand
	.global rand
	.type	rand, @function
rand:
	mov (+seed),d0
	mov (+seed+4),r2
	mov 1284865837,d1
	mov 1481765933,r3
	mul d1,r2
	mul d0,r3
	mulu d0,d1,a1,a0
	add r3,r2
	add_mov r2, a1, 1, r2
	mov 0,r3
	add a0,r2
	addc a1,r3
	mov r3,d0
	mov r2,(+seed)
	mov r3,(+seed+4)
	lsr 1,d0
	rets
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	cmp 0,d1
	beq .L373
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L365
	mov d0,(4,d1)
.L365:
	retf [],0
.L373:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L375
	mov (4,d0),a0
	mov a0,(4,d1)
.L375:
	mov (4,d0),d0
	cmp 0,d0
	beq .L374
	mov d1,(d0)
.L374:
	retf [],0
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov (60,sp),a0
	mov (64,sp),r4
	mov (a0),d3
	mov (68,sp),r5
	cmp_mov 0, d3, d0, a2
	mov d1,r6
	beq .L386
	mov d1,d2
	clr r7
.L388:
	mov_mov d2, d1, a2, d0
	mov_mov d2, a3, r5, a1
	calls (a1)
	cmp 0,d0
	beq .L385
	add_add 1, r7, r4, d2
	cmp r7,d3
	bne .L388
.L386:
	mul r4,d3,d0,a3
	mov (60,sp),d0
	add_add 1, d3, r6, a3
	cmp 0,r4
	mov d3,(d0)
	beq .L385
	mov r4,(12,sp)
	mov_mov a2, d1, a3, d0
	call +memmove,[],0
.L385:
	mov a3,a0
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
	beq .L403
	clr d3
	mov d1,d2
.L405:
	mov_mov d2, d1, a2, d0
	mov r4,a1
	calls (a1)
	cmp_mov 0, d0, d2, r6
	beq .L402
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L405
.L403:
	clr r6
.L402:
	mov r6,a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L419
	retf [],0
.L419:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L427:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L421
	cmp 4,d0
	bls .L421
	cmp 43,a0
	beq .L422
	cmp 45,a0
	bne .L445
	movbu (1,d1),a0
	mov -48,r0
	add_add 1, d1, a0, r0
	cmp 9,r0
	bhi .L432
	mov 1,r2
.L425:
	clr d0
.L429:
	setlb
.L446:
	mov -48,r3
	inc d1
	mov 10,a1
	add a0,r3
	movbu (d1),a0
	mul d0,a1
	mov -48,r0
	sub r3,a1,d0
	add a0,r0
	cmp 9,r0
	Lls # loop back to: .L446
	cmp 0,r2
	bne .L420
	sub a1,r3,d0
	rets
.L421:
	inc d1
	jmp .L427
.L445:
	mov -48,r1
	clr r2
	add a0,r1
	cmp 9,r1
	bls .L425
.L432:
	clr d0
.L420:
	rets
.L422:
	movbu (1,d1),a0
	mov -48,a1
	clr r2
	add_add 1, d1, a0, a1
	cmp 9,a1
	bhi .L432
	clr d0
	jmp .L429
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	mov d0,d1
.L452:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L448
	cmp 4,d0
	bls .L448
	cmp 43,a0
	beq .L449
	cmp 45,a0
	beq .L450
.L469:
	mov -48,r0
	add a0,r0
	cmp 9,r0
	bhi .L459
	clr r2
.L453:
	clr d0
	setlb
.L456:
	mov -48,r3
	inc d1
	mov 10,a1
	add a0,r3
	movbu (d1),a0
	mul d0,a1
	mov -48,r1
	sub r3,a1,d0
	add a0,r1
	cmp 9,r1
	Lls # loop back to: .L456
	cmp 0,r2
	beq .L472
	rets
.L448:
	inc d1
	jmp .L452
.L472:
	sub a1,r3,d0
	rets
.L450:
	movbu (1,d1),a0
	mov 1,r2
	mov -48,a1
	add_add r2, d1, a0, a1
	cmp 9,a1
	bls .L453
.L459:
	clr d0
	rets
.L449:
	movbu (1,d1),a0
	inc d1
	jmp .L469
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3],(sp)
.L480:
	movbu (d0),d1
	mov -9,d2
	add d1,d2
	cmp 32,d1
	beq .L474
	cmp 4,d2
	bls .L474
	cmp 43,d1
	beq .L475
	cmp 45,d1
	beq .L476
	mov -48,d2
	add d1,d2
	cmp 9,d2
	bhi .L485
	mov 0,a3
.L478:
	clr r0
	mov 10,d3
	mov r0,r1
.L482:
	setlb
.L497:
	mov -48,r3
	inc d0
	mov 10,a2
	add d1,r3
	movbu (d0),d1
	mul r1,a2
	mulu r0,d3,a1,a0
	mov -48,d2
	mov_add r3, r2, a2, a1
	asr 31,r3
	add d1,d2
	sub r2,a0,r0
	subc r3,a1,r1
	cmp 9,d2
	Lls # loop back to: .L497
	cmp 0,a3
	bne .L473
	sub a0,r2,r0
	subc a1,r3,r1
.L473:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L474:
	inc d0
	jmp .L480
.L476:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	bhi .L485
	clr r0
	mov 1,a3
	mov 10,d3
	mov r0,r1
	jmp .L482
.L475:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	mov 0,a3
	bls .L478
	mov_mov a3, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L485:
	clr r0
	mov_mov r0, r1, r0, d0
	mov r1,d1
	ret [d2,d3,a2,a3],16
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
.L511:
	cmp 0,d2
	beq .L499
.L514:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	add -1,d2
	sub_cmp r6, d2, 0, d0
	blt .L503
	add a3,d3,a2
	cmp 0,d0
	bne .L511
	mov d3,a0
	ret [d2,d3,a2,a3,exreg1],44
.L503:
	mov r6,d2
	cmp 0,d2
	bne .L514
.L499:
	clr d3
	mov d3,a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	bsearch, .-bsearch
	.global bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov (60,sp),d2
	mov (64,sp),a2
	cmp 0,d2
	mov (68,sp),r4
	mov (72,sp),r5
	mov_mov d0, a3, d1, d3
	beq .L520
.L528:
	mov d2,r7
	asr 1,r7
	mul r7,a2,d0,r6
	mov r5,(12,sp)
	add_mov d3, r6, a3, d0
	mov_mov r6, d1, r4, a0
	calls (a0)
	add -1,d2
	cmp_asr 0, d0, 1, d2
	beq .L515
	ble .L518
	add a2,r6,d3
	cmp 0,d2
	bne .L528
.L520:
	clr r6
.L515:
	mov r6,a0
	ret [d2,d3,a2,a3,exreg1],48
.L518:
	cmp_mov 0, r7, r7, d2
	bne .L528
	clr r6
	jmp .L515
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
	cmp_mov 0, d1, d0, a0
	mov_mov d0, r0, d1, r1
	blt .L540
	mov_mov r0, d0, r1, d1
	retf [d2],4
.L540:
	clr d0
	sub a0,d0,r0
	subc d1,d0,r1
	mov_mov r1, d1, r0, d0
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
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d0, d2, d1, a2
	mov_mov d1, d0, a3, d1
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
	blt .L547
	retf [],0
.L547:
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
	cmp_mov 0, d1, d0, a0
	mov_mov d0, r0, d1, r1
	blt .L555
	mov_mov r0, d0, r1, d1
	retf [d2],4
.L555:
	clr d0
	sub a0,d0,r0
	subc d1,d0,r1
	mov_mov r1, d1, r0, d0
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
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d0, d2, d1, a2
	mov_mov d1, d0, a3, d1
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
	beq .L568
.L559:
	cmp a0,d1
	beq .L569
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L559
	retf [],0
.L569:
	mov d0,a0
	retf [],0
.L568:
	retf [],0
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d1),r0
	mov (d0),a1
	add_mov -4, d1, 4, a0
	cmp r0,a1
	bne .L572
.L571:
	cmp 0,a1
	beq .L572
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L571
.L572:
	cmp r0,a1
	blt .L577
	mov 1,d0
	ble .L582
	retf [],0
.L577:
	mov -1,d0
	retf [],0
.L582:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L584:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L584
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L591
	mov d0,a1
	setlb
.L590:
	mov (4,a1),a0
	add_cmp 4, a1, 0, a0
	Lne # loop back to: .L590
	sub d0,a1
	mov a1,d0
	asr 2,d0
	retf [],0
.L591:
	mov d1,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L602
.L596:
	mov (d0),a1
	mov (d1),r0
	add_cmp -1, a0, r0, a1
	bne .L598
	cmp 0,a1
	beq .L598
	add_add 4, d0, 4, d1
	cmp 0,a0
	bne .L596
.L602:
	mov a0,d0
	retf [],0
.L598:
	mov (d0),r1
	mov (d1),d0
	cmp d0,r1
	blt .L608
	cmp_mov d0, r1, 1, a0
	bgt .L602
	mov 0,a0
	mov a0,d0
	retf [],0
.L608:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L619
.L610:
	mov (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L620
	add_cmp 4, d0, 0, a0
	bne .L610
	retf [],0
.L620:
	mov d0,a0
	retf [],0
.L619:
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L628
.L622:
	mov (d0),r0
	mov (d1),a1
	add_add -1, a0, 4, d0
	add_cmp 4, d1, a1, r0
	bne .L636
	cmp 0,a0
	bne .L622
.L628:
	mov a0,d0
	retf [],0
.L636:
	bge .L627
	mov -1,d0
	retf [],0
.L627:
	mov 1,a0
	bgt .L628
	mov 0,a0
	mov a0,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L638
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L638:
	mov a1,a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L652
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L661
	cmp 0,d0
	beq .L652
	asl2 a1
	setlb
.L649:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L649
	retf [],0
.L661:
	clr r2
	cmp r2,d0
	beq .L652
	setlb
.L647:
	mov (r2,d1),r3
	add -1,a1
	mov r3,(r2,a0)
	add_cmp 4, r2, -1, a1
	Lne # loop back to: .L647
.L652:
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L663
	setlb
.L664:
	add -1,a1
	cmp -1,a1
	mov d1,(d0+)
	Lne # loop back to: .L664
.L663:
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L672
	cmp 0,a0
	beq .L671
	add_add -1, d0, -1, d1
	setlb
.L674:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L674
	retf [],0
.L672:
	bne .L710
.L671:
	retf [],0
.L710:
	cmp 0,a0
	beq .L671
	mov -1,a1
	add a0,a1
	cmp 6,a1
	bls .L684
	or d0,d1,r2
	and 3,r2
	bne .L684
	mov 1,r0
	add d0,r0
	sub r0,d1,r1
	cmp 2,r1
	bls .L684
	mov a0,r1
	and -4,r1
	setlb
.L678:
	mov (r2,d0),r0
	mov r0,(r2,d1)
	inc4 r2
	cmp r1,r2
	Lne # loop back to: .L678
	sub r2,a0,r3
	add_add r2, d1, r2, d0
	cmp r2,a0
	beq .L671
	movbu (d0),a0
	cmp 1,r3
	movbu a0,(d1)
	beq .L671
	movbu (1,d0),r2
	cmp 2,r3
	movbu r2,(1,d1)
	beq .L671
	movbu (2,d0),d0
	movbu d0,(2,d1)
	retf [],0
.L684:
	mov 0,r3
.L706:
	movbu (r3,d0),a1
	movbu a1,(r3,d1)
	inc r3
	cmp r3,a0
	beq .L671
	movbu (r3,d0),a1
	movbu a1,(r3,d1)
	inc r3
	cmp r3,a0
	bne .L706
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov (12,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	mov 0,d0
	beq .L712
	asl a0,r2,d1
.L713:
	not a0
	inc a0
	mov a0,r1
	and 32,r1
	and 63,a0
	clr a1
	cmp 0,r1
	beq .L714
	lsr a0,r3,r0
	or d0,r0,d0
	or d1,a1,d1
	retf [],0
.L714:
	lsr a0,r2,r0
	mov_mov r3, r1, a0, r2
	add r1,r1
	not r2
	asl r2,r1
	or r1,r0
	lsr a0,r3,a1
	or d0,r0,d0
	or d1,a1,d1
	retf [],0
.L712:
	mov_mov r2, a1, a0, r0
	lsr 1,a1
	not r0
	lsr r0,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L713
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov (12,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	mov 0,d1
	beq .L719
	lsr a0,r3,d0
.L720:
	not a0
	inc a0
	mov a0,r1
	and 32,r1
	and 63,a0
	clr r0
	cmp 0,r1
	beq .L721
	asl a0,r2,r1
	or d0,r0,d0
	or d1,r1,d1
	retf [],0
.L721:
	asl a0,r3,r1
	mov_mov r2, a1, a0, r3
	lsr 1,a1
	not r3
	lsr r3,a1
	or a1,r1
	asl a0,r2,r0
	or d0,r0,d0
	or d1,r1,d1
	retf [],0
.L719:
	mov_mov r3, a1, a0, r0
	add a1,a1
	not r0
	asl r0,a1
	lsr a0,r2,d0
	or a1,d0
	lsr a0,r3,d1
	jmp .L720
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
	mov_mov d0, a1, d0, a2
	mov d1,d0
	lsr 8,d0
	and 65280,d0
	mov_mov d1, r0, 0, r3
	lsr 24,r0
	add -84,sp
	or d0,r0,r7
	mov_mov d1, a3, r3, r1
	mov r7,(40,sp)
	mov r3,(52,sp)
	mov r3,(68,sp)
	mov r3,(8,sp)
	mov r3,(16,sp)
	mov r3,(72,sp)
	mov r3,(32,sp)
	mov_mov a2, a0, d1, r3
	asl 8,r3
	lsr 24,a0
	mov_mov a2, r6, a3, r4
	or r3,a0
	mov (40,sp),d3
	lsr 8,r6
	asl 24,r4
	or_mov r4, r6, d1, r5
	mov a0,d1
	and 16711680,d1
	mov r6,d2
	and -16777216,d2
	or d1,d3
	mov d3,(56,sp)
	or d2,d3
	mov d3,(sp)
	mov a2,a0
	mov (sp),r0
	asl 24,a1
	asl 8,a0
	mov a1,(4,sp)
	mov a0,(76,sp)
	and 16711680,a0
	or_mov r1, r0, r1, d0
	mov a0,(36,sp)
	mov (4,sp),r1
	mov a2,r2
	lsr 24,r2
	mov d1,(48,sp)
	mov r6,d1
	and 65280,d1
	mov r3,(80,sp)
	or r2,r3
	mov (36,sp),r2
	mov a1,(44,sp)
	mov a1,(60,sp)
	extbu r3,a1
	mov d2,(64,sp)
	or_mov a1, r1, 0, r3
	mov_mov d0, d2, d1, d3
	or r0,d2
	or r1,d3
	mov d2,(24,sp)
	mov d3,(28,sp)
	or_mov r3, d2, a3, r7
	or r2,d3
	mov d1,(20,sp)
	mov a1,(12,sp)
	lsr 24,r5
	lsr 8,r7
	mov_mov d2, d0, d3, d1
	retf [d2,d3,a2,a3,exreg1],116
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	clr d1
.L750:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L754
	cmp 32,d1
	bne .L750
	mov a0,d0
	retf [],0
.L754:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L755
	and 1,d0
	bne .L755
	mov 1,d0
	setlb
.L757:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L757
	retf [],0
.L755:
	retf [],0
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	fmov d0,fs24
	mov 1,d0
	fcmp 0xff7fffff, fs24
	fblt .L763
	fcmp 0x7f7fffff, fs24
	fbgt .L763
	clr d0
	retf [],0
.L763:
	retf [],0
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movm [d2,d3,a2],(sp)
	mov -1048577,a0
	mov -1,a2
	add -20,sp
	mov a2,(12,sp)
	mov a0,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L772
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L775
	mov d2,d0
.L769:
	ret [d2,d3,a2],32
.L772:
	mov 1,d0
	ret [d2,d3,a2],32
.L775:
	clr d2
	mov d2,d0
	jmp .L769
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movm [d2,d3,a2],(sp)
	mov -1048577,a0
	mov -1,a2
	add -20,sp
	mov a2,(12,sp)
	mov a0,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L779
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L782
	mov d2,d0
.L776:
	ret [d2,d3,a2],32
.L779:
	mov 1,d0
	ret [d2,d3,a2],32
.L782:
	clr d2
	mov d2,d0
	jmp .L776
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
	movm [d2],(sp)
	mov d1,d2
	add -16,sp
	mov d0,d1
	fmov fs16,(12,sp)
	fmov d0,fs16
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L786
	fadd fs16, fs16, fs24
	fcmp fs16, fs24
	fbeq .L786
	cmp 0,d2
	blt .L800
	btst 1,d2
	fmov 0x40000000,fs0
	beq .L788
.L789:
	fmul fs0, fs16
.L788:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L786
.L790:
	fmul fs0, fs0
	mov d2,d1
	lsr 31,d1
	add d2,d1
	btst 1,d2
	bne .L789
	mov d1,d2
	asr 1,d2
	jmp .L790
.L786:
	fmov fs16,d0
	fmov (12,sp),fs16
	ret [d2],20
.L800:
	btst 1,d2
	fmov 0x3f000000,fs0
	beq .L788
	jmp .L789
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
	bne .L802
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L802
	cmp_mov 0, r4, r5, d2
	blt .L818
	btst 1,r4
	mov 1073741824,d3
	beq .L805
.L806:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L805:
	mov r4,a0
	lsr 31,a0
	add r4,a0
	mov a0,r4
	asr 1,r4
	cmp 0,r4
	beq .L802
.L807:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L806
	mov r0,r4
	asr 1,r4
	jmp .L807
.L802:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L818:
	btst 1,r4
	mov 1071644672,d3
	beq .L805
	jmp .L806
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
	bne .L820
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L820
	cmp_mov 0, r4, r5, d2
	blt .L836
	btst 1,r4
	mov 1073741824,d3
	beq .L823
.L824:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L823:
	mov r4,d0
	lsr 31,d0
	add r4,d0
	mov d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L820
.L825:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L824
	mov r0,r4
	asr 1,r4
	jmp .L825
.L820:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L836:
	btst 1,r4
	mov 1071644672,d3
	beq .L823
	jmp .L824
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L838
	mov -1,d0
	add r2,d0
	cmp 3,d0
	bls .L839
	or d1,a0,a1
	and 3,a1
	bne .L839
	mov r2,r1
	and -4,r1
	setlb
.L840:
	mov (a1,a0),r3
	mov (a1,d1),r0
	xor r3,r0
	mov r0,(a1,a0)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L840
	add a1,a0,d0
	sub a1,r2,r3
	add_cmp a1, d1, a1, r2
	beq .L838
	movbu (d0),r2
	movbu (d1),a1
	xor_cmp a1, r2, 1, r3
	movbu r2,(d0)
	beq .L838
	movbu (1,d0),r1
	movbu (1,d1),r0
	xor_cmp r1, r0, 2, r3
	movbu r0,(1,d0)
	beq .L838
	movbu (2,d0),r3
	movbu (2,d1),d1
	xor r3,d1
	movbu d1,(2,d0)
	retf [],0
.L839:
	add r2,d1,d0
	mov a0,r2
	setlb
.L842:
	movbu (r2),a1
	movbu (d1),r1
	add_add 1, r2, 1, d1
	xor_cmp a1, r1, d1, d0
	movbu r1,(-1,r2)
	Lne # loop back to: .L842
.L838:
	retf [],0
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov d0,a0
	movbu (d0),d0
	mov (12,sp),r1
	cmp_mov 0, d0, a0, a1
	beq .L862
	setlb
.L859:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L859
.L862:
	cmp 0,r1
	beq .L861
	movbu (d1),r2
	add_add 1, a1, -1, r1
	inc d1
	movbu r2,(-1,a1)
	extbu r2
	cmp 0,r2
	bne .L862
	retf [],0
.L861:
	clr d1
	movbu d1,(a1)
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L874
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L877
.L874:
	mov a0,d0
	retf [],0
.L877:
	inc a0
	cmp a0,d1
	beq .L874
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L874
	jmp .L877
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L889
.L885:
	mov d1,a1
.L888:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L895
	cmp r1,r0
	bne .L888
	retf [],0
.L895:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L885
.L889:
	mov r1,a0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	clr r0
.L900:
	movbu (d0),a1
	mov_cmp r0, a0, d1, a1
	beq .L906
	add_cmp 1, d0, 0, a1
	mov a0,r0
	bne .L900
	retf [],0
.L906:
	mov_add d0, a0, 1, d0
	cmp_mov 0, a1, a0, r0
	bne .L900
	retf [],0
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2],(sp)
	movbu (d1),d3
	mov d1,d2
	extbu d3,r3
	cmp 0,r3
	beq .L920
	mov d1,a0
	setlb
.L909:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L909
	sub d2,a0,a2
	cmp d2,a0
	beq .L920
	add -1,a2
	extbu d3
.L926:
	movbu (d0),a0
	cmp r3,a0
	beq .L916
	add_cmp 1, d0, 0, a0
	bne .L926
	retf [d2,d3,a2],12
.L916:
	add a2,d0,d1
	mov_mov d2, r1, d0, a1
	mov d3,r0
.L911:
	cmp d1,a1
	beq .L913
	add_cmp 1, a1, r0, a0
	bne .L914
	movbu (a1),a0
	mov 1,r2
	add_cmp r1, r2, 0, a0
	movbu (1,r1),r0
	beq .L913
	cmp_mov 0, r0, r2, r1
	bne .L911
.L914:
	inc d0
	jmp .L926
.L913:
	cmp r0,a0
	bne .L914
.L920:
	mov d0,a0
	retf [d2,d3,a2],12
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
	blt .L941
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L933
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L932
.L933:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L941:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L933
.L932:
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
	mov (16,sp),r3
	cmp_mov 0, r1, d0, a0
	beq .L942
	cmp r1,d1
	bcs .L953
	sub r1,d1
	add d0,d1
	cmp d1,d0
	bhi .L953
	movbu (r3),d2
.L948:
	movbu (a0),d0
	mov 1,r2
	add_cmp a0, r2, d2, d0
	beq .L963
	mov r2,a0
.L944:
	cmp a0,d1
	bcc .L948
.L953:
	mov 0,a0
.L942:
	retf [d2],4
.L963:
	cmp 1,r1
	beq .L942
	mov 1,a1
.L945:
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	bne .L964
.L946:
	cmp r1,a1
	beq .L942
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	beq .L946
.L964:
	cmp r2,d1
	bcs .L953
	movbu (r2),a1
	mov 1,a0
	add_cmp r2, a0, a1, d2
	bne .L944
	mov_mov r2, r0, 1, a1
	mov_mov a0, r2, r0, a0
	jmp .L945
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L966
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L966:
	add d2,a1,a0
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
	blt .L997
	mov 1072693248,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L998
	clr r6
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
.L981:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L981
.L982:
	mov (64,sp),r3
	cmp 0,a3
	mov r6,(r3)
	beq .L988
	mov -2147483648,a1
	add_mov d3, a1, d2, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L988:
	mov_mov d3, a1, d2, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L998:
	mov 1071644672,d1
	mov a3,(12,sp)
	mov d1,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L978
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L987
.L978:
	mov (64,sp),r0
	clr a1
	mov d2,d0
	mov a1,(r0)
	mov_mov d3, a1, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L997:
	mov -1074790400,a0
	mov a3,(12,sp)
	mov a0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ledf2,[],0
	mov -2147483648,r5
	add_cmp d3, r5, a3, d0
	mov d2,r4
	bgt .L999
	clr r6
	mov_mov r5, d3, 1, a3
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
	jmp .L981
.L999:
	mov -1075838976,r1
	mov a3,(12,sp)
	mov r1,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp a3,d0
	bgt .L985
	mov (64,sp),r2
	mov_mov d3, a1, d2, d0
	mov a3,(r2)
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L985:
	clr r6
	mov 1,a3
	mov 1071644672,a2
	mov_mov r4, d2, r5, d3
	mov r6,r4
.L983:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L982
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L983
	jmp .L982
.L987:
	mov_mov d2, r4, d3, r5
	clr r6
	mov r4,d2
	mov 1071644672,a2
	mov_mov r5, d3, r6, r4
	jmp .L983
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -8,sp
	or d1,d0,a2
	mov (52,sp),a0
	mov (56,sp),a1
	mov d1,a3
	beq .L1004
	clr r4
	mov r4,r5
	setlb
.L1003:
	mov d0,r0
	and 1,r0
	mov d0,d2
	clr r1
	lsr 1,d2
	sub r0,r1,r6
	subc r1,r1,r3
	mov r3,(4,sp)
	mov (4,sp),r7
	mov_mov a1, r0, d1, d3
	and_mov a1, r7, d1, a1
	asl 31,a1
	or_mov a1, d2, a0, r2
	lsr 1,d3
	add r0,r0
	lsr 31,r2
	or r2,r0
	or d3,d2,a2
	mov r6,(sp)
	and_asl a0, r6, 1, a0
	add r6,r4
	addc r7,r5
	cmp_mov r1, a2, r1, a3
	mov_mov d2, d0, d3, d1
	mov r0,a1
	Lne # loop back to: .L1003
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L1004:
	mov_mov a2, r4, a2, r5
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movm [d2,d3],(sp)
	cmp_mov d0, d1, d0, a1
	bcc .L1043
	mov 32,d0
	mov 1,a0
.L1009:
	add_cmp -1, d0, 0, d1
	blt .L1014
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1011
	cmp 0,d0
	bne .L1009
.L1012:
	mov (20,sp),d1
	cmp 0,d1
	bne .L1044
.L1008:
	retf [d2,d3],8
.L1011:
	cmp 0,a0
	beq .L1028
.L1014:
	clr d0
	sub d1,a1,r0
	cmp d1,a1
	mov 1,r3
	mov d0,d3
	mov_mov d0, d2, a1, r2
	mov r3,r1
	bcc .L1031
.L1045:
	mov d3,r1
	bcc .L1031
.L1018:
	btst 1,r1
	mov_mov a0, r0, r2, a1
	bne .L1020
	mov d2,r0
.L1020:
	or_lsr r0, d0, 1, a0
	cmp_lsr 0, a0, 1, d1
	beq .L1012
	sub d1,a1,r0
	cmp_mov d1, a1, a1, r2
	mov r3,r1
	bcs .L1045
.L1031:
	mov r0,r2
	jmp .L1018
.L1044:
	mov a1,d0
	retf [d2,d3],8
.L1043:
	sub d1,d0,a0
	cmp_mov a1, d1, 1, d0
	bls .L1032
	mov 0,d0
	bhi .L1012
.L1032:
	mov (20,sp),d1
	mov_cmp a0, a1, 0, d1
	beq .L1008
	jmp .L1044
.L1028:
	mov (20,sp),d1
	mov_cmp a0, d0, 0, d1
	beq .L1008
	jmp .L1044
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L1048
	asl 8,d0
	clr d1
	bsch d0, d1
	mov d1,d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1048:
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
	beq .L1061
.L1057:
	clr d0
	cmp 0,r3
	bne .L1062
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L1062:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1061:
	cmp a0,d1
	bne .L1057
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L1066
	clr d0
	setlb
.L1065:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1065
	retf [],0
.L1066:
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2,d3],(sp)
	mov (20,sp),d2
	mov_mov d2, a1, d2, d3
	and -8,a1
	cmp_lsr d1, d0, 3, d3
	bcs .L1071
	add d2,d1,a0
	cmp a0,d0
	bls .L1103
.L1071:
	cmp 0,d3
	beq .L1074
	mov_asl 0, a0, 3, d3
	setlb
.L1075:
	mov (a0,d1),r0
	add a0,d1,r3
	mov (4,r3),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp d3,a0
	mov r1,(4,r2)
	Lne # loop back to: .L1075
	cmp a1,d2
	bls .L1070
	sub a1,d2,r3
	mov -1,a0
	add r3,a0
	cmp 6,a0
	bls .L1096
	mov 1,r0
	add a1,d0,d3
	add a1,r0
	add d1,r0
	sub r0,d3,r1
	add a1,d1,r2
	cmp 2,r1
	bls .L1096
	or d3,r2,a0
	and 3,a0
	bne .L1096
	mov r3,r1
	and -4,r1
	setlb
.L1080:
	mov (a0,r2),r0
	mov r0,(a0,d3)
	inc4 a0
	cmp a0,r1
	Lne # loop back to: .L1080
	add_cmp r1, a1, r3, r1
	beq .L1070
	movbu (a1,d1),d3
	mov 1,r2
	add a1,r2
	cmp r2,d2
	movbu d3,(a1,d0)
	bls .L1070
	movbu (r2,d1),d3
	add 2,a1
	cmp a1,d2
	movbu d3,(r2,d0)
	bls .L1070
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1070:
	retf [d2,d3],8
.L1074:
	cmp 0,d2
	beq .L1070
.L1096:
	movbu (a1,d1),r3
	movbu r3,(a1,d0)
	inc a1
	cmp a1,d2
	beq .L1070
	movbu (a1,d1),r3
	movbu r3,(a1,d0)
	inc a1
	cmp a1,d2
	bne .L1096
	jmp .L1070
.L1103:
	mov -1,r0
	add_cmp d2, r0, 0, d2
	beq .L1070
.L1072:
	movbu (r0,d1),r1
	movbu r1,(r0,d0)
	add -1,r0
	cmp -1,r0
	beq .L1070
	movbu (r0,d1),r1
	movbu r1,(r0,d0)
	add -1,r0
	cmp -1,r0
	bne .L1072
	jmp .L1070
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r0
	mov r0,r2
	cmp_lsr d1, d0, 1, r2
	bcs .L1105
	add r0,d1,a0
	cmp a0,d0
	bls .L1136
.L1105:
	cmp 0,r2
	beq .L1108
	mov -1,r3
	add r2,r3
	cmp 8,r3
	bls .L1109
	or d0,d1,a0
	and 3,a0
	bne .L1109
	mov 2,a1
	add d1,a1
	xor d0,a1
	clr r1
	sub a1,r1
	or r1,a1
	bnc .L1109
	mov_mov r0, r1, r0, r3
	and -4,r1
	lsr 2,r3
	setlb
.L1111:
	mov (a0,d1),a1
	mov a1,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1111
	mov r3,a0
	add a0,a0
	cmp a0,r2
	beq .L1108
	asl2 r3
	movhu (r3,d1),r2
	movhu r2,(r3,d0)
.L1108:
	btst 1,r0
	beq .L1104
	add -1,r0
	movbu (r0,d1),d1
	movbu d1,(r0,d0)
	retf [],0
.L1136:
	mov -1,r1
	add_cmp r0, r1, 0, r0
	beq .L1104
	setlb
.L1106:
	movbu (r1,d1),a1
	movbu a1,(r1,d0)
	add -1,r1
	cmp -1,r1
	Lne # loop back to: .L1106
.L1104:
	retf [],0
.L1109:
	mov_asl 0, r1, 1, r2
.L1113:
	movhu (r1,d1),r3
	movhu r3,(r1,d0)
	add 2,r1
	cmp r2,r1
	beq .L1108
	movhu (r1,d1),r3
	movhu r3,(r1,d0)
	add 2,r1
	cmp r2,r1
	bne .L1113
	jmp .L1108
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	movm [d2,d3],(sp)
	mov (20,sp),r2
	mov_mov r2, a1, r2, r1
	and -4,a1
	cmp_lsr d1, d0, 2, r1
	bcs .L1138
	add r2,d1,a0
	cmp a0,d0
	bls .L1170
.L1138:
	cmp 0,r1
	beq .L1141
	mov_asl 0, a0, 2, r1
	setlb
.L1142:
	mov (a0,d1),r0
	mov r0,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1142
	cmp a1,r2
	bls .L1137
	sub a1,r2,d3
	mov -1,r1
	add d3,r1
	cmp 6,r1
	bls .L1163
	mov 1,r3
	add a1,d0,r1
	add a1,r3
	add d1,r3
	sub r3,r1,a0
	add a1,d1,d2
	cmp 2,a0
	bls .L1163
	or r1,d2,a0
	and 3,a0
	bne .L1163
	mov d3,r3
	and -4,r3
	setlb
.L1147:
	mov (a0,d2),r0
	mov r0,(a0,r1)
	inc4 a0
	cmp a0,r3
	Lne # loop back to: .L1147
	add_cmp r3, a1, d3, r3
	beq .L1137
	movbu (a1,d1),d2
	mov 1,r1
	add a1,r1
	cmp r1,r2
	movbu d2,(a1,d0)
	bls .L1137
	movbu (r1,d1),d2
	add 2,a1
	cmp a1,r2
	movbu d2,(r1,d0)
	bls .L1137
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1137:
	retf [d2,d3],8
.L1141:
	cmp 0,r2
	beq .L1137
.L1163:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a1,r2
	beq .L1137
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a1,r2
	bne .L1163
	jmp .L1137
.L1170:
	mov -1,r0
	add_cmp r2, r0, 0, r2
	beq .L1137
.L1139:
	movbu (r0,d1),r3
	movbu r3,(r0,d0)
	add -1,r0
	cmp -1,r0
	beq .L1137
	movbu (r0,d1),r3
	movbu r3,(r0,d0)
	add -1,r0
	cmp -1,r0
	bne .L1139
	jmp .L1137
	.size	__cmovw, .-__cmovw
	.global __modi
	.type	__modi, @function
__modi:
	mov d0,a0
	ext d0
	div d1,a0
	mov mdr,d0
	rets
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
	exthu d0,d1
	mov d1,d0
	asr 15,d0
	cmp 0,d0
	bne .L1186
	mov d1,d0
	asr 14,d0
	cmp 0,d0
	bne .L1183
	mov d1,a0
	asr 13,a0
	cmp 0,a0
	bne .L1187
	mov d1,a1
	asr 12,a1
	cmp 0,a1
	bne .L1188
	mov d1,r0
	asr 11,r0
	cmp 0,r0
	bne .L1189
	mov d1,r1
	asr 10,r1
	cmp 0,r1
	bne .L1190
	mov d1,r2
	asr 9,r2
	cmp 0,r2
	bne .L1191
	mov d1,r3
	asr 8,r3
	cmp 0,r3
	bne .L1192
	mov d1,d0
	asr 7,d0
	cmp 0,d0
	bne .L1193
	mov d1,a0
	asr 6,a0
	cmp 0,a0
	bne .L1194
	mov d1,a1
	asr 5,a1
	cmp 0,a1
	bne .L1195
	mov d1,r0
	asr 4,r0
	cmp 0,r0
	bne .L1196
	mov d1,r1
	asr 3,r1
	cmp 0,r1
	bne .L1197
	mov d1,r2
	asr 2,r2
	cmp 0,r2
	bne .L1198
	mov d1,r3
	asr 1,r3
	cmp 0,r3
	bne .L1199
	cmp 0,d1
	mov 16,d0
	bne .L1204
.L1183:
	retf [],0
.L1186:
	clr d0
	retf [],0
.L1197:
	mov 12,d0
	retf [],0
.L1204:
	mov 15,d0
	retf [],0
.L1187:
	mov 2,d0
	retf [],0
.L1188:
	mov 3,d0
	retf [],0
.L1189:
	mov 4,d0
	retf [],0
.L1190:
	mov 5,d0
	retf [],0
.L1191:
	mov 6,d0
	retf [],0
.L1192:
	mov 7,d0
	retf [],0
.L1193:
	mov 8,d0
	retf [],0
.L1194:
	mov 9,d0
	retf [],0
.L1195:
	mov 10,d0
	retf [],0
.L1196:
	mov 11,d0
	retf [],0
.L1198:
	mov 13,d0
	retf [],0
.L1199:
	mov 14,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	btst 1,d0
	bne .L1208
	mov d0,d1
	and 2,d1
	bne .L1209
	mov d0,a0
	and 4,a0
	bne .L1210
	mov d0,a1
	and 8,a1
	bne .L1211
	mov d0,r0
	and 16,r0
	bne .L1212
	mov d0,r1
	and 32,r1
	bne .L1213
	mov d0,r2
	and 64,r2
	bne .L1214
	mov d0,r3
	and 128,r3
	bne .L1215
	mov d0,d1
	and 256,d1
	bne .L1216
	mov d0,a0
	and 512,a0
	bne .L1217
	mov d0,a1
	and 1024,a1
	bne .L1218
	mov d0,r0
	and 2048,r0
	bne .L1219
	mov d0,r1
	and 4096,r1
	bne .L1220
	mov d0,r2
	and 8192,r2
	bne .L1221
	mov d0,r3
	and 16384,r3
	bne .L1222
	exthu d0,d1
	asr 15,d1
	cmp 0,d1
	mov 16,d0
	bne .L1227
	retf [],0
.L1208:
	clr d0
	retf [],0
.L1209:
	mov 1,d0
	retf [],0
.L1220:
	mov 12,d0
	retf [],0
.L1227:
	mov 15,d0
	retf [],0
.L1210:
	mov 2,d0
	retf [],0
.L1211:
	mov 3,d0
	retf [],0
.L1212:
	mov 4,d0
	retf [],0
.L1213:
	mov 5,d0
	retf [],0
.L1214:
	mov 6,d0
	retf [],0
.L1215:
	mov 7,d0
	retf [],0
.L1216:
	mov 8,d0
	retf [],0
.L1217:
	mov 9,d0
	retf [],0
.L1218:
	mov 10,d0
	retf [],0
.L1219:
	mov 11,d0
	retf [],0
.L1221:
	mov 13,d0
	retf [],0
.L1222:
	mov 14,d0
	retf [],0
	.size	__ctzhi2, .-__ctzhi2
	.global __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	fmov d0,fs24
	add -12,sp
	fcmp 0x47000000, fs24
	fbge .L1232
	call +__fixsfsi,[],0
	ret [],12
.L1232:
	fsub 0x47000000, fs24, fs0
	fmov fs0,d0
	call +__fixsfsi,[],0
	add 32768,d0
	ret [],12
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	exthu d0,d1
	mov_mov d0, a0, d1, a1
	mov_asr d1, d0, 2, a1
	asr 1,d0
	and 1,a0
	and 1,d0
	mov_mov a1, r0, d1, r1
	and 1,r0
	mov_asr d1, r2, 3, r1
	and 1,r1
	add_asr a0, d0, 4, r2
	mov d1,r3
	and 1,r2
	add_asr r0, d0, 5, r3
	mov d1,a0
	and 1,r3
	add_asr r1, d0, 6, a0
	mov d1,a1
	and 1,a0
	add_asr r2, d0, 7, a1
	mov d1,r0
	and 1,a1
	add r3,d0
	asr 8,r0
	mov d1,r1
	and 1,r0
	add a0,d0
	asr 9,r1
	mov_add d1, r2, a1, d0
	and 1,r1
	asr 10,r2
	mov_add d1, r3, r0, d0
	and 1,r2
	asr 11,r3
	mov d1,a0
	and 1,r3
	add r1,d0
	asr 12,a0
	mov d1,a1
	and 1,a0
	add r2,d0
	asr 13,a1
	mov d1,r0
	and 1,a1
	add r3,d0
	asr 14,r0
	and 1,r0
	add a0,d0
	add a1,d0
	asr 15,d1
	add r0,d0
	add d1,d0
	and 1,d0
	retf [],0
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	exthu d0,a0
	mov_mov d0, d1, a0, d0
	mov_asr a0, a1, 1, d0
	and 1,d1
	and 1,d0
	mov_asr a0, r0, 2, a1
	and 1,a1
	mov_asr a0, r1, 3, r0
	and 1,r0
	add_asr d1, d0, 4, r1
	mov a0,r2
	and 1,r1
	add_asr a1, d0, 5, r2
	mov a0,r3
	and 1,r2
	add_asr r0, d0, 6, r3
	mov a0,d1
	and 1,r3
	add_asr r1, d0, 7, d1
	mov a0,a1
	and 1,d1
	add r2,d0
	asr 8,a1
	mov a0,r0
	and 1,a1
	add r3,d0
	asr 9,r0
	mov_add a0, r1, d1, d0
	and 1,r0
	asr 10,r1
	mov_add a0, r2, a1, d0
	and 1,r1
	asr 11,r2
	mov a0,r3
	and 1,r2
	add r0,d0
	asr 12,r3
	mov a0,d1
	and 1,r3
	add r1,d0
	asr 13,d1
	and 1,d1
	add_mov r2, d0, a0, a1
	add r3,d0
	asr 14,a1
	add_mov d0, d1, a1, d0
	and 1,d0
	asr 15,a0
	add d1,d0
	add a0,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmp_mov 0, d0, d0, a1
	beq .L1244
	clr d0
	setlb
.L1243:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1243
	retf [],0
.L1244:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1251
	cmp 0,d1
	beq .L1252
	clr d0
	setlb
.L1250:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1250
	retf [],0
.L1251:
	retf [],0
.L1252:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movm [d2,d3],(sp)
	cmp_mov d1, d0, d0, a1
	bls .L1291
	mov 32,d0
	mov 1,a0
.L1257:
	add_cmp -1, d0, 0, d1
	blt .L1262
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1259
	cmp 0,d0
	bne .L1257
.L1260:
	mov (20,sp),d1
	cmp 0,d1
	bne .L1292
.L1256:
	retf [d2,d3],8
.L1259:
	cmp 0,a0
	beq .L1276
.L1262:
	clr d0
	sub d1,a1,r0
	cmp d1,a1
	mov 1,r3
	mov d0,d3
	mov_mov d0, d2, a1, r2
	mov r3,r1
	bcc .L1279
.L1293:
	mov d3,r1
	bcc .L1279
.L1266:
	btst 1,r1
	mov_mov a0, r0, r2, a1
	bne .L1268
	mov d2,r0
.L1268:
	or_lsr r0, d0, 1, a0
	cmp_lsr 0, a0, 1, d1
	beq .L1260
	sub d1,a1,r0
	cmp_mov d1, a1, a1, r2
	mov r3,r1
	bcs .L1293
.L1279:
	mov r0,r2
	jmp .L1266
.L1292:
	mov a1,d0
	retf [d2,d3],8
.L1291:
	sub d1,d0,a0
	cmp_mov d1, a1, 1, d0
	bcc .L1280
	mov 0,d0
	bcs .L1260
.L1280:
	mov (20,sp),d1
	mov_cmp a0, a1, 0, d1
	beq .L1256
	jmp .L1292
.L1276:
	mov (20,sp),d1
	mov_cmp a0, d0, 0, d1
	beq .L1256
	jmp .L1292
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	fmov d0,fs26
	fmov d1,fs24
	fcmp fs24, fs26
	fblt .L1297
	mov 1,d0
	fbgt .L1294
	clr d0
	retf [],0
.L1297:
	mov -1,d0
.L1294:
	retf [],0
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
	blt .L1303
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1306
	mov d2,d0
.L1300:
	ret [d2,d3,a2,a3],36
.L1306:
	clr d2
	mov d2,d0
	jmp .L1300
.L1303:
	mov -1,d0
	ret [d2,d3,a2,a3],36
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	mul d0,d1,d1,d0
	retf [],0
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	mulu d0,d1,d1,d0
	retf [],0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.global __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	cmp_mov 0, d1, d0, r0
	blt .L1327
	beq .L1317
	clr r2
	clr d0
	mov 32,a1
.L1316:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1315
	cmp 0,r1
	bne .L1316
.L1315:
	cmp 0,r2
	beq .L1311
	not d0
	inc d0
	retf [],0
.L1317:
	mov d1,d0
.L1311:
	retf [],0
.L1327:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1316
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2,d3,a2],(sp)
	cmp 0,d0
	blt .L1362
	clr d3
	cmp_mov 0, d1, 1, a0
	blt .L1363
.L1330:
	cmp_mov d1, d0, d0, r0
	mov d1,a0
	bls .L1364
	mov 32,a1
	mov 1,d1
.L1331:
	add_asl -1, a1, 1, a0
	cmp_asl a0, d0, 1, d1
	bls .L1336
	cmp 0,a1
	bne .L1331
.L1336:
	clr d0
	cmp d0,d1
	beq .L1358
	mov 1,r3
	mov d0,a2
	mov d0,d2
.L1333:
	sub a0,r0,a1
	cmp_mov a0, r0, r0, r2
	mov r3,r1
	bcc .L1350
	mov a2,r1
	bcc .L1350
.L1340:
	btst 1,r1
	mov_mov d1, a1, r2, r0
	bne .L1342
	mov d2,a1
.L1342:
	or_lsr a1, d0, 1, d1
	cmp_lsr 0, d1, 1, a0
	bne .L1333
.L1334:
	cmp 0,d3
	beq .L1328
	not d0
	inc d0
.L1328:
	retf [d2,d3,a2],12
.L1350:
	mov a1,r2
	jmp .L1340
.L1363:
	not d1
	add_mov 1, d1, a0, d3
	jmp .L1330
.L1362:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 0, a0, 1, d3
	bge .L1330
	jmp .L1363
.L1358:
	mov d1,d0
	jmp .L1334
.L1364:
	mov 1,d0
	bcc .L1334
	mov 0,d0
	jmp .L1334
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1400
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1401
.L1367:
	cmp_mov d1, d0, d1, a0
	bls .L1402
	mov 32,a1
	mov 1,d1
.L1368:
	add_asl -1, a1, 1, a0
	cmp_asl a0, d0, 1, d1
	bls .L1373
	cmp 0,a1
	bne .L1368
.L1373:
	cmp 0,d1
	beq .L1371
.L1370:
	sub a0,r0,r2
	cmp_mov a0, r0, r0, a1
	bcs .L1376
	mov r2,a1
.L1376:
	lsr 1,d1
	cmp_lsr 0, d1, 1, a0
	mov a1,r0
	bne .L1370
.L1381:
	mov r0,d0
.L1371:
	cmp 0,r1
	beq .L1365
	not d0
	inc d0
	retf [],0
.L1365:
	retf [],0
.L1401:
	not d1
	inc d1
	jmp .L1367
.L1400:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1367
	jmp .L1401
.L1402:
	sub d1,d0,r0
	cmp d1,d0
	bcc .L1381
	mov_mov d0, r0, d0, d0
	jmp .L1371
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movm [d2,d3,a2],(sp)
	mov d0,r3
	exthu r3,r0
	exthu d1,d0
	cmp r0,d0
	mov (24,sp),r2
	bcc .L1632
	exth d1,a1
	cmp 0,a1
	blt .L1408
	mov d1,r1
	add r1,r1
	exthu r1,d0
	cmp d0,r0
	mov r1,a1
	bls .L1515
	exth r1
	cmp 0,r1
	blt .L1515
	mov d1,a0
	asl2 a0
	exthu a0,r1
	cmp r1,r0
	mov a0,a1
	bls .L1517
	exth a0
	cmp 0,a0
	blt .L1517
	mov d1,a0
	asl 3,a0
	exthu a0,d0
	cmp d0,r0
	mov a0,a1
	bls .L1519
	exth a0
	cmp 0,a0
	blt .L1519
	mov d1,d0
	asl2 d0
	asl2 d0
	exthu d0,r1
	cmp r1,r0
	mov d0,a1
	bls .L1521
	exth d0
	cmp 0,d0
	blt .L1521
	mov d1,d0
	asl 5,d0
	exthu d0,a0
	cmp a0,r0
	mov d0,a1
	bls .L1523
	exth d0
	cmp 0,d0
	blt .L1523
	mov d1,r1
	asl 6,r1
	exthu r1,d0
	cmp d0,r0
	mov r1,a1
	bls .L1525
	exth r1
	cmp 0,r1
	blt .L1525
	mov d1,r1
	asl 7,r1
	exthu r1,a0
	cmp a0,r0
	mov r1,a1
	bls .L1527
	exth r1
	cmp 0,r1
	blt .L1527
	mov d1,d0
	asl 8,d0
	exthu d0,r1
	cmp r1,r0
	mov d0,a1
	bls .L1529
	exth d0
	cmp 0,d0
	blt .L1529
	mov d1,d0
	asl 9,d0
	exthu d0,a0
	cmp a0,r0
	mov d0,a1
	bls .L1531
	exth d0
	cmp 0,d0
	blt .L1531
	mov d1,r1
	asl 10,r1
	exthu r1,d0
	cmp d0,r0
	mov r1,a1
	bls .L1533
	exth r1
	cmp 0,r1
	blt .L1533
	mov d1,r1
	asl 11,r1
	exthu r1,a0
	cmp a0,r0
	mov r1,a1
	bls .L1535
	exth r1
	cmp 0,r1
	blt .L1535
	mov d1,d0
	asl 12,d0
	exthu d0,r1
	cmp r1,r0
	mov d0,a1
	bls .L1537
	exth d0
	cmp 0,d0
	blt .L1537
	mov d1,d0
	asl 13,d0
	exthu d0,a0
	cmp a0,r0
	mov d0,a1
	bls .L1539
	exth d0
	cmp 0,d0
	blt .L1539
	mov d1,r1
	asl 14,r1
	exthu r1,d0
	cmp d0,r0
	mov r1,a1
	bls .L1541
	exth r1
	cmp 0,r1
	blt .L1541
	asl 15,d1
	exthu d1,r1
	cmp r1,r0
	bls .L1542
	cmp 0,r1
	mov r3,d0
	bne .L1633
.L1411:
	cmp 0,r2
	bne .L1403
	mov d1,d0
.L1403:
	retf [d2,d3,a2],12
.L1515:
	mov 2,a0
.L1410:
	sub a1,r3,a2
	exthu a1,r1
	cmp r1,r0
	bcc .L1510
	mov r3,a2
.L1510:
	cmp r1,r0
	bcc .L1577
	clr d2
.L1512:
	mov r1,d0
	mov_lsr a0, r0, 1, d0
	sub d0,a2,a1
	lsr 1,r0
	exthu a2,r3
	exthu d0,d1
	cmp d1,r3
	bcc .L1414
	mov a2,a1
.L1414:
	cmp d1,r3
	mov a1,d0
	bcc .L1416
	clr r0
.L1416:
	or_mov d2, r0, a0, r3
	mov_lsr r1, d2, 2, r3
	cmp_lsr 0, r3, 2, d2
	mov r0,d1
	mov r3,a2
	beq .L1411
	sub d2,a1,r3
	exthu a1,d1
	cmp d2,d1
	mov 1,d0
	exthu d2,d3
	bcc .L1418
	clr d0
.L1418:
	cmp d3,d1
	bcc .L1421
	mov a1,r3
.L1421:
	extbu d0,a1
	cmp 0,a1
	mov r3,d0
	beq .L1423
	mov a2,a1
.L1423:
	or_mov r0, a1, a0, d2
	mov_lsr r1, r0, 3, d2
	cmp_lsr 0, d2, 3, r0
	mov a1,d1
	mov d2,a2
	beq .L1411
	sub r0,r3,d2
	exthu r3,d0
	cmp_mov r0, d0, 1, d1
	exthu r0,d3
	bcc .L1424
	clr d1
.L1424:
	cmp d3,d0
	bcc .L1427
	mov r3,d2
.L1427:
	cmp 0,d1
	mov d2,d0
	beq .L1429
	mov a2,d1
.L1429:
	or d1,a1,r3
	mov_mov r1, r0, a0, a1
	lsr 4,a1
	cmp_lsr 0, a1, 4, r0
	mov r3,d1
	mov a1,a2
	beq .L1411
	sub r0,d2,d1
	exthu d2,d0
	cmp_mov r0, d0, 1, a1
	exthu r0,d3
	bcc .L1430
	mov 0,a1
.L1430:
	cmp d3,d0
	bcc .L1562
	mov d2,r0
.L1433:
	cmp 0,a1
	mov r0,d0
	beq .L1435
	mov a2,a1
.L1435:
	mov_mov a0, d3, r1, d2
	or_lsr r3, a1, 5, d3
	cmp_lsr 0, d3, 5, d2
	mov a1,d1
	mov d3,a2
	beq .L1411
	sub d2,r0,r3
	exthu r0,d0
	cmp_mov d2, d0, 1, d1
	exthu d2,d3
	bcc .L1436
	clr d1
.L1436:
	cmp d3,d0
	bcs .L1439
	mov r3,r0
.L1439:
	cmp 0,d1
	mov r0,d0
	beq .L1441
	mov a2,d1
.L1441:
	or d1,a1,a2
	mov_mov r1, d2, a0, a1
	lsr 6,a1
	cmp_lsr 0, a1, 6, d2
	mov a2,d1
	mov a1,r3
	beq .L1411
	sub d2,r0,d1
	exthu r0,d0
	cmp_mov d2, d0, 1, a1
	exthu d2,d3
	bcc .L1442
	mov 0,a1
.L1442:
	cmp d3,d0
	bcs .L1445
	mov d1,r0
.L1445:
	cmp 0,a1
	mov r0,d0
	beq .L1447
	mov r3,a1
.L1447:
	mov_mov a0, d3, r1, d2
	or_lsr a2, a1, 7, d3
	cmp_lsr 0, d3, 7, d2
	mov a1,d1
	mov d3,r3
	beq .L1411
	sub d2,r0,a2
	exthu r0,d0
	cmp_mov d2, d0, 1, d1
	exthu d2,d3
	bcc .L1448
	clr d1
.L1448:
	cmp d3,d0
	bcc .L1451
	mov r0,a2
.L1451:
	cmp 0,d1
	mov a2,d0
	beq .L1453
	mov r3,d1
.L1453:
	mov_mov a0, d3, r1, d2
	or d1,a1
	lsr 8,d3
	lsr 8,d2
	cmp 0,d3
	mov a1,d1
	mov d3,r3
	beq .L1411
	sub d2,a2,d3
	exthu a2,d0
	cmp_mov d2, d0, 1, d1
	exthu d2,r0
	bcc .L1454
	clr d1
.L1454:
	cmp r0,d0
	bcc .L1457
	mov a2,d3
.L1457:
	cmp 0,d1
	mov d3,d0
	beq .L1459
	mov r3,d1
.L1459:
	mov_mov a0, a2, r1, d2
	or d1,a1
	lsr 9,a2
	lsr 9,d2
	cmp 0,a2
	mov a1,d1
	mov a2,r0
	beq .L1411
	sub d2,d3,r3
	exthu d3,d0
	cmp_mov d2, d0, 1, d1
	exthu d2,a2
	bcc .L1460
	clr d1
.L1460:
	cmp a2,d0
	bcs .L1463
	mov r3,d3
.L1463:
	cmp 0,d1
	mov d3,d0
	beq .L1465
	mov r0,d1
.L1465:
	mov_mov a0, a2, r1, d2
	or d1,a1
	lsr 10,a2
	lsr 10,d2
	cmp 0,a2
	mov a1,d1
	mov a2,r0
	beq .L1411
	sub d2,d3,r3
	exthu d3,d0
	cmp_mov d2, d0, 1, d1
	exthu d2,a2
	bcc .L1466
	clr d1
.L1466:
	cmp a2,d0
	bcc .L1568
	mov d3,d2
.L1469:
	cmp 0,d1
	mov d2,d0
	beq .L1471
	mov r0,d1
.L1471:
	mov_mov a0, a2, r1, d3
	or d1,a1
	lsr 11,a2
	lsr 11,d3
	cmp 0,a2
	mov a1,d1
	mov a2,r0
	beq .L1411
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, d1
	exthu d3,a2
	bcc .L1472
	clr d1
.L1472:
	cmp a2,d0
	bcs .L1475
	mov r3,d2
.L1475:
	cmp 0,d1
	mov d2,d0
	beq .L1477
	mov r0,d1
.L1477:
	mov_mov a0, d3, r1, a2
	or d1,a1
	lsr 12,d3
	lsr 12,a2
	cmp 0,d3
	mov a1,d1
	mov d3,r3
	beq .L1411
	sub a2,d2,d3
	exthu d2,d0
	cmp_mov a2, d0, 1, d1
	exthu a2,r0
	bcc .L1478
	clr d1
.L1478:
	cmp r0,d0
	bcc .L1481
	mov d2,d3
.L1481:
	cmp 0,d1
	mov d3,d0
	beq .L1483
	mov r3,d1
.L1483:
	or d1,a1,d2
	mov_mov r1, a2, a0, a1
	lsr 13,a1
	lsr 13,a2
	cmp 0,a1
	mov d2,d1
	mov a1,r0
	beq .L1411
	sub a2,d3,r3
	exthu d3,d0
	cmp_mov a2, d0, 1, a1
	exthu a2,d1
	bcc .L1484
	mov 0,a1
.L1484:
	cmp d1,d0
	bcs .L1487
	mov r3,d3
.L1487:
	cmp 0,a1
	mov d3,d0
	beq .L1489
	mov r0,a1
.L1489:
	or_mov d2, a1, r1, a2
	mov a0,d2
	lsr 14,d2
	lsr 14,a2
	cmp 0,d2
	mov a1,d1
	mov d2,r3
	beq .L1411
	sub a2,d3,d2
	exthu d3,d0
	cmp_mov a2, d0, 1, d1
	exthu a2,r0
	bcc .L1490
	clr d1
.L1490:
	cmp r0,d0
	bcc .L1493
	mov d3,d2
.L1493:
	cmp 0,d1
	mov d2,d0
	beq .L1495
	mov r3,d1
.L1495:
	or d1,a1
	lsr 15,r1
	cmp 16384,a0
	mov a1,d1
	beq .L1411
	sub r1,d2,d0
	exthu d2,a0
	cmp_mov r1, a0, 1, d1
	exthu r1,d3
	bcc .L1496
	clr d1
.L1496:
	cmp d3,a0
	bcc .L1499
	mov d2,d0
.L1499:
	or a1,d1
	jmp .L1411
.L1562:
	mov d1,r0
	jmp .L1433
.L1577:
	mov a0,d2
	jmp .L1512
.L1568:
	mov r3,d2
	jmp .L1469
.L1517:
	mov 4,a0
	jmp .L1410
.L1519:
	mov 8,a0
	jmp .L1410
.L1521:
	mov 16,a0
	jmp .L1410
.L1531:
	mov 512,a0
	jmp .L1410
.L1633:
	mov 32768,a0
	mov a0,a1
	jmp .L1410
.L1523:
	mov 32,a0
	jmp .L1410
.L1525:
	mov 64,a0
	jmp .L1410
.L1527:
	mov 128,a0
	jmp .L1410
.L1529:
	mov 256,a0
	jmp .L1410
.L1632:
	xor d1,r3,a0
	exthu a0
	sub d1,r3,d0
	add -1,a0
	cmp 0,a0
	blt .L1406
	mov r3,d0
.L1406:
	xor r3,d1
	exthu d1
	add -1,d1
	lsr 31,d1
	jmp .L1411
.L1533:
	mov 1024,a0
	jmp .L1410
.L1535:
	mov 2048,a0
	jmp .L1410
.L1537:
	mov 4096,a0
	jmp .L1410
.L1539:
	mov 8192,a0
	jmp .L1410
.L1541:
	mov 16384,a0
	jmp .L1410
.L1542:
	mov -32768,a1
	exthu a1,a0
	jmp .L1410
.L1408:
	sub d1,r3,d0
	mov 1,d1
	jmp .L1411
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movm [d2,d3],(sp)
	cmp_mov d1, d0, d0, a1
	bls .L1669
	mov 32,d0
	mov 1,a0
.L1635:
	add_cmp -1, d0, 0, d1
	blt .L1640
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1637
	cmp 0,d0
	bne .L1635
.L1638:
	mov (20,sp),d1
	cmp 0,d1
	bne .L1670
.L1634:
	retf [d2,d3],8
.L1637:
	cmp 0,a0
	beq .L1654
.L1640:
	clr d0
	sub d1,a1,r0
	cmp d1,a1
	mov 1,r3
	mov d0,d3
	mov_mov d0, d2, a1, r2
	mov r3,r1
	bcc .L1657
.L1671:
	mov d3,r1
	bcc .L1657
.L1644:
	btst 1,r1
	mov_mov a0, r0, r2, a1
	bne .L1646
	mov d2,r0
.L1646:
	or_lsr r0, d0, 1, a0
	cmp_lsr 0, a0, 1, d1
	beq .L1638
	sub d1,a1,r0
	cmp_mov d1, a1, a1, r2
	mov r3,r1
	bcs .L1671
.L1657:
	mov r0,r2
	jmp .L1644
.L1670:
	mov a1,d0
	retf [d2,d3],8
.L1669:
	sub d1,d0,a0
	cmp_mov d1, a1, 1, d0
	bcc .L1658
	mov 0,d0
	bcs .L1638
.L1658:
	mov (20,sp),d1
	mov_cmp a0, a1, 0, d1
	beq .L1634
	jmp .L1670
.L1654:
	mov (20,sp),d1
	mov_cmp a0, d0, 0, d1
	beq .L1634
	jmp .L1670
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L1673
	mov 0,a1
	asl a0,r2,a0
	mov_mov a0, r3, a1, r2
.L1675:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1673:
	cmp 0,a0
	beq .L1675
	clr d1
	sub a0,d1
	lsr d1,r2,r0
	asl a0,r3,r1
	asl a0,r2,a1
	or r1,r0,a0
	mov_mov a1, r2, a0, r3
	jmp .L1675
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov (12,sp),a0
	mov_mov d0, r0, d1, r1
	mov a0,d0
	and 32,d0
	beq .L1680
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r0, a1, r1
.L1682:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1680:
	cmp 0,a0
	beq .L1682
	clr d1
	sub a0,d1
	asl d1,r1,r2
	lsr a0,r0,r3
	asr a0,r1,a1
	or r3,r2,a0
	mov_mov a0, r0, a1, r1
	jmp .L1682
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d0, a0, d1, d0
	lsr 8,d0
	mov a0,a3
	add -88,sp
	and 65280,d0
	lsr 8,a3
	mov d1,r2
	mov a3,(sp)
	lsr 24,r2
	or d0,r2,r0
	mov (sp),d2
	mov r0,(48,sp)
	mov_mov a0, r6, d1, r7
	clr r1
	asl 8,r7
	lsr 24,r6
	or_mov r7, r6, r1, r4
	mov r1,(60,sp)
	mov r1,(76,sp)
	mov r1,(16,sp)
	mov r1,(24,sp)
	mov r1,(80,sp)
	mov r1,(40,sp)
	mov d1,a2
	mov (48,sp),r1
	asl 24,a2
	mov r6,d0
	and 16711680,d0
	or a2,d2
	mov d2,(sp)
	or d0,r1
	mov r1,(64,sp)
	mov (sp),d3
	mov (64,sp),r6
	and -16777216,d3
	or_mov d3, r6, a0, r2
	mov r6,(8,sp)
	lsr 24,r2
	or_mov r2, r7, a0, r6
	asl 8,r6
	extbu r7,r0
	mov r6,r1
	mov r0,(20,sp)
	and 16711680,r1
	mov (20,sp),d2
	mov (8,sp),r2
	mov r1,(44,sp)
	mov_mov d1, a1, a0, r5
	mov d1,a3
	lsr 8,a0
	mov a2,d1
	or a0,d1
	asl 24,r5
	and 65280,d1
	mov (44,sp),r0
	mov r5,r3
	or d2,r3
	mov d3,(72,sp)
	or_mov r4, r2, r4, d2
	or_mov r2, d2, d1, d3
	or r3,d3
	mov d2,(32,sp)
	mov d3,(36,sp)
	lsr 8,a1
	or r4,d2
	or r0,d3
	mov d0,(56,sp)
	mov d1,(28,sp)
	mov r5,(52,sp)
	mov r5,(68,sp)
	mov a1,(4,sp)
	mov r5,(12,sp)
	mov r6,(84,sp)
	lsr 24,a3
	mov_mov d2, d0, d3, d1
	retf [d2,d3,a2,a3,exreg1],120
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
	bls .L1691
	mov 0,a0
.L1691:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,r2
	btst 65280,r2
	mov 1,a1
	beq .L1692
	mov 0,a1
.L1692:
	mov a1,d0
	asl2 d0
	add d0,d0
	mov 8,r0
	sub_add d0, r0, d0, a0
	lsr r0,r2
	btst 240,r2
	mov 1,r1
	beq .L1693
	clr r1
.L1693:
	mov_asl 4, r3, 2, r1
	sub r1,r3
	add a0,r1,d1
	lsr r3,r2
	btst 12,r2
	mov 1,a0
	beq .L1694
	mov 0,a0
.L1694:
	mov_asl 2, a1, 1, a0
	sub a0,a1,d0
	lsr d0,r2
	mov r2,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1696
	sub r2,a1,d0
.L1696:
	add d1,a0
	add a0,d0
	retf [],0
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov d0,r0
	mov (16,sp),d0
	mov (12,sp),a0
	cmp d0,d1
	blt .L1712
	bgt .L1713
	cmp a0,r0
	bcs .L1712
	bhi .L1713
	mov 1,d0
	retf [],0
.L1712:
	clr d0
	retf [],0
.L1713:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov d0,r0
	mov (16,sp),d0
	mov (12,sp),a0
	cmp d0,d1
	blt .L1721
	bgt .L1720
	cmp a0,r0
	bcs .L1721
	mov 1,d0
	bls .L1724
	retf [],0
.L1721:
	mov -1,d0
	retf [],0
.L1724:
	clr d0
	retf [],0
.L1720:
	mov 1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a1
	beq .L1726
	mov 0,a1
.L1726:
	asl 4,a1
	lsr a1,d0,r1
	extbu r1,d0
	cmp_mov 0, d0, 1, a0
	beq .L1727
	mov 0,a0
.L1727:
	asl 3,a0
	add_lsr a1, a0, a0, r1
	btst 15,r1
	mov 1,r0
	beq .L1728
	clr r0
.L1728:
	asl2 r0
	add a0,r0,r2
	lsr r0,r1
	btst 3,r1
	mov 1,d0
	beq .L1729
	clr d0
.L1729:
	add d0,d0
	lsr d0,r1
	and 3,r1
	mov r1,a1
	not a1
	and 1,a1
	mov_lsr 2, r3, 1, r1
	clr d1
	sub_sub r1, r3, a1, d1
	and_add r3, d1, r2, d0
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
	beq .L1745
	mov 0,r0
	lsr a0,d1,a0
	mov_mov a0, a1, r0, r1
.L1747:
	mov_mov a1, d0, r1, d1
	retf [],0
.L1745:
	cmp 0,a0
	beq .L1748
	clr d0
	sub a0,d0
	lsr a0,r0,r3
	asl d0,d1,r2
	lsr a0,d1,r0
	or r3,r2,a0
	mov_mov a0, a1, r0, r1
	jmp .L1747
.L1748:
	mov_mov d0, a1, d0, d0
	mov r1,d1
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
	mov r2,r0
	mul d1,a1
	lsr 16,r0
	mul d1,d0
	add r0,a0
	exthu a0,d1
	add d1,a1
	lsr 16,a0
	add_mov d0, a0, a1, d0
	asl 16,d0
	lsr 16,a1
	exthu r2
	add_add a1, a0, d0, r2
	mov_mov a0, d1, r2, d0
	ret [d2],4
	.size	__muldsi3, .-__muldsi3
	.global __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movm [d2,d3,a2,a3],(sp)
	mov (28,sp),r0
	mov_mov d0, r2, d1, r3
	exthu r0,a0
	exthu d0,d1
	mov r2,a2
	mul d1,a0,d0,a1
	lsr 16,a2
	mul a0,a2,d2,a3
	mov r0,d0
	lsr 16,d0
	mov a1,d2
	mul d0,d1
	lsr 16,d2
	mul d0,a2
	add d2,a3
	mov (32,sp),r1
	exthu a3,d3
	add d3,d1
	lsr 16,a3
	add_mov a2, a3, d1, a0
	lsr 16,d1
	add d1,a3
	mul r2,r1,d0,d1
	mul r3,r0
	exthu a1
	asl 16,a0
	add a0,a1,d2
	add a3,d1
	add_mov r0, d1, d2, a2
	mov_mov d1, d3, d2, d0
	ret [d2,d3,a2,a3],16
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	mov 0,r0
	sub d0,r0,d0
	subc d1,r0,d1
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
	mov d0,r0
	lsr 4,r0
	xor d0,r0
	and 15,r0
	mov 27030,d0
	asr r0,d0
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
	mov d0,a0
	lsr 4,a0
	xor d0,a0
	and 15,a0
	mov 27030,d0
	asr a0,d0
	and 1,d0
	retf [],0
	.size	__paritysi2, .-__paritysi2
	.global __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	movm [d2,d3],(sp)
	mov_mov d0, d2, d0, r2
	mov d1,d0
	asl 31,d0
	lsr 1,r2
	or_mov d0, r2, d1, r3
	and 1431655765,r2
	lsr 1,r3
	and 1431655765,r3
	sub r2,d2
	mov d1,d3
	subc r3,d3
	mov_mov d3, r0, d2, r2
	asl 30,r0
	lsr 2,r2
	or_mov r0, r2, d3, r3
	and 858993459,r2
	and 858993459,d2
	lsr 2,r3
	and 858993459,r3
	and 858993459,d3
	add d2,r2,a0
	addc d3,r3,a1
	mov_mov a1, d1, a0, d0
	asl 28,d1
	mov_lsr a1, r1, 4, d0
	or_lsr d1, d0, 4, r1
	add a0,d0,d2
	addc a1,r1,d3
	and 252645135,d3
	and 252645135,d2
	mov d3,r0
	add d2,r0
	mov r0,r2
	lsr 16,r2
	add r0,r2
	mov r2,d0
	lsr 8,d0
	add r2,d0
	and 127,d0
	retf [d2,d3],8
	.size	__popcountdi2, .-__popcountdi2
	.global __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	mov d0,d1
	lsr 1,d1
	and 1431655765,d1
	sub d1,d0
	mov d0,a0
	lsr 2,a0
	and 858993459,d0
	and 858993459,a0
	add d0,a0
	mov a0,d0
	lsr 4,d0
	add a0,d0
	and 252645135,d0
	mov d0,a1
	lsr 16,a1
	add d0,a1
	mov a1,d0
	lsr 8,d0
	add a1,d0
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
	beq .L1771
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1768:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d1, r5, a2, d1
	lsr 31,d1
	add d1,a2
	asr 1,a2
	cmp_mov 0, a2, d0, r4
	beq .L1767
.L1769:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,a0
	lsr 31,a0
	add a2,a0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1768
	mov a0,a2
	asr 1,a2
	jmp .L1769
.L1767:
	cmp 0,a3
	blt .L1774
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1771:
	mov_mov a3, a2, a3, d1
	lsr 31,d1
	add d1,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	mov d0,r4
	bne .L1769
	jmp .L1767
.L1774:
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
	btst 1,d1
	fmov d0,fs24
	fmov 0x3f800000,fs26
	mov d1,d0
	beq .L1776
.L1778:
	fmul fs24, fs26
.L1776:
	mov d0,a0
	lsr 31,a0
	add a0,d0
	asr 1,d0
	cmp 0,d0
	beq .L1777
.L1779:
	fmul fs24, fs24
	mov d0,a1
	lsr 31,a1
	add d0,a1
	btst 1,d0
	bne .L1778
	mov a1,d0
	asr 1,d0
	jmp .L1779
.L1777:
	cmp 0,d1
	blt .L1784
	fmov fs26,d0
	retf [],0
.L1784:
	fmov 0x3f800000,fs0
	fdiv fs26, fs0, fs26
	fmov fs26,d0
	retf [],0
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov d0,r0
	mov (16,sp),d0
	mov (12,sp),a0
	cmp d0,d1
	bcs .L1789
	bhi .L1790
	cmp a0,r0
	bcs .L1789
	bhi .L1790
	mov 1,d0
	retf [],0
.L1789:
	clr d0
	retf [],0
.L1790:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov d0,r0
	mov (16,sp),d0
	mov (12,sp),a0
	cmp d0,d1
	bcs .L1798
	bhi .L1797
	cmp a0,r0
	bcs .L1798
	mov 1,d0
	bls .L1801
	retf [],0
.L1798:
	mov -1,d0
	retf [],0
.L1801:
	clr d0
	retf [],0
.L1797:
	mov 1,d0
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
	.global __divdf3
	.global __fixsfsi
	.global __floatundisf
	.global __floatundidf
	.global __floatunsisf
	.global __floatunsidf
	.global __gedf2
	.global __ledf2
	.global __muldf3
	.global __nedf2
	.global __adddf3
	.global __floatsidf
	.global __moddi3
	.global __divdi3
	.global __ltdf2
	.global __unordsf2
	.global __subdf3
	.global __gtdf2
	.global __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
