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
	mov	edx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	cmp	edx, ebp
	jnb	.L2
	lea	ecx, [ebp+0+esi]
	mov	eax, esi
	neg	esi
	jmp	.L3
	.p2align 5
.L4:
	lea	edi, [ecx+esi]
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [edi-1+eax], bl
	sub	eax, 1
.L3:
	test	eax, eax
	jne	.L4
.L5:
	mov	eax, ebp
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
.L2:
	.cfi_restore_state
	cmp	ebp, edx
	je	.L5
	add	esi, ebp
	mov	eax, edx
	mov	ecx, ebp
	jmp	.L6
	.p2align 5
.L7:
	add	eax, 1
	add	ecx, 1
	movzx	edx, BYTE PTR [eax-1]
	mov	BYTE PTR [ecx-1], dl
.L6:
	cmp	ecx, esi
	jne	.L7
	jmp	.L5
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
	mov	edx, DWORD PTR [esp+24]
	movzx	esi, BYTE PTR [esp+20]
	mov	ebx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+12]
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
	mov	edx, DWORD PTR [esp+16]
	movzx	ebx, BYTE PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
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
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
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
	mov	ebx, esi
	add	ebx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+16]
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
	mov	ebx, DWORD PTR [esp+12]
	movzx	esi, BYTE PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	lea	edx, [eax-1]
.L30:
	cmp	edx, -1
	je	.L34
	movzx	ecx, BYTE PTR [ebx+edx]
	lea	eax, [edx-1]
	cmp	esi, ecx
	je	.L35
	mov	edx, eax
	jmp	.L30
.L35:
	lea	eax, [ebx+edx]
	jmp	.L31
.L34:
	mov	eax, 0
.L31:
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
	mov	edx, ebx
	add	edx, DWORD PTR [esp+16]
	mov	eax, ebx
	jmp	.L37
	.p2align 4
.L38:
	mov	BYTE PTR [eax], cl
	add	eax, 1
.L37:
	cmp	eax, edx
	jne	.L38
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
	mov	ecx, DWORD PTR [esp+8]
	jmp	.L40
	.p2align 4
.L41:
	add	ecx, 1
	add	eax, 1
.L40:
	movzx	edx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	.L41
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
	jmp	.L43
	.p2align 4
.L45:
	add	eax, 1
.L43:
	cmp	BYTE PTR [eax], 0
	je	.L44
	movzx	edx, BYTE PTR [eax]
	cmp	ecx, edx
	jne	.L45
.L44:
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	.p2align 4
.L48:
	movsx	edx, BYTE PTR [eax]
	cmp	ecx, edx
	je	.L47
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	.L48
	mov	eax, 0
.L47:
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
	jmp	.L52
	.p2align 5
.L54:
	add	eax, 1
	add	edx, 1
.L52:
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	jne	.L53
	cmp	BYTE PTR [eax], 0
	jne	.L54
.L53:
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
	mov	eax, edx
	jmp	.L56
	.p2align 3
.L57:
	add	eax, 1
.L56:
	cmp	BYTE PTR [eax], 0
	jne	.L57
	sub	eax, edx
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+20]
	mov	eax, 0
	test	ecx, ecx
	je	.L59
	mov	edx, DWORD PTR [esp+16]
	mov	eax, ebx
	lea	esi, [ebx-1+ecx]
.L60:
	cmp	BYTE PTR [eax], 0
	je	.L61
	cmp	eax, esi
	setne	bl
	cmp	BYTE PTR [edx], 0
	setne	cl
	test	bl, cl
	je	.L61
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	jne	.L61
	add	eax, 1
	add	edx, 1
	jmp	.L60
.L61:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L59:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
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
	mov	ebx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, ebx
	add	ebx, DWORD PTR [esp+16]
	jmp	.L65
	.p2align 5
.L66:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
.L65:
	mov	ecx, ebx
	sub	ecx, eax
	cmp	ecx, 1
	jg	.L66
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
	jne	.L78
	lea	edx, [eax-8232]
	cmp	edx, 1
	jbe	.L78
	sub	eax, 65529
	cmp	eax, 3
	setb	cl
	movzx	ecx, cl
.L78:
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
	jbe	.L90
	cmp	eax, 8231
	setbe	cl
	lea	edx, [eax-8234]
	cmp	edx, 47061
	setbe	bl
	mov	edx, 1
	or	cl, bl
	jne	.L85
	lea	ecx, [eax-57344]
	cmp	ecx, 8184
	jbe	.L85
	lea	ecx, [eax-65532]
	mov	edx, 0
	cmp	ecx, 1048579
	ja	.L85
	not	eax
	test	eax, 65534
	setne	dl
	movzx	edx, dl
	jmp	.L85
.L90:
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	dl
	movzx	edx, dl
.L85:
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
	jbe	.L92
	or	eax, 32
	sub	eax, 97
	cmp	eax, 6
	setb	dl
	movzx	edx, dl
.L92:
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
	jp	.L104
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L100
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L103
	fsubrp	st(1), st
	ret
.L100:
	fstp	st(1)
	ret
.L103:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L97
.L104:
	fstp	st(1)
.L97:
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
	jp	.L113
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L109
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L112
	fsubrp	st(1), st
	ret
.L109:
	fstp	st(1)
	ret
