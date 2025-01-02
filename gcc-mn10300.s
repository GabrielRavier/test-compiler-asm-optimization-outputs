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
	beq .L20
.L18:
	movbu (d1),a1
	add_add -1, a0, 1, d1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L29
	add_cmp 1, d0, 0, a0
	bne .L18
.L20:
	mov 0,a0
	mov a0,d0
	retf [],0
.L29:
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
	beq .L30
.L31:
	movbu (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L38
	add_cmp 1, d0, 0, a0
	bne .L31
.L30:
	mov a0,d0
	retf [],0
.L38:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L44
.L40:
	movbu (d0),r0
	movbu (d1),a1
	add_add -1, a0, 1, d0
	cmp a1,r0
	bne .L49
	add_cmp 1, d1, 0, a0
	bne .L40
.L44:
	mov a0,d0
	retf [],0
.L49:
	sub a1,r0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L51
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L51:
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
.L58:
	cmp_mov d0, a1, a1, a0
	beq .L63
	movbu (a0),r0
	add_cmp -1, a1, d1, r0
	bne .L58
	mov a0,d0
	retf [],0
.L63:
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
	beq .L67
	mov a0,(12,sp)
	extbu d1
	call +memset,[],0
	mov a0,a1
.L67:
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
	beq .L71
	setlb
.L72:
	movbu (1,d1),d0
	add_add 1, a0, 1, d1
	extbu d0,a1
	cmp 0,a1
	movbu d0,(a0)
	Lne # loop back to: .L72
.L71:
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
	beq .L79
.L80:
	cmp d1,d0
	beq .L79
	movbu (1,a0),d0
	add_cmp 1, a0, 0, d0
	bne .L80
.L79:
	mov a0,d0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d0,a0
.L90:
	movbu (a0),d0
	cmp d1,d0
	beq .L89
	add_cmp 1, a0, 0, d0
	bne .L90
	mov d0,a0
.L89:
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
	bne .L96
.L95:
	cmp 0,a0
	beq .L96
	movbu (a1,d0),a0
	inc a1
	movbu (a1,d1),r0
	extbu a0
	cmp r0,a0
	beq .L95
.L96:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp 0,d1
	beq .L106
	mov d0,d1
	setlb
.L105:
	movbu (1,d1),a0
	add_cmp 1, d1, 0, a0
	Lne # loop back to: .L105
	sub d0,d1,d0
	retf [],0
.L106:
	mov d1,d0
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
	beq .L122
	movbu (d1),a1
	mov_add 1, r1, -1, r0
	add_add d0, r0, d1, r1
	cmp 0,a1
	beq .L113
.L124:
	cmp r0,d0
	beq .L113
	add_cmp 1, d0, a0, a1
	bne .L113
	movbu (d0),a0
	cmp 0,a0
	beq .L123
	mov r1,d1
	movbu (d1),a1
	mov 1,r1
	add_cmp d1, r1, 0, a1
	bne .L124
.L113:
	sub a1,a0,d0
	retf [],0
.L118:
	mov r0,d0
	retf [],0
.L123:
	movbu (1,d1),a1
	sub a1,a0,d0
	retf [],0
.L122:
	movbu (d1),a1
	sub a1,a0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),r0
	cmp 1,r0
	ble .L125
	and -2,r0
	add d0,r0
	setlb
.L127:
	movbu (1,d0),a1
	movbu (d0),a0
	movbu a1,(d1)
	movbu a0,(1,d1)
	add_add 2, d0, 2, d1
	cmp r0,d0
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
	cmp 25,d1
	mov 1,d0
	bls .L132
	clr d0
.L132:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,d1
	cmp 127,d1
	mov 1,d0
	bls .L136
	clr d0
.L136:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L142
	cmp 9,d0
	mov 1,d1
	beq .L141
	clr d1
.L141:
	mov d1,d0
	retf [],0
.L142:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L151
	cmp 127,d0
	mov 1,d1
	beq .L150
	clr d1
.L150:
	mov d1,d0
	retf [],0
.L151:
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
	bls .L158
	clr d0
.L158:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	cmp 93,d1
	mov 1,d0
	bls .L162
	clr d0
.L162:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L166
	clr d0
.L166:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	cmp 94,d1
	mov 1,d0
	bls .L170
	clr d0
.L170:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L176
	add -9,d0
	cmp_mov 4, d0, 1, d1
	bhi .L179
	mov d1,d0
	retf [],0
.L179:
	clr d1
	mov d1,d0
	retf [],0
.L176:
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
	bls .L181
	clr d0
.L181:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L189
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L192
.L189:
	mov 1,d0
	retf [],0
.L192:
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L189
	add -65529,d0
	cmp_mov 2, d0, 1, d1
	bls .L186
	clr d1
.L186:
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
	bls .L194
	clr d0
.L194:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L207
	cmp 8231,d0
	bls .L203
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L203
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L203
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L204
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L203:
	mov 1,d0
	retf [],0
.L207:
	inc d0
	mov d0,d1
	and 127,d1
	cmp 32,d1
	mov 1,d0
	bls .L204
	retf [],0
.L204:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L211
	or 32,d0
	mov -97,d1
	add d0,d1
	cmp_mov 5, d1, 1, d0
	bhi .L214
	retf [],0
.L211:
	mov 1,d0
	retf [],0
.L214:
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
	bne .L220
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp_mov 0, d0, d0, r4
	bne .L221
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L224
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L224:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L220:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L221:
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
	bne .L230
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d0, d2
	bne .L231
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L234
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
	ret [d2,d3,a2],24
.L234:
	mov d2,d0
	ret [d2,d3,a2],24
.L230:
	mov d3,d0
	ret [d2,d3,a2],24
.L231:
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
	bne .L243
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L244
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L239
	cmp 0,d0
	bne .L245
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L239:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L246
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L250:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L246:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L250
.L245:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L243:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L244:
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
	bne .L259
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L251
	mov d3,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L253
	cmp 0,d0
	beq .L262
.L259:
	mov d3,d0
.L251:
	ret [d2,d3],20
