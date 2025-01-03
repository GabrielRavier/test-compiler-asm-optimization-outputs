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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp+12], ecx
	jnb	.L2
	test	eax, eax
	je	.L3
	lea	edx, [eax-1]
	cmp	edx, 14
	jbe	.L10
	mov	edi, ecx
	mov	ecx, DWORD PTR [ebp+12]
	lea	esi, [ecx-2+eax]
	sub	edi, esi
	lea	ebx, [edi+30+edx]
	cmp	ebx, 30
	jbe	.L10
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, eax
	add	esi, ecx
	add	edi, eax
	cmp	edx, 30
	jbe	.L21
	lea	ebx, [eax-32]
	mov	DWORD PTR [esp+20], edi
	mov	edx, ebx
	add	ebx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+28], ebx
	add	edx, ecx
	mov	ebx, eax
	and	ebx, -32
	mov	ecx, edx
	sub	ecx, ebx
	mov	DWORD PTR [esp+24], ebx
	mov	ebx, DWORD PTR [esp+28]
	mov	edi, ecx
	mov	ecx, DWORD PTR [ebp+12]
	.p2align 5
	.p2align 4
	.p2align 3
.L6:
	vmovdqu	ymm2, YMMWORD PTR [edx]
	sub	edx, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm2
	cmp	edi, edx
	jne	.L6
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+20]
	mov	edx, eax
	mov	DWORD PTR [ebp+12], ecx
	sub	esi, ebx
	sub	edi, ebx
	sub	edx, ebx
	cmp	eax, ebx
	je	.L128
	lea	ecx, [edx-1]
	mov	eax, edx
	cmp	ecx, 14
	jbe	.L132
	vzeroupper
.L5:
	mov	ebx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+8]
	vmovdqu	xmm3, XMMWORD PTR [ebx-16+eax]
	mov	ebx, eax
	and	ebx, -16
	vmovdqu	XMMWORD PTR [ecx-16+eax], xmm3
	sub	esi, ebx
	sub	edi, ebx
	sub	edx, ebx
	test	al, 15
	je	.L3
.L8:
	movzx	eax, BYTE PTR [esi-1]
	mov	BYTE PTR [edi-1], al
	cmp	edx, 1
	je	.L3
	movzx	ecx, BYTE PTR [esi-2]
	mov	BYTE PTR [edi-2], cl
	cmp	edx, 2
	je	.L3
	movzx	ebx, BYTE PTR [esi-3]
	mov	BYTE PTR [edi-3], bl
	cmp	edx, 3
	je	.L3
	movzx	eax, BYTE PTR [esi-4]
	mov	BYTE PTR [edi-4], al
	cmp	edx, 4
	je	.L3
	movzx	ecx, BYTE PTR [esi-5]
	mov	BYTE PTR [edi-5], cl
	cmp	edx, 5
	je	.L3
	movzx	ebx, BYTE PTR [esi-6]
	mov	BYTE PTR [edi-6], bl
	cmp	edx, 6
	je	.L3
	movzx	eax, BYTE PTR [esi-7]
	mov	BYTE PTR [edi-7], al
	cmp	edx, 7
	je	.L3
	movzx	ecx, BYTE PTR [esi-8]
	mov	BYTE PTR [edi-8], cl
	cmp	edx, 8
	je	.L3
	movzx	ebx, BYTE PTR [esi-9]
	mov	BYTE PTR [edi-9], bl
	cmp	edx, 9
	je	.L3
	movzx	eax, BYTE PTR [esi-10]
	mov	BYTE PTR [edi-10], al
	cmp	edx, 10
	je	.L3
	movzx	ecx, BYTE PTR [esi-11]
	mov	BYTE PTR [edi-11], cl
	cmp	edx, 11
	je	.L3
	movzx	ebx, BYTE PTR [esi-12]
	mov	BYTE PTR [edi-12], bl
	cmp	edx, 12
	je	.L3
	movzx	eax, BYTE PTR [esi-13]
	mov	BYTE PTR [edi-13], al
	cmp	edx, 13
	je	.L3
	movzx	ecx, BYTE PTR [esi-14]
	mov	BYTE PTR [edi-14], cl
	cmp	edx, 14
	je	.L3
	movzx	edx, BYTE PTR [esi-15]
	mov	BYTE PTR [edi-15], dl
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
	mov	ecx, DWORD PTR [ebp+12]
	cmp	DWORD PTR [ebp+8], ecx
	je	.L3
	test	eax, eax
	je	.L3
	lea	ebx, [eax-1]
	lea	edx, [ecx+1]
	cmp	ebx, 14
	jbe	.L12
	mov	esi, DWORD PTR [ebp+8]
	sub	esi, edx
	cmp	esi, 30
	jbe	.L12
	mov	edx, ecx
	cmp	ebx, 30
	jbe	.L22
	mov	esi, eax
	mov	ebx, DWORD PTR [ebp+8]
	and	esi, -32
	mov	edi, esi
	add	edi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L14:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	add	edx, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	edx, edi
	jne	.L14
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	mov	DWORD PTR [ebp+12], ecx
	sub	ebx, esi
	add	edi, esi
	cmp	eax, esi
	je	.L128
	lea	ecx, [ebx-1]
	mov	eax, ebx
	cmp	ecx, 14
	jbe	.L133
	vzeroupper
.L13:
	mov	ecx, DWORD PTR [ebp+12]
	vmovdqu	xmm1, XMMWORD PTR [ecx+esi]
	mov	ecx, DWORD PTR [ebp+8]
	vmovdqu	XMMWORD PTR [ecx+esi], xmm1
	mov	esi, eax
	and	esi, -16
	add	edx, esi
	add	edi, esi
	sub	ebx, esi
	test	al, 15
	je	.L3
.L17:
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [edi], al
	cmp	ebx, 1
	je	.L3
	movzx	ecx, BYTE PTR [edx+1]
	mov	BYTE PTR [edi+1], cl
	cmp	ebx, 2
	je	.L3
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [edi+2], al
	cmp	ebx, 3
	je	.L3
	movzx	ecx, BYTE PTR [edx+3]
	mov	BYTE PTR [edi+3], cl
	cmp	ebx, 4
	je	.L3
	movzx	eax, BYTE PTR [edx+4]
	mov	BYTE PTR [edi+4], al
	cmp	ebx, 5
	je	.L3
	movzx	ecx, BYTE PTR [edx+5]
	mov	BYTE PTR [edi+5], cl
	cmp	ebx, 6
	je	.L3
	movzx	eax, BYTE PTR [edx+6]
	mov	BYTE PTR [edi+6], al
	cmp	ebx, 7
	je	.L3
	movzx	ecx, BYTE PTR [edx+7]
	mov	BYTE PTR [edi+7], cl
	cmp	ebx, 8
	je	.L3
	movzx	eax, BYTE PTR [edx+8]
	mov	BYTE PTR [edi+8], al
	cmp	ebx, 9
	je	.L3
	movzx	ecx, BYTE PTR [edx+9]
	mov	BYTE PTR [edi+9], cl
	cmp	ebx, 10
	je	.L3
	movzx	eax, BYTE PTR [edx+10]
	mov	BYTE PTR [edi+10], al
	cmp	ebx, 11
	je	.L3
	movzx	ecx, BYTE PTR [edx+11]
	mov	BYTE PTR [edi+11], cl
	cmp	ebx, 12
	je	.L3
	movzx	eax, BYTE PTR [edx+12]
	mov	BYTE PTR [edi+12], al
	cmp	ebx, 13
	je	.L3
	movzx	ecx, BYTE PTR [edx+13]
	mov	BYTE PTR [edi+13], cl
	cmp	ebx, 14
	je	.L3
	movzx	edx, BYTE PTR [edx+14]
	mov	BYTE PTR [edi+14], dl
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L10:
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	jmp	.L125
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L134:
	sub	edx, 1
.L125:
	movzx	ebx, BYTE PTR [edi-1+eax]
	mov	BYTE PTR [esi-1+eax], bl
	mov	eax, edx
	test	edx, edx
	jne	.L134
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L12:
	mov	edi, DWORD PTR [ebp+8]
	add	eax, DWORD PTR [ebp+8]
	jmp	.L19
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L135:
	add	edx, 1
.L19:
	movzx	ebx, BYTE PTR [edx-1]
	add	edi, 1
	mov	BYTE PTR [edi-1], bl
	cmp	edi, eax
	jne	.L135
	jmp	.L3
.L133:
	vzeroupper
	jmp	.L17
.L21:
	mov	edx, eax
	jmp	.L5
.L132:
	vzeroupper
	jmp	.L8
.L22:
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	xor	esi, esi
	jmp	.L13
.L128:
	vzeroupper
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
	jne	.L137
	jmp	.L139
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L140:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L139
.L137:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L140
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
.L139:
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
	jne	.L149
	jmp	.L152
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L151:
	add	eax, 1
	sub	edx, 1
	je	.L152
.L149:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L151
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L152:
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
	jne	.L158
	jmp	.L157
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L160:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L162
.L158:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L160
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L157:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L162:
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
	je	.L170
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
.L170:
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
	jmp	.L176
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L178:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L175
.L176:
	cmp	ebx, eax
	jne	.L178
	xor	edx, edx
.L175:
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
	je	.L183
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
.L183:
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
	je	.L186
	.p2align 4
	.p2align 4
	.p2align 3
.L187:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L187
.L186:
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
	jne	.L193
	jmp	.L192
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L195:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L192
.L193:
	cmp	eax, ecx
	jne	.L195
.L192:
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
	jmp	.L202
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L206:
	add	eax, 1
	test	cl, cl
	je	.L205
.L202:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L206
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L205:
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
	je	.L208
	jmp	.L209
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L210:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	.L209
.L208:
	test	al, al
	jne	.L210
	xor	eax, eax
.L209:
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
	je	.L219
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L218:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L218
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L219:
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
	je	.L221
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L225
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L242:
	cmp	edx, ebp
	je	.L224
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L241
	mov	edx, esi
.L225:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	.L242
.L224:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
.L221:
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
.L241:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	.L224
.L240:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	.L224
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	cmp	ecx, 1
	jle	.L256
	mov	esi, ecx
	lea	edx, [ecx-2]
	shr	esi
	lea	eax, [esi-1]
	mov	DWORD PTR [esp+28], eax
	cmp	edx, 29
	jbe	.L250
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, ecx
	mov	ebx, ecx
	mov	edx, DWORD PTR [ebp+12]
	and	edi, -32
	shr	ebx, 5
	vmovdqa	ymm1, YMMWORD PTR .LC0
	add	edi, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L246:
	vmovdqu	ymm0, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vpshufb	ymm2, ymm0, ymm1
	vmovdqu	YMMWORD PTR [edx-32], ymm2
	cmp	edi, eax
	jne	.L246
	mov	edi, ebx
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	sal	ebx, 5
	sal	edi, 4
	add	edx, ebx
	add	eax, ebx
	mov	ebx, edi
	neg	ebx
	lea	ecx, [ecx+ebx*2]
	cmp	edi, esi
	je	.L258
	vzeroupper
.L245:
	mov	ebx, DWORD PTR [esp+28]
	sub	ebx, edi
	lea	esi, [ebx+1]
	cmp	ebx, 6
	jbe	.L248
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu	xmm3, XMMWORD PTR [ebx+edi*2]
	mov	ebx, DWORD PTR [ebp+12]
	vpshufb	xmm4, xmm3, XMMWORD PTR .LC1
	vmovdqu	XMMWORD PTR [ebx+edi*2], xmm4
	mov	ebx, esi
	and	ebx, -8
	lea	edi, [ebx+ebx]
	neg	ebx
	add	edx, edi
	add	eax, edi
	lea	ecx, [ecx+ebx*2]
	and	esi, 7
	je	.L256
