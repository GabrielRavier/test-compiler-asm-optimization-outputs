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
	beq .L22
.L18:
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L31
	add_add -1, a0, 1, d1
	add_cmp 1, d0, 0, a0
	bne .L18
.L22:
	mov 0,a0
	mov a0,d0
	retf [],0
.L31:
	cmp 0,a0
	beq .L22
	mov 1,a0
	add d0,a0
	mov a0,d0
	retf [],0
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a1
	extbu d1
	cmp 0,a1
	beq .L38
.L33:
	movbu (d0),a0
	cmp d1,a0
	beq .L44
	add_add -1, a1, 1, d0
	cmp 0,a1
	bne .L33
.L38:
	mov 0,a0
	mov a0,d0
	retf [],0
.L44:
	cmp_mov 0, a1, d0, a0
	beq .L38
	mov a0,d0
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L50
.L46:
	movbu (d0),a1
	movbu (d1),r0
	cmp r0,a1
	bne .L59
	add_add -1, a0, 1, d0
	add_cmp 1, d1, 0, a0
	bne .L46
.L50:
	clr d0
	retf [],0
.L59:
	cmp 0,a0
	beq .L50
	sub r0,a1,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L61
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L61:
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
.L68:
	cmp d0,a1
	beq .L73
	movbu (a1),r0
	mov_add a1, a0, -1, a1
	cmp d1,r0
	bne .L68
	mov a0,d0
	retf [],0
.L73:
	mov 0,a0
	mov a0,d0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	mov_cmp d0, a0, 0, r0
	beq .L75
	add_mov d0, r0, d0, a1
	setlb
.L76:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L76
.L75:
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
	beq .L84
	setlb
.L85:
	movbu (1,d1),d0
	add_add 1, a0, 1, d1
	extbu d0,a1
	cmp 0,a1
	movbu d0,(a0)
	Lne # loop back to: .L85
.L84:
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
	beq .L92
.L93:
	cmp d1,d0
	beq .L92
	movbu (1,a0),d0
	add_cmp 1, a0, 0, d0
	bne .L93
.L92:
	mov a0,d0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d0,a0
.L103:
	movbu (a0),d0
	cmp d1,d0
	beq .L102
	add_cmp 1, a0, 0, d0
	bne .L103
	mov d0,a0
.L102:
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
	bne .L109
.L108:
	cmp 0,a0
	beq .L109
	movbu (a1,d0),a0
	inc a1
	movbu (a1,d1),r0
	extbu a0
	cmp r0,a0
	beq .L108
.L109:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L116
	setlb
.L117:
	movbu (1,d1),a0
	add_cmp 1, d1, 0, a0
	Lne # loop back to: .L117
.L116:
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L127
	movbu (d0),a0
	cmp 0,a0
	beq .L124
	add -1,r0
	add d0,r0
.L125:
	movbu (d1),a1
	cmp 0,a1
	beq .L124
	cmp r0,d0
	beq .L124
	cmp a0,a1
	bne .L124
	movbu (1,d0),a0
	add_add 1, d1, 1, d0
	cmp 0,a0
	bne .L125
.L124:
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L127:
	mov r0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),r0
	cmp 1,r0
	ble .L139
	and -2,r0
	add d0,r0
	setlb
.L141:
	movbu (1,d0),a1
	movbu (d0),a0
	movbu a1,(d1)
	movbu a0,(1,d1)
	add_add 2, d0, 2, d1
	cmp r0,d0
	Lne # loop back to: .L141
.L139:
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
	bls .L146
	clr d0
.L146:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,d1
	cmp 127,d1
	mov 1,d0
	bls .L150
	clr d0
.L150:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L156
	cmp 9,d0
	mov 1,d1
	beq .L155
	clr d1
.L155:
	mov d1,d0
	retf [],0
.L156:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L165
	cmp 127,d0
	mov 1,d1
	beq .L164
	clr d1
.L164:
	mov d1,d0
	retf [],0
.L165:
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
	bls .L172
	clr d0
.L172:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	cmp 93,d1
	mov 1,d0
	bls .L176
	clr d0
.L176:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L180
	clr d0
.L180:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	cmp 94,d1
	mov 1,d0
	bls .L184
	clr d0
