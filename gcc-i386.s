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
	mov	esi, DWORD PTR [esp+48]
	mov	eax, DWORD PTR [esp+52]
	mov	ecx, DWORD PTR [esp+56]
	cmp	eax, esi
	jnb	.L2
	test	ecx, ecx
	je	.L3
	lea	ebx, [ecx-1]
	cmp	ebx, 2
	jbe	.L67
	lea	edi, [eax-2+ecx]
	mov	ebp, esi
	sub	ebp, edi
	lea	edx, [ebp+14+ebx]
	cmp	edx, 14
	jbe	.L67
	lea	edi, [esi+ecx]
	lea	ebp, [eax+ecx]
	mov	DWORD PTR [esp+4], edi
	cmp	ebx, 14
	jbe	.L23
	lea	ebx, [ecx-16]
	mov	edi, ecx
	lea	edx, [eax+ebx]
	add	ebx, esi
	and	edi, -16
	mov	DWORD PTR [esp+8], ebx
	mov	ebx, edx
	sub	ebx, edi
	mov	DWORD PTR [esp+12], edi
	mov	edi, ebx
	mov	ebx, DWORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
.L6:
	movdqu	xmm3, XMMWORD PTR [edx]
	sub	edx, 16
	sub	ebx, 16
	movups	XMMWORD PTR [ebx+16], xmm3
	cmp	edi, edx
	jne	.L6
	mov	edi, DWORD PTR [esp+12]
	mov	edx, ecx
	sub	DWORD PTR [esp+4], edi
	sub	ebp, edi
	sub	edx, edi
	cmp	ecx, edi
	je	.L3
	lea	ebx, [edx-1]
	mov	ecx, edx
	cmp	ebx, 2
	jbe	.L8
.L5:
	lea	ebx, [ecx-4]
	mov	edi, ecx
	add	eax, ebx
	shr	edi, 2
	add	ebx, esi
	movd	xmm4, DWORD PTR [eax]
	movd	DWORD PTR [ebx], xmm4
	cmp	edi, 1
	je	.L9
	movd	xmm5, DWORD PTR [eax-4]
	movd	DWORD PTR [ebx-4], xmm5
	cmp	edi, 2
	je	.L9
	mov	eax, DWORD PTR [eax-8]
	mov	DWORD PTR [ebx-8], eax
.L9:
	mov	edi, ecx
	and	edi, -4
	sub	DWORD PTR [esp+4], edi
	sub	ebp, edi
	sub	edx, edi
	and	ecx, 3
	je	.L3
.L8:
	movzx	ebx, BYTE PTR [ebp-1]
	mov	ecx, DWORD PTR [esp+4]
	mov	BYTE PTR [ecx-1], bl
	cmp	edx, 1
	je	.L3
	movzx	eax, BYTE PTR [ebp-2]
	mov	BYTE PTR [ecx-2], al
	cmp	edx, 2
	je	.L3
	movzx	edx, BYTE PTR [ebp-3]
	mov	BYTE PTR [ecx-3], dl
.L3:
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
.L2:
	.cfi_restore_state
	cmp	esi, eax
	je	.L3
	test	ecx, ecx
	je	.L3
	lea	edx, [ecx-1]
	lea	ebx, [eax+1]
	cmp	edx, 2
	jbe	.L13
	mov	edi, esi
	sub	edi, ebx
	cmp	edi, 14
	jbe	.L13
	cmp	edx, 14
	jbe	.L24
	mov	ebx, ecx
	mov	edi, esi
	and	ebx, -16
	lea	edx, [eax+ebx]
	.p2align 5
	.p2align 4
	.p2align 3
.L15:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edi, 16
	movups	XMMWORD PTR [edi-16], xmm0
	cmp	edx, eax
	jne	.L15
	lea	edi, [esi+ebx]
	mov	eax, edx
	mov	DWORD PTR [esp+4], edi
	mov	ebp, edi
	mov	edi, ecx
	sub	edi, ebx
	cmp	ecx, ebx
	je	.L3
	lea	ebx, [edi-1]
	mov	ecx, edi
	cmp	ebx, 2
	jbe	.L18
.L14:
	movd	xmm1, DWORD PTR [edx]
	mov	ebx, ecx
	shr	ebx, 2
	movd	DWORD PTR [ebp+0], xmm1
	cmp	ebx, 1
	je	.L19
	movd	xmm2, DWORD PTR [edx+4]
	movd	DWORD PTR [ebp+4], xmm2
	cmp	ebx, 2
	je	.L19
	mov	edx, DWORD PTR [edx+8]
	mov	DWORD PTR [ebp+8], edx
.L19:
	test	cl, 3
	je	.L3
	and	ecx, -4
	add	DWORD PTR [esp+4], ecx
	add	eax, ecx
	sub	edi, ecx
.L18:
	movzx	ebx, BYTE PTR [eax]
	mov	ecx, DWORD PTR [esp+4]
	mov	BYTE PTR [ecx], bl
	cmp	edi, 1
	je	.L3
	movzx	edx, BYTE PTR [eax+1]
	mov	BYTE PTR [ecx+1], dl
	cmp	edi, 2
	je	.L3
	movzx	eax, BYTE PTR [eax+2]
	mov	BYTE PTR [ecx+2], al
	jmp	.L3
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L72:
	sub	ebx, 1
.L67:
	movzx	edx, BYTE PTR [eax-1+ecx]
	mov	BYTE PTR [esi-1+ecx], dl
	mov	ecx, ebx
	test	ebx, ebx
	jne	.L72
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L13:
	add	ecx, esi
	mov	ebp, esi
	jmp	.L21
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L73:
	add	ebx, 1
.L21:
	movzx	edx, BYTE PTR [ebx-1]
	add	ebp, 1
	mov	BYTE PTR [ebp-1], dl
	cmp	ebp, ecx
	jne	.L73
	jmp	.L3
.L23:
	mov	edx, ecx
	jmp	.L5
.L24:
	mov	DWORD PTR [esp+4], esi
	mov	edi, ecx
	mov	edx, eax
	mov	ebp, esi
	jmp	.L14
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
	jne	.L75
	jmp	.L77
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L78:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L77
.L75:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L78
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
.L77:
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
	jne	.L87
	jmp	.L90
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L89:
	add	eax, 1
	sub	edx, 1
	je	.L90
.L87:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L89
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L90:
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
	jne	.L96
	jmp	.L95
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L98:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L100
.L96:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L98
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L95:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L100:
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
	je	.L108
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
.L108:
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
	jmp	.L114
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L116:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L113
.L114:
	cmp	eax, ebx
	jne	.L116
	xor	edx, edx
.L113:
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
	je	.L121
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
.L121:
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
	je	.L124
	.p2align 4
	.p2align 4
	.p2align 3
.L125:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L125
.L124:
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
	jne	.L131
	jmp	.L130
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L133:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L130
.L131:
	cmp	eax, ecx
	jne	.L133
.L130:
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
	jmp	.L140
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L144:
	add	eax, 1
	test	cl, cl
	je	.L143
.L140:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L144
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L143:
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
	je	.L146
	jmp	.L147
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L148:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	.L147
.L146:
	test	al, al
	jne	.L148
	xor	eax, eax
.L147:
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
	je	.L157
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L156:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L156
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L157:
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
	je	.L159
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L163
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L180:
	cmp	edx, ebp
	je	.L162
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L179
	mov	edx, esi
.L163:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	.L180
.L162:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
.L159:
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
.L179:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	.L162
.L178:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	.L162
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
	mov	ecx, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+20]
	cmp	ecx, 1
	jle	.L181
	mov	ebx, ecx
	lea	eax, [ecx-2]
	shr	ebx
	lea	ebp, [ebx-1]
	cmp	eax, 13
	jbe	.L189
	mov	esi, ecx
	mov	edx, DWORD PTR [esp+24]
	and	ecx, -16
	mov	eax, edi
	movdqa	xmm1, XMMWORD PTR .LC0
	shr	esi, 4
	add	ecx, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L184:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	pshufb	xmm0, xmm1
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	eax, ecx
	jne	.L184
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [0+esi*8]
	sal	esi, 4
	add	edx, esi
	add	esi, edi
	cmp	ebx, eax
	je	.L181
