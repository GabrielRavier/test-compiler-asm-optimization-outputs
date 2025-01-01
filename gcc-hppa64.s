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
	copy %r26,%r8
	copy %r25,%r12
	copy %r24,%r13
	copy %r23,%r7
	ldd 0(%r24),%r6
	cmpb,*= %r0,%r6,.L289
	copy %r22,%r9
	copy %r25,%r3
	ldi 0,%r5
	ldo -48(%r30),%r11
.L291:
	copy %r3,%r10
	copy %r3,%r25
	copy %r8,%r26
	copy %r11,%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	cmpb,*= %r0,%r28,.L288
	copy %r4,%r27
	ldo 1(%r5),%r5
	cmpb,*<> %r5,%r6,.L291
	add,l %r3,%r7,%r3
.L289:
	ldo 1(%r6),%r28
	std %r28,0(%r13)
	extrd,u %r7,31,32,%r26
	extrd,u %r6,31,32,%r28
	std %r28,-216(%r30)
	fldd -216(%r30),%fr22
	std %r6,-216(%r30)
	fldd -216(%r30),%fr23
	std %r26,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r26
	std %r7,-216(%r30)
	fldd -216(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r6,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-216(%r30)
	ldd -216(%r30),%r6
	fstd %fr22,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r26,%r28,%r26
	depd,z %r26,31,32,%r26
	add,l %r26,%r6,%r26
	copy %r7,%r24
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	add,l %r12,%r26,%r26
	copy %r28,%r10
.L288:
	copy %r10,%r28
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
	cmpb,*= %r0,%r9,.L300
	copy %r22,%r7
	copy %r25,%r3
	ldi 0,%r5
	ldo -48(%r30),%r11
.L302:
	copy %r3,%r10
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	copy %r27,%r4
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpb,*= %r0,%r28,.L299
	copy %r4,%r27
	ldo 1(%r5),%r5
	cmpb,*<> %r5,%r9,.L302
	add,l %r3,%r8,%r3
.L300:
	ldi 0,%r10
.L299:
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
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	b .L312
	ldo -48(%r30),%r6
.L313:
	ldo 1(%r3),%r3
.L312:
	ldb 0(%r3),%r5
	extrd,s %r5,63,8,%r5
	copy %r5,%r26
	copy %r6,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L313
	copy %r4,%r27
	ldi 43,%r31
	cmpb,= %r31,%r5,.L319
	ldi 45,%r31
	cmpb,<> %r31,%r5,.L315
	ldi 0,%r20
	ldi 1,%r20
.L314:
	ldo 1(%r3),%r3
.L315:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpiclr,>>= 9,%r19,%r0
	b,n .L317
.L316:
	shladd,l %r28,2,%r28,%r28 
	add,l %r28,%r28,%r28
	ldo -48(%r31),%r31
	extrw,s %r31,31,8,%r31
	sub %r28,%r31,%r28
	ldb,mb 1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,>>= 9,%r19,.L316
	extrd,s %r28,63,32,%r28
.L317:
	cmpb,*<> %r0,%r20,.L323
	ldd -160(%r30),%r2
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L323:
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L319:
	b .L314
	ldi 0,%r20
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 8
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	b .L325
	ldo -48(%r30),%r6
.L326:
	ldo 1(%r3),%r3
.L325:
	ldb 0(%r3),%r5
	extrd,s %r5,63,8,%r5
	copy %r5,%r26
	copy %r6,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L326
	copy %r4,%r27
	ldi 43,%r31
	cmpb,= %r31,%r5,.L327
	ldi 45,%r31
	cmpb,<>,n %r31,%r5,.L328
	ldi 1,%r28
.L327:
	ldo 1(%r3),%r3
.L328:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,<< 9,%r20,.L330
	ldi 0,%r19
	shladd,l %r19,2,%r19,%r19
.L335:
	depd,z %r19,62,63,%r19
	ldo -48(%r31),%r31
	extrd,s %r31,63,8,%r31
	sub %r19,%r31,%r19
	ldb,mb 1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,>>=,n 9,%r20,.L335
	shladd,l %r19,2,%r19,%r19
.L330:
	sub %r0,%r19,%r31
	cmpiclr,*= 0,%r28,%r0
	copy %r19,%r31
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	b .L337
	ldo -48(%r30),%r6
.L338:
	ldo 1(%r3),%r3
.L337:
	ldb 0(%r3),%r5
	extrd,s %r5,63,8,%r5
	copy %r5,%r26
	copy %r6,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L338
	copy %r4,%r27
	ldi 43,%r31
	cmpb,= %r31,%r5,.L339
	ldi 45,%r31
	cmpb,<>,n %r31,%r5,.L340
	ldi 1,%r28
.L339:
	ldo 1(%r3),%r3
.L340:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,<< 9,%r20,.L342
	ldi 0,%r19
	shladd,l %r19,2,%r19,%r19
.L347:
	depd,z %r19,62,63,%r19
	ldo -48(%r31),%r31
	extrd,s %r31,63,8,%r31
	sub %r19,%r31,%r19
	ldb,mb 1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,>>=,n 9,%r20,.L347
	shladd,l %r19,2,%r19,%r19
.L342:
	sub %r0,%r19,%r31
	cmpiclr,*= 0,%r28,%r0
	copy %r19,%r31
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
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
	cmpb,*= %r0,%r24,.L349
	copy %r22,%r8
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr14
	b .L352
	ldo -48(%r30),%r9
.L353:
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r5
.L350:
	cmpb,*= %r0,%r5,.L348
	ldi 0,%r3
.L352:
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
	cmpib,> 0,%r28,.L353
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L348
	fstd %fr13,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	b .L350
	uaddcm %r5,%r28,%r5
.L349:
	ldi 0,%r3
.L348:
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
	cmpib,= 0,%r24,.L359
	extrd,s %r24,63,32,%r5
	extrd,u %r23,31,32,%r28
	std %r28,-216(%r30)
	fldd -216(%r30),%fr13
	b .L362
	ldo -48(%r30),%r11
.L361:
	cmpib,= 0,%r6,.L359
	extrd,s %r6,63,32,%r5
.L362:
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
	cmpb,*= %r0,%r28,.L358
	copy %r4,%r27
	cmpib,>= 0,%r28,.L361
	nop
	fstd %fr12,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r7
	ldo -1(%r5),%r5
	extrd,s %r5,63,32,%r5
	b .L361
	extrw,s %r5,30,31,%r6
.L359:
	ldi 0,%r3
.L358:
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
	cmpb,= %r28,%r25,.L378
	extrd,u %r25,63,32,%r19
.L392:
	cmpb,*=,n %r0,%r28,.L378
	ldw,mb 4(%r26),%r31
	cmpb,<> %r19,%r31,.L392
	extrd,u %r31,63,32,%r28
.L378:
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
	b,n .L394
.L410:
	cmpb,*=,n %r0,%r20,.L394
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
	cmpib,> 0,%r28,.L410
	extrd,u %r19,63,32,%r21
.L394:
	cmpb,>> %r20,%r21,.L397
	ldi -1,%r28
	cmpclr,>>= %r20,%r21,%r21
	ldi 1,%r21
	extrd,s %r21,63,32,%r28
.L397:
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
.L412:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L412
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
	cmpib,= 0,%r28,.L417
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L419:
	cmpib,<>,n 0,%r31,.L419
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
.L420:
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L417:
	b .L420
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
	b,n .L438
.L424:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L438:
	cmpb,*=,n %r0,%r24,.L428
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
	b,n .L423
	cmpb,*<>,n %r0,%r19,.L424
	ldo -1(%r24),%r24
.L423:
	cmpb,*=,n %r0,%r24,.L428
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,>> %r19,%r31,.L426
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	b .L426
	extrd,s %r31,63,32,%r28
.L428:
	ldi 0,%r28
.L426:
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
	cmpb,*= %r0,%r24,.L445
	extrd,u %r25,63,32,%r25
.L440:
	ldw 0(%r26),%r28
	cmpb,=,n %r25,%r28,.L448
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L440
	ldo 4(%r26),%r26
.L445:
	b .L439
	ldi 0,%r28
.L448:
	cmpb,*= %r0,%r24,.L445
	copy %r26,%r28
.L439:
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
	b,n .L462
.L452:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L462:
	cmpb,*=,n %r0,%r24,.L455
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L452
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r24,.L455
	copy %r28,%r19
	cmpb,>> %r19,%r31,.L453
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	b .L453
	extrd,s %r31,63,32,%r28
.L455:
	ldi 0,%r28
.L453:
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
	cmpb,*= %r0,%r24,.L464
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L464:
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
	cmpb,*= %r25,%r26,.L469
	copy %r26,%r28
	sub %r26,%r25,%r19
	depd,z %r24,61,62,%r20
	cmpb,*>> %r20,%r19,.L470
	ldo -1(%r24),%r31
	cmpb,*= %r0,%r24,.L469
	copy %r26,%r19
.L471:
	ldo 4(%r25),%r25
	ldo 4(%r19),%r19
	ldw -4(%r25),%r20
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L471
	stw %r20,-4(%r19)
	b,n .L469
.L470:
	cmpb,*=,n %r0,%r24,.L469
	shladd,l %r31,2,%r25,%r19
	shladd,l %r31,2,%r26,%r31
.L472:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	copy %r19,%r20
	ldo -4(%r19),%r19
	cmpb,*<> %r20,%r25,.L472
	ldo -4(%r31),%r31
.L469:
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
	cmpb,*= %r0,%r24,.L481
	ldo -1(%r24),%r31
	copy %r26,%r19
.L482:
	ldo 4(%r19),%r19
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L482
	stw %r25,-4(%r19)
.L481:
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
	cmpb,*<<= %r25,%r26,.L488
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L487
	add,l %r25,%r24,%r25
.L490:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L490
	stb,mb %r31,-1(%r25)
.L487:
	bve,n (%r2)
.L488:
	cmpb,*= %r25,%r26,.L487
	nop
	cmpb,*= %r0,%r24,.L487
	add,l %r26,%r24,%r24
.L491:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
	ldb -1(%r26),%r28
	cmpb,*<> %r26,%r24,.L491
	stb %r28,-1(%r25)
	b,n .L487
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
.L519:
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	ldo 1(%r19),%r31
	cmpb,*<> %r0,%r28,.L518
	extrd,u %r31,63,32,%r19
	cmpb,<> %r20,%r31,.L519
	mtsar %r19
	b .L515
	ldi 0,%r28
.L518:
	extrd,s %r31,63,32,%r28
.L515:
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
	cmpib,= 0,%r26,.L523
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L521
	ldi 1,%r28
.L522:
	extrw,s %r19,30,31,%r31
	extrd,s %r31,63,32,%r19
	ldo 1(%r28),%r28
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L522
	extrd,s %r28,63,32,%r28
.L521:
	bve,n (%r2)
.L523:
	b .L521
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
	b .L527
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L528
	ldi 0,%r28
.L528:
	extrd,s %r28,63,32,%r28
.L527:
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
	b .L531
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L532
	ldi 0,%r28
.L532:
	extrd,s %r28,63,32,%r28
.L531:
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
	cmpb,*> %r0,%r31,.L535
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
	b,n .L538
.L536:
	extrd,s %r3,63,32,%r28
.L535:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L538:
	b .L536
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
	b .L541
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b,n .L541
	cmpib,> 0,%r25,.L552
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L544
	fldw 0(%r28),%fr22R
.L552:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L544
	fldw 0(%r28),%fr22R
.L553:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L541
	extrd,s %r28,63,32,%r25
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L544:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L553
	extrw,u %r25,0,1,%r28
	b .L553
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L541:
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
	b .L555
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b,n .L555
	cmpib,> 0,%r25,.L566
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L558
	fldd 0(%r28),%fr22
.L566:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L558
	fldd 0(%r28),%fr22
.L567:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L555
	extrd,s %r28,63,32,%r25
	fmpy,dbl %fr22,%fr22,%fr22
.L558:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L567
	extrw,u %r25,0,1,%r28
	b .L567
	fmpy,dbl %fr4,%fr22,%fr4
.L555:
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
	cmpb,*<> %r0,%r28,.L569
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
	cmpb,*= %r0,%r28,.L569
	copy %r4,%r27
	cmpib,> 0,%r3,.L582
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r5
	ldi 0,%r6
.L571:
	b .L573
	ldo -48(%r30),%r9
.L582:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r5
	b .L571
	ldi 0,%r6
.L572:
	extrw,u %r3,0,1,%r31
.L583:
	add,l %r31,%r3,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L569
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
.L573:
	extrw,u %r3,31,1,%r28
	cmpib,= 0,%r28,.L583
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
	b .L572
	copy %r29,%r7
.L569:
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
	cmpb,*= %r0,%r24,.L585
	copy %r26,%r28
	add,l %r25,%r24,%r24
	copy %r26,%r31
.L586:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	ldb -1(%r25),%r20
	xor %r19,%r20,%r19
	cmpb,*<> %r25,%r24,.L586
	stb %r19,-1(%r31)
.L585:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 8
.globl strncat
	.type	strncat, @function
strncat:
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
	ldo -48(%r30),%r29
	b,l strlen,%r2
	copy %r24,%r3
	cmpb,*= %r0,%r3,.L597
	add,l %r6,%r28,%r28
.L592:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r19
	cmpb,*= %r0,%r19,.L601
	stb %r31,0(%r28)
	ldo 1(%r5),%r5
	ldo -1(%r3),%r3
	cmpb,*<> %r0,%r3,.L592
	ldo 1(%r28),%r28
	b .L595
	stb %r3,0(%r28)
.L601:
	cmpclr,*= %r0,%r3,%r0
	b,n .L595
.L597:
	stb %r3,0(%r28)
.L595:
	copy %r6,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
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
	cmpb,*= %r28,%r25,.L602
	add,l %r26,%r28,%r31
.L609:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L605
.L602:
	bve,n (%r2)
.L605:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L609
	add,l %r26,%r28,%r31
	b,n .L602
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
	cmpb,*= %r0,%r20,.L615
	copy %r26,%r28
	copy %r25,%r19
.L614:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L617
	cmpb,<> %r20,%r31,.L614
	ldo 1(%r19),%r19
.L612:
	bve,n (%r2)
.L617:
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L614
	copy %r25,%r19
.L615:
	b .L612
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
	b .L620
	ldi 0,%r28
.L619:
	cmpb,*= %r0,%r31,.L623
	ldo 1(%r26),%r26
.L620:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r25,%r31,.L619
	copy %r26,%r28
	b,n .L619
.L623:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 8
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r8,160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	copy %r25,%r6
	copy %r25,%r26
	ldo -48(%r30),%r29
	b,l strlen,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L624
	copy %r28,%r7
	ldb 0(%r6),%r8
	extrd,s %r8,63,8,%r8
	ldo -48(%r30),%r5
.L626:
	copy %r8,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strchr,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L624
	copy %r28,%r3
	copy %r7,%r24
	copy %r6,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strncmp,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L624
	copy %r4,%r27
	b .L626
	ldo 1(%r3),%r3
.L624:
	copy %r3,%r28
	ldd -176(%r30),%r2
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r8
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
	b,n .L639
	fcmp,dbl,!> %fr4,%fr0
.L641:
	ftest
	b,n .L640
	b,n .L636
.L640:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L635
.L636:
	bve,n (%r2)
.L639:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L635
	b .L641
	fcmp,dbl,!> %fr4,%fr0
.L635:
	b .L636
	fneg,dbl %fr4,%fr4
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 8
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=10
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r10,176(%r30)
	std %r9,-168(%r30)
	std %r8,-160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	cmpb,*= %r0,%r23,.L646
	copy %r26,%r3
	cmpb,*>> %r23,%r25,.L648
	sub %r25,%r23,%r5
	add,l %r26,%r5,%r5
	cmpb,*<<,n %r5,%r26,.L648
	ldb 0(%r24),%r7
	extrd,s %r7,63,8,%r7
	ldo -1(%r23),%r8
	ldo 1(%r24),%r9
	b .L645
	ldo -48(%r30),%r10
.L644:
	cmpb,*<< %r5,%r3,.L642
	ldi 0,%r6
.L645:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	copy %r3,%r6
	cmpb,<> %r7,%r28,.L644
	ldo 1(%r3),%r3
	copy %r8,%r24
	copy %r9,%r25
	copy %r3,%r26
	copy %r10,%r29
	b,l memcmp,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L644
	copy %r4,%r27
	b .L653
	copy %r6,%r28
.L646:
	b .L642
	copy %r26,%r6
.L648:
	ldi 0,%r6
.L642:
	copy %r6,%r28
.L653:
	ldd -192(%r30),%r2
	ldd -168(%r30),%r9
	ldd -160(%r30),%r8
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r10
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	copy %r24,%r3
	add,l %r28,%r3,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
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
	b,n .L668
	ldi 0,%r19
.L656:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L669
	ldi 0,%r28
	b .L683
	fcmp,dbl,= %fr4,%fr0
.L669:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr23
	fldd 0(%r31),%fr22
.L660:
	ldo 1(%r28),%r28
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L660
	extrd,s %r28,63,32,%r28
.L661:
.L684:
	cmpb,*= %r0,%r19,.L665
	stw %r28,0(%r25)
	fneg,dbl %fr4,%fr4
.L665:
	bve,n (%r2)
.L668:
	fneg,dbl %fr4,%fr4
	b .L656
	ldi 1,%r19
.L683:
	ftest
	b .L673
	addil LT'.LC29,%r27
	b .L661
	ldi 0,%r28
.L673:
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L674
	ldi 0,%r28
	b,n .L684
.L674:
.L664:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L664
	extrd,s %r28,63,32,%r28
	b,n .L661
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
	cmpb,*= %r0,%r26,.L685
	ldi 0,%r28
.L687:
	extrd,s %r26,63+1-1,1,%r31
	and %r31,%r25,%r31
	add,l %r28,%r31,%r28
	extrd,u %r26,62,63,%r26
	cmpb,*<> %r0,%r26,.L687
	depd,z %r25,62,63,%r25
.L685:
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
	cmpb,>> %r26,%r25,.L691
	ldi 1,%r19
	b .L695
	ldi 0,%r20
.L709:
	cmpiclr,<> 0,%r21,%r0
	b,n .L692
.L691:
	cmpib,>,n 0,%r31,.L692
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r20,%r28,.L709
	extrd,u %r21,63,32,%r19
.L692:
	cmpb,*= %r0,%r19,.L696
	ldi 0,%r20
	b,n .L695
.L698:
	extrd,u %r19,62,63,%r19
.L710:
	cmpb,*= %r0,%r19,.L696
	extrd,u %r31,62,63,%r31
.L695:
	cmpb,>>,n %r31,%r28,.L710
	extrd,u %r19,62,63,%r19
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	b .L698
	extrd,u %r20,63,32,%r20
.L696:
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
	cmpb,= %r31,%r26,.L713
	xor %r26,%r31,%r28
	depw,z %r28,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
.L712:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L713:
	b .L712
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
	cmpb,*= %r31,%r28,.L716
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L715:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L716:
	b .L715
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
	cmpib,= 0,%r26,.L718
	ldi 0,%r28
.L719:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L719
	extrd,u %r25,63,32,%r25
.L718:
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
	cmpb,*>> %r25,%r26,.L723
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpb,*<<,n %r28,%r26,.L723
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L722
	extrd,u %r24,63,32,%r24
.L729:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L729
	stb %r31,0(%r28)
	b,n .L722
.L723:
	cmpb,*=,n %r0,%r20,.L726
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L727:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L727
	ldo 8(%r31),%r31
.L726:
	cmpb,>>=,n %r21,%r23,.L722
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	add,l %r25,%r22,%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
.L728:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L728
	ldo 1(%r26),%r26
.L722:
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
	cmpb,*>> %r25,%r26,.L738
	extrd,u %r24,32+31-1,31,%r20
	add,l %r25,%r21,%r28
	cmpb,*<<,n %r28,%r26,.L738
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r21,.L737
	extrd,u %r24,63,32,%r24
.L743:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L743
	stb %r31,0(%r28)
	b,n .L737
.L738:
	cmpb,*=,n %r0,%r20,.L741
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,1,%r25,%r20
.L742:
	ldh 0(%r28),%r19
	sth %r19,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r20,%r28,.L742
	ldo 2(%r31),%r31
.L741:
	extrw,u %r21,31,1,%r21
	cmpib,= 0,%r21,.L737
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	ldb 0(%r25),%r28
	add,l %r26,%r24,%r26
	stb %r28,0(%r26)
.L737:
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
	cmpb,*>> %r25,%r26,.L754
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpb,*<<,n %r28,%r26,.L754
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L753
	extrd,u %r24,63,32,%r24
.L760:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L760
	stb %r31,0(%r28)
	b,n .L753
.L754:
	cmpb,*=,n %r0,%r20,.L757
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,2,%r25,%r20
.L758:
	ldw 0(%r28),%r19
	stw %r19,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r20,%r28,.L758
	ldo 4(%r31),%r31
.L757:
	cmpb,>>=,n %r21,%r23,.L753
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	add,l %r25,%r22,%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
.L759:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L759
	ldo 1(%r26),%r26
.L753:
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
.L776:
	ldo 16(%r28),%r31
	mtsar %r31
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L775
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L776
	extrd,s %r31,63,32,%r28
.L775:
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
.L780:
	mtsarcm %r28
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L779
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L780
	extrd,s %r31,63,32,%r28
.L779:
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
	b .L786
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
.L782:
	bve (%r2)
	ldo -64(%r30),%r30
.L786:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	b .L782
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
.L789:
	mtsarcm %r31
	extrw,s %r26,%sar,32,%r28
	extrw,u %r28,31,1,%r28
	add,l %r28,%r20,%r28
	extrd,s %r28,63,32,%r20
	ldo 1(%r31),%r19
	cmpb,<> %r21,%r19,.L789
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
.L792:
	mtsarcm %r19
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r19),%r31
	cmpb,<> %r20,%r31,.L792
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
	cmpib,= 0,%r26,.L795
	ldi 0,%r28
