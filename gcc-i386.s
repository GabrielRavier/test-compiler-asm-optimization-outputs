	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
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
	mov	ebx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	cmp	edx, ebx
	jnb	.L2
	test	eax, eax
	je	.L3
	.p2align 4
	.p2align 4
	.p2align 3
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
.L2:
	.cfi_restore_state
	cmp	ebx, edx
	je	.L3
	test	eax, eax
	je	.L3
	lea	ecx, [eax-1]
	lea	esi, [edx+1]
	cmp	ecx, 3
	jbe	.L5
	mov	ecx, edx
	lea	esi, [edx+1]
	or	ecx, ebx
	and	ecx, 3
	jne	.L5
	mov	edi, ebx
	sub	edi, esi
	cmp	edi, 2
	jbe	.L5
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -4
	lea	ebp, [edx+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L6:
	mov	esi, DWORD PTR [edx]
	add	edx, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], esi
	cmp	edx, ebp
	jne	.L6
	mov	ebp, eax
	lea	ecx, [ebx+edi]
	sub	ebp, edi
	cmp	eax, edi
	je	.L3
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	cmp	ebp, 1
	je	.L3
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ecx+1], al
	cmp	ebp, 2
	je	.L3
	movzx	edx, BYTE PTR [edx+2]
	mov	BYTE PTR [ecx+2], dl
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L5:
	add	eax, ebx
	mov	edi, ebx
	jmp	.L9
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L36:
	add	esi, 1
.L9:
	movzx	ecx, BYTE PTR [esi-1]
	add	edi, 1
	mov	BYTE PTR [edi-1], cl
	cmp	eax, edi
	jne	.L36
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
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	movzx	esi, BYTE PTR [esp+20]
	test	ecx, ecx
	jne	.L38
	jmp	.L40
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L41:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L40
.L38:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L41
	add	eax, 1
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
.L40:
	.cfi_restore_state
	xor	eax, eax
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
	mov	edx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+8]
	movzx	ebx, BYTE PTR [esp+12]
	test	edx, edx
	jne	.L50
	jmp	.L53
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L52:
	add	eax, 1
	sub	edx, 1
	je	.L53
.L50:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L52
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L53:
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
	jne	.L59
	jmp	.L58
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L61:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L63
.L59:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L61
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L58:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L63:
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
	je	.L71
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
.L71:
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
	jmp	.L77
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L79:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L76
.L77:
	cmp	eax, ebx
	jne	.L79
	xor	edx, edx
.L76:
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
	je	.L84
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	eax
	.cfi_def_cfa_offset 24
	movzx	edx, BYTE PTR [esp+28]
	push	edx
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memset
	add	esp, 16
	.cfi_def_cfa_offset 16
.L84:
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
	je	.L87
	.p2align 4
	.p2align 4
	.p2align 3
.L88:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L88
.L87:
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
	jne	.L94
	jmp	.L93
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L96:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L93
.L94:
	cmp	eax, ecx
	jne	.L96
.L93:
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
	jmp	.L103
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L107:
	add	eax, 1
	test	cl, cl
	je	.L106
.L103:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L107
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L106:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [edx]
	movzx	ebx, BYTE PTR [ecx]
	cmp	al, bl
	je	.L109
	jmp	.L110
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L111:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	.L110
.L109:
	test	al, al
	jne	.L111
	xor	eax, eax
.L110:
	sub	eax, ebx
	pop	ebx
	.cfi_restore 3
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
	je	.L120
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L119:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L119
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L120:
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
	je	.L122
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L126
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L143:
	cmp	edx, ebp
	je	.L125
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L142
	mov	edx, esi
.L126:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	.L143
.L125:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
.L122:
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
.L142:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	.L125
.L141:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	.L125
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
	jle	.L144
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L146:
	movzx	ecx, BYTE PTR [eax+1]
	add	eax, 2
	add	edx, 2
	mov	BYTE PTR [edx-2], cl
	movzx	ecx, BYTE PTR [eax-2]
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	.L146
.L144:
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
	setbe	dl
	movzx	eax, dl
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
	sete	cl
	or	eax, ecx
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
	sete	cl
	or	eax, ecx
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
	setbe	dl
	movzx	eax, dl
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
	setbe	dl
	movzx	eax, dl
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
	setbe	dl
	movzx	eax, dl
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
	setbe	dl
	movzx	eax, dl
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
	setbe	cl
	cmp	edx, 32
	sete	dl
	or	ecx, edx
	movzx	eax, cl
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
	setbe	dl
	movzx	eax, dl
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
	jbe	.L161
	cmp	eax, 31
	jbe	.L161
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L159
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	mov	edx, 1
.L159:
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
	setbe	dl
	movzx	eax, dl
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
	jbe	.L170
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L167
	cmp	eax, 8231
	jbe	.L167
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L164
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L164
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L167:
	mov	edx, 1
.L164:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L170:
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
	jbe	.L171
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L171:
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
	jp	.L183
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L179
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L182
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L182:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L183:
	fstp	st(1)
.L175:
	ret
	.p2align 4,,10
	.p2align 3
.L179:
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
	jp	.L192
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L188
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L191
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L192:
	fstp	st(1)
.L184:
	ret
	.p2align 4,,10
	.p2align 3
.L188:
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
	jp	.L204
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L205
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
	jne	.L203
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L206
	fstp	st(1)
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L205:
	fstp	st(0)
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L206:
	fstp	st(0)
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L207:
	fstp	st(0)
.L199:
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L204:
	fstp	st(0)
.L193:
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	test	edx, edx
	je	.L207
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
	jp	.L219
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L220
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
	jne	.L218
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L221
	fstp	st(1)
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L220:
	fstp	st(0)
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L221:
	fstp	st(0)
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L222:
	fstp	st(0)
.L214:
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L219:
	fstp	st(0)
.L208:
	ret
	.p2align 4,,10
	.p2align 3
.L218:
	test	edx, edx
	je	.L222
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
	jp	.L234
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L235
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
	jne	.L233
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L236
	fstp	st(1)
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L235:
	fstp	st(0)
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L236:
	fstp	st(0)
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L237:
	fstp	st(0)
.L229:
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L234:
	fstp	st(0)
.L223:
	ret
	.p2align 4,,10
	.p2align 3
.L233:
	test	edx, edx
	je	.L237
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
	jp	.L249
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L250
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
	jne	.L248
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L251
	fstp	st(0)
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L249:
	fstp	st(0)
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L251:
	fstp	st(1)
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L252:
	fstp	st(1)
.L243:
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L250:
	fstp	st(0)
.L238:
	ret
	.p2align 4,,10
	.p2align 3
.L248:
	test	edx, edx
	je	.L252
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
	jp	.L264
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L265
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
	jne	.L263
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L266
	fstp	st(0)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L264:
	fstp	st(0)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L266:
	fstp	st(1)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L267:
	fstp	st(1)
.L258:
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L265:
	fstp	st(0)
.L253:
	ret
	.p2align 4,,10
	.p2align 3
.L263:
	test	edx, edx
	je	.L267
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
	jp	.L279
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L280
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
	jne	.L278
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L281
	fstp	st(0)
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L279:
	fstp	st(0)
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L281:
	fstp	st(1)
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L282:
	fstp	st(1)
