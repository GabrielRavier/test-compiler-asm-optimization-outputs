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
	mov	edi, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	ecx, edi
	jnb	.L2
	test	eax, eax
	je	.L3
	lea	edx, [eax-1]
	cmp	edx, 2
	jbe	.L96
	lea	esi, [ecx-2+eax]
	mov	ebx, edi
	sub	ebx, esi
	lea	esi, [ebx+14+edx]
	cmp	esi, 14
	jbe	.L96
	lea	ebx, [ecx+eax]
	lea	esi, [edi+eax]
	mov	DWORD PTR [esp+24], ebx
	mov	DWORD PTR [esp+28], esi
	cmp	edx, 14
	jbe	.L22
	lea	ebx, [eax-16]
	lea	esi, [ebx+edi]
	lea	edx, [ecx+ebx]
	mov	DWORD PTR [esp+16], esi
	mov	esi, eax
	mov	ebx, edx
	and	esi, -16
	sub	ebx, esi
	mov	DWORD PTR [esp+20], esi
	mov	esi, ebx
	mov	ebx, DWORD PTR [esp+16]
	.p2align 5
	.p2align 4
	.p2align 3
.L6:
	vmovdqu	xmm2, XMMWORD PTR [edx]
	sub	edx, 16
	sub	ebx, 16
	vmovdqu	XMMWORD PTR [ebx+16], xmm2
	cmp	esi, edx
	jne	.L6
	mov	esi, DWORD PTR [esp+20]
	mov	edx, eax
	sub	DWORD PTR [esp+24], esi
	sub	DWORD PTR [esp+28], esi
	sub	edx, esi
	cmp	eax, esi
	je	.L3
	lea	ebx, [edx-1]
	mov	eax, edx
	cmp	ebx, 2
	jbe	.L8
.L5:
	lea	ebx, [eax-4]
	mov	esi, eax
	add	ecx, ebx
	shr	esi, 2
	add	ebx, edi
	vmovd	xmm3, DWORD PTR [ecx]
	vmovd	DWORD PTR [ebx], xmm3
	cmp	esi, 1
	je	.L9
	vmovd	xmm4, DWORD PTR [ecx-4]
	vmovd	DWORD PTR [ebx-4], xmm4
	cmp	esi, 2
	je	.L9
	mov	ecx, DWORD PTR [ecx-8]
	mov	DWORD PTR [ebx-8], ecx
.L9:
	mov	esi, eax
	and	esi, -4
	sub	DWORD PTR [esp+24], esi
	sub	DWORD PTR [esp+28], esi
	sub	edx, esi
	test	al, 3
	je	.L3
.L8:
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [ebx-1]
	mov	BYTE PTR [ecx-1], al
	cmp	edx, 1
	je	.L3
	movzx	eax, BYTE PTR [ebx-2]
	mov	BYTE PTR [ecx-2], al
	cmp	edx, 2
	je	.L3
	movzx	edx, BYTE PTR [ebx-3]
	mov	BYTE PTR [ecx-3], dl
.L3:
	lea	esp, [ebp-12]
	mov	eax, edi
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
	cmp	edi, ecx
	je	.L3
	test	eax, eax
	je	.L3
	lea	ebx, [eax-1]
	lea	edx, [ecx+1]
	cmp	ebx, 14
	jbe	.L13
	mov	esi, edi
	sub	esi, edx
	cmp	esi, 30
	jbe	.L13
	cmp	ebx, 30
	jbe	.L23
	mov	esi, eax
	mov	edx, ecx
	mov	ebx, edi
	and	esi, -32
	mov	DWORD PTR [esp+20], esi
	add	esi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L15:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	add	edx, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	edx, esi
	jne	.L15
	mov	ebx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+24], edx
	mov	edx, eax
	sub	edx, ebx
	lea	esi, [edi+ebx]
	mov	DWORD PTR [esp+28], edx
	cmp	eax, ebx
	je	.L99
	lea	ebx, [edx-1]
	mov	eax, edx
	cmp	ebx, 14
	jbe	.L103
	vzeroupper
.L14:
	mov	edx, DWORD PTR [esp+20]
	vmovdqu	xmm1, XMMWORD PTR [ecx+edx]
	mov	ecx, eax
	and	ecx, -16
	add	DWORD PTR [esp+24], ecx
	sub	DWORD PTR [esp+28], ecx
	add	esi, ecx
	vmovdqu	XMMWORD PTR [edi+edx], xmm1
	test	al, 15
	je	.L3
.L18:
	mov	edx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [esi], al
	cmp	ebx, 1
	je	.L3
	movzx	ecx, BYTE PTR [edx+1]
	mov	BYTE PTR [esi+1], cl
	cmp	ebx, 2
	je	.L3
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [esi+2], al
	cmp	ebx, 3
	je	.L3
	movzx	ecx, BYTE PTR [edx+3]
	mov	BYTE PTR [esi+3], cl
	cmp	ebx, 4
	je	.L3
	movzx	eax, BYTE PTR [edx+4]
	mov	BYTE PTR [esi+4], al
	cmp	ebx, 5
	je	.L3
	movzx	ecx, BYTE PTR [edx+5]
	mov	BYTE PTR [esi+5], cl
	cmp	ebx, 6
	je	.L3
	movzx	eax, BYTE PTR [edx+6]
	mov	BYTE PTR [esi+6], al
	cmp	ebx, 7
	je	.L3
	movzx	ecx, BYTE PTR [edx+7]
	mov	BYTE PTR [esi+7], cl
	cmp	ebx, 8
	je	.L3
	movzx	eax, BYTE PTR [edx+8]
	mov	BYTE PTR [esi+8], al
	cmp	ebx, 9
	je	.L3
	movzx	ecx, BYTE PTR [edx+9]
	mov	BYTE PTR [esi+9], cl
	cmp	ebx, 10
	je	.L3
	movzx	eax, BYTE PTR [edx+10]
	mov	BYTE PTR [esi+10], al
	cmp	ebx, 11
	je	.L3
	movzx	ecx, BYTE PTR [edx+11]
	mov	BYTE PTR [esi+11], cl
	cmp	ebx, 12
	je	.L3
	movzx	eax, BYTE PTR [edx+12]
	mov	BYTE PTR [esi+12], al
	cmp	ebx, 13
	je	.L3
	movzx	ecx, BYTE PTR [edx+13]
	mov	BYTE PTR [esi+13], cl
	cmp	ebx, 14
	je	.L3
	movzx	edx, BYTE PTR [edx+14]
	mov	BYTE PTR [esi+14], dl
	jmp	.L3
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L104:
	sub	edx, 1
.L96:
	movzx	ebx, BYTE PTR [ecx-1+eax]
	mov	BYTE PTR [edi-1+eax], bl
	mov	eax, edx
	test	edx, edx
	jne	.L104
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L13:
	add	eax, edi
	mov	esi, edi
	jmp	.L20
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L105:
	add	edx, 1
.L20:
	movzx	ebx, BYTE PTR [edx-1]
	add	esi, 1
	mov	BYTE PTR [esi-1], bl
	cmp	esi, eax
	jne	.L105
	jmp	.L3
.L103:
	vzeroupper
	jmp	.L18
.L22:
	mov	edx, eax
	jmp	.L5
.L23:
	mov	DWORD PTR [esp+24], ecx
	mov	esi, edi
	mov	DWORD PTR [esp+28], eax
	mov	DWORD PTR [esp+20], 0
	jmp	.L14
.L99:
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
	jne	.L107
	jmp	.L109
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L110:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L109
.L107:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L110
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
.L109:
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
	jne	.L119
	jmp	.L122
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L121:
	add	eax, 1
	sub	edx, 1
	je	.L122
.L119:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L121
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L122:
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
	jne	.L128
	jmp	.L127
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L130:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L132
.L128:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L130
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L127:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L132:
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
	je	.L140
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
.L140:
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
	jmp	.L146
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L148:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L145
.L146:
	cmp	eax, ebx
	jne	.L148
	xor	edx, edx
.L145:
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
	je	.L153
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
.L153:
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
	je	.L156
	.p2align 4
	.p2align 4
	.p2align 3
.L157:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L157
.L156:
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
	jne	.L163
	jmp	.L162
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L165:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L162
.L163:
	cmp	eax, ecx
	jne	.L165
.L162:
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
	jmp	.L172
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L176:
	add	eax, 1
	test	cl, cl
	je	.L175
.L172:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L176
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L175:
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
	je	.L178
	jmp	.L179
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L180:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	.L179
.L178:
	test	al, al
	jne	.L180
	xor	eax, eax
.L179:
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
	je	.L189
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L188:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L188
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L189:
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
	je	.L191
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L195
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L212:
	cmp	edx, ebp
	je	.L194
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L211
	mov	edx, esi
.L195:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	.L212
.L194:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
.L191:
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
.L211:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	.L194
.L210:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	.L194
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
	jle	.L232
	mov	ebx, ecx
	lea	eax, [ecx-2]
	shr	ebx
	lea	ebp, [ebx-1]
	cmp	eax, 13
	jbe	.L221
	mov	esi, ecx
	mov	edx, DWORD PTR [esp+24]
	and	ecx, -16
	mov	eax, edi
	vmovdqa	xmm1, XMMWORD PTR .LC0
	shr	esi, 4
	add	ecx, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L216:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	vpshufb	xmm2, xmm0, xmm1
	vmovdqu	XMMWORD PTR [edx-16], xmm2
	cmp	eax, ecx
	jne	.L216
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [0+esi*8]
	sal	esi, 4
	add	edx, esi
	add	esi, edi
	cmp	ebx, eax
	je	.L232
