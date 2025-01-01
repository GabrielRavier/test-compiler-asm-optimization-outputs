	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, ebx
	jnb	.L2
	test	eax, eax
	je	.L3
	.p2align 4
.L4:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	.L4
.L3:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L2:
	.cfi_restore_state
	cmp	ebx, edx
	je	.L3
	test	eax, eax
	je	.L3
	lea	esi, [eax+ebx]
	mov	ecx, ebx
	.p2align 5
.L5:
	add	edx, 1
	add	ecx, 1
	movzx	eax, BYTE PTR [edx-1]
	mov	BYTE PTR [ecx-1], al
	cmp	esi, ecx
	jne	.L5
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	movzx	esi, BYTE PTR [esp+20]
	test	ecx, ecx
	je	.L18
	.p2align 5
.L10:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	movzx	edx, dl
	cmp	edx, esi
	je	.L19
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	jne	.L10
	mov	eax, 0
	jmp	.L9
.L18:
	mov	eax, 0
	jmp	.L9
.L19:
	add	eax, 1
.L9:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+16]
	movzx	ebx, BYTE PTR [esp+12]
	test	edx, edx
	je	.L27
	.p2align 4
.L21:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	je	.L20
	add	eax, 1
	sub	edx, 1
	jne	.L21
	mov	eax, 0
.L20:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L27:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L20
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L28
	.p2align 5
.L29:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	jne	.L37
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	jne	.L29
	mov	eax, 0
	jmp	.L28
.L37:
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L28:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	esi, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	ebx, ebx
	je	.L39
	add	ebx, esi
	mov	eax, esi
	.p2align 5
.L40:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx-1]
	mov	BYTE PTR [eax-1], cl
	cmp	ebx, eax
	jne	.L40
.L39:
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+12]
	movzx	esi, BYTE PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	lea	eax, [ecx-1+eax]
	sub	ecx, 1
	.p2align 4
.L44:
	cmp	eax, ecx
	je	.L48
	mov	ebx, eax
	movzx	edx, BYTE PTR [eax]
	sub	eax, 1
	cmp	edx, esi
	jne	.L44
	jmp	.L43
.L48:
	mov	ebx, 0
.L43:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	edx, edx
	je	.L50
	add	edx, ebx
	mov	eax, ebx
	.p2align 4
.L51:
	mov	BYTE PTR [eax], cl
	add	eax, 1
	cmp	edx, eax
	jne	.L51
.L50:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	je	.L55
	.p2align 4
.L56:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L56
.L55:
	ret
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	.L64
	.p2align 5
.L59:
	movzx	edx, dl
	cmp	edx, ecx
	je	.L58
	add	eax, 1
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L59
.L58:
	ret
.L64:
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	.p2align 5
.L67:
	movzx	edx, BYTE PTR [eax]
	movsx	ecx, dl
	cmp	ecx, ebx
	je	.L66
	add	eax, 1
	test	dl, dl
	jne	.L67
	mov	eax, 0
.L66:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	edi, DWORD PTR [esp+24]
	mov	ebp, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [edi]
	movzx	edx, BYTE PTR [ebp+0]
	mov	BYTE PTR [esp+3], dl
	test	al, al
	setne	bl
	cmp	al, dl
	sete	dl
	test	bl, dl
	je	.L71
	mov	edx, 1
	.p2align 6
.L72:
	movzx	eax, BYTE PTR [edi+edx]
	movzx	ecx, BYTE PTR [ebp+0+edx]
	mov	BYTE PTR [esp+3], cl
	test	al, al
	setne	bl
	mov	esi, ebx
	cmp	al, cl
	sete	bl
	add	edx, 1
	mov	ecx, esi
	test	cl, bl
	jne	.L72
.L71:
	movzx	eax, al
	movzx	ecx, BYTE PTR [esp+3]
	sub	eax, ecx
	add	esp, 4
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	BYTE PTR [edx], 0
	je	.L78
	mov	eax, edx
	.p2align 3
.L77:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L77
.L76:
	sub	eax, edx
	ret
.L78:
	mov	eax, edx
	jmp	.L76
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	eax, 0
	test	edx, edx
	je	.L80
	lea	edi, [edx-1]
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	mov	edx, ecx
	add	edi, ecx
	test	al, al
	je	.L83
	.p2align 6
.L82:
	movzx	ecx, BYTE PTR [edx]
	cmp	edx, edi
	setne	bl
	mov	esi, ebx
	test	cl, cl
	setne	bl
	mov	ebp, ebx
	cmp	cl, al
	sete	cl
	and	ecx, ebp
	mov	ebx, esi
	test	cl, bl
	je	.L83
	add	DWORD PTR [esp+20], 1
	add	edx, 1
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L82
.L83:
	movzx	eax, al
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L80:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	cmp	ebx, 1
	jle	.L89
	and	ebx, -2
	add	ebx, eax
	.p2align 5
.L91:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
	cmp	eax, ebx
	jne	.L91
.L89:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	cmp	DWORD PTR [esp+4], 127
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	edx, 32
	sete	al
	cmp	edx, 9
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	edx, 31
	setbe	al
	cmp	edx, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 33
	cmp	eax, 93
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.globl	islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 32
	cmp	eax, 94
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	edx, 32
	sete	al
	sub	edx, 9
	cmp	edx, 4
	setbe	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 65
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	cmp	eax, 31
	setbe	dl
	lea	ecx, [eax-127]
	cmp	ecx, 32
	setbe	bl
	mov	ecx, 1
	or	dl, bl
	jne	.L104
	lea	edx, [eax-8232]
	cmp	edx, 1
	jbe	.L104
	sub	eax, 65529
	cmp	eax, 2
	setbe	cl
	movzx	ecx, cl
.L104:
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	cmp	eax, 254
	jbe	.L117
	cmp	eax, 8231
	setbe	cl
	lea	edx, [eax-8234]
	cmp	edx, 47061
	setbe	bl
	mov	edx, 1
	or	cl, bl
	jne	.L110
	lea	ecx, [eax-57344]
	cmp	ecx, 8184
	jbe	.L110
	lea	ecx, [eax-65532]
	mov	edx, 0
	cmp	ecx, 1048579
	ja	.L110
	not	eax
	test	eax, 65534
	setne	dl
	movzx	edx, dl
	jmp	.L110
.L117:
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	dl
	movzx	edx, dl
.L110:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	lea	ecx, [eax-48]
	mov	edx, 1
	cmp	ecx, 9
	jbe	.L118
	or	eax, 32
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
	movzx	edx, dl
.L118:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	and	eax, 127
	ret
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L130
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L126
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L129
	fsubrp	st(1), st
	ret
.L126:
	fstp	st(1)
	ret
.L129:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L122
.L130:
	fstp	st(1)
.L122:
	ret
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L139
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L135
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L138
	fsubrp	st(1), st
	ret
