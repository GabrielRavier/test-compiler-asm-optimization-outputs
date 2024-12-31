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
	j	.L11
.L13:
	l	%r1,96(%r15)
	ahi	%r1,-1
	st	%r1,96(%r15)
	l	%r1,112(%r15)
	ahi	%r1,1
	st	%r1,112(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
.L11:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L12
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
	jne	.L13
.L12:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L14
	l	%r1,116(%r15)
	ahi	%r1,1
	j	.L15
.L14:
	lhi	%r1,0
.L15:
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
	j	.L18
.L20:
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L18:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L19
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r15)
	cr	%r1,%r2
	jne	.L20
.L19:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L21
	l	%r1,116(%r15)
	j	.L23
.L21:
	lhi	%r1,0
.L23:
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
	j	.L26
.L28:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	ahi	%r1,1
	st	%r1,112(%r15)
.L26:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L27
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L28
.L27:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L29
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
	j	.L31
.L29:
	lhi	%r1,0
.L31:
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
	j	.L34
.L35:
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
.L34:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L35
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
	j	.L39
.L41:
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r15)
	cr	%r1,%r2
	jne	.L39
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	j	.L40
.L39:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L41
	lhi	%r1,0
.L40:
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
	j	.L44
.L45:
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
.L44:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L45
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
	j	.L49
.L50:
	l	%r1,96(%r15)
	ahi	%r1,1
	st	%r1,96(%r15)
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L49:
	l	%r1,96(%r15)
	ic	%r2,0(%r1)
	l	%r1,100(%r15)
	stc	%r2,0(%r1)
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L50
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
	j	.L54
.L56:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L54:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L55
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r15)
	cr	%r1,%r2
	jne	.L56
.L55:
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
.L62:
	ic	%r2,0(%r1)
	lhi	%r3,255
	nr	%r3,%r2
	l	%r2,100(%r15)
	cr	%r2,%r3
	jne	.L60
	j	.L61
.L60:
	lr	%r2,%r1
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r2,0(%r2)
	lhi	%r3,255
	nr	%r2,%r3
	ltr	%r2,%r2
	jne	.L62
	lhi	%r1,0
.L61:
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
	j	.L65
.L67:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	ahi	%r1,1
	st	%r1,96(%r15)
