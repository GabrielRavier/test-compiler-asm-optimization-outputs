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
	mov -1,d0
	add a1,d0
	cmp 6,d0
	bls .L14
	or a0,d1,r0
	and 3,r0
	bne .L14
	mov 1,d0
	add d1,d0
	sub d0,a0,d0
	cmp 2,d0
	bls .L14
	mov a1,r1
	and -4,r1
	setlb
.L8:
	mov (r0,d1),d0
	mov d0,(r0,a0)
	inc4 r0
	cmp r1,r0
	Lne # loop back to: .L8
	add r0,a0,d0
	sub r0,a1,r1
	add_cmp r0, d1, r0, a1
	beq .L3
	movbu (d1),a1
	cmp 1,r1
	movbu a1,(d0)
	beq .L3
	movbu (1,d1),a1
	cmp 2,r1
	movbu a1,(1,d0)
	beq .L3
	movbu (2,d1),d1
	movbu d1,(2,d0)
	mov a0,d0
	retf [],0
.L14:
	clr d0
.L11:
	movbu (d0,d1),r0
	movbu r0,(d0,a0)
	inc d0
	cmp d0,a1
	beq .L3
	movbu (d0,d1),r0
	movbu r0,(d0,a0)
	inc d0
	cmp d0,a1
	bne .L11
	jmp .L3
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	mov (16,sp),a0
	movbu (12,sp),r0
	cmp 0,a0
	beq .L42
.L40:
	movbu (d1),a1
	add_add -1, a0, 1, d1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L51
	add_cmp 1, d0, 0, a0
	bne .L40
.L42:
	mov 0,a0
	mov a0,d0
	retf [],0
.L51:
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
	beq .L52
.L53:
	movbu (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L60
	add_cmp 1, d0, 0, a0
	bne .L53
.L52:
	mov a0,d0
	retf [],0
.L60:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L66
.L62:
	movbu (d0),r0
	movbu (d1),a1
	add_add -1, a0, 1, d0
	cmp a1,r0
	bne .L71
	add_cmp 1, d1, 0, a0
	bne .L62
.L66:
	mov a0,d0
	retf [],0
.L71:
	sub a1,r0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L73
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L73:
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
.L80:
	cmp_mov d0, a1, a1, a0
	beq .L85
	movbu (a0),r0
	add_cmp -1, a1, d1, r0
	bne .L80
	mov a0,d0
	retf [],0
.L85:
	mov 0,a0
	mov a0,d0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L89
	mov a0,(12,sp)
	extbu d1
	call +memset,[],0
	mov a0,a1
.L89:
	mov_mov a1, d0, a1, a0
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
	beq .L93
	setlb
.L94:
	movbu (1,d1),d0
	add_add 1, a0, 1, d1
	extbu d0,a1
	cmp 0,a1
	movbu d0,(a0)
	Lne # loop back to: .L94
.L93:
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
	beq .L101
.L102:
	cmp d1,d0
	beq .L101
	movbu (1,a0),d0
	add_cmp 1, a0, 0, d0
	bne .L102
.L101:
	mov a0,d0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d0,a0
.L112:
	movbu (a0),d0
	cmp d1,d0
	beq .L111
	add_cmp 1, a0, 0, d0
	bne .L112
	mov d0,a0
.L111:
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
	bne .L118
.L117:
	cmp 0,a0
	beq .L118
	movbu (a1,d0),a0
	inc a1
	movbu (a1,d1),r0
	extbu a0
	cmp r0,a0
	beq .L117
.L118:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp 0,d1
	beq .L128
	mov d0,d1
	setlb
.L127:
	movbu (1,d1),a0
	add_cmp 1, d1, 0, a0
	Lne # loop back to: .L127
	sub d0,d1,d0
	retf [],0
.L128:
	mov d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L140
	movbu (d0),a0
	cmp 0,a0
	beq .L144
	movbu (d1),a1
	mov_add 1, r1, -1, r0
	add_add d0, r0, d1, r1
	cmp 0,a1
	beq .L135
.L146:
	cmp r0,d0
	beq .L135
	add_cmp 1, d0, a0, a1
	bne .L135
	movbu (d0),a0
	cmp 0,a0
	beq .L145
	mov r1,d1
	movbu (d1),a1
	mov 1,r1
	add_cmp d1, r1, 0, a1
	bne .L146
.L135:
	sub a1,a0,d0
	retf [],0
.L140:
	mov r0,d0
	retf [],0
.L145:
	movbu (1,d1),a1
	sub a1,a0,d0
	retf [],0
.L144:
	movbu (d1),a1
	sub a1,a0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),r0
	cmp 1,r0
	ble .L147
	and -2,r0
	add d0,r0
	setlb
.L149:
	movbu (1,d0),a1
	movbu (d0),a0
	movbu a1,(d1)
	movbu a0,(1,d1)
	add_add 2, d0, 2, d1
	cmp r0,d0
	Lne # loop back to: .L149
.L147:
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
	bls .L154
	clr d0
.L154:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,d1
	cmp 127,d1
	mov 1,d0
	bls .L158
	clr d0
.L158:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L164
	cmp 9,d0
	mov 1,d1
	beq .L163
	clr d1
.L163:
	mov d1,d0
	retf [],0
.L164:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L173
	cmp 127,d0
	mov 1,d1
	beq .L172
	clr d1
.L172:
	mov d1,d0
	retf [],0
.L173:
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
	bls .L180
	clr d0
.L180:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	cmp 93,d1
	mov 1,d0
	bls .L184
	clr d0
.L184:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L188
	clr d0
.L188:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	cmp 94,d1
	mov 1,d0
	bls .L192
	clr d0
.L192:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L198
	add -9,d0
	cmp_mov 4, d0, 1, d1
	bhi .L201
	mov d1,d0
	retf [],0
.L201:
	clr d1
	mov d1,d0
	retf [],0
.L198:
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
	bls .L203
	clr d0
.L203:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L211
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L214
.L211:
	mov 1,d0
	retf [],0
.L214:
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L211
	add -65529,d0
	cmp_mov 2, d0, 1, d1
	bls .L208
	clr d1
.L208:
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
	bls .L216
	clr d0
.L216:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L229
	cmp 8231,d0
	bls .L225
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L225
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L225
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L226
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L225:
	mov 1,d0
	retf [],0
.L229:
	inc d0
	mov d0,d1
	and 127,d1
	cmp 32,d1
	mov 1,d0
	bls .L226
	retf [],0
.L226:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L233
	or 32,d0
	mov -97,d1
	add d0,d1
	cmp_mov 5, d1, 1, d0
	bhi .L236
	retf [],0
.L233:
	mov 1,d0
	retf [],0
.L236:
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
	movm [d2,d3,a2,a3],(sp)
	add -20,sp
	mov (52,sp),a3
	mov (48,sp),a2
	mov a3,(16,sp)
	mov a2,(12,sp)
	mov_mov d0, d2, d1, d3
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L244
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L244:
	mov 0,a0
	mov_mov a0, a1, a0, d0
	mov a1,d1
	ret [d2,d3,a2,a3],36
	.size	fdim, .-fdim
	.global fdimf
	.type	fdimf, @function
fdimf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L252
	mov_mov d3, d1, d2, d0
	call +__subsf3,[],0
	ret [d2,d3],20
.L252:
	clr d0
	ret [d2,d3],20
	.size	fdimf, .-fdimf
	.global fmax
	.type	fmax, @function
fmax:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	clr r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov (64,sp),a2
	mov_mov d1, d3, d0, d2
	call +__ltdf2,[],0
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a3, d1, d0, r4
	mov a2,d0
	call +__ltdf2,[],0
	mov r4,r5
	lsr 31,r5
	extbu r5
	lsr 31,d0
	cmp d0,r5
	beq .L256
	cmp 0,r4
	blt .L265
	mov_mov d2, r4, d3, r5
