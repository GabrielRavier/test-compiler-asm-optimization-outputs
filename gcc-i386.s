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
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
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
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	movzx	esi, BYTE PTR [esp+20]
	test	ecx, ecx
	jne	.L17
	jmp	.L18
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L19:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L18
.L17:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L19
	add	eax, 1
.L16:
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
.L18:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L16
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
	mov	edx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+8]
	movzx	ebx, BYTE PTR [esp+12]
	test	edx, edx
	jne	.L29
	jmp	.L32
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L31:
	add	eax, 1
	sub	edx, 1
	je	.L32
.L29:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L31
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	xor	eax, eax
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
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	eax, eax
	jne	.L36
	jmp	.L35
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L38:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L40
.L36:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L38
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L35:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	.cfi_restore_state
	xor	eax, eax
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
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	eax, eax
	je	.L45
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
.L45:
	add	esp, 8
	.cfi_def_cfa_offset 8
	mov	eax, ebx
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
	mov	eax, DWORD PTR [esp+20]
	movzx	esi, BYTE PTR [esp+16]
	lea	eax, [ebx-1+eax]
	sub	ebx, 1
	jmp	.L51
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L53:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L50
.L51:
	cmp	eax, ebx
	jne	.L53
	xor	edx, edx
.L50:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	eax, eax
	je	.L56
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	eax
	.cfi_def_cfa_offset 24
	movzx	eax, BYTE PTR [esp+28]
	push	eax
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memset
	add	esp, 16
	.cfi_def_cfa_offset 16
.L56:
	add	esp, 8
	.cfi_def_cfa_offset 8
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.p2align 4
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	je	.L62
	.p2align 4
	.p2align 4
	.p2align 3
.L63:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L63
.L62:
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
	jne	.L69
	jmp	.L68
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L71:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L68
.L69:
	cmp	eax, ecx
	jne	.L71
.L68:
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
	jmp	.L77
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L81:
	add	eax, 1
	test	cl, cl
	je	.L80
.L77:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L81
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	.cfi_restore_state
	xor	eax, eax
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
	je	.L83
	cmp	al, cl
	jne	.L83
	mov	edx, 1
	jmp	.L84
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L97:
	cmp	al, cl
	jne	.L83
.L84:
	movzx	eax, BYTE PTR [ebx+edx]
	movzx	ecx, BYTE PTR [esi+edx]
	add	edx, 1
	test	al, al
	jne	.L97
.L83:
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
	cmp	BYTE PTR [edx], 0
	je	.L101
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L100:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L100
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L101:
	xor	eax, eax
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
	xor	eax, eax
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
	mov	ebp, DWORD PTR [esp+32]
	test	ebp, ebp
	je	.L103
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L107
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L122:
	cmp	edx, ebp
	je	.L106
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	ecx, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L121
	mov	edx, ecx
.L107:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	mov	edi, ebx
	sete	bl
	mov	esi, ebx
	mov	ebx, edi
	mov	ecx, esi
	test	bl, cl
	jne	.L122
.L106:
	movzx	ecx, BYTE PTR [esp+3]
	sub	eax, ecx
.L103:
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
	.p2align 4,,10
	.p2align 3
.L121:
	.cfi_restore_state
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	.L106
.L120:
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	.L106
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
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	cmp	ebx, 1
	jle	.L123
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L125:
	movzx	ecx, BYTE PTR [eax+1]
	add	eax, 2
	add	edx, 2
	mov	BYTE PTR [edx-2], cl
	movzx	ecx, BYTE PTR [eax-2]
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	.L125
.L123:
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
	jbe	.L140
	cmp	eax, 31
	jbe	.L140
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L138
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	mov	edx, 1
.L138:
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
	jbe	.L149
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L146
	cmp	eax, 8231
	jbe	.L146
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L143
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L143
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L146:
	mov	edx, 1
.L143:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L149:
	add	eax, 1
	xor	edx, edx
	and	eax, 127
	cmp	eax, 32
	seta	dl
	mov	eax, edx
	ret
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
	mov	edx, 1
	lea	ecx, [eax-48]
	cmp	ecx, 9
	jbe	.L150
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L150:
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
	jp	.L162
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L158
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L161
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L162:
	fstp	st(1)
.L154:
	ret
	.p2align 4,,10
	.p2align 3
.L158:
	fstp	st(1)
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
	jp	.L171
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L167
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L170
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L170:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L171:
	fstp	st(1)
.L163:
	ret
	.p2align 4,,10
	.p2align 3
.L167:
	fstp	st(1)
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
	jp	.L183
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L184
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	jne	.L182
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L185
	fstp	st(1)
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L184:
	fstp	st(0)
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L185:
	fstp	st(0)
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L186:
	fstp	st(0)
.L178:
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L183:
	fstp	st(0)
.L172:
	ret
	.p2align 4,,10
	.p2align 3
.L182:
	test	edx, edx
	je	.L186
	fstp	st(1)
	ret
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
	jp	.L198
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L199
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	jne	.L197
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L200
	fstp	st(1)
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L199:
	fstp	st(0)
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L200:
	fstp	st(0)
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L201:
	fstp	st(0)
.L193:
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L198:
	fstp	st(0)
.L187:
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	test	edx, edx
	je	.L201
	fstp	st(1)
	ret
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
	jp	.L213
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L214
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	jne	.L212
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L215
	fstp	st(1)
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L214:
	fstp	st(0)
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L215:
	fstp	st(0)
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L216:
	fstp	st(0)