.L184:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L190
	add -9,d0
	cmp_mov 4, d0, 1, d1
	bhi .L193
	mov d1,d0
	retf [],0
.L193:
	clr d1
	mov d1,d0
	retf [],0
.L190:
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
	bls .L195
	clr d0
.L195:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L203
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L206
.L203:
	mov 1,d0
	retf [],0
.L206:
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L203
	add -65529,d0
	cmp_mov 2, d0, 1, d1
	bls .L200
	clr d1
.L200:
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
	bls .L208
	clr d0
.L208:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L221
	cmp 8231,d0
	bls .L217
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L217
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L217
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L218
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L217:
	mov 1,d0
	retf [],0
.L221:
	inc d0
	mov d0,d1
	and 127,d1
	cmp 32,d1
	mov 1,d0
	bls .L218
	retf [],0
.L218:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L225
	or 32,d0
	mov -97,d1
	add d0,d1
	cmp_mov 5, d1, 1, d0
	bhi .L228
	retf [],0
.L225:
	mov 1,d0
	retf [],0
.L228:
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
	bne .L234
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp_mov 0, d0, d0, r4
	bne .L235
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L238
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L238:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L234:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L235:
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
	bne .L244
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d0, d2
	bne .L245
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L248
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
	ret [d2,d3,a2],24
.L248:
	mov d2,d0
	ret [d2,d3,a2],24
.L244:
	mov d3,d0
	ret [d2,d3,a2],24
.L245:
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
	bne .L257
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L258
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L253
	cmp 0,d0
	bne .L259
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L253:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L260
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L264:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L260:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L264
.L259:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L257:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L258:
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
	bne .L273
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L265
	mov d3,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L267
	cmp 0,d0
	beq .L276
.L273:
	mov d3,d0
.L265:
	ret [d2,d3],20
.L267:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L273
.L276:
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
	bne .L285
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L286
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L281
	cmp 0,d0
	bne .L287
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L281:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L288
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L292:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L288:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L292
.L287:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L285:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L286:
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
	bne .L299
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L300
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L295
	cmp 0,d0
	bne .L301
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L295:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L302
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L306:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L302:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L306
.L301:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L299:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L300:
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
	bne .L313
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d3, d0
	bne .L307
	mov d2,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L309
	cmp 0,d0
	beq .L313
.L315:
	mov d3,d0
.L307:
	ret [d2,d3],20
.L309:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L315
.L313:
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
	bne .L326
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L327
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L322
	cmp 0,d0
	bne .L328
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L322:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L329
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L333:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L329:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L333
.L328:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L326:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L327:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L335
	mov +digits,a1
	setlb
.L336:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),a0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu a0,(-1,d1)
	Lne # loop back to: .L336
.L335:
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
	beq .L353
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L345
	mov d0,(4,d1)
.L345:
	retf [],0
.L353:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L355
	mov (4,d0),a0
	mov a0,(4,d1)
.L355:
	mov (4,d0),d1
	cmp 0,d1
	beq .L354
	mov (d0),d0
	mov d0,(d1)
.L354:
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
	beq .L366
	clr r7
	mov d1,d2
.L368:
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp_mov 0, d0, d2, d3
	beq .L365
	add_add 1, r7, r4, d2
	cmp r7,a2
	bne .L368
.L366:
	mul r4,a2,d0,d3
	mov (60,sp),a0
	add_add 1, a2, r6, d3
	cmp 0,r4
	mov a2,(a0)
	beq .L365
	mov r4,(12,sp)
	mov_mov a3, d1, d3, d0
	call +memmove,[],0
.L365:
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
	beq .L383
	clr d3
	mov d1,d2
.L385:
	mov_mov d2, d1, a2, d0
	mov r4,a0
	calls (a0)
	cmp_mov 0, d0, d2, r6
	beq .L382
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L385
.L383:
	clr r6
.L382:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L399
	retf [],0
.L399:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L401:
	movbu (d1),a0
	cmp 32,a0
	beq .L404
	mov -9,d0
	add a0,d0
	cmp 4,d0
	bls .L404
	clr d0
	cmp 43,a0
	beq .L411
	cmp 45,a0
	beq .L419
	movbu (d1),a0
	mov -48,a1
	add a0,a1
	cmp 9,a1
	mov d0,r1
	bhi .L408
