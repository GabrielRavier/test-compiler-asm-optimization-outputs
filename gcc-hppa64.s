	.LEVEL 2.0w
	.text
	.align 8
.globl make_ti
	.type	make_ti, @function
make_ti:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-64(%r30)
	ldd 8(%r28),%r28
	std %r28,-56(%r30)
	ldd -64(%r30),%r28
	ldd -56(%r30),%r31
	copy %r31,%r29
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	make_ti, .-make_ti
	.align 8
.globl make_tu
	.type	make_tu, @function
make_tu:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-64(%r30)
	ldd 8(%r28),%r28
	std %r28,-56(%r30)
	ldd -64(%r30),%r28
	ldd -56(%r30),%r31
	copy %r31,%r29
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	make_tu, .-make_tu
	.align 8
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 8(%r28),%r19
	ldd 0(%r28),%r31
	cmpb,*<<=,n %r31,%r19,.L6
	ldd 8(%r28),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,-56(%r30)
	ldd 0(%r28),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,-72(%r30)
	b,n .L7
.L8:
	ldd -56(%r30),%r31
	ldo -1(%r31),%r31
	std %r31,-56(%r30)
	ldd -72(%r30),%r31
	ldo -1(%r31),%r31
	std %r31,-72(%r30)
	ldd -56(%r30),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd -72(%r30),%r31
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
	ldd 8(%r28),%r19
	ldd 0(%r28),%r31
	cmpb,*=,n %r31,%r19,.L9
	ldd 0(%r28),%r31
	std %r31,-64(%r30)
	b,n .L10