.L248:
	movbe	si, WORD PTR [eax]
	mov	WORD PTR [edx], si
	cmp	ecx, 3
	jle	.L256
	movbe	bx, WORD PTR [eax+2]
	mov	WORD PTR [edx+2], bx
	cmp	ecx, 5
	jle	.L256
	movbe	di, WORD PTR [eax+4]
	mov	WORD PTR [edx+4], di
	cmp	ecx, 7
	jle	.L256
	movbe	si, WORD PTR [eax+6]
	mov	WORD PTR [edx+6], si
	cmp	ecx, 9
	jle	.L256
	movbe	bx, WORD PTR [eax+8]
	mov	WORD PTR [edx+8], bx
	cmp	ecx, 11
	jle	.L256
	movbe	di, WORD PTR [eax+10]
	mov	WORD PTR [edx+10], di
	cmp	ecx, 13
	jle	.L256
	movbe	ax, WORD PTR [eax+12]
	mov	WORD PTR [edx+12], ax
.L256:
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
.L250:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	xor	edi, edi
	jmp	.L245
.L258:
	vzeroupper
	jmp	.L256
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
	jbe	.L271
	cmp	eax, 31
	jbe	.L271
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L269
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L271:
	mov	edx, 1
.L269:
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
	jbe	.L280
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L277
	cmp	eax, 8231
	jbe	.L277
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L274
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L274
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L277:
	mov	edx, 1
.L274:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L280:
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
	jbe	.L281
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L281:
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
	jp	.L293
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L289
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L292
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L292:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L293:
	fstp	st(1)
.L285:
	ret
	.p2align 4,,10
	.p2align 3
.L289:
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
	jp	.L302
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L298
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L301
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L301:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L302:
	fstp	st(1)
.L294:
	ret
	.p2align 4,,10
	.p2align 3
.L298:
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
	jp	.L308
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L311
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
	je	.L305
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	fstp	st(0)
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L311:
	fstp	st(0)
.L303:
	ret
	.p2align 4,,10
	.p2align 3
.L305:
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
	jp	.L317
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L320
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
	je	.L314
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L317:
	fstp	st(0)
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L320:
	fstp	st(0)
.L312:
	ret
	.p2align 4,,10
	.p2align 3
.L314:
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
	jp	.L332
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L333
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
	jne	.L331
	fcomi	st, st(1)
	jbe	.L334
	fstp	st(1)
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L333:
	fstp	st(0)
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L334:
	fstp	st(0)
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L335:
	fstp	st(0)
.L327:
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L332:
	fstp	st(0)
.L321:
	ret
	.p2align 4,,10
	.p2align 3
.L331:
	test	edx, edx
	je	.L335
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
	jp	.L344
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L342
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
	je	.L338
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L342:
	fstp	st(0)
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L344:
	fstp	st(0)
.L336:
	ret
	.p2align 4,,10
	.p2align 3
.L338:
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
	jp	.L353
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L351
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
	je	.L347
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L351:
	fstp	st(0)
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L353:
	fstp	st(0)
.L345:
	ret
	.p2align 4,,10
	.p2align 3
.L347:
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
	jp	.L365
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L366
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
	jne	.L364
	fcomi	st, st(1)
	jbe	.L367
	fstp	st(0)
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L365:
	fstp	st(0)
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L367:
	fstp	st(1)
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L368:
	fstp	st(1)
.L359:
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L366:
	fstp	st(0)
.L354:
	ret
	.p2align 4,,10
	.p2align 3
.L364:
	test	edx, edx
	je	.L368
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
	je	.L370
	.p2align 5
	.p2align 4
	.p2align 3
.L371:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L371
.L370:
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
	je	.L383
	vmovd	xmm1, DWORD PTR [eax]
	vpinsrd	xmm0, xmm1, eax, 1
	vmovq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	.L382
	mov	DWORD PTR [ecx+4], edx
.L382:
	ret
	.p2align 4,,10
	.p2align 3
.L383:
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
	je	.L385
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L385:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L393
	mov	DWORD PTR [eax], edx
.L393:
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
	je	.L395
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, DWORD PTR [esp+52]
	xor	ebx, ebx
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L412:
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	je	.L411
.L397:
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
	jne	.L412
.L394:
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
.L411:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L395:
	mov	edx, DWORD PTR [esp+56]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	DWORD PTR [edx], eax
	mov	esi, ecx
	test	edi, edi
	je	.L394
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
	je	.L414
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, ebp
	xor	edi, edi
	mov	ebp, ebx
	jmp	.L416
	.p2align 4,,10
	.p2align 3
.L426:
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	je	.L414
.L416:
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
	jne	.L426
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
.L414:
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
	jbe	.L451
	mov	edx, ecx
	jmp	.L455
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L451:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L451
.L455:
	cmp	dl, 32
	je	.L451
	cmp	dl, 43
	je	.L432
	cmp	dl, 45
	jne	.L456
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L441
	mov	ebp, 1
.L435:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L438:
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
	jbe	.L438
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
.L456:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L435
.L441:
	xor	eax, eax
.L457:
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
.L432:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L435
	xor	eax, eax
	jmp	.L457
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
	jbe	.L479
	mov	edx, ecx
	jmp	.L482
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L479:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L479
.L482:
	cmp	dl, 32
	je	.L479
	cmp	dl, 43
	je	.L462
	cmp	dl, 45
	je	.L483
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L470
.L464:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L467:
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
	jbe	.L467
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
.L483:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L464
.L470:
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
.L462:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L470
	xor	ebp, ebp
	jmp	.L464
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
	jbe	.L507
	mov	eax, ecx
	jmp	.L511
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L507:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	esi, [ecx-9]
	mov	eax, ecx
	cmp	esi, 4
	jbe	.L507
.L511:
	cmp	al, 32
	je	.L507
	cmp	al, 43
	je	.L488
	cmp	al, 45
	jne	.L512
	lea	ecx, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L497
	mov	ebx, 1
.L491:
	vpxor	xmm5, xmm5, xmm5
	.p2align 4
	.p2align 3
.L494:
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
	vmovd	edi, xmm5
	vpextrd	esi, xmm5, 1
	cmp	edx, 9
	jbe	.L494
	test	ebx, ebx
	jne	.L484
	vpsubq	xmm6, xmm4, xmm3
	vmovd	edi, xmm6
	vpextrd	esi, xmm6, 1
.L484:
	mov	eax, edi
	mov	edx, esi
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
.L512:
	.cfi_restore_state
	lea	esi, [ecx-48]
	xor	ebx, ebx
	mov	ecx, edx
	cmp	esi, 9
	jbe	.L491
.L497:
	xor	edi, edi
	xor	esi, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, edi
	mov	edx, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L488:
	.cfi_restore_state
	movsx	edi, BYTE PTR [edx+1]
	lea	ecx, [edx+1]
	xor	ebx, ebx
	mov	eax, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L491
	jmp	.L497
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
.L528:
	test	ebx, ebx
	je	.L514
.L529:
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
	js	.L518
	je	.L513
	sub	ebx, 1
	lea	eax, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L529
.L514:
	xor	ebp, ebp
.L513:
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
.L518:
	.cfi_restore_state
	mov	ebx, esi
	jmp	.L528
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
	je	.L535
	.p2align 4
	.p2align 3
.L543:
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
	je	.L530
	jle	.L533
	lea	ebp, [ebp-1]
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L543
.L535:
	xor	ebx, ebx
.L530:
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
.L533:
	.cfi_restore_state
	test	esi, esi
	je	.L535
	mov	ebp, esi
	jmp	.L543
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
	jne	.L559
	jmp	.L562
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L561:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L562
.L559:
	cmp	ecx, edx
	jne	.L561
	ret
	.p2align 4,,10
	.p2align 3
.L562:
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
	je	.L567
	jmp	.L568
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L569:
	mov	eax, DWORD PTR [edx+4]
	mov	ebx, DWORD PTR [ecx+4]
	add	edx, 4
	add	ecx, 4
	cmp	eax, ebx
	jne	.L568
.L567:
	test	eax, eax
	jne	.L569
.L568:
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
.L576:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L576
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
	je	.L582
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L581:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L581
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L582:
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
	jne	.L585
	jmp	.L591
	.p2align 4,,10
	.p2align 3
.L599:
	test	ebx, ebx
	je	.L589
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L591
.L585:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L599
.L589:
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
.L591:
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
	jne	.L601
	jmp	.L604
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L603:
	add	eax, 4
	sub	edx, 1
	je	.L604
.L601:
	cmp	DWORD PTR [eax], ecx
	jne	.L603
	ret
	.p2align 4,,10
	.p2align 3
.L604:
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
	jne	.L609
	jmp	.L608
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L611:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L614
.L609:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L611
	cmp	ebx, DWORD PTR [edx]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
.L608:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L614:
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
	je	.L622
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
.L622:
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
	je	.L671
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, ebx
	sub	ecx, esi
	lea	edx, [0+eax*4]
	sub	eax, 1
	cmp	ecx, edx
	jnb	.L731
	mov	ecx, DWORD PTR [ebp+16]
	test	ecx, ecx
	je	.L671
	cmp	eax, 6
	jbe	.L710
	mov	edi, ebx
	sub	edi, esi
	add	edi, 60
	cmp	edi, 56
	jbe	.L710
	cmp	eax, 14
	jbe	.L650
	sub	edx, 64
	lea	edi, [edx+ebx]
	lea	ecx, [esi+edx]
	mov	DWORD PTR [esp+60], edi
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, ecx
	shr	edi, 4
	sal	edi, 6
	sub	edx, edi
	mov	edi, edx
	mov	edx, DWORD PTR [esp+60]
	.p2align 5
	.p2align 4
	.p2align 3
.L634:
	vmovdqu32	zmm2, ZMMWORD PTR [ecx]
	sub	ecx, 64
	sub	edx, 64
	vmovdqu32	ZMMWORD PTR [edx+64], zmm2
	cmp	edi, ecx
	jne	.L634
	mov	edx, DWORD PTR [ebp+16]
	and	edx, -16
	sub	eax, edx
	test	BYTE PTR [ebp+16], 15
	je	.L728
	mov	ecx, DWORD PTR [ebp+16]
	sub	ecx, edx
	lea	edi, [ecx-1]
	cmp	edi, 6
	jbe	.L637
.L633:
	mov	edi, DWORD PTR [ebp+16]
	neg	edx
	lea	edx, [edi+1073741816+edx]
	mov	edi, ecx
	and	edi, -8
	vmovdqu	ymm3, YMMWORD PTR [esi+edx*4]
	sub	eax, edi
	and	ecx, 7
	vmovdqu	YMMWORD PTR [ebx+edx*4], ymm3
	je	.L728
