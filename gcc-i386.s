	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	esi, edx
	jnb	.L2
	test	eax, eax
	je	.L3
	.p2align 4
	.p2align 4
	.p2align 3
.L4:
	movzx	ecx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [edx-1+eax], cl
	sub	eax, 1
	jne	.L4
.L3:
	mov	eax, edx
	pop	esi
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	cmp	edx, esi
	je	.L3
	test	eax, eax
	je	.L3
	add	eax, edx
	mov	edi, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L5:
	movsb
	cmp	eax, edi
	jne	.L5
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.p2align 4
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
	je	.L21
	.p2align 5
	.p2align 4
	.p2align 3
.L17:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	je	.L28
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	jne	.L17
.L21:
	xor	eax, eax
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L28:
	add	eax, 1
	test	ecx, ecx
	je	.L21
.L16:
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
	.p2align 4
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
	je	.L35
	.p2align 4
	.p2align 4
	.p2align 3
.L30:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	je	.L39
	add	eax, 1
	sub	edx, 1
	jne	.L30
.L35:
	xor	eax, eax
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L39:
	test	edx, edx
	je	.L35
.L29:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.p2align 4
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
	je	.L45
	.p2align 5
	.p2align 4
	.p2align 3
.L41:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	jne	.L52
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	jne	.L41
.L45:
	xor	eax, eax
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L52:
	test	eax, eax
	je	.L45
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, bl
	sub	eax, edx
.L40:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.p2align 4
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	je	.L54
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	eax
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memcpy
	add	esp, 16
	.cfi_def_cfa_offset 16
.L54:
	mov	eax, ebx
	add	esp, 8
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.p2align 4
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
	lea	eax, [ebx-1+eax]
	sub	ebx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L60:
	cmp	eax, ebx
	je	.L64
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	jne	.L60
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L64:
	xor	edx, edx
.L59:
	mov	eax, edx
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
	.p2align 4
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
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
	test	esi, esi
	je	.L66
	lea	ecx, [ebx+esi]
	mov	eax, ebx
	and	esi, 1
	jne	.L76
	.p2align 4
	.p2align 4
	.p2align 3
.L67:
	mov	BYTE PTR [eax], dl
	mov	BYTE PTR [eax+1], dl
	add	eax, 2
	cmp	ecx, eax
	jne	.L67
.L66:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	mov	BYTE PTR [ebx], dl
	lea	eax, [ebx+1]
	cmp	ecx, eax
	jne	.L67
	jmp	.L66
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.p2align 4
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
	je	.L79
	.p2align 4
	.p2align 4
	.p2align 3
.L80:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L80
.L79:
	ret
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [esp+8]
	movzx	eax, BYTE PTR [edx]
	test	al, al
	je	.L85
	.p2align 4
	.p2align 4
	.p2align 3
.L86:
	cmp	eax, ecx
	je	.L85
	add	edx, 1
	movzx	eax, BYTE PTR [edx]
	test	al, al
	jne	.L86
.L85:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.p2align 4
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
	.p2align 4
	.p2align 4
	.p2align 3
.L94:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	je	.L93
	add	eax, 1
	test	cl, cl
	jne	.L94
	xor	eax, eax
.L93:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.p2align 4
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	movzx	eax, BYTE PTR [ebx]
	movzx	ecx, BYTE PTR [esi]
	test	al, al
	je	.L98
	cmp	al, cl
	jne	.L98
	mov	edx, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L99:
	movzx	eax, BYTE PTR [ebx+edx]
	movzx	ecx, BYTE PTR [esi+edx]
	add	edx, 1
	test	al, al
	je	.L98
	cmp	al, cl
	je	.L99
.L98:
	sub	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.p2align 4
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	cmp	BYTE PTR [edx], 0
	je	.L113
	.p2align 3
	.p2align 4
	.p2align 3
.L114:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L114
.L113:
	sub	eax, edx
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.p2align 4
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
	mov	ebp, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+28]
	xor	eax, eax
	test	ebx, ebx
	je	.L117
	movzx	eax, BYTE PTR [ebp+0]
	mov	edx, DWORD PTR [esp+24]
	test	al, al
	je	.L119
	lea	edi, [edx-1+ebx]
	.p2align 4
	.p2align 3
.L120:
	movzx	ebx, BYTE PTR [edx]
	test	bl, bl
	setne	cl
	cmp	bl, al
	sete	bl
	test	cl, bl
	je	.L119
	cmp	edx, edi
	je	.L119
	add	ebp, 1
	add	edx, 1
	movzx	eax, BYTE PTR [ebp+0]
	test	al, al
	jne	.L120
.L119:
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L117:
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
	.p2align 4
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
	jle	.L134
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L136:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
	cmp	eax, ebx
	jne	.L136
.L134:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.p2align 4
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
	.p2align 4
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	xor	eax, eax
	cmp	DWORD PTR [esp+4], 127
	setbe	al
	ret
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	lea	eax, [edx-9]
	cmp	eax, 4
	setbe	al
	cmp	edx, 32
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.p2align 4
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
	.p2align 4
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	lea	edx, [eax-127]
	cmp	edx, 32
	jbe	.L151
	cmp	eax, 31
	jbe	.L151
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L149
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L151:
	mov	edx, 1
.L149:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.p2align 4
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
	.p2align 4
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 254
	jbe	.L160
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L157
	cmp	eax, 8231
	jbe	.L157
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L154
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L154
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L160:
	add	eax, 1
	and	eax, 127
	xor	edx, edx
	cmp	eax, 32
	seta	dl
.L154:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	mov	edx, 1
	jmp	.L154
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.p2align 4
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	lea	ecx, [eax-48]
	mov	edx, 1
	cmp	ecx, 9
	jbe	.L161
	or	eax, 32
	sub	eax, 97
	xor	edx, edx
	cmp	eax, 5
	setbe	dl
.L161:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.p2align 4
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
	.p2align 4
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
	jp	.L173
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L169
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L172
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L172:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L173:
	fstp	st(1)