.L273:
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L280:
	fstp	st(0)
.L268:
	ret
	.p2align 4,,10
	.p2align 3
.L278:
	test	edx, edx
	je	.L282
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
	je	.L284
	.p2align 5
	.p2align 4
	.p2align 3
.L285:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L285
.L284:
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
	je	.L296
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L290
	mov	DWORD PTR [edx+4], eax
.L290:
	ret
	.p2align 4,,10
	.p2align 3
.L296:
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
	je	.L298
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L298:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L297
	mov	DWORD PTR [eax], edx
.L297:
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
	je	.L307
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, DWORD PTR [esp+52]
	xor	ebx, ebx
	jmp	.L309
	.p2align 4,,10
	.p2align 3
.L324:
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	je	.L323
.L309:
	sub	esp, 8
	.cfi_def_cfa_offset 56
	mov	esi, ebp
	push	ebp
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+60]
	.cfi_def_cfa_offset 64
	call	[DWORD PTR [esp+80]]
	add	esp, 16
	.cfi_def_cfa_offset 48
	test	eax, eax
	jne	.L324
.L306:
	add	esp, 28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	eax, esi
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
.L323:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L307:
	mov	edx, DWORD PTR [esp+56]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	DWORD PTR [edx], eax
	mov	esi, ecx
	test	edi, edi
	je	.L306
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
	mov	eax, esi
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
	je	.L326
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, ebp
	xor	edi, edi
	mov	ebp, ebx
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L338:
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	je	.L326
.L328:
	sub	esp, 8
	.cfi_def_cfa_offset 40
	mov	ebx, ebp
	push	ebp
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	jne	.L338
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
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
	.p2align 4,,10
	.p2align 3
.L326:
	.cfi_restore_state
	add	esp, 12
	.cfi_def_cfa_offset 20
	xor	ebx, ebx
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
	movsx	ecx, BYTE PTR [edx]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	.L363
	mov	eax, ecx
	jmp	.L367
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L363:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	esi, [ecx-9]
	mov	eax, ecx
	cmp	esi, 4
	jbe	.L363
.L367:
	cmp	al, 32
	je	.L363
	cmp	al, 43
	je	.L344
	cmp	al, 45
	jne	.L368
	movsx	ebp, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	mov	eax, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L353
	mov	ebp, 1
.L347:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L350:
	lea	ebx, [eax-48]
	add	edi, 1
	lea	edx, [esi+esi*4]
	movsx	ecx, bl
	movsx	ebx, BYTE PTR [edi]
	add	edx, edx
	mov	esi, edx
	mov	eax, ebx
	sub	ebx, 48
	sub	esi, ecx
	cmp	ebx, 9
	jbe	.L350
	test	ebp, ebp
	jne	.L340
	mov	esi, ecx
	sub	esi, edx
.L340:
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
.L368:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L347
.L353:
	xor	esi, esi
.L369:
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
.L344:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	xor	ebp, ebp
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L347
	xor	esi, esi
	jmp	.L369
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB156:
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
	movsx	ecx, BYTE PTR [edx]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	.L391
	mov	eax, ecx
	jmp	.L394
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L391:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	esi, [ecx-9]
	mov	eax, ecx
	cmp	esi, 4
	jbe	.L391
.L394:
	cmp	al, 32
	je	.L391
	cmp	al, 43
	je	.L374
	cmp	al, 45
	je	.L395
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L382
.L376:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L379:
	lea	ebx, [eax-48]
	add	edi, 1
	lea	edx, [esi+esi*4]
	movsx	ecx, bl
	movsx	ebx, BYTE PTR [edi]
	add	edx, edx
	mov	esi, edx
	mov	eax, ebx
	sub	ebx, 48
	sub	esi, ecx
	cmp	ebx, 9
	jbe	.L379
	test	ebp, ebp
	jne	.L370
	mov	esi, ecx
	sub	esi, edx
.L370:
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
.L395:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	ebp, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L376
.L382:
	xor	esi, esi
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
.L374:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	mov	eax, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L382
	xor	ebp, ebp
	jmp	.L376
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
	sub	esp, 20
	.cfi_def_cfa_offset 40
	mov	ecx, DWORD PTR [esp+40]
	movsx	eax, BYTE PTR [ecx]
	lea	ebx, [eax-9]
	cmp	ebx, 4
	jbe	.L419
	mov	edx, eax
	jmp	.L424
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L419:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	esi, [eax-9]
	mov	edx, eax
	cmp	esi, 4
	jbe	.L419
.L424:
	cmp	dl, 32
	je	.L419
	cmp	dl, 43
	je	.L400
	cmp	dl, 45
	jne	.L425
	movsx	ebp, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L409
	mov	esi, 1
.L403:
	mov	DWORD PTR [esp+12], esi
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L406:
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 2
	sal	esi, 2
	add	ecx, esi
	adc	ebx, edi
	add	ecx, ecx
	adc	ebx, ebx
	sub	edx, 48
	movsx	ebp, BYTE PTR [eax+1]
	add	eax, 1
	movsx	esi, dl
	mov	DWORD PTR [esp], ecx
	mov	edi, esi
	mov	DWORD PTR [esp+4], ebx
	mov	edx, ebp
	sar	edi, 31
	sub	ecx, esi
	sbb	ebx, edi
	sub	ebp, 48
	cmp	ebp, 9
	jbe	.L406
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	jne	.L396
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
.L396:
	add	esp, 20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	edx, ebx
	mov	eax, ecx
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
.L425:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	esi, esi
	mov	eax, ecx
	cmp	ebx, 9
	jbe	.L403
.L409:
	add	esp, 20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xor	ebx, ebx
	xor	ecx, ecx
	mov	edx, ebx
	mov	eax, ecx
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
.L400:
	.cfi_restore_state
	movsx	edi, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	xor	esi, esi
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L403
	jmp	.L409
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
	mov	edi, DWORD PTR [esp+44]
	.p2align 4
	.p2align 3
.L441:
	test	ebx, ebx
	je	.L427
.L442:
	mov	esi, ebx
	sub	esp, 8
	.cfi_def_cfa_offset 40
	shr	esi
	mov	ebp, esi
	imul	ebp, edi
	add	ebp, DWORD PTR [esp+44]
	push	ebp
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	js	.L431
	je	.L426
	sub	ebx, 1
	lea	eax, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L442
.L427:
	xor	ebp, ebp
.L426:
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
.L431:
	.cfi_restore_state
	mov	ebx, esi
	jmp	.L441
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
	mov	ebp, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+44]
	test	ebp, ebp
	je	.L448
	.p2align 4
	.p2align 3
.L456:
	mov	esi, ebp
	sub	esp, 4
	.cfi_def_cfa_offset 36
	sar	esi
	mov	ebx, esi
	imul	ebx, edi
	add	ebx, DWORD PTR [esp+40]
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
	je	.L443
	jle	.L446
	lea	ebp, [ebp-1]
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L456
.L448:
	xor	ebx, ebx
.L443:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
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
	.p2align 4,,10
	.p2align 3
