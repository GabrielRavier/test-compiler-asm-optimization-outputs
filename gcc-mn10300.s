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
	mov d0,a0
	mov (16,sp),r0
	movbu (12,sp),d0
.L52:
	cmp 0,r0
	beq .L55
	movbu (d1),a1
	add_add -1, r0, 1, d1
	movbu a1,(a0)
	extbu a1
	add_cmp 1, a0, d0, a1
	bne .L52
	retf [],0
.L55:
	mov 0,a0
	retf [],0
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L66
.L57:
	movbu (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L67
	add_cmp 1, d0, 0, a0
	bne .L57
	retf [],0
.L67:
	mov d0,a0
	retf [],0
.L66:
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L73
.L69:
	movbu (d0),r0
	movbu (d1),a1
	add_add -1, a0, 1, d0
	add_cmp 1, d1, a1, r0
	bne .L81
	cmp 0,a0
	bne .L69
.L73:
	mov a0,d0
	retf [],0
.L81:
	sub a1,r0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L83
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L83:
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
.L90:
	cmp_mov d0, a1, a1, a0
	beq .L95
	movbu (a0),r0
	add_cmp -1, a1, d1, r0
	bne .L90
	retf [],0
.L95:
	mov 0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L99
	mov a0,(12,sp)
	extbu d1
	call +memset,[],0
	mov a0,a1
.L99:
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
	beq .L103
	setlb
.L104:
	movbu (1,d1),d0
	add_add 1, a0, 1, d1
	extbu d0,r0
	cmp 0,r0
	movbu d0,(a0)
	Lne # loop back to: .L104
.L103:
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	mov d0,a0
	movbu (d0),d0
	extbu d1
	cmp 0,d0
	beq .L111
.L112:
	cmp d1,d0
	beq .L111
	movbu (1,a0),d0
	add_cmp 1, a0, 0, d0
	bne .L112
.L111:
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
	mov d0,a0
.L123:
	movbu (a0),d0
	cmp d1,d0
	beq .L122
	add_cmp 1, a0, 0, d0
	bne .L123
	mov d0,a0
.L122:
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d1),r0
	movbu (d0),a0
	add_mov -1, d1, 1, a1
	cmp r0,a0
	bne .L129
.L128:
	cmp 0,a0
	beq .L129
	movbu (a1,d0),a0
	inc a1
	movbu (a1,d1),r0
	extbu a0
	cmp r0,a0
	beq .L128
.L129:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp 0,d1
	beq .L141
	mov d0,a1
	setlb
.L140:
	movbu (1,a1),a0
	add_cmp 1, a1, 0, a0
	Lne # loop back to: .L140
	sub d0,a1,d0
	retf [],0
.L141:
	mov d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L153
	movbu (d0),a0
	cmp 0,a0
	beq .L157
	movbu (d1),a1
	mov_add 1, r1, -1, r0
	add_add d0, r0, d1, r1
	cmp 0,a1
	beq .L148
.L159:
	cmp r0,d0
	beq .L148
	add_cmp 1, d0, a0, a1
	bne .L148
	movbu (d0),a0
	cmp 0,a0
	beq .L158
	mov r1,d1
	movbu (d1),a1
	mov 1,r1
	add_cmp d1, r1, 0, a1
	bne .L159
.L148:
	sub a1,a0,d0
	retf [],0
.L153:
	mov r0,d0
	retf [],0
.L158:
	movbu (1,d1),a1
	sub a1,a0,d0
	retf [],0
.L157:
	movbu (d1),a1
	sub a1,a0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),r0
	cmp 1,r0
	ble .L160
	and -2,r0
	add d0,r0
	setlb
.L162:
	movbu (1,d0),a1
	movbu (d0),a0
	add_add 2, d1, 2, d0
	cmp r0,d0
	movbu a1,(-2,d1)
	movbu a0,(-1,d1)
	Lne # loop back to: .L162
.L160:
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
	bls .L167
	clr d0
.L167:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov d0,d1
	cmp 127,d1
	mov 1,d0
	bls .L171
	clr d0
.L171:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L177
	cmp 9,d0
	mov 1,d1
	beq .L176
	clr d1
.L176:
	mov d1,d0
	retf [],0
.L177:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L186
	cmp 127,d0
	mov 1,d1
	beq .L185
	clr d1
.L185:
	mov d1,d0
	retf [],0
.L186:
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
	bls .L193
	clr d0
.L193:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add d0,d1
	cmp 93,d1
	mov 1,d0
	bls .L197
	clr d0
.L197:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add d0,d1
	cmp 25,d1
	mov 1,d0
	bls .L201
	clr d0
.L201:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add d0,d1
	cmp 94,d1
	mov 1,d0
	bls .L205
	clr d0
.L205:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L211
	add -9,d0
	cmp_mov 4, d0, 1, d1
	bhi .L214
	mov d1,d0
	retf [],0
.L214:
	clr d1
	mov d1,d0
	retf [],0
.L211:
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
	bls .L216
	clr d0
.L216:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L224
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L227
.L224:
	mov 1,d0
	retf [],0
.L227:
	mov -8232,a0
	add d0,a0
	cmp 1,a0
	bls .L224
	add -65529,d0
	cmp_mov 2, d0, 1, a1
	bls .L221
	clr a1
.L221:
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
	bls .L229
	clr d0
.L229:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L242
	cmp 8231,d0
	bls .L238
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L238
	mov -57344,a0
	add d0,a0
	cmp 8184,a0
	bls .L238
	mov -65532,a1
	add d0,a1
	cmp 1048579,a1
	bhi .L239
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L238:
	mov 1,d0
	retf [],0
.L242:
	inc d0
	mov d0,r0
	and 127,r0
	cmp 32,r0
	mov 1,d0
	bls .L239
	retf [],0
.L239:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L246
	or 32,d0
	add -97,d0
	cmp_mov 5, d0, 1, a0
	bhi .L249
	mov a0,d0
	retf [],0
.L246:
	mov 1,d0
	retf [],0
.L249:
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
	bne .L255
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp_mov 0, d0, d0, r4
	bne .L256
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L259
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, a0, d1, a1
	mov_mov d0, d2, d1, d3
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L259:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L255:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L256:
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
	bne .L265
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d0, d2
	bne .L266
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L269
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
	ret [d2,d3,a2],24
.L269:
	mov d2,d0
	ret [d2,d3,a2],24
.L265:
	mov d3,d0
	ret [d2,d3,a2],24
.L266:
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
	mov d1,d3
	add -12,sp
	mov_mov d0, d1, d0, d2
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L294
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L286
	mov d3,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L288
	cmp 0,d0
	beq .L297
.L294:
	mov d3,d0
.L286:
	ret [d2,d3],20
.L288:
	mov_mov d3, d1, d2, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L294
.L297:
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
	bne .L306
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L307
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r4
	mov a3,r5
	beq .L302
	cmp 0,d0
	bne .L308
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L302:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L309
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
.L313:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L309:
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
	jmp .L313
.L308:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L306:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L307:
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
	bne .L320
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L321
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L316
	cmp 0,d0
	bne .L322
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L316:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L323
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
.L327:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L323:
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
	jmp .L327
.L322:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L320:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L321:
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
	bne .L334
	mov_mov d2, d1, d2, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d3, d0
	bne .L328
	mov d2,d1
	and -2147483648,d0
	and -2147483648,d1
	cmp d1,d0
	beq .L330
	cmp 0,d0
	beq .L334
.L336:
	mov d3,d0
.L328:
	ret [d2,d3],20
.L330:
	mov_mov d2, d1, d3, d0
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L336
.L334:
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
	bne .L347
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L348
	mov_mov d3, d0, a3, d1
	and -2147483648,d0
	and -2147483648,d1
	cmp_mov d1, d0, d3, r5
	mov a3,r4
	beq .L343
	cmp 0,d0
	bne .L349
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L343:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L350
	mov_mov a2, a0, a3, a1
	mov_mov a0, r0, a1, r1
.L354:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L350:
	mov_mov d2, a0, d3, a1
	mov_mov a0, r0, a1, r1
	jmp .L354
.L349:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L347:
	mov_mov a2, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L348:
	mov_mov d2, r0, d3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	cmp 0,d0
	mov +s.0,d1
	beq .L356
	mov +digits,a1
	setlb
.L357:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),r0
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	movbu r0,(-1,d1)
	Lne # loop back to: .L357
