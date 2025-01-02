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
	mov_add -1, r1, -1, d1
	add d0,r1
	setlb
.L4:
	movbu (a1,d1),r2
	movbu r2,(a1,r1)
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
	mov a0,d0
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
	jmp .L3
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	mov (16,sp),a0
	movbu (12,sp),r0
	cmp 0,a0
	beq .L43
.L41:
	movbu (d1),a1
	add_add -1, a0, 1, d1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L53
	add_cmp 1, d0, 0, a0
	bne .L41
.L43:
	mov 0,a0
	mov a0,d0
	retf [],0
.L53:
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
	beq .L54
.L55:
	movbu (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L64
	add_cmp 1, d0, 0, a0
	bne .L55
.L54:
	mov a0,d0
	retf [],0
.L64:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L70
.L66:
	movbu (d0),r0
	movbu (d1),a1
	add_add -1, a0, 1, d0
	add_cmp 1, d1, a1, r0
	bne .L78
	cmp 0,a0
	bne .L66
.L70:
	mov a0,d0
	retf [],0
.L78:
	sub a1,r0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L80
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L80:
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
.L87:
	cmp_mov d0, a1, a1, a0
	beq .L92
	movbu (a0),r0
	add_cmp -1, a1, d1, r0
	bne .L87
	mov a0,d0
	retf [],0
.L92:
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
	beq .L96
	mov a0,(12,sp)
	extbu d1
	call +memset,[],0
	mov a0,a1
.L96:
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
	beq .L100
	setlb
.L101:
	movbu (1,d1),d0
	add_add 1, a0, 1, d1
	extbu d0,r0
	cmp 0,r0
	movbu d0,(a0)
	Lne # loop back to: .L101
.L100:
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
	beq .L108
.L109:
	cmp d1,d0
	beq .L108
	movbu (1,a0),d0
	add_cmp 1, a0, 0, d0
	bne .L109
.L108:
	mov a0,d0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d0,a0
.L120:
	movbu (a0),d0
	cmp d1,d0
	beq .L119
	add_cmp 1, a0, 0, d0
	bne .L120
	mov d0,a0
.L119:
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
	bne .L126
.L125:
	cmp 0,a0
	beq .L126
	movbu (a1,d0),a0
	inc a1
	movbu (a1,d1),r0
	extbu a0
	cmp r0,a0
	beq .L125
.L126:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp 0,d1
	beq .L138
	mov d0,a1
	setlb
.L137:
	movbu (1,a1),a0
	add_cmp 1, a1, 0, a0
	Lne # loop back to: .L137
	sub d0,a1,d0
	retf [],0
.L138:
	mov d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L150
	movbu (d0),a0
	cmp 0,a0
	beq .L154
	movbu (d1),a1
	mov_add 1, r1, -1, r0
	add_add d0, r0, d1, r1
	cmp 0,a1
	beq .L145
.L156:
	cmp r0,d0
	beq .L145
	add_cmp 1, d0, a0, a1
	bne .L145
	movbu (d0),a0
	cmp 0,a0
	beq .L155
	mov r1,d1
	movbu (d1),a1
	mov 1,r1
	add_cmp d1, r1, 0, a1
	bne .L156
.L145:
	sub a1,a0,d0
	retf [],0
.L150:
	mov r0,d0
	retf [],0
.L155:
	movbu (1,d1),a1
	sub a1,a0,d0
	retf [],0
.L154:
	movbu (d1),a1
	sub a1,a0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),r0
	cmp 1,r0
	ble .L157
	and -2,r0
	add d0,r0
	setlb
.L159:
	movbu (1,d0),a1
	movbu (d0),a0
	add_add 2, d1, 2, d0
	cmp r0,d0
	movbu a1,(-2,d1)
	movbu a0,(-1,d1)
	Lne # loop back to: .L159
.L157:
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
	bls .L164
	clr d0
.L164:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,d1
	cmp 127,d1
	mov 1,d0
	bls .L168
	clr d0
.L168:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L174
	cmp 9,d0
	mov 1,d1
	beq .L173
	clr d1
.L173:
	mov d1,d0
	retf [],0
.L174:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L183
	cmp 127,d0
	mov 1,d1
	beq .L182
	clr d1
.L182:
	mov d1,d0
	retf [],0
.L183:
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
	bls .L190
	clr d0
.L190:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	cmp 93,d1
	mov 1,d0
	bls .L194
	clr d0
.L194:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L198
	clr d0
.L198:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	cmp 94,d1
	mov 1,d0
	bls .L202
	clr d0
.L202:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L208
	add -9,d0
	cmp_mov 4, d0, 1, d1
	bhi .L211
	mov d1,d0
	retf [],0
.L211:
	clr d1
	mov d1,d0
	retf [],0
.L208:
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
	bls .L213
	clr d0
.L213:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L221
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L224
.L221:
	mov 1,d0
	retf [],0
.L224:
	mov -8232,a0
	add d0,a0
	cmp 1,a0
	bls .L221
	add -65529,d0
	cmp_mov 2, d0, 1, a1
	bls .L218
	clr a1
.L218:
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
	bls .L226
	clr d0
.L226:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L239
	cmp 8231,d0
	bls .L235
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L235
	mov -57344,a0
	add d0,a0
	cmp 8184,a0
	bls .L235
	mov -65532,a1
	add d0,a1
	cmp 1048579,a1
	bhi .L236
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L235:
	mov 1,d0
	retf [],0
.L239:
	inc d0
	mov d0,r0
	and 127,r0
	cmp 32,r0
	mov 1,d0
	bls .L236
	retf [],0
.L236:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L243
	or 32,d0
	add -97,d0
	cmp_mov 5, d0, 1, a0
	bhi .L246
	mov a0,d0
	retf [],0
.L243:
	mov 1,d0
	retf [],0
.L246:
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
	bne .L252
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp_mov 0, d0, d0, r4
	bne .L253
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L256
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L256:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L252:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L253:
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
	bne .L262
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d0, d2
	bne .L263
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L266
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
	ret [d2,d3,a2],24
.L266:
	mov d2,d0
	ret [d2,d3,a2],24
.L262:
	mov d3,d0
	ret [d2,d3,a2],24
.L263:
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
	bne .L275
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L276
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L271
	cmp 0,d0
	bne .L277
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L271:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L278
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
.L282:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L278:
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
	jmp .L282
.L277:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L275:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L276:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
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
	bne .L291
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L283
	mov d3,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L285
	cmp 0,d0
	beq .L294
.L291:
	mov d3,d0
.L283:
	ret [d2,d3],20
.L285:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L291
.L294:
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
	bne .L303
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L304
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L299
	cmp 0,d0
	bne .L305
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L299:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L306
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
.L310:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L306:
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
	jmp .L310
.L305:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L303:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L304:
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
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L313:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L320
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
.L324:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L320:
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
	jmp .L324
.L319:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L317:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L318:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
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
	bne .L331
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d3, d0
	bne .L325
	mov d2,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L327
	cmp 0,d0
	beq .L331
.L333:
	mov d3,d0
.L325:
	ret [d2,d3],20
.L327:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L333
.L331:
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
	bne .L344
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L345
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L340
	cmp 0,d0
	bne .L346
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L340:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L347
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
.L351:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L347:
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
	jmp .L351
.L346:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L344:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L345:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L353
	mov +digits,a1
	setlb
.L354:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),r0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu r0,(-1,d1)
	Lne # loop back to: .L354
.L353:
	mov +s.0,d0
	mov 0,r1
	movbu r1,(d1)
	mov d0,a0
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
	mov (+seed),d1
	mov (+seed+4),d0
	mov 1284865837,r3
	movm [d2],(sp)
	mov 1481765933,d2
	mov r3,r2
	mul d0,r2
	mul d1,d2
	mulu d1,r3,a1,a0
	add_mov d2, r2, 1, r3
	add_mov r2, a1, 0, r2
	add a0,r3
	addc a1,r2
	mov r2,d0
	mov r3,(+seed)
	mov r2,(+seed+4)
	lsr 1,d0
	ret [d2],4
	.size	rand, .-rand
	.global insque
	.type	insque, @function
insque:
	cmp 0,d1
	beq .L371
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L363
	mov d0,(4,d1)
.L363:
	retf [],0
.L371:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L373
	mov (4,d0),a0
	mov a0,(4,d1)
.L373:
	mov (4,d0),d0
	cmp 0,d0
	beq .L372
	mov d1,(d0)