.L165:
	ret
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.p2align 4
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
	jp	.L182
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L178
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L181
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L178:
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L182:
	fstp	st(1)
.L174:
	ret
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.p2align 4
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
	jp	.L192
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L193
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
	je	.L185
	test	edx, edx
	jne	.L194
	fstp	st(0)
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L193:
	fstp	st(0)
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L195:
	fstp	st(0)
.L189:
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L192:
	fstp	st(0)
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L194:
	fstp	st(1)
.L183:
	ret
	.p2align 4,,10
	.p2align 3
.L185:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L195
	fstp	st(1)
	jmp	.L189
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.p2align 4
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
	jp	.L205
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L206
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
	je	.L198
	test	edx, edx
	jne	.L207
	fstp	st(0)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L206:
	fstp	st(0)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L208:
	fstp	st(0)
.L202:
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L205:
	fstp	st(0)
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L207:
	fstp	st(1)
.L196:
	ret
	.p2align 4,,10
	.p2align 3
.L198:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L208
	fstp	st(1)
	jmp	.L202
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.p2align 4
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
	jp	.L218
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L219
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
	je	.L211
	test	edx, edx
	jne	.L220
	fstp	st(0)
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L219:
	fstp	st(0)
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L221:
	fstp	st(0)
.L215:
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L218:
	fstp	st(0)
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L220:
	fstp	st(1)
.L209:
	ret
	.p2align 4,,10
	.p2align 3
.L211:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L221
	fstp	st(1)
	jmp	.L215
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.p2align 4
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
	jp	.L231
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L232
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
	je	.L224
	test	edx, edx
	jne	.L233
	fstp	st(1)
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L231:
	fstp	st(0)
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L234:
	fstp	st(1)
.L227:
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L232:
	fstp	st(0)
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L233:
	fstp	st(0)
.L222:
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L234
	fstp	st(0)
	jmp	.L227
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.p2align 4
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
	jp	.L244
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L245
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
	je	.L237
	test	edx, edx
	jne	.L246
	fstp	st(1)
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L244:
	fstp	st(0)
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L247:
	fstp	st(1)
.L240:
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L245:
	fstp	st(0)
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L246:
	fstp	st(0)
.L235:
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L247
	fstp	st(0)
	jmp	.L240
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.p2align 4
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
	jp	.L257
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L258
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
	je	.L250
	test	edx, edx
	jne	.L259
	fstp	st(1)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L257:
	fstp	st(0)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L260:
	fstp	st(1)
.L253:
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L258:
	fstp	st(0)
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L259:
	fstp	st(0)
.L248:
	ret
	.p2align 4,,10
	.p2align 3
.L250:
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L260
	fstp	st(0)
	jmp	.L253
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.p2align 4
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, OFFSET FLAT:s.0
	test	eax, eax
	je	.L262
	.p2align 5
	.p2align 4
	.p2align 3
.L263:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
	jne	.L263
.L262:
	mov	BYTE PTR [edx], 0
	mov	eax, OFFSET FLAT:s.0
	ret
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.p2align 4
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
	.p2align 4
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	imul	ecx, DWORD PTR seed+4, 1284865837
	mov	eax, DWORD PTR seed
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
	.p2align 4
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	test	edx, edx
	je	.L274
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L268
	mov	DWORD PTR [edx+4], eax
.L268:
	ret
	.p2align 4,,10
	.p2align 3
.L274:
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	ret
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.p2align 4
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L276
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L276:
	mov	edx, DWORD PTR [eax+4]
	test	edx, edx
	je	.L275
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
.L275:
	ret
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.p2align 4
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
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	.L285
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, ebx
	mov	ebx, esi
	.p2align 4
	.p2align 3
.L287:
	sub	esp, 8
	.cfi_def_cfa_offset 56
	push	ebp
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+60]
	.cfi_def_cfa_offset 64
	call	[DWORD PTR [esp+80]]
	add	esp, 16
	.cfi_def_cfa_offset 48
	test	eax, eax
	je	.L284
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	jne	.L287
	mov	ecx, DWORD PTR [esp+12]
.L285:
	lea	eax, [ecx+1]
	mov	edx, DWORD PTR [esp+56]
	mov	DWORD PTR [edx], eax
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	ebp, ecx
	test	edi, edi
	je	.L284
	sub	esp, 4
	.cfi_def_cfa_offset 52
	push	edi
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 60
	push	ecx
	.cfi_def_cfa_offset 64
	call	memmove
	add	esp, 16
	.cfi_def_cfa_offset 48
.L284:
	mov	eax, ebp
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
.LFE42:
	.size	lsearch, .-lsearch
	.p2align 4
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
	mov	eax, DWORD PTR [esp+40]
	mov	ebp, DWORD PTR [eax]
	test	ebp, ebp
	je	.L302
	mov	ebx, DWORD PTR [esp+36]
	xor	edi, edi
	mov	esi, ebp
	mov	ebp, ebx
	.p2align 4
	.p2align 3
.L304:
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	ebp
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	je	.L312
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	jne	.L304
.L302:
	xor	edi, edi
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L312:
	mov	edi, ebp
.L301:
	mov	eax, edi
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
	.p2align 4
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
	.p2align 4
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
	mov	ecx, DWORD PTR [esp+12]
	jmp	.L335
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L331:
	add	ecx, 1
