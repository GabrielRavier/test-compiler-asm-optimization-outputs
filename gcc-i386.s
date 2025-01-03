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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	ecx, DWORD PTR [esp+48]
	mov	edx, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+56]
	cmp	edx, ecx
	jnb	.L2
	test	eax, eax
	je	.L3
	.p2align 4
	.p2align 4
	.p2align 3
.L4:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	sub	eax, 1
	jne	.L4
.L3:
	add	esp, 28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
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
.L2:
	.cfi_restore_state
	cmp	ecx, edx
	je	.L3
	test	eax, eax
	je	.L3
	lea	ebx, [eax-1]
	lea	esi, [edx+1]
	cmp	ebx, 2
	jbe	.L5
	mov	edi, ecx
	sub	edi, esi
	cmp	edi, 14
	jbe	.L5
	cmp	ebx, 14
	jbe	.L15
	mov	esi, eax
	mov	edi, ecx
	and	esi, -16
	lea	ebx, [edx+esi]
	.p2align 5
	.p2align 4
	.p2align 3
.L7:
	movdqu	xmm0, XMMWORD PTR [edx]
	add	edx, 16
	add	edi, 16
	movups	XMMWORD PTR [edi-16], xmm0
	cmp	edx, ebx
	jne	.L7
	lea	edi, [ecx+esi]
	mov	edx, ebx
	mov	DWORD PTR [esp+12], edi
	mov	ebp, edi
	mov	edi, eax
	sub	edi, esi
	cmp	eax, esi
	je	.L3
	lea	esi, [edi-1]
	mov	eax, edi
	cmp	esi, 2
	jbe	.L10
.L6:
	movd	xmm1, DWORD PTR [ebx]
	mov	esi, eax
	shr	esi, 2
	movd	DWORD PTR [ebp+0], xmm1
	cmp	esi, 1
	je	.L11
	movd	xmm2, DWORD PTR [ebx+4]
	movd	DWORD PTR [ebp+4], xmm2
	cmp	esi, 2
	je	.L11
	mov	ebx, DWORD PTR [ebx+8]
	mov	DWORD PTR [ebp+8], ebx
.L11:
	test	al, 3
	je	.L3
	and	eax, -4
	add	DWORD PTR [esp+12], eax
	add	edx, eax
	sub	edi, eax
.L10:
	movzx	eax, BYTE PTR [edx]
	mov	ebp, DWORD PTR [esp+12]
	mov	BYTE PTR [ebp+0], al
	cmp	edi, 1
	je	.L3
	movzx	ebx, BYTE PTR [edx+1]
	mov	BYTE PTR [ebp+1], bl
	cmp	edi, 2
	je	.L3
	movzx	edx, BYTE PTR [edx+2]
	mov	BYTE PTR [ebp+2], dl
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L5:
	add	eax, ecx
	mov	edi, ecx
	jmp	.L13
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L45:
	add	esi, 1
.L13:
	movzx	ebx, BYTE PTR [esi-1]
	add	edi, 1
	mov	BYTE PTR [edi-1], bl
	cmp	edi, eax
	jne	.L45
	jmp	.L3
.L15:
	mov	DWORD PTR [esp+12], ecx
	mov	edi, eax
	mov	ebx, edx
	mov	ebp, ecx
	jmp	.L6
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
	jne	.L47
	jmp	.L49
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L50:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L49
.L47:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L50
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
.L49:
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
	jne	.L59
	jmp	.L62
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L61:
	add	eax, 1
	sub	edx, 1
	je	.L62
.L59:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L61
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L62:
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
	jne	.L68
	jmp	.L67
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L70:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L72
.L68:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L70
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L67:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L72:
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
	je	.L80
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
.L80:
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
	jmp	.L86
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L88:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L85
.L86:
	cmp	eax, ebx
	jne	.L88
	xor	edx, edx
.L85:
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
	je	.L93
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
.L93:
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
	je	.L96
	.p2align 4
	.p2align 4
	.p2align 3
.L97:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L97
.L96:
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
	jne	.L103
	jmp	.L102
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L105:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L102
.L103:
	cmp	eax, ecx
	jne	.L105
.L102:
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
	jmp	.L112
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L116:
	add	eax, 1
	test	cl, cl
	je	.L115
.L112:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L116
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L115:
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
	je	.L118
	jmp	.L119
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L120:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	.L119
.L118:
	test	al, al
	jne	.L120
	xor	eax, eax
.L119:
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
	je	.L129
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L128:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L128
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L129:
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
	je	.L131
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L135
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L152:
	cmp	edx, ebp
	je	.L134
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L151
	mov	edx, esi
.L135:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	.L152
.L134:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
.L131:
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
.L151:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	.L134
.L150:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	.L134
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.p2align 4
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
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
	sub	esp, 44
	.cfi_def_cfa_offset 64
	mov	ecx, DWORD PTR [esp+72]
	mov	esi, DWORD PTR [esp+64]
	cmp	ecx, 1
	jle	.L153
	mov	edi, ecx
	lea	edx, [ecx-2]
	shr	edi
	lea	eax, [edi-1]
	mov	DWORD PTR [esp+28], eax
	cmp	edx, 29
	jbe	.L161
	mov	eax, 16711935
	mov	ebp, ecx
	mov	ebx, ecx
	mov	edx, DWORD PTR [esp+68]
	movd	xmm0, eax
	and	ebp, -32
	shr	ebx, 5
	mov	eax, esi
	pshufd	xmm4, xmm0, 0
	add	ebp, esi
	movaps	XMMWORD PTR [esp], xmm4
	.p2align 4
	.p2align 3
.L156:
	movdqu	xmm5, XMMWORD PTR [eax]
	movdqu	xmm2, XMMWORD PTR [eax+16]
	add	eax, 32
	add	edx, 32
	movdqa	xmm1, XMMWORD PTR [esp]
	movdqa	xmm3, XMMWORD PTR [esp]
	pand	xmm1, xmm5
	psrlw	xmm5, 8
	pand	xmm3, xmm2
	psrlw	xmm2, 8
	packuswb	xmm1, xmm3
	packuswb	xmm5, xmm2
	movdqa	xmm6, xmm5
	punpckhbw	xmm5, xmm1
	punpcklbw	xmm6, xmm1
	movups	XMMWORD PTR [edx-16], xmm5
	movups	XMMWORD PTR [edx-32], xmm6
	cmp	ebp, eax
	jne	.L156
	mov	eax, ebx
	mov	edx, DWORD PTR [esp+68]
	sal	ebx, 5
	sal	eax, 4
	mov	ebp, eax
	add	edx, ebx
	add	ebx, esi
	neg	ebp
	lea	ecx, [ecx+ebp*2]
	cmp	eax, edi
	je	.L153
.L155:
	mov	ebp, DWORD PTR [esp+28]
	sub	ebp, eax
	lea	edi, [ebp+1]
	cmp	ebp, 2
	jbe	.L158
	add	eax, eax
	mov	ebp, edi
	add	esi, eax
	shr	ebp, 2
	add	eax, DWORD PTR [esp+68]
	movd	xmm7, DWORD PTR [esi]
	movd	xmm0, DWORD PTR [esi+4]
	movdqa	xmm4, xmm7
	punpcklbw	xmm7, xmm0
	punpcklbw	xmm4, xmm0
	movdqa	xmm1, xmm7
	pshufd	xmm5, xmm4, 65
	punpcklbw	xmm7, xmm5
	punpcklbw	xmm1, xmm5
	pshufd	xmm3, xmm7, 65
	movdqa	xmm2, xmm3
	punpcklbw	xmm3, xmm1
	punpcklbw	xmm2, xmm1
	pshufd	xmm6, xmm3, 65
	movd	DWORD PTR [eax], xmm2
	movd	DWORD PTR [eax+4], xmm6
	cmp	ebp, 1
	je	.L159
	movd	xmm7, DWORD PTR [esi+8]
	movd	xmm0, DWORD PTR [esi+12]
	movdqa	xmm4, xmm7
	punpcklbw	xmm7, xmm0
	punpcklbw	xmm4, xmm0
	movdqa	xmm1, xmm7
	pshufd	xmm5, xmm4, 65
	punpcklbw	xmm7, xmm5
	punpcklbw	xmm1, xmm5
	pshufd	xmm3, xmm7, 65
	movdqa	xmm2, xmm3
	punpcklbw	xmm3, xmm1
	punpcklbw	xmm2, xmm1
	pshufd	xmm6, xmm3, 65
	movd	DWORD PTR [eax+8], xmm2
	movd	DWORD PTR [eax+12], xmm6
	cmp	ebp, 2
	je	.L159
	movd	xmm7, DWORD PTR [esi+16]
	movd	xmm0, DWORD PTR [esi+20]
	movdqa	xmm4, xmm7
	punpcklbw	xmm7, xmm0
	punpcklbw	xmm4, xmm0
	movdqa	xmm1, xmm7
	pshufd	xmm5, xmm4, 65
	punpcklbw	xmm7, xmm5
	punpcklbw	xmm1, xmm5
	pshufd	xmm3, xmm7, 65
	movdqa	xmm2, xmm3
	punpcklbw	xmm3, xmm1
	punpcklbw	xmm2, xmm1
	pshufd	xmm6, xmm3, 65
	movd	DWORD PTR [eax+16], xmm2
	movd	DWORD PTR [eax+20], xmm6