.L372:
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
	beq .L384
	clr r7
	mov d1,d2
.L386:
	mov_mov d2, d1, a3, d0
	mov r5,a1
	calls (a1)
	cmp_mov 0, d0, d2, d3
	beq .L383
	add_add 1, r7, r4, d2
	cmp r7,a2
	bne .L386
.L384:
	mul r4,a2,d0,d3
	mov (60,sp),d0
	add_add 1, a2, r6, d3
	cmp 0,r4
	mov a2,(d0)
	beq .L383
	mov r4,(12,sp)
	mov_mov a3, d1, d3, d0
	call +memmove,[],0
.L383:
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
	beq .L401
	clr d3
	mov d1,d2
.L403:
	mov_mov d2, d1, a2, d0
	mov r4,a1
	calls (a1)
	cmp_mov 0, d0, d2, r6
	beq .L400
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L403
.L401:
	clr r6
.L400:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L417
	retf [],0
.L417:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L425:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L419
	cmp 4,d0
	bls .L419
	cmp 43,a0
	beq .L420
	cmp 45,a0
	bne .L443
	movbu (1,d1),a0
	mov -48,r0
	add_add 1, d1, a0, r0
	cmp 9,r0
	bhi .L430
	mov 1,r2
.L423:
	clr d0
.L427:
	setlb
.L444:
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
	Lls # loop back to: .L444
	cmp 0,r2
	bne .L418
	sub a1,r3,d0
	rets
.L419:
	inc d1
	jmp .L425
.L443:
	mov -48,r1
	clr r2
	add a0,r1
	cmp 9,r1
	bls .L423
.L430:
	clr d0
.L418:
	rets
.L420:
	movbu (1,d1),a0
	mov -48,a1
	clr r2
	add_add 1, d1, a0, a1
	cmp 9,a1
	bhi .L430
	clr d0
	jmp .L427
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	mov d0,d1
.L450:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L446
	cmp 4,d0
	bls .L446
	cmp 43,a0
	beq .L447
	cmp 45,a0
	beq .L448
.L467:
	mov -48,r0
	add a0,r0
	cmp 9,r0
	bhi .L457
	clr r2
.L451:
	clr d0
	setlb
.L454:
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
	Lls # loop back to: .L454
	cmp 0,r2
	beq .L470
	rets
.L446:
	inc d1
	jmp .L450
.L470:
	sub a1,r3,d0
	rets
.L448:
	movbu (1,d1),a0
	mov 1,r2
	mov -48,a1
	add_add r2, d1, a0, a1
	cmp 9,a1
	bls .L451
.L457:
	clr d0
	rets
.L447:
	movbu (1,d1),a0
	inc d1
	jmp .L467
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3],(sp)
.L478:
	movbu (d0),d1
	mov -9,d2
	add d1,d2
	cmp 32,d1
	beq .L472
	cmp 4,d2
	bls .L472
	cmp 43,d1
	beq .L473
	cmp 45,d1
	beq .L474
	mov -48,d2
	add d1,d2
	cmp 9,d2
	bhi .L483
	mov 0,a3
.L476:
	clr r0
	mov 10,d3
	mov r0,r1
.L480:
	setlb
.L495:
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
	Lls # loop back to: .L495
	cmp 0,a3
	bne .L471
	sub a0,r2,r0
	subc a1,r3,r1
.L471:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L472:
	inc d0
	jmp .L478
.L474:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	bhi .L483
	clr r0
	mov 1,a3
	mov 10,d3
	mov r0,r1
	jmp .L480
.L473:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	mov 0,a3
	bls .L476
	mov_mov a3, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L483:
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
.L509:
	cmp 0,d2
	beq .L497
.L512:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	add -1,d2
	sub_cmp r6, d2, 0, d0
	blt .L501
	add a3,d3,a2
	cmp 0,d0
	bne .L509
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],44
.L501:
	mov r6,d2
	cmp 0,d2
	bne .L512
.L497:
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
	mov (68,sp),r4
	mov (72,sp),r5
	mov_mov d0, a3, d1, d3
	beq .L518
.L526:
	mov d2,r7
	asr 1,r7
	mul r7,a2,d0,r6
	mov r5,(12,sp)
	add_mov d3, r6, a3, d0
	mov_mov r6, d1, r4, a0
	calls (a0)
	add -1,d2
	cmp_asr 0, d0, 1, d2
	beq .L513
	ble .L516
	add a2,r6,d3
	cmp 0,d2
	bne .L526
.L518:
	clr r6
.L513:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],48
.L516:
	cmp_mov 0, r7, r7, d2
	bne .L526
	clr r6
	jmp .L513
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
	blt .L538
	mov_mov r0, d0, r1, d1
	retf [d2],4
.L538:
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
	blt .L545
	retf [],0
.L545:
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
	blt .L553
	mov_mov r0, d0, r1, d1
	retf [d2],4
.L553:
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
	beq .L556
.L557:
	cmp a0,d1
	beq .L566
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L557
.L556:
	mov a0,d0
	retf [],0
.L566:
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
	bne .L569
.L568:
	cmp 0,a1
	beq .L569
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L568
.L569:
	cmp r0,a1
	blt .L574
	mov 1,d0
	ble .L579
	retf [],0
.L574:
	mov -1,d0
	retf [],0
.L579:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L581:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L581
	mov a0,d0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L588
	mov d0,a1
	setlb
.L587:
	mov (4,a1),a0
	add_cmp 4, a1, 0, a0
	Lne # loop back to: .L587
	sub d0,a1,d0
	asr 2,d0
	retf [],0
.L588:
	mov d1,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L599
.L593:
	mov (d0),a1
	mov (d1),r0
	add_cmp -1, a0, r0, a1
	bne .L595
	cmp 0,a1
	beq .L595
	add_add 4, d0, 4, d1
	cmp 0,a0
	bne .L593
.L599:
	mov a0,d0
	retf [],0
.L595:
	mov (d0),r1
	mov (d1),d0
	cmp d0,r1
	blt .L605
	cmp_mov d0, r1, 1, a0
	bgt .L599
	mov 0,a0
	mov a0,d0
	retf [],0