.L253:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L259
.L262:
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
	bne .L271
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L272
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L267
	cmp 0,d0
	bne .L273
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L267:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L274
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L278:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L274:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L278
.L273:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L271:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L272:
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
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L281
	cmp 0,d0
	bne .L287
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L281:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L288
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L292:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L288:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L292
.L287:
	mov_mov d2, a0, d3, a1
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
	bne .L299
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d3, d0
	bne .L293
	mov d2,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L295
	cmp 0,d0
	beq .L299
.L301:
	mov d3,d0
.L293:
	ret [d2,d3],20
.L295:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L301
.L299:
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
	bne .L312
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L313
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L308
	cmp 0,d0
	bne .L314
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L308:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L315
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L319:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L315:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L319
.L314:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L312:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L313:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L321
	mov +digits,a1
	setlb
.L322:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),a0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu a0,(-1,d1)
	Lne # loop back to: .L322
.L321:
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
	beq .L339
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L331
	mov d0,(4,d1)
.L331:
	retf [],0
.L339:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L341
	mov (4,d0),a0
	mov a0,(4,d1)
.L341:
	mov (4,d0),d0
	cmp 0,d0
	beq .L340
	mov d1,(d0)
.L340:
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
	beq .L352
	clr r7
	mov d1,d2
.L354:
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	add_cmp 1, r7, 0, d0
	mov d2,d3
	beq .L351
	add_cmp r4, d2, r7, a2
	bne .L354
.L352:
	mul r4,a2,d0,d3
	mov (60,sp),a0
	add_add 1, a2, r6, d3
	cmp 0,r4
	mov a2,(a0)
	beq .L351
	mov r4,(12,sp)
	mov_mov a3, d1, d3, d0
	call +memmove,[],0
.L351:
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
	beq .L369
	clr d3
	mov d1,d2
.L371:
	mov_mov d2, d1, a2, d0
	mov r4,a0
	calls (a0)
	add_cmp 1, d3, 0, d0
	mov d2,r6
	beq .L368
	add_cmp r5, d2, d3, a3
	bne .L371
.L369:
	clr r6
.L368:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L385
	retf [],0
.L385:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L393:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L387
	cmp 4,d0
	bls .L387
	cmp 43,a0
	beq .L388
	cmp 45,a0
	bne .L409
	movbu (1,d1),a0
	mov -48,d0
	add_add 1, d1, a0, d0
	cmp 9,d0
	bhi .L398
	mov 1,r2
.L391:
	clr d0
.L395:
	setlb
.L410:
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
	Lls # loop back to: .L410
	cmp 0,r2
	bne .L386
	sub a1,r0,d0
	rets
.L387:
	inc d1
	jmp .L393
.L409:
	mov -48,d0
	clr r2
	add a0,d0
	cmp 9,d0
	bls .L391
.L398:
	clr d0
.L386:
	rets
.L388:
	movbu (1,d1),a0
	mov -48,d0
	clr r2
	add_add a0, d0, 1, d1
	cmp 9,d0
	bhi .L398
	clr d0
	jmp .L395
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	mov d0,d1
.L416:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L412
	cmp 4,d0
	bls .L412
	cmp 43,a0
	beq .L413
	cmp 45,a0
	beq .L414
.L431:
	mov -48,d0
	add a0,d0
	cmp 9,d0
	bhi .L423
	clr r2
.L417:
	clr d0
	setlb
.L420:
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
	Lls # loop back to: .L420
	cmp 0,r2
	beq .L434
	rets
.L412:
	inc d1
	jmp .L416
.L434:
	sub a1,r0,d0
	rets
.L414:
	movbu (1,d1),a0
	mov 1,r2
	mov -48,d0
	add_add r2, d1, a0, d0
	cmp 9,d0
	bls .L417
.L423:
	clr d0
	rets
.L413:
	movbu (1,d1),a0
	inc d1
	jmp .L431
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3],(sp)
.L442:
	movbu (d0),d1
	mov -9,d2
	add d1,d2
	cmp 32,d1
	beq .L436
	cmp 4,d2
	bls .L436
	cmp 43,d1
	beq .L437
	cmp 45,d1
	beq .L438
	mov -48,d2
	add d1,d2
	cmp 9,d2
	bhi .L447
	mov 0,a3
.L440:
	clr r0
	mov 10,d3
	mov r0,r1
.L444:
	setlb
.L457:
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
	Lls # loop back to: .L457
	cmp 0,a3
	bne .L435
	sub a0,r2,r0
	subc a1,r3,r1
.L435:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L436:
	inc d0
	jmp .L442
.L438:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	bhi .L447
	clr r0
	mov 1,a3
	mov 10,d3
	mov r0,r1
	jmp .L444
.L437:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	mov 0,a3
	bls .L440
	mov_mov a3, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L447:
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
.L471:
	cmp 0,d2
	beq .L459
.L474:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	add -1,d2
	sub_cmp r6, d2, 0, d0
	blt .L463
	add a3,d3,a2
	cmp 0,d0
	bne .L471
	mov_mov d3, d0, d3, a0
	ret [d2,d3,a2,a3,exreg1],44
.L463:
	mov r6,d2
	cmp 0,d2
	bne .L474
.L459:
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
	beq .L480
.L476:
	mov d2,r7
	asr 1,r7
	mul r7,a2,d0,r6
	mov r4,(12,sp)
	add_mov d3, r6, a3, d0
	mov_mov r6, d1, r5, a0
	calls (a0)
	add -1,d2
	cmp_asr 0, d0, 1, d2
	beq .L475
	ble .L478
	add a2,r6,d3
	cmp 0,d2
	bne .L476
.L480:
	clr r6
.L475:
	mov_mov r6, d0, r6, a0
	ret [d2,d3,a2,a3,exreg1],48
.L478:
	cmp_mov 0, r7, r7, d2
	bne .L476
	clr r6
	jmp .L475
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
	blt .L498
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L498:
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
	blt .L505
	retf [],0
.L505:
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
	blt .L513
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L513:
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
	beq .L516
.L517:
	cmp a0,d1
	beq .L524
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L517
.L516:
	mov a0,d0
	retf [],0
.L524:
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
	bne .L527
.L526:
	cmp 0,a1
	beq .L527
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L526
.L527:
	cmp r0,a1
	blt .L532
	mov 1,d0
	ble .L536
	retf [],0