.L208:
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L213:
	fstp	st(0)
.L202:
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	test	edx, edx
	je	.L216
	fstp	st(1)
	ret
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
	jp	.L228
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L229
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	jne	.L227
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L230
	fstp	st(0)
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L228:
	fstp	st(0)
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L230:
	fstp	st(1)
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L231:
	fstp	st(1)
.L222:
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L229:
	fstp	st(0)
.L217:
	ret
	.p2align 4,,10
	.p2align 3
.L227:
	test	edx, edx
	je	.L231
	fstp	st(0)
	ret
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
	jp	.L243
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L244
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	jne	.L242
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L245
	fstp	st(0)
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L243:
	fstp	st(0)
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L245:
	fstp	st(1)
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L246:
	fstp	st(1)
.L237:
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L244:
	fstp	st(0)
.L232:
	ret
	.p2align 4,,10
	.p2align 3
.L242:
	test	edx, edx
	je	.L246
	fstp	st(0)
	ret
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
	jp	.L258
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L259
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	jne	.L257
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L260
	fstp	st(0)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L258:
	fstp	st(0)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L260:
	fstp	st(1)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L261:
	fstp	st(1)
.L252:
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L259:
	fstp	st(0)
.L247:
	ret
	.p2align 4,,10
	.p2align 3
.L257:
	test	edx, edx
	je	.L261
	fstp	st(0)
	ret
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
	je	.L263
	.p2align 5
	.p2align 4
	.p2align 3
.L264:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L264
.L263:
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
	mov	DWORD PTR seed+4, 0
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 1
	mov	DWORD PTR seed, eax
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
	mov	eax, edx
	mov	DWORD PTR seed+4, edx
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
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	test	edx, edx
	je	.L275
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L269
	mov	DWORD PTR [edx+4], eax
.L269:
	ret
	.p2align 4,,10
	.p2align 3
.L275:
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
	je	.L277
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L277:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L276
	mov	DWORD PTR [eax], edx
.L276:
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
	mov	eax, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [esp+60]
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	.L286
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, ebx
	mov	ebx, esi
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L303:
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	je	.L302
.L288:
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
	jne	.L303
.L285:
	add	esp, 28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
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
	.p2align 4,,10
	.p2align 3
.L302:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L286:
	mov	edx, DWORD PTR [esp+56]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	DWORD PTR [edx], eax
	mov	ebp, ecx
	test	edi, edi
	je	.L285
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
	je	.L305
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, ebp
	xor	edi, edi
	mov	ebp, ebx
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L317:
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	je	.L305
.L307:
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
	jne	.L317
	mov	edi, ebp
.L304:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	eax, edi
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
	.p2align 4,,10
	.p2align 3
.L305:
	.cfi_restore_state
	xor	edi, edi
	jmp	.L304
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
	jmp	.L343
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L337:
	add	edx, 1
.L343:
	movsx	eax, BYTE PTR [edx]
	mov	ecx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L337
	cmp	cl, 32
	je	.L337
	cmp	cl, 43
	je	.L323
	cmp	cl, 45
	jne	.L344
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	ja	.L332
	mov	ebp, 1
.L326:
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L329:
	add	edi, 1
	lea	edx, [esi-48]
	lea	eax, [ebx+ebx*4]
	movzx	esi, BYTE PTR [edi]
	add	eax, eax
	movsx	edx, dl
	mov	ebx, eax
	mov	ecx, esi
	sub	ebx, edx
	movsx	ecx, cl
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L329
	test	ebp, ebp
	jne	.L319
	mov	ebx, edx
	sub	ebx, eax
.L319:
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
	.p2align 4,,10
	.p2align 3
.L344:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx]
	mov	edi, edx
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L326
.L332:
	xor	ebx, ebx
.L345:
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
	.p2align 4,,10
	.p2align 3
.L323:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L326
	xor	ebx, ebx
	jmp	.L345
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	edx, DWORD PTR [esp+48]
	jmp	.L373
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L365:
	add	edx, 1
.L373:
	movsx	eax, BYTE PTR [edx]
	mov	ecx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L365
	cmp	cl, 32
	je	.L365
	cmp	cl, 43
	je	.L351
	cmp	cl, 45
	jne	.L374
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	ja	.L360
	mov	ebp, 1
.L354:
	mov	DWORD PTR [esp+20], ebp
	xor	eax, eax
	xor	edx, edx
	.p2align 4
	.p2align 3
.L357:
	mov	ecx, eax
	mov	ebx, edx
	shld	ebx, ecx, 2
	sal	ecx, 2
	add	eax, ecx
	lea	ecx, [esi-48]
	movsx	ecx, cl
	adc	edx, ebx
	add	eax, eax
	mov	esi, ecx
	adc	edx, edx
	mov	DWORD PTR [esp+8], eax
	add	edi, 1
	sar	esi, 31
	sub	eax, ecx
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+4], esi
	sbb	edx, esi
	movzx	esi, BYTE PTR [edi]
	mov	DWORD PTR [esp], ecx
	mov	ebx, esi
	movsx	ebp, bl
	sub	ebp, 48
	cmp	ebp, 9
	jbe	.L357
	mov	ebp, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp]
	mov	ebx, DWORD PTR [esp+4]
	test	ebp, ebp
	jne	.L347
	mov	eax, ecx
	mov	edx, ebx
	sub	eax, DWORD PTR [esp+8]
	sbb	edx, DWORD PTR [esp+12]
