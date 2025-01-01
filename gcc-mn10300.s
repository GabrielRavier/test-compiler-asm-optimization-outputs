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
	mov 0,r0
	setlb
.L5:
	movbu (r0,d1),a0
	movbu a0,(r0,d0)
	inc r0
	cmp r0,a1
	Lne # loop back to: .L5
	jmp .L3
	.size	memmove, .-memmove
	.global memccpy
	.type	memccpy, @function
memccpy:
	mov (16,sp),a0
	movbu (12,sp),r0
	cmp 0,a0
	beq .L11
.L10:
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L11
	add_add -1, a0, 1, d1
	add_cmp 1, d0, 0, a0
	bne .L10
.L11:
	cmp 0,a0
	beq .L14
	inc d0
.L9:
	mov d0,a0
	retf [],0
.L14:
	mov a0,d0
	jmp .L9
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L19
.L18:
	movbu (d0),a1
	cmp d1,a1
	beq .L19
	inc d0
	add -1,a0
	bne .L18
.L19:
	cmp 0,a0
	beq .L25
.L17:
	mov d0,a0
	retf [],0
.L25:
	mov a0,d0
	jmp .L17
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L28
.L27:
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	bne .L28
	add_add -1, a0, 1, d0
	add_cmp 1, d1, 0, a0
	bne .L27
.L28:
	cmp 0,a0
	beq .L31
	movbu (d0),a0
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L31:
	mov a0,d0
	retf [],0
	.size	memcmp, .-memcmp
	.global memcpy
	.type	memcpy, @function
memcpy:
	add -16,sp
	mov d0,a1
	mov (28,sp),d0
	cmp 0,d0
	beq .L35
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L35:
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
.L38:
	cmp r0,a0
	beq .L42
	mov_add a0, d0, -1, a0
	movbu (d0),a1
	cmp d1,a1
	bne .L38
	jmp .L37
.L42:
	mov 0,d0
.L37:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L44
	add_mov d0, r0, d0, a1
	setlb
.L45:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L45
.L44:
	mov d0,a0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
.L52:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	beq .L49
	add_add 1, d1, 1, d0
	jmp .L52
.L49:
	mov d0,a0
	retf [],0
	.size	stpcpy, .-stpcpy
	.global strchrnul
	.type	strchrnul, @function
strchrnul:
	extbu d1
	movbu (d0),a1
	extbu a1,a0
	cmp 0,a0
	beq .L54
.L55:
	extbu a1
	cmp d1,a1
	beq .L54
	inc d0
	movbu (d0),a1
	extbu a1,a0
	cmp 0,a0
	bne .L55
.L54:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L63:
	movbu (d0),a0
	cmp d1,a0
	beq .L62
	add_cmp 1, d0, 0, a0
	bne .L63
	mov a0,d0
.L62:
	mov d0,a0
	retf [],0
	.size	strchr, .-strchr
	.global strcmp
	.type	strcmp, @function
strcmp:
	movbu (d0),a1
	movbu (d1),r0
	extbu a1,r2
	extbu r0,r1
	mov_add 1, a0, -1, d1
	cmp r1,r2
	bne .L68
.L67:
	extbu a1,r1
	cmp 0,r1
	beq .L68
	movbu (a0,d0),a1
	inc a0
	movbu (a0,d1),r0
	extbu a1,r2
	extbu r0,r1
	cmp r1,r2
	beq .L67
.L68:
	extbu a1
	extbu r0
	sub r0,a1,d0
	retf [],0
	.size	strcmp, .-strcmp
	.global strlen
	.type	strlen, @function