.L407:
	setlb
.L421:
	mov -48,r0
	add_add 1, d1, a0, r0
	movbu (d1),a0
	mul 10,d0
	mov -48,a1
	sub_add r0, d0, a0, a1
	cmp 9,a1
	Lls # loop back to: .L421
.L408:
	cmp 0,r1
	bne .L400
	not d0
	inc d0
.L400:
	rets
.L404:
	inc d1
	jmp .L401
.L419:
	mov_add 1, r1, 1, d1
.L420:
	movbu (d1),a0
	mov -48,a1
	add a0,a1
	cmp 9,a1
	bls .L407
	jmp .L408
.L411:
	mov_add d0, r1, 1, d1
	jmp .L420
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
.L425:
	movbu (d0),d1
	cmp 32,d1
	beq .L428
	mov -9,d2
	add d1,d2
	cmp 4,d2
	bls .L428
	cmp 43,d1
	mov 0,a3
	beq .L429
	cmp 45,d1
	beq .L444
	movbu (d0),d1
	mov -48,d2
	clr r0
	add d1,d2
	cmp 9,d2
	bhi .L445
.L435:
	mov 10,d3
	mov r0,r1
	setlb
.L431:
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
	Lls # loop back to: .L431
.L432:
	cmp 0,a3
	bne .L424
	sub r0,a3,r0
	subc r1,a3,r1
.L424:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L428:
	inc d0
	jmp .L425
.L444:
	mov 1,a3
.L429:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	clr r0
	cmp 9,d2
	bls .L435
.L445:
	mov r0,r1
	jmp .L432
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
.L456:
	cmp 0,d2
	beq .L447
.L459:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	cmp 0,d0
	blt .L451
	ble .L446
	add -1,d2
	add a3,d3,a2
	sub r6,d2
	cmp 0,d2
	bne .L459
.L447:
	clr d3
.L446:
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],44
.L451:
	mov r6,d2
	jmp .L456
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
	beq .L461
.L464:
	mov r6,d2
	asr 1,d2
	mul a2,d2
	mov r4,(12,sp)
	add_mov d3, d2, a3, d0
	mov_mov d2, d1, r5, a0
	calls (a0)
	cmp 0,d0
	beq .L460
	ble .L463
	add a2,d2,d3
	add -1,r6
.L463:
	asr 1,r6
	cmp 0,r6
	bne .L464
.L461:
	clr d2
.L460:
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
	blt .L481
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L481:
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
	blt .L488
	retf [],0
.L488:
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
	blt .L496
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L496:
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
	beq .L505
.L500:
	cmp a0,d1
	beq .L511
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L500
.L505:
	mov 0,a0
	mov a0,d0
	retf [],0
.L511:
	cmp_mov 0, d1, d0, a0
	beq .L505
	mov a0,d0
	retf [],0
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d1),r0
	mov (d0),a1
	add_mov -4, d1, 4, a0
	cmp r0,a1
	bne .L514
.L513:
	cmp 0,a1
	beq .L514
	cmp 0,r0
	beq .L514
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L513
.L514:
	cmp r0,a1
	blt .L519
	mov 1,d0
	ble .L526
	retf [],0
.L519:
	mov -1,d0
	retf [],0
.L526:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L528:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L528
	mov a0,d0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L533
	setlb
.L534:
	mov (4,d1),a0
	add_cmp 4, d1, 0, a0
	Lne # loop back to: .L534
.L533:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L545
.L540:
	mov (d0),a1
	mov (d1),r0
	cmp r0,a1
	bne .L541
	cmp 0,a1
	beq .L541
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L540
.L545:
	clr d0
	retf [],0
.L541:
	cmp 0,a0
	beq .L545
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L546
	mov 1,d0
	ble .L545
	retf [],0
.L546:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a1
	cmp 0,a1
	beq .L561
.L556:
	mov (d0),a0
	cmp d1,a0
	beq .L567
	add_add -1, a1, 4, d0
	cmp 0,a1
	bne .L556
.L561:
	mov 0,a0
	mov a0,d0
	retf [],0