.L796:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L796
	extrd,u %r25,63,32,%r25
.L795:
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
	cmpib,<> 0,%r26,.L805
	ldi 0,%r28
	b,n .L800
.L801:
	and %r19,%r31,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r25,62,63,%r25
.L805:
	cmpb,*<> %r0,%r25,.L801
	extrw,s %r25,31+1-1,1,%r19
.L800:
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
	cmpb,>> %r26,%r25,.L807
	ldi 1,%r19
	b .L811
	ldi 0,%r20
.L825:
	cmpiclr,<> 0,%r21,%r0
	b,n .L808
.L807:
	cmpib,>,n 0,%r31,.L808
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r20,%r28,.L825
	extrd,u %r21,63,32,%r19
.L808:
	cmpb,*= %r0,%r19,.L812
	ldi 0,%r20
	b,n .L811
.L814:
	extrd,u %r19,62,63,%r19
.L826:
	cmpb,*= %r0,%r19,.L812
	extrd,u %r31,62,63,%r31
.L811:
	cmpb,>>,n %r31,%r28,.L826
	extrd,u %r19,62,63,%r19
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	b .L814
	extrd,u %r20,63,32,%r20
.L812:
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
	b,n .L830
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L829
	ldi 1,%r28
	ldi 0,%r28
.L829:
	extrd,s %r28,63,32,%r28