strlen:
	movbu (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L74
	setlb
.L75:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L75
.L74:
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L84
	movbu (d0),a0
	extbu a0,a1
	cmp 0,a1
	beq .L81
	add -1,r0
	add d0,r0
.L82:
	movbu (d1),a1
	cmp 0,a1
	beq .L81
	cmp r0,d0
	beq .L81
	extbu a0,r1
	cmp r1,a1
	bne .L81
	add_add 1, d0, 1, d1
	movbu (d0),a0
	extbu a0,a1
	cmp 0,a1
	bne .L82
.L81:
	extbu a0
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L84:
	mov r0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a1
	cmp 1,a1
	ble .L86
	and -2,a1
	add d0,a1
	setlb
.L88:
	movbu (1,d0),a0
	movbu a0,(d1)
	movbu (d0),a0
	movbu a0,(1,d1)
	add_add 2, d1, 2, d0
	cmp a1,d0
	Lne # loop back to: .L88
.L86:
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
	bls .L92
	mov 0,d0
.L92:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov_mov d0, d1, 1, d0
	cmp 127,d1
	bls .L95
	mov 0,d0
.L95:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L100
	mov 1,d1
	cmp 9,d0
	beq .L99
	mov 0,d1
.L99:
	mov d1,d0
	retf [],0
.L100:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L105
	mov 1,d1
	cmp 127,d0
	beq .L104
	mov 0,d1
.L104:
	mov d1,d0
	retf [],0
.L105:
	mov 1,d0
	retf [],0
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L108
	mov 0,d0
.L108:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add_mov d0, d1, 1, d0
	cmp 93,d1
	bls .L111
	mov 0,d0
.L111:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L114
	mov 0,d0
.L114:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add_mov d0, d1, 1, d0
	cmp 94,d1
	bls .L117
	mov 0,d0
.L117:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L122
	add -9,d0
	mov_cmp 1, d1, 4, d0
	bls .L121
	mov 0,d1
.L121:
	mov d1,d0
	retf [],0
.L122:
	mov 1,d0
	retf [],0
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov -65,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L125
	mov 0,d0
.L125:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L132
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L132
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L132
	add -65529,d0
	mov_cmp 1, d1, 2, d0
	bls .L129
	mov 0,d1
.L129:
	mov d1,d0
	retf [],0
.L132:
	mov 1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L135
	mov 0,d0
.L135:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L146
	cmp 8231,d0
	bls .L143
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L143
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L143
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L144
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L146:
	inc d0
	mov d0,d1
	and 127,d1
	mov 1,d0
	cmp 32,d1
	bhi .L137
.L144:
	mov 0,d0
.L137:
	retf [],0
.L143:
	mov 1,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L150
	or 32,d0
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 5,d1
	bls .L147
	mov 0,d0
	retf [],0
.L150:
	mov 1,d0
.L147:
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
	bne .L157
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L158
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L161
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L154:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L157:
	mov_mov d2, a0, d3, a1
	jmp .L154
.L158:
	mov_mov a2, a0, a3, a1
	jmp .L154
.L161:
	mov_mov r4, a0, r4, a1
	jmp .L154
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
	bne .L166
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	mov_cmp d0, d2, 0, d0
	bne .L167
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L170
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
.L163:
	ret [d2,d3,a2],24
.L166:
	mov d3,d0
	jmp .L163
.L167:
	mov a2,d0
	jmp .L163
.L170:
	mov d2,d0
	jmp .L163
	.size	fdimf, .-fdimf
	.global fmax
	.type	fmax, @function
fmax:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L178
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L179
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L174
	cmp 0,a0
	bne .L180
	mov_mov d2, a0, d3, a1
	jmp .L172
.L174:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L177
	mov r4,r5
.L177:
	btst 1,r5
	beq .L175
	mov_mov a2, d0, a3, d1
.L176:
	mov_mov d0, a0, d1, a1
.L172:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L175:
	mov_mov d2, d0, d3, d1
	jmp .L176
.L178:
	mov_mov a2, a0, a3, a1
	jmp .L172
.L179:
	mov_mov d2, a0, d3, a1
	jmp .L172
.L180:
	mov_mov a2, a0, a3, a1
	jmp .L172
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3,a2,exreg1],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L188
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	mov_mov d0, a2, d2, d0
	cmp 0,a2
	bne .L182
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L184
	cmp 0,a0
	beq .L182
	mov d3,d0
	jmp .L182
.L184:
	mov 1,r4
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L187
	mov a2,r4
.L187:
	btst 1,r4
	beq .L185
.L188:
	mov d3,d0
.L182:
	ret [d2,d3,a2,exreg1],40
.L185:
	mov d2,d0
	jmp .L182
	.size	fmaxf, .-fmaxf
	.global fmaxl
	.type	fmaxl, @function
fmaxl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L198
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L199
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L194
	cmp 0,a0
	bne .L200
	mov_mov d2, a0, d3, a1
	jmp .L192
.L194:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L197
	mov r4,r5
.L197:
	btst 1,r5
	beq .L195
	mov_mov a2, d0, a3, d1
.L196:
	mov_mov d0, a0, d1, a1
.L192:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L195:
	mov_mov d2, d0, d3, d1
	jmp .L196
.L198:
	mov_mov a2, a0, a3, a1
	jmp .L192
.L199:
	mov_mov d2, a0, d3, a1
	jmp .L192
.L200:
	mov_mov a2, a0, a3, a1
	jmp .L192
	.size	fmaxl, .-fmaxl
	.global fmin
	.type	fmin, @function
fmin:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L208
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L209
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L204
	cmp 0,a0
	bne .L210
	mov_mov a2, a0, a3, a1
	jmp .L202
.L204:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L207
	mov r4,r5
.L207:
	btst 1,r5
	beq .L205
	mov_mov d2, d0, d3, d1
.L206:
	mov_mov d0, a0, d1, a1
.L202:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L205:
	mov_mov a2, d0, a3, d1
	jmp .L206
.L208:
	mov_mov a2, a0, a3, a1
	jmp .L202
.L209:
	mov_mov d2, a0, d3, a1
	jmp .L202
.L210:
	mov_mov d2, a0, d3, a1
	jmp .L202
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3,a2,exreg1],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L218
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	mov_mov d0, a2, d2, d0
	cmp 0,a2
	bne .L212
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L214
	cmp 0,a0
	bne .L212
	mov d3,d0
	jmp .L212
.L214:
	mov 1,r4
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L217
	mov a2,r4