.L335:
	movsx	eax, BYTE PTR [ecx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L331
	cmp	dl, 32
	je	.L331
	xor	esi, esi
	cmp	dl, 43
	je	.L319
	cmp	dl, 45
	jne	.L320
	mov	esi, 1
.L319:
	add	ecx, 1
.L320:
	movsx	edx, BYTE PTR [ecx]
	mov	ebx, edx
	sub	edx, 48
	xor	eax, eax
	cmp	edx, 9
	ja	.L322
	.p2align 5
	.p2align 4
	.p2align 3
.L321:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ecx, 1
	lea	edx, [ebx-48]
	movsx	edx, dl
	sub	eax, edx
	movsx	edx, BYTE PTR [ecx]
	mov	ebx, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L321
.L322:
	test	esi, esi
	jne	.L315
	neg	eax
.L315:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	jmp	atoi
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.p2align 4
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
	mov	edx, DWORD PTR [esp+20]
	jmp	.L357
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L353:
	add	edx, 1
.L357:
	movsx	eax, BYTE PTR [edx]
	mov	ecx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L353
	cmp	cl, 32
	je	.L353
	xor	ebp, ebp
	cmp	cl, 43
	je	.L341
	cmp	cl, 45
	jne	.L342
	mov	ebp, 1
.L341:
	add	edx, 1
.L342:
	movsx	ecx, BYTE PTR [edx]
	mov	eax, ecx
	sub	ecx, 48
	xor	esi, esi
	xor	edi, edi
	cmp	ecx, 9
	ja	.L344
	.p2align 6
	.p2align 4
	.p2align 3
.L343:
	mov	ecx, esi
	mov	ebx, edi
	shld	ebx, ecx, 2
	sal	ecx, 2
	add	esi, ecx
	adc	edi, ebx
	add	esi, esi
	adc	edi, edi
	add	edx, 1
	lea	ecx, [eax-48]
	movsx	ecx, cl
	mov	ebx, ecx
	sar	ebx, 31
	sub	esi, ecx
	sbb	edi, ebx
	movsx	ecx, BYTE PTR [edx]
	mov	eax, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L343
.L344:
	test	ebp, ebp
	jne	.L337
	neg	esi
	adc	edi, 0
	neg	edi
.L337:
	mov	eax, esi
	mov	edx, edi
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
	.p2align 4
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
	mov	esi, DWORD PTR [esp+44]
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L363:
	mov	ebx, edi
.L370:
	test	ebx, ebx
	je	.L359
	mov	edi, ebx
	shr	edi
	mov	edx, edi
	imul	edx, esi
	add	edx, DWORD PTR [esp+36]
	mov	ebp, edx
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	edx
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	js	.L363
	jle	.L358
	lea	eax, [ebp+0+esi]
	mov	DWORD PTR [esp+36], eax
	sub	ebx, 1
	sub	ebx, edi
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L359:
	xor	ebp, ebp
.L358:
	mov	eax, ebp
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
	.p2align 4
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
	mov	esi, DWORD PTR [esp+36]
	mov	ebx, DWORD PTR [esp+44]
	mov	ebp, DWORD PTR [esp+40]
	test	ebp, ebp
	je	.L372
	mov	edi, ebp
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L374:
	sar	edi
	je	.L372
.L375:
	mov	edx, edi
	sar	edx
	imul	edx, ebx
	lea	ebp, [esi+edx]
	sub	esp, 4
	.cfi_def_cfa_offset 36
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 40
	push	ebp
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	je	.L383
	jle	.L374
	lea	esi, [ebp+0+ebx]
	sub	edi, 1
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L372:
	xor	edi, edi
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L383:
	mov	edi, ebp
.L371:
	mov	eax, edi
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+32]
	lea	eax, [esp+8]
	sub	esp, 12
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 64
	call	__divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.p2align 4
	.globl	labs
	.type	labs, @function
labs:
.LFB152:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	xor	eax, edx
	sub	eax, edx
	ret
	.cfi_endproc
.LFE152:
	.size	labs, .-labs
	.p2align 4
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
	.p2align 4
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB154:
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
.LFE154:
	.size	llabs, .-llabs
	.p2align 4
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+32]
	lea	eax, [esp+8]
	sub	esp, 12
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 64
	call	__divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.p2align 4
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [edx]
	cmp	ecx, eax
	je	.L397
	.p2align 4
	.p2align 4
	.p2align 3
.L411:
	test	eax, eax
	je	.L397
	add	edx, 4
	mov	eax, DWORD PTR [edx]
	cmp	eax, ecx
	jne	.L411
.L397:
	neg	eax
	sbb	eax, eax
	and	edx, eax
	mov	eax, edx
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.p2align 4
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
	mov	edi, DWORD PTR [esp+24]
	mov	ebp, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [edi]
	mov	ecx, DWORD PTR [ebp+0]
	test	edx, edx
	setne	bl
	cmp	edx, ecx
	sete	al
	test	bl, al
	je	.L413
	test	ecx, ecx
	je	.L413
	mov	DWORD PTR [esp], 4
	.p2align 6
	.p2align 4
	.p2align 3
.L414:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [edi+eax]
	mov	ecx, DWORD PTR [ebp+0+eax]
	add	eax, 4
	mov	DWORD PTR [esp], eax
	test	edx, edx
	setne	bl
	mov	esi, ebx
	cmp	edx, ecx
	sete	bl
	mov	eax, esi
	test	al, bl
	je	.L413
	test	ecx, ecx
	jne	.L414
.L413:
	mov	eax, -1
	cmp	edx, ecx
	jl	.L412
	setg	al
	movzx	eax, al
.L412:
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
	.p2align 4
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
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L430:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L430
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	.L434
	.p2align 4
	.p2align 4
	.p2align 3
.L435:
	add	eax, 4
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	jne	.L435
.L434:
	sub	eax, edx
	sar	eax, 2
	ret
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.p2align 4
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
	mov	edx, DWORD PTR [esp+24]
	mov	ebp, DWORD PTR [esp+28]
	test	ebp, ebp
	je	.L444
	.p2align 4
	.p2align 3
.L439:
	mov	ebx, DWORD PTR [ecx]
	mov	esi, DWORD PTR [edx]
	test	ebx, ebx
	setne	al
	cmp	ebx, esi
	sete	bl
	test	al, bl
	je	.L440
	test	esi, esi
	je	.L440
	add	ecx, 4
	add	edx, 4
	sub	ebp, 1
	jne	.L439
.L444:
	xor	eax, eax
.L438:
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
	.p2align 4,,10
	.p2align 3
.L440:
	.cfi_restore_state
	test	ebp, ebp
	je	.L444
	mov	eax, -1
	mov	edi, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], edi
	jl	.L438
	setg	al
	movzx	eax, al
	jmp	.L438
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L461
	.p2align 4
	.p2align 4
	.p2align 3
