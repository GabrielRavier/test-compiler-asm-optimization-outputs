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
	beq .L10
.L9:
	movbu (d1),a1
	movbu a1,(d0)
	extbu a1
	cmp r0,a1
	beq .L10
	add_add -1, a0, 1, d1
	add_cmp 1, d0, 0, a0
	bne .L9
.L10:
	cmp 0,a0
	beq .L13
	inc d0
.L8:
	mov d0,a0
	retf [],0
.L13:
	mov a0,d0
	jmp .L8
	.size	memccpy, .-memccpy
	.global memchr
	.type	memchr, @function
memchr:
	mov (12,sp),a0
	extbu d1
	cmp 0,a0
	beq .L17
.L16:
	movbu (d0),a1
	cmp d1,a1
	beq .L17
	inc d0
	add -1,a0
	bne .L16
.L17:
	cmp 0,a0
	beq .L22
.L15:
	mov d0,a0
	retf [],0
.L22:
	mov a0,d0
	jmp .L15
	.size	memchr, .-memchr
	.global memcmp
	.type	memcmp, @function
memcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L25
.L24:
	movbu (d0),r0
	movbu (d1),a1
	cmp a1,r0
	bne .L25
	add_add -1, a0, 1, d0
	add_cmp 1, d1, 0, a0
	bne .L24
.L25:
	cmp 0,a0
	beq .L28
	movbu (d0),a0
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L28:
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
	beq .L31
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L31:
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
.L33:
	cmp r0,a0
	beq .L36
	mov_add a0, d0, -1, a0
	movbu (d0),a1
	cmp d1,a1
	bne .L33
	jmp .L32
.L36:
	mov 0,d0
.L32:
	mov d0,a0
	retf [],0
	.size	memrchr, .-memrchr
	.global memset
	.type	memset, @function
memset:
	mov (12,sp),r0
	cmp 0,r0
	beq .L38
	add_mov d0, r0, d0, a1
	setlb
.L39:
	movbu d1,(a1)
	inc a1
	cmp a1,r0
	Lne # loop back to: .L39
.L38:
	mov d0,a0
	retf [],0
	.size	memset, .-memset
	.global stpcpy
	.type	stpcpy, @function
stpcpy:
.L45:
	movbu (d1),a0
	movbu a0,(d0)
	extbu a0
	cmp 0,a0
	beq .L42
	add_add 1, d1, 1, d0
	jmp .L45
.L42:
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
	beq .L46
.L47:
	extbu a1
	cmp d1,a1
	beq .L46
	inc d0
	movbu (d0),a1
	extbu a1,a0
	cmp 0,a0
	bne .L47
.L46:
	mov d0,a0
	retf [],0
	.size	strchrnul, .-strchrnul
	.global strchr
	.type	strchr, @function
strchr:
.L54:
	movbu (d0),a0
	cmp d1,a0
	beq .L53
	add_cmp 1, d0, 0, a0
	bne .L54
	mov a0,d0
.L53:
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
	bne .L58
.L57:
	extbu a1,r1
	cmp 0,r1
	beq .L58
	movbu (a0,d0),a1
	inc a0
	movbu (a0,d1),r0
	extbu a1,r2
	extbu r0,r1
	cmp r1,r2
	beq .L57
.L58:
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
	beq .L63
	setlb
.L64:
	inc d1
	movbu (d1),a0
	cmp 0,a0
	Lne # loop back to: .L64
.L63:
	sub d0,d1,d0
	retf [],0
	.size	strlen, .-strlen
	.global strncmp
	.type	strncmp, @function
strncmp:
	mov (12,sp),r0
	cmp 0,r0
	beq .L72
	movbu (d0),a0
	extbu a0,a1
	cmp 0,a1
	beq .L69
	add -1,r0
	add d0,r0
.L70:
	movbu (d1),a1
	cmp 0,a1
	beq .L69
	cmp r0,d0
	beq .L69
	extbu a0,r1
	cmp r1,a1
	bne .L69
	add_add 1, d0, 1, d1
	movbu (d0),a0
	extbu a0,a1
	cmp 0,a1
	bne .L70
.L69:
	extbu a0
	movbu (d1),d0
	sub d0,a0,d0
	retf [],0
.L72:
	mov r0,d0
	retf [],0
	.size	strncmp, .-strncmp
	.global swab
	.type	swab, @function
swab:
	mov (12,sp),a1
	cmp 1,a1
	ble .L73
	and -2,a1
	add d0,a1
	setlb
.L75:
	movbu (1,d0),a0
	movbu a0,(d1)
	movbu (d0),a0
	movbu a0,(1,d1)
	add_add 2, d1, 2, d0
	cmp a1,d0
	Lne # loop back to: .L75
.L73:
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
	bls .L78
	mov 0,d0
.L78:
	retf [],0
	.size	isalpha, .-isalpha
	.global isascii
	.type	isascii, @function
isascii:
	mov_mov d0, d1, 1, d0
	cmp 127,d1
	bls .L80
	mov 0,d0
.L80:
	retf [],0
	.size	isascii, .-isascii
	.global isblank
	.type	isblank, @function
isblank:
	cmp 32,d0
	beq .L84
	mov 1,d1
	cmp 9,d0
	beq .L83
	mov 0,d1
.L83:
	mov d1,d0
	retf [],0
.L84:
	mov 1,d0
	retf [],0
	.size	isblank, .-isblank
	.global iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp 31,d0
	bls .L88
	mov 1,d1
	cmp 127,d0
	beq .L87
	mov 0,d1
.L87:
	mov d1,d0
	retf [],0
.L88:
	mov 1,d0
	retf [],0
	.size	iscntrl, .-iscntrl
	.global isdigit
	.type	isdigit, @function
isdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L90
	mov 0,d0
.L90:
	retf [],0
	.size	isdigit, .-isdigit
	.global isgraph
	.type	isgraph, @function
isgraph:
	mov -33,d1
	add_mov d0, d1, 1, d0
	cmp 93,d1
	bls .L92
	mov 0,d0
.L92:
	retf [],0
	.size	isgraph, .-isgraph
	.global islower
	.type	islower, @function
islower:
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L94
	mov 0,d0
.L94:
	retf [],0
	.size	islower, .-islower
	.global isprint
	.type	isprint, @function
isprint:
	mov -32,d1
	add_mov d0, d1, 1, d0
	cmp 94,d1
	bls .L96
	mov 0,d0
.L96:
	retf [],0
	.size	isprint, .-isprint
	.global isspace
	.type	isspace, @function
isspace:
	cmp 32,d0
	beq .L100
	add -9,d0
	mov_cmp 1, d1, 4, d0
	bls .L99
	mov 0,d1
.L99:
	mov d1,d0
	retf [],0
.L100:
	mov 1,d0
	retf [],0
	.size	isspace, .-isspace
	.global isupper
	.type	isupper, @function
