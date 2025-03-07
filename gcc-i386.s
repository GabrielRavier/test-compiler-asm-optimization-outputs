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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	.L2
	test	eax, eax
	je	.L3
	lea	ecx, [eax-1]
	cmp	ecx, 30
	jbe	.L11
	mov	edi, DWORD PTR [ebp+8]
	lea	esi, [edx-2+eax]
	sub	edi, esi
	lea	ebx, [edi+62+ecx]
	cmp	ebx, 62
	jbe	.L11
	lea	esi, [edx+eax]
	mov	DWORD PTR [esp+60], esi
	mov	esi, DWORD PTR [ebp+8]
	add	esi, eax
	cmp	ecx, 62
	jbe	.L23
	lea	edi, [eax-64]
	lea	ecx, [edx+edi]
	add	edi, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+52], edi
	mov	edi, eax
	mov	ebx, ecx
	and	edi, -64
	sub	ebx, edi
	mov	DWORD PTR [esp+56], edi
	mov	edi, ebx
	mov	ebx, DWORD PTR [esp+52]
	.p2align 5
	.p2align 4
	.p2align 3
.L6:
	vmovdqu8	zmm2, ZMMWORD PTR [ecx]
	sub	ecx, 64
	sub	ebx, 64
	vmovdqu8	ZMMWORD PTR [ebx+64], zmm2
	cmp	edi, ecx
	jne	.L6
	mov	edi, DWORD PTR [esp+56]
	mov	ecx, eax
	sub	DWORD PTR [esp+60], edi
	sub	esi, edi
	sub	ecx, edi
	cmp	eax, edi
	je	.L49
	lea	ebx, [ecx-1]
	mov	eax, ecx
	cmp	ebx, 30
	jbe	.L8
.L5:
	vmovdqu8	ymm3, YMMWORD PTR [edx-32+eax]
	mov	edi, eax
	mov	edx, DWORD PTR [ebp+8]
	and	edi, -32
	sub	DWORD PTR [esp+60], edi
	vmovdqu8	YMMWORD PTR [edx-32+eax], ymm3
	sub	esi, edi
	sub	ecx, edi
	test	al, 31
	je	.L49
.L8:
	mov	edi, DWORD PTR [esp+60]
	mov	ebx, ecx
	neg	ebx
	sub	edi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	movzx	edx, BYTE PTR [edi-1+ecx]
	lea	eax, [esi+ebx]
	mov	BYTE PTR [eax-1+ecx], dl
	sub	ecx, 1
	jne	.L10
.L49:
	vzeroupper
.L3:
	mov	eax, DWORD PTR [ebp+8]
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	cmp	DWORD PTR [ebp+8], edx
	je	.L3
	test	eax, eax
	je	.L3
	lea	ecx, [eax-1]
	lea	esi, [edx+1]
	cmp	ecx, 30
	jbe	.L13
	mov	ebx, DWORD PTR [ebp+8]
	sub	ebx, esi
	cmp	ebx, 62
	jbe	.L13
	cmp	ecx, 62
	jbe	.L24
	mov	ecx, eax
	mov	ebx, DWORD PTR [ebp+8]
	mov	edi, edx
	and	ecx, -64
	lea	esi, [ecx+edx]
	.p2align 5
	.p2align 4
	.p2align 3
.L15:
	vmovdqu8	zmm0, ZMMWORD PTR [edi]
	add	edi, 64
	add	ebx, 64
	vmovdqu8	ZMMWORD PTR [ebx-64], zmm0
	cmp	esi, edi
	jne	.L15
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	mov	DWORD PTR [esp+60], esi
	sub	ebx, ecx
	add	edi, ecx
	cmp	eax, ecx
	je	.L49
	lea	esi, [ebx-1]
	mov	eax, ebx
	cmp	esi, 30
	jbe	.L18
.L14:
	vmovdqu8	ymm1, YMMWORD PTR [edx+ecx]
	mov	edx, DWORD PTR [ebp+8]
	vmovdqu8	YMMWORD PTR [edx+ecx], ymm1
	mov	ecx, eax
	and	ecx, -32
	add	DWORD PTR [esp+60], ecx
	add	edi, ecx
	sub	ebx, ecx
	test	al, 31
	je	.L49
.L18:
	mov	esi, DWORD PTR [esp+60]
	add	ebx, edi
	.p2align 3
	.p2align 4
	.p2align 3
.L20:
	movsb
	cmp	ebx, edi
	jne	.L20
	vzeroupper
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L11:
	mov	esi, DWORD PTR [ebp+8]
	jmp	.L45
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L52:
	sub	ecx, 1
.L45:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [esi-1+eax], bl
	mov	eax, ecx
	test	ecx, ecx
	jne	.L52
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L13:
	mov	edi, DWORD PTR [ebp+8]
	add	eax, DWORD PTR [ebp+8]
	jmp	.L21
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L53:
	add	esi, 1
.L21:
	movzx	ebx, BYTE PTR [esi-1]
	add	edi, 1
	mov	BYTE PTR [edi-1], bl
	cmp	eax, edi
	jne	.L53
	jmp	.L3
.L23:
	mov	ecx, eax
	jmp	.L5
.L24:
	mov	DWORD PTR [esp+60], edx
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	xor	ecx, ecx
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
	jne	.L55
	jmp	.L57
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L58:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L57
.L55:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L58
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
.L57:
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
	jne	.L67
	jmp	.L70
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L69:
	add	eax, 1
	sub	edx, 1
	je	.L70
.L67:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L69
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L70:
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
	jne	.L76
	jmp	.L75
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L78:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L80
.L76:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L78
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L75:
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
	je	.L88
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
.L88:
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
	jmp	.L94
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L96:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L93
.L94:
	cmp	ebx, eax
	jne	.L96
	xor	edx, edx
.L93:
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
	je	.L101
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
.L101:
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
	je	.L104
	.p2align 4
	.p2align 4
	.p2align 3
.L105:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L105
.L104:
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
	jne	.L111
	jmp	.L110
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L113:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L110
.L111:
	cmp	eax, ecx
	jne	.L113
.L110:
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
	jmp	.L120
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L124:
	add	eax, 1
	test	cl, cl
	je	.L123
.L120:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L124
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L123:
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
	je	.L126
	jmp	.L127
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L128:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	.L127
.L126:
	test	al, al
	jne	.L128
	xor	eax, eax
.L127:
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
	je	.L137
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L136:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L136
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L137:
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
	je	.L139
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L143
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L160:
	cmp	edx, ebp
	je	.L142
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L159
	mov	edx, esi
.L143:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	.L160
.L142:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
.L139:
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
.L159:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	.L142
.L158:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	.L142
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	cmp	ecx, 1
	jle	.L188
	mov	esi, ecx
	lea	edx, [ecx-2]
	shr	esi
	lea	eax, [esi-1]
	mov	DWORD PTR [esp+60], eax
	cmp	edx, 61
	jbe	.L168
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, ecx
	mov	ebx, ecx
	mov	edx, DWORD PTR [ebp+12]
	and	edi, -64
	shr	ebx, 6
	vmovdqa64	zmm1, ZMMWORD PTR .LC0
	add	edi, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L164:
	vmovdqu8	zmm0, ZMMWORD PTR [eax]
	add	eax, 64
	add	edx, 64
	vpshufb	zmm2, zmm0, zmm1
	vmovdqu8	ZMMWORD PTR [edx-64], zmm2
	cmp	eax, edi
	jne	.L164
	mov	edi, ebx
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	sal	ebx, 6
	sal	edi, 5
	add	edx, ebx
	add	eax, ebx
	mov	ebx, edi
	neg	ebx
	lea	ecx, [ecx+ebx*2]
	cmp	edi, esi
	je	.L187
.L163:
	mov	ebx, DWORD PTR [esp+60]
	sub	ebx, edi
	lea	esi, [ebx+1]
	cmp	ebx, 14
	jbe	.L166
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu8	ymm3, YMMWORD PTR [ebx+edi*2]
	mov	ebx, DWORD PTR [ebp+12]
	vpshufb	ymm4, ymm3, YMMWORD PTR .LC1
	vmovdqu8	YMMWORD PTR [ebx+edi*2], ymm4
	mov	ebx, esi
	and	ebx, -16
	lea	edi, [ebx+ebx]
	neg	ebx
	add	edx, edi
	add	eax, edi
	lea	ecx, [ecx+ebx*2]
	and	esi, 15
	je	.L187
.L166:
	movbe	si, WORD PTR [eax]
	mov	WORD PTR [edx], si
	cmp	ecx, 3
	jle	.L187
	movbe	bx, WORD PTR [eax+2]
	mov	WORD PTR [edx+2], bx
	cmp	ecx, 5
	jle	.L187
	movbe	di, WORD PTR [eax+4]
	mov	WORD PTR [edx+4], di
	cmp	ecx, 7
	jle	.L187
	movbe	si, WORD PTR [eax+6]
	mov	WORD PTR [edx+6], si
	cmp	ecx, 9
	jle	.L187
	movbe	bx, WORD PTR [eax+8]
	mov	WORD PTR [edx+8], bx
	cmp	ecx, 11
	jle	.L187
	movbe	di, WORD PTR [eax+10]
	mov	WORD PTR [edx+10], di
	cmp	ecx, 13
	jle	.L187
	movbe	si, WORD PTR [eax+12]
	mov	WORD PTR [edx+12], si
	cmp	ecx, 15
	jle	.L187
	movbe	bx, WORD PTR [eax+14]
	mov	WORD PTR [edx+14], bx
	cmp	ecx, 17
	jle	.L187
	movbe	di, WORD PTR [eax+16]
	mov	WORD PTR [edx+16], di
	cmp	ecx, 19
	jle	.L187
	movbe	si, WORD PTR [eax+18]
	mov	WORD PTR [edx+18], si
	cmp	ecx, 21
	jle	.L187
	movbe	bx, WORD PTR [eax+20]
	mov	WORD PTR [edx+20], bx
	cmp	ecx, 23
	jle	.L187
	movbe	di, WORD PTR [eax+22]
	mov	WORD PTR [edx+22], di
	cmp	ecx, 25
	jle	.L187
	movbe	si, WORD PTR [eax+24]
	mov	WORD PTR [edx+24], si
	cmp	ecx, 27
	jle	.L187
	movbe	bx, WORD PTR [eax+26]
	mov	WORD PTR [edx+26], bx
	cmp	ecx, 29
	jle	.L187
	movbe	ax, WORD PTR [eax+28]
	mov	WORD PTR [edx+28], ax
	vzeroupper
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L187:
	.cfi_restore_state
	vzeroupper
.L188:
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L168:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	xor	edi, edi
	jmp	.L163
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
	jbe	.L202
	cmp	eax, 31
	jbe	.L202
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L200
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L202:
	mov	edx, 1
.L200:
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
	jbe	.L211
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L208
	cmp	eax, 8231
	jbe	.L208
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L205
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L205
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L208:
	mov	edx, 1
.L205:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L211:
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
	jbe	.L212
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L212:
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
	jp	.L224
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L220
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L223
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L223:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L224:
	fstp	st(1)
.L216:
	ret
	.p2align 4,,10
	.p2align 3
.L220:
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
	jp	.L233
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L229
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L232
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L232:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L233:
	fstp	st(1)
.L225:
	ret
	.p2align 4,,10
	.p2align 3
.L229:
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
	jp	.L239
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L242
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
	je	.L236
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L239:
	fstp	st(0)
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L242:
	fstp	st(0)
.L234:
	ret
	.p2align 4,,10
	.p2align 3
