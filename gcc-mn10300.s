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
.L36:
	movbu (d0,d1),r0
	movbu r0,(d0,a0)
	inc d0
	cmp d0,a1
	beq .L3
	movbu (d0,d1),r0
	movbu r0,(d0,a0)
	inc d0
	cmp d0,a1
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
	cmp a1,r0
	bne .L78
	add_cmp 1, d1, 0, a0
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
	extbu d0,a1
	cmp 0,a1
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
	mov d0,d1
	setlb
.L137:
	movbu (1,d1),a0
	add_cmp 1, d1, 0, a0
	Lne # loop back to: .L137
	sub d0,d1,d0
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
	movbu a1,(d1)
	movbu a0,(1,d1)
	add_add 2, d0, 2, d1
	cmp r0,d0
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
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L221
	add -65529,d0
	cmp_mov 2, d0, 1, d1
	bls .L218
	clr d1
.L218:
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
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L235
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
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
	mov d0,d1
	and 127,d1
	cmp 32,d1
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
	mov -97,d1
	add d0,d1
	cmp_mov 5, d1, 1, d0
	bhi .L246
	retf [],0
.L243:
	mov 1,d0
	retf [],0
.L246:
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
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L271:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L278
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L282:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L278:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L282
.L277:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L275:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L276:
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
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L299:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L306
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L310:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L306:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L310
.L305:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L303:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L304:
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
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L340:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L347
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L351:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L347:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L351
.L346:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L344:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L345:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
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
	movbu (a0,a1),a0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu a0,(-1,d1)
	Lne # loop back to: .L354
.L353:
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
	mov r5,a0
	calls (a0)
	add_cmp 1, r7, 0, d0
	mov d2,d3
	beq .L383
	add_cmp r4, d2, r7, a2
	bne .L386
.L384:
	mul r4,a2,d0,d3
	mov (60,sp),a0
	add_add 1, a2, r6, d3
	cmp 0,r4
	mov a2,(a0)
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
	mov r4,a0
	calls (a0)
	add_cmp 1, d3, 0, d0
	mov d2,r6
	beq .L400
	add_cmp r5, d2, d3, a3
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
	mov -48,d0
	add_add 1, d1, a0, d0
	cmp 9,d0
	bhi .L430
	mov 1,r2
.L423:
	clr d0
.L427:
	setlb
.L444:
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
	Lls # loop back to: .L444
	cmp 0,r2
	bne .L418
	sub a1,r0,d0
	rets
.L419:
	inc d1
	jmp .L425
.L443:
	mov -48,d0
	clr r2
	add a0,d0
	cmp 9,d0
	bls .L423
.L430:
	clr d0
.L418:
	rets
.L420:
	movbu (1,d1),a0
	mov -48,d0
	clr r2
	add_add a0, d0, 1, d1
	cmp 9,d0
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
	mov -48,d0
	add a0,d0
	cmp 9,d0
	bhi .L457
	clr r2
.L451:
	clr d0
	setlb
.L454:
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
	Lls # loop back to: .L454
	cmp 0,r2
	beq .L470
	rets
.L446:
	inc d1
	jmp .L450
.L470:
	sub a1,r0,d0
	rets
.L448:
	movbu (1,d1),a0
	mov 1,r2
	mov -48,d0
	add_add r2, d1, a0, d0
	cmp 9,d0
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
	cmp_mov 0, d1, d0, r0
	mov_mov d0, a0, d1, a1
	blt .L538
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L538:
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
	cmp_mov 0, d1, d0, r0
	mov_mov d0, a0, d1, a1
	blt .L553
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L553:
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
	mov d0,d1
	setlb
.L587:
	mov (4,d1),a0
	add_cmp 4, d1, 0, a0
	Lne # loop back to: .L587
	sub d0,d1,d0
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
	mov (d0),a1
	mov (d1),d0
	cmp d0,a1
	blt .L605
	cmp_mov d0, a1, 1, a0
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
	cmp a1,r0
	bne .L633
	add_cmp 4, d1, 0, a0
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
	clr r0
	cmp r0,d0
	beq .L649
.L644:
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	beq .L649
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
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
	mov d0,r0
	setlb
.L662:
	add -1,a1
	cmp -1,a1
	mov d1,(r0+)
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
	or d0,d1,a1
	and 3,a1
	bne .L682
	mov 1,r0
	add d0,r0
	sub r0,d1,r0
	cmp 2,r0
	bls .L682
	mov a0,r1
	and -4,r1
	setlb
.L676:
	mov (a1,d0),r0
	mov r0,(a1,d1)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L676
	sub a1,a0,r0
	add_add a1, d1, a1, d0
	cmp a1,a0
	beq .L669
	movbu (d0),a0
	cmp 1,r0
	movbu a0,(d1)
	beq .L669
	movbu (1,d0),a0
	cmp 2,r0
	movbu a0,(1,d1)
	beq .L669
	movbu (2,d0),d0
	movbu d0,(2,d1)
	retf [],0
.L682:
	mov 0,a1
.L704:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	beq .L669
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	bne .L704
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
	mov 0,d0
	beq .L710
	asl a0,r2,d1