.L637:
	mov	ecx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [ebx+eax*4], ecx
	lea	ecx, [eax-1]
	test	eax, eax
	je	.L728
	mov	edi, DWORD PTR [esi+ecx*4]
	lea	edx, [0+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edi
	test	ecx, ecx
	je	.L728
	mov	ecx, DWORD PTR [esi-4+edx]
	mov	DWORD PTR [ebx-4+edx], ecx
	cmp	eax, 2
	je	.L728
	mov	edi, DWORD PTR [esi-8+edx]
	mov	DWORD PTR [ebx-8+edx], edi
	cmp	eax, 3
	je	.L728
	mov	ecx, DWORD PTR [esi-12+edx]
	mov	DWORD PTR [ebx-12+edx], ecx
	cmp	eax, 4
	je	.L728
	mov	edi, DWORD PTR [esi-16+edx]
	mov	DWORD PTR [ebx-16+edx], edi
	cmp	eax, 5
	je	.L728
	mov	esi, DWORD PTR [esi-20+edx]
	mov	DWORD PTR [ebx-20+edx], esi
	vzeroupper
.L671:
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
.L731:
	.cfi_restore_state
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	.L671
	cmp	eax, 6
	jbe	.L651
	lea	edx, [esi+4]
	mov	ecx, ebx
	sub	ecx, edx
	cmp	ecx, 56
	jbe	.L652
	cmp	eax, 14
	jbe	.L653
	mov	edi, DWORD PTR [ebp+16]
	xor	edx, edx
	shr	edi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L643:
	mov	ecx, edx
	add	edx, 1
	sal	ecx, 6
	vmovdqu32	zmm0, ZMMWORD PTR [esi+ecx]
	vmovdqu32	ZMMWORD PTR [ebx+ecx], zmm0
	cmp	edi, edx
	jne	.L643
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -16
	lea	edx, [0+edi*4]
	mov	DWORD PTR [esp+60], edi
	sub	eax, edi
	lea	ecx, [esi+edx]
	add	edx, ebx
	test	BYTE PTR [ebp+16], 15
	je	.L728
	sub	DWORD PTR [ebp+16], edi
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 1
	cmp	edi, 6
	jbe	.L646
.L642:
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
	je	.L728
.L646:
	mov	edi, DWORD PTR [ecx]
	mov	DWORD PTR [edx], edi
	test	eax, eax
	je	.L728
	mov	esi, DWORD PTR [ecx+4]
	mov	DWORD PTR [edx+4], esi
	cmp	eax, 1
	je	.L728
	mov	edi, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+8], edi
	cmp	eax, 2
	je	.L728
	mov	esi, DWORD PTR [ecx+12]
	mov	DWORD PTR [edx+12], esi
	cmp	eax, 3
	je	.L728
	mov	edi, DWORD PTR [ecx+16]
	mov	DWORD PTR [edx+16], edi
	cmp	eax, 4
	je	.L728
	mov	esi, DWORD PTR [ecx+20]
	mov	DWORD PTR [edx+20], esi
	cmp	eax, 5
	je	.L728
	mov	eax, DWORD PTR [ecx+24]
	mov	DWORD PTR [edx+24], eax
	vzeroupper
	jmp	.L671
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L710:
	mov	edx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [ebx+eax*4], edx
	sub	eax, 1
	jb	.L671
	mov	edx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [ebx+eax*4], edx
	sub	eax, 1
	jnb	.L710
	jmp	.L671
	.p2align 4,,10
	.p2align 3
.L728:
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
.L651:
	.cfi_restore_state
	mov	ecx, ebx
	lea	edx, [esi+4]
	jmp	.L711
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L732:
	add	edx, 4
.L711:
	mov	edi, DWORD PTR [edx-4]
	add	ecx, 4
	mov	DWORD PTR [ecx-4], edi
	sub	eax, 1
	jb	.L671
	jmp	.L732
.L652:
	mov	ecx, ebx
	jmp	.L711
.L653:
	mov	DWORD PTR [esp+60], 0
	mov	ecx, esi
	mov	edx, ebx
	jmp	.L642
.L650:
	mov	ecx, DWORD PTR [ebp+16]
	xor	edx, edx
	jmp	.L633
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
	je	.L734
	lea	ebx, [eax-1]
	cmp	ebx, 14
	jbe	.L740
	mov	esi, eax
	vpbroadcastd	zmm0, edi
	xor	eax, eax
	shr	esi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L736:
	mov	edx, eax
	add	eax, 1
	sal	edx, 6
	vmovdqu32	ZMMWORD PTR [ecx+edx], zmm0
	cmp	esi, eax
	jne	.L736
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -16
	mov	DWORD PTR [esp+60], eax
	sub	ebx, eax
	lea	eax, [ecx+eax*4]
	test	BYTE PTR [ebp+16], 15
	je	.L775
.L735:
	mov	edx, DWORD PTR [esp+60]
	mov	esi, DWORD PTR [ebp+16]
	sub	esi, edx
	lea	edx, [esi-1]
	cmp	edx, 6
	jbe	.L738
	mov	edx, DWORD PTR [esp+60]
	vmovd	xmm1, edi
	vpbroadcastd	ymm2, xmm1
	vmovdqu	YMMWORD PTR [ecx+edx*4], ymm2
	mov	edx, esi
	and	edx, -8
	sub	ebx, edx
	and	esi, 7
	lea	eax, [eax+edx*4]
	je	.L775
.L738:
	mov	DWORD PTR [eax], edi
	test	ebx, ebx
	je	.L775
	mov	DWORD PTR [eax+4], edi
	cmp	ebx, 1
	je	.L775
	mov	DWORD PTR [eax+8], edi
	cmp	ebx, 2
	je	.L775
	mov	DWORD PTR [eax+12], edi
	cmp	ebx, 3
	je	.L775
	mov	DWORD PTR [eax+16], edi
	cmp	ebx, 4
	je	.L775
	mov	DWORD PTR [eax+20], edi
	cmp	ebx, 5
	je	.L775
	mov	DWORD PTR [eax+24], edi
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
.L775:
	.cfi_restore_state
	vzeroupper
.L734:
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
.L740:
	.cfi_restore_state
	mov	DWORD PTR [esp+60], 0
	mov	eax, ecx
	jmp	.L735
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+12]
	cmp	DWORD PTR [ebp+8], eax
	jnb	.L778
	test	edx, edx
	je	.L906
	lea	eax, [edx-1]
	cmp	eax, 14
	jbe	.L786
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	lea	edi, [ecx-2+edx]
	sub	ebx, edi
	lea	esi, [ebx+30+eax]
	cmp	esi, 30
	jbe	.L786
	mov	edi, DWORD PTR [ebp+12]
	mov	esi, edx
	add	esi, ecx
	add	edi, edx
	cmp	eax, 30
	jbe	.L797
	lea	ebx, [edx-32]
	mov	DWORD PTR [esp+20], esi
	mov	eax, ebx
	add	ebx, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+28], ebx
	add	eax, ecx
	mov	ebx, edx
	and	ebx, -32
	mov	ecx, eax
	sub	ecx, ebx
	mov	DWORD PTR [esp+24], ebx
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, ecx
	mov	ecx, DWORD PTR [ebp+12]
	.p2align 5
	.p2align 4
	.p2align 3
.L782:
	vmovdqu	ymm2, YMMWORD PTR [eax]
	sub	eax, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm2
	cmp	esi, eax
	jne	.L782
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+20]
	mov	eax, edx
	mov	DWORD PTR [ebp+12], ecx
	sub	edi, ebx
	sub	esi, ebx
	sub	eax, ebx
	cmp	edx, ebx
	je	.L904
	lea	ecx, [eax-1]
	mov	edx, eax
	cmp	ecx, 14
	jbe	.L908
	vzeroupper
.L781:
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	vmovdqu	xmm3, XMMWORD PTR [ebx-16+edx]
	mov	ebx, edx
	and	ebx, -16
	vmovdqu	XMMWORD PTR [ecx-16+edx], xmm3
	sub	edi, ebx
	sub	esi, ebx
	sub	eax, ebx
	and	edx, 15
	je	.L906
.L784:
	movzx	edx, BYTE PTR [esi-1]
	mov	BYTE PTR [edi-1], dl
	cmp	eax, 1
	je	.L906
	movzx	ecx, BYTE PTR [esi-2]
	mov	BYTE PTR [edi-2], cl
	cmp	eax, 2
	je	.L906
	movzx	ebx, BYTE PTR [esi-3]
	mov	BYTE PTR [edi-3], bl
	cmp	eax, 3
	je	.L906
	movzx	edx, BYTE PTR [esi-4]
	mov	BYTE PTR [edi-4], dl
	cmp	eax, 4
	je	.L906
	movzx	ecx, BYTE PTR [esi-5]
	mov	BYTE PTR [edi-5], cl
	cmp	eax, 5
	je	.L906
	movzx	ebx, BYTE PTR [esi-6]
	mov	BYTE PTR [edi-6], bl
	cmp	eax, 6
	je	.L906
	movzx	edx, BYTE PTR [esi-7]
	mov	BYTE PTR [edi-7], dl
	cmp	eax, 7
	je	.L906
	movzx	ecx, BYTE PTR [esi-8]
	mov	BYTE PTR [edi-8], cl
	cmp	eax, 8
	je	.L906
	movzx	ebx, BYTE PTR [esi-9]
	mov	BYTE PTR [edi-9], bl
	cmp	eax, 9
	je	.L906
	movzx	edx, BYTE PTR [esi-10]
	mov	BYTE PTR [edi-10], dl
	cmp	eax, 10
	je	.L906
	movzx	ecx, BYTE PTR [esi-11]
	mov	BYTE PTR [edi-11], cl
	cmp	eax, 11
	je	.L906
	movzx	ebx, BYTE PTR [esi-12]
	mov	BYTE PTR [edi-12], bl
	cmp	eax, 12
	je	.L906
	movzx	edx, BYTE PTR [esi-13]
	mov	BYTE PTR [edi-13], dl
	cmp	eax, 13
	je	.L906
	movzx	ecx, BYTE PTR [esi-14]
	mov	BYTE PTR [edi-14], cl
	cmp	eax, 14
	je	.L906
	movzx	eax, BYTE PTR [esi-15]
	mov	BYTE PTR [edi-15], al
.L906:
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
.L778:
	.cfi_restore_state
	je	.L906
	test	edx, edx
	je	.L906
	lea	edi, [edx-1]
	cmp	edi, 14
	jbe	.L909
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	lea	ebx, [ebx+1]
	sub	esi, ebx
	cmp	esi, 30
	jbe	.L788
	cmp	edi, 30
	jbe	.L798
	mov	esi, edx
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	and	esi, -32
	mov	edi, esi
	mov	ecx, ebx
	add	edi, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L790:
	vmovdqu	ymm0, YMMWORD PTR [eax]
	add	eax, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	eax, edi
	jne	.L790
	mov	ebx, esi
	mov	edi, edx
	mov	DWORD PTR [ebp+12], ecx
	add	ebx, ecx
	sub	edi, esi
	cmp	edx, esi
	je	.L904
	lea	ecx, [edi-1]
	mov	edx, edi
	cmp	ecx, 14
	jbe	.L910
	vzeroupper
.L789:
	mov	ecx, DWORD PTR [ebp+8]
	vmovdqu	xmm1, XMMWORD PTR [ecx+esi]
	mov	ecx, DWORD PTR [ebp+12]
	vmovdqu	XMMWORD PTR [ecx+esi], xmm1
	mov	esi, edx
	and	esi, -16
	add	ebx, esi
	add	eax, esi
	sub	edi, esi
	and	edx, 15
	je	.L906