isupper:
	mov -65,d1
	add_mov d0, d1, 1, d0
	cmp 25,d1
	bls .L102
	mov 0,d0
.L102:
	retf [],0
	.size	isupper, .-isupper
	.global iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmp 31,d0
	bls .L108
	mov -127,d1
	add d0,d1
	cmp 32,d1
	bls .L108
	mov -8232,d1
	add d0,d1
	cmp 1,d1
	bls .L108
	add -65529,d0
	mov_cmp 1, d1, 2, d0
	bls .L105
	mov 0,d1
.L105:
	mov d1,d0
	retf [],0
.L108:
	mov 1,d0
	retf [],0
	.size	iswcntrl, .-iswcntrl
	.global iswdigit
	.type	iswdigit, @function
iswdigit:
	mov -48,d1
	add_mov d0, d1, 1, d0
	cmp 9,d1
	bls .L110
	mov 0,d0
.L110:
	retf [],0
	.size	iswdigit, .-iswdigit
	.global iswprint
	.type	iswprint, @function
iswprint:
	cmp 254,d0
	bls .L119
	cmp 8231,d0
	bls .L117
	mov -8234,d1
	add d0,d1
	cmp 47061,d1
	bls .L117
	mov -57344,d1
	add d0,d1
	cmp 8184,d1
	bls .L117
	mov -65532,d1
	add d0,d1
	cmp 1048579,d1
	bhi .L118
	and 65534,d0
	xor 65534,d0
	not d0
	inc d0
	lsr 31,d0
	retf [],0
.L119:
	inc d0
	mov d0,d1
	and 127,d1
	mov 1,d0
	cmp 32,d1
	bhi .L111
.L118:
	mov 0,d0
.L111:
	retf [],0
.L117:
	mov 1,d0
	retf [],0
	.size	iswprint, .-iswprint
	.global iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	mov -48,d1
	add d0,d1
	cmp 9,d1
	bls .L123
	or 32,d0
	mov -97,d1
	add_mov d0, d1, 1, d0
	cmp 5,d1
	bls .L120
	mov 0,d0
	retf [],0
.L123:
	mov 1,d0
.L120:
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
	bne .L128
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L129
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L132
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__subdf3,[],0
	mov_mov d0, d2, d1, d3
	mov_mov d0, a0, d1, a1
.L125:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L128:
	mov_mov d2, a0, d3, a1
	jmp .L125
.L129:
	mov_mov a2, a0, a3, a1
	jmp .L125
.L132:
	mov_mov r4, a0, r4, a1
	jmp .L125
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
	bne .L136
	mov_mov a2, d1, a2, d0
	call +__unordsf2,[],0
	mov_cmp d0, d2, 0, d0
	bne .L137
	mov_mov a2, d1, d3, d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L140
	mov_mov a2, d1, d3, d0
	call +__subsf3,[],0
.L133:
	ret [d2,d3,a2],24
.L136:
	mov d3,d0
	jmp .L133
.L137:
	mov a2,d0
	jmp .L133
.L140:
	mov d2,d0
	jmp .L133
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
	bne .L147
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L148
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L143
	cmp 0,a0
	bne .L149
	mov_mov d2, a0, d3, a1
	jmp .L141
.L143:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L146
	mov r4,r5
.L146:
	extbu r5
	cmp 0,r5
	beq .L144
	mov_mov a2, d0, a3, d1
.L145:
	mov_mov d0, a0, d1, a1
.L141:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L144:
	mov_mov d2, d0, d3, d1
	jmp .L145
.L147:
	mov_mov a2, a0, a3, a1
	jmp .L141
.L148:
	mov_mov d2, a0, d3, a1
	jmp .L141
.L149:
	mov_mov a2, a0, a3, a1
	jmp .L141
	.size	fmax, .-fmax
	.global fmaxf
	.type	fmaxf, @function
fmaxf:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L156
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	mov_mov d0, a2, d2, d0
	cmp 0,a2
	bne .L150
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L152
	cmp 0,a0
	beq .L150
.L158:
	mov d1,d0
.L150:
	ret [d2,d3,a2,a3],28
.L152:
	mov 1,a3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L155
	mov a2,a3
.L155:
	extbu a3
	cmp 0,a3
	beq .L153
	mov d3,d1
	jmp .L158
.L153:
	mov d2,d1
	jmp .L158
.L156:
	mov d3,d0
	jmp .L150
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
	bne .L165
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L166
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L161
	cmp 0,a0
	bne .L167
	mov_mov d2, a0, d3, a1
	jmp .L159
.L161:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L164
	mov r4,r5
.L164:
	extbu r5
	cmp 0,r5
	beq .L162
	mov_mov a2, d0, a3, d1
.L163:
	mov_mov d0, a0, d1, a1
.L159:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L162:
	mov_mov d2, d0, d3, d1
	jmp .L163
.L165:
	mov_mov a2, a0, a3, a1
	jmp .L159
.L166:
	mov_mov d2, a0, d3, a1
	jmp .L159
.L167:
	mov_mov a2, a0, a3, a1
	jmp .L159
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
	bne .L174
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L175
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L170
	cmp 0,a0
	bne .L176
	mov_mov a2, a0, a3, a1
	jmp .L168
.L170:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L173
	mov r4,r5
.L173:
	extbu r5
	cmp 0,r5
	beq .L171
	mov_mov d2, d0, d3, d1
.L172:
	mov_mov d0, a0, d1, a1
.L168:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L171:
	mov_mov a2, d0, a3, d1
	jmp .L172
.L174:
	mov_mov a2, a0, a3, a1
	jmp .L168
.L175:
	mov_mov d2, a0, d3, a1
	jmp .L168
.L176:
	mov_mov d2, a0, d3, a1
	jmp .L168
	.size	fmin, .-fmin
	.global fminf
	.type	fminf, @function
fminf:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d2, d1, d3
	mov d0,d1
	call +__unordsf2,[],0
	cmp 0,d0
	bne .L183
	mov_mov d3, d1, d3, d0
	call +__unordsf2,[],0
	mov_mov d0, a2, d2, d0
	cmp 0,a2
	bne .L177
	mov d2,a0
	and -2147483648,a0
	mov_mov d3, d1, d3, a1
	and -2147483648,a1
	cmp a1,a0
	beq .L179
	cmp 0,a0
	bne .L177
	mov d3,d0
	jmp .L177
.L179:
	mov 1,a3
	call +__ltsf2,[],0
	cmp 0,d0
	blt .L182
	mov a2,a3
.L182:
	extbu a3
	cmp 0,a3
	beq .L183
	mov d2,d0
	jmp .L177
.L183:
	mov d3,d0