.L711:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	clr r0
	and 63,a0
	cmp_mov 0, a1, r0, r1
	beq .L712
	lsr a0,r3,r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L712:
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
.L710:
	mov_mov r2, a1, a0, d2
	lsr 1,a1
	not d2
	lsr d2,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L711
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2],(sp)
	mov (16,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	mov 0,d0
	mov d0,d1
	beq .L717
	lsr a0,r3,d0
.L718:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	clr r0
	cmp 0,a1
	beq .L719
	asl a0,r2,r1
	or d1,r1,a1
	or d0,r0,a0
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L719:
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
.L717:
	mov_mov r3, a1, a0, d2
	add a1,a1
	not d2
	asl d2,a1
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
	mov_mov d0, d2, -1, a2
	mov -1048577,d0
	add -20,sp
	mov d0,(16,sp)
	mov a2,(12,sp)
	mov_mov d2, d0, d1, d3
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
	mov_mov d0, d2, -1, a2
	mov -1048577,d0
	add -20,sp
	mov d0,(16,sp)
	mov a2,(12,sp)
	mov_mov d2, d0, d1, d3
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
	mov r4,d0
	lsr 31,d0
	add d0,r4
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
	mov (a1,a0),d0
	mov (a1,d1),r0
	xor d0,r0
	mov r0,(a1,a0)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L841
	add a1,a0,d0
	sub a1,r2,r0
	add_cmp a1, d1, a1, r2
	beq .L839
	movbu (d0),a1
	movbu (d1),r1
	xor_cmp r1, a1, 1, r0
	movbu a1,(d0)
	beq .L839
	movbu (1,d0),r1
	movbu (1,d1),a1
	xor_cmp r1, a1, 2, r0
	movbu a1,(1,d0)
	beq .L839
	movbu (2,d0),a1
	movbu (2,d1),d1
	xor a1,d1
	movbu d1,(2,d0)
.L839:
	mov a0,d0
	retf [],0
.L840:
	add_mov d1, r2, a0, d0
.L843:
	movbu (d0),r0
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r0, a1, d1, r2
	movbu a1,(-1,d0)
	beq .L839
	movbu (d0),r0
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r0, a1, d1, r2
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
	beq .L874
	setlb
.L861:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L861
.L874:
	cmp 0,r1
	beq .L863
.L877:
	movbu (d1),r0
	add_add -1, r1, 1, d1
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L865
	add_cmp 1, a1, 0, r1
	bne .L877
.L863:
	clr d0
	movbu d0,(a1)
.L865:
	mov a0,d0
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L878
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L881
.L878:
	mov a0,d0
	retf [],0
.L881:
	inc a0
	cmp a0,d1
	beq .L878
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L878
	jmp .L881
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L893
.L889:
	mov d1,a1
.L892:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L899
	cmp r1,r0
	bne .L892
	mov a0,d0
	retf [],0
.L899:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L889
.L893:
	mov_mov r1, a0, r1, d0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov 0,a0
.L902:
	movbu (d0),a1
	cmp a1,d1
	beq .L906
	add_cmp 1, d0, 0, a1
	bne .L902
.L907:
	mov a0,d0
	retf [],0
.L906:
	mov_add d0, a0, 1, d0
	cmp 0,a1
	bne .L902
	jmp .L907
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2],(sp)
	movbu (d1),d3
	extbu d3,r3
	cmp 0,r3
	beq .L921
	mov d1,a0
	setlb
.L910:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L910
	sub d1,a0,a2
	cmp d1,a0
	beq .L921
	add -1,a2
	extbu d3
.L927:
	movbu (d0),a0
	cmp r3,a0
	beq .L917
	add_cmp 1, d0, 0, a0
	bne .L927
	mov a0,d0
	retf [d2,d3,a2],12
.L917:
	add a2,d0,d2
	mov_mov d1, r1, d0, a1
	mov d3,r0
.L912:
	cmp d2,a1
	beq .L914
	add_cmp 1, a1, r0, a0
	bne .L915
	movbu (a1),a0
	mov 1,r2
	add_cmp r1, r2, 0, a0
	movbu (1,r1),r0
	beq .L914
	cmp_mov 0, r0, r2, r1
	bne .L912
.L915:
	inc d0
	jmp .L927
.L914:
	cmp r0,a0
	bne .L915
.L921:
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
	blt .L942
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L934
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L933
.L934:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L942:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L934
.L933:
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
	beq .L943
	cmp r1,d1
	bcs .L954
	sub r1,d1
	add d0,d1
	cmp d1,d0
	bhi .L954
	movbu (r3),d2
.L949:
	movbu (a0),d0
	mov 1,r2
	add_cmp a0, r2, d2, d0
	beq .L964
	mov r2,a0
.L945:
	cmp a0,d1
	bcc .L949
.L954:
	mov 0,a0
.L943:
	mov a0,d0
	retf [d2],4
.L964:
	cmp 1,r1
	beq .L943
	mov 1,a1
