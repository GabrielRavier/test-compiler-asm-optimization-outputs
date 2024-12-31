	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-16]
	mov	rdx, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-16]
	mov	rdx, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-16]
	cmp	rax, QWORD PTR [rbp-8]
	jnb	.L6
	mov	rax, QWORD PTR [rbp-40]
	add	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-40]
	add	QWORD PTR [rbp-8], rax
	jmp	.L7
.L8:
	sub	QWORD PTR [rbp-16], 1
	sub	QWORD PTR [rbp-8], 1
	mov	rax, QWORD PTR [rbp-16]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rbp-40], 1
.L7:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L8
	jmp	.L9
.L6:
	mov	rax, QWORD PTR [rbp-16]
	cmp	rax, QWORD PTR [rbp-8]
	je	.L9
	jmp	.L10
.L11:
	mov	rdx, QWORD PTR [rbp-16]
	lea	rax, [rdx+1]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-8]
	lea	rcx, [rax+1]
	mov	QWORD PTR [rbp-8], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rbp-40], 1
.L10:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L11
.L9:
	mov	rax, QWORD PTR [rbp-24]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	DWORD PTR [rbp-36], edx
	mov	QWORD PTR [rbp-48], rcx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	eax, DWORD PTR [rbp-36]
	movzx	eax, al
	mov	DWORD PTR [rbp-36], eax
	jmp	.L14
.L16:
	sub	QWORD PTR [rbp-48], 1
	add	QWORD PTR [rbp-16], 1
	add	QWORD PTR [rbp-8], 1
.L14:
	cmp	QWORD PTR [rbp-48], 0
	je	.L15
	mov	rax, QWORD PTR [rbp-16]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rbp-36], eax
	jne	.L16
.L15:
	cmp	QWORD PTR [rbp-48], 0
	je	.L17
	mov	rax, QWORD PTR [rbp-8]
	add	rax, 1
	jmp	.L18
.L17:
	mov	eax, 0
.L18:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-28], esi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	eax, DWORD PTR [rbp-28]
	movzx	eax, al
	mov	DWORD PTR [rbp-28], eax
	jmp	.L20
.L22:
	add	QWORD PTR [rbp-8], 1
	sub	QWORD PTR [rbp-40], 1
.L20:
	cmp	QWORD PTR [rbp-40], 0
	je	.L21
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rbp-28], eax
	jne	.L22
.L21:
	cmp	QWORD PTR [rbp-40], 0
	je	.L23
	mov	rax, QWORD PTR [rbp-8]
	jmp	.L25
.L23:
	mov	eax, 0
.L25:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	jmp	.L27
.L29:
	sub	QWORD PTR [rbp-40], 1
	add	QWORD PTR [rbp-8], 1
	add	QWORD PTR [rbp-16], 1
.L27:
	cmp	QWORD PTR [rbp-40], 0
	je	.L28
	mov	rax, QWORD PTR [rbp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L29
.L28:
	cmp	QWORD PTR [rbp-40], 0
	je	.L30
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR [rbp-16]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	sub	edx, eax
	jmp	.L32
.L30:
	mov	edx, 0
.L32:
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	jmp	.L34
.L35:
	mov	rdx, QWORD PTR [rbp-16]
	lea	rax, [rdx+1]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-8]
	lea	rcx, [rax+1]
	mov	QWORD PTR [rbp-8], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rbp-40], 1
.L34:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L35
	mov	rax, QWORD PTR [rbp-24]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-28], esi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	eax, DWORD PTR [rbp-28]
	movzx	eax, al
	mov	DWORD PTR [rbp-28], eax
	jmp	.L38
.L40:
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-40]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rbp-28], eax
	jne	.L38
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-40]
	add	rax, rdx
	jmp	.L39
.L38:
	mov	rax, QWORD PTR [rbp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rbp-40], rdx
	test	rax, rax
	jne	.L40
	mov	eax, 0
.L39:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.globl	memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-28], esi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	jmp	.L42
.L43:
	mov	eax, DWORD PTR [rbp-28]
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rbp-40], 1
	add	QWORD PTR [rbp-8], 1
.L42:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L43
	mov	rax, QWORD PTR [rbp-24]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	jmp	.L46
.L47:
	add	QWORD PTR [rbp-16], 1
	add	QWORD PTR [rbp-8], 1
.L46:
	mov	rax, QWORD PTR [rbp-16]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L47
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	mov	eax, DWORD PTR [rbp-12]
	movzx	eax, al
	mov	DWORD PTR [rbp-12], eax
	jmp	.L50
.L52:
	add	QWORD PTR [rbp-8], 1
.L50:
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L51
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rbp-12], eax
	jne	.L52
.L51:
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	DWORD PTR [rbp-4], esi
.L57:
	movzx	edx, BYTE PTR [rax]
	movsx	edx, dl
	cmp	DWORD PTR [rbp-4], edx
	jne	.L55
	jmp	.L56
.L55:
	mov	rdx, rax
	lea	rax, [rdx+1]
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	jne	.L57
	mov	eax, 0
.L56:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	jmp	.L59
.L61:
	add	QWORD PTR [rbp-8], 1
	add	QWORD PTR [rbp-16], 1
.L59:
	mov	rax, QWORD PTR [rbp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L60
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L61
.L60:
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR [rbp-16]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	sub	edx, eax
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	jmp	.L64
.L65:
	add	QWORD PTR [rbp-24], 1
.L64:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L65
	mov	rax, QWORD PTR [rbp-24]
	sub	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rbp-40], rdx
	test	rax, rax
	jne	.L70
	mov	edx, 0
	jmp	.L69
.L72:
	add	QWORD PTR [rbp-8], 1
	add	QWORD PTR [rbp-16], 1
	sub	QWORD PTR [rbp-40], 1
.L70:
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L71
	mov	rax, QWORD PTR [rbp-16]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L71
	cmp	QWORD PTR [rbp-40], 0
	je	.L71
	mov	rax, QWORD PTR [rbp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L72
.L71:
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR [rbp-16]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	sub	edx, eax
.L69:
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	jmp	.L74
.L75:
	mov	rax, QWORD PTR [rbp-8]
	add	rax, 1
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rbp-16]
	lea	rdx, [rax+1]
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	QWORD PTR [rbp-16], 2
	add	QWORD PTR [rbp-8], 2
	sub	QWORD PTR [rbp-40], 2
.L74:
	cmp	QWORD PTR [rbp-40], 1
	jg	.L75
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	cmp	eax, 127
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	cmp	DWORD PTR [rbp-4], 32
	je	.L81
	cmp	DWORD PTR [rbp-4], 9
	jne	.L82
.L81:
	mov	eax, 1
	jmp	.L84
.L82:
	mov	eax, 0
.L84:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	cmp	eax, 31
	jbe	.L86
	cmp	DWORD PTR [rbp-4], 127
	jne	.L87
.L86:
	mov	eax, 1
	jmp	.L89
.L87:
	mov	eax, 0
.L89:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 33
	cmp	eax, 93
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.globl	islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 32
	cmp	eax, 94
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	cmp	DWORD PTR [rbp-4], 32
	je	.L99
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 9
	cmp	eax, 4
	ja	.L100
.L99:
	mov	eax, 1
	jmp	.L102
.L100:
	mov	eax, 0
.L102:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 65
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	cmp	DWORD PTR [rbp-4], 31
	jbe	.L106
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 127
	cmp	eax, 32
	jbe	.L106
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 8232
	cmp	eax, 1
	jbe	.L106
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 65529
	cmp	eax, 2
	ja	.L107
.L106:
	mov	eax, 1
	jmp	.L109
.L107:
	mov	eax, 0
.L109:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	cmp	DWORD PTR [rbp-4], 254
	ja	.L113
	mov	eax, DWORD PTR [rbp-4]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	al
	movzx	eax, al
	jmp	.L114
.L113:
	cmp	DWORD PTR [rbp-4], 8231
	jbe	.L115
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	.L115
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 57344
	cmp	eax, 8184
	ja	.L116
.L115:
	mov	eax, 1
	jmp	.L114
.L116:
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.L117
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 65534
	cmp	eax, 65534
	jne	.L118
.L117:
	mov	eax, 0
	jmp	.L114
.L118:
	mov	eax, 1
.L114:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L120
	mov	eax, DWORD PTR [rbp-4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 5
	ja	.L121
.L120:
	mov	eax, 1
	jmp	.L123
.L121:
	mov	eax, 0
.L123:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 127
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-8], xmm0
	movsd	QWORD PTR [rbp-16], xmm1
	movsd	xmm0, QWORD PTR [rbp-8]
	ucomisd	xmm0, QWORD PTR [rbp-8]
	jnp	.L127
	movsd	xmm0, QWORD PTR [rbp-8]
	jmp	.L128
.L127:
	movsd	xmm0, QWORD PTR [rbp-16]
	ucomisd	xmm0, QWORD PTR [rbp-16]
	jnp	.L129
	movsd	xmm0, QWORD PTR [rbp-16]
	jmp	.L128
.L129:
	movsd	xmm0, QWORD PTR [rbp-8]
	comisd	xmm0, QWORD PTR [rbp-16]
	jbe	.L134
	movsd	xmm0, QWORD PTR [rbp-8]
	subsd	xmm0, QWORD PTR [rbp-16]
	jmp	.L128
.L134:
	pxor	xmm0, xmm0
.L128:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-4], xmm0
	movss	DWORD PTR [rbp-8], xmm1
	movss	xmm0, DWORD PTR [rbp-4]
	ucomiss	xmm0, DWORD PTR [rbp-4]
	jnp	.L136
	movss	xmm0, DWORD PTR [rbp-4]
	jmp	.L137
.L136:
	movss	xmm0, DWORD PTR [rbp-8]
	ucomiss	xmm0, DWORD PTR [rbp-8]
	jnp	.L138
	movss	xmm0, DWORD PTR [rbp-8]
	jmp	.L137
.L138:
	movss	xmm0, DWORD PTR [rbp-4]
	comiss	xmm0, DWORD PTR [rbp-8]
	jbe	.L143
	movss	xmm0, DWORD PTR [rbp-4]
	subss	xmm0, DWORD PTR [rbp-8]
	jmp	.L137
.L143:
	pxor	xmm0, xmm0
.L137:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-8], xmm0
	movsd	QWORD PTR [rbp-16], xmm1
	movsd	xmm0, QWORD PTR [rbp-8]
	ucomisd	xmm0, QWORD PTR [rbp-8]
	jnp	.L145
	movsd	xmm0, QWORD PTR [rbp-16]
	jmp	.L146
.L145:
	movsd	xmm0, QWORD PTR [rbp-16]
	ucomisd	xmm0, QWORD PTR [rbp-16]
	jnp	.L147
	movsd	xmm0, QWORD PTR [rbp-8]
	jmp	.L146
.L147:
	movsd	xmm0, QWORD PTR [rbp-8]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR [rbp-16]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L148
	movsd	xmm0, QWORD PTR [rbp-8]
	movmskpd	eax, xmm0
	and	eax, 1
	je	.L149
	movsd	xmm0, QWORD PTR [rbp-16]
	jmp	.L146
.L149:
	movsd	xmm0, QWORD PTR [rbp-8]
	jmp	.L146
.L148:
	movsd	xmm0, QWORD PTR [rbp-16]
	comisd	xmm0, QWORD PTR [rbp-8]
	jbe	.L155
	movsd	xmm0, QWORD PTR [rbp-16]
	jmp	.L146
.L155:
	movsd	xmm0, QWORD PTR [rbp-8]
.L146:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-4], xmm0
	movss	DWORD PTR [rbp-8], xmm1
	movss	xmm0, DWORD PTR [rbp-4]
	ucomiss	xmm0, DWORD PTR [rbp-4]
	jnp	.L157
	movss	xmm0, DWORD PTR [rbp-8]
	jmp	.L158
.L157:
	movss	xmm0, DWORD PTR [rbp-8]
	ucomiss	xmm0, DWORD PTR [rbp-8]
	jnp	.L159
	movss	xmm0, DWORD PTR [rbp-4]
	jmp	.L158
.L159:
	mov	eax, DWORD PTR [rbp-4]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-8]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L160
	mov	eax, DWORD PTR [rbp-4]
	and	eax, -2147483648
	je	.L161
	movss	xmm0, DWORD PTR [rbp-8]
	jmp	.L158
.L161:
	movss	xmm0, DWORD PTR [rbp-4]
	jmp	.L158
.L160:
	movss	xmm0, DWORD PTR [rbp-8]
	comiss	xmm0, DWORD PTR [rbp-4]
	jbe	.L167
	movss	xmm0, DWORD PTR [rbp-8]
	jmp	.L158
.L167:
	movss	xmm0, DWORD PTR [rbp-4]