.L356:
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
	beq .L374
	mov (d1),a0
	mov d1,(4,d0)
	mov a0,(d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L366
	mov d0,(4,d1)
.L366:
	retf [],0
.L374:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L376
	mov (4,d0),a0
	mov a0,(4,d1)
.L376:
	mov (4,d0),d0
	cmp 0,d0
	beq .L375
	mov d1,(d0)
.L375:
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
	beq .L387
	clr r7
	mov d1,d2
.L389:
	mov_mov d2, d1, a2, d0
	mov_mov d2, a3, r5, a1
	calls (a1)
	cmp 0,d0
	beq .L386
	add_add 1, r7, r4, d2
	cmp r7,d3
	bne .L389
.L387:
	mul r4,d3,d0,a3
	mov (60,sp),d0
	add_add 1, d3, r6, a3
	cmp 0,r4
	mov d3,(d0)
	beq .L386
	mov r4,(12,sp)
	mov_mov a2, d1, a3, d0
	call +memmove,[],0
.L386:
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
	beq .L404
	clr d3
	mov d1,d2
.L406:
	mov_mov d2, d1, a2, d0
	mov r4,a1
	calls (a1)
	cmp_mov 0, d0, d2, r6
	beq .L403
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L406
.L404:
	clr r6
.L403:
	mov r6,a0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	cmp 0,d0
	blt .L420
	retf [],0
.L420:
	not d0
	inc d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L428:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L422
	cmp 4,d0
	bls .L422
	cmp 43,a0
	beq .L423
	cmp 45,a0
	bne .L446
	movbu (1,d1),a0
	mov -48,r0
	add_add 1, d1, a0, r0
	cmp 9,r0
	bhi .L433
	mov 1,r2
.L426:
	clr d0
.L430:
	setlb
.L447:
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
	Lls # loop back to: .L447
	cmp 0,r2
	bne .L421
	sub a1,r3,d0
	rets
.L422:
	inc d1
	jmp .L428
.L446:
	mov -48,r1
	clr r2
	add a0,r1
	cmp 9,r1
	bls .L426
.L433:
	clr d0
.L421:
	rets
.L423:
	movbu (1,d1),a0
	mov -48,a1
	clr r2
	add_add 1, d1, a0, a1
	cmp 9,a1
	bhi .L433
	clr d0
	jmp .L430
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	mov d0,d1
.L453:
	movbu (d1),a0
	mov -9,d0
	add a0,d0
	cmp 32,a0
	beq .L449
	cmp 4,d0
	bls .L449
	cmp 43,a0
	beq .L450
	cmp 45,a0
	beq .L451
.L470:
	mov -48,r0
	add a0,r0
	cmp 9,r0
	bhi .L460
	clr r2
.L454:
	clr d0
	setlb
.L457:
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
	Lls # loop back to: .L457
	cmp 0,r2
	beq .L473
	rets
.L449:
	inc d1
	jmp .L453
.L473:
	sub a1,r3,d0
	rets
.L451:
	movbu (1,d1),a0
	mov 1,r2
	mov -48,a1
	add_add r2, d1, a0, a1
	cmp 9,a1
	bls .L454
.L460:
	clr d0
	rets
.L450:
	movbu (1,d1),a0
	inc d1
	jmp .L470
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3],(sp)
.L481:
	movbu (d0),d1
	mov -9,d2
	add d1,d2
	cmp 32,d1
	beq .L475
	cmp 4,d2
	bls .L475
	cmp 43,d1
	beq .L476
	cmp 45,d1
	beq .L477
	mov -48,d2
	add d1,d2
	cmp 9,d2
	bhi .L486
	mov 0,a3
.L479:
	clr r0
	mov 10,d3
	mov r0,r1
.L483:
	setlb
.L498:
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
	Lls # loop back to: .L498
	cmp 0,a3
	bne .L474
	sub a0,r2,r0
	subc a1,r3,r1
.L474:
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L475:
	inc d0
	jmp .L481
.L477:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	bhi .L486
	clr r0
	mov 1,a3
	mov 10,d3
	mov r0,r1
	jmp .L483
.L476:
	movbu (1,d0),d1
	mov -48,d2
	add_add 1, d0, d1, d2
	cmp 9,d2
	mov 0,a3
	bls .L479
	mov_mov a3, r0, a3, r1
	mov_mov r0, d0, r1, d1
	ret [d2,d3,a2,a3],16
.L486:
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
.L512:
	cmp 0,d2
	beq .L500
.L515:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	mov_add r5, a0, a2, d3
	mov_mov r4, d0, d3, d1
	calls (a0)
	add -1,d2
	sub_cmp r6, d2, 0, d0
	blt .L504
	add a3,d3,a2
	cmp 0,d0
	bne .L512
	mov d3,a0
	ret [d2,d3,a2,a3,exreg1],44
.L504:
	mov r6,d2
	cmp 0,d2
	bne .L515
.L500:
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
	beq .L521
.L529:
	mov d2,r7
	asr 1,r7
	mul r7,a2,d0,r6
	mov r5,(12,sp)
	add_mov d3, r6, a3, d0
	mov_mov r6, d1, r4, a0
	calls (a0)
	add -1,d2
	cmp_asr 0, d0, 1, d2
	beq .L516
	ble .L519
	add a2,r6,d3
	cmp 0,d2
	bne .L529
.L521:
	clr r6
.L516:
	mov r6,a0
	ret [d2,d3,a2,a3,exreg1],48
.L519:
	cmp_mov 0, r7, r7, d2
	bne .L529
	clr r6
	jmp .L516
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
	blt .L541
	mov_mov r0, d0, r1, d1
	retf [d2],4
.L541:
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
	blt .L548
	retf [],0
.L548:
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
	blt .L556
	mov_mov r0, d0, r1, d1
	retf [d2],4
.L556:
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
	beq .L569
.L560:
	cmp a0,d1
	beq .L570
	mov (4,d0),a0
	add_cmp 4, d0, 0, a0
	bne .L560
	retf [],0
.L570:
	mov d0,a0
	retf [],0
.L569:
	retf [],0
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d1),r0
	mov (d0),a1
	add_mov -4, d1, 4, a0
	cmp r0,a1
	bne .L573
.L572:
	cmp 0,a1
	beq .L573
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L572
.L573:
	cmp r0,a1
	blt .L578
	mov 1,d0
	ble .L583
	retf [],0
.L578:
	mov -1,d0
	retf [],0
.L583:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov_mov 0, a1, d0, a0
	setlb