.L183:
	sub	ebx, eax
	cmp	ebp, eax
	je	.L186
	movdqa	xmm3, XMMWORD PTR .LC1
	add	eax, eax
	mov	ecx, ebx
	add	edi, eax
	shr	ecx
	add	eax, DWORD PTR [esp+24]
	movd	xmm2, DWORD PTR [edi]
	pshufb	xmm2, xmm3
	movd	DWORD PTR [eax], xmm2
	cmp	ecx, 1
	je	.L187
	movd	xmm4, DWORD PTR [edi+4]
	pshufb	xmm4, xmm3
	movd	DWORD PTR [eax+4], xmm4
	cmp	ecx, 2
	je	.L187
	movd	xmm5, DWORD PTR [edi+8]
	pshufb	xmm5, xmm3
	movd	DWORD PTR [eax+8], xmm5
.L187:
	test	bl, 1
	je	.L181
	and	ebx, -2
	add	ebx, ebx
	add	edx, ebx
	add	esi, ebx
.L186:
	movbe	di, WORD PTR [esi]
	mov	WORD PTR [edx], di
.L181:
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
.L189:
	.cfi_restore_state
	mov	edx, DWORD PTR [esp+24]
	mov	esi, edi
	xor	eax, eax
	jmp	.L183
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
	jbe	.L213
	cmp	eax, 31
	jbe	.L213
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L211
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L213:
	mov	edx, 1
.L211:
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
	jbe	.L222
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L219
	cmp	eax, 8231
	jbe	.L219
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L216
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L216
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L219:
	mov	edx, 1
.L216:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L222:
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
	jbe	.L223
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L223:
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
	jp	.L235
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L231
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L234
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L235:
	fstp	st(1)
.L227:
	ret
	.p2align 4,,10
	.p2align 3
.L231:
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
	jp	.L244
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L240
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L243
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L243:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L244:
	fstp	st(1)
.L236:
	ret
	.p2align 4,,10
	.p2align 3
.L240:
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
	jp	.L250
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L253
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
	je	.L247
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L250:
	fstp	st(0)
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L253:
	fstp	st(0)
.L245:
	ret
	.p2align 4,,10
	.p2align 3
.L247:
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
	jp	.L259
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L262
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
	je	.L256
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L259:
	fstp	st(0)
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L262:
	fstp	st(0)
.L254:
	ret
	.p2align 4,,10
	.p2align 3
.L256:
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
	jp	.L274
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L275
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
	jne	.L273
	fcomi	st, st(1)
	jbe	.L276
	fstp	st(1)
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L275:
	fstp	st(0)
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L276:
	fstp	st(0)
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L277:
	fstp	st(0)
.L269:
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L274:
	fstp	st(0)
.L263:
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	test	edx, edx
	je	.L277
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
	jp	.L286
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L284
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
	je	.L280
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L284:
	fstp	st(0)
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L286:
	fstp	st(0)
.L278:
	ret
	.p2align 4,,10
	.p2align 3
.L280:
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
	jp	.L295
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L293
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
	je	.L289
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L293:
	fstp	st(0)
	jmp	.L287
	.p2align 4,,10
	.p2align 3
.L295:
	fstp	st(0)
.L287:
	ret
	.p2align 4,,10
	.p2align 3
.L289:
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
	jp	.L307
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L308
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
	jne	.L306
	fcomi	st, st(1)
	jbe	.L309
	fstp	st(0)
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L307:
	fstp	st(0)
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L309:
	fstp	st(1)
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L310:
	fstp	st(1)
.L301:
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L308:
	fstp	st(0)
.L296:
	ret
	.p2align 4,,10
	.p2align 3
.L306:
	test	edx, edx
	je	.L310
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
	je	.L312
	.p2align 5
	.p2align 4
	.p2align 3
.L313:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L313
.L312:
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
	je	.L324
	movd	xmm0, DWORD PTR [eax]
	movd	xmm1, eax
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	.L318
	mov	DWORD PTR [ecx+4], edx
.L318:
	ret
	.p2align 4,,10
	.p2align 3
.L324:
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
	je	.L326
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L326:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L325
	mov	DWORD PTR [eax], edx
.L325:
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
	je	.L335
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, DWORD PTR [esp+52]
	xor	ebx, ebx
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L352:
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	je	.L351
.L337:
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
	jne	.L352
.L334:
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
.L351:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L335:
	mov	edx, DWORD PTR [esp+56]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	DWORD PTR [edx], eax
	mov	esi, ecx
	test	edi, edi
	je	.L334
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
	je	.L354
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, ebp
	xor	edi, edi
	mov	ebp, ebx
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L366:
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	je	.L354
.L356:
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
	jne	.L366
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
.L354:
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
	movd	xmm0, DWORD PTR [esp+4]
	pabsd	xmm1, xmm0
	movd	eax, xmm1
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
	jbe	.L391
	mov	edx, ecx
	jmp	.L395
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
.L395:
	cmp	dl, 32
	je	.L391
	cmp	dl, 43
	je	.L372
	cmp	dl, 45
	jne	.L396
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L381
	mov	ebp, 1
.L375:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L378:
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
	jbe	.L378
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
.L396:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L375
.L381:
	xor	eax, eax
.L397:
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
.L372:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L375
	xor	eax, eax
	jmp	.L397
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
	jbe	.L419
	mov	edx, ecx
	jmp	.L422
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L419:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L419
.L422:
	cmp	dl, 32
	je	.L419
	cmp	dl, 43
	je	.L402
	cmp	dl, 45
	je	.L423
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L410
.L404:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L407:
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
	jbe	.L407
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
.L423:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L404
.L410:
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
.L402:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L410
	xor	ebp, ebp
	jmp	.L404
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
	jbe	.L447
	mov	eax, ecx
	jmp	.L451
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L447:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	esi, [ecx-9]
	mov	eax, ecx
	cmp	esi, 4
	jbe	.L447
.L451:
	cmp	al, 32
	je	.L447
	cmp	al, 43
	je	.L428
	cmp	al, 45
	jne	.L452
	lea	ecx, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L437
	mov	ebx, 1
.L431:
	pxor	xmm2, xmm2
	.p2align 4
	.p2align 3
.L434:
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
	jbe	.L434
	test	ebx, ebx
	jne	.L424
	movdqa	xmm2, xmm3
	psubq	xmm2, xmm0
	movd	edi, xmm2
	psrlq	xmm2, 32
	movd	edx, xmm2
.L424:
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
.L452:
	.cfi_restore_state
	lea	esi, [ecx-48]
	xor	ebx, ebx
	mov	ecx, edx
	cmp	esi, 9
	jbe	.L431
.L437:
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
.L428:
	.cfi_restore_state
	movsx	edi, BYTE PTR [edx+1]
	lea	ecx, [edx+1]
	xor	ebx, ebx
	mov	eax, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L431
	jmp	.L437
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
.L468:
	test	ebx, ebx
	je	.L454
.L469:
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
	js	.L458
	je	.L453
	sub	ebx, 1
	lea	eax, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L469
.L454:
	xor	ebp, ebp
.L453:
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
.L458:
	.cfi_restore_state
	mov	ebx, esi
	jmp	.L468
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
	je	.L475
	.p2align 4
	.p2align 3
.L483:
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
	je	.L470
	jle	.L473
	lea	ebp, [ebp-1]
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L483
.L475:
	xor	ebx, ebx
.L470:
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
.L473:
	.cfi_restore_state
	test	esi, esi
	je	.L475
	mov	ebp, esi
	jmp	.L483
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
	movd	xmm0, DWORD PTR [esp+4]
	pabsd	xmm1, xmm0
	movd	eax, xmm1
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
	jne	.L499
	jmp	.L502
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L501:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L502
.L499:
	cmp	ecx, edx
	jne	.L501
	ret
	.p2align 4,,10
	.p2align 3