.L135:
	fstp	st(1)
	ret
.L138:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L131
.L139:
	fstp	st(1)
.L131:
	ret
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L145
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L148
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
	je	.L142
	test	edx, edx
	je	.L149
	fstp	st(1)
	ret
.L142:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L150
	fstp	st(1)
	ret
.L145:
	fstp	st(0)
	jmp	.L140
.L148:
	fstp	st(0)
	jmp	.L140
.L149:
	fstp	st(0)
	jmp	.L140
.L150:
	fstp	st(0)
.L140:
	ret
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L156
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L159
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
	je	.L153
	test	edx, edx
	je	.L160
	fstp	st(1)
	ret
.L153:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L161
	fstp	st(1)
	ret
.L156:
	fstp	st(0)
	jmp	.L151
.L159:
	fstp	st(0)
	jmp	.L151
.L160:
	fstp	st(0)
	jmp	.L151
.L161:
	fstp	st(0)
.L151:
	ret
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L167
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L170
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
	test	edx, edx
	je	.L171
	fstp	st(1)
	ret
.L164:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L172
	fstp	st(1)
	ret
.L167:
	fstp	st(0)
	jmp	.L162
.L170:
	fstp	st(0)
	jmp	.L162
.L171:
	fstp	st(0)
	jmp	.L162
.L172:
	fstp	st(0)
.L162:
	ret
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L181
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L179
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
	je	.L175
	test	edx, edx
	je	.L182
	fstp	st(0)
	ret
.L175:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L183
	fstp	st(0)
	ret
.L179:
	fstp	st(0)
	jmp	.L173
.L181:
	fstp	st(0)
	jmp	.L173
.L182:
	fstp	st(1)
	jmp	.L173
.L183:
	fstp	st(1)
.L173:
	ret
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L192
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L190
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
	je	.L186
	test	edx, edx
	je	.L193
	fstp	st(0)
	ret
.L186:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L194
	fstp	st(0)
	ret
.L190:
	fstp	st(0)
	jmp	.L184
.L192:
	fstp	st(0)
	jmp	.L184
.L193:
	fstp	st(1)
	jmp	.L184
.L194:
	fstp	st(1)
.L184:
	ret
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L203
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L201
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
	je	.L197
	test	edx, edx
	je	.L204
	fstp	st(0)
	ret
.L197:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L205
	fstp	st(0)
	ret
.L201:
	fstp	st(0)
	jmp	.L195
.L203:
	fstp	st(0)
	jmp	.L195
.L204:
	fstp	st(1)
	jmp	.L195
.L205:
	fstp	st(1)
.L195:
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
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	test	edx, edx
	je	.L209
	mov	edx, OFFSET FLAT:s.0
	.p2align 5
.L208:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
	jne	.L208
.L207:
	mov	BYTE PTR [edx], 0
	mov	eax, OFFSET FLAT:s.0
	ret
.L209:
	mov	edx, OFFSET FLAT:s.0
	jmp	.L207
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
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 1
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, 0
	ret
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	mov	eax, DWORD PTR seed
	imul	ecx, DWORD PTR seed+4, 1284865837
	imul	edx, eax, 1481765933
	add	ecx, edx
	mov	edx, 1284865837
	mul	edx
	add	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, edx
	mov	eax, edx
	shr	eax
	ret
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	test	edx, edx
	je	.L216
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L213
	mov	DWORD PTR [edx+4], eax
.L213:
	ret
.L216:
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	ret
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L218
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L218:
	mov	edx, DWORD PTR [eax+4]
	test	edx, edx
	je	.L217
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
.L217:
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	ebp, DWORD PTR [esp+48]
	mov	edi, DWORD PTR [esp+60]
	mov	eax, DWORD PTR [esp+56]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L221
	mov	ebx, DWORD PTR [esp+52]
	mov	esi, 0
	mov	DWORD PTR [esp+8], edx
.L223:
	mov	DWORD PTR [esp+12], ebx
	sub	esp, 8
	.cfi_def_cfa_offset 56
	push	ebx
	.cfi_def_cfa_offset 60
	push	ebp
	.cfi_def_cfa_offset 64
	call	[DWORD PTR [esp+80]]
	add	esp, 16
	.cfi_def_cfa_offset 48
	test	eax, eax
	je	.L225
	add	esi, 1
	add	ebx, edi
	cmp	DWORD PTR [esp+8], esi
	jne	.L223
	mov	edx, DWORD PTR [esp+8]
.L221:
	lea	eax, [edx+1]
	mov	ecx, DWORD PTR [esp+56]
	mov	DWORD PTR [ecx], eax
	imul	edx, edi
	mov	eax, edx
	add	eax, DWORD PTR [esp+52]
	sub	esp, 4
	.cfi_def_cfa_offset 52
	push	edi
	.cfi_def_cfa_offset 56
	push	ebp
	.cfi_def_cfa_offset 60
	push	eax
	.cfi_def_cfa_offset 64
	call	memcpy
	mov	ecx, eax
	add	esp, 16
	.cfi_def_cfa_offset 48
.L220:
	mov	eax, ecx
	add	esp, 28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L225:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
	jmp	.L220
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	ebp, DWORD PTR [esp+64]
	mov	eax, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [eax]
	test	edi, edi
	je	.L230
	mov	ebx, DWORD PTR [esp+52]
	mov	esi, 0
.L229:
	mov	DWORD PTR [esp+12], ebx
	sub	esp, 8
	.cfi_def_cfa_offset 56
	push	ebx
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+60]
	.cfi_def_cfa_offset 64
	call	ebp
	add	esp, 16
	.cfi_def_cfa_offset 48
	test	eax, eax
	je	.L232
	add	esi, 1
	add	ebx, DWORD PTR [esp+60]
	cmp	edi, esi
	jne	.L229
	mov	ecx, 0
	jmp	.L227
.L230:
	mov	ecx, 0
	jmp	.L227
.L232:
	mov	ecx, DWORD PTR [esp+12]
.L227:
	mov	eax, ecx
	add	esp, 28
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	xor	eax, edx
	sub	eax, edx
	ret
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [esp+16]
	jmp	.L236
.L237:
	add	ebx, 1
.L236:
	movzx	esi, BYTE PTR [ebx]
	mov	eax, esi
	movsx	eax, al
	push	eax
	.cfi_def_cfa_offset 20
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 16
	test	eax, eax
	jne	.L237
	mov	ecx, esi
	cmp	cl, 43
	je	.L243
	mov	edi, eax
	cmp	cl, 45
	jne	.L239
	mov	edi, 1
.L238:
	add	ebx, 1
.L239:
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	ja	.L241
	.p2align 5
.L240:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	lea	edx, [ecx-48]
	movsx	edx, dl
	sub	eax, edx
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	jbe	.L240
.L241:
	test	edi, edi
	jne	.L235
	neg	eax