.L456:
	cmp	DWORD PTR [eax], ecx
	je	.L464
	add	eax, 4
	sub	edx, 1
	jne	.L456
.L461:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L464:
	test	edx, edx
	je	.L461
	ret
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.p2align 4
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
	je	.L470
	.p2align 5
	.p2align 4
	.p2align 3
.L466:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [ecx], ebx
	jne	.L478
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	jne	.L466
.L470:
	xor	eax, eax
.L465:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L478:
	.cfi_restore_state
	test	eax, eax
	je	.L470
	mov	eax, -1
	cmp	DWORD PTR [ecx], ebx
	jl	.L465
	setg	al
	movzx	eax, al
	jmp	.L465
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	je	.L480
	sal	eax, 2
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	eax
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memcpy
	add	esp, 16
	.cfi_def_cfa_offset 16
.L480:
	mov	eax, ebx
	add	esp, 8
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
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
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	cmp	edx, esi
	je	.L486
	lea	eax, [ecx-1]
	mov	ebx, edx
	sub	ebx, esi
	lea	edi, [0+ecx*4]
	cmp	ebx, edi
	jb	.L487
	mov	edi, edx
	test	ecx, ecx
	je	.L486
	.p2align 3
	.p2align 4
	.p2align 3
.L488:
	movsd
	sub	eax, 1
	jnb	.L488
	jmp	.L486
	.p2align 4,,10
	.p2align 3
.L487:
	test	ecx, ecx
	je	.L486
	.p2align 4
	.p2align 4
	.p2align 3
.L489:
	mov	ecx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [edx+eax*4], ecx
	sub	eax, 1
	jnb	.L489
.L486:
	mov	eax, edx
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
.LFE65:
	.size	wmemmove, .-wmemmove
	.p2align 4
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
	je	.L499
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L500:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	sub	eax, 1
	jnb	.L500
.L499:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.p2align 4
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
	mov	esi, DWORD PTR [esp+12]
	mov	edi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	esi, edi
	jnb	.L507
	test	eax, eax
	je	.L506
	.p2align 4
	.p2align 4
	.p2align 3
.L509:
	movzx	edx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [edi-1+eax], dl
	sub	eax, 1
	jne	.L509
.L506:
	pop	esi
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L507:
	.cfi_restore_state
	je	.L506
	test	eax, eax
	je	.L506
	add	eax, esi
	.p2align 3
	.p2align 4
	.p2align 3
.L510:
	movsb
	cmp	eax, esi
	jne	.L510
	jmp	.L506
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.p2align 4
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
	je	.L522
	mov	edi, esi
	xor	esi, esi
.L522:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L523
	mov	eax, edx
	xor	edx, edx
.L523:
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
	.p2align 4
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
	je	.L526
	mov	esi, edi
	xor	edi, edi
.L526:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L527
	mov	edx, eax
	xor	eax, eax
.L527:
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB158:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
.LFE158:
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB160:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
.LFE160:
	.size	rotr_sz, .-rotr_sz
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xchg	al, ah
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	xchg	dl, dh
	rol	edx, 16
	xchg	dl, dh
	mov	eax, DWORD PTR [esp+8]
	xchg	al, ah
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L542:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	jne	.L544
	cmp	ecx, 32
	jne	.L542
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L544:
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.p2align 4
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	test	eax, eax
	je	.L545
	mov	edx, eax
	and	edx, 1
	jne	.L545
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L547:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L547
.L545:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
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
	ja	.L555
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L555:
	fstp	st(0)
.L552:
	ret
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.p2align 4
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
	ja	.L559
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L556
	.p2align 4,,10
	.p2align 3
.L559:
	fstp	st(0)
.L556:
	ret
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
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
	ja	.L563
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L560
	.p2align 4,,10
	.p2align 3
.L563:
	fstp	st(0)
.L560:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
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
	.p2align 4
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
	jp	.L566
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L572
	jne	.L572
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L579:
	fstp	st(0)
.L566:
	ret
	.p2align 4,,10
	.p2align 3
.L572:
	fld	DWORD PTR .LC8
	test	edx, edx
	jns	.L570
	fstp	st(0)
	fld	DWORD PTR .LC9
	jmp	.L570
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L569:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L579
	fmul	st, st(0)
.L570:
	test	dl, 1
	je	.L569
	fmul	st(1), st
	jmp	.L569
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.p2align 4
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
	jp	.L581
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L587
	jne	.L587
	jmp	.L581
	.p2align 4,,10
	.p2align 3
.L595:
	fstp	st(0)
.L581:
	ret
	.p2align 4,,10
	.p2align 3
.L587:
	test	edx, edx
	js	.L594
	fld	DWORD PTR .LC8
	jmp	.L585
	.p2align 4,,10
	.p2align 3
.L594:
	fld	DWORD PTR .LC9
	jmp	.L585
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L584:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L595
	fmul	st, st(0)
.L585:
	test	dl, 1
	je	.L584
	fmul	st(1), st
	jmp	.L584
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.p2align 4
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
	jp	.L597
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L603
	jne	.L603
	jmp	.L597
	.p2align 4,,10
	.p2align 3
.L611:
	fstp	st(0)
.L597:
	ret
	.p2align 4,,10
	.p2align 3
.L603:
	test	edx, edx
	js	.L610
	fld	DWORD PTR .LC8
	jmp	.L601
	.p2align 4,,10
	.p2align 3
.L610:
	fld	DWORD PTR .LC9
	jmp	.L601
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L600:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L611
	fmul	st, st(0)
.L601:
	test	dl, 1
	je	.L600
	fmul	st(1), st
	jmp	.L600
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.p2align 4
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
	je	.L613
	add	ebx, eax
	mov	edx, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L614:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], cl
	cmp	ebx, eax
	jne	.L614
.L613:
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
	.p2align 4
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	esi, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	eax, esi
	cmp	BYTE PTR [esi], 0
	je	.L621
	.p2align 3
	.p2align 4
	.p2align 3
.L622:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L622
.L621:
	test	edx, edx
	je	.L629
	.p2align 5
	.p2align 4
	.p2align 3