.L502:
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
	je	.L507
	jmp	.L508
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L509:
	mov	eax, DWORD PTR [edx+4]
	mov	ebx, DWORD PTR [ecx+4]
	add	edx, 4
	add	ecx, 4
	cmp	eax, ebx
	jne	.L508
.L507:
	test	eax, eax
	jne	.L509
.L508:
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
.L516:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L516
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
	je	.L522
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L521:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L521
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L522:
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
	jne	.L525
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L539:
	test	ebx, ebx
	je	.L529
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L531
.L525:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L539
.L529:
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
.L531:
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
	jne	.L541
	jmp	.L544
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L543:
	add	eax, 4
	sub	edx, 1
	je	.L544
.L541:
	cmp	DWORD PTR [eax], ecx
	jne	.L543
	ret
	.p2align 4,,10
	.p2align 3
.L544:
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
	jne	.L549
	jmp	.L548
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L551:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L554
.L549:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L551
	cmp	ebx, DWORD PTR [edx]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
.L548:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L554:
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
	je	.L562
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
.L562:
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
	je	.L593
	mov	eax, ebx
	lea	edx, [0+edi*4]
	lea	ecx, [edi-1]
	sub	eax, esi
	cmp	eax, edx
	jnb	.L617
	test	edi, edi
	je	.L593
	cmp	ecx, 2
	jbe	.L612
	mov	ebp, ebx
	sub	ebp, esi
	add	ebp, 12
	cmp	ebp, 8
	jbe	.L612
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
.L573:
	movdqu	xmm1, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	movups	XMMWORD PTR [edx+16], xmm1
	cmp	ebp, eax
	jne	.L573
	mov	eax, edi
	and	eax, -4
	sub	ecx, eax
	and	edi, 3
	je	.L593
	mov	edi, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edi
	test	ecx, ecx
	je	.L593
	sub	ecx, 1
	mov	edx, DWORD PTR [esi+ecx*4]
	lea	ebp, [0+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edx
	je	.L593
	mov	ecx, DWORD PTR [esi-4+ebp]
	mov	DWORD PTR [ebx-4+ebp], ecx
.L593:
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
.L617:
	.cfi_restore_state
	test	edi, edi
	je	.L593
	cmp	ecx, 2
	jbe	.L584
	lea	ebp, [esi+4]
	mov	edx, ebx
	sub	edx, ebp
	cmp	edx, 8
	jbe	.L585
	mov	ebp, edi
	xor	eax, eax
	shr	ebp, 2
	.p2align 5
	.p2align 4
	.p2align 3
.L579:
	mov	edx, eax
	add	eax, 1
	sal	edx, 4
	movdqu	xmm0, XMMWORD PTR [esi+edx]
	movups	XMMWORD PTR [ebx+edx], xmm0
	cmp	ebp, eax
	jne	.L579
	mov	ebp, edi
	and	ebp, -4
	sub	ecx, ebp
	sal	ebp, 2
	add	esi, ebp
	add	ebp, ebx
	and	edi, 3
	je	.L593
	mov	edi, DWORD PTR [esi]
	mov	DWORD PTR [ebp+0], edi
	test	ecx, ecx
	je	.L593
	mov	eax, DWORD PTR [esi+4]
	mov	DWORD PTR [ebp+4], eax
	cmp	ecx, 1
	je	.L593
	mov	esi, DWORD PTR [esi+8]
	mov	DWORD PTR [ebp+8], esi
	jmp	.L593
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L612:
	mov	eax, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], eax
	sub	ecx, 1
	jb	.L593
	mov	eax, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], eax
	sub	ecx, 1
	jnb	.L612
	jmp	.L593
	.p2align 4,,10
	.p2align 3
.L584:
	mov	edx, ebx
	lea	ebp, [esi+4]
	jmp	.L613
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L618:
	add	ebp, 4
.L613:
	mov	edi, DWORD PTR [ebp-4]
	add	edx, 4
	mov	DWORD PTR [edx-4], edi
	sub	ecx, 1
	jb	.L593
	jmp	.L618
.L585:
	mov	edx, ebx
	jmp	.L613
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
	je	.L620
	lea	edi, [esi-1]
	cmp	edi, 2
	jbe	.L624
	mov	ebx, esi
	movd	xmm1, ebp
	xor	eax, eax
	shr	ebx, 2
	pshufd	xmm0, xmm1, 0
	.p2align 4
	.p2align 4
	.p2align 3
.L622:
	mov	edx, eax
	add	eax, 1
	sal	edx, 4
	movups	XMMWORD PTR [ecx+edx], xmm0
	cmp	ebx, eax
	jne	.L622
	test	esi, 3
	je	.L620
	and	esi, -4
	sub	edi, esi
	lea	eax, [ecx+esi*4]
.L621:
	mov	DWORD PTR [eax], ebp
	test	edi, edi
	je	.L620
	mov	DWORD PTR [eax+4], ebp
	cmp	edi, 1
	je	.L620
	mov	DWORD PTR [eax+8], ebp
.L620:
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
.L624:
	.cfi_restore_state
	mov	eax, ecx
	jmp	.L621
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	esi, DWORD PTR [esp+52]
	mov	ecx, DWORD PTR [esp+56]
	cmp	eax, esi
	jnb	.L640
	test	ecx, ecx
	je	.L639
	lea	ebx, [ecx-1]
	cmp	ebx, 2
	jbe	.L705
	lea	ebp, [eax-2+ecx]
	mov	edx, esi
	sub	edx, ebp
	lea	edi, [edx+14+ebx]
	cmp	edi, 14
	jbe	.L705
	lea	edx, [esi+ecx]
	lea	ebp, [eax+ecx]
	mov	DWORD PTR [esp+4], edx
	cmp	ebx, 14
	jbe	.L661
	lea	ebx, [ecx-16]
	mov	edi, ecx
	lea	edx, [eax+ebx]
	add	ebx, esi
	and	edi, -16
	mov	DWORD PTR [esp+8], ebx
	mov	ebx, edx
	sub	ebx, edi
	mov	DWORD PTR [esp+12], edi
	mov	edi, ebx
	mov	ebx, DWORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
.L644:
	movdqu	xmm3, XMMWORD PTR [edx]
	sub	edx, 16
	sub	ebx, 16
	movups	XMMWORD PTR [ebx+16], xmm3
	cmp	edi, edx
	jne	.L644
	mov	edi, DWORD PTR [esp+12]
	mov	edx, ecx
	sub	DWORD PTR [esp+4], edi
	sub	ebp, edi
	sub	edx, edi
	cmp	ecx, edi
	je	.L639
	lea	ebx, [edx-1]
	mov	ecx, edx
	cmp	ebx, 2
	jbe	.L646
.L643:
	lea	ebx, [ecx-4]
	mov	edi, ecx
	add	eax, ebx
	add	ebx, esi
	shr	edi, 2
	mov	esi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], esi
	cmp	edi, 1
	je	.L647
	mov	esi, DWORD PTR [eax-4]
	mov	DWORD PTR [ebx-4], esi
	cmp	edi, 2
	je	.L647
	mov	eax, DWORD PTR [eax-8]
	mov	DWORD PTR [ebx-8], eax
.L647:
	mov	edi, ecx
	and	edi, -4
	sub	DWORD PTR [esp+4], edi
	sub	ebp, edi
	sub	edx, edi
	and	ecx, 3
	je	.L639
.L646:
	movzx	ecx, BYTE PTR [ebp-1]
	mov	ebx, DWORD PTR [esp+4]
	mov	BYTE PTR [ebx-1], cl
	cmp	edx, 1
	je	.L639
	movzx	eax, BYTE PTR [ebp-2]
	mov	BYTE PTR [ebx-2], al
	cmp	edx, 2
	je	.L639
	movzx	edx, BYTE PTR [ebp-3]
	mov	BYTE PTR [ebx-3], dl
.L639:
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
.L640:
	.cfi_restore_state
	je	.L639
	test	ecx, ecx
	je	.L639
	lea	ebx, [ecx-1]
	lea	edx, [eax+1]
	cmp	ebx, 2
	jbe	.L651
	mov	edi, esi
	sub	edi, edx
	cmp	edi, 14
	jbe	.L651
	cmp	ebx, 14
	jbe	.L662
	mov	edi, ecx
	mov	ebp, esi
	and	edi, -16
	lea	ebx, [eax+edi]
	.p2align 5
	.p2align 4
	.p2align 3