.L567:
	cmp_mov 0, a1, d0, a0
	beq .L561
	mov a0,d0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L574
.L569:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L584
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L569
.L574:
	clr d0
	retf [],0
.L584:
	cmp 0,a0
	beq .L574
	cmp a1,r0
	blt .L575
	mov 1,d0
	ble .L574
	retf [],0
.L575:
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L586
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L586:
	mov_mov a1, d0, a1, a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L593
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L607
	cmp 0,d0
	beq .L593
	asl2 a1
	setlb
.L596:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L596
.L593:
	mov a0,d0
	retf [],0
.L607:
	clr r0
	cmp r0,d0
	beq .L593
.L595:
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	beq .L593
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	bne .L595
	jmp .L593
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L609
	mov d0,r0
	setlb
.L610:
	add -1,a1
	cmp -1,a1
	mov d1,(r0+)
	Lne # loop back to: .L610
.L609:
	mov a0,d0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L618
	cmp 0,a0
	beq .L617
	add_add -1, d0, -1, d1
	setlb
.L620:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L620
	retf [],0
.L618:
	beq .L617
	cmp 0,a0
	beq .L617
	mov 0,a1
	setlb
.L621:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	Lne # loop back to: .L621
.L617:
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
	beq .L633
	clr d0
	asl a0,r2,d1
.L634:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L635
	clr r0
	mov r0,r1
	lsr a0,r3,r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L635:
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
.L633:
	mov_mov r2, a1, a0, d2
	lsr 1,a1
	not d2
	lsr d2,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L634
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2],(sp)
	mov (16,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L640
	clr d0
	mov d0,d1
	lsr a0,r3,d0
.L641:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L642
	asl a0,r2,r1
	clr r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L642:
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
.L640:
	mov_mov d1, a1, a0, d2
	add a1,a1
	not d2
	asl d2,a1
	lsr a0,r2,d0
	or_lsr a1, d0, a0, d1
	jmp .L641
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
.L671:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L675
	cmp 32,d1
	bne .L671
	mov a0,d0
	retf [],0
.L675:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L676
	and 1,d0
	bne .L676
	mov 1,d0
	setlb
.L678:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L678
	retf [],0
.L676:
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
	blt .L687
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L690
	mov d2,d0
.L684:
	ret [d2],16
.L687:
	mov 1,d0
	ret [d2],16
.L690:
	clr d2
	mov d2,d0
	jmp .L684
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
	blt .L694
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L697
	mov d2,d0
.L691:
	ret [d2,d3,a2],32
.L694:
	mov 1,d0
	ret [d2,d3,a2],32
.L697:
	clr d2
	mov d2,d0
	jmp .L691
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
	blt .L701
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L704
	mov d2,d0
.L698:
	ret [d2,d3,a2],32
.L701:
	mov 1,d0
	ret [d2,d3,a2],32
.L704:
	clr d2
	mov d2,d0
	jmp .L698
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
	bne .L708
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L708
	cmp 0,d2
	blt .L723
	mov 1073741824,d3
.L712:
	btst 1,d2
	beq .L711
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L711:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L708
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L712
.L708:
	mov a2,d0
	ret [d2,d3,a2],24
.L723:
	mov 1056964608,d3
	jmp .L712
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
	bne .L725
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L725
	cmp_mov 0, r4, r5, d2
	blt .L740
	mov 1073741824,d3
.L729:
	btst 1,r4
	beq .L728
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L728:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L725
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L729
.L725:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L740:
	mov 1071644672,d3
	jmp .L729
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
	bne .L742
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L742
	cmp_mov 0, r4, r5, d2
	blt .L757
	mov 1073741824,d3
.L746:
	btst 1,r4
	beq .L745
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L745:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L742
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L746
.L742:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L757:
	mov 1071644672,d3
	jmp .L746
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L759
	add_mov d1, r2, d0, a1
	setlb
.L760:
	movbu (a1),r0
	movbu (d1),r1
	add_add 1, a1, 1, d1
	xor_cmp r1, r0, d1, r2
	movbu r0,(-1,a1)
	Lne # loop back to: .L760
.L759:
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
	beq .L781
	setlb
.L769:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L769
.L781:
	cmp 0,r1
	beq .L776
.L785:
	movbu (d1),r0
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L784
	add_add -1, r1, 1, d1
	add_cmp 1, a1, 0, r1
	bne .L785
.L776:
	movbu r1,(a1)
.L773:
	mov a0,d0
	retf [],0
.L784:
	cmp 0,r1
	bne .L773
	movbu r1,(a1)
	jmp .L773
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L786
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L789
.L786:
	mov a0,d0
	retf [],0
.L789:
	inc a0
	cmp a0,d1
	beq .L786
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L786
	jmp .L789
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L800
.L796:
	mov d1,a1
.L799:
	movbu (a1),r0
	cmp 0,r0
	beq .L804
	add_cmp 1, a1, r1, r0
	bne .L799
	mov a0,d0
	retf [],0
.L804:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L796
.L800:
	mov_mov r1, a0, r1, d0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov 0,a0
.L807:
	movbu (d0),a1
	cmp d1,a1
	beq .L812
	add_cmp 1, d0, 0, a1
	bne .L807
.L813:
	mov a0,d0
	retf [],0
.L812:
	mov_add d0, a0, 1, d0
	cmp 0,a1
	bne .L807
	jmp .L813
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2],(sp)
	movbu (d1),r2
	mov_mov d0, a0, d1, d0
	cmp 0,r2
	beq .L815
	setlb
