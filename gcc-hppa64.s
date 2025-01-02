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
	add,l %r25,%r24,%r20
	cmpb,*= %r0,%r24,.L6
	add,l %r26,%r24,%r21
	ldb,mb -1(%r20),%r24
.L50:
	stb,mb %r24,-1(%r21)
	cmpb,*<>,n %r21,%r28,.L50
	ldb,mb -1(%r20),%r24
.L6:
	bve,n (%r2)
.L5:
	cmpb,*= %r25,%r26,.L6
	nop
	cmpb,*= %r0,%r24,.L6
	ldo -1(%r24),%r31
	cmpib,*>>= 7,%r31,.L8
	ldo 1(%r25),%r1
	or %r25,%r26,%r1
	extrd,u %r1,63,3,%r19
	ldo -1(%r19),%r20
	cmpb,*<= %r0,%r20,.L8
	ldo 1(%r25),%r1
	sub %r26,%r1,%r21
	cmpib,*>>= 6,%r21,.L8
	copy %r24,%r22
	copy %r26,%r29
	depdi 0,63,3,%r22
	add,l %r25,%r22,%r23
.L10:
	ldd 0(%r25),%r26
	std %r26,0(%r29)
	ldo 8(%r25),%r25
	cmpb,*<> %r23,%r25,.L10
	ldo 8(%r29),%r29
	add,l %r28,%r22,%r31
	cmpb,*= %r22,%r24,.L6
	sub %r24,%r22,%r1
	ldb 0(%r25),%r24
	cmpib,*= 1,%r1,.L6
	stb %r24,0(%r31)
	ldb 1(%r25),%r19
	cmpib,*= 2,%r1,.L6
	stb %r19,1(%r31)
	ldb 2(%r25),%r20
	cmpib,*= 3,%r1,.L6
	stb %r20,2(%r31)
	ldb 3(%r25),%r21
	cmpib,*= 4,%r1,.L6
	stb %r21,3(%r31)
	ldb 4(%r25),%r22
	cmpib,*= 5,%r1,.L6
	stb %r22,4(%r31)
	ldb 5(%r25),%r23
	cmpib,*= 6,%r1,.L6
	stb %r23,5(%r31)
	ldb 6(%r25),%r25
	bve (%r2)
	stb %r25,6(%r31)
.L8:
	add,l %r28,%r24,%r26
	copy %r28,%r31
.L13:
	ldb -1(%r1),%r29
	stb %r29,0(%r31)
	ldo 1(%r31),%r31
	cmpb,*<> %r26,%r31,.L13
	ldo 1(%r1),%r1
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
	sub %r28,%r31,%r1
	bve (%r2)
	extrd,s %r1,63,32,%r28
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
	add,l %r26,%r24,%r1
	b .L94
	ldo -1(%r26),%r26
.L96:
	ldb 0(%r28),%r31
	cmpb,= %r25,%r31,.L93
	ldo -1(%r1),%r1
.L94:
	cmpb,*<> %r26,%r1,.L96
	copy %r1,%r28
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
	extrd,s %r31,63,8,%r1
	cmpb,*= %r0,%r1,.L102
	copy %r26,%r28
.L103:
	ldb,mb 1(%r25),%r19
	extrd,s %r19,63,8,%r20
	cmpb,*<> %r0,%r20,.L103
	stb,mb %r19,1(%r28)
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
	extrd,s %r31,63,8,%r20
	cmpb,*<> %r0,%r20,.L109
	copy %r26,%r28
	b,n .L108
.L111:
	extrd,s %r19,63,8,%r20
	cmpclr,*<> %r0,%r20,%r0
	b,n .L108
.L109:
	extrw,u %r20,31,8,%r1
	cmpb,<>,n %r25,%r1,.L111
	ldb,mb 1(%r28),%r19
.L108:
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
	b .L118
	copy %r26,%r28
.L121:
	cmpb,*= %r0,%r1,.L120
	ldo 1(%r28),%r28
.L118:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r1
	cmpb,<> %r25,%r1,.L121
	nop
	bve,n (%r2)
.L120:
	bve (%r2)
	copy %r1,%r28
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
	extrd,s %r31,63,8,%r20
	cmpb,=,n %r20,%r28,.L123
	extrd,u %r19,63,8,%r28
	b .L132
	extrw,u %r20,31,8,%r21
.L125:
	ldb,mb 1(%r25),%r1
	extrd,s %r19,63,8,%r28
	extrd,s %r1,63,8,%r20
	cmpb,<> %r20,%r28,.L130
	extrw,u %r20,31,8,%r21
.L123:
	cmpb,*<>,n %r0,%r28,.L125
	ldb,mb 1(%r26),%r19
	extrw,u %r20,31,8,%r21
	sub %r28,%r21,%r22
	bve (%r2)
	extrd,s %r22,63,32,%r28
.L130:
	extrd,u %r19,63,8,%r28
.L132:
	sub %r28,%r21,%r22
	bve (%r2)
	extrd,s %r22,63,32,%r28
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
	cmpib,= 0,%r28,.L136
	copy %r26,%r1
	ldb,mb 1(%r1),%r31
.L138:
	extrw,s %r31,31,8,%r19
	cmpib,<>,n 0,%r19,.L138
	ldb,mb 1(%r1),%r31
	bve (%r2)
	sub %r1,%r26,%r28
.L136:
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
	cmpb,*= %r0,%r24,.L146
	ldo -1(%r24),%r22
	copy %r25,%r20
	ldb 0(%r26),%r28
	cmpb,*<> %r0,%r28,.L143
	add,l %r25,%r22,%r29
	b .L155
	ldb 0(%r25),%r21
.L157:
	cmpb,*=,n %r29,%r20,.L148
	ldb,mb 1(%r26),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*= %r0,%r28,.L156
	ldo 1(%r20),%r22
	copy %r22,%r20
.L143:
	ldb 0(%r20),%r21
	xor %r21,%r28,%r19
	extrw,s,>= %r21,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r19,31,8,%r1
	subi 0,%r1,%r1
	sub %r0,%r31,%r23
	ldo -1(%r1),%r24
	and %r23,%r24,%r25
	bb,< %r25,24,.L157
	nop
.L148:
	extrd,s %r28,63,32,%r28
.L142:
	sub %r28,%r21,%r26
.L158:
	bve (%r2)
	extrd,s %r26,63,32,%r28
.L146:
	bve (%r2)
	copy %r24,%r28
.L156:
	b .L142
	ldb 1(%r20),%r21
.L155:
	b .L158
	sub %r28,%r21,%r26
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
	cmpib,*>= 1,%r24,.L159
	depdi 0,63,1,%r24
	add,l %r26,%r24,%r19
.L161:
	ldb 1(%r26),%r31
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r31,-2(%r25)
	cmpb,*<> %r19,%r26,.L161
	stb %r28,-1(%r25)
.L159:
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
	cmpiclr,<< 25,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,u %r1,63,1,%r28
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
	ldi 9,%r28
	ldi 32,%r31
	xor %r26,%r28,%r19
	xor %r26,%r31,%r1
	or,>= %r0,%r19,%r21
	subi 0,%r21,%r21
	or,>= %r0,%r1,%r20
	subi 0,%r20,%r20
	ldo -1(%r21),%r23
	ldo -1(%r20),%r22
	or %r23,%r22,%r24
	bve (%r2)
	extrd,u %r24,32+1-1,1,%r28
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
	cmpb,>>= %r19,%r26,.L169
	ldi 1,%r31
	ldi 0,%r31
.L169:
	ldi 127,%r1
	xor %r28,%r1,%r20
	or,>= %r0,%r20,%r21
	subi 0,%r21,%r21
	ldo -1(%r21),%r22
	extrw,u %r22,0,1,%r23
	or %r23,%r31,%r24
	bve (%r2)
	extrd,u %r24,63,1,%r28
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
	cmpiclr,<< 9,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,u %r1,63,1,%r28
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
	cmpiclr,<< 93,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,u %r1,63,1,%r28
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
	cmpiclr,<< 25,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,u %r1,63,1,%r28
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
	cmpiclr,<< 94,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,u %r1,63,1,%r28
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
	cmpib,>>= 4,%r26,.L179
	ldi 1,%r19
	ldi 0,%r19
.L179:
	ldi 32,%r28
	xor %r31,%r28,%r1
	or,>= %r0,%r1,%r20
	subi 0,%r20,%r20
	ldo -1(%r20),%r21
	extrw,u %r21,0,1,%r22
	or %r22,%r19,%r23
	bve (%r2)
	extrd,u %r23,63,1,%r28
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
	cmpiclr,<< 25,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,u %r1,63,1,%r28
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
	cmpb,>>= %r28,%r26,.L187
	ldi 31,%r1
	cmpb,>>= %r1,%r31,.L187
	ldo -40(%r31),%r19
	ldo -8192(%r19),%r20
	cmpib,>>= 1,%r20,.L183
	ldi 1,%r28
	depwi,z -7,31,16,%r21
	sub %r31,%r21,%r22
	cmpiclr,<< 2,%r22,%r23
	ldi 1,%r23
	extrd,s %r23,63,32,%r28
.L183:
	bve,n (%r2)
.L187:
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
	cmpiclr,<< 9,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,u %r1,63,1,%r28
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
	cmpb,>>= %r31,%r26,.L204
	extrd,u %r26,63,32,%r28
	ldo -42(%r28),%r1
	ldil L'49152,%r19
	ldo -8192(%r1),%r20
	ldo -2091(%r19),%r21
	cmpb,<< %r21,%r20,.L205
	ldil L'16384,%r22
.L200:
	bve (%r2)
	ldi 1,%r28
.L205:
	ldo -8153(%r22),%r23
	cmpb,>>= %r23,%r28,.L200
	ldil L'-57344,%r24
	ldi 8184,%r25
	add,l %r28,%r24,%r26
	cmpb,>>= %r25,%r26,.L200
	depwi,z -1,29,14,%r29
	ldil L'1048576,%r31
	sub %r28,%r29,%r1
	ldo 3(%r31),%r19
	cmpb,<< %r19,%r1,.L201
	depwi,z -1,30,15,%r20
	andcm %r20,%r28,%r28
	sub %r0,%r28,%r21
	extrw,u %r21,0,1,%r22
	bve (%r2)
	extrd,s %r22,63,32,%r28
.L204:
	ldo 1(%r26),%r23
	extrw,u %r23,31,7,%r24
	cmpiclr,>>= 32,%r24,%r25
	ldi 1,%r25
	bve (%r2)
	extrd,s %r25,63,32,%r28
.L201:
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
	cmpib,>>= 9,%r26,.L207
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r28
	cmpiclr,<< 5,%r28,%r1
	ldi 1,%r1
	extrd,s %r1,63,32,%r28
.L207:
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
	b .L211
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L215
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L217
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	fldd 0(%r28),%fr4
.L211:
	bve,n (%r2)
.L217:
	bve (%r2)
	fsub,dbl %fr4,%fr5,%fr4
.L215:
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
	b .L220
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L224
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L226
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	fldw 0(%r28),%fr4R
.L220:
	bve,n (%r2)
.L226:
	bve (%r2)
	fsub,sgl %fr4R,%fr5R,%fr4R
.L224:
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
	b .L235
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L236
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r20
	cmpb,<> %r20,%r19,.L240
	extrd,u %r28,0,1,%r1
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L235
	fcpy,dbl %fr4,%fr5
.L235:
	fcpy,dbl %fr5,%fr4
.L229:
	bve (%r2)
	ldo -64(%r30),%r30
.L240:
	cmpb,*<> %r0,%r1,.L229
	fcpy,dbl %fr5,%fr4
.L236:
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
	b .L247
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L248
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,<> %r31,%r28,.L252
	extrd,s %r28,63,32,%r19
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L247
	fcpy,sgl %fr4R,%fr5R
.L247:
	fcpy,sgl %fr5R,%fr4R
.L241:
	bve (%r2)
	ldo -64(%r30),%r30
.L252:
	cmpb,*<> %r0,%r19,.L241
	fcpy,sgl %fr5R,%fr4R
.L248:
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
	cmpb,*<> %r0,%r28,.L261
	copy %r4,%r27
	copy %r27,%r4
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r7,%r25
	cmpb,*<> %r0,%r28,.L260
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L255
	extrd,u %r3,0,1,%r19
	cmpb,*= %r0,%r19,.L265
	copy %r3,%r28
.L261:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L255:
	copy %r6,%r24
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L264
.L260:
	copy %r3,%r28
.L265:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L264:
	copy %r6,%r3
	b .L260
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
	b .L272
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L266
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r20
	cmpb,= %r20,%r19,.L268
	extrd,u %r28,0,1,%r1
	cmpclr,*<> %r0,%r1,%r0
	b,n .L272
.L266:
	bve (%r2)
	ldo -64(%r30),%r30
.L268:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L266
.L272:
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
	b .L283
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L277
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L279
	extrd,s %r28,63,32,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L283
.L277:
	bve (%r2)
	ldo -64(%r30),%r30
.L279:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L277
.L283:
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
	cmpb,*<> %r0,%r28,.L294
	copy %r4,%r27
	copy %r27,%r4
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r5,%r25
	cmpb,*<> %r0,%r28,.L296
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L290
	extrd,u %r6,0,1,%r19
	cmpb,*= %r0,%r19,.L300
	copy %r3,%r28
.L296:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L290:
	copy %r3,%r24
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L299
.L294:
	copy %r3,%r28
.L300:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L299:
	copy %r6,%r3
	b .L294
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
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L304
	addil LT's.0,%r27
	copy %r1,%r28
	addil LT'digits,%r27
	ldd RT's.0(%r28),%r28
	ldd RT'digits(%r1),%r21
	copy %r28,%r19
.L303:
	extrd,u %r31,63,6,%r20
	ldb %r20(%r21),%r22
	stb %r22,0(%r19)
	extrd,u %r31,57,58,%r31
	cmpb,*<> %r0,%r31,.L303
	ldo 1(%r19),%r19
	bve (%r2)
	stb %r0,0(%r19)