.L653:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	ebp, 16
	movups	XMMWORD PTR [ebp-16], xmm0
	cmp	ebx, eax
	jne	.L653
	add	esi, edi
	mov	edx, ecx
	mov	eax, ebx
	mov	ebp, esi
	sub	edx, edi
	cmp	ecx, edi
	je	.L639
	lea	edi, [edx-1]
	mov	ecx, edx
	cmp	edi, 2
	jbe	.L656
.L652:
	movd	xmm1, DWORD PTR [ebx]
	mov	edi, ecx
	shr	edi, 2
	movd	DWORD PTR [esi], xmm1
	cmp	edi, 1
	je	.L657
	movd	xmm2, DWORD PTR [ebx+4]
	movd	DWORD PTR [esi+4], xmm2
	cmp	edi, 2
	je	.L657
	mov	ebx, DWORD PTR [ebx+8]
	mov	DWORD PTR [esi+8], ebx
.L657:
	test	cl, 3
	je	.L639
	and	ecx, -4
	add	ebp, ecx
	add	eax, ecx
	sub	edx, ecx
.L656:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [ebp+0], cl
	cmp	edx, 1
	je	.L639
	movzx	ebx, BYTE PTR [eax+1]
	mov	BYTE PTR [ebp+1], bl
	cmp	edx, 2
	je	.L639
	movzx	eax, BYTE PTR [eax+2]
	mov	BYTE PTR [ebp+2], al
	jmp	.L639
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L707:
	sub	ebx, 1
.L705:
	movzx	edx, BYTE PTR [eax-1+ecx]
	mov	BYTE PTR [esi-1+ecx], dl
	mov	ecx, ebx
	test	ebx, ebx
	jne	.L707
	jmp	.L639
	.p2align 4,,10
	.p2align 3
.L651:
	add	eax, ecx
	jmp	.L659
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L708:
	add	edx, 1
.L659:
	movzx	ecx, BYTE PTR [edx-1]
	add	esi, 1
	mov	BYTE PTR [esi-1], cl
	cmp	edx, eax
	jne	.L708
	jmp	.L639
.L661:
	mov	edx, ecx
	jmp	.L643
.L662:
	mov	ebp, esi
	mov	edx, ecx
	mov	ebx, eax
	jmp	.L652
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
	je	.L711
	mov	edx, eax
	xor	eax, eax
.L711:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L712
	mov	esi, edi
	xor	edi, edi
.L712:
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
	je	.L715
	mov	eax, edx
	xor	edx, edx
.L715:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L716
	mov	edi, esi
	xor	esi, esi
.L716:
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
	jmp	.L731
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L729:
	cmp	ecx, 32
	je	.L733
.L731:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L729
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L733:
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
	je	.L734
	mov	edx, eax
	and	edx, 1
	jne	.L734
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L736:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L736
.L734:
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
	ja	.L744
	fld	DWORD PTR .LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L741
	.p2align 4,,10
	.p2align 3
.L744:
	fstp	st(0)
.L741:
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
	ja	.L748
	fld	QWORD PTR .LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L745
	.p2align 4,,10
	.p2align 3
.L748:
	fstp	st(0)
.L745:
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
	ja	.L752
	fld	TBYTE PTR .LC9
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L749
	.p2align 4,,10
	.p2align 3
.L752:
	fstp	st(0)
.L749:
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
	jp	.L755
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L762
	jne	.L762
	jmp	.L755
	.p2align 4,,10
	.p2align 3
.L770:
	fstp	st(0)
.L755:
	ret
	.p2align 4,,10
	.p2align 3
.L762:
	fld	DWORD PTR .LC10
	test	eax, eax
	jns	.L757
	fstp	st(0)
	fld	DWORD PTR .LC11
.L757:
	test	al, 1
	je	.L758
	.p2align 4
	.p2align 3
.L759:
	fmul	st(1), st
.L758:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L770
	fmul	st, st(0)
	test	al, 1
	jne	.L759
.L769:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L759
	jmp	.L769
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
	jp	.L772
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L779
	jne	.L779
	jmp	.L772
	.p2align 4,,10
	.p2align 3
.L788:
	fstp	st(0)
.L772:
	ret
	.p2align 4,,10
	.p2align 3
.L779:
	test	eax, eax
	js	.L786
	fld	DWORD PTR .LC10
.L774:
	test	al, 1
	je	.L775
	.p2align 4
	.p2align 3
.L776:
	fmul	st(1), st
.L775:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L788
	fmul	st, st(0)
	test	al, 1
	jne	.L776
.L787:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L776
	jmp	.L787
	.p2align 4,,10
	.p2align 3
.L786:
	fld	DWORD PTR .LC11
	jmp	.L774
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
	jp	.L790
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L797
	jne	.L797
	jmp	.L790
	.p2align 4,,10
	.p2align 3
.L806:
	fstp	st(0)
.L790:
	ret
	.p2align 4,,10
	.p2align 3
.L797:
	test	eax, eax
	js	.L804
	fld	DWORD PTR .LC10
.L792:
	test	al, 1
	je	.L793
	.p2align 4
	.p2align 3
.L794:
	fmul	st(1), st
.L793:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L806
	fmul	st, st(0)
	test	al, 1
	jne	.L794
.L805:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L794
	jmp	.L805
	.p2align 4,,10
	.p2align 3
.L804:
	fld	DWORD PTR .LC11
	jmp	.L792
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
	je	.L808
	lea	eax, [ecx-1]
	cmp	eax, 14
	jbe	.L815
	mov	edx, ecx
	mov	ebp, DWORD PTR [esp+20]
	mov	eax, ebx
	and	edx, -16
	lea	esi, [edx+ebx]
	.p2align 5
	.p2align 4
	.p2align 3
.L810:
	movdqu	xmm1, XMMWORD PTR [ebp+0]
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	ebp, 16
	pxor	xmm0, xmm1
	movups	XMMWORD PTR [ebp-16], xmm0
	cmp	eax, esi
	jne	.L810
	mov	esi, DWORD PTR [esp+20]
	mov	edi, ecx
	sub	edi, edx
	add	esi, edx
	cmp	ecx, edx
	je	.L808
.L809:
	sub	ecx, edx
	lea	ebp, [ecx-1]
	cmp	ebp, 2
	jbe	.L812
	add	ebx, edx
	add	edx, DWORD PTR [esp+20]
	mov	ebp, ecx
	movd	xmm2, DWORD PTR [edx]
	movd	xmm3, DWORD PTR [ebx]
	shr	ebp, 2
	pxor	xmm2, xmm3
	movd	DWORD PTR [edx], xmm2
	cmp	ebp, 1
	je	.L813
	movd	xmm5, DWORD PTR [edx+4]
	movd	xmm4, DWORD PTR [ebx+4]
	pxor	xmm5, xmm4
	movd	DWORD PTR [edx+4], xmm5
	cmp	ebp, 2
	je	.L813
	movd	xmm7, DWORD PTR [edx+8]
	movd	xmm6, DWORD PTR [ebx+8]
	pxor	xmm7, xmm6
	movd	DWORD PTR [edx+8], xmm7
.L813:
	mov	ebx, ecx
	and	ebx, -4
	add	esi, ebx
	add	eax, ebx
	sub	edi, ebx
	and	ecx, 3
	je	.L808
.L812:
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [esi], cl
	cmp	edi, 1
	je	.L808
	movzx	edx, BYTE PTR [eax+1]
	xor	BYTE PTR [esi+1], dl
	cmp	edi, 2
	je	.L808
	movzx	eax, BYTE PTR [eax+2]
	xor	BYTE PTR [esi+2], al
.L808:
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
.L815:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp+20]
	mov	eax, ebx
	mov	edi, ecx
	xor	edx, edx
	jmp	.L809
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
	je	.L837
	.p2align 3
	.p2align 4
	.p2align 3
