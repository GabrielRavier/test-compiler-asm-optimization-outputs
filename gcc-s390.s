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
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L2
	l	%r1,104(%r15)
	a	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,124(%r15)
	j	.L3
.L4:
	l	%r1,116(%r15)
	ahi	%r1,-1
	st	%r1,116(%r15)
	l	%r1,124(%r15)
	ahi	%r1,-1
	st	%r1,124(%r15)
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,124(%r15)
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
	l	%r1,104(%r15)
	c	%r1,108(%r15)
	je	.L5
	l	%r1,108(%r15)
	st	%r1,120(%r15)
	j	.L6
.L7:
	l	%r2,104(%r15)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,104(%r15)
	l	%r1,120(%r15)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,120(%r15)
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
	l	%r15,188(%r15)
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
	l	%r1,100(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,116(%r15)
	j	.L12
.L14:
	l	%r1,96(%r15)
	ahi	%r1,-1
	st	%r1,96(%r15)
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L12:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L13
	l	%r1,104(%r15)
	ic	%r2,0(%r1)
	l	%r1,108(%r15)
	stc	%r2,0(%r1)
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,116(%r15)
	cr	%r1,%r2
	jne	.L14
.L13:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L15
	l	%r1,108(%r15)
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
	l	%r1,104(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,116(%r15)
	j	.L20
.L22:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L20:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L21
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,116(%r15)
	cr	%r1,%r2
	jne	.L22
.L21:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L23
	l	%r1,108(%r15)
	j	.L25
.L23:
	lhi	%r1,0
.L25:
	nopr	%r0
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
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	j	.L29
.L31:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
.L29:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L30
	l	%r1,108(%r15)
	ic	%r2,0(%r1)
	l	%r1,104(%r15)
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
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r3,%r1
	lr	%r1,%r2
	sr	%r1,%r3
	j	.L34
.L32:
	lhi	%r1,0
.L34:
	nopr	%r0
	lr	%r2,%r1
	l	%r15,172(%r15)
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
	j	.L38
.L39:
	l	%r2,104(%r15)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,104(%r15)
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
	l	%r1,104(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,116(%r15)
	j	.L44
.L46:
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,116(%r15)
	cr	%r1,%r2
	jne	.L44
	l	%r1,108(%r15)
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
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,96(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,108(%r15)
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
	l	%r1,108(%r15)
	cr	%r1,%r2
	jne	.L64
.L63:
	l	%r1,100(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
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
	je	.L72
	lr	%r2,%r1
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r2,0(%r2)
	lhi	%r3,255
	nr	%r2,%r3
	ltr	%r2,%r2
	jne	.L71
	lhi	%r1,0
	j	.L70
.L72:
	nopr	%r0
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
	j	.L76
.L78:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	ahi	%r1,1
	st	%r1,96(%r15)
.L76:
	l	%r1,100(%r15)
	ic	%r2,0(%r1)
	l	%r1,96(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L77
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L78
.L77:
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
	j	.L83
.L84:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L83:
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L84
	l	%r1,108(%r15)
	s	%r1,100(%r15)
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
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,116(%r15)
	ltr	%r1,%r1
	jne	.L91
	lhi	%r1,0
	j	.L90
.L93:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	ahi	%r1,-1
	st	%r1,116(%r15)
.L91:
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L92
	l	%r1,104(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L92
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L92
	l	%r1,108(%r15)
	ic	%r2,0(%r1)
	l	%r1,104(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L93
.L92:
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r3,%r1
	lr	%r1,%r2
	sr	%r1,%r3
.L90:
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
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	j	.L97
.L98:
	l	%r1,108(%r15)
	ahi	%r1,1
	ic	%r2,0(%r1)
	l	%r1,104(%r15)
	stc	%r2,0(%r1)
	l	%r1,104(%r15)
	ahi	%r1,1
	l	%r2,108(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,104(%r15)
	ahi	%r1,2
	st	%r1,104(%r15)
	l	%r1,108(%r15)
	ahi	%r1,2
	st	%r1,108(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-2
	st	%r1,100(%r15)
.L97:
	l	%r1,100(%r15)
	chi	%r1,1
	jh	.L98
	nopr	%r0
	nopr	%r0
	l	%r15,172(%r15)
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
	je	.L110
	l	%r1,100(%r15)
	chi	%r1,9
	jne	.L111
.L110:
	lhi	%r1,1
	j	.L113
.L111:
	lhi	%r1,0
.L113:
	nopr	%r0
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
	jle	.L117
	l	%r1,100(%r15)
	chi	%r1,127
	jne	.L118
.L117:
	lhi	%r1,1
	j	.L120
.L118:
	lhi	%r1,0
.L120:
	nopr	%r0
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
	je	.L140
	l	%r1,100(%r15)
	ahi	%r1,-9
	lhi	%r2,4
	clr	%r1,%r2
	jh	.L141
.L140:
	lhi	%r1,1
	j	.L143
.L141:
	lhi	%r1,0
.L143:
	nopr	%r0
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
	larl	%r5,.L156
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L151
	l	%r1,100(%r15)
	ahi	%r1,-127
	lhi	%r2,32
	clr	%r1,%r2
	jle	.L151
	l	%r1,100(%r15)
	ahi	%r1,-8232
	lhi	%r2,1
	clr	%r1,%r2
	jle	.L151
	l	%r1,.L157-.L156(%r5)
	a	%r1,100(%r15)
	lhi	%r2,2
	clr	%r1,%r2
	jh	.L152
.L151:
	lhi	%r1,1
	j	.L154
.L152:
	lhi	%r1,0
.L154:
	nopr	%r0
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L156:
.L157:
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
	larl	%r5,.L170
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,254
	clr	%r1,%r2
	jh	.L163
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
	j	.L164
.L163:
	l	%r1,100(%r15)
	lhi	%r2,8231
	clr	%r1,%r2
	jle	.L165
	l	%r1,100(%r15)
	ahi	%r1,-8234
	cl	%r1,.L171-.L170(%r5)
	jle	.L165
	l	%r1,.L172-.L170(%r5)
	a	%r1,100(%r15)
	lhi	%r2,8184
	clr	%r1,%r2
	jh	.L166
.L165:
	lhi	%r1,1
	j	.L164
.L166:
	l	%r1,.L173-.L170(%r5)
	a	%r1,100(%r15)
	cl	%r1,.L174-.L170(%r5)
	jh	.L167
	l	%r1,.L175-.L170(%r5)
	n	%r1,100(%r15)
	c	%r1,.L175-.L170(%r5)
	jne	.L168
.L167:
	lhi	%r1,0
	j	.L164
.L168:
	lhi	%r1,1
.L164:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L170:
.L175:
	.long	65534
.L174:
	.long	1048579
.L173:
	.long	-65532
.L172:
	.long	-57344
.L171:
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
	jle	.L177
	lhi	%r1,32
	o	%r1,100(%r15)
	ahi	%r1,-97
	lhi	%r2,5
	clr	%r1,%r2
	jh	.L178
.L177:
	lhi	%r1,1
	j	.L180
.L178:
	lhi	%r1,0
.L180:
	nopr	%r0
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
	larl	%r5,.L197
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L188
	ld	%f0,104(%r15)
	j	.L189
.L188:
	ld	%f0,96(%r15)
	cdb	%f0,96(%r15)
	jno	.L190
	ld	%f0,96(%r15)
	j	.L189
.L190:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnh	.L195
	ld	%f0,104(%r15)
	sdb	%f0,96(%r15)
	j	.L189
.L195:
	ld	%f0,.L198-.L197(%r5)
.L189:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L197:
.L198:
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
	larl	%r5,.L209
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	ste	%f2,96(%r15)
	le	%f0,100(%r15)
	ceb	%f0,100(%r15)
	jno	.L200
	le	%f0,100(%r15)
	j	.L201
.L200:
	le	%f0,96(%r15)
	ceb	%f0,96(%r15)
	jno	.L202
	le	%f0,96(%r15)
	j	.L201
.L202:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnh	.L207
	le	%f0,100(%r15)
	seb	%f0,96(%r15)
	j	.L201
.L207:
	le	%f0,.L210-.L209(%r5)
.L201:
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L209:
.L210:
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
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L212
	ld	%f0,96(%r15)
	j	.L213
.L212:
	ld	%f0,96(%r15)
	cdb	%f0,96(%r15)
	jno	.L214
	ld	%f0,104(%r15)
	j	.L213
.L214:
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,96(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L215
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L216
	ld	%f0,96(%r15)
	j	.L213
.L216:
	ld	%f0,104(%r15)
	j	.L213
.L215:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnl	.L222
	ld	%f0,96(%r15)
	j	.L213
.L222:
	ld	%f0,104(%r15)
.L213:
	l	%r15,172(%r15)
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
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	ste	%f2,96(%r15)
	le	%f0,100(%r15)
	ceb	%f0,100(%r15)
	jno	.L226
	le	%f0,96(%r15)
	j	.L227
.L226:
	le	%f0,96(%r15)
	ceb	%f0,96(%r15)
	jno	.L228
	le	%f0,100(%r15)
	j	.L227
.L228:
	le	%f0,100(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,96(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L229
	le	%f0,100(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L230
	le	%f0,96(%r15)
	j	.L227
.L230:
	le	%f0,100(%r15)
	j	.L227
.L229:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnl	.L236
	le	%f0,96(%r15)
	j	.L227
.L236:
	le	%f0,100(%r15)
.L227:
	l	%r15,164(%r15)
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
	jno	.L240
	l	%r1,132(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L241
.L240:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	cxbr	%f0,%f1
	jno	.L242
	l	%r1,132(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L241
.L242:
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
	je	.L243
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L244
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	j	.L245
.L244:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
.L245:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L241
.L243:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jnl	.L250
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	j	.L248
.L250:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
.L248:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L241:
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
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L254
	ld	%f0,96(%r15)
	j	.L255
.L254:
	ld	%f0,96(%r15)
	cdb	%f0,96(%r15)
	jno	.L256
	ld	%f0,104(%r15)
	j	.L255
.L256:
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,96(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L257
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L258
	ld	%f0,104(%r15)
	j	.L255
.L258:
	ld	%f0,96(%r15)
	j	.L255
.L257:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnl	.L264
	ld	%f0,104(%r15)
	j	.L255
.L264:
	ld	%f0,96(%r15)
.L255:
	l	%r15,172(%r15)
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
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	ste	%f2,96(%r15)
	le	%f0,100(%r15)
	ceb	%f0,100(%r15)
	jno	.L268
	le	%f0,96(%r15)
	j	.L269
.L268:
	le	%f0,96(%r15)
	ceb	%f0,96(%r15)
	jno	.L270
	le	%f0,100(%r15)
	j	.L269
.L270:
	le	%f0,100(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,96(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L271
	le	%f0,100(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L272
	le	%f0,100(%r15)
	j	.L269
.L272:
	le	%f0,96(%r15)
	j	.L269
.L271:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnl	.L278
	le	%f0,100(%r15)
	j	.L269
.L278:
	le	%f0,96(%r15)
.L269:
	l	%r15,164(%r15)
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
	jno	.L282
	l	%r1,132(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L283
.L282:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	cxbr	%f0,%f1
	jno	.L284
	l	%r1,132(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L283
.L284:
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
	je	.L285
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L286
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	j	.L287
.L286:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
.L287:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L283
.L285:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jnl	.L292
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	j	.L290
.L292:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
.L290:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L283:
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
	j	.L296
.L297:
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
.L296:
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L297
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
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jne	.L309
	l	%r1,100(%r15)
	lhi	%r2,0
	st	%r2,4(%r1)
	l	%r1,100(%r15)
	l	%r2,4(%r1)
	l	%r1,100(%r15)
	st	%r2,0(%r1)
	j	.L308
.L309:
	l	%r1,96(%r15)
	l	%r2,0(%r1)
	l	%r1,100(%r15)
	st	%r2,0(%r1)
	l	%r1,100(%r15)
	l	%r2,96(%r15)
	st	%r2,4(%r1)
	l	%r1,96(%r15)
	l	%r2,100(%r15)
	st	%r2,0(%r1)
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L308
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,100(%r15)
	st	%r2,4(%r1)
.L308:
	l	%r15,164(%r15)
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
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L314
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,100(%r15)
	l	%r2,4(%r2)
	st	%r2,4(%r1)
.L314:
	l	%r1,100(%r15)
	l	%r1,4(%r1)
	ltr	%r1,%r1
	je	.L316
	l	%r1,100(%r15)
	l	%r1,4(%r1)
	l	%r2,100(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L316:
	nopr	%r0
	l	%r15,164(%r15)
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
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	st	%r1,124(%r15)
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L320
.L323:
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,112(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	lr	%r3,%r2
	l	%r2,116(%r15)
	basr	%r14,%r1
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L321
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,112(%r15)
	j	.L322
.L321:
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L320:
	l	%r1,132(%r15)
	cl	%r1,124(%r15)
	jl	.L323
	l	%r2,124(%r15)
	ahi	%r2,1
	l	%r1,108(%r15)
	st	%r2,0(%r1)
	lr	%r1,%r12
	ms	%r1,124(%r15)
	a	%r1,112(%r15)
	l	%r4,104(%r15)
	l	%r3,116(%r15)
	lr	%r2,%r1
	brasl	%r14,memcpy
	lr	%r1,%r2
.L322:
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
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	st	%r1,124(%r15)
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L327
.L330:
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,112(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	lr	%r3,%r2
	l	%r2,116(%r15)
	basr	%r14,%r1
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L328
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,112(%r15)
	j	.L329
.L328:
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L327:
	l	%r1,132(%r15)
	cl	%r1,124(%r15)
	jl	.L330
	lhi	%r1,0
.L329:
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
	j	.L338
.L339:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L338:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L339
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L340
	chi	%r1,45
	jne	.L342
	lhi	%r1,1
	st	%r1,104(%r15)
.L340:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L342
.L343:
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
.L342:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L343
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L344
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L346
.L344:
	l	%r1,108(%r15)
.L346:
	nopr	%r0
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
	j	.L350
.L351:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L350:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L351
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L352
	chi	%r1,45
	jne	.L354
	lhi	%r1,1
	st	%r1,104(%r15)
.L352:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L354
.L355:
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
.L354:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L355
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L356
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L358
.L356:
	l	%r1,108(%r15)
.L358:
	nopr	%r0
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
	j	.L362
.L363:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L362:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L363
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L364
	chi	%r1,45
	jne	.L366
	lhi	%r1,1
	st	%r1,108(%r15)
.L364:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L366
.L367:
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
.L366:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L367
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L368
	lm	%r2,%r3,112(%r15)
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L372
	ahi	%r2,-1
.L372:
	j	.L370
.L368:
	lm	%r2,%r3,112(%r15)
.L370:
	nopr	%r0
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
	j	.L375
.L380:
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
	jhe	.L376
	l	%r1,108(%r15)
	srl	%r1,1
	st	%r1,108(%r15)
	j	.L375
.L376:
	l	%r1,120(%r15)
	ltr	%r1,%r1
	jle	.L378
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
	j	.L375
.L378:
	l	%r1,124(%r15)
	j	.L379
.L375:
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L380
	lhi	%r1,0
.L379:
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
	l	%r1,108(%r15)
	st	%r1,132(%r15)
	j	.L384
.L388:
	l	%r1,132(%r15)
	sra	%r1,1
	ms	%r1,104(%r15)
	a	%r1,112(%r15)
	st	%r1,128(%r15)
	l	%r1,100(%r15)
	l	%r4,232(%r15)
	l	%r3,128(%r15)
	l	%r2,116(%r15)
	basr	%r14,%r1
	st	%r2,124(%r15)
	l	%r1,124(%r15)
	ltr	%r1,%r1
	jne	.L385
	l	%r1,128(%r15)
	j	.L386
.L385:
	l	%r1,124(%r15)
	ltr	%r1,%r1
	jle	.L387
	l	%r1,128(%r15)
	a	%r1,104(%r15)
	st	%r1,112(%r15)
	l	%r1,132(%r15)
	ahi	%r1,-1
	st	%r1,132(%r15)
.L387:
	l	%r1,132(%r15)
	sra	%r1,1
	st	%r1,132(%r15)
.L384:
	l	%r1,132(%r15)
	ltr	%r1,%r1
	jne	.L388
	lhi	%r1,0
.L386:
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
	jhe	.L396
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L400
	ahi	%r2,-1
.L400:
.L396:
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
	jhe	.L415
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L419
	ahi	%r2,-1
.L419:
.L415:
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
	j	.L426
.L428:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
.L426:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L427
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	cr	%r2,%r1
	jne	.L428
.L427:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L429
	l	%r1,100(%r15)
	j	.L431
.L429:
	lhi	%r1,0
.L431:
	nopr	%r0
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
	j	.L435
.L437:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	ahi	%r1,4
	st	%r1,96(%r15)
.L435:
	l	%r1,100(%r15)
	l	%r2,0(%r1)
	l	%r1,96(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L436
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L436
	l	%r1,96(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L437
.L436:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L438
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L439
	lhi	%r2,0
.L439:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L441
.L438:
	lhi	%r1,-1
.L441:
	nopr	%r0
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
.L445:
	l	%r2,96(%r15)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,96(%r15)
	l	%r1,108(%r15)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L445
	l	%r1,100(%r15)
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
	j	.L450
.L451:
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
.L450:
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L451
	l	%r1,108(%r15)
	s	%r1,100(%r15)
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
	j	.L456
.L458:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,4
	st	%r1,104(%r15)
.L456:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L457
	l	%r1,108(%r15)
	l	%r2,0(%r1)
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L457
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L457
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L458
.L457:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L459
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L460
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L461
	lhi	%r2,0
.L461:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L464
.L460:
	lhi	%r1,-1
	j	.L464
.L459:
	lhi	%r1,0
.L464:
	nopr	%r0
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
	j	.L468
.L470:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
.L468:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L469
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	cr	%r2,%r1
	jne	.L470
.L469:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L471
	l	%r1,108(%r15)
	j	.L473
.L471:
	lhi	%r1,0
.L473:
	nopr	%r0
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
	j	.L477
.L479:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,4
	st	%r1,104(%r15)
.L477:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L478
	l	%r1,108(%r15)
	l	%r2,0(%r1)
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	je	.L479
.L478:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L480
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L481
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L482
	lhi	%r2,0
.L482:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L485
.L481:
	lhi	%r1,-1
	j	.L485
.L480:
	lhi	%r1,0
.L485:
	nopr	%r0
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
	j	.L489
.L490:
	l	%r2,104(%r15)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,116(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L489:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L490
	l	%r1,108(%r15)
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
	c	%r1,104(%r15)
	jne	.L495
	l	%r1,108(%r15)
	j	.L496
.L495:
	l	%r1,108(%r15)
	l	%r2,104(%r15)
	sr	%r1,%r2
	l	%r2,100(%r15)
	sll	%r2,2
	clr	%r1,%r2
	jhe	.L497
	j	.L498
.L499:
	l	%r1,100(%r15)
	sll	%r1,2
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	sll	%r1,2
	a	%r1,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L498:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L499
	j	.L500
.L497:
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L501
.L502:
	l	%r2,104(%r15)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,116(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L501:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L502
.L500:
	l	%r1,108(%r15)
.L496:
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
	j	.L506
.L507:
	l	%r1,116(%r15)
	lr	%r2,%r1
	ahi	%r2,4
	st	%r2,116(%r15)
	l	%r2,104(%r15)
	st	%r2,0(%r1)
.L506:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L507
	l	%r1,108(%r15)
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
	cl	%r1,104(%r15)
	jhe	.L512
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	a	%r1,100(%r15)
	st	%r1,112(%r15)
	j	.L513
.L514:
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
.L513:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L514
	j	.L518
.L512:
	l	%r1,108(%r15)
	c	%r1,104(%r15)
	je	.L518
	j	.L516
.L517:
	l	%r2,108(%r15)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,104(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L516:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L517
.L518:
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
	larl	%r5,.L548
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	sth	%r1,102(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L549-.L548(%r5)
	nr	%r2,%r1
	l	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r15)
	l	%r2,.L549-.L548(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L549-.L548(%r5)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L548:
.L549:
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
	larl	%r5,.L553
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	sth	%r1,102(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L554-.L553(%r5)
	nr	%r2,%r1
	l	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r15)
	l	%r2,.L554-.L553(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L554-.L553(%r5)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L553:
.L554:
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
	larl	%r5,.L566
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r1,102(%r15)
	lhi	%r1,255
	st	%r1,108(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L567-.L566(%r5)
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
	n	%r1,.L567-.L566(%r5)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L566:
.L567:
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
	j	.L577
.L580:
	l	%r2,100(%r15)
	l	%r1,108(%r15)
	srl	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L578
	l	%r1,108(%r15)
	ahi	%r1,1
	j	.L579
.L578:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L577:
	l	%r1,108(%r15)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L580
	lhi	%r1,0
.L579:
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ltr	%r2,%r2
	jne	.L584
	lhi	%r12,0
	j	.L585
.L584:
	lr	%r1,%r2
	lhi	%r12,1
	j	.L586
.L587:
	sra	%r1,1
	ahi	%r12,1
.L586:
	lhi	%r2,1
	nr	%r2,%r1
	ltr	%r2,%r2
	je	.L587
	nopr	%r0
.L585:
	lr	%r2,%r12
	l	%r12,48(%r15)
	.cfi_restore 12
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
	larl	%r5,.L598
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	le	%f0,100(%r15)
	keb	%f0,.L599-.L598(%r5)
	jl	.L591
	le	%f0,100(%r15)
	keb	%f0,.L600-.L598(%r5)
	jnh	.L596
.L591:
	lhi	%r1,1
	j	.L595
.L596:
	lhi	%r1,0
.L595:
	nopr	%r0
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L598:
.L600:
	.long	2139095039
.L599:
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
	larl	%r5,.L609
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	std	%f0,96(%r15)
	ld	%f0,96(%r15)
	kdb	%f0,.L610-.L609(%r5)
	jl	.L602
	ld	%f0,96(%r15)
	kdb	%f0,.L611-.L609(%r5)
	jnh	.L607
.L602:
	lhi	%r1,1
	j	.L606
.L607:
	lhi	%r1,0
.L606:
	nopr	%r0
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L609:
.L611:
	.long	2146435071
	.long	-1
.L610:
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
	larl	%r5,.L620
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
	ld	%f1,.L621-.L620(%r5)
	ld	%f3,.L621-.L620+8(%r5)
	kxbr	%f0,%f1
	jl	.L613
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,.L622-.L620(%r5)
	ld	%f3,.L622-.L620+8(%r5)
	kxbr	%f0,%f1
	jnh	.L618
.L613:
	lhi	%r1,1
	j	.L617
.L618:
	lhi	%r1,0
.L617:
	nopr	%r0
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
.L620:
.L622:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L621:
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
	larl	%r5,.L636
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	ste	%f0,100(%r15)
	st	%r2,96(%r15)
	le	%f0,100(%r15)
	ceb	%f0,100(%r15)
	jo	.L627
	le	%f0,100(%r15)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,100(%r15)
	cebr	%f0,%f2
	je	.L627
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L628
	l	%r1,.L637-.L636(%r5)
	j	.L629
.L628:
	l	%r1,.L638-.L636(%r5)
.L629:
	st	%r1,108(%r15)
.L632:
	l	%r1,96(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L630
	le	%f0,100(%r15)
	meeb	%f0,108(%r15)
	ste	%f0,100(%r15)
.L630:
	l	%r1,96(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,96(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L634
	le	%f0,108(%r15)
	meeb	%f0,108(%r15)
	ste	%f0,108(%r15)
	j	.L632
.L634:
	nopr	%r0
.L627:
	le	%f0,100(%r15)
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L636:
.L638:
	.long	1073741824
.L637:
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
	larl	%r5,.L649
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	std	%f0,104(%r15)
	st	%r2,100(%r15)
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jo	.L640
	ld	%f0,104(%r15)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,104(%r15)
	cdbr	%f0,%f2
	je	.L640
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L641
	lm	%r2,%r3,.L650-.L649(%r5)
	j	.L642
.L641:
	lm	%r2,%r3,.L651-.L649(%r5)
.L642:
	stm	%r2,%r3,112(%r15)
.L645:
	l	%r1,100(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L643
	ld	%f0,104(%r15)
	mdb	%f0,112(%r15)
	std	%f0,104(%r15)
.L643:
	l	%r1,100(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,100(%r15)
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L647
	ld	%f0,112(%r15)
	mdb	%f0,112(%r15)
	std	%f0,112(%r15)
	j	.L645
.L647:
	nopr	%r0
.L640:
	ld	%f0,104(%r15)
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L649:
.L651:
	.long	1073741824
	.long	0
.L650:
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
	larl	%r5,.L662
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
	jo	.L653
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	axbr	%f0,%f0
	ld	%f4,96(%r15)
	ld	%f6,104(%r15)
	cxbr	%f4,%f0
	je	.L653
	l	%r1,112(%r15)
	ltr	%r1,%r1
	jhe	.L654
	ld	%f0,.L663-.L662(%r5)
	ld	%f2,.L663-.L662+8(%r5)
	j	.L655
.L654:
	ld	%f0,.L664-.L662(%r5)
	ld	%f2,.L664-.L662+8(%r5)
.L655:
	std	%f0,120(%r15)
	std	%f2,128(%r15)
.L658:
	l	%r1,112(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L656
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f4,120(%r15)
	ld	%f6,128(%r15)
	mxbr	%f0,%f4
	std	%f0,96(%r15)
	std	%f2,104(%r15)
.L656:
	l	%r1,112(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	ltr	%r1,%r1
	je	.L660
	ld	%f0,120(%r15)
	ld	%f2,128(%r15)
	ld	%f4,120(%r15)
	ld	%f6,128(%r15)
	mxbr	%f0,%f4
	std	%f0,120(%r15)
	std	%f2,128(%r15)
	j	.L658
.L660:
	nopr	%r0
.L653:
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
.L662:
.L664:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L663:
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
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L666
.L667:
	l	%r1,104(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,104(%r15)
	ic	%r3,0(%r1)
	l	%r1,116(%r15)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,116(%r15)
	ic	%r2,0(%r1)
	xr	%r2,%r3
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L666:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L667
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
	j	.L672
.L674:
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L672:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L673
	l	%r1,104(%r15)
	ic	%r2,0(%r1)
	l	%r1,116(%r15)
	stc	%r2,0(%r1)
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L674
.L673:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L675
	l	%r1,116(%r15)
	mvi	0(%r1),0
.L675:
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
	j	.L680
.L685:
	nopr	%r0
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L680:
	l	%r1,108(%r15)
	cl	%r1,96(%r15)
	jhe	.L681
	l	%r1,100(%r15)
	a	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L685
.L681:
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
	j	.L689
.L693:
	l	%r1,96(%r15)
	st	%r1,108(%r15)
	j	.L690
.L692:
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
	jne	.L690
	l	%r1,100(%r15)
	j	.L691
.L690:
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L692
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L689:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L693
	lhi	%r1,0
.L691:
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
.L698:
	ic	%r2,0(%r1)
	lhi	%r3,255
	nr	%r3,%r2
	l	%r2,100(%r15)
	cr	%r2,%r3
	jne	.L697
	st	%r1,108(%r15)
.L697:
	lr	%r2,%r1
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r2,0(%r2)
	lhi	%r3,255
	nr	%r2,%r3
	ltr	%r2,%r2
	jne	.L698
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
	l	%r2,96(%r15)
	brasl	%r14,strlen
	st	%r2,108(%r15)
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L705
	l	%r1,100(%r15)
	j	.L704
.L707:
	l	%r4,108(%r15)
	l	%r3,96(%r15)
	l	%r2,104(%r15)
	brasl	%r14,strncmp
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L706
	l	%r1,104(%r15)
	j	.L704
.L706:
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L705:
	l	%r1,96(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r3,%r1
	l	%r2,100(%r15)
	brasl	%r14,strchr
	st	%r2,104(%r15)
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L707
	lhi	%r1,0
.L704:
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
	larl	%r5,.L721
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	kdb	%f0,.L722-.L721(%r5)
	jnl	.L711
	ld	%f0,96(%r15)
	kdb	%f0,.L722-.L721(%r5)
	jh	.L713
.L711:
	ld	%f0,104(%r15)
	kdb	%f0,.L722-.L721(%r5)
	jnh	.L714
	ld	%f0,96(%r15)
	kdb	%f0,.L722-.L721(%r5)
	jnl	.L714
.L713:
	ld	%f0,104(%r15)
	lcdbr	%f0,%f0
	j	.L717
.L714:
	ld	%f0,104(%r15)
.L717:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L721:
.L722:
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
	st	%r1,116(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jne	.L724
	l	%r1,108(%r15)
	j	.L725
.L724:
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
	j	.L725
.L729:
	l	%r1,108(%r15)
	ic	%r2,0(%r1)
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L728
	l	%r1,108(%r15)
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
	jne	.L728
	l	%r1,108(%r15)
	j	.L725
.L728:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L727:
	l	%r1,108(%r15)
	cl	%r1,116(%r15)
	jle	.L729
	lhi	%r1,0
.L725:
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
	larl	%r5,.L754
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	std	%f0,104(%r15)
	st	%r2,100(%r15)
	lhi	%r1,0
	st	%r1,112(%r15)
	lhi	%r1,0
	st	%r1,116(%r15)
	ld	%f0,104(%r15)
	kdb	%f0,.L755-.L754(%r5)
	jnl	.L737
	ld	%f0,104(%r15)
	lcdbr	%f0,%f0
	std	%f0,104(%r15)
	lhi	%r1,1
	st	%r1,116(%r15)
.L737:
	ld	%f0,104(%r15)
	kdb	%f0,.L756-.L754(%r5)
	jnhe	.L752
	j	.L741
.L742:
	l	%r1,112(%r15)
	ahi	%r1,1
	st	%r1,112(%r15)
	ld	%f0,104(%r15)
	ddb	%f0,.L757-.L754(%r5)
	std	%f0,104(%r15)
.L741:
	ld	%f0,104(%r15)
	kdb	%f0,.L756-.L754(%r5)
	jhe	.L742
	j	.L743
.L752:
	ld	%f0,104(%r15)
	kdb	%f0,.L758-.L754(%r5)
	jnl	.L743
	ld	%f0,104(%r15)
	cdb	%f0,.L755-.L754(%r5)
	je	.L743
	j	.L745
.L746:
	l	%r1,112(%r15)
	ahi	%r1,-1
	st	%r1,112(%r15)
	ld	%f0,104(%r15)
	adbr	%f0,%f0
	std	%f0,104(%r15)
.L745:
	ld	%f0,104(%r15)
	kdb	%f0,.L758-.L754(%r5)
	jl	.L746
.L743:
	l	%r1,100(%r15)
	l	%r2,112(%r15)
	st	%r2,0(%r1)
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L747
	ld	%f0,104(%r15)
	lcdbr	%f0,%f0
	std	%f0,104(%r15)
.L747:
	ld	%f0,104(%r15)
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L754:
.L758:
	.long	1071644672
	.long	0
.L757:
	.long	1073741824
	.long	0
.L756:
	.long	1072693248
	.long	0
.L755:
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
	j	.L760
.L763:
	lhi	%r1,0
	n	%r1,112(%r15)
	lhi	%r2,1
	n	%r2,116(%r15)
	or	%r1,%r2
	ltr	%r1,%r1
	je	.L761
	lm	%r2,%r3,96(%r15)
	al	%r3,124(%r15)
	alc	%r2,120(%r15)
	stm	%r2,%r3,120(%r15)
.L761:
	lm	%r2,%r3,96(%r15)
	sldl	%r2,1
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,1
	stm	%r2,%r3,112(%r15)
.L760:
	l	%r1,112(%r15)
	o	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L763
	lm	%r2,%r3,120(%r15)
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
	j	.L768
.L770:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L768:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L771
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L771
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L770
	j	.L771
.L773:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L772
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L772:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L771:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L773
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L774
	l	%r1,108(%r15)
	j	.L775
.L774:
	l	%r1,112(%r15)
.L775:
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
	jne	.L779
	lhi	%r1,7
	j	.L780
.L779:
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
.L780:
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
	jhe	.L784
	l	%r1,96(%r15)
	lhi	%r2,-1
	xr	%r2,%r1
	l	%r1,100(%r15)
	lhi	%r3,-1
	xr	%r1,%r3
	st	%r2,96(%r15)
	st	%r1,100(%r15)
.L784:
	l	%r1,96(%r15)
	o	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L786
	lhi	%r1,63
	j	.L787
.L786:
	lm	%r2,%r3,96(%r15)
	brasl	%r14,__clzdi2
	lr	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	ahi	%r1,-1
.L787:
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
	j	.L791
.L793:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L792
	l	%r1,108(%r15)
	a	%r1,96(%r15)
	st	%r1,108(%r15)
.L792:
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sll	%r1,1
	st	%r1,96(%r15)
.L791:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L793
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
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,3
	st	%r1,116(%r15)
	lhi	%r1,-8
	n	%r1,100(%r15)
	st	%r1,120(%r15)
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L798
	l	%r2,104(%r15)
	a	%r2,100(%r15)
	l	%r1,108(%r15)
	clr	%r1,%r2
	jle	.L805
.L798:
	lhi	%r1,0
	st	%r1,124(%r15)
	j	.L800
.L801:
	l	%r1,124(%r15)
	sll	%r1,3
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,124(%r15)
	sll	%r1,3
	a	%r1,108(%r15)
	lm	%r2,%r3,0(%r2)
	stm	%r2,%r3,0(%r1)
	l	%r1,124(%r15)
	ahi	%r1,1
	st	%r1,124(%r15)
.L800:
	l	%r1,124(%r15)
	cl	%r1,116(%r15)
	jl	.L801
	j	.L802
.L803:
	l	%r2,104(%r15)
	a	%r2,120(%r15)
	l	%r1,108(%r15)
	a	%r1,120(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,120(%r15)
	ahi	%r1,1
	st	%r1,120(%r15)
.L802:
	l	%r1,100(%r15)
	cl	%r1,120(%r15)
	jh	.L803
	j	.L804
.L806:
	l	%r2,104(%r15)
	a	%r2,100(%r15)
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L805:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L806
	nopr	%r0
.L804:
	nopr	%r0
	l	%r15,188(%r15)
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
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,112(%r15)
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L810
	l	%r2,104(%r15)
	a	%r2,100(%r15)
	l	%r1,108(%r15)
	clr	%r1,%r2
	jle	.L816
.L810:
	lhi	%r1,0
	st	%r1,116(%r15)
	j	.L812
.L813:
	l	%r1,116(%r15)
	sll	%r1,1
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,116(%r15)
	sll	%r1,1
	a	%r1,108(%r15)
	lh	%r2,0(%r2)
	sth	%r2,0(%r1)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
.L812:
	l	%r1,116(%r15)
	cl	%r1,112(%r15)
	jl	.L813
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L815
	l	%r1,100(%r15)
	ahi	%r1,-1
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	ahi	%r1,-1
	a	%r1,108(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	j	.L815
.L817:
	l	%r2,104(%r15)
	a	%r2,100(%r15)
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L816:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L817
	nopr	%r0
.L815:
	nopr	%r0
	l	%r15,180(%r15)
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
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	st	%r2,108(%r15)
	st	%r3,104(%r15)
	st	%r4,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,2
	st	%r1,116(%r15)
	lhi	%r1,-4
	n	%r1,100(%r15)
	st	%r1,120(%r15)
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L821
	l	%r2,104(%r15)
	a	%r2,100(%r15)
	l	%r1,108(%r15)
	clr	%r1,%r2
	jle	.L828
.L821:
	lhi	%r1,0
	st	%r1,124(%r15)
	j	.L823
.L824:
	l	%r1,124(%r15)
	sll	%r1,2
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,124(%r15)
	sll	%r1,2
	a	%r1,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,124(%r15)
	ahi	%r1,1
	st	%r1,124(%r15)
.L823:
	l	%r1,124(%r15)
	cl	%r1,116(%r15)
	jl	.L824
	j	.L825
.L826:
	l	%r2,104(%r15)
	a	%r2,120(%r15)
	l	%r1,108(%r15)
	a	%r1,120(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,120(%r15)
	ahi	%r1,1
	st	%r1,120(%r15)
.L825:
	l	%r1,100(%r15)
	cl	%r1,120(%r15)
	jh	.L826
	j	.L827
.L829:
	l	%r2,104(%r15)
	a	%r2,100(%r15)
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L828:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L829
	nopr	%r0
.L827:
	nopr	%r0
	l	%r15,188(%r15)
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
	larl	%r5,.L840
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	cdfbr	%f0,%r1
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L838
	adb	%f0,.L841-.L840(%r5)
.L838:
	nopr	%r0
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L840:
.L841:
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
	larl	%r5,.L846
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	cdfbr	%f0,%r1
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L843
	adb	%f0,.L847-.L846(%r5)
.L843:
	ledbr	%f0,%f0
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L846:
.L847:
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
	larl	%r5,.L868
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L861
.L864:
	lh	%r1,102(%r15)
	l	%r2,.L869-.L868(%r5)
	nr	%r2,%r1
	lhi	%r1,15
	s	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L866
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L861:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L864
	j	.L863
.L866:
	nopr	%r0
.L863:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L868:
.L869:
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
	larl	%r5,.L878
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L871
.L874:
	lh	%r1,102(%r15)
	l	%r2,.L879-.L878(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L876
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L871:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L874
	j	.L873
.L876:
	nopr	%r0
.L873:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L878:
.L879:
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
	larl	%r5,.L887
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	le	%f0,100(%r15)
	keb	%f0,.L888-.L887(%r5)
	jnhe	.L885
	le	%f0,100(%r15)
	seb	%f0,.L888-.L887(%r5)
	cfebr	%r1,5,%f0
	a	%r1,.L889-.L887(%r5)
	j	.L883
.L885:
	le	%f0,100(%r15)
	cfebr	%r1,5,%f0
.L883:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L887:
.L888:
	.long	1191182336
.L889:
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
	larl	%r5,.L896
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L891
.L893:
	lh	%r1,102(%r15)
	l	%r2,.L897-.L896(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L892
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
.L892:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L891:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L893
	lhi	%r1,1
	n	%r1,104(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L896:
.L897:
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
	larl	%r5,.L904
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r2,102(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L899
.L901:
	lh	%r1,102(%r15)
	l	%r2,.L905-.L904(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L900
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
.L900:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L899:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L901
	l	%r1,104(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L904:
.L905:
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
	j	.L907
.L909:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L908
	l	%r1,108(%r15)
	a	%r1,96(%r15)
	st	%r1,108(%r15)
.L908:
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sll	%r1,1
	st	%r1,96(%r15)
.L907:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L909
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
	jne	.L916
	lhi	%r1,0
	j	.L915
.L918:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L917
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,108(%r15)
.L917:
	l	%r1,100(%r15)
	sll	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	srl	%r1,1
	st	%r1,96(%r15)
.L916:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jne	.L918
	l	%r1,108(%r15)
.L915:
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
	j	.L922
.L924:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L922:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L925
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L925
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L924
	j	.L925
.L927:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L926
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L926:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L925:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L927
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L928
	l	%r1,108(%r15)
	j	.L929
.L928:
	l	%r1,112(%r15)
.L929:
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
	jnl	.L940
	lhi	%r1,-1
	j	.L935
.L940:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnh	.L941
	lhi	%r1,1
	j	.L935
.L941:
	lhi	%r1,0
.L935:
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
	jnl	.L952
	lhi	%r1,-1
	j	.L947
.L952:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnh	.L953
	lhi	%r1,1
	j	.L947
.L953:
	lhi	%r1,0
.L947:
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
	jhe	.L965
	l	%r1,96(%r15)
	lcr	%r1,%r1
	st	%r1,96(%r15)
	lhi	%r1,1
	st	%r1,112(%r15)
.L965:
	mvi	119(%r15),0
	j	.L966
.L969:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L967
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,108(%r15)
.L967:
	l	%r1,100(%r15)
	sll	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sra	%r1,1
	st	%r1,96(%r15)
	ic	%r1,119(%r15)
	ahi	%r1,1
	stc	%r1,119(%r15)
.L966:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L968
	ic	%r1,119(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L969
.L968:
	l	%r1,112(%r15)
	ltr	%r1,%r1
	je	.L970
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L972
.L970:
	l	%r1,108(%r15)
.L972:
	nopr	%r0
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
	jhe	.L976
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
.L976:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L977
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
.L977:
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
	je	.L978
	l	%r1,104(%r15)
	lcr	%r1,%r1
	st	%r1,104(%r15)
.L978:
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
	jhe	.L983
	l	%r1,100(%r15)
	lcr	%r1,%r1
	st	%r1,100(%r15)
	lhi	%r1,1
	st	%r1,108(%r15)
.L983:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L984
	l	%r1,96(%r15)
	lcr	%r1,%r1
	st	%r1,96(%r15)
.L984:
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
	je	.L985
	l	%r1,104(%r15)
	lcr	%r1,%r1
	st	%r1,104(%r15)
.L985:
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
	larl	%r5,.L999
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
	j	.L990
.L992:
	lh	%r1,100(%r15)
	sll	%r1,1
	sth	%r1,100(%r15)
	lh	%r1,110(%r15)
	sll	%r1,1
	sth	%r1,110(%r15)
.L990:
	lh	%r1,100(%r15)
	n	%r1,.L1000-.L999(%r5)
	lh	%r2,102(%r15)
	n	%r2,.L1000-.L999(%r5)
	clr	%r1,%r2
	jhe	.L993
	lh	%r1,110(%r15)
	n	%r1,.L1000-.L999(%r5)
	ltr	%r1,%r1
	je	.L993
	lh	%r1,100(%r15)
	sll	%r1,16
	sra	%r1,16
	ltr	%r1,%r1
	jhe	.L992
	j	.L993
.L995:
	lh	%r1,102(%r15)
	n	%r1,.L1000-.L999(%r5)
	lh	%r2,100(%r15)
	n	%r2,.L1000-.L999(%r5)
	clr	%r1,%r2
	jl	.L994
	lh	%r1,102(%r15)
	lh	%r2,100(%r15)
	sr	%r1,%r2
	sth	%r1,102(%r15)
	oc	108(2,%r15),110(%r15)
.L994:
	lh	%r1,110(%r15)
	n	%r1,.L1000-.L999(%r5)
	srl	%r1,1
	sth	%r1,110(%r15)
	lh	%r1,100(%r15)
	n	%r1,.L1000-.L999(%r5)
	srl	%r1,1
	sth	%r1,100(%r15)
.L993:
	lh	%r1,110(%r15)
	n	%r1,.L1000-.L999(%r5)
	ltr	%r1,%r1
	jne	.L995
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L996
	lh	%r1,102(%r15)
	j	.L997
.L996:
	lh	%r1,108(%r15)
.L997:
	n	%r1,.L1000-.L999(%r5)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L999:
.L1000:
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
	j	.L1002
.L1004:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L1002:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L1005
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L1005
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L1004
	j	.L1005
.L1007:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L1006
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L1006:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L1005:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L1007
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L1008
	l	%r1,108(%r15)
	j	.L1009
.L1008:
	l	%r1,112(%r15)
.L1009:
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
	je	.L1013
	lhi	%r1,0
	st	%r1,116(%r15)
	l	%r2,124(%r15)
	l	%r1,100(%r15)
	s	%r1,132(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,112(%r15)
	j	.L1014
.L1013:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L1015
	lm	%r2,%r3,104(%r15)
	j	.L1017
.L1015:
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
.L1014:
	lm	%r2,%r3,112(%r15)
.L1017:
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
	je	.L1021
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
	j	.L1022
.L1021:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L1023
	lm	%r2,%r3,104(%r15)
	j	.L1025
.L1023:
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
.L1022:
	lm	%r2,%r3,112(%r15)
.L1025:
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
	larl	%r13,.L1031
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	srdl	%r2,56
	lm	%r4,%r5,96(%r15)
	srdl	%r4,40
	lhi	%r0,0
	nr	%r0,%r4
	l	%r1,.L1032-.L1031(%r13)
	nr	%r1,%r5
	lr	%r5,%r0
	or	%r5,%r2
	lr	%r4,%r3
	or	%r4,%r1
	lm	%r2,%r3,96(%r15)
	srdl	%r2,24
	lhi	%r0,0
	nr	%r0,%r2
	l	%r1,.L1033-.L1031(%r13)
	nr	%r1,%r3
	or	%r5,%r0
	or	%r4,%r1
	lm	%r2,%r3,96(%r15)
	srdl	%r2,8
	lhi	%r0,0
	nr	%r0,%r2
	l	%r1,.L1034-.L1031(%r13)
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
	l	%r5,.L1032-.L1031(%r13)
	nr	%r5,%r2
	lhi	%r1,0
	nr	%r1,%r3
	or	%r0,%r5
	or	%r4,%r1
	lr	%r5,%r4
	lm	%r2,%r3,96(%r15)
	sldl	%r2,40
	l	%r4,.L1033-.L1031(%r13)
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
.L1031:
.L1034:
	.long	-16777216
.L1033:
	.long	16711680
.L1032:
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
	larl	%r5,.L1038
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,24
	lr	%r2,%r1
	l	%r1,100(%r15)
	srl	%r1,8
	n	%r1,.L1039-.L1038(%r5)
	or	%r2,%r1
	l	%r1,100(%r15)
	sll	%r1,8
	n	%r1,.L1040-.L1038(%r5)
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
.L1038:
.L1040:
	.long	16711680
.L1039:
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
	larl	%r5,.L1052
	.cfi_offset 15, -36
	ahi	%r15,-160
	.cfi_def_cfa_offset 256
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,156(%r15)
	l	%r1,156(%r15)
	cl	%r1,.L1053-.L1052(%r5)
	jh	.L1042
	lhi	%r1,16
	j	.L1043
.L1042:
	lhi	%r1,0
.L1043:
	st	%r1,152(%r15)
	lhi	%r1,16
	s	%r1,152(%r15)
	l	%r2,156(%r15)
	srl	%r2,0(%r1)
	st	%r2,148(%r15)
	l	%r1,152(%r15)
	st	%r1,144(%r15)
	l	%r1,.L1054-.L1052(%r5)
	n	%r1,148(%r15)
	ltr	%r1,%r1
	jne	.L1044
	lhi	%r1,8
	j	.L1045
.L1044:
	lhi	%r1,0
.L1045:
	st	%r1,140(%r15)
	lhi	%r1,8
	s	%r1,140(%r15)
	l	%r2,148(%r15)
	srl	%r2,0(%r1)
	st	%r2,136(%r15)
	l	%r1,140(%r15)
	a	%r1,144(%r15)
	st	%r1,132(%r15)
	lhi	%r1,240
	n	%r1,136(%r15)
	ltr	%r1,%r1
	jne	.L1046
	lhi	%r1,4
	j	.L1047
.L1046:
	lhi	%r1,0
.L1047:
	st	%r1,128(%r15)
	lhi	%r1,4
	s	%r1,128(%r15)
	l	%r2,136(%r15)
	srl	%r2,0(%r1)
	st	%r2,124(%r15)
	l	%r1,128(%r15)
	a	%r1,132(%r15)
	st	%r1,120(%r15)
	lhi	%r1,12
	n	%r1,124(%r15)
	ltr	%r1,%r1
	jne	.L1048
	lhi	%r1,2
	j	.L1049
.L1048:
	lhi	%r1,0
.L1049:
	st	%r1,116(%r15)
	lhi	%r1,2
	s	%r1,116(%r15)
	l	%r2,124(%r15)
	srl	%r2,0(%r1)
	st	%r2,112(%r15)
	l	%r1,116(%r15)
	a	%r1,120(%r15)
	st	%r1,108(%r15)
	lhi	%r1,2
	n	%r1,112(%r15)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lhi	%r1,2
	s	%r1,112(%r15)
	msr	%r1,%r2
	a	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,220(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1052:
.L1054:
	.long	65280
.L1053:
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
	jhe	.L1056
	lhi	%r1,0
	j	.L1061
.L1056:
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	cr	%r1,%r2
	jle	.L1058
	lhi	%r1,2
	j	.L1061
.L1058:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jhe	.L1059
	lhi	%r1,0
	j	.L1061
.L1059:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jle	.L1060
	lhi	%r1,2
	j	.L1061
.L1060:
	lhi	%r1,1
.L1061:
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
	larl	%r5,.L1079
	.cfi_offset 15, -36
	ahi	%r15,-160
	.cfi_def_cfa_offset 256
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,156(%r15)
	l	%r1,.L1080-.L1079(%r5)
	n	%r1,156(%r15)
	ltr	%r1,%r1
	jne	.L1069
	lhi	%r1,16
	j	.L1070
.L1069:
	lhi	%r1,0
.L1070:
	st	%r1,152(%r15)
	l	%r1,152(%r15)
	l	%r2,156(%r15)
	srl	%r2,0(%r1)
	st	%r2,148(%r15)
	l	%r1,152(%r15)
	st	%r1,144(%r15)
	lhi	%r1,255
	n	%r1,148(%r15)
	ltr	%r1,%r1
	jne	.L1071
	lhi	%r1,8
	j	.L1072
.L1071:
	lhi	%r1,0
.L1072:
	st	%r1,140(%r15)
	l	%r1,140(%r15)
	l	%r2,148(%r15)
	srl	%r2,0(%r1)
	st	%r2,136(%r15)
	l	%r1,140(%r15)
	a	%r1,144(%r15)
	st	%r1,132(%r15)
	lhi	%r1,15
	n	%r1,136(%r15)
	ltr	%r1,%r1
	jne	.L1073
	lhi	%r1,4
	j	.L1074
.L1073:
	lhi	%r1,0
.L1074:
	st	%r1,128(%r15)
	l	%r1,128(%r15)
	l	%r2,136(%r15)
	srl	%r2,0(%r1)
	st	%r2,124(%r15)
	l	%r1,128(%r15)
	a	%r1,132(%r15)
	st	%r1,120(%r15)
	lhi	%r1,3
	n	%r1,124(%r15)
	ltr	%r1,%r1
	jne	.L1075
	lhi	%r1,2
	j	.L1076
.L1075:
	lhi	%r1,0
.L1076:
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	l	%r2,124(%r15)
	srl	%r2,0(%r1)
	st	%r2,112(%r15)
	lhi	%r1,3
	n	%r1,112(%r15)
	st	%r1,108(%r15)
	l	%r1,116(%r15)
	a	%r1,120(%r15)
	st	%r1,104(%r15)
	l	%r1,108(%r15)
	lhi	%r2,-1
	xr	%r1,%r2
	lhi	%r2,1
	nr	%r2,%r1
	l	%r1,108(%r15)
	srl	%r1,1
	lr	%r3,%r1
	lhi	%r1,2
	sr	%r1,%r3
	lcr	%r2,%r2
	nr	%r1,%r2
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r15,220(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1079:
.L1080:
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
	je	.L1082
	lhi	%r1,0
	st	%r1,112(%r15)
	l	%r2,120(%r15)
	l	%r1,100(%r15)
	s	%r1,132(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	j	.L1083
.L1082:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L1084
	l	%r2,104(%r15)
	l	%r1,108(%r15)
	j	.L1086
.L1084:
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
.L1083:
	l	%r2,112(%r15)
	l	%r1,116(%r15)
.L1086:
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
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	lhi	%r1,16
	st	%r1,132(%r15)
	l	%r1,132(%r15)
	lhi	%r2,-1
	srl	%r2,0(%r1)
	st	%r2,128(%r15)
	l	%r2,100(%r15)
	n	%r2,128(%r15)
	l	%r1,96(%r15)
	n	%r1,128(%r15)
	msr	%r1,%r2
	st	%r1,108(%r15)
	l	%r2,108(%r15)
	l	%r1,132(%r15)
	srl	%r2,0(%r1)
	st	%r2,124(%r15)
	l	%r1,108(%r15)
	n	%r1,128(%r15)
	st	%r1,108(%r15)
	l	%r1,132(%r15)
	l	%r2,100(%r15)
	srl	%r2,0(%r1)
	l	%r1,96(%r15)
	n	%r1,128(%r15)
	msr	%r1,%r2
	a	%r1,124(%r15)
	st	%r1,120(%r15)
	l	%r3,108(%r15)
	l	%r2,120(%r15)
	n	%r2,128(%r15)
	l	%r1,132(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,132(%r15)
	l	%r2,120(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,104(%r15)
	l	%r2,108(%r15)
	l	%r1,132(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,108(%r15)
	n	%r1,128(%r15)
	st	%r1,108(%r15)
	l	%r1,132(%r15)
	l	%r2,96(%r15)
	srl	%r2,0(%r1)
	l	%r1,100(%r15)
	n	%r1,128(%r15)
	msr	%r1,%r2
	a	%r1,116(%r15)
	st	%r1,112(%r15)
	l	%r3,108(%r15)
	l	%r2,112(%r15)
	n	%r2,128(%r15)
	l	%r1,132(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	lr	%r3,%r1
	l	%r1,132(%r15)
	l	%r2,112(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,104(%r15)
	l	%r1,104(%r15)
	lr	%r4,%r1
	l	%r1,132(%r15)
	l	%r2,100(%r15)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	l	%r1,132(%r15)
	l	%r2,96(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	msr	%r1,%r2
	ar	%r1,%r4
	st	%r1,104(%r15)
	lm	%r2,%r3,104(%r15)
	l	%r15,196(%r15)
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
	lm	%r2,%r3,112(%r15)
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
	je	.L1100
	ahi	%r2,-1
.L1100:
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
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,104(%r15)
	l	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,108(%r15)
	xr	%r1,%r2
	st	%r1,124(%r15)
	l	%r1,124(%r15)
	srl	%r1,16
	x	%r1,124(%r15)
	st	%r1,120(%r15)
	l	%r1,120(%r15)
	srl	%r1,8
	x	%r1,120(%r15)
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	srl	%r1,4
	x	%r1,116(%r15)
	st	%r1,112(%r15)
	lhi	%r2,15
	n	%r2,112(%r15)
	lhi	%r1,27030
	sra	%r1,0(%r2)
	lhi	%r2,1
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,188(%r15)
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
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	srl	%r1,16
	x	%r1,116(%r15)
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	srl	%r1,8
	x	%r1,112(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,4
	x	%r1,108(%r15)
	st	%r1,104(%r15)
	lhi	%r2,15
	n	%r2,104(%r15)
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
	larl	%r13,.L1113
	ahi	%r15,-144
	.cfi_def_cfa_offset 240
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,136(%r15)
	lm	%r2,%r3,136(%r15)
	srdl	%r2,1
	l	%r12,.L1114-.L1113(%r13)
	nr	%r12,%r2
	lr	%r10,%r12
	l	%r12,.L1114-.L1113(%r13)
	nr	%r12,%r3
	lr	%r11,%r12
	lm	%r2,%r3,136(%r15)
	slr	%r3,%r11
	slbr	%r2,%r10
	stm	%r2,%r3,128(%r15)
	lm	%r2,%r3,128(%r15)
	srdl	%r2,2
	l	%r12,.L1115-.L1113(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	l	%r12,.L1115-.L1113(%r13)
	nr	%r12,%r3
	lr	%r1,%r12
	l	%r2,.L1115-.L1113(%r13)
	n	%r2,128(%r15)
	lr	%r4,%r2
	l	%r2,.L1115-.L1113(%r13)
	n	%r2,132(%r15)
	lr	%r5,%r2
	alr	%r1,%r5
	alcr	%r0,%r4
	stm	%r0,%r1,120(%r15)
	lm	%r2,%r3,120(%r15)
	srdl	%r2,4
	al	%r3,124(%r15)
	alc	%r2,120(%r15)
	l	%r1,.L1116-.L1113(%r13)
	nr	%r1,%r2
	st	%r1,112(%r15)
	l	%r1,.L1116-.L1113(%r13)
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
	st	%r1,104(%r15)
	l	%r1,104(%r15)
	srl	%r1,8
	a	%r1,104(%r15)
	lhi	%r2,127
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r10,%r15,184(%r15)
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
.L1113:
.L1116:
	.long	252645135
.L1115:
	.long	858993459
.L1114:
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
	larl	%r5,.L1120
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,124(%r15)
	l	%r1,124(%r15)
	srl	%r1,1
	l	%r2,.L1121-.L1120(%r5)
	nr	%r2,%r1
	l	%r1,124(%r15)
	sr	%r1,%r2
	st	%r1,120(%r15)
	l	%r1,120(%r15)
	srl	%r1,2
	l	%r2,.L1122-.L1120(%r5)
	nr	%r2,%r1
	l	%r1,.L1122-.L1120(%r5)
	n	%r1,120(%r15)
	ar	%r2,%r1
	st	%r2,116(%r15)
	l	%r1,116(%r15)
	srl	%r1,4
	a	%r1,116(%r15)
	n	%r1,.L1123-.L1120(%r5)
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	srl	%r1,16
	a	%r1,112(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,8
	a	%r1,108(%r15)
	lhi	%r2,63
	nr	%r1,%r2
	lr	%r2,%r1
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1120:
.L1123:
	.long	252645135
.L1122:
	.long	858993459
.L1121:
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
	larl	%r5,.L1135
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
	ld	%f0,.L1136-.L1135(%r5)
	std	%f0,120(%r15)
.L1128:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L1125
	ld	%f0,120(%r15)
	mdb	%f0,104(%r15)
	std	%f0,120(%r15)
.L1125:
	l	%r1,100(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,100(%r15)
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L1133
	ld	%f0,104(%r15)
	mdb	%f0,104(%r15)
	std	%f0,104(%r15)
	j	.L1128
.L1133:
	nopr	%r0
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L1129
	ld	%f0,.L1136-.L1135(%r5)
	ddb	%f0,120(%r15)
	j	.L1131
.L1129:
	ld	%f0,120(%r15)
.L1131:
	nopr	%r0
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1135:
.L1136:
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
	larl	%r5,.L1148
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
	le	%f0,.L1149-.L1148(%r5)
	ste	%f0,108(%r15)
.L1141:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L1138
	le	%f0,108(%r15)
	meeb	%f0,100(%r15)
	ste	%f0,108(%r15)
.L1138:
	l	%r1,96(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,96(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L1146
	le	%f0,100(%r15)
	meeb	%f0,100(%r15)
	ste	%f0,100(%r15)
	j	.L1141
.L1146:
	nopr	%r0
	l	%r1,104(%r15)
	ltr	%r1,%r1
	je	.L1142
	le	%f0,.L1149-.L1148(%r5)
	deb	%f0,108(%r15)
	j	.L1144
.L1142:
	le	%f0,108(%r15)
.L1144:
	nopr	%r0
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L1148:
.L1149:
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
	jhe	.L1151
	lhi	%r1,0
	j	.L1156
.L1151:
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	clr	%r1,%r2
	jle	.L1153
	lhi	%r1,2
	j	.L1156
.L1153:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jhe	.L1154
	lhi	%r1,0
	j	.L1156
.L1154:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jle	.L1155
	lhi	%r1,2
	j	.L1156
.L1155:
	lhi	%r1,1
.L1156:
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