.L828:
	bve,n (%r2)
.L830:
	b .L828
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
	b,n .L834
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L833
	ldi 1,%r28
	ldi 0,%r28
.L833:
	extrd,s %r28,63,32,%r28
.L832:
	bve,n (%r2)
.L834:
	b .L832
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
	cmpib,> 0,%r25,.L849
	ldi 0,%r29
.L838:
	cmpb,*= %r0,%r20,.L844
	ldi 1,%r19
	ldi 0,%r28
	ldi 1,%r23
	ldi 31,%r22
	b .L841
	ldi 0,%r24
.L849:
	sub %r0,%r20,%r20
	extrd,s %r20,63,32,%r20
	b .L838
	ldi 1,%r29
.L840:
	and %r31,%r21,%r31
	extrd,u %r31,63,8,%r31
	ldo 1(%r19),%r19
	cmpb,*= %r0,%r31,.L839
	extrd,u %r19,63,8,%r19
.L841:
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
	cmpb,>>= %r22,%r19,.L840
	copy %r23,%r21
	b .L840
	copy %r24,%r21
.L844:
	ldi 0,%r28
.L839:
	cmpb,*=,n %r0,%r29,.L842
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L842:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldi 0,%r3
	cmpclr,*<= %r3,%r26,%r0
	b,n .L857
