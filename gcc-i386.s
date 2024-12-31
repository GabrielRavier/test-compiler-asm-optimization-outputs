	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	cmp	eax, DWORD PTR [ebp-4]
	jnb	.L2
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-4], eax
	jmp	.L3
.L4:
	sub	DWORD PTR [ebp-8], 1
	sub	DWORD PTR [ebp-4], 1
	mov	eax, DWORD PTR [ebp-8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
.L3:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L4
	jmp	.L5
.L2:
	mov	eax, DWORD PTR [ebp-8]
	cmp	eax, DWORD PTR [ebp-4]
	je	.L5
	jmp	.L6
.L7:
	mov	edx, DWORD PTR [ebp-8]
	lea	eax, [edx+1]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	lea	ecx, [eax+1]
	mov	DWORD PTR [ebp-4], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
.L6:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L7
.L5:
	mov	eax, DWORD PTR [ebp+8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+16]
	movzx	eax, al
	mov	DWORD PTR [ebp+16], eax
	jmp	.L10
.L12:
	sub	DWORD PTR [ebp+20], 1
	add	DWORD PTR [ebp-8], 1
	add	DWORD PTR [ebp-4], 1
.L10:
	cmp	DWORD PTR [ebp+20], 0
	je	.L11
	mov	eax, DWORD PTR [ebp-8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+16], eax
	jne	.L12
.L11:
	cmp	DWORD PTR [ebp+20], 0
	je	.L13
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	jmp	.L14
.L13:
	mov	eax, 0
.L14:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, al
	mov	DWORD PTR [ebp+12], eax
	jmp	.L16
.L18:
	add	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp+16], 1
.L16:
	cmp	DWORD PTR [ebp+16], 0
	je	.L17
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+12], eax
	jne	.L18
.L17:
	cmp	DWORD PTR [ebp+16], 0
	je	.L19
	mov	eax, DWORD PTR [ebp-4]
	jmp	.L21
.L19:
	mov	eax, 0
.L21:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	jmp	.L23
.L25:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp-4], 1
	add	DWORD PTR [ebp-8], 1
.L23:
	cmp	DWORD PTR [ebp+16], 0
	je	.L24
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	.L25
.L24:
	cmp	DWORD PTR [ebp+16], 0
	je	.L26
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	jmp	.L28
.L26:
	mov	edx, 0
.L28:
	mov	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	jmp	.L30
.L31:
	mov	edx, DWORD PTR [ebp-8]
	lea	eax, [edx+1]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	lea	ecx, [eax+1]
	mov	DWORD PTR [ebp-4], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
.L30:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L31
	mov	eax, DWORD PTR [ebp+8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, al
	mov	DWORD PTR [ebp+12], eax
	jmp	.L34
.L36:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+12], eax
	jne	.L34
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	jmp	.L35
.L34:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L36
	mov	eax, 0
.L35:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	.L38
.L39:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp-4], 1
.L38:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L39
	mov	eax, DWORD PTR [ebp+8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	jmp	.L42
.L43:
	add	DWORD PTR [ebp+12], 1
	add	DWORD PTR [ebp+8], 1
.L42:
	mov	eax, DWORD PTR [ebp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L43
	mov	eax, DWORD PTR [ebp+8]
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, al
	mov	DWORD PTR [ebp+12], eax
	jmp	.L46
.L48:
	add	DWORD PTR [ebp+8], 1
.L46:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L47
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+12], eax
	jne	.L48
.L47:
	mov	eax, DWORD PTR [ebp+8]
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
.L53:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [ebp+12], edx
	jne	.L51
	jmp	.L52
.L51:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	.L53
	mov	eax, 0
.L52:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	jmp	.L55
.L57:
	add	DWORD PTR [ebp+8], 1
	add	DWORD PTR [ebp+12], 1
.L55:
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	.L56
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L57
.L56:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	.L60
.L61:
	add	DWORD PTR [ebp+8], 1
.L60:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L61
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L66
	mov	edx, 0
	jmp	.L65
.L68:
	add	DWORD PTR [ebp-4], 1
	add	DWORD PTR [ebp-8], 1
	sub	DWORD PTR [ebp+16], 1
.L66:
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L67
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L67
	cmp	DWORD PTR [ebp+16], 0
	je	.L67
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	.L68
.L67:
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
.L65:
	mov	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	jmp	.L70
.L71:
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 2
	add	DWORD PTR [ebp-4], 2
	sub	DWORD PTR [ebp+16], 2
.L70:
	cmp	DWORD PTR [ebp+16], 1
	jg	.L71
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 127
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	cmp	DWORD PTR [ebp+8], 32
	je	.L77
	cmp	DWORD PTR [ebp+8], 9
	jne	.L78
.L77:
	mov	eax, 1
	jmp	.L80
.L78:
	mov	eax, 0
.L80:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 31
	jbe	.L82
	cmp	DWORD PTR [ebp+8], 127
	jne	.L83
.L82:
	mov	eax, 1
	jmp	.L85
.L83:
	mov	eax, 0
.L85:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 33
	cmp	eax, 93
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.globl	islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 32
	cmp	eax, 94
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	cmp	DWORD PTR [ebp+8], 32
	je	.L95
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 9
	cmp	eax, 4
	ja	.L96
.L95:
	mov	eax, 1
	jmp	.L98
.L96:
	mov	eax, 0
.L98:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 65
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	cmp	DWORD PTR [ebp+8], 31
	jbe	.L102
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 127
	cmp	eax, 32
	jbe	.L102
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 8232
	cmp	eax, 1
	jbe	.L102
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 65529
	cmp	eax, 2
	ja	.L103
.L102:
	mov	eax, 1
	jmp	.L105
.L103:
	mov	eax, 0
.L105:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	cmp	DWORD PTR [ebp+8], 254
	ja	.L109
	mov	eax, DWORD PTR [ebp+8]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	al
	movzx	eax, al
	jmp	.L110
.L109:
	cmp	DWORD PTR [ebp+8], 8231
	jbe	.L111
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	.L111
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 57344
	cmp	eax, 8184
	ja	.L112
.L111:
	mov	eax, 1
	jmp	.L110
.L112:
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.L113
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 65534
	cmp	eax, 65534
	jne	.L114
.L113:
	mov	eax, 0
	jmp	.L110
.L114:
	mov	eax, 1
.L110:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L116
	mov	eax, DWORD PTR [ebp+8]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 5
	ja	.L117
.L116:
	mov	eax, 1
	jmp	.L119
.L117:
	mov	eax, 0
.L119:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 127
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L123
	fld	QWORD PTR [ebp-8]
	jmp	.L124
.L123:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L125
	fld	QWORD PTR [ebp-16]
	jmp	.L124
.L125:
	fld	QWORD PTR [ebp-8]
	fcomp	QWORD PTR [ebp-16]
	fnstsw	ax
	sahf
	jbe	.L130
	fld	QWORD PTR [ebp-8]
	fsub	QWORD PTR [ebp-16]
	jmp	.L124
.L130:
	fldz
.L124:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L132
	fld	DWORD PTR [ebp+8]
	jmp	.L133
.L132:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L134
	fld	DWORD PTR [ebp+12]
	jmp	.L133
.L134:
	fld	DWORD PTR [ebp+8]
	fcomp	DWORD PTR [ebp+12]
	fnstsw	ax
	sahf
	jbe	.L139
	fld	DWORD PTR [ebp+8]
	fsub	DWORD PTR [ebp+12]
	jmp	.L133
.L139:
	fldz
.L133:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L141
	fld	QWORD PTR [ebp-16]
	jmp	.L142
.L141:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L143
	fld	QWORD PTR [ebp-8]
	jmp	.L142
.L143:
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [ebp-16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L144
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L145
	fld	QWORD PTR [ebp-16]
	jmp	.L142
.L145:
	fld	QWORD PTR [ebp-8]
	jmp	.L142
.L144:
	fld	QWORD PTR [ebp-16]
	fcomp	QWORD PTR [ebp-8]
	fnstsw	ax
	sahf
	jbe	.L151
	fld	QWORD PTR [ebp-16]
	jmp	.L142
.L151:
	fld	QWORD PTR [ebp-8]
.L142:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L153
	fld	DWORD PTR [ebp+12]
	jmp	.L154
.L153:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L155
	fld	DWORD PTR [ebp+8]
	jmp	.L154
.L155:
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [ebp+12]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L156
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L157
	fld	DWORD PTR [ebp+12]
	jmp	.L154
.L157:
	fld	DWORD PTR [ebp+8]
	jmp	.L154
.L156:
	fld	DWORD PTR [ebp+12]
	fcomp	DWORD PTR [ebp+8]
	fnstsw	ax
	sahf
	jbe	.L163
	fld	DWORD PTR [ebp+12]
	jmp	.L154
.L163:
	fld	DWORD PTR [ebp+8]
.L154:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L165
	fld	TBYTE PTR [ebp+20]
	jmp	.L166
.L165:
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+20]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L167
	fld	TBYTE PTR [ebp+8]
	jmp	.L166
.L167:
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [ebp+20]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L168
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L169
	fld	TBYTE PTR [ebp+20]
	jmp	.L166
.L169:
	fld	TBYTE PTR [ebp+8]
	jmp	.L166
.L168:
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+20]
	fcompp
	fnstsw	ax
	sahf
	jbe	.L175
	fld	TBYTE PTR [ebp+20]
	jmp	.L166