.L236:
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
	jp	.L248
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L251
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
	je	.L245
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L248:
	fstp	st(0)
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L251:
	fstp	st(0)
.L243:
	ret
	.p2align 4,,10
	.p2align 3
.L245:
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
	jp	.L263
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L264
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
	jne	.L262
	fcomi	st, st(1)
	jbe	.L265
	fstp	st(1)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L264:
	fstp	st(0)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L265:
	fstp	st(0)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L266:
	fstp	st(0)
.L258:
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L263:
	fstp	st(0)
.L252:
	ret
	.p2align 4,,10
	.p2align 3
.L262:
	test	edx, edx
	je	.L266
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
	jp	.L275
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L273
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
	je	.L269
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	fstp	st(0)
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L275:
	fstp	st(0)
.L267:
	ret
	.p2align 4,,10
	.p2align 3
.L269:
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
	jp	.L284
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L282
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
	je	.L278
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L282:
	fstp	st(0)
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L284:
	fstp	st(0)
.L276:
	ret
	.p2align 4,,10
	.p2align 3
.L278:
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
	jp	.L296
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L297
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
	jne	.L295
	fcomi	st, st(1)
	jbe	.L298
	fstp	st(0)
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L296:
	fstp	st(0)
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L298:
	fstp	st(1)
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L299:
	fstp	st(1)
.L290:
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L297:
	fstp	st(0)
.L285:
	ret
	.p2align 4,,10
	.p2align 3
.L295:
	test	edx, edx
	je	.L299
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
	je	.L301
	.p2align 5
	.p2align 4
	.p2align 3
.L302:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L302
.L301:
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
	mulx	edx, eax, eax
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
	je	.L314
	vmovd	xmm1, DWORD PTR [eax]
	vpinsrd	xmm0, xmm1, eax, 1
	vmovq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	.L313
	mov	DWORD PTR [ecx+4], edx
.L313:
	ret
	.p2align 4,,10
	.p2align 3
.L314:
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
	je	.L316
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L316:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L324
	mov	DWORD PTR [eax], edx
.L324:
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
	mov	esi, DWORD PTR [esp+60]
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	.L326
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, DWORD PTR [esp+52]
	xor	ebx, ebx
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L343:
	add	ebx, 1
	add	ebp, esi
	cmp	DWORD PTR [esp+12], ebx
	je	.L342
.L328:
	sub	esp, 8
	.cfi_def_cfa_offset 56
	mov	edi, ebp
	push	ebp
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+60]
	.cfi_def_cfa_offset 64
	call	[DWORD PTR [esp+80]]
	add	esp, 16
	.cfi_def_cfa_offset 48
	test	eax, eax
	jne	.L343
.L325:
	add	esp, 28
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
.L342:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L326:
	mov	eax, DWORD PTR [esp+56]
	mov	ebp, ecx
	lea	edx, [ecx+1]
	imul	ebp, esi
	add	ebp, DWORD PTR [esp+52]
	mov	DWORD PTR [eax], edx
	mov	edi, ebp
	test	esi, esi
	je	.L325
	sub	esp, 4
	.cfi_def_cfa_offset 52
	push	esi
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 60
	push	ebp
	.cfi_def_cfa_offset 64
	call	memmove
	add	esp, 16
	.cfi_def_cfa_offset 48
	mov	eax, edi
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
	mov	edi, DWORD PTR [eax]
	test	edi, edi
	je	.L345
	mov	eax, DWORD PTR [esp+36]
	mov	esi, edi
	xor	ebx, ebx
	mov	edi, eax
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L357:
	add	ebx, 1
	add	edi, DWORD PTR [esp+44]
	cmp	esi, ebx
	je	.L345
.L347:
	sub	esp, 8
	.cfi_def_cfa_offset 40
	mov	ebp, edi
	push	edi
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	jne	.L357
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
.L345:
	.cfi_restore_state
	add	esp, 12
	.cfi_def_cfa_offset 20
	xor	ebp, ebp
	pop	ebx
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
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.p2align 4
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	vmovd	xmm0, DWORD PTR [esp+4]
	vpabsd	xmm1, xmm0
	vmovd	eax, xmm1
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
	jbe	.L382
	mov	edx, ecx
	jmp	.L386
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L382:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L382
.L386:
	cmp	dl, 32
	je	.L382
	cmp	dl, 43
	je	.L363
	cmp	dl, 45
	jne	.L387
	movsx	ebp, BYTE PTR [eax+1]
	lea	esi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L372
	mov	ebp, 1
.L366:
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L369:
	lea	ebx, [edi+edi*4]
	movsx	ecx, BYTE PTR [esi+1]
	lea	eax, [edx-48]
	add	esi, 1
	add	ebx, ebx
	movsx	eax, al
	mov	edi, ebx
	mov	edx, ecx
	sub	ecx, 48
	sub	edi, eax
	cmp	ecx, 9
	jbe	.L369
	sub	eax, ebx
	test	ebp, ebp
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	cmovne	eax, edi
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L387:
	.cfi_restore_state
	sub	ecx, 48
	mov	esi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L366
.L372:
	xor	eax, eax
.L388:
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
.L363:
	.cfi_restore_state
	movsx	edi, BYTE PTR [eax+1]
	lea	esi, [eax+1]
	xor	ebp, ebp
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L366
	xor	eax, eax
	jmp	.L388
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
	jbe	.L410
	mov	edx, ecx
	jmp	.L413
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L410:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L410
.L413:
	cmp	dl, 32
	je	.L410
	cmp	dl, 43
	je	.L393
	cmp	dl, 45
	je	.L414
	sub	ecx, 48
	mov	esi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L401
.L395:
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L398:
	lea	ecx, [edx-48]
	add	esi, 1
	lea	ebx, [edi+edi*4]
	movsx	eax, cl
	movsx	ecx, BYTE PTR [esi]
	add	ebx, ebx
	mov	edi, ebx
	mov	edx, ecx
	sub	ecx, 48
	sub	edi, eax
	cmp	ecx, 9
	jbe	.L398
	sub	eax, ebx
	test	ebp, ebp
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	cmovne	eax, edi
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L414:
	.cfi_restore_state
	lea	esi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L395