.L851:
	cmpb,*> %r0,%r25,.L858
	ldi 1,%r28
.L852:
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r3,%r0
	copy %r31,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L857:
	sub %r0,%r26,%r26
	b .L851
	ldi 1,%r3
.L858:
	sub %r0,%r25,%r25
	xor %r3,%r28,%r3
	b .L852
	extrd,s %r3,63,32,%r3
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldi 0,%r3
	cmpclr,*<= %r3,%r26,%r0
	b,n .L865
.L860:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	ldi 1,%r24
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r3,%r0
	copy %r31,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L865:
	sub %r0,%r26,%r26
	b .L860
	ldi 1,%r3
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
	cmpb,>> %r28,%r25,.L867
	ldi 1,%r19
	b .L871
	ldi 0,%r31
.L885:
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,s,< %r31,16,1,%r0
	b,n .L868
.L867:
	extrw,s %r25,31,16,%r31
	cmpib,>,n 0,%r31,.L868
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	add,l %r19,%r19,%r31
	cmpb,<< %r25,%r28,.L885
	extrd,u %r31,63,16,%r19
.L868:
	cmpb,*= %r0,%r19,.L872
	ldi 0,%r31
	b,n .L871
.L874:
	extrd,u %r19,62,63,%r19
.L886:
	cmpb,*= %r0,%r19,.L872
	extrd,u %r25,62,63,%r25
