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
	clr r0
.L5:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
	inc r0
	cmp r0,a1
	beq .L3
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
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
	clr d0
	mov d0,a0
	retf [],0
.L31:
	cmp 0,a0
	beq .L22
	inc d0
	mov d0,a0
	retf [],0
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L38
.L33:
	movbu (d0),a1
	cmp d1,a1
	beq .L44
	inc d0
	add -1,a0
	bne .L33
.L38:
	clr d0
	mov d0,a0
	retf [],0
.L44:
	cmp 0,a0
	beq .L38
	mov d0,a0
	retf [],0
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L50
.L46:
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
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
	beq .L61
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L61:
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
.L68:
	cmp r0,a0
	beq .L73
	mov_add a0, d0, -1, a0
	movbu (d0),a1
	cmp d1,a1
	bne .L68
	mov d0,a0
	retf [],0
.L73:
	clr d0
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L75
	add_mov d0, r0, d0, a1
	setlb
.L76:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L76
.L75:
	mov d0,a0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	beq .L84
	setlb
.L93:
	add_add 1, d1, 1, d0
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	Lne # loop back to: .L93
.L84:
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	movbu (d0),a0
	cmp 0,a0
	beq .L94
.L95:
	cmp d1,a0
	beq .L94
	inc d0
	movbu (d0),a0
	cmp 0,a0
	bne .L95
.L94:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L105:
	movbu (d0),a0
	cmp d1,a0
	beq .L104
	add_cmp 1, d0, 0, a0
	bne .L105
	clr d0
.L104:
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
	bne .L111
.L110:
	cmp 0,a0
	beq .L111
	movbu (a1,d0),a0
	inc a1
	extbu a0
	movbu (a1,d1),r0
	cmp r0,a0
	beq .L110
.L111:
	sub r0,a0,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L118
	setlb
.L119:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L119
.L118:
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L129
	movbu (d0),a0
	cmp 0,a0
	beq .L126
	add -1,r0
	add d0,r0
.L127:
	movbu (d1),a1
	cmp 0,a1
	beq .L126
	cmp r0,d0
	beq .L126
	cmp a0,a1
	bne .L126
	add_add 1, d0, 1, d1
	movbu (d0),a0
	cmp 0,a0
	bne .L127
.L126:
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L129:
	clr d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a1
	cmp 1,a1
	ble .L141
	and -2,a1
	add d0,a1
	setlb
.L143:
	movbu (1,d0),a0
	movbu a0,(d1)
	movbu (d0),a0
	movbu a0,(1,d1)
	add_add 2, d1, 2, d0
	cmp a1,d0
	Lne # loop back to: .L143
.L141:
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
	bls .L148
	clr d0
.L148:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov_mov d0, d1, 1, d0
	cmp 127,d1
	bls .L152
	clr d0
.L152:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L158
	mov 1,d1
	cmp 9,d0
	beq .L157
	clr d1
.L157:
	mov d1,d0
	retf [],0
.L158:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L167
	mov 1,d1
	cmp 127,d0
	beq .L166
	clr d1
.L166:
	mov d1,d0
	retf [],0
.L167:
	mov 1,d0
	retf [],0
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L174
	clr d0
.L174:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add_mov d0, d1, 1, d0
	cmp 93,d1
	bls .L178
	clr d0
.L178:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L182
	clr d0
.L182:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add_mov d0, d1, 1, d0
	cmp 94,d1
	bls .L186
	clr d0
.L186:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L192
	add -9,d0
	mov_cmp 1, d1, 4, d0
	bhi .L195
	mov d1,d0
	retf [],0
.L195:
	clr d1
	mov d1,d0
	retf [],0
.L192:
	mov 1,d0
	retf [],0
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov -65,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L197
	clr d0
.L197:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L205
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bhi .L208
.L205:
	mov 1,d0
	retf [],0
.L208:
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L205
	add -65529,d0
	mov_cmp 1, d1, 2, d0
	bls .L202
	clr d1
.L202:
	mov d1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L210
	clr d0
.L210:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L223
	cmp 8231,d0
	bls .L219
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L219
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L219
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L220
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L219:
	mov 1,d0
	retf [],0
.L223:
	inc d0
	mov d0,d1
	and 127,d1
	mov 1,d0
	cmp 32,d1
	bls .L220
	retf [],0
.L220:
	clr d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L227
	or 32,d0
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 5,d1
	bhi .L230
	retf [],0
.L227:
	mov 1,d0
	retf [],0
.L230:
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
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L236
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L237
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L240
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L240:
	mov_mov r4, a0, r4, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L236:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L237:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
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
	bne .L246
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	mov_cmp d0, d2, 0, d0
	bne .L247
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L250
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
	ret [d2,d3,a2],24