.L175:
	fld	TBYTE PTR [ebp+8]
.L166:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L177
	fld	QWORD PTR [ebp-16]
	jmp	.L178
.L177:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L179
	fld	QWORD PTR [ebp-8]
	jmp	.L178
.L179:
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [ebp-16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L180
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L181
	fld	QWORD PTR [ebp-8]
	jmp	.L178
.L181:
	fld	QWORD PTR [ebp-16]
	jmp	.L178
.L180:
	fld	QWORD PTR [ebp-16]
	fcomp	QWORD PTR [ebp-8]
	fnstsw	ax
	sahf
	jbe	.L187
	fld	QWORD PTR [ebp-8]
	jmp	.L178
.L187:
	fld	QWORD PTR [ebp-16]
.L178:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L189
	fld	DWORD PTR [ebp+12]
	jmp	.L190
.L189:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L191
	fld	DWORD PTR [ebp+8]
	jmp	.L190
.L191:
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [ebp+12]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L192
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L193
	fld	DWORD PTR [ebp+8]
	jmp	.L190
.L193:
	fld	DWORD PTR [ebp+12]
	jmp	.L190
.L192:
	fld	DWORD PTR [ebp+12]
	fcomp	DWORD PTR [ebp+8]
	fnstsw	ax
	sahf
	jbe	.L199
	fld	DWORD PTR [ebp+8]
	jmp	.L190
.L199:
	fld	DWORD PTR [ebp+12]
.L190:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L201
	fld	TBYTE PTR [ebp+20]
	jmp	.L202
.L201:
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+20]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L203
	fld	TBYTE PTR [ebp+8]
	jmp	.L202
.L203:
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [ebp+20]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L204
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L205
	fld	TBYTE PTR [ebp+8]
	jmp	.L202
.L205:
	fld	TBYTE PTR [ebp+20]
	jmp	.L202
.L204:
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+20]
	fcompp
	fnstsw	ax
	sahf
	jbe	.L211
	fld	TBYTE PTR [ebp+8]
	jmp	.L202
.L211:
	fld	TBYTE PTR [ebp+20]
.L202:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
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
.LFB37:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], OFFSET FLAT:s.0
	jmp	.L213
.L214:
	mov	eax, DWORD PTR [ebp-8]
	and	eax, 63
	movzx	edx, BYTE PTR digits[eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	add	DWORD PTR [ebp-4], 1
	shr	DWORD PTR [ebp-8], 6
.L213:
	cmp	DWORD PTR [ebp-8], 0
	jne	.L214
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], 0
	mov	eax, OFFSET FLAT:s.0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.globl	srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 1
	mov	edx, 0
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, edx
	nop
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR seed
	mov	edx, DWORD PTR seed+4
	imul	ebx, edx, 1284865837
	imul	ecx, eax, 1481765933
	add	ecx, ebx
	mov	ebx, 1284865837
	mul	ebx
	add	ecx, edx
	mov	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, edx
	mov	eax, DWORD PTR seed
	mov	edx, DWORD PTR seed+4
	mov	eax, edx
	xor	edx, edx
	shr	eax
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-8], 0
	jne	.L220
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax+4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax], edx
	jmp	.L219
.L220:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp-8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L219
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax+4], edx
.L219:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L223
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], edx
.L223:
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L222
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
.L222:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	.L227
.L230:
	mov	edx, ebx
	imul	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	sub	esp, 8
	push	eax
	push	DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	add	esp, 16
	test	eax, eax
	jne	.L228
	imul	ebx, DWORD PTR [ebp-12]
	mov	edx, ebx
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	jmp	.L229
.L228:
	add	DWORD PTR [ebp-12], 1
.L227:
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-24]
	jb	.L230
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [eax], edx
	imul	ebx, DWORD PTR [ebp-24]
	mov	edx, ebx
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	sub	esp, 4
	push	DWORD PTR [ebp+20]
	push	DWORD PTR [ebp+8]
	push	eax
	call	memcpy
	add	esp, 16
.L229:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	.L232
.L235:
	mov	edx, ebx
	imul	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	sub	esp, 8
	push	eax
	push	DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	add	esp, 16
	test	eax, eax
	jne	.L233
	imul	ebx, DWORD PTR [ebp-12]
	mov	edx, ebx
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	jmp	.L234
.L233:
	add	DWORD PTR [ebp-12], 1
.L232:
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-24]
	jb	.L235
	mov	eax, 0
.L234:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cdq
	mov	eax, edx
	xor	eax, DWORD PTR [ebp+8]
	sub	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-8], 0
	jmp	.L239
.L240:
	add	DWORD PTR [ebp+8], 1
.L239:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	call	isspace
	add	esp, 4
	test	eax, eax
	jne	.L240
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	.L241
	cmp	eax, 45
	jne	.L243
	mov	DWORD PTR [ebp-8], 1
.L241:
	add	DWORD PTR [ebp+8], 1
	jmp	.L243