.L585:
	mov (a1,d1),r0
	mov r0,(a1,a0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L585
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp 0,d1
	beq .L592
	mov d0,a1
	setlb
.L591:
	mov (4,a1),a0
	add_cmp 4, a1, 0, a0
	Lne # loop back to: .L591
	sub d0,a1,d0
	asr 2,d0
	retf [],0
.L592:
	mov d1,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L603
.L597:
	mov (d0),a1
	mov (d1),r0
	add_cmp -1, a0, r0, a1
	bne .L599
	cmp 0,a1
	beq .L599
	add_add 4, d0, 4, d1
	cmp 0,a0
	bne .L597
.L603:
	mov a0,d0
	retf [],0
.L599:
	mov (d0),r1
	mov (d1),d0
	cmp d0,r1
	blt .L609
	cmp_mov d0, r1, 1, a0
	bgt .L603
	mov 0,a0
	mov a0,d0
	retf [],0
.L609:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L620
.L611:
	mov (d0),a1
	add_cmp -1, a0, d1, a1
	beq .L621
	add_cmp 4, d0, 0, a0
	bne .L611
	retf [],0
.L621:
	mov d0,a0
	retf [],0
.L620:
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L635
.L623:
	mov (d0),r0
	mov (d1),a1
	add_add -1, a0, 4, d0
	add_cmp 4, d1, a1, r0
	bne .L638
	cmp 0,a0
	bne .L623
.L635:
	clr d0
	retf [],0
.L638:
	bge .L628
	mov -1,d0
.L622:
	retf [],0
.L628:
	mov 1,d0
	bgt .L622
	clr d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov (28,sp),a0
	mov_cmp d0, a1, 0, a0
	beq .L640
	asl2 a0
	mov a0,(12,sp)
	call +memcpy,[],0
	mov a0,a1
.L640:
	mov a1,a0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov d0,a0
	cmp d1,a0
	mov (12,sp),d0
	beq .L654
	mov -1,a1
	sub d1,a0,r1
	mov d0,r0
	add_asl d0, a1, 2, r0
	cmp r0,r1
	bcc .L663
	cmp 0,d0
	beq .L654
	asl2 a1
	setlb
.L651:
	mov (a1,d1),d0
	mov d0,(a1,a0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L651
	retf [],0
.L663:
	clr r2
	cmp r2,d0
	beq .L654
	setlb
.L649:
	mov (r2,d1),r3
	add -1,a1
	mov r3,(r2,a0)
	add_cmp 4, r2, -1, a1
	Lne # loop back to: .L649
.L654:
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),r0
	mov -1,a1
	add_cmp r0, a1, 0, r0
	mov d0,a0
	beq .L665
	setlb
.L666:
	add -1,a1
	cmp -1,a1
	mov d1,(d0+)
	Lne # loop back to: .L666
.L665:
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	cmp d1,d0
	mov (12,sp),a0
	bcc .L674
	cmp 0,a0
	beq .L673
	add_add -1, d0, -1, d1
	setlb
.L676:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L676
	retf [],0
.L674:
	bne .L712
.L673:
	retf [],0
.L712:
	cmp 0,a0
	beq .L673
	mov -1,a1
	add a0,a1
	cmp 6,a1
	bls .L686
	or d0,d1,r2
	and 3,r2
	bne .L686
	mov 1,r0
	add d0,r0
	sub r0,d1,r1
	cmp 2,r1
	bls .L686
	mov a0,r1
	and -4,r1
	setlb
.L680:
	mov (r2,d0),r0
	mov r0,(r2,d1)
	inc4 r2
	cmp r1,r2
	Lne # loop back to: .L680
	sub r2,a0,r3
	add_add r2, d1, r2, d0
	cmp r2,a0
	beq .L673
	movbu (d0),a0
	cmp 1,r3
	movbu a0,(d1)
	beq .L673
	movbu (1,d0),r2
	cmp 2,r3
	movbu r2,(1,d1)
	beq .L673
	movbu (2,d0),d0
	movbu d0,(2,d1)
	retf [],0
.L686:
	mov 0,r3
.L708:
	movbu (r3,d0),a1
	movbu a1,(r3,d1)
	inc r3
	cmp r3,a0
	beq .L673
	movbu (r3,d0),a1
	movbu a1,(r3,d1)
	inc r3
	cmp r3,a0
	bne .L708
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
	beq .L714
	asl a0,r2,d1
.L715:
	not a0
	inc a0
	mov a0,r1
	and 32,r1
	and 63,a0
	clr a1
	cmp 0,r1
	beq .L716
	lsr a0,r3,r0
	or d0,r0,d0
	or d1,a1,d1
	retf [],0
.L716:
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
.L714:
	mov_mov r2, a1, a0, r0
	lsr 1,a1
	not r0
	lsr r0,a1
	asl a0,d1
	or a1,d1
	asl a0,r2,d0
	jmp .L715
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov (12,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	mov 0,d1
	beq .L721
	lsr a0,r3,d0
.L722:
	not a0
	inc a0
	mov a0,r1
	and 32,r1
	and 63,a0
	clr r0
	cmp 0,r1
	beq .L723
	asl a0,r2,r1
	or d0,r0,d0
	or d1,r1,d1
	retf [],0
.L723:
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
.L721:
	mov_mov r3, a1, a0, r0
	add a1,a1
	not r0
	asl r0,a1
	lsr a0,r2,d0
	or a1,d0
	lsr a0,r3,d1
	jmp .L722
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
	asl 24,r0
	mov (40,sp),a1
	lsr 8,r1
	or_mov r0, r1, d3, d0
	and 16711680,d0
	mov r1,d2
	and -16777216,d2
	or d0,a1
	asl 24,a3
	mov a1,(56,sp)
	extbu d3,a0
	or d2,a1
	mov a1,(8,sp)
	mov a3,(12,sp)
	mov a0,(20,sp)
	lsr 24,d1
	mov (12,sp),a1
	mov d1,(4,sp)
	mov d0,(48,sp)
	mov (8,sp),d1
	mov (20,sp),d0
	mov_mov 0, a2, r4, r2
	asl 8,r2
	or a2,d1
	or d0,a1
	mov r2,(76,sp)
	and 16711680,r2
	mov d1,(24,sp)
	mov a1,(28,sp)
	mov r2,(36,sp)
	mov (24,sp),r0
	mov (28,sp),r3
	mov (36,sp),r7
	and 65280,r1
	or_mov a2, r0, a2, r6
	or r1,r3
	mov a3,(44,sp)
	mov a3,(60,sp)
	mov d2,(64,sp)
	mov_mov r4, a3, r4, d2
	or r0,r6
	or r3,r7
	mov a2,(52,sp)
	mov a2,(68,sp)
	mov a2,(16,sp)
	mov a2,(72,sp)
	mov a2,(32,sp)
	mov d3,(sp)
	lsr 24,a3
	lsr 8,d2
	mov_mov r6, d0, r7, d1
	ret [d2,d3,a2,a3,exreg1],112
	.size	bswap_64, .-bswap_64
	.global ffs
	.type	ffs, @function
ffs:
	clr d1
.L752:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L756
	cmp 32,d1
	bne .L752
	mov a0,d0
	retf [],0
.L756:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmp_mov 0, d0, d0, d1
	beq .L757
	and 1,d0
	bne .L757
	mov 1,d0
	setlb
.L759:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L759
	retf [],0
.L757:
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
	blt .L768
	mov 2139095039,d1
	mov d2,d0
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L771
	mov d2,d0
.L765:
	ret [d2],16
.L768:
	mov 1,d0
	ret [d2],16
.L771:
	clr d2
	mov d2,d0
	jmp .L765
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
	blt .L775
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L778
	mov d2,d0
.L772:
	ret [d2,d3,a2],32
.L775:
	mov 1,d0
	ret [d2,d3,a2],32
.L778:
	clr d2
	mov d2,d0
	jmp .L772
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
	blt .L782
	mov 2146435071,d0
	mov a2,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L785
	mov d2,d0
.L779:
	ret [d2,d3,a2],32
.L782:
	mov 1,d0
	ret [d2,d3,a2],32
.L785:
	clr d2
	mov d2,d0
	jmp .L779
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
	bne .L789
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L789
	cmp 0,d2
	blt .L805
	btst 1,d2
	mov 1073741824,d3
	beq .L792
.L793:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L792:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L789
.L794:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,d1
	lsr 31,d1
	add d2,d1
	btst 1,d2
	mov d0,d3
	bne .L793
	mov d1,d2
	asr 1,d2
	jmp .L794
.L789:
	mov a2,d0
	ret [d2,d3,a2],24
.L805:
	btst 1,d2
	mov 1056964608,d3
	beq .L792
	jmp .L793
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
	bne .L807
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L807
	cmp_mov 0, r4, r5, d2
	blt .L823
	btst 1,r4
	mov 1073741824,d3
	beq .L810
.L811:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L810:
	mov r4,a0
	lsr 31,a0
	add a0,r4
	asr 1,r4
	cmp 0,r4
	beq .L807
.L812:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L811
	mov r0,r4
	asr 1,r4
	jmp .L812
.L807:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L823:
	btst 1,r4
	mov 1071644672,d3
	beq .L810
	jmp .L811
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
	bne .L825
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L825
	cmp_mov 0, r4, r5, d2
	blt .L841
	btst 1,r4
	mov 1073741824,d3
	beq .L828
.L829:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L828:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L825
.L830:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov r4,r0
	lsr 31,r0
	add r4,r0
	btst 1,r4
	mov_mov d0, d2, d1, d3
	bne .L829
	mov r0,r4
	asr 1,r4
	jmp .L830
.L825:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L841:
	btst 1,r4
	mov 1071644672,d3
	beq .L828
	jmp .L829
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	mov_cmp d0, a0, 0, r2
	beq .L843
	mov -1,d0
	add r2,d0
	cmp 3,d0
	bls .L844
	or d1,a0,a1
	and 3,a1
	bne .L844
	mov r2,r1
	and -4,r1
	setlb
.L845:
	mov (a1,a0),r3
	mov (a1,d1),r0
	xor r3,r0
	mov r0,(a1,a0)
	inc4 a1
	cmp r1,a1
	Lne # loop back to: .L845
	add a1,a0,d0
	sub a1,r2,r3
	add_cmp a1, d1, a1, r2
	beq .L843
	movbu (d0),r2
	movbu (d1),a1
	xor_cmp a1, r2, 1, r3
	movbu r2,(d0)
	beq .L843
	movbu (1,d0),r1
	movbu (1,d1),r0
	xor_cmp r1, r0, 2, r3
	movbu r0,(1,d0)
	beq .L843
	movbu (2,d0),r3
	movbu (2,d1),d1
	xor r3,d1
	movbu d1,(2,d0)
	retf [],0
.L844:
	add_mov d1, r2, a0, d0
	setlb
.L847:
	movbu (d0),r1
	movbu (d1),a1
	add_add 1, d0, 1, d1
	xor_cmp r1, a1, d1, r2
	movbu a1,(-1,d0)
	Lne # loop back to: .L847
.L843:
	retf [],0
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov d0,a0
	movbu (d0),d0
	mov (12,sp),r1
	cmp_mov 0, d0, a0, a1
	beq .L867
	setlb
.L864:
	movbu (1,a1),r0
	add_cmp 1, a1, 0, r0
	Lne # loop back to: .L864
.L867:
	cmp 0,r1
	beq .L866
	movbu (d1),r2
	add_add 1, a1, -1, r1
	inc d1
	movbu r2,(-1,a1)
	extbu r2
	cmp 0,r2
	bne .L867
	retf [],0
.L866:
	clr d1
	movbu d1,(a1)
	retf [],0
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov 0,a0
	cmp a0,d1
	beq .L879
	movbu (a0,d0),a1
	cmp 0,a1
	bne .L882
.L879:
	mov a0,d0
	retf [],0
.L882:
	inc a0
	cmp a0,d1
	beq .L879
	movbu (a0,d0),a1
	cmp 0,a1
	beq .L879
	jmp .L882
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	mov_cmp d0, a0, 0, r1
	beq .L894
.L890:
	mov d1,a1
.L893:
	movbu (a1),r0
	add_cmp 1, a1, 0, r0
	beq .L900
	cmp r1,r0
	bne .L893
	retf [],0
.L900:
	movbu (1,a0),r1
	add_cmp 1, a0, 0, r1
	bne .L890
.L894:
	mov r1,a0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	clr r0
.L905:
	movbu (d0),a1
	mov_cmp r0, a0, d1, a1
	beq .L911
	add_cmp 1, d0, 0, a1
	mov a0,r0
	bne .L905
	retf [],0
.L911:
	mov_add d0, a0, 1, d0
	cmp_mov 0, a1, a0, r0
	bne .L905
	retf [],0
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2],(sp)
	movbu (d1),d3
	extbu d3,r3
	cmp 0,r3
	beq .L925
	mov d1,a0
	setlb
.L914:
	movbu (1,a0),a1
	add_cmp 1, a0, 0, a1
	Lne # loop back to: .L914
	sub d1,a0,a2
	cmp d1,a0
	beq .L925
	add -1,a2
	extbu d3
.L931:
	movbu (d0),a0
	cmp r3,a0
	beq .L921
	add_cmp 1, d0, 0, a0
	bne .L931
	retf [d2,d3,a2],12
.L921:
	add a2,d0,d2
	mov_mov d1, r1, d0, a1
	mov d3,r0
.L916:
	cmp d2,a1
	beq .L918
	add_cmp 1, a1, r0, a0
	bne .L919
	movbu (a1),a0
	mov 1,r2
	add_cmp r1, r2, 0, a0
	movbu (1,r1),r0
	beq .L918
	cmp_mov 0, r0, r2, r1
	bne .L916
.L919:
	inc d0
	jmp .L931
.L918:
	cmp r0,a0
	bne .L919
.L925:
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
	blt .L946
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L938
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L937
.L938:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,exreg1],48
.L946:
	mov_mov r4, d0, r5, d1
	call +__gtdf2,[],0
	cmp a2,d0
	ble .L938