.L177:
	ret [d2,d3,a2,a3],28
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
	bne .L192
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__unorddf2,[],0
	mov_cmp d0, r4, 0, d0
	bne .L193
	mov_mov d3, d1, d3, a0
	and -2147483648,a0
	mov a3,a1
	and -2147483648,a1
	cmp a1,a0
	beq .L188
	cmp 0,a0
	bne .L194
	mov_mov a2, a0, a3, a1
	jmp .L186
.L188:
	mov 1,r5
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov d2,d0
	call +__ltdf2,[],0
	cmp 0,d0
	blt .L191
	mov r4,r5
.L191:
	extbu r5
	cmp 0,r5
	beq .L189
	mov_mov d2, d0, d3, d1
.L190:
	mov_mov d0, a0, d1, a1
.L186:
	mov_mov a0, d0, a1, d1
	ret [d2,d3,a2,a3,exreg1],52
.L189:
	mov_mov a2, d0, a3, d1
	jmp .L190
.L192:
	mov_mov a2, a0, a3, a1
	jmp .L186
.L193:
	mov_mov d2, a0, d3, a1
	jmp .L186
.L194:
	mov_mov d2, a0, d3, a1
	jmp .L186
	.size	fminl, .-fminl
	.global l64a
	.type	l64a, @function
l64a:
	mov +s.0,d1
	cmp 0,d0
	beq .L196
	setlb
.L197:
	mov d0,a0
	and 63,a0
	movbu (+digits,a0),a0
	movbu a0,(d1)
	add_lsr 1, d1, 6, d0
	cmp 0,d0
	Lne # loop back to: .L197
.L196:
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
	beq .L205
	mov (d1),a0
	mov a0,(d0)
	mov d1,(4,d0)
	mov d0,(d1)
	mov (d0),d1
	cmp 0,d1
	beq .L202
	mov d0,(4,d1)
.L202:
	retf [],0
.L205:
	mov d1,(4,d0)
	mov d1,(d0)
	retf [],0
	.size	insque, .-insque
	.global remque
	.type	remque, @function
remque:
	mov (d0),d1
	cmp 0,d1
	beq .L207
	mov (4,d0),a0
	mov a0,(4,d1)
.L207:
	mov (4,d0),d1
	cmp 0,d1
	beq .L206
	mov (d0),d0
	mov d0,(d1)
.L206:
	retf [],0
	.size	remque, .-remque
	.global lsearch
	.type	lsearch, @function
lsearch:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, a3, d1, r6
	mov (64,sp),r5
	mov (68,sp),r4
	mov (72,sp),a2
	mov (r5),d3
	cmp 0,d3
	beq .L210
	mov_mov d1, d2, 0, r7
.L212:
	mov d2,(16,sp)
	mov_mov d2, d1, a3, d0
	calls (a2)
	cmp 0,d0
	beq .L209
	add_add 1, r7, r4, d2
	cmp r7,d3
	bne .L212
.L210:
	mov 1,d0
	add d3,d0
	mov d0,(r5)
	mul r4,d3,d1,d0
	mov r4,(12,sp)
	mov_add a3, d1, r6, d0
	call +memcpy,[],0
	mov a0,(16,sp)
.L209:
	mov (16,sp),a0
	mov a0,d0
	ret [d2,d3,a2,a3,exreg1],52
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
	beq .L215
	mov_mov d1, d2, 0, d3
.L217:
	mov_mov d2, r6, d2, d1
	mov_mov a2, d0, r4, a0
	calls (a0)
	cmp 0,d0
	beq .L214
	add_add 1, d3, r5, d2
	cmp d3,a3
	bne .L217
.L215:
	mov 0,r6
.L214:
	mov_mov r6, a0, r6, d0
	ret [d2,d3,a2,a3,exreg1],44
	.size	lfind, .-lfind
	.global abs
	.type	abs, @function
abs:
	mov_cmp d0, d1, 0, d0
	blt .L221
.L220:
	retf [],0
.L221:
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
	jmp .L223
.L224:
	inc d2
.L223:
	movbu (d2),d3
	mov d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L224
	cmp 43,d3
	beq .L230
	cmp 45,d3
	bne .L231
	mov 1,a1
.L225:
	inc d2
	jmp .L226
.L230:
	mov d0,a1
	jmp .L225
.L227:
	mul 10,d0
	inc d2
	extbu d1
	add -48,d1
	sub d1,d0
.L226:
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	bls .L227
	cmp 0,a1
	bne .L222
	not d0
	inc d0
.L222:
	ret [d2,d3],20
.L231:
	mov d0,a1
	jmp .L226
	.size	atoi, .-atoi
	.global atol
	.type	atol, @function
atol:
	movm [d2,d3],(sp)
	add -12,sp
	mov d0,d2
	jmp .L235
.L236:
	inc d2
.L235:
	movbu (d2),d3
	mov d3,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L236
	cmp 43,d3
	beq .L242
	cmp 45,d3
	bne .L243
	mov 1,a1
.L237:
	inc d2
	jmp .L238
.L242:
	mov d0,a1
	jmp .L237
.L239:
	mul 10,d0
	inc d2
	extbu d1
	add -48,d1
	sub d1,d0
.L238:
	movbu (d2),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	bls .L239
	cmp 0,a1
	bne .L234
	not d0
	inc d0
.L234:
	ret [d2,d3],20
.L243:
	mov d0,a1
	jmp .L238
	.size	atol, .-atol
	.global atoll
	.type	atoll, @function
atoll:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -12,sp
	mov d0,r4
	jmp .L247
.L248:
	inc r4
.L247:
	movbu (r4),r5
	mov r5,d0
	call +isspace,[],0
	cmp 0,d0
	bne .L248
	cmp 43,r5
	beq .L249
	cmp 45,r5
	bne .L250
	mov 1,d0
.L249:
	inc r4
.L250:
	movbu (r4),d1
	extbu d1,a0
	add -48,a0
	cmp 9,a0
	mov 0,a0
	mov a0,a1
	bhi .L252
	mov 10,r1
	setlb
.L251:
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
	Lls # loop back to: .L251
.L252:
	cmp 0,d0
	bne .L246
	mov_mov d0, d2, d0, d3
	sub a0,d0,a0
	subc a1,d0,a1
.L246:
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
	jmp .L263
.L261:
	mov r6,d2
.L263:
	cmp 0,d2
	beq .L257
	mov d2,r6
	lsr 1,r6
	mul r6,a3,d0,d3
	add a2,d3
	mov_mov d3, d1, r4, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	blt .L261
	ble .L256
	add a3,d3,a2
	add -1,d2
	sub r6,d2
	jmp .L263
.L257:
	mov 0,d3
.L256:
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
	bne .L268
.L265:
	mov 0,d2
.L264:
	mov_mov d2, a0, d2, d0
	ret [d2,d3,a2,a3,exreg1],48
.L267:
	asr 1,r6
	cmp 0,r6
	beq .L265
