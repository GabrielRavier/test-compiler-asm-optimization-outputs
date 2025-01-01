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
	ldb 0(%r25),%r19
	stb %r19,0(%r31)
	ldo 1(%r31),%r31
	cmpb,*<> %r31,%r24,.L8
	ldo 1(%r25),%r25
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
	b .L28
	ldi 0,%r28
.L22:
	cmpb,*= %r0,%r23,.L21
	ldo 1(%r26),%r26
.L19:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	cmpb,<> %r24,%r28,.L22
	ldo 1(%r25),%r25
	bve (%r2)
	ldo 1(%r26),%r28
.L21:
	ldi 0,%r28
.L28:
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
	cmpb,*<> %r0,%r24,.L30
	extrd,u %r25,63,8,%r25
	b .L35
	copy %r24,%r28
.L32:
	cmpb,*= %r0,%r24,.L33
	ldo 1(%r26),%r26
.L30:
	ldb 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L32
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L33:
	copy %r24,%r28
.L35:
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
	b,n .L41
.L48:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	cmpb,<> %r31,%r28,.L47
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	cmpb,*<> %r0,%r24,.L48
	ldo 1(%r25),%r25
.L41:
	bve (%r2)
	copy %r24,%r28
.L47:
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
	cmpb,*= %r0,%r24,.L50
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
.L50:
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
	b .L55
	ldo -1(%r26),%r26
.L57:
	ldb 0(%r28),%r31
	cmpb,= %r25,%r31,.L54
	ldo -1(%r24),%r24
.L55:
	cmpb,*<> %r26,%r24,.L57
	copy %r24,%r28
	ldi 0,%r28
.L54:
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
	cmpb,*= %r0,%r24,.L61
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memset,%r2
	extrw,u %r25,31,8,%r25
.L61:
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
	cmpb,*= %r0,%r31,.L63
	copy %r26,%r28
	ldb,mb 1(%r25),%r31