.L937:
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
	beq .L947
	cmp r1,d1
	bcs .L958
	sub r1,d1
	add d0,d1
	cmp d1,d0
	bhi .L958
	movbu (r3),d2
.L953:
	movbu (a0),d0
	mov 1,r2
	add_cmp a0, r2, d2, d0
	beq .L968
	mov r2,a0
.L949:
	cmp a0,d1
	bcc .L953
.L958:
	mov 0,a0
.L947:
	retf [d2],4
.L968:
	cmp 1,r1
	beq .L947
	mov 1,a1
.L950:
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	bne .L969
.L951:
	cmp r1,a1
	beq .L947
	movbu (a1,a0),r0
	movbu (a1,r3),d0
	add_cmp 1, a1, d0, r0
	beq .L951
.L969:
	cmp r2,d1
	bcs .L958
	movbu (r2),a1
	mov 1,a0
	add_cmp r2, a0, a1, d2
	bne .L949
	mov_mov r2, r0, 1, a1
	mov_mov a0, r2, r0, a0
	jmp .L950
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov_cmp d0, a1, 0, d2
	beq .L971
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L971:
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
	blt .L1002
	mov 1072693248,d0
	mov a3,(12,sp)
	mov d0,(16,sp)
	mov_mov d3, d1, d2, d0
	call +__gedf2,[],0
	cmp 0,d0
	blt .L1003
	clr r6
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
.L986:
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,(12,sp)
	mov r4,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__gedf2,[],0
	add_cmp 1, r6, 0, d0
	bge .L986
.L987:
	mov (64,sp),r3
	cmp 0,a3
	mov r6,(r3)
	beq .L993
	mov -2147483648,a1
	add_mov d3, a1, d2, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L993:
	mov_mov d3, a1, d2, d0
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L1003:
	mov 1071644672,d1
	mov a3,(12,sp)
	mov d1,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L983
	mov a3,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	bne .L992
.L983:
	mov (64,sp),r0
	clr a1
	mov d2,d0
	mov a1,(r0)
	mov_mov d3, a1, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1002:
	mov -1074790400,a0
	mov a3,(12,sp)
	mov a0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ledf2,[],0
	mov -2147483648,r5
	add_cmp d3, r5, a3, d0
	mov d2,r4
	bgt .L1004
	clr r6
	mov_mov r5, d3, 1, a3
	mov 1071644672,r5
	mov 1072693248,r4
	mov r6,a2
	jmp .L986
.L1004:
	mov -1075838976,r1
	mov a3,(12,sp)
	mov r1,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp a3,d0
	bgt .L990
	mov (64,sp),r2
	mov_mov d3, a1, d2, d0
	mov a3,(r2)
	mov a1,d1
	ret [d2,d3,a2,a3,exreg1],52
.L990:
	clr r6
	mov 1,a3
	mov 1071644672,a2
	mov_mov r4, d2, r5, d3
	mov r6,r4
.L988:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	bge .L987
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov r4,(12,sp)
	mov a2,(16,sp)
	mov_mov d0, d2, d1, d3
	call +__ltdf2,[],0
	add_cmp -1, r6, 0, d0
	blt .L988
	jmp .L987
.L992:
	mov_mov d2, r4, d3, r5
	clr r6
	mov r4,d2
	mov 1071644672,a2
	mov_mov r5, d3, r6, r4
	jmp .L988
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
	beq .L1009
	clr r4
	mov r4,r5
	setlb
.L1008:
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
	Lne # loop back to: .L1008
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L1009:
	mov_mov a2, r4, a2, r5
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movm [d2,d3],(sp)
	cmp_mov d0, d1, d0, a1
	bcc .L1048
	mov 32,d0
	mov 1,a0
.L1014:
	add_cmp -1, d0, 0, d1
	blt .L1019
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1016
	cmp 0,d0
	bne .L1014
.L1017:
	mov (20,sp),d1
	cmp 0,d1
	bne .L1049
.L1013:
	retf [d2,d3],8
.L1016:
	cmp 0,a0
	beq .L1033
.L1019:
	clr d0
	sub d1,a1,r0
	cmp d1,a1
	mov 1,r3
	mov d0,d3
	mov_mov d0, d2, a1, r2
	mov r3,r1
	bcc .L1036
.L1050:
	mov d3,r1
	bcc .L1036
.L1023:
	btst 1,r1
	mov_mov a0, r0, r2, a1
	bne .L1025
	mov d2,r0
.L1025:
	or_lsr r0, d0, 1, a0
	cmp_lsr 0, a0, 1, d1
	beq .L1017
	sub d1,a1,r0
	cmp_mov d1, a1, a1, r2
	mov r3,r1
	bcs .L1050
.L1036:
	mov r0,r2
	jmp .L1023
.L1049:
	mov a1,d0
	retf [d2,d3],8
.L1048:
	sub d1,d0,a0
	cmp_mov a1, d1, 1, d0
	bls .L1037
	mov 0,d0
	bhi .L1017
.L1037:
	mov (20,sp),d1
	mov_cmp a0, a1, 0, d1
	beq .L1013
	jmp .L1049
.L1033:
	mov (20,sp),d1
	mov_cmp a0, d0, 0, d1
	beq .L1013
	jmp .L1049
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L1053
	asl 8,d0
	clr d1
	bsch d0, d1
	mov d1,d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1053:
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
	beq .L1066
.L1062:
	clr d0
	cmp 0,r3
	bne .L1067
	bsch r2, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L1067:
	bsch r3, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L1066:
	cmp a0,d1
	bne .L1062
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmp_mov 0, d0, d0, a1
	beq .L1071
	clr d0
	setlb
.L1070:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1070
	retf [],0
.L1071:
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
	bcs .L1076
	add d3,d1,a0
	cmp a0,d0
	bls .L1108
.L1076:
	cmp 0,d2
	beq .L1079
	mov_asl 0, a0, 3, d2
	setlb
.L1080:
	mov (a0,d1),r0
	add a0,d1,r3
	mov (4,r3),r1
	add a0,d0,r2
	mov r0,(a0,d0)
	add 8,a0
	cmp d2,a0
	mov r1,(4,r2)
	Lne # loop back to: .L1080
	cmp a1,d3
	bls .L1075
	sub a1,d3,r3
	mov -1,a0
	add r3,a0
	cmp 6,a0
	bls .L1101
	mov 1,r0
	add a1,d0,d2
	add a1,r0
	add d1,r0
	sub r0,d2,r1
	add a1,d1,r2
	cmp 2,r1
	bls .L1101
	or d2,r2,a0
	and 3,a0
	bne .L1101
	mov r3,r1
	and -4,r1
	setlb