.L217:
	btst 1,r4
	beq .L218
	mov d2,d0
	jmp .L212
.L218:
	mov d3,d0
.L212:
	ret [d2,d3,a2,exreg1],40
	.size	fminf, .-fminf
	.global fminl
	.type	fminl, @function
fminl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	cmp 0,d0
	bne .L228
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L229
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L224
	cmp 0,a0
	bne .L230
	mov_mov a2, a0, a3, a1
	jmp .L222
.L224:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L227
	mov r4,r5
.L227:
	btst 1,r5
	beq .L225
	mov_mov d2, d0, d3, d1
.L226:
	mov_mov d0, a0, d1, a1
.L222:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L225:
	mov_mov a2, d0, a3, d1
	jmp .L226
.L228:
	mov_mov a2, a0, a3, a1
	jmp .L222
.L229:
	mov_mov d2, a0, d3, a1
	jmp .L222
.L230:
	mov_mov d2, a0, d3, a1
	jmp .L222
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	mov +s.0,d1
	cmp 0,d0
	beq .L233
	setlb
.L234:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L234
.L233:
	mov 0,d0
	movbu d0,(d1)
	mov +s.0,d0
	mov d0,a0
	retf [],0
	.size	l64a, .-l64a
	.global srand
	.type	srand, @function
srand:
	add -1,d0
	mov d0,(+seed)
	mov 0,d0
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
	beq .L246
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L242
	mov d0,(4,d1)
.L242:
	retf [],0
.L246:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L248
	mov (4,d0),a0
	mov a0,(4,d1)
.L248:
	mov (4,d0),d1
	cmp 0,d1
	beq .L247
	mov (d0),d0
	mov d0,(d1)
.L247:
	retf [],0
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov_mov d0, a3, d1, r6
	mov (64,sp),r4
	mov (68,sp),r5
	mov (60,sp),a0
	mov (a0),d3
	cmp 0,d3
	beq .L252
	mov_mov d1, d2, 0, r7
.L254:
	mov_mov d2, a2, d2, d1
	mov_mov a3, d0, r5, a0
	calls (a0)
	cmp 0,d0
	beq .L251
	add_add 1, r7, r4, d2
	cmp r7,d3
	bne .L254
.L252:
	mov 1,d0
	add d3,d0
	mov (60,sp),a0
	mov d0,(a0)
	mul r4,d3,d1,d0
	mov r4,(12,sp)
	mov_add a3, d1, r6, d0
	call +memcpy,[],0
	mov a0,a2
.L251:
	mov_mov a2, a0, a2, d0
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
	beq .L258
	mov_mov d1, d2, 0, d3
.L260:
	mov_mov d2, r6, d2, d1
	mov_mov a2, d0, r4, a0
	calls (a0)
	cmp 0,d0
	beq .L257
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L260
.L258:
	mov 0,r6
.L257:
	mov_mov r6, a0, r6, d0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L266
.L264:
	retf [],0
.L266:
	mov 0,d0
	sub d1,d0
	retf [],0
	.size	abs, .-abs
	.global atoi
	.type	atoi, @function
atoi:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,d2
	jmp .L268
.L269:
	inc d2
.L268:
	movbu (d2),d3
	mov d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L269
	cmp 43,d3
	beq .L275
	cmp 45,d3
	bne .L276
	mov 1,a1
.L270:
	inc d2
	jmp .L271
.L275:
	mov d0,a1
	jmp .L270
.L272:
	mul 10,d0
	inc d2
	extbu d1
	add -48,d1
	sub d1,d0
.L271:
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	bls .L272
	cmp 0,a1
	bne .L267
	not d0
	inc d0
.L267:
	ret [d2,d3],20
.L276:
	mov d0,a1
	jmp .L271
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,d2
	jmp .L281
.L282:
	inc d2
.L281:
	movbu (d2),d3
	mov d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L282
	cmp 43,d3
	beq .L288
	cmp 45,d3
	bne .L289
	mov 1,a1
.L283:
	inc d2
	jmp .L284
.L288:
	mov d0,a1
	jmp .L283
.L285:
	mul 10,d0
	inc d2
	extbu d1
	add -48,d1
	sub d1,d0
.L284:
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	bls .L285
	cmp 0,a1
	bne .L280
	not d0
	inc d0
.L280:
	ret [d2,d3],20
.L289:
	mov d0,a1
	jmp .L284
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,r4
	jmp .L294
.L295:
	inc r4
.L294:
	movbu (r4),r5
	mov r5,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L295
	cmp 43,r5
	beq .L296
	cmp 45,r5
	bne .L297
	mov 1,d0
.L296:
	inc r4
.L297:
	movbu (r4),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	mov 0,a0
	mov a0,a1
	bhi .L299
	mov 10,r1
	setlb
.L298:
	mov 10,r0
	mul a1,r0
	mulu a0,r1,d3,d2
	add_add r0, d3, 1, r4
	extbu d1
	add -48,d1
	mov_mov d1, a2, d1, a3
	asr 31,a3
	sub d1,d2,a0
	subc a3,d3,a1
	movbu (r4),d1
	extbu d1,r0
	add -48,r0
	cmp 9,r0
	Lls # loop back to: .L298