.L838:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L838
.L837:
	test	edx, edx
	jne	.L839
	jmp	.L840
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L841:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L840
.L839:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L841
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
.L840:
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
	je	.L851
.L852:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L854
.L851:
	ret
	.p2align 4,,10
	.p2align 3
.L854:
	add	eax, 1
	cmp	edx, eax
	jne	.L852
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
	je	.L865
.L861:
	mov	eax, DWORD PTR [esp+12]
	jmp	.L864
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L863:
	add	eax, 1
	cmp	dl, cl
	je	.L862
.L864:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L863
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L861
.L865:
	xor	ebx, ebx
.L862:
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
.L871:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	.L871
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
	je	.L886
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
.L876:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L876
	mov	esi, edx
	sub	eax, ebp
	je	.L874
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	.L896
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L899:
	add	edx, 1
	test	cl, cl
	je	.L898
.L896:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	.L899
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	.L878
	.p2align 4,,10
	.p2align 3
.L900:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L879
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L879
.L878:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	.L900
.L879:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	.L886
	add	edx, 1
	jmp	.L896
	.p2align 4,,10
	.p2align 3
.L898:
	xor	esi, esi
.L874:
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
.L886:
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
	ja	.L911
	fxch	st(2)
	fcomi	st, st(2)
	jbe	.L912
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L904
	jmp	.L905
	.p2align 4,,10
	.p2align 3
.L912:
	fstp	st(1)
	fstp	st(1)
.L905:
	ret
	.p2align 4,,10
	.p2align 3
.L911:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L905
.L904:
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
	je	.L913
	cmp	esi, DWORD PTR [esp+32]
	jb	.L924
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L924
	movzx	ebp, BYTE PTR [edi]
	jmp	.L919
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L923:
	mov	edx, ebx
.L915:
	cmp	esi, edx
	jb	.L924
.L919:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	.L923
	cmp	DWORD PTR [esp+32], 1
	je	.L913
.L918:
	mov	eax, 1
	jmp	.L916
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L917:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	.L913
.L916:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L917
	cmp	esi, ebx
	jb	.L924
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L915
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	.L918
	.p2align 4,,10
	.p2align 3
.L924:
	xor	edx, edx
.L913:
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
	je	.L935
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
.L935:
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
	ja	.L964
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	.L965
	fstp	st(0)
.L943:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L950:
	fld	DWORD PTR .LC11
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	.L950
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	.L940
.L967:
	fchs
.L940:
	ret
	.p2align 4,,10
	.p2align 3
.L965:
	fld	DWORD PTR .LC11
	fcomip	st, st(2)
	jbe	.L968
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L956
	jne	.L956
	jmp	.L946
	.p2align 4,,10
	.p2align 3
.L968:
	fstp	st(0)
	jmp	.L946
	.p2align 4,,10
	.p2align 3
.L969:
	fstp	st(0)
.L946:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L964:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	.L966
	fstp	st(1)
	mov	edx, 1
	jmp	.L943
	.p2align 4,,10
	.p2align 3
.L966:
	fld	DWORD PTR .LC13
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	.L969
	fstp	st(1)
	mov	edx, 1
.L944:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L952:
	fadd	st, st(0)
	fld	DWORD PTR .LC11
	sub	eax, 1
	fcomip	st, st(1)
	ja	.L952
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	.L967
	ret
.L956:
	xor	edx, edx
	jmp	.L944
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
	je	.L973
	pxor	xmm3, xmm3
	.p2align 4
	.p2align 3
.L972:
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
	jne	.L972
	mov	eax, ebx
	mov	edx, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L973:
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
	jnb	.L1000
	mov	ecx, 1
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L980:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L979
	test	ecx, ecx
	je	.L979
.L977:
	test	edx, edx
	jns	.L980
.L981:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L983:
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
	jne	.L983
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L982:
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
.L979:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L981
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
.L1000:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L982
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
	je	.L1004
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
.L1004:
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
	je	.L1009
	test	edi, edi
	je	.L1011
	bsr	ebp, edi
	xor	ebp, 31
.L1012:
	lea	ecx, [ebp-1]
.L1009:
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
.L1011:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	.L1012
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
	je	.L1016
	.p2align 5
	.p2align 4
	.p2align 3
.L1018:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1018
.L1016:
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	ebp, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+52]
	mov	edi, ebp
	mov	ecx, ebp
	shr	edi, 3
	and	ecx, -8
	cmp	DWORD PTR [esp+48], ebx
	jb	.L1026
	lea	eax, [ebx+ebp]
	cmp	eax, DWORD PTR [esp+48]
	jnb	.L1088
.L1026:
	test	edi, edi
	je	.L1025
	lea	eax, [edi-1]
	cmp	eax, 2
	jbe	.L1029
	mov	esi, DWORD PTR [esp+48]
	sub	esi, ebx
	sub	esi, 4
	cmp	esi, 8
	jbe	.L1029
	mov	edx, ebp
	mov	esi, ebp
	mov	eax, ebx
	shr	edx, 4
	and	esi, -16
	mov	DWORD PTR [esp+12], edx
	mov	edx, DWORD PTR [esp+48]
	add	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1030:
	movdqu	xmm1, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm1
	cmp	eax, esi
	jne	.L1030
	mov	edx, DWORD PTR [esp+12]
	lea	eax, [edx+edx]
	cmp	edi, eax
	je	.L1025
	mov	edi, edx
	mov	esi, DWORD PTR [esp+48]
	sal	edi, 4
	movq	xmm2, QWORD PTR [ebx+edi]
	movq	QWORD PTR [esi+edi], xmm2
.L1025:
	cmp	ecx, ebp
	jnb	.L1022
	mov	esi, ebp
	sub	esi, ecx
	lea	eax, [esi-1]
	mov	DWORD PTR [esp+12], eax
	cmp	eax, 2
	jbe	.L1089
	mov	eax, DWORD PTR [esp+48]
	lea	edi, [ebx+1+ecx]
	add	eax, ecx
	mov	edx, eax
	sub	edx, edi
	cmp	edx, 14
	jbe	.L1034
	cmp	DWORD PTR [esp+12], 14
	jbe	.L1053
	mov	edi, esi
	lea	edx, [ebx+ecx]
	and	edi, -16
	mov	DWORD PTR [esp+12], edi
	add	edi, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1036:
	movdqu	xmm4, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm4
	cmp	edx, edi
	jne	.L1036
	mov	edx, DWORD PTR [esp+12]
	add	ecx, edx
	mov	eax, ecx
	cmp	esi, edx
	je	.L1022
	sub	esi, edx
	lea	edi, [esi-1]
	cmp	edi, 2
	jbe	.L1038
.L1035:
	lea	edx, [ebx+ecx]
	mov	edi, esi
	add	ecx, DWORD PTR [esp+48]
	movd	xmm5, DWORD PTR [edx]
	shr	edi, 2
	movd	DWORD PTR [ecx], xmm5
	cmp	edi, 1
	je	.L1039
	movd	xmm6, DWORD PTR [edx+4]
	movd	DWORD PTR [ecx+4], xmm6
	cmp	edi, 2
	je	.L1039
	mov	edi, DWORD PTR [edx+8]
	mov	DWORD PTR [ecx+8], edi
.L1039:
	mov	ecx, esi
	and	ecx, -4
	add	eax, ecx
	and	esi, 3
	je	.L1022
.L1038:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	esi, DWORD PTR [esp+48]
	lea	edi, [eax+1]
	mov	BYTE PTR [esi+eax], dl
	cmp	edi, ebp
	jnb	.L1022
	movzx	ecx, BYTE PTR [ebx+1+eax]
	lea	edx, [eax+2]
	mov	BYTE PTR [esi+1+eax], cl
	cmp	edx, ebp
	jnb	.L1022
	movzx	ecx, BYTE PTR [ebx+2+eax]
	mov	BYTE PTR [esi+2+eax], cl
