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
	cmp	ecx, esi
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
	cmp	esi, edx
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
	cmp	ebx, ecx
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
	cmp	eax, ebx
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
	cmp	esi, edx
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
	cmp	eax, edx
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
	cmp	BYTE PTR [eax], 0
	je	.L64
	.p2align 4
.L59:
	movzx	edx, BYTE PTR [eax]
	cmp	ecx, edx
	je	.L58
	add	eax, 1
	cmp	BYTE PTR [eax], 0
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
	cmp	ebx, ecx
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
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	jne	.L72
	.p2align 5
.L71:
	cmp	BYTE PTR [eax], 0
	je	.L72
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	je	.L71
.L72:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
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
	mov	ebx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	mov	eax, 0
	test	ecx, ecx
	je	.L80
	lea	edi, [ecx-1]
	mov	eax, ebx
	add	edi, ebx
	cmp	BYTE PTR [ebx], 0
	je	.L83
.L82:
	movzx	ecx, BYTE PTR [ebp+0]
	cmp	eax, edi
	setne	bl
	mov	esi, ebx
	test	cl, cl
	setne	bl
	mov	edx, esi
	test	dl, bl
	je	.L83
	cmp	cl, BYTE PTR [eax]
	jne	.L83
	add	eax, 1
	add	ebp, 1
	cmp	BYTE PTR [eax], 0
	jne	.L82
.L83:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [ebp+0]
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
	mov	ecx, DWORD PTR [esp+16]
	cmp	ecx, 1
	jle	.L89
	sub	ecx, 2
	shr	ecx
	lea	ebx, [eax+2+ecx*2]
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
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 32
	sete	dl
	cmp	eax, 9
	sete	al
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
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 32
	sete	dl
	sub	eax, 9
	cmp	eax, 4
	setbe	al
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
	mov	edi, DWORD PTR [esp+60]
	mov	eax, DWORD PTR [esp+56]
	mov	ebp, DWORD PTR [eax]
	test	ebp, ebp
	je	.L221
	mov	ebx, DWORD PTR [esp+52]
	mov	esi, 0
.L223:
	mov	DWORD PTR [esp+12], ebx
	sub	esp, 8
	.cfi_def_cfa_offset 56
	push	ebx
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+60]
	.cfi_def_cfa_offset 64
	call	[DWORD PTR [esp+80]]
	add	esp, 16
	.cfi_def_cfa_offset 48
	test	eax, eax
	je	.L225
	add	esi, 1
	add	ebx, edi
	cmp	esi, ebp
	jne	.L223
.L221:
	lea	eax, [ebp+1]
	mov	ecx, DWORD PTR [esp+56]
	mov	DWORD PTR [ecx], eax
	mov	edx, ebp
	imul	edx, edi
	mov	eax, edx
	add	eax, DWORD PTR [esp+52]
	sub	esp, 4
	.cfi_def_cfa_offset 52
	push	edi
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+56]
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
	cmp	esi, edi
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	jmp	.L236
.L237:
	add	ebx, 1
.L236:
	movsx	esi, BYTE PTR [ebx]
	push	esi
	.cfi_def_cfa_offset 16
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 12
	test	eax, eax
	jne	.L237
	cmp	esi, 43
	je	.L243
	mov	ecx, eax
	cmp	esi, 45
	jne	.L239
	mov	ecx, 1
.L238:
	add	ebx, 1
.L239:
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	ja	.L240
	.p2align 5
.L241:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	edx, BYTE PTR [ebx-1]
	sub	edx, 48
	sub	eax, edx
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L241
.L240:
	test	ecx, ecx
	jne	.L235
	neg	eax
.L235:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L243:
	.cfi_restore_state
	mov	ecx, eax
	jmp	.L238
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	jmp	.L248
.L249:
	add	ebx, 1
.L248:
	movsx	esi, BYTE PTR [ebx]
	push	esi
	.cfi_def_cfa_offset 16
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 12
	test	eax, eax
	jne	.L249
	cmp	esi, 43
	je	.L255
	mov	ecx, eax
	cmp	esi, 45
	jne	.L251
	mov	ecx, 1
.L250:
	add	ebx, 1