.L532:
	mov -1,d0
	retf [],0
.L536:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L538:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L538
	mov a0,d0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L545
	mov d0,d1
	setlb
.L544:
	mov (4,d1),a0
	add_cmp 4, d1, 0, a0
	Lne # loop back to: .L544
	sub d0,d1,d0
	asr 2,d0
	retf [],0
.L545:
	mov d1,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L556
.L550:
	mov (d0),a1
	mov (d1),r0
	add_cmp -1, a0, r0, a1
	bne .L552
	cmp 0,a1
	beq .L552
	add_add 4, d0, 4, d1
	cmp 0,a0
	bne .L550
.L556:
	mov a0,d0
	retf [],0
.L552:
	mov (d0),a1
	mov (d1),d0
	cmp d0,a1
	blt .L560
	cmp_mov d0, a1, 1, a0
	bgt .L556
	mov 0,a0
	mov a0,d0
	retf [],0
.L560:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L561
.L562:
	mov (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L569
	add_cmp 4, d0, 0, a0
	bne .L562
.L561:
	mov a0,d0
	retf [],0
.L569:
	mov_mov d0, a0, d0, d0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L580
.L571:
	mov (d0),r0
	mov (d1),a1
	add_add -1, a0, 4, d0
	cmp a1,r0
	bne .L583
	add_cmp 4, d1, 0, a0
	bne .L571
.L580:
	clr d0
	retf [],0
.L583:
	bge .L576
	mov -1,d0
.L570:
	retf [],0
.L576:
	mov 1,d0
	bgt .L570
	clr d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L585
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L585:
	mov_mov a1, d0, a1, a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L599
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L608
	cmp 0,d0
	beq .L599
	asl2 a1
	setlb
.L596:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L596
.L599:
	mov a0,d0
	retf [],0
.L608:
	clr r0
	cmp r0,d0
	beq .L599
.L594:
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	beq .L599
	mov (r0,d1),d0
	add -1,a1
	mov d0,(r0,a0)
	add_cmp 4, r0, -1, a1
	bne .L594
	jmp .L599
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L610
	mov d0,r0
	setlb
.L611:
	add -1,a1
	cmp -1,a1
	mov d1,(r0+)
	Lne # loop back to: .L611
.L610:
	mov a0,d0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L619
	cmp 0,a0
	beq .L618
	add_add -1, d0, -1, d1
	setlb
.L621:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L621
	retf [],0
.L619:
	beq .L618
	cmp 0,a0
	beq .L618
	mov 0,a1
	setlb
.L622:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	Lne # loop back to: .L622
.L618:
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
	beq .L634
	clr d0
	asl a0,r2,d1
.L635:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L636
	clr r0
	mov r0,r1
	lsr a0,r3,r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L636:
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
.L634:
	mov_mov r2, a1, a0, d2
	lsr 1,a1
	not d2
	lsr d2,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L635
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	movm [d2],(sp)
	mov (16,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L641
	clr d0
	mov d0,d1
	lsr a0,r3,d0
.L642:
	not a0
	inc a0
	mov a0,a1
	and 32,a1
	and 63,a0
	cmp 0,a1
	beq .L643
	asl a0,r2,r1
	clr r0
	or d0,r0,a0
	or d1,r1,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L643:
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
.L641:
	mov_mov d1, a1, a0, d2
	add a1,a1
	not d2
	asl d2,a1
	lsr a0,r2,d0
	or_lsr a1, d0, a0, d1
	jmp .L642
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
.L672:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L676
	cmp 32,d1
	bne .L672
	mov a0,d0
	retf [],0
.L676:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L677
	and 1,d0
	bne .L677
	mov 1,d0
	setlb
.L679:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L679
	retf [],0
.L677:
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
	blt .L688
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L691
	mov d2,d0
.L685:
	ret [d2],16
.L688:
	mov 1,d0
	ret [d2],16
.L691:
	clr d2
	mov d2,d0
	jmp .L685
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
	blt .L695
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L698
	mov d2,d0
.L692:
	ret [d2,d3,a2],32
.L695:
	mov 1,d0
	ret [d2,d3,a2],32
.L698:
	clr d2
	mov d2,d0
	jmp .L692
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
	blt .L702
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L705
	mov d2,d0
.L699:
	ret [d2,d3,a2],32
.L702:
	mov 1,d0
	ret [d2,d3,a2],32
.L705:
	clr d2
	mov d2,d0
	jmp .L699
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
	bne .L709
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L709
	cmp 0,d2
	blt .L725
	btst 1,d2
	mov 1073741824,d3
	beq .L712
.L713:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L712:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L709
.L714:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,d1
	lsr 31,d1
	add d2,d1
	btst 1,d2
	mov d0,d3
	bne .L713
	mov d1,d2
	asr 1,d2
	jmp .L714
.L709:
	mov a2,d0
	ret [d2,d3,a2],24
.L725:
	btst 1,d2
	mov 1056964608,d3
	beq .L712
	jmp .L713
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
	bne .L727
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
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
	bne .L745
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L745
	cmp_mov 0, r4, r5, d2
	blt .L761
	btst 1,r4
	mov 1073741824,d3
	beq .L748
.L749:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L748:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L745
.L750:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L749
	mov r0,r4
	asr 1,r4
	jmp .L750
.L745:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L761:
	btst 1,r4
	mov 1071644672,d3
	beq .L748
	jmp .L749
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L763
	add_mov d1, r2, d0, a1
	setlb
.L764:
	movbu (a1),r0
	movbu (d1),r1
	add_add 1, a1, 1, d1
	xor_cmp r1, r0, r2, d1
	movbu r0,(-1,a1)
	Lne # loop back to: .L764
.L763:
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
	beq .L784
	setlb
.L773:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L773
.L784:
	cmp 0,r1
	beq .L775
.L787:
	movbu (d1),r0
	add_add -1, r1, 1, d1
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L777
	add_cmp 1, a1, 0, r1
	bne .L787
.L775:
	clr d0
	movbu d0,(a1)
.L777:
	mov a0,d0
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L788
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L791
.L788:
	mov a0,d0
	retf [],0
.L791:
	inc a0
	cmp a0,d1
	beq .L788
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L788
	jmp .L791
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L802
.L798:
	mov d1,a1
.L801:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L806
	cmp r1,r0
	bne .L801
	mov a0,d0
	retf [],0
.L806:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L798
.L802:
	mov_mov r1, a0, r1, d0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov 0,a0
.L809:
	movbu (d0),a1
	cmp a1,d1
	beq .L813
	add_cmp 1, d0, 0, a1
	bne .L809
.L814:
	mov a0,d0
	retf [],0
.L813:
	mov_add d0, a0, 1, d0
	cmp 0,a1
	bne .L809
	jmp .L814
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2],(sp)
	movbu (d1),d3
	extbu d3,r3
	cmp 0,r3
	beq .L828
	mov d1,a0
	setlb
.L817:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L817
	sub d1,a0,a2
	cmp d1,a0
	beq .L828
	add -1,a2
	extbu d3
.L825:
	movbu (d0),a0
	cmp r3,a0
	beq .L824
	add_cmp 1, d0, 0, a0
	bne .L825
	mov a0,d0
	retf [d2,d3,a2],12
.L824:
	add a2,d0,d2
	mov_mov d1, r1, d0, a1
	mov d3,r0
.L819:
	cmp d2,a1
	beq .L821
	add_cmp 1, a1, r0, a0
	bne .L822
	movbu (a1),a0
	mov 1,r2
	add_cmp r1, r2, 0, a0
	movbu (1,r1),r0
	beq .L821
	cmp_mov 0, r0, r2, r1
	bne .L819
.L822:
	inc d0
	jmp .L825
.L821:
	cmp r0,a0
	bne .L822
.L828:
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
	blt .L848
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L840
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L839
.L840:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L848:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L840
.L839:
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
	beq .L849
	cmp r1,d1
	bcs .L860
	sub r1,d1
	add d0,d1
	cmp d1,d0
	bhi .L860
	movbu (r3),d2
.L855:
	movbu (a0),d0
	mov 1,r2
	add_cmp a0, r2, d2, d0
	beq .L868
	mov r2,a0
.L851:
	cmp a0,d1
	bcc .L855
.L860:
	mov 0,a0
.L849:
	mov a0,d0
	retf [d2],4
.L868:
	cmp 1,r1
	beq .L849
	mov 1,a1
.L852:
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	bne .L869
.L853:
	cmp r1,a1
	beq .L849
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	beq .L853
.L869:
	cmp r2,d1
	bcs .L860
	movbu (r2),d0
	mov 1,a0
	add_cmp r2, a0, d0, d2
	bne .L851
	mov_mov r2, d0, 1, a1
	mov_mov a0, r2, d0, a0
	jmp .L852
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L871
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L871:
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
	blt .L902
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L903
	clr r6
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
.L886:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L886
.L887:
	mov (64,sp),d0
	cmp 0,a3
	mov r6,(d0)
	mov d2,a0
	beq .L893
	mov -2147483648,a1
	add_mov d3, a1, a0, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L893:
	mov_mov d3, a1, a0, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L903:
	mov 1071644672,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L883
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L892
.L883:
	mov (64,sp),d1
	clr d0
	mov_mov d2, a0, d3, a1
	mov d0,(d1)
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L902:
	mov -1074790400,d0
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__ledf2,[],0
	mov -2147483648,r5
	add_cmp d3, r5, a3, d0
	mov d2,r4
	bgt .L904
	clr r6
	mov_mov r5, d3, 1, a3
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
	jmp .L886
.L904:
	mov -1075838976,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp a3,d0
	bgt .L890
	mov (64,sp),d0
	mov_mov d2, a0, d3, a1
	mov a3,(d0)
	mov_mov a1, d1, a0, d0
	ret [d2,d3,a2,a3,exreg1],52
.L890:
	clr r6
	mov 1,a3
	mov 1071644672,a2
	mov_mov r4, d2, r5, d3
	mov r6,r4
.L888:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L887
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L888
	jmp .L887
.L892:
	mov_mov d2, r4, d3, r5
	clr r6
	mov r4,d2
	mov 1071644672,a2
	mov_mov r5, d3, r6, r4
	jmp .L888
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
	beq .L909
	clr r4
	mov r4,r5
	setlb
.L908:
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
	Lne # loop back to: .L908
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],48
.L909:
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
	bcc .L915
	mov 32,d0
	mov 1,a0