.L623:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	je	.L634
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	jne	.L623
	jmp	.L629
	.p2align 4,,10
	.p2align 3
.L634:
	test	edx, edx
	jne	.L626
.L629:
	mov	BYTE PTR [eax], 0
.L626:
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.p2align 4
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	xor	eax, eax
	test	edx, edx
	je	.L642
.L636:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L638
.L635:
	ret
	.p2align 4,,10
	.p2align 3
.L642:
	ret
	.p2align 4,,10
	.p2align 3
.L638:
	add	eax, 1
	cmp	edx, eax
	jne	.L636
	ret
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.p2align 4
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
	je	.L648
.L644:
	mov	eax, esi
	.p2align 4
	.p2align 4
	.p2align 3
.L647:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	.L651
	add	eax, 1
	cmp	dl, cl
	jne	.L647
.L645:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L651:
	.cfi_restore_state
	add	ebx, 1
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	jne	.L644
.L648:
	xor	ebx, ebx
	jmp	.L645
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.p2align 4
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
	xor	esi, esi
	jmp	.L654
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L653:
	add	eax, 1
	test	dl, dl
	je	.L658
.L654:
	movsx	ecx, BYTE PTR [eax]
	mov	edx, ecx
	cmp	ecx, ebx
	jne	.L653
	mov	esi, eax
	jmp	.L653
	.p2align 4,,10
	.p2align 3
.L658:
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
	.p2align 4
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
	mov	eax, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	movzx	ebx, BYTE PTR [ebp+0]
	mov	edx, ebp
	test	bl, bl
	je	.L660
	.p2align 3
	.p2align 4
	.p2align 3
.L661:
	add	edx, 1
	cmp	BYTE PTR [edx], 0
	jne	.L661
.L660:
	sub	edx, ebp
	lea	edi, [ebp-1+edx]
	jne	.L669
	jmp	.L662
	.p2align 4,,10
	.p2align 3
.L668:
	test	eax, eax
	je	.L662
	movzx	ecx, BYTE PTR [eax]
	mov	edx, ebp
	mov	esi, eax
	test	cl, cl
	je	.L665
	mov	DWORD PTR [esp+20], eax
	mov	DWORD PTR [esp+24], ebp
	mov	ebp, ebx
	.p2align 4
	.p2align 3
.L664:
	movzx	eax, BYTE PTR [edx]
	test	al, al
	setne	bl
	cmp	al, cl
	sete	al
	test	bl, al
	je	.L687
	cmp	edx, edi
	je	.L687
	add	esi, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [esi]
	test	cl, cl
	jne	.L664
.L687:
	mov	ebx, ebp
	mov	eax, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
.L665:
	cmp	BYTE PTR [edx], cl
	je	.L662
	add	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L669:
	movzx	edx, BYTE PTR [eax]
	cmp	dl, bl
	je	.L668
	add	eax, 1
	test	dl, dl
	jne	.L669
	xor	eax, eax
.L662:
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
	.p2align 4
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
	ja	.L699
	fxch	st(1)
	jmp	.L691
	.p2align 4,,10
	.p2align 3
.L701:
	fxch	st(1)
.L691:
	ftst
	fnstsw	ax
	sahf
	jbe	.L700
	fldz
	fcomp	st(2)
	fnstsw	ax
	fstp	st(1)
	sahf
	ja	.L693
	jmp	.L694
	.p2align 4,,10
	.p2align 3
.L700:
	fstp	st(1)
.L694:
	ret
	.p2align 4,,10
	.p2align 3
.L699:
	ftst
	fnstsw	ax
	sahf
	jbe	.L701
	fstp	st(0)
.L693:
	fchs
	ret
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.p2align 4
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
	mov	ebx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	edi, ebx
	mov	eax, DWORD PTR [esp+32]
	test	eax, eax
	je	.L702
	cmp	esi, DWORD PTR [esp+32]
	jb	.L712
	sub	esi, DWORD PTR [esp+32]
	add	esi, ebx
	jc	.L712
	mov	eax, DWORD PTR [esp+28]
	movzx	ebp, BYTE PTR [eax]
	jmp	.L709
	.p2align 4,,10
	.p2align 3
.L727:
	mov	ebx, DWORD PTR [esp+20]
	test	eax, eax
	je	.L702
	movzx	eax, BYTE PTR [ecx]
	cmp	BYTE PTR [edx], al
	je	.L702
	.p2align 5
	.p2align 4
	.p2align 3
.L704:
	cmp	esi, ebx
	jb	.L712
.L709:
	movzx	eax, BYTE PTR [ebx]
	mov	edi, ebx
	add	ebx, 1
	mov	ecx, ebp
	cmp	al, cl
	jne	.L704
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+32]
	sub	eax, 1
	je	.L702
	mov	ecx, ebx
	mov	DWORD PTR [esp+20], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L705:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	jne	.L727
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	jne	.L705
.L702:
	mov	eax, edi
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
	.p2align 4,,10
	.p2align 3
.L712:
	.cfi_restore_state
	xor	edi, edi
	jmp	.L702
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.p2align 4
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 4
	.cfi_def_cfa_offset 16
	mov	ebx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+24]
	test	esi, esi
	je	.L729
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	esi
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memmove
	add	esp, 16
	.cfi_def_cfa_offset 16
.L729:
	lea	eax, [ebx+esi]
	add	esp, 4
	.cfi_def_cfa_offset 12
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.p2align 4
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
	ja	.L763
	xor	ecx, ecx
.L735:
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	xor	edx, edx
	sahf
	jb	.L762
	.p2align 5
	.p2align 4
	.p2align 3
.L739:
	add	edx, 1
	fmul	DWORD PTR .LC9
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L739
.L740:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L744
	fchs
.L744:
	ret
	.p2align 4,,10
	.p2align 3
.L763:
	fchs
	mov	ecx, 1
	jmp	.L735
	.p2align 4,,10
	.p2align 3
.L762:
	fldz
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L752
	je	.L746