.L299:
	cmp 0,d0
	bne .L293
	mov_mov d0, d2, d0, d3
	sub a0,d0,a0
	subc a1,d0,a1
.L293:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],44
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
	jmp .L311
.L309:
	mov r6,d2
.L311:
	cmp 0,d2
	beq .L305
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	add a2,d3
	mov_mov d3, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L309
	ble .L304
	add a3,d3,a2
	add -1,d2
	sub r6,d2
	jmp .L311
.L305:
	mov 0,d3
.L304:
	mov_mov d3, a0, d3, d0
	ret [d2,d3,a2,a3,exreg1],44
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
	bne .L317
.L314:
	mov 0,d2
.L313:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3,exreg1],48
.L316:
	asr 1,r6
	cmp 0,r6
	beq .L314
.L317:
	mov r6,d2
	asr 1,d2
	mul a2,d2
	add d3,d2
	mov r4,(12,sp)
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L313
	ble .L316
	add a2,d2,d3
	add -1,r6
	jmp .L316
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
	blt .L326
.L323:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L326:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L323
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
	blt .L332
.L330:
	retf [],0
.L332:
	mov 0,d0
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
	blt .L339
.L336:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L339:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L336
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
	jmp .L349
.L345:
	add 4,d0
.L349:
	mov (d0),a0
	cmp 0,a0
	beq .L344
	cmp a0,d1
	bne .L345
.L344:
	cmp 0,a0
	beq .L351
.L342:
	mov d0,a0
	retf [],0
.L351:
	mov a0,d0
	jmp .L342
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),r0
	mov_add 4, a0, -4, d1
	cmp r0,a1
	bne .L354
.L353:
	cmp 0,a1
	beq .L354
	cmp 0,r0
	beq .L354
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L353
.L354:
	cmp r0,a1
	blt .L359
	mov 1,d0
	bgt .L352
	mov 0,d0
	retf [],0
.L359:
	mov -1,d0
.L352:
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov 0,a1
	setlb
.L363:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L363
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L367
	setlb
.L368:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L368
.L367:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L374
.L373:
	mov (d0),a1
	mov (d1),r0
	cmp r0,a1
	bne .L374
	cmp 0,a1
	beq .L374
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L373
.L374:
	cmp 0,a0
	beq .L378
	mov (d0),a1
	mov (d1),d0
	cmp d0,a1
	blt .L379
	mov_cmp 1, a0, d0, a1
	bgt .L378
	mov 0,a0
.L378:
	mov a0,d0
	retf [],0
.L379:
	mov -1,d0
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L384
.L383:
	mov (d0),a1
	cmp d1,a1
	beq .L384
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L383
.L384:
	cmp 0,a0
	beq .L390
.L382:
	mov d0,a0
	retf [],0
.L390:
	mov a0,d0
	jmp .L382
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L393
.L392:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L393
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L392
.L393:
	cmp 0,a0
	beq .L397
	mov (d0),a1
	mov (d1),d0
	cmp d0,a1
	blt .L398
	mov_cmp 1, a0, d0, a1
	bgt .L397
	mov 0,a0
.L397:
	mov a0,d0
	retf [],0
.L398:
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
	beq .L402
	asl2 d0
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L402:
	mov_mov a1, a0, a1, d0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a0
	cmp d1,d0
	beq .L405
	mov -1,a1
	add a0,a1
	sub d1,d0,r1
	mov a0,r0
	asl2 r0
	cmp r0,r1
	bcs .L406
	mov 0,r0
	cmp r0,a0
	beq .L405
	setlb
.L407:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	add_add -1, a1, 4, r0
	cmp -1,a1
	Lne # loop back to: .L407
	jmp .L405
.L406:
	cmp 0,a0
	beq .L405
	asl2 a1
	setlb
.L408:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L408
.L405:
	mov d0,a0
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a0
	mov -1,a1
	add_cmp a0, a1, 0, a0
	beq .L415
	mov d0,r0
	setlb
.L416:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L416
.L415:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L420
	cmp 0,a0
	beq .L419
	add_add -1, d0, -1, d1
	setlb
.L422:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L422
	retf [],0
.L420:
	beq .L419
	cmp 0,a0
	beq .L419
	mov 0,a1
	setlb
.L423:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	Lne # loop back to: .L423
.L419:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L428
	mov 0,r0
	asl d0,a0,r1
.L429:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L430
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L431:
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L428:
	mov a0,d1
	mov_lsr d0, r0, 1, d1
	not r0
	lsr r0,d1
	asl d0,a1,r1
	or d1,r1
	asl d0,a0,r0
	jmp .L429
.L430:
	mov a1,r3
	mov_asl r2, d0, 1, r3
	not d0
	asl d0,r3
	lsr r2,a0,d0
	or r3,d0
	lsr r2,a1,d1
	jmp .L431
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L434
	mov 0,r0
	mov r0,r1
	lsr d0,a1,r0