.L112:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L106
.L113:
	fstp	st(1)
.L106:
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
	jp	.L118
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L119
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
	je	.L116
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L124
	fstp	st(0)
	jmp	.L115
.L124:
	fstp	st(1)
	jmp	.L115
.L125:
	fstp	st(1)
.L115:
	ret
.L116:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L125
	fstp	st(0)
	jmp	.L115
.L118:
	fstp	st(0)
	jmp	.L115
.L119:
	fstp	st(0)
	jmp	.L115
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
	jp	.L130
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L131
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
	je	.L128
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L136
	fstp	st(0)
	jmp	.L127
.L136:
	fstp	st(1)
	jmp	.L127
.L137:
	fstp	st(1)
.L127:
	ret
.L128:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L137
	fstp	st(0)
	jmp	.L127
.L130:
	fstp	st(0)
	jmp	.L127
.L131:
	fstp	st(0)
	jmp	.L127
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
	jp	.L142
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L143
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
	je	.L140
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L148
	fstp	st(0)
	jmp	.L139
.L148:
	fstp	st(1)
	jmp	.L139
.L149:
	fstp	st(1)
.L139:
	ret
.L140:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L149
	fstp	st(0)
	jmp	.L139
.L142:
	fstp	st(0)
	jmp	.L139
.L143:
	fstp	st(0)
	jmp	.L139
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
	jp	.L154
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L155
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
	je	.L152
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L160
	fstp	st(1)
	jmp	.L151
.L160:
	fstp	st(0)
	jmp	.L151
.L161:
	fstp	st(0)
.L151:
	ret
.L152:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L161
	fstp	st(1)
	jmp	.L151
.L154:
	fstp	st(0)
	jmp	.L151
.L155:
	fstp	st(0)
	jmp	.L151
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
	jp	.L166
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
	je	.L172
	fstp	st(1)
	jmp	.L163
.L172:
	fstp	st(0)
	jmp	.L163
.L173:
	fstp	st(0)
.L163:
	ret
.L164:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L173
	fstp	st(1)
	jmp	.L163
.L166:
	fstp	st(0)
	jmp	.L163
.L167:
	fstp	st(0)
	jmp	.L163
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
	jp	.L178
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
	je	.L176
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L184
	fstp	st(1)
	jmp	.L175
.L184:
	fstp	st(0)
	jmp	.L175
.L185:
	fstp	st(0)
.L175:
	ret
.L176:
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L185
	fstp	st(1)
	jmp	.L175
.L178:
	fstp	st(0)
	jmp	.L175
.L179:
	fstp	st(0)
	jmp	.L175
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
	mov	eax, DWORD PTR [esp+4]
	mov	edx, OFFSET FLAT:s.0
	jmp	.L187
	.p2align 5
.L188:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
.L187:
	test	eax, eax
	jne	.L188
	mov	BYTE PTR [edx], 0
	mov	eax, OFFSET FLAT:s.0
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
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
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
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
	je	.L194
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	cmp	DWORD PTR [eax], 0
	je	.L191
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [edx+4], eax
.L191:
	ret
.L194:
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
	cmp	DWORD PTR [eax], 0
	je	.L196
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L196:
	cmp	DWORD PTR [eax+4], 0
	je	.L195
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
.L195:
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
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	edi, DWORD PTR [esp+44]
	mov	eax, DWORD PTR [esp+40]
	mov	ebp, DWORD PTR [eax]
	mov	esi, DWORD PTR [esp+36]
	mov	ebx, 0
	jmp	.L199
.L200:
	add	ebx, 1
.L199:
	cmp	ebx, ebp
	je	.L203
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	esi
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esi, edi
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	jne	.L200
	imul	ebx, edi
	mov	eax, ebx
	add	eax, DWORD PTR [esp+36]
	jmp	.L201
.L203:
	lea	eax, [ebp+1]
	mov	ecx, DWORD PTR [esp+40]
	mov	DWORD PTR [ecx], eax
	mov	edx, ebp
	imul	edx, edi
	mov	eax, edx
	add	eax, DWORD PTR [esp+36]
	sub	esp, 4
	.cfi_def_cfa_offset 36
	push	edi
	.cfi_def_cfa_offset 40
	push	DWORD PTR [esp+40]
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	call	memcpy
	add	esp, 16
	.cfi_def_cfa_offset 32
.L201:
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
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	ebp, DWORD PTR [esp+44]
	mov	eax, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [eax]
	mov	esi, DWORD PTR [esp+36]
	mov	ebx, 0
	jmp	.L205
.L206:
	add	ebx, 1
.L205:
	cmp	ebx, edi
	je	.L209
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	esi
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esi, ebp
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	jne	.L206
	imul	ebx, ebp
	mov	eax, ebx
	add	eax, DWORD PTR [esp+36]
	jmp	.L207
.L209:
	mov	eax, 0
.L207:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	jmp	.L212
.L213:
	add	ebx, 1
.L212:
	movsx	eax, BYTE PTR [ebx]
	push	eax
	.cfi_def_cfa_offset 12
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 8
	test	eax, eax
	jne	.L213
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L219
	mov	ecx, 0
	cmp	eax, 45
	jne	.L215
	mov	ecx, 1
.L214:
	add	ebx, 1
.L215:
	mov	eax, 0
	jmp	.L216