.L244:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp+8], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [ebp-4], eax
.L243:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L244
	cmp	DWORD PTR [ebp-8], 0
	jne	.L245
	mov	eax, DWORD PTR [ebp-4]
	neg	eax
	jmp	.L247
.L245:
	mov	eax, DWORD PTR [ebp-4]
.L247:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-8], 0
	jmp	.L249
.L250:
	add	DWORD PTR [ebp+8], 1
.L249:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	call	isspace
	add	esp, 4
	test	eax, eax
	jne	.L250
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	.L251
	cmp	eax, 45
	jne	.L253
	mov	DWORD PTR [ebp-8], 1
.L251:
	add	DWORD PTR [ebp+8], 1
	jmp	.L253
.L254:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp+8], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [ebp-4], eax
.L253:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L254
	cmp	DWORD PTR [ebp-8], 0
	jne	.L255
	mov	eax, DWORD PTR [ebp-4]
	neg	eax
	jmp	.L257
.L255:
	mov	eax, DWORD PTR [ebp-4]
.L257:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	DWORD PTR [ebp-16], 0
	mov	DWORD PTR [ebp-12], 0
	mov	DWORD PTR [ebp-20], 0
	jmp	.L259
.L260:
	add	DWORD PTR [ebp+8], 1
.L259:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	call	isspace
	add	esp, 4
	test	eax, eax
	jne	.L260
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	.L261
	cmp	eax, 45
	jne	.L263
	mov	DWORD PTR [ebp-20], 1
.L261:
	add	DWORD PTR [ebp+8], 1
	jmp	.L263
.L264:
	mov	ecx, DWORD PTR [ebp-16]
	mov	ebx, DWORD PTR [ebp-12]
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 2
	sal	eax, 2
	add	eax, ecx
	adc	edx, ebx
	add	eax, eax
	adc	edx, edx
	mov	ecx, DWORD PTR [ebp+8]
	lea	ebx, [ecx+1]
	mov	DWORD PTR [ebp+8], ebx
	movzx	ecx, BYTE PTR [ecx]
	movsx	ecx, cl
	sub	ecx, 48
	mov	ebx, ecx
	sar	ebx, 31
	sub	eax, ecx
	sbb	edx, ebx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
.L263:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L264
	cmp	DWORD PTR [ebp-20], 0
	jne	.L265
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	neg	eax
	adc	edx, 0
	neg	edx
	jmp	.L267
.L265:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
.L267:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	jmp	.L269
.L273:
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	imul	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	sub	esp, 8
	push	DWORD PTR [ebp-12]
	push	DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	mov	DWORD PTR [ebp-16], eax
	add	esp, 16
	cmp	DWORD PTR [ebp-16], 0
	jns	.L270
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	mov	DWORD PTR [ebp+16], eax
	jmp	.L269
.L270:
	cmp	DWORD PTR [ebp-16], 0
	jle	.L271
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp+20]
	add	eax, edx
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	mov	edx, DWORD PTR [ebp+16]
	sub	edx, eax
	lea	eax, [edx-1]
	mov	DWORD PTR [ebp+16], eax
	jmp	.L269
.L271:
	mov	eax, DWORD PTR [ebp-12]
	jmp	.L272
.L269:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L273
	mov	eax, 0
.L272:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	jmp	.L275
.L279:
	mov	eax, DWORD PTR [ebp-16]
	sar	eax
	imul	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	mov	DWORD PTR [ebp-20], eax
	sub	esp, 4
	push	DWORD PTR [ebp+28]
	push	DWORD PTR [ebp-20]
	push	DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	mov	DWORD PTR [ebp-24], eax
	add	esp, 16
	cmp	DWORD PTR [ebp-24], 0
	jne	.L276
	mov	eax, DWORD PTR [ebp-20]
	jmp	.L277
.L276:
	cmp	DWORD PTR [ebp-24], 0
	jle	.L278
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+20]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	sub	DWORD PTR [ebp-16], 1
.L278:
	sar	DWORD PTR [ebp-16]
.L275:
	cmp	DWORD PTR [ebp-16], 0
	jne	.L279
	mov	eax, 0
.L277:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	cdq
	idiv	DWORD PTR [ebp+16]
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp+12]
	cdq
	idiv	DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], ecx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp+8]
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	4
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, ecx
	mov	edx, ebx
	xor	eax, DWORD PTR [ebp-16]
	xor	edx, DWORD PTR [ebp-12]
	sub	eax, ecx
	sbb	edx, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-40], eax
	mov	eax, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-36], eax
	push	DWORD PTR [ebp-36]
	push	DWORD PTR [ebp-40]
	push	DWORD PTR [ebp-28]
	push	DWORD PTR [ebp-32]
	call	__divdi3
	add	esp, 16
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	push	DWORD PTR [ebp-36]
	push	DWORD PTR [ebp-40]
	push	edx
	push	eax
	call	__moddi3
	add	esp, 16
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [ebp+8]
	lea	esp, [ebp-8]
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	4
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.globl	labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cdq
	mov	eax, edx
	xor	eax, DWORD PTR [ebp+8]
	sub	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	cdq
	idiv	DWORD PTR [ebp+16]
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp+12]
	cdq
	idiv	DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], ecx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp+8]
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	4
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, ecx
	mov	edx, ebx
	xor	eax, DWORD PTR [ebp-16]
	xor	edx, DWORD PTR [ebp-12]
	sub	eax, ecx
	sbb	edx, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-40], eax
	mov	eax, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-36], eax
	push	DWORD PTR [ebp-36]
	push	DWORD PTR [ebp-40]
	push	DWORD PTR [ebp-28]
	push	DWORD PTR [ebp-32]
	call	__divdi3
	add	esp, 16
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	push	DWORD PTR [ebp-36]
	push	DWORD PTR [ebp-40]
	push	edx
	push	eax
	call	__moddi3
	add	esp, 16
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [ebp+8]
	lea	esp, [ebp-8]
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	4
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	jmp	.L295
.L297:
	add	DWORD PTR [ebp+8], 4
.L295:
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L296
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [ebp+12], eax
	jne	.L297
.L296:
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L298
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L300
.L298:
	mov	eax, 0
.L300:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	jmp	.L302
.L304:
	add	DWORD PTR [ebp+8], 4
	add	DWORD PTR [ebp+12], 4
.L302:
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jne	.L303
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L303
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L304
.L303:
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jl	.L305
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	jmp	.L307
.L305:
	mov	eax, -1
.L307:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
.L309:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+4]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+4]
	mov	DWORD PTR [ebp+8], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L309
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	.L312
.L313:
	add	DWORD PTR [ebp+8], 4
.L312:
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L313
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, DWORD PTR [ebp-4]
	sar	eax, 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	jmp	.L316
.L318:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 4
	add	DWORD PTR [ebp+12], 4
.L316:
	cmp	DWORD PTR [ebp+16], 0
	je	.L317
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jne	.L317
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L317
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L318
.L317:
	cmp	DWORD PTR [ebp+16], 0
	je	.L319
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jl	.L320
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	jmp	.L323
.L320:
	mov	eax, -1
	jmp	.L323