.L250:
	mov d2,d0
	ret [d2,d3,a2],24
.L246:
	mov d3,d0
	ret [d2,d3,a2],24
.L247:
	mov a2,d0
	ret [d2,d3,a2],24
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
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L255:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L262
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L266:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L262:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L266
.L261:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L259:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L260:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
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
	bne .L273
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L267
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L269
	cmp 0,a0
	beq .L267
	mov d3,d0
.L267:
	ret [d2,d3],20
.L269:
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L273
	mov d2,d0
	ret [d2,d3],20
.L273:
	mov d3,d0
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
	bne .L286
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L287
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L282
	cmp 0,a0
	bne .L288
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L282:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L289
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
.L293:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L289:
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
	jmp .L293
.L288:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L286:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L287:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
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
	bne .L300
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L301
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L296
	cmp 0,a0
	bne .L302
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L296:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L303
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L307:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L303:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L307
.L302:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L300:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L301:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
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
	bne .L314
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	cmp_mov 0, d0, d2, d0
	bne .L308
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L310
	cmp 0,a0
	bne .L308
	mov d3,d0
.L308:
	ret [d2,d3],20
.L310:
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L317
.L314:
	mov d3,d0
	ret [d2,d3],20
.L317:
	mov d2,d0
	ret [d2,d3],20
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
	bne .L327
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L328
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L323
	cmp 0,a0
	bne .L329
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L323:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L330
	mov_mov a2, d0, a3, d1
	mov_mov d0, a0, d1, a1
.L334:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L330:
	mov_mov d2, d0, d3, d1
	mov_mov d0, a0, d1, a1
	jmp .L334
.L329:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L327:
	mov_mov a2, a0, a3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
.L328:
	mov_mov d2, a0, d3, a1
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3],36
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	mov +s.0,d1
	cmp 0,d0
	beq .L336
	mov +digits,a1
	setlb
.L337:
	mov d0,a0
	and 63,a0
	movbu (a0,a1),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L337
.L336:
	clr d0
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
	clr d0
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
	beq .L354
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L346
	mov d0,(4,d1)
.L346:
	retf [],0
.L354:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L356
	mov (4,d0),a0
	mov a0,(4,d1)
.L356:
	mov (4,d0),d1
	cmp 0,d1
	beq .L355
	mov (d0),d0
	mov d0,(d1)
.L355:
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
	beq .L367
	mov d1,d2
	clr r7
.L369:
	mov_mov d2, a3, d2, d1
	mov_mov a2, d0, r5, a0
	calls (a0)
	cmp 0,d0
	beq .L366
	add_add 1, r7, r4, d2
	cmp r7,d3
	bne .L369
.L367:
	mov 1,d0
	add d3,d0
	mov (60,sp),a0
	mov d0,(a0)
	mul r4,d3,d0,a3
	add_cmp r6, a3, 0, r4
	beq .L366
	mov r4,(12,sp)
	mov_mov a2, d1, a3, d0
	call +memmove,[],0
.L366:
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
	beq .L384
	mov d1,d2
	clr d3
.L386:
	mov_mov d2, r6, d2, d1
	mov_mov a2, d0, r4, a0
	calls (a0)
	cmp 0,d0
	beq .L383
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L386
.L384:
	clr r6
.L383:
	mov_mov r6, a0, r6, d0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L400
	retf [],0
.L400:
	clr d0
	sub d1,d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	mov d0,d1
.L402:
	movbu (d1),a0
	cmp 32,a0
	beq .L405
	mov -9,d0
	add a0,d0
	cmp 4,d0
	bls .L405
	clr d0
	cmp 43,a0
	beq .L412
	cmp 45,a0
	beq .L420
	clr r0
.L407:
	movbu (d1),a0
	mov -48,a1
	add a0,a1
	cmp 9,a1
	bhi .L421
	setlb
.L408:
	mul 10,d0
	inc d1
	add -48,a0
	sub a0,d0
	movbu (d1),a0
	mov -48,a1
	add a0,a1
	cmp 9,a1
	Lls # loop back to: .L408
.L421:
	cmp 0,r0
	bne .L401
	not d0
	inc d0
.L401:
	rets
.L405:
	inc d1
	jmp .L402
.L420:
	mov_add 1, r0, 1, d1
	jmp .L407
.L412:
	clr r0
	inc d1
	jmp .L407
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
.L425:
	movbu (d0),d1
	cmp 32,d1
	beq .L428
	mov -9,d2
	add d1,d2
	cmp 4,d2
	bls .L428
	mov 0,a2
	cmp 43,d1
	beq .L429
	cmp 45,d1
	beq .L444