.L268:
	mov r6,d2
	asr 1,d2
	mul a2,d2
	add d3,d2
	mov r4,(12,sp)
	mov_mov d2, d1, a3, d0
	mov r5,a0
	calls (a0)
	cmp 0,d0
	beq .L264
	ble .L267
	add a2,d2,d3
	add -1,r6
	jmp .L267
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
	blt .L274
.L272:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L274:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L272
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
	blt .L278
.L277:
	retf [],0
.L278:
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
	blt .L283
.L281:
	mov_mov a0, d0, a1, d1
	retf [d2],4
.L283:
	mov 0,d0
	sub r0,d0,a0
	subc d1,d0,a1
	jmp .L281
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
	jmp .L292
.L288:
	add 4,d0
.L292:
	mov (d0),a0
	cmp 0,a0
	beq .L287
	cmp a0,d1
	bne .L288
.L287:
	cmp 0,a0
	beq .L293
.L285:
	mov d0,a0
	retf [],0
.L293:
	mov a0,d0
	jmp .L285
	.size	wcschr, .-wcschr
	.global wcscmp
	.type	wcscmp, @function
wcscmp:
	mov (d0),a1
	mov (d1),r0
	mov_add 4, a0, -4, d1
	cmp r0,a1
	bne .L296
.L295:
	cmp 0,a1
	beq .L296
	cmp 0,r0
	beq .L296
	mov (a0,d0),a1
	inc4 a0
	mov (a0,d1),r0
	cmp r0,a1
	beq .L295
.L296:
	cmp r0,a1
	blt .L301
	mov 1,d0
	bgt .L294
	mov 0,d0
	retf [],0
.L301:
	mov -1,d0
.L294:
	retf [],0
	.size	wcscmp, .-wcscmp
	.global wcscpy
	.type	wcscpy, @function
wcscpy:
	mov 0,a1
	setlb
.L304:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	add_cmp 4, a1, 0, r0
	Lne # loop back to: .L304
	mov d0,a0
	retf [],0
	.size	wcscpy, .-wcscpy
	.global wcslen
	.type	wcslen, @function
wcslen:
	mov (d0),d1
	cmp_mov 0, d1, d0, d1
	beq .L307
	setlb
.L308:
	add 4,d1
	mov (d1),a0
	cmp 0,a0
	Lne # loop back to: .L308
.L307:
	sub d0,d1,d0
	asr 2,d0
	retf [],0
	.size	wcslen, .-wcslen
	.global wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L313
.L312:
	mov (d0),a1
	mov (d1),r0
	cmp r0,a1
	bne .L313
	cmp 0,a1
	beq .L313
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L312
.L313:
	cmp 0,a0
	beq .L320
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L318
	mov 1,d0
	bgt .L311
.L320:
	mov 0,d0
	retf [],0
.L318:
	mov -1,d0
.L311:
	retf [],0
	.size	wcsncmp, .-wcsncmp
	.global wmemchr
	.type	wmemchr, @function
wmemchr:
	mov (12,sp),a0
	cmp 0,a0
	beq .L323
.L322:
	mov (d0),a1
	cmp d1,a1
	beq .L323
	add_add -1, a0, 4, d0
	cmp 0,a0
	bne .L322
.L323:
	cmp 0,a0
	beq .L328
.L321:
	mov d0,a0
	retf [],0
.L328:
	mov a0,d0
	jmp .L321
	.size	wmemchr, .-wmemchr
	.global wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	mov (12,sp),a0
	cmp 0,a0
	beq .L331
.L330:
	mov (d0),r0
	mov (d1),a1
	cmp a1,r0
	bne .L331
	add_add -1, a0, 4, d0
	add_cmp 4, d1, 0, a0
	bne .L330
.L331:
	cmp 0,a0
	beq .L338
	mov (d0),a0
	mov (d1),d1
	cmp d1,a0
	blt .L336
	mov 1,d0
	bgt .L329
.L338:
	mov 0,d0
	retf [],0
.L336:
	mov -1,d0
.L329:
	retf [],0
	.size	wmemcmp, .-wmemcmp
	.global wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	add -16,sp
	mov d0,a1
	mov (28,sp),d0
	cmp 0,d0
	beq .L340
	asl2 d0
	mov d0,(12,sp)
	mov a1,d0
	call +memcpy,[],0
	mov a0,a1
.L340:
	mov_mov a1, a0, a1, d0
	ret [],16
	.size	wmemcpy, .-wmemcpy
	.global wmemmove
	.type	wmemmove, @function
wmemmove:
	mov (12,sp),a0
	cmp d1,d0
	beq .L342
	mov -1,a1
	add a0,a1
	sub d1,d0,r1
	mov a0,r0
	asl2 r0
	cmp r0,r1
	bcs .L343
	mov 0,r0
	cmp r0,a0
	beq .L342
	setlb
.L344:
	mov (r0,d1),a0
	mov a0,(r0,d0)
	add_add -1, a1, 4, r0
	cmp -1,a1
	Lne # loop back to: .L344
	jmp .L342
.L343:
	cmp 0,a0
	beq .L342
	asl2 a1
	setlb
.L345:
	mov (a1,d1),a0
	mov a0,(a1,d0)
	add -4,a1
	cmp -4,a1
	Lne # loop back to: .L345
.L342:
	mov d0,a0
	retf [],0
	.size	wmemmove, .-wmemmove
	.global wmemset
	.type	wmemset, @function
wmemset:
	mov (12,sp),a0
	mov -1,a1
	add_cmp a0, a1, 0, a0
	beq .L351
	mov d0,r0
	setlb
.L352:
	mov d1,(r0+)
	add -1,a1
	cmp -1,a1
	Lne # loop back to: .L352
.L351:
	mov d0,a0
	retf [],0
	.size	wmemset, .-wmemset
	.global bcopy
	.type	bcopy, @function
bcopy:
	mov (12,sp),a0
	cmp d1,d0
	bcc .L355
	cmp 0,a0
	beq .L354
	add_add -1, d0, -1, d1
	setlb
.L357:
	movbu (a0,d0),a1
	movbu a1,(a0,d1)
	add -1,a0
	Lne # loop back to: .L357
	retf [],0
.L355:
	beq .L354
	cmp 0,a0
	beq .L354
	mov 0,a1
	setlb
.L358:
	movbu (a1,d0),r0
	movbu r0,(a1,d1)
	inc a1
	cmp a1,a0
	Lne # loop back to: .L358
.L354:
	retf [],0
	.size	bcopy, .-bcopy
	.global rotl64
	.type	rotl64, @function
rotl64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L362
	mov 0,r0
	asl d0,a0,r1
.L363:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L364
	mov 0,d0
	mov d0,d1
	lsr r2,a1,d0
.L365:
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L362:
	mov a0,d1
	mov_lsr d0, r0, 1, d1
	not r0
	lsr r0,d1
	asl d0,a1,r1
	or d1,r1
	asl d0,a0,r0
	jmp .L363