.L435:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L436
	mov 0,d0
	asl r2,a0,d1
.L437:
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L434:
	mov a1,d1
	mov_asl d0, r0, 1, d1
	not r0
	asl r0,d1
	lsr d0,a0,r0
	or d1,r0
	lsr d0,a1,r1
	jmp .L435
.L436:
	mov a0,r3
	mov_lsr r2, d0, 1, r3
	not d0
	lsr d0,r3
	asl r2,a1,d1
	or r3,d1
	asl r2,a0,d0
	jmp .L437
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
	mov_mov 0, d0, a0, d1
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
	mov 0,d1
.L464:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L467
	cmp 32,d1
	bne .L464
	mov a0,d0
	retf [],0
.L467:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov_cmp d0, d1, 0, d0
	beq .L468
	and 1,d0
	bne .L468
	mov 1,d0
	setlb
.L470:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L470
	retf [],0
.L468:
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
	blt .L477
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L479
.L476:
	mov d2,d0
.L474:
	ret [d2,d3],20
.L479:
	mov 0,d2
	jmp .L476
.L477:
	mov 1,d0
	jmp .L474
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
	blt .L483
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L485
.L482:
	mov a2,d0
.L480:
	ret [d2,d3,a2,a3],36
.L485:
	mov 0,a2
	jmp .L482
.L483:
	mov 1,d0
	jmp .L480
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
	blt .L489
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L491
.L488:
	mov a2,d0
.L486:
	ret [d2,d3,a2,a3],36
.L491:
	mov 0,a2
	jmp .L488
.L489:
	mov 1,d0
	jmp .L486
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
	bne .L495
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L495
	cmp 0,d2
	blt .L503
	mov 1073741824,d3
	jmp .L499
.L503:
	mov 1056964608,d3
	jmp .L499
.L498:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L495
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L499:
	btst 1,d2
	beq .L498
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L498
.L495:
	mov a2,d0
	ret [d2,d3,a2],24
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
	bne .L505
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L505
	mov_cmp r5, d2, 0, r4
	blt .L513
	mov 1073741824,d3
	jmp .L509
.L513:
	mov 1071644672,d3
	jmp .L509
.L508:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L505
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L509:
	btst 1,r4
	beq .L508
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L508
.L505:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
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
	bne .L515
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__adddf3,[],0
	mov a2,(12,sp)
	mov a3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L515
	mov_cmp r5, d2, 0, r4
	blt .L523
	mov 1073741824,d3
	jmp .L519
.L523:
	mov 1071644672,d3
	jmp .L519
.L518:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L515
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L519:
	btst 1,r4
	beq .L518
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L518
.L515:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L525
	add_mov d1, r2, d0, a1
	setlb
.L526:
	add_add 1, d1, 1, a1
	movbu (-1,a1),r0
	movbu (-1,d1),r1
	xor r1,r0
	movbu r0,(-1,a1)
	cmp d1,r2
	Lne # loop back to: .L526
.L525:
	mov d0,a0
	retf [],0
	.size	memxor, .-memxor
	.global strncat
	.type	strncat, @function
strncat:
	movm [d2,d3,a2],(sp)
	add -12,sp
	mov_mov d0, a2, d1, d3
	mov (36,sp),d2
	call +strlen,[],0
	add_cmp a2, d0, 0, d2
	beq .L531
.L530:
	movbu (d3),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L531
	add_add 1, d3, 1, d0
	add -1,d2
	bne .L530
.L531:
	cmp 0,d2
	bne .L533
	movbu d2,(d0)
.L533:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
	cmp d0,d1
	beq .L544
.L537:
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L539
.L536:
	retf [],0
.L544:
	mov d1,d0
	retf [],0
.L539:
	inc d0
	cmp d0,d1
	bne .L537
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
.L553:
	movbu (d0),r1
	extbu r1,a0
	cmp 0,a0
	beq .L550
	mov d1,a1
	extbu r1
.L549:
	movbu (a1),r0
	cmp 0,r0
	beq .L555
	add_cmp 1, a1, r1, r0
	bne .L549
.L547:
	mov d0,a0
	retf [],0
.L555:
	inc d0
	jmp .L553
.L550:
	mov a0,d0
	jmp .L547
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a1, 0, d0
	jmp .L558
.L557:
	inc a1
	extbu a0
	cmp 0,a0
	beq .L562
.L558:
	movbu (a1),a0
	extbu a0,r0
	cmp d1,r0
	bne .L557
	mov a1,d0
	jmp .L557
.L562:
	mov d0,a0
	retf [],0
	.size	strrchr, .-strrchr
	.global strstr
	.type	strstr, @function
strstr:
	movm [d2,d3,a2,a3],(sp)
	add -16,sp
	mov_mov d0, d2, d1, d3
	mov d1,d0
	call +strlen,[],0
	mov_cmp d0, a2, 0, d0
	beq .L563
	movbu (d3),a3
.L565:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L563
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L563
	inc d2
	jmp .L565
