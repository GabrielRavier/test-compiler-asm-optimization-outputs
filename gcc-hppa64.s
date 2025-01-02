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
	b .L61
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
.L61:
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
	cmpb,*<> %r0,%r24,.L63
	extrd,u %r25,63,8,%r25
	b .L68
	copy %r24,%r28
.L65:
	cmpb,*= %r0,%r24,.L66
	ldo 1(%r26),%r26
.L63:
	ldb 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L65
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L66:
	copy %r24,%r28
.L68:
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
	b,n .L74
.L81:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	cmpb,<> %r31,%r28,.L80
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	cmpb,*<> %r0,%r24,.L81
	ldo 1(%r25),%r25
.L74:
	bve (%r2)
	copy %r24,%r28
.L80:
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
	cmpb,*= %r0,%r24,.L83
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
.L83:
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
	b .L88
	ldo -1(%r26),%r26
.L90:
	ldb 0(%r28),%r31
	cmpb,= %r25,%r31,.L87
	ldo -1(%r24),%r24
.L88:
	cmpb,*<> %r26,%r24,.L90
	copy %r24,%r28
	ldi 0,%r28
.L87:
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
	cmpb,*= %r0,%r24,.L94
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memset,%r2
	extrw,u %r25,31,8,%r25
.L94:
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
	cmpb,*= %r0,%r31,.L96
	copy %r26,%r28
	ldb,mb 1(%r25),%r31