.L401:
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
.L393:
	.cfi_restore_state
	movsx	edi, BYTE PTR [eax+1]
	lea	esi, [eax+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L401
	xor	ebp, ebp
	jmp	.L395
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
	jbe	.L438
	mov	eax, ecx
	jmp	.L442
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L438:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	esi, [ecx-9]
	mov	eax, ecx
	cmp	esi, 4
	jbe	.L438
.L442:
	cmp	al, 32
	je	.L438
	cmp	al, 43
	je	.L419
	cmp	al, 45
	jne	.L443
	movsx	edi, BYTE PTR [edx+1]
	lea	ecx, [edx+1]
	mov	eax, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L428
	mov	edi, 1
.L422:
	vpxor	xmm5, xmm5, xmm5
	.p2align 4
	.p2align 3
.L425:
	sub	eax, 48
	vpsllq	xmm0, xmm5, 2
	add	ecx, 1
	movsx	eax, al
	vpaddq	xmm1, xmm0, xmm5
	cdq
	vpsllq	xmm3, xmm1, 1
	vmovd	xmm2, eax
	vpinsrd	xmm4, xmm2, edx, 1
	movsx	edx, BYTE PTR [ecx]
	vpsubq	xmm5, xmm3, xmm4
	mov	eax, edx
	sub	edx, 48
	vmovd	esi, xmm5
	vpextrd	ebx, xmm5, 1
	cmp	edx, 9
	jbe	.L425
	test	edi, edi
	jne	.L415
	vpsubq	xmm6, xmm4, xmm3
	vmovd	esi, xmm6
	vpextrd	ebx, xmm6, 1
.L415:
	mov	eax, esi
	mov	edx, ebx
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
.L443:
	.cfi_restore_state
	lea	ebx, [ecx-48]
	xor	edi, edi
	mov	ecx, edx
	cmp	ebx, 9
	jbe	.L422
.L428:
	xor	esi, esi
	xor	ebx, ebx
	mov	eax, esi
	mov	edx, ebx
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
.L419:
	.cfi_restore_state
	lea	ecx, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	xor	edi, edi
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L422
	jmp	.L428
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
.L459:
	test	ebx, ebx
	je	.L445
.L460:
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
	js	.L449
	je	.L444
	sub	ebx, 1
	lea	eax, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L460
.L445:
	xor	ebp, ebp
.L444:
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
.L449:
	.cfi_restore_state
	mov	ebx, esi
	jmp	.L459
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
	je	.L466
	.p2align 4
	.p2align 3
.L474:
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
	je	.L461
	jle	.L464
	lea	ebp, [ebp-1]
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L474
.L466:
	xor	ebx, ebx
.L461:
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
.L464:
	.cfi_restore_state
	test	esi, esi
	je	.L466
	mov	ebp, esi
	jmp	.L474
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
	vmovq	xmm0, QWORD PTR [esp+4]
	vpabsq	xmm1, xmm0
	vmovd	eax, xmm1
	vpextrd	edx, xmm1, 1
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
	vmovq	xmm0, QWORD PTR [esp+40]
	vmovq	QWORD PTR [ebx+8], xmm0
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
	vmovd	xmm0, DWORD PTR [esp+4]
	vpabsd	xmm1, xmm0
	vmovd	eax, xmm1
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
	vmovq	xmm0, QWORD PTR [esp+4]
	vpabsq	xmm1, xmm0
	vmovd	eax, xmm1
	vpextrd	edx, xmm1, 1
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
	vmovq	xmm0, QWORD PTR [esp+40]
	vmovq	QWORD PTR [ebx+8], xmm0
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
	jne	.L488
	jmp	.L491
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L490:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L491
.L488:
	cmp	ecx, edx
	jne	.L490
	ret
	.p2align 4,,10
	.p2align 3
.L491:
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
	je	.L496
	jmp	.L497
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L498:
	mov	eax, DWORD PTR [edx+4]
	mov	ebx, DWORD PTR [ecx+4]
	add	edx, 4
	add	ecx, 4
	cmp	eax, ebx
	jne	.L497
.L496:
	test	eax, eax
	jne	.L498
.L497:
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
.L505:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L505
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
	je	.L511
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L510:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L510
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L511:
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
	jne	.L514
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L528:
	test	ebx, ebx
	je	.L518
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L520
.L514:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L528
.L518:
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
.L520:
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
	jne	.L530
	jmp	.L533
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L532:
	add	eax, 4
	sub	edx, 1
	je	.L533
.L530:
	cmp	DWORD PTR [eax], ecx
	jne	.L532
	ret
	.p2align 4,,10
	.p2align 3
.L533:
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
	jne	.L538
	jmp	.L537
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L540:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L543
.L538:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L540
	cmp	ebx, DWORD PTR [edx]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
.L537:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L543:
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
	je	.L551
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
.L551:
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	cmp	ebx, esi
	je	.L600
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, ebx
	sub	ecx, esi
	lea	edx, [0+eax*4]
	sub	eax, 1
	cmp	ecx, edx
	jnb	.L660
	mov	ecx, DWORD PTR [ebp+16]
	test	ecx, ecx
	je	.L600
	cmp	eax, 6
	jbe	.L639
	mov	edi, ebx
	sub	edi, esi
	add	edi, 60
	cmp	edi, 56
	jbe	.L639
	cmp	eax, 14
	jbe	.L579
	sub	edx, 64
	lea	edi, [edx+ebx]
	lea	ecx, [esi+edx]
	mov	edx, 4
	shrx	edx, DWORD PTR [ebp+16], edx
	mov	DWORD PTR [esp+60], edi
	sal	edx, 6
	mov	edi, ecx
	sub	edi, edx
	mov	edx, DWORD PTR [esp+60]
	.p2align 5
	.p2align 4
	.p2align 3
.L563:
	vmovdqu32	zmm2, ZMMWORD PTR [ecx]
	sub	ecx, 64
	sub	edx, 64
	vmovdqu32	ZMMWORD PTR [edx+64], zmm2
	cmp	edi, ecx
	jne	.L563
	mov	edx, DWORD PTR [ebp+16]
	and	edx, -16
	sub	eax, edx
	test	BYTE PTR [ebp+16], 15
	je	.L657
	mov	ecx, DWORD PTR [ebp+16]
	sub	ecx, edx
	lea	edi, [ecx-1]
	cmp	edi, 6
	jbe	.L566
.L562:
	mov	edi, DWORD PTR [ebp+16]
	neg	edx
	lea	edx, [edi+1073741816+edx]
	mov	edi, ecx
	and	edi, -8
	vmovdqu	ymm3, YMMWORD PTR [esi+edx*4]
	sub	eax, edi
	and	ecx, 7
	vmovdqu	YMMWORD PTR [ebx+edx*4], ymm3
	je	.L657
.L566:
	mov	ecx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [ebx+eax*4], ecx
	lea	ecx, [eax-1]
	test	eax, eax
	je	.L657
	mov	edi, DWORD PTR [esi+ecx*4]
	lea	edx, [0+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edi
	test	ecx, ecx
	je	.L657
	mov	ecx, DWORD PTR [esi-4+edx]
	mov	DWORD PTR [ebx-4+edx], ecx
	cmp	eax, 2
	je	.L657
	mov	edi, DWORD PTR [esi-8+edx]
	mov	DWORD PTR [ebx-8+edx], edi
	cmp	eax, 3
	je	.L657
	mov	ecx, DWORD PTR [esi-12+edx]
	mov	DWORD PTR [ebx-12+edx], ecx
	cmp	eax, 4
	je	.L657
	mov	edi, DWORD PTR [esi-16+edx]
	mov	DWORD PTR [ebx-16+edx], edi
	cmp	eax, 5
	je	.L657
	mov	esi, DWORD PTR [esi-20+edx]
	mov	DWORD PTR [ebx-20+edx], esi
	vzeroupper
.L600:
	lea	esp, [ebp-12]
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L660:
	.cfi_restore_state
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	.L600
	cmp	eax, 6
	jbe	.L580
	lea	edx, [esi+4]
	mov	ecx, ebx
	sub	ecx, edx
	cmp	ecx, 56
	jbe	.L581
	cmp	eax, 14
	jbe	.L582
	xor	edx, edx
	mov	ecx, 4
	shrx	edi, DWORD PTR [ebp+16], ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L572:
	mov	ecx, edx
	add	edx, 1
	sal	ecx, 6
	vmovdqu32	zmm0, ZMMWORD PTR [esi+ecx]
	vmovdqu32	ZMMWORD PTR [ebx+ecx], zmm0
	cmp	edi, edx
	jne	.L572
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -16
	lea	edx, [0+edi*4]
	mov	DWORD PTR [esp+60], edi
	sub	eax, edi
	lea	ecx, [esi+edx]
	add	edx, ebx
	test	BYTE PTR [ebp+16], 15
	je	.L657
	sub	DWORD PTR [ebp+16], edi
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 1
	cmp	edi, 6
	jbe	.L575
.L571:
	mov	edi, DWORD PTR [esp+60]
	vmovdqu	ymm1, YMMWORD PTR [esi+edi*4]
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -8
	vmovdqu	YMMWORD PTR [ebx+edi*4], ymm1
	sub	eax, esi
	sal	esi, 2
	add	ecx, esi
	add	edx, esi
	test	BYTE PTR [ebp+16], 7
	je	.L657
.L575:
	mov	edi, DWORD PTR [ecx]
	mov	DWORD PTR [edx], edi
	test	eax, eax
	je	.L657
	mov	esi, DWORD PTR [ecx+4]
	mov	DWORD PTR [edx+4], esi
	cmp	eax, 1
	je	.L657
	mov	edi, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+8], edi
	cmp	eax, 2
	je	.L657
	mov	esi, DWORD PTR [ecx+12]
	mov	DWORD PTR [edx+12], esi
	cmp	eax, 3
	je	.L657
	mov	edi, DWORD PTR [ecx+16]
	mov	DWORD PTR [edx+16], edi
	cmp	eax, 4
	je	.L657
	mov	esi, DWORD PTR [ecx+20]
	mov	DWORD PTR [edx+20], esi
	cmp	eax, 5
	je	.L657
	mov	eax, DWORD PTR [ecx+24]
	mov	DWORD PTR [edx+24], eax
	vzeroupper
	jmp	.L600
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L639:
	mov	edx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [ebx+eax*4], edx
	sub	eax, 1
	jb	.L600
	mov	edx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [ebx+eax*4], edx
	sub	eax, 1
	jnb	.L639
	jmp	.L600
	.p2align 4,,10
	.p2align 3
.L657:
	vzeroupper
	lea	esp, [ebp-12]
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L580:
	.cfi_restore_state
	mov	ecx, ebx
	lea	edx, [esi+4]
	jmp	.L640
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L661:
	add	edx, 4
.L640:
	mov	edi, DWORD PTR [edx-4]
	add	ecx, 4
	mov	DWORD PTR [ecx-4], edi
	sub	eax, 1
	jb	.L600
	jmp	.L661
.L581:
	mov	ecx, ebx
	jmp	.L640
.L582:
	mov	DWORD PTR [esp+60], 0
	mov	ecx, esi
	mov	edx, ebx
	jmp	.L571
.L579:
	mov	ecx, DWORD PTR [ebp+16]
	xor	edx, edx
	jmp	.L562
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	test	eax, eax
	je	.L663
	lea	ebx, [eax-1]
	cmp	ebx, 14
	jbe	.L669
	vpbroadcastd	zmm0, edi
	xor	eax, eax
	mov	edx, 4
	shrx	esi, DWORD PTR [ebp+16], edx
	.p2align 5
	.p2align 4
	.p2align 3
.L665:
	mov	edx, eax
	add	eax, 1
	sal	edx, 6
	vmovdqu32	ZMMWORD PTR [ecx+edx], zmm0
	cmp	esi, eax
	jne	.L665
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -16
	mov	DWORD PTR [esp+60], esi
	sub	ebx, esi
	lea	esi, [ecx+esi*4]
	test	BYTE PTR [ebp+16], 15
	je	.L704
.L664:
	mov	eax, DWORD PTR [esp+60]
	mov	edx, DWORD PTR [ebp+16]
	sub	edx, eax
	lea	eax, [edx-1]
	cmp	eax, 6
	jbe	.L667
	mov	eax, DWORD PTR [esp+60]
	vpbroadcastd	ymm1, edi
	vmovdqu	YMMWORD PTR [ecx+eax*4], ymm1
	mov	eax, edx
	and	eax, -8
	sub	ebx, eax
	and	edx, 7
	lea	esi, [esi+eax*4]
	je	.L704
.L667:
	mov	DWORD PTR [esi], edi
	test	ebx, ebx
	je	.L704
	mov	DWORD PTR [esi+4], edi
	cmp	ebx, 1
	je	.L704
	mov	DWORD PTR [esi+8], edi
	cmp	ebx, 2
	je	.L704
	mov	DWORD PTR [esi+12], edi
	cmp	ebx, 3
	je	.L704
	mov	DWORD PTR [esi+16], edi
	cmp	ebx, 4
	je	.L704
	mov	DWORD PTR [esi+20], edi
	cmp	ebx, 5
	je	.L704
	mov	DWORD PTR [esi+24], edi
	mov	eax, ecx
	vzeroupper
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L704:
	.cfi_restore_state
	vzeroupper
.L663:
	lea	esp, [ebp-12]
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L669:
	.cfi_restore_state
	mov	DWORD PTR [esp+60], 0
	mov	esi, ecx
	jmp	.L664
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp+8], ecx
	jnb	.L707
	test	eax, eax
	je	.L755
	lea	edx, [eax-1]
	cmp	edx, 30
	jbe	.L716
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, ecx
	lea	edi, [esi-2+eax]
	sub	ebx, edi
	lea	esi, [ebx+62+edx]
	cmp	esi, 62
	jbe	.L716
	mov	edi, DWORD PTR [ebp+8]
	lea	esi, [ecx+eax]
	add	edi, eax
	mov	DWORD PTR [esp+60], edi
	cmp	edx, 62
	jbe	.L728
	mov	edx, DWORD PTR [ebp+8]
	lea	ebx, [eax-64]
	mov	edi, eax
	and	edi, -64
	add	edx, ebx
	add	ebx, ecx
	mov	DWORD PTR [esp+56], edi
	mov	DWORD PTR [esp+52], ebx
	mov	ebx, edx
	sub	ebx, edi
	mov	edi, ebx
	mov	ebx, DWORD PTR [esp+52]
	.p2align 5
	.p2align 4
	.p2align 3
.L711:
	vmovdqu8	zmm2, ZMMWORD PTR [edx]
	sub	edx, 64
	sub	ebx, 64
	vmovdqu8	ZMMWORD PTR [ebx+64], zmm2
	cmp	edi, edx
	jne	.L711
	mov	edi, DWORD PTR [esp+56]
	mov	edx, eax
	sub	DWORD PTR [esp+60], edi
	sub	esi, edi
	sub	edx, edi
	cmp	eax, edi
	je	.L754
	lea	ebx, [edx-1]
	mov	eax, edx
	cmp	ebx, 30
	jbe	.L713
.L710:
	mov	edi, DWORD PTR [ebp+8]
	vmovdqu8	ymm3, YMMWORD PTR [edi-32+eax]
	vmovdqu8	YMMWORD PTR [ecx-32+eax], ymm3
	mov	ecx, eax
	and	ecx, -32
	sub	DWORD PTR [esp+60], ecx
	sub	esi, ecx
	sub	edx, ecx
	test	al, 31
	je	.L754
.L713:
	mov	edi, DWORD PTR [esp+60]
	mov	ebx, edx
	neg	ebx
	sub	edi, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L715:
	movzx	ecx, BYTE PTR [edi-1+edx]
	lea	eax, [esi+ebx]
	mov	BYTE PTR [eax-1+edx], cl
	sub	edx, 1
	jne	.L715
.L754:
	vzeroupper
.L755:
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L707:
	.cfi_restore_state
	je	.L755
	test	eax, eax
	je	.L755
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [eax-1]
	lea	edx, [esi+1]
	cmp	ebx, 30
	jbe	.L718
	mov	edi, ecx
	sub	edi, edx
	cmp	edi, 62
	jbe	.L718
	cmp	ebx, 62
	jbe	.L729
	mov	ebx, eax
	mov	edx, DWORD PTR [ebp+8]
	mov	edi, ecx
	and	ebx, -64
	mov	esi, ebx
	add	esi, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L720:
	vmovdqu8	zmm0, ZMMWORD PTR [edx]
	add	edx, 64
	add	edi, 64
	vmovdqu8	ZMMWORD PTR [edi-64], zmm0
	cmp	esi, edx
	jne	.L720
	lea	edx, [ecx+ebx]
	mov	DWORD PTR [esp+60], edx
	mov	edx, eax
	sub	edx, ebx
	cmp	eax, ebx
	je	.L754
	lea	edi, [edx-1]
	mov	eax, edx
	cmp	edi, 30
	jbe	.L723