.L364:
	mov a1,r3
	mov_asl r2, d0, 1, r3
	not d0
	asl d0,r3
	lsr r2,a0,d0
	or r3,d0
	lsr r2,a1,d1
	jmp .L365
	.size	rotl64, .-rotl64
	.global rotr64
	.type	rotr64, @function
rotr64:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d0
	mov d0,d1
	and 32,d1
	beq .L367
	mov 0,r0
	mov r0,r1
	lsr d0,a1,r0
.L368:
	not d0
	inc d0
	mov d0,r2
	and 63,r2
	and 32,d0
	beq .L369
	mov 0,d0
	asl r2,a0,d1
.L370:
	or r0,d0,a0
	or r1,d1,a1
	mov_mov a0, d0, a1, d1
	retf [],0
.L367:
	mov a1,d1
	mov_asl d0, r0, 1, d1
	not r0
	asl r0,d1
	lsr d0,a0,r0
	or d1,r0
	lsr d0,a1,r1
	jmp .L368
.L369:
	mov a0,r3
	mov_lsr r2, d0, 1, r3
	not d0
	lsr d0,r3
	asl r2,a1,d1
	or r3,d1
	asl r2,a0,d0
	jmp .L370
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
	mov d0,d1
	and 65280,d1
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
.L385:
	lsr d1,d0,a0
	and 1,a0
	add_cmp 1, d1, 0, a0
	bne .L387
	cmp 32,d1
	bne .L385
	mov a0,d0
	retf [],0
.L387:
	mov d1,d0
	retf [],0
	.size	ffs, .-ffs
	.global libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov_cmp d0, d1, 0, d0
	beq .L388
	and 1,d0
	bne .L388
	mov 1,d0
	setlb
.L390:
	add_asr 1, d0, 1, d1
	btst 1,d1
	Leq # loop back to: .L390
	retf [],0
.L388:
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
	blt .L396
	mov 1,d2
	mov 2139095039,d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L397
.L395:
	mov d2,d0
.L393:
	ret [d2,d3],20
.L397:
	mov 0,d2
	jmp .L395
.L396:
	mov 1,d0
	jmp .L393
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
	blt .L401
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L402
.L400:
	mov a2,d0
.L398:
	ret [d2,d3,a2,a3],36
.L402:
	mov 0,a2
	jmp .L400
.L401:
	mov 1,d0
	jmp .L398
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
	blt .L406
	mov 1,a2
	mov a3,(12,sp)
	mov 2146435071,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L407
.L405:
	mov a2,d0
.L403:
	ret [d2,d3,a2,a3],36
.L407:
	mov 0,a2
	jmp .L405
.L406:
	mov 1,d0
	jmp .L403
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
	bne .L410
	mov_mov a2, d1, a2, d0
	call +__addsf3,[],0
	mov a2,d1
	call +__nesf2,[],0
	cmp 0,d0
	beq .L410
	cmp 0,d2
	blt .L417
	mov 1073741824,d3
	jmp .L414
.L417:
	mov 1056964608,d3
	jmp .L414
.L413:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L410
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L414:
	btst 1,d2
	beq .L413
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L413
.L410:
	mov a2,d0
	ret [d2,d3,a2],24
	.size	ldexpf, .-ldexpf
	.global ldexp
	.type	ldexp, @function
ldexp:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),r4
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	mov_cmp d0, r5, 0, d0
	bne .L419
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov d2,(12,sp)
	mov d3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L419
	mov_cmp r5, a2, 0, r4
	blt .L426
	mov 1073741824,a3
	jmp .L423
.L426:
	mov 1071644672,a3
	jmp .L423
.L422:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L419
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L423:
	btst 1,r4
	beq .L422
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L422
.L419:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexp, .-ldexp
	.global ldexpl
	.type	ldexpl, @function
ldexpl:
	movm [d2,d3,a2,a3,exreg1],(sp)
	add -20,sp
	mov_mov d0, d2, d1, d3
	mov (64,sp),r4
	mov d0,(12,sp)
	mov d1,(16,sp)
	call +__unorddf2,[],0
	mov_cmp d0, r5, 0, d0
	bne .L428
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__adddf3,[],0
	mov d2,(12,sp)
	mov d3,(16,sp)
	call +__nedf2,[],0
	cmp 0,d0
	beq .L428
	mov_cmp r5, a2, 0, r4
	blt .L435
	mov 1073741824,a3
	jmp .L432
.L435:
	mov 1071644672,a3
	jmp .L432
.L431:
	mov r4,d0
	lsr 31,d0
	add d0,r4
	asr 1,r4
	cmp 0,r4
	beq .L428
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__muldf3,[],0
	mov_mov d0, a2, d1, a3
.L432:
	btst 1,r4
	beq .L431
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L431
.L428:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
	.size	ldexpl, .-ldexpl
	.global memxor
	.type	memxor, @function
memxor:
	mov (12,sp),r2
	cmp 0,r2
	beq .L437
	add_mov d1, r2, d0, a1
	setlb
.L438:
	add_add 1, d1, 1, a1
	movbu (-1,a1),r0
	movbu (-1,d1),r1
	xor r1,r0
	movbu r0,(-1,a1)
	cmp d1,r2
	Lne # loop back to: .L438
.L437:
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
	beq .L442
.L441:
	movbu (d3),a1
	movbu a1,(d0)
	extbu a1
	cmp 0,a1
	beq .L442
	add_add 1, d3, 1, d0
	add -1,d2
	bne .L441
.L442:
	cmp 0,d2
	bne .L444
	movbu d2,(d0)
.L444:
	mov_mov a2, a0, a2, d0
	ret [d2,d3,a2],24
	.size	strncat, .-strncat
	.global strnlen
	.type	strnlen, @function
strnlen:
	mov_mov d0, a0, 0, d0
	cmp d0,d1
	beq .L453
.L447:
	movbu (d0,a0),a1
	cmp 0,a1
	bne .L449
.L446:
	retf [],0
.L453:
	mov d1,d0
	retf [],0
.L449:
	inc d0
	cmp d0,d1
	bne .L447
	retf [],0
	.size	strnlen, .-strnlen
	.global strpbrk
	.type	strpbrk, @function
strpbrk:
.L462:
	movbu (d0),r1
	extbu r1,a0
	cmp 0,a0
	beq .L459
	mov d1,a1
	extbu r1
.L458:
	movbu (a1),r0
	cmp 0,r0
	beq .L463
	add_cmp 1, a1, r1, r0
	bne .L458
.L456:
	mov d0,a0
	retf [],0
.L463:
	inc d0
	jmp .L462
.L459:
	mov a0,d0
	jmp .L456
	.size	strpbrk, .-strpbrk
	.global strrchr
	.type	strrchr, @function
strrchr:
	mov_mov d0, a1, 0, d0
	jmp .L466