.L1022:
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
.L1088:
	.cfi_restore_state
	lea	ecx, [ebp-1]
	test	ebp, ebp
	je	.L1022
	cmp	ecx, 2
	jbe	.L1051
	mov	esi, DWORD PTR [esp+48]
	lea	edx, [ebx-2+ebp]
	add	esi, ecx
	sub	esi, edx
	add	esi, 14
	cmp	esi, 14
	jbe	.L1051
	cmp	ecx, 14
	jbe	.L1044
	lea	edx, [ebp-16]
	mov	edi, ebp
	lea	eax, [ebx+edx]
	and	edi, -16
	add	edx, DWORD PTR [esp+48]
	mov	esi, eax
	sub	esi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L1045:
	movdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	movups	XMMWORD PTR [edx+16], xmm0
	cmp	eax, esi
	jne	.L1045
	sub	ecx, edi
	cmp	ebp, edi
	je	.L1022
	sub	ebp, edi
	lea	edx, [ebp-1]
	cmp	edx, 2
	jbe	.L1048
.L1044:
	lea	eax, [ebp-4]
	mov	esi, ebp
	lea	edx, [ebx+eax]
	shr	esi, 2
	add	eax, DWORD PTR [esp+48]
	mov	edi, DWORD PTR [edx]
	mov	DWORD PTR [eax], edi
	cmp	esi, 1
	je	.L1049
	mov	edi, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], edi
	cmp	esi, 2
	je	.L1049
	mov	esi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], esi
.L1049:
	test	ebp, 3
	je	.L1022
	and	ebp, -4
	sub	ecx, ebp
.L1048:
	movzx	eax, BYTE PTR [ebx+ecx]
	mov	edx, DWORD PTR [esp+48]
	mov	BYTE PTR [edx+ecx], al
	test	ecx, ecx
	je	.L1022
	movzx	eax, BYTE PTR [ebx-1+ecx]
	mov	BYTE PTR [edx-1+ecx], al
	cmp	ecx, 1
	je	.L1022
	movzx	eax, BYTE PTR [ebx-2+ecx]
	mov	BYTE PTR [edx-2+ecx], al
	jmp	.L1022
.L1053:
	mov	eax, ecx
	jmp	.L1035
	.p2align 4,,10
	.p2align 3
.L1089:
	mov	eax, DWORD PTR [esp+48]
	add	eax, ecx
.L1034:
	add	ecx, ebx
	add	ebx, ebp
	.p2align 4
	.p2align 4
	.p2align 3
.L1041:
	movzx	edx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], dl
	cmp	ecx, ebx
	jne	.L1041
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
.L1029:
	.cfi_restore_state
	mov	edx, DWORD PTR [esp+48]
	mov	eax, ebx
	lea	edi, [ebx+edi*8]
	.p2align 5
	.p2align 4
	.p2align 3
.L1032:
	movq	xmm3, QWORD PTR [eax]
	add	eax, 8
	add	edx, 8
	movq	QWORD PTR [edx-8], xmm3
	cmp	edi, eax
	jne	.L1032
	jmp	.L1025
.L1051:
	mov	edi, DWORD PTR [esp+48]
	.p2align 4
	.p2align 4
	.p2align 3
.L1086:
	movzx	edx, BYTE PTR [ebx+ecx]
	mov	BYTE PTR [edi+ecx], dl
	sub	ecx, 1
	jnb	.L1086
	jmp	.L1022
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
	mov	eax, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+48]
	mov	edx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	ecx
	cmp	ebx, edx
	jb	.L1094
	lea	esi, [edx+eax]
	cmp	esi, ebx
	jnb	.L1157
.L1094:
	test	ecx, ecx
	je	.L1093
	cmp	ecx, 1
	je	.L1097
	lea	edi, [edx+2]
	mov	esi, ebx
	sub	esi, edi
	cmp	esi, 12
	jbe	.L1097
	lea	ebp, [ecx-1]
	cmp	ebp, 6
	jbe	.L1116
	mov	edi, eax
	mov	ebp, eax
	mov	esi, edx
	shr	edi, 4
	and	ebp, -16
	mov	DWORD PTR [esp+8], edi
	add	ebp, edx
	mov	edi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1099:
	movdqu	xmm3, XMMWORD PTR [esi]
	add	esi, 16
	add	edi, 16
	movups	XMMWORD PTR [edi-16], xmm3
	cmp	esi, ebp
	jne	.L1099
	mov	esi, DWORD PTR [esp+8]
	sal	esi, 3
	cmp	ecx, esi
	je	.L1093
	sub	ecx, esi
	cmp	ecx, 1
	je	.L1101
.L1098:
	mov	edi, ecx
	shr	edi
	mov	DWORD PTR [esp+8], edi
	lea	edi, [esi+esi]
	lea	ebp, [edx+edi]
	add	edi, ebx
	cmp	DWORD PTR [esp+8], 1
	movd	xmm4, DWORD PTR [ebp+0]
	movd	DWORD PTR [edi], xmm4
	je	.L1102
	movd	xmm5, DWORD PTR [ebp+4]
	cmp	DWORD PTR [esp+8], 2
	movd	DWORD PTR [edi+4], xmm5
	je	.L1102
	mov	ebp, DWORD PTR [ebp+8]
	mov	DWORD PTR [edi+8], ebp
.L1102:
	test	cl, 1
	je	.L1093
	and	ecx, -2
	add	esi, ecx
.L1101:
	movzx	ecx, WORD PTR [edx+esi*2]
	mov	WORD PTR [ebx+esi*2], cx
.L1093:
	test	al, 1
	je	.L1090
.L1158:
	movzx	edx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], dl
.L1090:
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
.L1157:
	.cfi_restore_state
	lea	edi, [eax-1]
	test	eax, eax
	je	.L1090
	cmp	edi, 2
	jbe	.L1154
	lea	ebp, [ebx+edi]
	lea	ecx, [edx-2+eax]
	sub	ebp, ecx
	add	ebp, 14
	cmp	ebp, 14
	jbe	.L1154
	cmp	edi, 14
	jbe	.L1108
	lea	esi, [eax-16]
	mov	ebp, eax
	lea	ecx, [edx+esi]
	add	esi, ebx
	and	ebp, -16
	mov	DWORD PTR [esp+12], esi
	mov	esi, ecx
	sub	esi, ebp
	mov	DWORD PTR [esp+8], ebp
	mov	ebp, esi
	mov	esi, DWORD PTR [esp+12]
	.p2align 5
	.p2align 4
	.p2align 3
.L1109:
	movdqu	xmm0, XMMWORD PTR [ecx]
	sub	ecx, 16
	sub	esi, 16
	movups	XMMWORD PTR [esi+16], xmm0
	cmp	ebp, ecx
	jne	.L1109
	mov	ecx, DWORD PTR [esp+8]
	sub	edi, ecx
	cmp	eax, ecx
	je	.L1090
	sub	eax, ecx
	lea	ebp, [eax-1]
	cmp	ebp, 2
	jbe	.L1111
.L1108:
	lea	ecx, [eax-4]
	mov	ebp, eax
	lea	esi, [edx+ecx]
	shr	ebp, 2
	add	ecx, ebx
	movd	xmm1, DWORD PTR [esi]
	movd	DWORD PTR [ecx], xmm1
	cmp	ebp, 1
	je	.L1112
	movd	xmm2, DWORD PTR [esi-4]
	movd	DWORD PTR [ecx-4], xmm2
	cmp	ebp, 2
	je	.L1112
	mov	ebp, DWORD PTR [esi-8]
	mov	DWORD PTR [ecx-8], ebp
.L1112:
	test	al, 3
	je	.L1090
	and	eax, -4
	sub	edi, eax
.L1111:
	movzx	eax, BYTE PTR [edx+edi]
	mov	BYTE PTR [ebx+edi], al
	test	edi, edi
	je	.L1090
	movzx	ecx, BYTE PTR [edx-1+edi]
	mov	BYTE PTR [ebx-1+edi], cl
	cmp	edi, 1
	je	.L1090
	movzx	edx, BYTE PTR [edx-2+edi]
	mov	BYTE PTR [ebx-2+edi], dl
	jmp	.L1090
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1154:
	movzx	eax, BYTE PTR [edx+edi]
	mov	BYTE PTR [ebx+edi], al
	sub	edi, 1
	jb	.L1090
	movzx	eax, BYTE PTR [edx+edi]
	mov	BYTE PTR [ebx+edi], al
	sub	edi, 1
	jnb	.L1154
	jmp	.L1090