.L219:
	mov	ecx, 0
	jmp	.L214
	.p2align 5
.L217:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	edx, BYTE PTR [ebx-1]
	sub	edx, 48
	sub	eax, edx
.L216:
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L217
	mov	edx, eax
	test	ecx, ecx
	jne	.L218
	neg	eax
	mov	edx, eax
.L218:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	jmp	.L223
.L224:
	add	ebx, 1
.L223:
	movsx	eax, BYTE PTR [ebx]
	push	eax
	.cfi_def_cfa_offset 12
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 8
	test	eax, eax
	jne	.L224
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L230
	mov	ecx, 0
	cmp	eax, 45
	jne	.L226
	mov	ecx, 1
.L225:
	add	ebx, 1
.L226:
	mov	eax, 0
	jmp	.L227
.L230:
	mov	ecx, 0
	jmp	.L225
	.p2align 5
.L228:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	edx, BYTE PTR [ebx-1]
	sub	edx, 48
	sub	eax, edx
.L227:
	movsx	edx, BYTE PTR [ebx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L228
	mov	edx, eax
	test	ecx, ecx
	jne	.L229
	neg	eax
	mov	edx, eax
.L229:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	jmp	.L234
.L235:
	add	ebx, 1
.L234:
	movsx	eax, BYTE PTR [ebx]
	push	eax
	.cfi_def_cfa_offset 20
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 16
	test	eax, eax
	jne	.L235
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	.L241
	mov	ecx, 0
	cmp	eax, 45
	jne	.L237
	mov	ecx, 1
.L236:
	add	ebx, 1
.L237:
	mov	esi, 0
	mov	edi, 0
	jmp	.L238
.L241:
	mov	ecx, 0
	jmp	.L236
	.p2align 6
.L239:
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
.L238:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L239
	mov	eax, esi
	mov	edx, edi
	test	ecx, ecx
	jne	.L240
	neg	eax
	adc	edx, 0
	neg	edx
.L240:
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
	mov	ebp, DWORD PTR [esp+36]
	mov	esi, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+44]
	jmp	.L245
.L252:
	shr	esi
.L245:
	test	esi, esi
	je	.L251
	mov	ebx, esi
	shr	ebx
	imul	ebx, edi
	add	ebx, ebp
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	ebx
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	js	.L252
	jle	.L250
	lea	ebp, [ebx+edi]
	mov	eax, esi
	shr	eax
	sub	esi, 1
	sub	esi, eax
	jmp	.L245
.L251:
	mov	eax, 0
.L248:
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
.L250:
	.cfi_restore_state
	mov	eax, ebx
	jmp	.L248
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
	mov	ebp, DWORD PTR [esp+44]
	mov	esi, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+36]
	jmp	.L254
.L256:
	sar	esi
.L254:
	test	esi, esi
	je	.L259
	mov	ebx, esi
	sar	ebx
	imul	ebx, ebp
	add	ebx, edi
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
	je	.L258
	jle	.L256
	lea	edi, [ebx+ebp]
	sub	esi, 1
	jmp	.L256
.L259:
	mov	eax, 0
.L255:
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
.L258:
	.cfi_restore_state
	mov	eax, ebx
	jmp	.L255
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
	jmp	.L268
	.p2align 4
.L270:
	add	eax, 4
.L268:
	cmp	DWORD PTR [eax], 0
	je	.L269
	cmp	edx, DWORD PTR [eax]
	jne	.L270
.L269:
	mov	ecx, DWORD PTR [eax]
	neg	ecx
	sbb	edx, edx
	and	eax, edx
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	jmp	.L274
.L276:
	add	eax, 4
	add	edx, 4
.L274:
	mov	ecx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ecx
	jne	.L275
	cmp	DWORD PTR [eax], 0
	je	.L275
	test	ecx, ecx
	jne	.L276
.L275:
	mov	ecx, -1
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	jl	.L277
	setg	cl
	movzx	ecx, cl
.L277:
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
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
	mov	ebx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, ebx
	.p2align 4
.L280:
	add	edx, 4
	add	eax, 4
	mov	ecx, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], ecx
	test	ecx, ecx
	jne	.L280
	mov	eax, ebx
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
	mov	eax, edx
	jmp	.L283
	.p2align 3
.L284:
	add	eax, 4
.L283:
	cmp	DWORD PTR [eax], 0
	jne	.L284
	sub	eax, edx
	sar	eax, 2
	ret
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
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+16]
.L286:
	test	ecx, ecx
	je	.L287
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	jne	.L287
	cmp	DWORD PTR [eax], 0
	je	.L287
	test	ebx, ebx
	je	.L287
	sub	ecx, 1
	add	eax, 4
	add	edx, 4
	jmp	.L286
.L287:
	mov	ebx, 0
	test	ecx, ecx
	je	.L289
	mov	ebx, -1
	mov	ecx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ecx
	jl	.L289
	setg	bl
	movzx	ebx, bl
.L289:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	jmp	.L293
	.p2align 4
.L295:
	sub	edx, 1
	add	eax, 4
.L293:
	test	edx, edx
	je	.L294
	cmp	ecx, DWORD PTR [eax]
	jne	.L295
.L294:
	neg	edx
	sbb	edx, edx
	and	eax, edx
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
	jmp	.L299
	.p2align 5