.L159:
	mov	eax, edi
	and	eax, -4
	lea	esi, [eax+eax]
	neg	eax
	add	edx, esi
	add	ebx, esi
	lea	ecx, [ecx+eax*2]
	and	edi, 3
	je	.L153
.L158:
	movbe	di, WORD PTR [ebx]
	mov	WORD PTR [edx], di
	cmp	ecx, 3
	jle	.L153
	movbe	bp, WORD PTR [ebx+2]
	mov	WORD PTR [edx+2], bp
	cmp	ecx, 5
	jle	.L153
	movbe	bx, WORD PTR [ebx+4]
	mov	WORD PTR [edx+4], bx
.L153:
	add	esp, 44
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
.L161:
	.cfi_restore_state
	mov	edx, DWORD PTR [esp+68]
	mov	ebx, esi
	xor	eax, eax
	jmp	.L155
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
	jbe	.L185
	cmp	eax, 31
	jbe	.L185
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L183
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L185:
	mov	edx, 1
.L183:
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
	jbe	.L194
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L191
	cmp	eax, 8231
	jbe	.L191
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L188
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L188
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	mov	edx, 1
.L188:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L194:
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
	jbe	.L195
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L195:
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
	fucomi	st, st(0)
	jp	.L207
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L203
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L206
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L206:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L207:
	fstp	st(1)
.L199:
	ret
	.p2align 4,,10
	.p2align 3
.L203:
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
	fucomi	st, st(0)
	jp	.L216
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L212
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L215
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L216:
	fstp	st(1)
.L208:
	ret
	.p2align 4,,10
	.p2align 3
.L212:
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
	fucomi	st, st(0)
	jp	.L222
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L225
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
	je	.L219
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L222:
	fstp	st(0)
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L225:
	fstp	st(0)
.L217:
	ret
	.p2align 4,,10
	.p2align 3
.L219:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
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
	fucomi	st, st(0)
	jp	.L231
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L234
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
	je	.L228
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L231:
	fstp	st(0)
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L234:
	fstp	st(0)
.L226:
	ret
	.p2align 4,,10
	.p2align 3
.L228:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
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
	fucomi	st, st(0)
	jp	.L246
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L247
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
	jne	.L245
	fcomi	st, st(1)
	jbe	.L248
	fstp	st(1)
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L247:
	fstp	st(0)
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L248:
	fstp	st(0)
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L249:
	fstp	st(0)
.L241:
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L246:
	fstp	st(0)
.L235:
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	test	edx, edx
	je	.L249
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
	fucomi	st, st(0)
	jp	.L258
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L256
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
	je	.L252
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L256:
	fstp	st(0)
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L258:
	fstp	st(0)
.L250:
	ret
	.p2align 4,,10
	.p2align 3
.L252:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
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
	fucomi	st, st(0)
	jp	.L267
	fxch	st(1)
	fucomi	st, st(0)
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
	je	.L261
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L265:
	fstp	st(0)
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L267:
	fstp	st(0)
.L259:
	ret
	.p2align 4,,10
	.p2align 3
.L261:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
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
	fucomi	st, st(0)
	jp	.L279
	fxch	st(1)
	fucomi	st, st(0)
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
	fcomi	st, st(1)
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
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	test	eax, eax
	je	.L296
	movd	xmm0, DWORD PTR [eax]
	movd	xmm1, eax
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	.L290
	mov	DWORD PTR [ecx+4], edx
.L290:
	ret
	.p2align 4,,10
	.p2align 3
.L296:
	mov	DWORD PTR [edx], 0
	mov	DWORD PTR [edx+4], 0
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
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
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
	mov	eax, DWORD PTR [esp+20]
	movsx	ecx, BYTE PTR [eax]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	.L363
	mov	edx, ecx
	jmp	.L367
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L363:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L363
.L367:
	cmp	dl, 32
	je	.L363
	cmp	dl, 43
	je	.L344
	cmp	dl, 45
	jne	.L368
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
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
	lea	ebx, [edx-48]
	add	edi, 1
	lea	ecx, [esi+esi*4]
	movsx	eax, bl
	movsx	ebx, BYTE PTR [edi]
	add	ecx, ecx
	mov	esi, ecx
	mov	edx, ebx
	sub	ebx, 48
	sub	esi, eax
	cmp	ebx, 9
	jbe	.L350
	sub	eax, ecx
	test	ebp, ebp
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	cmovne	eax, esi
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
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L347
.L353:
	xor	eax, eax
.L369:
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
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L347
	xor	eax, eax
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
	mov	eax, DWORD PTR [esp+20]
	movsx	ecx, BYTE PTR [eax]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	.L391
	mov	edx, ecx
	jmp	.L394
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L391:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L391
.L394:
	cmp	dl, 32
	je	.L391
	cmp	dl, 43
	je	.L374
	cmp	dl, 45
	je	.L395
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L382
.L376:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L379:
	lea	ebx, [edx-48]
	add	edi, 1
	lea	ecx, [esi+esi*4]
	movsx	eax, bl
	movsx	ebx, BYTE PTR [edi]
	add	ecx, ecx
	mov	esi, ecx
	mov	edx, ebx
	sub	ebx, 48
	sub	esi, eax
	cmp	ebx, 9
	jbe	.L379
	sub	eax, ecx
	test	ebp, ebp
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	cmovne	eax, esi
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
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L376
.L382:
	pop	ebx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L374:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
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
	movsx	ecx, BYTE PTR [edx]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	.L419
	mov	eax, ecx
	jmp	.L423
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L419:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	esi, [ecx-9]
	mov	eax, ecx
	cmp	esi, 4
	jbe	.L419
.L423:
	cmp	al, 32
	je	.L419
	cmp	al, 43
	je	.L400
	cmp	al, 45
	jne	.L424
	lea	ecx, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L409
	mov	ebx, 1
.L403:
	pxor	xmm2, xmm2
	.p2align 4
	.p2align 3
.L406:
	movdqa	xmm0, xmm2
	sub	eax, 48
	movsx	esi, BYTE PTR [ecx+1]
	add	ecx, 1
	movsx	eax, al
	psllq	xmm0, 2
	cdq
	paddq	xmm0, xmm2
	movd	xmm3, eax
	mov	eax, esi
	movd	xmm1, edx
	psllq	xmm0, 1
	sub	esi, 48
	punpckldq	xmm3, xmm1
	movdqa	xmm2, xmm0
	psubq	xmm2, xmm3
	movdqa	xmm4, xmm2
	movd	edi, xmm2
	psrlq	xmm4, 32
	movd	edx, xmm4
	cmp	esi, 9
	jbe	.L406
	test	ebx, ebx
	jne	.L396
	movdqa	xmm2, xmm3
	psubq	xmm2, xmm0
	movd	edi, xmm2
	psrlq	xmm2, 32
	movd	edx, xmm2
.L396:
	mov	eax, edi
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
.L424:
	.cfi_restore_state
	lea	esi, [ecx-48]
	xor	ebx, ebx
	mov	ecx, edx
	cmp	esi, 9
	jbe	.L403
.L409:
	xor	edi, edi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	xor	edx, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	mov	eax, edi
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L400:
	.cfi_restore_state
	movsx	edi, BYTE PTR [edx+1]
	lea	ecx, [edx+1]
	xor	ebx, ebx
	mov	eax, edi
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
.L440:
	test	ebx, ebx
	je	.L426
.L441:
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
	js	.L430
	je	.L425
	sub	ebx, 1
	lea	eax, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L441
.L426:
	xor	ebp, ebp
.L425:
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
.L430:
	.cfi_restore_state
	mov	ebx, esi
	jmp	.L440
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
	je	.L447
	.p2align 4
	.p2align 3