.L752:
	fld	DWORD PTR .LC9
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L764
.L746:
	xor	edx, edx
	jmp	.L740
	.p2align 4,,10
	.p2align 3
.L764:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L743:
	sub	edx, 1
	fadd	st, st(0)
	fld	DWORD PTR .LC9
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L743
	jmp	.L740
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.p2align 4
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
	je	.L768
	mov	edx, ebx
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	.p2align 6
	.p2align 4
	.p2align 3
.L767:
	mov	ecx, eax
	and	ecx, 1
	neg	ecx
	sbb	ebx, ebx
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
	jne	.L767
.L765:
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
	.p2align 4,,10
	.p2align 3
.L768:
	.cfi_restore_state
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	jmp	.L765
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	.L781
	.p2align 4
	.p2align 3
.L772:
	test	eax, eax
	js	.L773
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L773
	test	edx, edx
	jne	.L772
.L773:
	xor	ebx, ebx
	test	edx, edx
	je	.L776
.L781:
	xor	ebx, ebx
	jmp	.L775
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L778:
	shr	eax
	shr	edx
	je	.L776
.L775:
	cmp	ecx, eax
	jb	.L778
	sub	ecx, eax
	or	ebx, edx
	jmp	.L778
	.p2align 4,,10
	.p2align 3
.L776:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	jne	.L790
.L771:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L790:
	.cfi_restore_state
	mov	ebx, ecx
	jmp	.L771
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
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
	je	.L791
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
.L791:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
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
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	xor	eax, ecx
	xor	edx, ebx
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [esp+20]
	xor	eax, ecx
	mov	edx, DWORD PTR [esp+24]
	xor	edx, ebx
	or	eax, edx
	mov	ebp, 63
	je	.L796
	test	edi, edi
	je	.L798
	bsr	esi, edi
	xor	esi, 31
.L799:
	lea	ebp, [esi-1]
.L796:
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
	.p2align 4,,10
	.p2align 3
.L798:
	.cfi_restore_state
	bsr	esi, esi
	xor	esi, 31
	add	esi, 32
	jmp	.L799
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
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
	xor	ebx, ebx
	test	edx, edx
	je	.L803
	.p2align 5
	.p2align 4
	.p2align 3
.L805:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L805
.L803:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.p2align 4
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
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	edx, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+36]
	mov	edi, DWORD PTR [esp+40]
	mov	esi, edi
	shr	esi, 3
	mov	ebp, edi
	and	ebp, -8
	cmp	edx, ebx
	jb	.L810
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jb	.L810
	lea	eax, [edi-1]
	test	edi, edi
	je	.L809
	.p2align 4
	.p2align 4
	.p2align 3
.L811:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	jnb	.L811
	jmp	.L809
	.p2align 4,,10
	.p2align 3
.L810:
	test	esi, esi
	je	.L813
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*8]
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp+40], edi
	.p2align 5
	.p2align 4
	.p2align 3
.L814:
	mov	edi, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx], edi
	mov	DWORD PTR [ecx+4], ebp
	add	eax, 8
	add	ecx, 8
	cmp	eax, esi
	jne	.L814
	mov	ebp, DWORD PTR [esp+4]
	mov	edi, DWORD PTR [esp+40]
.L813:
	cmp	ebp, edi
	jnb	.L809
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
.L815:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	.L815
.L809:
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
.LFE105:
	.size	__cmovd, .-__cmovd
	.p2align 4
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
	jb	.L826
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jb	.L826
	lea	eax, [edi-1]
	test	edi, edi
	je	.L825
	.p2align 4
	.p2align 4
	.p2align 3
.L827:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	.L827
	jmp	.L825
	.p2align 4,,10
	.p2align 3
.L826:
	test	ecx, ecx
	je	.L829
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 4
	.p2align 4
	.p2align 3
.L830:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
	cmp	eax, ebp
	jne	.L830
.L829:
	test	edi, 1
	je	.L825
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
.L825:
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
.LFE106:
	.size	__cmovh, .-__cmovh
	.p2align 4
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
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	esi, edi
	shr	esi, 2
	mov	ebp, edi
	and	ebp, -4
	cmp	edx, ebx
	jb	.L842
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jb	.L842
	lea	eax, [edi-1]
	test	edi, edi
	je	.L841
	.p2align 4
	.p2align 4
	.p2align 3
.L843:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	jnb	.L843
	jmp	.L841
	.p2align 4,,10
	.p2align 3
.L842:
	test	esi, esi
	je	.L845
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*4]
	mov	DWORD PTR [esp+20], edx
	.p2align 4
	.p2align 4
	.p2align 3
.L846:
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	add	eax, 4
	add	ecx, 4
	cmp	eax, esi
	jne	.L846
	mov	edx, DWORD PTR [esp+20]
.L845:
	cmp	ebp, edi
	jnb	.L841
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
.L847:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	.L847
.L841:
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
.LFE107:
	.size	__cmovw, .-__cmovw
	.p2align 4
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
	.p2align 4
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	xor	edx, edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.p2align 4
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	xor	edx, edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.p2align 4
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fild	QWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	js	.L865
.L863:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L865:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L863
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.p2align 4
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fild	QWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	js	.L869
.L867:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L869:
	.cfi_restore_state
	fadd	DWORD PTR .LC11
	jmp	.L867
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.p2align 4
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	div	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.p2align 4
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xor	eax, eax
	movzx	ebx, WORD PTR [esp+8]
	mov	ecx, 15
	.p2align 5
	.p2align 4
	.p2align 3
.L873:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	.L871
	add	eax, 1
	cmp	eax, 16
	jne	.L873
.L871:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	xor	eax, eax
	movzx	edx, WORD PTR [esp+4]
	.p2align 4
	.p2align 4
	.p2align 3
.L878:
	bt	edx, eax
	jc	.L876
	add	eax, 1
	cmp	eax, 16
	jne	.L878