.L215:
	sub	ebx, eax
	cmp	ebp, eax
	je	.L218
	vmovdqa	xmm4, XMMWORD PTR .LC1
	add	eax, eax
	mov	ecx, ebx
	add	edi, eax
	shr	ecx
	add	eax, DWORD PTR [esp+24]
	vmovd	xmm3, DWORD PTR [edi]
	vpshufb	xmm5, xmm3, xmm4
	vmovd	DWORD PTR [eax], xmm5
	cmp	ecx, 1
	je	.L219
	vmovd	xmm6, DWORD PTR [edi+4]
	vpshufb	xmm7, xmm6, xmm4
	vmovd	DWORD PTR [eax+4], xmm7
	cmp	ecx, 2
	je	.L219
	vmovd	xmm1, DWORD PTR [edi+8]
	vpshufb	xmm0, xmm1, xmm4
	vmovd	DWORD PTR [eax+8], xmm0
.L219:
	test	bl, 1
	je	.L232
	and	ebx, -2
	add	ebx, ebx
	add	edx, ebx
	add	esi, ebx
.L218:
	movbe	di, WORD PTR [esi]
	mov	WORD PTR [edx], di
.L232:
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
.L221:
	.cfi_restore_state
	mov	edx, DWORD PTR [esp+24]
	mov	esi, edi
	xor	eax, eax
	jmp	.L215
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
	jbe	.L246
	cmp	eax, 31
	jbe	.L246
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L244
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L246:
	mov	edx, 1
.L244:
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
	jbe	.L255
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L252
	cmp	eax, 8231
	jbe	.L252
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L249
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L249
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L252:
	mov	edx, 1
.L249:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L255:
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
	jbe	.L256
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L256:
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
	jp	.L268
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L264
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L267
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L267:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L268:
	fstp	st(1)
.L260:
	ret
	.p2align 4,,10
	.p2align 3
.L264:
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
	jp	.L277
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L273
	fxch	st(1)
	fcomi	st, st(1)
	jbe	.L276
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L276:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L277:
	fstp	st(1)
.L269:
	ret
	.p2align 4,,10
	.p2align 3
.L273:
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
	jp	.L283
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L286
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
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L283:
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
	jp	.L292
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L295
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
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L292:
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
	fstp	st(1)
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L308:
	fstp	st(0)
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L309:
	fstp	st(0)
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L310:
	fstp	st(0)
.L302:
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L307:
	fstp	st(0)
.L296:
	ret
	.p2align 4,,10
	.p2align 3
.L306:
	test	edx, edx
	je	.L310
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
	jp	.L319
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L317
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
	je	.L313
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L317:
	fstp	st(0)
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L319:
	fstp	st(0)
.L311:
	ret
	.p2align 4,,10
	.p2align 3
.L313:
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
	jp	.L328
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L326
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
	je	.L322
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L326:
	fstp	st(0)
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L328:
	fstp	st(0)
.L320:
	ret
	.p2align 4,,10
	.p2align 3
.L322:
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
	jp	.L340
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L341
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
	jne	.L339
	fcomi	st, st(1)
	jbe	.L342
	fstp	st(0)
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L340:
	fstp	st(0)
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L342:
	fstp	st(1)
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L343:
	fstp	st(1)
.L334:
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L341:
	fstp	st(0)
.L329:
	ret
	.p2align 4,,10
	.p2align 3
.L339:
	test	edx, edx
	je	.L343
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
	je	.L345
	.p2align 5
	.p2align 4
	.p2align 3
.L346:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L346
.L345:
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
	je	.L358
	vmovd	xmm1, DWORD PTR [eax]
	vpinsrd	xmm0, xmm1, eax, 1
	vmovq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	.L357
	mov	DWORD PTR [ecx+4], edx
.L357:
	ret
	.p2align 4,,10
	.p2align 3
.L358:
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
	je	.L360
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L360:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L368
	mov	DWORD PTR [eax], edx
.L368:
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
	je	.L370
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, DWORD PTR [esp+52]
	xor	ebx, ebx
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L387:
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	je	.L386
.L372:
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
	jne	.L387
.L369:
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
.L386:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L370:
	mov	edx, DWORD PTR [esp+56]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	DWORD PTR [edx], eax
	mov	esi, ecx
	test	edi, edi
	je	.L369
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
	je	.L389
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, ebp
	xor	edi, edi
	mov	ebp, ebx
	jmp	.L391
	.p2align 4,,10
	.p2align 3
.L401:
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	je	.L389
.L391:
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
	jne	.L401
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
.L389:
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
	jbe	.L426
	mov	edx, ecx
	jmp	.L430
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L426:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L426
.L430:
	cmp	dl, 32
	je	.L426
	cmp	dl, 43
	je	.L407
	cmp	dl, 45
	jne	.L431
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L416
	mov	ebp, 1
.L410:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L413:
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
	jbe	.L413
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
.L431:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L410
.L416:
	xor	eax, eax
.L432:
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
.L407:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L410
	xor	eax, eax
	jmp	.L432
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
	jbe	.L454
	mov	edx, ecx
	jmp	.L457
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L454:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	.L454
.L457:
	cmp	dl, 32
	je	.L454
	cmp	dl, 43
	je	.L437
	cmp	dl, 45
	je	.L458
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L445
.L439:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L442:
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
	jbe	.L442
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
.L458:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L439
.L445:
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
.L437:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	.L445
	xor	ebp, ebp
	jmp	.L439
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
	jbe	.L482
	mov	eax, ecx
	jmp	.L486
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L482:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	esi, [ecx-9]
	mov	eax, ecx
	cmp	esi, 4
	jbe	.L482
.L486:
	cmp	al, 32
	je	.L482
	cmp	al, 43
	je	.L463
	cmp	al, 45
	jne	.L487
	lea	ecx, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L472
	mov	ebx, 1
.L466:
	vpxor	xmm5, xmm5, xmm5
	.p2align 6
	.p2align 4
	.p2align 3
.L469:
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
	vmovd	edi, xmm5
	vpextrd	esi, xmm5, 1
	sub	edx, 48
	cmp	edx, 9
	jbe	.L469
	test	ebx, ebx
	jne	.L459
	vpsubq	xmm6, xmm4, xmm3
	vmovd	edi, xmm6
	vpextrd	esi, xmm6, 1
.L459:
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
.L487:
	.cfi_restore_state
	lea	esi, [ecx-48]
	xor	ebx, ebx
	mov	ecx, edx
	cmp	esi, 9
	jbe	.L466
.L472:
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
.L463:
	.cfi_restore_state
	movsx	edi, BYTE PTR [edx+1]
	lea	ecx, [edx+1]
	xor	ebx, ebx
	mov	eax, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L466
	jmp	.L472
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
.L503:
	test	ebx, ebx
	je	.L489
.L504:
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
	js	.L493
	je	.L488
	sub	ebx, 1
	lea	eax, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L504
.L489:
	xor	ebp, ebp
.L488:
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
.L493:
	.cfi_restore_state
	mov	ebx, esi
	jmp	.L503
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
	je	.L510
	.p2align 4
	.p2align 3
.L518:
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
	je	.L505
	jle	.L508
	lea	ebp, [ebp-1]
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L518
.L510:
	xor	ebx, ebx
.L505:
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
.L508:
	.cfi_restore_state
	test	esi, esi
	je	.L510
	mov	ebp, esi
	jmp	.L518
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
	jne	.L534
	jmp	.L537
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L536:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L537
.L534:
	cmp	ecx, edx
	jne	.L536
	ret
	.p2align 4,,10
	.p2align 3
.L537:
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
	je	.L542
	jmp	.L543
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L544:
	mov	eax, DWORD PTR [edx+4]
	mov	ebx, DWORD PTR [ecx+4]
	add	edx, 4
	add	ecx, 4
	cmp	eax, ebx
	jne	.L543
.L542:
	test	eax, eax
	jne	.L544
.L543:
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
.L551:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L551
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
	je	.L557
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L556:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L556
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L557:
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
	jne	.L560
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L574:
	test	ebx, ebx
	je	.L564
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L566
.L560:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L574
.L564:
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
.L566:
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
	jne	.L576
	jmp	.L579
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L578:
	add	eax, 4
	sub	edx, 1
	je	.L579
.L576:
	cmp	DWORD PTR [eax], ecx
	jne	.L578
	ret
	.p2align 4,,10
	.p2align 3
.L579:
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
	jne	.L584
	jmp	.L583
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L586:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L589
.L584:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L586
	cmp	ebx, DWORD PTR [edx]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
