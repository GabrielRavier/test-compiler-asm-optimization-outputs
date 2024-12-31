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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	cmp	eax, edx
	jnb	.L2
	add	eax, edi
	lea	ecx, [edx+edi]
	mov	ebx, edi
	mov	esi, ecx
	mov	ecx, eax
	jmp	.L3
.L4:
	mov	eax, edi
	neg	eax
	mov	edx, eax
	mov	eax, ecx
	sub	eax, edi
	movzx	eax, BYTE PTR [eax-1+ebx]
	add	edx, esi
	mov	BYTE PTR [edx-1+ebx], al
	sub	ebx, 1
.L3:
	test	ebx, ebx
	jne	.L4
	mov	edx, DWORD PTR [ebp+8]
	jmp	.L5
.L2:
	cmp	edx, eax
	je	.L5
	lea	esi, [edx+edi]
	mov	ecx, edx
	jmp	.L6
.L7:
	add	eax, 1
	add	ecx, 1
	movzx	ebx, BYTE PTR [eax-1]
	mov	BYTE PTR [ecx-1], bl
.L6:
	cmp	ecx, esi
	jne	.L7
.L5:
	mov	eax, edx
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+20]
	movzx	esi, BYTE PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L9
.L11:
	sub	edx, 1
	add	ebx, 1
	add	eax, 1
.L9:
	test	edx, edx
	je	.L10
	movzx	ecx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], cl
	movzx	ecx, cl
	cmp	esi, ecx
	jne	.L11
.L10:
	test	edx, edx
	je	.L13
	add	eax, 1
	jmp	.L12
.L13:
	mov	eax, 0
.L12:
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
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
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+16]
	movzx	ecx, BYTE PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L15
.L17:
	add	eax, 1
	sub	edx, 1
.L15:
	test	edx, edx
	je	.L16
	movzx	ebx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L17
.L16:
	test	edx, edx
	jne	.L18
	mov	eax, 0
.L18:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L21
.L23:
	sub	ecx, 1
	add	eax, 1
	add	edx, 1
.L21:
	test	ecx, ecx
	je	.L22
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	je	.L23
.L22:
	test	ecx, ecx
	je	.L25
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
	jmp	.L24
.L25:
	mov	eax, 0
.L24:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, edx
	add	ebx, DWORD PTR [ebp+16]
	mov	esi, ebx
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, edx
	jmp	.L27
.L28:
	add	ecx, 1
	add	eax, 1
	movzx	ebx, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], bl
.L27:
	cmp	eax, esi
	jne	.L28
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [ebp+8]
	movzx	ecx, BYTE PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	lea	edx, [ebx-1]
	jmp	.L30
.L32:
	movzx	esi, BYTE PTR [eax+edx]
	lea	ebx, [edx-1]
	cmp	ecx, esi
	jne	.L33
	add	eax, edx
	jmp	.L31
.L33:
	mov	edx, ebx
.L30:
	cmp	edx, -1
	jne	.L32
	mov	eax, 0
.L31:
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
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
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, edx
	add	ecx, DWORD PTR [ebp+16]
	mov	eax, edx
	jmp	.L35
.L36:
	movzx	ebx, BYTE PTR [ebp+12]
	mov	BYTE PTR [eax], bl
	add	eax, 1
.L35:
	cmp	eax, ecx
	jne	.L36
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	.L38
.L39:
	add	edx, 1
	add	eax, 1
.L38:
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L39
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
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, BYTE PTR [ebp+12]
	jmp	.L41
.L43:
	add	eax, 1
.L41:
	cmp	BYTE PTR [eax], 0
	je	.L42
	movzx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	.L43
.L42:
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
.L46:
	movsx	edx, BYTE PTR [eax]
	cmp	DWORD PTR [ebp+12], edx
	je	.L45
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	.L46
	mov	eax, 0
.L45:
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	.L49
.L51:
	add	eax, 1
	add	edx, 1
.L49:
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	jne	.L50
	cmp	BYTE PTR [eax], 0
	jne	.L51
.L50:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	jmp	.L53
.L54:
	add	eax, 1
.L53:
	cmp	BYTE PTR [eax], 0
	jne	.L54
	sub	eax, edx
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmp	DWORD PTR [ebp+16], 0
	je	.L60
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L57
.L59:
	add	eax, 1
	add	edx, 1
.L57:
	cmp	BYTE PTR [eax], 0
	je	.L58
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+16]
	lea	esi, [edi-1+ebx]
	cmp	eax, esi
	setne	cl
	mov	edi, ecx
	cmp	BYTE PTR [edx], 0
	setne	cl
	mov	esi, ecx
	mov	ecx, edi
	mov	ebx, esi
	test	cl, bl
	je	.L58
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	je	.L59
.L58:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
	jmp	.L56
.L60:
	mov	eax, 0
.L56:
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ecx
	jmp	.L62
.L63:
	movzx	ebx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], bl
	movzx	ebx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], bl
	add	edx, 2
	add	eax, 2
.L62:
	mov	ebx, ecx
	add	ebx, DWORD PTR [ebp+16]
	sub	ebx, eax
	cmp	ebx, 1
	jg	.L63
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	cmp	DWORD PTR [ebp+8], 127
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
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 32
	sete	dl
	cmp	eax, 9
	sete	al
	or	eax, edx
	movzx	eax, al
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
	mov	edx, DWORD PTR [ebp+8]
	cmp	edx, 31
	setbe	al
	cmp	edx, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
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
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 32
	sete	dl
	sub	eax, 9
	cmp	eax, 4
	setbe	al
	or	eax, edx
	movzx	eax, al
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
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 31
	setbe	dl
	lea	ecx, [eax-127]
	cmp	ecx, 32
	setbe	cl
	or	dl, cl
	jne	.L76
	lea	edx, [eax-8232]
	cmp	edx, 1
	jbe	.L77
	sub	eax, 65529
	cmp	eax, 2
	ja	.L78
	mov	eax, 1
	jmp	.L75
.L76:
	mov	eax, 1
	jmp	.L75
.L77:
	mov	eax, 1
	jmp	.L75
.L78:
	mov	eax, 0
.L75:
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
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 254
	ja	.L81
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	al
	movzx	eax, al
	jmp	.L82
.L81:
	cmp	eax, 8231
	setbe	dl
	lea	ecx, [eax-8234]
	cmp	ecx, 47061
	setbe	cl
	or	dl, cl
	jne	.L83
	lea	edx, [eax-57344]
	cmp	edx, 8184
	jbe	.L84
	lea	edx, [eax-65532]
	cmp	edx, 1048579
	ja	.L85
	not	eax
	test	eax, 65534
	je	.L86
	mov	eax, 1
	jmp	.L82
.L83:
	mov	eax, 1
	jmp	.L82
.L84:
	mov	eax, 1
	jmp	.L82
.L85:
	mov	eax, 0
	jmp	.L82
.L86:
	mov	eax, 0
.L82:
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
	lea	edx, [eax-48]
	cmp	edx, 9
	jbe	.L89
	or	eax, 32
	sub	eax, 97
	cmp	eax, 5
	ja	.L90
	mov	eax, 1
	jmp	.L88
.L89:
	mov	eax, 1
	jmp	.L88
.L90:
	mov	eax, 0
.L88:
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
	fld	QWORD PTR [ebp+16]
	fld	QWORD PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L95
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L100
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L99
	fsubrp	st(1), st
	jmp	.L93
.L95:
	fstp	st(1)
	jmp	.L93
.L99:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L93
.L100:
	fstp	st(1)
.L93:
	pop	ebp
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
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L104
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L109
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L108
	fsubrp	st(1), st
	jmp	.L102