.L158:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR [rbp+16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L169
	fld	TBYTE PTR [rbp+32]
	jmp	.L170
.L169:
	fld	TBYTE PTR [rbp+32]
	fld	TBYTE PTR [rbp+32]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L171
	fld	TBYTE PTR [rbp+16]
	jmp	.L170
.L171:
	fld	TBYTE PTR [rbp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [rbp+32]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L172
	fld	TBYTE PTR [rbp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L173
	fld	TBYTE PTR [rbp+32]
	jmp	.L170
.L173:
	fld	TBYTE PTR [rbp+16]
	jmp	.L170
.L172:
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR [rbp+32]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L179
	fld	TBYTE PTR [rbp+32]
	jmp	.L170
.L179:
	fld	TBYTE PTR [rbp+16]
.L170:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-8], xmm0
	movsd	QWORD PTR [rbp-16], xmm1
	movsd	xmm0, QWORD PTR [rbp-8]
	ucomisd	xmm0, QWORD PTR [rbp-8]
	jnp	.L181
	movsd	xmm0, QWORD PTR [rbp-16]
	jmp	.L182
.L181:
	movsd	xmm0, QWORD PTR [rbp-16]
	ucomisd	xmm0, QWORD PTR [rbp-16]
	jnp	.L183
	movsd	xmm0, QWORD PTR [rbp-8]
	jmp	.L182
.L183:
	movsd	xmm0, QWORD PTR [rbp-8]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR [rbp-16]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L184
	movsd	xmm0, QWORD PTR [rbp-8]
	movmskpd	eax, xmm0
	and	eax, 1
	je	.L185
	movsd	xmm0, QWORD PTR [rbp-8]
	jmp	.L182
.L185:
	movsd	xmm0, QWORD PTR [rbp-16]
	jmp	.L182
.L184:
	movsd	xmm0, QWORD PTR [rbp-16]
	comisd	xmm0, QWORD PTR [rbp-8]
	jbe	.L191
	movsd	xmm0, QWORD PTR [rbp-8]
	jmp	.L182
.L191:
	movsd	xmm0, QWORD PTR [rbp-16]
.L182:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-4], xmm0
	movss	DWORD PTR [rbp-8], xmm1
	movss	xmm0, DWORD PTR [rbp-4]
	ucomiss	xmm0, DWORD PTR [rbp-4]
	jnp	.L193
	movss	xmm0, DWORD PTR [rbp-8]
	jmp	.L194
.L193:
	movss	xmm0, DWORD PTR [rbp-8]
	ucomiss	xmm0, DWORD PTR [rbp-8]
	jnp	.L195
	movss	xmm0, DWORD PTR [rbp-4]
	jmp	.L194
.L195:
	mov	eax, DWORD PTR [rbp-4]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-8]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L196
	mov	eax, DWORD PTR [rbp-4]
	and	eax, -2147483648
	je	.L197
	movss	xmm0, DWORD PTR [rbp-4]
	jmp	.L194
.L197:
	movss	xmm0, DWORD PTR [rbp-8]
	jmp	.L194
.L196:
	movss	xmm0, DWORD PTR [rbp-8]
	comiss	xmm0, DWORD PTR [rbp-4]
	jbe	.L203
	movss	xmm0, DWORD PTR [rbp-4]
	jmp	.L194
.L203:
	movss	xmm0, DWORD PTR [rbp-8]
.L194:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR [rbp+16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L205
	fld	TBYTE PTR [rbp+32]
	jmp	.L206
.L205:
	fld	TBYTE PTR [rbp+32]
	fld	TBYTE PTR [rbp+32]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L207
	fld	TBYTE PTR [rbp+16]
	jmp	.L206
.L207:
	fld	TBYTE PTR [rbp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [rbp+32]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L208
	fld	TBYTE PTR [rbp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L209
	fld	TBYTE PTR [rbp+16]
	jmp	.L206
.L209:
	fld	TBYTE PTR [rbp+32]
	jmp	.L206
.L208:
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR [rbp+32]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L215
	fld	TBYTE PTR [rbp+16]
	jmp	.L206
.L215:
	fld	TBYTE PTR [rbp+32]
.L206:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.section	.rodata
	.align 32
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	rax, QWORD PTR [rbp-24]
	mov	DWORD PTR [rbp-12], eax
	mov	QWORD PTR [rbp-8], OFFSET FLAT:s.0
	jmp	.L217
.L218:
	mov	eax, DWORD PTR [rbp-12]
	and	eax, 63
	mov	eax, eax
	movzx	edx, BYTE PTR digits[rax]
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR [rbp-8], 1
	shr	DWORD PTR [rbp-12], 6
.L217:
	cmp	DWORD PTR [rbp-12], 0
	jne	.L218
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], 0
	mov	eax, OFFSET FLAT:s.0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.globl	srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 1
	mov	eax, eax
	mov	QWORD PTR seed[rip], rax
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.globl	rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR seed[rip]
	movabs	rdx, 6364136223846793005
	imul	rax, rdx
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	mov	rax, QWORD PTR seed[rip]
	shr	rax, 33
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.globl	insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	cmp	QWORD PTR [rbp-16], 0
	jne	.L224
	mov	rax, QWORD PTR [rbp-8]
	mov	QWORD PTR [rax+8], 0
	mov	rax, QWORD PTR [rbp-8]
	mov	rdx, QWORD PTR [rax+8]
	mov	rax, QWORD PTR [rbp-8]
	mov	QWORD PTR [rax], rdx
	jmp	.L223
.L224:
	mov	rax, QWORD PTR [rbp-16]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-8]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR [rbp-8]
	mov	rdx, QWORD PTR [rbp-16]
	mov	QWORD PTR [rax+8], rdx
	mov	rax, QWORD PTR [rbp-16]
	mov	rdx, QWORD PTR [rbp-8]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L223
	mov	rax, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rbp-8]
	mov	QWORD PTR [rax+8], rdx
.L223:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.globl	remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L227
	mov	rax, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rbp-8]
	mov	rdx, QWORD PTR [rdx+8]
	mov	QWORD PTR [rax+8], rdx
.L227:
	mov	rax, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rax+8]
	test	rax, rax
	je	.L226
	mov	rax, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rax+8]
	mov	rdx, QWORD PTR [rbp-8]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
.L226:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-56], rdi
	mov	QWORD PTR [rbp-64], rsi
	mov	QWORD PTR [rbp-72], rdx
	mov	QWORD PTR [rbp-80], rcx
	mov	QWORD PTR [rbp-88], r8
	mov	rbx, QWORD PTR [rbp-80]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-64]
	mov	QWORD PTR [rbp-40], rax
	mov	rax, QWORD PTR [rbp-72]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-24], 0
	jmp	.L231
.L234:
	mov	rdx, rbx
	imul	rdx, QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-40]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR [rbp-56]
	mov	rdx, QWORD PTR [rbp-88]
	mov	rsi, rcx
	mov	rdi, rax
	call	rdx
	test	eax, eax
	jne	.L232
	imul	rbx, QWORD PTR [rbp-24]
	mov	rdx, rbx
	mov	rax, QWORD PTR [rbp-40]
	add	rax, rdx
	jmp	.L233
.L232:
	add	QWORD PTR [rbp-24], 1
.L231:
	mov	rax, QWORD PTR [rbp-24]
	cmp	rax, QWORD PTR [rbp-48]
	jb	.L234
	mov	rax, QWORD PTR [rbp-48]
	lea	rdx, [rax+1]
	mov	rax, QWORD PTR [rbp-72]
	mov	QWORD PTR [rax], rdx
	imul	rbx, QWORD PTR [rbp-48]
	mov	rdx, rbx
	mov	rax, QWORD PTR [rbp-40]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR [rbp-80]
	mov	rax, QWORD PTR [rbp-56]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy
.L233:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-56], rdi
	mov	QWORD PTR [rbp-64], rsi
	mov	QWORD PTR [rbp-72], rdx
	mov	QWORD PTR [rbp-80], rcx
	mov	QWORD PTR [rbp-88], r8
	mov	rbx, QWORD PTR [rbp-80]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-64]
	mov	QWORD PTR [rbp-40], rax
	mov	rax, QWORD PTR [rbp-72]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-24], 0
	jmp	.L236
.L239:
	mov	rdx, rbx
	imul	rdx, QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-40]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR [rbp-56]
	mov	rdx, QWORD PTR [rbp-88]
	mov	rsi, rcx
	mov	rdi, rax
	call	rdx
	test	eax, eax
	jne	.L237
	imul	rbx, QWORD PTR [rbp-24]
	mov	rdx, rbx
	mov	rax, QWORD PTR [rbp-40]
	add	rax, rdx
	jmp	.L238
.L237:
	add	QWORD PTR [rbp-24], 1
.L236:
	mov	rax, QWORD PTR [rbp-24]
	cmp	rax, QWORD PTR [rbp-48]
	jb	.L239
	mov	eax, 0
.L238:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.globl	abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 24
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-4], 0
	mov	DWORD PTR [rbp-8], 0
	jmp	.L243
.L244:
	add	QWORD PTR [rbp-24], 1
.L243:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isspace
	test	eax, eax
	jne	.L244
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L245
	cmp	eax, 45
	jne	.L247
	mov	DWORD PTR [rbp-8], 1
.L245:
	add	QWORD PTR [rbp-24], 1
	jmp	.L247
.L248:
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	rax, QWORD PTR [rbp-24]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rbp-24], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	lea	edx, [rax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [rbp-4], eax
.L247:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L248
	cmp	DWORD PTR [rbp-8], 0
	jne	.L249
	mov	eax, DWORD PTR [rbp-4]
	neg	eax
	jmp	.L251
.L249:
	mov	eax, DWORD PTR [rbp-4]
.L251:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 24
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-8], 0
	mov	DWORD PTR [rbp-12], 0
	jmp	.L253
.L254:
	add	QWORD PTR [rbp-24], 1
.L253:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isspace
	test	eax, eax
	jne	.L254
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L255
	cmp	eax, 45
	jne	.L257
	mov	DWORD PTR [rbp-12], 1
.L255:
	add	QWORD PTR [rbp-24], 1
	jmp	.L257
.L258:
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	mov	rcx, rax
	mov	rax, QWORD PTR [rbp-24]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rbp-24], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	sub	rcx, rax
	mov	rdx, rcx
	mov	QWORD PTR [rbp-8], rdx
.L257:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L258
	cmp	DWORD PTR [rbp-12], 0
	jne	.L259
	mov	rax, QWORD PTR [rbp-8]
	neg	rax
	jmp	.L261
.L259:
	mov	rax, QWORD PTR [rbp-8]
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 24
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-8], 0
	mov	DWORD PTR [rbp-12], 0
	jmp	.L263
.L264:
	add	QWORD PTR [rbp-24], 1
.L263:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isspace
	test	eax, eax
	jne	.L264
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L265
	cmp	eax, 45
	jne	.L267
	mov	DWORD PTR [rbp-12], 1
.L265:
	add	QWORD PTR [rbp-24], 1
	jmp	.L267
.L268:
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	mov	rcx, rax
	mov	rax, QWORD PTR [rbp-24]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rbp-24], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	sub	rcx, rax
	mov	rdx, rcx
	mov	QWORD PTR [rbp-8], rdx
.L267:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L268
	cmp	DWORD PTR [rbp-12], 0
	jne	.L269
	mov	rax, QWORD PTR [rbp-8]
	neg	rax
	jmp	.L271
.L269:
	mov	rax, QWORD PTR [rbp-8]
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	QWORD PTR [rbp-48], rcx
	mov	QWORD PTR [rbp-56], r8
	jmp	.L273
.L277:
	mov	rax, QWORD PTR [rbp-40]
	shr	rax
	imul	rax, QWORD PTR [rbp-48]
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	mov	QWORD PTR [rbp-8], rax
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-24]
	mov	rcx, QWORD PTR [rbp-56]
	mov	rsi, rdx
	mov	rdi, rax
	call	rcx
	mov	DWORD PTR [rbp-12], eax
	cmp	DWORD PTR [rbp-12], 0
	jns	.L274
	mov	rax, QWORD PTR [rbp-40]
	shr	rax
	mov	QWORD PTR [rbp-40], rax
	jmp	.L273
.L274:
	cmp	DWORD PTR [rbp-12], 0
	jle	.L275
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-48]
	add	rax, rdx
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-40]
	shr	rax
	mov	rdx, QWORD PTR [rbp-40]
	sub	rdx, rax
	lea	rax, [rdx-1]
	mov	QWORD PTR [rbp-40], rax
	jmp	.L273
.L275:
	mov	rax, QWORD PTR [rbp-8]
	jmp	.L276