.L946:
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	bne .L965
.L947:
	cmp r1,a1
	beq .L943
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	beq .L947
.L965:
	cmp r2,d1
	bcs .L954
	movbu (r2),d0
	mov 1,a0
	add_cmp r2, a0, d0, d2
	bne .L945
	mov_mov r2, d0, 1, a1
	mov_mov a0, r2, d0, a0
	jmp .L946
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L967
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L967:
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
	blt .L998
	mov 1072693248,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L999
	clr r6
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
.L982:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L982
.L983:
	mov (64,sp),d0
	cmp 0,a3
	mov r6,(d0)
	beq .L989
	mov -2147483648,a1
	mov_add d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L989:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L999:
	mov 1071644672,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L979
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L988
.L979:
	mov (64,sp),d1
	clr d0
	mov_mov d2, a0, d3, a1
	mov d0,(d1)
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L998:
	mov -1074790400,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ledf2,[],0
	mov -2147483648,r5
	add_cmp d3, r5, a3, d0
	mov d2,r4
	bgt .L1000
	clr r6
	mov_mov r5, d3, 1, a3
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
	jmp .L982
.L1000:
	mov -1075838976,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp a3,d0
	bgt .L986
	mov (64,sp),d0
	mov_mov d2, a0, d3, a1
	mov a3,(d0)
	mov_mov a1, d1, a0, d0
	ret [d2,d3,a2,a3,exreg1],52
.L986:
	clr r6
	mov 1,a3
	mov 1071644672,a2
	mov_mov r4, d2, r5, d3
	mov r6,r4
.L984:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L983
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L984
	jmp .L983
.L988:
	mov_mov d2, r4, d3, r5
	clr r6
	mov r4,d2
	mov 1071644672,a2
	mov_mov r5, d3, r6, r4
	jmp .L984
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
	beq .L1005
	clr r4
	mov r4,r5
	setlb
.L1004:
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
	Lne # loop back to: .L1004
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],48
.L1005:
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
	bcc .L1011
	mov 32,d0
	mov 1,a0
.L1010:
	add_cmp -1, d0, 0, d1
	blt .L1011
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1012
	cmp 0,d0
	bne .L1010
	cmp 0,r0
	bne .L1027
.L1009:
	retf [],0
.L1012:
	cmp 0,a0
	beq .L1019
.L1011:
	clr d0
.L1016:
	cmp d1,a1
	bcs .L1015
	or_sub a0, d0, d1, a1
.L1015:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1016
	cmp 0,r0
	beq .L1009
.L1027:
	mov a1,d0
	retf [],0
.L1019:
	cmp_mov 0, r0, a0, d0
	beq .L1009
	jmp .L1027
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L1030
	asl 8,d0
	clr d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L1030:
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
	beq .L1043
.L1039:
	clr d0
	cmp 0,r3
	bne .L1044
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L1044:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1043:
	cmp a0,d1
	bne .L1039
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L1048
	clr d0
	setlb
.L1047:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1047
	retf [],0
.L1048:
	retf [],0
	.size	__mulsi3, .-__mulsi3
	.global __cmovd
	.type	__cmovd, @function
__cmovd:
	movm [d2,d3],(sp)
	mov (20,sp),d2
	mov_mov d2, a1, d2, r3
	and -8,a1
	cmp_lsr d1, d0, 3, r3
	bcs .L1053
	add d2,d1,a0
	cmp a0,d0
	bls .L1085
.L1053:
	cmp 0,r3
	beq .L1056
	mov_asl 0, a0, 3, r3
	setlb
.L1057:
	add a0,d1,r2
	mov (a0,d1),r0
	mov (4,r2),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp r3,a0
	mov r1,(4,r2)
	Lne # loop back to: .L1057
	cmp a1,d2
	bls .L1052
	sub a1,d2,d3
	mov -1,a0
	add d3,a0
	cmp 6,a0
	bls .L1078
	mov 1,a0
	add a1,d0,r1
	add a1,a0
	add d1,a0
	sub a0,r1,a0
	add a1,d1,r3
	cmp 2,a0
	bls .L1078
	or r1,r3,a0
	and 3,a0
	bne .L1078
	mov d3,r2
	and -4,r2
	setlb
.L1062:
	mov (a0,r3),r0
	mov r0,(a0,r1)
	inc4 a0
	cmp a0,r2
	Lne # loop back to: .L1062
	add_cmp r2, a1, d3, r2
	beq .L1052
	movbu (a1,d1),d3
	mov 1,a0
	add a1,a0
	cmp a0,d2
	movbu d3,(a1,d0)
	bls .L1052
	movbu (a0,d1),d3
	add 2,a1
	cmp a1,d2
	movbu d3,(a0,d0)
	bls .L1052
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1052:
	retf [d2,d3],8
.L1056:
	cmp 0,d2
	beq .L1052
.L1078:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,d2
	beq .L1052
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,d2
	bne .L1078
	jmp .L1052
.L1085:
	mov -1,a0
	add_cmp d2, a0, 0, d2
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
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r0
	mov r0,r2
	cmp_lsr d1, d0, 1, r2
	bcs .L1087
	add r0,d1,a0
	cmp a0,d0
	bls .L1118