.L605:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L606
.L607:
	mov (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L616
	add_cmp 4, d0, 0, a0
	bne .L607
.L606:
	mov a0,d0
	retf [],0
.L616:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L630
.L618:
	mov (d0),r0
	mov (d1),a1
	add_add -1, a0, 4, d0
	add_cmp 4, d1, a1, r0
	bne .L633
	cmp 0,a0
	bne .L618
.L630:
	clr d0
	retf [],0
.L633:
	bge .L623
	mov -1,d0
.L617:
	retf [],0
.L623:
	mov 1,d0
	bgt .L617
	clr d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L635
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L635:
	mov_mov a1, d0, a1, a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L649
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L659
	cmp 0,d0
	beq .L649
	asl2 a1
	setlb
.L646:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L646
.L649:
	mov a0,d0
	retf [],0
.L659:
	clr r2
	cmp r2,d0
	beq .L649
.L644:
	mov (r2,d1),r3
	add -1,a1
	mov r3,(r2,a0)
	add_cmp 4, r2, -1, a1
	beq .L649
	mov (r2,d1),r3
	add -1,a1
	mov r3,(r2,a0)
	add_cmp 4, r2, -1, a1
	bne .L644
	jmp .L649
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L661
	setlb
.L662:
	add -1,a1
	cmp -1,a1
	mov d1,(d0+)
	Lne # loop back to: .L662
.L661:
	mov a0,d0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L670
	cmp 0,a0
	beq .L669
	add_add -1, d0, -1, d1
	setlb
.L672:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L672
	retf [],0
.L670:
	bne .L708
.L669:
	retf [],0
.L708:
	cmp 0,a0
	beq .L669
	mov -1,a1
	add a0,a1
	cmp 6,a1
	bls .L682
	or d0,d1,r2
	and 3,r2
	bne .L682
	mov 1,r0
	add d0,r0
	sub r0,d1,r1
	cmp 2,r1
	bls .L682
	mov a0,r1
	and -4,r1
	setlb
.L676:
	mov (r2,d0),r0
	mov r0,(r2,d1)
	inc4 r2
	cmp r1,r2
	Lne # loop back to: .L676
	sub r2,a0,r3
	add_add r2, d1, r2, d0
	cmp r2,a0
	beq .L669
	movbu (d0),a0
	cmp 1,r3
	movbu a0,(d1)
	beq .L669
	movbu (1,d0),r2
	cmp 2,r3
	movbu r2,(1,d1)
	beq .L669
	movbu (2,d0),d0
	movbu d0,(2,d1)
	retf [],0
.L682:
	mov 0,r3
.L704:
	movbu (r3,d0),a1
	movbu a1,(r3,d1)
	inc r3
	cmp r3,a0
	beq .L669
	movbu (r3,d0),a1
	movbu a1,(r3,d1)
	inc r3
	cmp r3,a0
	bne .L704
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
	beq .L710
	asl a0,r2,d1
.L711:
	not a0
	inc a0
	mov a0,r1
	and 32,r1
	and 63,a0
	clr a1
	cmp 0,r1
	beq .L712
	lsr a0,r3,r0
	or d0,r0,d0
	or d1,a1,d1
	retf [],0
.L712:
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
.L710:
	mov_mov r2, a1, a0, r0
	lsr 1,a1
	not r0
	lsr r0,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L711
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov (12,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	mov 0,d1
	beq .L717
	lsr a0,r3,d0
.L718:
	not a0
	inc a0
	mov a0,r1
	and 32,r1
	and 63,a0
	clr r0
	cmp 0,r1
	beq .L719
	asl a0,r2,r1
	or d0,r0,d0
	or d1,r1,d1
	retf [],0
.L719:
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
.L717:
	mov_mov r3, a1, a0, r0
	add a1,a1
	not r0
	asl r0,a1
	lsr a0,r2,d0
	or a1,d0
	lsr a0,r3,d1
	jmp .L718
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
	mov_mov d0, r4, d0, r6
	add -80,sp
	lsr 24,r6
	mov_mov d0, a3, d1, d0
	mov r6,(sp)
	lsr 8,d0
	and 65280,d0
	mov d1,r3
	mov (sp),a0
	lsr 24,r3
	or d0,r3,d2
	mov d2,(40,sp)
	mov_mov d1, r5, d1, d3
	mov r4,r1
	asl 8,d3
	or_mov a0, d3, r5, r0
	mov (40,sp),a1
	asl 24,r0
	lsr 8,r1
	or_mov r0, r1, d3, d0
	and 16711680,d0
	mov r1,d2
	and -16777216,d2
	or d0,a1
	mov a1,(56,sp)
	or d2,a1
	asl 24,a3
	mov a1,(8,sp)
	extbu d3,a0
	mov a3,(12,sp)
	mov a0,(20,sp)
	lsr 24,d1
	mov d1,(4,sp)
	mov (8,sp),d1
	mov (12,sp),a1
	mov d0,(48,sp)
	mov r4,r2
	mov (20,sp),d0
	mov 0,a2
	asl 8,r2
	mov r2,(76,sp)
	and 16711680,r2
	or a2,d1
	mov a3,(44,sp)
	mov a3,(60,sp)
	mov d2,(64,sp)
	mov d1,(24,sp)
	or d0,a1
	mov a2,(52,sp)
	mov a2,(68,sp)
	mov a2,(16,sp)
	mov a2,(72,sp)
	mov a2,(32,sp)
	mov d3,(sp)
	mov r2,(36,sp)
	mov a1,(28,sp)
	mov (24,sp),r0
	mov (28,sp),r3
	mov (36,sp),r7
	and 65280,r1
	or_mov a2, r0, a2, r6
	or_mov r1, r3, r4, a3
	or_mov r0, r6, r4, d2
	or r3,r7
	lsr 24,a3
	lsr 8,d2
	mov_mov r6, d0, r7, d1
	ret [d2,d3,a2,a3,exreg1],112
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	clr d1
.L748:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L752
	cmp 32,d1
	bne .L748
	mov a0,d0
	retf [],0
.L752:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L753
	and 1,d0
	bne .L753
	mov 1,d0
	setlb
.L755:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L755
	retf [],0
.L753:
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
	blt .L764
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L767
	mov d2,d0
.L761:
	ret [d2],16
.L764:
	mov 1,d0
	ret [d2],16
.L767:
	clr d2
	mov d2,d0
	jmp .L761
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
	blt .L771
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L774
	mov d2,d0
.L768:
	ret [d2,d3,a2],32
.L771:
	mov 1,d0
	ret [d2,d3,a2],32
.L774:
	clr d2
	mov d2,d0
	jmp .L768
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
	blt .L778
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L781
	mov d2,d0
.L775:
	ret [d2,d3,a2],32
.L778:
	mov 1,d0
	ret [d2,d3,a2],32
.L781:
	clr d2
	mov d2,d0
	jmp .L775
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
	bne .L785
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L785
	cmp 0,d2
	blt .L801
	btst 1,d2
	mov 1073741824,d3
	beq .L788
.L789:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L788:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L785
.L790:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,d1
	lsr 31,d1
	add d2,d1
	btst 1,d2
	mov d0,d3
	bne .L789
	mov d1,d2
	asr 1,d2
	jmp .L790
.L785:
	mov a2,d0
	ret [d2,d3,a2],24
.L801:
	btst 1,d2
	mov 1056964608,d3
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
	bne .L803
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L803
	cmp_mov 0, r4, r5, d2
	blt .L819
	btst 1,r4
	mov 1073741824,d3
	beq .L806
.L807:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L806:
	mov r4,a0
	lsr 31,a0
	add a0,r4
	asr 1,r4
	cmp 0,r4
	beq .L803
.L808:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L807
	mov r0,r4
	asr 1,r4
	jmp .L808
.L803:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L819:
	btst 1,r4
	mov 1071644672,d3
	beq .L806
	jmp .L807
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
	bne .L821
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L821
	cmp_mov 0, r4, r5, d2
	blt .L837
	btst 1,r4
	mov 1073741824,d3
	beq .L824
.L825:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L824:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L821
.L826:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L825
	mov r0,r4
	asr 1,r4
	jmp .L826
.L821:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L837:
	btst 1,r4
	mov 1071644672,d3
	beq .L824
	jmp .L825
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L839
	mov -1,d0
	add r2,d0
	cmp 3,d0
	bls .L840
	or d1,a0,a1
	and 3,a1
	bne .L840
	mov r2,r1
	and -4,r1
	setlb
.L841:
	mov (a1,a0),r3
	mov (a1,d1),r0
	xor r3,r0
	mov r0,(a1,a0)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L841
	add a1,a0,d0
	sub a1,r2,r3
	add_cmp a1, d1, a1, r2
	beq .L839
	movbu (d0),r2
	movbu (d1),a1
	xor_cmp a1, r2, 1, r3
	movbu r2,(d0)
	beq .L839
	movbu (1,d0),r1
	movbu (1,d1),r0
	xor_cmp r1, r0, 2, r3
	movbu r0,(1,d0)
	beq .L839
	movbu (2,d0),r3
	movbu (2,d1),d1
	xor r3,d1
	movbu d1,(2,d0)
.L839:
	mov a0,d0
	retf [],0
.L840:
	add_mov d1, r2, a0, d0
.L843:
	movbu (d0),r1
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r1, a1, d1, r2
	movbu a1,(-1,d0)
	beq .L839
	movbu (d0),r1
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r1, a1, d1, r2
	movbu a1,(-1,d0)
	bne .L843
	jmp .L839
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov d0,a0
	movbu (d0),d0
	mov (12,sp),r1
	cmp_mov 0, d0, a0, a1
	beq .L864
	setlb
.L861:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L861
.L864:
	cmp 0,r1
	beq .L863
	movbu (d1),r2
	add_add 1, a1, -1, r1
	inc d1
	movbu r2,(-1,a1)
	extbu r2
	cmp 0,r2
	bne .L864
	mov a0,d0
	retf [],0
.L863:
	clr d1
	mov a0,d0
	movbu d1,(a1)
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L876
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L879
.L876:
	mov a0,d0
	retf [],0
.L879:
	inc a0
	cmp a0,d1
	beq .L876
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L876
	jmp .L879
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L891
.L887:
	mov d1,a1
.L890:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L897
	cmp r1,r0
	bne .L890
	mov a0,d0
	retf [],0
.L897:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L887
.L891:
	mov_mov r1, a0, r1, d0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov 0,a0
.L900:
	movbu (d0),a1
	cmp a1,d1
	beq .L904
	add_cmp 1, d0, 0, a1
	bne .L900
.L905:
	mov a0,d0
	retf [],0
.L904:
	mov_add d0, a0, 1, d0
	cmp 0,a1
	bne .L900
	jmp .L905
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2],(sp)
	movbu (d1),d3
	extbu d3,r3
	cmp 0,r3
	beq .L919
	mov d1,a0
	setlb
.L908:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L908
	sub d1,a0,a2
	cmp d1,a0
	beq .L919
	add -1,a2
	extbu d3
.L925:
	movbu (d0),a0
	cmp r3,a0
	beq .L915
	add_cmp 1, d0, 0, a0
	bne .L925
	mov a0,d0
	retf [d2,d3,a2],12
.L915:
	add a2,d0,d2
	mov_mov d1, r1, d0, a1
	mov d3,r0
.L910:
	cmp d2,a1
	beq .L912
	add_cmp 1, a1, r0, a0
	bne .L913
	movbu (a1),a0
	mov 1,r2
	add_cmp r1, r2, 0, a0
	movbu (1,r1),r0
	beq .L912
	cmp_mov 0, r0, r2, r1
	bne .L910
.L913:
	inc d0
	jmp .L925
.L912:
	cmp r0,a0
	bne .L913
.L919:
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
	blt .L940
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L932
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L931
.L932:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L940:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L932
.L931:
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
	beq .L941
	cmp r1,d1
	bcs .L952
	sub r1,d1
	add d0,d1
	cmp d1,d0
	bhi .L952
	movbu (r3),d2
.L947:
	movbu (a0),d0
	mov 1,r2
	add_cmp a0, r2, d2, d0
	beq .L962
	mov r2,a0
.L943:
	cmp a0,d1
	bcc .L947
.L952:
	mov 0,a0
.L941:
	mov a0,d0
	retf [d2],4
.L962:
	cmp 1,r1
	beq .L941
	mov 1,a1
.L944:
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	bne .L963
.L945:
	cmp r1,a1
	beq .L941
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	beq .L945
.L963:
	cmp r2,d1
	bcs .L952
	movbu (r2),a1
	mov 1,a0
	add_cmp r2, a0, a1, d2
	bne .L943
	mov_mov r2, r0, 1, a1
	mov_mov a0, r2, r0, a0
	jmp .L944
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L965
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L965:
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
	blt .L996
	mov 1072693248,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L997
	clr r6
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
.L980:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L980
.L981:
	mov (64,sp),r3
	cmp 0,a3
	mov r6,(r3)
	beq .L987
	mov -2147483648,a1
	add_mov d3, a1, d2, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L987:
	mov_mov d3, a1, d2, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L997:
	mov 1071644672,d1
	mov a3,(12,sp)
	mov d1,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L977
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L986
.L977:
	mov (64,sp),r0
	clr a1
	mov d2,d0
	mov a1,(r0)
	mov_mov d3, a1, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L996:
	mov -1074790400,a0
	mov a3,(12,sp)
	mov a0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ledf2,[],0
	mov -2147483648,r5
	add_cmp d3, r5, a3, d0
	mov d2,r4
	bgt .L998
	clr r6
	mov_mov r5, d3, 1, a3
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
	jmp .L980
.L998:
	mov -1075838976,r1
	mov a3,(12,sp)
	mov r1,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp a3,d0
	bgt .L984
	mov (64,sp),r2
	mov_mov d3, a1, d2, d0
	mov a3,(r2)
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L984:
	clr r6
	mov 1,a3
	mov 1071644672,a2
	mov_mov r4, d2, r5, d3
	mov r6,r4
.L982:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L981
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L982
	jmp .L981
.L986:
	mov_mov d2, r4, d3, r5
	clr r6
	mov r4,d2
	mov 1071644672,a2
	mov_mov r5, d3, r6, r4
	jmp .L982
	.size	frexp, .-frexp
	.global __muldi3
	.type	__muldi3, @function
__muldi3:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -8,sp
	or d1,d0,a2
	mov (52,sp),a0
	mov (56,sp),r2
	mov d1,a3
	beq .L1003
	clr r4
	mov r4,r5
	setlb
.L1002:
	mov d0,r0
	and 1,r0
	mov d0,d2
	clr r1
	lsr 1,d2
	sub r0,r1,r6
	subc r1,r1,r3
	mov r3,(4,sp)
	mov d1,d3
	mov (4,sp),r7
	asl 31,d3
	or_mov d3, d2, r2, r0
	mov_mov d1, d3, a0, a1
	lsr 1,d3
	add r0,r0
	lsr 31,a1
	and r2,r7
	or a1,r0
	or d3,d2,a2
	mov r6,(sp)
	and_asl a0, r6, 1, a0
	add r6,r4
	addc r7,r5
	cmp_mov r1, a2, r1, a3
	mov_mov d2, d0, d3, d1
	mov r0,r2
	Lne # loop back to: .L1002
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L1003:
	mov_mov a2, r4, a2, r5
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp d0,d1
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bcc .L1009
	mov 32,d0
	mov 1,a0
.L1008:
	add_cmp -1, d0, 0, d1
	blt .L1009
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1010
	cmp 0,d0
	bne .L1008
	cmp 0,r0
	bne .L1025
.L1007:
	retf [],0
.L1010:
	cmp 0,a0
	beq .L1017
.L1009:
	clr d0
.L1014:
	cmp d1,a1
	bcs .L1013
	or_sub a0, d0, d1, a1
.L1013:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1014
	cmp 0,r0
	beq .L1007
.L1025:
	mov a1,d0
	retf [],0
.L1017:
	cmp_mov 0, r0, a0, d0
	beq .L1007
	jmp .L1025
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L1028
	asl 8,d0
	clr d1
	bsch d0, d1
	mov d1,d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1028:
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
	beq .L1041
.L1037:
	clr d0
	cmp 0,r3
	bne .L1042
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L1042:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1041:
	cmp a0,d1
	bne .L1037
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L1046
	clr d0
	setlb
.L1045:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1045
	retf [],0
.L1046:
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2,d3],(sp)
	mov (20,sp),d3
	mov_mov d3, a1, d3, d2
	and -8,a1
	cmp_lsr d1, d0, 3, d2
	bcs .L1051
	add d3,d1,a0
	cmp a0,d0
	bls .L1083