.L1116:
	xor	esi, esi
	jmp	.L1098
	.p2align 4,,10
	.p2align 3
.L1097:
	mov	esi, edx
	mov	edi, ebx
	lea	ebp, [edx+ecx*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L1104:
	movzx	ecx, WORD PTR [esi]
	add	esi, 2
	add	edi, 2
	mov	WORD PTR [edi-2], cx
	cmp	ebp, esi
	jne	.L1104
	test	al, 1
	je	.L1090
	jmp	.L1158
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
	mov	ecx, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+24]
	shr	edi, 2
	and	ecx, -4
	cmp	DWORD PTR [esp+20], ebx
	jb	.L1164
	mov	eax, DWORD PTR [esp+28]
	add	eax, ebx
	cmp	eax, DWORD PTR [esp+20]
	jnb	.L1225
.L1164:
	test	edi, edi
	je	.L1226
	lea	edx, [edi-1]
	cmp	edx, 2
	jbe	.L1166
	mov	ebp, DWORD PTR [esp+20]
	lea	esi, [ebx+4]
	sub	ebp, esi
	cmp	ebp, 8
	jbe	.L1166
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
.L1167:
	movdqu	xmm1, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm1
	cmp	eax, esi
	jne	.L1167
	lea	eax, [0+ebp*4]
	cmp	edi, eax
	je	.L1170
	sal	ebp, 4
	mov	esi, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [ebx+ebp]
	mov	DWORD PTR [esi+ebp], edx
	lea	edx, [eax+1]
	cmp	edx, edi
	jnb	.L1170
	mov	edx, DWORD PTR [ebx+4+ebp]
	add	eax, 2
	mov	DWORD PTR [esi+4+ebp], edx
	cmp	eax, edi
	jnb	.L1170
	mov	eax, DWORD PTR [ebx+8+ebp]
	mov	DWORD PTR [esi+8+ebp], eax
.L1170:
	cmp	ecx, DWORD PTR [esp+28]
	jnb	.L1159
	mov	esi, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	sub	esi, ecx
	add	eax, ecx
	lea	edx, [esi-1]
	cmp	edx, 2
	jbe	.L1162
	mov	eax, DWORD PTR [esp+20]
	lea	ebp, [ebx+1+ecx]
	add	eax, ecx
	mov	edi, eax
	sub	edi, ebp
	cmp	edi, 14
	jbe	.L1162
	cmp	edx, 14
	jbe	.L1189
	mov	ebp, esi
	lea	edx, [ebx+ecx]
	and	ebp, -16
	lea	edi, [ebp+0+edx]
	.p2align 5
	.p2align 4
	.p2align 3
.L1172:
	movdqu	xmm2, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm2
	cmp	edx, edi
	jne	.L1172
	add	ecx, ebp
	mov	eax, ecx
	cmp	esi, ebp
	je	.L1159
	sub	esi, ebp
	lea	edx, [esi-1]
	cmp	edx, 2
	jbe	.L1174
.L1171:
	lea	edx, [ebx+ecx]
	mov	edi, esi
	add	ecx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [edx]
	shr	edi, 2
	mov	DWORD PTR [ecx], ebp
	cmp	edi, 1
	je	.L1175
	mov	ebp, DWORD PTR [edx+4]
	mov	DWORD PTR [ecx+4], ebp
	cmp	edi, 2
	je	.L1175
	mov	edi, DWORD PTR [edx+8]
	mov	DWORD PTR [ecx+8], edi
.L1175:
	mov	ecx, esi
	and	ecx, -4
	add	eax, ecx
	and	esi, 3
	je	.L1159
.L1174:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	esi, DWORD PTR [esp+20]
	lea	ebp, [eax+1]
	mov	BYTE PTR [esi+eax], dl
	cmp	ebp, DWORD PTR [esp+28]
	jnb	.L1159
	movzx	ecx, BYTE PTR [ebx+1+eax]
	lea	edi, [eax+2]
	mov	BYTE PTR [esi+1+eax], cl
	cmp	edi, DWORD PTR [esp+28]
	jnb	.L1159
	movzx	edx, BYTE PTR [ebx+2+eax]
	mov	BYTE PTR [esi+2+eax], dl
.L1159:
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
.L1225:
	.cfi_restore_state
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [edx-1]
	test	edx, edx
	je	.L1159
	cmp	ecx, 2
	jbe	.L1187
	mov	ebp, DWORD PTR [esp+20]
	lea	edi, [ebx-2+edx]
	mov	esi, edx
	add	ebp, ecx
	sub	ebp, edi
	add	ebp, 14
	cmp	ebp, 14
	jbe	.L1187
	cmp	ecx, 14
	jbe	.L1180
	lea	edx, [edx-16]
	mov	edi, esi
	lea	ebp, [ebx+edx]
	and	edi, -16
	add	edx, DWORD PTR [esp+20]
	mov	esi, ebp
	sub	esi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L1181:
	movdqu	xmm0, XMMWORD PTR [ebp+0]
	sub	ebp, 16
	sub	edx, 16
	movups	XMMWORD PTR [edx+16], xmm0
	cmp	esi, ebp
	jne	.L1181
	sub	ecx, edi
	cmp	DWORD PTR [esp+28], edi
	je	.L1159
	sub	DWORD PTR [esp+28], edi
	mov	eax, DWORD PTR [esp+28]
	sub	eax, 1
	cmp	eax, 2
	jbe	.L1184
.L1180:
	mov	esi, DWORD PTR [esp+28]
	mov	ebp, DWORD PTR [esp+28]
	sub	esi, 4
	shr	ebp, 2
	lea	edx, [ebx+esi]
	add	esi, DWORD PTR [esp+20]
	mov	edi, DWORD PTR [edx]
	mov	DWORD PTR [esi], edi
	cmp	ebp, 1
	je	.L1185
	mov	eax, DWORD PTR [edx-4]
	mov	DWORD PTR [esi-4], eax
	cmp	ebp, 2
	je	.L1185
	mov	ebp, DWORD PTR [edx-8]
	mov	DWORD PTR [esi-8], ebp
.L1185:
	test	BYTE PTR [esp+28], 3
	je	.L1159
	mov	esi, DWORD PTR [esp+28]
	and	esi, -4
	sub	ecx, esi
.L1184:
	movzx	edx, BYTE PTR [ebx+ecx]
	mov	edi, DWORD PTR [esp+20]
	mov	BYTE PTR [edi+ecx], dl
	test	ecx, ecx
	je	.L1159
	movzx	eax, BYTE PTR [ebx-1+ecx]
	mov	BYTE PTR [edi-1+ecx], al
	cmp	ecx, 1
	je	.L1159
	movzx	edx, BYTE PTR [ebx-2+ecx]
	mov	BYTE PTR [edi-2+ecx], dl
	jmp	.L1159
.L1189:
	mov	eax, ecx
	jmp	.L1171
	.p2align 4,,10
	.p2align 3
.L1166:
	mov	edx, DWORD PTR [esp+20]
	mov	ebp, ebx
	lea	eax, [ebx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L1169:
	mov	edi, DWORD PTR [ebp+0]
	add	ebp, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], edi
	cmp	eax, ebp
	jne	.L1169
	jmp	.L1170
	.p2align 4,,10
	.p2align 3
.L1226:
	mov	eax, DWORD PTR [esp+20]
	mov	edi, DWORD PTR [esp+28]
	add	eax, ecx
	test	edi, edi
	je	.L1159
.L1162:
	add	ecx, ebx
	add	ebx, DWORD PTR [esp+28]
	.p2align 4
	.p2align 4
	.p2align 3
.L1177:
	movzx	edx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], dl
	cmp	ecx, ebx
	jne	.L1177
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
.L1187:
	.cfi_restore_state
	mov	ebp, DWORD PTR [esp+20]
	.p2align 4
	.p2align 4
	.p2align 3
