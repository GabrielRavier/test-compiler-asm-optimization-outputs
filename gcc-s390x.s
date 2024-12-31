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
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,184(%r15)
	clg	%r1,192(%r15)
	jhe	.L10
	lg	%r1,184(%r15)
	ag	%r1,160(%r15)
	stg	%r1,184(%r15)
	lg	%r1,192(%r15)
	ag	%r1,160(%r15)
	stg	%r1,192(%r15)
	j	.L11
.L12:
	agsi	184(%r15),-1
	agsi	192(%r15),-1
	lg	%r1,184(%r15)
	ic	%r2,0(%r1)
	lg	%r1,192(%r15)
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L11:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L12
	j	.L13
.L10:
	lg	%r1,184(%r15)
	cg	%r1,192(%r15)
	je	.L13
	j	.L14
.L15:
	lg	%r2,184(%r15)
	aghik	%r1,%r2,1
	stg	%r1,184(%r15)
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
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	stg	%r2,184(%r15)
	stg	%r3,176(%r15)
	lgr	%r1,%r4
	stg	%r5,160(%r15)
	st	%r4,172(%r15)
	lg	%r1,184(%r15)
	stg	%r1,200(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	l	%r1,172(%r15)
	llcr	%r1,%r1
	st	%r1,172(%r15)
	j	.L20
.L22:
	agsi	160(%r15),-1
	agsi	192(%r15),1
	agsi	200(%r15),1
.L20:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L21
	lg	%r1,192(%r15)
	ic	%r2,0(%r1)
	lg	%r1,200(%r15)
	stc	%r2,0(%r1)
	lg	%r1,200(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,172(%r15)
	cr	%r2,%r1
	jne	.L22
.L21:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L23
	lg	%r1,200(%r15)
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
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	l	%r1,172(%r15)
	llcr	%r1,%r1
	st	%r1,172(%r15)
	j	.L28
.L30:
	agsi	184(%r15),1
	agsi	160(%r15),-1
.L28:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L29
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,172(%r15)
	cr	%r2,%r1
	jne	.L30
.L29:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L31
	lg	%r1,184(%r15)
	j	.L33
.L31:
	lghi	%r1,0
.L33:
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
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	j	.L37
.L39:
	agsi	160(%r15),-1
	agsi	192(%r15),1
	agsi	184(%r15),1
.L37:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L38
	lg	%r1,192(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	je	.L39
.L38:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L40
	lg	%r1,192(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,184(%r15)
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
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	j	.L46
.L47:
	lg	%r2,184(%r15)
	aghik	%r1,%r2,1
	stg	%r1,184(%r15)
	lg	%r1,192(%r15)
	aghik	%r3,%r1,1
	stg	%r3,192(%r15)
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
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	l	%r1,172(%r15)
	llcr	%r1,%r1
	st	%r1,172(%r15)
	j	.L52
.L54:
	lg	%r1,184(%r15)
	ag	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,172(%r15)
	cr	%r2,%r1
	jne	.L52
	lg	%r1,184(%r15)
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
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,168(%r15)
	lgr	%r1,%r3
	st	%r3,164(%r15)
	l	%r1,164(%r15)
	llcr	%r1,%r1
	st	%r1,164(%r15)
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
	l	%r2,164(%r15)
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
	jne	.L77
	j	.L78
.L77:
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	ltr	%r2,%r2
	jne	.L79
	lghi	%r1,0
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
	j	.L83
.L85:
	agsi	168(%r15),1
	agsi	160(%r15),1
.L83:
	lg	%r1,168(%r15)
	ic	%r2,0(%r1)
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L84
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L85
.L84:
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
	j	.L90
.L91:
	agsi	160(%r15),1
.L90:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L91
	lg	%r1,160(%r15)
	sg	%r1,168(%r15)
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
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L98
	lhi	%r1,0
	j	.L97
.L100:
	agsi	192(%r15),1
	agsi	184(%r15),1
	agsi	160(%r15),-1
.L98:
	lg	%r1,192(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L99
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L99
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L99
	lg	%r1,192(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	je	.L100
.L99:
	lg	%r1,192(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,184(%r15)
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	sr	%r1,%r2
.L97:
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
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	j	.L104
.L105:
	lg	%r1,192(%r15)
	aghi	%r1,1
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	stc	%r2,0(%r1)
	lg	%r1,184(%r15)
	aghi	%r1,1
	lg	%r2,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	184(%r15),2
	agsi	192(%r15),2
	agsi	160(%r15),-2
.L104:
	lg	%r1,160(%r15)
	cghi	%r1,1
	jh	.L105
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
	je	.L117
	l	%r1,164(%r15)
	chi	%r1,9
	jne	.L118
.L117:
	lhi	%r1,1
	j	.L120
.L118:
	lhi	%r1,0
.L120:
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
	jle	.L124
	l	%r1,164(%r15)
	chi	%r1,127
	jne	.L125
.L124:
	lhi	%r1,1
	j	.L127
.L125:
	lhi	%r1,0
.L127:
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
	je	.L147
	l	%r1,164(%r15)
	ahi	%r1,-9
	clfi	%r1,4
	jh	.L148
.L147:
	lhi	%r1,1
	j	.L150
.L148:
	lhi	%r1,0
.L150:
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
	jle	.L158
	l	%r1,164(%r15)
	ahi	%r1,-127
	clfi	%r1,32
	jle	.L158
	l	%r1,164(%r15)
	ahi	%r1,-8232
	clfi	%r1,1
	jle	.L158
	l	%r1,164(%r15)
	slfi	%r1,65529
	clfi	%r1,2
	jh	.L159
.L158:
	lhi	%r1,1
	j	.L161
.L159:
	lhi	%r1,0
.L161:
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
	jh	.L169
	l	%r1,164(%r15)
	ahi	%r1,1
	nilf	%r1,127
	clfi	%r1,32
	lhi	%r1,0
	alcr	%r1,%r1
	llcr	%r1,%r1
	j	.L170
.L169:
	l	%r1,164(%r15)
	clfi	%r1,8231
	jle	.L171
	l	%r1,164(%r15)
	ahi	%r1,-8234
	clfi	%r1,47061
	jle	.L171
	l	%r1,164(%r15)
	slfi	%r1,57344
	clfi	%r1,8184
	jh	.L172
.L171:
	lhi	%r1,1
	j	.L170
.L172:
	l	%r1,164(%r15)
	slfi	%r1,65532
	clfi	%r1,1048579
	jh	.L173
	l	%r1,164(%r15)
	nilf	%r1,65534
	cfi	%r1,65534
	jne	.L174
.L173:
	lhi	%r1,0
	j	.L170
.L174:
	lhi	%r1,1
.L170:
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
	jle	.L178
	l	%r1,164(%r15)
	oill	%r1,32
	ahi	%r1,-97
	clfi	%r1,5
	jh	.L179
.L178:
	lhi	%r1,1
	j	.L181
.L179:
	lhi	%r1,0
.L181:
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
	jno	.L189
	ld	%f0,168(%r15)
	j	.L190
.L189:
	ld	%f0,160(%r15)
	cdb	%f0,160(%r15)
	jno	.L191
	ld	%f0,160(%r15)
	j	.L190
.L191:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnh	.L196
	ld	%f0,168(%r15)
	sdb	%f0,160(%r15)
	j	.L190
.L196:
	lzdr	%f0
.L190:
	lgdr	%r1,%f0
	ldgr	%f0,%r1
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
	jno	.L200
	le	%f0,164(%r15)
	j	.L201
.L200:
	le	%f0,160(%r15)
	ceb	%f0,160(%r15)
	jno	.L202
	le	%f0,160(%r15)
	j	.L201
.L202:
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnh	.L207
	le	%f0,164(%r15)
	seb	%f0,160(%r15)
	j	.L201
.L207:
	lzer	%f0
.L201:
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
	jno	.L211
	lg	%r1,160(%r15)
	j	.L212
.L211:
	ld	%f0,160(%r15)
	cdb	%f0,160(%r15)
	jno	.L213
	lg	%r1,168(%r15)
	j	.L212
.L213:
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L214
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L215
	lg	%r1,160(%r15)
	j	.L212
.L215:
	lg	%r1,168(%r15)
	j	.L212
.L214:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnl	.L221
	lg	%r1,160(%r15)
	j	.L212
.L221:
	lg	%r1,168(%r15)
.L212:
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
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	ste	%f0,172(%r15)
	ste	%f2,168(%r15)
	le	%f0,172(%r15)
	ceb	%f0,172(%r15)
	jno	.L225
	l	%r1,168(%r15)
	j	.L226
.L225:
	le	%f0,168(%r15)
	ceb	%f0,168(%r15)
	jno	.L227
	l	%r1,172(%r15)
	j	.L226
.L227:
	le	%f0,172(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,168(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L228
	le	%f0,172(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L229
	l	%r1,168(%r15)
	j	.L226
.L229:
	l	%r1,172(%r15)
	j	.L226
.L228:
	le	%f0,172(%r15)
	keb	%f0,168(%r15)
	jnl	.L235
	l	%r1,168(%r15)
	j	.L226
.L235:
	l	%r1,172(%r15)
.L226:
	st	%r1,164(%r15)
	le	%f0,164(%r15)
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
	jno	.L239
	lg	%r1,192(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L240
.L239:
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	cxbr	%f0,%f4
	jno	.L241
	lg	%r1,192(%r15)
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L240
.L241:
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
	je	.L242
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L243
	lmg	%r2,%r3,160(%r15)
	j	.L244
.L243:
	lmg	%r2,%r3,176(%r15)
.L244:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
	j	.L240
.L242:
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	kxbr	%f0,%f4
	jnl	.L249
	lmg	%r2,%r3,160(%r15)
	j	.L247
.L249:
	lmg	%r2,%r3,176(%r15)
.L247:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
.L240:
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
	jno	.L253
	lg	%r1,160(%r15)
	j	.L254
.L253:
	ld	%f0,160(%r15)
	cdb	%f0,160(%r15)
	jno	.L255
	lg	%r1,168(%r15)
	j	.L254
.L255:
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L256
	ld	%f0,168(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L257
	lg	%r1,168(%r15)
	j	.L254
.L257:
	lg	%r1,160(%r15)
	j	.L254
.L256:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnl	.L263
	lg	%r1,168(%r15)
	j	.L254
.L263:
	lg	%r1,160(%r15)
.L254:
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
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	ste	%f0,172(%r15)
	ste	%f2,168(%r15)
	le	%f0,172(%r15)
	ceb	%f0,172(%r15)
	jno	.L267
	l	%r1,168(%r15)
	j	.L268
.L267:
	le	%f0,168(%r15)
	ceb	%f0,168(%r15)
	jno	.L269
	l	%r1,172(%r15)
	j	.L268
.L269:
	le	%f0,172(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,168(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L270
	le	%f0,172(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L271
	l	%r1,172(%r15)
	j	.L268
.L271:
	l	%r1,168(%r15)
	j	.L268
.L270:
	le	%f0,172(%r15)
	keb	%f0,168(%r15)
	jnl	.L277
	l	%r1,172(%r15)
	j	.L268
.L277:
	l	%r1,168(%r15)
.L268:
	st	%r1,164(%r15)
	le	%f0,164(%r15)
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
	jno	.L281
	lg	%r1,192(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L282
.L281:
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	cxbr	%f0,%f4
	jno	.L283
	lg	%r1,192(%r15)
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L282
.L283:
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
	je	.L284
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L285
	lmg	%r2,%r3,176(%r15)
	j	.L286
.L285:
	lmg	%r2,%r3,160(%r15)
.L286:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
	j	.L282
.L284:
	ld	%f0,176(%r15)
	ld	%f2,184(%r15)
	ld	%f4,160(%r15)
	ld	%f6,168(%r15)
	kxbr	%f0,%f4
	jnl	.L291
	lmg	%r2,%r3,176(%r15)
	j	.L289
.L291:
	lmg	%r2,%r3,160(%r15)
.L289:
	lg	%r1,192(%r15)
	stmg	%r2,%r3,0(%r1)
.L282:
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
	j	.L295
.L296:
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
.L295:
	l	%r1,172(%r15)
	ltr	%r1,%r1
	jne	.L296
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
	larl	%r5,.L306
	lgrl	%r1,seed
	msg	%r1,.L307-.L306(%r5)
	aghi	%r1,1
	stgrl	%r1,seed
	lgrl	%r1,seed
	srlg	%r1,%r1,33
	lgfr	%r1,%r1
	lgr	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L306:
.L307:
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
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	stg	%r2,168(%r15)
	stg	%r3,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,160(%r15)
	stg	%r1,176(%r15)
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L309
	lg	%r1,184(%r15)
	mvghi	8(%r1),0
	lg	%r1,184(%r15)
	lg	%r2,8(%r1)
	lg	%r1,184(%r15)
	stg	%r2,0(%r1)
	j	.L308
.L309:
	lg	%r1,176(%r15)
	lg	%r2,0(%r1)
	lg	%r1,184(%r15)
	stg	%r2,0(%r1)
	lg	%r1,184(%r15)
	lg	%r2,176(%r15)
	stg	%r2,8(%r1)
	lg	%r1,176(%r15)
	lg	%r2,184(%r15)
	stg	%r2,0(%r1)
	lg	%r1,184(%r15)
	lg	%r1,0(%r1)
	ltgr	%r1,%r1
	je	.L308
	lg	%r1,184(%r15)
	lg	%r1,0(%r1)
	lg	%r2,184(%r15)
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
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	stg	%r1,168(%r15)
	lg	%r1,168(%r15)
	lg	%r1,0(%r1)
	ltgr	%r1,%r1
	je	.L314
	lg	%r1,168(%r15)
	lg	%r1,0(%r1)
	lg	%r2,168(%r15)
	lg	%r2,8(%r2)
	stg	%r2,8(%r1)
.L314:
	lg	%r1,168(%r15)
	lg	%r1,8(%r1)
	ltgr	%r1,%r1
	je	.L316
	lg	%r1,168(%r15)
	lg	%r1,8(%r1)
	lg	%r2,168(%r15)
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
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	stg	%r2,192(%r15)
	stg	%r3,184(%r15)
	stg	%r4,176(%r15)
	stg	%r5,168(%r15)
	stg	%r6,160(%r15)
	lg	%r12,168(%r15)
	lgr	%r1,%r12
	aghi	%r1,-1
	stg	%r1,216(%r15)
	lg	%r1,184(%r15)
	stg	%r1,208(%r15)
	lg	%r1,176(%r15)
	lg	%r1,0(%r1)
	stg	%r1,200(%r15)
	mvghi	224(%r15),0
	j	.L320
.L323:
	lgr	%r1,%r12
	msg	%r1,224(%r15)
	ag	%r1,208(%r15)
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	lgr	%r3,%r2
	lg	%r2,192(%r15)
	basr	%r14,%r1
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L321
	lgr	%r1,%r12
	msg	%r1,224(%r15)
	ag	%r1,208(%r15)
	j	.L322
.L321:
	agsi	224(%r15),1
.L320:
	lg	%r1,224(%r15)
	clg	%r1,200(%r15)
	jl	.L323
	lg	%r1,200(%r15)
	aghik	%r2,%r1,1
	lg	%r1,176(%r15)
	stg	%r2,0(%r1)
	lgr	%r1,%r12
	msg	%r1,200(%r15)
	ag	%r1,208(%r15)
	lg	%r4,168(%r15)
	lg	%r3,192(%r15)
	lgr	%r2,%r1
	brasl	%r14,memcpy@PLT
	lgr	%r1,%r2
.L322:
	lgr	%r2,%r1
	lmg	%r12,%r15,328(%r15)
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
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	stg	%r2,192(%r15)
	stg	%r3,184(%r15)
	stg	%r4,176(%r15)
	stg	%r5,168(%r15)
	stg	%r6,160(%r15)
	lg	%r12,168(%r15)
	lgr	%r1,%r12
	aghi	%r1,-1
	stg	%r1,216(%r15)
	lg	%r1,184(%r15)
	stg	%r1,208(%r15)
	lg	%r1,176(%r15)
	lg	%r1,0(%r1)
	stg	%r1,200(%r15)
	mvghi	224(%r15),0
	j	.L327
.L330:
	lgr	%r1,%r12
	msg	%r1,224(%r15)
	ag	%r1,208(%r15)
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	lgr	%r3,%r2
	lg	%r2,192(%r15)
	basr	%r14,%r1
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L328
	lgr	%r1,%r12
	msg	%r1,224(%r15)
	ag	%r1,208(%r15)
	j	.L329
.L328:
	agsi	224(%r15),1
.L327:
	lg	%r1,224(%r15)
	clg	%r1,200(%r15)
	jl	.L330
	lghi	%r1,0
.L329:
	lgr	%r2,%r1
	lmg	%r12,%r15,328(%r15)
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	ic	%r1,0(%r1)
	llcr	%r1,%r1
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
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	stg	%r2,192(%r15)
	stg	%r3,184(%r15)
	stg	%r4,176(%r15)
	stg	%r5,168(%r15)
	stg	%r6,160(%r15)
	lg	%r1,184(%r15)
	stg	%r1,224(%r15)
	lg	%r1,176(%r15)
	st	%r1,220(%r15)
	j	.L383
.L387:
	l	%r1,220(%r15)
	sra	%r1,1
	lgfr	%r1,%r1
	msg	%r1,168(%r15)
	ag	%r1,224(%r15)
	stg	%r1,208(%r15)
	lg	%r1,160(%r15)
	lg	%r4,392(%r15)
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
	stg	%r1,224(%r15)
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
	lmg	%r14,%r15,344(%r15)
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
	nopr	%r0
.L438:
	lg	%r2,160(%r15)
	aghik	%r1,%r2,4
	stg	%r1,160(%r15)
	lg	%r1,168(%r15)
	aghik	%r3,%r1,4
	stg	%r3,168(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L438
	lg	%r1,176(%r15)
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
	agsi	160(%r15),4
.L443:
	lg	%r1,160(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L444
	lg	%r1,160(%r15)
	sg	%r1,168(%r15)
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
	lg	%r1,176(%r15)
	aghik	%r3,%r1,4
	stg	%r3,176(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L482:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L483
	lg	%r1,184(%r15)
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
	stg	%r1,184(%r15)
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
	jhe	.L494
	j	.L491
.L492:
	lg	%r1,160(%r15)
	sllg	%r1,%r1,2
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	lg	%r1,160(%r15)
	sllg	%r1,%r1,2
	ag	%r1,176(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L491:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L492
	j	.L493
.L495:
	lg	%r2,168(%r15)
	aghik	%r1,%r2,4
	stg	%r1,168(%r15)
	lg	%r1,176(%r15)
	aghik	%r3,%r1,4
	stg	%r3,176(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L494:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L495
.L493:
	lg	%r1,184(%r15)
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
	lg	%r1,176(%r15)
	aghik	%r2,%r1,4
	stg	%r2,176(%r15)
	l	%r2,172(%r15)
	st	%r2,0(%r1)
.L499:
	lg	%r1,160(%r15)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r15)
	ltgr	%r1,%r1
	jne	.L500
	lg	%r1,184(%r15)
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
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,192(%r15)
	clg	%r1,184(%r15)
	jhe	.L505
	lg	%r1,192(%r15)
	ag	%r1,160(%r15)
	stg	%r1,192(%r15)
	lg	%r1,184(%r15)
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
	lg	%r1,192(%r15)
	cg	%r1,184(%r15)
	je	.L511
	j	.L509
.L510:
	lg	%r2,192(%r15)
	aghik	%r1,%r2,1
	stg	%r1,192(%r15)
	lg	%r1,184(%r15)
	aghik	%r3,%r1,1
	stg	%r3,184(%r15)
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
	j	.L567
.L570:
	l	%r2,164(%r15)
	l	%r1,172(%r15)
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
	ltgr	%r2,%r2
	jne	.L574
	lhi	%r1,0
	j	.L579
.L574:
	ldgr	%f0,%r12
	.cfi_register 12, 16
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
	lr	%r1,%r12
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L579:
	lgfr	%r1,%r1
	lgr	%r2,%r1
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
	larl	%r5,.L590
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	le	%f0,164(%r15)
	keb	%f0,.L591-.L590(%r5)
	jl	.L583
	le	%f0,164(%r15)
	keb	%f0,.L592-.L590(%r5)
	jnh	.L588
.L583:
	lhi	%r1,1
	j	.L587
.L588:
	lhi	%r1,0
.L587:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L590:
.L592:
	.long	2139095039
.L591:
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
	larl	%r5,.L601
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	std	%f0,160(%r15)
	ld	%f0,160(%r15)
	kdb	%f0,.L602-.L601(%r5)
	jl	.L594
	ld	%f0,160(%r15)
	kdb	%f0,.L603-.L601(%r5)
	jnh	.L599
.L594:
	lhi	%r1,1
	j	.L598
.L599:
	lhi	%r1,0
.L598:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L601:
.L603:
	.long	2146435071
	.long	-1
.L602:
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
	larl	%r5,.L612
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r12,%r2
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	std	%f0,160(%r15)
	std	%f2,168(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,.L613-.L612(%r5)
	ld	%f6,.L613-.L612+8(%r5)
	kxbr	%f0,%f4
	jl	.L605
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	ld	%f4,.L614-.L612(%r5)
	ld	%f6,.L614-.L612+8(%r5)
	kxbr	%f0,%f4
	jnh	.L610
.L605:
	lhi	%r1,1
	j	.L609
.L610:
	lhi	%r1,0
.L609:
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
.L612:
.L614:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L613:
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
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	ste	%f0,172(%r15)
	lgr	%r1,%r2
	st	%r2,168(%r15)
	le	%f0,172(%r15)
	ceb	%f0,172(%r15)
	jo	.L619
	le	%f0,172(%r15)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,172(%r15)
	cebr	%f0,%f2
	je	.L619
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jhe	.L620
	lrl	%r1,.LC7
	j	.L621
.L620:
	lrl	%r1,.LC8
.L621:
	st	%r1,180(%r15)
.L624:
	l	%r1,168(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L622
	le	%f0,172(%r15)
	meeb	%f0,180(%r15)
	ste	%f0,172(%r15)
.L622:
	l	%r1,168(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,168(%r15)
	l	%r1,168(%r15)
	ltr	%r1,%r1
	je	.L626
	le	%f0,180(%r15)
	meeb	%f0,180(%r15)
	ste	%f0,180(%r15)
	j	.L624
.L626:
	nopr	%r0
.L619:
	l	%r1,172(%r15)
	st	%r1,164(%r15)
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
	jo	.L630
	ld	%f0,168(%r15)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,168(%r15)
	cdbr	%f0,%f2
	je	.L630
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jhe	.L631
	lgrl	%r1,.LC9
	j	.L632
.L631:
	lgrl	%r1,.LC10
.L632:
	stg	%r1,176(%r15)
.L635:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L633
	ld	%f0,168(%r15)
	mdb	%f0,176(%r15)
	std	%f0,168(%r15)
.L633:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L637
	ld	%f0,176(%r15)
	mdb	%f0,176(%r15)
	std	%f0,176(%r15)
	j	.L635
.L637:
	nopr	%r0
.L630:
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
	larl	%r5,.L650
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
	jo	.L641
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	axbr	%f0,%f0
	ld	%f4,168(%r15)
	ld	%f6,176(%r15)
	cxbr	%f4,%f0
	je	.L641
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jhe	.L642
	lmg	%r2,%r3,.L651-.L650(%r5)
	j	.L643
.L642:
	lmg	%r2,%r3,.L652-.L650(%r5)
.L643:
	stmg	%r2,%r3,192(%r15)
.L646:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L644
	ld	%f0,168(%r15)
	ld	%f2,176(%r15)
	ld	%f4,192(%r15)
	ld	%f6,200(%r15)
	mxbr	%f0,%f4
	std	%f0,168(%r15)
	std	%f2,176(%r15)
.L644:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L648
	ld	%f0,192(%r15)
	ld	%f2,200(%r15)
	ld	%f4,192(%r15)
	ld	%f6,200(%r15)
	mxbr	%f0,%f4
	std	%f0,192(%r15)
	std	%f2,200(%r15)
	j	.L646
.L648:
	nopr	%r0
.L641:
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
.L650:
.L652:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L651:
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
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	lg	%r1,168(%r15)
	stg	%r1,192(%r15)
	lg	%r1,176(%r15)
	stg	%r1,184(%r15)
	j	.L654
.L655:
	lg	%r1,192(%r15)
	aghik	%r2,%r1,1
	stg	%r2,192(%r15)
	ic	%r3,0(%r1)
	lg	%r1,184(%r15)
	aghik	%r2,%r1,1
	stg	%r2,184(%r15)
	ic	%r2,0(%r1)
	xr	%r2,%r3
	stc	%r2,0(%r1)
	agsi	160(%r15),-1
.L654:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L655
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
	j	.L660
.L662:
	agsi	168(%r15),1
	agsi	184(%r15),1
	agsi	160(%r15),-1
.L660:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L661
	lg	%r1,168(%r15)
	ic	%r2,0(%r1)
	lg	%r1,184(%r15)
	stc	%r2,0(%r1)
	lg	%r1,184(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L662
.L661:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L663
	lg	%r1,184(%r15)
	mvi	0(%r1),0
.L663:
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
	j	.L668
.L673:
	nopr	%r0
	agsi	176(%r15),1
.L668:
	lg	%r1,176(%r15)
	clg	%r1,160(%r15)
	jhe	.L669
	lg	%r1,168(%r15)
	ag	%r1,176(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L673
.L669:
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
	j	.L677
.L681:
	lg	%r1,160(%r15)
	stg	%r1,176(%r15)
	j	.L678
.L680:
	lg	%r1,176(%r15)
	aghik	%r2,%r1,1
	stg	%r2,176(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L678
	lg	%r1,168(%r15)
	j	.L679
.L678:
	lg	%r1,176(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L680
	agsi	168(%r15),1
.L677:
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L681
	lghi	%r1,0
.L679:
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
.L686:
	ic	%r2,0(%r1)
	llcr	%r2,%r2
	l	%r3,164(%r15)
	cr	%r3,%r2
	jne	.L685
	stg	%r1,168(%r15)
.L685:
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	ltr	%r2,%r2
	jne	.L686
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
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r2,160(%r15)
	brasl	%r14,strlen@PLT
	stg	%r2,176(%r15)
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L693
	lg	%r1,168(%r15)
	j	.L692
.L695:
	lg	%r4,176(%r15)
	lg	%r3,160(%r15)
	lg	%r2,184(%r15)
	brasl	%r14,strncmp@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L694
	lg	%r1,184(%r15)
	j	.L692
.L694:
	agsi	184(%r15),1
.L693:
	lg	%r1,160(%r15)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r3,%r1
	lg	%r2,184(%r15)
	brasl	%r14,strchr@PLT
	stg	%r2,184(%r15)
	lg	%r1,184(%r15)
	ltgr	%r1,%r1
	jne	.L695
	lghi	%r1,0
.L692:
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
	jnl	.L699
	ld	%f0,160(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jh	.L701
.L699:
	ld	%f0,168(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnh	.L702
	ld	%f0,160(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L702
.L701:
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	j	.L705
.L702:
	ld	%f0,168(%r15)
.L705:
	lgdr	%r1,%f0
	ldgr	%f0,%r1
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
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
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
	jne	.L711
	lg	%r1,184(%r15)
	j	.L712
.L711:
	lg	%r2,176(%r15)
	lg	%r1,160(%r15)
	clgr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	llgcr	%r1,%r1
	ltgr	%r1,%r1
	je	.L713
	lghi	%r1,0
	j	.L712
.L713:
	lg	%r1,184(%r15)
	stg	%r1,200(%r15)
	j	.L714
.L716:
	lg	%r1,200(%r15)
	ic	%r2,0(%r1)
	lg	%r1,168(%r15)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L715
	lg	%r1,200(%r15)
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
	jne	.L715
	lg	%r1,200(%r15)
	j	.L712
.L715:
	agsi	200(%r15),1
.L714:
	lg	%r1,200(%r15)
	clg	%r1,192(%r15)
	jle	.L716
	lghi	%r1,0
.L712:
	lgr	%r2,%r1
	lmg	%r14,%r15,320(%r15)
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
	larl	%r5,.L741
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	std	%f0,168(%r15)
	stg	%r2,160(%r15)
	mvhi	176(%r15),0
	mvhi	180(%r15),0
	ld	%f0,168(%r15)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L724
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	std	%f0,168(%r15)
	mvhi	180(%r15),1
.L724:
	ld	%f0,168(%r15)
	kdb	%f0,.L742-.L741(%r5)
	jnhe	.L739
	j	.L728
.L729:
	asi	176(%r15),1
	ld	%f0,168(%r15)
	ddb	%f0,.L743-.L741(%r5)
	std	%f0,168(%r15)
.L728:
	ld	%f0,168(%r15)
	kdb	%f0,.L742-.L741(%r5)
	jhe	.L729
	j	.L730
.L739:
	ld	%f0,168(%r15)
	kdb	%f0,.L744-.L741(%r5)
	jnl	.L730
	ld	%f0,168(%r15)
	lzdr	%f2
	cdbr	%f0,%f2
	je	.L730
	j	.L732
.L733:
	asi	176(%r15),-1
	ld	%f0,168(%r15)
	adbr	%f0,%f0
	std	%f0,168(%r15)
.L732:
	ld	%f0,168(%r15)
	kdb	%f0,.L744-.L741(%r5)
	jl	.L733
.L730:
	lg	%r1,160(%r15)
	l	%r2,176(%r15)
	st	%r2,0(%r1)
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L734
	ld	%f0,168(%r15)
	lcdbr	%f0,%f0
	std	%f0,168(%r15)
.L734:
	lg	%r1,168(%r15)
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L741:
.L744:
	.long	1071644672
	.long	0
.L743:
	.long	1073741824
	.long	0
.L742:
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
	j	.L746
.L748:
	lg	%r1,176(%r15)
	risbg	%r1,%r1,63,128+63,0
	ltgr	%r1,%r1
	je	.L747
	lg	%r1,184(%r15)
	ag	%r1,160(%r15)
	stg	%r1,184(%r15)
.L747:
	lg	%r1,160(%r15)
	sllg	%r1,%r1,1
	stg	%r1,160(%r15)
	lg	%r1,176(%r15)
	srlg	%r1,%r1,1
	stg	%r1,176(%r15)
.L746:
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L748
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
	j	.L753
.L755:
	l	%r1,168(%r15)
	sll	%r1,1
	st	%r1,168(%r15)
	l	%r1,180(%r15)
	sll	%r1,1
	st	%r1,180(%r15)
.L753:
	l	%r1,168(%r15)
	cl	%r1,172(%r15)
	jhe	.L756
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L756
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jhe	.L755
	j	.L756
.L758:
	l	%r1,172(%r15)
	cl	%r1,168(%r15)
	jl	.L757
	l	%r1,172(%r15)
	s	%r1,168(%r15)
	st	%r1,172(%r15)
	oc	176(4,%r15),180(%r15)
.L757:
	l	%r1,180(%r15)
	srl	%r1,1
	st	%r1,180(%r15)
	l	%r1,168(%r15)
	srl	%r1,1
	st	%r1,168(%r15)
.L756:
	l	%r1,180(%r15)
	ltr	%r1,%r1
	jne	.L758
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	je	.L759
	l	%r1,172(%r15)
	j	.L760
.L759:
	l	%r1,176(%r15)
.L760:
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
	jne	.L764
	lhi	%r1,7
	j	.L765
.L764:
	llc	%r1,167(%r15)
	sll	%r1,8
	llgfr	%r1,%r1
	flogr	%r2,%r1
	lgr	%r1,%r2
	aghi	%r1,-32
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	ahi	%r1,-1
.L765:
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
	jhe	.L769
	lg	%r1,160(%r15)
	lghi	%r2,-1
	xgr	%r1,%r2
	stg	%r1,160(%r15)
.L769:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jne	.L770
	lhi	%r1,63
	j	.L771
.L770:
	lg	%r1,160(%r15)
	flogr	%r2,%r1
	lgr	%r1,%r2
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	ahi	%r1,-1
.L771:
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
	j	.L775
.L777:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L776
	l	%r1,172(%r15)
	a	%r1,160(%r15)
	st	%r1,172(%r15)
.L776:
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sll	%r1,1
	st	%r1,160(%r15)
.L775:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L777
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
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,3
	st	%r1,204(%r15)
	l	%r1,164(%r15)
	nill	%r1,65528
	st	%r1,208(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,192(%r15)
	clg	%r1,184(%r15)
	jl	.L782
	llgf	%r1,164(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	lg	%r1,192(%r15)
	clgr	%r1,%r2
	jle	.L789
.L782:
	mvhi	212(%r15),0
	j	.L784
.L785:
	llgf	%r1,212(%r15)
	sllg	%r1,%r1,3
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,212(%r15)
	sllg	%r1,%r1,3
	ag	%r1,176(%r15)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
	asi	212(%r15),1
.L784:
	l	%r1,212(%r15)
	cl	%r1,204(%r15)
	jl	.L785
	j	.L786
.L787:
	llgf	%r1,208(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	llgf	%r1,208(%r15)
	ag	%r1,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	asi	208(%r15),1
.L786:
	l	%r1,164(%r15)
	cl	%r1,208(%r15)
	jh	.L787
	j	.L788
.L790:
	llgf	%r1,164(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	llgf	%r1,164(%r15)
	ag	%r1,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L789:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L790
	nopr	%r0
.L788:
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
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,200(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,192(%r15)
	clg	%r1,184(%r15)
	jl	.L794
	llgf	%r1,164(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	lg	%r1,192(%r15)
	clgr	%r1,%r2
	jle	.L800
.L794:
	mvhi	204(%r15),0
	j	.L796
.L797:
	llgf	%r1,204(%r15)
	sllg	%r1,%r1,1
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,204(%r15)
	sllg	%r1,%r1,1
	ag	%r1,176(%r15)
	lh	%r2,0(%r2)
	sth	%r2,0(%r1)
	asi	204(%r15),1
.L796:
	l	%r1,204(%r15)
	cl	%r1,200(%r15)
	jl	.L797
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L799
	l	%r1,164(%r15)
	ahi	%r1,-1
	llgfr	%r1,%r1
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	l	%r1,164(%r15)
	ahi	%r1,-1
	llgfr	%r1,%r1
	ag	%r1,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	j	.L799
.L801:
	llgf	%r1,164(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	llgf	%r1,164(%r15)
	ag	%r1,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L800:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L801
	nopr	%r0
.L799:
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
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	lgr	%r1,%r4
	st	%r4,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,2
	st	%r1,204(%r15)
	l	%r1,164(%r15)
	nill	%r1,65532
	st	%r1,208(%r15)
	lg	%r1,176(%r15)
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	stg	%r1,184(%r15)
	lg	%r1,192(%r15)
	clg	%r1,184(%r15)
	jl	.L805
	llgf	%r1,164(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	lg	%r1,192(%r15)
	clgr	%r1,%r2
	jle	.L812
.L805:
	mvhi	212(%r15),0
	j	.L807
.L808:
	llgf	%r1,212(%r15)
	sllg	%r1,%r1,2
	ag	%r1,168(%r15)
	lgr	%r2,%r1
	llgf	%r1,212(%r15)
	sllg	%r1,%r1,2
	ag	%r1,176(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	asi	212(%r15),1
.L807:
	l	%r1,212(%r15)
	cl	%r1,204(%r15)
	jl	.L808
	j	.L809
.L810:
	llgf	%r1,208(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	llgf	%r1,208(%r15)
	ag	%r1,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	asi	208(%r15),1
.L809:
	l	%r1,164(%r15)
	cl	%r1,208(%r15)
	jh	.L810
	j	.L811
.L813:
	llgf	%r1,164(%r15)
	ag	%r1,184(%r15)
	lgr	%r2,%r1
	llgf	%r1,164(%r15)
	ag	%r1,192(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L812:
	l	%r1,164(%r15)
	ahik	%r2,%r1,-1
	st	%r2,164(%r15)
	ltr	%r1,%r1
	jne	.L813
	nopr	%r0
.L811:
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
	lgdr	%r1,%f0
	ldgr	%f0,%r1
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
	lgdr	%r1,%f0
	ldgr	%f0,%r1
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
	j	.L841
.L844:
	llh	%r2,166(%r15)
	lhi	%r1,15
	s	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L846
	asi	172(%r15),1
.L841:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L844
	j	.L843
.L846:
	nopr	%r0
.L843:
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
	j	.L850
.L853:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L855
	asi	172(%r15),1
.L850:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L853
	j	.L852
.L855:
	nopr	%r0
.L852:
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
	larl	%r5,.L865
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	ste	%f0,164(%r15)
	le	%f0,164(%r15)
	keb	%f0,.L866-.L865(%r5)
	jnhe	.L863
	le	%f0,164(%r15)
	seb	%f0,.L866-.L865(%r5)
	cgebr	%r1,5,%f0
	algfi	%r1,32768
	j	.L861
.L863:
	le	%f0,164(%r15)
	cgebr	%r1,5,%f0
.L861:
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L865:
.L866:
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
	j	.L868
.L870:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L869
	asi	168(%r15),1
.L869:
	asi	172(%r15),1
.L868:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L870
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
	j	.L875
.L877:
	llh	%r2,166(%r15)
	l	%r1,172(%r15)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L876
	asi	168(%r15),1
.L876:
	asi	172(%r15),1
.L875:
	l	%r1,172(%r15)
	chi	%r1,15
	jle	.L877
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
	j	.L882
.L884:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L883
	l	%r1,172(%r15)
	a	%r1,160(%r15)
	st	%r1,172(%r15)
.L883:
	l	%r1,164(%r15)
	srl	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sll	%r1,1
	st	%r1,160(%r15)
.L882:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L884
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
	jne	.L891
	lhi	%r1,0
	j	.L890
.L893:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L892
	l	%r1,172(%r15)
	a	%r1,164(%r15)
	st	%r1,172(%r15)
.L892:
	l	%r1,164(%r15)
	sll	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	srl	%r1,1
	st	%r1,160(%r15)
.L891:
	l	%r1,160(%r15)
	ltr	%r1,%r1
	jne	.L893
	l	%r1,172(%r15)
.L890:
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
	j	.L897
.L899:
	l	%r1,168(%r15)
	sll	%r1,1
	st	%r1,168(%r15)
	l	%r1,180(%r15)
	sll	%r1,1
	st	%r1,180(%r15)
.L897:
	l	%r1,168(%r15)
	cl	%r1,172(%r15)
	jhe	.L900
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L900
	l	%r1,168(%r15)
	ltr	%r1,%r1
	jhe	.L899
	j	.L900
.L902:
	l	%r1,172(%r15)
	cl	%r1,168(%r15)
	jl	.L901
	l	%r1,172(%r15)
	s	%r1,168(%r15)
	st	%r1,172(%r15)
	oc	176(4,%r15),180(%r15)
.L901:
	l	%r1,180(%r15)
	srl	%r1,1
	st	%r1,180(%r15)
	l	%r1,168(%r15)
	srl	%r1,1
	st	%r1,168(%r15)
.L900:
	l	%r1,180(%r15)
	ltr	%r1,%r1
	jne	.L902
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L903
	l	%r1,172(%r15)
	j	.L904
.L903:
	l	%r1,176(%r15)
.L904:
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
	jnl	.L915
	lhi	%r1,-1
	j	.L910
.L915:
	le	%f0,164(%r15)
	keb	%f0,160(%r15)
	jnh	.L916
	lhi	%r1,1
	j	.L910
.L916:
	lhi	%r1,0
.L910:
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
	jnl	.L927
	lhi	%r1,-1
	j	.L922
.L927:
	ld	%f0,168(%r15)
	kdb	%f0,160(%r15)
	jnh	.L928
	lhi	%r1,1
	j	.L922
.L928:
	lhi	%r1,0
.L922:
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
	jhe	.L940
	l	%r1,160(%r15)
	lcr	%r1,%r1
	st	%r1,160(%r15)
	mvhi	176(%r15),1
.L940:
	mvi	183(%r15),0
	j	.L941
.L944:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L942
	l	%r1,172(%r15)
	a	%r1,164(%r15)
	st	%r1,172(%r15)
.L942:
	l	%r1,164(%r15)
	sll	%r1,1
	st	%r1,164(%r15)
	l	%r1,160(%r15)
	sra	%r1,1
	st	%r1,160(%r15)
	ic	%r1,183(%r15)
	ahi	%r1,1
	stc	%r1,183(%r15)
.L941:
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L943
	llc	%r1,183(%r15)
	clfi	%r1,31
	jle	.L944
.L943:
	l	%r1,176(%r15)
	ltr	%r1,%r1
	je	.L945
	l	%r1,172(%r15)
	lcr	%r1,%r1
	j	.L947
.L945:
	l	%r1,172(%r15)
.L947:
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
	jhe	.L951
	lg	%r1,168(%r15)
	lcgr	%r1,%r1
	stg	%r1,168(%r15)
	l	%r1,188(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r15)
.L951:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jhe	.L952
	lg	%r1,160(%r15)
	lcgr	%r1,%r1
	stg	%r1,160(%r15)
	l	%r1,188(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r15)
.L952:
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
	je	.L953
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	stg	%r1,176(%r15)
.L953:
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
	jhe	.L958
	lg	%r1,168(%r15)
	lcgr	%r1,%r1
	stg	%r1,168(%r15)
	mvhi	188(%r15),1
.L958:
	lg	%r1,160(%r15)
	ltgr	%r1,%r1
	jhe	.L959
	lg	%r1,160(%r15)
	lcgr	%r1,%r1
	stg	%r1,160(%r15)
.L959:
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
	je	.L960
	lg	%r1,176(%r15)
	lcgr	%r1,%r1
	stg	%r1,176(%r15)
.L960:
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
	j	.L965
.L967:
	lh	%r1,164(%r15)
	sll	%r1,1
	sth	%r1,164(%r15)
	lh	%r1,174(%r15)
	sll	%r1,1
	sth	%r1,174(%r15)
.L965:
	llh	%r1,164(%r15)
	llh	%r2,166(%r15)
	clr	%r1,%r2
	jhe	.L968
	llh	%r1,174(%r15)
	ltr	%r1,%r1
	je	.L968
	lh	%r1,164(%r15)
	lhr	%r1,%r1
	ltr	%r1,%r1
	jhe	.L967
	j	.L968
.L970:
	llh	%r1,166(%r15)
	llh	%r2,164(%r15)
	clr	%r1,%r2
	jl	.L969
	lh	%r1,166(%r15)
	lh	%r2,164(%r15)
	sr	%r1,%r2
	sth	%r1,166(%r15)
	oc	172(2,%r15),174(%r15)
.L969:
	llh	%r1,174(%r15)
	srl	%r1,1
	sth	%r1,174(%r15)
	llh	%r1,164(%r15)
	srl	%r1,1
	sth	%r1,164(%r15)
.L968:
	llh	%r1,174(%r15)
	ltr	%r1,%r1
	jne	.L970
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L971
	lh	%r1,166(%r15)
	j	.L972
.L971:
	lh	%r1,172(%r15)
.L972:
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
	j	.L976
.L978:
	lg	%r1,168(%r15)
	sllg	%r1,%r1,1
	stg	%r1,168(%r15)
	lg	%r1,192(%r15)
	sllg	%r1,%r1,1
	stg	%r1,192(%r15)
.L976:
	lg	%r1,168(%r15)
	clg	%r1,176(%r15)
	jhe	.L979
	lg	%r1,192(%r15)
	ltgr	%r1,%r1
	je	.L979
	lg	%r1,168(%r15)
	risbg	%r1,%r1,32,128+32,0
	ltgr	%r1,%r1
	je	.L978
	j	.L979
.L981:
	lg	%r1,176(%r15)
	clg	%r1,168(%r15)
	jl	.L980
	lg	%r1,176(%r15)
	sg	%r1,168(%r15)
	stg	%r1,176(%r15)
	oc	184(8,%r15),192(%r15)
.L980:
	lg	%r1,192(%r15)
	srlg	%r1,%r1,1
	stg	%r1,192(%r15)
	lg	%r1,168(%r15)
	srlg	%r1,%r1,1
	stg	%r1,168(%r15)
.L979:
	lg	%r1,192(%r15)
	ltgr	%r1,%r1
	jne	.L981
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L982
	lg	%r1,176(%r15)
	j	.L983
.L982:
	lg	%r1,184(%r15)
.L983:
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
	je	.L987
	mvhi	180(%r15),0
	l	%r2,188(%r15)
	l	%r1,164(%r15)
	s	%r1,196(%r15)
	sllk	%r1,%r2,0(%r1)
	st	%r1,176(%r15)
	j	.L988
.L987:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L989
	lg	%r1,168(%r15)
	j	.L991
.L989:
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
.L988:
	lg	%r1,176(%r15)
.L991:
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
	je	.L995
	mvghi	200(%r15),0
	lg	%r2,216(%r15)
	l	%r1,164(%r15)
	s	%r1,228(%r15)
	sllg	%r1,%r2,0(%r1)
	stg	%r1,192(%r15)
	j	.L996
.L995:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L997
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L999
.L997:
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
.L996:
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	lg	%r1,184(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L999:
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
	je	.L1003
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
	j	.L1004
.L1003:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1005
	lg	%r1,168(%r15)
	j	.L1007
.L1005:
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
.L1004:
	lg	%r1,176(%r15)
.L1007:
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
	je	.L1011
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
	j	.L1012
.L1011:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1013
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L1015
.L1013:
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
.L1012:
	lg	%r2,192(%r15)
	lg	%r3,200(%r15)
	lg	%r1,184(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L1015:
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
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	clfi	%r1,65535
	jh	.L1027
	lhi	%r1,16
	j	.L1028
.L1027:
	lhi	%r1,0
.L1028:
	st	%r1,176(%r15)
	lhi	%r1,16
	s	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,176(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	nilf	%r1,65280
	ltr	%r1,%r1
	jne	.L1029
	lhi	%r1,8
	j	.L1030
.L1029:
	lhi	%r1,0
.L1030:
	st	%r1,176(%r15)
	lhi	%r1,8
	s	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,176(%r15)
	a	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	nilf	%r1,240
	ltr	%r1,%r1
	jne	.L1031
	lhi	%r1,4
	j	.L1032
.L1031:
	lhi	%r1,0
.L1032:
	st	%r1,176(%r15)
	lhi	%r1,4
	s	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,176(%r15)
	a	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	nilf	%r1,12
	ltr	%r1,%r1
	jne	.L1033
	lhi	%r1,2
	j	.L1034
.L1033:
	lhi	%r1,0
.L1034:
	st	%r1,176(%r15)
	lhi	%r1,2
	s	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,176(%r15)
	a	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	nilf	%r1,2
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	lr	%r2,%r1
	lhi	%r1,2
	s	%r1,180(%r15)
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
	jhe	.L1043
	lhi	%r1,0
	j	.L1048
.L1043:
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	cr	%r1,%r2
	jle	.L1045
	lhi	%r1,2
	j	.L1048
.L1045:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jhe	.L1046
	lhi	%r1,0
	j	.L1048
.L1046:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jle	.L1047
	lhi	%r1,2
	j	.L1048
.L1047:
	lhi	%r1,1
.L1048:
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
	jhe	.L1056
	lhi	%r1,0
	j	.L1061
.L1056:
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	cgr	%r1,%r2
	jle	.L1058
	lhi	%r1,2
	j	.L1061
.L1058:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jhe	.L1059
	lhi	%r1,0
	j	.L1061
.L1059:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jle	.L1060
	lhi	%r1,2
	j	.L1061
.L1060:
	lhi	%r1,1
.L1061:
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
	larl	%r5,.L1075
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r1,%r2
	st	%r2,164(%r15)
	l	%r1,164(%r15)
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	nilh	%r1,0
	ltr	%r1,%r1
	jne	.L1065
	lhi	%r1,16
	j	.L1066
.L1065:
	lhi	%r1,0
.L1066:
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,176(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	nilf	%r1,255
	ltr	%r1,%r1
	jne	.L1067
	lhi	%r1,8
	j	.L1068
.L1067:
	lhi	%r1,0
.L1068:
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,176(%r15)
	a	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	nilf	%r1,15
	ltr	%r1,%r1
	jne	.L1069
	lhi	%r1,4
	j	.L1070
.L1069:
	lhi	%r1,0
.L1070:
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,176(%r15)
	a	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	nilf	%r1,3
	ltr	%r1,%r1
	jne	.L1071
	lhi	%r1,2
	j	.L1072
.L1071:
	lhi	%r1,0
.L1072:
	st	%r1,176(%r15)
	l	%r1,176(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	nc	180(4,%r15),.L1076-.L1075(%r5)
	l	%r1,176(%r15)
	a	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,180(%r15)
	xilf	%r1,4294967295
	nilf	%r1,1
	l	%r2,180(%r15)
	srl	%r2,1
	lhi	%r3,2
	srk	%r2,%r3,%r2
	lcr	%r1,%r1
	nr	%r1,%r2
	a	%r1,172(%r15)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1075:
.L1076:
	.long	3
	.align	2
.text
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
	jne	.L1082
	lg	%r1,176(%r15)
	ltgr	%r1,%r1
	jne	.L1083
	lhi	%r1,0
	j	.L1085
.L1083:
	lg	%r1,176(%r15)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,65
	j	.L1085
.L1082:
	lg	%r1,184(%r15)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,1
.L1085:
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
	je	.L1089
	mvhi	176(%r15),0
	l	%r2,184(%r15)
	l	%r1,164(%r15)
	s	%r1,196(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	j	.L1090
.L1089:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1091
	lg	%r1,168(%r15)
	j	.L1093
.L1091:
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
.L1090:
	lg	%r1,176(%r15)
.L1093:
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
	je	.L1097
	mvghi	192(%r15),0
	lg	%r2,208(%r15)
	l	%r1,164(%r15)
	s	%r1,228(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r15)
	j	.L1098
.L1097:
	l	%r1,164(%r15)
	ltr	%r1,%r1
	jne	.L1099
	lg	%r1,184(%r15)
	lg	%r2,168(%r15)
	lg	%r3,176(%r15)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L1101
.L1099:
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
.L1098:
	lg	%r2,192(%r15)
	lg	%r1,200(%r15)
	lgr	%r3,%r2
	lgr	%r2,%r1
	lg	%r1,184(%r15)
	stg	%r3,0(%r1)
	stg	%r2,8(%r1)
.L1101:
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
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r15)
	lr	%r1,%r2
	st	%r1,160(%r15)
	mvhi	188(%r15),16
	l	%r1,188(%r15)
	lhi	%r2,-1
	srlk	%r1,%r2,0(%r1)
	st	%r1,184(%r15)
	l	%r2,164(%r15)
	n	%r2,184(%r15)
	l	%r1,160(%r15)
	n	%r1,184(%r15)
	msr	%r1,%r2
	st	%r1,172(%r15)
	l	%r2,172(%r15)
	l	%r1,188(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,172(%r15)
	n	%r1,184(%r15)
	st	%r1,172(%r15)
	l	%r1,188(%r15)
	l	%r2,164(%r15)
	srl	%r2,0(%r1)
	l	%r1,160(%r15)
	n	%r1,184(%r15)
	msr	%r1,%r2
	a	%r1,180(%r15)
	st	%r1,180(%r15)
	l	%r3,172(%r15)
	l	%r2,180(%r15)
	n	%r2,184(%r15)
	l	%r1,188(%r15)
	sllk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,172(%r15)
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,168(%r15)
	l	%r2,172(%r15)
	l	%r1,188(%r15)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r15)
	l	%r1,172(%r15)
	n	%r1,184(%r15)
	st	%r1,172(%r15)
	l	%r1,188(%r15)
	l	%r2,160(%r15)
	srl	%r2,0(%r1)
	l	%r1,164(%r15)
	n	%r1,184(%r15)
	msr	%r1,%r2
	a	%r1,180(%r15)
	st	%r1,180(%r15)
	l	%r3,172(%r15)
	l	%r2,180(%r15)
	n	%r2,184(%r15)
	l	%r1,188(%r15)
	sllk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,172(%r15)
	l	%r1,168(%r15)
	lr	%r3,%r1
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	srlk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,168(%r15)
	l	%r1,168(%r15)
	lr	%r4,%r1
	l	%r1,188(%r15)
	l	%r2,164(%r15)
	srlk	%r3,%r2,0(%r1)
	l	%r1,188(%r15)
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
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	stg	%r2,176(%r15)
	stg	%r3,168(%r15)
	stg	%r4,160(%r15)
	mvhi	220(%r15),32
	l	%r1,220(%r15)
	lghi	%r2,-1
	srlg	%r1,%r2,0(%r1)
	stg	%r1,208(%r15)
	lg	%r2,168(%r15)
	ng	%r2,208(%r15)
	lg	%r1,160(%r15)
	ng	%r1,208(%r15)
	msgr	%r1,%r2
	stg	%r1,192(%r15)
	lg	%r2,192(%r15)
	l	%r1,220(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r15)
	lg	%r1,192(%r15)
	ng	%r1,208(%r15)
	stg	%r1,192(%r15)
	l	%r1,220(%r15)
	lg	%r2,168(%r15)
	srlg	%r2,%r2,0(%r1)
	lg	%r1,160(%r15)
	ng	%r1,208(%r15)
	msgr	%r1,%r2
	ag	%r1,200(%r15)
	stg	%r1,200(%r15)
	lg	%r3,192(%r15)
	lg	%r2,200(%r15)
	ng	%r2,208(%r15)
	l	%r1,220(%r15)
	sllg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,192(%r15)
	l	%r1,220(%r15)
	lg	%r2,200(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,184(%r15)
	lg	%r2,192(%r15)
	l	%r1,220(%r15)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r15)
	lg	%r1,192(%r15)
	ng	%r1,208(%r15)
	stg	%r1,192(%r15)
	l	%r1,220(%r15)
	lg	%r2,160(%r15)
	srlg	%r2,%r2,0(%r1)
	lg	%r1,168(%r15)
	ng	%r1,208(%r15)
	msgr	%r1,%r2
	ag	%r1,200(%r15)
	stg	%r1,200(%r15)
	lg	%r3,192(%r15)
	lg	%r2,200(%r15)
	ng	%r2,208(%r15)
	l	%r1,220(%r15)
	sllg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,192(%r15)
	lg	%r1,184(%r15)
	lgr	%r3,%r1
	l	%r1,220(%r15)
	lg	%r2,200(%r15)
	srlg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,184(%r15)
	lg	%r1,184(%r15)
	lgr	%r4,%r1
	l	%r1,220(%r15)
	lg	%r2,168(%r15)
	srlg	%r3,%r2,0(%r1)
	l	%r1,220(%r15)
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
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	stg	%r1,168(%r15)
	l	%r1,168(%r15)
	lr	%r2,%r1
	l	%r1,172(%r15)
	xr	%r1,%r2
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	srl	%r1,16
	x	%r1,180(%r15)
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	srl	%r1,8
	x	%r1,180(%r15)
	st	%r1,180(%r15)
	l	%r1,180(%r15)
	srl	%r1,4
	x	%r1,180(%r15)
	st	%r1,180(%r15)
	l	%r1,180(%r15)
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
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
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
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	srl	%r1,16
	x	%r1,204(%r15)
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	srl	%r1,8
	x	%r1,204(%r15)
	st	%r1,204(%r15)
	l	%r1,204(%r15)
	srl	%r1,4
	x	%r1,204(%r15)
	st	%r1,204(%r15)
	l	%r1,204(%r15)
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
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,16
	x	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,8
	x	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,4
	x	%r1,172(%r15)
	st	%r1,172(%r15)
	l	%r1,172(%r15)
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
.LC18:
	.quad	6148914691236517205
	.align	8
.LC19:
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
	larl	%r5,.L1143
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	stg	%r2,160(%r15)
	lg	%r1,160(%r15)
	stg	%r1,176(%r15)
	lg	%r1,176(%r15)
	srlg	%r1,%r1,1
	lgrl	%r2,.LC18
	ngrk	%r2,%r1,%r2
	lg	%r1,176(%r15)
	sgr	%r1,%r2
	stg	%r1,176(%r15)
	lg	%r1,176(%r15)
	srlg	%r1,%r1,2
	lgrl	%r2,.LC19
	ngrk	%r2,%r1,%r2
	lgrl	%r1,.LC19
	ng	%r1,176(%r15)
	agrk	%r1,%r2,%r1
	stg	%r1,176(%r15)
	lg	%r1,176(%r15)
	srlg	%r1,%r1,4
	ag	%r1,176(%r15)
	ng	%r1,.L1144-.L1143(%r5)
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
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,8
	a	%r1,172(%r15)
	nilf	%r1,127
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1143:
.L1144:
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
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,1
	nilf	%r1,1431655765
	lr	%r2,%r1
	l	%r1,172(%r15)
	sr	%r1,%r2
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,2
	nilf	%r1,858993459
	l	%r2,172(%r15)
	nilf	%r2,858993459
	ar	%r1,%r2
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,4
	a	%r1,172(%r15)
	nilf	%r1,252645135
	st	%r1,172(%r15)
	l	%r1,172(%r15)
	srl	%r1,16
	a	%r1,172(%r15)
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
.LC21:
	.quad	6148914691236517205
	.align	8
.LC22:
	.quad	3689348814741910323
	.align	8
.LC23:
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
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r7,%r2
	lg	%r2,0(%r7)
	lg	%r3,8(%r7)
	stg	%r2,176(%r15)
	stg	%r3,184(%r15)
	lg	%r2,176(%r15)
	lg	%r3,184(%r15)
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	lg	%r1,208(%r15)
	sllg	%r2,%r1,63
	lg	%r1,216(%r15)
	srlg	%r1,%r1,1
	ogr	%r1,%r2
	lg	%r2,208(%r15)
	srlg	%r2,%r2,1
	lgrl	%r3,.LC21
	ngrk	%r8,%r2,%r3
	lgrl	%r2,.LC21
	ngrk	%r9,%r1,%r2
	lg	%r2,208(%r15)
	lg	%r3,216(%r15)
	slgr	%r3,%r9
	slbgr	%r2,%r8
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	lg	%r1,208(%r15)
	sllg	%r2,%r1,62
	lg	%r1,216(%r15)
	srlg	%r1,%r1,2
	ogr	%r1,%r2
	lg	%r2,208(%r15)
	srlg	%r2,%r2,2
	lgrl	%r3,.LC22
	ngrk	%r10,%r2,%r3
	lgrl	%r2,.LC22
	ngrk	%r11,%r1,%r2
	lgrl	%r1,.LC22
	ng	%r1,208(%r15)
	stg	%r1,160(%r15)
	lgrl	%r1,.LC22
	ng	%r1,216(%r15)
	stg	%r1,168(%r15)
	lgr	%r2,%r10
	lgr	%r3,%r11
	alg	%r3,168(%r15)
	alcg	%r2,160(%r15)
	stg	%r2,208(%r15)
	stg	%r3,216(%r15)
	lg	%r1,208(%r15)
	sllg	%r2,%r1,60
	lg	%r1,216(%r15)
	srlg	%r5,%r1,4
	ogr	%r5,%r2
	lg	%r1,208(%r15)
	srlg	%r4,%r1,4
	lgr	%r2,%r4
	lgr	%r3,%r5
	alg	%r3,216(%r15)
	alcg	%r2,208(%r15)
	lgrl	%r1,.LC23
	ngrk	%r1,%r2,%r1
	stg	%r1,208(%r15)
	lgrl	%r1,.LC23
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
	st	%r1,196(%r15)
	l	%r1,196(%r15)
	srl	%r1,8
	a	%r1,196(%r15)
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
	larl	%r5,.L1164
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	std	%f0,168(%r15)
	lgr	%r1,%r2
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,180(%r15)
	ld	%f0,.L1165-.L1164(%r5)
	std	%f0,184(%r15)
.L1157:
	l	%r1,164(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L1154
	ld	%f0,184(%r15)
	mdb	%f0,168(%r15)
	std	%f0,184(%r15)
.L1154:
	l	%r1,164(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r15)
	l	%r1,164(%r15)
	ltr	%r1,%r1
	je	.L1162
	ld	%f0,168(%r15)
	mdb	%f0,168(%r15)
	std	%f0,168(%r15)
	j	.L1157
.L1162:
	nopr	%r0
	l	%r1,180(%r15)
	ltr	%r1,%r1
	je	.L1158
	ld	%f0,.L1165-.L1164(%r5)
	ddb	%f0,184(%r15)
	j	.L1160
.L1158:
	ld	%f0,184(%r15)
.L1160:
	lgdr	%r1,%f0
	ldgr	%f0,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1164:
.L1165:
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
	larl	%r5,.L1177
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	ste	%f0,164(%r15)
	lgr	%r1,%r2
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,168(%r15)
	le	%f0,.L1178-.L1177(%r5)
	ste	%f0,172(%r15)
.L1170:
	l	%r1,160(%r15)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L1167
	le	%f0,172(%r15)
	meeb	%f0,164(%r15)
	ste	%f0,172(%r15)
.L1167:
	l	%r1,160(%r15)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,160(%r15)
	l	%r1,160(%r15)
	ltr	%r1,%r1
	je	.L1175
	le	%f0,164(%r15)
	meeb	%f0,164(%r15)
	ste	%f0,164(%r15)
	j	.L1170
.L1175:
	nopr	%r0
	l	%r1,168(%r15)
	ltr	%r1,%r1
	je	.L1171
	le	%f0,.L1178-.L1177(%r5)
	deb	%f0,172(%r15)
	j	.L1173
.L1171:
	le	%f0,172(%r15)
.L1173:
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
	.section	.rodata
	.align	8
.L1177:
.L1178:
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
	jhe	.L1180
	lhi	%r1,0
	j	.L1185
.L1180:
	l	%r1,184(%r15)
	l	%r2,176(%r15)
	clr	%r1,%r2
	jle	.L1182
	lhi	%r1,2
	j	.L1185
.L1182:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jhe	.L1183
	lhi	%r1,0
	j	.L1185
.L1183:
	l	%r1,188(%r15)
	l	%r2,180(%r15)
	clr	%r1,%r2
	jle	.L1184
	lhi	%r1,2
	j	.L1185
.L1184:
	lhi	%r1,1
.L1185:
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
	jhe	.L1193
	lhi	%r1,0
	j	.L1198
.L1193:
	lg	%r1,208(%r15)
	lg	%r2,192(%r15)
	clgr	%r1,%r2
	jle	.L1195
	lhi	%r1,2
	j	.L1198
.L1195:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jhe	.L1196
	lhi	%r1,0
	j	.L1198
.L1196:
	lg	%r1,216(%r15)
	lg	%r2,200(%r15)
	clgr	%r1,%r2
	jle	.L1197
	lhi	%r1,2
	j	.L1198
.L1197:
	lhi	%r1,1
.L1198:
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