.L876:
	ret
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
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
	jnb	.L888
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
.L886:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L888:
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
	jmp	.L886
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xor	eax, eax
	xor	ecx, ecx
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
.L890:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L890
	and	eax, 1
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xor	edx, edx
	xor	ecx, ecx
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
.L894:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L894
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB166:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	xor	ebx, ebx
	test	edx, edx
	je	.L897
	.p2align 5
	.p2align 4
	.p2align 3
.L899:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L899
.L897:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE166:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
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
	xor	ebx, ebx
	test	ecx, ecx
	je	.L903
	test	edx, edx
	je	.L907
	.p2align 5
	.p2align 4
	.p2align 3
.L905:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	.L905
.L903:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L907:
	.cfi_restore_state
	xor	ebx, ebx
	jmp	.L903
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB162:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	.L921
	.p2align 4
	.p2align 3
.L912:
	test	eax, eax
	js	.L913
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L913
	test	edx, edx
	jne	.L912
.L913:
	xor	ebx, ebx
	test	edx, edx
	je	.L916
.L921:
	xor	ebx, ebx
	jmp	.L915
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L918:
	shr	eax
	shr	edx
	je	.L916
.L915:
	cmp	ecx, eax
	jb	.L918
	sub	ecx, eax
	or	ebx, edx
	jmp	.L918
	.p2align 4,,10
	.p2align 3
.L916:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	jne	.L930
.L911:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L930:
	.cfi_restore_state
	mov	ebx, ecx
	jmp	.L911
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
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
	ja	.L934
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L931
	.p2align 4,,10
	.p2align 3
.L934:
	fstp	st(0)
	fstp	st(0)
.L931:
	ret
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
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
	ja	.L938
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L935
	.p2align 4,,10
	.p2align 3
.L938:
	fstp	st(0)
	fstp	st(0)
.L935:
	ret
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	imul	DWORD PTR [esp+8]
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
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
	.p2align 4
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
	xor	edi, edi
	test	edx, edx
	js	.L954
.L942:
	test	edx, edx
	je	.L947
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L944:
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
	jne	.L944
.L943:
	test	edi, edi
	je	.L941
	neg	esi
.L941:
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
	.p2align 4,,10
	.p2align 3
.L954:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L942
	.p2align 4,,10
	.p2align 3
.L947:
	xor	esi, esi
	jmp	.L943
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	xor	esi, esi
	test	ebx, ebx
	js	.L979
.L956:
	test	eax, eax
	js	.L980
.L957:
	mov	ecx, ebx
	mov	edx, 1
	cmp	eax, ebx
	jnb	.L976
	.p2align 4
	.p2align 4
	.p2align 3
.L959:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jnb	.L958
	test	edx, edx
	jne	.L959
.L958:
	test	edx, edx
	je	.L967
.L976:
	xor	ebx, ebx
	jmp	.L963
	.p2align 4,,10
	.p2align 3
.L979:
	neg	ebx
	mov	esi, 1
	jmp	.L956
	.p2align 4,,10
	.p2align 3
.L980:
	neg	eax
	xor	esi, 1
	jmp	.L957
	.p2align 4,,10
	.p2align 3
.L981:
	sub	ecx, eax
	or	ebx, edx
.L962:
	shr	eax
	shr	edx
	je	.L961
.L963:
	cmp	ecx, eax
	jb	.L962
	jmp	.L981
	.p2align 4,,10
	.p2align 3
.L967:
	xor	ebx, ebx
	.p2align 4
	.p2align 3
.L961:
	mov	eax, ebx
	test	esi, esi
	je	.L955
	neg	eax
.L955:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	xor	esi, esi
	test	ebx, ebx
	js	.L1007
.L983:
	cdq
	xor	eax, edx
	sub	eax, edx
	mov	ecx, ebx
	mov	edx, 1
	cmp	eax, ebx
	jnb	.L999
	.p2align 4
	.p2align 4
	.p2align 3
.L985:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jnb	.L984
	test	edx, edx
	jne	.L985
.L984:
	test	edx, edx
	jne	.L999
	.p2align 4
	.p2align 3
.L987:
	mov	eax, ecx
	test	esi, esi
	je	.L982
	neg	eax
.L982:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1007:
	.cfi_restore_state
	neg	ebx
	mov	esi, 1
	jmp	.L983
	.p2align 4,,10
	.p2align 3
.L1008:
	sub	ecx, eax
.L988:
	shr	eax
	shr	edx
	je	.L987
.L999:
	cmp	ecx, eax
	jb	.L988
	jmp	.L1008
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	ecx, ebx
	mov	eax, esi
	mov	edx, 1
	cmp	si, bx
	jnb	.L1019
	.p2align 4
	.p2align 3
.L1010:
	test	ax, ax
	js	.L1011
	add	eax, eax
	add	edx, edx
	cmp	ax, cx
	jnb	.L1011
	test	dx, dx
	jne	.L1010
.L1011:
	xor	ebx, ebx
	test	dx, dx
	je	.L1014
.L1019:
	xor	ebx, ebx
	jmp	.L1013
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1016:
	shr	ax
	shr	dx
	je	.L1014
.L1013:
	cmp	cx, ax
	jb	.L1016
	sub	ecx, eax
	or	ebx, edx
	jmp	.L1016
	.p2align 4,,10
	.p2align 3
.L1014:
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	jne	.L1028
.L1009:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1028:
	.cfi_restore_state
	mov	ebx, ecx
	jmp	.L1009
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	.L1039
	.p2align 4
	.p2align 3
.L1030:
	test	eax, eax
	js	.L1031
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1031
	test	edx, edx
	jne	.L1030
.L1031:
	xor	ebx, ebx
	test	edx, edx
	je	.L1034
.L1039:
	xor	ebx, ebx
	jmp	.L1033
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1036:
	shr	eax
	shr	edx
	je	.L1034
.L1033:
	cmp	ecx, eax
	jb	.L1036
	sub	ecx, eax
	or	ebx, edx
	jmp	.L1036
	.p2align 4,,10
	.p2align 3
.L1034:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	jne	.L1048
.L1029:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1048:
	.cfi_restore_state
	mov	ebx, ecx
	jmp	.L1029
	.cfi_endproc