.L255:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L256:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp_mov 0, d0, d2, r4
	mov d3,r5
	bge .L255
.L265:
	mov_mov a2, r4, a3, r5
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3,a2],(sp)
	mov d1,a2
	add -12,sp
	clr d1
	mov d0,d2
	call +__ltsf2,[],0
	clr d1
	mov_mov d0, d3, a2, d0
	call +__ltsf2,[],0
	lsr 31,d3
	extbu d3
	lsr 31,d0
	cmp d0,d3
	beq .L269
	clr d1
	mov d2,d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L278
.L268:
	mov d2,d0
	ret [d2,d3,a2],24
.L269:
	mov_mov a2, d1, d2, d0
	call +__gesf2,[],0
	cmp 0,d0
	bge .L268
.L278:
	mov_mov a2, d2, a2, d0
	ret [d2,d3,a2],24
	.size	fmaxf, .-fmaxf
	.global fmaxl
	.type	fmaxl, @function
fmaxl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	clr r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov (64,sp),a2
	mov_mov d1, d3, d0, d2
	call +__ltdf2,[],0
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a3, d1, d0, r4
	mov a2,d0
	call +__ltdf2,[],0
	mov r4,r5
	lsr 31,r5
	extbu r5
	lsr 31,d0
	cmp d0,r5
	beq .L282
	cmp 0,r4
	blt .L291
	mov_mov d2, r4, d3, r5
.L281:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L282:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp_mov 0, d0, d2, r4
	mov d3,r5
	bge .L281
.L291:
	mov_mov a2, r4, a3, r5
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmaxl, .-fmaxl
	.global fmin
	.type	fmin, @function
fmin:
	movm [d2,d3,a2,a3,exreg1],(sp)
	clr r4
	add -20,sp
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov d1,a3
	mov (64,sp),d2
	mov (68,sp),d3
	mov d0,a2
	call +__ltdf2,[],0
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d3, d1, d0, r4
	mov d2,d0
	call +__ltdf2,[],0
	mov r4,r5
	lsr 31,r5
	extbu r5
	lsr 31,d0
	cmp d0,r5
	beq .L295
	cmp 0,r4
	blt .L306
	mov_mov d2, r4, d3, r5
.L294:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L295:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ledf2,[],0
	cmp_mov 0, d0, a2, r4
	mov a3,r5
	ble .L294
	mov_mov d2, r4, d3, r5
	jmp .L294
.L306:
	mov_mov a2, r4, a3, r5
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3,a2],(sp)
	mov d1,a2
	add -12,sp
	clr d1
	mov d0,d2
	call +__ltsf2,[],0
	clr d1
	mov_mov d0, d3, a2, d0
	call +__ltsf2,[],0
	lsr 31,d3
	extbu d3
	lsr 31,d0
	cmp d0,d3
	beq .L308
	clr d1
	mov d2,d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L307
	mov a2,d2
.L307:
	mov d2,d0
	ret [d2,d3,a2],24
.L308:
	mov_mov a2, d1, d2, d0
	call +__lesf2,[],0
	cmp 0,d0
	ble .L307
	mov a2,d2
	jmp .L307
	.size	fminf, .-fminf
	.global fminl
	.type	fminl, @function
fminl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	clr r4
	add -20,sp
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov d1,a3
	mov (64,sp),d2
	mov (68,sp),d3
	mov d0,a2
	call +__ltdf2,[],0
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d3, d1, d0, r4
	mov d2,d0
	call +__ltdf2,[],0
	mov r4,r5
	lsr 31,r5
	extbu r5
	lsr 31,d0
	cmp d0,r5
	beq .L320
	cmp 0,r4
	blt .L331
	mov_mov d2, r4, d3, r5
.L319:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L320:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ledf2,[],0
	cmp_mov 0, d0, a2, r4
	mov a3,r5
	ble .L319
	mov_mov d2, r4, d3, r5
	jmp .L319
.L331:
	mov_mov a2, r4, a3, r5
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L333
	mov +digits,a1
	setlb
.L334:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),a0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu a0,(-1,d1)
	Lne # loop back to: .L334
.L333:
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
	beq .L351
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L343
	mov d0,(4,d1)
.L343:
	retf [],0
.L351:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L353
	mov (4,d0),a0
	mov a0,(4,d1)
.L353:
	mov (4,d0),d0
	cmp 0,d0
	beq .L352
	mov d1,(d0)
.L352:
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
	beq .L364
	clr r7
	mov d1,d2
.L366:
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	add_cmp 1, r7, 0, d0
	mov d2,d3
	beq .L363
	add_cmp r4, d2, r7, a2
	bne .L366
.L364:
	mul r4,a2,d0,d3
	mov (60,sp),a0
	add_add 1, a2, r6, d3
	cmp 0,r4
	mov a2,(a0)
	beq .L363
	mov r4,(12,sp)
	mov_mov a3, d1, d3, d0
	call +memmove,[],0
.L363:
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
	beq .L381
	clr d3
	mov d1,d2
.L383:
	mov_mov d2, d1, a2, d0
	mov r4,a0
	calls (a0)
	add_cmp 1, d3, 0, d0
	mov d2,r6
	beq .L380
	add_cmp r5, d2, d3, a3
	bne .L383
.L381:
	clr r6
.L380:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L397
	retf [],0
.L397:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L405:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L399
	cmp 4,d0
	bls .L399
	cmp 43,a0
	beq .L400
	cmp 45,a0
	bne .L421
	movbu (1,d1),a0
	mov -48,d0
	add_add 1, d1, a0, d0
	cmp 9,d0
	bhi .L410
	mov 1,r2
.L403:
	clr d0
.L407:
	setlb
.L422:
	mov -48,r0
	inc d1
	mov 10,a1
	add a0,r0
	movbu (d1),a0
	mul d0,a1
	mov -48,r1
	sub r0,a1,d0
	add a0,r1
	cmp 9,r1
	Lls # loop back to: .L422
	cmp 0,r2
	bne .L398
	sub a1,r0,d0
	rets
.L399:
	inc d1
	jmp .L405
.L421:
	mov -48,d0
	clr r2
	add a0,d0
	cmp 9,d0
	bls .L403
.L410:
	clr d0
.L398:
	rets
.L400:
	movbu (1,d1),a0
	mov -48,d0
	clr r2
	add_add a0, d0, 1, d1
	cmp 9,d0
	bhi .L410
	clr d0
	jmp .L407
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	mov d0,d1
.L428:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L424
	cmp 4,d0
	bls .L424
	cmp 43,a0
	beq .L425
	cmp 45,a0
	beq .L426
.L443:
	mov -48,d0
	add a0,d0
	cmp 9,d0
	bhi .L435
	clr r2
.L429:
	clr d0
	setlb
.L432:
	mov -48,r0
	inc d1
	mov 10,a1
	add a0,r0
	movbu (d1),a0
	mul d0,a1
	mov -48,r1
	sub r0,a1,d0
	add a0,r1
	cmp 9,r1
	Lls # loop back to: .L432
	cmp 0,r2
	beq .L446
	rets
.L424:
	inc d1
	jmp .L428
.L446:
	sub a1,r0,d0
	rets
.L426:
	movbu (1,d1),a0
	mov 1,r2
	mov -48,d0
	add_add r2, d1, a0, d0
	cmp 9,d0
	bls .L429
.L435:
	clr d0
	rets
.L425:
	movbu (1,d1),a0
	inc d1
	jmp .L443
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3],(sp)
.L454:
	movbu (d0),d1
	mov -9,d2
	add d1,d2
	cmp 32,d1
	beq .L448
	cmp 4,d2
	bls .L448
	cmp 43,d1
	beq .L449
	cmp 45,d1
	beq .L450
	mov -48,d2
	add d1,d2
	cmp 9,d2
	bhi .L459
	mov 0,a3
.L452:
	clr r0
	mov 10,d3
	mov r0,r1
.L456:
	setlb
