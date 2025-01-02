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
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__unorddf2,[],0
	cmp 0,d0
	mov (64,sp),a2
	bne .L242
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp_mov 0, d0, d0, r4
	bne .L243
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L246
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L246:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L242:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L243:
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
	bne .L252
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d0, d2
	bne .L253
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L256
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
	ret [d2,d3,a2],24
.L256:
	mov d2,d0
	ret [d2,d3,a2],24
.L252:
	mov d3,d0
	ret [d2,d3,a2],24
.L253:
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
	bne .L265
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L266
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L261
	cmp 0,d0
	bne .L267
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L261:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L268
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L272:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L268:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L272
.L267:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L265:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L266:
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
	bne .L281
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L273
	mov d3,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L275
	cmp 0,d0
	beq .L284
.L281:
	mov d3,d0
.L273:
	ret [d2,d3],20
.L275:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L281
.L284:
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
	bne .L293
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L294
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L289
	cmp 0,d0
	bne .L295
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L289:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L296
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L300:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L296:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L300
.L295:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L293:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L294:
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
	bne .L307
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L308
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L303
	cmp 0,d0
	bne .L309
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L303:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L310
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L314:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L310:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L314
.L309:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L307:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L308:
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
	bne .L321
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d3, d0
	bne .L315
	mov d2,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L317
	cmp 0,d0
	beq .L321
.L323:
	mov d3,d0
.L315:
	ret [d2,d3],20
.L317:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L323
.L321:
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
	bne .L334
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L335
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L330
	cmp 0,d0
	bne .L336
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L330:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L337
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L341:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L337:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L341
.L336:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L334:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L335:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L343
	mov +digits,a1
	setlb
.L344:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),a0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu a0,(-1,d1)
	Lne # loop back to: .L344
.L343:
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
	beq .L361
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L353
	mov d0,(4,d1)
.L353:
	retf [],0
.L361:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L363
	mov (4,d0),a0
	mov a0,(4,d1)
.L363:
	mov (4,d0),d0
	cmp 0,d0
	beq .L362
	mov d1,(d0)
.L362:
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
	beq .L374
	clr r7
	mov d1,d2
.L376:
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	add_cmp 1, r7, 0, d0
	mov d2,d3
	beq .L373
	add_cmp r4, d2, r7, a2
	bne .L376
.L374:
	mul r4,a2,d0,d3
	mov (60,sp),a0
	add_add 1, a2, r6, d3
	cmp 0,r4
	mov a2,(a0)
	beq .L373
	mov r4,(12,sp)
	mov_mov a3, d1, d3, d0
	call +memmove,[],0
.L373:
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
	beq .L391
	clr d3
	mov d1,d2
.L393:
	mov_mov d2, d1, a2, d0
	mov r4,a0
	calls (a0)
	add_cmp 1, d3, 0, d0
	mov d2,r6
	beq .L390
	add_cmp r5, d2, d3, a3
	bne .L393
.L391:
	clr r6
.L390:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L407
	retf [],0
.L407:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L415:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L409
	cmp 4,d0
	bls .L409
	cmp 43,a0
	beq .L410
	cmp 45,a0
	bne .L431
	movbu (1,d1),a0
	mov -48,d0
	add_add 1, d1, a0, d0
	cmp 9,d0
	bhi .L420
	mov 1,r2
.L413:
	clr d0
.L417:
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
	bne .L408
	sub a1,r0,d0
	rets
.L409:
	inc d1
	jmp .L415
.L431:
	mov -48,d0
	clr r2
	add a0,d0
	cmp 9,d0
	bls .L413
.L420:
	clr d0
.L408:
	rets
.L410:
	movbu (1,d1),a0
	mov -48,d0
	clr r2
	add_add a0, d0, 1, d1
	cmp 9,d0
	bhi .L420
	clr d0
	jmp .L417
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	mov d0,d1
.L438:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L434
	cmp 4,d0
	bls .L434
	cmp 43,a0
	beq .L435
	cmp 45,a0
	beq .L436
.L453:
	mov -48,d0
	add a0,d0
	cmp 9,d0
	bhi .L445
	clr r2
.L439:
	clr d0
	setlb
.L442:
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
	Lls # loop back to: .L442
	cmp 0,r2
	beq .L456
	rets
.L434:
	inc d1
	jmp .L438
.L456:
	sub a1,r0,d0
	rets
.L436:
	movbu (1,d1),a0
	mov 1,r2
	mov -48,d0
	add_add r2, d1, a0, d0
	cmp 9,d0
	bls .L439
.L445:
	clr d0
	rets
.L435:
	movbu (1,d1),a0
	inc d1
	jmp .L453
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3],(sp)
.L464:
	movbu (d0),d1
	mov -9,d2
	add d1,d2
	cmp 32,d1
	beq .L458
	cmp 4,d2
	bls .L458
	cmp 43,d1
	beq .L459
	cmp 45,d1
	beq .L460
	mov -48,d2
	add d1,d2
	cmp 9,d2
	bhi .L469
	mov 0,a3
.L462:
	clr r0
	mov 10,d3
	mov r0,r1
.L466:
	setlb
.L479:
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
	Lls # loop back to: .L479
	cmp 0,a3
	bne .L457
	sub a0,r2,r0
	subc a1,r3,r1
.L457:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L458:
	inc d0
	jmp .L464
.L460:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	bhi .L469
	clr r0
	mov 1,a3
	mov 10,d3
	mov r0,r1
	jmp .L466
.L459:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	mov 0,a3
	bls .L462
	mov_mov a3, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L469:
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
.L493:
	cmp 0,d2
	beq .L481
.L496:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	add -1,d2
	sub_cmp r6, d2, 0, d0
	blt .L485
	add a3,d3,a2
	cmp 0,d0
	bne .L493
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],44
.L485:
	mov r6,d2
	cmp 0,d2
	bne .L496
.L481:
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
	beq .L502