.L65:
	l	%r1,100(%r15)
	ic	%r2,0(%r1)
	l	%r1,96(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L66
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L67
.L66:
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
	j	.L71
.L72:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L71:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L72
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
	jne	.L78
	lhi	%r1,0
	j	.L77
.L80:
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	ahi	%r1,1
	st	%r1,112(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L78:
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L79
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L79
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L79
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,112(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L80
.L79:
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
.L77:
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
	j	.L83
.L84:
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
.L83:
	l	%r1,100(%r15)
	chi	%r1,1
	jh	.L84
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
	je	.L93
	l	%r1,100(%r15)
	chi	%r1,9
	jne	.L94
.L93:
	lhi	%r1,1
	j	.L96
.L94:
	lhi	%r1,0
.L96:
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
	jle	.L99
	l	%r1,100(%r15)
	chi	%r1,127
	jne	.L100
.L99:
	lhi	%r1,1
	j	.L102
.L100:
	lhi	%r1,0
.L102:
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
	je	.L117
	l	%r1,100(%r15)
	ahi	%r1,-9
	lhi	%r2,4
	clr	%r1,%r2
	jh	.L118
.L117:
	lhi	%r1,1
	j	.L120
.L118:
	lhi	%r1,0
.L120:
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
	larl	%r5,.L130
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L126
	l	%r1,100(%r15)
	ahi	%r1,-127
	lhi	%r2,32
	clr	%r1,%r2
	jle	.L126
	l	%r1,100(%r15)
	ahi	%r1,-8232
	lhi	%r2,1
	clr	%r1,%r2
	jle	.L126
	l	%r1,.L131-.L130(%r5)
	a	%r1,100(%r15)
	lhi	%r2,2
	clr	%r1,%r2
	jh	.L127
.L126:
	lhi	%r1,1
	j	.L129
.L127:
	lhi	%r1,0
.L129:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L130:
.L131:
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
	larl	%r5,.L142
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	lhi	%r2,254
	clr	%r1,%r2
	jh	.L136
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
	j	.L137
.L136:
	l	%r1,100(%r15)
	lhi	%r2,8231
	clr	%r1,%r2
	jle	.L138
	l	%r1,100(%r15)
	ahi	%r1,-8234
	cl	%r1,.L143-.L142(%r5)
	jle	.L138
	l	%r1,.L144-.L142(%r5)
	a	%r1,100(%r15)
	lhi	%r2,8184
	clr	%r1,%r2
	jh	.L139
.L138:
	lhi	%r1,1
	j	.L137
.L139:
	l	%r1,.L145-.L142(%r5)
	a	%r1,100(%r15)
	cl	%r1,.L146-.L142(%r5)
	jh	.L140
	l	%r1,.L147-.L142(%r5)
	n	%r1,100(%r15)
	c	%r1,.L147-.L142(%r5)
	jne	.L141
.L140:
	lhi	%r1,0
	j	.L137
.L141:
	lhi	%r1,1
.L137:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L142:
.L147:
	.long	65534
.L146:
	.long	1048579
.L145:
	.long	-65532
.L144:
	.long	-57344
.L143:
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
	jle	.L149
	lhi	%r1,32
	o	%r1,100(%r15)
	ahi	%r1,-97
	lhi	%r2,5
	clr	%r1,%r2
	jh	.L150
.L149:
	lhi	%r1,1
	j	.L152
.L150:
	lhi	%r1,0
.L152:
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
	larl	%r5,.L166
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L158
	ld	%f0,104(%r15)
	j	.L159
.L158:
	ld	%f0,96(%r15)
	cdb	%f0,96(%r15)
	jno	.L160
	ld	%f0,96(%r15)
	j	.L159
.L160:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnh	.L165
	ld	%f0,104(%r15)
	sdb	%f0,96(%r15)
	j	.L159
.L165:
	ld	%f0,.L167-.L166(%r5)
.L159:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L166:
.L167:
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
	larl	%r5,.L177
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	ste	%f2,96(%r15)
	le	%f0,100(%r15)
	ceb	%f0,100(%r15)
	jno	.L169
	le	%f0,100(%r15)
	j	.L170
.L169:
	le	%f0,96(%r15)
	ceb	%f0,96(%r15)
	jno	.L171
	le	%f0,96(%r15)
	j	.L170
.L171:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnh	.L176
	le	%f0,100(%r15)
	seb	%f0,96(%r15)
	j	.L170
.L176:
	le	%f0,.L178-.L177(%r5)
.L170:
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L177:
.L178:
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
	jno	.L180
	lm	%r2,%r3,104(%r15)
	j	.L181
.L180:
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L182
	lm	%r2,%r3,112(%r15)
	j	.L181
.L182:
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L183
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L184
	lm	%r2,%r3,104(%r15)
	j	.L181
.L184:
	lm	%r2,%r3,112(%r15)
	j	.L181
.L183:
	ld	%f0,112(%r15)
	kdb	%f0,104(%r15)
	jnl	.L190
	lm	%r2,%r3,104(%r15)
	j	.L181
.L190:
	lm	%r2,%r3,112(%r15)
.L181:
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
	jno	.L193
	l	%r1,104(%r15)
	j	.L194
.L193:
	le	%f0,104(%r15)
	ceb	%f0,104(%r15)
	jno	.L195
	l	%r1,108(%r15)
	j	.L194
.L195:
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,104(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L196
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L197
	l	%r1,104(%r15)
	j	.L194
.L197:
	l	%r1,108(%r15)
	j	.L194
.L196:
	le	%f0,108(%r15)
	keb	%f0,104(%r15)
	jnl	.L203
	l	%r1,104(%r15)
	j	.L194
.L203:
	l	%r1,108(%r15)
.L194:
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
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	lr	%r12,%r4
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	cxbr	%f0,%f1
	jno	.L206
	l	%r1,132(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L207
.L206:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	cxbr	%f0,%f1
	jno	.L208
	l	%r1,132(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L207
.L208:
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
	je	.L209
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L210
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	j	.L211
.L210:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
.L211:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L207
.L209:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jnl	.L216
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	j	.L214
.L216:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
.L214:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L207:
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
	jno	.L219
	lm	%r2,%r3,104(%r15)
	j	.L220
.L219:
	ld	%f0,104(%r15)
	cdb	%f0,104(%r15)
	jno	.L221
	lm	%r2,%r3,112(%r15)
	j	.L220
.L221:
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,104(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L222
	ld	%f0,112(%r15)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L223
	lm	%r2,%r3,112(%r15)
	j	.L220
.L223:
	lm	%r2,%r3,104(%r15)
	j	.L220
.L222:
	ld	%f0,112(%r15)
	kdb	%f0,104(%r15)
	jnl	.L229
	lm	%r2,%r3,112(%r15)
	j	.L220
.L229:
	lm	%r2,%r3,104(%r15)
.L220:
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
	jno	.L232
	l	%r1,104(%r15)
	j	.L233
.L232:
	le	%f0,104(%r15)
	ceb	%f0,104(%r15)
	jno	.L234
	l	%r1,108(%r15)
	j	.L233
.L234:
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,104(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L235
	le	%f0,108(%r15)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L236
	l	%r1,108(%r15)
	j	.L233
.L236:
	l	%r1,104(%r15)
	j	.L233
.L235:
	le	%f0,108(%r15)
	keb	%f0,104(%r15)
	jnl	.L242
	l	%r1,108(%r15)
	j	.L233
.L242:
	l	%r1,104(%r15)
.L233:
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
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	lr	%r12,%r4
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	cxbr	%f0,%f1
	jno	.L245
	l	%r1,132(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L246
.L245:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	cxbr	%f0,%f1
	jno	.L247
	l	%r1,132(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L246
.L247:
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
	je	.L248
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L249
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	j	.L250
.L249:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
.L250:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L246
.L248:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jnl	.L255
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	j	.L253
.L255:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
.L253:
	l	%r1,132(%r15)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L246:
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
	j	.L258
.L259:
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
.L258:
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L259
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
	stm	%r2,%r3,0(%r1)
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
	jne	.L268
	l	%r1,108(%r15)
	lhi	%r2,0
	st	%r2,4(%r1)
	l	%r1,108(%r15)
	l	%r2,4(%r1)
	l	%r1,108(%r15)
	st	%r2,0(%r1)
	j	.L267
.L268:
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
	je	.L267
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,108(%r15)
	st	%r2,4(%r1)
.L267:
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
	je	.L272
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,108(%r15)
	l	%r2,4(%r2)
	st	%r2,4(%r1)
.L272:
	l	%r1,108(%r15)
	l	%r1,4(%r1)
	ltr	%r1,%r1
	je	.L274
	l	%r1,108(%r15)
	l	%r1,4(%r1)
	l	%r2,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L274:
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
	lr	%r3,%r12
	lhi	%r2,0
	l	%r1,112(%r15)
	st	%r1,124(%r15)
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	st	%r1,120(%r15)
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L277
.L280:
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
	jne	.L278
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,124(%r15)
	j	.L279
.L278:
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L277:
	l	%r1,132(%r15)
	cl	%r1,120(%r15)
	jl	.L280
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
.L279:
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
	lr	%r3,%r12
	lhi	%r2,0
	l	%r1,112(%r15)
	st	%r1,124(%r15)
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	st	%r1,120(%r15)
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L283
.L286:
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
	jne	.L284
	lr	%r1,%r12
	ms	%r1,132(%r15)
	a	%r1,124(%r15)
	j	.L285
.L284:
	l	%r1,132(%r15)
	ahi	%r1,1
	st	%r1,132(%r15)
.L283:
	l	%r1,132(%r15)
	cl	%r1,120(%r15)
	jl	.L286
	lhi	%r1,0
.L285:
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
	j	.L292
.L293:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L292:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L293
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L294
	chi	%r1,45
	jne	.L296
	lhi	%r1,1
	st	%r1,104(%r15)
.L294:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L296
.L297:
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
.L296:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L297
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L298
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L300
.L298:
	l	%r1,108(%r15)
.L300:
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
	j	.L303
.L304:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L303:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L304
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L305
	chi	%r1,45
	jne	.L307
	lhi	%r1,1
	st	%r1,104(%r15)
.L305:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L307
.L308:
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
.L307:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L308
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jne	.L309
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L311
.L309:
	l	%r1,108(%r15)
.L311:
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
	j	.L314
.L315:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L314:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L315
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L316
	chi	%r1,45
	jne	.L318
	lhi	%r1,1
	st	%r1,108(%r15)
.L316:
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
	j	.L318
.L319:
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
.L318:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L319
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L320
	lm	%r2,%r3,112(%r15)
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L323
	ahi	%r2,-1
.L323:
	j	.L322
.L320:
	lm	%r2,%r3,112(%r15)
.L322:
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
	j	.L326
.L331:
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
	jhe	.L327
	l	%r1,108(%r15)
	srl	%r1,1
	st	%r1,108(%r15)
	j	.L326
.L327:
	l	%r1,120(%r15)
	ltr	%r1,%r1
	jle	.L329
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
	j	.L326
.L329:
	l	%r1,124(%r15)
	j	.L330
.L326:
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jne	.L331
	lhi	%r1,0
.L330:
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
	j	.L334
.L338:
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
	jne	.L335
	l	%r1,124(%r15)
	j	.L336
.L335:
	l	%r1,120(%r15)
	ltr	%r1,%r1
	jle	.L337
	l	%r1,124(%r15)
	a	%r1,104(%r15)
	st	%r1,132(%r15)
	l	%r1,128(%r15)
	ahi	%r1,-1
	st	%r1,128(%r15)
.L337:
	l	%r1,128(%r15)
	sra	%r1,1
	st	%r1,128(%r15)
.L334:
	l	%r1,128(%r15)
	ltr	%r1,%r1
	jne	.L338
	lhi	%r1,0
.L336:
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
	jhe	.L344
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L347
	ahi	%r2,-1
.L347:
.L344:
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
	stm	%r12,%r15,48(%r15)
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
	lr	%r12,%r2
	lr	%r13,%r3
	lm	%r2,%r3,104(%r15)
	lm	%r4,%r5,96(%r15)
	brasl	%r14,__moddi3
	l	%r1,116(%r15)
	stm	%r12,%r13,0(%r1)
	l	%r1,116(%r15)
	stm	%r2,%r3,8(%r1)
	l	%r2,116(%r15)
	lm	%r12,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
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
	jhe	.L359
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L362
	ahi	%r2,-1
.L362:
.L359:
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
	stm	%r12,%r15,48(%r15)
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
	lr	%r12,%r2
	lr	%r13,%r3
	lm	%r2,%r3,104(%r15)
	lm	%r4,%r5,96(%r15)
	brasl	%r14,__moddi3
	l	%r1,116(%r15)
	stm	%r12,%r13,0(%r1)
	l	%r1,116(%r15)
	stm	%r2,%r3,8(%r1)
	l	%r2,116(%r15)
	lm	%r12,%r15,184(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
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
	j	.L368
.L370:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
.L368:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L369
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	cr	%r2,%r1
	jne	.L370
.L369:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L371
	l	%r1,100(%r15)
	j	.L373
.L371:
	lhi	%r1,0
.L373:
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
	j	.L376
.L378:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	ahi	%r1,4
	st	%r1,96(%r15)
.L376:
	l	%r1,100(%r15)
	l	%r2,0(%r1)
	l	%r1,96(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L377
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L377
	l	%r1,96(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L378
.L377:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L379
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	l	%r2,96(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L380
	lhi	%r2,0
.L380:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L382
.L379:
	lhi	%r1,-1
.L382:
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
.L385:
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
	jne	.L385
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
	j	.L389
.L390:
	l	%r1,100(%r15)
	ahi	%r1,4
	st	%r1,100(%r15)
.L389:
	l	%r1,100(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L390
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
	j	.L394
.L396:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,4
	st	%r1,104(%r15)
.L394:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L395
	l	%r1,108(%r15)
	l	%r2,0(%r1)
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L395
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L395
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L396
.L395:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L397
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L398
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L399
	lhi	%r2,0
.L399:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L402
.L398:
	lhi	%r1,-1
	j	.L402
.L397:
	lhi	%r1,0
.L402:
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
	j	.L405
.L407:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
.L405:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L406
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	cr	%r2,%r1
	jne	.L407
.L406:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L408
	l	%r1,108(%r15)
	j	.L410
.L408:
	lhi	%r1,0
.L410:
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
	j	.L413
.L415:
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
	l	%r1,108(%r15)
	ahi	%r1,4
	st	%r1,108(%r15)
	l	%r1,104(%r15)
	ahi	%r1,4
	st	%r1,104(%r15)
.L413:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L414
	l	%r1,108(%r15)
	l	%r2,0(%r1)
	l	%r1,104(%r15)
	l	%r1,0(%r1)
	cr	%r2,%r1
	je	.L415
.L414:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L416
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L417
	l	%r1,108(%r15)
	l	%r1,0(%r1)
	l	%r2,104(%r15)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L418
	lhi	%r2,0
.L418:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L421
.L417:
	lhi	%r1,-1
	j	.L421
.L416:
	lhi	%r1,0
.L421:
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
	j	.L424
.L425:
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
.L424:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L425
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
	jne	.L429
	l	%r1,108(%r15)
	j	.L430
.L429:
	l	%r1,108(%r15)
	l	%r2,104(%r15)
	sr	%r1,%r2
	l	%r2,100(%r15)
	sll	%r2,2
	clr	%r1,%r2
	jhe	.L435
	j	.L432
.L433:
	l	%r1,100(%r15)
	sll	%r1,2
	a	%r1,104(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	sll	%r1,2
	a	%r1,108(%r15)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L432:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L433
	j	.L434
.L436:
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
.L435:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L436
.L434:
	l	%r1,116(%r15)
.L430:
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
	j	.L439
.L440:
	l	%r1,108(%r15)
	lr	%r2,%r1
	ahi	%r2,4
	st	%r2,108(%r15)
	l	%r2,104(%r15)
	st	%r2,0(%r1)
.L439:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L440
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
	jhe	.L444
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,112(%r15)
	a	%r1,100(%r15)
	st	%r1,112(%r15)
	j	.L445
.L446:
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
.L445:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L446
	j	.L450
.L444:
	l	%r1,116(%r15)
	c	%r1,112(%r15)
	je	.L450
	j	.L448
.L449:
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
.L448:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L449
.L450:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	stm	%r2,%r3,104(%r15)
	st	%r4,100(%r15)
	lm	%r2,%r3,104(%r15)
	l	%r12,100(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,0(%r12)
	l	%r12,100(%r15)
	lcr	%r12,%r12
	lhi	%r11,63
	nr	%r12,%r11
	srdl	%r2,0(%r12)
	lr	%r12,%r2
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r2,%r3
	or	%r2,%r5
	lr	%r1,%r2
	lr	%r2,%r0
	lr	%r3,%r1
	lm	%r11,%r15,156(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	stm	%r2,%r3,104(%r15)
	st	%r4,100(%r15)
	lm	%r2,%r3,104(%r15)
	l	%r12,100(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,0(%r12)
	l	%r12,100(%r15)
	lcr	%r12,%r12
	lhi	%r11,63
	nr	%r12,%r11
	sldl	%r2,0(%r12)
	lr	%r12,%r2
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r2,%r3
	or	%r2,%r5
	lr	%r1,%r2
	lr	%r2,%r0
	lr	%r3,%r1
	lm	%r11,%r15,156(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	larl	%r5,.L472
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	sth	%r1,102(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L473-.L472(%r5)
	nr	%r2,%r1
	l	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r15)
	l	%r2,.L473-.L472(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L473-.L472(%r5)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L472:
.L473:
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
	larl	%r5,.L476
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	st	%r3,96(%r15)
	sth	%r1,102(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L477-.L476(%r5)
	nr	%r2,%r1
	l	%r1,96(%r15)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r15)
	l	%r2,.L477-.L476(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L477-.L476(%r5)
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L476:
.L477:
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
	larl	%r5,.L486
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r1,102(%r15)
	lhi	%r1,255
	st	%r1,108(%r15)
	lh	%r1,102(%r15)
	l	%r2,.L487-.L486(%r5)
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
	n	%r1,.L487-.L486(%r5)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L486:
.L487:
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
	ahi	%r15,-192
	.cfi_def_cfa_offset 288
	stm	%r2,%r3,176(%r15)
	lhi	%r2,0
	lhi	%r3,255
	stm	%r2,%r3,184(%r15)
	lm	%r2,%r3,184(%r15)
	sldl	%r2,56
	lr	%r1,%r2
	n	%r1,176(%r15)
	lr	%r4,%r1
	lr	%r1,%r3
	n	%r1,180(%r15)
	lr	%r5,%r1
	srdl	%r4,56
	lm	%r2,%r3,184(%r15)
	sldl	%r2,48
	lr	%r1,%r2
	n	%r1,176(%r15)
	st	%r1,96(%r15)
	lr	%r1,%r3
	n	%r1,180(%r15)
	st	%r1,100(%r15)
	lm	%r2,%r3,96(%r15)
	srdl	%r2,40
	lr	%r1,%r4
	or	%r1,%r2
	lr	%r12,%r1
	lr	%r1,%r5
	or	%r1,%r3
	lr	%r13,%r1
	lm	%r2,%r3,184(%r15)
	sldl	%r2,40
	lr	%r1,%r2
	n	%r1,176(%r15)
	lr	%r10,%r1
	lr	%r1,%r3
	n	%r1,180(%r15)
	lr	%r11,%r1
	lr	%r2,%r10
	lr	%r3,%r11
	srdl	%r2,24
	lr	%r1,%r12
	or	%r1,%r2
	lr	%r8,%r1
	lr	%r1,%r13
	or	%r1,%r3
	lr	%r9,%r1
	lm	%r2,%r3,184(%r15)
	sldl	%r2,32
	lr	%r1,%r2
	n	%r1,176(%r15)
	st	%r1,104(%r15)
	lr	%r1,%r3
	n	%r1,180(%r15)
	st	%r1,108(%r15)
	lm	%r2,%r3,104(%r15)
	srdl	%r2,8
	lr	%r1,%r8
	or	%r1,%r2
	st	%r1,112(%r15)
	lr	%r1,%r9
	or	%r1,%r3
	st	%r1,116(%r15)
	lm	%r2,%r3,184(%r15)
	sldl	%r2,24
	lr	%r1,%r2
	n	%r1,176(%r15)
	st	%r1,120(%r15)
	lr	%r1,%r3
	n	%r1,180(%r15)
	st	%r1,124(%r15)
	lm	%r2,%r3,120(%r15)
	sldl	%r2,8
	lm	%r4,%r5,112(%r15)
	lr	%r1,%r4
	or	%r1,%r2
	st	%r1,128(%r15)
	lr	%r1,%r3
	or	%r1,%r5
	st	%r1,132(%r15)
	lm	%r2,%r3,184(%r15)
	sldl	%r2,16
	lr	%r1,%r2
	n	%r1,176(%r15)
	st	%r1,136(%r15)
	lr	%r1,%r3
	n	%r1,180(%r15)
	st	%r1,140(%r15)
	lm	%r2,%r3,136(%r15)
	sldl	%r2,24
	lm	%r4,%r5,128(%r15)
	lr	%r1,%r4
	or	%r1,%r2
	st	%r1,144(%r15)
	lr	%r1,%r3
	or	%r1,%r5
	st	%r1,148(%r15)
	lm	%r2,%r3,184(%r15)
	sldl	%r2,8
	lr	%r1,%r2
	n	%r1,176(%r15)
	st	%r1,152(%r15)
	lr	%r1,%r3
	n	%r1,180(%r15)
	st	%r1,156(%r15)
	lm	%r2,%r3,152(%r15)
	sldl	%r2,40
	lm	%r4,%r5,144(%r15)
	lr	%r1,%r4
	or	%r1,%r2
	lr	%r6,%r1
	lr	%r1,%r5
	or	%r1,%r3
	lr	%r7,%r1
	l	%r1,176(%r15)
	n	%r1,184(%r15)
	st	%r1,160(%r15)
	l	%r1,180(%r15)
	n	%r1,188(%r15)
	st	%r1,164(%r15)
	lm	%r2,%r3,160(%r15)
	sldl	%r2,56
	lr	%r1,%r6
	or	%r1,%r2
	st	%r1,168(%r15)
	lr	%r1,%r7
	or	%r1,%r3
	st	%r1,172(%r15)
	lm	%r2,%r3,168(%r15)
	lm	%r6,%r15,216(%r15)
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
	j	.L495
.L498:
	l	%r2,100(%r15)
	l	%r1,108(%r15)
	srl	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L496
	l	%r1,108(%r15)
	ahi	%r1,1
	j	.L497
.L496:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L495:
	l	%r1,108(%r15)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L498
	lhi	%r1,0
.L497:
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
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L501
	lhi	%r1,0
	j	.L502
.L501:
	lhi	%r12,1
	j	.L503
.L504:
	sra	%r1,1
	ahi	%r12,1
.L503:
	lhi	%r2,1
	nr	%r2,%r1
	ltr	%r2,%r2
	je	.L504
	lr	%r1,%r12
.L502:
	lr	%r2,%r1
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
	larl	%r5,.L513
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	le	%f0,100(%r15)
	keb	%f0,.L514-.L513(%r5)
	jl	.L507
	le	%f0,100(%r15)
	keb	%f0,.L515-.L513(%r5)
	jnh	.L512
.L507:
	lhi	%r1,1
	j	.L511
.L512:
	lhi	%r1,0
.L511:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L513:
.L515:
	.long	2139095039
.L514:
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
	larl	%r5,.L523
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	std	%f0,96(%r15)
	ld	%f0,96(%r15)
	kdb	%f0,.L524-.L523(%r5)
	jl	.L517
	ld	%f0,96(%r15)
	kdb	%f0,.L525-.L523(%r5)
	jnh	.L522
.L517:
	lhi	%r1,1
	j	.L521
.L522:
	lhi	%r1,0
.L521:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L523:
.L525:
	.long	2146435071
	.long	-1
.L524:
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
	larl	%r5,.L533
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r12,%r2
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,.L534-.L533(%r5)
	ld	%f3,.L534-.L533+8(%r5)
	kxbr	%f0,%f1
	jl	.L527
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,.L535-.L533(%r5)
	ld	%f3,.L535-.L533+8(%r5)
	kxbr	%f0,%f1
	jnh	.L532
.L527:
	lhi	%r1,1
	j	.L531
.L532:
	lhi	%r1,0
.L531:
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
.L533:
.L535:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L534:
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
	larl	%r5,.L547
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	ste	%f0,108(%r15)
	st	%r2,104(%r15)
	le	%f0,108(%r15)
	ceb	%f0,108(%r15)
	jo	.L539
	le	%f0,108(%r15)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,108(%r15)
	cebr	%f0,%f2
	je	.L539
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L540
	l	%r1,.L548-.L547(%r5)
	j	.L541
.L540:
	l	%r1,.L549-.L547(%r5)
.L541:
	st	%r1,116(%r15)
.L544:
	l	%r1,104(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L542
	le	%f0,108(%r15)
	meeb	%f0,116(%r15)
	ste	%f0,108(%r15)
.L542:
	l	%r1,104(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,104(%r15)
	l	%r1,104(%r15)
	ltr	%r1,%r1
	je	.L546
	le	%f0,116(%r15)
	meeb	%f0,116(%r15)
	ste	%f0,116(%r15)
	j	.L544
.L546:
	nopr	%r0
.L539:
	l	%r1,108(%r15)
	st	%r1,100(%r15)
	le	%f0,100(%r15)
	l	%r15,180(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L547:
.L549:
	.long	1073741824
.L548:
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
	larl	%r5,.L559
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	std	%f0,112(%r15)
	st	%r2,108(%r15)
	ld	%f0,112(%r15)
	cdb	%f0,112(%r15)
	jo	.L551
	ld	%f0,112(%r15)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,112(%r15)
	cdbr	%f0,%f2
	je	.L551
	l	%r1,108(%r15)
	ltr	%r1,%r1
	jhe	.L552
	lm	%r2,%r3,.L560-.L559(%r5)
	j	.L553
.L552:
	lm	%r2,%r3,.L561-.L559(%r5)
.L553:
	stm	%r2,%r3,120(%r15)
.L556:
	l	%r1,108(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L554
	ld	%f0,112(%r15)
	mdb	%f0,120(%r15)
	std	%f0,112(%r15)
.L554:
	l	%r1,108(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	ltr	%r1,%r1
	je	.L558
	ld	%f0,120(%r15)
	mdb	%f0,120(%r15)
	std	%f0,120(%r15)
	j	.L556
.L558:
	nopr	%r0
.L551:
	lm	%r2,%r3,112(%r15)
	stm	%r2,%r3,96(%r15)
	ld	%f0,96(%r15)
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L559:
.L561:
	.long	1073741824
	.long	0
.L560:
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
	larl	%r5,.L571
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
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	st	%r4,112(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f4,96(%r15)
	ld	%f6,104(%r15)
	cxbr	%f0,%f4
	jo	.L563
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	axbr	%f0,%f0
	ld	%f4,96(%r15)
	ld	%f6,104(%r15)
	cxbr	%f4,%f0
	je	.L563
	l	%r1,112(%r15)
	ltr	%r1,%r1
	jhe	.L564
	ld	%f0,.L572-.L571(%r5)
	ld	%f2,.L572-.L571+8(%r5)
	j	.L565
.L564:
	ld	%f0,.L573-.L571(%r5)
	ld	%f2,.L573-.L571+8(%r5)
.L565:
	std	%f0,120(%r15)
	std	%f2,128(%r15)
.L568:
	l	%r1,112(%r15)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L566
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f4,120(%r15)
	ld	%f6,128(%r15)
	mxbr	%f0,%f4
	std	%f0,96(%r15)
	std	%f2,104(%r15)
.L566:
	l	%r1,112(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	ltr	%r1,%r1
	je	.L570
	ld	%f0,120(%r15)
	ld	%f2,128(%r15)
	ld	%f4,120(%r15)
	ld	%f6,128(%r15)
	mxbr	%f0,%f4
	std	%f0,120(%r15)
	std	%f2,128(%r15)
	j	.L568
.L570:
	nopr	%r0
.L563:
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
.L571:
.L573:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L572:
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
	j	.L575
.L576:
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
.L575:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L576
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
	j	.L580
.L582:
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
	l	%r1,100(%r15)
	ahi	%r1,-1
	st	%r1,100(%r15)
.L580:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L581
	l	%r1,104(%r15)
	ic	%r2,0(%r1)
	l	%r1,116(%r15)
	stc	%r2,0(%r1)
	l	%r1,116(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L582
.L581:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L583
	l	%r1,116(%r15)
	mvi	0(%r1),0
.L583:
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
	j	.L587
.L592:
	nopr	%r0
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L587:
	l	%r1,108(%r15)
	cl	%r1,96(%r15)
	jhe	.L588
	l	%r1,100(%r15)
	a	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L592
.L588:
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
	j	.L595
.L599:
	l	%r1,96(%r15)
	st	%r1,108(%r15)
	j	.L596
.L598:
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
	jne	.L596
	l	%r1,100(%r15)
	j	.L597
.L596:
	l	%r1,108(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L598
	l	%r1,100(%r15)
	ahi	%r1,1
	st	%r1,100(%r15)
.L595:
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L599
	lhi	%r1,0
.L597:
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
.L603:
	ic	%r2,0(%r1)
	lhi	%r3,255
	nr	%r3,%r2
	l	%r2,100(%r15)
	cr	%r2,%r3
	jne	.L602
	st	%r1,108(%r15)
.L602:
	lr	%r2,%r1
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r2,0(%r2)
	lhi	%r3,255
	nr	%r2,%r3
	ltr	%r2,%r2
	jne	.L603
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
	jne	.L609
	l	%r1,100(%r15)
	j	.L608
.L611:
	l	%r4,104(%r15)
	l	%r3,96(%r15)
	l	%r2,108(%r15)
	brasl	%r14,strncmp
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L610
	l	%r1,108(%r15)
	j	.L608
.L610:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L609:
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
	jne	.L611
	lhi	%r1,0
.L608:
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
	larl	%r5,.L623
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	std	%f0,104(%r15)
	std	%f2,96(%r15)
	ld	%f0,104(%r15)
	kdb	%f0,.L624-.L623(%r5)
	jnl	.L614
	ld	%f0,96(%r15)
	kdb	%f0,.L624-.L623(%r5)
	jh	.L616
.L614:
	ld	%f0,104(%r15)
	kdb	%f0,.L624-.L623(%r5)
	jnh	.L617
	ld	%f0,96(%r15)
	kdb	%f0,.L624-.L623(%r5)
	jnl	.L617
.L616:
	ld	%f0,104(%r15)
	lcdbr	%f0,%f0
	j	.L620
.L617:
	ld	%f0,104(%r15)
.L620:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L623:
.L624:
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
	jne	.L626
	l	%r1,108(%r15)
	j	.L627
.L626:
	l	%r2,104(%r15)
	l	%r1,96(%r15)
	clr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L628
	lhi	%r1,0
	j	.L627
.L628:
	l	%r1,108(%r15)
	st	%r1,116(%r15)
	j	.L629
.L631:
	l	%r1,116(%r15)
	ic	%r2,0(%r1)
	l	%r1,100(%r15)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L630
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
	jne	.L630
	l	%r1,116(%r15)
	j	.L627
.L630:
	l	%r1,116(%r15)
	ahi	%r1,1
	st	%r1,116(%r15)
.L629:
	l	%r1,116(%r15)
	cl	%r1,112(%r15)
	jle	.L631
	lhi	%r1,0
.L627:
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
	larl	%r5,.L653
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
	kdb	%f0,.L654-.L653(%r5)
	jnl	.L637
	ld	%f0,112(%r15)
	lcdbr	%f0,%f0
	std	%f0,112(%r15)
	lhi	%r1,1
	st	%r1,124(%r15)
.L637:
	ld	%f0,112(%r15)
	kdb	%f0,.L655-.L653(%r5)
	jnhe	.L652
	j	.L641
.L642:
	l	%r1,120(%r15)
	ahi	%r1,1
	st	%r1,120(%r15)
	ld	%f0,112(%r15)
	ddb	%f0,.L656-.L653(%r5)
	std	%f0,112(%r15)
.L641:
	ld	%f0,112(%r15)
	kdb	%f0,.L655-.L653(%r5)
	jhe	.L642
	j	.L643
.L652:
	ld	%f0,112(%r15)
	kdb	%f0,.L657-.L653(%r5)
	jnl	.L643
	ld	%f0,112(%r15)
	cdb	%f0,.L654-.L653(%r5)
	je	.L643
	j	.L645
.L646:
	l	%r1,120(%r15)
	ahi	%r1,-1
	st	%r1,120(%r15)
	ld	%f0,112(%r15)
	adbr	%f0,%f0
	std	%f0,112(%r15)
.L645:
	ld	%f0,112(%r15)
	kdb	%f0,.L657-.L653(%r5)
	jl	.L646
.L643:
	l	%r1,108(%r15)
	l	%r2,120(%r15)
	st	%r2,0(%r1)
	l	%r1,124(%r15)
	ltr	%r1,%r1
	je	.L647
	ld	%f0,112(%r15)
	lcdbr	%f0,%f0
	std	%f0,112(%r15)
.L647:
	lm	%r2,%r3,112(%r15)
	stm	%r2,%r3,96(%r15)
	ld	%f0,96(%r15)
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L653:
.L657:
	.long	1071644672
	.long	0
.L656:
	.long	1073741824
	.long	0
.L655:
	.long	1072693248
	.long	0
.L654:
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
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
	j	.L659
.L662:
	lhi	%r1,0
	n	%r1,112(%r15)
	lr	%r12,%r1
	lhi	%r1,1
	n	%r1,116(%r15)
	lr	%r13,%r1
	lr	%r1,%r12
	or	%r1,%r13
	ltr	%r1,%r1
	je	.L660
	lm	%r2,%r3,96(%r15)
	al	%r3,124(%r15)
	alc	%r2,120(%r15)
	stm	%r2,%r3,120(%r15)
.L660:
	lm	%r2,%r3,96(%r15)
	sldl	%r2,1
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,1
	stm	%r2,%r3,112(%r15)
.L659:
	l	%r1,112(%r15)
	o	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L662
	lm	%r2,%r3,120(%r15)
	lm	%r12,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
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
	j	.L666
.L668:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L666:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L669
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L669
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L668
	j	.L669
.L671:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L670
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L670:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L669:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L671
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L672
	l	%r1,108(%r15)
	j	.L673
.L672:
	l	%r1,112(%r15)
.L673:
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
	stc	%r1,103(%r15)
	ic	%r1,103(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L676
	lhi	%r1,7
	j	.L677
.L676:
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
.L677:
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
	jhe	.L680
	l	%r1,96(%r15)
	lhi	%r2,-1
	xr	%r2,%r1
	lr	%r4,%r2
	l	%r1,100(%r15)
	lhi	%r2,-1
	xr	%r2,%r1
	lr	%r5,%r2
	stm	%r4,%r5,96(%r15)
.L680:
	l	%r1,96(%r15)
	o	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L682
	lhi	%r1,63
	j	.L683
.L682:
	lm	%r2,%r3,96(%r15)
	brasl	%r14,__clzdi2
	lr	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	ahi	%r1,-1
.L683:
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
	j	.L686
.L688:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L687
	l	%r1,108(%r15)
	a	%r1,96(%r15)
	st	%r1,108(%r15)
.L687:
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sll	%r1,1
	st	%r1,96(%r15)
.L686:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L688
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
	jl	.L692
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	clr	%r1,%r2
	jle	.L699
.L692:
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L694
.L695:
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
.L694:
	l	%r1,132(%r15)
	cl	%r1,124(%r15)
	jl	.L695
	j	.L696
.L697:
	l	%r2,116(%r15)
	a	%r2,128(%r15)
	l	%r1,120(%r15)
	a	%r1,128(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,128(%r15)
	ahi	%r1,1
	st	%r1,128(%r15)
.L696:
	l	%r1,100(%r15)
	cl	%r1,128(%r15)
	jh	.L697
	j	.L698
.L700:
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L699:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L700
	nopr	%r0
.L698:
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
	jl	.L703
	l	%r2,112(%r15)
	a	%r2,100(%r15)
	l	%r1,116(%r15)
	clr	%r1,%r2
	jle	.L709
.L703:
	lhi	%r1,0
	st	%r1,124(%r15)
	j	.L705
.L706:
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
.L705:
	l	%r1,124(%r15)
	cl	%r1,120(%r15)
	jl	.L706
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L708
	l	%r1,100(%r15)
	ahi	%r1,-1
	a	%r1,112(%r15)
	lr	%r2,%r1
	l	%r1,100(%r15)
	ahi	%r1,-1
	a	%r1,116(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	j	.L708
.L710:
	l	%r2,112(%r15)
	a	%r2,100(%r15)
	l	%r1,116(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L709:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L710
	nopr	%r0
.L708:
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
	jl	.L713
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	clr	%r1,%r2
	jle	.L720
.L713:
	lhi	%r1,0
	st	%r1,132(%r15)
	j	.L715
.L716:
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
.L715:
	l	%r1,132(%r15)
	cl	%r1,124(%r15)
	jl	.L716
	j	.L717
.L718:
	l	%r2,116(%r15)
	a	%r2,128(%r15)
	l	%r1,120(%r15)
	a	%r1,128(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,128(%r15)
	ahi	%r1,1
	st	%r1,128(%r15)
.L717:
	l	%r1,100(%r15)
	cl	%r1,128(%r15)
	jh	.L718
	j	.L719
.L721:
	l	%r2,116(%r15)
	a	%r2,100(%r15)
	l	%r1,120(%r15)
	a	%r1,100(%r15)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L720:
	l	%r1,100(%r15)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r15)
	ltr	%r1,%r1
	jne	.L721
	nopr	%r0
.L719:
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
	larl	%r5,.L729
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	cdfbr	%f0,%r1
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L728
	adb	%f0,.L730-.L729(%r5)
.L728:
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L729:
.L730:
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
	larl	%r5,.L734
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	cdfbr	%f0,%r1
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jhe	.L732
	adb	%f0,.L735-.L734(%r5)
.L732:
	ledbr	%f0,%f0
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L734:
.L735:
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
	larl	%r5,.L752
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r1,102(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L746
.L749:
	lh	%r1,102(%r15)
	l	%r2,.L753-.L752(%r5)
	nr	%r2,%r1
	lhi	%r1,15
	s	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L751
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L746:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L749
	j	.L748
.L751:
	nopr	%r0
.L748:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L752:
.L753:
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
	larl	%r5,.L761
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r1,102(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L755
.L758:
	lh	%r1,102(%r15)
	l	%r2,.L762-.L761(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L760
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L755:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L758
	j	.L757
.L760:
	nopr	%r0
.L757:
	l	%r1,108(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L761:
.L762:
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
	larl	%r5,.L769
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	ste	%f0,100(%r15)
	le	%f0,100(%r15)
	keb	%f0,.L770-.L769(%r5)
	jnhe	.L768
	le	%f0,100(%r15)
	seb	%f0,.L770-.L769(%r5)
	cfebr	%r1,5,%f0
	a	%r1,.L771-.L769(%r5)
	j	.L766
.L768:
	le	%f0,100(%r15)
	cfebr	%r1,5,%f0
.L766:
	lr	%r2,%r1
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L769:
.L770:
	.long	1191182336
.L771:
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
	larl	%r5,.L777
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r1,102(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L773
.L775:
	lh	%r1,102(%r15)
	l	%r2,.L778-.L777(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L774
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
.L774:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L773:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L775
	lhi	%r1,1
	n	%r1,104(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L777:
.L778:
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
	larl	%r5,.L784
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	sth	%r1,102(%r15)
	lhi	%r1,0
	st	%r1,104(%r15)
	lhi	%r1,0
	st	%r1,108(%r15)
	j	.L780
.L782:
	lh	%r1,102(%r15)
	l	%r2,.L785-.L784(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L781
	l	%r1,104(%r15)
	ahi	%r1,1
	st	%r1,104(%r15)
.L781:
	l	%r1,108(%r15)
	ahi	%r1,1
	st	%r1,108(%r15)
.L780:
	l	%r1,108(%r15)
	chi	%r1,15
	jle	.L782
	l	%r1,104(%r15)
	lr	%r2,%r1
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L784:
.L785:
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
	j	.L787
.L789:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L788
	l	%r1,108(%r15)
	a	%r1,96(%r15)
	st	%r1,108(%r15)
.L788:
	l	%r1,100(%r15)
	srl	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sll	%r1,1
	st	%r1,96(%r15)
.L787:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L789
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
	jne	.L795
	lhi	%r1,0
	j	.L794
.L797:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L796
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,108(%r15)
.L796:
	l	%r1,100(%r15)
	sll	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	srl	%r1,1
	st	%r1,96(%r15)
.L795:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jne	.L797
	l	%r1,108(%r15)
.L794:
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
	j	.L800
.L802:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L800:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L803
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L803
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L802
	j	.L803
.L805:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L804
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L804:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L803:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L805
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L806
	l	%r1,108(%r15)
	j	.L807
.L806:
	l	%r1,112(%r15)
.L807:
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
	jnl	.L817
	lhi	%r1,-1
	j	.L812
.L817:
	le	%f0,100(%r15)
	keb	%f0,96(%r15)
	jnh	.L818
	lhi	%r1,1
	j	.L812
.L818:
	lhi	%r1,0
.L812:
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
	jnl	.L828
	lhi	%r1,-1
	j	.L823
.L828:
	ld	%f0,104(%r15)
	kdb	%f0,96(%r15)
	jnh	.L829
	lhi	%r1,1
	j	.L823
.L829:
	lhi	%r1,0
.L823:
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
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	st	%r3,96(%r15)
	l	%r5,100(%r15)
	lhi	%r4,0
	l	%r3,96(%r15)
	lhi	%r2,0
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
	jhe	.L838
	l	%r1,96(%r15)
	lcr	%r1,%r1
	st	%r1,96(%r15)
	lhi	%r1,1
	st	%r1,112(%r15)
.L838:
	mvi	119(%r15),0
	j	.L839
.L842:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L840
	l	%r1,108(%r15)
	a	%r1,100(%r15)
	st	%r1,108(%r15)
.L840:
	l	%r1,100(%r15)
	sll	%r1,1
	st	%r1,100(%r15)
	l	%r1,96(%r15)
	sra	%r1,1
	st	%r1,96(%r15)
	ic	%r1,119(%r15)
	ahi	%r1,1
	stc	%r1,119(%r15)
.L839:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L841
	ic	%r1,119(%r15)
	lhi	%r2,255
	nr	%r1,%r2
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L842
.L841:
	l	%r1,112(%r15)
	ltr	%r1,%r1
	je	.L843
	l	%r1,108(%r15)
	lcr	%r1,%r1
	j	.L845
.L843:
	l	%r1,108(%r15)
.L845:
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
	jhe	.L848
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
.L848:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L849
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
.L849:
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
	je	.L850
	l	%r1,104(%r15)
	lcr	%r1,%r1
	st	%r1,104(%r15)
.L850:
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
	jhe	.L854
	l	%r1,100(%r15)
	lcr	%r1,%r1
	st	%r1,100(%r15)
	lhi	%r1,1
	st	%r1,108(%r15)
.L854:
	l	%r1,96(%r15)
	ltr	%r1,%r1
	jhe	.L855
	l	%r1,96(%r15)
	lcr	%r1,%r1
	st	%r1,96(%r15)
.L855:
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
	je	.L856
	l	%r1,104(%r15)
	lcr	%r1,%r1
	st	%r1,104(%r15)
.L856:
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
	larl	%r5,.L868
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r1,%r2
	lr	%r2,%r3
	st	%r4,96(%r15)
	sth	%r1,102(%r15)
	lr	%r1,%r2
	sth	%r1,100(%r15)
	lhi	%r1,1
	sth	%r1,110(%r15)
	lhi	%r1,0
	sth	%r1,108(%r15)
	j	.L860
.L862:
	lh	%r1,100(%r15)
	sll	%r1,1
	sth	%r1,100(%r15)
	lh	%r1,110(%r15)
	sll	%r1,1
	sth	%r1,110(%r15)
.L860:
	lh	%r1,100(%r15)
	n	%r1,.L869-.L868(%r5)
	lh	%r2,102(%r15)
	n	%r2,.L869-.L868(%r5)
	clr	%r1,%r2
	jhe	.L863
	lh	%r1,110(%r15)
	n	%r1,.L869-.L868(%r5)
	ltr	%r1,%r1
	je	.L863
	lh	%r1,100(%r15)
	sll	%r1,16
	sra	%r1,16
	ltr	%r1,%r1
	jhe	.L862
	j	.L863
.L865:
	lh	%r1,102(%r15)
	n	%r1,.L869-.L868(%r5)
	lh	%r2,100(%r15)
	n	%r2,.L869-.L868(%r5)
	clr	%r1,%r2
	jl	.L864
	lh	%r1,102(%r15)
	lh	%r2,100(%r15)
	sr	%r1,%r2
	sth	%r1,102(%r15)
	oc	108(2,%r15),110(%r15)
.L864:
	lh	%r1,110(%r15)
	n	%r1,.L869-.L868(%r5)
	srl	%r1,1
	sth	%r1,110(%r15)
	lh	%r1,100(%r15)
	n	%r1,.L869-.L868(%r5)
	srl	%r1,1
	sth	%r1,100(%r15)
.L863:
	lh	%r1,110(%r15)
	n	%r1,.L869-.L868(%r5)
	ltr	%r1,%r1
	jne	.L865
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L866
	lh	%r1,102(%r15)
	j	.L867
.L866:
	lh	%r1,108(%r15)
.L867:
	n	%r1,.L869-.L868(%r5)
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
	j	.L871
.L873:
	l	%r1,104(%r15)
	sll	%r1,1
	st	%r1,104(%r15)
	l	%r1,116(%r15)
	sll	%r1,1
	st	%r1,116(%r15)
.L871:
	l	%r1,104(%r15)
	cl	%r1,108(%r15)
	jhe	.L874
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L874
	l	%r1,104(%r15)
	ltr	%r1,%r1
	jhe	.L873
	j	.L874
.L876:
	l	%r1,108(%r15)
	cl	%r1,104(%r15)
	jl	.L875
	l	%r1,108(%r15)
	s	%r1,104(%r15)
	st	%r1,108(%r15)
	oc	112(4,%r15),116(%r15)
.L875:
	l	%r1,116(%r15)
	srl	%r1,1
	st	%r1,116(%r15)
	l	%r1,104(%r15)
	srl	%r1,1
	st	%r1,104(%r15)
.L874:
	l	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L876
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L877
	l	%r1,108(%r15)
	j	.L878
.L877:
	l	%r1,112(%r15)
.L878:
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
	je	.L881
	lhi	%r1,0
	st	%r1,116(%r15)
	l	%r2,124(%r15)
	l	%r1,100(%r15)
	s	%r1,132(%r15)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,112(%r15)
	j	.L882
.L881:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L883
	lm	%r2,%r3,104(%r15)
	j	.L885
.L883:
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
.L882:
	lm	%r2,%r3,112(%r15)
.L885:
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
	je	.L888
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
	j	.L889
.L888:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L890
	lm	%r2,%r3,104(%r15)
	j	.L892
.L890:
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
.L889:
	lm	%r2,%r3,112(%r15)
.L892:
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
	larl	%r13,.L896
	ahi	%r15,-176
	.cfi_def_cfa_offset 272
	stm	%r2,%r3,168(%r15)
	lm	%r2,%r3,168(%r15)
	srdl	%r2,56
	lr	%r4,%r2
	lr	%r5,%r3
	lm	%r2,%r3,168(%r15)
	srdl	%r2,40
	lhi	%r12,0
	nr	%r12,%r2
	st	%r12,96(%r15)
	l	%r12,.L897-.L896(%r13)
	nr	%r12,%r3
	st	%r12,100(%r15)
	lr	%r12,%r4
	lm	%r2,%r3,96(%r15)
	or	%r12,%r2
	lr	%r0,%r12
	lr	%r4,%r5
	or	%r4,%r3
	lr	%r1,%r4
	lm	%r2,%r3,168(%r15)
	srdl	%r2,24
	lhi	%r4,0
	nr	%r4,%r2
	st	%r4,104(%r15)
	lr	%r2,%r3
	n	%r2,.L898-.L896(%r13)
	st	%r2,108(%r15)
	lm	%r2,%r3,104(%r15)
	lr	%r4,%r2
	or	%r4,%r0
	st	%r4,112(%r15)
	or	%r1,%r3
	st	%r1,116(%r15)
	lm	%r2,%r3,168(%r15)
	srdl	%r2,8
	lhi	%r1,0
	nr	%r1,%r2
	st	%r1,120(%r15)
	lr	%r1,%r3
	n	%r1,.L899-.L896(%r13)
	st	%r1,124(%r15)
	lm	%r4,%r5,112(%r15)
	lr	%r1,%r4
	lm	%r2,%r3,120(%r15)
	or	%r1,%r2
	st	%r1,128(%r15)
	lr	%r1,%r5
	or	%r1,%r3
	st	%r1,132(%r15)
	lm	%r2,%r3,168(%r15)
	sldl	%r2,8
	lhi	%r1,255
	nr	%r1,%r2
	st	%r1,136(%r15)
	lr	%r1,%r3
	lhi	%r2,0
	nr	%r1,%r2
	st	%r1,140(%r15)
	lm	%r4,%r5,128(%r15)
	lr	%r1,%r4
	lm	%r2,%r3,136(%r15)
	or	%r1,%r2
	st	%r1,144(%r15)
	lr	%r1,%r5
	or	%r1,%r3
	st	%r1,148(%r15)
	lm	%r2,%r3,168(%r15)
	sldl	%r2,24
	l	%r1,.L897-.L896(%r13)
	nr	%r1,%r2
	st	%r1,152(%r15)
	lr	%r1,%r3
	lhi	%r2,0
	nr	%r1,%r2
	st	%r1,156(%r15)
	lm	%r4,%r5,144(%r15)
	lr	%r1,%r4
	lm	%r2,%r3,152(%r15)
	or	%r1,%r2
	lr	%r6,%r1
	lr	%r1,%r5
	or	%r1,%r3
	lr	%r7,%r1
	lm	%r2,%r3,168(%r15)
	sldl	%r2,40
	l	%r1,.L898-.L896(%r13)
	nr	%r1,%r2
	lr	%r8,%r1
	lhi	%r1,0
	nr	%r1,%r3
	lr	%r9,%r1
	lr	%r1,%r6
	or	%r1,%r8
	lr	%r10,%r1
	lr	%r1,%r7
	or	%r1,%r9
	lr	%r11,%r1
	lm	%r2,%r3,168(%r15)
	sldl	%r2,56
	lr	%r1,%r10
	or	%r1,%r2
	st	%r1,160(%r15)
	lr	%r1,%r11
	or	%r1,%r3
	st	%r1,164(%r15)
	lm	%r2,%r3,160(%r15)
	lm	%r6,%r15,200(%r15)
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
	.section	.rodata
	.align	8
.L896:
.L899:
	.long	-16777216
.L898:
	.long	16711680
.L897:
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
	larl	%r5,.L902
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	srl	%r1,24
	lr	%r2,%r1
	l	%r1,100(%r15)
	srl	%r1,8
	n	%r1,.L903-.L902(%r5)
	or	%r2,%r1
	l	%r1,100(%r15)
	sll	%r1,8
	n	%r1,.L904-.L902(%r5)
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
.L902:
.L904:
	.long	16711680
.L903:
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
	larl	%r5,.L915
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,116(%r15)
	cl	%r1,.L916-.L915(%r5)
	jh	.L906
	lhi	%r1,16
	j	.L907
.L906:
	lhi	%r1,0
.L907:
	st	%r1,112(%r15)
	lhi	%r1,16
	s	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	l	%r1,112(%r15)
	st	%r1,108(%r15)
	l	%r1,.L917-.L915(%r5)
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L908
	lhi	%r1,8
	j	.L909
.L908:
	lhi	%r1,0
.L909:
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
	jne	.L910
	lhi	%r1,4
	j	.L911
.L910:
	lhi	%r1,0
.L911:
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
	jne	.L912
	lhi	%r1,2
	j	.L913
.L912:
	lhi	%r1,0
.L913:
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
.L915:
.L917:
	.long	65280
.L916:
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
	jhe	.L919
	lhi	%r1,0
	j	.L924
.L919:
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	cr	%r1,%r2
	jle	.L921
	lhi	%r1,2
	j	.L924
.L921:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jhe	.L922
	lhi	%r1,0
	j	.L924
.L922:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jle	.L923
	lhi	%r1,2
	j	.L924
.L923:
	lhi	%r1,1
.L924:
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
	larl	%r5,.L939
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,116(%r15)
	l	%r1,.L940-.L939(%r5)
	n	%r1,116(%r15)
	ltr	%r1,%r1
	jne	.L930
	lhi	%r1,16
	j	.L931
.L930:
	lhi	%r1,0
.L931:
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
	jne	.L932
	lhi	%r1,8
	j	.L933
.L932:
	lhi	%r1,0
.L933:
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
	jne	.L934
	lhi	%r1,4
	j	.L935
.L934:
	lhi	%r1,0
.L935:
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
	jne	.L936
	lhi	%r1,2
	j	.L937
.L936:
	lhi	%r1,0
.L937:
	st	%r1,112(%r15)
	l	%r1,112(%r15)
	l	%r2,116(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	nc	116(4,%r15),.L941-.L939(%r5)
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
.L939:
.L941:
	.long	3
.L940:
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
	je	.L943
	lhi	%r1,0
	st	%r1,112(%r15)
	l	%r2,120(%r15)
	l	%r1,100(%r15)
	s	%r1,132(%r15)
	srl	%r2,0(%r1)
	st	%r2,116(%r15)
	j	.L944
.L943:
	l	%r1,100(%r15)
	ltr	%r1,%r1
	jne	.L945
	lm	%r2,%r3,104(%r15)
	j	.L947
.L945:
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
.L944:
	lm	%r2,%r3,112(%r15)
.L947:
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
	lm	%r2,%r3,104(%r15)
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
	je	.L957
	ahi	%r2,-1
.L957:
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
	larl	%r13,.L967
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	stm	%r2,%r3,96(%r15)
	lm	%r2,%r3,96(%r15)
	stm	%r2,%r3,112(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,1
	l	%r12,.L968-.L967(%r13)
	nr	%r12,%r2
	lr	%r10,%r12
	l	%r12,.L968-.L967(%r13)
	nr	%r12,%r3
	lr	%r11,%r12
	lm	%r2,%r3,112(%r15)
	slr	%r3,%r11
	slbr	%r2,%r10
	stm	%r2,%r3,112(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,2
	l	%r12,.L969-.L967(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	l	%r12,.L969-.L967(%r13)
	nr	%r12,%r3
	lr	%r1,%r12
	l	%r2,.L969-.L967(%r13)
	n	%r2,112(%r15)
	lr	%r4,%r2
	l	%r2,.L969-.L967(%r13)
	n	%r2,116(%r15)
	lr	%r5,%r2
	alr	%r1,%r5
	alcr	%r0,%r4
	stm	%r0,%r1,112(%r15)
	lm	%r2,%r3,112(%r15)
	srdl	%r2,4
	al	%r3,116(%r15)
	alc	%r2,112(%r15)
	l	%r1,.L970-.L967(%r13)
	nr	%r1,%r2
	st	%r1,112(%r15)
	l	%r1,.L970-.L967(%r13)
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
.L967:
.L970:
	.long	252645135
.L969:
	.long	858993459
.L968:
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
	larl	%r5,.L973
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	st	%r2,100(%r15)
	l	%r1,100(%r15)
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,1
	l	%r2,.L974-.L973(%r5)
	nr	%r2,%r1
	l	%r1,108(%r15)
	sr	%r1,%r2
	st	%r1,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,2
	l	%r2,.L975-.L973(%r5)
	nr	%r2,%r1
	l	%r1,.L975-.L973(%r5)
	n	%r1,108(%r15)
	ar	%r2,%r1
	st	%r2,108(%r15)
	l	%r1,108(%r15)
	srl	%r1,4
	a	%r1,108(%r15)
	n	%r1,.L976-.L973(%r5)
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
.L973:
.L976:
	.long	252645135
.L975:
	.long	858993459
.L974:
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
	larl	%r5,.L987
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
	ld	%f0,.L988-.L987(%r5)
	std	%f0,120(%r15)
.L981:
	lhi	%r1,1
	n	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L978
	ld	%f0,120(%r15)
	mdb	%f0,104(%r15)
	std	%f0,120(%r15)
.L978:
	l	%r1,100(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,100(%r15)
	l	%r1,100(%r15)
	ltr	%r1,%r1
	je	.L986
	ld	%f0,104(%r15)
	mdb	%f0,104(%r15)
	std	%f0,104(%r15)
	j	.L981
.L986:
	nopr	%r0
	l	%r1,116(%r15)
	ltr	%r1,%r1
	je	.L982
	ld	%f0,.L988-.L987(%r5)
	ddb	%f0,120(%r15)
	j	.L984
.L982:
	ld	%f0,120(%r15)
.L984:
	l	%r15,188(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L987:
.L988:
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
	larl	%r5,.L999
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
	le	%f0,.L1000-.L999(%r5)
	ste	%f0,108(%r15)
.L993:
	lhi	%r1,1
	n	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L990
	le	%f0,108(%r15)
	meeb	%f0,100(%r15)
	ste	%f0,108(%r15)
.L990:
	l	%r1,96(%r15)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,96(%r15)
	l	%r1,96(%r15)
	ltr	%r1,%r1
	je	.L998
	le	%f0,100(%r15)
	meeb	%f0,100(%r15)
	ste	%f0,100(%r15)
	j	.L993
.L998:
	nopr	%r0
	l	%r1,104(%r15)
	ltr	%r1,%r1
	je	.L994
	le	%f0,.L1000-.L999(%r5)
	deb	%f0,108(%r15)
	j	.L996
.L994:
	le	%f0,108(%r15)
.L996:
	l	%r15,172(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L999:
.L1000:
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
	jhe	.L1002
	lhi	%r1,0
	j	.L1007
.L1002:
	l	%r1,120(%r15)
	l	%r2,112(%r15)
	clr	%r1,%r2
	jle	.L1004
	lhi	%r1,2
	j	.L1007
.L1004:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jhe	.L1005
	lhi	%r1,0
	j	.L1007
.L1005:
	l	%r1,124(%r15)
	l	%r2,116(%r15)
	clr	%r1,%r2
	jle	.L1006
	lhi	%r1,2
	j	.L1007
.L1006:
	lhi	%r1,1
.L1007:
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
