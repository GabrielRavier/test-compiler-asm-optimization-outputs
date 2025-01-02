	.LEVEL 2.0w
	.text
	.align 8
.globl make_ti
	.type	make_ti, @function
make_ti:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	bve (%r2)
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	make_ti, .-make_ti
	.align 8
.globl make_tu
	.type	make_tu, @function
make_tu:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	bve (%r2)
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	make_tu, .-make_tu
	.align 8
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*>>= %r25,%r26,.L5
	copy %r26,%r28
	add,l %r25,%r24,%r25
	cmpb,*= %r0,%r24,.L6
	add,l %r26,%r24,%r31
	ldb,mb -1(%r25),%r19
.L50:
	stb,mb %r19,-1(%r31)
	cmpb,*<>,n %r31,%r28,.L50
	ldb,mb -1(%r25),%r19
.L6:
	bve,n (%r2)
.L5:
	cmpb,*= %r25,%r26,.L6
	nop
	cmpb,*= %r0,%r24,.L6
	nop
	ldo -1(%r24),%r31
	cmpib,*>>= 7,%r31,.L8
	ldo 1(%r25),%r19
	or %r25,%r26,%r31
	extrd,u %r31,63,3,%r31
	ldo -1(%r31),%r31
	cmpb,*<= %r0,%r31,.L8
	sub %r26,%r19,%r31
	cmpib,*>>= 6,%r31,.L8
	copy %r24,%r21
	copy %r26,%r31
	depdi 0,63,3,%r21
	add,l %r25,%r21,%r20
.L10:
	ldd 0(%r25),%r19
	std %r19,0(%r31)
	ldo 8(%r25),%r25
	cmpb,*<> %r20,%r25,.L10
	ldo 8(%r31),%r31
	add,l %r28,%r21,%r31
	cmpb,*= %r21,%r24,.L6
	sub %r24,%r21,%r19
	ldb 0(%r25),%r20
	cmpib,*= 1,%r19,.L6
	stb %r20,0(%r31)
	ldb 1(%r25),%r20
	cmpib,*= 2,%r19,.L6
	stb %r20,1(%r31)
	ldb 2(%r25),%r20
	cmpib,*= 3,%r19,.L6
	stb %r20,2(%r31)
	ldb 3(%r25),%r20
	cmpib,*= 4,%r19,.L6
	stb %r20,3(%r31)
	ldb 4(%r25),%r20
	cmpib,*= 5,%r19,.L6
	stb %r20,4(%r31)
	ldb 5(%r25),%r20
	cmpib,*= 6,%r19,.L6
	stb %r20,5(%r31)
	ldb 6(%r25),%r19
	bve (%r2)
	stb %r19,6(%r31)
.L8:
	add,l %r28,%r24,%r24
	copy %r28,%r31
.L13:
	ldb -1(%r19),%r20
	stb %r20,0(%r31)
	ldo 1(%r31),%r31
	cmpb,*<> %r24,%r31,.L13
	ldo 1(%r19),%r19
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 8
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*<> %r0,%r23,.L52
	extrd,u %r24,63,8,%r24
	b .L62
	ldi 0,%r28
.L55:
	cmpb,*= %r0,%r23,.L54
	ldo 1(%r26),%r26
.L52:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	cmpb,<> %r24,%r28,.L55
	ldo 1(%r25),%r25
	bve (%r2)
	ldo 1(%r26),%r28
.L54:
	ldi 0,%r28
.L62:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 8
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*<> %r0,%r24,.L64
	extrd,u %r25,63,8,%r25
	b .L71
	copy %r24,%r28
.L66:
	cmpb,*= %r0,%r24,.L67
	ldo 1(%r26),%r26
.L64:
	ldb 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L66
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L67:
	copy %r24,%r28
.L71:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 8
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpclr,*<> %r0,%r24,%r0
	b,n .L77
.L87:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	cmpb,<> %r31,%r28,.L86
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	cmpb,*<> %r0,%r24,.L87
	ldo 1(%r25),%r25
.L77:
	bve (%r2)
	copy %r24,%r28
.L86:
	sub %r28,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 8
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	cmpb,*= %r0,%r24,.L89
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
.L89:
	copy %r3,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 8
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -1(%r24),%r24
	extrd,u %r25,63,8,%r25
	add,l %r26,%r24,%r24
	b .L94
	ldo -1(%r26),%r26
.L96:
	ldb 0(%r28),%r31
	cmpb,= %r25,%r31,.L93
	ldo -1(%r24),%r24
.L94:
	cmpb,*<> %r26,%r24,.L96
	copy %r24,%r28
	ldi 0,%r28
.L93:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 8
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	extrd,s %r25,63,32,%r25
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	cmpb,*= %r0,%r24,.L100
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memset,%r2
	extrw,u %r25,31,8,%r25
.L100:
	copy %r3,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r25),%r31
	stb %r31,0(%r26)
	extrd,s %r31,63,8,%r31
	cmpb,*= %r0,%r31,.L102
	copy %r26,%r28
	ldb,mb 1(%r25),%r31
.L108:
	stb,mb %r31,1(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L108
	ldb,mb 1(%r25),%r31
.L102:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r31
	extrd,u %r25,63,8,%r25
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L110
	copy %r26,%r28
	b,n .L109
.L112:
	extrd,s %r31,63,8,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L109
.L110:
	extrw,u %r31,31,8,%r31
	cmpb,<>,n %r25,%r31,.L112
	ldb,mb 1(%r28),%r31
.L109:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 8
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r25,63,32,%r25
	b .L119
	copy %r26,%r28
.L122:
	cmpb,*= %r0,%r31,.L121
	ldo 1(%r28),%r28
.L119:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<> %r25,%r31,.L122
	nop
	bve,n (%r2)
.L121:
	bve (%r2)
	copy %r31,%r28
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 8
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r19
	ldb 0(%r25),%r31
	extrd,s %r19,63,8,%r28
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r31,%r28,.L124
	extrd,u %r19,63,8,%r28
	b .L133
	extrw,u %r31,31,8,%r31
.L126:
	ldb,mb 1(%r25),%r31
	extrd,s %r19,63,8,%r28
	extrd,s %r31,63,8,%r31
	cmpclr,= %r31,%r28,%r0
	b,n .L131
.L124:
	cmpb,*<>,n %r0,%r28,.L126
	ldb,mb 1(%r26),%r19
	extrw,u %r31,31,8,%r31
	sub %r28,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L131:
	extrd,u %r19,63,8,%r28
	extrw,u %r31,31,8,%r31
.L133:
	sub %r28,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 8
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	cmpib,=,n 0,%r28,.L137
	copy %r26,%r28
	ldb,mb 1(%r28),%r31
.L139:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L139
	ldb,mb 1(%r28),%r31
	bve (%r2)
	sub %r28,%r26,%r28
.L137:
	bve (%r2)
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 8
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r24,.L147
	ldo -1(%r24),%r22
	copy %r25,%r20
	ldb 0(%r26),%r28
	cmpb,*<> %r0,%r28,.L144
	add,l %r25,%r22,%r22
	b .L156
	ldb 0(%r25),%r21
.L158:
	cmpb,*=,n %r22,%r20,.L149
	ldb,mb 1(%r26),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*= %r0,%r28,.L157
	ldo 1(%r20),%r31
	copy %r31,%r20
.L144:
	ldb 0(%r20),%r21
	xor %r21,%r28,%r19
	extrw,s,>= %r21,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r19,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r31,%r31
	ldo -1(%r19),%r19
	and %r31,%r19,%r31
	bb,< %r31,24,.L158
	nop
.L149:
	extrd,s %r28,63,32,%r28
.L143:
	sub %r28,%r21,%r28
.L159:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L147:
	bve (%r2)
	copy %r24,%r28
.L157:
	b .L143
	ldb 1(%r20),%r21
.L156:
	b .L159
	sub %r28,%r21,%r28
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 8
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpib,*>= 1,%r24,.L160
	depdi 0,63,1,%r24
	add,l %r26,%r24,%r19
.L162:
	ldb 1(%r26),%r31
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r31,-2(%r25)
	cmpb,*<> %r19,%r26,.L162
	stb %r28,-1(%r25)
.L160:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 8
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	depwi -1,26,1,%r26
	ldo -97(%r26),%r28
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 8
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpiclr,<< 127,%r26,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 8
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 32,%r31
	ldi 9,%r28
	xor %r26,%r31,%r31
	xor %r26,%r28,%r28
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r31),%r31
	ldo -1(%r28),%r28
	or %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,32+1-1,1,%r28
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,63,32,%r28
	ldi 31,%r19
	cmpb,>>= %r19,%r26,.L170
	ldi 1,%r31
	ldi 0,%r31
.L170:
	ldi 127,%r19
	xor %r28,%r19,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	or %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 8
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r28
	cmpiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 8
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -33(%r26),%r28
	cmpiclr,<< 93,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 8
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -97(%r26),%r28
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 8
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r26),%r28
	cmpiclr,<< 94,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 8
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,63,32,%r31
	ldo -9(%r26),%r26
	cmpib,>>= 4,%r26,.L180
	ldi 1,%r19
	ldi 0,%r19
.L180:
	ldi 32,%r28
	xor %r31,%r28,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	or %r28,%r19,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 8
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -65(%r26),%r28
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	ldi 32,%r28
	ldo -127(%r26),%r26
	cmpb,>>=,n %r28,%r26,.L188
	ldi 31,%r28
	cmpb,>>= %r28,%r31,.L188
	ldo -40(%r31),%r19
	ldo -8192(%r19),%r19
	cmpib,>>= 1,%r19,.L184
	ldi 1,%r28
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpiclr,<< 2,%r31,%r31
	ldi 1,%r31
	extrd,s %r31,63,32,%r28
.L184:
	bve,n (%r2)
.L188:
	bve (%r2)
	ldi 1,%r28
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r28
	cmpiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 8
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 254,%r31
	cmpb,>>= %r31,%r26,.L205
	extrd,u %r26,63,32,%r28
	ldo -42(%r28),%r31
	ldil L'49152,%r19
	ldo -8192(%r31),%r31
	ldo -2091(%r19),%r19
	cmpb,<< %r19,%r31,.L206
	ldil L'16384,%r31
.L201:
	bve (%r2)
	ldi 1,%r28
.L206:
	ldo -8153(%r31),%r31
	cmpb,>>= %r31,%r28,.L201
	ldil L'-57344,%r31
	ldi 8184,%r19
	add,l %r28,%r31,%r31
	cmpb,>>= %r19,%r31,.L201
	depwi,z -1,29,14,%r19
	ldil L'1048576,%r31
	sub %r28,%r19,%r19
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L202
	depwi,z -1,30,15,%r31
	andcm %r31,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L205:
	ldo 1(%r26),%r28
	extrw,u %r28,31,7,%r28
	cmpiclr,>>= 32,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L202:
	bve (%r2)
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	ldo -48(%r26),%r26
	cmpib,>>= 9,%r26,.L208
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r28
	cmpiclr,<< 5,%r28,%r28
	ldi 1,%r28
	extrd,s %r28,63,32,%r28
.L208:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 8
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bve (%r2)
	extrd,u %r26,63,7,%r28
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.word	0
	.word	0
	.text
	.align 8
.globl fdim
	.type	fdim, @function
fdim:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L212
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L216
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L218
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	fldd 0(%r28),%fr4
.L212:
	bve,n (%r2)
.L218:
	bve (%r2)
	fsub,dbl %fr4,%fr5,%fr4
.L216:
	bve (%r2)
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.word	0
	.text
	.align 8
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L221
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L225
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L227
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	fldw 0(%r28),%fr4R
.L221:
	bve,n (%r2)
.L227:
	bve (%r2)
	fsub,sgl %fr4R,%fr5R,%fr4R
.L225:
	bve (%r2)
	fcpy,sgl %fr5R,%fr4R
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 8
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr4,%fr4
	ldo 64(%r30),%r30
	ftest
	b .L236
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L237
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,<> %r31,%r19,.L241
	extrd,u %r28,0,1,%r28
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L236
	fcpy,dbl %fr4,%fr5
.L236:
	fcpy,dbl %fr5,%fr4
.L230:
	bve (%r2)
	ldo -64(%r30),%r30
.L241:
	cmpb,*<> %r0,%r28,.L230
	fcpy,dbl %fr5,%fr4
.L237:
	fcpy,dbl %fr22,%fr4
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4R,%fr4R
	ldo 64(%r30),%r30
	ftest
	b .L248
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L249
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,<> %r31,%r28,.L253
	extrd,s %r28,63,32,%r19
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L248
	fcpy,sgl %fr4R,%fr5R
.L248:
	fcpy,sgl %fr5R,%fr4R
.L242:
	bve (%r2)
	ldo -64(%r30),%r30
.L253:
	cmpb,*<> %r0,%r19,.L242
	fcpy,sgl %fr5R,%fr4R
.L249:
	fcpy,sgl %fr22R,%fr4R
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r7,160(%r30)
	copy %r23,%r7
	ldo -48(%r30),%r29
	std %r6,-152(%r30)
	copy %r25,%r23
	copy %r24,%r6
	std %r5,-144(%r30)
	copy %r26,%r24
	copy %r25,%r5
	std %r4,-136(%r30)
	copy %r27,%r4
	std %r3,-128(%r30)
	b,l __unordtf2,%r2
	copy %r26,%r3
	cmpb,*<> %r0,%r28,.L262
	copy %r4,%r27
	copy %r27,%r4
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r7,%r25
	cmpb,*<> %r0,%r28,.L261
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L256
	extrd,u %r3,0,1,%r19
	cmpb,*= %r0,%r19,.L266
	copy %r3,%r28
.L262:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L256:
	copy %r6,%r24
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L265
.L261:
	copy %r3,%r28
.L266:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L265:
	copy %r6,%r3
	b .L261
	copy %r7,%r5
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 8
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr4,%fr4
	ldo 64(%r30),%r30
	ftest
	b .L273
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L267
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L269
	extrd,u %r28,0,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L273