.L816:
	movbu (1,d0),a1
	add_cmp 1, d0, 0, a1
	Lne # loop back to: .L816
.L815:
	sub d1,d0,d2
	cmp d1,d0
	beq .L817
	add -1,d2
.L823:
	movbu (a0),d0
	cmp r2,d0
	beq .L822
	add_cmp 1, a0, 0, d0
	bne .L823
	mov d0,a0
.L817:
	mov a0,d0
	retf [d2],4
.L822:
	cmp 0,a0
	beq .L817
	cmp_mov 0, r2, r2, r0
	beq .L826
	add d2,a0,r3
	mov_mov d1, a1, a0, d0
.L820:
	movbu (a1),r1
	cmp 0,r1
	beq .L819
	cmp r3,d0
	beq .L819
	cmp r0,r1
	bne .L819
	movbu (1,d0),r0
	add_add 1, a1, 1, d0
	cmp 0,r0
	bne .L820
.L819:
	movbu (a1),d0
	cmp r0,d0
	beq .L817
	inc a0
	jmp .L823
.L826:
	mov d1,a1
	jmp .L819
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	clr r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp r4,d0
	mov (64,sp),a2
	blt .L851
.L841:
	clr r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L844
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L843
.L844:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L851:
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L841
.L843:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, d2, d0
	mov d3,d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2],(sp)
	mov (28,sp),d2
	mov (24,sp),d3
	cmp 0,d2
	beq .L860
	cmp d2,d1
	bcs .L862
	sub d2,d1,r3
	add d0,r3
	cmp r3,d0
	bhi .L862
	movbu (d3),a2
.L859:
	movbu (d0),d1
	mov_add d0, a0, 1, d0
	extbu d1
	cmp a2,d1
	beq .L877
	cmp r3,d0
	bls .L859
.L862:
	mov 0,a0
.L852:
	mov a0,d0
	retf [d2,d3,a2],12
.L877:
	mov_mov 1, a1, -1, d1
	add_add d3, a1, d2, d1
	cmp 1,d2
	beq .L852
	mov d0,r0
	movbu (r0),r2
	movbu (a1),r1
	cmp r1,r2
	bne .L878
.L857:
	add_add -1, d1, 1, r0
	add_cmp 1, a1, 0, d1
	beq .L852
	movbu (r0),r2
	movbu (a1),r1
	cmp r1,r2
	beq .L857
.L878:
	cmp 0,d1
	beq .L852
	cmp r1,r2
	beq .L852
	cmp r3,d0
	bls .L859
	jmp .L862
.L860:
	mov_mov d0, a0, d0, d0
	retf [d2,d3,a2],12
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L880
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L880:
	add d2,a1,a0
	mov a0,d0
	ret [d2],20
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	clr r4
	add -20,sp
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L916
	mov 1072693248,a3
	clr r6
	mov r6,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp r6,d0
	blt .L910