.L347:
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
	.p2align 4,,10
	.p2align 3
.L374:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx]
	mov	edi, edx
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L354
.L360:
	add	esp, 28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xor	eax, eax
	xor	edx, edx
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
	.p2align 4,,10
	.p2align 3
.L351:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L354
	jmp	.L360
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
	.p2align 4
	.p2align 3
.L387:
	test	ebx, ebx
	je	.L376
.L388:
	mov	edi, ebx
	sub	esp, 8
	.cfi_def_cfa_offset 40
	shr	edi
	mov	edx, edi
	imul	edx, esi
	add	edx, DWORD PTR [esp+44]
	push	edx
	.cfi_def_cfa_offset 44
	mov	ebp, edx
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	js	.L380
	jle	.L375
	sub	ebx, 1
	lea	eax, [ebp+0+esi]
	sub	ebx, edi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L388
.L376:
	xor	ebp, ebp
.L375:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
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
	.p2align 4,,10
	.p2align 3
.L380:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L387
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
	mov	esi, DWORD PTR [esp+44]
	mov	ebx, DWORD PTR [esp+40]
.L404:
	test	ebx, ebx
	je	.L390
.L405:
	mov	edi, ebx
	sub	esp, 4
	.cfi_def_cfa_offset 36
	sar	edi
	mov	edx, edi
	imul	edx, esi
	add	edx, DWORD PTR [esp+40]
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 40
	push	edx
	.cfi_def_cfa_offset 44
	mov	ebp, edx
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	je	.L389
	jle	.L394
	sub	ebx, 1
	lea	eax, [ebp+0+esi]
	sar	ebx
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L405
.L390:
	xor	ebp, ebp
.L389:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
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
	.p2align 4,,10
	.p2align 3
.L394:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L404
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	mov	eax, ecx
	mov	DWORD PTR [ecx+4], edx
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
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, edx
	sar	ebx, 31
	mov	ecx, ebx
	xor	edx, ebx
	xor	eax, ecx
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
	mov	eax, ebx
	mov	DWORD PTR [ebx+12], edx
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
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	mov	eax, ecx
	mov	DWORD PTR [ecx+4], edx
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
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, edx
	sar	ebx, 31
	mov	ecx, ebx
	xor	edx, ebx
	xor	eax, ecx
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
	mov	eax, ebx
	mov	DWORD PTR [ebx+12], edx
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
	jne	.L432
	jmp	.L418
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L433:
	mov	eax, DWORD PTR [edx+4]
	add	edx, 4
	cmp	eax, ecx
	je	.L418
.L432:
	test	eax, eax
	jne	.L433
.L418:
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
	je	.L435
	test	ecx, ecx
	je	.L435
	mov	DWORD PTR [esp], 4
	jmp	.L436
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L451:
	test	ecx, ecx
	je	.L435
.L436:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [edi+eax]
	mov	ecx, DWORD PTR [ebp+0+eax]
	add	eax, 4
	mov	DWORD PTR [esp], eax
	test	edx, edx
	setne	bl
	cmp	edx, ecx
	mov	esi, ebx
	sete	bl
	mov	eax, esi
	test	al, bl
	jne	.L451
.L435:
	mov	eax, -1
	cmp	edx, ecx
	jl	.L434
	setg	al
	movzx	eax, al
.L434:
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
	xor	eax, eax
	mov	ebx, DWORD PTR [esp+12]
	.p2align 4
	.p2align 4
	.p2align 3
.L453:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L453
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
	mov	eax, DWORD PTR [edx]
	test	eax, eax
	je	.L459
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L458:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L458
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L459:
	xor	eax, eax
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
	mov	ebp, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	test	ebp, ebp
	jne	.L462
	jmp	.L468
	.p2align 4,,10
	.p2align 3
.L474:
	test	esi, esi
	je	.L466
	add	edx, 4
	add	eax, 4
	sub	ebp, 1
	je	.L468
.L462:
	mov	ecx, DWORD PTR [edx]
	mov	esi, DWORD PTR [eax]
	test	ecx, ecx
	setne	bl
	cmp	ecx, esi
	sete	cl
	test	bl, cl
	jne	.L474
.L466:
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [edx], eax
	jge	.L467
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, -1
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
.L467:
	.cfi_restore_state
	setg	al
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	movzx	eax, al
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L468:
	.cfi_restore_state
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xor	eax, eax
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
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	test	edx, edx
	jne	.L476
	jmp	.L479
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L478:
	add	eax, 4
	sub	edx, 1
	je	.L479
.L476:
	cmp	DWORD PTR [eax], ecx
	jne	.L478
	ret
	.p2align 4,,10
	.p2align 3
.L479:
	xor	eax, eax
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
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	eax, eax
	jne	.L482
	jmp	.L481
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L484:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L487
.L482:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L484
	cmp	ebx, DWORD PTR [edx]
	jl	.L491
	setg	al
	movzx	eax, al
.L481:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L491:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L487:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	eax, eax
	je	.L493
	sub	esp, 4
	.cfi_def_cfa_offset 20
	sal	eax, 2
	push	eax
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memcpy
	add	esp, 16
	.cfi_def_cfa_offset 16
.L493:
	add	esp, 8
	.cfi_def_cfa_offset 8
	mov	eax, ebx
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
	je	.L499
	mov	ebx, edx
	lea	edi, [0+ecx*4]
	lea	eax, [ecx-1]
	sub	ebx, esi
	cmp	ebx, edi
	jnb	.L511
	test	ecx, ecx
	je	.L499
	.p2align 4
	.p2align 4
	.p2align 3
