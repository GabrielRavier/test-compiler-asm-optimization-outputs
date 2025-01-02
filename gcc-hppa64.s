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
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L201
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L205
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L207
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	fldd 0(%r28),%fr4
.L201:
	bve,n (%r2)
.L207:
	bve (%r2)
	fsub,dbl %fr4,%fr5,%fr4
.L205:
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
	b .L209
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L213
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L215
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	fldw 0(%r28),%fr4R
.L209:
	bve,n (%r2)
.L215:
	bve (%r2)
	fsub,sgl %fr4R,%fr5R,%fr4R
.L213:
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
	b .L223
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L224
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,<> %r31,%r19,.L228
	extrd,u %r28,0,1,%r28
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L223
	fcpy,dbl %fr4,%fr5
.L223:
	fcpy,dbl %fr5,%fr4
.L217:
	bve (%r2)
	ldo -64(%r30),%r30
.L228:
	cmpb,*<> %r0,%r28,.L217
	fcpy,dbl %fr5,%fr4
.L224:
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
	b .L235
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L236
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,<> %r31,%r28,.L240
	extrd,s %r28,63,32,%r19
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L235
	fcpy,sgl %fr4R,%fr5R
.L235:
	fcpy,sgl %fr5R,%fr4R
.L229:
	bve (%r2)
	ldo -64(%r30),%r30
.L240:
	cmpb,*<> %r0,%r19,.L229
	fcpy,sgl %fr5R,%fr4R
.L236:
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
	cmpb,*<> %r0,%r28,.L249
	copy %r4,%r27
	copy %r27,%r4
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r7,%r25
	cmpb,*<> %r0,%r28,.L248
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L243
	extrd,u %r3,0,1,%r19
	cmpb,*= %r0,%r19,.L253
	copy %r3,%r28
.L249:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L243:
	copy %r6,%r24
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L252
.L248:
	copy %r3,%r28
.L253:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L252:
	copy %r6,%r3
	b .L248
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
	b .L260
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L254
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L256
	extrd,u %r28,0,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L260
.L254:
	bve (%r2)
	ldo -64(%r30),%r30
.L256:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L254
.L260:
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
	b .L271
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L265
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L267
	extrd,s %r28,63,32,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L271
.L265:
	bve (%r2)
	ldo -64(%r30),%r30
.L267:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L265
.L271:
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
	cmpb,*<> %r0,%r28,.L282
	copy %r4,%r27
	copy %r27,%r4
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r5,%r25
	cmpb,*<> %r0,%r28,.L284
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L278
	extrd,u %r6,0,1,%r19
	cmpb,*= %r0,%r19,.L288
	copy %r3,%r28
.L284:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L278:
	copy %r3,%r24
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L287
.L282:
	copy %r3,%r28
.L288:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L287:
	copy %r6,%r3
	b .L282
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
	cmpib,= 0,%r26,.L292
	copy %r1,%r28
	addil LT'digits,%r27
	ldd RT's.0(%r28),%r28
	ldd RT'digits(%r1),%r21
	copy %r28,%r19
.L291:
	extrd,u %r31,63,6,%r20
	ldb %r20(%r21),%r20
	stb %r20,0(%r19)
	extrd,u %r31,57,58,%r31
	cmpb,*<> %r0,%r31,.L291
	ldo 1(%r19),%r19
	bve (%r2)
	stb %r0,0(%r19)