.L917:
	mov 1071644672,r5
	mov r6,a2
.L891:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L891
.L892:
	mov (64,sp),d0
	cmp 0,r4
	mov r6,(d0)
	beq .L896
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L896:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L916:
	mov -2147483648,d1
	mov 1072693248,a3
	add d3,d1
	clr r6
	mov r6,(12,sp)
	mov a3,(16,sp)
	mov_mov d1, d3, d2, d0
	mov d3,d1
	call +__gedf2,[],0
	cmp_mov r6, d0, 1, r4
	bge .L917
.L910:
	mov 1071644672,a2
	mov r6,(12,sp)
	mov a2,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L892
	mov r6,(12,sp)
	mov r6,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L892
	mov r6,a3
.L895:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov a3,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L892
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov a3,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L895
	jmp .L892
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
	beq .L922
	clr r4
	mov r4,r5
	setlb
.L921:
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
	Lne # loop back to: .L921
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],48
.L922:
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
	bcc .L935
	mov 32,d0
	mov 1,a0
.L927:
	cmp 0,d1
	blt .L928
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L928
	add -1,d0
	bne .L927
.L939:
	clr d0
	cmp 0,r0
	bne .L942
.L926:
	retf [],0
.L928:
	cmp 0,a0
	beq .L939
.L935:
	clr d0
.L929:
	cmp d1,a1
	bcs .L932
	or_sub a0, d0, d1, a1
.L932:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L929
	cmp 0,r0
	beq .L926
.L942:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L945
	asl 8,d0
	clr d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L945:
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
	beq .L958
.L954:
	clr d0
	cmp 0,r3
	bne .L959
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L959:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L958:
	cmp a0,d1
	bne .L954
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L963
	clr d0
	setlb
.L962:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L962
	retf [],0
.L963:
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
	bcs .L971
	add r3,d1,a0
	cmp a0,d0
	bls .L983
.L971:
	cmp 0,d2
	beq .L970
	mov_asl 0, a0, 3, d2
	setlb
.L974:
	add a0,d1,r2
	mov (a0,d1),r0
	mov (4,r2),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp a0,d2
	mov r1,(4,r2)
	Lne # loop back to: .L974
.L970:
	cmp a1,r3
	bls .L967
	setlb
.L975:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L975
.L967:
	retf [d2],4
.L983:
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L967
.L972:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L967
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L972
	jmp .L967
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcs .L988
	add r1,d1,a0
	cmp a0,d0
	bls .L1000
.L988:
	cmp 0,r0
	beq .L987
	mov_asl 0, a0, 1, r0
	setlb
.L991:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L991
.L987:
	btst 1,r1
	beq .L984
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L1000:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L1001
	setlb
.L989:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L989
.L984:
	retf [],0
.L1001:
	retf [],0
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	mov (12,sp),r1
	mov_mov r1, a0, r1, r2
	and -4,a0
	cmp_lsr d1, d0, 2, r2
	bcs .L1006
	add r1,d1,a1
	cmp a1,d0
	bls .L1017
.L1006:
	cmp 0,r2
	beq .L1005
	mov_asl 0, a1, 2, r2
	setlb
.L1009:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L1009
.L1005:
	cmp a0,r1
	bls .L1002
	setlb
.L1010:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L1010
	retf [],0
.L1017:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L1018
	setlb
.L1007:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L1007
.L1002:
	retf [],0
.L1018:
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
.L1033:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L1031
	inc d1
	cmp 16,d1
	bne .L1033
.L1031:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	clr d1
	exthu d0
.L1039:
	asr d1,d0,a0
	btst 1,a0
	bne .L1037
	inc d1
	cmp 16,d1
	bne .L1039
.L1037:
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
	bge .L1051
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1051:
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
.L1053:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
	cmp 16,d1
	Lne # loop back to: .L1053
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
.L1058:
	asr d1,d0,a0
	and 1,a0
	add_add 1, d1, a0, a1
	cmp 16,d1
	Lne # loop back to: .L1058
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmp_mov 0, d0, d0, a1
	beq .L1065
	clr d0
	setlb
.L1064:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1064
	retf [],0
.L1065:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1072
	cmp 0,d1
	beq .L1073
	clr d0
	setlb