.L235:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L243:
	.cfi_restore_state
	mov	edi, eax
	jmp	.L238
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [esp+16]
	jmp	.L249
.L250:
	add	ebx, 1
.L249:
	movzx	esi, BYTE PTR [ebx]
	mov	eax, esi
	movsx	eax, al
	push	eax
	.cfi_def_cfa_offset 20
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 16
	test	eax, eax
	jne	.L250
	mov	ecx, esi
	cmp	cl, 43
	je	.L256
	mov	edi, eax
	cmp	cl, 45
	jne	.L252
	mov	edi, 1
.L251:
	add	ebx, 1
.L252:
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	ja	.L254
	.p2align 5
.L253:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	lea	edx, [ecx-48]
	movsx	edx, dl
	sub	eax, edx
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	jbe	.L253
.L254:
	test	edi, edi
	jne	.L248
	neg	eax
.L248:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L256:
	.cfi_restore_state
	mov	edi, eax
	jmp	.L251
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	ebx, DWORD PTR [esp+24]
	jmp	.L262
.L263:
	add	ebx, 1
.L262:
	movzx	esi, BYTE PTR [ebx]
	mov	eax, esi
	movsx	eax, al
	push	eax
	.cfi_def_cfa_offset 28
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 24
	mov	ebp, eax
	test	eax, eax
	jne	.L263
	mov	eax, esi
	cmp	al, 43
	je	.L264
	cmp	al, 45
	jne	.L265
	mov	ebp, 1
.L264:
	add	ebx, 1
.L265:
	movzx	ecx, BYTE PTR [ebx]
	movsx	esi, cl
	sub	esi, 48
	mov	eax, 0
	mov	edx, 0
	cmp	esi, 9
	ja	.L267
	.p2align 6
.L266:
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, 2
	sal	esi, 2
	add	eax, esi
	adc	edx, edi
	add	eax, eax
	adc	edx, edx
	add	ebx, 1
	sub	ecx, 48
	movsx	esi, cl
	mov	edi, esi
	sar	edi, 31
	sub	eax, esi
	sbb	edx, edi
	movzx	ecx, BYTE PTR [ebx]
	movsx	esi, cl
	sub	esi, 48
	cmp	esi, 9
	jbe	.L266
.L267:
	test	ebp, ebp
	jne	.L261
	neg	eax
	adc	edx, 0
	neg	edx
.L261:
	add	esp, 4
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+40]
	mov	ebp, DWORD PTR [esp+44]
	test	ebx, ebx
	jne	.L276
	mov	esi, 0
	jmp	.L273
.L278:
	mov	ebx, edi
.L275:
	test	ebx, ebx
	je	.L282
.L276:
	mov	edi, ebx
	shr	edi
	mov	esi, edi
	imul	esi, ebp
	add	esi, DWORD PTR [esp+36]
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	esi
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	js	.L278
	jle	.L273
	lea	eax, [esi+ebp]
	mov	DWORD PTR [esp+36], eax
	sub	ebx, 1
	sub	ebx, edi
	jmp	.L275
.L282:
	mov	esi, 0
.L273:
	mov	eax, esi
	add	esp, 12
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	ebp, DWORD PTR [esp+36]
	mov	eax, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+44]
	mov	esi, eax
	test	eax, eax
	jne	.L286
	mov	ebx, 0
	jmp	.L283
.L285:
	sar	esi
	je	.L291
.L286:
	mov	ebx, esi
	sar	ebx
	imul	ebx, edi
	add	ebx, ebp
	sub	esp, 4
	.cfi_def_cfa_offset 36
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 40
	push	ebx
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	je	.L283
	jle	.L285
	lea	ebp, [ebx+edi]
	sub	esi, 1
	jmp	.L285
.L291:
	mov	ebx, 0
.L283:
	mov	eax, ebx
	add	esp, 12
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	mov	eax, ecx
	ret	4
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, eax
	mov	ebx, edx
	mov	ebx, ebx
	sar	ebx, 31
	mov	ecx, ebx
	xor	eax, ecx
	xor	edx, ebx
	sub	eax, ecx
	sbb	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	esp, 16
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+36]
	mov	edx, DWORD PTR [esp+40]
	mov	esi, DWORD PTR [esp+44]
	mov	edi, DWORD PTR [esp+48]
	push	edi
	.cfi_def_cfa_offset 36
	push	esi
	.cfi_def_cfa_offset 40
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	push	edx
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	call	__divdi3
	add	esp, 16
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	push	edi
	.cfi_def_cfa_offset 36
	push	esi
	.cfi_def_cfa_offset 40
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 48
	call	__moddi3
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 32
	.cfi_def_cfa_offset 16
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.globl	labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	xor	eax, edx
	sub	eax, edx
	ret
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	mov	eax, ecx
	ret	4
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, eax
	mov	ebx, edx
	mov	ebx, ebx
	sar	ebx, 31
	mov	ecx, ebx
	xor	eax, ecx
	xor	edx, ebx
	sub	eax, ecx
	sbb	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	esp, 16
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+36]
	mov	edx, DWORD PTR [esp+40]
	mov	esi, DWORD PTR [esp+44]
	mov	edi, DWORD PTR [esp+48]
	push	edi
	.cfi_def_cfa_offset 36
	push	esi
	.cfi_def_cfa_offset 40
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	push	edx
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	call	__divdi3
	add	esp, 16
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	push	edi
	.cfi_def_cfa_offset 36
	push	esi
	.cfi_def_cfa_offset 40
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 48
	call	__moddi3
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 32
	.cfi_def_cfa_offset 16
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [edx]
	cmp	esi, eax
	setne	bl
	test	eax, eax
	setne	cl
	test	bl, cl
	je	.L304
	.p2align 5
.L305:
	add	edx, 4
	mov	eax, DWORD PTR [edx]
	cmp	eax, esi
	setne	bl
	test	eax, eax
	setne	cl
	test	bl, cl
	jne	.L305
.L304:
	neg	eax
	sbb	eax, eax
	and	edx, eax
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esi]
	mov	ecx, DWORD PTR [edi]
	test	ebx, ebx
	setne	al
	cmp	ebx, ecx
	sete	dl
	and	eax, edx
	test	ecx, ecx
	setne	dl
	test	al, dl
	je	.L310
	mov	DWORD PTR [esp], 4
	.p2align 6
.L311:
	mov	eax, DWORD PTR [esp]
	mov	ebx, DWORD PTR [esi+eax]
	mov	ecx, DWORD PTR [edi+eax]
	test	ebx, ebx
	setne	dl
	cmp	ebx, ecx
	sete	al
	mov	ebp, eax
	and	edx, ebp
	test	ecx, ecx
	setne	al
	add	DWORD PTR [esp], 4
	test	dl, al
	jne	.L311