.L469:
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
	Lls # loop back to: .L469
	cmp 0,a3
	bne .L447
	sub a0,r2,r0
	subc a1,r3,r1
.L447:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L448:
	inc d0
	jmp .L454
.L450:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	bhi .L459
	clr r0
	mov 1,a3
	mov 10,d3
	mov r0,r1
	jmp .L456
.L449:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	mov 0,a3
	bls .L452
	mov_mov a3, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L459:
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
.L483:
	cmp 0,d2
	beq .L471
.L486:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	add -1,d2
	sub_cmp r6, d2, 0, d0
	blt .L475
	add a3,d3,a2
	cmp 0,d0
	bne .L483
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],44
.L475:
	mov r6,d2
	cmp 0,d2
	bne .L486
.L471:
	clr d3
	mov_mov d3, d0, d3, a0
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
	mov (68,sp),r5
	mov (72,sp),r4
	mov_mov d0, a3, d1, d3
	beq .L492
.L488:
	mov d2,r7
	asr 1,r7
	mul r7,a2,d0,r6
	mov r4,(12,sp)
	add_mov d3, r6, a3, d0
	mov_mov r6, d1, r5, a0
	calls (a0)
	add -1,d2
	cmp_asr 0, d0, 1, d2
	beq .L487
	ble .L490
	add a2,r6,d3
	cmp 0,d2
	bne .L488
.L492:
	clr r6
.L487:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],48
.L490:
	cmp_mov 0, r7, r7, d2
	bne .L488
	clr r6
	jmp .L487
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
	blt .L510
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L510:
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
	blt .L517
	retf [],0
.L517:
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
	blt .L525
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L525:
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
	beq .L528
.L529:
	cmp a0,d1
	beq .L536
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L529
.L528:
	mov a0,d0
	retf [],0
.L536:
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
	bne .L539
.L538:
	cmp 0,a1
	beq .L539
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L538
.L539:
	cmp r0,a1
	blt .L544
	mov 1,d0
	ble .L548
	retf [],0
.L544:
	mov -1,d0
	retf [],0
.L548:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L550:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L550
	mov a0,d0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L557
	mov d0,d1
	setlb
.L556:
	mov (4,d1),a0
	add_cmp 4, d1, 0, a0
	Lne # loop back to: .L556
	sub d0,d1,d0
	asr 2,d0
	retf [],0
.L557:
	mov d1,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L568
.L562:
	mov (d0),a1
	mov (d1),r0
	add_cmp -1, a0, r0, a1
	bne .L564
	cmp 0,a1
	beq .L564
	add_add 4, d0, 4, d1
	cmp 0,a0
	bne .L562
.L568:
	mov a0,d0
	retf [],0
.L564:
	mov (d0),a1
	mov (d1),d0
	cmp d0,a1
	blt .L572
	cmp_mov d0, a1, 1, a0
	bgt .L568
	mov 0,a0
	mov a0,d0
	retf [],0
.L572:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L573
.L574:
	mov (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L581
	add_cmp 4, d0, 0, a0
	bne .L574
.L573:
	mov a0,d0
	retf [],0
.L581:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L592
.L583:
	mov (d0),r0
	mov (d1),a1
	add_add -1, a0, 4, d0
	cmp a1,r0
	bne .L595
	add_cmp 4, d1, 0, a0
	bne .L583
.L592:
	clr d0
	retf [],0
.L595:
	bge .L588
	mov -1,d0
.L582:
	retf [],0
.L588:
	mov 1,d0
	bgt .L582
	clr d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L597
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L597:
	mov_mov a1, d0, a1, a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L611
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L620
	cmp 0,d0
	beq .L611
	asl2 a1
	setlb
.L608:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L608
.L611:
	mov a0,d0
	retf [],0
.L620:
	clr r0
	cmp r0,d0
	beq .L611
.L606:
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	beq .L611
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	bne .L606
	jmp .L611
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L622
	mov d0,r0
	setlb
.L623:
	add -1,a1
	cmp -1,a1
	mov d1,(r0+)
	Lne # loop back to: .L623
.L622:
	mov a0,d0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L631
	cmp 0,a0
	beq .L630
	add_add -1, d0, -1, d1
	setlb
.L633:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L633
	retf [],0
.L631:
	bne .L668
.L630:
	retf [],0
.L668:
	cmp 0,a0
	beq .L630
	mov -1,a1
	add a0,a1
	cmp 6,a1
	bls .L643
	or d0,d1,a1
	and 3,a1
	bne .L643
	mov 1,r0
	add d0,r0
	sub r0,d1,r0
	cmp 2,r0
	bls .L643
	mov a0,r1
	and -4,r1
	setlb
.L637:
	mov (a1,d0),r0
	mov r0,(a1,d1)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L637
	sub a1,a0,r0
	add_add a1, d1, a1, d0
	cmp a1,a0
	beq .L630
	movbu (d0),a0
	cmp 1,r0
	movbu a0,(d1)
	beq .L630
	movbu (1,d0),a0
	cmp 2,r0
	movbu a0,(1,d1)
	beq .L630
	movbu (2,d0),d0
	movbu d0,(2,d1)
	retf [],0
.L643:
	mov 0,a1
.L640:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	beq .L630
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	bne .L640
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
	beq .L670
	clr d0
	asl a0,r2,d1
.L671:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L672
	clr r0
	mov r0,r1
	lsr a0,r3,r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L672:
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
.L670:
	mov_mov r2, a1, a0, d2
	lsr 1,a1
	not d2
	lsr d2,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L671
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2],(sp)
	mov (16,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L677
	clr d0
	mov d0,d1
	lsr a0,r3,d0
.L678:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L679
	asl a0,r2,r1
	clr r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L679:
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
.L677:
	mov_mov d1, a1, a0, d2
	add a1,a1
	not d2
	asl d2,a1
	lsr a0,r2,d0
	or_lsr a1, d0, a0, d1
	jmp .L678
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
.L708:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L712
	cmp 32,d1
	bne .L708
	mov a0,d0
	retf [],0
.L712:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L713
	and 1,d0
	bne .L713
	mov 1,d0
	setlb
.L715:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L715
	retf [],0
.L713:
	retf [],0
	.size	libiberty_ffs, .-libiberty_ffs
	.global gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	clr d0
	retf [],0
	.size	gl_isinff, .-gl_isinff
	.global gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	clr d0
	retf [],0
	.size	gl_isinfd, .-gl_isinfd
	.global gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	clr d0
	retf [],0
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
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L730
	cmp 0,d2
	blt .L746
	btst 1,d2
	mov 1073741824,d3
	beq .L733
.L734:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L733:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L730
.L735:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,d1
	lsr 31,d1
	add d2,d1
	btst 1,d2
	mov d0,d3
	bne .L734
	mov d1,d2
	asr 1,d2
	jmp .L735
.L730:
	mov a2,d0
	ret [d2,d3,a2],24
.L746:
	btst 1,d2
	mov 1056964608,d3
	beq .L733
	jmp .L734
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [d2,d3,a2,exreg1],(sp)
	add -20,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, r4, d1, r5
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov r5,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	mov (60,sp),a2
	beq .L748
	clr d2
	cmp 0,a2
	blt .L764
	btst 1,a2
	mov 1073741824,d3
	beq .L751
.L752:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L751:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L748
.L753:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,r0
	lsr 31,r0
	add a2,r0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L752
	mov r0,a2
	asr 1,a2
	jmp .L753
.L748:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,exreg1],48
.L764:
	btst 1,a2
	mov 1071644672,d3
	beq .L751
	jmp .L752
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [d2,d3,a2,exreg1],(sp)
	add -20,sp
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, r6, d1, r7
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, r4, d1, r5
	mov_mov r6, d0, r7, d1
	call +__nedf2,[],0
	cmp 0,d0
	mov (60,sp),a2
	beq .L765
	clr d2
	cmp 0,a2
	blt .L780
	btst 1,a2
	mov 1073741824,d3
	mov_mov r6, r4, r7, r5
	beq .L769