.L498:
	mov d2,r7
	asr 1,r7
	mul r7,a2,d0,r6
	mov r4,(12,sp)
	add_mov d3, r6, a3, d0
	mov_mov r6, d1, r5, a0
	calls (a0)
	add -1,d2
	cmp_asr 0, d0, 1, d2
	beq .L497
	ble .L500
	add a2,r6,d3
	cmp 0,d2
	bne .L498
.L502:
	clr r6
.L497:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],48
.L500:
	cmp_mov 0, r7, r7, d2
	bne .L498
	clr r6
	jmp .L497
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
	blt .L520
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L520:
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
	blt .L527
	retf [],0
.L527:
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
	blt .L535
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L535:
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
	beq .L538
.L539:
	cmp a0,d1
	beq .L546
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L539
.L538:
	mov a0,d0
	retf [],0
.L546:
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
	bne .L549
.L548:
	cmp 0,a1
	beq .L549
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L548
.L549:
	cmp r0,a1
	blt .L554
	mov 1,d0
	ble .L558
	retf [],0
.L554:
	mov -1,d0
	retf [],0
.L558:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L560:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L560
	mov a0,d0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L567
	mov d0,d1
	setlb
.L566:
	mov (4,d1),a0
	add_cmp 4, d1, 0, a0
	Lne # loop back to: .L566
	sub d0,d1,d0
	asr 2,d0
	retf [],0
.L567:
	mov d1,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L578
.L572:
	mov (d0),a1
	mov (d1),r0
	add_cmp -1, a0, r0, a1
	bne .L574
	cmp 0,a1
	beq .L574
	add_add 4, d0, 4, d1
	cmp 0,a0
	bne .L572
.L578:
	mov a0,d0
	retf [],0
.L574:
	mov (d0),a1
	mov (d1),d0
	cmp d0,a1
	blt .L582
	cmp_mov d0, a1, 1, a0
	bgt .L578
	mov 0,a0
	mov a0,d0
	retf [],0
.L582:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L583
.L584:
	mov (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L591
	add_cmp 4, d0, 0, a0
	bne .L584
.L583:
	mov a0,d0
	retf [],0
.L591:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L602
.L593:
	mov (d0),r0
	mov (d1),a1
	add_add -1, a0, 4, d0
	cmp a1,r0
	bne .L605
	add_cmp 4, d1, 0, a0
	bne .L593
.L602:
	clr d0
	retf [],0
.L605:
	bge .L598
	mov -1,d0
.L592:
	retf [],0
.L598:
	mov 1,d0
	bgt .L592
	clr d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L607
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L607:
	mov_mov a1, d0, a1, a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L621
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L630
	cmp 0,d0
	beq .L621
	asl2 a1
	setlb
.L618:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L618
.L621:
	mov a0,d0
	retf [],0
.L630:
	clr r0
	cmp r0,d0
	beq .L621
.L616:
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	beq .L621
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	bne .L616
	jmp .L621
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L632
	mov d0,r0
	setlb
.L633:
	add -1,a1
	cmp -1,a1
	mov d1,(r0+)
	Lne # loop back to: .L633
.L632:
	mov a0,d0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L641
	cmp 0,a0
	beq .L640
	add_add -1, d0, -1, d1
	setlb
.L643:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L643
	retf [],0
.L641:
	bne .L678
.L640:
	retf [],0
.L678:
	cmp 0,a0
	beq .L640
	mov -1,a1
	add a0,a1
	cmp 6,a1
	bls .L653
	or d0,d1,a1
	and 3,a1
	bne .L653
	mov 1,r0
	add d0,r0
	sub r0,d1,r0
	cmp 2,r0
	bls .L653
	mov a0,r1
	and -4,r1
	setlb
.L647:
	mov (a1,d0),r0
	mov r0,(a1,d1)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L647
	sub a1,a0,r0
	add_add a1, d1, a1, d0
	cmp a1,a0
	beq .L640
	movbu (d0),a0
	cmp 1,r0
	movbu a0,(d1)
	beq .L640
	movbu (1,d0),a0
	cmp 2,r0
	movbu a0,(1,d1)
	beq .L640
	movbu (2,d0),d0
	movbu d0,(2,d1)
	retf [],0
.L653:
	mov 0,a1
.L650:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	beq .L640
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	bne .L650
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
	beq .L680
	clr d0
	asl a0,r2,d1
.L681:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L682
	clr r0
	mov r0,r1
	lsr a0,r3,r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L682:
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
.L680:
	mov_mov r2, a1, a0, d2
	lsr 1,a1
	not d2
	lsr d2,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L681
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2],(sp)
	mov (16,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L687
	clr d0
	mov d0,d1
	lsr a0,r3,d0
.L688:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L689
	asl a0,r2,r1
	clr r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L689:
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
.L687:
	mov_mov d1, a1, a0, d2
	add a1,a1
	not d2
	asl d2,a1
	lsr a0,r2,d0
	or_lsr a1, d0, a0, d1
	jmp .L688
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
.L718:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L722
	cmp 32,d1
	bne .L718
	mov a0,d0
	retf [],0
.L722:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L723
	and 1,d0
	bne .L723
	mov 1,d0
	setlb
.L725:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L725
	retf [],0
.L723:
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
	blt .L734
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L737
	mov d2,d0
.L731:
	ret [d2],16
.L734:
	mov 1,d0
	ret [d2],16
.L737:
	clr d2
	mov d2,d0
	jmp .L731
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
	blt .L741
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L744
	mov d2,d0
.L738:
	ret [d2,d3,a2],32
.L741:
	mov 1,d0
	ret [d2,d3,a2],32
.L744:
	clr d2
	mov d2,d0
	jmp .L738
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
	blt .L748
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L751
	mov d2,d0
.L745:
	ret [d2,d3,a2],32
.L748:
	mov 1,d0
	ret [d2,d3,a2],32
.L751:
	clr d2
	mov d2,d0
	jmp .L745
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
	bne .L755
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L755
	cmp 0,d2
	blt .L771
	btst 1,d2
	mov 1073741824,d3
	beq .L758
.L759:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L758:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L755
.L760:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,d1
	lsr 31,d1
	add d2,d1
	btst 1,d2
	mov d0,d3
	bne .L759
	mov d1,d2
	asr 1,d2
	jmp .L760
.L755:
	mov a2,d0
	ret [d2,d3,a2],24
.L771:
	btst 1,d2
	mov 1056964608,d3
	beq .L758
	jmp .L759
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
	bne .L773
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L773
	cmp_mov 0, r4, r5, d2
	blt .L789
	btst 1,r4
	mov 1073741824,d3
	beq .L776
.L777:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L776:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L773
.L778:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L777
	mov r0,r4
	asr 1,r4
	jmp .L778
.L773:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L789:
	btst 1,r4
	mov 1071644672,d3
	beq .L776
	jmp .L777
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
	bne .L791
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L791
	cmp_mov 0, r4, r5, d2
	blt .L807
	btst 1,r4
	mov 1073741824,d3
	beq .L794
.L795:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L794:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L791
.L796:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L795
	mov r0,r4
	asr 1,r4
	jmp .L796
.L791:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L807:
	btst 1,r4
	mov 1071644672,d3
	beq .L794
	jmp .L795
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L809
	mov -1,d0
	add r2,d0
	cmp 3,d0
	bls .L810
	or d1,a0,a1
	and 3,a1
	bne .L810
	mov r2,r1
	and -4,r1
	setlb
.L811:
	mov (a1,a0),d0
	mov (a1,d1),r0
	xor d0,r0
	mov r0,(a1,a0)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L811
	add a1,a0,d0
	sub a1,r2,r0
	add_cmp a1, d1, a1, r2
	beq .L809
	movbu (d0),a1
	movbu (d1),r1
	xor_cmp r1, a1, 1, r0
	movbu a1,(d0)
	beq .L809
	movbu (1,d0),r1
	movbu (1,d1),a1
	xor_cmp r1, a1, 2, r0
	movbu a1,(1,d0)
	beq .L809
	movbu (2,d0),a1
	movbu (2,d1),d1
	xor a1,d1
	movbu d1,(2,d0)
.L809:
	mov a0,d0
	retf [],0
.L810:
	add_mov d1, r2, a0, d0
.L813:
	movbu (d0),r0
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r0, a1, d1, r2
	movbu a1,(-1,d0)
	beq .L809
	movbu (d0),r0
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r0, a1, d1, r2
	movbu a1,(-1,d0)
	bne .L813
	jmp .L809
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov d0,a0
	movbu (d0),d0
	mov (12,sp),r1
	cmp_mov 0, d0, a0, a1
	beq .L842
	setlb
.L831:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L831
.L842:
	cmp 0,r1
	beq .L833
.L845:
	movbu (d1),r0
	add_add -1, r1, 1, d1
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L835
	add_cmp 1, a1, 0, r1
	bne .L845
.L833:
	clr d0
	movbu d0,(a1)
.L835:
	mov a0,d0
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L846
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L849
.L846:
	mov a0,d0
	retf [],0
.L849:
	inc a0
	cmp a0,d1
	beq .L846
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L846
	jmp .L849
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L860
.L856:
	mov d1,a1
.L859:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L864
	cmp r1,r0
	bne .L859
	mov a0,d0
	retf [],0
.L864:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L856
.L860:
	mov_mov r1, a0, r1, d0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov 0,a0
.L867:
	movbu (d0),a1
	cmp a1,d1
	beq .L871
	add_cmp 1, d0, 0, a1
	bne .L867
.L872:
	mov a0,d0
	retf [],0
.L871:
	mov_add d0, a0, 1, d0
	cmp 0,a1
	bne .L867
	jmp .L872
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2],(sp)
	movbu (d1),d3
	extbu d3,r3
	cmp 0,r3
	beq .L886
	mov d1,a0
	setlb