.L267:
	bve (%r2)
	ldo -64(%r30),%r30
.L269:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L267
.L273:
	fcpy,dbl %fr5,%fr4
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 8
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4R,%fr4R
	ldo 64(%r30),%r30
	ftest
	b .L284
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L278
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L280
	extrd,s %r28,63,32,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L284
.L278:
	bve (%r2)
	ldo -64(%r30),%r30
.L280:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L278
.L284:
	fcpy,sgl %fr5R,%fr4R
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 8
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r7,160(%r30)
	copy %r25,%r7
	ldo -48(%r30),%r29
	std %r6,-152(%r30)
	copy %r26,%r6
	std %r5,-144(%r30)
	copy %r23,%r5
	copy %r25,%r23
	std %r4,-136(%r30)
	copy %r27,%r4
	std %r3,-128(%r30)
	copy %r24,%r3
	b,l __unordtf2,%r2
	copy %r26,%r24
	cmpb,*<> %r0,%r28,.L295
	copy %r4,%r27
	copy %r27,%r4
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r5,%r25
	cmpb,*<> %r0,%r28,.L297
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L291
	extrd,u %r6,0,1,%r19
	cmpb,*= %r0,%r19,.L301
	copy %r3,%r28
.L297:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L291:
	copy %r3,%r24
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L300
.L295:
	copy %r3,%r28
.L301:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L300:
	copy %r6,%r3
	b .L295
	copy %r7,%r5
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.align 8
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT's.0,%r27
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L305
	copy %r1,%r28
	addil LT'digits,%r27
	ldd RT's.0(%r28),%r28
	ldd RT'digits(%r1),%r21
	copy %r28,%r19
.L304:
	extrd,u %r31,63,6,%r20
	ldb %r20(%r21),%r20
	stb %r20,0(%r19)
	extrd,u %r31,57,58,%r31
	cmpb,*<> %r0,%r31,.L304
	ldo 1(%r19),%r19
	bve (%r2)
	stb %r0,0(%r19)
.L305:
	ldd RT's.0(%r1),%r28
	copy %r28,%r19
	bve (%r2)
	stb %r0,0(%r19)
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
	.align 8
.globl srand
	.type	srand, @function