.L502:
	mov	ecx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [edx+eax*4], ecx
	sub	eax, 1
	jnb	.L502
.L499:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L511:
	.cfi_restore_state
	mov	edi, edx
	test	ecx, ecx
	je	.L499
	.p2align 3
	.p2align 4
	.p2align 3
.L501:
	movsd
	sub	eax, 1
	jnb	.L501
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, edx
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
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L513
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L514:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	sub	eax, 1
	jnb	.L514
.L513:
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
	jnb	.L521
	test	eax, eax
	je	.L520
	.p2align 4
	.p2align 4
	.p2align 3
.L523:
	movzx	edx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [edi-1+eax], dl
	sub	eax, 1
	jne	.L523
.L520:
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
.L521:
	.cfi_restore_state
	je	.L520
	test	eax, eax
	je	.L520
	add	eax, esi
	.p2align 3
	.p2align 4
	.p2align 3
.L524:
	movsb
	cmp	eax, esi
	jne	.L524
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
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
	je	.L536
	mov	edi, esi
	xor	esi, esi
.L536:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L537
	mov	eax, edx
	xor	edx, edx
.L537:
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
	je	.L540
	mov	esi, edi
	xor	edi, edi
.L540:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L541
	mov	edx, eax
	xor	eax, eax
.L541:
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
	mov	eax, DWORD PTR [esp+8]
	xchg	dl, dh
	xchg	al, ah
	rol	edx, 16
	xchg	dl, dh
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
	jmp	.L556
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L554:
	cmp	ecx, 32
	je	.L558
.L556:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L554
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L558:
	xor	eax, eax
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
	je	.L559
	mov	edx, eax
	and	edx, 1
	jne	.L559
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L561:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L561
.L559:
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
	ja	.L569
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L569:
	fstp	st(0)
.L566:
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
	ja	.L573
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L570
	.p2align 4,,10
	.p2align 3
.L573:
	fstp	st(0)
.L570:
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
	ja	.L577
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L574
	.p2align 4,,10
	.p2align 3
.L577:
	fstp	st(0)
.L574:
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
	jp	.L580
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L587
	jne	.L587
	jmp	.L580
	.p2align 4,,10
	.p2align 3
.L595:
	fstp	st(0)
.L580:
	ret
	.p2align 4,,10
	.p2align 3
.L587:
	fld	DWORD PTR .LC8
	test	edx, edx
	jns	.L582
	fstp	st(0)
	fld	DWORD PTR .LC9
.L582:
	test	dl, 1
	je	.L583
	.p2align 4
	.p2align 3
.L584:
	fmul	st(1), st
.L583:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L595
	fmul	st, st(0)
	test	dl, 1
	jne	.L584
.L594:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L584
	jmp	.L594
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
	jp	.L597
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L604
	jne	.L604
	jmp	.L597
	.p2align 4,,10
	.p2align 3
.L613:
	fstp	st(0)
.L597:
	ret
	.p2align 4,,10
	.p2align 3
.L604:
	test	edx, edx
	js	.L611
	fld	DWORD PTR .LC8
.L599:
	test	dl, 1
	je	.L600
	.p2align 4
	.p2align 3
.L601:
	fmul	st(1), st
.L600:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L613
	fmul	st, st(0)
	test	dl, 1
	jne	.L601
.L612:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L601
	jmp	.L612
	.p2align 4,,10
	.p2align 3
.L611:
	fld	DWORD PTR .LC9
	jmp	.L599
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
	jp	.L615
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L622
	jne	.L622
	jmp	.L615
	.p2align 4,,10
	.p2align 3
.L631:
	fstp	st(0)
.L615:
	ret
	.p2align 4,,10
	.p2align 3
.L622:
	test	edx, edx
	js	.L629
	fld	DWORD PTR .LC8
.L617:
	test	dl, 1
	je	.L618
	.p2align 4
	.p2align 3
.L619:
	fmul	st(1), st
.L618:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L631
	fmul	st, st(0)
	test	dl, 1
	jne	.L619
.L630:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L619
	jmp	.L630
	.p2align 4,,10
	.p2align 3
.L629:
	fld	DWORD PTR .LC9
	jmp	.L617
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
	mov	ebx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	ebx, ebx
	je	.L633
	add	ebx, eax
	mov	edx, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L634:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], cl
	cmp	ebx, eax
	jne	.L634
.L633:
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
	cmp	BYTE PTR [esi], 0
	mov	eax, esi
	je	.L641
	.p2align 3
	.p2align 4
	.p2align 3
.L642:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L642
.L641:
	test	edx, edx
	jne	.L643
	jmp	.L644
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L645:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L644
.L643:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L645
	mov	eax, esi
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
.L644:
	.cfi_restore_state
	mov	BYTE PTR [eax], 0
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
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	xor	eax, eax
	test	edx, edx
	je	.L662
.L655:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L657
	ret
	.p2align 4,,10
	.p2align 3
.L657:
	add	eax, 1
	cmp	edx, eax
	jne	.L655
	ret
	.p2align 4,,10
	.p2align 3
.L662:
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
	je	.L668
.L664:
	mov	eax, esi
	jmp	.L667
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L666:
	add	eax, 1
	cmp	dl, cl
	je	.L665
.L667:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L666
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L664
.L668:
	xor	ebx, ebx