.L1085:
	mov (a0,r2),r0
	mov r0,(a0,d2)
	inc4 a0
	cmp a0,r1
	Lne # loop back to: .L1085
	add_cmp r1, a1, r3, r1
	beq .L1075
	movbu (a1,d1),d2
	mov 1,r2
	add a1,r2
	cmp r2,d3
	movbu d2,(a1,d0)
	bls .L1075
	movbu (r2,d1),d2
	add 2,a1
	cmp a1,d3
	movbu d2,(r2,d0)
	bls .L1075
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1075:
	retf [d2,d3],8
.L1079:
	cmp 0,d3
	beq .L1075
.L1101:
	movbu (a1,d1),r3
	movbu r3,(a1,d0)
	inc a1
	cmp a1,d3
	beq .L1075
	movbu (a1,d1),r3
	movbu r3,(a1,d0)
	inc a1
	cmp a1,d3
	bne .L1101
	jmp .L1075
.L1108:
	mov -1,r0
	add_cmp d3, r0, 0, d3
	beq .L1075
.L1077:
	movbu (r0,d1),r1
	movbu r1,(r0,d0)
	add -1,r0
	cmp -1,r0
	beq .L1075
	movbu (r0,d1),r1
	movbu r1,(r0,d0)
	add -1,r0
	cmp -1,r0
	bne .L1077
	jmp .L1075
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r0
	mov r0,r2
	cmp_lsr d1, d0, 1, r2
	bcs .L1110
	add r0,d1,a0
	cmp a0,d0
	bls .L1141
.L1110:
	cmp 0,r2
	beq .L1113
	mov -1,r3
	add r2,r3
	cmp 8,r3
	bls .L1114
	or d0,d1,a0
	and 3,a0
	bne .L1114
	mov 2,a1
	add d1,a1
	xor d0,a1
	clr r1
	sub a1,r1
	or r1,a1
	bnc .L1114
	mov_mov r0, r1, r0, r3
	and -4,r1
	lsr 2,r3
	setlb
.L1116:
	mov (a0,d1),a1
	mov a1,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1116
	mov r3,a0
	add a0,a0
	cmp a0,r2
	beq .L1113
	asl2 r3
	movhu (r3,d1),r2
	movhu r2,(r3,d0)
.L1113:
	btst 1,r0
	beq .L1109
	add -1,r0
	movbu (r0,d1),d1
	movbu d1,(r0,d0)
	retf [],0
.L1141:
	mov -1,r1
	add_cmp r0, r1, 0, r0
	beq .L1109
	setlb
.L1111:
	movbu (r1,d1),a1
	movbu a1,(r1,d0)
	add -1,r1
	cmp -1,r1
	Lne # loop back to: .L1111
.L1109:
	retf [],0
.L1114:
	mov_asl 0, r1, 1, r2
.L1118:
	movhu (r1,d1),r3
	movhu r3,(r1,d0)
	add 2,r1
	cmp r2,r1
	beq .L1113
	movhu (r1,d1),r3
	movhu r3,(r1,d0)
	add 2,r1
	cmp r2,r1
	bne .L1118
	jmp .L1113
	.size	__cmovh, .-__cmovh
	.global __cmovw
	.type	__cmovw, @function
__cmovw:
	movm [d2,d3],(sp)
	mov (20,sp),r2
	mov_mov r2, a1, r2, r1
	and -4,a1
	cmp_lsr d1, d0, 2, r1
	bcs .L1143
	add r2,d1,a0
	cmp a0,d0
	bls .L1175
.L1143:
	cmp 0,r1
	beq .L1146
	mov_asl 0, a0, 2, r1
	setlb
.L1147:
	mov (a0,d1),r0
	mov r0,(a0,d0)
	inc4 a0
	cmp r1,a0
	Lne # loop back to: .L1147
	cmp a1,r2
	bls .L1142
	sub a1,r2,d3
	mov -1,r1
	add d3,r1
	cmp 6,r1
	bls .L1168
	mov 1,r3
	add a1,d0,r1
	add a1,r3
	add d1,r3
	sub r3,r1,a0
	add a1,d1,d2
	cmp 2,a0
	bls .L1168
	or r1,d2,a0
	and 3,a0
	bne .L1168
	mov d3,r3
	and -4,r3
	setlb
.L1152:
	mov (a0,d2),r0
	mov r0,(a0,r1)
	inc4 a0
	cmp a0,r3
	Lne # loop back to: .L1152
	add_cmp r3, a1, d3, r3
	beq .L1142
	movbu (a1,d1),d2
	mov 1,r1
	add a1,r1
	cmp r1,r2
	movbu d2,(a1,d0)
	bls .L1142
	movbu (r1,d1),d2
	add 2,a1
	cmp a1,r2
	movbu d2,(r1,d0)
	bls .L1142
	movbu (a1,d1),d1
	movbu d1,(a1,d0)
.L1142:
	retf [d2,d3],8
.L1146:
	cmp 0,r2
	beq .L1142
.L1168:
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a1,r2
	beq .L1142
	movbu (a1,d1),r0
	movbu r0,(a1,d0)
	inc a1
	cmp a1,r2
	bne .L1168
	jmp .L1142
.L1175:
	mov -1,r0
	add_cmp r2, r0, 0, r2
	beq .L1142
.L1144:
	movbu (r0,d1),r3
	movbu r3,(r0,d0)
	add -1,r0
	cmp -1,r0
	beq .L1142
	movbu (r0,d1),r3
	movbu r3,(r0,d0)
	add -1,r0
	cmp -1,r0
	bne .L1144
	jmp .L1142
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
	bne .L1191
	mov d1,d0
	asr 14,d0
	cmp 0,d0
	bne .L1188
	mov d1,a0
	asr 13,a0
	cmp 0,a0
	bne .L1192
	mov d1,a1
	asr 12,a1
	cmp 0,a1
	bne .L1193
	mov d1,r0
	asr 11,r0
	cmp 0,r0
	bne .L1194
	mov d1,r1
	asr 10,r1
	cmp 0,r1
	bne .L1195
	mov d1,r2
	asr 9,r2
	cmp 0,r2
	bne .L1196
	mov d1,r3
	asr 8,r3
	cmp 0,r3
	bne .L1197
	mov d1,d0
	asr 7,d0
	cmp 0,d0
	bne .L1198
	mov d1,a0
	asr 6,a0
	cmp 0,a0
	bne .L1199
	mov d1,a1
	asr 5,a1
	cmp 0,a1
	bne .L1200
	mov d1,r0
	asr 4,r0
	cmp 0,r0
	bne .L1201
	mov d1,r1
	asr 3,r1
	cmp 0,r1
	bne .L1202
	mov d1,r2
	asr 2,r2
	cmp 0,r2
	bne .L1203
	mov d1,r3
	asr 1,r3
	cmp 0,r3
	bne .L1204
	cmp 0,d1
	mov 16,d0
	bne .L1209
.L1188:
	retf [],0
.L1191:
	clr d0
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
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	btst 1,d0
	bne .L1213
	mov d0,d1
	and 2,d1
	bne .L1214
	mov d0,a0
	and 4,a0
	bne .L1215
	mov d0,a1
	and 8,a1
	bne .L1216
	mov d0,r0
	and 16,r0
	bne .L1217
	mov d0,r1
	and 32,r1
	bne .L1218
	mov d0,r2
	and 64,r2
	bne .L1219
	mov d0,r3
	and 128,r3
	bne .L1220
	mov d0,d1
	and 256,d1
	bne .L1221
	mov d0,a0
	and 512,a0
	bne .L1222
	mov d0,a1
	and 1024,a1
	bne .L1223
	mov d0,r0
	and 2048,r0
	bne .L1224
	mov d0,r1
	and 4096,r1
	bne .L1225
	mov d0,r2
	and 8192,r2
	bne .L1226
	mov d0,r3
	and 16384,r3
	bne .L1227
	exthu d0,d1
	asr 15,d1
	cmp 0,d1
	mov 16,d0
	bne .L1232
	retf [],0
.L1213:
	clr d0
	retf [],0
.L1214:
	mov 1,d0
	retf [],0
.L1225:
	mov 12,d0
	retf [],0
.L1232:
	mov 15,d0
	retf [],0
.L1215:
	mov 2,d0
	retf [],0
.L1216:
	mov 3,d0
	retf [],0
.L1217:
	mov 4,d0
	retf [],0
.L1218:
	mov 5,d0
	retf [],0
.L1219:
	mov 6,d0
	retf [],0
.L1220:
	mov 7,d0
	retf [],0
.L1221:
	mov 8,d0
	retf [],0
.L1222:
	mov 9,d0
	retf [],0
.L1223:
	mov 10,d0
	retf [],0
.L1224:
	mov 11,d0
	retf [],0
.L1226:
	mov 13,d0
	retf [],0
.L1227:
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
	bge .L1241
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1241:
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
	beq .L1249
	clr d0
	setlb
.L1248:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr d1, a0, 1, a1
	add_asl a0, d0, 1, d1
	cmp 0,a1
	Lne # loop back to: .L1248
	retf [],0
.L1249:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmp_mov 0, d0, d0, a1
	beq .L1256
	cmp 0,d1
	beq .L1257
	clr d0
	setlb