srand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'seed,%r27
	ldo -1(%r26),%r26
	ldd RT'seed(%r1),%r28
	extrd,u %r26,63,32,%r26
	bve (%r2)
	std %r26,0(%r28)
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 8
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'seed,%r27
	ldd RT'seed(%r1),%r19
	ldd 0(%r19),%r28
	shladd,l %r28,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	depd,z %r31,52,53,%r31
	sub %r31,%r28,%r31
	depd,z %r31,55,56,%r20
	add,l %r31,%r20,%r31
	shladd,l %r31,1,%r28,%r31
	depd,z %r31,57,58,%r20
	add,l %r31,%r20,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,3,%r28,%r31
	depd,z %r31,58,59,%r20
	add,l %r31,%r20,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,1,%r28,%r31
	depd,z %r31,56,57,%r31
	sub %r31,%r28,%r31
	shladd,l %r31,3,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,1,%r28,%r31
	shladd,l %r31,2,%r28,%r28
	ldo 1(%r28),%r28
	std %r28,0(%r19)
	bve (%r2)
	extrd,u %r28,30,31,%r28
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 8
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*=,n %r0,%r25,.L315
	ldd 0(%r25),%r28
	std %r25,8(%r26)
	std %r28,0(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L309:
	bve,n (%r2)
.L315:
	std %r25,8(%r26)
	bve (%r2)
	std %r25,0(%r26)
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 8
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldd 0(%r26),%r28
	cmpb,*=,n %r0,%r28,.L317
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L317:
	ldd 8(%r26),%r31
	cmpclr,*= %r0,%r31,%r0
	std %r28,0(%r31)
.L316:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 8
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=224,CALLS,SAVE_RP,ENTRY_GR=13
	.ENTRY
	std %r2,-16(%r30)
	ldo 224(%r30),%r30
	std %r13,-208(%r30)
	copy %r24,%r13
	std %r12,-200(%r30)
	copy %r25,%r12
	std %r9,-176(%r30)
	copy %r22,%r9
	std %r8,-168(%r30)
	copy %r26,%r8
	std %r7,-160(%r30)
	std %r11,-192(%r30)
	std %r10,-184(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	ldd 0(%r24),%r6
	cmpb,*= %r0,%r6,.L326
	copy %r23,%r7
	copy %r25,%r3
	ldi 0,%r5
	b .L328
	ldo -48(%r30),%r11
.L340:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r6,.L326
	add,l %r3,%r7,%r3
.L328:
	copy %r27,%r4
	copy %r3,%r25
	copy %r8,%r26
	copy %r11,%r29
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	copy %r3,%r10
	cmpb,*<> %r0,%r28,.L340
	copy %r4,%r27
.L325:
	copy %r10,%r28
.L341:
	ldd -240(%r30),%r2
	ldd -208(%r30),%r13
	ldd -200(%r30),%r12
	ldd -192(%r30),%r11
	ldd -184(%r30),%r10
	ldd -176(%r30),%r9
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -224(%r30),%r30
.L326:
	std %r6,-216(%r30)
	fldd -216(%r30),%fr22
	extrd,u %r6,31,32,%r19
	extrd,u %r7,31,32,%r28
	std %r7,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr22R,%fr24R,%fr23
	ldo 1(%r6),%r31
	std %r19,-216(%r30)
	fldd -216(%r30),%fr22
	std %r6,-216(%r30)
	fldd -216(%r30),%fr24
	std %r28,-216(%r30)
	fldd -216(%r30),%fr25
	xmpyu %fr24R,%fr25R,%fr24
	fstd %fr24,-216(%r30)
	ldd -216(%r30),%r28
	std %r7,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr22R,%fr24R,%fr22
	std %r31,0(%r13)
	fstd %fr22,-216(%r30)
	ldd -216(%r30),%r19
	add,l %r28,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r31
	add,l %r28,%r31,%r28
	cmpb,*= %r0,%r7,.L325
	add,l %r12,%r28,%r10
	copy %r7,%r24
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l memmove,%r2
	copy %r10,%r26
	b .L341
	copy %r10,%r28
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 8
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,ENTRY_GR=11
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r11,192(%r30)
	std %r10,-184(%r30)
	ldd 0(%r24),%r10
	std %r8,-168(%r30)
	copy %r23,%r8
	std %r7,-160(%r30)
	copy %r22,%r7
	std %r6,-152(%r30)
	std %r9,-176(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	cmpb,*= %r0,%r10,.L343
	copy %r26,%r6
	copy %r25,%r3
	ldi 0,%r5
	b .L345
	ldo -48(%r30),%r11
.L353:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r10,.L343
	add,l %r3,%r8,%r3
.L345:
	copy %r27,%r4
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	copy %r3,%r9
	cmpb,*<> %r0,%r28,.L353
	copy %r4,%r27
.L342:
	copy %r9,%r28
	ldd -208(%r30),%r2
	ldd -184(%r30),%r10
	ldd -176(%r30),%r9
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -192(%r30),%r11
.L343:
	b .L342
	ldi 0,%r9
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 8
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 8
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r19
	extrd,s %r19,63,8,%r31
	ldo -9(%r31),%r28
	cmpib,>>= 4,%r28,.L357
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L386
	ldi 43,%r28
.L357:
	ldi 32,%r21
.L381:
	ldb,mb 1(%r26),%r28
.L387:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L381
	extrd,u %r31,63,32,%r20
	xor %r21,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L387
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L386:
	cmpb,= %r28,%r31,.L361
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L384
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L370
	ldo 1(%r26),%r26
	ldi 1,%r22
.L364:
	ldi 0,%r28
.L367:
	ldo -48(%r31),%r31
	shladd,l %r28,2,%r28,%r28 
	extrw,s %r31,31,8,%r20
	add,l %r28,%r28,%r19
	ldb,mb 1(%r26),%r31
	sub %r19,%r20,%r28
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L367
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r22,.L366
	sub %r20,%r19,%r20
	extrd,s %r20,63,32,%r28
.L366:
	bve,n (%r2)
.L384:
	ldo -48(%r20),%r20
	cmpib,>>= 9,%r20,.L364
	ldi 0,%r22
.L370:
	ldi 0,%r28
.L385:
	bve,n (%r2)
.L361:
	ldb 1(%r26),%r31
	ldi 0,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L364
	ldo 1(%r26),%r26
	b .L385
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 8
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r19
	extrd,s %r19,63,8,%r31
	ldo -9(%r31),%r28
	cmpib,>>= 4,%r28,.L390
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L419
	ldi 43,%r28
.L390:
	ldi 32,%r21
.L414:
	ldb,mb 1(%r26),%r28
.L420:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L414
	extrd,u %r31,63,32,%r20
	xor %r21,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L420
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L419:
	cmpb,= %r28,%r31,.L394
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L417
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L403
	ldo 1(%r26),%r26
	ldi 1,%r22
.L397:
	ldi 0,%r28
.L400:
	shladd,l %r28,2,%r28,%r28
	ldo -48(%r31),%r31
	depd,z %r28,62,63,%r20
	extrd,s %r31,63,8,%r19
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L400
	sub %r20,%r19,%r28
	sub %r19,%r20,%r19
	cmpiclr,*<> 0,%r22,%r0
	copy %r19,%r28
	bve,n (%r2)
.L417:
	ldo -48(%r20),%r20
	cmpib,>>= 9,%r20,.L397
	ldi 0,%r22
.L403:
	ldi 0,%r28
.L418:
	bve,n (%r2)
.L394:
	ldb 1(%r26),%r31
	ldi 0,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L397
	ldo 1(%r26),%r26
	b .L418
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r19
	extrd,s %r19,63,8,%r31
	ldo -9(%r31),%r28
	cmpib,>>= 4,%r28,.L423
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L448
	ldi 43,%r28
.L423:
	ldi 32,%r21
.L445:
	ldb,mb 1(%r26),%r28
.L449:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L445
	extrd,u %r31,63,32,%r20
	xor %r21,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L449
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L448:
	cmpb,= %r28,%r31,.L427
	ldi 45,%r28
	cmpb,= %r28,%r31,.L447
	ldo -48(%r20),%r20
	cmpib,<< 9,%r20,.L435
	ldi 0,%r22
.L429:
	ldi 0,%r28
.L432:
	shladd,l %r28,2,%r28,%r28
	ldo -48(%r31),%r31
	depd,z %r28,62,63,%r20
	extrd,s %r31,63,8,%r19
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L432
	sub %r20,%r19,%r28
	sub %r19,%r20,%r19
	cmpiclr,*<> 0,%r22,%r0
	copy %r19,%r28
	bve,n (%r2)
.L447:
	ldb 1(%r26),%r31
	ldi 1,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L429
	ldo 1(%r26),%r26
.L435:
	bve (%r2)
	ldi 0,%r28
.L427:
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L435
	ldo 1(%r26),%r26
	b .L429
	ldi 0,%r22
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 8
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,ENTRY_GR=10,ENTRY_FR=13
	.ENTRY
	std %r2,-16(%r30)
	ldo 208(%r30),%r30
	ldo -128(%r30),%r1
	std %r9,-184(%r30)
	copy %r22,%r9
	std %r8,-176(%r30)
	copy %r26,%r8
	std %r7,-168(%r30)
	copy %r25,%r7
	std %r5,-152(%r30)
	copy %r24,%r5
	std %r10,-192(%r30)
	std %r6,-160(%r30)
	std %r4,-144(%r30)
	std %r3,-136(%r30)
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	std %r23,-200(%r30)
	cmpb,*= %r0,%r24,.L451
	fldd -200(%r30),%fr12
	extrd,u %r23,31,32,%r28
	ldo -48(%r30),%r10
	std %r28,-200(%r30)
	b .L454
	fldd -200(%r30),%fr13
.L463:
	cmpb,*=,n %r0,%r28,.L450
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	cmpb,*= %r0,%r5,.L451
	add,l %r3,%r28,%r7
.L454:
	extrd,u %r5,62,63,%r6
.L464:
	std %r6,-200(%r30)
	extrd,u %r5,30,31,%r3
	fldd -200(%r30),%fr22
	std %r3,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr12R,%fr24R,%fr24
	xmpyu %fr13R,%fr22R,%fr23
	fstd %fr24,-200(%r30)
	fcpy,dbl %fr22,%fr24
	ldd -200(%r30),%r3
	xmpyu %fr12R,%fr24R,%fr22
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r3
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r28
	copy %r27,%r4
	copy %r8,%r26
	depd,z %r3,31,32,%r3
	copy %r10,%r29
	add,l %r3,%r28,%r3
	add,l %r7,%r3,%r3
	copy %r3,%r25
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	copy %r4,%r27
	cmpib,<= 0,%r28,.L463
	uaddcm %r5,%r6,%r5
	copy %r6,%r5
	cmpb,*<> %r0,%r5,.L464
	extrd,u %r5,62,63,%r6
.L451:
	ldi 0,%r3
.L450:
	copy %r3,%r28
	ldo -128(%r30),%r1
	fldd,ma 8(%r1),%fr13
	ldd -224(%r30),%r2
	ldd -192(%r30),%r10
	ldd -184(%r30),%r9
	ldd -176(%r30),%r8
	ldd -168(%r30),%r7
	ldd -160(%r30),%r6
	ldd -152(%r30),%r5
	ldd -144(%r30),%r4
	ldd -136(%r30),%r3
	fldd,ma 8(%r1),%fr12
	bve (%r2)
	ldo -208(%r30),%r30
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=224,CALLS,SAVE_RP,ENTRY_GR=11,ENTRY_FR=13
	.ENTRY
	std %r2,-16(%r30)
	ldo 224(%r30),%r30
	ldo -136(%r30),%r1
	std %r10,-200(%r30)
	extrd,u %r23,31,32,%r28
	extrd,s %r24,63,32,%r10
	std %r9,-192(%r30)
	ldo -48(%r30),%r9
	std %r8,-184(%r30)
	copy %r21,%r8
	std %r7,-176(%r30)
	copy %r22,%r7
	std %r6,-168(%r30)
	copy %r26,%r6
	std %r5,-160(%r30)
	copy %r25,%r5
	std %r11,-208(%r30)
	std %r4,-152(%r30)
	std %r3,-144(%r30)
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	std %r23,-216(%r30)
	fldd -216(%r30),%fr12
	std %r28,-216(%r30)
	cmpib,= 0,%r24,.L470
	fldd -216(%r30),%fr13
.L479:
	extrw,s %r10,30,31,%r28
.L481:
	std %r28,-216(%r30)
	extrd,s %r10,62,63,%r11
	fldd -216(%r30),%fr22
	extrd,u %r11,31,32,%r3
	std %r3,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr12R,%fr24R,%fr24
	fstd %fr24,-216(%r30)
	xmpyu %fr13R,%fr22R,%fr23
	ldd -216(%r30),%r3
	xmpyu %fr12R,%fr22R,%fr22
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r28
	fstd %fr22,-216(%r30)
	add,l %r3,%r28,%r3
	ldd -216(%r30),%r28
	copy %r27,%r4
	copy %r8,%r24
	copy %r6,%r26
	copy %r9,%r29
	depd,z %r3,31,32,%r3
	add,l %r3,%r28,%r3
	add,l %r5,%r3,%r3
	copy %r3,%r25
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpb,*= %r0,%r28,.L465
	copy %r4,%r27
	cmpib,>= 0,%r28,.L468
	ldo -1(%r10),%r10
	fstd %fr12,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r5
	extrw,s %r10,30,31,%r28
	cmpib,<> 0,%r28,.L479
	extrd,s %r28,63,32,%r10
.L470:
	ldi 0,%r3
.L465:
	copy %r3,%r28
	ldo -136(%r30),%r1
	fldd,ma 8(%r1),%fr13
	ldd -240(%r30),%r2
	ldd -208(%r30),%r11
	ldd -200(%r30),%r10
	ldd -192(%r30),%r9
	ldd -184(%r30),%r8
	ldd -176(%r30),%r7
	ldd -168(%r30),%r6
	ldd -160(%r30),%r5
	ldd -152(%r30),%r4
	ldd -144(%r30),%r3
	fldd,ma 8(%r1),%fr12
	bve (%r2)
	ldo -224(%r30),%r30
.L468:
	cmpb,*= %r0,%r11,.L470
	copy %r11,%r10
	b .L481
	extrw,s %r10,30,31,%r28
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 8
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	extrd,s %r26,63,32,%r20
	extrd,s %r25,63,32,%r19
	copy %r20,%r26
	copy %r19,%r25
	.IMPORT $$divI,MILLICODE
	b,l $$divI,%r2
	ldi 0,%r31
	copy %r19,%r25
	copy %r29,%r21
	copy %r20,%r26
	ldo 64(%r30),%r30
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r2
	copy %r31,%r28
	copy %r29,%r19
	ldd -80(%r30),%r2
	depd %r21,0+32-1,32,%r31
	depd %r19,32+32-1,32,%r31
	extrd,u %r31,31,32,%r19
	extrd,u %r31,63,32,%r31
	depd %r19,0+32-1,32,%r28
	depd %r31,32+32-1,32,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	ldo -48(%r30),%r29
	std %r5,-136(%r30)
	copy %r26,%r5
	std %r4,-128(%r30)
	copy %r27,%r4
	std %r3,-120(%r30)
	b,l __divdi3,%r2
	copy %r25,%r3
	copy %r4,%r27
	copy %r3,%r25
	copy %r5,%r26
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r28,%r3
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	copy %r28,%r29
	ldd -176(%r30),%r2
	copy %r3,%r28
	ldd -120(%r30),%r3
	bve (%r2)
	ldo -160(%r30),%r30
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 8
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 8
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	ldo -48(%r30),%r29
	std %r5,-136(%r30)
	copy %r26,%r5
	std %r4,-128(%r30)
	copy %r27,%r4
	std %r3,-120(%r30)
	b,l __divdi3,%r2
	copy %r25,%r3
	copy %r4,%r27
	copy %r3,%r25
	copy %r5,%r26
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r28,%r3
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	copy %r28,%r29
	ldd -176(%r30),%r2
	copy %r3,%r28
	ldd -120(%r30),%r3
	bve (%r2)
	ldo -160(%r30),%r30
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 8
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 8
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	ldo -48(%r30),%r29
	std %r5,-136(%r30)
	copy %r26,%r5
	std %r4,-128(%r30)
	copy %r27,%r4
	std %r3,-120(%r30)
	b,l __divdi3,%r2
	copy %r25,%r3
	copy %r4,%r27
	copy %r3,%r25
	copy %r5,%r26
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r28,%r3
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	copy %r28,%r29
	ldd -176(%r30),%r2
	copy %r3,%r28
	ldd -120(%r30),%r3
	bve (%r2)
	ldo -160(%r30),%r30
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 8
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r31
	cmpb,*<> %r0,%r31,.L490
	extrd,u %r25,63,32,%r25
	b .L497
	copy %r31,%r28
.L492:
	cmpib,= 0,%r28,.L493
	extrd,u %r28,63,32,%r31
.L490:
	cmpb,<>,n %r31,%r25,.L492
	ldw,mb 4(%r26),%r28
	bve (%r2)
	copy %r26,%r28
.L493:
	copy %r31,%r28
.L497:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r19
	ldw 0(%r25),%r20
	cmpb,= %r20,%r19,.L499
	ldi -1,%r28
	b,n .L507
.L501:
	ldw,mb 4(%r25),%r31
	extrd,u %r28,63,32,%r19
	cmpb,<> %r28,%r31,.L500
	extrd,u %r31,63,32,%r20
.L499:
	cmpb,*<>,n %r0,%r19,.L501
	ldw,mb 4(%r26),%r28
.L500:
	ldi -1,%r28
.L507:
	cmpclr,<<= %r20,%r19,%r0
	b,n .L502
	cmpclr,>>= %r20,%r19,%r19
	ldi 1,%r19
	extrd,s %r19,63,32,%r28
.L502:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r26,%r31
.L509:
	ldw 0(%r25),%r19
	stw %r19,0(%r31)
	ldo 4(%r31),%r31
	cmpb,*<> %r0,%r19,.L509
	ldo 4(%r25),%r25
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 8
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r28
	cmpib,=,n 0,%r28,.L514
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L516:
	cmpib,<>,n 0,%r31,.L516
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L514:
	bve (%r2)
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpclr,*<> %r0,%r24,%r0
	b,n .L525
.L535:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r31
	cmpclr,= %r28,%r31,%r0
	b,n .L537
	cmpb,*= %r0,%r28,.L538
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L535
	ldo 4(%r25),%r25
.L525:
	bve (%r2)
	copy %r24,%r28
.L538:
	ldw 0(%r25),%r31
.L537:
	cmpclr,<<= %r31,%r28,%r0
	b,n .L536
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L536:
	bve (%r2)
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*<> %r0,%r24,.L540
	extrd,u %r25,63,32,%r25
	b .L547
	copy %r24,%r28
.L542:
	cmpb,*= %r0,%r24,.L543
	ldo 4(%r26),%r26
.L540:
	ldw 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L542
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L543:
	copy %r24,%r28
.L547:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpclr,*<> %r0,%r24,%r0
	b,n .L555
.L565:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,<> %r19,%r31,.L564
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L565
	ldo 4(%r25),%r25
.L555:
	bve (%r2)
	copy %r24,%r28
.L564:
	extrd,u %r31,63,32,%r28
	cmpb,<< %r31,%r19,.L566
	extrd,u %r19,63,32,%r20
	cmpclr,>>= %r20,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L566:
	bve (%r2)
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	cmpb,*= %r0,%r24,.L568
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L568:
	copy %r3,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r25,%r26,.L590
	copy %r26,%r28
	copy %r26,%r20
	copy %r25,%r19
	sub %r26,%r25,%r21
	depd,z %r24,61,62,%r22
	cmpb,*>> %r22,%r21,.L574
	ldo -1(%r24),%r31
	cmpclr,*<> %r0,%r24,%r0
	b,n .L590
	cmpib,*>>=,n 8,%r31,.L584
	or %r25,%r26,%r21
	extrd,u %r21,63,3,%r21
	ldo -1(%r21),%r21
	cmpb,*<= %r0,%r21,.L604
	ldo 4(%r25),%r21
	cmpb,*= %r21,%r26,.L585
	extrd,u %r24,62,63,%r22
	ldi 0,%r31
.L579:
	ldd 0(%r19),%r21
	std %r21,0(%r20)
	ldo 1(%r31),%r31
	ldo 8(%r19),%r19
	cmpb,*<> %r22,%r31,.L579
	ldo 8(%r20),%r20
	extrd,u %r24,63,1,%r31
	cmpb,*= %r0,%r31,.L590
	depdi 0,63,1,%r24
	ldw,s %r24(%r25),%r31
	shladd,l %r24,2,%r28,%r24
	stw %r31,0(%r24)
.L590:
	bve,n (%r2)
.L574:
	cmpb,*= %r0,%r24,.L590
	nop
	shladd,l %r31,2,%r25,%r19
	shladd,l %r31,2,%r26,%r31
.L577:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	ldo -4(%r31),%r31
	copy %r19,%r20
	cmpb,*<> %r20,%r25,.L577
	ldo -4(%r19),%r19
	bve,n (%r2)
.L584:
	copy %r26,%r19
	b .L602
	ldo 4(%r25),%r21
.L605:
	ldo 4(%r21),%r21
.L602:
	ldw -4(%r21),%r20
	stw %r20,0(%r19)
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L605
	ldo 4(%r19),%r19
	bve,n (%r2)
.L604:
.L585:
	b .L602
	copy %r28,%r19
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 8
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	extrd,u %r25,63,32,%r25
	cmpb,*= %r0,%r24,.L607
	ldo -1(%r24),%r22
	cmpib,*>>= 5,%r22,.L612
	extrd,u %r26,61+1-1,1,%r31
	cmpb,*=,n %r0,%r31,.L613
	ldo 4(%r26),%r23
	stw %r25,0(%r26)
	ldo -2(%r24),%r22
.L609:
	sub %r24,%r31,%r24
	ldi 0,%r20
	extrd,u %r24,62,63,%r21
	depd %r25,0+32-1,32,%r20
	shladd,l %r31,2,%r28,%r31
	depd %r25,32+32-1,32,%r20
	ldi 0,%r19
.L610:
	std %r20,0(%r31)
	ldo 1(%r19),%r19
	cmpb,*<> %r21,%r19,.L610
	ldo 8(%r31),%r31
	extrd,u %r24,63,1,%r31
	cmpb,*= %r0,%r31,.L607
	depdi 0,63,1,%r24
	sub %r22,%r24,%r22
	shladd,l %r24,2,%r23,%r31
.L608:
	cmpb,*= %r0,%r22,.L607
	stw %r25,0(%r31)
	cmpib,*= 1,%r22,.L607
	stw %r25,4(%r31)
	cmpib,*= 2,%r22,.L607
	stw %r25,8(%r31)
	cmpib,*= 3,%r22,.L607
	stw %r25,12(%r31)
	cmpib,*= 4,%r22,.L607
	stw %r25,16(%r31)
	stw %r25,20(%r31)
.L607:
	bve,n (%r2)
.L613:
	b .L609
	copy %r26,%r23
.L612:
	b .L608
	copy %r26,%r31
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 8
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*<<= %r25,%r26,.L637
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L636
	add,l %r25,%r24,%r25
.L639:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L639
	stb,mb %r31,-1(%r25)
.L636:
	bve,n (%r2)
.L637:
	cmpb,*= %r25,%r26,.L636
	nop
	cmpb,*= %r0,%r24,.L636
	nop
	ldo -1(%r24),%r28
	cmpib,*>>=,n 7,%r28,.L682
	or %r25,%r26,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<=,n %r0,%r28,.L682
	ldo 1(%r26),%r28
	sub %r25,%r28,%r31
	cmpib,*<< 6,%r31,.L684
	copy %r24,%r20
.L640:
	b .L645
	add,l %r26,%r24,%r26
.L685:
	ldo 1(%r28),%r28
.L645:
	ldb -1(%r28),%r31
	stb %r31,0(%r25)
	cmpb,*<> %r26,%r28,.L685
	ldo 1(%r25),%r25
	bve,n (%r2)
.L684:
	copy %r25,%r28
	depdi 0,63,3,%r20
	add,l %r26,%r20,%r19
.L642:
	ldd 0(%r26),%r31
	std %r31,0(%r28)
	ldo 8(%r26),%r26
	cmpb,*<> %r19,%r26,.L642
	ldo 8(%r28),%r28
	add,l %r25,%r20,%r25
	cmpb,*= %r20,%r24,.L636
	sub %r24,%r20,%r28
	ldb 0(%r26),%r31
	cmpib,*= 1,%r28,.L636
	stb %r31,0(%r25)
	ldb 1(%r26),%r31
	cmpib,*= 2,%r28,.L636
	stb %r31,1(%r25)
	ldb 2(%r26),%r31
	cmpib,*= 3,%r28,.L636
	stb %r31,2(%r25)
	ldb 3(%r26),%r31
	cmpib,*= 4,%r28,.L636
	stb %r31,3(%r25)
	ldb 4(%r26),%r31
	cmpib,*= 5,%r28,.L636
	stb %r31,4(%r25)
	ldb 5(%r26),%r31
	cmpib,*= 6,%r28,.L636
	stb %r31,5(%r25)
	ldb 6(%r26),%r28
	bve (%r2)
	stb %r28,6(%r25)
.L682:
	b .L640
	ldo 1(%r26),%r28
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 8
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	sub %r0,%r25,%r25
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 8
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 8
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	subi 32,%r25,%r25
	mtsar %r25
	shrpw %r26,%r26,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 8
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	shrpw %r26,%r26,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	sub %r0,%r25,%r25
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 8
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r25,31,4,%r25
	mtsarcm %r25
	extrd,u %r26,63,16,%r26
	sub %r0,%r25,%r25
	depw,z %r26,%sar,32,%r28
	extrw,u %r25,31,4,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r28,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,16,%r28
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 8
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r25,31,4,%r25
	mtsar %r25
	sub %r0,%r25,%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r26,63,16,%r26
	shrpw %r0,%r26,%sar,%r31
	mtsarcm %r28
	depw,z %r26,%sar,32,%r26
	or %r31,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,16,%r28
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 8
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r25,31,3,%r25
	mtsarcm %r25
	extrd,u %r26,63,8,%r26
	sub %r0,%r25,%r25
	depw,z %r26,%sar,32,%r28
	extrw,u %r25,31,3,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r28,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,8,%r28
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 8
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r25,31,3,%r25
	mtsar %r25
	sub %r0,%r25,%r28
	extrw,u %r28,31,3,%r28
	extrd,u %r26,63,8,%r26
	shrpw %r0,%r26,%sar,%r31
	mtsarcm %r28
	depw,z %r26,%sar,32,%r26
	or %r31,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,8,%r28
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,23,8,%r28
	depw %r26,23,8,%r28
	bve (%r2)
	extrd,u %r28,63,16,%r28
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	shrpw %r26,%r26,16,%r28
	depw %r28,15,8,%r28
	shrpw %r26,%r28,8,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	permh,3210 %r26,%r31
	hshl %r31,8,%r28
	hshr,u %r31,8,%r31
	or %r28,%r31,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 8
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r26
	ldi 0,%r31
	b .L702
	ldi 32,%r20
.L700:
	cmpclr,<> %r20,%r19,%r0
	b,n .L701
.L702:
	mtsar %r31
	ldo 1(%r31),%r19
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	cmpb,*= %r0,%r28,.L700
	extrd,u %r19,63,32,%r31
	extrd,s %r19,63,32,%r28
.L701:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpib,= 0,%r26,.L707
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L705
	ldi 1,%r28
.L706:
	extrw,s %r19,30,31,%r31
	ldo 1(%r28),%r28
	extrd,s %r31,63,32,%r19
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L706
	extrd,s %r28,63,32,%r28
.L705:
	bve,n (%r2)
.L707:
	bve (%r2)
	copy %r19,%r28
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4
	.align 4
.LC4:
	.word	-8388609
	.align 4
.LC5:
	.word	2139095039
	.text
	.align 8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'.LC4,%r27
	ldd RT'.LC4(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!< %fr4R,%fr22R
	ftest
	b .L711
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L712
	ldi 0,%r28
.L712:
	extrd,s %r28,63,32,%r28
.L711:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8
	.align 8
.LC8:
	.word	-1048577
	.word	-1
	.align 8
.LC9:
	.word	2146435071
	.word	-1
	.text
	.align 8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'.LC8,%r27
	ldd RT'.LC8(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L715
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L716
	ldi 0,%r28
.L716:
	extrd,s %r28,63,32,%r28
.L715:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC12:
	.word	-65537
	.word	-1
	.word	-1
	.word	-1
	.align 16
.LC13:
	.word	2147418111
	.word	-1
	.word	-1
	.word	-1
	.text
	.align 8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	addil LT'.LC12,%r27
	ldd RT'.LC12(%r1),%r19
	std %r2,-16(%r30)
	ldd 0(%r19),%r24
	std,ma %r7,160(%r30)
	ldi -1,%r7
	ldo -48(%r30),%r29
	std %r6,-152(%r30)
	copy %r7,%r23
	copy %r26,%r6
	std %r5,-144(%r30)
	copy %r25,%r5
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	b,l __lttf2,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r31
	cmpb,*> %r0,%r31,.L719
	ldi 1,%r28
	addil LT'.LC13,%r27
	copy %r28,%r3
	ldd RT'.LC13(%r1),%r28
	ldd 0(%r28),%r24
	copy %r7,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __gttf2,%r2
	copy %r5,%r25
	cmpclr,*< %r0,%r28,%r0
	b,n .L722
.L720:
	extrd,s %r3,63,32,%r28
.L719:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L722:
	b .L720
	ldi 0,%r3
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	ldo -48(%r30),%r29
	std %r25,-136(%r30)
	fldd -136(%r30),%fr22
	fcnv,w,dbl %fr22R,%fr4
	std %r3,-120(%r30)
	std %r4,-128(%r30)
	b,l __extenddftf2,%r2
	copy %r26,%r3
	std %r29,8(%r3)
	std %r28,0(%r3)
	ldd -160(%r30),%r2
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldo -144(%r30),%r30
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC16:
	.word	1073741824
	.align 4
.LC17:
	.word	1056964608
	.text
	.align 8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L725
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b,n .L725
	cmpib,> 0,%r25,.L737
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	fldw 0(%r28),%fr22R
.L726:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L740
	extrw,u %r25,0,1,%r28
.L728:
	fmpy,sgl %fr4R,%fr22R,%fr4R
	extrw,u %r25,0,1,%r28
.L740:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L725
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r28
	cmpib,<> 0,%r28,.L728
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r25,0,1,%r28
.L739:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r28
	cmpib,<> 0,%r28,.L728
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L739
	extrw,u %r25,0,1,%r28
.L725:
	bve,n (%r2)
.L737:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L726
	fldw 0(%r28),%fr22R
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC20:
	.word	1073741824
	.word	0
	.align 8
.LC21:
	.word	1071644672
	.word	0
	.text
	.align 8
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L742
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b,n .L742
	cmpib,> 0,%r25,.L754
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	fldd 0(%r28),%fr22
.L743:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L757
	extrw,u %r25,0,1,%r28
.L745:
	fmpy,dbl %fr4,%fr22,%fr4
	extrw,u %r25,0,1,%r28
.L757:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L742
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r28
	cmpib,<> 0,%r28,.L745
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r25,0,1,%r28
.L756:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r28
	cmpib,<> 0,%r28,.L745
	fmpy,dbl %fr22,%fr22,%fr22
	b .L756
	extrw,u %r25,0,1,%r28
.L742:
	bve,n (%r2)
.L754:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L743
	fldd 0(%r28),%fr22
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
	.align 16
.LC24:
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.align 16
.LC25:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.text
	.align 8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=9
	.ENTRY
	std %r2,-16(%r30)
	copy %r25,%r23
	std,ma %r9,176(%r30)
	extrd,s %r24,63,32,%r9
	ldo -48(%r30),%r29
	std %r7,-160(%r30)
	copy %r26,%r24
	copy %r26,%r7
	std %r6,-152(%r30)
	copy %r25,%r6
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	std %r8,-168(%r30)
	std %r5,-144(%r30)
	b,l __unordtf2,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L759
	copy %r28,%r3
	copy %r27,%r4
	copy %r7,%r24
	copy %r6,%r23
	copy %r7,%r26
	ldo -48(%r30),%r29
	b,l __addtf3,%r2
	copy %r6,%r25
	copy %r4,%r27
	copy %r29,%r25
	copy %r27,%r4
	copy %r7,%r24
	copy %r6,%r23
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r28,%r26
	cmpb,*= %r0,%r28,.L759
	copy %r4,%r27
	cmpib,> 0,%r9,.L773
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r5
.L761:
	extrw,u %r9,31,1,%r28
	cmpib,= 0,%r28,.L774
	extrw,u %r9,0,1,%r31
.L763:
	copy %r7,%r26
	copy %r6,%r25
	copy %r27,%r4
	copy %r5,%r24
	ldo -48(%r30),%r29
	b,l __multf3,%r2
	copy %r3,%r23
	copy %r4,%r27
	copy %r28,%r7
	copy %r29,%r6
	extrw,u %r9,0,1,%r31
.L774:
	add,l %r31,%r9,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L759
	extrd,s %r31,63,32,%r9
	ldo -48(%r30),%r8
.L764:
	copy %r5,%r24
	copy %r3,%r23
	copy %r5,%r26
	copy %r3,%r25
	copy %r8,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r5
	extrw,u %r9,31,1,%r31
	cmpib,<> 0,%r31,.L763
	copy %r29,%r3
	extrw,u %r9,0,1,%r31
	add,l %r31,%r9,%r31
	extrw,s %r31,30,31,%r31
	b .L764
	extrd,s %r31,63,32,%r9
.L759:
	copy %r7,%r28
	copy %r6,%r29
	ldd -192(%r30),%r2
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r9
.L773:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	b .L761
	ldd 0(%r28),%r5
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 8
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r24,.L776
	copy %r26,%r28
	ldo -1(%r24),%r31
	cmpib,*>>= 6,%r31,.L777
	or %r26,%r25,%r31
	extrd,u %r31,63,3,%r31
	cmpb,*<> %r0,%r31,.L777
	copy %r24,%r22
	copy %r26,%r31
	depdi 0,63,3,%r22
	add,l %r25,%r22,%r21
.L778:
	ldd 0(%r31),%r20
	ldd 0(%r25),%r19
	xor %r19,%r20,%r19
	ldo 8(%r25),%r25
	std %r19,0(%r31)
	cmpb,*<> %r21,%r25,.L778
	ldo 8(%r31),%r31
	add,l %r28,%r22,%r31
	cmpb,*= %r22,%r24,.L776
	sub %r24,%r22,%r19
	ldb 0(%r31),%r20
	ldb 0(%r25),%r21
	xor %r20,%r21,%r20
	cmpib,*= 1,%r19,.L776
	stb %r20,0(%r31)
	ldb 1(%r31),%r21
	ldb 1(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 2,%r19,.L776
	stb %r20,1(%r31)
	ldb 2(%r31),%r21
	ldb 2(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 3,%r19,.L776
	stb %r20,2(%r31)
	ldb 3(%r31),%r21
	ldb 3(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 4,%r19,.L776
	stb %r20,3(%r31)
	ldb 4(%r31),%r21
	ldb 4(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 5,%r19,.L776
	stb %r20,4(%r31)
	ldb 5(%r31),%r21
	ldb 5(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 6,%r19,.L776
	stb %r20,5(%r31)
	ldb 6(%r31),%r20
	ldb 6(%r25),%r19
	xor %r19,%r20,%r19
	stb %r19,6(%r31)
.L776:
	bve,n (%r2)
.L777:
	add,l %r25,%r24,%r24
	copy %r28,%r31
.L780:
	ldb 0(%r31),%r20
	ldb 0(%r25),%r19
	xor %r19,%r20,%r19
	ldo 1(%r31),%r31
	ldo 1(%r25),%r25
	cmpb,*<> %r25,%r24,.L780
	stb %r19,-1(%r31)
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 8
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r31
	cmpib,= 0,%r31,.L812
	copy %r26,%r28
	copy %r26,%r31
	ldb,mb 1(%r31),%r19
.L822:
	extrw,s %r19,31,8,%r19
	cmpib,<>,n 0,%r19,.L822
	ldb,mb 1(%r31),%r19
.L820:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L809
.L821:
	ldb 0(%r25),%r19
	stb %r19,0(%r31)
	extrd,s %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L811
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L821
	ldo 1(%r31),%r31
.L809:
	stb %r0,0(%r31)
.L811:
	bve,n (%r2)
.L812:
	b .L820
	copy %r26,%r31
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 8
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 0,%r28
	cmpb,*= %r28,%r25,.L823
	add,l %r26,%r28,%r31
.L832:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L826
.L823:
	bve,n (%r2)
.L826:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L832
	add,l %r26,%r28,%r31
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*= %r0,%r20,.L838
	copy %r26,%r28
	b .L837
	copy %r25,%r19
.L836:
	cmpb,= %r20,%r31,.L835
	ldo 1(%r19),%r19
.L837:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L836
	nop
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L837
	copy %r25,%r19
.L838:
	copy %r20,%r28
.L835:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 8
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r25,63,32,%r25
	ldi 0,%r28
.L844:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r31,%r25,%r0
	copy %r26,%r28
.L843:
	cmpb,*<> %r0,%r31,.L844
	ldo 1(%r26),%r26
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 8
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r25),%r22
	extrd,s %r22,63,8,%r22
	cmpb,*= %r0,%r22,.L858
	copy %r25,%r31
	ldb,mb 1(%r31),%r28
.L870:
	extrw,s %r28,31,8,%r28
	cmpib,<>,n 0,%r28,.L870
	ldb,mb 1(%r31),%r28
	cmpb,*= %r25,%r31,.L858
	sub %r31,%r25,%r28
	ldo -1(%r25),%r23
	b .L867
	add,l %r23,%r28,%r23
.L868:
	cmpb,*= %r0,%r28,.L846
	ldo 1(%r26),%r26
.L867:
	ldb 0(%r26),%r19
.L871:
	extrd,s %r19,63,8,%r28
	cmpb,<> %r22,%r28,.L868
	extrd,u %r19,63,8,%r19
	copy %r25,%r21
	b .L850
	copy %r26,%r28
.L869:
	xor %r31,%r19,%r20
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r20,31,8,%r20
	subi 0,%r20,%r20
	sub %r0,%r31,%r31
	ldo -1(%r20),%r20
	and %r31,%r20,%r31
	bb,>=,n %r31,24,.L851
	ldb,mb 1(%r28),%r19
	extrd,u %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L851
	ldo 1(%r21),%r21
.L850:
	cmpb,*<> %r23,%r21,.L869
	ldb 0(%r21),%r31
.L851:
	ldb 0(%r21),%r28
	cmpb,=,n %r19,%r28,.L858
	ldo 1(%r26),%r26
	b .L871
	ldb 0(%r26),%r19
.L858:
	copy %r26,%r28
.L846:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 8
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr4,%fr0
	ftest
	b,n .L879
	fcmp,dbl,!> %fr4,%fr0
	ftest
	b,n .L880
	bve,n (%r2)
.L880:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L875
	bve,n (%r2)
.L875:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L879:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L875
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 8
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r23,.L883
	copy %r26,%r28
	cmpb,*>> %r23,%r25,.L894
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r22
	cmpb,*<<,n %r22,%r26,.L894
	ldb 0(%r24),%r29
	ldo -1(%r23),%r23
	extrd,s %r29,63,8,%r29
	b .L889
	ldo 1(%r24),%r24
.L893:
	copy %r25,%r28
.L885:
	cmpclr,*<<= %r28,%r22,%r0
	b,n .L894
.L889:
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r31
	cmpb,<> %r29,%r31,.L893
	ldo 1(%r28),%r25
	cmpb,*= %r0,%r23,.L883
	copy %r24,%r19
.L888:
	copy %r25,%r31
	b .L886
	add,l %r25,%r23,%r26
.L887:
	cmpb,*= %r26,%r31,.L883
	ldo 1(%r19),%r19
.L886:
	ldb 0(%r31),%r21
	ldb 0(%r19),%r20
	cmpb,=,n %r20,%r21,.L887
	ldo 1(%r31),%r31
	cmpb,*<<,n %r22,%r25,.L894
	ldb 0(%r25),%r31
	extrw,s %r31,31,8,%r31
	cmpb,<> %r29,%r31,.L885
	ldo 1(%r25),%r28
	copy %r25,%r31
	copy %r24,%r19
	copy %r28,%r25
	b .L888
	copy %r31,%r28
.L894:
	ldi 0,%r28
.L883:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r5,144(%r30)
	copy %r26,%r5
	std %r3,-128(%r30)
	std %r4,-136(%r30)
	cmpb,*= %r0,%r24,.L900
	copy %r24,%r3
	ldo -48(%r30),%r29
	b,l memmove,%r2
	nop
.L900:
	add,l %r5,%r3,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC28:
	.word	-1074790400
	.word	0
	.align 8
.LC29:
	.word	-1075838976
	.word	0
	.align 8
.LC30:
	.word	1072693248
	.word	0
	.align 8
.LC31:
	.word	1071644672
	.word	0
	.text
	.align 8
.globl frexp
	.type	frexp, @function
frexp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr4,%fr0
	ftest
	b .L921
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L907
	ldi 0,%r19
	addil LT'.LC31,%r27
	ldd RT'.LC31(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L922
	fcmp,dbl,= %fr4,%fr0
	stw %r0,0(%r25)
.L904:
	bve,n (%r2)
.L916:
	fcpy,dbl %fr22,%fr4
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r31
	ldi 1,%r19
.L907:
	addil LT'.LC31,%r27
	ldi 0,%r28
	ldd RT'.LC31(%r1),%r20
	fldd 0(%r31),%fr23
	fldd 0(%r20),%fr22
.L913:
	fmpy,dbl %fr4,%fr22,%fr4
	ldo 1(%r28),%r28
	fcmp,dbl,!>= %fr4,%fr23
	ftest
	b .L913
	extrd,s %r28,63,32,%r28
	cmpb,*= %r0,%r19,.L904
	stw %r28,0(%r25)
.L928:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L921:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!<= %fr4,%fr22
	ftest
	b .L916
	fneg,dbl %fr4,%fr22
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r28
	fldd 0(%r28),%fr23
	fcmp,dbl,!> %fr4,%fr23
	ftest
	b .L917
	addil LT'.LC31,%r27
	b .L904
	stw %r0,0(%r25)
.L922:
	ftest
	b,n .L919
	stw %r0,0(%r25)
	b,n .L904
.L917:
	ldi 1,%r19
	ldd RT'.LC31(%r1),%r31
.L908:
	fcpy,dbl %fr22,%fr4
	ldi 0,%r28
	fldd 0(%r31),%fr22
.L915:
	fadd,dbl %fr4,%fr4,%fr4
	ldo -1(%r28),%r28
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L915
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r19,.L928
	stw %r28,0(%r25)
	b,n .L904
.L919:
	b .L908
	fcpy,dbl %fr4,%fr22
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r26,.L932
	copy %r26,%r31
	ldi 0,%r28
.L931:
	extrd,s %r31,63+1-1,1,%r19
	extrd,u %r31,62,63,%r31
	and %r19,%r25,%r19
	depd,z %r25,62,63,%r25
	cmpb,*<> %r0,%r31,.L931
	add,l %r28,%r19,%r28
	bve,n (%r2)
.L932:
	bve (%r2)
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	cmpb,<<= %r26,%r25,.L936
	ldi 1,%r19
.L935:
	cmpib,> 0,%r31,.L936
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L937
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L935
	nop
.L937:
	cmpb,*= %r0,%r19,.L945
	copy %r19,%r20
.L936:
	ldi 0,%r20
.L942:
	cmpb,>>,n %r31,%r28,.L941
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L941:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L942
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L945:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	extrd,s %r26,63,8,%r26
	extrw,s %r26,24,25,%r31
	std,ma %r4,128(%r30)
	extrd,s %r31,63,8,%r31
	cmpb,= %r31,%r26,.L958
	xor %r26,%r31,%r28
	ldo -48(%r30),%r29
	depw,z %r28,23,24,%r26
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldd -144(%r30),%r2
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L958:
	ldi 7,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r26,%r28
	extrd,s %r26,0,1,%r31
	std,ma %r4,128(%r30)
	cmpb,*= %r31,%r28,.L961
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L961:
	ldi 63,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L965
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L964:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L964
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L965:
	bve (%r2)
	copy %r31,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r24,%r21
	extrd,u %r24,63,32,%r22
	depwi 0,31,3,%r21
	extrd,u %r24,32+29-1,29,%r20
	cmpb,*>> %r25,%r26,.L971
	extrd,u %r21,63,32,%r29
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1005
.L971:
	cmpb,*=,n %r0,%r20,.L1006
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L974:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L974
	ldo 8(%r31),%r31
	cmpb,>>= %r21,%r22,.L967
	sub %r22,%r21,%r23
	ldo -1(%r23),%r28
	cmpib,>>= 7,%r28,.L1007
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r19
	add,l %r25,%r19,%r19
	sub %r31,%r19,%r19
	cmpib,*>>= 6,%r19,.L976
	add,l %r25,%r29,%r28
	or %r28,%r31,%r19
	extrd,u %r19,63,3,%r19
	ldo -1(%r19),%r19
	cmpb,*<= %r0,%r19,.L976
	extrw,u %r23,28,29,%r20
	extrd,u %r20,63,32,%r20
	shladd,l %r20,3,%r28,%r20
.L978:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L978
	ldo 8(%r31),%r31
	copy %r23,%r28
	extrw,u %r23,31,3,%r23
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r28
	cmpib,= 0,%r23,.L967
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 1(%r28),%r19
	cmpb,>>= %r19,%r22,.L967
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 2(%r28),%r19
	cmpb,>>= %r19,%r22,.L967
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 3(%r28),%r19
	cmpb,>>= %r19,%r22,.L967
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 4(%r28),%r19
	cmpb,>>= %r19,%r22,.L967
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 5(%r28),%r19
	cmpb,>>= %r19,%r22,.L967
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 6(%r28),%r28
	cmpb,>>= %r28,%r22,.L967
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r25
	add,l %r26,%r31,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L967:
	bve,n (%r2)
.L1005:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L967
	extrd,u %r24,63,32,%r24
.L982:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L982
	stb %r31,0(%r28)
	bve,n (%r2)
.L1006:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r22,.L967
	add,l %r25,%r29,%r28
.L976:
	uaddcm %r24,%r21,%r19
	ldo 1(%r25),%r25
	extrd,u %r19,63,32,%r19
	add,l %r25,%r29,%r25
	add,l %r19,%r25,%r19
.L980:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r19,%r28,.L980
	ldo 1(%r31),%r31
	bve,n (%r2)
.L1007:
	b .L976
	add,l %r25,%r29,%r28
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r24,30,31,%r23
	extrd,u %r24,63,32,%r22
	cmpb,*>> %r25,%r26,.L1012
	extrd,u %r23,63,32,%r19
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1037
.L1012:
	cmpb,*= %r0,%r19,.L1011
	ldo -1(%r23),%r28
	cmpib,>>= 6,%r28,.L1015
	or %r25,%r26,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<= %r0,%r28,.L1015
	ldo 2(%r25),%r28
	sub %r26,%r28,%r28
	cmpib,*>>= 4,%r28,.L1040
	copy %r25,%r28
	extrw,u %r24,28,29,%r21
	extrd,u %r21,63,32,%r20
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L1017:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L1017
	ldo 8(%r31),%r31
	depw,z %r21,29,30,%r28
	cmpb,= %r28,%r23,.L1011
	extrd,u %r28,63,32,%r31
	ldh,s %r31(%r25),%r19
	shladd,l %r31,1,%r26,%r31
	sth %r19,0(%r31)
	ldo 1(%r28),%r31
	cmpb,>>= %r31,%r23,.L1011
	extrd,u %r31,63,32,%r31
	ldh,s %r31(%r25),%r19
	shladd,l %r31,1,%r26,%r31
	ldo 2(%r28),%r28
	cmpb,>>= %r28,%r23,.L1011
	sth %r19,0(%r31)
	extrd,u %r28,63,32,%r28
	ldh,s %r28(%r25),%r31
	shladd,l %r28,1,%r26,%r28
	sth %r31,0(%r28)
.L1011:
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L1008
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
.L1041:
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L1008:
	bve,n (%r2)
.L1037:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L1008
	extrd,u %r24,63,32,%r24
.L1022:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L1022
	stb %r31,0(%r28)
	bve,n (%r2)
.L1015:
	copy %r25,%r28
.L1040:
	copy %r26,%r31
	shladd,l %r19,1,%r25,%r19
.L1019:
	ldh 0(%r28),%r20
	sth %r20,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r19,%r28,.L1019
	ldo 2(%r31),%r31
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L1008
	ldo -1(%r24),%r24
	b .L1041
	extrd,u %r24,63,32,%r24
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	copy %r24,%r21
	extrw,u %r24,29,30,%r2
	depwi 0,31,2,%r21
	extrd,u %r24,63,32,%r23
	extrd,u %r2,63,32,%r19
	cmpb,*>> %r25,%r26,.L1047
	extrd,u %r21,63,32,%r29
	add,l %r25,%r23,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1085
.L1047:
	cmpb,*=,n %r0,%r19,.L1086
	ldo -1(%r2),%r28
	cmpib,>>= 8,%r28,.L1049
	or %r26,%r25,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<= %r0,%r28,.L1049
	ldo 4(%r25),%r28
	cmpb,*= %r28,%r26,.L1049
	extrw,u %r24,28,29,%r22
	copy %r25,%r28
	extrd,u %r22,63,32,%r20
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L1050:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L1050
	ldo 8(%r31),%r31
	add,l %r22,%r22,%r22
	cmpb,= %r22,%r2,.L1053
	extrd,u %r22,63,32,%r22
	ldw,s %r22(%r25),%r28
	shladd,l %r22,2,%r26,%r22
	stw %r28,0(%r22)
.L1053:
	cmpb,>>= %r21,%r23,.L1042
	sub %r23,%r21,%r22
	ldo -1(%r22),%r28
	cmpib,>>= 7,%r28,.L1087
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r19
	add,l %r25,%r19,%r19
	sub %r31,%r19,%r19
	cmpib,*>>= 6,%r19,.L1045
	add,l %r25,%r29,%r28
	or %r28,%r31,%r19
	extrd,u %r19,63,3,%r19
	ldo -1(%r19),%r19
	cmpb,*<= %r0,%r19,.L1045
	extrw,u %r22,28,29,%r20
	extrd,u %r20,63,32,%r20
	shladd,l %r20,3,%r28,%r20
.L1055:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L1055
	ldo 8(%r31),%r31
	copy %r22,%r28
	extrw,u %r22,31,3,%r22
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r28
	cmpib,= 0,%r22,.L1042
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 1(%r28),%r19
	cmpb,>>= %r19,%r23,.L1042
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 2(%r28),%r19
	cmpb,>>= %r19,%r23,.L1042
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 3(%r28),%r19
	cmpb,>>= %r19,%r23,.L1042
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 4(%r28),%r19
	cmpb,>>= %r19,%r23,.L1042
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 5(%r28),%r19
	cmpb,>>= %r19,%r23,.L1042
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 6(%r28),%r28
	cmpb,>>= %r28,%r23,.L1042
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r25
	add,l %r26,%r31,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L1042:
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1085:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L1042
	extrd,u %r24,63,32,%r24
.L1059:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L1059
	stb %r31,0(%r28)
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1086:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r23,.L1042
	add,l %r25,%r29,%r28
.L1045:
	uaddcm %r24,%r21,%r19
	ldo 1(%r25),%r25
	extrd,u %r19,63,32,%r19
	add,l %r25,%r29,%r25
	add,l %r19,%r25,%r19
.L1057:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r19,%r28,.L1057
	ldo 1(%r31),%r31
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1049:
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r19,2,%r25,%r19
.L1052:
	ldw 0(%r28),%r20
	stw %r20,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r19,%r28,.L1052
	ldo 4(%r31),%r31
	b,n .L1053
.L1087:
	b .L1045
	add,l %r25,%r29,%r28
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 8
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	b,l $$remI,%r2
	nop
	ldd -16(%r30),%r2
	extrd,s %r29,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 8
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,uw,dbl %fr22R,%fr4
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 8
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,uw,sgl %fr22R,%fr4R
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,udw,dbl %fr22,%fr4
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,udw,sgl %fr22,%fr4R
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 8
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	.IMPORT $$remU,MILLICODE
	b,l $$remU,%r2
	nop
	ldd -16(%r30),%r2
	extrd,u %r29,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r31
	extrw,s %r31,16,17,%r28
	cmpib,<> 0,%r28,.L1097
	copy %r31,%r26
	extrd,u %r31,49,50,%r28
	cmpb,*<>,n %r0,%r28,.L1096
	extrw,s %r31,18,19,%r28
	cmpib,<>,n 0,%r28,.L1098
	extrw,s %r31,19,20,%r28
	cmpib,<>,n 0,%r28,.L1099
	extrw,s %r31,20,21,%r28
	cmpib,<>,n 0,%r28,.L1100
	extrw,s %r31,21,22,%r28
	cmpib,<>,n 0,%r28,.L1101
	extrw,s %r31,22,23,%r28
	cmpib,<>,n 0,%r28,.L1102
	extrw,s %r31,23,24,%r28
	cmpib,<>,n 0,%r28,.L1103
	extrw,s %r31,24,25,%r28
	cmpib,<>,n 0,%r28,.L1104
	extrw,s %r31,25,26,%r28
	cmpib,<>,n 0,%r28,.L1105
	extrw,s %r31,26,27,%r28
	cmpib,<>,n 0,%r28,.L1106
	extrw,s %r31,27,28,%r28
	cmpib,<>,n 0,%r28,.L1107
	extrw,s %r31,28,29,%r28
	cmpib,<>,n 0,%r28,.L1108
	extrw,s %r31,29,30,%r28
	cmpib,<> 0,%r28,.L1109
	extrw,s %r31,30,31,%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L1110
	cmpiclr,*<> 0,%r26,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L1096:
	bve,n (%r2)
.L1097:
	bve (%r2)
	ldi 0,%r28
.L1108:
	bve (%r2)
	ldi 12,%r28
.L1098:
	bve (%r2)
	ldi 2,%r28
.L1099:
	bve (%r2)
	ldi 3,%r28
.L1100:
	bve (%r2)
	ldi 4,%r28
.L1101:
	bve (%r2)
	ldi 5,%r28
.L1102:
	bve (%r2)
	ldi 6,%r28
.L1103:
	bve (%r2)
	ldi 7,%r28
.L1104:
	bve (%r2)
	ldi 8,%r28
.L1105:
	bve (%r2)
	ldi 9,%r28
.L1106:
	bve (%r2)
	ldi 10,%r28
.L1107:
	bve (%r2)
	ldi 11,%r28
.L1109:
	bve (%r2)
	ldi 13,%r28
.L1110:
	bve (%r2)
	ldi 14,%r28
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r28
	extrw,u %r26,31,1,%r26
	cmpiclr,= 0,%r26,%r0
	b,n .L1115
	extrd,s,*>= %r28,62,1,%r0
	b,n .L1116
	extrd,s,*>= %r28,61,1,%r0
	b,n .L1117
	extrd,s,*>= %r28,60,1,%r0
	b,n .L1118
	extrd,s,*>= %r28,59,1,%r0
	b,n .L1119
	extrd,s,*>= %r28,58,1,%r0
	b,n .L1120
	extrd,s,*>= %r28,57,1,%r0
	b,n .L1121
	extrd,s,*>= %r28,56,1,%r0
	b,n .L1122
	extrd,s,*>= %r28,55,1,%r0
	b,n .L1123
	extrd,s,*>= %r28,54,1,%r0
	b,n .L1124
	extrd,s,*>= %r28,53,1,%r0
	b,n .L1125
	extrd,s,*>= %r28,52,1,%r0
	b,n .L1126
	extrd,s,*>= %r28,51,1,%r0
	b,n .L1127
	extrd,s,*>= %r28,50,1,%r0
	b,n .L1128
	bb,*< %r28,49,.L1129
	extrw,s %r28,16,17,%r31
	cmpib,<> 0,%r31,.L1132
	ldi 16,%r28
	bve,n (%r2)
.L1115:
	bve (%r2)
	ldi 0,%r28
.L1116:
	bve (%r2)
	ldi 1,%r28
.L1127:
	bve (%r2)
	ldi 12,%r28
.L1132:
	bve (%r2)
	ldi 15,%r28
.L1117:
	bve (%r2)
	ldi 2,%r28
.L1118:
	bve (%r2)
	ldi 3,%r28
.L1119:
	bve (%r2)
	ldi 4,%r28
.L1120:
	bve (%r2)
	ldi 5,%r28
.L1121:
	bve (%r2)
	ldi 6,%r28
.L1122:
	bve (%r2)
	ldi 7,%r28
.L1123:
	bve (%r2)
	ldi 8,%r28
.L1124:
	bve (%r2)
	ldi 9,%r28
.L1125:
	bve (%r2)
	ldi 10,%r28
.L1126:
	bve (%r2)
	ldi 11,%r28
.L1128:
	bve (%r2)
	ldi 13,%r28
.L1129:
	bve (%r2)
	ldi 14,%r28
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC36:
	.word	1191182336
	.text
	.align 8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	addil LT'.LC36,%r27
	ldd RT'.LC36(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!>= %fr4R,%fr22R
	ldo 64(%r30),%r30
	ftest
	b .L1137
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	bve (%r2)
	ldo -64(%r30),%r30
.L1137:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	add,l %r28,%r31,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,29+1-1,1,%r28
	extrw,u %r26,31,1,%r19
	extrw,u %r26,30+1-1,1,%r31
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,27+1-1,1,%r28
	extrw,u %r26,28+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,25+1-1,1,%r28
	extrw,u %r26,26+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,23+1-1,1,%r28
	extrw,u %r26,24+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,21+1-1,1,%r28
	extrw,u %r26,22+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,19+1-1,1,%r28
	extrw,u %r26,20+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,17+1-1,1,%r28
	extrw,u %r26,18+1-1,1,%r19
	extrw,u %r26,16+1-1,1,%r26
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	add,l %r26,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,29+1-1,1,%r28
	extrw,u %r26,31,1,%r19
	extrw,u %r26,30+1-1,1,%r31
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,27+1-1,1,%r28
	extrw,u %r26,28+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,25+1-1,1,%r28
	extrw,u %r26,26+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,23+1-1,1,%r28
	extrw,u %r26,24+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,21+1-1,1,%r28
	extrw,u %r26,22+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,19+1-1,1,%r28
	extrw,u %r26,20+1-1,1,%r19
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	extrw,u %r26,17+1-1,1,%r28
	extrw,u %r26,18+1-1,1,%r19
	extrw,u %r26,16+1-1,1,%r26
	add,l %r31,%r19,%r31
	add,l %r31,%r28,%r31
	add,l %r26,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L1145
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L1144:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L1144
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1145:
	bve (%r2)
	copy %r31,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L1150
	extrd,u %r25,63,32,%r25
	cmpb,*=,n %r0,%r25,.L1151
	ldi 0,%r28
.L1149:
	extrw,s %r25,31+1-1,1,%r19
	add,l %r31,%r31,%r20
	and %r19,%r31,%r31
	extrd,u %r25,62,63,%r25
	add,l %r31,%r28,%r28
	extrd,u %r20,63,32,%r31
	cmpb,*<> %r0,%r25,.L1149
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1150:
	bve (%r2)
	copy %r31,%r28
.L1151:
	bve (%r2)
	copy %r25,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	extrd,s %r24,63,32,%r24
	cmpb,<<= %r26,%r25,.L1155
	ldi 1,%r19
.L1154:
	cmpib,> 0,%r31,.L1155
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L1156
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L1154
	nop
.L1156:
	cmpb,*= %r0,%r19,.L1164
	copy %r19,%r20
.L1155:
	ldi 0,%r20
.L1161:
	cmpb,>>,n %r31,%r28,.L1160
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L1160:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1161
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L1164:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L1178
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L1176
	ldi 1,%r28
	ldi 0,%r28
.L1176:
	bve,n (%r2)
.L1178:
	bve (%r2)
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L1182
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L1180
	ldi 1,%r28
	ldi 0,%r28
.L1180:
	bve,n (%r2)
.L1182:
	bve (%r2)
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	extrd,u %r26,31,32,%r31
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	extrd,u %r25,31,32,%r25
	std %r31,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r31,%r25,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r28,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	extrd,u %r26,31,32,%r31
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	extrd,u %r25,31,32,%r25
	std %r31,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r31,%r25,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r28,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,63,32,%r26
	cmpib,> 0,%r25,.L1195
	extrd,s %r25,63,32,%r19
	cmpb,*= %r0,%r19,.L1190
	ldi 0,%r24
.L1187:
	ldi 1,%r22
	ldi 0,%r28
	ldi 32,%r23
.L1189:
	extrw,s %r19,30,31,%r20
	extrw,s %r19,31+1-1,1,%r21
	xor %r22,%r23,%r19
	and %r21,%r26,%r21
	add,l %r21,%r28,%r21
	add,l %r26,%r26,%r26
	extrw,s,>= %r19,31,8,%r28
	subi 0,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,24+1-1,1,%r28
	or,>= %r0,%r20,%r31
	subi 0,%r31,%r31
	ldo 1(%r22),%r22
	sub %r0,%r31,%r31
	extrd,s %r26,63,32,%r26
	extrw,u %r31,0,1,%r31
	extrd,s %r20,63,32,%r19
	and %r31,%r28,%r31
	extrd,u %r22,63,8,%r22
	extrd,u %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L1189
	extrd,s %r21,63,32,%r28
	cmpb,*= %r0,%r24,.L1188
	sub %r0,%r21,%r21
	extrd,s %r21,63,32,%r28
.L1188:
	bve,n (%r2)
.L1195:
	sub %r0,%r19,%r19
	ldi 1,%r24
	b .L1187
	extrd,s %r19,63,32,%r19
.L1190:
	bve (%r2)
	copy %r19,%r28
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*>,n %r0,%r26,.L1220
	ldi 1,%r28
	ldi 0,%r22
.L1197:
	cmpb,*<= %r0,%r25,.L1222
	extrd,u %r26,63,32,%r20
	sub %r0,%r25,%r25
	copy %r28,%r22
.L1222:
	extrd,u %r25,63,32,%r31
	cmpb,<<= %r26,%r25,.L1200
	ldi 1,%r19
.L1199:
	cmpib,>,n 0,%r31,.L1200
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r28
	extrd,u %r21,63,32,%r19
	cmpb,<< %r28,%r20,.L1221
	extrd,u %r28,63,32,%r31
.L1210:
	cmpb,*= %r0,%r19,.L1203
	copy %r19,%r28
.L1200:
	ldi 0,%r28
.L1206:
	cmpb,<<,n %r20,%r31,.L1205
	sub %r20,%r31,%r20
	or %r19,%r28,%r28
	extrd,u %r20,63,32,%r20
.L1205:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1206
	extrd,u %r31,62,63,%r31
.L1203:
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r22,%r0
	copy %r31,%r28
	bve,n (%r2)
.L1221:
	cmpib,<> 0,%r21,.L1199
	nop
	b,n .L1210
.L1220:
	sub %r0,%r26,%r26
	ldi 0,%r28
	b .L1197
	ldi 1,%r22
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 0,%r22
	cmpb,*<=,n %r22,%r26,.L1224
	sub %r0,%r26,%r26
	ldi 1,%r22
.L1224:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	cmpb,>> %r26,%r25,.L1225
	ldi 1,%r19
	b,n .L1245
.L1248:
	cmpiclr,<> 0,%r21,%r0
	b,n .L1247
.L1225:
	cmpib,>,n 0,%r31,.L1245
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,<< %r20,%r28,.L1248
	extrd,u %r20,63,32,%r31
.L1247:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L1249
.L1245:
	cmpb,>>,n %r31,%r28,.L1231
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
.L1231:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1245
	extrd,u %r31,62,63,%r31
.L1249:
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r22,%r0
	copy %r31,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r24,63,32,%r24
	extrd,u %r26,63,16,%r26
	extrd,u %r25,63,16,%r25
	cmpb,<<= %r26,%r25,.L1311
	ldi 1,%r19
	extrw,s %r25,31,16,%r28
	cmpiclr,<= 0,%r28,%r0
	b,n .L1312
.L1255:
	add,l %r19,%r19,%r31
	add,l %r25,%r25,%r28
	extrd,u %r28,63,16,%r28
	cmpb,>>= %r28,%r26,.L1253
	extrd,u %r31,63,16,%r20
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	bb,>=,n %r31,16,.L1253
	copy %r28,%r25
	extrw,s %r25,31,16,%r28
	cmpib,<= 0,%r28,.L1255
	copy %r20,%r19
.L1312:
	cmpb,>> %r25,%r26,.L1278
	ldi 0,%r20
	sub %r26,%r25,%r26
	copy %r19,%r20
	extrd,u %r26,63,16,%r26
.L1278:
	extrd,u %r19,47+16-1,16,%r21
	cmpb,*= %r0,%r21,.L1281
	extrd,u %r25,62,63,%r31
.L1259:
	cmpb,>> %r31,%r26,.L1318
	extrd,u %r19,46+16-1,16,%r28
	sub %r26,%r31,%r31
	or %r20,%r21,%r21
	extrd,u %r31,63,16,%r26
	extrd,u %r21,63,16,%r20
.L1318:
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,61,62,%r31
	cmpb,>>,n %r31,%r26,.L1261
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1261:
	extrd,u %r19,45+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,60,61,%r31
	cmpb,>>,n %r31,%r26,.L1262
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1262:
	extrd,u %r19,44+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,59,60,%r31
	cmpb,>>,n %r31,%r26,.L1263
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1263:
	extrd,u %r19,43+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,58,59,%r31
	cmpb,>>,n %r31,%r26,.L1264
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1264:
	extrd,u %r19,42+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,57,58,%r31
	cmpb,>>,n %r31,%r26,.L1265
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1265:
	extrd,u %r19,41+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,56,57,%r31
	cmpb,<<= %r31,%r26,.L1313
	or %r20,%r28,%r28
.L1266:
	extrd,u %r19,40+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,55,56,%r31
	cmpb,<<= %r31,%r26,.L1314
	or %r20,%r28,%r28
.L1267:
	extrd,u %r19,39+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,54,55,%r31
	cmpb,<<= %r31,%r26,.L1315
	or %r20,%r28,%r28
.L1268:
	extrd,u %r19,38+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,53,54,%r31
	cmpb,<<= %r31,%r26,.L1316
	or %r20,%r28,%r28
.L1269:
	extrd,u %r19,37+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,52,53,%r31
	cmpb,<<= %r31,%r26,.L1317
	or %r20,%r28,%r28
.L1270:
	extrd,u %r19,36+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,51,52,%r31
	cmpb,>>,n %r31,%r26,.L1271
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1271:
	extrd,u %r19,35+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,50,51,%r31
	cmpb,>>,n %r31,%r26,.L1272
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1272:
	extrd,u %r19,34+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1281
	extrd,u %r25,49,50,%r31
	cmpb,>> %r31,%r26,.L1273
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1273:
	extrw,u %r19,1+16-1,16,%r19
	cmpib,= 0,%r19,.L1281
	extrd,u %r25,48,49,%r25
	cmpb,>> %r25,%r26,.L1257
	ldi 0,%r28
	sub %r26,%r25,%r25
	depwi -1,31,1,%r20
	extrd,u %r25,63,16,%r28
	b .L1257
	extrd,u %r20,63,16,%r20
.L1253:
	cmpclr,*<> %r0,%r20,%r0
	b,n .L1281
	cmpb,>>,n %r28,%r26,.L1258
	sub %r26,%r28,%r26
	extrd,u %r19,63,15,%r21
	extrd,u %r25,63,15,%r31
	extrd,u %r26,63,16,%r26
	copy %r28,%r25
	b .L1259
	copy %r20,%r19
.L1281:
	copy %r26,%r28
.L1257:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L1313:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1266
	extrd,u %r28,63,16,%r20
.L1258:
	extrd,u %r19,63,15,%r21
	extrd,u %r25,63,15,%r31
	copy %r20,%r19
	copy %r28,%r25
	b .L1259
	ldi 0,%r20
.L1314:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1267
	extrd,u %r28,63,16,%r20
.L1315:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1268
	extrd,u %r28,63,16,%r20
.L1316:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1269
	extrd,u %r28,63,16,%r20
.L1317:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1270
	extrd,u %r28,63,16,%r20
.L1311:
	cmpb,<>,n %r26,%r25,.L1280
	copy %r19,%r20
	b .L1257
	ldi 0,%r28
.L1280:
	copy %r26,%r28
	b .L1257
	ldi 0,%r20
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	extrd,s %r24,63,32,%r24
	ldi 1,%r31
	cmpb,*<<= %r26,%r25,.L1321
	depdi,z 1,32,4,%r20
	and %r25,%r20,%r19
.L1344:
	cmpb,*<>,n %r0,%r19,.L1321
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L1342
	depd,z %r31,62,63,%r31
	cmpb,*= %r0,%r31,.L1343
	copy %r31,%r19
.L1321:
	ldi 0,%r19
.L1327:
	cmpb,*>>,n %r25,%r28,.L1326
	sub %r28,%r25,%r28
	or %r19,%r31,%r19
.L1326:
	extrd,u %r31,62,63,%r31
	cmpb,*<> %r0,%r31,.L1327
	extrd,u %r25,62,63,%r25
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
.L1342:
	cmpb,*<> %r0,%r31,.L1344
	and %r25,%r20,%r19
	copy %r31,%r19
.L1343:
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r25,26,.L1346
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	ldi 0,%r28
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
.L1347:
	depd,z %r26,31,32,%r26
	bve (%r2)
	or %r26,%r28,%r28
.L1346:
	cmpb,*= %r0,%r28,.L1349
	subi 31,%r28,%r20
	mtsar %r20
	extrd,u %r26,63,32,%r19
	subi 32,%r28,%r28
	depw,z %r19,%sar,32,%r31
	mtsar %r28
	extrd,s %r26,0+32-1,32,%r26
	shrpw %r0,%r19,%sar,%r19
	mtsar %r20
	depw,z %r26,%sar,32,%r26
	extrd,u %r31,63,32,%r28
	or %r19,%r26,%r19
	b .L1347
	extrd,s %r19,63,32,%r26
.L1349:
	bve (%r2)
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,25,.L1351
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	ldi 0,%r29
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	depd,z %r25,%sar,64,%r28
.L1351:
	cmpb,*= %r0,%r28,.L1354
	subi 63,%r28,%r19
	mtsar %r19
	subi 64,%r28,%r31
	depd,z %r26,%sar,64,%r28
	mtsar %r31
	shrpd %r0,%r25,%sar,%r31
	mtsar %r19
	or %r31,%r28,%r28
	bve (%r2)
	depd,z %r25,%sar,64,%r29
.L1354:
	copy %r26,%r28
	bve (%r2)
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	__ashlti3, .-__ashlti3
	.align 8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r25,26,.L1356
	extrd,s %r25,63,32,%r28
	extrd,s %r26,0+32-1,32,%r26
	subi 63,%r25,%r25
	extrw,s %r26,0,1,%r28
	mtsar %r25
	extrd,s %r28,63,32,%r28
	extrw,s %r26,%sar,32,%r31
	extrd,u %r31,63,32,%r31
.L1357:
	depd,z %r28,31,32,%r26
	bve (%r2)
	or %r26,%r31,%r28
.L1356:
	cmpb,*= %r0,%r28,.L1359
	mtsarcm %r28
	ldo -1(%r28),%r19
	extrd,s %r26,0+32-1,32,%r31
	extrw,s %r31,%sar,32,%r20
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	mtsar %r28
	extrd,s %r20,63,32,%r28
	shrpw %r0,%r26,%sar,%r19
	or %r31,%r19,%r31
	b .L1357
	extrd,u %r31,63,32,%r31
.L1359:
	bve (%r2)
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,25,.L1361
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,s %r26,0,1,%r28
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	extrd,s %r26,%sar,64,%r29
.L1361:
	cmpb,*= %r0,%r28,.L1364
	mtsar %r28
	subi 63,%r28,%r19
	shrpd %r0,%r25,%sar,%r29
	mtsar %r19
	subi 64,%r28,%r31
	extrd,s %r26,%sar,64,%r28
	extrd,u %r31,63,32,%r31
	mtsarcm %r31
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r29,%r29
.L1364:
	copy %r26,%r28
	bve (%r2)
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	__ashrti3, .-__ashrti3
	.align 8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	permh,3210 %r26,%r31
	hshl %r31,8,%r28
	hshr,u %r31,8,%r31
	or %r28,%r31,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	shrpw %r26,%r26,16,%r28
	depw %r28,15,8,%r28
	shrpw %r26,%r28,8,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	depwi,z -1,31,16,%r21
	cmpclr,<< %r21,%r26,%r21
	ldi 1,%r21
	depw,z %r21,27,28,%r21
	subi 16,%r21,%r22
	mtsar %r22
	depwi,z -1,23,8,%r20
	shrpw %r0,%r26,%sar,%r26
	and %r26,%r20,%r20
	ldo -1(%r20),%r20
	extrw,u %r20,0,1,%r20
	depw,z %r20,28,29,%r20
	subi 8,%r20,%r22
	mtsar %r22
	add,l %r20,%r21,%r20
	shrpw %r0,%r26,%sar,%r26
	ldi 240,%r19
	and %r26,%r19,%r19
	ldo -1(%r19),%r19
	extrw,u %r19,0,1,%r19
	depw,z %r19,29,30,%r19
	subi 4,%r19,%r21
	mtsar %r21
	ldi 12,%r31
	shrpw %r0,%r26,%sar,%r26
	add,l %r19,%r20,%r19
	and %r26,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	add,l %r31,%r31,%r31
	subi 2,%r31,%r20
	mtsar %r20
	shrpw %r0,%r26,%sar,%r26
	bb,< %r26,30,.L1370
	ldi 0,%r28
	subi 2,%r26,%r28
.L1370:
	add,l %r31,%r19,%r31
	add,l %r28,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 8
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	cmpiclr,*= 0,%r26,%r0
	ldi 0,%r25
	std %r2,-16(%r30)
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	std,ma %r4,128(%r30)
	ldo -1(%r28),%r28
	cmpiclr,*> 0,%r28,%r31
	ldi -1,%r31
	std %r3,-120(%r30)
	and %r31,%r26,%r26
	ldo -48(%r30),%r29
	extrd,u %r28,0,1,%r3
	or %r26,%r25,%r26
	b,l __clzdi2,%r2
	depw,z %r3,25,26,%r3
	ldd -144(%r30),%r2
	add,l %r3,%r28,%r28
	ldd -120(%r30),%r3
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__clzti2, .-__clzti2
	.align 8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,0+32-1,32,%r31
	extrd,s %r25,0+32-1,32,%r28
	cmpclr,<= %r28,%r31,%r0
	b,n .L1377
	cmpb,< %r28,%r31,.L1378
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1377
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1378
	bve (%r2)
	ldi 1,%r28
.L1377:
	bve (%r2)
	ldi 0,%r28
.L1378:
	bve (%r2)
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,0+32-1,32,%r31
	extrd,s %r25,0+32-1,32,%r28
	cmpclr,<= %r28,%r31,%r0
	b,n .L1384
	cmpb,<,n %r28,%r31,.L1383
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1384
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1384:
	bve (%r2)
	ldi -1,%r28
.L1383:
	bve (%r2)
	ldi 1,%r28
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 8
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpclr,*<= %r24,%r26,%r0
	b,n .L1389
	cmpclr,*>= %r24,%r26,%r0
	b,n .L1388
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1389
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1389:
	bve (%r2)
	ldi 0,%r28
.L1388:
	bve (%r2)
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__cmpti2, .-__cmpti2
	.align 8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,31,16,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	depw,z %r31,27,28,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,8,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,28,29,%r28
	mtsar %r28
	add,l %r28,%r31,%r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,4,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,29,30,%r28
	mtsar %r28
	add,l %r28,%r31,%r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,2,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	add,l %r28,%r28,%r28
	mtsar %r28
	add,l %r28,%r31,%r28
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,2,%r26
	uaddcm %r0,%r26,%r31
	extrw,u %r26,30,31,%r26
	extrw,s %r31,31+1-1,1,%r31
	subi 2,%r26,%r26
	and %r31,%r26,%r31
	add,l %r31,%r28,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 8
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	or,*>= %r0,%r25,%r28
	subi 0,%r28,%r28
	std %r2,-16(%r30)
	ldo -1(%r28),%r28
	cmpiclr,*> 0,%r28,%r31
	ldi -1,%r31
	std,ma %r4,128(%r30)
	and %r31,%r25,%r31
	std %r3,-120(%r30)
	ldo -48(%r30),%r29
	cmpiclr,*= 0,%r25,%r0
	ldi 0,%r26
	extrd,u %r28,0,1,%r3
	or %r26,%r31,%r26
	b,l __ctzdi2,%r2
	depw,z %r3,25,26,%r3
	ldd -144(%r30),%r2
	add,l %r3,%r28,%r28
	ldd -120(%r30),%r3
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__ctzti2, .-__ctzti2
	.align 8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	cmpb,*<> %r0,%r25,.L1394
	ldo -48(%r30),%r29
	cmpb,*<> %r0,%r26,.L1399
	copy %r25,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1394:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldd -144(%r30),%r2
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1399:
	b,l __ctzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo 65(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__ffsti2, .-__ffsti2
	.align 8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r25,26,.L1401
	extrd,s %r25,63,32,%r28
	extrd,u %r26,0+32-1,32,%r31
	mtsar %r25
	ldi 0,%r28
	shrpw %r0,%r31,%sar,%r31
	extrd,u %r31,63,32,%r31
.L1402:
	depd,z %r28,31,32,%r28
	bve (%r2)
	or %r28,%r31,%r28
.L1401:
	cmpb,*= %r0,%r28,.L1404
	mtsar %r28
	ldo -1(%r28),%r19
	extrd,u %r26,0+32-1,32,%r31
	shrpw %r0,%r31,%sar,%r20
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	mtsar %r28
	extrd,u %r20,63,32,%r28
	shrpw %r0,%r26,%sar,%r19
	or %r31,%r19,%r31
	b .L1402
	extrd,u %r31,63,32,%r31
.L1404:
	bve (%r2)
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,25,.L1406
	extrd,s %r24,63,32,%r28
	mtsar %r24
	ldi 0,%r28
	bve (%r2)
	shrpd %r0,%r26,%sar,%r29
.L1406:
	cmpb,*= %r0,%r28,.L1409
	mtsar %r28
	subi 64,%r28,%r31
	shrpd %r0,%r25,%sar,%r29
	shrpd %r0,%r26,%sar,%r28
	extrd,u %r31,63,32,%r31
	mtsarcm %r31
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r29,%r29
.L1409:
	copy %r26,%r28
	bve (%r2)
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	__lshrti3, .-__lshrti3
	.align 8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrw,u %r26,31,16,%r21
	std %r21,-56(%r30)
	fldd -56(%r30),%fr23
	extrw,u %r25,31,16,%r28
	std %r28,-56(%r30)
	extrw,u %r26,15,16,%r26
	fldd -56(%r30),%fr24
	std %r26,-56(%r30)
	xmpyu %fr23R,%fr24R,%fr25
	fldd -56(%r30),%fr22
	extrw,u %r25,15,16,%r25
	fstd %fr25,-56(%r30)
	xmpyu %fr24R,%fr22R,%fr24
	ldd -56(%r30),%r28
	extrw,u %r28,15,16,%r31
	std %r25,-56(%r30)
	fldd -56(%r30),%fr25
	xmpyu %fr23R,%fr25R,%fr23
	xmpyu %fr22R,%fr25R,%fr22
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r21
	fstd %fr23,-56(%r30)
	add,l %r31,%r21,%r31
	ldd -56(%r30),%r21
	extrw,u %r31,31,16,%r20
	fstd %fr22,-56(%r30)
	add,l %r20,%r21,%r20
	ldd -56(%r30),%r21
	extrw,u %r28,31,16,%r19
	extrw,u %r31,15,16,%r31
	ldi 0,%r28
	add,l %r31,%r21,%r31
	depw,z %r20,15,16,%r21
	extrw,u %r20,15,16,%r20
	add,l %r19,%r21,%r19
	add,l %r31,%r20,%r31
	depd %r19,32+32-1,32,%r28
	depd %r31,0+32-1,32,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrw,u %r26,31,16,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	extrw,u %r25,31,16,%r21
	std %r21,-56(%r30)
	extrw,u %r26,0+16-1,16,%r28
	fldd -56(%r30),%fr24
	std %r28,-56(%r30)
	xmpyu %fr23R,%fr24R,%fr25
	fldd -56(%r30),%fr22
	extrw,u %r25,0+16-1,16,%r19
	fstd %fr25,-56(%r30)
	ldd -56(%r30),%r28
	xmpyu %fr24R,%fr22R,%fr24
	extrd,s %r26,0+32-1,32,%r31
	std %r19,-56(%r30)
	extrd,s %r25,0+32-1,32,%r19
	fldd -56(%r30),%fr25
	xmpyu %fr23R,%fr25R,%fr23
	std %r19,-56(%r30)
	xmpyu %fr22R,%fr25R,%fr22
	fldd -56(%r30),%fr25
	extrw,u %r28,31,16,%r19
	std %r26,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr25R,%fr27R,%fr26
	std %r31,-56(%r30)
	fldd -56(%r30),%fr28
	extrw,u %r28,15,16,%r31
	std %r25,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr28R,%fr27R,%fr25
	ldi 0,%r28
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r21
	add,l %r31,%r21,%r31
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r21
	extrw,u %r31,31,16,%r20
	add,l %r20,%r21,%r20
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r21
	extrw,u %r31,15,16,%r31
	add,l %r31,%r21,%r31
	fstd %fr26,-56(%r30)
	depw,z %r20,15,16,%r21
	extrw,u %r20,15,16,%r20
	add,l %r19,%r21,%r19
	add,l %r31,%r20,%r31
	depd %r19,32+32-1,32,%r28
	ldd -56(%r30),%r19
	depd %r31,0+32-1,32,%r28
	fstd %fr25,-56(%r30)
	extrd,s %r28,0+32-1,32,%r31
	ldd -56(%r30),%r21
	add,l %r31,%r19,%r31
	add,l %r31,%r21,%r31
	depd %r31,0+32-1,32,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrd,u %r26,31,32,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	extrd,u %r25,31,32,%r28
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	xmpyu %fr24R,%fr22R,%fr24
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r29
	std %r28,-56(%r30)
	fldd -56(%r30),%fr23
	extrd,u %r29,31,32,%r28
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r25,%r28,%r25
	std %r26,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	extrd,u %r25,63,32,%r28
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r26
	add,l %r26,%r28,%r26
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r25,31,32,%r25
	add,l %r25,%r28,%r25
	depd,z %r26,31,32,%r28
	extrd,u %r29,63,32,%r29
	extrd,u %r26,31,32,%r26
	add,l %r29,%r28,%r29
	add,l %r25,%r26,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__mulddi3, .-__mulddi3
	.align 8
.globl __multi3
	.type	__multi3, @function
__multi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r25,-56(%r30)
	extrd,u %r25,31,32,%r19
	fldd -56(%r30),%fr24
	std %r19,-56(%r30)
	fldd -56(%r30),%fr25
	extrd,u %r23,31,32,%r19
	std %r24,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr25R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	std %r23,-56(%r30)
	fldd -56(%r30),%fr23
	std %r24,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr27R,%fr24R,%fr26
	extrd,u %r24,31,32,%r24
	std %r19,-56(%r30)
	xmpyu %fr24R,%fr23R,%fr27
	fldd -56(%r30),%fr22
	fstd %fr27,-56(%r30)
	xmpyu %fr23R,%fr25R,%fr27
	ldd -56(%r30),%r29
	xmpyu %fr25R,%fr22R,%fr25
	fstd %fr27,-56(%r30)
	xmpyu %fr24R,%fr22R,%fr27
	ldd -56(%r30),%r19
	fstd %fr27,-56(%r30)
	ldd -56(%r30),%r20
	extrd,u %r29,31,32,%r21
	std %r26,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr27R,%fr22R,%fr22
	extrd,u %r26,31,32,%r26
	fstd %fr22,-56(%r30)
	xmpyu %fr27R,%fr23R,%fr22
	ldd -56(%r30),%r31
	add,l %r19,%r21,%r19
	std %r24,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr27R,%fr24R,%fr24
	extrd,u %r19,63,32,%r21
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r24
	add,l %r20,%r21,%r20
	std %r26,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr23
	extrd,u %r19,31,32,%r19
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r26
	add,l %r28,%r24,%r28
	fstd %fr25,-56(%r30)
	ldd -56(%r30),%r21
	add,l %r19,%r21,%r19
	add,l %r31,%r26,%r31
	fstd %fr26,-56(%r30)
	depd,z %r20,31,32,%r21
	extrd,u %r20,31,32,%r20
	extrd,u %r29,63,32,%r29
	add,l %r19,%r20,%r19
	ldd -56(%r30),%r20
	fstd %fr22,-56(%r30)
	add,l %r29,%r21,%r29
	depd,z %r28,31,32,%r28
	ldd -56(%r30),%r21
	add,l %r28,%r20,%r28
	depd,z %r31,31,32,%r31
	add,l %r28,%r19,%r28
	add,l %r31,%r21,%r31
	add,l %r28,%r31,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__multi3, .-__multi3
	.align 8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bve (%r2)
	sub %r0,%r26,%r28
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 8
.globl __negti2
	.type	__negti2, @function
__negti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r25,%r29
	sub %r0,%r29,%r20
	sub,db %r0,%r28,%r19
	copy %r19,%r28
	bve (%r2)
	copy %r20,%r29
	.EXIT
	.PROCEND
	.size	__negti2, .-__negti2
	.align 8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,0+32-1,32,%r31
	xor %r31,%r26,%r26
	extrw,u %r26,15,16,%r31
	xor %r31,%r26,%r31
	ldil L'32768,%r28
	extrw,u %r31,23,24,%r26
	ldo -5738(%r28),%r28
	xor %r26,%r31,%r26
	extrw,u %r26,27,28,%r31
	xor %r31,%r26,%r31
	extrw,u %r31,31,4,%r31
	mtsar %r31
	shrpw %r0,%r28,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 8
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	xor %r25,%r26,%r25
	extrd,s %r25,0+32-1,32,%r19
	xor %r19,%r25,%r19
	extrw,u %r19,15,16,%r31
	xor %r31,%r19,%r31
	ldil L'32768,%r28
	extrw,u %r31,23,24,%r19
	ldo -5738(%r28),%r28
	xor %r19,%r31,%r19
	extrw,u %r19,27,28,%r31
	xor %r31,%r19,%r31
	extrw,u %r31,31,4,%r31
	mtsar %r31
	shrpw %r0,%r28,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	__parityti2, .-__parityti2
	.align 8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,0+16-1,16,%r31
	xor %r26,%r31,%r26
	extrw,u %r26,23,24,%r31
	ldil L'32768,%r28
	xor %r31,%r26,%r26
	ldo -5738(%r28),%r28
	extrw,u %r26,27,28,%r31
	xor %r31,%r26,%r31
	extrw,u %r31,31,4,%r31
	mtsar %r31
	shrpw %r0,%r28,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.section	.rodata.cst8
	.align 8
.LC38:
	.dword	6148914691236517205
	.align 8
.LC39:
	.dword	3689348814741910323
	.align 8
.LC40:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'.LC38,%r27
	ldd RT'.LC38(%r1),%r31
	ldd 0(%r31),%r31
	extrd,u %r26,62,63,%r28
	addil LT'.LC39,%r27
	and %r28,%r31,%r28
	ldd RT'.LC39(%r1),%r31
	sub %r26,%r28,%r26
	ldd 0(%r31),%r28
	extrd,u %r26,61,62,%r31
	and %r26,%r28,%r26
	and %r31,%r28,%r31
	add,l %r31,%r26,%r31
	addil LT'.LC40,%r27
	ldd RT'.LC40(%r1),%r19
	ldd 0(%r19),%r19
	extrd,u %r31,59,60,%r28
	add,l %r28,%r31,%r28
	and %r28,%r19,%r28
	extrd,u %r28,31,32,%r31
	add,l %r31,%r28,%r28
	extrw,u %r28,15,16,%r31
	add,l %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	add,l %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,7,%r28
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldil L'1431650304,%r31
	ldo 5461(%r31),%r31
	extrw,u %r26,0+31-1,31,%r28
	and %r28,%r31,%r28
	ldil L'252641280,%r31
	sub %r26,%r28,%r26
	ldo 3855(%r31),%r20
	ldil L'858996736,%r19
	extrw,u %r26,29,30,%r31
	ldo -3277(%r19),%r19
	and %r26,%r19,%r26
	and %r31,%r19,%r31
	add,l %r31,%r26,%r31
	extrw,u %r31,27,28,%r28
	add,l %r28,%r31,%r28
	and %r28,%r20,%r28
	extrw,u %r28,15,16,%r31
	add,l %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	add,l %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,6,%r28
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
	.align 8
.LC44:
	.dword	6148914691236517205
	.align 8
.LC45:
	.dword	3689348814741910323
	.align 8
.LC46:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	addil LT'.LC44,%r27
	ldd RT'.LC44(%r1),%r28
	std %r2,-16(%r30)
	copy %r25,%r29
	std,ma %r5,80(%r30)
	addil LT'.LC45,%r27
	ldd 0(%r28),%r5
	ldd RT'.LC45(%r1),%r28
	std %r4,-72(%r30)
	addil LT'.LC46,%r27
	ldd 0(%r28),%r31
	std %r3,-64(%r30)
	copy %r26,%r28
	extrd,u %r26,62,63,%r26
	shrpd %r28,%r25,1,%r25
	and %r26,%r5,%r3
	ldd RT'.LC46(%r1),%r2
	ldd 0(%r2),%r2
	and %r25,%r5,%r4
	sub %r29,%r4,%r29
	sub,db %r28,%r3,%r28
	ldd -72(%r30),%r4
	ldd -64(%r30),%r3
	extrd,u %r28,61,62,%r26
	and %r28,%r31,%r23
	and %r26,%r31,%r21
	and %r29,%r31,%r24
	copy %r28,%r25
	shrpd %r25,%r29,2,%r25
	and %r25,%r31,%r22
	add %r22,%r24,%r29
	add,dc %r21,%r23,%r28
	copy %r28,%r31
	extrd,u %r29,59,60,%r20
	depd,z %r31,3,4,%r31
	extrd,u %r28,59,60,%r19
	or %r31,%r20,%r20
	add %r20,%r29,%r29
	add,dc %r19,%r28,%r28
	and %r28,%r2,%r31
	and %r29,%r2,%r2
	add,l %r31,%r2,%r31
	extrd,u %r31,31,32,%r28
	ldd -96(%r30),%r2
	add,l %r28,%r31,%r28
	extrw,u %r28,15,16,%r31
	add,l %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	add,l %r28,%r31,%r28
	extrd,u %r28,63,8,%r28
	bve (%r2)
	ldd,mb -80(%r30),%r5
	.EXIT
	.PROCEND
	.size	__popcountti2, .-__popcountti2
	.section	.rodata.cst8
	.align 8
.LC50:
	.word	1072693248
	.word	0
	.text
	.align 8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r25,63,32,%r19
	fcpy,dbl %fr4,%fr22
	addil LT'.LC50,%r27
	ldd RT'.LC50(%r1),%r20
	fldd 0(%r20),%fr4
	extrw,u %r25,31,1,%r25
	cmpib,= 0,%r25,.L1423
	copy %r19,%r31
.L1425:
	fmpy,dbl %fr4,%fr22,%fr4
.L1423:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1424
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r28
	cmpib,<> 0,%r28,.L1425
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r31,0,1,%r28
.L1431:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r28
	cmpib,<> 0,%r28,.L1425
	fmpy,dbl %fr22,%fr22,%fr22
	b .L1431
	extrw,u %r31,0,1,%r28
.L1424:
	cmpiclr,<= 0,%r19,%r0
	b,n .L1430
	bve,n (%r2)
.L1430:
	fldd 0(%r20),%fr22
	bve (%r2)
	fdiv,dbl %fr22,%fr4,%fr4
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC52:
	.word	1065353216
	.text
	.align 8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r25,63,32,%r19
	fcpy,sgl %fr4R,%fr22R
	addil LT'.LC52,%r27
	ldd RT'.LC52(%r1),%r20
	fldw 0(%r20),%fr4R
	extrw,u %r25,31,1,%r25
	cmpib,= 0,%r25,.L1433
	copy %r19,%r31
.L1435:
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L1433:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1434
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r28
	cmpib,<> 0,%r28,.L1435
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r31,0,1,%r28
.L1441:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r28
	cmpib,<> 0,%r28,.L1435
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L1441
	extrw,u %r31,0,1,%r28
.L1434:
	cmpiclr,<= 0,%r19,%r0
	b,n .L1440
	bve,n (%r2)
.L1440:
	fldw 0(%r20),%fr22R
	bve (%r2)
	fdiv,sgl %fr22R,%fr4R,%fr4R
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,0+32-1,32,%r31
	extrd,u %r25,0+32-1,32,%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L1446
	cmpb,<< %r28,%r31,.L1447
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1446
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1447
	bve (%r2)
	ldi 1,%r28
.L1446:
	bve (%r2)
	ldi 0,%r28
.L1447:
	bve (%r2)
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,0+32-1,32,%r31
	extrd,u %r25,0+32-1,32,%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L1453
	cmpb,<<,n %r28,%r31,.L1452
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1453
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1453:
	bve (%r2)
	ldi -1,%r28
.L1452:
	bve (%r2)
	ldi 1,%r28
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 8
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpclr,*<<= %r24,%r26,%r0
	b,n .L1458
	cmpclr,*>>= %r24,%r26,%r0
	b,n .L1457
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1458
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1458:
	bve (%r2)
	ldi 0,%r28
.L1457:
	bve (%r2)
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.align 8
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.globl __ctzdi2
.globl __clzdi2
.globl __multf3
.globl __netf2
.globl __addtf3
.globl __extenddftf2
.globl __gttf2
.globl __moddi3
.globl __divdi3
.globl __lttf2
.globl __unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