.L430:
	movbu (d0),d1
	mov -48,d2
	add d1,d2
	clr r2
	mov r2,r3
	cmp 9,d2
	bhi .L432
	mov 10,d2
	setlb
.L431:
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
	Lls # loop back to: .L431
.L432:
	cmp 0,a2
	bne .L424
	sub r2,a2,r2
	subc r3,a2,r3
.L424:
	mov_mov r2, d0, r3, d1
	ret [d2,d3,a2],12
.L428:
	inc d0
	jmp .L425
.L444:
	mov 1,a2
.L429:
	inc d0
	jmp .L430
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
.L455:
	cmp 0,d2
	beq .L446
.L458:
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	add a2,d3
	mov_mov d3, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L450
	ble .L445
	add a3,d3,a2
	add -1,d2
	sub r6,d2
	cmp 0,d2
	bne .L458
.L446:
	clr d3
.L445:
	mov_mov d3, a0, d3, d0
	ret [d2,d3,a2,a3,exreg1],44
.L450:
	mov r6,d2
	jmp .L455
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
	beq .L460
.L463:
	mov r6,d2
	asr 1,d2
	mul a2,d2
	add d3,d2
	mov r4,(12,sp)
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L459
	ble .L462
	add a2,d2,d3
	add -1,r6
.L462:
	asr 1,r6
	cmp 0,r6
	bne .L463
.L460:
	clr d2
.L459:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3,exreg1],48
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
	blt .L480
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L480:
	clr d0
	sub r0,d0,a0
	subc d1,d0,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
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
	blt .L487
	retf [],0
.L487:
	clr d0
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
	blt .L495
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L495:
	clr d0
	sub r0,d0,a0
	subc d1,d0,a1
	mov_mov a0, d0, a1, d1
	retf [d2],4
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
	mov (d0),a0
	cmp 0,a0
	beq .L504
.L512:
	cmp a0,d1
	beq .L511
	add 4,d0
	mov (d0),a0
	cmp 0,a0
	bne .L512
.L504:
	clr d0
	mov d0,a0
	retf [],0
.L511:
	cmp 0,a0
	beq .L504
	mov d0,a0
	retf [],0
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),r0
	mov_add 4, a0, -4, d1
	cmp r0,a1
	bne .L515
.L514:
	cmp 0,a1
	beq .L515
	cmp 0,r0
	beq .L515
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L514
.L515:
	cmp r0,a1
	blt .L520
	mov 1,d0
	ble .L527
	retf [],0
.L520:
	mov -1,d0
	retf [],0
.L527:
	clr d0
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov 0,a1
	setlb
.L529:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L529
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L534
	setlb
.L535:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L535
.L534:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L546
.L541:
	mov (d0),a1
	mov (d1),r0
	cmp r0,a1
	bne .L542
	cmp 0,a1
	beq .L542
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L541
.L546:
	clr d0
	retf [],0
.L542:
	cmp 0,a0
	beq .L546
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L547
	mov 1,d0
	ble .L546
	retf [],0
.L547:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L562
.L557:
	mov (d0),a1
	cmp d1,a1
	beq .L568
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L557
.L562:
	clr d0
	mov d0,a0
	retf [],0
.L568:
	cmp 0,a0
	beq .L562
	mov d0,a0
	retf [],0
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L575
.L570:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L585
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L570
.L575:
	clr d0
	retf [],0
.L585:
	cmp 0,a0
	beq .L575
	cmp a1,r0
	blt .L576
	mov 1,d0
	ble .L575
	retf [],0
.L576:
	mov -1,d0
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov d0,a1
	mov (28,sp),d0
	cmp 0,d0
	beq .L587
	asl2 d0
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L587:
	mov_mov a1, a0, a1, d0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a0
	cmp d1,d0
	beq .L594
	mov -1,a1
	add a0,a1
	sub d1,d0,r1
	mov a0,r0
	asl2 r0
	cmp r0,r1
	bcc .L608
	cmp 0,a0
	beq .L594
	asl2 a1
	setlb
.L597:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L597
.L594:
	mov d0,a0
	retf [],0
.L608:
	clr r0
	cmp r0,a0
	beq .L594
.L596:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	add_add -1, a1, 4, r0
	cmp -1,a1
	beq .L594
	mov (r0,d1),a0
	mov a0,(r0,d0)
	add_add -1, a1, 4, r0
	cmp -1,a1
	bne .L596
	jmp .L594
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a0
	mov -1,a1
	add_cmp a0, a1, 0, a0
	beq .L610
	mov d0,r0
	setlb
.L611:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L611
.L610:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
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
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L634
	clr r0
	asl d0,a0,r1