.L875:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L875
	sub d1,a0,a2
	cmp d1,a0
	beq .L886
	add -1,a2
	extbu d3
.L883:
	movbu (d0),a0
	cmp r3,a0
	beq .L882
	add_cmp 1, d0, 0, a0
	bne .L883
	mov a0,d0
	retf [d2,d3,a2],12
.L882:
	add a2,d0,d2
	mov_mov d1, r1, d0, a1
	mov d3,r0
.L877:
	cmp d2,a1
	beq .L879
	add_cmp 1, a1, r0, a0
	bne .L880
	movbu (a1),a0
	mov 1,r2
	add_cmp r1, r2, 0, a0
	movbu (1,r1),r0
	beq .L879
	cmp_mov 0, r0, r2, r1
	bne .L877
.L880:
	inc d0
	jmp .L883
.L879:
	cmp r0,a0
	bne .L880
.L886:
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
	blt .L906
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L898
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L897
.L898:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L906:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L898
.L897:
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
	beq .L907
	cmp r1,d1
	bcs .L918
	sub r1,d1
	add d0,d1
	cmp d1,d0
	bhi .L918
	movbu (r3),d2
.L913:
	movbu (a0),d0
	mov 1,r2
	add_cmp a0, r2, d2, d0
	beq .L926
	mov r2,a0
.L909:
	cmp a0,d1
	bcc .L913
.L918:
	mov 0,a0
.L907:
	mov a0,d0
	retf [d2],4
.L926:
	cmp 1,r1
	beq .L907
	mov 1,a1
.L910:
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	bne .L927
.L911:
	cmp r1,a1
	beq .L907
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	beq .L911
.L927:
	cmp r2,d1
	bcs .L918
	movbu (r2),d0
	mov 1,a0
	add_cmp r2, a0, d0, d2
	bne .L909
	mov_mov r2, d0, 1, a1
	mov_mov a0, r2, d0, a0
	jmp .L910
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L929
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L929:
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
	blt .L960
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L961
	clr r6
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
.L944:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L944
.L945:
	mov (64,sp),d0
	cmp 0,a3
	mov r6,(d0)
	mov d2,a0
	beq .L951
	mov -2147483648,a1
	add_mov d3, a1, a0, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L951:
	mov_mov d3, a1, a0, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L961:
	mov 1071644672,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L941
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L950
.L941:
	mov (64,sp),d1
	clr d0
	mov_mov d2, a0, d3, a1
	mov d0,(d1)
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L960:
	mov -1074790400,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ledf2,[],0
	mov -2147483648,r5
	add_cmp d3, r5, a3, d0
	mov d2,r4
	bgt .L962
	clr r6
	mov_mov r5, d3, 1, a3
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
	jmp .L944