.L301:
	sub	eax, 1
	add	ecx, 4
	add	edx, 4
.L299:
	test	eax, eax
	je	.L300
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], ebx
	je	.L301
.L300:
	mov	ebx, 0
	test	eax, eax
	je	.L302
	mov	ebx, -1
	mov	eax, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], eax
	jl	.L302
	setg	bl
	movzx	ebx, bl
.L302:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	ecx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	mov	edx, ebx
	jmp	.L306
	.p2align 5
.L307:
	add	ecx, 4
	add	edx, 4
	mov	esi, DWORD PTR [ecx-4]
	mov	DWORD PTR [edx-4], esi
.L306:
	sub	eax, 1
	cmp	eax, -1
	jne	.L307
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
	mov	ecx, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	ecx, ebx
	je	.L309
	mov	esi, ecx
	sub	esi, ebx
	lea	edx, [0+eax*4]
	cmp	esi, edx
	jb	.L310
	mov	edx, 0
	jmp	.L311
	.p2align 4
.L312:
	mov	edx, DWORD PTR [ebx+eax*4]
	mov	DWORD PTR [ecx+eax*4], edx
.L310:
	sub	eax, 1
	cmp	eax, -1
	jne	.L312
.L309:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4
.L313:
	.cfi_restore_state
	mov	esi, DWORD PTR [ebx+edx*4]
	mov	DWORD PTR [ecx+edx*4], esi
	add	edx, 1
.L311:
	cmp	edx, eax
	jne	.L313
	jmp	.L309
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
	mov	eax, DWORD PTR [esp+16]
	mov	edx, ebx
	jmp	.L316
	.p2align 4
.L317:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
.L316:
	sub	eax, 1
	cmp	eax, -1
	jne	.L317
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
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	cmp	ecx, edx
	jnb	.L319
	add	edx, ebx
	mov	eax, ebx
	mov	edi, ebx
	neg	edi
	jmp	.L320
	.p2align 5
.L321:
	lea	esi, [edx+edi]
	movzx	ebx, BYTE PTR [ecx-1+eax]
	mov	BYTE PTR [esi-1+eax], bl
	sub	eax, 1
.L320:
	test	eax, eax
	jne	.L321
.L318:
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
.L319:
	.cfi_restore_state
	je	.L318
	add	ebx, edx
	mov	eax, ecx
	jmp	.L323
	.p2align 5
.L324:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	mov	BYTE PTR [edx-1], cl
.L323:
	cmp	edx, ebx
	jne	.L324
	jmp	.L318
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
	je	.L326
	mov	edi, esi
	xor	esi, esi
.L326:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L327
	mov	eax, edx
	xor	edx, edx
.L327:
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
	je	.L329
	mov	esi, edi
	xor	edi, edi
.L329:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L330
	mov	edx, eax
	xor	eax, eax
.L330:
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
.L343:
	cmp	eax, 32
	je	.L347
	bt	edx, eax
	jc	.L348
	add	eax, 1
	jmp	.L343
.L348:
	add	eax, 1
	ret
.L347:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, 0
	test	edx, edx
	je	.L350
	mov	eax, 1
	jmp	.L351
	.p2align 4
.L352:
	sar	edx
	add	eax, 1
.L351:
	test	dl, 1
	je	.L352
.L350:
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
	ja	.L360
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L355
.L360:
	fstp	st(0)
.L355:
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
	ja	.L367
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L362
.L367:
	fstp	st(0)
.L362:
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
	ja	.L374
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L369
.L374:
	fstp	st(0)
.L369:
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
	jp	.L377
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L383
	jne	.L383
	jmp	.L377
.L384:
	fstp	st(0)
.L377:
	ret
.L383:
	fld	DWORD PTR .LC9
	test	edx, edx
	jns	.L381
	fstp	st(0)
	fld	DWORD PTR .LC8
	jmp	.L381
	.p2align 5
.L380:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L384
	fmul	st, st(0)
.L381:
	test	dl, 1
	je	.L380
	fmul	st(1), st
	jmp	.L380
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
	jp	.L386
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L392
	jne	.L392
	jmp	.L386
.L394:
	fstp	st(0)
.L386:
	ret
.L392:
	test	edx, edx
	js	.L393
	fld	DWORD PTR .LC9
	jmp	.L390
.L393:
	fld	DWORD PTR .LC8
	jmp	.L390
	.p2align 5
.L389:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L394
	fmul	st, st(0)
.L390:
	test	dl, 1
	je	.L389
	fmul	st(1), st
	jmp	.L389
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
	jp	.L396
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L402
	jne	.L402
	jmp	.L396
.L404:
	fstp	st(0)
.L396:
	ret
.L402:
	test	edx, edx
	js	.L403
	fld	DWORD PTR .LC9
	jmp	.L400
.L403:
	fld	DWORD PTR .LC8
	jmp	.L400
	.p2align 5
.L399:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L404
	fmul	st, st(0)
.L400:
	test	dl, 1
	je	.L399
	fmul	st(1), st
	jmp	.L399
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
	mov	ebx, esi
	add	ebx, DWORD PTR [esp+20]
	mov	eax, esi
	mov	ecx, DWORD PTR [esp+16]
	jmp	.L406
	.p2align 5
.L407:
	add	ecx, 1
	add	eax, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	dl, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], dl