.L11:
	ldd 8(%r28),%r19
	ldo 1(%r19),%r31
	std %r31,8(%r28)
	ldd -64(%r30),%r31
	ldo 1(%r31),%r20
	std %r20,-64(%r30)
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
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 8
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	std %r23,24(%r28)
	ldw 16(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-56(%r30)
	b,n .L14
.L16:
	ldd 24(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,24(%r28)
	ldd 8(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
.L14:
	ldd 24(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L15
	ldd 8(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldd 0(%r28),%r31
	stb %r19,0(%r31)
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldw -56(%r30),%r19
	cmpb,<> %r31,%r19,.L16
	nop
.L15:
	ldd 24(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L17
	ldd 0(%r28),%r28
	ldo 1(%r28),%r28
	b,n .L18
.L17:
	ldi 0,%r28
.L18:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 8
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-56(%r30)
	b,n .L20
.L22:
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L20:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L21
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldw -56(%r30),%r19
	cmpb,<> %r31,%r19,.L22
	nop
.L21:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L23
	ldd 0(%r28),%r28
	b,n .L25
.L23:
	ldi 0,%r28
.L25:
	nop
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 8
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L27
.L29:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r28)
.L27:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L28
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldd 8(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	cmpb,= %r31,%r19,.L29
	nop
.L28:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L30
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
	b,n .L31
.L30:
	ldi 0,%r28
.L31:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 8
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L34
.L35:
	ldd 8(%r28),%r19
	ldo 1(%r19),%r31
	std %r31,8(%r28)
	ldd -56(%r30),%r31
	ldo 1(%r31),%r20
	std %r20,-56(%r30)
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
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 8
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-56(%r30)
	b,n .L38
.L40:
	ldd 0(%r28),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	extrd,s %r31,63,32,%r31
	ldw -56(%r30),%r19
	cmpb,<>,n %r31,%r19,.L38
	ldd 0(%r28),%r31
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
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 8
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L42
.L43:
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r19
	ldd -56(%r30),%r31
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd -56(%r30),%r31
	ldo 1(%r31),%r31
	std %r31,-56(%r30)
.L42:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L43
	nop
	ldd 0(%r28),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-56(%r30)
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
	ldw -56(%r30),%r19
	cmpb,<> %r31,%r19,.L52
	nop
.L51:
	ldd 0(%r28),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 8
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r19
	copy %r26,%r28
	stw %r25,8(%r19)
.L57:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	ldw 8(%r19),%r20
	cmpb,=,n %r31,%r20,.L58
	copy %r28,%r31
	ldo 1(%r31),%r28
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r20
	ldi 0,%r31
	cmpb,*<> %r31,%r20,.L57
	nop
	ldi 0,%r28
	b,n .L56
.L58:
	nop
.L56:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 8
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	b,n .L60
.L62:
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r28)
.L60:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 8(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<>,n %r31,%r19,.L61
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L62
	nop
.L61:
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
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 8
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L65
.L66:
	ldd -56(%r30),%r31
	ldo 1(%r31),%r31
	std %r31,-56(%r30)
.L65:
	ldd -56(%r30),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L66
	nop
	ldd -56(%r30),%r31
	ldd 0(%r28),%r28
	sub %r31,%r28,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 8
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,-56(%r30)
	ldi 0,%r19
	cmpb,*<>,n %r19,%r31,.L71
	ldi 0,%r28
	b,n .L70
.L73:
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,8(%r28)
	ldd -56(%r30),%r31
	ldo -1(%r31),%r31
	std %r31,-56(%r30)
.L71:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L72
	ldd 8(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L72
	ldd -56(%r30),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L72
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r19
	ldd 8(%r28),%r31
	ldb 0(%r31),%r31
	extrd,u %r31,63,8,%r31
	cmpb,= %r31,%r19,.L73
	nop
.L72:
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
.L70:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 8
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L75
.L76:
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 8(%r28),%r31
	stb %r19,0(%r31)
	ldd 8(%r28),%r31
	ldo 1(%r31),%r31
	ldd 0(%r28),%r19
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 8(%r28),%r31
	ldo 2(%r31),%r31
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	ldo 2(%r31),%r31
	std %r31,0(%r28)
	ldd 16(%r28),%r31
	ldo -2(%r31),%r31
	std %r31,16(%r28)
.L75:
	ldd 16(%r28),%r19
	ldi 1,%r31
	cmpb,*< %r31,%r19,.L76
	nop
	nop
	nop
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 8
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
.L78:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 8
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 127,%r31
	cmpclr,>>= %r31,%r19,%r0
	ldi 0,%r28
.L81:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 8
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 32,%r31
	cmpb,=,n %r31,%r19,.L84
	ldw 0(%r28),%r28
	cmpib,<>,n 9,%r28,.L85
.L84:
	ldi 1,%r28
	b,n .L86
.L85:
	ldi 0,%r28
.L86:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldi 31,%r31
	cmpb,>>=,n %r31,%r19,.L89
	ldw 0(%r28),%r31
	ldi 127,%r28
	cmpb,<>,n %r28,%r31,.L90
.L89:
	ldi 1,%r28
	b,n .L91
.L90:
	ldi 0,%r28
.L91:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 8
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpiclr,>>= 9,%r31,%r0
	ldi 0,%r28
.L94:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 8
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
.L97:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 8
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
.L100:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 8
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
.L103:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 8
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 32,%r31
	cmpb,=,n %r31,%r19,.L106
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	ldo -9(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,<<,n 4,%r28,.L107
.L106:
	ldi 1,%r28
	b,n .L108
.L107:
	ldi 0,%r28
.L108:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 8
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
.L111:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 31,%r31
	cmpb,>>=,n %r31,%r19,.L114
	ldw 0(%r28),%r31
	ldo -127(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 32,%r31
	cmpb,>>=,n %r31,%r19,.L114
	ldw 0(%r28),%r19
	ldil L'-16384,%r31
	ldo 8152(%r31),%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	cmpib,>>=,n 1,%r31,.L114
	ldw 0(%r28),%r31
	ldil L'-65536,%r28
	ldo 7(%r28),%r28
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	cmpib,<<,n 2,%r28,.L115
.L114:
	ldi 1,%r28
	b,n .L116
.L115:
	ldi 0,%r28
.L116:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpiclr,>>= 9,%r31,%r0
	ldi 0,%r28
.L119:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 8
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r19
	ldi 254,%r31
	cmpb,<<,n %r31,%r19,.L122
	ldw 0(%r28),%r28
	ldo 1(%r28),%r28
	extrd,u %r28,63,32,%r28
	extrw,u %r28,31,7,%r28
	extrd,u %r28,63,32,%r19
	ldi 1,%r28
	ldi 32,%r31
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L123:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L124
.L122:
	ldw 0(%r28),%r19
	ldil L'16384,%r31
	ldo -8153(%r31),%r31
	cmpb,>>=,n %r31,%r19,.L125
	ldw 0(%r28),%r19
	ldil L'-16384,%r31
	ldo 8150(%r31),%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldil L'49152,%r31
	ldo -2091(%r31),%r31
	cmpb,>>=,n %r31,%r19,.L125
	ldw 0(%r28),%r19
	ldil L'-57344,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldi 8184,%r31
	cmpb,<<,n %r31,%r19,.L126
.L125:
	ldi 1,%r28
	b,n .L124
.L126:
	ldw 0(%r28),%r19
	ldil L'-65536,%r31
	ldo 4(%r31),%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpb,<<,n %r31,%r19,.L127
	ldw 0(%r28),%r31
	depwi,z -1,30,15,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	depwi,z -1,30,15,%r28
	cmpb,<>,n %r28,%r31,.L128
.L127:
	ldi 0,%r28
	b,n .L124
.L128:
	ldi 1,%r28
.L124:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r31
	ldo -48(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpib,>>=,n 9,%r31,.L130
	ldw 0(%r28),%r28
	depwi -1,26,1,%r28
	extrd,u %r28,63,32,%r28
	ldo -97(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,<<,n 5,%r28,.L131
.L130:
	ldi 1,%r28
	b,n .L132
.L131:
	ldi 0,%r28
.L132:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 8
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	extrw,u %r28,31,7,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.section	.rodata.cst8,"aM",@progbits,8
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L137
	fldd 0(%r28),%fr22
	b,n .L138
.L137:
	fldd 8(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L139
	fldd 8(%r28),%fr22
	b,n .L138
.L139:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L143
	b,n .L144
.L143:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fsub,dbl %fr23,%fr22,%fr22
	b,n .L138
.L144:
	addil LT'.LC0,%r27
	copy %r1,%r28
	ldd RT'.LC0(%r28),%r28
	fldd 0(%r28),%fr22
.L138:
	fcpy,dbl %fr22,%fr4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.word	0
	.text
	.align 8
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L146
	fldw 0(%r28),%fr22R
	b,n .L147
.L146:
	fldw 8(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L148
	fldw 8(%r28),%fr22R
	b,n .L147
.L148:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!> %fr23R,%fr22R
	ftest
	b,n .L152
	b,n .L153
.L152:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fsub,sgl %fr23R,%fr22R,%fr22R
	b,n .L147
.L153:
	addil LT'.LC1,%r27
	copy %r1,%r28
	ldd RT'.LC1(%r28),%r28
	fldw 0(%r28),%fr22R
.L147:
	fcpy,sgl %fr22R,%fr4R
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 8
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L155
	fldd 8(%r28),%fr22
	b,n .L156
.L155:
	fldd 8(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L157
	fldd 0(%r28),%fr22
	b,n .L156
.L157:
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldd 8(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L158
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L159
	fldd 8(%r28),%fr22
	b,n .L156
.L159:
	fldd 0(%r28),%fr22
	b,n .L156
.L158:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L164
	b,n .L165
.L164:
	fldd 8(%r28),%fr22
	b,n .L156
.L165:
	fldd 0(%r28),%fr22
.L156:
	fcpy,dbl %fr22,%fr4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L167
	fldw 8(%r28),%fr22R
	b,n .L168
.L167:
	fldw 8(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L169
	fldw 0(%r28),%fr22R
	b,n .L168
.L169:
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldw 8(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L170
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L171
	fldw 8(%r28),%fr22R
	b,n .L168
.L171:
	fldw 0(%r28),%fr22R
	b,n .L168
.L170:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L176
	b,n .L177
.L176:
	fldw 8(%r28),%fr22R
	b,n .L168
.L177:
	fldw 0(%r28),%fr22R
.L168:
	fcpy,sgl %fr22R,%fr4R
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r19
	copy %r28,%r20
	copy %r20,%r31
	copy %r19,%r28
	std %r31,0(%r3)
	std %r28,8(%r3)
	copy %r24,%r28
	copy %r23,%r31
	copy %r31,%r19
	copy %r28,%r20
	copy %r20,%r31
	copy %r19,%r28
	std %r31,16(%r3)
	std %r28,24(%r3)
	ldd 0(%r3),%r20
	ldd 8(%r3),%r19
	ldd 0(%r3),%r31
	ldd 8(%r3),%r28
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
	ldd 16(%r3),%r28
	ldd 24(%r3),%r31
	b,n .L181
.L193:
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
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L194
	ldd 0(%r3),%r28
	ldd 8(%r3),%r31
	b,n .L181
.L194:
	ldd 0(%r3),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldd 16(%r3),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	cmpb,=,n %r28,%r31,.L184
	ldd 0(%r3),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L185
	ldd 16(%r3),%r28
	ldd 24(%r3),%r31
	b,n .L181
.L185:
	ldd 0(%r3),%r28
	ldd 8(%r3),%r31
	b,n .L181
.L184:
	ldd 16(%r3),%r20
	ldd 24(%r3),%r19
	ldd 0(%r3),%r31
	ldd 8(%r3),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __lttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*<=,n %r0,%r28,.L195
	ldd 16(%r3),%r28
	ldd 24(%r3),%r31
	b,n .L181
.L195:
	ldd 0(%r3),%r28
	ldd 8(%r3),%r31
.L181:
	copy %r31,%r29
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	ldd,mb -128(%r30),%r4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 8
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L197
	fldd 8(%r28),%fr22
	b,n .L198
.L197:
	fldd 8(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,? %fr23,%fr22
	ftest
	b,n .L199
	fldd 0(%r28),%fr22
	b,n .L198
.L199:
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldd 8(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L200
	ldd 0(%r28),%r31
	extrd,u %r31,0,1,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L201
	fldd 0(%r28),%fr22
	b,n .L198
.L201:
	fldd 8(%r28),%fr22
	b,n .L198
.L200:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L206
	b,n .L207
.L206:
	fldd 0(%r28),%fr22
	b,n .L198
.L207:
	fldd 8(%r28),%fr22
.L198:
	fcpy,dbl %fr22,%fr4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 8
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L209
	fldw 8(%r28),%fr22R
	b,n .L210
.L209:
	fldw 8(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,? %fr23R,%fr22R
	ftest
	b,n .L211
	fldw 0(%r28),%fr22R
	b,n .L210
.L211:
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldw 8(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r31
	cmpb,=,n %r31,%r19,.L212
	ldw 0(%r28),%r31
	depwi 0,31,31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L213
	fldw 0(%r28),%fr22R
	b,n .L210
.L213:
	fldw 8(%r28),%fr22R
	b,n .L210
.L212:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L218
	b,n .L219
.L218:
	fldw 0(%r28),%fr22R
	b,n .L210
.L219:
	fldw 8(%r28),%fr22R
.L210:
	fcpy,sgl %fr22R,%fr4R
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 8
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r19
	copy %r28,%r20
	copy %r20,%r31
	copy %r19,%r28
	std %r31,0(%r3)
	std %r28,8(%r3)
	copy %r24,%r28
	copy %r23,%r31
	copy %r31,%r19
	copy %r28,%r20
	copy %r20,%r31
	copy %r19,%r28
	std %r31,16(%r3)
	std %r28,24(%r3)
	ldd 0(%r3),%r20
	ldd 8(%r3),%r19
	ldd 0(%r3),%r31
	ldd 8(%r3),%r28
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
	ldd 16(%r3),%r28
	ldd 24(%r3),%r31
	b,n .L223
.L235:
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
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L236
	ldd 0(%r3),%r28
	ldd 8(%r3),%r31
	b,n .L223
.L236:
	ldd 0(%r3),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldd 16(%r3),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	cmpb,=,n %r28,%r31,.L226
	ldd 0(%r3),%r28
	extrd,u %r28,0,1,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L227
	ldd 0(%r3),%r28
	ldd 8(%r3),%r31
	b,n .L223
.L227:
	ldd 16(%r3),%r28
	ldd 24(%r3),%r31
	b,n .L223
.L226:
	ldd 16(%r3),%r20
	ldd 24(%r3),%r19
	ldd 0(%r3),%r31
	ldd 8(%r3),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __lttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*<=,n %r0,%r28,.L237
	ldd 0(%r3),%r28
	ldd 8(%r3),%r31
	b,n .L223
.L237:
	ldd 16(%r3),%r28
	ldd 24(%r3),%r31
.L223:
	copy %r31,%r29
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	ldd,mb -128(%r30),%r4
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
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	stw %r28,-64(%r30)
	addil LT's.0,%r27
	copy %r1,%r28
	ldd RT's.0(%r28),%r28
	std %r28,-72(%r30)
	b,n .L239
.L240:
	ldw -64(%r30),%r28
	extrw,u %r28,31,6,%r28
	extrd,u %r28,63,32,%r31
	addil LT'digits,%r27
	copy %r1,%r28
	ldd RT'digits(%r28),%r28
	ldb %r31(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldd -72(%r30),%r28
	stb %r31,0(%r28)
	ldd -72(%r30),%r28
	ldo 1(%r28),%r28
	std %r28,-72(%r30)
	ldw -64(%r30),%r28
	extrw,u %r28,25,26,%r28
	stw %r28,-64(%r30)
.L239:
	ldw -64(%r30),%r28
	cmpib,<> 0,%r28,.L240
	nop
	ldd -72(%r30),%r28
	stb %r0,0(%r28)
	addil LT's.0,%r27
	copy %r1,%r28
	ldd RT's.0(%r28),%r28
	ldo -80(%r30),%r30
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 8
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 8
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 8(%r28),%r19
	ldi 0,%r31
	cmpb,*<>,n %r31,%r19,.L246
	ldd 0(%r28),%r31
	std %r0,8(%r31)
	ldd 0(%r28),%r31
	ldd 8(%r31),%r31
	ldd 0(%r28),%r28
	std %r31,0(%r28)
	b,n .L245
.L246:
	ldd 8(%r28),%r31
	ldd 0(%r31),%r19
	ldd 0(%r28),%r31
	std %r19,0(%r31)
	ldd 0(%r28),%r31
	ldd 8(%r28),%r19
	std %r19,8(%r31)
	ldd 8(%r28),%r31
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldd 0(%r28),%r31
	ldd 0(%r31),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L245
	ldd 0(%r28),%r31
	ldd 0(%r31),%r31
	ldd 0(%r28),%r28
	std %r28,8(%r31)
.L245:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 8
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r31
	ldd 0(%r31),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L249
	ldd 0(%r28),%r31
	ldd 0(%r31),%r31
	ldd 0(%r28),%r19
	ldd 8(%r19),%r19
	std %r19,8(%r31)
.L249:
	ldd 0(%r28),%r31
	ldd 8(%r31),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L251
	ldd 0(%r28),%r31
	ldd 8(%r31),%r31
	ldd 0(%r28),%r28
	ldd 0(%r28),%r28
	std %r28,0(%r31)
.L251:
	nop
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 8
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	std %r24,16(%r3)
	std %r23,24(%r3)
	std %r22,32(%r3)
	ldd 24(%r3),%r5
	copy %r5,%r28
	ldo -1(%r28),%r28
	std %r28,-160(%r30)
	ldd 16(%r3),%r28
	ldd 0(%r28),%r28
	std %r28,-152(%r30)
	std %r0,-168(%r30)
	b,n .L253
.L256:
	ldd -168(%r30),%r28
	extrd,u %r5,31,32,%r19
	extrd,u %r28,31,32,%r31
	copy %r5,%r20
	std %r20,-144(%r30)
	fldd -144(%r30),%fr22
	std %r28,-144(%r30)
	fldd -144(%r30),%fr23
	std %r19,-144(%r30)
	fldd -144(%r30),%fr25
	std %r31,-144(%r30)
	fldd -144(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-144(%r30)
	ldd -144(%r30),%r31
	fstd %fr24,-144(%r30)
	ldd -144(%r30),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-144(%r30)
	ldd -144(%r30),%r20
	add,l %r28,%r20,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r31
	ldd 32(%r3),%r28
	copy %r31,%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L254
	ldd -168(%r30),%r28
	extrd,u %r5,31,32,%r19
	extrd,u %r28,31,32,%r31
	std %r5,-144(%r30)
	fldd -144(%r30),%fr22
	std %r28,-144(%r30)
	fldd -144(%r30),%fr23
	std %r19,-144(%r30)
	fldd -144(%r30),%fr25
	std %r31,-144(%r30)
	fldd -144(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-144(%r30)
	ldd -144(%r30),%r31
	fstd %fr24,-144(%r30)
	ldd -144(%r30),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-144(%r30)
	ldd -144(%r30),%r20
	add,l %r28,%r20,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r28
	b,n .L255
.L254:
	ldd -168(%r30),%r28
	ldo 1(%r28),%r28
	std %r28,-168(%r30)
.L253:
	ldd -168(%r30),%r31
	ldd -152(%r30),%r28
	cmpb,*>> %r28,%r31,.L256
	nop
	ldd -152(%r30),%r28
	ldo 1(%r28),%r31
	ldd 16(%r3),%r28
	std %r31,0(%r28)
	ldd -152(%r30),%r28
	extrd,u %r5,31,32,%r19
	extrd,u %r28,31,32,%r31
	std %r5,-144(%r30)
	fldd -144(%r30),%fr22
	std %r28,-144(%r30)
	fldd -144(%r30),%fr23
	std %r19,-144(%r30)
	fldd -144(%r30),%fr25
	std %r31,-144(%r30)
	fldd -144(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-144(%r30)
	ldd -144(%r30),%r31
	fstd %fr24,-144(%r30)
	ldd -144(%r30),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-144(%r30)
	ldd -144(%r30),%r20
	add,l %r28,%r20,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r28
	ldd 24(%r3),%r24
	ldd 0(%r3),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l memcpy,%r2
	nop
	copy %r4,%r27
.L255:
	ldd -192(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -176(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 8
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	std %r24,16(%r3)
	std %r23,24(%r3)
	std %r22,32(%r3)
	ldd 24(%r3),%r5
	copy %r5,%r28
	ldo -1(%r28),%r28
	std %r28,-160(%r30)
	ldd 16(%r3),%r28
	ldd 0(%r28),%r28
	std %r28,-152(%r30)
	std %r0,-168(%r30)
	b,n .L258
.L261:
	ldd -168(%r30),%r28
	extrd,u %r5,31,32,%r19
	extrd,u %r28,31,32,%r31
	copy %r5,%r20
	std %r20,-144(%r30)
	fldd -144(%r30),%fr22
	std %r28,-144(%r30)
	fldd -144(%r30),%fr23
	std %r19,-144(%r30)
	fldd -144(%r30),%fr25
	std %r31,-144(%r30)
	fldd -144(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-144(%r30)
	ldd -144(%r30),%r31
	fstd %fr24,-144(%r30)
	ldd -144(%r30),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-144(%r30)
	ldd -144(%r30),%r20
	add,l %r28,%r20,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r31
	ldd 32(%r3),%r28
	copy %r31,%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L259
	ldd -168(%r30),%r28
	extrd,u %r5,31,32,%r19
	extrd,u %r28,31,32,%r31
	std %r5,-144(%r30)
	fldd -144(%r30),%fr22
	std %r28,-144(%r30)
	fldd -144(%r30),%fr23
	std %r19,-144(%r30)
	fldd -144(%r30),%fr25
	std %r31,-144(%r30)
	fldd -144(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-144(%r30)
	ldd -144(%r30),%r31
	fstd %fr24,-144(%r30)
	ldd -144(%r30),%r19
	add,l %r31,%r19,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-144(%r30)
	ldd -144(%r30),%r20
	add,l %r28,%r20,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r28
	b,n .L260
.L259:
	ldd -168(%r30),%r28
	ldo 1(%r28),%r28
	std %r28,-168(%r30)
.L258:
	ldd -168(%r30),%r31
	ldd -152(%r30),%r28
	cmpb,*>> %r28,%r31,.L261
	nop
	ldi 0,%r28
.L260:
	ldd -192(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -176(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 8
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	extrd,s %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 8
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	stw %r0,-136(%r30)
	stw %r0,-132(%r30)
	b,n .L265
.L266:
	ldd 0(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
.L265:
	ldd 0(%r3),%r28
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
	cmpb,*<> %r28,%r31,.L266
	nop
	ldd 0(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,=,n %r31,%r28,.L267
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L269
	ldi 1,%r28
	stw %r28,-132(%r30)
.L267:
	ldd 0(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
	b,n .L269
.L270:
	ldw -136(%r30),%r31
	copy %r31,%r28
	depw,z %r28,29,30,%r28
	add,l %r28,%r31,%r28
	add,l %r28,%r28,%r28
	extrd,s %r28,63,32,%r31
	ldd 0(%r3),%r28
	ldo 1(%r28),%r19
	std %r19,0(%r3)
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	stw %r28,-136(%r30)
.L269:
	ldd 0(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,>>= 9,%r28,.L270
	nop
	ldw -132(%r30),%r28
	cmpib,<>,n 0,%r28,.L271
	ldw -136(%r30),%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	b,n .L272
.L271:
	ldw -136(%r30),%r28
	extrd,s %r28,63,32,%r28
.L272:
	ldd -160(%r30),%r2
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 8
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r0,-152(%r30)
	stw %r0,-144(%r30)
	b,n .L275
.L276:
	ldd 0(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
.L275:
	ldd 0(%r3),%r28
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
	cmpb,*<> %r28,%r31,.L276
	nop
	ldd 0(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,=,n %r31,%r28,.L277
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L279
	ldi 1,%r28
	stw %r28,-144(%r30)
.L277:
	ldd 0(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
	b,n .L279
.L280:
	ldd -152(%r30),%r31
	copy %r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,62,63,%r28
	copy %r28,%r31
	ldd 0(%r3),%r28
	ldo 1(%r28),%r19
	std %r19,0(%r3)
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	std %r28,-152(%r30)
.L279:
	ldd 0(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,>>= 9,%r28,.L280
	nop
	ldw -144(%r30),%r28
	cmpib,<>,n 0,%r28,.L281
	ldd -152(%r30),%r28
	sub %r0,%r28,%r28
	b,n .L283
.L281:
	ldd -152(%r30),%r28
.L283:
	nop
	ldd -176(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r0,-152(%r30)
	stw %r0,-144(%r30)
	b,n .L285
.L286:
	ldd 0(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
.L285:
	ldd 0(%r3),%r28
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
	cmpb,*<> %r28,%r31,.L286
	nop
	ldd 0(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,=,n %r31,%r28,.L287
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L289
	ldi 1,%r28
	stw %r28,-144(%r30)
.L287:
	ldd 0(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
	b,n .L289
.L290:
	ldd -152(%r30),%r31
	copy %r31,%r28
	depd,z %r28,61,62,%r28
	add,l %r28,%r31,%r28
	depd,z %r28,62,63,%r28
	copy %r28,%r31
	ldd 0(%r3),%r28
	ldo 1(%r28),%r19
	std %r19,0(%r3)
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	extrd,s %r28,63,32,%r28
	sub %r31,%r28,%r28
	std %r28,-152(%r30)
.L289:
	ldd 0(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	extrd,u %r28,63,32,%r28
	ldo -48(%r28),%r28
	extrd,u %r28,63,32,%r28
	cmpib,>>= 9,%r28,.L290
	nop
	ldw -144(%r30),%r28
	cmpib,<>,n 0,%r28,.L291
	ldd -152(%r30),%r28
	sub %r0,%r28,%r28
	b,n .L293
.L291:
	ldd -152(%r30),%r28
.L293:
	nop
	ldd -176(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 8
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	std %r24,16(%r3)
	std %r23,24(%r3)
	std %r22,32(%r3)
	b,n .L295
.L300:
	ldd 16(%r3),%r28
	extrd,u %r28,62,63,%r31
	ldd 24(%r3),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,-136(%r30)
	fldd -136(%r30),%fr22
	std %r28,-136(%r30)
	fldd -136(%r30),%fr23
	std %r20,-136(%r30)
	fldd -136(%r30),%fr25
	std %r19,-136(%r30)
	fldd -136(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-136(%r30)
	ldd -136(%r30),%r19
	fstd %fr24,-136(%r30)
	ldd -136(%r30),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-136(%r30)
	ldd -136(%r30),%r19
	add,l %r28,%r19,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r28
	std %r28,-152(%r30)
	ldd 32(%r3),%r28
	ldd -152(%r30),%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	stw %r28,-144(%r30)
	ldw -144(%r30),%r28
	cmpib,<=,n 0,%r28,.L296
	ldd 16(%r3),%r28
	extrd,u %r28,62,63,%r28
	std %r28,16(%r3)
	b,n .L295
.L296:
	ldw -144(%r30),%r28
	cmpib,>=,n 0,%r28,.L298
	ldd -152(%r30),%r31
	ldd 24(%r3),%r28
	add,l %r31,%r28,%r28
	std %r28,8(%r3)
	ldd 16(%r3),%r28
	extrd,u %r28,62,63,%r28
	ldd 16(%r3),%r31
	sub %r31,%r28,%r28
	ldo -1(%r28),%r28
	std %r28,16(%r3)
	b,n .L295
.L298:
	ldd -152(%r30),%r28
	b,n .L299
.L295:
	ldd 16(%r3),%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L300
	nop
	ldi 0,%r28
.L299:
	ldd -176(%r30),%r2
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	std %r24,16(%r3)
	std %r23,24(%r3)
	std %r22,32(%r3)
	std %r21,40(%r3)
	ldd 16(%r3),%r28
	stw %r28,-168(%r30)
	b,n .L302
.L306:
	ldw -168(%r30),%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r28
	copy %r28,%r31
	ldd 24(%r3),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,-144(%r30)
	fldd -144(%r30),%fr22
	std %r28,-144(%r30)
	fldd -144(%r30),%fr23
	std %r20,-144(%r30)
	fldd -144(%r30),%fr25
	std %r19,-144(%r30)
	fldd -144(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-144(%r30)
	ldd -144(%r30),%r19
	fstd %fr24,-144(%r30)
	ldd -144(%r30),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-144(%r30)
	ldd -144(%r30),%r19
	add,l %r28,%r19,%r28
	ldd 8(%r3),%r31
	add,l %r31,%r28,%r28
	std %r28,-160(%r30)
	ldd 32(%r3),%r28
	ldd 40(%r3),%r24
	ldd -160(%r30),%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r28),%r2
	bve,l (%r2),%r2
	ldd 24(%r28),%r27
	copy %r4,%r27
	stw %r28,-152(%r30)
	ldw -152(%r30),%r28
	cmpib,<>,n 0,%r28,.L303
	ldd -160(%r30),%r28
	b,n .L304
.L303:
	ldw -152(%r30),%r28
	cmpib,>=,n 0,%r28,.L305
	ldd -160(%r30),%r31
	ldd 24(%r3),%r28
	add,l %r31,%r28,%r28
	std %r28,8(%r3)
	ldw -168(%r30),%r28
	ldo -1(%r28),%r28
	stw %r28,-168(%r30)
.L305:
	ldw -168(%r30),%r28
	extrw,s %r28,30,31,%r28
	stw %r28,-168(%r30)
.L302:
	ldw -168(%r30),%r28
	cmpib,<> 0,%r28,.L306
	nop
	ldi 0,%r28
.L304:
	ldd -192(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	ldo -176(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 8
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	ldo 80(%r30),%r30
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
	stw %r31,-72(%r30)
	stw %r28,-68(%r30)
	ldi 0,%r28
	ldw -72(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	ldw -68(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd %r31,32+32-1,32,%r28
	ldd -96(%r30),%r2
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	ldd 8(%r3),%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r5
	ldd 0(%r3),%r28
	ldd 8(%r3),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __moddi3,%r2
	nop
	copy %r4,%r27
	std %r5,-168(%r30)
	std %r28,-160(%r30)
	ldi 0,%r31
	ldd -168(%r30),%r31
	ldi 0,%r28
	ldd -160(%r30),%r28
	copy %r31,%r20
	copy %r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	ldd -192(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -176(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 8
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 8
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	ldd 8(%r3),%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r5
	ldd 0(%r3),%r28
	ldd 8(%r3),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __moddi3,%r2
	nop
	copy %r4,%r27
	std %r5,-168(%r30)
	std %r28,-160(%r30)
	ldi 0,%r31
	ldd -168(%r30),%r31
	ldi 0,%r28
	ldd -160(%r30),%r28
	copy %r31,%r20
	copy %r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	ldd -192(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -176(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 8
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 8
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	ldd 8(%r3),%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r5
	ldd 0(%r3),%r28
	ldd 8(%r3),%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __moddi3,%r2
	nop
	copy %r4,%r27
	std %r5,-168(%r30)
	std %r28,-160(%r30)
	ldi 0,%r31
	ldd -168(%r30),%r31
	ldi 0,%r28
	ldd -160(%r30),%r28
	copy %r31,%r20
	copy %r28,%r19
	copy %r20,%r28
	copy %r19,%r29
	ldd -192(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -176(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 8
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	b,n .L322
.L324:
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
.L322:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L323
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	cmpb,<> %r31,%r19,.L324
	nop
.L323:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L325
	ldd 0(%r28),%r28
	b,n .L327
.L325:
	ldi 0,%r28
.L327:
	nop
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	b,n .L329
.L331:
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,8(%r28)
.L329:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,<>,n %r31,%r19,.L330
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L330
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L331
	nop
.L330:
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,>>,n %r31,%r19,.L332
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r28
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L333:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L334
.L332:
	ldi -1,%r28
.L334:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
.L337:
	ldd 8(%r28),%r19
	ldo 4(%r19),%r31
	std %r31,8(%r28)
	ldd -56(%r30),%r31
	ldo 4(%r31),%r20
	std %r20,-56(%r30)
	ldw 0(%r19),%r19
	extrd,u %r19,63,32,%r19
	stw %r19,0(%r31)
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L337
	nop
	ldd 0(%r28),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 8
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L340
.L341:
	ldd -56(%r30),%r31
	ldo 4(%r31),%r31
	std %r31,-56(%r30)
.L340:
	ldd -56(%r30),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L341
	nop
	ldd -56(%r30),%r31
	ldd 0(%r28),%r28
	sub %r31,%r28,%r28
	extrd,s %r28,61,62,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L344
.L346:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,8(%r28)
.L344:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L345
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,<>,n %r31,%r19,.L345
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L345
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L346
	nop
.L345:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L347
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,>>,n %r31,%r19,.L348
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r28
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L349:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L351
.L348:
	ldi -1,%r28
	b,n .L351
.L347:
	ldi 0,%r28
.L351:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L354
.L356:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
.L354:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L355
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	cmpb,<> %r31,%r19,.L356
	nop
.L355:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L357
	ldd 0(%r28),%r28
	b,n .L359
.L357:
	ldi 0,%r28
.L359:
	nop
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	b,n .L361
.L363:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
	ldd 0(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 4(%r31),%r31
	std %r31,8(%r28)
.L361:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L362
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,= %r31,%r19,.L363
	nop
.L362:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L364
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r31
	cmpb,>>,n %r31,%r19,.L365
	ldd 0(%r28),%r31
	ldw 0(%r31),%r31
	extrd,u %r31,63,32,%r19
	ldd 8(%r28),%r28
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r31
	ldi 1,%r28
	cmpclr,<< %r31,%r19,%r0
	ldi 0,%r28
.L366:
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	b,n .L368
.L365:
	ldi -1,%r28
	b,n .L368
.L364:
	ldi 0,%r28
.L368:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L371
.L372:
	ldd 8(%r28),%r19
	ldo 4(%r19),%r31
	std %r31,8(%r28)
	ldd -56(%r30),%r31
	ldo 4(%r31),%r20
	std %r20,-56(%r30)
	ldw 0(%r19),%r19
	extrd,u %r19,63,32,%r19
	stw %r19,0(%r31)
.L371:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L372
	nop
	ldd 0(%r28),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*<>,n %r31,%r19,.L375
	ldd 0(%r28),%r28
	b,n .L376
.L375:
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	sub %r19,%r31,%r19
	ldd 16(%r28),%r31
	depd,z %r31,61,62,%r31
	cmpb,*<<=,n %r31,%r19,.L377
	b,n .L378
.L379:
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
.L378:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L379
	nop
	b,n .L380
.L377:
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L381
.L382:
	ldd 8(%r28),%r19
	ldo 4(%r19),%r31
	std %r31,8(%r28)
	ldd -56(%r30),%r31
	ldo 4(%r31),%r20
	std %r20,-56(%r30)
	ldw 0(%r19),%r19
	extrd,u %r19,63,32,%r19
	stw %r19,0(%r31)
.L381:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L382
	nop
.L380:
	ldd 0(%r28),%r28
.L376:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 8
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L384
.L385:
	ldd -56(%r30),%r31
	ldo 4(%r31),%r19
	std %r19,-56(%r30)
	ldw 8(%r28),%r19
	stw %r19,0(%r31)
.L384:
	ldd 16(%r28),%r31
	ldo -1(%r31),%r19
	std %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L385
	nop
	ldd 0(%r28),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 8
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*<<=,n %r31,%r19,.L388
	ldd 0(%r28),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,-72(%r30)
	ldd 8(%r28),%r19
	ldd 16(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,-64(%r30)
	b,n .L389
.L390:
	ldd -72(%r30),%r31
	ldo -1(%r31),%r31
	std %r31,-72(%r30)
	ldd -64(%r30),%r31
	ldo -1(%r31),%r31
	std %r31,-64(%r30)
	ldd -72(%r30),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd -64(%r30),%r31
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L389:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L390
	nop
	b,n .L394
.L388:
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*=,n %r31,%r19,.L394
	b,n .L392
.L393:
	ldd 0(%r28),%r19
	ldo 1(%r19),%r31
	std %r31,0(%r28)
	ldd 8(%r28),%r31
	ldo 1(%r31),%r20
	std %r20,8(%r28)
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L392:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L393
	nop
.L394:
	nop
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 8
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldd 0(%r28),%r31
	subi 64,%r19,%r28
	mtsar %r28
	shrpd %r31,%r31,%sar,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 8
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r28
	mtsar %r31
	shrpd %r28,%r28,%sar,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 8
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 0(%r28),%r31
	ldw 8(%r28),%r28
	subi 32,%r28,%r28
	mtsar %r28
	shrpw %r31,%r31,%sar,%r28
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 8
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 0(%r28),%r31
	ldw 8(%r28),%r28
	mtsar %r28
	shrpw %r31,%r31,%sar,%r28
	extrd,u %r28,63,32,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldd 0(%r28),%r31
	subi 63,%r19,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
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
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
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
	std %r19,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	mtsar %r19
	depd,z %r28,%sar,64,%r28
	or %r31,%r28,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 8
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	stw %r25,8(%r28)
	sth %r31,0(%r28)
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
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
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 8
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
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
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r28,63,16,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,16,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 8
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	stw %r25,8(%r28)
	stb %r31,0(%r28)
	ldb 0(%r28),%r31
	extrw,u %r31,31,8,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
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
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 8
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
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
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r28,63,8,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,8,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	ldi 255,%r31
	std %r31,-56(%r30)
	ldh 0(%r28),%r31
	extrd,u %r31,63,16,%r19
	ldd -56(%r30),%r31
	depd,z %r31,55,56,%r31
	and %r19,%r31,%r31
	extrd,u %r31,55,56,%r31
	extrd,u %r31,63,16,%r31
	ldd -56(%r30),%r19
	extrd,u %r19,63,16,%r19
	ldh 0(%r28),%r28
	and %r28,%r19,%r28
	extrd,u %r28,63,16,%r28
	depw,z %r28,23,24,%r28
	extrd,u %r28,63,16,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,16,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldi 255,%r31
	std %r31,-56(%r30)
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldd -56(%r30),%r31
	depd,z %r31,39,40,%r31
	and %r19,%r31,%r31
	extrd,u %r31,39,40,%r31
	extrd,u %r31,63,32,%r19
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r20
	ldd -56(%r30),%r31
	depd,z %r31,47,48,%r31
	and %r20,%r31,%r31
	extrd,u %r31,55,56,%r31
	extrd,u %r31,63,32,%r31
	or %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldd -56(%r30),%r31
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
	ldd -56(%r30),%r19
	extrd,u %r19,63,32,%r19
	ldw 0(%r28),%r28
	and %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	depw,z %r28,7,8,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldi 255,%r31
	std %r31,-56(%r30)
	ldd -56(%r30),%r31
	depd,z %r31,7,8,%r19
	ldd 0(%r28),%r31
	and %r19,%r31,%r31
	extrd,u %r31,7,8,%r19
	ldd -56(%r30),%r31
	depd,z %r31,15,16,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	extrd,u %r31,23,24,%r31
	or %r19,%r31,%r19
	ldd -56(%r30),%r31
	depd,z %r31,23,24,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	extrd,u %r31,39,40,%r31
	or %r19,%r31,%r19
	ldd -56(%r30),%r31
	depd,z %r31,31,32,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	extrd,u %r31,55,56,%r31
	or %r19,%r31,%r19
	ldd -56(%r30),%r31
	depd,z %r31,39,40,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	depd,z %r31,55,56,%r31
	or %r19,%r31,%r19
	ldd -56(%r30),%r31
	depd,z %r31,47,48,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	depd,z %r31,39,40,%r31
	or %r19,%r31,%r19
	ldd -56(%r30),%r31
	depd,z %r31,55,56,%r20
	ldd 0(%r28),%r31
	and %r20,%r31,%r31
	depd,z %r31,23,24,%r31
	or %r19,%r31,%r31
	ldd 0(%r28),%r19
	ldd -56(%r30),%r28
	and %r19,%r28,%r28
	depd,z %r28,7,8,%r28
	or %r31,%r28,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 8
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r0,-56(%r30)
	b,n .L422
.L425:
	ldw 0(%r28),%r31
	extrd,u %r31,63,32,%r19
	ldw -56(%r30),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L423
	ldw -56(%r30),%r28
	ldo 1(%r28),%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	b,n .L424
.L423:
	ldw -56(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-56(%r30)
.L422:
	ldw -56(%r30),%r19
	ldi 31,%r31
	cmpb,>>= %r31,%r19,.L425
	nop
	ldi 0,%r28
.L424:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,ENTRY_GR=3
	.ENTRY
	std,ma %r3,64(%r30)
	extrd,s %r26,63,32,%r28
	ldi 0,%r31
	cmpb,*<>,n %r31,%r28,.L427
	ldi 0,%r3
	b,n .L428
.L427:
	ldi 1,%r3
	b,n .L429
.L430:
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r3),%r31
	extrd,s %r31,63,32,%r3
.L429:
	extrw,u %r28,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*= %r31,%r19,.L430
	nop
	nop
.L428:
	copy %r3,%r28
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fldw 0(%r28),%fr23R
	addil LT'.LC2,%r27
	copy %r1,%r31
	ldd RT'.LC2(%r31),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L432
	fldw 0(%r28),%fr23R
	addil LT'.LC3,%r27
	copy %r1,%r28
	ldd RT'.LC3(%r28),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!> %fr23R,%fr22R
	ftest
	b,n .L432
	b,n .L437
.L432:
	ldi 1,%r28
	b,n .L435
.L437:
	ldi 0,%r28
.L435:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
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
	.align 8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fldd 0(%r28),%fr23
	addil LT'.LC4,%r27
	copy %r1,%r31
	ldd RT'.LC4(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L439
	fldd 0(%r28),%fr23
	addil LT'.LC5,%r27
	copy %r1,%r28
	ldd RT'.LC5(%r28),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L439
	b,n .L444
.L439:
	ldi 1,%r28
	b,n .L442
.L444:
	ldi 0,%r28
.L442:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst16,"aM",@progbits,16
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r19
	copy %r28,%r20
	copy %r20,%r31
	copy %r19,%r28
	std %r31,0(%r3)
	std %r28,8(%r3)
	addil LT'.LC6,%r27
	copy %r1,%r28
	ldd RT'.LC6(%r28),%r28
	ldd 0(%r3),%r19
	ldd 8(%r3),%r31
	ldd 0(%r28),%r21
	ldd 8(%r28),%r20
	copy %r21,%r24
	copy %r20,%r23
	copy %r19,%r26
	copy %r31,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __lttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*>,n %r0,%r28,.L446
	addil LT'.LC7,%r27
	copy %r1,%r28
	ldd RT'.LC7(%r28),%r28
	ldd 0(%r3),%r19
	ldd 8(%r3),%r31
	ldd 0(%r28),%r21
	ldd 8(%r28),%r20
	copy %r21,%r24
	copy %r20,%r23
	copy %r19,%r26
	copy %r31,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __gttf2,%r2
	nop
	copy %r4,%r27
	cmpb,*>=,n %r0,%r28,.L451
.L446:
	ldi 1,%r28
	b,n .L449
.L451:
	ldi 0,%r28
.L449:
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	ldd,mb -128(%r30),%r4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	stw %r25,8(%r3)
	fldw 8(%r3),%fr22R
	fcnv,w,dbl %fr22R,%fr22
	fcpy,dbl %fr22,%fr4
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __extenddftf2,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r29,%r31
	ldd 0(%r3),%r28
	std %r19,0(%r28)
	std %r31,8(%r28)
	nop
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	ldd,mb -128(%r30),%r4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
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
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	stw %r25,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 0(%r28),%fr22R
	fcmp,sgl,!? %fr23R,%fr22R
	ftest
	b,n .L454
	fldw 0(%r28),%fr22R
	fadd,sgl %fr22R,%fr22R,%fr22R
	fldw 0(%r28),%fr23R
	fcmp,sgl,!= %fr23R,%fr22R
	ftest
	b,n .L454
	ldw 8(%r28),%r31
	cmpib,<=,n 0,%r31,.L455
	addil LT'.LC8,%r27
	copy %r1,%r31
	ldd RT'.LC8(%r31),%r31
	fldw 0(%r31),%fr22R
	b,n .L456
.L455:
	addil LT'.LC9,%r27
	copy %r1,%r31
	ldd RT'.LC9(%r31),%r31
	fldw 0(%r31),%fr22R
.L456:
	fstw %fr22R,-56(%r30)
.L459:
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L457
	fldw 0(%r28),%fr23R
	fldw -56(%r30),%fr22R
	fmpy,sgl %fr23R,%fr22R,%fr22R
	fstw %fr22R,0(%r28)
.L457:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L461
	fldw -56(%r30),%fr22R
	fmpy,sgl %fr22R,%fr22R,%fr22R
	fstw %fr22R,-56(%r30)
	b,n .L459
.L461:
	nop
.L454:
	fldw 0(%r28),%fr22R
	fcpy,sgl %fr22R,%fr4R
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
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
	.align 8
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	stw %r25,8(%r28)
	fldd 0(%r28),%fr23
	fldd 0(%r28),%fr22
	fcmp,dbl,!? %fr23,%fr22
	ftest
	b,n .L463
	fldd 0(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	fldd 0(%r28),%fr23
	fcmp,dbl,!= %fr23,%fr22
	ftest
	b,n .L463
	ldw 8(%r28),%r31
	cmpib,<=,n 0,%r31,.L464
	addil LT'.LC10,%r27
	copy %r1,%r31
	ldd RT'.LC10(%r31),%r31
	fldd 0(%r31),%fr22
	b,n .L465
.L464:
	addil LT'.LC11,%r27
	copy %r1,%r31
	ldd RT'.LC11(%r31),%r31
	fldd 0(%r31),%fr22
.L465:
	fstd %fr22,-56(%r30)
.L468:
	ldw 8(%r28),%r31
	extrd,u %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L466
	fldd 0(%r28),%fr23
	fldd -56(%r30),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	fstd %fr22,0(%r28)
.L466:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L470
	fldd -56(%r30),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fstd %fr22,-56(%r30)
	b,n .L468
.L470:
	nop
.L463:
	fldd 0(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
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
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	copy %r26,%r28
	copy %r25,%r31
	copy %r31,%r19
	copy %r28,%r20
	copy %r20,%r31
	copy %r19,%r28
	std %r31,0(%r3)
	std %r28,8(%r3)
	stw %r24,16(%r3)
	ldd 0(%r3),%r20
	ldd 8(%r3),%r19
	ldd 0(%r3),%r31
	ldd 8(%r3),%r28
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r26
	copy %r28,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpb,*<>,n %r0,%r28,.L472
	ldd 0(%r3),%r31
	ldd 8(%r3),%r28
	copy %r31,%r20
	copy %r28,%r19
	copy %r20,%r24
	copy %r19,%r23
	copy %r31,%r20
	copy %r28,%r19
	copy %r20,%r26
	copy %r19,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __addtf3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r20
	copy %r29,%r19
	copy %r20,%r31
	copy %r19,%r28
	ldd 0(%r3),%r20
	ldd 8(%r3),%r19
	copy %r31,%r22
	copy %r28,%r21
	copy %r22,%r24
	copy %r21,%r23
	copy %r20,%r26
	copy %r19,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __netf2,%r2
	nop
	copy %r4,%r27
	cmpb,*=,n %r0,%r28,.L472
	ldw 16(%r3),%r28
	cmpib,<=,n 0,%r28,.L474
	addil LT'.LC12,%r27
	copy %r1,%r28
	ldd RT'.LC12(%r28),%r19
	ldd 0(%r19),%r31
	ldd 8(%r19),%r28
	b,n .L475
.L474:
	addil LT'.LC13,%r27
	copy %r1,%r28
	ldd RT'.LC13(%r28),%r19
	ldd 0(%r19),%r31
	ldd 8(%r19),%r28
.L475:
	std %r31,-144(%r30)
	std %r28,-136(%r30)
.L478:
	ldw 16(%r3),%r28
	extrd,u %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L476
	ldd -144(%r30),%r20
	ldd -136(%r30),%r19
	ldd 0(%r3),%r31
	ldd 8(%r3),%r28
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
	copy %r29,%r31
	std %r19,0(%r3)
	std %r31,8(%r3)
.L476:
	ldw 16(%r3),%r28
	extrw,u %r28,0,1,%r31
	add,l %r31,%r28,%r28
	extrw,s %r28,30,31,%r28
	stw %r28,16(%r3)
	ldw 16(%r3),%r28
	cmpib,=,n 0,%r28,.L481
	ldd -144(%r30),%r20
	ldd -136(%r30),%r19
	ldd -144(%r30),%r31
	ldd -136(%r30),%r28
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
	copy %r29,%r31
	std %r19,-144(%r30)
	std %r31,-136(%r30)
	b,n .L478
.L481:
	nop
.L472:
	ldd 0(%r3),%r28
	ldd 8(%r3),%r31
	copy %r31,%r29
	ldd -176(%r30),%r2
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 8
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r24,16(%r28)
	ldd 0(%r28),%r31
	std %r31,-56(%r30)
	b,n .L483
.L484:
	ldd 8(%r28),%r31
	ldo 1(%r31),%r19
	std %r19,8(%r28)
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r20
	ldd -56(%r30),%r31
	ldo 1(%r31),%r19
	std %r19,-56(%r30)
	ldb 0(%r31),%r19
	extrd,s %r19,63,8,%r19
	xor %r20,%r19,%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldd 16(%r28),%r31
	ldo -1(%r31),%r31
	std %r31,16(%r28)
.L483:
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L484
	nop
	ldd 0(%r28),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 8
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	std %r24,16(%r3)
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strlen,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldd 0(%r3),%r28
	add,l %r28,%r31,%r28
	std %r28,-136(%r30)
	b,n .L487
.L489:
	ldd 8(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,8(%r3)
	ldd -136(%r30),%r28
	ldo 1(%r28),%r28
	std %r28,-136(%r30)
	ldd 16(%r3),%r28
	ldo -1(%r28),%r28
	std %r28,16(%r3)
.L487:
	ldd 16(%r3),%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L488
	ldd 8(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldd -136(%r30),%r28
	stb %r31,0(%r28)
	ldd -136(%r30),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L489
	nop
.L488:
	ldd 16(%r3),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L490
	ldd -136(%r30),%r28
	stb %r0,0(%r28)
.L490:
	ldd 0(%r3),%r28
	ldd -160(%r30),%r2
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 8
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r0,-56(%r30)
	b,n .L493
.L498:
	nop
	ldd -56(%r30),%r31
	ldo 1(%r31),%r31
	std %r31,-56(%r30)
.L493:
	ldd -56(%r30),%r19
	ldd 8(%r28),%r31
	cmpb,*<<=,n %r31,%r19,.L494
	ldd 0(%r28),%r19
	ldd -56(%r30),%r31
	add,l %r19,%r31,%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L498
	nop
.L494:
	ldd -56(%r30),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	b,n .L500
.L504:
	ldd 8(%r28),%r31
	std %r31,-56(%r30)
	b,n .L501
.L503:
	ldd -56(%r30),%r31
	ldo 1(%r31),%r19
	std %r19,-56(%r30)
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r31
	cmpb,<>,n %r31,%r19,.L501
	ldd 0(%r28),%r28
	b,n .L502
.L501:
	ldd -56(%r30),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L503
	nop
	ldd 0(%r28),%r31
	ldo 1(%r31),%r31
	std %r31,0(%r28)
.L500:
	ldd 0(%r28),%r31
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L504
	nop
	ldi 0,%r28
.L502:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 8
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r19
	copy %r26,%r28
	stw %r25,8(%r19)
	std %r0,-56(%r30)
.L507:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	ldw 8(%r19),%r20
	cmpclr,<> %r31,%r20,%r0
	std %r28,-56(%r30)
.L506:
	copy %r28,%r31
	ldo 1(%r31),%r28
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r20
	ldi 0,%r31
	cmpb,*<> %r31,%r20,.L507
	nop
	ldd -56(%r30),%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 8
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	ldd 8(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strlen,%r2
	nop
	copy %r4,%r27
	std %r28,-152(%r30)
	ldd -152(%r30),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L512
	ldd 0(%r3),%r28
	b,n .L511
.L514:
	ldd -152(%r30),%r24
	ldd 8(%r3),%r25
	ldd -144(%r30),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strncmp,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L513
	ldd -144(%r30),%r28
	b,n .L511
.L513:
	ldd -144(%r30),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
.L512:
	ldd 8(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	copy %r28,%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strchr,%r2
	nop
	copy %r4,%r27
	std %r28,-144(%r30)
	ldd -144(%r30),%r31
	ldi 0,%r28
	cmpb,*<> %r28,%r31,.L514
	nop
	ldi 0,%r28
.L511:
	ldd -176(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 8
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L523
	b,n .L516
.L523:
	fldd 8(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L518
.L516:
	fldd 0(%r28),%fr22
	fcmp,dbl,!> %fr22,%fr0
	ftest
	b,n .L524
	b,n .L519
.L524:
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L518
	b,n .L519
.L518:
	fldd 0(%r28),%fr22
	fneg,dbl %fr22,%fr22
	b,n .L522
.L519:
	fldd 0(%r28),%fr22
.L522:
	fcpy,dbl %fr22,%fr4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 8
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	std %r24,16(%r3)
	std %r23,24(%r3)
	ldd 8(%r3),%r31
	ldd 24(%r3),%r28
	sub %r31,%r28,%r28
	ldd 0(%r3),%r31
	add,l %r31,%r28,%r28
	std %r28,-136(%r30)
	ldd 24(%r3),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L526
	ldd 0(%r3),%r28
	b,n .L527
.L526:
	ldi 1,%r28
	ldd 8(%r3),%r19
	ldd 24(%r3),%r31
	cmpclr,*>> %r31,%r19,%r0
	ldi 0,%r28
.L528:
	extrd,u %r28,63,8,%r28
	copy %r28,%r31
	ldi 0,%r28
	cmpb,*=,n %r28,%r31,.L530
	ldi 0,%r28
	b,n .L527
.L532:
	ldd 0(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r31
	ldd 16(%r3),%r28
	ldb 0(%r28),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r28,%r31,.L531
	ldd 0(%r3),%r28
	ldo 1(%r28),%r31
	ldd 16(%r3),%r28
	ldo 1(%r28),%r19
	ldd 24(%r3),%r28
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
	cmpb,*<>,n %r28,%r31,.L531
	ldd 0(%r3),%r28
	b,n .L527
.L531:
	ldd 0(%r3),%r28
	ldo 1(%r28),%r28
	std %r28,0(%r3)
.L530:
	ldd 0(%r3),%r31
	ldd -136(%r30),%r28
	cmpb,*>>= %r28,%r31,.L532
	nop
	ldi 0,%r28
.L527:
	ldd -160(%r30),%r2
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldo -64(%r29),%r3
	std %r26,0(%r3)
	std %r25,8(%r3)
	std %r24,16(%r3)
	ldd 16(%r3),%r24
	ldd 8(%r3),%r25
	ldd 0(%r3),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l memcpy,%r2
	nop
	copy %r4,%r27
	copy %r28,%r31
	ldd 16(%r3),%r28
	add,l %r31,%r28,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	ldd,mb -128(%r30),%r4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
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
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	std %r25,8(%r28)
	stw %r0,-52(%r30)
	stw %r0,-56(%r30)
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr22,%fr0
	ftest
	b,n .L548
	b,n .L536
.L548:
	fldd 0(%r28),%fr22
	fneg,dbl %fr22,%fr22
	fstd %fr22,0(%r28)
	ldi 1,%r31
	stw %r31,-56(%r30)
.L536:
	fldd 0(%r28),%fr23
	addil LT'.LC14,%r27
	copy %r1,%r31
	ldd RT'.LC14(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L540
	b,n .L551
.L541:
	ldw -52(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-52(%r30)
	fldd 0(%r28),%fr23
	addil LT'.LC15,%r27
	copy %r1,%r31
	ldd RT'.LC15(%r31),%r31
	fldd 0(%r31),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	fstd %fr22,0(%r28)
.L540:
	fldd 0(%r28),%fr23
	addil LT'.LC14,%r27
	copy %r1,%r31
	ldd RT'.LC14(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!>= %fr23,%fr22
	ftest
	b,n .L541
	b,n .L542
.L551:
	fldd 0(%r28),%fr23
	addil LT'.LC16,%r27
	copy %r1,%r31
	ldd RT'.LC16(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L550
	b,n .L542
.L550:
	fldd 0(%r28),%fr22
	fcmp,dbl,!= %fr22,%fr0
	ftest
	b,n .L542
	b,n .L544
.L545:
	ldw -52(%r30),%r31
	ldo -1(%r31),%r31
	stw %r31,-52(%r30)
	fldd 0(%r28),%fr22
	fadd,dbl %fr22,%fr22,%fr22
	fstd %fr22,0(%r28)
.L544:
	fldd 0(%r28),%fr23
	addil LT'.LC16,%r27
	copy %r1,%r31
	ldd RT'.LC16(%r31),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L545
.L542:
	ldd 8(%r28),%r31
	ldw -52(%r30),%r19
	stw %r19,0(%r31)
	ldw -56(%r30),%r31
	cmpib,=,n 0,%r31,.L546
	fldd 0(%r28),%fr22
	fneg,dbl %fr22,%fr22
	fstd %fr22,0(%r28)
.L546:
	fldd 0(%r28),%fr22
	fcpy,dbl %fr22,%fr4
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	std %r0,-72(%r30)
	ldd 0(%r28),%r31
	std %r31,-64(%r30)
	b,n .L553
.L555:
	ldd -64(%r30),%r31
	extrd,u %r31,63,1,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L554
	ldd -72(%r30),%r19
	ldd 8(%r28),%r31
	add,l %r19,%r31,%r31
	std %r31,-72(%r30)
.L554:
	ldd 8(%r28),%r31
	depd,z %r31,62,63,%r31
	std %r31,8(%r28)
	ldd -64(%r30),%r31
	extrd,u %r31,62,63,%r31
	std %r31,-64(%r30)
.L553:
	ldd -64(%r30),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L555
	nop
	ldd -72(%r30),%r28
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	std %r24,16(%r28)
	ldi 1,%r31
	stw %r31,-56(%r30)
	stw %r0,-52(%r30)
	b,n .L558
.L560:
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
	ldw -56(%r30),%r31
	add,l %r31,%r31,%r31
	stw %r31,-56(%r30)
.L558:
	ldw 8(%r28),%r19
	ldw 0(%r28),%r31
	cmpb,<<=,n %r31,%r19,.L561
	ldw -56(%r30),%r31
	cmpib,=,n 0,%r31,.L561
	ldw 8(%r28),%r31
	extrd,s %r31,63,32,%r31
	cmpib,<= 0,%r31,.L560
	nop
	b,n .L561
.L563:
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	cmpb,>>,n %r31,%r19,.L562
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	sub %r19,%r31,%r31
	stw %r31,0(%r28)
	ldw -52(%r30),%r19
	ldw -56(%r30),%r31
	or %r19,%r31,%r31
	stw %r31,-52(%r30)
.L562:
	ldw -56(%r30),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,-56(%r30)
	ldw 8(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r28)
.L561:
	ldw -56(%r30),%r31
	cmpib,<> 0,%r31,.L563
	nop
	ldd 16(%r28),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L564
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	b,n .L565
.L564:
	ldw -52(%r30),%r28
	extrd,u %r28,63,32,%r28
.L565:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-128(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r31
	stb %r31,0(%r28)
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r31
	cmpib,<=,n 0,%r31,.L567
	ldb 0(%r28),%r31
	uaddcm %r0,%r31,%r31
	stb %r31,0(%r28)
.L567:
	ldb 0(%r28),%r31
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L568
	ldi 7,%r28
	b,n .L569
.L568:
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
	stw %r28,-136(%r30)
	ldw -136(%r30),%r28
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L569:
	ldd -160(%r30),%r2
	ldd -128(%r30),%r4
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-128(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L571
	ldd 0(%r28),%r31
	uaddcm %r0,%r31,%r31
	std %r31,0(%r28)
.L571:
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<>,n %r31,%r19,.L572
	ldi 63,%r28
	b,n .L573
.L572:
	ldd 0(%r28),%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __clzdi2,%r2
	nop
	copy %r4,%r27
	stw %r28,-136(%r30)
	ldw -136(%r30),%r28
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L573:
	ldd -160(%r30),%r2
	ldd -128(%r30),%r4
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,-56(%r30)
	b,n .L575
.L577:
	ldw 0(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L576
	ldw -56(%r30),%r19
	ldw 8(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,-56(%r30)
.L576:
	ldw 0(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
.L575:
	ldw 0(%r28),%r31
	cmpib,<> 0,%r31,.L577
	nop
	ldw -56(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldw 16(%r28),%r31
	extrw,u %r31,28,29,%r31
	stw %r31,-64(%r30)
	ldw 16(%r28),%r31
	depwi 0,31,3,%r31
	stw %r31,-68(%r30)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*>>,n %r31,%r19,.L580
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r31
	ldd 0(%r28),%r19
	cmpb,*>>=,n %r31,%r19,.L587
.L580:
	stw %r0,-72(%r30)
	b,n .L582
.L583:
	ldw -72(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,60,61,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw -72(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,60,61,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldd 0(%r19),%r19
	std %r19,0(%r31)
	ldw -72(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-72(%r30)
.L582:
	ldw -72(%r30),%r19
	ldw -64(%r30),%r31
	cmpb,>> %r31,%r19,.L583
	nop
	b,n .L584
.L585:
	ldw -68(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw -68(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldw -68(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-68(%r30)
.L584:
	ldw 16(%r28),%r19
	ldw -68(%r30),%r31
	cmpb,<< %r31,%r19,.L585
	nop
	b,n .L586
.L588:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
.L587:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldo -1(%r31),%r19
	stw %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L588
	nop
	nop
.L586:
	nop
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldw 16(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,-52(%r30)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*>>,n %r31,%r19,.L590
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r31
	ldd 0(%r28),%r19
	cmpb,*>>=,n %r31,%r19,.L596
.L590:
	stw %r0,-56(%r30)
	b,n .L592
.L593:
	ldw -56(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,62,63,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw -56(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,62,63,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldh 0(%r19),%r19
	extrd,s %r19,63,16,%r19
	sth %r19,0(%r31)
	ldw -56(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-56(%r30)
.L592:
	ldw -56(%r30),%r19
	ldw -52(%r30),%r31
	cmpb,>> %r31,%r19,.L593
	nop
	ldw 16(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L595
	ldw 16(%r28),%r31
	ldo -1(%r31),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r31
	ldw 16(%r28),%r19
	ldo -1(%r19),%r19
	extrd,u %r19,63,32,%r19
	ldd 0(%r28),%r28
	add,l %r28,%r19,%r28
	ldb 0(%r31),%r31
	extrd,s %r31,63,8,%r31
	stb %r31,0(%r28)
	b,n .L595
.L597:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
.L596:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldo -1(%r31),%r19
	stw %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L597
	nop
	nop
.L595:
	nop
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldw 16(%r28),%r31
	extrw,u %r31,29,30,%r31
	stw %r31,-64(%r30)
	ldw 16(%r28),%r31
	depwi 0,31,2,%r31
	stw %r31,-68(%r30)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*>>,n %r31,%r19,.L599
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r31
	ldd 0(%r28),%r19
	cmpb,*>>=,n %r31,%r19,.L606
.L599:
	stw %r0,-72(%r30)
	b,n .L601
.L602:
	ldw -72(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,61,62,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw -72(%r30),%r31
	extrd,u %r31,63,32,%r31
	depd,z %r31,61,62,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldw 0(%r19),%r19
	extrd,s %r19,63,32,%r19
	stw %r19,0(%r31)
	ldw -72(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-72(%r30)
.L601:
	ldw -72(%r30),%r19
	ldw -64(%r30),%r31
	cmpb,>> %r31,%r19,.L602
	nop
	b,n .L603
.L604:
	ldw -68(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw -68(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
	ldw -68(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-68(%r30)
.L603:
	ldw 16(%r28),%r19
	ldw -68(%r30),%r31
	cmpb,<< %r31,%r19,.L604
	nop
	b,n .L605
.L607:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	add,l %r19,%r31,%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r20
	add,l %r20,%r31,%r31
	ldb 0(%r19),%r19
	extrd,s %r19,63,8,%r19
	stb %r19,0(%r31)
.L606:
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	ldo -1(%r31),%r19
	stw %r19,16(%r28)
	ldi 0,%r19
	cmpb,*<> %r19,%r31,.L607
	nop
	nop
.L605:
	nop
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 8
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
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
	ldd -16(%r30),%r2
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 8
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	fldw 0(%r28),%fr22R
	fcnv,uw,dbl %fr22R,%fr22
	fcpy,dbl %fr22,%fr4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 8
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	fldw 0(%r28),%fr22R
	fcnv,uw,sgl %fr22R,%fr22R
	fcpy,sgl %fr22R,%fr4R
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	fldd 0(%r28),%fr22
	fcnv,udw,dbl %fr22,%fr22
	fcpy,dbl %fr22,%fr4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	fldd 0(%r28),%fr22
	fcnv,udw,sgl %fr22,%fr22R
	fcpy,sgl %fr22R,%fr4R
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 8
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
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
	ldd -16(%r30),%r2
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,-72(%r30)
	b,n .L621
.L624:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw -72(%r30),%r19
	subi 15,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<>,n %r31,%r19,.L626
	ldw -72(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-72(%r30)
.L621:
	ldw -72(%r30),%r31
	cmpib,>= 15,%r31,.L624
	nop
	b,n .L623
.L626:
	nop
.L623:
	ldw -72(%r30),%r28
	extrd,s %r28,63,32,%r28
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,-72(%r30)
	b,n .L628
.L631:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw -72(%r30),%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*<>,n %r31,%r19,.L633
	ldw -72(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-72(%r30)
.L628:
	ldw -72(%r30),%r31
	cmpib,>= 15,%r31,.L631
	nop
	b,n .L630
.L633:
	nop
.L630:
	ldw -72(%r30),%r28
	extrd,s %r28,63,32,%r28
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC17:
	.word	1191182336
	.text
	.align 8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fldw 0(%r28),%fr23R
	addil LT'.LC17,%r27
	copy %r1,%r31
	ldd RT'.LC17(%r31),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!>= %fr23R,%fr22R
	ftest
	b,n .L638
	b,n .L639
.L638:
	fldw 0(%r28),%fr23R
	addil LT'.LC17,%r27
	copy %r1,%r28
	ldd RT'.LC17(%r28),%r28
	fldw 0(%r28),%fr22R
	fsub,sgl %fr23R,%fr22R,%fr22R
	fcnv,t,sgl,dw %fr22R,%fr22
	ldil L'32768,%r28
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r31,%r28,%r28
	b,n .L637
.L639:
	fldw 0(%r28),%fr22R
	fcnv,t,sgl,dw %fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
.L637:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,-68(%r30)
	stw %r0,-72(%r30)
	b,n .L641
.L643:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw -72(%r30),%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L642
	ldw -68(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-68(%r30)
.L642:
	ldw -72(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-72(%r30)
.L641:
	ldw -72(%r30),%r31
	cmpib,>= 15,%r31,.L643
	nop
	ldw -68(%r30),%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	sth %r31,0(%r28)
	stw %r0,-68(%r30)
	stw %r0,-72(%r30)
	b,n .L646
.L648:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrd,s %r31,63,32,%r31
	ldw -72(%r30),%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L647
	ldw -68(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-68(%r30)
.L647:
	ldw -72(%r30),%r31
	ldo 1(%r31),%r31
	stw %r31,-72(%r30)
.L646:
	ldw -72(%r30),%r31
	cmpib,>= 15,%r31,.L648
	nop
	ldw -68(%r30),%r28
	extrd,s %r28,63,32,%r28
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,-56(%r30)
	b,n .L651
.L653:
	ldw 0(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L652
	ldw -56(%r30),%r19
	ldw 8(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,-56(%r30)
.L652:
	ldw 0(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
.L651:
	ldw 0(%r28),%r31
	cmpib,<> 0,%r31,.L653
	nop
	ldw -56(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,-56(%r30)
	ldw 0(%r28),%r31
	cmpib,<>,n 0,%r31,.L658
	ldi 0,%r28
	b,n .L657
.L660:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,u %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L659
	ldw -56(%r30),%r19
	ldw 0(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,-56(%r30)
.L659:
	ldw 0(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r28)
.L658:
	ldw 8(%r28),%r31
	cmpib,<> 0,%r31,.L660
	nop
	ldw -56(%r30),%r28
	extrd,u %r28,63,32,%r28
.L657:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r24,16(%r28)
	ldi 1,%r31
	stw %r31,-56(%r30)
	stw %r0,-52(%r30)
	b,n .L662
.L664:
	ldw 8(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,8(%r28)
	ldw -56(%r30),%r31
	add,l %r31,%r31,%r31
	stw %r31,-56(%r30)
.L662:
	ldw 8(%r28),%r19
	ldw 0(%r28),%r31
	cmpb,<<=,n %r31,%r19,.L665
	ldw -56(%r30),%r31
	cmpib,=,n 0,%r31,.L665
	ldw 8(%r28),%r31
	extrd,s %r31,63,32,%r31
	cmpib,<= 0,%r31,.L664
	nop
	b,n .L665
.L667:
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	cmpb,>>,n %r31,%r19,.L666
	ldw 0(%r28),%r19
	ldw 8(%r28),%r31
	sub %r19,%r31,%r31
	stw %r31,0(%r28)
	ldw -52(%r30),%r19
	ldw -56(%r30),%r31
	or %r19,%r31,%r31
	stw %r31,-52(%r30)
.L666:
	ldw -56(%r30),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,-56(%r30)
	ldw 8(%r28),%r31
	extrw,u %r31,30,31,%r31
	stw %r31,8(%r28)
.L665:
	ldw -56(%r30),%r31
	cmpib,<> 0,%r31,.L667
	nop
	ldw 16(%r28),%r31
	cmpib,=,n 0,%r31,.L668
	ldw 0(%r28),%r28
	extrd,u %r28,63,32,%r28
	b,n .L669
.L668:
	ldw -52(%r30),%r28
	extrd,u %r28,63,32,%r28
.L669:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	fstw %fr5R,8(%r28)
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!< %fr23R,%fr22R
	ftest
	b,n .L676
	b,n .L678
.L676:
	ldi -1,%r28
	b,n .L673
.L678:
	fldw 0(%r28),%fr23R
	fldw 8(%r28),%fr22R
	fcmp,sgl,!> %fr23R,%fr22R
	ftest
	b,n .L677
	b,n .L679
.L677:
	ldi 1,%r28
	b,n .L673
.L679:
	ldi 0,%r28
.L673:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	fstd %fr5,8(%r28)
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!< %fr23,%fr22
	ftest
	b,n .L686
	b,n .L688
.L686:
	ldi -1,%r28
	b,n .L683
.L688:
	fldd 0(%r28),%fr23
	fldd 8(%r28),%fr22
	fcmp,dbl,!> %fr23,%fr22
	ftest
	b,n .L687
	b,n .L689
.L687:
	ldi 1,%r28
	b,n .L683
.L689:
	ldi 0,%r28
.L683:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	ldd 8(%r28),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	std %r28,-56(%r30)
	fldd -56(%r30),%fr23
	std %r20,-56(%r30)
	fldd -56(%r30),%fr25
	std %r19,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-56(%r30)
	ldd -56(%r30),%r19
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r28,%r19,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	ldd 8(%r28),%r28
	extrd,u %r31,31,32,%r20
	extrd,u %r28,31,32,%r19
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	std %r28,-56(%r30)
	fldd -56(%r30),%fr23
	std %r20,-56(%r30)
	fldd -56(%r30),%fr25
	std %r19,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-56(%r30)
	ldd -56(%r30),%r19
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r19,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r28,%r19,%r28
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	stw %r0,-68(%r30)
	stw %r0,-64(%r30)
	ldw 8(%r28),%r31
	cmpib,<=,n 0,%r31,.L695
	ldw 8(%r28),%r31
	sub %r0,%r31,%r31
	stw %r31,8(%r28)
	ldi 1,%r31
	stw %r31,-68(%r30)
.L695:
	stb %r0,-72(%r30)
	b,n .L696
.L699:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L697
	ldw -64(%r30),%r19
	ldw 0(%r28),%r31
	add,l %r19,%r31,%r31
	stw %r31,-64(%r30)
.L697:
	ldw 0(%r28),%r31
	add,l %r31,%r31,%r31
	stw %r31,0(%r28)
	ldw 8(%r28),%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldb -72(%r30),%r31
	extrd,s %r31,63,8,%r31
	extrd,u %r31,63,8,%r31
	ldo 1(%r31),%r31
	extrd,u %r31,63,8,%r31
	stb %r31,-72(%r30)
.L696:
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L698
	ldb -72(%r30),%r31
	extrd,u %r31,63,8,%r19
	ldi 31,%r31
	cmpb,>>= %r31,%r19,.L699
	nop
.L698:
	ldw -68(%r30),%r28
	cmpib,=,n 0,%r28,.L700
	ldw -64(%r30),%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	b,n .L701
.L700:
	ldw -64(%r30),%r28
	extrd,s %r28,63,32,%r28
.L701:
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-120(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r0,-136(%r30)
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L704
	ldd 0(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,0(%r28)
	ldw -136(%r30),%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-136(%r30)
.L704:
	ldd 8(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L705
	ldd 8(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,8(%r28)
	ldw -136(%r30),%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-136(%r30)
.L705:
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
	std %r28,-128(%r30)
	ldw -136(%r30),%r28
	cmpib,=,n 0,%r28,.L706
	ldd -128(%r30),%r28
	sub %r0,%r28,%r28
	std %r28,-128(%r30)
.L706:
	ldd -128(%r30),%r28
	ldd -160(%r30),%r2
	ldd -120(%r30),%r4
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-120(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r0,-136(%r30)
	ldd 0(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L709
	ldd 0(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,0(%r28)
	ldi 1,%r31
	stw %r31,-136(%r30)
.L709:
	ldd 8(%r28),%r19
	ldi 0,%r31
	cmpb,*<=,n %r31,%r19,.L710
	ldd 8(%r28),%r31
	sub %r0,%r31,%r31
	std %r31,8(%r28)
.L710:
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
	std %r28,-128(%r30)
	ldw -136(%r30),%r28
	cmpib,=,n 0,%r28,.L711
	ldd -128(%r30),%r28
	sub %r0,%r28,%r28
	std %r28,-128(%r30)
.L711:
	ldd -128(%r30),%r28
	ldd -160(%r30),%r2
	ldd -120(%r30),%r4
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r31
	copy %r25,%r19
	stw %r24,16(%r28)
	sth %r31,0(%r28)
	copy %r19,%r31
	sth %r31,8(%r28)
	ldi 1,%r31
	sth %r31,-56(%r30)
	sth %r0,-54(%r30)
	b,n .L714
.L716:
	ldh 8(%r28),%r31
	add,l %r31,%r31,%r31
	sth %r31,8(%r28)
	ldh -56(%r30),%r31
	add,l %r31,%r31,%r31
	sth %r31,-56(%r30)
.L714:
	ldh 8(%r28),%r31
	extrw,u %r31,31,16,%r19
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r31
	cmpb,<<=,n %r31,%r19,.L717
	ldh -56(%r30),%r31
	extrw,u %r31,31,16,%r31
	cmpib,=,n 0,%r31,.L717
	ldh 8(%r28),%r31
	extrd,s %r31,63,16,%r31
	cmpib,<= 0,%r31,.L716
	nop
	b,n .L717
.L719:
	ldh 0(%r28),%r31
	extrw,u %r31,31,16,%r19
	ldh 8(%r28),%r31
	extrw,u %r31,31,16,%r31
	cmpb,>>,n %r31,%r19,.L718
	ldh 0(%r28),%r19
	ldh 8(%r28),%r31
	sub %r19,%r31,%r31
	sth %r31,0(%r28)
	ldh -54(%r30),%r19
	ldh -56(%r30),%r31
	or %r19,%r31,%r31
	sth %r31,-54(%r30)
.L718:
	ldh -56(%r30),%r31
	extrw,u %r31,31,16,%r31
	extrw,u %r31,30,31,%r31
	sth %r31,-56(%r30)
	ldh 8(%r28),%r31
	extrw,u %r31,31,16,%r31
	extrw,u %r31,30,31,%r31
	sth %r31,8(%r28)
.L717:
	ldh -56(%r30),%r31
	extrw,u %r31,31,16,%r31
	cmpib,<> 0,%r31,.L719
	nop
	ldw 16(%r28),%r31
	cmpib,=,n 0,%r31,.L720
	ldh 0(%r28),%r28
	extrd,u %r28,63,16,%r28
	b,n .L721
.L720:
	ldh -54(%r30),%r28
	extrd,u %r28,63,16,%r28
.L721:
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	stw %r24,16(%r28)
	ldi 1,%r31
	std %r31,-72(%r30)
	std %r0,-64(%r30)
	b,n .L723
.L725:
	ldd 8(%r28),%r31
	depd,z %r31,62,63,%r31
	std %r31,8(%r28)
	ldd -72(%r30),%r31
	depd,z %r31,62,63,%r31
	std %r31,-72(%r30)
.L723:
	ldd 8(%r28),%r19
	ldd 0(%r28),%r31
	cmpb,*<<=,n %r31,%r19,.L726
	ldd -72(%r30),%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L726
	ldd 8(%r28),%r19
	depdi,z 1,32,4,%r31
	and %r19,%r31,%r19
	ldi 0,%r31
	cmpb,*= %r31,%r19,.L725
	nop
	b,n .L726
.L728:
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	cmpb,*>>,n %r31,%r19,.L727
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	sub %r19,%r31,%r31
	std %r31,0(%r28)
	ldd -64(%r30),%r19
	ldd -72(%r30),%r31
	or %r19,%r31,%r31
	std %r31,-64(%r30)
.L727:
	ldd -72(%r30),%r31
	extrd,u %r31,62,63,%r31
	std %r31,-72(%r30)
	ldd 8(%r28),%r31
	extrd,u %r31,62,63,%r31
	std %r31,8(%r28)
.L726:
	ldd -72(%r30),%r19
	ldi 0,%r31
	cmpb,*<> %r31,%r19,.L728
	nop
	ldw 16(%r28),%r31
	cmpib,=,n 0,%r31,.L729
	ldd 0(%r28),%r28
	b,n .L730
.L729:
	ldd -64(%r30),%r28
.L730:
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 32,%r31
	stw %r31,-88(%r30)
	ldd 0(%r28),%r31
	std %r31,-80(%r30)
	ldw 8(%r28),%r19
	ldw -88(%r30),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L732
	stw %r0,-68(%r30)
	ldw -76(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	ldw -88(%r30),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 31,%r28,%r28
	std %r28,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,-72(%r30)
	b,n .L733
.L732:
	ldw 8(%r28),%r31
	cmpib,<>,n 0,%r31,.L734
	ldd 0(%r28),%r28
	b,n .L736
.L734:
	ldw -76(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,-68(%r30)
	ldw -80(%r30),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	ldw -76(%r30),%r19
	extrd,u %r19,63,32,%r19
	ldw -88(%r30),%r20
	ldw 8(%r28),%r28
	sub %r20,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,-72(%r30)
.L733:
	ldd -72(%r30),%r28
.L736:
	ldo -96(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS
	.ENTRY
	ldo 112(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	stw %r24,16(%r28)
	ldi 64,%r31
	stw %r31,-104(%r30)
	ldd 0(%r28),%r31
	std %r31,-96(%r30)
	ldd 8(%r28),%r31
	std %r31,-88(%r30)
	ldw 16(%r28),%r19
	ldw -104(%r30),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L738
	ldo -80(%r30),%r31
	std %r0,8(%r31)
	ldd -88(%r30),%r31
	ldw 16(%r28),%r19
	ldw -104(%r30),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r28,%r28
	std %r28,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r28
	copy %r28,%r31
	ldo -80(%r30),%r28
	std %r31,0(%r28)
	b,n .L739
.L738:
	ldw 16(%r28),%r31
	cmpib,<>,n 0,%r31,.L740
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	b,n .L742
.L740:
	ldd -88(%r30),%r31
	ldw 16(%r28),%r19
	extrd,u %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r20
	mtsar %r20
	depd,z %r31,%sar,64,%r19
	ldo -80(%r30),%r31
	std %r19,8(%r31)
	ldd -96(%r30),%r31
	ldw 16(%r28),%r19
	extrd,u %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r31
	ldd -88(%r30),%r19
	ldw -104(%r30),%r20
	ldw 16(%r28),%r28
	sub %r20,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r19,%sar,%r28
	or %r31,%r28,%r28
	copy %r28,%r31
	ldo -80(%r30),%r28
	std %r31,0(%r28)
.L739:
	ldo -80(%r30),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
.L742:
	copy %r19,%r28
	copy %r31,%r29
	ldo -112(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashlti3, .-__ashlti3
	.align 8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 32,%r31
	stw %r31,-88(%r30)
	ldd 0(%r28),%r31
	std %r31,-80(%r30)
	ldw 8(%r28),%r19
	ldw -88(%r30),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L744
	ldw -80(%r30),%r31
	extrd,s %r31,63,32,%r31
	ldw -88(%r30),%r19
	ldo -1(%r19),%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,-72(%r30)
	ldw -80(%r30),%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r28),%r19
	ldw -88(%r30),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 31,%r28,%r28
	std %r28,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,-68(%r30)
	b,n .L745
.L744:
	ldw 8(%r28),%r31
	cmpib,<>,n 0,%r31,.L746
	ldd 0(%r28),%r28
	b,n .L748
.L746:
	ldw -80(%r30),%r31
	extrd,s %r31,63,32,%r31
	ldw 8(%r28),%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrw,s %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,-72(%r30)
	ldw -80(%r30),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r31
	ldw -88(%r30),%r20
	ldw 8(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	ldw -76(%r30),%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,-68(%r30)
.L745:
	ldd -72(%r30),%r28
.L748:
	ldo -96(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS
	.ENTRY
	ldo 112(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	stw %r24,16(%r28)
	ldi 64,%r31
	stw %r31,-104(%r30)
	ldd 0(%r28),%r31
	std %r31,-96(%r30)
	ldd 8(%r28),%r31
	std %r31,-88(%r30)
	ldw 16(%r28),%r19
	ldw -104(%r30),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L750
	ldd -96(%r30),%r31
	ldw -104(%r30),%r19
	ldo -1(%r19),%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r20
	mtsar %r20
	extrd,s %r31,%sar,64,%r19
	ldo -80(%r30),%r31
	std %r19,0(%r31)
	ldd -96(%r30),%r31
	ldw 16(%r28),%r19
	ldw -104(%r30),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r28,%r28
	std %r28,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	extrd,s %r31,%sar,64,%r28
	copy %r28,%r31
	ldo -80(%r30),%r28
	std %r31,8(%r28)
	b,n .L751
.L750:
	ldw 16(%r28),%r31
	cmpib,<>,n 0,%r31,.L752
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	b,n .L754
.L752:
	ldd -96(%r30),%r31
	ldw 16(%r28),%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r20
	mtsar %r20
	extrd,s %r31,%sar,64,%r19
	ldo -80(%r30),%r31
	std %r19,0(%r31)
	ldd -96(%r30),%r31
	ldw -104(%r30),%r20
	ldw 16(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r31
	ldd -88(%r30),%r19
	ldw 16(%r28),%r28
	extrd,u %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r19,%sar,%r28
	or %r31,%r28,%r31
	ldo -80(%r30),%r28
	std %r31,8(%r28)
.L751:
	ldo -80(%r30),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
.L754:
	copy %r19,%r28
	copy %r31,%r29
	ldo -112(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ashrti3, .-__ashrti3
	.align 8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
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
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=128,NO_CALLS
	.ENTRY
	ldo 128(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,-120(%r30)
	ldw -120(%r30),%r31
	depwi,z -1,31,16,%r28
	cmpb,<<,n %r28,%r31,.L760
	ldi 16,%r28
	b,n .L761
.L760:
	ldi 0,%r28
.L761:
	stw %r28,-116(%r30)
	ldw -116(%r30),%r28
	subi 16,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw -120(%r30),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-112(%r30)
	ldw -116(%r30),%r28
	stw %r28,-108(%r30)
	ldw -112(%r30),%r31
	depwi,z -1,23,8,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L762
	ldi 8,%r28
	b,n .L763
.L762:
	ldi 0,%r28
.L763:
	stw %r28,-104(%r30)
	ldw -104(%r30),%r28
	subi 8,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw -112(%r30),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-100(%r30)
	ldw -104(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -108(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-96(%r30)
	ldw -100(%r30),%r31
	ldi 240,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L764
	ldi 4,%r28
	b,n .L765
.L764:
	ldi 0,%r28
.L765:
	stw %r28,-92(%r30)
	ldw -92(%r30),%r28
	subi 4,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw -100(%r30),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-88(%r30)
	ldw -92(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -96(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-84(%r30)
	ldw -88(%r30),%r31
	ldi 12,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L766
	ldi 2,%r28
	b,n .L767
.L766:
	ldi 0,%r28
.L767:
	stw %r28,-80(%r30)
	ldw -80(%r30),%r28
	subi 2,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldw -88(%r30),%r31
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-76(%r30)
	ldw -80(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -84(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-72(%r30)
	ldw -76(%r30),%r31
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
	ldw -76(%r30),%r28
	subi 2,%r28,%r28
	extrd,u %r28,63,32,%r28
	std %r31,-64(%r30)
	fldd -64(%r30),%fr23
	std %r28,-64(%r30)
	fldd -64(%r30),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -72(%r30),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	ldo -128(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 8
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-128(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-144(%r30)
	ldd 8(%r28),%r28
	std %r28,-136(%r30)
	ldd -144(%r30),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrd,u %r28,0,1,%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	std %r28,-152(%r30)
	ldd -144(%r30),%r31
	ldd -152(%r30),%r28
	uaddcm %r0,%r28,%r28
	and %r31,%r28,%r28
	copy %r28,%r31
	ldd -136(%r30),%r19
	ldd -152(%r30),%r28
	and %r19,%r28,%r28
	or %r31,%r28,%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __clzdi2,%r2
	nop
	copy %r4,%r27
	extrd,s %r28,63,32,%r31
	ldd -152(%r30),%r28
	extrd,s %r28,63,32,%r19
	ldi 64,%r28
	and %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -176(%r30),%r2
	ldd -128(%r30),%r4
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clzti2, .-__clzti2
	.align 8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-72(%r30)
	ldd 8(%r28),%r28
	std %r28,-64(%r30)
	ldw -72(%r30),%r28
	extrd,s %r28,63,32,%r31
	ldw -64(%r30),%r28
	extrd,s %r28,63,32,%r28
	cmpb,<=,n %r28,%r31,.L772
	ldi 0,%r28
	b,n .L777
.L772:
	ldw -72(%r30),%r28
	extrd,s %r28,63,32,%r31
	ldw -64(%r30),%r28
	extrd,s %r28,63,32,%r28
	cmpb,>=,n %r28,%r31,.L774
	ldi 2,%r28
	b,n .L777
.L774:
	ldw -68(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldw -60(%r30),%r28
	extrd,u %r28,63,32,%r28
	cmpb,<<=,n %r28,%r31,.L775
	ldi 0,%r28
	b,n .L777
.L775:
	ldw -68(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldw -60(%r30),%r28
	extrd,u %r28,63,32,%r28
	cmpb,>>=,n %r28,%r31,.L776
	ldi 2,%r28
	b,n .L777
.L776:
	ldi 1,%r28
.L777:
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
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
	ldd -144(%r30),%r2
	ldd,mb -128(%r30),%r4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 8
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	copy %r24,%r20
	copy %r23,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,16(%r28)
	std %r31,24(%r28)
	ldd 0(%r28),%r31
	std %r31,-80(%r30)
	ldd 8(%r28),%r31
	std %r31,-72(%r30)
	ldo -64(%r30),%r31
	ldd 16(%r28),%r19
	std %r19,0(%r31)
	ldd 24(%r28),%r28
	std %r28,8(%r31)
	ldd -80(%r30),%r31
	ldo -64(%r30),%r28
	ldd 0(%r28),%r28
	cmpb,*<=,n %r28,%r31,.L781
	ldi 0,%r28
	b,n .L786
.L781:
	ldd -80(%r30),%r31
	ldo -64(%r30),%r28
	ldd 0(%r28),%r28
	cmpb,*>=,n %r28,%r31,.L783
	ldi 2,%r28
	b,n .L786
.L783:
	ldd -72(%r30),%r31
	ldo -64(%r30),%r28
	ldd 8(%r28),%r28
	cmpb,*<<=,n %r28,%r31,.L784
	ldi 0,%r28
	b,n .L786
.L784:
	ldd -72(%r30),%r31
	ldo -64(%r30),%r28
	ldd 8(%r28),%r28
	cmpb,*>>=,n %r28,%r31,.L785
	ldi 2,%r28
	b,n .L786
.L785:
	ldi 1,%r28
.L786:
	ldo -96(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmpti2, .-__cmpti2
	.align 8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS
	.ENTRY
	ldo 112(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,-104(%r30)
	ldw -104(%r30),%r28
	extrw,u %r28,31,16,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L788
	ldi 16,%r28
	b,n .L789
.L788:
	ldi 0,%r28
.L789:
	stw %r28,-100(%r30)
	ldw -104(%r30),%r31
	ldw -100(%r30),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-96(%r30)
	ldw -100(%r30),%r28
	stw %r28,-92(%r30)
	ldw -96(%r30),%r28
	extrw,u %r28,31,8,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L790
	ldi 8,%r28
	b,n .L791
.L790:
	ldi 0,%r28
.L791:
	stw %r28,-88(%r30)
	ldw -96(%r30),%r31
	ldw -88(%r30),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-84(%r30)
	ldw -88(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -92(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-80(%r30)
	ldw -84(%r30),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L792
	ldi 4,%r28
	b,n .L793
.L792:
	ldi 0,%r28
.L793:
	stw %r28,-76(%r30)
	ldw -84(%r30),%r31
	ldw -76(%r30),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-72(%r30)
	ldw -76(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -80(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-68(%r30)
	ldw -72(%r30),%r28
	extrw,u %r28,31,2,%r28
	extrd,u %r28,63,32,%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L794
	ldi 2,%r28
	b,n .L795
.L794:
	ldi 0,%r28
.L795:
	stw %r28,-64(%r30)
	ldw -72(%r30),%r31
	ldw -64(%r30),%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	stw %r28,-60(%r30)
	ldw -60(%r30),%r28
	extrw,u %r28,31,2,%r28
	stw %r28,-56(%r30)
	ldw -64(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -68(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-52(%r30)
	ldw -56(%r30),%r28
	uaddcm %r0,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,u %r28,63,32,%r31
	ldw -56(%r30),%r28
	extrw,u %r28,30,31,%r28
	extrd,u %r28,63,32,%r28
	subi 2,%r28,%r28
	extrd,u %r28,63,32,%r28
	sub %r0,%r31,%r31
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldw -52(%r30),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	ldo -112(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 8
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-128(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-144(%r30)
	ldd 8(%r28),%r28
	std %r28,-136(%r30)
	ldd -136(%r30),%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrd,u %r28,0,1,%r28
	extrd,u %r28,63,8,%r28
	extrd,s %r28,63,32,%r28
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
	std %r28,-152(%r30)
	ldd -144(%r30),%r31
	ldd -152(%r30),%r28
	and %r31,%r28,%r28
	copy %r28,%r31
	ldd -136(%r30),%r19
	ldd -152(%r30),%r28
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
	ldd -152(%r30),%r28
	extrd,s %r28,63,32,%r19
	ldi 64,%r28
	and %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -176(%r30),%r2
	ldd -128(%r30),%r4
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzti2, .-__ctzti2
	.align 8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-128(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-144(%r30)
	ldd 8(%r28),%r28
	std %r28,-136(%r30)
	ldd -136(%r30),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L800
	ldd -144(%r30),%r31
	ldi 0,%r28
	cmpb,*<>,n %r28,%r31,.L801
	ldi 0,%r28
	b,n .L803
.L801:
	ldd -144(%r30),%r28
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
	b,n .L803
.L800:
	ldd -136(%r30),%r28
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __ctzdi2,%r2
	nop
	copy %r4,%r27
	extrd,s %r28,63,32,%r28
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L803:
	ldd -176(%r30),%r2
	ldd -128(%r30),%r4
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ffsti2, .-__ffsti2
	.align 8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 32,%r31
	stw %r31,-88(%r30)
	ldd 0(%r28),%r31
	std %r31,-80(%r30)
	ldw 8(%r28),%r19
	ldw -88(%r30),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L805
	stw %r0,-72(%r30)
	ldw -80(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw 8(%r28),%r19
	ldw -88(%r30),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,-68(%r30)
	b,n .L806
.L805:
	ldw 8(%r28),%r31
	cmpib,<>,n 0,%r31,.L807
	ldd 0(%r28),%r28
	b,n .L809
.L807:
	ldw -80(%r30),%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,-72(%r30)
	ldw -80(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw -88(%r30),%r20
	ldw 8(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 31,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	ldw -76(%r30),%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	stw %r28,-68(%r30)
.L806:
	ldd -72(%r30),%r28
.L809:
	ldo -96(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS
	.ENTRY
	ldo 112(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	stw %r24,16(%r28)
	ldi 64,%r31
	stw %r31,-104(%r30)
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	std %r19,-96(%r30)
	std %r31,-88(%r30)
	ldw 16(%r28),%r19
	ldw -104(%r30),%r31
	and %r19,%r31,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L811
	ldo -80(%r30),%r31
	std %r0,0(%r31)
	ldd -96(%r30),%r31
	ldw 16(%r28),%r19
	ldw -104(%r30),%r28
	sub %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r31,%sar,%r31
	ldo -80(%r30),%r28
	std %r31,8(%r28)
	b,n .L812
.L811:
	ldw 16(%r28),%r31
	cmpib,<>,n 0,%r31,.L813
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	b,n .L815
.L813:
	ldd -96(%r30),%r19
	ldw 16(%r28),%r31
	extrd,u %r31,63,32,%r31
	mtsar %r31
	shrpd %r0,%r19,%sar,%r19
	ldo -80(%r30),%r31
	std %r19,0(%r31)
	ldd -96(%r30),%r31
	ldw -104(%r30),%r20
	ldw 16(%r28),%r19
	sub %r20,%r19,%r19
	extrd,s %r19,63,32,%r19
	subi 63,%r19,%r19
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	mtsar %r19
	depd,z %r31,%sar,64,%r31
	ldd -88(%r30),%r19
	ldw 16(%r28),%r28
	extrd,u %r28,63,32,%r28
	mtsar %r28
	shrpd %r0,%r19,%sar,%r28
	or %r31,%r28,%r31
	ldo -80(%r30),%r28
	std %r31,8(%r28)
.L812:
	ldo -80(%r30),%r28
	ldd 0(%r28),%r21
	ldd 8(%r28),%r20
	copy %r21,%r19
	copy %r20,%r31
.L815:
	copy %r19,%r28
	copy %r31,%r29
	ldo -112(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__lshrti3, .-__lshrti3
	.align 8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	stw %r25,8(%r28)
	ldi 16,%r31
	stw %r31,-88(%r30)
	ldi -1,%r19
	ldw -88(%r30),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	stw %r31,-84(%r30)
	ldw 0(%r28),%r19
	ldw -84(%r30),%r31
	and %r19,%r31,%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r20
	ldw -84(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,63,32,%r31
	stw %r31,-60(%r30)
	ldw -60(%r30),%r31
	extrd,u %r31,63,32,%r19
	ldw -88(%r30),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	stw %r31,-80(%r30)
	ldw -60(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw -84(%r30),%r19
	and %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,-60(%r30)
	ldw 0(%r28),%r19
	ldw -88(%r30),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r19
	ldw 8(%r28),%r20
	ldw -84(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw -80(%r30),%r19
	add,l %r19,%r31,%r31
	stw %r31,-76(%r30)
	ldw -60(%r30),%r31
	extrd,u %r31,63,32,%r19
	ldw -76(%r30),%r20
	ldw -84(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	ldw -88(%r30),%r20
	subi 31,%r20,%r20
	std %r20,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	mtsar %r20
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,-60(%r30)
	ldw -76(%r30),%r19
	ldw -88(%r30),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,-64(%r30)
	ldw -60(%r30),%r31
	extrd,u %r31,63,32,%r19
	ldw -88(%r30),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	stw %r31,-72(%r30)
	ldw -60(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw -84(%r30),%r19
	and %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,-60(%r30)
	ldw 8(%r28),%r19
	ldw -88(%r30),%r31
	mtsar %r31
	shrpw %r0,%r19,%sar,%r31
	extrd,u %r31,63,32,%r19
	ldw 0(%r28),%r20
	ldw -84(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldw -72(%r30),%r19
	add,l %r19,%r31,%r31
	stw %r31,-68(%r30)
	ldw -60(%r30),%r31
	extrd,u %r31,63,32,%r19
	ldw -68(%r30),%r20
	ldw -84(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r31,63,32,%r31
	ldw -88(%r30),%r20
	subi 31,%r20,%r20
	std %r20,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	mtsar %r20
	depw,z %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	stw %r31,-60(%r30)
	ldw -64(%r30),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r19
	ldw -68(%r30),%r20
	ldw -88(%r30),%r31
	mtsar %r31
	shrpw %r0,%r20,%sar,%r31
	extrd,u %r31,63,32,%r31
	add,l %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	extrd,s %r31,63,32,%r31
	stw %r31,-64(%r30)
	ldw -64(%r30),%r31
	extrd,s %r31,63,32,%r31
	extrd,u %r31,63,32,%r31
	ldw 0(%r28),%r20
	ldw -88(%r30),%r19
	mtsar %r19
	shrpw %r0,%r20,%sar,%r19
	extrd,u %r19,63,32,%r19
	ldw 8(%r28),%r20
	ldw -88(%r30),%r28
	mtsar %r28
	shrpw %r0,%r20,%sar,%r28
	extrd,u %r28,63,32,%r28
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,-64(%r30)
	ldd -64(%r30),%r28
	ldo -96(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 160(%r30),%r30
	std %r4,-120(%r30)
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-152(%r30)
	ldd 8(%r28),%r28
	std %r28,-144(%r30)
	ldw -148(%r30),%r28
	extrd,u %r28,63,32,%r28
	ldw -140(%r30),%r31
	extrd,u %r31,63,32,%r31
	copy %r31,%r25
	copy %r28,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __muldsi3,%r2
	nop
	copy %r4,%r27
	std %r28,-136(%r30)
	ldw -136(%r30),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r31
	ldw -152(%r30),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r19
	ldw -140(%r30),%r28
	extrd,u %r28,63,32,%r28
	std %r19,-128(%r30)
	fldd -128(%r30),%fr23
	std %r28,-128(%r30)
	fldd -128(%r30),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-128(%r30)
	ldd -128(%r30),%r28
	extrd,u %r28,63,32,%r19
	ldw -148(%r30),%r28
	extrd,u %r28,63,32,%r20
	ldw -144(%r30),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r28
	std %r20,-128(%r30)
	fldd -128(%r30),%fr23
	std %r28,-128(%r30)
	fldd -128(%r30),%fr22
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-128(%r30)
	ldd -128(%r30),%r28
	extrd,u %r28,63,32,%r28
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	stw %r28,-136(%r30)
	ldd -136(%r30),%r28
	ldd -176(%r30),%r2
	ldd -120(%r30),%r4
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.PROC
	.CALLINFO FRAME=144,NO_CALLS
	.ENTRY
	ldo 144(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldi 32,%r31
	stw %r31,-136(%r30)
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldi -1,%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	std %r31,-128(%r30)
	ldd 0(%r28),%r19
	ldd -128(%r30),%r31
	and %r19,%r31,%r19
	ldd 8(%r28),%r20
	ldd -128(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r19,31,32,%r21
	extrd,u %r31,31,32,%r20
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	std %r31,-64(%r30)
	fldd -64(%r30),%fr23
	std %r21,-64(%r30)
	fldd -64(%r30),%fr25
	std %r20,-64(%r30)
	fldd -64(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-64(%r30)
	ldd -64(%r30),%r19
	fstd %fr24,-64(%r30)
	ldd -64(%r30),%r20
	add,l %r19,%r20,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r20
	add,l %r31,%r20,%r19
	ldo -80(%r30),%r31
	std %r19,8(%r31)
	ldo -80(%r30),%r31
	ldd 8(%r31),%r19
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	std %r31,-120(%r30)
	ldo -80(%r30),%r31
	ldd 8(%r31),%r19
	ldd -128(%r30),%r31
	and %r19,%r31,%r19
	ldo -80(%r30),%r31
	std %r19,8(%r31)
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r19
	ldd 8(%r28),%r20
	ldd -128(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r19,31,32,%r21
	extrd,u %r31,31,32,%r20
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	std %r31,-64(%r30)
	fldd -64(%r30),%fr23
	std %r21,-64(%r30)
	fldd -64(%r30),%fr25
	std %r20,-64(%r30)
	fldd -64(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-64(%r30)
	ldd -64(%r30),%r19
	fstd %fr24,-64(%r30)
	ldd -64(%r30),%r20
	add,l %r19,%r20,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	add,l %r31,%r19,%r31
	ldd -120(%r30),%r19
	add,l %r19,%r31,%r31
	std %r31,-112(%r30)
	ldo -80(%r30),%r31
	ldd 8(%r31),%r19
	ldd -112(%r30),%r20
	ldd -128(%r30),%r31
	and %r20,%r31,%r31
	ldw -136(%r30),%r20
	extrd,u %r20,63,32,%r20
	subi 63,%r20,%r20
	std %r20,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r20
	mtsar %r20
	depd,z %r31,%sar,64,%r31
	add,l %r19,%r31,%r19
	ldo -80(%r30),%r31
	std %r19,8(%r31)
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd -112(%r30),%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	copy %r31,%r19
	ldo -80(%r30),%r31
	std %r19,0(%r31)
	ldo -80(%r30),%r31
	ldd 8(%r31),%r19
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	mtsar %r31
	shrpd %r0,%r19,%sar,%r31
	std %r31,-104(%r30)
	ldo -80(%r30),%r31
	ldd 8(%r31),%r19
	ldd -128(%r30),%r31
	and %r19,%r31,%r19
	ldo -80(%r30),%r31
	std %r19,8(%r31)
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd 8(%r28),%r19
	mtsar %r31
	shrpd %r0,%r19,%sar,%r19
	ldd 0(%r28),%r20
	ldd -128(%r30),%r31
	and %r20,%r31,%r31
	extrd,u %r19,31,32,%r21
	extrd,u %r31,31,32,%r20
	std %r19,-64(%r30)
	fldd -64(%r30),%fr22
	std %r31,-64(%r30)
	fldd -64(%r30),%fr23
	std %r21,-64(%r30)
	fldd -64(%r30),%fr25
	std %r20,-64(%r30)
	fldd -64(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-64(%r30)
	ldd -64(%r30),%r19
	fstd %fr24,-64(%r30)
	ldd -64(%r30),%r20
	add,l %r19,%r20,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r19
	add,l %r31,%r19,%r31
	ldd -104(%r30),%r19
	add,l %r19,%r31,%r31
	std %r31,-96(%r30)
	ldo -80(%r30),%r31
	ldd 8(%r31),%r19
	ldd -96(%r30),%r20
	ldd -128(%r30),%r31
	and %r20,%r31,%r31
	ldw -136(%r30),%r20
	extrd,u %r20,63,32,%r20
	subi 63,%r20,%r20
	std %r20,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r20
	mtsar %r20
	depd,z %r31,%sar,64,%r31
	add,l %r19,%r31,%r19
	ldo -80(%r30),%r31
	std %r19,8(%r31)
	ldo -80(%r30),%r31
	ldd 0(%r31),%r31
	copy %r31,%r19
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd -96(%r30),%r20
	mtsar %r31
	shrpd %r0,%r20,%sar,%r31
	add,l %r19,%r31,%r31
	copy %r31,%r19
	ldo -80(%r30),%r31
	std %r19,0(%r31)
	ldo -80(%r30),%r31
	ldd 0(%r31),%r31
	copy %r31,%r19
	ldw -136(%r30),%r31
	extrd,u %r31,63,32,%r31
	ldd 0(%r28),%r20
	mtsar %r31
	shrpd %r0,%r20,%sar,%r31
	ldw -136(%r30),%r20
	extrd,u %r20,63,32,%r20
	ldd 8(%r28),%r28
	mtsar %r20
	shrpd %r0,%r28,%sar,%r28
	extrd,u %r31,31,32,%r21
	extrd,u %r28,31,32,%r20
	std %r31,-64(%r30)
	fldd -64(%r30),%fr22
	std %r28,-64(%r30)
	fldd -64(%r30),%fr23
	std %r21,-64(%r30)
	fldd -64(%r30),%fr25
	std %r20,-64(%r30)
	fldd -64(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-64(%r30)
	ldd -64(%r30),%r20
	fstd %fr24,-64(%r30)
	ldd -64(%r30),%r31
	add,l %r20,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r20
	add,l %r28,%r20,%r28
	add,l %r19,%r28,%r28
	copy %r28,%r31
	ldo -80(%r30),%r28
	std %r31,0(%r28)
	ldo -80(%r30),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	copy %r19,%r28
	copy %r31,%r29
	ldo -144(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulddi3, .-__mulddi3
	.align 8
.globl __multi3
	.type	__multi3, @function
__multi3:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	ldo 192(%r30),%r30
	std %r4,-120(%r30)
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	copy %r24,%r20
	copy %r23,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,16(%r28)
	std %r31,24(%r28)
	ldd 0(%r28),%r31
	std %r31,-176(%r30)
	ldd 8(%r28),%r31
	std %r31,-168(%r30)
	ldo -160(%r30),%r31
	ldd 16(%r28),%r19
	std %r19,0(%r31)
	ldd 24(%r28),%r28
	std %r28,8(%r31)
	ldd -168(%r30),%r31
	ldo -160(%r30),%r28
	ldd 8(%r28),%r28
	copy %r28,%r25
	copy %r31,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __mulddi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r29,%r31
	ldo -144(%r30),%r28
	std %r19,0(%r28)
	std %r31,8(%r28)
	ldo -144(%r30),%r28
	ldd 0(%r28),%r28
	copy %r28,%r19
	ldd -176(%r30),%r28
	copy %r28,%r31
	ldo -160(%r30),%r28
	ldd 8(%r28),%r28
	extrd,u %r31,31,32,%r21
	extrd,u %r28,31,32,%r20
	std %r31,-128(%r30)
	fldd -128(%r30),%fr22
	std %r28,-128(%r30)
	fldd -128(%r30),%fr23
	std %r21,-128(%r30)
	fldd -128(%r30),%fr25
	std %r20,-128(%r30)
	fldd -128(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-128(%r30)
	ldd -128(%r30),%r20
	fstd %fr24,-128(%r30)
	ldd -128(%r30),%r21
	add,l %r20,%r21,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-128(%r30)
	ldd -128(%r30),%r31
	add,l %r28,%r31,%r20
	ldd -168(%r30),%r31
	ldo -160(%r30),%r28
	ldd 0(%r28),%r28
	extrd,u %r31,31,32,%r22
	extrd,u %r28,31,32,%r21
	std %r31,-128(%r30)
	fldd -128(%r30),%fr22
	std %r28,-128(%r30)
	fldd -128(%r30),%fr23
	std %r22,-128(%r30)
	fldd -128(%r30),%fr25
	std %r21,-128(%r30)
	fldd -128(%r30),%fr24
	xmpyu %fr23R,%fr25R,%fr25
	xmpyu %fr24R,%fr22R,%fr24
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr25,-128(%r30)
	ldd -128(%r30),%r21
	fstd %fr24,-128(%r30)
	ldd -128(%r30),%r31
	add,l %r21,%r31,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,-128(%r30)
	ldd -128(%r30),%r21
	add,l %r28,%r21,%r28
	add,l %r20,%r28,%r28
	add,l %r19,%r28,%r28
	copy %r28,%r31
	ldo -144(%r30),%r28
	std %r31,0(%r28)
	ldo -144(%r30),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r31
	copy %r19,%r28
	copy %r31,%r29
	ldd -208(%r30),%r2
	ldd -120(%r30),%r4
	ldo -192(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__multi3, .-__multi3
	.align 8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	sub %r0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 8
.globl __negti2
	.type	__negti2, @function
__negti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -64(%r29),%r31
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r28
	copy %r20,%r19
	std %r19,0(%r31)
	std %r28,8(%r31)
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	sub %r0,%r29,%r29
	sub,db %r0,%r28,%r28
	copy %r28,%r19
	copy %r29,%r31
	copy %r19,%r28
	copy %r31,%r29
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__negti2, .-__negti2
	.align 8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	std %r28,-72(%r30)
	ldw -72(%r30),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r31
	ldw -68(%r30),%r28
	extrd,u %r28,63,32,%r28
	xor %r31,%r28,%r28
	stw %r28,-88(%r30)
	ldw -88(%r30),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw -88(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-84(%r30)
	ldw -84(%r30),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw -84(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-80(%r30)
	ldw -80(%r30),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw -80(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-76(%r30)
	ldw -76(%r30),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	subi 31,%r31,%r31
	std %r31,-64(%r30)
	fldd -64(%r30),%fr22
	fstd %fr22,-64(%r30)
	ldd -64(%r30),%r31
	mtsar %r31
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo -96(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 8
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
	.PROC
	.CALLINFO FRAME=112,NO_CALLS
	.ENTRY
	ldo 112(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	ldo -80(%r30),%r31
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldd 8(%r28),%r28
	std %r28,8(%r31)
	ldo -80(%r30),%r28
	ldd 0(%r28),%r28
	copy %r28,%r31
	ldo -80(%r30),%r28
	ldd 8(%r28),%r28
	xor %r31,%r28,%r28
	std %r28,-64(%r30)
	ldw -64(%r30),%r28
	extrd,s %r28,63,32,%r28
	extrd,u %r28,63,32,%r31
	ldw -60(%r30),%r28
	extrd,u %r28,63,32,%r28
	xor %r31,%r28,%r28
	stw %r28,-104(%r30)
	ldw -104(%r30),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw -104(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-100(%r30)
	ldw -100(%r30),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw -100(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-96(%r30)
	ldw -96(%r30),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw -96(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-92(%r30)
	ldw -92(%r30),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	subi 31,%r31,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	mtsar %r31
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo -112(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__parityti2, .-__parityti2
	.align 8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,-72(%r30)
	ldw -72(%r30),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw -72(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-68(%r30)
	ldw -68(%r30),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw -68(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-64(%r30)
	ldw -64(%r30),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw -64(%r30),%r31
	xor %r31,%r28,%r28
	stw %r28,-60(%r30)
	ldw -60(%r30),%r28
	extrw,u %r28,31,4,%r28
	extrd,u %r28,63,32,%r31
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	subi 31,%r31,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	mtsar %r31
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,1,%r28
	extrd,s %r28,63,32,%r28
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.section	.rodata.cst8
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
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	ldd 0(%r28),%r28
	std %r28,-88(%r30)
	ldd -88(%r30),%r28
	extrd,u %r28,62,63,%r31
	addil LT'.LC18,%r27
	copy %r1,%r28
	ldd RT'.LC18(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r28
	ldd -88(%r30),%r31
	sub %r31,%r28,%r28
	std %r28,-80(%r30)
	ldd -80(%r30),%r28
	extrd,u %r28,61,62,%r31
	addil LT'.LC19,%r27
	copy %r1,%r28
	ldd RT'.LC19(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r31
	ldd -80(%r30),%r19
	addil LT'.LC19,%r27
	copy %r1,%r28
	ldd RT'.LC19(%r28),%r28
	ldd 0(%r28),%r28
	and %r19,%r28,%r28
	add,l %r31,%r28,%r28
	std %r28,-72(%r30)
	ldd -72(%r30),%r28
	extrd,u %r28,59,60,%r31
	ldd -72(%r30),%r28
	add,l %r31,%r28,%r31
	addil LT'.LC20,%r27
	copy %r1,%r28
	ldd RT'.LC20(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r28
	std %r28,-64(%r30)
	ldd -64(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldd -64(%r30),%r28
	extrd,u %r28,31,32,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	stw %r28,-56(%r30)
	ldw -56(%r30),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw -56(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-52(%r30)
	ldw -52(%r30),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw -52(%r30),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,7,%r28
	extrd,s %r28,63,32,%r28
	ldo -96(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	stw %r26,0(%r28)
	ldw 0(%r28),%r28
	stw %r28,-72(%r30)
	ldw -72(%r30),%r28
	extrw,u %r28,30,31,%r28
	extrd,u %r28,63,32,%r31
	ldil L'1431650304,%r28
	ldo 5461(%r28),%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldw -72(%r30),%r31
	sub %r31,%r28,%r28
	stw %r28,-68(%r30)
	ldw -68(%r30),%r28
	extrw,u %r28,29,30,%r28
	extrd,u %r28,63,32,%r31
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldw -68(%r30),%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	stw %r28,-64(%r30)
	ldw -64(%r30),%r28
	extrw,u %r28,27,28,%r28
	extrd,u %r28,63,32,%r28
	ldw -64(%r30),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r31
	ldil L'252641280,%r28
	ldo 3855(%r28),%r28
	and %r31,%r28,%r28
	stw %r28,-60(%r30)
	ldw -60(%r30),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw -60(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-56(%r30)
	ldw -56(%r30),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw -56(%r30),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,6,%r28
	extrd,s %r28,63,32,%r28
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
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
	.CALLINFO FRAME=160,NO_CALLS,ENTRY_GR=4
	.ENTRY
	ldo 160(%r30),%r30
	std %r4,-64(%r30)
	std %r3,-56(%r30)
	ldo -64(%r29),%r28
	copy %r25,%r29
	copy %r29,%r31
	copy %r26,%r25
	std %r25,0(%r28)
	std %r31,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-144(%r30)
	ldd 8(%r28),%r28
	std %r28,-136(%r30)
	ldd -144(%r30),%r28
	depd,z %r28,0,1,%r31
	ldd -136(%r30),%r28
	extrd,u %r28,62,63,%r28
	or %r31,%r28,%r28
	ldd -144(%r30),%r31
	extrd,u %r31,62,63,%r25
	addil LT'.LC21,%r27
	copy %r1,%r31
	ldd RT'.LC21(%r31),%r31
	ldd 0(%r31),%r31
	and %r25,%r31,%r3
	addil LT'.LC21,%r27
	copy %r1,%r31
	ldd RT'.LC21(%r31),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r4
	ldo -128(%r30),%r31
	ldd -144(%r30),%r28
	ldd -136(%r30),%r29
	sub %r29,%r4,%r29
	sub,db %r28,%r3,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldo -128(%r30),%r31
	ldd 0(%r31),%r28
	depd,z %r28,1,2,%r25
	ldd 8(%r31),%r28
	extrd,u %r28,61,62,%r28
	or %r25,%r28,%r28
	ldd 0(%r31),%r31
	extrd,u %r31,61,62,%r25
	addil LT'.LC22,%r27
	copy %r1,%r31
	ldd RT'.LC22(%r31),%r31
	ldd 0(%r31),%r31
	and %r25,%r31,%r23
	addil LT'.LC22,%r27
	copy %r1,%r31
	ldd RT'.LC22(%r31),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r24
	ldo -128(%r30),%r28
	ldd 0(%r28),%r25
	addil LT'.LC22,%r27
	copy %r1,%r31
	ldd RT'.LC22(%r31),%r31
	ldd 0(%r31),%r31
	and %r25,%r31,%r21
	ldd 8(%r28),%r31
	addil LT'.LC22,%r27
	copy %r1,%r28
	ldd RT'.LC22(%r28),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r22
	ldo -112(%r30),%r31
	add %r24,%r22,%r29
	add,dc %r23,%r21,%r28
	std %r28,0(%r31)
	std %r29,8(%r31)
	ldo -112(%r30),%r28
	ldd 0(%r28),%r31
	depd,z %r31,3,4,%r31
	ldd 8(%r28),%r21
	extrd,u %r21,59,60,%r20
	or %r31,%r20,%r20
	ldd 0(%r28),%r28
	extrd,u %r28,59,60,%r19
	ldo -112(%r30),%r31
	ldd 0(%r31),%r28
	ldd 8(%r31),%r29
	add %r20,%r29,%r29
	add,dc %r19,%r28,%r28
	ldo -96(%r30),%r31
	addil LT'.LC23,%r27
	copy %r1,%r19
	ldd RT'.LC23(%r19),%r19
	ldd 0(%r19),%r19
	and %r28,%r19,%r19
	std %r19,0(%r31)
	addil LT'.LC23,%r27
	copy %r1,%r19
	ldd RT'.LC23(%r19),%r19
	ldd 0(%r19),%r19
	and %r29,%r19,%r28
	std %r28,8(%r31)
	ldo -96(%r30),%r28
	ldd 8(%r28),%r31
	ldo -96(%r30),%r28
	ldd 0(%r28),%r28
	extrd,u %r28,63,64,%r28
	add,l %r31,%r28,%r28
	std %r28,-80(%r30)
	ldd -80(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldd -80(%r30),%r28
	extrd,u %r28,31,32,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r28,%r28
	stw %r28,-72(%r30)
	ldw -72(%r30),%r28
	extrw,u %r28,15,16,%r28
	extrd,u %r28,63,32,%r28
	ldw -72(%r30),%r31
	add,l %r31,%r28,%r28
	stw %r28,-68(%r30)
	ldw -68(%r30),%r28
	extrw,u %r28,23,24,%r28
	extrd,u %r28,63,32,%r28
	ldw -68(%r30),%r31
	add,l %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,s %r28,63,32,%r28
	extrw,u %r28,31,8,%r28
	extrd,s %r28,63,32,%r28
	ldd -64(%r30),%r4
	ldd -56(%r30),%r3
	ldo -160(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcountti2, .-__popcountti2
	.section	.rodata.cst8
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
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	fstd %fr4,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-64(%r30)
	addil LT'.LC24,%r27
	copy %r1,%r31
	ldd RT'.LC24(%r31),%r31
	fldd 0(%r31),%fr22
	fstd %fr22,-72(%r30)
.L844:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L841
	fldd -72(%r30),%fr23
	fldd 0(%r28),%fr22
	fmpy,dbl %fr23,%fr22,%fr22
	fstd %fr22,-72(%r30)
.L841:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L849
	fldd 0(%r28),%fr22
	fmpy,dbl %fr22,%fr22,%fr22
	fstd %fr22,0(%r28)
	b,n .L844
.L849:
	nop
	ldw -64(%r30),%r28
	cmpib,=,n 0,%r28,.L845
	addil LT'.LC24,%r27
	copy %r1,%r28
	ldd RT'.LC24(%r28),%r28
	fldd 0(%r28),%fr23
	fldd -72(%r30),%fr22
	fdiv,dbl %fr23,%fr22,%fr22
	b,n .L847
.L845:
	fldd -72(%r30),%fr22
.L847:
	nop
	fcpy,dbl %fr22,%fr4
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC25:
	.word	1065353216
	.text
	.align 8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	ldo -64(%r29),%r28
	fstw %fr4R,0(%r28)
	stw %r25,8(%r28)
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	stw %r31,-52(%r30)
	addil LT'.LC25,%r27
	copy %r1,%r31
	ldd RT'.LC25(%r31),%r31
	fldw 0(%r31),%fr22R
	fstw %fr22R,-56(%r30)
.L854:
	ldw 8(%r28),%r31
	extrw,u %r31,31,1,%r31
	extrd,s %r31,63,32,%r19
	ldi 0,%r31
	cmpb,*=,n %r31,%r19,.L851
	fldw -56(%r30),%fr23R
	fldw 0(%r28),%fr22R
	fmpy,sgl %fr23R,%fr22R,%fr22R
	fstw %fr22R,-56(%r30)
.L851:
	ldw 8(%r28),%r31
	extrw,u %r31,0,1,%r19
	add,l %r19,%r31,%r31
	extrw,s %r31,30,31,%r31
	stw %r31,8(%r28)
	ldw 8(%r28),%r31
	cmpib,=,n 0,%r31,.L859
	fldw 0(%r28),%fr22R
	fmpy,sgl %fr22R,%fr22R,%fr22R
	fstw %fr22R,0(%r28)
	b,n .L854
.L859:
	nop
	ldw -52(%r30),%r28
	cmpib,=,n 0,%r28,.L855
	addil LT'.LC25,%r27
	copy %r1,%r28
	ldd RT'.LC25(%r28),%r28
	fldw 0(%r28),%fr23R
	fldw -56(%r30),%fr22R
	fdiv,sgl %fr23R,%fr22R,%fr22R
	b,n .L857
.L855:
	fldw -56(%r30),%fr22R
.L857:
	nop
	fcpy,sgl %fr22R,%fr4R
	ldo -64(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=80,NO_CALLS
	.ENTRY
	ldo 80(%r30),%r30
	ldo -64(%r29),%r28
	std %r26,0(%r28)
	std %r25,8(%r28)
	ldd 0(%r28),%r31
	std %r31,-72(%r30)
	ldd 8(%r28),%r28
	std %r28,-64(%r30)
	ldw -72(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldw -64(%r30),%r28
	extrd,u %r28,63,32,%r28
	cmpb,<<=,n %r28,%r31,.L861
	ldi 0,%r28
	b,n .L866
.L861:
	ldw -72(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldw -64(%r30),%r28
	extrd,u %r28,63,32,%r28
	cmpb,>>=,n %r28,%r31,.L863
	ldi 2,%r28
	b,n .L866
.L863:
	ldw -68(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldw -60(%r30),%r28
	extrd,u %r28,63,32,%r28
	cmpb,<<=,n %r28,%r31,.L864
	ldi 0,%r28
	b,n .L866
.L864:
	ldw -68(%r30),%r28
	extrd,u %r28,63,32,%r31
	ldw -60(%r30),%r28
	extrd,u %r28,63,32,%r28
	cmpb,>>=,n %r28,%r31,.L865
	ldi 2,%r28
	b,n .L866
.L865:
	ldi 1,%r28
.L866:
	ldo -80(%r30),%r30
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
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
	ldd -144(%r30),%r2
	ldd,mb -128(%r30),%r4
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 8
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.PROC
	.CALLINFO FRAME=96,NO_CALLS
	.ENTRY
	ldo 96(%r30),%r30
	ldo -64(%r29),%r28
	copy %r26,%r20
	copy %r25,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,0(%r28)
	std %r31,8(%r28)
	copy %r24,%r20
	copy %r23,%r21
	copy %r21,%r31
	copy %r20,%r19
	std %r19,16(%r28)
	std %r31,24(%r28)
	ldd 0(%r28),%r31
	std %r31,-80(%r30)
	ldd 8(%r28),%r31
	std %r31,-72(%r30)
	ldo -64(%r30),%r31
	ldd 16(%r28),%r19
	std %r19,0(%r31)
	ldd 24(%r28),%r28
	std %r28,8(%r31)
	ldd -80(%r30),%r31
	ldo -64(%r30),%r28
	ldd 0(%r28),%r28
	cmpb,*<<=,n %r28,%r31,.L870
	ldi 0,%r28
	b,n .L875
.L870:
	ldd -80(%r30),%r31
	ldo -64(%r30),%r28
	ldd 0(%r28),%r28
	cmpb,*>>=,n %r28,%r31,.L872
	ldi 2,%r28
	b,n .L875
.L872:
	ldd -72(%r30),%r31
	ldo -64(%r30),%r28
	ldd 8(%r28),%r28
	cmpb,*<<=,n %r28,%r31,.L873
	ldi 0,%r28
	b,n .L875
.L873:
	ldd -72(%r30),%r31
	ldo -64(%r30),%r28
	ldd 8(%r28),%r28
	cmpb,*>>=,n %r28,%r31,.L874
	ldi 2,%r28
	b,n .L875
.L874:
	ldi 1,%r28
.L875:
	ldo -96(%r30),%r30
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