.L871:
	cmpb,>>,n %r25,%r28,.L886
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	or %r19,%r31,%r31
	b .L874
	extrd,u %r31,63,16,%r31
.L872:
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
	cmpb,*>> %r26,%r25,.L888
	depdi,z 1,32,4,%r20
	b .L892
	ldi 0,%r19
.L906:
	cmpb,*= %r0,%r31,.L893
	ldi 0,%r19
.L888:
	and %r25,%r20,%r19
	cmpb,*<>,n %r0,%r19,.L889
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L906
	depd,z %r31,62,63,%r31
.L889:
	cmpb,*= %r0,%r31,.L893
	ldi 0,%r19
	b,n .L892
.L895:
	extrd,u %r31,62,63,%r31
.L907:
	cmpb,*= %r0,%r31,.L893
	extrd,u %r25,62,63,%r25
.L892:
	cmpb,*>>,n %r25,%r28,.L907
	extrd,u %r31,62,63,%r31
	sub %r28,%r25,%r28
	b .L895
	or %r19,%r31,%r19
.L893:
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
	bb,>= %r25,26,.L909
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	ldi 0,%r31
.L910:
	depd,z %r26,31,32,%r26
	or %r26,%r31,%r28
.L908:
	bve,n (%r2)
.L909:
	cmpb,*= %r0,%r28,.L912
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
	b .L910
	extrd,s %r19,63,32,%r26
