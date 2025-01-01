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
	sub	esp, 4
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	cmp	edx, edi
	jnb	.L2
	lea	ecx, [edi+ebx]
	mov	eax, ebx
	neg	ebx
	mov	DWORD PTR [ebp-16], ecx
	jmp	.L3
	.p2align 5
.L4:
	mov	esi, DWORD PTR [ebp-16]
	add	esi, ebx
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [esi-1+eax], cl
	sub	eax, 1
.L3:
	test	eax, eax
	jne	.L4
	jmp	.L5
.L2:
	cmp	edi, edx
	je	.L5
	add	ebx, edi
	mov	ecx, edi
	jmp	.L6
	.p2align 5
.L7:
	add	edx, 1
	add	ecx, 1
	movzx	eax, BYTE PTR [edx-1]
	mov	BYTE PTR [ecx-1], al
.L6:
	cmp	ecx, ebx
	jne	.L7
.L5:
	mov	eax, edi
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
	mov	ecx, DWORD PTR [ebp+8]
	jmp	.L9
	.p2align 5
.L11:
	sub	edx, 1
	add	ebx, 1
	add	ecx, 1
.L9:
	test	edx, edx
	je	.L10
	movzx	eax, BYTE PTR [ebx]
	mov	BYTE PTR [ecx], al
	movzx	eax, al
	cmp	esi, eax
	jne	.L11
.L10:
	mov	eax, 0
	test	edx, edx
	je	.L12
	lea	eax, [ecx+1]
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
	movzx	ebx, BYTE PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L15
	.p2align 5
.L17:
	add	eax, 1
	sub	edx, 1
.L15:
	test	edx, edx
	je	.L16
	movzx	ecx, BYTE PTR [eax]
	cmp	ebx, ecx
	jne	.L17
.L16:
	neg	edx
	sbb	edx, edx
	and	eax, edx
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
	mov	edx, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	.L21
	.p2align 5
.L23:
	sub	edx, 1
	add	eax, 1
	add	ecx, 1
.L21:
	test	edx, edx
	je	.L22
	movzx	ebx, BYTE PTR [ecx]
	cmp	BYTE PTR [eax], bl
	je	.L23
.L22:
	mov	ebx, 0
	test	edx, edx
	je	.L24
	movzx	ebx, BYTE PTR [eax]
	movzx	eax, BYTE PTR [ecx]
	sub	ebx, eax
.L24:
	mov	eax, ebx
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
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, esi
	add	ebx, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, esi
	jmp	.L27
	.p2align 5
.L28:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx-1]
	mov	BYTE PTR [eax-1], cl
.L27:
	cmp	eax, ebx
	jne	.L28
	mov	eax, esi
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
	mov	ebx, DWORD PTR [ebp+8]
	movzx	esi, BYTE PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	jmp	.L30
.L32:
	movzx	ecx, BYTE PTR [ebx+edx]
	lea	eax, [edx-1]
	cmp	esi, ecx
	jne	.L33
	lea	eax, [ebx+edx]
	jmp	.L31
.L33:
	mov	edx, eax
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, ebx
	add	edx, DWORD PTR [ebp+16]
	mov	eax, ebx
	jmp	.L35
	.p2align 4
.L36:
	mov	BYTE PTR [eax], cl
	add	eax, 1
.L35:
	cmp	eax, edx
	jne	.L36
	mov	eax, ebx
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
	mov	ecx, DWORD PTR [ebp+12]
	jmp	.L38
	.p2align 4
.L39:
	add	ecx, 1
	add	eax, 1
.L38:
	movzx	edx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	test	dl, dl
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
	movzx	ecx, BYTE PTR [ebp+12]
	jmp	.L41
	.p2align 4
.L43:
	add	eax, 1
.L41:
	cmp	BYTE PTR [eax], 0
	je	.L42
	movzx	edx, BYTE PTR [eax]
	cmp	ecx, edx
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
	mov	ecx, DWORD PTR [ebp+12]
	.p2align 4
.L46:
	movsx	edx, BYTE PTR [eax]
	cmp	ecx, edx
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
	jmp	.L50
	.p2align 5
.L52:
	add	eax, 1
	add	edx, 1
.L50:
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	jne	.L51
	cmp	BYTE PTR [eax], 0
	jne	.L52
.L51:
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
	jmp	.L54
	.p2align 3
.L55:
	add	eax, 1
.L54:
	cmp	BYTE PTR [eax], 0
	jne	.L55
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+16]
	mov	eax, 0
	test	ecx, ecx
	je	.L57
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ebx
	lea	esi, [ebx-1+ecx]
	jmp	.L58
.L60:
	add	eax, 1
	add	edx, 1
.L58:
	cmp	BYTE PTR [eax], 0
	je	.L59
	cmp	eax, esi
	setne	bl
	cmp	BYTE PTR [edx], 0
	setne	cl
	test	bl, cl
	je	.L59
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	je	.L60
.L59:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L57:
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ebx
	add	ebx, DWORD PTR [ebp+16]
	jmp	.L63
	.p2align 5
.L64:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
.L63:
	mov	ecx, ebx
	sub	ecx, eax
	cmp	ecx, 1
	jg	.L64
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 31
	setbe	dl
	lea	ecx, [eax-127]
	cmp	ecx, 32
	setbe	bl
	mov	ecx, 1
	or	dl, bl
	jne	.L76
	lea	edx, [eax-8232]
	cmp	edx, 1
	jbe	.L76
	sub	eax, 65529
	cmp	eax, 3
	setb	cl
	movzx	ecx, cl