.L69:
	stb,mb %r31,1(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L69
	ldb,mb 1(%r25),%r31
.L63:
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
	cmpb,*<> %r0,%r31,.L71
	copy %r26,%r28
	b,n .L70
.L73:
	extrd,s %r31,63,8,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L70
.L71:
	extrw,u %r31,31,8,%r31
	cmpb,<>,n %r25,%r31,.L73
	ldb,mb 1(%r28),%r31
.L70:
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
	b .L79
	copy %r26,%r28
.L82:
	cmpb,*= %r0,%r31,.L81
	ldo 1(%r28),%r28
.L79:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<> %r25,%r31,.L82
	nop
	bve,n (%r2)
.L81:
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
	cmpb,=,n %r31,%r28,.L84
	extrd,u %r19,63,8,%r28
	b .L91
	extrw,u %r31,31,8,%r31
.L86:
	ldb,mb 1(%r25),%r31
	extrd,s %r19,63,8,%r28
	extrd,s %r31,63,8,%r31
	cmpclr,= %r31,%r28,%r0
	b,n .L89
.L84:
	cmpb,*<>,n %r0,%r28,.L86
	ldb,mb 1(%r26),%r19
	extrw,u %r31,31,8,%r31
	sub %r28,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L89:
	extrd,u %r19,63,8,%r28
	extrw,u %r31,31,8,%r31
.L91:
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
	cmpib,=,n 0,%r28,.L95
	copy %r26,%r28
	ldb,mb 1(%r28),%r31
.L97:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L97
	ldb,mb 1(%r28),%r31
	bve (%r2)
	sub %r28,%r26,%r28
.L95:
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
	cmpb,*= %r0,%r24,.L105
	ldo -1(%r24),%r23
	copy %r25,%r20
	ldb 0(%r26),%r28
	cmpb,*<> %r0,%r28,.L102
	add,l %r25,%r23,%r23
	b .L112
	ldb 0(%r25),%r21
.L114:
	cmpb,*=,n %r23,%r20,.L107
	ldb,mb 1(%r26),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*=,n %r0,%r28,.L113
	copy %r22,%r20
.L102:
	ldb 0(%r20),%r21
	xor %r21,%r28,%r19
	extrw,s,>= %r21,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r19,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r31,%r31
	ldo -1(%r19),%r19
	and %r31,%r19,%r31
	bb,< %r31,24,.L114
	ldo 1(%r20),%r22
.L107:
	extrd,s %r28,63,32,%r28
.L101:
	sub %r28,%r21,%r28
.L115:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L105:
	bve (%r2)
	copy %r24,%r28
.L113:
	b .L101
	ldb 1(%r20),%r21
.L112:
	b .L115
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
	cmpib,*>= 1,%r24,.L116
	depdi 0,63,1,%r24
	add,l %r26,%r24,%r19
.L118:
	ldb 1(%r26),%r31
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r31,-2(%r25)
	cmpb,*<> %r19,%r26,.L118
	stb %r28,-1(%r25)
.L116:
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
	cmpb,>>= %r19,%r26,.L126
	ldi 1,%r31
	ldi 0,%r31
.L126:
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
	cmpib,>>= 4,%r26,.L136
	ldi 1,%r19
	ldi 0,%r19
.L136:
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
	cmpb,>>=,n %r28,%r26,.L144
	ldi 31,%r28
	cmpb,>>= %r28,%r31,.L144
	ldo -40(%r31),%r19
	ldo -8192(%r19),%r19
	cmpib,>>= 1,%r19,.L140
	ldi 1,%r28
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpiclr,<< 2,%r31,%r31
	ldi 1,%r31
	extrd,s %r31,63,32,%r28
.L140:
	bve,n (%r2)
.L144:
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
	cmpb,>>= %r31,%r26,.L161
	extrd,u %r26,63,32,%r28
	ldo -42(%r28),%r19
	ldil L'49152,%r31
	ldo -8192(%r19),%r19
	ldo -2091(%r31),%r31
	cmpb,<< %r31,%r19,.L162
	ldil L'16384,%r31
.L157:
	bve (%r2)
	ldi 1,%r28
.L162:
	ldo -8153(%r31),%r31
	cmpb,>>= %r31,%r28,.L157
	ldil L'-57344,%r31
	ldi 8184,%r19
	add,l %r28,%r31,%r31
	cmpb,>>= %r19,%r31,.L157
	depwi,z -1,29,14,%r19
	ldil L'1048576,%r31
	sub %r28,%r19,%r19
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L158
	depwi,z -1,30,15,%r31
	andcm %r31,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L161:
	ldo 1(%r26),%r28
	extrw,u %r28,31,7,%r28
	cmpiclr,>>= 32,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L158:
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
	cmpib,>>= 9,%r26,.L164
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r28
	cmpiclr,<< 5,%r28,%r28
	ldi 1,%r28
	extrd,s %r28,63,32,%r28
.L164:
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
	b .L168
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L172
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L174
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	fldd 0(%r28),%fr4
.L168:
	bve,n (%r2)
.L174:
	bve (%r2)
	fsub,dbl %fr4,%fr5,%fr4
.L172:
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
	b .L176
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L180
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L182
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	fldw 0(%r28),%fr4R
.L176:
	bve,n (%r2)
.L182:
	bve (%r2)
	fsub,sgl %fr4R,%fr5R,%fr4R
.L180:
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
	b .L190
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L191
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,<> %r31,%r19,.L195
	extrd,u %r28,0,1,%r28
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L190
	fcpy,dbl %fr4,%fr5
.L190:
	fcpy,dbl %fr5,%fr4
.L184:
	bve (%r2)
	ldo -64(%r30),%r30
.L195:
	cmpb,*<> %r0,%r28,.L184
	fcpy,dbl %fr5,%fr4
.L191:
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
	b .L202
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L203
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,<> %r31,%r28,.L207
	extrd,s %r28,63,32,%r19
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L202
	fcpy,sgl %fr4R,%fr5R
.L202:
	fcpy,sgl %fr5R,%fr4R
.L196:
	bve (%r2)
	ldo -64(%r30),%r30
.L207:
	cmpb,*<> %r0,%r19,.L196
	fcpy,sgl %fr5R,%fr4R
.L203:
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
	cmpb,*<> %r0,%r28,.L216
	copy %r4,%r27
	copy %r27,%r4
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r7,%r25
	cmpb,*<> %r0,%r28,.L215
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L210
	extrd,u %r3,0,1,%r19
	cmpb,*= %r0,%r19,.L220
	copy %r3,%r28
.L216:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L210:
	copy %r6,%r24
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L219
.L215:
	copy %r3,%r28
.L220:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L219:
	copy %r6,%r3
	b .L215
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
	b .L227
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L221
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L223
	extrd,u %r28,0,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L227
.L221:
	bve (%r2)
	ldo -64(%r30),%r30
.L223:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L221
.L227:
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
	b .L238
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L232
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L234
	extrd,s %r28,63,32,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L238
.L232:
	bve (%r2)
	ldo -64(%r30),%r30
.L234:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L232
.L238:
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
	cmpb,*<> %r0,%r28,.L249
	copy %r4,%r27
	copy %r27,%r4
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r5,%r25
	cmpb,*<> %r0,%r28,.L251
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L245
	extrd,u %r6,0,1,%r19
	cmpb,*= %r0,%r19,.L255
	copy %r3,%r28
.L251:
	copy %r6,%r28
	copy %r7,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L245:
	copy %r3,%r24
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpclr,*<= %r0,%r28,%r0
	b,n .L254
.L249:
	copy %r3,%r28
.L255:
	copy %r5,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L254:
	copy %r6,%r3
	b .L249
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
	cmpib,= 0,%r26,.L259
	copy %r1,%r28
	addil LT'digits,%r27
	ldd RT's.0(%r28),%r28
	ldd RT'digits(%r1),%r21
	copy %r28,%r19
.L258:
	extrd,u %r31,63,6,%r20
	ldb %r20(%r21),%r20
	stb %r20,0(%r19)
	extrd,u %r31,57,58,%r31
	cmpb,*<> %r0,%r31,.L258
	ldo 1(%r19),%r19
	bve (%r2)
	stb %r0,0(%r19)
.L259:
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
	cmpb,*=,n %r0,%r25,.L269
	ldd 0(%r25),%r28
	std %r25,8(%r26)
	std %r28,0(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L263:
	bve,n (%r2)
.L269:
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
	cmpb,*=,n %r0,%r28,.L271
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L271:
	ldd 8(%r26),%r31
	cmpclr,*= %r0,%r31,%r0
	std %r28,0(%r31)
.L270:
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
	cmpb,*= %r0,%r7,.L280
	copy %r23,%r8
	copy %r25,%r3
	ldi 0,%r5
	b .L282
	ldo -48(%r30),%r12
.L294:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r7,.L280
	add,l %r3,%r8,%r3
.L282:
	copy %r27,%r4
	copy %r3,%r25
	copy %r9,%r26
	copy %r12,%r29
	ldd 16(%r11),%r2
	bve,l (%r2),%r2
	ldd 24(%r11),%r27
	copy %r3,%r6
	cmpb,*<> %r0,%r28,.L294
	copy %r4,%r27
.L279:
	copy %r6,%r28
.L295:
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
.L280:
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
	cmpb,*= %r0,%r8,.L279
	add,l %r10,%r6,%r6
	copy %r8,%r24
	copy %r9,%r25
	ldo -48(%r30),%r29
	b,l memmove,%r2
	copy %r6,%r26
	b .L295
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
	cmpb,*= %r0,%r10,.L297
	copy %r26,%r6
	copy %r25,%r3
	ldi 0,%r5
	b .L299
	ldo -48(%r30),%r11
.L307:
	ldo 1(%r5),%r5
	cmpb,*= %r5,%r10,.L297
	add,l %r3,%r8,%r3
.L299:
	copy %r27,%r4
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	copy %r3,%r9
	cmpb,*<> %r0,%r28,.L307
	copy %r4,%r27
.L296:
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
.L297:
	b .L296
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
	cmpib,>>= 4,%r28,.L331
	ldi 32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L337
	ldi 43,%r28
.L331:
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
	cmpb,= %r28,%r31,.L315
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L335
	ldb 1(%r26),%r19
	extrd,s %r19,63,8,%r19
	ldo -48(%r19),%r28
	cmpib,<< 9,%r28,.L324
	ldo 1(%r26),%r26
	ldi 1,%r22
.L318:
	ldi 0,%r28
.L321:
	ldo -48(%r19),%r19
	ldb,mb 1(%r26),%r21
	shladd,l %r28,2,%r28,%r28 
	extrw,s %r19,31,8,%r20
	add,l %r28,%r28,%r31
	extrd,s %r21,63,8,%r19
	sub %r31,%r20,%r28
	ldo -48(%r19),%r21
	cmpib,>>= 9,%r21,.L321
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r22,.L320
	sub %r20,%r31,%r20
	extrd,s %r20,63,32,%r28
.L320:
	bve,n (%r2)
.L335:
	ldb 0(%r26),%r19
	extrd,s %r19,63,8,%r19
	ldo -48(%r19),%r28
	cmpib,>>= 9,%r28,.L318
	ldi 0,%r22
.L324:
	ldi 0,%r28
.L336:
	bve,n (%r2)
.L315:
	ldb 1(%r26),%r19
	ldi 0,%r22
	extrd,s %r19,63,8,%r19
	ldo -48(%r19),%r28
	cmpib,>>= 9,%r28,.L318
	ldo 1(%r26),%r26
	b .L336
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
	cmpib,>>= 4,%r28,.L361
	ldi 32,%r20
	ldi 32,%r28
	xor %r28,%r19,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,>= %r28,24,.L367
	ldi 43,%r28
.L361:
	ldb,mb 1(%r26),%r28
.L368:
	extrd,s %r28,63,8,%r31
	ldo -9(%r31),%r19
	cmpib,>>=,n 4,%r19,.L368
	ldb,mb 1(%r26),%r28
	xor %r20,%r28,%r28
	extrw,s,>= %r28,31,8,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	bb,<,n %r28,24,.L368
	ldb,mb 1(%r26),%r28
	ldi 43,%r28
.L367:
	cmpb,= %r28,%r31,.L345
	ldi 45,%r28
	cmpb,<>,n %r28,%r31,.L365
	ldb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,<< 9,%r28,.L354
	ldo 1(%r26),%r26
	ldi 1,%r22
.L348:
	ldi 0,%r28
.L351:
	shladd,l %r28,2,%r28,%r28
	ldo -48(%r31),%r31
	ldb,mb 1(%r26),%r21
	extrd,s %r31,63,8,%r19
	depd,z %r28,62,63,%r20
	extrd,s %r21,63,8,%r31
	ldo -48(%r31),%r21
	cmpib,>>= 9,%r21,.L351
	sub %r20,%r19,%r28
	sub %r19,%r20,%r19
	cmpiclr,*<> 0,%r22,%r0
	copy %r19,%r28
	bve,n (%r2)
.L365:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L348
	ldi 0,%r22
.L354:
	ldi 0,%r28
.L366:
	bve,n (%r2)
.L345:
	ldb 1(%r26),%r31
	ldi 0,%r22
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r28
	cmpib,>>= 9,%r28,.L348
	ldo 1(%r26),%r26
	b .L366
	ldi 0,%r28
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
	cmpb,*= %r0,%r24,.L371
	fldd -200(%r30),%fr12
	extrd,u %r23,31,32,%r28
	ldo -48(%r30),%r10
	std %r28,-200(%r30)
	b .L374
	fldd -200(%r30),%fr13
.L383:
	cmpb,*=,n %r0,%r28,.L370
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	cmpb,*= %r0,%r5,.L371
	add,l %r3,%r28,%r7
.L374:
	extrd,u %r5,62,63,%r6
.L384:
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
	cmpib,<= 0,%r28,.L383
	uaddcm %r5,%r6,%r5
	copy %r6,%r5
	cmpb,*<> %r0,%r5,.L384
	extrd,u %r5,62,63,%r6
.L371:
	ldi 0,%r3
.L370:
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
	ldo -48(%r30),%r10
	std %r9,-192(%r30)
	copy %r26,%r9
	std %r8,-184(%r30)
	copy %r22,%r8
	std %r7,-176(%r30)
	copy %r21,%r7
	std %r6,-168(%r30)
	copy %r25,%r6
	std %r5,-160(%r30)
	extrd,s %r24,63,32,%r5
	std %r11,-208(%r30)
	std %r4,-152(%r30)
	std %r3,-144(%r30)
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	std %r23,-216(%r30)
	fldd -216(%r30),%fr12
	std %r28,-216(%r30)
	cmpib,<> 0,%r24,.L386
	fldd -216(%r30),%fr13
	b .L385
	ldi 0,%r3
.L397:
	ldo -1(%r5),%r5
	ldd -216(%r30),%r28
	extrw,s %r5,30,31,%r5
	extrd,s %r5,63,32,%r5
	cmpb,*= %r0,%r5,.L389
	add,l %r3,%r28,%r6
.L386:
	extrw,s %r5,30,31,%r28
.L398:
	std %r28,-216(%r30)
	extrd,s %r5,62,63,%r11
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
	copy %r7,%r24
	depd,z %r3,31,32,%r3
	copy %r9,%r26
	add,l %r3,%r28,%r3
	copy %r10,%r29
	add,l %r6,%r3,%r3
	copy %r3,%r25
	ldd 16(%r8),%r2
	bve,l (%r2),%r2
	ldd 24(%r8),%r27
	cmpb,*= %r0,%r28,.L385
	copy %r4,%r27
	cmpib,<,n 0,%r28,.L397
	fstd %fr12,-216(%r30)
	copy %r11,%r5
	cmpb,*<> %r0,%r5,.L398
	extrw,s %r5,30,31,%r28
.L389:
	ldi 0,%r3
.L385:
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
	cmpb,*<> %r0,%r31,.L407
	extrd,u %r25,63,32,%r25
	b .L412
	copy %r31,%r28
.L409:
	cmpib,= 0,%r28,.L410
	extrd,u %r28,63,32,%r31
.L407:
	cmpb,<>,n %r31,%r25,.L409
	ldw,mb 4(%r26),%r28
	bve (%r2)
	copy %r26,%r28
.L410:
	copy %r31,%r28
.L412:
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
	cmpb,= %r20,%r19,.L414
	ldi -1,%r28
	b,n .L421
.L416:
	ldw,mb 4(%r25),%r31
	extrd,u %r28,63,32,%r19
	cmpb,<> %r28,%r31,.L415
	extrd,u %r31,63,32,%r20
.L414:
	cmpb,*<>,n %r0,%r19,.L416
	ldw,mb 4(%r26),%r28
.L415:
	ldi -1,%r28
.L421:
	cmpclr,<<= %r20,%r19,%r0
	b,n .L417
	cmpclr,>>= %r20,%r19,%r19
	ldi 1,%r19
	extrd,s %r19,63,32,%r28
.L417:
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
.L423:
	ldw 0(%r25),%r19
	stw %r19,0(%r31)
	ldo 4(%r31),%r31
	cmpb,*<> %r0,%r19,.L423
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
	cmpib,=,n 0,%r28,.L428
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L430:
	cmpib,<>,n 0,%r31,.L430
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L428:
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
	b,n .L439
.L447:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r31
	cmpclr,= %r28,%r31,%r0
	b,n .L449
	cmpb,*= %r0,%r28,.L450
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L447
	ldo 4(%r25),%r25
.L439:
	bve (%r2)
	copy %r24,%r28
.L450:
	ldw 0(%r25),%r31
.L449:
	cmpclr,<<= %r31,%r28,%r0
	b,n .L448
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L448:
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
	cmpb,*<> %r0,%r24,.L452
	extrd,u %r25,63,32,%r25
	b .L457
	copy %r24,%r28
.L454:
	cmpb,*= %r0,%r24,.L455
	ldo 4(%r26),%r26
.L452:
	ldw 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L454
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L455:
	copy %r24,%r28
.L457:
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
	b,n .L465
.L472:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,<> %r19,%r31,.L471
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L472
	ldo 4(%r25),%r25
.L465:
	bve (%r2)
	copy %r24,%r28
.L471:
	extrd,u %r31,63,32,%r28
	cmpb,<< %r31,%r19,.L473
	extrd,u %r19,63,32,%r20
	cmpclr,>>= %r20,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L473:
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
	cmpb,*= %r0,%r24,.L475
	copy %r26,%r3
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
.L475:
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
	cmpb,*= %r25,%r26,.L487
	copy %r26,%r28
	sub %r26,%r25,%r19
	depd,z %r24,61,62,%r20
	cmpb,*<<= %r20,%r19,.L493
	ldo -1(%r24),%r31
	cmpb,*=,n %r0,%r24,.L487
	shladd,l %r31,2,%r25,%r19
	shladd,l %r31,2,%r26,%r31
.L484:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	ldo -4(%r31),%r31
	copy %r19,%r20
	cmpb,*<> %r20,%r25,.L484
	ldo -4(%r19),%r19
.L487:
	bve,n (%r2)
.L493:
	cmpb,*= %r0,%r24,.L487
	copy %r26,%r19
.L482:
	ldw 0(%r25),%r20
	stw %r20,0(%r19)
	ldo 4(%r19),%r19
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L482
	ldo 4(%r25),%r25
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
	cmpb,*= %r0,%r24,.L495
	ldo -1(%r24),%r31
	copy %r26,%r19
.L496:
	stw %r25,0(%r19)
	ldo -1(%r31),%r31
	cmpib,*<> -1,%r31,.L496
	ldo 4(%r19),%r19
.L495:
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
	cmpb,*<<= %r25,%r26,.L502
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L501
	add,l %r25,%r24,%r25
.L504:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L504
	stb,mb %r31,-1(%r25)
.L501:
	bve,n (%r2)
.L502:
	cmpb,*= %r25,%r26,.L501
	nop
	cmpb,*= %r0,%r24,.L501
	add,l %r26,%r24,%r24
.L505:
	ldb 0(%r26),%r28
	stb %r28,0(%r25)
	ldo 1(%r26),%r26
	cmpb,*<> %r26,%r24,.L505
	ldo 1(%r25),%r25
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
	b .L530
	ldi 32,%r20
.L528:
	cmpclr,<> %r20,%r19,%r0
	b,n .L529
.L530:
	mtsar %r31
	ldo 1(%r31),%r19
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	cmpb,*= %r0,%r28,.L528
	extrd,u %r19,63,32,%r31
	extrd,s %r19,63,32,%r28
.L529:
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
	cmpib,= 0,%r26,.L535
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L533
	ldi 1,%r28
.L534:
	extrw,s %r19,30,31,%r31
	ldo 1(%r28),%r28
	extrd,s %r31,63,32,%r19
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L534
	extrd,s %r28,63,32,%r28
.L533:
	bve,n (%r2)
.L535:
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
	b .L539
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L540
	ldi 0,%r28
.L540:
	extrd,s %r28,63,32,%r28
.L539:
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
	b .L543
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L544
	ldi 0,%r28
.L544:
	extrd,s %r28,63,32,%r28
.L543:
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
	cmpb,*> %r0,%r31,.L547
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
	b,n .L550
.L548:
	extrd,s %r3,63,32,%r28
.L547:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L550:
	b .L548
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
	b .L553
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b,n .L553
	cmpib,> 0,%r25,.L565
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	fldw 0(%r28),%fr22R
.L554:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L568
	extrw,u %r25,0,1,%r28
.L556:
	fmpy,sgl %fr4R,%fr22R,%fr4R
	extrw,u %r25,0,1,%r28
.L568:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L553
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L556
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r25,0,1,%r28
.L567:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L556
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L567
	extrw,u %r25,0,1,%r28
.L553:
	bve,n (%r2)
.L565:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L554
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
	b .L570
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b,n .L570
	cmpib,> 0,%r25,.L582
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	fldd 0(%r28),%fr22
.L571:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L585
	extrw,u %r25,0,1,%r28
.L573:
	fmpy,dbl %fr4,%fr22,%fr4
	extrw,u %r25,0,1,%r28
.L585:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L570
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L573
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r25,0,1,%r28
.L584:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	extrw,u %r25,31,1,%r31
	cmpib,<> 0,%r31,.L573
	fmpy,dbl %fr22,%fr22,%fr22
	b .L584
	extrw,u %r25,0,1,%r28
.L570:
	bve,n (%r2)
.L582:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L571
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
	cmpb,*<> %r0,%r28,.L587
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
	cmpb,*= %r0,%r28,.L587
	copy %r4,%r27
	cmpib,> 0,%r9,.L601
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r5
.L589:
	extrw,u %r9,31,1,%r28
	cmpib,= 0,%r28,.L602
	extrw,u %r9,0,1,%r31
.L591:
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
.L602:
	add,l %r31,%r9,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L587
	extrd,s %r31,63,32,%r9
	ldo -48(%r30),%r8
.L592:
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
	cmpib,<> 0,%r19,.L591
	copy %r29,%r3
	extrw,u %r9,0,1,%r31
	add,l %r31,%r9,%r31
	extrw,s %r31,30,31,%r31
	b .L592
	extrd,s %r31,63,32,%r9
.L587:
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
.L601:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	b .L589
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
	cmpb,*= %r0,%r24,.L604
	copy %r26,%r28
	add,l %r25,%r24,%r24
	copy %r26,%r31
.L605:
	ldb 0(%r31),%r19
	ldb 0(%r25),%r20
	ldo 1(%r31),%r31
	xor %r19,%r20,%r19
	ldo 1(%r25),%r25
	cmpb,*<> %r25,%r24,.L605
	stb %r19,-1(%r31)
.L604:
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
	cmpib,= 0,%r31,.L617
	copy %r26,%r28
	copy %r26,%r31
	ldb,mb 1(%r31),%r19
.L625:
	extrw,s %r19,31,8,%r19
	cmpib,<>,n 0,%r19,.L625
	ldb,mb 1(%r31),%r19
.L623:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L614
.L624:
	ldb 0(%r25),%r19
	stb %r19,0(%r31)
	extrd,s %r19,63,8,%r19
	cmpb,*= %r0,%r19,.L616
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L624
	ldo 1(%r31),%r31
.L614:
	stb %r0,0(%r31)
.L616:
	bve,n (%r2)
.L617:
	b .L623
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
	cmpb,*= %r28,%r25,.L626
	add,l %r26,%r28,%r31
.L634:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L629
.L626:
	bve,n (%r2)
.L629:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L634
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
	cmpb,*= %r0,%r20,.L640
	copy %r26,%r28
	b .L639
	copy %r25,%r19
.L638:
	cmpclr,<> %r20,%r31,%r0
	b,n .L637
.L639:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L638
	ldo 1(%r19),%r19
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L639
	copy %r25,%r19
.L640:
	copy %r20,%r28
.L637:
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
.L644:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r31,%r25,%r0
	copy %r26,%r28
.L643:
	cmpb,*<> %r0,%r31,.L644
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
	cmpb,*= %r0,%r22,.L658
	copy %r25,%r31
	ldb,mb 1(%r31),%r28
.L669:
	extrw,s %r28,31,8,%r28
	cmpib,<>,n 0,%r28,.L669
	ldb,mb 1(%r31),%r28
	cmpb,*= %r25,%r31,.L658
	sub %r31,%r25,%r28
	ldo -1(%r25),%r23
	b .L655
	add,l %r23,%r28,%r23
.L667:
	cmpb,*= %r0,%r28,.L646
	ldo 1(%r26),%r26
.L655:
	ldb 0(%r26),%r31
.L670:
	extrd,s %r31,63,8,%r28
	cmpb,<> %r22,%r28,.L667
	extrd,u %r31,63,8,%r19
	copy %r25,%r28
	b .L650
	copy %r26,%r21
.L668:
	xor %r31,%r19,%r20
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	extrw,s,>= %r20,31,8,%r20
	subi 0,%r20,%r20
	sub %r0,%r31,%r31
	ldo -1(%r20),%r20
	and %r31,%r20,%r31
	bb,>=,n %r31,24,.L651
	ldb,mb 1(%r21),%r31
	extrd,u %r31,63,8,%r19
	cmpb,*= %r0,%r19,.L651
	ldo 1(%r28),%r28
.L650:
	cmpb,*<> %r23,%r28,.L668
	ldb 0(%r28),%r31
.L651:
	ldb 0(%r28),%r28
	cmpb,=,n %r19,%r28,.L658
	ldo 1(%r26),%r26
	b .L670
	ldb 0(%r26),%r31
.L658:
	copy %r26,%r28
.L646:
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
	b,n .L678
	fcmp,dbl,!> %fr4,%fr0
	ftest
	b,n .L679
	bve,n (%r2)
.L679:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L674
	bve,n (%r2)
.L674:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L678:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L674
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
	cmpclr,*<> %r0,%r23,%r0
	b,n .L687
	cmpb,*>> %r23,%r25,.L689
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r25
	cmpb,*<<,n %r25,%r26,.L689
	ldb 0(%r24),%r29
	add,l %r24,%r23,%r22
	b .L686
	extrd,s %r29,63,8,%r29
.L683:
	cmpclr,*<<= %r26,%r25,%r0
	b,n .L689
.L686:
	ldb 0(%r26),%r31
	copy %r26,%r28
	extrd,s %r31,63,8,%r31
	cmpb,<> %r29,%r31,.L683
	ldo 1(%r26),%r26
	cmpib,*= 1,%r23,.L681
	ldo 1(%r24),%r31
	copy %r26,%r19
.L684:
	ldb 0(%r19),%r21
	ldb 0(%r31),%r20
	cmpb,<> %r20,%r21,.L683
	ldo 1(%r31),%r31
	cmpb,*<> %r22,%r31,.L684
	ldo 1(%r19),%r19
.L681:
	bve,n (%r2)
.L689:
	bve (%r2)
	ldi 0,%r28
.L687:
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
	copy %r26,%r5
	std %r3,-128(%r30)
	std %r4,-136(%r30)
	cmpb,*= %r0,%r24,.L693
	copy %r24,%r3
	ldo -48(%r30),%r29
	b,l memmove,%r2
	nop
.L693:
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
	b .L714
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L700
	ldi 0,%r19
	addil LT'.LC31,%r27
	ldd RT'.LC31(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L715
	fcmp,dbl,= %fr4,%fr0
	stw %r0,0(%r25)
.L697:
	bve,n (%r2)
.L709:
	fcpy,dbl %fr22,%fr4
	addil LT'.LC30,%r27
	ldd RT'.LC30(%r1),%r31
	ldi 1,%r19
.L700:
	addil LT'.LC31,%r27
	ldi 0,%r28
	ldd RT'.LC31(%r1),%r20
	fldd 0(%r31),%fr23
	fldd 0(%r20),%fr22
.L706:
	fmpy,dbl %fr4,%fr22,%fr4
	ldo 1(%r28),%r28
	fcmp,dbl,!>= %fr4,%fr23
	ftest
	b .L706
	extrd,s %r28,63,32,%r28
	cmpb,*= %r0,%r19,.L697
	stw %r28,0(%r25)
.L720:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L714:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!<= %fr4,%fr22
	ftest
	b .L709
	fneg,dbl %fr4,%fr22
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r28
	fldd 0(%r28),%fr23
	fcmp,dbl,!> %fr4,%fr23
	ftest
	b .L710
	addil LT'.LC31,%r27
	b .L697
	stw %r0,0(%r25)
.L715:
	ftest
	b,n .L712
	stw %r0,0(%r25)
	b,n .L697
.L710:
	ldi 1,%r19
	ldd RT'.LC31(%r1),%r31
.L701:
	fcpy,dbl %fr22,%fr4
	ldi 0,%r28
	fldd 0(%r31),%fr22
.L708:
	fadd,dbl %fr4,%fr4,%fr4
	ldo -1(%r28),%r28
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L708
	extrd,s %r28,63,32,%r28
	cmpb,*<> %r0,%r19,.L720
	stw %r28,0(%r25)
	b,n .L697
.L712:
	b .L701
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
	cmpb,*= %r0,%r26,.L724
	copy %r26,%r31
	ldi 0,%r28
.L723:
	extrd,s %r31,63+1-1,1,%r19
	extrd,u %r31,62,63,%r31
	and %r19,%r25,%r19
	depd,z %r25,62,63,%r25
	cmpb,*<> %r0,%r31,.L723
	add,l %r28,%r19,%r28
	bve,n (%r2)
.L724:
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
	cmpb,<<= %r26,%r25,.L728
	ldi 1,%r19
.L727:
	cmpib,> 0,%r31,.L728
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L729
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L727
	nop
.L729:
	cmpb,*= %r0,%r19,.L737
	copy %r19,%r20
.L728:
	ldi 0,%r20
.L734:
	cmpb,>>,n %r31,%r28,.L733
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L733:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L734
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L737:
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
	cmpb,= %r31,%r26,.L749
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
.L749:
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
	cmpb,*= %r31,%r28,.L752
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldd -144(%r30),%r2
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L752:
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
	cmpib,= 0,%r26,.L756
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L755:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L755
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L756:
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
	extrd,u %r24,63,32,%r23
	depwi 0,31,3,%r21
	extrd,u %r24,32+29-1,29,%r20
	cmpb,*>> %r25,%r26,.L762
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L772
.L762:
	cmpb,*=,n %r0,%r20,.L761
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L765:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L765
	ldo 8(%r31),%r31
.L761:
	cmpb,>>=,n %r21,%r23,.L758
	ldo 1(%r25),%r31
	uaddcm %r24,%r21,%r24
	add,l %r31,%r22,%r31
	extrd,u %r24,63,32,%r24
	add,l %r25,%r22,%r25
	add,l %r26,%r22,%r26
	add,l %r31,%r24,%r31
.L766:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo 1(%r25),%r25
	cmpb,*<> %r31,%r25,.L766
	ldo 1(%r26),%r26
.L758:
	bve,n (%r2)
.L772:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L758
	extrd,u %r24,63,32,%r24
.L767:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L767
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
	cmpb,*>> %r25,%r26,.L777
	extrd,u %r24,32+31-1,31,%r20
	add,l %r25,%r21,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L789
.L777:
	cmpb,*=,n %r0,%r20,.L776
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,1,%r25,%r20
.L780:
	ldh 0(%r28),%r19
	sth %r19,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r20,%r28,.L780
	ldo 2(%r31),%r31
.L776:
	extrw,u %r21,31,1,%r21
	cmpib,= 0,%r21,.L773
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L773:
	bve,n (%r2)
.L789:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r21,.L773
	extrd,u %r24,63,32,%r24
.L782:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L782
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
	copy %r24,%r21
	extrd,u %r24,63,32,%r23
	depwi 0,31,2,%r21
	extrd,u %r24,32+30-1,30,%r20
	cmpb,*>> %r25,%r26,.L794
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpclr,*<< %r28,%r26,%r0
	b,n .L804
.L794:
	cmpb,*=,n %r0,%r20,.L793
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,2,%r25,%r20
.L797:
	ldw 0(%r28),%r19
	stw %r19,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r20,%r28,.L797
	ldo 4(%r31),%r31
.L793:
	cmpb,>>=,n %r21,%r23,.L790
	ldo 1(%r25),%r31
	uaddcm %r24,%r21,%r24
	add,l %r31,%r22,%r31
	extrd,u %r24,63,32,%r24
	add,l %r25,%r22,%r25
	add,l %r26,%r22,%r26
	add,l %r31,%r24,%r31
.L798:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo 1(%r25),%r25
	cmpb,*<> %r31,%r25,.L798
	ldo 1(%r26),%r26
.L790:
	bve,n (%r2)
.L804:
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r23,.L790
	extrd,u %r24,63,32,%r24
.L799:
	add,l %r25,%r24,%r31
	add,l %r26,%r24,%r28
	ldb 0(%r31),%r31
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L799
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
	ldi 0,%r28
	extrd,u %r26,63,16,%r26
	ldi 16,%r20
.L813:
	ldo 16(%r28),%r31
	mtsar %r31
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L812
	ldo 1(%r28),%r19
	cmpb,<> %r20,%r19,.L813
	extrd,s %r19,63,32,%r28
.L812:
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
	ldi 0,%r28
	extrd,u %r26,63,16,%r26
	ldi 16,%r20
.L817:
	mtsarcm %r28
	extrw,s %r26,%sar,32,%r31
	extrw,u %r31,31,1,%r31
	cmpib,<> 0,%r31,.L816
	ldo 1(%r28),%r19
	cmpb,<> %r20,%r19,.L817
	extrd,s %r19,63,32,%r28
.L816:
	bve,n (%r2)
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
	b .L823
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	bve (%r2)
	ldo -64(%r30),%r30
.L823:
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
	ldi 0,%r20
	extrd,u %r26,63,16,%r26
	copy %r20,%r31
	ldi 16,%r21
.L826:
	mtsarcm %r31
	ldo 1(%r31),%r19
	extrw,s %r26,%sar,32,%r28
	extrd,s %r19,63,32,%r31
	extrw,u %r28,31,1,%r28
	add,l %r28,%r20,%r28
	cmpb,<> %r21,%r19,.L826
	extrd,s %r28,63,32,%r20
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
	ldi 0,%r28
	extrd,u %r26,63,16,%r26
	copy %r28,%r19
	ldi 16,%r21
.L829:
	mtsarcm %r19
	ldo 1(%r19),%r20
	extrw,s %r26,%sar,32,%r31
	extrd,s %r20,63,32,%r19
	extrw,u %r31,31,1,%r31
	add,l %r31,%r28,%r28
	cmpb,<> %r21,%r20,.L829
	extrd,s %r28,63,32,%r28
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
	cmpib,= 0,%r26,.L834
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L833:
	extrw,s %r31,31+1-1,1,%r19
	add,l %r25,%r25,%r20
	and %r19,%r25,%r19
	extrd,u %r31,62,63,%r31
	add,l %r19,%r28,%r28
	extrd,u %r20,63,32,%r25
	cmpb,*<> %r0,%r31,.L833
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L834:
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
	cmpib,= 0,%r26,.L839
	extrd,u %r25,63,32,%r25
	cmpb,*=,n %r0,%r25,.L840
	ldi 0,%r28
.L838:
	extrw,s %r25,31+1-1,1,%r19
	add,l %r31,%r31,%r20
	and %r19,%r31,%r31
	extrd,u %r25,62,63,%r25
	add,l %r31,%r28,%r28
	extrd,u %r20,63,32,%r31
	cmpb,*<> %r0,%r25,.L838
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
.L839:
	bve (%r2)
	copy %r31,%r28
.L840:
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
	cmpb,<<= %r26,%r25,.L844
	ldi 1,%r19
.L843:
	cmpib,> 0,%r31,.L844
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r20,%r28,.L845
	extrd,u %r20,63,32,%r31
	cmpib,<> 0,%r21,.L843
	nop
.L845:
	cmpb,*= %r0,%r19,.L853
	copy %r19,%r20
.L844:
	ldi 0,%r20
.L850:
	cmpb,>>,n %r31,%r28,.L849
	sub %r28,%r31,%r28
	or %r19,%r20,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r20,63,32,%r20
.L849:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L850
	extrd,u %r31,62,63,%r31
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L853:
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
	b,n .L866
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L865
	ldi 1,%r28
	ldi 0,%r28
.L865:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L866:
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
	b,n .L870
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L869
	ldi 1,%r28
	ldi 0,%r28
.L869:
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L870:
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
	cmpib,> 0,%r25,.L883
	extrd,s %r25,63,32,%r19
	cmpb,*= %r0,%r19,.L878
	ldi 0,%r24
.L875:
	ldi 1,%r22
	ldi 0,%r28
	ldi 32,%r23
.L877:
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
	cmpb,*<> %r0,%r31,.L877
	extrd,s %r21,63,32,%r28
	cmpb,*= %r0,%r24,.L876
	sub %r0,%r21,%r21
	extrd,s %r21,63,32,%r28
.L876:
	bve,n (%r2)
.L883:
	sub %r0,%r19,%r19
	ldi 1,%r24
	b .L875
	extrd,s %r19,63,32,%r19
.L878:
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
	ldi 0,%r22
	cmpclr,*<= %r22,%r26,%r0
	b,n .L909
.L885:
	cmpb,*<= %r0,%r25,.L910
	extrd,u %r26,63,32,%r20
	ldi 1,%r28
	sub %r0,%r25,%r25
	xor %r22,%r28,%r22
	extrd,s %r22,63,32,%r22
.L910:
	extrd,u %r25,63,32,%r31
	cmpb,<<= %r26,%r25,.L888
	ldi 1,%r19
.L887:
	cmpib,> 0,%r31,.L888
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r28
	extrd,u %r21,63,32,%r19
	cmpb,>>= %r28,%r20,.L889
	extrd,u %r28,63,32,%r31
	cmpib,<> 0,%r21,.L887
	nop
.L889:
	cmpb,*= %r0,%r19,.L898
	copy %r19,%r28
.L888:
	ldi 0,%r28
.L894:
	cmpb,>>,n %r31,%r20,.L893
	sub %r20,%r31,%r20
	or %r28,%r19,%r28
	extrd,u %r20,63,32,%r20
.L893:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L894
	extrd,u %r31,62,63,%r31
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r22,%r0
	copy %r31,%r28
	bve,n (%r2)
.L909:
	sub %r0,%r26,%r26
	b .L885
	ldi 1,%r22
.L898:
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
	cmpb,*<=,n %r22,%r26,.L912
	sub %r0,%r26,%r26
	ldi 1,%r22
.L912:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	cmpb,>> %r26,%r25,.L913
	ldi 1,%r19
	b,n .L920
.L938:
	cmpiclr,<> 0,%r21,%r0
	b,n .L937
.L913:
	cmpib,>,n 0,%r31,.L920
	add,l %r19,%r19,%r21
	add,l %r31,%r31,%r20
	extrd,u %r21,63,32,%r19
	cmpb,<< %r20,%r28,.L938
	extrd,u %r20,63,32,%r31
.L937:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L939
.L920:
	cmpb,<<,n %r28,%r31,.L919
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
.L919:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L920
	extrd,u %r31,62,63,%r31
.L939:
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
	cmpb,<<= %r28,%r25,.L942
	ldi 1,%r19
	extrw,s %r25,31,16,%r20
.L961:
	cmpib,> 0,%r20,.L942
	add,l %r19,%r19,%r31
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	cmpb,>>= %r25,%r28,.L943
	extrd,u %r31,63,16,%r19
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	bb,< %r31,16,.L961
	extrw,s %r25,31,16,%r20
.L943:
	cmpb,*= %r0,%r19,.L951
	copy %r19,%r31
.L942:
	ldi 0,%r31
.L948:
	cmpb,>>,n %r25,%r28,.L947
	sub %r28,%r25,%r28
	or %r19,%r31,%r31
	extrd,u %r28,63,16,%r28
	extrd,u %r31,63,16,%r31
.L947:
	extrd,u %r19,62,63,%r19
	cmpb,*<> %r0,%r19,.L948
	extrd,u %r25,62,63,%r25
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L951:
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
	cmpb,*<<= %r26,%r25,.L964
	depdi,z 1,32,4,%r20
	and %r25,%r20,%r19
.L986:
	cmpb,*<>,n %r0,%r19,.L964
	depd,z %r25,62,63,%r25
	cmpb,*<< %r25,%r28,.L984
	depd,z %r31,62,63,%r31
	cmpb,*= %r0,%r31,.L985
	copy %r31,%r19
.L964:
	ldi 0,%r19
.L970:
	cmpb,*>>,n %r25,%r28,.L969
	sub %r28,%r25,%r28
	or %r19,%r31,%r19
.L969:
	extrd,u %r31,62,63,%r31
	cmpb,*<> %r0,%r31,.L970
	extrd,u %r25,62,63,%r25
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
.L984:
	cmpb,*<> %r0,%r31,.L986
	and %r25,%r20,%r19
	copy %r31,%r19
.L985:
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
	bb,>= %r25,26,.L988
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	ldi 0,%r28
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
.L989:
	depd,z %r26,31,32,%r26
	bve (%r2)
	or %r26,%r28,%r28
.L988:
	cmpb,*= %r0,%r28,.L991
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
	b .L989
	extrd,s %r19,63,32,%r26
.L991:
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
	bb,>= %r24,25,.L993
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	ldi 0,%r29
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	depd,z %r25,%sar,64,%r28
.L993:
	cmpb,*= %r0,%r28,.L996
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
.L996:
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
	bb,>= %r25,26,.L998
	extrd,s %r25,63,32,%r28
	extrd,s %r26,0+32-1,32,%r26
	subi 63,%r25,%r25
	extrw,s %r26,0,1,%r28
	mtsar %r25
	extrd,s %r28,63,32,%r28
	extrw,s %r26,%sar,32,%r31
	extrd,u %r31,63,32,%r31
.L999:
	depd,z %r28,31,32,%r26
	bve (%r2)
	or %r26,%r31,%r28
.L998:
	cmpb,*= %r0,%r28,.L1001
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
	b .L999
	extrd,u %r31,63,32,%r31
.L1001:
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
	bb,>= %r24,25,.L1003
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,s %r26,0,1,%r28
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	bve (%r2)
	extrd,s %r26,%sar,64,%r29
.L1003:
	cmpb,*= %r0,%r28,.L1006
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
.L1006:
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
	bb,< %r26,30,.L1012
	ldi 0,%r28
	subi 2,%r26,%r28
.L1012:
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
	b,n .L1019
	cmpb,< %r28,%r31,.L1020
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1019
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1020
	bve (%r2)
	ldi 1,%r28
.L1019:
	bve (%r2)
	ldi 0,%r28
.L1020:
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
	b,n .L1026
	cmpb,<,n %r28,%r31,.L1025
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1026
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1026:
	bve (%r2)
	ldi -1,%r28
.L1025:
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
	b,n .L1031
	cmpclr,*>= %r24,%r26,%r0
	b,n .L1030
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1031
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1031:
	bve (%r2)
	ldi 0,%r28
.L1030:
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
	cmpb,*<> %r0,%r25,.L1036
	ldo -48(%r30),%r29
	cmpb,*<> %r0,%r26,.L1041
	copy %r25,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1036:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldd -144(%r30),%r2
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L1041:
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
	bb,>= %r25,26,.L1043
	extrd,s %r25,63,32,%r28
	extrd,u %r26,0+32-1,32,%r31
	mtsar %r25
	ldi 0,%r28
	shrpw %r0,%r31,%sar,%r31
	extrd,u %r31,63,32,%r31
.L1044:
	depd,z %r28,31,32,%r28
	bve (%r2)
	or %r28,%r31,%r28
.L1043:
	cmpb,*= %r0,%r28,.L1046
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
	b .L1044
	extrd,u %r31,63,32,%r31
.L1046:
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
	bb,>= %r24,25,.L1048
	extrd,s %r24,63,32,%r28
	mtsar %r24
	ldi 0,%r28
	bve (%r2)
	shrpd %r0,%r26,%sar,%r29
.L1048:
	cmpb,*= %r0,%r28,.L1051
	mtsar %r28
	subi 64,%r28,%r31
	shrpd %r0,%r25,%sar,%r29
	shrpd %r0,%r26,%sar,%r28
	extrd,u %r31,63,32,%r31
	mtsarcm %r31
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r29,%r29
.L1051:
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
	cmpib,= 0,%r25,.L1065
	copy %r20,%r31
.L1067:
	fmpy,dbl %fr4,%fr22,%fr4
.L1065:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1066
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1067
	fmpy,dbl %fr22,%fr22,%fr22
	extrw,u %r31,0,1,%r28
.L1073:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1067
	fmpy,dbl %fr22,%fr22,%fr22
	b .L1073
	extrw,u %r31,0,1,%r28
.L1066:
	cmpiclr,<= 0,%r20,%r0
	b,n .L1072
	bve,n (%r2)
.L1072:
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
	cmpib,= 0,%r25,.L1075
	copy %r20,%r31
.L1077:
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L1075:
	extrw,u %r31,0,1,%r28
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L1076
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1077
	fmpy,sgl %fr22R,%fr22R,%fr22R
	extrw,u %r31,0,1,%r28
.L1083:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r31
	extrw,u %r31,31,1,%r19
	cmpib,<> 0,%r19,.L1077
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b .L1083
	extrw,u %r31,0,1,%r28
.L1076:
	cmpiclr,<= 0,%r20,%r0
	b,n .L1082
	bve,n (%r2)
.L1082:
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
	b,n .L1088
	cmpb,<< %r28,%r31,.L1089
	extrd,u %r26,63,32,%r31
	cmpb,<< %r26,%r25,.L1088
	extrd,u %r25,63,32,%r28
	cmpclr,>>= %r28,%r31,%r0
	b,n .L1089
	bve (%r2)
	ldi 1,%r28
.L1088:
	bve (%r2)
	ldi 0,%r28
.L1089:
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
	b,n .L1095
	cmpb,<<,n %r28,%r31,.L1094
	extrd,u %r26,63,32,%r28
	cmpb,<< %r26,%r25,.L1095
	extrd,u %r25,63,32,%r31
	cmpclr,>>= %r31,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
.L1095:
	bve (%r2)
	ldi -1,%r28
.L1094:
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
	b,n .L1100
	cmpclr,*>>= %r24,%r26,%r0
	b,n .L1099
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L1100
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	bve (%r2)
	ldo 1(%r28),%r28
.L1100:
	bve (%r2)
	ldi 0,%r28
.L1099:
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
