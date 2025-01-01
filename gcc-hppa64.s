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
	cmpb,*<> %r0,%r23,.L19
	extrd,u %r24,63,8,%r24
	b .L30
	ldi 0,%r28
.L21:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	cmpb,*= %r0,%r23,.L23
	ldo 1(%r26),%r26
.L19:
	ldb 0(%r25),%r28
	cmpb,<> %r24,%r28,.L21
	stb %r28,0(%r26)
	cmpb,*= %r0,%r23,.L23
	ldo 1(%r26),%r28
	bve,n (%r2)
.L23:
	ldi 0,%r28
.L30:
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
	cmpb,*<> %r0,%r24,.L32
	extrd,u %r25,63,8,%r25
	b .L40
	ldi 0,%r28
.L34:
	cmpb,*= %r0,%r24,.L37
	ldo 1(%r26),%r26
.L32:
	ldb 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L34
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r24,.L37
	copy %r26,%r28
	bve,n (%r2)
.L37:
	ldi 0,%r28
.L40:
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
	b,n .L46
.L55:
	ldb 0(%r26),%r31
	ldb 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L54
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	cmpb,*<> %r0,%r24,.L55
	ldo 1(%r25),%r25
.L46:
	bve (%r2)
	ldi 0,%r28
.L54:
	cmpb,*= %r0,%r24,.L46
	nop
	copy %r31,%r28
	ldb 0(%r25),%r31
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
	cmpb,*= %r0,%r24,.L57
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
.L57:
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
	b .L62
	ldo -1(%r26),%r26
.L64:
	ldb 0(%r28),%r31
	cmpb,= %r25,%r31,.L61
	ldo -1(%r24),%r24
.L62:
	cmpb,*<> %r26,%r24,.L64
	copy %r24,%r28
	ldi 0,%r28
.L61:
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
	cmpb,*<> %r0,%r31,.L81
	extrd,u %r25,63,8,%r25
	b,n .L80
.L83:
	extrd,s %r31,63,8,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L80
.L81:
	extrw,u %r31,31,8,%r31
	cmpb,<>,n %r25,%r31,.L83
	ldb,mb 1(%r28),%r31
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
	b .L89
	extrd,s %r25,63,32,%r25
.L92:
	cmpb,*= %r0,%r31,.L91
	ldo 1(%r28),%r28
.L89:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<> %r25,%r31,.L92
	nop
	bve,n (%r2)
.L91:
	bve (%r2)
	ldi 0,%r28
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
	bb,< %r19,24,.L107
	extrd,s %r20,63,8,%r21
	b .L109
	extrw,u %r28,31,8,%r28
.L108:
	extrd,s %r31,63,8,%r28
	ldb,mb 1(%r25),%r20
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	bb,>= %r19,24,.L94
	extrd,s %r20,63,8,%r21
.L107:
	xor %r31,%r20,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	bb,<,n %r31,24,.L108
	ldb,mb 1(%r26),%r31
.L94:
	extrw,u %r28,31,8,%r28
.L109:
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
	cmpib,= 0,%r28,.L113
	copy %r26,%r28
	ldb,mb 1(%r28),%r31
.L115:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L115
	ldb,mb 1(%r28),%r31
	bve (%r2)
	sub %r28,%r26,%r28
.L113:
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
	cmpb,*=,n %r0,%r24,.L122
	ldb 0(%r26),%r28
	cmpb,*= %r0,%r28,.L118
	ldo -1(%r24),%r24
	b .L119
	add,l %r25,%r24,%r20
.L130:
	cmpb,*=,n %r20,%r25,.L118
	ldb,mb 1(%r26),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*= %r0,%r28,.L118
	ldo 1(%r25),%r25
.L119:
	ldb 0(%r25),%r31
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	xor %r31,%r28,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	and %r19,%r31,%r19
	bb,< %r19,24,.L130
	nop
.L118:
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L122:
	bve (%r2)
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
	cmpib,*>= 1,%r24,.L131
	depdi 0,63,1,%r24
	add,l %r26,%r24,%r31
.L133:
	ldb 1(%r26),%r28
	stb %r28,0(%r25)
	ldb 0(%r26),%r28
	stb %r28,1(%r25)
	ldo 2(%r26),%r26
	cmpb,*<> %r31,%r26,.L133
	ldo 2(%r25),%r25
.L131:
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
	cmpb,>>= %r19,%r26,.L141
	ldi 1,%r31
	ldi 0,%r31
.L141:
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
	cmpib,>>= 4,%r26,.L151
	ldi 1,%r19
	ldi 0,%r19
.L151:
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
	cmpb,>>=,n %r28,%r26,.L159
	ldi 31,%r28
	cmpb,>>= %r28,%r31,.L159
	ldo -40(%r31),%r19
	ldo -8192(%r19),%r19
	cmpib,>>= 1,%r19,.L155
	ldi 1,%r28
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpiclr,<< 2,%r31,%r31
	ldi 1,%r31
	extrd,s %r31,63,32,%r28
.L155:
	bve,n (%r2)
.L159:
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
	cmpb,>>= %r31,%r26,.L176
	extrd,u %r26,63,32,%r28
	ldo -42(%r28),%r19
	ldo -8192(%r19),%r19
	ldil L'49152,%r31
	ldo -2091(%r31),%r31
	cmpb,<< %r31,%r19,.L177
	ldil L'16384,%r31