.L76:
	mov	eax, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 254
	ja	.L82
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	dl
	movzx	edx, dl
	jmp	.L83
.L82:
	cmp	eax, 8231
	setbe	cl
	lea	edx, [eax-8234]
	cmp	edx, 47061
	setbe	bl
	mov	edx, 1
	or	cl, bl
	jne	.L83
	lea	ecx, [eax-57344]
	cmp	ecx, 8184
	jbe	.L83
	lea	ecx, [eax-65532]
	mov	edx, 0
	cmp	ecx, 1048579
	ja	.L83
	not	eax
	test	eax, 65534
	setne	dl
	movzx	edx, dl
.L83:
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	lea	ecx, [eax-48]
	mov	edx, 1
	cmp	ecx, 9
	jbe	.L89
	or	eax, 32
	sub	eax, 97
	cmp	eax, 6
	setb	dl
	movzx	edx, dl
.L89:
	mov	eax, edx
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
	jp	.L101
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L97
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L100
	fsubrp	st(1), st
	jmp	.L94
.L97:
	fstp	st(1)
	jmp	.L94
.L100:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L94
.L101:
	fstp	st(1)
.L94:
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
	jp	.L110
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L106
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L109
	fsubrp	st(1), st
	jmp	.L103
.L106:
	fstp	st(1)
	jmp	.L103
.L109:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L103
.L110:
	fstp	st(1)
.L103:
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
	jp	.L115
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L116
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
	je	.L113
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L121
	fstp	st(0)
	jmp	.L112
.L113:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L122
	fstp	st(0)
	jmp	.L120
.L115:
	fstp	st(0)
	jmp	.L112
.L116:
	fstp	st(0)
	jmp	.L112
.L120:
	jmp	.L112
.L121:
	fstp	st(1)
	jmp	.L112
.L122:
	fstp	st(1)
.L112:
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
	jp	.L128
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
	je	.L133
	fstp	st(0)
	jmp	.L124
.L125:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L134
	fstp	st(0)
	jmp	.L132
.L127:
	fstp	st(0)
	jmp	.L124
.L128:
	fstp	st(0)
	jmp	.L124
.L132:
	jmp	.L124
.L133:
	fstp	st(1)
	jmp	.L124
.L134:
	fstp	st(1)
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
	jp	.L139
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L140
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
	je	.L137
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L145
	fstp	st(0)
	jmp	.L136
.L137:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L146
	fstp	st(0)
	jmp	.L144
.L139:
	fstp	st(0)
	jmp	.L136
.L140:
	fstp	st(0)
	jmp	.L136
.L144:
	jmp	.L136
.L145:
	fstp	st(1)
	jmp	.L136
.L146:
	fstp	st(1)
.L136:
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
	jp	.L151
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L152
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
	je	.L149
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L157
	fstp	st(1)
	jmp	.L148
.L149:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L158
	fstp	st(1)
	jmp	.L156
.L151:
	fstp	st(0)
	jmp	.L148
.L152:
	fstp	st(0)
	jmp	.L148
.L156:
	jmp	.L148
.L157:
	fstp	st(0)
	jmp	.L148
.L158:
	fstp	st(0)
.L148:
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
	jp	.L163
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L164
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
	je	.L161
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L169
	fstp	st(1)
	jmp	.L160
.L161:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L170
	fstp	st(1)
	jmp	.L168
.L163:
	fstp	st(0)
	jmp	.L160
.L164:
	fstp	st(0)
	jmp	.L160
.L168:
	jmp	.L160
.L169:
	fstp	st(0)
	jmp	.L160
.L170:
	fstp	st(0)
.L160:
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
	jp	.L175
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L176
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
	je	.L173
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L181
	fstp	st(1)
	jmp	.L172
.L173:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L182
	fstp	st(1)
	jmp	.L180
.L175:
	fstp	st(0)
	jmp	.L172
.L176:
	fstp	st(0)
	jmp	.L172
.L180:
	jmp	.L172
.L181:
	fstp	st(0)
	jmp	.L172
.L182:
	fstp	st(0)
.L172:
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, OFFSET FLAT:s.0
	jmp	.L184
	.p2align 5
.L185:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
.L184:
	test	eax, eax
	jne	.L185
	mov	BYTE PTR [edx], 0
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
	jne	.L189
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	jmp	.L188
.L189:
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	cmp	DWORD PTR [eax], 0
	je	.L188
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [edx+4], eax
.L188:
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
	je	.L192
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L192:
	cmp	DWORD PTR [eax+4], 0
	je	.L191
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
.L191:
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
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [eax]
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, 0
	jmp	.L195
.L198:
	sub	esp, 8
	push	esi
	push	DWORD PTR [ebp+8]
	call	[DWORD PTR [ebp+24]]
	add	esi, DWORD PTR [ebp+20]
	add	esp, 16
	test	eax, eax
	jne	.L196
	imul	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	.L197
.L196:
	add	ebx, 1
.L195:
	cmp	ebx, edi
	jne	.L198
	lea	eax, [edi+1]
	mov	ecx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	mov	edx, edi
	imul	edx, DWORD PTR [ebp+20]
	mov	eax, edx
	add	eax, DWORD PTR [ebp+12]
	sub	esp, 4
	push	DWORD PTR [ebp+20]
	push	DWORD PTR [ebp+8]
	push	eax
	call	memcpy
	add	esp, 16
.L197:
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
	jmp	.L200
.L203:
	sub	esp, 8
	push	esi
	push	DWORD PTR [ebp+8]
	call	[DWORD PTR [ebp+24]]
	add	esi, DWORD PTR [ebp+20]
	add	esp, 16
	test	eax, eax
	jne	.L201
	imul	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	.L202