.L583:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L589:
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
	je	.L597
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
.L597:
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	cmp	ebx, esi
	je	.L633
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, ebx
	sub	edi, esi
	lea	edx, [0+eax*4]
	lea	ecx, [eax-1]
	cmp	edi, edx
	jb	.L604
	mov	eax, DWORD PTR [ebp+16]
	test	eax, eax
	je	.L633
	cmp	ecx, 2
	jbe	.L622
	lea	edi, [esi+4]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 24
	jbe	.L623
	cmp	ecx, 6
	jbe	.L624
	mov	edi, DWORD PTR [ebp+16]
	xor	eax, eax
	shr	edi, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L615:
	mov	edx, eax
	add	eax, 1
	sal	edx, 5
	vmovdqu	ymm0, YMMWORD PTR [esi+edx]
	vmovdqu	YMMWORD PTR [ebx+edx], ymm0
	cmp	edi, eax
	jne	.L615
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -8
	lea	edx, [0+edi*4]
	sub	ecx, edi
	lea	eax, [esi+edx]
	add	edx, ebx
	mov	DWORD PTR [esp+28], eax
	test	BYTE PTR [ebp+16], 7
	je	.L657
	sub	DWORD PTR [ebp+16], edi
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, 1
	cmp	eax, 2
	jbe	.L661
	vzeroupper
.L614:
	vmovdqu	xmm1, XMMWORD PTR [esi+edi*4]
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -4
	vmovdqu	XMMWORD PTR [ebx+edi*4], xmm1
	sub	ecx, esi
	sal	esi, 2
	add	DWORD PTR [esp+28], esi
	add	edx, esi
	test	BYTE PTR [ebp+16], 3
	je	.L633
.L618:
	mov	edi, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [edi]
	mov	DWORD PTR [edx], eax
	test	ecx, ecx
	je	.L633
	mov	esi, DWORD PTR [edi+4]
	mov	DWORD PTR [edx+4], esi
	cmp	ecx, 1
	je	.L633
	mov	ecx, DWORD PTR [edi+8]
	mov	DWORD PTR [edx+8], ecx
.L633:
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
.L604:
	.cfi_restore_state
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	.L633
	cmp	ecx, 2
	jbe	.L654
	mov	eax, ebx
	sub	eax, esi
	add	eax, 12
	cmp	eax, 8
	jbe	.L654
	mov	edi, DWORD PTR [ebp+16]
	sub	edx, 16
	lea	eax, [esi+edx]
	lea	edx, [edx+ebx]
	shr	edi, 2
	mov	DWORD PTR [esp+28], edx
	mov	edx, eax
	sal	edi, 4
	sub	edx, edi
	mov	edi, edx
	mov	edx, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
.L608:
	vmovdqu	xmm2, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	vmovdqu	XMMWORD PTR [edx+16], xmm2
	cmp	edi, eax
	jne	.L608
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -4
	sub	ecx, eax
	test	BYTE PTR [ebp+16], 3
	je	.L633
	mov	edi, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edi
	test	ecx, ecx
	je	.L633
	sub	ecx, 1
	mov	edx, DWORD PTR [esi+ecx*4]
	lea	eax, [0+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edx
	je	.L633
	mov	esi, DWORD PTR [esi-4+eax]
	mov	DWORD PTR [ebx-4+eax], esi
	jmp	.L633
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L654:
	mov	edi, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edi
	sub	ecx, 1
	jb	.L633
	mov	edi, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [ebx+ecx*4], edi
	sub	ecx, 1
	jnb	.L654
	jmp	.L633
	.p2align 4,,10
	.p2align 3
.L622:
	mov	edx, ebx
	lea	edi, [esi+4]
	jmp	.L655
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L662:
	add	edi, 4
.L655:
	mov	eax, DWORD PTR [edi-4]
	add	edx, 4
	mov	DWORD PTR [edx-4], eax
	sub	ecx, 1
	jb	.L633
	jmp	.L662
.L623:
	mov	edx, ebx
	jmp	.L655
.L657:
	vzeroupper
	jmp	.L633
.L624:
	mov	DWORD PTR [esp+28], esi
	mov	edx, ebx
	xor	edi, edi
	jmp	.L614
.L661:
	vzeroupper
	jmp	.L618
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
	mov	ecx, DWORD PTR [ebp+8]
	vmovd	xmm1, DWORD PTR [ebp+12]
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+16]
	test	ebx, ebx
	je	.L664
	lea	edi, [ebx-1]
	cmp	edi, 6
	jbe	.L670
	mov	esi, ebx
	vpshufd	xmm0, xmm1, 0
	xor	eax, eax
	vinsertf128	ymm0, ymm0, xmm0, 1
	shr	esi, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L666:
	mov	edx, eax
	add	eax, 1
	sal	edx, 5
	vmovdqu	YMMWORD PTR [ecx+edx], ymm0
	cmp	esi, eax
	jne	.L666
	mov	eax, ebx
	and	eax, -8
	sub	edi, eax
	lea	edx, [ecx+eax*4]
	test	bl, 7
	je	.L689
	vzeroupper
.L665:
	sub	ebx, eax
	lea	esi, [ebx-1]
	cmp	esi, 2
	jbe	.L668
	vpshufd	xmm2, xmm1, 0
	vmovdqu	XMMWORD PTR [ecx+eax*4], xmm2
	mov	eax, ebx
	and	eax, -4
	sub	edi, eax
	and	ebx, 3
	lea	edx, [edx+eax*4]
	je	.L664
.L668:
	vmovd	DWORD PTR [edx], xmm1
	test	edi, edi
	je	.L664
	vmovd	DWORD PTR [edx+4], xmm1
	cmp	edi, 1
	je	.L664
	vmovd	DWORD PTR [edx+8], xmm1
.L664:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	mov	eax, ecx
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
.L689:
	.cfi_restore_state
	vzeroupper
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
.L670:
	.cfi_restore_state
	mov	edx, ecx
	xor	eax, eax
	jmp	.L665
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp+8], ecx
	jnb	.L691
	test	edx, edx
	je	.L788
	lea	eax, [edx-1]
	cmp	eax, 2
	jbe	.L700
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, ecx
	lea	esi, [edi-2+edx]
	sub	ebx, esi
	lea	edi, [ebx+14+eax]
	cmp	edi, 14
	jbe	.L700
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [ecx+edx]
	mov	DWORD PTR [esp+24], ebx
	add	esi, edx
	mov	DWORD PTR [esp+28], esi
	cmp	eax, 14
	jbe	.L711
	mov	eax, DWORD PTR [ebp+8]
	lea	ebx, [edx-16]
	mov	edi, edx
	and	edi, -16
	add	eax, ebx
	add	ebx, ecx
	mov	esi, eax
	sub	esi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L695:
	vmovdqu	xmm2, XMMWORD PTR [eax]
	sub	eax, 16
	sub	ebx, 16
	vmovdqu	XMMWORD PTR [ebx+16], xmm2
	cmp	esi, eax
	jne	.L695
	mov	eax, edx
	sub	DWORD PTR [esp+24], edi
	sub	DWORD PTR [esp+28], edi
	sub	eax, edi
	cmp	edx, edi
	je	.L788
	lea	ebx, [eax-1]
	mov	edx, eax
	cmp	ebx, 2
	jbe	.L697
.L694:
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [edx-4]
	mov	edi, edx
	shr	edi, 2
	add	esi, ebx
	add	ebx, ecx
	mov	ecx, DWORD PTR [esi]
	mov	DWORD PTR [ebx], ecx
	cmp	edi, 1
	je	.L698
	mov	ecx, DWORD PTR [esi-4]
	mov	DWORD PTR [ebx-4], ecx
	cmp	edi, 2
	je	.L698
	mov	edi, DWORD PTR [esi-8]
	mov	DWORD PTR [ebx-8], edi
.L698:
	mov	ebx, edx
	and	ebx, -4
	sub	DWORD PTR [esp+24], ebx
	sub	DWORD PTR [esp+28], ebx
	sub	eax, ebx
	and	edx, 3
	je	.L788
.L697:
	mov	esi, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+24]
	movzx	edx, BYTE PTR [esi-1]
	mov	BYTE PTR [ecx-1], dl
	cmp	eax, 1
	je	.L788
	movzx	ebx, BYTE PTR [esi-2]
	mov	BYTE PTR [ecx-2], bl
	cmp	eax, 2
	je	.L788
	movzx	eax, BYTE PTR [esi-3]
	mov	BYTE PTR [ecx-3], al
.L788:
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
.L691:
	.cfi_restore_state
	je	.L788
	test	edx, edx
	je	.L788
	lea	eax, [edx-1]
	cmp	eax, 14
	jbe	.L790
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, ecx
	lea	edi, [esi+1]
	sub	ebx, edi
	cmp	ebx, 30
	jbe	.L702
	cmp	eax, 30
	jbe	.L712
	mov	esi, edx
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, ecx
	and	esi, -32
	mov	edi, esi
	add	edi, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L704:
	vmovdqu	ymm0, YMMWORD PTR [eax]
	add	eax, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	eax, edi
	jne	.L704
	mov	edi, edx
	mov	DWORD PTR [esp+28], eax
	lea	ebx, [ecx+esi]
	sub	edi, esi
	cmp	edx, esi
	je	.L786
	lea	eax, [edi-1]
	mov	edx, edi
	cmp	eax, 14
	jbe	.L791
	vzeroupper