.L455:
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
	je	.L442
	jle	.L445
	lea	ebp, [ebp-1]
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L455
.L447:
	xor	ebx, ebx
.L442:
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
.L445:
	.cfi_restore_state
	test	esi, esi
	je	.L447
	mov	ebp, esi
	jmp	.L455
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
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, ecx
	neg	eax
	mov	edx, ebx
	adc	edx, 0
	neg	edx
	cmovs	edx, ebx
	cmovs	eax, ecx
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
	movq	xmm0, QWORD PTR [esp+40]
	movq	QWORD PTR [ebx+8], xmm0
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
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
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
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, ecx
	neg	eax
	mov	edx, ebx
	adc	edx, 0
	neg	edx
	cmovs	edx, ebx
	cmovs	eax, ecx
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
	movq	xmm0, QWORD PTR [esp+40]
	movq	QWORD PTR [ebx+8], xmm0
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
	jne	.L471
	jmp	.L474
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L473:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L474
.L471:
	cmp	ecx, edx
	jne	.L473
	ret
	.p2align 4,,10
	.p2align 3
.L474:
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
	je	.L479
	jmp	.L480
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L481:
	mov	eax, DWORD PTR [edx+4]
	mov	ebx, DWORD PTR [ecx+4]
	add	edx, 4
	add	ecx, 4
	cmp	eax, ebx
	jne	.L480
.L479:
	test	eax, eax
	jne	.L481
.L480:
	cmp	eax, ebx
	mov	edx, -1
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	setg	cl
	movzx	eax, cl
	cmovl	eax, edx
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
.L488:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L488
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
	je	.L494
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L493:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L493
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L494:
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
	jne	.L497
	jmp	.L503
	.p2align 4,,10
	.p2align 3
.L511:
	test	ebx, ebx
	je	.L501
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L503
.L497:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L511
.L501:
	mov	ebx, DWORD PTR [eax]
	cmp	DWORD PTR [edx], ebx
	mov	edx, -1
	setg	al
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movzx	eax, al
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L503:
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
	jne	.L513
	jmp	.L516
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L515:
	add	eax, 4
	sub	edx, 1
	je	.L516
.L513:
	cmp	DWORD PTR [eax], ecx
	jne	.L515
	ret
	.p2align 4,,10
	.p2align 3
.L516:
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
	jne	.L521
	jmp	.L520
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L523:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L526
.L521:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L523
	cmp	ebx, DWORD PTR [edx]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
.L520:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L526:
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
	je	.L534
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
.L534:
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
	mov	ebx, DWORD PTR [esp+48]
	mov	esi, DWORD PTR [esp+52]
	mov	edi, DWORD PTR [esp+56]
	cmp	ebx, esi
	je	.L565
	mov	eax, ebx
	lea	edx, [0+edi*4]
	lea	ecx, [edi-1]
	sub	eax, esi
	cmp	eax, edx
	jnb	.L589
	test	edi, edi
	je	.L565
	cmp	ecx, 2
	jbe	.L584
	mov	ebp, ebx
	sub	ebp, esi
	add	ebp, 12
	cmp	ebp, 8
	jbe	.L584
	sub	edx, 16
	mov	ebp, edi
	lea	eax, [esi+edx]
	shr	ebp, 2
	add	edx, ebx
	mov	DWORD PTR [esp+12], edx
	sal	ebp, 4
	mov	edx, eax
	sub	edx, ebp
	mov	ebp, edx
	mov	edx, DWORD PTR [esp+12]
	.p2align 5
	.p2align 4
	.p2align 3
.L545:
	movdqu	xmm1, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	movups	XMMWORD PTR [edx+16], xmm1
	cmp	ebp, eax
	jne	.L545
	mov	eax, edi
	and	eax, -4
	sub	ecx, eax
	and	edi, 3
	je	.L565
	mov	edi, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edi
	test	ecx, ecx
	je	.L565
	sub	ecx, 1
	mov	edx, DWORD PTR [esi+ecx*4]
	lea	ebp, [0+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edx
	je	.L565
	mov	ecx, DWORD PTR [esi-4+ebp]
	mov	DWORD PTR [ebx-4+ebp], ecx
.L565:
	add	esp, 28
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
.L589:
	.cfi_restore_state
	test	edi, edi
	je	.L565
	cmp	ecx, 2
	jbe	.L556
	lea	ebp, [esi+4]
	mov	edx, ebx
	sub	edx, ebp
	cmp	edx, 8
	jbe	.L557
	mov	ebp, edi
	xor	eax, eax
	shr	ebp, 2
	.p2align 5
	.p2align 4
	.p2align 3
.L551:
	mov	edx, eax
	add	eax, 1
	sal	edx, 4
	movdqu	xmm0, XMMWORD PTR [esi+edx]
	movups	XMMWORD PTR [ebx+edx], xmm0
	cmp	ebp, eax
	jne	.L551
	mov	ebp, edi
	and	ebp, -4
	sub	ecx, ebp
	sal	ebp, 2
	add	esi, ebp
	add	ebp, ebx
	and	edi, 3
	je	.L565
	mov	edi, DWORD PTR [esi]
	mov	DWORD PTR [ebp+0], edi
	test	ecx, ecx
	je	.L565
	mov	eax, DWORD PTR [esi+4]
	mov	DWORD PTR [ebp+4], eax
	cmp	ecx, 1
	je	.L565
	mov	esi, DWORD PTR [esi+8]
	mov	DWORD PTR [ebp+8], esi
	jmp	.L565
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L584:
	mov	eax, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], eax
	sub	ecx, 1
	jb	.L565
	mov	eax, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], eax
	sub	ecx, 1
	jnb	.L584
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L556:
	mov	edx, ebx
	lea	ebp, [esi+4]
	jmp	.L585
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L590:
	add	ebp, 4
.L585:
	mov	edi, DWORD PTR [ebp-4]
	add	edx, 4
	mov	DWORD PTR [edx-4], edi
	sub	ecx, 1
	jb	.L565
	jmp	.L590
.L557:
	mov	edx, ebx
	jmp	.L585
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
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
	mov	esi, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	test	esi, esi
	je	.L592
	lea	edi, [esi-1]
	cmp	edi, 2
	jbe	.L596
	mov	ebx, esi
	movd	xmm1, ebp
	xor	eax, eax
	shr	ebx, 2
	pshufd	xmm0, xmm1, 0
	.p2align 4
	.p2align 4
	.p2align 3
.L594:
	mov	edx, eax
	add	eax, 1
	sal	edx, 4
	movups	XMMWORD PTR [ecx+edx], xmm0
	cmp	ebx, eax
	jne	.L594
	test	esi, 3
	je	.L592
	and	esi, -4
	sub	edi, esi
	lea	eax, [ecx+esi*4]
.L593:
	mov	DWORD PTR [eax], ebp
	test	edi, edi
	je	.L592
	mov	DWORD PTR [eax+4], ebp
	cmp	edi, 1
	je	.L592
	mov	DWORD PTR [eax+8], ebp
.L592:
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
.L596:
	.cfi_restore_state
	mov	eax, ecx
	jmp	.L593
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
	jnb	.L612
	test	eax, eax
	je	.L611
	.p2align 4
	.p2align 4
	.p2align 3
.L614:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	.L614
.L611:
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
.L612:
	.cfi_restore_state
	je	.L611
	test	eax, eax
	je	.L611
	lea	esi, [eax-1]
	lea	ecx, [edx+1]
	cmp	esi, 2
	jbe	.L615
	mov	edi, ebx
	sub	edi, ecx
	cmp	edi, 14
	jbe	.L615
	cmp	esi, 14
	jbe	.L625
	mov	edi, eax
	mov	ebp, ebx
	and	edi, -16
	lea	esi, [edx+edi]
	.p2align 5
	.p2align 4
	.p2align 3
.L617:
	movdqu	xmm0, XMMWORD PTR [edx]
	add	edx, 16
	add	ebp, 16
	movups	XMMWORD PTR [ebp-16], xmm0
	cmp	edx, esi
	jne	.L617
	add	ebx, edi
	mov	ecx, eax
	mov	edx, esi
	mov	ebp, ebx
	sub	ecx, edi
	cmp	eax, edi
	je	.L611
	lea	edi, [ecx-1]
	mov	eax, ecx
	cmp	edi, 2
	jbe	.L620