.L310:
	mov	eax, -1
	cmp	ebx, ecx
	jl	.L309
	setg	al
	movzx	eax, al
.L309:
	add	esp, 4
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, 0
	.p2align 4
.L317:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L317
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	DWORD PTR [edx], 0
	je	.L323
	mov	eax, edx
	.p2align 3
.L322:
	add	eax, 4
	cmp	DWORD PTR [eax], 0
	jne	.L322
.L321:
	sub	eax, edx
	sar	eax, 2
	ret
.L323:
	mov	eax, edx
	jmp	.L321
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	eax, 0
	test	edi, edi
	je	.L325
	.p2align 6
.L326:
	mov	esi, DWORD PTR [ecx]
	mov	ebx, DWORD PTR [ebp+0]
	test	esi, esi
	setne	al
	cmp	esi, ebx
	sete	dl
	mov	esi, edx
	and	eax, esi
	test	ebx, ebx
	setne	bl
	test	al, bl
	je	.L335
	add	ecx, 4
	add	ebp, 4
	sub	edi, 1
	jne	.L326
	mov	eax, 0
	jmp	.L325
.L330:
	cmp	ecx, eax
	setg	al
	movzx	eax, al
.L325:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L335:
	.cfi_restore_state
	mov	ecx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [ebp+0]
	cmp	ecx, eax
	jge	.L330
	mov	eax, -1
	jmp	.L325
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L342
	.p2align 4
.L337:
	cmp	DWORD PTR [eax], ecx
	je	.L343
	add	eax, 4
	sub	edx, 1
	jne	.L337
	mov	eax, 0
	ret
.L342:
	mov	eax, 0
	ret
.L343:
	ret
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L344
	.p2align 5
.L345:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], ebx
	jne	.L354
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	jne	.L345
	mov	eax, 0
.L344:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L349:
	.cfi_restore_state
	cmp	ecx, eax
	setg	al
	movzx	eax, al
	jmp	.L344
.L354:
	mov	ecx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx]
	cmp	ecx, eax
	jge	.L349
	mov	eax, -1
	jmp	.L344
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	test	ecx, ecx
	je	.L356
	lea	eax, [ecx-1]
	mov	ecx, ebx
	.p2align 5
.L357:
	add	edx, 4
	add	ecx, 4
	mov	esi, DWORD PTR [edx-4]
	mov	DWORD PTR [ecx-4], esi
	sub	eax, 1
	cmp	eax, -1
	jne	.L357
.L356:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	cmp	ebx, edx
	je	.L361
	mov	ecx, ebx
	sub	ecx, edx
	lea	eax, [0+esi*4]
	cmp	ecx, eax
	jb	.L362
	lea	ecx, [esi-1]
	mov	eax, ebx
	test	esi, esi
	je	.L361
	.p2align 5
.L363:
	add	edx, 4
	add	eax, 4
	mov	esi, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], esi
	sub	ecx, 1
	cmp	ecx, -1
	jne	.L363
	jmp	.L361
.L362:
	lea	eax, [esi-1]
	test	esi, esi
	je	.L361
	.p2align 4
.L364:
	mov	ecx, DWORD PTR [edx+eax*4]
	mov	DWORD PTR [ebx+eax*4], ecx
	sub	eax, 1
	cmp	eax, -1
	jne	.L364
.L361:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	edx, edx
	je	.L371
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
.L372:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	sub	eax, 1
	cmp	eax, -1
	jne	.L372
.L371:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, ecx
	jnb	.L376
	test	eax, eax
	je	.L375
	.p2align 4
.L378:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	sub	eax, 1
	jne	.L378
.L375:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L376:
	.cfi_restore_state
	je	.L375
	test	eax, eax
	je	.L375
	add	eax, edx
	.p2align 5
.L379:
	add	edx, 1
	add	ecx, 1
	movzx	ebx, BYTE PTR [edx-1]
	mov	BYTE PTR [ecx-1], bl
	cmp	eax, edx
	jne	.L379
	jmp	.L375
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L385
	mov	edi, esi
	xor	esi, esi
.L385:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L386
	mov	eax, edx
	xor	edx, edx
.L386:
	or	eax, esi
	or	edx, edi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L389
	mov	esi, edi
	xor	edi, edi
.L389:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L390
	mov	edx, eax
	xor	eax, eax
.L390:
	or	eax, esi
	or	edx, edi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [esp+4]
	rol	ax, cl
	ret
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [esp+4]
	ror	ax, cl
	ret
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [esp+4]
	rol	al, cl
	ret
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [esp+4]
	ror	al, cl
	ret
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	movzx	eax, WORD PTR [esp+4]
	rol	ax, 8
	ret
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ebx, edx
	shr	ebx, 24
	mov	ecx, edx
	shr	ecx, 8
	and	ecx, 65280
	mov	eax, edx
	sal	eax, 8
	and	eax, 16711680
	sal	edx, 24
	or	edx, ebx
	or	edx, ecx
	or	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	esp, 40
	.cfi_def_cfa_offset 56
	mov	ecx, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+60]
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 24
	shr	edi, 24
	and	esi, 16711680
	mov	edi, 0
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+12], edi
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 8
	sal	esi, 8
	mov	esi, 0
	and	edi, 255
	mov	DWORD PTR [esp+24], esi
	mov	DWORD PTR [esp+28], edi
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 24
	sal	esi, 24
	mov	esi, 0
	and	edi, 65280
	mov	eax, ecx
	mov	edx, ebx
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	mov	eax, 0
	and	edx, 16711680
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	or	ecx, DWORD PTR [esp+32]
	or	ebx, DWORD PTR [esp+36]
	or	ecx, DWORD PTR [esp]
	or	ebx, DWORD PTR [esp+4]
	or	ecx, DWORD PTR [esp+8]
	or	ebx, DWORD PTR [esp+12]
	or	ecx, DWORD PTR [esp+16]
	or	ebx, DWORD PTR [esp+20]
	or	ecx, DWORD PTR [esp+24]
	or	ebx, DWORD PTR [esp+28]
	or	esi, ecx
	or	edi, ebx
	or	eax, esi
	or	edx, edi
	add	esp, 40
	.cfi_def_cfa_offset 16
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, 0
	.p2align 4
.L407:
	bt	edx, eax
	jc	.L409
	add	eax, 1
	cmp	eax, 32
	jne	.L407
	mov	eax, 0
	ret
.L409:
	add	eax, 1
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, eax
	test	eax, eax
	je	.L410
	and	edx, 1
	jne	.L410
	mov	edx, 1
	.p2align 4
.L412:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L412
.L410:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR .LC2
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	eax, 1
	ja	.L418
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L415
.L418:
	fstp	st(0)
.L415:
	ret
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR .LC4
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	eax, 1
	ja	.L422
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L419
.L422:
	fstp	st(0)
.L419:
	ret
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR .LC6
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	eax, 1
	ja	.L426
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L423
.L426:
	fstp	st(0)