.L172:
	bve (%r2)
	ldi 1,%r28
.L177:
	ldo -8153(%r31),%r31
	cmpb,>>= %r31,%r28,.L172
	ldil L'-57344,%r31
	add,l %r28,%r31,%r31
	ldi 8184,%r19
	cmpb,>>= %r19,%r31,.L172
	depwi,z -1,29,14,%r19
	sub %r28,%r19,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L173
	depwi,z -1,30,15,%r31
	andcm %r31,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L176:
	ldo 1(%r26),%r28
	extrw,u %r28,31,7,%r28
	cmpiclr,>>= 32,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L173:
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
	cmpib,>>= 9,%r26,.L179
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r28
	cmpiclr,<< 5,%r28,%r28
	ldi 1,%r28
	extrd,s %r28,63,32,%r28
.L179:
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
	b .L183
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L187
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L189
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	fldd 0(%r28),%fr4
.L183:
	bve,n (%r2)
.L189:
	bve (%r2)
	fsub,dbl %fr4,%fr5,%fr4
.L187:
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
	b .L191
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L195
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L197
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	fldw 0(%r28),%fr4R
.L191:
	bve,n (%r2)
.L197:
	bve (%r2)
	fsub,sgl %fr4R,%fr5R,%fr4R
.L195:
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
	ldo 64(%r30),%r30
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L205
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L206
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,<> %r31,%r19,.L210
	extrd,u %r28,0,1,%r28
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L205
	fcpy,dbl %fr4,%fr5
.L205:
	fcpy,dbl %fr5,%fr4
.L199:
	bve (%r2)
	ldo -64(%r30),%r30
.L210:
	cmpb,*<> %r0,%r28,.L199
	fcpy,dbl %fr5,%fr4
.L206:
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
	ldo 64(%r30),%r30
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L217
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L218
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,<> %r31,%r28,.L222
	extrd,s %r28,63,32,%r19
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L217
	fcpy,sgl %fr4R,%fr5R
.L217:
	fcpy,sgl %fr5R,%fr4R
.L211:
	bve (%r2)
	ldo -64(%r30),%r30
.L222:
	cmpb,*<> %r0,%r19,.L211
	fcpy,sgl %fr5R,%fr4R
.L218:
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
	cmpb,*<> %r0,%r28,.L231
	copy %r4,%r27
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L230
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L225
	extrd,u %r3,0,1,%r19
	cmpb,*= %r0,%r19,.L235
	copy %r3,%r28
.L231:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L225:
	copy %r6,%r24
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L234
.L230:
	copy %r3,%r28
.L235:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L234:
	copy %r6,%r3
	b .L230
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
	b .L242
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L236
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L238
	extrd,u %r28,0,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L242
.L236:
	bve (%r2)
	ldo -64(%r30),%r30
.L238:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L236
.L242:
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
	ldo 64(%r30),%r30
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L253
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L247
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L249
	extrd,s %r28,63,32,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L253
.L247:
	bve (%r2)
	ldo -64(%r30),%r30
.L249:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L247
.L253:
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
	cmpb,*<> %r0,%r28,.L264
	copy %r4,%r27
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	copy %r5,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L266
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L260
	extrd,u %r6,0,1,%r19
	cmpb,*= %r0,%r19,.L270
	copy %r3,%r28
.L266:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L260:
	copy %r3,%r24
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L269
.L264:
	copy %r3,%r28
.L270:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L269:
	copy %r6,%r3
	b .L264
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
	cmpib,= 0,%r26,.L272
	copy %r28,%r19
	addil LT'digits,%r27
	ldd RT'digits(%r1),%r21
.L273:
	extrd,u %r31,63,6,%r20
	ldb %r20(%r21),%r20
	stb %r20,0(%r19)
	extrd,u %r31,57,58,%r31
	cmpb,*<> %r0,%r31,.L273
	ldo 1(%r19),%r19