.L1051:
	cmp 0,d2
	beq .L1054
	mov_asl 0, a0, 3, d2
	setlb
.L1055:
	mov (a0,d1),r0
	add a0,d1,r3
	mov (4,r3),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp d2,a0
	mov r1,(4,r2)
	Lne # loop back to: .L1055
	cmp a1,d3
	bls .L1050
	sub a1,d3,r3
	mov -1,a0
	add r3,a0
	cmp 6,a0
	bls .L1076
	mov 1,r0
	add a1,d0,d2
	add a1,r0
	add d1,r0
	sub r0,d2,r1
	add a1,d1,r2
	cmp 2,r1
	bls .L1076
	or d2,r2,a0
	and 3,a0
	bne .L1076
	mov r3,r1
	and -4,r1
	setlb
.L1060:
	mov (a0,r2),r0
	mov r0,(a0,d2)
	inc4 a0
	cmp a0,r1
	Lne # loop back to: .L1060
	add_cmp r1, a1, r3, r1
	beq .L1050
	movbu (a1,d1),d2
	mov 1,r2
	add a1,r2
	cmp r2,d3
	movbu d2,(a1,d0)
	bls .L1050
	movbu (r2,d1),d2
	add 2,a1
	cmp a1,d3
	movbu d2,(r2,d0)
	bls .L1050
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1050:
	retf [d2,d3],8
.L1054:
	cmp 0,d3
	beq .L1050
.L1076:
	movbu (a1,d1),r3
	movbu r3,(a1,d0)
	inc a1
	cmp a1,d3
	beq .L1050
	movbu (a1,d1),r3
	movbu r3,(a1,d0)
	inc a1
	cmp a1,d3
	bne .L1076
	jmp .L1050
.L1083:
	mov -1,r0
	add_cmp d3, r0, 0, d3
	beq .L1050
.L1052:
	movbu (r0,d1),r1
	movbu r1,(r0,d0)
	add -1,r0
	cmp -1,r0
	beq .L1050
	movbu (r0,d1),r1
	movbu r1,(r0,d0)
	add -1,r0
	cmp -1,r0
	bne .L1052
	jmp .L1050
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r0
	mov r0,r2
	cmp_lsr d1, d0, 1, r2
	bcs .L1085
	add r0,d1,a0
	cmp a0,d0
	bls .L1116