.L962:
	mov -1075838976,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp a3,d0
	bgt .L948
	mov (64,sp),d0
	mov_mov d2, a0, d3, a1
	mov a3,(d0)
	mov_mov a1, d1, a0, d0
	ret [d2,d3,a2,a3,exreg1],52
.L948:
	clr r6
	mov 1,a3
	mov 1071644672,a2
	mov_mov r4, d2, r5, d3
	mov r6,r4
.L946:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L945
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L946
	jmp .L945
.L950:
	mov_mov d2, r4, d3, r5
	clr r6
	mov r4,d2
	mov 1071644672,a2
	mov_mov r5, d3, r6, r4
	jmp .L946
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
	beq .L967
	clr r4
	mov r4,r5
	setlb
.L966:
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
	Lne # loop back to: .L966
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],48
.L967:
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
	bcc .L973
	mov 32,d0
	mov 1,a0
.L972:
	add_cmp -1, d0, 0, d1
	blt .L973
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L974
	cmp 0,d0
	bne .L972
	cmp 0,r0
	bne .L989
.L971:
	retf [],0
.L974:
	cmp 0,a0
	beq .L981
.L973:
	clr d0
.L978:
	cmp d1,a1
	bcs .L977
	or_sub a0, d0, d1, a1
.L977:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L978
	cmp 0,r0
	beq .L971
.L989:
	mov a1,d0
	retf [],0
.L981:
	cmp_mov 0, r0, a0, d0
	beq .L971
	jmp .L989
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L992
	asl 8,d0
	clr d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L992:
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
	beq .L1005
.L1001:
	clr d0
	cmp 0,r3
	bne .L1006
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L1006:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1005:
	cmp a0,d1
	bne .L1001
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L1010
	clr d0
	setlb
.L1009:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1009
	retf [],0
.L1010:
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
	bcs .L1015
	add r3,d1,a0
	cmp a0,d0
	bls .L1044
.L1015:
	cmp 0,d2
	beq .L1018
	mov_asl 0, a0, 3, d2
	setlb
.L1019:
	add a0,d1,r2
	mov (a0,d1),r0
	mov (4,r2),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp d2,a0
	mov r1,(4,r2)
	Lne # loop back to: .L1019
	cmp a1,r3
	bls .L1014
	sub a1,r3,d3
	mov -1,a0
	add d3,a0
	cmp 6,a0
	bls .L1026
	mov 1,a0
	add a1,d0,d2
	add a1,a0
	add d1,a0
	sub a0,d2,a0
	add a1,d1,r2
	cmp 2,a0
	bls .L1026
	or d2,r2,a0
	and 3,a0
	bne .L1026
	mov d3,r1
	and -4,r1
	setlb
.L1024:
	mov (a0,r2),r0
	mov r0,(a0,d2)
	inc4 a0
	cmp a0,r1
	Lne # loop back to: .L1024
	add_cmp r1, a1, d3, r1
	beq .L1014
	movbu (a1,d1),d2
	mov 1,a0
	add a1,a0
	cmp a0,r3
	movbu d2,(a1,d0)
	bls .L1014
	movbu (a0,d1),d2
	add 2,a1
	cmp a1,r3
	movbu d2,(a0,d0)
	bls .L1014
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1014:
	retf [d2,d3],8
.L1018:
	cmp 0,r3
	beq .L1014
.L1026:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	beq .L1014
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	bne .L1026
	jmp .L1014
.L1044:
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L1014
.L1016:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L1014
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L1016
	jmp .L1014
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r0
	mov r0,r2
	cmp_lsr d1, d0, 1, r2
	bcs .L1046
	add r0,d1,a0
	cmp a0,d0
	bls .L1076
.L1046:
	cmp 0,r2
	beq .L1049
	mov -1,a0
	add r2,a0
	cmp 8,a0
	bls .L1050
	or d0,d1,a0
	and 3,a0
	bne .L1050
	mov 2,a1
	add d1,a1
	xor d0,a1
	clr r1
	sub a1,r1
	or r1,a1
	bnc .L1050
	mov_mov r0, r1, r0, r3
	and -4,r1
	lsr 2,r3
	setlb
.L1052:
	mov (a0,d1),a1
	mov a1,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1052
	mov r3,a0
	add a0,a0
	cmp a0,r2
	beq .L1049
	asl2 r3
	movhu (r3,d1),a0
	movhu a0,(r3,d0)
.L1049:
	btst 1,r0
	beq .L1045
	add -1,r0
	movbu (r0,d1),d1
	movbu d1,(r0,d0)
	retf [],0
.L1076:
	mov -1,a0
	add_cmp r0, a0, 0, r0
	beq .L1077
	setlb
.L1047:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L1047
.L1045:
	retf [],0
.L1050:
	mov_asl 0, a0, 1, r2
.L1054:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp r2,a0
	beq .L1049
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp r2,a0
	bne .L1054
	jmp .L1049
.L1077:
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
	bcs .L1079
	add r2,d1,a0
	cmp a0,d0
	bls .L1108
.L1079:
	cmp 0,r1
	beq .L1082
	mov_asl 0, a0, 2, r1
	setlb
.L1083:
	mov (a0,d1),r0
	mov r0,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1083
	cmp a1,r2
	bls .L1078
	sub a1,r2,d3
	mov -1,a0
	add d3,a0
	cmp 6,a0
	bls .L1090
	mov 1,a0
	add a1,d0,r1
	add a1,a0
	add d1,a0
	sub a0,r1,a0
	add a1,d1,d2
	cmp 2,a0
	bls .L1090
	or r1,d2,a0
	and 3,a0
	bne .L1090
	mov d3,r3
	and -4,r3
	setlb