.L719:
	mov	edi, DWORD PTR [ebp+8]
	vmovdqu8	ymm1, YMMWORD PTR [edi+ebx]
	vmovdqu8	YMMWORD PTR [ecx+ebx], ymm1
	mov	ecx, eax
	and	ecx, -32
	add	DWORD PTR [esp+60], ecx
	add	esi, ecx
	sub	edx, ecx
	test	al, 31
	je	.L754
.L723:
	mov	edi, DWORD PTR [esp+60]
	add	edx, esi
	.p2align 3
	.p2align 4
	.p2align 3
.L725:
	movsb
	cmp	edx, esi
	jne	.L725
	vzeroupper
	jmp	.L755
	.p2align 4,,10
	.p2align 3
.L716:
	mov	esi, DWORD PTR [ebp+8]
	jmp	.L750
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L757:
	sub	edx, 1
.L750:
	movzx	ebx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	mov	eax, edx
	test	edx, edx
	jne	.L757
	jmp	.L755
	.p2align 4,,10
	.p2align 3
.L718:
	add	eax, DWORD PTR [ebp+8]
	jmp	.L726
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L758:
	add	edx, 1
.L726:
	movzx	ebx, BYTE PTR [edx-1]
	add	ecx, 1
	mov	BYTE PTR [ecx-1], bl
	cmp	eax, edx
	jne	.L758
	jmp	.L755
.L728:
	mov	edx, eax
	jmp	.L710
.L729:
	mov	DWORD PTR [esp+60], ecx
	mov	esi, DWORD PTR [ebp+8]
	mov	edx, eax
	xor	ebx, ebx
	jmp	.L719
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
	shlx	eax, eax, ecx
	test	cl, 32
	je	.L761
	mov	edx, eax
	xor	eax, eax
.L761:
	neg	ecx
	shrd	esi, edi, cl
	shrx	edi, edi, ecx
	test	cl, 32
	je	.L762
	mov	esi, edi
	xor	edi, edi
.L762:
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
	shrx	edx, edx, ecx
	test	cl, 32
	je	.L765
	mov	eax, edx
	xor	edx, edx
.L765:
	neg	ecx
	shld	edi, esi, cl
	shlx	esi, esi, ecx
	test	cl, 32
	je	.L766
	mov	edi, esi
	xor	esi, esi
.L766:
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	eax, 1
	vmovdqa32	zmm2, ZMMWORD PTR .LC5
	vpxor	xmm4, xmm4, xmm4
	vpbroadcastd	zmm1, eax
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [ebp+8]
	vpbroadcastd	zmm0, ebx
	vpsrlvd	zmm3, zmm0, zmm2
	vpandd	zmm5, zmm3, zmm1
	vpcmpd	k0, zmm5, zmm4, 4
	kortestw	k0, k0
	jne	.L785
	vmovdqa32	zmm2, ZMMWORD PTR .LC7
	vpsrlvd	zmm6, zmm0, zmm2
	vpandd	zmm7, zmm6, zmm1
	vpcmpd	k1, zmm7, zmm4, 4
	kortestw	k1, k1
	jne	.L786
.L799:
	xor	eax, eax
.L778:
	vzeroupper
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L786:
	.cfi_restore_state
	vmovdqa32	zmm0, ZMMWORD PTR .LC6
.L779:
	vmovd	edx, xmm2
	vmovd	ecx, xmm0
	bt	ebx, edx
	lea	eax, [edx+1]
	jc	.L778
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+2]
	jne	.L778
	cmp	ecx, 2
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+3]
	jne	.L778
	cmp	ecx, 3
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+4]
	jne	.L778
	cmp	ecx, 4
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+5]
	jne	.L778
	cmp	ecx, 5
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+6]
	jne	.L778
	cmp	ecx, 6
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+7]
	jne	.L778
	cmp	ecx, 7
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+8]
	jne	.L778
	cmp	ecx, 8
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+9]
	jne	.L778
	cmp	ecx, 9
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+10]
	jne	.L778
	cmp	ecx, 10
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+11]
	jne	.L778
	cmp	ecx, 11
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+12]
	jne	.L778
	cmp	ecx, 12
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+13]
	jne	.L778
	cmp	ecx, 13
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+14]
	jne	.L778
	cmp	ecx, 14
	je	.L799
	shrx	esi, ebx, eax
	and	esi, 1
	lea	eax, [edx+15]
	jne	.L778
	cmp	ecx, 15
	je	.L799
	bt	ebx, eax
	mov	eax, 0
	jnc	.L778
	lea	eax, [edx+16]
	jmp	.L778
.L785:
	vmovdqa32	zmm0, ZMMWORD PTR .LC4
	jmp	.L779
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
	je	.L806
	mov	edx, eax
	and	edx, 1
	jne	.L806
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L808:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L808
.L806:
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
	fld	DWORD PTR .LC9
	mov	eax, 1
	fcomip	st, st(1)
	ja	.L816
	fld	DWORD PTR .LC10
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L813
	.p2align 4,,10
	.p2align 3
.L816:
	fstp	st(0)
.L813:
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
	fld	QWORD PTR .LC11
	mov	eax, 1
	fcomip	st, st(1)
	ja	.L820
	fld	QWORD PTR .LC12
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L817
	.p2align 4,,10
	.p2align 3
.L820:
	fstp	st(0)
.L817:
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
	fld	TBYTE PTR .LC13
	fcomip	st, st(1)
	ja	.L824
	fld	TBYTE PTR .LC14
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L821
	.p2align 4,,10
	.p2align 3
.L824:
	fstp	st(0)
.L821:
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
	jp	.L827
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L834
	jne	.L834
	jmp	.L827
	.p2align 4,,10
	.p2align 3
.L842:
	fstp	st(0)
.L827:
	ret
	.p2align 4,,10
	.p2align 3
.L834:
	fld	DWORD PTR .LC15
	test	eax, eax
	jns	.L829
	fstp	st(0)
	fld	DWORD PTR .LC16
.L829:
	test	al, 1
	je	.L830
	.p2align 4
	.p2align 3
.L831:
	fmul	st(1), st
.L830:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L842
	fmul	st, st(0)
	test	al, 1
	jne	.L831
.L841:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L831
	jmp	.L841
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
	jp	.L844
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L851
	jne	.L851
	jmp	.L844
	.p2align 4,,10
	.p2align 3
.L860:
	fstp	st(0)
.L844:
	ret
	.p2align 4,,10
	.p2align 3
.L851:
	test	eax, eax
	js	.L858
	fld	DWORD PTR .LC15
.L846:
	test	al, 1
	je	.L847
	.p2align 4
	.p2align 3
.L848:
	fmul	st(1), st
.L847:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L860
	fmul	st, st(0)
	test	al, 1
	jne	.L848
.L859:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L848
	jmp	.L859
	.p2align 4,,10
	.p2align 3
.L858:
	fld	DWORD PTR .LC16
	jmp	.L846
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
	jp	.L862
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L869
	jne	.L869
	jmp	.L862
	.p2align 4,,10
	.p2align 3
.L878:
	fstp	st(0)
.L862:
	ret
	.p2align 4,,10
	.p2align 3
.L869:
	test	eax, eax
	js	.L876
	fld	DWORD PTR .LC15
.L864:
	test	al, 1
	je	.L865
	.p2align 4
	.p2align 3
.L866:
	fmul	st(1), st
.L865:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L878
	fmul	st, st(0)
	test	al, 1
	jne	.L866
.L877:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L866
	jmp	.L877
	.p2align 4,,10
	.p2align 3
.L876:
	fld	DWORD PTR .LC16
	jmp	.L864
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+16]
	test	ebx, ebx
	je	.L880
	lea	eax, [ebx-1]
	cmp	eax, 62
	jbe	.L887
	mov	esi, ebx
	mov	edi, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	and	esi, -64
	mov	eax, esi
	add	eax, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L882:
	vmovdqu8	zmm0, ZMMWORD PTR [edx]
	vpxorq	zmm1, zmm0, ZMMWORD PTR [edi]
	add	edi, 64
	add	edx, 64
	vmovdqu8	ZMMWORD PTR [edx-64], zmm1
	cmp	eax, edi
	jne	.L882
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, ebx
	sub	ecx, esi
	add	edx, esi
	cmp	ebx, esi
	je	.L896
.L881:
	sub	ebx, esi
	lea	edi, [ebx-1]
	cmp	edi, 30
	jbe	.L884
	mov	edi, DWORD PTR [ebp+8]
	add	edi, esi
	vmovdqu8	ymm2, YMMWORD PTR [edi]
	kmovd	k0, edi
	mov	edi, DWORD PTR [ebp+12]
	vpxorq	ymm3, ymm2, YMMWORD PTR [edi+esi]
	mov	edi, ebx
	kmovd	esi, k0
	and	edi, -32
	add	edx, edi
	add	eax, edi
	sub	ecx, edi
	and	ebx, 31
	vmovdqu8	YMMWORD PTR [esi], ymm3
	je	.L896
.L884:
	add	ecx, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L886:
	add	eax, 1
	add	edx, 1
	movzx	ebx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	.L886
.L896:
	vzeroupper
.L880:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	mov	eax, DWORD PTR [ebp+8]
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L887:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, ebx
	xor	esi, esi
	jmp	.L881
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
	je	.L899
	.p2align 3
	.p2align 4
	.p2align 3
.L900:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L900
.L899:
	test	edx, edx
	jne	.L901
	jmp	.L902
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L903:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L902
.L901:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L903
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
.L902:
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
	je	.L913
.L914:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L916
.L913:
	ret
	.p2align 4,,10
	.p2align 3
.L916:
	add	eax, 1
	cmp	edx, eax
	jne	.L914
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
	je	.L927
.L923:
	mov	eax, DWORD PTR [esp+12]
	jmp	.L926
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L925:
	add	eax, 1
	cmp	dl, cl
	je	.L924
.L926:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L925
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L923
.L927:
	xor	ebx, ebx
.L924:
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
.L933:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	.L933
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
	mov	edi, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+20]
	movzx	ebx, BYTE PTR [edi]
	test	bl, bl
	je	.L948
	mov	eax, edi
	.p2align 3
	.p2align 4
	.p2align 3
.L938:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L938
	mov	esi, edx
	sub	eax, edi
	je	.L936
	mov	DWORD PTR [esp+24], edi
	lea	ebp, [edi-1+eax]
	jmp	.L958
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L961:
	add	edx, 1
	test	cl, cl
	je	.L960
.L958:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	.L961
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	edi, ebx
	jmp	.L940
	.p2align 4,,10
	.p2align 3
.L962:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L941
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L941
.L940:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, ebp
	jne	.L962
.L941:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, edi
	cmp	cl, BYTE PTR [eax]
	je	.L948
	add	edx, 1
	jmp	.L958
	.p2align 4,,10
	.p2align 3
.L960:
	xor	esi, esi
.L936:
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
.L948:
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
	ja	.L973
	fxch	st(2)
	fcomi	st, st(2)
	jbe	.L974
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L966
	jmp	.L967
	.p2align 4,,10
	.p2align 3
.L974:
	fstp	st(1)
	fstp	st(1)
.L967:
	ret
	.p2align 4,,10
	.p2align 3
.L973:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L967
.L966:
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
	je	.L975
	cmp	esi, DWORD PTR [esp+32]
	jb	.L986
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L986
	movzx	ebp, BYTE PTR [edi]
	jmp	.L981
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L985:
	mov	edx, ebx
.L977:
	cmp	esi, edx
	jb	.L986