.L104:
	fstp	st(1)
	jmp	.L102
.L108:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L102
.L109:
	fstp	st(1)
.L102:
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
	fld	QWORD PTR [ebp+16]
	fld	QWORD PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L114
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L120
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L112
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L121
	fstp	st(0)
	jmp	.L111
.L112:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L122
	fstp	st(1)
	jmp	.L111
.L114:
	fstp	st(0)
	jmp	.L111
.L120:
	fstp	st(0)
	jmp	.L111
.L121:
	fstp	st(1)
	jmp	.L111
.L122:
	fstp	st(0)
.L111:
	pop	ebp
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
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L127
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L133
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L125
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L134
	fstp	st(0)
	jmp	.L124
.L125:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L135
	fstp	st(1)
	jmp	.L124
.L127:
	fstp	st(0)
	jmp	.L124
.L133:
	fstp	st(0)
	jmp	.L124
.L134:
	fstp	st(1)
	jmp	.L124
.L135:
	fstp	st(0)
.L124:
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
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L140
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L146
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L138
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L147
	fstp	st(0)
	jmp	.L137
.L138:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L148
	fstp	st(1)
	jmp	.L137
.L140:
	fstp	st(0)
	jmp	.L137
.L146:
	fstp	st(0)
	jmp	.L137
.L147:
	fstp	st(1)
	jmp	.L137
.L148:
	fstp	st(0)
.L137:
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
	fld	QWORD PTR [ebp+16]
	fld	QWORD PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L159
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L154
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L151
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L160
	fstp	st(1)
	jmp	.L150
.L151:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L161
	fstp	st(0)
	jmp	.L150
.L154:
	fstp	st(0)
	jmp	.L150
.L159:
	fstp	st(0)
	jmp	.L150
.L160:
	fstp	st(0)
	jmp	.L150
.L161:
	fstp	st(1)
.L150:
	pop	ebp
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
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L172
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L167
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L164
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L173
	fstp	st(1)
	jmp	.L163
.L164:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L174
	fstp	st(0)
	jmp	.L163
.L167:
	fstp	st(0)
	jmp	.L163
.L172:
	fstp	st(0)
	jmp	.L163
.L173:
	fstp	st(0)
	jmp	.L163
.L174:
	fstp	st(1)
.L163:
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
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L185
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L180
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L177
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L186
	fstp	st(1)
	jmp	.L176
.L177:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L187
	fstp	st(0)
	jmp	.L176
.L180:
	fstp	st(0)
	jmp	.L176
.L185:
	fstp	st(0)
	jmp	.L176
.L186:
	fstp	st(0)
	jmp	.L176
.L187:
	fstp	st(1)
.L176:
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, OFFSET FLAT:s.0
	jmp	.L189
.L190:
	mov	ecx, edx
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [eax], cl
	add	eax, 1
	shr	edx, 6
.L189:
	test	edx, edx
	jne	.L190
	mov	BYTE PTR [eax], 0
	mov	eax, OFFSET FLAT:s.0
	pop	ebp
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
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, 0
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR seed
	mov	esi, DWORD PTR seed+4
	imul	ecx, esi, 1284865837
	imul	edx, ebx, 1481765933
	add	ecx, edx
	mov	edx, 1284865837
	mov	eax, ebx
	mul	edx
	add	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, edx
	mov	eax, edx
	xor	edx, edx
	shr	eax
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	edx, edx
	jne	.L194
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	jmp	.L193
.L194:
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	cmp	DWORD PTR [eax], 0
	je	.L193
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [edx+4], eax
.L193:
	pop	ebp
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
	mov	eax, DWORD PTR [ebp+8]
	cmp	DWORD PTR [eax], 0
	je	.L197
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L197:
	cmp	DWORD PTR [eax+4], 0
	je	.L196
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
.L196:
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+20]
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-28], eax
	mov	ebx, 0
	jmp	.L200
.L203:
	sub	esp, 8
	push	DWORD PTR [ebp-28]
	push	DWORD PTR [ebp+8]
	call	[DWORD PTR [ebp+24]]
	add	esp, 16
	add	DWORD PTR [ebp-28], edi
	test	eax, eax
	jne	.L201
	imul	ebx, edi
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	.L202
.L201:
	add	ebx, 1
.L200:
	cmp	ebx, esi
	jne	.L203
	lea	eax, [esi+1]
	mov	ecx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	imul	esi, edi
	mov	eax, esi
	add	eax, DWORD PTR [ebp+12]
	sub	esp, 4
	push	edi
	push	DWORD PTR [ebp+8]
	push	eax
	call	memcpy
	add	esp, 16
.L202:
	lea	esp, [ebp-12]
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [eax]
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, 0
	jmp	.L205
.L208:
	sub	esp, 8
	push	esi
	push	DWORD PTR [ebp+8]
	call	[DWORD PTR [ebp+24]]
	add	esp, 16
	add	esi, DWORD PTR [ebp+20]
	test	eax, eax
	jne	.L206
	imul	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	.L207
.L206:
	add	ebx, 1
.L205:
	cmp	ebx, edi
	jne	.L208
	mov	eax, 0
.L207:
	lea	esp, [ebp-12]
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
	xor	eax, edx
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
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+8]
	jmp	.L211
.L212:
	add	ebx, 1
.L211:
	movsx	eax, BYTE PTR [ebx]
	sub	esp, 12
	push	eax
	call	isspace
	add	esp, 16
	test	eax, eax
	jne	.L212
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L218
	cmp	eax, 45
	jne	.L219
	mov	edx, 1
	jmp	.L213
.L218:
	mov	edx, 0
.L213:
	add	ebx, 1
	jmp	.L214
.L219:
	mov	edx, 0
.L214:
	mov	eax, 0
	jmp	.L215
.L216:
	lea	ecx, [eax+eax*4]
	lea	eax, [ecx+ecx]
	add	ebx, 1
	movsx	ecx, BYTE PTR [ebx-1]
	sub	ecx, 48
	sub	eax, ecx
.L215:
	movsx	ecx, BYTE PTR [ebx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L216
	test	edx, edx
	jne	.L217
	neg	eax
.L217:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+8]
	jmp	.L222
.L223:
	add	ebx, 1
.L222:
	movsx	eax, BYTE PTR [ebx]
	sub	esp, 12
	push	eax
	call	isspace
	add	esp, 16
	test	eax, eax
	jne	.L223
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L229
	cmp	eax, 45
	jne	.L230
	mov	edx, 1
	jmp	.L224
.L229:
	mov	edx, 0
.L224:
	add	ebx, 1
	jmp	.L225
.L230:
	mov	edx, 0
.L225:
	mov	eax, 0
	jmp	.L226
.L227:
	lea	ecx, [eax+eax*4]
	lea	eax, [ecx+ecx]
	add	ebx, 1
	movsx	ecx, BYTE PTR [ebx-1]
	sub	ecx, 48
	sub	eax, ecx
.L226:
	movsx	ecx, BYTE PTR [ebx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L227
	test	edx, edx
	jne	.L228
	neg	eax
.L228:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	jmp	.L233
.L234:
	add	ebx, 1
.L233:
	movsx	eax, BYTE PTR [ebx]
	sub	esp, 12
	push	eax
	call	isspace
	add	esp, 16
	test	eax, eax
	jne	.L234
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L240
	cmp	eax, 45
	jne	.L241
	mov	ecx, 1
	jmp	.L235
.L240:
	mov	ecx, 0
.L235:
	add	ebx, 1
	jmp	.L236
.L241:
	mov	ecx, 0
.L236:
	mov	esi, 0
	mov	edi, 0
	jmp	.L237
.L238:
	mov	eax, esi
	mov	edx, edi
	shld	edx, eax, 2
	sal	eax, 2
	add	eax, esi
	adc	edx, edi
	add	eax, eax
	adc	edx, edx
	mov	esi, eax
	mov	edi, edx
	add	ebx, 1
	movsx	eax, BYTE PTR [ebx-1]
	sub	eax, 48
	cdq
	sub	esi, eax
	sbb	edi, edx
.L237:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L238
	test	ecx, ecx
	jne	.L242
	mov	eax, esi
	mov	edx, edi
	neg	eax
	adc	edx, 0
	neg	edx
	jmp	.L239
.L242:
	mov	eax, esi
	mov	edx, edi
.L239:
	lea	esp, [ebp-12]
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+20]
	jmp	.L244