.L912:
	b .L908
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
	bb,>= %r24,25,.L914
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	depd,z %r25,%sar,64,%r28
	ldi 0,%r29
.L916:
	bve,n (%r2)
.L914:
	cmpb,*= %r0,%r28,.L917
	subi 63,%r28,%r31
	mtsar %r31
	depd,z %r25,%sar,64,%r29
	subi 64,%r28,%r28
	mtsar %r28
	shrpd %r0,%r25,%sar,%r25
	mtsar %r31
	depd,z %r26,%sar,64,%r28
	b .L916
	or %r25,%r28,%r28
.L917:
	copy %r26,%r28
	b .L916
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
	bb,>= %r25,26,.L919
	extrd,s %r25,63,32,%r31
	extrd,s %r26,0+32-1,32,%r26
	extrw,s %r26,0,1,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	extrw,s %r26,%sar,32,%r26
	extrd,u %r26,63,32,%r26
.L920:
	depd,z %r28,31,32,%r28
	or %r28,%r26,%r28
.L918:
	bve,n (%r2)
.L919:
	cmpb,*= %r0,%r31,.L922
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
	b .L920
	extrd,u %r19,63,32,%r26
.L922:
	b .L918
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
	bb,>= %r24,25,.L924
	extrd,s %r24,63,32,%r31
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	extrd,s %r26,%sar,64,%r29
.L926:
	bve,n (%r2)