.L981:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	.L985
	cmp	DWORD PTR [esp+32], 1
	je	.L975
.L980:
	mov	eax, 1
	jmp	.L978
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L979:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	.L975
.L978:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L979
	cmp	esi, ebx
	jb	.L986
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L977
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	.L980
	.p2align 4,,10
	.p2align 3
.L986:
	xor	edx, edx
.L975:
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
	je	.L997
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
.L997:
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
	ja	.L1026
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	.L1027
	fstp	st(0)
.L1005:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1012:
	fld	DWORD PTR .LC16
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	.L1012
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	.L1002
.L1029:
	fchs
.L1002:
	ret
	.p2align 4,,10
	.p2align 3
.L1027:
	fld	DWORD PTR .LC16
	fcomip	st, st(2)
	jbe	.L1030
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L1018
	jne	.L1018
	jmp	.L1008
	.p2align 4,,10
	.p2align 3
.L1030:
	fstp	st(0)
	jmp	.L1008
	.p2align 4,,10
	.p2align 3
.L1031:
	fstp	st(0)
.L1008:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1026:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	.L1028
	fstp	st(1)
	mov	edx, 1
	jmp	.L1005
	.p2align 4,,10
	.p2align 3
.L1028:
	fld	DWORD PTR .LC18
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	.L1031
	fstp	st(1)
	mov	edx, 1
.L1006:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1014:
	fadd	st, st(0)
	fld	DWORD PTR .LC16
	sub	eax, 1
	fcomip	st, st(1)
	ja	.L1014
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	.L1029
	ret
.L1018:
	xor	edx, edx
	jmp	.L1006
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.p2align 4
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	vmovq	xmm1, QWORD PTR [esp+4]
	vmovq	xmm3, QWORD PTR [esp+12]
	vpunpcklqdq	xmm2, xmm1, xmm1
	vptest	xmm2, xmm2
	je	.L1035
	vpxor	xmm2, xmm2, xmm2
	.p2align 4
	.p2align 3
.L1034:
	vmovdqa	xmm4, XMMWORD PTR .LC20
	vpxor	xmm6, xmm6, xmm6
	vpandq	xmm5, xmm1, xmm4
	vpsrlq	xmm1, xmm1, 1
	vpsubq	xmm7, xmm6, xmm5
	vpunpcklqdq	xmm5, xmm1, xmm1
	vptest	xmm5, xmm5
	vpandq	xmm0, xmm7, xmm3
	vpaddq	xmm2, xmm2, xmm0
	vpsllq	xmm3, xmm3, 1
	vmovd	eax, xmm2
	vpextrd	edx, xmm2, 1
	jne	.L1034
	ret
	.p2align 4,,10
	.p2align 3
.L1035:
	xor	eax, eax
	xor	edx, edx
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
	jnb	.L1061
	mov	ecx, 1
	jmp	.L1038
	.p2align 4,,10
	.p2align 3
.L1041:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1040
	test	ecx, ecx
	je	.L1040
.L1038:
	test	edx, edx
	jns	.L1041
.L1042:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1044:
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
	jne	.L1044
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1043:
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
.L1040:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1042
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
.L1061:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1043
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
	je	.L1065
	movsx	ebx, al
	xor	edx, edx
	sal	ebx, 8
	lzcnt	edx, ebx
	lea	ebx, [edx-1]
.L1065:
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
	vmovq	xmm0, QWORD PTR [esp+4]
	mov	edx, 63
	vpsraq	xmm2, xmm0, 63
	vpxorq	xmm0, xmm0, xmm2
	vpunpcklqdq	xmm1, xmm0, xmm0
	vmovd	ecx, xmm0
	vpextrd	eax, xmm0, 1
	vptest	xmm1, xmm1
	je	.L1070
	xor	edx, edx
	lzcnt	edx, eax
	test	eax, eax
	je	.L1075
.L1073:
	sub	edx, 1
.L1070:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1075:
	xor	edx, edx
	lzcnt	edx, ecx
	lea	edx, [edx+32]
	jmp	.L1073
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
	je	.L1076
	.p2align 5
	.p2align 4
	.p2align 3
.L1078:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1078
.L1076:
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, edi
	mov	ebx, edi
	shr	eax, 3
	and	ebx, -8
	mov	DWORD PTR [esp+56], eax
	mov	DWORD PTR [esp+60], ebx
	cmp	ecx, edx
	jb	.L1087
	lea	esi, [edx+edi]
	cmp	esi, ecx
	jnb	.L1148
.L1087:
	mov	esi, DWORD PTR [esp+56]
	test	esi, esi
	je	.L1149
	mov	eax, DWORD PTR [esp+56]
	sub	eax, 1
	cmp	eax, 2
	jbe	.L1089
	mov	ebx, ecx
	sub	ebx, edx
	sub	ebx, 4
	cmp	ebx, 56
	jbe	.L1089
	cmp	eax, 6
	jbe	.L1115
	mov	esi, edi
	mov	eax, edx
	mov	ebx, ecx
	shr	esi, 6
	mov	DWORD PTR [esp+52], esi
	mov	esi, edi
	and	esi, -64
	add	esi, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1091:
	vmovdqu64	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	ebx, 64
	vmovdqu64	ZMMWORD PTR [ebx-64], zmm2
	cmp	esi, eax
	jne	.L1091
	mov	eax, DWORD PTR [esp+52]
	mov	ebx, DWORD PTR [esp+56]
	sal	eax, 3
	cmp	ebx, eax
	je	.L1096
	sub	ebx, eax
	lea	esi, [ebx-1]
	cmp	esi, 2
	jbe	.L1093
.L1090:
	vmovdqu	ymm3, YMMWORD PTR [edx+eax*8]
	mov	esi, ebx
	and	esi, -4
	vmovdqu	YMMWORD PTR [ecx+eax*8], ymm3
	add	eax, esi
	and	ebx, 3
	je	.L1096
.L1093:
	lea	ebx, [0+eax*8]
	vmovq	xmm4, QWORD PTR [edx+eax*8]
	mov	esi, DWORD PTR [esp+56]
	kmovd	k0, ebx
	lea	ebx, [eax+1]
	vmovq	QWORD PTR [ecx+eax*8], xmm4
	cmp	ebx, esi
	jnb	.L1096
	kmovd	ebx, k0
	vmovq	xmm5, QWORD PTR [edx+8+ebx]
	add	eax, 2
	vmovq	QWORD PTR [ecx+8+ebx], xmm5
	cmp	eax, esi
	jnb	.L1096
	vmovq	xmm6, QWORD PTR [edx+16+ebx]
	vmovq	QWORD PTR [ecx+16+ebx], xmm6
.L1096:
	mov	ebx, DWORD PTR [esp+60]
	cmp	ebx, edi
	jnb	.L1145
	mov	eax, edi
	sub	eax, ebx
	mov	DWORD PTR [esp+56], eax
	sub	eax, 1
	mov	DWORD PTR [esp+52], eax
	cmp	eax, 30
	jbe	.L1150
	lea	eax, [ecx+ebx]
	lea	ebx, [edx+1+ebx]
	mov	esi, eax
	sub	esi, ebx
	cmp	esi, 62
	jbe	.L1141
	cmp	DWORD PTR [esp+52], 62
	jbe	.L1116
	mov	ebx, DWORD PTR [esp+60]
	lea	esi, [edx+ebx]
	mov	ebx, DWORD PTR [esp+56]
	and	ebx, -64
	mov	DWORD PTR [esp+52], ebx
	add	ebx, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1098:
	vmovdqu8	zmm0, ZMMWORD PTR [esi]
	add	esi, 64
	add	eax, 64
	vmovdqu8	ZMMWORD PTR [eax-64], zmm0
	cmp	esi, ebx
	jne	.L1098
	mov	esi, DWORD PTR [esp+60]
	mov	eax, DWORD PTR [esp+52]
	mov	ebx, DWORD PTR [esp+56]
	add	esi, eax
	mov	DWORD PTR [esp+60], esi
	cmp	ebx, eax
	je	.L1145
	sub	ebx, eax
	mov	DWORD PTR [esp+56], ebx
	sub	ebx, 1
	cmp	ebx, 30
	jbe	.L1102
.L1097:
	vmovdqu8	ymm1, YMMWORD PTR [edx+esi]
	mov	eax, DWORD PTR [esp+56]
	vmovdqu8	YMMWORD PTR [ecx+esi], ymm1
	mov	esi, eax
	and	esi, -32
	add	DWORD PTR [esp+60], esi
	test	al, 31
	je	.L1145
.L1102:
	mov	eax, DWORD PTR [esp+60]
	.p2align 4
	.p2align 4
	.p2align 3
.L1137:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	add	eax, 1
	cmp	eax, edi
	jb	.L1137
.L1145:
	vzeroupper
.L1146:
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L1148:
	.cfi_restore_state
	lea	eax, [edi-1]
	mov	DWORD PTR [esp+60], eax
	test	edi, edi
	je	.L1146
	cmp	eax, 30
	jbe	.L1113
	lea	ebx, [ecx+eax]
	lea	esi, [edx-2+edi]
	sub	ebx, esi
	add	ebx, 62
	cmp	ebx, 62
	jbe	.L1113
	cmp	eax, 62
	jbe	.L1106
	lea	eax, [edi-64]
	lea	esi, [eax+ecx]
	lea	ebx, [edx+eax]
	mov	DWORD PTR [esp+52], esi
	mov	esi, edi
	mov	eax, ebx
	and	esi, -64
	mov	DWORD PTR [esp+56], esi
	sub	eax, esi
	mov	esi, DWORD PTR [esp+52]
	.p2align 5
	.p2align 4
	.p2align 3
.L1107:
	vmovdqu8	zmm0, ZMMWORD PTR [ebx]
	sub	ebx, 64
	sub	esi, 64
	vmovdqu8	ZMMWORD PTR [esi+64], zmm0
	cmp	eax, ebx
	jne	.L1107
	mov	ebx, DWORD PTR [esp+56]
	sub	DWORD PTR [esp+60], ebx
	cmp	edi, ebx
	je	.L1145
	sub	edi, ebx
	lea	eax, [edi-1]
	cmp	eax, 30
	jbe	.L1112
.L1106:
	vmovdqu8	ymm1, YMMWORD PTR [edx-32+edi]
	mov	esi, edi
	and	esi, -32
	sub	DWORD PTR [esp+60], esi
	vmovdqu8	YMMWORD PTR [ecx-32+edi], ymm1
	and	edi, 31
	je	.L1145
.L1112:
	mov	edi, DWORD PTR [esp+60]
	.p2align 4
	.p2align 4
	.p2align 3
.L1139:
	movzx	ebx, BYTE PTR [edx+edi]
	mov	BYTE PTR [ecx+edi], bl
	sub	edi, 1
	jnb	.L1139
	jmp	.L1145
.L1115:
	mov	ebx, DWORD PTR [esp+56]
	xor	eax, eax
	jmp	.L1090
	.p2align 4,,10
	.p2align 3
.L1089:
	mov	esi, DWORD PTR [esp+56]
	mov	eax, edx
	mov	ebx, ecx
	lea	esi, [edx+esi*8]
	.p2align 5
	.p2align 4
	.p2align 3
.L1095:
	vmovq	xmm7, QWORD PTR [eax]
	add	eax, 8
	add	ebx, 8
	vmovq	QWORD PTR [ebx-8], xmm7
	cmp	esi, eax
	jne	.L1095
	jmp	.L1096
	.p2align 4,,10
	.p2align 3
