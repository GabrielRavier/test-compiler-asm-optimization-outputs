	.file	"mini-libc.c"
	.machinemode esa
	.machine "zEC12+nohtm"
.text
	.align	8
.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	cl	%r1,116(%r15)
	jhe	.L2
	l	%r1,112(%r15)
	a	%r1,100(%r15)
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	st	%r1,116(%r15)
	j	.L3
.L4:
	l	%r1,112(%r15)
	ahi	%r1,-1
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	ahi	%r1,-1
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	ic	%r2,0(%r1)
	l	%r1,116(%r15)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L3:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L4
	j	.L5
.L2:
	l	%r1,112(%r15)
	c	%r1,116(%r15)
	je	.L5
	j	.L6
.L7:
	l	%r2,112(%r15)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,116(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L6:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L7
.L5:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	8
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	st	%r5,96(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	l	%r1,100(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,100(%r15)
	j	.L12
.L14:
	l	%r1,96(%r15)
	ahi	%r1,-1
	st	%r1,96(%r15)
	l	%r1,112(%r15)
	ahi	%r1,1
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
.L12:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L13
	l	%r1,112(%r15)
	ic	%r2,0(%r1)
	l	%r1,116(%r15)
	stc	%r2,0(%r1)
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,100(%r15)
	cr	%r1,%r2
	jne	.L14
.L13:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L15
	l	%r1,116(%r15)
	ahi	%r1,1
	j	.L16
.L15:
	lhi	%r1,0
.L16:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	8
.globl memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,104(%r15)
	j	.L20
.L22:
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L20:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L21
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r15)
	cr	%r1,%r2
	jne	.L22
.L21:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L23
	l	%r1,116(%r15)
	j	.L25
.L23:
	lhi	%r1,0
.L25:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	8
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	j	.L29
.L31:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	ahi	%r1,1
	st	%r1,112(%r15)
.L29:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L30
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L31
.L30:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L32
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r3,%r1
	lr	%r1,%r2
	sr	%r1,%r3
	j	.L34
.L32:
	lhi	%r1,0
.L34:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	j	.L38
.L39:
	l	%r2,112(%r15)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,116(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L38:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L39
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	8
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,104(%r15)
	j	.L44
.L46:
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r15)
	cr	%r1,%r2
	jne	.L44
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	j	.L45
.L44:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L46
	lhi	%r1,0
.L45:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	8
.globl memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L50
.L51:
	l	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,116(%r15)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
.L50:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L51
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.align	8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	j	.L56
.L57:
	l	%r1,96(%r15)
	ahi	%r1,1
	st	%r1,96(%r15)
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L56:
	l	%r1,96(%r15)
	ic	%r2,0(%r1)
	l	%r1,100(%r15)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L57
	l	%r1,100(%r15)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,96(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,96(%r15)
	j	.L62
.L64:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L62:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L63
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r15)
	cr	%r1,%r2
	jne	.L64
.L63:
	l	%r1,100(%r15)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	8
.globl strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,100(%r15)
.L71:
	ic	%r2,0(%r1)
	lhi	%r3,255
	nr	%r3,%r2
	l	%r2,100(%r15)
	cr	%r2,%r3
	jne	.L69
	j	.L70
.L69:
	lr	%r2,%r1
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r2,0(%r2)
	lhi	%r3,255
	nr	%r2,%r3
	ltr	%r2,%r2
	jne	.L71
	lhi	%r1,0
.L70:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	8
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	j	.L75
.L77:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	ahi	%r1,1
	st	%r1,96(%r15)
.L75:
	l	%r1,100(%r15)
	ic	%r2,0(%r1)
	l	%r1,96(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L76
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L77
.L76:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r3,%r1
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	8
.globl strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	j	.L82
.L83:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L82:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L83
	l	%r1,100(%r15)
	s	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	8
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L90
	lhi	%r1,0
	j	.L89
.L92:
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	ahi	%r1,1
	st	%r1,112(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L90:
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L91
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L91
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L91
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L92
.L91:
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r3,%r1
	lr	%r1,%r2
	sr	%r1,%r3
.L89:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	j	.L96
.L97:
	l	%r1,116(%r15)
	ahi	%r1,1
	ic	%r2,0(%r1)
	l	%r1,112(%r15)
	stc	%r2,0(%r1)
	l	%r1,112(%r15)
	ahi	%r1,1
	l	%r2,116(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,112(%r15)
	ahi	%r1,2
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	ahi	%r1,2
	st	%r1,116(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-2
	st	%r1,100(%r15)
.L96:
	l	%r1,100(%r15)
	chi	%r1,1
	jh	.L97
	nopr	%r0
	nopr	%r0
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	8
.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,32
	or	%r1,%r2
	ahi	%r1,-97
	lr	%r2,%r1
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.align	8
.globl isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r2,100(%r15)
	lhi	%r1,127
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.align	8
.globl isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	chi	%r1,32
	je	.L109
	l	%r1,100(%r15)
	chi	%r1,9
	jne	.L110
.L109:
	lhi	%r1,1
	j	.L112
.L110:
	lhi	%r1,0
.L112:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L116
	l	%r1,100(%r15)
	chi	%r1,127
	jne	.L117
.L116:
	lhi	%r1,1
	j	.L119
.L117:
	lhi	%r1,0
.L119:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	8
.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-48
	lr	%r2,%r1
	lhi	%r1,9
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.align	8
.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-33
	lr	%r2,%r1
	lhi	%r1,93
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.align	8
.globl islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-97
	lr	%r2,%r1
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.align	8
.globl isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-32
	lr	%r2,%r1
	lhi	%r1,94
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.align	8
.globl isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	chi	%r1,32
	je	.L139
	l	%r1,100(%r15)
	ahi	%r1,-9
	lhi	%r2,4
	clr	%r1,%r2
	jh	.L140
.L139:
	lhi	%r1,1
	j	.L142
.L140:
	lhi	%r1,0
.L142:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	8
.globl isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-65
	lr	%r2,%r1
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.align	8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L155
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L150
	l	%r1,100(%r15)
	ahi	%r1,-127
	lhi	%r2,32
	clr	%r1,%r2
	jle	.L150
	l	%r1,100(%r15)
	ahi	%r1,-8232
	lhi	%r2,1
	clr	%r1,%r2
	jle	.L150
	l	%r1,.L156-.L155(%r5)
	a	%r1,100(%r15)
	lhi	%r2,2
	clr	%r1,%r2
	jh	.L151
.L150:
	lhi	%r1,1
	j	.L153
.L151:
	lhi	%r1,0
.L153:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L155:
.L156:
	.long	-65529
	.align	2
.text
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r2,100(%r15)
	ahi	%r2,-48
	lhi	%r1,9
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.align	8
.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L169
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,254
	clr	%r1,%r2
	jh	.L162
	l	%r1,100(%r15)
	ahi	%r1,1
	lhi	%r2,127
	nr	%r1,%r2
	lhi	%r2,32
	clr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	j	.L163
.L162:
	l	%r1,100(%r15)
	lhi	%r2,8231
	clr	%r1,%r2
	jle	.L164
	l	%r1,100(%r15)
	ahi	%r1,-8234
	cl	%r1,.L170-.L169(%r5)
	jle	.L164
	l	%r1,.L171-.L169(%r5)
	a	%r1,100(%r15)
	lhi	%r2,8184
	clr	%r1,%r2
	jh	.L165
.L164:
	lhi	%r1,1
	j	.L163
.L165:
	l	%r1,.L172-.L169(%r5)
	a	%r1,100(%r15)
	cl	%r1,.L173-.L169(%r5)
	jh	.L166
	l	%r1,.L174-.L169(%r5)
	n	%r1,100(%r15)
	c	%r1,.L174-.L169(%r5)
	jne	.L167
.L166:
	lhi	%r1,0
	j	.L163
.L167:
	lhi	%r1,1
.L163:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L169:
.L174:
	.long	65534
.L173:
	.long	1048579
.L172:
	.long	-65532
.L171:
	.long	-57344
.L170:
	.long	47061
	.align	2
.text
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L176
	lhi	%r1,32
	o	%r1,100(%r15)
	ahi	%r1,-97
	lhi	%r2,5
	clr	%r1,%r2
	jh	.L177
.L176:
	lhi	%r1,1
	j	.L179
.L177:
	lhi	%r1,0
.L179:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	8
.globl toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	lhi	%r1,127
	n	%r1,100(%r15)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.align	8
.globl fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L196
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L187
	ld	%f0,104(%r15)
	j	.L188
.L187:
	ld	%f0,96(%r15)
	cdb	%f0,96(%r15)
	jno	.L189
	ld	%f0,96(%r15)
	j	.L188
.L189:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnh	.L194
	ld	%f0,104(%r15)
	sdb	%f0,96(%r15)
	j	.L188
.L194:
	ld	%f0,.L197-.L196(%r5)
.L188:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L196:
.L197:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	8
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L208
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	ste	%f2,96(%r15)
	le	%f0,100(%r15)
	ceb	%f0,100(%r15)
	jno	.L199
	le	%f0,100(%r15)
	j	.L200
.L199:
	le	%f0,96(%r15)
	ceb	%f0,96(%r15)
	jno	.L201
	le	%f0,96(%r15)
	j	.L200
.L201:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnh	.L206
	le	%f0,100(%r15)
	seb	%f0,96(%r15)
	j	.L200
.L206:
	le	%f0,.L209-.L208(%r5)
.L200:
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L208:
.L209:
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	8
.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	std	%f0,112(%r15)
	std	%f2,104(%r15)
	ld	%f0,112(%r15)
	cdb	%f0,112(%r15)
	jno	.L211
	lm	%r2,%r3,104(%r15)
	j	.L212
.L211:
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L213
	lm	%r2,%r3,112(%r15)
	j	.L212
.L213:
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L214
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L215
	lm	%r2,%r3,104(%r15)
	j	.L212
.L215:
	lm	%r2,%r3,112(%r15)
	j	.L212
.L214:
	ld	%f0,112(%r15)
	kdb	%f0,104(%r15)
	jnl	.L221
	lm	%r2,%r3,104(%r15)
	j	.L212
.L221:
	lm	%r2,%r3,112(%r15)
.L212:
	stm	%r2,%r3,96(%r15)
	ld	%f0,96(%r15)
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	ste	%f0,108(%r15)
	ste	%f2,104(%r15)
	le	%f0,108(%r15)
	ceb	%f0,108(%r15)
	jno	.L225
	l	%r1,104(%r15)
	j	.L226
.L225:
	le	%f0,104(%r15)
	ceb	%f0,104(%r15)
	jno	.L227
	l	%r1,108(%r15)
	j	.L226
.L227:
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,104(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L228
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L229
	l	%r1,104(%r15)
	j	.L226
.L229:
	l	%r1,108(%r15)
	j	.L226
.L228:
	le	%f0,108(%r15)
	keb	%f0,104(%r15)
	jnl	.L235
	l	%r1,104(%r15)
	j	.L226
.L235:
	l	%r1,108(%r15)
.L226:
	st	%r1,100(%r15)
	le	%f0,100(%r15)
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,132(%r15)
	lr	%r12,%r3
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	lr	%r12,%r4
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	cxbr	%f0,%f1
	jno	.L239
	l	%r1,132(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L240
.L239:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	cxbr	%f0,%f1
	jno	.L241
	l	%r1,132(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L240
.L241:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L242
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L243
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	j	.L244
.L243:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
.L244:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L240
.L242:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jnl	.L249
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	j	.L247
.L249:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
.L247:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L240:
	l	%r2,132(%r15)
	lm	%r12,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	8
.globl fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	std	%f0,112(%r15)
	std	%f2,104(%r15)
	ld	%f0,112(%r15)
	cdb	%f0,112(%r15)
	jno	.L253
	lm	%r2,%r3,104(%r15)
	j	.L254
.L253:
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L255
	lm	%r2,%r3,112(%r15)
	j	.L254
.L255:
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L256
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L257
	lm	%r2,%r3,112(%r15)
	j	.L254
.L257:
	lm	%r2,%r3,104(%r15)
	j	.L254
.L256:
	ld	%f0,112(%r15)
	kdb	%f0,104(%r15)
	jnl	.L263
	lm	%r2,%r3,112(%r15)
	j	.L254
.L263:
	lm	%r2,%r3,104(%r15)
.L254:
	stm	%r2,%r3,96(%r15)
	ld	%f0,96(%r15)
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	8
.globl fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	ste	%f0,108(%r15)
	ste	%f2,104(%r15)
	le	%f0,108(%r15)
	ceb	%f0,108(%r15)
	jno	.L267
	l	%r1,104(%r15)
	j	.L268
.L267:
	le	%f0,104(%r15)
	ceb	%f0,104(%r15)
	jno	.L269
	l	%r1,108(%r15)
	j	.L268
.L269:
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,104(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L270
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L271
	l	%r1,108(%r15)
	j	.L268
.L271:
	l	%r1,104(%r15)
	j	.L268
.L270:
	le	%f0,108(%r15)
	keb	%f0,104(%r15)
	jnl	.L277
	l	%r1,108(%r15)
	j	.L268
.L277:
	l	%r1,104(%r15)
.L268:
	st	%r1,100(%r15)
	le	%f0,100(%r15)
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	8
.globl fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,132(%r15)
	lr	%r12,%r3
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	lr	%r12,%r4
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	cxbr	%f0,%f1
	jno	.L281
	l	%r1,132(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L282
.L281:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	cxbr	%f0,%f1
	jno	.L283
	l	%r1,132(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L282
.L283:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L284
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L285
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	j	.L286
.L285:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
.L286:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L282
.L284:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jnl	.L291
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	j	.L289
.L291:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
.L289:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L282:
	l	%r2,132(%r15)
	lm	%r12,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE36:
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
.LFB37:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,104(%r15)
	larl	%r1,s.0
	st	%r1,108(%r15)
	j	.L295
.L296:
	lhi	%r2,63
	n	%r2,104(%r15)
	larl	%r1,digits
	ic	%r2,0(%r2,%r1)
	l	%r1,108(%r15)
	stc	%r2,0(%r1)
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	srl	%r1,6
	st	%r1,104(%r15)
.L295:
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L296
	l	%r1,108(%r15)
	mvi	0(%r1),0
	larl	%r1,s.0
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	8
.globl srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	lr	%r3,%r1
	lhi	%r2,0
	larl	%r1,seed
	st	%r2,0(%r1)
	st	%r3,4(%r1)
	nopr	%r0
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.align	8
.globl rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r1,seed
	lm	%r0,%r1,0(%r1)
	lr	%r2,%r0
	lr	%r3,%r1
	sldl	%r2,4
	slr	%r3,%r1
	slbr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,6
	slr	%r5,%r3
	slbr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,7
	alr	%r5,%r3
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,2
	lr	%r4,%r2
	lr	%r5,%r3
	alr	%r5,%r1
	alcr	%r4,%r0
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,6
	slr	%r3,%r5
	slbr	%r2,%r4
	sldl	%r2,7
	alr	%r3,%r1
	alcr	%r2,%r0
	sldl	%r2,2
	alr	%r3,%r1
	alcr	%r2,%r0
	lr	%r12,%r2
	lr	%r13,%r3
	sldl	%r12,3
	slr	%r13,%r3
	slbr	%r12,%r2
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,3
	slr	%r5,%r13
	slbr	%r4,%r12
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,6
	slr	%r3,%r5
	slbr	%r2,%r4
	sldl	%r2,2
	slr	%r3,%r1
	slbr	%r2,%r0
	sldl	%r2,7
	slr	%r3,%r1
	slbr	%r2,%r0
	sldl	%r2,2
	alr	%r3,%r1
	alcr	%r2,%r0
	sldl	%r2,2
	slr	%r3,%r1
	slbr	%r2,%r0
	sldl	%r2,2
	slr	%r3,%r1
	slbr	%r2,%r0
	sldl	%r2,2
	alr	%r3,%r1
	alcr	%r2,%r0
	lhi	%r4,0
	lhi	%r5,1
	alr	%r5,%r3
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	larl	%r1,seed
	stm	%r2,%r3,0(%r1)
	larl	%r1,seed
	lm	%r2,%r3,0(%r1)
	srdl	%r2,33
	lr	%r1,%r3
	lr	%r2,%r1
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.align	8
.globl insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	l	%r1,96(%r15)
	st	%r1,104(%r15)
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L308
	l	%r1,108(%r15)
	lhi	%r2,0
	st	%r2,4(%r1)
	l	%r1,108(%r15)
	l	%r2,4(%r1)
	l	%r1,108(%r15)
	st	%r2,0(%r1)
	j	.L307
.L308:
	l	%r1,104(%r15)
	l	%r2,0(%r1)
	l	%r1,108(%r15)
	st	%r2,0(%r1)
	l	%r1,108(%r15)
	l	%r2,104(%r15)
	st	%r2,4(%r1)
	l	%r1,104(%r15)
	l	%r2,108(%r15)
	st	%r2,0(%r1)
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L307
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,108(%r15)
	st	%r2,4(%r1)
.L307:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	8
.globl remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L313
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,108(%r15)
	l	%r2,4(%r2)
	st	%r2,4(%r1)
.L313:
	l	%r1,108(%r15)
	l	%r1,4(%r1)
	ltr	%r1,%r1
	je	.L315
	l	%r1,108(%r15)
	l	%r1,4(%r1)
	l	%r2,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L315:
	nopr	%r0
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	8
.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,116(%r15)
	st	%r3,112(%r15)
	st	%r4,108(%r15)
	st	%r5,104(%r15)
	st	%r6,100(%r15)
	l	%r12,104(%r15)
	lr	%r1,%r12
	ahi	%r1,-1
	st	%r1,128(%r15)
	l	%r1,112(%r15)
	st	%r1,124(%r15)
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	st	%r1,120(%r15)
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L319
.L322:
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,124(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	lr	%r3,%r2
	l	%r2,116(%r15)
	basr	%r14,%r1
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L320
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,124(%r15)
	j	.L321
.L320:
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L319:
	l	%r1,132(%r15)
	cl	%r1,120(%r15)
	jl	.L322
	l	%r2,120(%r15)
	ahi	%r2,1
	l	%r1,108(%r15)
	st	%r2,0(%r1)
	lr	%r1,%r12
	ms	%r1,120(%r15)
	a	%r1,124(%r15)
	l	%r4,104(%r15)
	l	%r3,116(%r15)
	lr	%r2,%r1
	brasl	%r14,memcpy
	lr	%r1,%r2
.L321:
	lr	%r2,%r1
	lm	%r12,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	8
.globl lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,116(%r15)
	st	%r3,112(%r15)
	st	%r4,108(%r15)
	st	%r5,104(%r15)
	st	%r6,100(%r15)
	l	%r12,104(%r15)
	lr	%r1,%r12
	ahi	%r1,-1
	st	%r1,128(%r15)
	l	%r1,112(%r15)
	st	%r1,124(%r15)
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	st	%r1,120(%r15)
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L326
.L329:
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,124(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	lr	%r3,%r2
	l	%r2,116(%r15)
	basr	%r14,%r1
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L327
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,124(%r15)
	j	.L328
.L327:
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L326:
	l	%r1,132(%r15)
	cl	%r1,120(%r15)
	jl	.L329
	lhi	%r1,0
.L328:
	lr	%r2,%r1
	lm	%r12,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.align	8
.globl abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lpr	%r1,%r1
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.align	8
.globl atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	j	.L337
.L338:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L337:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L338
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L339
	chi	%r1,45
	jne	.L341
	lhi	%r1,1
	st	%r1,104(%r15)
.L339:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L341
.L342:
	l	%r2,108(%r15)
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r3,%r1
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r1
	lr	%r1,%r3
	sr	%r1,%r2
	st	%r1,108(%r15)
.L341:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L342
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L343
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L345
.L343:
	l	%r1,108(%r15)
.L345:
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	8
.globl atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	j	.L349
.L350:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L349:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L350
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L351
	chi	%r1,45
	jne	.L353
	lhi	%r1,1
	st	%r1,104(%r15)
.L351:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L353
.L354:
	l	%r2,108(%r15)
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r3,%r1
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r1
	lr	%r1,%r3
	sr	%r1,%r2
	st	%r1,108(%r15)
.L353:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L354
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L355
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L357
.L355:
	l	%r1,108(%r15)
.L357:
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	8
.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,100(%r15)
	lhi	%r2,0
	lhi	%r3,0
	stm	%r2,%r3,112(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L361
.L362:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L361:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L362
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L363
	chi	%r1,45
	jne	.L365
	lhi	%r1,1
	st	%r1,108(%r15)
.L363:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L365
.L366:
	lm	%r4,%r5,112(%r15)
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,2
	alr	%r3,%r5
	alcr	%r2,%r4
	sldl	%r2,1
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	slr	%r5,%r3
	slbr	%r4,%r2
	stm	%r4,%r5,112(%r15)
.L365:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L366
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L367
	lm	%r2,%r3,112(%r15)
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L371
	ahi	%r2,-1
.L371:
	j	.L369
.L367:
	lm	%r2,%r3,112(%r15)
.L369:
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	lm	%r14,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.align	8
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	st	%r2,116(%r15)
	st	%r3,112(%r15)
	st	%r4,108(%r15)
	st	%r5,104(%r15)
	st	%r6,100(%r15)
	j	.L374
.L379:
	l	%r1,108(%r15)
	srl	%r1,1
	ms	%r1,104(%r15)
	a	%r1,112(%r15)
	st	%r1,124(%r15)
	l	%r1,100(%r15)
	l	%r3,124(%r15)
	l	%r2,116(%r15)
	basr	%r14,%r1
	st	%r2,120(%r15)
	l	%r1,120(%r15)
	ltr	%r1,%r1
	jhe	.L375
	l	%r1,108(%r15)
	srl	%r1,1
	st	%r1,108(%r15)
	j	.L374
.L375:
	l	%r1,120(%r15)
	ltr	%r1,%r1
	jle	.L377
	l	%r1,124(%r15)
	a	%r1,104(%r15)
	st	%r1,112(%r15)
	l	%r1,108(%r15)
	srl	%r1,1
	lr	%r2,%r1
	l	%r1,108(%r15)
	sr	%r1,%r2
	ahi	%r1,-1
	st	%r1,108(%r15)
	j	.L374
.L377:
	l	%r1,124(%r15)
	j	.L378
.L374:
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L379
	lhi	%r1,0
.L378:
	lr	%r2,%r1
	lm	%r14,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.align	8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,116(%r15)
	st	%r3,112(%r15)
	st	%r4,108(%r15)
	st	%r5,104(%r15)
	st	%r6,100(%r15)
	l	%r1,112(%r15)
	st	%r1,132(%r15)
	l	%r1,108(%r15)
	st	%r1,128(%r15)
	j	.L383
.L387:
	l	%r1,128(%r15)
	sra	%r1,1
	ms	%r1,104(%r15)
	a	%r1,132(%r15)
	st	%r1,124(%r15)
	l	%r1,100(%r15)
	l	%r4,232(%r15)
	l	%r3,124(%r15)
	l	%r2,116(%r15)
	basr	%r14,%r1
	st	%r2,120(%r15)
	l	%r1,120(%r15)
	ltr	%r1,%r1
	jne	.L384
	l	%r1,124(%r15)
	j	.L385
.L384:
	l	%r1,120(%r15)
	ltr	%r1,%r1
	jle	.L386
	l	%r1,124(%r15)
	a	%r1,104(%r15)
	st	%r1,132(%r15)
	l	%r1,128(%r15)
	ahi	%r1,-1
	st	%r1,128(%r15)
.L386:
	l	%r1,128(%r15)
	sra	%r1,1
	st	%r1,128(%r15)
.L383:
	l	%r1,128(%r15)
	ltr	%r1,%r1
	jne	.L387
	lhi	%r1,0
.L385:
	lr	%r2,%r1
	lm	%r14,%r15,192(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	8
.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r2,104(%r15)
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r15)
	lr	%r1,%r3
	lr	%r4,%r1
	l	%r1,104(%r15)
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r15)
	lr	%r1,%r2
	lr	%r2,%r1
	l	%r1,108(%r15)
	st	%r4,0(%r1)
	l	%r1,108(%r15)
	st	%r2,4(%r1)
	l	%r2,108(%r15)
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.align	8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	ltr	%r2,%r2
	jhe	.L395
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L399
	ahi	%r2,-1
.L399:
.L395:
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,116(%r15)
	stm	%r3,%r4,104(%r15)
	stm	%r5,%r6,96(%r15)
	lm	%r4,%r5,96(%r15)
	lm	%r2,%r3,104(%r15)
	brasl	%r14,__divdi3
	lr	%r1,%r3
	lr	%r11,%r2
	lr	%r12,%r1
	lm	%r2,%r3,104(%r15)
	lm	%r4,%r5,96(%r15)
	brasl	%r14,__moddi3
	lr	%r1,%r3
	lr	%r3,%r2
	lr	%r2,%r1
	l	%r1,116(%r15)
	st	%r11,0(%r1)
	st	%r12,4(%r1)
	l	%r1,116(%r15)
	st	%r3,8(%r1)
	st	%r2,12(%r1)
	l	%r2,116(%r15)
	lm	%r11,%r15,180(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.align	8
.globl labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lpr	%r1,%r1
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.align	8
.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r2,104(%r15)
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r15)
	lr	%r1,%r3
	lr	%r4,%r1
	l	%r1,104(%r15)
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r15)
	lr	%r1,%r2
	lr	%r2,%r1
	l	%r1,108(%r15)
	st	%r4,0(%r1)
	l	%r1,108(%r15)
	st	%r2,4(%r1)
	l	%r2,108(%r15)
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.align	8
.globl llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	ltr	%r2,%r2
	jhe	.L414
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L418
	ahi	%r2,-1
.L418:
.L414:
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.align	8
.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,116(%r15)
	stm	%r3,%r4,104(%r15)
	stm	%r5,%r6,96(%r15)
	lm	%r4,%r5,96(%r15)
	lm	%r2,%r3,104(%r15)
	brasl	%r14,__divdi3
	lr	%r1,%r3
	lr	%r11,%r2
	lr	%r12,%r1
	lm	%r2,%r3,104(%r15)
	lm	%r4,%r5,96(%r15)
	brasl	%r14,__moddi3
	lr	%r1,%r3
	lr	%r3,%r2
	lr	%r2,%r1
	l	%r1,116(%r15)
	st	%r11,0(%r1)
	st	%r12,4(%r1)
	l	%r1,116(%r15)
	st	%r3,8(%r1)
	st	%r2,12(%r1)
	l	%r2,116(%r15)
	lm	%r11,%r15,180(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.align	8
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	j	.L425
.L427:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
.L425:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L426
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	cr	%r2,%r1
	jne	.L427
.L426:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L428
	l	%r1,100(%r15)
	j	.L430
.L428:
	lhi	%r1,0
.L430:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	j	.L434
.L436:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	ahi	%r1,4
	st	%r1,96(%r15)
.L434:
	l	%r1,100(%r15)
	l	%r2,0(%r1)
	l	%r1,96(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L435
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L435
	l	%r1,96(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L436
.L435:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L437
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L438
	lhi	%r2,0
.L438:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L440
.L437:
	lhi	%r1,-1
.L440:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	nopr	%r0
.L444:
	l	%r2,96(%r15)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,96(%r15)
	l	%r1,100(%r15)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,100(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L444
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	8
.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	j	.L449
.L450:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
.L449:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L450
	l	%r1,100(%r15)
	s	%r1,108(%r15)
	sra	%r1,2
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	j	.L455
.L457:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,4
	st	%r1,104(%r15)
.L455:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L456
	l	%r1,108(%r15)
	l	%r2,0(%r1)
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L456
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L456
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L457
.L456:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L458
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L459
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L460
	lhi	%r2,0
.L460:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L463
.L459:
	lhi	%r1,-1
	j	.L463
.L458:
	lhi	%r1,0
.L463:
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	j	.L467
.L469:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
.L467:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L468
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	cr	%r2,%r1
	jne	.L469
.L468:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L470
	l	%r1,108(%r15)
	j	.L472
.L470:
	lhi	%r1,0
.L472:
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	j	.L476
.L478:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,4
	st	%r1,104(%r15)
.L476:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L477
	l	%r1,108(%r15)
	l	%r2,0(%r1)
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	je	.L478
.L477:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L479
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L480
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L481
	lhi	%r2,0
.L481:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L484
.L480:
	lhi	%r1,-1
	j	.L484
.L479:
	lhi	%r1,0
.L484:
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L488
.L489:
	l	%r2,104(%r15)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,104(%r15)
	l	%r1,108(%r15)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L488:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L489
	l	%r1,116(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,108(%r15)
	c	%r1,104(%r15)
	jne	.L494
	l	%r1,108(%r15)
	j	.L495
.L494:
	l	%r1,108(%r15)
	l	%r2,104(%r15)
	sr	%r1,%r2
	l	%r2,100(%r15)
	sll	%r2,2
	clr	%r1,%r2
	jhe	.L500
	j	.L497
.L498:
	l	%r1,100(%r15)
	sll	%r1,2
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	sll	%r1,2
	a	%r1,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L497:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L498
	j	.L499
.L501:
	l	%r2,104(%r15)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,104(%r15)
	l	%r1,108(%r15)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L500:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L501
.L499:
	l	%r1,116(%r15)
.L495:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	8
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L505
.L506:
	l	%r1,108(%r15)
	lr	%r2,%r1
	ahi	%r2,4
	st	%r2,108(%r15)
	l	%r2,104(%r15)
	st	%r2,0(%r1)
.L505:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L506
	l	%r1,116(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	cl	%r1,112(%r15)
	jhe	.L511
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	a	%r1,100(%r15)
	st	%r1,112(%r15)
	j	.L512
.L513:
	l	%r1,116(%r15)
	ahi	%r1,-1
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	ahi	%r1,-1
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,112(%r15)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L512:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L513
	j	.L517
.L511:
	l	%r1,116(%r15)
	c	%r1,112(%r15)
	je	.L517
	j	.L515
.L516:
	l	%r2,116(%r15)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,112(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L515:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L516
.L517:
	nopr	%r0
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	8
.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	stm	%r2,%r3,104(%r15)
	st	%r4,100(%r15)
	lm	%r2,%r3,104(%r15)
	l	%r1,100(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,0(%r1)
	l	%r1,100(%r15)
	lcr	%r1,%r1
	lhi	%r0,63
	nr	%r1,%r0
	srdl	%r2,0(%r1)
	lr	%r0,%r2
	or	%r0,%r4
	lr	%r1,%r5
	or	%r1,%r3
	lr	%r2,%r0
	lr	%r3,%r1
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	8
.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	stm	%r2,%r3,104(%r15)
	st	%r4,100(%r15)
	lm	%r2,%r3,104(%r15)
	l	%r1,100(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,0(%r1)
	l	%r1,100(%r15)
	lcr	%r1,%r1
	lhi	%r0,63
	nr	%r1,%r0
	sldl	%r2,0(%r1)
	lr	%r0,%r2
	or	%r0,%r4
	lr	%r1,%r5
	or	%r1,%r3
	lr	%r2,%r0
	lr	%r3,%r1
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	8
.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,96(%r15)
	l	%r2,100(%r15)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.align	8
.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,32
	s	%r1,96(%r15)
	l	%r2,100(%r15)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,96(%r15)
	l	%r2,100(%r15)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,32
	s	%r1,96(%r15)
	l	%r2,100(%r15)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.align	8
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L547
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	sth	%r1,102(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L548-.L547(%r5)
	nr	%r2,%r1
	l	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r15)
	l	%r2,.L548-.L547(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L548-.L547(%r5)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L547:
.L548:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L552
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	sth	%r1,102(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L553-.L552(%r5)
	nr	%r2,%r1
	l	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r15)
	l	%r2,.L553-.L552(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L553-.L552(%r5)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L552:
.L553:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	8
.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	stc	%r1,103(%r15)
	ic	%r1,103(%r15)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	ic	%r1,103(%r15)
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r1,8
	s	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.align	8
.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	stc	%r1,103(%r15)
	ic	%r1,103(%r15)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	ic	%r1,103(%r15)
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r1,8
	s	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.align	8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L565
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r1,102(%r15)
	lhi	%r1,255
	st	%r1,108(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L566-.L565(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sll	%r1,8
	nr	%r1,%r2
	srl	%r1,8
	lr	%r2,%r1
	l	%r1,108(%r15)
	lr	%r3,%r1
	lh	%r1,102(%r15)
	nr	%r1,%r3
	sll	%r1,8
	or	%r1,%r2
	n	%r1,.L566-.L565(%r5)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L565:
.L566:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	lhi	%r1,255
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	sll	%r1,24
	n	%r1,100(%r15)
	srl	%r1,24
	lr	%r2,%r1
	l	%r1,108(%r15)
	sll	%r1,16
	n	%r1,100(%r15)
	srl	%r1,8
	or	%r2,%r1
	l	%r1,108(%r15)
	sll	%r1,8
	n	%r1,100(%r15)
	sll	%r1,8
	or	%r2,%r1
	l	%r1,100(%r15)
	n	%r1,108(%r15)
	sll	%r1,24
	or	%r1,%r2
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	stm	%r6,%r15,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	stm	%r2,%r3,120(%r15)
	lhi	%r2,0
	lhi	%r3,255
	stm	%r2,%r3,128(%r15)
	lm	%r2,%r3,128(%r15)
	sldl	%r2,56
	lr	%r1,%r2
	n	%r1,120(%r15)
	lr	%r4,%r1
	lr	%r1,%r3
	n	%r1,124(%r15)
	lr	%r5,%r1
	srdl	%r4,56
	lm	%r2,%r3,128(%r15)
	sldl	%r2,48
	lr	%r1,%r2
	n	%r1,120(%r15)
	st	%r1,96(%r15)
	lr	%r1,%r3
	n	%r1,124(%r15)
	st	%r1,100(%r15)
	lm	%r2,%r3,96(%r15)
	srdl	%r2,40
	lr	%r0,%r4
	or	%r0,%r2
	lr	%r1,%r5
	or	%r1,%r3
	lm	%r2,%r3,128(%r15)
	sldl	%r2,40
	lr	%r4,%r2
	n	%r4,120(%r15)
	st	%r4,104(%r15)
	lr	%r2,%r3
	n	%r2,124(%r15)
	st	%r2,108(%r15)
	lm	%r2,%r3,104(%r15)
	srdl	%r2,24
	lr	%r4,%r0
	or	%r4,%r2
	or	%r1,%r3
	lm	%r2,%r3,128(%r15)
	sldl	%r2,32
	lr	%r5,%r2
	n	%r5,120(%r15)
	st	%r5,112(%r15)
	lr	%r2,%r3
	n	%r2,124(%r15)
	st	%r2,116(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,8
	or	%r4,%r2
	or	%r1,%r3
	lm	%r2,%r3,128(%r15)
	sldl	%r2,24
	lr	%r5,%r2
	n	%r5,120(%r15)
	lr	%r6,%r5
	lr	%r2,%r3
	n	%r2,124(%r15)
	lr	%r7,%r2
	lr	%r2,%r6
	lr	%r3,%r7
	sldl	%r2,8
	or	%r4,%r2
	or	%r1,%r3
	lm	%r2,%r3,128(%r15)
	sldl	%r2,16
	lr	%r5,%r2
	n	%r5,120(%r15)
	lr	%r8,%r5
	lr	%r2,%r3
	n	%r2,124(%r15)
	lr	%r9,%r2
	lr	%r2,%r8
	lr	%r3,%r9
	sldl	%r2,24
	or	%r4,%r2
	or	%r1,%r3
	lm	%r2,%r3,128(%r15)
	sldl	%r2,8
	lr	%r5,%r2
	n	%r5,120(%r15)
	lr	%r10,%r5
	lr	%r2,%r3
	n	%r2,124(%r15)
	lr	%r11,%r2
	lr	%r2,%r10
	lr	%r3,%r11
	sldl	%r2,40
	or	%r4,%r2
	or	%r1,%r3
	l	%r2,120(%r15)
	n	%r2,128(%r15)
	lr	%r12,%r2
	l	%r2,124(%r15)
	n	%r2,132(%r15)
	lr	%r13,%r2
	lr	%r2,%r12
	lr	%r3,%r13
	sldl	%r2,56
	or	%r4,%r2
	or	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	lm	%r6,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.align	8
.globl ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L576
.L579:
	l	%r2,100(%r15)
	l	%r1,108(%r15)
	srl	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L577
	l	%r1,108(%r15)
	ahi	%r1,1
	j	.L578
.L577:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L576:
	l	%r1,108(%r15)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L579
	lhi	%r1,0
.L578:
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	ltr	%r2,%r2
	jne	.L583
	lhi	%r1,0
	j	.L588
.L583:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r1,%r2
	lhi	%r12,1
	j	.L585
.L586:
	sra	%r1,1
	ahi	%r12,1
.L585:
	lhi	%r2,1
	nr	%r2,%r1
	ltr	%r2,%r2
	je	.L586
	lr	%r1,%r12
	lr	%r2,%r1
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L588:
	lr	%r2,%r1
	br	%r14
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L599
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	le	%f0,100(%r15)
	keb	%f0,.L600-.L599(%r5)
	jl	.L592
	le	%f0,100(%r15)
	keb	%f0,.L601-.L599(%r5)
	jnh	.L597
.L592:
	lhi	%r1,1
	j	.L596
.L597:
	lhi	%r1,0
.L596:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L599:
.L601:
	.long	2139095039
.L600:
	.long	-8388609
	.align	2
.text
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L610
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	std	%f0,96(%r15)
	ld	%f0,96(%r15)
	kdb	%f0,.L611-.L610(%r5)
	jl	.L603
	ld	%f0,96(%r15)
	kdb	%f0,.L612-.L610(%r5)
	jnh	.L608
.L603:
	lhi	%r1,1
	j	.L607
.L608:
	lhi	%r1,0
.L607:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L610:
.L612:
	.long	2146435071
	.long	-1
.L611:
	.long	-1048577
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	larl	%r5,.L621
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r12,%r2
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,.L622-.L621(%r5)
	ld	%f3,.L622-.L621+8(%r5)
	kxbr	%f0,%f1
	jl	.L614
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,.L623-.L621(%r5)
	ld	%f3,.L623-.L621+8(%r5)
	kxbr	%f0,%f1
	jnh	.L619
.L614:
	lhi	%r1,1
	j	.L618
.L619:
	lhi	%r1,0
.L618:
	lr	%r2,%r1
	lm	%r12,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L621:
.L623:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L622:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.align	8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,96(%r15)
	cdfbr	%f0,%r1
	lxdbr	%f0,%f0
	l	%r1,100(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	nopr	%r0
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L637
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	ste	%f0,108(%r15)
	st	%r2,104(%r15)
	le	%f0,108(%r15)
	ceb	%f0,108(%r15)
	jo	.L628
	le	%f0,108(%r15)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,108(%r15)
	cebr	%f0,%f2
	je	.L628
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L629
	l	%r1,.L638-.L637(%r5)
	j	.L630
.L629:
	l	%r1,.L639-.L637(%r5)
.L630:
	st	%r1,116(%r15)
.L633:
	l	%r1,104(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L631
	le	%f0,108(%r15)
	meeb	%f0,116(%r15)
	ste	%f0,108(%r15)
.L631:
	l	%r1,104(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,104(%r15)
	l	%r1,104(%r15)
	ltr	%r1,%r1
	je	.L635
	le	%f0,116(%r15)
	meeb	%f0,116(%r15)
	ste	%f0,116(%r15)
	j	.L633
.L635:
	nopr	%r0
.L628:
	l	%r1,108(%r15)
	st	%r1,100(%r15)
	le	%f0,100(%r15)
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L637:
.L639:
	.long	1073741824
.L638:
	.long	1056964608
	.align	2
.text
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	8
.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L650
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	std	%f0,112(%r15)
	st	%r2,108(%r15)
	ld	%f0,112(%r15)
	cdb	%f0,112(%r15)
	jo	.L641
	ld	%f0,112(%r15)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,112(%r15)
	cdbr	%f0,%f2
	je	.L641
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jhe	.L642
	lm	%r2,%r3,.L651-.L650(%r5)
	j	.L643
.L642:
	lm	%r2,%r3,.L652-.L650(%r5)
.L643:
	stm	%r2,%r3,120(%r15)
.L646:
	l	%r1,108(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L644
	ld	%f0,112(%r15)
	mdb	%f0,120(%r15)
	std	%f0,112(%r15)
.L644:
	l	%r1,108(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	ltr	%r1,%r1
	je	.L648
	ld	%f0,120(%r15)
	mdb	%f0,120(%r15)
	std	%f0,120(%r15)
	j	.L646
.L648:
	nopr	%r0
.L641:
	lm	%r2,%r3,112(%r15)
	stm	%r2,%r3,96(%r15)
	ld	%f0,96(%r15)
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L650:
.L652:
	.long	1073741824
	.long	0
.L651:
	.long	1071644672
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	larl	%r5,.L663
	std	%f4,80(%r15)
	std	%f6,88(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	.cfi_offset 18, -16
	.cfi_offset 19, -8
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,116(%r15)
	lr	%r12,%r3
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	st	%r4,112(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f4,96(%r15)
	ld	%f6,104(%r15)
	cxbr	%f0,%f4
	jo	.L654
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	axbr	%f0,%f0
	ld	%f4,96(%r15)
	ld	%f6,104(%r15)
	cxbr	%f4,%f0
	je	.L654
	l	%r1,112(%r15)
	ltr	%r1,%r1
	jhe	.L655
	ld	%f0,.L664-.L663(%r5)
	ld	%f2,.L664-.L663+8(%r5)
	j	.L656
.L655:
	ld	%f0,.L665-.L663(%r5)
	ld	%f2,.L665-.L663+8(%r5)
.L656:
	std	%f0,120(%r15)
	std	%f2,128(%r15)
.L659:
	l	%r1,112(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L657
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f4,120(%r15)
	ld	%f6,128(%r15)
	mxbr	%f0,%f4
	std	%f0,96(%r15)
	std	%f2,104(%r15)
.L657:
	l	%r1,112(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	ltr	%r1,%r1
	je	.L661
	ld	%f0,120(%r15)
	ld	%f2,128(%r15)
	ld	%f4,120(%r15)
	ld	%f6,128(%r15)
	mxbr	%f0,%f4
	std	%f0,120(%r15)
	std	%f2,128(%r15)
	j	.L659
.L661:
	nopr	%r0
.L654:
	l	%r1,116(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	l	%r2,116(%r15)
	ld	%f4,216(%r15)
	ld	%f6,224(%r15)
	lm	%r12,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 19
	.cfi_restore 18
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L663:
.L665:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L664:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	8
.globl memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,104(%r15)
	st	%r1,116(%r15)
	l	%r1,108(%r15)
	st	%r1,112(%r15)
	j	.L667
.L668:
	l	%r1,116(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,116(%r15)
	ic	%r3,0(%r1)
	l	%r1,112(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,112(%r15)
	ic	%r2,0(%r1)
	xr	%r2,%r3
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L667:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L668
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r2,108(%r15)
	brasl	%r14,strlen
	lr	%r1,%r2
	a	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L673
.L675:
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L673:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L674
	l	%r1,104(%r15)
	ic	%r2,0(%r1)
	l	%r1,116(%r15)
	stc	%r2,0(%r1)
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L675
.L674:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L676
	l	%r1,116(%r15)
	mvi	0(%r1),0
.L676:
	l	%r1,108(%r15)
	lr	%r2,%r1
	lm	%r14,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	8
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L681
.L686:
	nopr	%r0
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L681:
	l	%r1,108(%r15)
	cl	%r1,96(%r15)
	jhe	.L682
	l	%r1,100(%r15)
	a	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L686
.L682:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	j	.L690
.L694:
	l	%r1,96(%r15)
	st	%r1,108(%r15)
	j	.L691
.L693:
	l	%r1,108(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,108(%r15)
	ic	%r2,0(%r1)
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L691
	l	%r1,100(%r15)
	j	.L692
.L691:
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L693
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L690:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L694
	lhi	%r1,0
.L692:
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	8
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	st	%r3,100(%r15)
	lhi	%r2,0
	st	%r2,108(%r15)
.L699:
	ic	%r2,0(%r1)
	lhi	%r3,255
	nr	%r3,%r2
	l	%r2,100(%r15)
	cr	%r2,%r3
	jne	.L698
	st	%r1,108(%r15)
.L698:
	lr	%r2,%r1
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r2,0(%r2)
	lhi	%r3,255
	nr	%r2,%r3
	ltr	%r2,%r2
	jne	.L699
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	8
.globl strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	l	%r2,96(%r15)
	brasl	%r14,strlen
	st	%r2,104(%r15)
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L706
	l	%r1,100(%r15)
	j	.L705
.L708:
	l	%r4,104(%r15)
	l	%r3,96(%r15)
	l	%r2,108(%r15)
	brasl	%r14,strncmp
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L707
	l	%r1,108(%r15)
	j	.L705
.L707:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L706:
	l	%r1,96(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r3,%r1
	l	%r2,108(%r15)
	brasl	%r14,strchr
	st	%r2,108(%r15)
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L708
	lhi	%r1,0
.L705:
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L722
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	kdb	%f0,.L723-.L722(%r5)
	jnl	.L712
	ld	%f0,96(%r15)
	kdb	%f0,.L723-.L722(%r5)
	jh	.L714
.L712:
	ld	%f0,104(%r15)
	kdb	%f0,.L723-.L722(%r5)
	jnh	.L715
	ld	%f0,96(%r15)
	kdb	%f0,.L723-.L722(%r5)
	jnl	.L715
.L714:
	ld	%f0,104(%r15)
	lcdbr	%f0,%f0
	j	.L718
.L715:
	ld	%f0,104(%r15)
.L718:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L722:
.L723:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	8
.globl memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	st	%r5,96(%r15)
	l	%r1,104(%r15)
	s	%r1,96(%r15)
	a	%r1,108(%r15)
	st	%r1,112(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jne	.L725
	l	%r1,108(%r15)
	j	.L726
.L725:
	l	%r2,104(%r15)
	l	%r1,96(%r15)
	clr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L727
	lhi	%r1,0
	j	.L726
.L727:
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L728
.L730:
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L729
	l	%r1,116(%r15)
	ahi	%r1,1
	l	%r2,100(%r15)
	ahi	%r2,1
	l	%r3,96(%r15)
	ahi	%r3,-1
	lr	%r4,%r3
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,memcmp
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L729
	l	%r1,116(%r15)
	j	.L726
.L729:
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
.L728:
	l	%r1,116(%r15)
	cl	%r1,112(%r15)
	jle	.L730
	lhi	%r1,0
.L726:
	lr	%r2,%r1
	lm	%r14,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r2,108(%r15)
	brasl	%r14,memcpy
	lr	%r1,%r2
	a	%r1,100(%r15)
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.align	8
.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L755
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	std	%f0,112(%r15)
	st	%r2,108(%r15)
	lhi	%r1,0
	st	%r1,120(%r15)
	lhi	%r1,0
	st	%r1,124(%r15)
	ld	%f0,112(%r15)
	kdb	%f0,.L756-.L755(%r5)
	jnl	.L738
	ld	%f0,112(%r15)
	lcdbr	%f0,%f0
	std	%f0,112(%r15)
	lhi	%r1,1
	st	%r1,124(%r15)
.L738:
	ld	%f0,112(%r15)
	kdb	%f0,.L757-.L755(%r5)
	jnhe	.L753
	j	.L742
.L743:
	l	%r1,120(%r15)
	ahi	%r1,1
	st	%r1,120(%r15)
	ld	%f0,112(%r15)
	ddb	%f0,.L758-.L755(%r5)
	std	%f0,112(%r15)
.L742:
	ld	%f0,112(%r15)
	kdb	%f0,.L757-.L755(%r5)
	jhe	.L743
	j	.L744
.L753:
	ld	%f0,112(%r15)
	kdb	%f0,.L759-.L755(%r5)
	jnl	.L744
	ld	%f0,112(%r15)
	cdb	%f0,.L756-.L755(%r5)
	je	.L744
	j	.L746
.L747:
	l	%r1,120(%r15)
	ahi	%r1,-1
	st	%r1,120(%r15)
	ld	%f0,112(%r15)
	adbr	%f0,%f0
	std	%f0,112(%r15)
.L746:
	ld	%f0,112(%r15)
	kdb	%f0,.L759-.L755(%r5)
	jl	.L747
.L744:
	l	%r1,108(%r15)
	l	%r2,120(%r15)
	st	%r2,0(%r1)
	l	%r1,124(%r15)
	ltr	%r1,%r1
	je	.L748
	ld	%f0,112(%r15)
	lcdbr	%f0,%f0
	std	%f0,112(%r15)
.L748:
	lm	%r2,%r3,112(%r15)
	stm	%r2,%r3,96(%r15)
	ld	%f0,96(%r15)
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L755:
.L759:
	.long	1071644672
	.long	0
.L758:
	.long	1073741824
	.long	0
.L757:
	.long	1072693248
	.long	0
.L756:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	stm	%r2,%r3,104(%r15)
	stm	%r4,%r5,96(%r15)
	lhi	%r2,0
	lhi	%r3,0
	stm	%r2,%r3,120(%r15)
	lm	%r2,%r3,104(%r15)
	stm	%r2,%r3,112(%r15)
	j	.L761
.L764:
	lhi	%r1,0
	n	%r1,112(%r15)
	lhi	%r2,1
	n	%r2,116(%r15)
	or	%r1,%r2
	ltr	%r1,%r1
	je	.L762
	lm	%r2,%r3,96(%r15)
	al	%r3,124(%r15)
	alc	%r2,120(%r15)
	stm	%r2,%r3,120(%r15)
.L762:
	lm	%r2,%r3,96(%r15)
	sldl	%r2,1
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,1
	stm	%r2,%r3,112(%r15)
.L761:
	l	%r1,112(%r15)
	o	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L764
	l	%r2,120(%r15)
	l	%r1,124(%r15)
	lr	%r3,%r1
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.align	8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	lhi	%r1,1
	st	%r1,116(%r15)
	lhi	%r1,0
	st	%r1,112(%r15)
	j	.L769
.L771:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L769:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L772
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L772
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L771
	j	.L772
.L774:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L773
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L773:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L772:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L774
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L775
	l	%r1,108(%r15)
	j	.L776
.L775:
	l	%r1,112(%r15)
.L776:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	stc	%r2,103(%r15)
	ic	%r1,103(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L780
	lhi	%r1,7
	j	.L781
.L780:
	ic	%r1,103(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	sll	%r1,8
	lr	%r2,%r1
	brasl	%r14,__clzsi2
	lr	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	ahi	%r1,-1
.L781:
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	stm	%r2,%r3,96(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L785
	l	%r1,96(%r15)
	lhi	%r2,-1
	xr	%r2,%r1
	l	%r1,100(%r15)
	lhi	%r3,-1
	xr	%r1,%r3
	st	%r2,96(%r15)
	st	%r1,100(%r15)
.L785:
	l	%r1,96(%r15)
	o	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L787
	lhi	%r1,63
	j	.L788
.L787:
	lm	%r2,%r3,96(%r15)
	brasl	%r14,__clzdi2
	lr	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	ahi	%r1,-1
.L788:
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L792
.L794:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L793
	l	%r1,108(%r15)
	a	%r1,96(%r15)
	st	%r1,108(%r15)
.L793:
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sll	%r1,1
	st	%r1,96(%r15)
.L792:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L794
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,3
	st	%r1,124(%r15)
	lhi	%r1,-8
	n	%r1,100(%r15)
	st	%r1,128(%r15)
	l	%r1,108(%r15)
	st	%r1,120(%r15)
	l	%r1,104(%r15)
	st	%r1,116(%r15)
	l	%r1,120(%r15)
	cl	%r1,116(%r15)
	jl	.L799
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	clr	%r1,%r2
	jle	.L806
.L799:
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L801
.L802:
	l	%r1,132(%r15)
	sll	%r1,3
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,132(%r15)
	sll	%r1,3
	a	%r1,108(%r15)
	lm	%r2,%r3,0(%r2)
	stm	%r2,%r3,0(%r1)
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L801:
	l	%r1,132(%r15)
	cl	%r1,124(%r15)
	jl	.L802
	j	.L803
.L804:
	l	%r2,116(%r15)
	a	%r2,128(%r15)
	l	%r1,120(%r15)
	a	%r1,128(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,128(%r15)
	ahi	%r1,1
	st	%r1,128(%r15)
.L803:
	l	%r1,100(%r15)
	cl	%r1,128(%r15)
	jh	.L804
	j	.L805
.L807:
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L806:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L807
	nopr	%r0
.L805:
	nopr	%r0
	l	%r15,196(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,120(%r15)
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	cl	%r1,112(%r15)
	jl	.L811
	l	%r2,112(%r15)
	a	%r2,100(%r15)
	l	%r1,116(%r15)
	clr	%r1,%r2
	jle	.L817
.L811:
	lhi	%r1,0
	st	%r1,124(%r15)
	j	.L813
.L814:
	l	%r1,124(%r15)
	sll	%r1,1
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,124(%r15)
	sll	%r1,1
	a	%r1,108(%r15)
	lh	%r2,0(%r2)
	sth	%r2,0(%r1)
	l	%r1,124(%r15)
	ahi	%r1,1
	st	%r1,124(%r15)
.L813:
	l	%r1,124(%r15)
	cl	%r1,120(%r15)
	jl	.L814
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L816
	l	%r1,100(%r15)
	ahi	%r1,-1
	a	%r1,112(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	ahi	%r1,-1
	a	%r1,116(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	j	.L816
.L818:
	l	%r2,112(%r15)
	a	%r2,100(%r15)
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L817:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L818
	nopr	%r0
.L816:
	nopr	%r0
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,2
	st	%r1,124(%r15)
	lhi	%r1,-4
	n	%r1,100(%r15)
	st	%r1,128(%r15)
	l	%r1,108(%r15)
	st	%r1,120(%r15)
	l	%r1,104(%r15)
	st	%r1,116(%r15)
	l	%r1,120(%r15)
	cl	%r1,116(%r15)
	jl	.L822
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	clr	%r1,%r2
	jle	.L829
.L822:
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L824
.L825:
	l	%r1,132(%r15)
	sll	%r1,2
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,132(%r15)
	sll	%r1,2
	a	%r1,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L824:
	l	%r1,132(%r15)
	cl	%r1,124(%r15)
	jl	.L825
	j	.L826
.L827:
	l	%r2,116(%r15)
	a	%r2,128(%r15)
	l	%r1,120(%r15)
	a	%r1,128(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,128(%r15)
	ahi	%r1,1
	st	%r1,128(%r15)
.L826:
	l	%r1,100(%r15)
	cl	%r1,128(%r15)
	jh	.L827
	j	.L828
.L830:
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L829:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L830
	nopr	%r0
.L828:
	nopr	%r0
	l	%r15,196(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	8
.globl __modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,100(%r15)
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	d	%r2,96(%r15)
	lr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.align	8
.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L841
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	cdfbr	%f0,%r1
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L839
	adb	%f0,.L842-.L841(%r5)
.L839:
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L841:
.L842:
	.long	1106247680
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.align	8
.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L847
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	cdfbr	%f0,%r1
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L844
	adb	%f0,.L848-.L847(%r5)
.L844:
	ledbr	%f0,%f0
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L847:
.L848:
	.long	1106247680
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	brasl	%r14,__floatundidf
	lm	%r14,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.align	8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	brasl	%r14,__floatundisf
	lm	%r14,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.align	8
.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,100(%r15)
	lr	%r3,%r1
	lhi	%r2,0
	dl	%r2,96(%r15)
	lr	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.align	8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L869
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L862
.L865:
	lh	%r1,102(%r15)
	l	%r2,.L870-.L869(%r5)
	nr	%r2,%r1
	lhi	%r1,15
	s	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L867
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L862:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L865
	j	.L864
.L867:
	nopr	%r0
.L864:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L869:
.L870:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L879
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L872
.L875:
	lh	%r1,102(%r15)
	l	%r2,.L880-.L879(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L877
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L872:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L875
	j	.L874
.L877:
	nopr	%r0
.L874:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L879:
.L880:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L888
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	le	%f0,100(%r15)
	keb	%f0,.L889-.L888(%r5)
	jnhe	.L886
	le	%f0,100(%r15)
	seb	%f0,.L889-.L888(%r5)
	cfebr	%r1,5,%f0
	a	%r1,.L890-.L888(%r5)
	j	.L884
.L886:
	le	%f0,100(%r15)
	cfebr	%r1,5,%f0
.L884:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L888:
.L889:
	.long	1191182336
.L890:
	.long	32768
	.align	2
.text
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L897
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L892
.L894:
	lh	%r1,102(%r15)
	l	%r2,.L898-.L897(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L893
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
.L893:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L892:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L894
	lhi	%r1,1
	n	%r1,104(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L897:
.L898:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L905
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L900
.L902:
	lh	%r1,102(%r15)
	l	%r2,.L906-.L905(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L901
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
.L901:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L900:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L902
	l	%r1,104(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L905:
.L906:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L908
.L910:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L909
	l	%r1,108(%r15)
	a	%r1,96(%r15)
	st	%r1,108(%r15)
.L909:
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sll	%r1,1
	st	%r1,96(%r15)
.L908:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L910
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L917
	lhi	%r1,0
	j	.L916
.L919:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L918
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,108(%r15)
.L918:
	l	%r1,100(%r15)
	sll	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	srl	%r1,1
	st	%r1,96(%r15)
.L917:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jne	.L919
	l	%r1,108(%r15)
.L916:
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	lhi	%r1,1
	st	%r1,116(%r15)
	lhi	%r1,0
	st	%r1,112(%r15)
	j	.L923
.L925:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L923:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L926
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L926
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L925
	j	.L926
.L928:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L927
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L927:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L926:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L928
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L929
	l	%r1,108(%r15)
	j	.L930
.L929:
	l	%r1,112(%r15)
.L930:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	ste	%f2,96(%r15)
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnl	.L941
	lhi	%r1,-1
	j	.L936
.L941:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnh	.L942
	lhi	%r1,1
	j	.L936
.L942:
	lhi	%r1,0
.L936:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnl	.L953
	lhi	%r1,-1
	j	.L948
.L953:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnh	.L954
	lhi	%r1,1
	j	.L948
.L954:
	lhi	%r1,0
.L948:
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r4,100(%r15)
	lhi	%r5,0
	srda	%r4,32
	l	%r2,96(%r15)
	lhi	%r3,0
	srda	%r2,32
	lr	%r0,%r4
	msr	%r0,%r3
	lr	%r1,%r2
	msr	%r1,%r5
	ar	%r1,%r0
	mlr	%r2,%r5
	ar	%r1,%r2
	lr	%r2,%r1
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r2,100(%r15)
	lhi	%r4,0
	l	%r1,96(%r15)
	lhi	%r3,0
	msr	%r4,%r1
	msr	%r3,%r2
	ar	%r4,%r3
	lr	%r13,%r2
	mlr	%r12,%r1
	lr	%r2,%r12
	lr	%r3,%r13
	lr	%r1,%r4
	ar	%r1,%r2
	lr	%r2,%r1
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	lm	%r12,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,0
	st	%r1,112(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L966
	l	%r1,96(%r15)
	lcr	%r1,%r1
	st	%r1,96(%r15)
	lhi	%r1,1
	st	%r1,112(%r15)
.L966:
	mvi	119(%r15),0
	j	.L967
.L970:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L968
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,108(%r15)
.L968:
	l	%r1,100(%r15)
	sll	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sra	%r1,1
	st	%r1,96(%r15)
	ic	%r1,119(%r15)
	ahi	%r1,1
	stc	%r1,119(%r15)
.L967:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L969
	ic	%r1,119(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L970
.L969:
	l	%r1,112(%r15)
	ltr	%r1,%r1
	je	.L971
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L973
.L971:
	l	%r1,108(%r15)
.L973:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L977
	l	%r1,100(%r15)
	lcr	%r1,%r1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,108(%r15)
.L977:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L978
	l	%r1,96(%r15)
	lcr	%r1,%r1
	st	%r1,96(%r15)
	l	%r1,108(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,108(%r15)
.L978:
	l	%r1,100(%r15)
	l	%r2,96(%r15)
	lhi	%r4,0
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,__udivmodsi4
	lr	%r1,%r2
	st	%r1,104(%r15)
	l	%r1,108(%r15)
	ltr	%r1,%r1
	je	.L979
	l	%r1,104(%r15)
	lcr	%r1,%r1
	st	%r1,104(%r15)
.L979:
	l	%r1,104(%r15)
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L984
	l	%r1,100(%r15)
	lcr	%r1,%r1
	st	%r1,100(%r15)
	lhi	%r1,1
	st	%r1,108(%r15)
.L984:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L985
	l	%r1,96(%r15)
	lcr	%r1,%r1
	st	%r1,96(%r15)
.L985:
	l	%r1,100(%r15)
	l	%r2,96(%r15)
	lhi	%r4,1
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,__udivmodsi4
	lr	%r1,%r2
	st	%r1,104(%r15)
	l	%r1,108(%r15)
	ltr	%r1,%r1
	je	.L986
	l	%r1,104(%r15)
	lcr	%r1,%r1
	st	%r1,104(%r15)
.L986:
	l	%r1,104(%r15)
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L1000
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	lr	%r2,%r3
	st	%r4,96(%r15)
	sth	%r1,102(%r15)
	lr	%r1,%r3
	sth	%r3,100(%r15)
	lhi	%r1,1
	sth	%r1,110(%r15)
	lhi	%r1,0
	sth	%r1,108(%r15)
	j	.L991
.L993:
	lh	%r1,100(%r15)
	sll	%r1,1
	sth	%r1,100(%r15)
	lh	%r1,110(%r15)
	sll	%r1,1
	sth	%r1,110(%r15)
.L991:
	lh	%r1,100(%r15)
	n	%r1,.L1001-.L1000(%r5)
	lh	%r2,102(%r15)
	n	%r2,.L1001-.L1000(%r5)
	clr	%r1,%r2
	jhe	.L994
	lh	%r1,110(%r15)
	n	%r1,.L1001-.L1000(%r5)
	ltr	%r1,%r1
	je	.L994
	lh	%r1,100(%r15)
	sll	%r1,16
	sra	%r1,16
	ltr	%r1,%r1
	jhe	.L993
	j	.L994
.L996:
	lh	%r1,102(%r15)
	n	%r1,.L1001-.L1000(%r5)
	lh	%r2,100(%r15)
	n	%r2,.L1001-.L1000(%r5)
	clr	%r1,%r2
	jl	.L995
	lh	%r1,102(%r15)
	lh	%r2,100(%r15)
	sr	%r1,%r2
	sth	%r1,102(%r15)
	oc	108(2,%r15),110(%r15)
.L995:
	lh	%r1,110(%r15)
	n	%r1,.L1001-.L1000(%r5)
	srl	%r1,1
	sth	%r1,110(%r15)
	lh	%r1,100(%r15)
	n	%r1,.L1001-.L1000(%r5)
	srl	%r1,1
	sth	%r1,100(%r15)
.L994:
	lh	%r1,110(%r15)
	n	%r1,.L1001-.L1000(%r5)
	ltr	%r1,%r1
	jne	.L996
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L997
	lh	%r1,102(%r15)
	j	.L998
.L997:
	lh	%r1,108(%r15)
.L998:
	n	%r1,.L1001-.L1000(%r5)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1000:
.L1001:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	lhi	%r1,1
	st	%r1,116(%r15)
	lhi	%r1,0
	st	%r1,112(%r15)
	j	.L1003
.L1005:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L1003:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L1006
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L1006
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L1005
	j	.L1006
.L1008:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L1007
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L1007:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L1006:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1008
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L1009
	l	%r1,108(%r15)
	j	.L1010
.L1009:
	l	%r1,112(%r15)
.L1010:
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	stm	%r2,%r3,104(%r15)
	st	%r4,100(%r15)
	lhi	%r1,32
	st	%r1,132(%r15)
	lm	%r2,%r3,104(%r15)
	stm	%r2,%r3,120(%r15)
	l	%r1,100(%r15)
	n	%r1,132(%r15)
	ltr	%r1,%r1
	je	.L1014
	lhi	%r1,0
	st	%r1,116(%r15)
	l	%r2,124(%r15)
	l	%r1,100(%r15)
	s	%r1,132(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,112(%r15)
	j	.L1015
.L1014:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L1016
	l	%r2,104(%r15)
	l	%r1,108(%r15)
	j	.L1018
.L1016:
	l	%r2,124(%r15)
	l	%r1,100(%r15)
	sll	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,120(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	l	%r2,124(%r15)
	l	%r1,132(%r15)
	s	%r1,100(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	or	%r1,%r2
	st	%r1,112(%r15)
.L1015:
	l	%r2,112(%r15)
	l	%r1,116(%r15)
.L1018:
	lr	%r3,%r1
	l	%r15,196(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	stm	%r2,%r3,104(%r15)
	st	%r4,100(%r15)
	lhi	%r1,32
	st	%r1,132(%r15)
	lm	%r2,%r3,104(%r15)
	stm	%r2,%r3,120(%r15)
	l	%r1,100(%r15)
	n	%r1,132(%r15)
	ltr	%r1,%r1
	je	.L1022
	l	%r2,120(%r15)
	l	%r1,132(%r15)
	ahi	%r1,-1
	sra	%r2,0(%r1)
	st	%r2,112(%r15)
	l	%r2,120(%r15)
	l	%r1,100(%r15)
	s	%r1,132(%r15)
	sra	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,116(%r15)
	j	.L1023
.L1022:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L1024
	l	%r2,104(%r15)
	l	%r1,108(%r15)
	j	.L1026
.L1024:
	l	%r2,120(%r15)
	l	%r1,100(%r15)
	sra	%r2,0(%r1)
	st	%r2,112(%r15)
	l	%r1,120(%r15)
	lr	%r2,%r1
	l	%r1,132(%r15)
	s	%r1,100(%r15)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	l	%r2,124(%r15)
	l	%r1,100(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	or	%r1,%r2
	st	%r1,116(%r15)
.L1023:
	l	%r2,112(%r15)
	l	%r1,116(%r15)
.L1026:
	lr	%r3,%r1
	l	%r15,196(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	stm	%r13,%r15,52(%r15)
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	larl	%r13,.L1032
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	srdl	%r2,56
	lm	%r4,%r5,96(%r15)
	srdl	%r4,40
	lhi	%r0,0
	nr	%r0,%r4
	l	%r1,.L1033-.L1032(%r13)
	nr	%r1,%r5
	lr	%r5,%r0
	or	%r5,%r2
	lr	%r4,%r3
	or	%r4,%r1
	lm	%r2,%r3,96(%r15)
	srdl	%r2,24
	lhi	%r0,0
	nr	%r0,%r2
	l	%r1,.L1034-.L1032(%r13)
	nr	%r1,%r3
	or	%r5,%r0
	or	%r4,%r1
	lm	%r2,%r3,96(%r15)
	srdl	%r2,8
	lhi	%r0,0
	nr	%r0,%r2
	l	%r1,.L1035-.L1032(%r13)
	nr	%r1,%r3
	or	%r5,%r0
	or	%r4,%r1
	lm	%r2,%r3,96(%r15)
	sldl	%r2,8
	lhi	%r0,255
	nr	%r0,%r2
	lhi	%r1,0
	nr	%r1,%r3
	or	%r0,%r5
	or	%r4,%r1
	lm	%r2,%r3,96(%r15)
	sldl	%r2,24
	l	%r5,.L1033-.L1032(%r13)
	nr	%r5,%r2
	lhi	%r1,0
	nr	%r1,%r3
	or	%r0,%r5
	or	%r4,%r1
	lr	%r5,%r4
	lm	%r2,%r3,96(%r15)
	sldl	%r2,40
	l	%r4,.L1034-.L1032(%r13)
	nr	%r4,%r2
	lhi	%r1,0
	nr	%r1,%r3
	or	%r4,%r0
	or	%r1,%r5
	lm	%r2,%r3,96(%r15)
	sldl	%r2,56
	or	%r4,%r2
	or	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	lm	%r13,%r15,156(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1032:
.L1035:
	.long	-16777216
.L1034:
	.long	16711680
.L1033:
	.long	65280
	.align	2
.text
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L1039
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,24
	lr	%r2,%r1
	l	%r1,100(%r15)
	srl	%r1,8
	n	%r1,.L1040-.L1039(%r5)
	or	%r2,%r1
	l	%r1,100(%r15)
	sll	%r1,8
	n	%r1,.L1041-.L1039(%r5)
	or	%r2,%r1
	l	%r1,100(%r15)
	sll	%r1,24
	or	%r1,%r2
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1039:
.L1041:
	.long	16711680
.L1040:
	.long	65280
	.align	2
.text
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L1053
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	cl	%r1,.L1054-.L1053(%r5)
	jh	.L1043
	lhi	%r1,16
	j	.L1044
.L1043:
	lhi	%r1,0
.L1044:
	st	%r1,112(%r15)
	lhi	%r1,16
	s	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	st	%r1,108(%r15)
	l	%r1,.L1055-.L1053(%r5)
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1045
	lhi	%r1,8
	j	.L1046
.L1045:
	lhi	%r1,0
.L1046:
	st	%r1,112(%r15)
	lhi	%r1,8
	s	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	lhi	%r1,240
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1047
	lhi	%r1,4
	j	.L1048
.L1047:
	lhi	%r1,0
.L1048:
	st	%r1,112(%r15)
	lhi	%r1,4
	s	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	lhi	%r1,12
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1049
	lhi	%r1,2
	j	.L1050
.L1049:
	lhi	%r1,0
.L1050:
	st	%r1,112(%r15)
	lhi	%r1,2
	s	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	lhi	%r1,2
	n	%r1,116(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lhi	%r1,2
	s	%r1,116(%r15)
	msr	%r1,%r2
	a	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1053:
.L1055:
	.long	65280
.L1054:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	stm	%r2,%r3,104(%r15)
	stm	%r4,%r5,96(%r15)
	lm	%r2,%r3,104(%r15)
	stm	%r2,%r3,120(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,112(%r15)
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	cr	%r1,%r2
	jhe	.L1057
	lhi	%r1,0
	j	.L1062
.L1057:
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	cr	%r1,%r2
	jle	.L1059
	lhi	%r1,2
	j	.L1062
.L1059:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jhe	.L1060
	lhi	%r1,0
	j	.L1062
.L1060:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jle	.L1061
	lhi	%r1,2
	j	.L1062
.L1061:
	lhi	%r1,1
.L1062:
	lr	%r2,%r1
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	stm	%r2,%r3,104(%r15)
	stm	%r4,%r5,96(%r15)
	lm	%r4,%r5,96(%r15)
	lm	%r2,%r3,104(%r15)
	brasl	%r14,__cmpdi2
	lr	%r1,%r2
	ahi	%r1,-1
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L1080
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,.L1081-.L1080(%r5)
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1070
	lhi	%r1,16
	j	.L1071
.L1070:
	lhi	%r1,0
.L1071:
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	st	%r1,108(%r15)
	lhi	%r1,255
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1072
	lhi	%r1,8
	j	.L1073
.L1072:
	lhi	%r1,0
.L1073:
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	lhi	%r1,15
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1074
	lhi	%r1,4
	j	.L1075
.L1074:
	lhi	%r1,0
.L1075:
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	lhi	%r1,3
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1076
	lhi	%r1,2
	j	.L1077
.L1076:
	lhi	%r1,0
.L1077:
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	nc	116(4,%r15),.L1082-.L1080(%r5)
	l	%r1,112(%r15)
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	l	%r1,116(%r15)
	lhi	%r2,-1
	xr	%r1,%r2
	lhi	%r2,1
	nr	%r2,%r1
	l	%r1,116(%r15)
	srl	%r1,1
	lr	%r3,%r1
	lhi	%r1,2
	sr	%r1,%r3
	lcr	%r2,%r2
	nr	%r1,%r2
	a	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1080:
.L1082:
	.long	3
.L1081:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	stm	%r2,%r3,104(%r15)
	st	%r4,100(%r15)
	lhi	%r1,32
	st	%r1,132(%r15)
	lm	%r2,%r3,104(%r15)
	stm	%r2,%r3,120(%r15)
	l	%r1,100(%r15)
	n	%r1,132(%r15)
	ltr	%r1,%r1
	je	.L1084
	lhi	%r1,0
	st	%r1,112(%r15)
	l	%r2,120(%r15)
	l	%r1,100(%r15)
	s	%r1,132(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	j	.L1085
.L1084:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L1086
	l	%r2,104(%r15)
	l	%r1,108(%r15)
	j	.L1088
.L1086:
	l	%r2,120(%r15)
	l	%r1,100(%r15)
	srl	%r2,0(%r1)
	st	%r2,112(%r15)
	l	%r2,120(%r15)
	l	%r1,132(%r15)
	s	%r1,100(%r15)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	l	%r2,124(%r15)
	l	%r1,100(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	or	%r1,%r2
	st	%r1,116(%r15)
.L1085:
	l	%r2,112(%r15)
	l	%r1,116(%r15)
.L1088:
	lr	%r3,%r1
	l	%r15,196(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,16
	st	%r1,124(%r15)
	l	%r1,124(%r15)
	lhi	%r2,-1
	srl	%r2,0(%r1)
	st	%r2,120(%r15)
	l	%r2,100(%r15)
	n	%r2,120(%r15)
	l	%r1,96(%r15)
	n	%r1,120(%r15)
	msr	%r1,%r2
	st	%r1,108(%r15)
	l	%r2,108(%r15)
	l	%r1,124(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,108(%r15)
	n	%r1,120(%r15)
	st	%r1,108(%r15)
	l	%r1,124(%r15)
	l	%r2,100(%r15)
	srl	%r2,0(%r1)
	l	%r1,96(%r15)
	n	%r1,120(%r15)
	msr	%r1,%r2
	a	%r1,116(%r15)
	st	%r1,116(%r15)
	l	%r3,108(%r15)
	l	%r2,116(%r15)
	n	%r2,120(%r15)
	l	%r1,124(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,104(%r15)
	l	%r2,108(%r15)
	l	%r1,124(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,108(%r15)
	n	%r1,120(%r15)
	st	%r1,108(%r15)
	l	%r1,124(%r15)
	l	%r2,96(%r15)
	srl	%r2,0(%r1)
	l	%r1,100(%r15)
	n	%r1,120(%r15)
	msr	%r1,%r2
	a	%r1,116(%r15)
	st	%r1,116(%r15)
	l	%r3,108(%r15)
	l	%r2,116(%r15)
	n	%r2,120(%r15)
	l	%r1,124(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	lr	%r3,%r1
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,104(%r15)
	l	%r1,104(%r15)
	lr	%r4,%r1
	l	%r1,124(%r15)
	l	%r2,100(%r15)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	l	%r1,124(%r15)
	l	%r2,96(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	msr	%r1,%r2
	ar	%r1,%r4
	st	%r1,104(%r15)
	l	%r2,104(%r15)
	l	%r1,108(%r15)
	lr	%r3,%r1
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	stm	%r2,%r3,104(%r15)
	stm	%r4,%r5,96(%r15)
	lm	%r2,%r3,104(%r15)
	stm	%r2,%r3,128(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,120(%r15)
	l	%r1,132(%r15)
	l	%r2,124(%r15)
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,__muldsi3
	stm	%r2,%r3,112(%r15)
	l	%r1,112(%r15)
	lr	%r4,%r1
	l	%r1,128(%r15)
	lr	%r2,%r1
	l	%r1,124(%r15)
	msr	%r2,%r1
	l	%r1,132(%r15)
	l	%r3,120(%r15)
	msr	%r1,%r3
	ar	%r1,%r2
	ar	%r1,%r4
	st	%r1,112(%r15)
	l	%r2,112(%r15)
	l	%r1,116(%r15)
	lr	%r3,%r1
	lm	%r14,%r15,192(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L1102
	ahi	%r2,-1
.L1102:
	lr	%r4,%r2
	lr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.align	8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,104(%r15)
	l	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,108(%r15)
	xr	%r1,%r2
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	srl	%r1,16
	x	%r1,116(%r15)
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	srl	%r1,8
	x	%r1,116(%r15)
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	srl	%r1,4
	x	%r1,116(%r15)
	st	%r1,116(%r15)
	lhi	%r2,15
	n	%r2,116(%r15)
	lhi	%r1,27030
	sra	%r1,0(%r2)
	lhi	%r2,1
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.align	8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,16
	x	%r1,108(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,8
	x	%r1,108(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,4
	x	%r1,108(%r15)
	st	%r1,108(%r15)
	lhi	%r2,15
	n	%r2,108(%r15)
	lhi	%r1,27030
	sra	%r1,0(%r2)
	lhi	%r2,1
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.align	8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	stm	%r10,%r15,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	larl	%r13,.L1115
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,112(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,1
	l	%r12,.L1116-.L1115(%r13)
	nr	%r12,%r2
	lr	%r10,%r12
	l	%r12,.L1116-.L1115(%r13)
	nr	%r12,%r3
	lr	%r11,%r12
	lm	%r2,%r3,112(%r15)
	slr	%r3,%r11
	slbr	%r2,%r10
	stm	%r2,%r3,112(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,2
	l	%r12,.L1117-.L1115(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	l	%r12,.L1117-.L1115(%r13)
	nr	%r12,%r3
	lr	%r1,%r12
	l	%r2,.L1117-.L1115(%r13)
	n	%r2,112(%r15)
	lr	%r4,%r2
	l	%r2,.L1117-.L1115(%r13)
	n	%r2,116(%r15)
	lr	%r5,%r2
	alr	%r1,%r5
	alcr	%r0,%r4
	stm	%r0,%r1,112(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,4
	al	%r3,116(%r15)
	alc	%r2,112(%r15)
	l	%r1,.L1118-.L1115(%r13)
	nr	%r1,%r2
	st	%r1,112(%r15)
	l	%r1,.L1118-.L1115(%r13)
	nr	%r1,%r3
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,32
	lr	%r2,%r3
	ar	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,16
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,8
	a	%r1,108(%r15)
	lhi	%r2,127
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r10,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1115:
.L1118:
	.long	252645135
.L1117:
	.long	858993459
.L1116:
	.long	1431655765
	.align	2
.text
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L1122
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,1
	l	%r2,.L1123-.L1122(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sr	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,2
	l	%r2,.L1124-.L1122(%r5)
	nr	%r2,%r1
	l	%r1,.L1124-.L1122(%r5)
	n	%r1,108(%r15)
	ar	%r2,%r1
	st	%r2,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,4
	a	%r1,108(%r15)
	n	%r1,.L1125-.L1122(%r5)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,16
	a	%r1,108(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,8
	a	%r1,108(%r15)
	lhi	%r2,63
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1122:
.L1125:
	.long	252645135
.L1124:
	.long	858993459
.L1123:
	.long	1431655765
	.align	2
.text
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.align	8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L1137
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	std	%f0,104(%r15)
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,116(%r15)
	ld	%f0,.L1138-.L1137(%r5)
	std	%f0,120(%r15)
.L1130:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L1127
	ld	%f0,120(%r15)
	mdb	%f0,104(%r15)
	std	%f0,120(%r15)
.L1127:
	l	%r1,100(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,100(%r15)
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L1135
	ld	%f0,104(%r15)
	mdb	%f0,104(%r15)
	std	%f0,104(%r15)
	j	.L1130
.L1135:
	nopr	%r0
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L1131
	ld	%f0,.L1138-.L1137(%r5)
	ddb	%f0,120(%r15)
	j	.L1133
.L1131:
	ld	%f0,120(%r15)
.L1133:
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1137:
.L1138:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	st	%r15,60(%r15)
	larl	%r5,.L1150
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	ste	%f0,100(%r15)
	st	%r2,96(%r15)
	l	%r1,96(%r15)
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,104(%r15)
	le	%f0,.L1151-.L1150(%r5)
	ste	%f0,108(%r15)
.L1143:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L1140
	le	%f0,108(%r15)
	meeb	%f0,100(%r15)
	ste	%f0,108(%r15)
.L1140:
	l	%r1,96(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,96(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L1148
	le	%f0,100(%r15)
	meeb	%f0,100(%r15)
	ste	%f0,100(%r15)
	j	.L1143
.L1148:
	nopr	%r0
	l	%r1,104(%r15)
	ltr	%r1,%r1
	je	.L1144
	le	%f0,.L1151-.L1150(%r5)
	deb	%f0,108(%r15)
	j	.L1146
.L1144:
	le	%f0,108(%r15)
.L1146:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1150:
.L1151:
	.long	1065353216
	.align	2
.text
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	stm	%r2,%r3,104(%r15)
	stm	%r4,%r5,96(%r15)
	lm	%r2,%r3,104(%r15)
	stm	%r2,%r3,120(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,112(%r15)
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	clr	%r1,%r2
	jhe	.L1153
	lhi	%r1,0
	j	.L1158
.L1153:
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	clr	%r1,%r2
	jle	.L1155
	lhi	%r1,2
	j	.L1158
.L1155:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jhe	.L1156
	lhi	%r1,0
	j	.L1158
.L1156:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jle	.L1157
	lhi	%r1,2
	j	.L1158
.L1157:
	lhi	%r1,1
.L1158:
	lr	%r2,%r1
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	stm	%r2,%r3,104(%r15)
	stm	%r4,%r5,96(%r15)
	lm	%r2,%r3,104(%r15)
	lm	%r4,%r5,96(%r15)
	brasl	%r14,__ucmpdi2
	lr	%r1,%r2
	ahi	%r1,-1
	lr	%r2,%r1
	lm	%r14,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,2
.globl __floatundisf
.globl __floatundidf
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