.L248:
	mov	ebx, esi
	shr	ebx
	imul	ebx, edi
	add	ebx, DWORD PTR [ebp+12]
	sub	esp, 8
	push	ebx
	push	DWORD PTR [ebp+8]
	call	[DWORD PTR [ebp+24]]
	add	esp, 16
	test	eax, eax
	jns	.L245
	shr	esi
	jmp	.L244
.L245:
	test	eax, eax
	jle	.L249
	lea	eax, [ebx+edi]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, esi
	shr	eax
	sub	esi, 1
	sub	esi, eax
.L244:
	test	esi, esi
	jne	.L248
	mov	eax, 0
	jmp	.L247
.L249:
	mov	eax, ebx
.L247:
	lea	esp, [ebp-12]
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+12]
	jmp	.L251
.L254:
	mov	ebx, esi
	sar	ebx
	imul	ebx, DWORD PTR [ebp+20]
	add	ebx, edi
	sub	esp, 4
	push	DWORD PTR [ebp+28]
	push	ebx
	push	DWORD PTR [ebp+8]
	call	[DWORD PTR [ebp+24]]
	add	esp, 16
	test	eax, eax
	je	.L255
	test	eax, eax
	jle	.L253
	mov	edi, ebx
	add	edi, DWORD PTR [ebp+20]
	sub	esi, 1
.L253:
	sar	esi
.L251:
	test	esi, esi
	jne	.L254
	mov	eax, 0
	jmp	.L252
.L255:
	mov	eax, ebx
.L252:
	lea	esp, [ebp-12]
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	cdq
	idiv	DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	mov	eax, ecx
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
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, eax
	mov	ebx, edx
	mov	ebx, ebx
	sar	ebx, 31
	mov	ecx, ebx
	xor	eax, ecx
	xor	edx, ebx
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
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	push	edx
	push	eax
	push	edi
	push	esi
	call	__divdi3
	add	esp, 16
	mov	DWORD PTR [ebp-40], eax
	mov	DWORD PTR [ebp-36], edx
	push	DWORD PTR [ebp-28]
	push	DWORD PTR [ebp-32]
	push	edi
	push	esi
	call	__moddi3
	add	esp, 16
	mov	esi, DWORD PTR [ebp-40]
	mov	edi, DWORD PTR [ebp-36]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_restore 3
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
	xor	eax, edx
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	cdq
	idiv	DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	mov	eax, ecx
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
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, eax
	mov	ebx, edx
	mov	ebx, ebx
	sar	ebx, 31
	mov	ecx, ebx
	xor	eax, ecx
	xor	edx, ebx
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
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	push	edx
	push	eax
	push	edi
	push	esi
	call	__divdi3
	add	esp, 16
	mov	DWORD PTR [ebp-40], eax
	mov	DWORD PTR [ebp-36], edx
	push	DWORD PTR [ebp-28]
	push	DWORD PTR [ebp-32]
	push	edi
	push	esi
	call	__moddi3
	add	esp, 16
	mov	esi, DWORD PTR [ebp-40]
	mov	edi, DWORD PTR [ebp-36]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_restore 3
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	.L264
.L266:
	add	eax, 4
.L264:
	cmp	DWORD PTR [eax], 0
	je	.L265
	cmp	edx, DWORD PTR [eax]
	jne	.L266
.L265:
	cmp	DWORD PTR [eax], 0
	jne	.L267
	mov	eax, 0
.L267:
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	jmp	.L270
.L272:
	add	edx, 4
	add	eax, 4
.L270:
	mov	ecx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ecx
	jne	.L271
	cmp	DWORD PTR [edx], 0
	je	.L271
	test	ecx, ecx
	jne	.L272
.L271:
	mov	ecx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ecx
	jl	.L274
	mov	eax, ecx
	setg	al
	movzx	eax, al
	jmp	.L273
.L274:
	mov	eax, -1
.L273:
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ecx
.L276:
	add	edx, 4
	add	eax, 4
	mov	ebx, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], ebx
	test	ebx, ebx
	jne	.L276
	mov	eax, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	jmp	.L278
.L279:
	add	eax, 4
.L278:
	cmp	DWORD PTR [eax], 0
	jne	.L279
	sub	eax, edx
	sar	eax, 2
	pop	ebp
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
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	jmp	.L281
.L283:
	sub	ecx, 1
	add	edx, 4
	add	eax, 4
.L281:
	test	ecx, ecx
	je	.L282
	mov	ebx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ebx
	jne	.L282
	cmp	DWORD PTR [edx], 0
	je	.L282
	test	ebx, ebx
	jne	.L283
.L282:
	test	ecx, ecx
	je	.L285
	mov	ebx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ebx
	jl	.L286
	mov	eax, ebx
	setg	al
	movzx	eax, al
	jmp	.L284
.L285:
	mov	eax, 0
	jmp	.L284
.L286:
	mov	eax, -1
.L284:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	jmp	.L288
.L290:
	sub	edx, 1
	add	eax, 4
.L288:
	test	edx, edx
	je	.L289
	cmp	ecx, DWORD PTR [eax]
	jne	.L290
.L289:
	test	edx, edx
	jne	.L291
	mov	eax, 0
.L291:
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
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	jmp	.L294
.L296:
	sub	ecx, 1
	add	edx, 4
	add	eax, 4
.L294:
	test	ecx, ecx
	je	.L295
	mov	ebx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ebx
	je	.L296
.L295:
	test	ecx, ecx
	je	.L298
	mov	ebx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ebx
	jl	.L299
	mov	eax, ebx
	setg	al
	movzx	eax, al
	jmp	.L297
.L298:
	mov	eax, 0
	jmp	.L297
.L299:
	mov	eax, -1
.L297:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	mov	eax, ebx
	jmp	.L301
.L302:
	add	ecx, 4
	add	eax, 4
	mov	esi, DWORD PTR [ecx-4]
	mov	DWORD PTR [eax-4], esi
.L301:
	sub	edx, 1
	cmp	edx, -1
	jne	.L302
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	edx, ebx
	je	.L304
	mov	esi, edx
	sub	esi, ebx
	lea	ecx, [0+eax*4]
	cmp	esi, ecx
	jb	.L305
	mov	ecx, 0
	jmp	.L306
.L307:
	mov	ecx, DWORD PTR [ebx+eax*4]
	mov	DWORD PTR [edx+eax*4], ecx
.L305:
	sub	eax, 1
	cmp	eax, -1
	jne	.L307
	jmp	.L304
.L308:
	mov	esi, DWORD PTR [ebx+ecx*4]
	mov	DWORD PTR [edx+ecx*4], esi
	add	ecx, 1
.L306:
	cmp	ecx, eax
	jne	.L308
.L304:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+16]
	mov	eax, ecx
	jmp	.L310
.L311:
	add	eax, 4
	mov	ebx, DWORD PTR [ebp+12]
	mov	DWORD PTR [eax-4], ebx