.L1085:
	cmp 0,r2
	beq .L1088
	mov -1,r3
	add r2,r3
	cmp 8,r3
	bls .L1089
	or d0,d1,a0
	and 3,a0
	bne .L1089
	mov 2,a1
	add d1,a1
	xor d0,a1
	clr r1
	sub a1,r1
	or r1,a1
	bnc .L1089
	mov_mov r0, r1, r0, r3
	and -4,r1
	lsr 2,r3
	setlb
.L1091:
	mov (a0,d1),a1
	mov a1,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1091
	mov r3,a0
	add a0,a0
	cmp a0,r2
	beq .L1088
	asl2 r3
	movhu (r3,d1),r2
	movhu r2,(r3,d0)
.L1088:
	btst 1,r0
	beq .L1084
	add -1,r0
	movbu (r0,d1),d1
	movbu d1,(r0,d0)
	retf [],0
.L1116:
	mov -1,r1
	add_cmp r0, r1, 0, r0
	beq .L1084
	setlb
.L1086:
	movbu (r1,d1),a1
	movbu a1,(r1,d0)
	add -1,r1
	cmp -1,r1
	Lne # loop back to: .L1086
.L1084:
	retf [],0
.L1089:
	mov_asl 0, r1, 1, r2
.L1093:
	movhu (r1,d1),r3
	movhu r3,(r1,d0)
	add 2,r1
	cmp r2,r1
	beq .L1088
	movhu (r1,d1),r3
	movhu r3,(r1,d0)
	add 2,r1
	cmp r2,r1
	bne .L1093
	jmp .L1088
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	movm [d2,d3],(sp)
	mov (20,sp),r2
	mov_mov r2, a1, r2, r1
	and -4,a1
	cmp_lsr d1, d0, 2, r1
	bcs .L1118
	add r2,d1,a0
	cmp a0,d0
	bls .L1150
.L1118:
	cmp 0,r1
	beq .L1121
	mov_asl 0, a0, 2, r1
	setlb
.L1122:
	mov (a0,d1),r0
	mov r0,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1122
	cmp a1,r2
	bls .L1117
	sub a1,r2,d3
	mov -1,r1
	add d3,r1
	cmp 6,r1
	bls .L1143
	mov 1,r3
	add a1,d0,r1
	add a1,r3
	add d1,r3
	sub r3,r1,a0
	add a1,d1,d2
	cmp 2,a0
	bls .L1143
	or r1,d2,a0
	and 3,a0
	bne .L1143
	mov d3,r3
	and -4,r3
	setlb
.L1127:
	mov (a0,d2),r0
	mov r0,(a0,r1)
	inc4 a0
	cmp a0,r3
	Lne # loop back to: .L1127
	add_cmp r3, a1, d3, r3
	beq .L1117
	movbu (a1,d1),d2
	mov 1,r1
	add a1,r1
	cmp r1,r2
	movbu d2,(a1,d0)
	bls .L1117
	movbu (r1,d1),d2
	add 2,a1
	cmp a1,r2
	movbu d2,(r1,d0)
	bls .L1117
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1117:
	retf [d2,d3],8
.L1121:
	cmp 0,r2
	beq .L1117
.L1143:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a1,r2
	beq .L1117
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a1,r2
	bne .L1143
	jmp .L1117
.L1150:
	mov -1,r0
	add_cmp r2, r0, 0, r2
	beq .L1117
.L1119:
	movbu (r0,d1),r3
	movbu r3,(r0,d0)
	add -1,r0
	cmp -1,r0
	beq .L1117
	movbu (r0,d1),r3
	movbu r3,(r0,d0)
	add -1,r0
	cmp -1,r0
	bne .L1119
	jmp .L1117
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
	bne .L1166
	mov d1,d0
	asr 14,d0
	cmp 0,d0
	bne .L1163
	mov d1,a0
	asr 13,a0
	cmp 0,a0
	bne .L1167
	mov d1,a1
	asr 12,a1
	cmp 0,a1
	bne .L1168
	mov d1,r0
	asr 11,r0
	cmp 0,r0
	bne .L1169
	mov d1,r1
	asr 10,r1
	cmp 0,r1
	bne .L1170
	mov d1,r2
	asr 9,r2
	cmp 0,r2
	bne .L1171
	mov d1,r3
	asr 8,r3
	cmp 0,r3
	bne .L1172
	mov d1,d0
	asr 7,d0
	cmp 0,d0
	bne .L1173
	mov d1,a0
	asr 6,a0
	cmp 0,a0
	bne .L1174
	mov d1,a1
	asr 5,a1
	cmp 0,a1
	bne .L1175
	mov d1,r0
	asr 4,r0
	cmp 0,r0
	bne .L1176
	mov d1,r1
	asr 3,r1
	cmp 0,r1
	bne .L1177
	mov d1,r2
	asr 2,r2
	cmp 0,r2
	bne .L1178
	mov d1,r3
	asr 1,r3
	cmp 0,r3
	bne .L1179
	cmp 0,d1
	mov 16,d0
	bne .L1184
.L1163:
	retf [],0
.L1166:
	clr d0
	retf [],0
.L1177:
	mov 12,d0
	retf [],0
.L1184:
	mov 15,d0
	retf [],0
.L1167:
	mov 2,d0
	retf [],0
.L1168:
	mov 3,d0
	retf [],0
.L1169:
	mov 4,d0
	retf [],0
.L1170:
	mov 5,d0
	retf [],0
.L1171:
	mov 6,d0
	retf [],0
.L1172:
	mov 7,d0
	retf [],0
.L1173:
	mov 8,d0
	retf [],0
.L1174:
	mov 9,d0
	retf [],0
.L1175:
	mov 10,d0
	retf [],0
.L1176:
	mov 11,d0
	retf [],0
.L1178:
	mov 13,d0
	retf [],0
.L1179:
	mov 14,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	btst 1,d0
	bne .L1188
	mov d0,d1
	and 2,d1
	bne .L1189
	mov d0,a0
	and 4,a0
	bne .L1190
	mov d0,a1
	and 8,a1
	bne .L1191
	mov d0,r0
	and 16,r0
	bne .L1192
	mov d0,r1
	and 32,r1
	bne .L1193
	mov d0,r2
	and 64,r2
	bne .L1194
	mov d0,r3
	and 128,r3
	bne .L1195
	mov d0,d1
	and 256,d1
	bne .L1196
	mov d0,a0
	and 512,a0
	bne .L1197
	mov d0,a1
	and 1024,a1
	bne .L1198
	mov d0,r0
	and 2048,r0
	bne .L1199
	mov d0,r1
	and 4096,r1
	bne .L1200
	mov d0,r2
	and 8192,r2
	bne .L1201
	mov d0,r3
	and 16384,r3
	bne .L1202
	exthu d0,d1
	asr 15,d1
	cmp 0,d1
	mov 16,d0
	bne .L1207
	retf [],0
.L1188:
	clr d0
	retf [],0
.L1189:
	mov 1,d0
	retf [],0
.L1200:
	mov 12,d0
	retf [],0
.L1207:
	mov 15,d0
	retf [],0
.L1190:
	mov 2,d0
	retf [],0
.L1191:
	mov 3,d0
	retf [],0
.L1192:
	mov 4,d0
	retf [],0
.L1193:
	mov 5,d0
	retf [],0
.L1194:
	mov 6,d0
	retf [],0
.L1195:
	mov 7,d0
	retf [],0
.L1196:
	mov 8,d0
	retf [],0
.L1197:
	mov 9,d0
	retf [],0
.L1198:
	mov 10,d0
	retf [],0
.L1199:
	mov 11,d0
	retf [],0
.L1201:
	mov 13,d0
	retf [],0
.L1202:
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
	bge .L1216
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1216:
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
	mov d1,r2
	and 1,r1
	add a1,d0
	asr 10,r2
	mov d1,r3
	and 1,r2
	add r0,d0
	asr 11,r3
	and 1,r3
	add r1,d0
	add_mov r2, d0, d1, a0
	add r3,d0
	asr 12,a0
	and 1,a0
	mov d1,a1
	asr 13,a1
	mov d1,r0
	and 1,a1
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
	mov a0,r1
	and 1,r0
	add d1,d0
	asr 10,r1
	mov a0,r2
	and 1,r1
	add a1,d0
	asr 11,r2
	and 1,r2
	add r0,d0
	add_mov r1, d0, a0, r3
	add r2,d0
	asr 12,r3
	and 1,r3
	mov a0,d1
	asr 13,d1
	and 1,d1
	mov_add a0, a1, r3, d0
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
	beq .L1224
	clr d0
	setlb