.L1088:
	mov (a0,d2),r0
	mov r0,(a0,r1)
	inc4 a0
	cmp a0,r3
	Lne # loop back to: .L1088
	add_cmp r3, a1, d3, r3
	beq .L1078
	movbu (a1,d1),d2
	mov 1,a0
	add a1,a0
	cmp a0,r2
	movbu d2,(a1,d0)
	bls .L1078
	movbu (a0,d1),d2
	add 2,a1
	cmp a1,r2
	movbu d2,(a0,d0)
	bls .L1078
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1078:
	retf [d2,d3],8
.L1082:
	cmp 0,r2
	beq .L1078
.L1090:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r2
	beq .L1078
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r2
	bne .L1090
	jmp .L1078
.L1108:
	mov -1,a0
	add_cmp r2, a0, 0, r2
	beq .L1078
.L1080:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L1078
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L1080
	jmp .L1078
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
	bne .L1124
	mov d1,d0
	asr 14,d0
	cmp 0,d0
	bne .L1121
	mov d1,d0
	asr 13,d0
	cmp 0,d0
	bne .L1125
	mov d1,d0
	asr 12,d0
	cmp 0,d0
	bne .L1126
	mov d1,d0
	asr 11,d0
	cmp 0,d0
	bne .L1127
	mov d1,d0
	asr 10,d0
	cmp 0,d0
	bne .L1128
	mov d1,d0
	asr 9,d0
	cmp 0,d0
	bne .L1129
	mov d1,d0
	asr 8,d0
	cmp 0,d0
	bne .L1130
	mov d1,d0
	asr 7,d0
	cmp 0,d0
	bne .L1131
	mov d1,d0
	asr 6,d0
	cmp 0,d0
	bne .L1132
	mov d1,d0
	asr 5,d0
	cmp 0,d0
	bne .L1133
	mov d1,d0
	asr 4,d0
	cmp 0,d0
	bne .L1134
	mov d1,d0
	asr 3,d0
	cmp 0,d0
	bne .L1135
	mov d1,d0
	asr 2,d0
	cmp 0,d0
	bne .L1136
	mov d1,d0
	asr 1,d0
	cmp 0,d0
	bne .L1137
	cmp 0,d1
	mov 16,d0
	bne .L1142
.L1121:
	retf [],0
.L1124:
	clr d0
	retf [],0
.L1135:
	mov 12,d0
	retf [],0
.L1142:
	mov 15,d0
	retf [],0
.L1125:
	mov 2,d0
	retf [],0
.L1126:
	mov 3,d0
	retf [],0
.L1127:
	mov 4,d0
	retf [],0
.L1128:
	mov 5,d0
	retf [],0
.L1129:
	mov 6,d0
	retf [],0
.L1130:
	mov 7,d0
	retf [],0
.L1131:
	mov 8,d0
	retf [],0
.L1132:
	mov 9,d0
	retf [],0
.L1133:
	mov 10,d0
	retf [],0
.L1134:
	mov 11,d0
	retf [],0
.L1136:
	mov 13,d0
	retf [],0
.L1137:
	mov 14,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	btst 1,d0
	bne .L1146
	mov d0,d1
	and 2,d1
	bne .L1147
	mov d0,d1
	and 4,d1
	bne .L1148
	mov d0,d1
	and 8,d1
	bne .L1149
	mov d0,d1
	and 16,d1
	bne .L1150
	mov d0,d1
	and 32,d1
	bne .L1151
	mov d0,d1
	and 64,d1
	bne .L1152
	mov d0,d1
	and 128,d1
	bne .L1153
	mov d0,d1
	and 256,d1
	bne .L1154
	mov d0,d1
	and 512,d1
	bne .L1155
	mov d0,d1
	and 1024,d1
	bne .L1156
	mov d0,d1
	and 2048,d1
	bne .L1157
	mov d0,d1
	and 4096,d1
	bne .L1158
	mov d0,d1
	and 8192,d1
	bne .L1159
	mov d0,d1
	and 16384,d1
	bne .L1160
	exthu d0,d1
	asr 15,d1
	cmp 0,d1
	mov 16,d0
	bne .L1165
	retf [],0
.L1146:
	clr d0
	retf [],0
.L1147:
	mov 1,d0
	retf [],0
.L1158:
	mov 12,d0
	retf [],0
.L1165:
	mov 15,d0
	retf [],0
.L1148:
	mov 2,d0
	retf [],0
.L1149:
	mov 3,d0
	retf [],0
.L1150:
	mov 4,d0
	retf [],0
.L1151:
	mov 5,d0
	retf [],0
.L1152:
	mov 6,d0
	retf [],0
.L1153:
	mov 7,d0
	retf [],0
.L1154:
	mov 8,d0
	retf [],0
.L1155:
	mov 9,d0
	retf [],0
.L1156:
	mov 10,d0
	retf [],0
.L1157:
	mov 11,d0
	retf [],0
.L1159:
	mov 13,d0
	retf [],0
.L1160:
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
	bge .L1174
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1174:
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
	beq .L1182
	clr d0
	setlb
.L1181:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1181
	retf [],0
.L1182:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1189
	cmp 0,d1
	beq .L1190
	clr d0
	setlb
.L1188:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1188
	retf [],0
.L1189:
	retf [],0
.L1190:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1196
	mov 32,d0
	mov 1,a0
.L1195:
	add_cmp -1, d0, 0, d1
	blt .L1196
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1197
	cmp 0,d0
	bne .L1195
	cmp 0,r0
	bne .L1212
.L1194:
	retf [],0
.L1197:
	cmp 0,a0
	beq .L1204
.L1196:
	clr d0
.L1201:
	cmp d1,a1
	bcs .L1200
	or_sub a0, d0, d1, a1