.L310:
	sub	edx, 1
	cmp	edx, -1
	jne	.L311
	mov	eax, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 4
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	cmp	edx, eax
	jnb	.L313
	lea	ebx, [edx+ecx]
	mov	DWORD PTR [ebp-16], ebx
	add	eax, ecx
	mov	ebx, ecx
	jmp	.L314
.L315:
	mov	esi, ecx
	neg	esi
	mov	edi, DWORD PTR [ebp-16]
	sub	edi, ecx
	movzx	edi, BYTE PTR [edi-1+ebx]
	add	esi, eax
	mov	edx, edi
	mov	BYTE PTR [esi-1+ebx], dl
	sub	ebx, 1
.L314:
	test	ebx, ebx
	jne	.L315
	jmp	.L312
.L313:
	cmp	edx, eax
	je	.L312
	add	ecx, eax
	mov	DWORD PTR [ebp-16], edx
	jmp	.L317
.L318:
	add	DWORD PTR [ebp-16], 1
	mov	edx, DWORD PTR [ebp-16]
	add	eax, 1
	movzx	ebx, BYTE PTR [edx-1]
	mov	BYTE PTR [eax-1], bl
.L317:
	cmp	eax, ecx
	jne	.L318
.L312:
	add	esp, 4
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L320
	mov	edi, esi
	xor	esi, esi
.L320:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L321
	mov	eax, edx
	xor	edx, edx
.L321:
	or	eax, esi
	or	edx, edi
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L323
	mov	esi, edi
	xor	edi, edi
.L323:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L324
	mov	edx, eax
	xor	eax, eax
.L324:
	or	eax, esi
	or	edx, edi
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	rol	eax, cl
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	ror	eax, cl
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	rol	eax, cl
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	ror	eax, cl
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
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [ebp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
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
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [ebp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
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
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [ebp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
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
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [ebp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
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
	movzx	edx, WORD PTR [ebp+8]
	movzx	eax, dh
	sal	edx, 8
	or	eax, edx
	pop	ebp
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
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, edx
	shr	ecx, 24
	mov	eax, edx
	and	eax, 16711680
	shr	eax, 8
	or	eax, ecx
	mov	ecx, edx
	and	ecx, 65280
	sal	ecx, 8
	or	eax, ecx
	sal	edx, 24
	or	eax, edx
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	esi, ecx
	mov	edi, ebx
	mov	esi, edi
	xor	edi, edi
	shr	esi, 24
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, 0
	and	edx, 16711680
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, 0
	and	edx, 65280
	shrd	eax, edx, 24
	shr	edx, 24
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, 0
	and	edx, 255
	shrd	eax, edx, 8
	shr	edx, 8
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	mov	edx, ebx
	and	eax, -16777216
	mov	edx, 0
	shld	edx, eax, 8
	sal	eax, 8
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	mov	edx, ebx
	and	eax, 16711680
	mov	edx, 0
	shld	edx, eax, 24
	sal	eax, 24
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	mov	edx, ebx
	and	eax, 65280
	mov	edx, 0
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	or	eax, esi
	or	edx, edi
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	or	eax, ecx
	or	edx, ebx
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, 0
	jmp	.L337
.L340:
	bt	edx, eax
	jnc	.L338
	add	eax, 1
	jmp	.L339
.L338:
	add	eax, 1
.L337:
	cmp	eax, 32
	jne	.L340
	mov	eax, 0
.L339:
	pop	ebp
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
	mov	edx, DWORD PTR [ebp+8]
	test	edx, edx
	je	.L345
	mov	eax, 1
	jmp	.L343
.L344:
	sar	edx
	add	eax, 1
.L343:
	test	dl, 1
	je	.L344
	jmp	.L342
.L345:
	mov	eax, 0
.L342:
	pop	ebp
	.cfi_restore 5
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
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR .LC2
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L349
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	jbe	.L352
	mov	eax, 1
	jmp	.L347
.L349:
	fstp	st(0)
	mov	eax, 1
	jmp	.L347
.L352:
	mov	eax, 0
.L347:
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
	fld	QWORD PTR [ebp+8]
	fld	QWORD PTR .LC4
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L356
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	jbe	.L359
	mov	eax, 1
	jmp	.L354
.L356:
	fstp	st(0)
	mov	eax, 1
	jmp	.L354
.L359:
	mov	eax, 0
.L354:
	pop	ebp
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
	fld	TBYTE PTR .LC6
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L363
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	jbe	.L366
	mov	eax, 1
	jmp	.L361
.L363:
	fstp	st(0)
	mov	eax, 1
	jmp	.L361
.L366:
	mov	eax, 0
.L361:
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
	fld	DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L369
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L375
	je	.L369
.L375:
	test	edx, edx
	jns	.L374
	fld	DWORD PTR .LC8
	jmp	.L373
.L374:
	fld	DWORD PTR .LC9
.L373:
	test	dl, 1
	je	.L372
	fmul	st(1), st
.L372:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L376
	fmul	st, st(0)
	jmp	.L373
.L376:
	fstp	st(0)
.L369:
	pop	ebp
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
	fld	QWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+16]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L378
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L384
	je	.L378
.L384:
	test	edx, edx
	jns	.L383
	fld	DWORD PTR .LC8
	jmp	.L382
.L383:
	fld	DWORD PTR .LC9
.L382:
	test	dl, 1
	je	.L381
	fmul	st(1), st
.L381:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L385
	fmul	st, st(0)
	jmp	.L382
.L385:
	fstp	st(0)
.L378:
	pop	ebp
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
	fld	TBYTE PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+20]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L387
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L393
	je	.L387
.L393:
	test	edx, edx
	jns	.L392
	fld	DWORD PTR .LC8
	jmp	.L391
.L392:
	fld	DWORD PTR .LC9
.L391:
	test	dl, 1
	je	.L390
	fmul	st(1), st
.L390:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L394
	fmul	st, st(0)
	jmp	.L391
.L394:
	fstp	st(0)
.L387:
	pop	ebp
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	mov	esi, edx
	add	esi, DWORD PTR [ebp+16]
	mov	eax, edx
	mov	ecx, DWORD PTR [ebp+12]
	jmp	.L396
.L397:
	add	ecx, 1
	add	eax, 1
	movzx	ebx, BYTE PTR [eax-1]
	xor	bl, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], bl
.L396:
	cmp	eax, esi
	jne	.L397
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 24
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	push	esi
	call	strlen
	add	esp, 16
	add	eax, esi
	jmp	.L399
.L401:
	add	edi, 1
	add	eax, 1
	sub	ebx, 1
.L399:
	test	ebx, ebx
	je	.L400
	movzx	edx, BYTE PTR [edi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	.L401
.L400:
	test	ebx, ebx
	jne	.L402
	mov	BYTE PTR [eax], 0
.L402:
	mov	eax, esi
	lea	esp, [ebp-12]
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, 0
	jmp	.L404
.L406:
	add	eax, 1
.L404:
	cmp	eax, edx
	je	.L405
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L406
.L405:
	pop	ebp
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
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L408
.L410:
	add	edx, 1
	movzx	ecx, BYTE PTR [eax]
	cmp	BYTE PTR [edx-1], cl
	je	.L409
	jmp	.L411
.L413:
	mov	edx, DWORD PTR [ebp+12]
.L411:
	cmp	BYTE PTR [edx], 0
	jne	.L410
	add	eax, 1
.L408:
	cmp	BYTE PTR [eax], 0
	jne	.L413
	mov	eax, 0
.L409:
	pop	ebp
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
.L416:
	movsx	ecx, BYTE PTR [eax]
	cmp	DWORD PTR [ebp+12], ecx
	jne	.L415
	mov	edx, eax
.L415:
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	.L416
	mov	eax, edx
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 40
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	push	edi
	call	strlen
	add	esp, 16
	mov	esi, eax
	test	esi, esi
	je	.L419
	movsx	eax, BYTE PTR [edi]
	mov	DWORD PTR [ebp-28], eax
	jmp	.L420
.L421:
	sub	esp, 4
	push	esi
	push	edi
	push	ebx
	call	strncmp
	add	esp, 16
	test	eax, eax
	je	.L419
	add	ebx, 1
.L420:
	sub	esp, 8
	push	DWORD PTR [ebp-28]
	push	ebx
	call	strchr
	add	esp, 16
	mov	ebx, eax
	test	ebx, ebx
	jne	.L421
.L419:
	mov	eax, ebx
	lea	esp, [ebp-12]
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
	fld	QWORD PTR [ebp+8]
	fld	QWORD PTR [ebp+16]
	fldz
	fcomp	st(2)
	fnstsw	ax
	sahf
	jbe	.L437
	ftst
	fnstsw	ax
	sahf
	ja	.L438
	fxch	st(1)
	jmp	.L425
.L437:
	fxch	st(1)
.L425:
	ftst
	fnstsw	ax
	sahf
	jbe	.L439
	fldz
	fcomp	st(2)
	fnstsw	ax
	fstp	st(1)
	sahf
	jbe	.L428
	jmp	.L427
.L438:
	fstp	st(0)
.L427:
	fchs
	jmp	.L428
.L439:
	fstp	st(1)
.L428:
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	esi, DWORD PTR [ebp+20]
	mov	edi, eax
	sub	edi, esi
	add	edi, ebx
	test	esi, esi
	je	.L441
	cmp	eax, esi
	setb	al
	test	al, al
	jne	.L446
	jmp	.L442
.L444:
	mov	eax, DWORD PTR [ebp+16]
	movzx	eax, BYTE PTR [eax]
	cmp	BYTE PTR [ebx], al
	jne	.L443
	lea	ecx, [esi-1]
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax+1]
	lea	eax, [ebx+1]
	sub	esp, 4
	push	ecx
	push	edx
	push	eax
	call	memcmp
	add	esp, 16
	test	eax, eax
	je	.L441
.L443:
	add	ebx, 1
.L442:
	cmp	edi, ebx
	jnb	.L444
	mov	ebx, 0
	jmp	.L441
.L446:
	mov	ebx, 0
.L441:
	mov	eax, ebx
	lea	esp, [ebp-12]
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
	push	ebx
	sub	esp, 8
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+16]
	push	ebx
	push	DWORD PTR [ebp+12]
	push	DWORD PTR [ebp+8]
	call	memcpy
	add	esp, 16
	add	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	fld	QWORD PTR [ebp+8]
	fldz
	fcomp	st(1)
	fnstsw	ax
	sahf
	jbe	.L465
	fchs
	mov	ecx, 1
	jmp	.L450