.L914:
	add_cmp -1, d0, 0, d1
	blt .L915
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L916
	cmp 0,d0
	bne .L914
	cmp 0,r0
	bne .L931
.L913:
	retf [],0
.L916:
	cmp 0,a0
	beq .L923
.L915:
	clr d0
.L920:
	cmp d1,a1
	bcs .L919
	or_sub a0, d0, d1, a1
.L919:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L920
	cmp 0,r0
	beq .L913
.L931:
	mov a1,d0
	retf [],0
.L923:
	cmp_mov 0, r0, a0, d0
	beq .L913
	jmp .L931
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L934
	asl 8,d0
	clr d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L934:
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
	beq .L947
.L943:
	clr d0
	cmp 0,r3
	bne .L948
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L948:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L947:
	cmp a0,d1
	bne .L943
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L952
	clr d0
	setlb
.L951:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L951
	retf [],0
.L952:
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
	bcs .L957
	add r3,d1,a0
	cmp a0,d0
	bls .L973
.L957:
	cmp 0,d2
	beq .L960
	mov_asl 0, a0, 3, d2
	setlb
.L961:
	add a0,d1,r2
	mov (a0,d1),r0
	mov (4,r2),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp a0,d2
	mov r1,(4,r2)
	Lne # loop back to: .L961
.L960:
	cmp a1,r3
	bls .L956
	setlb
.L962:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L962
.L956:
	retf [d2],4
.L973:
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L956
.L958:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L956
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L958
	jmp .L956
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcs .L975
	add r1,d1,a0
	cmp a0,d0
	bls .L992
.L975:
	cmp 0,r0
	beq .L978
	mov_asl 0, a0, 1, r0
	setlb