.L446:
	.cfi_restore_state
	test	esi, esi
	je	.L448
	mov	ebp, esi
	jmp	.L456
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
	mov	eax, ebx
	mov	DWORD PTR [ebx+4], edx
	mov	ecx, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], ecx
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
	mov	eax, ebx
	mov	DWORD PTR [ebx+4], edx
	mov	ecx, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], ecx
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
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	jne	.L472
	jmp	.L475
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L474:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L475
.L472:
	cmp	ecx, edx
	jne	.L474
	ret
	.p2align 4,,10
	.p2align 3
.L475:
	xor	eax, eax
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [edx]
	mov	ebx, DWORD PTR [ecx]
	cmp	eax, ebx
	je	.L480
	jmp	.L481
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L482:
	mov	eax, DWORD PTR [edx+4]
	mov	ebx, DWORD PTR [ecx+4]
	add	edx, 4
	add	ecx, 4
	cmp	eax, ebx
	jne	.L481
.L480:
	test	eax, eax
	jne	.L482
.L481:
	mov	ecx, -1
	cmp	eax, ebx
	jl	.L479
	setg	dl
	movzx	ecx, dl
.L479:
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
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
.L489:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L489
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
	je	.L495
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L494:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L494
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L495:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	test	ecx, ecx
	jne	.L498
	jmp	.L504
	.p2align 4,,10
	.p2align 3
.L512:
	test	ebx, ebx
	je	.L502
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L504
.L498:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L512
.L502:
	mov	ebx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ebx
	jl	.L513
	setg	al
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L513:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L504:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
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
	jne	.L515
	jmp	.L518
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L517:
	add	eax, 4
	sub	edx, 1
	je	.L518
.L515:
	cmp	DWORD PTR [eax], ecx
	jne	.L517
	ret
	.p2align 4,,10
	.p2align 3
.L518:
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
	jne	.L523
	jmp	.L522
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L525:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L528
.L523:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L525
	cmp	ebx, DWORD PTR [edx]
	jl	.L535
	setg	al
	movzx	eax, al
.L522:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L535:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L528:
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
	je	.L537
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
.L537:
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
	je	.L550
	mov	ebx, edx
	lea	edi, [0+ecx*4]
	lea	eax, [ecx-1]
	sub	ebx, esi
	cmp	ebx, edi
	jnb	.L558
	test	ecx, ecx
	je	.L550
	.p2align 4
	.p2align 4
	.p2align 3
.L547:
	mov	ecx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [edx+eax*4], ecx
	sub	eax, 1
	jnb	.L547
.L550:
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
.L558:
	.cfi_restore_state
	mov	edi, edx
	test	ecx, ecx
	je	.L550
	.p2align 3
	.p2align 4
	.p2align 3
.L545:
	movsd
	sub	eax, 1
	jnb	.L545
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
	je	.L560
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L561:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	sub	eax, 1
	jnb	.L561
.L560:
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
	mov	eax, DWORD PTR [esp+28]
	cmp	edx, ebx
	jnb	.L568
	test	eax, eax
	je	.L567
	.p2align 4
	.p2align 4
	.p2align 3
.L570:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	.L570
.L567:
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
.L568:
	.cfi_restore_state
	je	.L567
	test	eax, eax
	je	.L567
	lea	ecx, [eax-1]
	cmp	ecx, 3
	jbe	.L601
	mov	ecx, ebx
	lea	edi, [edx+1]
	or	ecx, edx
	and	ecx, 3
	jne	.L571
	mov	esi, ebx
	sub	esi, edi
	cmp	esi, 2
	jbe	.L571
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -4
	lea	esi, [edx+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L572:
	mov	ebp, DWORD PTR [edx]
	add	edx, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], ebp
	cmp	edx, esi
	jne	.L572
	mov	ecx, eax
	add	ebx, edi
	sub	ecx, edi
	cmp	eax, edi
	je	.L567
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ebx], al
	cmp	ecx, 1
	je	.L567
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ebx+1], al
	cmp	ecx, 2
	je	.L567
	movzx	edx, BYTE PTR [edx+2]
	mov	BYTE PTR [ebx+2], dl
	jmp	.L567
.L601:
	lea	edi, [edx+1]
.L571:
	add	edx, eax
	jmp	.L575
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L602:
	add	edi, 1
.L575:
	movzx	ecx, BYTE PTR [edi-1]
	add	ebx, 1
	mov	BYTE PTR [ebx-1], cl
	cmp	edx, edi
	jne	.L602
	jmp	.L567
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
	mov	esi, DWORD PTR [esp+12]
	mov	edi, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	eax, esi
	mov	edx, edi
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L605
	mov	edx, eax
	xor	eax, eax
.L605:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L606
	mov	esi, edi
	xor	edi, edi
.L606:
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
	mov	esi, DWORD PTR [esp+12]
	mov	edi, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	eax, esi
	mov	edx, edi
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L609
	mov	eax, edx
	xor	edx, edx
.L609:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L610
	mov	edi, esi
	xor	esi, esi
.L610:
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
	jmp	.L625
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L623:
	cmp	ecx, 32
	je	.L627
.L625:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L623
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L627:
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
	je	.L628
	mov	edx, eax
	and	edx, 1
	jne	.L628
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L630:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L630
.L628:
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
	ja	.L638
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	dl
	movzx	eax, dl
	jmp	.L635
	.p2align 4,,10
	.p2align 3
.L638:
	fstp	st(0)
.L635:
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
	ja	.L642
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	dl
	movzx	eax, dl
	jmp	.L639
	.p2align 4,,10
	.p2align 3
.L642:
	fstp	st(0)
.L639:
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
	ja	.L646
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	dl
	movzx	eax, dl
	jmp	.L643
	.p2align 4,,10
	.p2align 3
.L646:
	fstp	st(0)
.L643:
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
	jp	.L649
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L656
	jne	.L656
	jmp	.L649
	.p2align 4,,10
	.p2align 3
.L664:
	fstp	st(0)
.L649:
	ret
	.p2align 4,,10
	.p2align 3
.L656:
	fld	DWORD PTR .LC8
	test	edx, edx
	jns	.L651
	fstp	st(0)
	fld	DWORD PTR .LC9
.L651:
	test	dl, 1
	je	.L652
	.p2align 4
	.p2align 3
.L653:
	fmul	st(1), st
.L652:
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	je	.L664
	fmul	st, st(0)
	test	dl, 1
	jne	.L653
.L663:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L653
	jmp	.L663
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
	jp	.L666
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L673
	jne	.L673
	jmp	.L666
	.p2align 4,,10
	.p2align 3
.L682:
	fstp	st(0)
.L666:
	ret
	.p2align 4,,10
	.p2align 3
.L673:
	test	edx, edx
	js	.L680
	fld	DWORD PTR .LC8
.L668:
	test	dl, 1
	je	.L669
	.p2align 4
	.p2align 3
.L670:
	fmul	st(1), st
.L669:
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	je	.L682
	fmul	st, st(0)
	test	dl, 1
	jne	.L670
.L681:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L670
	jmp	.L681
	.p2align 4,,10
	.p2align 3