.L319:
	mov	eax, 0
.L323:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	jmp	.L325
.L327:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 4
.L325:
	cmp	DWORD PTR [ebp+16], 0
	je	.L326
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [ebp+12], eax
	jne	.L327
.L326:
	cmp	DWORD PTR [ebp+16], 0
	je	.L328
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L330
.L328:
	mov	eax, 0
.L330:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	jmp	.L332
.L334:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 4
	add	DWORD PTR [ebp+12], 4
.L332:
	cmp	DWORD PTR [ebp+16], 0
	je	.L333
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	je	.L334
.L333:
	cmp	DWORD PTR [ebp+16], 0
	je	.L335
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jl	.L336
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	jmp	.L339
.L336:
	mov	eax, -1
	jmp	.L339
.L335:
	mov	eax, 0
.L339:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	.L341
.L342:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+4]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+4]
	mov	DWORD PTR [ebp+8], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
.L341:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L342
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jne	.L345
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L346
.L345:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	sub	edx, eax
	mov	eax, DWORD PTR [ebp+16]
	sal	eax, 2
	cmp	edx, eax
	jnb	.L351
	jmp	.L348
.L349:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp+16]
	lea	ecx, [0+edx*4]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
.L348:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L349
	jmp	.L350
.L352:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+4]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+4]
	mov	DWORD PTR [ebp+8], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
.L351:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L352
.L350:
	mov	eax, DWORD PTR [ebp-4]
.L346:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	.L354
.L355:
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+4]
	mov	DWORD PTR [ebp+8], edx
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [eax], edx
.L354:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L355
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	jnb	.L358
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-8], eax
	jmp	.L359
.L360:
	sub	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp-8], 1
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
.L359:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L360
	jmp	.L357
.L358:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	je	.L357
	jmp	.L362
.L363:
	mov	edx, DWORD PTR [ebp-4]
	lea	eax, [edx+1]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-8]
	lea	ecx, [eax+1]
	mov	DWORD PTR [ebp-8], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
.L362:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L363
.L357:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L367
	mov	edi, esi
	xor	esi, esi
.L367:
	mov	ecx, DWORD PTR [ebp+16]
	neg	ecx
	and	ecx, 63
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L368
	mov	eax, edx
	xor	edx, edx
.L368:
	or	eax, esi
	or	edx, edi
	add	esp, 8
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L371
	mov	esi, edi
	xor	edi, edi
.L371:
	mov	ecx, DWORD PTR [ebp+16]
	neg	ecx
	and	ecx, 63
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L372
	mov	edx, eax
	xor	eax, eax
.L372:
	or	eax, esi
	or	edx, edi
	add	esp, 8
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-8], ax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, 16
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-8], ax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, 16
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebp-8], al
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, 8
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebp-8], al
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, 8
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-4], 255
	movzx	eax, WORD PTR [ebp-20]
	mov	edx, DWORD PTR [ebp-4]
	sal	edx, 8
	and	eax, edx
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	and	ax, WORD PTR [ebp-20]
	sal	eax, 8
	or	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 255
	mov	eax, DWORD PTR [ebp-4]
	sal	eax, 24
	and	eax, DWORD PTR [ebp+8]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	sal	eax, 16
	and	eax, DWORD PTR [ebp+8]
	shr	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	sal	eax, 8
	and	eax, DWORD PTR [ebp+8]
	sal	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	and	eax, DWORD PTR [ebp-4]
	sal	eax, 24
	or	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 28
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-16], 255
	mov	DWORD PTR [ebp-12], 0
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 16
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shrd	eax, edx, 24
	shr	edx, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shrd	eax, edx, 8
	shr	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 24
	sal	eax, 24
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shld	edx, eax, 8
	sal	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 16
	sal	eax, 16
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shld	edx, eax, 24
	sal	eax, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 8
	sal	eax, 8
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	and	eax, DWORD PTR [ebp-16]
	and	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	or	eax, ecx
	or	edx, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	.L396
.L399:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L397
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	jmp	.L398
.L397:
	add	DWORD PTR [ebp-4], 1
.L396:
	cmp	DWORD PTR [ebp-4], 31
	jbe	.L399
	mov	eax, 0
.L398:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
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
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR .LC3
	fcomp	DWORD PTR [ebp+8]
	fnstsw	ax
	sahf
	ja	.L406
	fld	DWORD PTR [ebp+8]
	fcomp	DWORD PTR .LC4
	fnstsw	ax
	sahf
	jbe	.L411
.L406:
	mov	eax, 1
	jmp	.L410
.L411:
	mov	eax, 0
.L410:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	fld	QWORD PTR .LC5
	fcomp	QWORD PTR [ebp-8]
	fnstsw	ax
	sahf
	ja	.L413
	fld	QWORD PTR [ebp-8]
	fcomp	QWORD PTR .LC6
	fnstsw	ax
	sahf
	jbe	.L418
.L413:
	mov	eax, 1
	jmp	.L417
.L418:
	mov	eax, 0
.L417:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR .LC7
	fcompp
	fnstsw	ax
	sahf
	ja	.L420
	fld	TBYTE PTR .LC8
	fld	TBYTE PTR [ebp+8]
	fcompp
	fnstsw	ax
	sahf
	jbe	.L425
.L420:
	mov	eax, 1
	jmp	.L424
.L425:
	mov	eax, 0
.L424:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fild	DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	fstp	TBYTE PTR [eax]
	nop
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	jp	.L428
	fld	DWORD PTR [ebp+8]
	fadd	st, st(0)
	fld	DWORD PTR [ebp+8]
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L438
	fld	DWORD PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	je	.L428
	jmp	.L436
.L438:
	fstp	st(0)
.L436:
	cmp	DWORD PTR [ebp+12], 0
	jns	.L430
	fld	DWORD PTR .LC9
	jmp	.L431
.L430:
	fld	DWORD PTR .LC10
.L431:
	fstp	DWORD PTR [ebp-4]
.L434:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	.L432
	fld	DWORD PTR [ebp+8]
	fmul	DWORD PTR [ebp-4]
	fstp	DWORD PTR [ebp+8]
.L432:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+12], eax
	cmp	DWORD PTR [ebp+12], 0
	je	.L428
	fld	DWORD PTR [ebp-4]
	fmul	st, st(0)
	fstp	DWORD PTR [ebp-4]
	jmp	.L434
.L428:
	fld	DWORD PTR [ebp+8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR [ebp-24]
	fucompp
	fnstsw	ax
	sahf
	jp	.L440
	fld	QWORD PTR [ebp-24]
	fadd	st, st(0)
	fld	QWORD PTR [ebp-24]
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L450
	fld	QWORD PTR [ebp-24]
	fucompp
	fnstsw	ax
	sahf
	je	.L440
	jmp	.L448
.L450:
	fstp	st(0)
.L448:
	cmp	DWORD PTR [ebp+16], 0
	jns	.L442
	fld	QWORD PTR .LC11
	jmp	.L443
.L442:
	fld	QWORD PTR .LC12
.L443:
	fstp	QWORD PTR [ebp-8]
.L446:
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	je	.L444
	fld	QWORD PTR [ebp-24]
	fmul	QWORD PTR [ebp-8]
	fstp	QWORD PTR [ebp-24]
.L444:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+16], eax
	cmp	DWORD PTR [ebp+16], 0
	je	.L440
	fld	QWORD PTR [ebp-8]
	fmul	st, st(0)
	fstp	QWORD PTR [ebp-8]
	jmp	.L446