.L465:
	mov	ecx, 0
.L450:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L462
	jmp	.L466
.L454:
	add	edx, 1
	fmul	DWORD PTR .LC8
	jmp	.L452
.L462:
	mov	edx, 0
.L452:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L454
	jmp	.L455
.L466:
	mov	edx, 1
	fldz
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L456
	jne	.L456
	mov	edx, 0
.L456:
	fld	DWORD PTR .LC8
	fcomp	st(1)
	fnstsw	ax
	sahf
	seta	al
	test	al, dl
	jne	.L463
	mov	edx, 0
	jmp	.L455
.L459:
	sub	edx, 1
	fadd	st, st(0)
	jmp	.L458
.L463:
	mov	edx, 0
.L458:
	fld	DWORD PTR .LC8
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L459
.L455:
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L460
	fchs
.L460:
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 20
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+20]
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-32], 0
	mov	DWORD PTR [ebp-28], 0
	jmp	.L468
.L470:
	mov	ecx, eax
	mov	ebx, edx
	and	ecx, 1
	mov	ebx, 0
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp-20], ebx
	mov	ecx, DWORD PTR [ebp-24]
	mov	ebx, DWORD PTR [ebp-20]
	or	ecx, ebx
	je	.L469
	add	DWORD PTR [ebp-32], esi
	adc	DWORD PTR [ebp-28], edi
.L469:
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
.L468:
	mov	ecx, eax
	or	ecx, edx
	jne	.L470
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	esp, 20
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 1
	jmp	.L472
.L474:
	add	edx, edx
	add	ecx, ecx
.L472:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L479
	test	edx, edx
	jns	.L474
	mov	ebx, 0
	jmp	.L476
.L477:
	cmp	edi, edx
	jb	.L475
	sub	edi, edx
	or	ebx, ecx
.L475:
	shr	ecx
	shr	edx
	jmp	.L476
.L479:
	mov	ebx, 0
.L476:
	test	ecx, ecx
	jne	.L477
	cmp	DWORD PTR [ebp+16], 0
	jne	.L480
	mov	eax, ebx
	jmp	.L478
.L480:
	mov	eax, edi
.L478:
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
	movzx	eax, BYTE PTR [ebp+8]
	test	al, al
	jns	.L482
	not	eax
.L482:
	test	al, al
	je	.L484
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	sub	eax, 1
	jmp	.L483
.L484:
	mov	eax, 7
.L483:
	pop	ebp
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	edx, edx
	jns	.L486
	not	eax
	not	edx
.L486:
	mov	ecx, eax
	or	ecx, edx
	je	.L490
	test	edx, edx
	je	.L488
	bsr	eax, edx
	xor	eax, 31
	jmp	.L489
.L488:
	bsr	eax, eax
	xor	eax, 31
	add	eax, 32
.L489:
	sub	eax, 1
	jmp	.L487
.L490:
	mov	eax, 63
.L487:
	pop	ebp
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
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, 0
	jmp	.L492
.L494:
	test	al, 1
	je	.L493
	add	edx, ecx
.L493:
	shr	eax
	add	ecx, ecx
.L492:
	test	eax, eax
	jne	.L494
	mov	eax, edx
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, eax
	shr	edi, 3
	mov	ecx, eax
	and	ecx, -8
	cmp	ebx, edx
	jb	.L496
	lea	esi, [edx+eax]
	cmp	esi, ebx
	jnb	.L497
.L496:
	mov	esi, edx
	mov	DWORD PTR [ebp-20], ebx
	lea	edi, [edx+edi*8]
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp+12], edx
	mov	DWORD PTR [ebp+16], eax
	jmp	.L498
.L499:
	mov	ecx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [esi]
	mov	edx, DWORD PTR [esi+4]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	add	esi, 8
	add	ecx, 8
	mov	DWORD PTR [ebp-20], ecx
.L498:
	cmp	esi, edi
	jne	.L499
	mov	ecx, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, eax
	jmp	.L500
.L501:
	movzx	eax, BYTE PTR [edx+ecx]
	mov	BYTE PTR [ebx+ecx], al
	add	ecx, 1
.L500:
	cmp	ecx, esi
	jb	.L501
	jmp	.L495
.L503:
	movzx	ecx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ebx+eax], cl
.L497:
	sub	eax, 1
	cmp	eax, -1
	jne	.L503
.L495:
	add	esp, 12
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, eax
	shr	edi
	cmp	ecx, edx
	jb	.L506
	lea	ebx, [edx+eax]
	cmp	ebx, ecx
	jnb	.L507
.L506:
	mov	ebx, edx
	mov	esi, ecx
	lea	edi, [edx+edi*2]
	mov	DWORD PTR [ebp+16], eax
	jmp	.L508