.L680:
	fld	DWORD PTR .LC9
	jmp	.L668
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
	jp	.L684
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L691
	jne	.L691
	jmp	.L684
	.p2align 4,,10
	.p2align 3
.L700:
	fstp	st(0)
.L684:
	ret
	.p2align 4,,10
	.p2align 3
.L691:
	test	edx, edx
	js	.L698
	fld	DWORD PTR .LC8
.L686:
	test	dl, 1
	je	.L687
	.p2align 4
	.p2align 3
.L688:
	fmul	st(1), st
.L687:
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	je	.L700
	fmul	st, st(0)
	test	dl, 1
	jne	.L688
.L699:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L688
	jmp	.L699
	.p2align 4,,10
	.p2align 3
.L698:
	fld	DWORD PTR .LC9
	jmp	.L686
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
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
	mov	ecx, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	test	ecx, ecx
	je	.L702
	lea	edx, [ecx-1]
	cmp	edx, 2
	jbe	.L703
	mov	edx, ebx
	or	edx, eax
	and	edx, 3
	jne	.L703
	mov	edi, ecx
	mov	esi, ebx
	and	edi, -4
	lea	edx, [eax+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L704:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	xor	DWORD PTR [esi], ebp
	add	esi, 4
	cmp	edx, eax
	jne	.L704
	mov	esi, ecx
	lea	eax, [ebx+edi]
	sub	esi, edi
	cmp	ecx, edi
	je	.L702
	movzx	ecx, BYTE PTR [edx]
	xor	BYTE PTR [eax], cl
	cmp	esi, 1
	je	.L702
	movzx	ecx, BYTE PTR [edx+1]
	xor	BYTE PTR [eax+1], cl
	cmp	esi, 2
	je	.L702
	movzx	edx, BYTE PTR [edx+2]
	xor	BYTE PTR [eax+2], dl
.L702:
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
.L703:
	.cfi_restore_state
	add	ecx, eax
	mov	edi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L706:
	add	eax, 1
	add	edi, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	BYTE PTR [edi-1], dl
	cmp	ecx, eax
	jne	.L706
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
	je	.L721
	.p2align 3
	.p2align 4
	.p2align 3
.L722:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L722
.L721:
	test	edx, edx
	jne	.L723
	jmp	.L724
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L725:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L724
.L723:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L725
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
.L724:
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
	je	.L735
.L736:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L738
.L735:
	ret
	.p2align 4,,10
	.p2align 3
.L738:
	add	eax, 1
	cmp	edx, eax
	jne	.L736
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
	je	.L749
.L745:
	mov	eax, esi
	jmp	.L748
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L747:
	add	eax, 1
	cmp	dl, cl
	je	.L746
.L748:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L747
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L745
.L749:
	xor	ebx, ebx
.L746:
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
	xor	ebx, ebx
	mov	edi, DWORD PTR [esp+20]
	.p2align 5
	.p2align 4
	.p2align 3
.L757:
	movsx	esi, BYTE PTR [eax]
	mov	ecx, ebx
	mov	edx, esi
	cmp	esi, edi
	jne	.L756
	mov	ecx, eax
.L756:
	mov	ebx, ecx
	add	eax, 1
	test	dl, dl
	jne	.L757
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, ecx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
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
	mov	ebp, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+20]
	movzx	ebx, BYTE PTR [ebp+0]
	test	bl, bl
	je	.L773
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
.L763:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L763
	mov	esi, edx
	sub	eax, ebp
	je	.L761
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	.L783
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L786:
	add	edx, 1
	test	cl, cl
	je	.L785
.L783:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	.L786
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	.L765
	.p2align 4,,10
	.p2align 3
.L787:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L766
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L766
.L765:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	.L787
.L766:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	.L773
	add	edx, 1
	jmp	.L783
	.p2align 4,,10
	.p2align 3
.L785:
	xor	esi, esi
.L761:
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
.L773:
	.cfi_restore_state
	mov	esi, edx
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
	ja	.L798
	fxch	st(2)
	ftst
	fnstsw	ax
	sahf
	jbe	.L799
	fxch	st(2)
	fcompp
	fnstsw	ax
	sahf
	ja	.L791
	jmp	.L792
	.p2align 4,,10
	.p2align 3
.L799:
	fstp	st(1)
	fstp	st(1)
.L792:
	ret
	.p2align 4,,10
	.p2align 3
.L798:
	fstp	st(0)
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L792
.L791:
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
	mov	eax, DWORD PTR [esp+32]
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	test	eax, eax
	je	.L800
	cmp	esi, DWORD PTR [esp+32]
	jb	.L811
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L811
	movzx	ebp, BYTE PTR [edi]
	jmp	.L806
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L810:
	mov	edx, ebx
.L802:
	cmp	esi, edx
	jb	.L811
.L806:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	.L810
	cmp	DWORD PTR [esp+32], 1
	je	.L800
.L805:
	mov	eax, 1
	jmp	.L803
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L804:
	add	eax, 1
	cmp	eax, DWORD PTR [esp+32]
	je	.L800
.L803:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L804
	cmp	esi, ebx
	jb	.L811
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L802
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	.L805
	.p2align 4,,10
	.p2align 3
.L811:
	xor	edx, edx
.L800:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, edx
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
	je	.L822
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
.L822:
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
	ja	.L851
	fld1
	fxch	st(2)
	xor	ecx, ecx
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jb	.L852
	fstp	st(0)
.L830:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L837:
	fld	DWORD PTR .LC9
	add	edx, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L837
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L827
.L854:
	fchs
.L827:
	ret
	.p2align 4,,10
	.p2align 3
.L852:
	fld	DWORD PTR .LC9
	fcomp	st(2)
	fnstsw	ax
	sahf
	jbe	.L855
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L843
	jne	.L843
	jmp	.L833
	.p2align 4,,10
	.p2align 3
.L855:
	fstp	st(0)
	jmp	.L833
	.p2align 4,,10
	.p2align 3
.L856:
	fstp	st(0)