.L770:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L769:
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	beq .L765
.L771:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,r0
	lsr 31,r0
	add a2,r0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L770
	mov r0,a2
	asr 1,a2
	jmp .L771
.L765:
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,exreg1],48
.L780:
	btst 1,a2
	mov 1071644672,d3
	mov_mov r6, r4, r7, r5
	beq .L769
	jmp .L770
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L782
	mov -1,d0
	add r2,d0
	cmp 3,d0
	bls .L783
	or d1,a0,a1
	and 3,a1
	bne .L783
	mov r2,r1
	and -4,r1
	setlb
.L784:
	mov (a1,a0),d0
	mov (a1,d1),r0
	xor d0,r0
	mov r0,(a1,a0)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L784
	add a1,a0,d0
	sub a1,r2,r0
	add_cmp a1, d1, a1, r2
	beq .L782
	movbu (d0),a1
	movbu (d1),r1
	xor_cmp r1, a1, 1, r0
	movbu a1,(d0)
	beq .L782
	movbu (1,d0),r1
	movbu (1,d1),a1
	xor_cmp r1, a1, 2, r0
	movbu a1,(1,d0)
	beq .L782
	movbu (2,d0),a1
	movbu (2,d1),d1
	xor a1,d1
	movbu d1,(2,d0)
.L782:
	mov a0,d0
	retf [],0
.L783:
	add_mov d1, r2, a0, d0
.L786:
	movbu (d0),r0
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r0, a1, d1, r2
	movbu a1,(-1,d0)
	beq .L782
	movbu (d0),r0
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r0, a1, d1, r2
	movbu a1,(-1,d0)
	bne .L786
	jmp .L782
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov d0,a0
	movbu (d0),d0
	mov (12,sp),r1
	cmp_mov 0, d0, a0, a1
	beq .L815
	setlb
.L804:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L804
.L815:
	cmp 0,r1
	beq .L806
.L818:
	movbu (d1),r0
	add_add -1, r1, 1, d1
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L808
	add_cmp 1, a1, 0, r1
	bne .L818
.L806:
	clr d0
	movbu d0,(a1)
.L808:
	mov a0,d0
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L819
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L822
.L819:
	mov a0,d0
	retf [],0
.L822:
	inc a0
	cmp a0,d1
	beq .L819
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L819
	jmp .L822
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L833
.L829:
	mov d1,a1
.L832:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L837
	cmp r1,r0
	bne .L832
	mov a0,d0
	retf [],0
.L837:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L829
.L833:
	mov_mov r1, a0, r1, d0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov 0,a0
.L840:
	movbu (d0),a1
	cmp a1,d1
	beq .L844
	add_cmp 1, d0, 0, a1
	bne .L840
.L845:
	mov a0,d0
	retf [],0
.L844:
	mov_add d0, a0, 1, d0
	cmp 0,a1
	bne .L840
	jmp .L845
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2],(sp)
	movbu (d1),d3
	extbu d3,r3
	cmp 0,r3
	beq .L859
	mov d1,a0
	setlb
.L848:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L848
	sub d1,a0,a2
	cmp d1,a0
	beq .L859
	add -1,a2
	extbu d3
.L856:
	movbu (d0),a0
	cmp r3,a0
	beq .L855
	add_cmp 1, d0, 0, a0
	bne .L856
	mov a0,d0
	retf [d2,d3,a2],12
.L855:
	add a2,d0,d2
	mov_mov d1, r1, d0, a1
	mov d3,r0
.L850:
	cmp d2,a1
	beq .L852
	add_cmp 1, a1, r0, a0
	bne .L853
	movbu (a1),a0
	mov 1,r2
	add_cmp r1, r2, 0, a0
	movbu (1,r1),r0
	beq .L852
	cmp_mov 0, r0, r2, r1
	bne .L850
.L853:
	inc d0
	jmp .L856
.L852:
	cmp r0,a0
	bne .L853
.L859:
	mov_mov d0, a0, d0, d0
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
	blt .L879
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L871
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L870
.L871:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L879:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L871
.L870:
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
	beq .L880
	cmp r1,d1
	bcs .L891
	sub r1,d1
	add d0,d1
	cmp d1,d0
	bhi .L891
	movbu (r3),d2
.L886:
	movbu (a0),d0
	mov 1,r2
	add_cmp a0, r2, d2, d0
	beq .L899
	mov r2,a0
.L882:
	cmp a0,d1
	bcc .L886
.L891:
	mov 0,a0
.L880:
	mov a0,d0
	retf [d2],4
.L899:
	cmp 1,r1
	beq .L880
	mov 1,a1
.L883:
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	bne .L900
.L884:
	cmp r1,a1
	beq .L880
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	beq .L884
.L900:
	cmp r2,d1
	bcs .L891
	movbu (r2),d0
	mov 1,a0
	add_cmp r2, a0, d0, d2
	bne .L882
	mov_mov r2, d0, 1, a1
	mov_mov a0, r2, d0, a0
	jmp .L883
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L902
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L902:
	add d2,a1,a0
	mov a0,d0
	ret [d2],20
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov 0,a2
	add -24,sp
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	cmp a2,d0
	mov a2,(12,sp)
	blt .L934
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L935
	clr r5
	mov 1071644672,r4
	mov 1073741824,a3
	mov a2,(20,sp)
	mov r5,a2
.L917:
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d0, a0, d1, a1
	mov_mov d2, d0, d3, d1
	mov_mov d2, r6, d3, r7
	mov_mov a0, d2, a1, d3
	call +__gedf2,[],0
	add_cmp 1, r5, 0, d0
	bge .L917
.L918:
	mov (68,sp),d0
	mov d2,a0
	mov r5,(d0)
	mov (20,sp),d0
	cmp 0,d0
	beq .L924
	mov -2147483648,a1
	add_mov d3, a1, a0, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],56
.L935:
	mov 1071644672,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L930
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L923
.L930:
	mov (68,sp),d0
	mov_mov d2, a0, d3, a1
	mov a2,(d0)
	mov_mov a1, d1, a0, d0
	ret [d2,d3,a2,a3,exreg1],56
.L934:
	mov -1074790400,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ledf2,[],0
	mov -2147483648,r7
	add_cmp d3, r7, a2, d0
	mov d2,r6
	bgt .L936
	mov 1,d0
	clr r5
	mov d0,(20,sp)
	mov 1071644672,r4
	mov 1073741824,a3
	mov_mov r7, d3, r5, a2
	jmp .L917
.L924:
	mov_mov d3, a1, a0, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],56
.L936:
	mov -1075838976,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L930
	mov 1,d0
	clr r5
	mov d0,(20,sp)
	mov 1070596096,a2
	mov_mov r6, d2, r7, d3
	mov r5,a3
.L919:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov a3,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, a0, d1, a1
	mov_mov d2, d0, d3, d1
	mov_mov d2, r6, d3, r7
	mov_mov a0, d2, a1, d3
	call +__ltdf2,[],0
	add_cmp -1, r5, 0, d0
	bge .L918
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov a3,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, a0, d1, a1
	mov_mov d2, d0, d3, d1
	mov_mov d2, r6, d3, r7
	mov_mov a0, d2, a1, d3
	call +__ltdf2,[],0
	add_cmp -1, r5, 0, d0
	blt .L919
	jmp .L918
.L923:
	mov_mov d2, r6, d3, r7
	clr r5
	mov a2,(20,sp)
	mov r6,d2
	mov 1070596096,a2
	mov_mov r7, d3, r5, a3
	jmp .L919
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
	beq .L941
	clr r4
	mov r4,r5
	setlb
.L940:
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
	Lne # loop back to: .L940
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],48
.L941:
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
	bcc .L947
	mov 32,d0
	mov 1,a0