.L635:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L636
	clr d0
	mov d0,d1
	lsr r2,a1,d0
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L636:
	mov a1,r3
	mov_asl r2, d0, 1, r3
	not d0
	asl d0,r3
	lsr r2,a0,d0
	or r3,d0
	lsr r2,a1,d1
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L634:
	mov a0,d1
	mov_lsr d0, r0, 1, d1
	not r0
	lsr r0,d1
	asl d0,a1,r1
	or d1,r1
	asl d0,a0,r0
	jmp .L635
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L641
	clr r0
	mov r0,r1
	lsr d0,a1,r0
.L642:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L643
	clr d0
	asl r2,a0,d1
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L643:
	mov a0,r3
	mov_lsr r2, d0, 1, r3
	not d0
	lsr d0,r3
	asl r2,a1,d1
	or r3,d1
	asl r2,a0,d0
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L641:
	mov a1,d1
	mov_asl d0, r0, 1, d1
	not r0
	asl r0,d1
	lsr d0,a0,r0
	or d1,r0
	lsr d0,a1,r1
	jmp .L642
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
	clr d0
	mov a0,d1
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
	clr d1
.L672:
	lsr d1,d0,a0
	inc d1
	btst 1,a0
	bne .L676
	cmp 32,d1
	bne .L672
	clr d0
	retf [],0
.L676:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov_cmp d0, d1, 0, d0
	beq .L680
	and 1,d0
	bne .L677
	mov 1,d0
	setlb
.L679:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L679
	retf [],0
.L680:
	clr d0
.L677:
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
	blt .L688
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L691
	mov d2,d0
.L685:
	ret [d2,d3],20
.L688:
	mov 1,d0
	ret [d2,d3],20
.L691:
	clr d2
	mov d2,d0
	jmp .L685
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
	blt .L695
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L698
	mov a2,d0
.L692:
	ret [d2,d3,a2,a3],36
.L695:
	mov 1,d0
	ret [d2,d3,a2,a3],36
.L698:
	mov 0,a2
	mov a2,d0
	jmp .L692
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
	blt .L702
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L705
	mov a2,d0
.L699:
	ret [d2,d3,a2,a3],36
.L702:
	mov 1,d0
	ret [d2,d3,a2,a3],36
.L705:
	mov 0,a2
	mov a2,d0
	jmp .L699
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
	bne .L709
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L709
	cmp 0,d2
	blt .L724
	mov 1073741824,d3
.L713:
	btst 1,d2
	beq .L712
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
.L712:
	mov d2,d1
	lsr 31,d1
	add d2,d1
	asr 1,d1
	mov_cmp d1, d2, 0, d1
	beq .L709
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L713
.L709:
	mov a2,d0
	ret [d2,d3,a2],24
.L724:
	mov 1056964608,d3
	jmp .L713
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
	bne .L726
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L726
	mov_cmp r5, d2, 0, r4
	blt .L741
	mov 1073741824,d3
.L730:
	btst 1,r4
	beq .L729
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L729:
	mov r4,d0
	lsr 31,d0
	add r4,d0
	asr 1,d0
	mov_cmp d0, r4, 0, d0
	beq .L726
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L730
.L726:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L741:
	mov 1071644672,d3
	jmp .L730
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
	bne .L743
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L743
	mov_cmp r5, d2, 0, r4
	blt .L758
	mov 1073741824,d3
.L747:
	btst 1,r4
	beq .L746
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L746:
	mov r4,d0
	lsr 31,d0
	add r4,d0
	asr 1,d0
	mov_cmp d0, r4, 0, d0
	beq .L743
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L747
.L743:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L758:
	mov 1071644672,d3
	jmp .L747
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L760
	add_mov d1, r2, d0, a1
	setlb
.L761:
	add_add 1, d1, 1, a1
	movbu (-1,a1),r0
	movbu (-1,d1),r1
	xor r1,r0
	movbu r0,(-1,a1)
	cmp d1,r2
	Lne # loop back to: .L761
.L760:
	mov d0,a0
	retf [],0
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	mov (12,sp),r1
	movbu (d0),a0
	mov_cmp d0, a1, 0, a0
	beq .L769
	setlb
.L770:
	inc a1
	movbu (a1),r0
	cmp 0,r0
	Lne # loop back to: .L770
.L769:
	cmp 0,r1
	beq .L777
.L771:
	movbu (d1),r0
	movbu r0,(a1)
	extbu r0
	cmp 0,r0
	beq .L784
	add_add 1, d1, 1, a1
	add -1,r1
	bne .L771
.L777:
	movbu r1,(a1)
.L774:
	mov d0,a0
	retf [],0
.L784:
	cmp 0,r1
	bne .L774
	movbu r1,(a1)
	jmp .L774
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov d0,a0
	clr d0
	cmp d0,d1
	beq .L794
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L788
.L785:
	retf [],0