.L1149:
	mov	eax, DWORD PTR [esp+60]
	add	eax, ecx
	test	edi, edi
	je	.L1146
.L1085:
	mov	ecx, DWORD PTR [esp+60]
	add	ecx, edx
	add	edx, edi
	.p2align 4
	.p2align 4
	.p2align 3
.L1103:
	movzx	ebx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	.L1103
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1141:
	.cfi_restore_state
	vzeroupper
	jmp	.L1085
.L1116:
	mov	esi, DWORD PTR [esp+60]
	jmp	.L1097
.L1113:
	mov	eax, DWORD PTR [esp+60]
	.p2align 4
	.p2align 4
	.p2align 3
.L1138:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jnb	.L1138
	jmp	.L1146
.L1150:
	mov	eax, ebx
	add	eax, ecx
	vzeroupper
	jmp	.L1085
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
	mov	eax, 1
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	shrx	esi, DWORD PTR [ebp+16], eax
	cmp	ebx, ecx
	jb	.L1155
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	cmp	edx, ebx
	jnb	.L1214
.L1155:
	test	esi, esi
	je	.L1154
	lea	eax, [esi-1]
	cmp	eax, 14
	jbe	.L1158
	lea	edi, [ecx+2]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 60
	jbe	.L1158
	cmp	eax, 30
	jbe	.L1176
	mov	edx, 6
	shrx	edi, DWORD PTR [ebp+16], edx
	mov	DWORD PTR [esp+60], edi
	mov	eax, ecx
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, ebx
	and	edi, -64
	add	edi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L1160:
	vmovdqu16	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	edx, 64
	vmovdqu16	ZMMWORD PTR [edx-64], zmm2
	cmp	edi, eax
	jne	.L1160
	mov	eax, DWORD PTR [esp+60]
	sal	eax, 5
	cmp	esi, eax
	je	.L1208
	mov	edx, esi
	sub	edx, eax
	lea	edi, [edx-1]
	cmp	edi, 14
	jbe	.L1162
.L1159:
	vmovdqu16	ymm3, YMMWORD PTR [ecx+eax*2]
	mov	edi, edx
	and	edi, -16
	vmovdqu16	YMMWORD PTR [ebx+eax*2], ymm3
	add	eax, edi
	and	edx, 15
	je	.L1208
.L1162:
	movzx	edx, WORD PTR [ecx+eax*2]
	lea	edi, [eax+eax]
	mov	WORD PTR [ebx+eax*2], dx
	lea	edx, [eax+1]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+2+edi]
	mov	WORD PTR [ebx+2+edi], dx
	lea	edx, [eax+2]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+4+edi]
	mov	WORD PTR [ebx+4+edi], dx
	lea	edx, [eax+3]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+6+edi]
	mov	WORD PTR [ebx+6+edi], dx
	lea	edx, [eax+4]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+8+edi]
	mov	WORD PTR [ebx+8+edi], dx
	lea	edx, [eax+5]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+10+edi]
	mov	WORD PTR [ebx+10+edi], dx
	lea	edx, [eax+6]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+12+edi]
	mov	WORD PTR [ebx+12+edi], dx
	lea	edx, [eax+7]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+14+edi]
	mov	WORD PTR [ebx+14+edi], dx
	lea	edx, [eax+8]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+16+edi]
	mov	WORD PTR [ebx+16+edi], dx
	lea	edx, [eax+9]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+18+edi]
	mov	WORD PTR [ebx+18+edi], dx
	lea	edx, [eax+10]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+20+edi]
	mov	WORD PTR [ebx+20+edi], dx
	lea	edx, [eax+11]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+22+edi]
	mov	WORD PTR [ebx+22+edi], dx
	lea	edx, [eax+12]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+24+edi]
	mov	WORD PTR [ebx+24+edi], dx
	lea	edx, [eax+13]
	cmp	edx, esi
	jnb	.L1208
	movzx	edx, WORD PTR [ecx+26+edi]
	add	eax, 14
	mov	WORD PTR [ebx+26+edi], dx
	cmp	eax, esi
	jnb	.L1208
	movzx	esi, WORD PTR [ecx+28+edi]
	mov	WORD PTR [ebx+28+edi], si
	vzeroupper
.L1154:
	test	BYTE PTR [ebp+16], 1
	je	.L1211
.L1215:
	mov	eax, DWORD PTR [ebp+16]
	movzx	edx, BYTE PTR [ecx-1+eax]
	mov	ecx, DWORD PTR [ebp+16]
	mov	BYTE PTR [ebx-1+ecx], dl
.L1211:
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L1214:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	sub	eax, 1
	test	edi, edi
	je	.L1211
	cmp	eax, 30
	jbe	.L1191
	mov	esi, DWORD PTR [ebp+16]
	lea	edx, [ebx+eax]
	lea	edi, [ecx-2+esi]
	sub	edx, edi
	add	edx, 62
	cmp	edx, 62
	jbe	.L1191
	cmp	eax, 62
	jbe	.L1168
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	sub	esi, 64
	and	edi, -64
	lea	edx, [ecx+esi]
	add	esi, ebx
	mov	DWORD PTR [esp+56], edi
	mov	DWORD PTR [esp+60], esi
	mov	esi, edx
	sub	esi, edi
	mov	edi, esi
	mov	esi, DWORD PTR [esp+60]
	.p2align 5
	.p2align 4
	.p2align 3
.L1169:
	vmovdqu8	zmm0, ZMMWORD PTR [edx]
	sub	edx, 64
	sub	esi, 64
	vmovdqu8	ZMMWORD PTR [esi+64], zmm0
	cmp	edx, edi
	jne	.L1169
	mov	edx, DWORD PTR [esp+56]
	sub	eax, edx
	cmp	DWORD PTR [ebp+16], edx
	je	.L1210
	sub	DWORD PTR [ebp+16], edx
	mov	edi, DWORD PTR [ebp+16]
	lea	esi, [edi-1]
	cmp	esi, 30
	jbe	.L1192
.L1168:
	mov	edi, DWORD PTR [ebp+16]
	vmovdqu8	ymm1, YMMWORD PTR [ecx-32+edi]
	mov	edx, edi
	and	edx, -32
	vmovdqu8	YMMWORD PTR [ebx-32+edi], ymm1
	sub	eax, edx
	and	edi, 31
	je	.L1210
	.p2align 4
	.p2align 4
	.p2align 3
.L1192:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	.L1192
.L1210:
	vzeroupper
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1191:
	.cfi_restore_state
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jb	.L1211
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	.L1191
	jmp	.L1211
	.p2align 4,,10
	.p2align 3
.L1208:
	vzeroupper
	test	BYTE PTR [ebp+16], 1
	je	.L1211
	jmp	.L1215
.L1176:
	mov	edx, esi
	xor	eax, eax
	jmp	.L1159
	.p2align 4,,10
	.p2align 3
.L1158:
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L1164:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	esi, eax
	jne	.L1164
	test	BYTE PTR [ebp+16], 1
	je	.L1211
	jmp	.L1215
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
	mov	eax, 2
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	shrx	edi, DWORD PTR [ebp+16], eax
	mov	edx, DWORD PTR [ebp+12]
	and	ebx, -4
	mov	DWORD PTR [esp+60], ebx
	cmp	ecx, edx
	jb	.L1221
	mov	esi, DWORD PTR [ebp+16]
	add	esi, edx
	cmp	esi, ecx
	jnb	.L1283
.L1221:
	test	edi, edi
	je	.L1284
	lea	eax, [edi-1]
	cmp	eax, 6
	jbe	.L1223
	lea	esi, [edx+4]
	mov	ebx, ecx
	sub	ebx, esi
	cmp	ebx, 56
	jbe	.L1223
	cmp	eax, 14
	jbe	.L1249
	mov	ebx, 6
	shrx	esi, DWORD PTR [ebp+16], ebx
	mov	DWORD PTR [esp+56], esi
	mov	eax, edx
	mov	esi, DWORD PTR [ebp+16]
	mov	ebx, ecx
	and	esi, -64
	add	esi, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1225:
	vmovdqu32	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	ebx, 64
	vmovdqu32	ZMMWORD PTR [ebx-64], zmm2
	cmp	esi, eax
	jne	.L1225
	mov	eax, DWORD PTR [esp+56]
	sal	eax, 4
	cmp	edi, eax
	je	.L1230
	mov	ebx, edi
	sub	ebx, eax
	lea	esi, [ebx-1]
	cmp	esi, 6
	jbe	.L1227
.L1224:
	vmovdqu	ymm3, YMMWORD PTR [edx+eax*4]
	mov	esi, ebx
	and	esi, -8
	vmovdqu	YMMWORD PTR [ecx+eax*4], ymm3
	add	eax, esi
	and	ebx, 7
	je	.L1230
.L1227:
	mov	ebx, DWORD PTR [edx+eax*4]
	lea	esi, [0+eax*4]
	mov	DWORD PTR [ecx+eax*4], ebx
	lea	ebx, [eax+1]
	cmp	ebx, edi
	jnb	.L1230
	mov	ebx, DWORD PTR [edx+4+esi]
	mov	DWORD PTR [ecx+4+esi], ebx
	lea	ebx, [eax+2]
	cmp	ebx, edi
	jnb	.L1230
	mov	ebx, DWORD PTR [edx+8+esi]
	mov	DWORD PTR [ecx+8+esi], ebx
	lea	ebx, [eax+3]
	cmp	ebx, edi
	jnb	.L1230
	mov	ebx, DWORD PTR [edx+12+esi]
	mov	DWORD PTR [ecx+12+esi], ebx
	lea	ebx, [eax+4]
	cmp	ebx, edi
	jnb	.L1230
	mov	ebx, DWORD PTR [edx+16+esi]
	mov	DWORD PTR [ecx+16+esi], ebx
	lea	ebx, [eax+5]
	cmp	ebx, edi
	jnb	.L1230
	mov	ebx, DWORD PTR [edx+20+esi]
	add	eax, 6
	mov	DWORD PTR [ecx+20+esi], ebx
	cmp	eax, edi
	jnb	.L1230
	mov	edi, DWORD PTR [edx+24+esi]
	mov	DWORD PTR [ecx+24+esi], edi
.L1230:
	mov	eax, DWORD PTR [esp+60]
	cmp	eax, DWORD PTR [ebp+16]
	jnb	.L1279
	mov	ebx, DWORD PTR [ebp+16]
	sub	ebx, eax
	lea	edi, [ebx-1]
	mov	DWORD PTR [esp+56], edi
	cmp	edi, 30
	jbe	.L1285
	mov	esi, DWORD PTR [esp+60]
	lea	eax, [ecx+esi]
	lea	edi, [edx+1+esi]
	mov	esi, eax
	sub	esi, edi
	cmp	esi, 62
	jbe	.L1275
	cmp	DWORD PTR [esp+56], 62
	jbe	.L1250
	mov	edi, DWORD PTR [esp+60]
	mov	esi, ebx
	and	esi, -64
	add	edi, edx
	mov	DWORD PTR [esp+56], esi
	add	esi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L1232:
	vmovdqu8	zmm4, ZMMWORD PTR [edi]
	add	edi, 64
	add	eax, 64
	vmovdqu8	ZMMWORD PTR [eax-64], zmm4
	cmp	edi, esi
	jne	.L1232
	mov	edi, DWORD PTR [esp+60]
	mov	esi, DWORD PTR [esp+56]
	add	edi, esi
	mov	eax, edi
	cmp	ebx, esi
	je	.L1279
	sub	ebx, esi
	lea	esi, [ebx-1]
	cmp	esi, 30
	jbe	.L1236