.L1071:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1071
	retf [],0
.L1072:
	retf [],0
.L1073:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1086
	mov 32,d0
	mov 1,a0
.L1078:
	cmp 0,d1
	blt .L1079
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1079
	add -1,d0
	bne .L1078
.L1090:
	clr d0
	cmp 0,r0
	bne .L1093
.L1077:
	retf [],0
.L1079:
	cmp 0,a0
	beq .L1090
.L1086:
	clr d0
.L1080:
	cmp d1,a1
	bcs .L1083
	or_sub a0, d0, d1, a1
.L1083:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1080
	cmp 0,r0
	beq .L1077
.L1093:
	mov a1,d0
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
	blt .L1097
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1100
	mov d2,d0
.L1094:
	ret [d2,d3],20
.L1100:
	clr d2
	mov d2,d0
	jmp .L1094
.L1097:
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
	blt .L1104
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1107
	mov d2,d0
.L1101:
	ret [d2,d3,a2,a3],36
.L1107:
	clr d2
	mov d2,d0
	jmp .L1101
.L1104:
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
	blt .L1128
	clr r2
.L1113:
	cmp 0,d1
	beq .L1118
	clr d0
	mov 32,a1
.L1115:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_asr r0, a0, 1, d1
	add_asl a0, d0, 1, r0
	cmp 0,d1
	beq .L1114
	add -1,a1
	extbu a1,r1
	cmp 0,r1
	bne .L1115
.L1114:
	cmp 0,r2
	beq .L1112
	not d0
	inc d0
.L1112:
	retf [],0
.L1128:
	not d1
	mov_add 1, r2, 1, d1
	jmp .L1113
.L1118:
	mov d1,d0
	jmp .L1114
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1151
	clr r1
	cmp 0,d1
	blt .L1152
.L1131:
	cmp_mov d1, d0, d0, r0
	bls .L1139
	mov 32,a1
	mov 1,a0
.L1133:
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L1132
	add -1,a1
	bne .L1133
.L1140:
	clr d0
.L1134:
	cmp 0,r1
	beq .L1129
	not d0
	inc d0
.L1129:
	retf [],0
.L1132:
	cmp 0,a0
	beq .L1140
	clr d0
.L1136:
	cmp d1,r0
	bcs .L1135
	or_sub a0, d0, d1, r0
.L1135:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1136
	jmp .L1134
.L1152:
	not d1
	xor 1,r1
	inc d1
	jmp .L1131
.L1151:
	not d0
	add_cmp 1, d0, 0, d1
	mov 1,r1
	bge .L1131
	jmp .L1152
.L1139:
	mov 1,a0
	clr d0
	jmp .L1136
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1176
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1177
.L1155:
	cmp d1,d0
	bls .L1163
	mov 32,a1
	mov 1,a0
.L1157:
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L1173
	add -1,a1
	bne .L1157
.L1158:
	cmp_mov 0, r1, r0, d0
	beq .L1153
	not d0
	inc d0
.L1153:
	retf [],0
.L1163:
	mov 1,a0
.L1168:
	cmp d1,r0
	bcs .L1159
	sub d1,r0
.L1159:
	lsr 1,a0
	lsr 1,d1
.L1173:
	cmp 0,a0
	bne .L1168
	jmp .L1158
.L1177:
	not d1
	inc d1
	jmp .L1155
.L1176:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1155
	jmp .L1177
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov d0,r2
	exthu d1,a0
	exthu d0
	cmp d0,a0
	mov (12,sp),r3
	bcc .L1194
	mov 16,d0
	mov 1,r0
	exthu r2,a1
.L1179:
	exth d1,a0
	cmp 0,a0
	blt .L1180
	add d1,d1
	exthu d1,a0
	cmp_asl a0, a1, 1, r0
	bls .L1180
	add -1,d0
	bne .L1179
	mov d0,r0
.L1191:
	mov r0,d0
.L1182:
	cmp 0,r3
	bne .L1195
	retf [],0
.L1180:
	exthu r0,a0
	cmp 0,a0
	beq .L1191
	clr d0
.L1181:
	exthu r2,r1
	exthu d1,a1
	cmp a1,r1
	bcs .L1184
	or_sub r0, d0, d1, r2