.L201:
	add	ebx, 1
.L200:
	cmp	ebx, edi
	jne	.L203
	mov	eax, 0
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
	jmp	.L206
.L207:
	add	ebx, 1
.L206:
	movsx	eax, BYTE PTR [ebx]
	sub	esp, 12
	push	eax
	call	isspace
	add	esp, 16
	test	eax, eax
	jne	.L207
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L213
	mov	ecx, 0
	cmp	eax, 45
	jne	.L209
	mov	ecx, 1
	jmp	.L208
.L213:
	mov	ecx, 0
.L208:
	add	ebx, 1
.L209:
	mov	eax, 0
	jmp	.L210
	.p2align 5
.L211:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	edx, BYTE PTR [ebx-1]
	sub	edx, 48
	sub	eax, edx
.L210:
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L211
	mov	edx, eax
	test	ecx, ecx
	jne	.L212
	neg	eax
	mov	edx, eax
.L212:
	mov	eax, edx
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
	jmp	.L217
.L218:
	add	ebx, 1
.L217:
	movsx	eax, BYTE PTR [ebx]
	sub	esp, 12
	push	eax
	call	isspace
	add	esp, 16
	test	eax, eax
	jne	.L218
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L224
	mov	ecx, 0
	cmp	eax, 45
	jne	.L220
	mov	ecx, 1
	jmp	.L219
.L224:
	mov	ecx, 0
.L219:
	add	ebx, 1
.L220:
	mov	eax, 0
	jmp	.L221
	.p2align 5
.L222:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	edx, BYTE PTR [ebx-1]
	sub	edx, 48
	sub	eax, edx
.L221:
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L222
	mov	edx, eax
	test	ecx, ecx
	jne	.L223
	neg	eax
	mov	edx, eax
.L223:
	mov	eax, edx
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
	jmp	.L228
.L229:
	add	ebx, 1
.L228:
	movsx	eax, BYTE PTR [ebx]
	sub	esp, 12
	push	eax
	call	isspace
	add	esp, 16
	test	eax, eax
	jne	.L229
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L235
	mov	ecx, 0
	cmp	eax, 45
	jne	.L231
	mov	ecx, 1
	jmp	.L230
.L235:
	mov	ecx, 0
.L230:
	add	ebx, 1
.L231:
	mov	esi, 0
	mov	edi, 0
	jmp	.L232
	.p2align 6
.L233:
	mov	eax, esi
	mov	edx, edi
	shld	edx, eax, 2
	sal	eax, 2
	add	esi, eax
	adc	edi, edx
	add	esi, esi
	adc	edi, edi
	add	ebx, 1
	movsx	eax, BYTE PTR [ebx-1]
	sub	eax, 48
	cdq
	sub	esi, eax
	sbb	edi, edx
.L232:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L233
	mov	eax, esi
	mov	edx, edi
	test	ecx, ecx
	jne	.L234
	neg	eax
	adc	edx, 0
	neg	edx
.L234:
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
	jmp	.L239
.L243:
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
	jns	.L240
	shr	esi
	jmp	.L239
.L240:
	jle	.L244
	lea	eax, [ebx+edi]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, esi
	shr	eax
	sub	esi, 1
	sub	esi, eax
.L239:
	test	esi, esi
	jne	.L243
	mov	eax, 0
	jmp	.L242
.L244:
	mov	eax, ebx
.L242:
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
	jmp	.L246
.L249:
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
	je	.L250
	jle	.L248
	mov	edi, ebx
	add	edi, DWORD PTR [ebp+20]
	sub	esi, 1
.L248:
	sar	esi
.L246:
	test	esi, esi
	jne	.L249
	mov	eax, 0
	jmp	.L247
.L250:
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
	jmp	.L259
	.p2align 4
.L261:
	add	eax, 4
.L259:
	cmp	DWORD PTR [eax], 0
	je	.L260
	cmp	edx, DWORD PTR [eax]
	jne	.L261
.L260:
	mov	ecx, DWORD PTR [eax]
	neg	ecx
	sbb	edx, edx
	and	eax, edx
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	.L265
.L267:
	add	eax, 4
	add	edx, 4
.L265:
	mov	ecx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ecx
	jne	.L266
	cmp	DWORD PTR [eax], 0
	je	.L266
	test	ecx, ecx
	jne	.L267
.L266:
	mov	ecx, -1
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	jl	.L268
	setg	cl
	movzx	ecx, cl
.L268:
	mov	eax, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ebx
	.p2align 4
.L271:
	add	edx, 4
	add	eax, 4
	mov	ecx, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], ecx
	test	ecx, ecx
	jne	.L271
	mov	eax, ebx
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
	jmp	.L274
	.p2align 3
.L275:
	add	eax, 4
.L274:
	cmp	DWORD PTR [eax], 0
	jne	.L275
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	jmp	.L277
.L279:
	sub	ecx, 1
	add	eax, 4
	add	edx, 4
.L277:
	test	ecx, ecx
	je	.L278
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	jne	.L278
	cmp	DWORD PTR [eax], 0
	je	.L278
	test	ebx, ebx
	jne	.L279
.L278:
	mov	ebx, 0
	test	ecx, ecx
	je	.L280
	mov	ebx, -1
	mov	ecx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ecx
	jl	.L280
	setg	bl
	movzx	ebx, bl
.L280:
	mov	eax, ebx
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
	jmp	.L284
	.p2align 4
.L286:
	sub	edx, 1
	add	eax, 4