.L979:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L979
.L978:
	btst 1,r1
	beq .L974
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L992:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L993
	setlb
.L976:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L976
.L974:
	retf [],0
.L993:
	retf [],0
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	mov (12,sp),r1
	mov_mov r1, a0, r1, r2
	and -4,a0
	cmp_lsr d1, d0, 2, r2
	bcs .L995
	add r1,d1,a1
	cmp a1,d0
	bls .L1010
.L995:
	cmp 0,r2
	beq .L998
	mov_asl 0, a1, 2, r2
	setlb
.L999:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L999
.L998:
	cmp a0,r1
	bls .L994
	setlb
.L1000:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L1000
	retf [],0
.L1010:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L1011
	setlb
.L996:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L996
.L994:
	retf [],0
.L1011:
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
	exthu d0,d1
	mov d1,d0
	asr 15,d0
	cmp 0,d0
	bne .L1027
	mov d1,d0
	asr 14,d0
	cmp 0,d0
	bne .L1024
	mov d1,d0
	asr 13,d0
	cmp 0,d0
	bne .L1028
	mov d1,d0
	asr 12,d0
	cmp 0,d0
	bne .L1029
	mov d1,d0
	asr 11,d0
	cmp 0,d0
	bne .L1030
	mov d1,d0
	asr 10,d0
	cmp 0,d0
	bne .L1031
	mov d1,d0
	asr 9,d0
	cmp 0,d0
	bne .L1032
	mov d1,d0
	asr 8,d0
	cmp 0,d0
	bne .L1033
	mov d1,d0
	asr 7,d0
	cmp 0,d0
	bne .L1034
	mov d1,d0
	asr 6,d0
	cmp 0,d0
	bne .L1035
	mov d1,d0
	asr 5,d0
	cmp 0,d0
	bne .L1036
	mov d1,d0
	asr 4,d0
	cmp 0,d0
	bne .L1037
	mov d1,d0
	asr 3,d0
	cmp 0,d0
	bne .L1038
	mov d1,d0
	asr 2,d0
	cmp 0,d0
	bne .L1039
	mov d1,d0
	asr 1,d0
	cmp 0,d0
	bne .L1040
	cmp 0,d1
	mov 16,d0
	bne .L1045
.L1024:
	retf [],0
.L1027:
	clr d0
	retf [],0
.L1038:
	mov 12,d0
	retf [],0
.L1045:
	mov 15,d0
	retf [],0
.L1028:
	mov 2,d0
	retf [],0
.L1029:
	mov 3,d0
	retf [],0
.L1030:
	mov 4,d0
	retf [],0
.L1031:
	mov 5,d0
	retf [],0
.L1032:
	mov 6,d0
	retf [],0
.L1033:
	mov 7,d0
	retf [],0
.L1034:
	mov 8,d0
	retf [],0
.L1035:
	mov 9,d0
	retf [],0
.L1036:
	mov 10,d0
	retf [],0
.L1037:
	mov 11,d0
	retf [],0
.L1039:
	mov 13,d0
	retf [],0
.L1040:
	mov 14,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	btst 1,d0
	bne .L1049
	mov d0,d1
	and 2,d1
	bne .L1050
	mov d0,d1
	and 4,d1
	bne .L1051
	mov d0,d1
	and 8,d1
	bne .L1052
	mov d0,d1
	and 16,d1
	bne .L1053
	mov d0,d1
	and 32,d1
	bne .L1054
	mov d0,d1
	and 64,d1
	bne .L1055
	mov d0,d1
	and 128,d1
	bne .L1056
	mov d0,d1
	and 256,d1
	bne .L1057
	mov d0,d1
	and 512,d1
	bne .L1058
	mov d0,d1
	and 1024,d1
	bne .L1059
	mov d0,d1
	and 2048,d1
	bne .L1060
	mov d0,d1
	and 4096,d1
	bne .L1061
	mov d0,d1
	and 8192,d1
	bne .L1062
	mov d0,d1
	and 16384,d1
	bne .L1063
	exthu d0,d1
	asr 15,d1
	cmp 0,d1
	mov 16,d0
	bne .L1068
	retf [],0
.L1049:
	clr d0
	retf [],0
.L1050:
	mov 1,d0
	retf [],0
.L1061:
	mov 12,d0
	retf [],0
.L1068:
	mov 15,d0
	retf [],0
.L1051:
	mov 2,d0
	retf [],0
.L1052:
	mov 3,d0
	retf [],0
.L1053:
	mov 4,d0
	retf [],0
.L1054:
	mov 5,d0
	retf [],0
.L1055:
	mov 6,d0
	retf [],0
.L1056:
	mov 7,d0
	retf [],0
.L1057:
	mov 8,d0
	retf [],0
.L1058:
	mov 9,d0
	retf [],0
.L1059:
	mov 10,d0
	retf [],0
.L1060:
	mov 11,d0
	retf [],0
.L1062:
	mov 13,d0
	retf [],0
.L1063:
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
	bge .L1077
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1077:
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
	beq .L1085
	clr d0
	setlb
.L1084:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1084
	retf [],0
.L1085:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1092
	cmp 0,d1
	beq .L1093
	clr d0
	setlb
.L1091:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1091
	retf [],0
.L1092:
	retf [],0
.L1093:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1099
	mov 32,d0
	mov 1,a0
.L1098:
	add_cmp -1, d0, 0, d1
	blt .L1099
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1100
	cmp 0,d0
	bne .L1098
	cmp 0,r0
	bne .L1115
.L1097:
	retf [],0
.L1100:
	cmp 0,a0
	beq .L1107
.L1099:
	clr d0
.L1104:
	cmp d1,a1
	bcs .L1103
	or_sub a0, d0, d1, a1
.L1103:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1104
	cmp 0,r0
	beq .L1097
.L1115:
	mov a1,d0
	retf [],0
.L1107:
	cmp_mov 0, r0, a0, d0
	beq .L1097
	jmp .L1115
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L1119
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1122
	mov d2,d0
.L1116:
	ret [d2,d3],20
.L1122:
	clr d2
	mov d2,d0
	jmp .L1116
.L1119:
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
	blt .L1126
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1129
	mov d2,d0