.L1223:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1223
	retf [],0
.L1224:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1231
	cmp 0,d1
	beq .L1232
	clr d0
	setlb
.L1230:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1230
	retf [],0
.L1231:
	retf [],0
.L1232:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1238
	mov 32,d0
	mov 1,a0
.L1237:
	add_cmp -1, d0, 0, d1
	blt .L1238
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1239
	cmp 0,d0
	bne .L1237
	cmp 0,r0
	bne .L1254
.L1236:
	retf [],0
.L1239:
	cmp 0,a0
	beq .L1246
.L1238:
	clr d0
.L1243:
	cmp d1,a1
	bcs .L1242
	or_sub a0, d0, d1, a1
.L1242:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1243
	cmp 0,r0
	beq .L1236
.L1254:
	mov a1,d0
	retf [],0
.L1246:
	cmp_mov 0, r0, a0, d0
	beq .L1236
	jmp .L1254
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L1258
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1261
	mov d2,d0
.L1255:
	ret [d2,d3],20
.L1261:
	clr d2
	mov d2,d0
	jmp .L1255
.L1258:
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
	blt .L1265
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1268
	mov d2,d0
.L1262:
	ret [d2,d3,a2,a3],36
.L1268:
	clr d2
	mov d2,d0
	jmp .L1262
.L1265:
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
	blt .L1289
	beq .L1279
	clr r2
	clr d0
	mov 32,a1
.L1278:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1277
	cmp 0,r1
	bne .L1278
.L1277:
	cmp 0,r2
	beq .L1273
	not d0
	inc d0
	retf [],0
.L1279:
	mov d1,d0
.L1273:
	retf [],0
.L1289:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1278
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1310
	clr r1
	cmp_mov 0, d1, 1, a0
	blt .L1311
.L1292:
	cmp_mov d1, d0, 1, r2
	mov d0,r0
	bls .L1294
	mov 32,a1
	mov 1,r2
.L1293:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, r2
	bls .L1297
	cmp 0,a1
	bne .L1293
.L1297:
	cmp_mov 0, r2, r2, d0
	beq .L1295
.L1294:
	clr d0
.L1299:
	cmp d1,r0
	bcs .L1298
	or_sub r2, d0, d1, r0
.L1298:
	lsr 1,r2
	cmp_lsr 0, r2, 1, d1
	bne .L1299
.L1295:
	cmp 0,r1
	beq .L1290
	not d0
	inc d0
.L1290:
	retf [],0
.L1311:
	not d1
	add_mov 1, d1, a0, r1
	jmp .L1292
.L1310:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 0, a0, 1, r1
	bge .L1292
	jmp .L1311
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1333
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1334
.L1314:
	cmp_mov d1, d0, 1, a0
	bls .L1330
	mov 32,a1
	mov 1,a0
.L1315:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1319
	cmp 0,a1
	bne .L1315
.L1319:
	cmp 0,a0
	beq .L1317
.L1330:
	cmp_lsr d1, r0, 1, a0
	bcs .L1320
	sub d1,r0
.L1320:
	cmp_lsr 0, a0, 1, d1
	bne .L1330
	mov r0,d0
.L1317:
	cmp 0,r1
	beq .L1312
	not d0
	inc d0
.L1312:
	retf [],0
.L1334:
	not d1
	inc d1
	jmp .L1314
.L1333:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1314
	jmp .L1334
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
	bcc .L1451
	exth d1,a0
	cmp 0,a0
	blt .L1338
	mov d1,r3
	add r3,r3
	exthu r3,d0
	cmp d0,r2
	exthu r3,a1
	bls .L1339
	exth r3,a0
	cmp 0,a0
	blt .L1340
	mov d1,d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1341
	exth d0,r3
	cmp 0,r3
	blt .L1342
	mov d1,d0
	asl2 d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1343
	exth d0,r3
	cmp 0,r3
	blt .L1344
	mov d1,d0
	asl2 d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1345
	exth d0,r3
	cmp 0,r3
	blt .L1346
	mov d1,d0
	asl 5,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1347
	exth d0,r3
	cmp 0,r3
	blt .L1348
	mov d1,d0
	asl 6,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1349
	exth d0,r3
	cmp 0,r3
	blt .L1350
	mov d1,d0
	asl 7,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1351
	exth d0,r3
	cmp 0,r3
	blt .L1352
	mov d1,d0
	asl 8,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1353
	exth d0,r3
	cmp 0,r3
	blt .L1354
	mov d1,d0
	asl 9,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1355
	exth d0,r3
	cmp 0,r3
	blt .L1356
	mov d1,d0
	asl 10,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1357
	exth d0,d2
	cmp 0,d2
	blt .L1358
	mov d1,r3
	asl 11,r3
	exthu r3,a0
	cmp a0,r2
	exthu r3,a1
	bls .L1359
	exth r3,d2
	cmp 0,d2
	blt .L1360
	mov d1,d0
	asl 12,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1361
	exth d0,d2
	cmp 0,d2
	blt .L1362
	mov d1,r3
	asl 13,r3
	exthu r3,a0
	cmp a0,r2
	exthu r3,a1
	bls .L1363
	exth r3,d2
	cmp 0,d2
	blt .L1364
	mov d1,d0
	asl 14,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1365
	exth d0,d2
	cmp 0,d2
	blt .L1366
	asl 15,d1
	exthu d1,a1
	cmp a1,r2
	bls .L1367
	cmp 0,a1
	mov r1,d0
	bne .L1452
.L1368:
	cmp 0,r0
	bne .L1335
	mov d1,d0
.L1335:
	retf [d2],4
.L1355:
	bcs .L1401
	sub d0,r1,d0
	mov 512,r2
	mov 512,d1
.L1370:
	mov_mov r2, r1, a1, a0
	lsr 2,r1
	cmp_lsr 0, r1, 2, a0
	mov r1,r3
	beq .L1368
	exthu d0,r1
	cmp a0,r1
	bcs .L1371
	or_sub r3, d1, a0, d0
.L1371:
	mov_mov r2, r1, a1, a0
	lsr 3,r1
	cmp_lsr 0, r1, 3, a0
	beq .L1368
	exthu d0,d2
	cmp a0,d2
	bcs .L1372
	or_sub r1, d1, a0, d0
.L1372:
	mov_mov r2, r1, a1, r3
	lsr 4,r1
	cmp_lsr 0, r1, 4, r3
	mov r1,d2
	beq .L1368
	exthu d0,a0
	cmp r3,a0
	bcs .L1373
	or_sub r1, d1, r3, d0
.L1373:
	mov_mov r2, r1, a1, r3
	lsr 5,r1
	cmp_lsr 0, r1, 5, r3
	mov r1,d2
	beq .L1368
	exthu d0,a0
	cmp r3,a0
	bcs .L1374
	or_sub r1, d1, r3, d0
.L1374:
	mov_mov r2, r1, a1, a0
	lsr 6,r1
	cmp_lsr 0, r1, 6, a0
	beq .L1368
	exthu d0,d2
	cmp a0,d2
	bcs .L1375
	or_sub r1, d1, a0, d0
.L1375:
	mov_mov r2, d2, a1, r3
	lsr 7,d2
	cmp_lsr 0, d2, 7, r3
	beq .L1368
	exthu d0,a0
	cmp r3,a0
	bcs .L1376
	or_sub d2, d1, r3, d0
.L1376:
	mov_mov r2, d2, a1, r3
	lsr 8,d2
	lsr 8,r3
	cmp_mov 0, d2, d2, r1
	beq .L1368
	exthu d0,d2
	cmp r3,d2
	bcs .L1377
	or_sub r1, d1, r3, d0
.L1377:
	mov_mov r2, d2, a1, a0
	lsr 9,d2
	lsr 9,a0
	cmp 0,d2
	beq .L1368
	exthu d0,r3
	cmp a0,r3
	bcs .L1378
	or_sub d2, d1, a0, d0