.L946:
	add_cmp -1, d0, 0, d1
	blt .L947
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L948
	cmp 0,d0
	bne .L946
	cmp 0,r0
	bne .L963
.L945:
	retf [],0
.L948:
	cmp 0,a0
	beq .L955
.L947:
	clr d0
.L952:
	cmp d1,a1
	bcs .L951
	or_sub a0, d0, d1, a1
.L951:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L952
	cmp 0,r0
	beq .L945
.L963:
	mov a1,d0
	retf [],0
.L955:
	cmp_mov 0, r0, a0, d0
	beq .L945
	jmp .L963
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L966
	asl 8,d0
	clr d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L966:
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
	beq .L979
.L975:
	clr d0
	cmp 0,r3
	bne .L980
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L980:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L979:
	cmp a0,d1
	bne .L975
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L984
	clr d0
	setlb
.L983:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L983
	retf [],0
.L984:
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2,d3],(sp)
	mov (20,sp),r3
	mov_mov r3, a1, r3, d2
	and -8,a1
	cmp_lsr d1, d0, 3, d2
	bcs .L989
	add r3,d1,a0
	cmp a0,d0
	bls .L1018
.L989:
	cmp 0,d2
	beq .L992
	mov_asl 0, a0, 3, d2
	setlb
.L993:
	add a0,d1,r2
	mov (a0,d1),r0
	mov (4,r2),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp d2,a0
	mov r1,(4,r2)
	Lne # loop back to: .L993
	cmp a1,r3
	bls .L988
	sub a1,r3,d3
	mov -1,a0
	add d3,a0
	cmp 6,a0
	bls .L1000
	mov 1,a0
	add a1,d0,d2
	add a1,a0
	add d1,a0
	sub a0,d2,a0
	add a1,d1,r2
	cmp 2,a0
	bls .L1000
	or d2,r2,a0
	and 3,a0
	bne .L1000
	mov d3,r1
	and -4,r1
	setlb
.L998:
	mov (a0,r2),r0
	mov r0,(a0,d2)
	inc4 a0
	cmp a0,r1
	Lne # loop back to: .L998
	add_cmp r1, a1, d3, r1
	beq .L988
	movbu (a1,d1),d2
	mov 1,a0
	add a1,a0
	cmp a0,r3
	movbu d2,(a1,d0)
	bls .L988
	movbu (a0,d1),d2
	add 2,a1
	cmp a1,r3
	movbu d2,(a0,d0)
	bls .L988
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L988:
	retf [d2,d3],8
.L992:
	cmp 0,r3
	beq .L988
.L1000:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	beq .L988
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	bne .L1000
	jmp .L988
.L1018:
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L988
.L990:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L988
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L990
	jmp .L988
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r0
	mov r0,r2
	cmp_lsr d1, d0, 1, r2
	bcs .L1020
	add r0,d1,a0
	cmp a0,d0
	bls .L1050
.L1020:
	cmp 0,r2
	beq .L1023
	mov -1,a0
	add r2,a0
	cmp 8,a0
	bls .L1024
	or d0,d1,a0
	and 3,a0
	bne .L1024
	mov 2,a1
	add d1,a1
	xor d0,a1
	clr r1
	sub a1,r1
	or r1,a1
	bnc .L1024
	mov_mov r0, r1, r0, r3
	and -4,r1
	lsr 2,r3
	setlb
.L1026:
	mov (a0,d1),a1
	mov a1,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1026
	mov r3,a0
	add a0,a0
	cmp a0,r2
	beq .L1023
	asl2 r3
	movhu (r3,d1),a0
	movhu a0,(r3,d0)
.L1023:
	btst 1,r0
	beq .L1019
	add -1,r0
	movbu (r0,d1),d1
	movbu d1,(r0,d0)
	retf [],0
.L1050:
	mov -1,a0
	add_cmp r0, a0, 0, r0
	beq .L1051
	setlb
.L1021:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L1021
.L1019:
	retf [],0
.L1024:
	mov_asl 0, a0, 1, r2
.L1028:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp r2,a0
	beq .L1023
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp r2,a0
	bne .L1028
	jmp .L1023
.L1051:
	retf [],0
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	movm [d2,d3],(sp)
	mov (20,sp),r2
	mov_mov r2, a1, r2, r1
	and -4,a1
	cmp_lsr d1, d0, 2, r1
	bcs .L1053
	add r2,d1,a0
	cmp a0,d0
	bls .L1082
.L1053:
	cmp 0,r1
	beq .L1056
	mov_asl 0, a0, 2, r1
	setlb
.L1057:
	mov (a0,d1),r0
	mov r0,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1057
	cmp a1,r2
	bls .L1052
	sub a1,r2,d3
	mov -1,a0
	add d3,a0
	cmp 6,a0
	bls .L1064
	mov 1,a0
	add a1,d0,r1
	add a1,a0
	add d1,a0
	sub a0,r1,a0
	add a1,d1,d2
	cmp 2,a0
	bls .L1064
	or r1,d2,a0
	and 3,a0
	bne .L1064
	mov d3,r3
	and -4,r3
	setlb
.L1062:
	mov (a0,d2),r0
	mov r0,(a0,r1)
	inc4 a0
	cmp a0,r3
	Lne # loop back to: .L1062
	add_cmp r3, a1, d3, r3
	beq .L1052
	movbu (a1,d1),d2
	mov 1,a0
	add a1,a0
	cmp a0,r2
	movbu d2,(a1,d0)
	bls .L1052
	movbu (a0,d1),d2
	add 2,a1
	cmp a1,r2
	movbu d2,(a0,d0)
	bls .L1052
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1052:
	retf [d2,d3],8
.L1056:
	cmp 0,r2
	beq .L1052
.L1064:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r2
	beq .L1052
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r2
	bne .L1064
	jmp .L1052
.L1082:
	mov -1,a0
	add_cmp r2, a0, 0, r2
	beq .L1052
.L1054:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L1052
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L1054
	jmp .L1052
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
	exthu d0,d1
	mov d1,d0
	asr 15,d0
	cmp 0,d0
	bne .L1098
	mov d1,d0
	asr 14,d0
	cmp 0,d0
	bne .L1095
	mov d1,d0
	asr 13,d0
	cmp 0,d0
	bne .L1099
	mov d1,d0
	asr 12,d0
	cmp 0,d0
	bne .L1100
	mov d1,d0
	asr 11,d0
	cmp 0,d0
	bne .L1101
	mov d1,d0
	asr 10,d0
	cmp 0,d0
	bne .L1102
	mov d1,d0
	asr 9,d0
	cmp 0,d0
	bne .L1103
	mov d1,d0
	asr 8,d0
	cmp 0,d0
	bne .L1104
	mov d1,d0
	asr 7,d0
	cmp 0,d0
	bne .L1105
	mov d1,d0
	asr 6,d0
	cmp 0,d0
	bne .L1106
	mov d1,d0
	asr 5,d0
	cmp 0,d0
	bne .L1107
	mov d1,d0
	asr 4,d0
	cmp 0,d0
	bne .L1108
	mov d1,d0
	asr 3,d0
	cmp 0,d0
	bne .L1109
	mov d1,d0
	asr 2,d0
	cmp 0,d0
	bne .L1110
	mov d1,d0
	asr 1,d0
	cmp 0,d0
	bne .L1111
	cmp 0,d1
	mov 16,d0
	bne .L1116
.L1095:
	retf [],0
.L1098:
	clr d0
	retf [],0
.L1109:
	mov 12,d0
	retf [],0
.L1116:
	mov 15,d0
	retf [],0
.L1099:
	mov 2,d0
	retf [],0
.L1100:
	mov 3,d0
	retf [],0
.L1101:
	mov 4,d0
	retf [],0
.L1102:
	mov 5,d0
	retf [],0
.L1103:
	mov 6,d0
	retf [],0
.L1104:
	mov 7,d0
	retf [],0
.L1105:
	mov 8,d0
	retf [],0