.L833:
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [edx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L851:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomp	st(2)
	fnstsw	ax
	sahf
	jb	.L853
	fstp	st(1)
	mov	ecx, 1
	jmp	.L830
	.p2align 4,,10
	.p2align 3
.L853:
	fld	DWORD PTR .LC11
	fxch	st(2)
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jbe	.L856
	fstp	st(1)
	mov	ecx, 1
.L831:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L839:
	fadd	st, st(0)
	fld	DWORD PTR .LC9
	sub	edx, 1
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L839
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	jne	.L854
	ret
.L843:
	xor	ecx, ecx
	jmp	.L831
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
	je	.L857
	.p2align 6
	.p2align 4
	.p2align 3
.L859:
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
	jne	.L859
.L857:
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
	cmp	edx, ecx
	jnb	.L892
	mov	ebx, 1
	jmp	.L864
	.p2align 4,,10
	.p2align 3
.L867:
	add	edx, edx
	add	ebx, ebx
	cmp	edx, ecx
	jnb	.L866
	test	ebx, ebx
	je	.L866
.L864:
	test	edx, edx
	jns	.L867
.L868:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L872:
	mov	edi, ecx
	sub	edi, edx
	cmp	ecx, edx
	setnb	al
	test	al, al
	je	.L871
	mov	ecx, edi
.L871:
	sal	eax, 31
	shr	edx
	sar	eax, 31
	and	eax, ebx
	or	esi, eax
	shr	ebx
	jne	.L872
.L869:
	mov	edx, DWORD PTR [esp+24]
	test	edx, edx
	je	.L863
	mov	esi, ecx
.L863:
	mov	eax, esi
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
.L866:
	.cfi_restore_state
	xor	esi, esi
	test	ebx, ebx
	jne	.L868
	jmp	.L869
.L892:
	mov	ebx, ecx
	sub	ebx, edx
	cmp	ecx, edx
	setnb	al
	test	al, al
	jne	.L894
.L875:
	movzx	esi, al
	jmp	.L869
.L894:
	mov	ecx, ebx
	jmp	.L875
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
	je	.L895
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
.L895:
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
	mov	edx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+20]
	mov	edi, DWORD PTR [esp+24]
	sar	edx, 31
	mov	eax, edx
	mov	ebx, edx
	xor	edi, edx
	mov	edx, DWORD PTR [esp+24]
	mov	ecx, eax
	xor	esi, eax
	mov	eax, DWORD PTR [esp+20]
	xor	edx, ebx
	xor	eax, ecx
	mov	ecx, 63
	or	eax, edx
	je	.L900
	test	edi, edi
	je	.L902
	bsr	ebp, edi
	xor	ebp, 31
.L903:
	lea	ecx, [ebp-1]
.L900:
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
.L902:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	.L903
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
	je	.L907
	.p2align 5
	.p2align 4
	.p2align 3
.L909:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L909
.L907:
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
	mov	ebp, DWORD PTR [esp+40]
	mov	esi, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	mov	edi, ebp
	mov	ebx, ebp
	shr	edi, 3
	and	ebx, -8
	cmp	esi, ecx
	jb	.L917
	lea	eax, [ecx+ebp]
	cmp	eax, esi
	jnb	.L941
.L917:
	test	edi, edi
	je	.L916
	mov	DWORD PTR [esp], ebx
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*8]
	mov	DWORD PTR [esp+36], ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L920:
	mov	ecx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], ecx
	mov	DWORD PTR [edx-4], ebx
	cmp	eax, edi
	jne	.L920
	mov	ebx, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+36]
.L916:
	cmp	ebx, ebp
	jnb	.L913
	mov	eax, ebp
	lea	edi, [ecx+ebx]
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp], edi
	mov	DWORD PTR [esp+4], eax
	sub	eax, 1
	cmp	eax, 3
	jbe	.L921
	lea	edi, [ecx+1+ebx]
	mov	eax, edx
	sub	eax, edi
	cmp	eax, 2
	jbe	.L921
	mov	edi, DWORD PTR [esp]
	or	edi, edx
	and	edi, 3
	jne	.L921
	mov	edi, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp]
	mov	DWORD PTR [esp+36], ecx
	and	edi, -4
	mov	DWORD PTR [esp], edi
	add	edi, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L922:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	.L922
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+36]
	add	ebx, eax
	cmp	DWORD PTR [esp+4], eax
	je	.L913
	movzx	ecx, BYTE PTR [edx+ebx]
	lea	edi, [ebx+1]
	mov	BYTE PTR [esi+ebx], cl
	cmp	edi, ebp
	jnb	.L913
	movzx	eax, BYTE PTR [edx+1+ebx]
	lea	ecx, [ebx+2]
	mov	BYTE PTR [esi+1+ebx], al
	cmp	ecx, ebp
	jnb	.L913
	movzx	edx, BYTE PTR [edx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], dl
.L913:
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
.L941:
	.cfi_restore_state
	lea	ebx, [ebp-1]
	test	ebp, ebp
	je	.L913
	.p2align 4
	.p2align 4
	.p2align 3
.L918:
	movzx	edx, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], dl
	sub	ebx, 1
	jnb	.L918
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
.L921:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp]
	add	ecx, ebp
	.p2align 4
	.p2align 4
	.p2align 3
.L924:
	movzx	ebx, BYTE PTR [esi]
	add	esi, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	esi, ecx
	jne	.L924
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
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	edi, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	mov	ebp, edi
	shr	ebp
	cmp	ebx, ecx
	jb	.L946
	lea	eax, [ecx+edi]
	cmp	eax, ebx
	jnb	.L970
.L946:
	test	ebp, ebp
	je	.L945
	lea	eax, [ebp-1]
	cmp	eax, 3
	jbe	.L949
	mov	edx, ecx
	or	edx, ebx
	test	dl, 3
	jne	.L949
	lea	esi, [ecx+2]
	cmp	ebx, esi
	je	.L949
	mov	eax, edi
	mov	esi, edi
	mov	DWORD PTR [esp+28], ecx
	mov	edx, ebx
	shr	eax, 2
	and	esi, -4
	mov	DWORD PTR [esp], eax
	add	esi, ecx
	mov	eax, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L950:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, esi
	jne	.L950
	mov	edx, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+28]
	lea	eax, [edx+edx]
	cmp	ebp, eax
	je	.L945
	movzx	ebp, WORD PTR [ecx+edx*4]
	mov	WORD PTR [ebx+edx*4], bp
.L945:
	test	edi, 1
	je	.L942
.L971:
	movzx	ecx, BYTE PTR [ecx-1+edi]
	mov	BYTE PTR [ebx-1+edi], cl
.L942:
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
.L970:
	.cfi_restore_state
	lea	esi, [edi-1]
	test	edi, edi
	je	.L942
	.p2align 4
	.p2align 4
	.p2align 3
.L947:
	movzx	edx, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], dl
	sub	esi, 1
	jnb	.L947
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
.L949:
	.cfi_restore_state
	mov	eax, ecx
	mov	edx, ebx
	lea	ebp, [ecx+ebp*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L952:
	movzx	esi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], si
	cmp	ebp, eax
	jne	.L952
	test	edi, 1
	je	.L942
	jmp	.L971
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
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	edi, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+32]
	mov	esi, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	shr	edi, 2
	and	ebx, -4
	cmp	esi, ecx
	jb	.L976
	mov	eax, DWORD PTR [esp+32]
	add	eax, ecx
	cmp	eax, esi
	jnb	.L1006
.L976:
	test	edi, edi
	je	.L1007
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L979:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ebp
	cmp	eax, edi
	jne	.L979
	cmp	ebx, DWORD PTR [esp+32]
	jnb	.L972
	mov	eax, DWORD PTR [esp+32]
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp], eax
	sub	eax, 1
	cmp	eax, 3
	lea	eax, [ecx+ebx]
	jbe	.L981
	lea	ebp, [ecx+1+ebx]
	mov	edi, edx
	sub	edi, ebp
	cmp	edi, 2
	jbe	.L981
	mov	ebp, eax
	or	ebp, edx
	and	ebp, 3
	jne	.L981
	mov	ebp, DWORD PTR [esp]
	mov	DWORD PTR [esp+28], ecx
	and	ebp, -4
	lea	edi, [eax+ebp]
	.p2align 4
	.p2align 4
	.p2align 3