.L1378:
	mov_mov r2, d2, a1, a0
	lsr 10,d2
	lsr 10,a0
	cmp_mov 0, d2, d2, r1
	beq .L1368
	exthu d0,d2
	cmp a0,d2
	bcs .L1379
	or_sub r1, d1, a0, d0
.L1379:
	mov_mov r2, d2, a1, r1
	lsr 11,d2
	lsr 11,r1
	cmp 0,d2
	beq .L1368
	exthu d0,a0
	cmp r1,a0
	bcs .L1380
	or_sub d2, d1, r1, d0
.L1380:
	mov_mov r2, d2, a1, r1
	lsr 12,d2
	lsr 12,r1
	cmp_mov 0, d2, d2, r3
	beq .L1368
	exthu d0,d2
	cmp r1,d2
	bcs .L1381
	or_sub r3, d1, r1, d0
.L1381:
	mov_mov r2, d2, a1, a0
	lsr 13,d2
	lsr 13,a0
	cmp 0,d2
	beq .L1368
	exthu d0,r1
	cmp a0,r1
	bcs .L1382
	or_sub d2, d1, a0, d0
.L1382:
	mov_mov r2, d2, a1, a0
	lsr 14,d2
	lsr 14,a0
	cmp_mov 0, d2, d2, r3
	beq .L1368
	exthu d0,d2
	cmp a0,d2
	bcs .L1383
	or_sub r3, d1, a0, d0
.L1383:
	lsr 15,a1
	cmp 16384,r2
	beq .L1368
	exthu d0,r2
	cmp a1,r2
	bcs .L1391
	or 1,d1
	sub a1,d0
	jmp .L1368
.L1452:
	mov 32768,r2
	mov -32768,d0
	mov 16384,a0
	mov a0,d2
	add r1,d0
	mov -32768,d1
	mov r2,a1
.L1388:
	exthu d0,r1
	exthu a0,r3
	cmp r3,r1
	bcs .L1370
	or_sub d2, d1, a0, d0
	jmp .L1370
.L1391:
	clr d0
	jmp .L1368
.L1451:
	beq .L1389
	mov r1,d0
	clr d1
	jmp .L1368
.L1338:
	sub d1,r1,d0
	mov 1,d1
	jmp .L1368
.L1339:
	bcs .L1393
	sub r3,r1,d0
	mov 2,r2
	mov 2,d1
	jmp .L1370
.L1340:
	mov d1,a0
	sub r3,r1,d0
	and 32767,a0
	mov 2,r2
	mov 1,d2
	mov 2,d1
	jmp .L1388
.L1341:
	bcs .L1394
	sub d0,r1,d0
	mov 4,r2
	mov 4,d1
	jmp .L1370
.L1342:
	sub d0,r1,d0
	mov_lsr 4, r2, 1, a0
	mov 2,d2
	mov 4,d1
	jmp .L1388
.L1343:
	bcs .L1395
	sub d0,r1,d0
	mov 8,r2
	mov 8,d1
	jmp .L1370
.L1344:
	sub d0,r1,d0
	mov 8,r2
	lsr 1,a0
	mov 4,d2
	mov 8,d1
	jmp .L1388
.L1345:
	bcs .L1396
	sub d0,r1,d0
	mov 16,r2
	mov 16,d1
	jmp .L1370
.L1346:
	sub d0,r1,d0
	mov 16,r2
	lsr 1,a0
	mov 8,d2
	mov 16,d1
	jmp .L1388
.L1347:
	bcs .L1397
	sub d0,r1,d0
	mov 32,r2
	mov 32,d1
	jmp .L1370
.L1348:
	sub d0,r1,d0
	mov 32,r2
	lsr 1,a0
	mov 16,d2
	mov 32,d1
	jmp .L1388
.L1349:
	bcs .L1398
	sub d0,r1,d0
	mov 64,r2
	mov 64,d1
	jmp .L1370
.L1350:
	sub d0,r1,d0
	mov 64,r2
	lsr 1,a0
	mov 32,d2
	mov 64,d1
	jmp .L1388
.L1351:
	bcs .L1399
	sub d0,r1,d0
	movu 128,r2
	mov 128,d1
	jmp .L1370
.L1352:
	sub d0,r1,d0
	movu 128,r2
	lsr 1,a0
	mov 64,d2
	mov 128,d1
	jmp .L1388
.L1354:
	sub d0,r1,d0
	mov 256,r2
	lsr 1,a0
	mov 128,d2
	mov 256,d1
	jmp .L1388
.L1389:
	mov 1,d1
	clr d0
	jmp .L1368
.L1356:
	sub d0,r1,d0
	mov 512,r2
	lsr 1,a0
	mov 256,d2
	mov 512,d1
	jmp .L1388
.L1393:
	mov_mov 2, r2, a1, a0
	mov r2,d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1358:
	sub d0,r1,d0
	mov 1024,r2
	lsr 1,a0
	mov 512,d2
	mov 1024,d1
	jmp .L1388
.L1394:
	mov_mov 4, r2, a1, a0
	mov r2,d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1360:
	sub r3,r1,d0
	mov 2048,r2
	lsr 1,a0
	mov 1024,d2
	mov 2048,d1
	jmp .L1388
.L1395:
	mov 8,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1362:
	sub d0,r1,d0
	mov 4096,r2
	lsr 1,a0
	mov 2048,d2
	mov 4096,d1
	jmp .L1388
.L1364:
	sub r3,r1,d0
	mov 8192,r2
	lsr 1,a0
	mov 4096,d2
	mov 8192,d1
	jmp .L1388
.L1396:
	mov 16,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1366:
	sub d0,r1,d0
	mov 16384,r2
	lsr 1,a0
	mov 8192,d2
	mov 16384,d1
	jmp .L1388
.L1397:
	mov 32,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1398:
	mov 64,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1367:
	exth r1,d1
	cmp 0,d1
	blt .L1392
	mov 32768,a1
	exthu a1,r2
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1399:
	movu 128,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1353:
	bcs .L1400
	sub d0,r1,d0
	mov 256,r2
	mov 256,d1
	jmp .L1370
.L1392:
	mov 32768,r2
	mov -32768,d1
	clr d0
	mov r2,a1
	jmp .L1370
.L1400:
	mov 256,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1363:
	bcs .L1405
	sub r3,r1,d0
	mov 8192,r2
	mov 8192,d1
	jmp .L1370
.L1357:
	bcs .L1402
	sub d0,r1,d0
	mov 1024,r2
	mov 1024,d1
	jmp .L1370
.L1405:
	mov 8192,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1402:
	mov 1024,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1401:
	mov 512,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1361:
	bcs .L1404
	sub d0,r1,d0
	mov 4096,r2
	mov 4096,d1
	jmp .L1370
.L1359:
	bcs .L1403
	sub r3,r1,d0
	mov 2048,r2
	mov 2048,d1
	jmp .L1370
.L1365:
	bcs .L1406
	sub d0,r1,d0
	mov 16384,r2
	mov 16384,d1
	jmp .L1370
.L1404:
	mov 4096,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1403:
	mov 2048,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
.L1406:
	mov 16384,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1388
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1455
	mov 32,d0
	mov 1,a0
.L1454:
	add_cmp -1, d0, 0, d1
	blt .L1455
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1456
	cmp 0,d0
	bne .L1454
	cmp 0,r0
	bne .L1471
.L1453:
	retf [],0
.L1456:
	cmp 0,a0
	beq .L1463
.L1455:
	clr d0
.L1460:
	cmp d1,a1
	bcs .L1459
	or_sub a0, d0, d1, a1
.L1459:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1460
	cmp 0,r0
	beq .L1453
.L1471:
	mov a1,d0
	retf [],0
.L1463:
	cmp_mov 0, r0, a0, d0
	beq .L1453
	jmp .L1471
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L1473
	mov 0,a1
	asl a0,r2,a0
	mov_mov a0, r3, a1, r2