.L465:
	inc a1
	extbu a0
	cmp 0,a0
	beq .L469
.L466:
	movbu (a1),a0
	extbu a0,r0
	cmp d1,r0
	bne .L465
	mov a1,d0
	jmp .L465
.L469:
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
	beq .L470
	movbu (d3),a3
.L472:
	mov_mov a3, d1, d2, d0
	call +strchr,[],0
	mov_cmp a0, d2, 0, a0
	beq .L470
	mov a2,(12,sp)
	mov_mov d3, d1, d2, d0
	call +strncmp,[],0
	cmp 0,d0
	beq .L470
	inc d2
	jmp .L472
.L470:
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
	blt .L484
.L476:
	mov 0,r4
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L479
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__ltdf2,[],0
	cmp r4,d0
	blt .L478
.L479:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L484:
	mov r4,(12,sp)
	mov r4,(16,sp)
	mov_mov a2, d0, a3, d1
	call +__gtdf2,[],0
	cmp r4,d0
	ble .L476
.L478:
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
	jmp .L479
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
	beq .L489
	cmp r4,d1
	bcs .L491
	sub r4,d1,d3
	add d0,d3
	cmp d3,d0
	bhi .L491
	movbu (r5),a3
	add_add 1, r5, -1, r4
	jmp .L488
.L487:
	cmp d3,d2
	bhi .L491
.L488:
	movbu (d2),d0
	mov_add d2, a2, 1, d2
	extbu d0
	cmp a3,d0
	bne .L487
	mov r4,(12,sp)
	mov_mov r5, d1, d2, d0
	call +memcmp,[],0
	cmp 0,d0
	bne .L487
	jmp .L485
.L489:
	mov d0,a2
	jmp .L485
.L491:
	mov 0,a2
.L485:
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
	blt .L518
.L495:
	mov 0,r6
	mov r6,(12,sp)
	mov 1072693248,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gedf2,[],0
	cmp r6,d0
	blt .L515
	mov r6,a2
	mov 1071644672,r5
	mov 1072693248,r4
.L499:
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
	bge .L499
.L500:
	mov (64,sp),d0
	mov r6,(d0)
	cmp 0,a3
	beq .L504
	mov -2147483648,d1
	add d3,d1
	mov d1,d3
.L504:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L518:
	mov -2147483648,d1
	add d3,d1
	mov_mov d1, d3, 1, a3
	jmp .L495
.L515:
	mov r6,(12,sp)
	mov 1071644672,d0
	mov d0,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__ltdf2,[],0
	cmp 0,d0
	bge .L500
	mov r6,(12,sp)
	mov r6,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__nedf2,[],0
	cmp 0,d0
	beq .L500
	mov 0,r4
	mov 1071644672,a2
.L503:
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
	blt .L503
	jmp .L500
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
	beq .L523
	mov 0,r4
	mov r4,r5
	setlb
.L522:
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
	Lne # loop back to: .L522
.L519:
	mov_mov r4, d0, r5, d1
	retf [d2,d3,a2,a3,exreg1],40
.L523:
	mov_mov d2, r4, d2, r5
	jmp .L519
	.size	__muldi3, .-__muldi3
	.global udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L527
	mov 32,d0
	mov 1,a0
.L526:
	cmp 0,d1
	blt .L527
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L527
	add -1,d0
	bne .L526
	mov d0,a0
.L527:
	mov 0,d0
	cmp d0,a0
	bne .L528
	mov a0,d0
.L529:
	cmp 0,r0
	bne .L539
.L525:
	retf [],0
.L531:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L529
.L528:
	cmp d1,a1
	bcs .L531
	or_sub a0, d0, d1, a1
	jmp .L531
.L539:
	mov a1,d0
	retf [],0
	.size	udivmodsi4, .-udivmodsi4
	.global __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extbu d0
	cmp 0,d0
	beq .L542
	asl 8,d0
	mov 0,d1
	bsch d0, d1
	xor 31,d1
	mov -1,d0
	add d1,d0
	retf [],0
.L542:
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
	beq .L551
.L549:
	mov_cmp 0, d0, 0, a1
	beq .L546
	bsch a1, d0
	xor 31,d0
.L547:
	add -1,d0
	retf [],0
.L551:
	cmp d0,d1
	bne .L549
	mov 63,d0
	retf [],0
.L546:
	bsch a0, d0
	xor 31,d0
	add 32,d0
	jmp .L547
	.size	__clrsbdi2, .-__clrsbdi2
	.global __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_cmp d0, a1, 0, d0
	beq .L555
	mov 0,d0
	setlb
.L554:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L554
	retf [],0
.L555:
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
	bcc .L558
.L561:
	cmp 0,d2
	beq .L560
	mov_asl 0, a0, 3, d2
	setlb
.L564:
	mov (a0,d1),r0
	add a0,d1,r2
	mov (4,r2),r1
	mov r0,(a0,d0)
	add a0,d0,r0
	mov r1,(4,r0)
	add 8,a0
	cmp a0,d2
	Lne # loop back to: .L564
.L560:
	cmp a1,r3
	bls .L557
	setlb
.L565:
	movbu (a1,d1),a0
	movbu a0,(a1,d0)
	inc a1
	cmp a1,r3
	Lne # loop back to: .L565
.L557:
	retf [d2],4
.L558:
	add r3,d1,a0
	cmp a0,d0
	bhi .L561
	mov -1,a0
	add_cmp r3, a0, 0, r3
	beq .L557
	setlb
.L562:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L562
	jmp .L557
	.size	__cmovd, .-__cmovd
	.global __cmovh
	.type	__cmovh, @function
__cmovh:
	mov (12,sp),r1
	mov r1,r0
	cmp_lsr d1, d0, 1, r0
	bcc .L571
.L574:
	cmp 0,r0
	beq .L573
	mov_asl 0, a0, 1, r0
	setlb
.L577:
	movhu (a0,d1),a1
	movhu a1,(a0,d0)
	add 2,a0
	cmp a0,r0
	Lne # loop back to: .L577
.L573:
	btst 1,r1
	beq .L570
	add -1,r1
	movbu (r1,d1),d1
	movbu d1,(r1,d0)
	retf [],0
.L571:
	add r1,d1,a0
	cmp a0,d0
	bhi .L574
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L581
	setlb
.L575:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L575
.L570:
	retf [],0
.L581:
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
	bcc .L583
.L586:
	cmp 0,r2
	beq .L585
	mov_asl 0, a1, 2, r2
	setlb
.L589:
	mov (a1,d1),r0
	mov r0,(a1,d0)
	inc4 a1
	cmp a1,r2
	Lne # loop back to: .L589
.L585:
	cmp a0,r1
	bls .L582
	setlb
.L590:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	inc a0
	cmp a0,r1
	Lne # loop back to: .L590
	retf [],0