.L272:
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
	cmpb,*=,n %r0,%r25,.L284
	ldd 0(%r25),%r28
	std %r28,0(%r26)
	std %r25,8(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L278:
	bve,n (%r2)
.L284:
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
	cmpb,*=,n %r0,%r28,.L286
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L286:
	ldd 8(%r26),%r28
	cmpb,*=,n %r0,%r28,.L285
	ldd 0(%r26),%r31
	std %r31,0(%r28)
.L285:
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
	cmpb,*= %r0,%r8,.L295
	copy %r22,%r11
	copy %r25,%r3
	ldi 0,%r5
	b .L297
	ldo -48(%r30),%r12
.L309:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r8,.L295
	add,l %r3,%r7,%r3
.L297:
	copy %r3,%r6
	copy %r3,%r25
	copy %r9,%r26
	copy %r12,%r29
	copy %r27,%r4
	ldd 16(%r11),%r2
	bve,l (%r2),%r2
	ldd 24(%r11),%r27
	cmpb,*<> %r0,%r28,.L309
	copy %r4,%r27
.L294:
	copy %r6,%r28
.L310:
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
.L295:
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
	cmpb,*= %r0,%r7,.L294
	add,l %r10,%r6,%r6
	copy %r7,%r24
	copy %r9,%r25
	ldo -48(%r30),%r29
	b,l memmove,%r2
	copy %r6,%r26
	b .L310
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
	cmpb,*= %r0,%r9,.L312
	copy %r22,%r7
	copy %r25,%r3
	ldi 0,%r5
	b .L314
	ldo -48(%r30),%r11
.L322:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r9,.L312
	add,l %r3,%r8,%r3
.L314:
	copy %r3,%r10
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	copy %r27,%r4
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpb,*<> %r0,%r28,.L322
	copy %r4,%r27
.L311:
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
.L312:
	b .L311
	ldi 0,%r10
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
	ldi 32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L347
	ldi 43,%r28
.L344:
	ldb,mb 1(%r26),%r28
.L348:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>=,n 4,%r19,.L348
	ldb,mb 1(%r26),%r28
	xor %r20,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L348
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L347:
	cmpb,=,n %r28,%r31,.L335
	ldi 45,%r28
	cmpb,= %r28,%r31,.L346
	ldi 0,%r20
.L331:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,<< 9,%r19,.L333
	ldi 0,%r28
.L332:
	shladd,l %r28,2,%r28,%r28 
	add,l %r28,%r28,%r28
	ldo -48(%r31),%r31
	extrw,s %r31,31,8,%r31
	sub %r28,%r31,%r28
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,>>= 9,%r19,.L332
	extrd,s %r28,63,32,%r28
.L333:
	cmpb,*<>,n %r0,%r20,.L334
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L334:
	bve,n (%r2)
.L346:
	ldi 1,%r20
	b .L331
	ldo 1(%r26),%r26
.L335:
	ldi 0,%r20
	b .L331
	ldo 1(%r26),%r26
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
	cmpib,>>= 4,%r28,.L369
	ldi 32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L372
	ldi 43,%r28
.L369:
	ldb,mb 1(%r26),%r28
.L373:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>=,n 4,%r19,.L373
	ldb,mb 1(%r26),%r28
	xor %r20,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L373
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L372:
	cmpb,=,n %r28,%r31,.L360
	ldi 45,%r28
	cmpb,= %r28,%r31,.L371
	ldi 0,%r20
.L356:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,<< 9,%r19,.L358
	ldi 0,%r28
	shladd,l %r28,2,%r28,%r28
.L374:
	depd,z %r28,62,63,%r28
	ldo -48(%r31),%r31
	extrd,s %r31,63,8,%r31
	sub %r28,%r31,%r28
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,>>=,n 9,%r19,.L374
	shladd,l %r28,2,%r28,%r28
.L358:
	sub %r0,%r28,%r31
	cmpiclr,*<> 0,%r20,%r0
	copy %r31,%r28
	bve,n (%r2)
.L371:
	ldi 1,%r20
	b .L356
	ldo 1(%r26),%r26
.L360:
	ldi 0,%r20
	b .L356
	ldo 1(%r26),%r26
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	ldo -48(%r30),%r29
	b,l atol,%r2
	nop
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
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
	cmpb,*= %r0,%r24,.L377
	copy %r22,%r8
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr14
	b .L380
	ldo -48(%r30),%r9
.L386:
	cmpib,>=,n 0,%r28,.L376
	fstd %fr13,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	uaddcm %r5,%r28,%r5
	cmpb,*= %r0,%r5,.L376
	ldi 0,%r3
.L380:
	extrd,u %r5,62,63,%r28
.L387:
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
	cmpib,<= 0,%r28,.L386
	copy %r4,%r27
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r5
	cmpb,*<> %r0,%r5,.L387
	extrd,u %r5,62,63,%r28
.L377:
	ldi 0,%r3
.L376:
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
	cmpib,= 0,%r24,.L389
	extrd,s %r24,63,32,%r5
	extrd,u %r23,31,32,%r28
	std %r28,-216(%r30)
	fldd -216(%r30),%fr13
	b .L392
	ldo -48(%r30),%r11
.L400:
	cmpib,>=,n 0,%r28,.L391
	fstd %fr12,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r3,%r28,%r7
	ldo -1(%r5),%r5
	extrd,s %r5,63,32,%r5
	extrw,s %r5,30,31,%r6
.L391:
	cmpib,= 0,%r6,.L389
	extrd,s %r6,63,32,%r5
.L392:
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
	cmpb,*<> %r0,%r28,.L400
	copy %r4,%r27
.L388:
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
.L389:
	b .L388
	ldi 0,%r3
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
	cmpb,= %r28,%r25,.L409
	extrd,u %r25,63,32,%r19
.L423:
	cmpb,*=,n %r0,%r28,.L409
	ldw,mb 4(%r26),%r31
	cmpb,<> %r19,%r31,.L423
	extrd,u %r31,63,32,%r28
.L409:
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
	b,n .L425
.L441:
	cmpb,*=,n %r0,%r20,.L425
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
	cmpib,> 0,%r28,.L441
	extrd,u %r19,63,32,%r21
.L425:
	cmpb,>> %r20,%r21,.L428
	ldi -1,%r28
	cmpclr,>>= %r20,%r21,%r21
	ldi 1,%r21
	extrd,s %r21,63,32,%r28
.L428:
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
.L443:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L443
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
	cmpib,= 0,%r28,.L448
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L450:
	cmpib,<>,n 0,%r31,.L450
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L448:
	sub %r28,%r26,%r28
	bve (%r2)
	extrd,s %r28,61,62,%r28
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
	cmpb,*= %r0,%r24,.L470
	ldi 0,%r28
.L469:
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
	b,n .L453
	cmpb,*=,n %r0,%r19,.L453
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L469
	ldo 4(%r25),%r25
	ldi 0,%r28
.L456:
.L470:
	bve,n (%r2)
.L453:
	cmpb,*=,n %r0,%r24,.L470
	ldi 0,%r28
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,>> %r19,%r31,.L456
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	bve (%r2)
	extrd,s %r31,63,32,%r28
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
	cmpb,*<> %r0,%r24,.L472
	extrd,u %r25,63,32,%r25
	b .L480
	ldi 0,%r28
.L474:
	cmpb,*= %r0,%r24,.L477
	ldo 4(%r26),%r26
.L472:
	ldw 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L474
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r24,.L477
	copy %r26,%r28
	bve,n (%r2)
.L477:
	ldi 0,%r28
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
	cmpb,*= %r0,%r24,.L497
	ldi 0,%r28
.L496:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L495
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L496
	ldo 4(%r25),%r25
	ldi 0,%r28
.L485:
.L497:
	bve,n (%r2)
.L495:
	cmpb,*=,n %r0,%r24,.L497
	ldi 0,%r28
	copy %r28,%r19
	cmpb,>> %r19,%r31,.L485
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	bve (%r2)
	extrd,s %r31,63,32,%r28
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
	cmpb,*= %r0,%r24,.L499
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L499:
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
	cmpb,*= %r25,%r26,.L504
	copy %r26,%r28
	sub %r26,%r25,%r19
	depd,z %r24,61,62,%r20
	cmpb,*<<= %r20,%r19,.L515
	ldo -1(%r24),%r31
	cmpb,*=,n %r0,%r24,.L504
	shladd,l %r31,2,%r25,%r19
	shladd,l %r31,2,%r26,%r31
.L507:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	copy %r19,%r20
	ldo -4(%r19),%r19
	cmpb,*<> %r20,%r25,.L507
	ldo -4(%r31),%r31
.L504:
	bve,n (%r2)
.L515:
	cmpb,*= %r0,%r24,.L504
	copy %r26,%r19
.L506:
	ldo 4(%r25),%r25
	ldo 4(%r19),%r19
	ldw -4(%r25),%r20
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L506
	stw %r20,-4(%r19)
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
	cmpb,*= %r0,%r24,.L517
	ldo -1(%r24),%r31
	copy %r26,%r19
.L518:
	ldo 4(%r19),%r19
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L518
	stw %r25,-4(%r19)
.L517:
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
	cmpb,*<<= %r25,%r26,.L524
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L523
	add,l %r25,%r24,%r25
.L526:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L526
	stb,mb %r31,-1(%r25)
.L523:
	bve,n (%r2)
.L524:
	cmpb,*= %r25,%r26,.L523
	nop
	cmpb,*= %r0,%r24,.L523
	add,l %r26,%r24,%r24
.L527:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
	ldb -1(%r26),%r28
	cmpb,*<> %r26,%r24,.L527
	stb %r28,-1(%r25)
	bve,n (%r2)
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
	b .L552
	ldi 32,%r20
.L550:
	cmpclr,<> %r20,%r31,%r0
	b,n .L554
.L552:
	mtsar %r19
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	ldo 1(%r19),%r31
	cmpb,*= %r0,%r28,.L550
	extrd,u %r31,63,32,%r19
	bve (%r2)
	extrd,s %r31,63,32,%r28
.L554:
	bve (%r2)
	ldi 0,%r28
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
	cmpib,= 0,%r26,.L558
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L556
	ldi 1,%r28
.L557:
	extrw,s %r19,30,31,%r31
	extrd,s %r31,63,32,%r19
	ldo 1(%r28),%r28
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L557
	extrd,s %r28,63,32,%r28
.L556:
	bve,n (%r2)
.L558:
	bve (%r2)
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
	b .L562
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L563
	ldi 0,%r28
.L563:
	extrd,s %r28,63,32,%r28
.L562:
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
	b .L566
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L567
	ldi 0,%r28
.L567:
	extrd,s %r28,63,32,%r28
.L566:
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
	cmpb,*> %r0,%r31,.L570
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
	b,n .L573
.L571:
	extrd,s %r3,63,32,%r28
.L570:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L573:
	b .L571
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
	b .L576
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b,n .L576
	cmpib,> 0,%r25,.L587
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L579
	fldw 0(%r28),%fr22R
.L588:
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L579:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L589
	extrw,u %r25,0,1,%r28
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L589:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,<> 0,%r28,.L588
	extrd,s %r28,63,32,%r25
.L576:
	bve,n (%r2)
.L587:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L579
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
	b .L591
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b,n .L591
	cmpib,> 0,%r25,.L602
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L594
	fldd 0(%r28),%fr22
.L603:
	fmpy,dbl %fr22,%fr22,%fr22
.L594:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L604
	extrw,u %r25,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L604:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,<> 0,%r28,.L603
	extrd,s %r28,63,32,%r25
.L591:
	bve,n (%r2)
.L602:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L594
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
	cmpb,*<> %r0,%r28,.L606
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
	cmpb,*= %r0,%r28,.L606
	copy %r4,%r27
	cmpib,> 0,%r3,.L619
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r5
	ldi 0,%r6
.L608:
	b .L610
	ldo -48(%r30),%r9
.L620:
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
.L610:
	extrw,u %r3,31,1,%r28
	cmpib,= 0,%r28,.L621
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
	copy %r29,%r7
	extrw,u %r3,0,1,%r31
.L621:
	add,l %r31,%r3,%r31
	extrw,s %r31,30,31,%r31
	cmpib,<> 0,%r31,.L620
	extrd,s %r31,63,32,%r3
.L606:
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
.L619:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r5
	b .L608
	ldi 0,%r6
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
	cmpb,*= %r0,%r24,.L623
	copy %r26,%r28
	add,l %r25,%r24,%r24
	copy %r26,%r31
.L624:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	ldb -1(%r25),%r20
	xor %r19,%r20,%r19
	cmpb,*<> %r25,%r24,.L624
	stb %r19,-1(%r31)
.L623:
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
	cmpib,= 0,%r31,.L636
	copy %r26,%r28
	copy %r26,%r31
	ldb,mb 1(%r31),%r19
.L646:
	extrw,s %r19,31,8,%r19
	cmpib,<>,n 0,%r19,.L646
	ldb,mb 1(%r31),%r19
.L643:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L638
.L645:
	ldb 0(%r25),%r19
	extrd,s %r19,63,8,%r20
	cmpb,*= %r0,%r20,.L644
	stb %r19,0(%r31)
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L645
	ldo 1(%r31),%r31
.L638:
	stb %r24,0(%r31)
.L635:
	bve,n (%r2)
.L644:
	cmpb,*=,n %r0,%r24,.L635
	stb %r24,0(%r31)
	b,n .L635
.L636:
	b .L643
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
	cmpb,*= %r28,%r25,.L647
	add,l %r26,%r28,%r31
.L655:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L650
.L647:
	bve,n (%r2)
.L650:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L655
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
	cmpb,*= %r0,%r20,.L661
	copy %r26,%r28
	b .L660
	copy %r25,%r19
.L659:
	cmpb,= %r20,%r31,.L658
	ldo 1(%r19),%r19
.L660:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L659
	nop
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L660
	copy %r25,%r19
.L661:
	ldi 0,%r28
.L658:
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
.L665:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r25,%r31,%r0
	copy %r26,%r28
.L664:
	cmpb,*<> %r0,%r31,.L665
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
	copy %r26,%r28
	ldb 0(%r25),%r23
	extrd,s %r23,63,8,%r23
	cmpb,*= %r0,%r23,.L669
	copy %r25,%r19
	ldb,mb 1(%r19),%r31
.L698:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L698
	ldb,mb 1(%r19),%r31
.L669:
	cmpb,*= %r25,%r19,.L671
	sub %r19,%r25,%r31
	ldo -1(%r25),%r24
	b .L678
	add,l %r24,%r31,%r24
.L695:
	cmpb,*= %r0,%r31,.L694
	ldo 1(%r28),%r28
.L678:
	ldb 0(%r28),%r31
.L699:
	extrd,s %r31,63,8,%r31
	cmpb,<> %r23,%r31,.L695
	nop
	cmpb,*=,n %r0,%r28,.L671
	ldb 0(%r28),%r20
	copy %r25,%r21
	cmpb,*<> %r0,%r20,.L673
	copy %r28,%r22
	b .L697
	ldb 0(%r21),%r31
.L696:
	cmpb,*=,n %r24,%r21,.L674
	ldb,mb 1(%r22),%r20
	extrd,u %r20,63,8,%r20
	cmpb,*= %r0,%r20,.L674
	ldo 1(%r21),%r21
.L673:
	ldb 0(%r21),%r31
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	xor %r31,%r20,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	and %r19,%r31,%r19
	bb,< %r19,24,.L696
	nop
.L674:
	ldb 0(%r21),%r31
.L697:
	cmpb,=,n %r20,%r31,.L671
	ldo 1(%r28),%r28
	b .L699
	ldb 0(%r28),%r31
.L694:
	ldi 0,%r28
.L671:
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
	b,n .L707
	fcmp,dbl,!> %fr4,%fr0
.L709:
	ftest
	b,n .L708
	bve,n (%r2)
.L708:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L703
	bve,n (%r2)
.L703:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L707:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L703
	b .L709
	fcmp,dbl,!> %fr4,%fr0
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
	cmpclr,*<> %r0,%r23,%r0
	b,n .L718
	cmpb,*>> %r23,%r25,.L720
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r25
	cmpb,*<<,n %r25,%r26,.L720
	ldb 0(%r24),%r29
	b .L717
	extrd,s %r29,63,8,%r29
.L712:
	cmpclr,*>>= %r25,%r26,%r0
	b,n .L720
.L717:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	copy %r26,%r28
	cmpb,<> %r29,%r31,.L712
	ldo 1(%r26),%r26
	ldo -1(%r23),%r31
	cmpb,*= %r0,%r31,.L710
	ldo 1(%r24),%r19
	b .L713
	copy %r26,%r20
.L715:
	ldo 1(%r20),%r20
	cmpb,*= %r0,%r31,.L710
	ldo 1(%r19),%r19
.L713:
	ldb 0(%r20),%r22
	ldb 0(%r19),%r21
	cmpb,=,n %r21,%r22,.L715
	ldo -1(%r31),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L710
	cmpb,<> %r21,%r22,.L712
	nop
.L710:
	bve,n (%r2)
.L720:
	bve (%r2)
	ldi 0,%r28
.L718:
	bve (%r2)
	copy %r26,%r28
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
	cmpb,*= %r0,%r24,.L733
	copy %r24,%r3
	ldo -48(%r30),%r29
	b,l memmove,%r2
	nop
.L733:
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
	b,n .L750
	ldi 0,%r19
.L738:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L751
	ldi 0,%r28
	fcmp,dbl,= %fr4,%fr0
	ftest
	b .L755
	addil LT'.LC29,%r27
	ldi 0,%r28
.L743:
	cmpb,*= %r0,%r19,.L747
	stw %r28,0(%r25)
	fneg,dbl %fr4,%fr4
.L747:
	bve,n (%r2)
.L751:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr23
	fldd 0(%r31),%fr22
.L742:
	ldo 1(%r28),%r28
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L742
	extrd,s %r28,63,32,%r28
	b,n .L743
.L755:
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L756
	ldi 0,%r28
	b,n .L743
.L750:
	fneg,dbl %fr4,%fr4
	b .L738
	ldi 1,%r19
.L756:
.L746:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L746
	extrd,s %r28,63,32,%r28
	b,n .L743
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
	cmpb,*= %r0,%r26,.L765
	ldi 0,%r28
.L767:
	extrd,s %r26,63+1-1,1,%r31
	and %r31,%r25,%r31
	add,l %r28,%r31,%r28
	extrd,u %r26,62,63,%r26
	cmpb,*<> %r0,%r26,.L767
	depd,z %r25,62,63,%r25
.L765:
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
	cmpb,<<= %r26,%r25,.L781
	ldi 1,%r19
.L771:
	cmpib,>,n 0,%r31,.L772
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r20,%r28,.L789
	extrd,u %r21,63,32,%r19
.L772:
	cmpb,*= %r0,%r19,.L776
	ldi 0,%r20
.L781:
	ldi 0,%r20
.L775:
	cmpb,>>,n %r31,%r28,.L778
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	extrd,u %r20,63,32,%r20
.L778:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L775
	extrd,u %r31,62,63,%r31
.L776:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L789:
	cmpib,<> 0,%r21,.L771
	nop
	b,n .L772
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
	cmpb,= %r31,%r26,.L792
	xor %r26,%r31,%r28
	depw,z %r28,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L792:
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
	std,ma %r4,128(%r30)
	copy %r26,%r28
	extrd,s %r26,0,1,%r31
	cmpb,*= %r31,%r28,.L795
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L795:
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
	extrd,u %r25,63,32,%r25
	cmpib,= 0,%r26,.L797
	ldi 0,%r28
.L798:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L798
	extrd,u %r25,63,32,%r25
.L797:
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
	cmpb,*>> %r25,%r26,.L802
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L816
.L802:
	cmpb,*=,n %r0,%r20,.L805
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L806:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L806
	ldo 8(%r31),%r31
.L805:
	cmpb,>>=,n %r21,%r23,.L801
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	add,l %r25,%r22,%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
.L807:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L807
	ldo 1(%r26),%r26
.L801:
	bve,n (%r2)
.L816:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L801
	extrd,u %r24,63,32,%r24
.L808:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L808
	stb %r31,0(%r28)
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
	cmpb,*>> %r25,%r26,.L818
	extrd,u %r24,32+31-1,31,%r20
	add,l %r25,%r21,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L833
.L818:
	cmpb,*=,n %r0,%r20,.L821
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,1,%r25,%r20
.L822:
	ldh 0(%r28),%r19
	sth %r19,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r20,%r28,.L822
	ldo 2(%r31),%r31
.L821:
	extrw,u %r21,31,1,%r21
	cmpib,= 0,%r21,.L817
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	ldb 0(%r25),%r28
	add,l %r26,%r24,%r26
	stb %r28,0(%r26)
.L817:
	bve,n (%r2)
.L833:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r21,.L817
	extrd,u %r24,63,32,%r24
.L823:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L823
	stb %r31,0(%r28)
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
	cmpclr,*<< %r28,%r26,%r0
	b,n .L849
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
.L849:
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
.L858:
	ldo 16(%r28),%r31
	mtsar %r31
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L857
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L858
	extrd,s %r31,63,32,%r28
.L857:
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
.L862:
	mtsarcm %r28
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L861
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L862
	extrd,s %r31,63,32,%r28
.L861:
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
	b .L868
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	bve (%r2)
	ldo -64(%r30),%r30
.L868:
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
	extrd,u %r26,63,16,%r26
	ldi 0,%r20
	copy %r20,%r31
	ldi 16,%r21
.L871:
	mtsarcm %r31
	extrw,s %r26,%sar,32,%r28
	extrw,u %r28,31,1,%r28
	add,l %r28,%r20,%r28
	extrd,s %r28,63,32,%r20
	ldo 1(%r31),%r19
	cmpb,<> %r21,%r19,.L871
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
.L874:
	mtsarcm %r19
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r19),%r31
	cmpb,<> %r20,%r31,.L874
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
	cmpib,= 0,%r26,.L877
	ldi 0,%r28
