	.LEVEL 1.1
	.text
	.align 4
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L2
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L3
.L4:
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo -1(%r28),%r28
	ldo -56(%r30),%r21
	stw %r28,0(%r21)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L3:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L4
	nop
	b,n .L5
.L2:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,=,n %r28,%r19,.L5
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -52(%r30),%r21
	stw %r28,0(%r21)
	b,n .L6
.L7:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 1(%r19),%r20
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	ldo 1(%r28),%r20
	ldo -52(%r30),%r21
	stw %r20,0(%r21)
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L6:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L7
	nop
.L5:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 4
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L10
.L12:
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L10:
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L11
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	comb,<> %r28,%r19,.L12
	nop
.L11:
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L13
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	b,n .L14
.L13:
	ldi 0,%r28
.L14:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 4
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L16
.L18:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L16:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L17
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	comb,<> %r28,%r19,.L18
	nop
.L17:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L21
.L19:
	ldi 0,%r28
.L21:
	nop
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 4
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L23
.L25:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L23:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L24
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comb,= %r28,%r19,.L25
	nop
.L24:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L26
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	sub %r19,%r28,%r28
	b,n .L28
.L26:
	ldi 0,%r28
.L28:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 4
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L30
.L31:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 1(%r19),%r20
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 1(%r28),%r20
	ldo -56(%r30),%r21
	stw %r20,0(%r21)
	ldb 0(%r19),%r19
	extru %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L30:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L31
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 4
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L34
.L36:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	comb,<>,n %r28,%r19,.L34
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	b,n .L35
.L34:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L36
	nop
	ldi 0,%r28
.L35:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 4
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L38
.L39:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L38:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L39
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 4
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L42
.L43:
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L42:
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stb %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L43
	nop
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 4
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L46
.L48:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L46:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,=,n 0,%r28,.L47
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	comb,<> %r28,%r19,.L48
	nop
.L47:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 4
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r30,%r19
	ldo -40(%r19),%r19
	stw %r25,0(%r19)
.L53:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	copy %r30,%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	comb,=,n %r19,%r20,.L54
	copy %r28,%r19
	ldo 1(%r19),%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L53
	nop
	ldi 0,%r28
	b,n .L52
.L54:
	nop
.L52:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 4
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L56
.L58:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L56:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L57
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L58
	nop
.L57:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	sub %r19,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 4
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L61
.L62:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L61:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L62
	nop
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 4
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -56(%r30),%r20
	stw %r19,0(%r20)
	comib,<>,n 0,%r28,.L67
	ldi 0,%r28
	b,n .L66
.L69:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -1(%r28),%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L67:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L68
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L68
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L68
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comb,= %r28,%r19,.L69
	nop
.L68:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	sub %r19,%r28,%r28
.L66:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 4
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L71
.L72:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stb %r19,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	copy %r30,%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 2(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 2(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -2(%r28),%r19
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L71:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,< 1,%r28,.L72
	nop
	nop
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 4
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi -1,26,1,%r28
	ldo -97(%r28),%r19
	ldi 25,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 4
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 127,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 4
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 32,%r28
	comb,=,n %r28,%r19,.L78
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 9,%r28,.L79
.L78:
	ldi 1,%r28
	b,n .L81
.L79:
	ldi 0,%r28
.L81:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 4
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 31,%r28
	comb,>>=,n %r28,%r19,.L83
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 127,%r28
	comb,<>,n %r28,%r19,.L84
.L83:
	ldi 1,%r28
	b,n .L86
.L84:
	ldi 0,%r28
.L86:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 4
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 4
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -33(%r28),%r19
	ldi 93,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 4
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -97(%r28),%r19
	ldi 25,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 4
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -32(%r28),%r19
	ldi 94,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 4
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 32,%r28
	comb,=,n %r28,%r19,.L96
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -9(%r28),%r28
	comib,<<,n 4,%r28,.L97
.L96:
	ldi 1,%r28
	b,n .L99
.L97:
	ldi 0,%r28
.L99:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 4
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -65(%r28),%r19
	ldi 25,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 4
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 31,%r28
	comb,>>=,n %r28,%r19,.L103
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -127(%r28),%r19
	ldi 32,%r28
	comb,>>=,n %r28,%r19,.L103
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-16384,%r28
	ldo 8152(%r28),%r28
	addl %r19,%r28,%r28
	comib,>>=,n 1,%r28,.L103
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-65536,%r28
	ldo 7(%r28),%r28
	addl %r19,%r28,%r28
	comib,<<,n 2,%r28,.L104
.L103:
	ldi 1,%r28
	b,n .L106
.L104:
	ldi 0,%r28
.L106:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 4
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 4
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 254,%r28
	comb,<<,n %r28,%r19,.L110
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	extru %r28,31,7,%r19
	ldi 32,%r28
	comclr,>>= %r28,%r19,%r28
	ldi 1,%r28
	b,n .L111
.L110:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'16384,%r28
	ldo -8153(%r28),%r28
	comb,>>=,n %r28,%r19,.L112
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-16384,%r28
	ldo 8150(%r28),%r28
	addl %r19,%r28,%r19
	ldil L'49152,%r28
	ldo -2091(%r28),%r28
	comb,>>=,n %r28,%r19,.L112
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-57344,%r28
	addl %r19,%r28,%r19
	ldi 8184,%r28
	comb,<<,n %r28,%r19,.L113
.L112:
	ldi 1,%r28
	b,n .L111
.L113:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-65536,%r28
	ldo 4(%r28),%r28
	addl %r19,%r28,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L114
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	zdepi -1,30,15,%r28
	and %r19,%r28,%r19
	zdepi -1,30,15,%r28
	comb,<>,n %r28,%r19,.L115
.L114:
	ldi 0,%r28
	b,n .L111
.L115:
	ldi 1,%r28
.L111:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 4
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	comib,>>=,n 9,%r28,.L117
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi -1,26,1,%r28
	ldo -97(%r28),%r28
	comib,<<,n 5,%r28,.L118
.L117:
	ldi 1,%r28
	b,n .L120
.L118:
	ldi 0,%r28
.L120:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 4
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,7,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.align 4
.globl fdim
	.type	fdim, @function
fdim:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L124
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L125
.L124:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L126
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L125
.L126:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L130
	b,n .L131
.L130:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fsub,dbl %fr23,%fr22,%fr22
	b,n .L125
.L131:
	fcpy,dbl %fr0,%fr22
.L125:
	fcpy,dbl %fr22,%fr4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.align 4
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r30),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L133
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	b,n .L134
.L133:
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L135
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	b,n .L134
.L135:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!> %fr23L,%fr22L
	ftest
	b,n .L139
	b,n .L140
.L139:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fsub,sgl %fr23L,%fr22L,%fr22L
	b,n .L134
.L140:
	fcpy,sgl %fr0,%fr22L
.L134:
	fcpy,sgl %fr22L,%fr4L
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 4
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L142
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L143
.L142:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L144
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L143
.L144:
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	copy %r30,%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L145
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L146
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L143
.L146:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L143
.L145:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L151
	b,n .L152
.L151:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L143
.L152:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
.L143:
	fcpy,dbl %fr22,%fr4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 4
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r30),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L154
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	b,n .L155
.L154:
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L156
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	b,n .L155
.L156:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L157
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L158
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	b,n .L155
.L158:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	b,n .L155
.L157:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L163
	b,n .L164
.L163:
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	b,n .L155
.L164:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
.L155:
	fcpy,sgl %fr22L,%fr4L
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 4
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L166
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L167
.L166:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L168
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L167
.L168:
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	copy %r30,%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L169
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L170
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L167
.L170:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L167
.L169:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L175
	b,n .L176
.L175:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L167
.L176:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
.L167:
	fcpy,dbl %fr22,%fr4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 4
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L178
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L179
.L178:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L180
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L179
.L180:
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	copy %r30,%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L181
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L182
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L179
.L182:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L179
.L181:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L187
	b,n .L188
.L187:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L179
.L188:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
.L179:
	fcpy,dbl %fr22,%fr4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 4
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r30),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L190
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	b,n .L191
.L190:
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L192
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	b,n .L191
.L192:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L193
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L194
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	b,n .L191
.L194:
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	b,n .L191
.L193:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L199
	b,n .L200
.L199:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	b,n .L191
.L200:
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
.L191:
	fcpy,sgl %fr22L,%fr4L
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 4
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L202
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L203
.L202:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L204
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L203
.L204:
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	copy %r30,%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L205
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L206
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L203
.L206:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	b,n .L203
.L205:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L211
	b,n .L212
.L211:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	b,n .L203
.L212:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
.L203:
	fcpy,dbl %fr22,%fr4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.section	.rodata
	.align 4
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align 4
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -52(%r30),%r1
	stw %r28,0(%r1)
	addil LR's.0-$global$,%r27
	copy %r1,%r28
	ldo RR's.0-$global$(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L214
.L215:
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,31,6,%r28
	ldil LR'digits,%r19
	ldo RR'digits(%r19),%r19
	ldbx %r19(%r28),%r28
	extrs %r28,31,8,%r19
	ldo -56(%r30),%r1
	ldw 0(%r1),%r28
	stb %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
	ldo -52(%r30),%r1
	ldw 0(%r1),%r28
	extru %r28,25,26,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L214:
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	comib,<> 0,%r28,.L215
	nop
	ldo -56(%r30),%r1
	ldw 0(%r1),%r28
	stb %r0,0(%r28)
	addil LR's.0-$global$,%r27
	copy %r1,%r28
	ldo RR's.0-$global$(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align 4
.globl srand
	.type	srand, @function