.L583:
	add r1,d1,a1
	cmp a1,d0
	bhi .L586
	mov -1,a0
	add_cmp r1, a0, 0, r1
	beq .L595
	setlb
.L587:
	movbu (a0,d1),a1
	movbu a1,(a0,d0)
	add -1,a0
	cmp -1,a0
	Lne # loop back to: .L587
.L582:
	retf [],0
.L595:
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
.L604:
	sub d1,a1,a0
	asr a0,d0,a0
	btst 1,a0
	bne .L602
	inc d1
	cmp 16,d1
	bne .L604
.L602:
	mov d1,d0
	retf [],0
	.size	__clzhi2, .-__clzhi2
	.global __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov 0,d1
	exthu d0
.L608:
	asr d1,d0,a0
	btst 1,a0
	bne .L606
	inc d1
	cmp 16,d1
	bne .L608
.L606:
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
	bge .L616
	mov d2,d0
	call +__fixsfsi,[],0
.L610:
	ret [d2],16
.L616:
	mov 1191182336,d1
	mov d2,d0
	call +__subsf3,[],0
	call +__fixsfsi,[],0
	add 32768,d0
	jmp .L610
	.size	__fixunssfsi, .-__fixunssfsi
	.global __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov 0,a1
	mov a1,d1
	exthu d0
	setlb
.L618:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L618
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
.L621:
	asr d1,d0,a0
	and 1,a0
	add_add a0, a1, 1, d1
	cmp 16,d1
	Lne # loop back to: .L621
	mov a1,d0
	retf [],0
	.size	__popcounthi2, .-__popcounthi2
	.global __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_cmp d0, a1, 0, d0
	beq .L626
	mov 0,d0
	setlb
.L625:
	mov a1,a0
	and 1,a0
	not a0
	inc a0
	and d1,a0
	add_lsr a0, d0, 1, a1
	cmp_asl 0, a1, 1, d1
	Lne # loop back to: .L625
	retf [],0
.L626:
	retf [],0
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.global __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov_cmp d0, a1, 0, d0
	beq .L631
	cmp 0,d1
	beq .L632
	mov 0,d0
	setlb
.L630:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	lsr 1,d1
	cmp 0,d1
	Lne # loop back to: .L630
	retf [],0
.L631:
	retf [],0
.L632:
	mov d1,d0
	retf [],0
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.global __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L636
	mov 32,d0
	mov 1,a0
.L635:
	cmp 0,d1
	blt .L636
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L636
	add -1,d0
	bne .L635
	mov d0,a0
.L636:
	mov 0,d0
	cmp d0,a0
	bne .L637
	mov a0,d0
.L638:
	cmp 0,r0
	bne .L648
.L634:
	retf [],0
.L640:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L638
.L637:
	cmp d1,a1
	bcs .L640
	or_sub a0, d0, d1, a1
	jmp .L640
.L648:
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
	blt .L652
	mov_mov 1, d2, a2, d1
	mov d3,d0
	call +__gtsf2,[],0
	cmp 0,d0
	ble .L653
.L651:
	mov d2,d0
.L649:
	ret [d2,d3,a2],24
.L653:
	mov 0,d2
	jmp .L651
.L652:
	mov -1,d0
	jmp .L649
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
	blt .L657
	mov 1,r4
	mov a2,(12,sp)
	mov a3,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__gtdf2,[],0
	cmp 0,d0
	ble .L658
.L656:
	mov r4,d0
.L654:
	ret [d2,d3,a2,a3,exreg1],52
.L658:
	mov 0,r4
	jmp .L656
.L657:
	mov -1,d0
	jmp .L654
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.global __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	mov_mov d1, r0, d0, a1
	asr 31,a1
	asr 31,d1
	mul r0,a1
	mul d0,d1
	add a1,d1
	mulu d0,r0,r1,r0
	add_mov r1, d1, r0, d0
	rets
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.global __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	mulu d0,d1,r1,r0
	mov_mov r0, d0, r1, d1
	retf [],0
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.global __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	mov_cmp d0, a1, 0, d1
	blt .L669
	mov 0,r1
.L662:
	cmp 0,d1
	beq .L667
	mov 32,r0
	mov 0,d0
.L664:
	mov d1,a0
	and 1,a0
	not a0
	inc a0
	and a1,a0
	add_asl a0, d0, 1, a1
	asr 1,d1
	cmp 0,d1
	beq .L663
	mov -1,a0
	add r0,a0
	mov a0,r0
	btst 255,a0
	bne .L664
.L663:
	cmp 0,r1
	beq .L661
	not d0
	inc d0
.L661:
	retf [],0
.L669:
	not d1
	add_mov 1, d1, 1, r1
	jmp .L662
.L667:
	mov d1,d0
	jmp .L663
	.size	__mulhi3, .-__mulhi3
	.global __divsi3
	.type	__divsi3, @function
__divsi3:
	movm [d2],(sp)
	add -16,sp
	cmp 0,d0
	blt .L675
	mov 0,d2
.L671:
	cmp 0,d1
	blt .L676
.L672:
	mov 0,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L670
	not d0
	inc d0
.L670:
	ret [d2],20
.L675:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L671
.L676:
	not d1
	inc d1
	xor 1,d2
	jmp .L672
	.size	__divsi3, .-__divsi3
	.global __modsi3
	.type	__modsi3, @function
__modsi3:
	movm [d2],(sp)
	add -16,sp
	mov_cmp d1, a0, 0, d0
	blt .L682
	mov 0,d2
.L678:
	mov_cmp a0, d1, 0, a0
	blt .L683
.L679:
	mov 1,a0
	mov a0,(12,sp)
	call +__udivmodsi4,[],0
	cmp 0,d2
	beq .L677
	not d0
	inc d0
.L677:
	ret [d2],20
.L682:
	not d0
	add_mov 1, d0, 1, d2
	jmp .L678
.L683:
	mov 0,d1
	sub a0,d1
	jmp .L679
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
	bcc .L686
	mov 16,d1
	mov 1,a1
	exthu r0,r1
.L685:
	exth a0,d0
	cmp 0,d0
	blt .L686
	mov a0,d0
	add d0,d0
	mov d0,a0
	add a1,a1
	exthu d0
	cmp d0,r1
	bls .L686
	add -1,d1
	bne .L685
	mov d1,a1
.L686:
	exthu a1,d1
	mov 0,d0
	cmp 0,d1
	bne .L687
	mov a1,d0
.L688:
	cmp 0,r2
	bne .L698
.L684:
	retf [],0
.L690:
	exthu a1,d1
	lsr 1,d1
	mov d1,a1
	asl 16,a0
	lsr 17,a0
	cmp 0,d1
	beq .L688
.L687:
	exthu r0,d1
	exthu a0,r1
	cmp r1,d1
	bcs .L690
	or_sub a1, d0, a0, r0
	jmp .L690