.L284:
	test	edx, edx
	je	.L285
	cmp	ecx, DWORD PTR [eax]
	jne	.L286
.L285:
	neg	edx
	sbb	edx, edx
	and	eax, edx
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	jmp	.L290
	.p2align 5
.L292:
	sub	eax, 1
	add	ecx, 4
	add	edx, 4
.L290:
	test	eax, eax
	je	.L291
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], ebx
	je	.L292
.L291:
	mov	ebx, 0
	test	eax, eax
	je	.L293
	mov	ebx, -1
	mov	eax, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], eax
	jl	.L293
	setg	bl
	movzx	ebx, bl
.L293:
	mov	eax, ebx
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
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, ebx
	jmp	.L297
	.p2align 5
.L298:
	add	ecx, 4
	add	edx, 4
	mov	esi, DWORD PTR [ecx-4]
	mov	DWORD PTR [edx-4], esi
.L297:
	sub	eax, 1
	cmp	eax, -1
	jne	.L298
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	ecx, ebx
	je	.L300
	mov	esi, ecx
	sub	esi, ebx
	lea	edx, [0+eax*4]
	cmp	esi, edx
	jb	.L301
	mov	edx, 0
	jmp	.L302
	.p2align 4
.L303:
	mov	edx, DWORD PTR [ebx+eax*4]
	mov	DWORD PTR [ecx+eax*4], edx
.L301:
	sub	eax, 1
	cmp	eax, -1
	jne	.L303
	jmp	.L300
	.p2align 4
.L304:
	mov	esi, DWORD PTR [ebx+edx*4]
	mov	DWORD PTR [ecx+edx*4], esi
	add	edx, 1
.L302:
	cmp	edx, eax
	jne	.L304
.L300:
	mov	eax, ecx
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, ebx
	jmp	.L307
	.p2align 4
.L308:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
.L307:
	sub	eax, 1
	cmp	eax, -1
	jne	.L308
	mov	eax, ebx
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	cmp	esi, edx
	jnb	.L310
	add	edx, ecx
	mov	eax, ecx
	mov	edi, ecx
	neg	edi
	jmp	.L311
	.p2align 5
.L312:
	lea	ebx, [edx+edi]
	movzx	ecx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
.L311:
	test	eax, eax
	jne	.L312
	jmp	.L309
.L310:
	je	.L309
	add	ecx, edx
	mov	eax, esi
	jmp	.L314
	.p2align 5
.L315:
	add	eax, 1
	add	edx, 1
	movzx	ebx, BYTE PTR [eax-1]
	mov	BYTE PTR [edx-1], bl
.L314:
	cmp	edx, ecx
	jne	.L315
.L309:
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
	je	.L317
	mov	edi, esi
	xor	esi, esi
.L317:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L318
	mov	eax, edx
	xor	edx, edx
.L318:
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
	je	.L320
	mov	esi, edi
	xor	edi, edi
.L320:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L321
	mov	edx, eax
	xor	eax, eax
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
	movzx	eax, WORD PTR [ebp+8]
	rol	ax, 8
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
	mov	edx, ebx
	mov	eax, 0
	and	edx, 16711680
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	or	esi, eax
	or	edi, edx
	mov	edx, ebx
	mov	eax, 0
	and	edx, 65280
	shrd	eax, edx, 24
	shr	edx, 24
	or	esi, eax
	or	edi, edx
	mov	edx, ebx
	mov	eax, 0
	and	edx, 255
	shrd	eax, edx, 8
	shr	edx, 8
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	and	eax, -16777216
	mov	edx, 0
	shld	edx, eax, 8
	sal	eax, 8
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	and	eax, 16711680
	mov	edx, 0
	shld	edx, eax, 24
	sal	eax, 24
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
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
	jmp	.L334
.L337:
	bt	edx, eax
	jnc	.L335
	add	eax, 1
	jmp	.L336
.L335:
	add	eax, 1
.L334:
	cmp	eax, 32
	jne	.L337
	mov	eax, 0
.L336:
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
	mov	eax, 0
	test	edx, edx
	je	.L339
	mov	eax, 1
	jmp	.L340
	.p2align 4
.L341:
	sar	edx
	add	eax, 1
.L340:
	test	dl, 1
	je	.L341
.L339:
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
	mov	eax, 1
	ja	.L349
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L344
.L349:
	fstp	st(0)
.L344:
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
	mov	eax, 1
	ja	.L356
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L351
.L356:
	fstp	st(0)
.L351:
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
	mov	eax, 1
	ja	.L363
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L358
.L363:
	fstp	st(0)
.L358:
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
	jp	.L366
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L372
	je	.L366
.L372:
	fld	DWORD PTR .LC9
	test	edx, edx
	jns	.L370
	fstp	st(0)
	fld	DWORD PTR .LC8
.L370:
	test	dl, 1
	je	.L369
	fmul	st(1), st
.L369:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L373
	fmul	st, st(0)
	jmp	.L370
.L373:
	fstp	st(0)
.L366:
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
	jp	.L375
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L381
	je	.L375
.L381:
	test	edx, edx
	jns	.L380
	fld	DWORD PTR .LC8
	jmp	.L379
.L380:
	fld	DWORD PTR .LC9
.L379:
	test	dl, 1
	je	.L378
	fmul	st(1), st
.L378:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L382
	fmul	st, st(0)
	jmp	.L379
.L382:
	fstp	st(0)
.L375:
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
	jp	.L384
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L390
	je	.L384
.L390:
	test	edx, edx
	jns	.L389
	fld	DWORD PTR .LC8
	jmp	.L388