.L440:
	fld	QWORD PTR [ebp-24]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	jp	.L452
	fld	TBYTE PTR [ebp+8]
	fadd	st, st(0)
	fld	TBYTE PTR [ebp+8]
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L462
	fld	TBYTE PTR [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	je	.L452
	jmp	.L460
.L462:
	fstp	st(0)
.L460:
	cmp	DWORD PTR [ebp+20], 0
	jns	.L454
	fld	TBYTE PTR .LC13
	jmp	.L455
.L454:
	fld	TBYTE PTR .LC14
.L455:
	fstp	TBYTE PTR [ebp-12]
.L458:
	mov	eax, DWORD PTR [ebp+20]
	and	eax, 1
	je	.L456
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp-12]
	fmulp	st(1), st
	fstp	TBYTE PTR [ebp+8]
.L456:
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+20], eax
	cmp	DWORD PTR [ebp+20], 0
	je	.L452
	fld	TBYTE PTR [ebp-12]
	fmul	st, st(0)
	fstp	TBYTE PTR [ebp-12]
	jmp	.L458
.L452:
	fld	TBYTE PTR [ebp+8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	jmp	.L464
.L465:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp-4], edx
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp-8], edx
	movzx	edx, BYTE PTR [eax]
	xor	edx, ecx
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
.L464:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L465
	mov	eax, DWORD PTR [ebp+8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	push	DWORD PTR [ebp+8]
	call	strlen
	add	esp, 4
	mov	edx, DWORD PTR [ebp+8]
	add	eax, edx
	mov	DWORD PTR [ebp-4], eax
	jmp	.L468
.L470:
	add	DWORD PTR [ebp+12], 1
	add	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp+16], 1
.L468:
	cmp	DWORD PTR [ebp+16], 0
	je	.L469
	mov	eax, DWORD PTR [ebp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L470
.L469:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L471
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], 0
.L471:
	mov	eax, DWORD PTR [ebp+8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	.L474
.L479:
	add	DWORD PTR [ebp-4], 1
.L474:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp+12]
	jnb	.L475
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L479
.L475:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	jmp	.L481
.L485:
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	jmp	.L482
.L484:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp-4], edx
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	.L482
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L483
.L482:
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L484
	add	DWORD PTR [ebp+8], 1
.L481:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L485
	mov	eax, 0
.L483:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], 0
.L488:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [ebp+12], edx
	jne	.L487
	mov	DWORD PTR [ebp-4], eax
.L487:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	.L488
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	push	DWORD PTR [ebp+12]
	call	strlen
	add	esp, 4
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-8], 0
	jne	.L493
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L492
.L495:
	push	DWORD PTR [ebp-8]
	push	DWORD PTR [ebp+12]
	push	DWORD PTR [ebp-4]
	call	strncmp
	add	esp, 12
	test	eax, eax
	jne	.L494
	mov	eax, DWORD PTR [ebp-4]
	jmp	.L492
.L494:
	add	DWORD PTR [ebp-4], 1
.L493:
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	push	DWORD PTR [ebp-4]
	call	strchr
	add	esp, 8
	mov	DWORD PTR [ebp-4], eax
	cmp	DWORD PTR [ebp-4], 0
	jne	.L495
	mov	eax, 0
.L492:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fldz
	fcomp	QWORD PTR [ebp-8]
	fnstsw	ax
	sahf
	jbe	.L497
	fld	QWORD PTR [ebp-16]
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	ja	.L499
.L497:
	fld	QWORD PTR [ebp-8]
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L500
	fldz
	fcomp	QWORD PTR [ebp-16]
	fnstsw	ax
	sahf
	jbe	.L500
.L499:
	fld	QWORD PTR [ebp-8]
	fchs
	jmp	.L503
.L500:
	fld	QWORD PTR [ebp-8]
.L503:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+12]
	sub	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp+20], 0
	jne	.L507
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L508
.L507:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+20]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	.L509
	mov	eax, 0
	jmp	.L508
.L509:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	.L510
.L512:
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+16]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	.L511
	mov	eax, DWORD PTR [ebp+20]
	lea	ecx, [eax-1]
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	push	ecx
	push	edx
	push	eax
	call	memcmp
	add	esp, 12
	test	eax, eax
	jne	.L511
	mov	eax, DWORD PTR [ebp-4]
	jmp	.L508
.L511:
	add	DWORD PTR [ebp-4], 1
.L510:
	mov	eax, DWORD PTR [ebp-4]
	cmp	DWORD PTR [ebp-8], eax
	jnb	.L512
	mov	eax, 0
.L508:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	DWORD PTR [ebp+16]
	push	DWORD PTR [ebp+12]
	push	DWORD PTR [ebp+8]
	call	memcpy
	mov	edx, DWORD PTR [ebp+16]
	add	eax, edx
	add	esp, 12
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	fldz
	fcomp	QWORD PTR [ebp-24]
	fnstsw	ax
	sahf
	jbe	.L516
	fld	QWORD PTR [ebp-24]
	fchs
	fstp	QWORD PTR [ebp-24]
	mov	DWORD PTR [ebp-4], 1
.L516:
	fld1
	fld	QWORD PTR [ebp-24]
	fcompp
	fnstsw	ax
	sahf
	jb	.L533
	jmp	.L520
.L521:
	add	DWORD PTR [ebp-8], 1
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR .LC12
	fdivp	st(1), st
	fstp	QWORD PTR [ebp-24]
.L520:
	fld1
	fld	QWORD PTR [ebp-24]
	fcompp
	fnstsw	ax
	sahf
	jnb	.L521
	jmp	.L522
.L533:
	fld	QWORD PTR .LC11
	fcomp	QWORD PTR [ebp-24]
	fnstsw	ax
	sahf
	jbe	.L522
	fld	QWORD PTR [ebp-24]
	fldz
	fucompp
	fnstsw	ax
	sahf
	jp	.L525
	fld	QWORD PTR [ebp-24]
	fldz
	fucompp
	fnstsw	ax
	sahf
	je	.L522
	jmp	.L525
.L526:
	sub	DWORD PTR [ebp-8], 1
	fld	QWORD PTR [ebp-24]
	fadd	st, st(0)
	fstp	QWORD PTR [ebp-24]
.L525:
	fld	QWORD PTR .LC11
	fcomp	QWORD PTR [ebp-24]
	fnstsw	ax
	sahf
	ja	.L526
.L522:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp-8]
	mov	DWORD PTR [eax], edx
	cmp	DWORD PTR [ebp-4], 0
	je	.L527
	fld	QWORD PTR [ebp-24]
	fchs
	fstp	QWORD PTR [ebp-24]
.L527:
	fld	QWORD PTR [ebp-24]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	jmp	.L535
.L537:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	and	eax, 1
	mov	edx, 0
	mov	ecx, eax
	or	ecx, edx
	je	.L536
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	DWORD PTR [ebp-8], eax
	adc	DWORD PTR [ebp-4], edx