.L793:
	movzx	edx, BYTE PTR [eax]
	mov	BYTE PTR [ebx], dl
	cmp	edi, 1
	je	.L906
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [ebx+1], cl
	cmp	edi, 2
	je	.L906
	movzx	edx, BYTE PTR [eax+2]
	mov	BYTE PTR [ebx+2], dl
	cmp	edi, 3
	je	.L906
	movzx	ecx, BYTE PTR [eax+3]
	mov	BYTE PTR [ebx+3], cl
	cmp	edi, 4
	je	.L906
	movzx	edx, BYTE PTR [eax+4]
	mov	BYTE PTR [ebx+4], dl
	cmp	edi, 5
	je	.L906
	movzx	ecx, BYTE PTR [eax+5]
	mov	BYTE PTR [ebx+5], cl
	cmp	edi, 6
	je	.L906
	movzx	edx, BYTE PTR [eax+6]
	mov	BYTE PTR [ebx+6], dl
	cmp	edi, 7
	je	.L906
	movzx	ecx, BYTE PTR [eax+7]
	mov	BYTE PTR [ebx+7], cl
	cmp	edi, 8
	je	.L906
	movzx	edx, BYTE PTR [eax+8]
	mov	BYTE PTR [ebx+8], dl
	cmp	edi, 9
	je	.L906
	movzx	ecx, BYTE PTR [eax+9]
	mov	BYTE PTR [ebx+9], cl
	cmp	edi, 10
	je	.L906
	movzx	edx, BYTE PTR [eax+10]
	mov	BYTE PTR [ebx+10], dl
	cmp	edi, 11
	je	.L906
	movzx	ecx, BYTE PTR [eax+11]
	mov	BYTE PTR [ebx+11], cl
	cmp	edi, 12
	je	.L906
	movzx	edx, BYTE PTR [eax+12]
	mov	BYTE PTR [ebx+12], dl
	cmp	edi, 13
	je	.L906
	movzx	ecx, BYTE PTR [eax+13]
	mov	BYTE PTR [ebx+13], cl
	cmp	edi, 14
	je	.L906
	movzx	eax, BYTE PTR [eax+14]
	mov	BYTE PTR [ebx+14], al
	jmp	.L906
	.p2align 4,,10
	.p2align 3
.L786:
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	jmp	.L901
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L911:
	sub	eax, 1
.L901:
	movzx	ebx, BYTE PTR [edi-1+edx]
	mov	BYTE PTR [esi-1+edx], bl
	mov	edx, eax
	test	eax, eax
	jne	.L911
	jmp	.L906
.L909:
	mov	ecx, DWORD PTR [ebp+8]
	lea	ebx, [ecx+1]
.L788:
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	add	edi, edx
	jmp	.L795
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L912:
	add	ebx, 1
.L795:
	movzx	edx, BYTE PTR [ebx-1]
	add	esi, 1
	mov	BYTE PTR [esi-1], dl
	cmp	ebx, edi
	jne	.L912
	jmp	.L906
.L910:
	vzeroupper
	jmp	.L793
.L797:
	mov	eax, edx
	jmp	.L781
.L908:
	vzeroupper
	jmp	.L784
.L798:
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, edx
	xor	esi, esi
	jmp	.L789
.L904:
	vzeroupper
	jmp	.L906
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
	je	.L915
	mov	edx, eax
	xor	eax, eax
.L915:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L916
	mov	esi, edi
	xor	edi, edi
.L916:
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
	je	.L919
	mov	eax, edx
	xor	edx, edx
.L919:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L920
	mov	edi, esi
	xor	esi, esi
.L920:
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
	jne	.L939
	vmovdqa32	zmm2, ZMMWORD PTR .LC7
	vpsrlvd	zmm6, zmm0, zmm2
	vpandd	zmm7, zmm6, zmm1
	vpcmpd	k1, zmm7, zmm4, 4
	kortestw	k1, k1
	jne	.L940
.L953:
	xor	eax, eax
.L932:
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
.L940:
	.cfi_restore_state
	vmovdqa32	zmm0, ZMMWORD PTR .LC6
.L933:
	vmovd	edx, xmm2
	vmovd	eax, xmm0
	bt	ebx, edx
	lea	ecx, [edx+1]
	jc	.L935
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+2]
	and	esi, 1
	jne	.L935
	cmp	eax, 2
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+3]
	and	esi, 1
	jne	.L935
	cmp	eax, 3
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+4]
	and	esi, 1
	jne	.L935
	cmp	eax, 4
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+5]
	and	esi, 1
	jne	.L935
	cmp	eax, 5
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+6]
	and	esi, 1
	jne	.L935
	cmp	eax, 6
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+7]
	and	esi, 1
	jne	.L935
	cmp	eax, 7
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+8]
	and	esi, 1
	jne	.L935
	cmp	eax, 8
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+9]
	and	esi, 1
	jne	.L935
	cmp	eax, 9
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+10]
	and	esi, 1
	jne	.L935
	cmp	eax, 10
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+11]
	and	esi, 1
	jne	.L935
	cmp	eax, 11
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+12]
	and	esi, 1
	jne	.L935
	cmp	eax, 12
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+13]
	and	esi, 1
	jne	.L935
	cmp	eax, 13
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+14]
	and	esi, 1
	jne	.L935
	cmp	eax, 14
	je	.L953
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [edx+15]
	and	esi, 1
	jne	.L935
	cmp	eax, 15
	je	.L953
	xor	eax, eax
	bt	ebx, ecx
	jnc	.L932
	lea	ecx, [edx+16]
.L935:
	vzeroupper
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L939:
	.cfi_restore_state
	vmovdqa32	zmm0, ZMMWORD PTR .LC4
	jmp	.L933
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
	je	.L959
	mov	edx, eax
	and	edx, 1
	jne	.L959
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L961:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L961
.L959:
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
	ja	.L969
	fld	DWORD PTR .LC10
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L966
	.p2align 4,,10
	.p2align 3
.L969:
	fstp	st(0)
.L966:
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
	ja	.L973
	fld	QWORD PTR .LC12
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L970
	.p2align 4,,10
	.p2align 3
.L973:
	fstp	st(0)
.L970:
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
	ja	.L977
	fld	TBYTE PTR .LC14
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L974
	.p2align 4,,10
	.p2align 3
.L977:
	fstp	st(0)
.L974:
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
	jp	.L980
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L987
	jne	.L987
	jmp	.L980
	.p2align 4,,10
	.p2align 3
.L995:
	fstp	st(0)
.L980:
	ret
	.p2align 4,,10
	.p2align 3
.L987:
	fld	DWORD PTR .LC15
	test	eax, eax
	jns	.L982
	fstp	st(0)
	fld	DWORD PTR .LC16
.L982:
	test	al, 1
	je	.L983
	.p2align 4
	.p2align 3
.L984:
	fmul	st(1), st
.L983:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L995
	fmul	st, st(0)
	test	al, 1
	jne	.L984
.L994:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L984
	jmp	.L994
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
	jp	.L997
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L1004
	jne	.L1004
	jmp	.L997
	.p2align 4,,10
	.p2align 3
.L1013:
	fstp	st(0)
.L997:
	ret
	.p2align 4,,10
	.p2align 3
.L1004:
	test	eax, eax
	js	.L1011
	fld	DWORD PTR .LC15
.L999:
	test	al, 1
	je	.L1000
	.p2align 4
	.p2align 3
.L1001:
	fmul	st(1), st
.L1000:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1013
	fmul	st, st(0)
	test	al, 1
	jne	.L1001
.L1012:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1001
	jmp	.L1012
	.p2align 4,,10
	.p2align 3
.L1011:
	fld	DWORD PTR .LC16
	jmp	.L999
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
	jp	.L1015
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L1022
	jne	.L1022
	jmp	.L1015
	.p2align 4,,10
	.p2align 3
.L1031:
	fstp	st(0)
.L1015:
	ret
	.p2align 4,,10
	.p2align 3
.L1022:
	test	eax, eax
	js	.L1029
	fld	DWORD PTR .LC15
.L1017:
	test	al, 1
	je	.L1018
	.p2align 4
	.p2align 3
.L1019:
	fmul	st(1), st
.L1018:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1031
	fmul	st, st(0)
	test	al, 1
	jne	.L1019
.L1030:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1019
	jmp	.L1030
	.p2align 4,,10
	.p2align 3
.L1029:
	fld	DWORD PTR .LC16
	jmp	.L1017
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	test	ecx, ecx
	je	.L1033
	lea	eax, [ecx-1]
	cmp	eax, 30
	jbe	.L1039
	mov	esi, ecx
	mov	ebx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	and	esi, -32
	mov	eax, esi
	add	eax, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1035:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	vpxor	ymm1, ymm0, YMMWORD PTR [ebx]
	add	ebx, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm1
	cmp	eax, ebx
	jne	.L1035
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, ecx
	sub	ebx, esi
	add	edx, esi
	cmp	ecx, esi
	je	.L1091
	vzeroupper
.L1034:
	sub	ecx, esi
	lea	edi, [ecx-1]
	cmp	edi, 14
	jbe	.L1037
	mov	edi, DWORD PTR [ebp+8]
	add	edi, esi
	vmovdqu	xmm2, XMMWORD PTR [edi]
	mov	DWORD PTR [esp+28], edi
	mov	edi, DWORD PTR [ebp+12]
	vpxor	xmm3, xmm2, XMMWORD PTR [edi+esi]
	mov	edi, ecx
	mov	esi, DWORD PTR [esp+28]
	and	edi, -16
	add	edx, edi
	add	eax, edi
	sub	ebx, edi
	and	ecx, 15
	vmovdqu	XMMWORD PTR [esi], xmm3
	je	.L1033
.L1037:
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [edx], cl
	cmp	ebx, 1
	je	.L1033
	movzx	ecx, BYTE PTR [eax+1]
	xor	BYTE PTR [edx+1], cl
	cmp	ebx, 2
	je	.L1033
	movzx	ecx, BYTE PTR [eax+2]
	xor	BYTE PTR [edx+2], cl
	cmp	ebx, 3
	je	.L1033
	movzx	ecx, BYTE PTR [eax+3]
	xor	BYTE PTR [edx+3], cl
	cmp	ebx, 4
	je	.L1033
	movzx	ecx, BYTE PTR [eax+4]
	xor	BYTE PTR [edx+4], cl
	cmp	ebx, 5
	je	.L1033
	movzx	ecx, BYTE PTR [eax+5]
	xor	BYTE PTR [edx+5], cl
	cmp	ebx, 6
	je	.L1033
	movzx	ecx, BYTE PTR [eax+6]
	xor	BYTE PTR [edx+6], cl
	cmp	ebx, 7
	je	.L1033
	movzx	ecx, BYTE PTR [eax+7]
	xor	BYTE PTR [edx+7], cl
	cmp	ebx, 8
	je	.L1033
	movzx	ecx, BYTE PTR [eax+8]
	xor	BYTE PTR [edx+8], cl
	cmp	ebx, 9
	je	.L1033
	movzx	ecx, BYTE PTR [eax+9]
	xor	BYTE PTR [edx+9], cl
	cmp	ebx, 10
	je	.L1033
	movzx	ecx, BYTE PTR [eax+10]
	xor	BYTE PTR [edx+10], cl
	cmp	ebx, 11
	je	.L1033
	movzx	ecx, BYTE PTR [eax+11]
	xor	BYTE PTR [edx+11], cl
	cmp	ebx, 12
	je	.L1033
	movzx	ecx, BYTE PTR [eax+12]
	xor	BYTE PTR [edx+12], cl
	cmp	ebx, 13
	je	.L1033
	movzx	ecx, BYTE PTR [eax+13]
	xor	BYTE PTR [edx+13], cl
	cmp	ebx, 14
	je	.L1033
	movzx	eax, BYTE PTR [eax+14]
	xor	BYTE PTR [edx+14], al
.L1033:
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
.L1039:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ebx, ecx
	xor	esi, esi
	jmp	.L1034
.L1091:
	vzeroupper
	jmp	.L1033
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
	je	.L1093
	.p2align 3
	.p2align 4
	.p2align 3
.L1094:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L1094
.L1093:
	test	edx, edx
	jne	.L1095
	jmp	.L1096
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1097:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L1096
.L1095:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L1097
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
.L1096:
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
	je	.L1107
.L1108:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L1110
.L1107:
	ret
	.p2align 4,,10
	.p2align 3
.L1110:
	add	eax, 1
	cmp	edx, eax
	jne	.L1108
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
	je	.L1121