.L665:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
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
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	.p2align 5
	.p2align 4
	.p2align 3
.L673:
	movsx	ecx, BYTE PTR [eax]
	mov	edx, ecx
	cmp	ebx, ecx
	jne	.L672
	mov	esi, eax
.L672:
	add	eax, 1
	test	dl, dl
	jne	.L673
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
	mov	esi, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	movzx	edi, BYTE PTR [esi]
	mov	ebx, edi
	test	bl, bl
	je	.L688
	mov	edx, esi
	.p2align 3
	.p2align 4
	.p2align 3
.L678:
	add	edx, 1
	cmp	BYTE PTR [edx], 0
	jne	.L678
	mov	ecx, eax
	sub	edx, esi
	je	.L676
	lea	ebp, [esi-1+edx]
	mov	ecx, edi
	jmp	.L685
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L700:
	add	eax, 1
	test	dl, dl
	je	.L699
.L685:
	movzx	edx, BYTE PTR [eax]
	cmp	dl, cl
	jne	.L700
	mov	DWORD PTR [esp+24], esi
	mov	edx, esi
	mov	edi, ecx
	mov	esi, eax
	mov	DWORD PTR [esp+20], eax
	mov	ebx, ecx
	jmp	.L680
	.p2align 4,,10
	.p2align 3
.L701:
	test	al, al
	setne	cl
	cmp	al, bl
	sete	al
	test	cl, al
	je	.L681
	movzx	ebx, BYTE PTR [esi+1]
	add	esi, 1
	add	edx, 1
	test	bl, bl
	je	.L681
.L680:
	movzx	eax, BYTE PTR [edx]
	cmp	edx, ebp
	jne	.L701
.L681:
	mov	eax, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ecx, edi
	cmp	BYTE PTR [edx], bl
	je	.L688
	add	eax, 1
	jmp	.L685
	.p2align 4,,10
	.p2align 3
.L699:
	xor	ecx, ecx
.L676:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, ecx
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
.L688:
	.cfi_restore_state
	mov	ecx, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	mov	eax, ecx
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
	fcom	st(2)
	fnstsw	ax
	sahf
	ja	.L712
	fxch	st(2)
	ftst
	fnstsw	ax
	sahf
	jbe	.L713
	fxch	st(2)
	fcompp
	fnstsw	ax
	sahf
	ja	.L705
	jmp	.L706
	.p2align 4,,10
	.p2align 3
.L713:
	fstp	st(1)
	fstp	st(1)
.L706:
	ret
	.p2align 4,,10
	.p2align 3
.L712:
	fstp	st(0)
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L706
.L705:
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
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	ecx, edx
	test	eax, eax
	je	.L714
	cmp	edi, DWORD PTR [esp+32]
	jb	.L722
	sub	edi, DWORD PTR [esp+32]
	add	edi, edx
	jc	.L722
	movzx	ebp, BYTE PTR [esi]
	jmp	.L719
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L716:
	cmp	edi, edx
	jb	.L722
.L719:
	movzx	eax, BYTE PTR [edx]
	mov	ebx, ebp
	mov	ecx, edx
	add	edx, 1
	cmp	al, bl
	jne	.L716
	cmp	DWORD PTR [esp+32], 1
	je	.L714
	mov	eax, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L717:
	movzx	ebx, BYTE PTR [esi+eax]
	cmp	BYTE PTR [ecx+eax], bl
	jne	.L716
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	jne	.L717
.L714:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, ecx
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
.L722:
	.cfi_restore_state
	xor	ecx, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	mov	eax, ecx
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
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
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	esi, esi
	je	.L728
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
.L728:
	add	esp, 4
	.cfi_def_cfa_offset 12
	lea	eax, [ebx+esi]
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
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L757
	fld1
	fxch	st(2)
	xor	ecx, ecx
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jb	.L758
	fstp	st(0)
.L736:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L743:
	fmul	DWORD PTR .LC9
	add	edx, 1
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L743
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L733
.L760:
	fchs
.L733:
	ret
	.p2align 4,,10
	.p2align 3
.L758:
	fld	DWORD PTR .LC9
	fcomp	st(2)
	fnstsw	ax
	sahf
	jbe	.L761
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L749
	jne	.L749
	jmp	.L739
	.p2align 4,,10
	.p2align 3
.L761:
	fstp	st(0)
	jmp	.L739
	.p2align 4,,10
	.p2align 3
.L762:
	fstp	st(0)
.L739:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L757:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomp	st(2)
	fnstsw	ax
	sahf
	jb	.L759
	fstp	st(1)
	mov	ecx, 1
	jmp	.L736
	.p2align 4,,10
	.p2align 3
.L759:
	fld	DWORD PTR .LC11
	fxch	st(2)
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jbe	.L762
	fstp	st(1)
	mov	ecx, 1
.L737:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L745:
	fadd	st, st(0)
	fld	DWORD PTR .LC9
	sub	edx, 1
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L745
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	jne	.L760
	ret
.L749:
	xor	ecx, ecx
	jmp	.L737
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
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], 0
	mov	esi, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], 0
	mov	ecx, eax
	or	ecx, edx
	je	.L763
	.p2align 6
	.p2align 4
	.p2align 3
.L765:
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
	mov	ecx, eax
	shr	edx
	or	ecx, edx
	jne	.L765
.L763:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
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
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	.L770
	jmp	.L771
	.p2align 4,,10
	.p2align 3