.L1231:
	vmovdqu8	ymm5, YMMWORD PTR [edx+edi]
	vmovdqu8	YMMWORD PTR [ecx+edi], ymm5
	mov	edi, ebx
	and	edi, -32
	add	eax, edi
	and	ebx, 31
	je	.L1279
.L1236:
	mov	esi, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
.L1271:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	add	eax, 1
	cmp	eax, esi
	jb	.L1271
.L1279:
	vzeroupper
.L1280:
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
.L1283:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	sub	eax, 1
	test	edi, edi
	je	.L1280
	cmp	eax, 30
	jbe	.L1272
	mov	edi, DWORD PTR [ebp+16]
	lea	ebx, [ecx+eax]
	lea	esi, [edx-2+edi]
	sub	ebx, esi
	add	ebx, 62
	cmp	ebx, 62
	jbe	.L1272
	cmp	eax, 62
	jbe	.L1240
	lea	edi, [edi-64]
	lea	esi, [edi+ecx]
	lea	ebx, [edx+edi]
	mov	edi, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+60], esi
	mov	esi, ebx
	and	edi, -64
	sub	esi, edi
	mov	DWORD PTR [esp+56], edi
	mov	edi, esi
	mov	esi, DWORD PTR [esp+60]
	.p2align 5
	.p2align 4
	.p2align 3
.L1241:
	vmovdqu8	zmm0, ZMMWORD PTR [ebx]
	sub	ebx, 64
	sub	esi, 64
	vmovdqu8	ZMMWORD PTR [esi+64], zmm0
	cmp	edi, ebx
	jne	.L1241
	mov	ebx, DWORD PTR [esp+56]
	sub	eax, ebx
	cmp	DWORD PTR [ebp+16], ebx
	je	.L1279
	sub	DWORD PTR [ebp+16], ebx
	mov	edi, DWORD PTR [ebp+16]
	lea	esi, [edi-1]
	cmp	esi, 30
	jbe	.L1273
.L1240:
	mov	edi, DWORD PTR [ebp+16]
	vmovdqu8	ymm1, YMMWORD PTR [edx-32+edi]
	mov	ebx, edi
	and	ebx, -32
	vmovdqu8	YMMWORD PTR [ecx-32+edi], ymm1
	sub	eax, ebx
	and	edi, 31
	je	.L1279
	.p2align 4
	.p2align 4
	.p2align 3
.L1273:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jnb	.L1273
	vzeroupper
	jmp	.L1280
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1272:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jb	.L1280
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jnb	.L1272
	jmp	.L1280
.L1249:
	mov	ebx, edi
	xor	eax, eax
	jmp	.L1224
	.p2align 4,,10
	.p2align 3
.L1223:
	mov	eax, edx
	mov	ebx, ecx
	lea	edi, [edx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L1229:
	mov	esi, DWORD PTR [eax]
	add	eax, 4
	add	ebx, 4
	mov	DWORD PTR [ebx-4], esi
	cmp	eax, edi
	jne	.L1229
	jmp	.L1230
	.p2align 4,,10
	.p2align 3
.L1284:
	mov	eax, DWORD PTR [esp+60]
	add	eax, ecx
	mov	ecx, DWORD PTR [ebp+16]
	test	ecx, ecx
	je	.L1280
.L1219:
	mov	ecx, DWORD PTR [esp+60]
	add	ecx, edx
	add	edx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
.L1237:
	movzx	ebx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	.L1237
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1275:
	.cfi_restore_state
	vzeroupper
	jmp	.L1219
.L1250:
	mov	eax, DWORD PTR [esp+60]
	mov	edi, eax
	jmp	.L1231
.L1285:
	mov	eax, DWORD PTR [esp+60]
	add	eax, ecx
	vzeroupper
	jmp	.L1219
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
	vmovd	xmm0, DWORD PTR [esp+16]
	vmovq	QWORD PTR [esp], xmm0
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
	vmovd	xmm0, DWORD PTR [esp+16]
	vmovq	QWORD PTR [esp], xmm0
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
	vmovd	xmm0, eax
	vpinsrd	xmm1, xmm0, edx, 1
	vmovq	QWORD PTR [esp+8], xmm1
	fild	QWORD PTR [esp+8]
	test	edx, edx
	jns	.L1292
	fld	DWORD PTR .LC21
	faddp	st(1), st
.L1292:
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
	vmovd	xmm0, eax
	vpinsrd	xmm1, xmm0, edx, 1
	vmovq	QWORD PTR [esp+8], xmm1
	fild	QWORD PTR [esp+8]
	test	edx, edx
	jns	.L1295
	fld	DWORD PTR .LC21
	faddp	st(1), st
.L1295:
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	eax, 1
	vmovdqa32	zmm1, ZMMWORD PTR .LC22
	vpxor	xmm5, xmm5, xmm5
	vpbroadcastd	zmm3, eax
	mov	eax, 16
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+8]
	movzx	edx, cx
	vpbroadcastd	zmm0, edx
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vpcmpd	k0, zmm4, zmm5, 4
	kortestw	k0, k0
	jne	.L1319
.L1298:
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1319:
	.cfi_restore_state
	mov	eax, edx
	shr	eax, 15
	jne	.L1302
	mov	eax, edx
	sar	eax, 14
	jne	.L1298
	mov	eax, edx
	shr	eax, 13
	jne	.L1303
	mov	eax, edx
	shr	eax, 12
	jne	.L1304
	mov	eax, edx
	shr	eax, 11
	jne	.L1305
	mov	eax, edx
	shr	eax, 10
	jne	.L1306
	mov	eax, edx
	shr	eax, 9
	jne	.L1307
	mov	eax, edx
	shr	eax, 8
	jne	.L1308
	mov	eax, edx
	shr	eax, 7
	jne	.L1309
	mov	eax, edx
	shr	eax, 6
	jne	.L1310
	mov	eax, edx
	shr	eax, 5
	jne	.L1311
	mov	eax, edx
	shr	eax, 4
	jne	.L1312
	mov	eax, edx
	shr	eax, 3
	jne	.L1313
	mov	eax, edx
	shr	eax, 2
	jne	.L1314
	shr	edx
	jne	.L1315
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1302:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1298
.L1306:
	mov	eax, 5
	jmp	.L1298
.L1313:
	mov	eax, 12
	jmp	.L1298
.L1303:
	mov	eax, 2
	jmp	.L1298
.L1304:
	mov	eax, 3
	jmp	.L1298
.L1305:
	mov	eax, 4
	jmp	.L1298
.L1307:
	mov	eax, 6
	jmp	.L1298
.L1308:
	mov	eax, 7
	jmp	.L1298
.L1309:
	mov	eax, 8
	jmp	.L1298
.L1310:
	mov	eax, 9
	jmp	.L1298
.L1311:
	mov	eax, 10
	jmp	.L1298
.L1312:
	mov	eax, 11
	jmp	.L1298
.L1314:
	mov	eax, 13
	jmp	.L1298
.L1315:
	mov	eax, 14
	jmp	.L1298
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vmovdqa32	zmm1, ZMMWORD PTR .LC5
	vpxor	xmm5, xmm5, xmm5
	vpbroadcastd	zmm3, edx
	mov	edx, 16
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	movzx	ecx, ax
	vpbroadcastd	zmm0, ecx
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vpcmpd	k0, zmm4, zmm5, 4
	kortestw	k0, k0
	jne	.L1342
.L1320:
	mov	eax, edx
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1342:
	.cfi_restore_state
	test	al, 1
	jne	.L1324
	test	al, 2
	jne	.L1325
	test	al, 4
	jne	.L1326
	test	al, 8
	jne	.L1327
	test	al, 16
	jne	.L1328
	test	al, 32
	jne	.L1329
	test	al, 64
	jne	.L1330
	test	al, -128
	jne	.L1331
	test	ah, 1
	jne	.L1332
	test	ah, 2
	jne	.L1333
	test	ah, 4
	jne	.L1334
	test	ah, 8
	jne	.L1335
	test	ah, 16
	jne	.L1336
	test	ah, 32
	jne	.L1337
	test	ah, 64
	jne	.L1338
	xor	edx, edx
	shr	ecx, 15
	sete	dl
	add	edx, 15
	mov	eax, edx
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1324:
	.cfi_restore_state
	xor	edx, edx
	jmp	.L1320
.L1329:
	mov	edx, 5
	jmp	.L1320
.L1336:
	mov	edx, 12
	jmp	.L1320
.L1325:
	mov	edx, 1
	jmp	.L1320
.L1326:
	mov	edx, 2
	jmp	.L1320
.L1327:
	mov	edx, 3
	jmp	.L1320
.L1328:
	mov	edx, 4
	jmp	.L1320
.L1330:
	mov	edx, 6
	jmp	.L1320
.L1331:
	mov	edx, 7
	jmp	.L1320
.L1332:
	mov	edx, 8
	jmp	.L1320
.L1333:
	mov	edx, 9
	jmp	.L1320
.L1334:
	mov	edx, 10
	jmp	.L1320
.L1335:
	mov	edx, 11
	jmp	.L1320
.L1337:
	mov	edx, 13
	jmp	.L1320
.L1338:
	mov	edx, 14
	jmp	.L1320
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
	fld	DWORD PTR .LC23
	fld	DWORD PTR [esp+8]
	fcomi	st, st(1)
	jnb	.L1350
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1350:
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vmovdqa32	zmm1, ZMMWORD PTR .LC5
	vpbroadcastd	zmm3, edx
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	vpbroadcastd	zmm0, eax
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vextracti32x8	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti32x4	xmm7, ymm6, 0x1
	vpaddd	xmm0, xmm7, xmm6
	vpsrldq	xmm1, xmm0, 8
	vpaddd	xmm2, xmm0, xmm1
	vpsrldq	xmm3, xmm2, 4
	vpaddd	xmm4, xmm2, xmm3
	vmovd	eax, xmm4
	and	eax, 1
	vzeroupper
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vmovdqa32	zmm1, ZMMWORD PTR .LC5
	vpbroadcastd	zmm3, edx
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	vpbroadcastd	zmm0, eax
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vextracti32x8	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti32x4	xmm7, ymm6, 0x1
	vpaddd	xmm0, xmm7, xmm6
	vpsrldq	xmm1, xmm0, 8
	vpaddd	xmm2, xmm0, xmm1
	vpsrldq	xmm3, xmm2, 4
	vpaddd	xmm4, xmm2, xmm3
	vmovd	eax, xmm4
	vzeroupper
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	je	.L1355
	.p2align 5
	.p2align 4
	.p2align 3
.L1357:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1357
.L1355:
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
	je	.L1361
	test	edx, edx
	je	.L1361
	.p2align 5
	.p2align 4
	.p2align 3
.L1363:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1363
.L1361:
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
	jnb	.L1393
	mov	ecx, 1
	jmp	.L1370
	.p2align 4,,10
	.p2align 3
.L1373:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1372
	test	ecx, ecx
	je	.L1372
.L1370:
	test	edx, edx
	jns	.L1373
.L1374:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1376:
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
	jne	.L1376
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1375:
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
.L1372:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1374
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
.L1393:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1375
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
	ja	.L1400
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1397
	.p2align 4,,10
	.p2align 3
.L1400:
	fstp	st(0)
	fstp	st(0)
.L1397:
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
	ja	.L1404
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1401
	.p2align 4,,10
	.p2align 3
.L1404:
	fstp	st(0)
	fstp	st(0)
.L1401:
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
	mov	edx, DWORD PTR [esp+4]
	mulx	edx, eax, DWORD PTR [esp+8]
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
	js	.L1417
	je	.L1412
	xor	ebp, ebp