.L703:
	mov	eax, DWORD PTR [ebp+8]
	vmovdqu	xmm1, XMMWORD PTR [eax+esi]
	vmovdqu	XMMWORD PTR [ecx+esi], xmm1
	mov	ecx, edx
	and	ecx, -16
	add	DWORD PTR [esp+28], ecx
	add	ebx, ecx
	sub	edi, ecx
	and	edx, 15
	je	.L788
.L707:
	mov	esi, DWORD PTR [esp+28]
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [ebx], dl
	cmp	edi, 1
	je	.L788
	movzx	eax, BYTE PTR [esi+1]
	mov	BYTE PTR [ebx+1], al
	cmp	edi, 2
	je	.L788
	movzx	ecx, BYTE PTR [esi+2]
	mov	BYTE PTR [ebx+2], cl
	cmp	edi, 3
	je	.L788
	movzx	edx, BYTE PTR [esi+3]
	mov	BYTE PTR [ebx+3], dl
	cmp	edi, 4
	je	.L788
	movzx	eax, BYTE PTR [esi+4]
	mov	BYTE PTR [ebx+4], al
	cmp	edi, 5
	je	.L788
	movzx	ecx, BYTE PTR [esi+5]
	mov	BYTE PTR [ebx+5], cl
	cmp	edi, 6
	je	.L788
	movzx	edx, BYTE PTR [esi+6]
	mov	BYTE PTR [ebx+6], dl
	cmp	edi, 7
	je	.L788
	movzx	eax, BYTE PTR [esi+7]
	mov	BYTE PTR [ebx+7], al
	cmp	edi, 8
	je	.L788
	movzx	ecx, BYTE PTR [esi+8]
	mov	BYTE PTR [ebx+8], cl
	cmp	edi, 9
	je	.L788
	movzx	edx, BYTE PTR [esi+9]
	mov	BYTE PTR [ebx+9], dl
	cmp	edi, 10
	je	.L788
	movzx	eax, BYTE PTR [esi+10]
	mov	BYTE PTR [ebx+10], al
	cmp	edi, 11
	je	.L788
	movzx	ecx, BYTE PTR [esi+11]
	mov	BYTE PTR [ebx+11], cl
	cmp	edi, 12
	je	.L788
	movzx	edx, BYTE PTR [esi+12]
	mov	BYTE PTR [ebx+12], dl
	cmp	edi, 13
	je	.L788
	movzx	eax, BYTE PTR [esi+13]
	mov	BYTE PTR [ebx+13], al
	cmp	edi, 14
	je	.L788
	movzx	ecx, BYTE PTR [esi+14]
	mov	BYTE PTR [ebx+14], cl
	jmp	.L788
	.p2align 4,,10
	.p2align 3
.L700:
	mov	edi, DWORD PTR [ebp+8]
	jmp	.L785
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L792:
	sub	eax, 1
.L785:
	movzx	ebx, BYTE PTR [edi-1+edx]
	mov	BYTE PTR [ecx-1+edx], bl
	mov	edx, eax
	test	eax, eax
	jne	.L792
	jmp	.L788
.L790:
	mov	ebx, DWORD PTR [ebp+8]
	lea	edi, [ebx+1]
.L702:
	mov	ebx, DWORD PTR [ebp+8]
	add	ebx, edx
	jmp	.L709
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L793:
	add	edi, 1
.L709:
	movzx	edx, BYTE PTR [edi-1]
	add	ecx, 1
	mov	BYTE PTR [ecx-1], dl
	cmp	edi, ebx
	jne	.L793
	jmp	.L788
.L791:
	vzeroupper
	jmp	.L707
.L711:
	mov	eax, edx
	jmp	.L694
.L712:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, ecx
	mov	edi, edx
	xor	esi, esi
	mov	DWORD PTR [esp+28], eax
	jmp	.L703
.L786:
	vzeroupper
	jmp	.L788
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
	je	.L796
	mov	edx, eax
	xor	eax, eax
.L796:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L797
	mov	esi, edi
	xor	edi, edi
.L797:
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
	je	.L800
	mov	eax, edx
	xor	edx, edx
.L800:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L801
	mov	edi, esi
	xor	esi, esi
.L801:
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
	jmp	.L816
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L814:
	cmp	ecx, 32
	je	.L818
.L816:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L814
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L818:
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
	je	.L819
	mov	edx, eax
	and	edx, 1
	jne	.L819
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L821:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L821
.L819:
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
	ja	.L829
	fld	DWORD PTR .LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L826
	.p2align 4,,10
	.p2align 3
.L829:
	fstp	st(0)
.L826:
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
	ja	.L833
	fld	QWORD PTR .LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L830
	.p2align 4,,10
	.p2align 3
.L833:
	fstp	st(0)
.L830:
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
	ja	.L837
	fld	TBYTE PTR .LC9
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L834
	.p2align 4,,10
	.p2align 3
.L837:
	fstp	st(0)
.L834:
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
	jp	.L840
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L847
	jne	.L847
	jmp	.L840
	.p2align 4,,10
	.p2align 3
.L855:
	fstp	st(0)
.L840:
	ret
	.p2align 4,,10
	.p2align 3
.L847:
	fld	DWORD PTR .LC10
	test	eax, eax
	jns	.L842
	fstp	st(0)
	fld	DWORD PTR .LC11
.L842:
	test	al, 1
	je	.L843
	.p2align 4
	.p2align 3
.L844:
	fmul	st(1), st
.L843:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L855
	fmul	st, st(0)
	test	al, 1
	jne	.L844
.L854:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L844
	jmp	.L854
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
	jp	.L857
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L864
	jne	.L864
	jmp	.L857
	.p2align 4,,10
	.p2align 3
.L873:
	fstp	st(0)
.L857:
	ret
	.p2align 4,,10
	.p2align 3
.L864:
	test	eax, eax
	js	.L871
	fld	DWORD PTR .LC10
.L859:
	test	al, 1
	je	.L860
	.p2align 4
	.p2align 3
.L861:
	fmul	st(1), st
.L860:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L873
	fmul	st, st(0)
	test	al, 1
	jne	.L861
.L872:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L861
	jmp	.L872
	.p2align 4,,10
	.p2align 3
.L871:
	fld	DWORD PTR .LC11
	jmp	.L859
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
	jp	.L875
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L882
	jne	.L882
	jmp	.L875
	.p2align 4,,10
	.p2align 3
.L891:
	fstp	st(0)
.L875:
	ret
	.p2align 4,,10
	.p2align 3
.L882:
	test	eax, eax
	js	.L889
	fld	DWORD PTR .LC10
.L877:
	test	al, 1
	je	.L878
	.p2align 4
	.p2align 3
.L879:
	fmul	st(1), st
.L878:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L891
	fmul	st, st(0)
	test	al, 1
	jne	.L879
.L890:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L879
	jmp	.L890
	.p2align 4,,10
	.p2align 3
.L889:
	fld	DWORD PTR .LC11
	jmp	.L877
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
	je	.L893
	lea	eax, [ecx-1]
	cmp	eax, 30
	jbe	.L899
	mov	esi, ecx
	mov	ebx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	and	esi, -32
	mov	eax, esi
	add	eax, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L895:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	vxorps	ymm1, ymm0, YMMWORD PTR [ebx]
	add	ebx, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm1
	cmp	eax, ebx
	jne	.L895
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, ecx
	sub	ebx, esi
	add	edx, esi
	cmp	ecx, esi
	je	.L951
	vzeroupper
.L894:
	sub	ecx, esi
	lea	edi, [ecx-1]
	cmp	edi, 14
	jbe	.L897
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
	je	.L893
.L897:
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [edx], cl
	cmp	ebx, 1
	je	.L893
	movzx	ecx, BYTE PTR [eax+1]
	xor	BYTE PTR [edx+1], cl
	cmp	ebx, 2
	je	.L893
	movzx	ecx, BYTE PTR [eax+2]
	xor	BYTE PTR [edx+2], cl
	cmp	ebx, 3
	je	.L893
	movzx	ecx, BYTE PTR [eax+3]
	xor	BYTE PTR [edx+3], cl
	cmp	ebx, 4
	je	.L893
	movzx	ecx, BYTE PTR [eax+4]
	xor	BYTE PTR [edx+4], cl
	cmp	ebx, 5
	je	.L893
	movzx	ecx, BYTE PTR [eax+5]
	xor	BYTE PTR [edx+5], cl
	cmp	ebx, 6
	je	.L893
	movzx	ecx, BYTE PTR [eax+6]
	xor	BYTE PTR [edx+6], cl
	cmp	ebx, 7
	je	.L893
	movzx	ecx, BYTE PTR [eax+7]
	xor	BYTE PTR [edx+7], cl
	cmp	ebx, 8
	je	.L893
	movzx	ecx, BYTE PTR [eax+8]
	xor	BYTE PTR [edx+8], cl
	cmp	ebx, 9
	je	.L893
	movzx	ecx, BYTE PTR [eax+9]
	xor	BYTE PTR [edx+9], cl
	cmp	ebx, 10
	je	.L893
	movzx	ecx, BYTE PTR [eax+10]
	xor	BYTE PTR [edx+10], cl
	cmp	ebx, 11
	je	.L893
	movzx	ecx, BYTE PTR [eax+11]
	xor	BYTE PTR [edx+11], cl
	cmp	ebx, 12
	je	.L893
	movzx	ecx, BYTE PTR [eax+12]
	xor	BYTE PTR [edx+12], cl
	cmp	ebx, 13
	je	.L893
	movzx	ecx, BYTE PTR [eax+13]
	xor	BYTE PTR [edx+13], cl
	cmp	ebx, 14
	je	.L893
	movzx	eax, BYTE PTR [eax+14]
	xor	BYTE PTR [edx+14], al