.L1117:
	mov	eax, DWORD PTR [esp+12]
	jmp	.L1120
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1119:
	add	eax, 1
	cmp	dl, cl
	je	.L1118
.L1120:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L1119
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L1117
.L1121:
	xor	ebx, ebx
.L1118:
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
.L1127:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	.L1127
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
	je	.L1142
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
.L1132:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L1132
	mov	esi, edx
	sub	eax, ebp
	je	.L1130
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	.L1152
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1155:
	add	edx, 1
	test	cl, cl
	je	.L1154
.L1152:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	.L1155
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	.L1134
	.p2align 4,,10
	.p2align 3
.L1156:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L1135
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L1135
.L1134:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	.L1156
.L1135:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	.L1142
	add	edx, 1
	jmp	.L1152
	.p2align 4,,10
	.p2align 3
.L1154:
	xor	esi, esi
.L1130:
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
.L1142:
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
	ja	.L1167
	fxch	st(2)
	fcomi	st, st(2)
	jbe	.L1168
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L1160
	jmp	.L1161
	.p2align 4,,10
	.p2align 3
.L1168:
	fstp	st(1)
	fstp	st(1)
.L1161:
	ret
	.p2align 4,,10
	.p2align 3
.L1167:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L1161
.L1160:
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
	je	.L1169
	cmp	esi, DWORD PTR [esp+32]
	jb	.L1180
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L1180
	movzx	ebp, BYTE PTR [edi]
	jmp	.L1175
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1179:
	mov	edx, ebx
.L1171:
	cmp	esi, edx
	jb	.L1180
.L1175:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	.L1179
	cmp	DWORD PTR [esp+32], 1
	je	.L1169
.L1174:
	mov	eax, 1
	jmp	.L1172
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1173:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	.L1169
.L1172:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L1173
	cmp	esi, ebx
	jb	.L1180
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L1171
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	.L1174
	.p2align 4,,10
	.p2align 3
.L1180:
	xor	edx, edx
.L1169:
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
	je	.L1191
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
.L1191:
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
	ja	.L1220
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	.L1221
	fstp	st(0)
.L1199:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1206:
	fld	DWORD PTR .LC16
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	.L1206
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	.L1196
.L1223:
	fchs
.L1196:
	ret
	.p2align 4,,10
	.p2align 3
.L1221:
	fld	DWORD PTR .LC16
	fcomip	st, st(2)
	jbe	.L1224
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L1212
	jne	.L1212
	jmp	.L1202
	.p2align 4,,10
	.p2align 3
.L1224:
	fstp	st(0)
	jmp	.L1202
	.p2align 4,,10
	.p2align 3
.L1225:
	fstp	st(0)
.L1202:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1220:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	.L1222
	fstp	st(1)
	mov	edx, 1
	jmp	.L1199
	.p2align 4,,10
	.p2align 3
.L1222:
	fld	DWORD PTR .LC18
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	.L1225
	fstp	st(1)
	mov	edx, 1
.L1200:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1208:
	fadd	st, st(0)
	fld	DWORD PTR .LC16
	sub	eax, 1
	fcomip	st, st(1)
	ja	.L1208
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	.L1223
	ret
.L1212:
	xor	edx, edx
	jmp	.L1200
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
	je	.L1229
	vpxor	xmm2, xmm2, xmm2
	.p2align 4
	.p2align 3
.L1228:
	vmovdqa	xmm4, XMMWORD PTR .LC20
	vpxor	xmm6, xmm6, xmm6
	vpand	xmm5, xmm1, xmm4
	vpsrlq	xmm1, xmm1, 1
	vpsubq	xmm7, xmm6, xmm5
	vpunpcklqdq	xmm5, xmm1, xmm1
	vptest	xmm5, xmm5
	vpand	xmm0, xmm7, xmm3
	vpaddq	xmm2, xmm2, xmm0
	vpsllq	xmm3, xmm3, 1
	vmovd	eax, xmm2
	vpextrd	edx, xmm2, 1
	jne	.L1228
	ret
	.p2align 4,,10
	.p2align 3
.L1229:
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
	jnb	.L1255
	mov	ecx, 1
	jmp	.L1232
	.p2align 4,,10
	.p2align 3
.L1235:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1234
	test	ecx, ecx
	je	.L1234
.L1232:
	test	edx, edx
	jns	.L1235
.L1236:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1238:
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
	jne	.L1238
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1237:
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
.L1234:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1236
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
.L1255:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1237
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
	je	.L1259
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
.L1259:
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
	je	.L1264
	test	edi, edi
	je	.L1266
	bsr	ebp, edi
	xor	ebp, 31
.L1267:
	lea	ecx, [ebp-1]
.L1264:
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
.L1266:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	.L1267
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
	je	.L1271
	.p2align 5
	.p2align 4
	.p2align 3
.L1273:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1273
.L1271:
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
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	and	eax, -8
	shr	esi, 3
	mov	DWORD PTR [esp+60], eax
	cmp	edi, edx
	jb	.L1282
	mov	ecx, DWORD PTR [ebp+16]
	add	ecx, edx
	cmp	ecx, edi
	jnb	.L1394
.L1282:
	test	esi, esi
	je	.L1395
	lea	eax, [esi-1]
	cmp	eax, 2
	jbe	.L1284
	mov	ecx, edi
	sub	ecx, edx
	sub	ecx, 4
	cmp	ecx, 56
	jbe	.L1284
	cmp	eax, 6
	jbe	.L1308
	mov	ebx, DWORD PTR [ebp+16]
	mov	eax, edx
	mov	ecx, edi
	shr	ebx, 6
	mov	DWORD PTR [esp+56], ebx
	mov	ebx, DWORD PTR [ebp+16]
	and	ebx, -64
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1286:
	vmovdqu64	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	ecx, 64
	vmovdqu64	ZMMWORD PTR [ecx-64], zmm2
	cmp	ebx, eax
	jne	.L1286
	mov	eax, DWORD PTR [esp+56]
	sal	eax, 3
	cmp	esi, eax
	je	.L1291
	mov	ecx, esi
	sub	ecx, eax
	lea	ebx, [ecx-1]
	cmp	ebx, 2
	jbe	.L1288
.L1285:
	vmovdqu	ymm3, YMMWORD PTR [edx+eax*8]
	mov	ebx, ecx
	and	ebx, -4
	vmovdqu	YMMWORD PTR [edi+eax*8], ymm3
	add	eax, ebx
	and	ecx, 3
	je	.L1291
.L1288:
	vmovq	xmm4, QWORD PTR [edx+eax*8]
	lea	ebx, [eax+1]
	lea	ecx, [0+eax*8]
	vmovq	QWORD PTR [edi+eax*8], xmm4
	cmp	ebx, esi
	jnb	.L1291
	vmovq	xmm5, QWORD PTR [edx+8+ecx]
	add	eax, 2
	vmovq	QWORD PTR [edi+8+ecx], xmm5
	cmp	eax, esi
	jnb	.L1291
	vmovq	xmm6, QWORD PTR [edx+16+ecx]
	vmovq	QWORD PTR [edi+16+ecx], xmm6
.L1291:
	mov	ebx, DWORD PTR [esp+60]
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1389
	mov	ecx, DWORD PTR [ebp+16]
	sub	ecx, ebx
	lea	eax, [ecx-1]
	mov	DWORD PTR [esp+56], eax
	cmp	eax, 14
	jbe	.L1396
	mov	esi, DWORD PTR [esp+60]
	lea	eax, [edi+esi]
	lea	esi, [edx+1+esi]
	mov	ebx, eax
	sub	ebx, esi
	cmp	ebx, 30
	jbe	.L1372
	cmp	DWORD PTR [esp+56], 30
	jbe	.L1309
	mov	esi, DWORD PTR [esp+60]
	lea	ebx, [edx+esi]
	mov	esi, ecx
	and	esi, -32
	mov	DWORD PTR [esp+56], esi
	add	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1293:
	vmovdqu	ymm0, YMMWORD PTR [ebx]
	add	ebx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm0
	cmp	esi, ebx
	jne	.L1293
	mov	ebx, DWORD PTR [esp+60]
	mov	esi, DWORD PTR [esp+56]
	add	ebx, esi
	mov	eax, ebx
	cmp	ecx, esi
	je	.L1389
	sub	ecx, esi
	lea	esi, [ecx-1]
	cmp	esi, 14
	jbe	.L1295
.L1292:
	vmovdqu	xmm1, XMMWORD PTR [edx+ebx]
	vmovdqu	XMMWORD PTR [edi+ebx], xmm1
	mov	ebx, ecx
	and	ebx, -16
	add	eax, ebx
	and	ecx, 15
	je	.L1389