.L251:
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	ja	.L252
	.p2align 5
.L253:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	edx, BYTE PTR [ebx-1]
	sub	edx, 48
	sub	eax, edx
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L253
.L252:
	test	ecx, ecx
	jne	.L247
	neg	eax
.L247:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L255:
	.cfi_restore_state
	mov	ecx, eax
	jmp	.L250
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
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
	jmp	.L260
.L261:
	add	ebx, 1
.L260:
	movsx	esi, BYTE PTR [ebx]
	push	esi
	.cfi_def_cfa_offset 20
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 16
	mov	ecx, eax
	test	eax, eax
	jne	.L261
	cmp	esi, 43
	je	.L262
	cmp	esi, 45
	jne	.L263
	mov	ecx, 1
.L262:
	add	ebx, 1
.L263:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	ja	.L267
	mov	eax, 0
	mov	edx, 0
	.p2align 6
.L265:
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, 2
	sal	esi, 2
	add	eax, esi
	adc	edx, edi
	add	eax, eax
	adc	edx, edx
	add	ebx, 1
	movsx	esi, BYTE PTR [ebx-1]
	sub	esi, 48
	mov	edi, esi
	sar	edi, 31
	sub	eax, esi
	sbb	edx, edi
	movsx	esi, BYTE PTR [ebx]
	sub	esi, 48
	cmp	esi, 9
	jbe	.L265
.L264:
	test	ecx, ecx
	jne	.L259
	neg	eax
	adc	edx, 0
	neg	edx
.L259:
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
.L267:
	.cfi_restore_state
	mov	eax, 0
	mov	edx, 0
	jmp	.L264
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
	jne	.L273
	mov	esi, 0
	jmp	.L270
.L275:
	mov	ebx, edi
.L272:
	test	ebx, ebx
	je	.L279
.L273:
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
	js	.L275
	jle	.L270
	lea	eax, [esi+ebp]
	mov	DWORD PTR [esp+36], eax
	sub	ebx, 1
	sub	ebx, edi
	jmp	.L272
.L279:
	mov	esi, 0
.L270:
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
	jne	.L283
	mov	ebx, 0
	jmp	.L280
.L282:
	sar	esi
	je	.L288
.L283:
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
	je	.L280
	jle	.L282
	lea	ebp, [ebx+edi]
	sub	esi, 1
	jmp	.L282
.L288:
	mov	ebx, 0
.L280:
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
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	cmp	DWORD PTR [eax], 0
	je	.L307
	.p2align 4
.L301:
	cmp	edx, DWORD PTR [eax]
	je	.L303
	add	eax, 4
	cmp	DWORD PTR [eax], 0
	jne	.L301
.L303:
	mov	ecx, DWORD PTR [eax]
	neg	ecx
	sbb	edx, edx
	and	eax, edx
	ret
.L307:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ecx
	jne	.L310
.L309:
	cmp	DWORD PTR [eax], 0
	je	.L310
	cmp	DWORD PTR [edx], 0
	je	.L310
	add	eax, 4
	add	edx, 4
	mov	ecx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ecx
	je	.L309
.L310:
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [edx]
	mov	eax, -1
	cmp	ecx, edx
	jl	.L308
	setg	al
	movzx	eax, al
.L308:
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
.L316:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L316
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
	je	.L322
	mov	eax, edx
	.p2align 3
.L321:
	add	eax, 4
	cmp	DWORD PTR [eax], 0
	jne	.L321
.L320:
	sub	eax, edx
	sar	eax, 2
	ret
.L322:
	mov	eax, edx
	jmp	.L320
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+16]
	test	ecx, ecx
	je	.L333
.L325:
	mov	ebx, DWORD PTR [edx]
	cmp	ebx, DWORD PTR [eax]
	jne	.L327
	test	ebx, ebx
	je	.L327
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	jne	.L325
	mov	eax, 0
	jmp	.L324
.L333:
	mov	eax, 0
	jmp	.L324
.L329:
	cmp	edx, eax
	setg	al
	movzx	eax, al
