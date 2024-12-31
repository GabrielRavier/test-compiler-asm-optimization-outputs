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
	lg	%r2,184(%r15)
	lg	%r3,192(%r15)
	lg	%r1,176(%r15)
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
	lg	%r2,184(%r15)
	lg	%r3,192(%r15)
	lg	%r1,176(%r15)
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,168(%r15)
	ic	%r2,0(%r2)
	llcr	%r2,%r2
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	l	%r1,172(%r15)
	lr	%r2,%r1
	lg	%r1,184(%r15)
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r2,0(%r1)
	llcr	%r2,%r2
	l	%r3,164(%r15)
	cr	%r3,%r2
	je	.L80
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	ic	%r2,0(%r2)
	llcr	%r2,%r2
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,160(%r15)
	ic	%r2,0(%r2)
	llcr	%r2,%r2
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,168(%r15)
	ic	%r2,0(%r2)
	llcr	%r2,%r2
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	llcr	%r1,%r1
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
	.align	8
.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	larl	%r5,.L307
	lgrl	%r1,seed
	msg	%r1,.L308-.L307(%r5)
	aghi	%r1,1
	stgrl	%r1,seed
	lgrl	%r1,seed
	srlg	%r1,%r1,33
	lgfr	%r1,%r1
	lgr	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L307:
.L308:
	.quad	6364136223846793005
	.align	2
.text
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
	jne	.L310
	lg	%r1,168(%r15)
	mvghi	8(%r1),0
	lg	%r1,168(%r15)
	lg	%r2,8(%r1)
	lg	%r1,168(%r15)
	stg	%r2,0(%r1)
	j	.L309
.L310:
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
	je	.L309
	lg	%r1,168(%r15)
	lg	%r1,0(%r1)
	lg	%r2,168(%r15)
	stg	%r2,8(%r1)
.L309:
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
	je	.L315
	lg	%r1,160(%r15)
	lg	%r1,0(%r1)
	lg	%r2,160(%r15)
	lg	%r2,8(%r2)
	stg	%r2,8(%r1)
.L315:
	lg	%r1,160(%r15)
	lg	%r1,8(%r1)
	ltgr	%r1,%r1
	je	.L317
	lg	%r1,160(%r15)
	lg	%r1,8(%r1)
	lg	%r2,160(%r15)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
.L317:
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
	lgr	%r1,%r12
	aghi	%r1,-1
	stg	%r1,208(%r15)
	lg	%r1,176(%r15)
	lg	%r1,0(%r1)
	stg	%r1,200(%r15)
	mvghi	216(%r15),0
	j	.L321
.L324:
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
	jne	.L322
	lgr	%r1,%r12
	msg	%r1,216(%r15)
	ag	%r1,184(%r15)
	j	.L323
.L322:
	agsi	216(%r15),1
.L321:
	lg	%r1,216(%r15)
	clg	%r1,200(%r15)
	jl	.L324
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
.L323:
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
	lgr	%r1,%r12
	aghi	%r1,-1
	stg	%r1,208(%r15)
	lg	%r1,176(%r15)
	lg	%r1,0(%r1)
	stg	%r1,200(%r15)
	mvghi	216(%r15),0
	j	.L328
.L331:
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
	jne	.L329
	lgr	%r1,%r12
	msg	%r1,216(%r15)
	ag	%r1,184(%r15)
	j	.L330
.L329:
	agsi	216(%r15),1
.L328:
	lg	%r1,216(%r15)
	clg	%r1,200(%r15)
	jl	.L331
	lghi	%r1,0
.L330:
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
	j	.L339
.L340:
	agsi	160(%r15),1
.L339:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L340
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	chi	%r1,43
	je	.L341
	chi	%r1,45
	jne	.L343
	mvhi	168(%r15),1
.L341:
	agsi	160(%r15),1
	j	.L343
.L344:
	l	%r2,172(%r15)
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r2,%r1
	lg	%r1,160(%r15)
	aghik	%r3,%r1,1
	stg	%r3,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	srk	%r1,%r2,%r1
	st	%r1,172(%r15)
.L343:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L344
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jne	.L345
	l	%r1,172(%r15)
	lcr	%r1,%r1
	j	.L347
.L345:
	l	%r1,172(%r15)
.L347:
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
	j	.L351
.L352:
	agsi	160(%r15),1
.L351:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L352
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	chi	%r1,43
	je	.L353
	chi	%r1,45
	jne	.L355
	mvhi	172(%r15),1
.L353:
	agsi	160(%r15),1
	j	.L355
.L356:
	lg	%r2,176(%r15)
	lgr	%r1,%r2
	sllg	%r1,%r1,2
	agr	%r1,%r2
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	aghik	%r3,%r1,1
	stg	%r3,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	lgfr	%r1,%r1
	sgrk	%r1,%r2,%r1
	stg	%r1,176(%r15)
.L355:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L356
	l	%r1,172(%r15)
	ltr	%r1,%r1
	jne	.L357
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	j	.L359
.L357:
	lg	%r1,176(%r15)
.L359:
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
	j	.L363
.L364:
	agsi	160(%r15),1
.L363:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L364
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	chi	%r1,43
	je	.L365
	chi	%r1,45
	jne	.L367
	mvhi	172(%r15),1
.L365:
	agsi	160(%r15),1
	j	.L367
.L368:
	lg	%r2,176(%r15)
	lgr	%r1,%r2
	sllg	%r1,%r1,2
	agr	%r1,%r2
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	aghik	%r3,%r1,1
	stg	%r3,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	lgfr	%r1,%r1
	sgrk	%r1,%r2,%r1
	stg	%r1,176(%r15)
.L367:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L368
	l	%r1,172(%r15)
	ltr	%r1,%r1
	jne	.L369
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	j	.L371
.L369:
	lg	%r1,176(%r15)
.L371:
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
	j	.L375
.L380:
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
	jhe	.L376
	lg	%r1,176(%r15)
	srlg	%r1,%r1,1
	stg	%r1,176(%r15)
	j	.L375