.L788:
	inc d0
	cmp d0,d1
	beq .L785
	movbu (d0,a0),a1
	cmp 0,a1
	beq .L785
	jmp .L788
.L794:
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
	movbu (d0),r1
	cmp 0,r1
	beq .L800
.L807:
	mov d1,a1
.L799:
	movbu (a1),r0
	cmp 0,r0
	beq .L806
	add_cmp 1, a1, r1, r0
	bne .L799
	mov d0,a0
	retf [],0
.L806:
	inc d0
	movbu (d0),r1
	cmp 0,r1
	bne .L807
.L800:
	clr d0
	mov d0,a0
	retf [],0
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov d0,a0
	clr d0
.L810:
	movbu (a0),a1
	cmp d1,a1
	beq .L815
	add_cmp 1, a0, 0, a1
	bne .L810
.L816:
	mov d0,a0
	retf [],0
.L815:
	mov_add a0, d0, 1, a0
	cmp 0,a1
	bne .L810
	jmp .L816
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2],(sp)
	movbu (d1),r2
	mov_cmp d1, a0, 0, r2
	beq .L818
	setlb
.L819:
	inc a0
	movbu (a0),a1
	cmp 0,a1
	Lne # loop back to: .L819
.L818:
	sub d1,a0,d2
	cmp d1,a0
	beq .L820
	add -1,d2
.L826:
	movbu (d0),a0
	cmp r2,a0
	beq .L825
	add_cmp 1, d0, 0, a0
	bne .L826
	clr d0
.L820:
	mov d0,a0
	retf [d2],4
.L825:
	cmp 0,d0
	beq .L820
	movbu (d0),a1
	cmp 0,a1
	beq .L829
	add d2,d0,r3
	mov_mov d1, r0, d0, a0
.L823:
	movbu (r0),r1
	cmp 0,r1
	beq .L822
	cmp r3,a0
	beq .L822
	cmp a1,r1
	bne .L822
	add_add 1, a0, 1, r0
	movbu (a0),a1
	cmp 0,a1
	bne .L823
.L822:
	movbu (r0),a0
	cmp a1,a0
	beq .L820
	inc d0
	jmp .L826
.L829:
	mov d1,r0
	jmp .L822
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	clr r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L854
.L844:
	clr r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L847
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L846
.L847:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L854:
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L844
.L846:
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
	mov d0,r2
	mov (24,sp),a2
	mov (28,sp),d2
	cmp 0,d2
	beq .L855
	cmp d2,d1
	bcs .L865
	sub d2,d1,r3
	add d0,r3
	cmp r3,d0
	bhi .L865
	movbu (a2),d3
.L862:
	movbu (r2),d1
	mov_add r2, d0, 1, r2
	extbu d1
	cmp d3,d1
	beq .L880
	cmp r3,r2
	bls .L862
.L865:
	clr d0
.L855:
	mov d0,a0
	retf [d2,d3,a2],12
.L880:
	mov 1,a0
	add_mov a2, a0, -1, d1
	add_cmp d2, d1, 1, d2
	beq .L855
	mov r2,a1
	movbu (a1),r1
	movbu (a0),r0
	cmp r0,r1
	bne .L881
.L860:
	add_add -1, d1, 1, a1
	add_cmp 1, a0, 0, d1
	beq .L855
	movbu (a1),r1
	movbu (a0),r0
	cmp r0,r1
	beq .L860
.L881:
	cmp 0,d1
	beq .L855
	cmp r0,r1
	beq .L855
	cmp r3,r2
	bls .L862
	jmp .L865
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov d0,a1
	mov (32,sp),d2
	cmp 0,d2
	beq .L883
	mov d2,(12,sp)
	call +memmove,[],0
	mov a0,a1
.L883:
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
	clr d0
	mov d0,(12,sp)
	mov d0,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L919
	clr r5
	mov 0,a2
	mov a2,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp a2,d0
	blt .L913
.L920:
	mov a2,r6
	mov 1071644672,r4
	mov 1072693248,a3
.L894:
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
	bge .L894
.L895:
	mov (64,sp),d0
	mov r6,(d0)
	cmp 0,r5
	beq .L899
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L899:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L919:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, r5
	mov 0,a2
	mov a2,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp a2,d0
	bge .L920
.L913:
	mov a2,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L914
	mov a2,(12,sp)
	mov a2,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	clr r6
	cmp 0,d0
	beq .L895
	mov r6,a3
	mov 1071644672,a2
.L898:
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
	bge .L895
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
	blt .L898
	jmp .L895
.L914:
	clr r6
	jmp .L895
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
	beq .L925
	clr r4
	mov r4,r5
	setlb