.L1106:
	mov 9,d0
	retf [],0
.L1107:
	mov 10,d0
	retf [],0
.L1108:
	mov 11,d0
	retf [],0
.L1110:
	mov 13,d0
	retf [],0
.L1111:
	mov 14,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	btst 1,d0
	bne .L1120
	mov d0,d1
	and 2,d1
	bne .L1121
	mov d0,d1
	and 4,d1
	bne .L1122
	mov d0,d1
	and 8,d1
	bne .L1123
	mov d0,d1
	and 16,d1
	bne .L1124
	mov d0,d1
	and 32,d1
	bne .L1125
	mov d0,d1
	and 64,d1
	bne .L1126
	mov d0,d1
	and 128,d1
	bne .L1127
	mov d0,d1
	and 256,d1
	bne .L1128
	mov d0,d1
	and 512,d1
	bne .L1129
	mov d0,d1
	and 1024,d1
	bne .L1130
	mov d0,d1
	and 2048,d1
	bne .L1131
	mov d0,d1
	and 4096,d1
	bne .L1132
	mov d0,d1
	and 8192,d1
	bne .L1133
	mov d0,d1
	and 16384,d1
	bne .L1134
	exthu d0,d1
	asr 15,d1
	cmp 0,d1
	mov 16,d0
	bne .L1139
	retf [],0
.L1120:
	clr d0
	retf [],0
.L1121:
	mov 1,d0
	retf [],0
.L1132:
	mov 12,d0
	retf [],0
.L1139:
	mov 15,d0
	retf [],0
.L1122:
	mov 2,d0
	retf [],0
.L1123:
	mov 3,d0
	retf [],0
.L1124:
	mov 4,d0
	retf [],0
.L1125:
	mov 5,d0
	retf [],0
.L1126:
	mov 6,d0
	retf [],0
.L1127:
	mov 7,d0
	retf [],0
.L1128:
	mov 8,d0
	retf [],0
.L1129:
	mov 9,d0
	retf [],0
.L1130:
	mov 10,d0
	retf [],0
.L1131:
	mov 11,d0
	retf [],0
.L1133:
	mov 13,d0
	retf [],0
.L1134:
	mov 14,d0
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
	bge .L1148
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1148:
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
	exthu d0,d1
	mov_mov d0, a0, d1, d0
	asr 1,d0
	and 1,a0
	and 1,d0
	mov d1,a1
	add_asr a0, d0, 2, a1
	mov a1,a0
	and 1,a0
	mov_add d1, a1, a0, d0
	mov_asr d1, a0, 3, a1
	and 1,a1
	asr 4,a0
	and 1,a0
	add_mov a1, d0, d1, a1
	add_asr a0, d0, 5, a1
	mov d1,a0
	and 1,a1
	asr 6,a0
	and 1,a0
	add_mov a1, d0, d1, a1
	add_asr a0, d0, 7, a1
	mov d1,a0
	and 1,a1
	asr 8,a0
	and 1,a0
	add_mov a1, d0, d1, a1
	add a0,d0
	asr 9,a1
	mov d1,a0
	and 1,a1
	asr 10,a0
	and 1,a0
	add_mov a1, d0, d1, a1
	add a0,d0
	asr 11,a1
	and 1,a1
	mov d1,a0
	asr 12,a0
	and 1,a0
	add_mov a1, d0, d1, a1
	add a0,d0
	asr 13,a1
	mov d1,a0
	and 1,a1
	asr 14,a0
	and 1,a0
	add a1,d0
	add a0,d0
	asr 15,d1
	add d1,d0
	and 1,d0
	retf [],0
	.size	__parityhi2, .-__parityhi2
	.global __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	exthu d0,a0
	mov a0,d1
	asr 1,d1
	and 1,d0
	and 1,d1
	mov a0,a1
	add_asr d0, d1, 2, a1
	mov a1,d0
	and 1,d0
	mov_add a0, a1, d0, d1
	mov_asr a0, d0, 3, a1
	and 1,a1
	asr 4,d0
	and 1,d0
	add_mov a1, d1, a0, a1
	add_asr d0, d1, 5, a1
	mov a0,d0
	and 1,a1
	asr 6,d0
	and 1,d0
	add_mov a1, d1, a0, a1
	add_asr d0, d1, 7, a1
	mov a0,d0
	and 1,a1
	asr 8,d0
	and 1,d0
	add_mov a1, d1, a0, a1
	add d0,d1
	asr 9,a1
	mov a0,d0
	and 1,a1
	asr 10,d0
	and 1,d0
	add_mov a1, d1, a0, a1
	add d0,d1
	asr 11,a1
	and 1,a1
	mov a0,d0
	asr 12,d0
	and 1,d0
	add_mov a1, d1, a0, a1
	add d0,d1
	asr 13,a1
	mov a0,d0
	and 1,a1
	asr 14,d0
	and 1,d0
	add a1,d1
	add d1,d0
	asr 15,a0
	add a0,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmp_mov 0, d0, d0, a1
	beq .L1156
	clr d0
	setlb
.L1155:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1155
	retf [],0
.L1156:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1163
	cmp 0,d1
	beq .L1164
	clr d0
	setlb
.L1162:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1162
	retf [],0
.L1163:
	retf [],0
.L1164:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
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
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L1190
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1193
	mov d2,d0
.L1187:
	ret [d2,d3],20
.L1193:
	clr d2
	mov d2,d0
	jmp .L1187
.L1190:
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
	blt .L1197
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1200
	mov d2,d0
.L1194:
	ret [d2,d3,a2,a3],36
.L1200:
	clr d2
	mov d2,d0
	jmp .L1194
.L1197:
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
	blt .L1221
	beq .L1211
	clr r2
	clr d0
	mov 32,a1
.L1210:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1209
	cmp 0,r1
	bne .L1210
.L1209:
	cmp 0,r2
	beq .L1205
	not d0
	inc d0
	retf [],0
.L1211:
	mov d1,d0
.L1205:
	retf [],0
.L1221:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1210
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1242
	clr r1
	cmp_mov 0, d1, 1, a0
	blt .L1243
.L1224:
	cmp_mov d1, d0, 1, a0
	mov d0,r0
	bls .L1226
	mov 32,a1
	mov 1,a0
.L1225:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1229
	cmp 0,a1
	bne .L1225
.L1229:
	cmp_mov 0, a0, a0, d0
	beq .L1227
.L1226:
	clr d0
.L1231:
	cmp d1,r0
	bcs .L1230
	or_sub a0, d0, d1, r0
.L1230:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1231
.L1227:
	cmp 0,r1
	beq .L1222
	not d0
	inc d0
.L1222:
	retf [],0
.L1243:
	not d1
	add_mov 1, d1, a0, r1
	jmp .L1224
.L1242:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 0, a0, 1, r1
	bge .L1224
	jmp .L1243
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1264
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1265
.L1246:
	cmp_mov d1, d0, 1, a0
	bls .L1253
	mov 32,a1
	mov 1,a0
.L1247:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1251
	cmp 0,a1
	bne .L1247
.L1251:
	cmp 0,a0
	beq .L1249
.L1253:
	cmp_lsr d1, r0, 1, a0
	bcs .L1252
	sub d1,r0
.L1252:
	cmp_lsr 0, a0, 1, d1
	bne .L1253
	mov r0,d0
.L1249:
	cmp 0,r1
	beq .L1244
	not d0
	inc d0
.L1244:
	retf [],0
.L1265:
	not d1
	inc d1
	jmp .L1246