.L924:
	cmpb,*= %r0,%r31,.L927
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L926
	or %r26,%r29,%r29
.L927:
	copy %r26,%r28
	b .L926
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
	bb,< %r26,30,.L933
	ldi 0,%r19
	subi 2,%r26,%r19
.L933:
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
	b,n .L940
	cmpb,< %r28,%r31,.L941
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L940
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L941
	ldi 1,%r28
	b,n .L937
.L940:
	ldi 0,%r28
.L937:
	bve,n (%r2)
.L941:
	b .L937
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	ldo -48(%r30),%r29
	b,l __cmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
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
	cmpb,*> %r24,%r26,.L949
	ldi 0,%r28
	cmpb,*< %r24,%r26,.L949
	ldi 2,%r28
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L947
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	b .L944
	ldo 1(%r28),%r28
.L947:
	ldi 0,%r28
.L944:
.L949:
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
	cmpb,*<> %r0,%r25,.L953
	ldo -48(%r30),%r29
	ldi 0,%r28
	cmpb,*= %r28,%r26,.L957
	ldd -144(%r30),%r2
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	b .L954
	extrd,s %r28,63,32,%r28
.L953:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L954:
	ldd -144(%r30),%r2
.L957:
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
	bb,>= %r25,26,.L959
	extrd,s %r25,63,32,%r31
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	ldi 0,%r28
.L960:
	depd,z %r28,31,32,%r28
	or %r28,%r26,%r28