.L1123:
	ret [d2,d3,a2,a3],36
.L1129:
	clr d2
	mov d2,d0
	jmp .L1123
.L1126:
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
	blt .L1150
	beq .L1140
	clr r2
	clr d0
	mov 32,a1
.L1139:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1138
	cmp 0,r1
	bne .L1139
.L1138:
	cmp 0,r2
	beq .L1134
	not d0
	inc d0
	retf [],0
.L1140:
	mov d1,d0
.L1134:
	retf [],0
.L1150:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1139
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1171
	clr r1
	cmp_mov 0, d1, 1, a0
	blt .L1172
.L1153:
	cmp_mov d1, d0, 1, a0
	mov d0,r0
	bls .L1155
	mov 32,a1
	mov 1,a0
.L1154:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1158
	cmp 0,a1
	bne .L1154
.L1158:
	cmp_mov 0, a0, a0, d0
	beq .L1156
.L1155:
	clr d0
.L1160:
	cmp d1,r0
	bcs .L1159
	or_sub a0, d0, d1, r0
.L1159:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1160
.L1156:
	cmp 0,r1
	beq .L1151
	not d0
	inc d0
.L1151:
	retf [],0
.L1172:
	not d1
	add_mov 1, d1, a0, r1
	jmp .L1153
.L1171:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 0, a0, 1, r1
	bge .L1153
	jmp .L1172
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1193
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1194
.L1175:
	cmp_mov d1, d0, 1, a0
	bls .L1182
	mov 32,a1
	mov 1,a0
.L1176:
	add_asl -1, a1, 1, d1
	cmp_asl d1, d0, 1, a0
	bls .L1180
	cmp 0,a1
	bne .L1176
.L1180:
	cmp 0,a0
	beq .L1178
.L1182:
	cmp_lsr d1, r0, 1, a0
	bcs .L1181
	sub d1,r0
.L1181:
	cmp_lsr 0, a0, 1, d1
	bne .L1182
	mov r0,d0
.L1178:
	cmp 0,r1
	beq .L1173
	not d0
	inc d0
.L1173:
	retf [],0
.L1194:
	not d1
	inc d1
	jmp .L1175
.L1193:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1175
	jmp .L1194
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
	bcc .L1310
	exth d1,d0
	cmp 0,d0
	blt .L1198
	mov d1,d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1199
	exth d0,a0
	cmp 0,a0
	blt .L1200
	mov d1,d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1201
	exth d0,r3
	cmp 0,r3
	blt .L1202
	mov d1,d0
	asl2 d0
	add d0,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1203
	exth d0,r3
	cmp 0,r3
	blt .L1204
	mov d1,d0
	asl2 d0
	asl2 d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1205
	exth d0,r3
	cmp 0,r3
	blt .L1206
	mov d1,d0
	asl 5,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1207
	exth d0,r3
	cmp 0,r3
	blt .L1208
	mov d1,d0
	asl 6,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1209
	exth d0,r3
	cmp 0,r3
	blt .L1210
	mov d1,d0
	asl 7,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1211
	exth d0,r3
	cmp 0,r3
	blt .L1212
	mov d1,d0
	asl 8,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1213
	exth d0,r3
	cmp 0,r3
	blt .L1214
	mov d1,d0
	asl 9,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1215
	exth d0,r3
	cmp 0,r3
	blt .L1216
	mov d1,d0
	asl 10,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1217
	exth d0,d2
	cmp 0,d2
	blt .L1218
	mov d1,d0
	asl 11,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1219
	exth d0,d2
	cmp 0,d2
	blt .L1220
	mov d1,d0
	asl 12,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1221
	exth d0,d2
	cmp 0,d2
	blt .L1222
	mov d1,d0
	asl 13,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1223
	exth d0,d2
	cmp 0,d2
	blt .L1224
	mov d1,d0
	asl 14,d0
	exthu d0,a0
	cmp a0,r2
	mov d0,a1
	bls .L1225
	exth d0,d2
	cmp 0,d2
	blt .L1226
	asl 15,d1
	exthu d1,a0
	cmp a0,r2
	bls .L1227
	cmp 0,a0
	mov r1,d0
	bne .L1311
.L1228:
	cmp 0,r0
	bne .L1195
	mov d1,d0
.L1195:
	retf [d2],4
.L1215:
	bcs .L1261
	sub d0,r1,d0
	mov 512,r2
	mov 512,d1
	exthu a1
.L1230:
	mov_mov r2, r1, a1, a0
	lsr 2,r1
	cmp_lsr 0, r1, 2, a0
	mov r1,r3
	beq .L1228
	exthu d0,r1
	cmp a0,r1
	bcs .L1231
	or_sub r3, d1, a0, d0
.L1231:
	mov_mov r2, r1, a1, a0
	lsr 3,r1
	cmp_lsr 0, r1, 3, a0
	mov r1,r3
	beq .L1228
	exthu d0,r1
	cmp a0,r1
	bcs .L1232
	or_sub r3, d1, a0, d0
.L1232:
	mov_mov r2, r1, a1, a0
	lsr 4,r1
	cmp_lsr 0, r1, 4, a0
	mov r1,d2
	beq .L1228
	exthu d0,r1
	cmp a0,r1
	bcs .L1233
	or_sub d2, d1, a0, d0
.L1233:
	mov_mov r2, r1, a1, a0
	lsr 5,r1
	cmp_lsr 0, r1, 5, a0
	mov r1,d2
	beq .L1228
	exthu d0,r1
	cmp a0,r1
	bcs .L1234
	or_sub d2, d1, a0, d0
.L1234:
	mov_mov r2, r1, a1, a0
	lsr 6,r1
	cmp_lsr 0, r1, 6, a0
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1235
	or_sub r1, d1, a0, d0
.L1235:
	mov_mov r2, d2, a1, a0
	lsr 7,d2
	cmp_lsr 0, d2, 7, a0
	mov d2,r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1236
	or_sub r1, d1, a0, d0
.L1236:
	mov_mov r2, d2, a1, a0
	lsr 8,d2
	lsr 8,a0
	cmp_mov 0, d2, d2, r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1237
	or_sub r1, d1, a0, d0