.L893:
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
.L899:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ebx, ecx
	xor	esi, esi
	jmp	.L894
.L951:
	vzeroupper
	jmp	.L893
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
	je	.L953
	.p2align 3
	.p2align 4
	.p2align 3
.L954:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L954
.L953:
	test	edx, edx
	jne	.L955
	jmp	.L956
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L957:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L956
.L955:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L957
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
.L956:
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
	je	.L967
.L968:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L970
.L967:
	ret
	.p2align 4,,10
	.p2align 3
.L970:
	add	eax, 1
	cmp	edx, eax
	jne	.L968
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
	je	.L981
.L977:
	mov	eax, DWORD PTR [esp+12]
	jmp	.L980
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L979:
	add	eax, 1
	cmp	dl, cl
	je	.L978
.L980:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L979
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L977
.L981:
	xor	ebx, ebx
.L978:
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
.L987:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	.L987
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
	je	.L1002
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
.L992:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L992
	mov	esi, edx
	sub	eax, ebp
	je	.L990
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	.L1012
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1015:
	add	edx, 1
	test	cl, cl
	je	.L1014
.L1012:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	.L1015
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	.L994
	.p2align 4,,10
	.p2align 3
.L1016:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L995
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L995
.L994:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	.L1016
.L995:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	.L1002
	add	edx, 1
	jmp	.L1012
	.p2align 4,,10
	.p2align 3
.L1014:
	xor	esi, esi
.L990:
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
.L1002:
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
	ja	.L1027
	fxch	st(2)
	fcomi	st, st(2)
	jbe	.L1028
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L1020
	jmp	.L1021
	.p2align 4,,10
	.p2align 3
.L1028:
	fstp	st(1)
	fstp	st(1)
.L1021:
	ret
	.p2align 4,,10
	.p2align 3
.L1027:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L1021
.L1020:
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
	je	.L1029
	cmp	esi, DWORD PTR [esp+32]
	jb	.L1040
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L1040
	movzx	ebp, BYTE PTR [edi]
	jmp	.L1035
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1039:
	mov	edx, ebx
.L1031:
	cmp	esi, edx
	jb	.L1040
.L1035:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	.L1039
	cmp	DWORD PTR [esp+32], 1
	je	.L1029
.L1034:
	mov	eax, 1
	jmp	.L1032
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1033:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	.L1029
.L1032:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L1033
	cmp	esi, ebx
	jb	.L1040
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L1031
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	.L1034
	.p2align 4,,10
	.p2align 3
.L1040:
	xor	edx, edx
.L1029:
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
	je	.L1051
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
.L1051:
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
	ja	.L1080
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	.L1081
	fstp	st(0)
.L1059:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1066:
	fld	DWORD PTR .LC11
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	.L1066
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	.L1056
.L1083:
	fchs
.L1056:
	ret
	.p2align 4,,10
	.p2align 3
.L1081:
	fld	DWORD PTR .LC11
	fcomip	st, st(2)
	jbe	.L1084
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L1072
	jne	.L1072
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1084:
	fstp	st(0)
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1085:
	fstp	st(0)
.L1062:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1080:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	.L1082
	fstp	st(1)
	mov	edx, 1
	jmp	.L1059
	.p2align 4,,10
	.p2align 3
.L1082:
	fld	DWORD PTR .LC13
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	.L1085
	fstp	st(1)
	mov	edx, 1
.L1060:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1068:
	fadd	st, st(0)
	fld	DWORD PTR .LC11
	sub	eax, 1
	fcomip	st, st(1)
	ja	.L1068
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	.L1083
	ret
.L1072:
	xor	edx, edx
	jmp	.L1060
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
	je	.L1089
	vpxor	xmm2, xmm2, xmm2
	.p2align 6
	.p2align 4
	.p2align 3
.L1088:
	vmovdqa	xmm4, XMMWORD PTR .LC15
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
	jne	.L1088
	ret
	.p2align 4,,10
	.p2align 3
.L1089:
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
	jnb	.L1115
	mov	ecx, 1
	jmp	.L1092
	.p2align 4,,10
	.p2align 3
.L1095:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1094
	test	ecx, ecx
	je	.L1094
.L1092:
	test	edx, edx
	jns	.L1095
.L1096:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1098:
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
	jne	.L1098
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1097:
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
.L1094:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1096
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
.L1115:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1097
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
	je	.L1119
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
.L1119:
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
	je	.L1124
	test	edi, edi
	je	.L1126
	bsr	ebp, edi
	xor	ebp, 31
.L1127:
	lea	ecx, [ebp-1]
.L1124:
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
.L1126:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	.L1127
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
	je	.L1131
	.p2align 5
	.p2align 4
	.p2align 3
.L1133:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1133
.L1131:
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, edi
	mov	esi, edi
	and	eax, -8
	shr	esi, 3
	mov	DWORD PTR [esp+28], eax
	cmp	DWORD PTR [ebp+8], edx
	jb	.L1142
	lea	ecx, [edx+edi]
	cmp	ecx, DWORD PTR [ebp+8]
	jnb	.L1215
.L1142:
	test	esi, esi
	je	.L1216
	lea	eax, [esi-1]
	cmp	eax, 3
	jbe	.L1144
	mov	ecx, DWORD PTR [ebp+8]
	sub	ecx, edx
	sub	ecx, 4
	cmp	ecx, 24
	jbe	.L1144
	mov	ebx, edi
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, edx
	shr	ebx, 5
	mov	DWORD PTR [esp+24], ebx
	mov	ebx, edi
	and	ebx, -32
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1145:
	vmovdqu	ymm3, YMMWORD PTR [eax]
	add	eax, 32
	add	ecx, 32
	vmovdqu	YMMWORD PTR [ecx-32], ymm3
	cmp	ebx, eax
	jne	.L1145
	mov	eax, DWORD PTR [esp+24]
	lea	ecx, [0+eax*4]
	cmp	esi, ecx
	je	.L1148
	sal	eax, 5
	mov	ebx, DWORD PTR [ebp+8]
	vmovq	xmm4, QWORD PTR [edx+eax]
	vmovq	QWORD PTR [ebx+eax], xmm4
	lea	ebx, [ecx+1]
	cmp	ebx, esi
	jnb	.L1148
	vmovq	xmm5, QWORD PTR [edx+8+eax]
	mov	ebx, DWORD PTR [ebp+8]
	add	ecx, 2
	vmovq	QWORD PTR [ebx+8+eax], xmm5
	cmp	ecx, esi
	jnb	.L1148
	vmovq	xmm6, QWORD PTR [edx+16+eax]
	vmovq	QWORD PTR [ebx+16+eax], xmm6
.L1148:
	mov	ebx, DWORD PTR [esp+28]
	cmp	ebx, edi
	jnb	.L1212
	mov	ecx, edi
	sub	ecx, ebx
	lea	eax, [ecx-1]
	mov	DWORD PTR [esp+24], eax
	cmp	eax, 14
	jbe	.L1217
	mov	ebx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, ebx
	lea	esi, [edx+1+ebx]
	mov	ebx, eax
	sub	ebx, esi
	cmp	ebx, 30
	jbe	.L1196
	cmp	DWORD PTR [esp+24], 30
	jbe	.L1166
	mov	esi, DWORD PTR [esp+28]
	lea	ebx, [edx+esi]
	mov	esi, ecx
	and	esi, -32
	mov	DWORD PTR [esp+24], esi
	add	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1150:
	vmovdqu	ymm0, YMMWORD PTR [ebx]
	add	ebx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm0
	cmp	ebx, esi
	jne	.L1150
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+24]
	add	ebx, esi
	mov	eax, ebx
	cmp	ecx, esi
	je	.L1212
	sub	ecx, esi
	lea	esi, [ecx-1]
	cmp	esi, 14
	jbe	.L1152
.L1149:
	vmovdqu	xmm1, XMMWORD PTR [edx+ebx]
	mov	esi, DWORD PTR [ebp+8]
	vmovdqu	XMMWORD PTR [esi+ebx], xmm1
	mov	ebx, ecx
	and	ebx, -16
	add	eax, ebx
	and	ecx, 15
	je	.L1212