.L1264:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1246
	jmp .L1265
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movm [d2],(sp)
	mov d0,r1
	exthu r1,r2
	exthu d1,d0
	cmp r2,d0
	mov (16,sp),r0
	bcc .L1381
	exth d1,d0
	cmp 0,d0
	blt .L1269
	mov d1,d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1270
	exth d0,a0
	cmp 0,a0
	blt .L1271
	mov d1,d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1272
	exth d0,r3
	cmp 0,r3
	blt .L1273
	mov d1,d0
	asl2 d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1274
	exth d0,r3
	cmp 0,r3
	blt .L1275
	mov d1,d0
	asl2 d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1276
	exth d0,r3
	cmp 0,r3
	blt .L1277
	mov d1,d0
	asl 5,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1278
	exth d0,r3
	cmp 0,r3
	blt .L1279
	mov d1,d0
	asl 6,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1280
	exth d0,r3
	cmp 0,r3
	blt .L1281
	mov d1,d0
	asl 7,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1282
	exth d0,r3
	cmp 0,r3
	blt .L1283
	mov d1,d0
	asl 8,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1284
	exth d0,r3
	cmp 0,r3
	blt .L1285
	mov d1,d0
	asl 9,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1286
	exth d0,r3
	cmp 0,r3
	blt .L1287
	mov d1,d0
	asl 10,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1288
	exth d0,d2
	cmp 0,d2
	blt .L1289
	mov d1,d0
	asl 11,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1290
	exth d0,d2
	cmp 0,d2
	blt .L1291
	mov d1,d0
	asl 12,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1292
	exth d0,d2
	cmp 0,d2
	blt .L1293
	mov d1,d0
	asl 13,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1294
	exth d0,d2
	cmp 0,d2
	blt .L1295
	mov d1,d0
	asl 14,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1296
	exth d0,d2
	cmp 0,d2
	blt .L1297
	asl 15,d1
	exthu d1,a0
	cmp a0,r2
	bls .L1298
	cmp 0,a0
	mov r1,d0
	bne .L1382
.L1299:
	cmp 0,r0
	bne .L1266
	mov d1,d0
.L1266:
	retf [d2],4
.L1286:
	bcs .L1332
	sub d0,r1,d0
	mov 512,r2
	mov 512,d1
	exthu a1
.L1301:
	mov_mov r2, r1, a1, a0
	lsr 2,r1
	cmp_lsr 0, r1, 2, a0
	mov r1,r3
	beq .L1299
	exthu d0,r1
	cmp a0,r1
	bcs .L1302
	or_sub r3, d1, a0, d0
.L1302:
	mov_mov r2, r1, a1, a0
	lsr 3,r1
	cmp_lsr 0, r1, 3, a0
	mov r1,r3
	beq .L1299
	exthu d0,r1
	cmp a0,r1
	bcs .L1303
	or_sub r3, d1, a0, d0
.L1303:
	mov_mov r2, r1, a1, a0
	lsr 4,r1
	cmp_lsr 0, r1, 4, a0
	mov r1,d2
	beq .L1299
	exthu d0,r1
	cmp a0,r1
	bcs .L1304
	or_sub d2, d1, a0, d0
.L1304:
	mov_mov r2, r1, a1, a0
	lsr 5,r1
	cmp_lsr 0, r1, 5, a0
	mov r1,d2
	beq .L1299
	exthu d0,r1
	cmp a0,r1
	bcs .L1305
	or_sub d2, d1, a0, d0
.L1305:
	mov_mov r2, r1, a1, a0
	lsr 6,r1
	cmp_lsr 0, r1, 6, a0
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1306
	or_sub r1, d1, a0, d0
.L1306:
	mov_mov r2, d2, a1, a0
	lsr 7,d2
	cmp_lsr 0, d2, 7, a0
	mov d2,r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1307
	or_sub r1, d1, a0, d0
.L1307:
	mov_mov r2, d2, a1, a0
	lsr 8,d2
	lsr 8,a0
	cmp_mov 0, d2, d2, r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1308
	or_sub r1, d1, a0, d0
.L1308:
	mov_mov r2, d2, a1, a0
	lsr 9,d2
	lsr 9,a0
	cmp_mov 0, d2, d2, r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1309
	or_sub r1, d1, a0, d0
.L1309:
	mov_mov r2, d2, a1, a0
	lsr 10,d2
	lsr 10,a0
	cmp_mov 0, d2, d2, r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1310
	or_sub r1, d1, a0, d0
.L1310:
	mov_mov r2, d2, a1, a0
	lsr 11,d2
	lsr 11,a0
	cmp_mov 0, d2, d2, r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1311
	or_sub r1, d1, a0, d0
.L1311:
	mov_mov r2, d2, a1, a0
	lsr 12,d2
	lsr 12,a0
	cmp_mov 0, d2, d2, r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1312
	or_sub r1, d1, a0, d0
.L1312:
	mov_mov r2, d2, a1, a0
	lsr 13,d2
	lsr 13,a0
	cmp_mov 0, d2, d2, r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1313
	or_sub r1, d1, a0, d0
.L1313:
	mov_mov r2, d2, a1, a0
	lsr 14,d2
	lsr 14,a0
	cmp_mov 0, d2, d2, r1
	beq .L1299
	exthu d0,d2
	cmp a0,d2
	bcs .L1314
	or_sub r1, d1, a0, d0
.L1314:
	lsr 15,a1
	cmp 16384,r2
	beq .L1299
	exthu d0,a0
	cmp a1,a0
	bcs .L1322
	or 1,d1
	sub a1,d0
	jmp .L1299
.L1382:
	mov 32768,r2
	mov -32768,d0
	mov 16384,a0
	mov a0,d2
	add r1,d0
	mov -32768,d1
	mov r2,a1
.L1319:
	exthu d0,r1
	exthu a0,r3
	cmp r3,r1
	bcs .L1301
	or_sub d2, d1, a0, d0
	jmp .L1301
.L1322:
	clr d0
	jmp .L1299
.L1381:
	beq .L1320
	mov r1,d0
	clr d1
	jmp .L1299
.L1269:
	sub d1,r1,d0
	mov 1,d1
	jmp .L1299
.L1270:
	bcs .L1324
	sub d0,r1,d0
	mov 2,r2
	mov 2,d1
	exthu a1
	jmp .L1301
.L1271:
	mov d1,a0
	sub d0,r1,d0
	and 32767,a0
	mov 2,r2
	mov 1,d2
	mov 2,d1
	exthu a1
	jmp .L1319
.L1272:
	bcs .L1325
	sub d0,r1,d0
	mov 4,r2
	mov 4,d1
	exthu a1
	jmp .L1301
.L1273:
	sub d0,r1,d0
	mov_lsr 4, r2, 1, a0
	mov 2,d2
	mov 4,d1
	exthu a1
	jmp .L1319
.L1274:
	bcs .L1326
	sub d0,r1,d0
	mov 8,r2
	mov 8,d1
	exthu a1
	jmp .L1301
.L1275:
	sub d0,r1,d0
	mov 8,r2
	lsr 1,a0
	mov 4,d2
	mov 8,d1
	exthu a1
	jmp .L1319
.L1276:
	bcs .L1327
	sub d0,r1,d0
	mov 16,r2
	mov 16,d1
	exthu a1
	jmp .L1301
.L1277:
	sub d0,r1,d0
	mov 16,r2
	lsr 1,a0
	mov 8,d2
	mov 16,d1
	exthu a1
	jmp .L1319
.L1278:
	bcs .L1328
	sub d0,r1,d0
	mov 32,r2
	mov 32,d1
	exthu a1
	jmp .L1301
.L1279:
	sub d0,r1,d0
	mov 32,r2
	lsr 1,a0
	mov 16,d2
	mov 32,d1
	exthu a1
	jmp .L1319
.L1280:
	bcs .L1329
	sub d0,r1,d0
	mov 64,r2
	mov 64,d1
	exthu a1
	jmp .L1301
.L1281:
	sub d0,r1,d0
	mov 64,r2
	lsr 1,a0
	mov 32,d2
	mov 64,d1
	exthu a1
	jmp .L1319
.L1282:
	bcs .L1330
	sub d0,r1,d0
	movu 128,r2
	mov 128,d1
	exthu a1
	jmp .L1301