.L878:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L878
	extrd,u %r25,63,32,%r25
.L877:
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
	cmpib,<> 0,%r26,.L887
	ldi 0,%r28
	b,n .L882
.L883:
	and %r19,%r31,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r25,62,63,%r25
.L887:
	cmpb,*<> %r0,%r25,.L883
	extrw,s %r25,31+1-1,1,%r19
.L882:
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
	cmpb,<<= %r26,%r25,.L899
	ldi 1,%r19
.L889:
	cmpib,>,n 0,%r31,.L890
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r20,%r28,.L907
	extrd,u %r21,63,32,%r19
.L890:
	cmpb,*= %r0,%r19,.L894
	ldi 0,%r20
.L899:
	ldi 0,%r20
.L893:
	cmpb,>>,n %r31,%r28,.L896
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	extrd,u %r20,63,32,%r20
.L896:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L893
	extrd,u %r31,62,63,%r31
.L894:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L907:
	cmpib,<> 0,%r21,.L889
	nop
	b,n .L890
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
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L911:
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
	b,n .L915
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L914
	ldi 1,%r28
	ldi 0,%r28
.L914:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L915:
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
	cmpb,*= %r0,%r20,.L920
	ldi 0,%r28
.L931:
	ldi 1,%r19
	ldi 0,%r28
	ldi 1,%r23
	ldi 31,%r22
	ldi 0,%r24
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
	copy %r24,%r21