.L924:
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
	Lne # loop back to: .L924
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L925:
	mov_mov d2, r4, d2, r5
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L938
	mov 32,d0
	mov 1,a0
.L930:
	cmp 0,d1
	blt .L931
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L931
	add -1,d0
	bne .L930
.L942:
	clr d0
	cmp 0,r0
	bne .L945
.L929:
	retf [],0
.L931:
	cmp 0,a0
	beq .L942
.L938:
	clr d0
.L932:
	cmp d1,a1
	bcs .L935
	or_sub a0, d0, d1, a1
.L935:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L932
	cmp 0,r0
	beq .L929
.L945:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L948
	asl 8,d0
	clr d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L948:
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
	beq .L961
.L957:
	clr d0
	cmp 0,a1
	bne .L962
	bsch a0, d0
	xor 31,d0
	add 32,d0
	add -1,d0
	retf [],0
.L962:
	bsch a1, d0
	xor 31,d0
	add -1,d0
	retf [],0
.L961:
	cmp d0,d1
	bne .L957
	mov 63,d0
	retf [],0
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov d0,a1
	clr d0
	cmp 0,a1
	beq .L966
	setlb
.L965:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L965
	retf [],0
.L966:
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
	bcs .L974
	add r3,d1,a0
	cmp a0,d0
	bls .L986
.L974:
	cmp 0,d2
	beq .L973
	mov_asl 0, a0, 3, d2
	setlb