.L376:
	l	%r1,204(%r15)
	ltr	%r1,%r1
	jle	.L378
	lg	%r1,208(%r15)
	ag	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,176(%r15)
	srlg	%r2,%r1,1
	lg	%r1,176(%r15)
	sgr	%r1,%r2
	aghi	%r1,-1
	stg	%r1,176(%r15)
	j	.L375
.L378:
	lg	%r1,208(%r15)
	j	.L379
.L375:
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L380
	lghi	%r1,0
.L379:
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
	j	.L384
.L388:
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
	jne	.L385
	lg	%r1,208(%r15)
	j	.L386
.L385:
	l	%r1,204(%r15)
	ltr	%r1,%r1
	jle	.L387
	lg	%r1,208(%r15)
	ag	%r1,168(%r15)
	stg	%r1,184(%r15)
	asi	220(%r15),-1
.L387:
	l	%r1,220(%r15)
	sra	%r1,1
	st	%r1,220(%r15)
.L384:
	l	%r1,220(%r15)
	ltr	%r1,%r1
	jne	.L388
	lghi	%r1,0
.L386:
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
	j	.L420
.L422:
	agsi	168(%r15),4
.L420:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L421
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	l	%r2,164(%r15)
	cr	%r2,%r1
	jne	.L422
.L421:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L423
	lg	%r1,168(%r15)
	j	.L425
.L423:
	lghi	%r1,0
.L425:
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
	j	.L429
.L431:
	agsi	168(%r15),4
	agsi	160(%r15),4