.L406:
	cmp	eax, ebx
	jne	.L407
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
	jmp	.L409
	.p2align 5
.L411:
	add	esi, 1
	add	eax, 1
	sub	ebx, 1
.L409:
	test	ebx, ebx
	je	.L410
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	.L411
.L410:
	test	ebx, ebx
	jne	.L412
	mov	BYTE PTR [eax], 0
.L412:
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
.L414:
	cmp	eax, edx
	je	.L415
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L416
.L415:
	ret
.L416:
	add	eax, 1
	jmp	.L414
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
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
.L418:
	cmp	BYTE PTR [eax], 0
	je	.L424
	mov	edx, ecx
	.p2align 4
.L421:
	cmp	BYTE PTR [edx], 0
	je	.L425
	add	edx, 1
	movzx	ebx, BYTE PTR [eax]
	cmp	BYTE PTR [edx-1], bl
	jne	.L421
.L419:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L425:
	.cfi_restore_state
	add	eax, 1
	jmp	.L418
.L424:
	mov	eax, 0
	jmp	.L419
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	ebx, 0
	jmp	.L428
	.p2align 4
.L427:
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	je	.L431
.L428:
	movsx	edx, BYTE PTR [eax]
	cmp	ecx, edx
	jne	.L427
	mov	ebx, eax
	jmp	.L427
.L431:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
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
	mov	ebx, DWORD PTR [esp+20]
	mov	edi, DWORD PTR [esp+24]
	push	edi
	.cfi_def_cfa_offset 24
	call	strlen
	add	esp, 4
	.cfi_def_cfa_offset 20
	mov	esi, eax
	mov	eax, ebx
	test	esi, esi
	je	.L433
	movsx	ebp, BYTE PTR [edi]
.L434:
	push	ebp
	.cfi_def_cfa_offset 24
	push	ebx
	.cfi_def_cfa_offset 28
	call	strchr
	add	esp, 8
	.cfi_def_cfa_offset 20
	mov	ebx, eax
	test	eax, eax
	je	.L438
	push	esi
	.cfi_def_cfa_offset 24
	push	edi
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	strncmp
	add	esp, 12
	.cfi_def_cfa_offset 20
	test	eax, eax
	je	.L437
	add	ebx, 1
	jmp	.L434
.L438:
	mov	eax, 0
.L433:
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
.L437:
	.cfi_restore_state
	mov	eax, ebx
	jmp	.L433
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
	ja	.L452
	fxch	st(1)
	jmp	.L440
.L454:
	fxch	st(1)
.L440:
	ftst
	fnstsw	ax
	sahf
	jbe	.L453
	fldz
	fcomp	st(2)
	fnstsw	ax
	fstp	st(1)
	sahf
	ja	.L442
	jmp	.L443
.L453:
	fstp	st(1)
.L443:
	ret
.L452:
	ftst
	fnstsw	ax
	sahf
	jbe	.L454
	fstp	st(0)
.L442:
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
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	mov	esi, ebx
	sub	esi, edx
	add	esi, ecx
	mov	eax, ecx
	test	edx, edx
	je	.L456
	cmp	ebx, edx
	jb	.L461
	mov	ebx, ecx
	lea	eax, [edx-1]
	mov	DWORD PTR [esp], eax
	lea	ebp, [edi+1]
	jmp	.L457
	.p2align 4
.L458:
	add	ebx, 1
.L457:
	cmp	esi, ebx
	jb	.L463
	movzx	eax, BYTE PTR [edi]
	cmp	BYTE PTR [ebx], al
	jne	.L458
	lea	eax, [ebx+1]
	push	DWORD PTR [esp]
	.cfi_def_cfa_offset 28
	push	ebp
	.cfi_def_cfa_offset 32
	push	eax
	.cfi_def_cfa_offset 36
	call	memcmp
	add	esp, 12
	.cfi_def_cfa_offset 24
	test	eax, eax
	jne	.L458
	mov	eax, ebx
	jmp	.L456
.L463:
	mov	eax, 0
.L456:
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
.L461:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L456
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
	fld	QWORD PTR [esp+4]
	fldz
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	ecx, 0
	ja	.L484
.L466:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	mov	edx, 0
	jnb	.L468
	mov	edx, 1
	fldz
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L472
	jne	.L472
	mov	edx, 0
.L472:
	fld	DWORD PTR .LC8
	fcomp	st(1)
	fnstsw	ax
	sahf
	seta	al
	test	al, dl
	jne	.L479
	mov	edx, 0
	jmp	.L471
.L484:
	fchs
	mov	ecx, 1
	jmp	.L466
	.p2align 5
.L470:
	add	edx, 1
	fmul	DWORD PTR .LC8
.L468:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L470
.L471:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L476
	fchs
.L476:
	ret
	.p2align 5
.L475:
	sub	edx, 1
	fadd	st, st(0)
.L474:
	fld	DWORD PTR .LC8
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L475
	jmp	.L471
.L479:
	mov	edx, 0
	jmp	.L474
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
	sub	esp, 16
	.cfi_def_cfa_offset 32
	mov	esi, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+44]
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+12], 0
	jmp	.L486
	.p2align 6