.L921:
	and %r31,%r21,%r31
	extrd,u %r31,63,8,%r31
	ldo 1(%r19),%r19
	cmpb,*<> %r0,%r31,.L922
	extrd,u %r19,63,8,%r19
.L920:
	cmpb,*=,n %r0,%r29,.L923
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L923:
	bve,n (%r2)
.L930:
	sub %r0,%r20,%r20
	extrd,s %r20,63,32,%r20
	cmpb,*<> %r0,%r20,.L931
	ldi 1,%r29
	b .L920
	ldi 0,%r28
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
	b,n .L955
.L933:
	cmpb,*<= %r0,%r25,.L957
	extrd,u %r26,63,32,%r20
	sub %r0,%r25,%r25
	ldi 1,%r28
	xor %r22,%r28,%r22
	extrd,s %r22,63,32,%r22
.L957:
	extrd,u %r25,63,32,%r31
	cmpb,<<= %r26,%r25,.L946
	ldi 1,%r19
.L935:
	cmpib,>,n 0,%r31,.L936
	add,l %r31,%r31,%r28
	extrd,u %r28,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r28,%r20,.L956
	extrd,u %r21,63,32,%r19
.L936:
	cmpb,*= %r0,%r19,.L940
	ldi 0,%r28
.L946:
	ldi 0,%r28