.L423:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	fild	DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	fstp	TBYTE PTR [eax]
	ret
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L429
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L435
	jne	.L435
	jmp	.L429
.L436:
	fstp	st(0)
.L429:
	ret
.L435:
	fld	DWORD PTR .LC8
	test	edx, edx
	jns	.L433
	fstp	st(0)
	fld	DWORD PTR .LC9
	jmp	.L433
	.p2align 5
.L432:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L436
	fmul	st, st(0)
.L433:
	test	dl, 1
	je	.L432
	fmul	st(1), st
	jmp	.L432
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+12]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L438
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L444
	jne	.L444
	jmp	.L438
.L446:
	fstp	st(0)
.L438:
	ret
.L444:
	test	edx, edx
	js	.L445
	fld	DWORD PTR .LC8
	jmp	.L442
.L445:
	fld	DWORD PTR .LC9
	jmp	.L442
	.p2align 5
.L441:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L446
	fmul	st, st(0)
.L442:
	test	dl, 1
	je	.L441
	fmul	st(1), st
	jmp	.L441
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	mov	edx, DWORD PTR [esp+16]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L448
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L454
	jne	.L454
	jmp	.L448
.L456:
	fstp	st(0)
.L448:
	ret
.L454:
	test	edx, edx
	js	.L455
	fld	DWORD PTR .LC8
	jmp	.L452
.L455:
	fld	DWORD PTR .LC9
	jmp	.L452
	.p2align 5
.L451:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L456
	fmul	st, st(0)
.L452:
	test	dl, 1
	je	.L451
	fmul	st(1), st
	jmp	.L451
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	esi, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	ebx, ebx
	je	.L458
	add	ebx, eax
	mov	edx, esi
	.p2align 5
.L459:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [edx-1]
	xor	cl, BYTE PTR [eax-1]
	mov	BYTE PTR [edx-1], cl
	cmp	ebx, eax
	jne	.L459
.L458:
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	push	edi
	.cfi_def_cfa_offset 20
	call	strlen
	add	esp, 4
	.cfi_def_cfa_offset 16
	add	eax, edi
	test	ebx, ebx
	je	.L464
	.p2align 5
.L463:
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	je	.L466
	add	esi, 1
	add	eax, 1
	sub	ebx, 1
	jne	.L463
.L464:
	mov	BYTE PTR [eax], 0
.L466:
	mov	eax, edi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	eax, 0
	test	edx, edx
	je	.L476
.L470:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L477
.L469:
	ret
.L476:
	mov	eax, edx
	ret
.L477:
	add	eax, 1
	cmp	edx, eax
	jne	.L470
	mov	eax, edx
	ret
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	je	.L486
.L479:
	mov	eax, esi
	.p2align 4
.L482:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	.L487
	add	eax, 1
	cmp	dl, cl
	jne	.L482
.L480:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L486:
	.cfi_restore_state
	mov	ebx, 0
	jmp	.L480
.L487:
	add	ebx, 1
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	jne	.L479
	mov	ebx, 0
	jmp	.L480
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	mov	esi, 0
	jmp	.L490
	.p2align 5
.L489:
	add	eax, 1
	test	dl, dl
	je	.L494
.L490:
	movzx	edx, BYTE PTR [eax]
	movsx	ecx, dl
	cmp	ecx, ebx
	jne	.L489
	mov	esi, eax
	jmp	.L489
.L494:
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [esp+20]
	push	DWORD PTR [esp+24]
	.cfi_def_cfa_offset 24
	call	strlen
	add	esp, 4
	.cfi_def_cfa_offset 20
	mov	ebx, esi
	test	eax, eax
	je	.L495
	mov	edi, eax
	mov	eax, DWORD PTR [esp+24]
	movsx	ebp, BYTE PTR [eax]
.L497:
	push	ebp
	.cfi_def_cfa_offset 24
	push	esi
	.cfi_def_cfa_offset 28
	call	strchr
	add	esp, 8
	.cfi_def_cfa_offset 20
	mov	ebx, eax
	test	eax, eax
	je	.L495
	push	edi
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	strncmp
	add	esp, 12
	.cfi_def_cfa_offset 20
	test	eax, eax
	je	.L495
	lea	esi, [ebx+1]
	jmp	.L497
.L495:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	fldz
	fcomp	st(2)
	fnstsw	ax
	sahf
	ja	.L511
	fxch	st(1)
	ftst
	fnstsw	ax
	sahf
	jbe	.L512
	fldz
	fcomp	st(2)
	fnstsw	ax
	fstp	st(1)
	sahf
	ja	.L504
	jmp	.L505
.L512:
	fstp	st(1)
.L505:
	ret
.L511:
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L505
.L504:
	fchs
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+32]
	mov	ebp, DWORD PTR [esp+36]
	mov	esi, ecx
	sub	esi, ebp
	add	esi, ebx
	mov	eax, ebx
	test	ebp, ebp
	je	.L513
	cmp	ecx, ebp
	jb	.L518
	cmp	esi, ebx
	jb	.L519
	movzx	edi, BYTE PTR [edx]
	sub	ebp, 1
	lea	eax, [edx+1]
	mov	DWORD PTR [esp], eax
	jmp	.L516
	.p2align 4
.L515:
	add	ebx, 1
	cmp	esi, ebx
	jb	.L523
.L516:
	mov	eax, edi
	cmp	BYTE PTR [ebx], al
	jne	.L515
	lea	eax, [ebx+1]
	push	ebp
	.cfi_def_cfa_offset 28
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 32
	push	eax
	.cfi_def_cfa_offset 36
	call	memcmp
	add	esp, 12
	.cfi_def_cfa_offset 24
	test	eax, eax
	jne	.L515
	mov	eax, ebx
	jmp	.L513
.L523:
	mov	eax, 0
.L513:
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L518:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L513
.L519:
	mov	eax, 0
	jmp	.L513
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 12
	.cfi_def_cfa_offset 20
	mov	ebx, DWORD PTR [esp+28]
	push	ebx
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 32
	call	memcpy
	add	eax, ebx
	add	esp, 24
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	fld	QWORD PTR [esp+8]
	fldz
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	ecx, 0
	ja	.L547
.L527:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	mov	edx, 0
	jb	.L545
	.p2align 5
.L531:
	add	edx, 1
	fmul	DWORD PTR .LC9
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L531
.L532:
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L536
	fchs
.L536:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L547:
	.cfi_restore_state
	fchs
	mov	ecx, 1
	jmp	.L527
.L545:
	mov	ebx, 1
	fldz
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L533
	jne	.L533
	mov	ebx, 0
.L533:
	fld	DWORD PTR .LC9
	fcomp	st(1)
	fnstsw	ax
	sahf
	seta	al
	mov	edx, 0
	test	bl, al
	je	.L532
	.p2align 5