.L429:
	lg	%r1,168(%r15)
	l	%r2,0(%r1)
	lg	%r1,160(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L430
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L430
	lg	%r1,160(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L431
.L430:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	lg	%r2,160(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L432
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	lg	%r2,160(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L433
	lhi	%r2,0
.L433:
	llcr	%r1,%r2
	j	.L435
.L432:
	lhi	%r1,-1
.L435:
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
.L439:
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
	jne	.L439
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
	j	.L444
.L445:
	agsi	168(%r15),4
.L444:
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L445
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
	j	.L450
.L452:
	agsi	160(%r15),-1
	agsi	176(%r15),4
	agsi	168(%r15),4
.L450:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L451
	lg	%r1,176(%r15)
	l	%r2,0(%r1)
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L451
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L451
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L452
.L451:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L453
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L454
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L455
	lhi	%r2,0
.L455:
	llcr	%r1,%r2
	j	.L458
.L454:
	lhi	%r1,-1
	j	.L458
.L453:
	lhi	%r1,0
.L458:
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
	j	.L462
.L464:
	agsi	160(%r15),-1
	agsi	176(%r15),4
.L462:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L463
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	l	%r2,172(%r15)
	cr	%r2,%r1
	jne	.L464
.L463:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L465
	lg	%r1,176(%r15)
	j	.L467
.L465:
	lghi	%r1,0
.L467:
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
	j	.L471
.L473:
	agsi	160(%r15),-1
	agsi	176(%r15),4
	agsi	168(%r15),4
.L471:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L472
	lg	%r1,176(%r15)
	l	%r2,0(%r1)
	lg	%r1,168(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	je	.L473
.L472:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L474
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L475
	lg	%r1,176(%r15)
	l	%r1,0(%r1)
	lg	%r2,168(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L476
	lhi	%r2,0
.L476:
	llcr	%r1,%r2
	j	.L479
.L475:
	lhi	%r1,-1
	j	.L479
.L474:
	lhi	%r1,0
.L479:
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
	j	.L483
.L484:
	lg	%r2,168(%r15)
	aghik	%r1,%r2,4
	stg	%r1,168(%r15)
	lg	%r1,184(%r15)
	aghik	%r3,%r1,4
	stg	%r3,184(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L483:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L484
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
	jne	.L489
	lg	%r1,176(%r15)
	j	.L490
.L489:
	lg	%r1,176(%r15)
	lg	%r2,168(%r15)
	sgr	%r1,%r2
	lg	%r2,160(%r15)
	sllg	%r2,%r2,2
	clgr	%r1,%r2
	jhe	.L491
	j	.L492
.L493:
	lg	%r1,160(%r15)
	sllg	%r1,%r1,2
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	sllg	%r1,%r1,2
	ag	%r1,176(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L492:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L493
	j	.L494
.L491:
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L495
.L496:
	lg	%r2,168(%r15)
	aghik	%r1,%r2,4
	stg	%r1,168(%r15)
	lg	%r1,184(%r15)
	aghik	%r3,%r1,4
	stg	%r3,184(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L495:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L496
.L494:
	lg	%r1,176(%r15)
.L490:
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
	j	.L500
.L501:
	lg	%r1,184(%r15)
	aghik	%r2,%r1,4
	stg	%r2,184(%r15)
	l	%r2,172(%r15)
	st	%r2,0(%r1)
.L500:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L501
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
	jhe	.L506
	lg	%r1,176(%r15)
	ag	%r1,160(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	ag	%r1,160(%r15)
	stg	%r1,184(%r15)
	j	.L507
.L508:
	agsi	192(%r15),-1
	agsi	184(%r15),-1
	lg	%r1,192(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L507:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L508
	j	.L512
.L506:
	lg	%r1,176(%r15)
	cg	%r1,168(%r15)
	je	.L512
	j	.L510
.L511:
	lg	%r2,176(%r15)
	aghik	%r1,%r2,1
	stg	%r1,176(%r15)
	lg	%r1,168(%r15)
	aghik	%r3,%r1,1
	stg	%r3,168(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L510:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L511
.L512:
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
	l	%r1,164(%r15)
	lhi	%r2,64
	srk	%r1,%r2,%r1
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
	l	%r1,164(%r15)
	lhi	%r2,64
	srk	%r1,%r2,%r1
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
	llgh	%r2,166(%r15)
	lg	%r1,168(%r15)
	sllg	%r1,%r1,8
	ngr	%r1,%r2
	srlg	%r1,%r1,8
	lr	%r2,%r1
	lg	%r1,168(%r15)
	lr	%r3,%r1
	lh	%r1,166(%r15)
	nr	%r1,%r3
	sll	%r1,8
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
	llgf	%r2,164(%r15)
	lg	%r1,168(%r15)
	sllg	%r1,%r1,24
	ngr	%r1,%r2
	srlg	%r1,%r1,24
	lr	%r3,%r1
	llgf	%r2,164(%r15)
	lg	%r1,168(%r15)
	sllg	%r1,%r1,16
	ngr	%r1,%r2
	srlg	%r1,%r1,8
	ork	%r2,%r3,%r1
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
	j	.L568
.L571:
	l	%r2,164(%r15)
	l	%r1,172(%r15)
	srlk	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L569
	l	%r1,172(%r15)
	ahi	%r1,1
	j	.L570
.L569:
	asi	172(%r15),1
.L568:
	l	%r1,172(%r15)
	clfi	%r1,31
	jle	.L571
	lhi	%r1,0
.L570:
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
	jne	.L575
	lhi	%r12,0
	j	.L576
.L575:
	lgr	%r1,%r2
	lhi	%r12,1
	j	.L577
.L578:
	sra	%r1,1
	lgfr	%r1,%r1
	ahi	%r12,1
.L577:
	risbg	%r2,%r1,63,128+63,0
	ltr	%r2,%r2
	je	.L578
	nopr	%r0
.L576:
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
	larl	%r5,.L589
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	le	%f0,164(%r15)
	keb	%f0,.L590-.L589(%r5)
	jl	.L582
	le	%f0,164(%r15)
	keb	%f0,.L591-.L589(%r5)
	jnh	.L587
.L582:
	lhi	%r1,1
	j	.L586
.L587:
	lhi	%r1,0
.L586:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L589:
.L591:
	.long	2139095039
.L590:
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
	larl	%r5,.L600
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	std	%f0,160(%r15)
	ld	%f0,160(%r15)
	kdb	%f0,.L601-.L600(%r5)
	jl	.L593
	ld	%f0,160(%r15)
	kdb	%f0,.L602-.L600(%r5)
	jnh	.L598
.L593:
	lhi	%r1,1
	j	.L597
.L598:
	lhi	%r1,0
.L597:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L600:
.L602:
	.long	2146435071
	.long	-1
.L601:
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
	larl	%r5,.L611
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r12,%r2
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	std	%f0,160(%r15)
	std	%f2,168(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,.L612-.L611(%r5)
	ld	%f6,.L612-.L611+8(%r5)
	kxbr	%f0,%f4
	jl	.L604
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,.L613-.L611(%r5)
	ld	%f6,.L613-.L611+8(%r5)
	kxbr	%f0,%f4
	jnh	.L609
.L604:
	lhi	%r1,1
	j	.L608
.L609:
	lhi	%r1,0
.L608:
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
.L611:
.L613:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L612:
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
	jo	.L618
	le	%f0,164(%r15)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,164(%r15)
	cebr	%f0,%f2
	je	.L618
	l	%r1,160(%r15)
	ltr	%r1,%r1
	jhe	.L619
	lrl	%r1,.LC7
	j	.L620
.L619:
	lrl	%r1,.LC8
.L620:
	st	%r1,172(%r15)
.L623:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L621
	le	%f0,164(%r15)
	meeb	%f0,172(%r15)
	ste	%f0,164(%r15)
.L621:
	l	%r1,160(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L625
	le	%f0,172(%r15)
	meeb	%f0,172(%r15)
	ste	%f0,172(%r15)
	j	.L623
.L625:
	nopr	%r0
.L618:
	le	%f0,164(%r15)
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8,"aM",@progbits,8
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
	jo	.L629
	ld	%f0,168(%r15)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,168(%r15)
	cdbr	%f0,%f2
	je	.L629
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jhe	.L630
	lgrl	%r1,.LC9
	j	.L631
.L630:
	lgrl	%r1,.LC10
.L631:
	stg	%r1,176(%r15)
.L634:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L632
	ld	%f0,168(%r15)
	mdb	%f0,176(%r15)
	std	%f0,168(%r15)
.L632:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L636
	ld	%f0,176(%r15)
	mdb	%f0,176(%r15)
	std	%f0,176(%r15)
	j	.L634
.L636:
	nopr	%r0
.L629:
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
	larl	%r5,.L649
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
	jo	.L640
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	axbr	%f0,%f0
	ld	%f4,168(%r15)
	ld	%f6,176(%r15)
	cxbr	%f4,%f0
	je	.L640
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jhe	.L641
	lmg	%r2,%r3,.L650-.L649(%r5)
	j	.L642
.L641:
	lmg	%r2,%r3,.L651-.L649(%r5)
.L642:
	stmg	%r2,%r3,192(%r15)
.L645:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L643
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	ld	%f4,192(%r15)
	ld	%f6,200(%r15)
	mxbr	%f0,%f4
	std	%f0,168(%r15)
	std	%f2,176(%r15)
.L643:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L647
	ld	%f0,192(%r15)
	ld	%f2,200(%r15)
	ld	%f4,192(%r15)
	ld	%f6,200(%r15)
	mxbr	%f0,%f4
	std	%f0,192(%r15)
	std	%f2,200(%r15)
	j	.L645
.L647:
	nopr	%r0
.L640:
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
.L649:
.L651:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L650:
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
	j	.L653
.L654:
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
.L653:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L654
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
	j	.L659
.L661:
	agsi	168(%r15),1
	agsi	184(%r15),1
	agsi	160(%r15),-1
.L659:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L660
	lg	%r1,168(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	stc	%r2,0(%r1)
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L661
.L660:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L662
	lg	%r1,184(%r15)
	mvi	0(%r1),0
.L662:
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
	j	.L667
.L672:
	nopr	%r0
	agsi	176(%r15),1
.L667:
	lg	%r1,176(%r15)
	clg	%r1,160(%r15)
	jhe	.L668
	lg	%r1,168(%r15)
	ag	%r1,176(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L672
.L668:
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
	j	.L676
.L680:
	lg	%r1,160(%r15)
	stg	%r1,176(%r15)
	j	.L677
.L679:
	lg	%r1,176(%r15)
	aghik	%r2,%r1,1
	stg	%r2,176(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L677
	lg	%r1,168(%r15)
	j	.L678
.L677:
	lg	%r1,176(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L679
	agsi	168(%r15),1
.L676:
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L680
	lghi	%r1,0
.L678:
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
.L685:
	ic	%r2,0(%r1)
	llcr	%r2,%r2
	l	%r3,164(%r15)
	cr	%r3,%r2
	jne	.L684
	stg	%r1,168(%r15)
.L684:
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	ltr	%r2,%r2
	jne	.L685
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
	jne	.L692
	lg	%r1,168(%r15)
	j	.L691
.L694:
	lg	%r4,184(%r15)
	lg	%r3,160(%r15)
	lg	%r2,176(%r15)
	brasl	%r14,strncmp@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L693
	lg	%r1,176(%r15)
	j	.L691
.L693:
	lg	%r1,176(%r15)
	aghi	%r1,1
	stg	%r1,168(%r15)
.L692:
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
	jne	.L694
	lghi	%r1,0
.L691:
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
	jnl	.L698
	ld	%f0,160(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jh	.L700
.L698:
	ld	%f0,168(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnh	.L701
	ld	%f0,160(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L701
.L700:
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	j	.L704
.L701:
	ld	%f0,168(%r15)
.L704:
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
	jne	.L710
	lg	%r1,184(%r15)
	j	.L711
.L710:
	lg	%r2,176(%r15)
	lg	%r1,160(%r15)
	clgr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	llgcr	%r1,%r1
	ltgr	%r1,%r1
	je	.L713
	lghi	%r1,0
	j	.L711
.L715:
	lg	%r1,184(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L714
	lg	%r1,184(%r15)
	aghi	%r1,1
	lg	%r2,168(%r15)
	aghi	%r2,1
	lg	%r3,160(%r15)
	aghi	%r3,-1
	lgr	%r4,%r3
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,memcmp@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L714
	lg	%r1,184(%r15)
	j	.L711
.L714:
	agsi	184(%r15),1
.L713:
	lg	%r1,184(%r15)
	clg	%r1,192(%r15)
	jle	.L715
	lghi	%r1,0
.L711:
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
	larl	%r5,.L740
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	std	%f0,168(%r15)
	stg	%r2,160(%r15)
	mvhi	176(%r15),0
	mvhi	180(%r15),0
	ld	%f0,168(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L723
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	std	%f0,168(%r15)
	mvhi	180(%r15),1
.L723:
	ld	%f0,168(%r15)
	kdb	%f0,.L741-.L740(%r5)
	jnhe	.L738
	j	.L727
.L728:
	asi	176(%r15),1
	ld	%f0,168(%r15)
	ddb	%f0,.L742-.L740(%r5)
	std	%f0,168(%r15)
.L727:
	ld	%f0,168(%r15)
	kdb	%f0,.L741-.L740(%r5)
	jhe	.L728
	j	.L729
.L738:
	ld	%f0,168(%r15)
	kdb	%f0,.L743-.L740(%r5)
	jnl	.L729
	ld	%f0,168(%r15)
	lzdr	%f2
	cdbr	%f0,%f2
	je	.L729
	j	.L731
.L732:
	asi	176(%r15),-1
	ld	%f0,168(%r15)
	adbr	%f0,%f0
	std	%f0,168(%r15)
.L731:
	ld	%f0,168(%r15)
	kdb	%f0,.L743-.L740(%r5)
	jl	.L732
.L729:
	lg	%r1,160(%r15)
	l	%r2,176(%r15)
	st	%r2,0(%r1)
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L733
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	std	%f0,168(%r15)
.L733:
	lg	%r1,168(%r15)
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L740:
.L743:
	.long	1071644672
	.long	0
.L742:
	.long	1073741824
	.long	0
.L741:
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
	j	.L745
.L747:
	lg	%r1,176(%r15)
	risbg	%r1,%r1,63,128+63,0
	ltgr	%r1,%r1
	je	.L746
	lg	%r1,184(%r15)
	ag	%r1,160(%r15)
	stg	%r1,184(%r15)
.L746:
	lg	%r1,160(%r15)
	sllg	%r1,%r1,1
	stg	%r1,160(%r15)
	lg	%r1,176(%r15)
	srlg	%r1,%r1,1
	stg	%r1,176(%r15)
.L745:
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L747
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
	j	.L752
.L754:
	l	%r1,168(%r15)
	sll	%r1,1
	st	%r1,168(%r15)
	l	%r1,180(%r15)
	sll	%r1,1
	st	%r1,180(%r15)
.L752:
	l	%r1,168(%r15)
	cl	%r1,172(%r15)
	jhe	.L755
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L755
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jhe	.L754
	j	.L755
.L757:
	l	%r1,172(%r15)
	cl	%r1,168(%r15)
	jl	.L756
	l	%r1,172(%r15)
	s	%r1,168(%r15)
	st	%r1,172(%r15)
	oc	176(4,%r15),180(%r15)
.L756:
	l	%r1,180(%r15)
	srl	%r1,1
	st	%r1,180(%r15)
	l	%r1,168(%r15)
	srl	%r1,1
	st	%r1,168(%r15)
.L755:
	l	%r1,180(%r15)
	ltr	%r1,%r1
	jne	.L757
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L758
	l	%r1,172(%r15)
	j	.L759
.L758:
	l	%r1,176(%r15)
.L759:
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
	jne	.L763
	lhi	%r1,7
	j	.L764
.L763:
	llc	%r1,167(%r15)
	sll	%r1,8
	llgfr	%r1,%r1
	flogr	%r2,%r1
	lgr	%r1,%r2
	aghi	%r1,-32
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	ahi	%r1,-1
.L764:
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
	jhe	.L768
	lg	%r1,160(%r15)
	lghi	%r2,-1
	xgr	%r1,%r2
	stg	%r1,160(%r15)
.L768:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L769
	lhi	%r1,63
	j	.L770
.L769:
	lg	%r1,160(%r15)
	flogr	%r2,%r1
	lgr	%r1,%r2
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	ahi	%r1,-1
.L770:
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
	j	.L774
.L776:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L775
	l	%r1,172(%r15)
	a	%r1,160(%r15)
	st	%r1,172(%r15)
.L775:
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sll	%r1,1
	st	%r1,160(%r15)
.L774:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L776
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
	jl	.L781
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	clgr	%r1,%r2
	jle	.L788
.L781:
	mvhi	196(%r15),0
	j	.L783
.L784:
	llgf	%r1,196(%r15)
	sllg	%r1,%r1,3
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,196(%r15)
	sllg	%r1,%r1,3
	ag	%r1,176(%r15)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
	asi	196(%r15),1
.L783:
	l	%r1,196(%r15)
	cl	%r1,188(%r15)
	jl	.L784
	j	.L785
.L786:
	llgf	%r1,192(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,192(%r15)
	ag	%r1,176(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	asi	192(%r15),1
.L785:
	l	%r1,164(%r15)
	cl	%r1,192(%r15)
	jh	.L786
	j	.L787
.L789:
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,164(%r15)
	ag	%r1,176(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L788:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L789
	nopr	%r0
.L787:
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
	jl	.L793
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	clgr	%r1,%r2
	jle	.L799
.L793:
	mvhi	188(%r15),0
	j	.L795
.L796:
	llgf	%r1,188(%r15)
	sllg	%r1,%r1,1
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,188(%r15)
	sllg	%r1,%r1,1
	ag	%r1,176(%r15)
	lh	%r2,0(%r2)
	sth	%r2,0(%r1)
	asi	188(%r15),1
.L795:
	l	%r1,188(%r15)
	cl	%r1,184(%r15)
	jl	.L796
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L798
	l	%r1,164(%r15)
	ahi	%r1,-1
	llgfr	%r1,%r1
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	l	%r1,164(%r15)
	ahi	%r1,-1
	llgfr	%r1,%r1
	ag	%r1,176(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	j	.L798
.L800:
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,164(%r15)
	ag	%r1,176(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L799:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L800
	nopr	%r0
.L798:
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
	jl	.L804
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,176(%r15)
	clgr	%r1,%r2
	jle	.L811
.L804:
	mvhi	196(%r15),0
	j	.L806
.L807:
	llgf	%r1,196(%r15)
	sllg	%r1,%r1,2
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,196(%r15)
	sllg	%r1,%r1,2
	ag	%r1,176(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	asi	196(%r15),1
.L806:
	l	%r1,196(%r15)
	cl	%r1,188(%r15)
	jl	.L807
	j	.L808
.L809:
	llgf	%r1,192(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,192(%r15)
	ag	%r1,176(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	asi	192(%r15),1
.L808:
	l	%r1,164(%r15)
	cl	%r1,192(%r15)
	jh	.L809
	j	.L810
.L812:
	llgf	%r1,164(%r15)
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,164(%r15)
	ag	%r1,176(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L811:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L812
	nopr	%r0
.L810:
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
	j	.L840
.L843:
	llh	%r2,166(%r15)
	lhi	%r1,15
	s	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L845
	asi	172(%r15),1
.L840:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L843
	j	.L842
.L845:
	nopr	%r0
.L842:
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
	j	.L849
.L852:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L854
	asi	172(%r15),1
.L849:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L852
	j	.L851
.L854:
	nopr	%r0
.L851:
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
	larl	%r5,.L864
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	le	%f0,164(%r15)
	keb	%f0,.L865-.L864(%r5)
	jnhe	.L862
	le	%f0,164(%r15)
	seb	%f0,.L865-.L864(%r5)
	cgebr	%r1,5,%f0
	algfi	%r1,32768
	j	.L860
.L862:
	le	%f0,164(%r15)
	cgebr	%r1,5,%f0
.L860:
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L864:
.L865:
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
	j	.L867
.L869:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L868
	asi	168(%r15),1
.L868:
	asi	172(%r15),1
.L867:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L869
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
	j	.L874
.L876:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L875
	asi	168(%r15),1
.L875:
	asi	172(%r15),1
.L874:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L876
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
	j	.L881
.L883:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L882
	l	%r1,172(%r15)
	a	%r1,160(%r15)
	st	%r1,172(%r15)
.L882:
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sll	%r1,1
	st	%r1,160(%r15)
.L881:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L883
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
	jne	.L890
	lhi	%r1,0
	j	.L889
.L892:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L891
	l	%r1,172(%r15)
	a	%r1,164(%r15)
	st	%r1,172(%r15)
.L891:
	l	%r1,164(%r15)
	sll	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	srl	%r1,1
	st	%r1,160(%r15)
.L890:
	l	%r1,160(%r15)
	ltr	%r1,%r1
	jne	.L892
	l	%r1,172(%r15)
.L889:
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
	j	.L896
.L898:
	l	%r1,168(%r15)
	sll	%r1,1
	st	%r1,168(%r15)
	l	%r1,180(%r15)
	sll	%r1,1
	st	%r1,180(%r15)
.L896:
	l	%r1,168(%r15)
	cl	%r1,172(%r15)
	jhe	.L899
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L899
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jhe	.L898
	j	.L899
.L901:
	l	%r1,172(%r15)
	cl	%r1,168(%r15)
	jl	.L900
	l	%r1,172(%r15)
	s	%r1,168(%r15)
	st	%r1,172(%r15)
	oc	176(4,%r15),180(%r15)
.L900:
	l	%r1,180(%r15)
	srl	%r1,1
	st	%r1,180(%r15)
	l	%r1,168(%r15)
	srl	%r1,1
	st	%r1,168(%r15)
.L899:
	l	%r1,180(%r15)
	ltr	%r1,%r1
	jne	.L901
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L902
	l	%r1,172(%r15)
	j	.L903
.L902:
	l	%r1,176(%r15)
.L903:
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
	jnl	.L914
	lhi	%r1,-1
	j	.L909
.L914:
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnh	.L915
	lhi	%r1,1
	j	.L909
.L915:
	lhi	%r1,0
.L909:
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
	jnl	.L926
	lhi	%r1,-1
	j	.L921
.L926:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnh	.L927
	lhi	%r1,1
	j	.L921
.L927:
	lhi	%r1,0
.L921:
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
	jhe	.L939
	l	%r1,160(%r15)
	lcr	%r1,%r1
	st	%r1,160(%r15)
	mvhi	176(%r15),1
.L939:
	mvi	183(%r15),0
	j	.L940
.L943:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L941
	l	%r1,172(%r15)
	a	%r1,164(%r15)
	st	%r1,172(%r15)
.L941:
	l	%r1,164(%r15)
	sll	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sra	%r1,1
	st	%r1,160(%r15)
	ic	%r1,183(%r15)
	ahi	%r1,1
	stc	%r1,183(%r15)
.L940:
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L942
	llc	%r1,183(%r15)
	clfi	%r1,31
	jle	.L943
.L942:
	l	%r1,176(%r15)
	ltr	%r1,%r1
	je	.L944
	l	%r1,172(%r15)
	lcr	%r1,%r1
	j	.L946
.L944:
	l	%r1,172(%r15)
.L946:
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
	jhe	.L950
	lg	%r1,168(%r15)
	lcgr	%r1,%r1
	stg	%r1,168(%r15)
	l	%r1,188(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r15)
.L950:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jhe	.L951
	lg	%r1,160(%r15)
	lcgr	%r1,%r1
	stg	%r1,160(%r15)
	l	%r1,188(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r15)
.L951:
	lg	%r1,168(%r15)
	lr	%r3,%r1
	lg	%r1,160(%r15)
	llgfr	%r2,%r1
	llgfr	%r1,%r3
	lghi	%r4,0
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lgr	%r1,%r2
	llgfr	%r1,%r1
	stg	%r1,176(%r15)
	l	%r1,188(%r15)
	ltr	%r1,%r1
	je	.L952
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	stg	%r1,176(%r15)
.L952:
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
	jhe	.L957
	lg	%r1,168(%r15)
	lcgr	%r1,%r1
	stg	%r1,168(%r15)
	mvhi	188(%r15),1
.L957:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jhe	.L958
	lg	%r1,160(%r15)
	lcgr	%r1,%r1
	stg	%r1,160(%r15)
.L958:
	lg	%r1,168(%r15)
	lr	%r3,%r1
	lg	%r1,160(%r15)
	llgfr	%r2,%r1
	llgfr	%r1,%r3
	lghi	%r4,1
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lgr	%r1,%r2
	llgfr	%r1,%r1
	stg	%r1,176(%r15)
	l	%r1,188(%r15)
	ltr	%r1,%r1
	je	.L959
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	stg	%r1,176(%r15)
.L959:
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
	j	.L964
.L966:
	lh	%r1,164(%r15)
	sll	%r1,1
	sth	%r1,164(%r15)
	lh	%r1,174(%r15)
	sll	%r1,1
	sth	%r1,174(%r15)
.L964:
	llh	%r1,164(%r15)
	llh	%r2,166(%r15)
	clr	%r1,%r2
	jhe	.L967
	llh	%r1,174(%r15)
	ltr	%r1,%r1
	je	.L967
	lh	%r1,164(%r15)
	lhr	%r1,%r1
	ltr	%r1,%r1
	jhe	.L966
	j	.L967
.L969:
	llh	%r1,166(%r15)
	llh	%r2,164(%r15)
	clr	%r1,%r2
	jl	.L968
	lh	%r1,166(%r15)
	lh	%r2,164(%r15)
	sr	%r1,%r2
	sth	%r1,166(%r15)
	oc	172(2,%r15),174(%r15)
.L968:
	llh	%r1,174(%r15)
	srl	%r1,1
	sth	%r1,174(%r15)
	llh	%r1,164(%r15)
	srl	%r1,1
	sth	%r1,164(%r15)
.L967:
	llh	%r1,174(%r15)
	ltr	%r1,%r1
	jne	.L969
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L970
	lh	%r1,166(%r15)
	j	.L971
.L970:
	lh	%r1,172(%r15)
.L971:
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
	j	.L975
.L977:
	lg	%r1,168(%r15)
	sllg	%r1,%r1,1
	stg	%r1,168(%r15)
	lg	%r1,192(%r15)
	sllg	%r1,%r1,1
	stg	%r1,192(%r15)
.L975:
	lg	%r1,168(%r15)
	clg	%r1,176(%r15)
	jhe	.L978
	lg	%r1,192(%r15)
	ltgr	%r1,%r1
	je	.L978
	lg	%r1,168(%r15)
	risbg	%r1,%r1,32,128+32,0
	ltgr	%r1,%r1
	je	.L977
	j	.L978
.L980:
	lg	%r1,176(%r15)
	clg	%r1,168(%r15)
	jl	.L979
	lg	%r1,176(%r15)
	sg	%r1,168(%r15)
	stg	%r1,176(%r15)
	oc	184(8,%r15),192(%r15)
.L979:
	lg	%r1,192(%r15)
	srlg	%r1,%r1,1
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	srlg	%r1,%r1,1
	stg	%r1,168(%r15)
.L978:
	lg	%r1,192(%r15)
	ltgr	%r1,%r1
	jne	.L980
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L981
	lg	%r1,176(%r15)
	j	.L982
.L981:
	lg	%r1,184(%r15)
.L982:
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
	je	.L986
	mvhi	180(%r15),0
	l	%r2,188(%r15)
	l	%r1,164(%r15)
	s	%r1,196(%r15)
	sllk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	j	.L987
.L986:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L988
	lg	%r1,168(%r15)
	j	.L990
.L988:
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
.L987:
	lg	%r1,176(%r15)
.L990:
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
	je	.L994
	mvghi	200(%r15),0
	lg	%r2,216(%r15)
	l	%r1,164(%r15)
	s	%r1,228(%r15)
	sllg	%r1,%r2,0(%r1)
	stg	%r1,192(%r15)
	j	.L995
.L994:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L996
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L998
.L996:
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
.L995:
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	lg	%r1,184(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L998:
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
	je	.L1002
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
	j	.L1003
.L1002:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1004
	lg	%r1,168(%r15)
	j	.L1006
.L1004:
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
.L1003:
	lg	%r1,176(%r15)
.L1006:
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
	je	.L1010
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
	j	.L1011
.L1010:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1012
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L1014
.L1012:
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
.L1011:
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	lg	%r1,184(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L1014:
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
	jh	.L1026
	lhi	%r1,16
	j	.L1027
.L1026:
	lhi	%r1,0
.L1027:
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
	jne	.L1028
	lhi	%r1,8
	j	.L1029
.L1028:
	lhi	%r1,0
.L1029:
	st	%r1,204(%r15)
	lhi	%r1,8
	s	%r1,204(%r15)
	l	%r2,212(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,200(%r15)
	l	%r1,204(%r15)
	a	%r1,208(%r15)
	st	%r1,196(%r15)
	l	%r1,200(%r15)
	nilf	%r1,240
	ltr	%r1,%r1
	jne	.L1030
	lhi	%r1,4
	j	.L1031
.L1030:
	lhi	%r1,0
.L1031:
	st	%r1,192(%r15)
	lhi	%r1,4
	s	%r1,192(%r15)
	l	%r2,200(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,188(%r15)
	l	%r1,192(%r15)
	a	%r1,196(%r15)
	st	%r1,184(%r15)
	l	%r1,188(%r15)
	nilf	%r1,12
	ltr	%r1,%r1
	jne	.L1032
	lhi	%r1,2
	j	.L1033
.L1032:
	lhi	%r1,0
.L1033:
	st	%r1,180(%r15)
	lhi	%r1,2
	s	%r1,180(%r15)
	l	%r2,188(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	l	%r1,180(%r15)
	a	%r1,184(%r15)
	st	%r1,172(%r15)
	l	%r1,176(%r15)
	nilf	%r1,2
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
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
	llcr	%r1,%r1
	lcr	%r1,%r1
	lgfr	%r1,%r1
	stg	%r1,192(%r15)
	lg	%r1,176(%r15)
	lg	%r2,192(%r15)
	lghi	%r3,-1
	xgr	%r2,%r3
	ngr	%r1,%r2
	lgr	%r3,%r1
	lg	%r2,184(%r15)
	lg	%r1,192(%r15)
	ngr	%r1,%r2
	ogr	%r1,%r3
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
	jhe	.L1042
	lhi	%r1,0
	j	.L1047
.L1042:
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	cr	%r1,%r2
	jle	.L1044
	lhi	%r1,2
	j	.L1047
.L1044:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jhe	.L1045
	lhi	%r1,0
	j	.L1047
.L1045:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jle	.L1046
	lhi	%r1,2
	j	.L1047
.L1046:
	lhi	%r1,1
.L1047:
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
	jhe	.L1055
	lhi	%r1,0
	j	.L1060
.L1055:
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	cgr	%r1,%r2
	jle	.L1057
	lhi	%r1,2
	j	.L1060
.L1057:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jhe	.L1058
	lhi	%r1,0
	j	.L1060
.L1058:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jle	.L1059
	lhi	%r1,2
	j	.L1060
.L1059:
	lhi	%r1,1
.L1060:
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
	jne	.L1064
	lhi	%r1,16
	j	.L1065
.L1064:
	lhi	%r1,0
.L1065:
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
	jne	.L1066
	lhi	%r1,8
	j	.L1067
.L1066:
	lhi	%r1,0
.L1067:
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	l	%r2,212(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,200(%r15)
	l	%r1,204(%r15)
	a	%r1,208(%r15)
	st	%r1,196(%r15)
	l	%r1,200(%r15)
	nilf	%r1,15
	ltr	%r1,%r1
	jne	.L1068
	lhi	%r1,4
	j	.L1069
.L1068:
	lhi	%r1,0
.L1069:
	st	%r1,192(%r15)
	l	%r1,192(%r15)
	l	%r2,200(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,188(%r15)
	l	%r1,192(%r15)
	a	%r1,196(%r15)
	st	%r1,184(%r15)
	l	%r1,188(%r15)
	nilf	%r1,3
	ltr	%r1,%r1
	jne	.L1070
	lhi	%r1,2
	j	.L1071
.L1070:
	lhi	%r1,0
.L1071:
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	l	%r2,188(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	nilf	%r1,3
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	a	%r1,184(%r15)
	st	%r1,168(%r15)
	l	%r1,172(%r15)
	xilf	%r1,4294967295
	nilf	%r1,1
	l	%r2,172(%r15)
	srl	%r2,1
	lhi	%r3,2
	srk	%r2,%r3,%r2
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
	llcr	%r1,%r1
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
	jne	.L1080
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L1081
	lhi	%r1,0
	j	.L1083
.L1081:
	lg	%r1,176(%r15)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,65
	j	.L1083
.L1080:
	lg	%r1,184(%r15)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,1
.L1083:
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
	je	.L1087
	mvhi	176(%r15),0
	l	%r2,184(%r15)
	l	%r1,164(%r15)
	s	%r1,196(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	j	.L1088
.L1087:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1089
	lg	%r1,168(%r15)
	j	.L1091
.L1089:
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
.L1088:
	lg	%r1,176(%r15)
.L1091:
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
	je	.L1095
	mvghi	192(%r15),0
	lg	%r2,208(%r15)
	l	%r1,164(%r15)
	s	%r1,228(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r15)
	j	.L1096
.L1095:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1097
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L1099
.L1097:
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
.L1096:
	lg	%r2,192(%r15)
	lg	%r1,200(%r15)
	lgr	%r3,%r2
	lgr	%r2,%r1
	lg	%r1,184(%r15)
	stg	%r3,0(%r1)
	stg	%r2,8(%r1)
.L1099:
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
	l	%r3,172(%r15)
	l	%r2,184(%r15)
	n	%r2,192(%r15)
	l	%r1,196(%r15)
	sllk	%r1,%r2,0(%r1)
	ar	%r1,%r3
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
	l	%r3,172(%r15)
	l	%r2,176(%r15)
	n	%r2,192(%r15)
	l	%r1,196(%r15)
	sllk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,172(%r15)
	l	%r1,168(%r15)
	lr	%r3,%r1
	l	%r1,196(%r15)
	l	%r2,176(%r15)
	srlk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,168(%r15)
	l	%r1,168(%r15)
	lr	%r4,%r1
	l	%r1,196(%r15)
	l	%r2,164(%r15)
	srlk	%r3,%r2,0(%r1)
	l	%r1,196(%r15)
	l	%r2,160(%r15)
	srlk	%r1,%r2,0(%r1)
	msr	%r1,%r3
	ar	%r1,%r4
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
	l	%r1,196(%r15)
	l	%r2,188(%r15)
	llgfr	%r2,%r2
	llgfr	%r1,%r1
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__muldsi3@PLT
	lgr	%r1,%r2
	stg	%r1,176(%r15)
	l	%r1,176(%r15)
	lr	%r4,%r1
	l	%r1,192(%r15)
	lr	%r2,%r1
	l	%r1,188(%r15)
	msr	%r2,%r1
	l	%r1,196(%r15)
	l	%r3,184(%r15)
	msr	%r1,%r3
	ar	%r1,%r2
	ar	%r1,%r4
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
	lg	%r3,192(%r15)
	lg	%r2,216(%r15)
	ng	%r2,232(%r15)
	l	%r1,244(%r15)
	sllg	%r1,%r2,0(%r1)
	agr	%r1,%r3
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
	lg	%r3,192(%r15)
	lg	%r2,200(%r15)
	ng	%r2,232(%r15)
	l	%r1,244(%r15)
	sllg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,192(%r15)
	lg	%r1,184(%r15)
	lgr	%r3,%r1
	l	%r1,244(%r15)
	lg	%r2,200(%r15)
	srlg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,184(%r15)
	lg	%r1,184(%r15)
	lgr	%r4,%r1
	l	%r1,244(%r15)
	lg	%r2,168(%r15)
	srlg	%r3,%r2,0(%r1)
	l	%r1,244(%r15)
	lg	%r2,160(%r15)
	srlg	%r1,%r2,0(%r1)
	msgr	%r1,%r3
	agr	%r1,%r4
	stg	%r1,184(%r15)
	lg	%r2,184(%r15)
	lg	%r3,192(%r15)
	lg	%r1,176(%r15)
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
	lg	%r2,256(%r15)
	lg	%r3,240(%r15)
	aghik	%r1,%r15,160
	lgr	%r4,%r3
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__mulddi3@PLT
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	stg	%r2,216(%r15)
	stg	%r3,224(%r15)
	lg	%r1,216(%r15)
	lgr	%r4,%r1
	lg	%r1,248(%r15)
	lgr	%r2,%r1
	lg	%r1,240(%r15)
	msgr	%r2,%r1
	lg	%r1,256(%r15)
	lg	%r3,232(%r15)
	msgr	%r1,%r3
	agr	%r1,%r2
	agr	%r1,%r4
	stg	%r1,216(%r15)
	lg	%r2,216(%r15)
	lg	%r3,224(%r15)
	lg	%r1,208(%r15)
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
	lghi	%r2,0
	lghi	%r3,0
	slgr	%r3,%r5
	slbgr	%r2,%r4
	lgr	%r4,%r2
	lgr	%r2,%r3
	lg	%r1,176(%r15)
	stg	%r4,0(%r1)
	stg	%r2,8(%r1)
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
	l	%r1,168(%r15)
	lr	%r2,%r1
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
	lg	%r1,184(%r15)
	lgr	%r2,%r1
	lg	%r1,192(%r15)
	xgr	%r1,%r2
	stg	%r1,176(%r15)
	l	%r1,176(%r15)
	lr	%r2,%r1
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
	larl	%r5,.L1141
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
	ng	%r1,.L1142-.L1141(%r5)
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
.L1141:
.L1142:
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
	larl	%r5,.L1162
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	std	%f0,168(%r15)
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,180(%r15)
	ld	%f0,.L1163-.L1162(%r5)
	std	%f0,184(%r15)
.L1155:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L1152
	ld	%f0,184(%r15)
	mdb	%f0,168(%r15)
	std	%f0,184(%r15)
.L1152:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L1160
	ld	%f0,168(%r15)
	mdb	%f0,168(%r15)
	std	%f0,168(%r15)
	j	.L1155
.L1160:
	nopr	%r0
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L1156
	ld	%f0,.L1163-.L1162(%r5)
	ddb	%f0,184(%r15)
	j	.L1158
.L1156:
	ld	%f0,184(%r15)
.L1158:
	nopr	%r0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1162:
.L1163:
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
	larl	%r5,.L1175
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	ste	%f0,164(%r15)
	lgr	%r1,%r2
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,168(%r15)
	le	%f0,.L1176-.L1175(%r5)
	ste	%f0,172(%r15)
.L1168:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L1165
	le	%f0,172(%r15)
	meeb	%f0,164(%r15)
	ste	%f0,172(%r15)
.L1165:
	l	%r1,160(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L1173
	le	%f0,164(%r15)
	meeb	%f0,164(%r15)
	ste	%f0,164(%r15)
	j	.L1168
.L1173:
	nopr	%r0
	l	%r1,168(%r15)
	ltr	%r1,%r1
	je	.L1169
	le	%f0,.L1176-.L1175(%r5)
	deb	%f0,172(%r15)
	j	.L1171
.L1169:
	le	%f0,172(%r15)
.L1171:
	nopr	%r0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1175:
.L1176:
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
	jhe	.L1178
	lhi	%r1,0
	j	.L1183
.L1178:
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	clr	%r1,%r2
	jle	.L1180
	lhi	%r1,2
	j	.L1183
.L1180:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jhe	.L1181
	lhi	%r1,0
	j	.L1183
.L1181:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jle	.L1182
	lhi	%r1,2
	j	.L1183
.L1182:
	lhi	%r1,1
.L1183:
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
	lg	%r1,168(%r15)
	lg	%r2,160(%r15)
	lgr	%r3,%r2
	lgr	%r2,%r1
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
	jhe	.L1191
	lhi	%r1,0
	j	.L1196
.L1191:
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	clgr	%r1,%r2
	jle	.L1193
	lhi	%r1,2
	j	.L1196
.L1193:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jhe	.L1194
	lhi	%r1,0
	j	.L1196
.L1194:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jle	.L1195
	lhi	%r1,2
	j	.L1196
.L1195:
	lhi	%r1,1
.L1196:
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