.LFE164:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
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
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	bl, 32
	je	.L1050
	lea	ecx, [ebx-32]
	sal	edx, cl
	xor	eax, eax
.L1052:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1050:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1053
	mov	ecx, ebx
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	edx, cl
	mov	ecx, ebx
	sal	esi, cl
	or	edx, esi
	jmp	.L1052
	.p2align 4,,10
	.p2align 3
.L1053:
	mov	edx, esi
	jmp	.L1052
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.p2align 4
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
	je	.L1056
	mov	edx, esi
	sar	edx, 31
	lea	ecx, [ebx-32]
	mov	eax, esi
	sar	eax, cl
.L1058:
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
	.p2align 4,,10
	.p2align 3
.L1056:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1059
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
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1059:
	mov	eax, edi
	mov	edx, esi
	jmp	.L1058
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	xchg	dl, dh
	rol	edx, 16
	xchg	dl, dh
	mov	eax, DWORD PTR [esp+8]
	xchg	al, ah
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xchg	al, ah
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
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
	xor	eax, eax
	cmp	edx, 65535
	setbe	al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	xor	ebx, ebx
	test	dh, -1
	sete	bl
	sal	ebx, 3
	mov	ecx, 8
	sub	ecx, ebx
	shr	edx, cl
	add	ebx, eax
	xor	eax, eax
	test	dl, -16
	sete	al
	lea	esi, [0+eax*4]
	mov	ecx, 4
	sub	ecx, esi
	shr	edx, cl
	add	esi, ebx
	xor	ebx, ebx
	test	dl, 12
	sete	bl
	add	ebx, ebx
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, ebx
	shr	edx, cl
	sub	eax, edx
	and	edx, 2
	cmp	edx, 1
	sbb	edx, edx
	and	eax, edx
	add	ebx, esi
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
	.p2align 4
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	xor	eax, eax
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	.L1065
	mov	eax, 2
	jg	.L1065
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1065
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1065:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	xor	eax, eax
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	.L1073
	mov	eax, 2
	jg	.L1073
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1073
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1073:
	sub	eax, 1
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	xor	edx, edx
	test	ax, ax
	sete	dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	xor	ecx, ecx
	test	al, al
	sete	cl
	sal	ecx, 3
	shr	eax, cl
	lea	ebx, [ecx+edx]
	xor	ecx, ecx
	test	al, 15
	sete	cl
	sal	ecx, 2
	shr	eax, cl
	lea	edx, [ecx+ebx]
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shr	eax, cl
	and	eax, 3
	mov	ebx, eax
	not	ebx
	shr	eax
	mov	esi, 2
	sub	esi, eax
	mov	eax, ebx
	and	eax, 1
	neg	eax
	and	eax, esi
	add	ecx, edx
	add	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
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
	je	.L1082
	lea	ecx, [ebx-32]
	mov	eax, esi
	shr	eax, cl
	xor	edx, edx
.L1084:
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
	.p2align 4,,10
	.p2align 3
.L1082:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1085
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
	jmp	.L1084
	.p2align 4,,10
	.p2align 3
.L1085:
	mov	eax, edi
	mov	edx, esi
	jmp	.L1084
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
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
	movzx	eax, cx
	movzx	edx, si
	mov	ebx, eax
	imul	ebx, edx
	mov	edi, ebx
	shr	edi, 16
	shr	ecx, 16
	imul	edx, ecx
	add	edx, edi
	movzx	edi, dx
	shr	esi, 16
	imul	eax, esi
	add	eax, edi
	movzx	ebx, bx
	mov	edi, eax
	sal	edi, 16
	add	ebx, edi
	shr	edx, 16
	imul	ecx, esi
	add	edx, ecx
	shr	eax, 16
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
	.p2align 4
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
	mov	edx, DWORD PTR [esp+20]
	movzx	ecx, dx
	movzx	eax, WORD PTR [esp+28]
	mov	ebx, ecx
	imul	ebx, eax
	mov	edi, ebx
	shr	edi, 16
	mov	esi, edx
	shr	esi, 16
	imul	eax, esi
	add	eax, edi
	movzx	ebp, ax
	mov	edi, DWORD PTR [esp+28]
	shr	edi, 16
	imul	ecx, edi
	add	ecx, ebp
	movzx	ebx, bx
	mov	ebp, ecx
	sal	ebp, 16
	add	ebp, ebx
	shr	eax, 16
	imul	esi, edi
	add	eax, esi
	shr	ecx, 16
	add	ecx, eax
	imul	edx, DWORD PTR [esp+32]
	add	edx, ecx
	mov	eax, DWORD PTR [esp+28]
	imul	eax, DWORD PTR [esp+24]
	add	edx, eax
	mov	eax, ebp
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
	.p2align 4
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	neg	eax
	sbb	edx, DWORD PTR [esp+8]
	ret
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	lea	eax, [eax+edx]
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
	.p2align 4
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
	.p2align 4
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, ecx
	fld1
	jmp	.L1100
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1098:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1099
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L1100:
	test	al, 1
	je	.L1098
	fmul	st, st(1)
	jmp	.L1098
	.p2align 4,,10
	.p2align 3
.L1099:
	fstp	st(1)
	test	ecx, ecx
	js	.L1105
.L1097:
	ret
	.p2align 4,,10
	.p2align 3
.L1105:
	fdivr	DWORD PTR .LC10
	jmp	.L1097
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, ecx
	fld1
	jmp	.L1109
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1107:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1108
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
.L1109:
	test	al, 1
	je	.L1107
	fmul	st, st(1)
	jmp	.L1107
	.p2align 4,,10
	.p2align 3
.L1108:
	fstp	st(1)
	test	ecx, ecx
	js	.L1114
.L1106:
	ret
	.p2align 4,,10
	.p2align 3
.L1114:
	fdivr	DWORD PTR .LC10
	jmp	.L1106
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.p2align 4
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
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1115
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1115
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1115
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1115:
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
	.p2align 4
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
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
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1123
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1123
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1123
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1123:
	sub	eax, 1
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.align 32
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
	.globl	__divmoddi4
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