.L389:
	fld	DWORD PTR .LC9
.L388:
	test	dl, 1
	je	.L387
	fmul	st(1), st
.L387:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L391
	fmul	st, st(0)
	jmp	.L388
.L391:
	fstp	st(0)
.L384:
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
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, esi
	add	ebx, DWORD PTR [ebp+16]
	mov	eax, esi
	mov	ecx, DWORD PTR [ebp+12]
	jmp	.L393
	.p2align 5
.L394:
	add	ecx, 1
	add	eax, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	dl, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], dl
.L393:
	cmp	eax, ebx
	jne	.L394
	mov	eax, esi
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
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	push	edi
	call	strlen
	add	esp, 16
	add	eax, edi
	jmp	.L396
	.p2align 5
.L398:
	add	esi, 1
	add	eax, 1
	sub	ebx, 1
.L396:
	test	ebx, ebx
	je	.L397
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	.L398
.L397:
	test	ebx, ebx
	jne	.L399
	mov	BYTE PTR [eax], 0
.L399:
	mov	eax, edi
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
	jmp	.L401
	.p2align 4
.L403:
	add	eax, 1
.L401:
	cmp	eax, edx
	je	.L402
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L403
.L402:
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	jmp	.L405
.L407:
	add	edx, 1
	movzx	ebx, BYTE PTR [eax]
	cmp	BYTE PTR [edx-1], bl
	jne	.L408
	jmp	.L406
.L410:
	mov	edx, ecx
.L408:
	cmp	BYTE PTR [edx], 0
	jne	.L407
	add	eax, 1
.L405:
	cmp	BYTE PTR [eax], 0
	jne	.L410
	mov	eax, 0
.L406:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	ebx, 0
	.p2align 5
.L413:
	movsx	edx, BYTE PTR [eax]
	cmp	ecx, edx
	jne	.L412
	mov	ebx, eax
.L412:
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	.L413
	mov	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	sub	esp, 24
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	push	DWORD PTR [ebp+12]
	call	strlen
	add	esp, 16
	mov	esi, eax
	mov	eax, ebx
	test	esi, esi
	je	.L417
	mov	eax, DWORD PTR [ebp+12]
	movsx	edi, BYTE PTR [eax]
	jmp	.L418
.L419:
	sub	esp, 4
	push	esi
	push	DWORD PTR [ebp+12]
	push	ebx
	call	strncmp
	add	esp, 16
	test	eax, eax
	je	.L421
	add	ebx, 1
.L418:
	sub	esp, 8
	push	edi
	push	ebx
	call	strchr
	add	esp, 16
	mov	ebx, eax
	test	eax, eax
	jne	.L419
	mov	eax, 0
	jmp	.L417
.L421:
	mov	eax, ebx
.L417:
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
	jbe	.L435
	ftst
	fnstsw	ax
	sahf
	ja	.L436
	fxch	st(1)
	jmp	.L423
.L435:
	fxch	st(1)
.L423:
	ftst
	fnstsw	ax
	sahf
	jbe	.L437
	fldz
	fcomp	st(2)
	fnstsw	ax
	fstp	st(1)
	sahf
	jbe	.L426
	jmp	.L425
.L436:
	fstp	st(0)
.L425:
	fchs
	jmp	.L426
.L437:
	fstp	st(1)
.L426:
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
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	esi, ebx
	sub	esi, edx
	add	esi, ecx
	mov	eax, ecx
	test	edx, edx
	je	.L439
	cmp	ebx, edx
	jb	.L444
	mov	ebx, ecx
	lea	eax, [edx-1]
	mov	DWORD PTR [ebp-28], eax
	lea	eax, [edi+1]
	mov	DWORD PTR [ebp-32], eax
	jmp	.L440
.L442:
	movzx	eax, BYTE PTR [edi]
	cmp	BYTE PTR [ebx], al
	jne	.L441
	lea	eax, [ebx+1]
	sub	esp, 4
	push	DWORD PTR [ebp-28]
	push	DWORD PTR [ebp-32]
	push	eax
	call	memcmp
	add	esp, 16
	test	eax, eax
	je	.L445
.L441:
	add	ebx, 1
.L440:
	cmp	esi, ebx
	jnb	.L442
	mov	eax, 0
	jmp	.L439
.L444:
	mov	eax, 0
	jmp	.L439
.L445:
	mov	eax, ebx
.L439:
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
	mov	ecx, 0
	jbe	.L448
	fchs
	mov	ecx, 1
	jmp	.L448
.L448:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	mov	edx, 0
	jnb	.L450
	jmp	.L465
	.p2align 5
.L452:
	add	edx, 1
	fmul	DWORD PTR .LC8
.L450:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L452
	jmp	.L453
.L465:
	mov	edx, 1
	fldz
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L454
	jne	.L454
	mov	edx, 0
.L454:
	fld	DWORD PTR .LC8
	fcomp	st(1)
	fnstsw	ax
	sahf
	seta	al
	test	al, dl
	jne	.L461
	mov	edx, 0
	jmp	.L453
.L457:
	sub	edx, 1
	fadd	st, st(0)
	jmp	.L456
.L461:
	mov	edx, 0
.L456:
	fld	DWORD PTR .LC8
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L457
.L453:
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L458
	fchs
.L458:
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
	jmp	.L467
	.p2align 6
.L469:
	mov	ecx, eax
	and	ecx, 1
	mov	ebx, 0
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp-20], ebx
	mov	ecx, DWORD PTR [ebp-24]
	mov	ebx, DWORD PTR [ebp-20]
	or	ecx, ebx
	je	.L468
	add	DWORD PTR [ebp-32], esi
	adc	DWORD PTR [ebp-28], edi