.L1087:
	cmp 0,r2
	beq .L1090
	mov -1,a0
	add r2,a0
	cmp 8,a0
	bls .L1091
	or d0,d1,a0
	and 3,a0
	bne .L1091
	mov 2,a1
	add d1,a1
	xor d0,a1
	clr r1
	sub a1,r1
	or r1,a1
	bnc .L1091
	mov_mov r0, r1, r0, r3
	and -4,r1
	lsr 2,r3
	setlb
.L1093:
	mov (a0,d1),a1
	mov a1,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1093
	mov r3,a0
	add a0,a0
	cmp a0,r2
	beq .L1090
	asl2 r3
	movhu (r3,d1),a0
	movhu a0,(r3,d0)
.L1090:
	btst 1,r0
	beq .L1086
	add -1,r0
	movbu (r0,d1),d1
	movbu d1,(r0,d0)
	retf [],0
.L1118:
	mov -1,a0
	add_cmp r0, a0, 0, r0
	beq .L1086
	setlb
.L1088:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L1088
.L1086:
	retf [],0
.L1091:
	mov_asl 0, a0, 1, r2
.L1095:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp r2,a0
	beq .L1090
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp r2,a0
	bne .L1095
	jmp .L1090
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	movm [d2,d3],(sp)
	mov (20,sp),r2
	mov_mov r2, a1, r2, r1
	and -4,a1
	cmp_lsr d1, d0, 2, r1
	bcs .L1120
	add r2,d1,a0
	cmp a0,d0
	bls .L1152
.L1120:
	cmp 0,r1
	beq .L1123
	mov_asl 0, a0, 2, r1
	setlb
.L1124:
	mov (a0,d1),r0
	mov r0,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1124
	cmp a1,r2
	bls .L1119
	sub a1,r2,d3
	mov -1,a0
	add d3,a0
	cmp 6,a0
	bls .L1145
	mov 1,a0
	add a1,d0,r1
	add a1,a0
	add d1,a0
	sub a0,r1,a0
	add a1,d1,d2
	cmp 2,a0
	bls .L1145
	or r1,d2,a0
	and 3,a0
	bne .L1145
	mov d3,r3
	and -4,r3
	setlb
.L1129:
	mov (a0,d2),r0
	mov r0,(a0,r1)
	inc4 a0
	cmp a0,r3
	Lne # loop back to: .L1129
	add_cmp r3, a1, d3, r3
	beq .L1119
	movbu (a1,d1),d2
	mov 1,a0
	add a1,a0
	cmp a0,r2
	movbu d2,(a1,d0)
	bls .L1119
	movbu (a0,d1),d2
	add 2,a1
	cmp a1,r2
	movbu d2,(a0,d0)
	bls .L1119
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1119:
	retf [d2,d3],8
.L1123:
	cmp 0,r2
	beq .L1119
.L1145:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r2
	beq .L1119
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r2
	bne .L1145
	jmp .L1119
.L1152:
	mov -1,a0
	add_cmp r2, a0, 0, r2
	beq .L1119
.L1121:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L1119
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L1121
	jmp .L1119
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
	bne .L1168
	mov d1,d0
	asr 14,d0
	cmp 0,d0
	bne .L1165
	mov d1,d0
	asr 13,d0
	cmp 0,d0
	bne .L1169
	mov d1,d0
	asr 12,d0
	cmp 0,d0
	bne .L1170
	mov d1,d0
	asr 11,d0
	cmp 0,d0
	bne .L1171
	mov d1,d0
	asr 10,d0
	cmp 0,d0
	bne .L1172
	mov d1,d0
	asr 9,d0
	cmp 0,d0
	bne .L1173
	mov d1,d0
	asr 8,d0
	cmp 0,d0
	bne .L1174
	mov d1,d0
	asr 7,d0
	cmp 0,d0
	bne .L1175
	mov d1,d0
	asr 6,d0
	cmp 0,d0
	bne .L1176
	mov d1,d0
	asr 5,d0
	cmp 0,d0
	bne .L1177
	mov d1,d0
	asr 4,d0
	cmp 0,d0
	bne .L1178
	mov d1,d0
	asr 3,d0
	cmp 0,d0
	bne .L1179
	mov d1,d0
	asr 2,d0
	cmp 0,d0
	bne .L1180
	mov d1,d0
	asr 1,d0
	cmp 0,d0
	bne .L1181
	cmp 0,d1
	mov 16,d0
	bne .L1186
.L1165:
	retf [],0
.L1168:
	clr d0
	retf [],0
.L1179:
	mov 12,d0
	retf [],0
.L1186:
	mov 15,d0
	retf [],0
.L1169:
	mov 2,d0
	retf [],0
.L1170:
	mov 3,d0
	retf [],0
.L1171:
	mov 4,d0
	retf [],0
.L1172:
	mov 5,d0
	retf [],0
.L1173:
	mov 6,d0
	retf [],0
.L1174:
	mov 7,d0
	retf [],0
.L1175:
	mov 8,d0
	retf [],0
.L1176:
	mov 9,d0
	retf [],0
.L1177:
	mov 10,d0
	retf [],0
.L1178:
	mov 11,d0
	retf [],0