.L1295:
	movzx	ecx, BYTE PTR [edx+eax]
	lea	esi, [eax+1]
	mov	BYTE PTR [edi+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ebx, BYTE PTR [edx+1+eax]
	lea	ecx, [eax+2]
	mov	BYTE PTR [edi+1+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ebx, BYTE PTR [edx+2+eax]
	lea	esi, [eax+3]
	mov	BYTE PTR [edi+2+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ecx, BYTE PTR [edx+3+eax]
	lea	ebx, [eax+4]
	mov	BYTE PTR [edi+3+eax], cl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ecx, BYTE PTR [edx+4+eax]
	lea	esi, [eax+5]
	mov	BYTE PTR [edi+4+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ebx, BYTE PTR [edx+5+eax]
	lea	ecx, [eax+6]
	mov	BYTE PTR [edi+5+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ebx, BYTE PTR [edx+6+eax]
	lea	esi, [eax+7]
	mov	BYTE PTR [edi+6+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ecx, BYTE PTR [edx+7+eax]
	lea	ebx, [eax+8]
	mov	BYTE PTR [edi+7+eax], cl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ecx, BYTE PTR [edx+8+eax]
	lea	esi, [eax+9]
	mov	BYTE PTR [edi+8+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ebx, BYTE PTR [edx+9+eax]
	lea	ecx, [eax+10]
	mov	BYTE PTR [edi+9+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ebx, BYTE PTR [edx+10+eax]
	lea	esi, [eax+11]
	mov	BYTE PTR [edi+10+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ecx, BYTE PTR [edx+11+eax]
	lea	ebx, [eax+12]
	mov	BYTE PTR [edi+11+eax], cl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ecx, BYTE PTR [edx+12+eax]
	lea	esi, [eax+13]
	mov	BYTE PTR [edi+12+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	ebx, BYTE PTR [edx+13+eax]
	lea	ecx, [eax+14]
	mov	BYTE PTR [edi+13+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	.L1389
	movzx	edx, BYTE PTR [edx+14+eax]
	mov	BYTE PTR [edi+14+eax], dl
	vzeroupper
.L1391:
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
.L1394:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+16]
	sub	eax, 1
	test	ebx, ebx
	je	.L1391
	cmp	eax, 14
	jbe	.L1370
	mov	esi, DWORD PTR [ebp+16]
	lea	ecx, [edi+eax]
	lea	ebx, [edx-2+esi]
	sub	ecx, ebx
	add	ecx, 30
	cmp	ecx, 30
	jbe	.L1370
	cmp	eax, 30
	jbe	.L1300
	lea	esi, [esi-32]
	lea	ebx, [esi+edi]
	lea	ecx, [edx+esi]
	mov	esi, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+60], ebx
	mov	ebx, ecx
	and	esi, -32
	sub	ebx, esi
	mov	DWORD PTR [esp+56], esi
	mov	esi, ebx
	mov	ebx, DWORD PTR [esp+60]
	.p2align 5
	.p2align 4
	.p2align 3
.L1301:
	vmovdqu	ymm0, YMMWORD PTR [ecx]
	sub	ecx, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm0
	cmp	esi, ecx
	jne	.L1301
	mov	ecx, DWORD PTR [esp+56]
	sub	eax, ecx
	cmp	DWORD PTR [ebp+16], ecx
	je	.L1389
	sub	DWORD PTR [ebp+16], ecx
	mov	esi, DWORD PTR [ebp+16]
	lea	ebx, [esi-1]
	cmp	ebx, 14
	jbe	.L1390
	vzeroupper
.L1300:
	mov	esi, DWORD PTR [ebp+16]
	vmovdqu	xmm1, XMMWORD PTR [edx-16+esi]
	mov	ecx, esi
	and	ecx, -16
	vmovdqu	XMMWORD PTR [edi-16+esi], xmm1
	sub	eax, ecx
	and	esi, 15
	je	.L1391
.L1304:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	lea	ebx, [eax-1]
	test	eax, eax
	je	.L1391
	movzx	ecx, BYTE PTR [edx-1+eax]
	lea	esi, [eax-2]
	mov	BYTE PTR [edi-1+eax], cl
	test	ebx, ebx
	je	.L1391
	movzx	ebx, BYTE PTR [edx-2+eax]
	mov	BYTE PTR [edi-2+eax], bl
	lea	ebx, [eax-3]
	test	esi, esi
	je	.L1391
	movzx	ecx, BYTE PTR [edx-3+eax]
	lea	esi, [eax-4]
	mov	BYTE PTR [edi-3+eax], cl
	test	ebx, ebx
	je	.L1391
	movzx	ebx, BYTE PTR [edx-4+eax]
	mov	BYTE PTR [edi-4+eax], bl
	lea	ebx, [eax-5]
	test	esi, esi
	je	.L1391
	movzx	ecx, BYTE PTR [edx-5+eax]
	lea	esi, [eax-6]
	mov	BYTE PTR [edi-5+eax], cl
	test	ebx, ebx
	je	.L1391
	movzx	ebx, BYTE PTR [edx-6+eax]
	mov	BYTE PTR [edi-6+eax], bl
	lea	ebx, [eax-7]
	test	esi, esi
	je	.L1391
	movzx	ecx, BYTE PTR [edx-7+eax]
	lea	esi, [eax-8]
	mov	BYTE PTR [edi-7+eax], cl
	test	ebx, ebx
	je	.L1391
	movzx	ebx, BYTE PTR [edx-8+eax]
	mov	BYTE PTR [edi-8+eax], bl
	lea	ebx, [eax-9]
	test	esi, esi
	je	.L1391
	movzx	ecx, BYTE PTR [edx-9+eax]
	lea	esi, [eax-10]
	mov	BYTE PTR [edi-9+eax], cl
	test	ebx, ebx
	je	.L1391
	movzx	ebx, BYTE PTR [edx-10+eax]
	mov	BYTE PTR [edi-10+eax], bl
	lea	ebx, [eax-11]
	test	esi, esi
	je	.L1391
	movzx	ecx, BYTE PTR [edx-11+eax]
	lea	esi, [eax-12]
	mov	BYTE PTR [edi-11+eax], cl
	test	ebx, ebx
	je	.L1391
	movzx	ebx, BYTE PTR [edx-12+eax]
	mov	BYTE PTR [edi-12+eax], bl
	lea	ebx, [eax-13]
	test	esi, esi
	je	.L1391
	movzx	ecx, BYTE PTR [edx-13+eax]
	mov	BYTE PTR [edi-13+eax], cl
	test	ebx, ebx
	je	.L1391
	movzx	edx, BYTE PTR [edx-14+eax]
	mov	BYTE PTR [edi-14+eax], dl
	jmp	.L1391
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1370:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	sub	eax, 1
	jb	.L1391
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	sub	eax, 1
	jnb	.L1370
	jmp	.L1391
	.p2align 4,,10
	.p2align 3
.L1389:
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
.L1308:
	.cfi_restore_state
	mov	ecx, esi
	xor	eax, eax
	jmp	.L1285
	.p2align 4,,10
	.p2align 3
.L1284:
	mov	eax, edx
	mov	ecx, edi
	lea	esi, [edx+esi*8]
	.p2align 5
	.p2align 4
	.p2align 3
.L1290:
	vmovq	xmm7, QWORD PTR [eax]
	add	eax, 8
	add	ecx, 8
	vmovq	QWORD PTR [ecx-8], xmm7
	cmp	eax, esi
	jne	.L1290
	jmp	.L1291
	.p2align 4,,10
	.p2align 3
.L1395:
	mov	eax, DWORD PTR [esp+60]
	add	eax, edi
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	.L1391
.L1280:
	mov	edi, DWORD PTR [esp+60]
	add	edi, edx
	add	edx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
.L1297:
	movzx	ebx, BYTE PTR [edi]
	add	edi, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	edx, edi
	jne	.L1297
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
.L1372:
	.cfi_restore_state
	vzeroupper
	jmp	.L1280
.L1309:
	mov	eax, DWORD PTR [esp+60]
	mov	ebx, eax
	jmp	.L1292
.L1390:
	vzeroupper
	jmp	.L1304
.L1396:
	mov	eax, DWORD PTR [esp+60]
	add	eax, edi
	vzeroupper
	jmp	.L1280
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	shr	esi
	cmp	ebx, ecx
	jb	.L1401
	mov	eax, DWORD PTR [ebp+16]
	add	eax, ecx
	cmp	eax, ebx
	jnb	.L1485
.L1401:
	test	esi, esi
	je	.L1400
	lea	eax, [esi-1]
	cmp	eax, 6
	jbe	.L1404
	lea	edi, [ecx+2]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 28
	jbe	.L1404
	cmp	eax, 14
	jbe	.L1421
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, ebx
	shr	eax, 5
	and	edi, -32
	mov	DWORD PTR [esp+28], eax
	add	edi, ecx
	mov	eax, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L1406:
	vmovdqu	ymm2, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm2
	cmp	eax, edi
	jne	.L1406
	mov	eax, DWORD PTR [esp+28]
	sal	eax, 4
	cmp	esi, eax
	je	.L1478
	mov	edx, esi
	sub	edx, eax
	lea	edi, [edx-1]
	cmp	edi, 6
	jbe	.L1486
	vzeroupper
.L1405:
	vmovdqu	xmm3, XMMWORD PTR [ecx+eax*2]
	mov	edi, edx
	and	edi, -8
	vmovdqu	XMMWORD PTR [ebx+eax*2], xmm3
	add	eax, edi
	and	edx, 7
	je	.L1400
.L1408:
	movzx	edi, WORD PTR [ecx+eax*2]
	lea	edx, [eax+eax]
	mov	WORD PTR [ebx+eax*2], di
	lea	edi, [eax+1]
	cmp	edi, esi
	jnb	.L1400
	movzx	edi, WORD PTR [ecx+2+edx]
	mov	WORD PTR [ebx+2+edx], di
	lea	edi, [eax+2]
	cmp	edi, esi
	jnb	.L1400
	movzx	edi, WORD PTR [ecx+4+edx]
	mov	WORD PTR [ebx+4+edx], di
	lea	edi, [eax+3]
	cmp	edi, esi
	jnb	.L1400
	movzx	edi, WORD PTR [ecx+6+edx]
	mov	WORD PTR [ebx+6+edx], di
	lea	edi, [eax+4]
	cmp	edi, esi
	jnb	.L1400
	movzx	edi, WORD PTR [ecx+8+edx]
	mov	WORD PTR [ebx+8+edx], di
	lea	edi, [eax+5]
	cmp	edi, esi
	jnb	.L1400
	movzx	edi, WORD PTR [ecx+10+edx]
	add	eax, 6
	mov	WORD PTR [ebx+10+edx], di
	cmp	eax, esi
	jnb	.L1400
	movzx	esi, WORD PTR [ecx+12+edx]
	mov	WORD PTR [ebx+12+edx], si
.L1400:
	test	BYTE PTR [ebp+16], 1
	je	.L1482
.L1487:
	mov	eax, DWORD PTR [ebp+16]
	movzx	edx, BYTE PTR [ecx-1+eax]
	mov	ecx, DWORD PTR [ebp+16]
	mov	BYTE PTR [ebx-1+ecx], dl
.L1482:
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
.L1485:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+16]
	sub	eax, 1
	test	edx, edx
	je	.L1482
	cmp	eax, 14
	jbe	.L1477
	mov	esi, DWORD PTR [ebp+16]
	lea	edi, [ebx+eax]
	lea	edx, [ecx-2+esi]
	sub	edi, edx
	add	edi, 30
	cmp	edi, 30
	jbe	.L1477
	cmp	eax, 30
	jbe	.L1414
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 32
	lea	edx, [ecx+edi]
	add	edi, ebx
	mov	DWORD PTR [esp+28], edi
	mov	edi, DWORD PTR [ebp+16]
	mov	esi, edx
	and	edi, -32
	sub	esi, edi
	mov	DWORD PTR [esp+24], edi
	mov	edi, esi
	mov	esi, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
.L1415:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	sub	edx, 32
	sub	esi, 32
	vmovdqu	YMMWORD PTR [esi+32], ymm0
	cmp	edx, edi
	jne	.L1415
	mov	edx, DWORD PTR [esp+24]
	sub	eax, edx
	cmp	DWORD PTR [ebp+16], edx
	je	.L1480
	sub	DWORD PTR [ebp+16], edx
	mov	edi, DWORD PTR [ebp+16]
	lea	esi, [edi-1]
	cmp	esi, 14
	jbe	.L1481
	vzeroupper
.L1414:
	mov	edi, DWORD PTR [ebp+16]
	vmovdqu	xmm1, XMMWORD PTR [ecx-16+edi]
	mov	edx, edi
	and	edx, -16
	vmovdqu	XMMWORD PTR [ebx-16+edi], xmm1
	sub	eax, edx
	and	edi, 15
	je	.L1482
.L1417:
	movzx	edx, BYTE PTR [ecx+eax]
	lea	esi, [eax-1]
	mov	BYTE PTR [ebx+eax], dl
	test	eax, eax
	je	.L1482
	movzx	edx, BYTE PTR [ecx-1+eax]
	lea	edi, [eax-2]
	mov	BYTE PTR [ebx-1+eax], dl
	test	esi, esi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-2+eax]
	lea	esi, [eax-3]
	mov	BYTE PTR [ebx-2+eax], dl
	test	edi, edi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-3+eax]
	lea	edi, [eax-4]
	mov	BYTE PTR [ebx-3+eax], dl
	test	esi, esi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-4+eax]
	lea	esi, [eax-5]
	mov	BYTE PTR [ebx-4+eax], dl
	test	edi, edi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-5+eax]
	lea	edi, [eax-6]
	mov	BYTE PTR [ebx-5+eax], dl
	test	esi, esi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-6+eax]
	lea	esi, [eax-7]
	mov	BYTE PTR [ebx-6+eax], dl
	test	edi, edi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-7+eax]
	lea	edi, [eax-8]
	mov	BYTE PTR [ebx-7+eax], dl
	test	esi, esi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-8+eax]
	lea	esi, [eax-9]
	mov	BYTE PTR [ebx-8+eax], dl
	test	edi, edi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-9+eax]
	lea	edi, [eax-10]
	mov	BYTE PTR [ebx-9+eax], dl
	test	esi, esi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-10+eax]
	lea	esi, [eax-11]
	mov	BYTE PTR [ebx-10+eax], dl
	test	edi, edi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-11+eax]
	lea	edi, [eax-12]
	mov	BYTE PTR [ebx-11+eax], dl
	test	esi, esi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-12+eax]
	lea	esi, [eax-13]
	mov	BYTE PTR [ebx-12+eax], dl
	test	edi, edi
	je	.L1482
	movzx	edx, BYTE PTR [ecx-13+eax]
	mov	BYTE PTR [ebx-13+eax], dl
	test	esi, esi
	je	.L1482
	movzx	ecx, BYTE PTR [ecx-14+eax]
	mov	BYTE PTR [ebx-14+eax], cl
	jmp	.L1482
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1477:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jb	.L1482
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	.L1477
	jmp	.L1482