.L273:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L277
	mov	eax, 0
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR [rbp-40], rdi
	mov	QWORD PTR [rbp-48], rsi
	mov	QWORD PTR [rbp-56], rdx
	mov	QWORD PTR [rbp-64], rcx
	mov	QWORD PTR [rbp-72], r8
	mov	QWORD PTR [rbp-80], r9
	mov	rax, QWORD PTR [rbp-48]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-56]
	mov	DWORD PTR [rbp-12], eax
	jmp	.L279
.L283:
	mov	eax, DWORD PTR [rbp-12]
	sar	eax
	cdqe
	imul	rax, QWORD PTR [rbp-64]
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	add	rax, rdx
	mov	QWORD PTR [rbp-24], rax
	mov	rdx, QWORD PTR [rbp-80]
	mov	rcx, QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-40]
	mov	r8, QWORD PTR [rbp-72]
	mov	rsi, rcx
	mov	rdi, rax
	call	r8
	mov	DWORD PTR [rbp-28], eax
	cmp	DWORD PTR [rbp-28], 0
	jne	.L280
	mov	rax, QWORD PTR [rbp-24]
	jmp	.L281
.L280:
	cmp	DWORD PTR [rbp-28], 0
	jle	.L282
	mov	rdx, QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-64]
	add	rax, rdx
	mov	QWORD PTR [rbp-8], rax
	sub	DWORD PTR [rbp-12], 1
.L282:
	sar	DWORD PTR [rbp-12]
.L279:
	cmp	DWORD PTR [rbp-12], 0
	jne	.L283
	mov	eax, 0
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.globl	div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-4]
	cdq
	idiv	DWORD PTR [rbp-8]
	mov	edi, eax
	mov	eax, DWORD PTR [rbp-4]
	cdq
	idiv	DWORD PTR [rbp-8]
	mov	esi, edx
	mov	edx, edi
	movabs	rax, -4294967296
	and	rax, rcx
	or	rax, rdx
	mov	rcx, rax
	mov	eax, esi
	sal	rax, 32
	mov	edx, ecx
	or	rax, rdx
	mov	rcx, rax
	mov	rax, rcx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	cqo
	idiv	QWORD PTR [rbp-32]
	mov	rsi, rax
	mov	rax, QWORD PTR [rbp-24]
	cqo
	idiv	QWORD PTR [rbp-32]
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rax
	mov	rax, rcx
	mov	rdx, rbx
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.globl	labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	cqo
	idiv	QWORD PTR [rbp-32]
	mov	rsi, rax
	mov	rax, QWORD PTR [rbp-24]
	cqo
	idiv	QWORD PTR [rbp-32]
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rax
	mov	rax, rcx
	mov	rdx, rbx
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	cqo
	idiv	QWORD PTR [rbp-32]
	mov	rsi, rax
	mov	rax, QWORD PTR [rbp-24]
	cqo
	idiv	QWORD PTR [rbp-32]
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rax
	mov	rax, rcx
	mov	rdx, rbx
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	jmp	.L299
.L301:
	add	QWORD PTR [rbp-8], 4
.L299:
	mov	rax, QWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L300
	mov	rax, QWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR [rbp-12], eax
	jne	.L301
.L300:
	mov	rax, QWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L302
	mov	rax, QWORD PTR [rbp-8]
	jmp	.L304
.L302:
	mov	eax, 0
.L304:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	jmp	.L306
.L308:
	add	QWORD PTR [rbp-8], 4
	add	QWORD PTR [rbp-16], 4
.L306:
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L307
	mov	rax, QWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L307
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L308
.L307:
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jl	.L309
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	jmp	.L311
.L309:
	mov	eax, -1
.L311:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
.L313:
	mov	rdx, QWORD PTR [rbp-32]
	lea	rax, [rdx+4]
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-24]
	lea	rcx, [rax+4]
	mov	QWORD PTR [rbp-24], rcx
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L313
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	jmp	.L316
.L317:
	add	QWORD PTR [rbp-24], 4
.L316:
	mov	rax, QWORD PTR [rbp-24]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L317
	mov	rax, QWORD PTR [rbp-24]
	sub	rax, QWORD PTR [rbp-8]
	sar	rax, 2
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	QWORD PTR [rbp-24], rdx
	jmp	.L320
.L322:
	sub	QWORD PTR [rbp-24], 1
	add	QWORD PTR [rbp-8], 4
	add	QWORD PTR [rbp-16], 4
.L320:
	cmp	QWORD PTR [rbp-24], 0
	je	.L321
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L321
	mov	rax, QWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L321
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L322
.L321:
	cmp	QWORD PTR [rbp-24], 0
	je	.L323
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jl	.L324
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	jmp	.L327
.L324:
	mov	eax, -1
	jmp	.L327
.L323:
	mov	eax, 0
.L327:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	mov	QWORD PTR [rbp-24], rdx
	jmp	.L329
.L331:
	sub	QWORD PTR [rbp-24], 1
	add	QWORD PTR [rbp-8], 4
.L329:
	cmp	QWORD PTR [rbp-24], 0
	je	.L330
	mov	rax, QWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR [rbp-12], eax
	jne	.L331
.L330:
	cmp	QWORD PTR [rbp-24], 0
	je	.L332
	mov	rax, QWORD PTR [rbp-8]
	jmp	.L334
.L332:
	mov	eax, 0
.L334:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	QWORD PTR [rbp-24], rdx
	jmp	.L336
.L338:
	sub	QWORD PTR [rbp-24], 1
	add	QWORD PTR [rbp-8], 4
	add	QWORD PTR [rbp-16], 4
.L336:
	cmp	QWORD PTR [rbp-24], 0
	je	.L337
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	je	.L338
.L337:
	cmp	QWORD PTR [rbp-24], 0
	je	.L339
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jl	.L340
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	jmp	.L343
.L340:
	mov	eax, -1
	jmp	.L343
.L339:
	mov	eax, 0
.L343:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	jmp	.L345
.L346:
	mov	rdx, QWORD PTR [rbp-32]
	lea	rax, [rdx+4]
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-24]
	lea	rcx, [rax+4]
	mov	QWORD PTR [rbp-24], rcx
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
.L345:
	mov	rax, QWORD PTR [rbp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rbp-40], rdx
	test	rax, rax
	jne	.L346
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-24]
	cmp	rax, QWORD PTR [rbp-32]
	jne	.L349
	mov	rax, QWORD PTR [rbp-24]
	jmp	.L350
.L349:
	mov	rdx, QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-32]
	sub	rdx, rax
	mov	rax, QWORD PTR [rbp-40]
	sal	rax, 2
	cmp	rdx, rax
	jnb	.L355
	jmp	.L352
.L353:
	mov	rax, QWORD PTR [rbp-40]
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	mov	rdx, QWORD PTR [rbp-40]
	lea	rcx, [0+rdx*4]
	mov	rdx, QWORD PTR [rbp-24]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
.L352:
	mov	rax, QWORD PTR [rbp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rbp-40], rdx
	test	rax, rax
	jne	.L353
	jmp	.L354
.L356:
	mov	rdx, QWORD PTR [rbp-32]
	lea	rax, [rdx+4]
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-24]
	lea	rcx, [rax+4]
	mov	QWORD PTR [rbp-24], rcx
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
.L355:
	mov	rax, QWORD PTR [rbp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rbp-40], rdx
	test	rax, rax
	jne	.L356
.L354:
	mov	rax, QWORD PTR [rbp-8]
.L350:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-28], esi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	jmp	.L358
.L359:
	mov	rax, QWORD PTR [rbp-24]
	lea	rdx, [rax+4]
	mov	QWORD PTR [rbp-24], rdx
	mov	edx, DWORD PTR [rbp-28]
	mov	DWORD PTR [rax], edx
.L358:
	mov	rax, QWORD PTR [rbp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rbp-40], rdx
	test	rax, rax
	jne	.L359
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-8]
	cmp	rax, QWORD PTR [rbp-16]
	jnb	.L362
	mov	rax, QWORD PTR [rbp-40]
	add	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-40]
	add	QWORD PTR [rbp-16], rax
	jmp	.L363
.L364:
	sub	QWORD PTR [rbp-8], 1
	sub	QWORD PTR [rbp-16], 1
	mov	rax, QWORD PTR [rbp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rbp-40], 1
.L363:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L364
	jmp	.L361
.L362:
	mov	rax, QWORD PTR [rbp-8]
	cmp	rax, QWORD PTR [rbp-16]
	je	.L361
	jmp	.L366
.L367:
	mov	rdx, QWORD PTR [rbp-8]
	lea	rax, [rdx+1]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-16]
	lea	rcx, [rax+1]
	mov	QWORD PTR [rbp-16], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rbp-40], 1
.L366:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L367
.L361:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	mov	eax, DWORD PTR [rbp-12]
	mov	rdx, QWORD PTR [rbp-8]
	mov	ecx, eax
	rol	rdx, cl
	mov	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	mov	eax, DWORD PTR [rbp-12]
	mov	rdx, QWORD PTR [rbp-8]
	mov	ecx, eax
	ror	rdx, cl
	mov	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rbp-4]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rbp-4]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	mov	eax, DWORD PTR [rbp-12]
	mov	rdx, QWORD PTR [rbp-8]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	eax, DWORD PTR [rbp-12]
	mov	edx, 64
	sub	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	mov	ecx, edx
	shr	rax, cl
	or	rax, rsi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	mov	eax, DWORD PTR [rbp-12]
	mov	rdx, QWORD PTR [rbp-8]
	mov	rsi, rdx
	mov	ecx, eax
	shr	rsi, cl
	mov	eax, DWORD PTR [rbp-12]
	mov	edx, 64
	sub	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	mov	ecx, edx
	sal	rax, cl
	or	rax, rsi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	DWORD PTR [rbp-8], esi
	mov	WORD PTR [rbp-4], ax
	movzx	edx, WORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, WORD PTR [rbp-4]
	mov	eax, 16
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	DWORD PTR [rbp-8], esi
	mov	WORD PTR [rbp-4], ax
	movzx	edx, WORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, WORD PTR [rbp-4]
	mov	eax, 16
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, esi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	DWORD PTR [rbp-8], esi
	mov	BYTE PTR [rbp-4], al
	movzx	edx, BYTE PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, BYTE PTR [rbp-4]
	mov	eax, 8
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	DWORD PTR [rbp-8], esi
	mov	BYTE PTR [rbp-4], al
	movzx	edx, BYTE PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, BYTE PTR [rbp-4]
	mov	eax, 8
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, esi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	WORD PTR [rbp-20], ax
	mov	QWORD PTR [rbp-8], 255
	movzx	edx, WORD PTR [rbp-20]
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 8
	and	rax, rdx
	shr	rax, 8
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	and	ax, WORD PTR [rbp-20]
	sal	eax, 8
	or	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	QWORD PTR [rbp-8], 255
	mov	edx, DWORD PTR [rbp-20]
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 24
	and	rax, rdx
	shr	rax, 24
	mov	ecx, eax
	mov	edx, DWORD PTR [rbp-20]
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 16
	and	rax, rdx
	shr	rax, 8
	or	ecx, eax
	mov	edx, ecx
	mov	rax, QWORD PTR [rbp-8]
	sal	eax, 8
	and	eax, DWORD PTR [rbp-20]
	sal	eax, 8
	or	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	and	eax, DWORD PTR [rbp-20]
	sal	eax, 24
	or	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-8], 255
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 56
	and	rax, QWORD PTR [rbp-24]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 48
	and	rax, QWORD PTR [rbp-24]
	shr	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 40
	and	rax, QWORD PTR [rbp-24]
	shr	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 32
	and	rax, QWORD PTR [rbp-24]
	shr	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 24
	and	rax, QWORD PTR [rbp-24]
	sal	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 16
	and	rax, QWORD PTR [rbp-24]
	sal	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 8
	and	rax, QWORD PTR [rbp-24]
	sal	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-24]
	and	rax, QWORD PTR [rbp-8]
	sal	rax, 56
	or	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-4], 0
	jmp	.L396
.L399:
	mov	edx, DWORD PTR [rbp-20]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L397
	mov	eax, DWORD PTR [rbp-4]
	add	eax, 1
	jmp	.L398
.L397:
	add	DWORD PTR [rbp-4], 1
.L396:
	cmp	DWORD PTR [rbp-4], 31
	jbe	.L399
	mov	eax, 0
.L398:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	eax, edi
	test	eax, eax
	jne	.L401
	mov	eax, 0
	jmp	.L402
.L401:
	mov	ebx, 1
	jmp	.L403
.L404:
	sar	eax
	add	ebx, 1
.L403:
	mov	edx, eax
	and	edx, 1
	je	.L404
	mov	eax, ebx
.L402:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-4], xmm0
	movss	xmm0, DWORD PTR .LC3[rip]
	comiss	xmm0, DWORD PTR [rbp-4]
	ja	.L406
	movss	xmm0, DWORD PTR [rbp-4]
	comiss	xmm0, DWORD PTR .LC4[rip]
	jbe	.L411