.L982:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	.L982
	mov	edx, DWORD PTR [esp+28]
	add	ebx, ebp
	cmp	DWORD PTR [esp], ebp
	je	.L972
	movzx	eax, BYTE PTR [edx+ebx]
	lea	ebp, [ebx+1]
	mov	BYTE PTR [esi+ebx], al
	cmp	ebp, DWORD PTR [esp+32]
	jnb	.L972
	movzx	ecx, BYTE PTR [edx+1+ebx]
	lea	edi, [ebx+2]
	mov	BYTE PTR [esi+1+ebx], cl
	cmp	edi, DWORD PTR [esp+32]
	jnb	.L972
	movzx	edx, BYTE PTR [edx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], dl
.L972:
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
.L1006:
	.cfi_restore_state
	mov	ebp, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+32]
	sub	ebp, 1
	test	edx, edx
	je	.L972
	.p2align 4
	.p2align 4
	.p2align 3
.L977:
	movzx	ebx, BYTE PTR [ecx+ebp]
	mov	BYTE PTR [esi+ebp], bl
	sub	ebp, 1
	jnb	.L977
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
.L1007:
	.cfi_restore_state
	lea	edx, [esi+ebx]
	mov	esi, DWORD PTR [esp+32]
	lea	eax, [ecx+ebx]
	test	esi, esi
	je	.L972
.L981:
	add	ecx, DWORD PTR [esp+32]
	.p2align 4
	.p2align 4
	.p2align 3
.L984:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	.L984
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
	jns	.L1014
	fld	DWORD PTR .LC13
	faddp	st(1), st
.L1014:
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
	jns	.L1017
	fld	DWORD PTR .LC13
	faddp	st(1), st
.L1017:
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
	mov	ecx, DWORD PTR [esp+4]
	movzx	edx, cx
	test	ch, -128
	jne	.L1023
	mov	eax, edx
	sar	eax, 14
	jne	.L1020
	mov	eax, edx
	shr	eax, 13
	jne	.L1024
	mov	eax, edx
	shr	eax, 12
	jne	.L1025
	mov	eax, edx
	shr	eax, 11
	jne	.L1026
	mov	eax, edx
	shr	eax, 10
	jne	.L1027
	mov	eax, edx
	shr	eax, 9
	jne	.L1028
	mov	eax, edx
	shr	eax, 8
	jne	.L1029
	mov	eax, edx
	shr	eax, 7
	jne	.L1030
	mov	eax, edx
	shr	eax, 6
	jne	.L1031
	mov	eax, edx
	shr	eax, 5
	jne	.L1032
	mov	eax, edx
	shr	eax, 4
	jne	.L1033
	mov	eax, edx
	shr	eax, 3
	jne	.L1034
	mov	eax, edx
	shr	eax, 2
	jne	.L1035
	shr	edx
	jne	.L1036
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1036:
	mov	eax, 14
.L1020:
	ret
.L1023:
	xor	eax, eax
	ret
.L1034:
	mov	eax, 12
	ret
.L1024:
	mov	eax, 2
	ret
.L1025:
	mov	eax, 3
	ret
.L1026:
	mov	eax, 4
	ret
.L1027:
	mov	eax, 5
	ret
.L1028:
	mov	eax, 6
	ret
.L1029:
	mov	eax, 7
	ret
.L1030:
	mov	eax, 8
	ret
.L1031:
	mov	eax, 9
	ret
.L1032:
	mov	eax, 10
	ret
.L1033:
	mov	eax, 11
	ret
.L1035:
	mov	eax, 13
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
	mov	eax, DWORD PTR [esp+4]
	test	al, 1
	jne	.L1041
	test	al, 2
	jne	.L1042
	test	al, 4
	jne	.L1043
	test	al, 8
	jne	.L1044
	test	al, 16
	jne	.L1045
	test	al, 32
	jne	.L1046
	test	al, 64
	jne	.L1047
	test	al, -128
	jne	.L1048
	test	ah, 1
	jne	.L1049
	test	ah, 2
	jne	.L1050
	test	ah, 4
	jne	.L1051
	test	ah, 8
	jne	.L1052
	test	ah, 16
	jne	.L1053
	test	ah, 32
	jne	.L1054
	test	ah, 64
	jne	.L1055
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
.L1041:
	xor	eax, eax
	ret
.L1042:
	mov	eax, 1
	ret
.L1053:
	mov	eax, 12
	ret
.L1043:
	mov	eax, 2
	ret
.L1044:
	mov	eax, 3
	ret
.L1045:
	mov	eax, 4
	ret
.L1046:
	mov	eax, 5
	ret
.L1047:
	mov	eax, 6
	ret
.L1048:
	mov	eax, 7
	ret
.L1049:
	mov	eax, 8
	ret
.L1050:
	mov	eax, 9
	ret
.L1051:
	mov	eax, 10
	ret
.L1052:
	mov	eax, 11
	ret
.L1054:
	mov	eax, 13
	ret
.L1055:
	mov	eax, 14
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
	jnb	.L1065
	fnstcw	WORD PTR [esp+6]
	movzx	edx, WORD PTR [esp+6]
	or	dh, 12
	mov	WORD PTR [esp+4], dx
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
.L1065:
	.cfi_restore_state
	fnstcw	WORD PTR [esp+6]
	fsub	DWORD PTR .LC14
	movzx	ecx, WORD PTR [esp+6]
	or	ch, 12
	mov	WORD PTR [esp+4], cx
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
	mov	ecx, DWORD PTR [esp+4]
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
	and	eax, 1
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
	mov	ecx, DWORD PTR [esp+4]
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
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
	je	.L1068
	.p2align 5
	.p2align 4
	.p2align 3
.L1070:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1070
.L1068:
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
	je	.L1074
	test	edx, edx
	je	.L1074
	.p2align 5
	.p2align 4
	.p2align 3
.L1076:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1076
.L1074:
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
	cmp	edx, ecx
	jnb	.L1111
	mov	ebx, 1
	jmp	.L1083
	.p2align 4,,10
	.p2align 3
.L1086:
	add	edx, edx
	add	ebx, ebx
	cmp	edx, ecx
	jnb	.L1085
	test	ebx, ebx
	je	.L1085
.L1083:
	test	edx, edx
	jns	.L1086
.L1087:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1091:
	mov	edi, ecx
	sub	edi, edx
	cmp	ecx, edx
	setnb	al
	test	al, al
	je	.L1090
	mov	ecx, edi
.L1090:
	sal	eax, 31
	shr	edx
	sar	eax, 31
	and	eax, ebx
	or	esi, eax
	shr	ebx
	jne	.L1091
.L1088:
	mov	edx, DWORD PTR [esp+24]
	test	edx, edx
	je	.L1082
	mov	esi, ecx
.L1082:
	mov	eax, esi
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
.L1085:
	.cfi_restore_state
	xor	esi, esi
	test	ebx, ebx
	jne	.L1087
	jmp	.L1088
.L1111:
	mov	ebx, ecx
	sub	ebx, edx
	cmp	ecx, edx
	setnb	al
	test	al, al
	jne	.L1113
.L1094:
	movzx	esi, al
	jmp	.L1088
