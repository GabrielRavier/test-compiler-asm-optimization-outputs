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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	l	%r1,112(%r11)
	cl	%r1,116(%r11)
	jhe	.L2
	l	%r1,112(%r11)
	a	%r1,100(%r11)
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	a	%r1,100(%r11)
	st	%r1,116(%r11)
	j	.L3
.L4:
	l	%r1,112(%r11)
	ahi	%r1,-1
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	ahi	%r1,-1
	st	%r1,116(%r11)
	l	%r1,112(%r11)
	ic	%r2,0(%r1)
	l	%r1,116(%r11)
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L3:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L4
	j	.L5
.L2:
	l	%r1,112(%r11)
	c	%r1,116(%r11)
	je	.L5
	j	.L6
.L7:
	l	%r2,112(%r11)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,116(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L6:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L7
.L5:
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	st	%r5,96(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	l	%r1,100(%r11)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,100(%r11)
	j	.L11
.L13:
	l	%r1,96(%r11)
	ahi	%r1,-1
	st	%r1,96(%r11)
	l	%r1,112(%r11)
	ahi	%r1,1
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	ahi	%r1,1
	st	%r1,116(%r11)
.L11:
	l	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L12
	l	%r1,112(%r11)
	ic	%r2,0(%r1)
	l	%r1,116(%r11)
	stc	%r2,0(%r1)
	l	%r1,116(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,100(%r11)
	cr	%r1,%r2
	jne	.L13
.L12:
	l	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L14
	l	%r1,116(%r11)
	ahi	%r1,1
	j	.L15
.L14:
	lhi	%r1,0
.L15:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,104(%r11)
	j	.L18
.L20:
	l	%r1,116(%r11)
	ahi	%r1,1
	st	%r1,116(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L18:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L19
	l	%r1,116(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r11)
	cr	%r1,%r2
	jne	.L20
.L19:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L21
	l	%r1,116(%r11)
	j	.L23
.L21:
	lhi	%r1,0
.L23:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	j	.L26
.L28:
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
	l	%r1,116(%r11)
	ahi	%r1,1
	st	%r1,116(%r11)
	l	%r1,112(%r11)
	ahi	%r1,1
	st	%r1,112(%r11)
.L26:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L27
	l	%r1,116(%r11)
	ic	%r2,0(%r1)
	l	%r1,112(%r11)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L28
.L27:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L29
	l	%r1,116(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,112(%r11)
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
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	j	.L34
.L35:
	l	%r2,112(%r11)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,116(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L34:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L35
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,104(%r11)
	j	.L39
.L41:
	l	%r1,116(%r11)
	a	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,104(%r11)
	cr	%r1,%r2
	jne	.L39
	l	%r1,116(%r11)
	a	%r1,100(%r11)
	j	.L40
.L39:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L41
	lhi	%r1,0
.L40:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	j	.L44
.L45:
	l	%r1,104(%r11)
	lr	%r2,%r1
	l	%r1,116(%r11)
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
	l	%r1,116(%r11)
	ahi	%r1,1
	st	%r1,116(%r11)
.L44:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L45
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	j	.L49
.L50:
	l	%r1,96(%r11)
	ahi	%r1,1
	st	%r1,96(%r11)
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
.L49:
	l	%r1,96(%r11)
	ic	%r2,0(%r1)
	l	%r1,100(%r11)
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L50
	l	%r1,100(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,96(%r11)
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,96(%r11)
	j	.L54
.L56:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
.L54:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L55
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r11)
	cr	%r1,%r2
	jne	.L56
.L55:
	l	%r1,100(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	st	%r3,100(%r11)
.L62:
	ic	%r2,0(%r1)
	lhi	%r3,255
	nr	%r3,%r2
	l	%r2,100(%r11)
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
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	j	.L65
.L67:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
	l	%r1,96(%r11)
	ahi	%r1,1
	st	%r1,96(%r11)
.L65:
	l	%r1,100(%r11)
	ic	%r2,0(%r1)
	l	%r1,96(%r11)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L66
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L67
.L66:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r11)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r3,%r1
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	j	.L71
.L72:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
.L71:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L72
	l	%r1,100(%r11)
	s	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L78
	lhi	%r1,0
	j	.L77
.L80:
	l	%r1,116(%r11)
	ahi	%r1,1
	st	%r1,116(%r11)
	l	%r1,112(%r11)
	ahi	%r1,1
	st	%r1,112(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L78:
	l	%r1,116(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L79
	l	%r1,112(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L79
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L79
	l	%r1,116(%r11)
	ic	%r2,0(%r1)
	l	%r1,112(%r11)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L80
.L79:
	l	%r1,116(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,112(%r11)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r3,%r1
	lr	%r1,%r2
	sr	%r1,%r3
.L77:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	j	.L83
.L84:
	l	%r1,116(%r11)
	ahi	%r1,1
	ic	%r2,0(%r1)
	l	%r1,112(%r11)
	stc	%r2,0(%r1)
	l	%r1,112(%r11)
	ahi	%r1,1
	l	%r2,116(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,112(%r11)
	ahi	%r1,2
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	ahi	%r1,2
	st	%r1,116(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-2
	st	%r1,100(%r11)
.L83:
	l	%r1,100(%r11)
	chi	%r1,1
	jh	.L84
	nopr	%r0
	nopr	%r0
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
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
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r2,100(%r11)
	lhi	%r1,127
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	chi	%r1,32
	je	.L93
	l	%r1,100(%r11)
	chi	%r1,9
	jne	.L94
.L93:
	lhi	%r1,1
	j	.L96
.L94:
	lhi	%r1,0
.L96:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L99
	l	%r1,100(%r11)
	chi	%r1,127
	jne	.L100
.L99:
	lhi	%r1,1
	j	.L102
.L100:
	lhi	%r1,0
.L102:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-48
	lr	%r2,%r1
	lhi	%r1,9
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-33
	lr	%r2,%r1
	lhi	%r1,93
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-97
	lr	%r2,%r1
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-32
	lr	%r2,%r1
	lhi	%r1,94
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	chi	%r1,32
	je	.L117
	l	%r1,100(%r11)
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
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-65
	lr	%r2,%r1
	lhi	%r1,25
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L130
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L126
	l	%r1,100(%r11)
	ahi	%r1,-127
	lhi	%r2,32
	clr	%r1,%r2
	jle	.L126
	l	%r1,100(%r11)
	ahi	%r1,-8232
	lhi	%r2,1
	clr	%r1,%r2
	jle	.L126
	l	%r1,.L131-.L130(%r5)
	a	%r1,100(%r11)
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
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r2,100(%r11)
	ahi	%r2,-48
	lhi	%r1,9
	slr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L142
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	lhi	%r2,254
	clr	%r1,%r2
	jh	.L136
	l	%r1,100(%r11)
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
	l	%r1,100(%r11)
	lhi	%r2,8231
	clr	%r1,%r2
	jle	.L138
	l	%r1,100(%r11)
	ahi	%r1,-8234
	cl	%r1,.L143-.L142(%r5)
	jle	.L138
	l	%r1,.L144-.L142(%r5)
	a	%r1,100(%r11)
	lhi	%r2,8184
	clr	%r1,%r2
	jh	.L139
.L138:
	lhi	%r1,1
	j	.L137
.L139:
	l	%r1,.L145-.L142(%r5)
	a	%r1,100(%r11)
	cl	%r1,.L146-.L142(%r5)
	jh	.L140
	l	%r1,.L147-.L142(%r5)
	n	%r1,100(%r11)
	c	%r1,.L147-.L142(%r5)
	jne	.L141
.L140:
	lhi	%r1,0
	j	.L137
.L141:
	lhi	%r1,1
.L137:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L149
	lhi	%r1,32
	o	%r1,100(%r11)
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
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	lhi	%r1,127
	n	%r1,100(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L166
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,104(%r11)
	std	%f2,96(%r11)
	ld	%f0,104(%r11)
	cdb	%f0,104(%r11)
	jno	.L158
	ld	%f0,104(%r11)
	j	.L159
.L158:
	ld	%f0,96(%r11)
	cdb	%f0,96(%r11)
	jno	.L160
	ld	%f0,96(%r11)
	j	.L159
.L160:
	ld	%f0,104(%r11)
	kdb	%f0,96(%r11)
	jnh	.L165
	ld	%f0,104(%r11)
	sdb	%f0,96(%r11)
	j	.L159
.L165:
	ld	%f0,.L167-.L166(%r5)
.L159:
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L177
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,100(%r11)
	ste	%f2,96(%r11)
	le	%f0,100(%r11)
	ceb	%f0,100(%r11)
	jno	.L169
	le	%f0,100(%r11)
	j	.L170
.L169:
	le	%f0,96(%r11)
	ceb	%f0,96(%r11)
	jno	.L171
	le	%f0,96(%r11)
	j	.L170
.L171:
	le	%f0,100(%r11)
	keb	%f0,96(%r11)
	jnh	.L176
	le	%f0,100(%r11)
	seb	%f0,96(%r11)
	j	.L170
.L176:
	le	%f0,.L178-.L177(%r5)
.L170:
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,112(%r11)
	std	%f2,104(%r11)
	ld	%f0,112(%r11)
	cdb	%f0,112(%r11)
	jno	.L180
	lm	%r2,%r3,104(%r11)
	j	.L181
.L180:
	ld	%f0,104(%r11)
	cdb	%f0,104(%r11)
	jno	.L182
	lm	%r2,%r3,112(%r11)
	j	.L181
.L182:
	ld	%f0,112(%r11)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,104(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L183
	ld	%f0,112(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L184
	lm	%r2,%r3,104(%r11)
	j	.L181
.L184:
	lm	%r2,%r3,112(%r11)
	j	.L181
.L183:
	ld	%f0,112(%r11)
	kdb	%f0,104(%r11)
	jnl	.L190
	lm	%r2,%r3,104(%r11)
	j	.L181
.L190:
	lm	%r2,%r3,112(%r11)
.L181:
	stm	%r2,%r3,96(%r11)
	ld	%f0,96(%r11)
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,108(%r11)
	ste	%f2,104(%r11)
	le	%f0,108(%r11)
	ceb	%f0,108(%r11)
	jno	.L193
	l	%r1,104(%r11)
	j	.L194
.L193:
	le	%f0,104(%r11)
	ceb	%f0,104(%r11)
	jno	.L195
	l	%r1,108(%r11)
	j	.L194
.L195:
	le	%f0,108(%r11)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,104(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L196
	le	%f0,108(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L197
	l	%r1,104(%r11)
	j	.L194
.L197:
	l	%r1,108(%r11)
	j	.L194
.L196:
	le	%f0,108(%r11)
	keb	%f0,104(%r11)
	jnl	.L203
	l	%r1,104(%r11)
	j	.L194
.L203:
	l	%r1,108(%r11)
.L194:
	st	%r1,100(%r11)
	le	%f0,100(%r11)
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,132(%r11)
	lr	%r12,%r3
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,112(%r11)
	std	%f2,120(%r11)
	lr	%r12,%r4
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r11)
	std	%f2,104(%r11)
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	ld	%f1,112(%r11)
	ld	%f3,120(%r11)
	cxbr	%f0,%f1
	jno	.L206
	l	%r1,132(%r11)
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L207
.L206:
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	ld	%f1,96(%r11)
	ld	%f3,104(%r11)
	cxbr	%f0,%f1
	jno	.L208
	l	%r1,132(%r11)
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L207
.L208:
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L209
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L210
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	j	.L211
.L210:
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
.L211:
	l	%r1,132(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L207
.L209:
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	ld	%f1,96(%r11)
	ld	%f3,104(%r11)
	kxbr	%f0,%f1
	jnl	.L216
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	j	.L214
.L216:
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
.L214:
	l	%r1,132(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L207:
	l	%r2,132(%r11)
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,112(%r11)
	std	%f2,104(%r11)
	ld	%f0,112(%r11)
	cdb	%f0,112(%r11)
	jno	.L219
	lm	%r2,%r3,104(%r11)
	j	.L220
.L219:
	ld	%f0,104(%r11)
	cdb	%f0,104(%r11)
	jno	.L221
	lm	%r2,%r3,112(%r11)
	j	.L220
.L221:
	ld	%f0,112(%r11)
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,104(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L222
	ld	%f0,112(%r11)
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L223
	lm	%r2,%r3,112(%r11)
	j	.L220
.L223:
	lm	%r2,%r3,104(%r11)
	j	.L220
.L222:
	ld	%f0,112(%r11)
	kdb	%f0,104(%r11)
	jnl	.L229
	lm	%r2,%r3,112(%r11)
	j	.L220
.L229:
	lm	%r2,%r3,104(%r11)
.L220:
	stm	%r2,%r3,96(%r11)
	ld	%f0,96(%r11)
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,108(%r11)
	ste	%f2,104(%r11)
	le	%f0,108(%r11)
	ceb	%f0,108(%r11)
	jno	.L232
	l	%r1,104(%r11)
	j	.L233
.L232:
	le	%f0,104(%r11)
	ceb	%f0,104(%r11)
	jno	.L234
	l	%r1,108(%r11)
	j	.L233
.L234:
	le	%f0,108(%r11)
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	le	%f0,104(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L235
	le	%f0,108(%r11)
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L236
	l	%r1,108(%r11)
	j	.L233
.L236:
	l	%r1,104(%r11)
	j	.L233
.L235:
	le	%f0,108(%r11)
	keb	%f0,104(%r11)
	jnl	.L242
	l	%r1,108(%r11)
	j	.L233
.L242:
	l	%r1,104(%r11)
.L233:
	st	%r1,100(%r11)
	le	%f0,100(%r11)
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,132(%r11)
	lr	%r12,%r3
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,112(%r11)
	std	%f2,120(%r11)
	lr	%r12,%r4
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r11)
	std	%f2,104(%r11)
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	ld	%f1,112(%r11)
	ld	%f3,120(%r11)
	cxbr	%f0,%f1
	jno	.L245
	l	%r1,132(%r11)
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L246
.L245:
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	ld	%f1,96(%r11)
	ld	%f3,104(%r11)
	cxbr	%f0,%f1
	jno	.L247
	l	%r1,132(%r11)
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L246
.L247:
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	tcxb	%f0,1365
	ipm	%r2
	srl	%r2,28
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L248
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ltr	%r1,%r1
	je	.L249
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	j	.L250
.L249:
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
.L250:
	l	%r1,132(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	j	.L246
.L248:
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	ld	%f1,96(%r11)
	ld	%f3,104(%r11)
	kxbr	%f0,%f1
	jnl	.L255
	ld	%f0,112(%r11)
	ld	%f2,120(%r11)
	j	.L253
.L255:
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
.L253:
	l	%r1,132(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
.L246:
	l	%r2,132(%r11)
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,104(%r11)
	larl	%r1,s.0
	st	%r1,108(%r11)
	j	.L258
.L259:
	lhi	%r2,63
	n	%r2,104(%r11)
	larl	%r1,digits
	ic	%r2,0(%r2,%r1)
	l	%r1,108(%r11)
	stc	%r2,0(%r1)
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
	l	%r1,104(%r11)
	srl	%r1,6
	st	%r1,104(%r11)
.L258:
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jne	.L259
	l	%r1,108(%r11)
	mvi	0(%r1),0
	larl	%r1,s.0
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-1
	lr	%r3,%r1
	lhi	%r2,0
	larl	%r1,seed
	stm	%r2,%r3,0(%r1)
	nopr	%r0
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
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
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	l	%r1,96(%r11)
	st	%r1,104(%r11)
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jne	.L268
	l	%r1,108(%r11)
	lhi	%r2,0
	st	%r2,4(%r1)
	l	%r1,108(%r11)
	l	%r2,4(%r1)
	l	%r1,108(%r11)
	st	%r2,0(%r1)
	j	.L267
.L268:
	l	%r1,104(%r11)
	l	%r2,0(%r1)
	l	%r1,108(%r11)
	st	%r2,0(%r1)
	l	%r1,108(%r11)
	l	%r2,104(%r11)
	st	%r2,4(%r1)
	l	%r1,104(%r11)
	l	%r2,108(%r11)
	st	%r2,0(%r1)
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L267
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	l	%r2,108(%r11)
	st	%r2,4(%r1)
.L267:
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L272
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	l	%r2,108(%r11)
	l	%r2,4(%r2)
	st	%r2,4(%r1)
.L272:
	l	%r1,108(%r11)
	l	%r1,4(%r1)
	ltr	%r1,%r1
	je	.L274
	l	%r1,108(%r11)
	l	%r1,4(%r1)
	l	%r2,108(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L274:
	nopr	%r0
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,116(%r11)
	st	%r3,112(%r11)
	st	%r4,108(%r11)
	st	%r5,104(%r11)
	st	%r6,100(%r11)
	l	%r12,104(%r11)
	lr	%r1,%r12
	ahi	%r1,-1
	st	%r1,128(%r11)
	lr	%r3,%r12
	lhi	%r2,0
	l	%r1,112(%r11)
	st	%r1,124(%r11)
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	st	%r1,120(%r11)
	lhi	%r1,0
	st	%r1,132(%r11)
	j	.L277
.L280:
	lr	%r1,%r12
	ms	%r1,132(%r11)
	a	%r1,124(%r11)
	lr	%r2,%r1
	l	%r1,100(%r11)
	lr	%r3,%r2
	l	%r2,116(%r11)
	basr	%r14,%r1
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L278
	lr	%r1,%r12
	ms	%r1,132(%r11)
	a	%r1,124(%r11)
	j	.L279
.L278:
	l	%r1,132(%r11)
	ahi	%r1,1
	st	%r1,132(%r11)
.L277:
	l	%r1,132(%r11)
	cl	%r1,120(%r11)
	jl	.L280
	l	%r2,120(%r11)
	ahi	%r2,1
	l	%r1,108(%r11)
	st	%r2,0(%r1)
	lr	%r1,%r12
	ms	%r1,120(%r11)
	a	%r1,124(%r11)
	l	%r4,104(%r11)
	l	%r3,116(%r11)
	lr	%r2,%r1
	brasl	%r14,memcpy
	lr	%r1,%r2
.L279:
	lr	%r2,%r1
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,116(%r11)
	st	%r3,112(%r11)
	st	%r4,108(%r11)
	st	%r5,104(%r11)
	st	%r6,100(%r11)
	l	%r12,104(%r11)
	lr	%r1,%r12
	ahi	%r1,-1
	st	%r1,128(%r11)
	lr	%r3,%r12
	lhi	%r2,0
	l	%r1,112(%r11)
	st	%r1,124(%r11)
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	st	%r1,120(%r11)
	lhi	%r1,0
	st	%r1,132(%r11)
	j	.L283
.L286:
	lr	%r1,%r12
	ms	%r1,132(%r11)
	a	%r1,124(%r11)
	lr	%r2,%r1
	l	%r1,100(%r11)
	lr	%r3,%r2
	l	%r2,116(%r11)
	basr	%r14,%r1
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L284
	lr	%r1,%r12
	ms	%r1,132(%r11)
	a	%r1,124(%r11)
	j	.L285
.L284:
	l	%r1,132(%r11)
	ahi	%r1,1
	st	%r1,132(%r11)
.L283:
	l	%r1,132(%r11)
	cl	%r1,120(%r11)
	jl	.L286
	lhi	%r1,0
.L285:
	lr	%r2,%r1
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	lpr	%r1,%r1
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	lhi	%r1,0
	st	%r1,104(%r11)
	j	.L292
.L293:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
.L292:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L293
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L294
	chi	%r1,45
	jne	.L296
	lhi	%r1,1
	st	%r1,104(%r11)
.L294:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
	j	.L296
.L297:
	l	%r2,108(%r11)
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r3,%r1
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r1
	lr	%r1,%r3
	sr	%r1,%r2
	st	%r1,108(%r11)
.L296:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L297
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jne	.L298
	l	%r1,108(%r11)
	lcr	%r1,%r1
	j	.L300
.L298:
	l	%r1,108(%r11)
.L300:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	lhi	%r1,0
	st	%r1,104(%r11)
	j	.L303
.L304:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
.L303:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L304
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L305
	chi	%r1,45
	jne	.L307
	lhi	%r1,1
	st	%r1,104(%r11)
.L305:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
	j	.L307
.L308:
	l	%r2,108(%r11)
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r3,%r1
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r1
	lr	%r1,%r3
	sr	%r1,%r2
	st	%r1,108(%r11)
.L307:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L308
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jne	.L309
	l	%r1,108(%r11)
	lcr	%r1,%r1
	j	.L311
.L309:
	l	%r1,108(%r11)
.L311:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	lhi	%r2,0
	lhi	%r3,0
	stm	%r2,%r3,112(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L314
.L315:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
.L314:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	brasl	%r14,isspace
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L315
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	chi	%r1,43
	je	.L316
	chi	%r1,45
	jne	.L318
	lhi	%r1,1
	st	%r1,108(%r11)
.L316:
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
	j	.L318
.L319:
	lm	%r4,%r5,112(%r11)
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,2
	alr	%r3,%r5
	alcr	%r2,%r4
	sldl	%r2,1
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	slr	%r5,%r3
	slbr	%r4,%r2
	stm	%r4,%r5,112(%r11)
.L318:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L319
	l	%r1,108(%r11)
	ltr	%r1,%r1
	jne	.L320
	lm	%r2,%r3,112(%r11)
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L323
	ahi	%r2,-1
.L323:
	j	.L322
.L320:
	lm	%r2,%r3,112(%r11)
.L322:
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,116(%r11)
	st	%r3,112(%r11)
	st	%r4,108(%r11)
	st	%r5,104(%r11)
	st	%r6,100(%r11)
	j	.L326
.L330:
	l	%r1,108(%r11)
	srl	%r1,1
	ms	%r1,104(%r11)
	a	%r1,112(%r11)
	st	%r1,124(%r11)
	l	%r1,100(%r11)
	l	%r3,124(%r11)
	l	%r2,116(%r11)
	basr	%r14,%r1
	st	%r2,120(%r11)
	l	%r1,120(%r11)
	ltr	%r1,%r1
	jhe	.L327
	l	%r1,108(%r11)
	srl	%r1,1
	st	%r1,108(%r11)
	j	.L326
.L327:
	l	%r1,120(%r11)
	ltr	%r1,%r1
	jle	.L328
	l	%r1,124(%r11)
	a	%r1,104(%r11)
	st	%r1,112(%r11)
	l	%r1,108(%r11)
	srl	%r1,1
	lr	%r2,%r1
	l	%r1,108(%r11)
	sr	%r1,%r2
	ahi	%r1,-1
	st	%r1,108(%r11)
	j	.L326
.L328:
	l	%r1,124(%r11)
	j	.L329
.L326:
	l	%r1,108(%r11)
	ltr	%r1,%r1
	jne	.L330
	lhi	%r1,0
.L329:
	lr	%r2,%r1
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,116(%r11)
	st	%r3,112(%r11)
	st	%r4,108(%r11)
	st	%r5,104(%r11)
	st	%r6,100(%r11)
	l	%r1,112(%r11)
	st	%r1,132(%r11)
	l	%r1,108(%r11)
	st	%r1,128(%r11)
	j	.L333
.L337:
	l	%r1,128(%r11)
	sra	%r1,1
	ms	%r1,104(%r11)
	a	%r1,132(%r11)
	st	%r1,124(%r11)
	l	%r1,100(%r11)
	l	%r4,232(%r11)
	l	%r3,124(%r11)
	l	%r2,116(%r11)
	basr	%r14,%r1
	st	%r2,120(%r11)
	l	%r1,120(%r11)
	ltr	%r1,%r1
	jne	.L334
	l	%r1,124(%r11)
	j	.L335
.L334:
	l	%r1,120(%r11)
	ltr	%r1,%r1
	jle	.L336
	l	%r1,124(%r11)
	a	%r1,104(%r11)
	st	%r1,132(%r11)
	l	%r1,128(%r11)
	ahi	%r1,-1
	st	%r1,128(%r11)
.L336:
	l	%r1,128(%r11)
	sra	%r1,1
	st	%r1,128(%r11)
.L333:
	l	%r1,128(%r11)
	ltr	%r1,%r1
	jne	.L337
	lhi	%r1,0
.L335:
	lr	%r2,%r1
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r2,104(%r11)
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r11)
	lr	%r1,%r3
	lr	%r4,%r1
	l	%r1,104(%r11)
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r11)
	lr	%r1,%r2
	lr	%r2,%r1
	l	%r1,108(%r11)
	st	%r4,0(%r1)
	l	%r1,108(%r11)
	st	%r2,4(%r1)
	l	%r2,108(%r11)
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,96(%r11)
	ltr	%r2,%r2
	jhe	.L343
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L346
	ahi	%r2,-1
.L346:
.L343:
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,116(%r11)
	stm	%r3,%r4,104(%r11)
	stm	%r5,%r6,96(%r11)
	lm	%r4,%r5,96(%r11)
	lm	%r2,%r3,104(%r11)
	brasl	%r14,__divdi3
	lr	%r12,%r2
	lr	%r13,%r3
	lm	%r2,%r3,104(%r11)
	lm	%r4,%r5,96(%r11)
	brasl	%r14,__moddi3
	l	%r1,116(%r11)
	stm	%r12,%r13,0(%r1)
	l	%r1,116(%r11)
	stm	%r2,%r3,8(%r1)
	l	%r2,116(%r11)
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	lpr	%r1,%r1
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r2,104(%r11)
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r11)
	lr	%r1,%r3
	lr	%r4,%r1
	l	%r1,104(%r11)
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	d	%r2,100(%r11)
	lr	%r1,%r2
	lr	%r2,%r1
	l	%r1,108(%r11)
	st	%r4,0(%r1)
	l	%r1,108(%r11)
	st	%r2,4(%r1)
	l	%r2,108(%r11)
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,96(%r11)
	ltr	%r2,%r2
	jhe	.L358
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L361
	ahi	%r2,-1
.L361:
.L358:
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,116(%r11)
	stm	%r3,%r4,104(%r11)
	stm	%r5,%r6,96(%r11)
	lm	%r4,%r5,96(%r11)
	lm	%r2,%r3,104(%r11)
	brasl	%r14,__divdi3
	lr	%r12,%r2
	lr	%r13,%r3
	lm	%r2,%r3,104(%r11)
	lm	%r4,%r5,96(%r11)
	brasl	%r14,__moddi3
	l	%r1,116(%r11)
	stm	%r12,%r13,0(%r1)
	l	%r1,116(%r11)
	stm	%r2,%r3,8(%r1)
	l	%r2,116(%r11)
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	j	.L367
.L369:
	l	%r1,100(%r11)
	ahi	%r1,4
	st	%r1,100(%r11)
.L367:
	l	%r1,100(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L368
	l	%r1,100(%r11)
	l	%r1,0(%r1)
	l	%r2,96(%r11)
	cr	%r2,%r1
	jne	.L369
.L368:
	l	%r1,100(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L370
	l	%r1,100(%r11)
	j	.L372
.L370:
	lhi	%r1,0
.L372:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	j	.L375
.L377:
	l	%r1,100(%r11)
	ahi	%r1,4
	st	%r1,100(%r11)
	l	%r1,96(%r11)
	ahi	%r1,4
	st	%r1,96(%r11)
.L375:
	l	%r1,100(%r11)
	l	%r2,0(%r1)
	l	%r1,96(%r11)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L376
	l	%r1,100(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L376
	l	%r1,96(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L377
.L376:
	l	%r1,100(%r11)
	l	%r1,0(%r1)
	l	%r2,96(%r11)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L378
	l	%r1,100(%r11)
	l	%r1,0(%r1)
	l	%r2,96(%r11)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L379
	lhi	%r2,0
.L379:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L381
.L378:
	lhi	%r1,-1
.L381:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	nopr	%r0
.L384:
	l	%r2,96(%r11)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,96(%r11)
	l	%r1,100(%r11)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,100(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L384
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	j	.L388
.L389:
	l	%r1,100(%r11)
	ahi	%r1,4
	st	%r1,100(%r11)
.L388:
	l	%r1,100(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L389
	l	%r1,100(%r11)
	s	%r1,108(%r11)
	sra	%r1,2
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	j	.L393
.L395:
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
	l	%r1,108(%r11)
	ahi	%r1,4
	st	%r1,108(%r11)
	l	%r1,104(%r11)
	ahi	%r1,4
	st	%r1,104(%r11)
.L393:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L394
	l	%r1,108(%r11)
	l	%r2,0(%r1)
	l	%r1,104(%r11)
	l	%r1,0(%r1)
	cr	%r2,%r1
	jne	.L394
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	je	.L394
	l	%r1,104(%r11)
	l	%r1,0(%r1)
	ltr	%r1,%r1
	jne	.L395
.L394:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L396
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	l	%r2,104(%r11)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L397
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	l	%r2,104(%r11)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L398
	lhi	%r2,0
.L398:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L401
.L397:
	lhi	%r1,-1
	j	.L401
.L396:
	lhi	%r1,0
.L401:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	j	.L404
.L406:
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
	l	%r1,108(%r11)
	ahi	%r1,4
	st	%r1,108(%r11)
.L404:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L405
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	l	%r2,104(%r11)
	cr	%r2,%r1
	jne	.L406
.L405:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L407
	l	%r1,108(%r11)
	j	.L409
.L407:
	lhi	%r1,0
.L409:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	j	.L412
.L414:
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
	l	%r1,108(%r11)
	ahi	%r1,4
	st	%r1,108(%r11)
	l	%r1,104(%r11)
	ahi	%r1,4
	st	%r1,104(%r11)
.L412:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L413
	l	%r1,108(%r11)
	l	%r2,0(%r1)
	l	%r1,104(%r11)
	l	%r1,0(%r1)
	cr	%r2,%r1
	je	.L414
.L413:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L415
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	l	%r2,104(%r11)
	l	%r2,0(%r2)
	cr	%r1,%r2
	jl	.L416
	l	%r1,108(%r11)
	l	%r1,0(%r1)
	l	%r2,104(%r11)
	l	%r3,0(%r2)
	lhi	%r2,1
	cr	%r1,%r3
	jh	.L417
	lhi	%r2,0
.L417:
	lhi	%r1,255
	nr	%r1,%r2
	j	.L420
.L416:
	lhi	%r1,-1
	j	.L420
.L415:
	lhi	%r1,0
.L420:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	j	.L423
.L424:
	l	%r2,104(%r11)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,104(%r11)
	l	%r1,108(%r11)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,108(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L423:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L424
	l	%r1,116(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,108(%r11)
	c	%r1,104(%r11)
	jne	.L428
	l	%r1,108(%r11)
	j	.L429
.L428:
	l	%r1,108(%r11)
	l	%r2,104(%r11)
	sr	%r1,%r2
	l	%r2,100(%r11)
	sll	%r2,2
	clr	%r1,%r2
	jhe	.L434
	j	.L431
.L432:
	l	%r1,100(%r11)
	sll	%r1,2
	a	%r1,104(%r11)
	lr	%r2,%r1
	l	%r1,100(%r11)
	sll	%r1,2
	a	%r1,108(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L431:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L432
	j	.L433
.L435:
	l	%r2,104(%r11)
	lr	%r1,%r2
	ahi	%r1,4
	st	%r1,104(%r11)
	l	%r1,108(%r11)
	lr	%r3,%r1
	ahi	%r3,4
	st	%r3,108(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L434:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L435
.L433:
	l	%r1,116(%r11)
.L429:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	j	.L438
.L439:
	l	%r1,108(%r11)
	lr	%r2,%r1
	ahi	%r2,4
	st	%r2,108(%r11)
	l	%r2,104(%r11)
	st	%r2,0(%r1)
.L438:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L439
	l	%r1,116(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	cl	%r1,112(%r11)
	jhe	.L443
	l	%r1,116(%r11)
	a	%r1,100(%r11)
	st	%r1,116(%r11)
	l	%r1,112(%r11)
	a	%r1,100(%r11)
	st	%r1,112(%r11)
	j	.L444
.L445:
	l	%r1,116(%r11)
	ahi	%r1,-1
	st	%r1,116(%r11)
	l	%r1,112(%r11)
	ahi	%r1,-1
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	ic	%r2,0(%r1)
	l	%r1,112(%r11)
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L444:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L445
	j	.L449
.L443:
	l	%r1,116(%r11)
	c	%r1,112(%r11)
	je	.L449
	j	.L447
.L448:
	l	%r2,116(%r11)
	lr	%r1,%r2
	ahi	%r1,1
	st	%r1,116(%r11)
	l	%r1,112(%r11)
	lr	%r3,%r1
	ahi	%r3,1
	st	%r3,112(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L447:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L448
.L449:
	nopr	%r0
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r10,%r15,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	st	%r4,100(%r11)
	lm	%r2,%r3,104(%r11)
	l	%r12,100(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,0(%r12)
	l	%r12,100(%r11)
	lcr	%r12,%r12
	lhi	%r10,63
	nr	%r12,%r10
	srdl	%r2,0(%r12)
	lr	%r12,%r2
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r2,%r3
	or	%r2,%r5
	lr	%r1,%r2
	lr	%r2,%r0
	lr	%r3,%r1
	lm	%r10,%r15,152(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa 15, 96
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
	stm	%r10,%r15,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	st	%r4,100(%r11)
	lm	%r2,%r3,104(%r11)
	l	%r12,100(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,0(%r12)
	l	%r12,100(%r11)
	lcr	%r12,%r12
	lhi	%r10,63
	nr	%r12,%r10
	sldl	%r2,0(%r12)
	lr	%r12,%r2
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r2,%r3
	or	%r2,%r5
	lr	%r1,%r2
	lr	%r2,%r0
	lr	%r3,%r1
	lm	%r10,%r15,152(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,96(%r11)
	l	%r2,100(%r11)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,32
	s	%r1,96(%r11)
	l	%r2,100(%r11)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,96(%r11)
	l	%r2,100(%r11)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,32
	s	%r1,96(%r11)
	l	%r2,100(%r11)
	rll	%r1,%r2,0(%r1)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L471
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	st	%r3,96(%r11)
	sth	%r1,102(%r11)
	lh	%r1,102(%r11)
	l	%r2,.L472-.L471(%r5)
	nr	%r2,%r1
	l	%r1,96(%r11)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r11)
	l	%r2,.L472-.L471(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L472-.L471(%r5)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L471:
.L472:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L475
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	st	%r3,96(%r11)
	sth	%r1,102(%r11)
	lh	%r1,102(%r11)
	l	%r2,.L476-.L475(%r5)
	nr	%r2,%r1
	l	%r1,96(%r11)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	lh	%r1,102(%r11)
	l	%r2,.L476-.L475(%r5)
	nr	%r2,%r1
	lhi	%r1,16
	s	%r1,96(%r11)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	n	%r1,.L476-.L475(%r5)
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L475:
.L476:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	st	%r3,96(%r11)
	stc	%r1,103(%r11)
	ic	%r1,103(%r11)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r11)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	ic	%r1,103(%r11)
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r1,8
	s	%r1,96(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	st	%r3,96(%r11)
	stc	%r1,103(%r11)
	ic	%r1,103(%r11)
	lhi	%r2,255
	nr	%r2,%r1
	l	%r1,96(%r11)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	ic	%r1,103(%r11)
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r1,8
	s	%r1,96(%r11)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	or	%r1,%r3
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L485
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	sth	%r1,102(%r11)
	lhi	%r1,255
	st	%r1,108(%r11)
	lh	%r1,102(%r11)
	l	%r2,.L486-.L485(%r5)
	nr	%r2,%r1
	l	%r1,108(%r11)
	sll	%r1,8
	nr	%r1,%r2
	srl	%r1,8
	lr	%r2,%r1
	l	%r1,108(%r11)
	lr	%r3,%r1
	lh	%r1,102(%r11)
	nr	%r1,%r3
	sll	%r1,8
	or	%r1,%r2
	n	%r1,.L486-.L485(%r5)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L485:
.L486:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	lhi	%r1,255
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	sll	%r1,24
	n	%r1,100(%r11)
	srl	%r1,24
	lr	%r2,%r1
	l	%r1,108(%r11)
	sll	%r1,16
	n	%r1,100(%r11)
	srl	%r1,8
	or	%r2,%r1
	l	%r1,108(%r11)
	sll	%r1,8
	n	%r1,100(%r11)
	sll	%r1,8
	or	%r2,%r1
	l	%r1,100(%r11)
	n	%r1,108(%r11)
	sll	%r1,24
	or	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,176(%r11)
	lhi	%r2,0
	lhi	%r3,255
	stm	%r2,%r3,184(%r11)
	lm	%r2,%r3,184(%r11)
	sldl	%r2,56
	lr	%r10,%r2
	n	%r10,176(%r11)
	lr	%r4,%r10
	lr	%r2,%r3
	n	%r2,180(%r11)
	lr	%r5,%r2
	srdl	%r4,56
	lm	%r2,%r3,184(%r11)
	sldl	%r2,48
	lr	%r10,%r2
	n	%r10,176(%r11)
	lr	%r0,%r10
	lr	%r2,%r3
	n	%r2,180(%r11)
	lr	%r1,%r2
	lr	%r2,%r0
	lr	%r3,%r1
	srdl	%r2,40
	lr	%r1,%r4
	or	%r1,%r2
	lr	%r12,%r1
	lr	%r1,%r5
	or	%r1,%r3
	lr	%r13,%r1
	lm	%r2,%r3,184(%r11)
	sldl	%r2,40
	lr	%r1,%r2
	n	%r1,176(%r11)
	lr	%r8,%r1
	lr	%r1,%r3
	n	%r1,180(%r11)
	lr	%r9,%r1
	lr	%r2,%r8
	lr	%r3,%r9
	srdl	%r2,24
	lr	%r1,%r12
	or	%r1,%r2
	lr	%r6,%r1
	lr	%r1,%r13
	or	%r1,%r3
	lr	%r7,%r1
	lm	%r2,%r3,184(%r11)
	sldl	%r2,32
	lr	%r1,%r2
	n	%r1,176(%r11)
	st	%r1,168(%r11)
	lr	%r1,%r3
	n	%r1,180(%r11)
	st	%r1,172(%r11)
	lm	%r2,%r3,168(%r11)
	srdl	%r2,8
	lr	%r1,%r6
	or	%r1,%r2
	st	%r1,160(%r11)
	lr	%r1,%r7
	or	%r1,%r3
	st	%r1,164(%r11)
	lm	%r2,%r3,184(%r11)
	sldl	%r2,24
	lr	%r1,%r2
	n	%r1,176(%r11)
	st	%r1,152(%r11)
	lr	%r1,%r3
	n	%r1,180(%r11)
	st	%r1,156(%r11)
	lm	%r2,%r3,152(%r11)
	sldl	%r2,8
	lm	%r4,%r5,160(%r11)
	lr	%r1,%r4
	or	%r1,%r2
	st	%r1,144(%r11)
	lr	%r1,%r3
	or	%r1,%r5
	st	%r1,148(%r11)
	lm	%r2,%r3,184(%r11)
	sldl	%r2,16
	lr	%r1,%r2
	n	%r1,176(%r11)
	st	%r1,136(%r11)
	lr	%r1,%r3
	n	%r1,180(%r11)
	st	%r1,140(%r11)
	lm	%r2,%r3,136(%r11)
	sldl	%r2,24
	lm	%r4,%r5,144(%r11)
	lr	%r1,%r4
	or	%r1,%r2
	st	%r1,128(%r11)
	lr	%r1,%r3
	or	%r1,%r5
	st	%r1,132(%r11)
	lm	%r2,%r3,184(%r11)
	sldl	%r2,8
	lr	%r1,%r2
	n	%r1,176(%r11)
	st	%r1,120(%r11)
	lr	%r1,%r3
	n	%r1,180(%r11)
	st	%r1,124(%r11)
	lm	%r2,%r3,120(%r11)
	sldl	%r2,40
	lm	%r4,%r5,128(%r11)
	lr	%r1,%r4
	or	%r1,%r2
	st	%r1,112(%r11)
	lr	%r1,%r3
	or	%r1,%r5
	st	%r1,116(%r11)
	l	%r1,176(%r11)
	n	%r1,184(%r11)
	st	%r1,104(%r11)
	l	%r1,180(%r11)
	n	%r1,188(%r11)
	st	%r1,108(%r11)
	lm	%r2,%r3,104(%r11)
	sldl	%r2,56
	lm	%r4,%r5,112(%r11)
	lr	%r1,%r4
	or	%r1,%r2
	st	%r1,96(%r11)
	lr	%r1,%r3
	or	%r1,%r5
	st	%r1,100(%r11)
	lm	%r2,%r3,96(%r11)
	lm	%r6,%r15,216(%r11)
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
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L494
.L497:
	l	%r2,100(%r11)
	l	%r1,108(%r11)
	srl	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L495
	l	%r1,108(%r11)
	ahi	%r1,1
	j	.L496
.L495:
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
.L494:
	l	%r1,108(%r11)
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L497
	lhi	%r1,0
.L496:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L500
	lhi	%r1,0
	j	.L501
.L500:
	lhi	%r12,1
	j	.L502
.L503:
	sra	%r1,1
	ahi	%r12,1
.L502:
	lhi	%r2,1
	nr	%r2,%r1
	ltr	%r2,%r2
	je	.L503
	lr	%r1,%r12
.L501:
	lr	%r2,%r1
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L512
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,100(%r11)
	le	%f0,100(%r11)
	keb	%f0,.L513-.L512(%r5)
	jl	.L506
	le	%f0,100(%r11)
	keb	%f0,.L514-.L512(%r5)
	jnh	.L511
.L506:
	lhi	%r1,1
	j	.L510
.L511:
	lhi	%r1,0
.L510:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L512:
.L514:
	.long	2139095039
.L513:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L522
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,96(%r11)
	ld	%f0,96(%r11)
	kdb	%f0,.L523-.L522(%r5)
	jl	.L516
	ld	%f0,96(%r11)
	kdb	%f0,.L524-.L522(%r5)
	jnh	.L521
.L516:
	lhi	%r1,1
	j	.L520
.L521:
	lhi	%r1,0
.L520:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L522:
.L524:
	.long	2146435071
	.long	-1
.L523:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L532
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r11)
	std	%f2,104(%r11)
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	ld	%f1,.L533-.L532(%r5)
	ld	%f3,.L533-.L532+8(%r5)
	kxbr	%f0,%f1
	jl	.L526
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	ld	%f1,.L534-.L532(%r5)
	ld	%f3,.L534-.L532+8(%r5)
	kxbr	%f0,%f1
	jnh	.L531
.L526:
	lhi	%r1,1
	j	.L530
.L531:
	lhi	%r1,0
.L530:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L532:
.L534:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L533:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,96(%r11)
	cdfbr	%f0,%r1
	lxdbr	%f0,%f0
	l	%r1,100(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	nopr	%r0
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L546
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,108(%r11)
	st	%r2,104(%r11)
	le	%f0,108(%r11)
	ceb	%f0,108(%r11)
	jo	.L538
	le	%f0,108(%r11)
	aebr	%f0,%f0
	ler	%f2,%f0
	le	%f0,108(%r11)
	cebr	%f0,%f2
	je	.L538
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jhe	.L539
	l	%r1,.L547-.L546(%r5)
	j	.L540
.L539:
	l	%r1,.L548-.L546(%r5)
.L540:
	st	%r1,116(%r11)
.L543:
	l	%r1,104(%r11)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L541
	le	%f0,108(%r11)
	meeb	%f0,116(%r11)
	ste	%f0,108(%r11)
.L541:
	l	%r1,104(%r11)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,104(%r11)
	l	%r1,104(%r11)
	ltr	%r1,%r1
	je	.L545
	le	%f0,116(%r11)
	meeb	%f0,116(%r11)
	ste	%f0,116(%r11)
	j	.L543
.L545:
	nopr	%r0
.L538:
	l	%r1,108(%r11)
	st	%r1,100(%r11)
	le	%f0,100(%r11)
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L546:
.L548:
	.long	1073741824
.L547:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L558
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,112(%r11)
	st	%r2,108(%r11)
	ld	%f0,112(%r11)
	cdb	%f0,112(%r11)
	jo	.L550
	ld	%f0,112(%r11)
	adbr	%f0,%f0
	ldr	%f2,%f0
	ld	%f0,112(%r11)
	cdbr	%f0,%f2
	je	.L550
	l	%r1,108(%r11)
	ltr	%r1,%r1
	jhe	.L551
	lm	%r2,%r3,.L559-.L558(%r5)
	j	.L552
.L551:
	lm	%r2,%r3,.L560-.L558(%r5)
.L552:
	stm	%r2,%r3,120(%r11)
.L555:
	l	%r1,108(%r11)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L553
	ld	%f0,112(%r11)
	mdb	%f0,120(%r11)
	std	%f0,112(%r11)
.L553:
	l	%r1,108(%r11)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	ltr	%r1,%r1
	je	.L557
	ld	%f0,120(%r11)
	mdb	%f0,120(%r11)
	std	%f0,120(%r11)
	j	.L555
.L557:
	nopr	%r0
.L550:
	lm	%r2,%r3,112(%r11)
	stm	%r2,%r3,96(%r11)
	ld	%f0,96(%r11)
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L558:
.L560:
	.long	1073741824
	.long	0
.L559:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L570
	std	%f4,80(%r15)
	std	%f6,88(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	.cfi_offset 18, -16
	.cfi_offset 19, -8
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,116(%r11)
	lr	%r12,%r3
	ld	%f0,0(%r12)
	ld	%f2,8(%r12)
	std	%f0,96(%r11)
	std	%f2,104(%r11)
	st	%r4,112(%r11)
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	ld	%f4,96(%r11)
	ld	%f6,104(%r11)
	cxbr	%f0,%f4
	jo	.L562
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	axbr	%f0,%f0
	ld	%f4,96(%r11)
	ld	%f6,104(%r11)
	cxbr	%f4,%f0
	je	.L562
	l	%r1,112(%r11)
	ltr	%r1,%r1
	jhe	.L563
	ld	%f0,.L571-.L570(%r5)
	ld	%f2,.L571-.L570+8(%r5)
	j	.L564
.L563:
	ld	%f0,.L572-.L570(%r5)
	ld	%f2,.L572-.L570+8(%r5)
.L564:
	std	%f0,120(%r11)
	std	%f2,128(%r11)
.L567:
	l	%r1,112(%r11)
	lhi	%r2,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L565
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	ld	%f4,120(%r11)
	ld	%f6,128(%r11)
	mxbr	%f0,%f4
	std	%f0,96(%r11)
	std	%f2,104(%r11)
.L565:
	l	%r1,112(%r11)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,112(%r11)
	l	%r1,112(%r11)
	ltr	%r1,%r1
	je	.L569
	ld	%f0,120(%r11)
	ld	%f2,128(%r11)
	ld	%f4,120(%r11)
	ld	%f6,128(%r11)
	mxbr	%f0,%f4
	std	%f0,120(%r11)
	std	%f2,128(%r11)
	j	.L567
.L569:
	nopr	%r0
.L562:
	l	%r1,116(%r11)
	ld	%f0,96(%r11)
	ld	%f2,104(%r11)
	std	%f0,0(%r1)
	std	%f2,8(%r1)
	l	%r2,116(%r11)
	ld	%f4,216(%r11)
	ld	%f6,224(%r11)
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 19
	.cfi_restore 18
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L570:
.L572:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L571:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,104(%r11)
	st	%r1,116(%r11)
	l	%r1,108(%r11)
	st	%r1,112(%r11)
	j	.L574
.L575:
	l	%r1,116(%r11)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,116(%r11)
	ic	%r3,0(%r1)
	l	%r1,112(%r11)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,112(%r11)
	ic	%r2,0(%r1)
	xr	%r2,%r3
	stc	%r2,0(%r1)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L574:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L575
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r2,108(%r11)
	brasl	%r14,strlen
	lr	%r1,%r2
	a	%r1,108(%r11)
	st	%r1,116(%r11)
	j	.L579
.L581:
	l	%r1,104(%r11)
	ahi	%r1,1
	st	%r1,104(%r11)
	l	%r1,116(%r11)
	ahi	%r1,1
	st	%r1,116(%r11)
	l	%r1,100(%r11)
	ahi	%r1,-1
	st	%r1,100(%r11)
.L579:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L580
	l	%r1,104(%r11)
	ic	%r2,0(%r1)
	l	%r1,116(%r11)
	stc	%r2,0(%r1)
	l	%r1,116(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L581
.L580:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L582
	l	%r1,116(%r11)
	mvi	0(%r1),0
.L582:
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L586
.L591:
	nopr	%r0
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
.L586:
	l	%r1,108(%r11)
	cl	%r1,96(%r11)
	jhe	.L587
	l	%r1,100(%r11)
	a	%r1,108(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L591
.L587:
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	j	.L594
.L598:
	l	%r1,96(%r11)
	st	%r1,108(%r11)
	j	.L595
.L597:
	l	%r1,108(%r11)
	lr	%r2,%r1
	ahi	%r2,1
	st	%r2,108(%r11)
	ic	%r2,0(%r1)
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L595
	l	%r1,100(%r11)
	j	.L596
.L595:
	l	%r1,108(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L597
	l	%r1,100(%r11)
	ahi	%r1,1
	st	%r1,100(%r11)
.L594:
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L598
	lhi	%r1,0
.L596:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	st	%r3,100(%r11)
	lhi	%r2,0
	st	%r2,108(%r11)
.L602:
	ic	%r2,0(%r1)
	lhi	%r3,255
	nr	%r3,%r2
	l	%r2,100(%r11)
	cr	%r2,%r3
	jne	.L601
	st	%r1,108(%r11)
.L601:
	lr	%r2,%r1
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r2,0(%r2)
	lhi	%r3,255
	nr	%r2,%r3
	ltr	%r2,%r2
	jne	.L602
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	l	%r2,96(%r11)
	brasl	%r14,strlen
	st	%r2,104(%r11)
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jne	.L608
	l	%r1,100(%r11)
	j	.L607
.L610:
	l	%r4,104(%r11)
	l	%r3,96(%r11)
	l	%r2,108(%r11)
	brasl	%r14,strncmp
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L609
	l	%r1,108(%r11)
	j	.L607
.L609:
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
.L608:
	l	%r1,96(%r11)
	ic	%r1,0(%r1)
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r3,%r1
	l	%r2,108(%r11)
	brasl	%r14,strchr
	st	%r2,108(%r11)
	l	%r1,108(%r11)
	ltr	%r1,%r1
	jne	.L610
	lhi	%r1,0
.L607:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L622
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,104(%r11)
	std	%f2,96(%r11)
	ld	%f0,104(%r11)
	kdb	%f0,.L623-.L622(%r5)
	jnl	.L613
	ld	%f0,96(%r11)
	kdb	%f0,.L623-.L622(%r5)
	jh	.L615
.L613:
	ld	%f0,104(%r11)
	kdb	%f0,.L623-.L622(%r5)
	jnh	.L616
	ld	%f0,96(%r11)
	kdb	%f0,.L623-.L622(%r5)
	jnl	.L616
.L615:
	ld	%f0,104(%r11)
	lcdbr	%f0,%f0
	j	.L619
.L616:
	ld	%f0,104(%r11)
.L619:
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L622:
.L623:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	st	%r5,96(%r11)
	l	%r1,104(%r11)
	s	%r1,96(%r11)
	a	%r1,108(%r11)
	st	%r1,112(%r11)
	l	%r1,96(%r11)
	ltr	%r1,%r1
	jne	.L625
	l	%r1,108(%r11)
	j	.L626
.L625:
	l	%r2,104(%r11)
	l	%r1,96(%r11)
	clr	%r1,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L627
	lhi	%r1,0
	j	.L626
.L627:
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	j	.L628
.L630:
	l	%r1,116(%r11)
	ic	%r2,0(%r1)
	l	%r1,100(%r11)
	ic	%r1,0(%r1)
	lhi	%r3,255
	nr	%r2,%r3
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r2,%r1
	jne	.L629
	l	%r1,116(%r11)
	ahi	%r1,1
	l	%r2,100(%r11)
	ahi	%r2,1
	l	%r3,96(%r11)
	ahi	%r3,-1
	lr	%r4,%r3
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,memcmp
	lr	%r1,%r2
	ltr	%r1,%r1
	jne	.L629
	l	%r1,116(%r11)
	j	.L626
.L629:
	l	%r1,116(%r11)
	ahi	%r1,1
	st	%r1,116(%r11)
.L628:
	l	%r1,116(%r11)
	cl	%r1,112(%r11)
	jle	.L630
	lhi	%r1,0
.L626:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r4,100(%r11)
	l	%r3,104(%r11)
	l	%r2,108(%r11)
	brasl	%r14,memcpy
	lr	%r1,%r2
	a	%r1,100(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L652
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,112(%r11)
	st	%r2,108(%r11)
	lhi	%r1,0
	st	%r1,120(%r11)
	lhi	%r1,0
	st	%r1,124(%r11)
	ld	%f0,112(%r11)
	kdb	%f0,.L653-.L652(%r5)
	jnl	.L636
	ld	%f0,112(%r11)
	lcdbr	%f0,%f0
	std	%f0,112(%r11)
	lhi	%r1,1
	st	%r1,124(%r11)
.L636:
	ld	%f0,112(%r11)
	kdb	%f0,.L654-.L652(%r5)
	jnhe	.L651
	j	.L640
.L641:
	l	%r1,120(%r11)
	ahi	%r1,1
	st	%r1,120(%r11)
	ld	%f0,112(%r11)
	ddb	%f0,.L655-.L652(%r5)
	std	%f0,112(%r11)
.L640:
	ld	%f0,112(%r11)
	kdb	%f0,.L654-.L652(%r5)
	jhe	.L641
	j	.L642
.L651:
	ld	%f0,112(%r11)
	kdb	%f0,.L656-.L652(%r5)
	jnl	.L642
	ld	%f0,112(%r11)
	cdb	%f0,.L653-.L652(%r5)
	je	.L642
	j	.L644
.L645:
	l	%r1,120(%r11)
	ahi	%r1,-1
	st	%r1,120(%r11)
	ld	%f0,112(%r11)
	adbr	%f0,%f0
	std	%f0,112(%r11)
.L644:
	ld	%f0,112(%r11)
	kdb	%f0,.L656-.L652(%r5)
	jl	.L645
.L642:
	l	%r1,108(%r11)
	l	%r2,120(%r11)
	st	%r2,0(%r1)
	l	%r1,124(%r11)
	ltr	%r1,%r1
	je	.L646
	ld	%f0,112(%r11)
	lcdbr	%f0,%f0
	std	%f0,112(%r11)
.L646:
	lm	%r2,%r3,112(%r11)
	stm	%r2,%r3,96(%r11)
	ld	%f0,96(%r11)
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L652:
.L656:
	.long	1071644672
	.long	0
.L655:
	.long	1073741824
	.long	0
.L654:
	.long	1072693248
	.long	0
.L653:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	stm	%r4,%r5,96(%r11)
	lhi	%r2,0
	lhi	%r3,0
	stm	%r2,%r3,120(%r11)
	lm	%r2,%r3,104(%r11)
	stm	%r2,%r3,112(%r11)
	j	.L658
.L661:
	lhi	%r1,0
	n	%r1,112(%r11)
	lr	%r12,%r1
	lhi	%r1,1
	n	%r1,116(%r11)
	lr	%r13,%r1
	lr	%r1,%r12
	or	%r1,%r13
	ltr	%r1,%r1
	je	.L659
	lm	%r2,%r3,96(%r11)
	al	%r3,124(%r11)
	alc	%r2,120(%r11)
	stm	%r2,%r3,120(%r11)
.L659:
	lm	%r2,%r3,96(%r11)
	sldl	%r2,1
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,112(%r11)
	srdl	%r2,1
	stm	%r2,%r3,112(%r11)
.L658:
	l	%r1,112(%r11)
	o	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L661
	lm	%r2,%r3,120(%r11)
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	lhi	%r1,1
	st	%r1,116(%r11)
	lhi	%r1,0
	st	%r1,112(%r11)
	j	.L665
.L667:
	l	%r1,104(%r11)
	sll	%r1,1
	st	%r1,104(%r11)
	l	%r1,116(%r11)
	sll	%r1,1
	st	%r1,116(%r11)
.L665:
	l	%r1,104(%r11)
	cl	%r1,108(%r11)
	jhe	.L668
	l	%r1,116(%r11)
	ltr	%r1,%r1
	je	.L668
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jhe	.L667
	j	.L668
.L670:
	l	%r1,108(%r11)
	cl	%r1,104(%r11)
	jl	.L669
	l	%r1,108(%r11)
	s	%r1,104(%r11)
	st	%r1,108(%r11)
	oc	112(4,%r11),116(%r11)
.L669:
	l	%r1,116(%r11)
	srl	%r1,1
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	srl	%r1,1
	st	%r1,104(%r11)
.L668:
	l	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L670
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L671
	l	%r1,108(%r11)
	j	.L672
.L671:
	l	%r1,112(%r11)
.L672:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	stc	%r1,103(%r11)
	ic	%r1,103(%r11)
	lhi	%r2,255
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L675
	lhi	%r1,7
	j	.L676
.L675:
	ic	%r1,103(%r11)
	lhi	%r2,255
	nr	%r1,%r2
	sll	%r1,8
	lr	%r2,%r1
	brasl	%r14,__clzsi2
	lr	%r1,%r2
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	ahi	%r1,-1
.L676:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	l	%r1,96(%r11)
	ltr	%r1,%r1
	jhe	.L679
	l	%r1,96(%r11)
	lhi	%r2,-1
	xr	%r2,%r1
	lr	%r4,%r2
	l	%r1,100(%r11)
	lhi	%r2,-1
	xr	%r2,%r1
	lr	%r5,%r2
	stm	%r4,%r5,96(%r11)
.L679:
	l	%r1,96(%r11)
	o	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L681
	lhi	%r1,63
	j	.L682
.L681:
	lm	%r2,%r3,96(%r11)
	brasl	%r14,__clzdi2
	lr	%r1,%r2
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	ahi	%r1,-1
.L682:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L685
.L687:
	lhi	%r1,1
	n	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L686
	l	%r1,108(%r11)
	a	%r1,96(%r11)
	st	%r1,108(%r11)
.L686:
	l	%r1,100(%r11)
	srl	%r1,1
	st	%r1,100(%r11)
	l	%r1,96(%r11)
	sll	%r1,1
	st	%r1,96(%r11)
.L685:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L687
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,100(%r11)
	srl	%r1,3
	st	%r1,124(%r11)
	lhi	%r1,-8
	n	%r1,100(%r11)
	st	%r1,128(%r11)
	l	%r1,108(%r11)
	st	%r1,120(%r11)
	l	%r1,104(%r11)
	st	%r1,116(%r11)
	l	%r1,120(%r11)
	cl	%r1,116(%r11)
	jl	.L691
	l	%r2,116(%r11)
	a	%r2,100(%r11)
	l	%r1,120(%r11)
	clr	%r1,%r2
	jle	.L698
.L691:
	lhi	%r1,0
	st	%r1,132(%r11)
	j	.L693
.L694:
	l	%r1,132(%r11)
	sll	%r1,3
	a	%r1,104(%r11)
	lr	%r2,%r1
	l	%r1,132(%r11)
	sll	%r1,3
	a	%r1,108(%r11)
	lm	%r2,%r3,0(%r2)
	stm	%r2,%r3,0(%r1)
	l	%r1,132(%r11)
	ahi	%r1,1
	st	%r1,132(%r11)
.L693:
	l	%r1,132(%r11)
	cl	%r1,124(%r11)
	jl	.L694
	j	.L695
.L696:
	l	%r2,116(%r11)
	a	%r2,128(%r11)
	l	%r1,120(%r11)
	a	%r1,128(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,128(%r11)
	ahi	%r1,1
	st	%r1,128(%r11)
.L695:
	l	%r1,100(%r11)
	cl	%r1,128(%r11)
	jh	.L696
	j	.L697
.L699:
	l	%r2,116(%r11)
	a	%r2,100(%r11)
	l	%r1,120(%r11)
	a	%r1,100(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L698:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L699
	nopr	%r0
.L697:
	nopr	%r0
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,100(%r11)
	srl	%r1,1
	st	%r1,120(%r11)
	l	%r1,108(%r11)
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	st	%r1,112(%r11)
	l	%r1,116(%r11)
	cl	%r1,112(%r11)
	jl	.L702
	l	%r2,112(%r11)
	a	%r2,100(%r11)
	l	%r1,116(%r11)
	clr	%r1,%r2
	jle	.L708
.L702:
	lhi	%r1,0
	st	%r1,124(%r11)
	j	.L704
.L705:
	l	%r1,124(%r11)
	sll	%r1,1
	a	%r1,104(%r11)
	lr	%r2,%r1
	l	%r1,124(%r11)
	sll	%r1,1
	a	%r1,108(%r11)
	lh	%r2,0(%r2)
	sth	%r2,0(%r1)
	l	%r1,124(%r11)
	ahi	%r1,1
	st	%r1,124(%r11)
.L704:
	l	%r1,124(%r11)
	cl	%r1,120(%r11)
	jl	.L705
	lhi	%r1,1
	n	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L707
	l	%r1,100(%r11)
	ahi	%r1,-1
	a	%r1,112(%r11)
	lr	%r2,%r1
	l	%r1,100(%r11)
	ahi	%r1,-1
	a	%r1,116(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	j	.L707
.L709:
	l	%r2,112(%r11)
	a	%r2,100(%r11)
	l	%r1,116(%r11)
	a	%r1,100(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L708:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L709
	nopr	%r0
.L707:
	nopr	%r0
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	l	%r1,100(%r11)
	srl	%r1,2
	st	%r1,124(%r11)
	lhi	%r1,-4
	n	%r1,100(%r11)
	st	%r1,128(%r11)
	l	%r1,108(%r11)
	st	%r1,120(%r11)
	l	%r1,104(%r11)
	st	%r1,116(%r11)
	l	%r1,120(%r11)
	cl	%r1,116(%r11)
	jl	.L712
	l	%r2,116(%r11)
	a	%r2,100(%r11)
	l	%r1,120(%r11)
	clr	%r1,%r2
	jle	.L719
.L712:
	lhi	%r1,0
	st	%r1,132(%r11)
	j	.L714
.L715:
	l	%r1,132(%r11)
	sll	%r1,2
	a	%r1,104(%r11)
	lr	%r2,%r1
	l	%r1,132(%r11)
	sll	%r1,2
	a	%r1,108(%r11)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
	l	%r1,132(%r11)
	ahi	%r1,1
	st	%r1,132(%r11)
.L714:
	l	%r1,132(%r11)
	cl	%r1,124(%r11)
	jl	.L715
	j	.L716
.L717:
	l	%r2,116(%r11)
	a	%r2,128(%r11)
	l	%r1,120(%r11)
	a	%r1,128(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,128(%r11)
	ahi	%r1,1
	st	%r1,128(%r11)
.L716:
	l	%r1,100(%r11)
	cl	%r1,128(%r11)
	jh	.L717
	j	.L718
.L720:
	l	%r2,116(%r11)
	a	%r2,100(%r11)
	l	%r1,120(%r11)
	a	%r1,100(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
.L719:
	l	%r1,100(%r11)
	lr	%r2,%r1
	ahi	%r2,-1
	st	%r2,100(%r11)
	ltr	%r1,%r1
	jne	.L720
	nopr	%r0
.L718:
	nopr	%r0
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,100(%r11)
	lr	%r2,%r1
	lhi	%r3,0
	srda	%r2,32
	d	%r2,96(%r11)
	lr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L728
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	cdfbr	%f0,%r1
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jhe	.L727
	adb	%f0,.L729-.L728(%r5)
.L727:
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L728:
.L729:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L733
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	cdfbr	%f0,%r1
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jhe	.L731
	adb	%f0,.L734-.L733(%r5)
.L731:
	ledbr	%f0,%f0
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L733:
.L734:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,96(%r11)
	brasl	%r14,__floatundidf
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,96(%r11)
	brasl	%r14,__floatundisf
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r1,100(%r11)
	lr	%r3,%r1
	lhi	%r2,0
	dl	%r2,96(%r11)
	lr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L751
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	sth	%r1,102(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L745
.L748:
	lh	%r1,102(%r11)
	l	%r2,.L752-.L751(%r5)
	nr	%r2,%r1
	lhi	%r1,15
	s	%r1,108(%r11)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L750
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
.L745:
	l	%r1,108(%r11)
	chi	%r1,15
	jle	.L748
	j	.L747
.L750:
	nopr	%r0
.L747:
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L751:
.L752:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L760
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	sth	%r1,102(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L754
.L757:
	lh	%r1,102(%r11)
	l	%r2,.L761-.L760(%r5)
	nr	%r2,%r1
	l	%r1,108(%r11)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	jne	.L759
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
.L754:
	l	%r1,108(%r11)
	chi	%r1,15
	jle	.L757
	j	.L756
.L759:
	nopr	%r0
.L756:
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L760:
.L761:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L768
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,100(%r11)
	le	%f0,100(%r11)
	keb	%f0,.L769-.L768(%r5)
	jnhe	.L767
	le	%f0,100(%r11)
	seb	%f0,.L769-.L768(%r5)
	cfebr	%r1,5,%f0
	a	%r1,.L770-.L768(%r5)
	j	.L765
.L767:
	le	%f0,100(%r11)
	cfebr	%r1,5,%f0
.L765:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L768:
.L769:
	.long	1191182336
.L770:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L776
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	sth	%r1,102(%r11)
	lhi	%r1,0
	st	%r1,104(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L772
.L774:
	lh	%r1,102(%r11)
	l	%r2,.L777-.L776(%r5)
	nr	%r2,%r1
	l	%r1,108(%r11)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L773
	l	%r1,104(%r11)
	ahi	%r1,1
	st	%r1,104(%r11)
.L773:
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
.L772:
	l	%r1,108(%r11)
	chi	%r1,15
	jle	.L774
	lhi	%r1,1
	n	%r1,104(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L776:
.L777:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L783
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	sth	%r1,102(%r11)
	lhi	%r1,0
	st	%r1,104(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L779
.L781:
	lh	%r1,102(%r11)
	l	%r2,.L784-.L783(%r5)
	nr	%r2,%r1
	l	%r1,108(%r11)
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r1,%r2
	ltr	%r1,%r1
	je	.L780
	l	%r1,104(%r11)
	ahi	%r1,1
	st	%r1,104(%r11)
.L780:
	l	%r1,108(%r11)
	ahi	%r1,1
	st	%r1,108(%r11)
.L779:
	l	%r1,108(%r11)
	chi	%r1,15
	jle	.L781
	l	%r1,104(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L783:
.L784:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	j	.L786
.L788:
	lhi	%r1,1
	n	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L787
	l	%r1,108(%r11)
	a	%r1,96(%r11)
	st	%r1,108(%r11)
.L787:
	l	%r1,100(%r11)
	srl	%r1,1
	st	%r1,100(%r11)
	l	%r1,96(%r11)
	sll	%r1,1
	st	%r1,96(%r11)
.L786:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L788
	l	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L794
	lhi	%r1,0
	j	.L793
.L796:
	lhi	%r1,1
	n	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L795
	l	%r1,108(%r11)
	a	%r1,100(%r11)
	st	%r1,108(%r11)
.L795:
	l	%r1,100(%r11)
	sll	%r1,1
	st	%r1,100(%r11)
	l	%r1,96(%r11)
	srl	%r1,1
	st	%r1,96(%r11)
.L794:
	l	%r1,96(%r11)
	ltr	%r1,%r1
	jne	.L796
	l	%r1,108(%r11)
.L793:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	lhi	%r1,1
	st	%r1,116(%r11)
	lhi	%r1,0
	st	%r1,112(%r11)
	j	.L799
.L801:
	l	%r1,104(%r11)
	sll	%r1,1
	st	%r1,104(%r11)
	l	%r1,116(%r11)
	sll	%r1,1
	st	%r1,116(%r11)
.L799:
	l	%r1,104(%r11)
	cl	%r1,108(%r11)
	jhe	.L802
	l	%r1,116(%r11)
	ltr	%r1,%r1
	je	.L802
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jhe	.L801
	j	.L802
.L804:
	l	%r1,108(%r11)
	cl	%r1,104(%r11)
	jl	.L803
	l	%r1,108(%r11)
	s	%r1,104(%r11)
	st	%r1,108(%r11)
	oc	112(4,%r11),116(%r11)
.L803:
	l	%r1,116(%r11)
	srl	%r1,1
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	srl	%r1,1
	st	%r1,104(%r11)
.L802:
	l	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L804
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L805
	l	%r1,108(%r11)
	j	.L806
.L805:
	l	%r1,112(%r11)
.L806:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,100(%r11)
	ste	%f2,96(%r11)
	le	%f0,100(%r11)
	keb	%f0,96(%r11)
	jnl	.L816
	lhi	%r1,-1
	j	.L811
.L816:
	le	%f0,100(%r11)
	keb	%f0,96(%r11)
	jnh	.L817
	lhi	%r1,1
	j	.L811
.L817:
	lhi	%r1,0
.L811:
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,104(%r11)
	std	%f2,96(%r11)
	ld	%f0,104(%r11)
	kdb	%f0,96(%r11)
	jnl	.L827
	lhi	%r1,-1
	j	.L822
.L827:
	ld	%f0,104(%r11)
	kdb	%f0,96(%r11)
	jnh	.L828
	lhi	%r1,1
	j	.L822
.L828:
	lhi	%r1,0
.L822:
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r4,100(%r11)
	lhi	%r5,0
	srda	%r4,32
	l	%r2,96(%r11)
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
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	l	%r5,100(%r11)
	lhi	%r4,0
	l	%r3,96(%r11)
	lhi	%r2,0
	lr	%r0,%r4
	msr	%r0,%r3
	lr	%r1,%r2
	msr	%r1,%r5
	ar	%r1,%r0
	mlr	%r2,%r5
	ar	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,0
	st	%r1,112(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	l	%r1,96(%r11)
	ltr	%r1,%r1
	jhe	.L837
	l	%r1,96(%r11)
	lcr	%r1,%r1
	st	%r1,96(%r11)
	lhi	%r1,1
	st	%r1,112(%r11)
.L837:
	mvi	119(%r11),0
	j	.L838
.L841:
	lhi	%r1,1
	n	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L839
	l	%r1,108(%r11)
	a	%r1,100(%r11)
	st	%r1,108(%r11)
.L839:
	l	%r1,100(%r11)
	sll	%r1,1
	st	%r1,100(%r11)
	l	%r1,96(%r11)
	sra	%r1,1
	st	%r1,96(%r11)
	ic	%r1,119(%r11)
	ahi	%r1,1
	stc	%r1,119(%r11)
.L838:
	l	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L840
	ic	%r1,119(%r11)
	lhi	%r2,255
	nr	%r1,%r2
	lhi	%r2,31
	clr	%r1,%r2
	jle	.L841
.L840:
	l	%r1,112(%r11)
	ltr	%r1,%r1
	je	.L842
	l	%r1,108(%r11)
	lcr	%r1,%r1
	j	.L844
.L842:
	l	%r1,108(%r11)
.L844:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jhe	.L847
	l	%r1,100(%r11)
	lcr	%r1,%r1
	st	%r1,100(%r11)
	l	%r1,108(%r11)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,108(%r11)
.L847:
	l	%r1,96(%r11)
	ltr	%r1,%r1
	jhe	.L848
	l	%r1,96(%r11)
	lcr	%r1,%r1
	st	%r1,96(%r11)
	l	%r1,108(%r11)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,108(%r11)
.L848:
	l	%r1,100(%r11)
	l	%r2,96(%r11)
	lhi	%r4,0
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,__udivmodsi4
	lr	%r1,%r2
	st	%r1,104(%r11)
	l	%r1,108(%r11)
	ltr	%r1,%r1
	je	.L849
	l	%r1,104(%r11)
	lcr	%r1,%r1
	st	%r1,104(%r11)
.L849:
	l	%r1,104(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,0
	st	%r1,108(%r11)
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jhe	.L853
	l	%r1,100(%r11)
	lcr	%r1,%r1
	st	%r1,100(%r11)
	lhi	%r1,1
	st	%r1,108(%r11)
.L853:
	l	%r1,96(%r11)
	ltr	%r1,%r1
	jhe	.L854
	l	%r1,96(%r11)
	lcr	%r1,%r1
	st	%r1,96(%r11)
.L854:
	l	%r1,100(%r11)
	l	%r2,96(%r11)
	lhi	%r4,1
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,__udivmodsi4
	lr	%r1,%r2
	st	%r1,104(%r11)
	l	%r1,108(%r11)
	ltr	%r1,%r1
	je	.L855
	l	%r1,104(%r11)
	lcr	%r1,%r1
	st	%r1,104(%r11)
.L855:
	l	%r1,104(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L867
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	lr	%r2,%r3
	st	%r4,96(%r11)
	sth	%r1,102(%r11)
	lr	%r1,%r2
	sth	%r1,100(%r11)
	lhi	%r1,1
	sth	%r1,110(%r11)
	lhi	%r1,0
	sth	%r1,108(%r11)
	j	.L859
.L861:
	lh	%r1,100(%r11)
	sll	%r1,1
	sth	%r1,100(%r11)
	lh	%r1,110(%r11)
	sll	%r1,1
	sth	%r1,110(%r11)
.L859:
	lh	%r1,100(%r11)
	n	%r1,.L868-.L867(%r5)
	lh	%r2,102(%r11)
	n	%r2,.L868-.L867(%r5)
	clr	%r1,%r2
	jhe	.L862
	lh	%r1,110(%r11)
	n	%r1,.L868-.L867(%r5)
	ltr	%r1,%r1
	je	.L862
	lh	%r1,100(%r11)
	sll	%r1,16
	sra	%r1,16
	ltr	%r1,%r1
	jhe	.L861
	j	.L862
.L864:
	lh	%r1,102(%r11)
	n	%r1,.L868-.L867(%r5)
	lh	%r2,100(%r11)
	n	%r2,.L868-.L867(%r5)
	clr	%r1,%r2
	jl	.L863
	lh	%r1,102(%r11)
	lh	%r2,100(%r11)
	sr	%r1,%r2
	sth	%r1,102(%r11)
	oc	108(2,%r11),110(%r11)
.L863:
	lh	%r1,110(%r11)
	n	%r1,.L868-.L867(%r5)
	srl	%r1,1
	sth	%r1,110(%r11)
	lh	%r1,100(%r11)
	n	%r1,.L868-.L867(%r5)
	srl	%r1,1
	sth	%r1,100(%r11)
.L862:
	lh	%r1,110(%r11)
	n	%r1,.L868-.L867(%r5)
	ltr	%r1,%r1
	jne	.L864
	l	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L865
	lh	%r1,102(%r11)
	j	.L866
.L865:
	lh	%r1,108(%r11)
.L866:
	n	%r1,.L868-.L867(%r5)
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L867:
.L868:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,108(%r11)
	st	%r3,104(%r11)
	st	%r4,100(%r11)
	lhi	%r1,1
	st	%r1,116(%r11)
	lhi	%r1,0
	st	%r1,112(%r11)
	j	.L870
.L872:
	l	%r1,104(%r11)
	sll	%r1,1
	st	%r1,104(%r11)
	l	%r1,116(%r11)
	sll	%r1,1
	st	%r1,116(%r11)
.L870:
	l	%r1,104(%r11)
	cl	%r1,108(%r11)
	jhe	.L873
	l	%r1,116(%r11)
	ltr	%r1,%r1
	je	.L873
	l	%r1,104(%r11)
	ltr	%r1,%r1
	jhe	.L872
	j	.L873
.L875:
	l	%r1,108(%r11)
	cl	%r1,104(%r11)
	jl	.L874
	l	%r1,108(%r11)
	s	%r1,104(%r11)
	st	%r1,108(%r11)
	oc	112(4,%r11),116(%r11)
.L874:
	l	%r1,116(%r11)
	srl	%r1,1
	st	%r1,116(%r11)
	l	%r1,104(%r11)
	srl	%r1,1
	st	%r1,104(%r11)
.L873:
	l	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L875
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L876
	l	%r1,108(%r11)
	j	.L877
.L876:
	l	%r1,112(%r11)
.L877:
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	st	%r4,100(%r11)
	lhi	%r1,32
	st	%r1,132(%r11)
	lm	%r2,%r3,104(%r11)
	stm	%r2,%r3,120(%r11)
	l	%r1,100(%r11)
	n	%r1,132(%r11)
	ltr	%r1,%r1
	je	.L880
	lhi	%r1,0
	st	%r1,116(%r11)
	l	%r2,124(%r11)
	l	%r1,100(%r11)
	s	%r1,132(%r11)
	sll	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,112(%r11)
	j	.L881
.L880:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L882
	lm	%r2,%r3,104(%r11)
	j	.L884
.L882:
	l	%r2,124(%r11)
	l	%r1,100(%r11)
	sll	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,120(%r11)
	lr	%r2,%r1
	l	%r1,100(%r11)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	l	%r2,124(%r11)
	l	%r1,132(%r11)
	s	%r1,100(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	or	%r1,%r2
	st	%r1,112(%r11)
.L881:
	lm	%r2,%r3,112(%r11)
.L884:
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	st	%r4,100(%r11)
	lhi	%r1,32
	st	%r1,132(%r11)
	lm	%r2,%r3,104(%r11)
	stm	%r2,%r3,120(%r11)
	l	%r1,100(%r11)
	n	%r1,132(%r11)
	ltr	%r1,%r1
	je	.L887
	l	%r2,120(%r11)
	l	%r1,132(%r11)
	ahi	%r1,-1
	sra	%r2,0(%r1)
	st	%r2,112(%r11)
	l	%r2,120(%r11)
	l	%r1,100(%r11)
	s	%r1,132(%r11)
	sra	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,116(%r11)
	j	.L888
.L887:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L889
	lm	%r2,%r3,104(%r11)
	j	.L891
.L889:
	l	%r2,120(%r11)
	l	%r1,100(%r11)
	sra	%r2,0(%r1)
	st	%r2,112(%r11)
	l	%r1,120(%r11)
	lr	%r2,%r1
	l	%r1,132(%r11)
	s	%r1,100(%r11)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	l	%r2,124(%r11)
	l	%r1,100(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	or	%r1,%r2
	st	%r1,116(%r11)
.L888:
	lm	%r2,%r3,112(%r11)
.L891:
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	larl	%r13,.L895
	ahi	%r15,-184
	.cfi_def_cfa_offset 280
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,176(%r11)
	lm	%r2,%r3,176(%r11)
	srdl	%r2,56
	lr	%r4,%r2
	lr	%r5,%r3
	lm	%r2,%r3,176(%r11)
	srdl	%r2,40
	lhi	%r12,0
	nr	%r12,%r2
	st	%r12,168(%r11)
	l	%r12,.L896-.L895(%r13)
	nr	%r12,%r3
	st	%r12,172(%r11)
	lr	%r12,%r4
	lm	%r2,%r3,168(%r11)
	or	%r12,%r2
	lr	%r0,%r12
	lr	%r4,%r5
	or	%r4,%r3
	lr	%r1,%r4
	lm	%r2,%r3,176(%r11)
	srdl	%r2,24
	lhi	%r4,0
	nr	%r4,%r2
	st	%r4,160(%r11)
	lr	%r2,%r3
	n	%r2,.L897-.L895(%r13)
	st	%r2,164(%r11)
	lm	%r2,%r3,160(%r11)
	lr	%r4,%r2
	or	%r4,%r0
	lr	%r8,%r4
	lr	%r2,%r3
	or	%r2,%r1
	lr	%r9,%r2
	lm	%r2,%r3,176(%r11)
	srdl	%r2,8
	lhi	%r1,0
	nr	%r1,%r2
	st	%r1,152(%r11)
	lr	%r1,%r3
	n	%r1,.L898-.L895(%r13)
	st	%r1,156(%r11)
	lm	%r2,%r3,152(%r11)
	lr	%r1,%r2
	or	%r1,%r8
	st	%r1,144(%r11)
	lr	%r1,%r9
	or	%r1,%r3
	st	%r1,148(%r11)
	lm	%r2,%r3,176(%r11)
	sldl	%r2,8
	lhi	%r1,255
	nr	%r1,%r2
	st	%r1,136(%r11)
	lr	%r1,%r3
	lhi	%r2,0
	nr	%r1,%r2
	st	%r1,140(%r11)
	lm	%r4,%r5,144(%r11)
	lr	%r1,%r4
	lm	%r2,%r3,136(%r11)
	or	%r1,%r2
	st	%r1,128(%r11)
	lr	%r1,%r5
	or	%r1,%r3
	st	%r1,132(%r11)
	lm	%r2,%r3,176(%r11)
	sldl	%r2,24
	l	%r1,.L896-.L895(%r13)
	nr	%r1,%r2
	st	%r1,120(%r11)
	lr	%r1,%r3
	lhi	%r2,0
	nr	%r1,%r2
	st	%r1,124(%r11)
	lm	%r4,%r5,128(%r11)
	lr	%r1,%r4
	lm	%r2,%r3,120(%r11)
	or	%r1,%r2
	st	%r1,112(%r11)
	lr	%r1,%r5
	or	%r1,%r3
	st	%r1,116(%r11)
	lm	%r2,%r3,176(%r11)
	sldl	%r2,40
	l	%r1,.L897-.L895(%r13)
	nr	%r1,%r2
	st	%r1,104(%r11)
	lr	%r1,%r3
	lhi	%r2,0
	nr	%r1,%r2
	st	%r1,108(%r11)
	lm	%r4,%r5,112(%r11)
	lr	%r1,%r4
	lm	%r2,%r3,104(%r11)
	or	%r1,%r2
	lr	%r6,%r1
	lr	%r1,%r5
	or	%r1,%r3
	lr	%r7,%r1
	lm	%r2,%r3,176(%r11)
	sldl	%r2,56
	lr	%r1,%r6
	or	%r1,%r2
	st	%r1,96(%r11)
	lr	%r1,%r7
	or	%r1,%r3
	st	%r1,100(%r11)
	lm	%r2,%r3,96(%r11)
	lm	%r6,%r15,208(%r11)
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
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L895:
.L898:
	.long	-16777216
.L897:
	.long	16711680
.L896:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L901
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	srl	%r1,24
	lr	%r2,%r1
	l	%r1,100(%r11)
	srl	%r1,8
	n	%r1,.L902-.L901(%r5)
	or	%r2,%r1
	l	%r1,100(%r11)
	sll	%r1,8
	n	%r1,.L903-.L901(%r5)
	or	%r2,%r1
	l	%r1,100(%r11)
	sll	%r1,24
	or	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L901:
.L903:
	.long	16711680
.L902:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L914
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,116(%r11)
	l	%r1,116(%r11)
	cl	%r1,.L915-.L914(%r5)
	jh	.L905
	lhi	%r1,16
	j	.L906
.L905:
	lhi	%r1,0
.L906:
	st	%r1,112(%r11)
	lhi	%r1,16
	s	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,112(%r11)
	st	%r1,108(%r11)
	l	%r1,.L916-.L914(%r5)
	n	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L907
	lhi	%r1,8
	j	.L908
.L907:
	lhi	%r1,0
.L908:
	st	%r1,112(%r11)
	lhi	%r1,8
	s	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,112(%r11)
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	lhi	%r1,240
	n	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L909
	lhi	%r1,4
	j	.L910
.L909:
	lhi	%r1,0
.L910:
	st	%r1,112(%r11)
	lhi	%r1,4
	s	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,112(%r11)
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	lhi	%r1,12
	n	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L911
	lhi	%r1,2
	j	.L912
.L911:
	lhi	%r1,0
.L912:
	st	%r1,112(%r11)
	lhi	%r1,2
	s	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,112(%r11)
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	lhi	%r1,2
	n	%r1,116(%r11)
	lpr	%r1,%r1
	ahi	%r1,-1
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	lr	%r2,%r1
	lhi	%r1,2
	s	%r1,116(%r11)
	msr	%r1,%r2
	a	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L914:
.L916:
	.long	65280
.L915:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	stm	%r4,%r5,96(%r11)
	lm	%r2,%r3,104(%r11)
	stm	%r2,%r3,120(%r11)
	lm	%r2,%r3,96(%r11)
	stm	%r2,%r3,112(%r11)
	l	%r1,120(%r11)
	l	%r2,112(%r11)
	cr	%r1,%r2
	jhe	.L918
	lhi	%r1,0
	j	.L923
.L918:
	l	%r1,120(%r11)
	l	%r2,112(%r11)
	cr	%r1,%r2
	jle	.L920
	lhi	%r1,2
	j	.L923
.L920:
	l	%r1,124(%r11)
	l	%r2,116(%r11)
	clr	%r1,%r2
	jhe	.L921
	lhi	%r1,0
	j	.L923
.L921:
	l	%r1,124(%r11)
	l	%r2,116(%r11)
	clr	%r1,%r2
	jle	.L922
	lhi	%r1,2
	j	.L923
.L922:
	lhi	%r1,1
.L923:
	lr	%r2,%r1
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	stm	%r4,%r5,96(%r11)
	lm	%r4,%r5,96(%r11)
	lm	%r2,%r3,104(%r11)
	brasl	%r14,__cmpdi2
	lr	%r1,%r2
	ahi	%r1,-1
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L938
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,116(%r11)
	l	%r1,.L939-.L938(%r5)
	n	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L929
	lhi	%r1,16
	j	.L930
.L929:
	lhi	%r1,0
.L930:
	st	%r1,112(%r11)
	l	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,112(%r11)
	st	%r1,108(%r11)
	lhi	%r1,255
	n	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L931
	lhi	%r1,8
	j	.L932
.L931:
	lhi	%r1,0
.L932:
	st	%r1,112(%r11)
	l	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,112(%r11)
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	lhi	%r1,15
	n	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L933
	lhi	%r1,4
	j	.L934
.L933:
	lhi	%r1,0
.L934:
	st	%r1,112(%r11)
	l	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,112(%r11)
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	lhi	%r1,3
	n	%r1,116(%r11)
	ltr	%r1,%r1
	jne	.L935
	lhi	%r1,2
	j	.L936
.L935:
	lhi	%r1,0
.L936:
	st	%r1,112(%r11)
	l	%r1,112(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	nc	116(4,%r11),.L940-.L938(%r5)
	l	%r1,112(%r11)
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	l	%r1,116(%r11)
	lhi	%r2,-1
	xr	%r1,%r2
	lhi	%r2,1
	nr	%r2,%r1
	l	%r1,116(%r11)
	srl	%r1,1
	lr	%r3,%r1
	lhi	%r1,2
	sr	%r1,%r3
	lcr	%r2,%r2
	nr	%r1,%r2
	a	%r1,108(%r11)
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L938:
.L940:
	.long	3
.L939:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	st	%r4,100(%r11)
	lhi	%r1,32
	st	%r1,132(%r11)
	lm	%r2,%r3,104(%r11)
	stm	%r2,%r3,120(%r11)
	l	%r1,100(%r11)
	n	%r1,132(%r11)
	ltr	%r1,%r1
	je	.L942
	lhi	%r1,0
	st	%r1,112(%r11)
	l	%r2,120(%r11)
	l	%r1,100(%r11)
	s	%r1,132(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	j	.L943
.L942:
	l	%r1,100(%r11)
	ltr	%r1,%r1
	jne	.L944
	lm	%r2,%r3,104(%r11)
	j	.L946
.L944:
	l	%r2,120(%r11)
	l	%r1,100(%r11)
	srl	%r2,0(%r1)
	st	%r2,112(%r11)
	l	%r2,120(%r11)
	l	%r1,132(%r11)
	s	%r1,100(%r11)
	sll	%r2,0(%r1)
	lr	%r3,%r2
	l	%r2,124(%r11)
	l	%r1,100(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	or	%r1,%r2
	st	%r1,116(%r11)
.L943:
	lm	%r2,%r3,112(%r11)
.L946:
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lhi	%r1,16
	st	%r1,124(%r11)
	l	%r1,124(%r11)
	lhi	%r2,-1
	srl	%r2,0(%r1)
	st	%r2,120(%r11)
	l	%r2,100(%r11)
	n	%r2,120(%r11)
	l	%r1,96(%r11)
	n	%r1,120(%r11)
	msr	%r1,%r2
	st	%r1,108(%r11)
	l	%r2,108(%r11)
	l	%r1,124(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,108(%r11)
	n	%r1,120(%r11)
	st	%r1,108(%r11)
	l	%r1,124(%r11)
	l	%r2,100(%r11)
	srl	%r2,0(%r1)
	l	%r1,96(%r11)
	n	%r1,120(%r11)
	msr	%r1,%r2
	a	%r1,116(%r11)
	st	%r1,116(%r11)
	l	%r3,108(%r11)
	l	%r2,116(%r11)
	n	%r2,120(%r11)
	l	%r1,124(%r11)
	sll	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,108(%r11)
	l	%r1,124(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r2
	st	%r1,104(%r11)
	l	%r2,108(%r11)
	l	%r1,124(%r11)
	srl	%r2,0(%r1)
	st	%r2,116(%r11)
	l	%r1,108(%r11)
	n	%r1,120(%r11)
	st	%r1,108(%r11)
	l	%r1,124(%r11)
	l	%r2,96(%r11)
	srl	%r2,0(%r1)
	l	%r1,100(%r11)
	n	%r1,120(%r11)
	msr	%r1,%r2
	a	%r1,116(%r11)
	st	%r1,116(%r11)
	l	%r3,108(%r11)
	l	%r2,116(%r11)
	n	%r2,120(%r11)
	l	%r1,124(%r11)
	sll	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,108(%r11)
	l	%r1,104(%r11)
	lr	%r3,%r1
	l	%r1,124(%r11)
	l	%r2,116(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	ar	%r1,%r2
	st	%r1,104(%r11)
	l	%r1,104(%r11)
	lr	%r4,%r1
	l	%r1,124(%r11)
	l	%r2,100(%r11)
	srl	%r2,0(%r1)
	lr	%r3,%r2
	l	%r1,124(%r11)
	l	%r2,96(%r11)
	srl	%r2,0(%r1)
	lr	%r1,%r3
	msr	%r1,%r2
	ar	%r1,%r4
	st	%r1,104(%r11)
	lm	%r2,%r3,104(%r11)
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-136
	.cfi_def_cfa_offset 232
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	stm	%r4,%r5,96(%r11)
	lm	%r2,%r3,104(%r11)
	stm	%r2,%r3,128(%r11)
	lm	%r2,%r3,96(%r11)
	stm	%r2,%r3,120(%r11)
	l	%r1,132(%r11)
	l	%r2,124(%r11)
	lr	%r3,%r2
	lr	%r2,%r1
	brasl	%r14,__muldsi3
	stm	%r2,%r3,112(%r11)
	l	%r1,112(%r11)
	lr	%r4,%r1
	l	%r1,128(%r11)
	lr	%r2,%r1
	l	%r1,124(%r11)
	msr	%r2,%r1
	l	%r1,132(%r11)
	l	%r3,120(%r11)
	msr	%r1,%r3
	ar	%r1,%r2
	ar	%r1,%r4
	st	%r1,112(%r11)
	lm	%r2,%r3,112(%r11)
	lm	%r11,%r15,180(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,96(%r11)
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L956
	ahi	%r2,-1
.L956:
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,96(%r11)
	stm	%r2,%r3,104(%r11)
	l	%r1,104(%r11)
	lr	%r2,%r1
	l	%r1,108(%r11)
	xr	%r1,%r2
	st	%r1,116(%r11)
	l	%r1,116(%r11)
	srl	%r1,16
	x	%r1,116(%r11)
	st	%r1,116(%r11)
	l	%r1,116(%r11)
	srl	%r1,8
	x	%r1,116(%r11)
	st	%r1,116(%r11)
	l	%r1,116(%r11)
	srl	%r1,4
	x	%r1,116(%r11)
	st	%r1,116(%r11)
	lhi	%r2,15
	n	%r2,116(%r11)
	lhi	%r1,27030
	sra	%r1,0(%r2)
	lhi	%r2,1
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,164(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,16
	x	%r1,108(%r11)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,8
	x	%r1,108(%r11)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,4
	x	%r1,108(%r11)
	st	%r1,108(%r11)
	lhi	%r2,15
	n	%r2,108(%r11)
	lhi	%r1,27030
	sra	%r1,0(%r2)
	lhi	%r2,1
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r8,%r15,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	larl	%r13,.L966
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,96(%r11)
	lm	%r2,%r3,96(%r11)
	stm	%r2,%r3,112(%r11)
	lm	%r2,%r3,112(%r11)
	srdl	%r2,1
	l	%r12,.L967-.L966(%r13)
	nr	%r12,%r2
	lr	%r8,%r12
	l	%r12,.L967-.L966(%r13)
	nr	%r12,%r3
	lr	%r9,%r12
	lm	%r2,%r3,112(%r11)
	slr	%r3,%r9
	slbr	%r2,%r8
	stm	%r2,%r3,112(%r11)
	lm	%r2,%r3,112(%r11)
	srdl	%r2,2
	l	%r12,.L968-.L966(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	l	%r12,.L968-.L966(%r13)
	nr	%r12,%r3
	lr	%r1,%r12
	l	%r2,.L968-.L966(%r13)
	n	%r2,112(%r11)
	lr	%r4,%r2
	l	%r2,.L968-.L966(%r13)
	n	%r2,116(%r11)
	lr	%r5,%r2
	alr	%r1,%r5
	alcr	%r0,%r4
	stm	%r0,%r1,112(%r11)
	lm	%r2,%r3,112(%r11)
	srdl	%r2,4
	al	%r3,116(%r11)
	alc	%r2,112(%r11)
	l	%r1,.L969-.L966(%r13)
	nr	%r1,%r2
	st	%r1,112(%r11)
	l	%r1,.L969-.L966(%r13)
	nr	%r1,%r3
	st	%r1,116(%r11)
	l	%r1,116(%r11)
	lm	%r2,%r3,112(%r11)
	srdl	%r2,32
	lr	%r2,%r3
	ar	%r1,%r2
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,16
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,8
	a	%r1,108(%r11)
	lhi	%r2,127
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r8,%r15,152(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L966:
.L969:
	.long	252645135
.L968:
	.long	858993459
.L967:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L972
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,1
	l	%r2,.L973-.L972(%r5)
	nr	%r2,%r1
	l	%r1,108(%r11)
	sr	%r1,%r2
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,2
	l	%r2,.L974-.L972(%r5)
	nr	%r2,%r1
	l	%r1,.L974-.L972(%r5)
	n	%r1,108(%r11)
	ar	%r2,%r1
	st	%r2,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,4
	a	%r1,108(%r11)
	n	%r1,.L975-.L972(%r5)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,16
	a	%r1,108(%r11)
	st	%r1,108(%r11)
	l	%r1,108(%r11)
	srl	%r1,8
	a	%r1,108(%r11)
	lhi	%r2,63
	nr	%r1,%r2
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L972:
.L975:
	.long	252645135
.L974:
	.long	858993459
.L973:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L986
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	std	%f0,104(%r11)
	st	%r2,100(%r11)
	l	%r1,100(%r11)
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,116(%r11)
	ld	%f0,.L987-.L986(%r5)
	std	%f0,120(%r11)
.L980:
	lhi	%r1,1
	n	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L977
	ld	%f0,120(%r11)
	mdb	%f0,104(%r11)
	std	%f0,120(%r11)
.L977:
	l	%r1,100(%r11)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,100(%r11)
	l	%r1,100(%r11)
	ltr	%r1,%r1
	je	.L985
	ld	%f0,104(%r11)
	mdb	%f0,104(%r11)
	std	%f0,104(%r11)
	j	.L980
.L985:
	nopr	%r0
	l	%r1,116(%r11)
	ltr	%r1,%r1
	je	.L981
	ld	%f0,.L987-.L986(%r5)
	ddb	%f0,120(%r11)
	j	.L983
.L981:
	ld	%f0,120(%r11)
.L983:
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L986:
.L987:
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
	stm	%r11,%r15,44(%r15)
	larl	%r5,.L998
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ste	%f0,100(%r11)
	st	%r2,96(%r11)
	l	%r1,96(%r11)
	srl	%r1,31
	lhi	%r2,255
	nr	%r1,%r2
	st	%r1,104(%r11)
	le	%f0,.L999-.L998(%r5)
	ste	%f0,108(%r11)
.L992:
	lhi	%r1,1
	n	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L989
	le	%f0,108(%r11)
	meeb	%f0,100(%r11)
	ste	%f0,108(%r11)
.L989:
	l	%r1,96(%r11)
	lr	%r2,%r1
	srl	%r2,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,96(%r11)
	l	%r1,96(%r11)
	ltr	%r1,%r1
	je	.L997
	le	%f0,100(%r11)
	meeb	%f0,100(%r11)
	ste	%f0,100(%r11)
	j	.L992
.L997:
	nopr	%r0
	l	%r1,104(%r11)
	ltr	%r1,%r1
	je	.L993
	le	%f0,.L999-.L998(%r5)
	deb	%f0,108(%r11)
	j	.L995
.L993:
	le	%f0,108(%r11)
.L995:
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L998:
.L999:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	stm	%r4,%r5,96(%r11)
	lm	%r2,%r3,104(%r11)
	stm	%r2,%r3,120(%r11)
	lm	%r2,%r3,96(%r11)
	stm	%r2,%r3,112(%r11)
	l	%r1,120(%r11)
	l	%r2,112(%r11)
	clr	%r1,%r2
	jhe	.L1001
	lhi	%r1,0
	j	.L1006
.L1001:
	l	%r1,120(%r11)
	l	%r2,112(%r11)
	clr	%r1,%r2
	jle	.L1003
	lhi	%r1,2
	j	.L1006
.L1003:
	l	%r1,124(%r11)
	l	%r2,116(%r11)
	clr	%r1,%r2
	jhe	.L1004
	lhi	%r1,0
	j	.L1006
.L1004:
	l	%r1,124(%r11)
	l	%r2,116(%r11)
	clr	%r1,%r2
	jle	.L1005
	lhi	%r1,2
	j	.L1006
.L1005:
	lhi	%r1,1
.L1006:
	lr	%r2,%r1
	lm	%r11,%r15,172(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-112
	.cfi_def_cfa_offset 208
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	stm	%r2,%r3,104(%r11)
	stm	%r4,%r5,96(%r11)
	lm	%r2,%r3,104(%r11)
	lm	%r4,%r5,96(%r11)
	brasl	%r14,__ucmpdi2
	lr	%r1,%r2
	ahi	%r1,-1
	lr	%r2,%r1
	lm	%r11,%r15,156(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
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
