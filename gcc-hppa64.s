	.LEVEL 2.0w
	.text
	.align 8
.globl make_ti
	.type	make_ti, @function
make_ti:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r28
	std %r28,24(%r3)
	ldd 16(%r3),%r28
	ldd 24(%r3),%r29
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	make_ti, .-make_ti
	.align 8
.globl make_tu
	.type	make_tu, @function
make_tu:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r28
	std %r28,24(%r3)
	ldd 16(%r3),%r28
	ldd 24(%r3),%r29
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	make_tu, .-make_tu
	.align 8
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	std %r31,16(%r3)
	ldd 16(%r3),%r19
	ldd 8(%r3),%r31
	cmpb,*<<=,n %r31,%r19,.L6
	ldd 16(%r3),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,8(%r3)
	b,n .L7
.L8:
	ldd 16(%r3),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r31
	ldo -1(%r31),%r31
	std %r31,8(%r3)
	ldd 16(%r3),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 8(%r3),%r31
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L7:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L8
	nop
	b,n .L9
.L6:
	ldd 16(%r3),%r19
	ldd 8(%r3),%r31
	cmpb,*=,n %r31,%r19,.L9
	b,n .L10
.L11:
	ldd 16(%r3),%r19
	ldo 1(%r19),%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r31
	ldo 1(%r31),%r20
	std %r20,8(%r3)
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L10:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L11
	nop