.L939:
	cmpb,>>,n %r31,%r20,.L942
	sub %r20,%r31,%r20
	extrd,u %r20,63,32,%r20
	or %r19,%r28,%r28
.L942:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L939
	extrd,u %r31,62,63,%r31
.L940:
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r22,%r0
	copy %r31,%r28
	bve,n (%r2)
.L956:
	cmpib,<> 0,%r21,.L935
	nop
	b,n .L936
.L955:
	sub %r0,%r26,%r26
	b .L933
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
	cmpb,*<= %r22,%r26,.L983
	extrd,u %r26,63,32,%r28
	sub %r0,%r26,%r26
	ldi 1,%r22
	extrd,u %r26,63,32,%r28
.L983:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	extrd,u %r25,63,32,%r31
	cmpb,>> %r26,%r25,.L960
	ldi 1,%r19
	b,n .L976
.L981:
	cmpiclr,<> 0,%r21,%r0
	b,n .L980
.L960:
	cmpib,> 0,%r31,.L980
	add,l %r31,%r31,%r20
	extrd,u %r20,63,32,%r31
	add,l %r19,%r19,%r21
	cmpb,<< %r20,%r28,.L981
	extrd,u %r21,63,32,%r19
.L980:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L982
.L976:
	cmpb,>>,n %r31,%r28,.L967
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
.L967:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L976
	extrd,u %r31,62,63,%r31