.L406:
	mov	eax, 1
	jmp	.L410
.L411:
	mov	eax, 0
.L410:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-8], xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, QWORD PTR [rbp-8]
	ja	.L413
	movsd	xmm0, QWORD PTR [rbp-8]
	comisd	xmm0, QWORD PTR .LC6[rip]
	jbe	.L418
.L413:
	mov	eax, 1
	jmp	.L417
.L418:
	mov	eax, 0
.L417:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L420
	fld	TBYTE PTR .LC8[rip]
	fld	TBYTE PTR [rbp+16]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L425
.L420:
	mov	eax, 1
	jmp	.L424
.L425:
	mov	eax, 0
.L424:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	DWORD PTR [rbp-12], esi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR [rbp-12]
	movsd	QWORD PTR [rbp-24], xmm0
	fld	QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-8]
	fstp	TBYTE PTR [rax]
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-20], xmm0
	mov	DWORD PTR [rbp-24], edi
	movss	xmm0, DWORD PTR [rbp-20]
	ucomiss	xmm0, DWORD PTR [rbp-20]
	jp	.L428
	movss	xmm0, DWORD PTR [rbp-20]
	addss	xmm0, xmm0
	ucomiss	xmm0, DWORD PTR [rbp-20]
	jp	.L436
	ucomiss	xmm0, DWORD PTR [rbp-20]
	je	.L428
.L436:
	cmp	DWORD PTR [rbp-24], 0
	jns	.L430
	movss	xmm0, DWORD PTR .LC9[rip]
	jmp	.L431
.L430:
	movss	xmm0, DWORD PTR .LC10[rip]
.L431:
	movss	DWORD PTR [rbp-4], xmm0
.L434:
	mov	eax, DWORD PTR [rbp-24]
	and	eax, 1
	je	.L432
	movss	xmm0, DWORD PTR [rbp-20]
	mulss	xmm0, DWORD PTR [rbp-4]
	movss	DWORD PTR [rbp-20], xmm0
.L432:
	mov	eax, DWORD PTR [rbp-24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rbp-24], eax
	cmp	DWORD PTR [rbp-24], 0
	je	.L428
	movss	xmm0, DWORD PTR [rbp-4]
	mulss	xmm0, xmm0
	movss	DWORD PTR [rbp-4], xmm0
	jmp	.L434
.L428:
	movss	xmm0, DWORD PTR [rbp-20]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-24], xmm0
	mov	DWORD PTR [rbp-28], edi
	movsd	xmm0, QWORD PTR [rbp-24]
	ucomisd	xmm0, QWORD PTR [rbp-24]
	jp	.L439
	movsd	xmm0, QWORD PTR [rbp-24]
	addsd	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR [rbp-24]
	jp	.L447
	ucomisd	xmm0, QWORD PTR [rbp-24]
	je	.L439
.L447:
	cmp	DWORD PTR [rbp-28], 0
	jns	.L441
	movsd	xmm0, QWORD PTR .LC11[rip]
	jmp	.L442
.L441:
	movsd	xmm0, QWORD PTR .LC12[rip]
.L442:
	movsd	QWORD PTR [rbp-8], xmm0
.L445:
	mov	eax, DWORD PTR [rbp-28]
	and	eax, 1
	je	.L443
	movsd	xmm0, QWORD PTR [rbp-24]
	mulsd	xmm0, QWORD PTR [rbp-8]
	movsd	QWORD PTR [rbp-24], xmm0
.L443:
	mov	eax, DWORD PTR [rbp-28]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rbp-28], eax
	cmp	DWORD PTR [rbp-28], 0
	je	.L439
	movsd	xmm0, QWORD PTR [rbp-8]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR [rbp-8], xmm0
	jmp	.L445
.L439:
	movsd	xmm0, QWORD PTR [rbp-24]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR [rbp+16]
	fucomip	st, st(1)
	fstp	st(0)
	jp	.L450
	fld	TBYTE PTR [rbp+16]
	fadd	st, st(0)
	fld	TBYTE PTR [rbp+16]
	fucomip	st, st(1)
	jp	.L460
	fld	TBYTE PTR [rbp+16]
	fucomip	st, st(1)
	fstp	st(0)
	je	.L450
	jmp	.L458
.L460:
	fstp	st(0)
.L458:
	cmp	DWORD PTR [rbp-20], 0
	jns	.L452
	fld	TBYTE PTR .LC13[rip]
	jmp	.L453
.L452:
	fld	TBYTE PTR .LC14[rip]
.L453:
	fstp	TBYTE PTR [rbp-16]
.L456:
	mov	eax, DWORD PTR [rbp-20]
	and	eax, 1
	je	.L454
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR [rbp-16]
	fmulp	st(1), st
	fstp	TBYTE PTR [rbp+16]
.L454:
	mov	eax, DWORD PTR [rbp-20]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rbp-20], eax
	cmp	DWORD PTR [rbp-20], 0
	je	.L450
	fld	TBYTE PTR [rbp-16]
	fmul	st, st(0)
	fstp	TBYTE PTR [rbp-16]
	jmp	.L456
.L450:
	fld	TBYTE PTR [rbp+16]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-16], rax
	jmp	.L462
.L463:
	mov	rax, QWORD PTR [rbp-8]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rbp-8], rdx
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rbp-16], rdx
	movzx	edx, BYTE PTR [rax]
	xor	edx, ecx
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rbp-40], 1
.L462:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L463
	mov	rax, QWORD PTR [rbp-24]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 40
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	rdi, rax
	call	strlen
	mov	rdx, QWORD PTR [rbp-24]
	add	rax, rdx
	mov	QWORD PTR [rbp-8], rax
	jmp	.L466
.L468:
	add	QWORD PTR [rbp-32], 1
	add	QWORD PTR [rbp-8], 1
	sub	QWORD PTR [rbp-40], 1
.L466:
	cmp	QWORD PTR [rbp-40], 0
	je	.L467
	mov	rax, QWORD PTR [rbp-32]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L468
.L467:
	cmp	QWORD PTR [rbp-40], 0
	jne	.L469
	mov	rax, QWORD PTR [rbp-8]
	mov	BYTE PTR [rax], 0
.L469:
	mov	rax, QWORD PTR [rbp-24]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-8], 0
	jmp	.L472
.L477:
	add	QWORD PTR [rbp-8], 1
.L472:
	mov	rax, QWORD PTR [rbp-8]
	cmp	rax, QWORD PTR [rbp-32]
	jnb	.L473
	mov	rdx, QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-8]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L477
.L473:
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	jmp	.L479
.L483:
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-8], rax
	jmp	.L480
.L482:
	mov	rax, QWORD PTR [rbp-8]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rbp-8], rdx
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L480
	mov	rax, QWORD PTR [rbp-24]
	jmp	.L481
.L480:
	mov	rax, QWORD PTR [rbp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L482
	add	QWORD PTR [rbp-24], 1
.L479:
	mov	rax, QWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L483
	mov	eax, 0
.L481:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	DWORD PTR [rbp-20], esi
	mov	QWORD PTR [rbp-8], 0
.L486:
	movzx	edx, BYTE PTR [rax]
	movsx	edx, dl
	cmp	DWORD PTR [rbp-20], edx
	jne	.L485
	mov	QWORD PTR [rbp-8], rax
.L485:
	mov	rdx, rax
	lea	rax, [rdx+1]
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	jne	.L486
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	rdi, rax
	call	strlen
	mov	QWORD PTR [rbp-16], rax
	cmp	QWORD PTR [rbp-16], 0
	jne	.L491
	mov	rax, QWORD PTR [rbp-24]
	jmp	.L490
.L493:
	mov	rdx, QWORD PTR [rbp-16]
	mov	rcx, QWORD PTR [rbp-32]
	mov	rax, QWORD PTR [rbp-8]
	mov	rsi, rcx
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	jne	.L492
	mov	rax, QWORD PTR [rbp-8]
	jmp	.L490
.L492:
	add	QWORD PTR [rbp-8], 1
.L491:
	mov	rax, QWORD PTR [rbp-32]
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	rax, QWORD PTR [rbp-8]
	mov	esi, edx
	mov	rdi, rax
	call	strchr
	mov	QWORD PTR [rbp-8], rax
	cmp	QWORD PTR [rbp-8], 0
	jne	.L493
	mov	eax, 0
.L490:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-8], xmm0
	movsd	QWORD PTR [rbp-16], xmm1
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR [rbp-8]
	jbe	.L495
	movsd	xmm0, QWORD PTR [rbp-16]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	ja	.L497
.L495:
	movsd	xmm0, QWORD PTR [rbp-8]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L498
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR [rbp-16]
	jbe	.L498
.L497:
	movsd	xmm0, QWORD PTR [rbp-8]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	jmp	.L501
.L498:
	movsd	xmm0, QWORD PTR [rbp-8]
.L501:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	QWORD PTR [rbp-48], rcx
	mov	rax, QWORD PTR [rbp-32]
	sub	rax, QWORD PTR [rbp-48]
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rdx
	mov	QWORD PTR [rbp-16], rax
	cmp	QWORD PTR [rbp-48], 0
	jne	.L505
	mov	rax, QWORD PTR [rbp-24]
	jmp	.L506
.L505:
	mov	rax, QWORD PTR [rbp-32]
	cmp	rax, QWORD PTR [rbp-48]
	setb	al
	movzx	eax, al
	test	rax, rax
	je	.L507
	mov	eax, 0
	jmp	.L506
.L507:
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	jmp	.L508
.L510:
	mov	rax, QWORD PTR [rbp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rbp-40]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L509
	mov	rax, QWORD PTR [rbp-48]
	lea	rdx, [rax-1]
	mov	rax, QWORD PTR [rbp-40]
	lea	rcx, [rax+1]
	mov	rax, QWORD PTR [rbp-8]
	add	rax, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	memcmp
	test	eax, eax
	jne	.L509
	mov	rax, QWORD PTR [rbp-8]
	jmp	.L506
.L509:
	add	QWORD PTR [rbp-8], 1
.L508:
	mov	rax, QWORD PTR [rbp-8]
	cmp	QWORD PTR [rbp-16], rax
	jnb	.L510
	mov	eax, 0
.L506:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 24
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	QWORD PTR [rbp-24], rdx
	mov	rdx, QWORD PTR [rbp-24]
	mov	rcx, QWORD PTR [rbp-16]
	mov	rax, QWORD PTR [rbp-8]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy
	mov	rdx, QWORD PTR [rbp-24]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-24], xmm0
	mov	QWORD PTR [rbp-32], rdi
	mov	DWORD PTR [rbp-8], 0
	mov	DWORD PTR [rbp-4], 0
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR [rbp-24]
	jbe	.L514
	movsd	xmm0, QWORD PTR [rbp-24]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR [rbp-24], xmm0
	mov	DWORD PTR [rbp-4], 1
.L514:
	movsd	xmm0, QWORD PTR [rbp-24]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jb	.L531
	jmp	.L518
.L519:
	add	DWORD PTR [rbp-8], 1
	movsd	xmm0, QWORD PTR [rbp-24]
	movsd	xmm1, QWORD PTR .LC12[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR [rbp-24], xmm0
.L518:
	movsd	xmm0, QWORD PTR [rbp-24]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jnb	.L519
	jmp	.L520
.L531:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR [rbp-24]
	jbe	.L520
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR [rbp-24]
	jp	.L523
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR [rbp-24]
	je	.L520
	jmp	.L523
.L524:
	sub	DWORD PTR [rbp-8], 1
	movsd	xmm0, QWORD PTR [rbp-24]
	addsd	xmm0, xmm0
	movsd	QWORD PTR [rbp-24], xmm0
.L523:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR [rbp-24]
	ja	.L524
.L520:
	mov	rax, QWORD PTR [rbp-32]
	mov	edx, DWORD PTR [rbp-8]
	mov	DWORD PTR [rax], edx
	cmp	DWORD PTR [rbp-4], 0
	je	.L525
	movsd	xmm0, QWORD PTR [rbp-24]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR [rbp-24], xmm0
.L525:
	movsd	xmm0, QWORD PTR [rbp-24]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-8], 0
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-16], rax
	jmp	.L533
.L535:
	mov	rax, QWORD PTR [rbp-16]
	and	eax, 1
	je	.L534
	mov	rax, QWORD PTR [rbp-32]
	add	QWORD PTR [rbp-8], rax
.L534:
	sal	QWORD PTR [rbp-32]
	shr	QWORD PTR [rbp-16]
.L533:
	cmp	QWORD PTR [rbp-16], 0
	jne	.L535
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-24], esi
	mov	QWORD PTR [rbp-32], rdx
	mov	DWORD PTR [rbp-4], 1
	mov	DWORD PTR [rbp-8], 0
	jmp	.L538