.L698:
	mov r0,d0
	retf [],0
	.size	__udivmodhi4, .-__udivmodhi4
	.global __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov d0,a1
	mov (12,sp),r0
	mov_cmp 1, a0, d0, d1
	bcc .L701
	mov 32,d0
	mov 1,a0
.L700:
	cmp 0,d1
	blt .L701
	add d1,d1
	cmp_asl d1, a1, 1, a0
	bls .L701
	add -1,d0
	bne .L700
	mov d0,a0
.L701:
	mov 0,d0
	cmp d0,a0
	bne .L702
	mov a0,d0
.L703:
	cmp 0,r0
	bne .L713
.L699:
	retf [],0
.L705:
	lsr 1,a0
	cmp_lsr 0, a0, 1, d1
	beq .L703
.L702:
	cmp d1,a1
	bcs .L705
	or_sub a0, d0, d1, a1
	jmp .L705
.L713:
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
	beq .L715
	mov_asl 0, r0, d0, a0
.L716:
	mov a0,r1
.L717:
	mov_mov r0, d0, r1, d1
	retf [],0
.L715:
	cmp 0,d0
	beq .L718
	asl d0,a0,r0
	mov 0,d1
	sub d0,d1
	lsr d1,a0,d1
	asl d0,a1,d0
	or d0,d1,a0
	jmp .L716
.L718:
	mov_mov a0, r0, a1, r1
	jmp .L717
	.size	__ashldi3, .-__ashldi3
	.global __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov_mov d0, a0, d1, a1
	mov (12,sp),d1
	mov d1,d0
	and 32,d0
	beq .L720
	mov a1,d0
	asr 31,d0
	asr d1,a1,d1
.L721:
	mov_mov d1, r0, d0, r1
.L722:
	mov_mov r0, d0, r1, d1
	retf [],0
.L720:
	cmp 0,d1
	beq .L723
	asr d1,a1,d0
	mov 0,r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	jmp .L721
.L723:
	mov_mov a0, r0, a1, r1
	jmp .L722
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
	bls .L727
	mov 0,a0
.L727:
	asl 4,a0
	mov 16,d1
	sub a0,d1
	lsr d1,d0,d1
	mov 1,d0
	btst 65280,d1
	beq .L728
	mov 0,d0
.L728:
	asl2 d0
	add d0,d0
	mov 8,a1
	sub d0,a1
	add_lsr d0, a0, a1, d1
	mov 1,d0
	btst 240,d1
	beq .L729
	mov 0,d0
.L729:
	mov_asl 4, a1, 2, d0
	sub d0,a1
	lsr a1,d1
	add a0,d0,a1
	mov 1,a0
	btst 12,d1
	beq .L730
	mov 0,a0
.L730:
	mov_asl 2, r1, 1, a0
	sub a0,r1,d0
	lsr d0,d1
	mov d1,r0
	lsr 1,r0
	and 1,r0
	mov r0,d0
	xor 1,d0
	cmp 0,r0
	bne .L732
	sub d1,r1,d0
.L732:
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
	blt .L737
	bgt .L738
	cmp a0,r0
	bcs .L737
	bhi .L738
	mov 1,d0
	retf [],0
.L737:
	mov 0,d0
	retf [],0
.L738:
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
	beq .L741
	mov 0,a0
.L741:
	asl 4,a0
	lsr a0,d0,d1
	extbu d1,a1
	mov_cmp 1, d0, 0, a1
	beq .L742
	mov 0,d0
.L742:
	asl2 d0
	add d0,d0
	add_lsr d0, a0, d0, d1
	mov 1,d0
	btst 15,d1
	beq .L743
	mov 0,d0
.L743:
	asl2 d0
	lsr d0,d1
	add a0,d0,a1
	mov 1,d0
	btst 3,d1
	beq .L744
	mov 0,d0
.L744:
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
	beq .L746
	lsr d1,a1,d1
	mov 0,d0
.L747:
	mov_mov d1, r0, d0, r1
.L748:
	mov_mov r0, d0, r1, d1
	retf [],0
.L746:
	cmp 0,d1
	beq .L749
	lsr d1,a1,d0
	mov 0,r0
	sub d1,r0
	asl r0,a1,r0
	lsr d1,a0,d1
	or r0,d1
	jmp .L747
.L749:
	mov a0,r0
	jmp .L748
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
	mov_mov d0, r0, d1, r1
	mul a2,d3,d0,d1
	mul a3,d2
	add d2,d1
	add_mov r1, d1, r0, d2
	mov_mov d1, d3, r0, d0
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
	mov_mov d0, r4, d1, r5
	mov (64,sp),a2
	mov_mov a2, a3, 0, d2
	mov 1072693248,d3
	jmp .L760
.L758:
	mov a3,d0
	lsr 31,d0
	add a3,d0
	asr 1,d0
	mov_cmp d0, a3, 0, d0
	beq .L759
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov r4, d0, r5, d1
	call +__muldf3,[],0
	mov_mov d0, r4, d1, r5
.L760:
	btst 1,a3
	beq .L758
	mov r4,(12,sp)
	mov r5,(16,sp)
	mov_mov d2, d0, d3, d1
	call +__muldf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L758
.L759:
	cmp 0,a2
	blt .L762
.L757:
	mov_mov d2, d0, d3, d1
	ret [d2,d3,a2,a3,exreg1],52
.L762:
	mov d2,(12,sp)
	mov d3,(16,sp)
	mov 1072693248,d1
	call +__divdf3,[],0
	mov_mov d0, d2, d1, d3
	jmp .L757
	.size	__powidf2, .-__powidf2
	.global __powisf2
	.type	__powisf2, @function
__powisf2:
	movm [d2,d3,a2,a3],(sp)
	add -12,sp
	mov_mov d0, d3, d1, a3
	mov d1,d2
	mov 1065353216,a2
	jmp .L766
.L764:
	mov d2,d0
	lsr 31,d0
	add d0,d2
	asr 1,d2
	cmp 0,d2
	beq .L765
	mov_mov d3, d1, d3, d0
	call +__mulsf3,[],0
	mov d0,d3
.L766:
	btst 1,d2
	beq .L764
	mov_mov d3, d1, a2, d0
	call +__mulsf3,[],0
	mov d0,a2
	jmp .L764
.L765:
	cmp 0,a3
	blt .L768
.L763:
	mov a2,d0
	ret [d2,d3,a2,a3],28
.L768:
	mov a2,d1
	mov 1065353216,d0
	call +__divsf3,[],0
	mov d0,a2
	jmp .L763
	.size	__powisf2, .-__powisf2
	.global __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov d0,r0
	mov (12,sp),a0
	mov (16,sp),a1
	cmp a1,d1
	bcs .L773
	bhi .L774
	cmp a0,r0
	bcs .L773
	bhi .L774
	mov 1,d0
	retf [],0
.L773:
	mov 0,d0
	retf [],0
.L774:
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