.L1237:
	mov_mov r2, d2, a1, a0
	lsr 9,d2
	lsr 9,a0
	cmp_mov 0, d2, d2, r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1238
	or_sub r1, d1, a0, d0
.L1238:
	mov_mov r2, d2, a1, a0
	lsr 10,d2
	lsr 10,a0
	cmp_mov 0, d2, d2, r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1239
	or_sub r1, d1, a0, d0
.L1239:
	mov_mov r2, d2, a1, a0
	lsr 11,d2
	lsr 11,a0
	cmp_mov 0, d2, d2, r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1240
	or_sub r1, d1, a0, d0
.L1240:
	mov_mov r2, d2, a1, a0
	lsr 12,d2
	lsr 12,a0
	cmp_mov 0, d2, d2, r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1241
	or_sub r1, d1, a0, d0
.L1241:
	mov_mov r2, d2, a1, a0
	lsr 13,d2
	lsr 13,a0
	cmp_mov 0, d2, d2, r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1242
	or_sub r1, d1, a0, d0
.L1242:
	mov_mov r2, d2, a1, a0
	lsr 14,d2
	lsr 14,a0
	cmp_mov 0, d2, d2, r1
	beq .L1228
	exthu d0,d2
	cmp a0,d2
	bcs .L1243
	or_sub r1, d1, a0, d0
.L1243:
	lsr 15,a1
	cmp 16384,r2
	beq .L1228
	exthu d0,a0
	cmp a1,a0
	bcs .L1251
	or 1,d1
	sub a1,d0
	jmp .L1228
.L1311:
	mov 32768,r2
	mov -32768,d0
	mov 16384,a0
	mov a0,d2
	add r1,d0
	mov -32768,d1
	mov r2,a1
.L1248:
	exthu d0,r1
	exthu a0,r3
	cmp r3,r1
	bcs .L1230
	or_sub d2, d1, a0, d0
	jmp .L1230
.L1251:
	clr d0
	jmp .L1228
.L1310:
	beq .L1249
	mov r1,d0
	clr d1
	jmp .L1228
.L1198:
	sub d1,r1,d0
	mov 1,d1
	jmp .L1228
.L1199:
	bcs .L1253
	sub d0,r1,d0
	mov 2,r2
	mov 2,d1
	exthu a1
	jmp .L1230
.L1200:
	mov d1,a0
	sub d0,r1,d0
	and 32767,a0
	mov 2,r2
	mov 1,d2
	mov 2,d1
	exthu a1
	jmp .L1248
.L1201:
	bcs .L1254
	sub d0,r1,d0
	mov 4,r2
	mov 4,d1
	exthu a1
	jmp .L1230
.L1202:
	sub d0,r1,d0
	mov_lsr 4, r2, 1, a0
	mov 2,d2
	mov 4,d1
	exthu a1
	jmp .L1248
.L1203:
	bcs .L1255
	sub d0,r1,d0
	mov 8,r2
	mov 8,d1
	exthu a1
	jmp .L1230
.L1204:
	sub d0,r1,d0
	mov 8,r2
	lsr 1,a0
	mov 4,d2
	mov 8,d1
	exthu a1
	jmp .L1248
.L1205:
	bcs .L1256
	sub d0,r1,d0
	mov 16,r2
	mov 16,d1
	exthu a1
	jmp .L1230
.L1206:
	sub d0,r1,d0
	mov 16,r2
	lsr 1,a0
	mov 8,d2
	mov 16,d1
	exthu a1
	jmp .L1248
.L1207:
	bcs .L1257
	sub d0,r1,d0
	mov 32,r2
	mov 32,d1
	exthu a1
	jmp .L1230
.L1208:
	sub d0,r1,d0
	mov 32,r2
	lsr 1,a0
	mov 16,d2
	mov 32,d1
	exthu a1
	jmp .L1248
.L1209:
	bcs .L1258
	sub d0,r1,d0
	mov 64,r2
	mov 64,d1
	exthu a1
	jmp .L1230
.L1210:
	sub d0,r1,d0
	mov 64,r2
	lsr 1,a0
	mov 32,d2
	mov 64,d1
	exthu a1
	jmp .L1248
.L1211:
	bcs .L1259
	sub d0,r1,d0
	movu 128,r2
	mov 128,d1
	exthu a1
	jmp .L1230
.L1212:
	sub d0,r1,d0
	movu 128,r2
	lsr 1,a0
	mov 64,d2
	mov 128,d1
	exthu a1
	jmp .L1248
.L1214:
	sub d0,r1,d0
	mov 256,r2
	lsr 1,a0
	mov 128,d2
	mov 256,d1
	exthu a1
	jmp .L1248
.L1249:
	mov 1,d1
	clr d0
	jmp .L1228
.L1216:
	sub d0,r1,d0
	mov 512,r2
	lsr 1,a0
	mov 256,d2
	mov 512,d1
	exthu a1
	jmp .L1248
.L1253:
	mov 2,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1218:
	sub d0,r1,d0
	mov 1024,r2
	lsr 1,a0
	mov 512,d2
	mov 1024,d1
	exthu a1
	jmp .L1248
.L1254:
	mov 4,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1220:
	sub d0,r1,d0
	mov 2048,r2
	lsr 1,a0
	mov 1024,d2
	mov 2048,d1
	exthu a1
	jmp .L1248
.L1255:
	mov 8,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1222:
	sub d0,r1,d0
	mov 4096,r2
	lsr 1,a0
	mov 2048,d2
	mov 4096,d1
	exthu a1
	jmp .L1248
.L1224:
	sub d0,r1,d0
	mov 8192,r2
	lsr 1,a0
	mov 4096,d2
	mov 8192,d1
	exthu a1
	jmp .L1248
.L1256:
	mov 16,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1226:
	sub d0,r1,d0
	mov 16384,r2
	lsr 1,a0
	mov 8192,d2
	mov 16384,d1
	exthu a1
	jmp .L1248
.L1257:
	mov 32,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1258:
	mov 64,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1227:
	exth r1,d0
	cmp 0,d0
	blt .L1252
	mov -32768,a1
	mov a1,r2
	exthu a1
	exthu r2
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1259:
	movu 128,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1213:
	bcs .L1260
	sub d0,r1,d0
	mov 256,r2
	mov 256,d1
	exthu a1
	jmp .L1230