.L487:
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
.L486:
	mov	ecx, eax
	or	ecx, edx
	je	.L489
	mov	ecx, eax
	and	ecx, 1
	mov	ebx, 0
	mov	DWORD PTR [esp], ecx
	mov	DWORD PTR [esp+4], ebx
	mov	ecx, DWORD PTR [esp]
	mov	ebx, DWORD PTR [esp+4]
	or	ecx, ebx
	je	.L487
	add	DWORD PTR [esp+8], esi
	adc	DWORD PTR [esp+12], edi
	jmp	.L487
.L489:
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	add	esp, 16
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
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, 1
	jmp	.L491
	.p2align 5
.L494:
	add	edx, edx
	add	ecx, ecx
.L491:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L500
	test	edx, edx
	jns	.L494
	mov	ebx, 0
	jmp	.L493
.L500:
	mov	ebx, 0
	jmp	.L493
	.p2align 4
.L496:
	shr	ecx
	shr	edx
.L493:
	test	ecx, ecx
	je	.L501
	cmp	edi, edx
	jb	.L496
	sub	edi, edx
	or	ebx, ecx
	jmp	.L496
.L501:
	mov	eax, edi
	cmp	DWORD PTR [esp+24], 0
	jne	.L498
	mov	eax, ebx
.L498:
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
	je	.L504
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ecx, [eax-1]
.L504:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	test	ebx, ebx
	js	.L512
.L507:
	mov	eax, 63
	mov	edx, ecx
	or	edx, ebx
	je	.L508
	test	ebx, ebx
	je	.L509
	bsr	eax, ebx
	xor	eax, 31
.L510:
	sub	eax, 1
.L508:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L512:
	.cfi_restore_state
	not	ecx
	not	ebx
	jmp	.L507
.L509:
	bsr	eax, ecx
	xor	eax, 31
	add	eax, 32
	jmp	.L510
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, 0
	jmp	.L514
	.p2align 4
.L515:
	shr	eax
	add	edx, edx
.L514:
	test	eax, eax
	je	.L517
	test	al, 1
	je	.L515
	add	ecx, edx
	jmp	.L515
.L517:
	mov	eax, ecx
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	mov	ebp, ecx
	shr	ebp, 3
	mov	eax, ecx
	and	eax, -8
	cmp	edi, esi
	jb	.L519
	lea	edx, [esi+ecx]
	cmp	edx, edi
	jnb	.L520
.L519:
	mov	edx, esi
	mov	ebx, edi
	lea	ebp, [esi+ebp*8]
	mov	DWORD PTR [esp+20], edi
	mov	DWORD PTR [esp+24], esi
	jmp	.L521
	.p2align 5
.L522:
	mov	esi, DWORD PTR [edx]
	mov	edi, DWORD PTR [edx+4]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	add	edx, 8
	add	ebx, 8
.L521:
	cmp	edx, ebp
	jne	.L522
	mov	edi, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	jmp	.L523
	.p2align 4
.L524:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edi+eax], dl
	add	eax, 1
.L523:
	cmp	eax, ecx
	jb	.L524
.L518:
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
	.p2align 4
.L526:
	.cfi_restore_state
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edi+ecx], al
.L520:
	sub	ecx, 1
	cmp	ecx, -1
	jne	.L526
	jmp	.L518
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
	mov	ecx, DWORD PTR [esp+28]
	mov	edi, ecx
	shr	edi
	cmp	esi, ebx
	jb	.L530
	lea	eax, [ebx+ecx]
	cmp	eax, esi
	jnb	.L531
.L530:
	mov	eax, ebx
	mov	edx, esi
	lea	edi, [ebx+edi*2]
	jmp	.L532
	.p2align 4
.L533:
	movzx	ebp, WORD PTR [eax]
	mov	WORD PTR [edx], bp
	add	eax, 2
	add	edx, 2
.L532:
	cmp	eax, edi
	jne	.L533
	test	cl, 1
	je	.L529
	movzx	eax, BYTE PTR [ebx-1+ecx]
	mov	BYTE PTR [esi-1+ecx], al
.L529:
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
	.p2align 4
.L535:
	.cfi_restore_state
	movzx	eax, BYTE PTR [ebx+ecx]
	mov	BYTE PTR [esi+ecx], al
.L531:
	sub	ecx, 1
	cmp	ecx, -1
	jne	.L535
	jmp	.L529
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
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	edi, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+32]
	mov	ebp, ecx
	shr	ebp, 2
	mov	eax, ecx
	and	eax, -4
	cmp	edi, esi
	jb	.L538
	lea	edx, [esi+ecx]
	cmp	edx, edi
	jnb	.L539
.L538:
	mov	edx, esi
	mov	ebx, edi
	lea	ebp, [esi+ebp*4]
	mov	DWORD PTR [esp], eax
	jmp	.L540
	.p2align 4
.L541:
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ebx], eax
	add	edx, 4
	add	ebx, 4
.L540:
	cmp	edx, ebp
	jne	.L541
	mov	eax, DWORD PTR [esp]
	jmp	.L542
	.p2align 4
.L543:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edi+eax], dl
	add	eax, 1
.L542:
	cmp	eax, ecx
	jb	.L543
.L537:
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
	.p2align 4
.L545:
	.cfi_restore_state
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edi+ecx], al
.L539:
	sub	ecx, 1
	cmp	ecx, -1
	jne	.L545
	jmp	.L537
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
	js	.L553