.L563:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3],32
	.size	strstr, .-strstr
	.global copysign
	.type	copysign, @function
copysign:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),a2
	mov (68,sp),a3
	mov 0,r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L579
.L570:
	mov 0,r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L573
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L572
.L573:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L579:
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L570
.L572:
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
	jmp .L573
	.size	copysign, .-copysign
	.global memmem
	.type	memmem, @function
memmem:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -16,sp
	mov d0,d2
	mov (60,sp),r5
	mov (64,sp),r4
	cmp 0,r4
	beq .L584
	cmp r4,d1
	bcs .L586
	sub r4,d1,d3
	add d0,d3
	cmp d3,d0
	bhi .L586
	movbu (r5),a3
	add_add 1, r5, -1, r4
	jmp .L583
.L582:
	cmp d3,d2
	bhi .L586
.L583:
	movbu (d2),d0
	mov_add d2, a2, 1, d2
	extbu d0
	cmp a3,d0
	bne .L582
	mov r4,(12,sp)
	mov_mov r5, d1, d2, d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L582
	jmp .L580
.L584:
	mov d0,a2
	jmp .L580
.L586:
	mov 0,a2
.L580:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2,a3,exreg1],48
	.size	memmem, .-memmem
	.global mempcpy
	.type	mempcpy, @function
mempcpy:
	movm [d2],(sp)
	add -16,sp
	mov (32,sp),d2
	mov d2,(12,sp)
	call +memcpy,[],0
	add d2,a0,d0
	mov d0,a0
	ret [d2],20
	.size	mempcpy, .-mempcpy
	.global frexp
	.type	frexp, @function
frexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov 0,a3
	mov a3,(12,sp)
	mov a3,(16,sp)
	call +__ltdf2,[],0
	cmp a3,d0
	blt .L616
.L592:
	mov 0,r6
	mov r6,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp r6,d0
	blt .L612
	mov r6,a2
	mov 1071644672,r5
	mov 1072693248,r4
.L596:
	inc r6
	mov a2,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	mov a2,(12,sp)
	mov r4,(16,sp)
	call +__gedf2,[],0
	cmp 0,d0
	bge .L596
.L597:
	mov (64,sp),d0
	mov r6,(d0)
	cmp 0,a3
	beq .L601
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L601:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L616:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, a3
	jmp .L592
.L612:
	mov r6,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L597
	mov r6,(12,sp)
	mov r6,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L597
	mov 0,r4
	mov 1071644672,a2
.L600:
	add -1,r6
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov_mov d0, d2, d1, d3
	mov r4,(12,sp)
	mov a2,(16,sp)
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L600
	jmp .L597
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
	beq .L621
	mov 0,r4
	mov r4,r5
	setlb
.L620:
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
	Lne # loop back to: .L620
.L617:
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L621:
	mov_mov d2, r4, d2, r5
	jmp .L617
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L626
	mov 32,d0
	mov 1,a0
.L625:
	cmp 0,d1
	blt .L626
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L626
	add -1,d0
	bne .L625
	mov d0,a0
.L626:
	mov 0,d0
	cmp d0,a0
	bne .L627
	mov a0,d0
.L628:
	cmp 0,r0
	bne .L639
.L624:
	retf [],0
.L630:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L628
.L627:
	cmp d1,a1
	bcs .L630
	or_sub a0, d0, d1, a1
	jmp .L630
.L639:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L642
	asl 8,d0
	mov 0,d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L642:
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
	beq .L653
.L650:
	mov_cmp 0, d0, 0, a1
	beq .L647
	bsch a1, d0
	xor 31,d0
.L648:
	add -1,d0
	retf [],0
.L653:
	cmp d0,d1
	bne .L650
	mov 63,d0
	retf [],0
.L647:
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L648
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_cmp d0, a1, 0, d0
	beq .L657
	mov 0,d0
	setlb
.L656:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L656
	retf [],0
.L657:
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
	bcc .L661
.L664:
	cmp 0,d2
	beq .L663
	mov_asl 0, a0, 3, d2
	setlb