.L304:
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
	extrd,u %r26,63,32,%r19
	bve (%r2)
	std %r19,0(%r28)
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
	shladd,l %r31,2,%r28,%r20
	depd,z %r20,52,53,%r21
	sub %r21,%r28,%r22
	depd,z %r22,55,56,%r23
	add,l %r22,%r23,%r24
	shladd,l %r24,1,%r28,%r25
	depd,z %r25,57,58,%r26
	add,l %r25,%r26,%r29
	shladd,l %r29,2,%r28,%r1
	shladd,l %r1,2,%r28,%r31
	shladd,l %r31,3,%r28,%r21
	depd,z %r21,58,59,%r20
	add,l %r21,%r20,%r22
	shladd,l %r22,2,%r28,%r23
	shladd,l %r23,2,%r28,%r24
	shladd,l %r24,1,%r28,%r25
	depd,z %r25,56,57,%r26
	sub %r26,%r28,%r29
	shladd,l %r29,3,%r28,%r1
	shladd,l %r1,2,%r28,%r31
	shladd,l %r31,1,%r28,%r21
	shladd,l %r21,2,%r28,%r28
	ldo 1(%r28),%r20
	std %r20,0(%r19)
	bve (%r2)
	extrd,u %r20,30,31,%r28
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
	cmpb,*=,n %r0,%r25,.L314
	ldd 0(%r25),%r28
	std %r25,8(%r26)
	std %r28,0(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r1
	cmpclr,*= %r0,%r1,%r0
	std %r26,8(%r1)
.L308:
	bve,n (%r2)
.L314:
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
	cmpb,*=,n %r0,%r28,.L316
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L316:
	ldd 8(%r26),%r1
	cmpclr,*= %r0,%r1,%r0
	std %r28,0(%r1)
.L315:
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
	cmpb,*= %r0,%r6,.L325
	copy %r23,%r7
	copy %r25,%r3
	ldi 0,%r5
	b .L327
	ldo -48(%r30),%r11
.L339:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r6,.L325
	add,l %r3,%r7,%r3
.L327:
	copy %r27,%r4
	copy %r3,%r25
	copy %r8,%r26
	copy %r11,%r29
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	copy %r3,%r10
	cmpb,*<> %r0,%r28,.L339
	copy %r4,%r27
.L324:
	copy %r10,%r28
.L340:
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
.L325:
	std %r6,-216(%r30)
	fldd -216(%r30),%fr22
	extrd,u %r6,31,32,%r19
	extrd,u %r7,31,32,%r28
	std %r7,-216(%r30)
	fldd -216(%r30),%fr24
	ldo 1(%r6),%r31
	xmpyu %fr22R,%fr24R,%fr23
	std %r19,-216(%r30)
	fldd -216(%r30),%fr4
	std %r6,-216(%r30)
	fldd -216(%r30),%fr5
	std %r28,-216(%r30)
	fldd -216(%r30),%fr25
	xmpyu %fr5R,%fr25R,%fr6
	fstd %fr6,-216(%r30)
	ldd -216(%r30),%r1
	std %r7,-216(%r30)
	fldd -216(%r30),%fr7
	xmpyu %fr4R,%fr7R,%fr8
	std %r31,0(%r13)
	fstd %fr8,-216(%r30)
	ldd -216(%r30),%r2
	add,l %r1,%r2,%r10
	depd,z %r10,31,32,%r20
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r21
	add,l %r20,%r21,%r22
	cmpb,*= %r0,%r7,.L324
	add,l %r12,%r22,%r10
	copy %r7,%r24
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l memmove,%r2
	copy %r10,%r26
	b .L340
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
	cmpb,*= %r0,%r10,.L342
	copy %r26,%r6
	copy %r25,%r3
	ldi 0,%r5
	b .L344
	ldo -48(%r30),%r11
.L352:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r10,.L342
	add,l %r3,%r8,%r3
.L344:
	copy %r27,%r4
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	copy %r3,%r9
	cmpb,*<> %r0,%r28,.L352
	copy %r4,%r27
.L341:
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
.L342:
	b .L341
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
	cmpib,>>= 4,%r28,.L356
	extrd,u %r31,63,32,%r20
	ldi 32,%r1
	xor %r1,%r19,%r21
	extrw,s,>= %r21,31,8,%r22
	subi 0,%r22,%r22
	ldo -1(%r22),%r23
	bb,>= %r23,24,.L385
	ldi 43,%r21
.L356:
	ldi 32,%r24
.L380:
	ldb,mb 1(%r26),%r25
.L386:
	extrd,s %r25,63,8,%r31
	ldo -9(%r31),%r29
	cmpib,>>= 4,%r29,.L380
	extrd,u %r31,63,32,%r20
	xor %r24,%r25,%r19
	extrw,s,>= %r19,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r1
	bb,<,n %r1,24,.L386
	ldb,mb 1(%r26),%r25
	ldi 43,%r21
.L385:
	cmpb,= %r21,%r31,.L360
	ldi 45,%r24
	cmpb,<> %r24,%r31,.L383
	ldo -48(%r20),%r29
	ldb 1(%r26),%r25
	extrd,s %r25,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,<< 9,%r20,.L369
	ldo 1(%r26),%r26
	ldi 1,%r1
.L363:
	ldi 0,%r28
.L366:
	ldo -48(%r31),%r31
	shladd,l %r28,2,%r28,%r28 
	ldb,mb 1(%r26),%r21
	extrw,s %r31,31,8,%r22
	add,l %r28,%r28,%r23
	extrd,s %r21,63,8,%r31
	sub %r23,%r22,%r24
	ldo -48(%r31),%r25
	cmpib,>>= 9,%r25,.L366
	extrd,s %r24,63,32,%r28
	cmpb,*<> %r0,%r1,.L365
	sub %r22,%r23,%r26
	extrd,s %r26,63,32,%r28
.L365:
	bve,n (%r2)
.L383:
	cmpib,>>= 9,%r29,.L363
	ldi 0,%r1
.L369:
	ldi 0,%r28
.L384:
	bve,n (%r2)
.L360:
	ldb 1(%r26),%r22
	ldi 0,%r1
	extrd,s %r22,63,8,%r31
	ldo -48(%r31),%r23
	cmpib,>>= 9,%r23,.L363
	ldo 1(%r26),%r26
	b .L384
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
	cmpib,>>= 4,%r28,.L389
	extrd,u %r31,63,32,%r20
	ldi 32,%r1
	xor %r1,%r19,%r21
	extrw,s,>= %r21,31,8,%r22
	subi 0,%r22,%r22
	ldo -1(%r22),%r23
	bb,>= %r23,24,.L418
	ldi 43,%r21
.L389:
	ldi 32,%r24
.L413:
	ldb,mb 1(%r26),%r25
.L419:
	extrd,s %r25,63,8,%r31
	ldo -9(%r31),%r29
	cmpib,>>= 4,%r29,.L413
	extrd,u %r31,63,32,%r20
	xor %r24,%r25,%r19
	extrw,s,>= %r19,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r1
	bb,<,n %r1,24,.L419
	ldb,mb 1(%r26),%r25
	ldi 43,%r21
.L418:
	cmpb,= %r21,%r31,.L393
	ldi 45,%r24
	cmpb,<> %r24,%r31,.L416
	ldo -48(%r20),%r29
	ldb 1(%r26),%r25
	extrd,s %r25,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,<< 9,%r20,.L402
	ldo 1(%r26),%r26
	ldi 1,%r1
.L396:
	ldi 0,%r23
.L399:
	ldo -48(%r31),%r31
	shladd,l %r23,2,%r23,%r19
	ldb,mb 1(%r26),%r21
	extrd,s %r31,63,8,%r28
	depd,z %r19,62,63,%r22
	extrd,s %r21,63,8,%r31
	ldo -48(%r31),%r24
	cmpib,>>= 9,%r24,.L399
	sub %r22,%r28,%r23
	sub %r28,%r22,%r28
	cmpiclr,*= 0,%r1,%r0
	copy %r23,%r28
	bve,n (%r2)
.L416:
	cmpib,>>= 9,%r29,.L396
	ldi 0,%r1
.L402:
	ldi 0,%r28
.L417:
	bve,n (%r2)
.L393:
	ldb 1(%r26),%r22
	ldi 0,%r1
	extrd,s %r22,63,8,%r31
	ldo -48(%r31),%r23
	cmpib,>>= 9,%r23,.L396
	ldo 1(%r26),%r26
	b .L417
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
	cmpib,>>= 4,%r28,.L422
	extrd,u %r31,63,32,%r20
	ldi 32,%r1
	xor %r1,%r19,%r21
	extrw,s,>= %r21,31,8,%r22
	subi 0,%r22,%r22
	ldo -1(%r22),%r23
	bb,>= %r23,24,.L447
	ldi 43,%r21
.L422:
	ldi 32,%r24
.L444:
	ldb,mb 1(%r26),%r25
.L448:
	extrd,s %r25,63,8,%r31
	ldo -9(%r31),%r29
	cmpib,>>= 4,%r29,.L444
	extrd,u %r31,63,32,%r20
	xor %r24,%r25,%r19
	extrw,s,>= %r19,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r1
	bb,<,n %r1,24,.L448
	ldb,mb 1(%r26),%r25
	ldi 43,%r21
.L447:
	cmpb,= %r21,%r31,.L426
	ldi 45,%r24
	cmpb,= %r24,%r31,.L446
	ldo -48(%r20),%r29
	cmpib,<< 9,%r29,.L434
	ldi 0,%r1
.L428:
	ldi 0,%r23
.L431:
	ldo -48(%r31),%r31
	shladd,l %r23,2,%r23,%r19
	ldb,mb 1(%r26),%r21
	extrd,s %r31,63,8,%r28
	depd,z %r19,62,63,%r22
	extrd,s %r21,63,8,%r31
	ldo -48(%r31),%r24
	cmpib,>>= 9,%r24,.L431
	sub %r22,%r28,%r23
	sub %r28,%r22,%r28
	cmpiclr,*= 0,%r1,%r0
	copy %r23,%r28
	bve,n (%r2)
.L446:
	ldb 1(%r26),%r25
	ldi 1,%r1
	extrd,s %r25,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,>>= 9,%r20,.L428
	ldo 1(%r26),%r26
.L434:
	bve (%r2)
	ldi 0,%r28
.L426:
	ldb 1(%r26),%r22
	extrd,s %r22,63,8,%r31
	ldo -48(%r31),%r23
	cmpib,<< 9,%r23,.L434
	ldo 1(%r26),%r26
	b .L428
	ldi 0,%r1
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
	cmpb,*= %r0,%r24,.L450
	fldd -200(%r30),%fr12
	extrd,u %r23,31,32,%r2
	ldo -48(%r30),%r10
	std %r2,-200(%r30)
	b .L453
	fldd -200(%r30),%fr13
.L462:
	cmpb,*=,n %r0,%r28,.L449
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r24
	cmpb,*= %r0,%r5,.L450
	add,l %r3,%r24,%r7
.L453:
	extrd,u %r5,62,63,%r6
.L463:
	std %r6,-200(%r30)
	extrd,u %r5,30,31,%r3
	fldd -200(%r30),%fr22
	std %r3,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr12R,%fr24R,%fr4
	xmpyu %fr13R,%fr22R,%fr23
	fstd %fr4,-200(%r30)
	xmpyu %fr12R,%fr22R,%fr5
	ldd -200(%r30),%r4
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r19
	add,l %r4,%r19,%r20
	fstd %fr5,-200(%r30)
	depd,z %r20,31,32,%r21
	ldd -200(%r30),%r22
	add,l %r21,%r22,%r23
	copy %r27,%r4
	add,l %r7,%r23,%r3
	copy %r8,%r26
	copy %r10,%r29
	copy %r3,%r25
	uaddcm %r5,%r6,%r5
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	cmpib,<= 0,%r28,.L462
	copy %r4,%r27
	copy %r6,%r5
	cmpb,*<> %r0,%r5,.L463
	extrd,u %r5,62,63,%r6
.L450:
	ldi 0,%r3
.L449:
	copy %r3,%r28
	ldo -128(%r30),%r25
	fldd,ma 8(%r25),%fr13
	ldd -224(%r30),%r2
	ldd -192(%r30),%r10
	ldd -184(%r30),%r9
	ldd -176(%r30),%r8
	ldd -168(%r30),%r7
	ldd -160(%r30),%r6
	ldd -152(%r30),%r5
	ldd -144(%r30),%r4
	ldd -136(%r30),%r3
	fldd,ma 8(%r25),%fr12
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
	extrd,u %r23,31,32,%r2
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
	std %r2,-216(%r30)
	cmpib,= 0,%r24,.L469
	fldd -216(%r30),%fr13
.L478:
	extrw,s %r10,30,31,%r3
.L480:
	std %r3,-216(%r30)
	extrd,s %r10,62,63,%r11
	fldd -216(%r30),%fr22
	extrd,u %r11,31,32,%r4
	std %r4,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr12R,%fr24R,%fr5
	fstd %fr5,-216(%r30)
	xmpyu %fr13R,%fr22R,%fr23
	ldd -216(%r30),%r19
	xmpyu %fr12R,%fr22R,%fr4
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r20
	fstd %fr4,-216(%r30)
	add,l %r19,%r20,%r21
	ldd -216(%r30),%r23
	depd,z %r21,31,32,%r22
	add,l %r22,%r23,%r25
	copy %r27,%r4
	copy %r8,%r24
	copy %r6,%r26
	copy %r9,%r29
	add,l %r5,%r25,%r3
	copy %r3,%r25
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpb,*= %r0,%r28,.L464
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L467
	fstd %fr12,-216(%r30)
	ldo -1(%r10),%r24
	ldd -216(%r30),%r5
	extrw,s %r24,30,31,%r26
	add,l %r3,%r5,%r5
	cmpib,<> 0,%r26,.L478
	extrd,s %r26,63,32,%r10
.L469:
	ldi 0,%r3
.L464:
	copy %r3,%r28
	ldo -136(%r30),%r29
	fldd,ma 8(%r29),%fr13
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
	fldd,ma 8(%r29),%fr12
	bve (%r2)
	ldo -224(%r30),%r30
.L467:
	cmpb,*= %r0,%r11,.L469
	copy %r11,%r10
	b .L480
	extrw,s %r10,30,31,%r3
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
	copy %r20,%r26
	copy %r29,%r21
	copy %r19,%r25
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r2
	copy %r31,%r28
	copy %r29,%r1
	depd %r21,0+32-1,32,%r31
	depd %r1,32+32-1,32,%r31
	extrd,u %r31,31,32,%r2
	ldo 64(%r30),%r30
	extrd,u %r31,63,32,%r22
	depd %r2,0+32-1,32,%r28
	ldd -80(%r30),%r2
	depd %r22,32+32-1,32,%r28
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
	cmpb,*<> %r0,%r31,.L489
	extrd,u %r25,63,32,%r25
	b .L496
	copy %r31,%r28
.L491:
	cmpib,= 0,%r28,.L492
	extrd,u %r28,63,32,%r31
.L489:
	cmpb,<>,n %r31,%r25,.L491
	ldw,mb 4(%r26),%r28
	bve (%r2)
	copy %r26,%r28
.L492:
	copy %r31,%r28
.L496:
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
	cmpb,= %r20,%r19,.L498
	ldi -1,%r28
	b,n .L506
.L500:
	ldw,mb 4(%r25),%r31
	extrd,u %r28,63,32,%r19
	cmpb,<> %r28,%r31,.L499
	extrd,u %r31,63,32,%r20
.L498:
	cmpb,*<>,n %r0,%r19,.L500
	ldw,mb 4(%r26),%r28
.L499:
	ldi -1,%r28
.L506:
	cmpclr,<<= %r20,%r19,%r0
	b,n .L501
	cmpclr,>>= %r20,%r19,%r1
	ldi 1,%r1
	extrd,s %r1,63,32,%r28
.L501:
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
.L508:
	ldw 0(%r25),%r19
	stw %r19,0(%r31)
	ldo 4(%r31),%r31
	cmpb,*<> %r0,%r19,.L508
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
	cmpib,= 0,%r28,.L513
	copy %r26,%r1
	ldw,mb 4(%r1),%r31
.L515:
	cmpib,<>,n 0,%r31,.L515
	ldw,mb 4(%r1),%r31
	sub %r1,%r26,%r19
	bve (%r2)
	extrd,s %r19,61,62,%r28
.L513:
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
	b,n .L524
.L534:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r31
	cmpclr,= %r28,%r31,%r0
	b,n .L521
	cmpb,*= %r0,%r28,.L521
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L534
	ldo 4(%r25),%r25
.L524:
	bve (%r2)
	copy %r24,%r28
.L521:
	ldw 0(%r26),%r1
	ldw 0(%r25),%r19
	cmpclr,<<= %r19,%r1,%r0
	b,n .L535
	cmpclr,>>= %r19,%r1,%r20
	ldi 1,%r20
	bve (%r2)
	extrd,s %r20,63,32,%r28
.L535:
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
	cmpb,*<> %r0,%r24,.L537
	extrd,u %r25,63,32,%r25
	b .L544
	copy %r24,%r28
.L539:
	cmpb,*= %r0,%r24,.L540
	ldo 4(%r26),%r26
.L537:
	ldw 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L539
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L540:
	copy %r24,%r28
.L544:
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
	b,n .L552
.L562:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,<> %r19,%r31,.L561
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L562
	ldo 4(%r25),%r25
.L552:
	bve (%r2)
	copy %r24,%r28
.L561:
	extrd,u %r31,63,32,%r28
	cmpb,<< %r31,%r19,.L563
	extrd,u %r19,63,32,%r20
	cmpclr,>>= %r20,%r28,%r1
	ldi 1,%r1
	bve (%r2)
	extrd,s %r1,63,32,%r28
.L563:
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
	cmpb,*= %r0,%r24,.L565
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L565:
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
	cmpb,*= %r25,%r26,.L587
	copy %r26,%r28
	copy %r26,%r20
	copy %r25,%r19
	sub %r26,%r25,%r21
	depd,z %r24,61,62,%r22
	cmpb,*>> %r22,%r21,.L571
	ldo -1(%r24),%r29
	cmpclr,*<> %r0,%r24,%r0
	b,n .L587
	cmpib,*>>= 8,%r29,.L581
	or %r25,%r26,%r1
	extrd,u %r1,63,3,%r23
	ldo -1(%r23),%r26
	cmpb,*<= %r0,%r26,.L601
	ldo 4(%r25),%r26
	cmpb,*=,n %r26,%r28,.L582
	extrd,u %r24,62,63,%r29
	ldi 0,%r31
.L576:
	ldd 0(%r19),%r21
	std %r21,0(%r20)
	ldo 1(%r31),%r31
	ldo 8(%r19),%r19
	cmpb,*<> %r29,%r31,.L576
	ldo 8(%r20),%r20
	extrd,u %r24,63,1,%r22
	cmpb,*= %r0,%r22,.L587
	depdi 0,63,1,%r24
	ldw,s %r24(%r25),%r25
	shladd,l %r24,2,%r28,%r24
	stw %r25,0(%r24)
.L587:
	bve,n (%r2)
.L571:
	cmpb,*= %r0,%r24,.L587
	nop
	shladd,l %r29,2,%r25,%r19
	shladd,l %r29,2,%r26,%r31
.L574:
	ldw 0(%r19),%r21
	stw %r21,0(%r31)
	copy %r19,%r20
	ldo -4(%r31),%r31
	cmpb,*<> %r20,%r25,.L574
	ldo -4(%r19),%r19
	bve,n (%r2)
.L581:
	copy %r26,%r23
	b .L599
	ldo 4(%r25),%r26
.L602:
	ldo 4(%r26),%r26
.L599:
	ldw -4(%r26),%r1
	stw %r1,0(%r23)
	ldo -1(%r29),%r29
	cmpib,*<> -1,%r29,.L602
	ldo 4(%r23),%r23
	bve,n (%r2)
.L601:
.L582:
	b .L599
	copy %r28,%r23
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
	cmpb,*= %r0,%r24,.L604
	ldo -1(%r24),%r22
	cmpib,*>>= 5,%r22,.L609
	extrd,u %r26,61+1-1,1,%r31
	cmpb,*=,n %r0,%r31,.L610
	ldo 4(%r26),%r23
	stw %r25,0(%r26)
	ldo -2(%r24),%r22
.L606:
	sub %r24,%r31,%r24
	ldi 0,%r20
	extrd,u %r24,62,63,%r21
	depd %r25,0+32-1,32,%r20
	shladd,l %r31,2,%r28,%r26
	depd %r25,32+32-1,32,%r20
	ldi 0,%r19
.L607:
	std %r20,0(%r26)
	ldo 1(%r19),%r19
	cmpb,*<> %r21,%r19,.L607
	ldo 8(%r26),%r26
	extrd,u %r24,63,1,%r29
	cmpb,*= %r0,%r29,.L604
	depdi 0,63,1,%r24
	sub %r22,%r24,%r22
	shladd,l %r24,2,%r23,%r1
.L605:
	cmpb,*= %r0,%r22,.L604
	stw %r25,0(%r1)
	cmpib,*= 1,%r22,.L604
	stw %r25,4(%r1)
	cmpib,*= 2,%r22,.L604
	stw %r25,8(%r1)
	cmpib,*= 3,%r22,.L604
	stw %r25,12(%r1)
	cmpib,*= 4,%r22,.L604
	stw %r25,16(%r1)
	stw %r25,20(%r1)
.L604:
	bve,n (%r2)
.L610:
	b .L606
	copy %r26,%r23
.L609:
	b .L605
	copy %r26,%r1
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
	cmpb,*<<= %r25,%r26,.L634
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L633
	add,l %r25,%r24,%r25
.L636:
	ldb,mb -1(%r28),%r24
	cmpb,*<> %r28,%r26,.L636
	stb,mb %r24,-1(%r25)
.L633:
	bve,n (%r2)
.L634:
	cmpb,*= %r25,%r26,.L633
	nop
	cmpb,*= %r0,%r24,.L633
	nop
	ldo -1(%r24),%r28
	cmpib,*>>= 7,%r28,.L679
	or %r25,%r26,%r1
	extrd,u %r1,63,3,%r19
	ldo -1(%r19),%r20
	cmpb,*<=,n %r0,%r20,.L679
	ldo 1(%r26),%r29
	sub %r25,%r29,%r31
	cmpib,*<< 6,%r31,.L681
	copy %r24,%r21
.L637:
	b .L642
	add,l %r26,%r24,%r22
.L682:
	ldo 1(%r29),%r29
.L642:
	ldb -1(%r29),%r23
	stb %r23,0(%r25)
	cmpb,*<> %r22,%r29,.L682
	ldo 1(%r25),%r25
	bve,n (%r2)
.L681:
	copy %r25,%r29
	depdi 0,63,3,%r21
	add,l %r26,%r21,%r22
.L639:
	ldd 0(%r26),%r23
	std %r23,0(%r29)
	ldo 8(%r26),%r26
	cmpb,*<> %r22,%r26,.L639
	ldo 8(%r29),%r29
	add,l %r25,%r21,%r25
	cmpb,*= %r21,%r24,.L633
	sub %r24,%r21,%r28
	ldb 0(%r26),%r24
	cmpib,*= 1,%r28,.L633
	stb %r24,0(%r25)
	ldb 1(%r26),%r1
	cmpib,*= 2,%r28,.L633
	stb %r1,1(%r25)
	ldb 2(%r26),%r19
	cmpib,*= 3,%r28,.L633
	stb %r19,2(%r25)
	ldb 3(%r26),%r20
	cmpib,*= 4,%r28,.L633
	stb %r20,3(%r25)
	ldb 4(%r26),%r31
	cmpib,*= 5,%r28,.L633
	stb %r31,4(%r25)
	ldb 5(%r26),%r21
	cmpib,*= 6,%r28,.L633
	stb %r21,5(%r25)
	ldb 6(%r26),%r26
	bve (%r2)
	stb %r26,6(%r25)
.L679:
	b .L637
	ldo 1(%r26),%r29
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
	extrd,u %r26,63,16,%r26
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r1
	extrw,u %r1,31,4,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r20
	or %r28,%r20,%r21
	bve (%r2)
	extrd,u %r21,63,16,%r28
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
	sub %r0,%r25,%r28
	mtsar %r25
	extrd,u %r26,63,16,%r26
	extrw,u %r28,31,4,%r1
	shrpw %r0,%r26,%sar,%r31
	mtsarcm %r1
	depw,z %r26,%sar,32,%r19
	or %r31,%r19,%r20
	bve (%r2)
	extrd,u %r20,63,16,%r28
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
	extrd,u %r26,63,8,%r26
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r1
	extrw,u %r1,31,3,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r20
	or %r28,%r20,%r21
	bve (%r2)
	extrd,u %r21,63,8,%r28
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
	sub %r0,%r25,%r28
	mtsar %r25
	extrd,u %r26,63,8,%r26
	extrw,u %r28,31,3,%r1
	shrpw %r0,%r26,%sar,%r31
	mtsarcm %r1
	depw,z %r26,%sar,32,%r19
	or %r31,%r19,%r20
	bve (%r2)
	extrd,u %r20,63,8,%r28
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
	b .L699
	ldi 32,%r20
.L697:
	cmpclr,<> %r20,%r19,%r0
	b,n .L698
.L699:
	mtsar %r31
	ldo 1(%r31),%r19
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	cmpb,*= %r0,%r28,.L697
	extrd,u %r19,63,32,%r31
	extrd,s %r19,63,32,%r28
.L698:
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
	cmpib,= 0,%r26,.L704
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L702
	ldi 1,%r28
.L703:
	extrw,s %r19,30,31,%r31
	ldo 1(%r28),%r28
	extrd,s %r31,63,32,%r19
	extrw,u %r31,31,1,%r1
	cmpib,= 0,%r1,.L703
	extrd,s %r28,63,32,%r28
.L702:
	bve,n (%r2)
.L704:
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
	b .L708
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr5R
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b,n .L709
	ldi 0,%r28
.L709:
	extrd,s %r28,63,32,%r28
.L708:
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
	b .L712
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr5
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b,n .L713
	ldi 0,%r28
.L713:
	extrd,s %r28,63,32,%r28
.L712:
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
	cmpb,*> %r0,%r31,.L716
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
	b,n .L719
.L717:
	extrd,s %r3,63,32,%r28
.L716:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L719:
	b .L717
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
	b .L722
	extrd,s %r25,63,32,%r23
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b,n .L722
	cmpib,> 0,%r23,.L734
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	fldw 0(%r28),%fr5R
.L723:
	extrw,u %r23,31,1,%r20
	cmpib,= 0,%r20,.L737
	extrw,u %r23,0,1,%r22
.L725:
	fmpy,sgl %fr4R,%fr5R,%fr4R
	extrw,u %r23,0,1,%r22
.L737:
	add,l %r22,%r23,%r23
	extrw,s %r23,30,31,%r24
	cmpib,= 0,%r24,.L722
	extrd,s %r24,63,32,%r23
	extrw,u %r23,31,1,%r26
	cmpib,<> 0,%r26,.L725
	fmpy,sgl %fr5R,%fr5R,%fr5R
	extrw,u %r23,0,1,%r31
.L736:
	add,l %r31,%r23,%r25
	extrw,s %r25,30,31,%r28
	extrd,s %r28,63,32,%r23
	extrw,u %r23,31,1,%r26
	cmpib,<> 0,%r26,.L725
	fmpy,sgl %fr5R,%fr5R,%fr5R
	b .L736
	extrw,u %r23,0,1,%r31
.L722:
	bve,n (%r2)
.L734:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r19
	b .L723
	fldw 0(%r19),%fr5R
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
	b .L739
	extrd,s %r25,63,32,%r23
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b,n .L739
	cmpib,> 0,%r23,.L751
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	fldd 0(%r28),%fr5
.L740:
	extrw,u %r23,31,1,%r20
	cmpib,= 0,%r20,.L754
	extrw,u %r23,0,1,%r22
.L742:
	fmpy,dbl %fr4,%fr5,%fr4
	extrw,u %r23,0,1,%r22
.L754:
	add,l %r22,%r23,%r23
	extrw,s %r23,30,31,%r24
	cmpib,= 0,%r24,.L739
	extrd,s %r24,63,32,%r23
	extrw,u %r23,31,1,%r26
	cmpib,<> 0,%r26,.L742
	fmpy,dbl %fr5,%fr5,%fr5
	extrw,u %r23,0,1,%r31
.L753:
	add,l %r31,%r23,%r25
	extrw,s %r25,30,31,%r28
	extrd,s %r28,63,32,%r23
	extrw,u %r23,31,1,%r26
	cmpib,<> 0,%r26,.L742
	fmpy,dbl %fr5,%fr5,%fr5
	b .L753
	extrw,u %r23,0,1,%r31
.L739:
	bve,n (%r2)
.L751:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r19
	b .L740
	fldd 0(%r19),%fr5
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
	cmpb,*<> %r0,%r28,.L756
	copy %r28,%r3
	copy %r7,%r24
	copy %r6,%r23
	copy %r7,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __addtf3,%r2
	copy %r27,%r5
	copy %r5,%r27
	copy %r29,%r25
	copy %r27,%r8
	copy %r7,%r24
	copy %r6,%r23
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r28,%r26
	cmpb,*= %r0,%r28,.L756
	copy %r8,%r27
	cmpib,> 0,%r9,.L770
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r4
.L758:
	extrw,u %r9,31,1,%r19
	cmpib,= 0,%r19,.L771
	extrw,u %r9,0,1,%r20
.L760:
	copy %r7,%r26
	copy %r6,%r25
	copy %r4,%r24
	copy %r27,%r6
	ldo -48(%r30),%r29
	b,l __multf3,%r2
	copy %r3,%r23
	copy %r6,%r27
	copy %r28,%r7
	copy %r29,%r6
	extrw,u %r9,0,1,%r20
.L771:
	add,l %r20,%r9,%r9
	extrw,s %r9,30,31,%r21
	cmpib,= 0,%r21,.L756
	extrd,s %r21,63,32,%r9
	ldo -48(%r30),%r8
.L761:
	copy %r4,%r24
	copy %r3,%r23
	copy %r4,%r26
	copy %r3,%r25
	copy %r8,%r29
	b,l __multf3,%r2
	copy %r27,%r3
	copy %r3,%r27
	copy %r28,%r4
	extrw,u %r9,31,1,%r22
	cmpib,<> 0,%r22,.L760
	copy %r29,%r3
	extrw,u %r9,0,1,%r24
	add,l %r24,%r9,%r25
	extrw,s %r25,30,31,%r26
	b .L761
	extrd,s %r26,63,32,%r9
.L756:
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
.L770:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r2
	b .L758
	ldd 0(%r2),%r4
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
	cmpb,*= %r0,%r24,.L773
	copy %r26,%r28
	ldo -1(%r24),%r31
	cmpib,*>>= 6,%r31,.L774
	or %r26,%r25,%r1
	extrd,u %r1,63,3,%r19
	cmpb,*<> %r0,%r19,.L774
	copy %r24,%r22
	copy %r26,%r29
	depdi 0,63,3,%r22
	add,l %r25,%r22,%r21
.L775:
	ldd 0(%r29),%r20
	ldd 0(%r25),%r23
	xor %r23,%r20,%r26
	ldo 8(%r25),%r25
	std %r26,0(%r29)
	cmpb,*<> %r21,%r25,.L775
	ldo 8(%r29),%r29
	add,l %r28,%r22,%r31
	cmpb,*= %r22,%r24,.L773
	sub %r24,%r22,%r1
	ldb 0(%r31),%r24
	ldb 0(%r25),%r19
	xor %r24,%r19,%r22
	cmpib,*= 1,%r1,.L773
	stb %r22,0(%r31)
	ldb 1(%r31),%r21
	ldb 1(%r25),%r20
	xor %r20,%r21,%r23
	cmpib,*= 2,%r1,.L773
	stb %r23,1(%r31)
	ldb 2(%r31),%r26
	ldb 2(%r25),%r29
	xor %r29,%r26,%r24
	cmpib,*= 3,%r1,.L773
	stb %r24,2(%r31)
	ldb 3(%r31),%r19
	ldb 3(%r25),%r22
	xor %r22,%r19,%r21
	cmpib,*= 4,%r1,.L773
	stb %r21,3(%r31)
	ldb 4(%r31),%r23
	ldb 4(%r25),%r20
	xor %r20,%r23,%r26
	cmpib,*= 5,%r1,.L773
	stb %r26,4(%r31)
	ldb 5(%r31),%r29
	ldb 5(%r25),%r24
	xor %r24,%r29,%r19
	cmpib,*= 6,%r1,.L773
	stb %r19,5(%r31)
	ldb 6(%r31),%r1
	ldb 6(%r25),%r25
	xor %r25,%r1,%r22
	stb %r22,6(%r31)
.L773:
	bve,n (%r2)
.L774:
	add,l %r25,%r24,%r21
	copy %r28,%r31
.L777:
	ldb 0(%r31),%r23
	ldb 0(%r25),%r20
	xor %r20,%r23,%r26
	ldo 1(%r31),%r31
	ldo 1(%r25),%r25
	cmpb,*<> %r25,%r21,.L777
	stb %r26,-1(%r31)
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
	cmpib,= 0,%r31,.L809
	copy %r26,%r28
	copy %r26,%r22
	ldb,mb 1(%r22),%r19
.L819:
	extrw,s %r19,31,8,%r1
	cmpib,<>,n 0,%r1,.L819
	ldb,mb 1(%r22),%r19
.L817:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L806
.L818:
	ldb 0(%r25),%r20
	stb %r20,0(%r22)
	extrd,s %r20,63,8,%r21
	cmpb,*= %r0,%r21,.L808
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L818
	ldo 1(%r22),%r22
.L806:
	stb %r0,0(%r22)
.L808:
	bve,n (%r2)
.L809:
	b .L817
	copy %r26,%r22
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
	cmpb,*= %r28,%r25,.L820
	add,l %r26,%r28,%r31
.L829:
	ldb 0(%r31),%r1
	cmpiclr,= 0,%r1,%r0
	b,n .L823
.L820:
	bve,n (%r2)
.L823:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L829
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
	extrd,s %r20,63,8,%r22
	cmpb,*= %r0,%r22,.L835
	copy %r26,%r28
	b .L834
	copy %r25,%r19
.L833:
	cmpb,= %r22,%r1,.L832
	ldo 1(%r19),%r19
.L834:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r1
	cmpb,*<> %r0,%r1,.L833
	nop
	ldb,mb 1(%r28),%r21
	extrd,s %r21,63,8,%r22
	cmpb,*<>,n %r0,%r22,.L834
	copy %r25,%r19
.L835:
	copy %r22,%r28
.L832:
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
.L841:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r1
	cmpclr,<> %r1,%r25,%r0
	copy %r26,%r28
.L840:
	cmpb,*<> %r0,%r1,.L841
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
	cmpb,*= %r0,%r22,.L855
	copy %r25,%r31
	ldb,mb 1(%r31),%r28
.L867:
	extrw,s %r28,31,8,%r1
	cmpib,<>,n 0,%r1,.L867
	ldb,mb 1(%r31),%r28
	cmpb,*= %r25,%r31,.L855
	sub %r31,%r25,%r19
	ldo -1(%r25),%r23
	b .L864
	add,l %r23,%r19,%r23
.L865:
	cmpb,*= %r0,%r28,.L843
	ldo 1(%r26),%r26
.L864:
	ldb 0(%r26),%r20
.L868:
	extrd,s %r20,63,8,%r28
	cmpb,<> %r22,%r28,.L865
	extrd,u %r20,63,8,%r19
	copy %r25,%r21
	b .L847
	copy %r26,%r28
.L866:
	xor %r24,%r19,%r29
	extrw,s,>= %r24,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r29,31,8,%r1
	subi 0,%r1,%r1
	sub %r0,%r31,%r24
	ldo -1(%r1),%r20
	and %r24,%r20,%r29
	bb,>=,n %r29,24,.L848
	ldb,mb 1(%r28),%r19
	extrd,u %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L848
	ldo 1(%r21),%r21
.L847:
	cmpb,*<> %r23,%r21,.L866
	ldb 0(%r21),%r24
.L848:
	ldb 0(%r21),%r31
	cmpb,=,n %r19,%r31,.L855
	ldo 1(%r26),%r26
	b .L868
	ldb 0(%r26),%r20
.L855:
	copy %r26,%r28
.L843:
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
	b,n .L876
	fcmp,dbl,!> %fr4,%fr0
	ftest
	b,n .L877
	bve,n (%r2)
.L877:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L872
	bve,n (%r2)
.L872:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L876:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L872
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
	cmpb,*= %r0,%r23,.L880
	copy %r26,%r28
	cmpb,*>> %r23,%r25,.L891
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r22
	cmpb,*<<,n %r22,%r26,.L891
	ldb 0(%r24),%r29
	ldo -1(%r23),%r23
	extrd,s %r29,63,8,%r29
	b .L886
	ldo 1(%r24),%r24
.L890:
	copy %r25,%r28
.L882:
	cmpclr,*<<= %r28,%r22,%r0
	b,n .L891
.L886:
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r1
	cmpb,<> %r29,%r1,.L890
	ldo 1(%r28),%r25
	cmpb,*= %r0,%r23,.L880
	copy %r24,%r19
.L885:
	copy %r25,%r31
	b .L883
	add,l %r25,%r23,%r26
.L884:
	cmpb,*= %r26,%r31,.L880
	ldo 1(%r19),%r19
.L883:
	ldb 0(%r31),%r21
	ldb 0(%r19),%r20
	cmpb,=,n %r20,%r21,.L884
	ldo 1(%r31),%r31
	cmpb,*<<,n %r22,%r25,.L891
	ldb 0(%r25),%r26
	extrw,s %r26,31,8,%r31
	cmpb,<> %r29,%r31,.L882
	ldo 1(%r25),%r28
	copy %r25,%r21
	copy %r24,%r19
	copy %r28,%r25
	b .L885
	copy %r21,%r28
.L891:
	ldi 0,%r28
.L880:
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
	cmpb,*= %r0,%r24,.L897
	copy %r24,%r3
	ldo -48(%r30),%r29
	b,l memmove,%r2
	nop
.L897:
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
	b .L918
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r23
	fldd 0(%r23),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L904
	ldi 0,%r22
	addil LT'.LC31,%r27
	ldd RT'.LC31(%r1),%r31
	fldd 0(%r31),%fr5
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b .L919
	fcmp,dbl,= %fr4,%fr0
	stw %r0,0(%r25)
.L901:
	bve,n (%r2)
.L913:
	fcpy,dbl %fr6,%fr4
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r23
	ldi 1,%r22
.L904:
	addil LT'.LC31,%r27
	ldi 0,%r21
	ldd RT'.LC31(%r1),%r24
	fldd 0(%r23),%fr9
	fldd 0(%r24),%fr10
.L910:
	fmpy,dbl %fr4,%fr10,%fr4
	ldo 1(%r21),%r26
	fcmp,dbl,!>= %fr4,%fr9
	ftest
	b .L910
	extrd,s %r26,63,32,%r21
	cmpb,*= %r0,%r22,.L901
	stw %r21,0(%r25)
.L925:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L918:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr7
	fcmp,dbl,!<= %fr4,%fr7
	ftest
	b .L913
	fneg,dbl %fr4,%fr6
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr23
	fcmp,dbl,!> %fr4,%fr23
	ftest
	b .L914
	addil LT'.LC31,%r27
	b .L901
	stw %r0,0(%r25)
.L919:
	ftest
	b,n .L916
	stw %r0,0(%r25)
	b,n .L901
.L914:
	ldi 1,%r22
	ldd RT'.LC31(%r1),%r31
.L905:
	fcpy,dbl %fr6,%fr4
	ldi 0,%r21
	fldd 0(%r31),%fr8
.L912:
	fadd,dbl %fr4,%fr4,%fr4
	ldo -1(%r21),%r20
	fcmp,dbl,!< %fr4,%fr8
	ftest
	b .L912
	extrd,s %r20,63,32,%r21
	cmpb,*<> %r0,%r22,.L925
	stw %r21,0(%r25)
	b,n .L901
.L916:
	b .L905
	fcpy,dbl %fr4,%fr6
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
	cmpb,*= %r0,%r26,.L929
	copy %r26,%r31
	ldi 0,%r28
.L928:
	extrd,s %r31,63+1-1,1,%r19
	extrd,u %r31,62,63,%r31
	and %r19,%r25,%r1
	depd,z %r25,62,63,%r25
	cmpb,*<> %r0,%r31,.L928
	add,l %r28,%r1,%r28
	bve,n (%r2)
.L929:
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
	cmpb,<<= %r26,%r25,.L933
	ldi 1,%r19
.L932:
	cmpib,> 0,%r31,.L933
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L934
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L932
	nop
.L934:
	cmpb,*= %r0,%r19,.L942
	copy %r19,%r1
.L933:
	ldi 0,%r1
.L939:
	cmpb,>>,n %r31,%r28,.L938
	sub %r28,%r31,%r28
	or %r19,%r1,%r1
	extrd,u %r28,63,32,%r28
.L938:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L939
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r1,%r28
	bve,n (%r2)
.L942:
	cmpiclr,*<> 0,%r24,%r0
	copy %r1,%r28
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
	extrd,s %r31,63,8,%r1
	cmpb,= %r1,%r26,.L955
	xor %r26,%r1,%r28
	depw,z %r28,23,24,%r2
	ldo -48(%r30),%r29
	extrd,u %r2,63,32,%r26
	b,l __clzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo -33(%r28),%r19
	extrd,s %r19,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L955:
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
	cmpb,*= %r31,%r28,.L958
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo -1(%r28),%r19
	extrd,s %r19,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L958:
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
	cmpib,= 0,%r26,.L962
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L961:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r1
	extrd,u %r31,62,63,%r31
	add,l %r1,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L961
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L962:
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
	cmpb,*>> %r25,%r26,.L968
	extrd,u %r21,63,32,%r29
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1002
.L968:
	cmpb,*=,n %r0,%r20,.L1003
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L971:
	ldd 0(%r28),%r1
	std %r1,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L971
	ldo 8(%r31),%r31
	cmpb,>>= %r21,%r22,.L964
	sub %r22,%r21,%r23
	ldo -1(%r23),%r19
	cmpib,>>= 7,%r19,.L1004
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r20
	add,l %r25,%r20,%r1
	sub %r31,%r1,%r19
	cmpib,*>>= 6,%r19,.L973
	add,l %r25,%r29,%r28
	or %r28,%r31,%r20
	extrd,u %r20,63,3,%r1
	ldo -1(%r1),%r19
	cmpb,*<=,n %r0,%r19,.L973
	extrw,u %r23,28,29,%r29
	extrd,u %r29,63,32,%r24
	shladd,l %r24,3,%r28,%r20
.L975:
	ldd 0(%r28),%r1
	std %r1,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L975
	ldo 8(%r31),%r31
	copy %r23,%r28
	extrw,u %r23,31,3,%r23
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r21
	cmpib,= 0,%r23,.L964
	extrd,u %r21,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r29
	ldb 0(%r19),%r24
	stb %r24,0(%r29)
	ldo 1(%r21),%r20
	cmpb,>>= %r20,%r22,.L964
	extrd,u %r20,63,32,%r1
	add,l %r25,%r1,%r28
	add,l %r26,%r1,%r23
	ldb 0(%r28),%r31
	stb %r31,0(%r23)
	ldo 2(%r21),%r19
	cmpb,>>= %r19,%r22,.L964
	extrd,u %r19,63,32,%r29
	add,l %r25,%r29,%r24
	add,l %r26,%r29,%r20
	ldb 0(%r24),%r1
	stb %r1,0(%r20)
	ldo 3(%r21),%r28
	cmpb,>>= %r28,%r22,.L964
	extrd,u %r28,63,32,%r23
	add,l %r25,%r23,%r19
	add,l %r26,%r23,%r31
	ldb 0(%r19),%r29
	stb %r29,0(%r31)
	ldo 4(%r21),%r24
	cmpb,>>= %r24,%r22,.L964
	extrd,u %r24,63,32,%r20
	add,l %r25,%r20,%r1
	add,l %r26,%r20,%r28
	ldb 0(%r1),%r23
	stb %r23,0(%r28)
	ldo 5(%r21),%r19
	cmpb,>>= %r19,%r22,.L964
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r29
	add,l %r26,%r31,%r24
	ldb 0(%r29),%r20
	stb %r20,0(%r24)
	ldo 6(%r21),%r21
	cmpb,>>= %r21,%r22,.L964
	extrd,u %r21,63,32,%r1
	add,l %r25,%r1,%r25
	add,l %r26,%r1,%r26
	ldb 0(%r25),%r22
	stb %r22,0(%r26)
.L964:
	bve,n (%r2)
.L1002:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L964
	extrd,u %r24,63,32,%r23
.L979:
	add,l %r25,%r23,%r31
	add,l %r26,%r23,%r1
	ldb 0(%r31),%r19
	ldo -1(%r23),%r23
	cmpib,*<> -1,%r23,.L979
	stb %r19,0(%r1)
	bve,n (%r2)
.L1003:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r22,.L964
	add,l %r25,%r29,%r28
.L973:
	uaddcm %r24,%r21,%r23
	ldo 1(%r25),%r24
	extrd,u %r23,63,32,%r19
	add,l %r24,%r29,%r29
	add,l %r19,%r29,%r21
.L977:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r21,%r28,.L977
	ldo 1(%r31),%r31
	bve,n (%r2)
.L1004:
	b .L973
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
	cmpb,*>> %r25,%r26,.L1009
	extrd,u %r23,63,32,%r19
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1034
.L1009:
	cmpb,*=,n %r0,%r19,.L1008
	ldo -1(%r23),%r29
	cmpib,>>= 6,%r29,.L1012
	or %r25,%r26,%r28
	extrd,u %r28,63,3,%r31
	ldo -1(%r31),%r1
	cmpb,*<= %r0,%r1,.L1012
	ldo 2(%r25),%r20
	sub %r26,%r20,%r21
	cmpib,*>>= 4,%r21,.L1037
	copy %r25,%r28
	extrw,u %r24,28,29,%r29
	extrd,u %r29,63,32,%r19
	copy %r26,%r31
	shladd,l %r19,3,%r25,%r1
.L1014:
	ldd 0(%r28),%r20
	std %r20,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r1,%r28,.L1014
	ldo 8(%r31),%r31
	depw,z %r29,29,30,%r21
	cmpb,=,n %r21,%r23,.L1008
	extrd,u %r21,63,32,%r29
	ldh,s %r29(%r25),%r19
	shladd,l %r29,1,%r26,%r1
	ldo 1(%r21),%r20
	cmpb,>>= %r20,%r23,.L1008
	sth %r19,0(%r1)
	extrd,u %r20,63,32,%r28
	ldh,s %r28(%r25),%r29
	shladd,l %r28,1,%r26,%r31
	ldo 2(%r21),%r21
	cmpb,>>= %r21,%r23,.L1008
	sth %r29,0(%r31)
	extrd,u %r21,63,32,%r23
	ldh,s %r23(%r25),%r19
	shladd,l %r23,1,%r26,%r1
	sth %r19,0(%r1)
.L1008:
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L1005
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r21
.L1038:
	add,l %r25,%r21,%r25
	add,l %r26,%r21,%r26
	ldb 0(%r25),%r23
	stb %r23,0(%r26)
.L1005:
	bve,n (%r2)
.L1034:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L1005
	extrd,u %r24,63,32,%r21
.L1019:
	add,l %r25,%r21,%r31
	add,l %r26,%r21,%r1
	ldb 0(%r31),%r20
	ldo -1(%r21),%r21
	cmpib,*<> -1,%r21,.L1019
	stb %r20,0(%r1)
	bve,n (%r2)
.L1012:
	copy %r25,%r28
.L1037:
	copy %r26,%r31
	shladd,l %r19,1,%r25,%r29
.L1016:
	ldh 0(%r28),%r20
	sth %r20,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r29,%r28,.L1016
	ldo 2(%r31),%r31
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L1005
	ldo -1(%r24),%r24
	b .L1038
	extrd,u %r24,63,32,%r21
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
	cmpb,*>> %r25,%r26,.L1044
	extrd,u %r21,63,32,%r29
	add,l %r25,%r23,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1082
.L1044:
	cmpb,*=,n %r0,%r19,.L1083
	ldo -1(%r2),%r28
	cmpib,>>=,n 8,%r28,.L1046
	or %r26,%r25,%r31
	extrd,u %r31,63,3,%r1
	ldo -1(%r1),%r20
	cmpb,*<= %r0,%r20,.L1046
	ldo 4(%r25),%r22
	cmpb,*= %r22,%r26,.L1046
	extrw,u %r24,28,29,%r1
	copy %r25,%r28
	extrd,u %r1,63,32,%r19
	copy %r26,%r31
	shladd,l %r19,3,%r25,%r20
.L1047:
	ldd 0(%r28),%r22
	std %r22,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L1047
	ldo 8(%r31),%r31
	add,l %r1,%r1,%r1
	cmpb,= %r1,%r2,.L1050
	extrd,u %r1,63,32,%r2
	ldw,s %r2(%r25),%r19
	shladd,l %r2,2,%r26,%r20
	stw %r19,0(%r20)
.L1050:
	cmpb,>>= %r21,%r23,.L1039
	sub %r23,%r21,%r2
	ldo -1(%r2),%r19
	cmpib,>>= 7,%r19,.L1084
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r20
	add,l %r25,%r20,%r22
	sub %r31,%r22,%r1
	cmpib,*>>= 6,%r1,.L1042
	add,l %r25,%r29,%r28
	or %r28,%r31,%r19
	extrd,u %r19,63,3,%r20
	ldo -1(%r20),%r22
	cmpb,*<=,n %r0,%r22,.L1042
	extrw,u %r2,28,29,%r29
	extrd,u %r29,63,32,%r24
	shladd,l %r24,3,%r28,%r1
.L1052:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r1,%r28,.L1052
	ldo 8(%r31),%r31
	copy %r2,%r28
	extrw,u %r2,31,3,%r2
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r21
	cmpib,= 0,%r2,.L1039
	extrd,u %r21,63,32,%r31
	add,l %r25,%r31,%r20
	add,l %r26,%r31,%r22
	ldb 0(%r20),%r29
	stb %r29,0(%r22)
	ldo 1(%r21),%r24
	cmpb,>>= %r24,%r23,.L1039
	extrd,u %r24,63,32,%r1
	add,l %r25,%r1,%r19
	add,l %r26,%r1,%r28
	ldb 0(%r19),%r2
	stb %r2,0(%r28)
	ldo 2(%r21),%r20
	cmpb,>>= %r20,%r23,.L1039
	extrd,u %r20,63,32,%r31
	add,l %r25,%r31,%r22
	add,l %r26,%r31,%r29
	ldb 0(%r22),%r24
	stb %r24,0(%r29)
	ldo 3(%r21),%r1
	cmpb,>>= %r1,%r23,.L1039
	extrd,u %r1,63,32,%r28
	add,l %r25,%r28,%r19
	add,l %r26,%r28,%r2
	ldb 0(%r19),%r20
	stb %r20,0(%r2)
	ldo 4(%r21),%r22
	cmpb,>>= %r22,%r23,.L1039
	extrd,u %r22,63,32,%r31
	add,l %r25,%r31,%r29
	add,l %r26,%r31,%r24
	ldb 0(%r29),%r1
	stb %r1,0(%r24)
	ldo 5(%r21),%r28
	cmpb,>>= %r28,%r23,.L1039
	extrd,u %r28,63,32,%r2
	add,l %r25,%r2,%r19
	add,l %r26,%r2,%r20
	ldb 0(%r19),%r22
	stb %r22,0(%r20)
	ldo 6(%r21),%r21
	cmpb,>>= %r21,%r23,.L1039
	extrd,u %r21,63,32,%r31
	add,l %r25,%r31,%r25
	add,l %r26,%r31,%r26
	ldb 0(%r25),%r23
	stb %r23,0(%r26)
.L1039:
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1082:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L1039
	extrd,u %r24,63,32,%r22
.L1056:
	add,l %r25,%r22,%r31
	add,l %r26,%r22,%r1
	ldb 0(%r31),%r20
	ldo -1(%r22),%r22
	cmpib,*<> -1,%r22,.L1056
	stb %r20,0(%r1)
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1083:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r23,.L1039
	add,l %r25,%r29,%r28
.L1042:
	uaddcm %r24,%r21,%r24
	ldo 1(%r25),%r1
	extrd,u %r24,63,32,%r2
	add,l %r1,%r29,%r29
	add,l %r2,%r29,%r19
.L1054:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r19,%r28,.L1054
	ldo 1(%r31),%r31
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1046:
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r19,2,%r25,%r22
.L1049:
	ldw 0(%r28),%r1
	stw %r1,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r22,%r28,.L1049
	ldo 4(%r31),%r31
	b,n .L1050
.L1084:
	b .L1042
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
	cmpib,<> 0,%r28,.L1094
	copy %r31,%r26
	extrd,u %r31,49,50,%r28
	cmpb,*<> %r0,%r28,.L1093
	extrw,s %r31,18,19,%r1
	cmpib,<> 0,%r1,.L1095
	extrw,s %r31,19,20,%r19
	cmpib,<> 0,%r19,.L1096
	extrw,s %r31,20,21,%r20
	cmpib,<> 0,%r20,.L1097
	extrw,s %r31,21,22,%r21
	cmpib,<> 0,%r21,.L1098
	extrw,s %r31,22,23,%r22
	cmpib,<> 0,%r22,.L1099
	extrw,s %r31,23,24,%r23
	cmpib,<> 0,%r23,.L1100
	extrw,s %r31,24,25,%r24
	cmpib,<> 0,%r24,.L1101
	extrw,s %r31,25,26,%r25
	cmpib,<> 0,%r25,.L1102
	extrw,s %r31,26,27,%r29
	cmpib,<>,n 0,%r29,.L1103
	extrw,s %r31,27,28,%r28
	cmpib,<> 0,%r28,.L1104
	extrw,s %r31,28,29,%r1
	cmpib,<> 0,%r1,.L1105
	extrw,s %r31,29,30,%r19
	cmpib,<> 0,%r19,.L1106
	extrw,s %r31,30,31,%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L1107
	cmpiclr,*<> 0,%r26,%r26
	ldi 1,%r26
	ldo 15(%r26),%r28
.L1093:
	bve,n (%r2)
.L1094:
	bve (%r2)
	ldi 0,%r28
.L1105:
	bve (%r2)
	ldi 12,%r28
.L1095:
	bve (%r2)
	ldi 2,%r28
.L1096:
	bve (%r2)
	ldi 3,%r28
.L1097:
	bve (%r2)
	ldi 4,%r28
.L1098:
	bve (%r2)
	ldi 5,%r28
.L1099:
	bve (%r2)
	ldi 6,%r28
.L1100:
	bve (%r2)
	ldi 7,%r28
.L1101:
	bve (%r2)
	ldi 8,%r28
.L1102:
	bve (%r2)
	ldi 9,%r28
.L1103:
	bve (%r2)
	ldi 10,%r28
.L1104:
	bve (%r2)
	ldi 11,%r28
.L1106:
	bve (%r2)
	ldi 13,%r28
.L1107:
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
	b,n .L1112
	extrd,s,*>= %r28,62,1,%r0
	b,n .L1113
	extrd,s,*>= %r28,61,1,%r0
	b,n .L1114
	extrd,s,*>= %r28,60,1,%r0
	b,n .L1115
	extrd,s,*>= %r28,59,1,%r0
	b,n .L1116
	extrd,s,*>= %r28,58,1,%r0
	b,n .L1117
	extrd,s,*>= %r28,57,1,%r0
	b,n .L1118
	extrd,s,*>= %r28,56,1,%r0
	b,n .L1119
	extrd,s,*>= %r28,55,1,%r0
	b,n .L1120
	extrd,s,*>= %r28,54,1,%r0
	b,n .L1121
	extrd,s,*>= %r28,53,1,%r0
	b,n .L1122
	extrd,s,*>= %r28,52,1,%r0
	b,n .L1123
	extrd,s,*>= %r28,51,1,%r0
	b,n .L1124
	extrd,s,*>= %r28,50,1,%r0
	b,n .L1125
	bb,*< %r28,49,.L1126
	extrw,s %r28,16,17,%r31
	cmpib,<> 0,%r31,.L1129
	ldi 16,%r28
	bve,n (%r2)
.L1112:
	bve (%r2)
	ldi 0,%r28
.L1113:
	bve (%r2)
	ldi 1,%r28
.L1124:
	bve (%r2)
	ldi 12,%r28
.L1129:
	bve (%r2)
	ldi 15,%r28
.L1114:
	bve (%r2)
	ldi 2,%r28
.L1115:
	bve (%r2)
	ldi 3,%r28
.L1116:
	bve (%r2)
	ldi 4,%r28
.L1117:
	bve (%r2)
	ldi 5,%r28
.L1118:
	bve (%r2)
	ldi 6,%r28
.L1119:
	bve (%r2)
	ldi 7,%r28
.L1120:
	bve (%r2)
	ldi 8,%r28
.L1121:
	bve (%r2)
	ldi 9,%r28
.L1122:
	bve (%r2)
	ldi 10,%r28
.L1123:
	bve (%r2)
	ldi 11,%r28
.L1125:
	bve (%r2)
	ldi 13,%r28
.L1126:
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
	b .L1134
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	bve (%r2)
	ldo -64(%r30),%r30
.L1134:
	fsub,sgl %fr4R,%fr22R,%fr5R
	fcnv,t,sgl,dw %fr5R,%fr6
	fstd %fr6,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r19,%r31,%r28
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
	extrw,u %r26,30+1-1,1,%r31
	extrw,u %r26,31,1,%r19
	extrw,u %r26,28+1-1,1,%r20
	add,l %r31,%r19,%r1
	extrw,u %r26,27+1-1,1,%r22
	add,l %r1,%r28,%r21
	extrw,u %r26,23+1-1,1,%r28
	add,l %r21,%r20,%r23
	extrw,u %r26,26+1-1,1,%r24
	add,l %r23,%r22,%r25
	extrw,u %r26,25+1-1,1,%r29
	add,l %r25,%r24,%r31
	extrw,u %r26,24+1-1,1,%r19
	add,l %r31,%r29,%r1
	extrw,u %r26,22+1-1,1,%r21
	add,l %r1,%r19,%r20
	extrw,u %r26,21+1-1,1,%r23
	add,l %r20,%r28,%r22
	extrw,u %r26,17+1-1,1,%r28
	add,l %r22,%r21,%r24
	extrw,u %r26,20+1-1,1,%r25
	add,l %r24,%r23,%r29
	extrw,u %r26,19+1-1,1,%r1
	extrw,u %r26,18+1-1,1,%r19
	add,l %r29,%r25,%r31
	extrw,u %r26,16+1-1,1,%r26
	add,l %r31,%r1,%r20
	add,l %r20,%r19,%r21
	add,l %r21,%r28,%r22
	add,l %r26,%r22,%r23
	bve (%r2)
	extrd,u %r23,63,1,%r28
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
	extrw,u %r26,30+1-1,1,%r31
	extrw,u %r26,31,1,%r19
	extrw,u %r26,28+1-1,1,%r20
	add,l %r31,%r19,%r1
	extrw,u %r26,27+1-1,1,%r22
	add,l %r1,%r28,%r21
	extrw,u %r26,23+1-1,1,%r28
	add,l %r21,%r20,%r23
	extrw,u %r26,26+1-1,1,%r24
	add,l %r23,%r22,%r25
	extrw,u %r26,25+1-1,1,%r29
	add,l %r25,%r24,%r31
	extrw,u %r26,24+1-1,1,%r19
	add,l %r31,%r29,%r1
	extrw,u %r26,22+1-1,1,%r21
	add,l %r1,%r19,%r20
	extrw,u %r26,21+1-1,1,%r23
	add,l %r20,%r28,%r22
	extrw,u %r26,17+1-1,1,%r28
	add,l %r22,%r21,%r24
	extrw,u %r26,20+1-1,1,%r25
	add,l %r24,%r23,%r29
	extrw,u %r26,19+1-1,1,%r1
	extrw,u %r26,18+1-1,1,%r19
	add,l %r29,%r25,%r31
	extrw,u %r26,16+1-1,1,%r26
	add,l %r31,%r1,%r20
	add,l %r20,%r19,%r21
	add,l %r21,%r28,%r22
	add,l %r26,%r22,%r23
	bve (%r2)
	extrd,s %r23,63,32,%r28
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
	cmpib,= 0,%r26,.L1142
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L1141:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r1
	extrd,u %r31,62,63,%r31
	add,l %r1,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L1141
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1142:
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
	extrd,u %r26,63,32,%r1
	cmpib,= 0,%r26,.L1147
	extrd,u %r25,63,32,%r25
	cmpb,*=,n %r0,%r25,.L1148
	ldi 0,%r28
.L1146:
	extrw,s %r25,31+1-1,1,%r19
	add,l %r1,%r1,%r20
	and %r19,%r1,%r31
	extrd,u %r25,62,63,%r25
	add,l %r31,%r28,%r28
	extrd,u %r20,63,32,%r1
	cmpb,*<> %r0,%r25,.L1146
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1147:
	bve (%r2)
	copy %r1,%r28
.L1148:
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
	cmpb,<<= %r26,%r25,.L1152
	ldi 1,%r19
.L1151:
	cmpib,> 0,%r31,.L1152
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L1153
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L1151
	nop
.L1153:
	cmpb,*= %r0,%r19,.L1161
	copy %r19,%r1
.L1152:
	ldi 0,%r1
.L1158:
	cmpb,>>,n %r31,%r28,.L1157
	sub %r28,%r31,%r28
	or %r19,%r1,%r1
	extrd,u %r28,63,32,%r28
.L1157:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1158
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r1,%r28
	bve,n (%r2)
.L1161:
	cmpiclr,*<> 0,%r24,%r0
	copy %r1,%r28
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
	b,n .L1175
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L1173
	ldi 1,%r28
	ldi 0,%r28
.L1173:
	bve,n (%r2)
.L1175:
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
	b,n .L1179
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L1177
	ldi 1,%r28
	ldi 0,%r28
.L1177:
	bve,n (%r2)
.L1179:
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
	xmpyu %fr22R,%fr23R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	std %r25,-56(%r30)
	fldd -56(%r30),%fr5
	extrd,u %r25,31,32,%r25
	std %r31,-56(%r30)
	fldd -56(%r30),%fr6
	xmpyu %fr5R,%fr6R,%fr7
	fstd %fr7,-56(%r30)
	ldd -56(%r30),%r1
	std %r25,-56(%r30)
	fldd -56(%r30),%fr8
	std %r26,-56(%r30)
	fldd -56(%r30),%fr9
	xmpyu %fr8R,%fr9R,%fr10
	fstd %fr10,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r1,%r19,%r20
	depd,z %r20,31,32,%r21
	add,l %r21,%r28,%r28
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
	xmpyu %fr22R,%fr23R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	std %r25,-56(%r30)
	fldd -56(%r30),%fr5
	extrd,u %r25,31,32,%r25
	std %r31,-56(%r30)
	fldd -56(%r30),%fr6
	xmpyu %fr5R,%fr6R,%fr7
	fstd %fr7,-56(%r30)
	ldd -56(%r30),%r1
	std %r25,-56(%r30)
	fldd -56(%r30),%fr8
	std %r26,-56(%r30)
	fldd -56(%r30),%fr9
	xmpyu %fr8R,%fr9R,%fr10
	fstd %fr10,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r1,%r19,%r20
	depd,z %r20,31,32,%r21
	add,l %r21,%r28,%r28
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
	cmpib,> 0,%r25,.L1192
	extrd,s %r25,63,32,%r20
	cmpb,*= %r0,%r20,.L1187
	ldi 0,%r24
.L1184:
	ldi 1,%r22
	ldi 0,%r28
	ldi 32,%r23
.L1186:
	extrw,s %r20,31+1-1,1,%r21
	xor %r22,%r23,%r25
	and %r21,%r26,%r1
	extrw,s %r20,30,31,%r20
	add,l %r1,%r28,%r29
	add,l %r26,%r26,%r26
	or,>= %r0,%r20,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r25,31,8,%r28
	subi 0,%r28,%r28
	sub %r0,%r31,%r19
	sub %r0,%r28,%r21
	extrw,u %r19,0,1,%r1
	extrw,u %r21,24+1-1,1,%r25
	ldo 1(%r22),%r22
	and %r1,%r25,%r31
	extrd,s %r29,63,32,%r28
	extrd,s %r26,63,32,%r26
	extrd,s %r20,63,32,%r20
	extrd,u %r31,63,8,%r19
	cmpb,*<> %r0,%r19,.L1186
	extrd,u %r22,63,8,%r22
	cmpb,*= %r0,%r24,.L1185
	sub %r0,%r29,%r24
	extrd,s %r24,63,32,%r28
.L1185:
	bve,n (%r2)
.L1192:
	sub %r0,%r20,%r19
	ldi 1,%r24
	b .L1184
	extrd,s %r19,63,32,%r20
.L1187:
	bve (%r2)
	copy %r20,%r28
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
	cmpb,*>,n %r0,%r26,.L1217
	ldi 1,%r28
	ldi 0,%r22
.L1194:
	cmpb,*<= %r0,%r25,.L1219
	extrd,u %r26,63,32,%r23
	sub %r0,%r25,%r25
	copy %r28,%r22
.L1219:
	extrd,u %r25,63,32,%r31
	cmpb,<<= %r26,%r25,.L1197
	ldi 1,%r19
.L1196:
	cmpib,>,n 0,%r31,.L1197
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r1
	extrd,u %r21,63,32,%r19
	cmpb,<< %r1,%r23,.L1218
	extrd,u %r1,63,32,%r31
.L1207:
	cmpb,*= %r0,%r19,.L1200
	copy %r19,%r28
.L1197:
	ldi 0,%r28
.L1203:
	cmpb,<< %r23,%r31,.L1202
	sub %r23,%r31,%r20
	or %r19,%r28,%r28
	extrd,u %r20,63,32,%r23
.L1202:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1203
	extrd,u %r31,62,63,%r31
.L1200:
	sub %r0,%r28,%r24
	cmpiclr,*= 0,%r22,%r0
	copy %r24,%r28
	bve,n (%r2)
.L1218:
	cmpib,<> 0,%r21,.L1196
	nop
	b,n .L1207
.L1217:
	sub %r0,%r26,%r26
	ldi 0,%r28
	b .L1194
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
	cmpb,*<=,n %r22,%r26,.L1221
	sub %r0,%r26,%r26
	ldi 1,%r22
.L1221:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r1
	cmpb,>> %r26,%r25,.L1222
	ldi 1,%r19
	b,n .L1242
.L1245:
	cmpiclr,<> 0,%r21,%r0
	b,n .L1244
.L1222:
	cmpib,>,n 0,%r1,.L1242
	add,l %r19,%r19,%r21
	add,l %r1,%r1,%r20
	extrd,u %r21,63,32,%r19
	cmpb,<< %r20,%r28,.L1245
	extrd,u %r20,63,32,%r1
.L1244:
	cmpb,*= %r0,%r19,.L1247
	sub %r0,%r28,%r31
.L1242:
	cmpb,>>,n %r1,%r28,.L1228
	sub %r28,%r1,%r28
	extrd,u %r28,63,32,%r28
.L1228:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1242
	extrd,u %r1,62,63,%r1
	sub %r0,%r28,%r31
.L1247:
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
	cmpb,<<= %r26,%r25,.L1309
	ldi 1,%r20
	extrw,s %r25,31,16,%r28
	cmpiclr,<= 0,%r28,%r0
	b,n .L1310
.L1253:
	add,l %r20,%r20,%r22
	add,l %r25,%r25,%r31
	extrd,u %r31,63,16,%r23
	cmpb,>>= %r23,%r26,.L1251
	extrd,u %r22,63,16,%r21
	extrw,s,>= %r22,31,16,%r29
	subi 0,%r29,%r29
	sub %r0,%r29,%r28
	bb,>=,n %r28,16,.L1251
	copy %r23,%r25
	extrw,s %r25,31,16,%r28
	cmpib,<= 0,%r28,.L1253
	copy %r21,%r20
.L1310:
	cmpb,>> %r25,%r26,.L1276
	ldi 0,%r21
	sub %r26,%r25,%r26
	copy %r20,%r21
	extrd,u %r26,63,16,%r26
.L1276:
	extrd,u %r20,47+16-1,16,%r19
	cmpb,*= %r0,%r19,.L1279
	extrd,u %r25,62,63,%r1
.L1257:
	cmpb,>> %r1,%r26,.L1258
	sub %r26,%r1,%r1
	or %r21,%r19,%r21
	extrd,u %r1,63,16,%r26
	extrd,u %r21,63,16,%r21
.L1258:
	extrd,u %r20,46+16-1,16,%r19
	cmpb,*= %r0,%r19,.L1279
	extrd,u %r25,61,62,%r22
	cmpb,>> %r22,%r26,.L1316
	extrd,u %r20,45+16-1,16,%r29
	sub %r26,%r22,%r31
	or %r21,%r19,%r23
	extrd,u %r31,63,16,%r26
	extrd,u %r23,63,16,%r21
.L1316:
	cmpb,*= %r0,%r29,.L1279
	extrd,u %r25,60,61,%r28
	cmpb,>> %r28,%r26,.L1317
	extrd,u %r20,44+16-1,16,%r19
	sub %r26,%r28,%r26
	or %r21,%r29,%r1
	extrd,u %r26,63,16,%r26
	extrd,u %r1,63,16,%r21
.L1317:
	cmpb,*= %r0,%r19,.L1279
	extrd,u %r25,59,60,%r22
	cmpb,>> %r22,%r26,.L1318
	extrd,u %r20,43+16-1,16,%r23
	sub %r26,%r22,%r31
	or %r21,%r19,%r21
	extrd,u %r31,63,16,%r26
	extrd,u %r21,63,16,%r21
.L1318:
	cmpb,*= %r0,%r23,.L1279
	extrd,u %r25,58,59,%r29
	cmpb,>> %r29,%r26,.L1319
	extrd,u %r20,42+16-1,16,%r1
	sub %r26,%r29,%r26
	or %r21,%r23,%r28
	extrd,u %r26,63,16,%r26
	extrd,u %r28,63,16,%r21
.L1319:
	cmpb,*= %r0,%r1,.L1279
	extrd,u %r25,57,58,%r19
	cmpb,>> %r19,%r26,.L1320
	extrd,u %r20,41+16-1,16,%r23
	sub %r26,%r19,%r22
	or %r21,%r1,%r31
	extrd,u %r22,63,16,%r26
	extrd,u %r31,63,16,%r21
.L1320:
	cmpb,*= %r0,%r23,.L1279
	extrd,u %r25,56,57,%r29
	cmpclr,>> %r29,%r26,%r0
	b,n .L1311
.L1264:
	extrd,u %r20,40+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1279
	extrd,u %r25,55,56,%r1
	cmpb,<<= %r1,%r26,.L1312
	sub %r26,%r1,%r19
.L1265:
	extrd,u %r20,39+16-1,16,%r23
	cmpb,*= %r0,%r23,.L1279
	extrd,u %r25,54,55,%r31
	cmpclr,>> %r31,%r26,%r0
	b,n .L1313
.L1266:
	extrd,u %r20,38+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1279
	extrd,u %r25,53,54,%r1
	cmpb,<<= %r1,%r26,.L1314
	or %r21,%r28,%r19
.L1267:
	extrd,u %r20,37+16-1,16,%r22
	cmpb,*= %r0,%r22,.L1279
	extrd,u %r25,52,53,%r23
	cmpclr,>> %r23,%r26,%r0
	b,n .L1315
.L1268:
	extrd,u %r20,36+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1279
	extrd,u %r25,51,52,%r1
	cmpb,>> %r1,%r26,.L1321
	extrd,u %r20,35+16-1,16,%r19
	sub %r26,%r1,%r26
	or %r21,%r28,%r21
	extrd,u %r26,63,16,%r26
	extrd,u %r21,63,16,%r21
.L1321:
	cmpb,*= %r0,%r19,.L1279
	extrd,u %r25,50,51,%r22
	cmpb,>> %r22,%r26,.L1322
	extrd,u %r20,34+16-1,16,%r29
	sub %r26,%r22,%r23
	or %r21,%r19,%r31
	extrd,u %r23,63,16,%r26
	extrd,u %r31,63,16,%r21
.L1322:
	cmpb,*= %r0,%r29,.L1279
	extrd,u %r25,49,50,%r28
	cmpb,>> %r28,%r26,.L1271
	sub %r26,%r28,%r1
	or %r21,%r29,%r21
	extrd,u %r1,63,16,%r26
	extrd,u %r21,63,16,%r21
.L1271:
	extrw,u %r20,1+16-1,16,%r20
	cmpib,= 0,%r20,.L1279
	extrd,u %r25,48,49,%r25
	cmpb,>> %r25,%r26,.L1255
	ldi 0,%r28
	sub %r26,%r25,%r19
	depwi -1,31,1,%r21
	extrd,u %r19,63,16,%r28
	b .L1255
	extrd,u %r21,63,16,%r21
.L1251:
	cmpb,*= %r0,%r21,.L1255
	copy %r26,%r28
	cmpb,>>,n %r23,%r26,.L1256
	sub %r26,%r23,%r26
	extrd,u %r20,63,15,%r19
	extrd,u %r25,63,15,%r1
	extrd,u %r26,63,16,%r26
	copy %r23,%r25
	b .L1257
	copy %r21,%r20
.L1279:
	copy %r26,%r28
.L1255:
	cmpiclr,*<> 0,%r24,%r0
	copy %r21,%r28
	bve,n (%r2)
.L1311:
	sub %r26,%r29,%r26
	or %r21,%r23,%r21
	extrd,u %r26,63,16,%r26
	b .L1264
	extrd,u %r21,63,16,%r21
.L1256:
	extrd,u %r20,63,15,%r19
	extrd,u %r25,63,15,%r1
	copy %r21,%r20
	copy %r23,%r25
	b .L1257
	ldi 0,%r21
.L1312:
	or %r21,%r28,%r22
	extrd,u %r19,63,16,%r26
	b .L1265
	extrd,u %r22,63,16,%r21
.L1313:
	sub %r26,%r31,%r29
	or %r21,%r23,%r21
	extrd,u %r29,63,16,%r26
	b .L1266
	extrd,u %r21,63,16,%r21
.L1314:
	sub %r26,%r1,%r26
	extrd,u %r26,63,16,%r26
	b .L1267
	extrd,u %r19,63,16,%r21
.L1315:
	sub %r26,%r23,%r31
	or %r21,%r22,%r29
	extrd,u %r31,63,16,%r26
	b .L1268
	extrd,u %r29,63,16,%r21
.L1309:
	cmpb,<>,n %r26,%r25,.L1278
	copy %r20,%r21
	b .L1255
	ldi 0,%r28
.L1278:
	copy %r26,%r28
	b .L1255
	ldi 0,%r21
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
	cmpb,*<<= %r26,%r25,.L1325
	depdi,z 1,32,4,%r20
	and %r25,%r20,%r19
.L1348:
	cmpb,*<>,n %r0,%r19,.L1325
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L1346
	depd,z %r31,62,63,%r31
	cmpb,*= %r0,%r31,.L1347
	copy %r31,%r1
.L1325:
	ldi 0,%r1
.L1331:
	cmpb,*>>,n %r25,%r28,.L1330
	sub %r28,%r25,%r28
	or %r1,%r31,%r1
.L1330:
	extrd,u %r31,62,63,%r31
	cmpb,*<> %r0,%r31,.L1331
	extrd,u %r25,62,63,%r25
	cmpiclr,*<> 0,%r24,%r0
	copy %r1,%r28
	bve,n (%r2)
.L1346:
	cmpb,*<> %r0,%r31,.L1348
	and %r25,%r20,%r19
	copy %r31,%r1
.L1347:
	cmpiclr,*<> 0,%r24,%r0
	copy %r1,%r28
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
	bb,>= %r25,26,.L1350
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r29
	ldi 0,%r22
	mtsar %r29
	depw,z %r26,%sar,32,%r28
	extrd,s %r28,63,32,%r25
.L1351:
	depd,z %r25,31,32,%r19
	bve (%r2)
	or %r19,%r22,%r28
.L1350:
	cmpb,*= %r0,%r28,.L1353
	subi 31,%r28,%r20
	mtsar %r20
	extrd,u %r26,63,32,%r19
	subi 32,%r28,%r1
	depw,z %r19,%sar,32,%r31
	mtsar %r1
	extrd,s %r26,0+32-1,32,%r26
	shrpw %r0,%r19,%sar,%r21
	extrd,u %r31,63,32,%r22
	mtsar %r20
	depw,z %r26,%sar,32,%r23
	or %r21,%r23,%r24
	b .L1351
	extrd,s %r24,63,32,%r25
.L1353:
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
	bb,>= %r24,25,.L1355
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	ldi 0,%r29
	extrd,u %r24,63,32,%r21
	mtsarcm %r21
	bve (%r2)
	depd,z %r25,%sar,64,%r28
.L1355:
	cmpb,*= %r0,%r28,.L1358
	subi 63,%r28,%r19
	mtsar %r19
	subi 64,%r28,%r31
	depd,z %r26,%sar,64,%r1
	mtsar %r31
	shrpd %r0,%r25,%sar,%r20
	mtsar %r19
	or %r20,%r1,%r28
	bve (%r2)
	depd,z %r25,%sar,64,%r29
.L1358:
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
	bb,>= %r25,26,.L1360
	extrd,s %r25,63,32,%r28
	extrd,s %r26,0+32-1,32,%r26
	subi 63,%r25,%r25
	extrw,s %r26,0,1,%r29
	mtsar %r25
	extrd,s %r29,63,32,%r22
	extrw,s %r26,%sar,32,%r28
	extrd,u %r28,63,32,%r24
.L1361:
	depd,z %r22,31,32,%r31
	bve (%r2)
	or %r31,%r24,%r28
.L1360:
	cmpb,*= %r0,%r28,.L1363
	mtsarcm %r28
	extrd,s %r26,0+32-1,32,%r31
	ldo -1(%r28),%r19
	extrw,s %r31,%sar,32,%r20
	mtsar %r19
	extrd,s %r20,63,32,%r22
	depw,z %r31,%sar,32,%r1
	mtsar %r28
	shrpw %r0,%r26,%sar,%r21
	or %r1,%r21,%r23
	b .L1361
	extrd,u %r23,63,32,%r24
.L1363:
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
	bb,>= %r24,25,.L1365
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,s %r26,0,1,%r28
	extrd,s %r24,63,32,%r20
	mtsarcm %r20
	bve (%r2)
	extrd,s %r26,%sar,64,%r29
.L1365:
	cmpb,*= %r0,%r28,.L1368
	mtsar %r28
	subi 63,%r28,%r19
	shrpd %r0,%r25,%sar,%r29
	mtsar %r19
	subi 64,%r28,%r31
	extrd,s %r26,%sar,64,%r28
	extrd,u %r31,63,32,%r1
	mtsarcm %r1
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r29,%r29
.L1368:
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
	cmpclr,<< %r21,%r26,%r1
	ldi 1,%r1
	depw,z %r1,27,28,%r23
	subi 16,%r23,%r22
	mtsar %r22
	depwi,z -1,23,8,%r20
	shrpw %r0,%r26,%sar,%r26
	and %r26,%r20,%r24
	ldo -1(%r24),%r25
	extrw,u %r25,0,1,%r29
	depw,z %r29,28,29,%r21
	subi 8,%r21,%r1
	mtsar %r1
	add,l %r21,%r23,%r20
	ldi 240,%r19
	shrpw %r0,%r26,%sar,%r23
	and %r23,%r19,%r19
	ldo -1(%r19),%r22
	extrw,u %r22,0,1,%r26
	depw,z %r26,29,30,%r24
	subi 4,%r24,%r25
	mtsar %r25
	ldi 12,%r31
	shrpw %r0,%r23,%sar,%r21
	add,l %r24,%r20,%r29
	and %r21,%r31,%r31
	ldo -1(%r31),%r1
	extrw,u %r1,0,1,%r20
	add,l %r20,%r20,%r23
	subi 2,%r23,%r19
	mtsar %r19
	shrpw %r0,%r21,%sar,%r22
	bb,< %r22,30,.L1374
	ldi 0,%r28
	subi 2,%r22,%r28
.L1374:
	add,l %r23,%r29,%r26
	add,l %r28,%r26,%r24
	bve (%r2)
	extrd,s %r24,63,32,%r28
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
	ldo -1(%r28),%r1
	cmpiclr,*> 0,%r1,%r31
	ldi -1,%r31
	std %r3,-120(%r30)
	and %r31,%r26,%r26
	extrd,u %r1,0,1,%r3
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	or %r26,%r25,%r26
	depw,z %r3,25,26,%r19
	ldd -144(%r30),%r2
	add,l %r19,%r28,%r20
	ldd -120(%r30),%r3
	extrd,s %r20,63,32,%r28
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
	b,n .L1381
	cmpb,< %r28,%r31,.L1382
	extrd,u %r26,63,32,%r1
	cmpb,<< %r26,%r25,.L1381
	extrd,u %r25,63,32,%r19
	cmpclr,>>= %r19,%r1,%r0
	b,n .L1382
	bve (%r2)
	ldi 1,%r28
.L1381:
	bve (%r2)
	ldi 0,%r28
.L1382:
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
	b,n .L1388
	cmpb,< %r28,%r31,.L1387
	extrd,u %r26,63,32,%r1
	cmpb,<< %r26,%r25,.L1388
	extrd,u %r25,63,32,%r19
	cmpclr,>>= %r19,%r1,%r20
	ldi 1,%r20
	bve (%r2)
	extrd,s %r20,63,32,%r28
.L1388:
	bve (%r2)
	ldi -1,%r28
.L1387:
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
	b,n .L1393
	cmpclr,*>= %r24,%r26,%r0
	b,n .L1392
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1393
	cmpclr,*>>= %r23,%r25,%r25
	ldi 1,%r25
	bve (%r2)
	ldo 1(%r25),%r28
.L1393:
	bve (%r2)
	ldi 0,%r28
.L1392:
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
	ldo -1(%r31),%r1
	extrw,u %r1,0,1,%r19
	depw,z %r19,27,28,%r20
	mtsar %r20
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,8,%r28
	ldo -1(%r28),%r21
	extrw,u %r21,0,1,%r22
	depw,z %r22,28,29,%r23
	mtsar %r23
	add,l %r23,%r20,%r25
	shrpw %r0,%r26,%sar,%r24
	extrw,u %r24,31,4,%r29
	ldo -1(%r29),%r31
	extrw,u %r31,0,1,%r1
	depw,z %r1,29,30,%r19
	mtsar %r19
	add,l %r19,%r25,%r21
	shrpw %r0,%r24,%sar,%r20
	extrw,u %r20,31,2,%r26
	ldo -1(%r26),%r28
	extrw,u %r28,0,1,%r22
	add,l %r22,%r22,%r23
	add,l %r23,%r21,%r25
	mtsar %r23
	shrpw %r0,%r20,%sar,%r24
	extrw,u %r24,31,2,%r29
	uaddcm %r0,%r29,%r31
	extrw,u %r29,30,31,%r1
	extrw,s %r31,31+1-1,1,%r19
	subi 2,%r1,%r20
	and %r19,%r20,%r21
	add,l %r21,%r25,%r26
	bve (%r2)
	extrd,s %r26,63,32,%r28
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
	std %r2,-16(%r30)
	or,*>= %r0,%r25,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r1
	cmpiclr,*> 0,%r1,%r31
	ldi -1,%r31
	std,ma %r4,128(%r30)
	and %r31,%r25,%r2
	std %r3,-120(%r30)
	ldo -48(%r30),%r29
	extrd,u %r1,0,1,%r3
	cmpiclr,*= 0,%r25,%r0
	ldi 0,%r26
	or %r26,%r2,%r26
	b,l __ctzdi2,%r2
	nop
	depw,z %r3,25,26,%r19
	ldd -144(%r30),%r2
	add,l %r19,%r28,%r20
	ldd -120(%r30),%r3
	extrd,s %r20,63,32,%r28
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
	cmpb,*<> %r0,%r25,.L1398
	ldo -48(%r30),%r29
	cmpb,*<> %r0,%r26,.L1403
	copy %r25,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1398:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldd -144(%r30),%r2
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1403:
	b,l __ctzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo 65(%r28),%r19
	extrd,s %r19,63,32,%r28
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
	bb,>= %r25,26,.L1405
	extrd,s %r25,63,32,%r28
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	ldi 0,%r22
	shrpw %r0,%r26,%sar,%r25
	extrd,u %r25,63,32,%r24
.L1406:
	depd,z %r22,31,32,%r29
	bve (%r2)
	or %r29,%r24,%r28
.L1405:
	cmpb,*= %r0,%r28,.L1408
	mtsar %r28
	extrd,u %r26,0+32-1,32,%r31
	ldo -1(%r28),%r19
	shrpw %r0,%r31,%sar,%r20
	mtsar %r19
	extrd,u %r20,63,32,%r22
	depw,z %r31,%sar,32,%r1
	mtsar %r28
	shrpw %r0,%r26,%sar,%r21
	or %r1,%r21,%r23
	b .L1406
	extrd,u %r23,63,32,%r24
.L1408:
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
	bb,>= %r24,25,.L1410
	extrd,s %r24,63,32,%r28
	mtsar %r24
	ldi 0,%r28
	bve (%r2)
	shrpd %r0,%r26,%sar,%r29
.L1410:
	cmpb,*= %r0,%r28,.L1413
	mtsar %r28
	subi 64,%r28,%r31
	shrpd %r0,%r25,%sar,%r29
	shrpd %r0,%r26,%sar,%r28
	extrd,u %r31,63,32,%r1
	mtsarcm %r1
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r29,%r29
.L1413:
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
	xmpyu %fr24R,%fr22R,%fr5
	ldd -56(%r30),%r1
	extrw,u %r1,15,16,%r31
	std %r25,-56(%r30)
	fldd -56(%r30),%fr4
	xmpyu %fr23R,%fr4R,%fr6
	xmpyu %fr22R,%fr4R,%fr7
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r20
	fstd %fr6,-56(%r30)
	add,l %r31,%r20,%r22
	ldd -56(%r30),%r29
	extrw,u %r1,31,16,%r19
	extrw,u %r22,31,16,%r23
	extrw,u %r22,15,16,%r24
	fstd %fr7,-56(%r30)
	ldd -56(%r30),%r21
	add,l %r23,%r29,%r26
	add,l %r24,%r21,%r1
	depw,z %r26,15,16,%r25
	extrw,u %r26,15,16,%r31
	add,l %r19,%r25,%r19
	add,l %r1,%r31,%r20
	ldi 0,%r28
	depd %r19,32+32-1,32,%r28
	depd %r20,0+32-1,32,%r28
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
	extrw,u %r25,0+16-1,16,%r20
	fstd %fr25,-56(%r30)
	ldd -56(%r30),%r1
	extrd,s %r25,0+32-1,32,%r22
	xmpyu %fr24R,%fr22R,%fr5
	std %r20,-56(%r30)
	fldd -56(%r30),%fr4
	extrd,s %r26,0+32-1,32,%r31
	xmpyu %fr23R,%fr4R,%fr6
	std %r22,-56(%r30)
	fldd -56(%r30),%fr8
	xmpyu %fr22R,%fr4R,%fr7
	extrw,u %r1,15,16,%r23
	std %r26,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr8R,%fr27R,%fr26
	extrw,u %r1,31,16,%r24
	std %r31,-56(%r30)
	fldd -56(%r30),%fr28
	ldi 0,%r28
	std %r25,-56(%r30)
	fldd -56(%r30),%fr9
	xmpyu %fr28R,%fr9R,%fr10
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r23,%r25,%r26
	fstd %fr6,-56(%r30)
	ldd -56(%r30),%r21
	extrw,u %r26,31,16,%r29
	extrw,u %r26,15,16,%r19
	fstd %fr7,-56(%r30)
	add,l %r29,%r21,%r1
	ldd -56(%r30),%r20
	depw,z %r1,15,16,%r31
	fstd %fr26,-56(%r30)
	add,l %r19,%r20,%r22
	extrw,u %r1,15,16,%r23
	ldd -56(%r30),%r29
	add,l %r24,%r31,%r24
	add,l %r22,%r23,%r25
	fstd %fr10,-56(%r30)
	ldd -56(%r30),%r21
	depd %r24,32+32-1,32,%r28
	depd %r25,0+32-1,32,%r28
	extrd,s %r28,0+32-1,32,%r26
	add,l %r26,%r29,%r19
	add,l %r19,%r21,%r1
	depd %r1,0+32-1,32,%r28
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
	extrd,u %r25,31,32,%r1
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr4
	xmpyu %fr24R,%fr22R,%fr6
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r29
	std %r1,-56(%r30)
	fldd -56(%r30),%fr5
	extrd,u %r29,31,32,%r19
	xmpyu %fr22R,%fr5R,%fr9
	fstd %fr6,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r25,%r19,%r21
	std %r26,-56(%r30)
	fldd -56(%r30),%fr7
	xmpyu %fr7R,%fr5R,%fr8
	extrd,u %r21,63,32,%r22
	fstd %fr8,-56(%r30)
	ldd -56(%r30),%r26
	add,l %r26,%r22,%r24
	depd,z %r24,31,32,%r28
	extrd,u %r29,63,32,%r20
	fstd %fr9,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r20,%r28,%r29
	extrd,u %r21,31,32,%r23
	extrd,u %r24,31,32,%r25
	add,l %r23,%r31,%r1
	add,l %r1,%r25,%r28
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
	extrd,u %r25,31,32,%r1
	fldd -56(%r30),%fr24
	std %r1,-56(%r30)
	fldd -56(%r30),%fr25
	extrd,u %r23,31,32,%r21
	std %r24,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr25R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	std %r23,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr24R,%fr23R,%fr6
	xmpyu %fr23R,%fr25R,%fr7
	std %r24,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr27R,%fr24R,%fr26
	std %r21,-56(%r30)
	fldd -56(%r30),%fr5
	xmpyu %fr24R,%fr5R,%fr8
	extrd,u %r24,31,32,%r24
	fstd %fr6,-56(%r30)
	ldd -56(%r30),%r29
	xmpyu %fr25R,%fr5R,%fr9
	extrd,u %r29,31,32,%r19
	fstd %fr7,-56(%r30)
	ldd -56(%r30),%r22
	add,l %r22,%r19,%r20
	fstd %fr8,-56(%r30)
	ldd -56(%r30),%r23
	extrd,u %r20,63,32,%r21
	extrd,u %r20,31,32,%r22
	std %r26,-56(%r30)
	fldd -56(%r30),%fr10
	xmpyu %fr10R,%fr5R,%fr11
	extrd,u %r26,31,32,%r26
	fstd %fr11,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r23,%r21,%r23
	xmpyu %fr10R,%fr23R,%fr28
	std %r24,-56(%r30)
	fldd -56(%r30),%fr29
	xmpyu %fr29R,%fr24R,%fr30
	extrd,u %r23,31,32,%r19
	fstd %fr30,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r28,%r25,%r28
	std %r26,-56(%r30)
	fldd -56(%r30),%fr31
	xmpyu %fr31R,%fr23R,%fr24
	depd,z %r28,31,32,%r28
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r1
	depd,z %r23,31,32,%r25
	fstd %fr9,-56(%r30)
	ldd -56(%r30),%r24
	add,l %r22,%r24,%r26
	add,l %r31,%r1,%r31
	fstd %fr26,-56(%r30)
	add,l %r26,%r19,%r21
	ldd -56(%r30),%r20
	depd,z %r31,31,32,%r23
	add,l %r28,%r20,%r22
	fstd %fr28,-56(%r30)
	add,l %r22,%r21,%r1
	ldd -56(%r30),%r24
	extrd,u %r29,63,32,%r29
	add,l %r23,%r24,%r26
	add,l %r29,%r25,%r29
	add,l %r1,%r26,%r28
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
	ldil L'32768,%r28
	extrd,u %r26,0+32-1,32,%r31
	ldo -5738(%r28),%r1
	xor %r31,%r26,%r26
	extrw,u %r26,15,16,%r19
	xor %r19,%r26,%r20
	extrw,u %r20,23,24,%r21
	xor %r21,%r20,%r22
	extrw,u %r22,27,28,%r23
	xor %r23,%r22,%r24
	extrw,u %r24,31,4,%r25
	mtsar %r25
	shrpw %r0,%r1,%sar,%r29
	bve (%r2)
	extrd,u %r29,63,1,%r28
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
	ldil L'32768,%r28
	xor %r25,%r26,%r25
	ldo -5738(%r28),%r1
	extrd,s %r25,0+32-1,32,%r19
	xor %r19,%r25,%r20
	extrw,u %r20,15,16,%r31
	xor %r31,%r20,%r21
	extrw,u %r21,23,24,%r22
	xor %r22,%r21,%r23
	extrw,u %r23,27,28,%r24
	xor %r24,%r23,%r26
	extrw,u %r26,31,4,%r29
	mtsar %r29
	shrpw %r0,%r1,%sar,%r28
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
	ldil L'32768,%r28
	extrw,u %r26,0+16-1,16,%r31
	ldo -5738(%r28),%r1
	xor %r26,%r31,%r26
	extrw,u %r26,23,24,%r19
	xor %r19,%r26,%r20
	extrw,u %r20,27,28,%r21
	xor %r21,%r20,%r22
	extrw,u %r22,31,4,%r23
	mtsar %r23
	shrpw %r0,%r1,%sar,%r24
	bve (%r2)
	extrd,u %r24,63,1,%r28
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
	extrd,u %r26,62,63,%r28
	ldd RT'.LC38(%r1),%r31
	ldd 0(%r31),%r19
	addil LT'.LC39,%r27
	and %r28,%r19,%r20
	ldd RT'.LC39(%r1),%r21
	ldd 0(%r21),%r22
	sub %r26,%r20,%r26
	addil LT'.LC40,%r27
	ldd RT'.LC40(%r1),%r31
	ldd 0(%r31),%r19
	and %r26,%r22,%r24
	extrd,u %r26,61,62,%r23
	and %r23,%r22,%r25
	add,l %r25,%r24,%r29
	extrd,u %r29,59,60,%r28
	add,l %r28,%r29,%r20
	and %r20,%r19,%r21
	extrd,u %r21,31,32,%r26
	add,l %r26,%r21,%r22
	extrw,u %r22,15,16,%r23
	add,l %r23,%r22,%r24
	extrw,u %r24,23,24,%r25
	add,l %r25,%r24,%r1
	bve (%r2)
	extrd,u %r1,63,7,%r28
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
	extrw,u %r26,0+31-1,31,%r28
	ldil L'1431650304,%r31
	ldil L'858996736,%r19
	ldo 5461(%r31),%r1
	ldo -3277(%r19),%r21
	and %r28,%r1,%r20
	ldil L'252641280,%r22
	sub %r26,%r20,%r26
	and %r26,%r21,%r25
	extrw,u %r26,29,30,%r24
	and %r24,%r21,%r29
	add,l %r29,%r25,%r31
	extrw,u %r31,27,28,%r28
	ldo 3855(%r22),%r23
	add,l %r28,%r31,%r19
	and %r19,%r23,%r1
	extrw,u %r1,15,16,%r21
	add,l %r21,%r1,%r20
	extrw,u %r20,23,24,%r22
	add,l %r22,%r20,%r26
	bve (%r2)
	extrd,u %r26,63,6,%r28
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
	addil LT'.LC45,%r27
	std,ma %r5,80(%r30)
	ldd RT'.LC45(%r1),%r2
	std %r4,-72(%r30)
	ldd 0(%r28),%r5
	addil LT'.LC46,%r27
	copy %r26,%r28
	std %r3,-64(%r30)
	shrpd %r28,%r25,1,%r21
	ldd RT'.LC46(%r1),%r3
	and %r21,%r5,%r4
	ldd 0(%r2),%r31
	extrd,u %r26,62,63,%r26
	ldd 0(%r3),%r2
	and %r26,%r5,%r3
	sub %r29,%r4,%r29
	sub,db %r28,%r3,%r28
	copy %r28,%r4
	and %r28,%r31,%r23
	shrpd %r4,%r29,2,%r19
	and %r19,%r31,%r22
	ldd -72(%r30),%r4
	extrd,u %r28,61,62,%r5
	and %r29,%r31,%r24
	and %r5,%r31,%r21
	add %r22,%r24,%r29
	add,dc %r21,%r23,%r28
	copy %r28,%r22
	extrd,u %r29,59,60,%r23
	depd,z %r22,3,4,%r31
	or %r31,%r23,%r20
	extrd,u %r28,59,60,%r19
	add %r20,%r29,%r29
	add,dc %r19,%r28,%r28
	and %r28,%r2,%r28
	and %r29,%r2,%r29
	add,l %r28,%r29,%r24
	extrd,u %r24,31,32,%r20
	add,l %r20,%r24,%r1
	extrw,u %r1,15,16,%r3
	add,l %r3,%r1,%r2
	ldd -64(%r30),%r3
	extrw,u %r2,23,24,%r25
	add,l %r25,%r2,%r26
	ldd -96(%r30),%r2
	extrd,u %r26,63,8,%r28
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
	cmpib,= 0,%r25,.L1427
	copy %r19,%r22
.L1429:
	fmpy,dbl %fr4,%fr22,%fr4
.L1427:
	extrw,u %r22,0,1,%r21
	add,l %r21,%r22,%r22
	extrw,s %r22,30,31,%r23
	cmpib,= 0,%r23,.L1428
	extrd,s %r23,63,32,%r22
	extrw,u %r22,31,1,%r24
	cmpib,<> 0,%r24,.L1429
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r22,0,1,%r29
.L1435:
	add,l %r29,%r22,%r31
	extrw,s %r31,30,31,%r25
	extrd,s %r25,63,32,%r22
	extrw,u %r22,31,1,%r24
	cmpib,<> 0,%r24,.L1429
	fmpy,dbl %fr22,%fr22,%fr22
	b .L1435
	extrw,u %r22,0,1,%r29
.L1428:
	cmpiclr,<= 0,%r19,%r0
	b,n .L1434
	bve,n (%r2)
.L1434:
	fldd 0(%r20),%fr5
	bve (%r2)
	fdiv,dbl %fr5,%fr4,%fr4
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
	cmpib,= 0,%r25,.L1437
	copy %r19,%r22
.L1439:
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L1437:
	extrw,u %r22,0,1,%r21
	add,l %r21,%r22,%r22
	extrw,s %r22,30,31,%r23
	cmpib,= 0,%r23,.L1438
	extrd,s %r23,63,32,%r22
	extrw,u %r22,31,1,%r24
	cmpib,<> 0,%r24,.L1439
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r22,0,1,%r29
.L1445:
	add,l %r29,%r22,%r31
	extrw,s %r31,30,31,%r25
	extrd,s %r25,63,32,%r22
	extrw,u %r22,31,1,%r24
	cmpib,<> 0,%r24,.L1439
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L1445
	extrw,u %r22,0,1,%r29
.L1438:
	cmpiclr,<= 0,%r19,%r0
	b,n .L1444
	bve,n (%r2)
.L1444:
	fldw 0(%r20),%fr5R
	bve (%r2)
	fdiv,sgl %fr5R,%fr4R,%fr4R
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
	b,n .L1450
	cmpb,<< %r28,%r31,.L1451
	extrd,u %r26,63,32,%r1
	cmpb,<< %r26,%r25,.L1450
	extrd,u %r25,63,32,%r19
	cmpclr,>>= %r19,%r1,%r0
	b,n .L1451
	bve (%r2)
	ldi 1,%r28
.L1450:
	bve (%r2)
	ldi 0,%r28
.L1451:
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
	b,n .L1457
	cmpb,<< %r28,%r31,.L1456
	extrd,u %r26,63,32,%r1
	cmpb,<< %r26,%r25,.L1457
	extrd,u %r25,63,32,%r19
	cmpclr,>>= %r19,%r1,%r20
	ldi 1,%r20
	bve (%r2)
	extrd,s %r20,63,32,%r28
.L1457:
	bve (%r2)
	ldi -1,%r28
.L1456:
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
	b,n .L1462
	cmpclr,*>>= %r24,%r26,%r0
	b,n .L1461
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1462
	cmpclr,*>>= %r23,%r25,%r25
	ldi 1,%r25
	bve (%r2)
	ldo 1(%r25),%r28
.L1462:
	bve (%r2)
	ldi 0,%r28
.L1461:
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