.L773:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L772
	test	edx, edx
	je	.L772
.L770:
	test	eax, eax
	jns	.L773
.L771:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L776:
	cmp	ecx, eax
	jb	.L775
	sub	ecx, eax
	or	ebx, edx
.L775:
	shr	eax
	shr	edx
	jne	.L776
.L774:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L769
	mov	ebx, ecx
.L769:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L772:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L771
	jmp	.L774
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
	mov	ebx, 7
	mov	ecx, edx
	sar	cl, 7
	mov	eax, ecx
	xor	eax, edx
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
	mov	ebp, 63
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
	sar	edx, 31
	mov	eax, edx
	mov	ebx, edx
	mov	edx, DWORD PTR [esp+24]
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+20]
	xor	edx, ebx
	xor	eax, ecx
	mov	edi, edx
	mov	edx, DWORD PTR [esp+24]
	mov	esi, eax
	mov	eax, DWORD PTR [esp+20]
	xor	edx, ebx
	xor	eax, ecx
	or	eax, edx
	je	.L796
	test	edi, edi
	je	.L798
	bsr	esi, edi
	xor	esi, 31
.L799:
	lea	ebp, [esi-1]
.L796:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, ebp
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
	xor	ebx, ebx
	mov	ecx, DWORD PTR [esp+12]
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
	add	ecx, ecx
	add	ebx, eax
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
	mov	edi, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, edi
	mov	ebp, edi
	shr	esi, 3
	and	ebp, -8
	cmp	edx, ebx
	jb	.L810
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jnb	.L825
.L810:
	test	esi, esi
	je	.L813
	mov	DWORD PTR [esp+4], ebp
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*8]
	mov	DWORD PTR [esp+40], edi
	.p2align 5
	.p2align 4
	.p2align 3
.L814:
	mov	edi, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+4]
	add	eax, 8
	add	ecx, 8
	mov	DWORD PTR [ecx-8], edi
	mov	DWORD PTR [ecx-4], ebp
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
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	.L815
.L809:
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
	.p2align 4,,10
	.p2align 3
.L825:
	.cfi_restore_state
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
	mov	edi, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, edi
	shr	ecx
	cmp	esi, ebx
	jb	.L827
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jnb	.L842
.L827:
	test	ecx, ecx
	je	.L830
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L831:
	movzx	ecx, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], cx
	cmp	eax, ebp
	jne	.L831
.L830:
	test	edi, 1
	je	.L826
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
.L826:
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
.L842:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	.L826
	.p2align 4
	.p2align 4
	.p2align 3
.L828:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	.L828
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
	mov	edi, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, edi
	mov	ebp, edi
	shr	esi, 2
	and	ebp, -4
	cmp	edx, ebx
	jb	.L844
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jnb	.L859
.L844:
	test	esi, esi
	je	.L847
	mov	DWORD PTR [esp+20], edx
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L848:
	mov	edx, DWORD PTR [eax]
	add	eax, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], edx
	cmp	eax, esi
	jne	.L848
	mov	edx, DWORD PTR [esp+20]
.L847:
	cmp	ebp, edi
	jnb	.L843
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
.L849:
	movzx	ecx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	.L849
.L843:
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
.L859:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	.L843
	.p2align 4
	.p2align 4
	.p2align 3
.L845:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	jnb	.L845
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
	xor	edx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
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
	xor	edx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
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
	mov	eax, DWORD PTR [esp+20]
	fild	QWORD PTR [esp+16]
	test	eax, eax
	jns	.L866
	fadd	DWORD PTR .LC13
.L866:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
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
	mov	eax, DWORD PTR [esp+20]
	fild	QWORD PTR [esp+16]
	test	eax, eax
	jns	.L869
	fadd	DWORD PTR .LC13
.L869:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
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
	movzx	ebx, WORD PTR [esp+8]
	xor	eax, eax
	mov	ecx, 15
	.p2align 5
	.p2align 4
	.p2align 3
.L874:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	.L872
	add	eax, 1
	cmp	eax, 16
	jne	.L874
.L872:
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
	movzx	edx, WORD PTR [esp+4]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L879:
	bt	edx, eax
	jc	.L877
	add	eax, 1
	cmp	eax, 16
	jne	.L879
.L877:
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
	fcom	DWORD PTR .LC14
	fnstsw	ax
	sahf
	jnb	.L889
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L889:
	.cfi_restore_state
	fnstcw	WORD PTR [esp+6]
	fsub	DWORD PTR .LC14
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	esp, 8
	.cfi_def_cfa_offset 4
	add	eax, 32768
	ret
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
	movzx	ebx, WORD PTR [esp+8]
	xor	eax, eax
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L891:
	mov	edx, ebx
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	eax, edx
	cmp	ecx, 16
	jne	.L891
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
	movzx	ebx, WORD PTR [esp+8]
	xor	edx, edx
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L895:
	mov	eax, ebx
	sar	eax, cl
	add	ecx, 1
	and	eax, 1
	add	edx, eax
	cmp	ecx, 16
	jne	.L895
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
	xor	ebx, ebx
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L898
	.p2align 5
	.p2align 4
	.p2align 3
.L900:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L900
.L898:
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
	xor	ebx, ebx
	mov	edx, DWORD PTR [esp+12]
	test	ecx, ecx
	je	.L904
	test	edx, edx
	je	.L904
	.p2align 5
	.p2align 4
	.p2align 3
.L906:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L906
.L904:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	.L913
	jmp	.L914
	.p2align 4,,10
	.p2align 3