.L535:
	sub	edx, 1
	fadd	st, st(0)
	fld	DWORD PTR .LC9
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L535
	jmp	.L532
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	esp, 8
	.cfi_def_cfa_offset 24
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	eax, ecx
	or	ecx, ebx
	je	.L551
	mov	edx, ebx
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	.p2align 6
.L550:
	mov	ecx, eax
	and	ecx, 1
	mov	ebx, 0
	neg	ecx
	adc	ebx, 0
	neg	ebx
	and	ecx, esi
	and	ebx, edi
	add	DWORD PTR [esp], ecx
	adc	DWORD PTR [esp+4], ebx
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
	mov	ecx, eax
	or	ecx, edx
	jne	.L550
.L548:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L551:
	.cfi_restore_state
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	jmp	.L548
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	edi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	mov	edx, 1
	cmp	eax, edi
	jnb	.L562
	.p2align 5
.L555:
	test	eax, eax
	js	.L562
	add	eax, eax
	cmp	eax, edi
	setb	bl
	mov	esi, ebx
	add	edx, edx
	setne	bl
	mov	ecx, esi
	test	cl, bl
	jne	.L555
	test	edx, edx
	je	.L569
.L562:
	mov	ebx, 0
	jmp	.L560
	.p2align 4
.L559:
	shr	eax
	shr	edx
	je	.L561
.L560:
	cmp	edi, eax
	jb	.L559
	sub	edi, eax
	or	ebx, edx
	jmp	.L559
.L569:
	mov	ebx, edx
.L561:
	cmp	DWORD PTR [esp+24], 0
	jne	.L570
.L554:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L570:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L554
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, edx
	sar	cl, 7
	mov	eax, ecx
	xor	eax, edx
	mov	ebx, 7
	cmp	dl, cl
	je	.L571
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
.L571:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	esi, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	eax, esi
	mov	edx, edi
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, esi
	mov	ebx, edi
	xor	ecx, eax
	xor	ebx, edx
	mov	ebp, 63
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	eax, DWORD PTR [esp]
	xor	eax, esi
	mov	edx, DWORD PTR [esp+4]
	xor	edx, edi
	or	eax, edx
	je	.L575
	test	ebx, ebx
	je	.L577
	bsr	ebp, ebx
	xor	ebp, 31
.L578:
	sub	ebp, 1
.L575:
	mov	eax, ebp
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L577:
	.cfi_restore_state
	bsr	ebp, ecx
	xor	ebp, 31
	add	ebp, 32
	jmp	.L578
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L584
	mov	ebx, 0
	.p2align 5
.L583:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L583
.L581:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L584:
	.cfi_restore_state
	mov	ebx, edx
	jmp	.L581
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	edi, ebx
	shr	edi, 3
	mov	ebp, ebx
	and	ebp, -8
	cmp	edx, esi
	jnb	.L588
.L591:
	test	edi, edi
	je	.L590
	mov	eax, esi
	mov	ecx, edx
	lea	edi, [esi+edi*8]
	mov	DWORD PTR [esp+24], esi
	mov	DWORD PTR [esp+28], ebx
	.p2align 5
.L594:
	mov	ebx, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx], ebx
	mov	DWORD PTR [ecx+4], esi
	add	eax, 8
	add	ecx, 8
	cmp	eax, edi
	jne	.L594
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
.L590:
	cmp	ebp, ebx
	jnb	.L587
	lea	eax, [esi+ebp]
	add	edx, ebp
	add	ebx, esi
	.p2align 4
.L595:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	.L595
.L587:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L588:
	.cfi_restore_state
	lea	eax, [esi+ebx]
	cmp	eax, edx
	jb	.L591
	lea	eax, [ebx-1]
	test	ebx, ebx
	je	.L587
	.p2align 4
.L592:
	movzx	ecx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	.L592
	jmp	.L587
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	ecx, edi
	shr	ecx
	cmp	esi, ebx
	jnb	.L603
.L606:
	test	ecx, ecx
	je	.L605
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 4
.L609:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
	cmp	eax, ebp
	jne	.L609
.L605:
	test	edi, 1
	je	.L602
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
.L602:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L603:
	.cfi_restore_state
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jb	.L606
	lea	eax, [edi-1]
	test	edi, edi
	je	.L602
	.p2align 4
.L607:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	cmp	eax, -1
	jne	.L607
	jmp	.L602
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	edi, ebx
	shr	edi, 2
	mov	ebp, ebx
	and	ebp, -4
	cmp	edx, esi
	jnb	.L615
.L618:
	test	edi, edi
	je	.L617
	mov	eax, esi
	mov	ecx, edx
	lea	edi, [esi+edi*4]
	mov	DWORD PTR [esp+20], edx
	.p2align 4
.L621:
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	add	eax, 4
	add	ecx, 4
	cmp	eax, edi
	jne	.L621
	mov	edx, DWORD PTR [esp+20]
.L617:
	cmp	ebp, ebx
	jnb	.L614
	lea	eax, [esi+ebp]
	add	edx, ebp
	add	ebx, esi
	.p2align 4
.L622:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	.L622
.L614:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L615:
	.cfi_restore_state
	lea	eax, [esi+ebx]
	cmp	eax, edx
	jb	.L618
	lea	eax, [ebx-1]
	test	ebx, ebx
	je	.L614
	.p2align 4
.L619:
	movzx	ecx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	.L619
	jmp	.L614
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fild	QWORD PTR [esp+16]
	cmp	DWORD PTR [esp+20], 0
	js	.L637
.L635:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L637:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L635
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fild	QWORD PTR [esp+16]
	cmp	DWORD PTR [esp+20], 0
	js	.L641
.L639:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L641:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L639
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, 0
	div	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, 0
	movzx	ebx, WORD PTR [esp+8]
	mov	ecx, 15
	.p2align 5
.L645:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	.L643
	add	eax, 1
	cmp	eax, 16
	jne	.L645
.L643:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	mov	eax, 0
	movzx	edx, WORD PTR [esp+4]
	.p2align 4
.L650:
	bt	edx, eax
	jc	.L648
	add	eax, 1
	cmp	eax, 16
	jne	.L650
.L648:
	ret
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	sub	esp, 8
	.cfi_def_cfa_offset 12
	fld	DWORD PTR [esp+12]
	fcom	DWORD PTR .LC12
	fnstsw	ax
	sahf
	jnb	.L660
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
.L658:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L660:
	.cfi_restore_state
	fsub	DWORD PTR .LC12
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	eax, 32768
	jmp	.L658
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
.L662:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L662
	and	eax, 1
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
.L666:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L666
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L672
	mov	ebx, 0
	.p2align 5
.L671:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L671
.L669:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L672:
	.cfi_restore_state
	mov	ebx, edx
	jmp	.L669
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ebx, ecx
	test	ecx, ecx
	je	.L675
	test	edx, edx
	je	.L679
	mov	ebx, 0
	.p2align 5