.L616:
	movd	xmm1, DWORD PTR [esi]
	mov	edi, eax
	shr	edi, 2
	movd	DWORD PTR [ebx], xmm1
	cmp	edi, 1
	je	.L621
	movd	xmm2, DWORD PTR [esi+4]
	movd	DWORD PTR [ebx+4], xmm2
	cmp	edi, 2
	je	.L621
	mov	esi, DWORD PTR [esi+8]
	mov	DWORD PTR [ebx+8], esi
.L621:
	test	al, 3
	je	.L611
	and	eax, -4
	add	ebp, eax
	add	edx, eax
	sub	ecx, eax
.L620:
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ebp+0], al
	cmp	ecx, 1
	je	.L611
	movzx	ebx, BYTE PTR [edx+1]
	mov	BYTE PTR [ebp+1], bl
	cmp	ecx, 2
	je	.L611
	movzx	edx, BYTE PTR [edx+2]
	mov	BYTE PTR [ebp+2], dl
	jmp	.L611
	.p2align 4,,10
	.p2align 3
.L615:
	add	edx, eax
	jmp	.L623
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L653:
	add	ecx, 1
.L623:
	movzx	eax, BYTE PTR [ecx-1]
	add	ebx, 1
	mov	BYTE PTR [ebx-1], al
	cmp	ecx, edx
	jne	.L653
	jmp	.L611
.L625:
	mov	ebp, ebx
	mov	ecx, eax
	mov	esi, edx
	jmp	.L616
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
	je	.L656
	mov	edx, eax
	xor	eax, eax
.L656:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L657
	mov	esi, edi
	xor	edi, edi
.L657:
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
	je	.L660
	mov	eax, edx
	xor	edx, edx
.L660:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L661
	mov	edi, esi
	xor	esi, esi
.L661:
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
	movbe	ax, WORD PTR [esp+4]
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
	movbe	eax, DWORD PTR [esp+4]
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
	movbe	edx, DWORD PTR [esp+4]
	movbe	eax, DWORD PTR [esp+8]
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
	jmp	.L676
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L674:
	cmp	ecx, 32
	je	.L678
.L676:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L674
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L678:
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
	je	.L679
	mov	edx, eax
	and	edx, 1
	jne	.L679
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L681:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L681
.L679:
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
	fld	DWORD PTR .LC4
	mov	eax, 1
	fcomip	st, st(1)
	ja	.L689
	fld	DWORD PTR .LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L686
	.p2align 4,,10
	.p2align 3
.L689:
	fstp	st(0)
.L686:
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
	fld	QWORD PTR .LC6
	mov	eax, 1
	fcomip	st, st(1)
	ja	.L693
	fld	QWORD PTR .LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L690
	.p2align 4,,10
	.p2align 3
.L693:
	fstp	st(0)
.L690:
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
	mov	eax, 1
	fld	TBYTE PTR .LC8
	fcomip	st, st(1)
	ja	.L697
	fld	TBYTE PTR .LC9
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L694
	.p2align 4,,10
	.p2align 3
.L697:
	fstp	st(0)
.L694:
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
	mov	eax, DWORD PTR [esp+8]
	fucomi	st, st(0)
	jp	.L700
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L707
	jne	.L707
	jmp	.L700
	.p2align 4,,10
	.p2align 3
.L715:
	fstp	st(0)
.L700:
	ret
	.p2align 4,,10
	.p2align 3
.L707:
	fld	DWORD PTR .LC10
	test	eax, eax
	jns	.L702
	fstp	st(0)
	fld	DWORD PTR .LC11
.L702:
	test	al, 1
	je	.L703
	.p2align 4
	.p2align 3
.L704:
	fmul	st(1), st
.L703:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L715
	fmul	st, st(0)
	test	al, 1
	jne	.L704
.L714:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L704
	jmp	.L714
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
	mov	eax, DWORD PTR [esp+12]
	fucomi	st, st(0)
	jp	.L717
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L724
	jne	.L724
	jmp	.L717
	.p2align 4,,10
	.p2align 3
.L733:
	fstp	st(0)
.L717:
	ret
	.p2align 4,,10
	.p2align 3
.L724:
	test	eax, eax
	js	.L731
	fld	DWORD PTR .LC10
.L719:
	test	al, 1
	je	.L720
	.p2align 4
	.p2align 3
.L721:
	fmul	st(1), st
.L720:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L733
	fmul	st, st(0)
	test	al, 1
	jne	.L721
.L732:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L721
	jmp	.L732
	.p2align 4,,10
	.p2align 3
.L731:
	fld	DWORD PTR .LC11
	jmp	.L719
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
	mov	eax, DWORD PTR [esp+16]
	fucomi	st, st(0)
	jp	.L735
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L742
	jne	.L742
	jmp	.L735
	.p2align 4,,10
	.p2align 3
.L751:
	fstp	st(0)
.L735:
	ret
	.p2align 4,,10
	.p2align 3
.L742:
	test	eax, eax
	js	.L749
	fld	DWORD PTR .LC10
.L737:
	test	al, 1
	je	.L738
	.p2align 4
	.p2align 3
.L739:
	fmul	st(1), st
.L738:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L751
	fmul	st, st(0)
	test	al, 1
	jne	.L739
.L750:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L739
	jmp	.L750
	.p2align 4,,10
	.p2align 3
.L749:
	fld	DWORD PTR .LC11
	jmp	.L737
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
	mov	ebx, DWORD PTR [esp+24]
	test	ecx, ecx
	je	.L753
	lea	eax, [ecx-1]
	cmp	eax, 14
	jbe	.L760
	mov	edx, ecx
	mov	ebp, DWORD PTR [esp+20]
	mov	eax, ebx
	and	edx, -16
	lea	esi, [edx+ebx]
	.p2align 5
	.p2align 4
	.p2align 3
.L755:
	movdqu	xmm1, XMMWORD PTR [ebp+0]
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	ebp, 16
	pxor	xmm0, xmm1
	movups	XMMWORD PTR [ebp-16], xmm0
	cmp	eax, esi
	jne	.L755
	mov	esi, DWORD PTR [esp+20]
	mov	edi, ecx
	sub	edi, edx
	add	esi, edx
	cmp	ecx, edx
	je	.L753
.L754:
	sub	ecx, edx
	lea	ebp, [ecx-1]
	cmp	ebp, 2
	jbe	.L757
	add	ebx, edx
	add	edx, DWORD PTR [esp+20]
	mov	ebp, ecx
	movd	xmm2, DWORD PTR [edx]
	movd	xmm3, DWORD PTR [ebx]
	shr	ebp, 2
	pxor	xmm2, xmm3
	movd	DWORD PTR [edx], xmm2
	cmp	ebp, 1
	je	.L758
	movd	xmm5, DWORD PTR [edx+4]
	movd	xmm4, DWORD PTR [ebx+4]
	pxor	xmm5, xmm4
	movd	DWORD PTR [edx+4], xmm5
	cmp	ebp, 2
	je	.L758
	movd	xmm7, DWORD PTR [edx+8]
	movd	xmm6, DWORD PTR [ebx+8]
	pxor	xmm7, xmm6
	movd	DWORD PTR [edx+8], xmm7
.L758:
	mov	ebx, ecx
	and	ebx, -4
	add	esi, ebx
	add	eax, ebx
	sub	edi, ebx
	and	ecx, 3
	je	.L753
.L757:
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [esi], cl
	cmp	edi, 1
	je	.L753
	movzx	edx, BYTE PTR [eax+1]
	xor	BYTE PTR [esi+1], dl
	cmp	edi, 2
	je	.L753
	movzx	eax, BYTE PTR [eax+2]
	xor	BYTE PTR [esi+2], al
.L753:
	mov	eax, DWORD PTR [esp+20]
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
.L760:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp+20]
	mov	eax, ebx
	mov	edi, ecx
	xor	edx, edx
	jmp	.L754
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
	je	.L782
	.p2align 3
	.p2align 4
	.p2align 3
.L783:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L783
.L782:
	test	edx, edx
	jne	.L784
	jmp	.L785
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L786:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L785
.L784:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L786
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
.L785:
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
	je	.L796
.L797:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L799
.L796:
	ret
	.p2align 4,,10
	.p2align 3
.L799:
	add	eax, 1
	cmp	edx, eax
	jne	.L797
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	je	.L810
.L806:
	mov	eax, DWORD PTR [esp+12]
	jmp	.L809
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L808:
	add	eax, 1
	cmp	dl, cl
	je	.L807
.L809:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L808
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L806
.L810:
	xor	ebx, ebx
.L807:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
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
	xor	ecx, ecx
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	.p2align 4
	.p2align 4
	.p2align 3