.L9:
	ldd 0(%r28),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 8
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	std %r23,24(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	std %r31,16(%r3)
	ldw 16(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,16(%r28)
	b,n .L14
.L16:
	ldd 24(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,24(%r28)
	ldd 16(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r3)
.L14:
	ldd 24(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L15
	ldd 16(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldd 8(%r3),%r31
	stb %r19,0(%r31)
	ldd 8(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldw 16(%r28),%r19
	cmpb,<> %r31,%r19,.L16
	nop
.L15:
	ldd 24(%r28),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L17
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	b,n .L18
.L17:
	ldi 0,%r28
.L18:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 8
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,8(%r28)
	b,n .L20
.L22:
	ldd 8(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r3)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L20:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L21
	ldd 8(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r28),%r19
	cmpb,<> %r31,%r19,.L22
	nop
.L21:
	ldd 16(%r28),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L23
	ldd 8(%r3),%r28
	b,n .L25
.L23:
	ldi 0,%r28
.L25:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 8
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	std %r31,16(%r3)
	b,n .L27
.L29:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 8(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r3)
	ldd 16(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,16(%r3)
.L27:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L28
	ldd 8(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldd 16(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	cmpb,= %r31,%r19,.L29
	nop
.L28:
	ldd 16(%r28),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L30
	ldd 8(%r3),%r28
	ldb 0(%r28),%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r31
	ldd 16(%r3),%r28
	ldb 0(%r28),%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	b,n .L31
.L30:
	ldi 0,%r28
.L31:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 8
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	std %r31,16(%r3)
	b,n .L34
.L35:
	ldd 16(%r3),%r19
	ldo 1(%r19),%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r31
	ldo 1(%r31),%r20
	std %r20,8(%r3)
	ldb 0(%r19),%r19
	extrd,u %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L34:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L35
	nop
	ldd 0(%r28),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 8
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,8(%r28)
	b,n .L38
.L40:
	ldd 8(%r3),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r28),%r19
	cmpb,<>,n %r31,%r19,.L38
	ldd 8(%r3),%r31
	ldd 16(%r28),%r28
	add,l %r31,%r28,%r28
	b,n .L39
.L38:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L40
	nop
	ldi 0,%r28
.L39:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 8
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	b,n .L42
.L43:
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r19
	ldd 8(%r3),%r31
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 8(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r3)
.L42:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L43
	nop
	ldd 0(%r28),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	b,n .L46
.L47:
	ldd 8(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
.L46:
	ldd 8(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 0(%r28),%r31
	stb %r19,0(%r31)
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L47
	nop
	ldd 0(%r28),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,8(%r28)
	b,n .L50
.L52:
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
.L50:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L51
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r28),%r19
	cmpb,<> %r31,%r19,.L52
	nop
.L51:
	ldd 0(%r28),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 8
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r19
	copy %r26,%r28
	stw %r25,8(%r19)
.L57:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	ldw 8(%r19),%r20
	cmpclr,<> %r31,%r20,%r0
	b,n .L56
.L55:
	copy %r28,%r31
	ldo 1(%r31),%r28
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r20
	ldi 0,%r31
	cmpb,*<> %r31,%r20,.L57
	nop
	ldi 0,%r28
.L56:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 8
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	b,n .L59
.L61:
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r28)
.L59:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 8(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<>,n %r31,%r19,.L60
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L61
	nop
.L60:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldd 8(%r28),%r28
	ldb 0(%r28),%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 8
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	b,n .L64
.L65:
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
.L64:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L65
	nop
	ldd 0(%r28),%r31
	ldd 8(%r3),%r28
	sub %r31,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 8
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	std %r31,16(%r3)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<>,n %r19,%r31,.L70
	ldi 0,%r28
	b,n .L69
.L72:
	ldd 8(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r3)
	ldd 16(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,16(%r3)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L70:
	ldd 8(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L71
	ldd 16(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L71
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L71
	ldd 8(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldd 16(%r3),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	cmpb,= %r31,%r19,.L72
	nop
.L71:
	ldd 8(%r3),%r28
	ldb 0(%r28),%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r31
	ldd 16(%r3),%r28
	ldb 0(%r28),%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
.L69:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 8
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	std %r31,16(%r3)
	b,n .L74
.L75:
	ldd 8(%r3),%r31
	ldo 1(%r31),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 16(%r3),%r31
	stb %r19,0(%r31)
	ldd 16(%r3),%r31
	ldo 1(%r31),%r31
	ldd 8(%r3),%r19
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 16(%r3),%r31
	ldo 2(%r31),%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r31
	ldo 2(%r31),%r31
	std %r31,8(%r3)
	ldd 16(%r28),%r31
	ldo -2(%r31),%r31
	std %r31,16(%r28)
.L74:
	ldd 16(%r28),%r19
	ldi 1,%r31
	cmpb,*< %r31,%r19,.L75
	nop
	nop
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 8
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	depwi -1,26,1,%r28
	extrd,u %r28,63,32,%r28
	ldo -97(%r28),%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 25,%r31
	cmpclr,>>= %r31,%r19,%r0
	ldi 0,%r28
.L77:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 8
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 127,%r31
	cmpclr,>>= %r31,%r19,%r0
	ldi 0,%r28
.L80:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 8
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 32,%r31
	cmpb,=,n %r31,%r19,.L83
	ldw 0(%r28),%r28
	cmpib,<>,n 9,%r28,.L84
.L83:
	ldi 1,%r28
	b,n .L85
.L84:
	ldi 0,%r28
.L85:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldi 31,%r31
	cmpb,>>=,n %r31,%r19,.L88
	ldw 0(%r28),%r31
	ldi 127,%r28
	cmpb,<>,n %r28,%r31,.L89
.L88:
	ldi 1,%r28
	b,n .L90
.L89:
	ldi 0,%r28
.L90:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 8
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpiclr,>>= 9,%r31,%r0
	ldi 0,%r28
.L93:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 8
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -33(%r28),%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 93,%r31
	cmpclr,>>= %r31,%r19,%r0
	ldi 0,%r28
.L96:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 8
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -97(%r28),%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 25,%r31
	cmpclr,>>= %r31,%r19,%r0
	ldi 0,%r28
.L99:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 8
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -32(%r28),%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 94,%r31
	cmpclr,>>= %r31,%r19,%r0
	ldi 0,%r28
.L102:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 8
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 32,%r31
	cmpb,=,n %r31,%r19,.L105
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -9(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,<<,n 4,%r28,.L106
.L105:
	ldi 1,%r28
	b,n .L107
.L106:
	ldi 0,%r28
.L107:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 8
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -65(%r28),%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 25,%r31
	cmpclr,>>= %r31,%r19,%r0
	ldi 0,%r28
.L110:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 31,%r31
	cmpb,>>=,n %r31,%r19,.L113
	ldw 0(%r28),%r31
	ldo -127(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 32,%r31
	cmpb,>>=,n %r31,%r19,.L113
	ldw 0(%r28),%r19
	ldil L'-16384,%r31
	ldo 8152(%r31),%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	cmpib,>>=,n 1,%r31,.L113
	ldw 0(%r28),%r31
	ldil L'-65536,%r28
	ldo 7(%r28),%r28
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	cmpib,<<,n 2,%r28,.L114
.L113:
	ldi 1,%r28
	b,n .L115
.L114:
	ldi 0,%r28
.L115:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpiclr,>>= 9,%r31,%r0
	ldi 0,%r28
.L118:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 8
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 254,%r31
	cmpb,<<,n %r31,%r19,.L121
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	extrd,u %r28,63,32,%r28
	extrw,u %r28,31,7,%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 32,%r31
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L122:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L123
.L121:
	ldw 0(%r28),%r19
	ldil L'16384,%r31
	ldo -8153(%r31),%r31
	cmpb,>>=,n %r31,%r19,.L124
	ldw 0(%r28),%r19
	ldil L'-16384,%r31
	ldo 8150(%r31),%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldil L'49152,%r31
	ldo -2091(%r31),%r31
	cmpb,>>=,n %r31,%r19,.L124
	ldw 0(%r28),%r19
	ldil L'-57344,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldi 8184,%r31
	cmpb,<<,n %r31,%r19,.L125
.L124:
	ldi 1,%r28
	b,n .L123
.L125:
	ldw 0(%r28),%r19
	ldil L'-65536,%r31
	ldo 4(%r31),%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpb,<<,n %r31,%r19,.L126
	ldw 0(%r28),%r31
	depwi,z -1,30,15,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	depwi,z -1,30,15,%r28
	cmpb,<>,n %r28,%r31,.L127
.L126:
	ldi 0,%r28
	b,n .L123
.L127:
	ldi 1,%r28
.L123:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r31
	ldo -48(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpib,>>=,n 9,%r31,.L129
	ldw 0(%r28),%r28
	depwi -1,26,1,%r28
	extrd,u %r28,63,32,%r28
	ldo -97(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,<<,n 5,%r28,.L130
.L129:
	ldi 1,%r28
	b,n .L131
.L130:
	ldi 0,%r28
.L131:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 8
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrw,u %r28,31,7,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.section	.rodata
	.align 8
.LC0:
	.word	0
	.word	0
	.text
	.align 8
.globl fdim
	.type	fdim, @function
fdim:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L136
	fldd 0(%r28),%fr22
	b,n .L137
.L136:
	fldd 8(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L138
	fldd 8(%r28),%fr22
	b,n .L137
.L138:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L142
	b,n .L143
.L142:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fsub,dbl %fr23,%fr22,%fr22
	b,n .L137
.L143:
	addil LT'.LC0,%r27
	copy %r1,%r28
	ldd RT'.LC0(%r28),%r28
	fldd 0(%r28),%fr22
.L137:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.section	.rodata
	.align 4
.LC1:
	.word	0
	.text
	.align 8
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L145
	fldw 0(%r28),%fr22R
	b,n .L146
.L145:
	fldw 8(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L147
	fldw 8(%r28),%fr22R
	b,n .L146
.L147:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!> %fr23R,%fr22R
	ftest
	b,n .L151
	b,n .L152
.L151:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fsub,sgl %fr23R,%fr22R,%fr22R
	b,n .L146
.L152:
	addil LT'.LC1,%r27
	copy %r1,%r28
	ldd RT'.LC1(%r28),%r28
	fldw 0(%r28),%fr22R
.L146:
	fcpy,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 8
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L154
	fldd 8(%r28),%fr22
	b,n .L155
.L154:
	fldd 8(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L156
	fldd 0(%r28),%fr22
	b,n .L155
.L156:
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldd 8(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L157
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L158
	fldd 8(%r28),%fr22
	b,n .L155
.L158:
	fldd 0(%r28),%fr22
	b,n .L155
.L157:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L163
	b,n .L164
.L163:
	fldd 8(%r28),%fr22
	b,n .L155
.L164:
	fldd 0(%r28),%fr22
.L155:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L166
	fldw 8(%r28),%fr22R
	b,n .L167
.L166:
	fldw 8(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L168
	fldw 0(%r28),%fr22R
	b,n .L167
.L168:
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldw 8(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L169
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L170
	fldw 8(%r28),%fr22R
	b,n .L167
.L170:
	fldw 0(%r28),%fr22R
	b,n .L167
.L169:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L175
	b,n .L176
.L175:
	fldw 8(%r28),%fr22R
	b,n .L167
.L176:
	fldw 0(%r28),%fr22R
.L167:
	fcpy,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	ldo -64(%r29),%r5
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r20
	copy %r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	std %r28,0(%r5)
	std %r29,8(%r5)
	copy %r24,%r28
	copy %r23,%r31
	copy %r31,%r20
	copy %r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	std %r28,16(%r5)
	std %r29,24(%r5)
	ldd 0(%r5),%r20
	ldd 8(%r5),%r19
	ldd 0(%r5),%r31
	ldd 8(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L192
	ldd 16(%r5),%r28
	ldd 24(%r5),%r29
	b,n .L180
.L192:
	ldd 16(%r5),%r20
	ldd 24(%r5),%r19
	ldd 16(%r5),%r31
	ldd 24(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L193
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
	b,n .L180
.L193:
	ldd 0(%r5),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldd 16(%r5),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	cmpb,=,n %r28,%r31,.L183
	ldd 0(%r5),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L184
	ldd 16(%r5),%r28
	ldd 24(%r5),%r29
	b,n .L180
.L184:
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
	b,n .L180
.L183:
	ldd 16(%r5),%r20
	ldd 24(%r5),%r19
	ldd 0(%r5),%r31
	ldd 8(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __lttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*<=,n %r0,%r28,.L194
	ldd 16(%r5),%r28
	ldd 24(%r5),%r29
	b,n .L180
.L194:
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
.L180:
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 8
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L196
	fldd 8(%r28),%fr22
	b,n .L197
.L196:
	fldd 8(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L198
	fldd 0(%r28),%fr22
	b,n .L197
.L198:
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldd 8(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L199
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L200
	fldd 0(%r28),%fr22
	b,n .L197
.L200:
	fldd 8(%r28),%fr22
	b,n .L197
.L199:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L205
	b,n .L206
.L205:
	fldd 0(%r28),%fr22
	b,n .L197
.L206:
	fldd 8(%r28),%fr22
.L197:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 8
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L208
	fldw 8(%r28),%fr22R
	b,n .L209
.L208:
	fldw 8(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L210
	fldw 0(%r28),%fr22R
	b,n .L209
.L210:
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldw 8(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L211
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L212
	fldw 0(%r28),%fr22R
	b,n .L209
.L212:
	fldw 8(%r28),%fr22R
	b,n .L209
.L211:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L217
	b,n .L218
.L217:
	fldw 0(%r28),%fr22R
	b,n .L209
.L218:
	fldw 8(%r28),%fr22R
.L209:
	fcpy,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 8
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	ldo -64(%r29),%r5
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r20
	copy %r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	std %r28,0(%r5)
	std %r29,8(%r5)
	copy %r24,%r28
	copy %r23,%r31
	copy %r31,%r20
	copy %r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	std %r28,16(%r5)
	std %r29,24(%r5)
	ldd 0(%r5),%r20
	ldd 8(%r5),%r19
	ldd 0(%r5),%r31
	ldd 8(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L234
	ldd 16(%r5),%r28
	ldd 24(%r5),%r29
	b,n .L222
.L234:
	ldd 16(%r5),%r20
	ldd 24(%r5),%r19
	ldd 16(%r5),%r31
	ldd 24(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L235
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
	b,n .L222
.L235:
	ldd 0(%r5),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldd 16(%r5),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	cmpb,=,n %r28,%r31,.L225
	ldd 0(%r5),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L226
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
	b,n .L222
.L226:
	ldd 16(%r5),%r28
	ldd 24(%r5),%r29
	b,n .L222
.L225:
	ldd 16(%r5),%r20
	ldd 24(%r5),%r19
	ldd 0(%r5),%r31
	ldd 8(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __lttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*<=,n %r0,%r28,.L236
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
	b,n .L222
.L236:
	ldd 16(%r5),%r28
	ldd 24(%r5),%r29
.L222:
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.section	.rodata
	.align 8
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align 8
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	stw %r28,16(%r3)
	addil LT's.0,%r27
	copy %r1,%r28
	ldd RT's.0(%r28),%r28
	std %r28,8(%r3)
	b,n .L238
.L239:
	ldw 16(%r3),%r28
	extrw,u %r28,31,6,%r28
	extrd,u %r28,63,32,%r31
	addil LT'digits,%r27
	copy %r1,%r28
	ldd RT'digits(%r28),%r28
	ldb %r31(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldd 8(%r3),%r28
	stb %r31,0(%r28)
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r3)
	ldw 16(%r3),%r28
	extrw,u %r28,25,26,%r28
	stw %r28,16(%r3)
.L238:
	ldw 16(%r3),%r28
	cmpib,<> 0,%r28,.L239
	nop
	ldd 8(%r3),%r28
	stb %r0,0(%r28)
	addil LT's.0,%r27
	copy %r1,%r28
	ldd RT's.0(%r28),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align 8
.globl srand
	.type	srand, @function
srand:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	ldo -1(%r28),%r28
	extrd,u %r28,63,32,%r28
	copy %r28,%r31
	addil LT'seed,%r27
	copy %r1,%r28
	ldd RT'seed(%r28),%r28
	std %r31,0(%r28)
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 8
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	addil LT'seed,%r27
	copy %r1,%r28
	ldd RT'seed(%r28),%r28
	ldd 0(%r28),%r31
	copy %r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,52,53,%r28
	sub %r28,%r31,%r28
	depd,z %r28,55,56,%r19
	add,l %r28,%r19,%r28
	depd,z %r28,62,63,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,57,58,%r19
	add,l %r28,%r19,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,60,61,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,58,59,%r19
	add,l %r28,%r19,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,62,63,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,56,57,%r28
	sub %r28,%r31,%r28
	depd,z %r28,60,61,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,62,63,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	ldo 1(%r28),%r31
	addil LT'seed,%r27
	copy %r1,%r28
	ldd RT'seed(%r28),%r28
	std %r31,0(%r28)
	addil LT'seed,%r27
	copy %r1,%r28
	ldd RT'seed(%r28),%r28
	ldd 0(%r28),%r28
	extrd,u %r28,30,31,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 8
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r28
	std %r28,16(%r3)
	ldd 16(%r3),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L245
	ldd 8(%r3),%r28
	std %r0,8(%r28)
	ldd 8(%r3),%r28
	ldd 8(%r28),%r31
	ldd 8(%r3),%r28
	std %r31,0(%r28)
	b,n .L244
.L245:
	ldd 16(%r3),%r28
	ldd 0(%r28),%r31
	ldd 8(%r3),%r28
	std %r31,0(%r28)
	ldd 8(%r3),%r28
	ldd 16(%r3),%r31
	std %r31,8(%r28)
	ldd 16(%r3),%r28
	ldd 8(%r3),%r31
	std %r31,0(%r28)
	ldd 8(%r3),%r28
	ldd 0(%r28),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L244
	ldd 8(%r3),%r28
	ldd 0(%r28),%r28
	ldd 8(%r3),%r31
	std %r31,8(%r28)
.L244:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 8
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	std %r28,8(%r3)
	ldd 8(%r3),%r28
	ldd 0(%r28),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L248
	ldd 8(%r3),%r28
	ldd 0(%r28),%r28
	ldd 8(%r3),%r31
	ldd 8(%r31),%r31
	std %r31,8(%r28)
.L248:
	ldd 8(%r3),%r28
	ldd 8(%r28),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L250
	ldd 8(%r3),%r28
	ldd 8(%r28),%r28
	ldd 8(%r3),%r31
	ldd 0(%r31),%r31
	std %r31,0(%r28)
.L250:
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 8
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,208(%r30)
	std %r8,48(%r3)
	std %r7,56(%r3)
	std %r6,64(%r3)
	std %r5,72(%r3)
	std %r4,80(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	std %r24,16(%r5)
	std %r23,24(%r5)
	std %r22,32(%r5)
	ldd 24(%r5),%r6
	copy %r6,%r28
	ldo -1(%r28),%r28
	std %r28,16(%r3)
	copy %r6,%r20
	ldi 0,%r19
	shrpd %r19,%r20,61,%r7
	copy %r20,%r28
	depd,z %r28,60,61,%r8
	ldd 8(%r5),%r28
	std %r28,24(%r3)
	ldd 16(%r5),%r28
	ldd 0(%r28),%r28
	std %r28,32(%r3)
	std %r0,8(%r3)
	b,n .L252
.L255:
	ldd 8(%r3),%r28
	extrd,u %r6,31,32,%r19
	extrd,u %r28,31,32,%r31
	copy %r6,%r20
	std %r20,40(%r3)
	fldd 40(%r3),%fr22
	std %r28,40(%r3)
	fldd 40(%r3),%fr23
	std %r19,40(%r3)
	fldd 40(%r3),%fr25
	std %r31,40(%r3)
	fldd 40(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,40(%r3)
	ldd 40(%r3),%r31
	fstd %fr24,40(%r3)
	ldd 40(%r3),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,40(%r3)
	ldd 40(%r3),%r20
	add,l %r28,%r20,%r28
	ldd 24(%r3),%r31
	add,l %r31,%r28,%r31
	ldd 32(%r5),%r28
	copy %r31,%r25
	ldd 0(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L253
	ldd 8(%r3),%r28
	extrd,u %r6,31,32,%r19
	extrd,u %r28,31,32,%r31
	std %r6,40(%r3)
	fldd 40(%r3),%fr22
	std %r28,40(%r3)
	fldd 40(%r3),%fr23
	std %r19,40(%r3)
	fldd 40(%r3),%fr25
	std %r31,40(%r3)
	fldd 40(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,40(%r3)
	ldd 40(%r3),%r31
	fstd %fr24,40(%r3)
	ldd 40(%r3),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,40(%r3)
	ldd 40(%r3),%r20
	add,l %r28,%r20,%r28
	ldd 24(%r3),%r31
	add,l %r31,%r28,%r28
	b,n .L254
.L253:
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r3)
.L252:
	ldd 8(%r3),%r31
	ldd 32(%r3),%r28
	cmpb,*>> %r28,%r31,.L255
	nop
	ldd 32(%r3),%r28
	ldo 1(%r28),%r31
	ldd 16(%r5),%r28
	std %r31,0(%r28)
	ldd 32(%r3),%r28
	extrd,u %r6,31,32,%r19
	extrd,u %r28,31,32,%r31
	std %r6,40(%r3)
	fldd 40(%r3),%fr22
	std %r28,40(%r3)
	fldd 40(%r3),%fr23
	std %r19,40(%r3)
	fldd 40(%r3),%fr25
	std %r31,40(%r3)
	fldd 40(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,40(%r3)
	ldd 40(%r3),%r31
	fstd %fr24,40(%r3)
	ldd 40(%r3),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,40(%r3)
	ldd 40(%r3),%r20
	add,l %r28,%r20,%r28
	ldd 24(%r3),%r31
	add,l %r31,%r28,%r28
	ldd 24(%r5),%r24
	ldd 0(%r5),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l memcpy,%r2
	nop
	copy %r4,%r27
.L254:
	ldd -16(%r3),%r2
	ldd 48(%r3),%r8
	ldd 56(%r3),%r7
	ldd 64(%r3),%r6
	ldd 72(%r3),%r5
	ldd 80(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 8
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,208(%r30)
	std %r8,48(%r3)
	std %r7,56(%r3)
	std %r6,64(%r3)
	std %r5,72(%r3)
	std %r4,80(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	std %r24,16(%r5)
	std %r23,24(%r5)
	std %r22,32(%r5)
	ldd 24(%r5),%r6
	copy %r6,%r28
	ldo -1(%r28),%r28
	std %r28,16(%r3)
	copy %r6,%r20
	ldi 0,%r19
	shrpd %r19,%r20,61,%r7
	copy %r20,%r28
	depd,z %r28,60,61,%r8
	ldd 8(%r5),%r28
	std %r28,24(%r3)
	ldd 16(%r5),%r28
	ldd 0(%r28),%r28
	std %r28,32(%r3)
	std %r0,8(%r3)
	b,n .L257
.L260:
	ldd 8(%r3),%r28
	extrd,u %r6,31,32,%r19
	extrd,u %r28,31,32,%r31
	copy %r6,%r20
	std %r20,40(%r3)
	fldd 40(%r3),%fr22
	std %r28,40(%r3)
	fldd 40(%r3),%fr23
	std %r19,40(%r3)
	fldd 40(%r3),%fr25
	std %r31,40(%r3)
	fldd 40(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,40(%r3)
	ldd 40(%r3),%r31
	fstd %fr24,40(%r3)
	ldd 40(%r3),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,40(%r3)
	ldd 40(%r3),%r20
	add,l %r28,%r20,%r28
	ldd 24(%r3),%r31
	add,l %r31,%r28,%r31
	ldd 32(%r5),%r28
	copy %r31,%r25
	ldd 0(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L258
	ldd 8(%r3),%r28
	extrd,u %r6,31,32,%r19
	extrd,u %r28,31,32,%r31
	std %r6,40(%r3)
	fldd 40(%r3),%fr22
	std %r28,40(%r3)
	fldd 40(%r3),%fr23
	std %r19,40(%r3)
	fldd 40(%r3),%fr25
	std %r31,40(%r3)
	fldd 40(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,40(%r3)
	ldd 40(%r3),%r31
	fstd %fr24,40(%r3)
	ldd 40(%r3),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,40(%r3)
	ldd 40(%r3),%r20
	add,l %r28,%r20,%r28
	ldd 24(%r3),%r31
	add,l %r31,%r28,%r28
	b,n .L259
.L258:
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r3)
.L257:
	ldd 8(%r3),%r31
	ldd 32(%r3),%r28
	cmpb,*>> %r28,%r31,.L260
	nop
	ldi 0,%r28
.L259:
	ldd -16(%r3),%r2
	ldd 48(%r3),%r8
	ldd 56(%r3),%r7
	ldd 64(%r3),%r6
	ldd 72(%r3),%r5
	ldd 80(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 8
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 8
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,16(%r3)
	std %r4,24(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	stw %r0,8(%r3)
	stw %r0,12(%r3)
	b,n .L264
.L265:
	ldd 0(%r5),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r5)
.L264:
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l isspace,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L265
	nop
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,=,n %r31,%r28,.L266
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L268
	ldi 1,%r28
	stw %r28,12(%r3)
.L266:
	ldd 0(%r5),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r5)
	b,n .L268
.L269:
	ldw 8(%r3),%r31
	copy %r31,%r28
	depw,z %r28,29,30,%r28
	add,l %r28,%r31,%r28
	add,l %r28,%r28,%r28
	extrd,s %r28,63,32,%r31
	ldd 0(%r5),%r28
	ldo 1(%r28),%r19
	std %r19,0(%r5)
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	stw %r28,8(%r3)
.L268:
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,>>= 9,%r28,.L269
	nop
	ldw 12(%r3),%r28
	cmpib,<>,n 0,%r28,.L270
	ldw 8(%r3),%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	b,n .L271
.L270:
	ldw 8(%r3),%r28
	extrd,s %r28,63,32,%r28
.L271:
	ldd -16(%r3),%r2
	ldd 16(%r3),%r5
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 8
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r5,24(%r3)
	std %r4,32(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r0,8(%r3)
	stw %r0,16(%r3)
	b,n .L274
.L275:
	ldd 0(%r5),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r5)
.L274:
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l isspace,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L275
	nop
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,=,n %r31,%r28,.L276
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L278
	ldi 1,%r28
	stw %r28,16(%r3)
.L276:
	ldd 0(%r5),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r5)
	b,n .L278
.L279:
	ldd 8(%r3),%r31
	copy %r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,62,63,%r28
	copy %r28,%r31
	ldd 0(%r5),%r28
	ldo 1(%r28),%r19
	std %r19,0(%r5)
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	std %r28,8(%r3)
.L278:
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,>>= 9,%r28,.L279
	nop
	ldw 16(%r3),%r28
	cmpib,<>,n 0,%r28,.L280
	ldd 8(%r3),%r28
	sub %r0,%r28,%r28
	b,n .L282
.L280:
	ldd 8(%r3),%r28
.L282:
	ldd -16(%r3),%r2
	ldd 24(%r3),%r5
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r5,24(%r3)
	std %r4,32(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r0,8(%r3)
	stw %r0,16(%r3)
	b,n .L284
.L285:
	ldd 0(%r5),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r5)
.L284:
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l isspace,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L285
	nop
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,=,n %r31,%r28,.L286
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L288
	ldi 1,%r28
	stw %r28,16(%r3)
.L286:
	ldd 0(%r5),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r5)
	b,n .L288
.L289:
	ldd 8(%r3),%r31
	copy %r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,62,63,%r28
	copy %r28,%r31
	ldd 0(%r5),%r28
	ldo 1(%r28),%r19
	std %r19,0(%r5)
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	std %r28,8(%r3)
.L288:
	ldd 0(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,>>= 9,%r28,.L289
	nop
	ldw 16(%r3),%r28
	cmpib,<>,n 0,%r28,.L290
	ldd 8(%r3),%r28
	sub %r0,%r28,%r28
	b,n .L292
.L290:
	ldd 8(%r3),%r28
.L292:
	ldd -16(%r3),%r2
	ldd 24(%r3),%r5
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 8
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r5,32(%r3)
	std %r4,40(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	std %r24,16(%r5)
	std %r23,24(%r5)
	std %r22,32(%r5)
	b,n .L294
.L298:
	ldd 16(%r5),%r28
	extrd,u %r28,62,63,%r31
	ldd 24(%r5),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,24(%r3)
	fldd 24(%r3),%fr22
	std %r28,24(%r3)
	fldd 24(%r3),%fr23
	std %r20,24(%r3)
	fldd 24(%r3),%fr25
	std %r19,24(%r3)
	fldd 24(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,24(%r3)
	ldd 24(%r3),%r19
	fstd %fr24,24(%r3)
	ldd 24(%r3),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,24(%r3)
	ldd 24(%r3),%r19
	add,l %r28,%r19,%r28
	ldd 8(%r5),%r31
	add,l %r31,%r28,%r28
	std %r28,8(%r3)
	ldd 32(%r5),%r28
	ldd 8(%r3),%r25
	ldd 0(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	stw %r28,16(%r3)
	ldw 16(%r3),%r28
	cmpib,<=,n 0,%r28,.L295
	ldd 16(%r5),%r28
	extrd,u %r28,62,63,%r28
	std %r28,16(%r5)
	b,n .L294
.L295:
	ldw 16(%r3),%r28
	cmpib,>=,n 0,%r28,.L296
	ldd 8(%r3),%r31
	ldd 24(%r5),%r28
	add,l %r31,%r28,%r28
	std %r28,8(%r5)
	ldd 16(%r5),%r28
	extrd,u %r28,62,63,%r28
	ldd 16(%r5),%r31
	sub %r31,%r28,%r28
	ldo -1(%r28),%r28
	std %r28,16(%r5)
	b,n .L294
.L296:
	ldd 8(%r3),%r28
	b,n .L297
.L294:
	ldd 16(%r5),%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L298
	nop
	ldi 0,%r28
.L297:
	ldd -16(%r3),%r2
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,176(%r30)
	std %r5,48(%r3)
	std %r4,56(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	std %r24,16(%r5)
	std %r23,24(%r5)
	std %r22,32(%r5)
	std %r21,40(%r5)
	ldd 8(%r5),%r28
	std %r28,8(%r3)
	ldd 16(%r5),%r28
	stw %r28,16(%r3)
	b,n .L300
.L304:
	ldw 16(%r3),%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r28
	copy %r28,%r31
	ldd 24(%r5),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,40(%r3)
	fldd 40(%r3),%fr22
	std %r28,40(%r3)
	fldd 40(%r3),%fr23
	std %r20,40(%r3)
	fldd 40(%r3),%fr25
	std %r19,40(%r3)
	fldd 40(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,40(%r3)
	ldd 40(%r3),%r19
	fstd %fr24,40(%r3)
	ldd 40(%r3),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,40(%r3)
	ldd 40(%r3),%r19
	add,l %r28,%r19,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r28
	std %r28,24(%r3)
	ldd 32(%r5),%r28
	ldd 40(%r5),%r24
	ldd 24(%r3),%r25
	ldd 0(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	stw %r28,32(%r3)
	ldw 32(%r3),%r28
	cmpib,<>,n 0,%r28,.L301
	ldd 24(%r3),%r28
	b,n .L302
.L301:
	ldw 32(%r3),%r28
	cmpib,>=,n 0,%r28,.L303
	ldd 24(%r3),%r31
	ldd 24(%r5),%r28
	add,l %r31,%r28,%r28
	std %r28,8(%r3)
	ldw 16(%r3),%r28
	ldo -1(%r28),%r28
	stw %r28,16(%r3)
.L303:
	ldw 16(%r3),%r28
	extrw,s %r28,30,31,%r28
	stw %r28,16(%r3)
.L300:
	ldw 16(%r3),%r28
	cmpib,<> 0,%r28,.L304
	nop
	ldi 0,%r28
.L302:
	ldd -16(%r3),%r2
	ldd 48(%r3),%r5
	ldd 56(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 8
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 0(%r28),%r26
	ldw 8(%r28),%r25
	.IMPORT $$divI,MILLICODE
	b,l $$divI,%r2
	nop
	copy %r29,%r31
	extrd,s %r31,63,32,%r31
	ldw 0(%r28),%r19
	copy %r19,%r26
	ldw 8(%r28),%r25
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r2
	nop
	copy %r29,%r28
	extrd,s %r28,63,32,%r28
	stw %r31,8(%r3)
	stw %r28,12(%r3)
	ldi 0,%r28
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	ldw 12(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd %r31,32+32-1,32,%r28
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,192(%r30)
	std %r8,40(%r3)
	std %r7,48(%r3)
	std %r6,56(%r3)
	std %r5,64(%r3)
	std %r4,72(%r3)
	ldo -64(%r29),%r7
	std %r26,0(%r7)
	std %r25,8(%r7)
	ldd 8(%r7),%r25
	ldd 0(%r7),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r8
	ldd 0(%r7),%r28
	ldd 8(%r7),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __moddi3,%r2
	nop
	copy %r4,%r27
	std %r8,8(%r3)
	std %r28,16(%r3)
	ldi 0,%r31
	ldd 8(%r3),%r31
	ldi 0,%r28
	ldd 16(%r3),%r28
	copy %r31,%r5
	copy %r28,%r6
	copy %r5,%r19
	copy %r6,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 40(%r3),%r8
	ldd 48(%r3),%r7
	ldd 56(%r3),%r6
	ldd 64(%r3),%r5
	ldd 72(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 8
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 8
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,192(%r30)
	std %r8,40(%r3)
	std %r7,48(%r3)
	std %r6,56(%r3)
	std %r5,64(%r3)
	std %r4,72(%r3)
	ldo -64(%r29),%r7
	std %r26,0(%r7)
	std %r25,8(%r7)
	ldd 8(%r7),%r25
	ldd 0(%r7),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r8
	ldd 0(%r7),%r28
	ldd 8(%r7),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __moddi3,%r2
	nop
	copy %r4,%r27
	std %r8,8(%r3)
	std %r28,16(%r3)
	ldi 0,%r31
	ldd 8(%r3),%r31
	ldi 0,%r28
	ldd 16(%r3),%r28
	copy %r31,%r5
	copy %r28,%r6
	copy %r5,%r19
	copy %r6,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 40(%r3),%r8
	ldd 48(%r3),%r7
	ldd 56(%r3),%r6
	ldd 64(%r3),%r5
	ldd 72(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 8
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 8
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,192(%r30)
	std %r8,40(%r3)
	std %r7,48(%r3)
	std %r6,56(%r3)
	std %r5,64(%r3)
	std %r4,72(%r3)
	ldo -64(%r29),%r7
	std %r26,0(%r7)
	std %r25,8(%r7)
	ldd 8(%r7),%r25
	ldd 0(%r7),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r8
	ldd 0(%r7),%r28
	ldd 8(%r7),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __moddi3,%r2
	nop
	copy %r4,%r27
	std %r8,8(%r3)
	std %r28,16(%r3)
	ldi 0,%r31
	ldd 8(%r3),%r31
	ldi 0,%r28
	ldd 16(%r3),%r28
	copy %r31,%r5
	copy %r28,%r6
	copy %r5,%r19
	copy %r6,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 40(%r3),%r8
	ldd 48(%r3),%r7
	ldd 56(%r3),%r6
	ldd 64(%r3),%r5
	ldd 72(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 8
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	b,n .L320
.L322:
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
.L320:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L321
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	cmpb,<> %r31,%r19,.L322
	nop
.L321:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L323
	ldd 0(%r28),%r28
	b,n .L325
.L323:
	ldi 0,%r28
.L325:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	b,n .L327
.L329:
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,8(%r28)
.L327:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,<>,n %r31,%r19,.L328
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L328
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L329
	nop
.L328:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,>>,n %r31,%r19,.L330
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r28
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L331:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L332
.L330:
	ldi -1,%r28
.L332:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	nop
.L335:
	ldd 8(%r28),%r19
	ldo 4(%r19),%r31
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r20
	std %r20,0(%r28)
	ldw 0(%r19),%r19
	extrd,u %r19,63,32,%r19
	stw %r19,0(%r31)
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L335
	nop
	ldd 8(%r3),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 8
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	b,n .L338
.L339:
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
.L338:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L339
	nop
	ldd 0(%r28),%r31
	ldd 8(%r3),%r28
	sub %r31,%r28,%r28
	extrd,s %r28,61,62,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L342
.L344:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,8(%r28)
.L342:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L343
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,<>,n %r31,%r19,.L343
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L343
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L344
	nop
.L343:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L345
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,>>,n %r31,%r19,.L346
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r28
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L347:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L349
.L346:
	ldi -1,%r28
	b,n .L349
.L345:
	ldi 0,%r28
.L349:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L352
.L354:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
.L352:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L353
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	cmpb,<> %r31,%r19,.L354
	nop
.L353:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L355
	ldd 0(%r28),%r28
	b,n .L357
.L355:
	ldi 0,%r28
.L357:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L359
.L361:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,8(%r28)
.L359:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L360
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,= %r31,%r19,.L361
	nop
.L360:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L362
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,>>,n %r31,%r19,.L363
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r28
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L364:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L366
.L363:
	ldi -1,%r28
	b,n .L366
.L362:
	ldi 0,%r28
.L366:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	b,n .L369
.L370:
	ldd 8(%r28),%r19
	ldo 4(%r19),%r31
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r20
	std %r20,0(%r28)
	ldw 0(%r19),%r19
	extrd,u %r19,63,32,%r19
	stw %r19,0(%r31)
.L369:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L370
	nop
	ldd 8(%r3),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*<>,n %r31,%r19,.L373
	ldd 0(%r28),%r28
	b,n .L374
.L373:
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	sub %r19,%r31,%r19
	ldd 16(%r28),%r31
	depd,z %r31,61,62,%r31
	cmpb,*<<=,n %r31,%r19,.L379
	b,n .L376
.L377:
	ldd 16(%r28),%r31
	depd,z %r31,61,62,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldd 16(%r28),%r31
	depd,z %r31,61,62,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldw 0(%r19),%r19
	extrd,u %r19,63,32,%r19
	stw %r19,0(%r31)
.L376:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L377
	nop
	b,n .L378
.L380:
	ldd 8(%r28),%r19
	ldo 4(%r19),%r31
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r20
	std %r20,0(%r28)
	ldw 0(%r19),%r19
	extrd,u %r19,63,32,%r19
	stw %r19,0(%r31)
.L379:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L380
	nop
.L378:
	ldd 8(%r3),%r28
.L374:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 8
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	b,n .L382
.L383:
	ldd 0(%r28),%r31
	ldo 4(%r31),%r19
	std %r19,0(%r28)
	ldw 8(%r28),%r19
	stw %r19,0(%r31)
.L382:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L383
	nop
	ldd 8(%r3),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 8
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r19
	ldd 16(%r3),%r31
	cmpb,*<<=,n %r31,%r19,.L386
	ldd 8(%r3),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,8(%r3)
	ldd 16(%r3),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,16(%r3)
	b,n .L387
.L388:
	ldd 8(%r3),%r31
	ldo -1(%r31),%r31
	std %r31,8(%r3)
	ldd 16(%r3),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r3)
	ldd 8(%r3),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 16(%r3),%r31
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L387:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L388
	nop
	b,n .L392
.L386:
	ldd 8(%r3),%r19
	ldd 16(%r3),%r31
	cmpb,*=,n %r31,%r19,.L392
	b,n .L390
.L391:
	ldd 8(%r3),%r19
	ldo 1(%r19),%r31
	std %r31,8(%r3)
	ldd 16(%r3),%r31
	ldo 1(%r31),%r20
	std %r20,16(%r3)
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L390:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L391
	nop
.L392:
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 8
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldd 0(%r28),%r31
	subi 64,%r19,%r28
	mtsar %r28
	shrpd %r31,%r31,%sar,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 8
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r28
	mtsar %r31
	shrpd %r28,%r28,%sar,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 8
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 0(%r28),%r31
	ldw 8(%r28),%r28
	subi 32,%r28,%r28
	mtsar %r28
	shrpw %r31,%r31,%sar,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 8
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 0(%r28),%r31
	ldw 8(%r28),%r28
	mtsar %r28
	shrpw %r31,%r31,%sar,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldd 0(%r28),%r31
	subi 63,%r19,%r19
	std %r19,8(%r3)
	fldd 8(%r3),%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r31
	ldw 8(%r28),%r19
	extrd,u %r19,63,32,%r19
	subi 64,%r19,%r19
	extrd,u %r19,63,32,%r19
	ldd 0(%r28),%r28
	mtsar %r19
	shrpd %r0,%r28,%sar,%r28
	or %r31,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	ldw 8(%r28),%r19
	extrd,u %r19,63,32,%r19
	subi 64,%r19,%r19
	extrd,u %r19,63,32,%r19
	ldd 0(%r28),%r28
	subi 63,%r19,%r19
	std %r19,8(%r3)
	fldd 8(%r3),%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	mtsar %r19
	depd,z %r28,%sar,64,%r28
	or %r31,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 8
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	stw %r25,8(%r28)
	sth %r31,0(%r28)
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,8(%r3)
	fldd 8(%r3),%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r31,63,16,%r31
	ldh 0(%r28),%r19
	extrw,u %r19,31,16,%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	subi 16,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r28,63,16,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,16,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 8
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	stw %r25,8(%r28)
	sth %r31,0(%r28)
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r31,63,16,%r31
	ldh 0(%r28),%r19
	extrw,u %r19,31,16,%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	subi 16,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 31,%r28,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r28,63,16,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,16,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 8
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	stw %r25,8(%r28)
	stb %r31,0(%r28)
	ldb 0(%r28),%r31
	extrw,u %r31,31,8,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,8(%r3)
	fldd 8(%r3),%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r31,63,8,%r31
	ldb 0(%r28),%r19
	extrw,u %r19,31,8,%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	subi 8,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r28,63,8,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,8,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 8
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	stw %r25,8(%r28)
	stb %r31,0(%r28)
	ldb 0(%r28),%r31
	extrw,u %r31,31,8,%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r31,63,8,%r31
	ldb 0(%r28),%r19
	extrw,u %r19,31,8,%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	subi 8,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 31,%r28,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r28,63,8,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,8,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	ldi 255,%r31
	std %r31,8(%r3)
	ldh 0(%r28),%r31
	extrd,u %r31,63,16,%r19
	ldd 8(%r3),%r31
	depd,z %r31,55,56,%r31
	and %r19,%r31,%r31
	extrd,u %r31,55,56,%r31
	extrd,u %r31,63,16,%r31
	ldd 8(%r3),%r19
	extrd,u %r19,63,16,%r19
	ldh 0(%r28),%r28
	and %r28,%r19,%r28
	extrd,u %r28,63,16,%r28
	depw,z %r28,23,24,%r28
	extrd,u %r28,63,16,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,16,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldi 255,%r31
	std %r31,8(%r3)
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r3),%r31
	depd,z %r31,39,40,%r31
	and %r19,%r31,%r31
	extrd,u %r31,39,40,%r31
	extrd,u %r31,63,32,%r19
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r20
	ldd 8(%r3),%r31
	depd,z %r31,47,48,%r31
	and %r20,%r31,%r31
	extrd,u %r31,55,56,%r31
	extrd,u %r31,63,32,%r31
	or %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depw,z %r31,23,24,%r31
	extrd,u %r31,63,32,%r31
	ldw 0(%r28),%r20
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	depw,z %r31,23,24,%r31
	extrd,u %r31,63,32,%r31
	or %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r3),%r19
	extrd,u %r19,63,32,%r19
	ldw 0(%r28),%r28
	and %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	depw,z %r28,7,8,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldi 255,%r31
	std %r31,8(%r3)
	ldd 8(%r3),%r31
	depd,z %r31,7,8,%r19
	ldd 0(%r28),%r31
	and %r19,%r31,%r31
	extrd,u %r31,7,8,%r19
	ldd 8(%r3),%r31
	depd,z %r31,15,16,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	extrd,u %r31,23,24,%r31
	or %r19,%r31,%r19
	ldd 8(%r3),%r31
	depd,z %r31,23,24,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	extrd,u %r31,39,40,%r31
	or %r19,%r31,%r19
	ldd 8(%r3),%r31
	depd,z %r31,31,32,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	extrd,u %r31,55,56,%r31
	or %r19,%r31,%r19
	ldd 8(%r3),%r31
	depd,z %r31,39,40,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	depd,z %r31,55,56,%r31
	or %r19,%r31,%r19
	ldd 8(%r3),%r31
	depd,z %r31,47,48,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	depd,z %r31,39,40,%r31
	or %r19,%r31,%r19
	ldd 8(%r3),%r31
	depd,z %r31,55,56,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	depd,z %r31,23,24,%r31
	or %r19,%r31,%r31
	ldd 0(%r28),%r19
	ldd 8(%r3),%r28
	and %r19,%r28,%r28
	depd,z %r28,7,8,%r28
	or %r31,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 8
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r0,8(%r3)
	b,n .L420
.L423:
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L421
	ldw 8(%r3),%r28
	ldo 1(%r28),%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	b,n .L422
.L421:
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L420:
	ldw 8(%r3),%r19
	ldi 31,%r31
	cmpb,>>= %r31,%r19,.L423
	nop
	ldi 0,%r28
.L422:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=4
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	std %r4,8(%r3)
	extrd,s %r26,63,32,%r28
	ldi 0,%r31
	cmpb,*<>,n %r31,%r28,.L425
	ldi 0,%r28
	b,n .L426
.L425:
	ldi 1,%r4
	b,n .L427
.L428:
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r4),%r31
	extrd,s %r31,63,32,%r4
.L427:
	extrw,u %r28,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*= %r31,%r19,.L428
	nop
	copy %r4,%r28
.L426:
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata
	.align 4
.LC2:
	.word	-8388609
	.align 4
.LC3:
	.word	2139095039
	.text
	.align 8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fldw 0(%r28),%fr23R
	addil LT'.LC2,%r27
	copy %r1,%r31
	ldd RT'.LC2(%r31),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L430
	fldw 0(%r28),%fr23R
	addil LT'.LC3,%r27
	copy %r1,%r28
	ldd RT'.LC3(%r28),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!> %fr23R,%fr22R
	ftest
	b,n .L430
	b,n .L435
.L430:
	ldi 1,%r28
	b,n .L433
.L435:
	ldi 0,%r28
.L433:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
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
	.align 8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fldd 0(%r28),%fr23
	addil LT'.LC4,%r27
	copy %r1,%r31
	ldd RT'.LC4(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L437
	fldd 0(%r28),%fr23
	addil LT'.LC5,%r27
	copy %r1,%r28
	ldd RT'.LC5(%r28),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L437
	b,n .L442
.L437:
	ldi 1,%r28
	b,n .L440
.L442:
	ldi 0,%r28
.L440:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata
	.align 16
.LC6:
	.word	-65537
	.word	-1
	.word	-1
	.word	-1
	.align 16
.LC7:
	.word	2147418111
	.word	-1
	.word	-1
	.word	-1
	.text
	.align 8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	ldo -64(%r29),%r5
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r20
	copy %r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	std %r28,0(%r5)
	std %r29,8(%r5)
	addil LT'.LC6,%r27
	copy %r1,%r28
	ldd RT'.LC6(%r28),%r31
	ldd 0(%r5),%r20
	ldd 8(%r5),%r19
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	copy %r28,%r24
	copy %r29,%r23
	copy %r20,%r26
	copy %r19,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __lttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*>,n %r0,%r28,.L444
	addil LT'.LC7,%r27
	copy %r1,%r28
	ldd RT'.LC7(%r28),%r31
	ldd 0(%r5),%r20
	ldd 8(%r5),%r19
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	copy %r28,%r24
	copy %r29,%r23
	copy %r20,%r26
	copy %r19,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __gttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*>=,n %r0,%r28,.L449
.L444:
	ldi 1,%r28
	b,n .L447
.L449:
	ldi 0,%r28
.L447:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	stw %r25,8(%r5)
	fldw 8(%r5),%fr22R
	fcnv,w,dbl %fr22R,%fr22
	fcpy,dbl %fr22,%fr4
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __extenddftf2,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r29,%r20
	ldd 0(%r5),%r28
	std %r19,0(%r28)
	std %r20,8(%r28)
	nop
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata
	.align 4
.LC8:
	.word	1056964608
	.align 4
.LC9:
	.word	1073741824
	.text
	.align 8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	stw %r25,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,!? %fr23R,%fr22R
	ftest
	b,n .L452
	fldw 0(%r28),%fr22R
	fadd,sgl %fr22R,%fr22R,%fr22R
	fldw 0(%r28),%fr23R
	fcmp,sgl,!= %fr23R,%fr22R
	ftest
	b,n .L452
	ldw 8(%r28),%r31
	cmpib,<=,n 0,%r31,.L453
	addil LT'.LC8,%r27
	copy %r1,%r31
	ldd RT'.LC8(%r31),%r31
	fldw 0(%r31),%fr22R
	b,n .L454
.L453:
	addil LT'.LC9,%r27
	copy %r1,%r31
	ldd RT'.LC9(%r31),%r31
	fldw 0(%r31),%fr22R
.L454:
	fstw %fr22R,8(%r3)
.L457:
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L455
	fldw 0(%r28),%fr23R
	fldw 8(%r3),%fr22R
	fmpy,sgl %fr23R,%fr22R,%fr22R
	fstw %fr22R,0(%r28)
.L455:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L459
	fldw 8(%r3),%fr22R
	fmpy,sgl %fr22R,%fr22R,%fr22R
	fstw %fr22R,8(%r3)
	b,n .L457
.L459:
	nop
.L452:
	fldw 0(%r28),%fr22R
	fcpy,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
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
	.align 8
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	stw %r25,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,!? %fr23,%fr22
	ftest
	b,n .L461
	fldd 0(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	fldd 0(%r28),%fr23
	fcmp,dbl,!= %fr23,%fr22
	ftest
	b,n .L461
	ldw 8(%r28),%r31
	cmpib,<=,n 0,%r31,.L462
	addil LT'.LC10,%r27
	copy %r1,%r31
	ldd RT'.LC10(%r31),%r31
	fldd 0(%r31),%fr22
	b,n .L463
.L462:
	addil LT'.LC11,%r27
	copy %r1,%r31
	ldd RT'.LC11(%r31),%r31
	fldd 0(%r31),%fr22
.L463:
	fstd %fr22,8(%r3)
.L466:
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L464
	fldd 0(%r28),%fr23
	fldd 8(%r3),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	fstd %fr22,0(%r28)
.L464:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L468
	fldd 8(%r3),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fstd %fr22,8(%r3)
	b,n .L466
.L468:
	nop
.L461:
	fldd 0(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata
	.align 16
.LC12:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.align 16
.LC13:
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.text
	.align 8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r5,32(%r3)
	std %r4,40(%r3)
	ldo -64(%r29),%r5
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r20
	copy %r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	std %r28,0(%r5)
	std %r29,8(%r5)
	stw %r24,16(%r5)
	ldd 0(%r5),%r20
	ldd 8(%r5),%r19
	ldd 0(%r5),%r31
	ldd 8(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*<>,n %r0,%r28,.L470
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r24
	copy %r20,%r23
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r26
	copy %r20,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __addtf3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r21
	copy %r29,%r22
	copy %r21,%r19
	copy %r22,%r20
	ldd 0(%r5),%r21
	ldd 8(%r5),%r31
	copy %r19,%r28
	copy %r20,%r29
	copy %r28,%r24
	copy %r29,%r23
	copy %r21,%r26
	copy %r31,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __netf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L470
	ldw 16(%r5),%r28
	cmpib,<=,n 0,%r28,.L472
	addil LT'.LC12,%r27
	copy %r1,%r28
	ldd RT'.LC12(%r28),%r31
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	b,n .L473
.L472:
	addil LT'.LC13,%r27
	copy %r1,%r28
	ldd RT'.LC13(%r28),%r31
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
.L473:
	std %r28,16(%r3)
	std %r29,24(%r3)
.L476:
	ldw 16(%r5),%r28
	extrd,u %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L474
	ldd 16(%r3),%r20
	ldd 24(%r3),%r19
	ldd 0(%r5),%r31
	ldd 8(%r5),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __multf3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r29,%r20
	std %r19,0(%r5)
	std %r20,8(%r5)
.L474:
	ldw 16(%r5),%r28
	extrw,u %r28,0,1,%r31
	add,l %r31,%r28,%r28
	extrw,s %r28,30,31,%r28
	stw %r28,16(%r5)
	ldw 16(%r5),%r28
	cmpib,=,n 0,%r28,.L479
	ldd 16(%r3),%r20
	ldd 24(%r3),%r19
	ldd 16(%r3),%r31
	ldd 24(%r3),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __multf3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r29,%r20
	std %r19,16(%r3)
	std %r20,24(%r3)
	b,n .L476
.L479:
	nop
.L470:
	ldd 0(%r5),%r28
	ldd 8(%r5),%r29
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 8
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 8(%r28),%r31
	std %r31,8(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	b,n .L481
.L482:
	ldd 8(%r3),%r31
	ldo 1(%r31),%r19
	std %r19,8(%r3)
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r20
	ldd 16(%r3),%r31
	ldo 1(%r31),%r19
	std %r19,16(%r3)
	ldb 0(%r31),%r19
	extrd,s %r19,63,8,%r19
	xor %r20,%r19,%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L481:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L482
	nop
	ldd 0(%r28),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 8
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,16(%r3)
	std %r4,24(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	std %r24,16(%r5)
	ldd 0(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strlen,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldd 0(%r5),%r28
	add,l %r28,%r31,%r28
	std %r28,8(%r3)
	b,n .L485
.L487:
	ldd 8(%r5),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r5)
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r3)
	ldd 16(%r5),%r28
	ldo -1(%r28),%r28
	std %r28,16(%r5)
.L485:
	ldd 16(%r5),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L486
	ldd 8(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldd 8(%r3),%r28
	stb %r31,0(%r28)
	ldd 8(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L487
	nop
.L486:
	ldd 16(%r5),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L488
	ldd 8(%r3),%r28
	stb %r0,0(%r28)
.L488:
	ldd 0(%r5),%r28
	ldd -16(%r3),%r2
	ldd 16(%r3),%r5
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 8
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r0,8(%r3)
	b,n .L491
.L496:
	nop
	ldd 8(%r3),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r3)
.L491:
	ldd 8(%r3),%r19
	ldd 8(%r28),%r31
	cmpb,*<<=,n %r31,%r19,.L492
	ldd 0(%r28),%r19
	ldd 8(%r3),%r31
	add,l %r19,%r31,%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L496
	nop
.L492:
	ldd 8(%r3),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	b,n .L498
.L502:
	ldd 8(%r28),%r31
	std %r31,8(%r3)
	b,n .L499
.L501:
	ldd 8(%r3),%r31
	ldo 1(%r31),%r19
	std %r19,8(%r3)
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<>,n %r31,%r19,.L499
	ldd 0(%r28),%r28
	b,n .L500
.L499:
	ldd 8(%r3),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L501
	nop
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
.L498:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L502
	nop
	ldi 0,%r28
.L500:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 8
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r19
	copy %r26,%r28
	stw %r25,8(%r19)
	std %r0,8(%r3)
.L505:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	ldw 8(%r19),%r20
	cmpclr,<> %r31,%r20,%r0
	std %r28,8(%r3)
.L504:
	copy %r28,%r31
	ldo 1(%r31),%r28
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r20
	ldi 0,%r31
	cmpb,*<> %r31,%r20,.L505
	nop
	ldd 8(%r3),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 8
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r5,24(%r3)
	std %r4,32(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	ldd 0(%r5),%r28
	std %r28,8(%r3)
	ldd 8(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strlen,%r2
	nop
	copy %r4,%r27
	std %r28,16(%r3)
	ldd 16(%r3),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L510
	ldd 0(%r5),%r28
	b,n .L509
.L512:
	ldd 16(%r3),%r24
	ldd 8(%r5),%r25
	ldd 8(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strncmp,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L511
	ldd 8(%r3),%r28
	b,n .L509
.L511:
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r3)
.L510:
	ldd 8(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	copy %r28,%r25
	ldd 8(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strchr,%r2
	nop
	copy %r4,%r27
	std %r28,8(%r3)
	ldd 8(%r3),%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L512
	nop
	ldi 0,%r28
.L509:
	ldd -16(%r3),%r2
	ldd 24(%r3),%r5
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 8
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L521
	b,n .L514
.L521:
	fldd 8(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L516
.L514:
	fldd 0(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L522
	b,n .L517
.L522:
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L516
	b,n .L517
.L516:
	fldd 0(%r28),%fr22
	fneg,dbl %fr22,%fr22
	b,n .L520
.L517:
	fldd 0(%r28),%fr22
.L520:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 8
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r5,24(%r3)
	std %r4,32(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	std %r24,16(%r5)
	std %r23,24(%r5)
	ldd 8(%r5),%r31
	ldd 24(%r5),%r28
	sub %r31,%r28,%r28
	ldd 0(%r5),%r31
	add,l %r31,%r28,%r28
	std %r28,16(%r3)
	ldd 24(%r5),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L524
	ldd 0(%r5),%r28
	b,n .L525
.L524:
	ldi 1,%r28
	ldd 8(%r5),%r19
	ldd 24(%r5),%r31
	cmpclr,*>> %r31,%r19,%r0
	ldi 0,%r28
.L526:
	extrd,u %r28,63,8,%r28
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L527
	ldi 0,%r28
	b,n .L525
.L527:
	ldd 0(%r5),%r28
	std %r28,8(%r3)
	b,n .L528
.L530:
	ldd 8(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldd 16(%r5),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r28,%r31,.L529
	ldd 8(%r3),%r28
	ldo 1(%r28),%r31
	ldd 16(%r5),%r28
	ldo 1(%r28),%r19
	ldd 24(%r5),%r28
	ldo -1(%r28),%r28
	copy %r28,%r24
	copy %r19,%r25
	copy %r31,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l memcmp,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L529
	ldd 8(%r3),%r28
	b,n .L525
.L529:
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r3)
.L528:
	ldd 8(%r3),%r31
	ldd 16(%r3),%r28
	cmpb,*>>= %r28,%r31,.L530
	nop
	ldi 0,%r28
.L525:
	ldd -16(%r3),%r2
	ldd 24(%r3),%r5
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	ldo -64(%r29),%r5
	std %r26,0(%r5)
	std %r25,8(%r5)
	std %r24,16(%r5)
	ldd 16(%r5),%r24
	ldd 8(%r5),%r25
	ldd 0(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l memcpy,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldd 16(%r5),%r28
	add,l %r31,%r28,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 8
.LC14:
	.word	1072693248
	.word	0
	.align 8
.LC15:
	.word	1073741824
	.word	0
	.align 8
.LC16:
	.word	1071644672
	.word	0
	.text
	.align 8
.globl frexp
	.type	frexp, @function
frexp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	std %r25,8(%r28)
	stw %r0,12(%r3)
	stw %r0,8(%r3)
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L546
	b,n .L534
.L546:
	fldd 0(%r28),%fr22
	fneg,dbl %fr22,%fr22
	fstd %fr22,0(%r28)
	ldi 1,%r31
	stw %r31,8(%r3)
.L534:
	fldd 0(%r28),%fr23
	addil LT'.LC14,%r27
	copy %r1,%r31
	ldd RT'.LC14(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L538
	b,n .L549
.L539:
	ldw 12(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,12(%r3)
	fldd 0(%r28),%fr23
	addil LT'.LC15,%r27
	copy %r1,%r31
	ldd RT'.LC15(%r31),%r31
	fldd 0(%r31),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	fstd %fr22,0(%r28)
.L538:
	fldd 0(%r28),%fr23
	addil LT'.LC14,%r27
	copy %r1,%r31
	ldd RT'.LC14(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L539
	b,n .L540
.L549:
	fldd 0(%r28),%fr23
	addil LT'.LC16,%r27
	copy %r1,%r31
	ldd RT'.LC16(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L548
	b,n .L540
.L548:
	fldd 0(%r28),%fr22
	fcmp,dbl,!= %fr22,%fr0
	ftest
	b,n .L540
	b,n .L542
.L543:
	ldw 12(%r3),%r31
	ldo -1(%r31),%r31
	stw %r31,12(%r3)
	fldd 0(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	fstd %fr22,0(%r28)
.L542:
	fldd 0(%r28),%fr23
	addil LT'.LC16,%r27
	copy %r1,%r31
	ldd RT'.LC16(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L543
.L540:
	ldd 8(%r28),%r31
	ldw 12(%r3),%r19
	stw %r19,0(%r31)
	ldw 8(%r3),%r31
	cmpib,=,n 0,%r31,.L544
	fldd 0(%r28),%fr22
	fneg,dbl %fr22,%fr22
	fstd %fr22,0(%r28)
.L544:
	fldd 0(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r0,8(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	b,n .L551
.L553:
	ldd 16(%r3),%r31
	extrd,u %r31,63,1,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L552
	ldd 8(%r3),%r19
	ldd 8(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,8(%r3)
.L552:
	ldd 8(%r28),%r31
	depd,z %r31,62,63,%r31
	std %r31,8(%r28)
	ldd 16(%r3),%r31
	extrd,u %r31,62,63,%r31
	std %r31,16(%r3)
.L551:
	ldd 16(%r3),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L553
	nop
	ldd 8(%r3),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldi 1,%r31
	stw %r31,8(%r3)
	stw %r0,12(%r3)
	b,n .L556
.L558:
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
	ldw 8(%r3),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r3)
.L556:
	ldw 8(%r28),%r19
	ldw 0(%r28),%r31
	cmpb,<<=,n %r31,%r19,.L559
	ldw 8(%r3),%r31
	cmpib,=,n 0,%r31,.L559
	ldw 8(%r28),%r31
	extrd,s %r31,63,32,%r31
	cmpib,<= 0,%r31,.L558
	nop
	b,n .L559
.L561:
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	cmpb,>>,n %r31,%r19,.L560
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	sub %r19,%r31,%r31
	stw %r31,0(%r28)
	ldw 12(%r3),%r19
	ldw 8(%r3),%r31
	or %r19,%r31,%r31
	stw %r31,12(%r3)
.L560:
	ldw 8(%r3),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r3)
	ldw 8(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r28)
.L559:
	ldw 8(%r3),%r31
	cmpib,<> 0,%r31,.L561
	nop
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L562
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	b,n .L563
.L562:
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
.L563:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r4,16(%r3)
	ldo -64(%r29),%r28
	copy %r26,%r31
	stb %r31,0(%r28)
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r31
	cmpib,<=,n 0,%r31,.L565
	ldb 0(%r28),%r31
	uaddcm %r0,%r31,%r31
	stb %r31,0(%r28)
.L565:
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L566
	ldi 7,%r28
	b,n .L567
.L566:
	ldb 0(%r28),%r28
	extrw,s %r28,31,8,%r28
	extrd,u %r28,63,32,%r28
	depw,z %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __clzdi2,%r2
	nop
	copy %r4,%r27
	extrd,u %r28,63,32,%r28
	ldo -32(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L567:
	ldd -16(%r3),%r2
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r4,16(%r3)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L569
	ldd 0(%r28),%r31
	uaddcm %r0,%r31,%r31
	std %r31,0(%r28)
.L569:
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<>,n %r31,%r19,.L570
	ldi 63,%r28
	b,n .L571
.L570:
	ldd 0(%r28),%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __clzdi2,%r2
	nop
	copy %r4,%r27
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L571:
	ldd -16(%r3),%r2
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,8(%r3)
	b,n .L573
.L575:
	ldw 0(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L574
	ldw 8(%r3),%r19
	ldw 8(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,8(%r3)
.L574:
	ldw 0(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
.L573:
	ldw 0(%r28),%r31
	cmpib,<> 0,%r31,.L575
	nop
	ldw 8(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldw 16(%r28),%r31
	extrw,u %r31,28,29,%r31
	stw %r31,16(%r3)
	ldw 16(%r28),%r31
	depwi 0,31,3,%r31
	stw %r31,12(%r3)
	ldd 0(%r28),%r31
	std %r31,24(%r3)
	ldd 8(%r28),%r31
	std %r31,32(%r3)
	ldd 24(%r3),%r19
	ldd 32(%r3),%r31
	cmpb,*>>,n %r31,%r19,.L578
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 32(%r3),%r19
	add,l %r19,%r31,%r31
	ldd 24(%r3),%r19
	cmpb,*>>=,n %r31,%r19,.L585
.L578:
	stw %r0,8(%r3)
	b,n .L580
.L581:
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,60,61,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,60,61,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldd 0(%r19),%r19
	std %r19,0(%r31)
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L580:
	ldw 8(%r3),%r19
	ldw 16(%r3),%r31
	cmpb,>> %r31,%r19,.L581
	nop
	b,n .L582
.L583:
	ldw 12(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 32(%r3),%r19
	add,l %r19,%r31,%r19
	ldw 12(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldw 12(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,12(%r3)
.L582:
	ldw 16(%r28),%r19
	ldw 12(%r3),%r31
	cmpb,<< %r31,%r19,.L583
	nop
	b,n .L584
.L586:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 32(%r3),%r19
	add,l %r19,%r31,%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
.L585:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldo -1(%r31),%r19
	stw %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L586
	nop
	nop
.L584:
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldw 16(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,12(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r31
	std %r31,24(%r3)
	ldd 16(%r3),%r19
	ldd 24(%r3),%r31
	cmpb,*>>,n %r31,%r19,.L588
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r19
	add,l %r19,%r31,%r31
	ldd 16(%r3),%r19
	cmpb,*>>=,n %r31,%r19,.L594
.L588:
	stw %r0,8(%r3)
	b,n .L590
.L591:
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,62,63,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,62,63,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldh 0(%r19),%r19
	extrd,s %r19,63,16,%r19
	sth %r19,0(%r31)
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L590:
	ldw 8(%r3),%r19
	ldw 12(%r3),%r31
	cmpb,>> %r31,%r19,.L591
	nop
	ldw 16(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L593
	ldw 16(%r28),%r31
	ldo -1(%r31),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r19
	add,l %r19,%r31,%r31
	ldw 16(%r28),%r28
	ldo -1(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldd 16(%r3),%r19
	add,l %r19,%r28,%r28
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r31
	stb %r31,0(%r28)
	b,n .L593
.L595:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r19
	add,l %r19,%r31,%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 16(%r3),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
.L594:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldo -1(%r31),%r19
	stw %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L595
	nop
	nop
.L593:
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldw 16(%r28),%r31
	extrw,u %r31,29,30,%r31
	stw %r31,16(%r3)
	ldw 16(%r28),%r31
	depwi 0,31,2,%r31
	stw %r31,12(%r3)
	ldd 0(%r28),%r31
	std %r31,24(%r3)
	ldd 8(%r28),%r31
	std %r31,32(%r3)
	ldd 24(%r3),%r19
	ldd 32(%r3),%r31
	cmpb,*>>,n %r31,%r19,.L597
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 32(%r3),%r19
	add,l %r19,%r31,%r31
	ldd 24(%r3),%r19
	cmpb,*>>=,n %r31,%r19,.L604
.L597:
	stw %r0,8(%r3)
	b,n .L599
.L600:
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,61,62,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,61,62,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldw 0(%r19),%r19
	extrd,s %r19,63,32,%r19
	stw %r19,0(%r31)
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L599:
	ldw 8(%r3),%r19
	ldw 16(%r3),%r31
	cmpb,>> %r31,%r19,.L600
	nop
	b,n .L601
.L602:
	ldw 12(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 32(%r3),%r19
	add,l %r19,%r31,%r19
	ldw 12(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldw 12(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,12(%r3)
.L601:
	ldw 16(%r28),%r19
	ldw 12(%r3),%r31
	cmpb,<< %r31,%r19,.L602
	nop
	b,n .L603
.L605:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 32(%r3),%r19
	add,l %r19,%r31,%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
.L604:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldo -1(%r31),%r19
	stw %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L605
	nop
	nop
.L603:
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 8
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 0(%r28),%r31
	copy %r31,%r26
	ldw 8(%r28),%r25
	b,l $$remI,%r2
	nop
	copy %r29,%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 8
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	fldw 0(%r28),%fr22R
	fcnv,uw,dbl %fr22R,%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 8
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	fldw 0(%r28),%fr22R
	fcnv,uw,sgl %fr22R,%fr22R
	fcpy,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	fldd 0(%r28),%fr22
	fcnv,udw,dbl %fr22,%fr22
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	fldd 0(%r28),%fr22
	fcnv,udw,sgl %fr22,%fr22R
	fcpy,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 8
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 0(%r28),%r31
	copy %r31,%r26
	ldw 8(%r28),%r25
	.IMPORT $$remU,MILLICODE
	b,l $$remU,%r2
	nop
	copy %r29,%r28
	extrd,u %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,8(%r3)
	b,n .L619
.L622:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r3),%r19
	subi 15,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,16(%r3)
	fldd 16(%r3),%fr22
	fstd %fr22,16(%r3)
	ldd 16(%r3),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<>,n %r31,%r19,.L624
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L619:
	ldw 8(%r3),%r31
	cmpib,>= 15,%r31,.L622
	nop
	b,n .L621
.L624:
	nop
.L621:
	ldw 8(%r3),%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,8(%r3)
	b,n .L626
.L629:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r3),%r19
	subi 31,%r19,%r19
	std %r19,16(%r3)
	fldd 16(%r3),%fr22
	fstd %fr22,16(%r3)
	ldd 16(%r3),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<>,n %r31,%r19,.L631
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L626:
	ldw 8(%r3),%r31
	cmpib,>= 15,%r31,.L629
	nop
	b,n .L628
.L631:
	nop
.L628:
	ldw 8(%r3),%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata
	.align 4
.LC17:
	.word	1191182336
	.text
	.align 8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fldw 0(%r28),%fr23R
	addil LT'.LC17,%r27
	copy %r1,%r31
	ldd RT'.LC17(%r31),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!>= %fr23R,%fr22R
	ftest
	b,n .L636
	b,n .L637
.L636:
	fldw 0(%r28),%fr23R
	addil LT'.LC17,%r27
	copy %r1,%r28
	ldd RT'.LC17(%r28),%r28
	fldw 0(%r28),%fr22R
	fsub,sgl %fr23R,%fr22R,%fr22R
	fcnv,t,sgl,dw %fr22R,%fr22
	ldil L'32768,%r28
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r28
	b,n .L635
.L637:
	fldw 0(%r28),%fr22R
	fcnv,t,sgl,dw %fr22R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
.L635:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,12(%r3)
	stw %r0,8(%r3)
	b,n .L639
.L641:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r3),%r19
	subi 31,%r19,%r19
	std %r19,16(%r3)
	fldd 16(%r3),%fr22
	fstd %fr22,16(%r3)
	ldd 16(%r3),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L640
	ldw 12(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,12(%r3)
.L640:
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L639:
	ldw 8(%r3),%r31
	cmpib,>= 15,%r31,.L641
	nop
	ldw 12(%r3),%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,12(%r3)
	stw %r0,8(%r3)
	b,n .L644
.L646:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r3),%r19
	subi 31,%r19,%r19
	std %r19,16(%r3)
	fldd 16(%r3),%fr22
	fstd %fr22,16(%r3)
	ldd 16(%r3),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L645
	ldw 12(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,12(%r3)
.L645:
	ldw 8(%r3),%r31
	ldo 1(%r31),%r31
	stw %r31,8(%r3)
.L644:
	ldw 8(%r3),%r31
	cmpib,>= 15,%r31,.L646
	nop
	ldw 12(%r3),%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,8(%r3)
	b,n .L649
.L651:
	ldw 0(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L650
	ldw 8(%r3),%r19
	ldw 8(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,8(%r3)
.L650:
	ldw 0(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
.L649:
	ldw 0(%r28),%r31
	cmpib,<> 0,%r31,.L651
	nop
	ldw 8(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,8(%r3)
	ldw 0(%r28),%r31
	cmpib,<>,n 0,%r31,.L656
	ldi 0,%r28
	b,n .L655
.L658:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L657
	ldw 8(%r3),%r19
	ldw 0(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,8(%r3)
.L657:
	ldw 0(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r28)
.L656:
	ldw 8(%r28),%r31
	cmpib,<> 0,%r31,.L658
	nop
	ldw 8(%r3),%r28
	extrd,u %r28,63,32,%r28
.L655:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r24,16(%r28)
	ldi 1,%r31
	stw %r31,8(%r3)
	stw %r0,12(%r3)
	b,n .L660
.L662:
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
	ldw 8(%r3),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r3)
.L660:
	ldw 8(%r28),%r19
	ldw 0(%r28),%r31
	cmpb,<<=,n %r31,%r19,.L663
	ldw 8(%r3),%r31
	cmpib,=,n 0,%r31,.L663
	ldw 8(%r28),%r31
	extrd,s %r31,63,32,%r31
	cmpib,<= 0,%r31,.L662
	nop
	b,n .L663
.L665:
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	cmpb,>>,n %r31,%r19,.L664
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	sub %r19,%r31,%r31
	stw %r31,0(%r28)
	ldw 12(%r3),%r19
	ldw 8(%r3),%r31
	or %r19,%r31,%r31
	stw %r31,12(%r3)
.L664:
	ldw 8(%r3),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r3)
	ldw 8(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r28)
.L663:
	ldw 8(%r3),%r31
	cmpib,<> 0,%r31,.L665
	nop
	ldw 16(%r28),%r31
	cmpib,=,n 0,%r31,.L666
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	b,n .L667
.L666:
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
.L667:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L674
	b,n .L676
.L674:
	ldi -1,%r28
	b,n .L671
.L676:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!> %fr23R,%fr22R
	ftest
	b,n .L675
	b,n .L677
.L675:
	ldi 1,%r28
	b,n .L671
.L677:
	ldi 0,%r28
.L671:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L684
	b,n .L686
.L684:
	ldi -1,%r28
	b,n .L681
.L686:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L685
	b,n .L687
.L685:
	ldi 1,%r28
	b,n .L681
.L687:
	ldi 0,%r28
.L681:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	ldd 8(%r28),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	std %r20,8(%r3)
	fldd 8(%r3),%fr25
	std %r19,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,8(%r3)
	ldd 8(%r3),%r19
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	add,l %r28,%r19,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	ldd 8(%r28),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	std %r20,8(%r3)
	fldd 8(%r3),%fr25
	std %r19,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,8(%r3)
	ldd 8(%r3),%r19
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	add,l %r28,%r19,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,12(%r3)
	stw %r0,16(%r3)
	ldw 8(%r28),%r31
	cmpib,<=,n 0,%r31,.L693
	ldw 8(%r28),%r31
	sub %r0,%r31,%r31
	stw %r31,8(%r28)
	ldi 1,%r31
	stw %r31,12(%r3)
.L693:
	stb %r0,8(%r3)
	b,n .L694
.L697:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L695
	ldw 16(%r3),%r19
	ldw 0(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,16(%r3)
.L695:
	ldw 0(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldb 8(%r3),%r31
	extrd,s %r31,63,8,%r31
	extrd,u %r31,63,8,%r31
	ldo 1(%r31),%r31
	extrd,u %r31,63,8,%r31
	stb %r31,8(%r3)
.L694:
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L696
	ldb 8(%r3),%r31
	extrd,u %r31,63,8,%r19
	ldi 31,%r31
	cmpb,>>= %r31,%r19,.L697
	nop
.L696:
	ldw 12(%r3),%r28
	cmpib,=,n 0,%r28,.L698
	ldw 16(%r3),%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	b,n .L699
.L698:
	ldw 16(%r3),%r28
	extrd,s %r28,63,32,%r28
.L699:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r4,24(%r3)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r0,8(%r3)
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L702
	ldd 0(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,0(%r28)
	ldw 8(%r3),%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,8(%r3)
.L702:
	ldd 8(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L703
	ldd 8(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,8(%r28)
	ldw 8(%r3),%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,8(%r3)
.L703:
	ldd 0(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldi 0,%r24
	copy %r28,%r25
	copy %r31,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __udivmodsi4,%r2
	nop
	copy %r4,%r27
	std %r28,16(%r3)
	ldw 8(%r3),%r28
	cmpib,=,n 0,%r28,.L704
	ldd 16(%r3),%r28
	sub %r0,%r28,%r28
	std %r28,16(%r3)
.L704:
	ldd 16(%r3),%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r4,24(%r3)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r0,8(%r3)
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L707
	ldd 0(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,0(%r28)
	ldi 1,%r31
	stw %r31,8(%r3)
.L707:
	ldd 8(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L708
	ldd 8(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,8(%r28)
.L708:
	ldd 0(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldi 1,%r24
	copy %r28,%r25
	copy %r31,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __udivmodsi4,%r2
	nop
	copy %r4,%r27
	std %r28,16(%r3)
	ldw 8(%r3),%r28
	cmpib,=,n 0,%r28,.L709
	ldd 16(%r3),%r28
	sub %r0,%r28,%r28
	std %r28,16(%r3)
.L709:
	ldd 16(%r3),%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r19
	stw %r24,16(%r28)
	sth %r31,0(%r28)
	copy %r19,%r31
	sth %r31,8(%r28)
	ldi 1,%r31
	sth %r31,8(%r3)
	sth %r0,10(%r3)
	b,n .L712
.L714:
	ldh 8(%r28),%r31
	add,l %r31,%r31,%r31
	sth %r31,8(%r28)
	ldh 8(%r3),%r31
	add,l %r31,%r31,%r31
	sth %r31,8(%r3)
.L712:
	ldh 8(%r28),%r31
	extrw,u %r31,31,16,%r19
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	cmpb,<<=,n %r31,%r19,.L715
	ldh 8(%r3),%r31
	extrw,u %r31,31,16,%r31
	cmpib,=,n 0,%r31,.L715
	ldh 8(%r28),%r31
	extrd,s %r31,63,16,%r31
	cmpib,<= 0,%r31,.L714
	nop
	b,n .L715
.L717:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r19
	ldh 8(%r28),%r31
	extrw,u %r31,31,16,%r31
	cmpb,>>,n %r31,%r19,.L716
	ldh 0(%r28),%r19
	ldh 8(%r28),%r31
	sub %r19,%r31,%r31
	sth %r31,0(%r28)
	ldh 10(%r3),%r19
	ldh 8(%r3),%r31
	or %r19,%r31,%r31
	sth %r31,10(%r3)
.L716:
	ldh 8(%r3),%r31
	extrw,u %r31,31,16,%r31
	extrw,u %r31,30,31,%r31
	sth %r31,8(%r3)
	ldh 8(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrw,u %r31,30,31,%r31
	sth %r31,8(%r28)
.L715:
	ldh 8(%r3),%r31
	extrw,u %r31,31,16,%r31
	cmpib,<> 0,%r31,.L717
	nop
	ldw 16(%r28),%r31
	cmpib,=,n 0,%r31,.L718
	ldh 0(%r28),%r28
	extrd,u %r28,63,16,%r28
	b,n .L719
.L718:
	ldh 10(%r3),%r28
	extrd,u %r28,63,16,%r28
.L719:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldi 1,%r31
	std %r31,8(%r3)
	std %r0,16(%r3)
	b,n .L721
.L723:
	ldd 8(%r28),%r31
	depd,z %r31,62,63,%r31
	std %r31,8(%r28)
	ldd 8(%r3),%r31
	depd,z %r31,62,63,%r31
	std %r31,8(%r3)
.L721:
	ldd 8(%r28),%r19
	ldd 0(%r28),%r31
	cmpb,*<<=,n %r31,%r19,.L724
	ldd 8(%r3),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L724
	ldd 8(%r28),%r19
	depdi,z 1,32,4,%r31
	and %r19,%r31,%r19
	ldi 0,%r31
	cmpb,*= %r31,%r19,.L723
	nop
	b,n .L724
.L726:
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*>>,n %r31,%r19,.L725
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	sub %r19,%r31,%r31
	std %r31,0(%r28)
	ldd 16(%r3),%r19
	ldd 8(%r3),%r31
	or %r19,%r31,%r31
	std %r31,16(%r3)
.L725:
	ldd 8(%r3),%r31
	extrd,u %r31,62,63,%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r31
	extrd,u %r31,62,63,%r31
	std %r31,8(%r28)
.L724:
	ldd 8(%r3),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L726
	nop
	ldw 16(%r28),%r31
	cmpib,=,n 0,%r31,.L727
	ldd 0(%r28),%r28
	b,n .L728
.L727:
	ldd 16(%r3),%r28
.L728:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 32,%r31
	stw %r31,8(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldw 8(%r28),%r19
	ldw 8(%r3),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L730
	stw %r0,28(%r3)
	ldw 20(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 31,%r28,%r28
	std %r28,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,24(%r3)
	b,n .L731
.L730:
	ldw 8(%r28),%r31
	cmpib,<>,n 0,%r31,.L732
	ldd 0(%r28),%r28
	b,n .L734
.L732:
	ldw 20(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,28(%r3)
	ldw 16(%r3),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 20(%r3),%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r3),%r20
	ldw 8(%r28),%r28
	sub %r20,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,24(%r3)
.L731:
	ldd 24(%r3),%r28
.L734:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,112(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,0(%r28)
	std %r20,8(%r28)
	stw %r24,16(%r28)
	ldi 64,%r31
	stw %r31,8(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r31
	std %r31,24(%r3)
	ldw 16(%r28),%r19
	ldw 8(%r3),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L736
	ldo 32(%r3),%r31
	std %r0,8(%r31)
	ldd 24(%r3),%r31
	ldw 16(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r28,%r28
	std %r28,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r28
	copy %r28,%r31
	ldo 32(%r3),%r28
	std %r31,0(%r28)
	b,n .L737
.L736:
	ldw 16(%r28),%r31
	cmpib,<>,n 0,%r31,.L738
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
	b,n .L740
.L738:
	ldd 24(%r3),%r31
	ldw 16(%r28),%r19
	extrd,u %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r20
	mtsar %r20
	depd,z %r31,%sar,64,%r19
	ldo 32(%r3),%r31
	std %r19,8(%r31)
	ldd 16(%r3),%r31
	ldw 16(%r28),%r19
	extrd,u %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r31
	ldd 24(%r3),%r19
	ldw 8(%r3),%r20
	ldw 16(%r28),%r28
	sub %r20,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r19,%sar,%r28
	or %r31,%r28,%r28
	copy %r28,%r31
	ldo 32(%r3),%r28
	std %r31,0(%r28)
.L737:
	ldo 32(%r3),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
.L740:
	copy %r19,%r21
	copy %r20,%r22
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashlti3, .-__ashlti3
	.align 8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 32,%r31
	stw %r31,8(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldw 8(%r28),%r19
	ldw 8(%r3),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L742
	ldw 16(%r3),%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r3),%r19
	ldo -1(%r19),%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,24(%r3)
	ldw 16(%r3),%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 31,%r28,%r28
	std %r28,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,28(%r3)
	b,n .L743
.L742:
	ldw 8(%r28),%r31
	cmpib,<>,n 0,%r31,.L744
	ldd 0(%r28),%r28
	b,n .L746
.L744:
	ldw 16(%r3),%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,24(%r3)
	ldw 16(%r3),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r3),%r20
	ldw 8(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 20(%r3),%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,28(%r3)
.L743:
	ldd 24(%r3),%r28
.L746:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,112(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,0(%r28)
	std %r20,8(%r28)
	stw %r24,16(%r28)
	ldi 64,%r31
	stw %r31,8(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r31
	std %r31,24(%r3)
	ldw 16(%r28),%r19
	ldw 8(%r3),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L748
	ldd 16(%r3),%r31
	ldw 8(%r3),%r19
	ldo -1(%r19),%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r20
	mtsar %r20
	extrd,s %r31,%sar,64,%r19
	ldo 32(%r3),%r31
	std %r19,0(%r31)
	ldd 16(%r3),%r31
	ldw 16(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r28,%r28
	std %r28,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r19
	mtsar %r19
	extrd,s %r31,%sar,64,%r28
	copy %r28,%r31
	ldo 32(%r3),%r28
	std %r31,8(%r28)
	b,n .L749
.L748:
	ldw 16(%r28),%r31
	cmpib,<>,n 0,%r31,.L750
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
	b,n .L752
.L750:
	ldd 16(%r3),%r31
	ldw 16(%r28),%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r20
	mtsar %r20
	extrd,s %r31,%sar,64,%r19
	ldo 32(%r3),%r31
	std %r19,0(%r31)
	ldd 16(%r3),%r31
	ldw 8(%r3),%r20
	ldw 16(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r31
	ldd 24(%r3),%r19
	ldw 16(%r28),%r28
	extrd,u %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r19,%sar,%r28
	or %r31,%r28,%r31
	ldo 32(%r3),%r28
	std %r31,8(%r28)
.L749:
	ldo 32(%r3),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
.L752:
	copy %r19,%r21
	copy %r20,%r22
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashrti3, .-__ashrti3
	.align 8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r31
	extrd,u %r31,7,8,%r19
	ldd 0(%r28),%r31
	extrd,u %r31,23,24,%r20
	depdi,z -1,55,8,%r31
	and %r20,%r31,%r31
	or %r19,%r31,%r19
	ldd 0(%r28),%r31
	extrd,u %r31,39,40,%r20
	ldil L'16711680,%r31
	and %r20,%r31,%r31
	or %r19,%r31,%r19
	ldd 0(%r28),%r31
	extrd,u %r31,55,56,%r20
	depdi,z -1,39,8,%r31
	and %r20,%r31,%r31
	or %r19,%r31,%r19
	ldd 0(%r28),%r31
	depd,z %r31,55,56,%r20
	depdi,z -1,31,8,%r31
	and %r20,%r31,%r31
	or %r19,%r31,%r19
	ldd 0(%r28),%r31
	depd,z %r31,39,40,%r20
	depdi,z -1,23,8,%r31
	and %r20,%r31,%r31
	or %r19,%r31,%r19
	ldd 0(%r28),%r31
	depd,z %r31,23,24,%r20
	depdi,z -1,15,8,%r31
	and %r20,%r31,%r31
	or %r19,%r31,%r31
	ldd 0(%r28),%r28
	depd,z %r28,7,8,%r28
	or %r31,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r31
	extrw,u %r31,7,8,%r31
	extrd,u %r31,63,32,%r19
	ldw 0(%r28),%r31
	extrw,u %r31,23,24,%r31
	extrd,u %r31,63,32,%r20
	depwi,z -1,23,8,%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	or %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldw 0(%r28),%r31
	depw,z %r31,23,24,%r31
	extrd,u %r31,63,32,%r20
	ldil L'16711680,%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	or %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	ldw 0(%r28),%r28
	depw,z %r28,7,8,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r31
	depwi,z -1,31,16,%r28
	cmpb,<<,n %r28,%r31,.L758
	ldi 16,%r28
	b,n .L759
.L758:
	ldi 0,%r28
.L759:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 16,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw 8(%r3),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r31
	depwi,z -1,23,8,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L760
	ldi 8,%r28
	b,n .L761
.L760:
	ldi 0,%r28
.L761:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 8,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw 8(%r3),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r31
	ldi 240,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L762
	ldi 4,%r28
	b,n .L763
.L762:
	ldi 0,%r28
.L763:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 4,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw 8(%r3),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r31
	ldi 12,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L764
	ldi 2,%r28
	b,n .L765
.L764:
	ldi 0,%r28
.L765:
	stw %r28,12(%r3)
	ldw 12(%r3),%r28
	subi 2,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw 8(%r3),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r31
	ldi 2,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r31
	ldw 8(%r3),%r28
	subi 2,%r28,%r28
	extrd,u %r28,63,32,%r28
	std %r31,24(%r3)
	fldd 24(%r3),%fr23
	std %r28,24(%r3)
	fldd 24(%r3),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,24(%r3)
	ldd 24(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 8
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r4,32(%r3)
	ldo -64(%r29),%r31
	copy %r26,%r19
	copy %r25,%r20
	copy %r20,%r29
	copy %r19,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldd 0(%r31),%r28
	std %r28,16(%r3)
	ldd 8(%r31),%r28
	std %r28,24(%r3)
	ldd 16(%r3),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrd,u %r28,0,1,%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	std %r28,8(%r3)
	ldd 16(%r3),%r31
	ldd 8(%r3),%r28
	uaddcm %r0,%r28,%r28
	and %r31,%r28,%r28
	copy %r28,%r31
	ldd 24(%r3),%r19
	ldd 8(%r3),%r28
	and %r19,%r28,%r28
	or %r31,%r28,%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __clzdi2,%r2
	nop
	copy %r4,%r27
	extrd,s %r28,63,32,%r31
	ldd 8(%r3),%r28
	extrd,s %r28,63,32,%r19
	ldi 64,%r28
	and %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clzti2, .-__clzti2
	.align 8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r28
	std %r28,16(%r3)
	ldw 8(%r3),%r28
	extrd,s %r28,63,32,%r31
	ldw 16(%r3),%r28
	extrd,s %r28,63,32,%r28
	cmpb,<=,n %r28,%r31,.L770
	ldi 0,%r28
	b,n .L775
.L770:
	ldw 8(%r3),%r28
	extrd,s %r28,63,32,%r31
	ldw 16(%r3),%r28
	extrd,s %r28,63,32,%r28
	cmpb,>=,n %r28,%r31,.L772
	ldi 2,%r28
	b,n .L775
.L772:
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldw 20(%r3),%r28
	extrd,u %r28,63,32,%r28
	cmpb,<<=,n %r28,%r31,.L773
	ldi 0,%r28
	b,n .L775
.L773:
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldw 20(%r3),%r28
	extrd,u %r28,63,32,%r28
	cmpb,>>=,n %r28,%r31,.L774
	ldi 2,%r28
	b,n .L775
.L774:
	ldi 1,%r28
.L775:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,128(%r30)
	std %r4,8(%r3)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 8(%r28),%r25
	ldd 0(%r28),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __cmpdi2,%r2
	nop
	copy %r4,%r27
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 8
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,0(%r28)
	std %r20,8(%r28)
	copy %r24,%r31
	copy %r23,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,16(%r28)
	std %r20,24(%r28)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r31
	std %r31,24(%r3)
	ldo 32(%r3),%r31
	ldd 16(%r28),%r19
	std %r19,0(%r31)
	ldd 24(%r28),%r28
	std %r28,8(%r31)
	ldd 16(%r3),%r31
	ldo 32(%r3),%r28
	ldd 0(%r28),%r28
	cmpb,*<=,n %r28,%r31,.L779
	ldi 0,%r28
	b,n .L784
.L779:
	ldd 16(%r3),%r31
	ldo 32(%r3),%r28
	ldd 0(%r28),%r28
	cmpb,*>=,n %r28,%r31,.L781
	ldi 2,%r28
	b,n .L784
.L781:
	ldd 24(%r3),%r31
	ldo 32(%r3),%r28
	ldd 8(%r28),%r28
	cmpb,*<<=,n %r28,%r31,.L782
	ldi 0,%r28
	b,n .L784
.L782:
	ldd 24(%r3),%r31
	ldo 32(%r3),%r28
	ldd 8(%r28),%r28
	cmpb,*>>=,n %r28,%r31,.L783
	ldi 2,%r28
	b,n .L784
.L783:
	ldi 1,%r28
.L784:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmpti2, .-__cmpti2
	.align 8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,16,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L786
	ldi 16,%r28
	b,n .L787
.L786:
	ldi 0,%r28
.L787:
	stw %r28,12(%r3)
	ldw 8(%r3),%r31
	ldw 12(%r3),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,8,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L788
	ldi 8,%r28
	b,n .L789
.L788:
	ldi 0,%r28
.L789:
	stw %r28,12(%r3)
	ldw 8(%r3),%r31
	ldw 12(%r3),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L790
	ldi 4,%r28
	b,n .L791
.L790:
	ldi 0,%r28
.L791:
	stw %r28,12(%r3)
	ldw 8(%r3),%r31
	ldw 12(%r3),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,2,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L792
	ldi 2,%r28
	b,n .L793
.L792:
	ldi 0,%r28
.L793:
	stw %r28,12(%r3)
	ldw 8(%r3),%r31
	ldw 12(%r3),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,2,%r28
	stw %r28,8(%r3)
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 8(%r3),%r28
	uaddcm %r0,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,u %r28,63,32,%r31
	ldw 8(%r3),%r28
	extrw,u %r28,30,31,%r28
	extrd,u %r28,63,32,%r28
	subi 2,%r28,%r28
	extrd,u %r28,63,32,%r28
	sub %r0,%r31,%r31
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 8
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r4,32(%r3)
	ldo -64(%r29),%r31
	copy %r26,%r19
	copy %r25,%r20
	copy %r20,%r29
	copy %r19,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldd 0(%r31),%r28
	std %r28,16(%r3)
	ldd 8(%r31),%r28
	std %r28,24(%r3)
	ldd 24(%r3),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrd,u %r28,0,1,%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	std %r28,8(%r3)
	ldd 16(%r3),%r31
	ldd 8(%r3),%r28
	and %r31,%r28,%r28
	copy %r28,%r31
	ldd 24(%r3),%r19
	ldd 8(%r3),%r28
	uaddcm %r0,%r28,%r28
	and %r19,%r28,%r28
	or %r31,%r28,%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __ctzdi2,%r2
	nop
	copy %r4,%r27
	extrd,s %r28,63,32,%r31
	ldd 8(%r3),%r28
	extrd,s %r28,63,32,%r19
	ldi 64,%r28
	and %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzti2, .-__ctzti2
	.align 8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r4,32(%r3)
	ldo -64(%r29),%r31
	copy %r26,%r19
	copy %r25,%r20
	copy %r20,%r29
	copy %r19,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldd 0(%r31),%r28
	std %r28,16(%r3)
	ldd 8(%r31),%r28
	std %r28,24(%r3)
	ldd 24(%r3),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L798
	ldd 16(%r3),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L799
	ldi 0,%r28
	b,n .L801
.L799:
	ldd 16(%r3),%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __ctzdi2,%r2
	nop
	copy %r4,%r27
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r28
	ldo 65(%r28),%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	b,n .L801
.L798:
	ldd 24(%r3),%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __ctzdi2,%r2
	nop
	copy %r4,%r27
	extrd,s %r28,63,32,%r28
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L801:
	ldd -16(%r3),%r2
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ffsti2, .-__ffsti2
	.align 8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 32,%r31
	stw %r31,8(%r3)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldw 8(%r28),%r19
	ldw 8(%r3),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L803
	stw %r0,24(%r3)
	ldw 16(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,28(%r3)
	b,n .L804
.L803:
	ldw 8(%r28),%r31
	cmpib,<>,n 0,%r31,.L805
	ldd 0(%r28),%r28
	b,n .L807
.L805:
	ldw 16(%r3),%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,24(%r3)
	ldw 16(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r3),%r20
	ldw 8(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 20(%r3),%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,28(%r3)
.L804:
	ldd 24(%r3),%r28
.L807:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,112(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,0(%r28)
	std %r20,8(%r28)
	stw %r24,16(%r28)
	ldi 64,%r31
	stw %r31,8(%r3)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
	std %r19,16(%r3)
	std %r20,24(%r3)
	ldw 16(%r28),%r19
	ldw 8(%r3),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L809
	ldo 32(%r3),%r31
	std %r0,0(%r31)
	ldd 16(%r3),%r31
	ldw 16(%r28),%r19
	ldw 8(%r3),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r31,%sar,%r31
	ldo 32(%r3),%r28
	std %r31,8(%r28)
	b,n .L810
.L809:
	ldw 16(%r28),%r31
	cmpib,<>,n 0,%r31,.L811
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
	b,n .L813
.L811:
	ldd 16(%r3),%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	mtsar %r31
	shrpd %r0,%r19,%sar,%r19
	ldo 32(%r3),%r31
	std %r19,0(%r31)
	ldd 16(%r3),%r31
	ldw 8(%r3),%r20
	ldw 16(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r31
	ldd 24(%r3),%r19
	ldw 16(%r28),%r28
	extrd,u %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r19,%sar,%r28
	or %r31,%r28,%r31
	ldo 32(%r3),%r28
	std %r31,8(%r28)
.L810:
	ldo 32(%r3),%r31
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	copy %r28,%r19
	copy %r29,%r20
.L813:
	copy %r19,%r21
	copy %r20,%r22
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__lshrti3, .-__lshrti3
	.align 8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 16,%r31
	stw %r31,8(%r3)
	ldi -1,%r19
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	stw %r31,12(%r3)
	ldw 0(%r28),%r19
	ldw 12(%r3),%r31
	and %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r20
	ldw 12(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	std %r19,32(%r3)
	fldd 32(%r3),%fr23
	std %r31,32(%r3)
	fldd 32(%r3),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r31
	extrd,u %r31,63,32,%r31
	stw %r31,28(%r3)
	ldw 28(%r3),%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	stw %r31,16(%r3)
	ldw 28(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 12(%r3),%r19
	and %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,28(%r3)
	ldw 0(%r28),%r19
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r20
	ldw 12(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	std %r19,32(%r3)
	fldd 32(%r3),%fr23
	std %r31,32(%r3)
	fldd 32(%r3),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 16(%r3),%r19
	add,l %r19,%r31,%r31
	stw %r31,16(%r3)
	ldw 28(%r3),%r31
	extrd,u %r31,63,32,%r19
	ldw 16(%r3),%r20
	ldw 12(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r3),%r20
	subi 31,%r20,%r20
	std %r20,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r20
	mtsar %r20
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,28(%r3)
	ldw 16(%r3),%r19
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,24(%r3)
	ldw 28(%r3),%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	stw %r31,16(%r3)
	ldw 28(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 12(%r3),%r19
	and %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,28(%r3)
	ldw 8(%r28),%r19
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r19
	ldw 0(%r28),%r20
	ldw 12(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	std %r19,32(%r3)
	fldd 32(%r3),%fr23
	std %r31,32(%r3)
	fldd 32(%r3),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldw 16(%r3),%r19
	add,l %r19,%r31,%r31
	stw %r31,16(%r3)
	ldw 28(%r3),%r31
	extrd,u %r31,63,32,%r19
	ldw 16(%r3),%r20
	ldw 12(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r3),%r20
	subi 31,%r20,%r20
	std %r20,32(%r3)
	fldd 32(%r3),%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r20
	mtsar %r20
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,28(%r3)
	ldw 24(%r3),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r19
	ldw 16(%r3),%r20
	ldw 8(%r3),%r31
	mtsar %r31
	shrpw %r0,%r20,%sar,%r31
	extrd,u %r31,63,32,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,24(%r3)
	ldw 24(%r3),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 0(%r28),%r20
	ldw 8(%r3),%r19
	mtsar %r19
	shrpw %r0,%r20,%sar,%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r20
	ldw 8(%r3),%r28
	mtsar %r28
	shrpw %r0,%r20,%sar,%r28
	extrd,u %r28,63,32,%r28
	std %r19,32(%r3)
	fldd 32(%r3),%fr23
	std %r28,32(%r3)
	fldd 32(%r3),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,24(%r3)
	ldd 24(%r3),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r4,40(%r3)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r28
	std %r28,16(%r3)
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r28
	ldw 20(%r3),%r31
	extrd,u %r31,63,32,%r31
	copy %r31,%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __muldsi3,%r2
	nop
	copy %r4,%r27
	std %r28,24(%r3)
	ldw 24(%r3),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r31
	ldw 8(%r3),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r19
	ldw 20(%r3),%r28
	extrd,u %r28,63,32,%r28
	std %r19,32(%r3)
	fldd 32(%r3),%fr23
	std %r28,32(%r3)
	fldd 32(%r3),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r28
	extrd,u %r28,63,32,%r19
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r20
	ldw 16(%r3),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r28
	std %r20,32(%r3)
	fldd 32(%r3),%fr23
	std %r28,32(%r3)
	fldd 32(%r3),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,32(%r3)
	ldd 32(%r3),%r28
	extrd,u %r28,63,32,%r28
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,24(%r3)
	ldd 24(%r3),%r28
	ldd -16(%r3),%r2
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,112(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldi 32,%r31
	stw %r31,8(%r3)
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldi -1,%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	std %r31,16(%r3)
	ldd 0(%r28),%r19
	ldd 16(%r3),%r31
	and %r19,%r31,%r19
	ldd 8(%r28),%r20
	ldd 16(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r19,31,32,%r21
	extrd,u %r31,31,32,%r20
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	std %r31,48(%r3)
	fldd 48(%r3),%fr23
	std %r21,48(%r3)
	fldd 48(%r3),%fr25
	std %r20,48(%r3)
	fldd 48(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,48(%r3)
	ldd 48(%r3),%r19
	fstd %fr24,48(%r3)
	ldd 48(%r3),%r20
	add,l %r19,%r20,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r20
	add,l %r31,%r20,%r19
	ldo 32(%r3),%r31
	std %r19,8(%r31)
	ldo 32(%r3),%r31
	ldd 8(%r31),%r19
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	std %r31,24(%r3)
	ldo 32(%r3),%r31
	ldd 8(%r31),%r19
	ldd 16(%r3),%r31
	and %r19,%r31,%r19
	ldo 32(%r3),%r31
	std %r19,8(%r31)
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r19
	ldd 8(%r28),%r20
	ldd 16(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r19,31,32,%r21
	extrd,u %r31,31,32,%r20
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	std %r31,48(%r3)
	fldd 48(%r3),%fr23
	std %r21,48(%r3)
	fldd 48(%r3),%fr25
	std %r20,48(%r3)
	fldd 48(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,48(%r3)
	ldd 48(%r3),%r19
	fstd %fr24,48(%r3)
	ldd 48(%r3),%r20
	add,l %r19,%r20,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r19
	add,l %r31,%r19,%r31
	ldd 24(%r3),%r19
	add,l %r19,%r31,%r31
	std %r31,24(%r3)
	ldo 32(%r3),%r31
	ldd 8(%r31),%r19
	ldd 24(%r3),%r20
	ldd 16(%r3),%r31
	and %r20,%r31,%r31
	ldw 8(%r3),%r20
	extrd,u %r20,63,32,%r20
	subi 63,%r20,%r20
	std %r20,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r20
	mtsar %r20
	depd,z %r31,%sar,64,%r31
	add,l %r19,%r31,%r19
	ldo 32(%r3),%r31
	std %r19,8(%r31)
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	copy %r31,%r19
	ldo 32(%r3),%r31
	std %r19,0(%r31)
	ldo 32(%r3),%r31
	ldd 8(%r31),%r19
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	std %r31,24(%r3)
	ldo 32(%r3),%r31
	ldd 8(%r31),%r19
	ldd 16(%r3),%r31
	and %r19,%r31,%r19
	ldo 32(%r3),%r31
	std %r19,8(%r31)
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r19
	ldd 0(%r28),%r20
	ldd 16(%r3),%r31
	and %r20,%r31,%r31
	extrd,u %r19,31,32,%r21
	extrd,u %r31,31,32,%r20
	std %r19,48(%r3)
	fldd 48(%r3),%fr22
	std %r31,48(%r3)
	fldd 48(%r3),%fr23
	std %r21,48(%r3)
	fldd 48(%r3),%fr25
	std %r20,48(%r3)
	fldd 48(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,48(%r3)
	ldd 48(%r3),%r19
	fstd %fr24,48(%r3)
	ldd 48(%r3),%r20
	add,l %r19,%r20,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r19
	add,l %r31,%r19,%r31
	ldd 24(%r3),%r19
	add,l %r19,%r31,%r31
	std %r31,24(%r3)
	ldo 32(%r3),%r31
	ldd 8(%r31),%r19
	ldd 24(%r3),%r20
	ldd 16(%r3),%r31
	and %r20,%r31,%r31
	ldw 8(%r3),%r20
	extrd,u %r20,63,32,%r20
	subi 63,%r20,%r20
	std %r20,48(%r3)
	fldd 48(%r3),%fr22
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r20
	mtsar %r20
	depd,z %r31,%sar,64,%r31
	add,l %r19,%r31,%r19
	ldo 32(%r3),%r31
	std %r19,8(%r31)
	ldo 32(%r3),%r31
	ldd 0(%r31),%r31
	copy %r31,%r19
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 24(%r3),%r20
	mtsar %r31
	shrpd %r0,%r20,%sar,%r31
	add,l %r19,%r31,%r31
	copy %r31,%r19
	ldo 32(%r3),%r31
	std %r19,0(%r31)
	ldo 32(%r3),%r31
	ldd 0(%r31),%r31
	copy %r31,%r19
	ldw 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r20
	mtsar %r31
	shrpd %r0,%r20,%sar,%r31
	ldw 8(%r3),%r20
	extrd,u %r20,63,32,%r20
	ldd 8(%r28),%r28
	mtsar %r20
	shrpd %r0,%r28,%sar,%r28
	extrd,u %r31,31,32,%r21
	extrd,u %r28,31,32,%r20
	std %r31,48(%r3)
	fldd 48(%r3),%fr22
	std %r28,48(%r3)
	fldd 48(%r3),%fr23
	std %r21,48(%r3)
	fldd 48(%r3),%fr25
	std %r20,48(%r3)
	fldd 48(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,48(%r3)
	ldd 48(%r3),%r20
	fstd %fr24,48(%r3)
	ldd 48(%r3),%r31
	add,l %r20,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,48(%r3)
	ldd 48(%r3),%r20
	add,l %r28,%r20,%r28
	add,l %r19,%r28,%r28
	copy %r28,%r31
	ldo 32(%r3),%r28
	std %r31,0(%r28)
	ldo 32(%r3),%r31
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulddi3, .-__mulddi3
	.align 8
.globl __multi3
	.type	__multi3, @function
__multi3:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,192(%r30)
	std %r4,72(%r3)
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,0(%r28)
	std %r20,8(%r28)
	copy %r24,%r31
	copy %r23,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,16(%r28)
	std %r20,24(%r28)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r31
	std %r31,24(%r3)
	ldo 32(%r3),%r31
	ldd 16(%r28),%r19
	std %r19,0(%r31)
	ldd 24(%r28),%r28
	std %r28,8(%r31)
	ldd 24(%r3),%r31
	ldo 32(%r3),%r28
	ldd 8(%r28),%r28
	copy %r28,%r25
	copy %r31,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __mulddi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r29,%r20
	ldo 48(%r3),%r28
	std %r19,0(%r28)
	std %r20,8(%r28)
	ldo 48(%r3),%r28
	ldd 0(%r28),%r28
	copy %r28,%r19
	ldd 16(%r3),%r28
	copy %r28,%r31
	ldo 32(%r3),%r28
	ldd 8(%r28),%r28
	extrd,u %r31,31,32,%r21
	extrd,u %r28,31,32,%r20
	std %r31,64(%r3)
	fldd 64(%r3),%fr22
	std %r28,64(%r3)
	fldd 64(%r3),%fr23
	std %r21,64(%r3)
	fldd 64(%r3),%fr25
	std %r20,64(%r3)
	fldd 64(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,64(%r3)
	ldd 64(%r3),%r20
	fstd %fr24,64(%r3)
	ldd 64(%r3),%r21
	add,l %r20,%r21,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,64(%r3)
	ldd 64(%r3),%r31
	add,l %r28,%r31,%r20
	ldd 24(%r3),%r31
	ldo 32(%r3),%r28
	ldd 0(%r28),%r28
	extrd,u %r31,31,32,%r22
	extrd,u %r28,31,32,%r21
	std %r31,64(%r3)
	fldd 64(%r3),%fr22
	std %r28,64(%r3)
	fldd 64(%r3),%fr23
	std %r22,64(%r3)
	fldd 64(%r3),%fr25
	std %r21,64(%r3)
	fldd 64(%r3),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,64(%r3)
	ldd 64(%r3),%r21
	fstd %fr24,64(%r3)
	ldd 64(%r3),%r31
	add,l %r21,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,64(%r3)
	ldd 64(%r3),%r21
	add,l %r28,%r21,%r28
	add,l %r20,%r28,%r28
	add,l %r19,%r28,%r28
	copy %r28,%r31
	ldo 48(%r3),%r28
	std %r31,0(%r28)
	ldo 48(%r3),%r31
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 72(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__multi3, .-__multi3
	.align 8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	sub %r0,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 8
.globl __negti2
	.type	__negti2, @function
__negti2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r31
	copy %r26,%r19
	copy %r25,%r20
	copy %r20,%r29
	copy %r19,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	sub %r0,%r29,%r20
	sub,db %r0,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	copy %r28,%r19
	copy %r29,%r20
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__negti2, .-__negti2
	.align 8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	std %r28,16(%r3)
	ldw 16(%r3),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r31
	ldw 20(%r3),%r28
	extrd,u %r28,63,32,%r28
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	subi 31,%r31,%r31
	std %r31,24(%r3)
	fldd 24(%r3),%fr22
	fstd %fr22,24(%r3)
	ldd 24(%r3),%r31
	mtsar %r31
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 8
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r31
	copy %r26,%r19
	copy %r25,%r20
	copy %r20,%r29
	copy %r19,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldd 0(%r31),%r28
	std %r28,16(%r3)
	ldd 8(%r31),%r28
	std %r28,24(%r3)
	ldd 16(%r3),%r28
	copy %r28,%r31
	ldd 24(%r3),%r28
	xor %r31,%r28,%r28
	std %r28,32(%r3)
	ldw 32(%r3),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r31
	ldw 36(%r3),%r28
	extrd,u %r28,63,32,%r28
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	subi 31,%r31,%r31
	std %r31,40(%r3)
	fldd 40(%r3),%fr22
	fstd %fr22,40(%r3)
	ldd 40(%r3),%r31
	mtsar %r31
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__parityti2, .-__parityti2
	.align 8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	xor %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	subi 31,%r31,%r31
	std %r31,16(%r3)
	fldd 16(%r3),%fr22
	fstd %fr22,16(%r3)
	ldd 16(%r3),%r31
	mtsar %r31
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.section	.rodata
	.align 8
.LC18:
	.dword	6148914691236517205
	.align 8
.LC19:
	.dword	3689348814741910323
	.align 8
.LC20:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	std %r28,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,62,63,%r31
	addil LT'.LC18,%r27
	copy %r1,%r28
	ldd RT'.LC18(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r28
	ldd 8(%r3),%r31
	sub %r31,%r28,%r28
	std %r28,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,61,62,%r31
	addil LT'.LC19,%r27
	copy %r1,%r28
	ldd RT'.LC19(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r31
	ldd 8(%r3),%r19
	addil LT'.LC19,%r27
	copy %r1,%r28
	ldd RT'.LC19(%r28),%r28
	ldd 0(%r28),%r28
	and %r19,%r28,%r28
	add,l %r31,%r28,%r28
	std %r28,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,59,60,%r31
	ldd 8(%r3),%r28
	add,l %r31,%r28,%r31
	addil LT'.LC20,%r27
	copy %r1,%r28
	ldd RT'.LC20(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r28
	std %r28,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldd 8(%r3),%r28
	extrd,u %r28,31,32,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 16(%r3),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,16(%r3)
	ldw 16(%r3),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw 16(%r3),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,7,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,30,31,%r28
	extrd,u %r28,63,32,%r31
	ldil L'1431650304,%r28
	ldo 5461(%r28),%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	sub %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,29,30,%r28
	extrd,u %r28,63,32,%r31
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldw 8(%r3),%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldil L'252641280,%r28
	ldo 3855(%r28),%r28
	and %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,8(%r3)
	ldw 8(%r3),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw 8(%r3),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,6,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
	.align 8
.LC21:
	.dword	6148914691236517205
	.align 8
.LC22:
	.dword	3689348814741910323
	.align 8
.LC23:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.PROC
	.CALLINFO FRAME=160,NO_CALLS,SAVE_SP,ENTRY_GR=11
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r12,48(%r3)
	std %r11,56(%r3)
	std %r10,64(%r3)
	std %r9,72(%r3)
	std %r8,80(%r3)
	std %r7,88(%r3)
	std %r6,96(%r3)
	std %r5,104(%r3)
	ldo -64(%r29),%r31
	copy %r25,%r29
	copy %r26,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldd 0(%r31),%r28
	std %r28,16(%r3)
	ldd 8(%r31),%r28
	std %r28,24(%r3)
	ldd 16(%r3),%r28
	depd,z %r28,0,1,%r28
	ldd 24(%r3),%r31
	extrd,u %r31,62,63,%r22
	or %r28,%r22,%r22
	ldd 16(%r3),%r28
	extrd,u %r28,62,63,%r21
	addil LT'.LC21,%r27
	copy %r1,%r28
	ldd RT'.LC21(%r28),%r28
	ldd 0(%r28),%r28
	and %r21,%r28,%r11
	addil LT'.LC21,%r27
	copy %r1,%r28
	ldd RT'.LC21(%r28),%r28
	ldd 0(%r28),%r28
	and %r22,%r28,%r12
	ldd 16(%r3),%r28
	ldd 24(%r3),%r29
	sub %r29,%r12,%r29
	sub,db %r28,%r11,%r28
	std %r28,16(%r3)
	std %r29,24(%r3)
	ldd 16(%r3),%r28
	depd,z %r28,1,2,%r28
	ldd 24(%r3),%r31
	extrd,u %r31,61,62,%r20
	or %r28,%r20,%r20
	ldd 16(%r3),%r28
	extrd,u %r28,61,62,%r19
	addil LT'.LC22,%r27
	copy %r1,%r28
	ldd RT'.LC22(%r28),%r28
	ldd 0(%r28),%r28
	and %r19,%r28,%r9
	addil LT'.LC22,%r27
	copy %r1,%r28
	ldd RT'.LC22(%r28),%r28
	ldd 0(%r28),%r28
	and %r20,%r28,%r10
	ldd 16(%r3),%r31
	addil LT'.LC22,%r27
	copy %r1,%r28
	ldd RT'.LC22(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r7
	ldd 24(%r3),%r31
	addil LT'.LC22,%r27
	copy %r1,%r28
	ldd RT'.LC22(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r8
	add %r10,%r8,%r29
	add,dc %r9,%r7,%r28
	std %r28,16(%r3)
	std %r29,24(%r3)
	ldd 16(%r3),%r28
	depd,z %r28,3,4,%r28
	ldd 24(%r3),%r31
	extrd,u %r31,59,60,%r24
	or %r28,%r24,%r24
	ldd 16(%r3),%r28
	extrd,u %r28,59,60,%r23
	ldd 16(%r3),%r28
	ldd 24(%r3),%r29
	add %r24,%r29,%r29
	add,dc %r23,%r28,%r28
	addil LT'.LC23,%r27
	copy %r1,%r31
	ldd RT'.LC23(%r31),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r31
	std %r31,16(%r3)
	addil LT'.LC23,%r27
	copy %r1,%r31
	ldd RT'.LC23(%r31),%r31
	ldd 0(%r31),%r31
	and %r29,%r31,%r28
	std %r28,24(%r3)
	ldd 24(%r3),%r31
	ldd 16(%r3),%r28
	extrd,u %r28,63,64,%r6
	ldi 0,%r5
	copy %r6,%r28
	add,l %r31,%r28,%r28
	std %r28,32(%r3)
	ldd 32(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldd 32(%r3),%r28
	extrd,u %r28,31,32,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	stw %r28,40(%r3)
	ldw 40(%r3),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw 40(%r3),%r31
	add,l %r31,%r28,%r28
	stw %r28,40(%r3)
	ldw 40(%r3),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw 40(%r3),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,8,%r28
	extrd,s %r28,63,32,%r28
	ldd 48(%r3),%r12
	ldd 56(%r3),%r11
	ldd 64(%r3),%r10
	ldd 72(%r3),%r9
	ldd 80(%r3),%r8
	ldd 88(%r3),%r7
	ldd 96(%r3),%r6
	ldd 104(%r3),%r5
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcountti2, .-__popcountti2
	.section	.rodata
	.align 8
.LC24:
	.word	1072693248
	.word	0
	.text
	.align 8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,16(%r3)
	addil LT'.LC24,%r27
	copy %r1,%r31
	ldd RT'.LC24(%r31),%r31
	fldd 0(%r31),%fr22
	fstd %fr22,8(%r3)
.L842:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L839
	fldd 8(%r3),%fr23
	fldd 0(%r28),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	fstd %fr22,8(%r3)
.L839:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L847
	fldd 0(%r28),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fstd %fr22,0(%r28)
	b,n .L842
.L847:
	nop
	ldw 16(%r3),%r28
	cmpib,=,n 0,%r28,.L843
	addil LT'.LC24,%r27
	copy %r1,%r28
	ldd RT'.LC24(%r28),%r28
	fldd 0(%r28),%fr23
	fldd 8(%r3),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	b,n .L845
.L843:
	fldd 8(%r3),%fr22
.L845:
	fcpy,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata
	.align 4
.LC25:
	.word	1065353216
	.text
	.align 8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,12(%r3)
	addil LT'.LC25,%r27
	copy %r1,%r31
	ldd RT'.LC25(%r31),%r31
	fldw 0(%r31),%fr22R
	fstw %fr22R,8(%r3)
.L852:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L849
	fldw 8(%r3),%fr23R
	fldw 0(%r28),%fr22R
	fmpy,sgl %fr23R,%fr22R,%fr22R
	fstw %fr22R,8(%r3)
.L849:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L857
	fldw 0(%r28),%fr22R
	fmpy,sgl %fr22R,%fr22R,%fr22R
	fstw %fr22R,0(%r28)
	b,n .L852
.L857:
	nop
	ldw 12(%r3),%r28
	cmpib,=,n 0,%r28,.L853
	addil LT'.LC25,%r27
	copy %r1,%r28
	ldd RT'.LC25(%r28),%r28
	fldw 0(%r28),%fr23R
	fldw 8(%r3),%fr22R
	fdiv,sgl %fr23R,%fr22R,%fr22R
	b,n .L855
.L853:
	fldw 8(%r3),%fr22R
.L855:
	fcpy,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,80(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,8(%r3)
	ldd 8(%r28),%r28
	std %r28,16(%r3)
	ldw 8(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldw 16(%r3),%r28
	extrd,u %r28,63,32,%r28
	cmpb,<<=,n %r28,%r31,.L859
	ldi 0,%r28
	b,n .L864
.L859:
	ldw 8(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldw 16(%r3),%r28
	extrd,u %r28,63,32,%r28
	cmpb,>>=,n %r28,%r31,.L861
	ldi 2,%r28
	b,n .L864
.L861:
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldw 20(%r3),%r28
	extrd,u %r28,63,32,%r28
	cmpb,<<=,n %r28,%r31,.L862
	ldi 0,%r28
	b,n .L864
.L862:
	ldw 12(%r3),%r28
	extrd,u %r28,63,32,%r31
	ldw 20(%r3),%r28
	extrd,u %r28,63,32,%r28
	cmpb,>>=,n %r28,%r31,.L863
	ldi 2,%r28
	b,n .L864
.L863:
	ldi 1,%r28
.L864:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,128(%r30)
	std %r4,8(%r3)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	ldd 8(%r28),%r28
	copy %r28,%r25
	copy %r31,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __ucmpdi2,%r2
	nop
	copy %r4,%r27
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 8
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,96(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,0(%r28)
	std %r20,8(%r28)
	copy %r24,%r31
	copy %r23,%r21
	copy %r21,%r20
	copy %r31,%r19
	std %r19,16(%r28)
	std %r20,24(%r28)
	ldd 0(%r28),%r31
	std %r31,16(%r3)
	ldd 8(%r28),%r31
	std %r31,24(%r3)
	ldo 32(%r3),%r31
	ldd 16(%r28),%r19
	std %r19,0(%r31)
	ldd 24(%r28),%r28
	std %r28,8(%r31)
	ldd 16(%r3),%r31
	ldo 32(%r3),%r28
	ldd 0(%r28),%r28
	cmpb,*<<=,n %r28,%r31,.L868
	ldi 0,%r28
	b,n .L873
.L868:
	ldd 16(%r3),%r31
	ldo 32(%r3),%r28
	ldd 0(%r28),%r28
	cmpb,*>>=,n %r28,%r31,.L870
	ldi 2,%r28
	b,n .L873
.L870:
	ldd 24(%r3),%r31
	ldo 32(%r3),%r28
	ldd 8(%r28),%r28
	cmpb,*<<=,n %r28,%r31,.L871
	ldi 0,%r28
	b,n .L873
.L871:
	ldd 24(%r3),%r31
	ldo 32(%r3),%r28
	ldd 8(%r28),%r28
	cmpb,*>>=,n %r28,%r31,.L872
	ldi 2,%r28
	b,n .L873
.L872:
	ldi 1,%r28
.L873:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
.globl __ctzdi2
.globl __clzdi2
.globl __multf3
.globl __netf2
.globl __addtf3
.globl __extenddftf2
.globl __gttf2
.globl __moddi3
.globl __divdi3
.globl __lttf2
.globl __unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