.L552:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L553:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L552
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
	js	.L556
.L555:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L556:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L555
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
.L559:
	cmp	eax, 16
	je	.L560
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	.L560
	add	eax, 1
	jmp	.L559
.L560:
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
.L563:
	cmp	eax, 16
	je	.L564
	bt	edx, eax
	jc	.L564
	add	eax, 1
	jmp	.L563
.L564:
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
	jnb	.L573
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
.L572:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L573:
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
	jmp	.L572
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
	jmp	.L575
	.p2align 5
.L577:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
.L575:
	cmp	ecx, 16
	jne	.L577
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
	jmp	.L579
	.p2align 5
.L581:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
.L579:
	cmp	ecx, 16
	jne	.L581
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
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, 0
	jmp	.L583
	.p2align 4
.L584:
	shr	eax
	add	edx, edx
.L583:
	test	eax, eax
	je	.L586
	test	al, 1
	je	.L584
	add	ecx, edx
	jmp	.L584
.L586:
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	eax, 0
	test	ecx, ecx
	jne	.L589
.L588:
	ret
	.p2align 4
.L590:
	add	ecx, ecx
	shr	edx
.L589:
	test	edx, edx
	je	.L588
	test	dl, 1
	je	.L590
	add	eax, ecx
	jmp	.L590
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
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, 1
	jmp	.L594
	.p2align 5
.L597:
	add	edx, edx
	add	ecx, ecx
.L594:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L603
	test	edx, edx
	jns	.L597
	mov	ebx, 0
	jmp	.L596
.L603:
	mov	ebx, 0
	jmp	.L596
	.p2align 4
.L599:
	shr	ecx
	shr	edx
.L596:
	test	ecx, ecx
	je	.L604
	cmp	edi, edx
	jb	.L599
	sub	edi, edx
	or	ebx, ecx
	jmp	.L599
.L604:
	mov	eax, edi
	cmp	DWORD PTR [esp+24], 0
	jne	.L601
	mov	eax, ebx
.L601:
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
	ja	.L609
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L606
.L609:
	fstp	st(0)
	fstp	st(0)
.L606:
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
	ja	.L614
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L611
.L614:
	fstp	st(0)
	fstp	st(0)
.L611:
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
	mov	eax, DWORD PTR [esp+24]
	mov	ebp, 0
	test	eax, eax
	js	.L625
.L618:
	mov	edi, 0
	mov	edx, 0
	jmp	.L619
.L625:
	neg	eax
	mov	ebp, 1
	jmp	.L618
	.p2align 5
.L620:
	sal	DWORD PTR [esp+20]
	sar	eax
	add	edx, 1
.L619:
	test	eax, eax
	setne	bl
	cmp	dl, 31
	setbe	cl
	test	cl, bl
	je	.L626
	test	al, 1
	je	.L620
	add	edi, DWORD PTR [esp+20]
	jmp	.L620
.L626:
	mov	eax, edi
	test	ebp, ebp
	je	.L622
	neg	eax
.L622:
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
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ebx, 0
	test	eax, eax
	js	.L632
.L628:
	test	edx, edx
	js	.L633
.L629:
	push	0
	.cfi_def_cfa_offset 12
	push	edx
	.cfi_def_cfa_offset 16
	push	eax
	.cfi_def_cfa_offset 20
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 8
	test	ebx, ebx
	je	.L630
	neg	eax
.L630:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L632:
	.cfi_restore_state
	neg	eax
	mov	ebx, 1
	jmp	.L628
.L633:
	neg	edx
	xor	ebx, 1
	jmp	.L629
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, 0
	test	edx, edx
	js	.L639
.L635:
	mov	ecx, eax
	sar	ecx, 31
	xor	eax, ecx
	sub	eax, ecx
	push	1
	.cfi_def_cfa_offset 12
	push	eax
	.cfi_def_cfa_offset 16
	push	edx
	.cfi_def_cfa_offset 20
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 8
	test	ebx, ebx
	je	.L637
	neg	eax
.L637:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L639:
	.cfi_restore_state
	neg	edx
	mov	ebx, 1
	jmp	.L635
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
	movzx	edi, WORD PTR [esp+16]
	movzx	edx, WORD PTR [esp+20]
	mov	ecx, 1
	jmp	.L641
	.p2align 5
.L644:
	add	edx, edx
	add	ecx, ecx
.L641:
	cmp	dx, di
	setb	bl
	mov	esi, ebx
	test	cx, cx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L650
	test	dx, dx
	jns	.L644
	mov	ebx, 0
	jmp	.L643
.L650:
	mov	ebx, 0
	jmp	.L643
	.p2align 4
.L646:
	shr	cx
	shr	dx
.L643:
	test	cx, cx
	je	.L651
	cmp	di, dx
	jb	.L646
	sub	edi, edx
	or	ebx, ecx
	jmp	.L646
.L651:
	mov	eax, edi
	cmp	DWORD PTR [esp+24], 0
	jne	.L648
	mov	eax, ebx
.L648:
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
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, 1
	jmp	.L653
	.p2align 5
.L656:
	add	edx, edx
	add	ecx, ecx
.L653:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	.L662
	test	edx, edx
	jns	.L656
	mov	ebx, 0
	jmp	.L655
.L662:
	mov	ebx, 0
	jmp	.L655
	.p2align 4