.L816:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	.L816
	mov	eax, ecx
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
	mov	ebp, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+20]
	movzx	ebx, BYTE PTR [ebp+0]
	test	bl, bl
	je	.L831
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
.L821:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L821
	mov	esi, edx
	sub	eax, ebp
	je	.L819
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	.L841
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L844:
	add	edx, 1
	test	cl, cl
	je	.L843
.L841:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	.L844
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	.L823
	.p2align 4,,10
	.p2align 3
.L845:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L824
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L824
.L823:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	.L845
.L824:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	.L831
	add	edx, 1
	jmp	.L841
	.p2align 4,,10
	.p2align 3
.L843:
	xor	esi, esi
.L819:
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
.L831:
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
	fcomi	st, st(2)
	ja	.L856
	fxch	st(2)
	fcomi	st, st(2)
	jbe	.L857
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L849
	jmp	.L850
	.p2align 4,,10
	.p2align 3
.L857:
	fstp	st(1)
	fstp	st(1)
.L850:
	ret
	.p2align 4,,10
	.p2align 3
.L856:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L850
.L849:
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
	je	.L858
	cmp	esi, DWORD PTR [esp+32]
	jb	.L869
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L869
	movzx	ebp, BYTE PTR [edi]
	jmp	.L864
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L868:
	mov	edx, ebx
.L860:
	cmp	esi, edx
	jb	.L869
.L864:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	.L868
	cmp	DWORD PTR [esp+32], 1
	je	.L858
.L863:
	mov	eax, 1
	jmp	.L861
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L862:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	.L858
.L861:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L862
	cmp	esi, ebx
	jb	.L869
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L860
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	.L863
	.p2align 4,,10
	.p2align 3
.L869:
	xor	edx, edx
.L858:
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
	je	.L880
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
.L880:
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
	fcomi	st, st(1)
	ja	.L909
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	.L910
	fstp	st(0)
.L888:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L895:
	fld	DWORD PTR .LC11
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	.L895
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	.L885
.L912:
	fchs
.L885:
	ret
	.p2align 4,,10
	.p2align 3
.L910:
	fld	DWORD PTR .LC11
	fcomip	st, st(2)
	jbe	.L913
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L901
	jne	.L901
	jmp	.L891
	.p2align 4,,10
	.p2align 3
.L913:
	fstp	st(0)
	jmp	.L891
	.p2align 4,,10
	.p2align 3
.L914:
	fstp	st(0)
.L891:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L909:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	.L911
	fstp	st(1)
	mov	edx, 1
	jmp	.L888
	.p2align 4,,10
	.p2align 3
.L911:
	fld	DWORD PTR .LC13
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	.L914
	fstp	st(1)
	mov	edx, 1
.L889:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L897:
	fadd	st, st(0)
	fld	DWORD PTR .LC11
	sub	eax, 1
	fcomip	st, st(1)
	ja	.L897
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	.L912
	ret
.L901:
	xor	edx, edx
	jmp	.L889
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.p2align 4
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movq	xmm1, QWORD PTR [esp+8]
	movq	xmm2, QWORD PTR [esp+16]
	movdqa	xmm0, xmm1
	movd	edx, xmm1
	psrlq	xmm0, 32
	movd	eax, xmm0
	or	edx, eax
	je	.L918
	pxor	xmm3, xmm3
	.p2align 4
	.p2align 3
.L917:
	movdqa	xmm4, XMMWORD PTR .LC15
	pxor	xmm5, xmm5
	pand	xmm4, xmm1
	psrlq	xmm1, 1
	psubq	xmm5, xmm4
	movdqa	xmm7, xmm1
	movd	edx, xmm1
	pand	xmm5, xmm2
	psrlq	xmm7, 32
	paddq	xmm3, xmm5
	psllq	xmm2, 1
	movd	eax, xmm7
	movdqa	xmm6, xmm3
	or	edx, eax
	movd	ebx, xmm3
	psrlq	xmm6, 32
	movd	ecx, xmm6
	jne	.L917
	mov	eax, ebx
	mov	edx, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L918:
	.cfi_restore_state
	xor	ebx, ebx
	xor	ecx, ecx
	mov	eax, ebx
	mov	edx, ecx
	pop	ebx
	.cfi_restore 3
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
	mov	edx, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	cmp	edx, eax
	jnb	.L945
	mov	ecx, 1
	jmp	.L922
	.p2align 4,,10
	.p2align 3
.L925:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L924
	test	ecx, ecx
	je	.L924
.L922:
	test	edx, edx
	jns	.L925
.L926:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L928:
	mov	edi, eax
	mov	esi, ebp
	sub	edi, edx
	cmp	eax, edx
	setnb	bl
	test	bl, bl
	cmovne	eax, edi
	cmovne	esi, ecx
	shr	edx
	or	DWORD PTR [esp], esi
	shr	ecx
	jne	.L928
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L927:
	test	edi, edi
	cmove	eax, esi
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
.L924:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L926
	test	edi, edi
	cmove	eax, esi
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
.L945:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L927
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
	je	.L949
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
.L949:
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
	mov	ecx, 63
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	sar	ebx, 31
	mov	esi, DWORD PTR [esp+20]
	mov	edi, DWORD PTR [esp+24]
	xor	eax, ebx
	xor	edx, ebx
	xor	esi, ebx
	xor	edi, ebx
	or	eax, edx
	je	.L954
	test	edi, edi
	je	.L956
	bsr	ebp, edi
	xor	ebp, 31
.L957:
	lea	ecx, [ebp-1]
.L954:
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
.L956:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	.L957
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
	je	.L961
	.p2align 5
	.p2align 4
	.p2align 3
.L963:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L963
.L961:
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
	mov	edi, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+24]
	shr	edi, 3
	and	ecx, -8
	cmp	DWORD PTR [esp+20], ebx
	jb	.L971
	mov	eax, DWORD PTR [esp+28]
	add	eax, ebx
	cmp	eax, DWORD PTR [esp+20]
	jnb	.L1008
.L971:
	test	edi, edi
	je	.L970
	lea	ebp, [edi-1]
	cmp	ebp, 2
	jbe	.L974
	mov	esi, DWORD PTR [esp+20]
	sub	esi, ebx
	sub	esi, 4
	cmp	esi, 8
	jbe	.L974
	mov	esi, DWORD PTR [esp+28]
	mov	ebp, DWORD PTR [esp+28]
	mov	eax, ebx
	mov	edx, DWORD PTR [esp+20]
	and	esi, -16
	shr	ebp, 4
	add	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L975:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	eax, esi
	jne	.L975
	lea	eax, [ebp+ebp]
	cmp	edi, eax
	je	.L970
	sal	ebp, 4
	mov	edi, DWORD PTR [esp+20]
	movq	xmm1, QWORD PTR [ebx+ebp]
	movq	QWORD PTR [edi+ebp], xmm1
.L970:
	cmp	ecx, DWORD PTR [esp+28]
	jnb	.L967
	mov	esi, DWORD PTR [esp+28]
	sub	esi, ecx
	lea	edx, [esi-1]
	cmp	edx, 2
	jbe	.L1009
	mov	eax, DWORD PTR [esp+20]
	lea	ebp, [ebx+1+ecx]
	add	eax, ecx
	mov	edi, eax
	sub	edi, ebp
	cmp	edi, 14
	jbe	.L979
	cmp	edx, 14
	jbe	.L988
	mov	ebp, esi
	lea	edx, [ebx+ecx]
	and	ebp, -16
	lea	edi, [ebp+0+edx]
	.p2align 5
	.p2align 4
	.p2align 3
.L981:
	movdqu	xmm3, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm3
	cmp	edx, edi
	jne	.L981
	add	ecx, ebp
	mov	eax, ecx
	cmp	ebp, esi
	je	.L967
	sub	esi, ebp
	lea	edx, [esi-1]
	cmp	edx, 2
	jbe	.L983
.L980:
	lea	edx, [ebx+ecx]
	mov	edi, esi
	add	ecx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [edx]
	shr	edi, 2
	mov	DWORD PTR [ecx], ebp
	cmp	edi, 1
	je	.L984
	mov	ebp, DWORD PTR [edx+4]
	mov	DWORD PTR [ecx+4], ebp
	cmp	edi, 2
	je	.L984
	mov	edi, DWORD PTR [edx+8]
	mov	DWORD PTR [ecx+8], edi
.L984:
	mov	ecx, esi
	and	ecx, -4
	add	eax, ecx
	and	esi, 3
	je	.L967