.L1152:
	movzx	ecx, BYTE PTR [edx+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [eax+1]
	mov	BYTE PTR [esi+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+1+eax]
	lea	ebx, [eax+2]
	mov	BYTE PTR [esi+1+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+2+eax]
	lea	ebx, [eax+3]
	mov	BYTE PTR [esi+2+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+3+eax]
	lea	ebx, [eax+4]
	mov	BYTE PTR [esi+3+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+4+eax]
	lea	ebx, [eax+5]
	mov	BYTE PTR [esi+4+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+5+eax]
	lea	ebx, [eax+6]
	mov	BYTE PTR [esi+5+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+6+eax]
	lea	ebx, [eax+7]
	mov	BYTE PTR [esi+6+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+7+eax]
	lea	ebx, [eax+8]
	mov	BYTE PTR [esi+7+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+8+eax]
	lea	ebx, [eax+9]
	mov	BYTE PTR [esi+8+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+9+eax]
	lea	ebx, [eax+10]
	mov	BYTE PTR [esi+9+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+10+eax]
	lea	ebx, [eax+11]
	mov	BYTE PTR [esi+10+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+11+eax]
	lea	ebx, [eax+12]
	mov	BYTE PTR [esi+11+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+12+eax]
	lea	ebx, [eax+13]
	mov	BYTE PTR [esi+12+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	ecx, BYTE PTR [edx+13+eax]
	lea	ebx, [eax+14]
	mov	BYTE PTR [esi+13+eax], cl
	cmp	ebx, edi
	jnb	.L1212
	movzx	edx, BYTE PTR [edx+14+eax]
	mov	BYTE PTR [esi+14+eax], dl
	vzeroupper
	jmp	.L1213
	.p2align 4,,10
	.p2align 3
.L1212:
	vzeroupper
.L1213:
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
.L1215:
	.cfi_restore_state
	lea	ebx, [edi-1]
	test	edi, edi
	je	.L1213
	cmp	ebx, 2
	jbe	.L1164
	mov	esi, DWORD PTR [ebp+8]
	lea	eax, [edx-2+edi]
	add	esi, ebx
	sub	esi, eax
	add	esi, 14
	cmp	esi, 14
	jbe	.L1164
	cmp	ebx, 14
	jbe	.L1157
	lea	ecx, [edi-16]
	mov	esi, edi
	lea	eax, [edx+ecx]
	add	ecx, DWORD PTR [ebp+8]
	and	esi, -16
	mov	DWORD PTR [esp+28], ecx
	mov	ecx, eax
	sub	ecx, esi
	mov	DWORD PTR [esp+24], esi
	mov	esi, ecx
	mov	ecx, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
.L1158:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	ecx, 16
	vmovdqu	XMMWORD PTR [ecx+16], xmm0
	cmp	eax, esi
	jne	.L1158
	mov	eax, DWORD PTR [esp+24]
	sub	ebx, eax
	cmp	edi, eax
	je	.L1213
	sub	edi, eax
	lea	esi, [edi-1]
	cmp	esi, 2
	jbe	.L1161
.L1157:
	lea	eax, [edi-4]
	mov	esi, edi
	lea	ecx, [edx+eax]
	shr	esi, 2
	add	eax, DWORD PTR [ebp+8]
	vmovd	xmm1, DWORD PTR [ecx]
	vmovd	DWORD PTR [eax], xmm1
	cmp	esi, 1
	je	.L1162
	vmovd	xmm2, DWORD PTR [ecx-4]
	vmovd	DWORD PTR [eax-4], xmm2
	cmp	esi, 2
	je	.L1162
	mov	esi, DWORD PTR [ecx-8]
	mov	DWORD PTR [eax-8], esi
.L1162:
	test	edi, 3
	je	.L1213
	and	edi, -4
	sub	ebx, edi
.L1161:
	movzx	eax, BYTE PTR [edx+ebx]
	mov	ecx, DWORD PTR [ebp+8]
	mov	BYTE PTR [ecx+ebx], al
	test	ebx, ebx
	je	.L1213
	movzx	eax, BYTE PTR [edx-1+ebx]
	mov	BYTE PTR [ecx-1+ebx], al
	cmp	ebx, 1
	je	.L1213
	movzx	edx, BYTE PTR [edx-2+ebx]
	mov	BYTE PTR [ecx-2+ebx], dl
	jmp	.L1213
.L1166:
	mov	eax, DWORD PTR [esp+28]
	mov	ebx, eax
	jmp	.L1149
	.p2align 4,,10
	.p2align 3
.L1144:
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, edx
	lea	esi, [edx+esi*8]
	.p2align 5
	.p2align 4
	.p2align 3
.L1147:
	vmovq	xmm7, QWORD PTR [eax]
	add	eax, 8
	add	ecx, 8
	vmovq	QWORD PTR [ecx-8], xmm7
	cmp	esi, eax
	jne	.L1147
	jmp	.L1148
	.p2align 4,,10
	.p2align 3
.L1216:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [esp+28]
	add	eax, ebx
	test	edi, edi
	je	.L1213
.L1140:
	mov	ecx, DWORD PTR [esp+28]
	add	ecx, edx
	add	edx, edi
	.p2align 4
	.p2align 4
	.p2align 3
.L1154:
	movzx	ebx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	.L1154
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
.L1196:
	.cfi_restore_state
	vzeroupper
	jmp	.L1140
.L1164:
	mov	esi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
.L1194:
	movzx	ecx, BYTE PTR [edx+ebx]
	mov	BYTE PTR [esi+ebx], cl
	sub	ebx, 1
	jnb	.L1194
	jmp	.L1213
.L1217:
	mov	eax, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [esp+28]
	add	eax, esi
	vzeroupper
	jmp	.L1140
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
	jb	.L1222
	mov	eax, DWORD PTR [ebp+16]
	add	eax, ecx
	cmp	eax, ebx
	jnb	.L1275
.L1222:
	test	esi, esi
	je	.L1221
	lea	eax, [esi-1]
	cmp	eax, 6
	jbe	.L1225
	lea	edi, [ecx+2]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 28
	jbe	.L1225
	cmp	eax, 14
	jbe	.L1243
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
.L1227:
	vmovdqu	ymm3, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm3
	cmp	eax, edi
	jne	.L1227
	mov	eax, DWORD PTR [esp+28]
	sal	eax, 4
	cmp	esi, eax
	je	.L1270
	mov	edx, esi
	sub	edx, eax
	lea	edi, [edx-1]
	cmp	edi, 6
	jbe	.L1276
	vzeroupper
.L1226:
	vmovdqu	xmm4, XMMWORD PTR [ecx+eax*2]
	mov	edi, edx
	and	edi, -8
	vmovdqu	XMMWORD PTR [ebx+eax*2], xmm4
	add	eax, edi
	and	edx, 7
	je	.L1221
.L1229:
	movzx	edi, WORD PTR [ecx+eax*2]
	lea	edx, [eax+eax]
	mov	WORD PTR [ebx+eax*2], di
	lea	edi, [eax+1]
	cmp	edi, esi
	jnb	.L1221
	movzx	edi, WORD PTR [ecx+2+edx]
	mov	WORD PTR [ebx+2+edx], di
	lea	edi, [eax+2]
	cmp	edi, esi
	jnb	.L1221
	movzx	edi, WORD PTR [ecx+4+edx]
	mov	WORD PTR [ebx+4+edx], di
	lea	edi, [eax+3]
	cmp	edi, esi
	jnb	.L1221
	movzx	edi, WORD PTR [ecx+6+edx]
	mov	WORD PTR [ebx+6+edx], di
	lea	edi, [eax+4]
	cmp	edi, esi
	jnb	.L1221
	movzx	edi, WORD PTR [ecx+8+edx]
	mov	WORD PTR [ebx+8+edx], di
	lea	edi, [eax+5]
	cmp	edi, esi
	jnb	.L1221
	movzx	edi, WORD PTR [ecx+10+edx]
	add	eax, 6
	mov	WORD PTR [ebx+10+edx], di
	cmp	eax, esi
	jnb	.L1221
	movzx	esi, WORD PTR [ecx+12+edx]
	mov	WORD PTR [ebx+12+edx], si
.L1221:
	test	BYTE PTR [ebp+16], 1
	je	.L1272
.L1277:
	mov	eax, DWORD PTR [ebp+16]
	movzx	edx, BYTE PTR [ecx-1+eax]
	mov	ecx, DWORD PTR [ebp+16]
	mov	BYTE PTR [ebx-1+ecx], dl
.L1272:
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
.L1275:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+16]
	lea	esi, [edx-1]
	test	edx, edx
	je	.L1272
	cmp	esi, 2
	jbe	.L1269
	mov	edi, edx
	lea	eax, [ebx+esi]
	lea	edx, [ecx-2+edx]
	sub	eax, edx
	add	eax, 14
	cmp	eax, 14
	jbe	.L1269
	cmp	esi, 14
	jbe	.L1235
	lea	edx, [edi-16]
	lea	edi, [edx+ebx]
	lea	eax, [ecx+edx]
	mov	DWORD PTR [esp+24], edi
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, eax
	and	edi, -16
	sub	edx, edi
	mov	DWORD PTR [esp+28], edi
	mov	edi, edx
	mov	edx, DWORD PTR [esp+24]
	.p2align 5
	.p2align 4
	.p2align 3
.L1236:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	vmovdqu	XMMWORD PTR [edx+16], xmm0
	cmp	edi, eax
	jne	.L1236
	mov	eax, DWORD PTR [esp+28]
	sub	esi, eax
	cmp	DWORD PTR [ebp+16], eax
	je	.L1272
	sub	DWORD PTR [ebp+16], eax
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 1
	cmp	edi, 2
	jbe	.L1238
.L1235:
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	sub	eax, 4
	shr	edi, 2
	lea	edx, [ecx+eax]
	add	eax, ebx
	vmovd	xmm1, DWORD PTR [edx]
	vmovd	DWORD PTR [eax], xmm1
	cmp	edi, 1
	je	.L1239
	vmovd	xmm2, DWORD PTR [edx-4]
	vmovd	DWORD PTR [eax-4], xmm2
	cmp	edi, 2
	je	.L1239
	mov	edi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], edi