.L1184:
	lsr 1,a0
	cmp_lsr 0, a0, 1, a1
	mov a0,r0
	mov a1,d1
	beq .L1182
	exthu a0
	jmp .L1181
.L1195:
	mov r2,d0
	retf [],0
.L1194:
	mov 1,a0
	mov 1,r0
	clr d0
	jmp .L1181
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1205
	mov 32,d0
	mov 1,a0
.L1197:
	cmp 0,d1
	blt .L1198
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1198
	add -1,d0
	bne .L1197
.L1209:
	clr d0
	cmp 0,r0
	bne .L1212
.L1196:
	retf [],0
.L1198:
	cmp 0,a0
	beq .L1209
.L1205:
	clr d0
.L1199:
	cmp d1,a1
	bcs .L1202
	or_sub a0, d0, d1, a1
.L1202:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1199
	cmp 0,r0
	beq .L1196
.L1212:
	mov a1,d0
	retf [],0
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, a0, d0
	and 32,d0
	beq .L1214
	mov 0,a1
	asl a0,r2,a0
	mov_mov a1, r0, a0, r1
.L1216:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1214:
	cmp 0,a0
	beq .L1217
	clr d0
	sub a0,d0
	lsr d0,r2,d0
	asl a0,d1
	asl a0,r2,a1
	or d1,d0,a0
	mov_mov a1, r0, a0, r1
	jmp .L1216
.L1217:
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
	beq .L1221
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1223:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1221:
	cmp 0,a0
	beq .L1224
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	asr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1223
.L1224:
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
	bls .L1232
	mov 0,a0
.L1232:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	mov 1,d0
	beq .L1233
	clr d0
.L1233:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub_add d0, a1, d0, a0
	lsr a1,d1
	btst 240,d1
	mov 1,d0
	beq .L1234
	clr d0
.L1234:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	btst 12,d1
	mov 1,a0
	beq .L1235
	mov 0,a0
.L1235:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1237
	sub d1,r1,d0
.L1237:
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
	blt .L1253
	bgt .L1254
	cmp a0,r0
	bcs .L1253
	bhi .L1254
	mov 1,d0
	retf [],0
.L1253:
	clr d0
	retf [],0
.L1254:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	blt .L1261
	bgt .L1262
	cmp a0,r0
	bcs .L1261
	bhi .L1262
	mov 1,d0
	add -1,d0
	retf [],0
.L1261:
	clr d0
	add -1,d0
	retf [],0
.L1262:
	mov 2,d0
	add -1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a0
	beq .L1266
	mov 0,a0
.L1266:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	cmp_mov 0, a1, 1, d0
	beq .L1267
	clr d0
.L1267:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	btst 15,d1
	mov 1,d0
	beq .L1268
	clr d0
.L1268:
	asl2 d0
	add a0,d0,a1
	lsr d0,d1
	btst 3,d1
	mov 1,d0
	beq .L1269
	clr d0
.L1269:
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
	beq .L1285
	mov 0,a1
	lsr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1287:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1285:
	cmp 0,a0
	beq .L1288
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	lsr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1287
.L1288:
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
	mov 1072693248,r5
	clr r4
	mov_mov d0, d2, d1, d3
	mov a3,a2
.L1308:
	btst 1,a2
	beq .L1306
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L1306:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L1307
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L1308
.L1307:
	cmp 0,a3
	blt .L1315
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1315:
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
	mov 1065353216,a2
	add -12,sp
	mov_mov d1, a3, d0, d3
	mov d1,d2
.L1319:
	btst 1,d2
	beq .L1317
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1317:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1318
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L1319
.L1318:
	cmp 0,a3
	blt .L1326
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1326:
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
	bcs .L1331
	bhi .L1332
	cmp a0,r0
	bcs .L1331
	bhi .L1332
	mov 1,d0
	retf [],0
.L1331:
	clr d0
	retf [],0
.L1332:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	bcs .L1339
	bhi .L1340
	cmp a0,r0
	bcs .L1339
	bhi .L1340
	mov 1,d0
	add -1,d0
	retf [],0
.L1339:
	clr d0
	add -1,d0
	retf [],0
.L1340:
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