.L958:
	bve,n (%r2)
.L959:
	cmpb,*= %r0,%r31,.L962
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
	b .L960
	extrd,u %r19,63,32,%r26
.L962:
	b .L958
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
	bb,>= %r24,25,.L964
	extrd,s %r24,63,32,%r31
	mtsar %r24
	shrpd %r0,%r26,%sar,%r29
	ldi 0,%r28
.L966:
	bve,n (%r2)
.L964:
	cmpb,*= %r0,%r31,.L967
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L966
	or %r26,%r29,%r29
.L967:
	copy %r26,%r28
	b .L966
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
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r3
	extrd,u %r26,63,32,%r6
	extrd,u %r25,63,32,%r7
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __muldsi3,%r2
	copy %r6,%r26
	extrd,s %r5,0+32-1,32,%r5
	std %r5,-168(%r30)
	fldd -168(%r30),%fr22
	std %r7,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r5
	extrd,s %r3,0+32-1,32,%r3
	std %r3,-168(%r30)
	fldd -168(%r30),%fr22
	std %r6,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r3
	add,l %r3,%r5,%r3
	extrd,s %r28,0+32-1,32,%r31
	add,l %r3,%r31,%r3
	depd %r3,0+32-1,32,%r28
	ldd -192(%r30),%r2
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
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
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	copy %r24,%r3
	copy %r23,%r7
	copy %r23,%r25
	ldo -48(%r30),%r29
	b,l __mulddi3,%r2
	copy %r6,%r26
	extrd,u %r7,31,32,%r31
	extrd,u %r5,31,32,%r19
	std %r19,-168(%r30)
	fldd -168(%r30),%fr22
	std %r5,-168(%r30)
	fldd -168(%r30),%fr23
	std %r31,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-168(%r30)
	ldd -168(%r30),%r31
	std %r7,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r5,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-168(%r30)
	ldd -168(%r30),%r5
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r19
	add,l %r31,%r19,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r5,%r31
	extrd,u %r6,31,32,%r19
	extrd,u %r3,31,32,%r20
	std %r20,-168(%r30)
	fldd -168(%r30),%fr22
	std %r3,-168(%r30)
	fldd -168(%r30),%fr23
	std %r19,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-168(%r30)
	ldd -168(%r30),%r19
	std %r6,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r3,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-168(%r30)
	ldd -168(%r30),%r3
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r20
	add,l %r19,%r20,%r19
	depd,z %r19,31,32,%r19
	add,l %r19,%r3,%r24
	add,l %r31,%r24,%r31
	add,l %r31,%r28,%r28
	ldd -192(%r30),%r2
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
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
	b .L983
	fldd 0(%r19),%fr4
.L989:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L982
	extrd,s %r28,63,32,%r31
	fmpy,dbl %fr22,%fr22,%fr22
.L983:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L989
	extrw,u %r31,0,1,%r28
	b .L989
	fmpy,dbl %fr4,%fr22,%fr4
.L982:
	cmpiclr,<= 0,%r25,%r0
	b,n .L988
.L980:
	bve,n (%r2)
.L988:
	fldd 0(%r19),%fr22
	b .L980
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
	b .L993
	fldw 0(%r19),%fr4R
.L999:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L992
	extrd,s %r28,63,32,%r31
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L993:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L999
	extrw,u %r31,0,1,%r28
	b .L999
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L992:
	cmpiclr,<= 0,%r25,%r0
	b,n .L998
.L990:
	bve,n (%r2)
.L998:
	fldw 0(%r19),%fr22R
	b .L990
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
	b,n .L1004
	cmpb,<< %r28,%r31,.L1005
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1004
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L1005
	ldi 1,%r28
	b,n .L1001
.L1004:
	ldi 0,%r28
.L1001:
	bve,n (%r2)
.L1005:
	b .L1001
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	ldo -48(%r30),%r29
	b,l __ucmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
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
	cmpb,*>> %r24,%r26,.L1013
	ldi 0,%r28
	cmpb,*<< %r24,%r26,.L1013
	ldi 2,%r28
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1011
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	b .L1008
	ldo 1(%r28),%r28
.L1011:
	ldi 0,%r28
.L1008:
.L1013:
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