.L540:
	sal	DWORD PTR [rbp-24]
	sal	DWORD PTR [rbp-4]
.L538:
	mov	eax, DWORD PTR [rbp-24]
	cmp	eax, DWORD PTR [rbp-20]
	jnb	.L541
	cmp	DWORD PTR [rbp-4], 0
	je	.L541
	mov	eax, DWORD PTR [rbp-24]
	test	eax, eax
	jns	.L540
	jmp	.L541
.L543:
	mov	eax, DWORD PTR [rbp-20]
	cmp	eax, DWORD PTR [rbp-24]
	jb	.L542
	mov	eax, DWORD PTR [rbp-24]
	sub	DWORD PTR [rbp-20], eax
	mov	eax, DWORD PTR [rbp-4]
	or	DWORD PTR [rbp-8], eax
.L542:
	shr	DWORD PTR [rbp-4]
	shr	DWORD PTR [rbp-24]
.L541:
	cmp	DWORD PTR [rbp-4], 0
	jne	.L543
	cmp	QWORD PTR [rbp-32], 0
	je	.L544
	mov	eax, DWORD PTR [rbp-20]
	jmp	.L545
.L544:
	mov	eax, DWORD PTR [rbp-8]
.L545:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	BYTE PTR [rbp-20], al
	cmp	BYTE PTR [rbp-20], 0
	jns	.L547
	not	BYTE PTR [rbp-20]
.L547:
	cmp	BYTE PTR [rbp-20], 0
	jne	.L548
	mov	eax, 7
	jmp	.L549
.L548:
	movsx	eax, BYTE PTR [rbp-20]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 1
.L549:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	cmp	QWORD PTR [rbp-24], 0
	jns	.L551
	not	QWORD PTR [rbp-24]
.L551:
	cmp	QWORD PTR [rbp-24], 0
	jne	.L552
	mov	eax, 63
	jmp	.L553
.L552:
	mov	rax, QWORD PTR [rbp-24]
	bsr	rax, rax
	xor	rax, 63
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 1
.L553:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-24], esi
	mov	DWORD PTR [rbp-4], 0
	jmp	.L555
.L557:
	mov	eax, DWORD PTR [rbp-20]
	and	eax, 1
	je	.L556
	mov	eax, DWORD PTR [rbp-24]
	add	DWORD PTR [rbp-4], eax
.L556:
	shr	DWORD PTR [rbp-20]
	sal	DWORD PTR [rbp-24]
.L555:
	cmp	DWORD PTR [rbp-20], 0
	jne	.L557
	mov	eax, DWORD PTR [rbp-4]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-40], rdi
	mov	QWORD PTR [rbp-48], rsi
	mov	DWORD PTR [rbp-52], edx
	mov	eax, DWORD PTR [rbp-52]
	shr	eax, 3
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-52]
	and	eax, -8
	mov	DWORD PTR [rbp-8], eax
	mov	rax, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-24], rax
	mov	rax, QWORD PTR [rbp-48]
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-24]
	cmp	rax, QWORD PTR [rbp-32]
	jb	.L560
	mov	edx, DWORD PTR [rbp-52]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	cmp	rax, QWORD PTR [rbp-24]
	jnb	.L567
.L560:
	mov	DWORD PTR [rbp-4], 0
	jmp	.L562
.L563:
	mov	eax, DWORD PTR [rbp-4]
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-48]
	add	rax, rdx
	mov	edx, DWORD PTR [rbp-4]
	lea	rcx, [0+rdx*8]
	mov	rdx, QWORD PTR [rbp-40]
	add	rdx, rcx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rdx], rax
	add	DWORD PTR [rbp-4], 1
.L562:
	mov	eax, DWORD PTR [rbp-4]
	cmp	eax, DWORD PTR [rbp-12]
	jb	.L563
	jmp	.L564
.L565:
	mov	edx, DWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rbp-8]
	mov	rdx, QWORD PTR [rbp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR [rbp-8], 1
.L564:
	mov	eax, DWORD PTR [rbp-52]
	cmp	DWORD PTR [rbp-8], eax
	jb	.L565
	jmp	.L566
.L568:
	mov	edx, DWORD PTR [rbp-52]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rbp-52]
	mov	rdx, QWORD PTR [rbp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L567:
	mov	eax, DWORD PTR [rbp-52]
	lea	edx, [rax-1]
	mov	DWORD PTR [rbp-52], edx
	test	eax, eax
	jne	.L568
.L566:
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-40], rdi
	mov	QWORD PTR [rbp-48], rsi
	mov	DWORD PTR [rbp-52], edx
	mov	eax, DWORD PTR [rbp-52]
	shr	eax
	mov	DWORD PTR [rbp-8], eax
	mov	rax, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-48]
	mov	QWORD PTR [rbp-24], rax
	mov	rax, QWORD PTR [rbp-16]
	cmp	rax, QWORD PTR [rbp-24]
	jb	.L570
	mov	edx, DWORD PTR [rbp-52]
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rdx
	cmp	rax, QWORD PTR [rbp-16]
	jnb	.L576
.L570:
	mov	DWORD PTR [rbp-4], 0
	jmp	.L572
.L573:
	mov	eax, DWORD PTR [rbp-4]
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR [rbp-48]
	add	rax, rdx
	mov	edx, DWORD PTR [rbp-4]
	lea	rcx, [rdx+rdx]
	mov	rdx, QWORD PTR [rbp-40]
	add	rdx, rcx
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR [rdx], ax
	add	DWORD PTR [rbp-4], 1
.L572:
	mov	eax, DWORD PTR [rbp-4]
	cmp	eax, DWORD PTR [rbp-8]
	jb	.L573
	mov	eax, DWORD PTR [rbp-52]
	and	eax, 1
	je	.L575
	mov	eax, DWORD PTR [rbp-52]
	sub	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rdx
	mov	edx, DWORD PTR [rbp-52]
	sub	edx, 1
	mov	ecx, edx
	mov	rdx, QWORD PTR [rbp-16]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	jmp	.L575
.L577:
	mov	edx, DWORD PTR [rbp-52]
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rdx
	mov	ecx, DWORD PTR [rbp-52]
	mov	rdx, QWORD PTR [rbp-16]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L576:
	mov	eax, DWORD PTR [rbp-52]
	lea	edx, [rax-1]
	mov	DWORD PTR [rbp-52], edx
	test	eax, eax
	jne	.L577
.L575:
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-40], rdi
	mov	QWORD PTR [rbp-48], rsi
	mov	DWORD PTR [rbp-52], edx
	mov	eax, DWORD PTR [rbp-52]
	shr	eax, 2
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-52]
	and	eax, -4
	mov	DWORD PTR [rbp-8], eax
	mov	rax, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-24], rax
	mov	rax, QWORD PTR [rbp-48]
	mov	QWORD PTR [rbp-32], rax
	mov	rax, QWORD PTR [rbp-24]
	cmp	rax, QWORD PTR [rbp-32]
	jb	.L579
	mov	edx, DWORD PTR [rbp-52]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	cmp	rax, QWORD PTR [rbp-24]
	jnb	.L586
.L579:
	mov	DWORD PTR [rbp-4], 0
	jmp	.L581
.L582:
	mov	eax, DWORD PTR [rbp-4]
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-48]
	add	rax, rdx
	mov	edx, DWORD PTR [rbp-4]
	lea	rcx, [0+rdx*4]
	mov	rdx, QWORD PTR [rbp-40]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR [rbp-4], 1
.L581:
	mov	eax, DWORD PTR [rbp-4]
	cmp	eax, DWORD PTR [rbp-12]
	jb	.L582
	jmp	.L583
.L584:
	mov	edx, DWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rbp-8]
	mov	rdx, QWORD PTR [rbp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR [rbp-8], 1
.L583:
	mov	eax, DWORD PTR [rbp-52]
	cmp	DWORD PTR [rbp-8], eax
	jb	.L584
	jmp	.L585
.L587:
	mov	edx, DWORD PTR [rbp-52]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rbp-52]
	mov	rdx, QWORD PTR [rbp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L586:
	mov	eax, DWORD PTR [rbp-52]
	lea	edx, [rax-1]
	mov	DWORD PTR [rbp-52], edx
	test	eax, eax
	jne	.L587
.L585:
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-4]
	cdq
	idiv	DWORD PTR [rbp-8]
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	test	rax, rax
	js	.L591
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.L593
.L591:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L593:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	test	rax, rax
	js	.L595
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.L597
.L595:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.L597:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	test	rax, rax
	js	.L599
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.L601
.L599:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L601:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	test	rax, rax
	js	.L603
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.L605
.L603:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.L605:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, 0
	div	DWORD PTR [rbp-8]
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	WORD PTR [rbp-20], ax
	mov	DWORD PTR [rbp-4], 0
	jmp	.L609
.L612:
	movzx	edx, WORD PTR [rbp-20]
	mov	eax, 15
	sub	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L611
	add	DWORD PTR [rbp-4], 1
.L609:
	cmp	DWORD PTR [rbp-4], 15
	jle	.L612
.L611:
	mov	eax, DWORD PTR [rbp-4]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	WORD PTR [rbp-20], ax
	mov	DWORD PTR [rbp-4], 0
	jmp	.L616
.L619:
	movzx	edx, WORD PTR [rbp-20]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L618
	add	DWORD PTR [rbp-4], 1
.L616:
	cmp	DWORD PTR [rbp-4], 15
	jle	.L619
.L618:
	mov	eax, DWORD PTR [rbp-4]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-4], xmm0
	movss	xmm0, DWORD PTR [rbp-4]
	comiss	xmm0, DWORD PTR .LC17[rip]
	jb	.L627
	movss	xmm0, DWORD PTR [rbp-4]
	movss	xmm1, DWORD PTR .LC17[rip]
	subss	xmm0, xmm1
	cvttss2si	rax, xmm0
	add	rax, 32768
	jmp	.L625
.L627:
	movss	xmm0, DWORD PTR [rbp-4]
	cvttss2si	rax, xmm0
.L625:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	WORD PTR [rbp-20], ax
	mov	DWORD PTR [rbp-8], 0
	mov	DWORD PTR [rbp-4], 0
	jmp	.L629
.L631:
	movzx	edx, WORD PTR [rbp-20]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L630
	add	DWORD PTR [rbp-8], 1
.L630:
	add	DWORD PTR [rbp-4], 1
.L629:
	cmp	DWORD PTR [rbp-4], 15
	jle	.L631
	mov	eax, DWORD PTR [rbp-8]
	and	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, edi
	mov	WORD PTR [rbp-20], ax
	mov	DWORD PTR [rbp-8], 0
	mov	DWORD PTR [rbp-4], 0
	jmp	.L634
.L636:
	movzx	edx, WORD PTR [rbp-20]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L635
	add	DWORD PTR [rbp-8], 1
.L635:
	add	DWORD PTR [rbp-4], 1
.L634:
	cmp	DWORD PTR [rbp-4], 15
	jle	.L636
	mov	eax, DWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-24], esi
	mov	DWORD PTR [rbp-4], 0
	jmp	.L639
.L641:
	mov	eax, DWORD PTR [rbp-20]
	and	eax, 1
	je	.L640
	mov	eax, DWORD PTR [rbp-24]
	add	DWORD PTR [rbp-4], eax
.L640:
	shr	DWORD PTR [rbp-20]
	sal	DWORD PTR [rbp-24]
.L639:
	cmp	DWORD PTR [rbp-20], 0
	jne	.L641
	mov	eax, DWORD PTR [rbp-4]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-24], esi
	mov	DWORD PTR [rbp-4], 0
	cmp	DWORD PTR [rbp-20], 0
	jne	.L646
	mov	eax, 0
	jmp	.L645
.L648:
	mov	eax, DWORD PTR [rbp-24]
	and	eax, 1
	je	.L647
	mov	eax, DWORD PTR [rbp-20]
	add	DWORD PTR [rbp-4], eax
.L647:
	sal	DWORD PTR [rbp-20]
	shr	DWORD PTR [rbp-24]
.L646:
	cmp	DWORD PTR [rbp-24], 0
	jne	.L648
	mov	eax, DWORD PTR [rbp-4]
.L645:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-24], esi
	mov	DWORD PTR [rbp-28], edx
	mov	DWORD PTR [rbp-4], 1
	mov	DWORD PTR [rbp-8], 0
	jmp	.L650
.L652:
	sal	DWORD PTR [rbp-24]
	sal	DWORD PTR [rbp-4]
.L650:
	mov	eax, DWORD PTR [rbp-24]
	cmp	eax, DWORD PTR [rbp-20]
	jnb	.L653
	cmp	DWORD PTR [rbp-4], 0
	je	.L653
	mov	eax, DWORD PTR [rbp-24]
	test	eax, eax
	jns	.L652
	jmp	.L653