srand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r28
	copy %r28,%r19
	ldi 0,%r20
	addil LR'seed-$global$,%r27
	copy %r1,%r28
	ldo RR'seed-$global$(%r28),%r28
	stw %r20,0(%r28)
	stw %r19,4(%r28)
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 4
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LR'seed-$global$,%r27
	copy %r1,%r19
	ldo RR'seed-$global$(%r19),%r19
	ldw 0(%r19),%r21
	ldw 4(%r19),%r22
	ldil L'1284865837,%r20
	ldil L'1481765933,%r19
	ldo R'1481765933(%r19),%r19
	ldo R'1284865837(%r20),%r20
	stws %r22,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r21,-16(%sp)
	fldws -16(%sp),%fr25L
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr25L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	xmpyu %fr24L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	xmpyu %fr23L,%fr22L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r24,%r22,%r21
	copy %r20,%r29
	addl %r19,%r21,%r28
	addi 1,%r29,%r29
	addc %r28,%r0,%r28
	addil LR'seed-$global$,%r27
	copy %r1,%r19
	ldo RR'seed-$global$(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	addil LR'seed-$global$,%r27
	copy %r1,%r28
	ldo RR'seed-$global$(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 4
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L221
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r0,4(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 4(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r19,0(%r28)
	b,n .L220
.L221:
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r30,%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,4(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	copy %r30,%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L220
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	copy %r30,%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,4(%r28)
.L220:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 4
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L224
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	copy %r30,%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	ldw 4(%r19),%r19
	stw %r19,4(%r28)
.L224:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 4(%r28),%r28
	comib,=,n 0,%r28,.L226
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 4(%r28),%r28
	copy %r30,%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L226:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 4
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	ldo -104(%r30),%r1
	fstds,ma %fr12,8(%r1)
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -128(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	fldws 0(%r28),%fr12L
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r19
	ldo -1(%r19),%r28
	ldo -116(%r30),%r19
	stw %r28,0(%r19)
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	ldi 0,%r19
	shd %r19,%r28,29,%r19
	zdep %r28,28,29,%r28
	ldo -128(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	stw %r0,0(%r28)
	b,n .L228
.L231:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r19
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr12L,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -128(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r20
	ldo -160(%r30),%r28
	ldo -20(%r28),%r28
	ldw 0(%r28),%r19
	copy %r20,%r25
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<>,n 0,%r28,.L229
	ldo -120(%r30),%r19
	ldw 0(%r19),%r19
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr12L,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -128(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	b,n .L230
.L229:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
.L228:
	ldo -120(%r30),%r28
	ldw 0(%r28),%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L231
	nop
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -128(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	stw %r19,0(%r28)
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr12L,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -128(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r24
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r25
	copy %r19,%r26
	bl memcpy,%r2
	nop
.L230:
	ldw -148(%r30),%r2
	ldo -104(%r30),%r1
	fldds,ma 8(%r1),%fr12
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 4
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	stw %r3,-108(%r30)
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -128(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r3
	ldo -1(%r3),%r28
	ldo -116(%r30),%r19
	stw %r28,0(%r19)
	copy %r3,%r28
	ldi 0,%r19
	shd %r19,%r28,29,%r19
	zdep %r28,28,29,%r28
	ldo -128(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	stw %r0,0(%r28)
	b,n .L233
.L236:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r19
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -128(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r20
	ldo -160(%r30),%r28
	ldo -20(%r28),%r28
	ldw 0(%r28),%r19
	copy %r20,%r25
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<>,n 0,%r28,.L234
	ldo -120(%r30),%r19
	ldw 0(%r19),%r19
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -128(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	b,n .L235
.L234:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
.L233:
	ldo -120(%r30),%r28
	ldw 0(%r28),%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L236
	nop
	ldi 0,%r28
.L235:
	ldw -148(%r30),%r2
	ldw -108(%r30),%r3
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 4
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 4
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	ldo -52(%r30),%r28
	stw %r0,0(%r28)
	b,n .L240
.L241:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L240:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L241
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L242
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L244
	ldi 1,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L242:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	b,n .L244
.L245:
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	copy %r19,%r28
	zdep %r28,29,30,%r28
	addl %r28,%r19,%r28
	zdep %r28,30,31,%r28
	copy %r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r21
	ldo -64(%r30),%r20
	ldo -36(%r20),%r20
	stw %r21,0(%r20)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	sub %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L244:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	comib,>>= 9,%r28,.L245
	nop
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	comib,<>,n 0,%r28,.L246
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	sub %r0,%r28,%r28
	b,n .L248
.L246:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
.L248:
	nop
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 4
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	ldo -52(%r30),%r28
	stw %r0,0(%r28)
	b,n .L250
.L251:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L250:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L251
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L252
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L254
	ldi 1,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L252:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	b,n .L254
.L255:
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	copy %r19,%r28
	zdep %r28,29,30,%r28
	addl %r28,%r19,%r28
	zdep %r28,30,31,%r28
	copy %r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r21
	ldo -64(%r30),%r20
	ldo -36(%r20),%r20
	stw %r21,0(%r20)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	sub %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L254:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	comib,>>= 9,%r28,.L255
	nop
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	comib,<>,n 0,%r28,.L256
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	sub %r0,%r28,%r28
	b,n .L258
.L256:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
.L258:
	nop
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 4
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldi 0,%r28
	ldi 0,%r29
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	stw %r0,0(%r28)
	b,n .L260
.L261:
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L260:
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L261
	nop
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L262
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L264
	ldi 1,%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
.L262:
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	b,n .L264
.L265:
	ldo -120(%r30),%r21
	ldw 0(%r21),%r19
	ldw 4(%r21),%r20
	copy %r19,%r28
	copy %r20,%r29
	shd %r28,%r29,30,%r22
	copy %r29,%r21
	zdep %r21,29,30,%r21
	copy %r22,%r28
	copy %r21,%r29
	add %r20,%r29,%r29
	addc %r19,%r28,%r28
	shd %r28,%r29,31,%r20
	copy %r29,%r19
	zdep %r19,30,31,%r19
	copy %r20,%r28
	copy %r19,%r29
	copy %r28,%r19
	copy %r29,%r20
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r22
	ldo -128(%r30),%r21
	ldo -36(%r21),%r21
	stw %r22,0(%r21)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	copy %r28,%r29
	copy %r29,%r4
	extrs %r28,0,1,%r28
	copy %r28,%r3
	sub %r20,%r4,%r29
	subb %r19,%r3,%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
.L264:
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	comib,>>= 9,%r28,.L265
	nop
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L266
	ldo -120(%r30),%r21
	ldw 0(%r21),%r28
	ldw 4(%r21),%r29
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
	b,n .L268
.L266:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	ldw 4(%r19),%r29
.L268:
	nop
	ldw -148(%r30),%r2
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 4
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	b,n .L270
.L275:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -96(%r30),%r28
	ldo -20(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r28
	ldw 0(%r28),%r25
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	comib,<=,n 0,%r28,.L271
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	b,n .L270
.L271:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	comib,>=,n 0,%r28,.L273
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	sub %r19,%r28,%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	b,n .L270
.L273:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	b,n .L274
.L270:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L275
	nop
	ldi 0,%r28
.L274:
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 4
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -128(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo -128(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	b,n .L277
.L281:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	extrs %r28,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -128(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldo -116(%r30),%r19
	stw %r28,0(%r19)
	ldo -160(%r30),%r28
	ldo -24(%r28),%r28
	ldo -160(%r30),%r19
	ldo -20(%r19),%r19
	ldw 0(%r19),%r19
	ldw 0(%r28),%r24
	ldo -116(%r30),%r28
	ldw 0(%r28),%r25
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	ldo -128(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L278
	ldo -116(%r30),%r19
	ldw 0(%r19),%r28
	b,n .L279
.L278:
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comib,>=,n 0,%r28,.L280
	ldo -116(%r30),%r28
	ldw 0(%r28),%r19
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	ldo -1(%r28),%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
.L280:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	extrs %r28,30,31,%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
.L277:
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	comib,<> 0,%r28,.L281
	nop
	ldi 0,%r28
.L279:
	ldw -148(%r30),%r2
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 4
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	copy %r29,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	.IMPORT $$remI,MILLICODE
	bl $$remI,%r31
	nop
	copy %r29,%r28
	ldo -56(%r30),%r20
	stw %r19,0(%r20)
	ldo -52(%r30),%r1
	stw %r28,0(%r1)
	ldi 0,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldi 0,%r28
	ldo -52(%r30),%r1
	ldw 0(%r1),%r28
	copy %r19,%r20
	copy %r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 4
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r21
	ldo -40(%r21),%r21
	stw %r25,0(%r21)
	stw %r26,4(%r21)
	copy %r30,%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r29
	copy %r30,%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r28
	copy %r30,%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r28,%r19
	copy %r30,%r21
	ldo -36(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r29,%r20
	sub %r20,%r29,%r20
	subb %r19,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 4
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	stw %r2,-20(%r30)
	ldo 192(%r30),%r30
	stw %r5,-168(%r30)
	stw %r4,-164(%r30)
	stw %r3,-160(%r30)
	copy %r28,%r3
	ldo -192(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -192(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo -192(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r23
	ldw 4(%r28),%r24
	ldo -192(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __divdi3,%r2
	nop
	copy %r28,%r19
	copy %r29,%r28
	copy %r19,%r5
	copy %r28,%r4
	ldo -192(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -192(%r30),%r19
	ldo -48(%r19),%r19
	ldw 0(%r19),%r23
	ldw 4(%r19),%r24
	copy %r28,%r25
	copy %r29,%r26
	bl __moddi3,%r2
	nop
	copy %r28,%r19
	copy %r29,%r28
	stw %r5,0(%r3)
	stw %r4,4(%r3)
	stw %r19,8(%r3)
	stw %r28,12(%r3)
	copy %r3,%r28
	ldw -212(%r30),%r2
	ldw -168(%r30),%r5
	ldw -164(%r30),%r4
	ldw -160(%r30),%r3
	ldo -192(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 4
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 4
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	bl $$divI,%r31
	nop
	copy %r29,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	bl $$remI,%r31
	nop
	copy %r29,%r28
	ldo -56(%r30),%r20
	stw %r19,0(%r20)
	ldo -52(%r30),%r1
	stw %r28,0(%r1)
	ldi 0,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldi 0,%r28
	ldo -52(%r30),%r1
	ldw 0(%r1),%r28
	copy %r19,%r20
	copy %r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 4
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r21
	ldo -40(%r21),%r21
	stw %r25,0(%r21)
	stw %r26,4(%r21)
	copy %r30,%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r29
	copy %r30,%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r28
	copy %r30,%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r28,%r19
	copy %r30,%r21
	ldo -36(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r29,%r20
	sub %r20,%r29,%r20
	subb %r19,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 4
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	stw %r2,-20(%r30)
	ldo 192(%r30),%r30
	stw %r5,-168(%r30)
	stw %r4,-164(%r30)
	stw %r3,-160(%r30)
	copy %r28,%r3
	ldo -192(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -192(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo -192(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r23
	ldw 4(%r28),%r24
	ldo -192(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __divdi3,%r2
	nop
	copy %r28,%r19
	copy %r29,%r28
	copy %r19,%r5
	copy %r28,%r4
	ldo -192(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -192(%r30),%r19
	ldo -48(%r19),%r19
	ldw 0(%r19),%r23
	ldw 4(%r19),%r24
	copy %r28,%r25
	copy %r29,%r26
	bl __moddi3,%r2
	nop
	copy %r28,%r19
	copy %r29,%r28
	stw %r5,0(%r3)
	stw %r4,4(%r3)
	stw %r19,8(%r3)
	stw %r28,12(%r3)
	copy %r3,%r28
	ldw -212(%r30),%r2
	ldw -168(%r30),%r5
	ldw -164(%r30),%r4
	ldw -160(%r30),%r3
	ldo -192(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 4
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L297
.L299:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L297:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L298
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	copy %r30,%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	comb,<> %r28,%r19,.L299
	nop
.L298:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L300
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L302
.L300:
	ldi 0,%r28
.L302:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 4
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L304
.L306:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L304:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,<>,n %r28,%r19,.L305
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L305
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L306
	nop
.L305:
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,>,n %r28,%r19,.L307
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comclr,>= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	b,n .L309
.L307:
	ldi -1,%r28
.L309:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 4
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L311:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 4(%r19),%r20
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 4(%r28),%r20
	ldo -56(%r30),%r21
	stw %r20,0(%r21)
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L311
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 4
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L314
.L315:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 4(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L314:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L315
	nop
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r28
	extrs %r28,29,30,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 4
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L318
.L320:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L318:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L319
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,<>,n %r28,%r19,.L319
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L319
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L320
	nop
.L319:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L321
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,>,n %r28,%r19,.L322
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comclr,>= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	b,n .L325
.L322:
	ldi -1,%r28
	b,n .L325
.L321:
	ldi 0,%r28
.L325:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 4
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L327
.L329:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L327:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L328
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	copy %r30,%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	comb,<> %r28,%r19,.L329
	nop
.L328:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L330
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L332
.L330:
	ldi 0,%r28
.L332:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 4
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L334
.L336:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L334:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L335
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,= %r28,%r19,.L336
	nop
.L335:
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L337
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,>,n %r28,%r19,.L338
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comclr,>= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	b,n .L341
.L338:
	ldi -1,%r28
	b,n .L341
.L337:
	ldi 0,%r28
.L341:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 4
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L343
.L344:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 4(%r19),%r20
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 4(%r28),%r20
	ldo -56(%r30),%r21
	stw %r20,0(%r21)
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L343:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L344
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 4
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,<>,n %r28,%r19,.L347
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L348
.L347:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,29,30,%r28
	comb,<<=,n %r28,%r19,.L349
	b,n .L350
.L351:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,29,30,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	ldo -64(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	zdep %r19,29,30,%r19
	addl %r20,%r19,%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L350:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L351
	nop
	b,n .L352
.L349:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L353
.L354:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 4(%r19),%r20
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 4(%r28),%r20
	ldo -56(%r30),%r21
	stw %r20,0(%r21)
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L353:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L354
	nop
.L352:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
.L348:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 4
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L356
.L357:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 4(%r28),%r19
	ldo -56(%r30),%r20
	stw %r19,0(%r20)
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L356:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L357
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 4
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L360
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -52(%r30),%r20
	stw %r28,0(%r20)
	b,n .L361
.L362:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -1(%r28),%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldo -1(%r28),%r28
	ldo -52(%r30),%r20
	stw %r28,0(%r20)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L361:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L362
	nop
	b,n .L366
.L360:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,=,n %r28,%r19,.L366
	b,n .L364
.L365:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 1(%r19),%r20
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r20,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r21
	ldo -64(%r30),%r20
	ldo -40(%r20),%r20
	stw %r21,0(%r20)
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L364:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L365
	nop
.L366:
	nop
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 4
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r20
	ldw 4(%r28),%r19
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r21
	ldi 32,%r28
	and %r21,%r28,%r28
	comib,=,n 0,%r28,.L368
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r28
	ldi 0,%r22
	b,n .L369
.L368:
	extru %r19,30,31,%r21
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	uaddcm %r0,%r28,%r28
	mtsar %r28
	vshd %r0,%r21,%r21
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	or %r21,%r28,%r28
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r19,32,%r22
.L369:
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	ldi 32,%r31
	and %r21,%r31,%r21
	comib,=,n 0,%r21,.L370
	copy %r30,%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	sub %r0,%r19,%r19
	extru %r19,31,6,%r19
	mtsar %r19
	vshd %r0,%r20,%r19
	ldi 0,%r20
	b,n .L371
.L370:
	copy %r20,%r21
	zdep %r21,30,31,%r31
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	uaddcm %r0,%r21,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r31,32,%r31
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	mtsar %r21
	vshd %r0,%r19,%r19
	or %r31,%r19,%r19
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	mtsar %r21
	vshd %r0,%r20,%r20
.L371:
	or %r20,%r28,%r20
	or %r19,%r22,%r28
	copy %r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 4
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	copy %r30,%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r19
	ldw 0(%r19),%r28
	ldw 4(%r19),%r20
	copy %r30,%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r21
	ldi 32,%r19
	and %r21,%r19,%r19
	comib,=,n 0,%r19,.L374
	copy %r30,%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	mtsar %r19
	vshd %r0,%r28,%r19
	ldi 0,%r22
	b,n .L375
.L374:
	copy %r28,%r19
	zdep %r19,30,31,%r21
	copy %r30,%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	uaddcm %r0,%r19,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r21,32,%r21
	copy %r30,%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	mtsar %r19
	vshd %r0,%r20,%r19
	or %r21,%r19,%r19
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	mtsar %r21
	vshd %r0,%r28,%r22
.L375:
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	ldi 32,%r31
	and %r21,%r31,%r21
	comib,=,n 0,%r21,.L376
	copy %r30,%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r28
	extru %r28,31,6,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	ldi 0,%r20
	b,n .L377
.L376:
	extru %r20,30,31,%r31
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	uaddcm %r0,%r21,%r21
	mtsar %r21
	vshd %r0,%r31,%r31
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r28,32,%r28
	or %r31,%r28,%r28
	copy %r30,%r21
	ldo -44(%r21),%r21
	ldw 0(%r21),%r21
	sub %r0,%r21,%r21
	extru %r21,31,6,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r20,32,%r20
.L377:
	or %r28,%r22,%r28
	or %r20,%r19,%r19
	copy %r19,%r20
	copy %r20,%r29
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 4
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 32,%r28,%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 4
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 4
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 32,%r28,%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 4
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 4
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	sth %r28,-36(%r30)
	ldh -36(%r30),%r28
	extru %r28,31,16,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r28
	extru %r28,31,16,%r19
	ldh -36(%r30),%r28
	extru %r28,31,16,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 16,%r28,%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	extru %r28,31,16,%r28
	or %r19,%r28,%r28
	extru %r28,31,16,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 4
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	sth %r28,-36(%r30)
	ldh -36(%r30),%r28
	extru %r28,31,16,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	extru %r28,31,16,%r19
	ldh -36(%r30),%r28
	extru %r28,31,16,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 16,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	extru %r28,31,16,%r28
	or %r19,%r28,%r28
	extru %r28,31,16,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 4
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	stb %r28,-36(%r30)
	ldb -36(%r30),%r28
	extru %r28,31,8,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r28
	extru %r28,31,8,%r19
	ldb -36(%r30),%r28
	extru %r28,31,8,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 8,%r28,%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	extru %r28,31,8,%r28
	or %r19,%r28,%r28
	extru %r28,31,8,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 4
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	stb %r28,-36(%r30)
	ldb -36(%r30),%r28
	extru %r28,31,8,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	extru %r28,31,8,%r19
	ldb -36(%r30),%r28
	extru %r28,31,8,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 8,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	extru %r28,31,8,%r28
	or %r19,%r28,%r28
	extru %r28,31,8,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 4
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r28
	sth %r28,-100(%r30)
	ldi 255,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	zdep %r28,23,24,%r28
	ldh -100(%r30),%r19
	extru %r19,31,16,%r19
	and %r19,%r28,%r28
	extru %r28,23,24,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldh -100(%r30),%r20
	and %r20,%r19,%r19
	extru %r19,31,16,%r19
	zdep %r19,23,24,%r19
	extru %r19,31,16,%r19
	or %r19,%r28,%r28
	extru %r28,31,16,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 4
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldi 255,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	zdep %r28,7,8,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	and %r19,%r28,%r28
	extru %r28,7,8,%r19
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	zdep %r28,15,16,%r20
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	and %r20,%r28,%r28
	extru %r28,23,24,%r28
	or %r19,%r28,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	zdep %r28,23,24,%r20
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	and %r20,%r28,%r28
	zdep %r28,23,24,%r28
	or %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r20
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	and %r20,%r28,%r28
	zdep %r28,7,8,%r28
	or %r19,%r28,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 4
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldi 0,%r28
	ldi 255,%r29
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	zdep %r28,7,8,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	and %r19,%r28,%r28
	extru %r28,7,8,%r19
	ldi 0,%r21
	ldo -52(%r30),%r22
	ldw 0(%r22),%r28
	zdep %r28,15,16,%r28
	ldo -64(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	and %r20,%r28,%r28
	extru %r28,23,24,%r28
	ldi 0,%r20
	or %r21,%r20,%r21
	or %r19,%r28,%r20
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	zdep %r28,23,24,%r19
	ldi 0,%r28
	ldo -64(%r30),%r22
	ldo -40(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r19,%r19
	ldo -64(%r30),%r22
	ldo -36(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r28,%r28
	copy %r19,%r22
	zdep %r22,23,24,%r22
	extru %r28,7,8,%r28
	or %r22,%r28,%r28
	extru %r19,7,8,%r19
	or %r21,%r19,%r21
	or %r20,%r28,%r20
	ldo -52(%r30),%r22
	ldw 0(%r22),%r28
	zdep %r28,31,32,%r19
	ldi 0,%r28
	ldo -64(%r30),%r22
	ldo -40(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r19,%r19
	ldo -64(%r30),%r22
	ldo -36(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r28,%r28
	copy %r19,%r22
	zdep %r22,7,8,%r22
	extru %r28,23,24,%r28
	or %r22,%r28,%r28
	extru %r19,23,24,%r19
	or %r21,%r19,%r21
	or %r20,%r28,%r19
	ldo -56(%r30),%r28
	ldw 0(%r28),%r20
	ldo -52(%r30),%r22
	ldw 0(%r22),%r28
	shd %r20,%r28,8,%r20
	zdep %r28,7,8,%r28
	ldo -64(%r30),%r22
	ldo -40(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r20,%r20
	ldo -64(%r30),%r22
	ldo -36(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r28,%r28
	shd %r20,%r28,24,%r20
	zdep %r28,23,24,%r28
	or %r21,%r20,%r21
	or %r19,%r28,%r19
	ldo -56(%r30),%r28
	ldw 0(%r28),%r20
	ldo -52(%r30),%r22
	ldw 0(%r22),%r28
	shd %r20,%r28,16,%r20
	zdep %r28,15,16,%r28
	ldo -64(%r30),%r22
	ldo -40(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r20,%r20
	ldo -64(%r30),%r22
	ldo -36(%r22),%r22
	ldw 0(%r22),%r22
	and %r22,%r28,%r28
	shd %r20,%r28,8,%r20
	zdep %r28,7,8,%r28
	or %r21,%r20,%r21
	or %r19,%r28,%r19
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	zdep %r28,23,24,%r28
	ldo -64(%r30),%r20
	ldo -36(%r20),%r20
	ldw 0(%r20),%r20
	and %r20,%r28,%r28
	zdep %r28,23,24,%r20
	ldi 0,%r28
	or %r21,%r20,%r21
	or %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r20
	ldo -52(%r30),%r22
	ldw 0(%r22),%r28
	and %r20,%r28,%r28
	zdep %r28,7,8,%r20
	ldi 0,%r28
	or %r21,%r20,%r20
	or %r19,%r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 4
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	b,n .L402
.L405:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L403
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	b,n .L404
.L403:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L402:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldi 31,%r28
	comb,>>= %r28,%r19,.L405
	nop
	ldi 0,%r28
.L404:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 4
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,ENTRY_GR=3
	.ENTRY
	stwm %r3,64(%r30)
	copy %r26,%r28
	comib,<>,n 0,%r28,.L407
	ldi 0,%r3
	b,n .L408
.L407:
	ldi 1,%r3
	b,n .L409
.L410:
	extrs %r28,30,31,%r28
	ldo 1(%r3),%r3
.L409:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L410
	nop
	nop
.L408:
	copy %r3,%r28
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.word	-8388609
	.align 4
.LC1:
	.word	2139095039
	.text
	.align 4
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldil LR'.LC0,%r28
	ldo RR'.LC0(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L412
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldil LR'.LC1,%r28
	ldo RR'.LC1(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!> %fr23L,%fr22L
	ftest
	b,n .L412
	b,n .L417
.L412:
	ldi 1,%r28
	b,n .L416
.L417:
	ldi 0,%r28
.L416:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.word	-1048577
	.word	-1
	.align 8
.LC3:
	.word	2146435071
	.word	-1
	.text
	.align 4
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC2,%r28
	ldo RR'.LC2(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L419
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC3,%r28
	ldo RR'.LC3(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L419
	b,n .L424
.L419:
	ldi 1,%r28
	b,n .L423
.L424:
	ldi 0,%r28
.L423:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst8
	.align 8
.LC4:
	.word	-1048577
	.word	-1
	.align 8
.LC5:
	.word	2146435071
	.word	-1
	.text
	.align 4
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC4,%r28
	ldo RR'.LC4(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L426
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC5,%r28
	ldo RR'.LC5(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L426
	b,n .L431
.L426:
	ldi 1,%r28
	b,n .L430
.L431:
	ldi 0,%r28
.L430:
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 4
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	fldws 0(%r28),%fr22L
	fcnvxf,sgl,dbl %fr22L,%fr22
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	fstds %fr22,0(%r28)
	nop
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC6:
	.word	1056964608
	.align 4
.LC7:
	.word	1073741824
	.text
	.align 4
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -96(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,!? %fr23L,%fr22L
	ftest
	b,n .L434
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr22L
	fadd,sgl %fr22L,%fr22L,%fr22L
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr23L
	fcmp,sgl,!= %fr23L,%fr22L
	ftest
	b,n .L434
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L435
	ldil LR'.LC6,%r28
	ldo RR'.LC6(%r28),%r28
	fldws 0(%r28),%fr22L
	b,n .L436
.L435:
	ldil LR'.LC7,%r28
	ldo RR'.LC7(%r28),%r28
	fldws 0(%r28),%fr22L
.L436:
	fstws %fr22L,-16(%sp)
	ldws -16(%sp),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L439:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L437
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -56(%r30),%r19
	fldws 0(%r19),%fr22L
	fmpy,sgl %fr23L,%fr22L,%fr22L
	ldo -96(%r30),%r28
	fstws %fr22L,-4(%r28)
.L437:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L441
	ldo -56(%r30),%r19
	fldws 0(%r19),%fr22L
	fmpy,sgl %fr22L,%fr22L,%fr22L
	fstws %fr22L,-16(%sp)
	ldws -16(%sp),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L439
.L441:
	nop
.L434:
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr22L
	fcpy,sgl %fr22L,%fr4L
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC8:
	.word	1071644672
	.word	0
	.align 8
.LC9:
	.word	1073741824
	.word	0
	.text
	.align 4
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -96(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!? %fr23,%fr22
	ftest
	b,n .L443
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	fcmp,dbl,!= %fr23,%fr22
	ftest
	b,n .L443
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L444
	ldil LR'.LC8,%r28
	ldo RR'.LC8(%r28),%r28
	fldds 0(%r28),%fr22
	b,n .L445
.L444:
	ldil LR'.LC9,%r28
	ldo RR'.LC9(%r28),%r28
	fldds 0(%r28),%fr22
.L445:
	fcpy,dbl %fr22,%fr23
	ldo -56(%r30),%r19
	fstds %fr23,0(%r19)
.L448:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L446
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -56(%r30),%r19
	fldds 0(%r19),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	ldo -96(%r30),%r28
	fstds %fr22,-8(%r28)
.L446:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L450
	ldo -56(%r30),%r19
	fldds 0(%r19),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fcpy,dbl %fr22,%fr23
	ldo -56(%r30),%r19
	fstds %fr23,0(%r19)
	b,n .L448
.L450:
	nop
.L443:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
	.align 8
.LC10:
	.word	1071644672
	.word	0
	.align 8
.LC11:
	.word	1073741824
	.word	0
	.text
	.align 4
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -96(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!? %fr23,%fr22
	ftest
	b,n .L452
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	fcmp,dbl,!= %fr23,%fr22
	ftest
	b,n .L452
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L453
	ldil LR'.LC10,%r28
	ldo RR'.LC10(%r28),%r28
	fldds 0(%r28),%fr22
	b,n .L454
.L453:
	ldil LR'.LC11,%r28
	ldo RR'.LC11(%r28),%r28
	fldds 0(%r28),%fr22
.L454:
	fcpy,dbl %fr22,%fr23
	ldo -56(%r30),%r19
	fstds %fr23,0(%r19)
.L457:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L455
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -56(%r30),%r19
	fldds 0(%r19),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	ldo -96(%r30),%r28
	fstds %fr22,-8(%r28)
.L455:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L459
	ldo -56(%r30),%r19
	fldds 0(%r19),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fcpy,dbl %fr22,%fr23
	ldo -56(%r30),%r19
	fstds %fr23,0(%r19)
	b,n .L457
.L459:
	nop
.L452:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 4
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L461
.L462:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	stw %r20,0(%r19)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r20
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	ldo 1(%r28),%r19
	ldo -56(%r30),%r21
	stw %r19,0(%r21)
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	xor %r20,%r19,%r19
	stb %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L461:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L462
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 4
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	bl strlen,%r2
	nop
	copy %r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	addl %r28,%r19,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L465
.L467:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L465:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L466
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	stb %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L467
	nop
.L466:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L468
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	stb %r0,0(%r28)
.L468:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 4
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	b,n .L471
.L476:
	nop
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L471:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L472
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	addl %r19,%r28,%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L476
	nop
.L472:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 4
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L478
.L482:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	b,n .L479
.L481:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo 1(%r28),%r19
	ldo -56(%r30),%r20
	stw %r19,0(%r20)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L479
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L480
.L479:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L481
	nop
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L478:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L482
	nop
	ldi 0,%r28
.L480:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 4
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	stw %r25,0(%r19)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
.L485:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	ldo -64(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	comb,<>,n %r19,%r20,.L484
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L484:
	copy %r28,%r19
	ldo 1(%r19),%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L485
	nop
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 4
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r26
	bl strlen,%r2
	nop
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,<>,n 0,%r28,.L490
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L489
.L492:
	ldo -56(%r30),%r28
	ldw 0(%r28),%r24
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldo -52(%r30),%r19
	ldw 0(%r19),%r26
	bl strncmp,%r2
	nop
	comib,<>,n 0,%r28,.L491
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	b,n .L489
.L491:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L490:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r25
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	bl strchr,%r2
	nop
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	comib,<> 0,%r28,.L492
	nop
	ldi 0,%r28
.L489:
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 4
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L501
	b,n .L494
.L501:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L496
.L494:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L502
	b,n .L497
.L502:
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L496
	b,n .L497
.L496:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	b,n .L500
.L497:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr22
.L500:
	fcpy,dbl %fr22,%fr4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 4
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L504
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L505
.L504:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comclr,<<= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L507
	ldi 0,%r28
	b,n .L505
.L509:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L508
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	copy %r20,%r24
	copy %r28,%r25
	copy %r19,%r26
	bl memcmp,%r2
	nop
	comib,<>,n 0,%r28,.L508
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L505
.L508:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L507:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	comb,>>= %r28,%r19,.L509
	nop
	ldi 0,%r28
.L505:
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 4
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r24
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	bl memcpy,%r2
	nop
	copy %r28,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC12:
	.word	1072693248
	.word	0
	.align 8
.LC13:
	.word	1073741824
	.word	0
	.align 8
.LC14:
	.word	1071644672
	.word	0
	.text
	.align 4
.globl frexp
	.type	frexp, @function
frexp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -96(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -52(%r30),%r19
	stw %r0,0(%r19)
	ldo -56(%r30),%r20
	stw %r0,0(%r20)
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L525
	b,n .L513
.L525:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	ldo -96(%r30),%r28
	fstds %fr22,-8(%r28)
	ldi 1,%r28
	ldo -56(%r30),%r29
	stw %r28,0(%r29)
.L513:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L517
	b,n .L528
.L518:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -52(%r30),%r20
	stw %r28,0(%r20)
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	fldds 0(%r28),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	ldo -96(%r30),%r28
	fstds %fr22,-8(%r28)
.L517:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L518
	b,n .L519
.L528:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC14,%r28
	ldo RR'.LC14(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L527
	b,n .L519
.L527:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!= %fr22,%fr0
	ftest
	b,n .L519
	b,n .L521
.L522:
	ldo -52(%r30),%r29
	ldw 0(%r29),%r28
	ldo -1(%r28),%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	ldo -96(%r30),%r28
	fstds %fr22,-8(%r28)
.L521:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC14,%r28
	ldo RR'.LC14(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L522
.L519:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -52(%r30),%r20
	ldw 0(%r20),%r19
	stw %r19,0(%r28)
	ldo -56(%r30),%r29
	ldw 0(%r29),%r28
	comib,=,n 0,%r28,.L523
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	and,< %r19,%r19,%r19
	depi,tr 1,0,1,%r19
	depi 0,0,1,%r19
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr22
	ldo -96(%r30),%r28
	fstds %fr22,-8(%r28)
.L523:
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 4
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldi 0,%r28
	ldi 0,%r29
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	b,n .L530
.L533:
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	and %r28,0,%r28
	ldo -64(%r30),%r19
	ldo 20(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,31,1,%r19
	or %r28,%r19,%r28
	comib,=,n 0,%r28,.L531
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldw 4(%r28),%r20
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	add %r29,%r20,%r29
	addc %r28,%r19,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
.L531:
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r19
	ldw 4(%r28),%r28
	shd %r19,%r28,31,%r20
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r20,0(%r28)
	stw %r19,4(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,0,1,%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	or %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,30,31,%r20
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	stw %r20,0(%r19)
	stw %r28,4(%r19)
.L530:
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	ldo -64(%r30),%r19
	ldo 20(%r19),%r19
	ldw 0(%r19),%r19
	or %r28,%r19,%r28
	comib,<> 0,%r28,.L533
	nop
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldw 4(%r19),%r29
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 4
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 1,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r20
	stw %r0,0(%r20)
	b,n .L536
.L538:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	zdep %r28,30,31,%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L536:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L539
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L539
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<= 0,%r28,.L538
	nop
	b,n .L539
.L541:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L540
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	or %r19,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L540:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,30,31,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L539:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	comib,<> 0,%r28,.L541
	nop
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L542
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L543
.L542:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
.L543:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 4
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	copy %r26,%r28
	stb %r28,-164(%r30)
	ldb -164(%r30),%r28
	extrs %r28,31,8,%r28
	comib,<=,n 0,%r28,.L545
	ldb -164(%r30),%r28
	uaddcm %r0,%r28,%r28
	stb %r28,-164(%r30)
.L545:
	ldb -164(%r30),%r28
	extrs %r28,31,8,%r28
	comib,<>,n 0,%r28,.L546
	ldi 7,%r28
	b,n .L547
.L546:
	ldb -164(%r30),%r28
	extrs %r28,31,8,%r28
	zdep %r28,23,24,%r28
	copy %r28,%r26
	bl __clzsi2,%r2
	nop
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	ldo -1(%r28),%r28
.L547:
	ldw -148(%r30),%r2
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L549
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	uaddcm %r0,%r28,%r28
	uaddcm %r0,%r29,%r29
	ldo -128(%r30),%r19
	ldo -40(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
.L549:
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo -128(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	or %r28,%r19,%r28
	comib,<>,n 0,%r28,.L551
	ldi 63,%r28
	b,n .L552
.L551:
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __clzdi2,%r2
	nop
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r19
	ldw 0(%r19),%r28
	ldo -1(%r28),%r28
.L552:
	ldw -148(%r30),%r2
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	b,n .L554
.L556:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L555
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L555:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L554:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L556
	nop
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 4
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,28,29,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,3,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L559
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	comb,>>=,n %r28,%r19,.L566
.L559:
	ldo -56(%r30),%r20
	stw %r0,0(%r20)
	b,n .L561
.L562:
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	zdep %r28,28,29,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo -64(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	zdep %r28,28,29,%r28
	addl %r20,%r28,%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L561:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L562
	nop
	b,n .L563
.L564:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -52(%r30),%r21
	ldw 0(%r21),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r20
	ldo -52(%r30),%r21
	ldw 0(%r21),%r19
	addl %r20,%r19,%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -52(%r30),%r20
	stw %r28,0(%r20)
.L563:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldo -52(%r30),%r21
	ldw 0(%r21),%r28
	comb,<< %r28,%r19,.L564
	nop
	b,n .L565
.L567:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
.L566:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L567
	nop
	nop
.L565:
	nop
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 4
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L569
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	comb,>>=,n %r28,%r19,.L575
.L569:
	ldo -56(%r30),%r20
	stw %r0,0(%r20)
	b,n .L571
.L572:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	zdep %r28,30,31,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldo -64(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	zdep %r19,30,31,%r19
	addl %r20,%r19,%r19
	ldh 0(%r19),%r19
	extrs %r19,31,16,%r19
	sth %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L571:
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	comb,>> %r28,%r19,.L572
	nop
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L574
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	ldo -1(%r19),%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	b,n .L574
.L576:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
.L575:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L576
	nop
	nop
.L574:
	nop
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 4
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,29,30,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,2,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L578
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	comb,>>=,n %r28,%r19,.L585
.L578:
	ldo -56(%r30),%r20
	stw %r0,0(%r20)
	b,n .L580
.L581:
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	zdep %r28,29,30,%r28
	ldo -64(%r30),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldo -64(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	zdep %r19,29,30,%r19
	addl %r20,%r19,%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L580:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L581
	nop
	b,n .L582
.L583:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -52(%r30),%r21
	ldw 0(%r21),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r20
	ldo -52(%r30),%r21
	ldw 0(%r21),%r19
	addl %r20,%r19,%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -52(%r30),%r20
	stw %r28,0(%r20)
.L582:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldo -52(%r30),%r21
	ldw 0(%r21),%r28
	comb,<< %r28,%r19,.L583
	nop
	b,n .L584
.L586:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -64(%r30),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
.L585:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo -64(%r30),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L586
	nop
	nop
.L584:
	nop
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 4
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	bl $$remI,%r31
	nop
	copy %r29,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 4
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r19
	ldo -36(%r19),%r19
	stw %r26,0(%r19)
	copy %r30,%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	copy %r19,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,dbl %fr23,%fr22
	fcpy,dbl %fr22,%fr4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 4
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r19
	ldo -36(%r19),%r19
	stw %r26,0(%r19)
	copy %r30,%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	copy %r19,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,sgl %fr23,%fr22L
	fcpy,sgl %fr22L,%fr4L
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 4
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,128(%r30)
	stw %r3,-124(%r30)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldi 0,%r23
	ldi 0,%r24
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __cmpdi2,%r2
	nop
	comib,>,n 1,%r28,.L595
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	fldds 0(%r28),%fr22
	fcnvxf,dbl,dbl %fr22,%fr22
	b,n .L596
.L595:
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	and %r28,0,%r21
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r19
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,0,1,%r20
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	or %r20,%r28,%r28
	ldo -128(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	extru %r20,30,31,%r20
	or %r21,%r20,%r20
	copy %r20,%r3
	or %r19,%r28,%r28
	copy %r28,%r4
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,dbl %fr23,%fr22
	fadd,dbl %fr22,%fr22,%fr22
.L596:
	nop
	fcpy,dbl %fr22,%fr4
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	ldwm -128(%r30),%r4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 4
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,128(%r30)
	stw %r3,-124(%r30)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldi 0,%r23
	ldi 0,%r24
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __cmpdi2,%r2
	nop
	comib,>,n 1,%r28,.L599
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	fldds 0(%r28),%fr22
	fcnvxf,dbl,sgl %fr22,%fr22L
	b,n .L600
.L599:
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	and %r28,0,%r21
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r19
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,0,1,%r20
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	or %r20,%r28,%r28
	ldo -128(%r30),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	extru %r20,30,31,%r20
	or %r21,%r20,%r20
	copy %r20,%r3
	or %r19,%r28,%r28
	copy %r28,%r4
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,sgl %fr23,%fr22L
	fadd,sgl %fr22L,%fr22L,%fr22L
.L600:
	nop
	fcpy,sgl %fr22L,%fr4L
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	ldwm -128(%r30),%r4
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 4
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	.IMPORT $$remU,MILLICODE
	bl $$remU,%r31
	nop
	copy %r29,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 4
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r28
	sth %r28,-100(%r30)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	b,n .L604
.L607:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	subi 15,%r28,%r28
	ldh -100(%r30),%r19
	extru %r19,31,16,%r19
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,<>,n 0,%r28,.L609
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L604:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,>= 15,%r28,.L607
	nop
	b,n .L606
.L609:
	nop
.L606:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 4
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r28
	sth %r28,-100(%r30)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	b,n .L611
.L614:
	ldh -100(%r30),%r28
	extru %r28,31,16,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,<>,n 0,%r28,.L616
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L611:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,>= 15,%r28,.L614
	nop
	b,n .L613
.L616:
	nop
.L613:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC15:
	.word	1191182336
	.text
	.align 4
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldil LR'.LC15,%r28
	ldo RR'.LC15(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!>= %fr23L,%fr22L
	ftest
	b,n .L621
	b,n .L622
.L621:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldil LR'.LC15,%r28
	ldo RR'.LC15(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr23L,%fr22L,%fr22L
	fcnvfxt,sgl,sgl %fr22L,%fr22L
	ldil L'32768,%r28
	fstws %fr22L,-16(%sp)
	ldws -16(%sp),%r19
	addl %r19,%r28,%r28
	b,n .L620
.L622:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr22L
	fcnvfxt,sgl,sgl %fr22L,%fr22L
	fstws %fr22L,-16(%sp)
	ldws -16(%sp),%r28
.L620:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r28
	sth %r28,-100(%r30)
	ldo -52(%r30),%r19
	stw %r0,0(%r19)
	ldo -56(%r30),%r20
	stw %r0,0(%r20)
	b,n .L624
.L626:
	ldh -100(%r30),%r28
	extru %r28,31,16,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L625
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -52(%r30),%r20
	stw %r28,0(%r20)
.L625:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L624:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,>= 15,%r28,.L626
	nop
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,31,1,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 4
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r28
	sth %r28,-100(%r30)
	ldo -52(%r30),%r19
	stw %r0,0(%r19)
	ldo -56(%r30),%r20
	stw %r0,0(%r20)
	b,n .L629
.L631:
	ldh -100(%r30),%r28
	extru %r28,31,16,%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L630
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -52(%r30),%r20
	stw %r28,0(%r20)
.L630:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo 1(%r28),%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L629:
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,>= 15,%r28,.L631
	nop
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 4
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	b,n .L634
.L636:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L635
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L635:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L634:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L636
	nop
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L641
	ldi 0,%r28
	b,n .L640
.L643:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L642
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L642:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L641:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L643
	nop
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
.L640:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 1,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r20
	stw %r0,0(%r20)
	b,n .L645
.L647:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	zdep %r28,30,31,%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L645:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L648
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L648
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<= 0,%r28,.L647
	nop
	b,n .L648
.L650:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L649
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	or %r19,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L649:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,30,31,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L648:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	comib,<> 0,%r28,.L650
	nop
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L651
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L652
.L651:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
.L652:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r30),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L659
	b,n .L661
.L659:
	ldi -1,%r28
	b,n .L656
.L661:
	ldo -32(%r30),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r30),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!> %fr23L,%fr22L
	ftest
	b,n .L660
	b,n .L662
.L660:
	ldi 1,%r28
	b,n .L656
.L662:
	ldi 0,%r28
.L656:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r30),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L669
	b,n .L671
.L669:
	ldi -1,%r28
	b,n .L666
.L671:
	ldo -32(%r30),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r30),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L670
	b,n .L672
.L670:
	ldi 1,%r28
	b,n .L666
.L672:
	ldi 0,%r28
.L666:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r21
	extrs %r28,0,1,%r28
	copy %r28,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r20
	extrs %r28,0,1,%r28
	stws %r21,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr25L
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr25L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	xmpyu %fr24L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	xmpyu %fr23L,%fr22L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r22,%r20,%r19
	copy %r29,%r20
	addl %r28,%r19,%r28
	copy %r20,%r29
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r21
	ldi 0,%r19
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r20
	ldi 0,%r28
	stws %r21,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr25L
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr25L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	xmpyu %fr24L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	xmpyu %fr23L,%fr22L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r22,%r20,%r19
	copy %r29,%r20
	addl %r28,%r19,%r28
	copy %r20,%r29
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -52(%r30),%r19
	stw %r0,0(%r19)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r0,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L678
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldi 1,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L678:
	stb %r0,-56(%r30)
	b,n .L679
.L682:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L680
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
.L680:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extrs %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldb -56(%r30),%r28
	ldo 1(%r28),%r28
	extru %r28,31,8,%r28
	stb %r28,-56(%r30)
.L679:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L681
	ldb -56(%r30),%r28
	extru %r28,31,8,%r19
	ldi 31,%r28
	comb,>>= %r28,%r19,.L682
	nop
.L681:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L683
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r28
	b,n .L685
.L683:
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
.L685:
	nop
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 4
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L687
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L687:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L688
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L688:
	ldi 0,%r24
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	bl __udivmodsi4,%r2
	nop
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L689
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	sub %r0,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L689:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 4
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -56(%r30),%r19
	stw %r0,0(%r19)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L692
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldi 1,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
.L692:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L693
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L693:
	ldi 1,%r24
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	bl __udivmodsi4,%r2
	nop
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L694
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	sub %r0,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L694:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 4
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r20
	copy %r25,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	copy %r20,%r28
	sth %r28,-100(%r30)
	copy %r19,%r28
	sth %r28,-104(%r30)
	ldi 1,%r28
	sth %r28,-56(%r30)
	sth %r0,-54(%r30)
	b,n .L697
.L699:
	ldh -104(%r30),%r28
	zdep %r28,30,31,%r28
	sth %r28,-104(%r30)
	ldh -56(%r30),%r28
	zdep %r28,30,31,%r28
	sth %r28,-56(%r30)
.L697:
	ldh -104(%r30),%r28
	extru %r28,31,16,%r19
	ldh -100(%r30),%r28
	extru %r28,31,16,%r28
	comb,<<=,n %r28,%r19,.L700
	ldh -56(%r30),%r28
	extru %r28,31,16,%r28
	comib,=,n 0,%r28,.L700
	ldh -104(%r30),%r28
	extrs %r28,31,16,%r28
	comib,<= 0,%r28,.L699
	nop
	b,n .L700
.L702:
	ldh -100(%r30),%r28
	extru %r28,31,16,%r19
	ldh -104(%r30),%r28
	extru %r28,31,16,%r28
	comb,>>,n %r28,%r19,.L701
	ldh -100(%r30),%r19
	ldh -104(%r30),%r28
	sub %r19,%r28,%r28
	sth %r28,-100(%r30)
	ldh -54(%r30),%r19
	ldh -56(%r30),%r28
	or %r19,%r28,%r28
	sth %r28,-54(%r30)
.L701:
	ldh -56(%r30),%r28
	extru %r28,31,16,%r28
	extru %r28,30,31,%r28
	sth %r28,-56(%r30)
	ldh -104(%r30),%r28
	extru %r28,31,16,%r28
	extru %r28,30,31,%r28
	sth %r28,-104(%r30)
.L700:
	ldh -56(%r30),%r28
	extru %r28,31,16,%r28
	comib,<> 0,%r28,.L702
	nop
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L703
	ldh -100(%r30),%r28
	extru %r28,31,16,%r28
	b,n .L704
.L703:
	ldh -54(%r30),%r28
	extru %r28,31,16,%r28
.L704:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 1,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r20
	stw %r0,0(%r20)
	b,n .L706
.L708:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	zdep %r28,30,31,%r28
	ldo -56(%r30),%r20
	stw %r28,0(%r20)
.L706:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L709
	ldo -56(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L709
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<= 0,%r28,.L708
	nop
	b,n .L709
.L711:
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L710
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	or %r19,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
.L710:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,30,31,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L709:
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	comib,<> 0,%r28,.L711
	nop
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L712
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L713
.L712:
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
.L713:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 32,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	and %r19,%r28,%r28
	comib,=,n 0,%r28,.L715
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r0,4(%r28)
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r20
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	b,n .L716
.L715:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L717
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	b,n .L719
.L717:
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldo -56(%r30),%r28
	ldw 0(%r28),%r21
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	sub %r21,%r28,%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	or %r19,%r28,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
.L716:
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
.L719:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 4
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 32,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	and %r19,%r28,%r28
	comib,=,n 0,%r28,.L721
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	ldo -1(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r20
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	b,n .L722
.L721:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L723
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	b,n .L725
.L723:
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	ldo -56(%r30),%r21
	ldw 0(%r21),%r20
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	or %r19,%r28,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
.L722:
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
.L725:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 4
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,7,8,%r20
	ldi 0,%r21
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,23,24,%r28
	ldi 0,%r19
	and %r19,0,%r19
	zdepi -1,23,8,%r22
	and %r28,%r22,%r28
	or %r21,%r19,%r21
	or %r20,%r28,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,23,24,%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,7,8,%r28
	or %r19,%r28,%r28
	copy %r30,%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,7,8,%r19
	and %r19,0,%r19
	ldil L'16711680,%r22
	and %r28,%r22,%r28
	or %r21,%r19,%r21
	or %r20,%r28,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,7,8,%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,23,24,%r28
	or %r19,%r28,%r28
	copy %r30,%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,23,24,%r19
	and %r19,0,%r19
	depi 0,31,24,%r28
	or %r21,%r19,%r21
	or %r20,%r28,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldw 4(%r28),%r28
	shd %r19,%r28,24,%r19
	zdep %r28,23,24,%r28
	extru %r19,31,8,%r19
	and %r28,0,%r28
	or %r21,%r19,%r21
	or %r20,%r28,%r20
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldw 4(%r28),%r28
	shd %r19,%r28,8,%r19
	zdep %r28,7,8,%r28
	zdepi -1,23,8,%r22
	and %r19,%r22,%r19
	and %r28,0,%r28
	or %r21,%r19,%r21
	or %r20,%r28,%r20
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,23,24,%r19
	ldi 0,%r28
	ldil L'16711680,%r22
	and %r19,%r22,%r19
	and %r28,0,%r28
	or %r21,%r19,%r21
	or %r20,%r28,%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,7,8,%r20
	ldi 0,%r28
	or %r21,%r20,%r20
	or %r19,%r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 4
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,7,8,%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,23,24,%r28
	zdepi -1,23,8,%r20
	and %r28,%r20,%r28
	or %r19,%r28,%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,23,24,%r28
	ldil L'16711680,%r20
	and %r28,%r20,%r28
	or %r19,%r28,%r19
	copy %r30,%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,7,8,%r28
	or %r19,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 4
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=128,NO_CALLS
	.ENTRY
	ldo 128(%r30),%r30
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r20
	ldw 0(%r20),%r19
	zdepi -1,31,16,%r28
	comb,<<,n %r28,%r19,.L731
	ldi 16,%r28
	b,n .L732
.L731:
	ldi 0,%r28
.L732:
	ldo -116(%r30),%r19
	stw %r28,0(%r19)
	ldo -116(%r30),%r20
	ldw 0(%r20),%r28
	subi 16,%r28,%r28
	ldo -120(%r30),%r20
	ldw 0(%r20),%r19
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -116(%r30),%r20
	ldw 0(%r20),%r19
	ldo -128(%r30),%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	zdepi -1,23,8,%r28
	and %r19,%r28,%r28
	comib,<>,n 0,%r28,.L733
	ldi 8,%r28
	b,n .L734
.L733:
	ldi 0,%r28
.L734:
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	subi 8,%r28,%r19
	ldo -120(%r30),%r28
	ldo 20(%r28),%r28
	ldo -128(%r30),%r20
	ldo 16(%r20),%r20
	ldw 0(%r20),%r20
	mtsar %r19
	vshd %r0,%r20,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	ldo -128(%r30),%r20
	ldo 20(%r20),%r20
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldi 240,%r28
	and %r19,%r28,%r28
	comib,<>,n 0,%r28,.L735
	ldi 4,%r28
	b,n .L736
.L735:
	ldi 0,%r28
.L736:
	ldo -120(%r30),%r19
	ldo 28(%r19),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r28
	ldo 28(%r28),%r28
	ldw 0(%r28),%r28
	subi 4,%r28,%r19
	ldo -120(%r30),%r28
	ldo 32(%r28),%r28
	ldo -120(%r30),%r20
	ldo 20(%r20),%r20
	ldw 0(%r20),%r20
	mtsar %r19
	vshd %r0,%r20,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 36(%r28),%r28
	ldo -120(%r30),%r19
	ldo 24(%r19),%r20
	ldo -120(%r30),%r19
	ldo 28(%r19),%r19
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 32(%r28),%r28
	ldw 0(%r28),%r19
	ldi 12,%r28
	and %r19,%r28,%r28
	comib,<>,n 0,%r28,.L737
	ldi 2,%r28
	b,n .L738
.L737:
	ldi 0,%r28
.L738:
	ldo -120(%r30),%r19
	ldo 40(%r19),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r28
	ldo 40(%r28),%r28
	ldw 0(%r28),%r28
	subi 2,%r28,%r19
	ldo -120(%r30),%r28
	ldo 44(%r28),%r28
	ldo -120(%r30),%r20
	ldo 32(%r20),%r20
	ldw 0(%r20),%r20
	mtsar %r19
	vshd %r0,%r20,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 48(%r28),%r28
	ldo -120(%r30),%r19
	ldo 36(%r19),%r20
	ldo -120(%r30),%r19
	ldo 40(%r19),%r19
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 44(%r28),%r28
	ldw 0(%r28),%r19
	ldi 2,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -120(%r30),%r28
	ldo 44(%r28),%r28
	ldw 0(%r28),%r28
	subi 2,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r19
	ldo -120(%r30),%r28
	ldo 48(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 4
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,<=,n %r28,%r19,.L741
	ldi 0,%r28
	b,n .L746
.L741:
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>=,n %r28,%r19,.L743
	ldi 2,%r28
	b,n .L746
.L743:
	ldo -52(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L744
	ldi 0,%r28
	b,n .L746
.L744:
	ldo -52(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>=,n %r28,%r19,.L745
	ldi 2,%r28
	b,n .L746
.L745:
	ldi 1,%r28
.L746:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 4
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r23
	ldw 4(%r28),%r24
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __cmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=128,NO_CALLS
	.ENTRY
	ldo 128(%r30),%r30
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,31,16,%r28
	comib,<>,n 0,%r28,.L750
	ldi 16,%r28
	b,n .L751
.L750:
	ldi 0,%r28
.L751:
	ldo -116(%r30),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r20
	ldw 0(%r20),%r19
	ldo -116(%r30),%r20
	ldw 0(%r20),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -116(%r30),%r20
	ldw 0(%r20),%r19
	ldo -128(%r30),%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r28
	comib,<>,n 0,%r28,.L752
	ldi 8,%r28
	b,n .L753
.L752:
	ldi 0,%r28
.L753:
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r28
	ldo 20(%r28),%r28
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	ldo -128(%r30),%r20
	ldo 16(%r20),%r20
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	mtsar %r19
	vshd %r0,%r20,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	ldo -128(%r30),%r20
	ldo 20(%r20),%r20
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,4,%r28
	comib,<>,n 0,%r28,.L754
	ldi 4,%r28
	b,n .L755
.L754:
	ldi 0,%r28
.L755:
	ldo -120(%r30),%r19
	ldo 28(%r19),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r28
	ldo 32(%r28),%r28
	ldo -120(%r30),%r19
	ldo 20(%r19),%r20
	ldo -120(%r30),%r19
	ldo 28(%r19),%r19
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	mtsar %r19
	vshd %r0,%r20,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 36(%r28),%r28
	ldo -120(%r30),%r19
	ldo 24(%r19),%r20
	ldo -120(%r30),%r19
	ldo 28(%r19),%r19
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 32(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,2,%r28
	comib,<>,n 0,%r28,.L756
	ldi 2,%r28
	b,n .L757
.L756:
	ldi 0,%r28
.L757:
	ldo -120(%r30),%r19
	ldo 40(%r19),%r19
	stw %r28,0(%r19)
	ldo -120(%r30),%r28
	ldo 44(%r28),%r28
	ldo -120(%r30),%r19
	ldo 32(%r19),%r20
	ldo -120(%r30),%r19
	ldo 40(%r19),%r19
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	mtsar %r19
	vshd %r0,%r20,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 48(%r28),%r28
	ldo -120(%r30),%r19
	ldo 44(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,31,2,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 52(%r28),%r28
	ldo -120(%r30),%r19
	ldo 36(%r19),%r20
	ldo -120(%r30),%r19
	ldo 40(%r19),%r19
	ldw 0(%r20),%r20
	ldw 0(%r19),%r19
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 48(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	subi 2,%r28,%r28
	ldo -120(%r30),%r19
	ldo 48(%r19),%r19
	ldw 0(%r19),%r19
	uaddcm %r0,%r19,%r19
	extru %r19,31,1,%r19
	sub %r0,%r19,%r19
	and %r19,%r28,%r19
	ldo -120(%r30),%r28
	ldo 52(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 4
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 32,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	and %r19,%r28,%r28
	comib,=,n 0,%r28,.L760
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r0,0(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r20
	ldo -56(%r30),%r21
	ldw 0(%r21),%r28
	sub %r20,%r28,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	b,n .L761
.L760:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L762
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	b,n .L764
.L762:
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r21
	ldw 0(%r21),%r20
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	or %r19,%r28,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
.L761:
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
.L764:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 4
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=128,NO_CALLS
	.ENTRY
	ldo 128(%r30),%r30
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldi 16,%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	ldi -1,%r19
	ldo -120(%r30),%r20
	ldw 0(%r20),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	ldo -116(%r30),%r19
	stw %r28,0(%r19)
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -116(%r30),%r20
	ldw 0(%r20),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -116(%r30),%r21
	ldw 0(%r21),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	stw %r19,4(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r19
	ldo -120(%r30),%r20
	ldw 0(%r20),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldo -116(%r30),%r21
	ldw 0(%r21),%r20
	and %r20,%r19,%r19
	stw %r19,4(%r28)
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -120(%r30),%r20
	ldw 0(%r20),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -116(%r30),%r20
	ldw 0(%r20),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo -128(%r30),%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldo -128(%r30),%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r20
	ldo -128(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo -116(%r30),%r21
	ldw 0(%r21),%r28
	and %r19,%r28,%r19
	ldo -120(%r30),%r21
	ldw 0(%r21),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	addl %r20,%r19,%r19
	stw %r19,4(%r28)
	ldo -128(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo -120(%r30),%r20
	ldw 0(%r20),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r20
	ldo -120(%r30),%r28
	ldo 16(%r28),%r28
	ldo -120(%r30),%r21
	ldw 0(%r21),%r19
	mtsar %r19
	vshd %r0,%r20,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldo -116(%r30),%r21
	ldw 0(%r21),%r20
	and %r20,%r19,%r19
	stw %r19,4(%r28)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -120(%r30),%r20
	ldw 0(%r20),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -116(%r30),%r20
	ldw 0(%r20),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r19
	ldo -120(%r30),%r28
	ldo 20(%r28),%r28
	ldo -120(%r30),%r20
	ldo 16(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r20
	ldo -120(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo -116(%r30),%r21
	ldw 0(%r21),%r28
	and %r19,%r28,%r19
	ldo -120(%r30),%r21
	ldw 0(%r21),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	addl %r20,%r19,%r19
	stw %r19,4(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 0(%r28),%r20
	ldo -120(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo -120(%r30),%r21
	ldw 0(%r21),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 0(%r28),%r20
	ldo -128(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo -120(%r30),%r21
	ldw 0(%r21),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo -120(%r30),%r21
	ldw 0(%r21),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r19
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 4
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo -128(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -120(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -128(%r30),%r28
	ldo -48(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -128(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -128(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r25
	ldo -116(%r30),%r28
	ldw 0(%r28),%r26
	bl __muldsi3,%r2
	nop
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -120(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r20
	ldo -120(%r30),%r19
	ldw 0(%r19),%r19
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -128(%r30),%r28
	ldo 20(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r19
	ldo -116(%r30),%r28
	ldw 0(%r28),%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo -128(%r30),%r28
	ldo 16(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	addl %r19,%r28,%r19
	ldo -120(%r30),%r28
	ldo 16(%r28),%r28
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldw -148(%r30),%r2
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r30,%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	copy %r30,%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 4
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -56(%r30),%r28
	ldo 16(%r28),%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r28
	xor %r19,%r28,%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,15,16,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	xor %r19,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,23,24,%r28
	ldo -52(%r30),%r20
	ldw 0(%r20),%r19
	xor %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,27,28,%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	xor %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,4,%r28
	ldil L'32768,%r19
	ldo -5738(%r19),%r19
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 4
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,15,16,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	xor %r19,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,23,24,%r28
	ldo -52(%r30),%r20
	ldw 0(%r20),%r19
	xor %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,27,28,%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	xor %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,4,%r28
	ldil L'32768,%r19
	ldo -5738(%r19),%r19
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.align 4
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=128,NO_CALLS
	.ENTRY
	ldo 128(%r30),%r30
	ldo -128(%r30),%r31
	ldo -40(%r31),%r31
	stw %r25,0(%r31)
	stw %r26,4(%r31)
	ldo -128(%r30),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r25
	ldw 4(%r31),%r26
	ldo -120(%r30),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -120(%r30),%r28
	ldw 0(%r28),%r31
	zdep %r31,0,1,%r25
	ldo -116(%r30),%r28
	ldw 0(%r28),%r31
	extru %r31,30,31,%r31
	or %r25,%r31,%r31
	ldo -120(%r30),%r28
	ldw 0(%r28),%r25
	extru %r25,30,31,%r26
	ldil L'1431650304,%r25
	ldo 5461(%r25),%r25
	and %r26,%r25,%r23
	ldil L'1431650304,%r25
	ldo 5461(%r25),%r25
	and %r31,%r25,%r24
	ldo -120(%r30),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	sub %r26,%r24,%r24
	subb %r25,%r23,%r23
	ldo -128(%r30),%r31
	ldo 16(%r31),%r31
	stw %r23,0(%r31)
	stw %r24,4(%r31)
	ldo -128(%r30),%r31
	ldo 16(%r31),%r31
	ldw 0(%r31),%r31
	zdep %r31,1,2,%r23
	ldo -128(%r30),%r31
	ldo 20(%r31),%r31
	ldw 0(%r31),%r31
	extru %r31,29,30,%r31
	or %r23,%r31,%r31
	ldo -128(%r30),%r23
	ldo 16(%r23),%r23
	ldw 0(%r23),%r23
	extru %r23,29,30,%r24
	ldil L'858996736,%r23
	ldo -3277(%r23),%r23
	and %r24,%r23,%r21
	ldil L'858996736,%r23
	ldo -3277(%r23),%r23
	and %r31,%r23,%r22
	ldo -128(%r30),%r31
	ldo 16(%r31),%r31
	ldw 0(%r31),%r23
	ldil L'858996736,%r31
	ldo -3277(%r31),%r31
	and %r23,%r31,%r19
	ldo -128(%r30),%r31
	ldo 20(%r31),%r31
	ldw 0(%r31),%r23
	ldil L'858996736,%r31
	ldo -3277(%r31),%r31
	and %r23,%r31,%r20
	ldo -120(%r30),%r31
	ldo 16(%r31),%r31
	add %r20,%r22,%r20
	addc %r19,%r21,%r19
	stw %r19,0(%r31)
	stw %r20,4(%r31)
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r20
	zdep %r20,3,4,%r20
	ldw 4(%r19),%r21
	extru %r21,27,28,%r29
	or %r20,%r29,%r29
	ldw 0(%r19),%r19
	extru %r19,27,28,%r28
	ldo -120(%r30),%r19
	ldo 16(%r19),%r19
	ldw 4(%r19),%r20
	ldw 0(%r19),%r19
	add %r20,%r29,%r29
	addc %r19,%r28,%r28
	ldo -120(%r30),%r19
	ldo 24(%r19),%r19
	ldil L'252641280,%r20
	ldo 3855(%r20),%r20
	and %r28,%r20,%r20
	stw %r20,0(%r19)
	ldil L'252641280,%r20
	ldo 3855(%r20),%r20
	and %r29,%r20,%r28
	stw %r28,4(%r19)
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 4(%r28),%r20
	ldo -120(%r30),%r28
	ldo 24(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,32,%r28
	copy %r28,%r19
	ldo -120(%r30),%r28
	ldo 32(%r28),%r28
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 32(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,15,16,%r19
	ldo -120(%r30),%r28
	ldo 36(%r28),%r28
	ldo -120(%r30),%r20
	ldo 32(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -120(%r30),%r28
	ldo 36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,23,24,%r19
	ldo -120(%r30),%r28
	ldo 36(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	extru %r28,31,7,%r28
	ldo -128(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 4
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo -64(%r30),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	ldo -56(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,30,31,%r19
	ldil L'1431650304,%r28
	ldo 5461(%r28),%r28
	and %r19,%r28,%r28
	ldo -56(%r30),%r20
	ldw 0(%r20),%r19
	sub %r19,%r28,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldo -52(%r30),%r20
	ldw 0(%r20),%r28
	extru %r28,29,30,%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r19
	ldo -52(%r30),%r28
	ldw 0(%r28),%r20
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r20,%r28,%r28
	addl %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,27,28,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	ldil L'252641280,%r28
	ldo 3855(%r28),%r28
	and %r19,%r28,%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,15,16,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldo -64(%r30),%r20
	ldo 20(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r19,%r19
	stw %r19,0(%r28)
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,23,24,%r19
	ldo -56(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	extru %r28,31,6,%r28
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
	.align 8
.LC16:
	.word	1072693248
	.word	0
	.text
	.align 4
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -96(%r30),%r28
	fstds %fr5,-8(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r28
	extru %r28,31,8,%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr22
	fcpy,dbl %fr22,%fr23
	ldo -56(%r30),%r19
	fstds %fr23,0(%r19)
.L783:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L780
	ldo -56(%r30),%r19
	fldds 0(%r19),%fr23
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	fcpy,dbl %fr22,%fr23
	ldo -56(%r30),%r19
	fstds %fr23,0(%r19)
.L780:
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L788
	ldo -96(%r30),%r28
	fldds -8(%r28),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	ldo -96(%r30),%r28
	fstds %fr22,-8(%r28)
	b,n .L783
.L788:
	nop
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L784
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr23
	ldo -56(%r30),%r19
	fldds 0(%r19),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	b,n .L786
.L784:
	ldo -56(%r30),%r19
	fldds 0(%r19),%fr22
.L786:
	nop
	fcpy,dbl %fr22,%fr4
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC17:
	.word	1065353216
	.text
	.align 4
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -96(%r30),%r28
	fstws %fr4L,-4(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r28
	extru %r28,31,8,%r28
	ldo -52(%r30),%r19
	stw %r28,0(%r19)
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	fldws 0(%r28),%fr22L
	fstws %fr22L,-16(%sp)
	ldws -16(%sp),%r19
	ldo -56(%r30),%r28
	stw %r19,0(%r28)
.L793:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L790
	ldo -56(%r30),%r28
	fldws 0(%r28),%fr23L
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr22L
	fmpy,sgl %fr23L,%fr22L,%fr22L
	fstws %fr22L,-16(%sp)
	ldws -16(%sp),%r19
	ldo -56(%r30),%r28
	stw %r19,0(%r28)
.L790:
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L798
	ldo -96(%r30),%r28
	fldws -4(%r28),%fr22L
	fmpy,sgl %fr22L,%fr22L,%fr22L
	ldo -96(%r30),%r28
	fstws %fr22L,-4(%r28)
	b,n .L793
.L798:
	nop
	ldo -52(%r30),%r19
	ldw 0(%r19),%r28
	comib,=,n 0,%r28,.L794
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	fldws 0(%r28),%fr23L
	ldo -56(%r30),%r28
	fldws 0(%r28),%fr22L
	fdiv,sgl %fr23L,%fr22L,%fr22L
	b,n .L796
.L794:
	ldo -56(%r30),%r28
	fldws 0(%r28),%fr22L
.L796:
	nop
	fcpy,sgl %fr22L,%fr4L
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 4
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -56(%r30),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo -64(%r30),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L800
	ldi 0,%r28
	b,n .L805
.L800:
	ldo -56(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>=,n %r28,%r19,.L802
	ldi 2,%r28
	b,n .L805
.L802:
	ldo -52(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L803
	ldi 0,%r28
	b,n .L805
.L803:
	ldo -52(%r30),%r28
	ldw 0(%r28),%r19
	ldo -64(%r30),%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>=,n %r28,%r19,.L804
	ldi 2,%r28
	b,n .L805
.L804:
	ldi 1,%r28
.L805:
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo -64(%r30),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r23
	ldw 4(%r28),%r24
	ldo -64(%r30),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __ucmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -84(%r30),%r2
	ldo -64(%r30),%r30
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
.globl __cmpdi2
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
