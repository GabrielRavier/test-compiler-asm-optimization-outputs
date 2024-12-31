	.LEVEL 1.1
	.text
	.align 4
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	ldw 12(%r3),%r19
	ldw 8(%r3),%r28
	comb,<<=,n %r28,%r19,.L2
	ldw 12(%r3),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
	b,n .L3
.L4:
	ldw 12(%r3),%r28
	ldo -1(%r28),%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	ldo -1(%r28),%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldw 8(%r3),%r28
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L3:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L4
	nop
	b,n .L5
.L2:
	ldw 12(%r3),%r19
	ldw 8(%r3),%r28
	comb,=,n %r28,%r19,.L5
	b,n .L6
.L7:
	ldw 12(%r3),%r19
	ldo 1(%r19),%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r20
	stw %r20,8(%r3)
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L6:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L7
	nop
.L5:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 4
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	b,n .L10
.L12:
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r19,0(%r28)
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L10:
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L11
	ldw 12(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	ldw 8(%r3),%r28
	stb %r19,0(%r28)
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	comb,<> %r28,%r19,.L12
	nop
.L11:
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L13
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	b,n .L14
.L13:
	ldi 0,%r28
.L14:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 4
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	b,n .L16
.L18:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L16:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L17
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	comb,<> %r28,%r19,.L18
	nop
.L17:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L19
	ldw 8(%r3),%r28
	b,n .L21
.L19:
	ldi 0,%r28
.L21:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 4
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	b,n .L23
.L25:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
.L23:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L24
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	ldw 12(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comb,= %r28,%r19,.L25
	nop
.L24:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L26
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	copy %r28,%r19
	ldw 12(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	sub %r19,%r28,%r28
	b,n .L28
.L26:
	ldi 0,%r28
.L28:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 4
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	b,n .L30
.L31:
	ldw 12(%r3),%r19
	ldo 1(%r19),%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r20
	stw %r20,8(%r3)
	ldb 0(%r19),%r19
	extru %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L30:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L31
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 4
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	b,n .L34
.L36:
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	comb,<>,n %r28,%r19,.L34
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	b,n .L35
.L34:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L36
	nop
	ldi 0,%r28
.L35:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 4
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	b,n .L38
.L39:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r19
	ldw 8(%r3),%r28
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L38:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L39
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 4
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L42
.L43:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L42:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L43
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 4
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	b,n .L46
.L48:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L46:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,=,n 0,%r28,.L47
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	comb,<> %r28,%r19,.L48
	nop
.L47:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 4
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	stw %r25,0(%r19)
.L53:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	ldo 0(%r3),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	comclr,<> %r19,%r20,%r0
	b,n .L52
.L51:
	copy %r28,%r19
	ldo 1(%r19),%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L53
	nop
	ldi 0,%r28
.L52:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 4
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L55
.L57:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L55:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L56
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L57
	nop
.L56:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	sub %r19,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 4
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	b,n .L60
.L61:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L60:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L61
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 4
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<>,n 0,%r28,.L66
	ldi 0,%r28
	b,n .L65
.L68:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L66:
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L67
	ldw 12(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L67
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L67
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r19
	ldw 12(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	comb,= %r28,%r19,.L68
	nop
.L67:
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	copy %r28,%r19
	ldw 12(%r3),%r28
	ldb 0(%r28),%r28
	extru %r28,31,8,%r28
	sub %r19,%r28,%r28
.L65:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 4
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	b,n .L70
.L71:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldw 12(%r3),%r28
	stb %r19,0(%r28)
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	ldw 8(%r3),%r19
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldw 12(%r3),%r28
	ldo 2(%r28),%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	ldo 2(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -2(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L70:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,< 1,%r28,.L71
	nop
	nop
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 4
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi -1,26,1,%r28
	ldo -97(%r28),%r19
	ldi 25,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 4
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 127,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 4
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 32,%r28
	comb,=,n %r28,%r19,.L77
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 9,%r28,.L78
.L77:
	ldi 1,%r28
	b,n .L80
.L78:
	ldi 0,%r28
.L80:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 4
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 31,%r28
	comb,>>=,n %r28,%r19,.L82
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 127,%r28
	comb,<>,n %r28,%r19,.L83
.L82:
	ldi 1,%r28
	b,n .L85
.L83:
	ldi 0,%r28
.L85:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 4
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 4
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -33(%r28),%r19
	ldi 93,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 4
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -97(%r28),%r19
	ldi 25,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 4
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -32(%r28),%r19
	ldi 94,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 4
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 32,%r28
	comb,=,n %r28,%r19,.L95
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -9(%r28),%r28
	comib,<<,n 4,%r28,.L96
.L95:
	ldi 1,%r28
	b,n .L98
.L96:
	ldi 0,%r28
.L98:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 4
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -65(%r28),%r19
	ldi 25,%r28
	comclr,<< %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 4
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 31,%r28
	comb,>>=,n %r28,%r19,.L102
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -127(%r28),%r19
	ldi 32,%r28
	comb,>>=,n %r28,%r19,.L102
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-16384,%r28
	ldo 8152(%r28),%r28
	addl %r19,%r28,%r28
	comib,>>=,n 1,%r28,.L102
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-65536,%r28
	ldo 7(%r28),%r28
	addl %r19,%r28,%r28
	comib,<<,n 2,%r28,.L103
.L102:
	ldi 1,%r28
	b,n .L105
.L103:
	ldi 0,%r28
.L105:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 4
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 4
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldi 254,%r28
	comb,<<,n %r28,%r19,.L109
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	extru %r28,31,7,%r19
	ldi 32,%r28
	comclr,>>= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	b,n .L110
.L109:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'16384,%r28
	ldo -8153(%r28),%r28
	comb,>>=,n %r28,%r19,.L111
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-16384,%r28
	ldo 8150(%r28),%r28
	addl %r19,%r28,%r19
	ldil L'49152,%r28
	ldo -2091(%r28),%r28
	comb,>>=,n %r28,%r19,.L111
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-57344,%r28
	addl %r19,%r28,%r19
	ldi 8184,%r28
	comb,<<,n %r28,%r19,.L112
.L111:
	ldi 1,%r28
	b,n .L110
.L112:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldil L'-65536,%r28
	ldo 4(%r28),%r28
	addl %r19,%r28,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L113
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	zdepi -1,30,15,%r28
	and %r19,%r28,%r19
	zdepi -1,30,15,%r28
	comb,<>,n %r28,%r19,.L114
.L113:
	ldi 0,%r28
	b,n .L110
.L114:
	ldi 1,%r28
.L110:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 4
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	comib,>>=,n 9,%r28,.L116
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi -1,26,1,%r28
	ldo -97(%r28),%r28
	comib,<<,n 5,%r28,.L117
.L116:
	ldi 1,%r28
	b,n .L119
.L117:
	ldi 0,%r28
.L119:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 4
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,7,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.align 4
.globl fdim
	.type	fdim, @function
fdim:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L123
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L124
.L123:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L125
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L124
.L125:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L129
	b,n .L130
.L129:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fsub,dbl %fr23,%fr22,%fr22
	b,n .L124
.L130:
	fcpy,dbl %fr0,%fr22
.L124:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.align 4
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r3),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L132
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	b,n .L133
.L132:
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L134
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	b,n .L133
.L134:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!> %fr23L,%fr22L
	ftest
	b,n .L138
	b,n .L139
.L138:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fsub,sgl %fr23L,%fr22L,%fr22L
	b,n .L133
.L139:
	fcpy,sgl %fr0,%fr22L
.L133:
	fcpy,sgl %fr22L,%fr4L
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 4
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L141
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L142
.L141:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L143
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L142
.L143:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L144
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L145
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L142
.L145:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L142
.L144:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L150
	b,n .L151
.L150:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L142
.L151:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
.L142:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 4
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r3),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L153
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	b,n .L154
.L153:
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L155
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	b,n .L154
.L155:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L156
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L157
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	b,n .L154
.L157:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	b,n .L154
.L156:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L162
	b,n .L163
.L162:
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	b,n .L154
.L163:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
.L154:
	fcpy,sgl %fr22L,%fr4L
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 4
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L165
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L166
.L165:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L167
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L166
.L167:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L168
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L169
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L166
.L169:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L166
.L168:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L174
	b,n .L175
.L174:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L166
.L175:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
.L166:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 4
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L177
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L178
.L177:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L179
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L178
.L179:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L180
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L181
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L178
.L181:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L178
.L180:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L186
	b,n .L187
.L186:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L178
.L187:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
.L178:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 4
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r3),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L189
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	b,n .L190
.L189:
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,? %fr23L,%fr22L
	ftest
	b,n .L191
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	b,n .L190
.L191:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L192
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L193
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	b,n .L190
.L193:
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	b,n .L190
.L192:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L198
	b,n .L199
.L198:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	b,n .L190
.L199:
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
.L190:
	fcpy,sgl %fr22L,%fr4L
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 4
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L201
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L202
.L201:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L203
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L202
.L203:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comb,=,n %r28,%r19,.L204
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,31,%r28
	comib,=,n 0,%r28,.L205
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L202
.L205:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	b,n .L202
.L204:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L210
	b,n .L211
.L210:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	b,n .L202
.L211:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
.L202:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	addil LR's.0-$global$,%r27
	copy %r1,%r28
	ldo RR's.0-$global$(%r28),%r28
	stw %r28,8(%r3)
	b,n .L213
.L214:
	ldw 12(%r3),%r28
	extru %r28,31,6,%r28
	ldil LR'digits,%r19
	ldo RR'digits(%r19),%r19
	ldbx %r19(%r28),%r28
	extrs %r28,31,8,%r19
	ldw 8(%r3),%r28
	stb %r19,0(%r28)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	extru %r28,25,26,%r28
	stw %r28,12(%r3)
.L213:
	ldw 12(%r3),%r28
	comib,<> 0,%r28,.L214
	nop
	ldw 8(%r3),%r28
	stb %r0,0(%r28)
	addil LR's.0-$global$,%r27
	copy %r1,%r28
	ldo RR's.0-$global$(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	stw %r26,0(%r19)
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	ldo -1(%r19),%r19
	copy %r19,%r29
	ldi 0,%r28
	addil LR'seed-$global$,%r27
	copy %r1,%r19
	ldo RR'seed-$global$(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 4
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	addil LR'seed-$global$,%r27
	copy %r1,%r21
	ldo RR'seed-$global$(%r21),%r21
	ldw 0(%r21),%r23
	ldw 4(%r21),%r24
	ldil L'1284865837,%r22
	ldil L'1481765933,%r21
	ldo R'1481765933(%r21),%r21
	ldo R'1284865837(%r22),%r22
	stws %r24,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r22,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr25L
	stws %r21,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr25L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	xmpyu %fr24L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	xmpyu %fr23L,%fr22L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r26,%r24,%r31
	copy %r22,%r20
	addl %r21,%r31,%r19
	addi 1,%r20,%r20
	addc %r19,%r0,%r19
	addil LR'seed-$global$,%r27
	copy %r1,%r21
	ldo RR'seed-$global$(%r21),%r21
	stw %r19,0(%r21)
	stw %r20,4(%r21)
	addil LR'seed-$global$,%r27
	copy %r1,%r19
	ldo RR'seed-$global$(%r19),%r19
	ldw 4(%r19),%r20
	ldw 0(%r19),%r19
	extru %r19,30,31,%r29
	ldi 0,%r28
	copy %r29,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 4
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	comib,<>,n 0,%r28,.L220
	ldw 8(%r3),%r28
	stw %r0,4(%r28)
	ldw 8(%r3),%r28
	ldw 4(%r28),%r19
	ldw 8(%r3),%r28
	stw %r19,0(%r28)
	b,n .L219
.L220:
	ldw 12(%r3),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	ldw 12(%r3),%r19
	stw %r19,4(%r28)
	ldw 12(%r3),%r28
	ldw 8(%r3),%r19
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L219
	ldw 8(%r3),%r28
	ldw 0(%r28),%r28
	ldw 8(%r3),%r19
	stw %r19,4(%r28)
.L219:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 4
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L223
	ldw 8(%r3),%r28
	ldw 0(%r28),%r28
	ldw 8(%r3),%r19
	ldw 4(%r19),%r19
	stw %r19,4(%r28)
.L223:
	ldw 8(%r3),%r28
	ldw 4(%r28),%r28
	comib,=,n 0,%r28,.L225
	ldw 8(%r3),%r28
	ldw 4(%r28),%r28
	ldw 8(%r3),%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L225:
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 4
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	ldo 24(%r3),%r1
	fstds,ma %fr12,8(%r1)
	ldo 0(%r3),%r21
	ldo -36(%r21),%r21
	stw %r26,0(%r21)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	stw %r25,0(%r21)
	ldo 0(%r3),%r21
	ldo -44(%r21),%r21
	stw %r24,0(%r21)
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	stw %r23,0(%r21)
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	fldws 0(%r21),%fr12L
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r21
	ldo -1(%r21),%r21
	stw %r21,12(%r3)
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r29
	ldi 0,%r28
	shd %r28,%r29,29,%r19
	copy %r29,%r28
	zdep %r28,28,29,%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	stw %r0,8(%r3)
	b,n .L227
.L230:
	fldws 8(%r3),%fr22L
	xmpyu %fr12L,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r20
	ldo -32(%r3),%r28
	ldo -20(%r28),%r28
	ldw 0(%r28),%r19
	copy %r20,%r25
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<>,n 0,%r28,.L228
	fldws 8(%r3),%fr22L
	xmpyu %fr12L,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	b,n .L229
.L228:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L227:
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L230
	nop
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	stw %r19,0(%r28)
	copy %r3,%r28
	ldo 20(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr12L,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r24
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r25
	copy %r19,%r26
	bl memcpy,%r2
	nop
.L229:
	ldw -20(%r3),%r2
	ldo 24(%r3),%r1
	fldds,ma 8(%r1),%fr12
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 4
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r4,24(%r3)
	ldo 0(%r3),%r21
	ldo -36(%r21),%r21
	stw %r26,0(%r21)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	stw %r25,0(%r21)
	ldo 0(%r3),%r21
	ldo -44(%r21),%r21
	stw %r24,0(%r21)
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	stw %r23,0(%r21)
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	ldw 0(%r21),%r4
	copy %r4,%r21
	ldo -1(%r21),%r21
	stw %r21,12(%r3)
	copy %r4,%r29
	ldi 0,%r28
	shd %r28,%r29,29,%r19
	copy %r29,%r28
	zdep %r28,28,29,%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	stw %r0,8(%r3)
	b,n .L232
.L235:
	fldws 8(%r3),%fr22L
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r20
	ldo -32(%r3),%r28
	ldo -20(%r28),%r28
	ldw 0(%r28),%r19
	copy %r20,%r25
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<>,n 0,%r28,.L233
	fldws 8(%r3),%fr22L
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	b,n .L234
.L233:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L232:
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L235
	nop
	ldi 0,%r28
.L234:
	ldw -20(%r3),%r2
	ldw 24(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 4
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 4
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	stw %r0,8(%r3)
	stw %r0,12(%r3)
	b,n .L239
.L240:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L239:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L240
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L241
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L243
	ldi 1,%r28
	stw %r28,12(%r3)
.L241:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	b,n .L243
.L244:
	ldw 8(%r3),%r19
	copy %r19,%r28
	zdep %r28,29,30,%r28
	addl %r28,%r19,%r28
	zdep %r28,30,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r21
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	stw %r21,0(%r20)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	sub %r19,%r28,%r28
	stw %r28,8(%r3)
.L243:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	comib,>>= 9,%r28,.L244
	nop
	ldw 12(%r3),%r28
	comib,<>,n 0,%r28,.L245
	ldw 8(%r3),%r28
	sub %r0,%r28,%r28
	b,n .L247
.L245:
	ldw 8(%r3),%r28
.L247:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 4
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	stw %r0,8(%r3)
	stw %r0,12(%r3)
	b,n .L249
.L250:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L249:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L250
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L251
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L253
	ldi 1,%r28
	stw %r28,12(%r3)
.L251:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	b,n .L253
.L254:
	ldw 8(%r3),%r19
	copy %r19,%r28
	zdep %r28,29,30,%r28
	addl %r28,%r19,%r28
	zdep %r28,30,31,%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r21
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	stw %r21,0(%r20)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	sub %r19,%r28,%r28
	stw %r28,8(%r3)
.L253:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	comib,>>= 9,%r28,.L254
	nop
	ldw 12(%r3),%r28
	comib,<>,n 0,%r28,.L255
	ldw 8(%r3),%r28
	sub %r0,%r28,%r28
	b,n .L257
.L255:
	ldw 8(%r3),%r28
.L257:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 4
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r10,20(%r3)
	stw %r9,24(%r3)
	stw %r8,28(%r3)
	stw %r7,32(%r3)
	stw %r6,36(%r3)
	stw %r5,40(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldi 0,%r28
	ldi 0,%r29
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r0,0(%r28)
	b,n .L259
.L260:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L259:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L260
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L261
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L263
	ldi 1,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
.L261:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	b,n .L263
.L264:
	ldw 8(%r3),%r19
	ldw 12(%r3),%r20
	copy %r19,%r28
	copy %r20,%r29
	shd %r28,%r29,30,%r7
	copy %r29,%r28
	zdep %r28,29,30,%r8
	copy %r7,%r28
	copy %r8,%r29
	add %r20,%r29,%r29
	addc %r19,%r28,%r28
	shd %r28,%r29,31,%r9
	copy %r29,%r28
	zdep %r28,30,31,%r10
	copy %r9,%r28
	copy %r10,%r29
	copy %r28,%r19
	copy %r29,%r20
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r22
	ldo 0(%r3),%r21
	ldo -36(%r21),%r21
	stw %r22,0(%r21)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	copy %r28,%r6
	extrs %r28,0,1,%r28
	copy %r28,%r5
	sub %r20,%r6,%r29
	subb %r19,%r5,%r28
	stw %r28,8(%r3)
	stw %r29,12(%r3)
.L263:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	comib,>>= 9,%r28,.L264
	nop
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L265
	ldw 8(%r3),%r28
	ldw 12(%r3),%r29
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
	b,n .L267
.L265:
	ldw 8(%r3),%r28
	ldw 12(%r3),%r29
.L267:
	ldw -20(%r3),%r2
	ldw 20(%r3),%r10
	ldw 24(%r3),%r9
	ldw 28(%r3),%r8
	ldw 32(%r3),%r7
	ldw 36(%r3),%r6
	ldw 40(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 4
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	b,n .L269
.L274:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
	ldo -32(%r3),%r28
	ldo -20(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r25
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	comib,<=,n 0,%r28,.L270
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	b,n .L269
.L270:
	ldw 12(%r3),%r28
	comib,>=,n 0,%r28,.L272
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	ldw 0(%r19),%r19
	sub %r19,%r28,%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	b,n .L269
.L272:
	ldw 8(%r3),%r28
	b,n .L273
.L269:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L274
	nop
	ldi 0,%r28
.L273:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 4
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	b,n .L276
.L280:
	ldw 12(%r3),%r28
	extrs %r28,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	ldw 8(%r3),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo -32(%r3),%r28
	ldo -24(%r28),%r28
	ldo -32(%r3),%r19
	ldo -20(%r19),%r19
	ldw 0(%r19),%r19
	ldw 0(%r28),%r24
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r25
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	copy %r19,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	copy %r3,%r19
	ldo 20(%r19),%r19
	stw %r28,0(%r19)
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L277
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L278
.L277:
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comib,>=,n 0,%r28,.L279
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	ldo -1(%r28),%r28
	stw %r28,12(%r3)
.L279:
	ldw 12(%r3),%r28
	extrs %r28,30,31,%r28
	stw %r28,12(%r3)
.L276:
	ldw 12(%r3),%r28
	comib,<> 0,%r28,.L280
	nop
	ldi 0,%r28
.L278:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 4
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	copy %r29,%r21
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	.IMPORT $$remI,MILLICODE
	bl $$remI,%r31
	nop
	copy %r29,%r28
	stw %r21,8(%r3)
	stw %r28,12(%r3)
	ldi 0,%r21
	ldw 8(%r3),%r21
	ldi 0,%r28
	ldw 12(%r3),%r28
	copy %r21,%r19
	copy %r28,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 4
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	stw %r25,0(%r21)
	stw %r26,4(%r21)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r29
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r28
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r28,%r19
	ldo 0(%r3),%r21
	ldo -36(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r29,%r20
	sub %r20,%r29,%r20
	subb %r19,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 4
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=6
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,192(%r30)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	stw %r4,32(%r3)
	copy %r28,%r4
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r23
	ldw 4(%r28),%r24
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __divdi3,%r2
	nop
	copy %r28,%r5
	copy %r29,%r6
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo 0(%r3),%r19
	ldo -48(%r19),%r19
	ldw 0(%r19),%r23
	ldw 4(%r19),%r24
	copy %r28,%r25
	copy %r29,%r26
	bl __moddi3,%r2
	nop
	stw %r5,0(%r4)
	stw %r6,4(%r4)
	stw %r28,8(%r4)
	stw %r29,12(%r4)
	copy %r4,%r28
	ldw -20(%r3),%r2
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 4
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 4
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	bl $$divI,%r31
	nop
	copy %r29,%r21
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	bl $$remI,%r31
	nop
	copy %r29,%r28
	stw %r21,8(%r3)
	stw %r28,12(%r3)
	ldi 0,%r21
	ldw 8(%r3),%r21
	ldi 0,%r28
	ldw 12(%r3),%r28
	copy %r21,%r19
	copy %r28,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 4
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	stw %r25,0(%r21)
	stw %r26,4(%r21)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r29
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	extrs %r21,0,1,%r28
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r28,%r19
	ldo 0(%r3),%r21
	ldo -36(%r21),%r21
	ldw 0(%r21),%r21
	xor %r21,%r29,%r20
	sub %r20,%r29,%r20
	subb %r19,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 4
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=6
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,192(%r30)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	stw %r4,32(%r3)
	copy %r28,%r4
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r23
	ldw 4(%r28),%r24
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __divdi3,%r2
	nop
	copy %r28,%r5
	copy %r29,%r6
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo 0(%r3),%r19
	ldo -48(%r19),%r19
	ldw 0(%r19),%r23
	ldw 4(%r19),%r24
	copy %r28,%r25
	copy %r29,%r26
	bl __moddi3,%r2
	nop
	stw %r5,0(%r4)
	stw %r6,4(%r4)
	stw %r28,8(%r4)
	stw %r29,12(%r4)
	copy %r4,%r28
	ldw -20(%r3),%r2
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 4
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L296
.L298:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L296:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L297
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	comb,<> %r28,%r19,.L298
	nop
.L297:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L299
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L301
.L299:
	ldi 0,%r28
.L301:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 4
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L303
.L305:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L303:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,<>,n %r28,%r19,.L304
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L304
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L305
	nop
.L304:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,>,n %r28,%r19,.L306
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comclr,>= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	b,n .L308
.L306:
	ldi -1,%r28
.L308:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 4
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	nop
.L310:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 4(%r19),%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r21
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	stw %r21,0(%r20)
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L310
	nop
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 4
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	b,n .L313
.L314:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L313:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L314
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	extrs %r28,29,30,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 4
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L317
.L319:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L317:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L318
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,<>,n %r28,%r19,.L318
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L318
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L319
	nop
.L318:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L320
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,>,n %r28,%r19,.L321
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comclr,>= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	b,n .L324
.L321:
	ldi -1,%r28
	b,n .L324
.L320:
	ldi 0,%r28
.L324:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 4
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L326
.L328:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L326:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L327
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	comb,<> %r28,%r19,.L328
	nop
.L327:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L329
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L331
.L329:
	ldi 0,%r28
.L331:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 4
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	b,n .L333
.L335:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L333:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L334
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,= %r28,%r19,.L335
	nop
.L334:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L336
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comb,>,n %r28,%r19,.L337
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldw 0(%r28),%r28
	comclr,>= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	b,n .L340
.L337:
	ldi -1,%r28
	b,n .L340
.L336:
	ldi 0,%r28
.L340:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 4
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	b,n .L342
.L343:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 4(%r19),%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r21
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	stw %r21,0(%r20)
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L342:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L343
	nop
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 4
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,<>,n %r28,%r19,.L346
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L347
.L346:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,29,30,%r28
	comb,<<=,n %r28,%r19,.L352
	b,n .L349
.L350:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,29,30,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,29,30,%r28
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r28,%r28
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L349:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L350
	nop
	b,n .L351
.L353:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 4(%r19),%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r20,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r21
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	stw %r21,0(%r20)
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L352:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L353
	nop
.L351:
	ldw 8(%r3),%r28
.L347:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 4
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	b,n .L355
.L356:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 4(%r28),%r20
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	stw %r20,0(%r19)
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
.L355:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L356
	nop
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 4
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	comb,<<=,n %r28,%r19,.L359
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,12(%r3)
	b,n .L360
.L361:
	ldw 8(%r3),%r28
	ldo -1(%r28),%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	ldo -1(%r28),%r28
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldw 12(%r3),%r28
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L360:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L361
	nop
	b,n .L365
.L359:
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	comb,=,n %r28,%r19,.L365
	b,n .L363
.L364:
	ldw 8(%r3),%r19
	ldo 1(%r19),%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	ldo 1(%r28),%r20
	stw %r20,12(%r3)
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L363:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L364
	nop
.L365:
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 4
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=5
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r6,8(%r3)
	stw %r5,12(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r23
	ldi 32,%r31
	and %r23,%r31,%r31
	comib,=,n 0,%r31,.L367
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	subi 31,%r31,%r31
	mtsar %r31
	zvdep %r29,32,%r21
	ldi 0,%r22
	b,n .L368
.L367:
	extru %r29,30,31,%r23
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	uaddcm %r0,%r31,%r31
	mtsar %r31
	vshd %r0,%r23,%r31
	ldo 0(%r3),%r23
	ldo -44(%r23),%r23
	ldw 0(%r23),%r23
	subi 31,%r23,%r23
	mtsar %r23
	zvdep %r28,32,%r21
	or %r31,%r21,%r21
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	subi 31,%r31,%r31
	mtsar %r31
	zvdep %r29,32,%r22
.L368:
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	ldi 32,%r23
	and %r31,%r23,%r31
	comib,=,n 0,%r31,.L369
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	mtsar %r31
	vshd %r0,%r28,%r20
	ldi 0,%r19
	b,n .L370
.L369:
	copy %r28,%r31
	zdep %r31,30,31,%r23
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	uaddcm %r0,%r31,%r31
	subi 31,%r31,%r31
	mtsar %r31
	zvdep %r23,32,%r23
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	mtsar %r31
	vshd %r0,%r29,%r20
	or %r23,%r20,%r20
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	mtsar %r31
	vshd %r0,%r28,%r19
.L370:
	or %r19,%r21,%r5
	or %r20,%r22,%r6
	copy %r5,%r19
	copy %r6,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 4
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=5
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r6,8(%r3)
	stw %r5,12(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r23
	ldi 32,%r31
	and %r23,%r31,%r31
	comib,=,n 0,%r31,.L373
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	mtsar %r31
	vshd %r0,%r28,%r22
	ldi 0,%r21
	b,n .L374
.L373:
	copy %r28,%r31
	zdep %r31,30,31,%r23
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	uaddcm %r0,%r31,%r31
	subi 31,%r31,%r31
	mtsar %r31
	zvdep %r23,32,%r31
	ldo 0(%r3),%r23
	ldo -44(%r23),%r23
	ldw 0(%r23),%r23
	mtsar %r23
	vshd %r0,%r29,%r22
	or %r31,%r22,%r22
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	mtsar %r31
	vshd %r0,%r28,%r21
.L374:
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	ldi 32,%r23
	and %r31,%r23,%r31
	comib,=,n 0,%r31,.L375
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	subi 31,%r31,%r31
	mtsar %r31
	zvdep %r29,32,%r19
	ldi 0,%r20
	b,n .L376
.L375:
	extru %r29,30,31,%r23
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	uaddcm %r0,%r31,%r31
	mtsar %r31
	vshd %r0,%r23,%r23
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	subi 31,%r31,%r31
	mtsar %r31
	zvdep %r28,32,%r19
	or %r23,%r19,%r19
	ldo 0(%r3),%r31
	ldo -44(%r31),%r31
	ldw 0(%r31),%r31
	sub %r0,%r31,%r31
	extru %r31,31,6,%r31
	subi 31,%r31,%r31
	mtsar %r31
	zvdep %r29,32,%r20
.L376:
	or %r19,%r21,%r5
	or %r20,%r22,%r6
	copy %r5,%r19
	copy %r6,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 4
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 32,%r28,%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 4
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 4
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 32,%r28,%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 4
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r19,%r19,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 4
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	sth %r28,-36(%r3)
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r28
	extru %r28,31,16,%r19
	ldh -36(%r3),%r28
	extru %r28,31,16,%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 16,%r28,%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	extru %r28,31,16,%r28
	or %r19,%r28,%r28
	extru %r28,31,16,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 4
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	sth %r28,-36(%r3)
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	extru %r28,31,16,%r19
	ldh -36(%r3),%r28
	extru %r28,31,16,%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 16,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	extru %r28,31,16,%r28
	or %r19,%r28,%r28
	extru %r28,31,16,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 4
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	stb %r28,-36(%r3)
	ldb -36(%r3),%r28
	extru %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r28
	extru %r28,31,8,%r19
	ldb -36(%r3),%r28
	extru %r28,31,8,%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 8,%r28,%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	extru %r28,31,8,%r28
	or %r19,%r28,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 4
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	copy %r19,%r28
	stb %r28,-36(%r3)
	ldb -36(%r3),%r28
	extru %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	extru %r28,31,8,%r19
	ldb -36(%r3),%r28
	extru %r28,31,8,%r20
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	subi 8,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	extru %r28,31,8,%r28
	or %r19,%r28,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 4
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	sth %r28,-36(%r3)
	ldi 255,%r28
	stw %r28,8(%r3)
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldw 8(%r3),%r28
	zdep %r28,23,24,%r28
	and %r19,%r28,%r28
	extru %r28,23,24,%r28
	extru %r28,31,16,%r19
	ldw 8(%r3),%r28
	extru %r28,31,16,%r20
	ldh -36(%r3),%r28
	and %r20,%r28,%r28
	extru %r28,31,16,%r28
	zdep %r28,23,24,%r28
	extru %r28,31,16,%r28
	or %r19,%r28,%r28
	extru %r28,31,16,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 4
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldi 255,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	zdep %r28,7,8,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	and %r19,%r28,%r28
	extru %r28,7,8,%r19
	ldw 8(%r3),%r28
	zdep %r28,15,16,%r20
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	and %r20,%r28,%r28
	extru %r28,23,24,%r28
	or %r19,%r28,%r19
	ldw 8(%r3),%r28
	zdep %r28,23,24,%r20
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	and %r20,%r28,%r28
	zdep %r28,23,24,%r28
	or %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r28
	and %r20,%r28,%r28
	zdep %r28,7,8,%r28
	or %r19,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 4
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=256,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=17
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,256(%r30)
	stw %r18,160(%r3)
	stw %r17,164(%r3)
	stw %r16,168(%r3)
	stw %r15,172(%r3)
	stw %r14,176(%r3)
	stw %r13,180(%r3)
	stw %r12,184(%r3)
	stw %r11,188(%r3)
	stw %r10,192(%r3)
	stw %r9,196(%r3)
	stw %r8,200(%r3)
	stw %r7,204(%r3)
	stw %r6,208(%r3)
	stw %r5,212(%r3)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	stw %r25,0(%r31)
	stw %r26,4(%r31)
	ldi 0,%r25
	ldi 255,%r26
	stw %r25,8(%r3)
	stw %r26,12(%r3)
	ldw 12(%r3),%r31
	zdep %r31,7,8,%r20
	ldo 16(%r3),%r19
	stw %r20,0(%r19)
	ldo 20(%r3),%r21
	stw %r0,0(%r21)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	ldo 16(%r3),%r28
	ldw 0(%r28),%r28
	and %r31,%r28,%r19
	ldo 24(%r3),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r31
	ldo -36(%r31),%r31
	ldw 0(%r31),%r31
	ldo 20(%r3),%r19
	ldw 0(%r19),%r19
	and %r31,%r19,%r20
	ldo 28(%r3),%r19
	stw %r20,0(%r19)
	ldo 24(%r3),%r20
	ldw 0(%r20),%r20
	extru %r20,7,8,%r21
	ldo 36(%r3),%r20
	stw %r21,0(%r20)
	ldo 32(%r3),%r21
	stw %r0,0(%r21)
	ldw 12(%r3),%r31
	zdep %r31,15,16,%r19
	ldo 40(%r3),%r28
	stw %r19,0(%r28)
	ldo 44(%r3),%r20
	stw %r0,0(%r20)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	ldo 40(%r3),%r21
	ldw 0(%r21),%r21
	and %r31,%r21,%r28
	ldo 48(%r3),%r21
	stw %r28,0(%r21)
	ldo 0(%r3),%r31
	ldo -36(%r31),%r31
	ldw 0(%r31),%r31
	ldo 44(%r3),%r28
	ldw 0(%r28),%r28
	and %r31,%r28,%r19
	ldo 52(%r3),%r28
	stw %r19,0(%r28)
	ldo 48(%r3),%r19
	ldw 0(%r19),%r19
	extru %r19,23,24,%r20
	ldo 60(%r3),%r19
	stw %r20,0(%r19)
	ldo 56(%r3),%r20
	stw %r0,0(%r20)
	ldo 32(%r3),%r21
	ldw 0(%r21),%r28
	ldo 56(%r3),%r21
	ldw 0(%r21),%r21
	or %r28,%r21,%r28
	ldo 64(%r3),%r21
	stw %r28,0(%r21)
	ldo 36(%r3),%r28
	ldw 0(%r28),%r19
	ldo 60(%r3),%r28
	ldw 0(%r28),%r28
	or %r19,%r28,%r19
	ldo 68(%r3),%r28
	stw %r19,0(%r28)
	ldw 12(%r3),%r31
	zdep %r31,23,24,%r20
	ldo 72(%r3),%r19
	stw %r20,0(%r19)
	ldo 76(%r3),%r21
	stw %r0,0(%r21)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	ldo 72(%r3),%r28
	ldw 0(%r28),%r28
	and %r31,%r28,%r7
	ldo 0(%r3),%r31
	ldo -36(%r31),%r31
	ldw 0(%r31),%r31
	ldo 76(%r3),%r19
	ldw 0(%r19),%r19
	and %r31,%r19,%r8
	copy %r7,%r31
	zdep %r31,23,24,%r31
	extru %r8,7,8,%r20
	or %r31,%r20,%r20
	extru %r7,7,8,%r19
	ldo 64(%r3),%r21
	ldw 0(%r21),%r21
	or %r21,%r19,%r28
	ldo 80(%r3),%r21
	stw %r28,0(%r21)
	ldo 68(%r3),%r28
	ldw 0(%r28),%r28
	or %r28,%r20,%r21
	ldo 84(%r3),%r28
	stw %r21,0(%r28)
	ldw 12(%r3),%r19
	zdep %r19,31,32,%r21
	ldo 88(%r3),%r20
	stw %r21,0(%r20)
	ldo 92(%r3),%r28
	stw %r0,0(%r28)
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	ldo 88(%r3),%r20
	ldw 0(%r20),%r20
	and %r19,%r20,%r5
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	ldo 92(%r3),%r21
	ldw 0(%r21),%r21
	and %r19,%r21,%r6
	copy %r5,%r19
	zdep %r19,7,8,%r19
	extru %r6,23,24,%r29
	or %r19,%r29,%r29
	extru %r5,23,24,%r28
	ldo 80(%r3),%r19
	ldw 0(%r19),%r19
	or %r19,%r28,%r20
	ldo 96(%r3),%r19
	stw %r20,0(%r19)
	ldo 84(%r3),%r20
	ldw 0(%r20),%r20
	or %r20,%r29,%r21
	ldo 100(%r3),%r20
	stw %r21,0(%r20)
	ldw 8(%r3),%r28
	ldw 12(%r3),%r29
	shd %r28,%r29,8,%r19
	ldo 104(%r3),%r21
	stw %r19,0(%r21)
	copy %r29,%r28
	zdep %r28,7,8,%r21
	ldo 108(%r3),%r20
	stw %r21,0(%r20)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 104(%r3),%r19
	ldw 0(%r19),%r19
	and %r28,%r19,%r23
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 108(%r3),%r20
	ldw 0(%r20),%r20
	and %r28,%r20,%r24
	shd %r23,%r24,24,%r28
	ldo 112(%r3),%r21
	stw %r28,0(%r21)
	copy %r24,%r28
	zdep %r28,23,24,%r20
	ldo 116(%r3),%r19
	stw %r20,0(%r19)
	ldo 96(%r3),%r21
	ldw 0(%r21),%r28
	ldo 112(%r3),%r21
	ldw 0(%r21),%r21
	or %r28,%r21,%r28
	ldo 120(%r3),%r21
	stw %r28,0(%r21)
	ldo 100(%r3),%r28
	ldw 0(%r28),%r19
	ldo 116(%r3),%r28
	ldw 0(%r28),%r28
	or %r19,%r28,%r19
	ldo 124(%r3),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	ldw 12(%r3),%r29
	shd %r28,%r29,16,%r20
	ldo 128(%r3),%r19
	stw %r20,0(%r19)
	copy %r29,%r28
	zdep %r28,15,16,%r19
	ldo 132(%r3),%r21
	stw %r19,0(%r21)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 128(%r3),%r20
	ldw 0(%r20),%r20
	and %r28,%r20,%r21
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 132(%r3),%r19
	ldw 0(%r19),%r19
	and %r28,%r19,%r22
	shd %r21,%r22,8,%r1
	copy %r22,%r28
	zdep %r28,7,8,%r2
	ldo 120(%r3),%r20
	ldw 0(%r20),%r20
	or %r20,%r1,%r15
	ldo 124(%r3),%r21
	ldw 0(%r21),%r21
	or %r21,%r2,%r16
	ldw 8(%r3),%r28
	ldw 12(%r3),%r29
	shd %r28,%r29,24,%r17
	copy %r29,%r28
	zdep %r28,23,24,%r18
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	and %r28,%r17,%r20
	ldo 136(%r3),%r19
	stw %r20,0(%r19)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	and %r28,%r18,%r19
	ldo 140(%r3),%r21
	stw %r19,0(%r21)
	ldo 140(%r3),%r20
	ldw 0(%r20),%r28
	zdep %r28,23,24,%r13
	ldi 0,%r14
	or %r15,%r13,%r11
	or %r16,%r14,%r12
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	and %r19,%r28,%r20
	ldo 144(%r3),%r21
	stw %r20,0(%r21)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	and %r19,%r28,%r20
	ldo 148(%r3),%r21
	stw %r20,0(%r21)
	ldo 148(%r3),%r21
	ldw 0(%r21),%r28
	zdep %r28,7,8,%r9
	ldi 0,%r10
	or %r11,%r9,%r19
	ldo 152(%r3),%r28
	stw %r19,0(%r28)
	or %r12,%r10,%r21
	ldo 156(%r3),%r20
	stw %r21,0(%r20)
	ldo 152(%r3),%r19
	ldw 0(%r19),%r28
	ldw 4(%r19),%r29
	ldw -20(%r3),%r2
	ldw 160(%r3),%r18
	ldw 164(%r3),%r17
	ldw 168(%r3),%r16
	ldw 172(%r3),%r15
	ldw 176(%r3),%r14
	ldw 180(%r3),%r13
	ldw 184(%r3),%r12
	ldw 188(%r3),%r11
	ldw 192(%r3),%r10
	ldw 196(%r3),%r9
	ldw 200(%r3),%r8
	ldw 204(%r3),%r7
	ldw 208(%r3),%r6
	ldw 212(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 4
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	stw %r0,8(%r3)
	b,n .L401
.L404:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L402
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	b,n .L403
.L402:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L401:
	ldw 8(%r3),%r19
	ldi 31,%r28
	comb,>>= %r28,%r19,.L404
	nop
	ldi 0,%r28
.L403:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 4
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=4
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r4,8(%r3)
	copy %r26,%r28
	comib,<>,n 0,%r28,.L406
	ldi 0,%r28
	b,n .L407
.L406:
	ldi 1,%r4
	b,n .L408
.L409:
	extrs %r28,30,31,%r28
	ldo 1(%r4),%r4
.L408:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L409
	nop
	copy %r4,%r28
.L407:
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldil LR'.LC0,%r28
	ldo RR'.LC0(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L411
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldil LR'.LC1,%r28
	ldo RR'.LC1(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!> %fr23L,%fr22L
	ftest
	b,n .L411
	b,n .L416
.L411:
	ldi 1,%r28
	b,n .L415
.L416:
	ldi 0,%r28
.L415:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC2,%r28
	ldo RR'.LC2(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L418
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC3,%r28
	ldo RR'.LC3(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L418
	b,n .L423
.L418:
	ldi 1,%r28
	b,n .L422
.L423:
	ldi 0,%r28
.L422:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC4,%r28
	ldo RR'.LC4(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L425
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC5,%r28
	ldo RR'.LC5(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L425
	b,n .L430
.L425:
	ldi 1,%r28
	b,n .L429
.L430:
	ldi 0,%r28
.L429:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 4
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	fldws 0(%r28),%fr22L
	fcnvxf,sgl,dbl %fr22L,%fr22
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	fstds %fr22,0(%r28)
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fcmp,sgl,!? %fr23L,%fr22L
	ftest
	b,n .L433
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fadd,sgl %fr22L,%fr22L,%fr22L
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	fcmp,sgl,!= %fr23L,%fr22L
	ftest
	b,n .L433
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L434
	ldil LR'.LC6,%r28
	ldo RR'.LC6(%r28),%r28
	fldws 0(%r28),%fr22L
	b,n .L435
.L434:
	ldil LR'.LC7,%r28
	ldo RR'.LC7(%r28),%r28
	fldws 0(%r28),%fr22L
.L435:
	fstws %fr22L,8(%r3)
.L438:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L436
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	fldws 8(%r3),%fr22L
	fmpy,sgl %fr23L,%fr22L,%fr22L
	ldo -32(%r3),%r28
	fstws %fr22L,-4(%r28)
.L436:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L440
	fldws 8(%r3),%fr22L
	fmpy,sgl %fr22L,%fr22L,%fr22L
	fstws %fr22L,8(%r3)
	b,n .L438
.L440:
	nop
.L433:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fcpy,sgl %fr22L,%fr4L
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!? %fr23,%fr22
	ftest
	b,n .L442
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	fcmp,dbl,!= %fr23,%fr22
	ftest
	b,n .L442
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L443
	ldil LR'.LC8,%r28
	ldo RR'.LC8(%r28),%r28
	fldds 0(%r28),%fr22
	b,n .L444
.L443:
	ldil LR'.LC9,%r28
	ldo RR'.LC9(%r28),%r28
	fldds 0(%r28),%fr22
.L444:
	fstds %fr22,8(%r3)
.L447:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L445
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	fldds 8(%r3),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	ldo -32(%r3),%r28
	fstds %fr22,-8(%r28)
.L445:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L449
	fldds 8(%r3),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fstds %fr22,8(%r3)
	b,n .L447
.L449:
	nop
.L442:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!? %fr23,%fr22
	ftest
	b,n .L451
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	fcmp,dbl,!= %fr23,%fr22
	ftest
	b,n .L451
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L452
	ldil LR'.LC10,%r28
	ldo RR'.LC10(%r28),%r28
	fldds 0(%r28),%fr22
	b,n .L453
.L452:
	ldil LR'.LC11,%r28
	ldo RR'.LC11(%r28),%r28
	fldds 0(%r28),%fr22
.L453:
	fstds %fr22,8(%r3)
.L456:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L454
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	fldds 8(%r3),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	ldo -32(%r3),%r28
	fstds %fr22,-8(%r28)
.L454:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L458
	fldds 8(%r3),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fstds %fr22,8(%r3)
	b,n .L456
.L458:
	nop
.L451:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 4
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,12(%r3)
	b,n .L460
.L461:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r19
	stw %r19,8(%r3)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r20
	ldw 12(%r3),%r28
	ldo 1(%r28),%r19
	stw %r19,12(%r3)
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	xor %r20,%r19,%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L460:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L461
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 4
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	bl strlen,%r2
	nop
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	addl %r28,%r19,%r28
	stw %r28,8(%r3)
	b,n .L464
.L466:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
.L464:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L465
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldw 8(%r3),%r28
	stb %r19,0(%r28)
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L466
	nop
.L465:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L467
	ldw 8(%r3),%r28
	stb %r0,0(%r28)
.L467:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 4
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r0,8(%r3)
	b,n .L470
.L475:
	nop
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L470:
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L471
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	addl %r19,%r28,%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L475
	nop
.L471:
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 4
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	b,n .L477
.L481:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	b,n .L478
.L480:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r19
	stw %r19,8(%r3)
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L478
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L479
.L478:
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L480
	nop
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
.L477:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r28,.L481
	nop
	ldi 0,%r28
.L479:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 4
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	stw %r25,0(%r19)
	stw %r0,8(%r3)
.L484:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	ldo 0(%r3),%r20
	ldo -40(%r20),%r20
	ldw 0(%r20),%r20
	comclr,<> %r19,%r20,%r0
	stw %r28,8(%r3)
.L483:
	copy %r28,%r19
	ldo 1(%r19),%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L484
	nop
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 4
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r26
	bl strlen,%r2
	nop
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	comib,<>,n 0,%r28,.L489
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L488
.L491:
	ldw 12(%r3),%r24
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 8(%r3),%r26
	bl strncmp,%r2
	nop
	comib,<>,n 0,%r28,.L490
	ldw 8(%r3),%r28
	b,n .L488
.L490:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L489:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	copy %r28,%r25
	ldw 8(%r3),%r26
	bl strchr,%r2
	nop
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	comib,<> 0,%r28,.L491
	nop
	ldi 0,%r28
.L488:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 4
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L500
	b,n .L493
.L500:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L495
.L493:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L501
	b,n .L496
.L501:
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L495
	b,n .L496
.L495:
	ldo -32(%r3),%r28
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
	b,n .L499
.L496:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
.L499:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 4
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r28
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L503
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L504
.L503:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	comclr,<<= %r28,%r19,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L505
	ldi 0,%r28
	b,n .L504
.L505:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	b,n .L506
.L508:
	ldw 8(%r3),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldb 0(%r28),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L507
	ldw 8(%r3),%r28
	ldo 1(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo 1(%r28),%r20
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r28
	copy %r28,%r24
	copy %r20,%r25
	copy %r19,%r26
	bl memcmp,%r2
	nop
	comib,<>,n 0,%r28,.L507
	ldw 8(%r3),%r28
	b,n .L504
.L507:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L506:
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	comb,>>= %r28,%r19,.L508
	nop
	ldi 0,%r28
.L504:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 4
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r24
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r26
	bl memcpy,%r2
	nop
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	stw %r0,12(%r3)
	stw %r0,8(%r3)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L524
	b,n .L512
.L524:
	ldo -32(%r3),%r28
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
	ldo -32(%r3),%r28
	fstds %fr22,-8(%r28)
	ldi 1,%r28
	stw %r28,8(%r3)
.L512:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L516
	b,n .L527
.L517:
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	fldds 0(%r28),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	ldo -32(%r3),%r28
	fstds %fr22,-8(%r28)
.L516:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L517
	b,n .L518
.L527:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC14,%r28
	ldo RR'.LC14(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L526
	b,n .L518
.L526:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcmp,dbl,!= %fr22,%fr0
	ftest
	b,n .L518
	b,n .L520
.L521:
	ldw 12(%r3),%r28
	ldo -1(%r28),%r28
	stw %r28,12(%r3)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	ldo -32(%r3),%r28
	fstds %fr22,-8(%r28)
.L520:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldil LR'.LC14,%r28
	ldo RR'.LC14(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L521
.L518:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldw 12(%r3),%r19
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	comib,=,n 0,%r28,.L522
	ldo -32(%r3),%r28
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
	ldo -32(%r3),%r28
	fstds %fr22,-8(%r28)
.L522:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 4
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=5
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	stw %r25,0(%r21)
	stw %r26,4(%r21)
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	stw %r23,0(%r21)
	stw %r24,4(%r21)
	ldi 0,%r21
	ldi 0,%r22
	stw %r21,8(%r3)
	stw %r22,12(%r3)
	ldo 0(%r3),%r21
	ldo -40(%r21),%r21
	ldw 4(%r21),%r22
	ldw 0(%r21),%r21
	copy %r3,%r31
	ldo 16(%r31),%r31
	stw %r21,0(%r31)
	stw %r22,4(%r31)
	b,n .L529
.L532:
	copy %r3,%r21
	ldo 16(%r21),%r21
	ldw 0(%r21),%r21
	and %r21,0,%r19
	copy %r3,%r21
	ldo 20(%r21),%r21
	ldw 0(%r21),%r21
	extru %r21,31,1,%r20
	copy %r19,%r21
	or %r21,%r20,%r21
	comib,=,n 0,%r21,.L530
	ldw 8(%r3),%r23
	ldw 12(%r3),%r24
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	ldw 4(%r21),%r22
	ldw 0(%r21),%r21
	add %r22,%r24,%r22
	addc %r21,%r23,%r21
	stw %r21,8(%r3)
	stw %r22,12(%r3)
.L530:
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	ldw 4(%r21),%r22
	ldw 0(%r21),%r21
	shd %r21,%r22,31,%r5
	copy %r22,%r21
	zdep %r21,30,31,%r6
	ldo 0(%r3),%r21
	ldo -48(%r21),%r21
	stw %r5,0(%r21)
	stw %r6,4(%r21)
	copy %r3,%r21
	ldo 16(%r21),%r21
	ldw 0(%r21),%r21
	zdep %r21,0,1,%r21
	copy %r3,%r22
	ldo 20(%r22),%r22
	ldw 0(%r22),%r22
	extru %r22,30,31,%r29
	or %r21,%r29,%r29
	copy %r3,%r21
	ldo 16(%r21),%r21
	ldw 0(%r21),%r21
	extru %r21,30,31,%r28
	copy %r3,%r21
	ldo 16(%r21),%r21
	stw %r28,0(%r21)
	stw %r29,4(%r21)
.L529:
	copy %r3,%r21
	ldo 16(%r21),%r21
	ldw 0(%r21),%r21
	copy %r3,%r22
	ldo 20(%r22),%r22
	ldw 0(%r22),%r22
	or %r21,%r22,%r21
	comib,<> 0,%r21,.L532
	nop
	ldw 8(%r3),%r28
	ldw 12(%r3),%r29
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 4
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 1,%r28
	stw %r28,8(%r3)
	stw %r0,12(%r3)
	b,n .L535
.L537:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	zdep %r28,30,31,%r28
	stw %r28,8(%r3)
.L535:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L538
	ldw 8(%r3),%r28
	comib,=,n 0,%r28,.L538
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<= 0,%r28,.L537
	nop
	b,n .L538
.L540:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L539
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldw 12(%r3),%r19
	ldw 8(%r3),%r28
	or %r19,%r28,%r28
	stw %r28,12(%r3)
.L539:
	ldw 8(%r3),%r28
	extru %r28,30,31,%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L538:
	ldw 8(%r3),%r28
	comib,<> 0,%r28,.L540
	nop
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L541
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L542
.L541:
	ldw 12(%r3),%r28
.L542:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 4
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	copy %r26,%r28
	stb %r28,-36(%r3)
	ldb -36(%r3),%r28
	extrs %r28,31,8,%r28
	comib,<=,n 0,%r28,.L544
	ldb -36(%r3),%r28
	uaddcm %r0,%r28,%r28
	stb %r28,-36(%r3)
.L544:
	ldb -36(%r3),%r28
	extrs %r28,31,8,%r28
	comib,<>,n 0,%r28,.L545
	ldi 7,%r28
	b,n .L546
.L545:
	ldb -36(%r3),%r28
	extrs %r28,31,8,%r28
	zdep %r28,23,24,%r28
	copy %r28,%r26
	bl __clzsi2,%r2
	nop
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	ldo -1(%r28),%r28
.L546:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L548
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	uaddcm %r0,%r28,%r28
	uaddcm %r0,%r29,%r29
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
.L548:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	or %r28,%r19,%r28
	comib,<>,n 0,%r28,.L550
	ldi 63,%r28
	b,n .L551
.L550:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r28,%r25
	copy %r29,%r26
	bl __clzdi2,%r2
	nop
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	ldo -1(%r28),%r28
.L551:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r0,8(%r3)
	b,n .L553
.L555:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L554
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
.L554:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L553:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L555
	nop
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 4
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,28,29,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,3,%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	copy %r3,%r19
	ldo 20(%r19),%r19
	ldw 0(%r19),%r19
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L558
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	copy %r3,%r19
	ldo 20(%r19),%r19
	ldw 0(%r19),%r19
	comb,>>=,n %r28,%r19,.L565
.L558:
	stw %r0,8(%r3)
	b,n .L560
.L561:
	ldw 8(%r3),%r28
	zdep %r28,28,29,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r28
	ldw 8(%r3),%r19
	zdep %r19,28,29,%r19
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r19,%r19
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L560:
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L561
	nop
	b,n .L562
.L563:
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldw 12(%r3),%r28
	addl %r20,%r28,%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
.L562:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	comb,<< %r28,%r19,.L563
	nop
	b,n .L564
.L566:
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r20,%r28,%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
.L565:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L566
	nop
	nop
.L564:
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 4
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L568
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	comb,>>=,n %r28,%r19,.L574
.L568:
	stw %r0,8(%r3)
	b,n .L570
.L571:
	ldw 8(%r3),%r28
	zdep %r28,30,31,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldw 8(%r3),%r28
	zdep %r28,30,31,%r28
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r28,%r28
	ldh 0(%r19),%r19
	extrs %r19,31,16,%r19
	sth %r19,0(%r28)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L570:
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	comb,>> %r28,%r19,.L571
	nop
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L573
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r28
	copy %r3,%r19
	ldo 20(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r28
	copy %r3,%r20
	ldo 16(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r28,%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	b,n .L573
.L575:
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r20
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r20,%r28,%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
.L574:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L575
	nop
	nop
.L573:
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 4
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,29,30,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	depi 0,31,2,%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	copy %r3,%r19
	ldo 20(%r19),%r19
	ldw 0(%r19),%r19
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L577
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	copy %r3,%r19
	ldo 20(%r19),%r19
	ldw 0(%r19),%r19
	comb,>>=,n %r28,%r19,.L584
.L577:
	stw %r0,8(%r3)
	b,n .L579
.L580:
	ldw 8(%r3),%r28
	zdep %r28,29,30,%r28
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	ldw 8(%r3),%r28
	zdep %r28,29,30,%r28
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	ldw 0(%r20),%r20
	addl %r20,%r28,%r28
	ldw 0(%r19),%r19
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L579:
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>> %r28,%r19,.L580
	nop
	b,n .L581
.L582:
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldw 12(%r3),%r28
	addl %r20,%r28,%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
.L581:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	comb,<< %r28,%r19,.L582
	nop
	b,n .L583
.L585:
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	addl %r20,%r28,%r28
	ldb 0(%r19),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
.L584:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	ldo -1(%r28),%r20
	ldo 0(%r3),%r19
	ldo -44(%r19),%r19
	stw %r20,0(%r19)
	comib,<> 0,%r28,.L585
	nop
	nop
.L583:
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 4
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	bl $$remI,%r31
	nop
	copy %r29,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 4
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	stw %r26,0(%r19)
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	copy %r19,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,dbl %fr23,%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 4
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	stw %r26,0(%r19)
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	copy %r19,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,sgl %fr23,%fr22L
	fcpy,sgl %fr22L,%fr4L
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 4
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r10,8(%r3)
	stw %r9,12(%r3)
	stw %r8,16(%r3)
	stw %r7,20(%r3)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldi 0,%r23
	ldi 0,%r24
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __cmpdi2,%r2
	nop
	comib,>,n 1,%r28,.L594
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	fldds 0(%r28),%fr22
	fcnvxf,dbl,dbl %fr22,%fr22
	b,n .L595
.L594:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	and %r28,0,%r7
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r8
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,0,1,%r28
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,30,31,%r6
	or %r28,%r6,%r6
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r5
	or %r7,%r5,%r9
	or %r8,%r6,%r10
	stws %r9,-16(%sp)
	stws %r10,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,dbl %fr23,%fr22
	fadd,dbl %fr22,%fr22,%fr22
.L595:
	fcpy,dbl %fr22,%fr4
	ldw -20(%r3),%r2
	ldw 8(%r3),%r10
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 4
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r10,8(%r3)
	stw %r9,12(%r3)
	stw %r8,16(%r3)
	stw %r7,20(%r3)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldi 0,%r23
	ldi 0,%r24
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __cmpdi2,%r2
	nop
	comib,>,n 1,%r28,.L598
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	fldds 0(%r28),%fr22
	fcnvxf,dbl,sgl %fr22,%fr22L
	b,n .L599
.L598:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	and %r28,0,%r7
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r8
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,0,1,%r28
	ldo 0(%r3),%r19
	ldo -36(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,30,31,%r6
	or %r28,%r6,%r6
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r5
	or %r7,%r5,%r9
	or %r8,%r6,%r10
	stws %r9,-16(%sp)
	stws %r10,-12(%sp)
	fldds -16(%sp),%fr23
	fcnvxf,dbl,sgl %fr23,%fr22L
	fadd,sgl %fr22L,%fr22L,%fr22L
.L599:
	fcpy,sgl %fr22L,%fr4L
	ldw -20(%r3),%r2
	ldw 8(%r3),%r10
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 4
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r26
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	.IMPORT $$remU,MILLICODE
	bl $$remU,%r31
	nop
	copy %r29,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 4
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	sth %r28,-36(%r3)
	stw %r0,8(%r3)
	b,n .L603
.L606:
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldw 8(%r3),%r28
	subi 15,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,<>,n 0,%r28,.L608
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L603:
	ldw 8(%r3),%r28
	comib,>= 15,%r28,.L606
	nop
	b,n .L605
.L608:
	nop
.L605:
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 4
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	sth %r28,-36(%r3)
	stw %r0,8(%r3)
	b,n .L610
.L613:
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldw 8(%r3),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,<>,n 0,%r28,.L615
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L610:
	ldw 8(%r3),%r28
	comib,>= 15,%r28,.L613
	nop
	b,n .L612
.L615:
	nop
.L612:
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata
	.align 4
.LC15:
	.word	1191182336
	.text
	.align 4
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldil LR'.LC15,%r28
	ldo RR'.LC15(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!>= %fr23L,%fr22L
	ftest
	b,n .L620
	b,n .L621
.L620:
	ldo -32(%r3),%r28
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
	b,n .L619
.L621:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fcnvfxt,sgl,sgl %fr22L,%fr22L
	fstws %fr22L,-16(%sp)
	ldws -16(%sp),%r28
.L619:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	sth %r28,-36(%r3)
	stw %r0,12(%r3)
	stw %r0,8(%r3)
	b,n .L623
.L625:
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldw 8(%r3),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L624
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
.L624:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L623:
	ldw 8(%r3),%r28
	comib,>= 15,%r28,.L625
	nop
	ldw 12(%r3),%r28
	extru %r28,31,1,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 4
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	sth %r28,-36(%r3)
	stw %r0,12(%r3)
	stw %r0,8(%r3)
	b,n .L628
.L630:
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldw 8(%r3),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L629
	ldw 12(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,12(%r3)
.L629:
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	stw %r28,8(%r3)
.L628:
	ldw 8(%r3),%r28
	comib,>= 15,%r28,.L630
	nop
	ldw 12(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 4
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r0,8(%r3)
	b,n .L633
.L635:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L634
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
.L634:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L633:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L635
	nop
	ldw 8(%r3),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r0,8(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L640
	ldi 0,%r28
	b,n .L639
.L642:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L641
	ldw 8(%r3),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
.L641:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L640:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<> 0,%r28,.L642
	nop
	ldw 8(%r3),%r28
.L639:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 1,%r28
	stw %r28,8(%r3)
	stw %r0,12(%r3)
	b,n .L644
.L646:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	zdep %r28,30,31,%r28
	stw %r28,8(%r3)
.L644:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L647
	ldw 8(%r3),%r28
	comib,=,n 0,%r28,.L647
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<= 0,%r28,.L646
	nop
	b,n .L647
.L649:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L648
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldw 12(%r3),%r19
	ldw 8(%r3),%r28
	or %r19,%r28,%r28
	stw %r28,12(%r3)
.L648:
	ldw 8(%r3),%r28
	extru %r28,30,31,%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L647:
	ldw 8(%r3),%r28
	comib,<> 0,%r28,.L649
	nop
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L650
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L651
.L650:
	ldw 12(%r3),%r28
.L651:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo -32(%r3),%r28
	fstws %fr5L,-8(%r28)
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!< %fr23L,%fr22L
	ftest
	b,n .L658
	b,n .L660
.L658:
	ldi -1,%r28
	b,n .L655
.L660:
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr23L
	ldo -32(%r3),%r28
	fldws -8(%r28),%fr22L
	fcmp,sgl,!> %fr23L,%fr22L
	ftest
	b,n .L659
	b,n .L661
.L659:
	ldi 1,%r28
	b,n .L655
.L661:
	ldi 0,%r28
.L655:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo -32(%r3),%r28
	fstds %fr7,-16(%r28)
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L668
	b,n .L670
.L668:
	ldi -1,%r28
	b,n .L665
.L670:
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr23
	ldo -32(%r3),%r28
	fldds -16(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L669
	b,n .L671
.L669:
	ldi 1,%r28
	b,n .L665
.L671:
	ldi 0,%r28
.L665:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r31
	ldo -36(%r31),%r31
	stw %r26,0(%r31)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	stw %r25,0(%r31)
	ldo 0(%r3),%r31
	ldo -36(%r31),%r31
	ldw 0(%r31),%r31
	copy %r31,%r20
	extrs %r31,0,1,%r31
	copy %r31,%r19
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	copy %r31,%r29
	extrs %r31,0,1,%r31
	copy %r31,%r28
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr25L
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr25L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	xmpyu %fr24L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	xmpyu %fr23L,%fr22L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r24,%r20,%r19
	copy %r29,%r22
	addl %r28,%r19,%r21
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r31
	ldo -36(%r31),%r31
	stw %r26,0(%r31)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	stw %r25,0(%r31)
	ldo 0(%r3),%r31
	ldo -36(%r31),%r31
	ldw 0(%r31),%r31
	copy %r31,%r20
	ldi 0,%r19
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	copy %r31,%r29
	ldi 0,%r28
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr25L
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr25L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	xmpyu %fr24L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	xmpyu %fr23L,%fr22L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r24,%r20,%r19
	copy %r29,%r22
	addl %r28,%r19,%r21
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r0,12(%r3)
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r0,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L677
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldi 1,%r28
	stw %r28,12(%r3)
.L677:
	stb %r0,8(%r3)
	b,n .L678
.L681:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L679
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
.L679:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extrs %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldb 8(%r3),%r28
	extrs %r28,31,8,%r28
	extru %r28,31,8,%r28
	ldo 1(%r28),%r28
	extru %r28,31,8,%r28
	stb %r28,8(%r3)
.L678:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L680
	ldb 8(%r3),%r28
	extru %r28,31,8,%r19
	ldi 31,%r28
	comb,>>= %r28,%r19,.L681
	nop
.L680:
	ldw 12(%r3),%r28
	comib,=,n 0,%r28,.L682
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r28
	b,n .L684
.L682:
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
.L684:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 4
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r0,8(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L686
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	stw %r28,8(%r3)
.L686:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L687
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	stw %r28,8(%r3)
.L687:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldi 0,%r24
	copy %r28,%r25
	copy %r19,%r26
	bl __udivmodsi4,%r2
	nop
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	comib,=,n 0,%r28,.L688
	ldw 12(%r3),%r28
	sub %r0,%r28,%r28
	stw %r28,12(%r3)
.L688:
	ldw 12(%r3),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 4
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r0,8(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L691
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldi 1,%r28
	stw %r28,8(%r3)
.L691:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<=,n 0,%r28,.L692
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r0,%r28,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L692:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	ldi 1,%r24
	copy %r28,%r25
	copy %r19,%r26
	bl __udivmodsi4,%r2
	nop
	stw %r28,12(%r3)
	ldw 8(%r3),%r28
	comib,=,n 0,%r28,.L693
	ldw 12(%r3),%r28
	sub %r0,%r28,%r28
	stw %r28,12(%r3)
.L693:
	ldw 12(%r3),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 4
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r20
	copy %r25,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	copy %r20,%r28
	sth %r28,-36(%r3)
	copy %r19,%r28
	sth %r28,-40(%r3)
	ldi 1,%r28
	sth %r28,8(%r3)
	sth %r0,10(%r3)
	b,n .L696
.L698:
	ldh -40(%r3),%r28
	zdep %r28,30,31,%r28
	sth %r28,-40(%r3)
	ldh 8(%r3),%r28
	zdep %r28,30,31,%r28
	sth %r28,8(%r3)
.L696:
	ldh -40(%r3),%r28
	extru %r28,31,16,%r19
	ldh -36(%r3),%r28
	extru %r28,31,16,%r28
	comb,<<=,n %r28,%r19,.L699
	ldh 8(%r3),%r28
	extru %r28,31,16,%r28
	comib,=,n 0,%r28,.L699
	ldh -40(%r3),%r28
	extrs %r28,31,16,%r28
	comib,<= 0,%r28,.L698
	nop
	b,n .L699
.L701:
	ldh -36(%r3),%r28
	extru %r28,31,16,%r19
	ldh -40(%r3),%r28
	extru %r28,31,16,%r28
	comb,>>,n %r28,%r19,.L700
	ldh -36(%r3),%r19
	ldh -40(%r3),%r28
	sub %r19,%r28,%r28
	sth %r28,-36(%r3)
	ldh 10(%r3),%r19
	ldh 8(%r3),%r28
	or %r19,%r28,%r28
	sth %r28,10(%r3)
.L700:
	ldh 8(%r3),%r28
	extru %r28,31,16,%r28
	extru %r28,30,31,%r28
	sth %r28,8(%r3)
	ldh -40(%r3),%r28
	extru %r28,31,16,%r28
	extru %r28,30,31,%r28
	sth %r28,-40(%r3)
.L699:
	ldh 8(%r3),%r28
	extru %r28,31,16,%r28
	comib,<> 0,%r28,.L701
	nop
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L702
	ldh -36(%r3),%r28
	extru %r28,31,16,%r28
	b,n .L703
.L702:
	ldh 10(%r3),%r28
	extru %r28,31,16,%r28
.L703:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 1,%r28
	stw %r28,8(%r3)
	stw %r0,12(%r3)
	b,n .L705
.L707:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	zdep %r28,30,31,%r28
	stw %r28,8(%r3)
.L705:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L708
	ldw 8(%r3),%r28
	comib,=,n 0,%r28,.L708
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,<= 0,%r28,.L707
	nop
	b,n .L708
.L710:
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>,n %r28,%r19,.L709
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	sub %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r19,0(%r28)
	ldw 12(%r3),%r19
	ldw 8(%r3),%r28
	or %r19,%r28,%r28
	stw %r28,12(%r3)
.L709:
	ldw 8(%r3),%r28
	extru %r28,30,31,%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
.L708:
	ldw 8(%r3),%r28
	comib,<> 0,%r28,.L710
	nop
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L711
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	b,n .L712
.L711:
	ldw 12(%r3),%r28
.L712:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 32,%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	and %r19,%r28,%r28
	comib,=,n 0,%r28,.L714
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r0,4(%r28)
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r28
	copy %r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	b,n .L715
.L714:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L716
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	b,n .L718
.L716:
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r21
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	sub %r21,%r28,%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	or %r19,%r28,%r28
	copy %r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
.L715:
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
.L718:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 4
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 32,%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	and %r19,%r28,%r28
	comib,=,n 0,%r28,.L720
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	ldo -1(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	copy %r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	b,n .L721
.L720:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L722
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	b,n .L724
.L722:
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	ldw 8(%r3),%r20
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	or %r19,%r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
.L721:
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
.L724:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 4
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=192,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=17
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,192(%r30)
	stw %r18,80(%r3)
	stw %r17,84(%r3)
	stw %r16,88(%r3)
	stw %r15,92(%r3)
	stw %r14,96(%r3)
	stw %r13,100(%r3)
	stw %r12,104(%r3)
	stw %r11,108(%r3)
	stw %r10,112(%r3)
	stw %r9,116(%r3)
	stw %r8,120(%r3)
	stw %r7,124(%r3)
	stw %r6,128(%r3)
	stw %r5,132(%r3)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	stw %r25,0(%r31)
	stw %r26,4(%r31)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	extru %r31,7,8,%r31
	stw %r31,12(%r3)
	stw %r0,8(%r3)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	extru %r31,23,24,%r20
	ldo 20(%r3),%r19
	stw %r20,0(%r19)
	ldo 16(%r3),%r21
	stw %r0,0(%r21)
	ldo 16(%r3),%r28
	ldw 0(%r28),%r19
	and %r19,0,%r19
	ldo 24(%r3),%r28
	stw %r19,0(%r28)
	zdepi -1,23,8,%r31
	ldo 20(%r3),%r20
	ldw 0(%r20),%r20
	and %r20,%r31,%r21
	ldo 28(%r3),%r20
	stw %r21,0(%r20)
	ldw 8(%r3),%r28
	ldo 24(%r3),%r21
	ldw 0(%r21),%r21
	or %r28,%r21,%r28
	ldo 32(%r3),%r21
	stw %r28,0(%r21)
	ldw 12(%r3),%r19
	ldo 28(%r3),%r28
	ldw 0(%r28),%r28
	or %r19,%r28,%r19
	ldo 36(%r3),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	zdep %r31,23,24,%r31
	ldo 0(%r3),%r25
	ldo -36(%r25),%r25
	ldw 0(%r25),%r25
	extru %r25,7,8,%r20
	or %r31,%r20,%r20
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r31
	extru %r31,7,8,%r19
	and %r19,0,%r28
	ldo 40(%r3),%r21
	stw %r28,0(%r21)
	ldil L'16711680,%r31
	and %r20,%r31,%r28
	ldo 44(%r3),%r21
	stw %r28,0(%r21)
	ldo 32(%r3),%r19
	ldw 0(%r19),%r20
	ldo 40(%r3),%r19
	ldw 0(%r19),%r19
	or %r20,%r19,%r20
	ldo 48(%r3),%r19
	stw %r20,0(%r19)
	ldo 36(%r3),%r20
	ldw 0(%r20),%r21
	ldo 44(%r3),%r20
	ldw 0(%r20),%r20
	or %r21,%r20,%r21
	ldo 52(%r3),%r20
	stw %r21,0(%r20)
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	zdep %r19,7,8,%r19
	ldo 0(%r3),%r20
	ldo -36(%r20),%r20
	ldw 0(%r20),%r20
	extru %r20,23,24,%r29
	or %r19,%r29,%r29
	ldo 0(%r3),%r19
	ldo -40(%r19),%r19
	ldw 0(%r19),%r19
	extru %r19,23,24,%r28
	and %r28,0,%r19
	ldo 56(%r3),%r21
	stw %r19,0(%r21)
	copy %r29,%r21
	depi 0,31,24,%r21
	ldo 60(%r3),%r20
	stw %r21,0(%r20)
	ldo 48(%r3),%r28
	ldw 0(%r28),%r19
	ldo 56(%r3),%r28
	ldw 0(%r28),%r28
	or %r19,%r28,%r1
	ldo 52(%r3),%r19
	ldw 0(%r19),%r20
	ldo 60(%r3),%r19
	ldw 0(%r19),%r19
	or %r20,%r19,%r2
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	shd %r28,%r29,24,%r21
	ldo 64(%r3),%r20
	stw %r21,0(%r20)
	copy %r29,%r28
	zdep %r28,23,24,%r20
	ldo 68(%r3),%r19
	stw %r20,0(%r19)
	ldo 64(%r3),%r21
	ldw 0(%r21),%r17
	extru %r17,31,8,%r17
	ldo 68(%r3),%r28
	ldw 0(%r28),%r18
	and %r18,0,%r18
	or %r1,%r17,%r13
	or %r2,%r18,%r14
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	shd %r28,%r29,8,%r15
	copy %r29,%r28
	zdep %r28,7,8,%r16
	zdepi -1,23,8,%r28
	and %r15,%r28,%r11
	and %r16,0,%r12
	or %r13,%r11,%r7
	or %r14,%r12,%r8
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,23,24,%r9
	ldi 0,%r10
	ldil L'16711680,%r28
	and %r9,%r28,%r5
	and %r10,0,%r6
	or %r7,%r5,%r23
	or %r8,%r6,%r24
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,7,8,%r21
	ldi 0,%r22
	or %r23,%r21,%r20
	ldo 72(%r3),%r19
	stw %r20,0(%r19)
	or %r24,%r22,%r19
	ldo 76(%r3),%r28
	stw %r19,0(%r28)
	ldo 72(%r3),%r20
	ldw 0(%r20),%r28
	ldw 4(%r20),%r29
	ldw -20(%r3),%r2
	ldw 80(%r3),%r18
	ldw 84(%r3),%r17
	ldw 88(%r3),%r16
	ldw 92(%r3),%r15
	ldw 96(%r3),%r14
	ldw 100(%r3),%r13
	ldw 104(%r3),%r12
	ldw 108(%r3),%r11
	ldw 112(%r3),%r10
	ldw 116(%r3),%r9
	ldw 120(%r3),%r8
	ldw 124(%r3),%r7
	ldw 128(%r3),%r6
	ldw 132(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 4
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,7,8,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,23,24,%r20
	zdepi -1,23,8,%r28
	and %r20,%r28,%r28
	or %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,23,24,%r20
	ldil L'16711680,%r28
	and %r20,%r28,%r28
	or %r19,%r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	zdep %r28,7,8,%r28
	or %r19,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 4
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r19
	zdepi -1,31,16,%r28
	comb,<<,n %r28,%r19,.L730
	ldi 16,%r28
	b,n .L731
.L730:
	ldi 0,%r28
.L731:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 16,%r28,%r28
	ldw 8(%r3),%r19
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r19
	zdepi -1,23,8,%r28
	and %r19,%r28,%r28
	comib,<>,n 0,%r28,.L732
	ldi 8,%r28
	b,n .L733
.L732:
	ldi 0,%r28
.L733:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 8,%r28,%r28
	ldw 8(%r3),%r19
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r19
	ldi 240,%r28
	and %r19,%r28,%r28
	comib,<>,n 0,%r28,.L734
	ldi 4,%r28
	b,n .L735
.L734:
	ldi 0,%r28
.L735:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 4,%r28,%r28
	ldw 8(%r3),%r19
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r19
	ldi 12,%r28
	and %r19,%r28,%r28
	comib,<>,n 0,%r28,.L736
	ldi 2,%r28
	b,n .L737
.L736:
	ldi 0,%r28
.L737:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 2,%r28,%r28
	ldw 8(%r3),%r19
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r19
	ldi 2,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	extru %r28,31,8,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldw 8(%r3),%r28
	subi 2,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 4
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,<=,n %r28,%r19,.L740
	ldi 0,%r28
	b,n .L745
.L740:
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>=,n %r28,%r19,.L742
	ldi 2,%r28
	b,n .L745
.L742:
	ldw 12(%r3),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L743
	ldi 0,%r28
	b,n .L745
.L743:
	ldw 12(%r3),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>=,n %r28,%r19,.L744
	ldi 2,%r28
	b,n .L745
.L744:
	ldi 1,%r28
.L745:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 4
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 0(%r28),%r23
	ldw 4(%r28),%r24
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r25
	ldw 4(%r28),%r26
	bl __cmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,31,16,%r28
	comib,<>,n 0,%r28,.L749
	ldi 16,%r28
	b,n .L750
.L749:
	ldi 0,%r28
.L750:
	stw %r28,12(%r3)
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	extru %r28,31,8,%r28
	comib,<>,n 0,%r28,.L751
	ldi 8,%r28
	b,n .L752
.L751:
	ldi 0,%r28
.L752:
	stw %r28,12(%r3)
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	extru %r28,31,4,%r28
	comib,<>,n 0,%r28,.L753
	ldi 4,%r28
	b,n .L754
.L753:
	ldi 0,%r28
.L754:
	stw %r28,12(%r3)
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	extru %r28,31,2,%r28
	comib,<>,n 0,%r28,.L755
	ldi 2,%r28
	b,n .L756
.L755:
	ldi 0,%r28
.L756:
	stw %r28,12(%r3)
	ldw 8(%r3),%r19
	ldw 12(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,31,2,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldw 8(%r3),%r28
	uaddcm %r0,%r28,%r28
	extru %r28,31,1,%r19
	ldw 8(%r3),%r28
	extru %r28,30,31,%r28
	subi 2,%r28,%r28
	sub %r0,%r19,%r19
	and %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 4
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldi 32,%r28
	stw %r28,8(%r3)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	and %r19,%r28,%r28
	comib,=,n 0,%r28,.L759
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r0,0(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r28
	sub %r20,%r28,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	b,n .L760
.L759:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,<>,n 0,%r28,.L761
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	b,n .L763
.L761:
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r20
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	sub %r20,%r28,%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r19,32,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r20
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	or %r19,%r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
.L760:
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
.L763:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 4
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldi 16,%r28
	stw %r28,8(%r3)
	ldi -1,%r19
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stw %r28,12(%r3)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r19
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r19
	ldw 12(%r3),%r28
	and %r19,%r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r20
	ldw 12(%r3),%r28
	and %r20,%r28,%r20
	ldw 8(%r3),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	addl %r19,%r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	copy %r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r19
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r19
	ldw 12(%r3),%r28
	and %r19,%r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r19
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r19,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r19
	ldw 12(%r3),%r28
	and %r19,%r28,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r20
	ldw 12(%r3),%r28
	and %r20,%r28,%r20
	ldw 8(%r3),%r28
	subi 31,%r28,%r28
	mtsar %r28
	zvdep %r20,32,%r28
	addl %r19,%r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,4(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	addl %r19,%r28,%r28
	copy %r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r20
	ldw 8(%r3),%r28
	mtsar %r28
	vshd %r0,%r20,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	addl %r19,%r28,%r28
	copy %r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 4
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldw 12(%r3),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r25
	copy %r19,%r26
	bl __muldsi3,%r2
	nop
	ldo 8(%r3),%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	ldw 8(%r3),%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	copy %r3,%r28
	ldo 20(%r28),%r28
	fldws 0(%r28),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r20
	fldws 12(%r3),%fr23L
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r28
	addl %r20,%r28,%r28
	addl %r19,%r28,%r28
	copy %r28,%r19
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldo 8(%r3),%r28
	ldo 16(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 4
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	copy %r28,%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	xor %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,15,16,%r28
	ldw 8(%r3),%r19
	xor %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,23,24,%r28
	ldw 8(%r3),%r19
	xor %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,27,28,%r28
	ldw 8(%r3),%r19
	xor %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,31,4,%r28
	ldil L'32768,%r19
	ldo -5738(%r19),%r19
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 4
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,15,16,%r28
	ldw 8(%r3),%r19
	xor %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,23,24,%r28
	ldw 8(%r3),%r19
	xor %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,27,28,%r28
	ldw 8(%r3),%r19
	xor %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,31,4,%r28
	ldil L'32768,%r19
	ldo -5738(%r19),%r19
	subi 31,%r28,%r28
	mtsar %r28
	vextrs %r19,32,%r28
	extru %r28,31,1,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.align 4
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=128,NO_CALLS,SAVE_SP,ENTRY_GR=9
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r10,20(%r3)
	stw %r9,24(%r3)
	stw %r8,28(%r3)
	stw %r7,32(%r3)
	stw %r6,36(%r3)
	stw %r5,40(%r3)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	stw %r25,0(%r31)
	stw %r26,4(%r31)
	ldo 0(%r3),%r31
	ldo -40(%r31),%r31
	ldw 0(%r31),%r25
	ldw 4(%r31),%r26
	stw %r25,8(%r3)
	stw %r26,12(%r3)
	ldw 8(%r3),%r31
	zdep %r31,0,1,%r31
	ldw 12(%r3),%r25
	extru %r25,30,31,%r20
	or %r31,%r20,%r20
	ldw 8(%r3),%r31
	extru %r31,30,31,%r19
	ldil L'1431650304,%r31
	ldo 5461(%r31),%r31
	and %r19,%r31,%r9
	ldil L'1431650304,%r31
	ldo 5461(%r31),%r31
	and %r20,%r31,%r10
	ldw 8(%r3),%r19
	ldw 12(%r3),%r20
	sub %r20,%r10,%r20
	subb %r19,%r9,%r19
	stw %r19,8(%r3)
	stw %r20,12(%r3)
	ldw 8(%r3),%r19
	zdep %r19,1,2,%r19
	ldw 12(%r3),%r20
	extru %r20,29,30,%r29
	or %r19,%r29,%r29
	ldw 8(%r3),%r19
	extru %r19,29,30,%r28
	ldil L'858996736,%r19
	ldo -3277(%r19),%r19
	and %r28,%r19,%r7
	ldil L'858996736,%r19
	ldo -3277(%r19),%r19
	and %r29,%r19,%r8
	ldw 8(%r3),%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r5
	ldw 12(%r3),%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r6
	add %r6,%r8,%r29
	addc %r5,%r7,%r28
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	ldw 8(%r3),%r28
	zdep %r28,3,4,%r28
	ldw 12(%r3),%r19
	extru %r19,27,28,%r22
	or %r28,%r22,%r22
	ldw 8(%r3),%r28
	extru %r28,27,28,%r21
	ldw 8(%r3),%r28
	ldw 12(%r3),%r29
	add %r29,%r22,%r29
	addc %r28,%r21,%r28
	ldil L'252641280,%r19
	ldo 3855(%r19),%r19
	and %r28,%r19,%r19
	stw %r19,8(%r3)
	ldil L'252641280,%r19
	ldo 3855(%r19),%r19
	and %r29,%r19,%r28
	stw %r28,12(%r3)
	ldw 12(%r3),%r19
	ldw 8(%r3),%r28
	extru %r28,31,32,%r24
	ldi 0,%r23
	copy %r24,%r28
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,15,16,%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	ldw 0(%r19),%r19
	addl %r19,%r28,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,23,24,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	addl %r19,%r28,%r28
	extru %r28,31,7,%r28
	ldw 20(%r3),%r10
	ldw 24(%r3),%r9
	ldw 28(%r3),%r8
	ldw 32(%r3),%r7
	ldw 36(%r3),%r6
	ldw 40(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 4
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	stw %r26,0(%r28)
	ldo 0(%r3),%r28
	ldo -36(%r28),%r28
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,30,31,%r19
	ldil L'1431650304,%r28
	ldo 5461(%r28),%r28
	and %r19,%r28,%r28
	ldw 8(%r3),%r19
	sub %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,29,30,%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r19
	ldw 8(%r3),%r20
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r20,%r28,%r28
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,27,28,%r19
	ldw 8(%r3),%r28
	addl %r19,%r28,%r19
	ldil L'252641280,%r28
	ldo 3855(%r28),%r28
	and %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,15,16,%r28
	ldw 8(%r3),%r19
	addl %r19,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extru %r28,23,24,%r19
	ldw 8(%r3),%r28
	addl %r19,%r28,%r28
	extru %r28,31,6,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstds %fr5,-8(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r24,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r28
	extru %r28,31,8,%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	stw %r19,0(%r28)
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr22
	fstds %fr22,8(%r3)
.L782:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L779
	fldds 8(%r3),%fr23
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	fstds %fr22,8(%r3)
.L779:
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -44(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L787
	ldo -32(%r3),%r28
	fldds -8(%r28),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	ldo -32(%r3),%r28
	fstds %fr22,-8(%r28)
	b,n .L782
.L787:
	nop
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L783
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr23
	fldds 8(%r3),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	b,n .L785
.L783:
	fldds 8(%r3),%fr22
.L785:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata
	.align 4
.LC17:
	.word	1065353216
	.text
	.align 4
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r3),%r28
	fstws %fr4L,-4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r28
	extru %r28,31,8,%r28
	stw %r28,12(%r3)
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	fldws 0(%r28),%fr22L
	fstws %fr22L,8(%r3)
.L792:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,31,1,%r28
	comib,=,n 0,%r28,.L789
	fldws 8(%r3),%fr23L
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fmpy,sgl %fr23L,%fr22L,%fr22L
	fstws %fr22L,8(%r3)
.L789:
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r19
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r19,0(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 0(%r28),%r28
	comib,=,n 0,%r28,.L797
	ldo -32(%r3),%r28
	fldws -4(%r28),%fr22L
	fmpy,sgl %fr22L,%fr22L,%fr22L
	ldo -32(%r3),%r28
	fstws %fr22L,-4(%r28)
	b,n .L792
.L797:
	nop
	ldw 12(%r3),%r28
	comib,=,n 0,%r28,.L793
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	fldws 0(%r28),%fr23L
	fldws 8(%r3),%fr22L
	fdiv,sgl %fr23L,%fr22L,%fr22L
	b,n .L795
.L793:
	fldws 8(%r3),%fr22L
.L795:
	fcpy,sgl %fr22L,%fr4L
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 4
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	copy %r3,%r19
	ldo 16(%r19),%r19
	stw %r28,0(%r19)
	stw %r29,4(%r19)
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L799
	ldi 0,%r28
	b,n .L804
.L799:
	ldw 8(%r3),%r19
	copy %r3,%r28
	ldo 16(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>=,n %r28,%r19,.L801
	ldi 2,%r28
	b,n .L804
.L801:
	ldw 12(%r3),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,<<=,n %r28,%r19,.L802
	ldi 0,%r28
	b,n .L804
.L802:
	ldw 12(%r3),%r19
	copy %r3,%r28
	ldo 20(%r28),%r28
	ldw 0(%r28),%r28
	comb,>>=,n %r28,%r19,.L803
	ldi 2,%r28
	b,n .L804
.L803:
	ldi 1,%r28
.L804:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	stw %r25,0(%r28)
	stw %r26,4(%r28)
	ldo 0(%r3),%r28
	ldo -48(%r28),%r28
	stw %r23,0(%r28)
	stw %r24,4(%r28)
	ldo 0(%r3),%r28
	ldo -40(%r28),%r28
	ldw 4(%r28),%r29
	ldw 0(%r28),%r28
	ldo 0(%r3),%r19
	ldo -48(%r19),%r19
	ldw 4(%r19),%r20
	ldw 0(%r19),%r19
	copy %r19,%r23
	copy %r20,%r24
	copy %r28,%r25
	copy %r29,%r26
	bl __ucmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
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
