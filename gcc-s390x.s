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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,160(%r11)
	stg	%r1,192(%r11)
	lg	%r2,184(%r11)
	lg	%r3,192(%r11)
	lg	%r1,176(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,160(%r11)
	stg	%r1,192(%r11)
	lg	%r2,184(%r11)
	lg	%r3,192(%r11)
	lg	%r1,176(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,184(%r11)
	clg	%r1,192(%r11)
	jhe	.L8
	lg	%r1,184(%r11)
	ag	%r1,160(%r11)
	stg	%r1,184(%r11)
	lg	%r1,192(%r11)
	ag	%r1,160(%r11)
	stg	%r1,192(%r11)
	j	.L9
.L10:
	agsi	184(%r11),-1
	agsi	192(%r11),-1
	lg	%r1,184(%r11)
	ic	%r2,0(%r1)
	lg	%r1,192(%r11)
	stc	%r2,0(%r1)
	agsi	160(%r11),-1
.L9:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L10
	j	.L11
.L8:
	lg	%r1,184(%r11)
	cg	%r1,192(%r11)
	je	.L11
	j	.L12
.L13:
	lg	%r2,184(%r11)
	aghik	%r1,%r2,1
	stg	%r1,184(%r11)
	lg	%r1,192(%r11)
	aghik	%r3,%r1,1
	stg	%r3,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	160(%r11),-1
.L12:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L13
.L11:
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,184(%r11)
	stg	%r3,176(%r11)
	lgr	%r1,%r4
	stg	%r5,160(%r11)
	st	%r1,172(%r11)
	lg	%r1,184(%r11)
	stg	%r1,200(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	l	%r1,172(%r11)
	llcr	%r1,%r1
	st	%r1,172(%r11)
	j	.L17
.L19:
	agsi	160(%r11),-1
	agsi	192(%r11),1
	agsi	200(%r11),1
.L17:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L18
	lg	%r1,192(%r11)
	ic	%r2,0(%r1)
	lg	%r1,200(%r11)
	stc	%r2,0(%r1)
	lg	%r1,200(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,172(%r11)
	cr	%r2,%r1
	jne	.L19
.L18:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L20
	lg	%r1,200(%r11)
	aghi	%r1,1
	j	.L21
.L20:
	lghi	%r1,0
.L21:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	lgr	%r1,%r3
	stg	%r4,160(%r11)
	st	%r1,172(%r11)
	lg	%r1,176(%r11)
	stg	%r1,184(%r11)
	l	%r1,172(%r11)
	llcr	%r1,%r1
	st	%r1,172(%r11)
	j	.L24
.L26:
	agsi	184(%r11),1
	agsi	160(%r11),-1
.L24:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L25
	lg	%r1,184(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,172(%r11)
	cr	%r2,%r1
	jne	.L26
.L25:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L27
	lg	%r1,184(%r11)
	j	.L29
.L27:
	lghi	%r1,0
.L29:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	j	.L32
.L34:
	agsi	160(%r11),-1
	agsi	192(%r11),1
	agsi	184(%r11),1
.L32:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L33
	lg	%r1,192(%r11)
	ic	%r2,0(%r1)
	lg	%r1,184(%r11)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	je	.L34
.L33:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L35
	lg	%r1,192(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,184(%r11)
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	sr	%r1,%r2
	j	.L37
.L35:
	lhi	%r1,0
.L37:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	j	.L40
.L41:
	lg	%r2,184(%r11)
	aghik	%r1,%r2,1
	stg	%r1,184(%r11)
	lg	%r1,192(%r11)
	aghik	%r3,%r1,1
	stg	%r3,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	160(%r11),-1
.L40:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L41
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	lgr	%r1,%r3
	stg	%r4,160(%r11)
	st	%r1,172(%r11)
	lg	%r1,176(%r11)
	stg	%r1,184(%r11)
	l	%r1,172(%r11)
	llcr	%r1,%r1
	st	%r1,172(%r11)
	j	.L45
.L47:
	lg	%r1,184(%r11)
	ag	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,172(%r11)
	cr	%r2,%r1
	jne	.L45
	lg	%r1,184(%r11)
	ag	%r1,160(%r11)
	j	.L46
.L45:
	lg	%r1,160(%r11)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r11)
	ltgr	%r1,%r1
	jne	.L47
	lghi	%r1,0
.L46:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	lgr	%r1,%r3
	stg	%r4,160(%r11)
	st	%r1,172(%r11)
	lg	%r1,176(%r11)
	stg	%r1,184(%r11)
	j	.L50
.L51:
	l	%r1,172(%r11)
	lr	%r2,%r1
	lg	%r1,184(%r11)
	stc	%r2,0(%r1)
	agsi	160(%r11),-1
	agsi	184(%r11),1
.L50:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L51
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	j	.L55
.L56:
	agsi	160(%r11),1
	agsi	168(%r11),1
.L55:
	lg	%r1,160(%r11)
	ic	%r2,0(%r1)
	lg	%r1,168(%r11)
	stc	%r2,0(%r1)
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L56
	lg	%r1,168(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	llcr	%r1,%r1
	st	%r1,164(%r11)
	j	.L60
.L62:
	agsi	168(%r11),1
.L60:
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L61
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	l	%r2,164(%r11)
	cr	%r2,%r1
	jne	.L62
.L61:
	lg	%r1,168(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r2,164(%r11)
.L68:
	ic	%r2,0(%r1)
	llcr	%r2,%r2
	l	%r3,164(%r11)
	cr	%r3,%r2
	jne	.L66
	j	.L67
.L66:
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	ltr	%r2,%r2
	jne	.L68
	lghi	%r1,0
.L67:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	j	.L71
.L73:
	agsi	168(%r11),1
	agsi	160(%r11),1
.L71:
	lg	%r1,168(%r11)
	ic	%r2,0(%r1)
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L72
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L73
.L72:
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,160(%r11)
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	sr	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	stg	%r1,168(%r11)
	j	.L77
.L78:
	agsi	160(%r11),1
.L77:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L78
	lg	%r1,160(%r11)
	sg	%r1,168(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,160(%r11)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r11)
	ltgr	%r1,%r1
	jne	.L84
	lhi	%r1,0
	j	.L83
.L86:
	agsi	192(%r11),1
	agsi	184(%r11),1
	agsi	160(%r11),-1
.L84:
	lg	%r1,192(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L85
	lg	%r1,184(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	je	.L85
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L85
	lg	%r1,192(%r11)
	ic	%r2,0(%r1)
	lg	%r1,184(%r11)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	je	.L86
.L85:
	lg	%r1,192(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lg	%r2,184(%r11)
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	sr	%r1,%r2
.L83:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	j	.L89
.L90:
	lg	%r1,192(%r11)
	aghi	%r1,1
	ic	%r2,0(%r1)
	lg	%r1,184(%r11)
	stc	%r2,0(%r1)
	lg	%r1,184(%r11)
	aghi	%r1,1
	lg	%r2,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	184(%r11),2
	agsi	192(%r11),2
	agsi	160(%r11),-2
.L89:
	lg	%r1,160(%r11)
	cghi	%r1,1
	jh	.L90
	nopr	%r0
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
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
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	lhi	%r2,127
	slrk	%r1,%r2,%r1
	lhi	%r1,0
	alcr	%r1,%r1
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	chi	%r1,32
	je	.L99
	l	%r1,164(%r11)
	chi	%r1,9
	jne	.L100
.L99:
	lhi	%r1,1
	j	.L102
.L100:
	lhi	%r1,0
.L102:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	clfi	%r1,31
	jle	.L105
	l	%r1,164(%r11)
	chi	%r1,127
	jne	.L106
.L105:
	lhi	%r1,1
	j	.L108
.L106:
	lhi	%r1,0
.L108:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
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
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
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
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
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
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
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
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	chi	%r1,32
	je	.L123
	l	%r1,164(%r11)
	ahi	%r1,-9
	clfi	%r1,4
	jh	.L124
.L123:
	lhi	%r1,1
	j	.L126
.L124:
	lhi	%r1,0
.L126:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
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
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	clfi	%r1,31
	jle	.L132
	l	%r1,164(%r11)
	ahi	%r1,-127
	clfi	%r1,32
	jle	.L132
	l	%r1,164(%r11)
	ahi	%r1,-8232
	clfi	%r1,1
	jle	.L132
	l	%r1,164(%r11)
	slfi	%r1,65529
	clfi	%r1,2
	jh	.L133
.L132:
	lhi	%r1,1
	j	.L135
.L133:
	lhi	%r1,0
.L135:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
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
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	clfi	%r1,254
	jh	.L141
	l	%r1,164(%r11)
	ahi	%r1,1
	nilf	%r1,127
	clfi	%r1,32
	lhi	%r1,0
	alcr	%r1,%r1
	llcr	%r1,%r1
	j	.L142
.L141:
	l	%r1,164(%r11)
	clfi	%r1,8231
	jle	.L143
	l	%r1,164(%r11)
	ahi	%r1,-8234
	clfi	%r1,47061
	jle	.L143
	l	%r1,164(%r11)
	slfi	%r1,57344
	clfi	%r1,8184
	jh	.L144
.L143:
	lhi	%r1,1
	j	.L142
.L144:
	l	%r1,164(%r11)
	slfi	%r1,65532
	clfi	%r1,1048579
	jh	.L145
	l	%r1,164(%r11)
	nilf	%r1,65534
	cfi	%r1,65534
	jne	.L146
.L145:
	lhi	%r1,0
	j	.L142
.L146:
	lhi	%r1,1
.L142:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L149
	l	%r1,164(%r11)
	oill	%r1,32
	ahi	%r1,-97
	clfi	%r1,5
	jh	.L150
.L149:
	lhi	%r1,1
	j	.L152
.L150:
	lhi	%r1,0
.L152:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	nilf	%r1,127
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	std	%f2,160(%r11)
	ld	%f0,168(%r11)
	cdb	%f0,168(%r11)
	jno	.L158
	ld	%f0,168(%r11)
	j	.L159
.L158:
	ld	%f0,160(%r11)
	cdb	%f0,160(%r11)
	jno	.L160
	ld	%f0,160(%r11)
	j	.L159
.L160:
	ld	%f0,168(%r11)
	kdb	%f0,160(%r11)
	jnh	.L165
	ld	%f0,168(%r11)
	sdb	%f0,160(%r11)
	j	.L159
.L165:
	lzdr	%f0
.L159:
	lgdr	%r1,%f0
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,164(%r11)
	ste	%f2,160(%r11)
	le	%f0,164(%r11)
	ceb	%f0,164(%r11)
	jno	.L168
	le	%f0,164(%r11)
	j	.L169
.L168:
	le	%f0,160(%r11)
	ceb	%f0,160(%r11)
	jno	.L170
	le	%f0,160(%r11)
	j	.L169
.L170:
	le	%f0,164(%r11)
	keb	%f0,160(%r11)
	jnh	.L175
	le	%f0,164(%r11)
	seb	%f0,160(%r11)
	j	.L169
.L175:
	lzer	%f0
.L169:
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	std	%f2,160(%r11)
	ld	%f0,168(%r11)
	cdb	%f0,168(%r11)
	jno	.L178
	lg	%r1,160(%r11)
	j	.L179
.L178:
	ld	%f0,160(%r11)
	cdb	%f0,160(%r11)
	jno	.L180
	lg	%r1,168(%r11)
	j	.L179
.L180:
	ld	%f0,168(%r11)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L181
	ld	%f0,168(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L182
	lg	%r1,160(%r11)
	j	.L179
.L182:
	lg	%r1,168(%r11)
	j	.L179
.L181:
	ld	%f0,168(%r11)
	kdb	%f0,160(%r11)
	jnl	.L188
	lg	%r1,160(%r11)
	j	.L179
.L188:
	lg	%r1,168(%r11)
.L179:
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,172(%r11)
	ste	%f2,168(%r11)
	le	%f0,172(%r11)
	ceb	%f0,172(%r11)
	jno	.L191
	l	%r1,168(%r11)
	j	.L192
.L191:
	le	%f0,168(%r11)
	ceb	%f0,168(%r11)
	jno	.L193
	l	%r1,172(%r11)
	j	.L192
.L193:
	le	%f0,172(%r11)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,168(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L194
	le	%f0,172(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L195
	l	%r1,168(%r11)
	j	.L192
.L195:
	l	%r1,172(%r11)
	j	.L192
.L194:
	le	%f0,172(%r11)
	keb	%f0,168(%r11)
	jnl	.L201
	l	%r1,168(%r11)
	j	.L192
.L201:
	l	%r1,172(%r11)
.L192:
	st	%r1,164(%r11)
	le	%f0,164(%r11)
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f5,%r11
	.cfi_register 11, 22
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,192(%r11)
	lgr	%r12,%r3
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,176(%r11)
	std	%f2,184(%r11)
	lgr	%r12,%r4
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,160(%r11)
	std	%f2,168(%r11)
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	ld	%f4,176(%r11)
	ld	%f6,184(%r11)
	cxbr	%f0,%f4
	jno	.L204
	lg	%r1,192(%r11)
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L205
.L204:
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	ld	%f4,160(%r11)
	ld	%f6,168(%r11)
	cxbr	%f0,%f4
	jno	.L206
	lg	%r1,192(%r11)
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L205
.L206:
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L207
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L208
	lmg	%r2,%r3,160(%r11)
	j	.L209
.L208:
	lmg	%r2,%r3,176(%r11)
.L209:
	lg	%r1,192(%r11)
	stmg	%r2,%r3,0(%r1)
	j	.L205
.L207:
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	ld	%f4,160(%r11)
	ld	%f6,168(%r11)
	kxbr	%f0,%f4
	jnl	.L214
	lmg	%r2,%r3,160(%r11)
	j	.L212
.L214:
	lmg	%r2,%r3,176(%r11)
.L212:
	lg	%r1,192(%r11)
	stmg	%r2,%r3,0(%r1)
.L205:
	lg	%r2,192(%r11)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f3
	.cfi_restore 12
	lgdr	%r11,%f5
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	std	%f2,160(%r11)
	ld	%f0,168(%r11)
	cdb	%f0,168(%r11)
	jno	.L217
	lg	%r1,160(%r11)
	j	.L218
.L217:
	ld	%f0,160(%r11)
	cdb	%f0,160(%r11)
	jno	.L219
	lg	%r1,168(%r11)
	j	.L218
.L219:
	ld	%f0,168(%r11)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L220
	ld	%f0,168(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L221
	lg	%r1,168(%r11)
	j	.L218
.L221:
	lg	%r1,160(%r11)
	j	.L218
.L220:
	ld	%f0,168(%r11)
	kdb	%f0,160(%r11)
	jnl	.L227
	lg	%r1,168(%r11)
	j	.L218
.L227:
	lg	%r1,160(%r11)
.L218:
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,172(%r11)
	ste	%f2,168(%r11)
	le	%f0,172(%r11)
	ceb	%f0,172(%r11)
	jno	.L230
	l	%r1,168(%r11)
	j	.L231
.L230:
	le	%f0,168(%r11)
	ceb	%f0,168(%r11)
	jno	.L232
	l	%r1,172(%r11)
	j	.L231
.L232:
	le	%f0,172(%r11)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,168(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L233
	le	%f0,172(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L234
	l	%r1,172(%r11)
	j	.L231
.L234:
	l	%r1,168(%r11)
	j	.L231
.L233:
	le	%f0,172(%r11)
	keb	%f0,168(%r11)
	jnl	.L240
	l	%r1,172(%r11)
	j	.L231
.L240:
	l	%r1,168(%r11)
.L231:
	st	%r1,164(%r11)
	le	%f0,164(%r11)
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f5,%r11
	.cfi_register 11, 22
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,192(%r11)
	lgr	%r12,%r3
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,176(%r11)
	std	%f2,184(%r11)
	lgr	%r12,%r4
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,160(%r11)
	std	%f2,168(%r11)
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	ld	%f4,176(%r11)
	ld	%f6,184(%r11)
	cxbr	%f0,%f4
	jno	.L243
	lg	%r1,192(%r11)
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L244
.L243:
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	ld	%f4,160(%r11)
	ld	%f6,168(%r11)
	cxbr	%f0,%f4
	jno	.L245
	lg	%r1,192(%r11)
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L244
.L245:
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L246
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L247
	lmg	%r2,%r3,176(%r11)
	j	.L248
.L247:
	lmg	%r2,%r3,160(%r11)
.L248:
	lg	%r1,192(%r11)
	stmg	%r2,%r3,0(%r1)
	j	.L244
.L246:
	ld	%f0,176(%r11)
	ld	%f2,184(%r11)
	ld	%f4,160(%r11)
	ld	%f6,168(%r11)
	kxbr	%f0,%f4
	jnl	.L253
	lmg	%r2,%r3,176(%r11)
	j	.L251
.L253:
	lmg	%r2,%r3,160(%r11)
.L251:
	lg	%r1,192(%r11)
	stmg	%r2,%r3,0(%r1)
.L244:
	lg	%r2,192(%r11)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f3
	.cfi_restore 12
	lgdr	%r11,%f5
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	st	%r1,172(%r11)
	larl	%r1,s.0
	stg	%r1,176(%r11)
	j	.L256
.L257:
	l	%r1,172(%r11)
	nilf	%r1,63
	larl	%r2,digits
	llgfr	%r1,%r1
	ic	%r2,0(%r1,%r2)
	lg	%r1,176(%r11)
	stc	%r2,0(%r1)
	agsi	176(%r11),1
	l	%r1,172(%r11)
	srl	%r1,6
	st	%r1,172(%r11)
.L256:
	l	%r1,172(%r11)
	ltr	%r1,%r1
	jne	.L257
	lg	%r1,176(%r11)
	mvi	0(%r1),0
	larl	%r1,s.0
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	ahi	%r1,-1
	llgfr	%r1,%r1
	stgrl	%r1,seed
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f0,%r11
	.cfi_register 11, 16
	larl	%r5,.L264
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgrl	%r1,seed
	msg	%r1,.L265-.L264(%r5)
	aghi	%r1,1
	stgrl	%r1,seed
	lgrl	%r1,seed
	srlg	%r1,%r1,33
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L264:
.L265:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,160(%r11)
	stg	%r1,176(%r11)
	lg	%r1,176(%r11)
	ltgr	%r1,%r1
	jne	.L267
	lg	%r1,184(%r11)
	mvghi	8(%r1),0
	lg	%r1,184(%r11)
	lg	%r2,8(%r1)
	lg	%r1,184(%r11)
	stg	%r2,0(%r1)
	j	.L266
.L267:
	lg	%r1,176(%r11)
	lg	%r2,0(%r1)
	lg	%r1,184(%r11)
	stg	%r2,0(%r1)
	lg	%r1,184(%r11)
	lg	%r2,176(%r11)
	stg	%r2,8(%r1)
	lg	%r1,176(%r11)
	lg	%r2,184(%r11)
	stg	%r2,0(%r1)
	lg	%r1,184(%r11)
	lg	%r1,0(%r1)
	ltgr	%r1,%r1
	je	.L266
	lg	%r1,184(%r11)
	lg	%r1,0(%r1)
	lg	%r2,184(%r11)
	stg	%r2,8(%r1)
.L266:
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	stg	%r1,168(%r11)
	lg	%r1,168(%r11)
	lg	%r1,0(%r1)
	ltgr	%r1,%r1
	je	.L271
	lg	%r1,168(%r11)
	lg	%r1,0(%r1)
	lg	%r2,168(%r11)
	lg	%r2,8(%r2)
	stg	%r2,8(%r1)
.L271:
	lg	%r1,168(%r11)
	lg	%r1,8(%r1)
	ltgr	%r1,%r1
	je	.L273
	lg	%r1,168(%r11)
	lg	%r1,8(%r1)
	lg	%r2,168(%r11)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
.L273:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r10,%r15,80(%r15)
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,192(%r11)
	stg	%r3,184(%r11)
	stg	%r4,176(%r11)
	stg	%r5,168(%r11)
	stg	%r6,160(%r11)
	lg	%r10,168(%r11)
	lgr	%r2,%r10
	aghi	%r2,-1
	stg	%r2,216(%r11)
	lgr	%r1,%r10
	lghi	%r0,0
	srlg	%r2,%r1,61
	sllg	%r12,%r0,3
	ogr	%r12,%r2
	sllg	%r13,%r1,3
	lg	%r1,184(%r11)
	stg	%r1,208(%r11)
	lg	%r1,176(%r11)
	lg	%r1,0(%r1)
	stg	%r1,200(%r11)
	mvghi	224(%r11),0
	j	.L276
.L279:
	lgr	%r1,%r10
	msg	%r1,224(%r11)
	ag	%r1,208(%r11)
	lgr	%r2,%r1
	lg	%r1,160(%r11)
	lgr	%r3,%r2
	lg	%r2,192(%r11)
	basr	%r14,%r1
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L277
	lgr	%r1,%r10
	msg	%r1,224(%r11)
	ag	%r1,208(%r11)
	j	.L278
.L277:
	agsi	224(%r11),1
.L276:
	lg	%r1,224(%r11)
	clg	%r1,200(%r11)
	jl	.L279
	lg	%r1,200(%r11)
	aghik	%r2,%r1,1
	lg	%r1,176(%r11)
	stg	%r2,0(%r1)
	lgr	%r1,%r10
	msg	%r1,200(%r11)
	ag	%r1,208(%r11)
	lg	%r4,168(%r11)
	lg	%r3,192(%r11)
	lgr	%r2,%r1
	brasl	%r14,memcpy@PLT
	lgr	%r1,%r2
.L278:
	lgr	%r2,%r1
	lmg	%r10,%r15,312(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa 15, 160
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
	stmg	%r10,%r15,80(%r15)
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,192(%r11)
	stg	%r3,184(%r11)
	stg	%r4,176(%r11)
	stg	%r5,168(%r11)
	stg	%r6,160(%r11)
	lg	%r10,168(%r11)
	lgr	%r2,%r10
	aghi	%r2,-1
	stg	%r2,216(%r11)
	lgr	%r1,%r10
	lghi	%r0,0
	srlg	%r2,%r1,61
	sllg	%r12,%r0,3
	ogr	%r12,%r2
	sllg	%r13,%r1,3
	lg	%r1,184(%r11)
	stg	%r1,208(%r11)
	lg	%r1,176(%r11)
	lg	%r1,0(%r1)
	stg	%r1,200(%r11)
	mvghi	224(%r11),0
	j	.L282
.L285:
	lgr	%r1,%r10
	msg	%r1,224(%r11)
	ag	%r1,208(%r11)
	lgr	%r2,%r1
	lg	%r1,160(%r11)
	lgr	%r3,%r2
	lg	%r2,192(%r11)
	basr	%r14,%r1
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L283
	lgr	%r1,%r10
	msg	%r1,224(%r11)
	ag	%r1,208(%r11)
	j	.L284
.L283:
	agsi	224(%r11),1
.L282:
	lg	%r1,224(%r11)
	clg	%r1,200(%r11)
	jl	.L285
	lghi	%r1,0
.L284:
	lgr	%r2,%r1
	lmg	%r10,%r15,312(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa 15, 160
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	lpr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	mvhi	172(%r11),0
	mvhi	168(%r11),0
	j	.L291
.L292:
	agsi	160(%r11),1
.L291:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L292
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	chi	%r1,43
	je	.L293
	chi	%r1,45
	jne	.L295
	mvhi	168(%r11),1
.L293:
	agsi	160(%r11),1
	j	.L295
.L296:
	l	%r2,172(%r11)
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r2,%r1
	lg	%r1,160(%r11)
	aghik	%r3,%r1,1
	stg	%r3,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	srk	%r1,%r2,%r1
	st	%r1,172(%r11)
.L295:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L296
	l	%r1,168(%r11)
	ltr	%r1,%r1
	jne	.L297
	l	%r1,172(%r11)
	lcr	%r1,%r1
	j	.L299
.L297:
	l	%r1,172(%r11)
.L299:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,264(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	mvghi	176(%r11),0
	mvhi	172(%r11),0
	j	.L302
.L303:
	agsi	160(%r11),1
.L302:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L303
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	chi	%r1,43
	je	.L304
	chi	%r1,45
	jne	.L306
	mvhi	172(%r11),1
.L304:
	agsi	160(%r11),1
	j	.L306
.L307:
	lg	%r2,176(%r11)
	lgr	%r1,%r2
	sllg	%r1,%r1,2
	agr	%r1,%r2
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lg	%r1,160(%r11)
	aghik	%r3,%r1,1
	stg	%r3,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	lgfr	%r1,%r1
	sgrk	%r1,%r2,%r1
	stg	%r1,176(%r11)
.L306:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L307
	l	%r1,172(%r11)
	ltr	%r1,%r1
	jne	.L308
	lg	%r1,176(%r11)
	lcgr	%r1,%r1
	j	.L310
.L308:
	lg	%r1,176(%r11)
.L310:
	lgr	%r2,%r1
	lmg	%r11,%r15,272(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	mvghi	176(%r11),0
	mvhi	172(%r11),0
	j	.L313
.L314:
	agsi	160(%r11),1
.L313:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	brasl	%r14,isspace@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L314
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	chi	%r1,43
	je	.L315
	chi	%r1,45
	jne	.L317
	mvhi	172(%r11),1
.L315:
	agsi	160(%r11),1
	j	.L317
.L318:
	lg	%r2,176(%r11)
	lgr	%r1,%r2
	sllg	%r1,%r1,2
	agr	%r1,%r2
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lg	%r1,160(%r11)
	aghik	%r3,%r1,1
	stg	%r3,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	lgfr	%r1,%r1
	sgrk	%r1,%r2,%r1
	stg	%r1,176(%r11)
.L317:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L318
	l	%r1,172(%r11)
	ltr	%r1,%r1
	jne	.L319
	lg	%r1,176(%r11)
	lcgr	%r1,%r1
	j	.L321
.L319:
	lg	%r1,176(%r11)
.L321:
	lgr	%r2,%r1
	lmg	%r11,%r15,272(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,192(%r11)
	stg	%r3,184(%r11)
	stg	%r4,176(%r11)
	stg	%r5,168(%r11)
	stg	%r6,160(%r11)
	j	.L324
.L329:
	lg	%r1,176(%r11)
	srlg	%r1,%r1,1
	msg	%r1,168(%r11)
	ag	%r1,184(%r11)
	stg	%r1,208(%r11)
	lg	%r1,160(%r11)
	lg	%r3,208(%r11)
	lg	%r2,192(%r11)
	basr	%r14,%r1
	lgr	%r1,%r2
	st	%r1,204(%r11)
	l	%r1,204(%r11)
	ltr	%r1,%r1
	jhe	.L325
	lg	%r1,176(%r11)
	srlg	%r1,%r1,1
	stg	%r1,176(%r11)
	j	.L324
.L325:
	l	%r1,204(%r11)
	ltr	%r1,%r1
	jle	.L327
	lg	%r1,208(%r11)
	ag	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,176(%r11)
	srlg	%r2,%r1,1
	lg	%r1,176(%r11)
	sgr	%r1,%r2
	aghi	%r1,-1
	stg	%r1,176(%r11)
	j	.L324
.L327:
	lg	%r1,208(%r11)
	j	.L328
.L324:
	lg	%r1,176(%r11)
	ltgr	%r1,%r1
	jne	.L329
	lghi	%r1,0
.L328:
	lgr	%r2,%r1
	lmg	%r11,%r15,304(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,192(%r11)
	stg	%r3,184(%r11)
	stg	%r4,176(%r11)
	stg	%r5,168(%r11)
	stg	%r6,160(%r11)
	lg	%r1,184(%r11)
	stg	%r1,224(%r11)
	lg	%r1,176(%r11)
	st	%r1,220(%r11)
	j	.L332
.L336:
	l	%r1,220(%r11)
	sra	%r1,1
	lgfr	%r1,%r1
	msg	%r1,168(%r11)
	ag	%r1,224(%r11)
	stg	%r1,208(%r11)
	lg	%r1,160(%r11)
	lg	%r4,392(%r11)
	lg	%r3,208(%r11)
	lg	%r2,192(%r11)
	basr	%r14,%r1
	lgr	%r1,%r2
	st	%r1,204(%r11)
	l	%r1,204(%r11)
	ltr	%r1,%r1
	jne	.L333
	lg	%r1,208(%r11)
	j	.L334
.L333:
	l	%r1,204(%r11)
	ltr	%r1,%r1
	jle	.L335
	lg	%r1,208(%r11)
	ag	%r1,168(%r11)
	stg	%r1,224(%r11)
	asi	220(%r11),-1
.L335:
	l	%r1,220(%r11)
	sra	%r1,1
	st	%r1,220(%r11)
.L332:
	l	%r1,220(%r11)
	ltr	%r1,%r1
	jne	.L336
	lghi	%r1,0
.L334:
	lgr	%r2,%r1
	lmg	%r11,%r15,320(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	lgr	%r2,%r4
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	lgf	%r1,164(%r11)
	lgf	%r4,160(%r11)
	lgr	%r3,%r1
	dsgr	%r2,%r4
	lgr	%r1,%r3
	lr	%r4,%r1
	lgf	%r1,164(%r11)
	lgf	%r5,160(%r11)
	lgr	%r3,%r1
	dsgr	%r2,%r5
	lgr	%r1,%r2
	lr	%r2,%r1
	lg	%r1,168(%r11)
	st	%r4,0(%r1)
	lg	%r1,168(%r11)
	st	%r2,4(%r1)
	lg	%r2,168(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	lpgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,168(%r11)
	lgr	%r3,%r1
	dsg	%r2,160(%r11)
	lgr	%r1,%r3
	lgr	%r4,%r1
	lg	%r1,168(%r11)
	lgr	%r3,%r1
	dsg	%r2,160(%r11)
	lgr	%r1,%r2
	lgr	%r2,%r1
	lg	%r1,176(%r11)
	stg	%r4,0(%r1)
	lg	%r1,176(%r11)
	stg	%r2,8(%r1)
	lg	%r2,176(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	lpgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,168(%r11)
	lgr	%r3,%r1
	dsg	%r2,160(%r11)
	lgr	%r1,%r3
	lgr	%r4,%r1
	lg	%r1,168(%r11)
	lgr	%r3,%r1
	dsg	%r2,160(%r11)
	lgr	%r1,%r2
	lgr	%r2,%r1
	lg	%r1,176(%r11)
	stg	%r4,0(%r1)
	lg	%r1,176(%r11)
	stg	%r2,8(%r1)
	lg	%r2,176(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	lpgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,168(%r11)
	lgr	%r3,%r1
	dsg	%r2,160(%r11)
	lgr	%r1,%r3
	lgr	%r4,%r1
	lg	%r1,168(%r11)
	lgr	%r3,%r1
	dsg	%r2,160(%r11)
	lgr	%r1,%r2
	lgr	%r2,%r1
	lg	%r1,176(%r11)
	stg	%r4,0(%r1)
	lg	%r1,176(%r11)
	stg	%r2,8(%r1)
	lg	%r2,176(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	j	.L360
.L362:
	agsi	168(%r11),4
.L360:
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L361
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	l	%r2,164(%r11)
	cr	%r2,%r1
	jne	.L362
.L361:
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L363
	lg	%r1,168(%r11)
	j	.L365
.L363:
	lghi	%r1,0
.L365:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	j	.L368
.L370:
	agsi	168(%r11),4
	agsi	160(%r11),4
.L368:
	lg	%r1,168(%r11)
	l	%r2,0(%r1)
	lg	%r1,160(%r11)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L369
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L369
	lg	%r1,160(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L370
.L369:
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	lg	%r2,160(%r11)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L371
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	lg	%r2,160(%r11)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L372
	lhi	%r2,0
.L372:
	llcr	%r1,%r2
	j	.L374
.L371:
	lhi	%r1,-1
.L374:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,176(%r11)
	nopr	%r0
.L377:
	lg	%r2,160(%r11)
	aghik	%r1,%r2,4
	stg	%r1,160(%r11)
	lg	%r1,168(%r11)
	aghik	%r3,%r1,4
	stg	%r3,168(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L377
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	stg	%r1,168(%r11)
	j	.L381
.L382:
	agsi	160(%r11),4
.L381:
	lg	%r1,160(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L382
	lg	%r1,160(%r11)
	sg	%r1,168(%r11)
	srag	%r1,%r1,2
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	j	.L386
.L388:
	agsi	160(%r11),-1
	agsi	176(%r11),4
	agsi	168(%r11),4
.L386:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L387
	lg	%r1,176(%r11)
	l	%r2,0(%r1)
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L387
	lg	%r1,176(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L387
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L388
.L387:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L389
	lg	%r1,176(%r11)
	l	%r1,0(%r1)
	lg	%r2,168(%r11)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L390
	lg	%r1,176(%r11)
	l	%r1,0(%r1)
	lg	%r2,168(%r11)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L391
	lhi	%r2,0
.L391:
	llcr	%r1,%r2
	j	.L394
.L390:
	lhi	%r1,-1
	j	.L394
.L389:
	lhi	%r1,0
.L394:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	lgr	%r1,%r3
	stg	%r4,160(%r11)
	st	%r1,172(%r11)
	j	.L397
.L399:
	agsi	160(%r11),-1
	agsi	176(%r11),4
.L397:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L398
	lg	%r1,176(%r11)
	l	%r1,0(%r1)
	l	%r2,172(%r11)
	cr	%r2,%r1
	jne	.L399
.L398:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L400
	lg	%r1,176(%r11)
	j	.L402
.L400:
	lghi	%r1,0
.L402:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	j	.L405
.L407:
	agsi	160(%r11),-1
	agsi	176(%r11),4
	agsi	168(%r11),4
.L405:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L406
	lg	%r1,176(%r11)
	l	%r2,0(%r1)
	lg	%r1,168(%r11)
	l	%r1,0(%r1)
	cr	%r2,%r1
	je	.L407
.L406:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L408
	lg	%r1,176(%r11)
	l	%r1,0(%r1)
	lg	%r2,168(%r11)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L409
	lg	%r1,176(%r11)
	l	%r1,0(%r1)
	lg	%r2,168(%r11)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L410
	lhi	%r2,0
.L410:
	llcr	%r1,%r2
	j	.L413
.L409:
	lhi	%r1,-1
	j	.L413
.L408:
	lhi	%r1,0
.L413:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,184(%r11)
	j	.L416
.L417:
	lg	%r2,168(%r11)
	aghik	%r1,%r2,4
	stg	%r1,168(%r11)
	lg	%r1,176(%r11)
	aghik	%r3,%r1,4
	stg	%r3,176(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L416:
	lg	%r1,160(%r11)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r11)
	ltgr	%r1,%r1
	jne	.L417
	lg	%r1,184(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,184(%r11)
	lg	%r1,176(%r11)
	cg	%r1,168(%r11)
	jne	.L421
	lg	%r1,176(%r11)
	j	.L422
.L421:
	lg	%r1,176(%r11)
	lg	%r2,168(%r11)
	sgr	%r1,%r2
	lg	%r2,160(%r11)
	sllg	%r2,%r2,2
	clgr	%r1,%r2
	jhe	.L427
	j	.L424
.L425:
	lg	%r1,160(%r11)
	sllg	%r1,%r1,2
	ag	%r1,168(%r11)
	lgr	%r2,%r1
	lg	%r1,160(%r11)
	sllg	%r1,%r1,2
	ag	%r1,176(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L424:
	lg	%r1,160(%r11)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r11)
	ltgr	%r1,%r1
	jne	.L425
	j	.L426
.L428:
	lg	%r2,168(%r11)
	aghik	%r1,%r2,4
	stg	%r1,168(%r11)
	lg	%r1,176(%r11)
	aghik	%r3,%r1,4
	stg	%r3,176(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L427:
	lg	%r1,160(%r11)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r11)
	ltgr	%r1,%r1
	jne	.L428
.L426:
	lg	%r1,184(%r11)
.L422:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	lgr	%r1,%r3
	stg	%r4,160(%r11)
	st	%r1,172(%r11)
	lg	%r1,176(%r11)
	stg	%r1,184(%r11)
	j	.L431
.L432:
	lg	%r1,176(%r11)
	aghik	%r2,%r1,4
	stg	%r2,176(%r11)
	l	%r2,172(%r11)
	st	%r2,0(%r1)
.L431:
	lg	%r1,160(%r11)
	aghik	%r2,%r1,-1
	stg	%r2,160(%r11)
	ltgr	%r1,%r1
	jne	.L432
	lg	%r1,184(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,192(%r11)
	clg	%r1,184(%r11)
	jhe	.L436
	lg	%r1,192(%r11)
	ag	%r1,160(%r11)
	stg	%r1,192(%r11)
	lg	%r1,184(%r11)
	ag	%r1,160(%r11)
	stg	%r1,184(%r11)
	j	.L437
.L438:
	agsi	192(%r11),-1
	agsi	184(%r11),-1
	lg	%r1,192(%r11)
	ic	%r2,0(%r1)
	lg	%r1,184(%r11)
	stc	%r2,0(%r1)
	agsi	160(%r11),-1
.L437:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L438
	j	.L442
.L436:
	lg	%r1,192(%r11)
	cg	%r1,184(%r11)
	je	.L442
	j	.L440
.L441:
	lg	%r2,192(%r11)
	aghik	%r1,%r2,1
	stg	%r1,192(%r11)
	lg	%r1,184(%r11)
	aghik	%r3,%r1,1
	stg	%r3,184(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	agsi	160(%r11),-1
.L440:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L441
.L442:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	lg	%r2,168(%r11)
	rllg	%r1,%r2,0(%r1)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	lcr	%r1,%r1
	lg	%r2,168(%r11)
	rllg	%r1,%r2,0(%r1)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	l	%r1,160(%r11)
	l	%r2,164(%r11)
	rll	%r1,%r2,0(%r1)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	lhi	%r1,32
	s	%r1,160(%r11)
	l	%r2,164(%r11)
	rll	%r1,%r2,0(%r1)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	lg	%r2,168(%r11)
	sllg	%r3,%r2,0(%r1)
	l	%r1,164(%r11)
	lhi	%r2,64
	srk	%r1,%r2,%r1
	lg	%r2,168(%r11)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	lg	%r2,168(%r11)
	srlg	%r3,%r2,0(%r1)
	l	%r1,164(%r11)
	lhi	%r2,64
	srk	%r1,%r2,%r1
	lg	%r2,168(%r11)
	sllg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	sth	%r1,166(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	llh	%r2,166(%r11)
	l	%r1,160(%r11)
	sllk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llh	%r2,166(%r11)
	lhi	%r1,16
	s	%r1,160(%r11)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	sth	%r1,166(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	llh	%r2,166(%r11)
	l	%r1,160(%r11)
	srlk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llh	%r2,166(%r11)
	lhi	%r1,16
	s	%r1,160(%r11)
	sllk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	stc	%r1,167(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	llc	%r2,167(%r11)
	l	%r1,160(%r11)
	sllk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llc	%r2,167(%r11)
	lhi	%r1,8
	s	%r1,160(%r11)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llgcr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	stc	%r1,167(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	llc	%r2,167(%r11)
	l	%r1,160(%r11)
	srlk	%r1,%r2,0(%r1)
	lr	%r3,%r1
	llc	%r2,167(%r11)
	lhi	%r1,8
	s	%r1,160(%r11)
	sllk	%r1,%r2,0(%r1)
	or	%r1,%r3
	llgcr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	sth	%r1,166(%r11)
	mvghi	168(%r11),255
	llgh	%r2,166(%r11)
	lg	%r1,168(%r11)
	sllg	%r1,%r1,8
	ngr	%r1,%r2
	srlg	%r1,%r1,8
	lr	%r2,%r1
	lg	%r1,168(%r11)
	lr	%r3,%r1
	lh	%r1,166(%r11)
	nr	%r1,%r3
	sll	%r1,8
	or	%r1,%r2
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	mvghi	168(%r11),255
	llgf	%r2,164(%r11)
	lg	%r1,168(%r11)
	sllg	%r1,%r1,24
	ngr	%r1,%r2
	srlg	%r1,%r1,24
	lr	%r3,%r1
	llgf	%r2,164(%r11)
	lg	%r1,168(%r11)
	sllg	%r1,%r1,16
	ngr	%r1,%r2
	srlg	%r1,%r1,8
	ork	%r2,%r3,%r1
	lg	%r1,168(%r11)
	sll	%r1,8
	n	%r1,164(%r11)
	sll	%r1,8
	or	%r2,%r1
	lg	%r1,168(%r11)
	n	%r1,164(%r11)
	sll	%r1,24
	or	%r1,%r2
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	mvghi	168(%r11),255
	lg	%r1,168(%r11)
	sllg	%r1,%r1,56
	ng	%r1,160(%r11)
	srlg	%r2,%r1,56
	lg	%r1,168(%r11)
	sllg	%r1,%r1,48
	ng	%r1,160(%r11)
	srlg	%r1,%r1,40
	ogr	%r2,%r1
	lg	%r1,168(%r11)
	sllg	%r1,%r1,40
	ng	%r1,160(%r11)
	srlg	%r1,%r1,24
	ogr	%r2,%r1
	lg	%r1,168(%r11)
	sllg	%r1,%r1,32
	ng	%r1,160(%r11)
	srlg	%r1,%r1,8
	ogr	%r2,%r1
	lg	%r1,168(%r11)
	sllg	%r1,%r1,24
	ng	%r1,160(%r11)
	sllg	%r1,%r1,8
	ogr	%r2,%r1
	lg	%r1,168(%r11)
	sllg	%r1,%r1,16
	ng	%r1,160(%r11)
	sllg	%r1,%r1,24
	ogr	%r2,%r1
	lg	%r1,168(%r11)
	sllg	%r1,%r1,8
	ng	%r1,160(%r11)
	sllg	%r1,%r1,40
	ogr	%r2,%r1
	lg	%r1,160(%r11)
	ng	%r1,168(%r11)
	sllg	%r1,%r1,56
	ogr	%r1,%r2
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	mvhi	172(%r11),0
	j	.L484
.L487:
	l	%r2,164(%r11)
	l	%r1,172(%r11)
	srlk	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L485
	l	%r1,172(%r11)
	ahi	%r1,1
	j	.L486
.L485:
	asi	172(%r11),1
.L484:
	l	%r1,172(%r11)
	clfi	%r1,31
	jle	.L487
	lhi	%r1,0
.L486:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	ltgr	%r1,%r1
	jne	.L490
	lhi	%r1,0
	j	.L491
.L490:
	lhi	%r12,1
	j	.L492
.L493:
	sra	%r1,1
	lgfr	%r1,%r1
	ahi	%r12,1
.L492:
	risbg	%r2,%r1,63,128+63,0
	ltr	%r2,%r2
	je	.L493
	lr	%r1,%r12
.L491:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L502
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,164(%r11)
	le	%f0,164(%r11)
	keb	%f0,.L503-.L502(%r5)
	jl	.L496
	le	%f0,164(%r11)
	keb	%f0,.L504-.L502(%r5)
	jnh	.L501
.L496:
	lhi	%r1,1
	j	.L500
.L501:
	lhi	%r1,0
.L500:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L502:
.L504:
	.long	2139095039
.L503:
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L512
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,160(%r11)
	ld	%f0,160(%r11)
	kdb	%f0,.L513-.L512(%r5)
	jl	.L506
	ld	%f0,160(%r11)
	kdb	%f0,.L514-.L512(%r5)
	jnh	.L511
.L506:
	lhi	%r1,1
	j	.L510
.L511:
	lhi	%r1,0
.L510:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L512:
.L514:
	.long	2146435071
	.long	-1
.L513:
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
	ldgr	%f5,%r11
	.cfi_register 11, 22
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	larl	%r5,.L522
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,160(%r11)
	std	%f2,168(%r11)
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	ld	%f4,.L523-.L522(%r5)
	ld	%f6,.L523-.L522+8(%r5)
	kxbr	%f0,%f4
	jl	.L516
	ld	%f0,160(%r11)
	ld	%f2,168(%r11)
	ld	%f4,.L524-.L522(%r5)
	ld	%f6,.L524-.L522+8(%r5)
	kxbr	%f0,%f4
	jnh	.L521
.L516:
	lhi	%r1,1
	j	.L520
.L521:
	lhi	%r1,0
.L520:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f3
	.cfi_restore 12
	lgdr	%r11,%f5
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L522:
.L524:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L523:
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	cdfbr	%f0,%r1
	lxdbr	%f0,%f0
	lg	%r1,168(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	nopr	%r0
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,172(%r11)
	lgr	%r1,%r2
	st	%r1,168(%r11)
	le	%f0,172(%r11)
	ceb	%f0,172(%r11)
	jo	.L528
	le	%f0,172(%r11)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,172(%r11)
	cebr	%f0,%f2
	je	.L528
	l	%r1,168(%r11)
	ltr	%r1,%r1
	jhe	.L529
	lrl	%r1,.LC7
	j	.L530
.L529:
	lrl	%r1,.LC8
.L530:
	st	%r1,180(%r11)
.L533:
	l	%r1,168(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L531
	le	%f0,172(%r11)
	meeb	%f0,180(%r11)
	ste	%f0,172(%r11)
.L531:
	l	%r1,168(%r11)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,168(%r11)
	l	%r1,168(%r11)
	ltr	%r1,%r1
	je	.L535
	le	%f0,180(%r11)
	meeb	%f0,180(%r11)
	ste	%f0,180(%r11)
	j	.L533
.L535:
	nopr	%r0
.L528:
	l	%r1,172(%r11)
	st	%r1,164(%r11)
	le	%f0,164(%r11)
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	lgr	%r1,%r2
	st	%r1,164(%r11)
	ld	%f0,168(%r11)
	cdb	%f0,168(%r11)
	jo	.L538
	ld	%f0,168(%r11)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,168(%r11)
	cdbr	%f0,%f2
	je	.L538
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jhe	.L539
	lgrl	%r1,.LC9
	j	.L540
.L539:
	lgrl	%r1,.LC10
.L540:
	stg	%r1,176(%r11)
.L543:
	l	%r1,164(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L541
	ld	%f0,168(%r11)
	mdb	%f0,176(%r11)
	std	%f0,168(%r11)
.L541:
	l	%r1,164(%r11)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	ltr	%r1,%r1
	je	.L545
	ld	%f0,176(%r11)
	mdb	%f0,176(%r11)
	std	%f0,176(%r11)
	j	.L543
.L545:
	nopr	%r0
.L538:
	lg	%r1,168(%r11)
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f5,%r11
	.cfi_register 11, 22
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	larl	%r5,.L556
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,184(%r11)
	lgr	%r12,%r3
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,168(%r11)
	std	%f2,176(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	ld	%f0,168(%r11)
	ld	%f2,176(%r11)
	ld	%f4,168(%r11)
	ld	%f6,176(%r11)
	cxbr	%f0,%f4
	jo	.L548
	ld	%f0,168(%r11)
	ld	%f2,176(%r11)
	axbr	%f0,%f0
	ld	%f4,168(%r11)
	ld	%f6,176(%r11)
	cxbr	%f4,%f0
	je	.L548
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jhe	.L549
	lmg	%r2,%r3,.L557-.L556(%r5)
	j	.L550
.L549:
	lmg	%r2,%r3,.L558-.L556(%r5)
.L550:
	stmg	%r2,%r3,192(%r11)
.L553:
	l	%r1,164(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L551
	ld	%f0,168(%r11)
	ld	%f2,176(%r11)
	ld	%f4,192(%r11)
	ld	%f6,200(%r11)
	mxbr	%f0,%f4
	std	%f0,168(%r11)
	std	%f2,176(%r11)
.L551:
	l	%r1,164(%r11)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	ltr	%r1,%r1
	je	.L555
	ld	%f0,192(%r11)
	ld	%f2,200(%r11)
	ld	%f4,192(%r11)
	ld	%f6,200(%r11)
	mxbr	%f0,%f4
	std	%f0,192(%r11)
	std	%f2,200(%r11)
	j	.L553
.L555:
	nopr	%r0
.L548:
	lg	%r1,184(%r11)
	ld	%f0,168(%r11)
	ld	%f2,176(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	lg	%r2,184(%r11)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f3
	.cfi_restore 12
	lgdr	%r11,%f5
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L556:
.L558:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L557:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,192(%r11)
	lg	%r1,176(%r11)
	stg	%r1,184(%r11)
	j	.L560
.L561:
	lg	%r1,192(%r11)
	aghik	%r2,%r1,1
	stg	%r2,192(%r11)
	ic	%r3,0(%r1)
	lg	%r1,184(%r11)
	aghik	%r2,%r1,1
	stg	%r2,184(%r11)
	ic	%r2,0(%r1)
	xr	%r2,%r3
	stc	%r2,0(%r1)
	agsi	160(%r11),-1
.L560:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L561
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r2,176(%r11)
	brasl	%r14,strlen@PLT
	lgr	%r1,%r2
	ag	%r1,176(%r11)
	stg	%r1,184(%r11)
	j	.L565
.L567:
	agsi	168(%r11),1
	agsi	184(%r11),1
	agsi	160(%r11),-1
.L565:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L566
	lg	%r1,168(%r11)
	ic	%r2,0(%r1)
	lg	%r1,184(%r11)
	stc	%r2,0(%r1)
	lg	%r1,184(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L567
.L566:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L568
	lg	%r1,184(%r11)
	mvi	0(%r1),0
.L568:
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lmg	%r11,%r15,280(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	mvghi	176(%r11),0
	j	.L572
.L577:
	nopr	%r0
	agsi	176(%r11),1
.L572:
	lg	%r1,176(%r11)
	clg	%r1,160(%r11)
	jhe	.L573
	lg	%r1,168(%r11)
	ag	%r1,176(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L577
.L573:
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	j	.L580
.L584:
	lg	%r1,160(%r11)
	stg	%r1,176(%r11)
	j	.L581
.L583:
	lg	%r1,176(%r11)
	aghik	%r2,%r1,1
	stg	%r2,176(%r11)
	ic	%r2,0(%r1)
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L581
	lg	%r1,168(%r11)
	j	.L582
.L581:
	lg	%r1,176(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L583
	agsi	168(%r11),1
.L580:
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L584
	lghi	%r1,0
.L582:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r2,164(%r11)
	mvghi	168(%r11),0
.L588:
	ic	%r2,0(%r1)
	llcr	%r2,%r2
	l	%r3,164(%r11)
	cr	%r3,%r2
	jne	.L587
	stg	%r1,168(%r11)
.L587:
	lgr	%r2,%r1
	aghik	%r1,%r2,1
	ic	%r2,0(%r2)
	llcr	%r2,%r2
	ltr	%r2,%r2
	jne	.L588
	lg	%r1,168(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r2,160(%r11)
	brasl	%r14,strlen@PLT
	stg	%r2,176(%r11)
	lg	%r1,176(%r11)
	ltgr	%r1,%r1
	jne	.L594
	lg	%r1,168(%r11)
	j	.L593
.L596:
	lg	%r4,176(%r11)
	lg	%r3,160(%r11)
	lg	%r2,184(%r11)
	brasl	%r14,strncmp@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L595
	lg	%r1,184(%r11)
	j	.L593
.L595:
	agsi	184(%r11),1
.L594:
	lg	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	lgfr	%r1,%r1
	lgr	%r3,%r1
	lg	%r2,184(%r11)
	brasl	%r14,strchr@PLT
	stg	%r2,184(%r11)
	lg	%r1,184(%r11)
	ltgr	%r1,%r1
	jne	.L596
	lghi	%r1,0
.L593:
	lgr	%r2,%r1
	lmg	%r11,%r15,280(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	std	%f2,160(%r11)
	ld	%f0,168(%r11)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L599
	ld	%f0,160(%r11)
	lzdr	%f2
	kdbr	%f0,%f2
	jh	.L601
.L599:
	ld	%f0,168(%r11)
	lzdr	%f2
	kdbr	%f0,%f2
	jnh	.L602
	ld	%f0,160(%r11)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L602
.L601:
	ld	%f0,168(%r11)
	lcdbr	%f0,%f0
	j	.L605
.L602:
	ld	%f0,168(%r11)
.L605:
	lgdr	%r1,%f0
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,184(%r11)
	stg	%r3,176(%r11)
	stg	%r4,168(%r11)
	stg	%r5,160(%r11)
	lg	%r1,176(%r11)
	sg	%r1,160(%r11)
	ag	%r1,184(%r11)
	stg	%r1,192(%r11)
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L610
	lg	%r1,184(%r11)
	j	.L611
.L610:
	lg	%r2,176(%r11)
	lg	%r1,160(%r11)
	clgr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	llgcr	%r1,%r1
	ltgr	%r1,%r1
	je	.L612
	lghi	%r1,0
	j	.L611
.L612:
	lg	%r1,184(%r11)
	stg	%r1,200(%r11)
	j	.L613
.L615:
	lg	%r1,200(%r11)
	ic	%r2,0(%r1)
	lg	%r1,168(%r11)
	ic	%r1,0(%r1)
	llcr	%r2,%r2
	llcr	%r1,%r1
	cr	%r2,%r1
	jne	.L614
	lg	%r1,200(%r11)
	aghi	%r1,1
	lg	%r2,168(%r11)
	aghi	%r2,1
	lg	%r3,160(%r11)
	aghi	%r3,-1
	lgr	%r4,%r3
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,memcmp@PLT
	lgr	%r1,%r2
	ltr	%r1,%r1
	jne	.L614
	lg	%r1,200(%r11)
	j	.L611
.L614:
	agsi	200(%r11),1
.L613:
	lg	%r1,200(%r11)
	clg	%r1,192(%r11)
	jle	.L615
	lghi	%r1,0
.L611:
	lgr	%r2,%r1
	lmg	%r11,%r15,296(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	lg	%r4,160(%r11)
	lg	%r3,168(%r11)
	lg	%r2,176(%r11)
	brasl	%r14,memcpy@PLT
	lgr	%r1,%r2
	ag	%r1,160(%r11)
	lgr	%r2,%r1
	lmg	%r11,%r15,272(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	larl	%r5,.L637
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	stg	%r2,160(%r11)
	mvhi	176(%r11),0
	mvhi	180(%r11),0
	ld	%f0,168(%r11)
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L621
	ld	%f0,168(%r11)
	lcdbr	%f0,%f0
	std	%f0,168(%r11)
	mvhi	180(%r11),1
.L621:
	ld	%f0,168(%r11)
	kdb	%f0,.L638-.L637(%r5)
	jnhe	.L636
	j	.L625
.L626:
	asi	176(%r11),1
	ld	%f0,168(%r11)
	ddb	%f0,.L639-.L637(%r5)
	std	%f0,168(%r11)
.L625:
	ld	%f0,168(%r11)
	kdb	%f0,.L638-.L637(%r5)
	jhe	.L626
	j	.L627
.L636:
	ld	%f0,168(%r11)
	kdb	%f0,.L640-.L637(%r5)
	jnl	.L627
	ld	%f0,168(%r11)
	lzdr	%f2
	cdbr	%f0,%f2
	je	.L627
	j	.L629
.L630:
	asi	176(%r11),-1
	ld	%f0,168(%r11)
	adbr	%f0,%f0
	std	%f0,168(%r11)
.L629:
	ld	%f0,168(%r11)
	kdb	%f0,.L640-.L637(%r5)
	jl	.L630
.L627:
	lg	%r1,160(%r11)
	l	%r2,176(%r11)
	st	%r2,0(%r1)
	l	%r1,180(%r11)
	ltr	%r1,%r1
	je	.L631
	ld	%f0,168(%r11)
	lcdbr	%f0,%f0
	std	%f0,168(%r11)
.L631:
	lg	%r1,168(%r11)
	ldgr	%f0,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L637:
.L640:
	.long	1071644672
	.long	0
.L639:
	.long	1073741824
	.long	0
.L638:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	mvghi	184(%r11),0
	lg	%r1,168(%r11)
	stg	%r1,176(%r11)
	j	.L642
.L644:
	lg	%r1,176(%r11)
	risbg	%r1,%r1,63,128+63,0
	ltgr	%r1,%r1
	je	.L643
	lg	%r1,184(%r11)
	ag	%r1,160(%r11)
	stg	%r1,184(%r11)
.L643:
	lg	%r1,160(%r11)
	sllg	%r1,%r1,1
	stg	%r1,160(%r11)
	lg	%r1,176(%r11)
	srlg	%r1,%r1,1
	stg	%r1,176(%r11)
.L642:
	lg	%r1,176(%r11)
	ltgr	%r1,%r1
	jne	.L644
	lg	%r1,184(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	stg	%r4,160(%r11)
	st	%r1,172(%r11)
	lr	%r1,%r2
	st	%r1,168(%r11)
	mvhi	180(%r11),1
	mvhi	176(%r11),0
	j	.L648
.L650:
	l	%r1,168(%r11)
	sll	%r1,1
	st	%r1,168(%r11)
	l	%r1,180(%r11)
	sll	%r1,1
	st	%r1,180(%r11)
.L648:
	l	%r1,168(%r11)
	cl	%r1,172(%r11)
	jhe	.L651
	l	%r1,180(%r11)
	ltr	%r1,%r1
	je	.L651
	l	%r1,168(%r11)
	ltr	%r1,%r1
	jhe	.L650
	j	.L651
.L653:
	l	%r1,172(%r11)
	cl	%r1,168(%r11)
	jl	.L652
	l	%r1,172(%r11)
	s	%r1,168(%r11)
	st	%r1,172(%r11)
	oc	176(4,%r11),180(%r11)
.L652:
	l	%r1,180(%r11)
	srl	%r1,1
	st	%r1,180(%r11)
	l	%r1,168(%r11)
	srl	%r1,1
	st	%r1,168(%r11)
.L651:
	l	%r1,180(%r11)
	ltr	%r1,%r1
	jne	.L653
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	je	.L654
	l	%r1,172(%r11)
	j	.L655
.L654:
	l	%r1,176(%r11)
.L655:
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	stc	%r1,167(%r11)
	llc	%r1,167(%r11)
	ltr	%r1,%r1
	jne	.L658
	lhi	%r1,7
	j	.L659
.L658:
	llc	%r1,167(%r11)
	sll	%r1,8
	llgfr	%r1,%r1
	flogr	%r2,%r1
	lgr	%r1,%r2
	aghi	%r1,-32
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	ahi	%r1,-1
.L659:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jhe	.L662
	lg	%r1,160(%r11)
	lghi	%r2,-1
	xgr	%r1,%r2
	stg	%r1,160(%r11)
.L662:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jne	.L663
	lhi	%r1,63
	j	.L664
.L663:
	lg	%r1,160(%r11)
	flogr	%r2,%r1
	lgr	%r1,%r2
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	ahi	%r1,-1
.L664:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	mvhi	172(%r11),0
	j	.L667
.L669:
	l	%r1,164(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L668
	l	%r1,172(%r11)
	a	%r1,160(%r11)
	st	%r1,172(%r11)
.L668:
	l	%r1,164(%r11)
	srl	%r1,1
	st	%r1,164(%r11)
	l	%r1,160(%r11)
	sll	%r1,1
	st	%r1,160(%r11)
.L667:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L669
	l	%r1,172(%r11)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	srl	%r1,3
	st	%r1,204(%r11)
	l	%r1,164(%r11)
	nill	%r1,65528
	st	%r1,208(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,192(%r11)
	clg	%r1,184(%r11)
	jl	.L673
	llgf	%r1,164(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	lg	%r1,192(%r11)
	clgr	%r1,%r2
	jle	.L680
.L673:
	mvhi	212(%r11),0
	j	.L675
.L676:
	llgf	%r1,212(%r11)
	sllg	%r1,%r1,3
	ag	%r1,168(%r11)
	lgr	%r2,%r1
	llgf	%r1,212(%r11)
	sllg	%r1,%r1,3
	ag	%r1,176(%r11)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
	asi	212(%r11),1
.L675:
	l	%r1,212(%r11)
	cl	%r1,204(%r11)
	jl	.L676
	j	.L677
.L678:
	llgf	%r1,208(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	llgf	%r1,208(%r11)
	ag	%r1,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	asi	208(%r11),1
.L677:
	l	%r1,164(%r11)
	cl	%r1,208(%r11)
	jh	.L678
	j	.L679
.L681:
	llgf	%r1,164(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	llgf	%r1,164(%r11)
	ag	%r1,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L680:
	l	%r1,164(%r11)
	ahik	%r2,%r1,-1
	st	%r2,164(%r11)
	ltr	%r1,%r1
	jne	.L681
	nopr	%r0
.L679:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	srl	%r1,1
	st	%r1,200(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,192(%r11)
	clg	%r1,184(%r11)
	jl	.L684
	llgf	%r1,164(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	lg	%r1,192(%r11)
	clgr	%r1,%r2
	jle	.L690
.L684:
	mvhi	204(%r11),0
	j	.L686
.L687:
	llgf	%r1,204(%r11)
	sllg	%r1,%r1,1
	ag	%r1,168(%r11)
	lgr	%r2,%r1
	llgf	%r1,204(%r11)
	sllg	%r1,%r1,1
	ag	%r1,176(%r11)
	lh	%r2,0(%r2)
	sth	%r2,0(%r1)
	asi	204(%r11),1
.L686:
	l	%r1,204(%r11)
	cl	%r1,200(%r11)
	jl	.L687
	l	%r1,164(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L689
	l	%r1,164(%r11)
	ahi	%r1,-1
	llgfr	%r1,%r1
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	l	%r1,164(%r11)
	ahi	%r1,-1
	llgfr	%r1,%r1
	ag	%r1,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	j	.L689
.L691:
	llgf	%r1,164(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	llgf	%r1,164(%r11)
	ag	%r1,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L690:
	l	%r1,164(%r11)
	ahik	%r2,%r1,-1
	st	%r2,164(%r11)
	ltr	%r1,%r1
	jne	.L691
	nopr	%r0
.L689:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	srl	%r1,2
	st	%r1,204(%r11)
	l	%r1,164(%r11)
	nill	%r1,65532
	st	%r1,208(%r11)
	lg	%r1,176(%r11)
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,192(%r11)
	clg	%r1,184(%r11)
	jl	.L694
	llgf	%r1,164(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	lg	%r1,192(%r11)
	clgr	%r1,%r2
	jle	.L701
.L694:
	mvhi	212(%r11),0
	j	.L696
.L697:
	llgf	%r1,212(%r11)
	sllg	%r1,%r1,2
	ag	%r1,168(%r11)
	lgr	%r2,%r1
	llgf	%r1,212(%r11)
	sllg	%r1,%r1,2
	ag	%r1,176(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	asi	212(%r11),1
.L696:
	l	%r1,212(%r11)
	cl	%r1,204(%r11)
	jl	.L697
	j	.L698
.L699:
	llgf	%r1,208(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	llgf	%r1,208(%r11)
	ag	%r1,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	asi	208(%r11),1
.L698:
	l	%r1,164(%r11)
	cl	%r1,208(%r11)
	jh	.L699
	j	.L700
.L702:
	llgf	%r1,164(%r11)
	ag	%r1,184(%r11)
	lgr	%r2,%r1
	llgf	%r1,164(%r11)
	ag	%r1,192(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L701:
	l	%r1,164(%r11)
	ahik	%r2,%r1,-1
	st	%r2,164(%r11)
	ltr	%r1,%r1
	jne	.L702
	nopr	%r0
.L700:
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	lgf	%r1,164(%r11)
	lgf	%r4,160(%r11)
	lgr	%r3,%r1
	dsgr	%r2,%r4
	lgr	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	cdlfbr	%f0,0,%r1,0
	lgdr	%r1,%f0
	ldgr	%f0,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	celfbr	%f0,0,%r1,0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	cdlgbr	%f0,0,%r1,0
	lgdr	%r1,%f0
	ldgr	%f0,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	celgbr	%f0,0,%r1,0
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	llgf	%r4,164(%r11)
	llgf	%r1,160(%r11)
	lgr	%r3,%r4
	lghi	%r2,0
	dlgr	%r2,%r1
	lgr	%r1,%r2
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	sth	%r1,166(%r11)
	mvhi	172(%r11),0
	j	.L723
.L726:
	llh	%r2,166(%r11)
	lhi	%r1,15
	s	%r1,172(%r11)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L728
	asi	172(%r11),1
.L723:
	l	%r1,172(%r11)
	chi	%r1,15
	jle	.L726
	j	.L725
.L728:
	nopr	%r0
.L725:
	l	%r1,172(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	sth	%r1,166(%r11)
	mvhi	172(%r11),0
	j	.L731
.L734:
	llh	%r2,166(%r11)
	l	%r1,172(%r11)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	jne	.L736
	asi	172(%r11),1
.L731:
	l	%r1,172(%r11)
	chi	%r1,15
	jle	.L734
	j	.L733
.L736:
	nopr	%r0
.L733:
	l	%r1,172(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L744
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,164(%r11)
	le	%f0,164(%r11)
	keb	%f0,.L745-.L744(%r5)
	jnhe	.L743
	le	%f0,164(%r11)
	seb	%f0,.L745-.L744(%r5)
	cgebr	%r1,5,%f0
	algfi	%r1,32768
	j	.L741
.L743:
	le	%f0,164(%r11)
	cgebr	%r1,5,%f0
.L741:
	lgr	%r2,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L744:
.L745:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	sth	%r1,166(%r11)
	mvhi	168(%r11),0
	mvhi	172(%r11),0
	j	.L747
.L749:
	llh	%r2,166(%r11)
	l	%r1,172(%r11)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L748
	asi	168(%r11),1
.L748:
	asi	172(%r11),1
.L747:
	l	%r1,172(%r11)
	chi	%r1,15
	jle	.L749
	l	%r1,168(%r11)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	sth	%r1,166(%r11)
	mvhi	168(%r11),0
	mvhi	172(%r11),0
	j	.L753
.L755:
	llh	%r2,166(%r11)
	l	%r1,172(%r11)
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L754
	asi	168(%r11),1
.L754:
	asi	172(%r11),1
.L753:
	l	%r1,172(%r11)
	chi	%r1,15
	jle	.L755
	l	%r1,168(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	mvhi	172(%r11),0
	j	.L759
.L761:
	l	%r1,164(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L760
	l	%r1,172(%r11)
	a	%r1,160(%r11)
	st	%r1,172(%r11)
.L760:
	l	%r1,164(%r11)
	srl	%r1,1
	st	%r1,164(%r11)
	l	%r1,160(%r11)
	sll	%r1,1
	st	%r1,160(%r11)
.L759:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L761
	l	%r1,172(%r11)
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	mvhi	172(%r11),0
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L767
	lhi	%r1,0
	j	.L766
.L769:
	l	%r1,160(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L768
	l	%r1,172(%r11)
	a	%r1,164(%r11)
	st	%r1,172(%r11)
.L768:
	l	%r1,164(%r11)
	sll	%r1,1
	st	%r1,164(%r11)
	l	%r1,160(%r11)
	srl	%r1,1
	st	%r1,160(%r11)
.L767:
	l	%r1,160(%r11)
	ltr	%r1,%r1
	jne	.L769
	l	%r1,172(%r11)
.L766:
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r4
	st	%r1,172(%r11)
	lr	%r1,%r3
	st	%r1,168(%r11)
	lr	%r1,%r2
	st	%r1,164(%r11)
	mvhi	180(%r11),1
	mvhi	176(%r11),0
	j	.L772
.L774:
	l	%r1,168(%r11)
	sll	%r1,1
	st	%r1,168(%r11)
	l	%r1,180(%r11)
	sll	%r1,1
	st	%r1,180(%r11)
.L772:
	l	%r1,168(%r11)
	cl	%r1,172(%r11)
	jhe	.L775
	l	%r1,180(%r11)
	ltr	%r1,%r1
	je	.L775
	l	%r1,168(%r11)
	ltr	%r1,%r1
	jhe	.L774
	j	.L775
.L777:
	l	%r1,172(%r11)
	cl	%r1,168(%r11)
	jl	.L776
	l	%r1,172(%r11)
	s	%r1,168(%r11)
	st	%r1,172(%r11)
	oc	176(4,%r11),180(%r11)
.L776:
	l	%r1,180(%r11)
	srl	%r1,1
	st	%r1,180(%r11)
	l	%r1,168(%r11)
	srl	%r1,1
	st	%r1,168(%r11)
.L775:
	l	%r1,180(%r11)
	ltr	%r1,%r1
	jne	.L777
	l	%r1,164(%r11)
	ltr	%r1,%r1
	je	.L778
	l	%r1,172(%r11)
	j	.L779
.L778:
	l	%r1,176(%r11)
.L779:
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,164(%r11)
	ste	%f2,160(%r11)
	le	%f0,164(%r11)
	keb	%f0,160(%r11)
	jnl	.L789
	lhi	%r1,-1
	j	.L784
.L789:
	le	%f0,164(%r11)
	keb	%f0,160(%r11)
	jnh	.L790
	lhi	%r1,1
	j	.L784
.L790:
	lhi	%r1,0
.L784:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	std	%f2,160(%r11)
	ld	%f0,168(%r11)
	kdb	%f0,160(%r11)
	jnl	.L800
	lhi	%r1,-1
	j	.L795
.L800:
	ld	%f0,168(%r11)
	kdb	%f0,160(%r11)
	jnh	.L801
	lhi	%r1,1
	j	.L795
.L801:
	lhi	%r1,0
.L795:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f4
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f6
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	msg	%r1,160(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	msg	%r1,160(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	mvhi	176(%r11),0
	mvhi	172(%r11),0
	l	%r1,160(%r11)
	ltr	%r1,%r1
	jhe	.L810
	l	%r1,160(%r11)
	lcr	%r1,%r1
	st	%r1,160(%r11)
	mvhi	176(%r11),1
.L810:
	mvi	183(%r11),0
	j	.L811
.L814:
	l	%r1,160(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L812
	l	%r1,172(%r11)
	a	%r1,164(%r11)
	st	%r1,172(%r11)
.L812:
	l	%r1,164(%r11)
	sll	%r1,1
	st	%r1,164(%r11)
	l	%r1,160(%r11)
	sra	%r1,1
	st	%r1,160(%r11)
	ic	%r1,183(%r11)
	ahi	%r1,1
	stc	%r1,183(%r11)
.L811:
	l	%r1,160(%r11)
	ltr	%r1,%r1
	je	.L813
	llc	%r1,183(%r11)
	clfi	%r1,31
	jle	.L814
.L813:
	l	%r1,176(%r11)
	ltr	%r1,%r1
	je	.L815
	l	%r1,172(%r11)
	lcr	%r1,%r1
	j	.L817
.L815:
	l	%r1,172(%r11)
.L817:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	mvhi	188(%r11),0
	lg	%r1,168(%r11)
	ltgr	%r1,%r1
	jhe	.L820
	lg	%r1,168(%r11)
	lcgr	%r1,%r1
	stg	%r1,168(%r11)
	l	%r1,188(%r11)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r11)
.L820:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jhe	.L821
	lg	%r1,160(%r11)
	lcgr	%r1,%r1
	stg	%r1,160(%r11)
	l	%r1,188(%r11)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,188(%r11)
.L821:
	lg	%r1,168(%r11)
	lr	%r3,%r1
	lg	%r1,160(%r11)
	llgfr	%r2,%r1
	llgfr	%r1,%r3
	lghi	%r4,0
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lgr	%r1,%r2
	llgfr	%r1,%r1
	stg	%r1,176(%r11)
	l	%r1,188(%r11)
	ltr	%r1,%r1
	je	.L822
	lg	%r1,176(%r11)
	lcgr	%r1,%r1
	stg	%r1,176(%r11)
.L822:
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lmg	%r11,%r15,280(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	mvhi	188(%r11),0
	lg	%r1,168(%r11)
	ltgr	%r1,%r1
	jhe	.L826
	lg	%r1,168(%r11)
	lcgr	%r1,%r1
	stg	%r1,168(%r11)
	mvhi	188(%r11),1
.L826:
	lg	%r1,160(%r11)
	ltgr	%r1,%r1
	jhe	.L827
	lg	%r1,160(%r11)
	lcgr	%r1,%r1
	stg	%r1,160(%r11)
.L827:
	lg	%r1,168(%r11)
	lr	%r3,%r1
	lg	%r1,160(%r11)
	llgfr	%r2,%r1
	llgfr	%r1,%r3
	lghi	%r4,1
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lgr	%r1,%r2
	llgfr	%r1,%r1
	stg	%r1,176(%r11)
	l	%r1,188(%r11)
	ltr	%r1,%r1
	je	.L828
	lg	%r1,176(%r11)
	lcgr	%r1,%r1
	stg	%r1,176(%r11)
.L828:
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lmg	%r11,%r15,280(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r4
	sth	%r1,166(%r11)
	lr	%r1,%r3
	sth	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	mvhhi	174(%r11),1
	mvhhi	172(%r11),0
	j	.L832
.L834:
	lh	%r1,164(%r11)
	sll	%r1,1
	sth	%r1,164(%r11)
	lh	%r1,174(%r11)
	sll	%r1,1
	sth	%r1,174(%r11)
.L832:
	llh	%r1,164(%r11)
	llh	%r2,166(%r11)
	clr	%r1,%r2
	jhe	.L835
	llh	%r1,174(%r11)
	ltr	%r1,%r1
	je	.L835
	lh	%r1,164(%r11)
	lhr	%r1,%r1
	ltr	%r1,%r1
	jhe	.L834
	j	.L835
.L837:
	llh	%r1,166(%r11)
	llh	%r2,164(%r11)
	clr	%r1,%r2
	jl	.L836
	lh	%r1,166(%r11)
	lh	%r2,164(%r11)
	sr	%r1,%r2
	sth	%r1,166(%r11)
	oc	172(2,%r11),174(%r11)
.L836:
	llh	%r1,174(%r11)
	srl	%r1,1
	sth	%r1,174(%r11)
	llh	%r1,164(%r11)
	srl	%r1,1
	sth	%r1,164(%r11)
.L835:
	llh	%r1,174(%r11)
	ltr	%r1,%r1
	jne	.L837
	l	%r1,160(%r11)
	ltr	%r1,%r1
	je	.L838
	lh	%r1,166(%r11)
	j	.L839
.L838:
	lh	%r1,172(%r11)
.L839:
	llghr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	mvghi	192(%r11),1
	mvghi	184(%r11),0
	j	.L842
.L844:
	lg	%r1,168(%r11)
	sllg	%r1,%r1,1
	stg	%r1,168(%r11)
	lg	%r1,192(%r11)
	sllg	%r1,%r1,1
	stg	%r1,192(%r11)
.L842:
	lg	%r1,168(%r11)
	clg	%r1,176(%r11)
	jhe	.L845
	lg	%r1,192(%r11)
	ltgr	%r1,%r1
	je	.L845
	lg	%r1,168(%r11)
	risbg	%r1,%r1,32,128+32,0
	ltgr	%r1,%r1
	je	.L844
	j	.L845
.L847:
	lg	%r1,176(%r11)
	clg	%r1,168(%r11)
	jl	.L846
	lg	%r1,176(%r11)
	sg	%r1,168(%r11)
	stg	%r1,176(%r11)
	oc	184(8,%r11),192(%r11)
.L846:
	lg	%r1,192(%r11)
	srlg	%r1,%r1,1
	stg	%r1,192(%r11)
	lg	%r1,168(%r11)
	srlg	%r1,%r1,1
	stg	%r1,168(%r11)
.L845:
	lg	%r1,192(%r11)
	ltgr	%r1,%r1
	jne	.L847
	l	%r1,164(%r11)
	ltr	%r1,%r1
	je	.L848
	lg	%r1,176(%r11)
	j	.L849
.L848:
	lg	%r1,184(%r11)
.L849:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	mvhi	196(%r11),32
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	l	%r1,164(%r11)
	n	%r1,196(%r11)
	ltr	%r1,%r1
	je	.L852
	mvhi	180(%r11),0
	l	%r2,188(%r11)
	l	%r1,164(%r11)
	s	%r1,196(%r11)
	sllk	%r1,%r2,0(%r1)
	st	%r1,176(%r11)
	j	.L853
.L852:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L854
	lg	%r1,168(%r11)
	j	.L856
.L854:
	l	%r2,188(%r11)
	l	%r1,164(%r11)
	sllk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,184(%r11)
	lr	%r2,%r1
	l	%r1,164(%r11)
	sllk	%r3,%r2,0(%r1)
	l	%r2,188(%r11)
	l	%r1,196(%r11)
	s	%r1,164(%r11)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	st	%r1,176(%r11)
.L853:
	lg	%r1,176(%r11)
.L856:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,184(%r11)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,168(%r11)
	stg	%r3,176(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	mvhi	228(%r11),64
	lg	%r2,168(%r11)
	lg	%r3,176(%r11)
	stg	%r2,208(%r11)
	stg	%r3,216(%r11)
	l	%r1,164(%r11)
	n	%r1,228(%r11)
	ltr	%r1,%r1
	je	.L859
	mvghi	200(%r11),0
	lg	%r2,216(%r11)
	l	%r1,164(%r11)
	s	%r1,228(%r11)
	sllg	%r1,%r2,0(%r1)
	stg	%r1,192(%r11)
	j	.L860
.L859:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L861
	lg	%r1,184(%r11)
	lg	%r2,168(%r11)
	lg	%r3,176(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L863
.L861:
	lg	%r2,216(%r11)
	l	%r1,164(%r11)
	sllg	%r1,%r2,0(%r1)
	stg	%r1,200(%r11)
	lg	%r1,208(%r11)
	lgr	%r2,%r1
	l	%r1,164(%r11)
	sllg	%r3,%r2,0(%r1)
	lg	%r2,216(%r11)
	l	%r1,228(%r11)
	s	%r1,164(%r11)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	stg	%r1,192(%r11)
.L860:
	lg	%r2,192(%r11)
	lg	%r3,200(%r11)
	lg	%r1,184(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L863:
	lg	%r2,184(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	mvhi	196(%r11),32
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	l	%r1,164(%r11)
	n	%r1,196(%r11)
	ltr	%r1,%r1
	je	.L866
	l	%r2,184(%r11)
	l	%r1,196(%r11)
	ahi	%r1,-1
	srak	%r1,%r2,0(%r1)
	st	%r1,176(%r11)
	l	%r2,184(%r11)
	l	%r1,164(%r11)
	s	%r1,196(%r11)
	srak	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	j	.L867
.L866:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L868
	lg	%r1,168(%r11)
	j	.L870
.L868:
	l	%r2,184(%r11)
	l	%r1,164(%r11)
	srak	%r1,%r2,0(%r1)
	st	%r1,176(%r11)
	l	%r1,184(%r11)
	lr	%r2,%r1
	l	%r1,196(%r11)
	s	%r1,164(%r11)
	sllk	%r3,%r2,0(%r1)
	l	%r2,188(%r11)
	l	%r1,164(%r11)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	st	%r1,180(%r11)
.L867:
	lg	%r1,176(%r11)
.L870:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,184(%r11)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,168(%r11)
	stg	%r3,176(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	mvhi	228(%r11),64
	lg	%r2,168(%r11)
	lg	%r3,176(%r11)
	stg	%r2,208(%r11)
	stg	%r3,216(%r11)
	l	%r1,164(%r11)
	n	%r1,228(%r11)
	ltr	%r1,%r1
	je	.L873
	lg	%r2,208(%r11)
	l	%r1,228(%r11)
	ahi	%r1,-1
	srag	%r1,%r2,0(%r1)
	stg	%r1,192(%r11)
	lg	%r2,208(%r11)
	l	%r1,164(%r11)
	s	%r1,228(%r11)
	srag	%r1,%r2,0(%r1)
	stg	%r1,200(%r11)
	j	.L874
.L873:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L875
	lg	%r1,184(%r11)
	lg	%r2,168(%r11)
	lg	%r3,176(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L877
.L875:
	lg	%r2,208(%r11)
	l	%r1,164(%r11)
	srag	%r1,%r2,0(%r1)
	stg	%r1,192(%r11)
	lg	%r1,208(%r11)
	lgr	%r2,%r1
	l	%r1,228(%r11)
	s	%r1,164(%r11)
	sllg	%r3,%r2,0(%r1)
	lg	%r2,216(%r11)
	l	%r1,164(%r11)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	stg	%r1,200(%r11)
.L874:
	lg	%r2,192(%r11)
	lg	%r3,200(%r11)
	lg	%r1,184(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L877:
	lg	%r2,184(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	srlg	%r2,%r1,56
	lg	%r1,160(%r11)
	srlg	%r1,%r1,40
	risbg	%r1,%r1,48,128+55,0
	ogr	%r2,%r1
	lg	%r1,160(%r11)
	srlg	%r1,%r1,24
	risbg	%r1,%r1,40,128+47,0
	ogr	%r2,%r1
	lg	%r1,160(%r11)
	srlg	%r1,%r1,8
	risbg	%r1,%r1,32,128+39,0
	ogr	%r2,%r1
	lg	%r1,160(%r11)
	sllg	%r1,%r1,8
	risbg	%r1,%r1,24,128+31,0
	ogr	%r2,%r1
	lg	%r1,160(%r11)
	sllg	%r1,%r1,24
	risbg	%r1,%r1,16,128+23,0
	ogr	%r2,%r1
	lg	%r1,160(%r11)
	sllg	%r1,%r1,40
	risbg	%r1,%r1,8,128+15,0
	ogr	%r2,%r1
	lg	%r1,160(%r11)
	sllg	%r1,%r1,56
	ogr	%r1,%r2
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	srlk	%r2,%r1,24
	l	%r1,164(%r11)
	srl	%r1,8
	nilf	%r1,65280
	or	%r2,%r1
	l	%r1,164(%r11)
	sll	%r1,8
	nilf	%r1,16711680
	or	%r2,%r1
	l	%r1,164(%r11)
	sll	%r1,24
	or	%r1,%r2
	llgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	st	%r1,180(%r11)
	l	%r1,180(%r11)
	clfi	%r1,65535
	jh	.L886
	lhi	%r1,16
	j	.L887
.L886:
	lhi	%r1,0
.L887:
	st	%r1,176(%r11)
	lhi	%r1,16
	s	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,176(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	nilf	%r1,65280
	ltr	%r1,%r1
	jne	.L888
	lhi	%r1,8
	j	.L889
.L888:
	lhi	%r1,0
.L889:
	st	%r1,176(%r11)
	lhi	%r1,8
	s	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,176(%r11)
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	nilf	%r1,240
	ltr	%r1,%r1
	jne	.L890
	lhi	%r1,4
	j	.L891
.L890:
	lhi	%r1,0
.L891:
	st	%r1,176(%r11)
	lhi	%r1,4
	s	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,176(%r11)
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	nilf	%r1,12
	ltr	%r1,%r1
	jne	.L892
	lhi	%r1,2
	j	.L893
.L892:
	lhi	%r1,0
.L893:
	st	%r1,176(%r11)
	lhi	%r1,2
	s	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,176(%r11)
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	nilf	%r1,2
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	llcr	%r1,%r1
	lr	%r2,%r1
	lhi	%r1,2
	s	%r1,180(%r11)
	msr	%r1,%r2
	a	%r1,172(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r11)
	stg	%r3,168(%r11)
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	stg	%r2,176(%r11)
	stg	%r3,184(%r11)
	lg	%r1,176(%r11)
	lpgr	%r1,%r1
	aghi	%r1,-1
	srlg	%r1,%r1,63
	llcr	%r1,%r1
	lcr	%r1,%r1
	lgfr	%r1,%r1
	stg	%r1,192(%r11)
	lg	%r1,176(%r11)
	lg	%r2,192(%r11)
	lghi	%r3,-1
	xgr	%r2,%r3
	ngr	%r1,%r2
	lgr	%r3,%r1
	lg	%r2,184(%r11)
	lg	%r1,192(%r11)
	ngr	%r1,%r2
	ogr	%r1,%r3
	flogr	%r2,%r1
	lgr	%r1,%r2
	lr	%r2,%r1
	lg	%r1,192(%r11)
	nilf	%r1,64
	ar	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,160(%r11)
	stg	%r1,176(%r11)
	l	%r1,184(%r11)
	l	%r2,176(%r11)
	cr	%r1,%r2
	jhe	.L900
	lhi	%r1,0
	j	.L905
.L900:
	l	%r1,184(%r11)
	l	%r2,176(%r11)
	cr	%r1,%r2
	jle	.L902
	lhi	%r1,2
	j	.L905
.L902:
	l	%r1,188(%r11)
	l	%r2,180(%r11)
	clr	%r1,%r2
	jhe	.L903
	lhi	%r1,0
	j	.L905
.L903:
	l	%r1,188(%r11)
	l	%r2,180(%r11)
	clr	%r1,%r2
	jle	.L904
	lhi	%r1,2
	j	.L905
.L904:
	lhi	%r1,1
.L905:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r3,160(%r11)
	lg	%r2,168(%r11)
	brasl	%r14,__cmpdi2@PLT
	lgr	%r1,%r2
	ahi	%r1,-1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,264(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lg	%r4,0(%r12)
	lg	%r5,8(%r12)
	stg	%r4,176(%r11)
	stg	%r5,184(%r11)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r11)
	stg	%r3,168(%r11)
	lg	%r2,176(%r11)
	lg	%r3,184(%r11)
	stg	%r2,208(%r11)
	stg	%r3,216(%r11)
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	stg	%r2,192(%r11)
	stg	%r3,200(%r11)
	lg	%r1,208(%r11)
	lg	%r2,192(%r11)
	cgr	%r1,%r2
	jhe	.L911
	lhi	%r1,0
	j	.L916
.L911:
	lg	%r1,208(%r11)
	lg	%r2,192(%r11)
	cgr	%r1,%r2
	jle	.L913
	lhi	%r1,2
	j	.L916
.L913:
	lg	%r1,216(%r11)
	lg	%r2,200(%r11)
	clgr	%r1,%r2
	jhe	.L914
	lhi	%r1,0
	j	.L916
.L914:
	lg	%r1,216(%r11)
	lg	%r2,200(%r11)
	clgr	%r1,%r2
	jle	.L915
	lhi	%r1,2
	j	.L916
.L915:
	lhi	%r1,1
.L916:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	larl	%r5,.L928
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	st	%r1,180(%r11)
	l	%r1,180(%r11)
	nilh	%r1,0
	ltr	%r1,%r1
	jne	.L919
	lhi	%r1,16
	j	.L920
.L919:
	lhi	%r1,0
.L920:
	st	%r1,176(%r11)
	l	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,176(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	nilf	%r1,255
	ltr	%r1,%r1
	jne	.L921
	lhi	%r1,8
	j	.L922
.L921:
	lhi	%r1,0
.L922:
	st	%r1,176(%r11)
	l	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,176(%r11)
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	nilf	%r1,15
	ltr	%r1,%r1
	jne	.L923
	lhi	%r1,4
	j	.L924
.L923:
	lhi	%r1,0
.L924:
	st	%r1,176(%r11)
	l	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,176(%r11)
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	nilf	%r1,3
	ltr	%r1,%r1
	jne	.L925
	lhi	%r1,2
	j	.L926
.L925:
	lhi	%r1,0
.L926:
	st	%r1,176(%r11)
	l	%r1,176(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	nc	180(4,%r11),.L929-.L928(%r5)
	l	%r1,176(%r11)
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,180(%r11)
	xilf	%r1,4294967295
	nilf	%r1,1
	l	%r2,180(%r11)
	srl	%r2,1
	lhi	%r3,2
	srk	%r2,%r3,%r2
	lcr	%r1,%r1
	nr	%r1,%r2
	a	%r1,172(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L928:
.L929:
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r11)
	stg	%r3,168(%r11)
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	stg	%r2,176(%r11)
	stg	%r3,184(%r11)
	lg	%r1,184(%r11)
	lpgr	%r1,%r1
	aghi	%r1,-1
	srlg	%r1,%r1,63
	llcr	%r1,%r1
	lcr	%r1,%r1
	lgfr	%r1,%r1
	stg	%r1,192(%r11)
	lg	%r1,176(%r11)
	ng	%r1,192(%r11)
	lgr	%r3,%r1
	lg	%r1,184(%r11)
	lg	%r2,192(%r11)
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
	lg	%r1,192(%r11)
	nilf	%r1,64
	ar	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r11)
	stg	%r3,168(%r11)
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	stg	%r2,176(%r11)
	stg	%r3,184(%r11)
	lg	%r1,184(%r11)
	ltgr	%r1,%r1
	jne	.L934
	lg	%r1,176(%r11)
	ltgr	%r1,%r1
	jne	.L935
	lhi	%r1,0
	j	.L937
.L935:
	lg	%r1,176(%r11)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,65
	j	.L937
.L934:
	lg	%r1,184(%r11)
	lcgr	%r2,%r1
	ngr	%r1,%r2
	flogr	%r2,%r1
	lghi	%r1,63
	sgr	%r1,%r2
	ahi	%r1,1
.L937:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	st	%r1,164(%r11)
	mvhi	196(%r11),32
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	l	%r1,164(%r11)
	n	%r1,196(%r11)
	ltr	%r1,%r1
	je	.L940
	mvhi	176(%r11),0
	l	%r2,184(%r11)
	l	%r1,164(%r11)
	s	%r1,196(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	j	.L941
.L940:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L942
	lg	%r1,168(%r11)
	j	.L944
.L942:
	l	%r2,184(%r11)
	l	%r1,164(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,176(%r11)
	l	%r2,184(%r11)
	l	%r1,196(%r11)
	s	%r1,164(%r11)
	sllk	%r3,%r2,0(%r1)
	l	%r2,188(%r11)
	l	%r1,164(%r11)
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r3
	st	%r1,180(%r11)
.L941:
	lg	%r1,176(%r11)
.L944:
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-232(%r15)
	.cfi_def_cfa_offset 392
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,184(%r11)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,168(%r11)
	stg	%r3,176(%r11)
	lgr	%r1,%r4
	st	%r1,164(%r11)
	mvhi	228(%r11),64
	lg	%r2,168(%r11)
	lg	%r3,176(%r11)
	stg	%r2,208(%r11)
	stg	%r3,216(%r11)
	l	%r1,164(%r11)
	n	%r1,228(%r11)
	ltr	%r1,%r1
	je	.L947
	mvghi	192(%r11),0
	lg	%r2,208(%r11)
	l	%r1,164(%r11)
	s	%r1,228(%r11)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r11)
	j	.L948
.L947:
	l	%r1,164(%r11)
	ltr	%r1,%r1
	jne	.L949
	lg	%r1,184(%r11)
	lg	%r2,168(%r11)
	lg	%r3,176(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	j	.L951
.L949:
	lg	%r2,208(%r11)
	l	%r1,164(%r11)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,192(%r11)
	lg	%r2,208(%r11)
	l	%r1,228(%r11)
	s	%r1,164(%r11)
	sllg	%r3,%r2,0(%r1)
	lg	%r2,216(%r11)
	l	%r1,164(%r11)
	srlg	%r1,%r2,0(%r1)
	ogr	%r1,%r3
	stg	%r1,200(%r11)
.L948:
	lg	%r2,192(%r11)
	lg	%r3,200(%r11)
	lg	%r1,184(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
.L951:
	lg	%r2,184(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	mvhi	188(%r11),16
	l	%r1,188(%r11)
	lhi	%r2,-1
	srlk	%r1,%r2,0(%r1)
	st	%r1,184(%r11)
	l	%r2,164(%r11)
	n	%r2,184(%r11)
	l	%r1,160(%r11)
	n	%r1,184(%r11)
	msr	%r1,%r2
	st	%r1,172(%r11)
	l	%r2,172(%r11)
	l	%r1,188(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,172(%r11)
	n	%r1,184(%r11)
	st	%r1,172(%r11)
	l	%r1,188(%r11)
	l	%r2,164(%r11)
	srl	%r2,0(%r1)
	l	%r1,160(%r11)
	n	%r1,184(%r11)
	msr	%r1,%r2
	a	%r1,180(%r11)
	st	%r1,180(%r11)
	l	%r3,172(%r11)
	l	%r2,180(%r11)
	n	%r2,184(%r11)
	l	%r1,188(%r11)
	sllk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,172(%r11)
	l	%r1,188(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,168(%r11)
	l	%r2,172(%r11)
	l	%r1,188(%r11)
	srlk	%r1,%r2,0(%r1)
	st	%r1,180(%r11)
	l	%r1,172(%r11)
	n	%r1,184(%r11)
	st	%r1,172(%r11)
	l	%r1,188(%r11)
	l	%r2,160(%r11)
	srl	%r2,0(%r1)
	l	%r1,164(%r11)
	n	%r1,184(%r11)
	msr	%r1,%r2
	a	%r1,180(%r11)
	st	%r1,180(%r11)
	l	%r3,172(%r11)
	l	%r2,180(%r11)
	n	%r2,184(%r11)
	l	%r1,188(%r11)
	sllk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,172(%r11)
	l	%r1,168(%r11)
	lr	%r3,%r1
	l	%r1,188(%r11)
	l	%r2,180(%r11)
	srlk	%r1,%r2,0(%r1)
	ar	%r1,%r3
	st	%r1,168(%r11)
	l	%r1,168(%r11)
	lr	%r4,%r1
	l	%r1,188(%r11)
	l	%r2,164(%r11)
	srlk	%r3,%r2,0(%r1)
	l	%r1,188(%r11)
	l	%r2,160(%r11)
	srlk	%r1,%r2,0(%r1)
	msr	%r1,%r3
	ar	%r1,%r4
	st	%r1,168(%r11)
	lg	%r1,168(%r11)
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-200(%r15)
	.cfi_def_cfa_offset 360
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,192(%r11)
	lg	%r1,160(%r11)
	stg	%r1,184(%r11)
	l	%r1,196(%r11)
	l	%r2,188(%r11)
	llgfr	%r2,%r2
	llgfr	%r1,%r1
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__muldsi3@PLT
	lgr	%r1,%r2
	stg	%r1,176(%r11)
	l	%r1,176(%r11)
	lr	%r4,%r1
	l	%r1,192(%r11)
	lr	%r2,%r1
	l	%r1,188(%r11)
	msr	%r2,%r1
	l	%r1,196(%r11)
	l	%r3,184(%r11)
	msr	%r1,%r3
	ar	%r1,%r2
	ar	%r1,%r4
	st	%r1,176(%r11)
	lg	%r1,176(%r11)
	lgr	%r2,%r1
	lmg	%r11,%r15,288(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	stg	%r3,168(%r11)
	stg	%r4,160(%r11)
	mvhi	220(%r11),32
	l	%r1,220(%r11)
	lghi	%r2,-1
	srlg	%r1,%r2,0(%r1)
	stg	%r1,208(%r11)
	lg	%r2,168(%r11)
	ng	%r2,208(%r11)
	lg	%r1,160(%r11)
	ng	%r1,208(%r11)
	msgr	%r1,%r2
	stg	%r1,192(%r11)
	lg	%r2,192(%r11)
	l	%r1,220(%r11)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r11)
	lg	%r1,192(%r11)
	ng	%r1,208(%r11)
	stg	%r1,192(%r11)
	l	%r1,220(%r11)
	lg	%r2,168(%r11)
	srlg	%r2,%r2,0(%r1)
	lg	%r1,160(%r11)
	ng	%r1,208(%r11)
	msgr	%r1,%r2
	ag	%r1,200(%r11)
	stg	%r1,200(%r11)
	lg	%r3,192(%r11)
	lg	%r2,200(%r11)
	ng	%r2,208(%r11)
	l	%r1,220(%r11)
	sllg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,192(%r11)
	l	%r1,220(%r11)
	lg	%r2,200(%r11)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,184(%r11)
	lg	%r2,192(%r11)
	l	%r1,220(%r11)
	srlg	%r1,%r2,0(%r1)
	stg	%r1,200(%r11)
	lg	%r1,192(%r11)
	ng	%r1,208(%r11)
	stg	%r1,192(%r11)
	l	%r1,220(%r11)
	lg	%r2,160(%r11)
	srlg	%r2,%r2,0(%r1)
	lg	%r1,168(%r11)
	ng	%r1,208(%r11)
	msgr	%r1,%r2
	ag	%r1,200(%r11)
	stg	%r1,200(%r11)
	lg	%r3,192(%r11)
	lg	%r2,200(%r11)
	ng	%r2,208(%r11)
	l	%r1,220(%r11)
	sllg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,192(%r11)
	lg	%r1,184(%r11)
	lgr	%r3,%r1
	l	%r1,220(%r11)
	lg	%r2,200(%r11)
	srlg	%r1,%r2,0(%r1)
	agr	%r1,%r3
	stg	%r1,184(%r11)
	lg	%r1,184(%r11)
	lgr	%r4,%r1
	l	%r1,220(%r11)
	lg	%r2,168(%r11)
	srlg	%r3,%r2,0(%r1)
	l	%r1,220(%r11)
	lg	%r2,160(%r11)
	srlg	%r1,%r2,0(%r1)
	msgr	%r1,%r3
	agr	%r1,%r4
	stg	%r1,184(%r11)
	lg	%r2,184(%r11)
	lg	%r3,192(%r11)
	lg	%r1,176(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-264(%r15)
	.cfi_def_cfa_offset 424
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,208(%r11)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,192(%r11)
	stg	%r3,200(%r11)
	lgr	%r12,%r4
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,176(%r11)
	stg	%r3,184(%r11)
	lg	%r2,192(%r11)
	lg	%r3,200(%r11)
	stg	%r2,248(%r11)
	stg	%r3,256(%r11)
	lg	%r2,176(%r11)
	lg	%r3,184(%r11)
	stg	%r2,232(%r11)
	stg	%r3,240(%r11)
	lg	%r2,256(%r11)
	lg	%r3,240(%r11)
	aghik	%r1,%r11,160
	lgr	%r4,%r3
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__mulddi3@PLT
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	stg	%r2,216(%r11)
	stg	%r3,224(%r11)
	lg	%r1,216(%r11)
	lgr	%r4,%r1
	lg	%r1,248(%r11)
	lgr	%r2,%r1
	lg	%r1,240(%r11)
	msgr	%r2,%r1
	lg	%r1,256(%r11)
	lg	%r3,232(%r11)
	msgr	%r1,%r3
	agr	%r1,%r2
	agr	%r1,%r4
	stg	%r1,216(%r11)
	lg	%r2,216(%r11)
	lg	%r3,224(%r11)
	lg	%r1,208(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,208(%r11)
	lmg	%r11,%r15,352(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	lcgr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,176(%r11)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r11)
	stg	%r3,168(%r11)
	lg	%r4,160(%r11)
	lg	%r5,168(%r11)
	lghi	%r2,0
	lghi	%r3,0
	slgr	%r3,%r5
	slbgr	%r2,%r4
	lg	%r1,176(%r11)
	stg	%r2,0(%r1)
	stg	%r3,8(%r1)
	lg	%r2,176(%r11)
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	stg	%r1,168(%r11)
	l	%r1,168(%r11)
	lr	%r2,%r1
	l	%r1,172(%r11)
	xr	%r1,%r2
	st	%r1,180(%r11)
	l	%r1,180(%r11)
	srl	%r1,16
	x	%r1,180(%r11)
	st	%r1,180(%r11)
	l	%r1,180(%r11)
	srl	%r1,8
	x	%r1,180(%r11)
	st	%r1,180(%r11)
	l	%r1,180(%r11)
	srl	%r1,4
	x	%r1,180(%r11)
	st	%r1,180(%r11)
	l	%r1,180(%r11)
	nilf	%r1,15
	lhi	%r2,27030
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-208(%r15)
	.cfi_def_cfa_offset 368
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r11)
	stg	%r3,168(%r11)
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	stg	%r2,184(%r11)
	stg	%r3,192(%r11)
	lg	%r1,184(%r11)
	lgr	%r2,%r1
	lg	%r1,192(%r11)
	xgr	%r1,%r2
	stg	%r1,176(%r11)
	l	%r1,176(%r11)
	lr	%r2,%r1
	l	%r1,180(%r11)
	xr	%r1,%r2
	st	%r1,204(%r11)
	l	%r1,204(%r11)
	srl	%r1,16
	x	%r1,204(%r11)
	st	%r1,204(%r11)
	l	%r1,204(%r11)
	srl	%r1,8
	x	%r1,204(%r11)
	st	%r1,204(%r11)
	l	%r1,204(%r11)
	srl	%r1,4
	x	%r1,204(%r11)
	st	%r1,204(%r11)
	l	%r1,204(%r11)
	nilf	%r1,15
	lhi	%r2,27030
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,16
	x	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,8
	x	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,4
	x	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	nilf	%r1,15
	lhi	%r2,27030
	srak	%r1,%r2,0(%r1)
	nilf	%r1,1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	larl	%r5,.L982
	lay	%r15,-184(%r15)
	.cfi_def_cfa_offset 344
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lg	%r1,160(%r11)
	stg	%r1,176(%r11)
	lg	%r1,176(%r11)
	srlg	%r1,%r1,1
	lgrl	%r2,.LC18
	ngrk	%r2,%r1,%r2
	lg	%r1,176(%r11)
	sgr	%r1,%r2
	stg	%r1,176(%r11)
	lg	%r1,176(%r11)
	srlg	%r1,%r1,2
	lgrl	%r2,.LC19
	ngrk	%r2,%r1,%r2
	lgrl	%r1,.LC19
	ng	%r1,176(%r11)
	agrk	%r1,%r2,%r1
	stg	%r1,176(%r11)
	lg	%r1,176(%r11)
	srlg	%r1,%r1,4
	ag	%r1,176(%r11)
	ng	%r1,.L983-.L982(%r5)
	stg	%r1,176(%r11)
	lg	%r1,176(%r11)
	lr	%r2,%r1
	lg	%r1,176(%r11)
	srlg	%r1,%r1,32
	ark	%r1,%r2,%r1
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,16
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,8
	a	%r1,172(%r11)
	nilf	%r1,127
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L982:
.L983:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,1
	nilf	%r1,1431655765
	lr	%r2,%r1
	l	%r1,172(%r11)
	sr	%r1,%r2
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,2
	nilf	%r1,858993459
	l	%r2,172(%r11)
	nilf	%r2,858993459
	ar	%r1,%r2
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,4
	a	%r1,172(%r11)
	nilf	%r1,252645135
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,16
	a	%r1,172(%r11)
	st	%r1,172(%r11)
	l	%r1,172(%r11)
	srl	%r1,8
	a	%r1,172(%r11)
	nilf	%r1,63
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f7,%r6
	.cfi_register 6, 23
	ldgr	%f5,%r7
	.cfi_register 7, 22
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r12
	.cfi_register 12, 18
	ldgr	%f2,%r13
	.cfi_register 13, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	larl	%r13,.L989
	lay	%r15,-272(%r15)
	.cfi_def_cfa_offset 432
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,224(%r11)
	stg	%r3,232(%r11)
	lg	%r2,224(%r11)
	lg	%r3,232(%r11)
	stg	%r2,256(%r11)
	stg	%r3,264(%r11)
	lg	%r1,256(%r11)
	sllg	%r2,%r1,63
	lg	%r1,264(%r11)
	srlg	%r5,%r1,1
	ogr	%r5,%r2
	lg	%r1,256(%r11)
	srlg	%r4,%r1,1
	lgrl	%r1,.LC21
	ngrk	%r1,%r4,%r1
	stg	%r1,208(%r11)
	lgr	%r1,%r5
	ng	%r1,.L990-.L989(%r13)
	stg	%r1,216(%r11)
	lg	%r2,256(%r11)
	lg	%r3,264(%r11)
	slg	%r3,216(%r11)
	slbg	%r2,208(%r11)
	stg	%r2,256(%r11)
	stg	%r3,264(%r11)
	lg	%r1,256(%r11)
	sllg	%r2,%r1,62
	lg	%r1,264(%r11)
	srlg	%r7,%r1,2
	ogr	%r7,%r2
	lg	%r1,256(%r11)
	srlg	%r6,%r1,2
	lgrl	%r1,.LC22
	ngrk	%r1,%r6,%r1
	stg	%r1,192(%r11)
	lgr	%r1,%r7
	ng	%r1,.L991-.L989(%r13)
	stg	%r1,200(%r11)
	lgrl	%r1,.LC22
	ng	%r1,256(%r11)
	stg	%r1,176(%r11)
	lgrl	%r1,.LC22
	ng	%r1,264(%r11)
	stg	%r1,184(%r11)
	lg	%r2,192(%r11)
	lg	%r3,200(%r11)
	alg	%r3,184(%r11)
	alcg	%r2,176(%r11)
	stg	%r2,256(%r11)
	stg	%r3,264(%r11)
	lg	%r1,256(%r11)
	sllg	%r2,%r1,60
	lg	%r1,264(%r11)
	srlg	%r9,%r1,4
	ogr	%r9,%r2
	lg	%r1,256(%r11)
	srlg	%r8,%r1,4
	lgr	%r2,%r8
	lgr	%r3,%r9
	alg	%r3,264(%r11)
	alcg	%r2,256(%r11)
	lgrl	%r1,.LC23
	ngrk	%r1,%r2,%r1
	stg	%r1,256(%r11)
	lgrl	%r1,.LC23
	ngrk	%r1,%r3,%r1
	stg	%r1,264(%r11)
	lg	%r1,264(%r11)
	lg	%r2,256(%r11)
	srlg	%r2,%r2,0
	stg	%r2,168(%r11)
	mvghi	160(%r11),0
	lg	%r2,168(%r11)
	agr	%r1,%r2
	stg	%r1,248(%r11)
	lg	%r1,248(%r11)
	lr	%r2,%r1
	lg	%r1,248(%r11)
	srlg	%r1,%r1,32
	ark	%r1,%r2,%r1
	st	%r1,244(%r11)
	l	%r1,244(%r11)
	srl	%r1,16
	a	%r1,244(%r11)
	st	%r1,244(%r11)
	l	%r1,244(%r11)
	srl	%r1,8
	a	%r1,244(%r11)
	nilf	%r1,255
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r13,%f2
	.cfi_restore 13
	lgdr	%r12,%f4
	.cfi_restore 12
	lgdr	%r11,%f6
	.cfi_restore 11
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	lgdr	%r7,%f5
	.cfi_restore 7
	lgdr	%r6,%f7
	.cfi_restore 6
	br	%r14
	.section	.rodata
	.align	8
.L989:
.L991:
	.quad	3689348814741910323
.L990:
	.quad	6148914691236517205
	.align	2
.text
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L1002
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,168(%r11)
	lgr	%r1,%r2
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,180(%r11)
	ld	%f0,.L1003-.L1002(%r5)
	std	%f0,184(%r11)
.L996:
	l	%r1,164(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L993
	ld	%f0,184(%r11)
	mdb	%f0,168(%r11)
	std	%f0,184(%r11)
.L993:
	l	%r1,164(%r11)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,164(%r11)
	l	%r1,164(%r11)
	ltr	%r1,%r1
	je	.L1001
	ld	%f0,168(%r11)
	mdb	%f0,168(%r11)
	std	%f0,168(%r11)
	j	.L996
.L1001:
	nopr	%r0
	l	%r1,180(%r11)
	ltr	%r1,%r1
	je	.L997
	ld	%f0,.L1003-.L1002(%r5)
	ddb	%f0,184(%r11)
	j	.L999
.L997:
	ld	%f0,184(%r11)
.L999:
	lgdr	%r1,%f0
	ldgr	%f0,%r1
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L1002:
.L1003:
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r15
	.cfi_register 15, 17
	larl	%r5,.L1014
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,164(%r11)
	lgr	%r1,%r2
	st	%r1,160(%r11)
	l	%r1,160(%r11)
	srl	%r1,31
	llcr	%r1,%r1
	st	%r1,168(%r11)
	le	%f0,.L1015-.L1014(%r5)
	ste	%f0,172(%r11)
.L1008:
	l	%r1,160(%r11)
	nilf	%r1,1
	ltr	%r1,%r1
	je	.L1005
	le	%f0,172(%r11)
	meeb	%f0,164(%r11)
	ste	%f0,172(%r11)
.L1005:
	l	%r1,160(%r11)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,160(%r11)
	l	%r1,160(%r11)
	ltr	%r1,%r1
	je	.L1013
	le	%f0,164(%r11)
	meeb	%f0,164(%r11)
	ste	%f0,164(%r11)
	j	.L1008
.L1013:
	nopr	%r0
	l	%r1,168(%r11)
	ltr	%r1,%r1
	je	.L1009
	le	%f0,.L1015-.L1014(%r5)
	deb	%f0,172(%r11)
	j	.L1011
.L1009:
	le	%f0,172(%r11)
.L1011:
	lgdr	%r15,%f2
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f4
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L1014:
.L1015:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	stg	%r1,184(%r11)
	lg	%r1,160(%r11)
	stg	%r1,176(%r11)
	l	%r1,184(%r11)
	l	%r2,176(%r11)
	clr	%r1,%r2
	jhe	.L1017
	lhi	%r1,0
	j	.L1022
.L1017:
	l	%r1,184(%r11)
	l	%r2,176(%r11)
	clr	%r1,%r2
	jle	.L1019
	lhi	%r1,2
	j	.L1022
.L1019:
	l	%r1,188(%r11)
	l	%r2,180(%r11)
	clr	%r1,%r2
	jhe	.L1020
	lhi	%r1,0
	j	.L1022
.L1020:
	l	%r1,188(%r11)
	l	%r2,180(%r11)
	clr	%r1,%r2
	jle	.L1021
	lhi	%r1,2
	j	.L1022
.L1021:
	lhi	%r1,1
.L1022:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,168(%r11)
	lg	%r2,160(%r11)
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,__ucmpdi2@PLT
	lgr	%r1,%r2
	ahi	%r1,-1
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,264(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lg	%r4,0(%r12)
	lg	%r5,8(%r12)
	stg	%r4,176(%r11)
	stg	%r5,184(%r11)
	lgr	%r12,%r3
	lg	%r2,0(%r12)
	lg	%r3,8(%r12)
	stg	%r2,160(%r11)
	stg	%r3,168(%r11)
	lg	%r2,176(%r11)
	lg	%r3,184(%r11)
	stg	%r2,208(%r11)
	stg	%r3,216(%r11)
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	stg	%r2,192(%r11)
	stg	%r3,200(%r11)
	lg	%r1,208(%r11)
	lg	%r2,192(%r11)
	clgr	%r1,%r2
	jhe	.L1028
	lhi	%r1,0
	j	.L1033
.L1028:
	lg	%r1,208(%r11)
	lg	%r2,192(%r11)
	clgr	%r1,%r2
	jle	.L1030
	lhi	%r1,2
	j	.L1033
.L1030:
	lg	%r1,216(%r11)
	lg	%r2,200(%r11)
	clgr	%r1,%r2
	jhe	.L1031
	lhi	%r1,0
	j	.L1033
.L1031:
	lg	%r1,216(%r11)
	lg	%r2,200(%r11)
	clgr	%r1,%r2
	jle	.L1032
	lhi	%r1,2
	j	.L1033
.L1032:
	lhi	%r1,1
.L1033:
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	br	%r14
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