.L983:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	esi, DWORD PTR [esp+20]
	lea	ebp, [eax+1]
	mov	BYTE PTR [esi+eax], dl
	cmp	ebp, DWORD PTR [esp+28]
	jnb	.L967
	movzx	ecx, BYTE PTR [ebx+1+eax]
	lea	edi, [eax+2]
	mov	BYTE PTR [esi+1+eax], cl
	cmp	edi, DWORD PTR [esp+28]
	jnb	.L967
	movzx	edx, BYTE PTR [ebx+2+eax]
	mov	BYTE PTR [esi+2+eax], dl
.L967:
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
.L1008:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+28]
	sub	esi, 1
	test	edx, edx
	je	.L967
	mov	ecx, DWORD PTR [esp+20]
	.p2align 4
	.p2align 4
	.p2align 3
.L972:
	movzx	eax, BYTE PTR [ebx+esi]
	mov	BYTE PTR [ecx+esi], al
	sub	esi, 1
	jnb	.L972
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
.L988:
	.cfi_restore_state
	mov	eax, ecx
	jmp	.L980
	.p2align 4,,10
	.p2align 3
.L974:
	mov	edx, DWORD PTR [esp+20]
	mov	ebp, ebx
	lea	esi, [ebx+edi*8]
	.p2align 5
	.p2align 4
	.p2align 3
.L977:
	movq	xmm2, QWORD PTR [ebp+0]
	add	ebp, 8
	add	edx, 8
	movq	QWORD PTR [edx-8], xmm2
	cmp	esi, ebp
	jne	.L977
	jmp	.L970
	.p2align 4,,10
	.p2align 3
.L1009:
	mov	eax, DWORD PTR [esp+20]
	add	eax, ecx
.L979:
	add	ecx, ebx
	add	ebx, DWORD PTR [esp+28]
	.p2align 4
	.p2align 4
	.p2align 3
.L986:
	movzx	edx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], dl
	cmp	ebx, ecx
	jne	.L986
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	ebx, DWORD PTR [esp+56]
	mov	edx, DWORD PTR [esp+48]
	mov	eax, DWORD PTR [esp+52]
	mov	ecx, ebx
	shr	ecx
	cmp	edx, eax
	jb	.L1014
	lea	esi, [eax+ebx]
	cmp	esi, edx
	jnb	.L1052
.L1014:
	test	ecx, ecx
	je	.L1013
	cmp	ecx, 1
	je	.L1017
	lea	ebp, [eax+2]
	mov	esi, edx
	sub	esi, ebp
	cmp	esi, 12
	jbe	.L1017
	lea	edi, [ecx-1]
	cmp	edi, 6
	jbe	.L1027
	mov	ebp, ebx
	mov	esi, eax
	mov	edi, edx
	shr	ebp, 4
	mov	DWORD PTR [esp+12], ebp
	mov	ebp, ebx
	and	ebp, -16
	add	ebp, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1019:
	movdqu	xmm0, XMMWORD PTR [esi]
	add	esi, 16
	add	edi, 16
	movups	XMMWORD PTR [edi-16], xmm0
	cmp	ebp, esi
	jne	.L1019
	mov	esi, DWORD PTR [esp+12]
	sal	esi, 3
	cmp	ecx, esi
	je	.L1013
	sub	ecx, esi
	cmp	ecx, 1
	je	.L1021
.L1018:
	mov	edi, ecx
	shr	edi
	mov	DWORD PTR [esp+12], edi
	lea	edi, [esi+esi]
	lea	ebp, [eax+edi]
	add	edi, edx
	cmp	DWORD PTR [esp+12], 1
	movd	xmm1, DWORD PTR [ebp+0]
	movd	DWORD PTR [edi], xmm1
	je	.L1022
	movd	xmm2, DWORD PTR [ebp+4]
	cmp	DWORD PTR [esp+12], 2
	movd	DWORD PTR [edi+4], xmm2
	je	.L1022
	mov	ebp, DWORD PTR [ebp+8]
	mov	DWORD PTR [edi+8], ebp
.L1022:
	test	cl, 1
	je	.L1013
	and	ecx, -2
	add	esi, ecx
.L1021:
	movzx	ecx, WORD PTR [eax+esi*2]
	mov	WORD PTR [edx+esi*2], cx
.L1013:
	test	bl, 1
	je	.L1010
.L1053:
	movzx	eax, BYTE PTR [eax-1+ebx]
	mov	BYTE PTR [edx-1+ebx], al
.L1010:
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
.L1052:
	.cfi_restore_state
	lea	edi, [ebx-1]
	test	ebx, ebx
	je	.L1010
	.p2align 4
	.p2align 4
	.p2align 3
.L1015:
	movzx	ebx, BYTE PTR [eax+edi]
	mov	BYTE PTR [edx+edi], bl
	sub	edi, 1
	jnb	.L1015
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
.L1027:
	.cfi_restore_state
	xor	esi, esi
	jmp	.L1018
	.p2align 4,,10
	.p2align 3
.L1017:
	mov	esi, eax
	mov	edi, edx
	lea	ebp, [eax+ecx*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L1024:
	movzx	ecx, WORD PTR [esi]
	add	esi, 2
	add	edi, 2
	mov	WORD PTR [edi-2], cx
	cmp	ebp, esi
	jne	.L1024
	test	bl, 1
	je	.L1010
	jmp	.L1053
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+48]
	mov	ecx, DWORD PTR [esp+52]
	and	eax, -4
	shr	edi, 2
	mov	DWORD PTR [esp+12], eax
	cmp	ebx, ecx
	jb	.L1059
	mov	edx, DWORD PTR [esp+56]
	add	edx, ecx
	cmp	edx, ebx
	jnb	.L1095
.L1059:
	test	edi, edi
	je	.L1096
	lea	edx, [edi-1]
	cmp	edx, 2
	jbe	.L1061
	lea	esi, [ecx+4]
	mov	ebp, ebx
	sub	ebp, esi
	cmp	ebp, 8
	jbe	.L1061
	mov	esi, DWORD PTR [esp+56]
	mov	ebp, DWORD PTR [esp+56]
	mov	eax, ecx
	mov	edx, ebx
	and	esi, -16
	shr	ebp, 4
	add	esi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L1062:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	eax, esi
	jne	.L1062
	lea	edx, [0+ebp*4]
	cmp	edi, edx
	je	.L1065
	sal	ebp, 4
	lea	esi, [edx+1]
	mov	eax, DWORD PTR [ecx+ebp]
	mov	DWORD PTR [ebx+ebp], eax
	cmp	esi, edi
	jnb	.L1065
	mov	eax, DWORD PTR [ecx+4+ebp]
	add	edx, 2
	mov	DWORD PTR [ebx+4+ebp], eax
	cmp	edx, edi
	jnb	.L1065
	mov	edi, DWORD PTR [ecx+8+ebp]
	mov	DWORD PTR [ebx+8+ebp], edi
.L1065:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+56]
	jnb	.L1054
	mov	esi, DWORD PTR [esp+56]
	sub	esi, eax
	lea	edx, [esi-1]
	cmp	edx, 2
	jbe	.L1097
	mov	edi, eax
	lea	eax, [ebx+eax]
	lea	ebp, [ecx+1+edi]
	mov	edi, eax
	sub	edi, ebp
	cmp	edi, 14
	jbe	.L1057
	cmp	edx, 14
	jbe	.L1074
	mov	ebp, DWORD PTR [esp+12]
	lea	edx, [ecx+ebp]
	mov	ebp, esi
	and	ebp, -16
	lea	edi, [edx+ebp]
	.p2align 5
	.p2align 4
	.p2align 3
.L1067:
	movdqu	xmm1, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm1
	cmp	edi, edx
	jne	.L1067
	mov	edx, DWORD PTR [esp+12]
	add	edx, ebp
	mov	eax, edx
	cmp	esi, ebp
	je	.L1054
	sub	esi, ebp
	lea	ebp, [esi-1]
	cmp	ebp, 2
	jbe	.L1069
.L1066:
	lea	edi, [ecx+edx]
	mov	ebp, esi
	add	edx, ebx
	movd	xmm2, DWORD PTR [edi]
	shr	ebp, 2
	movd	DWORD PTR [edx], xmm2
	cmp	ebp, 1
	je	.L1070
	movd	xmm3, DWORD PTR [edi+4]
	movd	DWORD PTR [edx+4], xmm3
	cmp	ebp, 2
	je	.L1070
	mov	ebp, DWORD PTR [edi+8]
	mov	DWORD PTR [edx+8], ebp