.L102:
	stb,mb %r31,1(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L102
	ldb,mb 1(%r25),%r31
.L96:
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
	cmpb,*<> %r0,%r31,.L104
	copy %r26,%r28
	b,n .L103
.L106:
	extrd,s %r31,63,8,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L103
.L104:
	extrw,u %r31,31,8,%r31
	cmpb,<>,n %r25,%r31,.L106
	ldb,mb 1(%r28),%r31
.L103:
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
	b .L112
	copy %r26,%r28
.L115:
	cmpb,*= %r0,%r31,.L114
	ldo 1(%r28),%r28
.L112:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<> %r25,%r31,.L115
	nop
	bve,n (%r2)
.L114:
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
	cmpb,=,n %r31,%r28,.L117
	extrd,u %r19,63,8,%r28
	b .L124
	extrw,u %r31,31,8,%r31
.L119:
	ldb,mb 1(%r25),%r31
	extrd,s %r19,63,8,%r28
	extrd,s %r31,63,8,%r31
	cmpclr,= %r31,%r28,%r0
	b,n .L122
.L117:
	cmpb,*<>,n %r0,%r28,.L119
	ldb,mb 1(%r26),%r19
	extrw,u %r31,31,8,%r31
	sub %r28,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L122:
	extrd,u %r19,63,8,%r28
	extrw,u %r31,31,8,%r31
.L124:
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
	cmpib,=,n 0,%r28,.L128
	copy %r26,%r28
	ldb,mb 1(%r28),%r31
.L130:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L130
	ldb,mb 1(%r28),%r31
	bve (%r2)
	sub %r28,%r26,%r28
.L128:
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
	cmpb,*= %r0,%r24,.L138
	ldo -1(%r24),%r23
	copy %r25,%r20
	ldb 0(%r26),%r28
	cmpb,*<> %r0,%r28,.L135
	add,l %r25,%r23,%r23
	b .L145
	ldb 0(%r25),%r21
.L147:
	cmpb,*=,n %r23,%r20,.L140
	ldb,mb 1(%r26),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*=,n %r0,%r28,.L146
	copy %r22,%r20
.L135:
	ldb 0(%r20),%r21
	xor %r21,%r28,%r19
	extrw,s,>= %r21,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r19,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r31,%r31
	ldo -1(%r19),%r19
	and %r31,%r19,%r31
	bb,< %r31,24,.L147
	ldo 1(%r20),%r22
.L140:
	extrd,s %r28,63,32,%r28
.L134:
	sub %r28,%r21,%r28
.L148:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L138:
	bve (%r2)
	copy %r24,%r28
.L146:
	b .L134
	ldb 1(%r20),%r21
.L145:
	b .L148
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
	cmpib,*>= 1,%r24,.L149
	depdi 0,63,1,%r24
	add,l %r26,%r24,%r19
.L151:
	ldb 1(%r26),%r31
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r31,-2(%r25)
	cmpb,*<> %r19,%r26,.L151
	stb %r28,-1(%r25)
.L149:
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
	cmpb,>>= %r19,%r26,.L159
	ldi 1,%r31
	ldi 0,%r31
.L159:
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
	cmpib,>>= 4,%r26,.L169
	ldi 1,%r19
	ldi 0,%r19
.L169:
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
	cmpb,>>=,n %r28,%r26,.L177
	ldi 31,%r28
	cmpb,>>= %r28,%r31,.L177
	ldo -40(%r31),%r19
	ldo -8192(%r19),%r19
	cmpib,>>= 1,%r19,.L173
	ldi 1,%r28
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpiclr,<< 2,%r31,%r31
	ldi 1,%r31
	extrd,s %r31,63,32,%r28
.L173:
	bve,n (%r2)
.L177:
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
	cmpb,>>= %r31,%r26,.L194
	extrd,u %r26,63,32,%r28
	ldo -42(%r28),%r19
	ldil L'49152,%r31
	ldo -8192(%r19),%r19
	ldo -2091(%r31),%r31
	cmpb,<< %r31,%r19,.L195
	ldil L'16384,%r31
.L190:
	bve (%r2)
	ldi 1,%r28
.L195:
	ldo -8153(%r31),%r31
	cmpb,>>= %r31,%r28,.L190
	ldil L'-57344,%r31
	ldi 8184,%r19
	add,l %r28,%r31,%r31
	cmpb,>>= %r19,%r31,.L190
	depwi,z -1,29,14,%r19
	ldil L'1048576,%r31
	sub %r28,%r19,%r19
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L191
	depwi,z -1,30,15,%r31
	andcm %r31,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L194:
	ldo 1(%r26),%r28
	extrw,u %r28,31,7,%r28
	cmpiclr,>>= 32,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L191:
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
	cmpib,>>= 9,%r26,.L197
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r28
	cmpiclr,<< 5,%r28,%r28
	ldi 1,%r28
	extrd,s %r28,63,32,%r28
.L197:
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
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L205
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	bve (%r2)
	fldd 0(%r28),%fr4
.L205:
	bve (%r2)
	fsub,dbl %fr4,%fr5,%fr4
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
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L211
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	bve (%r2)
	fldw 0(%r28),%fr4R
.L211:
	bve (%r2)
	fsub,sgl %fr4R,%fr5R,%fr4R
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
	ldo 64(%r30),%r30
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L214
	extrd,u %r28,0,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L213
.L217:
	fcpy,dbl %fr5,%fr4
.L213:
	bve (%r2)
	ldo -64(%r30),%r30
.L214:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L217
	fcpy,dbl %fr4,%fr5
	b .L213
	fcpy,dbl %fr5,%fr4
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
	ldo 64(%r30),%r30
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L224
	extrd,s %r28,63,32,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L223
.L227:
	fcpy,sgl %fr5R,%fr4R
.L223:
	bve (%r2)
	ldo -64(%r30),%r30
.L224:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L227
	fcpy,sgl %fr4R,%fr5R
	b .L223
	fcpy,sgl %fr5R,%fr4R
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
	extrd,u %r26,0+1-1,1,%r31
	extrd,u %r26,0,1,%r19
	std,ma %r7,160(%r30)
	extrd,u %r24,0+1-1,1,%r28
	copy %r23,%r7
	std %r6,-152(%r30)
	copy %r24,%r6
	std %r5,-144(%r30)
	copy %r25,%r5
	std %r3,-128(%r30)
	std %r4,-136(%r30)
	cmpb,= %r28,%r31,.L234
	copy %r26,%r3
	cmpb,*= %r0,%r19,.L239
	copy %r26,%r28
	copy %r24,%r28
	copy %r23,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L234:
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	nop
	cmpb,*> %r0,%r28,.L242
	copy %r5,%r29
.L237:
	copy %r3,%r28
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L239:
	copy %r25,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L242:
	copy %r6,%r3
	b .L237
	copy %r7,%r29
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
	ldo 64(%r30),%r30
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	fcpy,dbl %fr4,%fr22
	fstd %fr5,-56(%r30)
	extrd,u %r28,0+1-1,1,%r19
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L244
	extrd,u %r28,0,1,%r28
	cmpb,*= %r0,%r28,.L243
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr22,%fr4
.L243:
	bve (%r2)
	ldo -64(%r30),%r30
.L244:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L243
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
	fcpy,sgl %fr4R,%fr22R
	ldo 64(%r30),%r30
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L254
	extrd,s %r28,63,32,%r19
	cmpb,*= %r0,%r19,.L253
	fcpy,sgl %fr5R,%fr4R
	fcpy,sgl %fr22R,%fr4R
.L253:
	bve (%r2)
	ldo -64(%r30),%r30
.L254:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L253
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
	extrd,u %r26,0+1-1,1,%r31
	extrd,u %r26,0,1,%r19
	std,ma %r7,160(%r30)
	extrd,u %r24,0+1-1,1,%r28
	copy %r25,%r7
	std %r6,-152(%r30)
	copy %r26,%r6
	std %r5,-144(%r30)
	copy %r23,%r5
	std %r3,-128(%r30)
	std %r4,-136(%r30)
	cmpb,= %r28,%r31,.L264
	copy %r24,%r3
	cmpb,*= %r0,%r19,.L269
	copy %r24,%r28
	copy %r26,%r28
	copy %r25,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L264:
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	nop
	cmpb,*> %r0,%r28,.L272
	copy %r5,%r29
.L267:
	copy %r3,%r28
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L269:
	copy %r23,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L272:
	copy %r6,%r3
	b .L267
	copy %r7,%r29
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
	cmpib,= 0,%r26,.L276
	copy %r1,%r28
	addil LT'digits,%r27
	ldd RT's.0(%r28),%r28
	ldd RT'digits(%r1),%r21
	copy %r28,%r19
.L275:
	extrd,u %r31,63,6,%r20
	ldb %r20(%r21),%r20
	stb %r20,0(%r19)
	extrd,u %r31,57,58,%r31
	cmpb,*<> %r0,%r31,.L275
	ldo 1(%r19),%r19
	bve (%r2)
	stb %r0,0(%r19)
.L276:
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
	cmpb,*=,n %r0,%r25,.L286
	ldd 0(%r25),%r28
	std %r25,8(%r26)
	std %r28,0(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L280:
	bve,n (%r2)
.L286:
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
	cmpb,*=,n %r0,%r28,.L288
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L288:
	ldd 8(%r26),%r31
	cmpclr,*= %r0,%r31,%r0
	std %r28,0(%r31)
.L287:
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
	std %r11,-192(%r30)
	copy %r22,%r11
	std %r10,-184(%r30)
	copy %r25,%r10
	std %r9,-176(%r30)
	copy %r26,%r9
	std %r8,-168(%r30)
	std %r12,-200(%r30)
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	ldd 0(%r24),%r7
	cmpb,*= %r0,%r7,.L297
	copy %r23,%r8
	copy %r25,%r3
	ldi 0,%r5
	b .L299
	ldo -48(%r30),%r12
.L311:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r7,.L297
	add,l %r3,%r8,%r3
.L299:
	copy %r27,%r4
	copy %r3,%r25
	copy %r9,%r26
	copy %r12,%r29
	ldd 16(%r11),%r2
	bve,l (%r2),%r2
	ldd 24(%r11),%r27
	copy %r3,%r6
	cmpb,*<> %r0,%r28,.L311
	copy %r4,%r27
.L296:
	copy %r6,%r28
.L312:
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
.L297:
	std %r7,-216(%r30)
	fldd -216(%r30),%fr23
	ldo 1(%r7),%r28
	extrd,u %r8,31,32,%r6
	std %r8,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr22
	extrd,u %r7,31,32,%r7
	std %r28,0(%r13)
	std %r6,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r6
	std %r7,-216(%r30)
	fldd -216(%r30),%fr23
	std %r8,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r7
	add,l %r6,%r7,%r6
	fstd %fr22,-216(%r30)
	depd,z %r6,31,32,%r6
	ldd -216(%r30),%r28
	add,l %r6,%r28,%r6
	cmpb,*= %r0,%r8,.L296
	add,l %r10,%r6,%r6
	copy %r8,%r24
	copy %r9,%r25
	ldo -48(%r30),%r29
	b,l memmove,%r2
	copy %r6,%r26
	b .L312
	copy %r6,%r28
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
	cmpb,*= %r0,%r10,.L314
	copy %r26,%r6
	copy %r25,%r3
	ldi 0,%r5
	b .L316
	ldo -48(%r30),%r11
.L324:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r10,.L314
	add,l %r3,%r8,%r3
.L316:
	copy %r27,%r4
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	copy %r3,%r9
	cmpb,*<> %r0,%r28,.L324
	copy %r4,%r27
.L313:
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
.L314:
	b .L313
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
	cmpib,>>= 4,%r28,.L328
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L354
	ldi 43,%r28
.L328:
	ldi 32,%r21
.L348:
	ldb,mb 1(%r26),%r28
.L355:
	extrd,s %r28,63,8,%r31
	xor %r21,%r28,%r28
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L348
	extrd,u %r31,63,32,%r20
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L355
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L354:
	cmpb,= %r28,%r31,.L332
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L352
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L341
	ldo 1(%r26),%r26
	ldi 1,%r22
.L335:
	ldi 0,%r28
.L338:
	ldo -48(%r31),%r31
	ldb,mb 1(%r26),%r21
	shladd,l %r28,2,%r28,%r28 
	extrw,s %r31,31,8,%r20
	add,l %r28,%r28,%r19
	extrd,s %r21,63,8,%r31
	sub %r19,%r20,%r28
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L338
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r22,.L337
	sub %r20,%r19,%r20
	extrd,s %r20,63,32,%r28
.L337:
	bve,n (%r2)
.L352:
	ldo -48(%r20),%r20
	cmpib,>>= 9,%r20,.L335
	ldi 0,%r22
.L341:
	ldi 0,%r28
.L353:
	bve,n (%r2)
.L332:
	ldb 1(%r26),%r31
	ldi 0,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L335
	ldo 1(%r26),%r26
	b .L353
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
	cmpib,>>= 4,%r28,.L358
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L384
	ldi 43,%r28
.L358:
	ldi 32,%r21
.L378:
	ldb,mb 1(%r26),%r28
.L385:
	extrd,s %r28,63,8,%r31
	xor %r21,%r28,%r28
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L378
	extrd,u %r31,63,32,%r20
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L385
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L384:
	cmpb,= %r28,%r31,.L362
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L382
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L371
	ldo 1(%r26),%r26
	ldi 1,%r22
.L365:
	ldi 0,%r28
.L368:
	shladd,l %r28,2,%r28,%r28
	ldo -48(%r31),%r31
	ldb,mb 1(%r26),%r21
	extrd,s %r31,63,8,%r19
	depd,z %r28,62,63,%r20
	extrd,s %r21,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L368
	sub %r20,%r19,%r28
	sub %r19,%r20,%r19
	cmpiclr,*<> 0,%r22,%r0
	copy %r19,%r28
	bve,n (%r2)
.L382:
	ldo -48(%r20),%r20
	cmpib,>>= 9,%r20,.L365
	ldi 0,%r22
.L371:
	ldi 0,%r28
.L383:
	bve,n (%r2)
.L362:
	ldb 1(%r26),%r31
	ldi 0,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L365
	ldo 1(%r26),%r26
	b .L383
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
	cmpib,>>= 4,%r28,.L388
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L411
	ldi 43,%r28
.L388:
	ldi 32,%r21
.L407:
	ldb,mb 1(%r26),%r28
.L412:
	extrd,s %r28,63,8,%r31
	xor %r21,%r28,%r28
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L407
	extrd,u %r31,63,32,%r20
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L412
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L411:
	cmpb,= %r28,%r31,.L392
	ldi 45,%r28
	cmpb,= %r28,%r31,.L410
	ldo -48(%r20),%r20
	cmpib,<< 9,%r20,.L400
	ldi 0,%r22
.L394:
	ldi 0,%r28
.L397:
	shladd,l %r28,2,%r28,%r28
	ldo -48(%r31),%r31
	ldb,mb 1(%r26),%r21
	extrd,s %r31,63,8,%r19
	depd,z %r28,62,63,%r20
	extrd,s %r21,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L397
	sub %r20,%r19,%r28
	sub %r19,%r20,%r19
	cmpiclr,*<> 0,%r22,%r0
	copy %r19,%r28
	bve,n (%r2)
.L410:
	ldb 1(%r26),%r31
	ldi 1,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L394
	ldo 1(%r26),%r26
.L400:
	bve (%r2)
	ldi 0,%r28
.L392:
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L400
	ldo 1(%r26),%r26
	b .L394
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
	cmpb,*= %r0,%r24,.L414
	fldd -200(%r30),%fr12
	extrd,u %r23,31,32,%r28
	ldo -48(%r30),%r10
	std %r28,-200(%r30)
	b .L417
	fldd -200(%r30),%fr13
.L426:
	cmpb,*=,n %r0,%r28,.L413
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	cmpb,*= %r0,%r5,.L414
	add,l %r3,%r28,%r7
.L417:
	extrd,u %r5,62,63,%r6
.L427:
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
	cmpib,<= 0,%r28,.L426
	uaddcm %r5,%r6,%r5
	copy %r6,%r5
	cmpb,*<> %r0,%r5,.L427
	extrd,u %r5,62,63,%r6
.L414:
	ldi 0,%r3
.L413:
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
	copy %r26,%r8
	std %r7,-176(%r30)
	copy %r22,%r7
	std %r6,-168(%r30)
	copy %r21,%r6
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
	cmpib,= 0,%r24,.L433
	fldd -216(%r30),%fr13
.L429:
	extrw,s %r10,30,31,%r28
.L442:
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
	copy %r6,%r24
	depd,z %r3,31,32,%r3
	copy %r8,%r26
	add,l %r3,%r28,%r3
	copy %r9,%r29
	add,l %r5,%r3,%r3
	copy %r3,%r25
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpb,*= %r0,%r28,.L428
	copy %r4,%r27
	cmpib,>= 0,%r28,.L431
	ldo -1(%r10),%r10
	fstd %fr12,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r5
	extrw,s %r10,30,31,%r28
	cmpib,<> 0,%r28,.L429
	extrd,s %r28,63,32,%r10
.L433:
	ldi 0,%r3
.L428:
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
.L431:
	cmpb,*= %r0,%r11,.L433
	copy %r11,%r10
	b .L442
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
	extrd,s %r26,63,32,%r19
	extrd,s %r25,63,32,%r28
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$divI,MILLICODE
	b,l $$divI,%r2
	ldi 0,%r31
	copy %r19,%r26
	copy %r29,%r20
	copy %r28,%r25
	ldo 64(%r30),%r30
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r2
	depd %r20,0+32-1,32,%r31
	copy %r29,%r19
	ldd -80(%r30),%r2
	ldi 0,%r28
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
	cmpb,*<> %r0,%r31,.L451
	extrd,u %r25,63,32,%r25
	b .L456
	copy %r31,%r28
.L453:
	cmpib,= 0,%r28,.L454
	extrd,u %r28,63,32,%r31
.L451:
	cmpb,<>,n %r31,%r25,.L453
	ldw,mb 4(%r26),%r28
	bve (%r2)
	copy %r26,%r28
.L454:
	copy %r31,%r28
.L456:
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
	cmpb,= %r20,%r19,.L458
	ldi -1,%r28
	b,n .L465
.L460:
	ldw,mb 4(%r25),%r31
	extrd,u %r28,63,32,%r19
	cmpb,<> %r28,%r31,.L459
	extrd,u %r31,63,32,%r20
.L458:
	cmpb,*<>,n %r0,%r19,.L460
	ldw,mb 4(%r26),%r28
.L459:
	ldi -1,%r28
.L465:
	cmpclr,<<= %r20,%r19,%r0
	b,n .L461
	cmpclr,>>= %r20,%r19,%r19
	ldi 1,%r19
	extrd,s %r19,63,32,%r28
.L461:
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
.L467:
	ldw 0(%r25),%r19
	stw %r19,0(%r31)
	ldo 4(%r31),%r31
	cmpb,*<> %r0,%r19,.L467
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
	cmpib,=,n 0,%r28,.L472
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L474:
	cmpib,<>,n 0,%r31,.L474
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L472:
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
	b,n .L483
.L491:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r31
	cmpclr,= %r28,%r31,%r0
	b,n .L493
	cmpb,*= %r0,%r28,.L494
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L491
	ldo 4(%r25),%r25
.L483:
	bve (%r2)
	copy %r24,%r28
.L494:
	ldw 0(%r25),%r31
.L493:
	cmpclr,<<= %r31,%r28,%r0
	b,n .L492
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L492:
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
	cmpb,*<> %r0,%r24,.L496
	extrd,u %r25,63,32,%r25
	b .L501
	copy %r24,%r28
.L498:
	cmpb,*= %r0,%r24,.L499
	ldo 4(%r26),%r26
.L496:
	ldw 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L498
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L499:
	copy %r24,%r28
.L501:
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
	b,n .L509
.L516:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,<> %r19,%r31,.L515
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L516
	ldo 4(%r25),%r25
.L509:
	bve (%r2)
	copy %r24,%r28
.L515:
	extrd,u %r31,63,32,%r28
	cmpb,<< %r31,%r19,.L517
	extrd,u %r19,63,32,%r20
	cmpclr,>>= %r20,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L517:
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
	cmpb,*= %r0,%r24,.L519
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L519:
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
	cmpb,*= %r25,%r26,.L541
	copy %r26,%r28
	copy %r26,%r20
	copy %r25,%r19
	sub %r26,%r25,%r21
	depd,z %r24,61,62,%r22
	cmpb,*>> %r22,%r21,.L525
	ldo -1(%r24),%r31
	cmpclr,*<> %r0,%r24,%r0
	b,n .L541
	cmpib,*>>=,n 8,%r31,.L535
	or %r25,%r26,%r21
	extrd,u %r21,63,3,%r21
	ldo -1(%r21),%r21
	cmpb,*<= %r0,%r21,.L554
	ldo 4(%r25),%r21
	cmpb,*= %r21,%r26,.L536
	extrd,u %r24,62,63,%r22
	ldi 0,%r31
.L530:
	ldd 0(%r19),%r21
	std %r21,0(%r20)
	ldo 1(%r31),%r31
	ldo 8(%r19),%r19
	cmpb,*<> %r22,%r31,.L530
	ldo 8(%r20),%r20
	extrd,u %r24,63,1,%r31
	cmpb,*= %r0,%r31,.L541
	depdi 0,63,1,%r24
	ldw,s %r24(%r25),%r31
	shladd,l %r24,2,%r28,%r24
	stw %r31,0(%r24)
.L541:
	bve,n (%r2)
.L525:
	cmpb,*= %r0,%r24,.L541
	nop
	shladd,l %r31,2,%r25,%r19
	shladd,l %r31,2,%r26,%r31
.L528:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	ldo -4(%r31),%r31
	copy %r19,%r20
	cmpb,*<> %r20,%r25,.L528
	ldo -4(%r19),%r19
	bve,n (%r2)
.L535:
	copy %r26,%r19
	b .L533
	ldo 4(%r25),%r21
.L555:
	ldo 4(%r21),%r21
.L533:
	ldw -4(%r21),%r20
	stw %r20,0(%r19)
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L555
	ldo 4(%r19),%r19
	bve,n (%r2)
.L554:
.L536:
	b .L533
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
	cmpb,*= %r0,%r24,.L557
	ldo -1(%r24),%r22
	cmpib,*>>= 5,%r22,.L562
	extrd,u %r26,61+1-1,1,%r31
	cmpb,*=,n %r0,%r31,.L563
	ldo 4(%r26),%r23
	stw %r25,0(%r26)
	ldo -2(%r24),%r22
.L559:
	sub %r24,%r31,%r24
	ldi 0,%r20
	extrd,u %r24,62,63,%r21
	depd %r25,0+32-1,32,%r20
	shladd,l %r31,2,%r28,%r31
	depd %r25,32+32-1,32,%r20
	ldi 0,%r19
.L560:
	std %r20,0(%r31)
	ldo 1(%r19),%r19
	cmpb,*<> %r21,%r19,.L560
	ldo 8(%r31),%r31
	extrd,u %r24,63,1,%r31
	cmpb,*= %r0,%r31,.L557
	depdi 0,63,1,%r24
	sub %r22,%r24,%r22
	shladd,l %r24,2,%r23,%r31
.L558:
	cmpb,*= %r0,%r22,.L557
	stw %r25,0(%r31)
	cmpib,*= 1,%r22,.L557
	stw %r25,4(%r31)
	cmpib,*= 2,%r22,.L557
	stw %r25,8(%r31)
	cmpib,*= 3,%r22,.L557
	stw %r25,12(%r31)
	cmpib,*= 4,%r22,.L557
	stw %r25,16(%r31)
	stw %r25,20(%r31)
.L557:
	bve,n (%r2)
.L563:
	b .L559
	copy %r26,%r23
.L562:
	b .L558
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
	cmpb,*<<= %r25,%r26,.L587
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L586
	add,l %r25,%r24,%r25
.L589:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L589
	stb,mb %r31,-1(%r25)
.L586:
	bve,n (%r2)
.L587:
	cmpb,*= %r25,%r26,.L586
	nop
	cmpb,*= %r0,%r24,.L586
	nop
	ldo -1(%r24),%r28
	cmpib,*>>=,n 7,%r28,.L632
	or %r25,%r26,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<=,n %r0,%r28,.L632
	ldo 1(%r26),%r28
	sub %r25,%r28,%r31
	cmpib,*<< 6,%r31,.L634
	copy %r24,%r20
.L590:
	b .L595
	add,l %r26,%r24,%r26
.L635:
	ldo 1(%r28),%r28
.L595:
	ldb -1(%r28),%r31
	stb %r31,0(%r25)
	cmpb,*<> %r26,%r28,.L635
	ldo 1(%r25),%r25
	bve,n (%r2)
.L634:
	copy %r25,%r28
	depdi 0,63,3,%r20
	add,l %r26,%r20,%r19
.L592:
	ldd 0(%r26),%r31
	std %r31,0(%r28)
	ldo 8(%r26),%r26
	cmpb,*<> %r19,%r26,.L592
	ldo 8(%r28),%r28
	add,l %r25,%r20,%r25
	cmpb,*= %r20,%r24,.L586
	sub %r24,%r20,%r28
	ldb 0(%r26),%r31
	cmpib,*= 1,%r28,.L586
	stb %r31,0(%r25)
	ldb 1(%r26),%r31
	cmpib,*= 2,%r28,.L586
	stb %r31,1(%r25)
	ldb 2(%r26),%r31
	cmpib,*= 3,%r28,.L586
	stb %r31,2(%r25)
	ldb 3(%r26),%r31
	cmpib,*= 4,%r28,.L586
	stb %r31,3(%r25)
	ldb 4(%r26),%r31
	cmpib,*= 5,%r28,.L586
	stb %r31,4(%r25)
	ldb 5(%r26),%r31
	cmpib,*= 6,%r28,.L586
	stb %r31,5(%r25)
	ldb 6(%r26),%r28
	bve (%r2)
	stb %r28,6(%r25)
.L632:
	b .L590
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
	b .L652
	ldi 32,%r20
.L650:
	cmpclr,<> %r20,%r19,%r0
	b,n .L651
.L652:
	mtsar %r31
	ldo 1(%r31),%r19
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	cmpb,*= %r0,%r28,.L650
	extrd,u %r19,63,32,%r31
	extrd,s %r19,63,32,%r28
.L651:
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
	cmpib,= 0,%r26,.L657
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L655
	ldi 1,%r28
.L656:
	extrw,s %r19,30,31,%r31
	ldo 1(%r28),%r28
	extrd,s %r31,63,32,%r19
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L656
	extrd,s %r28,63,32,%r28
.L655:
	bve,n (%r2)
.L657:
	bve (%r2)
	copy %r19,%r28
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.align 8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bve (%r2)
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
	.align 8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bve (%r2)
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.align 8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bve (%r2)
	ldi 0,%r28
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
.LC4:
	.word	1073741824
	.align 4
.LC5:
	.word	1056964608
	.text
	.align 8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b .L665
	extrd,s %r25,63,32,%r25
	cmpib,> 0,%r25,.L677
	addil LT'.LC4,%r27
	ldd RT'.LC4(%r1),%r28
	fldw 0(%r28),%fr22R
.L666:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L680
	extrw,u %r25,0,1,%r28
.L668:
	fmpy,sgl %fr4R,%fr22R,%fr4R
	extrw,u %r25,0,1,%r28
.L680:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L665
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L668
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r25,0,1,%r28
.L679:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L668
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L679
	extrw,u %r25,0,1,%r28
.L665:
	bve,n (%r2)
.L677:
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r28
	b .L666
	fldw 0(%r28),%fr22R
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC8:
	.word	1073741824
	.word	0
	.align 8
.LC9:
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
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b .L682
	extrd,s %r25,63,32,%r25
	cmpib,> 0,%r25,.L694
	addil LT'.LC8,%r27
	ldd RT'.LC8(%r1),%r28
	fldd 0(%r28),%fr22
.L683:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L697
	extrw,u %r25,0,1,%r28
.L685:
	fmpy,dbl %fr4,%fr22,%fr4
	extrw,u %r25,0,1,%r28
.L697:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L682
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L685
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r25,0,1,%r28
.L696:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L685
	fmpy,dbl %fr22,%fr22,%fr22
	b .L696
	extrw,u %r25,0,1,%r28
.L682:
	bve,n (%r2)
.L694:
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r28
	b .L683
	fldd 0(%r28),%fr22
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC12:
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.align 16
.LC13:
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
	ldo -48(%r30),%r29
	std %r8,-168(%r30)
	copy %r26,%r8
	std %r7,-160(%r30)
	copy %r25,%r7
	std %r4,-136(%r30)
	copy %r27,%r4
	std %r3,-128(%r30)
	extrd,s %r24,63,32,%r3
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	b,l __addtf3,%r2
	copy %r26,%r24
	copy %r4,%r27
	copy %r29,%r25
	copy %r27,%r4
	copy %r8,%r24
	copy %r7,%r23
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r28,%r26
	cmpb,*= %r0,%r28,.L699
	copy %r4,%r27
	cmpib,> 0,%r3,.L713
	addil LT'.LC12,%r27
	ldi 0,%r6
	ldd RT'.LC12(%r1),%r28
	ldd 0(%r28),%r5
.L701:
	extrw,u %r3,31,1,%r28
	cmpib,= 0,%r28,.L714
	extrw,u %r3,0,1,%r31
.L703:
	copy %r8,%r26
	copy %r7,%r25
	copy %r27,%r4
	copy %r5,%r24
	ldo -48(%r30),%r29
	b,l __multf3,%r2
	copy %r6,%r23
	copy %r4,%r27
	copy %r28,%r8
	copy %r29,%r7
	extrw,u %r3,0,1,%r31
.L714:
	add,l %r31,%r3,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L699
	extrd,s %r31,63,32,%r3
	ldo -48(%r30),%r9
.L704:
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	copy %r9,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r5
	extrw,u %r3,31,1,%r19
	cmpib,<> 0,%r19,.L703
	copy %r29,%r6
	extrw,u %r3,0,1,%r31
	add,l %r31,%r3,%r31
	extrw,s %r31,30,31,%r31
	b .L704
	extrd,s %r31,63,32,%r3
.L699:
	copy %r8,%r28
	copy %r7,%r29
	ldd -192(%r30),%r2
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r9
.L713:
	addil LT'.LC13,%r27
	ldi 0,%r6
	ldd RT'.LC13(%r1),%r28
	b .L701
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
	cmpb,*= %r0,%r24,.L716
	copy %r26,%r28
	ldo -1(%r24),%r31
	cmpib,*>>= 6,%r31,.L717
	or %r26,%r25,%r31
	extrd,u %r31,63,3,%r31
	cmpb,*<> %r0,%r31,.L717
	copy %r24,%r22
	copy %r26,%r31
	depdi 0,63,3,%r22
	add,l %r25,%r22,%r21
.L718:
	ldd 0(%r31),%r20
	ldd 0(%r25),%r19
	xor %r19,%r20,%r19
	ldo 8(%r25),%r25
	std %r19,0(%r31)
	cmpb,*<> %r21,%r25,.L718
	ldo 8(%r31),%r31
	add,l %r28,%r22,%r31
	cmpb,*= %r22,%r24,.L716
	sub %r24,%r22,%r19
	ldb 0(%r31),%r20
	ldb 0(%r25),%r21
	xor %r20,%r21,%r20
	cmpib,*= 1,%r19,.L716
	stb %r20,0(%r31)
	ldb 1(%r31),%r21
	ldb 1(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 2,%r19,.L716
	stb %r20,1(%r31)
	ldb 2(%r31),%r21
	ldb 2(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 3,%r19,.L716
	stb %r20,2(%r31)
	ldb 3(%r31),%r21
	ldb 3(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 4,%r19,.L716
	stb %r20,3(%r31)
	ldb 4(%r31),%r21
	ldb 4(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 5,%r19,.L716
	stb %r20,4(%r31)
	ldb 5(%r31),%r21
	ldb 5(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 6,%r19,.L716
	stb %r20,5(%r31)
	ldb 6(%r31),%r20
	ldb 6(%r25),%r19
	xor %r19,%r20,%r19
	stb %r19,6(%r31)
.L716:
	bve,n (%r2)
.L717:
	add,l %r25,%r24,%r24
	copy %r28,%r31
.L720:
	ldb 0(%r31),%r20
	ldb 0(%r25),%r19
	ldo 1(%r31),%r31
	xor %r19,%r20,%r19
	ldo 1(%r25),%r25
	cmpb,*<> %r25,%r24,.L720
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
	cmpib,= 0,%r31,.L752
	copy %r26,%r28
	copy %r26,%r31
	ldb,mb 1(%r31),%r19
.L760:
	extrw,s %r19,31,8,%r19
	cmpib,<>,n 0,%r19,.L760
	ldb,mb 1(%r31),%r19
.L758:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L749
.L759:
	ldb 0(%r25),%r19
	stb %r19,0(%r31)
	extrd,s %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L751
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L759
	ldo 1(%r31),%r31
.L749:
	stb %r0,0(%r31)
.L751:
	bve,n (%r2)
.L752:
	b .L758
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
	cmpb,*= %r28,%r25,.L761
	add,l %r26,%r28,%r31
.L769:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L764
.L761:
	bve,n (%r2)
.L764:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L769
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
	cmpb,*= %r0,%r20,.L775
	copy %r26,%r28
	b .L774
	copy %r25,%r19
.L773:
	cmpclr,<> %r20,%r31,%r0
	b,n .L772
.L774:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L773
	ldo 1(%r19),%r19
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L774
	copy %r25,%r19
.L775:
	copy %r20,%r28
.L772:
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
.L779:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r31,%r25,%r0
	copy %r26,%r28
.L778:
	cmpb,*<> %r0,%r31,.L779
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
	cmpb,*= %r0,%r22,.L793
	copy %r25,%r31
	ldb,mb 1(%r31),%r28
.L804:
	extrw,s %r28,31,8,%r28
	cmpib,<>,n 0,%r28,.L804
	ldb,mb 1(%r31),%r28
	cmpb,*= %r25,%r31,.L793
	sub %r31,%r25,%r28
	ldo -1(%r25),%r23
	b .L790
	add,l %r23,%r28,%r23
.L802:
	cmpb,*= %r0,%r28,.L781
	ldo 1(%r26),%r26
.L790:
	ldb 0(%r26),%r19
.L805:
	extrd,s %r19,63,8,%r28
	cmpb,<> %r22,%r28,.L802
	extrd,u %r19,63,8,%r19
	copy %r25,%r21
	b .L785
	copy %r26,%r28
.L803:
	xor %r31,%r19,%r20
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r20,31,8,%r20
	subi 0,%r20,%r20
	sub %r0,%r31,%r31
	ldo -1(%r20),%r20
	and %r31,%r20,%r31
	bb,>=,n %r31,24,.L786
	ldb,mb 1(%r28),%r19
	extrd,u %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L786
	ldo 1(%r21),%r21
.L785:
	cmpb,*<> %r23,%r21,.L803
	ldb 0(%r21),%r31
.L786:
	ldb 0(%r21),%r28
	cmpb,=,n %r19,%r28,.L793
	ldo 1(%r26),%r26
	b .L805
	ldb 0(%r26),%r19
.L793:
	copy %r26,%r28
.L781:
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
	b .L819
	fcmp,dbl,!> %fr5,%fr0
	fcmp,dbl,!> %fr4,%fr0
.L825:
	ftest
	b,n .L820
	bve,n (%r2)
.L819:
	ftest
	b .L807
	fcmp,dbl,!> %fr4,%fr0
	b,n .L825
.L807:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L820:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L807
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
	cmpb,*= %r0,%r23,.L826
	copy %r26,%r28
	cmpb,*>> %r23,%r25,.L837
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r22
	cmpb,*<<,n %r22,%r26,.L837
	ldb 0(%r24),%r29
	ldo -1(%r23),%r23
	extrd,s %r29,63,8,%r29
	b .L832
	ldo 1(%r24),%r24
.L836:
	copy %r25,%r28
.L828:
	cmpclr,*<<= %r28,%r22,%r0
	b,n .L837
.L832:
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r31
	cmpb,<> %r29,%r31,.L836
	ldo 1(%r28),%r25
	cmpb,*= %r0,%r23,.L826
	copy %r24,%r19
.L831:
	copy %r25,%r31
	b .L829
	add,l %r25,%r23,%r26
.L830:
	cmpb,*= %r26,%r31,.L826
	ldo 1(%r19),%r19
.L829:
	ldb 0(%r31),%r21
	ldb 0(%r19),%r20
	cmpb,=,n %r20,%r21,.L830
	ldo 1(%r31),%r31
	cmpb,*<<,n %r22,%r25,.L837
	ldb 0(%r25),%r31
	extrw,s %r31,31,8,%r31
	cmpb,<> %r29,%r31,.L828
	ldo 1(%r25),%r28
	copy %r25,%r31
	copy %r24,%r19
	copy %r28,%r25
	b .L831
	copy %r31,%r28
.L837:
	ldi 0,%r28
.L826:
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
	cmpb,*= %r0,%r24,.L843
	copy %r24,%r3
	ldo -48(%r30),%r29
	b,l memmove,%r2
	nop
.L843:
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
.LC16:
	.word	-1074790400
	.word	0
	.align 8
.LC17:
	.word	-1075838976
	.word	0
	.align 8
.LC18:
	.word	1072693248
	.word	0
	.align 8
.LC19:
	.word	1071644672
	.word	0
	.align 8
.LC20:
	.word	1073741824
	.word	0
	.align 8
.LC21:
	.word	1070596096
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
	b .L864
	addil LT'.LC18,%r27
	ldd RT'.LC18(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L850
	ldi 0,%r31
	addil LT'.LC19,%r27
	ldd RT'.LC19(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L865
	fcmp,dbl,= %fr4,%fr0
	stw %r0,0(%r25)
.L847:
	bve,n (%r2)
.L859:
	fcpy,dbl %fr22,%fr4
	ldi 1,%r31
.L850:
	addil LT'.LC19,%r27
	copy %r1,%r28
	addil LT'.LC20,%r27
	ldd RT'.LC19(%r28),%r20
	ldd RT'.LC20(%r1),%r19
	ldi 0,%r28
	fldd 0(%r20),%fr24
	fldd 0(%r19),%fr23
.L856:
	fcmp,dbl,!>= %fr4,%fr23
	ldo 1(%r28),%r28
	fmpy,dbl %fr4,%fr24,%fr4
	ftest
	b .L856
	extrd,s %r28,63,32,%r28
	cmpb,*= %r0,%r31,.L847
	stw %r28,0(%r25)
.L870:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L864:
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!<= %fr4,%fr22
	ftest
	b .L859
	fneg,dbl %fr4,%fr22
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	fldd 0(%r28),%fr23
	fcmp,dbl,!> %fr4,%fr23
	ftest
	b,n .L860
	stw %r0,0(%r25)
	b,n .L847
.L865:
	ftest
	b,n .L862
	stw %r0,0(%r25)
	b,n .L847
.L860:
	ldi 1,%r31
.L851:
	addil LT'.LC21,%r27
	fcpy,dbl %fr22,%fr4
	ldd RT'.LC21(%r1),%r28
	fldd 0(%r28),%fr23
	ldi 0,%r28
.L858:
	fcmp,dbl,!< %fr4,%fr23
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	ftest
	b .L858
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r31,.L870
	stw %r28,0(%r25)
	b,n .L847
.L862:
	b .L851
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
	cmpb,*= %r0,%r26,.L874
	copy %r26,%r31
	ldi 0,%r28
.L873:
	extrd,s %r31,63+1-1,1,%r19
	extrd,u %r31,62,63,%r31
	and %r19,%r25,%r19
	depd,z %r25,62,63,%r25
	cmpb,*<> %r0,%r31,.L873
	add,l %r28,%r19,%r28
	bve,n (%r2)
.L874:
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
	cmpb,<<= %r26,%r25,.L878
	ldi 1,%r19
.L877:
	cmpib,> 0,%r31,.L878
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L879
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L877
	nop
.L879:
	cmpb,*= %r0,%r19,.L887
	copy %r19,%r20
.L878:
	ldi 0,%r20
.L884:
	cmpb,>>,n %r31,%r28,.L883
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L883:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L884
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L887:
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
	cmpb,= %r31,%r26,.L899
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
.L899:
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
	cmpb,*= %r31,%r28,.L902
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L902:
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
	cmpib,= 0,%r26,.L906
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L905:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L905
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L906:
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
	cmpb,*>> %r25,%r26,.L912
	extrd,u %r21,63,32,%r29
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L943
.L912:
	cmpb,*=,n %r0,%r20,.L944
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L915:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L915
	ldo 8(%r31),%r31
	cmpb,>>= %r21,%r22,.L908
	sub %r22,%r21,%r23
	ldo -1(%r23),%r28
	cmpib,>>= 7,%r28,.L945
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r19
	add,l %r25,%r19,%r19
	sub %r31,%r19,%r19
	cmpib,*>>= 6,%r19,.L917
	add,l %r25,%r29,%r28
	or %r28,%r31,%r19
	extrd,u %r19,63,3,%r19
	ldo -1(%r19),%r19
	cmpb,*<= %r0,%r19,.L917
	extrw,u %r23,28,29,%r20
	extrd,u %r20,63,32,%r20
	shladd,l %r20,3,%r28,%r20
.L919:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L919
	ldo 8(%r31),%r31
	copy %r23,%r28
	extrw,u %r23,31,3,%r23
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r28
	cmpib,= 0,%r23,.L908
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 1(%r28),%r19
	cmpb,>>= %r19,%r22,.L908
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 2(%r28),%r19
	cmpb,>>= %r19,%r22,.L908
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 3(%r28),%r19
	cmpb,>>= %r19,%r22,.L908
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 4(%r28),%r19
	cmpb,>>= %r19,%r22,.L908
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 5(%r28),%r19
	cmpb,>>= %r19,%r22,.L908
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 6(%r28),%r28
	cmpb,>>= %r28,%r22,.L908
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r25
	add,l %r26,%r31,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L908:
	bve,n (%r2)
.L943:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L908
	extrd,u %r24,63,32,%r24
.L923:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L923
	stb %r31,0(%r28)
	bve,n (%r2)
.L944:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r22,.L908
	add,l %r25,%r29,%r28
.L917:
	uaddcm %r24,%r21,%r19
	ldo 1(%r25),%r25
	extrd,u %r19,63,32,%r19
	add,l %r25,%r29,%r25
	add,l %r19,%r25,%r19
.L921:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r19,%r28,.L921
	ldo 1(%r31),%r31
	bve,n (%r2)
.L945:
	b .L917
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
	cmpb,*>> %r25,%r26,.L950
	extrd,u %r23,63,32,%r19
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L974
.L950:
	cmpb,*= %r0,%r19,.L949
	ldo -1(%r23),%r28
	cmpib,>>= 6,%r28,.L953
	or %r25,%r26,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<= %r0,%r28,.L953
	ldo 2(%r25),%r28
	sub %r26,%r28,%r28
	cmpib,*>>= 4,%r28,.L977
	copy %r25,%r28
	extrw,u %r24,28,29,%r21
	extrd,u %r21,63,32,%r20
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L955:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L955
	ldo 8(%r31),%r31
	depw,z %r21,29,30,%r28
	cmpb,= %r28,%r23,.L949
	extrd,u %r28,63,32,%r31
	ldh,s %r31(%r25),%r19
	shladd,l %r31,1,%r26,%r31
	sth %r19,0(%r31)
	ldo 1(%r28),%r31
	cmpb,>>= %r31,%r23,.L949
	extrd,u %r31,63,32,%r31
	ldh,s %r31(%r25),%r19
	shladd,l %r31,1,%r26,%r31
	ldo 2(%r28),%r28
	cmpb,>>= %r28,%r23,.L949
	sth %r19,0(%r31)
	extrd,u %r28,63,32,%r28
	ldh,s %r28(%r25),%r31
	shladd,l %r28,1,%r26,%r28
	sth %r31,0(%r28)
.L949:
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L946
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
.L978:
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L946:
	bve,n (%r2)
.L974:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L946
	extrd,u %r24,63,32,%r24
.L960:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L960
	stb %r31,0(%r28)
	bve,n (%r2)
.L953:
	copy %r25,%r28
.L977:
	copy %r26,%r31
	shladd,l %r19,1,%r25,%r19
.L957:
	ldh 0(%r28),%r20
	sth %r20,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r19,%r28,.L957
	ldo 2(%r31),%r31
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L946
	ldo -1(%r24),%r24
	b .L978
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
	cmpb,*>> %r25,%r26,.L984
	extrd,u %r21,63,32,%r29
	add,l %r25,%r23,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1021
.L984:
	cmpb,*=,n %r0,%r19,.L1022
	ldo -1(%r2),%r28
	cmpib,>>= 8,%r28,.L986
	or %r26,%r25,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<= %r0,%r28,.L986
	ldo 4(%r25),%r28
	cmpb,*= %r28,%r26,.L986
	extrw,u %r24,28,29,%r22
	copy %r25,%r28
	extrd,u %r22,63,32,%r20
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L987:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L987
	ldo 8(%r31),%r31
	add,l %r22,%r22,%r22
	cmpb,= %r22,%r2,.L990
	extrd,u %r22,63,32,%r22
	ldw,s %r22(%r25),%r28
	shladd,l %r22,2,%r26,%r22
	stw %r28,0(%r22)
.L990:
	cmpb,>>= %r21,%r23,.L979
	sub %r23,%r21,%r22
	ldo -1(%r22),%r28
	cmpib,>>= 7,%r28,.L1023
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r19
	add,l %r25,%r19,%r19
	sub %r31,%r19,%r19
	cmpib,*>>= 6,%r19,.L982
	add,l %r25,%r29,%r28
	or %r28,%r31,%r19
	extrd,u %r19,63,3,%r19
	ldo -1(%r19),%r19
	cmpb,*<= %r0,%r19,.L982
	extrw,u %r22,28,29,%r20
	extrd,u %r20,63,32,%r20
	shladd,l %r20,3,%r28,%r20
.L992:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L992
	ldo 8(%r31),%r31
	copy %r22,%r28
	extrw,u %r22,31,3,%r22
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r28
	cmpib,= 0,%r22,.L979
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 1(%r28),%r19
	cmpb,>>= %r19,%r23,.L979
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 2(%r28),%r19
	cmpb,>>= %r19,%r23,.L979
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 3(%r28),%r19
	cmpb,>>= %r19,%r23,.L979
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 4(%r28),%r19
	cmpb,>>= %r19,%r23,.L979
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 5(%r28),%r19
	cmpb,>>= %r19,%r23,.L979
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 6(%r28),%r28
	cmpb,>>= %r28,%r23,.L979
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r25
	add,l %r26,%r31,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L979:
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1021:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L979
	extrd,u %r24,63,32,%r24
.L996:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L996
	stb %r31,0(%r28)
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1022:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r23,.L979
	add,l %r25,%r29,%r28
.L982:
	uaddcm %r24,%r21,%r19
	ldo 1(%r25),%r25
	extrd,u %r19,63,32,%r19
	add,l %r25,%r29,%r25
	add,l %r19,%r25,%r19
.L994:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r19,%r28,.L994
	ldo 1(%r31),%r31
	ldd -16(%r30),%r2
	bve,n (%r2)
.L986:
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r19,2,%r25,%r19
.L989:
	ldw 0(%r28),%r20
	stw %r20,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r19,%r28,.L989
	ldo 4(%r31),%r31
	b,n .L990
.L1023:
	b .L982
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
	cmpib,<> 0,%r28,.L1033
	copy %r31,%r26
	extrd,u %r31,49,50,%r28
	cmpb,*<>,n %r0,%r28,.L1032
	extrw,s %r31,18,19,%r28
	cmpib,<>,n 0,%r28,.L1034
	extrw,s %r31,19,20,%r28
	cmpib,<>,n 0,%r28,.L1035
	extrw,s %r31,20,21,%r28
	cmpib,<>,n 0,%r28,.L1036
	extrw,s %r31,21,22,%r28
	cmpib,<>,n 0,%r28,.L1037
	extrw,s %r31,22,23,%r28
	cmpib,<>,n 0,%r28,.L1038
	extrw,s %r31,23,24,%r28
	cmpib,<>,n 0,%r28,.L1039
	extrw,s %r31,24,25,%r28
	cmpib,<>,n 0,%r28,.L1040
	extrw,s %r31,25,26,%r28
	cmpib,<>,n 0,%r28,.L1041
	extrw,s %r31,26,27,%r28
	cmpib,<>,n 0,%r28,.L1042
	extrw,s %r31,27,28,%r28
	cmpib,<>,n 0,%r28,.L1043
	extrw,s %r31,28,29,%r28
	cmpib,<>,n 0,%r28,.L1044
	extrw,s %r31,29,30,%r28
	cmpib,<> 0,%r28,.L1045
	extrw,s %r31,30,31,%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L1046
	cmpiclr,*<> 0,%r26,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L1032:
	bve,n (%r2)
.L1033:
	bve (%r2)
	ldi 0,%r28
.L1044:
	bve (%r2)
	ldi 12,%r28
.L1034:
	bve (%r2)
	ldi 2,%r28
.L1035:
	bve (%r2)
	ldi 3,%r28
.L1036:
	bve (%r2)
	ldi 4,%r28
.L1037:
	bve (%r2)
	ldi 5,%r28
.L1038:
	bve (%r2)
	ldi 6,%r28
.L1039:
	bve (%r2)
	ldi 7,%r28
.L1040:
	bve (%r2)
	ldi 8,%r28
.L1041:
	bve (%r2)
	ldi 9,%r28
.L1042:
	bve (%r2)
	ldi 10,%r28
.L1043:
	bve (%r2)
	ldi 11,%r28
.L1045:
	bve (%r2)
	ldi 13,%r28
.L1046:
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
	b,n .L1051
	extrd,s,*>= %r28,62,1,%r0
	b,n .L1052
	extrd,s,*>= %r28,61,1,%r0
	b,n .L1053
	extrd,s,*>= %r28,60,1,%r0
	b,n .L1054
	extrd,s,*>= %r28,59,1,%r0
	b,n .L1055
	extrd,s,*>= %r28,58,1,%r0
	b,n .L1056
	extrd,s,*>= %r28,57,1,%r0
	b,n .L1057
	extrd,s,*>= %r28,56,1,%r0
	b,n .L1058
	extrd,s,*>= %r28,55,1,%r0
	b,n .L1059
	extrd,s,*>= %r28,54,1,%r0
	b,n .L1060
	extrd,s,*>= %r28,53,1,%r0
	b,n .L1061
	extrd,s,*>= %r28,52,1,%r0
	b,n .L1062
	extrd,s,*>= %r28,51,1,%r0
	b,n .L1063
	extrd,s,*>= %r28,50,1,%r0
	b,n .L1064
	bb,*< %r28,49,.L1065
	extrw,s %r28,16,17,%r31
	cmpib,<> 0,%r31,.L1068
	ldi 16,%r28
	bve,n (%r2)
.L1051:
	bve (%r2)
	ldi 0,%r28
.L1052:
	bve (%r2)
	ldi 1,%r28
.L1063:
	bve (%r2)
	ldi 12,%r28
.L1068:
	bve (%r2)
	ldi 15,%r28
.L1053:
	bve (%r2)
	ldi 2,%r28
.L1054:
	bve (%r2)
	ldi 3,%r28
.L1055:
	bve (%r2)
	ldi 4,%r28
.L1056:
	bve (%r2)
	ldi 5,%r28
.L1057:
	bve (%r2)
	ldi 6,%r28
.L1058:
	bve (%r2)
	ldi 7,%r28
.L1059:
	bve (%r2)
	ldi 8,%r28
.L1060:
	bve (%r2)
	ldi 9,%r28
.L1061:
	bve (%r2)
	ldi 10,%r28
.L1062:
	bve (%r2)
	ldi 11,%r28
.L1064:
	bve (%r2)
	ldi 13,%r28
.L1065:
	bve (%r2)
	ldi 14,%r28
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC28:
	.word	1191182336
	.text
	.align 8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!>= %fr4R,%fr22R
	ldo 64(%r30),%r30
	ftest
	b .L1073
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	bve (%r2)
	ldo -64(%r30),%r30
.L1073:
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
	cmpib,= 0,%r26,.L1080
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L1079:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L1079
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1080:
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
	cmpib,= 0,%r26,.L1085
	extrd,u %r25,63,32,%r25
	cmpb,*=,n %r0,%r25,.L1086
	ldi 0,%r28
.L1084:
	extrw,s %r25,31+1-1,1,%r19
	add,l %r31,%r31,%r20
	and %r19,%r31,%r31
	extrd,u %r25,62,63,%r25
	add,l %r31,%r28,%r28
	extrd,u %r20,63,32,%r31
	cmpb,*<> %r0,%r25,.L1084
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1085:
	bve (%r2)
	copy %r31,%r28
.L1086:
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
	cmpb,<<= %r26,%r25,.L1090
	ldi 1,%r19
.L1089:
	cmpib,> 0,%r31,.L1090
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L1091
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L1089
	nop
.L1091:
	cmpb,*= %r0,%r19,.L1099
	copy %r19,%r20
.L1090:
	ldi 0,%r20
.L1096:
	cmpb,>>,n %r31,%r28,.L1095
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L1095:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1096
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L1099:
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
	b .L1112
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L1111
	ldi 1,%r28
	ldi 0,%r28
.L1111:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1112:
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
	b .L1116
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L1115
	ldi 1,%r28
	ldi 0,%r28
.L1115:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1116:
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
	cmpib,> 0,%r25,.L1129
	extrd,s %r25,63,32,%r19
	cmpb,*= %r0,%r19,.L1124
	ldi 0,%r24
.L1121:
	ldi 1,%r22
	ldi 0,%r28
	ldi 32,%r23
.L1123:
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
	cmpb,*<> %r0,%r31,.L1123
	extrd,s %r21,63,32,%r28
	cmpb,*= %r0,%r24,.L1122
	sub %r0,%r21,%r21
	extrd,s %r21,63,32,%r28
.L1122:
	bve,n (%r2)
.L1129:
	sub %r0,%r19,%r19
	ldi 1,%r24
	b .L1121
	extrd,s %r19,63,32,%r19
.L1124:
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
	cmpb,*>,n %r0,%r26,.L1153
	ldi 1,%r28
	ldi 0,%r22
.L1131:
	cmpb,*<= %r0,%r25,.L1155
	extrd,u %r26,63,32,%r20
	sub %r0,%r25,%r25
	copy %r28,%r22
.L1155:
	extrd,u %r25,63,32,%r31
	cmpb,<<= %r26,%r25,.L1134
	ldi 1,%r19
.L1133:
	cmpib,>,n 0,%r31,.L1134
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r28
	extrd,u %r21,63,32,%r19
	cmpb,<< %r28,%r20,.L1154
	extrd,u %r28,63,32,%r31
.L1144:
	cmpb,*= %r0,%r19,.L1137
	copy %r19,%r28
.L1134:
	ldi 0,%r28
.L1140:
	cmpb,<<,n %r20,%r31,.L1139
	sub %r20,%r31,%r20
	or %r19,%r28,%r28
	extrd,u %r20,63,32,%r20
.L1139:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1140
	extrd,u %r31,62,63,%r31
.L1137:
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r22,%r0
	copy %r31,%r28
	bve,n (%r2)
.L1154:
	cmpib,<> 0,%r21,.L1133
	nop
	b,n .L1144
.L1153:
	sub %r0,%r26,%r26
	ldi 0,%r28
	b .L1131
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
	cmpb,*<=,n %r22,%r26,.L1157
	sub %r0,%r26,%r26
	ldi 1,%r22
.L1157:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	cmpb,>> %r26,%r25,.L1158
	ldi 1,%r19
	b,n .L1165
.L1179:
	cmpiclr,<> 0,%r21,%r0
	b,n .L1178
.L1158:
	cmpib,>,n 0,%r31,.L1165
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,<< %r20,%r28,.L1179
	extrd,u %r20,63,32,%r31
.L1178:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L1180
.L1165:
	cmpb,>>,n %r31,%r28,.L1164
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
.L1164:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1165
	extrd,u %r31,62,63,%r31
.L1180:
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
	cmpb,<<= %r26,%r25,.L1238
	ldi 1,%r19
	extrw,s %r25,31,16,%r28
	cmpib,> 0,%r28,.L1239
	add,l %r19,%r19,%r31
.L1186:
	add,l %r25,%r25,%r28
	extrd,u %r28,63,16,%r28
	cmpb,>>= %r28,%r26,.L1184
	extrd,u %r31,63,16,%r20
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	bb,>=,n %r31,16,.L1184
	copy %r20,%r19
	copy %r28,%r25
	extrw,s %r25,31,16,%r28
	cmpib,<= 0,%r28,.L1186
	add,l %r19,%r19,%r31
.L1239:
	cmpb,>> %r25,%r26,.L1209
	ldi 0,%r20
	sub %r26,%r25,%r26
	copy %r19,%r20
	extrd,u %r26,63,16,%r26
.L1209:
	extrd,u %r19,47+16-1,16,%r21
	cmpb,*= %r0,%r21,.L1212
	extrd,u %r25,62,63,%r31
.L1190:
	cmpb,>> %r31,%r26,.L1245
	extrd,u %r19,46+16-1,16,%r28
	sub %r26,%r31,%r31
	or %r20,%r21,%r21
	extrd,u %r31,63,16,%r26
	extrd,u %r21,63,16,%r20
.L1245:
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,61,62,%r31
	cmpb,>>,n %r31,%r26,.L1192
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1192:
	extrd,u %r19,45+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,60,61,%r31
	cmpb,>>,n %r31,%r26,.L1193
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1193:
	extrd,u %r19,44+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,59,60,%r31
	cmpb,>>,n %r31,%r26,.L1194
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1194:
	extrd,u %r19,43+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,58,59,%r31
	cmpb,>>,n %r31,%r26,.L1195
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1195:
	extrd,u %r19,42+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,57,58,%r31
	cmpb,>>,n %r31,%r26,.L1196
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1196:
	extrd,u %r19,41+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,56,57,%r31
	cmpb,<<= %r31,%r26,.L1240
	or %r20,%r28,%r28
.L1197:
	extrd,u %r19,40+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,55,56,%r31
	cmpb,<<= %r31,%r26,.L1241
	or %r20,%r28,%r28
.L1198:
	extrd,u %r19,39+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,54,55,%r31
	cmpb,<<= %r31,%r26,.L1242
	or %r20,%r28,%r28
.L1199:
	extrd,u %r19,38+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,53,54,%r31
	cmpb,<<= %r31,%r26,.L1243
	or %r20,%r28,%r28
.L1200:
	extrd,u %r19,37+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,52,53,%r31
	cmpb,<<= %r31,%r26,.L1244
	or %r20,%r28,%r28
.L1201:
	extrd,u %r19,36+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,51,52,%r31
	cmpb,>>,n %r31,%r26,.L1202
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1202:
	extrd,u %r19,35+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,50,51,%r31
	cmpb,>>,n %r31,%r26,.L1203
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1203:
	extrd,u %r19,34+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1212
	extrd,u %r25,49,50,%r31
	cmpb,>> %r31,%r26,.L1204
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1204:
	extrw,u %r19,1+16-1,16,%r19
	cmpib,= 0,%r19,.L1212
	extrd,u %r25,48,49,%r25
	cmpb,>> %r25,%r26,.L1188
	ldi 0,%r28
	sub %r26,%r25,%r25
	depwi -1,31,1,%r20
	extrd,u %r25,63,16,%r28
	b .L1188
	extrd,u %r20,63,16,%r20
.L1184:
	cmpclr,*<> %r0,%r20,%r0
	b,n .L1212
	cmpb,>>,n %r28,%r26,.L1189
	sub %r26,%r28,%r26
	extrd,u %r19,63,15,%r21
	extrd,u %r25,63,15,%r31
	extrd,u %r26,63,16,%r26
	copy %r28,%r25
	b .L1190
	copy %r20,%r19
.L1212:
	copy %r26,%r28
.L1188:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L1240:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1197
	extrd,u %r28,63,16,%r20
.L1189:
	extrd,u %r19,63,15,%r21
	extrd,u %r25,63,15,%r31
	copy %r20,%r19
	copy %r28,%r25
	b .L1190
	ldi 0,%r20
.L1241:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1198
	extrd,u %r28,63,16,%r20
.L1242:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1199
	extrd,u %r28,63,16,%r20
.L1243:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1200
	extrd,u %r28,63,16,%r20
.L1244:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1201
	extrd,u %r28,63,16,%r20
.L1238:
	cmpb,<>,n %r26,%r25,.L1211
	copy %r19,%r20
	b .L1188
	ldi 0,%r28
.L1211:
	copy %r26,%r28
	b .L1188
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
	cmpb,*<<= %r26,%r25,.L1248
	depdi,z 1,32,4,%r20
	and %r25,%r20,%r19
.L1270:
	cmpb,*<>,n %r0,%r19,.L1248
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L1268
	depd,z %r31,62,63,%r31
	cmpb,*= %r0,%r31,.L1269
	copy %r31,%r19
.L1248:
	ldi 0,%r19
.L1254:
	cmpb,*>>,n %r25,%r28,.L1253
	sub %r28,%r25,%r28
	or %r19,%r31,%r19
.L1253:
	extrd,u %r31,62,63,%r31
	cmpb,*<> %r0,%r31,.L1254
	extrd,u %r25,62,63,%r25
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
.L1268:
	cmpb,*<> %r0,%r31,.L1270
	and %r25,%r20,%r19
	copy %r31,%r19
.L1269:
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
	bb,>= %r25,26,.L1272
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	ldi 0,%r28
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
.L1273:
	depd,z %r26,31,32,%r26
	bve (%r2)
	or %r26,%r28,%r28
.L1272:
	cmpb,*= %r0,%r28,.L1275
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
	b .L1273
	extrd,s %r19,63,32,%r26
.L1275:
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
	bb,>= %r24,25,.L1277
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	ldi 0,%r29
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	depd,z %r25,%sar,64,%r28
.L1277:
	cmpb,*= %r0,%r28,.L1280
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
.L1280:
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
	bb,>= %r25,26,.L1282
	extrd,s %r25,63,32,%r28
	extrd,s %r26,0+32-1,32,%r26
	subi 63,%r25,%r25
	extrw,s %r26,0,1,%r28
	mtsar %r25
	extrd,s %r28,63,32,%r28
	extrw,s %r26,%sar,32,%r31
	extrd,u %r31,63,32,%r31
.L1283:
	depd,z %r28,31,32,%r26
	bve (%r2)
	or %r26,%r31,%r28
.L1282:
	cmpb,*= %r0,%r28,.L1285
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
	b .L1283
	extrd,u %r31,63,32,%r31
.L1285:
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
	bb,>= %r24,25,.L1287
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,s %r26,0,1,%r28
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	extrd,s %r26,%sar,64,%r29
.L1287:
	cmpb,*= %r0,%r28,.L1290
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
.L1290:
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
	depwi,z -1,31,16,%r19
	cmpclr,<< %r19,%r26,%r19
	ldi 1,%r19
	depw,z %r19,27,28,%r19
	subi 16,%r19,%r31
	mtsar %r31
	depwi,z -1,23,8,%r31
	shrpw %r0,%r26,%sar,%r26
	and %r26,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	depw,z %r31,28,29,%r31
	subi 8,%r31,%r20
	mtsar %r20
	add,l %r31,%r19,%r19
	shrpw %r0,%r26,%sar,%r26
	ldi 240,%r31
	and %r26,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	depw,z %r31,29,30,%r31
	subi 4,%r31,%r20
	mtsar %r20
	add,l %r31,%r19,%r19
	shrpw %r0,%r26,%sar,%r26
	ldi 12,%r31
	and %r26,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	add,l %r31,%r31,%r31
	subi 2,%r31,%r20
	mtsar %r20
	shrpw %r0,%r26,%sar,%r26
	bb,< %r26,30,.L1296
	ldi 0,%r28
	subi 2,%r26,%r28
.L1296:
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
	b,n .L1303
	cmpb,< %r28,%r31,.L1304
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1303
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1304
	bve (%r2)
	ldi 1,%r28
.L1303:
	bve (%r2)
	ldi 0,%r28
.L1304:
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
	b,n .L1310
	cmpb,<,n %r28,%r31,.L1309
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1310
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1310:
	bve (%r2)
	ldi -1,%r28
.L1309:
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
	b,n .L1315
	cmpclr,*>= %r24,%r26,%r0
	b,n .L1314
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1315
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1315:
	bve (%r2)
	ldi 0,%r28
.L1314:
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
	cmpb,*<> %r0,%r25,.L1320
	ldo -48(%r30),%r29
	cmpb,*<> %r0,%r26,.L1325
	copy %r25,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1320:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldd -144(%r30),%r2
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1325:
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
	bb,>= %r25,26,.L1327
	extrd,s %r25,63,32,%r28
	extrd,u %r26,0+32-1,32,%r31
	mtsar %r25
	ldi 0,%r28
	shrpw %r0,%r31,%sar,%r31
	extrd,u %r31,63,32,%r31
.L1328:
	depd,z %r28,31,32,%r28
	bve (%r2)
	or %r28,%r31,%r28
.L1327:
	cmpb,*= %r0,%r28,.L1330
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
	b .L1328
	extrd,u %r31,63,32,%r31
.L1330:
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
	bb,>= %r24,25,.L1332
	extrd,s %r24,63,32,%r28
	mtsar %r24
	ldi 0,%r28
	bve (%r2)
	shrpd %r0,%r26,%sar,%r29
.L1332:
	cmpb,*= %r0,%r28,.L1335
	mtsar %r28
	subi 64,%r28,%r31
	shrpd %r0,%r25,%sar,%r29
	shrpd %r0,%r26,%sar,%r28
	extrd,u %r31,63,32,%r31
	mtsarcm %r31
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r29,%r29
.L1335:
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
	extrd,u %r26,0+32-1,32,%r28
	xor %r28,%r26,%r26
	extrw,u %r26,15,16,%r28
	xor %r28,%r26,%r28
	extrw,u %r28,23,24,%r26
	xor %r26,%r28,%r26
	ldil L'32768,%r28
	extrw,u %r26,27,28,%r31
	ldo -5738(%r28),%r28
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
	extrd,s %r25,0+32-1,32,%r28
	xor %r28,%r25,%r28
	extrw,u %r28,15,16,%r31
	xor %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	xor %r28,%r31,%r28
	extrw,u %r28,27,28,%r31
	xor %r31,%r28,%r31
	ldil L'32768,%r28
	extrw,u %r31,31,4,%r31
	ldo -5738(%r28),%r28
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
	extrw,u %r26,0+16-1,16,%r28
	xor %r26,%r28,%r26
	extrw,u %r26,23,24,%r28
	xor %r28,%r26,%r26
	ldil L'32768,%r28
	extrw,u %r26,27,28,%r31
	ldo -5738(%r28),%r28
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
.LC30:
	.dword	6148914691236517205
	.align 8
.LC31:
	.dword	3689348814741910323
	.align 8
.LC32:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r28
	ldd 0(%r28),%r31
	addil LT'.LC31,%r27
	ldd RT'.LC31(%r1),%r28
	ldd 0(%r28),%r19
	extrd,u %r26,62,63,%r28
	and %r28,%r31,%r28
	sub %r26,%r28,%r26
	extrd,u %r26,61,62,%r31
	and %r26,%r19,%r26
	and %r31,%r19,%r31
	add,l %r31,%r26,%r31
	addil LT'.LC32,%r27
	ldd RT'.LC32(%r1),%r20
	ldd 0(%r20),%r20
	extrd,u %r31,59,60,%r28
	add,l %r28,%r31,%r28
	and %r28,%r20,%r28
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
	ldil L'858996736,%r19
	and %r28,%r31,%r28
	ldo -3277(%r19),%r19
	sub %r26,%r28,%r26
	extrw,u %r26,29,30,%r31
	and %r26,%r19,%r26
	and %r31,%r19,%r31
	add,l %r31,%r26,%r31
	extrw,u %r31,27,28,%r28
	add,l %r28,%r31,%r28
	ldil L'252641280,%r31
	ldo 3855(%r31),%r31
	and %r28,%r31,%r28
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
.LC36:
	.dword	6148914691236517205
	.align 8
.LC37:
	.dword	3689348814741910323
	.align 8
.LC38:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	addil LT'.LC36,%r27
	ldd RT'.LC36(%r1),%r28
	std %r2,-16(%r30)
	copy %r25,%r29
	std,ma %r5,80(%r30)
	addil LT'.LC37,%r27
	ldd 0(%r28),%r5
	ldd RT'.LC37(%r1),%r28
	addil LT'.LC38,%r27
	ldd 0(%r28),%r31
	ldd RT'.LC38(%r1),%r28
	std %r4,-72(%r30)
	std %r3,-64(%r30)
	ldd 0(%r28),%r2
	copy %r26,%r28
	extrd,u %r26,62,63,%r26
	shrpd %r28,%r25,1,%r25
	and %r26,%r5,%r3
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
.LC42:
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
	extrd,s %r25,63,32,%r20
	fcpy,dbl %fr4,%fr22
	addil LT'.LC42,%r27
	ldd RT'.LC42(%r1),%r21
	fldd 0(%r21),%fr4
	extrw,u %r25,31,1,%r25
	cmpib,= 0,%r25,.L1349
	copy %r20,%r31
.L1351:
	fmpy,dbl %fr4,%fr22,%fr4
.L1349:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1350
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1351
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r31,0,1,%r28
.L1357:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1351
	fmpy,dbl %fr22,%fr22,%fr22
	b .L1357
	extrw,u %r31,0,1,%r28
.L1350:
	cmpiclr,<= 0,%r20,%r0
	b,n .L1356
	bve,n (%r2)
.L1356:
	fldd 0(%r21),%fr22
	bve (%r2)
	fdiv,dbl %fr22,%fr4,%fr4
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC44:
	.word	1065353216
	.text
	.align 8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r25,63,32,%r20
	fcpy,sgl %fr4R,%fr22R
	addil LT'.LC44,%r27
	ldd RT'.LC44(%r1),%r21
	fldw 0(%r21),%fr4R
	extrw,u %r25,31,1,%r25
	cmpib,= 0,%r25,.L1359
	copy %r20,%r31
.L1361:
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L1359:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1360
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1361
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r31,0,1,%r28
.L1367:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1361
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L1367
	extrw,u %r31,0,1,%r28
.L1360:
	cmpiclr,<= 0,%r20,%r0
	b,n .L1366
	bve,n (%r2)
.L1366:
	fldw 0(%r21),%fr22R
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
	b,n .L1372
	cmpb,<< %r28,%r31,.L1373
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1372
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1373
	bve (%r2)
	ldi 1,%r28
.L1372:
	bve (%r2)
	ldi 0,%r28
.L1373:
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
	b,n .L1379
	cmpb,<<,n %r28,%r31,.L1378
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1379
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1379:
	bve (%r2)
	ldi -1,%r28
.L1378:
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
	b,n .L1384
	cmpclr,*>>= %r24,%r26,%r0
	b,n .L1383
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1384
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1384:
	bve (%r2)
	ldi 0,%r28
.L1383:
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
.globl __moddi3
.globl __divdi3
.globl __lttf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
