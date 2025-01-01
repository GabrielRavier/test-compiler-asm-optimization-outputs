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
.L17:
	stb,mb %r19,-1(%r31)
	cmpb,*<>,n %r31,%r28,.L17
	ldb,mb -1(%r25),%r19
.L6:
	bve,n (%r2)
.L5:
	cmpb,*= %r25,%r26,.L6
	nop
	cmpb,*= %r0,%r24,.L6
	add,l %r26,%r24,%r24
	copy %r26,%r31
.L8:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r25),%r19
	cmpb,*<> %r31,%r24,.L8
	stb %r19,-1(%r31)
	b,n .L6
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
	cmpb,*= %r0,%r23,.L23
	extrd,u %r24,63,8,%r24
.L19:
	ldb 0(%r25),%r28
	cmpb,= %r24,%r28,.L30
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	cmpb,*<> %r0,%r23,.L19
	ldo 1(%r26),%r26
.L23:
	b .L18
	ldi 0,%r28
.L30:
	cmpb,*= %r0,%r23,.L23
	ldo 1(%r26),%r28
.L18:
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
	cmpb,*= %r0,%r24,.L37
	extrd,u %r25,63,8,%r25
.L32:
	ldb 0(%r26),%r28
	cmpb,=,n %r25,%r28,.L40
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L32
	ldo 1(%r26),%r26
.L37:
	b .L31
	ldi 0,%r28
.L40:
	cmpb,*= %r0,%r24,.L37
	copy %r26,%r28
.L31:
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
	b,n .L53
.L44:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L53:
	cmpb,*=,n %r0,%r24,.L46
	ldb 0(%r26),%r31
	ldb 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L44
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r24,.L54
	ldi 0,%r28
	copy %r31,%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L45:
.L54:
	bve,n (%r2)
.L46:
	b .L45
	ldi 0,%r28
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
	cmpb,*= %r0,%r24,.L56
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
.L56:
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
	extrd,u %r25,63,8,%r25
	ldo -1(%r24),%r24
	add,l %r26,%r24,%r24
	ldo -1(%r26),%r26
.L61:
	cmpb,*= %r26,%r24,.L64
	copy %r24,%r28
	ldb 0(%r28),%r31
	cmpb,<> %r25,%r31,.L61
	ldo -1(%r24),%r24
	b,n .L60
.L64:
	ldi 0,%r28
.L60:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 8
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	cmpb,*= %r0,%r24,.L66
	extrd,s %r25,63,32,%r25
	add,l %r26,%r24,%r24
	copy %r26,%r31
	stb %r25,0(%r31)
.L72:
	ldo 1(%r31),%r31
	cmpb,*<>,n %r31,%r24,.L72
	stb %r25,0(%r31)
.L66:
	bve,n (%r2)
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
	copy %r26,%r28
	ldb 0(%r25),%r31
	extrd,s %r31,63,8,%r19
	cmpb,*= %r0,%r19,.L74
	stb %r31,0(%r26)
.L75:
	ldb,mb 1(%r25),%r31
	extrd,s %r31,63,8,%r19
	cmpb,*<> %r0,%r19,.L75
	stb,mb %r31,1(%r28)
.L74:
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
	copy %r26,%r28
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*= %r0,%r31,.L80
	extrd,u %r25,63,8,%r25
	extrw,u %r31,31,8,%r31