.L658:
	shr	ecx
	shr	edx
.L655:
	test	ecx, ecx
	je	.L663
	cmp	edi, edx
	jb	.L658
	sub	edi, edx
	or	ebx, ecx
	jmp	.L658
.L663:
	mov	eax, edi
	cmp	DWORD PTR [esp+24], 0
	jne	.L660
	mov	eax, ebx
.L660:
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
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
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
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	mov	ebx, DWORD PTR [esp+32]
	test	bl, 32
	je	.L665
	mov	eax, 0
	lea	ecx, [ebx-32]
	sal	esi, cl
	mov	edx, esi
.L667:
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
.L665:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+4]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	.L667
	mov	esi, DWORD PTR [esp]
	mov	edi, esi
	mov	ecx, ebx
	sal	edi, cl
	mov	eax, edi
	mov	edi, DWORD PTR [esp+4]
	sal	edi, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	esi, cl
	or	esi, edi
	mov	edx, esi
	jmp	.L667
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
	sub	esp, 8
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	ebx, DWORD PTR [esp+32]
	test	bl, 32
	je	.L670
	mov	esi, edx
	mov	edi, edx
	sar	edi, 31
	mov	edx, edi
	lea	ecx, [ebx-32]
	sar	esi, cl
	mov	eax, esi
.L672:
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
.L670:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+4]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	.L672
	mov	edi, DWORD PTR [esp+4]
	mov	esi, edi
	mov	ecx, ebx
	sar	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [esp]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
	jmp	.L672
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
	mov	edx, DWORD PTR [esp+12]
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
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	mov	eax, 0
	cmp	ebx, edi
	jl	.L686
	mov	eax, 2
	jg	.L686
	mov	eax, 0
	cmp	ecx, esi
	jb	.L686
	cmp	esi, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L686:
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
	mov	edx, DWORD PTR [esp+8]
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
	sub	esp, 8
	.cfi_def_cfa_offset 24
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	mov	ebx, DWORD PTR [esp+32]
	test	bl, 32
	je	.L702
	mov	edx, 0
	mov	esi, edi
	lea	ecx, [ebx-32]
	shr	esi, cl
	mov	eax, esi
.L704:
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
.L702:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+4]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	.L704
	mov	edi, DWORD PTR [esp+4]
	mov	esi, edi
	mov	ecx, ebx
	shr	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [esp]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
	jmp	.L704
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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [esp+20]
	movzx	edi, ax
	movzx	ebp, WORD PTR [esp+24]
	mov	esi, edi
	imul	esi, ebp
	mov	edx, esi
	shr	edx, 16
	movzx	esi, si
	shr	eax, 16
	imul	ebp, eax
	add	edx, ebp
	mov	ebp, edx
	sal	ebp, 16
	lea	ecx, [ebp+0+esi]
	shr	edx, 16
	mov	ebx, edx
	mov	edx, ecx
	shr	edx, 16
	movzx	esi, cx
	mov	ebp, DWORD PTR [esp+24]
	shr	ebp, 16
	imul	edi, ebp
	add	edx, edi
	mov	edi, edx
	sal	edi, 16
	lea	ecx, [edi+esi]
	shr	edx, 16
	add	edx, ebx
	imul	eax, ebp
	lea	ebx, [eax+edx]
	mov	eax, ecx
	mov	edx, ebx
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
	sub	esp, 20
	.cfi_def_cfa_offset 40
	mov	esi, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+44]
	mov	eax, DWORD PTR [esp+48]
	mov	edx, DWORD PTR [esp+52]
	mov	ebp, eax
	mov	DWORD PTR [esp+12], esi
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	push	DWORD PTR [esp]
	.cfi_def_cfa_offset 44
	push	esi
	.cfi_def_cfa_offset 48
	call	__muldsi3
	mov	ebx, edi
	imul	ebx, ebp
	mov	esi, DWORD PTR [esp+12]
	mov	edi, DWORD PTR [esp+20]
	imul	esi, edi
	add	ebx, esi
	lea	edx, [ebx+edx]
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
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
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
	ret
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
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
	ret
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
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
	mov	edx, DWORD PTR [esp+20]
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
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
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
	mov	edx, DWORD PTR [esp+4]
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
	add	edx, eax
	and	edx, 252645135
	mov	eax, edx
	shr	eax, 16
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
	jmp	.L716
	.p2align 5
.L714:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L715
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L716:
	test	dl, 1
	je	.L714
	fmul	st, st(1)
	jmp	.L714
.L715:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	.L719
	fstp	st(0)
	fdivr	DWORD PTR .LC10
	jmp	.L717
.L719:
	fstp	st(1)
.L717:
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
	jmp	.L723
	.p2align 5
.L721:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L722
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L723:
	test	dl, 1
	je	.L721
	fmul	st, st(1)
	jmp	.L721
.L722:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	.L726
	fstp	st(0)
	fdivr	DWORD PTR .LC10
	jmp	.L724
.L726:
	fstp	st(1)
.L724:
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
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	mov	eax, 0
	cmp	ebx, edi
	jb	.L728
	mov	eax, 2
	cmp	edi, ebx
	jb	.L728
	mov	eax, 0
	cmp	ecx, esi
	jb	.L728
	cmp	esi, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L728:
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