.L1421:
	mov	edx, esi
	xor	eax, eax
	jmp	.L1405
	.p2align 4,,10
	.p2align 3
.L1404:
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L1410:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	esi, eax
	jne	.L1410
	test	BYTE PTR [ebp+16], 1
	je	.L1482
	jmp	.L1487
.L1486:
	vzeroupper
	jmp	.L1408
.L1478:
	vzeroupper
	jmp	.L1400
.L1481:
	vzeroupper
	jmp	.L1417
.L1480:
	vzeroupper
	jmp	.L1482
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
	mov	ebx, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	and	eax, -4
	shr	ebx, 2
	mov	DWORD PTR [esp+60], eax
	cmp	edi, ecx
	jb	.L1493
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	cmp	edx, edi
	jnb	.L1605
.L1493:
	test	ebx, ebx
	je	.L1606
	lea	eax, [ebx-1]
	cmp	eax, 6
	jbe	.L1495
	lea	esi, [ecx+4]
	mov	edx, edi
	sub	edx, esi
	cmp	edx, 56
	jbe	.L1495
	cmp	eax, 14
	jbe	.L1519
	mov	esi, DWORD PTR [ebp+16]
	mov	eax, ecx
	mov	edx, edi
	shr	esi, 6
	mov	DWORD PTR [esp+56], esi
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -64
	add	esi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L1497:
	vmovdqu32	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	edx, 64
	vmovdqu32	ZMMWORD PTR [edx-64], zmm2
	cmp	esi, eax
	jne	.L1497
	mov	eax, DWORD PTR [esp+56]
	sal	eax, 4
	cmp	ebx, eax
	je	.L1502
	mov	edx, ebx
	sub	edx, eax
	lea	esi, [edx-1]
	cmp	esi, 6
	jbe	.L1499
.L1496:
	vmovdqu	ymm3, YMMWORD PTR [ecx+eax*4]
	mov	esi, edx
	and	esi, -8
	vmovdqu	YMMWORD PTR [edi+eax*4], ymm3
	add	eax, esi
	and	edx, 7
	je	.L1502
.L1499:
	mov	esi, DWORD PTR [ecx+eax*4]
	lea	edx, [0+eax*4]
	mov	DWORD PTR [edi+eax*4], esi
	lea	esi, [eax+1]
	cmp	esi, ebx
	jnb	.L1502
	mov	esi, DWORD PTR [ecx+4+edx]
	mov	DWORD PTR [edi+4+edx], esi
	lea	esi, [eax+2]
	cmp	esi, ebx
	jnb	.L1502
	mov	esi, DWORD PTR [ecx+8+edx]
	mov	DWORD PTR [edi+8+edx], esi
	lea	esi, [eax+3]
	cmp	esi, ebx
	jnb	.L1502
	mov	esi, DWORD PTR [ecx+12+edx]
	mov	DWORD PTR [edi+12+edx], esi
	lea	esi, [eax+4]
	cmp	esi, ebx
	jnb	.L1502
	mov	esi, DWORD PTR [ecx+16+edx]
	mov	DWORD PTR [edi+16+edx], esi
	lea	esi, [eax+5]
	cmp	esi, ebx
	jnb	.L1502
	mov	esi, DWORD PTR [ecx+20+edx]
	add	eax, 6
	mov	DWORD PTR [edi+20+edx], esi
	cmp	eax, ebx
	jnb	.L1502
	mov	ebx, DWORD PTR [ecx+24+edx]
	mov	DWORD PTR [edi+24+edx], ebx
.L1502:
	mov	eax, DWORD PTR [esp+60]
	cmp	eax, DWORD PTR [ebp+16]
	jnb	.L1600
	mov	esi, DWORD PTR [ebp+16]
	sub	esi, eax
	lea	edx, [esi-1]
	mov	DWORD PTR [esp+56], edx
	cmp	edx, 14
	jbe	.L1607
	mov	ebx, DWORD PTR [esp+60]
	lea	eax, [edi+ebx]
	lea	ebx, [ecx+1+ebx]
	mov	edx, eax
	sub	edx, ebx
	cmp	edx, 30
	jbe	.L1583
	cmp	DWORD PTR [esp+56], 30
	jbe	.L1520
	mov	ebx, DWORD PTR [esp+60]
	lea	edx, [ecx+ebx]
	mov	ebx, esi
	and	ebx, -32
	mov	DWORD PTR [esp+56], ebx
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1504:
	vmovdqu	ymm4, YMMWORD PTR [edx]
	add	edx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm4
	cmp	ebx, edx
	jne	.L1504
	mov	edx, DWORD PTR [esp+60]
	mov	ebx, DWORD PTR [esp+56]
	add	edx, ebx
	mov	eax, edx
	cmp	esi, ebx
	je	.L1600
	sub	esi, ebx
	lea	ebx, [esi-1]
	cmp	ebx, 14
	jbe	.L1506
.L1503:
	vmovdqu	xmm5, XMMWORD PTR [ecx+edx]
	vmovdqu	XMMWORD PTR [edi+edx], xmm5
	mov	edx, esi
	and	edx, -16
	add	eax, edx
	and	esi, 15
	je	.L1600