.L468:
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
.L467:
	mov	ecx, eax
	or	ecx, edx
	jne	.L469
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
	jmp	.L471
.L474:
	add	edx, edx
	add	ecx, ecx
.L471:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	.L472
	mov	ebx, 0
	jmp	.L473
.L472:
	test	edx, edx
	jns	.L474
	mov	ebx, 0
	jmp	.L473
	.p2align 4
.L477:
	cmp	edi, edx
	jb	.L476
	sub	edi, edx
	or	ebx, ecx
.L476:
	shr	ecx
	shr	edx
.L473:
	test	ecx, ecx
	jne	.L477
	mov	eax, edi
	cmp	DWORD PTR [ebp+16], 0
	jne	.L478
	mov	eax, ebx
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	sar	al, 7
	mov	ecx, 7
	xor	al, dl
	je	.L482
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ecx, [eax-1]
.L482:
	mov	eax, ecx
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	test	ebx, ebx
	jns	.L485
	not	ecx
	not	ebx
.L485:
	mov	eax, 63
	mov	edx, ecx
	or	edx, ebx
	je	.L486
	test	ebx, ebx
	je	.L487
	bsr	eax, ebx
	xor	eax, 31
	jmp	.L488
.L487:
	bsr	eax, ecx
	xor	eax, 31
	add	eax, 32
.L488:
	sub	eax, 1
.L486:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 0
	jmp	.L491
	.p2align 4
.L493:
	test	al, 1
	je	.L492
	add	ecx, edx
.L492:
	shr	eax
	add	edx, edx
.L491:
	test	eax, eax
	jne	.L493
	mov	eax, ecx
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
	mov	esi, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	edi, ecx
	shr	edi, 3
	mov	eax, ecx
	and	eax, -8
	cmp	DWORD PTR [ebp+8], esi
	jb	.L495
	lea	edx, [esi+ecx]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	.L504
.L495:
	mov	edx, esi
	mov	ebx, DWORD PTR [ebp+8]
	lea	edi, [esi+edi*8]
	mov	DWORD PTR [ebp-20], edi
	mov	DWORD PTR [ebp+12], esi
	jmp	.L497
	.p2align 5
.L498:
	mov	esi, DWORD PTR [edx]
	mov	edi, DWORD PTR [edx+4]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	add	edx, 8
	add	ebx, 8
.L497:
	mov	edi, DWORD PTR [ebp-20]
	cmp	edx, edi
	jne	.L498
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+8]
	jmp	.L499
	.p2align 4
.L500:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [ebx+eax], dl
	add	eax, 1
.L499:
	cmp	eax, ecx
	jb	.L500
	jmp	.L494
.L502:
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edx+ecx], al
	jmp	.L496
.L504:
	mov	edx, DWORD PTR [ebp+8]
.L496:
	sub	ecx, 1
	cmp	ecx, -1
	jne	.L502
.L494:
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
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	ebx, ecx
	shr	ebx
	cmp	edi, esi
	jb	.L506
	lea	eax, [esi+ecx]
	cmp	eax, edi
	jnb	.L507
.L506:
	mov	eax, esi
	mov	edx, edi
	lea	ebx, [esi+ebx*2]
	mov	DWORD PTR [ebp+16], ecx
	jmp	.L508
	.p2align 4
.L509:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
.L508:
	cmp	eax, ebx
	jne	.L509
	mov	ecx, DWORD PTR [ebp+16]
	test	cl, 1
	je	.L505
	movzx	eax, BYTE PTR [esi-1+ecx]
	mov	BYTE PTR [edi-1+ecx], al
	jmp	.L505
	.p2align 4
.L511:
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edi+ecx], al
.L507:
	sub	ecx, 1
	cmp	ecx, -1
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
	mov	esi, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	edi, ecx
	shr	edi, 2
	mov	eax, ecx
	and	eax, -4
	cmp	DWORD PTR [ebp+8], esi
	jb	.L515
	lea	edx, [esi+ecx]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	.L524
.L515:
	mov	edx, esi
	mov	ebx, DWORD PTR [ebp+8]
	lea	edi, [esi+edi*4]
	mov	DWORD PTR [ebp-16], eax
	jmp	.L517
	.p2align 4
.L518:
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ebx], eax
	add	edx, 4
	add	ebx, 4
.L517:
	cmp	edx, edi
	jne	.L518
	mov	eax, DWORD PTR [ebp-16]
	mov	ebx, DWORD PTR [ebp+8]
	jmp	.L519
	.p2align 4
.L520:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [ebx+eax], dl
	add	eax, 1
.L519:
	cmp	eax, ecx
	jb	.L520
	jmp	.L514
.L522:
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edx+ecx], al
	jmp	.L516
.L524:
	mov	edx, DWORD PTR [ebp+8]
.L516:
	sub	ecx, 1
	cmp	ecx, -1
	jne	.L522
.L514:
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
	jns	.L529
	fadd	DWORD PTR .LC11
.L529:
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
	jns	.L531
	fadd	DWORD PTR .LC11
.L531:
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
	mov	eax, 0
	movzx	ebx, WORD PTR [ebp+8]
	mov	ecx, 15
	jmp	.L534
	.p2align 5
.L536:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	.L535
	add	eax, 1
.L534:
	cmp	eax, 16
	jne	.L536
.L535:
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
	mov	eax, 0
	movzx	edx, WORD PTR [ebp+8]
	jmp	.L538
	.p2align 4