.L509:
	movzx	eax, WORD PTR [ebx]
	mov	WORD PTR [esi], ax
	add	ebx, 2
	add	esi, 2
.L508:
	cmp	ebx, edi
	jne	.L509
	mov	eax, DWORD PTR [ebp+16]
	test	al, 1
	je	.L505
	movzx	edx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], dl
	sub	eax, 1
	jmp	.L505
.L511:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
.L507:
	sub	eax, 1
	cmp	eax, -1
	jne	.L511
.L505:
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 4
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, eax
	shr	edi, 2
	mov	ecx, eax
	and	ecx, -4
	cmp	ebx, edx
	jb	.L514
	lea	esi, [edx+eax]
	cmp	esi, ebx
	jnb	.L515
.L514:
	mov	esi, edx
	mov	DWORD PTR [ebp-16], ebx
	lea	edi, [edx+edi*4]
	mov	DWORD PTR [ebp+12], edx
	mov	DWORD PTR [ebp+16], eax
	jmp	.L516
.L517:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [esi]
	mov	DWORD PTR [eax], edx
	add	esi, 4
	add	eax, 4
	mov	DWORD PTR [ebp-16], eax
.L516:
	cmp	esi, edi
	jne	.L517
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, eax
	jmp	.L518
.L519:
	movzx	eax, BYTE PTR [edx+ecx]
	mov	BYTE PTR [ebx+ecx], al
	add	ecx, 1
.L518:
	cmp	ecx, esi
	jb	.L519
	jmp	.L513
.L521:
	movzx	ecx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ebx+eax], cl
.L515:
	sub	eax, 1
	cmp	eax, -1
	jne	.L521
.L513:
	add	esp, 4
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
	sub	esp, 8
	fild	QWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp+12], 0
	jns	.L527
	fadd	DWORD PTR .LC11
.L527:
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
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
	sub	esp, 8
	fild	QWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp+12], 0
	jns	.L529
	fadd	DWORD PTR .LC11
.L529:
	fstp	DWORD PTR [ebp-4]
	fld	DWORD PTR [ebp-4]
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
	push	ebx
	.cfi_offset 3, -12
	movzx	ebx, WORD PTR [ebp+8]
	mov	eax, 0
	jmp	.L532
.L534:
	movzx	ecx, bx
	mov	edx, 15
	sub	edx, eax
	bt	ecx, edx
	jc	.L533
	add	eax, 1
.L532:
	cmp	eax, 16
	jne	.L534
.L533:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	movzx	edx, WORD PTR [ebp+8]
	mov	eax, 0
	jmp	.L536
.L538:
	movzx	ecx, dx
	bt	ecx, eax
	jc	.L537
	add	eax, 1
.L536:
	cmp	eax, 16
	jne	.L538
.L537:
	pop	ebp
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
	fcom	DWORD PTR .LC12
	fnstsw	ax
	sahf
	jb	.L544
	fsub	DWORD PTR .LC12
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 32768
	jmp	.L542
.L544:
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
.L542:
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
	push	ebx
	.cfi_offset 3, -12
	movzx	ecx, WORD PTR [ebp+8]
	mov	eax, 0
	mov	edx, 0
	jmp	.L546
.L548:
	movzx	ebx, cx
	bt	ebx, edx
	jnc	.L547
	add	eax, 1
.L547:
	add	edx, 1
.L546:
	cmp	edx, 16
	jne	.L548
	and	eax, 1
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	movzx	ecx, WORD PTR [ebp+8]
	mov	edx, 0
	mov	eax, 0
	jmp	.L550
.L552:
	movzx	ebx, cx
	bt	ebx, eax
	jnc	.L551
	add	edx, 1
.L551:
	add	eax, 1
.L550:
	cmp	eax, 16
	jne	.L552
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, 0
	jmp	.L554
.L556:
	test	al, 1
	je	.L555
	add	edx, ecx
.L555:
	shr	eax
	add	ecx, ecx
.L554:
	test	eax, eax
	jne	.L556
	mov	eax, edx
	pop	ebp
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
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	test	edx, edx
	je	.L562
	mov	eax, 0
	jmp	.L559
.L561:
	test	cl, 1
	je	.L560
	add	eax, edx
.L560:
	add	edx, edx
	shr	ecx
.L559:
	test	ecx, ecx
	jne	.L561
	jmp	.L558
.L562:
	mov	eax, 0
.L558:
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 1
	jmp	.L564
.L566:
	add	edx, edx
	add	ecx, ecx
.L564:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L571
	test	edx, edx
	jns	.L566
	mov	ebx, 0
	jmp	.L568
.L569:
	cmp	edi, edx
	jb	.L567
	sub	edi, edx
	or	ebx, ecx
.L567:
	shr	ecx
	shr	edx
	jmp	.L568
.L571:
	mov	ebx, 0
.L568:
	test	ecx, ecx
	jne	.L569
	cmp	DWORD PTR [ebp+16], 0
	jne	.L572
	mov	eax, ebx
	jmp	.L570
.L572:
	mov	eax, edi
.L570:
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
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+12]
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L575
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	ja	.L576
	mov	eax, 0
	jmp	.L574
.L575:
	fstp	st(0)
	fstp	st(0)
	mov	eax, -1
	jmp	.L574
.L576:
	mov	eax, 1
.L574:
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
	fld	QWORD PTR [ebp+8]
	fld	QWORD PTR [ebp+16]
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L579
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	ja	.L580
	mov	eax, 0
	jmp	.L578
.L579:
	fstp	st(0)
	fstp	st(0)
	mov	eax, -1
	jmp	.L578
.L580:
	mov	eax, 1
.L578:
	pop	ebp
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
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	esi, eax
	mov	edi, esi
	sar	edi, 31
	mov	eax, esi
	mov	edx, edi
	mov	esi, ecx
	mov	edi, ecx
	sar	edi, 31
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-12]
	imul	ecx, edx
	mov	edx, edi
	mov	eax, DWORD PTR [ebp-16]
	imul	edx, eax
	add	ecx, edx
	mul	esi
	add	edx, ecx
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	mov	ecx, DWORD PTR [ebp+12]
	mov	ebx, 0
	mul	ecx
	mov	ecx, edx
	mov	edx, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	edx, edx
	jns	.L589
	neg	edx
	mov	edi, 1
	jmp	.L584
.L589:
	mov	edi, 0
.L584:
	mov	eax, 0
	mov	ecx, 0
	mov	esi, edi
	mov	DWORD PTR [ebp-16], eax
	jmp	.L585
.L587:
	test	dl, 1
	je	.L586
	add	DWORD PTR [ebp-16], ebx
.L586:
	add	ebx, ebx
	sar	edx
	add	ecx, 1
.L585:
	test	edx, edx
	setne	BYTE PTR [ebp-17]
	cmp	cl, 31
	setbe	al
	mov	edi, eax
	test	BYTE PTR [ebp-17], al
	jne	.L587
	mov	edi, esi
	mov	eax, DWORD PTR [ebp-16]
	test	edi, edi
	je	.L588
	neg	eax
.L588:
	add	esp, 8
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
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	eax, eax
	jns	.L595
	neg	eax
	mov	ebx, 1
	jmp	.L592
.L595:
	mov	ebx, 0
.L592:
	test	edx, edx
	jns	.L593
	neg	edx
	test	ebx, ebx
	sete	bl
	movzx	ebx, bl
.L593:
	sub	esp, 4
	push	0
	push	edx
	push	eax
	call	__udivmodsi4
	add	esp, 16
	test	ebx, ebx
	je	.L594
	neg	eax
.L594:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	eax, eax
	jns	.L600
	neg	eax
	mov	ebx, 1
	jmp	.L597