.L1475:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1473:
	cmp 0,a0
	beq .L1475
	clr d1
	sub a0,d1
	lsr d1,r2,r0
	asl a0,r3,r1
	asl a0,r2,a1
	or r1,r0,a0
	mov_mov a1, r2, a0, r3
	jmp .L1475
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov (12,sp),a0
	mov_mov d0, r0, d1, r1
	mov a0,d0
	and 32,d0
	beq .L1480
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r0, a1, r1
.L1482:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1480:
	cmp 0,a0
	beq .L1482
	clr d1
	sub a0,d1
	asl d1,r1,r2
	lsr a0,r0,r3
	asr a0,r1,a1
	or r3,r2,a0
	mov_mov a0, r0, a1, r1
	jmp .L1482
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d0, r4, d0, r0
	add -88,sp
	lsr 24,r0
	mov r0,(sp)
	mov d1,d0
	lsr 8,d0
	mov 0,a1
	mov (sp),d3
	and 65280,d0
	mov d1,a0
	lsr 24,a0
	mov a1,a3
	mov a1,(60,sp)
	mov a1,(76,sp)
	mov_mov a1, r6, d1, r1
	or d0,a0,a1
	mov a1,(48,sp)
	asl 8,r1
	or_mov r1, d3, r4, r3
	mov d1,r2
	mov d3,(sp)
	lsr 8,r3
	mov d3,d0
	asl 24,r2
	mov (48,sp),d3
	or r2,r3
	and 16711680,d0
	mov r3,a2
	and -16777216,a2
	or d0,d3
	mov d3,(64,sp)
	or a2,d3
	mov d3,(8,sp)
	mov r4,r0
	lsr 24,r0
	mov (8,sp),a1
	or r0,r1
	extbu r1,a0
	mov r4,d3
	mov d0,(56,sp)
	mov a0,(20,sp)
	asl 8,d3
	mov r3,d0
	mov d3,(84,sp)
	and 65280,d0
	and 16711680,d3
	mov_mov r4, r7, d1, d2
	asl 24,r7
	mov (20,sp),r1
	mov a2,(72,sp)
	lsr 24,d2
	or_mov a3, a1, a3, a2
	mov a3,(16,sp)
	mov a3,(24,sp)
	mov a3,(80,sp)
	mov a3,(40,sp)
	mov d2,(4,sp)
	mov d3,(44,sp)
	mov d0,(28,sp)
	or a1,a2
	mov r7,(52,sp)
	mov r7,(68,sp)
	mov r7,(12,sp)
	mov a2,(32,sp)
	mov (44,sp),d2
	mov r7,d3
	or r1,d3
	or d3,d0
	or a3,a2
	or d2,d0,a3
	mov d0,(36,sp)
	mov_mov d1, r5, a2, d0
	mov a3,d1
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
	bls .L1491
	mov 0,a0
.L1491:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,r2
	btst 65280,r2
	mov 1,a1
	beq .L1492
	mov 0,a1
.L1492:
	mov a1,d0
	asl2 d0
	add d0,d0
	mov 8,r0
	sub_add d0, r0, d0, a0
	lsr r0,r2
	btst 240,r2
	mov 1,r1
	beq .L1493
	clr r1
.L1493:
	mov_asl 4, r3, 2, r1
	sub r1,r3
	add a0,r1,d1
	lsr r3,r2
	btst 12,r2
	mov 1,a0
	beq .L1494
	mov 0,a0
.L1494:
	mov_asl 2, a1, 1, a0
	sub a0,a1,d0
	lsr d0,r2
	mov r2,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1496
	sub r2,a1,d0
.L1496:
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
	blt .L1512
	bgt .L1513
	cmp a0,r0
	bcs .L1512
	bhi .L1513
	mov 1,d0
	retf [],0
.L1512:
	clr d0
	retf [],0
.L1513:
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
	blt .L1521
	bgt .L1520
	cmp a0,r0
	bcs .L1521
	mov 1,d0
	bls .L1524
	retf [],0
.L1521:
	mov -1,d0
	retf [],0
.L1524:
	clr d0
	retf [],0
.L1520:
	mov 1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a1
	beq .L1526
	mov 0,a1
.L1526:
	asl 4,a1
	lsr a1,d0,r1
	extbu r1,d0
	cmp_mov 0, d0, 1, a0
	beq .L1527
	mov 0,a0
.L1527:
	asl 3,a0
	add_lsr a0, a1, a0, r1
	btst 15,r1
	mov 1,r0
	beq .L1528
	clr r0
.L1528:
	asl2 r0
	add_lsr r0, a1, r0, r1
	btst 3,r1
	mov 1,d0
	beq .L1529
	clr d0
.L1529:
	add d0,d0
	lsr d0,r1
	and 3,r1
	mov r1,r3
	not r3
	and 1,r3
	mov_lsr 2, r2, 1, r1
	clr d1
	sub_sub r1, r2, r3, d1
	and_add r2, d1, a1, d0
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
	beq .L1545
	mov 0,r0
	lsr a0,d1,a0
	mov_mov a0, a1, r0, r1
.L1547:
	mov_mov a1, d0, r1, d1
	retf [],0
.L1545:
	cmp 0,a0
	beq .L1548
	clr d0
	sub a0,d0
	lsr a0,r0,r3
	asl d0,d1,r2
	lsr a0,d1,r0
	or r3,r2,a0
	mov_mov a0, a1, r0, r1
	jmp .L1547
.L1548:
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
	mov d1,r3
	exthu d0,d1
	exthu r0,a3
	mul d1,a3,a0,a1
	mov d0,a2
	lsr 16,a2
	mul a2,a3
	mov_mov r0, a0, d0, r2
	lsr 16,a0
	mov a1,d0
	lsr 16,d0
	mul a0,d1
	add d0,a3
	mul a0,a2
	mov (32,sp),r1
	exthu a3,d2
	add d2,d1
	lsr 16,a3
	add_mov a2, a3, d1, d3
	lsr 16,d1
	add d1,a3
	mul r2,r1,d0,d1
	mul r3,r0
	asl 16,d3
	exthu a1
	add d3,a1,d2
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
	mov_mov d0, a0, d0, r0
	mov d1,d0
	asl 31,d0
	lsr 1,r0
	or_mov d0, r0, d1, r1
	and 1431655765,r0
	lsr 1,r1
	and 1431655765,r1
	movm [d2,d3,a2,a3],(sp)
	sub r0,a0,d2
	subc r1,d1,d3
	mov_mov d3, d1, d2, r2
	asl 30,d1
	lsr 2,r2
	or_mov d1, r2, d3, r3
	and 858993459,r2
	and 858993459,d2
	lsr 2,r3
	and 858993459,r3
	and 858993459,d3
	add d2,r2,a2
	addc d3,r3,a3
	mov_mov a3, a0, a2, a1
	asl 28,a0
	mov_lsr a3, d0, 4, a1
	or_lsr a0, a1, 4, d0
	add a1,a2
	addc a3,d0,a3
	mov a3,d3
	and 252645135,d3
	mov a2,d2
	and 252645135,d2
	mov d3,r0
	add d2,r0
	mov r0,r1
	lsr 16,r1
	add r0,r1
	mov r1,d0
	lsr 8,d0
	add r1,d0
	and 127,d0
	retf [d2,d3,a2,a3],16
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
	beq .L1571
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1568:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d1, r5, a2, d1
	lsr 31,d1
	add d1,a2
	asr 1,a2
	cmp_mov 0, a2, d0, r4
	beq .L1567
.L1569:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,a0
	lsr 31,a0
	add a2,a0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1568
	mov a0,a2
	asr 1,a2
	jmp .L1569
.L1567:
	cmp 0,a3
	blt .L1574
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1571:
	mov_mov a3, a2, a3, d1
	lsr 31,d1
	add d1,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	mov d0,r4
	bne .L1569
	jmp .L1567
.L1574:
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
	beq .L1576
.L1578:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1576:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1577
.L1579:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,a0
	lsr 31,a0
	add d2,a0
	btst 1,d2
	mov d0,d3
	bne .L1578
	mov a0,d2
	asr 1,d2
	jmp .L1579
.L1577:
	cmp 0,a3
	blt .L1584
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1584:
	mov 1065353216,d0
	mov a2,d1
	call +__divsf3,[],0
	mov_mov d0, a2, d0, d0
	ret [d2,d3,a2,a3],28
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov d0,r0
	mov (16,sp),d0
	mov (12,sp),a0
	cmp d0,d1
	bcs .L1589
	bhi .L1590
	cmp a0,r0
	bcs .L1589
	bhi .L1590
	mov 1,d0
	retf [],0
.L1589:
	clr d0
	retf [],0
.L1590:
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
	bcs .L1598
	bhi .L1597
	cmp a0,r0
	bcs .L1598
	mov 1,d0
	bls .L1601
	retf [],0
.L1598:
	mov -1,d0
	retf [],0
.L1601:
	clr d0
	retf [],0
.L1597:
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