.L1239:
	test	BYTE PTR [ebp+16], 3
	je	.L1272
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -4
	sub	esi, eax
.L1238:
	movzx	edx, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], dl
	test	esi, esi
	je	.L1272
	movzx	eax, BYTE PTR [ecx-1+esi]
	mov	BYTE PTR [ebx-1+esi], al
	cmp	esi, 1
	je	.L1272
	movzx	ecx, BYTE PTR [ecx-2+esi]
	mov	BYTE PTR [ebx-2+esi], cl
	jmp	.L1272
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1269:
	movzx	edx, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], dl
	sub	esi, 1
	jb	.L1272
	movzx	edx, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], dl
	sub	esi, 1
	jnb	.L1269
	jmp	.L1272
.L1243:
	mov	edx, esi
	xor	eax, eax
	jmp	.L1226
	.p2align 4,,10
	.p2align 3
.L1225:
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L1231:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	eax, esi
	jne	.L1231
	test	BYTE PTR [ebp+16], 1
	je	.L1272
	jmp	.L1277
.L1276:
	vzeroupper
	jmp	.L1229
.L1270:
	vzeroupper
	jmp	.L1221
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, edi
	mov	esi, edi
	and	eax, -4
	shr	esi, 2
	mov	DWORD PTR [esp+28], eax
	cmp	DWORD PTR [ebp+8], ecx
	jb	.L1283
	lea	edx, [ecx+edi]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	.L1363
.L1283:
	test	esi, esi
	je	.L1364
	lea	eax, [esi-1]
	cmp	eax, 2
	jbe	.L1285
	mov	edx, DWORD PTR [ebp+8]
	lea	ebx, [ecx+4]
	sub	edx, ebx
	cmp	edx, 24
	jbe	.L1285
	cmp	eax, 6
	jbe	.L1310
	mov	eax, edi
	mov	ebx, edi
	mov	edx, DWORD PTR [ebp+8]
	shr	eax, 5
	and	ebx, -32
	mov	DWORD PTR [esp+24], eax
	add	ebx, ecx
	mov	eax, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L1287:
	vmovdqu	ymm3, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm3
	cmp	ebx, eax
	jne	.L1287
	mov	eax, DWORD PTR [esp+24]
	sal	eax, 3
	mov	DWORD PTR [esp+24], eax
	cmp	esi, eax
	je	.L1292
	mov	edx, esi
	sub	edx, eax
	lea	ebx, [edx-1]
	cmp	ebx, 2
	jbe	.L1289
.L1286:
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu	xmm4, XMMWORD PTR [ecx+eax*4]
	vmovdqu	XMMWORD PTR [ebx+eax*4], xmm4
	mov	eax, edx
	and	eax, -4
	add	DWORD PTR [esp+24], eax
	and	edx, 3
	je	.L1292
.L1289:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+24]
	sal	edx, 2
	mov	ebx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [edx+eax*4], ebx
	add	eax, 1
	cmp	eax, esi
	jnb	.L1292
	mov	eax, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [ecx+4+eax]
	mov	DWORD PTR [edx+4+eax], ebx
	mov	eax, DWORD PTR [esp+24]
	add	eax, 2
	cmp	eax, esi
	jnb	.L1292
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [ecx+8+ebx]
	mov	DWORD PTR [edx+8+ebx], eax
.L1292:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, edi
	jnb	.L1360
	mov	esi, edi
	sub	esi, eax
	lea	edx, [esi-1]
	mov	DWORD PTR [esp+24], edx
	cmp	edx, 14
	jbe	.L1365
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	lea	ebx, [ecx+1+edx]
	mov	edx, eax
	sub	edx, ebx
	cmp	edx, 30
	jbe	.L1344
	cmp	DWORD PTR [esp+24], 30
	jbe	.L1311
	mov	ebx, DWORD PTR [esp+28]
	lea	edx, [ecx+ebx]
	mov	ebx, esi
	and	ebx, -32
	mov	DWORD PTR [esp+24], ebx
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1294:
	vmovdqu	ymm5, YMMWORD PTR [edx]
	add	edx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm5
	cmp	ebx, edx
	jne	.L1294
	mov	edx, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+24]
	add	edx, ebx
	mov	eax, edx
	cmp	esi, ebx
	je	.L1360
	sub	esi, ebx
	lea	ebx, [esi-1]
	cmp	ebx, 14
	jbe	.L1296
.L1293:
	vmovdqu	xmm6, XMMWORD PTR [ecx+edx]
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu	XMMWORD PTR [ebx+edx], xmm6
	mov	edx, esi
	and	edx, -16
	add	eax, edx
	and	esi, 15
	je	.L1360
.L1296:
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	BYTE PTR [esi+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+1+eax]
	lea	edx, [eax+2]
	mov	BYTE PTR [esi+1+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+2+eax]
	lea	edx, [eax+3]
	mov	BYTE PTR [esi+2+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+3+eax]
	lea	edx, [eax+4]
	mov	BYTE PTR [esi+3+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+4+eax]
	lea	edx, [eax+5]
	mov	BYTE PTR [esi+4+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+5+eax]
	lea	edx, [eax+6]
	mov	BYTE PTR [esi+5+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+6+eax]
	lea	edx, [eax+7]
	mov	BYTE PTR [esi+6+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+7+eax]
	lea	edx, [eax+8]
	mov	BYTE PTR [esi+7+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+8+eax]
	lea	edx, [eax+9]
	mov	BYTE PTR [esi+8+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+9+eax]
	lea	edx, [eax+10]
	mov	BYTE PTR [esi+9+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+10+eax]
	lea	edx, [eax+11]
	mov	BYTE PTR [esi+10+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+11+eax]
	lea	edx, [eax+12]
	mov	BYTE PTR [esi+11+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+12+eax]
	lea	edx, [eax+13]
	mov	BYTE PTR [esi+12+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ebx, BYTE PTR [ecx+13+eax]
	lea	edx, [eax+14]
	mov	BYTE PTR [esi+13+eax], bl
	cmp	edx, edi
	jnb	.L1360
	movzx	ecx, BYTE PTR [ecx+14+eax]
	mov	BYTE PTR [esi+14+eax], cl
	vzeroupper
	jmp	.L1361
	.p2align 4,,10
	.p2align 3
.L1363:
	lea	ebx, [edi-1]
	test	edi, edi
	je	.L1361
	cmp	ebx, 2
	jbe	.L1308
	mov	esi, DWORD PTR [ebp+8]
	lea	eax, [ecx-2+edi]
	add	esi, ebx
	sub	esi, eax
	add	esi, 14
	cmp	esi, 14
	jbe	.L1308
	cmp	ebx, 14
	jbe	.L1301
	lea	edx, [edi-16]
	mov	esi, edi
	lea	eax, [ecx+edx]
	add	edx, DWORD PTR [ebp+8]
	and	esi, -16
	mov	DWORD PTR [esp+28], edx
	mov	edx, eax
	sub	edx, esi
	mov	DWORD PTR [esp+24], esi
	mov	esi, edx
	mov	edx, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
.L1302:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	vmovdqu	XMMWORD PTR [edx+16], xmm0
	cmp	esi, eax
	jne	.L1302
	mov	eax, DWORD PTR [esp+24]
	sub	ebx, eax
	cmp	edi, eax
	je	.L1361
	sub	edi, eax
	lea	esi, [edi-1]
	cmp	esi, 2
	jbe	.L1305
.L1301:
	lea	eax, [edi-4]
	mov	esi, edi
	lea	edx, [ecx+eax]
	shr	esi, 2
	add	eax, DWORD PTR [ebp+8]
	vmovd	xmm1, DWORD PTR [edx]
	vmovd	DWORD PTR [eax], xmm1
	cmp	esi, 1
	je	.L1306
	vmovd	xmm2, DWORD PTR [edx-4]
	vmovd	DWORD PTR [eax-4], xmm2
	cmp	esi, 2
	je	.L1306
	mov	esi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], esi
.L1306:
	test	edi, 3
	je	.L1361
	and	edi, -4
	sub	ebx, edi
.L1305:
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	edx, DWORD PTR [ebp+8]
	mov	BYTE PTR [edx+ebx], al
	test	ebx, ebx
	je	.L1361
	movzx	eax, BYTE PTR [ecx-1+ebx]
	mov	BYTE PTR [edx-1+ebx], al
	cmp	ebx, 1
	je	.L1361
	movzx	ecx, BYTE PTR [ecx-2+ebx]
	mov	BYTE PTR [edx-2+ebx], cl
	jmp	.L1361
	.p2align 4,,10
	.p2align 3
.L1360:
	vzeroupper
.L1361:
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
.L1310:
	.cfi_restore_state
	mov	DWORD PTR [esp+24], 0
	mov	edx, esi
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1285:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, ecx
	lea	ebx, [ecx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L1291:
	mov	esi, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], esi
	cmp	eax, ebx
	jne	.L1291
	jmp	.L1292
	.p2align 4,,10
	.p2align 3
