	.file	"mini-libc.c"
	.machinemode zarch
	.machine "zEC12"
.text
	.align	8
.globl make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,160(%r15)
	stg	%r1,192(%r15)
	lg	%r1,176(%r15)
	lg	%r2,184(%r15)
	lg	%r3,192(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.align	8
.globl make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,160(%r15)
	stg	%r1,192(%r15)
	lg	%r1,176(%r15)
	lg	%r2,184(%r15)
	lg	%r3,192(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.align	8
.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,168(%r15)
	clg	%r1,176(%r15)
	jhe	.L10
	lg	%r1,168(%r15)
	ag	%r1,160(%r15)
	stg	%r1,184(%r15)
	lg	%r1,176(%r15)
	ag	%r1,160(%r15)
	stg	%r1,200(%r15)
	j	.L11
.L12:
	agsi	184(%r15),-1
	agsi	200(%r15),-1
	lg	%r1,184(%r15)
	ic	%r2,0(%r1)
	lg	%r1,200(%r15)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L11:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L12
	j	.L13
.L10:
	lg	%r1,168(%r15)
	cg	%r1,176(%r15)
	je	.L13
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	j	.L14
.L15:
	lg	%r2,168(%r15)
	aghik	%r1,%r2,1
	stg	%r1,168(%r15)
	lg	%r1,192(%r15)
	aghik	%r3,%r1,1
	stg	%r3,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L14:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L15
.L13:
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	8
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,184(%r15)
	stg	%r3,176(%r15)
	lgr	%r1,%r4
	stg	%r5,160(%r15)
	st	%r4,172(%r15)
	l	%r1,172(%r15)
	llcr	%r1,%r1
	st	%r1,196(%r15)
	j	.L20
.L22:
	agsi	160(%r15),-1
	agsi	176(%r15),1
	agsi	184(%r15),1
.L20:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L21
	lg	%r1,176(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	stc	%r2,0(%r1)
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,196(%r15)
	cr	%r2,%r1
	jne	.L22
.L21:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L23
	lg	%r1,184(%r15)
	aghi	%r1,1
	j	.L24
.L23:
	lghi	%r1,0
.L24:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	8
.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	lgr	%r1,%r3
	stg	%r4,160(%r15)
	st	%r3,172(%r15)
	l	%r1,172(%r15)
	llcr	%r1,%r1
	st	%r1,188(%r15)
	j	.L28
.L30:
	agsi	176(%r15),1
	agsi	160(%r15),-1
.L28:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L29
	lg	%r1,176(%r15)
	llc	%r1,0(%r1)
	l	%r2,188(%r15)
	cr	%r2,%r1
	jne	.L30
.L29:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L31
	lg	%r1,176(%r15)
	j	.L33
.L31:
	lghi	%r1,0
.L33:
	nopr	%r0
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	8
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	j	.L37
.L39:
	agsi	160(%r15),-1
	agsi	176(%r15),1
	agsi	168(%r15),1
.L37:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L38
	lg	%r1,176(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	je	.L39
.L38:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L40
	lg	%r1,176(%r15)
	llc	%r1,0(%r1)
	lg	%r2,168(%r15)
	llc	%r2,0(%r2)
	sr	%r1,%r2
	j	.L42
.L40:
	lhi	%r1,0
.L42:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L46
.L47:
	lg	%r2,168(%r15)
	aghik	%r1,%r2,1
	stg	%r1,168(%r15)
	lg	%r1,184(%r15)
	aghik	%r3,%r1,1
	stg	%r3,184(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L46:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L47
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	8
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	lgr	%r1,%r3
	stg	%r4,160(%r15)
	st	%r3,172(%r15)
	l	%r1,172(%r15)
	llcr	%r1,%r1
	st	%r1,188(%r15)
	j	.L52
.L54:
	lg	%r1,176(%r15)
	ag	%r1,160(%r15)
	llc	%r1,0(%r1)
	l	%r2,188(%r15)
	cr	%r2,%r1
	jne	.L52
	lg	%r1,176(%r15)
	ag	%r1,160(%r15)
	j	.L53
.L52:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L54
	lghi	%r1,0
.L53:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	8
.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	lgr	%r1,%r3
	stg	%r4,160(%r15)
	st	%r3,172(%r15)
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L58
.L59:
	lg	%r1,184(%r15)
	l	%r2,172(%r15)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
	agsi	184(%r15),1
.L58:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L59
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	j	.L64
.L65:
	agsi	160(%r15),1
	agsi	168(%r15),1
.L64:
	lg	%r1,160(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	stc	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L65
	lg	%r1,168(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r3,164(%r15)
	l	%r1,164(%r15)
	llcr	%r1,%r1
	st	%r1,180(%r15)
	j	.L70
.L72:
	agsi	168(%r15),1
.L70:
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L71
	lg	%r1,168(%r15)
	llc	%r1,0(%r1)
	l	%r2,180(%r15)
	cr	%r2,%r1
	jne	.L72
.L71:
	lg	%r1,168(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	8
.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r2,164(%r15)
.L79:
	llc	%r2,0(%r1)
	l	%r3,164(%r15)
	cr	%r3,%r2
	je	.L80
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	llc	%r2,0(%r2)
	ltr	%r2,%r2
	jne	.L79
	lghi	%r1,0
	j	.L78
.L80:
	nopr	%r0
.L78:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	8
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	j	.L84
.L86:
	agsi	168(%r15),1
	agsi	160(%r15),1
.L84:
	lg	%r1,168(%r15)
	ic	%r2,0(%r1)
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L85
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L86
.L85:
	lg	%r1,168(%r15)
	llc	%r1,0(%r1)
	lg	%r2,160(%r15)
	llc	%r2,0(%r2)
	sr	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	8
.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	stg	%r1,168(%r15)
	j	.L91
.L92:
	agsi	168(%r15),1
.L91:
	lg	%r1,168(%r15)
	llc	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L92
	lg	%r1,168(%r15)
	sg	%r1,160(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	8
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,184(%r15)
	ltgr	%r1,%r1
	jne	.L99
	lhi	%r1,0
	j	.L98
.L101:
	agsi	176(%r15),1
	agsi	168(%r15),1
	agsi	184(%r15),-1
.L99:
	lg	%r1,176(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L100
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L100
	lg	%r1,184(%r15)
	ltgr	%r1,%r1
	je	.L100
	lg	%r1,176(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	je	.L101
.L100:
	lg	%r1,176(%r15)
	llc	%r1,0(%r1)
	lg	%r2,168(%r15)
	llc	%r2,0(%r2)
	sr	%r1,%r2
.L98:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	j	.L105
.L106:
	lg	%r1,176(%r15)
	aghi	%r1,1
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	stc	%r2,0(%r1)
	lg	%r1,168(%r15)
	aghi	%r1,1
	lg	%r2,176(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	168(%r15),2
	agsi	176(%r15),2
	agsi	160(%r15),-2
.L105:
	lg	%r1,160(%r15)
	cghi	%r1,1
	jh	.L106
	nopr	%r0
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	8
.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	oill	%r1,32
	ahik	%r2,%r1,-97
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.align	8
.globl isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	lhi	%r2,127
	slrk	%r1,%r2,%r1
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.align	8
.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	chi	%r1,32
	je	.L118
	l	%r1,164(%r15)
	chi	%r1,9
	jne	.L119
.L118:
	lhi	%r1,1
	j	.L121
.L119:
	lhi	%r1,0
.L121:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	clfi	%r1,31
	jle	.L125
	l	%r1,164(%r15)
	chi	%r1,127
	jne	.L126
.L125:
	lhi	%r1,1
	j	.L128
.L126:
	lhi	%r1,0
.L128:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	8
.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ahik	%r2,%r1,-48
	lhi	%r1,9
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.align	8
.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ahik	%r2,%r1,-33
	lhi	%r1,93
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.align	8
.globl islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ahik	%r2,%r1,-97
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.align	8
.globl isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ahik	%r2,%r1,-32
	lhi	%r1,94
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.align	8
.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	chi	%r1,32
	je	.L148
	l	%r1,164(%r15)
	ahi	%r1,-9
	clfi	%r1,4
	jh	.L149
.L148:
	lhi	%r1,1
	j	.L151
.L149:
	lhi	%r1,0
.L151:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	8
.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ahik	%r2,%r1,-65
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	clfi	%r1,31
	jle	.L159
	l	%r1,164(%r15)
	ahi	%r1,-127
	clfi	%r1,32
	jle	.L159
	l	%r1,164(%r15)
	ahi	%r1,-8232
	clfi	%r1,1
	jle	.L159
	l	%r1,164(%r15)
	slfi	%r1,65529
	clfi	%r1,2
	jh	.L160
.L159:
	lhi	%r1,1
	j	.L162
.L160:
	lhi	%r1,0
.L162:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ahi	%r1,-48
	lhi	%r2,9
	slrk	%r1,%r2,%r1
	lhi	%r1,0
	alcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.align	8
.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	clfi	%r1,254
	jh	.L170
	l	%r1,164(%r15)
	ahi	%r1,1
	nilf	%r1,127
	clfi	%r1,32
	lhi	%r1,0
	alcr	%r1,%r1
	j	.L171
.L170:
	l	%r1,164(%r15)
	clfi	%r1,8231
	jle	.L172
	l	%r1,164(%r15)
	ahi	%r1,-8234
	clfi	%r1,47061
	jle	.L172
	l	%r1,164(%r15)
	slfi	%r1,57344
	clfi	%r1,8184
	jh	.L173
.L172:
	lhi	%r1,1
	j	.L171
.L173:
	l	%r1,164(%r15)
	slfi	%r1,65532
	clfi	%r1,1048579
	jh	.L174
	l	%r1,164(%r15)
	nilf	%r1,65534
	cfi	%r1,65534
	jne	.L175
.L174:
	lhi	%r1,0
	j	.L171
.L175:
	lhi	%r1,1
.L171:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L179
	l	%r1,164(%r15)
	oill	%r1,32
	ahi	%r1,-97
	clfi	%r1,5
	jh	.L180
.L179:
	lhi	%r1,1
	j	.L182
.L180:
	lhi	%r1,0
.L182:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	8
.globl toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	nilf	%r1,127
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.align	8
.globl fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	std	%f0,168(%r15)
	std	%f2,160(%r15)
	ld	%f0,168(%r15)
	cdb	%f0,168(%r15)
	jno	.L190
	ld	%f0,168(%r15)
	j	.L191
.L190:
	ld	%f0,160(%r15)
	cdb	%f0,160(%r15)
	jno	.L192
	ld	%f0,160(%r15)
	j	.L191
.L192:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnh	.L197
	ld	%f0,168(%r15)
	sdb	%f0,160(%r15)
	j	.L191
.L197:
	lzdr	%f0
.L191:
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	8
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	ste	%f2,160(%r15)
	le	%f0,164(%r15)
	ceb	%f0,164(%r15)
	jno	.L201
	le	%f0,164(%r15)
	j	.L202
.L201:
	le	%f0,160(%r15)
	ceb	%f0,160(%r15)
	jno	.L203
	le	%f0,160(%r15)
	j	.L202
.L203:
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnh	.L208
	le	%f0,164(%r15)
	seb	%f0,160(%r15)
	j	.L202
.L208:
	lzer	%f0
.L202:
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	8
.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	std	%f0,168(%r15)
	std	%f2,160(%r15)
	ld	%f0,168(%r15)
	cdb	%f0,168(%r15)
	jno	.L212
	lg	%r1,160(%r15)
	j	.L213
.L212:
	ld	%f0,160(%r15)
	cdb	%f0,160(%r15)
	jno	.L214
	lg	%r1,168(%r15)
	j	.L213
.L214:
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L215
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L216
	lg	%r1,160(%r15)
	j	.L213
.L216:
	lg	%r1,168(%r15)
	j	.L213
.L215:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnl	.L222
	lg	%r1,160(%r15)
	j	.L213
.L222:
	lg	%r1,168(%r15)
.L213:
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	ste	%f2,160(%r15)
	le	%f0,164(%r15)
	ceb	%f0,164(%r15)
	jno	.L226
	le	%f0,160(%r15)
	j	.L227
.L226:
	le	%f0,160(%r15)
	ceb	%f0,160(%r15)
	jno	.L228
	le	%f0,164(%r15)
	j	.L227
.L228:
	le	%f0,164(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,160(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L229
	le	%f0,164(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L230
	le	%f0,160(%r15)
	j	.L227
.L230:
	le	%f0,164(%r15)
	j	.L227
.L229:
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnl	.L236
	le	%f0,160(%r15)
	j	.L227
.L236:
	le	%f0,164(%r15)
.L227:
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,192(%r15)
	lgr	%r12,%r3
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,176(%r15)
	std	%f2,184(%r15)
	lgr	%r12,%r4
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	std	%f0,160(%r15)
	std	%f2,168(%r15)
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	ld	%f4,176(%r15)
	ld	%f6,184(%r15)
	cxbr	%f0,%f4
	jno	.L240
	lg	%r1,192(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L241
.L240:
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	cxbr	%f0,%f4
	jno	.L242
	lg	%r1,192(%r15)
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L241
.L242:
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L243
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L244
	lmg	%r2,%r3,160(%r15)
	j	.L245
.L244:
	lmg	%r2,%r3,176(%r15)
.L245:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
	j	.L241
.L243:
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	kxbr	%f0,%f4
	jnl	.L250
	lmg	%r2,%r3,160(%r15)
	j	.L248
.L250:
	lmg	%r2,%r3,176(%r15)
.L248:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
.L241:
	lg	%r2,192(%r15)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	8
.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	std	%f0,168(%r15)
	std	%f2,160(%r15)
	ld	%f0,168(%r15)
	cdb	%f0,168(%r15)
	jno	.L254
	lg	%r1,160(%r15)
	j	.L255
.L254:
	ld	%f0,160(%r15)
	cdb	%f0,160(%r15)
	jno	.L256
	lg	%r1,168(%r15)
	j	.L255
.L256:
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L257
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L258
	lg	%r1,168(%r15)
	j	.L255
.L258:
	lg	%r1,160(%r15)
	j	.L255
.L257:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnl	.L264
	lg	%r1,168(%r15)
	j	.L255
.L264:
	lg	%r1,160(%r15)
.L255:
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	8
.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	ste	%f2,160(%r15)
	le	%f0,164(%r15)
	ceb	%f0,164(%r15)
	jno	.L268
	le	%f0,160(%r15)
	j	.L269
.L268:
	le	%f0,160(%r15)
	ceb	%f0,160(%r15)
	jno	.L270
	le	%f0,164(%r15)
	j	.L269
.L270:
	le	%f0,164(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,160(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L271
	le	%f0,164(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L272
	le	%f0,164(%r15)
	j	.L269
.L272:
	le	%f0,160(%r15)
	j	.L269
.L271:
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnl	.L278
	le	%f0,164(%r15)
	j	.L269
.L278:
	le	%f0,160(%r15)
.L269:
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	8
.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,192(%r15)
	lgr	%r12,%r3
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,176(%r15)
	std	%f2,184(%r15)
	lgr	%r12,%r4
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	std	%f0,160(%r15)
	std	%f2,168(%r15)
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	ld	%f4,176(%r15)
	ld	%f6,184(%r15)
	cxbr	%f0,%f4
	jno	.L282
	lg	%r1,192(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L283
.L282:
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	cxbr	%f0,%f4
	jno	.L284
	lg	%r1,192(%r15)
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L283
.L284:
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L285
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L286
	lmg	%r2,%r3,176(%r15)
	j	.L287
.L286:
	lmg	%r2,%r3,160(%r15)
.L287:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
	j	.L283
.L285:
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	kxbr	%f0,%f4
	jnl	.L292
	lmg	%r2,%r3,176(%r15)
	j	.L290
.L292:
	lmg	%r2,%r3,160(%r15)
.L290:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
.L283:
	lg	%r2,192(%r15)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.text
	.align	8
.globl l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	st	%r1,172(%r15)
	larl	%r1,s.0
	stg	%r1,176(%r15)
	j	.L296
.L297:
	l	%r1,172(%r15)
	nilf	%r1,63
	larl	%r2,digits
	llgfr	%r1,%r1
	ic	%r2,0(%r1,%r2)
	lg	%r1,176(%r15)
	stc	%r2,0(%r1)
	agsi	176(%r15),1
	l	%r1,172(%r15)
	srl	%r1,6
	st	%r1,172(%r15)
.L296:
	l	%r1,172(%r15)
	ltr	%r1,%r1
	jne	.L297
	lg	%r1,176(%r15)
	mvi	0(%r1),0
	larl	%r1,s.0
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	8
.globl srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ahi	%r1,-1
	llgfr	%r1,%r1
	stgrl	%r1,seed
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LC0:
	.quad	6364136223846793005
.text
	.align	8
.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	lgrl	%r1,.LC0
	larl	%r2,seed
	msg	%r1,0(%r2)
	aghi	%r1,1
	stgrl	%r1,seed
	lgrl	%r1,seed
	srlg	%r1,%r1,33
	lgfr	%r1,%r1
	lgr	%r2,%r1
	br	%r14
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	8
.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L309
	lg	%r1,168(%r15)
	mvghi	8(%r1),0
	lg	%r1,168(%r15)
	lg	%r2,8(%r1)
	lg	%r1,168(%r15)
	stg	%r2,0(%r1)
	j	.L308
.L309:
	lg	%r1,160(%r15)
	lg	%r2,0(%r1)
	lg	%r1,168(%r15)
	stg	%r2,0(%r1)
	lg	%r1,168(%r15)
	lg	%r2,160(%r15)
	stg	%r2,8(%r1)
	lg	%r1,160(%r15)
	lg	%r2,168(%r15)
	stg	%r2,0(%r1)
	lg	%r1,168(%r15)
	lg	%r1,0(%r1)
	ltgr	%r1,%r1
	je	.L308
	lg	%r1,168(%r15)
	lg	%r1,0(%r1)
	lg	%r2,168(%r15)
	stg	%r2,8(%r1)
.L308:
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	8
.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	lg	%r1,0(%r1)
	ltgr	%r1,%r1
	je	.L314
	lg	%r1,160(%r15)
	lg	%r1,0(%r1)
	lg	%r2,160(%r15)
	lg	%r2,8(%r2)
	stg	%r2,8(%r1)
.L314:
	lg	%r1,160(%r15)
	lg	%r1,8(%r1)
	ltgr	%r1,%r1
	je	.L316
	lg	%r1,160(%r15)
	lg	%r1,8(%r1)
	lg	%r2,160(%r15)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
.L316:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	8
.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	stg	%r2,192(%r15)
	stg	%r3,184(%r15)
	stg	%r4,176(%r15)
	stg	%r5,168(%r15)
	stg	%r6,160(%r15)
	lg	%r12,168(%r15)
	aghik	%r1,%r12,-1
	stg	%r1,208(%r15)
	lgr	%r1,%r12
	lghi	%r2,0
	srlg	%r3,%r12,61
	sllg	%r2,%r2,3
	ogr	%r2,%r3
	lg	%r1,176(%r15)
	lg	%r1,0(%r1)
	stg	%r1,200(%r15)
	mvghi	216(%r15),0
	j	.L320
.L323:
	lgr	%r1,%r12
	msg	%r1,216(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	lgr	%r3,%r2
	lg	%r2,192(%r15)
	basr	%r14,%r1
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L321
	lgr	%r1,%r12
	msg	%r1,216(%r15)
	ag	%r1,184(%r15)
	j	.L322
.L321:
	agsi	216(%r15),1
.L320:
	lg	%r1,216(%r15)
	clg	%r1,200(%r15)
	jl	.L323
	lg	%r1,200(%r15)
	aghik	%r2,%r1,1
	lg	%r1,176(%r15)
	stg	%r2,0(%r1)
	lgr	%r1,%r12
	msg	%r1,200(%r15)
	ag	%r1,184(%r15)
	lg	%r4,168(%r15)
	lg	%r3,192(%r15)
	lgr	%r2,%r1
	brasl	%r14,memcpy@PLT
	lgr	%r1,%r2
.L322:
	lgr	%r2,%r1
	lmg	%r12,%r15,320(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	8
.globl lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	stg	%r2,192(%r15)
	stg	%r3,184(%r15)
	stg	%r4,176(%r15)
	stg	%r5,168(%r15)
	stg	%r6,160(%r15)
	lg	%r12,168(%r15)
	aghik	%r1,%r12,-1
	stg	%r1,208(%r15)
	lgr	%r1,%r12
	lghi	%r2,0
	srlg	%r3,%r12,61
	sllg	%r2,%r2,3
	ogr	%r2,%r3
	lg	%r1,176(%r15)
	lg	%r1,0(%r1)
	stg	%r1,200(%r15)
	mvghi	216(%r15),0
	j	.L327
.L330:
	lgr	%r1,%r12
	msg	%r1,216(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	lgr	%r3,%r2
	lg	%r2,192(%r15)
	basr	%r14,%r1
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L328
	lgr	%r1,%r12
	msg	%r1,216(%r15)
	ag	%r1,184(%r15)
	j	.L329
.L328:
	agsi	216(%r15),1
.L327:
	lg	%r1,216(%r15)
	clg	%r1,200(%r15)
	jl	.L330
	lghi	%r1,0
.L329:
	lgr	%r2,%r1
	lmg	%r12,%r15,320(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	8
.globl abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	lpr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.align	8
.globl atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,160(%r15)
	mvhi	172(%r15),0
	mvhi	168(%r15),0
	j	.L338
.L339:
	agsi	160(%r15),1
.L338:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L339
	lg	%r1,160(%r15)
	llc	%r1,0(%r1)
	chi	%r1,43
	je	.L340
	chi	%r1,45
	jne	.L342
	mvhi	168(%r15),1
.L340:
	agsi	160(%r15),1
	j	.L342
.L343:
	l	%r2,172(%r15)
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r2,%r1
	lg	%r1,160(%r15)
	aghik	%r3,%r1,1
	stg	%r3,160(%r15)
	llc	%r1,0(%r1)
	ahi	%r1,-48
	srk	%r1,%r2,%r1
	st	%r1,172(%r15)
.L342:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L343
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jne	.L344
	l	%r1,172(%r15)
	lcr	%r1,%r1
	j	.L346
.L344:
	l	%r1,172(%r15)
.L346:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r14,%r15,288(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	8
.globl atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,160(%r15)
	mvghi	176(%r15),0
	mvhi	172(%r15),0
	j	.L350
.L351:
	agsi	160(%r15),1
.L350:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L351
	lg	%r1,160(%r15)
	llc	%r1,0(%r1)
	chi	%r1,43
	je	.L352
	chi	%r1,45
	jne	.L354
	mvhi	172(%r15),1
.L352:
	agsi	160(%r15),1
	j	.L354
.L355:
	lg	%r2,176(%r15)
	lgr	%r1,%r2
	sllg	%r1,%r1,2
	agr	%r1,%r2
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	aghik	%r3,%r1,1
	stg	%r3,160(%r15)
	llc	%r1,0(%r1)
	ahi	%r1,-48
	lgfr	%r1,%r1
	sgrk	%r1,%r2,%r1
	stg	%r1,176(%r15)
.L354:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L355
	l	%r1,172(%r15)
	ltr	%r1,%r1
	jne	.L356
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	j	.L358
.L356:
	lg	%r1,176(%r15)
.L358:
	nopr	%r0
	lgr	%r2,%r1
	lmg	%r14,%r15,296(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	8
.globl atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,160(%r15)
	mvghi	176(%r15),0
	mvhi	172(%r15),0
	j	.L362
.L363:
	agsi	160(%r15),1
.L362:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L363
	lg	%r1,160(%r15)
	llc	%r1,0(%r1)
	chi	%r1,43
	je	.L364
	chi	%r1,45
	jne	.L366
	mvhi	172(%r15),1
.L364:
	agsi	160(%r15),1
	j	.L366
.L367:
	lg	%r2,176(%r15)
	lgr	%r1,%r2
	sllg	%r1,%r1,2
	agr	%r1,%r2
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	aghik	%r3,%r1,1
	stg	%r3,160(%r15)
	llc	%r1,0(%r1)
	ahi	%r1,-48
	lgfr	%r1,%r1
	sgrk	%r1,%r2,%r1
	stg	%r1,176(%r15)
.L366:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L367
	l	%r1,172(%r15)
	ltr	%r1,%r1
	jne	.L368
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	j	.L370
.L368:
	lg	%r1,176(%r15)
.L370:
	nopr	%r0
	lgr	%r2,%r1
	lmg	%r14,%r15,296(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.align	8
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	stg	%r2,192(%r15)
	stg	%r3,184(%r15)
	stg	%r4,176(%r15)
	stg	%r5,168(%r15)
	stg	%r6,160(%r15)
	j	.L374
.L379:
	lg	%r1,176(%r15)
	srlg	%r1,%r1,1
	msg	%r1,168(%r15)
	ag	%r1,184(%r15)
	stg	%r1,208(%r15)
	lg	%r1,160(%r15)
	lg	%r3,208(%r15)
	lg	%r2,192(%r15)
	basr	%r14,%r1
	lgr	%r1,%r2
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	ltr	%r1,%r1
	jhe	.L375
	lg	%r1,176(%r15)
	srlg	%r1,%r1,1
	stg	%r1,176(%r15)
	j	.L374
.L375:
	l	%r1,204(%r15)
	ltr	%r1,%r1
	jle	.L377
	lg	%r1,208(%r15)
	ag	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,176(%r15)
	srlg	%r2,%r1,1
	lg	%r1,176(%r15)
	sgr	%r1,%r2
	aghi	%r1,-1
	stg	%r1,176(%r15)
	j	.L374
.L377:
	lg	%r1,208(%r15)
	j	.L378
.L374:
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L379
	lghi	%r1,0
.L378:
	lgr	%r2,%r1
	lmg	%r14,%r15,328(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	stg	%r2,192(%r15)
	stg	%r3,184(%r15)
	stg	%r4,176(%r15)
	stg	%r5,168(%r15)
	stg	%r6,160(%r15)
	lg	%r1,176(%r15)
	st	%r1,220(%r15)
	j	.L383
.L387:
	l	%r1,220(%r15)
	sra	%r1,1
	lgfr	%r1,%r1
	msg	%r1,168(%r15)
	ag	%r1,184(%r15)
	stg	%r1,208(%r15)
	lg	%r1,160(%r15)
	lg	%r4,384(%r15)
	lg	%r3,208(%r15)
	lg	%r2,192(%r15)
	basr	%r14,%r1
	lgr	%r1,%r2
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	ltr	%r1,%r1
	jne	.L384
	lg	%r1,208(%r15)
	j	.L385
.L384:
	l	%r1,204(%r15)
	ltr	%r1,%r1
	jle	.L386
	lg	%r1,208(%r15)
	ag	%r1,168(%r15)
	stg	%r1,184(%r15)
	asi	220(%r15),-1
.L386:
	l	%r1,220(%r15)
	sra	%r1,1
	st	%r1,220(%r15)
.L383:
	l	%r1,220(%r15)
	ltr	%r1,%r1
	jne	.L387
	lghi	%r1,0
.L385:
	lgr	%r2,%r1
	lmg	%r14,%r15,336(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	8
.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	lgr	%r2,%r4
	st	%r1,164(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	lgf	%r1,164(%r15)
	lgf	%r4,160(%r15)
	lgr	%r3,%r1
	dsgr	%r2,%r4
	lgr	%r1,%r3
	lr	%r4,%r1
	lgf	%r1,164(%r15)
	lgf	%r5,160(%r15)
	lgr	%r3,%r1
	dsgr	%r2,%r5
	lgr	%r1,%r2
	lr	%r2,%r1
	lg	%r1,168(%r15)
	st	%r4,0(%r1)
	lg	%r1,168(%r15)
	st	%r2,4(%r1)
	lg	%r2,168(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	lpgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.align	8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,168(%r15)
	lgr	%r3,%r1
	dsg	%r2,160(%r15)
	lgr	%r1,%r3
	lgr	%r4,%r1
	lg	%r1,168(%r15)
	lgr	%r3,%r1
	dsg	%r2,160(%r15)
	lgr	%r1,%r2
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	stg	%r4,0(%r1)
	lg	%r1,176(%r15)
	stg	%r2,8(%r1)
	lg	%r2,176(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.align	8
.globl labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	lpgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.align	8
.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,168(%r15)
	lgr	%r3,%r1
	dsg	%r2,160(%r15)
	lgr	%r1,%r3
	lgr	%r4,%r1
	lg	%r1,168(%r15)
	lgr	%r3,%r1
	dsg	%r2,160(%r15)
	lgr	%r1,%r2
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	stg	%r4,0(%r1)
	lg	%r1,176(%r15)
	stg	%r2,8(%r1)
	lg	%r2,176(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.align	8
.globl llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	lpgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.align	8
.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,168(%r15)
	lgr	%r3,%r1
	dsg	%r2,160(%r15)
	lgr	%r1,%r3
	lgr	%r4,%r1
	lg	%r1,168(%r15)
	lgr	%r3,%r1
	dsg	%r2,160(%r15)
	lgr	%r1,%r2
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	stg	%r4,0(%r1)
	lg	%r1,176(%r15)
	stg	%r2,8(%r1)
	lg	%r2,176(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.align	8
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r3,164(%r15)
	j	.L419
.L421:
	agsi	168(%r15),4
.L419:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L420
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	l	%r2,164(%r15)
	cr	%r2,%r1
	jne	.L421
.L420:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L422
	lg	%r1,168(%r15)
	j	.L424
.L422:
	lghi	%r1,0
.L424:
	nopr	%r0
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	j	.L428
.L430:
	agsi	168(%r15),4
	agsi	160(%r15),4
.L428:
	lg	%r1,168(%r15)
	l	%r2,0(%r1)
	lg	%r1,160(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L429
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L429
	lg	%r1,160(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L430
.L429:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	lg	%r2,160(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L431
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	lg	%r2,160(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L432
	lhi	%r2,0
.L432:
	llcr	%r1,%r2
	j	.L434
.L431:
	lhi	%r1,-1
.L434:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,176(%r15)
.L438:
	lg	%r2,160(%r15)
	aghik	%r1,%r2,4
	stg	%r1,160(%r15)
	lg	%r1,176(%r15)
	aghik	%r3,%r1,4
	stg	%r3,176(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L438
	lg	%r1,168(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	8
.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	stg	%r1,168(%r15)
	j	.L443
.L444:
	agsi	168(%r15),4
.L443:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L444
	lg	%r1,168(%r15)
	sg	%r1,160(%r15)
	srag	%r1,%r1,2
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	j	.L449
.L451:
	agsi	160(%r15),-1
	agsi	176(%r15),4
	agsi	168(%r15),4
.L449:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L450
	lg	%r1,176(%r15)
	l	%r2,0(%r1)
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L450
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L450
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L451
.L450:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L452
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L453
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L454
	lhi	%r2,0
.L454:
	llcr	%r1,%r2
	j	.L457
.L453:
	lhi	%r1,-1
	j	.L457
.L452:
	lhi	%r1,0
.L457:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	lgr	%r1,%r3
	stg	%r4,160(%r15)
	st	%r3,172(%r15)
	j	.L461
.L463:
	agsi	160(%r15),-1
	agsi	176(%r15),4
.L461:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L462
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	l	%r2,172(%r15)
	cr	%r2,%r1
	jne	.L463
.L462:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L464
	lg	%r1,176(%r15)
	j	.L466
.L464:
	lghi	%r1,0
.L466:
	nopr	%r0
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	j	.L470
.L472:
	agsi	160(%r15),-1
	agsi	176(%r15),4
	agsi	168(%r15),4
.L470:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L471
	lg	%r1,176(%r15)
	l	%r2,0(%r1)
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	je	.L472
.L471:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L473
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L474
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L475
	lhi	%r2,0
.L475:
	llcr	%r1,%r2
	j	.L478
.L474:
	lhi	%r1,-1
	j	.L478
.L473:
	lhi	%r1,0
.L478:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L482
.L483:
	lg	%r2,168(%r15)
	aghik	%r1,%r2,4
	stg	%r1,168(%r15)
	lg	%r1,184(%r15)
	aghik	%r3,%r1,4
	stg	%r3,184(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L482:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L483
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	cg	%r1,168(%r15)
	jne	.L488
	lg	%r1,176(%r15)
	j	.L489
.L488:
	lg	%r1,176(%r15)
	lg	%r2,168(%r15)
	sgr	%r1,%r2
	lg	%r2,160(%r15)
	sllg	%r2,%r2,2
	clgr	%r1,%r2
	jhe	.L490
	j	.L491
.L492:
	lg	%r1,160(%r15)
	sllg	%r1,%r1,2
	ag	%r1,176(%r15)
	lg	%r2,160(%r15)
	sllg	%r2,%r2,2
	ag	%r2,168(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L491:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L492
	j	.L493
.L490:
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L494
.L495:
	lg	%r2,168(%r15)
	aghik	%r1,%r2,4
	stg	%r1,168(%r15)
	lg	%r1,184(%r15)
	aghik	%r3,%r1,4
	stg	%r3,184(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L494:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L495
.L493:
	lg	%r1,176(%r15)
.L489:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	8
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	lgr	%r1,%r3
	stg	%r4,160(%r15)
	st	%r3,172(%r15)
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L499
.L500:
	lg	%r1,184(%r15)
	aghik	%r2,%r1,4
	stg	%r2,184(%r15)
	l	%r2,172(%r15)
	st	%r2,0(%r1)
.L499:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L500
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	clg	%r1,168(%r15)
	jhe	.L505
	lg	%r1,176(%r15)
	ag	%r1,160(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	ag	%r1,160(%r15)
	stg	%r1,184(%r15)
	j	.L506
.L507:
	agsi	192(%r15),-1
	agsi	184(%r15),-1
	lg	%r1,192(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L506:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L507
	j	.L511
.L505:
	lg	%r1,176(%r15)
	cg	%r1,168(%r15)
	je	.L511
	j	.L509
.L510:
	lg	%r2,176(%r15)
	aghik	%r1,%r2,1
	stg	%r1,176(%r15)
	lg	%r1,168(%r15)
	aghik	%r3,%r1,1
	stg	%r3,168(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L509:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L510
.L511:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	8
.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	lg	%r2,168(%r15)
	rllg	%r1,%r2,0(%r1)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.align	8
.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	lcr	%r1,%r1
	lg	%r2,168(%r15)
	rllg	%r1,%r2,0(%r1)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.align	8
.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	l	%r2,164(%r15)
	rll	%r1,%r2,0(%r1)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.align	8
.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	lhi	%r1,32
	s	%r1,160(%r15)
	l	%r2,164(%r15)
	rll	%r1,%r2,0(%r1)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	lg	%r2,168(%r15)
	sllg	%r3,%r2,0(%r1)
	lhi	%r1,64
	s	%r1,164(%r15)
	lg	%r2,168(%r15)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	lg	%r2,168(%r15)
	srlg	%r3,%r2,0(%r1)
	lhi	%r1,64
	s	%r1,164(%r15)
	lg	%r2,168(%r15)
	sllg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.align	8
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	sth	%r1,166(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	llh	%r2,166(%r15)
	l	%r1,160(%r15)
	sllk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llh	%r2,166(%r15)
	lhi	%r1,16
	s	%r1,160(%r15)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	sth	%r1,166(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	llh	%r2,166(%r15)
	l	%r1,160(%r15)
	srlk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llh	%r2,166(%r15)
	lhi	%r1,16
	s	%r1,160(%r15)
	sllk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	8
.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	stc	%r1,167(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	llc	%r2,167(%r15)
	l	%r1,160(%r15)
	sllk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llc	%r2,167(%r15)
	lhi	%r1,8
	s	%r1,160(%r15)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llgcr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	8
.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	stc	%r1,167(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	llc	%r2,167(%r15)
	l	%r1,160(%r15)
	srlk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llc	%r2,167(%r15)
	lhi	%r1,8
	s	%r1,160(%r15)
	sllk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llgcr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	sth	%r1,166(%r15)
	mvghi	168(%r15),255
	lg	%r1,168(%r15)
	sllg	%r1,%r1,8
	llgh	%r2,166(%r15)
	ngr	%r1,%r2
	srlg	%r1,%r1,8
	lg	%r2,168(%r15)
	lh	%r3,166(%r15)
	nr	%r2,%r3
	sll	%r2,8
	or	%r1,%r2
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	st	%r1,164(%r15)
	mvghi	168(%r15),255
	lg	%r1,168(%r15)
	sllg	%r1,%r1,24
	llgf	%r2,164(%r15)
	ngr	%r1,%r2
	srlg	%r2,%r1,24
	lg	%r1,168(%r15)
	sllg	%r1,%r1,16
	llgf	%r3,164(%r15)
	ngr	%r1,%r3
	srlg	%r1,%r1,8
	or	%r2,%r1
	lg	%r1,168(%r15)
	sll	%r1,8
	n	%r1,164(%r15)
	sll	%r1,8
	or	%r2,%r1
	lg	%r1,168(%r15)
	n	%r1,164(%r15)
	sll	%r1,24
	or	%r1,%r2
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,160(%r15)
	mvghi	168(%r15),255
	lg	%r1,168(%r15)
	sllg	%r1,%r1,56
	ng	%r1,160(%r15)
	srlg	%r2,%r1,56
	lg	%r1,168(%r15)
	sllg	%r1,%r1,48
	ng	%r1,160(%r15)
	srlg	%r1,%r1,40
	ogr	%r2,%r1
	lg	%r1,168(%r15)
	sllg	%r1,%r1,40
	ng	%r1,160(%r15)
	srlg	%r1,%r1,24
	ogr	%r2,%r1
	lg	%r1,168(%r15)
	sllg	%r1,%r1,32
	ng	%r1,160(%r15)
	srlg	%r1,%r1,8
	ogr	%r2,%r1
	lg	%r1,168(%r15)
	sllg	%r1,%r1,24
	ng	%r1,160(%r15)
	sllg	%r1,%r1,8
	ogr	%r2,%r1
	lg	%r1,168(%r15)
	sllg	%r1,%r1,16
	ng	%r1,160(%r15)
	sllg	%r1,%r1,24
	ogr	%r2,%r1
	lg	%r1,168(%r15)
	sllg	%r1,%r1,8
	ng	%r1,160(%r15)
	sllg	%r1,%r1,40
	ogr	%r2,%r1
	lg	%r1,160(%r15)
	ng	%r1,168(%r15)
	sllg	%r1,%r1,56
	ogr	%r1,%r2
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	8
.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	st	%r2,164(%r15)
	mvhi	172(%r15),0
	j	.L567
.L570:
	l	%r1,172(%r15)
	l	%r2,164(%r15)
	srlk	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L568
	l	%r1,172(%r15)
	ahi	%r1,1
	j	.L569
.L568:
	asi	172(%r15),1
.L567:
	l	%r1,172(%r15)
	clfi	%r1,31
	jle	.L570
	lhi	%r1,0
.L569:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ltgr	%r2,%r2
	jne	.L574
	lhi	%r12,0
	j	.L575
.L574:
	lgr	%r1,%r2
	lhi	%r12,1
	j	.L576
.L577:
	sra	%r1,1
	lgfr	%r1,%r1
	ahi	%r12,1
.L576:
	risbg	%r2,%r1,63,128+63,0
	ltr	%r2,%r2
	je	.L577
	nopr	%r0
.L575:
	lgfr	%r1,%r12
	lgr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L588
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	le	%f0,164(%r15)
	keb	%f0,.L589-.L588(%r5)
	jl	.L581
	le	%f0,164(%r15)
	keb	%f0,.L590-.L588(%r5)
	jnh	.L586
.L581:
	lhi	%r1,1
	j	.L585
.L586:
	lhi	%r1,0
.L585:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L588:
.L590:
	.long	2139095039
.L589:
	.long	-8388609
	.align	2
.text
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L599
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	std	%f0,160(%r15)
	ld	%f0,160(%r15)
	kdb	%f0,.L600-.L599(%r5)
	jl	.L592
	ld	%f0,160(%r15)
	kdb	%f0,.L601-.L599(%r5)
	jnh	.L597
.L592:
	lhi	%r1,1
	j	.L596
.L597:
	lhi	%r1,0
.L596:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L599:
.L601:
	.long	2146435071
	.long	-1
.L600:
	.long	-1048577
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	larl	%r5,.L610
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r12,%r2
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	std	%f0,160(%r15)
	std	%f2,168(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,.L611-.L610(%r5)
	ld	%f6,.L611-.L610+8(%r5)
	kxbr	%f0,%f4
	jl	.L603
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,.L612-.L610(%r5)
	ld	%f6,.L612-.L610+8(%r5)
	kxbr	%f0,%f4
	jnh	.L608
.L603:
	lhi	%r1,1
	j	.L607
.L608:
	lhi	%r1,0
.L607:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L610:
.L612:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L611:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	cdfbr	%f0,%r1
	lxdbr	%f0,%f0
	lg	%r1,168(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	nopr	%r0
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LC7:
	.long	1056964608
	.align	4
.LC8:
	.long	1073741824
.text
	.align	8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	ste	%f0,164(%r15)
	lgr	%r1,%r2
	st	%r2,160(%r15)
	le	%f0,164(%r15)
	ceb	%f0,164(%r15)
	jo	.L617
	le	%f0,164(%r15)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,164(%r15)
	cebr	%f0,%f2
	je	.L617
	l	%r1,160(%r15)
	ltr	%r1,%r1
	jhe	.L618
	lrl	%r1,.LC7
	j	.L619
.L618:
	lrl	%r1,.LC8
.L619:
	st	%r1,172(%r15)
.L622:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L620
	le	%f0,164(%r15)
	meeb	%f0,172(%r15)
	ste	%f0,164(%r15)
.L620:
	l	%r1,160(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L624
	le	%f0,172(%r15)
	meeb	%f0,172(%r15)
	ste	%f0,172(%r15)
	j	.L622
.L624:
	nopr	%r0
.L617:
	le	%f0,164(%r15)
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align	8
.LC9:
	.long	1071644672
	.long	0
	.align	8
.LC10:
	.long	1073741824
	.long	0
.text
	.align	8
.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	std	%f0,168(%r15)
	lgr	%r1,%r2
	st	%r2,164(%r15)
	ld	%f0,168(%r15)
	cdb	%f0,168(%r15)
	jo	.L628
	ld	%f0,168(%r15)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,168(%r15)
	cdbr	%f0,%f2
	je	.L628
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jhe	.L629
	lgrl	%r1,.LC9
	j	.L630
.L629:
	lgrl	%r1,.LC10
.L630:
	stg	%r1,176(%r15)
.L633:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L631
	ld	%f0,168(%r15)
	mdb	%f0,176(%r15)
	std	%f0,168(%r15)
.L631:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L635
	ld	%f0,176(%r15)
	mdb	%f0,176(%r15)
	std	%f0,176(%r15)
	j	.L633
.L635:
	nopr	%r0
.L628:
	lg	%r1,168(%r15)
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	larl	%r5,.L648
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	stg	%r2,184(%r15)
	lgr	%r12,%r3
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,168(%r15)
	std	%f2,176(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	ld	%f4,168(%r15)
	ld	%f6,176(%r15)
	cxbr	%f0,%f4
	jo	.L639
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	axbr	%f0,%f0
	ld	%f4,168(%r15)
	ld	%f6,176(%r15)
	cxbr	%f4,%f0
	je	.L639
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jhe	.L640
	lmg	%r2,%r3,.L649-.L648(%r5)
	j	.L641
.L640:
	lmg	%r2,%r3,.L650-.L648(%r5)
.L641:
	stmg	%r2,%r3,192(%r15)
.L644:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L642
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	ld	%f4,192(%r15)
	ld	%f6,200(%r15)
	mxbr	%f0,%f4
	std	%f0,168(%r15)
	std	%f2,176(%r15)
.L642:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L646
	ld	%f0,192(%r15)
	ld	%f2,200(%r15)
	ld	%f4,192(%r15)
	ld	%f6,200(%r15)
	mxbr	%f0,%f4
	std	%f0,192(%r15)
	std	%f2,200(%r15)
	j	.L644
.L646:
	nopr	%r0
.L639:
	lg	%r1,184(%r15)
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	lg	%r2,184(%r15)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L648:
.L650:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L649:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	8
.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L652
.L653:
	lg	%r1,168(%r15)
	aghik	%r2,%r1,1
	stg	%r2,168(%r15)
	ic	%r3,0(%r1)
	lg	%r1,184(%r15)
	aghik	%r2,%r1,1
	stg	%r2,184(%r15)
	ic	%r2,0(%r1)
	xr	%r2,%r3
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L652:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L653
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r2,176(%r15)
	brasl	%r14,strlen@PLT
	lgr	%r1,%r2
	ag	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L658
.L660:
	agsi	168(%r15),1
	agsi	184(%r15),1
	agsi	160(%r15),-1
.L658:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L659
	lg	%r1,168(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	stc	%r2,0(%r1)
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L660
.L659:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L661
	lg	%r1,184(%r15)
	mvi	0(%r1),0
.L661:
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lmg	%r14,%r15,304(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	8
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	mvghi	176(%r15),0
	j	.L666
.L671:
	nopr	%r0
	agsi	176(%r15),1
.L666:
	lg	%r1,176(%r15)
	clg	%r1,160(%r15)
	jhe	.L667
	lg	%r1,168(%r15)
	ag	%r1,176(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L671
.L667:
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	j	.L675
.L679:
	lg	%r1,160(%r15)
	stg	%r1,176(%r15)
	j	.L676
.L678:
	lg	%r1,176(%r15)
	aghik	%r2,%r1,1
	stg	%r2,176(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L676
	lg	%r1,168(%r15)
	j	.L677
.L676:
	lg	%r1,176(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L678
	agsi	168(%r15),1
.L675:
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L679
	lghi	%r1,0
.L677:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	8
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r2,164(%r15)
	mvghi	168(%r15),0
.L684:
	llc	%r2,0(%r1)
	l	%r3,164(%r15)
	cr	%r3,%r2
	jne	.L683
	stg	%r1,168(%r15)
.L683:
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	llc	%r2,0(%r2)
	ltr	%r2,%r2
	jne	.L684
	lg	%r1,168(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	8
.globl strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r2,160(%r15)
	brasl	%r14,strlen@PLT
	stg	%r2,184(%r15)
	lg	%r1,184(%r15)
	ltgr	%r1,%r1
	jne	.L691
	lg	%r1,168(%r15)
	j	.L690
.L693:
	lg	%r4,184(%r15)
	lg	%r3,160(%r15)
	lg	%r2,176(%r15)
	brasl	%r14,strncmp@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L692
	lg	%r1,176(%r15)
	j	.L690
.L692:
	lg	%r1,176(%r15)
	aghi	%r1,1
	stg	%r1,168(%r15)
.L691:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r3,%r1
	lg	%r2,168(%r15)
	brasl	%r14,strchr@PLT
	stg	%r2,176(%r15)
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L693
	lghi	%r1,0
.L690:
	lgr	%r2,%r1
	lmg	%r14,%r15,304(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	std	%f0,168(%r15)
	std	%f2,160(%r15)
	ld	%f0,168(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L697
	ld	%f0,160(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jh	.L699
.L697:
	ld	%f0,168(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnh	.L700
	ld	%f0,160(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L700
.L699:
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	j	.L703
.L700:
	ld	%f0,168(%r15)
.L703:
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	8
.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,184(%r15)
	stg	%r3,176(%r15)
	stg	%r4,168(%r15)
	stg	%r5,160(%r15)
	lg	%r1,176(%r15)
	sg	%r1,160(%r15)
	ag	%r1,184(%r15)
	stg	%r1,192(%r15)
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L709
	lg	%r1,184(%r15)
	j	.L710
.L709:
	lg	%r2,176(%r15)
	lg	%r1,160(%r15)
	clgr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	llgcr	%r1,%r1
	ltgr	%r1,%r1
	je	.L712
	lghi	%r1,0
	j	.L710
.L714:
	lg	%r1,184(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L713
	lg	%r1,184(%r15)
	aghi	%r1,1
	lg	%r2,160(%r15)
	aghik	%r3,%r2,-1
	lg	%r2,168(%r15)
	aghi	%r2,1
	lgr	%r4,%r3
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,memcmp@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L713
	lg	%r1,184(%r15)
	j	.L710
.L713:
	agsi	184(%r15),1
.L712:
	lg	%r1,184(%r15)
	clg	%r1,192(%r15)
	jle	.L714
	lghi	%r1,0
.L710:
	lgr	%r2,%r1
	lmg	%r14,%r15,312(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r4,160(%r15)
	lg	%r3,168(%r15)
	lg	%r2,176(%r15)
	brasl	%r14,memcpy@PLT
	lgr	%r1,%r2
	ag	%r1,160(%r15)
	lgr	%r2,%r1
	lmg	%r14,%r15,296(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	8
.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	larl	%r5,.L739
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	std	%f0,168(%r15)
	stg	%r2,160(%r15)
	mvhi	176(%r15),0
	mvhi	180(%r15),0
	ld	%f0,168(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L722
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	std	%f0,168(%r15)
	mvhi	180(%r15),1
.L722:
	ld	%f0,168(%r15)
	kdb	%f0,.L740-.L739(%r5)
	jnhe	.L737
	j	.L726
.L727:
	asi	176(%r15),1
	ld	%f0,168(%r15)
	ddb	%f0,.L741-.L739(%r5)
	std	%f0,168(%r15)
.L726:
	ld	%f0,168(%r15)
	kdb	%f0,.L740-.L739(%r5)
	jhe	.L727
	j	.L728
.L737:
	ld	%f0,168(%r15)
	kdb	%f0,.L742-.L739(%r5)
	jnl	.L728
	ld	%f0,168(%r15)
	lzdr	%f2
	cdbr	%f0,%f2
	je	.L728
	j	.L730
.L731:
	asi	176(%r15),-1
	ld	%f0,168(%r15)
	adbr	%f0,%f0
	std	%f0,168(%r15)
.L730:
	ld	%f0,168(%r15)
	kdb	%f0,.L742-.L739(%r5)
	jl	.L731
.L728:
	lg	%r1,160(%r15)
	l	%r2,176(%r15)
	st	%r2,0(%r1)
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L732
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	std	%f0,168(%r15)
.L732:
	lg	%r1,168(%r15)
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L739:
.L742:
	.long	1071644672
	.long	0
.L741:
	.long	1073741824
	.long	0
.L740:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	mvghi	184(%r15),0
	lg	%r1,168(%r15)
	stg	%r1,176(%r15)
	j	.L744
.L746:
	lg	%r1,176(%r15)
	risbg	%r1,%r1,63,128+63,0
	ltgr	%r1,%r1
	je	.L745
	lg	%r1,184(%r15)
	ag	%r1,160(%r15)
	stg	%r1,184(%r15)
.L745:
	lg	%r1,160(%r15)
	sllg	%r1,%r1,1
	stg	%r1,160(%r15)
	lg	%r1,176(%r15)
	srlg	%r1,%r1,1
	stg	%r1,176(%r15)
.L744:
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L746
	lg	%r1,184(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r1,%r2
	lgr	%r2,%r3
	stg	%r4,160(%r15)
	st	%r1,172(%r15)
	lr	%r1,%r3
	st	%r3,168(%r15)
	mvhi	180(%r15),1
	mvhi	176(%r15),0
	j	.L751
.L753:
	l	%r1,168(%r15)
	sll	%r1,1
	st	%r1,168(%r15)
	l	%r1,180(%r15)
	sll	%r1,1
	st	%r1,180(%r15)
.L751:
	l	%r1,168(%r15)
	cl	%r1,172(%r15)
	jhe	.L754
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L754
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jhe	.L753
	j	.L754
.L756:
	l	%r1,172(%r15)
	cl	%r1,168(%r15)
	jl	.L755
	l	%r1,172(%r15)
	s	%r1,168(%r15)
	st	%r1,172(%r15)
	oc	176(4,%r15),180(%r15)
.L755:
	l	%r1,180(%r15)
	srl	%r1,1
	st	%r1,180(%r15)
	l	%r1,168(%r15)
	srl	%r1,1
	st	%r1,168(%r15)
.L754:
	l	%r1,180(%r15)
	ltr	%r1,%r1
	jne	.L756
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L757
	l	%r1,172(%r15)
	j	.L758
.L757:
	l	%r1,176(%r15)
.L758:
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	stc	%r2,167(%r15)
	llc	%r1,167(%r15)
	ltr	%r1,%r1
	jne	.L762
	lhi	%r1,7
	j	.L763
.L762:
	llc	%r1,167(%r15)
	sll	%r1,8
	llgfr	%r1,%r1
	flogr	%r2,%r1
	lgr	%r1,%r2
	aghi	%r1,-32
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	ahi	%r1,-1
.L763:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jhe	.L767
	lg	%r1,160(%r15)
	lghi	%r2,-1
	xgr	%r1,%r2
	stg	%r1,160(%r15)
.L767:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L768
	lhi	%r1,63
	j	.L769
.L768:
	lg	%r1,160(%r15)
	flogr	%r2,%r1
	lgr	%r1,%r2
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	ahi	%r1,-1
.L769:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r3
	st	%r3,160(%r15)
	mvhi	172(%r15),0
	j	.L773
.L775:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L774
	l	%r1,172(%r15)
	a	%r1,160(%r15)
	st	%r1,172(%r15)
.L774:
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sll	%r1,1
	st	%r1,160(%r15)
.L773:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L775
	l	%r1,172(%r15)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,3
	st	%r1,188(%r15)
	l	%r1,164(%r15)
	nill	%r1,65528
	st	%r1,192(%r15)
	lg	%r1,176(%r15)
	clg	%r1,168(%r15)
	jl	.L780
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	clgr	%r1,%r2
	jle	.L787
.L780:
	mvhi	196(%r15),0
	j	.L782
.L783:
	llgf	%r1,196(%r15)
	sllg	%r1,%r1,3
	ag	%r1,176(%r15)
	llgf	%r2,196(%r15)
	sllg	%r2,%r2,3
	ag	%r2,168(%r15)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
	asi	196(%r15),1
.L782:
	l	%r1,196(%r15)
	cl	%r1,188(%r15)
	jl	.L783
	j	.L784
.L785:
	llgf	%r1,192(%r15)
	ag	%r1,176(%r15)
	llgf	%r2,192(%r15)
	lg	%r3,168(%r15)
	ic	%r2,0(%r3,%r2)
	stc	%r2,0(%r1)
	asi	192(%r15),1
.L784:
	l	%r1,164(%r15)
	cl	%r1,192(%r15)
	jh	.L785
	j	.L786
.L788:
	llgf	%r1,164(%r15)
	ag	%r1,176(%r15)
	llgf	%r2,164(%r15)
	lg	%r3,168(%r15)
	ic	%r2,0(%r3,%r2)
	stc	%r2,0(%r1)
.L787:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L788
	nopr	%r0
.L786:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,184(%r15)
	lg	%r1,176(%r15)
	clg	%r1,168(%r15)
	jl	.L792
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	clgr	%r1,%r2
	jle	.L798
.L792:
	mvhi	188(%r15),0
	j	.L794
.L795:
	llgf	%r1,188(%r15)
	sllg	%r1,%r1,1
	ag	%r1,176(%r15)
	llgf	%r2,188(%r15)
	sllg	%r2,%r2,1
	ag	%r2,168(%r15)
	lh	%r2,0(%r2)
	sth	%r2,0(%r1)
	asi	188(%r15),1
.L794:
	l	%r1,188(%r15)
	cl	%r1,184(%r15)
	jl	.L795
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L797
	l	%r1,164(%r15)
	ahi	%r1,-1
	llgfr	%r2,%r1
	l	%r1,164(%r15)
	ahi	%r1,-1
	llgfr	%r1,%r1
	ag	%r1,176(%r15)
	lg	%r3,168(%r15)
	ic	%r2,0(%r3,%r2)
	stc	%r2,0(%r1)
	j	.L797
.L799:
	llgf	%r1,164(%r15)
	ag	%r1,176(%r15)
	llgf	%r2,164(%r15)
	lg	%r3,168(%r15)
	ic	%r2,0(%r3,%r2)
	stc	%r2,0(%r1)
.L798:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L799
	nopr	%r0
.L797:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,2
	st	%r1,188(%r15)
	l	%r1,164(%r15)
	nill	%r1,65532
	st	%r1,192(%r15)
	lg	%r1,176(%r15)
	clg	%r1,168(%r15)
	jl	.L803
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	clgr	%r1,%r2
	jle	.L810
.L803:
	mvhi	196(%r15),0
	j	.L805
.L806:
	llgf	%r1,196(%r15)
	sllg	%r1,%r1,2
	ag	%r1,176(%r15)
	llgf	%r2,196(%r15)
	sllg	%r2,%r2,2
	ag	%r2,168(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	asi	196(%r15),1
.L805:
	l	%r1,196(%r15)
	cl	%r1,188(%r15)
	jl	.L806
	j	.L807
.L808:
	llgf	%r1,192(%r15)
	ag	%r1,176(%r15)
	llgf	%r2,192(%r15)
	lg	%r3,168(%r15)
	ic	%r2,0(%r3,%r2)
	stc	%r2,0(%r1)
	asi	192(%r15),1
.L807:
	l	%r1,164(%r15)
	cl	%r1,192(%r15)
	jh	.L808
	j	.L809
.L811:
	llgf	%r1,164(%r15)
	ag	%r1,176(%r15)
	llgf	%r2,164(%r15)
	lg	%r3,168(%r15)
	ic	%r2,0(%r3,%r2)
	stc	%r2,0(%r1)
.L810:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L811
	nopr	%r0
.L809:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	8
.globl __modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	lgf	%r1,164(%r15)
	lgf	%r4,160(%r15)
	lgr	%r3,%r1
	dsgr	%r2,%r4
	lgr	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.align	8
.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	cdlfbr	%f0,0,%r1,0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.align	8
.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	celfbr	%f0,0,%r1,0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.align	8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	cdlgbr	%f0,0,%r1,0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	celgbr	%f0,0,%r1,0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.align	8
.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	llgf	%r4,164(%r15)
	llgf	%r1,160(%r15)
	lgr	%r3,%r4
	lghi	%r2,0
	dlgr	%r2,%r1
	lgr	%r1,%r2
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.align	8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	sth	%r2,166(%r15)
	mvhi	172(%r15),0
	j	.L839
.L842:
	lhi	%r1,15
	s	%r1,172(%r15)
	llh	%r2,166(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L844
	asi	172(%r15),1
.L839:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L842
	j	.L841
.L844:
	nopr	%r0
.L841:
	l	%r1,172(%r15)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	sth	%r2,166(%r15)
	mvhi	172(%r15),0
	j	.L848
.L851:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L853
	asi	172(%r15),1
.L848:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L851
	j	.L850
.L853:
	nopr	%r0
.L850:
	l	%r1,172(%r15)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L863
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	le	%f0,164(%r15)
	keb	%f0,.L864-.L863(%r5)
	jnhe	.L861
	le	%f0,164(%r15)
	seb	%f0,.L864-.L863(%r5)
	cgebr	%r1,5,%f0
	algfi	%r1,32768
	j	.L859
.L861:
	le	%f0,164(%r15)
	cgebr	%r1,5,%f0
.L859:
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L863:
.L864:
	.long	1191182336
	.align	2
.text
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	sth	%r2,166(%r15)
	mvhi	168(%r15),0
	mvhi	172(%r15),0
	j	.L866
.L868:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L867
	asi	168(%r15),1
.L867:
	asi	172(%r15),1
.L866:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L868
	l	%r1,168(%r15)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	sth	%r2,166(%r15)
	mvhi	168(%r15),0
	mvhi	172(%r15),0
	j	.L873
.L875:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L874
	asi	168(%r15),1
.L874:
	asi	172(%r15),1
.L873:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L875
	l	%r1,168(%r15)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r3
	st	%r3,160(%r15)
	mvhi	172(%r15),0
	j	.L880
.L882:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L881
	l	%r1,172(%r15)
	a	%r1,160(%r15)
	st	%r1,172(%r15)
.L881:
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sll	%r1,1
	st	%r1,160(%r15)
.L880:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L882
	l	%r1,172(%r15)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r3
	st	%r3,160(%r15)
	mvhi	172(%r15),0
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L889
	lhi	%r1,0
	j	.L888
.L891:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L890
	l	%r1,172(%r15)
	a	%r1,164(%r15)
	st	%r1,172(%r15)
.L890:
	l	%r1,164(%r15)
	sll	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	srl	%r1,1
	st	%r1,160(%r15)
.L889:
	l	%r1,160(%r15)
	ltr	%r1,%r1
	jne	.L891
	l	%r1,172(%r15)
.L888:
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r1,%r2
	lgr	%r2,%r4
	st	%r1,172(%r15)
	lr	%r1,%r3
	st	%r3,168(%r15)
	lr	%r1,%r4
	st	%r4,164(%r15)
	mvhi	180(%r15),1
	mvhi	176(%r15),0
	j	.L895
.L897:
	l	%r1,168(%r15)
	sll	%r1,1
	st	%r1,168(%r15)
	l	%r1,180(%r15)
	sll	%r1,1
	st	%r1,180(%r15)
.L895:
	l	%r1,168(%r15)
	cl	%r1,172(%r15)
	jhe	.L898
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L898
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jhe	.L897
	j	.L898
.L900:
	l	%r1,172(%r15)
	cl	%r1,168(%r15)
	jl	.L899
	l	%r1,172(%r15)
	s	%r1,168(%r15)
	st	%r1,172(%r15)
	oc	176(4,%r15),180(%r15)
.L899:
	l	%r1,180(%r15)
	srl	%r1,1
	st	%r1,180(%r15)
	l	%r1,168(%r15)
	srl	%r1,1
	st	%r1,168(%r15)
.L898:
	l	%r1,180(%r15)
	ltr	%r1,%r1
	jne	.L900
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L901
	l	%r1,172(%r15)
	j	.L902
.L901:
	l	%r1,176(%r15)
.L902:
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	ste	%f2,160(%r15)
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnl	.L913
	lhi	%r1,-1
	j	.L908
.L913:
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnh	.L914
	lhi	%r1,1
	j	.L908
.L914:
	lhi	%r1,0
.L908:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	std	%f0,168(%r15)
	std	%f2,160(%r15)
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnl	.L925
	lhi	%r1,-1
	j	.L920
.L925:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnh	.L926
	lhi	%r1,1
	j	.L920
.L926:
	lhi	%r1,0
.L920:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,168(%r15)
	msg	%r1,160(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,168(%r15)
	msg	%r1,160(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r3
	st	%r3,160(%r15)
	mvhi	176(%r15),0
	mvhi	172(%r15),0
	l	%r1,160(%r15)
	ltr	%r1,%r1
	jhe	.L938
	l	%r1,160(%r15)
	lcr	%r1,%r1
	st	%r1,160(%r15)
	mvhi	176(%r15),1
.L938:
	mvi	183(%r15),0
	j	.L939
.L942:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L940
	l	%r1,172(%r15)
	a	%r1,164(%r15)
	st	%r1,172(%r15)
.L940:
	l	%r1,164(%r15)
	sll	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sra	%r1,1
	st	%r1,160(%r15)
	ic	%r1,183(%r15)
	ahi	%r1,1
	stc	%r1,183(%r15)
.L939:
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L941
	llc	%r1,183(%r15)
	clfi	%r1,31
	jle	.L942
.L941:
	l	%r1,176(%r15)
	ltr	%r1,%r1
	je	.L943
	l	%r1,172(%r15)
	lcr	%r1,%r1
	j	.L945
.L943:
	l	%r1,172(%r15)
.L945:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	mvhi	188(%r15),0
	lg	%r1,168(%r15)
	ltgr	%r1,%r1
	jhe	.L949
	lg	%r1,168(%r15)
	lcgr	%r1,%r1
	stg	%r1,168(%r15)
	l	%r1,188(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r15)
.L949:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jhe	.L950
	lg	%r1,160(%r15)
	lcgr	%r1,%r1
	stg	%r1,160(%r15)
	l	%r1,188(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r15)
.L950:
	lg	%r1,160(%r15)
	llgfr	%r2,%r1
	lg	%r1,168(%r15)
	llgfr	%r1,%r1
	lghi	%r4,0
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lgr	%r1,%r2
	llgfr	%r1,%r1
	stg	%r1,176(%r15)
	l	%r1,188(%r15)
	ltr	%r1,%r1
	je	.L951
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	stg	%r1,176(%r15)
.L951:
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lmg	%r14,%r15,304(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	mvhi	188(%r15),0
	lg	%r1,168(%r15)
	ltgr	%r1,%r1
	jhe	.L956
	lg	%r1,168(%r15)
	lcgr	%r1,%r1
	stg	%r1,168(%r15)
	mvhi	188(%r15),1
.L956:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jhe	.L957
	lg	%r1,160(%r15)
	lcgr	%r1,%r1
	stg	%r1,160(%r15)
.L957:
	lg	%r1,160(%r15)
	llgfr	%r2,%r1
	lg	%r1,168(%r15)
	llgfr	%r1,%r1
	lghi	%r4,1
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lgr	%r1,%r2
	llgfr	%r1,%r1
	stg	%r1,176(%r15)
	l	%r1,188(%r15)
	ltr	%r1,%r1
	je	.L958
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	stg	%r1,176(%r15)
.L958:
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lmg	%r14,%r15,304(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	lgr	%r2,%r4
	sth	%r1,166(%r15)
	lr	%r1,%r3
	sth	%r3,164(%r15)
	lr	%r1,%r4
	st	%r4,160(%r15)
	mvhhi	174(%r15),1
	mvhhi	172(%r15),0
	j	.L963
.L965:
	lh	%r1,164(%r15)
	sll	%r1,1
	sth	%r1,164(%r15)
	lh	%r1,174(%r15)
	sll	%r1,1
	sth	%r1,174(%r15)
.L963:
	llh	%r1,164(%r15)
	llh	%r2,166(%r15)
	clr	%r1,%r2
	jhe	.L966
	llh	%r1,174(%r15)
	ltr	%r1,%r1
	je	.L966
	lh	%r1,164(%r15)
	lhr	%r1,%r1
	ltr	%r1,%r1
	jhe	.L965
	j	.L966
.L968:
	llh	%r1,166(%r15)
	llh	%r2,164(%r15)
	clr	%r1,%r2
	jl	.L967
	lh	%r1,166(%r15)
	lh	%r2,164(%r15)
	sr	%r1,%r2
	sth	%r1,166(%r15)
	oc	172(2,%r15),174(%r15)
.L967:
	llh	%r1,174(%r15)
	srl	%r1,1
	sth	%r1,174(%r15)
	llh	%r1,164(%r15)
	srl	%r1,1
	sth	%r1,164(%r15)
.L966:
	llh	%r1,174(%r15)
	ltr	%r1,%r1
	jne	.L968
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L969
	lh	%r1,166(%r15)
	j	.L970
.L969:
	lh	%r1,172(%r15)
.L970:
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	mvghi	192(%r15),1
	mvghi	184(%r15),0
	j	.L974
.L976:
	lg	%r1,168(%r15)
	sllg	%r1,%r1,1
	stg	%r1,168(%r15)
	lg	%r1,192(%r15)
	sllg	%r1,%r1,1
	stg	%r1,192(%r15)
.L974:
	lg	%r1,168(%r15)
	clg	%r1,176(%r15)
	jhe	.L977
	lg	%r1,192(%r15)
	ltgr	%r1,%r1
	je	.L977
	lg	%r1,168(%r15)
	risbg	%r1,%r1,32,128+32,0
	ltgr	%r1,%r1
	je	.L976
	j	.L977
.L979:
	lg	%r1,176(%r15)
	clg	%r1,168(%r15)
	jl	.L978
	lg	%r1,176(%r15)
	sg	%r1,168(%r15)
	stg	%r1,176(%r15)
	oc	184(8,%r15),192(%r15)
.L978:
	lg	%r1,192(%r15)
	srlg	%r1,%r1,1
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	srlg	%r1,%r1,1
	stg	%r1,168(%r15)
.L977:
	lg	%r1,192(%r15)
	ltgr	%r1,%r1
	jne	.L979
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L980
	lg	%r1,176(%r15)
	j	.L981
.L980:
	lg	%r1,184(%r15)
.L981:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r3,164(%r15)
	mvhi	196(%r15),32
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	l	%r1,164(%r15)
	n	%r1,196(%r15)
	ltr	%r1,%r1
	je	.L985
	mvhi	180(%r15),0
	l	%r2,188(%r15)
	l	%r1,164(%r15)
	s	%r1,196(%r15)
	sllk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	j	.L986
.L985:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L987
	lg	%r1,168(%r15)
	j	.L989
.L987:
	l	%r2,188(%r15)
	l	%r1,164(%r15)
	sllk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,184(%r15)
	lr	%r2,%r1
	l	%r1,164(%r15)
	sllk	%r3,%r2,0(%r1)
	l	%r2,188(%r15)
	l	%r1,196(%r15)
	s	%r1,164(%r15)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	st	%r1,176(%r15)
.L986:
	lg	%r1,176(%r15)
.L989:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	stg	%r2,184(%r15)
	lgr	%r12,%r3
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	stg	%r2,168(%r15)
	stg	%r3,176(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	mvhi	228(%r15),64
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	l	%r1,164(%r15)
	n	%r1,228(%r15)
	ltr	%r1,%r1
	je	.L993
	mvghi	200(%r15),0
	lg	%r2,216(%r15)
	l	%r1,164(%r15)
	s	%r1,228(%r15)
	sllg	%r1,%r2,0(%r1)
	stg	%r1,192(%r15)
	j	.L994
.L993:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L995
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L997
.L995:
	lg	%r2,216(%r15)
	l	%r1,164(%r15)
	sllg	%r1,%r2,0(%r1)
	stg	%r1,200(%r15)
	lg	%r1,208(%r15)
	lgr	%r2,%r1
	l	%r1,164(%r15)
	sllg	%r3,%r2,0(%r1)
	lg	%r2,216(%r15)
	l	%r1,228(%r15)
	s	%r1,164(%r15)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	stg	%r1,192(%r15)
.L994:
	lg	%r1,184(%r15)
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L997:
	lg	%r2,184(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r3,164(%r15)
	mvhi	196(%r15),32
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	l	%r1,164(%r15)
	n	%r1,196(%r15)
	ltr	%r1,%r1
	je	.L1001
	l	%r2,184(%r15)
	l	%r1,196(%r15)
	ahi	%r1,-1
	srak	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	l	%r2,184(%r15)
	l	%r1,164(%r15)
	s	%r1,196(%r15)
	srak	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	j	.L1002
.L1001:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1003
	lg	%r1,168(%r15)
	j	.L1005
.L1003:
	l	%r2,184(%r15)
	l	%r1,164(%r15)
	srak	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	l	%r1,184(%r15)
	lr	%r2,%r1
	l	%r1,196(%r15)
	s	%r1,164(%r15)
	sllk	%r3,%r2,0(%r1)
	l	%r2,188(%r15)
	l	%r1,164(%r15)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	st	%r1,180(%r15)
.L1002:
	lg	%r1,176(%r15)
.L1005:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	stg	%r2,184(%r15)
	lgr	%r12,%r3
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	stg	%r2,168(%r15)
	stg	%r3,176(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	mvhi	228(%r15),64
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	l	%r1,164(%r15)
	n	%r1,228(%r15)
	ltr	%r1,%r1
	je	.L1009
	lg	%r2,208(%r15)
	l	%r1,228(%r15)
	ahi	%r1,-1
	srag	%r1,%r2,0(%r1)
	stg	%r1,192(%r15)
	lg	%r2,208(%r15)
	l	%r1,164(%r15)
	s	%r1,228(%r15)
	srag	%r1,%r2,0(%r1)
	stg	%r1,200(%r15)
	j	.L1010
.L1009:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1011
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L1013
.L1011:
	lg	%r2,208(%r15)
	l	%r1,164(%r15)
	srag	%r1,%r2,0(%r1)
	stg	%r1,192(%r15)
	lg	%r1,208(%r15)
	lgr	%r2,%r1
	l	%r1,228(%r15)
	s	%r1,164(%r15)
	sllg	%r3,%r2,0(%r1)
	lg	%r2,216(%r15)
	l	%r1,164(%r15)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	stg	%r1,200(%r15)
.L1010:
	lg	%r1,184(%r15)
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L1013:
	lg	%r2,184(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	srlg	%r2,%r1,56
	lg	%r1,160(%r15)
	srlg	%r1,%r1,40
	risbg	%r1,%r1,48,128+55,0
	ogr	%r2,%r1
	lg	%r1,160(%r15)
	srlg	%r1,%r1,24
	risbg	%r1,%r1,40,128+47,0
	ogr	%r2,%r1
	lg	%r1,160(%r15)
	srlg	%r1,%r1,8
	risbg	%r1,%r1,32,128+39,0
	ogr	%r2,%r1
	lg	%r1,160(%r15)
	sllg	%r1,%r1,8
	risbg	%r1,%r1,24,128+31,0
	ogr	%r2,%r1
	lg	%r1,160(%r15)
	sllg	%r1,%r1,24
	risbg	%r1,%r1,16,128+23,0
	ogr	%r2,%r1
	lg	%r1,160(%r15)
	sllg	%r1,%r1,40
	risbg	%r1,%r1,8,128+15,0
	ogr	%r2,%r1
	lg	%r1,160(%r15)
	sllg	%r1,%r1,56
	ogr	%r1,%r2
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	srlk	%r2,%r1,24
	l	%r1,164(%r15)
	srl	%r1,8
	nilf	%r1,65280
	or	%r2,%r1
	l	%r1,164(%r15)
	sll	%r1,8
	nilf	%r1,16711680
	or	%r2,%r1
	l	%r1,164(%r15)
	sll	%r1,24
	or	%r1,%r2
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	st	%r1,220(%r15)
	l	%r1,220(%r15)
	clfi	%r1,65535
	jh	.L1025
	lhi	%r1,16
	j	.L1026
.L1025:
	lhi	%r1,0
.L1026:
	st	%r1,216(%r15)
	lhi	%r1,16
	s	%r1,216(%r15)
	l	%r2,220(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,212(%r15)
	l	%r1,216(%r15)
	st	%r1,208(%r15)
	l	%r1,212(%r15)
	nilf	%r1,65280
	ltr	%r1,%r1
	jne	.L1027
	lhi	%r1,8
	j	.L1028
.L1027:
	lhi	%r1,0
.L1028:
	st	%r1,204(%r15)
	lhi	%r1,8
	s	%r1,204(%r15)
	l	%r2,212(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,200(%r15)
	l	%r1,208(%r15)
	a	%r1,204(%r15)
	st	%r1,196(%r15)
	l	%r1,200(%r15)
	nilf	%r1,240
	ltr	%r1,%r1
	jne	.L1029
	lhi	%r1,4
	j	.L1030
.L1029:
	lhi	%r1,0
.L1030:
	st	%r1,192(%r15)
	lhi	%r1,4
	s	%r1,192(%r15)
	l	%r2,200(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,188(%r15)
	l	%r1,196(%r15)
	a	%r1,192(%r15)
	st	%r1,184(%r15)
	l	%r1,188(%r15)
	nilf	%r1,12
	ltr	%r1,%r1
	jne	.L1031
	lhi	%r1,2
	j	.L1032
.L1031:
	lhi	%r1,0
.L1032:
	st	%r1,180(%r15)
	lhi	%r1,2
	s	%r1,180(%r15)
	l	%r2,188(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	l	%r1,184(%r15)
	a	%r1,180(%r15)
	st	%r1,172(%r15)
	l	%r1,176(%r15)
	nilf	%r1,2
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lr	%r2,%r1
	lhi	%r1,2
	s	%r1,176(%r15)
	msr	%r1,%r2
	a	%r1,172(%r15)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	8
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,176(%r15)
	stg	%r3,184(%r15)
	lg	%r1,176(%r15)
	lpgr	%r1,%r1
	aghi	%r1,-1
	srlg	%r1,%r1,63
	lcr	%r1,%r1
	lgfr	%r1,%r1
	stg	%r1,192(%r15)
	lg	%r1,176(%r15)
	lg	%r2,192(%r15)
	lghi	%r3,-1
	xgr	%r2,%r3
	ngr	%r2,%r1
	lg	%r1,184(%r15)
	ng	%r1,192(%r15)
	ogr	%r1,%r2
	flogr	%r2,%r1
	lgr	%r1,%r2
	lr	%r2,%r1
	lg	%r1,192(%r15)
	nilf	%r1,64
	ar	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,160(%r15)
	stg	%r1,176(%r15)
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	cr	%r1,%r2
	jhe	.L1041
	lhi	%r1,0
	j	.L1046
.L1041:
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	cr	%r1,%r2
	jle	.L1043
	lhi	%r1,2
	j	.L1046
.L1043:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jhe	.L1044
	lhi	%r1,0
	j	.L1046
.L1044:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jle	.L1045
	lhi	%r1,2
	j	.L1046
.L1045:
	lhi	%r1,1
.L1046:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r3,160(%r15)
	lg	%r2,168(%r15)
	brasl	%r14,__cmpdi2@PLT
	lgr	%r1,%r2
	ahi	%r1,-1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r14,%r15,288(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	8
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r12,%r2
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	stg	%r4,176(%r15)
	stg	%r5,184(%r15)
	lgr	%r12,%r3
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	lg	%r2,176(%r15)
	lg	%r3,184(%r15)
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,192(%r15)
	stg	%r3,200(%r15)
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	cgr	%r1,%r2
	jhe	.L1054
	lhi	%r1,0
	j	.L1059
.L1054:
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	cgr	%r1,%r2
	jle	.L1056
	lhi	%r1,2
	j	.L1059
.L1056:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jhe	.L1057
	lhi	%r1,0
	j	.L1059
.L1057:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jle	.L1058
	lhi	%r1,2
	j	.L1059
.L1058:
	lhi	%r1,1
.L1059:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	st	%r1,220(%r15)
	l	%r1,220(%r15)
	nilh	%r1,0
	ltr	%r1,%r1
	jne	.L1063
	lhi	%r1,16
	j	.L1064
.L1063:
	lhi	%r1,0
.L1064:
	st	%r1,216(%r15)
	l	%r1,216(%r15)
	l	%r2,220(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,212(%r15)
	l	%r1,216(%r15)
	st	%r1,208(%r15)
	l	%r1,212(%r15)
	nilf	%r1,255
	ltr	%r1,%r1
	jne	.L1065
	lhi	%r1,8
	j	.L1066
.L1065:
	lhi	%r1,0
.L1066:
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	l	%r2,212(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,200(%r15)
	l	%r1,208(%r15)
	a	%r1,204(%r15)
	st	%r1,196(%r15)
	l	%r1,200(%r15)
	nilf	%r1,15
	ltr	%r1,%r1
	jne	.L1067
	lhi	%r1,4
	j	.L1068
.L1067:
	lhi	%r1,0
.L1068:
	st	%r1,192(%r15)
	l	%r1,192(%r15)
	l	%r2,200(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,188(%r15)
	l	%r1,196(%r15)
	a	%r1,192(%r15)
	st	%r1,184(%r15)
	l	%r1,188(%r15)
	nilf	%r1,3
	ltr	%r1,%r1
	jne	.L1069
	lhi	%r1,2
	j	.L1070
.L1069:
	lhi	%r1,0
.L1070:
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	l	%r2,188(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	nilf	%r1,3
	st	%r1,172(%r15)
	l	%r1,184(%r15)
	a	%r1,180(%r15)
	st	%r1,168(%r15)
	l	%r1,172(%r15)
	srl	%r1,1
	lhi	%r2,2
	sr	%r2,%r1
	l	%r1,172(%r15)
	xilf	%r1,4294967295
	nilf	%r1,1
	lcr	%r1,%r1
	nr	%r1,%r2
	a	%r1,168(%r15)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,176(%r15)
	stg	%r3,184(%r15)
	lg	%r1,184(%r15)
	lpgr	%r1,%r1
	aghi	%r1,-1
	srlg	%r1,%r1,63
	lcr	%r1,%r1
	lgfr	%r1,%r1
	stg	%r1,192(%r15)
	lg	%r1,176(%r15)
	ng	%r1,192(%r15)
	lgr	%r3,%r1
	lg	%r1,184(%r15)
	lg	%r2,192(%r15)
	lghi	%r4,-1
	xgr	%r2,%r4
	ngr	%r1,%r2
	ogr	%r1,%r3
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	lr	%r2,%r1
	lg	%r1,192(%r15)
	nilf	%r1,64
	ar	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r12,%r2
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,176(%r15)
	stg	%r3,184(%r15)
	lg	%r1,184(%r15)
	ltgr	%r1,%r1
	jne	.L1079
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L1080
	lhi	%r1,0
	j	.L1082
.L1080:
	lg	%r1,176(%r15)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,65
	j	.L1082
.L1079:
	lg	%r1,184(%r15)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,1
.L1082:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r3,164(%r15)
	mvhi	196(%r15),32
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	l	%r1,164(%r15)
	n	%r1,196(%r15)
	ltr	%r1,%r1
	je	.L1086
	mvhi	176(%r15),0
	l	%r2,184(%r15)
	l	%r1,164(%r15)
	s	%r1,196(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	j	.L1087
.L1086:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1088
	lg	%r1,168(%r15)
	j	.L1090
.L1088:
	l	%r2,184(%r15)
	l	%r1,164(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	l	%r2,184(%r15)
	l	%r1,196(%r15)
	s	%r1,164(%r15)
	sllk	%r3,%r2,0(%r1)
	l	%r2,188(%r15)
	l	%r1,164(%r15)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	st	%r1,180(%r15)
.L1087:
	lg	%r1,176(%r15)
.L1090:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	stg	%r2,184(%r15)
	lgr	%r12,%r3
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	stg	%r2,168(%r15)
	stg	%r3,176(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	mvhi	228(%r15),64
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	l	%r1,164(%r15)
	n	%r1,228(%r15)
	ltr	%r1,%r1
	je	.L1094
	mvghi	192(%r15),0
	lg	%r2,208(%r15)
	l	%r1,164(%r15)
	s	%r1,228(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r15)
	j	.L1095
.L1094:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1096
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L1098
.L1096:
	lg	%r2,208(%r15)
	l	%r1,164(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,192(%r15)
	lg	%r2,208(%r15)
	l	%r1,228(%r15)
	s	%r1,164(%r15)
	sllg	%r3,%r2,0(%r1)
	lg	%r2,216(%r15)
	l	%r1,164(%r15)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	stg	%r1,200(%r15)
.L1095:
	lg	%r1,184(%r15)
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L1098:
	lg	%r2,184(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	mvhi	196(%r15),16
	l	%r1,196(%r15)
	lhi	%r2,-1
	srlk	%r1,%r2,0(%r1)
	st	%r1,192(%r15)
	l	%r2,164(%r15)
	n	%r2,192(%r15)
	l	%r1,160(%r15)
	n	%r1,192(%r15)
	msr	%r1,%r2
	st	%r1,172(%r15)
	l	%r2,172(%r15)
	l	%r1,196(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,188(%r15)
	l	%r1,172(%r15)
	n	%r1,192(%r15)
	st	%r1,172(%r15)
	l	%r1,196(%r15)
	l	%r2,164(%r15)
	srl	%r2,0(%r1)
	l	%r1,160(%r15)
	n	%r1,192(%r15)
	msr	%r1,%r2
	a	%r1,188(%r15)
	st	%r1,184(%r15)
	l	%r2,172(%r15)
	l	%r3,184(%r15)
	n	%r3,192(%r15)
	l	%r1,196(%r15)
	sllk	%r1,%r3,0(%r1)
	ark	%r1,%r2,%r1
	st	%r1,172(%r15)
	l	%r1,196(%r15)
	l	%r2,184(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,168(%r15)
	l	%r2,172(%r15)
	l	%r1,196(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,172(%r15)
	n	%r1,192(%r15)
	st	%r1,172(%r15)
	l	%r1,196(%r15)
	l	%r2,160(%r15)
	srl	%r2,0(%r1)
	l	%r1,164(%r15)
	n	%r1,192(%r15)
	msr	%r1,%r2
	a	%r1,180(%r15)
	st	%r1,176(%r15)
	l	%r2,172(%r15)
	l	%r3,176(%r15)
	n	%r3,192(%r15)
	l	%r1,196(%r15)
	sllk	%r1,%r3,0(%r1)
	ark	%r1,%r2,%r1
	st	%r1,172(%r15)
	l	%r2,168(%r15)
	l	%r1,196(%r15)
	l	%r3,176(%r15)
	srlk	%r1,%r3,0(%r1)
	ark	%r1,%r2,%r1
	st	%r1,168(%r15)
	l	%r2,168(%r15)
	l	%r1,196(%r15)
	l	%r3,164(%r15)
	srlk	%r4,%r3,0(%r1)
	l	%r1,196(%r15)
	l	%r3,160(%r15)
	srlk	%r1,%r3,0(%r1)
	msr	%r1,%r4
	ark	%r1,%r2,%r1
	st	%r1,168(%r15)
	lg	%r1,168(%r15)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,192(%r15)
	lg	%r1,160(%r15)
	stg	%r1,184(%r15)
	llgf	%r2,188(%r15)
	llgf	%r1,196(%r15)
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__muldsi3@PLT
	lgr	%r1,%r2
	stg	%r1,176(%r15)
	l	%r2,176(%r15)
	l	%r3,192(%r15)
	l	%r1,188(%r15)
	msr	%r3,%r1
	l	%r4,196(%r15)
	l	%r1,184(%r15)
	msr	%r1,%r4
	ar	%r1,%r3
	ark	%r1,%r2,%r1
	st	%r1,176(%r15)
	lg	%r1,176(%r15)
	lgr	%r2,%r1
	lmg	%r14,%r15,312(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-248(%r15)
	.cfi_def_cfa_offset 408
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	mvhi	244(%r15),32
	l	%r1,244(%r15)
	lghi	%r2,-1
	srlg	%r1,%r2,0(%r1)
	stg	%r1,232(%r15)
	lg	%r2,168(%r15)
	ng	%r2,232(%r15)
	lg	%r1,160(%r15)
	ng	%r1,232(%r15)
	msgr	%r1,%r2
	stg	%r1,192(%r15)
	lg	%r2,192(%r15)
	l	%r1,244(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,224(%r15)
	lg	%r1,192(%r15)
	ng	%r1,232(%r15)
	stg	%r1,192(%r15)
	l	%r1,244(%r15)
	lg	%r2,168(%r15)
	srlg	%r2,%r2,0(%r1)
	lg	%r1,160(%r15)
	ng	%r1,232(%r15)
	msgr	%r1,%r2
	ag	%r1,224(%r15)
	stg	%r1,216(%r15)
	lg	%r2,192(%r15)
	lg	%r3,216(%r15)
	ng	%r3,232(%r15)
	l	%r1,244(%r15)
	sllg	%r1,%r3,0(%r1)
	agrk	%r1,%r2,%r1
	stg	%r1,192(%r15)
	l	%r1,244(%r15)
	lg	%r2,216(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,184(%r15)
	lg	%r2,192(%r15)
	l	%r1,244(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,208(%r15)
	lg	%r1,192(%r15)
	ng	%r1,232(%r15)
	stg	%r1,192(%r15)
	l	%r1,244(%r15)
	lg	%r2,160(%r15)
	srlg	%r2,%r2,0(%r1)
	lg	%r1,168(%r15)
	ng	%r1,232(%r15)
	msgr	%r1,%r2
	ag	%r1,208(%r15)
	stg	%r1,200(%r15)
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	ng	%r3,232(%r15)
	l	%r1,244(%r15)
	sllg	%r1,%r3,0(%r1)
	agrk	%r1,%r2,%r1
	stg	%r1,192(%r15)
	lg	%r2,184(%r15)
	l	%r1,244(%r15)
	lg	%r3,200(%r15)
	srlg	%r1,%r3,0(%r1)
	agrk	%r1,%r2,%r1
	stg	%r1,184(%r15)
	lg	%r2,184(%r15)
	l	%r1,244(%r15)
	lg	%r3,168(%r15)
	srlg	%r4,%r3,0(%r1)
	l	%r1,244(%r15)
	lg	%r3,160(%r15)
	srlg	%r1,%r3,0(%r1)
	msgr	%r1,%r4
	agrk	%r1,%r2,%r1
	stg	%r1,184(%r15)
	lg	%r1,176(%r15)
	lg	%r2,184(%r15)
	lg	%r3,192(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	8
.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-264(%r15)
	.cfi_def_cfa_offset 424
	stg	%r2,208(%r15)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,192(%r15)
	stg	%r3,200(%r15)
	lgr	%r12,%r4
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,176(%r15)
	stg	%r3,184(%r15)
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	stg	%r2,248(%r15)
	stg	%r3,256(%r15)
	lg	%r2,176(%r15)
	lg	%r3,184(%r15)
	stg	%r2,232(%r15)
	stg	%r3,240(%r15)
	aghik	%r1,%r15,160
	lg	%r4,240(%r15)
	lg	%r3,256(%r15)
	lgr	%r2,%r1
	brasl	%r14,__mulddi3@PLT
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,216(%r15)
	stg	%r3,224(%r15)
	lg	%r2,216(%r15)
	lg	%r3,248(%r15)
	lg	%r1,240(%r15)
	msgr	%r3,%r1
	lg	%r4,256(%r15)
	lg	%r1,232(%r15)
	msgr	%r1,%r4
	agr	%r1,%r3
	agrk	%r1,%r2,%r1
	stg	%r1,216(%r15)
	lg	%r1,208(%r15)
	lg	%r2,216(%r15)
	lg	%r3,224(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,208(%r15)
	lmg	%r12,%r15,360(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	lcgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.align	8
.globl __negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,176(%r15)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	lg	%r4,160(%r15)
	lg	%r5,168(%r15)
	lg	%r1,176(%r15)
	lghi	%r2,0
	lghi	%r3,0
	slgr	%r3,%r5
	slbgr	%r2,%r4
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r15)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	stg	%r1,168(%r15)
	l	%r2,168(%r15)
	l	%r1,172(%r15)
	xr	%r1,%r2
	st	%r1,188(%r15)
	l	%r1,188(%r15)
	srl	%r1,16
	x	%r1,188(%r15)
	st	%r1,184(%r15)
	l	%r1,184(%r15)
	srl	%r1,8
	x	%r1,184(%r15)
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	srl	%r1,4
	x	%r1,180(%r15)
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	nilf	%r1,15
	lhi	%r2,27030
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	8
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,184(%r15)
	stg	%r3,192(%r15)
	lg	%r2,184(%r15)
	lg	%r1,192(%r15)
	xgr	%r1,%r2
	stg	%r1,176(%r15)
	l	%r2,176(%r15)
	l	%r1,180(%r15)
	xr	%r1,%r2
	st	%r1,212(%r15)
	l	%r1,212(%r15)
	srl	%r1,16
	x	%r1,212(%r15)
	st	%r1,208(%r15)
	l	%r1,208(%r15)
	srl	%r1,8
	x	%r1,208(%r15)
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	srl	%r1,4
	x	%r1,204(%r15)
	st	%r1,200(%r15)
	l	%r1,200(%r15)
	nilf	%r1,15
	lhi	%r2,27030
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	srl	%r1,16
	x	%r1,180(%r15)
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	srl	%r1,8
	x	%r1,176(%r15)
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,4
	x	%r1,172(%r15)
	st	%r1,168(%r15)
	l	%r1,168(%r15)
	nilf	%r1,15
	lhi	%r2,27030
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.section	.rodata.cst8
	.align	8
.LC17:
	.quad	6148914691236517205
	.align	8
.LC18:
	.quad	3689348814741910323
.text
	.align	8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	larl	%r5,.L1140
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	stg	%r1,200(%r15)
	lg	%r1,200(%r15)
	srlg	%r1,%r1,1
	lgrl	%r2,.LC17
	ngrk	%r2,%r1,%r2
	lg	%r1,200(%r15)
	sgr	%r1,%r2
	stg	%r1,192(%r15)
	lg	%r1,192(%r15)
	srlg	%r1,%r1,2
	lgrl	%r2,.LC18
	ngrk	%r2,%r1,%r2
	lgrl	%r1,.LC18
	ng	%r1,192(%r15)
	agrk	%r1,%r2,%r1
	stg	%r1,184(%r15)
	lg	%r1,184(%r15)
	srlg	%r1,%r1,4
	ag	%r1,184(%r15)
	ng	%r1,.L1141-.L1140(%r5)
	stg	%r1,176(%r15)
	lg	%r1,176(%r15)
	lr	%r2,%r1
	lg	%r1,176(%r15)
	srlg	%r1,%r1,32
	ark	%r1,%r2,%r1
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,16
	a	%r1,172(%r15)
	st	%r1,168(%r15)
	l	%r1,168(%r15)
	srl	%r1,8
	a	%r1,168(%r15)
	nilf	%r1,127
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1140:
.L1141:
	.quad	1085102592571150095
	.align	2
.text
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	st	%r1,188(%r15)
	l	%r1,188(%r15)
	srl	%r1,1
	nilf	%r1,1431655765
	lr	%r2,%r1
	l	%r1,188(%r15)
	sr	%r1,%r2
	st	%r1,184(%r15)
	l	%r1,184(%r15)
	srl	%r1,2
	nilf	%r1,858993459
	l	%r2,184(%r15)
	nilf	%r2,858993459
	ar	%r1,%r2
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	srl	%r1,4
	a	%r1,180(%r15)
	nilf	%r1,252645135
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	srl	%r1,16
	a	%r1,176(%r15)
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,8
	a	%r1,172(%r15)
	nilf	%r1,63
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
	.align	8
.LC20:
	.quad	6148914691236517205
	.align	8
.LC21:
	.quad	3689348814741910323
	.align	8
.LC22:
	.quad	1085102592571150095
.text
	.align	8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	ldgr	%f5,%r7
	.cfi_register 7, 22
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-272(%r15)
	.cfi_def_cfa_offset 432
	lgr	%r7,%r2
	lg	%r2,0(%r7)
	lg	%r3,8(%r7)
	stg	%r2,176(%r15)
	stg	%r3,184(%r15)
	lg	%r2,176(%r15)
	lg	%r3,184(%r15)
	stg	%r2,256(%r15)
	stg	%r3,264(%r15)
	lg	%r1,256(%r15)
	sllg	%r2,%r1,63
	lg	%r1,264(%r15)
	srlg	%r1,%r1,1
	ogr	%r1,%r2
	lg	%r2,256(%r15)
	srlg	%r2,%r2,1
	lgrl	%r3,.LC20
	ngrk	%r8,%r2,%r3
	lgrl	%r2,.LC20
	ngrk	%r9,%r1,%r2
	lg	%r2,256(%r15)
	lg	%r3,264(%r15)
	slgr	%r3,%r9
	slbgr	%r2,%r8
	stg	%r2,240(%r15)
	stg	%r3,248(%r15)
	lg	%r1,240(%r15)
	sllg	%r2,%r1,62
	lg	%r1,248(%r15)
	srlg	%r1,%r1,2
	ogr	%r1,%r2
	lg	%r2,240(%r15)
	srlg	%r2,%r2,2
	lgrl	%r3,.LC21
	ngrk	%r10,%r2,%r3
	lgrl	%r2,.LC21
	ngrk	%r11,%r1,%r2
	lgrl	%r1,.LC21
	ng	%r1,240(%r15)
	stg	%r1,160(%r15)
	lgrl	%r1,.LC21
	ng	%r1,248(%r15)
	stg	%r1,168(%r15)
	lgr	%r2,%r10
	lgr	%r3,%r11
	alg	%r3,168(%r15)
	alcg	%r2,160(%r15)
	stg	%r2,224(%r15)
	stg	%r3,232(%r15)
	lg	%r1,224(%r15)
	sllg	%r2,%r1,60
	lg	%r1,232(%r15)
	srlg	%r5,%r1,4
	ogr	%r5,%r2
	lg	%r1,224(%r15)
	srlg	%r4,%r1,4
	lgr	%r2,%r4
	lgr	%r3,%r5
	alg	%r3,232(%r15)
	alcg	%r2,224(%r15)
	lgrl	%r1,.LC22
	ngrk	%r1,%r2,%r1
	stg	%r1,208(%r15)
	lgrl	%r1,.LC22
	ngrk	%r1,%r3,%r1
	stg	%r1,216(%r15)
	lg	%r1,216(%r15)
	lg	%r2,208(%r15)
	srlg	%r2,%r2,0
	agr	%r1,%r2
	stg	%r1,200(%r15)
	lg	%r1,200(%r15)
	lr	%r2,%r1
	lg	%r1,200(%r15)
	srlg	%r1,%r1,32
	ark	%r1,%r2,%r1
	st	%r1,196(%r15)
	l	%r1,196(%r15)
	srl	%r1,16
	a	%r1,196(%r15)
	st	%r1,192(%r15)
	l	%r1,192(%r15)
	srl	%r1,8
	a	%r1,192(%r15)
	nilf	%r1,255
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	lgdr	%r7,%f5
	.cfi_restore 7
	br	%r14
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L1161
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	std	%f0,168(%r15)
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,180(%r15)
	ld	%f0,.L1162-.L1161(%r5)
	std	%f0,184(%r15)
.L1154:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L1151
	ld	%f0,184(%r15)
	mdb	%f0,168(%r15)
	std	%f0,184(%r15)
.L1151:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L1159
	ld	%f0,168(%r15)
	mdb	%f0,168(%r15)
	std	%f0,168(%r15)
	j	.L1154
.L1159:
	nopr	%r0
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L1155
	ld	%f0,.L1162-.L1161(%r5)
	ddb	%f0,184(%r15)
	j	.L1157
.L1155:
	ld	%f0,184(%r15)
.L1157:
	nopr	%r0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1161:
.L1162:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L1174
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	ste	%f0,164(%r15)
	lgr	%r1,%r2
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,168(%r15)
	le	%f0,.L1175-.L1174(%r5)
	ste	%f0,172(%r15)
.L1167:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L1164
	le	%f0,172(%r15)
	meeb	%f0,164(%r15)
	ste	%f0,172(%r15)
.L1164:
	l	%r1,160(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L1172
	le	%f0,164(%r15)
	meeb	%f0,164(%r15)
	ste	%f0,164(%r15)
	j	.L1167
.L1172:
	nopr	%r0
	l	%r1,168(%r15)
	ltr	%r1,%r1
	je	.L1168
	le	%f0,.L1175-.L1174(%r5)
	deb	%f0,172(%r15)
	j	.L1170
.L1168:
	le	%f0,172(%r15)
.L1170:
	nopr	%r0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1174:
.L1175:
	.long	1065353216
	.align	2
.text
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,160(%r15)
	stg	%r1,176(%r15)
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	clr	%r1,%r2
	jhe	.L1177
	lhi	%r1,0
	j	.L1182
.L1177:
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	clr	%r1,%r2
	jle	.L1179
	lhi	%r1,2
	j	.L1182
.L1179:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jhe	.L1180
	lhi	%r1,0
	j	.L1182
.L1180:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jle	.L1181
	lhi	%r1,2
	j	.L1182
.L1181:
	lhi	%r1,1
.L1182:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r3,160(%r15)
	lg	%r2,168(%r15)
	brasl	%r14,__ucmpdi2@PLT
	lgr	%r1,%r2
	ahi	%r1,-1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r14,%r15,288(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	8
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r12,%r2
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	stg	%r4,176(%r15)
	stg	%r5,184(%r15)
	lgr	%r12,%r3
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	lg	%r2,176(%r15)
	lg	%r3,184(%r15)
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,192(%r15)
	stg	%r3,200(%r15)
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	clgr	%r1,%r2
	jhe	.L1190
	lhi	%r1,0
	j	.L1195
.L1190:
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	clgr	%r1,%r2
	jle	.L1192
	lhi	%r1,2
	j	.L1195
.L1192:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jhe	.L1193
	lhi	%r1,0
	j	.L1195
.L1193:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jle	.L1194
	lhi	%r1,2
	j	.L1195
.L1194:
	lhi	%r1,1
.L1195:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