.L1180:
	mov 13,d0
	retf [],0
.L1181:
	mov 14,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	btst 1,d0
	bne .L1190
	mov d0,d1
	and 2,d1
	bne .L1191
	mov d0,d1
	and 4,d1
	bne .L1192
	mov d0,d1
	and 8,d1
	bne .L1193
	mov d0,d1
	and 16,d1
	bne .L1194
	mov d0,d1
	and 32,d1
	bne .L1195
	mov d0,d1
	and 64,d1
	bne .L1196
	mov d0,d1
	and 128,d1
	bne .L1197
	mov d0,d1
	and 256,d1
	bne .L1198
	mov d0,d1
	and 512,d1
	bne .L1199
	mov d0,d1
	and 1024,d1
	bne .L1200
	mov d0,d1
	and 2048,d1
	bne .L1201
	mov d0,d1
	and 4096,d1
	bne .L1202
	mov d0,d1
	and 8192,d1
	bne .L1203
	mov d0,d1
	and 16384,d1
	bne .L1204
	exthu d0,d1
	asr 15,d1
	cmp 0,d1
	mov 16,d0
	bne .L1209
	retf [],0
.L1190:
	clr d0
	retf [],0
.L1191:
	mov 1,d0
	retf [],0
.L1202:
	mov 12,d0
	retf [],0
.L1209:
	mov 15,d0
	retf [],0
.L1192:
	mov 2,d0
	retf [],0
.L1193:
	mov 3,d0
	retf [],0
.L1194:
	mov 4,d0
	retf [],0
.L1195:
	mov 5,d0
	retf [],0
.L1196:
	mov 6,d0
	retf [],0
.L1197:
	mov 7,d0
	retf [],0
.L1198:
	mov 8,d0
	retf [],0
.L1199:
	mov 9,d0
	retf [],0
.L1200:
	mov 10,d0
	retf [],0
.L1201:
	mov 11,d0
	retf [],0
.L1203:
	mov 13,d0
	retf [],0
.L1204:
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
	bge .L1218
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1218:
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
	beq .L1226
	clr d0
	setlb
.L1225:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1225
	retf [],0
.L1226:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1233
	cmp 0,d1
	beq .L1234
	clr d0
	setlb
.L1232:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1232
	retf [],0
.L1233:
	retf [],0
.L1234:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1240
	mov 32,d0
	mov 1,a0
.L1239:
	add_cmp -1, d0, 0, d1
	blt .L1240
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1241
	cmp 0,d0
	bne .L1239
	cmp 0,r0
	bne .L1256
.L1238:
	retf [],0
.L1241:
	cmp 0,a0
	beq .L1248
.L1240:
	clr d0
.L1245:
	cmp d1,a1
	bcs .L1244
	or_sub a0, d0, d1, a1
.L1244:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1245
	cmp 0,r0
	beq .L1238
.L1256:
	mov a1,d0
	retf [],0
.L1248:
	cmp_mov 0, r0, a0, d0
	beq .L1238
	jmp .L1256
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L1260
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1263
	mov d2,d0
.L1257:
	ret [d2,d3],20
.L1263:
	clr d2
	mov d2,d0
	jmp .L1257
.L1260:
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
	blt .L1267
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1270
	mov d2,d0
.L1264:
	ret [d2,d3,a2,a3],36
.L1270:
	clr d2
	mov d2,d0
	jmp .L1264
.L1267:
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
	blt .L1291
	beq .L1281
	clr r2
	clr d0
	mov 32,a1
.L1280:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1279
	cmp 0,r1
	bne .L1280
.L1279:
	cmp 0,r2
	beq .L1275
	not d0
	inc d0
	retf [],0
.L1281:
	mov d1,d0
.L1275:
	retf [],0
.L1291:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1280
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1312
	clr r1
	cmp_mov 0, d1, 1, a0
	blt .L1313
.L1294:
	cmp_mov d1, d0, 1, a0
	mov d0,r0
	bls .L1296
	mov 32,a1
	mov 1,a0
.L1295:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1299
	cmp 0,a1
	bne .L1295
.L1299:
	cmp_mov 0, a0, a0, d0
	beq .L1297
.L1296:
	clr d0
.L1301:
	cmp d1,r0
	bcs .L1300
	or_sub a0, d0, d1, r0
.L1300:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1301
.L1297:
	cmp 0,r1
	beq .L1292
	not d0
	inc d0
.L1292:
	retf [],0
.L1313:
	not d1
	add_mov 1, d1, a0, r1
	jmp .L1294
.L1312:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 0, a0, 1, r1
	bge .L1294
	jmp .L1313
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1335
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1336
.L1316:
	cmp_mov d1, d0, 1, a0
	bls .L1332
	mov 32,a1
	mov 1,a0
.L1317:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1321
	cmp 0,a1
	bne .L1317
.L1321:
	cmp 0,a0
	beq .L1319
.L1332:
	cmp_lsr d1, r0, 1, a0
	bcs .L1322
	sub d1,r0
.L1322:
	cmp_lsr 0, a0, 1, d1
	bne .L1332
	mov r0,d0