.L916:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L915
	test	edx, edx
	je	.L915
.L913:
	test	eax, eax
	jns	.L916
.L914:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L919:
	cmp	ecx, eax
	jb	.L918
	sub	ecx, eax
	or	ebx, edx
.L918:
	shr	eax
	shr	edx
	jne	.L919
.L917:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L912
	mov	ebx, ecx
.L912:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L915:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L914
	jmp	.L917
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
	ja	.L937
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L934
	.p2align 4,,10
	.p2align 3
.L937:
	fstp	st(0)
	fstp	st(0)
.L934:
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
	ja	.L941
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L938
	.p2align 4,,10
	.p2align 3
.L941:
	fstp	st(0)
	fstp	st(0)
.L938:
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
	test	edx, edx
	js	.L955
	je	.L949
	xor	edi, edi
.L946:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L948:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, DWORD PTR [esp+20]
	sal	DWORD PTR [esp+20]
	add	esi, eax
	sar	edx
	setne	al
	cmp	bl, 31
	mov	ebp, eax
	setbe	al
	add	ebx, 1
	mov	ecx, ebp
	test	cl, al
	jne	.L948
	test	edi, edi
	je	.L944
	neg	esi
.L944:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
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
.L955:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L946
	.p2align 4,,10
	.p2align 3
.L949:
	xor	esi, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
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
	.p2align 4
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	eax, eax
	jns	.L957
	neg	eax
	mov	esi, 1
.L957:
	test	edx, edx
	jns	.L958
	neg	edx
	xor	esi, 1
.L958:
	mov	ebx, eax
	mov	ecx, 1
	cmp	edx, eax
	jb	.L959
	jmp	.L960
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L981:
	test	ecx, ecx
	je	.L978
.L959:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jb	.L981
	test	ecx, ecx
	je	.L978
.L960:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L965:
	cmp	ebx, edx
	jb	.L964
	sub	ebx, edx
	or	eax, ecx
.L964:
	shr	edx
	shr	ecx
	jne	.L965
.L961:
	test	esi, esi
	je	.L956
	neg	eax
.L956:
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
.L978:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L961
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
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	ebx, ebx
	jns	.L983
	neg	ebx
	mov	esi, 1
.L983:
	mov	eax, edx
	mov	ecx, 1
	sar	eax, 31
	xor	edx, eax
	sub	edx, eax
	mov	eax, ebx
	cmp	edx, ebx
	jb	.L984
	jmp	.L990
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1006:
	test	ecx, ecx
	je	.L1003
.L984:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, ebx
	jb	.L1006
	test	ecx, ecx
	je	.L1003
	.p2align 4
	.p2align 4
	.p2align 3
.L990:
	cmp	eax, edx
	jb	.L989
	sub	eax, edx
.L989:
	shr	edx
	shr	ecx
	jne	.L990
.L986:
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
.L1003:
	.cfi_restore_state
	mov	eax, ebx
	jmp	.L986
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
	mov	edx, 1
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	ecx, ebx
	mov	eax, esi
	cmp	si, bx
	jb	.L1008
	jmp	.L1009
	.p2align 4,,10
	.p2align 3
.L1011:
	add	eax, eax
	add	edx, edx
	cmp	ax, cx
	jnb	.L1010
	test	dx, dx
	je	.L1010
.L1008:
	test	ax, ax
	jns	.L1011
.L1009:
	xor	ebx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1014:
	cmp	cx, ax
	jb	.L1013
	sub	ecx, eax
	or	ebx, edx
.L1013:
	shr	ax
	shr	dx
	jne	.L1014
.L1012:
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	je	.L1007
	mov	ebx, ecx
.L1007:
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
.L1010:
	.cfi_restore_state
	xor	ebx, ebx
	test	dx, dx
	jne	.L1009
	jmp	.L1012
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
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	.L1030
	jmp	.L1031
	.p2align 4,,10
	.p2align 3
.L1033:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1032
	test	edx, edx
	je	.L1032
.L1030:
	test	eax, eax
	jns	.L1033
.L1031:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L1036:
	cmp	ecx, eax
	jb	.L1035
	sub	ecx, eax
	or	ebx, edx
.L1035:
	shr	eax
	shr	edx
	jne	.L1036
.L1034:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L1029
	mov	ebx, ecx
.L1029:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1032:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L1031
	jmp	.L1034
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
	mov	ebx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	test	bl, 32
	je	.L1052
	lea	ecx, [ebx-32]
	xor	eax, eax
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	sal	edx, cl
	ret
	.p2align 4,,10
	.p2align 3