.L1200:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1201
	cmp 0,r0
	beq .L1194
.L1212:
	mov a1,d0
	retf [],0
.L1204:
	cmp_mov 0, r0, a0, d0
	beq .L1194
	jmp .L1212
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L1216
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1219
	mov d2,d0
.L1213:
	ret [d2,d3],20
.L1219:
	clr d2
	mov d2,d0
	jmp .L1213
.L1216:
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
	blt .L1223
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1226
	mov d2,d0
.L1220:
	ret [d2,d3,a2,a3],36
.L1226:
	clr d2
	mov d2,d0
	jmp .L1220
.L1223:
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
	blt .L1247
	beq .L1237
	clr r2
	clr d0
	mov 32,a1
.L1236:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1235
	cmp 0,r1
	bne .L1236
.L1235:
	cmp 0,r2
	beq .L1231
	not d0
	inc d0
	retf [],0
.L1237:
	mov d1,d0
.L1231:
	retf [],0
.L1247:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1236
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1268
	clr r1
	cmp_mov 0, d1, 1, a0
	blt .L1269
.L1250:
	cmp_mov d1, d0, 1, a0
	mov d0,r0
	bls .L1252
	mov 32,a1
	mov 1,a0
.L1251:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1255
	cmp 0,a1
	bne .L1251
.L1255:
	cmp_mov 0, a0, a0, d0
	beq .L1253
.L1252:
	clr d0
.L1257:
	cmp d1,r0
	bcs .L1256
	or_sub a0, d0, d1, r0
.L1256:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1257
.L1253:
	cmp 0,r1
	beq .L1248
	not d0
	inc d0
.L1248:
	retf [],0
.L1269:
	not d1
	add_mov 1, d1, a0, r1
	jmp .L1250
.L1268:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 0, a0, 1, r1
	bge .L1250
	jmp .L1269
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1290
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1291
.L1272:
	cmp_mov d1, d0, 1, a0
	bls .L1279
	mov 32,a1
	mov 1,a0
.L1273:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1277
	cmp 0,a1
	bne .L1273
.L1277:
	cmp 0,a0
	beq .L1275
.L1279:
	cmp_lsr d1, r0, 1, a0
	bcs .L1278
	sub d1,r0
.L1278:
	cmp_lsr 0, a0, 1, d1
	bne .L1279
	mov r0,d0
.L1275:
	cmp 0,r1
	beq .L1270
	not d0
	inc d0
.L1270:
	retf [],0
.L1291:
	not d1
	inc d1
	jmp .L1272
.L1290:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1272
	jmp .L1291
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
	bcc .L1407
	exth d1,d0
	cmp 0,d0
	blt .L1295
	mov d1,d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1296
	exth d0,a0
	cmp 0,a0
	blt .L1297
	mov d1,d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1298
	exth d0,r3
	cmp 0,r3
	blt .L1299
	mov d1,d0
	asl2 d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1300
	exth d0,r3
	cmp 0,r3
	blt .L1301
	mov d1,d0
	asl2 d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1302
	exth d0,r3
	cmp 0,r3
	blt .L1303
	mov d1,d0
	asl 5,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1304
	exth d0,r3
	cmp 0,r3
	blt .L1305
	mov d1,d0
	asl 6,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1306
	exth d0,r3
	cmp 0,r3
	blt .L1307
	mov d1,d0
	asl 7,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1308
	exth d0,r3
	cmp 0,r3
	blt .L1309
	mov d1,d0
	asl 8,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1310
	exth d0,r3
	cmp 0,r3
	blt .L1311
	mov d1,d0
	asl 9,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1312
	exth d0,r3
	cmp 0,r3
	blt .L1313
	mov d1,d0
	asl 10,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1314
	exth d0,d2
	cmp 0,d2
	blt .L1315
	mov d1,d0
	asl 11,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1316
	exth d0,d2
	cmp 0,d2
	blt .L1317
	mov d1,d0
	asl 12,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1318
	exth d0,d2
	cmp 0,d2
	blt .L1319
	mov d1,d0
	asl 13,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1320
	exth d0,d2
	cmp 0,d2
	blt .L1321
	mov d1,d0
	asl 14,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1322
	exth d0,d2
	cmp 0,d2
	blt .L1323
	asl 15,d1
	exthu d1,a0
	cmp a0,r2
	bls .L1324
	cmp 0,a0
	mov r1,d0
	bne .L1408
.L1325:
	cmp 0,r0
	bne .L1292
	mov d1,d0
.L1292:
	retf [d2],4
.L1312:
	bcs .L1358
	sub d0,r1,d0
	mov 512,r2
	mov 512,d1
	exthu a1
.L1327:
	mov_mov r2, r1, a1, a0
	lsr 2,r1
	cmp_lsr 0, r1, 2, a0
	mov r1,r3
	beq .L1325
	exthu d0,r1
	cmp a0,r1
	bcs .L1328
	or_sub r3, d1, a0, d0
.L1328:
	mov_mov r2, r1, a1, a0
	lsr 3,r1
	cmp_lsr 0, r1, 3, a0
	mov r1,r3
	beq .L1325
	exthu d0,r1
	cmp a0,r1
	bcs .L1329
	or_sub r3, d1, a0, d0
.L1329:
	mov_mov r2, r1, a1, a0
	lsr 4,r1
	cmp_lsr 0, r1, 4, a0
	mov r1,d2
	beq .L1325
	exthu d0,r1
	cmp a0,r1
	bcs .L1330
	or_sub d2, d1, a0, d0
.L1330:
	mov_mov r2, r1, a1, a0
	lsr 5,r1
	cmp_lsr 0, r1, 5, a0
	mov r1,d2
	beq .L1325
	exthu d0,r1
	cmp a0,r1
	bcs .L1331
	or_sub d2, d1, a0, d0
.L1331:
	mov_mov r2, r1, a1, a0
	lsr 6,r1
	cmp_lsr 0, r1, 6, a0
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1332
	or_sub r1, d1, a0, d0