.L977:
	mov (a0,d1),r0
	add a0,d1,r2
	mov (4,r2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp a0,d2
	Lne # loop back to: .L977
.L973:
	cmp a1,r3
	bls .L970
	setlb
.L978:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L978
.L970:
	retf [d2],4
.L986:
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L970
.L975:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	beq .L970
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	bne .L975
	jmp .L970
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcs .L991
	add r1,d1,a0
	cmp a0,d0
	bls .L1003
.L991:
	cmp 0,r0
	beq .L990
	mov_asl 0, a0, 1, r0
	setlb
.L994:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L994
.L990:
	btst 1,r1
	beq .L987
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L1003:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L1004
	setlb
.L992:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L992
.L987:
	retf [],0
.L1004:
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
	bcs .L1009
	add r1,d1,a1
	cmp a1,d0
	bls .L1020
.L1009:
	cmp 0,r2
	beq .L1008
	mov_asl 0, a1, 2, r2
	setlb
.L1012:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L1012
.L1008:
	cmp a0,r1
	bls .L1005
	setlb
.L1013:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L1013
	retf [],0
.L1020:
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L1021
	setlb
.L1010:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L1010
.L1005:
	retf [],0
.L1021:
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
	mov d0,a0
	clr d2
	mov d2,mdr
	divu d1,a0
	mov mdr,d0
	ret [d2],4
	.size	__umodi, .-__umodi
	.global __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	clr d1
	exthu d0
	mov 15,a1
.L1036:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L1034
	inc d1
	cmp 16,d1
	bne .L1036
.L1034:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	clr d1
	exthu d0
.L1042:
	asr d1,d0,a0
	btst 1,a0
	bne .L1040
	inc d1
	cmp 16,d1
	bne .L1042
.L1040:
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
	bge .L1054
	mov d2,d0
	call +__fixsfsi,[],0
	ret [d2],16
.L1054:
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
	mov a1,d1
	exthu d0
	setlb
.L1056:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L1056
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
.L1061:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L1061
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov d0,a1
	clr d0
	cmp 0,a1
	beq .L1068
	setlb
.L1067:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L1067
	retf [],0
.L1068:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov d0,a1
	clr d0
	cmp 0,a1
	beq .L1075
	cmp 0,d1
	beq .L1076
	setlb
.L1074:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L1074
	retf [],0
.L1075:
	retf [],0
.L1076:
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d1, d0
	bls .L1089
	mov 32,d0
	mov 1,a0
.L1081:
	cmp 0,d1
	blt .L1082
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1082
	add -1,d0
	bne .L1081
.L1093:
	clr d0
	cmp 0,r0
	bne .L1096
.L1080:
	retf [],0
.L1082:
	cmp 0,a0
	beq .L1093
.L1089:
	clr d0
.L1083:
	cmp d1,a1
	bcs .L1086
	or_sub a0, d0, d1, a1
.L1086:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1083
	cmp 0,r0
	beq .L1080
.L1096:
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
	blt .L1100
	mov_mov 1, d2, a2, d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L1103
	mov d2,d0
.L1097:
	ret [d2,d3,a2],24
.L1103:
	clr d2
	mov d2,d0
	jmp .L1097
.L1100:
	mov -1,d0
	ret [d2,d3,a2],24
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
	blt .L1107
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L1110
	mov r4,d0
.L1104:
	ret [d2,d3,a2,a3,exreg1],52
.L1110:
	clr r4
	mov r4,d0
	jmp .L1104
.L1107:
	mov -1,d0
	ret [d2,d3,a2,a3,exreg1],52
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
	blt .L1131
	clr r1
.L1116:
	cmp 0,d1
	beq .L1121
	mov 32,r0
	clr d0
.L1118:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L1117
	mov -1,a0
	add r0,a0
	mov a0,r0
	extbu a0
	cmp 0,a0
	bne .L1118
.L1117:
	cmp 0,r1
	beq .L1115
	not d0
	inc d0
.L1115:
	retf [],0
.L1131:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L1116
.L1121:
	clr d0
	jmp .L1117
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	cmp 0,d0
	blt .L1154
	clr r1
	cmp 0,d1
	blt .L1155
.L1134:
	mov_cmp d0, r0, d1, d0
	bls .L1142
	mov 32,a1
	mov 1,a0
.L1136:
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L1135
	add -1,a1
	bne .L1136
.L1143:
	mov 0,a1
.L1137:
	mov_cmp a1, d0, 0, r1
	beq .L1132
	clr d0
	sub a1,d0
.L1132:
	retf [],0
.L1135:
	cmp 0,a0
	beq .L1143
	mov 0,a1
.L1139:
	cmp d1,r0
	bcs .L1138
	or_sub a0, a1, d1, r0
.L1138:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1139
	jmp .L1137
.L1155:
	not d1
	inc d1
	xor 1,r1
	jmp .L1134
.L1154:
	not d0
	add_mov 1, d0, 1, r1
	cmp 0,d1
	bge .L1134
	jmp .L1155
.L1142:
	mov_mov 1, a0, 0, a1
	jmp .L1139
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	mov_cmp d1, a0, 0, d0
	blt .L1179
	clr r1
	mov_mov d0, r0, a0, d1
	cmp 0,a0
	blt .L1180
.L1158:
	cmp d1,d0
	bls .L1166
	mov 32,a1
	mov 1,a0
.L1160:
	add d1,d1
	cmp_asl d1, d0, 1, a0
	bls .L1176
	add -1,a1
	bne .L1160
.L1161:
	mov_cmp r0, d0, 0, r1
	beq .L1156
	clr d0
	sub r0,d0
.L1156:
	retf [],0
.L1166:
	mov 1,a0
.L1171:
	cmp d1,r0
	bcs .L1162
	sub d1,r0
.L1162:
	lsr 1,a0
	lsr 1,d1
.L1176:
	cmp 0,a0
	bne .L1171
	jmp .L1161
.L1180:
	clr d1
	sub a0,d1
	jmp .L1158
.L1179:
	not d0
	add_mov 1, d0, 1, r1
	mov_mov d0, r0, a0, d1
	cmp 0,a0
	bge .L1158
	jmp .L1180
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
	bcc .L1197
	mov 16,d1
	mov 1,r0
	exthu r2,a1
.L1182:
	exth a0,d0
	cmp 0,d0
	blt .L1183
	mov a0,d0
	add d0,d0
	mov d0,a0
	add r0,r0
	exthu d0
	cmp d0,a1
	bls .L1183
	add -1,d1
	bne .L1182
	clr r0
.L1194:
	mov r0,d0
.L1185:
	cmp 0,r3
	bne .L1198
	retf [],0
.L1183:
	exthu r0,d1
	cmp 0,d1
	beq .L1194
	clr d0
.L1184:
	exthu r2,r1
	exthu a0,a1
	cmp a1,r1
	bcs .L1187
	or_sub r0, d0, a0, r2
.L1187:
	lsr 1,d1
	mov d1,r0
	lsr 1,a1
	mov a1,a0
	cmp 0,d1
	beq .L1185
	exthu d1
	jmp .L1184
.L1198:
	mov r2,d0
	retf [],0
.L1197:
	mov 1,r0
	mov 1,d1
	clr d0
	jmp .L1184
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d1, d0
	bls .L1208
	mov 32,d0
	mov 1,a0
.L1200:
	cmp 0,d1
	blt .L1201
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L1201
	add -1,d0
	bne .L1200
.L1212:
	clr d0
	cmp 0,r0
	bne .L1215
.L1199:
	retf [],0
.L1201:
	cmp 0,a0
	beq .L1212
.L1208:
	clr d0
.L1202:
	cmp d1,a1
	bcs .L1205
	or_sub a0, d0, d1, a1
.L1205:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	bne .L1202
	cmp 0,r0
	beq .L1199
.L1215:
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
	beq .L1217
	asl d0,a0
	clr r0
	mov a0,r1
.L1219:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1217:
	cmp 0,d0
	beq .L1220
	asl d0,a0,r0
	clr d1
	sub d0,d1
	lsr d1,a0,d1
	asl d0,a1,d0
	or d0,d1,a0
	mov a0,r1
	jmp .L1219
.L1220:
	mov_mov a0, r0, a1, r1
	mov_mov r0, d0, r1, d1
	retf [],0
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d1
	mov d1,d0
	and 32,d0
	beq .L1224
	mov a1,d0
	asr 31,d0
	asr d1,a1,d1
	mov_mov d1, r0, d0, r1
.L1226:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1224:
	cmp 0,d1
	beq .L1227
	asr d1,a1,d0
	clr r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	mov_mov d1, r0, d0, r1
	jmp .L1226
.L1227:
	mov_mov a0, r0, a1, r1
	mov_mov r0, d0, r1, d1
	retf [],0
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d0, a0, d1, a1
	clr d0
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
	bls .L1235
	mov 0,a0
.L1235:
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L1236
	clr d0
.L1236:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L1237
	clr d0
.L1237:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	add_lsr a0, d0, a1, d1
	mov 1,a0
	btst 12,d1
	beq .L1238
	mov 0,a0
.L1238:
	mov_asl 2, a1, 1, a0
	sub a0,a1,r0
	lsr r0,d1
	mov d1,r0
	lsr 1,r0
	btst 1,r0
	bne .L1239
	sub_add d1, a1, a0, d0
	add a1,d0
	retf [],0
.L1239:
	mov_add 0, a1, a0, d0
	add a1,d0
	retf [],0
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	blt .L1256
	bgt .L1257
	cmp a0,r0
	bcs .L1256
	bhi .L1257
	mov 1,d0
	retf [],0
.L1256:
	clr d0
	retf [],0
.L1257:
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
	blt .L1264
	bgt .L1265
	cmp a0,r0
	bcs .L1264
	bhi .L1265
	mov 1,d0
	add -1,d0
	retf [],0
.L1264:
	clr d0
	add -1,d0
	retf [],0
.L1265:
	mov 2,d0
	add -1,d0
	retf [],0
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	mov_cmp 1, a0, 0, d1
	beq .L1269
	mov 0,a0
.L1269:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	mov_cmp 1, d0, 0, a1
	beq .L1270
	clr d0
.L1270:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L1271
	clr d0
.L1271:
	asl2 d0
	lsr d0,d1
	add a0,d0,a1
	mov 1,d0
	btst 3,d1
	beq .L1272
	clr d0
.L1272:
	add d0,d0
	lsr d0,d1
	and 3,d1
	mov d1,a0
	not a0
	and 1,a0
	mov_lsr 2, r0, 1, d1
	sub d1,r0
	clr d1
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
	beq .L1288
	lsr d1,a1,d1
	clr d0
	mov_mov d1, r0, d0, r1
.L1290:
	mov_mov r0, d0, r1, d1
	retf [],0
.L1288:
	cmp 0,d1
	beq .L1291
	lsr d1,a1,d0
	clr r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	mov_mov d1, r0, d0, r1
	jmp .L1290
.L1291:
	mov_mov a0, r0, a0, d0
	mov r1,d1
	retf [],0
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
	mov d0,r0
	clr d0
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
.L1311:
	btst 1,r5
	beq .L1309
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L1309:
	mov r5,d0
	lsr 31,d0
	add r5,d0
	asr 1,d0
	mov_cmp d0, r5, 0, d0
	beq .L1310
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L1311
.L1310:
	cmp 0,r4
	blt .L1318
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L1318:
	mov a2,(12,sp)
	mov a3,(16,sp)
	clr d0
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, a2, d1, a3
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a3
	mov d1,d2
	mov 1065353216,a2
.L1322:
	btst 1,d2
	beq .L1320
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
.L1320:
	mov d2,a0
	lsr 31,a0
	add d2,a0
	asr 1,a0
	mov_cmp a0, d2, 0, a0
	beq .L1321
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
	jmp .L1322
.L1321:
	cmp 0,a3
	blt .L1329
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L1329:
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov_mov d0, a2, d0, d0
	ret [d2,d3,a2,a3],28
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	bcs .L1334
	bhi .L1335
	cmp a0,r0
	bcs .L1334
	bhi .L1335
	mov 1,d0
	retf [],0
.L1334:
	clr d0
	retf [],0
.L1335:
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
	bcs .L1342
	bhi .L1343
	cmp a0,r0
	bcs .L1342
	bhi .L1343
	mov 1,d0
	add -1,d0
	retf [],0
.L1342:
	clr d0
	add -1,d0
	retf [],0
.L1343:
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