.L324:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L327:
	.cfi_restore_state
	mov	edx, DWORD PTR [edx]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jge	.L329
	mov	eax, -1
	jmp	.L324
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
	je	.L340
	.p2align 4
.L335:
	cmp	ecx, DWORD PTR [eax]
	je	.L341
	add	eax, 4
	sub	edx, 1
	jne	.L335
	mov	eax, 0
	ret
.L340:
	mov	eax, 0
	ret
.L341:
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
	je	.L342
	.p2align 5
.L343:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], ebx
	jne	.L352
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	jne	.L343
	mov	eax, 0
.L342:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L347:
	.cfi_restore_state
	cmp	ecx, eax
	setg	al
	movzx	eax, al
	jmp	.L342
.L352:
	mov	ecx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx]
	cmp	ecx, eax
	jge	.L347
	mov	eax, -1
	jmp	.L342
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
	je	.L354
	lea	eax, [ecx-1]
	mov	ecx, ebx
	.p2align 5
.L355:
	add	edx, 4
	add	ecx, 4
	mov	esi, DWORD PTR [edx-4]
	mov	DWORD PTR [ecx-4], esi
	sub	eax, 1
	cmp	eax, -1
	jne	.L355
.L354:
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
	je	.L359
	mov	ecx, ebx
	sub	ecx, edx
	lea	eax, [0+esi*4]
	cmp	ecx, eax
	jb	.L360
	lea	ecx, [esi-1]
	mov	eax, ebx
	test	esi, esi
	je	.L359
	.p2align 5
.L361:
	add	edx, 4
	add	eax, 4
	mov	esi, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], esi
	sub	ecx, 1
	cmp	ecx, -1
	jne	.L361
	jmp	.L359
.L360:
	lea	eax, [esi-1]
	test	esi, esi
	je	.L359
	.p2align 4
.L362:
	mov	ecx, DWORD PTR [edx+eax*4]
	mov	DWORD PTR [ebx+eax*4], ecx
	sub	eax, 1
	cmp	eax, -1
	jne	.L362
.L359:
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
	je	.L369
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
.L370:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	sub	eax, 1
	cmp	eax, -1
	jne	.L370
.L369:
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
	jnb	.L374
	test	eax, eax
	je	.L373
	.p2align 4
.L376:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	sub	eax, 1
	jne	.L376
.L373:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L374:
	.cfi_restore_state
	je	.L373
	test	eax, eax
	je	.L373
	add	eax, edx
	.p2align 5
.L377:
	add	edx, 1
	add	ecx, 1
	movzx	ebx, BYTE PTR [edx-1]
	mov	BYTE PTR [ecx-1], bl
	cmp	edx, eax
	jne	.L377
	jmp	.L373
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
	je	.L383
	mov	edi, esi
	xor	esi, esi
.L383:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L384
	mov	eax, edx
	xor	edx, edx
.L384:
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
	je	.L387
	mov	esi, edi
	xor	edi, edi
.L387:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L388
	mov	edx, eax
	xor	eax, eax