.L1052:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1055
	mov	ecx, ebx
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	edx, cl
	mov	ecx, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	sal	esi, cl
	or	edx, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1055:
	.cfi_restore_state
	mov	edx, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
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
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	test	bl, 32
	je	.L1058
	mov	edx, esi
	lea	ecx, [ebx-32]
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	sar	edx, 31
	sar	eax, cl
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1058:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1061
	mov	ecx, ebx
	mov	edx, esi
	mov	eax, esi
	sar	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	sal	eax, cl
	mov	ecx, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	shr	edi, cl
	or	eax, edi
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1061:
	.cfi_restore_state
	mov	eax, edi
	mov	edx, esi
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
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	xchg	dl, dh
	xchg	al, ah
	rol	edx, 16
	xchg	dl, dh
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
	xor	eax, eax
	mov	ecx, 16
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
	cmp	edx, 65535
	setbe	al
	xor	ebx, ebx
	sal	eax, 4
	sub	ecx, eax
	shr	edx, cl
	mov	ecx, 8
	test	dh, -1
	sete	bl
	sal	ebx, 3
	sub	ecx, ebx
	add	ebx, eax
	xor	eax, eax
	shr	edx, cl
	mov	ecx, 4
	test	dl, -16
	sete	al
	lea	esi, [0+eax*4]
	mov	eax, 2
	sub	ecx, esi
	add	esi, ebx
	xor	ebx, ebx
	shr	edx, cl
	mov	ecx, eax
	test	dl, 12
	sete	bl
	add	ebx, ebx
	sub	ecx, ebx
	shr	edx, cl
	sub	eax, edx
	and	edx, 2
	cmp	edx, 1
	sbb	edx, edx
	add	ebx, esi
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
	.p2align 4
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xor	eax, eax
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	.L1067
	mov	eax, 2
	jg	.L1067
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1067
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1067:
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
	mov	eax, -1
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	.L1074
	mov	eax, 1
	jg	.L1074
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1074
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1074:
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
	xor	edx, edx
	mov	esi, 2
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
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
	add	ecx, edx
	and	eax, 3
	mov	ebx, eax
	shr	eax
	not	ebx
	sub	esi, eax
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	and	eax, 1
	neg	eax
	and	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	add	eax, ecx
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
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	test	bl, 32
	je	.L1083
	lea	ecx, [ebx-32]
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	xor	edx, edx
	shr	eax, cl
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1083:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1086
	mov	ecx, ebx
	mov	edx, esi
	mov	eax, esi
	shr	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	sal	eax, cl
	mov	ecx, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	shr	edi, cl
	or	eax, edi
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1086:
	.cfi_restore_state
	mov	eax, edi
	mov	edx, esi
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
	shr	ecx, 16
	movzx	edx, si
	mov	ebx, eax
	shr	esi, 16
	imul	ebx, edx
	imul	edx, ecx
	imul	eax, esi
	mov	edi, ebx
	imul	ecx, esi
	movzx	ebx, bx
	shr	edi, 16
	add	edx, edi
	movzx	edi, dx
	shr	edx, 16
	add	eax, edi
	add	edx, ecx
	mov	edi, eax
	shr	eax, 16
	sal	edi, 16
	add	edx, eax
	add	ebx, edi
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
	movzx	eax, WORD PTR [esp+28]
	movzx	ecx, dx
	mov	esi, edx
	mov	ebx, ecx
	shr	esi, 16
	imul	edx, DWORD PTR [esp+32]
	imul	ebx, eax
	imul	eax, esi
	mov	edi, ebx
	movzx	ebx, bx
	shr	edi, 16
	add	eax, edi
	mov	edi, DWORD PTR [esp+28]
	movzx	ebp, ax
	shr	eax, 16
	shr	edi, 16
	imul	ecx, edi
	imul	esi, edi
	add	ecx, ebp
	add	eax, esi
	mov	ebp, ecx
	shr	ecx, 16
	add	ecx, eax
	mov	eax, DWORD PTR [esp+28]
	imul	eax, DWORD PTR [esp+24]
	sal	ebp, 16
	add	ebp, ebx
	add	edx, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	add	edx, eax
	mov	eax, ebp
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
	mov	eax, 27030
	and	ecx, 15
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
	mov	eax, 27030
	and	ecx, 15
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
	and	eax, 858993459
	mov	ebx, edx
	and	edx, 858993459
	shrd	ecx, ebx, 2
	shr	ebx, 2
	and	ecx, 858993459
	and	ebx, 858993459
	add	ecx, eax
	adc	ebx, edx
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 4
	shr	edx, 4
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	and	edx, 252645135
	lea	eax, [eax+edx]
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
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
	and	eax, 858993459
	shr	edx, 2
	and	edx, 858993459
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
	test	cl, 1
	je	.L1099
	jmp	.L1101
	.p2align 4,,10
	.p2align 3
.L1106:
	fxch	st(1)
	jmp	.L1101
	.p2align 4,,10
	.p2align 3
.L1107:
	fxch	st(1)
.L1101:
	fmul	st, st(1)
.L1099:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1100
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1106
.L1105:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1107
	jmp	.L1105
	.p2align 4,,10
	.p2align 3
.L1100:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1098
	fdivr	DWORD PTR .LC12
.L1098:
	ret
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
	test	cl, 1
	je	.L1109
	jmp	.L1111
	.p2align 4,,10
	.p2align 3
.L1116:
	fxch	st(1)
	jmp	.L1111
	.p2align 4,,10
	.p2align 3
.L1117:
	fxch	st(1)
.L1111:
	fmul	st, st(1)
.L1109:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1110
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1116
.L1115:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1117
	jmp	.L1115
	.p2align 4,,10
	.p2align 3
.L1110:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1108
	fdivr	DWORD PTR .LC12
.L1108:
	ret
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
	xor	eax, eax
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+20]
	cmp	edx, ecx
	jb	.L1118
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1118
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1118
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1118:
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
	mov	eax, -1
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+20]
	cmp	edx, ecx
	jb	.L1125
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1125
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1125
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1125:
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
.LC11:
	.long	-1090519040
	.align 4
.LC12:
	.long	1065353216
	.align 4
.LC13:
	.long	1602224128
	.align 4
.LC14:
	.long	1191182336
	.globl	__divmoddi4
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