.L600:
	mov	ebx, 0
.L597:
	test	edx, edx
	jns	.L598
	neg	edx
.L598:
	sub	esp, 4
	push	1
	push	edx
	push	eax
	call	__udivmodsi4
	add	esp, 16
	test	ebx, ebx
	je	.L599
	neg	eax
.L599:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzx	edi, WORD PTR [ebp+8]
	movzx	edx, WORD PTR [ebp+12]
	mov	ecx, 1
	jmp	.L602
.L604:
	add	edx, edx
	add	ecx, ecx
.L602:
	cmp	dx, di
	setb	bl
	mov	esi, ebx
	test	cx, cx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L609
	test	dx, dx
	jns	.L604
	mov	ebx, 0
	jmp	.L606
.L607:
	cmp	di, dx
	jb	.L605
	sub	edi, edx
	or	ebx, ecx
.L605:
	shr	cx
	shr	dx
	jmp	.L606
.L609:
	mov	ebx, 0
.L606:
	test	cx, cx
	jne	.L607
	cmp	DWORD PTR [ebp+16], 0
	jne	.L610
	mov	eax, ebx
	jmp	.L608
.L610:
	mov	eax, edi
.L608:
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 1
	jmp	.L612
.L614:
	add	edx, edx
	add	ecx, ecx
.L612:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L619
	test	edx, edx
	jns	.L614
	mov	ebx, 0
	jmp	.L616
.L617:
	cmp	edi, edx
	jb	.L615
	sub	edi, edx
	or	ebx, ecx
.L615:
	shr	ecx
	shr	edx
	jmp	.L616
.L619:
	mov	ebx, 0
.L616:
	test	ecx, ecx
	jne	.L617
	cmp	DWORD PTR [ebp+16], 0
	jne	.L620
	mov	eax, ebx
	jmp	.L618
.L620:
	mov	eax, edi
.L618:
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	mov	ecx, esi
	mov	ebx, edi
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp-20], ebx
	test	dl, 32
	je	.L622
	mov	esi, 0
	mov	edi, 0
	mov	eax, ecx
	lea	ecx, [edx-32]
	sal	eax, cl
	mov	edi, eax
	jmp	.L623
.L622:
	test	edx, edx
	je	.L625
	mov	eax, DWORD PTR [ebp-24]
	mov	esi, 0
	mov	edi, 0
	mov	ebx, eax
	mov	ecx, edx
	sal	ebx, cl
	mov	esi, ebx
	mov	ebx, DWORD PTR [ebp-20]
	sal	ebx, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	eax, cl
	or	eax, ebx
	mov	edi, eax
.L623:
	mov	eax, esi
	mov	edx, edi
	jmp	.L624
.L625:
	mov	eax, esi
	mov	edx, edi
.L624:
	add	esp, 12
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	mov	ecx, esi
	mov	ebx, edi
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp-20], ebx
	test	dl, 32
	je	.L627
	mov	eax, ebx
	mov	esi, 0
	mov	edi, 0
	mov	ebx, eax
	sar	ebx, 31
	mov	edi, ebx
	lea	ecx, [edx-32]
	sar	eax, cl
	mov	esi, eax
	jmp	.L628
.L627:
	test	edx, edx
	je	.L630
	mov	eax, DWORD PTR [ebp-20]
	mov	esi, 0
	mov	edi, 0
	mov	ebx, eax
	mov	ecx, edx
	sar	ebx, cl
	mov	edi, ebx
	mov	ecx, 32
	sub	ecx, edx
	sal	eax, cl
	mov	ebx, DWORD PTR [ebp-24]
	mov	ecx, edx
	shr	ebx, cl
	or	eax, ebx
	mov	esi, eax
.L628:
	mov	eax, esi
	mov	edx, edi
	jmp	.L629
.L630:
	mov	eax, esi
	mov	edx, edi
.L629:
	add	esp, 12
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 52
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 24
	shr	edi, 24
	mov	eax, esi
	mov	edx, edi
	and	esi, 16711680
	mov	edi, 0
	mov	DWORD PTR [ebp-40], esi
	mov	DWORD PTR [ebp-36], edi
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	mov	DWORD PTR [ebp-48], eax
	mov	DWORD PTR [ebp-44], edx
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 8
	sal	esi, 8
	mov	eax, esi
	mov	edx, edi
	mov	esi, 0
	and	edi, 255
	mov	DWORD PTR [ebp-56], esi
	mov	DWORD PTR [ebp-52], edi
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	mov	DWORD PTR [ebp-64], eax
	mov	DWORD PTR [ebp-60], edx
	mov	esi, ecx
	mov	edi, ebx
	mov	edi, esi
	xor	esi, esi
	sal	edi, 8
	mov	esi, 0
	and	edi, 16711680
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	mov	eax, ecx
	mov	edx, ebx
	or	eax, DWORD PTR [ebp-24]
	or	edx, DWORD PTR [ebp-20]
	or	eax, DWORD PTR [ebp-32]
	or	edx, DWORD PTR [ebp-28]
	or	eax, DWORD PTR [ebp-40]
	or	edx, DWORD PTR [ebp-36]
	or	eax, DWORD PTR [ebp-48]
	or	edx, DWORD PTR [ebp-44]
	or	eax, DWORD PTR [ebp-56]
	or	edx, DWORD PTR [ebp-52]
	or	eax, DWORD PTR [ebp-64]
	or	edx, DWORD PTR [ebp-60]
	or	eax, esi
	or	edx, edi
	add	esp, 52
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	mov	esi, edx
	shr	esi, 24
	mov	ebx, edx
	shr	ebx, 8
	and	ebx, 65280
	mov	ecx, edx
	sal	ecx, 8
	and	ecx, 16711680
	mov	eax, edx
	sal	eax, 24
	or	eax, esi
	or	eax, ebx
	or	eax, ecx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	cmp	edx, 65535
	ja	.L638
	mov	eax, 16
	jmp	.L634
.L638:
	mov	eax, 0
.L634:
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	jne	.L639
	mov	ebx, 8
	jmp	.L635
.L639:
	mov	ebx, 0
.L635:
	mov	ecx, 8
	sub	ecx, ebx
	shr	edx, cl
	add	eax, ebx
	test	dl, -16
	jne	.L640
	mov	ebx, 4
	jmp	.L636
.L640:
	mov	ebx, 0
.L636:
	mov	ecx, 4
	sub	ecx, ebx
	shr	edx, cl
	add	eax, ebx
	test	dl, 12
	jne	.L641
	mov	esi, 2
	jmp	.L637
.L641:
	mov	esi, 0
.L637:
	mov	ebx, 2
	mov	ecx, ebx
	sub	ecx, esi
	shr	edx, cl
	add	eax, esi
	test	dl, 2
	sete	cl
	movzx	ecx, cl
	sub	ebx, edx
	mov	edx, ecx
	imul	edx, ebx
	add	eax, edx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	edi, ebx
	mov	esi, edx
	cmp	edi, esi
	jl	.L644
	mov	esi, ebx
	mov	edi, edx
	jg	.L645
	mov	esi, ecx
	mov	edi, eax
	cmp	esi, edi
	jb	.L646
	cmp	eax, ecx
	jb	.L647
	mov	esi, 1
	jmp	.L643
.L644:
	mov	esi, 0
	jmp	.L643
.L645:
	mov	esi, 2
	jmp	.L643
.L646:
	mov	esi, 0
	jmp	.L643
.L647:
	mov	esi, 2