.L1409:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1411:
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
	jne	.L1411
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	neg	eax
	test	ebp, ebp
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
.L1417:
	.cfi_restore_state
	neg	edx
	mov	ebp, 1
	jmp	.L1409
	.p2align 4,,10
	.p2align 3
.L1412:
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
	xor	ebp, ebp
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
	mov	esi, DWORD PTR [esp+28]
	test	ebx, ebx
	jns	.L1419
	neg	ebx
	xor	eax, eax
	mov	ebp, 1
.L1419:
	test	esi, esi
	jns	.L1420
	neg	esi
	mov	ebp, eax
.L1420:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	.L1421
	jmp	.L1445
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1451:
	test	eax, eax
	je	.L1426
.L1421:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	.L1451
.L1426:
	xor	esi, esi
	xor	edi, edi
	test	eax, eax
	je	.L1446
	mov	DWORD PTR [esp], esi
	kmovd	k0, ebp
	.p2align 5
	.p2align 4
	.p2align 3
.L1423:
	mov	ebp, ecx
	mov	esi, edi
	sub	ebp, edx
	cmp	ecx, edx
	setnb	bl
	test	bl, bl
	cmovne	ecx, ebp
	cmovne	esi, eax
	shr	edx
	or	DWORD PTR [esp], esi
	shr	eax
	jne	.L1423
	mov	edi, DWORD PTR [esp]
	kmovd	ebp, k0
.L1424:
	mov	eax, edi
	neg	eax
	test	ebp, ebp
	cmove	eax, edi
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
.L1446:
	.cfi_restore_state
	xor	edi, edi
	jmp	.L1424
.L1445:
	cmp	ebx, esi
	setnb	bl
	movzx	edi, bl
	jmp	.L1424
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
	jns	.L1453
	neg	ebx
	mov	esi, 1
.L1453:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	.L1454
	jmp	.L1478
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1482:
	test	edx, edx
	je	.L1474
.L1454:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	.L1482
	test	edx, edx
	je	.L1474
	.p2align 4
	.p2align 4
	.p2align 3
.L1456:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	.L1456
.L1457:
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
.L1474:
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
.L1478:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	.L1457
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
	jb	.L1484
	jmp	.L1552
	.p2align 4,,10
	.p2align 3
.L1487:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	.L1486
	test	ax, ax
	je	.L1486
	mov	ecx, eax
	mov	edx, ebx
.L1484:
	test	dx, dx
	jns	.L1487
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
	je	.L1553
.L1491:
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	je	.L1489
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
	jns	.L1489
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
.L1489:
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
.L1486:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	.L1489
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
	jmp	.L1491
.L1552:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	.L1489
.L1553:
	mov	WORD PTR [esp+2], ax
	jmp	.L1489
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
	jnb	.L1578
	mov	ecx, 1
	jmp	.L1555
	.p2align 4,,10
	.p2align 3
.L1558:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1557
	test	ecx, ecx
	je	.L1557
.L1555:
	test	edx, edx
	jns	.L1558
.L1559:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1561:
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
	jne	.L1561
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1560:
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
.L1557:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1559
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
.L1578:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1560
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
	mov	ecx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	test	bl, 32
	je	.L1583
	sub	ebx, 32
	xor	eax, eax
	shlx	edx, ecx, ebx
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
.L1583:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1586
	mov	edx, 32
	shlx	eax, ecx, ebx
	sub	edx, ebx
	shrx	edx, ecx, edx
	shlx	ecx, esi, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	or	edx, ecx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1586:
	.cfi_restore_state
	mov	edx, esi
	mov	eax, ecx
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	test	cl, 32
	je	.L1589
	mov	edx, ebx
	sub	ecx, 32
	sarx	eax, ebx, ecx
	sar	edx, 31
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
.L1589:
	.cfi_restore_state
	test	ecx, ecx
	je	.L1592
	mov	eax, 32
	sarx	edx, ebx, ecx
	shrx	esi, esi, ecx
	sub	eax, ecx
	shlx	eax, ebx, eax
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	or	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1592:
	.cfi_restore_state
	mov	eax, esi
	mov	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
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
	xor	ecx, ecx
	mov	eax, 16
	mov	esi, 4
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
	mov	ebx, 8
	cmp	edx, 65535
	setbe	cl
	sal	ecx, 4
	sub	eax, ecx
	shrx	edx, edx, eax
	xor	eax, eax
	test	dh, -1
	sete	al
	sal	eax, 3
	sub	ebx, eax
	add	eax, ecx
	xor	ecx, ecx
	shrx	ebx, edx, ebx
	test	bl, -16
	sete	cl
	sal	ecx, 2
	sub	esi, ecx
	add	ecx, eax
	mov	eax, 2
	shrx	edx, ebx, esi
	xor	ebx, ebx
	test	dl, 12
	mov	esi, eax
	sete	bl
	add	ebx, ebx
	sub	esi, ebx
	lea	ecx, [ebx+ecx]
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	shrx	edx, edx, esi
	mov	esi, 0
	sub	eax, edx
	and	edx, 2
	cmovne	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	add	eax, ecx
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
	jl	.L1598
	mov	eax, 2
	jg	.L1598
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1598
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1598:
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
	jl	.L1605
	mov	eax, 1
	jg	.L1605
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1605
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1605:
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
	mov	edx, DWORD PTR [esp+8]
	xor	ecx, ecx
	test	dx, dx
	sete	cl
	xor	eax, eax
	sal	ecx, 4
	shrx	ebx, edx, ecx
	test	bl, bl
	sete	al
	sal	eax, 3
	add	ecx, eax
	shrx	edx, ebx, eax
	xor	ebx, ebx
	test	dl, 15
	sete	bl
	sal	ebx, 2
	shrx	eax, edx, ebx
	add	ebx, ecx
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shrx	edx, eax, ecx
	and	edx, 3
	add	ecx, ebx
	mov	ebx, 2
	mov	eax, edx
	shr	edx
	not	eax
	sub	ebx, edx
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	test	cl, 32
	je	.L1614
	sub	ecx, 32
	xor	edx, edx
	shrx	eax, ebx, ecx
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
.L1614:
	.cfi_restore_state
	test	ecx, ecx
	je	.L1617
	mov	eax, 32
	shrx	edx, ebx, ecx
	shrx	esi, esi, ecx
	sub	eax, ecx
	shlx	eax, ebx, eax
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	or	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1617:
	.cfi_restore_state
	mov	eax, esi
	mov	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
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
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	edx, DWORD PTR [esp+32]
	movzx	eax, WORD PTR [esp+40]
	movzx	ecx, dx
	mov	edi, edx
	mov	ebx, ecx
	shr	edi, 16
	imul	edx, DWORD PTR [esp+44]
	imul	ebx, eax
	imul	eax, edi
	mov	esi, ebx
	movzx	ebx, bx
	shr	esi, 16
	add	eax, esi
	mov	DWORD PTR [esp+4], eax
	mov	eax, 16
	shrx	esi, DWORD PTR [esp+40], eax
	imul	ecx, esi
	movzx	ebp, WORD PTR [esp+4]
	imul	esi, edi
	add	ecx, ebp
	mov	ebp, DWORD PTR [esp+4]
	mov	edi, ecx
	shr	ecx, 16
	shr	ebp, 16
	sal	edi, 16
	add	ebp, esi
	add	ebx, edi
	add	ecx, ebp
	mov	eax, ebx
	add	edx, ecx
	mov	ecx, DWORD PTR [esp+40]
	imul	ecx, DWORD PTR [esp+36]
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
	mov	eax, 27030
	mov	ecx, edx
	shr	ecx, 8
	xor	ecx, edx
	mov	edx, ecx
	shr	edx, 4
	xor	edx, ecx
	and	edx, 15
	sarx	eax, eax, edx
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
	mov	eax, 27030
	mov	ecx, edx
	shr	ecx, 8
	xor	ecx, edx
	mov	edx, ecx
	shr	edx, 4
	xor	edx, ecx
	and	edx, 15
	sarx	eax, eax, edx
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
	vmovq	xmm0, QWORD PTR [esp+4]
	vmovdqa	xmm2, XMMWORD PTR .LC24
	vmovdqa	xmm6, XMMWORD PTR .LC25
	vpsrlq	xmm1, xmm0, 1
	vpandq	xmm3, xmm1, xmm2
	vpsubq	xmm4, xmm0, xmm3
	vpsrlq	xmm5, xmm4, 2
	vpandq	xmm0, xmm4, xmm6
	vmovdqa	xmm4, XMMWORD PTR .LC26
	vpandq	xmm7, xmm5, xmm6
	vpaddq	xmm1, xmm7, xmm0
	vpsrlq	xmm2, xmm1, 4
	vpaddq	xmm3, xmm2, xmm1
	vpandq	xmm5, xmm3, xmm4
	vmovd	edx, xmm5
	vpextrd	eax, xmm5, 1
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
	je	.L1629
	jmp	.L1631
	.p2align 4,,10
	.p2align 3
.L1636:
	fxch	st(1)
	jmp	.L1631
	.p2align 4,,10
	.p2align 3
.L1637:
	fxch	st(1)
.L1631:
	fmul	st, st(1)
.L1629:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1630
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1636
.L1635:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1637
	jmp	.L1635
	.p2align 4,,10
	.p2align 3
.L1630:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1628
	fld1
	fdivrp	st(1), st
.L1628:
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
	je	.L1639
	jmp	.L1641
	.p2align 4,,10
	.p2align 3
.L1646:
	fxch	st(1)
	jmp	.L1641
	.p2align 4,,10
	.p2align 3
.L1647:
	fxch	st(1)
.L1641:
	fmul	st, st(1)
.L1639:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1640
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1646
.L1645:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1647
	jmp	.L1645
	.p2align 4,,10
	.p2align 3
.L1640:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1638
	fld1
	fdivrp	st(1), st
.L1638:
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
	jb	.L1648
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1648
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1648
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1648:
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
	jb	.L1655
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1655
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1655
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1655:
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
	.align 64
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
	.set	.LC1,.LC0
	.align 64
.LC4:
	.long	32
	.long	31
	.long	30
	.long	29
	.long	28
	.long	27
	.long	26
	.long	25
	.long	24
	.long	23
	.long	22
	.long	21
	.long	20
	.long	19
	.long	18
	.long	17
	.align 64
.LC5:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 64
.LC6:
	.long	16
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.align 64
.LC7:
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC9:
	.long	-8388609
	.align 4
.LC10:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC11:
	.long	-1
	.long	-1048577
	.align 8
.LC12:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	-1
	.long	-1
	.long	65534
	.align 16
	.align 16
.LC14:
	.long	-1
	.long	-1
	.long	32766
	.align 16
	.section	.rodata.cst4
	.align 4
.LC15:
	.long	1073741824
	.align 4
.LC16:
	.long	1056964608
	.align 4
.LC18:
	.long	-1090519040
	.section	.rodata.cst16
	.align 16
.LC20:
	.long	1
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC21:
	.long	1602224128
	.section	.rodata
	.align 64
.LC22:
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.section	.rodata.cst4
	.align 4
.LC23:
	.long	1191182336
	.section	.rodata.cst16
	.align 16
.LC24:
	.long	1431655765
	.long	1431655765
	.long	0
	.long	0
	.align 16
.LC25:
	.long	858993459
	.long	858993459
	.long	0
	.long	0
	.align 16
.LC26:
	.long	252645135
	.long	252645135
	.long	0
	.long	0
	.globl	__divmoddi4
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