.L677:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L677
.L675:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L679:
	.cfi_restore_state
	mov	ebx, edx
	jmp	.L675
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	edi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	mov	edx, 1
	cmp	eax, edi
	jnb	.L690
	.p2align 5
.L683:
	test	eax, eax
	js	.L690
	add	eax, eax
	cmp	eax, edi
	setb	bl
	mov	esi, ebx
	add	edx, edx
	setne	bl
	mov	ecx, esi
	test	cl, bl
	jne	.L683
	test	edx, edx
	je	.L697
.L690:
	mov	ebx, 0
	jmp	.L688
	.p2align 4
.L687:
	shr	eax
	shr	edx
	je	.L689
.L688:
	cmp	edi, eax
	jb	.L687
	sub	edi, eax
	or	ebx, edx
	jmp	.L687
.L697:
	mov	ebx, edx
.L689:
	cmp	DWORD PTR [esp+24], 0
	jne	.L698
.L682:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L698:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L682
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+8]
	fcom	st(1)
	fnstsw	ax
	sahf
	mov	eax, -1
	ja	.L702
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L699
.L702:
	fstp	st(0)
	fstp	st(0)
.L699:
	ret
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	fcom	st(1)
	fnstsw	ax
	sahf
	mov	eax, -1
	ja	.L706
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L703
.L706:
	fstp	st(0)
	fstp	st(0)
.L703:
	ret
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	esp, 8
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	edi, eax
	sar	edi, 31
	mov	ebx, edx
	sar	ebx, 31
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [esp+4], ebx
	mov	ecx, edi
	imul	ecx, edx
	mov	ebx, DWORD PTR [esp+4]
	imul	ebx, eax
	add	ecx, ebx
	mul	edx
	add	edx, ecx
	add	esp, 8
	.cfi_def_cfa_offset 16
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mul	DWORD PTR [esp+8]
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+24]
	test	edx, edx
	js	.L719
	je	.L716
	mov	edi, 0
.L712:
	mov	ebx, 1
	mov	esi, 0
	.p2align 6
.L714:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, DWORD PTR [esp+20]
	add	esi, eax
	sal	DWORD PTR [esp+20]
	sar	edx
	setne	al
	mov	ebp, eax
	cmp	bl, 31
	setbe	al
	add	ebx, 1
	mov	ecx, ebp
	test	cl, al
	jne	.L714
.L713:
	test	edi, edi
	je	.L710
	neg	esi
.L710:
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L719:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L712
.L716:
	mov	edi, edx
	mov	esi, edx
	jmp	.L713
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	test	eax, eax
	js	.L728
	test	edx, edx
	js	.L729
	push	0
	.cfi_def_cfa_offset 8
	push	edx
	.cfi_def_cfa_offset 12
	push	eax
	.cfi_def_cfa_offset 16
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
.L728:
	neg	eax
	test	edx, edx
	js	.L730
	push	0
	.cfi_def_cfa_offset 8
	push	edx
	.cfi_def_cfa_offset 12
	push	eax
	.cfi_def_cfa_offset 16
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 4
.L724:
	neg	eax
	ret
.L729:
	neg	edx
	push	0
	.cfi_def_cfa_offset 8
	push	edx
	.cfi_def_cfa_offset 12
	push	eax
	.cfi_def_cfa_offset 16
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 4
	jmp	.L724
.L730:
	neg	edx
	push	0
	.cfi_def_cfa_offset 8
	push	edx
	.cfi_def_cfa_offset 12
	push	eax
	.cfi_def_cfa_offset 16
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	test	edx, edx
	js	.L734
	mov	ecx, eax
	sar	ecx, 31
	xor	eax, ecx
	sub	eax, ecx
	push	1
	.cfi_def_cfa_offset 8
	push	eax
	.cfi_def_cfa_offset 12
	push	edx
	.cfi_def_cfa_offset 16
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
.L734:
	neg	edx
	mov	ecx, eax
	sar	ecx, 31
	xor	eax, ecx
	sub	eax, ecx
	push	1
	.cfi_def_cfa_offset 8
	push	eax
	.cfi_def_cfa_offset 12
	push	edx
	.cfi_def_cfa_offset 16
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 4
	neg	eax
	ret
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	edi, ebx
	mov	eax, esi
	mov	edx, 1
	cmp	si, bx
	jnb	.L743
	.p2align 5
.L736:
	test	ax, ax
	js	.L743
	add	eax, eax
	cmp	ax, di
	setb	bl
	mov	esi, ebx
	add	dx, dx
	setne	bl
	mov	ecx, esi
	test	cl, bl
	jne	.L736
	test	dx, dx
	je	.L750
.L743:
	mov	ebx, 0
	jmp	.L741
	.p2align 4
.L740:
	shr	ax
	shr	dx
	je	.L742
.L741:
	cmp	di, ax
	jb	.L740
	sub	edi, eax
	or	ebx, edx
	jmp	.L740
.L750:
	mov	ebx, edx
.L742:
	cmp	DWORD PTR [esp+24], 0
	jne	.L751
.L735:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L751:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L735
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	edi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	mov	edx, 1
	cmp	eax, edi
	jnb	.L760
	.p2align 5
.L753:
	test	eax, eax
	js	.L760
	add	eax, eax
	cmp	eax, edi
	setb	bl
	mov	esi, ebx
	add	edx, edx
	setne	bl
	mov	ecx, esi
	test	cl, bl
	jne	.L753
	test	edx, edx
	je	.L767
.L760:
	mov	ebx, 0
	jmp	.L758
	.p2align 4
.L757:
	shr	eax
	shr	edx
	je	.L759
.L758:
	cmp	edi, eax
	jb	.L757
	sub	edi, eax
	or	ebx, edx
	jmp	.L757
.L767:
	mov	ebx, edx
.L759:
	cmp	DWORD PTR [esp+24], 0
	jne	.L768
.L752:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L768:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L752
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	esi, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	bl, 32
	je	.L770
	mov	eax, 0
	lea	ecx, [ebx-32]
	sal	esi, cl
	mov	edx, esi
.L772:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L770:
	.cfi_restore_state
	mov	eax, esi
	test	ebx, ebx
	je	.L772
	mov	ecx, ebx
	sal	eax, cl
	sal	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	esi, cl
	or	edx, esi
	jmp	.L772
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	test	bl, 32
	je	.L776
	mov	edx, esi
	sar	edx, 31
	lea	ecx, [ebx-32]
	mov	eax, esi
	sar	eax, cl
.L778:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L776:
	.cfi_restore_state
	test	ebx, ebx
	je	.L779
	mov	edx, esi
	mov	ecx, ebx
	sar	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	mov	eax, esi
	sal	eax, cl
	mov	ecx, ebx
	shr	edi, cl
	or	eax, edi
	jmp	.L778