.L1070:
	mov	edx, esi
	and	edx, -4
	add	eax, edx
	and	esi, 3
	je	.L1054
.L1069:
	movzx	edx, BYTE PTR [ecx+eax]
	lea	esi, [eax+1]
	mov	BYTE PTR [ebx+eax], dl
	cmp	esi, DWORD PTR [esp+56]
	jnb	.L1054
	movzx	edx, BYTE PTR [ecx+1+eax]
	lea	edi, [eax+2]
	mov	BYTE PTR [ebx+1+eax], dl
	cmp	edi, DWORD PTR [esp+56]
	jnb	.L1054
	movzx	ecx, BYTE PTR [ecx+2+eax]
	mov	BYTE PTR [ebx+2+eax], cl
.L1054:
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
.L1095:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp+56]
	mov	ebp, DWORD PTR [esp+56]
	sub	esi, 1
	test	ebp, ebp
	je	.L1054
	.p2align 4
	.p2align 4
	.p2align 3
.L1060:
	movzx	eax, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], al
	sub	esi, 1
	jnb	.L1060
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
.L1074:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+12]
	mov	edx, eax
	jmp	.L1066
	.p2align 4,,10
	.p2align 3
.L1096:
	mov	eax, DWORD PTR [esp+12]
	add	eax, ebx
	mov	ebx, DWORD PTR [esp+56]
	test	ebx, ebx
	je	.L1054
.L1057:
	mov	ebp, DWORD PTR [esp+12]
	add	ebp, ecx
	add	ecx, DWORD PTR [esp+56]
	.p2align 5
	.p2align 4
	.p2align 3
.L1072:
	movzx	ebx, BYTE PTR [ebp+0]
	add	ebp, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ebp, ecx
	jne	.L1072
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
.L1061:
	.cfi_restore_state
	mov	ebp, ecx
	mov	edx, ebx
	lea	esi, [ecx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L1064:
	mov	eax, DWORD PTR [ebp+0]
	add	ebp, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], eax
	cmp	esi, ebp
	jne	.L1064
	jmp	.L1065
.L1097:
	add	eax, ebx
	jmp	.L1057
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
	movd	xmm0, DWORD PTR [esp+16]
	movq	QWORD PTR [esp], xmm0
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
	movd	xmm0, DWORD PTR [esp+16]
	movq	QWORD PTR [esp], xmm0
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
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	movd	xmm0, eax
	movd	xmm1, edx
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [esp+8], xmm0
	fild	QWORD PTR [esp+8]
	test	edx, edx
	jns	.L1104
	fld	DWORD PTR .LC16
	faddp	st(1), st
.L1104:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 20
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
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	movd	xmm0, eax
	movd	xmm1, edx
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [esp+8], xmm0
	fild	QWORD PTR [esp+8]
	test	edx, edx
	jns	.L1107
	fld	DWORD PTR .LC16
	faddp	st(1), st
.L1107:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 20
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
	jne	.L1113
	mov	eax, edx
	sar	eax, 14
	jne	.L1110
	mov	eax, edx
	shr	eax, 13
	jne	.L1114
	mov	eax, edx
	shr	eax, 12
	jne	.L1115
	mov	eax, edx
	shr	eax, 11
	jne	.L1116
	mov	eax, edx
	shr	eax, 10
	jne	.L1117
	mov	eax, edx
	shr	eax, 9
	jne	.L1118
	mov	eax, edx
	shr	eax, 8
	jne	.L1119
	mov	eax, edx
	shr	eax, 7
	jne	.L1120
	mov	eax, edx
	shr	eax, 6
	jne	.L1121
	mov	eax, edx
	shr	eax, 5
	jne	.L1122
	mov	eax, edx
	shr	eax, 4
	jne	.L1123
	mov	eax, edx
	shr	eax, 3
	jne	.L1124
	mov	eax, edx
	shr	eax, 2
	jne	.L1125
	shr	edx
	jne	.L1126
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1126:
	mov	eax, 14
.L1110:
	ret
.L1113:
	xor	eax, eax
	ret
.L1124:
	mov	eax, 12
	ret
.L1114:
	mov	eax, 2
	ret
.L1115:
	mov	eax, 3
	ret
.L1116:
	mov	eax, 4
	ret
.L1117:
	mov	eax, 5
	ret
.L1118:
	mov	eax, 6
	ret
.L1119:
	mov	eax, 7
	ret
.L1120:
	mov	eax, 8
	ret
.L1121:
	mov	eax, 9
	ret
.L1122:
	mov	eax, 10
	ret
.L1123:
	mov	eax, 11
	ret
.L1125:
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
	jne	.L1131
	test	al, 2
	jne	.L1132
	test	al, 4
	jne	.L1133
	test	al, 8
	jne	.L1134
	test	al, 16
	jne	.L1135
	test	al, 32
	jne	.L1136
	test	al, 64
	jne	.L1137
	test	al, -128
	jne	.L1138
	test	ah, 1
	jne	.L1139
	test	ah, 2
	jne	.L1140
	test	ah, 4
	jne	.L1141
	test	ah, 8
	jne	.L1142
	test	ah, 16
	jne	.L1143
	test	ah, 32
	jne	.L1144
	test	ah, 64
	jne	.L1145
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
.L1131:
	xor	eax, eax
	ret
.L1132:
	mov	eax, 1
	ret
.L1143:
	mov	eax, 12
	ret
.L1133:
	mov	eax, 2
	ret
.L1134:
	mov	eax, 3
	ret
.L1135:
	mov	eax, 4
	ret
.L1136:
	mov	eax, 5
	ret
.L1137:
	mov	eax, 6
	ret
.L1138:
	mov	eax, 7
	ret
.L1139:
	mov	eax, 8
	ret
.L1140:
	mov	eax, 9
	ret
.L1141:
	mov	eax, 10
	ret
.L1142:
	mov	eax, 11
	ret
.L1144:
	mov	eax, 13
	ret
.L1145:
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
	sub	esp, 4
	.cfi_def_cfa_offset 8
	fld	DWORD PTR .LC17
	fld	DWORD PTR [esp+8]
	fcomi	st, st(1)
	jnb	.L1154
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1154:
	.cfi_restore_state
	fsubrp	st(1), st
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
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
	je	.L1157
	.p2align 5
	.p2align 4
	.p2align 3
.L1159:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1159
.L1157:
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
	je	.L1163
	test	edx, edx
	je	.L1163
	.p2align 5
	.p2align 4
	.p2align 3
.L1165:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1165
.L1163:
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
	mov	edx, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	cmp	edx, eax
	jnb	.L1195
	mov	ecx, 1
	jmp	.L1172
	.p2align 4,,10
	.p2align 3
.L1175:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1174
	test	ecx, ecx
	je	.L1174
.L1172:
	test	edx, edx
	jns	.L1175
.L1176:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1178:
	mov	edi, eax
	mov	esi, ebp
	sub	edi, edx
	cmp	eax, edx
	setnb	bl
	test	bl, bl
	cmovne	eax, edi
	cmovne	esi, ecx
	shr	edx
	or	DWORD PTR [esp], esi
	shr	ecx
	jne	.L1178
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1177:
	test	edi, edi
	cmove	eax, esi
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
.L1174:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1176
	test	edi, edi
	cmove	eax, esi
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
.L1195:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1177
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
	mov	eax, -1
	fcomi	st, st(1)
	ja	.L1202
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1199
	.p2align 4,,10
	.p2align 3
.L1202:
	fstp	st(0)
	fstp	st(0)
.L1199:
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
	mov	eax, -1
	fcomi	st, st(1)
	ja	.L1206
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1203
	.p2align 4,,10
	.p2align 3
.L1206:
	fstp	st(0)
	fstp	st(0)
.L1203:
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
	js	.L1219
	je	.L1214
	xor	edi, edi
.L1211:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1213:
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
	jne	.L1213
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	neg	eax
	test	edi, edi
	cmove	eax, esi
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
.L1219:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L1211
	.p2align 4,,10
	.p2align 3
.L1214:
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
	mov	eax, 1
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
	sub	esp, 8
	.cfi_def_cfa_offset 28
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+32]
	test	ebx, ebx
	jns	.L1221
	neg	ebx
	xor	eax, eax
	mov	edi, 1
.L1221:
	test	esi, esi
	jns	.L1222
	neg	esi
	mov	edi, eax
.L1222:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	.L1223
	jmp	.L1247
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1253:
	test	eax, eax
	je	.L1228