.L1319:
	cmp 0,r1
	beq .L1314
	not d0
	inc d0
.L1314:
	retf [],0
.L1336:
	not d1
	inc d1
	jmp .L1316
.L1335:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1316
	jmp .L1336
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
	bcc .L1453
	exth d1,d0
	cmp 0,d0
	blt .L1340
	mov d1,d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1341
	exth d0,a0
	cmp 0,a0
	blt .L1342
	mov d1,d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1343
	exth d0,r3
	cmp 0,r3
	blt .L1344
	mov d1,d0
	asl2 d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1345
	exth d0,r3
	cmp 0,r3
	blt .L1346
	mov d1,d0
	asl2 d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1347
	exth d0,r3
	cmp 0,r3
	blt .L1348
	mov d1,d0
	asl 5,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1349
	exth d0,r3
	cmp 0,r3
	blt .L1350
	mov d1,d0
	asl 6,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1351
	exth d0,r3
	cmp 0,r3
	blt .L1352
	mov d1,d0
	asl 7,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1353
	exth d0,r3
	cmp 0,r3
	blt .L1354
	mov d1,d0
	asl 8,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1355
	exth d0,r3
	cmp 0,r3
	blt .L1356
	mov d1,d0
	asl 9,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1357
	exth d0,r3
	cmp 0,r3
	blt .L1358
	mov d1,d0
	asl 10,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1359
	exth d0,d2
	cmp 0,d2
	blt .L1360
	mov d1,d0
	asl 11,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1361
	exth d0,d2
	cmp 0,d2
	blt .L1362
	mov d1,d0
	asl 12,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1363
	exth d0,d2
	cmp 0,d2
	blt .L1364
	mov d1,d0
	asl 13,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1365
	exth d0,d2
	cmp 0,d2
	blt .L1366
	mov d1,d0
	asl 14,d0
	exthu d0,a0
	cmp a0,r2
	exthu d0,a1
	bls .L1367
	exth d0,d2
	cmp 0,d2
	blt .L1368
	asl 15,d1
	exthu d1,a0
	cmp a0,r2
	bls .L1369
	cmp 0,a0
	mov r1,d0
	bne .L1454
.L1370:
	cmp 0,r0
	bne .L1337
	mov d1,d0
.L1337:
	retf [d2],4
.L1357:
	bcs .L1403
	sub d0,r1,d0
	mov 512,r2
	mov 512,d1
.L1372:
	mov_mov r2, r1, a1, a0
	lsr 2,r1
	cmp_lsr 0, r1, 2, a0
	mov r1,r3
	beq .L1370
	exthu d0,r1
	cmp a0,r1
	bcs .L1373
	or_sub r3, d1, a0, d0
.L1373:
	mov_mov r2, r1, a1, a0
	lsr 3,r1
	cmp_lsr 0, r1, 3, a0
	mov r1,r3
	beq .L1370
	exthu d0,r1
	cmp a0,r1
	bcs .L1374
	or_sub r3, d1, a0, d0
.L1374:
	mov_mov r2, r1, a1, a0
	lsr 4,r1
	cmp_lsr 0, r1, 4, a0
	mov r1,d2
	beq .L1370
	exthu d0,r1
	cmp a0,r1
	bcs .L1375
	or_sub d2, d1, a0, d0
.L1375:
	mov_mov r2, r1, a1, a0
	lsr 5,r1
	cmp_lsr 0, r1, 5, a0
	mov r1,d2
	beq .L1370
	exthu d0,r1
	cmp a0,r1
	bcs .L1376
	or_sub d2, d1, a0, d0
.L1376:
	mov_mov r2, r1, a1, a0
	lsr 6,r1
	cmp_lsr 0, r1, 6, a0
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1377
	or_sub r1, d1, a0, d0
.L1377:
	mov_mov r2, d2, a1, a0
	lsr 7,d2
	cmp_lsr 0, d2, 7, a0
	mov d2,r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1378
	or_sub r1, d1, a0, d0
.L1378:
	mov_mov r2, d2, a1, a0
	lsr 8,d2
	lsr 8,a0
	cmp_mov 0, d2, d2, r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1379
	or_sub r1, d1, a0, d0
.L1379:
	mov_mov r2, d2, a1, a0
	lsr 9,d2
	lsr 9,a0
	cmp_mov 0, d2, d2, r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1380
	or_sub r1, d1, a0, d0
.L1380:
	mov_mov r2, d2, a1, a0
	lsr 10,d2
	lsr 10,a0
	cmp_mov 0, d2, d2, r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1381
	or_sub r1, d1, a0, d0
.L1381:
	mov_mov r2, d2, a1, a0
	lsr 11,d2
	lsr 11,a0
	cmp_mov 0, d2, d2, r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1382
	or_sub r1, d1, a0, d0
.L1382:
	mov_mov r2, d2, a1, a0
	lsr 12,d2
	lsr 12,a0
	cmp_mov 0, d2, d2, r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1383
	or_sub r1, d1, a0, d0
.L1383:
	mov_mov r2, d2, a1, a0
	lsr 13,d2
	lsr 13,a0
	cmp_mov 0, d2, d2, r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1384
	or_sub r1, d1, a0, d0