.L982:
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
	cmpb,<<= %r28,%r25,.L995
	ldi 1,%r19
	extrw,s %r25,31,16,%r31
.L1004:
	cmpib,>,n 0,%r31,.L986
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	add,l %r19,%r19,%r31
	cmpb,<< %r25,%r28,.L1003
	extrd,u %r31,63,16,%r19
.L986:
	cmpb,*= %r0,%r19,.L990
	ldi 0,%r31
.L995:
	ldi 0,%r31
.L989:
	cmpb,>>,n %r25,%r28,.L992
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	or %r19,%r31,%r31
	extrd,u %r31,63,16,%r31
.L992:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L989
	extrd,u %r25,62,63,%r25
.L990:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L1003:
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	bb,<,n %r31,16,.L1004
	extrw,s %r25,31,16,%r31
	b,n .L986
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
	cmpb,*<<= %r26,%r25,.L1016
	depdi,z 1,32,4,%r20
	and %r25,%r20,%r19
.L1025:
	cmpb,*<>,n %r0,%r19,.L1007
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L1024
	depd,z %r31,62,63,%r31
.L1007:
	cmpb,*= %r0,%r31,.L1011
	ldi 0,%r19
.L1016:
	ldi 0,%r19
.L1010:
	cmpb,*>>,n %r25,%r28,.L1013
	sub %r28,%r25,%r28
	or %r19,%r31,%r19
.L1013:
	extrd,u %r31,62,63,%r31
	cmpb,*<> %r0,%r31,.L1010
	extrd,u %r25,62,63,%r25