.L1113:
	mov	ecx, ebx
	jmp	.L1094
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
	ja	.L1117
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	dl
	movzx	eax, dl
	jmp	.L1114
	.p2align 4,,10
	.p2align 3
.L1117:
	fstp	st(0)
	fstp	st(0)
.L1114:
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
	ja	.L1121
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	dl
	movzx	eax, dl
	jmp	.L1118
	.p2align 4,,10
	.p2align 3
.L1121:
	fstp	st(0)
	fstp	st(0)
.L1118:
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
	js	.L1135
	je	.L1129
	xor	edi, edi
.L1126:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1128:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, DWORD PTR [esp+20]
	sal	DWORD PTR [esp+20]
	add	esi, eax
	sar	edx
	setne	cl
	cmp	bl, 32
	setne	al
	add	ebx, 1
	test	cl, al
	jne	.L1128
	test	edi, edi
	je	.L1124
	neg	esi
.L1124:
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
.L1135:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L1126
	.p2align 4,,10
	.p2align 3
.L1129:
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xor	edi, edi
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	test	eax, eax
	jns	.L1137
	neg	eax
	xor	edx, edx
	mov	edi, 1
.L1137:
	test	ebx, ebx
	jns	.L1138
	neg	ebx
	mov	edi, edx
.L1138:
	mov	ecx, ebx
	mov	esi, eax
	mov	edx, 1
	cmp	ebx, eax
	jb	.L1139
	jmp	.L1166
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1170:
	test	edx, edx
	je	.L1144
.L1139:
	add	ecx, ecx
	add	edx, edx
	cmp	ecx, eax
	jb	.L1170
.L1144:
	xor	eax, eax
	test	edx, edx
	je	.L1142
	.p2align 5
	.p2align 4
	.p2align 3
.L1141:
	mov	ebp, esi
	sub	ebp, ecx
	cmp	esi, ecx
	setnb	bl
	test	bl, bl
	je	.L1146
	mov	esi, ebp
.L1146:
	sal	ebx, 31
	shr	ecx
	sar	ebx, 31
	and	ebx, edx
	or	eax, ebx
	shr	edx
	jne	.L1141
.L1142:
	test	edi, edi
	je	.L1136
	neg	eax
.L1136:
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
.L1166:
	.cfi_restore_state
	cmp	eax, ebx
	setnb	al
	movzx	eax, al
	jmp	.L1142
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
	mov	esi, DWORD PTR [esp+12]
	xor	ebx, ebx
	mov	edx, DWORD PTR [esp+16]
	test	esi, esi
	jns	.L1172
	neg	esi
	mov	ebx, 1
.L1172:
	mov	eax, edx
	mov	ecx, 1
	sar	eax, 31
	xor	edx, eax
	sub	edx, eax
	mov	eax, esi
	cmp	edx, esi
	jb	.L1173
	jmp	.L1203
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1206:
	test	ecx, ecx
	je	.L1200
.L1173:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, esi
	jb	.L1206
	test	ecx, ecx
	je	.L1200
	.p2align 4
	.p2align 4
	.p2align 3
.L1175:
	mov	esi, eax
	sub	esi, edx
	cmp	eax, edx
	jb	.L1180
	mov	eax, esi
.L1180:
	shr	edx
	shr	ecx
	jne	.L1175
.L1176:
	test	ebx, ebx
	je	.L1171
	neg	eax
.L1171:
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
.L1200:
	.cfi_restore_state
	mov	eax, esi
	jmp	.L1176
.L1203:
	mov	ecx, esi
	sub	ecx, edx
	cmp	esi, edx
	jb	.L1176
	mov	eax, ecx
	jmp	.L1176
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, 1
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
	mov	eax, DWORD PTR [esp+28]
	mov	esi, edi
	mov	edx, eax
	cmp	ax, di
	jb	.L1208
	jmp	.L1329
	.p2align 4,,10
	.p2align 3
.L1213:
	lea	ebx, [edx+edx]
	lea	eax, [ebp+ebp]
	cmp	bx, si
	jnb	.L1212
	test	ax, ax
	je	.L1212
	mov	ebp, eax
	mov	edx, ebx
.L1208:
	test	dx, dx
	jns	.L1213
	mov	ebx, edi
	mov	WORD PTR [esp], bp
	mov	esi, edi
	sub	ebx, edx
	cmp	dx, di
	ja	.L1250
	mov	esi, ebx
.L1250:
	cmp	di, dx
	movzx	ecx, WORD PTR [esp]
	mov	ebp, edx
	sbb	eax, eax
	shr	bp
	not	eax
	and	eax, ecx
	shr	cx
	mov	WORD PTR [esp+2], cx
	mov	edi, eax
	je	.L1215
.L1251:
	mov	eax, esi
	sub	eax, ebp
	cmp	si, bp
	setnb	bl
	mov	ebp, ebx
	mov	ebx, esi
	mov	ecx, ebp
	test	cl, cl
	je	.L1219
	mov	ebx, eax
.L1219:
	mov	eax, ebp
	movzx	ebp, WORD PTR [esp]
	mov	esi, ebx
	sal	eax, 15
	sar	ax, 15
	and	ax, WORD PTR [esp+2]
	or	eax, edi
	mov	edi, edx
	shr	di, 2
	shr	bp, 2
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	je	.L1221
	mov	ebx, esi
.L1221:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 3
	shr	bp, 3
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	je	.L1223
	mov	ebx, esi
.L1223:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 4
	shr	bp, 4
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	je	.L1225
	mov	ebx, esi
.L1225:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 5
	shr	bp, 5
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	je	.L1227
	mov	ebx, esi
.L1227:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 6
	shr	bp, 6
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	je	.L1229
	mov	ebx, esi
.L1229:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 7
	shr	bp, 7
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	jne	.L1330
.L1231:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 8
	shr	bp, 8
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	jne	.L1331
.L1233:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 9
	shr	bp, 9
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	jne	.L1332
.L1235:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 10
	shr	bp, 10
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	jne	.L1333
.L1237:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 11
	shr	bp, 11
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	jne	.L1334
.L1239:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 12
	shr	bp, 12
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	jne	.L1335
.L1241:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 13
	shr	bp, 13
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	je	.L1243
	mov	ebx, esi
.L1243:
	sal	edi, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	mov	edi, edx
	or	eax, ebp
	movzx	ebp, WORD PTR [esp]
	shr	di, 14
	shr	bp, 14
	je	.L1215
	sub	esi, edi
	cmp	bx, di
	setnb	cl
	mov	edi, ecx
	test	cl, cl
	je	.L1245
	mov	ebx, esi
.L1245:
	sal	edi, 15
	shr	dx, 15
	mov	esi, ebx
	sar	di, 15
	and	ebp, edi
	or	eax, ebp
	cmp	WORD PTR [esp], 0
	jns	.L1215
	sub	esi, edx
	cmp	bx, dx
	setnb	dl
	test	dl, dl
	je	.L1247
	mov	ebx, esi
.L1247:
	movzx	ebp, dl
	mov	esi, ebx
	or	eax, ebp
	.p2align 4
	.p2align 3