.L1384:
	mov_mov r2, d2, a1, a0
	lsr 14,d2
	lsr 14,a0
	cmp_mov 0, d2, d2, r1
	beq .L1370
	exthu d0,d2
	cmp a0,d2
	bcs .L1385
	or_sub r1, d1, a0, d0
.L1385:
	lsr 15,a1
	cmp 16384,r2
	beq .L1370
	exthu d0,a0
	cmp a1,a0
	bcs .L1393
	or 1,d1
	sub a1,d0
	jmp .L1370
.L1454:
	mov 32768,r2
	mov -32768,d0
	mov 16384,a0
	mov a0,d2
	add r1,d0
	mov -32768,d1
	mov r2,a1
.L1390:
	exthu d0,r1
	exthu a0,r3
	cmp r3,r1
	bcs .L1372
	or_sub d2, d1, a0, d0
	jmp .L1372
.L1393:
	clr d0
	jmp .L1370
.L1453:
	beq .L1391
	mov r1,d0
	clr d1
	jmp .L1370
.L1340:
	sub d1,r1,d0
	mov 1,d1
	jmp .L1370
.L1341:
	bcs .L1395
	sub d0,r1,d0
	mov 2,r2
	mov 2,d1
	jmp .L1372
.L1342:
	mov d1,a0
	sub d0,r1,d0
	and 32767,a0
	mov 2,r2
	mov 1,d2
	mov 2,d1
	jmp .L1390
.L1343:
	bcs .L1396
	sub d0,r1,d0
	mov 4,r2
	mov 4,d1
	jmp .L1372
.L1344:
	sub d0,r1,d0
	mov_lsr 4, r2, 1, a0
	mov 2,d2
	mov 4,d1
	jmp .L1390
.L1345:
	bcs .L1397
	sub d0,r1,d0
	mov 8,r2
	mov 8,d1
	jmp .L1372
.L1346:
	sub d0,r1,d0
	mov 8,r2
	lsr 1,a0
	mov 4,d2
	mov 8,d1
	jmp .L1390
.L1347:
	bcs .L1398
	sub d0,r1,d0
	mov 16,r2
	mov 16,d1
	jmp .L1372
.L1348:
	sub d0,r1,d0
	mov 16,r2
	lsr 1,a0
	mov 8,d2
	mov 16,d1
	jmp .L1390
.L1349:
	bcs .L1399
	sub d0,r1,d0
	mov 32,r2
	mov 32,d1
	jmp .L1372
.L1350:
	sub d0,r1,d0
	mov 32,r2
	lsr 1,a0
	mov 16,d2
	mov 32,d1
	jmp .L1390
.L1351:
	bcs .L1400
	sub d0,r1,d0
	mov 64,r2
	mov 64,d1
	jmp .L1372
.L1352:
	sub d0,r1,d0
	mov 64,r2
	lsr 1,a0
	mov 32,d2
	mov 64,d1
	jmp .L1390
.L1353:
	bcs .L1401
	sub d0,r1,d0
	movu 128,r2
	mov 128,d1
	jmp .L1372
.L1354:
	sub d0,r1,d0
	movu 128,r2
	lsr 1,a0
	mov 64,d2
	mov 128,d1
	jmp .L1390
.L1356:
	sub d0,r1,d0
	mov 256,r2
	lsr 1,a0
	mov 128,d2
	mov 256,d1
	jmp .L1390
.L1391:
	mov 1,d1
	clr d0
	jmp .L1370
.L1358:
	sub d0,r1,d0
	mov 512,r2
	lsr 1,a0
	mov 256,d2
	mov 512,d1
	jmp .L1390
.L1395:
	mov_mov 2, r2, a1, a0
	mov r2,d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1360:
	sub d0,r1,d0
	mov 1024,r2
	lsr 1,a0
	mov 512,d2
	mov 1024,d1
	jmp .L1390
.L1396:
	mov_mov 4, r2, a1, a0
	mov r2,d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1362:
	sub d0,r1,d0
	mov 2048,r2
	lsr 1,a0
	mov 1024,d2
	mov 2048,d1
	jmp .L1390
.L1397:
	mov 8,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1364:
	sub d0,r1,d0
	mov 4096,r2
	lsr 1,a0
	mov 2048,d2
	mov 4096,d1
	jmp .L1390
.L1366:
	sub d0,r1,d0
	mov 8192,r2
	lsr 1,a0
	mov 4096,d2
	mov 8192,d1
	jmp .L1390
.L1398:
	mov 16,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1368:
	sub d0,r1,d0
	mov 16384,r2
	lsr 1,a0
	mov 8192,d2
	mov 16384,d1
	jmp .L1390
.L1399:
	mov 32,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1400:
	mov 64,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1369:
	exth r1,d0
	cmp 0,d0
	blt .L1394
	mov 32768,a1
	exthu a1,r2
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1401:
	movu 128,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1355:
	bcs .L1402
	sub d0,r1,d0
	mov 256,r2
	mov 256,d1
	jmp .L1372
.L1394:
	mov 32768,r2
	mov -32768,d1
	clr d0
	mov r2,a1
	jmp .L1372