.L1255:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_lsr a1, a0, 1, d1
	add_asl a0, d0, 1, a1
	cmp 0,d1
	Lne # loop back to: .L1255
	retf [],0
.L1256:
	retf [],0
.L1257:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movm [d2,d3],(sp)
	cmp_mov d1, d0, d0, a1
	bls .L1296
	mov 32,d0
	mov 1,a0
.L1262:
	add_cmp -1, d0, 0, d1
	blt .L1267
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1264
	cmp 0,d0
	bne .L1262
.L1265:
	mov (20,sp),d1
	cmp 0,d1
	bne .L1297
.L1261:
	retf [d2,d3],8
.L1264:
	cmp 0,a0
	beq .L1281
.L1267:
	clr d0
	sub d1,a1,r0
	cmp d1,a1
	mov 1,r3
	mov d0,d3
	mov_mov d0, d2, a1, r2
	mov r3,r1
	bcc .L1284
.L1298:
	mov d3,r1
	bcc .L1284
.L1271:
	btst 1,r1
	mov_mov a0, r0, r2, a1
	bne .L1273
	mov d2,r0
.L1273:
	or_lsr r0, d0, 1, a0
	cmp_lsr 0, a0, 1, d1
	beq .L1265
	sub d1,a1,r0
	cmp_mov d1, a1, a1, r2
	mov r3,r1
	bcs .L1298
.L1284:
	mov r0,r2
	jmp .L1271
.L1297:
	mov a1,d0
	retf [d2,d3],8
.L1296:
	sub d1,d0,a0
	cmp_mov d1, a1, 1, d0
	bcc .L1285
	mov 0,d0
	bcs .L1265
.L1285:
	mov (20,sp),d1
	mov_cmp a0, a1, 0, d1
	beq .L1261
	jmp .L1297
.L1281:
	mov (20,sp),d1
	mov_cmp a0, d0, 0, d1
	beq .L1261
	jmp .L1297
	.size	__udivmodsi4, .-__udivmodsi4
	.global __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movm [d2,d3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L1302
	mov_mov d2, d0, d3, d1
	call +__gtsf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1305
	mov d2,d0
.L1299:
	ret [d2,d3],20
.L1305:
	clr d2
	mov d2,d0
	jmp .L1299
.L1302:
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
	blt .L1309
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp_mov 0, d0, 1, d2
	ble .L1312
	mov d2,d0
.L1306:
	ret [d2,d3,a2,a3],36
.L1312:
	clr d2
	mov d2,d0
	jmp .L1306
.L1309:
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
	blt .L1333
	beq .L1323
	clr r2
	clr d0
	mov 32,a1
.L1322:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and_add r0, a0, -1, a1
	add_asr a0, d0, 1, d1
	cmp_asl 0, d1, 1, r0
	extbu a1,r1
	beq .L1321
	cmp 0,r1
	bne .L1322
.L1321:
	cmp 0,r2
	beq .L1317
	not d0
	inc d0
	retf [],0
.L1323:
	mov d1,d0
.L1317:
	retf [],0
.L1333:
	not d1
	mov_add 1, r2, 1, d1
	clr d0
	mov 32,a1
	jmp .L1322
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2,d3,a2],(sp)
	cmp 0,d0
	blt .L1368
	cmp_mov 0, d1, 1, a0
	mov 0,a2
	blt .L1369
.L1336:
	cmp_mov d1, d0, d0, r0
	mov d1,a0
	bls .L1370
	mov 32,a1
	mov 1,d1
.L1337:
	add_asl -1, a1, 1, a0
	cmp_asl a0, d0, 1, d1
	bls .L1342
	cmp 0,a1
	bne .L1337
.L1342:
	clr d0
	cmp d0,d1
	beq .L1364
	mov 1,r3
	mov d0,d3
	mov d0,d2
.L1339:
	sub a0,r0,a1
	cmp_mov a0, r0, r0, r2
	mov r3,r1
	bcc .L1356
	mov d3,r1
	bcc .L1356
.L1346:
	btst 1,r1
	mov_mov d1, a1, r2, r0
	bne .L1348
	mov d2,a1
.L1348:
	or_lsr a1, d0, 1, d1
	cmp_lsr 0, d1, 1, a0
	bne .L1339
.L1340:
	cmp 0,a2
	beq .L1334
	not d0
	inc d0
.L1334:
	retf [d2,d3,a2],12
.L1356:
	mov a1,r2
	jmp .L1346
.L1369:
	not d1
	add_mov 1, d1, a0, a2
	jmp .L1336
.L1368:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 0, a0, 1, a2
	bge .L1336
	jmp .L1369
.L1364:
	mov d1,d0
	jmp .L1340
.L1370:
	mov 1,d0
	bcc .L1340
	mov 0,d0
	jmp .L1340
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	cmp 0,d0
	blt .L1406
	clr r1
	cmp_mov 0, d1, d0, r0
	blt .L1407
.L1373:
	cmp_mov d1, d0, d1, a0
	bls .L1408
	mov 32,a1
	mov 1,d1
.L1374:
	add_asl -1, a1, 1, a0
	cmp_asl a0, d0, 1, d1
	bls .L1379
	cmp 0,a1
	bne .L1374
.L1379:
	cmp 0,d1
	beq .L1377
.L1376:
	sub a0,r0,r2
	cmp_mov a0, r0, r0, a1
	bcs .L1382
	mov r2,a1
.L1382:
	lsr 1,d1
	cmp_lsr 0, d1, 1, a0
	mov a1,r0
	bne .L1376
.L1387:
	mov r0,d0
.L1377:
	cmp 0,r1
	beq .L1371
	not d0
	inc d0
	retf [],0
.L1371:
	retf [],0
.L1407:
	not d1
	inc d1
	jmp .L1373
.L1406:
	not d0
	add_cmp 1, d0, 0, d1
	mov_mov 1, r1, d0, r0
	bge .L1373
	jmp .L1407
.L1408:
	sub d1,d0,r0
	cmp d1,d0
	bcc .L1387
	mov_mov d0, r0, d0, d0
	jmp .L1377
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movm [d2,d3,a2],(sp)
	mov d0,r3
	exthu r3,r2
	exthu d1,d0
	cmp r2,d0
	mov (24,sp),r0
	bcc .L1638
	exth d1,a1
	cmp 0,a1
	blt .L1414
	mov d1,r1
	add r1,r1
	exthu r1,d0
	cmp d0,r2
	mov r1,a0
	bls .L1521
	exth r1
	cmp 0,r1
	blt .L1521
	mov d1,r1
	asl2 r1
	exthu r1,a1
	cmp a1,r2
	mov r1,a0
	bls .L1523
	exth r1
	cmp 0,r1
	blt .L1523
	mov d1,d0
	asl2 d0
	add d0,d0
	exthu d0,r1
	cmp r1,r2
	mov d0,a0
	bls .L1525
	exth d0
	cmp 0,d0
	blt .L1525
	mov d1,d0
	asl2 d0
	asl2 d0
	exthu d0,a1
	cmp a1,r2
	mov d0,a0
	bls .L1527
	exth d0
	cmp 0,d0
	blt .L1527
	mov d1,r1
	asl 5,r1
	exthu r1,d0
	cmp d0,r2
	mov r1,a0
	bls .L1529
	exth r1
	cmp 0,r1
	blt .L1529
	mov d1,r1
	asl 6,r1
	exthu r1,a1
	cmp a1,r2
	mov r1,a0
	bls .L1531
	exth r1
	cmp 0,r1
	blt .L1531
	mov d1,d0
	asl 7,d0
	exthu d0,r1
	cmp r1,r2
	mov d0,a0
	bls .L1533
	exth d0
	cmp 0,d0
	blt .L1533
	mov d1,d0
	asl 8,d0
	exthu d0,a1
	cmp a1,r2
	mov d0,a0
	bls .L1535
	exth d0
	cmp 0,d0
	blt .L1535
	mov d1,r1
	asl 9,r1
	exthu r1,d0
	cmp d0,r2
	mov r1,a0
	bls .L1537
	exth r1
	cmp 0,r1
	blt .L1537
	mov d1,r1
	asl 10,r1
	exthu r1,a1
	cmp a1,r2
	mov r1,a0
	bls .L1539
	exth r1
	cmp 0,r1
	blt .L1539
	mov d1,d0
	asl 11,d0
	exthu d0,r1
	cmp r1,r2
	mov d0,a0
	bls .L1541
	exth d0
	cmp 0,d0
	blt .L1541
	mov d1,d0
	asl 12,d0
	exthu d0,a1
	cmp a1,r2
	mov d0,a0
	bls .L1543
	exth d0
	cmp 0,d0
	blt .L1543
	mov d1,r1
	asl 13,r1
	exthu r1,d0
	cmp d0,r2
	mov r1,a0
	bls .L1545
	exth r1
	cmp 0,r1
	blt .L1545
	mov d1,r1
	asl 14,r1
	exthu r1,a1
	cmp a1,r2
	mov r1,a0
	bls .L1547
	exth r1
	cmp 0,r1
	blt .L1547
	mov d1,a0
	asl 15,a0
	exthu a0,d1
	cmp d1,r2
	bls .L1548
	cmp 0,d1
	mov r3,d0
	bne .L1639