.L1215:
	mov	ecx, DWORD PTR [esp+32]
	test	ecx, ecx
	jne	.L1207
	mov	esi, eax
.L1207:
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	eax, esi
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
.L1212:
	.cfi_restore_state
	mov	WORD PTR [esp], bp
	mov	esi, edi
	test	ax, ax
	je	.L1215
	mov	ecx, edi
	sub	ecx, ebx
	cmp	bx, di
	jbe	.L1336
.L1217:
	cmp	di, bx
	movzx	ebp, WORD PTR [esp]
	mov	WORD PTR [esp], ax
	sbb	edi, edi
	and	dx, 32767
	and	bp, 32767
	not	edi
	mov	WORD PTR [esp+2], bp
	and	edi, eax
	mov	ebp, edx
	mov	edx, ebx
	jmp	.L1251
	.p2align 4,,10
	.p2align 3
.L1330:
	mov	ebx, esi
	jmp	.L1231
	.p2align 4,,10
	.p2align 3
.L1336:
	mov	esi, ecx
	jmp	.L1217
	.p2align 4,,10
	.p2align 3
.L1331:
	mov	ebx, esi
	jmp	.L1233
	.p2align 4,,10
	.p2align 3
.L1332:
	mov	ebx, esi
	jmp	.L1235
	.p2align 4,,10
	.p2align 3
.L1333:
	mov	ebx, esi
	jmp	.L1237
	.p2align 4,,10
	.p2align 3
.L1334:
	mov	ebx, esi
	jmp	.L1239
	.p2align 4,,10
	.p2align 3
.L1335:
	mov	ebx, esi
	jmp	.L1241
.L1329:
	mov	edx, edi
	sub	edx, eax
	cmp	ax, di
	je	.L1337
.L1210:
	cmp	ax, di
	sete	cl
	movzx	eax, cl
	jmp	.L1215
.L1337:
	mov	esi, edx
	jmp	.L1210
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
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
	cmp	edx, ecx
	jnb	.L1367
	mov	ebx, 1
	jmp	.L1339
	.p2align 4,,10
	.p2align 3
.L1342:
	add	edx, edx
	add	ebx, ebx
	cmp	edx, ecx
	jnb	.L1341
	test	ebx, ebx
	je	.L1341
.L1339:
	test	edx, edx
	jns	.L1342
.L1343:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1347:
	mov	edi, ecx
	sub	edi, edx
	cmp	ecx, edx
	setnb	al
	test	al, al
	je	.L1346
	mov	ecx, edi
.L1346:
	sal	eax, 31
	shr	edx
	sar	eax, 31
	and	eax, ebx
	or	esi, eax
	shr	ebx
	jne	.L1347
.L1344:
	mov	edx, DWORD PTR [esp+24]
	test	edx, edx
	je	.L1338
	mov	esi, ecx
.L1338:
	mov	eax, esi
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
.L1341:
	.cfi_restore_state
	xor	esi, esi
	test	ebx, ebx
	jne	.L1343
	jmp	.L1344
.L1367:
	mov	ebx, ecx
	sub	ebx, edx
	cmp	ecx, edx
	setnb	al
	test	al, al
	jne	.L1369
.L1350:
	movzx	esi, al
	jmp	.L1344
.L1369:
	mov	ecx, ebx
	jmp	.L1350
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
	je	.L1371
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
.L1371:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1374
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
.L1374:
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
	je	.L1377
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
.L1377:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1380
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
.L1380:
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
	jl	.L1386
	mov	eax, 2
	jg	.L1386
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1386
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1386:
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
	jl	.L1393
	mov	eax, 1
	jg	.L1393
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1393
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1393:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	xor	edx, edx
	mov	ebx, 2
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
	add	edx, ecx
	xor	ecx, ecx
	test	al, 15
	sete	cl
	sal	ecx, 2
	shr	eax, cl
	add	edx, ecx
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shr	eax, cl
	add	ecx, edx
	and	eax, 3
	mov	edx, eax
	shr	eax
	not	edx
	sub	ebx, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ebx
	pop	ebx
	.cfi_restore 3
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
	je	.L1402
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
.L1402:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1405
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
.L1405:
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
	mov	esi, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	movzx	eax, si
	shr	esi, 16
	movzx	edx, cx
	mov	ebx, eax
	shr	ecx, 16
	imul	ebx, edx
	imul	edx, esi
	imul	eax, ecx
	mov	edi, ebx
	imul	ecx, esi
	movzx	ebx, bx
	shr	edi, 16
	add	edx, edi
	movzx	edi, dx
	shr	edx, 16
	add	eax, edi
	add	edx, ecx
	mov	esi, eax
	shr	eax, 16
	sal	esi, 16
	add	edx, eax
	add	ebx, esi
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
	mov	edi, edx
	mov	ebx, ecx
	shr	edi, 16
	imul	edx, DWORD PTR [esp+32]
	imul	ebx, eax
	imul	eax, edi
	mov	esi, ebx
	movzx	ebx, bx
	shr	esi, 16
	add	eax, esi
	mov	esi, DWORD PTR [esp+28]
	movzx	ebp, ax
	shr	eax, 16
	shr	esi, 16
	imul	ecx, esi
	imul	esi, edi
	add	ecx, ebp
	add	eax, esi
	mov	edi, ecx
	shr	ecx, 16
	add	ecx, eax
	sal	edi, 16
	add	edx, ecx
	mov	ecx, DWORD PTR [esp+28]
	imul	ecx, DWORD PTR [esp+24]
	add	ebx, edi
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
	add	edx, ecx
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
	and	edx, 252645135
	lea	ebx, [eax+edx]
	mov	edx, ebx
	shr	edx, 16
	add	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
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
	mov	ecx, eax
	and	eax, 858993459
	shr	ecx, 2
	and	ecx, 858993459
	add	ecx, eax
	mov	eax, ecx
	shr	eax, 4
	add	eax, ecx
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
	je	.L1418
	jmp	.L1420
	.p2align 4,,10
	.p2align 3
.L1425:
	fxch	st(1)
	jmp	.L1420
	.p2align 4,,10
	.p2align 3
.L1426:
	fxch	st(1)
.L1420:
	fmul	st, st(1)
.L1418:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1419
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1425
.L1424:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1426
	jmp	.L1424
	.p2align 4,,10
	.p2align 3
.L1419:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1417
	fld1
	fdivrp	st(1), st
.L1417:
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
	je	.L1428
	jmp	.L1430
	.p2align 4,,10
	.p2align 3
.L1435:
	fxch	st(1)
	jmp	.L1430
	.p2align 4,,10
	.p2align 3
.L1436:
	fxch	st(1)
.L1430:
	fmul	st, st(1)
.L1428:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1429
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1435
.L1434:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1436
	jmp	.L1434
	.p2align 4,,10
	.p2align 3
.L1429:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1427
	fld1
	fdivrp	st(1), st
.L1427:
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
	jb	.L1437
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1437
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1437
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1437:
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
	jb	.L1444
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1444
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1444
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1444:
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
.LC13:
	.long	1602224128
	.align 4
.LC14:
	.long	1191182336
	.globl	__divmoddi4
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