.L1402:
	mov 256,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1365:
	bcs .L1407
	sub d0,r1,d0
	mov 8192,r2
	mov 8192,d1
	jmp .L1372
.L1359:
	bcs .L1404
	sub d0,r1,d0
	mov 1024,r2
	mov 1024,d1
	jmp .L1372
.L1407:
	mov 8192,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1404:
	mov 1024,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1403:
	mov 512,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1363:
	bcs .L1406
	sub d0,r1,d0
	mov 4096,r2
	mov 4096,d1
	jmp .L1372
.L1361:
	bcs .L1405
	sub d0,r1,d0
	mov 2048,r2
	mov 2048,d1
	jmp .L1372
.L1367:
	bcs .L1408
	sub d0,r1,d0
	mov 16384,r2
	mov 16384,d1
	jmp .L1372
.L1406:
	mov 4096,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1405:
	mov 2048,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
.L1408:
	mov 16384,r2
	mov_mov a1, a0, r2, d2
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1390
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1457
	mov 32,d0
	mov 1,a0
.L1456:
	add_cmp -1, d0, 0, d1
	blt .L1457
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1458
	cmp 0,d0
	bne .L1456
	cmp 0,r0
	bne .L1473
.L1455:
	retf [],0
.L1458:
	cmp 0,a0
	beq .L1465
.L1457:
	clr d0
.L1462:
	cmp d1,a1
	bcs .L1461
	or_sub a0, d0, d1, a1
.L1461:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1462
	cmp 0,r0
	beq .L1455
.L1473:
	mov a1,d0
	retf [],0
.L1465:
	cmp_mov 0, r0, a0, d0
	beq .L1455
	jmp .L1473
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, a0, d0
	and 32,d0
	beq .L1475
	mov 0,a1
	asl a0,r2,a0
	mov_mov a1, r0, a0, r1
.L1477:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1475:
	cmp 0,a0
	beq .L1478
	clr d0
	sub a0,d0
	lsr d0,r2,d0
	asl a0,d1
	asl a0,r2,a1
	or d1,d0,a0
	mov_mov a1, r0, a0, r1
	jmp .L1477
.L1478:
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
	beq .L1482
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1484:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1482:
	cmp 0,a0
	beq .L1485
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	asr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1484
.L1485:
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
	bls .L1493
	mov 0,a0
.L1493:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	mov 1,d0
	beq .L1494
	clr d0
.L1494:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub_add d0, a1, d0, a0
	lsr a1,d1
	btst 240,d1
	mov 1,d0
	beq .L1495
	clr d0
.L1495:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	btst 12,d1
	mov 1,a0
	beq .L1496
	mov 0,a0
.L1496:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1498
	sub d1,r1,d0
.L1498:
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
	blt .L1514
	bgt .L1515
	cmp a0,r0
	bcs .L1514
	bhi .L1515
	mov 1,d0
	retf [],0
.L1514:
	clr d0
	retf [],0
.L1515:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	blt .L1523
	bgt .L1522
	cmp a0,r0
	bcs .L1523
	mov 1,d0
	bls .L1526
	retf [],0
.L1523:
	mov -1,d0
	retf [],0
.L1526:
	clr d0
	retf [],0
.L1522:
	mov 1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a0
	beq .L1528
	mov 0,a0
.L1528:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	cmp_mov 0, a1, 1, d0
	beq .L1529
	clr d0
.L1529:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	btst 15,d1
	mov 1,d0
	beq .L1530
	clr d0
.L1530:
	asl2 d0
	add a0,d0,a1
	lsr d0,d1
	btst 3,d1
	mov 1,d0
	beq .L1531
	clr d0
.L1531:
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
	beq .L1547
	mov 0,a1
	lsr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1549:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1547:
	cmp 0,a0
	beq .L1550
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	lsr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1549
.L1550:
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
	beq .L1573
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1570:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, a2, d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp_mov 0, a2, d1, r5
	beq .L1569
.L1571:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,r0
	lsr 31,r0
	add a2,r0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1570
	mov r0,a2
	asr 1,a2
	jmp .L1571
.L1569:
	cmp 0,a3
	blt .L1576
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1573:
	mov_mov a3, a2, d0, r4
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	bne .L1571
	jmp .L1569
.L1576:
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
	beq .L1578
.L1580:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1578:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1579
.L1581:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,a0
	lsr 31,a0
	add d2,a0
	btst 1,d2
	mov d0,d3
	bne .L1580
	mov a0,d2
	asr 1,d2
	jmp .L1581
.L1579:
	cmp 0,a3
	blt .L1586
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1586:
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
	bcs .L1591
	bhi .L1592
	cmp a0,r0
	bcs .L1591
	bhi .L1592
	mov 1,d0
	retf [],0
.L1591:
	clr d0
	retf [],0
.L1592:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	bcs .L1600
	bhi .L1599
	cmp a0,r0
	bcs .L1600
	mov 1,d0
	bls .L1603
	retf [],0
.L1600:
	mov -1,d0
	retf [],0
.L1603:
	clr d0
	retf [],0
.L1599:
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