.L540:
	bt	edx, eax
	jc	.L539
	add	eax, 1
.L538:
	cmp	eax, 16
	jne	.L540
.L539:
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
	jb	.L546
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
	jmp	.L547
.L546:
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
.L547:
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
	mov	eax, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [ebp+8]
	jmp	.L549
	.p2align 5
.L551:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
.L549:
	cmp	ecx, 16
	jne	.L551
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
	mov	edx, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [ebp+8]
	jmp	.L553
	.p2align 5
.L555:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
.L553:
	cmp	ecx, 16
	jne	.L555
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
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 0
	jmp	.L557
	.p2align 4
.L559:
	test	al, 1
	je	.L558
	add	ecx, edx
.L558:
	shr	eax
	add	edx, edx
.L557:
	test	eax, eax
	jne	.L559
	mov	eax, ecx
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, 0
	test	ecx, ecx
	je	.L561
	jmp	.L562
	.p2align 4
.L564:
	test	dl, 1
	je	.L563
	add	eax, ecx
.L563:
	add	ecx, ecx
	shr	edx
.L562:
	test	edx, edx
	jne	.L564
.L561:
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
	jmp	.L567
.L570:
	add	edx, edx
	add	ecx, ecx
.L567:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	.L568
	mov	ebx, 0
	jmp	.L569
.L568:
	test	edx, edx
	jns	.L570
	mov	ebx, 0
	jmp	.L569
	.p2align 4
.L573:
	cmp	edi, edx
	jb	.L572
	sub	edi, edx
	or	ebx, ecx
.L572:
	shr	ecx
	shr	edx
.L569:
	test	ecx, ecx
	jne	.L573
	mov	eax, edi
	cmp	DWORD PTR [ebp+16], 0
	jne	.L574
	mov	eax, ebx
.L574:
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
	mov	eax, -1
	ja	.L580
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L577
.L580:
	fstp	st(0)
	fstp	st(0)
.L577:
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
	mov	eax, -1
	ja	.L585
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L582
.L585:
	fstp	st(0)
	fstp	st(0)
.L582:
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
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	edi, eax
	sar	edi, 31
	mov	ebx, edx
	sar	ebx, 31
	mov	DWORD PTR [ebp-24], edx
	mov	DWORD PTR [ebp-20], ebx
	mov	ecx, edi
	imul	ecx, edx
	mov	ebx, DWORD PTR [ebp-20]
	imul	ebx, eax
	add	ecx, ebx
	mul	edx
	add	edx, ecx
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
	mov	eax, DWORD PTR [ebp+8]
	mul	DWORD PTR [ebp+12]
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
	push	edi
	push	esi
	push	ebx
	sub	esp, 4
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	esi, 0
	test	eax, eax
	jns	.L589
	neg	eax
	mov	esi, 1
.L589:
	mov	edi, 0
	mov	edx, 0
	mov	DWORD PTR [ebp-16], esi
	mov	DWORD PTR [ebp+8], ecx
	jmp	.L590
	.p2align 5
.L592:
	test	al, 1
	je	.L591
	add	edi, DWORD PTR [ebp+8]
.L591:
	sal	DWORD PTR [ebp+8]
	sar	eax
	add	edx, 1
.L590:
	test	eax, eax
	setne	bl
	cmp	dl, 31
	setbe	cl
	test	cl, bl
	jne	.L592
	mov	esi, DWORD PTR [ebp-16]
	mov	eax, edi
	test	esi, esi
	je	.L593
	neg	eax
.L593:
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
	mov	ebx, 0
	test	eax, eax
	jns	.L597
	neg	eax
	mov	ebx, 1
.L597:
	test	edx, edx
	jns	.L598
	neg	edx
	xor	ebx, 1
.L598:
	sub	esp, 4
	push	0
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ebx, 0
	test	edx, edx
	jns	.L602
	neg	edx
	mov	ebx, 1
.L602:
	mov	ecx, eax
	sar	ecx, 31
	xor	eax, ecx
	sub	eax, ecx
	sub	esp, 4
	push	1
	push	eax
	push	edx
	call	__udivmodsi4
	add	esp, 16
	test	ebx, ebx
	je	.L604
	neg	eax
.L604:
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
	jmp	.L607
.L610:
	add	edx, edx
	add	ecx, ecx
.L607:
	cmp	dx, di
	setb	bl
	mov	esi, ebx
	test	cx, cx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	.L608
	mov	ebx, 0
	jmp	.L609
.L608:
	test	dx, dx
	jns	.L610
	mov	ebx, 0
	jmp	.L609
	.p2align 5
.L613:
	cmp	di, dx
	jb	.L612
	sub	edi, edx
	or	ebx, ecx
.L612:
	shr	cx
	shr	dx
.L609:
	test	cx, cx
	jne	.L613
	mov	eax, edi
	cmp	DWORD PTR [ebp+16], 0
	jne	.L614
	mov	eax, ebx
.L614:
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
	jmp	.L617
.L620:
	add	edx, edx
	add	ecx, ecx
.L617:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	.L618
	mov	ebx, 0
	jmp	.L619
.L618:
	test	edx, edx
	jns	.L620
	mov	ebx, 0
	jmp	.L619
	.p2align 4
.L623:
	cmp	edi, edx
	jb	.L622
	sub	edi, edx
	or	ebx, ecx
.L622:
	shr	ecx
	shr	edx
.L619:
	test	ecx, ecx
	jne	.L623
	mov	eax, edi
	cmp	DWORD PTR [ebp+16], 0
	jne	.L624
	mov	eax, ebx