.L779:
	mov	eax, edi
	mov	edx, esi
	jmp	.L778
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	esp, 40
	.cfi_def_cfa_offset 56
	mov	ecx, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+60]
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 24
	shr	edi, 24
	and	esi, 16711680
	mov	edi, 0
	mov	DWORD PTR [esp+16], esi
	mov	DWORD PTR [esp+20], edi
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 8
	sal	esi, 8
	mov	esi, 0
	and	edi, 255
	mov	DWORD PTR [esp+32], esi
	mov	DWORD PTR [esp+36], edi
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 24
	sal	esi, 24
	mov	esi, 0
	and	edi, 65280
	mov	eax, ecx
	mov	edx, ebx
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	mov	eax, 0
	and	edx, 16711680
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	or	ecx, DWORD PTR [esp]
	or	ebx, DWORD PTR [esp+4]
	or	ecx, DWORD PTR [esp+8]
	or	ebx, DWORD PTR [esp+12]
	or	ecx, DWORD PTR [esp+16]
	or	ebx, DWORD PTR [esp+20]
	or	ecx, DWORD PTR [esp+24]
	or	ebx, DWORD PTR [esp+28]
	or	ecx, DWORD PTR [esp+32]
	or	ebx, DWORD PTR [esp+36]
	or	esi, ecx
	or	edi, ebx
	or	eax, esi
	or	edx, edi
	add	esp, 40
	.cfi_def_cfa_offset 16
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ebx, edx
	shr	ebx, 24
	mov	ecx, edx
	shr	ecx, 8
	and	ecx, 65280
	mov	eax, edx
	sal	eax, 8
	and	eax, 16711680
	sal	edx, 24
	or	edx, ebx
	or	edx, ecx
	or	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
	cmp	edx, 65535
	setbe	al
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
	add	ebx, eax
	test	dl, -16
	sete	al
	movzx	eax, al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	edx, cl
	lea	esi, [eax+ebx]
	test	dl, 12
	sete	bl
	movzx	ebx, bl
	add	ebx, ebx
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, ebx
	shr	edx, cl
	add	ebx, esi
	mov	ecx, edx
	shr	ecx
	and	ecx, 1
	sub	eax, edx
	cmp	cl, 1
	sbb	edx, edx
	and	eax, edx
	add	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, 0
	cmp	ecx, edx
	jg	.L787
	mov	eax, 2
	jl	.L787
	mov	eax, 0
	cmp	ebx, esi
	jb	.L787
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
.L787:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 12
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 16
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 20
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 24
	call	__cmpdi2
	sub	eax, 1
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	test	ax, ax
	sete	dl
	movzx	edx, dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	test	al, al
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	eax, cl
	add	edx, ecx
	test	al, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	eax, cl
	add	edx, ecx
	test	al, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	eax, cl
	and	eax, 3
	add	ecx, edx
	mov	edx, eax
	not	edx
	shr	eax
	mov	ebx, 2
	sub	ebx, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ebx
	add	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	test	bl, 32
	je	.L799
	mov	edx, 0
	lea	ecx, [ebx-32]
	mov	eax, esi
	shr	eax, cl
.L801:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L799:
	.cfi_restore_state
	test	ebx, ebx
	je	.L802
	mov	edx, esi
	mov	ecx, ebx
	shr	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	mov	eax, esi
	sal	eax, cl
	mov	ecx, ebx
	shr	edi, cl
	or	eax, edi
	jmp	.L801
.L802:
	mov	eax, edi
	mov	edx, esi
	jmp	.L801
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ecx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	movzx	edx, cx
	movzx	eax, si
	mov	edi, edx
	imul	edi, eax
	mov	ebx, edi
	shr	ebx, 16
	shr	ecx, 16
	imul	eax, ecx
	add	eax, ebx
	mov	ebx, eax
	shr	ebx, 16
	movzx	eax, ax
	movzx	edi, di
	shr	esi, 16
	imul	edx, esi
	add	edx, eax
	mov	eax, edx
	sal	eax, 16
	add	eax, edi
	shr	edx, 16
	imul	ecx, esi
	add	ebx, ecx
	add	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 4
	.cfi_def_cfa_offset 16
	mov	esi, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+24]
	push	ebx
	.cfi_def_cfa_offset 20
	push	esi
	.cfi_def_cfa_offset 24
	call	__muldsi3
	imul	ebx, DWORD PTR [esp+28]
	imul	esi, DWORD PTR [esp+36]
	add	ebx, esi
	add	edx, ebx
	add	esp, 12
	.cfi_def_cfa_offset 12
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	neg	eax
	adc	edx, 0
	neg	edx
	ret
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	xor	eax, DWORD PTR [esp+4]
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, eax
	mov	ebx, edx
	shrd	ecx, ebx, 1
	shr	ebx
	and	ecx, 1431655765
	and	ebx, 1431655765
	sub	eax, ecx
	sbb	edx, ebx
	mov	ecx, eax
	mov	ebx, edx
	shrd	ecx, ebx, 2
	shr	ebx, 2
	and	ecx, 858993459
	and	ebx, 858993459
	and	eax, 858993459
	and	edx, 858993459
	add	ecx, eax
	adc	ebx, edx
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 4
	shr	edx, 4
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	add	eax, edx
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, eax
	shr	edx
	and	edx, 1431655765
	sub	eax, edx
	mov	edx, eax
	shr	edx, 2
	and	edx, 858993459
	and	eax, 858993459
	add	edx, eax
	mov	eax, edx
	shr	eax, 4
	add	eax, edx
	and	eax, 252645135
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 63
	ret
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, ecx
	fld1
	jmp	.L817
	.p2align 5
.L815:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L816
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L817:
	test	dl, 1
	je	.L815
	fmul	st, st(1)
	jmp	.L815
.L816:
	fstp	st(1)
	test	ecx, ecx
	js	.L819
.L814:
	ret
.L819:
	fdivr	DWORD PTR .LC10
	jmp	.L814
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, ecx
	fld1
	jmp	.L823
	.p2align 5
.L821:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L822
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L823:
	test	dl, 1
	je	.L821
	fmul	st, st(1)
	jmp	.L821
.L822:
	fstp	st(1)
	test	ecx, ecx
	js	.L825
.L820:
	ret
.L825:
	fdivr	DWORD PTR .LC10
	jmp	.L820
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, 0
	cmp	edx, ecx
	jb	.L826
	mov	eax, 2
	cmp	ecx, edx
	jb	.L826
	mov	eax, 0
	cmp	ebx, esi
	jb	.L826
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
.L826:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 12
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 16
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 20
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 24
	call	__ucmpdi2
	sub	eax, 1
	add	esp, 20
	.cfi_def_cfa_offset 4
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
	.long	1073741824
	.align 4
.LC9:
	.long	1056964608
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