.L667:
	mov (a0,d1),r0
	add a0,d1,r2
	mov (4,r2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp a0,d2
	Lne # loop back to: .L667
.L663:
	cmp a1,r3
	bls .L660
	setlb
.L668:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L668
.L660:
	retf [d2],4
.L661:
	add r3,d1,a0
	cmp a0,d0
	bhi .L664
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L660
	setlb
.L665:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L665
	jmp .L660
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcc .L675
.L678:
	cmp 0,r0
	beq .L677
	mov_asl 0, a0, 1, r0
	setlb
.L681:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L681
.L677:
	btst 1,r1
	beq .L674
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L675:
	add r1,d1,a0
	cmp a0,d0
	bhi .L678
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L686
	setlb
.L679:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L679
.L674:
	retf [],0
.L686:
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
	bcc .L688
.L691:
	cmp 0,r2
	beq .L690
	mov_asl 0, a1, 2, r2
	setlb
.L694:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L694
.L690:
	cmp a0,r1
	bls .L687
	setlb
.L695:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L695
	retf [],0
.L688:
	add r1,d1,a1
	cmp a1,d0
	bhi .L691
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L701
	setlb
.L692:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L692
.L687:
	retf [],0
.L701:
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
	mov_mov d0, a0, 0, d2
	mov d2,mdr
	divu d1,a0
	mov mdr,d0
	ret [d2],4
	.size	__umodi, .-__umodi
	.global __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	mov 0,d1
	exthu d0
	mov 15,a1
.L716:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L714
	inc d1
	cmp 16,d1
	bne .L716
.L714:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L721:
	asr d1,d0,a0
	btst 1,a0
	bne .L719
	inc d1
	cmp 16,d1
	bne .L721
.L719:
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
	bge .L731
	mov d2,d0
	call +__fixsfsi,[],0
.L724:
	ret [d2],16
.L731:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L724
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	setlb
.L733:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L733
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
.L737:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L737
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_cmp d0, a1, 0, d0
	beq .L743
	mov 0,d0
	setlb
.L742:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L742
	retf [],0
.L743:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov_cmp d0, a1, 0, d0
	beq .L749
	cmp 0,d1
	beq .L750
	mov 0,d0
	setlb
.L748:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L748
	retf [],0
.L749:
	retf [],0
.L750:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L755
	mov 32,d0
	mov 1,a0
.L754:
	cmp 0,d1
	blt .L755
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L755
	add -1,d0
	bne .L754
	mov d0,a0
.L755:
	mov 0,d0
	cmp d0,a0
	bne .L756
	mov a0,d0
.L757:
	cmp 0,r0
	bne .L768
.L753:
	retf [],0
.L759:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L757
.L756:
	cmp d1,a1
	bcs .L759
	or_sub a0, d0, d1, a1
	jmp .L759
.L768:
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
	blt .L772
	mov_mov 1, d2, a2, d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L774
.L771:
	mov d2,d0
.L769:
	ret [d2,d3,a2],24
.L774:
	mov 0,d2
	jmp .L771
.L772:
	mov -1,d0
	jmp .L769
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
	blt .L778
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L780
.L777:
	mov r4,d0
.L775:
	ret [d2,d3,a2,a3,exreg1],52
.L780:
	mov 0,r4
	jmp .L777
.L778:
	mov -1,d0
	jmp .L775
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
	blt .L794
	mov 0,r1
.L786:
	cmp 0,d1
	beq .L791
	mov 32,r0
	mov 0,d0
.L788:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L787
	mov -1,a0
	add r0,a0
	mov a0,r0
	extbu a0
	cmp 0,a0
	bne .L788
.L787:
	cmp 0,r1
	beq .L785
	not d0
	inc d0
.L785:
	retf [],0
.L794:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L786
.L791:
	mov d1,d0
	jmp .L787
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L801
	mov 0,d2
.L796:
	cmp 0,d1
	blt .L802
.L797:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L795
	not d0
	inc d0
.L795:
	ret [d2],20
.L801:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L796
.L802:
	not d1
	inc d1
	xor 1,d2
	jmp .L797
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L809
	mov 0,d2
.L804:
	mov_cmp a0, d1, 0, a0
	blt .L810
.L805:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L803
	not d0
	inc d0
.L803:
	ret [d2],20
.L809:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L804
.L810:
	mov 0,d1
	sub a0,d1
	jmp .L805
	.size	__modsi3, .-__modsi3
	.global __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov (12,sp),r2
	mov d0,r0
	mov d1,a0
	exthu d1
	exthu d0
	mov 1,a1
	cmp d0,d1
	bcc .L813
	mov 16,d1
	mov 1,a1
	exthu r0,r1
.L812:
	exth a0,d0
	cmp 0,d0
	blt .L813
	mov a0,d0
	add d0,d0
	mov d0,a0
	add a1,a1
	exthu d0
	cmp d0,r1
	bls .L813
	add -1,d1
	bne .L812
	mov d1,a1
.L813:
	exthu a1,d1
	mov 0,d0
	cmp 0,d1
	bne .L814
	mov a1,d0
.L815:
	cmp 0,r2
	bne .L826
.L811:
	retf [],0
.L817:
	exthu a1,d1
	lsr 1,d1
	mov d1,a1
	asl 16,a0
	lsr 17,a0
	cmp 0,d1
	beq .L815
.L814:
	exthu r0,d1
	exthu a0,r1
	cmp r1,d1
	bcs .L817
	or_sub a1, d0, a0, r0
	jmp .L817
.L826:
	mov r0,d0
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L829
	mov 32,d0
	mov 1,a0
.L828:
	cmp 0,d1
	blt .L829
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L829
	add -1,d0
	bne .L828
	mov d0,a0
.L829:
	mov 0,d0
	cmp d0,a0
	bne .L830
	mov a0,d0
.L831:
	cmp 0,r0
	bne .L842
.L827:
	retf [],0
.L833:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L831
.L830:
	cmp d1,a1
	bcs .L833
	or_sub a0, d0, d1, a1
	jmp .L833
.L842:
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
	beq .L844
	mov_asl 0, r0, d0, a0
.L845:
	mov a0,r1
.L846:
	mov_mov r0, d0, r1, d1
	retf [],0
.L844:
	cmp 0,d0
	beq .L847
	asl d0,a0,r0
	mov 0,d1
	sub d0,d1
	lsr d1,a0,d1
	asl d0,a1,d0
	or d0,d1,a0
	jmp .L845
.L847:
	mov_mov a0, r0, a1, r1
	jmp .L846
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d1
	mov d1,d0
	and 32,d0
	beq .L850
	mov a1,d0
	asr 31,d0
	asr d1,a1,d1
.L851:
	mov_mov d1, r0, d0, r1
.L852:
	mov_mov r0, d0, r1, d1
	retf [],0
.L850:
	cmp 0,d1
	beq .L853
	asr d1,a1,d0
	mov 0,r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	jmp .L851
.L853:
	mov_mov a0, r0, a1, r1
	jmp .L852
	.size	__ashrdi3, .-__ashrdi3
	.global __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movm [d2,d3,a2,a3,exreg1],(sp)
	mov_mov d0, a0, d1, a1
	mov 0,d0
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
	bls .L860
	mov 0,a0
.L860:
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L861
	mov 0,d0
.L861:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L862
	mov 0,d0
.L862:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	mov 1,a0
	btst 12,d1
	beq .L863
	mov 0,a0
.L863:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L865
	sub d1,r1,d0
.L865:
	add a1,a0
	add a0,d0
	retf [],0
	.size	__clzsi2, .-__clzsi2
	.global __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	blt .L871
	bgt .L872
	cmp a0,r0
	bcs .L871
	bhi .L872
	mov 1,d0
	retf [],0
.L871:
	mov 0,d0
	retf [],0
.L872:
	mov 2,d0
	retf [],0
	.size	__cmpdi2, .-__cmpdi2
	.global __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	add -20,sp
	mov_mov d0, a0, d1, a1
	mov (32,sp),d0
	mov (36,sp),d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a0, d0, a1, d1
	call +__cmpdi2,[],0
	add -1,d0
	ret [],20
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.global __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exthu d0,d1
	mov_cmp 1, a0, 0, d1
	beq .L877
	mov 0,a0
.L877:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	mov_cmp 1, d0, 0, a1
	beq .L878
	mov 0,d0
.L878:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L879
	mov 0,d0
.L879:
	asl2 d0
	lsr d0,d1
	add a0,d0,a1
	mov 1,d0
	btst 3,d1
	beq .L880
	mov 0,d0
.L880:
	add d0,d0
	lsr d0,d1
	and 3,d1
	mov d1,a0
	not a0
	and 1,a0
	mov_lsr 2, r0, 1, d1
	sub_mov d1, r0, 0, d1
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
	beq .L883
	lsr d1,a1,d1
	mov 0,d0
.L884:
	mov_mov d1, r0, d0, r1
.L885:
	mov_mov r0, d0, r1, d1
	retf [],0
.L883:
	cmp 0,d1
	beq .L886
	lsr d1,a1,d0
	mov 0,r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	jmp .L884
.L886:
	mov a0,r0
	jmp .L885
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
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov (40,sp),a2
	mov (44,sp),a3
	mov a2,d1
	call +__muldsi3,[],0
	mov_mov d0, a0, d1, a1
	mul a2,d3,d0,d1
	mul a3,d2
	add d2,d1
	add_mov a1, d1, a0, d0
	ret [d2,d3,a2,a3],28
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.global __negdi2
	.type	__negdi2, @function
__negdi2:
	movm [d2],(sp)
	mov_mov d0, r0, 0, d0
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
	jmp .L905
.L903:
	mov r5,d0
	lsr 31,d0
	add r5,d0
	asr 1,d0
	mov_cmp d0, r5, 0, d0
	beq .L904
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
.L905:
	btst 1,r5
	beq .L903
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L903
.L904:
	cmp 0,r4
	blt .L908
.L902:
	mov_mov a2, d0, a3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L908:
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, a2, d1, a3
	jmp .L902
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a3
	mov d1,d2
	mov 1065353216,a2
	jmp .L912
.L910:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L911
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L912:
	btst 1,d2
	beq .L910
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L910
.L911:
	cmp 0,a3
	blt .L915
.L909:
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L915:
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,a2
	jmp .L909
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	bcs .L920
	bhi .L921
	cmp a0,r0
	bcs .L920
	bhi .L921
	mov 1,d0
	retf [],0
.L920:
	mov 0,d0
	retf [],0
.L921:
	mov 2,d0
	retf [],0
	.size	__ucmpdi2, .-__ucmpdi2
	.global __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	add -20,sp
	mov_mov d0, a0, d1, a1
	mov (32,sp),d0
	mov (36,sp),d1
	mov d0,(12,sp)
	mov d1,(16,sp)
	mov_mov a0, d0, a1, d1
	call +__ucmpdi2,[],0
	add -1,d0
	ret [],20
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