.L624:
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
	mov	DWORD PTR [ebp-24], esi
	mov	DWORD PTR [ebp-20], edi
	mov	ebx, DWORD PTR [ebp+16]
	test	bl, 32
	je	.L627
	mov	eax, 0
	lea	ecx, [ebx-32]
	sal	esi, cl
	mov	edx, esi
	jmp	.L629
.L627:
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, DWORD PTR [ebp-20]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	.L629
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, esi
	mov	ecx, ebx
	sal	edi, cl
	mov	eax, edi
	mov	edi, DWORD PTR [ebp-20]
	sal	edi, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	esi, cl
	or	esi, edi
	mov	edx, esi
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	ebx, DWORD PTR [ebp+16]
	test	bl, 32
	je	.L632
	mov	esi, edx
	mov	edi, edx
	sar	edi, 31
	mov	edx, edi
	lea	ecx, [ebx-32]
	sar	esi, cl
	mov	eax, esi
	jmp	.L634
.L632:
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, DWORD PTR [ebp-20]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	.L634
	mov	edi, DWORD PTR [ebp-20]
	mov	esi, edi
	mov	ecx, ebx
	sar	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [ebp-24]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
.L634:
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
	cmp	edx, 65536
	setb	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	sete	bl
	movzx	ebx, bl
	sal	ebx, 3
	mov	ecx, 8
	sub	ecx, ebx
	shr	edx, cl
	add	eax, ebx
	test	dl, -16
	sete	bl
	movzx	ebx, bl
	sal	ebx, 2
	mov	ecx, 4
	sub	ecx, ebx
	shr	edx, cl
	add	eax, ebx
	test	dl, 12
	sete	bl
	movzx	ebx, bl
	mov	esi, ebx
	add	esi, esi
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
	push	esi
	push	ebx
	sub	esp, 8
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, 0
	cmp	ebx, edx
	jl	.L648
	mov	eax, 2
	jg	.L648
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, 0
	cmp	ecx, edx
	jb	.L648
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L648:
	add	esp, 8
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	sete	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, eax
	shr	edx, cl
	test	dl, dl
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	edx, cl
	add	eax, ecx
	test	dl, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	edx, cl
	add	eax, ecx
	test	dl, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
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
	mov	DWORD PTR [ebp-24], esi
	mov	DWORD PTR [ebp-20], edi
	mov	ebx, DWORD PTR [ebp+16]
	test	bl, 32
	je	.L664
	mov	edx, 0
	mov	esi, edi
	lea	ecx, [ebx-32]
	shr	esi, cl
	mov	eax, esi
	jmp	.L666
.L664:
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, DWORD PTR [ebp-20]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	.L666
	mov	edi, DWORD PTR [ebp-20]
	mov	esi, edi
	mov	ecx, ebx
	shr	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [ebp-24]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
.L666:
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	movzx	ebx, cx
	movzx	esi, di
	mov	edx, ebx
	imul	edx, esi
	mov	eax, edx
	shr	eax, 16
	movzx	edx, dx
	shr	ecx, 16
	imul	esi, ecx
	add	eax, esi
	mov	esi, eax
	sal	esi, 16
	add	esi, edx
	shr	eax, 16
	mov	DWORD PTR [ebp-20], eax
	mov	eax, esi
	shr	eax, 16
	movzx	edx, si
	shr	edi, 16
	mov	esi, edi
	imul	ebx, edi
	add	eax, ebx
	mov	ebx, eax
	sal	ebx, 16
	lea	edi, [ebx+edx]
	mov	DWORD PTR [ebp-24], edi
	mov	edx, DWORD PTR [ebp-20]
	shr	eax, 16
	add	eax, edx
	imul	ecx, esi
	add	eax, ecx
	mov	DWORD PTR [ebp-20], eax
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
	mov	eax, edi
	imul	eax, ebx
	mov	ecx, DWORD PTR [ebp-28]
	imul	ecx, esi
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
	mov	ecx, DWORD PTR [ebp+8]
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, eax
	mov	ebx, edx
	shrd	ecx, ebx, 1
	shr	ebx
	and	ecx, 1431655765
	and	ebx, 1431655765
	sub	eax, ecx
	sbb	edx, ebx
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	shr	eax
	and	eax, 1431655765
	sub	edx, eax
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
	mov	edx, DWORD PTR [ebp+16]
	mov	ecx, edx
	shr	ecx, 31
	fld1
.L678:
	test	dl, 1
	je	.L676
	fmul	st, st(1)
.L676:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L677
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	.L678
.L677:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	.L681
	fstp	st(0)
	fdivr	DWORD PTR .LC10
	jmp	.L679
.L681:
	fstp	st(1)
.L679:
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
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, edx
	shr	ecx, 31
	fld1
.L685:
	test	dl, 1
	je	.L683
	fmul	st, st(1)
.L683:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L684
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	.L685
.L684:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	.L688
	fstp	st(0)
	fdivr	DWORD PTR .LC10
	jmp	.L686
.L688:
	fstp	st(1)
.L686:
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
	push	esi
	push	ebx
	sub	esp, 8
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, 0
	cmp	ebx, edx
	jb	.L690
	mov	esi, DWORD PTR [ebp-12]
	mov	eax, 2
	cmp	esi, ebx
	jb	.L690
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, 0
	cmp	ecx, edx
	jb	.L690
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L690:
	add	esp, 8
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	-8388609
	.align 4
.LC3:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	-1
	.long	-1048577
	.align 8
.LC5:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC6:
	.long	-1
	.long	-1
	.long	65534
	.align 16
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	32766
	.align 16
	.section	.rodata.cst4
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