.L1252:
	mov 32768,r2
	mov -32768,d1
	clr d0
	mov r2,a1
	jmp .L1230
.L1260:
	mov 256,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1223:
	bcs .L1265
	sub d0,r1,d0
	mov 8192,r2
	mov 8192,d1
	exthu a1
	jmp .L1230
.L1217:
	bcs .L1262
	sub d0,r1,d0
	mov 1024,r2
	mov 1024,d1
	exthu a1
	jmp .L1230
.L1265:
	mov 8192,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1262:
	mov 1024,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1261:
	mov 512,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1221:
	bcs .L1264
	sub d0,r1,d0
	mov 4096,r2
	mov 4096,d1
	exthu a1
	jmp .L1230
.L1219:
	bcs .L1263
	sub d0,r1,d0
	mov 2048,r2
	mov 2048,d1
	exthu a1
	jmp .L1230
.L1225:
	bcs .L1266
	sub d0,r1,d0
	mov 16384,r2
	mov 16384,d1
	exthu a1
	jmp .L1230
.L1264:
	mov 4096,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1263:
	mov 2048,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
.L1266:
	mov 16384,r2
	exthu r2
	exthu a1
	mov_mov r2, d2, a1, a0
	mov r1,d0
	lsr 1,d2
	lsr 1,a0
	clr d1
	jmp .L1248
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp d1,d0
	mov (12,sp),r0
	mov_mov 1, a0, d0, a1
	bls .L1314
	mov 32,d0
	mov 1,a0
.L1313:
	add_cmp -1, d0, 0, d1
	blt .L1314
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1315
	cmp 0,d0
	bne .L1313
	cmp 0,r0
	bne .L1330
.L1312:
	retf [],0
.L1315:
	cmp 0,a0
	beq .L1322
.L1314:
	clr d0
.L1319:
	cmp d1,a1
	bcs .L1318
	or_sub a0, d0, d1, a1
.L1318:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1319
	cmp 0,r0
	beq .L1312
.L1330:
	mov a1,d0
	retf [],0
.L1322:
	cmp_mov 0, r0, a0, d0
	beq .L1312
	jmp .L1330
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, a0, d0
	and 32,d0
	beq .L1332
	mov 0,a1
	asl a0,r2,a0
	mov_mov a1, r0, a0, r1
.L1334:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1332:
	cmp 0,a0
	beq .L1335
	clr d0
	sub a0,d0
	lsr d0,r2,d0
	asl a0,d1
	asl a0,r2,a1
	or d1,d0,a0
	mov_mov a1, r0, a0, r1
	jmp .L1334
.L1335:
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
	beq .L1339
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1341:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1339:
	cmp 0,a0
	beq .L1342
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	asr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1341
.L1342:
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
	bls .L1350
	mov 0,a0
.L1350:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,d1
	btst 65280,d1
	mov 1,d0
	beq .L1351
	clr d0
.L1351:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub_add d0, a1, d0, a0
	lsr a1,d1
	btst 240,d1
	mov 1,d0
	beq .L1352
	clr d0
.L1352:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	btst 12,d1
	mov 1,a0
	beq .L1353
	mov 0,a0
.L1353:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1355
	sub d1,r1,d0
.L1355:
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
	blt .L1371
	bgt .L1372
	cmp a0,r0
	bcs .L1371
	bhi .L1372
	mov 1,d0
	retf [],0
.L1371:
	clr d0
	retf [],0
.L1372:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	blt .L1380
	bgt .L1379
	cmp a0,r0
	bcs .L1380
	mov 1,d0
	bls .L1383
	retf [],0
.L1380:
	mov -1,d0
	retf [],0
.L1383:
	clr d0
	retf [],0
.L1379:
	mov 1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a0
	beq .L1385
	mov 0,a0
.L1385:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	cmp_mov 0, a1, 1, d0
	beq .L1386
	clr d0
.L1386:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	btst 15,d1
	mov 1,d0
	beq .L1387
	clr d0
.L1387:
	asl2 d0
	add a0,d0,a1
	lsr d0,d1
	btst 3,d1
	mov 1,d0
	beq .L1388
	clr d0
.L1388:
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
	beq .L1404
	mov 0,a1
	lsr a0,d1,a0
	mov_mov a0, r2, a1, r3
.L1406:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1404:
	cmp 0,a0
	beq .L1407
	clr d0
	sub a0,d0
	asl d0,d1,d0
	lsr a0,r0,d1
	lsr a0,r1,a1
	or d1,d0,a0
	mov_mov a0, r2, a1, r3
	jmp .L1406
.L1407:
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
	beq .L1430
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1427:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, a2, d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp_mov 0, a2, d1, r5
	beq .L1426
.L1428:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,r0
	lsr 31,r0
	add a2,r0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1427
	mov r0,a2
	asr 1,a2
	jmp .L1428
.L1426:
	cmp 0,a3
	blt .L1433
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1430:
	mov_mov a3, a2, d0, r4
	mov a2,d0
	lsr 31,d0
	add d0,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	bne .L1428
	jmp .L1426
.L1433:
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
	beq .L1435
.L1437:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1435:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1436
.L1438:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,a0
	lsr 31,a0
	add d2,a0
	btst 1,d2
	mov d0,d3
	bne .L1437
	mov a0,d2
	asr 1,d2
	jmp .L1438
.L1436:
	cmp 0,a3
	blt .L1443
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1443:
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
	bcs .L1448
	bhi .L1449
	cmp a0,r0
	bcs .L1448
	bhi .L1449
	mov 1,d0
	retf [],0
.L1448:
	clr d0
	retf [],0
.L1449:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	mov (16,sp),a1
	mov (12,sp),a0
	cmp_mov a1, d1, d0, r0
	bcs .L1457
	bhi .L1456
	cmp a0,r0
	bcs .L1457
	mov 1,d0
	bls .L1460
	retf [],0
.L1457:
	mov -1,d0
	retf [],0
.L1460:
	clr d0
	retf [],0
.L1456:
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