.L388:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, WORD PTR [esp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, WORD PTR [esp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [esp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [esp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
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
	mov	edx, DWORD PTR [esp+4]
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
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
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
.L408:
	bt	edx, eax
	jc	.L410
	add	eax, 1
	cmp	eax, 32
	jne	.L408
	mov	eax, 0
	ret
.L410:
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
	je	.L411
	and	edx, 1
	jne	.L411
	mov	edx, 1
	.p2align 4
.L413:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L413
.L411:
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
	ja	.L419
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L416
.L419:
	fstp	st(0)
.L416:
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
	ja	.L423
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L420
.L423:
	fstp	st(0)
.L420:
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
	ja	.L427
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L424
.L427:
	fstp	st(0)
.L424:
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
	jp	.L430
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L436
	jne	.L436
	jmp	.L430
.L437:
	fstp	st(0)
.L430:
	ret
.L436:
	fld	DWORD PTR .LC8
	test	edx, edx
	jns	.L434
	fstp	st(0)
	fld	DWORD PTR .LC9
	jmp	.L434
	.p2align 5
.L433:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L437
	fmul	st, st(0)
.L434:
	test	dl, 1
	je	.L433
	fmul	st(1), st
	jmp	.L433
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
	jp	.L439
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L445
	jne	.L445
	jmp	.L439
.L447:
	fstp	st(0)
.L439:
	ret
.L445:
	test	edx, edx
	js	.L446
	fld	DWORD PTR .LC8
	jmp	.L443
.L446:
	fld	DWORD PTR .LC9
	jmp	.L443
	.p2align 5
.L442:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L447
	fmul	st, st(0)
.L443:
	test	dl, 1
	je	.L442
	fmul	st(1), st
	jmp	.L442
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
	jp	.L449
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L455
	jne	.L455
	jmp	.L449
.L457:
	fstp	st(0)
.L449:
	ret
.L455:
	test	edx, edx
	js	.L456
	fld	DWORD PTR .LC8
	jmp	.L453
.L456:
	fld	DWORD PTR .LC9
	jmp	.L453
	.p2align 5
.L452:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L457
	fmul	st, st(0)
.L453:
	test	dl, 1
	je	.L452
	fmul	st(1), st
	jmp	.L452
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
	je	.L459
	add	ebx, eax
	mov	edx, esi
	.p2align 5
.L460:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [edx-1]
	xor	cl, BYTE PTR [eax-1]
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	.L460
.L459:
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
	je	.L465
	.p2align 5
.L464:
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	je	.L467
	add	esi, 1
	add	eax, 1
	sub	ebx, 1
	jne	.L464
.L465:
	mov	BYTE PTR [eax], 0
.L467:
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
	je	.L477
.L471:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L478
.L470:
	ret
.L477:
	mov	eax, edx
	ret
.L478:
	add	eax, 1
	cmp	eax, edx
	jne	.L471
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	cmp	BYTE PTR [ecx], 0
	je	.L487
.L480:
	mov	eax, ebx
	.p2align 4
.L483:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	.L488
	add	eax, 1
	cmp	BYTE PTR [ecx], dl
	jne	.L483
.L481:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L487:
	.cfi_restore_state
	mov	ecx, 0
	jmp	.L481
.L488:
	add	ecx, 1
	cmp	BYTE PTR [ecx], 0
	jne	.L480
	mov	ecx, 0
	jmp	.L481
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
	jmp	.L491
	.p2align 5
.L490:
	add	eax, 1
	test	dl, dl
	je	.L495
.L491:
	movzx	edx, BYTE PTR [eax]
	movsx	ecx, dl
	cmp	ebx, ecx
	jne	.L490
	mov	esi, eax
	jmp	.L490
.L495:
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
	je	.L496
	mov	edi, eax
	mov	eax, DWORD PTR [esp+24]
	movsx	ebp, BYTE PTR [eax]
.L498:
	push	ebp
	.cfi_def_cfa_offset 24
	push	esi
	.cfi_def_cfa_offset 28
	call	strchr
	add	esp, 8
	.cfi_def_cfa_offset 20
	mov	ebx, eax
	test	eax, eax
	je	.L496
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
	je	.L496
	lea	esi, [ebx+1]
	jmp	.L498
.L496:
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
	ja	.L512
	fxch	st(1)
	ftst
	fnstsw	ax
	sahf
	jbe	.L513
	fldz
	fcomp	st(2)
	fnstsw	ax
	fstp	st(1)
	sahf
	ja	.L505
	jmp	.L506
.L513:
	fstp	st(1)
.L506:
	ret
.L512:
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L506
.L505:
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
	je	.L514
	cmp	ecx, ebp
	jb	.L519
	cmp	esi, ebx
	jb	.L520
	movzx	edi, BYTE PTR [edx]
	sub	ebp, 1
	lea	eax, [edx+1]
	mov	DWORD PTR [esp], eax
	jmp	.L517
	.p2align 4
.L516:
	add	ebx, 1
	cmp	esi, ebx
	jb	.L524
.L517:
	mov	eax, edi
	cmp	BYTE PTR [ebx], al
	jne	.L516
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
	jne	.L516
	mov	eax, ebx
	jmp	.L514
.L524:
	mov	eax, 0
.L514:
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
.L519:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L514
.L520:
	mov	eax, 0
	jmp	.L514
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
	ja	.L548
.L528:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	mov	edx, 0
	jb	.L546
	.p2align 5
.L532:
	add	edx, 1
	fmul	DWORD PTR .LC9
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L532
.L533:
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L537
	fchs
.L537:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L548:
	.cfi_restore_state
	fchs
	mov	ecx, 1
	jmp	.L528
.L546:
	mov	ebx, 1
	fldz
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L534
	jne	.L534
	mov	ebx, 0
.L534:
	fld	DWORD PTR .LC9
	fcomp	st(1)
	fnstsw	ax
	sahf
	seta	al
	mov	edx, 0
	test	al, bl
	je	.L533
	.p2align 5
.L536:
	sub	edx, 1
	fadd	st, st(0)
	fld	DWORD PTR .LC9
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L536
	jmp	.L533
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
	je	.L552
	mov	edx, ebx
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	.p2align 6
.L551:
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
	jne	.L551
.L549:
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
.L552:
	.cfi_restore_state
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	jmp	.L549
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ebp, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	mov	edx, 1
	cmp	eax, ebp
	jnb	.L558
	.p2align 5
.L556:
	test	eax, eax
	js	.L558
	add	eax, eax
	cmp	eax, ebp
	setb	cl
	add	edx, edx
	setne	bl
	test	bl, cl
	jne	.L556
	mov	ebx, edx
	test	edx, edx
	je	.L559
.L558:
	mov	ebx, 0
	jmp	.L562
	.p2align 4
.L561:
	shr	eax
	shr	edx
	je	.L559
.L562:
	cmp	ebp, eax
	jb	.L561
	sub	ebp, eax
	or	ebx, edx
	jmp	.L561
.L559:
	cmp	DWORD PTR [esp+28], 0
	jne	.L570
.L555:
	mov	eax, ebx
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
.L570:
	.cfi_restore_state
	mov	ebx, ebp
	jmp	.L555
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	sar	al, 7
	mov	ecx, 7
	xor	al, dl
	je	.L571
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ecx, [eax-1]
.L571:
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
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
	mov	esi, DWORD PTR [esp+16]
	mov	edi, DWORD PTR [esp+20]
	mov	ecx, esi
	mov	ebx, edi
	mov	ebx, ebx
	sar	ebx, 31
	mov	ecx, ebx
	mov	eax, 63
	xor	ecx, esi
	xor	ebx, edi
	mov	edx, ecx
	or	edx, ebx
	je	.L574
	test	ebx, ebx
	je	.L576
	bsr	eax, ebx
	xor	eax, 31
.L577:
	sub	eax, 1
.L574:
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
.L576:
	.cfi_restore_state
	bsr	eax, ecx
	xor	eax, 31
	add	eax, 32
	jmp	.L577
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
	je	.L583
	mov	ebx, 0
	.p2align 5
.L582:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L582
.L580:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L583:
	.cfi_restore_state
	mov	ebx, edx
	jmp	.L580
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
	jnb	.L587
.L590:
	test	edi, edi
	je	.L589
	mov	eax, esi
	mov	ecx, edx
	lea	edi, [esi+edi*8]
	mov	DWORD PTR [esp+24], esi
	mov	DWORD PTR [esp+28], ebx
	.p2align 5
.L593:
	mov	ebx, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx], ebx
	mov	DWORD PTR [ecx+4], esi
	add	eax, 8
	add	ecx, 8
	cmp	eax, edi
	jne	.L593
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
.L589:
	cmp	ebp, ebx
	jnb	.L586
	lea	eax, [esi+ebp]
	add	edx, ebp
	add	ebx, esi
	.p2align 4
.L594:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	.L594
.L586:
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
.L587:
	.cfi_restore_state
	lea	eax, [esi+ebx]
	cmp	eax, edx
	jb	.L590
	lea	eax, [ebx-1]
	test	ebx, ebx
	je	.L586
	.p2align 4
.L591:
	movzx	ecx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	.L591
	jmp	.L586
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
	jnb	.L602
.L605:
	test	ecx, ecx
	je	.L604
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 4
.L608:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
	cmp	eax, ebp
	jne	.L608
.L604:
	test	edi, 1
	je	.L601
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
.L601:
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
.L602:
	.cfi_restore_state
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jb	.L605
	lea	eax, [edi-1]
	test	edi, edi
	je	.L601
	.p2align 4
.L606:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	cmp	eax, -1
	jne	.L606
	jmp	.L601
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
	jnb	.L614
.L617:
	test	edi, edi
	je	.L616
	mov	eax, esi
	mov	ecx, edx
	lea	edi, [esi+edi*4]
	mov	DWORD PTR [esp+20], edx
	.p2align 4
.L620:
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	add	eax, 4
	add	ecx, 4
	cmp	eax, edi
	jne	.L620
	mov	edx, DWORD PTR [esp+20]
.L616:
	cmp	ebp, ebx
	jnb	.L613
	lea	eax, [esi+ebp]
	add	edx, ebp
	add	ebx, esi
	.p2align 4
.L621:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	.L621
.L613:
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
.L614:
	.cfi_restore_state
	lea	eax, [esi+ebx]
	cmp	eax, edx
	jb	.L617
	lea	eax, [ebx-1]
	test	ebx, ebx
	je	.L613
	.p2align 4
.L618:
	movzx	ecx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	.L618
	jmp	.L613
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
	js	.L636
.L634:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L636:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L634
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
	js	.L640
.L638:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L640:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L638
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
.L644:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	.L642
	add	eax, 1
	cmp	eax, 16
	jne	.L644
.L642:
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
.L649:
	bt	edx, eax
	jc	.L647
	add	eax, 1
	cmp	eax, 16
	jne	.L649
.L647:
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
	jnb	.L659
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
.L657:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L659:
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
	jmp	.L657
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
.L661:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L661
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
.L665:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L665
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
	je	.L671
	mov	ebx, 0
	.p2align 5
.L670:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L670
.L668:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L671:
	.cfi_restore_state
	mov	ebx, edx
	jmp	.L668
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
	je	.L674
	test	edx, edx
	je	.L678
	mov	ebx, 0
	.p2align 5
.L676:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L676
.L674:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L678:
	.cfi_restore_state
	mov	ebx, edx
	jmp	.L674
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ebp, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	mov	edx, 1
	cmp	eax, ebp
	jnb	.L684
	.p2align 5
.L682:
	test	eax, eax
	js	.L684
	add	eax, eax
	cmp	eax, ebp
	setb	cl
	add	edx, edx
	setne	bl
	test	bl, cl
	jne	.L682
	mov	ebx, edx
	test	edx, edx
	je	.L685
.L684:
	mov	ebx, 0
	jmp	.L688
	.p2align 4
.L687:
	shr	eax
	shr	edx
	je	.L685
.L688:
	cmp	ebp, eax
	jb	.L687
	sub	ebp, eax
	or	ebx, edx
	jmp	.L687
.L685:
	cmp	DWORD PTR [esp+28], 0
	jne	.L696
.L681:
	mov	eax, ebx
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
.L696:
	.cfi_restore_state
	mov	ebx, ebp
	jmp	.L681
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
	ja	.L700
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L697
.L700:
	fstp	st(0)
	fstp	st(0)
.L697:
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
	ja	.L704
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L701
.L704:
	fstp	st(0)
	fstp	st(0)
.L701:
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
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	ecx, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	test	edx, edx
	js	.L717
	je	.L714
	mov	edi, 0
.L710:
	mov	DWORD PTR [esp], 0
	mov	esi, 0
	.p2align 6
.L712:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	DWORD PTR [esp], eax
	add	ecx, ecx
	lea	eax, [esi+1]
	mov	esi, eax
	sar	edx
	setne	bl
	cmp	al, 31
	setbe	al
	test	al, bl
	jne	.L712
.L711:
	test	edi, edi
	je	.L708
	neg	DWORD PTR [esp]
.L708:
	mov	eax, DWORD PTR [esp]
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
.L717:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L710
.L714:
	mov	edi, 0
	mov	DWORD PTR [esp], 0
	jmp	.L711
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
	js	.L726
	test	edx, edx
	js	.L727
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
.L726:
	neg	eax
	test	edx, edx
	js	.L728
	push	0
	.cfi_def_cfa_offset 8
	push	edx
	.cfi_def_cfa_offset 12
	push	eax
	.cfi_def_cfa_offset 16
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 4
.L722:
	neg	eax
	ret
.L727:
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
	jmp	.L722
.L728:
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
	js	.L732
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
.L732:
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
	mov	ebx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ebp, ebx
	mov	eax, esi
	mov	edx, 1
	cmp	si, bx
	jnb	.L736
	.p2align 5
.L734:
	test	ax, ax
	js	.L736
	add	eax, eax
	cmp	ax, bp
	setb	cl
	add	dx, dx
	setne	bl
	test	bl, cl
	jne	.L734
	mov	ebx, edx
	test	dx, dx
	je	.L737
.L736:
	mov	ebx, 0
	jmp	.L740
	.p2align 4
.L739:
	shr	ax
	shr	dx
	je	.L737
.L740:
	cmp	bp, ax
	jb	.L739
	sub	ebp, eax
	or	ebx, edx
	jmp	.L739
.L737:
	cmp	DWORD PTR [esp+28], 0
	jne	.L748
.L733:
	mov	eax, ebx
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
.L748:
	.cfi_restore_state
	mov	ebx, ebp
	jmp	.L733
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ebp, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	mov	edx, 1
	cmp	eax, ebp
	jnb	.L752
	.p2align 5
.L750:
	test	eax, eax
	js	.L752
	add	eax, eax
	cmp	eax, ebp
	setb	cl
	add	edx, edx
	setne	bl
	test	bl, cl
	jne	.L750
	mov	ebx, edx
	test	edx, edx
	je	.L753
.L752:
	mov	ebx, 0
	jmp	.L756
	.p2align 4
.L755:
	shr	eax
	shr	edx
	je	.L753
.L756:
	cmp	ebp, eax
	jb	.L755
	sub	ebp, eax
	or	ebx, edx
	jmp	.L755
.L753:
	cmp	DWORD PTR [esp+28], 0
	jne	.L764
.L749:
	mov	eax, ebx
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
.L764:
	.cfi_restore_state
	mov	ebx, ebp
	jmp	.L749
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
	mov	eax, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	mov	edx, eax
	test	bl, 32
	je	.L766
	mov	eax, 0
	lea	ecx, [ebx-32]
	sal	edx, cl
.L768:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L766:
	.cfi_restore_state
	mov	esi, ecx
	test	ebx, ebx
	je	.L769
	mov	ecx, ebx
	sal	eax, cl
	sal	esi, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	edx, cl
	or	edx, esi
	jmp	.L768
.L769:
	mov	edx, ecx
	jmp	.L768
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, edx
	test	bl, 32
	je	.L772
	cdq
	lea	ecx, [ebx-32]
	sar	eax, cl
.L774:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L772:
	.cfi_restore_state
	mov	esi, ecx
	test	ebx, ebx
	je	.L775
	mov	ecx, ebx
	sar	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	sal	eax, cl
	mov	ecx, ebx
	shr	esi, cl
	or	eax, esi
	jmp	.L774
.L775:
	mov	eax, ecx
	jmp	.L774
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
	sub	esp, 48
	.cfi_def_cfa_offset 64
	mov	ecx, DWORD PTR [esp+64]
	mov	ebx, DWORD PTR [esp+68]
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
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	mov	DWORD PTR [esp+40], eax
	mov	DWORD PTR [esp+44], edx
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
	or	eax, DWORD PTR [esp]
	or	edx, DWORD PTR [esp+4]
	or	eax, DWORD PTR [esp+8]
	or	edx, DWORD PTR [esp+12]
	or	eax, DWORD PTR [esp+16]
	or	edx, DWORD PTR [esp+20]
	or	eax, DWORD PTR [esp+24]
	or	edx, DWORD PTR [esp+28]
	or	eax, DWORD PTR [esp+32]
	or	edx, DWORD PTR [esp+36]
	or	eax, DWORD PTR [esp+40]
	or	edx, DWORD PTR [esp+44]
	or	eax, esi
	or	edx, edi
	add	esp, 48
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
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
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
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
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, 65535
	setbe	dl
	movzx	edx, dl
	sal	edx, 4
	mov	ecx, 16
	sub	ecx, edx
	shr	eax, cl
	test	ah, -1
	sete	bl
	movzx	ebx, bl
	sal	ebx, 3
	mov	ecx, 8
	sub	ecx, ebx
	shr	eax, cl
	add	ebx, edx
	test	al, -16
	sete	dl
	movzx	edx, dl
	sal	edx, 2
	mov	ecx, 4
	sub	ecx, edx
	shr	eax, cl
	lea	esi, [ebx+edx]
	test	al, 12
	sete	dl
	movzx	edx, dl
	add	edx, edx
	mov	ebx, 2
	mov	ecx, ebx
	sub	ecx, edx
	shr	eax, cl
	lea	ecx, [esi+edx]
	mov	edx, eax
	shr	edx
	not	edx
	sub	ebx, eax
	and	edx, 1
	neg	edx
	and	edx, ebx
	lea	eax, [ecx+edx]
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
	mov	ecx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	eax, 0
	cmp	ecx, edx
	jl	.L784
	mov	eax, 2
	jg	.L784
	mov	eax, 0
	cmp	ebx, esi
	jb	.L784
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
.L784:
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
	add	edx, ecx
	mov	ebx, eax
	not	ebx
	shr	eax
	mov	ecx, 2
	sub	ecx, eax
	mov	eax, ebx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	eax, edx
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, edx
	test	bl, 32
	je	.L795
	mov	edx, 0
	lea	ecx, [ebx-32]
	shr	eax, cl
.L797:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L795:
	.cfi_restore_state
	mov	esi, ecx
	test	ebx, ebx
	je	.L798
	mov	ecx, ebx
	shr	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	sal	eax, cl
	mov	ecx, ebx
	shr	esi, cl
	or	eax, esi
	jmp	.L797
.L798:
	mov	eax, ecx
	jmp	.L797
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
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	movzx	ebx, ax
	movzx	esi, cx
	mov	edi, ebx
	imul	edi, esi
	mov	edx, edi
	shr	edx, 16
	shr	eax, 16
	imul	esi, eax
	add	edx, esi
	mov	esi, edx
	shr	esi, 16
	movzx	edx, dx
	movzx	edi, di
	shr	ecx, 16
	imul	ebx, ecx
	add	edx, ebx
	mov	ebx, edx
	sal	ebx, 16
	add	ebx, edi
	shr	edx, 16
	add	edx, esi
	imul	eax, ecx
	add	edx, eax
	mov	eax, ebx
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
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+32]
	mov	edi, eax
	mov	ebx, DWORD PTR [esp+28]
	mov	ebp, edx
	mov	esi, DWORD PTR [esp+36]
	push	edx
	.cfi_def_cfa_offset 28
	push	eax
	.cfi_def_cfa_offset 32
	call	__muldsi3
	mov	ecx, edx
	imul	ebx, ebp
	imul	esi, edi
	lea	edx, [ebx+esi]
	add	edx, ecx
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
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	xor	eax, edx
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
	mov	ecx, eax
	mov	eax, edx
	add	eax, ecx
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
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, edx
	shr	ecx, 31
	fld1
	jmp	.L813
	.p2align 5
.L811:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L812
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L813:
	test	dl, 1
	je	.L811
	fmul	st, st(1)
	jmp	.L811
.L812:
	fstp	st(1)
	test	ecx, ecx
	je	.L810
	fdivr	DWORD PTR .LC10
.L810:
	ret
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, edx
	shr	ecx, 31
	fld1
	jmp	.L818
	.p2align 5
.L816:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L817
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L818:
	test	dl, 1
	je	.L816
	fmul	st, st(1)
	jmp	.L816
.L817:
	fstp	st(1)
	test	ecx, ecx
	je	.L815
	fdivr	DWORD PTR .LC10
.L815:
	ret
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
	jb	.L821
	mov	eax, 2
	cmp	ecx, edx
	jb	.L821
	mov	eax, 0
	cmp	ebx, esi
	jb	.L821
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
.L821:
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