.L1364:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [esp+28]
	add	eax, ebx
	test	edi, edi
	je	.L1361
.L1281:
	mov	edx, DWORD PTR [esp+28]
	add	edx, ecx
	add	ecx, edi
	.p2align 4
	.p2align 4
	.p2align 3
.L1298:
	movzx	ebx, BYTE PTR [edx]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	.L1298
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
.L1344:
	.cfi_restore_state
	vzeroupper
	jmp	.L1281
.L1311:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, eax
	jmp	.L1293
.L1308:
	mov	esi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
.L1342:
	movzx	edx, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], dl
	sub	ebx, 1
	jnb	.L1342
	jmp	.L1361
.L1365:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [esp+28]
	add	eax, ebx
	vzeroupper
	jmp	.L1281
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
	jns	.L1372
	fld	DWORD PTR .LC16
	faddp	st(1), st
.L1372:
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
	jns	.L1375
	fld	DWORD PTR .LC16
	faddp	st(1), st
.L1375:
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
	jne	.L1381
	mov	eax, edx
	sar	eax, 14
	jne	.L1378
	mov	eax, edx
	shr	eax, 13
	jne	.L1382
	mov	eax, edx
	shr	eax, 12
	jne	.L1383
	mov	eax, edx
	shr	eax, 11
	jne	.L1384
	mov	eax, edx
	shr	eax, 10
	jne	.L1385
	mov	eax, edx
	shr	eax, 9
	jne	.L1386
	mov	eax, edx
	shr	eax, 8
	jne	.L1387
	mov	eax, edx
	shr	eax, 7
	jne	.L1388
	mov	eax, edx
	shr	eax, 6
	jne	.L1389
	mov	eax, edx
	shr	eax, 5
	jne	.L1390
	mov	eax, edx
	shr	eax, 4
	jne	.L1391
	mov	eax, edx
	shr	eax, 3
	jne	.L1392
	mov	eax, edx
	shr	eax, 2
	jne	.L1393
	shr	edx
	jne	.L1394
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1394:
	mov	eax, 14
.L1378:
	ret
.L1381:
	xor	eax, eax
	ret
.L1392:
	mov	eax, 12
	ret
.L1382:
	mov	eax, 2
	ret
.L1383:
	mov	eax, 3
	ret
.L1384:
	mov	eax, 4
	ret
.L1385:
	mov	eax, 5
	ret
.L1386:
	mov	eax, 6
	ret
.L1387:
	mov	eax, 7
	ret
.L1388:
	mov	eax, 8
	ret
.L1389:
	mov	eax, 9
	ret
.L1390:
	mov	eax, 10
	ret
.L1391:
	mov	eax, 11
	ret
.L1393:
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
	jne	.L1399
	test	al, 2
	jne	.L1400
	test	al, 4
	jne	.L1401
	test	al, 8
	jne	.L1402
	test	al, 16
	jne	.L1403
	test	al, 32
	jne	.L1404
	test	al, 64
	jne	.L1405
	test	al, -128
	jne	.L1406
	test	ah, 1
	jne	.L1407
	test	ah, 2
	jne	.L1408
	test	ah, 4
	jne	.L1409
	test	ah, 8
	jne	.L1410
	test	ah, 16
	jne	.L1411
	test	ah, 32
	jne	.L1412
	test	ah, 64
	jne	.L1413
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
.L1399:
	xor	eax, eax
	ret
.L1400:
	mov	eax, 1
	ret
.L1411:
	mov	eax, 12
	ret
.L1401:
	mov	eax, 2
	ret
.L1402:
	mov	eax, 3
	ret
.L1403:
	mov	eax, 4
	ret
.L1404:
	mov	eax, 5
	ret
.L1405:
	mov	eax, 6
	ret
.L1406:
	mov	eax, 7
	ret
.L1407:
	mov	eax, 8
	ret
.L1408:
	mov	eax, 9
	ret
.L1409:
	mov	eax, 10
	ret
.L1410:
	mov	eax, 11
	ret
.L1412:
	mov	eax, 13
	ret
.L1413:
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
	jnb	.L1422
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1422:
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
	je	.L1425
	.p2align 5
	.p2align 4
	.p2align 3
.L1427:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1427
.L1425:
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
	je	.L1431
	test	edx, edx
	je	.L1431
	.p2align 5
	.p2align 4
	.p2align 3
.L1433:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1433
.L1431:
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
	jnb	.L1463
	mov	ecx, 1
	jmp	.L1440
	.p2align 4,,10
	.p2align 3
.L1443:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1442
	test	ecx, ecx
	je	.L1442
.L1440:
	test	edx, edx
	jns	.L1443
.L1444:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1446:
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
	jne	.L1446
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1445:
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
.L1442:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1444
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
.L1463:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1445
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
	ja	.L1470
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1467
	.p2align 4,,10
	.p2align 3
.L1470:
	fstp	st(0)
	fstp	st(0)
.L1467:
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
	ja	.L1474
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L1471
	.p2align 4,,10
	.p2align 3
.L1474:
	fstp	st(0)
	fstp	st(0)
.L1471:
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
	js	.L1487
	je	.L1482
	xor	edi, edi
.L1479:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1481:
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
	jne	.L1481
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
.L1487:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L1479
	.p2align 4,,10
	.p2align 3
.L1482:
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
	jns	.L1489
	neg	ebx
	xor	eax, eax
	mov	edi, 1
.L1489:
	test	esi, esi
	jns	.L1490
	neg	esi
	mov	edi, eax
.L1490:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	.L1491
	jmp	.L1515
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1521:
	test	eax, eax
	je	.L1496
.L1491:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	.L1521
.L1496:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	.L1516
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1493:
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
	jne	.L1493
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
.L1494:
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
.L1516:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	.L1494
.L1515:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	.L1494
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
	jns	.L1523
	neg	ebx
	mov	esi, 1
.L1523:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	.L1524
	jmp	.L1548
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1552:
	test	edx, edx
	je	.L1544
.L1524:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	.L1552
	test	edx, edx
	je	.L1544
	.p2align 4
	.p2align 4
	.p2align 3
.L1526:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	.L1526
.L1527:
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
.L1544:
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
.L1548:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	.L1527
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
	jb	.L1554
	jmp	.L1622
	.p2align 4,,10
	.p2align 3
.L1557:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	.L1556
	test	ax, ax
	je	.L1556
	mov	ecx, eax
	mov	edx, ebx
.L1554:
	test	dx, dx
	jns	.L1557
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
	je	.L1623
.L1561:
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	je	.L1559
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
	jns	.L1559
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
.L1559:
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
.L1556:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	.L1559
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
	jmp	.L1561
.L1622:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	.L1559
.L1623:
	mov	WORD PTR [esp+2], ax
	jmp	.L1559
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
	jnb	.L1648
	mov	ecx, 1
	jmp	.L1625
	.p2align 4,,10
	.p2align 3
.L1628:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1627
	test	ecx, ecx
	je	.L1627
.L1625:
	test	edx, edx
	jns	.L1628
.L1629:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L1631:
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
	jne	.L1631
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
.L1630:
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
.L1627:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	.L1629
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
.L1648:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	.L1630
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
	je	.L1653
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
.L1653:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1656
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
.L1656:
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
	je	.L1659
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
.L1659:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1662
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
.L1662:
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
	jl	.L1668
	mov	eax, 2
	jg	.L1668
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1668
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1668:
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
	jl	.L1675
	mov	eax, 1
	jg	.L1675
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1675
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1675:
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
	je	.L1684
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
.L1684:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1687
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
.L1687:
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
	vmovdqa	xmm2, XMMWORD PTR .LC18
	vmovq	xmm0, QWORD PTR [esp+4]
	vmovdqa	xmm6, XMMWORD PTR .LC19
	vpsrlq	xmm1, xmm0, 1
	vpand	xmm3, xmm1, xmm2
	vpsubq	xmm4, xmm0, xmm3
	vpsrlq	xmm5, xmm4, 2
	vpand	xmm0, xmm4, xmm6
	vmovdqa	xmm4, XMMWORD PTR .LC20
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
	je	.L1699
	jmp	.L1701
	.p2align 4,,10
	.p2align 3
.L1706:
	fxch	st(1)
	jmp	.L1701
	.p2align 4,,10
	.p2align 3
.L1707:
	fxch	st(1)
.L1701:
	fmul	st, st(1)
.L1699:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1700
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1706
.L1705:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1707
	jmp	.L1705
	.p2align 4,,10
	.p2align 3
.L1700:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1698
	fld1
	fdivrp	st(1), st
.L1698:
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
	je	.L1709
	jmp	.L1711
	.p2align 4,,10
	.p2align 3
.L1716:
	fxch	st(1)
	jmp	.L1711
	.p2align 4,,10
	.p2align 3
.L1717:
	fxch	st(1)
.L1711:
	fmul	st, st(1)
.L1709:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1710
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1716
.L1715:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1717
	jmp	.L1715
	.p2align 4,,10
	.p2align 3
.L1710:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1708
	fld1
	fdivrp	st(1), st
.L1708:
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
	jb	.L1718
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1718
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1718
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1718:
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
	jb	.L1725
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1725
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1725
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1725:
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