.L1223:
	movzx	eax, BYTE PTR [ebx+ecx]
	mov	BYTE PTR [ebp+0+ecx], al
	sub	ecx, 1
	jnb	.L1223
	jmp	.L1159
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
	jns	.L1233
	fld	DWORD PTR .LC16
	faddp	st(1), st
.L1233:
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
	jns	.L1236
	fld	DWORD PTR .LC16
	faddp	st(1), st
.L1236:
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
	jne	.L1242
	mov	eax, edx
	sar	eax, 14
	jne	.L1239
	mov	eax, edx
	shr	eax, 13
	jne	.L1243
	mov	eax, edx
	shr	eax, 12
	jne	.L1244
	mov	eax, edx
	shr	eax, 11
	jne	.L1245
	mov	eax, edx
	shr	eax, 10
	jne	.L1246
	mov	eax, edx
	shr	eax, 9
	jne	.L1247
	mov	eax, edx
	shr	eax, 8
	jne	.L1248
	mov	eax, edx
	shr	eax, 7
	jne	.L1249
	mov	eax, edx
	shr	eax, 6
	jne	.L1250
	mov	eax, edx
	shr	eax, 5
	jne	.L1251
	mov	eax, edx
	shr	eax, 4
	jne	.L1252
	mov	eax, edx
	shr	eax, 3
	jne	.L1253
	mov	eax, edx
	shr	eax, 2
	jne	.L1254
	shr	edx
	jne	.L1255
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1255:
	mov	eax, 14
.L1239:
	ret
.L1242:
	xor	eax, eax
	ret
.L1253:
	mov	eax, 12
	ret
.L1243:
	mov	eax, 2
	ret
.L1244:
	mov	eax, 3
	ret
.L1245:
	mov	eax, 4
	ret
.L1246:
	mov	eax, 5
	ret
.L1247:
	mov	eax, 6
	ret
.L1248:
	mov	eax, 7
	ret
.L1249:
	mov	eax, 8
	ret
.L1250:
	mov	eax, 9
	ret
.L1251:
	mov	eax, 10
	ret
.L1252:
	mov	eax, 11
	ret
.L1254:
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
	jne	.L1260
	test	al, 2
	jne	.L1261
	test	al, 4
	jne	.L1262
	test	al, 8
	jne	.L1263
	test	al, 16
	jne	.L1264
	test	al, 32
	jne	.L1265
	test	al, 64
	jne	.L1266
	test	al, -128
	jne	.L1267
	test	ah, 1
	jne	.L1268
	test	ah, 2
	jne	.L1269
	test	ah, 4
	jne	.L1270
	test	ah, 8
	jne	.L1271
	test	ah, 16
	jne	.L1272
	test	ah, 32
	jne	.L1273
	test	ah, 64
	jne	.L1274
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
.L1260:
	xor	eax, eax
	ret
.L1261:
	mov	eax, 1
	ret
.L1272:
	mov	eax, 12
	ret
.L1262:
	mov	eax, 2
	ret
.L1263:
	mov	eax, 3
	ret
.L1264:
	mov	eax, 4
	ret
.L1265:
	mov	eax, 5
	ret
.L1266:
	mov	eax, 6
	ret
.L1267:
	mov	eax, 7
	ret
.L1268:
	mov	eax, 8
	ret
.L1269:
	mov	eax, 9
	ret
.L1270:
	mov	eax, 10
	ret
.L1271:
	mov	eax, 11
	ret
.L1273:
	mov	eax, 13
	ret
.L1274:
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
	jnb	.L1283
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1283:
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
	je	.L1286
	.p2align 5
	.p2align 4
	.p2align 3
.L1288:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1288
.L1286:
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
	je	.L1292
	test	edx, edx
	je	.L1292
	.p2align 5
	.p2align 4
	.p2align 3
.L1294:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1294
.L1292:
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
	jnb	.L1324
	mov	ecx, 1
	jmp	.L1301
	.p2align 4,,10
	.p2align 3
.L1304:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1303
	test	ecx, ecx
	je	.L1303
.L1301:
	test	edx, edx
	jns	.L1304
.L1305:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1307:
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
	jne	.L1307
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1306:
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
.L1303:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1305
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
.L1324:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1306
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
	ja	.L1331
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1328
	.p2align 4,,10
	.p2align 3
.L1331:
	fstp	st(0)
	fstp	st(0)
.L1328:
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
	ja	.L1335
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1332
	.p2align 4,,10
	.p2align 3
.L1335:
	fstp	st(0)
	fstp	st(0)
.L1332:
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
	js	.L1348
	je	.L1343
	xor	edi, edi
.L1340:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1342:
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
	jne	.L1342
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
.L1348:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L1340
	.p2align 4,,10
	.p2align 3
.L1343:
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
	jns	.L1350
	neg	ebx
	xor	eax, eax
	mov	edi, 1
.L1350:
	test	esi, esi
	jns	.L1351
	neg	esi
	mov	edi, eax
.L1351:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	.L1352
	jmp	.L1376
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1382:
	test	eax, eax
	je	.L1357
.L1352:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	.L1382
.L1357:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	.L1377
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1354:
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
	jne	.L1354
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
.L1355:
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
.L1377:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	.L1355
.L1376:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	.L1355
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
	jns	.L1384
	neg	ebx
	mov	esi, 1
.L1384:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	.L1385
	jmp	.L1409
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1413:
	test	edx, edx
	je	.L1405
.L1385:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	.L1413
	test	edx, edx
	je	.L1405
	.p2align 4
	.p2align 4
	.p2align 3
.L1387:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	.L1387
.L1388:
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
.L1405:
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
.L1409:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	.L1388
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
	jb	.L1415
	jmp	.L1483
	.p2align 4,,10
	.p2align 3
.L1418:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	.L1417
	test	ax, ax
	je	.L1417
	mov	ecx, eax
	mov	edx, ebx
.L1415:
	test	dx, dx
	jns	.L1418
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
	je	.L1484
.L1422:
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	je	.L1420
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
	jns	.L1420
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
.L1420:
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
.L1417:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	.L1420
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
	jmp	.L1422
.L1483:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	.L1420
.L1484:
	mov	WORD PTR [esp+2], ax
	jmp	.L1420
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
	jnb	.L1509
	mov	ecx, 1
	jmp	.L1486
	.p2align 4,,10
	.p2align 3
.L1489:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1488
	test	ecx, ecx
	je	.L1488
.L1486:
	test	edx, edx
	jns	.L1489
.L1490:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1492:
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
	jne	.L1492
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1491:
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
.L1488:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1490
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
.L1509:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1491
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
	je	.L1514
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
.L1514:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1517
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
.L1517:
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
	je	.L1520
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
.L1520:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1523
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
.L1523:
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
	jl	.L1529
	mov	eax, 2
	jg	.L1529
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1529
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1529:
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
	jl	.L1536
	mov	eax, 1
	jg	.L1536
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1536
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1536:
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
	je	.L1545
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
.L1545:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1548
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
.L1548:
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
	je	.L1560
	jmp	.L1562
	.p2align 4,,10
	.p2align 3
.L1567:
	fxch	st(1)
	jmp	.L1562
	.p2align 4,,10
	.p2align 3
.L1568:
	fxch	st(1)
.L1562:
	fmul	st, st(1)
.L1560:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1561
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1567
.L1566:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1568
	jmp	.L1566
	.p2align 4,,10
	.p2align 3
.L1561:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1559
	fld1
	fdivrp	st(1), st
.L1559:
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
	je	.L1570
	jmp	.L1572
	.p2align 4,,10
	.p2align 3
.L1577:
	fxch	st(1)
	jmp	.L1572
	.p2align 4,,10
	.p2align 3
.L1578:
	fxch	st(1)
.L1572:
	fmul	st, st(1)
.L1570:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1571
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1577
.L1576:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1578
	jmp	.L1576
	.p2align 4,,10
	.p2align 3
.L1571:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1569
	fld1
	fdivrp	st(1), st
.L1569:
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
	jb	.L1579
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1579
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1579
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1579:
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
	jb	.L1586
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1586
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1586
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1586:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.align 16
.LC1:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
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
	.section	.rodata.cst16
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