.L536:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	eax, eax
	adc	edx, edx
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 1
	shr	edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
.L535:
	mov	eax, DWORD PTR [ebp-16]
	or	eax, DWORD PTR [ebp-12]
	jne	.L537
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 1
	mov	DWORD PTR [ebp-8], 0
	jmp	.L540
.L542:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
.L540:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	.L543
	cmp	DWORD PTR [ebp-4], 0
	je	.L543
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	.L542
	jmp	.L543
.L545:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	.L544
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
.L544:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
.L543:
	cmp	DWORD PTR [ebp-4], 0
	jne	.L545
	cmp	DWORD PTR [ebp+16], 0
	je	.L546
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L547
.L546:
	mov	eax, DWORD PTR [ebp-8]
.L547:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebp-20], al
	cmp	BYTE PTR [ebp-20], 0
	jns	.L549
	not	BYTE PTR [ebp-20]
.L549:
	cmp	BYTE PTR [ebp-20], 0
	jne	.L550
	mov	eax, 7
	jmp	.L551
.L550:
	movsx	eax, BYTE PTR [ebp-20]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	sub	eax, 1
.L551:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	cmp	DWORD PTR [ebp-20], 0
	jns	.L553
	not	DWORD PTR [ebp-24]
	not	DWORD PTR [ebp-20]
.L553:
	mov	eax, DWORD PTR [ebp-24]
	or	eax, DWORD PTR [ebp-20]
	jne	.L554
	mov	eax, 63
	jmp	.L555
.L554:
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	test	edx, edx
	je	.L556
	bsr	eax, edx
	xor	eax, 31
	jmp	.L557
.L556:
	bsr	eax, eax
	xor	eax, 31
	add	eax, 32
.L557:
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	sub	eax, 1
.L555:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	.L559
.L561:
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 1
	je	.L560
	mov	eax, DWORD PTR [ebp+12]
	add	DWORD PTR [ebp-4], eax
.L560:
	shr	DWORD PTR [ebp+8]
	sal	DWORD PTR [ebp+12]
.L559:
	cmp	DWORD PTR [ebp+8], 0
	jne	.L561
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+16]
	shr	eax, 3
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -8
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-16]
	cmp	eax, DWORD PTR [ebp-20]
	jb	.L564
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-16]
	jnb	.L571
.L564:
	mov	DWORD PTR [ebp-4], 0
	jmp	.L566
.L567:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp-4]
	lea	ecx, [0+edx*8]
	mov	edx, DWORD PTR [ebp+8]
	add	ecx, edx
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	add	DWORD PTR [ebp-4], 1
.L566:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-12]
	jb	.L567
	jmp	.L568
.L569:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-8]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 1
.L568:
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp-8], eax
	jb	.L569
	jmp	.L570
.L572:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
.L571:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L572
.L570:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-16]
	jb	.L574
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-12]
	jnb	.L580
.L574:
	mov	DWORD PTR [ebp-4], 0
	jmp	.L576
.L577:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp-4]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
	add	DWORD PTR [ebp-4], 1
.L576:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	jb	.L577
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	je	.L579
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR [ebp-16]
	add	eax, edx
	mov	edx, DWORD PTR [ebp+16]
	lea	ecx, [edx-1]
	mov	edx, DWORD PTR [ebp-12]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	jmp	.L579
.L581:
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
.L580:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L581
.L579:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+16]
	shr	eax, 2
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -4
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-16]
	cmp	eax, DWORD PTR [ebp-20]
	jb	.L583
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-16]
	jnb	.L590
.L583:
	mov	DWORD PTR [ebp-4], 0
	jmp	.L585
.L586:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp-4]
	lea	ecx, [0+edx*4]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
	add	DWORD PTR [ebp-4], 1
.L585:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-12]
	jb	.L586
	jmp	.L587
.L588:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-8]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 1
.L587:
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp-8], eax
	jb	.L588
	jmp	.L589
.L591:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
.L590:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	.L591
.L589:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	fild	QWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	fild	QWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	fild	QWORD PTR [ebp-8]
	cmp	DWORD PTR [ebp-4], 0
	jns	.L599
	fld	TBYTE PTR .LC16
	faddp	st(1), st
.L599:
	fstp	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	fild	QWORD PTR [ebp-8]
	cmp	DWORD PTR [ebp-4], 0
	jns	.L602
	fld	TBYTE PTR .LC16
	faddp	st(1), st
.L602:
	fstp	DWORD PTR [ebp-12]
	fld	DWORD PTR [ebp-12]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	div	DWORD PTR [ebp+12]
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-4], 0
	jmp	.L607
.L610:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, 15
	sub	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L609
	add	DWORD PTR [ebp-4], 1
.L607:
	cmp	DWORD PTR [ebp-4], 15
	jle	.L610
.L609:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-4], 0
	jmp	.L614
.L617:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L616
	add	DWORD PTR [ebp-4], 1
.L614:
	cmp	DWORD PTR [ebp-4], 15
	jle	.L617
.L616:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	fld	DWORD PTR [ebp+8]
	fcomp	DWORD PTR .LC17
	fnstsw	ax
	sahf
	jb	.L625
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR .LC17
	fsubp	st(1), st
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 32768
	jmp	.L623
.L625:
	fld	DWORD PTR [ebp+8]
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
.L623:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	jmp	.L627
.L629:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L628
	add	DWORD PTR [ebp-8], 1
.L628:
	add	DWORD PTR [ebp-4], 1
.L627:
	cmp	DWORD PTR [ebp-4], 15
	jle	.L629
	mov	eax, DWORD PTR [ebp-8]
	and	eax, 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	jmp	.L632
.L634:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L633
	add	DWORD PTR [ebp-8], 1
.L633:
	add	DWORD PTR [ebp-4], 1
.L632:
	cmp	DWORD PTR [ebp-4], 15
	jle	.L634
	mov	eax, DWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	.L637
.L639:
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 1
	je	.L638
	mov	eax, DWORD PTR [ebp+12]
	add	DWORD PTR [ebp-4], eax
.L638:
	shr	DWORD PTR [ebp+8]
	sal	DWORD PTR [ebp+12]
.L637:
	cmp	DWORD PTR [ebp+8], 0
	jne	.L639
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	cmp	DWORD PTR [ebp+8], 0
	jne	.L644
	mov	eax, 0
	jmp	.L643
.L646:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	.L645
	mov	eax, DWORD PTR [ebp+8]
	add	DWORD PTR [ebp-4], eax
.L645:
	sal	DWORD PTR [ebp+8]
	shr	DWORD PTR [ebp+12]
.L644:
	cmp	DWORD PTR [ebp+12], 0
	jne	.L646
	mov	eax, DWORD PTR [ebp-4]
.L643:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 1
	mov	DWORD PTR [ebp-8], 0
	jmp	.L648
.L650:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
.L648:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	.L651
	cmp	DWORD PTR [ebp-4], 0
	je	.L651
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	.L650
	jmp	.L651