.L1506:
	movzx	ebx, BYTE PTR [ecx+eax]
	lea	esi, [eax+1]
	mov	BYTE PTR [edi+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	edx, BYTE PTR [ecx+1+eax]
	lea	ebx, [eax+2]
	mov	BYTE PTR [edi+1+eax], dl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	edx, BYTE PTR [ecx+2+eax]
	lea	esi, [eax+3]
	mov	BYTE PTR [edi+2+eax], dl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	ebx, BYTE PTR [ecx+3+eax]
	lea	edx, [eax+4]
	mov	BYTE PTR [edi+3+eax], bl
	cmp	edx, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	ebx, BYTE PTR [ecx+4+eax]
	lea	esi, [eax+5]
	mov	BYTE PTR [edi+4+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	edx, BYTE PTR [ecx+5+eax]
	lea	ebx, [eax+6]
	mov	BYTE PTR [edi+5+eax], dl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	edx, BYTE PTR [ecx+6+eax]
	lea	esi, [eax+7]
	mov	BYTE PTR [edi+6+eax], dl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	ebx, BYTE PTR [ecx+7+eax]
	lea	edx, [eax+8]
	mov	BYTE PTR [edi+7+eax], bl
	cmp	edx, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	ebx, BYTE PTR [ecx+8+eax]
	lea	esi, [eax+9]
	mov	BYTE PTR [edi+8+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	edx, BYTE PTR [ecx+9+eax]
	lea	ebx, [eax+10]
	mov	BYTE PTR [edi+9+eax], dl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	edx, BYTE PTR [ecx+10+eax]
	lea	esi, [eax+11]
	mov	BYTE PTR [edi+10+eax], dl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	ebx, BYTE PTR [ecx+11+eax]
	lea	edx, [eax+12]
	mov	BYTE PTR [edi+11+eax], bl
	cmp	edx, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	ebx, BYTE PTR [ecx+12+eax]
	lea	esi, [eax+13]
	mov	BYTE PTR [edi+12+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	edx, BYTE PTR [ecx+13+eax]
	lea	ebx, [eax+14]
	mov	BYTE PTR [edi+13+eax], dl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	.L1600
	movzx	ecx, BYTE PTR [ecx+14+eax]
	mov	BYTE PTR [edi+14+eax], cl
	vzeroupper
.L1602:
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
.L1605:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	sub	eax, 1
	test	esi, esi
	je	.L1602
	cmp	eax, 14
	jbe	.L1581
	mov	esi, DWORD PTR [ebp+16]
	lea	edx, [edi+eax]
	lea	ebx, [ecx-2+esi]
	sub	edx, ebx
	add	edx, 30
	cmp	edx, 30
	jbe	.L1581
	cmp	eax, 30
	jbe	.L1511
	lea	esi, [esi-32]
	lea	ebx, [esi+edi]
	lea	edx, [ecx+esi]
	mov	esi, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+56], ebx
	mov	ebx, edx
	and	esi, -32
	sub	ebx, esi
	mov	DWORD PTR [esp+60], esi
	mov	esi, ebx
	mov	ebx, DWORD PTR [esp+56]
	.p2align 5
	.p2align 4
	.p2align 3
.L1512:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	sub	edx, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm0
	cmp	esi, edx
	jne	.L1512
	mov	edx, DWORD PTR [esp+60]
	sub	eax, edx
	cmp	DWORD PTR [ebp+16], edx
	je	.L1600
	sub	DWORD PTR [ebp+16], edx
	mov	esi, DWORD PTR [ebp+16]
	lea	ebx, [esi-1]
	cmp	ebx, 14
	jbe	.L1601
	vzeroupper
.L1511:
	mov	esi, DWORD PTR [ebp+16]
	vmovdqu	xmm1, XMMWORD PTR [ecx-16+esi]
	mov	edx, esi
	and	edx, -16
	vmovdqu	XMMWORD PTR [edi-16+esi], xmm1
	sub	eax, edx
	and	esi, 15
	je	.L1602
.L1515:
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [edi+eax], bl
	lea	ebx, [eax-1]
	test	eax, eax
	je	.L1602
	movzx	edx, BYTE PTR [ecx-1+eax]
	lea	esi, [eax-2]
	mov	BYTE PTR [edi-1+eax], dl
	test	ebx, ebx
	je	.L1602
	movzx	ebx, BYTE PTR [ecx-2+eax]
	mov	BYTE PTR [edi-2+eax], bl
	lea	ebx, [eax-3]
	test	esi, esi
	je	.L1602
	movzx	edx, BYTE PTR [ecx-3+eax]
	lea	esi, [eax-4]
	mov	BYTE PTR [edi-3+eax], dl
	test	ebx, ebx
	je	.L1602
	movzx	ebx, BYTE PTR [ecx-4+eax]
	mov	BYTE PTR [edi-4+eax], bl
	lea	ebx, [eax-5]
	test	esi, esi
	je	.L1602
	movzx	edx, BYTE PTR [ecx-5+eax]
	lea	esi, [eax-6]
	mov	BYTE PTR [edi-5+eax], dl
	test	ebx, ebx
	je	.L1602
	movzx	ebx, BYTE PTR [ecx-6+eax]
	mov	BYTE PTR [edi-6+eax], bl
	lea	ebx, [eax-7]
	test	esi, esi
	je	.L1602
	movzx	edx, BYTE PTR [ecx-7+eax]
	lea	esi, [eax-8]
	mov	BYTE PTR [edi-7+eax], dl
	test	ebx, ebx
	je	.L1602
	movzx	ebx, BYTE PTR [ecx-8+eax]
	mov	BYTE PTR [edi-8+eax], bl
	lea	ebx, [eax-9]
	test	esi, esi
	je	.L1602
	movzx	edx, BYTE PTR [ecx-9+eax]
	lea	esi, [eax-10]
	mov	BYTE PTR [edi-9+eax], dl
	test	ebx, ebx
	je	.L1602
	movzx	ebx, BYTE PTR [ecx-10+eax]
	mov	BYTE PTR [edi-10+eax], bl
	lea	ebx, [eax-11]
	test	esi, esi
	je	.L1602
	movzx	edx, BYTE PTR [ecx-11+eax]
	lea	esi, [eax-12]
	mov	BYTE PTR [edi-11+eax], dl
	test	ebx, ebx
	je	.L1602
	movzx	ebx, BYTE PTR [ecx-12+eax]
	mov	BYTE PTR [edi-12+eax], bl
	lea	ebx, [eax-13]
	test	esi, esi
	je	.L1602
	movzx	edx, BYTE PTR [ecx-13+eax]
	mov	BYTE PTR [edi-13+eax], dl
	test	ebx, ebx
	je	.L1602
	movzx	ecx, BYTE PTR [ecx-14+eax]
	mov	BYTE PTR [edi-14+eax], cl
	jmp	.L1602
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1581:
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [edi+eax], bl
	sub	eax, 1
	jb	.L1602
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [edi+eax], bl
	sub	eax, 1
	jnb	.L1581
	jmp	.L1602
	.p2align 4,,10
	.p2align 3
.L1600:
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
.L1519:
	.cfi_restore_state
	mov	edx, ebx
	xor	eax, eax
	jmp	.L1496
	.p2align 4,,10
	.p2align 3
.L1495:
	mov	eax, ecx
	mov	edx, edi
	lea	ebx, [ecx+ebx*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L1501:
	mov	esi, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], esi
	cmp	eax, ebx
	jne	.L1501
	jmp	.L1502
	.p2align 4,,10
	.p2align 3
.L1606:
	mov	eax, DWORD PTR [esp+60]
	add	eax, edi
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	.L1602
.L1491:
	mov	edi, DWORD PTR [esp+60]
	add	edi, ecx
	add	ecx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
.L1508:
	movzx	edx, BYTE PTR [edi]
	add	edi, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], dl
	cmp	ecx, edi
	jne	.L1508
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
.L1583:
	.cfi_restore_state
	vzeroupper
	jmp	.L1491
.L1520:
	mov	eax, DWORD PTR [esp+60]
	mov	edx, eax
	jmp	.L1503
.L1601:
	vzeroupper
	jmp	.L1515
.L1607:
	mov	eax, DWORD PTR [esp+60]
	add	eax, edi
	vzeroupper
	jmp	.L1491
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
	jns	.L1614
	fld	DWORD PTR .LC21
	faddp	st(1), st
.L1614:
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
	jns	.L1617
	fld	DWORD PTR .LC21
	faddp	st(1), st
.L1617:
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
	jne	.L1641
.L1620:
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1641:
	.cfi_restore_state
	mov	eax, edx
	shr	eax, 15
	jne	.L1624
	mov	eax, edx
	sar	eax, 14
	jne	.L1620
	mov	eax, edx
	shr	eax, 13
	jne	.L1625
	mov	eax, edx
	shr	eax, 12
	jne	.L1626
	mov	eax, edx
	shr	eax, 11
	jne	.L1627
	mov	eax, edx
	shr	eax, 10
	jne	.L1628
	mov	eax, edx
	shr	eax, 9
	jne	.L1629
	mov	eax, edx
	shr	eax, 8
	jne	.L1630
	mov	eax, edx
	shr	eax, 7
	jne	.L1631
	mov	eax, edx
	shr	eax, 6
	jne	.L1632
	mov	eax, edx
	shr	eax, 5
	jne	.L1633
	mov	eax, edx
	shr	eax, 4
	jne	.L1634
	mov	eax, edx
	shr	eax, 3
	jne	.L1635
	mov	eax, edx
	shr	eax, 2
	jne	.L1636
	shr	edx
	jne	.L1637
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1624:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1620
.L1628:
	mov	eax, 5
	jmp	.L1620
.L1635:
	mov	eax, 12
	jmp	.L1620
.L1625:
	mov	eax, 2
	jmp	.L1620
.L1626:
	mov	eax, 3
	jmp	.L1620
.L1627:
	mov	eax, 4
	jmp	.L1620
.L1629:
	mov	eax, 6
	jmp	.L1620
.L1630:
	mov	eax, 7
	jmp	.L1620
.L1631:
	mov	eax, 8
	jmp	.L1620
.L1632:
	mov	eax, 9
	jmp	.L1620
.L1633:
	mov	eax, 10
	jmp	.L1620
.L1634:
	mov	eax, 11
	jmp	.L1620
.L1636:
	mov	eax, 13
	jmp	.L1620
.L1637:
	mov	eax, 14
	jmp	.L1620
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
	jne	.L1664
.L1642:
	mov	eax, edx
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L1664:
	.cfi_restore_state
	test	al, 1
	jne	.L1646
	test	al, 2
	jne	.L1647
	test	al, 4
	jne	.L1648
	test	al, 8
	jne	.L1649
	test	al, 16
	jne	.L1650
	test	al, 32
	jne	.L1651
	test	al, 64
	jne	.L1652
	test	al, -128
	jne	.L1653
	test	ah, 1
	jne	.L1654
	test	ah, 2
	jne	.L1655
	test	ah, 4
	jne	.L1656
	test	ah, 8
	jne	.L1657
	test	ah, 16
	jne	.L1658
	test	ah, 32
	jne	.L1659
	test	ah, 64
	jne	.L1660
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
.L1646:
	.cfi_restore_state
	xor	edx, edx
	jmp	.L1642
.L1651:
	mov	edx, 5
	jmp	.L1642
.L1658:
	mov	edx, 12
	jmp	.L1642
.L1647:
	mov	edx, 1
	jmp	.L1642
.L1648:
	mov	edx, 2
	jmp	.L1642
.L1649:
	mov	edx, 3
	jmp	.L1642
.L1650:
	mov	edx, 4
	jmp	.L1642
.L1652:
	mov	edx, 6
	jmp	.L1642
.L1653:
	mov	edx, 7
	jmp	.L1642
.L1654:
	mov	edx, 8
	jmp	.L1642
.L1655:
	mov	edx, 9
	jmp	.L1642
.L1656:
	mov	edx, 10
	jmp	.L1642
.L1657:
	mov	edx, 11
	jmp	.L1642
.L1659:
	mov	edx, 13
	jmp	.L1642
.L1660:
	mov	edx, 14
	jmp	.L1642
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
	jnb	.L1672
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1672:
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
	vextracti64x4	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti128	xmm7, ymm6, 0x1
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
	vextracti64x4	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti128	xmm7, ymm6, 0x1
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
	je	.L1677
	.p2align 5
	.p2align 4
	.p2align 3
.L1679:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1679
.L1677:
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
	je	.L1683
	test	edx, edx
	je	.L1683
	.p2align 5
	.p2align 4
	.p2align 3
.L1685:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1685
.L1683:
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
	jnb	.L1715
	mov	ecx, 1
	jmp	.L1692
	.p2align 4,,10
	.p2align 3
.L1695:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1694
	test	ecx, ecx
	je	.L1694
.L1692:
	test	edx, edx
	jns	.L1695
.L1696:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1698:
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
	jne	.L1698
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1697:
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
.L1694:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1696
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
.L1715:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1697
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
	ja	.L1722
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1719
	.p2align 4,,10
	.p2align 3
.L1722:
	fstp	st(0)
	fstp	st(0)
.L1719:
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
	ja	.L1726
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1723
	.p2align 4,,10
	.p2align 3
.L1726:
	fstp	st(0)
	fstp	st(0)
.L1723:
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
	js	.L1739
	je	.L1734
	xor	edi, edi
.L1731:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1733:
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
	jne	.L1733
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
.L1739:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L1731
	.p2align 4,,10
	.p2align 3
.L1734:
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
	jns	.L1741
	neg	ebx
	xor	eax, eax
	mov	edi, 1
.L1741:
	test	esi, esi
	jns	.L1742
	neg	esi
	mov	edi, eax
.L1742:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	.L1743
	jmp	.L1767
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1773:
	test	eax, eax
	je	.L1748
.L1743:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	.L1773
.L1748:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	.L1768
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1745:
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
	jne	.L1745
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
.L1746:
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
.L1768:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	.L1746
.L1767:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	.L1746
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
	jns	.L1775
	neg	ebx
	mov	esi, 1
.L1775:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	.L1776
	jmp	.L1800
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1804:
	test	edx, edx
	je	.L1796
.L1776:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	.L1804
	test	edx, edx
	je	.L1796
	.p2align 4
	.p2align 4
	.p2align 3
.L1778:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	.L1778
.L1779:
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
.L1796:
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
.L1800:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	.L1779
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
	jb	.L1806
	jmp	.L1874
	.p2align 4,,10
	.p2align 3
.L1809:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	.L1808
	test	ax, ax
	je	.L1808
	mov	ecx, eax
	mov	edx, ebx
.L1806:
	test	dx, dx
	jns	.L1809
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
	je	.L1875
.L1813:
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	je	.L1811
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
	jns	.L1811
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
.L1811:
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
.L1808:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	.L1811
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
	jmp	.L1813
.L1874:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	.L1811
.L1875:
	mov	WORD PTR [esp+2], ax
	jmp	.L1811
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
	jnb	.L1900
	mov	ecx, 1
	jmp	.L1877
	.p2align 4,,10
	.p2align 3
.L1880:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1879
	test	ecx, ecx
	je	.L1879
.L1877:
	test	edx, edx
	jns	.L1880
.L1881:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1883:
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
	jne	.L1883
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1882:
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
.L1879:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1881
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
.L1900:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1882
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
	je	.L1905
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
.L1905:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1908
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
.L1908:
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
	je	.L1911
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
.L1911:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1914
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
.L1914:
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
	jl	.L1920
	mov	eax, 2
	jg	.L1920
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1920
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1920:
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
	jl	.L1927
	mov	eax, 1
	jg	.L1927
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1927
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1927:
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
	je	.L1936
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
.L1936:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1939
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
.L1939:
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
	vmovq	xmm0, QWORD PTR [esp+4]
	vmovdqa	xmm2, XMMWORD PTR .LC24
	vmovdqa	xmm6, XMMWORD PTR .LC25
	vpsrlq	xmm1, xmm0, 1
	vpand	xmm3, xmm1, xmm2
	vpsubq	xmm4, xmm0, xmm3
	vpsrlq	xmm5, xmm4, 2
	vpand	xmm0, xmm4, xmm6
	vmovdqa	xmm4, XMMWORD PTR .LC26
	vpand	xmm7, xmm5, xmm6
	vpaddq	xmm1, xmm7, xmm0
	vpsrlq	xmm2, xmm1, 4
	vpaddq	xmm3, xmm2, xmm1
	vpand	xmm5, xmm3, xmm4
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
	je	.L1951
	jmp	.L1953
	.p2align 4,,10
	.p2align 3
.L1958:
	fxch	st(1)
	jmp	.L1953
	.p2align 4,,10
	.p2align 3
.L1959:
	fxch	st(1)
.L1953:
	fmul	st, st(1)
.L1951:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1952
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1958
.L1957:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1959
	jmp	.L1957
	.p2align 4,,10
	.p2align 3
.L1952:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1950
	fld1
	fdivrp	st(1), st
.L1950:
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
	je	.L1961
	jmp	.L1963
	.p2align 4,,10
	.p2align 3
.L1968:
	fxch	st(1)
	jmp	.L1963
	.p2align 4,,10
	.p2align 3
.L1969:
	fxch	st(1)
.L1963:
	fmul	st, st(1)
.L1961:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1962
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1968
.L1967:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1969
	jmp	.L1967
	.p2align 4,,10
	.p2align 3
.L1962:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1960
	fld1
	fdivrp	st(1), st
.L1960:
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
	jb	.L1970
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1970
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1970
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1970:
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
	jb	.L1977
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1977
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1977
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1977:
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
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
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
	.set	.LC1,.LC0
	.section	.rodata
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