.L655:
	mov	eax, DWORD PTR [rbp-20]
	cmp	eax, DWORD PTR [rbp-24]
	jb	.L654
	mov	eax, DWORD PTR [rbp-24]
	sub	DWORD PTR [rbp-20], eax
	mov	eax, DWORD PTR [rbp-4]
	or	DWORD PTR [rbp-8], eax
.L654:
	shr	DWORD PTR [rbp-4]
	shr	DWORD PTR [rbp-24]
.L653:
	cmp	DWORD PTR [rbp-4], 0
	jne	.L655
	cmp	DWORD PTR [rbp-28], 0
	je	.L656
	mov	eax, DWORD PTR [rbp-20]
	jmp	.L657
.L656:
	mov	eax, DWORD PTR [rbp-8]
.L657:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-4], xmm0
	movss	DWORD PTR [rbp-8], xmm1
	movss	xmm0, DWORD PTR [rbp-8]
	comiss	xmm0, DWORD PTR [rbp-4]
	jbe	.L666
	mov	eax, -1
	jmp	.L661
.L666:
	movss	xmm0, DWORD PTR [rbp-4]
	comiss	xmm0, DWORD PTR [rbp-8]
	jbe	.L667
	mov	eax, 1
	jmp	.L661
.L667:
	mov	eax, 0
.L661:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-8], xmm0
	movsd	QWORD PTR [rbp-16], xmm1
	movsd	xmm0, QWORD PTR [rbp-16]
	comisd	xmm0, QWORD PTR [rbp-8]
	jbe	.L676
	mov	eax, -1
	jmp	.L671
.L676:
	movsd	xmm0, QWORD PTR [rbp-8]
	comisd	xmm0, QWORD PTR [rbp-16]
	jbe	.L677
	mov	eax, 1
	jmp	.L671
.L677:
	mov	eax, 0
.L671:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	rax, QWORD PTR [rbp-8]
	imul	rax, QWORD PTR [rbp-16]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	rax, QWORD PTR [rbp-8]
	imul	rax, QWORD PTR [rbp-16]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-24], esi
	mov	DWORD PTR [rbp-8], 0
	mov	DWORD PTR [rbp-12], 0
	cmp	DWORD PTR [rbp-24], 0
	jns	.L683
	neg	DWORD PTR [rbp-24]
	mov	DWORD PTR [rbp-8], 1
.L683:
	mov	BYTE PTR [rbp-1], 0
	jmp	.L684
.L687:
	mov	eax, DWORD PTR [rbp-24]
	and	eax, 1
	je	.L685
	mov	eax, DWORD PTR [rbp-20]
	add	DWORD PTR [rbp-12], eax
.L685:
	sal	DWORD PTR [rbp-20]
	sar	DWORD PTR [rbp-24]
	movzx	eax, BYTE PTR [rbp-1]
	add	eax, 1
	mov	BYTE PTR [rbp-1], al
.L684:
	cmp	DWORD PTR [rbp-24], 0
	je	.L686
	movzx	eax, BYTE PTR [rbp-1]
	cmp	al, 31
	jbe	.L687
.L686:
	cmp	DWORD PTR [rbp-8], 0
	je	.L688
	mov	eax, DWORD PTR [rbp-12]
	neg	eax
	jmp	.L690
.L688:
	mov	eax, DWORD PTR [rbp-12]
.L690:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	DWORD PTR [rbp-4], 0
	cmp	QWORD PTR [rbp-24], 0
	jns	.L692
	neg	QWORD PTR [rbp-24]
	cmp	DWORD PTR [rbp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [rbp-4], eax
.L692:
	cmp	QWORD PTR [rbp-32], 0
	jns	.L693
	neg	QWORD PTR [rbp-32]
	cmp	DWORD PTR [rbp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [rbp-4], eax
.L693:
	mov	rax, QWORD PTR [rbp-32]
	mov	ecx, eax
	mov	rax, QWORD PTR [rbp-24]
	mov	edx, 0
	mov	esi, ecx
	mov	edi, eax
	call	__udivmodsi4
	mov	eax, eax
	mov	QWORD PTR [rbp-16], rax
	cmp	DWORD PTR [rbp-4], 0
	je	.L694
	neg	QWORD PTR [rbp-16]
.L694:
	mov	rax, QWORD PTR [rbp-16]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	DWORD PTR [rbp-4], 0
	cmp	QWORD PTR [rbp-24], 0
	jns	.L697
	neg	QWORD PTR [rbp-24]
	mov	DWORD PTR [rbp-4], 1
.L697:
	cmp	QWORD PTR [rbp-32], 0
	jns	.L698
	neg	QWORD PTR [rbp-32]
.L698:
	mov	rax, QWORD PTR [rbp-32]
	mov	ecx, eax
	mov	rax, QWORD PTR [rbp-24]
	mov	edx, 1
	mov	esi, ecx
	mov	edi, eax
	call	__udivmodsi4
	mov	eax, eax
	mov	QWORD PTR [rbp-16], rax
	cmp	DWORD PTR [rbp-4], 0
	je	.L699
	neg	QWORD PTR [rbp-16]
.L699:
	mov	rax, QWORD PTR [rbp-16]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	ecx, edi
	mov	eax, esi
	mov	DWORD PTR [rbp-28], edx
	mov	edx, ecx
	mov	WORD PTR [rbp-20], dx
	mov	WORD PTR [rbp-24], ax
	mov	WORD PTR [rbp-2], 1
	mov	WORD PTR [rbp-4], 0
	jmp	.L702
.L704:
	sal	WORD PTR [rbp-24]
	sal	WORD PTR [rbp-2]
.L702:
	movzx	eax, WORD PTR [rbp-24]
	cmp	ax, WORD PTR [rbp-20]
	jnb	.L705
	cmp	WORD PTR [rbp-2], 0
	je	.L705
	movzx	eax, WORD PTR [rbp-24]
	test	ax, ax
	jns	.L704
	jmp	.L705
.L707:
	movzx	eax, WORD PTR [rbp-20]
	cmp	ax, WORD PTR [rbp-24]
	jb	.L706
	movzx	eax, WORD PTR [rbp-24]
	sub	WORD PTR [rbp-20], ax
	movzx	eax, WORD PTR [rbp-2]
	or	WORD PTR [rbp-4], ax
.L706:
	shr	WORD PTR [rbp-2]
	shr	WORD PTR [rbp-24]
.L705:
	cmp	WORD PTR [rbp-2], 0
	jne	.L707
	cmp	DWORD PTR [rbp-28], 0
	je	.L708
	movzx	eax, WORD PTR [rbp-20]
	jmp	.L709
.L708:
	movzx	eax, WORD PTR [rbp-4]
.L709:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	DWORD PTR [rbp-36], edx
	mov	QWORD PTR [rbp-8], 1
	mov	QWORD PTR [rbp-16], 0
	jmp	.L711
.L713:
	sal	QWORD PTR [rbp-32]
	sal	QWORD PTR [rbp-8]
.L711:
	mov	rax, QWORD PTR [rbp-32]
	cmp	rax, QWORD PTR [rbp-24]
	jnb	.L714
	cmp	QWORD PTR [rbp-8], 0
	je	.L714
	mov	rax, QWORD PTR [rbp-32]
	and	eax, 2147483648
	je	.L713
	jmp	.L714
.L716:
	mov	rax, QWORD PTR [rbp-24]
	cmp	rax, QWORD PTR [rbp-32]
	jb	.L715
	mov	rax, QWORD PTR [rbp-32]
	sub	QWORD PTR [rbp-24], rax
	mov	rax, QWORD PTR [rbp-8]
	or	QWORD PTR [rbp-16], rax
.L715:
	shr	QWORD PTR [rbp-8]
	shr	QWORD PTR [rbp-32]
.L714:
	cmp	QWORD PTR [rbp-8], 0
	jne	.L716
	cmp	DWORD PTR [rbp-36], 0
	je	.L717
	mov	rax, QWORD PTR [rbp-24]
	jmp	.L718
.L717:
	mov	rax, QWORD PTR [rbp-16]
.L718:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-40], rdi
	mov	DWORD PTR [rbp-44], esi
	mov	DWORD PTR [rbp-4], 32
	mov	rax, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-16], rax
	mov	eax, DWORD PTR [rbp-44]
	and	eax, DWORD PTR [rbp-4]
	je	.L720
	mov	DWORD PTR [rbp-24], 0
	mov	edx, DWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rbp-44]
	sub	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-20], eax
	jmp	.L721
.L720:
	cmp	DWORD PTR [rbp-44], 0
	jne	.L722
	mov	rax, QWORD PTR [rbp-40]
	jmp	.L724
.L722:
	mov	edx, DWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rbp-44]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-24], eax
	mov	eax, DWORD PTR [rbp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-44]
	mov	esi, edx
	mov	ecx, eax
	sal	esi, cl
	mov	edx, DWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, DWORD PTR [rbp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	mov	DWORD PTR [rbp-20], eax
.L721:
	mov	rax, QWORD PTR [rbp-24]
.L724:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	rax, rdi
	mov	rcx, rax
	mov	ebx, 0
	mov	rbx, rsi
	mov	QWORD PTR [rbp-80], rcx
	mov	QWORD PTR [rbp-72], rbx
	mov	DWORD PTR [rbp-84], edx
	mov	DWORD PTR [rbp-20], 64
	mov	rax, QWORD PTR [rbp-80]
	mov	rdx, QWORD PTR [rbp-72]
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-40], rdx
	mov	eax, DWORD PTR [rbp-84]
	and	eax, DWORD PTR [rbp-20]
	je	.L726
	mov	QWORD PTR [rbp-64], 0
	mov	rdx, QWORD PTR [rbp-48]
	mov	eax, DWORD PTR [rbp-84]
	sub	eax, DWORD PTR [rbp-20]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-56], rax
	jmp	.L727
.L726:
	cmp	DWORD PTR [rbp-84], 0
	jne	.L728
	mov	rax, QWORD PTR [rbp-80]
	mov	rdx, QWORD PTR [rbp-72]
	jmp	.L730
.L728:
	mov	rdx, QWORD PTR [rbp-48]
	mov	eax, DWORD PTR [rbp-84]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-64], rax
	mov	rax, QWORD PTR [rbp-40]
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-84]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	rdx, QWORD PTR [rbp-48]
	mov	eax, DWORD PTR [rbp-20]
	sub	eax, DWORD PTR [rbp-84]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, rsi
	mov	QWORD PTR [rbp-56], rax
.L727:
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
.L730:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-40], rdi
	mov	DWORD PTR [rbp-44], esi
	mov	DWORD PTR [rbp-4], 32
	mov	rax, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-16], rax
	mov	eax, DWORD PTR [rbp-44]
	and	eax, DWORD PTR [rbp-4]
	je	.L732
	mov	edx, DWORD PTR [rbp-12]
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-20], eax
	mov	edx, DWORD PTR [rbp-12]
	mov	eax, DWORD PTR [rbp-44]
	sub	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-24], eax
	jmp	.L733
.L732:
	cmp	DWORD PTR [rbp-44], 0
	jne	.L734
	mov	rax, QWORD PTR [rbp-40]
	jmp	.L736
.L734:
	mov	edx, DWORD PTR [rbp-12]
	mov	eax, DWORD PTR [rbp-44]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-20], eax
	mov	eax, DWORD PTR [rbp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, DWORD PTR [rbp-44]
	mov	esi, edx
	mov	ecx, eax
	sal	esi, cl
	mov	edx, DWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rbp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	mov	DWORD PTR [rbp-24], eax
.L733:
	mov	rax, QWORD PTR [rbp-24]
.L736:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	rax, rdi
	mov	rcx, rax
	mov	ebx, 0
	mov	rbx, rsi
	mov	QWORD PTR [rbp-80], rcx
	mov	QWORD PTR [rbp-72], rbx
	mov	DWORD PTR [rbp-84], edx
	mov	DWORD PTR [rbp-20], 64
	mov	rax, QWORD PTR [rbp-80]
	mov	rdx, QWORD PTR [rbp-72]
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-40], rdx
	mov	eax, DWORD PTR [rbp-84]
	and	eax, DWORD PTR [rbp-20]
	je	.L738
	mov	rdx, QWORD PTR [rbp-40]
	mov	eax, DWORD PTR [rbp-20]
	sub	eax, 1
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-56], rax
	mov	rdx, QWORD PTR [rbp-40]
	mov	eax, DWORD PTR [rbp-84]
	sub	eax, DWORD PTR [rbp-20]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-64], rax
	jmp	.L739
.L738:
	cmp	DWORD PTR [rbp-84], 0
	jne	.L740
	mov	rax, QWORD PTR [rbp-80]
	mov	rdx, QWORD PTR [rbp-72]
	jmp	.L742