.L1223:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	.L1253
.L1228:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	.L1248
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1225:
	mov	edi, ecx
	mov	esi, ebp
	sub	edi, edx
	cmp	ecx, edx
	setnb	bl
	test	bl, bl
	cmovne	ecx, edi
	cmovne	esi, eax
	shr	edx
	or	DWORD PTR [esp], esi
	shr	eax
	jne	.L1225
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
.L1226:
	mov	eax, ebp
	neg	eax
	test	edi, edi
	cmove	eax, ebp
	add	esp, 8
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
.L1248:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	.L1226
.L1247:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	.L1226
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
	jns	.L1255
	neg	ebx
	mov	esi, 1
.L1255:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	.L1256
	jmp	.L1280
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1284:
	test	edx, edx
	je	.L1276
.L1256:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	.L1284
	test	edx, edx
	je	.L1276
	.p2align 4
	.p2align 4
	.p2align 3
.L1258:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	.L1258
.L1259:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	neg	eax
	test	esi, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1276:
	.cfi_restore_state
	mov	ecx, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	mov	eax, ecx
	neg	eax
	test	esi, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	cmove	eax, ecx
	ret
.L1280:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	.L1259
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
	mov	ecx, 1
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
	mov	eax, DWORD PTR [esp+28]
	mov	ebp, esi
	mov	edx, eax
	cmp	ax, si
	jb	.L1286
	jmp	.L1354
	.p2align 4,,10
	.p2align 3
.L1289:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	.L1288
	test	ax, ax
	je	.L1288
	mov	ecx, eax
	mov	edx, ebx
.L1286:
	test	dx, dx
	jns	.L1289
	mov	ebp, esi
	mov	ebx, ecx
	sub	ebp, edx
	cmp	dx, si
	cmova	ebp, esi
	xor	eax, eax
	cmp	si, dx
	mov	esi, edx
	cmovnb	eax, ecx
	shr	si
	shr	bx
	mov	WORD PTR [esp+2], bx
	mov	edi, eax
	je	.L1355
.L1293:
	mov	eax, ebp
	sub	eax, esi
	cmp	bp, si
	mov	esi, 0
	setnb	bl
	test	bl, bl
	cmovne	si, WORD PTR [esp+2]
	mov	ebx, ecx
	cmovne	ebp, eax
	mov	eax, edx
	or	esi, edi
	shr	ax, 2
	shr	bx, 2
	mov	WORD PTR [esp+2], si
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 3
	shr	bx, 3
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 4
	shr	bx, 4
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 5
	shr	bx, 5
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 6
	shr	bx, 6
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 7
	shr	bx, 7
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 8
	shr	bx, 8
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 9
	shr	bx, 9
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 10
	shr	bx, 10
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 11
	shr	bx, 11
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 12
	shr	bx, 12
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 13
	shr	bx, 13
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	mov	eax, edx
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	mov	ebx, ecx
	shr	ax, 14
	shr	bx, 14
	je	.L1291
	mov	edi, ebp
	mov	esi, 0
	sub	edi, eax
	cmp	bp, ax
	setnb	al
	test	al, al
	cmove	ebx, esi
	cmovne	ebp, edi
	or	WORD PTR [esp+2], bx
	shr	dx, 15
	movzx	ebx, WORD PTR [esp+2]
	test	cx, cx
	jns	.L1291
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
.L1291:
	mov	eax, DWORD PTR [esp+32]
	test	eax, eax
	movzx	eax, WORD PTR [esp+2]
	cmovne	eax, ebp
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
.L1288:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	.L1291
	sub	ebp, ebx
	cmp	bx, si
	cmova	ebp, esi
	xor	edi, edi
	cmp	si, bx
	cmovnb	edi, eax
	and	cx, 32767
	and	dx, 32767
	mov	WORD PTR [esp+2], cx
	mov	esi, edx
	mov	ecx, eax
	mov	edx, ebx
	jmp	.L1293
.L1354:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	.L1291
.L1355:
	mov	WORD PTR [esp+2], ax
	jmp	.L1291
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
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
	mov	edx, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	cmp	edx, eax
	jnb	.L1380
	mov	ecx, 1
	jmp	.L1357
	.p2align 4,,10
	.p2align 3
.L1360:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1359
	test	ecx, ecx
	je	.L1359
.L1357:
	test	edx, edx
	jns	.L1360
.L1361:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1363:
	mov	edi, eax
	mov	esi, ebp
	sub	edi, edx
	cmp	eax, edx
	setnb	bl
	test	bl, bl
	cmovne	eax, edi
	cmovne	esi, ecx
	shr	edx
	or	DWORD PTR [esp], esi
	shr	ecx
	jne	.L1363
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1362:
	test	edi, edi
	cmove	eax, esi
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
.L1359:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1361
	test	edi, edi
	cmove	eax, esi
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
.L1380:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1362
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
	je	.L1385
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
.L1385:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1388
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
.L1388:
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
	je	.L1391
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
.L1391:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1394
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
.L1394:
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
	movbe	edx, DWORD PTR [esp+4]
	movbe	eax, DWORD PTR [esp+8]
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
	movbe	eax, DWORD PTR [esp+4]
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
	mov	edx, 0
	cmovne	eax, edx
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
	xor	eax, eax
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	.L1400
	mov	eax, 2
	jg	.L1400
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1400
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1400:
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
	jl	.L1407
	mov	eax, 1
	jg	.L1407
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1407
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1407:
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
	je	.L1416
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
.L1416:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1419
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
.L1419:
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
	movdqa	xmm2, XMMWORD PTR .LC18
	movq	xmm0, QWORD PTR [esp+4]
	movdqa	xmm3, XMMWORD PTR .LC19
	movdqa	xmm4, XMMWORD PTR .LC20
	movdqa	xmm1, xmm0
	psrlq	xmm1, 1
	pand	xmm1, xmm2
	psubq	xmm0, xmm1
	movdqa	xmm1, xmm0
	pand	xmm0, xmm3
	psrlq	xmm1, 2
	pand	xmm1, xmm3
	paddq	xmm1, xmm0
	movdqa	xmm0, xmm1
	psrlq	xmm0, 4
	paddq	xmm0, xmm1
	pand	xmm0, xmm4
	movd	edx, xmm0
	psrlq	xmm0, 32
	movd	eax, xmm0
	add	eax, edx
	mov	ecx, eax
	shr	ecx, 16
	add	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	add	eax, ecx
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
	je	.L1431
	jmp	.L1433
	.p2align 4,,10
	.p2align 3
.L1438:
	fxch	st(1)
	jmp	.L1433
	.p2align 4,,10
	.p2align 3
.L1439:
	fxch	st(1)
.L1433:
	fmul	st, st(1)
.L1431:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1432
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1438
.L1437:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1439
	jmp	.L1437
	.p2align 4,,10
	.p2align 3
.L1432:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1430
	fld1
	fdivrp	st(1), st
.L1430:
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
	je	.L1441
	jmp	.L1443
	.p2align 4,,10
	.p2align 3
.L1448:
	fxch	st(1)
	jmp	.L1443
	.p2align 4,,10
	.p2align 3
.L1449:
	fxch	st(1)
.L1443:
	fmul	st, st(1)
.L1441:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1442
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1448
.L1447:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1449
	jmp	.L1447
	.p2align 4,,10
	.p2align 3
.L1442:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1440
	fld1
	fdivrp	st(1), st
.L1440:
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
	jb	.L1450
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1450
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1450
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1450:
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
	jb	.L1457
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1457
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1457
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1457:
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
.LC4:
	.long	-8388609
	.align 4
.LC5:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
	.long	-1
	.long	-1048577
	.align 8
.LC7:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC8:
	.long	-1
	.long	-1
	.long	65534
	.align 16
	.align 16
.LC9:
	.long	-1
	.long	-1
	.long	32766
	.align 16
	.section	.rodata.cst4
	.align 4
.LC10:
	.long	1073741824
	.align 4
.LC11:
	.long	1056964608
	.align 4
.LC13:
	.long	-1090519040
	.section	.rodata.cst16
	.align 16
.LC15:
	.long	1
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC16:
	.long	1602224128
	.align 4
.LC17:
	.long	1191182336
	.section	.rodata.cst16
	.align 16
.LC18:
	.long	1431655765
	.long	1431655765
	.long	0
	.long	0
	.align 16
.LC19:
	.long	858993459
	.long	858993459
	.long	0
	.long	0
	.align 16
.LC20:
	.long	252645135
	.long	252645135
	.long	0
	.long	0
	.globl	__divmoddi4
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