.L1011:
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
.L1024:
	cmpb,*<>,n %r0,%r31,.L1025
	and %r25,%r20,%r19
	b,n .L1007
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
	bb,>= %r25,26,.L1027
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	ldi 0,%r31
.L1028:
	depd,z %r26,31,32,%r26
	bve (%r2)
	or %r26,%r31,%r28
.L1027:
	cmpb,*= %r0,%r28,.L1030
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
	b .L1028
	extrd,s %r19,63,32,%r26
.L1030:
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
	bb,>= %r24,25,.L1032
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	depd,z %r25,%sar,64,%r28
	bve (%r2)
	ldi 0,%r29
.L1032:
	cmpb,*= %r0,%r28,.L1035
	subi 63,%r28,%r31
	mtsar %r31
	depd,z %r25,%sar,64,%r29
	subi 64,%r28,%r28
	mtsar %r28
	shrpd %r0,%r25,%sar,%r25
	mtsar %r31
	depd,z %r26,%sar,64,%r28
	bve (%r2)
	or %r25,%r28,%r28
.L1035:
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
	bb,>= %r25,26,.L1037
	extrd,s %r25,63,32,%r31
	extrd,s %r26,0+32-1,32,%r26
	extrw,s %r26,0,1,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	extrw,s %r26,%sar,32,%r26
	extrd,u %r26,63,32,%r26
.L1038:
	depd,z %r28,31,32,%r28
	bve (%r2)
	or %r28,%r26,%r28
.L1037:
	cmpb,*= %r0,%r31,.L1040
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
	b .L1038
	extrd,u %r19,63,32,%r26
.L1040:
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
	bb,>= %r24,25,.L1042
	extrd,s %r24,63,32,%r31
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	extrd,s %r26,%sar,64,%r29
.L1042:
	cmpb,*= %r0,%r31,.L1045
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	bve (%r2)
	or %r26,%r29,%r29
.L1045:
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
	bb,< %r26,30,.L1051
	ldi 0,%r19
	subi 2,%r26,%r19
.L1051:
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
	b,n .L1058
	cmpb,< %r28,%r31,.L1059
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1058
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1059
	bve (%r2)
	ldi 1,%r28
.L1058:
	bve (%r2)
	ldi 0,%r28
.L1059:
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
	b,n .L1064
	cmpb,< %r28,%r31,.L1065
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1064
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L1065
	ldi 1,%r28
	ldo -1(%r28),%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1064:
	ldi 0,%r28
	ldo -1(%r28),%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1065:
	ldi 2,%r28
	ldo -1(%r28),%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
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
	b,n .L1070
	cmpclr,*>= %r24,%r26,%r0
	b,n .L1069
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1070
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1070:
	bve (%r2)
	ldi 0,%r28
.L1069:
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
	cmpb,*<> %r0,%r25,.L1075
	ldo -48(%r30),%r29
	ldi 0,%r28
	cmpb,*<> %r28,%r26,.L1079
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1075:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1079:
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
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
	bb,>= %r25,26,.L1081
	extrd,s %r25,63,32,%r31
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	ldi 0,%r28
.L1082:
	depd,z %r28,31,32,%r28
	bve (%r2)
	or %r28,%r26,%r28
.L1081:
	cmpb,*= %r0,%r31,.L1084
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
	b .L1082
	extrd,u %r19,63,32,%r26
.L1084:
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
	bb,>= %r24,25,.L1086
	extrd,s %r24,63,32,%r31
	mtsar %r24
	shrpd %r0,%r26,%sar,%r29
	bve (%r2)
	ldi 0,%r28
.L1086:
	cmpb,*= %r0,%r31,.L1089
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	bve (%r2)
	or %r26,%r29,%r29
.L1089:
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
	b .L1105
	fldd 0(%r19),%fr4
.L1110:
	fmpy,dbl %fr22,%fr22,%fr22
.L1105:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L1112
	extrw,u %r31,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L1112:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,<> 0,%r28,.L1110
	extrd,s %r28,63,32,%r31
	cmpiclr,<= 0,%r25,%r0
	b,n .L1111
	bve,n (%r2)
.L1111:
	fldd 0(%r19),%fr22
	bve (%r2)
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
	b .L1116
	fldw 0(%r19),%fr4R
.L1121:
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L1116:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L1123
	extrw,u %r31,0,1,%r28
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L1123:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,<> 0,%r28,.L1121
	extrd,s %r28,63,32,%r31
	cmpiclr,<= 0,%r25,%r0
	b,n .L1122
	bve,n (%r2)
.L1122:
	fldw 0(%r19),%fr22R
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
	b,n .L1128
	cmpb,<< %r28,%r31,.L1129
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1128
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1129
	bve (%r2)
	ldi 1,%r28
.L1128:
	bve (%r2)
	ldi 0,%r28
.L1129:
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
	b,n .L1134
	cmpb,<< %r28,%r31,.L1135
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1134
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L1135
	ldi 1,%r28
	ldo -1(%r28),%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1134:
	ldi 0,%r28
	ldo -1(%r28),%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1135:
	ldi 2,%r28
	ldo -1(%r28),%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
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
	b,n .L1140
	cmpclr,*>>= %r24,%r26,%r0
	b,n .L1139
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1140
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1140:
	bve (%r2)
	ldi 0,%r28
.L1139:
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