.L653:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	.L652
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
.L652:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
.L651:
	cmp	DWORD PTR [ebp-4], 0
	jne	.L653
	cmp	DWORD PTR [ebp+16], 0
	je	.L654
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L655
.L654:
	mov	eax, DWORD PTR [ebp-8]
.L655:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+12]
	fcomp	DWORD PTR [ebp+8]
	fnstsw	ax
	sahf
	jbe	.L664
	mov	eax, -1
	jmp	.L659
.L664:
	fld	DWORD PTR [ebp+8]
	fcomp	DWORD PTR [ebp+12]
	fnstsw	ax
	sahf
	jbe	.L665
	mov	eax, 1
	jmp	.L659
.L665:
	mov	eax, 0
.L659:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-16]
	fcomp	QWORD PTR [ebp-8]
	fnstsw	ax
	sahf
	jbe	.L674
	mov	eax, -1
	jmp	.L669
.L674:
	fld	QWORD PTR [ebp-8]
	fcomp	QWORD PTR [ebp-16]
	fnstsw	ax
	sahf
	jbe	.L675
	mov	eax, 1
	jmp	.L669
.L675:
	mov	eax, 0
.L669:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	cdq
	mov	ecx, DWORD PTR [ebp+12]
	mov	ebx, ecx
	sar	ebx, 31
	mov	edi, edx
	imul	edi, ecx
	mov	esi, ebx
	imul	esi, eax
	add	esi, edi
	mul	ecx
	lea	ecx, [esi+edx]
	mov	edx, ecx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	mov	ecx, DWORD PTR [ebp+12]
	mov	ebx, 0
	mov	edi, edx
	imul	edi, ecx
	mov	esi, ebx
	imul	esi, eax
	add	esi, edi
	mul	ecx
	lea	ecx, [esi+edx]
	mov	edx, ecx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-12], 0
	cmp	DWORD PTR [ebp+12], 0
	jns	.L681
	neg	DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], 1
.L681:
	mov	BYTE PTR [ebp-1], 0
	jmp	.L682
.L685:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	.L683
	mov	eax, DWORD PTR [ebp+8]
	add	DWORD PTR [ebp-12], eax
.L683:
	sal	DWORD PTR [ebp+8]
	sar	DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [ebp-1]
	add	eax, 1
	mov	BYTE PTR [ebp-1], al
.L682:
	cmp	DWORD PTR [ebp+12], 0
	je	.L684
	movzx	eax, BYTE PTR [ebp-1]
	cmp	al, 31
	jbe	.L685
.L684:
	cmp	DWORD PTR [ebp-8], 0
	je	.L686
	mov	eax, DWORD PTR [ebp-12]
	neg	eax
	jmp	.L688
.L686:
	mov	eax, DWORD PTR [ebp-12]
.L688:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	cmp	DWORD PTR [ebp+8], 0
	jns	.L690
	neg	DWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [ebp-4], eax
.L690:
	cmp	DWORD PTR [ebp+12], 0
	jns	.L691
	neg	DWORD PTR [ebp+12]
	cmp	DWORD PTR [ebp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [ebp-4], eax
.L691:
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	push	0
	push	edx
	push	eax
	call	__udivmodsi4
	mov	DWORD PTR [ebp-8], eax
	add	esp, 12
	cmp	DWORD PTR [ebp-4], 0
	je	.L692
	neg	DWORD PTR [ebp-8]
.L692:
	mov	eax, DWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	cmp	DWORD PTR [ebp+8], 0
	jns	.L695
	neg	DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], 1
.L695:
	cmp	DWORD PTR [ebp+12], 0
	jns	.L696
	neg	DWORD PTR [ebp+12]
.L696:
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	push	1
	push	edx
	push	eax
	call	__udivmodsi4
	mov	DWORD PTR [ebp-8], eax
	add	esp, 12
	cmp	DWORD PTR [ebp-4], 0
	je	.L697
	neg	DWORD PTR [ebp-8]
.L697:
	mov	eax, DWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	WORD PTR [ebp-20], dx
	mov	WORD PTR [ebp-24], ax
	mov	WORD PTR [ebp-2], 1
	mov	WORD PTR [ebp-4], 0
	jmp	.L700
.L702:
	sal	WORD PTR [ebp-24]
	sal	WORD PTR [ebp-2]
.L700:
	movzx	eax, WORD PTR [ebp-24]
	cmp	ax, WORD PTR [ebp-20]
	jnb	.L703
	cmp	WORD PTR [ebp-2], 0
	je	.L703
	movzx	eax, WORD PTR [ebp-24]
	test	ax, ax
	jns	.L702
	jmp	.L703
.L705:
	movzx	eax, WORD PTR [ebp-20]
	cmp	ax, WORD PTR [ebp-24]
	jb	.L704
	movzx	eax, WORD PTR [ebp-24]
	sub	WORD PTR [ebp-20], ax
	movzx	eax, WORD PTR [ebp-2]
	or	WORD PTR [ebp-4], ax
.L704:
	shr	WORD PTR [ebp-2]
	shr	WORD PTR [ebp-24]
.L703:
	cmp	WORD PTR [ebp-2], 0
	jne	.L705
	cmp	DWORD PTR [ebp+16], 0
	je	.L706
	movzx	eax, WORD PTR [ebp-20]
	jmp	.L707
.L706:
	movzx	eax, WORD PTR [ebp-4]
.L707:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 1
	mov	DWORD PTR [ebp-8], 0
	jmp	.L709
.L711:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
.L709:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	.L712
	cmp	DWORD PTR [ebp-4], 0
	je	.L712
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	.L711
	jmp	.L712
.L714:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	.L713
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
.L713:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
.L712:
	cmp	DWORD PTR [ebp-4], 0
	jne	.L714
	cmp	DWORD PTR [ebp+16], 0
	je	.L715
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L716
.L715:
	mov	eax, DWORD PTR [ebp-8]
.L716:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 44
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	DWORD PTR [ebp-12], 32
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [ebp+16]
	and	eax, DWORD PTR [ebp-12]
	je	.L718
	mov	DWORD PTR [ebp-28], 0
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-24], eax
	jmp	.L719
.L718:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L720
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	.L722
.L720:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [ebp-24], eax
.L719:
	mov	eax, DWORD PTR [ebp-28]
	mov	edx, DWORD PTR [ebp-24]
.L722:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 44
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	DWORD PTR [ebp-12], 32
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [ebp+16]
	and	eax, DWORD PTR [ebp-12]
	je	.L724
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-24], eax
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	jmp	.L725
.L724:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L726
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	.L728
.L726:
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, DWORD PTR [ebp+16]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [ebp-28], eax
.L725:
	mov	eax, DWORD PTR [ebp-28]
	mov	edx, DWORD PTR [ebp-24]
.L728:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 24
	shr	edx, 24
	and	eax, 16711680
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 8
	sal	eax, 8
	mov	eax, 0
	and	edx, 255
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	mov	eax, 0
	and	edx, 16711680
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	or	eax, ecx
	or	edx, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	sal	eax, 24
	or	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	cmp	DWORD PTR [ebp-4], 65535
	ja	.L734
	mov	eax, 16
	jmp	.L735
.L734:
	mov	eax, 0
.L735:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 16
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 65280
	jne	.L736
	mov	eax, 8
	jmp	.L737