.L292:
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
	cmpb,*=,n %r0,%r25,.L302
	ldd 0(%r25),%r28
	std %r25,8(%r26)
	std %r28,0(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L296:
	bve,n (%r2)
.L302:
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
	cmpb,*=,n %r0,%r28,.L304
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L304:
	ldd 8(%r26),%r31
	cmpclr,*= %r0,%r31,%r0
	std %r28,0(%r31)
.L303:
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
	cmpb,*= %r0,%r7,.L313
	copy %r23,%r8
	copy %r25,%r3
	ldi 0,%r5
	b .L315
	ldo -48(%r30),%r12
.L327:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r7,.L313
	add,l %r3,%r8,%r3
.L315:
	copy %r27,%r4
	copy %r3,%r25
	copy %r9,%r26
	copy %r12,%r29
	ldd 16(%r11),%r2
	bve,l (%r2),%r2
	ldd 24(%r11),%r27
	copy %r3,%r6
	cmpb,*<> %r0,%r28,.L327
	copy %r4,%r27
.L312:
	copy %r6,%r28
.L328:
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
.L313:
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
	cmpb,*= %r0,%r8,.L312
	add,l %r10,%r6,%r6
	copy %r8,%r24
	copy %r9,%r25
	ldo -48(%r30),%r29
	b,l memmove,%r2
	copy %r6,%r26
	b .L328
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
	cmpb,*= %r0,%r10,.L330
	copy %r26,%r6
	copy %r25,%r3
	ldi 0,%r5
	b .L332
	ldo -48(%r30),%r11
.L340:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r10,.L330
	add,l %r3,%r8,%r3
.L332:
	copy %r27,%r4
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	copy %r3,%r9
	cmpb,*<> %r0,%r28,.L340
	copy %r4,%r27
.L329:
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
.L330:
	b .L329
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
	cmpib,>>= 4,%r28,.L344
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L370
	ldi 43,%r28
.L344:
	ldi 32,%r21
.L364:
	ldb,mb 1(%r26),%r28
.L371:
	extrd,s %r28,63,8,%r31
	xor %r21,%r28,%r28
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L364
	extrd,u %r31,63,32,%r20
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L371
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L370:
	cmpb,= %r28,%r31,.L348
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L368
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L357
	ldo 1(%r26),%r26
	ldi 1,%r22
.L351:
	ldi 0,%r28
.L354:
	ldo -48(%r31),%r31
	ldb,mb 1(%r26),%r21
	shladd,l %r28,2,%r28,%r28 
	extrw,s %r31,31,8,%r20
	add,l %r28,%r28,%r19
	extrd,s %r21,63,8,%r31
	sub %r19,%r20,%r28
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L354
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r22,.L353
	sub %r20,%r19,%r20
	extrd,s %r20,63,32,%r28
.L353:
	bve,n (%r2)
.L368:
	ldo -48(%r20),%r20
	cmpib,>>= 9,%r20,.L351
	ldi 0,%r22
.L357:
	ldi 0,%r28
.L369:
	bve,n (%r2)
.L348:
	ldb 1(%r26),%r31
	ldi 0,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L351
	ldo 1(%r26),%r26
	b .L369
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
	cmpib,>>= 4,%r28,.L374
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L400
	ldi 43,%r28
.L374:
	ldi 32,%r21
.L394:
	ldb,mb 1(%r26),%r28
.L401:
	extrd,s %r28,63,8,%r31
	xor %r21,%r28,%r28
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L394
	extrd,u %r31,63,32,%r20
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L401
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L400:
	cmpb,= %r28,%r31,.L378
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L398
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L387
	ldo 1(%r26),%r26
	ldi 1,%r22
.L381:
	ldi 0,%r28
.L384:
	shladd,l %r28,2,%r28,%r28
	ldo -48(%r31),%r31
	ldb,mb 1(%r26),%r21
	extrd,s %r31,63,8,%r19
	depd,z %r28,62,63,%r20
	extrd,s %r21,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L384
	sub %r20,%r19,%r28
	sub %r19,%r20,%r19
	cmpiclr,*<> 0,%r22,%r0
	copy %r19,%r28
	bve,n (%r2)
.L398:
	ldo -48(%r20),%r20
	cmpib,>>= 9,%r20,.L381
	ldi 0,%r22
.L387:
	ldi 0,%r28
.L399:
	bve,n (%r2)
.L378:
	ldb 1(%r26),%r31
	ldi 0,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L381
	ldo 1(%r26),%r26
	b .L399
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
	cmpib,>>= 4,%r28,.L404
	extrd,u %r31,63,32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L427
	ldi 43,%r28
.L404:
	ldi 32,%r21
.L423:
	ldb,mb 1(%r26),%r28
.L428:
	extrd,s %r28,63,8,%r31
	xor %r21,%r28,%r28
	ldo -9(%r31),%r19
	cmpib,>>= 4,%r19,.L423
	extrd,u %r31,63,32,%r20
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L428
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L427:
	cmpb,= %r28,%r31,.L408
	ldi 45,%r28
	cmpb,= %r28,%r31,.L426
	ldo -48(%r20),%r20
	cmpib,<< 9,%r20,.L416
	ldi 0,%r22
.L410:
	ldi 0,%r28
.L413:
	shladd,l %r28,2,%r28,%r28
	ldo -48(%r31),%r31
	ldb,mb 1(%r26),%r21
	extrd,s %r31,63,8,%r19
	depd,z %r28,62,63,%r20
	extrd,s %r21,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L413
	sub %r20,%r19,%r28
	sub %r19,%r20,%r19
	cmpiclr,*<> 0,%r22,%r0
	copy %r19,%r28
	bve,n (%r2)
.L426:
	ldb 1(%r26),%r31
	ldi 1,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L410
	ldo 1(%r26),%r26
.L416:
	bve (%r2)
	ldi 0,%r28
.L408:
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L416
	ldo 1(%r26),%r26
	b .L410
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
	cmpb,*= %r0,%r24,.L430
	fldd -200(%r30),%fr12
	extrd,u %r23,31,32,%r28
	ldo -48(%r30),%r10
	std %r28,-200(%r30)
	b .L433
	fldd -200(%r30),%fr13
.L442:
	cmpb,*=,n %r0,%r28,.L429
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	cmpb,*= %r0,%r5,.L430
	add,l %r3,%r28,%r7
.L433:
	extrd,u %r5,62,63,%r6
.L443:
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
	cmpib,<= 0,%r28,.L442
	uaddcm %r5,%r6,%r5
	copy %r6,%r5
	cmpb,*<> %r0,%r5,.L443
	extrd,u %r5,62,63,%r6
.L430:
	ldi 0,%r3
.L429:
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
	cmpib,= 0,%r24,.L449
	fldd -216(%r30),%fr13
.L445:
	extrw,s %r10,30,31,%r28
.L458:
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
	cmpb,*= %r0,%r28,.L444
	copy %r4,%r27
	cmpib,>= 0,%r28,.L447
	ldo -1(%r10),%r10
	fstd %fr12,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r5
	extrw,s %r10,30,31,%r28
	cmpib,<> 0,%r28,.L445
	extrd,s %r28,63,32,%r10
.L449:
	ldi 0,%r3
.L444:
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
.L447:
	cmpb,*= %r0,%r11,.L449
	copy %r11,%r10
	b .L458
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
	cmpb,*<> %r0,%r31,.L467
	extrd,u %r25,63,32,%r25
	b .L472
	copy %r31,%r28
.L469:
	cmpib,= 0,%r28,.L470
	extrd,u %r28,63,32,%r31
.L467:
	cmpb,<>,n %r31,%r25,.L469
	ldw,mb 4(%r26),%r28
	bve (%r2)
	copy %r26,%r28
.L470:
	copy %r31,%r28
.L472:
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
	cmpb,= %r20,%r19,.L474
	ldi -1,%r28
	b,n .L481
.L476:
	ldw,mb 4(%r25),%r31
	extrd,u %r28,63,32,%r19
	cmpb,<> %r28,%r31,.L475
	extrd,u %r31,63,32,%r20
.L474:
	cmpb,*<>,n %r0,%r19,.L476
	ldw,mb 4(%r26),%r28
.L475:
	ldi -1,%r28
.L481:
	cmpclr,<<= %r20,%r19,%r0
	b,n .L477
	cmpclr,>>= %r20,%r19,%r19
	ldi 1,%r19
	extrd,s %r19,63,32,%r28
.L477:
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
.L483:
	ldw 0(%r25),%r19
	stw %r19,0(%r31)
	ldo 4(%r31),%r31
	cmpb,*<> %r0,%r19,.L483
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
	cmpib,=,n 0,%r28,.L488
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L490:
	cmpib,<>,n 0,%r31,.L490
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L488:
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
	b,n .L499
.L507:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r31
	cmpclr,= %r28,%r31,%r0
	b,n .L509
	cmpb,*= %r0,%r28,.L510
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L507
	ldo 4(%r25),%r25
.L499:
	bve (%r2)
	copy %r24,%r28
.L510:
	ldw 0(%r25),%r31
.L509:
	cmpclr,<<= %r31,%r28,%r0
	b,n .L508
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L508:
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
	cmpb,*<> %r0,%r24,.L512
	extrd,u %r25,63,32,%r25
	b .L517
	copy %r24,%r28
.L514:
	cmpb,*= %r0,%r24,.L515
	ldo 4(%r26),%r26
.L512:
	ldw 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L514
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L515:
	copy %r24,%r28
.L517:
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
	b,n .L525
.L532:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,<> %r19,%r31,.L531
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L532
	ldo 4(%r25),%r25
.L525:
	bve (%r2)
	copy %r24,%r28
.L531:
	extrd,u %r31,63,32,%r28
	cmpb,<< %r31,%r19,.L533
	extrd,u %r19,63,32,%r20
	cmpclr,>>= %r20,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L533:
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
	cmpb,*= %r0,%r24,.L535
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L535:
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
	cmpb,*= %r25,%r26,.L557
	copy %r26,%r28
	copy %r26,%r20
	copy %r25,%r19
	sub %r26,%r25,%r21
	depd,z %r24,61,62,%r22
	cmpb,*>> %r22,%r21,.L541
	ldo -1(%r24),%r31
	cmpclr,*<> %r0,%r24,%r0
	b,n .L557
	cmpib,*>>=,n 8,%r31,.L551
	or %r25,%r26,%r21
	extrd,u %r21,63,3,%r21
	ldo -1(%r21),%r21
	cmpb,*<= %r0,%r21,.L570
	ldo 4(%r25),%r21
	cmpb,*= %r21,%r26,.L552
	extrd,u %r24,62,63,%r22
	ldi 0,%r31
.L546:
	ldd 0(%r19),%r21
	std %r21,0(%r20)
	ldo 1(%r31),%r31
	ldo 8(%r19),%r19
	cmpb,*<> %r22,%r31,.L546
	ldo 8(%r20),%r20
	extrd,u %r24,63,1,%r31
	cmpb,*= %r0,%r31,.L557
	depdi 0,63,1,%r24
	ldw,s %r24(%r25),%r31
	shladd,l %r24,2,%r28,%r24
	stw %r31,0(%r24)
.L557:
	bve,n (%r2)
.L541:
	cmpb,*= %r0,%r24,.L557
	nop
	shladd,l %r31,2,%r25,%r19
	shladd,l %r31,2,%r26,%r31
.L544:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	ldo -4(%r31),%r31
	copy %r19,%r20
	cmpb,*<> %r20,%r25,.L544
	ldo -4(%r19),%r19
	bve,n (%r2)
.L551:
	copy %r26,%r19
	b .L549
	ldo 4(%r25),%r21
.L571:
	ldo 4(%r21),%r21
.L549:
	ldw -4(%r21),%r20
	stw %r20,0(%r19)
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L571
	ldo 4(%r19),%r19
	bve,n (%r2)
.L570:
.L552:
	b .L549
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
	cmpb,*= %r0,%r24,.L573
	ldo -1(%r24),%r22
	cmpib,*>>= 5,%r22,.L578
	extrd,u %r26,61+1-1,1,%r31
	cmpb,*=,n %r0,%r31,.L579
	ldo 4(%r26),%r23
	stw %r25,0(%r26)
	ldo -2(%r24),%r22
.L575:
	sub %r24,%r31,%r24
	ldi 0,%r20
	extrd,u %r24,62,63,%r21
	depd %r25,0+32-1,32,%r20
	shladd,l %r31,2,%r28,%r31
	depd %r25,32+32-1,32,%r20
	ldi 0,%r19
.L576:
	std %r20,0(%r31)
	ldo 1(%r19),%r19
	cmpb,*<> %r21,%r19,.L576
	ldo 8(%r31),%r31
	extrd,u %r24,63,1,%r31
	cmpb,*= %r0,%r31,.L573
	depdi 0,63,1,%r24
	sub %r22,%r24,%r22
	shladd,l %r24,2,%r23,%r31
.L574:
	cmpb,*= %r0,%r22,.L573
	stw %r25,0(%r31)
	cmpib,*= 1,%r22,.L573
	stw %r25,4(%r31)
	cmpib,*= 2,%r22,.L573
	stw %r25,8(%r31)
	cmpib,*= 3,%r22,.L573
	stw %r25,12(%r31)
	cmpib,*= 4,%r22,.L573
	stw %r25,16(%r31)
	stw %r25,20(%r31)
.L573:
	bve,n (%r2)
.L579:
	b .L575
	copy %r26,%r23
.L578:
	b .L574
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
	cmpb,*<<= %r25,%r26,.L603
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L602
	add,l %r25,%r24,%r25
.L605:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L605
	stb,mb %r31,-1(%r25)
.L602:
	bve,n (%r2)
.L603:
	cmpb,*= %r25,%r26,.L602
	nop
	cmpb,*= %r0,%r24,.L602
	nop
	ldo -1(%r24),%r28
	cmpib,*>>=,n 7,%r28,.L648
	or %r25,%r26,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<=,n %r0,%r28,.L648
	ldo 1(%r26),%r28
	sub %r25,%r28,%r31
	cmpib,*<< 6,%r31,.L650
	copy %r24,%r20
.L606:
	b .L611
	add,l %r26,%r24,%r26
.L651:
	ldo 1(%r28),%r28
.L611:
	ldb -1(%r28),%r31
	stb %r31,0(%r25)
	cmpb,*<> %r26,%r28,.L651
	ldo 1(%r25),%r25
	bve,n (%r2)
.L650:
	copy %r25,%r28
	depdi 0,63,3,%r20
	add,l %r26,%r20,%r19
.L608:
	ldd 0(%r26),%r31
	std %r31,0(%r28)
	ldo 8(%r26),%r26
	cmpb,*<> %r19,%r26,.L608
	ldo 8(%r28),%r28
	add,l %r25,%r20,%r25
	cmpb,*= %r20,%r24,.L602
	sub %r24,%r20,%r28
	ldb 0(%r26),%r31
	cmpib,*= 1,%r28,.L602
	stb %r31,0(%r25)
	ldb 1(%r26),%r31
	cmpib,*= 2,%r28,.L602
	stb %r31,1(%r25)
	ldb 2(%r26),%r31
	cmpib,*= 3,%r28,.L602
	stb %r31,2(%r25)
	ldb 3(%r26),%r31
	cmpib,*= 4,%r28,.L602
	stb %r31,3(%r25)
	ldb 4(%r26),%r31
	cmpib,*= 5,%r28,.L602
	stb %r31,4(%r25)
	ldb 5(%r26),%r31
	cmpib,*= 6,%r28,.L602
	stb %r31,5(%r25)
	ldb 6(%r26),%r28
	bve (%r2)
	stb %r28,6(%r25)
.L648:
	b .L606
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
	b .L668
	ldi 32,%r20
.L666:
	cmpclr,<> %r20,%r19,%r0
	b,n .L667
.L668:
	mtsar %r31
	ldo 1(%r31),%r19
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	cmpb,*= %r0,%r28,.L666
	extrd,u %r19,63,32,%r31
	extrd,s %r19,63,32,%r28
.L667:
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
	cmpib,= 0,%r26,.L673
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L671
	ldi 1,%r28
.L672:
	extrw,s %r19,30,31,%r31
	ldo 1(%r28),%r28
	extrd,s %r31,63,32,%r19
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L672
	extrd,s %r28,63,32,%r28
.L671:
	bve,n (%r2)
.L673:
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
	b .L677
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L678
	ldi 0,%r28
.L678:
	extrd,s %r28,63,32,%r28
.L677:
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
	b .L681
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L682
	ldi 0,%r28
.L682:
	extrd,s %r28,63,32,%r28
.L681:
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
	cmpb,*> %r0,%r31,.L685
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
	b,n .L688
.L686:
	extrd,s %r3,63,32,%r28
.L685:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L688:
	b .L686
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
	b .L691
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,= %fr22R,%fr4R
	ftest
	b,n .L698
.L691:
	bve,n (%r2)
.L698:
	cmpib,> 0,%r25,.L705
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	fldw 0(%r28),%fr22R
.L693:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L708
	extrw,u %r25,0,1,%r28
.L695:
	fmpy,sgl %fr4R,%fr22R,%fr4R
	extrw,u %r25,0,1,%r28
.L708:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L691
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L695
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r25,0,1,%r28
.L707:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L695
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L707
	extrw,u %r25,0,1,%r28
.L705:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L693
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
	b .L710
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,= %fr22,%fr4
	ftest
	b,n .L717
.L710:
	bve,n (%r2)
.L717:
	cmpib,> 0,%r25,.L724
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	fldd 0(%r28),%fr22
.L712:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L727
	extrw,u %r25,0,1,%r28
.L714:
	fmpy,dbl %fr4,%fr22,%fr4
	extrw,u %r25,0,1,%r28
.L727:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L710
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L714
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r25,0,1,%r28
.L726:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L714
	fmpy,dbl %fr22,%fr22,%fr22
	b .L726
	extrw,u %r25,0,1,%r28
.L724:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L712
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
	cmpb,*<> %r0,%r28,.L729
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
	cmpb,*= %r0,%r28,.L729
	copy %r4,%r27
	cmpib,> 0,%r9,.L743
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r5
.L731:
	extrw,u %r9,31,1,%r28
	cmpib,= 0,%r28,.L744
	extrw,u %r9,0,1,%r31
.L733:
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
.L744:
	add,l %r31,%r9,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L729
	extrd,s %r31,63,32,%r9
	ldo -48(%r30),%r8
.L734:
	copy %r5,%r24
	copy %r3,%r23
	copy %r5,%r26
	copy %r3,%r25
	copy %r8,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r5
	extrw,u %r9,31,1,%r19
	cmpib,<> 0,%r19,.L733
	copy %r29,%r3
	extrw,u %r9,0,1,%r31
	add,l %r31,%r9,%r31
	extrw,s %r31,30,31,%r31
	b .L734
	extrd,s %r31,63,32,%r9
.L729:
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
.L743:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	b .L731
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
	cmpb,*= %r0,%r24,.L746
	copy %r26,%r28
	ldo -1(%r24),%r31
	cmpib,*>>= 6,%r31,.L747
	or %r26,%r25,%r31
	extrd,u %r31,63,3,%r31
	cmpb,*<> %r0,%r31,.L747
	copy %r24,%r22
	copy %r26,%r31
	depdi 0,63,3,%r22
	add,l %r25,%r22,%r21
.L748:
	ldd 0(%r31),%r20
	ldd 0(%r25),%r19
	xor %r19,%r20,%r19
	ldo 8(%r25),%r25
	std %r19,0(%r31)
	cmpb,*<> %r21,%r25,.L748
	ldo 8(%r31),%r31
	add,l %r28,%r22,%r31
	cmpb,*= %r22,%r24,.L746
	sub %r24,%r22,%r19
	ldb 0(%r31),%r20
	ldb 0(%r25),%r21
	xor %r20,%r21,%r20
	cmpib,*= 1,%r19,.L746
	stb %r20,0(%r31)
	ldb 1(%r31),%r21
	ldb 1(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 2,%r19,.L746
	stb %r20,1(%r31)
	ldb 2(%r31),%r21
	ldb 2(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 3,%r19,.L746
	stb %r20,2(%r31)
	ldb 3(%r31),%r21
	ldb 3(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 4,%r19,.L746
	stb %r20,3(%r31)
	ldb 4(%r31),%r21
	ldb 4(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 5,%r19,.L746
	stb %r20,4(%r31)
	ldb 5(%r31),%r21
	ldb 5(%r25),%r20
	xor %r20,%r21,%r20
	cmpib,*= 6,%r19,.L746
	stb %r20,5(%r31)
	ldb 6(%r31),%r20
	ldb 6(%r25),%r19
	xor %r19,%r20,%r19
	stb %r19,6(%r31)
.L746:
	bve,n (%r2)
.L747:
	add,l %r25,%r24,%r24
	copy %r28,%r31
.L750:
	ldb 0(%r31),%r20
	ldb 0(%r25),%r19
	ldo 1(%r31),%r31
	xor %r19,%r20,%r19
	ldo 1(%r25),%r25
	cmpb,*<> %r25,%r24,.L750
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
	cmpib,= 0,%r31,.L782
	copy %r26,%r28
	copy %r26,%r31
	ldb,mb 1(%r31),%r19
.L790:
	extrw,s %r19,31,8,%r19
	cmpib,<>,n 0,%r19,.L790
	ldb,mb 1(%r31),%r19
.L788:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L779
.L789:
	ldb 0(%r25),%r19
	stb %r19,0(%r31)
	extrd,s %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L781
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L789
	ldo 1(%r31),%r31
.L779:
	stb %r0,0(%r31)
.L781:
	bve,n (%r2)
.L782:
	b .L788
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
	cmpb,*= %r28,%r25,.L791
	add,l %r26,%r28,%r31
.L799:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L794
.L791:
	bve,n (%r2)
.L794:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L799
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
	cmpb,*= %r0,%r20,.L805
	copy %r26,%r28
	b .L804
	copy %r25,%r19
.L803:
	cmpclr,<> %r20,%r31,%r0
	b,n .L802
.L804:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L803
	ldo 1(%r19),%r19
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L804
	copy %r25,%r19
.L805:
	copy %r20,%r28
.L802:
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
.L809:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r31,%r25,%r0
	copy %r26,%r28
.L808:
	cmpb,*<> %r0,%r31,.L809
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
	cmpb,*= %r0,%r22,.L823
	copy %r25,%r31
	ldb,mb 1(%r31),%r28
.L834:
	extrw,s %r28,31,8,%r28
	cmpib,<>,n 0,%r28,.L834
	ldb,mb 1(%r31),%r28
	cmpb,*= %r25,%r31,.L823
	sub %r31,%r25,%r28
	ldo -1(%r25),%r23
	b .L820
	add,l %r23,%r28,%r23
.L832:
	cmpb,*= %r0,%r28,.L811
	ldo 1(%r26),%r26
.L820:
	ldb 0(%r26),%r19
.L835:
	extrd,s %r19,63,8,%r28
	cmpb,<> %r22,%r28,.L832
	extrd,u %r19,63,8,%r19
	copy %r25,%r21
	b .L815
	copy %r26,%r28
.L833:
	xor %r31,%r19,%r20
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r20,31,8,%r20
	subi 0,%r20,%r20
	sub %r0,%r31,%r31
	ldo -1(%r20),%r20
	and %r31,%r20,%r31
	bb,>=,n %r31,24,.L816
	ldb,mb 1(%r28),%r19
	extrd,u %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L816
	ldo 1(%r21),%r21
.L815:
	cmpb,*<> %r23,%r21,.L833
	ldb 0(%r21),%r31
.L816:
	ldb 0(%r21),%r28
	cmpb,=,n %r19,%r28,.L823
	ldo 1(%r26),%r26
	b .L835
	ldb 0(%r26),%r19
.L823:
	copy %r26,%r28
.L811:
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
	b,n .L843
	fcmp,dbl,!> %fr4,%fr0
	ftest
	b,n .L844
	bve,n (%r2)
.L844:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L839
	bve,n (%r2)
.L839:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L843:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L839
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
	cmpb,*= %r0,%r23,.L846
	copy %r26,%r28
	cmpb,*>> %r23,%r25,.L857
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r22
	cmpb,*<<,n %r22,%r26,.L857
	ldb 0(%r24),%r29
	ldo -1(%r23),%r23
	extrd,s %r29,63,8,%r29
	b .L852
	ldo 1(%r24),%r24
.L856:
	copy %r25,%r28
.L848:
	cmpclr,*<<= %r28,%r22,%r0
	b,n .L857
.L852:
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r31
	cmpb,<> %r29,%r31,.L856
	ldo 1(%r28),%r25
	cmpb,*= %r0,%r23,.L846
	copy %r24,%r19
.L851:
	copy %r25,%r31
	b .L849
	add,l %r25,%r23,%r26
.L850:
	cmpb,*= %r26,%r31,.L846
	ldo 1(%r19),%r19
.L849:
	ldb 0(%r31),%r21
	ldb 0(%r19),%r20
	cmpb,=,n %r20,%r21,.L850
	ldo 1(%r31),%r31
	cmpb,*<<,n %r22,%r25,.L857
	ldb 0(%r25),%r31
	extrw,s %r31,31,8,%r31
	cmpb,<> %r29,%r31,.L848
	ldo 1(%r25),%r28
	copy %r25,%r31
	copy %r24,%r19
	copy %r28,%r25
	b .L851
	copy %r31,%r28
.L857:
	ldi 0,%r28
.L846:
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
	cmpb,*= %r0,%r24,.L863
	copy %r24,%r3
	ldo -48(%r30),%r29
	b,l memmove,%r2
	nop
.L863:
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
	b .L884
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L870
	ldi 0,%r19
	addil LT'.LC31,%r27
	ldd RT'.LC31(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L885
	stw %r0,0(%r25)
.L867:
	bve,n (%r2)
.L879:
	fcpy,dbl %fr22,%fr4
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r31
	ldi 1,%r19
.L870:
	addil LT'.LC31,%r27
	ldi 0,%r28
	ldd RT'.LC31(%r1),%r20
	fldd 0(%r31),%fr23
	fldd 0(%r20),%fr22
.L876:
	fmpy,dbl %fr4,%fr22,%fr4
	ldo 1(%r28),%r28
	fcmp,dbl,!>= %fr4,%fr23
	ftest
	b .L876
	extrd,s %r28,63,32,%r28
	cmpb,*= %r0,%r19,.L867
	stw %r28,0(%r25)
.L890:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L884:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!<= %fr4,%fr22
	ftest
	b .L879
	fneg,dbl %fr4,%fr22
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r28
	fldd 0(%r28),%fr23
	fcmp,dbl,!> %fr4,%fr23
	ftest
	b .L880
	addil LT'.LC31,%r27
	b .L867
	stw %r0,0(%r25)
.L885:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L882
	stw %r0,0(%r25)
	b,n .L867
.L880:
	ldi 1,%r19
	ldd RT'.LC31(%r1),%r31
.L871:
	fcpy,dbl %fr22,%fr4
	ldi 0,%r28
	fldd 0(%r31),%fr22
.L878:
	fadd,dbl %fr4,%fr4,%fr4
	ldo -1(%r28),%r28
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L878
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r19,.L890
	stw %r28,0(%r25)
	b,n .L867
.L882:
	b .L871
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
	cmpb,*= %r0,%r26,.L894
	copy %r26,%r31
	ldi 0,%r28
.L893:
	extrd,s %r31,63+1-1,1,%r19
	extrd,u %r31,62,63,%r31
	and %r19,%r25,%r19
	depd,z %r25,62,63,%r25
	cmpb,*<> %r0,%r31,.L893
	add,l %r28,%r19,%r28
	bve,n (%r2)
.L894:
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
	cmpb,<<= %r26,%r25,.L898
	ldi 1,%r19
.L897:
	cmpib,> 0,%r31,.L898
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L899
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L897
	nop
.L899:
	cmpb,*= %r0,%r19,.L907
	copy %r19,%r20
.L898:
	ldi 0,%r20
.L904:
	cmpb,>>,n %r31,%r28,.L903
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L903:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L904
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L907:
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
	cmpb,= %r31,%r26,.L919
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
.L919:
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
	cmpb,*= %r31,%r28,.L922
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L922:
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
	cmpib,= 0,%r26,.L926
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L925:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L925
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L926:
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
	cmpb,*>> %r25,%r26,.L932
	extrd,u %r21,63,32,%r29
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L963
.L932:
	cmpb,*=,n %r0,%r20,.L964
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L935:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L935
	ldo 8(%r31),%r31
	cmpb,>>= %r21,%r22,.L928
	sub %r22,%r21,%r23
	ldo -1(%r23),%r28
	cmpib,>>= 7,%r28,.L965
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r19
	add,l %r25,%r19,%r19
	sub %r31,%r19,%r19
	cmpib,*>>= 6,%r19,.L937
	add,l %r25,%r29,%r28
	or %r28,%r31,%r19
	extrd,u %r19,63,3,%r19
	ldo -1(%r19),%r19
	cmpb,*<= %r0,%r19,.L937
	extrw,u %r23,28,29,%r20
	extrd,u %r20,63,32,%r20
	shladd,l %r20,3,%r28,%r20
.L939:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L939
	ldo 8(%r31),%r31
	copy %r23,%r28
	extrw,u %r23,31,3,%r23
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r28
	cmpib,= 0,%r23,.L928
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 1(%r28),%r19
	cmpb,>>= %r19,%r22,.L928
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 2(%r28),%r19
	cmpb,>>= %r19,%r22,.L928
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 3(%r28),%r19
	cmpb,>>= %r19,%r22,.L928
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 4(%r28),%r19
	cmpb,>>= %r19,%r22,.L928
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 5(%r28),%r19
	cmpb,>>= %r19,%r22,.L928
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 6(%r28),%r28
	cmpb,>>= %r28,%r22,.L928
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r25
	add,l %r26,%r31,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L928:
	bve,n (%r2)
.L963:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L928
	extrd,u %r24,63,32,%r24
.L943:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L943
	stb %r31,0(%r28)
	bve,n (%r2)
.L964:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r22,.L928
	add,l %r25,%r29,%r28
.L937:
	uaddcm %r24,%r21,%r19
	ldo 1(%r25),%r25
	extrd,u %r19,63,32,%r19
	add,l %r25,%r29,%r25
	add,l %r19,%r25,%r19
.L941:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r19,%r28,.L941
	ldo 1(%r31),%r31
	bve,n (%r2)
.L965:
	b .L937
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
	cmpb,*>> %r25,%r26,.L970
	extrd,u %r23,63,32,%r19
	add,l %r25,%r22,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L994
.L970:
	cmpb,*= %r0,%r19,.L969
	ldo -1(%r23),%r28
	cmpib,>>= 6,%r28,.L973
	or %r25,%r26,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<= %r0,%r28,.L973
	ldo 2(%r25),%r28
	sub %r26,%r28,%r28
	cmpib,*>>= 4,%r28,.L997
	copy %r25,%r28
	extrw,u %r24,28,29,%r21
	extrd,u %r21,63,32,%r20
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L975:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L975
	ldo 8(%r31),%r31
	depw,z %r21,29,30,%r28
	cmpb,= %r28,%r23,.L969
	extrd,u %r28,63,32,%r31
	ldh,s %r31(%r25),%r19
	shladd,l %r31,1,%r26,%r31
	sth %r19,0(%r31)
	ldo 1(%r28),%r31
	cmpb,>>= %r31,%r23,.L969
	extrd,u %r31,63,32,%r31
	ldh,s %r31(%r25),%r19
	shladd,l %r31,1,%r26,%r31
	ldo 2(%r28),%r28
	cmpb,>>= %r28,%r23,.L969
	sth %r19,0(%r31)
	extrd,u %r28,63,32,%r28
	ldh,s %r28(%r25),%r31
	shladd,l %r28,1,%r26,%r28
	sth %r31,0(%r28)
.L969:
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L966
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
.L998:
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L966:
	bve,n (%r2)
.L994:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r22,.L966
	extrd,u %r24,63,32,%r24
.L980:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L980
	stb %r31,0(%r28)
	bve,n (%r2)
.L973:
	copy %r25,%r28
.L997:
	copy %r26,%r31
	shladd,l %r19,1,%r25,%r19
.L977:
	ldh 0(%r28),%r20
	sth %r20,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r19,%r28,.L977
	ldo 2(%r31),%r31
	extrw,u %r22,31,1,%r22
	cmpib,= 0,%r22,.L966
	ldo -1(%r24),%r24
	b .L998
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
	cmpb,*>> %r25,%r26,.L1004
	extrd,u %r21,63,32,%r29
	add,l %r25,%r23,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L1041
.L1004:
	cmpb,*=,n %r0,%r19,.L1042
	ldo -1(%r2),%r28
	cmpib,>>= 8,%r28,.L1006
	or %r26,%r25,%r28
	extrd,u %r28,63,3,%r28
	ldo -1(%r28),%r28
	cmpb,*<= %r0,%r28,.L1006
	ldo 4(%r25),%r28
	cmpb,*= %r28,%r26,.L1006
	extrw,u %r24,28,29,%r22
	copy %r25,%r28
	extrd,u %r22,63,32,%r20
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L1007:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L1007
	ldo 8(%r31),%r31
	add,l %r22,%r22,%r22
	cmpb,= %r22,%r2,.L1010
	extrd,u %r22,63,32,%r22
	ldw,s %r22(%r25),%r28
	shladd,l %r22,2,%r26,%r22
	stw %r28,0(%r22)
.L1010:
	cmpb,>>= %r21,%r23,.L999
	sub %r23,%r21,%r22
	ldo -1(%r22),%r28
	cmpib,>>= 7,%r28,.L1043
	add,l %r26,%r29,%r31
	ldo 1(%r29),%r19
	add,l %r25,%r19,%r19
	sub %r31,%r19,%r19
	cmpib,*>>= 6,%r19,.L1002
	add,l %r25,%r29,%r28
	or %r28,%r31,%r19
	extrd,u %r19,63,3,%r19
	ldo -1(%r19),%r19
	cmpb,*<= %r0,%r19,.L1002
	extrw,u %r22,28,29,%r20
	extrd,u %r20,63,32,%r20
	shladd,l %r20,3,%r28,%r20
.L1012:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L1012
	ldo 8(%r31),%r31
	copy %r22,%r28
	extrw,u %r22,31,3,%r22
	depwi 0,31,3,%r28
	add,l %r28,%r21,%r28
	cmpib,= 0,%r22,.L999
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 1(%r28),%r19
	cmpb,>>= %r19,%r23,.L999
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 2(%r28),%r19
	cmpb,>>= %r19,%r23,.L999
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 3(%r28),%r19
	cmpb,>>= %r19,%r23,.L999
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 4(%r28),%r19
	cmpb,>>= %r19,%r23,.L999
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 5(%r28),%r19
	cmpb,>>= %r19,%r23,.L999
	extrd,u %r19,63,32,%r31
	add,l %r25,%r31,%r19
	add,l %r26,%r31,%r31
	ldb 0(%r19),%r19
	stb %r19,0(%r31)
	ldo 6(%r28),%r28
	cmpb,>>= %r28,%r23,.L999
	extrd,u %r28,63,32,%r31
	add,l %r25,%r31,%r25
	add,l %r26,%r31,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L999:
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1041:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L999
	extrd,u %r24,63,32,%r24
.L1016:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L1016
	stb %r31,0(%r28)
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1042:
	add,l %r26,%r29,%r31
	cmpb,*= %r0,%r23,.L999
	add,l %r25,%r29,%r28
.L1002:
	uaddcm %r24,%r21,%r19
	ldo 1(%r25),%r25
	extrd,u %r19,63,32,%r19
	add,l %r25,%r29,%r25
	add,l %r19,%r25,%r19
.L1014:
	ldb 0(%r28),%r20
	stb %r20,0(%r31)
	ldo 1(%r28),%r28
	cmpb,*<> %r19,%r28,.L1014
	ldo 1(%r31),%r31
	ldd -16(%r30),%r2
	bve,n (%r2)
.L1006:
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r19,2,%r25,%r19
.L1009:
	ldw 0(%r28),%r20
	stw %r20,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r19,%r28,.L1009
	ldo 4(%r31),%r31
	b,n .L1010
.L1043:
	b .L1002
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
	cmpib,<> 0,%r28,.L1053
	copy %r31,%r26
	extrd,u %r31,49,50,%r28
	cmpb,*<>,n %r0,%r28,.L1052
	extrw,s %r31,18,19,%r28
	cmpib,<>,n 0,%r28,.L1054
	extrw,s %r31,19,20,%r28
	cmpib,<>,n 0,%r28,.L1055
	extrw,s %r31,20,21,%r28
	cmpib,<>,n 0,%r28,.L1056
	extrw,s %r31,21,22,%r28
	cmpib,<>,n 0,%r28,.L1057
	extrw,s %r31,22,23,%r28
	cmpib,<>,n 0,%r28,.L1058
	extrw,s %r31,23,24,%r28
	cmpib,<>,n 0,%r28,.L1059
	extrw,s %r31,24,25,%r28
	cmpib,<>,n 0,%r28,.L1060
	extrw,s %r31,25,26,%r28
	cmpib,<>,n 0,%r28,.L1061
	extrw,s %r31,26,27,%r28
	cmpib,<>,n 0,%r28,.L1062
	extrw,s %r31,27,28,%r28
	cmpib,<>,n 0,%r28,.L1063
	extrw,s %r31,28,29,%r28
	cmpib,<>,n 0,%r28,.L1064
	extrw,s %r31,29,30,%r28
	cmpib,<> 0,%r28,.L1065
	extrw,s %r31,30,31,%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L1066
	cmpiclr,*<> 0,%r26,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L1052:
	bve,n (%r2)
.L1053:
	bve (%r2)
	ldi 0,%r28
.L1064:
	bve (%r2)
	ldi 12,%r28
.L1054:
	bve (%r2)
	ldi 2,%r28
.L1055:
	bve (%r2)
	ldi 3,%r28
.L1056:
	bve (%r2)
	ldi 4,%r28
.L1057:
	bve (%r2)
	ldi 5,%r28
.L1058:
	bve (%r2)
	ldi 6,%r28
.L1059:
	bve (%r2)
	ldi 7,%r28
.L1060:
	bve (%r2)
	ldi 8,%r28
.L1061:
	bve (%r2)
	ldi 9,%r28
.L1062:
	bve (%r2)
	ldi 10,%r28
.L1063:
	bve (%r2)
	ldi 11,%r28
.L1065:
	bve (%r2)
	ldi 13,%r28
.L1066:
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
	b,n .L1071
	extrd,s,*>= %r28,62,1,%r0
	b,n .L1072
	extrd,s,*>= %r28,61,1,%r0
	b,n .L1073
	extrd,s,*>= %r28,60,1,%r0
	b,n .L1074
	extrd,s,*>= %r28,59,1,%r0
	b,n .L1075
	extrd,s,*>= %r28,58,1,%r0
	b,n .L1076
	extrd,s,*>= %r28,57,1,%r0
	b,n .L1077
	extrd,s,*>= %r28,56,1,%r0
	b,n .L1078
	extrd,s,*>= %r28,55,1,%r0
	b,n .L1079
	extrd,s,*>= %r28,54,1,%r0
	b,n .L1080
	extrd,s,*>= %r28,53,1,%r0
	b,n .L1081
	extrd,s,*>= %r28,52,1,%r0
	b,n .L1082
	extrd,s,*>= %r28,51,1,%r0
	b,n .L1083
	extrd,s,*>= %r28,50,1,%r0
	b,n .L1084
	bb,*< %r28,49,.L1085
	extrw,s %r28,16,17,%r31
	cmpib,<> 0,%r31,.L1088
	ldi 16,%r28
	bve,n (%r2)
.L1071:
	bve (%r2)
	ldi 0,%r28
.L1072:
	bve (%r2)
	ldi 1,%r28
.L1083:
	bve (%r2)
	ldi 12,%r28
.L1088:
	bve (%r2)
	ldi 15,%r28
.L1073:
	bve (%r2)
	ldi 2,%r28
.L1074:
	bve (%r2)
	ldi 3,%r28
.L1075:
	bve (%r2)
	ldi 4,%r28
.L1076:
	bve (%r2)
	ldi 5,%r28
.L1077:
	bve (%r2)
	ldi 6,%r28
.L1078:
	bve (%r2)
	ldi 7,%r28
.L1079:
	bve (%r2)
	ldi 8,%r28
.L1080:
	bve (%r2)
	ldi 9,%r28
.L1081:
	bve (%r2)
	ldi 10,%r28
.L1082:
	bve (%r2)
	ldi 11,%r28
.L1084:
	bve (%r2)
	ldi 13,%r28
.L1085:
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
	b .L1093
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	bve (%r2)
	ldo -64(%r30),%r30
.L1093:
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
	cmpib,= 0,%r26,.L1100
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L1099:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L1099
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1100:
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
	cmpib,= 0,%r26,.L1105
	extrd,u %r25,63,32,%r25
	cmpb,*=,n %r0,%r25,.L1106
	ldi 0,%r28
.L1104:
	extrw,s %r25,31+1-1,1,%r19
	add,l %r31,%r31,%r20
	and %r19,%r31,%r31
	extrd,u %r25,62,63,%r25
	add,l %r31,%r28,%r28
	extrd,u %r20,63,32,%r31
	cmpb,*<> %r0,%r25,.L1104
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L1105:
	bve (%r2)
	copy %r31,%r28
.L1106:
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
	cmpb,<<= %r26,%r25,.L1110
	ldi 1,%r19
.L1109:
	cmpib,> 0,%r31,.L1110
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L1111
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L1109
	nop
.L1111:
	cmpb,*= %r0,%r19,.L1119
	copy %r19,%r20
.L1110:
	ldi 0,%r20
.L1116:
	cmpb,>>,n %r31,%r28,.L1115
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L1115:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1116
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L1119:
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
	b,n .L1132
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L1131
	ldi 1,%r28
	ldi 0,%r28
.L1131:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1132:
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
	b,n .L1136
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L1135
	ldi 1,%r28
	ldi 0,%r28
.L1135:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1136:
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
	cmpib,> 0,%r25,.L1149
	extrd,s %r25,63,32,%r19
	cmpb,*= %r0,%r19,.L1144
	ldi 0,%r24
.L1141:
	ldi 1,%r22
	ldi 0,%r28
	ldi 32,%r23
.L1143:
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
	cmpb,*<> %r0,%r31,.L1143
	extrd,s %r21,63,32,%r28
	cmpb,*= %r0,%r24,.L1142
	sub %r0,%r21,%r21
	extrd,s %r21,63,32,%r28
.L1142:
	bve,n (%r2)
.L1149:
	sub %r0,%r19,%r19
	ldi 1,%r24
	b .L1141
	extrd,s %r19,63,32,%r19
.L1144:
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
	cmpb,*>,n %r0,%r26,.L1173
	ldi 1,%r28
	ldi 0,%r22
.L1151:
	cmpb,*<= %r0,%r25,.L1175
	extrd,u %r26,63,32,%r20
	sub %r0,%r25,%r25
	copy %r28,%r22
.L1175:
	extrd,u %r25,63,32,%r31
	cmpb,<<= %r26,%r25,.L1154
	ldi 1,%r19
.L1153:
	cmpib,>,n 0,%r31,.L1154
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r28
	extrd,u %r21,63,32,%r19
	cmpb,<< %r28,%r20,.L1174
	extrd,u %r28,63,32,%r31
.L1164:
	cmpb,*= %r0,%r19,.L1157
	copy %r19,%r28
.L1154:
	ldi 0,%r28
.L1160:
	cmpb,<<,n %r20,%r31,.L1159
	sub %r20,%r31,%r20
	or %r19,%r28,%r28
	extrd,u %r20,63,32,%r20
.L1159:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1160
	extrd,u %r31,62,63,%r31
.L1157:
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r22,%r0
	copy %r31,%r28
	bve,n (%r2)
.L1174:
	cmpib,<> 0,%r21,.L1153
	nop
	b,n .L1164
.L1173:
	sub %r0,%r26,%r26
	ldi 0,%r28
	b .L1151
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
	cmpb,*<=,n %r22,%r26,.L1177
	sub %r0,%r26,%r26
	ldi 1,%r22
.L1177:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	cmpb,>> %r26,%r25,.L1178
	ldi 1,%r19
	b,n .L1185
.L1199:
	cmpiclr,<> 0,%r21,%r0
	b,n .L1198
.L1178:
	cmpib,>,n 0,%r31,.L1185
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,<< %r20,%r28,.L1199
	extrd,u %r20,63,32,%r31
.L1198:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L1200
.L1185:
	cmpb,>>,n %r31,%r28,.L1184
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
.L1184:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L1185
	extrd,u %r31,62,63,%r31
.L1200:
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
	cmpb,<<= %r26,%r25,.L1258
	ldi 1,%r19
	extrw,s %r25,31,16,%r28
	cmpib,> 0,%r28,.L1259
	add,l %r19,%r19,%r31
.L1206:
	add,l %r25,%r25,%r28
	extrd,u %r28,63,16,%r28
	cmpb,>>= %r28,%r26,.L1204
	extrd,u %r31,63,16,%r20
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	bb,>=,n %r31,16,.L1204
	copy %r20,%r19
	copy %r28,%r25
	extrw,s %r25,31,16,%r28
	cmpib,<= 0,%r28,.L1206
	add,l %r19,%r19,%r31
.L1259:
	cmpb,>> %r25,%r26,.L1229
	ldi 0,%r20
	sub %r26,%r25,%r26
	copy %r19,%r20
	extrd,u %r26,63,16,%r26
.L1229:
	extrd,u %r19,47+16-1,16,%r21
	cmpb,*= %r0,%r21,.L1232
	extrd,u %r25,62,63,%r31
.L1210:
	cmpb,>> %r31,%r26,.L1265
	extrd,u %r19,46+16-1,16,%r28
	sub %r26,%r31,%r31
	or %r20,%r21,%r21
	extrd,u %r31,63,16,%r26
	extrd,u %r21,63,16,%r20
.L1265:
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,61,62,%r31
	cmpb,>>,n %r31,%r26,.L1212
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1212:
	extrd,u %r19,45+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,60,61,%r31
	cmpb,>>,n %r31,%r26,.L1213
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1213:
	extrd,u %r19,44+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,59,60,%r31
	cmpb,>>,n %r31,%r26,.L1214
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1214:
	extrd,u %r19,43+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,58,59,%r31
	cmpb,>>,n %r31,%r26,.L1215
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1215:
	extrd,u %r19,42+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,57,58,%r31
	cmpb,>>,n %r31,%r26,.L1216
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1216:
	extrd,u %r19,41+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,56,57,%r31
	cmpb,<<= %r31,%r26,.L1260
	or %r20,%r28,%r28
.L1217:
	extrd,u %r19,40+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,55,56,%r31
	cmpb,<<= %r31,%r26,.L1261
	or %r20,%r28,%r28
.L1218:
	extrd,u %r19,39+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,54,55,%r31
	cmpb,<<= %r31,%r26,.L1262
	or %r20,%r28,%r28
.L1219:
	extrd,u %r19,38+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,53,54,%r31
	cmpb,<<= %r31,%r26,.L1263
	or %r20,%r28,%r28
.L1220:
	extrd,u %r19,37+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,52,53,%r31
	cmpb,<<= %r31,%r26,.L1264
	or %r20,%r28,%r28
.L1221:
	extrd,u %r19,36+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,51,52,%r31
	cmpb,>>,n %r31,%r26,.L1222
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1222:
	extrd,u %r19,35+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,50,51,%r31
	cmpb,>>,n %r31,%r26,.L1223
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1223:
	extrd,u %r19,34+16-1,16,%r28
	cmpb,*= %r0,%r28,.L1232
	extrd,u %r25,49,50,%r31
	cmpb,>> %r31,%r26,.L1224
	sub %r26,%r31,%r31
	or %r20,%r28,%r28
	extrd,u %r31,63,16,%r26
	extrd,u %r28,63,16,%r20
.L1224:
	extrw,u %r19,1+16-1,16,%r19
	cmpib,= 0,%r19,.L1232
	extrd,u %r25,48,49,%r25
	cmpb,>> %r25,%r26,.L1208
	ldi 0,%r28
	sub %r26,%r25,%r25
	depwi -1,31,1,%r20
	extrd,u %r25,63,16,%r28
	b .L1208
	extrd,u %r20,63,16,%r20
.L1204:
	cmpclr,*<> %r0,%r20,%r0
	b,n .L1232
	cmpb,>>,n %r28,%r26,.L1209
	sub %r26,%r28,%r26
	extrd,u %r19,63,15,%r21
	extrd,u %r25,63,15,%r31
	extrd,u %r26,63,16,%r26
	copy %r28,%r25
	b .L1210
	copy %r20,%r19
.L1232:
	copy %r26,%r28
.L1208:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L1260:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1217
	extrd,u %r28,63,16,%r20
.L1209:
	extrd,u %r19,63,15,%r21
	extrd,u %r25,63,15,%r31
	copy %r20,%r19
	copy %r28,%r25
	b .L1210
	ldi 0,%r20
.L1261:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1218
	extrd,u %r28,63,16,%r20
.L1262:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1219
	extrd,u %r28,63,16,%r20
.L1263:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1220
	extrd,u %r28,63,16,%r20
.L1264:
	sub %r26,%r31,%r31
	extrd,u %r31,63,16,%r26
	b .L1221
	extrd,u %r28,63,16,%r20
.L1258:
	cmpb,<>,n %r26,%r25,.L1231
	copy %r19,%r20
	b .L1208
	ldi 0,%r28
.L1231:
	copy %r26,%r28
	b .L1208
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
	cmpb,*<<= %r26,%r25,.L1268
	depdi,z 1,32,4,%r20
	and %r25,%r20,%r19
.L1290:
	cmpb,*<>,n %r0,%r19,.L1268
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L1288
	depd,z %r31,62,63,%r31
	cmpb,*= %r0,%r31,.L1289
	copy %r31,%r19
.L1268:
	ldi 0,%r19
.L1274:
	cmpb,*>>,n %r25,%r28,.L1273
	sub %r28,%r25,%r28
	or %r19,%r31,%r19
.L1273:
	extrd,u %r31,62,63,%r31
	cmpb,*<> %r0,%r31,.L1274
	extrd,u %r25,62,63,%r25
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
.L1288:
	cmpb,*<> %r0,%r31,.L1290
	and %r25,%r20,%r19
	copy %r31,%r19
.L1289:
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
	bb,>= %r25,26,.L1292
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	ldi 0,%r28
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
.L1293:
	depd,z %r26,31,32,%r26
	bve (%r2)
	or %r26,%r28,%r28
.L1292:
	cmpb,*= %r0,%r28,.L1295
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
	b .L1293
	extrd,s %r19,63,32,%r26
.L1295:
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
	bb,>= %r24,25,.L1297
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	ldi 0,%r29
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	depd,z %r25,%sar,64,%r28
.L1297:
	cmpb,*= %r0,%r28,.L1300
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
.L1300:
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
	bb,>= %r25,26,.L1302
	extrd,s %r25,63,32,%r28
	extrd,s %r26,0+32-1,32,%r26
	subi 63,%r25,%r25
	extrw,s %r26,0,1,%r28
	mtsar %r25
	extrd,s %r28,63,32,%r28
	extrw,s %r26,%sar,32,%r31
	extrd,u %r31,63,32,%r31
.L1303:
	depd,z %r28,31,32,%r26
	bve (%r2)
	or %r26,%r31,%r28
.L1302:
	cmpb,*= %r0,%r28,.L1305
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
	b .L1303
	extrd,u %r31,63,32,%r31
.L1305:
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
	bb,>= %r24,25,.L1307
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,s %r26,0,1,%r28
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	extrd,s %r26,%sar,64,%r29
.L1307:
	cmpb,*= %r0,%r28,.L1310
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
.L1310:
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
	bb,< %r26,30,.L1316
	ldi 0,%r28
	subi 2,%r26,%r28
.L1316:
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
	b,n .L1323
	cmpb,< %r28,%r31,.L1324
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1323
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1324
	bve (%r2)
	ldi 1,%r28
.L1323:
	bve (%r2)
	ldi 0,%r28
.L1324:
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
	b,n .L1330
	cmpb,<,n %r28,%r31,.L1329
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1330
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1330:
	bve (%r2)
	ldi -1,%r28
.L1329:
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
	b,n .L1335
	cmpclr,*>= %r24,%r26,%r0
	b,n .L1334
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1335
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1335:
	bve (%r2)
	ldi 0,%r28
.L1334:
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
	cmpb,*<> %r0,%r25,.L1340
	ldo -48(%r30),%r29
	cmpb,*<> %r0,%r26,.L1345
	copy %r25,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1340:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldd -144(%r30),%r2
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1345:
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
	bb,>= %r25,26,.L1347
	extrd,s %r25,63,32,%r28
	extrd,u %r26,0+32-1,32,%r31
	mtsar %r25
	ldi 0,%r28
	shrpw %r0,%r31,%sar,%r31
	extrd,u %r31,63,32,%r31
.L1348:
	depd,z %r28,31,32,%r28
	bve (%r2)
	or %r28,%r31,%r28
.L1347:
	cmpb,*= %r0,%r28,.L1350
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
	b .L1348
	extrd,u %r31,63,32,%r31
.L1350:
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
	bb,>= %r24,25,.L1352
	extrd,s %r24,63,32,%r28
	mtsar %r24
	ldi 0,%r28
	bve (%r2)
	shrpd %r0,%r26,%sar,%r29
.L1352:
	cmpb,*= %r0,%r28,.L1355
	mtsar %r28
	subi 64,%r28,%r31
	shrpd %r0,%r25,%sar,%r29
	shrpd %r0,%r26,%sar,%r28
	extrd,u %r31,63,32,%r31
	mtsarcm %r31
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r29,%r29
.L1355:
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
	ldd RT'.LC38(%r1),%r28
	ldd 0(%r28),%r31
	addil LT'.LC39,%r27
	ldd RT'.LC39(%r1),%r28
	ldd 0(%r28),%r19
	extrd,u %r26,62,63,%r28
	and %r28,%r31,%r28
	sub %r26,%r28,%r26
	extrd,u %r26,61,62,%r31
	and %r26,%r19,%r26
	and %r31,%r19,%r31
	add,l %r31,%r26,%r31
	addil LT'.LC40,%r27
	ldd RT'.LC40(%r1),%r20
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
	addil LT'.LC46,%r27
	ldd 0(%r28),%r31
	ldd RT'.LC46(%r1),%r28
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
	extrd,s %r25,63,32,%r20
	fcpy,dbl %fr4,%fr22
	addil LT'.LC50,%r27
	ldd RT'.LC50(%r1),%r21
	fldd 0(%r21),%fr4
	extrw,u %r25,31,1,%r25
	cmpib,= 0,%r25,.L1369
	copy %r20,%r31
.L1371:
	fmpy,dbl %fr4,%fr22,%fr4
.L1369:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1370
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1371
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r31,0,1,%r28
.L1377:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1371
	fmpy,dbl %fr22,%fr22,%fr22
	b .L1377
	extrw,u %r31,0,1,%r28
.L1370:
	cmpiclr,<= 0,%r20,%r0
	b,n .L1376
	bve,n (%r2)
.L1376:
	fldd 0(%r21),%fr22
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
	extrd,s %r25,63,32,%r20
	fcpy,sgl %fr4R,%fr22R
	addil LT'.LC52,%r27
	ldd RT'.LC52(%r1),%r21
	fldw 0(%r21),%fr4R
	extrw,u %r25,31,1,%r25
	cmpib,= 0,%r25,.L1379
	copy %r20,%r31
.L1381:
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L1379:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1380
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1381
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r31,0,1,%r28
.L1387:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1381
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L1387
	extrw,u %r31,0,1,%r28
.L1380:
	cmpiclr,<= 0,%r20,%r0
	b,n .L1386
	bve,n (%r2)
.L1386:
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
	b,n .L1392
	cmpb,<< %r28,%r31,.L1393
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1392
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1393
	bve (%r2)
	ldi 1,%r28
.L1392:
	bve (%r2)
	ldi 0,%r28
.L1393:
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
	b,n .L1399
	cmpb,<<,n %r28,%r31,.L1398
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1399
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1399:
	bve (%r2)
	ldi -1,%r28
.L1398:
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
	b,n .L1404
	cmpclr,*>>= %r24,%r26,%r0
	b,n .L1403
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1404
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1404:
	bve (%r2)
	ldi 0,%r28
.L1403:
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