.L740:
	mov	rdx, QWORD PTR [rbp-40]
	mov	eax, DWORD PTR [rbp-84]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-56], rax
	mov	rax, QWORD PTR [rbp-40]
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-20]
	sub	eax, DWORD PTR [rbp-84]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	rdx, QWORD PTR [rbp-48]
	mov	eax, DWORD PTR [rbp-84]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, rsi
	mov	QWORD PTR [rbp-64], rax
.L739:
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
.L742:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	shr	rax, 40
	and	eax, 65280
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	shr	rax, 24
	and	eax, 16711680
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	shr	rax, 8
	and	eax, 4278190080
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 8
	mov	rcx, rax
	movabs	rax, 1095216660480
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 24
	mov	rcx, rax
	movabs	rax, 280375465082880
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 40
	mov	rcx, rax
	movabs	rax, 71776119061217280
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	sal	rax, 56
	or	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	sal	eax, 24
	or	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	eax, DWORD PTR [rbp-20]
	mov	DWORD PTR [rbp-4], eax
	cmp	DWORD PTR [rbp-4], 65535
	ja	.L748
	mov	eax, 16
	jmp	.L749
.L748:
	mov	eax, 0
.L749:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, 16
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	mov	eax, DWORD PTR [rbp-8]
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 65280
	jne	.L750
	mov	eax, 8
	jmp	.L751
.L750:
	mov	eax, 0
.L751:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, 8
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	mov	eax, DWORD PTR [rbp-8]
	add	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 240
	jne	.L752
	mov	eax, 4
	jmp	.L753
.L752:
	mov	eax, 0
.L753:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, 4
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	mov	eax, DWORD PTR [rbp-8]
	add	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 12
	jne	.L754
	mov	eax, 2
	jmp	.L755
.L754:
	mov	eax, 0
.L755:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, 2
	sub	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	mov	eax, DWORD PTR [rbp-8]
	add	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR [rbp-4]
	imul	edx, eax
	mov	eax, DWORD PTR [rbp-12]
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-48]
	mov	rdx, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-24]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR [rbp-8], rax
	mov	rdx, QWORD PTR [rbp-24]
	mov	rax, QWORD PTR [rbp-8]
	not	rax
	and	rax, rdx
	mov	rcx, rax
	mov	rdx, QWORD PTR [rbp-32]
	mov	rax, QWORD PTR [rbp-8]
	and	rax, rdx
	or	rax, rcx
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	and	eax, 64
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-12]
	cmp	edx, eax
	jge	.L760
	mov	eax, 0
	jmp	.L765
.L760:
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-12]
	cmp	edx, eax
	jle	.L762
	mov	eax, 2
	jmp	.L765
.L762:
	mov	edx, DWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rbp-16]
	cmp	edx, eax
	jnb	.L763
	mov	eax, 0
	jmp	.L765
.L763:
	mov	eax, DWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rbp-16]
	cmp	edx, eax
	jnb	.L764
	mov	eax, 2
	jmp	.L765
.L764:
	mov	eax, 1
.L765:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	rdx, QWORD PTR [rbp-16]
	mov	rax, QWORD PTR [rbp-8]
	mov	rsi, rdx
	mov	rdi, rax
	call	__cmpdi2
	sub	eax, 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	r8, rsi
	mov	rsi, rax
	mov	edi, 0
	mov	rdi, r8
	mov	QWORD PTR [rbp-48], rsi
	mov	QWORD PTR [rbp-40], rdi
	mov	QWORD PTR [rbp-64], rdx
	mov	QWORD PTR [rbp-56], rcx
	mov	rax, QWORD PTR [rbp-48]
	mov	rdx, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-16], rax
	mov	QWORD PTR [rbp-8], rdx
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-24]
	cmp	rdx, rax
	jge	.L769
	mov	eax, 0
	jmp	.L774
.L769:
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-24]
	cmp	rdx, rax
	jle	.L771
	mov	eax, 2
	jmp	.L774
.L771:
	mov	rdx, QWORD PTR [rbp-16]
	mov	rax, QWORD PTR [rbp-32]
	cmp	rdx, rax
	jnb	.L772
	mov	eax, 0
	jmp	.L774
.L772:
	mov	rax, QWORD PTR [rbp-16]
	mov	rdx, QWORD PTR [rbp-32]
	cmp	rdx, rax
	jnb	.L773
	mov	eax, 2
	jmp	.L774
.L773:
	mov	eax, 1
.L774:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	eax, DWORD PTR [rbp-20]
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	movzx	eax, ax
	test	eax, eax
	jne	.L776
	mov	eax, 16
	jmp	.L777
.L776:
	mov	eax, 0
.L777:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	mov	eax, DWORD PTR [rbp-8]
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	movzx	eax, al
	test	eax, eax
	jne	.L778
	mov	eax, 8
	jmp	.L779
.L778:
	mov	eax, 0
.L779:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	mov	eax, DWORD PTR [rbp-8]
	add	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 15
	jne	.L780
	mov	eax, 4
	jmp	.L781
.L780:
	mov	eax, 0
.L781:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	mov	eax, DWORD PTR [rbp-8]
	add	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 3
	jne	.L782
	mov	eax, 2
	jmp	.L783
.L782:
	mov	eax, 0
.L783:
	mov	DWORD PTR [rbp-8], eax
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, eax
	shr	DWORD PTR [rbp-4], cl
	and	DWORD PTR [rbp-4], 3
	mov	eax, DWORD PTR [rbp-8]
	add	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-4]
	not	eax
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, ecx
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR [rbp-12]
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-48]
	mov	rdx, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-32]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-24]
	and	rax, QWORD PTR [rbp-8]
	mov	rcx, rax
	mov	rdx, QWORD PTR [rbp-32]
	mov	rax, QWORD PTR [rbp-8]
	not	rax
	and	rax, rdx
	or	rax, rcx
	rep bsf	rax, rax
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	and	eax, 64
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-32]
	mov	rdx, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-16], rax
	mov	QWORD PTR [rbp-8], rdx
	mov	rax, QWORD PTR [rbp-16]
	test	rax, rax
	jne	.L788
	mov	rax, QWORD PTR [rbp-8]
	test	rax, rax
	jne	.L789
	mov	eax, 0
	jmp	.L791
.L789:
	mov	rax, QWORD PTR [rbp-8]
	rep bsf	rax, rax
	add	eax, 65
	jmp	.L791
.L788:
	mov	rax, QWORD PTR [rbp-16]
	rep bsf	rax, rax
	add	eax, 1
.L791:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-40], rdi
	mov	DWORD PTR [rbp-44], esi
	mov	DWORD PTR [rbp-4], 32
	mov	rax, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-16], rax
	mov	eax, DWORD PTR [rbp-44]
	and	eax, DWORD PTR [rbp-4]
	je	.L793
	mov	DWORD PTR [rbp-20], 0
	mov	edx, DWORD PTR [rbp-12]
	mov	eax, DWORD PTR [rbp-44]
	sub	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-24], eax
	jmp	.L794
.L793:
	cmp	DWORD PTR [rbp-44], 0
	jne	.L795
	mov	rax, QWORD PTR [rbp-40]
	jmp	.L797
.L795:
	mov	edx, DWORD PTR [rbp-12]
	mov	eax, DWORD PTR [rbp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-20], eax
	mov	edx, DWORD PTR [rbp-12]
	mov	eax, DWORD PTR [rbp-4]
	sub	eax, DWORD PTR [rbp-44]
	mov	esi, edx
	mov	ecx, eax
	sal	esi, cl
	mov	edx, DWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rbp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	mov	DWORD PTR [rbp-24], eax
.L794:
	mov	rax, QWORD PTR [rbp-24]
.L797:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	rax, rdi
	mov	rcx, rax
	mov	ebx, 0
	mov	rbx, rsi
	mov	QWORD PTR [rbp-80], rcx
	mov	QWORD PTR [rbp-72], rbx
	mov	DWORD PTR [rbp-84], edx
	mov	DWORD PTR [rbp-20], 64
	mov	rax, QWORD PTR [rbp-80]
	mov	rdx, QWORD PTR [rbp-72]
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-40], rdx
	mov	eax, DWORD PTR [rbp-84]
	and	eax, DWORD PTR [rbp-20]
	je	.L799
	mov	QWORD PTR [rbp-56], 0
	mov	rdx, QWORD PTR [rbp-40]
	mov	eax, DWORD PTR [rbp-84]
	sub	eax, DWORD PTR [rbp-20]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-64], rax
	jmp	.L800
.L799:
	cmp	DWORD PTR [rbp-84], 0
	jne	.L801
	mov	rax, QWORD PTR [rbp-80]
	mov	rdx, QWORD PTR [rbp-72]
	jmp	.L803
.L801:
	mov	rdx, QWORD PTR [rbp-40]
	mov	eax, DWORD PTR [rbp-84]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-56], rax
	mov	rdx, QWORD PTR [rbp-40]
	mov	eax, DWORD PTR [rbp-20]
	sub	eax, DWORD PTR [rbp-84]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	rdx, QWORD PTR [rbp-48]
	mov	eax, DWORD PTR [rbp-84]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, rsi
	mov	QWORD PTR [rbp-64], rax