.L1283:
	sub d0,r1,d0
	movu 128,r2
	lsr 1,a0
	mov 64,d2
	mov 128,d1
	exthu a1
	jmp .L1319
.L1285:
	sub d0,r1,d0
	mov 256,r2
	lsr 1,a0
	mov 128,d2
	mov 256,d1
	exthu a1
	jmp .L1319
.L1320:
	mov 1,d1
	clr d0
	jmp .L1299
.L1287:
	sub d0,r1,d0
	mov 512,r2
	lsr 1,a0
	mov 256,d2
	mov 512,d1
	exthu a1
	jmp .L1319
.L1324:
	mov 2,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1289:
	sub d0,r1,d0
	mov 1024,r2
	lsr 1,a0
	mov 512,d2
	mov 1024,d1
	exthu a1
	jmp .L1319
.L1325:
	mov 4,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1291:
	sub d0,r1,d0
	mov 2048,r2
	lsr 1,a0
	mov 1024,d2
	mov 2048,d1
	exthu a1
	jmp .L1319
.L1326:
	mov 8,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1293:
	sub d0,r1,d0
	mov 4096,r2
	lsr 1,a0
	mov 2048,d2
	mov 4096,d1
	exthu a1
	jmp .L1319
.L1295:
	sub d0,r1,d0
	mov 8192,r2
	lsr 1,a0
	mov 4096,d2
	mov 8192,d1
	exthu a1
	jmp .L1319
.L1327:
	mov 16,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1297:
	sub d0,r1,d0
	mov 16384,r2
	lsr 1,a0
	mov 8192,d2
	mov 16384,d1
	exthu a1
	jmp .L1319
.L1328:
	mov 32,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1329:
	mov 64,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1298:
	exth r1,d0
	cmp 0,d0
	blt .L1323
	mov -32768,a1
	mov a1,r2
	exthu a1
	exthu r2
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1330:
	movu 128,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1284:
	bcs .L1331
	sub d0,r1,d0
	mov 256,r2
	mov 256,d1
	exthu a1
	jmp .L1301
.L1323:
	mov 32768,r2
	mov -32768,d1
	clr d0
	mov r2,a1
	jmp .L1301
.L1331:
	mov 256,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1294:
	bcs .L1336
	sub d0,r1,d0
	mov 8192,r2
	mov 8192,d1
	exthu a1
	jmp .L1301
.L1288:
	bcs .L1333
	sub d0,r1,d0
	mov 1024,r2
	mov 1024,d1
	exthu a1
	jmp .L1301
.L1336:
	mov 8192,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1333:
	mov 1024,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1332:
	mov 512,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1292:
	bcs .L1335
	sub d0,r1,d0
	mov 4096,r2
	mov 4096,d1
	exthu a1
	jmp .L1301
.L1290:
	bcs .L1334
	sub d0,r1,d0
	mov 2048,r2
	mov 2048,d1
	exthu a1
	jmp .L1301
.L1296:
	bcs .L1337
	sub d0,r1,d0
	mov 16384,r2
	mov 16384,d1
	exthu a1
	jmp .L1301
.L1335:
	mov 4096,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1334:
	mov 2048,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
.L1337:
	mov 16384,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1319
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1385
	mov 32,d0
	mov 1,a0
.L1384:
	add_cmp -1, d0, 0, d1
	blt .L1385
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1386
	cmp 0,d0
	bne .L1384
	cmp 0,r0
	bne .L1401
.L1383:
	retf [],0
.L1386:
	cmp 0,a0
	beq .L1393
.L1385:
	clr d0
.L1390:
	cmp d1,a1
	bcs .L1389
	or_sub a0, d0, d1, a1
.L1389:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1390
	cmp 0,r0
	beq .L1383
.L1401:
	mov a1,d0
	retf [],0
.L1393:
	cmp_mov 0, r0, a0, d0
	beq .L1383
	jmp .L1401
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, a0, d0
	and 32,d0
	beq .L1403
	mov 0,a1
	asl a0,r2,a0
	mov_mov a1, r0, a0, r1
.L1405:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1403:
	cmp 0,a0
	beq .L1406
	clr d0
	sub a0,d0
	lsr d0,r2,d0
	asl a0,d1
	asl a0,r2,a1
	or d1,d0,a0
	mov_mov a1, r0, a0, r1
	jmp .L1405
.L1406:
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
	beq .L1410
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1412:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1410:
	cmp 0,a0
	beq .L1413
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	asr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1412
.L1413:
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
	bls .L1421
	mov 0,a0
.L1421:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	mov 1,d0
	beq .L1422
	clr d0
.L1422:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub_add d0, a1, d0, a0
	lsr a1,d1
	btst 240,d1
	mov 1,d0
	beq .L1423
	clr d0
.L1423:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	btst 12,d1
	mov 1,a0
	beq .L1424
	mov 0,a0
.L1424:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1426
	sub d1,r1,d0
.L1426:
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
	blt .L1442
	bgt .L1443
	cmp a0,r0
	bcs .L1442
	bhi .L1443
	mov 1,d0
	retf [],0
.L1442:
	clr d0
	retf [],0
.L1443:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	blt .L1451
	bgt .L1450
	cmp a0,r0
	bcs .L1451
	mov 1,d0
	bls .L1454
	retf [],0
.L1451:
	mov -1,d0
	retf [],0
.L1454:
	clr d0
	retf [],0
.L1450:
	mov 1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a0
	beq .L1456
	mov 0,a0
.L1456:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	cmp_mov 0, a1, 1, d0
	beq .L1457
	clr d0
.L1457:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	btst 15,d1
	mov 1,d0
	beq .L1458
	clr d0
.L1458:
	asl2 d0
	add a0,d0,a1
	lsr d0,d1
	btst 3,d1
	mov 1,d0
	beq .L1459
	clr d0
.L1459:
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
	beq .L1475
	mov 0,a1
	lsr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1477:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1475:
	cmp 0,a0
	beq .L1478
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	lsr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1477
.L1478:
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
	add r0,d1
	mov_mov d1, d3, d2, d0
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
	beq .L1501
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1498:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, a2, d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp_mov 0, a2, d1, r5
	beq .L1497
.L1499:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,r0
	lsr 31,r0
	add a2,r0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1498
	mov r0,a2
	asr 1,a2
	jmp .L1499
.L1497:
	cmp 0,a3
	blt .L1504
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1501:
	mov_mov a3, a2, d0, r4
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	bne .L1499
	jmp .L1497
.L1504:
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
	beq .L1506
.L1508:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1506:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1507
.L1509:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,a0
	lsr 31,a0
	add d2,a0
	btst 1,d2
	mov d0,d3
	bne .L1508
	mov a0,d2
	asr 1,d2
	jmp .L1509
.L1507:
	cmp 0,a3
	blt .L1514
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1514:
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
	bcs .L1519
	bhi .L1520
	cmp a0,r0
	bcs .L1519
	bhi .L1520
	mov 1,d0
	retf [],0
.L1519:
	clr d0
	retf [],0
.L1520:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	bcs .L1528
	bhi .L1527
	cmp a0,r0
	bcs .L1528
	mov 1,d0
	bls .L1531
	retf [],0
.L1528:
	mov -1,d0
	retf [],0
.L1531:
	clr d0
	retf [],0
.L1527:
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
	.global __divsf3
	.global __divdf3
	.global __fixsfsi
	.global __floatundisf
	.global __floatundidf
	.global __floatunsisf
	.global __floatunsidf
	.global __muldf3
	.global __nedf2
	.global __adddf3
	.global __mulsf3
	.global __nesf2
	.global __addsf3
	.global __floatsidf
	.global __moddi3
	.global __divdi3
	.global __lesf2
	.global __ledf2
	.global __gesf2
	.global __ltsf2
	.global __gedf2
	.global __ltdf2
	.global __subsf3
	.global __gtsf2
	.global __subdf3
	.global __gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