.L87:
	cmpb,=,n %r25,%r31,.L80
	ldb,mb 1(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L87
	extrw,u %r31,31,8,%r31
.L80:
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
	copy %r26,%r28
	extrd,s %r25,63,32,%r25
.L90:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r25,%r31,%r0
	b,n .L89
	cmpb,*<> %r0,%r31,.L90
	ldo 1(%r28),%r28
	ldi 0,%r28
.L89:
	bve,n (%r2)
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
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r28
	ldb 0(%r25),%r20
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	bb,>= %r19,24,.L93
	extrd,s %r20,63,8,%r21
.L106:
	xor %r31,%r20,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	bb,>=,n %r31,24,.L93
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r28
	ldb,mb 1(%r25),%r20
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	bb,< %r19,24,.L106
	extrd,s %r20,63,8,%r21
.L93:
	extrw,u %r28,31,8,%r28
	extrw,u %r21,31,8,%r21
	sub %r28,%r21,%r28
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
	cmpib,= 0,%r28,.L108
	copy %r26,%r28
	ldb,mb 1(%r28),%r31
.L112:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L112
	ldb,mb 1(%r28),%r31
.L108:
	bve (%r2)
	sub %r28,%r26,%r28
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
	cmpb,*=,n %r0,%r24,.L119
	ldb 0(%r26),%r28
	cmpb,*= %r0,%r28,.L115
	ldo -1(%r24),%r24
	add,l %r25,%r24,%r20
.L116:
	ldb 0(%r25),%r31
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	xor %r31,%r28,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	and %r19,%r31,%r19
	extrw,s,< %r19,24,1,%r0
	b,n .L115
	cmpb,*=,n %r20,%r25,.L115
	ldb,mb 1(%r26),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*<> %r0,%r28,.L116
	ldo 1(%r25),%r25
.L115:
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L114:
	bve,n (%r2)
.L119:
	b .L114
	ldi 0,%r28
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
	cmpib,*>= 1,%r24,.L127
	depdi 0,63,1,%r24
	add,l %r26,%r24,%r31
.L129:
	ldb 1(%r26),%r28
	stb %r28,0(%r25)
	ldb 0(%r26),%r28
	stb %r28,1(%r25)
	ldo 2(%r26),%r26
	cmpb,*<> %r31,%r26,.L129
	ldo 2(%r25),%r25
.L127:
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
	xor %r26,%r31,%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	ldi 9,%r28
	xor %r26,%r28,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
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
	cmpb,>>= %r19,%r26,.L137
	ldi 1,%r31
	ldi 0,%r31
.L137:
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
	cmpib,>>= 4,%r26,.L147
	ldi 1,%r19
	ldi 0,%r19
.L147:
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
	ldo -127(%r26),%r26
	ldi 32,%r28
	cmpb,>>= %r28,%r26,.L159
	ldi 1,%r28
	ldi 31,%r28
	cmpb,>>= %r28,%r31,.L155
	ldo -40(%r31),%r19
	ldo -8192(%r19),%r19
	cmpib,>>= 1,%r19,.L151
	ldi 1,%r28
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpiclr,<< 2,%r31,%r31
	ldi 1,%r31
	b .L151
	extrd,s %r31,63,32,%r28
.L155:
	ldi 1,%r28
.L151:
.L159:
	bve,n (%r2)
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
	cmpb,>>= %r31,%r26,.L173
	extrd,u %r26,63,32,%r28
	ldo -42(%r28),%r19
	ldo -8192(%r19),%r19
	ldil L'49152,%r31
	ldo -2091(%r31),%r31
	cmpb,>>= %r31,%r19,.L169
	ldil L'16384,%r31
	ldo -8153(%r31),%r31
	cmpb,>>= %r31,%r28,.L169
	ldil L'-57344,%r31
	add,l %r28,%r31,%r31
	ldi 8184,%r19
	cmpb,>>= %r19,%r31,.L169
	depwi,z -1,29,14,%r19
	sub %r28,%r19,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L170
	depwi,z -1,30,15,%r31
	andcm %r31,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	b .L165
	extrd,s %r28,63,32,%r28
.L173:
	ldo 1(%r26),%r28
	extrw,u %r28,31,7,%r28
	cmpiclr,>>= 32,%r28,%r28
	ldi 1,%r28
	b .L165
	extrd,s %r28,63,32,%r28
.L169:
	ldi 1,%r28
.L165:
	bve,n (%r2)
.L170:
	b .L165
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
	cmpib,>>= 9,%r26,.L175
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r28
	cmpiclr,<< 5,%r28,%r28
	ldi 1,%r28
	extrd,s %r28,63,32,%r28
.L175:
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
	b .L179
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L183
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L185
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	b .L179
	fldd 0(%r28),%fr4
.L185:
	fsub,dbl %fr4,%fr5,%fr4
.L179:
	bve,n (%r2)
.L183:
	b .L179
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
	b .L187
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L191
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L193
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	b .L187
	fldw 0(%r28),%fr4R
.L193:
	fsub,sgl %fr4R,%fr5R,%fr4R
.L187:
	bve,n (%r2)
.L191:
	b .L187
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
	ldo 64(%r30),%r30
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L201
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L202
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L197
	extrd,u %r28,0,1,%r28
	cmpb,*<> %r0,%r28,.L195
	fcpy,dbl %fr5,%fr4
.L202:
	b .L195
	fcpy,dbl %fr22,%fr4
.L197:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L201
	fcpy,dbl %fr4,%fr5
.L201:
	fcpy,dbl %fr5,%fr4
.L195:
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
	ldo 64(%r30),%r30
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L212
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L213
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L208
	extrd,s %r28,63,32,%r19
	cmpb,*<> %r0,%r19,.L206
	fcpy,sgl %fr5R,%fr4R
.L213:
	b .L206
	fcpy,sgl %fr22R,%fr4R
.L208:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L212
	fcpy,sgl %fr4R,%fr5R
.L212:
	fcpy,sgl %fr5R,%fr4R
.L206:
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
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r3
	copy %r25,%r5
	copy %r24,%r6
	copy %r23,%r7
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L225
	copy %r4,%r27
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L224
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L219
	extrd,u %r3,0,1,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L224
.L225:
	copy %r6,%r28
	b .L217
	copy %r7,%r29
.L219:
	copy %r6,%r24
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L228
.L224:
	copy %r3,%r28
	copy %r5,%r29
.L217:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L228:
	copy %r6,%r3
	b .L224
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
	ldo 64(%r30),%r30
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L235
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L229
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L231
	extrd,u %r28,0,1,%r28
	cmpclr,*= %r0,%r28,%r0
	b,n .L229
.L235:
	fcpy,dbl %fr5,%fr4
.L229:
.L240:
	bve (%r2)
	ldo -64(%r30),%r30
.L231:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L229
	b .L240
	fcpy,dbl %fr5,%fr4
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
	ldo 64(%r30),%r30
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L247
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L241
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L243
	extrd,s %r28,63,32,%r19
	cmpclr,*= %r0,%r19,%r0
	b,n .L241
.L247:
	fcpy,sgl %fr5R,%fr4R
.L241:
.L252:
	bve (%r2)
	ldo -64(%r30),%r30
.L243:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L241
	b .L252
	fcpy,sgl %fr5R,%fr4R
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
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r6
	copy %r25,%r7
	copy %r24,%r3
	copy %r23,%r5
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L259
	copy %r4,%r27
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	copy %r5,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L261
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L255
	extrd,u %r6,0,1,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L259
.L261:
	copy %r6,%r28
	b .L253
	copy %r7,%r29
.L255:
	copy %r3,%r24
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L264
.L259:
	copy %r3,%r28
	copy %r5,%r29
.L253:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L264:
	copy %r6,%r3
	b .L259
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
	addil LT's.0,%r27
	ldd RT's.0(%r1),%r28
	cmpib,= 0,%r26,.L266
	copy %r28,%r19
	addil LT'digits,%r27
	ldd RT'digits(%r1),%r21
.L267:
	extrd,u %r31,63,6,%r20
	ldb %r20(%r21),%r20
	stb %r20,0(%r19)
	extrd,u %r31,57,58,%r31
	cmpb,*<> %r0,%r31,.L267
	ldo 1(%r19),%r19
.L266:
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
	ldd RT'seed(%r1),%r28
	ldo -1(%r26),%r26
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
	cmpb,*=,n %r0,%r25,.L278
	ldd 0(%r25),%r28
	std %r28,0(%r26)
	std %r25,8(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L272:
	bve,n (%r2)
.L278:
	std %r25,8(%r26)
	b .L272
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
	cmpb,*=,n %r0,%r28,.L280
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L280:
	ldd 8(%r26),%r28
	cmpb,*=,n %r0,%r28,.L279
	ldd 0(%r26),%r31
	std %r31,0(%r28)
.L279:
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
	std %r12,-200(%r30)
	std %r11,-192(%r30)
	std %r10,-184(%r30)
	std %r9,-176(%r30)
	std %r8,-168(%r30)
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r9
	copy %r25,%r10
	copy %r24,%r13
	copy %r23,%r7
	ldd 0(%r24),%r8
	cmpb,*= %r0,%r8,.L289
	copy %r22,%r11
	copy %r25,%r3
	ldi 0,%r5
	ldo -48(%r30),%r12
.L291:
	copy %r3,%r6
	copy %r3,%r25
	copy %r9,%r26
	copy %r12,%r29
	copy %r27,%r4
	ldd 16(%r11),%r2
	bve,l (%r2),%r2
	ldd 24(%r11),%r27
	cmpb,*= %r0,%r28,.L288
	copy %r4,%r27
	ldo 1(%r5),%r5
	cmpb,*<> %r5,%r8,.L291
	add,l %r3,%r7,%r3
.L289:
	ldo 1(%r8),%r28
	std %r28,0(%r13)
	extrd,u %r7,31,32,%r6
	extrd,u %r8,31,32,%r28
	std %r28,-216(%r30)
	fldd -216(%r30),%fr22
	std %r8,-216(%r30)
	fldd -216(%r30),%fr23
	std %r6,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r6
	std %r7,-216(%r30)
	fldd -216(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r8,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-216(%r30)
	ldd -216(%r30),%r8
	fstd %fr22,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r6,%r28,%r6
	depd,z %r6,31,32,%r6
	add,l %r6,%r8,%r6
	cmpb,*= %r0,%r7,.L288
	add,l %r10,%r6,%r6
	copy %r7,%r24
	copy %r9,%r25
	ldo -48(%r30),%r29
	b,l memmove,%r2
	copy %r6,%r26
.L288:
	copy %r6,%r28
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
	std %r9,-176(%r30)
	std %r8,-168(%r30)
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r6
	copy %r23,%r8
	ldd 0(%r24),%r9
	cmpb,*= %r0,%r9,.L304
	copy %r22,%r7
	copy %r25,%r3
	ldi 0,%r5
	ldo -48(%r30),%r11
.L306:
	copy %r3,%r10
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	copy %r27,%r4
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpb,*= %r0,%r28,.L303
	copy %r4,%r27
	ldo 1(%r5),%r5
	cmpb,*<> %r5,%r9,.L306
	add,l %r3,%r8,%r3
.L304:
	ldi 0,%r10
.L303:
	copy %r10,%r28
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
	cmpib,>>= 4,%r28,.L335
	ldi 32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L337
	ldi 43,%r28
.L335:
	ldb,mb 1(%r26),%r28
.L338:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>=,n 4,%r19,.L338
	ldb,mb 1(%r26),%r28
	xor %r20,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L338
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L337:
	cmpb,=,n %r28,%r31,.L326
	ldi 45,%r28
	cmpb,<> %r28,%r31,.L322
	ldi 0,%r20
	ldi 1,%r20
.L321:
	ldo 1(%r26),%r26
.L322:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,<< 9,%r19,.L324
	ldi 0,%r28
.L323:
	shladd,l %r28,2,%r28,%r28 
	add,l %r28,%r28,%r28
	ldo -48(%r31),%r31
	extrw,s %r31,31,8,%r31
	sub %r28,%r31,%r28
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,>>= 9,%r19,.L323
	extrd,s %r28,63,32,%r28
.L324:
	cmpb,*<>,n %r0,%r20,.L325
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L325:
	bve,n (%r2)
.L326:
	b .L321
	ldi 0,%r20
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
	cmpib,>>= 4,%r28,.L359
	ldi 32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L361
	ldi 43,%r28
.L359:
	ldb,mb 1(%r26),%r28
.L362:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>=,n 4,%r19,.L362
	ldb,mb 1(%r26),%r28
	xor %r20,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L362
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L361:
	cmpb,=,n %r28,%r31,.L350
	ldi 45,%r28
	cmpb,<> %r28,%r31,.L346
	ldi 0,%r20
	ldi 1,%r20
.L345:
	ldo 1(%r26),%r26
.L346:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,<< 9,%r19,.L348
	ldi 0,%r28
	shladd,l %r28,2,%r28,%r28
.L363:
	depd,z %r28,62,63,%r28
	ldo -48(%r31),%r31
	extrd,s %r31,63,8,%r31
	sub %r28,%r31,%r28
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,>>=,n 9,%r19,.L363
	shladd,l %r28,2,%r28,%r28
.L348:
	sub %r0,%r28,%r31
	cmpiclr,*<> 0,%r20,%r0
	copy %r31,%r28
	bve,n (%r2)
.L350:
	b .L345
	ldi 0,%r20
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
	cmpib,>>= 4,%r28,.L384
	ldi 32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L386
	ldi 43,%r28
.L384:
	ldb,mb 1(%r26),%r28
.L387:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>=,n 4,%r19,.L387
	ldb,mb 1(%r26),%r28
	xor %r20,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L387
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L386:
	cmpb,=,n %r28,%r31,.L375
	ldi 45,%r28
	cmpb,<> %r28,%r31,.L371
	ldi 0,%r20
	ldi 1,%r20
.L370:
	ldo 1(%r26),%r26
.L371:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,<< 9,%r19,.L373
	ldi 0,%r28
	shladd,l %r28,2,%r28,%r28
.L388:
	depd,z %r28,62,63,%r28
	ldo -48(%r31),%r31
	extrd,s %r31,63,8,%r31
	sub %r28,%r31,%r28
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,>>=,n 9,%r19,.L388
	shladd,l %r28,2,%r28,%r28
.L373:
	sub %r0,%r28,%r31
	cmpiclr,*<> 0,%r20,%r0
	copy %r31,%r28
	bve,n (%r2)
.L375:
	b .L370
	ldi 0,%r20
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 8
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,ENTRY_GR=9,ENTRY_FR=14
	.ENTRY
	std %r2,-16(%r30)
	ldo 208(%r30),%r30
	std %r9,-192(%r30)
	std %r8,-184(%r30)
	std %r7,-176(%r30)
	std %r6,-168(%r30)
	std %r5,-160(%r30)
	std %r4,-152(%r30)
	std %r3,-144(%r30)
	ldo -136(%r30),%r1
	fstd,ma %fr14,8(%r1)
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	copy %r26,%r7
	copy %r25,%r6
	copy %r24,%r5
	std %r23,-200(%r30)
	fldd -200(%r30),%fr13
	cmpb,*= %r0,%r24,.L390
	copy %r22,%r8
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr14
	b .L393
	ldo -48(%r30),%r9
.L394:
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r5
.L391:
	cmpb,*= %r0,%r5,.L389
	ldi 0,%r3
.L393:
	extrd,u %r5,62,63,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr12
	extrd,u %r5,30,31,%r3
	std %r3,-200(%r30)
	fldd -200(%r30),%fr22
	xmpyu %fr13R,%fr22R,%fr22
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r3
	xmpyu %fr14R,%fr12R,%fr23
	xmpyu %fr13R,%fr12R,%fr22
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r3
	depd,z %r3,31,32,%r3
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r3
	add,l %r6,%r3,%r3
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r29
	copy %r27,%r4
	ldd 16(%r8),%r2
	bve,l (%r2),%r2
	ldd 24(%r8),%r27
	cmpib,> 0,%r28,.L394
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L389
	fstd %fr13,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	b .L391
	uaddcm %r5,%r28,%r5
.L390:
	ldi 0,%r3
.L389:
	copy %r3,%r28
	ldd -224(%r30),%r2
	ldd -192(%r30),%r9
	ldd -184(%r30),%r8
	ldd -176(%r30),%r7
	ldd -168(%r30),%r6
	ldd -160(%r30),%r5
	ldd -152(%r30),%r4
	ldd -144(%r30),%r3
	ldo -136(%r30),%r1
	fldd,ma 8(%r1),%fr14
	fldd,ma 8(%r1),%fr13
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
	std %r11,-208(%r30)
	std %r10,-200(%r30)
	std %r9,-192(%r30)
	std %r8,-184(%r30)
	std %r7,-176(%r30)
	std %r6,-168(%r30)
	std %r5,-160(%r30)
	std %r4,-152(%r30)
	std %r3,-144(%r30)
	ldo -136(%r30),%r1
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	copy %r26,%r8
	copy %r25,%r7
	std %r23,-216(%r30)
	fldd -216(%r30),%fr12
	copy %r22,%r9
	copy %r21,%r10
	cmpib,= 0,%r24,.L400
	extrd,s %r24,63,32,%r5
	extrd,u %r23,31,32,%r28
	std %r28,-216(%r30)
	fldd -216(%r30),%fr13
	b .L403
	ldo -48(%r30),%r11
.L402:
	cmpib,= 0,%r6,.L400
	extrd,s %r6,63,32,%r5
.L403:
	extrw,s %r5,30,31,%r6
	extrd,s %r5,62,63,%r3
	extrd,u %r3,31,32,%r3
	std %r3,-216(%r30)
	fldd -216(%r30),%fr22
	xmpyu %fr12R,%fr22R,%fr22
	fstd %fr22,-216(%r30)
	ldd -216(%r30),%r3
	std %r6,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr13R,%fr24R,%fr23
	xmpyu %fr12R,%fr24R,%fr22
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r3
	depd,z %r3,31,32,%r3
	fstd %fr22,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r3
	add,l %r7,%r3,%r3
	copy %r10,%r24
	copy %r3,%r25
	copy %r8,%r26
	copy %r11,%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	cmpb,*= %r0,%r28,.L399
	copy %r4,%r27
	cmpib,>= 0,%r28,.L402
	nop
	fstd %fr12,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r7
	ldo -1(%r5),%r5
	extrd,s %r5,63,32,%r5
	b .L402
	extrw,s %r5,30,31,%r6
.L400:
	ldi 0,%r3
.L399:
	copy %r3,%r28
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
	ldo -136(%r30),%r1
	fldd,ma 8(%r1),%fr13
	fldd,ma 8(%r1),%fr12
	bve (%r2)
	ldo -224(%r30),%r30
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
	ldo 64(%r30),%r30
	extrd,s %r26,63,32,%r19
	extrd,s %r25,63,32,%r28
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$divI,MILLICODE
	b,l $$divI,%r2
	nop
	copy %r29,%r31
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r2
	ldi 0,%r28
	extrd,u %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	extrd,u %r29,63,32,%r29
	depd %r29,32+32-1,32,%r28
	ldd -80(%r30),%r2
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
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r3
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r5,%r26
	copy %r28,%r29
	copy %r3,%r28
	ldd -192(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
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
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r3
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r5,%r26
	copy %r28,%r29
	copy %r3,%r28
	ldd -192(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
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
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r3
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r5,%r26
	copy %r28,%r29
	copy %r3,%r28
	ldd -192(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
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
	ldw 0(%r26),%r28
	cmpb,= %r28,%r25,.L419
	extrd,u %r25,63,32,%r19
.L433:
	cmpb,*=,n %r0,%r28,.L419
	ldw,mb 4(%r26),%r31
	cmpb,<> %r19,%r31,.L433
	extrd,u %r31,63,32,%r28
.L419:
	cmpiclr,*= 0,%r28,%r28
	copy %r26,%r28
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
	ldw 0(%r26),%r21
	ldw 0(%r25),%r20
	or,>= %r0,%r21,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	xor %r21,%r20,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	and %r28,%r31,%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L435
.L451:
	cmpb,*=,n %r0,%r20,.L435
	ldw,mb 4(%r26),%r19
	ldw,mb 4(%r25),%r28
	extrd,u %r28,63,32,%r20
	or,>= %r0,%r19,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	xor %r28,%r19,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	and %r28,%r31,%r28
	cmpib,> 0,%r28,.L451
	extrd,u %r19,63,32,%r21
.L435:
	cmpb,>> %r20,%r21,.L438
	ldi -1,%r28
	cmpclr,>>= %r20,%r21,%r21
	ldi 1,%r21
	extrd,s %r21,63,32,%r28
.L438:
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
.L453:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L453
	stw %r19,-4(%r31)
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
	cmpib,= 0,%r28,.L458
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L460:
	cmpib,<>,n 0,%r31,.L460
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
.L461:
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L458:
	b .L461
	sub %r28,%r26,%r28
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
	b,n .L479
.L465:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L479:
	cmpb,*=,n %r0,%r24,.L469
	ldw 0(%r26),%r28
	ldw 0(%r25),%r19
	or,>= %r0,%r28,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	xor %r28,%r19,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	and %r28,%r31,%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L464
	cmpb,*<>,n %r0,%r19,.L465
	ldo -1(%r24),%r24
.L464:
	cmpb,*=,n %r0,%r24,.L469
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,>> %r19,%r31,.L467
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	b .L467
	extrd,s %r31,63,32,%r28
.L469:
	ldi 0,%r28
.L467:
	bve,n (%r2)
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
	cmpb,*= %r0,%r24,.L486
	extrd,u %r25,63,32,%r25
.L481:
	ldw 0(%r26),%r28
	cmpb,=,n %r25,%r28,.L489
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L481
	ldo 4(%r26),%r26
.L486:
	b .L480
	ldi 0,%r28
.L489:
	cmpb,*= %r0,%r24,.L486
	copy %r26,%r28
.L480:
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
	b,n .L503
.L493:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L503:
	cmpb,*=,n %r0,%r24,.L496
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L493
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r24,.L496
	copy %r28,%r19
	cmpb,>> %r19,%r31,.L494
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	b .L494
	extrd,s %r31,63,32,%r28
.L496:
	ldi 0,%r28
.L494:
	bve,n (%r2)
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
	cmpb,*= %r0,%r24,.L505
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L505:
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
	cmpb,*= %r25,%r26,.L510
	copy %r26,%r28
	sub %r26,%r25,%r19
	depd,z %r24,61,62,%r20
	cmpb,*>> %r20,%r19,.L511
	ldo -1(%r24),%r31
	cmpb,*= %r0,%r24,.L510
	copy %r26,%r19
.L512:
	ldo 4(%r25),%r25
	ldo 4(%r19),%r19
	ldw -4(%r25),%r20
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L512
	stw %r20,-4(%r19)
	b,n .L510
.L511:
	cmpb,*=,n %r0,%r24,.L510
	shladd,l %r31,2,%r25,%r19
	shladd,l %r31,2,%r26,%r31
.L513:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	copy %r19,%r20
	ldo -4(%r19),%r19
	cmpb,*<> %r20,%r25,.L513
	ldo -4(%r31),%r31
.L510:
	bve,n (%r2)
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
	cmpb,*= %r0,%r24,.L522
	ldo -1(%r24),%r31
	copy %r26,%r19
.L523:
	ldo 4(%r19),%r19
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L523
	stw %r25,-4(%r19)
.L522:
	bve,n (%r2)
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
	cmpb,*<<= %r25,%r26,.L529
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L528
	add,l %r25,%r24,%r25
.L531:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L531
	stb,mb %r31,-1(%r25)
.L528:
	bve,n (%r2)
.L529:
	cmpb,*= %r25,%r26,.L528
	nop
	cmpb,*= %r0,%r24,.L528
	add,l %r26,%r24,%r24
.L532:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
	ldb -1(%r26),%r28
	cmpb,*<> %r26,%r24,.L532
	stb %r28,-1(%r25)
	b,n .L528
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
	extrd,u %r26,63,16,%r26
	extrw,u %r25,31,4,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r25
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
	extrd,u %r26,63,16,%r26
	extrw,u %r25,31,4,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	sub %r0,%r25,%r25
	extrw,u %r25,31,4,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r26
	or %r28,%r26,%r28
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
	extrd,u %r26,63,8,%r26
	extrw,u %r25,31,3,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r25
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
	extrd,u %r26,63,8,%r26
	extrw,u %r25,31,3,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	sub %r0,%r25,%r25
	extrw,u %r25,31,3,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r26
	or %r28,%r26,%r28
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
	extrd,s %r26,63,32,%r26
	ldi 0,%r19
	ldi 32,%r20
	mtsar %r19
.L560:
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	ldo 1(%r19),%r31
	cmpb,*<> %r0,%r28,.L559
	extrd,u %r31,63,32,%r19
	cmpb,<> %r20,%r31,.L560
	mtsar %r19
	b .L556
	ldi 0,%r28
.L559:
	extrd,s %r31,63,32,%r28
.L556:
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
	cmpib,= 0,%r26,.L564
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L562
	ldi 1,%r28
.L563:
	extrw,s %r19,30,31,%r31
	extrd,s %r31,63,32,%r19
	ldo 1(%r28),%r28
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L563
	extrd,s %r28,63,32,%r28
.L562:
	bve,n (%r2)
.L564:
	b .L562
	ldi 0,%r28
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
	b .L568
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L569
	ldi 0,%r28
.L569:
	extrd,s %r28,63,32,%r28
.L568:
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
	b .L572
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L573
	ldi 0,%r28
.L573:
	extrd,s %r28,63,32,%r28
.L572:
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
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r6
	copy %r25,%r5
	addil LT'.LC12,%r27
	ldd RT'.LC12(%r1),%r28
	ldd 0(%r28),%r24
	ldd 8(%r28),%r23
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r31
	cmpb,*> %r0,%r31,.L576
	ldi 1,%r28
	ldi 1,%r3
	addil LT'.LC13,%r27
	ldd RT'.LC13(%r1),%r28
	ldd 0(%r28),%r24
	ldd 8(%r28),%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __gttf2,%r2
	copy %r5,%r25
	cmpclr,*< %r0,%r28,%r0
	b,n .L579
.L577:
	extrd,s %r3,63,32,%r28
.L576:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L579:
	b .L577
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
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	std %r25,-136(%r30)
	fldd -136(%r30),%fr22
	ldo -48(%r30),%r29
	b,l __extenddftf2,%r2
	fcnv,w,dbl %fr22R,%fr4
	std %r28,0(%r3)
	std %r29,8(%r3)
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
	b .L582
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b,n .L582
	cmpib,> 0,%r25,.L593
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L585
	fldw 0(%r28),%fr22R
.L593:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L585
	fldw 0(%r28),%fr22R
.L594:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L582
	extrd,s %r28,63,32,%r25
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L585:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L594
	extrw,u %r25,0,1,%r28
	b .L594
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L582:
	bve,n (%r2)
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
	b .L596
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b,n .L596
	cmpib,> 0,%r25,.L607
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L599
	fldd 0(%r28),%fr22
.L607:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L599
	fldd 0(%r28),%fr22
.L608:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L596
	extrd,s %r28,63,32,%r25
	fmpy,dbl %fr22,%fr22,%fr22
.L599:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L608
	extrw,u %r25,0,1,%r28
	b .L608
	fmpy,dbl %fr4,%fr22,%fr4
.L596:
	bve,n (%r2)
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
	std,ma %r9,176(%r30)
	std %r8,-168(%r30)
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r6
	copy %r25,%r5
	copy %r26,%r8
	copy %r25,%r7
	extrd,s %r24,63,32,%r3
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L610
	copy %r4,%r27
	copy %r6,%r24
	copy %r5,%r23
	copy %r6,%r26
	copy %r5,%r25
	ldo -48(%r30),%r29
	b,l __addtf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r6,%r24
	copy %r5,%r23
	copy %r28,%r26
	copy %r29,%r25
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L610
	copy %r4,%r27
	cmpib,> 0,%r3,.L623
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r5
	ldi 0,%r6
.L612:
	b .L614
	ldo -48(%r30),%r9
.L623:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r5
	b .L612
	ldi 0,%r6
.L613:
	extrw,u %r3,0,1,%r31
.L624:
	add,l %r31,%r3,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L610
	extrd,s %r31,63,32,%r3
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	copy %r9,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r5
	copy %r29,%r6
.L614:
	extrw,u %r3,31,1,%r28
	cmpib,= 0,%r28,.L624
	extrw,u %r3,0,1,%r31
	copy %r5,%r24
	copy %r6,%r23
	copy %r8,%r26
	copy %r7,%r25
	copy %r9,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r8
	b .L613
	copy %r29,%r7
.L610:
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
	cmpb,*= %r0,%r24,.L626
	copy %r26,%r28
	add,l %r25,%r24,%r24
	copy %r26,%r31
.L627:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	ldb -1(%r25),%r20
	xor %r19,%r20,%r19
	cmpb,*<> %r25,%r24,.L627
	stb %r19,-1(%r31)
.L626:
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
	cmpib,= 0,%r31,.L639
	copy %r26,%r28
	copy %r26,%r31
	ldb,mb 1(%r31),%r19
.L647:
	extrw,s %r19,31,8,%r19
	cmpib,<>,n 0,%r19,.L647
	ldb,mb 1(%r31),%r19
	b,n .L646
.L639:
	b .L646
	copy %r26,%r31
.L637:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldo -1(%r24),%r24
.L646:
	cmpb,*=,n %r0,%r24,.L641
	ldb 0(%r25),%r19
	extrd,s %r19,63,8,%r20
	cmpb,*<> %r0,%r20,.L637
	stb %r19,0(%r31)
	cmpclr,*= %r0,%r24,%r0
	b,n .L638
.L641:
	stb %r24,0(%r31)
.L638:
	bve,n (%r2)
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
	cmpb,*= %r28,%r25,.L648
	add,l %r26,%r28,%r31
.L655:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L651
.L648:
	bve,n (%r2)
.L651:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L655
	add,l %r26,%r28,%r31
	b,n .L648
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
	cmpb,*= %r0,%r20,.L661
	copy %r26,%r28
	copy %r25,%r19
.L660:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L663
	cmpb,<> %r20,%r31,.L660
	ldo 1(%r19),%r19
.L658:
	bve,n (%r2)
.L663:
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L660
	copy %r25,%r19
.L661:
	b .L658
	ldi 0,%r28
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
	b .L666
	ldi 0,%r28
.L665:
	cmpb,*= %r0,%r31,.L669
	ldo 1(%r26),%r26
.L666:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r25,%r31,.L665
	copy %r26,%r28
	b,n .L665
.L669:
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
	copy %r26,%r28
	ldb 0(%r25),%r23
	extrd,s %r23,63,8,%r23
	cmpb,*= %r0,%r23,.L671
	copy %r25,%r19
	ldb,mb 1(%r19),%r31
.L696:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L696
	ldb,mb 1(%r19),%r31
.L671:
	cmpb,*= %r25,%r19,.L673
	sub %r19,%r25,%r31
	ldo -1(%r25),%r24
	b .L680
	add,l %r24,%r31,%r24
.L679:
	cmpb,*=,n %r0,%r28,.L673
	ldb 0(%r28),%r20
	copy %r25,%r21
	cmpb,*= %r0,%r20,.L676
	copy %r28,%r22
.L675:
	ldb 0(%r21),%r31
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	xor %r31,%r20,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	and %r19,%r31,%r19
	extrw,s,< %r19,24,1,%r0
	b,n .L676
	cmpb,*=,n %r24,%r21,.L676
	ldb,mb 1(%r22),%r20
	extrd,u %r20,63,8,%r20
	cmpb,*<> %r0,%r20,.L675
	ldo 1(%r21),%r21
.L676:
	ldb 0(%r21),%r31
	cmpb,=,n %r20,%r31,.L673
	ldo 1(%r28),%r28
.L680:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,= %r23,%r31,.L679
	nop
	cmpb,*<> %r0,%r31,.L680
	ldo 1(%r28),%r28
	ldi 0,%r28
.L673:
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
	b,n .L704
	fcmp,dbl,!> %fr4,%fr0
.L706:
	ftest
	b,n .L705
	b,n .L701
.L705:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L700
.L701:
	bve,n (%r2)
.L704:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L700
	b .L706
	fcmp,dbl,!> %fr4,%fr0
.L700:
	b .L701
	fneg,dbl %fr4,%fr4
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
	cmpb,*= %r0,%r23,.L730
	copy %r26,%r28
	cmpb,*>>,n %r23,%r25,.L717
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r25
	cmpb,*<<,n %r25,%r26,.L717
	ldb 0(%r24),%r29
	b .L714
	extrd,s %r29,63,8,%r29
.L729:
	cmpclr,*<> %r0,%r31,%r0
	b,n .L707
	cmpclr,<> %r21,%r22,%r0
	b,n .L707
.L709:
	cmpb,*<< %r25,%r26,.L730
	ldi 0,%r28
.L714:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	copy %r26,%r28
	cmpb,<> %r29,%r31,.L709
	ldo 1(%r26),%r26
	ldo -1(%r23),%r31
	cmpb,*= %r0,%r31,.L707
	ldo 1(%r24),%r19
	copy %r26,%r20
.L710:
	ldb 0(%r20),%r22
	ldb 0(%r19),%r21
	cmpb,<> %r21,%r22,.L729
	ldo 1(%r20),%r20
	ldo -1(%r31),%r31
	cmpb,*<> %r0,%r31,.L710
	ldo 1(%r19),%r19
.L707:
.L730:
	bve,n (%r2)
.L717:
	b .L707
	ldi 0,%r28
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
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	cmpb,*= %r0,%r24,.L732
	copy %r24,%r3
	ldo -48(%r30),%r29
	b,l memmove,%r2
	nop
.L732:
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
	.word	1072693248
	.word	0
	.align 8
.LC29:
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
	b,n .L749
	ldi 0,%r19
.L737:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L750
	ldi 0,%r28
	b .L764
	fcmp,dbl,= %fr4,%fr0
.L750:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr23
	fldd 0(%r31),%fr22
.L741:
	ldo 1(%r28),%r28
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L741
	extrd,s %r28,63,32,%r28
.L742:
.L765:
	cmpb,*= %r0,%r19,.L746
	stw %r28,0(%r25)
	fneg,dbl %fr4,%fr4
.L746:
	bve,n (%r2)
.L749:
	fneg,dbl %fr4,%fr4
	b .L737
	ldi 1,%r19
.L764:
	ftest
	b .L754
	addil LT'.LC29,%r27
	b .L742
	ldi 0,%r28
.L754:
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L755
	ldi 0,%r28
	b,n .L765
.L755:
.L745:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L745
	extrd,s %r28,63,32,%r28
	b,n .L742
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
	cmpb,*= %r0,%r26,.L766
	ldi 0,%r28
.L768:
	extrd,s %r26,63+1-1,1,%r31
	and %r31,%r25,%r31
	add,l %r28,%r31,%r28
	extrd,u %r26,62,63,%r26
	cmpb,*<> %r0,%r26,.L768
	depd,z %r25,62,63,%r25
.L766:
	bve,n (%r2)
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
	cmpb,>> %r26,%r25,.L772
	ldi 1,%r19
	b .L776
	ldi 0,%r20
.L790:
	cmpiclr,<> 0,%r21,%r0
	b,n .L773
.L772:
	cmpib,>,n 0,%r31,.L773
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r20,%r28,.L790
	extrd,u %r21,63,32,%r19
.L773:
	cmpb,*= %r0,%r19,.L777
	ldi 0,%r20
	b,n .L776
.L779:
	extrd,u %r19,62,63,%r19
.L791:
	cmpb,*= %r0,%r19,.L777
	extrd,u %r31,62,63,%r31
.L776:
	cmpb,>>,n %r31,%r28,.L791
	extrd,u %r19,62,63,%r19
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	b .L779
	extrd,u %r20,63,32,%r20
.L777:
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
	std,ma %r4,128(%r30)
	extrd,s %r26,63,8,%r26
	extrw,s %r26,24,25,%r31
	extrd,s %r31,63,8,%r31
	cmpb,= %r31,%r26,.L794
	xor %r26,%r31,%r28
	depw,z %r28,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
.L793:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L794:
	b .L793
	ldi 7,%r28
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
	std,ma %r4,128(%r30)
	copy %r26,%r28
	extrd,s %r26,0,1,%r31
	cmpb,*= %r31,%r28,.L797
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L796:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L797:
	b .L796
	ldi 63,%r28
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
	extrd,u %r25,63,32,%r25
	cmpib,= 0,%r26,.L799
	ldi 0,%r28
.L800:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L800
	extrd,u %r25,63,32,%r25
.L799:
	bve,n (%r2)
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
	extrd,u %r24,63,32,%r23
	extrd,u %r24,32+29-1,29,%r20
	copy %r24,%r21
	depwi 0,31,3,%r21
	cmpb,*>> %r25,%r26,.L804
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpb,*<<,n %r28,%r26,.L804
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L803
	extrd,u %r24,63,32,%r24
.L810:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L810
	stb %r31,0(%r28)
	b,n .L803
.L804:
	cmpb,*=,n %r0,%r20,.L807
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L808:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L808
	ldo 8(%r31),%r31
.L807:
	cmpb,>>=,n %r21,%r23,.L803
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	add,l %r25,%r22,%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
.L809:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L809
	ldo 1(%r26),%r26
.L803:
	bve,n (%r2)
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
	extrd,u %r24,63,32,%r21
	cmpb,*>> %r25,%r26,.L819
	extrd,u %r24,32+31-1,31,%r20
	add,l %r25,%r21,%r28
	cmpb,*<<,n %r28,%r26,.L819
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r21,.L818
	extrd,u %r24,63,32,%r24
.L824:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L824
	stb %r31,0(%r28)
	b,n .L818
.L819:
	cmpb,*=,n %r0,%r20,.L822
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,1,%r25,%r20
.L823:
	ldh 0(%r28),%r19
	sth %r19,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r20,%r28,.L823
	ldo 2(%r31),%r31
.L822:
	extrw,u %r21,31,1,%r21
	cmpib,= 0,%r21,.L818
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	ldb 0(%r25),%r28
	add,l %r26,%r24,%r26
	stb %r28,0(%r26)
.L818:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r24,63,32,%r23
	extrd,u %r24,32+30-1,30,%r20
	copy %r24,%r21
	depwi 0,31,2,%r21
	cmpb,*>> %r25,%r26,.L835
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpb,*<<,n %r28,%r26,.L835
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L834
	extrd,u %r24,63,32,%r24
.L841:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L841
	stb %r31,0(%r28)
	b,n .L834
.L835:
	cmpb,*=,n %r0,%r20,.L838
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,2,%r25,%r20
.L839:
	ldw 0(%r28),%r19
	stw %r19,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r20,%r28,.L839
	ldo 4(%r31),%r31
.L838:
	cmpb,>>=,n %r21,%r23,.L834
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	add,l %r25,%r22,%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
.L840:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L840
	ldo 1(%r26),%r26
.L834:
	bve,n (%r2)
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
	extrd,s %r29,63,32,%r28
	ldd -16(%r30),%r2
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
	extrd,u %r29,63,32,%r28
	ldd -16(%r30),%r2
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
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	ldi 16,%r19
.L857:
	ldo 16(%r28),%r31
	mtsar %r31
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L856
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L857
	extrd,s %r31,63,32,%r28
.L856:
	bve,n (%r2)
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
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	ldi 16,%r19
.L861:
	mtsarcm %r28
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L860
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L861
	extrd,s %r31,63,32,%r28
.L860:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC32:
	.word	1191182336
	.text
	.align 8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	addil LT'.LC32,%r27
	ldd RT'.LC32(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!>= %fr4R,%fr22R
	ftest
	b .L867
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
.L863:
	bve (%r2)
	ldo -64(%r30),%r30
.L867:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	b .L863
	add,l %r28,%r31,%r28
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
	extrd,u %r26,63,16,%r26
	ldi 0,%r20
	copy %r20,%r31
	ldi 16,%r21
.L870:
	mtsarcm %r31
	extrw,s %r26,%sar,32,%r28
	extrw,u %r28,31,1,%r28
	add,l %r28,%r20,%r28
	extrd,s %r28,63,32,%r20
	ldo 1(%r31),%r19
	cmpb,<> %r21,%r19,.L870
	extrd,s %r19,63,32,%r31
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
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	copy %r28,%r19
	ldi 16,%r20
.L873:
	mtsarcm %r19
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r19),%r31
	cmpb,<> %r20,%r31,.L873
	extrd,s %r31,63,32,%r19
	bve,n (%r2)
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
	extrd,u %r25,63,32,%r25
	cmpib,= 0,%r26,.L876
	ldi 0,%r28
.L877:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L877
	extrd,u %r25,63,32,%r25
.L876:
	bve,n (%r2)
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
	extrd,u %r25,63,32,%r25
	cmpib,<> 0,%r26,.L886
	ldi 0,%r28
	b,n .L881
.L882:
	and %r19,%r31,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r25,62,63,%r25
.L886:
	cmpb,*<> %r0,%r25,.L882
	extrw,s %r25,31+1-1,1,%r19
.L881:
	bve,n (%r2)
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
	cmpb,>> %r26,%r25,.L888
	ldi 1,%r19
	b .L892
	ldi 0,%r20
.L906:
	cmpiclr,<> 0,%r21,%r0
	b,n .L889
.L888:
	cmpib,>,n 0,%r31,.L889
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r20,%r28,.L906
	extrd,u %r21,63,32,%r19
.L889:
	cmpb,*= %r0,%r19,.L893
	ldi 0,%r20
	b,n .L892
.L895:
	extrd,u %r19,62,63,%r19
.L907:
	cmpb,*= %r0,%r19,.L893
	extrd,u %r31,62,63,%r31
.L892:
	cmpb,>>,n %r31,%r28,.L907
	extrd,u %r19,62,63,%r19
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	b .L895
	extrd,u %r20,63,32,%r20
.L893:
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
	b,n .L911
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L910
	ldi 1,%r28
	ldi 0,%r28
.L910:
	extrd,s %r28,63,32,%r28
.L909:
	bve,n (%r2)
.L911:
	b .L909
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
	b,n .L915
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L914
	ldi 1,%r28
	ldi 0,%r28
.L914:
	extrd,s %r28,63,32,%r28
.L913:
	bve,n (%r2)
.L915:
	b .L913
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
	extrd,u %r26,31,32,%r28
	extrd,u %r25,31,32,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	std %r28,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r25
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r25,%r28
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
	extrd,u %r26,31,32,%r28
	extrd,u %r25,31,32,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	std %r28,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r25
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r25,%r28
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
	extrd,s %r25,63,32,%r20
	cmpib,> 0,%r25,.L930
	ldi 0,%r29
.L919:
	cmpb,*= %r0,%r20,.L925
	ldi 1,%r19
	ldi 0,%r28
	ldi 1,%r23
	ldi 31,%r22
	b .L922
	ldi 0,%r24
.L930:
	sub %r0,%r20,%r20
	extrd,s %r20,63,32,%r20
	b .L919
	ldi 1,%r29
.L921:
	and %r31,%r21,%r31
	extrd,u %r31,63,8,%r31
	ldo 1(%r19),%r19
	cmpb,*= %r0,%r31,.L920
	extrd,u %r19,63,8,%r19
.L922:
	extrw,s %r20,31+1-1,1,%r31
	and %r31,%r26,%r31
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	add,l %r26,%r26,%r26
	extrd,s %r26,63,32,%r26
	extrw,s %r20,30,31,%r31
	extrd,s %r31,63,32,%r20
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,u %r31,0,1,%r31
	cmpb,>>= %r22,%r19,.L921
	copy %r23,%r21
	b .L921
	copy %r24,%r21
.L925:
	ldi 0,%r28
.L920:
	cmpb,*=,n %r0,%r29,.L923
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L923:
	bve,n (%r2)
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
	ldi 0,%r22
	cmpclr,*<= %r22,%r26,%r0
	b,n .L954
.L932:
	cmpb,*> %r0,%r25,.L955
	ldi 1,%r28
.L933:
	extrd,u %r26,63,32,%r20
	extrd,u %r25,63,32,%r31
	cmpb,>> %r26,%r25,.L934
	ldi 1,%r19
	b .L938
	ldi 0,%r28
.L954:
	sub %r0,%r26,%r26
	b .L932
	ldi 1,%r22
.L955:
	sub %r0,%r25,%r25
	xor %r22,%r28,%r22
	b .L933
	extrd,s %r22,63,32,%r22
.L956:
	cmpiclr,<> 0,%r21,%r0
	b,n .L935
.L934:
	cmpib,>,n 0,%r31,.L935
	add,l %r31,%r31,%r28
	extrd,u %r28,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r28,%r20,.L956
	extrd,u %r21,63,32,%r19
.L935:
	cmpb,*= %r0,%r19,.L939
	ldi 0,%r28
	b,n .L938
.L957:
	extrd,u %r20,63,32,%r20
	or %r19,%r28,%r28
	extrd,u %r19,62,63,%r19
.L958:
	cmpb,*= %r0,%r19,.L939
	extrd,u %r31,62,63,%r31
.L938:
	cmpb,>>,n %r31,%r20,.L958
	extrd,u %r19,62,63,%r19
	b .L957
	sub %r20,%r31,%r20
.L939:
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r22,%r0
	copy %r31,%r28
	bve,n (%r2)
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
	cmpclr,*<= %r22,%r26,%r0
	b,n .L982
.L960:
	extrd,u %r26,63,32,%r28
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	extrd,u %r25,63,32,%r31
	cmpb,>> %r26,%r25,.L961
	ldi 1,%r19
	b,n .L977
.L982:
	sub %r0,%r26,%r26
	b .L960
	ldi 1,%r22
.L983:
	cmpiclr,<> 0,%r21,%r0
	b,n .L981
.L961:
	cmpib,> 0,%r31,.L981
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,>>= %r20,%r28,.L981
	extrd,u %r21,63,32,%r19
	b,n .L983
.L985:
	extrd,u %r28,63,32,%r28
	extrd,u %r19,62,63,%r19
.L986:
	extrd,u %r31,62,63,%r31
.L981:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L984
.L977:
	cmpb,>>,n %r31,%r28,.L986
	extrd,u %r19,62,63,%r19
	b .L985
	sub %r28,%r31,%r28
.L984:
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
	extrd,u %r26,63,16,%r28
	extrd,u %r25,63,16,%r25
	cmpb,>> %r28,%r25,.L988
	ldi 1,%r19
	b .L992
	ldi 0,%r31
.L1006:
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,s,< %r31,16,1,%r0
	b,n .L989
.L988:
	extrw,s %r25,31,16,%r31
	cmpib,>,n 0,%r31,.L989
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	add,l %r19,%r19,%r31
	cmpb,<< %r25,%r28,.L1006
	extrd,u %r31,63,16,%r19
.L989:
	cmpb,*= %r0,%r19,.L993
	ldi 0,%r31
	b,n .L992
.L995:
	extrd,u %r19,62,63,%r19
.L1007:
	cmpb,*= %r0,%r19,.L993
	extrd,u %r25,62,63,%r25
.L992:
	cmpb,>>,n %r25,%r28,.L1007
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	or %r19,%r31,%r31
	b .L995
	extrd,u %r31,63,16,%r31
.L993:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
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
	cmpb,*>> %r26,%r25,.L1009
	depdi,z 1,32,4,%r20
	b .L1013
	ldi 0,%r19
.L1027:
	cmpb,*= %r0,%r31,.L1014
	ldi 0,%r19
.L1009:
	and %r25,%r20,%r19
	cmpb,*<>,n %r0,%r19,.L1010
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L1027
	depd,z %r31,62,63,%r31
.L1010:
	cmpb,*= %r0,%r31,.L1014
	ldi 0,%r19
	b,n .L1013
.L1016:
	extrd,u %r31,62,63,%r31
.L1028:
	cmpb,*= %r0,%r31,.L1014
	extrd,u %r25,62,63,%r25
.L1013:
	cmpb,*>>,n %r25,%r28,.L1028
	extrd,u %r31,62,63,%r31
	sub %r28,%r25,%r28
	b .L1016
	or %r19,%r31,%r19
.L1014:
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
	bb,>= %r25,26,.L1030
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	ldi 0,%r31
.L1031:
	depd,z %r26,31,32,%r26
	or %r26,%r31,%r28
.L1029:
	bve,n (%r2)
.L1030:
	cmpb,*= %r0,%r28,.L1033
	extrd,u %r26,63,32,%r19
	subi 31,%r28,%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	subi 32,%r28,%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r19
	extrd,s %r26,0+32-1,32,%r26
	mtsar %r20
	depw,z %r26,%sar,32,%r26
	or %r19,%r26,%r19
	b .L1031
	extrd,s %r19,63,32,%r26
.L1033:
	b .L1029
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
	bb,>= %r24,25,.L1035
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	depd,z %r25,%sar,64,%r28
	ldi 0,%r29
.L1037:
	bve,n (%r2)
.L1035:
	cmpb,*= %r0,%r28,.L1038
	subi 63,%r28,%r31
	mtsar %r31
	depd,z %r25,%sar,64,%r29
	subi 64,%r28,%r28
	mtsar %r28
	shrpd %r0,%r25,%sar,%r25
	mtsar %r31
	depd,z %r26,%sar,64,%r28
	b .L1037
	or %r25,%r28,%r28
.L1038:
	copy %r26,%r28
	b .L1037
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
	bb,>= %r25,26,.L1040
	extrd,s %r25,63,32,%r31
	extrd,s %r26,0+32-1,32,%r26
	extrw,s %r26,0,1,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	extrw,s %r26,%sar,32,%r26
	extrd,u %r26,63,32,%r26
.L1041:
	depd,z %r28,31,32,%r28
	or %r28,%r26,%r28
.L1039:
	bve,n (%r2)
.L1040:
	cmpb,*= %r0,%r31,.L1043
	extrd,s %r26,0+32-1,32,%r19
	mtsarcm %r31
	extrw,s %r19,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	ldo -1(%r31),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r19
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	or %r19,%r26,%r19
	b .L1041
	extrd,u %r19,63,32,%r26
.L1043:
	b .L1039
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
	bb,>= %r24,25,.L1045
	extrd,s %r24,63,32,%r31
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	extrd,s %r26,%sar,64,%r29
.L1047:
	bve,n (%r2)
.L1045:
	cmpb,*= %r0,%r31,.L1048
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L1047
	or %r26,%r29,%r29
.L1048:
	copy %r26,%r28
	b .L1047
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
	depwi,z -1,31,16,%r31
	cmpclr,<< %r31,%r26,%r31
	ldi 1,%r31
	depw,z %r31,27,28,%r31
	subi 16,%r31,%r28
	mtsar %r28
	shrpw %r0,%r26,%sar,%r26
	depwi,z -1,23,8,%r28
	and %r26,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,28,29,%r28
	subi 8,%r28,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r31
	ldi 240,%r28
	and %r26,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,29,30,%r28
	subi 4,%r28,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	ldi 12,%r31
	and %r26,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	add,l %r31,%r31,%r31
	subi 2,%r31,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	bb,< %r26,30,.L1054
	ldi 0,%r19
	subi 2,%r26,%r19
.L1054:
	add,l %r31,%r28,%r31
	add,l %r19,%r31,%r28
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
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	or,*>= %r0,%r26,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrd,u %r31,0,1,%r3
	cmpiclr,*> 0,%r31,%r31
	ldi -1,%r31
	and %r31,%r26,%r31
	cmpiclr,*<> 0,%r26,%r26
	copy %r25,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	or %r31,%r26,%r26
	depw,z %r3,25,26,%r3
	add,l %r3,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
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
	b,n .L1061
	cmpb,< %r28,%r31,.L1062
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1061
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L1062
	ldi 1,%r28
	b,n .L1058
.L1061:
	ldi 0,%r28
.L1058:
	bve,n (%r2)
.L1062:
	b .L1058
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
	b,n .L1067
	cmpb,< %r28,%r31,.L1068
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1067
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L1068
	ldi 1,%r28
	b .L1069
	ldo -1(%r28),%r28
.L1067:
	ldi 0,%r28
.L1064:
	ldo -1(%r28),%r28
.L1069:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1068:
	b .L1064
	ldi 2,%r28
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
	cmpb,*> %r24,%r26,.L1076
	ldi 0,%r28
	cmpb,*< %r24,%r26,.L1076
	ldi 2,%r28
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1074
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	b .L1071
	ldo 1(%r28),%r28
.L1074:
	ldi 0,%r28
.L1071:
.L1076:
	bve,n (%r2)
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
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r31
	extrw,u %r26,31,4,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,29,30,%r28
	mtsar %r28
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	extrw,u %r26,31,2,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	add,l %r31,%r31,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,2,%r26
	uaddcm %r0,%r26,%r19
	extrw,u %r26,30,31,%r26
	subi 2,%r26,%r26
	extrw,s %r19,31+1-1,1,%r19
	and %r19,%r26,%r19
	add,l %r31,%r28,%r31
	add,l %r19,%r31,%r28
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
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	or,*>= %r0,%r25,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrd,u %r31,0,1,%r3
	cmpiclr,*= 0,%r25,%r0
	ldi 0,%r26
	cmpiclr,*> 0,%r31,%r31
	ldi -1,%r31
	and %r31,%r25,%r25
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	or %r26,%r25,%r26
	depw,z %r3,25,26,%r3
	add,l %r3,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
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
	cmpb,*<> %r0,%r25,.L1080
	ldo -48(%r30),%r29
	ldi 0,%r28
	cmpb,*= %r28,%r26,.L1084
	ldd -144(%r30),%r2
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	b .L1081
	extrd,s %r28,63,32,%r28
.L1080:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L1081:
	ldd -144(%r30),%r2
.L1084:
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
	bb,>= %r25,26,.L1086
	extrd,s %r25,63,32,%r31
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	ldi 0,%r28
.L1087:
	depd,z %r28,31,32,%r28
	or %r28,%r26,%r28
.L1085:
	bve,n (%r2)
.L1086:
	cmpb,*= %r0,%r31,.L1089
	extrd,u %r26,0+32-1,32,%r19
	mtsar %r31
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	ldo -1(%r31),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r19
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	or %r19,%r26,%r19
	b .L1087
	extrd,u %r19,63,32,%r26
.L1089:
	b .L1085
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
	bb,>= %r24,25,.L1091
	extrd,s %r24,63,32,%r31
	mtsar %r24
	shrpd %r0,%r26,%sar,%r29
	ldi 0,%r28
.L1093:
	bve,n (%r2)
.L1091:
	cmpb,*= %r0,%r31,.L1094
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L1093
	or %r26,%r29,%r29
.L1094:
	copy %r26,%r28
	b .L1093
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
	extrw,u %r26,31,16,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	extrw,u %r25,31,16,%r20
	std %r20,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	extrw,u %r28,15,16,%r31
	extrw,u %r26,15,16,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr24R,%fr22R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r31,%r19,%r31
	extrw,u %r31,31,16,%r19
	extrw,u %r25,15,16,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r19,%r20,%r19
	extrw,u %r28,31,16,%r28
	depw,z %r19,15,16,%r20
	add,l %r28,%r20,%r20
	ldi 0,%r28
	depd %r20,32+32-1,32,%r28
	extrw,u %r31,15,16,%r31
	xmpyu %fr22R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r31,%r20,%r31
	extrw,u %r19,15,16,%r19
	add,l %r31,%r19,%r31
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
	extrw,u %r25,31,16,%r20
	std %r20,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	extrw,u %r28,15,16,%r31
	extrw,u %r26,0+16-1,16,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr24R,%fr22R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r31,%r20,%r31
	extrw,u %r31,31,16,%r19
	extrw,u %r25,0+16-1,16,%r20
	std %r20,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r19,%r20,%r19
	extrw,u %r28,31,16,%r28
	depw,z %r19,15,16,%r20
	add,l %r28,%r20,%r20
	ldi 0,%r28
	depd %r20,32+32-1,32,%r28
	extrw,u %r31,15,16,%r31
	xmpyu %fr22R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r31,%r20,%r31
	extrw,u %r19,15,16,%r19
	add,l %r31,%r19,%r31
	depd %r31,0+32-1,32,%r28
	extrd,s %r25,0+32-1,32,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr23
	std %r26,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr22
	extrd,s %r28,0+32-1,32,%r31
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r31,%r19,%r31
	extrd,s %r26,0+32-1,32,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r26
	add,l %r31,%r26,%r31
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
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r29
	extrd,u %r29,31,32,%r31
	extrd,u %r26,31,32,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	add,l %r28,%r31,%r28
	extrd,u %r28,63,32,%r31
	extrd,u %r25,31,32,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	std %r26,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr22R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r26
	add,l %r26,%r31,%r26
	extrd,u %r29,63,32,%r29
	depd,z %r26,31,32,%r31
	extrd,u %r28,31,32,%r28
	xmpyu %fr23R,%fr22R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r28,%r19,%r28
	extrd,u %r26,31,32,%r26
	add,l %r28,%r26,%r28
	add,l %r29,%r31,%r29
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
	fldd -56(%r30),%fr25
	std %r23,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr25R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	extrd,u %r19,31,32,%r31
	extrd,u %r25,31,32,%r20
	std %r20,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr24R,%fr22R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	add,l %r28,%r31,%r28
	extrd,u %r28,63,32,%r20
	extrd,u %r23,31,32,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr25R,%fr23R,%fr26
	fstd %fr26,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r31,%r20,%r31
	extrd,u %r19,63,32,%r19
	depd,z %r31,31,32,%r29
	extrd,u %r28,31,32,%r28
	xmpyu %fr22R,%fr23R,%fr26
	fstd %fr26,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r28,%r20,%r28
	extrd,u %r31,31,32,%r31
	add,l %r28,%r31,%r28
	extrd,u %r24,31,32,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr26
	std %r24,-56(%r30)
	fldd -56(%r30),%fr27
	xmpyu %fr27R,%fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	xmpyu %fr26R,%fr25R,%fr22
	fcpy,dbl %fr27,%fr26
	xmpyu %fr26R,%fr25R,%fr25
	fstd %fr25,-56(%r30)
	ldd -56(%r30),%r24
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r31,%r20,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r24,%r31
	add,l %r31,%r28,%r31
	extrd,u %r26,31,32,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	std %r26,-56(%r30)
	fldd -56(%r30),%fr25
	xmpyu %fr25R,%fr23R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	xmpyu %fr22R,%fr24R,%fr22
	fcpy,dbl %fr25,%fr26
	xmpyu %fr26R,%fr24R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r26
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r28,%r20,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r26,%r28
	add,l %r31,%r28,%r28
	add,l %r19,%r29,%r29
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
	extrw,u %r26,27,28,%r31
	xor %r31,%r26,%r31
	extrw,u %r31,31,4,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
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
	extrw,u %r31,31,4,%r31
	ldil L'32768,%r28
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
	extrw,u %r26,27,28,%r31
	xor %r31,%r26,%r31
	extrw,u %r31,31,4,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r31
	shrpw %r0,%r28,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.section	.rodata.cst8
	.align 8
.LC34:
	.dword	6148914691236517205
	.align 8
.LC35:
	.dword	3689348814741910323
	.align 8
.LC36:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,62,63,%r28
	addil LT'.LC34,%r27
	ldd RT'.LC34(%r1),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r28
	sub %r26,%r28,%r26
	extrd,u %r26,61,62,%r31
	addil LT'.LC35,%r27
	ldd RT'.LC35(%r1),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r31
	and %r26,%r28,%r26
	add,l %r31,%r26,%r31
	extrd,u %r31,59,60,%r28
	add,l %r28,%r31,%r28
	addil LT'.LC36,%r27
	ldd RT'.LC36(%r1),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r28
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
	extrw,u %r26,0+31-1,31,%r28
	ldil L'1431650304,%r31
	ldo 5461(%r31),%r31
	and %r28,%r31,%r28
	sub %r26,%r28,%r26
	extrw,u %r26,29,30,%r31
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r31,%r28,%r31
	and %r26,%r28,%r26
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
.LC40:
	.dword	6148914691236517205
	.align 8
.LC41:
	.dword	3689348814741910323
	.align 8
.LC42:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r25,%r29
	shrpd %r26,%r25,1,%r31
	extrd,u %r26,62,63,%r22
	addil LT'.LC40,%r27
	ldd RT'.LC40(%r1),%r19
	ldd 0(%r19),%r21
	and %r22,%r21,%r19
	and %r31,%r21,%r20
	sub %r29,%r20,%r29
	sub,db %r28,%r19,%r28
	copy %r28,%r21
	shrpd %r21,%r29,2,%r21
	extrd,u %r28,61,62,%r22
	addil LT'.LC41,%r27
	ldd RT'.LC41(%r1),%r31
	ldd 0(%r31),%r31
	and %r22,%r31,%r19
	and %r21,%r31,%r20
	and %r28,%r31,%r21
	and %r29,%r31,%r22
	add %r20,%r22,%r20
	add,dc %r19,%r21,%r19
	copy %r19,%r31
	depd,z %r31,3,4,%r31
	extrd,u %r20,59,60,%r29
	or %r31,%r29,%r29
	extrd,u %r19,59,60,%r28
	add %r29,%r20,%r29
	add,dc %r28,%r19,%r28
	addil LT'.LC42,%r27
	ldd RT'.LC42(%r1),%r31
	ldd 0(%r31),%r19
	and %r28,%r19,%r31
	and %r29,%r19,%r19
	add,l %r31,%r19,%r31
	extrd,u %r31,31,32,%r28
	add,l %r28,%r31,%r28
	extrw,u %r28,15,16,%r31
	add,l %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	add,l %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,8,%r28
	.EXIT
	.PROCEND
	.size	__popcountti2, .-__popcountti2
	.section	.rodata.cst8
	.align 8
.LC46:
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
	fcpy,dbl %fr4,%fr22
	extrd,s %r25,63,32,%r25
	copy %r25,%r31
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r19
	b .L1110
	fldd 0(%r19),%fr4
.L1116:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1109
	extrd,s %r28,63,32,%r31
	fmpy,dbl %fr22,%fr22,%fr22
.L1110:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L1116
	extrw,u %r31,0,1,%r28
	b .L1116
	fmpy,dbl %fr4,%fr22,%fr4
.L1109:
	cmpiclr,<= 0,%r25,%r0
	b,n .L1115
.L1107:
	bve,n (%r2)
.L1115:
	fldd 0(%r19),%fr22
	b .L1107
	fdiv,dbl %fr22,%fr4,%fr4
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC48:
	.word	1065353216
	.text
	.align 8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcpy,sgl %fr4R,%fr22R
	extrd,s %r25,63,32,%r25
	copy %r25,%r31
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r19
	b .L1120
	fldw 0(%r19),%fr4R
.L1126:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1119
	extrd,s %r28,63,32,%r31
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L1120:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L1126
	extrw,u %r31,0,1,%r28
	b .L1126
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L1119:
	cmpiclr,<= 0,%r25,%r0
	b,n .L1125
.L1117:
	bve,n (%r2)
.L1125:
	fldw 0(%r19),%fr22R
	b .L1117
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
	b,n .L1131
	cmpb,<< %r28,%r31,.L1132
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1131
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L1132
	ldi 1,%r28
	b,n .L1128
.L1131:
	ldi 0,%r28
.L1128:
	bve,n (%r2)
.L1132:
	b .L1128
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
	b,n .L1137
	cmpb,<< %r28,%r31,.L1138
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1137
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L1138
	ldi 1,%r28
	b .L1139
	ldo -1(%r28),%r28
.L1137:
	ldi 0,%r28
.L1134:
	ldo -1(%r28),%r28
.L1139:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1138:
	b .L1134
	ldi 2,%r28
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
	cmpb,*>> %r24,%r26,.L1146
	ldi 0,%r28
	cmpb,*<< %r24,%r26,.L1146
	ldi 2,%r28
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1144
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	b .L1141
	ldo 1(%r28),%r28
.L1144:
	ldi 0,%r28
.L1141:
.L1146:
	bve,n (%r2)
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