.L1332:
	mov_mov r2, d2, a1, a0
	lsr 7,d2
	cmp_lsr 0, d2, 7, a0
	mov d2,r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1333
	or_sub r1, d1, a0, d0
.L1333:
	mov_mov r2, d2, a1, a0
	lsr 8,d2
	lsr 8,a0
	cmp_mov 0, d2, d2, r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1334
	or_sub r1, d1, a0, d0
.L1334:
	mov_mov r2, d2, a1, a0
	lsr 9,d2
	lsr 9,a0
	cmp_mov 0, d2, d2, r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1335
	or_sub r1, d1, a0, d0
.L1335:
	mov_mov r2, d2, a1, a0
	lsr 10,d2
	lsr 10,a0
	cmp_mov 0, d2, d2, r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1336
	or_sub r1, d1, a0, d0
.L1336:
	mov_mov r2, d2, a1, a0
	lsr 11,d2
	lsr 11,a0
	cmp_mov 0, d2, d2, r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1337
	or_sub r1, d1, a0, d0
.L1337:
	mov_mov r2, d2, a1, a0
	lsr 12,d2
	lsr 12,a0
	cmp_mov 0, d2, d2, r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1338
	or_sub r1, d1, a0, d0
.L1338:
	mov_mov r2, d2, a1, a0
	lsr 13,d2
	lsr 13,a0
	cmp_mov 0, d2, d2, r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1339
	or_sub r1, d1, a0, d0
.L1339:
	mov_mov r2, d2, a1, a0
	lsr 14,d2
	lsr 14,a0
	cmp_mov 0, d2, d2, r1
	beq .L1325
	exthu d0,d2
	cmp a0,d2
	bcs .L1340
	or_sub r1, d1, a0, d0
.L1340:
	lsr 15,a1
	cmp 16384,r2
	beq .L1325
	exthu d0,a0
	cmp a1,a0
	bcs .L1348
	or 1,d1
	sub a1,d0
	jmp .L1325
.L1408:
	mov 32768,r2
	mov -32768,d0
	mov 16384,a0
	mov a0,d2
	add r1,d0
	mov -32768,d1
	mov r2,a1
.L1345:
	exthu d0,r1
	exthu a0,r3
	cmp r3,r1
	bcs .L1327
	or_sub d2, d1, a0, d0
	jmp .L1327
.L1348:
	clr d0
	jmp .L1325
.L1407:
	beq .L1346
	mov r1,d0
	clr d1
	jmp .L1325
.L1295:
	sub d1,r1,d0
	mov 1,d1
	jmp .L1325
.L1296:
	bcs .L1350
	sub d0,r1,d0
	mov 2,r2
	mov 2,d1
	exthu a1
	jmp .L1327
.L1297:
	mov d1,a0
	sub d0,r1,d0
	and 32767,a0
	mov 2,r2
	mov 1,d2
	mov 2,d1
	exthu a1
	jmp .L1345
.L1298:
	bcs .L1351
	sub d0,r1,d0
	mov 4,r2
	mov 4,d1
	exthu a1
	jmp .L1327
.L1299:
	sub d0,r1,d0
	mov_lsr 4, r2, 1, a0
	mov 2,d2
	mov 4,d1
	exthu a1
	jmp .L1345
.L1300:
	bcs .L1352
	sub d0,r1,d0
	mov 8,r2
	mov 8,d1
	exthu a1
	jmp .L1327
.L1301:
	sub d0,r1,d0
	mov 8,r2
	lsr 1,a0
	mov 4,d2
	mov 8,d1
	exthu a1
	jmp .L1345
.L1302:
	bcs .L1353
	sub d0,r1,d0
	mov 16,r2
	mov 16,d1
	exthu a1
	jmp .L1327
.L1303:
	sub d0,r1,d0
	mov 16,r2
	lsr 1,a0
	mov 8,d2
	mov 16,d1
	exthu a1
	jmp .L1345
.L1304:
	bcs .L1354
	sub d0,r1,d0
	mov 32,r2
	mov 32,d1
	exthu a1
	jmp .L1327
.L1305:
	sub d0,r1,d0
	mov 32,r2
	lsr 1,a0
	mov 16,d2
	mov 32,d1
	exthu a1
	jmp .L1345
.L1306:
	bcs .L1355
	sub d0,r1,d0
	mov 64,r2
	mov 64,d1
	exthu a1
	jmp .L1327
.L1307:
	sub d0,r1,d0
	mov 64,r2
	lsr 1,a0
	mov 32,d2
	mov 64,d1
	exthu a1
	jmp .L1345
.L1308:
	bcs .L1356
	sub d0,r1,d0
	movu 128,r2
	mov 128,d1
	exthu a1
	jmp .L1327
.L1309:
	sub d0,r1,d0
	movu 128,r2
	lsr 1,a0
	mov 64,d2
	mov 128,d1
	exthu a1
	jmp .L1345
.L1311:
	sub d0,r1,d0
	mov 256,r2
	lsr 1,a0
	mov 128,d2
	mov 256,d1
	exthu a1
	jmp .L1345
.L1346:
	mov 1,d1
	clr d0
	jmp .L1325
.L1313:
	sub d0,r1,d0
	mov 512,r2
	lsr 1,a0
	mov 256,d2
	mov 512,d1
	exthu a1
	jmp .L1345
.L1350:
	mov 2,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1315:
	sub d0,r1,d0
	mov 1024,r2
	lsr 1,a0
	mov 512,d2
	mov 1024,d1
	exthu a1
	jmp .L1345
.L1351:
	mov 4,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1317:
	sub d0,r1,d0
	mov 2048,r2
	lsr 1,a0
	mov 1024,d2
	mov 2048,d1
	exthu a1
	jmp .L1345
.L1352:
	mov 8,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1319:
	sub d0,r1,d0
	mov 4096,r2
	lsr 1,a0
	mov 2048,d2
	mov 4096,d1
	exthu a1
	jmp .L1345