.L800:
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
.L803:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-36], edi
	mov	DWORD PTR [rbp-40], esi
	mov	DWORD PTR [rbp-4], 16
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-8], eax
	mov	eax, DWORD PTR [rbp-36]
	and	eax, DWORD PTR [rbp-8]
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-40]
	and	eax, DWORD PTR [rbp-8]
	imul	eax, edx
	mov	DWORD PTR [rbp-24], eax
	mov	edx, DWORD PTR [rbp-24]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-24]
	and	eax, DWORD PTR [rbp-8]
	mov	DWORD PTR [rbp-24], eax
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, DWORD PTR [rbp-36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [rbp-40]
	and	eax, DWORD PTR [rbp-8]
	imul	eax, edx
	add	DWORD PTR [rbp-12], eax
	mov	edx, DWORD PTR [rbp-24]
	mov	eax, DWORD PTR [rbp-12]
	and	eax, DWORD PTR [rbp-8]
	mov	esi, eax
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sal	esi, cl
	mov	eax, esi
	add	eax, edx
	mov	DWORD PTR [rbp-24], eax
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, DWORD PTR [rbp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-20], eax
	mov	edx, DWORD PTR [rbp-24]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-24]
	and	eax, DWORD PTR [rbp-8]
	mov	DWORD PTR [rbp-24], eax
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, DWORD PTR [rbp-40]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [rbp-36]
	and	eax, DWORD PTR [rbp-8]
	imul	eax, edx
	add	DWORD PTR [rbp-12], eax
	mov	edx, DWORD PTR [rbp-24]
	mov	eax, DWORD PTR [rbp-12]
	and	eax, DWORD PTR [rbp-8]
	mov	esi, eax
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sal	esi, cl
	mov	eax, esi
	add	eax, edx
	mov	DWORD PTR [rbp-24], eax
	mov	eax, DWORD PTR [rbp-20]
	mov	esi, eax
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, DWORD PTR [rbp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	add	eax, esi
	mov	DWORD PTR [rbp-20], eax
	mov	eax, DWORD PTR [rbp-20]
	mov	edi, eax
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, DWORD PTR [rbp-36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [rbp-4]
	mov	esi, DWORD PTR [rbp-40]
	mov	ecx, eax
	shr	esi, cl
	mov	eax, esi
	imul	eax, edx
	add	eax, edi
	mov	DWORD PTR [rbp-20], eax
	mov	rax, QWORD PTR [rbp-24]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR [rbp-40], rdi
	mov	QWORD PTR [rbp-48], rsi
	mov	rax, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-48]
	mov	QWORD PTR [rbp-16], rax
	mov	edx, DWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rbp-8]
	mov	esi, edx
	mov	edi, eax
	call	__muldsi3
	mov	QWORD PTR [rbp-24], rax
	mov	eax, DWORD PTR [rbp-20]
	mov	esi, eax
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-16]
	imul	edx, eax
	mov	eax, DWORD PTR [rbp-8]
	mov	ecx, DWORD PTR [rbp-12]
	imul	eax, ecx
	add	eax, edx
	add	eax, esi
	mov	DWORD PTR [rbp-20], eax
	mov	rax, QWORD PTR [rbp-24]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-56], rdi
	mov	QWORD PTR [rbp-64], rsi
	mov	DWORD PTR [rbp-4], 32
	mov	eax, DWORD PTR [rbp-4]
	mov	rdx, -1
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-56]
	and	rax, QWORD PTR [rbp-16]
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-64]
	and	rax, QWORD PTR [rbp-16]
	imul	rax, rdx
	mov	QWORD PTR [rbp-48], rax
	mov	rdx, QWORD PTR [rbp-48]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-24], rax
	mov	rax, QWORD PTR [rbp-48]
	and	rax, QWORD PTR [rbp-16]
	mov	QWORD PTR [rbp-48], rax
	mov	eax, DWORD PTR [rbp-4]
	mov	rdx, QWORD PTR [rbp-56]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR [rbp-64]
	and	rax, QWORD PTR [rbp-16]
	imul	rax, rdx
	add	QWORD PTR [rbp-24], rax
	mov	rdx, QWORD PTR [rbp-48]
	mov	rax, QWORD PTR [rbp-24]
	and	rax, QWORD PTR [rbp-16]
	mov	rsi, rax
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sal	rsi, cl
	mov	rax, rsi
	add	rax, rdx
	mov	QWORD PTR [rbp-48], rax
	mov	eax, DWORD PTR [rbp-4]
	mov	rdx, QWORD PTR [rbp-24]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-40], rax
	mov	rdx, QWORD PTR [rbp-48]
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rbp-24], rax
	mov	rax, QWORD PTR [rbp-48]
	and	rax, QWORD PTR [rbp-16]
	mov	QWORD PTR [rbp-48], rax
	mov	eax, DWORD PTR [rbp-4]
	mov	rdx, QWORD PTR [rbp-64]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR [rbp-56]
	and	rax, QWORD PTR [rbp-16]
	imul	rax, rdx
	add	QWORD PTR [rbp-24], rax
	mov	rdx, QWORD PTR [rbp-48]
	mov	rax, QWORD PTR [rbp-24]
	and	rax, QWORD PTR [rbp-16]
	mov	rsi, rax
	mov	eax, DWORD PTR [rbp-4]
	mov	ecx, eax
	sal	rsi, cl
	mov	rax, rsi
	add	rax, rdx
	mov	QWORD PTR [rbp-48], rax
	mov	rax, QWORD PTR [rbp-40]
	mov	rsi, rax
	mov	eax, DWORD PTR [rbp-4]
	mov	rdx, QWORD PTR [rbp-24]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	add	rax, rsi
	mov	QWORD PTR [rbp-40], rax
	mov	rax, QWORD PTR [rbp-40]
	mov	rdi, rax
	mov	eax, DWORD PTR [rbp-4]
	mov	rdx, QWORD PTR [rbp-56]
	mov	ecx, eax
	shr	rdx, cl
	mov	eax, DWORD PTR [rbp-4]
	mov	rsi, QWORD PTR [rbp-64]
	mov	ecx, eax
	shr	rsi, cl
	mov	rax, rsi
	imul	rax, rdx
	add	rax, rdi
	mov	QWORD PTR [rbp-40], rax
	mov	rax, QWORD PTR [rbp-48]
	mov	rdx, QWORD PTR [rbp-40]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	rax, rdi
	mov	r8, rsi
	mov	rsi, rax
	mov	edi, 0
	mov	rdi, r8
	mov	QWORD PTR [rbp-64], rsi
	mov	QWORD PTR [rbp-56], rdi
	mov	QWORD PTR [rbp-80], rdx
	mov	QWORD PTR [rbp-72], rcx
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
	mov	QWORD PTR [rbp-16], rax
	mov	QWORD PTR [rbp-8], rdx
	mov	rax, QWORD PTR [rbp-80]
	mov	rdx, QWORD PTR [rbp-72]
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rdx, QWORD PTR [rbp-32]
	mov	rax, QWORD PTR [rbp-16]
	mov	rsi, rdx
	mov	rdi, rax
	call	__mulddi3
	mov	QWORD PTR [rbp-48], rax
	mov	QWORD PTR [rbp-40], rdx
	mov	rax, QWORD PTR [rbp-40]
	mov	rsi, rax
	mov	rax, QWORD PTR [rbp-8]
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-32]
	imul	rdx, rax
	mov	rax, QWORD PTR [rbp-16]
	mov	rcx, QWORD PTR [rbp-24]
	imul	rax, rcx
	add	rax, rdx
	add	rax, rsi
	mov	QWORD PTR [rbp-40], rax
	mov	rax, QWORD PTR [rbp-48]
	mov	rdx, QWORD PTR [rbp-40]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	neg	rax
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.globl	__negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rbp-16], rax
	mov	QWORD PTR [rbp-8], rdx
	mov	rax, QWORD PTR [rbp-16]
	mov	rdx, QWORD PTR [rbp-8]
	neg	rax
	adc	rdx, 0
	neg	rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-16], rax
	mov	eax, DWORD PTR [rbp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-16]
	xor	eax, edx
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 16
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 8
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 4
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rbp-64], rax
	mov	QWORD PTR [rbp-56], rdx
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-24]
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-32]
	xor	rax, rdx
	mov	QWORD PTR [rbp-40], rax
	mov	eax, DWORD PTR [rbp-36]
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-40]
	xor	eax, edx
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 16
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 8
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 4
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	eax, DWORD PTR [rbp-20]
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 16
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 8
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 4
	xor	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-8]
	shr	rax
	mov	rdx, rax
	movabs	rax, 6148914691236517205
	and	rax, rdx
	sub	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-8]
	shr	rax, 2
	mov	rdx, rax
	movabs	rax, 3689348814741910323
	and	rdx, rax
	movabs	rax, 3689348814741910323
	and	rax, QWORD PTR [rbp-8]
	add	rax, rdx
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-8]
	shr	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR [rbp-8]
	add	rdx, rax
	movabs	rax, 1085102592571150095
	and	rax, rdx
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-12]
	shr	eax, 16
	add	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-12]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-12]
	add	eax, edx
	and	eax, 127
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi
	mov	eax, DWORD PTR [rbp-20]
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax
	and	eax, 1431655765
	sub	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 16
	add	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	add	eax, edx
	and	eax, 63
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rbp-64], rax
	mov	QWORD PTR [rbp-56], rdx
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-32]
	mov	rdx, QWORD PTR [rbp-24]
	shrd	rax, rdx, 1
	shr	rdx
	movabs	rcx, 6148914691236517205
	mov	rbx, rcx
	and	rax, rcx
	and	rdx, rbx
	sub	QWORD PTR [rbp-32], rax
	sbb	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-32]
	mov	rdx, QWORD PTR [rbp-24]
	shrd	rax, rdx, 2
	shr	rdx, 2
	movabs	rcx, 3689348814741910323
	mov	rbx, rcx
	and	rcx, rax
	and	rbx, rdx
	movabs	rax, 3689348814741910323
	mov	rdx, rax
	and	rax, QWORD PTR [rbp-32]
	and	rdx, QWORD PTR [rbp-24]
	add	rax, rcx
	adc	rdx, rbx
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-32]
	mov	rdx, QWORD PTR [rbp-24]
	shrd	rax, rdx, 4
	shr	rdx, 4
	mov	rcx, QWORD PTR [rbp-32]
	mov	rbx, QWORD PTR [rbp-24]
	add	rax, rcx
	adc	rdx, rbx
	movabs	rcx, 1085102592571150095
	mov	rbx, rcx
	and	rax, rcx
	and	rdx, rbx
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rcx, QWORD PTR [rbp-32]
	mov	rax, QWORD PTR [rbp-32]
	mov	rdx, QWORD PTR [rbp-24]
	mov	rax, rdx
	xor	edx, edx
	add	rax, rcx
	mov	QWORD PTR [rbp-40], rax
	mov	rax, QWORD PTR [rbp-40]
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-40]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR [rbp-44], eax
	mov	eax, DWORD PTR [rbp-44]
	shr	eax, 16
	add	DWORD PTR [rbp-44], eax
	mov	eax, DWORD PTR [rbp-44]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-44]
	add	eax, edx
	movzx	eax, al
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-24], xmm0
	mov	DWORD PTR [rbp-28], edi
	mov	eax, DWORD PTR [rbp-28]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [rbp-12], eax
	movsd	xmm0, QWORD PTR .LC16[rip]
	movsd	QWORD PTR [rbp-8], xmm0
.L832:
	mov	eax, DWORD PTR [rbp-28]
	and	eax, 1
	je	.L829
	movsd	xmm0, QWORD PTR [rbp-8]
	mulsd	xmm0, QWORD PTR [rbp-24]
	movsd	QWORD PTR [rbp-8], xmm0
.L829:
	mov	eax, DWORD PTR [rbp-28]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rbp-28], eax
	cmp	DWORD PTR [rbp-28], 0
	je	.L836
	movsd	xmm0, QWORD PTR [rbp-24]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR [rbp-24], xmm0
	jmp	.L832
.L836:
	cmp	DWORD PTR [rbp-12], 0
	je	.L833
	movsd	xmm0, QWORD PTR .LC16[rip]
	divsd	xmm0, QWORD PTR [rbp-8]
	jmp	.L835
.L833:
	movsd	xmm0, QWORD PTR [rbp-8]
.L835:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-20], xmm0
	mov	DWORD PTR [rbp-24], edi
	mov	eax, DWORD PTR [rbp-24]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [rbp-8], eax
	movss	xmm0, DWORD PTR .LC18[rip]
	movss	DWORD PTR [rbp-4], xmm0
.L842:
	mov	eax, DWORD PTR [rbp-24]
	and	eax, 1
	je	.L839
	movss	xmm0, DWORD PTR [rbp-4]
	mulss	xmm0, DWORD PTR [rbp-20]
	movss	DWORD PTR [rbp-4], xmm0
.L839:
	mov	eax, DWORD PTR [rbp-24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rbp-24], eax
	cmp	DWORD PTR [rbp-24], 0
	je	.L846
	movss	xmm0, DWORD PTR [rbp-20]
	mulss	xmm0, xmm0
	movss	DWORD PTR [rbp-20], xmm0
	jmp	.L842
.L846:
	cmp	DWORD PTR [rbp-8], 0
	je	.L843
	movss	xmm0, DWORD PTR .LC18[rip]
	divss	xmm0, DWORD PTR [rbp-4]
	jmp	.L845
.L843:
	movss	xmm0, DWORD PTR [rbp-4]
.L845:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-24]
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-12]
	cmp	edx, eax
	jnb	.L849
	mov	eax, 0
	jmp	.L854
.L849:
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, DWORD PTR [rbp-12]
	cmp	edx, eax
	jnb	.L851
	mov	eax, 2
	jmp	.L854
.L851:
	mov	edx, DWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rbp-16]
	cmp	edx, eax
	jnb	.L852
	mov	eax, 0
	jmp	.L854
.L852:
	mov	eax, DWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rbp-16]
	cmp	edx, eax
	jnb	.L853
	mov	eax, 2
	jmp	.L854
.L853:
	mov	eax, 1
.L854:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	rdx, QWORD PTR [rbp-16]
	mov	rax, QWORD PTR [rbp-8]
	mov	rsi, rdx
	mov	rdi, rax
	call	__ucmpdi2
	sub	eax, 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, rdi
	mov	r8, rsi
	mov	rsi, rax
	mov	edi, 0
	mov	rdi, r8
	mov	QWORD PTR [rbp-48], rsi
	mov	QWORD PTR [rbp-40], rdi
	mov	QWORD PTR [rbp-64], rdx
	mov	QWORD PTR [rbp-56], rcx
	mov	rax, QWORD PTR [rbp-48]
	mov	rdx, QWORD PTR [rbp-40]
	mov	QWORD PTR [rbp-16], rax
	mov	QWORD PTR [rbp-8], rdx
	mov	rax, QWORD PTR [rbp-64]
	mov	rdx, QWORD PTR [rbp-56]
	mov	QWORD PTR [rbp-32], rax
	mov	QWORD PTR [rbp-24], rdx
	mov	rdx, QWORD PTR [rbp-8]
	mov	rax, QWORD PTR [rbp-24]
	cmp	rdx, rax
	jnb	.L858
	mov	eax, 0
	jmp	.L863
.L858:
	mov	rax, QWORD PTR [rbp-8]
	mov	rdx, QWORD PTR [rbp-24]
	cmp	rdx, rax
	jnb	.L860
	mov	eax, 2
	jmp	.L863
.L860:
	mov	rdx, QWORD PTR [rbp-16]
	mov	rax, QWORD PTR [rbp-32]
	cmp	rdx, rax
	jnb	.L861
	mov	eax, 0
	jmp	.L863
.L861:
	mov	rax, QWORD PTR [rbp-16]
	mov	rdx, QWORD PTR [rbp-32]
	cmp	rdx, rax
	jnb	.L862
	mov	eax, 2
	jmp	.L863
.L862:
	mov	eax, 1
.L863:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
	.section	.rodata
	.align 4
.LC3:
	.long	-8388609
	.align 4
.LC4:
	.long	2139095039
	.align 8
.LC5:
	.long	-1
	.long	-1048577
	.align 8
.LC6:
	.long	-1
	.long	2146435071
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC8:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC10:
	.long	1073741824
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1073741824
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	16382
	.long	0
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	16384
	.long	0
	.align 16
.LC15:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.align 4
.LC17:
	.long	1191182336
	.align 4
.LC18:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