.L1417:
	cmp 0,r0
	bne .L1409
	mov a0,d0
.L1409:
	retf [d2,d3,a2],12
.L1521:
	mov 2,a1
.L1416:
	sub a0,r3,a2
	exthu a0,r1
	cmp r1,r2
	bcc .L1516
	mov r3,a2
.L1516:
	cmp r1,r2
	bcc .L1583
	clr d3
.L1518:
	mov r1,r2
	mov_lsr a1, d1, 1, r2
	sub r2,a2,r3
	lsr 1,d1
	exthu r2
	exthu a2,d2
	cmp r2,d2
	bcc .L1420
	mov a2,r3
.L1420:
	cmp r2,d2
	mov r3,d0
	bcc .L1422
	clr d1
.L1422:
	mov_mov a1, a2, r1, d2
	or_lsr d3, d1, 2, a2
	cmp_lsr 0, a2, 2, d2
	mov d1,a0
	mov a2,d3
	beq .L1417
	sub d2,r3,r2
	exthu r3,d0
	cmp_mov d2, d0, 1, a0
	exthu d2,d3
	bcc .L1424
	mov 0,a0
.L1424:
	cmp d3,d0
	bcc .L1427
	mov r3,r2
.L1427:
	cmp 0,a0
	mov r2,d0
	beq .L1429
	mov a2,a0
.L1429:
	mov_mov a1, a2, r1, d2
	or_lsr a0, d1, 3, a2
	cmp_lsr 0, a2, 3, d2
	mov d1,a0
	mov a2,d3
	beq .L1417
	sub d2,r2,r3
	exthu r2,d0
	cmp_mov d2, d0, 1, a0
	exthu d2,d3
	bcc .L1430
	mov 0,a0
.L1430:
	cmp d3,d0
	bcs .L1433
	mov r3,r2
.L1433:
	cmp 0,a0
	mov r2,d0
	beq .L1435
	mov a2,a0
.L1435:
	mov_mov a1, a2, r1, d2
	or_lsr a0, d1, 4, a2
	cmp_lsr 0, a2, 4, d2
	mov d1,a0
	mov a2,d3
	beq .L1417
	sub d2,r2,r3
	exthu r2,d0
	cmp_mov d2, d0, 1, a0
	exthu d2,d3
	bcc .L1436
	mov 0,a0
.L1436:
	cmp d3,d0
	bcs .L1439
	mov r3,r2
.L1439:
	cmp 0,a0
	mov r2,d0
	beq .L1441
	mov a2,a0
.L1441:
	mov_mov a1, a2, r1, d2
	or_lsr a0, d1, 5, a2
	cmp_lsr 0, a2, 5, d2
	mov d1,a0
	mov a2,d3
	beq .L1417
	sub d2,r2,r3
	exthu r2,d0
	cmp_mov d2, d0, 1, a0
	exthu d2,d3
	bcc .L1442
	mov 0,a0
.L1442:
	cmp d3,d0
	bcs .L1445
	mov r3,r2
.L1445:
	cmp 0,a0
	mov r2,d0
	beq .L1447
	mov a2,a0
.L1447:
	mov_mov a1, r3, r1, d3
	or_lsr a0, d1, 6, r3
	cmp_lsr 0, r3, 6, d3
	mov d1,a0
	mov r3,d2
	beq .L1417
	sub d3,r2,d2
	exthu r2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1448
	mov 0,a0
.L1448:
	cmp a2,d0
	bcc .L1451
	mov r2,d2
.L1451:
	cmp 0,a0
	mov d2,d0
	beq .L1453
	mov r3,a0
.L1453:
	mov_mov a1, r2, r1, d3
	or_lsr a0, d1, 7, r2
	cmp_lsr 0, r2, 7, d3
	mov d1,a0
	mov r2,a2
	beq .L1417
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1454
	mov 0,a0
.L1454:
	cmp a2,d0
	bcs .L1457
	mov r3,d2
.L1457:
	cmp 0,a0
	mov d2,d0
	beq .L1459
	mov r2,a0
.L1459:
	mov_mov a1, r2, r1, d3
	or a0,d1
	lsr 8,r2
	lsr 8,d3
	cmp 0,r2
	mov d1,a0
	mov r2,a2
	beq .L1417
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1460
	mov 0,a0
.L1460:
	cmp a2,d0
	bcs .L1463
	mov r3,d2
.L1463:
	cmp 0,a0
	mov d2,d0
	beq .L1465
	mov r2,a0
.L1465:
	mov_mov a1, r2, r1, d3
	or a0,d1
	lsr 9,r2
	lsr 9,d3
	cmp 0,r2
	mov d1,a0
	mov r2,a2
	beq .L1417
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1466
	mov 0,a0
.L1466:
	cmp a2,d0
	bcs .L1469
	mov r3,d2
.L1469:
	cmp 0,a0
	mov d2,d0
	beq .L1471
	mov r2,a0
.L1471:
	mov_mov a1, r2, r1, d3
	or a0,d1
	lsr 10,r2
	lsr 10,d3
	cmp 0,r2
	mov d1,a0
	mov r2,a2
	beq .L1417
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1472
	mov 0,a0
.L1472:
	cmp a2,d0
	bcs .L1475
	mov r3,d2
.L1475:
	cmp 0,a0
	mov d2,d0
	beq .L1477
	mov r2,a0
.L1477:
	mov_mov a1, r2, r1, d3
	or a0,d1
	lsr 11,r2
	lsr 11,d3
	cmp 0,r2
	mov d1,a0
	mov r2,a2
	beq .L1417
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1478
	mov 0,a0
.L1478:
	cmp a2,d0
	bcs .L1481
	mov r3,d2
.L1481:
	cmp 0,a0
	mov d2,d0
	beq .L1483
	mov r2,a0
.L1483:
	mov_mov a1, r2, r1, d3
	or a0,d1
	lsr 12,r2
	lsr 12,d3
	cmp 0,r2
	mov d1,a0
	mov r2,a2
	beq .L1417
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1484
	mov 0,a0
.L1484:
	cmp a2,d0
	bcs .L1487
	mov r3,d2
.L1487:
	cmp 0,a0
	mov d2,d0
	beq .L1489
	mov r2,a0
.L1489:
	mov_mov a1, r2, r1, d3
	or a0,d1
	lsr 13,r2
	lsr 13,d3
	cmp 0,r2
	mov d1,a0
	mov r2,a2
	beq .L1417
	sub d3,d2,r3
	exthu d2,d0
	cmp_mov d3, d0, 1, a0
	exthu d3,a2
	bcc .L1490
	mov 0,a0
.L1490:
	cmp a2,d0
	bcs .L1493
	mov r3,d2
.L1493:
	cmp 0,a0
	mov d2,d0
	beq .L1495
	mov r2,a0
.L1495:
	mov_mov a1, r3, r1, d3
	or a0,d1
	lsr 14,r3
	lsr 14,d3
	cmp 0,r3
	mov d1,a0
	mov r3,a2
	beq .L1417
	sub d3,d2,d0
	exthu d2,a2
	cmp_mov d3, a2, 1, a0
	exthu d3,r2
	bcc .L1496
	mov 0,a0
.L1496:
	cmp r2,a2
	bcs .L1499
	mov d0,d2
.L1499:
	cmp 0,a0
	mov d2,d0
	beq .L1501
	mov r3,a0
.L1501:
	or a0,d1
	lsr 15,r1
	cmp 16384,a1
	mov d1,a0
	beq .L1417
	sub r1,d2,d0
	exthu d2,a1
	cmp_mov r1, a1, 1, a0
	exthu r1,d3
	bcc .L1502
	mov 0,a0
.L1502:
	cmp d3,a1
	bcc .L1505
	mov d2,d0
.L1505:
	or d1,a0
	jmp .L1417
.L1583:
	mov a1,d3
	jmp .L1518
.L1523:
	mov 4,a1
	jmp .L1416
.L1525:
	mov 8,a1
	jmp .L1416
.L1527:
	mov 16,a1
	jmp .L1416
.L1537:
	mov 512,a1
	jmp .L1416
.L1639:
	mov 32768,a1
	mov a1,a0
	jmp .L1416
.L1529:
	mov 32,a1
	jmp .L1416
.L1531:
	mov 64,a1
	jmp .L1416
.L1533:
	mov 128,a1
	jmp .L1416
.L1535:
	mov 256,a1
	jmp .L1416
.L1638:
	xor d1,r3,a0
	exthu a0
	sub d1,r3,d0
	add -1,a0
	cmp 0,a0
	blt .L1412
	mov r3,d0