.L643:
	mov	eax, esi
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
	sub	esp, 8
	push	DWORD PTR [ebp+20]
	push	DWORD PTR [ebp+16]
	push	DWORD PTR [ebp+12]
	push	DWORD PTR [ebp+8]
	call	__cmpdi2
	add	esp, 16
	sub	eax, 1
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
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+8]
	test	dx, dx
	jne	.L654
	mov	eax, 16
	jmp	.L650
.L654:
	mov	eax, 0
.L650:
	mov	ecx, eax
	shr	edx, cl
	test	dl, dl
	jne	.L655
	mov	ecx, 8
	jmp	.L651
.L655:
	mov	ecx, 0
.L651:
	shr	edx, cl
	add	eax, ecx
	test	dl, 15
	jne	.L656
	mov	ecx, 4
	jmp	.L652
.L656:
	mov	ecx, 0
.L652:
	shr	edx, cl
	add	eax, ecx
	test	dl, 3
	jne	.L657
	mov	ecx, 2
	jmp	.L653
.L657:
	mov	ecx, 0
.L653:
	shr	edx, cl
	and	edx, 3
	add	eax, ecx
	mov	ebx, edx
	not	ebx
	shr	edx
	mov	ecx, 2
	sub	ecx, edx
	and	ebx, 1
	mov	edx, ebx
	neg	edx
	and	edx, ecx
	add	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	mov	ecx, esi
	mov	ebx, edi
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp-20], ebx
	test	dl, 32
	je	.L659
	mov	esi, 0
	mov	edi, 0
	mov	eax, ebx
	lea	ecx, [edx-32]
	shr	eax, cl
	mov	esi, eax
	jmp	.L660
.L659:
	test	edx, edx
	je	.L662
	mov	eax, DWORD PTR [ebp-20]
	mov	esi, 0
	mov	edi, 0
	mov	ebx, eax
	mov	ecx, edx
	shr	ebx, cl
	mov	edi, ebx
	mov	ecx, 32
	sub	ecx, edx
	sal	eax, cl
	mov	ebx, DWORD PTR [ebp-24]
	mov	ecx, edx
	shr	ebx, cl
	or	eax, ebx
	mov	esi, eax
.L660:
	mov	eax, esi
	mov	edx, edi
	jmp	.L661
.L662:
	mov	eax, esi
	mov	edx, edi
.L661:
	add	esp, 12
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	movzx	ebx, dx
	movzx	ecx, di
	mov	esi, ebx
	imul	esi, ecx
	mov	DWORD PTR [ebp-24], 0
	mov	DWORD PTR [ebp-20], 0
	mov	DWORD PTR [ebp-24], esi
	mov	eax, esi
	shr	eax, 16
	movzx	esi, si
	mov	DWORD PTR [ebp-24], esi
	shr	edx, 16
	imul	ecx, edx
	add	eax, ecx
	mov	ecx, eax
	sal	ecx, 16
	add	esi, ecx
	mov	DWORD PTR [ebp-24], esi
	shr	eax, 16
	mov	DWORD PTR [ebp-20], eax
	mov	ecx, esi
	mov	eax, ecx
	shr	eax, 16
	movzx	ecx, cx
	mov	DWORD PTR [ebp-24], ecx
	shr	edi, 16
	mov	esi, edi
	imul	ebx, esi
	add	eax, ebx
	mov	ebx, eax
	sal	ebx, 16
	lea	edi, [ebx+ecx]
	mov	DWORD PTR [ebp-24], edi
	mov	ecx, DWORD PTR [ebp-20]
	shr	eax, 16
	add	eax, ecx
	mov	DWORD PTR [ebp-20], eax
	imul	edx, esi
	add	edx, eax
	mov	DWORD PTR [ebp-20], edx
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	add	esp, 12
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	ebx, eax
	mov	DWORD PTR [ebp-36], esi
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	push	DWORD PTR [ebp-32]
	push	esi
	call	__muldsi3
	add	esp, 8
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	eax, edi
	imul	eax, ebx
	mov	ecx, DWORD PTR [ebp-28]
	mov	edi, DWORD PTR [ebp-36]
	imul	ecx, edi
	add	eax, ecx
	add	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	lea	esp, [ebp-12]
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	neg	eax
	adc	edx, 0
	neg	edx
	pop	ebp
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
	xor	ecx, eax
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	pop	ebp
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
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, eax
	shr	ecx, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
	xor	ecx, eax
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 1
	shr	edi
	and	esi, 1431655765
	and	edi, 1431655765
	mov	eax, ecx
	mov	edx, ebx
	sub	eax, esi
	sbb	edx, edi
	mov	esi, eax
	mov	edi, edx
	shrd	eax, edx, 2
	shr	edx, 2
	mov	ecx, eax
	mov	ebx, edx
	and	ecx, 858993459
	and	ebx, 858993459
	mov	eax, esi
	mov	edx, edi
	and	eax, 858993459
	and	edx, 858993459
	add	eax, ecx
	adc	edx, ebx
	mov	esi, eax
	mov	edi, edx
	shrd	eax, edx, 4
	shr	edx, 4
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, esi
	mov	edx, edi
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	mov	esi, eax
	mov	edi, edx
	mov	eax, esi
	mov	edx, edi
	add	edx, eax
	mov	eax, edx
	shr	eax, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, ecx
	shr	eax
	and	eax, 1431655765
	sub	ecx, eax
	mov	edx, ecx
	mov	eax, edx
	shr	eax, 2
	and	eax, 858993459
	and	edx, 858993459
	add	edx, eax
	mov	eax, edx
	shr	eax, 4
	add	eax, edx
	and	eax, 252645135
	mov	edx, eax
	shr	eax, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 63
	pop	ebp
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
	fld	QWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	shr	edx, 31
	fld1
.L673:
	test	al, 1
	je	.L671
	fmul	st, st(1)
.L671:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L672
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	.L673
.L672:
	fstp	st(1)
	test	edx, edx
	je	.L674
	fdivr	DWORD PTR .LC10
.L674:
	pop	ebp
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
	fld	DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	fld1
.L679:
	test	al, 1
	je	.L677
	fmul	st, st(1)
.L677:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L678
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	.L679
.L678:
	fstp	st(1)
	test	edx, edx
	je	.L680
	fdivr	DWORD PTR .LC10
.L680:
	pop	ebp
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	edi, ebx
	mov	esi, edx
	cmp	edi, esi
	jb	.L684
	mov	esi, ebx
	mov	edi, edx
	cmp	edi, esi
	jb	.L685
	mov	esi, ecx
	mov	edi, eax
	cmp	esi, edi
	jb	.L686
	cmp	eax, ecx
	jb	.L687
	mov	esi, 1
	jmp	.L683
.L684:
	mov	esi, 0
	jmp	.L683
.L685:
	mov	esi, 2
	jmp	.L683
.L686:
	mov	esi, 0
	jmp	.L683
.L687:
	mov	esi, 2
.L683:
	mov	eax, esi
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
	sub	esp, 8
	push	DWORD PTR [ebp+20]
	push	DWORD PTR [ebp+16]
	push	DWORD PTR [ebp+12]
	push	DWORD PTR [ebp+8]
	call	__ucmpdi2
	add	esp, 16
	sub	eax, 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.section	.rodata
	.align 4
.LC2:
	.long	-8388609
	.align 4
.LC3:
	.long	2139095039
	.align 8
.LC4:
	.long	-1
	.long	-1048577
	.align 8
.LC5:
	.long	-1
	.long	2146435071
	.align 16
.LC6:
	.long	-1
	.long	-1
	.long	65534
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	32766
	.align 4
.LC8:
	.long	1056964608
	.align 4
.LC9:
	.long	1073741824
	.align 4
.LC10:
	.long	1065353216
	.align 4
.LC11:
	.long	1602224128
	.align 4
.LC12:
	.long	1191182336
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