.L736:
	mov	eax, 0
.L737:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 8
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 240
	jne	.L738
	mov	eax, 4
	jmp	.L739
.L738:
	mov	eax, 0
.L739:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 4
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 12
	jne	.L740
	mov	eax, 2
	jmp	.L741
.L740:
	mov	eax, 0
.L741:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 2
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR [ebp-4]
	imul	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	cmp	edx, eax
	jge	.L744
	mov	eax, 0
	jmp	.L749
.L744:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	cmp	edx, eax
	jle	.L746
	mov	eax, 2
	jmp	.L749
.L746:
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	.L747
	mov	eax, 0
	jmp	.L749
.L747:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	.L748
	mov	eax, 2
	jmp	.L749
.L748:
	mov	eax, 1
.L749:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	push	DWORD PTR [ebp-12]
	push	DWORD PTR [ebp-16]
	push	DWORD PTR [ebp-4]
	push	DWORD PTR [ebp-8]
	call	__cmpdi2
	sub	eax, 1
	add	esp, 16
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, ax
	test	eax, eax
	jne	.L753
	mov	eax, 16
	jmp	.L754
.L753:
	mov	eax, 0
.L754:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, al
	test	eax, eax
	jne	.L755
	mov	eax, 8
	jmp	.L756
.L755:
	mov	eax, 0
.L756:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 15
	jne	.L757
	mov	eax, 4
	jmp	.L758
.L757:
	mov	eax, 0
.L758:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 3
	jne	.L759
	mov	eax, 2
	jmp	.L760
.L759:
	mov	eax, 0
.L760:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	and	DWORD PTR [ebp-4], 3
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	not	eax
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, ecx
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 44
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	DWORD PTR [ebp-12], 32
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], edx
	mov	eax, DWORD PTR [ebp+16]
	and	eax, DWORD PTR [ebp-12]
	je	.L763
	mov	DWORD PTR [ebp-24], 0
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	jmp	.L764
.L763:
	cmp	DWORD PTR [ebp+16], 0
	jne	.L765
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	.L767
.L765:
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-24], eax
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, DWORD PTR [ebp+16]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [ebp-28], eax
.L764:
	mov	eax, DWORD PTR [ebp-28]
	mov	edx, DWORD PTR [ebp-24]
.L767:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	sub	esp, 32
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	DWORD PTR [ebp-12], 16
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+8]
	and	eax, DWORD PTR [ebp-16]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	and	eax, DWORD PTR [ebp-16]
	imul	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	edx, DWORD PTR [ebp-28]
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-28]
	and	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [ebp+12]
	and	eax, DWORD PTR [ebp-16]
	imul	eax, edx
	add	DWORD PTR [ebp-20], eax
	mov	edx, DWORD PTR [ebp-28]
	mov	eax, DWORD PTR [ebp-20]
	and	eax, DWORD PTR [ebp-16]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp-20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-24], eax
	mov	edx, DWORD PTR [ebp-28]
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-28]
	and	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [ebp+8]
	and	eax, DWORD PTR [ebp-16]
	imul	eax, edx
	add	DWORD PTR [ebp-20], eax
	mov	edx, DWORD PTR [ebp-28]
	mov	eax, DWORD PTR [ebp-20]
	and	eax, DWORD PTR [ebp-16]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp-20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	add	eax, ebx
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	esi, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [ebp-12]
	mov	ebx, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	ebx, cl
	mov	eax, ebx
	imul	eax, edx
	add	eax, esi
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp-28]
	mov	edx, DWORD PTR [ebp-24]
	add	esp, 32
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 52
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-56], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-52], eax
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-56]
	mov	edx, DWORD PTR [ebp-52]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp-16]
	push	edx
	push	eax
	call	__muldsi3
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	eax, DWORD PTR [ebp-28]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-24]
	imul	edx, eax
	mov	eax, DWORD PTR [ebp-16]
	mov	ecx, DWORD PTR [ebp-20]
	imul	eax, ecx
	add	eax, edx
	add	eax, ebx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	esp, 8
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
	neg	eax
	adc	edx, 0
	neg	edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], edx
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	xor	eax, edx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 16
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 8
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 4
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 16
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 8
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 4
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 28
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 1
	shr	edx
	and	eax, 1431655765
	and	edx, 1431655765
	sub	DWORD PTR [ebp-16], eax
	sbb	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 2
	shr	edx, 2
	and	eax, 858993459
	and	edx, 858993459
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	and	eax, 858993459
	and	edx, 858993459
	add	eax, ecx
	adc	edx, ebx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 4
	shr	edx, 4
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, edx
	xor	edx, edx
	add	eax, ecx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-20]
	shr	eax, 16
	add	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-20]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	and	eax, 127
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax
	and	eax, 1431655765
	sub	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 16
	add	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	and	eax, 63
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [ebp-12], eax
	fld1
	fstp	QWORD PTR [ebp-8]
.L786:
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	je	.L783
	fld	QWORD PTR [ebp-8]
	fmul	QWORD PTR [ebp-24]
	fstp	QWORD PTR [ebp-8]
.L783:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+16], eax
	cmp	DWORD PTR [ebp+16], 0
	je	.L790
	fld	QWORD PTR [ebp-24]
	fmul	st, st(0)
	fstp	QWORD PTR [ebp-24]
	jmp	.L786
.L790:
	cmp	DWORD PTR [ebp-12], 0
	je	.L787
	fld1
	fdiv	QWORD PTR [ebp-8]
	jmp	.L789
.L787:
	fld	QWORD PTR [ebp-8]
.L789:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+12]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [ebp-8], eax
	fld1
	fstp	DWORD PTR [ebp-4]
.L796:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	.L793
	fld	DWORD PTR [ebp-4]
	fmul	DWORD PTR [ebp+8]
	fstp	DWORD PTR [ebp-4]
.L793:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+12], eax
	cmp	DWORD PTR [ebp+12], 0
	je	.L800
	fld	DWORD PTR [ebp+8]
	fmul	st, st(0)
	fstp	DWORD PTR [ebp+8]
	jmp	.L796
.L800:
	cmp	DWORD PTR [ebp-8], 0
	je	.L797
	fld1
	fdiv	DWORD PTR [ebp-4]
	jmp	.L799
.L797:
	fld	DWORD PTR [ebp-4]
.L799:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	cmp	edx, eax
	jnb	.L803
	mov	eax, 0
	jmp	.L808
.L803:
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp-12]
	cmp	edx, eax
	jnb	.L805
	mov	eax, 2
	jmp	.L808
.L805:
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	.L806
	mov	eax, 0
	jmp	.L808
.L806:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	.L807
	mov	eax, 2
	jmp	.L808
.L807:
	mov	eax, 1
.L808:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-20], eax
	mov	ecx, DWORD PTR [ebp-24]
	mov	ebx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	push	ebx
	push	ecx
	push	edx
	push	eax
	call	__ucmpdi2
	sub	eax, 1
	add	esp, 16
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
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
	.align 16
.LC8:
	.long	-1
	.long	-1
	.long	32766
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
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	16384
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	16447
	.align 4
.LC17:
	.long	1191182336
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