.L1412:
	xor d1,r3,a0
	exthu a0
	add -1,a0
	lsr 31,a0
	jmp .L1417
.L1539:
	mov 1024,a1
	jmp .L1416
.L1541:
	mov 2048,a1
	jmp .L1416
.L1543:
	mov 4096,a1
	jmp .L1416
.L1545:
	mov 8192,a1
	jmp .L1416
.L1547:
	mov 16384,a1
	jmp .L1416
.L1548:
	mov -32768,a0
	exthu a0,a1
	jmp .L1416
.L1414:
	sub d1,r3,d0
	mov 1,a0
	jmp .L1417
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movm [d2,d3],(sp)
	cmp_mov d1, d0, d0, a1
	bls .L1675
	mov 32,d0
	mov 1,a0
.L1641:
	add_cmp -1, d0, 0, d1
	blt .L1646
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1643
	cmp 0,d0
	bne .L1641
.L1644:
	mov (20,sp),d1
	cmp 0,d1
	bne .L1676
.L1640:
	retf [d2,d3],8
.L1643:
	cmp 0,a0
	beq .L1660
.L1646:
	clr d0
	sub d1,a1,r0
	cmp d1,a1
	mov 1,r3
	mov d0,d3
	mov_mov d0, d2, a1, r2
	mov r3,r1
	bcc .L1663
.L1677:
	mov d3,r1
	bcc .L1663
.L1650:
	btst 1,r1
	mov_mov a0, r0, r2, a1
	bne .L1652
	mov d2,r0
.L1652:
	or_lsr r0, d0, 1, a0
	cmp_lsr 0, a0, 1, d1
	beq .L1644
	sub d1,a1,r0
	cmp_mov d1, a1, a1, r2
	mov r3,r1
	bcs .L1677
.L1663:
	mov r0,r2
	jmp .L1650
.L1676:
	mov a1,d0
	retf [d2,d3],8
.L1675:
	sub d1,d0,a0
	cmp_mov d1, a1, 1, d0
	bcc .L1664
	mov 0,d0
	bcs .L1644
.L1664:
	mov (20,sp),d1
	mov_cmp a0, a1, 0, d1
	beq .L1640
	jmp .L1676
.L1660:
	mov (20,sp),d1
	mov_cmp a0, d0, 0, d1
	beq .L1640
	jmp .L1676
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.global __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov (12,sp),a0
	mov_mov d0, r2, d1, r3
	mov a0,d0
	and 32,d0
	beq .L1679
	mov 0,a1
	asl a0,r2,a0
	mov_mov a0, r3, a1, r2
.L1681:
	mov_mov r2, d0, r3, d1
	retf [],0
.L1679:
	cmp 0,a0
	beq .L1681
	clr d1
	sub a0,d1
	lsr d1,r2,r0
	asl a0,r3,r1
	asl a0,r2,a1
	or r1,r0,a0
	mov_mov a1, r2, a0, r3
	jmp .L1681
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov (12,sp),a0
	mov_mov d0, r0, d1, r1
	mov a0,d0
	and 32,d0
	beq .L1686
	mov d1,a1
	asr 31,a1
	asr a0,d1,a0
	mov_mov a0, r0, a1, r1
.L1688:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1686:
	cmp 0,a0
	beq .L1688
	clr d1
	sub a0,d1
	asl d1,r1,r2
	lsr a0,r0,r3
	asr a0,r1,a1
	or r3,r2,a0
	mov_mov a0, r0, a1, r1
	jmp .L1688
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
	or_mov d0, d3, r4, r0
	mov d3,(64,sp)
	lsr 24,r0
	or a2,d3
	mov d3,(8,sp)
	or_mov r0, r1, r4, d3
	asl 8,d3
	extbu r1,a0
	mov a0,(20,sp)
	mov d3,(84,sp)
	and 16711680,d3
	mov (8,sp),a1
	mov d3,(44,sp)
	mov (20,sp),r1
	mov d1,d2
	lsr 24,d2
	mov r4,r7
	asl 24,r7
	mov d2,(4,sp)
	mov d0,(56,sp)
	mov (44,sp),d2
	mov r3,d0
	and 65280,d0
	or_mov a3, a1, r7, d3
	mov a2,(72,sp)
	or_mov r1, d3, a3, a2
	or a1,a2
	mov d0,(28,sp)
	or d3,d0
	mov a3,(16,sp)
	mov a3,(24,sp)
	mov a3,(80,sp)
	mov a3,(40,sp)
	mov a2,(32,sp)
	or a3,a2
	or d2,d0,a3
	mov d0,(36,sp)
	mov d1,r5
	mov r7,(52,sp)
	mov r7,(68,sp)
	mov r7,(12,sp)
	mov_mov a2, d0, a3, d1
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
	bls .L1697
	mov 0,a0
.L1697:
	mov 16,d1
	asl 4,a0
	sub a0,d1
	lsr d1,d0,r2
	btst 65280,r2
	mov 1,a1
	beq .L1698
	mov 0,a1
.L1698:
	mov a1,d0
	asl2 d0
	add d0,d0
	mov 8,r0
	sub_add d0, r0, d0, a0
	lsr r0,r2
	btst 240,r2
	mov 1,r1
	beq .L1699
	clr r1
.L1699:
	mov_asl 4, r3, 2, r1
	sub r1,r3
	add a0,r1,d1
	lsr r3,r2
	btst 12,r2
	mov 1,a0
	beq .L1700
	mov 0,a0
.L1700:
	mov_asl 2, a1, 1, a0
	sub a0,a1,d0
	lsr d0,r2
	mov r2,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L1702
	sub r2,a1,d0
.L1702:
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
	blt .L1718
	bgt .L1719
	cmp a0,r0
	bcs .L1718
	bhi .L1719
	mov 1,d0
	retf [],0
.L1718:
	clr d0
	retf [],0
.L1719:
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
	blt .L1727
	bgt .L1726
	cmp a0,r0
	bcs .L1727
	mov 1,d0
	bls .L1730
	retf [],0
.L1727:
	mov -1,d0
	retf [],0
.L1730:
	clr d0
	retf [],0
.L1726:
	mov 1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	cmp_mov 0, d1, 1, a1
	beq .L1732
	mov 0,a1
.L1732:
	asl 4,a1
	lsr a1,d0,r1
	extbu r1,d0
	cmp_mov 0, d0, 1, a0
	beq .L1733
	mov 0,a0
.L1733:
	asl 3,a0
	add_lsr a0, a1, a0, r1
	btst 15,r1
	mov 1,r0
	beq .L1734
	clr r0
.L1734:
	asl2 r0
	add_lsr r0, a1, r0, r1
	btst 3,r1
	mov 1,d0
	beq .L1735
	clr d0
.L1735:
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
	beq .L1751
	mov 0,r0
	lsr a0,d1,a0
	mov_mov a0, a1, r0, r1
.L1753:
	mov_mov a1, d0, r1, d1
	retf [],0
.L1751:
	cmp 0,a0
	beq .L1754
	clr d0
	sub a0,d0
	lsr a0,r0,r3
	asl d0,d1,r2
	lsr a0,d1,r0
	or r3,r2,a0
	mov_mov a0, a1, r0, r1
	jmp .L1753
.L1754:
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
	beq .L1777
	mov 1072693248,r5
	clr r4
	mov a3,a2
.L1774:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d1, r5, a2, d1
	lsr 31,d1
	add d1,a2
	asr 1,a2
	cmp_mov 0, a2, d0, r4
	beq .L1773
.L1775:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov a2,a0
	lsr 31,a0
	add a2,a0
	btst 1,a2
	mov_mov d0, d2, d1, d3
	bne .L1774
	mov a0,a2
	asr 1,a2
	jmp .L1775
.L1773:
	cmp 0,a3
	blt .L1780
	mov_mov r4, d0, r5, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1777:
	mov_mov a3, a2, a3, d1
	lsr 31,d1
	add d1,a2
	asr 1,a2
	cmp 0,a2
	mov 1072693248,r5
	mov d0,r4
	bne .L1775
	jmp .L1773
.L1780:
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
	beq .L1782
.L1784:
	mov_mov a2, d0, d3, d1
	call +__mulsf3,[],0
	mov d0,a2
.L1782:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L1783
.L1785:
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d2,a0
	lsr 31,a0
	add d2,a0
	btst 1,d2
	mov d0,d3
	bne .L1784
	mov a0,d2
	asr 1,d2
	jmp .L1785
.L1783:
	cmp 0,a3
	blt .L1790
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1790:
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
	bcs .L1795
	bhi .L1796
	cmp a0,r0
	bcs .L1795
	bhi .L1796
	mov 1,d0
	retf [],0
.L1795:
	clr d0
	retf [],0
.L1796:
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
	bcs .L1804
	bhi .L1803
	cmp a0,r0
	bcs .L1804
	mov 1,d0
	bls .L1807
	retf [],0
.L1804:
	mov -1,d0
	retf [],0
.L1807:
	clr d0
	retf [],0
.L1803:
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