.L1321:
	sub d0,r1,d0
	mov 8192,r2
	lsr 1,a0
	mov 4096,d2
	mov 8192,d1
	exthu a1
	jmp .L1345
.L1353:
	mov 16,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1323:
	sub d0,r1,d0
	mov 16384,r2
	lsr 1,a0
	mov 8192,d2
	mov 16384,d1
	exthu a1
	jmp .L1345
.L1354:
	mov 32,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1355:
	mov 64,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1324:
	exth r1,d0
	cmp 0,d0
	blt .L1349
	mov -32768,a1
	mov a1,r2
	exthu a1
	exthu r2
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1356:
	movu 128,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1310:
	bcs .L1357
	sub d0,r1,d0
	mov 256,r2
	mov 256,d1
	exthu a1
	jmp .L1327
.L1349:
	mov 32768,r2
	mov -32768,d1
	clr d0
	mov r2,a1
	jmp .L1327
.L1357:
	mov 256,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1320:
	bcs .L1362
	sub d0,r1,d0
	mov 8192,r2
	mov 8192,d1
	exthu a1
	jmp .L1327
.L1314:
	bcs .L1359
	sub d0,r1,d0
	mov 1024,r2
	mov 1024,d1
	exthu a1
	jmp .L1327
.L1362:
	mov 8192,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1359:
	mov 1024,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1358:
	mov 512,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1318:
	bcs .L1361
	sub d0,r1,d0
	mov 4096,r2
	mov 4096,d1
	exthu a1
	jmp .L1327
.L1316:
	bcs .L1360
	sub d0,r1,d0
	mov 2048,r2
	mov 2048,d1
	exthu a1
	jmp .L1327
.L1322:
	bcs .L1363
	sub d0,r1,d0
	mov 16384,r2
	mov 16384,d1
	exthu a1
	jmp .L1327
.L1361:
	mov 4096,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1360:
	mov 2048,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
.L1363:
	mov 16384,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1345
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1411
	mov 32,d0
	mov 1,a0
.L1410:
	add_cmp -1, d0, 0, d1
	blt .L1411
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1412
	cmp 0,d0
	bne .L1410
	cmp 0,r0
	bne .L1427
.L1409:
	retf [],0
.L1412:
	cmp 0,a0
	beq .L1419
.L1411:
	clr d0
.L1416:
	cmp d1,a1
	bcs .L1415
	or_sub a0, d0, d1, a1
.L1415:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1416
	cmp 0,r0
	beq .L1409
.L1427:
	mov a1,d0
	retf [],0
.L1419:
	cmp_mov 0, r0, a0, d0
	beq .L1409
	jmp .L1427
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, a0, d0
	and 32,d0
	beq .L1429
	mov 0,a1
	asl a0,r2,a0
	mov_mov a1, r0, a0, r1
.L1431:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1429:
	cmp 0,a0
	beq .L1432
	clr d0
	sub a0,d0
	lsr d0,r2,d0
	asl a0,d1
	asl a0,r2,a1
	or d1,d0,a0
	mov_mov a1, r0, a0, r1
	jmp .L1431
.L1432:
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
	beq .L1436
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1438:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1436:
	cmp 0,a0
	beq .L1439
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	asr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1438
.L1439:
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
	bls .L1447
	mov 0,a0
.L1447:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	mov 1,d0
	beq .L1448
	clr d0
.L1448:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub_add d0, a1, d0, a0
	lsr a1,d1
	btst 240,d1
	mov 1,d0
	beq .L1449
	clr d0
.L1449:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	btst 12,d1
	mov 1,a0
	beq .L1450
	mov 0,a0
.L1450:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1452
	sub d1,r1,d0
.L1452:
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
	blt .L1468
	bgt .L1469
	cmp a0,r0
	bcs .L1468
	bhi .L1469
	mov 1,d0
	retf [],0
.L1468:
	clr d0
	retf [],0
.L1469:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	blt .L1477
	bgt .L1476
	cmp a0,r0
	bcs .L1477
	mov 1,d0
	bls .L1480
	retf [],0
.L1477:
	mov -1,d0
	retf [],0
.L1480:
	clr d0
	retf [],0
.L1476:
	mov 1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a0
	beq .L1482
	mov 0,a0
.L1482:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	cmp_mov 0, a1, 1, d0
	beq .L1483
	clr d0
.L1483:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	btst 15,d1
	mov 1,d0
	beq .L1484
	clr d0
.L1484:
	asl2 d0
	add a0,d0,a1
	lsr d0,d1
	btst 3,d1
	mov 1,d0
	beq .L1485
	clr d0
.L1485:
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
	beq .L1501
	mov 0,a1
	lsr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1503:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1501:
	cmp 0,a0
	beq .L1504
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	lsr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1503
.L1504:
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
	beq .L1527
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1524:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, a2, d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp_mov 0, a2, d1, r5
	beq .L1523
.L1525:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,r0
	lsr 31,r0
	add a2,r0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1524
	mov r0,a2
	asr 1,a2
	jmp .L1525
.L1523:
	cmp 0,a3
	blt .L1530
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1527:
	mov_mov a3, a2, d0, r4
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	bne .L1525
	jmp .L1523
.L1530:
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
	beq .L1532
.L1534:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1532:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1533
.L1535:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,a0
	lsr 31,a0
	add d2,a0
	btst 1,d2
	mov d0,d3
	bne .L1534
	mov a0,d2
	asr 1,d2
	jmp .L1535
.L1533:
	cmp 0,a3
	blt .L1540
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1540:
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
	bcs .L1545
	bhi .L1546
	cmp a0,r0
	bcs .L1545
	bhi .L1546
	mov 1,d0
	retf [],0
.L1545:
	clr d0
	retf [],0
.L1546:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	bcs .L1554
	bhi .L1553
	cmp a0,r0
	bcs .L1554
	mov 1,d0
	bls .L1557
	retf [],0
.L1554:
	mov -1,d0
	retf [],0
.L1557:
	clr d0
	retf [],0
.L1553:
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
