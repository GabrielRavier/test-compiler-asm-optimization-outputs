	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	_memmove
	.def	_memmove;	.scl	2;	.type	32;	.endef
_memmove:
LFB2:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	cmp	eax, edi
	jnb	L2
	test	ecx, ecx
	je	L3
	lea	edx, [ecx-1]
	cmp	edx, 2
	jbe	L67
	lea	esi, [eax-2+ecx]
	mov	ebx, edi
	sub	ebx, esi
	lea	esi, [ebx+14+edx]
	cmp	esi, 14
	jbe	L67
	lea	ebx, [eax+ecx]
	lea	esi, [edi+ecx]
	mov	DWORD PTR [esp+8], ebx
	mov	DWORD PTR [esp+12], esi
	cmp	edx, 14
	jbe	L23
	lea	ebx, [ecx-16]
	mov	esi, ecx
	lea	edx, [eax+ebx]
	add	ebx, edi
	and	esi, -16
	mov	DWORD PTR [esp+4], ebx
	mov	ebx, edx
	sub	ebx, esi
	mov	DWORD PTR [esp], esi
	mov	esi, ebx
	mov	ebx, DWORD PTR [esp+4]
	.p2align 5
	.p2align 4
	.p2align 3
L6:
	movdqu	xmm3, XMMWORD PTR [edx]
	sub	edx, 16
	sub	ebx, 16
	movups	XMMWORD PTR [ebx+16], xmm3
	cmp	esi, edx
	jne	L6
	mov	esi, DWORD PTR [esp]
	mov	edx, ecx
	sub	DWORD PTR [esp+8], esi
	sub	DWORD PTR [esp+12], esi
	sub	edx, esi
	cmp	ecx, esi
	je	L3
	lea	ebx, [edx-1]
	mov	ecx, edx
	cmp	ebx, 2
	jbe	L8
L5:
	lea	ebx, [ecx-4]
	mov	esi, ecx
	add	eax, ebx
	shr	esi, 2
	add	ebx, edi
	movd	xmm4, DWORD PTR [eax]
	movd	DWORD PTR [ebx], xmm4
	cmp	esi, 1
	je	L9
	movd	xmm5, DWORD PTR [eax-4]
	movd	DWORD PTR [ebx-4], xmm5
	cmp	esi, 2
	je	L9
	mov	eax, DWORD PTR [eax-8]
	mov	DWORD PTR [ebx-8], eax
L9:
	mov	esi, ecx
	and	esi, -4
	sub	DWORD PTR [esp+8], esi
	sub	DWORD PTR [esp+12], esi
	sub	edx, esi
	and	ecx, 3
	je	L3
L8:
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [ecx-1]
	mov	BYTE PTR [ebx-1], al
	cmp	edx, 1
	je	L3
	movzx	eax, BYTE PTR [ecx-2]
	mov	BYTE PTR [ebx-2], al
	cmp	edx, 2
	je	L3
	movzx	edx, BYTE PTR [ecx-3]
	mov	BYTE PTR [ebx-3], dl
L3:
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
L2:
	.cfi_restore_state
	cmp	edi, eax
	je	L3
	test	ecx, ecx
	je	L3
	lea	ebx, [ecx-1]
	lea	edx, [eax+1]
	cmp	ebx, 2
	jbe	L13
	mov	esi, edi
	sub	esi, edx
	cmp	esi, 14
	jbe	L13
	cmp	ebx, 14
	jbe	L24
	mov	ebx, ecx
	mov	esi, edi
	and	ebx, -16
	lea	edx, [eax+ebx]
	.p2align 5
	.p2align 4
	.p2align 3
L15:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	esi, 16
	movups	XMMWORD PTR [esi-16], xmm0
	cmp	edx, eax
	jne	L15
	lea	esi, [edi+ebx]
	mov	DWORD PTR [esp+8], edx
	mov	DWORD PTR [esp+12], esi
	mov	eax, esi
	mov	esi, ecx
	sub	esi, ebx
	cmp	ecx, ebx
	je	L3
	lea	ebx, [esi-1]
	mov	ecx, esi
	cmp	ebx, 2
	jbe	L18
L14:
	movd	xmm1, DWORD PTR [edx]
	mov	ebx, ecx
	shr	ebx, 2
	movd	DWORD PTR [eax], xmm1
	cmp	ebx, 1
	je	L19
	movd	xmm2, DWORD PTR [edx+4]
	movd	DWORD PTR [eax+4], xmm2
	cmp	ebx, 2
	je	L19
	mov	edx, DWORD PTR [edx+8]
	mov	DWORD PTR [eax+8], edx
L19:
	test	cl, 3
	je	L3
	and	ecx, -4
	add	DWORD PTR [esp+8], ecx
	add	DWORD PTR [esp+12], ecx
	sub	esi, ecx
L18:
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	movzx	ebx, BYTE PTR [eax]
	mov	BYTE PTR [ecx], bl
	cmp	esi, 1
	je	L3
	movzx	edx, BYTE PTR [eax+1]
	mov	BYTE PTR [ecx+1], dl
	cmp	esi, 2
	je	L3
	movzx	eax, BYTE PTR [eax+2]
	mov	BYTE PTR [ecx+2], al
	jmp	L3
	.p2align 5
	.p2align 4,,10
	.p2align 3
L72:
	sub	edx, 1
L67:
	movzx	ebx, BYTE PTR [eax-1+ecx]
	mov	BYTE PTR [edi-1+ecx], bl
	mov	ecx, edx
	test	edx, edx
	jne	L72
	jmp	L3
	.p2align 4,,10
	.p2align 3
L13:
	add	ecx, edi
	mov	esi, edi
	jmp	L21
	.p2align 5
	.p2align 4,,10
	.p2align 3
L73:
	add	edx, 1
L21:
	movzx	ebx, BYTE PTR [edx-1]
	add	esi, 1
	mov	BYTE PTR [esi-1], bl
	cmp	esi, ecx
	jne	L73
	jmp	L3
L23:
	mov	edx, ecx
	jmp	L5
L24:
	mov	DWORD PTR [esp+8], eax
	mov	edx, eax
	mov	esi, ecx
	mov	eax, edi
	mov	DWORD PTR [esp+12], edi
	jmp	L14
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	_memccpy
	.def	_memccpy;	.scl	2;	.type	32;	.endef
_memccpy:
LFB3:
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
	jne	L75
	jmp	L77
	.p2align 5
	.p2align 4,,10
	.p2align 3
L78:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	L77
L75:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	L78
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
L77:
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
LFE3:
	.p2align 4
	.globl	_memchr
	.def	_memchr;	.scl	2;	.type	32;	.endef
_memchr:
LFB4:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+8]
	movzx	ebx, BYTE PTR [esp+12]
	test	edx, edx
	jne	L87
	jmp	L90
	.p2align 4
	.p2align 4,,10
	.p2align 3
L89:
	add	eax, 1
	sub	edx, 1
	je	L90
L87:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L89
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L90:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	_memcmp
	.def	_memcmp;	.scl	2;	.type	32;	.endef
_memcmp:
LFB5:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	eax, eax
	jne	L96
	jmp	L95
	.p2align 5
	.p2align 4,,10
	.p2align 3
L98:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	L100
L96:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	L98
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L95:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L100:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	_memcpy
	.def	_memcpy;	.scl	2;	.type	32;	.endef
_memcpy:
LFB6:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+40]
	mov	ebx, DWORD PTR [esp+32]
	test	eax, eax
	je	L108
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L108:
	add	esp, 24
	.cfi_def_cfa_offset 8
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	_memrchr
	.def	_memrchr;	.scl	2;	.type	32;	.endef
_memrchr:
LFB7:
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
	jmp	L114
	.p2align 4
	.p2align 4,,10
	.p2align 3
L116:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	L113
L114:
	cmp	eax, ebx
	jne	L116
	xor	edx, edx
L113:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	_memset
	.def	_memset;	.scl	2;	.type	32;	.endef
_memset:
LFB8:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+40]
	mov	ebx, DWORD PTR [esp+32]
	test	eax, eax
	je	L121
	movzx	edx, BYTE PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memset
L121:
	add	esp, 24
	.cfi_def_cfa_offset 8
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	_stpcpy
	.def	_stpcpy;	.scl	2;	.type	32;	.endef
_stpcpy:
LFB9:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	je	L124
	.p2align 4
	.p2align 4
	.p2align 3
L125:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L125
L124:
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	_strchrnul
	.def	_strchrnul;	.scl	2;	.type	32;	.endef
_strchrnul:
LFB10:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [esp+8]
	movzx	eax, BYTE PTR [edx]
	test	al, al
	jne	L131
	jmp	L130
	.p2align 4
	.p2align 4,,10
	.p2align 3
L133:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	L130
L131:
	cmp	eax, ecx
	jne	L133
L130:
	mov	eax, edx
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	_strchr
	.def	_strchr;	.scl	2;	.type	32;	.endef
_strchr:
LFB11:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	jmp	L140
	.p2align 4
	.p2align 4,,10
	.p2align 3
L144:
	add	eax, 1
	test	cl, cl
	je	L143
L140:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L144
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L143:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	_strcmp
	.def	_strcmp;	.scl	2;	.type	32;	.endef
_strcmp:
LFB12:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [edx]
	movzx	ebx, BYTE PTR [ecx]
	cmp	al, bl
	je	L146
	jmp	L147
	.p2align 5
	.p2align 4,,10
	.p2align 3
L148:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	L147
L146:
	test	al, al
	jne	L148
	xor	eax, eax
L147:
	sub	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	_strlen
	.def	_strlen;	.scl	2;	.type	32;	.endef
_strlen:
LFB13:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	BYTE PTR [edx], 0
	je	L157
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
L156:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L156
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L157:
	xor	eax, eax
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	_strncmp
	.def	_strncmp;	.scl	2;	.type	32;	.endef
_strncmp:
LFB14:
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
	je	L159
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	L163
	jmp	L178
	.p2align 4,,10
	.p2align 3
L180:
	cmp	edx, ebp
	je	L162
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L179
	mov	edx, esi
L163:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	L180
L162:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
L159:
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
L179:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	L162
L178:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	L162
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	_swab
	.def	_swab;	.scl	2;	.type	32;	.endef
_swab:
LFB15:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+8]
	cmp	ecx, 1
	jle	L181
	mov	ebx, ecx
	lea	edx, [ecx-2]
	shr	ebx
	lea	eax, [ebx-1]
	mov	DWORD PTR [esp+12], eax
	cmp	edx, 13
	jbe	L189
	movdqa	xmm1, XMMWORD PTR LC0
	mov	esi, ecx
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, edi
	and	ecx, -16
	shr	esi, 4
	add	ecx, edi
	.p2align 5
	.p2align 4
	.p2align 3
L184:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	pshufb	xmm0, xmm1
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	eax, ecx
	jne	L184
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [0+esi*8]
	sal	esi, 4
	add	edx, esi
	add	esi, edi
	cmp	ebx, eax
	je	L181
L183:
	sub	ebx, eax
	cmp	DWORD PTR [esp+12], eax
	je	L186
	movdqa	xmm3, XMMWORD PTR LC1
	add	eax, eax
	mov	ecx, ebx
	add	edi, eax
	shr	ecx
	add	eax, DWORD PTR [ebp+12]
	movd	xmm2, DWORD PTR [edi]
	pshufb	xmm2, xmm3
	movd	DWORD PTR [eax], xmm2
	cmp	ecx, 1
	je	L187
	movd	xmm4, DWORD PTR [edi+4]
	pshufb	xmm4, xmm3
	movd	DWORD PTR [eax+4], xmm4
	cmp	ecx, 2
	je	L187
	movd	xmm5, DWORD PTR [edi+8]
	pshufb	xmm5, xmm3
	movd	DWORD PTR [eax+8], xmm5
L187:
	test	bl, 1
	je	L181
	and	ebx, -2
	add	ebx, ebx
	add	edx, ebx
	add	esi, ebx
L186:
	movbe	di, WORD PTR [esi]
	mov	WORD PTR [edx], di
L181:
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
L189:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+12]
	mov	esi, edi
	xor	eax, eax
	jmp	L183
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	_isalpha
	.def	_isalpha;	.scl	2;	.type	32;	.endef
_isalpha:
LFB16:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	dl
	movzx	eax, dl
	ret
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	_isascii
	.def	_isascii;	.scl	2;	.type	32;	.endef
_isascii:
LFB17:
	.cfi_startproc
	xor	eax, eax
	cmp	DWORD PTR [esp+4], 127
	setbe	al
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	_isblank
	.def	_isblank;	.scl	2;	.type	32;	.endef
_isblank:
LFB18:
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
LFE18:
	.p2align 4
	.globl	_iscntrl
	.def	_iscntrl;	.scl	2;	.type	32;	.endef
_iscntrl:
LFB19:
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
LFE19:
	.p2align 4
	.globl	_isdigit
	.def	_isdigit;	.scl	2;	.type	32;	.endef
_isdigit:
LFB20:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 48
	cmp	eax, 9
	setbe	dl
	movzx	eax, dl
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	_isgraph
	.def	_isgraph;	.scl	2;	.type	32;	.endef
_isgraph:
LFB21:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 33
	cmp	eax, 93
	setbe	dl
	movzx	eax, dl
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	_islower
	.def	_islower;	.scl	2;	.type	32;	.endef
_islower:
LFB22:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 97
	cmp	eax, 25
	setbe	dl
	movzx	eax, dl
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	_isprint
	.def	_isprint;	.scl	2;	.type	32;	.endef
_isprint:
LFB23:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 32
	cmp	eax, 94
	setbe	dl
	movzx	eax, dl
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	_isspace
	.def	_isspace;	.scl	2;	.type	32;	.endef
_isspace:
LFB24:
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
LFE24:
	.p2align 4
	.globl	_isupper
	.def	_isupper;	.scl	2;	.type	32;	.endef
_isupper:
LFB25:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 65
	cmp	eax, 25
	setbe	dl
	movzx	eax, dl
	ret
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	_iswcntrl
	.def	_iswcntrl;	.scl	2;	.type	32;	.endef
_iswcntrl:
LFB26:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	movzx	eax, dx
	lea	ecx, [eax-127]
	cmp	ecx, 32
	jbe	L213
	cmp	dx, 31
	jbe	L213
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L211
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L213:
	mov	edx, 1
L211:
	mov	eax, edx
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	_iswdigit
	.def	_iswdigit;	.scl	2;	.type	32;	.endef
_iswdigit:
LFB27:
	.cfi_startproc
	movzx	eax, WORD PTR [esp+4]
	sub	eax, 48
	cmp	eax, 9
	setbe	dl
	movzx	eax, dl
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	_iswprint
	.def	_iswprint;	.scl	2;	.type	32;	.endef
_iswprint:
LFB28:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	cmp	ax, 254
	jbe	L223
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L219
	cmp	ax, 8231
	jbe	L219
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L216
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L216
	not	eax
	xor	ecx, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	test	ax, -2
	setne	cl
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
L219:
	.cfi_restore_state
	mov	ecx, 1
L216:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L223:
	.cfi_restore_state
	add	eax, 1
	xor	ecx, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	and	eax, 127
	cmp	eax, 32
	setg	cl
	mov	eax, ecx
	ret
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	_iswxdigit
	.def	_iswxdigit;	.scl	2;	.type	32;	.endef
_iswxdigit:
LFB29:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, 1
	movzx	edx, ax
	sub	edx, 48
	cmp	edx, 9
	jbe	L224
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L224:
	mov	eax, ecx
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	_toascii
	.def	_toascii;	.scl	2;	.type	32;	.endef
_toascii:
LFB30:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	and	eax, 127
	ret
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	_fdim
	.def	_fdim;	.scl	2;	.type	32;	.endef
_fdim:
LFB31:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L236
	fxch	st(1)
	fucomi	st, st(0)
	jp	L232
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L235
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L235:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L228
	.p2align 4,,10
	.p2align 3
L236:
	fstp	st(1)
L228:
	ret
	.p2align 4,,10
	.p2align 3
L232:
	fstp	st(1)
	ret
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	_fdimf
	.def	_fdimf;	.scl	2;	.type	32;	.endef
_fdimf:
LFB32:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L245
	fxch	st(1)
	fucomi	st, st(0)
	jp	L241
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L244
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L244:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L237
	.p2align 4,,10
	.p2align 3
L245:
	fstp	st(1)
L237:
	ret
	.p2align 4,,10
	.p2align 3
L241:
	fstp	st(1)
	ret
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	_fmax
	.def	_fmax;	.scl	2;	.type	32;	.endef
_fmax:
LFB33:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L251
	fxch	st(1)
	fucomi	st, st(0)
	jp	L254
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
	je	L248
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L251:
	fstp	st(0)
	jmp	L246
	.p2align 4,,10
	.p2align 3
L254:
	fstp	st(0)
L246:
	ret
	.p2align 4,,10
	.p2align 3
L248:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	_fmaxf
	.def	_fmaxf;	.scl	2;	.type	32;	.endef
_fmaxf:
LFB34:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L260
	fxch	st(1)
	fucomi	st, st(0)
	jp	L263
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
	je	L257
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L260:
	fstp	st(0)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L263:
	fstp	st(0)
L255:
	ret
	.p2align 4,,10
	.p2align 3
L257:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	_fmaxl
	.def	_fmaxl;	.scl	2;	.type	32;	.endef
_fmaxl:
LFB35:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucomi	st, st(0)
	jp	L275
	fxch	st(1)
	fucomi	st, st(0)
	jp	L276
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
	jne	L274
	fcomi	st, st(1)
	jbe	L277
	fstp	st(1)
	jmp	L270
	.p2align 4,,10
	.p2align 3
L276:
	fstp	st(0)
	jmp	L270
	.p2align 4,,10
	.p2align 3
L277:
	fstp	st(0)
	jmp	L270
	.p2align 4,,10
	.p2align 3
L278:
	fstp	st(0)
L270:
	jmp	L264
	.p2align 4,,10
	.p2align 3
L275:
	fstp	st(0)
L264:
	ret
	.p2align 4,,10
	.p2align 3
L274:
	test	edx, edx
	je	L278
	fstp	st(1)
	ret
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	_fmin
	.def	_fmin;	.scl	2;	.type	32;	.endef
_fmin:
LFB36:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L287
	fxch	st(1)
	fucomi	st, st(0)
	jp	L285
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
	je	L281
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L285:
	fstp	st(0)
	jmp	L279
	.p2align 4,,10
	.p2align 3
L287:
	fstp	st(0)
L279:
	ret
	.p2align 4,,10
	.p2align 3
L281:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	_fminf
	.def	_fminf;	.scl	2;	.type	32;	.endef
_fminf:
LFB37:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L296
	fxch	st(1)
	fucomi	st, st(0)
	jp	L294
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
	je	L290
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L294:
	fstp	st(0)
	jmp	L288
	.p2align 4,,10
	.p2align 3
L296:
	fstp	st(0)
L288:
	ret
	.p2align 4,,10
	.p2align 3
L290:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	_fminl
	.def	_fminl;	.scl	2;	.type	32;	.endef
_fminl:
LFB38:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucomi	st, st(0)
	jp	L308
	fxch	st(1)
	fucomi	st, st(0)
	jp	L309
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
	jne	L307
	fcomi	st, st(1)
	jbe	L310
	fstp	st(0)
	jmp	L302
	.p2align 4,,10
	.p2align 3
L308:
	fstp	st(0)
	jmp	L302
	.p2align 4,,10
	.p2align 3
L310:
	fstp	st(1)
	jmp	L302
	.p2align 4,,10
	.p2align 3
L311:
	fstp	st(1)
L302:
	jmp	L297
	.p2align 4,,10
	.p2align 3
L309:
	fstp	st(0)
L297:
	ret
	.p2align 4,,10
	.p2align 3
L307:
	test	edx, edx
	je	L311
	fstp	st(0)
	ret
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	_l64a
	.def	_l64a;	.scl	2;	.type	32;	.endef
_l64a:
LFB39:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, OFFSET FLAT:_s.0
	test	eax, eax
	je	L313
	.p2align 5
	.p2align 4
	.p2align 3
L314:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L314
L313:
	mov	BYTE PTR [edx], 0
	mov	eax, OFFSET FLAT:_s.0
	ret
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	_srand
	.def	_srand;	.scl	2;	.type	32;	.endef
_srand:
LFB40:
	.cfi_startproc
	mov	DWORD PTR _seed+4, 0
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 1
	mov	DWORD PTR _seed, eax
	ret
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	_rand
	.def	_rand;	.scl	2;	.type	32;	.endef
_rand:
LFB41:
	.cfi_startproc
	mov	eax, DWORD PTR _seed
	imul	ecx, DWORD PTR _seed+4, 1284865837
	imul	edx, eax, 1481765933
	add	ecx, edx
	mov	edx, 1284865837
	mul	edx
	add	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR _seed, eax
	mov	eax, edx
	mov	DWORD PTR _seed+4, edx
	shr	eax
	ret
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	_insque
	.def	_insque;	.scl	2;	.type	32;	.endef
_insque:
LFB42:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	test	eax, eax
	je	L325
	movd	xmm0, DWORD PTR [eax]
	movd	xmm1, eax
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	L319
	mov	DWORD PTR [ecx+4], edx
L319:
	ret
	.p2align 4,,10
	.p2align 3
L325:
	mov	DWORD PTR [edx], 0
	mov	DWORD PTR [edx+4], 0
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	_remque
	.def	_remque;	.scl	2;	.type	32;	.endef
_remque:
LFB43:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L327
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L327:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L326
	mov	DWORD PTR [eax], edx
L326:
	ret
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	_lsearch
	.def	_lsearch;	.scl	2;	.type	32;	.endef
_lsearch:
LFB44:
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
	mov	eax, DWORD PTR [esp+72]
	mov	edi, DWORD PTR [esp+76]
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	L336
	mov	ebx, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+28], ecx
	xor	ebp, ebp
	mov	esi, ebx
	jmp	L338
	.p2align 4,,10
	.p2align 3
L353:
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	je	L352
L338:
	mov	edx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], esi
	mov	ebx, esi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L353
L335:
	add	esp, 44
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
L352:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L336:
	mov	ebp, DWORD PTR [esp+72]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	DWORD PTR [ebp+0], eax
	mov	ebx, ecx
	test	edi, edi
	je	L335
	mov	DWORD PTR [esp+8], edi
	mov	edi, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], ecx
	mov	DWORD PTR [esp+4], edi
	call	_memmove
	add	esp, 44
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
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	_lfind
	.def	_lfind;	.scl	2;	.type	32;	.endef
_lfind:
LFB45:
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
	mov	ebp, DWORD PTR [eax]
	test	ebp, ebp
	je	L355
	mov	edi, DWORD PTR [esp+52]
	xor	esi, esi
	jmp	L357
	.p2align 4,,10
	.p2align 3
L367:
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	je	L355
L357:
	mov	edx, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edi
	mov	ebx, edi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L367
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
L355:
	.cfi_restore_state
	add	esp, 28
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
LFE45:
	.p2align 4
	.globl	_abs
	.def	_abs;	.scl	2;	.type	32;	.endef
_abs:
LFB46:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	ret
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	_atoi
	.def	_atoi;	.scl	2;	.type	32;	.endef
_atoi:
LFB47:
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
	jbe	L392
	mov	edx, ecx
	jmp	L396
	.p2align 5
	.p2align 4,,10
	.p2align 3
L392:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L392
L396:
	cmp	dl, 32
	je	L392
	cmp	dl, 43
	je	L373
	cmp	dl, 45
	jne	L397
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L382
	mov	ebp, 1
L376:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L379:
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
	jbe	L379
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
L397:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	L376
L382:
	xor	eax, eax
L398:
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
L373:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L376
	xor	eax, eax
	jmp	L398
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	_atol
	.def	_atol;	.scl	2;	.type	32;	.endef
_atol:
LFB158:
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
	jbe	L420
	mov	edx, ecx
	jmp	L423
	.p2align 5
	.p2align 4,,10
	.p2align 3
L420:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L420
L423:
	cmp	dl, 32
	je	L420
	cmp	dl, 43
	je	L403
	cmp	dl, 45
	je	L424
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	L411
L405:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L408:
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
	jbe	L408
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
L424:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L405
L411:
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
L403:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L411
	xor	ebp, ebp
	jmp	L405
	.cfi_endproc
LFE158:
	.p2align 4
	.globl	_atoll
	.def	_atoll;	.scl	2;	.type	32;	.endef
_atoll:
LFB49:
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
	jbe	L448
	mov	edx, eax
	jmp	L453
	.p2align 5
	.p2align 4,,10
	.p2align 3
L448:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	esi, [eax-9]
	mov	edx, eax
	cmp	esi, 4
	jbe	L448
L453:
	cmp	dl, 32
	je	L448
	cmp	dl, 43
	je	L429
	cmp	dl, 45
	jne	L454
	movsx	ebp, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L438
	mov	esi, 1
L432:
	mov	DWORD PTR [esp+12], esi
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
L435:
	mov	ebp, ecx
	mov	edi, ebx
	sal	ebp, 2
	shld	edi, ecx, 2
	add	ecx, ebp
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
	jbe	L435
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	jne	L425
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
L425:
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
L454:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	esi, esi
	mov	eax, ecx
	cmp	ebx, 9
	jbe	L432
L438:
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
L429:
	.cfi_restore_state
	movsx	edi, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	xor	esi, esi
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	L432
	jmp	L438
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	_bsearch
	.def	_bsearch;	.scl	2;	.type	32;	.endef
_bsearch:
LFB50:
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
	mov	edi, DWORD PTR [esp+60]
	.p2align 4
	.p2align 3
L470:
	test	ebx, ebx
	je	L456
L471:
	mov	esi, ebx
	mov	eax, DWORD PTR [esp+48]
	shr	esi
	mov	ebp, esi
	mov	DWORD PTR [esp], eax
	imul	ebp, edi
	add	ebp, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], ebp
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	js	L460
	je	L455
	sub	ebx, 1
	lea	edx, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+52], edx
	test	ebx, ebx
	jne	L471
L456:
	xor	ebp, ebp
L455:
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
L460:
	.cfi_restore_state
	mov	ebx, esi
	jmp	L470
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	_bsearch_r
	.def	_bsearch_r;	.scl	2;	.type	32;	.endef
_bsearch_r:
LFB51:
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
	mov	edi, DWORD PTR [esp+60]
	test	ebp, ebp
	je	L477
	.p2align 4
	.p2align 3
L485:
	mov	esi, ebp
	mov	eax, DWORD PTR [esp+68]
	mov	edx, DWORD PTR [esp+48]
	sar	esi
	mov	ebx, esi
	mov	DWORD PTR [esp+8], eax
	imul	ebx, edi
	add	ebx, DWORD PTR [esp+52]
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [esp+4], ebx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	je	L472
	jle	L475
	lea	ebp, [ebp-1]
	lea	ecx, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+52], ecx
	jne	L485
L477:
	xor	ebx, ebx
L472:
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
L475:
	.cfi_restore_state
	test	esi, esi
	je	L477
	mov	ebp, esi
	jmp	L485
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	_div
	.def	_div;	.scl	2;	.type	32;	.endef
_div:
LFB52:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	_imaxabs
	.def	_imaxabs;	.scl	2;	.type	32;	.endef
_imaxabs:
LFB53:
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
LFE53:
	.p2align 4
	.globl	_imaxdiv
	.def	_imaxdiv;	.scl	2;	.type	32;	.endef
_imaxdiv:
LFB54:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 56
	.cfi_def_cfa_offset 64
	mov	eax, DWORD PTR [esp+68]
	mov	edx, DWORD PTR [esp+72]
	mov	ecx, DWORD PTR [esp+76]
	mov	ebx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+4], edx
	lea	edx, [esp+40]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+16], edx
	call	___divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+44]
	mov	ecx, DWORD PTR [esp+40]
	mov	DWORD PTR [ebx+12], eax
	mov	eax, ebx
	mov	DWORD PTR [ebx+8], ecx
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	_labs
	.def	_labs;	.scl	2;	.type	32;	.endef
_labs:
LFB154:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	ret
	.cfi_endproc
LFE154:
	.p2align 4
	.globl	_ldiv
	.def	_ldiv;	.scl	2;	.type	32;	.endef
_ldiv:
LFB56:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	_llabs
	.def	_llabs;	.scl	2;	.type	32;	.endef
_llabs:
LFB156:
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
LFE156:
	.p2align 4
	.globl	_lldiv
	.def	_lldiv;	.scl	2;	.type	32;	.endef
_lldiv:
LFB58:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 56
	.cfi_def_cfa_offset 64
	mov	eax, DWORD PTR [esp+68]
	mov	edx, DWORD PTR [esp+72]
	mov	ecx, DWORD PTR [esp+76]
	mov	ebx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+4], edx
	lea	edx, [esp+40]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+16], edx
	call	___divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+44]
	mov	ecx, DWORD PTR [esp+40]
	mov	DWORD PTR [ebx+12], eax
	mov	eax, ebx
	mov	DWORD PTR [ebx+8], ecx
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	_wcschr
	.def	_wcschr;	.scl	2;	.type	32;	.endef
_wcschr:
LFB59:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, WORD PTR [esp+8]
	movzx	edx, WORD PTR [eax]
	test	dx, dx
	jne	L501
	jmp	L504
	.p2align 5
	.p2align 4,,10
	.p2align 3
L503:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	test	dx, dx
	je	L504
L501:
	cmp	cx, dx
	jne	L503
	ret
	.p2align 4,,10
	.p2align 3
L504:
	xor	eax, eax
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	_wcscmp
	.def	_wcscmp;	.scl	2;	.type	32;	.endef
_wcscmp:
LFB60:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, WORD PTR [edx]
	movzx	ebx, WORD PTR [ecx]
	cmp	ax, bx
	je	L509
	jmp	L510
	.p2align 5
	.p2align 4,,10
	.p2align 3
L511:
	movzx	eax, WORD PTR [edx+2]
	movzx	ebx, WORD PTR [ecx+2]
	add	edx, 2
	add	ecx, 2
	cmp	ax, bx
	jne	L510
L509:
	test	ax, ax
	jne	L511
L510:
	mov	edx, -1
	cmp	ax, bx
	jb	L508
	xor	edx, edx
	cmp	bx, ax
	setb	dl
L508:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	_wcscpy
	.def	_wcscpy;	.scl	2;	.type	32;	.endef
_wcscpy:
LFB61:
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
L518:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L518
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	_wcslen
	.def	_wcslen;	.scl	2;	.type	32;	.endef
_wcslen:
LFB62:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	WORD PTR [edx], 0
	je	L524
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L523:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L523
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L524:
	xor	eax, eax
	ret
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	_wcsncmp
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
_wcsncmp:
LFB63:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	test	ecx, ecx
	jne	L527
	jmp	L533
	.p2align 4,,10
	.p2align 3
L541:
	test	bx, bx
	je	L531
	add	edx, 2
	add	eax, 2
	sub	ecx, 1
	je	L533
L527:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L541
L531:
	movzx	ebx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	jb	L542
	cmp	ax, bx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	setb	dl
	movzx	eax, dl
	ret
	.p2align 4,,10
	.p2align 3
L542:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L533:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	_wmemchr
	.def	_wmemchr;	.scl	2;	.type	32;	.endef
_wmemchr:
LFB64:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, WORD PTR [esp+8]
	test	edx, edx
	jne	L544
	jmp	L547
	.p2align 4
	.p2align 4,,10
	.p2align 3
L546:
	add	eax, 2
	sub	edx, 1
	je	L547
L544:
	cmp	WORD PTR [eax], cx
	jne	L546
	ret
	.p2align 4,,10
	.p2align 3
L547:
	xor	eax, eax
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	_wmemcmp
	.def	_wmemcmp;	.scl	2;	.type	32;	.endef
_wmemcmp:
LFB65:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	eax, eax
	jne	L552
	jmp	L551
	.p2align 5
	.p2align 4,,10
	.p2align 3
L554:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L557
L552:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L554
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L564
	cmp	ax, bx
	setb	dl
	movzx	eax, dl
L551:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L564:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L557:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	_wmemcpy
	.def	_wmemcpy;	.scl	2;	.type	32;	.endef
_wmemcpy:
LFB66:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+40]
	mov	ebx, DWORD PTR [esp+32]
	test	eax, eax
	je	L566
	mov	edx, DWORD PTR [esp+36]
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L566:
	add	esp, 24
	.cfi_def_cfa_offset 8
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	_wmemmove
	.def	_wmemmove;	.scl	2;	.type	32;	.endef
_wmemmove:
LFB67:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	esi, DWORD PTR [ebp+16]
	cmp	edi, ecx
	je	L611
	mov	edx, edi
	lea	ebx, [esi-1]
	lea	eax, [esi+esi]
	sub	edx, ecx
	mov	DWORD PTR [esp+12], ebx
	cmp	edx, eax
	jnb	L641
	test	esi, esi
	je	L611
	cmp	esi, 1
	je	L596
	mov	edx, edi
	sub	edx, ecx
	add	edx, 14
	cmp	edx, 12
	jbe	L584
	cmp	DWORD PTR [esp+12], 6
	jbe	L597
	sub	eax, 16
	lea	edx, [ecx+eax]
	add	eax, edi
	mov	DWORD PTR [esp+8], eax
	mov	eax, esi
	mov	ebx, edx
	shr	eax, 3
	sal	eax, 4
	sub	ebx, eax
	mov	eax, DWORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
L578:
	movdqu	xmm3, XMMWORD PTR [edx]
	sub	edx, 16
	sub	eax, 16
	movups	XMMWORD PTR [eax+16], xmm3
	cmp	ebx, edx
	jne	L578
	mov	eax, esi
	and	eax, -8
	sub	DWORD PTR [esp+12], eax
	test	esi, 7
	je	L611
	mov	edx, esi
	sub	edx, eax
	cmp	edx, 1
	je	L581
L577:
	sub	esi, eax
	mov	ebx, edx
	lea	eax, [esi-4+esi]
	shr	ebx
	lea	esi, [ecx+eax]
	add	eax, edi
	movd	xmm4, DWORD PTR [esi]
	movd	DWORD PTR [eax], xmm4
	cmp	ebx, 1
	je	L582
	movd	xmm5, DWORD PTR [esi-4]
	movd	DWORD PTR [eax-4], xmm5
	cmp	ebx, 2
	je	L582
	mov	ebx, DWORD PTR [esi-8]
	mov	DWORD PTR [eax-8], ebx
L582:
	test	dl, 1
	je	L611
	and	edx, -2
	sub	DWORD PTR [esp+12], edx
L581:
	mov	edx, DWORD PTR [esp+12]
	movzx	ecx, WORD PTR [ecx+edx*2]
	mov	WORD PTR [edi+edx*2], cx
L611:
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
L641:
	.cfi_restore_state
	test	esi, esi
	je	L611
	cmp	esi, 1
	je	L598
	lea	eax, [ecx+2]
	mov	ebx, edi
	sub	ebx, eax
	cmp	ebx, 12
	jbe	L586
	cmp	DWORD PTR [esp+12], 6
	jbe	L599
	mov	ebx, esi
	xor	eax, eax
	shr	ebx, 3
	.p2align 5
	.p2align 4
	.p2align 3
L588:
	mov	edx, eax
	add	eax, 1
	sal	edx, 4
	movdqu	xmm0, XMMWORD PTR [ecx+edx]
	movups	XMMWORD PTR [edi+edx], xmm0
	cmp	ebx, eax
	jne	L588
	mov	ebx, esi
	and	ebx, -8
	lea	eax, [ebx+ebx]
	lea	edx, [ecx+eax]
	mov	DWORD PTR [esp+12], edx
	lea	edx, [edi+eax]
	test	esi, 7
	je	L611
	sub	esi, ebx
	cmp	esi, 1
	je	L591
L587:
	add	ecx, eax
	mov	ebx, esi
	add	eax, edi
	movd	xmm1, DWORD PTR [ecx]
	shr	ebx
	movd	DWORD PTR [eax], xmm1
	cmp	ebx, 1
	je	L592
	movd	xmm2, DWORD PTR [ecx+4]
	movd	DWORD PTR [eax+4], xmm2
	cmp	ebx, 2
	je	L592
	mov	ecx, DWORD PTR [ecx+8]
	mov	DWORD PTR [eax+8], ecx
L592:
	test	esi, 1
	je	L611
	mov	eax, esi
	and	eax, -2
	add	eax, eax
	add	DWORD PTR [esp+12], eax
	add	edx, eax
L591:
	mov	esi, DWORD PTR [esp+12]
	mov	eax, edi
	movzx	ebx, WORD PTR [esi]
	mov	WORD PTR [edx], bx
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
L596:
	.cfi_restore_state
	mov	DWORD PTR [esp+12], 0
L584:
	mov	esi, DWORD PTR [esp+12]
	.p2align 4
	.p2align 4
	.p2align 3
L638:
	movzx	eax, WORD PTR [ecx+esi*2]
	mov	WORD PTR [edi+esi*2], ax
	sub	esi, 1
	jnb	L638
	jmp	L611
	.p2align 4,,10
	.p2align 3
L598:
	mov	DWORD PTR [esp+12], 0
	lea	eax, [ecx+2]
L586:
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, edi
	jmp	L594
	.p2align 5
	.p2align 4,,10
	.p2align 3
L642:
	add	eax, 2
L594:
	movzx	ecx, WORD PTR [eax-2]
	add	esi, 2
	mov	WORD PTR [esi-2], cx
	sub	ebx, 1
	jb	L611
	jmp	L642
L599:
	mov	DWORD PTR [esp+12], ecx
	mov	edx, edi
	xor	eax, eax
	jmp	L587
L597:
	mov	edx, esi
	xor	eax, eax
	jmp	L577
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	_wmemset
	.def	_wmemset;	.scl	2;	.type	32;	.endef
_wmemset:
LFB68:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	push	esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	edi, DWORD PTR [ebp+12]
	push	ebx
	.cfi_offset 3, -20
	test	eax, eax
	je	L644
	lea	esi, [eax-1]
	cmp	esi, 6
	jbe	L648
	mov	ebx, eax
	movd	xmm0, edi
	xor	eax, eax
	pshufb	xmm0, XMMWORD PTR LC4
	shr	ebx, 3
	.p2align 4
	.p2align 4
	.p2align 3
L646:
	mov	edx, eax
	add	eax, 1
	sal	edx, 4
	movups	XMMWORD PTR [ecx+edx], xmm0
	cmp	ebx, eax
	jne	L646
	mov	ebx, DWORD PTR [ebp+16]
	and	ebx, -8
	sub	esi, ebx
	lea	edx, [ecx+ebx*2]
	test	BYTE PTR [ebp+16], 7
	je	L644
L645:
	mov	WORD PTR [edx], di
	test	esi, esi
	je	L644
	mov	WORD PTR [edx+2], di
	cmp	esi, 1
	je	L644
	mov	WORD PTR [edx+4], di
	cmp	esi, 2
	je	L644
	mov	WORD PTR [edx+6], di
	cmp	esi, 3
	je	L644
	mov	WORD PTR [edx+8], di
	cmp	esi, 4
	je	L644
	mov	WORD PTR [edx+10], di
	cmp	esi, 5
	je	L644
	mov	WORD PTR [edx+12], di
L644:
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
L648:
	.cfi_restore_state
	mov	edx, ecx
	jmp	L645
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	_bcopy
	.def	_bcopy;	.scl	2;	.type	32;	.endef
_bcopy:
LFB69:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	cmp	eax, ecx
	jnb	L676
	test	edx, edx
	je	L675
	lea	ebx, [edx-1]
	cmp	ebx, 2
	jbe	L685
	lea	edi, [eax-2+edx]
	mov	esi, ecx
	sub	esi, edi
	lea	edi, [esi+14+ebx]
	cmp	edi, 14
	jbe	L685
	lea	esi, [eax+edx]
	lea	edi, [ecx+edx]
	mov	DWORD PTR [esp+12], esi
	mov	DWORD PTR [esp+8], edi
	cmp	ebx, 14
	jbe	L697
	lea	esi, [edx-16]
	lea	edi, [esi+ecx]
	lea	ebx, [eax+esi]
	mov	DWORD PTR [esp+4], edi
	mov	edi, edx
	mov	esi, ebx
	and	edi, -16
	sub	esi, edi
	mov	DWORD PTR [esp], edi
	mov	edi, esi
	mov	esi, DWORD PTR [esp+4]
	.p2align 5
	.p2align 4
	.p2align 3
L680:
	movdqu	xmm3, XMMWORD PTR [ebx]
	sub	ebx, 16
	sub	esi, 16
	movups	XMMWORD PTR [esi+16], xmm3
	cmp	edi, ebx
	jne	L680
	mov	edi, DWORD PTR [esp]
	mov	ebx, edx
	sub	DWORD PTR [esp+8], edi
	sub	DWORD PTR [esp+12], edi
	sub	ebx, edi
	cmp	edx, edi
	je	L675
	lea	esi, [ebx-1]
	mov	edx, ebx
	cmp	esi, 2
	jbe	L682
L679:
	lea	esi, [edx-4]
	mov	edi, edx
	add	eax, esi
	add	esi, ecx
	shr	edi, 2
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ecx
	cmp	edi, 1
	je	L683
	mov	ecx, DWORD PTR [eax-4]
	mov	DWORD PTR [esi-4], ecx
	cmp	edi, 2
	je	L683
	mov	eax, DWORD PTR [eax-8]
	mov	DWORD PTR [esi-8], eax
L683:
	mov	edi, edx
	and	edi, -4
	sub	DWORD PTR [esp+8], edi
	sub	DWORD PTR [esp+12], edi
	sub	ebx, edi
	and	edx, 3
	je	L675
L682:
	mov	esi, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+8]
	movzx	ecx, BYTE PTR [esi-1]
	mov	BYTE PTR [edx-1], cl
	cmp	ebx, 1
	je	L675
	movzx	eax, BYTE PTR [esi-2]
	mov	BYTE PTR [edx-2], al
	cmp	ebx, 2
	je	L675
	movzx	ebx, BYTE PTR [esi-3]
	mov	BYTE PTR [edx-3], bl
L675:
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
L676:
	.cfi_restore_state
	je	L675
	test	edx, edx
	je	L675
	lea	esi, [edx-1]
	lea	ebx, [eax+1]
	cmp	esi, 2
	jbe	L687
	mov	edi, ecx
	sub	edi, ebx
	cmp	edi, 14
	jbe	L687
	cmp	esi, 14
	jbe	L698
	mov	esi, edx
	mov	edi, ecx
	and	esi, -16
	lea	ebx, [eax+esi]
	.p2align 5
	.p2align 4
	.p2align 3
L689:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edi, 16
	movups	XMMWORD PTR [edi-16], xmm0
	cmp	ebx, eax
	jne	L689
	lea	eax, [ecx+esi]
	mov	edi, edx
	mov	DWORD PTR [esp+12], ebx
	mov	ecx, eax
	sub	edi, esi
	cmp	edx, esi
	je	L675
	lea	esi, [edi-1]
	mov	edx, edi
	cmp	esi, 2
	jbe	L692
L688:
	movd	xmm1, DWORD PTR [ebx]
	mov	esi, edx
	shr	esi, 2
	movd	DWORD PTR [eax], xmm1
	cmp	esi, 1
	je	L693
	movd	xmm2, DWORD PTR [ebx+4]
	movd	DWORD PTR [eax+4], xmm2
	cmp	esi, 2
	je	L693
	mov	ebx, DWORD PTR [ebx+8]
	mov	DWORD PTR [eax+8], ebx
L693:
	test	dl, 3
	je	L675
	and	edx, -4
	add	DWORD PTR [esp+12], edx
	add	ecx, edx
	sub	edi, edx
L692:
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	BYTE PTR [ecx], dl
	cmp	edi, 1
	je	L675
	movzx	ebx, BYTE PTR [eax+1]
	mov	BYTE PTR [ecx+1], bl
	cmp	edi, 2
	je	L675
	movzx	eax, BYTE PTR [eax+2]
	mov	BYTE PTR [ecx+2], al
	jmp	L675
	.p2align 4,,10
	.p2align 3
L685:
	mov	edi, ebx
	jmp	L741
	.p2align 5
	.p2align 4,,10
	.p2align 3
L743:
	sub	edi, 1
L741:
	movzx	ebx, BYTE PTR [eax-1+edx]
	mov	BYTE PTR [ecx-1+edx], bl
	mov	edx, edi
	test	edi, edi
	jne	L743
	jmp	L675
	.p2align 4,,10
	.p2align 3
L687:
	add	eax, edx
	jmp	L695
	.p2align 5
	.p2align 4,,10
	.p2align 3
L744:
	add	ebx, 1
L695:
	movzx	edx, BYTE PTR [ebx-1]
	add	ecx, 1
	mov	BYTE PTR [ecx-1], dl
	cmp	ebx, eax
	jne	L744
	jmp	L675
L697:
	mov	ebx, edx
	jmp	L679
L698:
	mov	DWORD PTR [esp+12], eax
	mov	ebx, eax
	mov	edi, edx
	mov	eax, ecx
	jmp	L688
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	_rotl64
	.def	_rotl64;	.scl	2;	.type	32;	.endef
_rotl64:
LFB70:
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
	je	L747
	mov	edx, eax
	xor	eax, eax
L747:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L748
	mov	esi, edi
	xor	edi, edi
L748:
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
LFE70:
	.p2align 4
	.globl	_rotr64
	.def	_rotr64;	.scl	2;	.type	32;	.endef
_rotr64:
LFB71:
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
	je	L751
	mov	eax, edx
	xor	edx, edx
L751:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L752
	mov	edi, esi
	xor	esi, esi
L752:
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
LFE71:
	.p2align 4
	.globl	_rotl32
	.def	_rotl32;	.scl	2;	.type	32;	.endef
_rotl32:
LFB72:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	_rotr32
	.def	_rotr32;	.scl	2;	.type	32;	.endef
_rotr32:
LFB73:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	_rotl_sz
	.def	_rotl_sz;	.scl	2;	.type	32;	.endef
_rotl_sz:
LFB160:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
LFE160:
	.p2align 4
	.globl	_rotr_sz
	.def	_rotr_sz;	.scl	2;	.type	32;	.endef
_rotr_sz:
LFB162:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
LFE162:
	.p2align 4
	.globl	_rotl16
	.def	_rotl16;	.scl	2;	.type	32;	.endef
_rotl16:
LFB76:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [esp+4]
	rol	ax, cl
	ret
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	_rotr16
	.def	_rotr16;	.scl	2;	.type	32;	.endef
_rotr16:
LFB77:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [esp+4]
	ror	ax, cl
	ret
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	_rotl8
	.def	_rotl8;	.scl	2;	.type	32;	.endef
_rotl8:
LFB78:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [esp+4]
	rol	al, cl
	ret
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	_rotr8
	.def	_rotr8;	.scl	2;	.type	32;	.endef
_rotr8:
LFB79:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [esp+4]
	ror	al, cl
	ret
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	_bswap_16
	.def	_bswap_16;	.scl	2;	.type	32;	.endef
_bswap_16:
LFB80:
	.cfi_startproc
	movbe	ax, WORD PTR [esp+4]
	ret
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	_bswap_32
	.def	_bswap_32;	.scl	2;	.type	32;	.endef
_bswap_32:
LFB81:
	.cfi_startproc
	movbe	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	_bswap_64
	.def	_bswap_64;	.scl	2;	.type	32;	.endef
_bswap_64:
LFB82:
	.cfi_startproc
	movbe	edx, DWORD PTR [esp+4]
	movbe	eax, DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	_ffs
	.def	_ffs;	.scl	2;	.type	32;	.endef
_ffs:
LFB83:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	xor	ecx, ecx
	jmp	L767
	.p2align 4
	.p2align 4,,10
	.p2align 3
L765:
	cmp	ecx, 32
	je	L769
L767:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	L765
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
L769:
	xor	eax, eax
	ret
	.cfi_endproc
LFE83:
	.p2align 4
	.globl	_libiberty_ffs
	.def	_libiberty_ffs;	.scl	2;	.type	32;	.endef
_libiberty_ffs:
LFB84:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	test	eax, eax
	je	L770
	mov	edx, eax
	and	edx, 1
	jne	L770
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L772:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L772
L770:
	mov	eax, edx
	ret
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	_gl_isinff
	.def	_gl_isinff;	.scl	2;	.type	32;	.endef
_gl_isinff:
LFB85:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR LC5
	mov	eax, 1
	fcomip	st, st(1)
	ja	L780
	fld	DWORD PTR LC6
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L777
	.p2align 4,,10
	.p2align 3
L780:
	fstp	st(0)
L777:
	ret
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	_gl_isinfd
	.def	_gl_isinfd;	.scl	2;	.type	32;	.endef
_gl_isinfd:
LFB86:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR LC7
	mov	eax, 1
	fcomip	st, st(1)
	ja	L784
	fld	QWORD PTR LC8
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L781
	.p2align 4,,10
	.p2align 3
L784:
	fstp	st(0)
L781:
	ret
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	_gl_isinfl
	.def	_gl_isinfl;	.scl	2;	.type	32;	.endef
_gl_isinfl:
LFB87:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	mov	eax, 1
	fld	TBYTE PTR LC9
	fcomip	st, st(1)
	ja	L788
	fld	TBYTE PTR LC10
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L785
	.p2align 4,,10
	.p2align 3
L788:
	fstp	st(0)
L785:
	ret
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	__Qp_itoq
	.def	__Qp_itoq;	.scl	2;	.type	32;	.endef
__Qp_itoq:
LFB88:
	.cfi_startproc
	fild	DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	fstp	TBYTE PTR [eax]
	ret
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	_ldexpf
	.def	_ldexpf;	.scl	2;	.type	32;	.endef
_ldexpf:
LFB89:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	fucomi	st, st(0)
	jp	L791
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L798
	jne	L798
	jmp	L791
	.p2align 4,,10
	.p2align 3
L806:
	fstp	st(0)
L791:
	ret
	.p2align 4,,10
	.p2align 3
L798:
	fld	DWORD PTR LC11
	test	eax, eax
	jns	L793
	fstp	st(0)
	fld	DWORD PTR LC12
L793:
	test	al, 1
	je	L794
	.p2align 4
	.p2align 3
L795:
	fmul	st(1), st
L794:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L806
	fmul	st, st(0)
	test	al, 1
	jne	L795
L805:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L795
	jmp	L805
	.cfi_endproc
LFE89:
	.p2align 4
	.globl	_ldexp
	.def	_ldexp;	.scl	2;	.type	32;	.endef
_ldexp:
LFB90:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+12]
	fucomi	st, st(0)
	jp	L808
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L815
	jne	L815
	jmp	L808
	.p2align 4,,10
	.p2align 3
L824:
	fstp	st(0)
L808:
	ret
	.p2align 4,,10
	.p2align 3
L815:
	test	eax, eax
	js	L822
	fld	DWORD PTR LC11
L810:
	test	al, 1
	je	L811
	.p2align 4
	.p2align 3
L812:
	fmul	st(1), st
L811:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L824
	fmul	st, st(0)
	test	al, 1
	jne	L812
L823:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L812
	jmp	L823
	.p2align 4,,10
	.p2align 3
L822:
	fld	DWORD PTR LC12
	jmp	L810
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	_ldexpl
	.def	_ldexpl;	.scl	2;	.type	32;	.endef
_ldexpl:
LFB91:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	mov	eax, DWORD PTR [esp+16]
	fucomi	st, st(0)
	jp	L826
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L833
	jne	L833
	jmp	L826
	.p2align 4,,10
	.p2align 3
L842:
	fstp	st(0)
L826:
	ret
	.p2align 4,,10
	.p2align 3
L833:
	test	eax, eax
	js	L840
	fld	DWORD PTR LC11
L828:
	test	al, 1
	je	L829
	.p2align 4
	.p2align 3
L830:
	fmul	st(1), st
L829:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L842
	fmul	st, st(0)
	test	al, 1
	jne	L830
L841:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L830
	jmp	L841
	.p2align 4,,10
	.p2align 3
L840:
	fld	DWORD PTR LC12
	jmp	L828
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	_memxor
	.def	_memxor;	.scl	2;	.type	32;	.endef
_memxor:
LFB92:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+12]
	test	ecx, ecx
	je	L844
	lea	eax, [ecx-1]
	cmp	eax, 14
	jbe	L851
	mov	edx, ecx
	mov	esi, DWORD PTR [ebp+8]
	mov	eax, ebx
	and	edx, -16
	lea	edi, [edx+ebx]
	.p2align 5
	.p2align 4
	.p2align 3
L846:
	movdqu	xmm1, XMMWORD PTR [esi]
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	esi, 16
	pxor	xmm0, xmm1
	movups	XMMWORD PTR [esi-16], xmm0
	cmp	eax, edi
	jne	L846
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, ecx
	sub	edi, edx
	mov	DWORD PTR [esp+12], edi
	add	esi, edx
	cmp	ecx, edx
	je	L844
L845:
	sub	ecx, edx
	lea	edi, [ecx-1]
	cmp	edi, 2
	jbe	L848
	add	ebx, edx
	add	edx, DWORD PTR [ebp+8]
	mov	edi, ecx
	movd	xmm2, DWORD PTR [edx]
	movd	xmm3, DWORD PTR [ebx]
	shr	edi, 2
	pxor	xmm2, xmm3
	movd	DWORD PTR [edx], xmm2
	cmp	edi, 1
	je	L849
	movd	xmm5, DWORD PTR [edx+4]
	movd	xmm4, DWORD PTR [ebx+4]
	pxor	xmm5, xmm4
	movd	DWORD PTR [edx+4], xmm5
	cmp	edi, 2
	je	L849
	movd	xmm7, DWORD PTR [edx+8]
	movd	xmm6, DWORD PTR [ebx+8]
	pxor	xmm7, xmm6
	movd	DWORD PTR [edx+8], xmm7
L849:
	mov	ebx, ecx
	and	ebx, -4
	sub	DWORD PTR [esp+12], ebx
	add	esi, ebx
	add	eax, ebx
	and	ecx, 3
	je	L844
L848:
	mov	edi, DWORD PTR [esp+12]
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [esi], cl
	cmp	edi, 1
	je	L844
	movzx	edx, BYTE PTR [eax+1]
	xor	BYTE PTR [esi+1], dl
	cmp	edi, 2
	je	L844
	movzx	eax, BYTE PTR [eax+2]
	xor	BYTE PTR [esi+2], al
L844:
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
L851:
	.cfi_restore_state
	mov	DWORD PTR [esp+12], ecx
	mov	esi, DWORD PTR [ebp+8]
	mov	eax, ebx
	xor	edx, edx
	jmp	L845
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	_strncat
	.def	_strncat;	.scl	2;	.type	32;	.endef
_strncat:
LFB93:
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
	je	L873
	.p2align 3
	.p2align 4
	.p2align 3
L874:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L874
L873:
	test	edx, edx
	jne	L875
	jmp	L876
	.p2align 5
	.p2align 4,,10
	.p2align 3
L877:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L876
L875:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L877
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
L876:
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
LFE93:
	.p2align 4
	.globl	_strnlen
	.def	_strnlen;	.scl	2;	.type	32;	.endef
_strnlen:
LFB94:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	xor	eax, eax
	test	edx, edx
	je	L887
L888:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L890
L887:
	ret
	.p2align 4,,10
	.p2align 3
L890:
	add	eax, 1
	cmp	edx, eax
	jne	L888
	ret
	.cfi_endproc
LFE94:
	.p2align 4
	.globl	_strpbrk
	.def	_strpbrk;	.scl	2;	.type	32;	.endef
_strpbrk:
LFB95:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	je	L901
L897:
	mov	eax, DWORD PTR [esp+12]
	jmp	L900
	.p2align 4
	.p2align 4,,10
	.p2align 3
L899:
	add	eax, 1
	cmp	dl, cl
	je	L898
L900:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L899
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L897
L901:
	xor	ebx, ebx
L898:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	_strrchr
	.def	_strrchr;	.scl	2;	.type	32;	.endef
_strrchr:
LFB96:
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
L907:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L907
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	_strstr
	.def	_strstr;	.scl	2;	.type	32;	.endef
_strstr:
LFB97:
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
	je	L922
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
L912:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L912
	mov	esi, edx
	sub	eax, ebp
	je	L910
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	L932
	.p2align 4
	.p2align 4,,10
	.p2align 3
L935:
	add	edx, 1
	test	cl, cl
	je	L934
L932:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	L935
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	L914
	.p2align 4,,10
	.p2align 3
L936:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	L915
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	L915
L914:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	L936
L915:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	L922
	add	edx, 1
	jmp	L932
	.p2align 4,,10
	.p2align 3
L934:
	xor	esi, esi
L910:
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
L922:
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
LFE97:
	.p2align 4
	.globl	_copysign
	.def	_copysign;	.scl	2;	.type	32;	.endef
_copysign:
LFB98:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	fldz
	fcomi	st, st(2)
	ja	L947
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L948
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L940
	jmp	L941
	.p2align 4,,10
	.p2align 3
L948:
	fstp	st(1)
	fstp	st(1)
L941:
	ret
	.p2align 4,,10
	.p2align 3
L947:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L941
L940:
	fchs
	ret
	.cfi_endproc
LFE98:
	.p2align 4
	.globl	_memmem
	.def	_memmem;	.scl	2;	.type	32;	.endef
_memmem:
LFB99:
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
	je	L949
	cmp	esi, DWORD PTR [esp+32]
	jb	L960
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	L960
	movzx	ebp, BYTE PTR [edi]
	jmp	L955
	.p2align 4
	.p2align 4,,10
	.p2align 3
L959:
	mov	edx, ebx
L951:
	cmp	esi, edx
	jb	L960
L955:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	L959
	cmp	DWORD PTR [esp+32], 1
	je	L949
L954:
	mov	eax, 1
	jmp	L952
	.p2align 5
	.p2align 4,,10
	.p2align 3
L953:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	L949
L952:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	L953
	cmp	esi, ebx
	jb	L960
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	L951
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	L954
	.p2align 4,,10
	.p2align 3
L960:
	xor	edx, edx
L949:
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
LFE99:
	.p2align 4
	.globl	_mempcpy
	.def	_mempcpy;	.scl	2;	.type	32;	.endef
_mempcpy:
LFB100:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 20
	.cfi_def_cfa_offset 32
	mov	esi, DWORD PTR [esp+40]
	mov	ebx, DWORD PTR [esp+32]
	test	esi, esi
	je	L971
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L971:
	add	esp, 20
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
LFE100:
	.p2align 4
	.globl	_frexp
	.def	_frexp;	.scl	2;	.type	32;	.endef
_frexp:
LFB101:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fldz
	fcomi	st, st(1)
	ja	L1000
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L1001
	fstp	st(0)
L979:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L986:
	fld	DWORD PTR LC12
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L986
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L976
L1003:
	fchs
L976:
	ret
	.p2align 4,,10
	.p2align 3
L1001:
	fld	DWORD PTR LC12
	fcomip	st, st(2)
	jbe	L1004
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L992
	jne	L992
	jmp	L982
	.p2align 4,,10
	.p2align 3
L1004:
	fstp	st(0)
	jmp	L982
	.p2align 4,,10
	.p2align 3
L1005:
	fstp	st(0)
L982:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L1000:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L1002
	fstp	st(1)
	mov	edx, 1
	jmp	L979
	.p2align 4,,10
	.p2align 3
L1002:
	fld	DWORD PTR LC14
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L1005
	fstp	st(1)
	mov	edx, 1
L980:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L988:
	fadd	st, st(0)
	fld	DWORD PTR LC12
	sub	eax, 1
	fcomip	st, st(1)
	ja	L988
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L1003
	ret
L992:
	xor	edx, edx
	jmp	L980
	.cfi_endproc
LFE101:
	.p2align 4
	.globl	___muldi3
	.def	___muldi3;	.scl	2;	.type	32;	.endef
___muldi3:
LFB102:
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
	je	L1006
	.p2align 6
	.p2align 4
	.p2align 3
L1008:
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
	jne	L1008
L1006:
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
LFE102:
	.p2align 4
	.globl	_udivmodsi4
	.def	_udivmodsi4;	.scl	2;	.type	32;	.endef
_udivmodsi4:
LFB103:
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
	jnb	L1036
	mov	ecx, 1
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1016:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1015
	test	ecx, ecx
	je	L1015
L1013:
	test	edx, edx
	jns	L1016
L1017:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1019:
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
	jne	L1019
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1018:
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
L1015:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1017
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
L1036:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1018
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	___clrsbqi2
	.def	___clrsbqi2;	.scl	2;	.type	32;	.endef
___clrsbqi2:
LFB104:
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
	je	L1040
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
L1040:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE104:
	.p2align 4
	.globl	___clrsbdi2
	.def	___clrsbdi2;	.scl	2;	.type	32;	.endef
___clrsbdi2:
LFB105:
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
	je	L1045
	test	edi, edi
	je	L1047
	bsr	ebp, edi
	xor	ebp, 31
L1048:
	lea	ecx, [ebp-1]
L1045:
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
L1047:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	L1048
	.cfi_endproc
LFE105:
	.p2align 4
	.globl	___mulsi3
	.def	___mulsi3;	.scl	2;	.type	32;	.endef
___mulsi3:
LFB106:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	xor	ebx, ebx
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	L1052
	.p2align 5
	.p2align 4
	.p2align 3
L1054:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1054
L1052:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	___cmovd
	.def	___cmovd;	.scl	2;	.type	32;	.endef
___cmovd:
LFB107:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+12]
	shr	esi, 3
	and	ecx, -8
	cmp	DWORD PTR [ebp+8], edi
	jb	L1062
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edi
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L1124
L1062:
	test	esi, esi
	je	L1061
	lea	ebx, [esi-1]
	cmp	ebx, 2
	jbe	L1065
	lea	edx, [edi+8]
	cmp	DWORD PTR [ebp+8], edx
	je	L1065
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+8]
	shr	eax, 4
	and	ebx, -16
	mov	DWORD PTR [esp+12], eax
	add	ebx, edi
	mov	eax, edi
	.p2align 5
	.p2align 4
	.p2align 3
L1066:
	movdqu	xmm1, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm1
	cmp	eax, ebx
	jne	L1066
	mov	edx, DWORD PTR [esp+12]
	lea	eax, [edx+edx]
	cmp	esi, eax
	je	L1061
	mov	eax, edx
	mov	edx, DWORD PTR [ebp+8]
	sal	eax, 4
	mov	ebx, DWORD PTR [edi+eax]
	mov	esi, DWORD PTR [edi+4+eax]
	mov	DWORD PTR [edx+eax], ebx
	mov	DWORD PTR [edx+4+eax], esi
L1061:
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	L1058
	mov	ebx, DWORD PTR [ebp+16]
	sub	ebx, ecx
	lea	eax, [ebx-1]
	mov	DWORD PTR [esp+12], eax
	cmp	eax, 2
	jbe	L1125
	mov	eax, DWORD PTR [ebp+8]
	lea	esi, [edi+1+ecx]
	add	eax, ecx
	mov	edx, eax
	sub	edx, esi
	cmp	edx, 14
	jbe	L1070
	cmp	DWORD PTR [esp+12], 14
	jbe	L1089
	mov	esi, ebx
	lea	edx, [edi+ecx]
	and	esi, -16
	mov	DWORD PTR [esp+12], esi
	add	esi, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1072:
	movdqu	xmm2, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm2
	cmp	edx, esi
	jne	L1072
	mov	edx, DWORD PTR [esp+12]
	add	ecx, edx
	mov	eax, ecx
	cmp	ebx, edx
	je	L1058
	sub	ebx, edx
	lea	esi, [ebx-1]
	cmp	esi, 2
	jbe	L1074
L1071:
	lea	edx, [edi+ecx]
	mov	esi, ebx
	add	ecx, DWORD PTR [ebp+8]
	movd	xmm3, DWORD PTR [edx]
	shr	esi, 2
	movd	DWORD PTR [ecx], xmm3
	cmp	esi, 1
	je	L1075
	movd	xmm4, DWORD PTR [edx+4]
	movd	DWORD PTR [ecx+4], xmm4
	cmp	esi, 2
	je	L1075
	mov	esi, DWORD PTR [edx+8]
	mov	DWORD PTR [ecx+8], esi
L1075:
	mov	ecx, ebx
	and	ecx, -4
	add	eax, ecx
	and	ebx, 3
	je	L1058
L1074:
	movzx	ebx, BYTE PTR [edi+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	BYTE PTR [esi+eax], bl
	cmp	edx, DWORD PTR [ebp+16]
	jnb	L1058
	movzx	ecx, BYTE PTR [edi+1+eax]
	lea	ebx, [eax+2]
	mov	BYTE PTR [esi+1+eax], cl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	L1058
	movzx	edx, BYTE PTR [edi+2+eax]
	mov	BYTE PTR [esi+2+eax], dl
L1058:
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
L1124:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+16]
	lea	ecx, [edx-1]
	test	edx, edx
	je	L1058
	cmp	ecx, 2
	jbe	L1087
	mov	esi, DWORD PTR [ebp+8]
	lea	eax, [edi-2+edx]
	mov	ebx, edx
	add	esi, ecx
	sub	esi, eax
	add	esi, 14
	cmp	esi, 14
	jbe	L1087
	cmp	ecx, 14
	jbe	L1080
	lea	edx, [edx-16]
	mov	esi, ebx
	lea	eax, [edi+edx]
	and	esi, -16
	add	edx, DWORD PTR [ebp+8]
	mov	ebx, eax
	sub	ebx, esi
	.p2align 5
	.p2align 4
	.p2align 3
L1081:
	movdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	movups	XMMWORD PTR [edx+16], xmm0
	cmp	eax, ebx
	jne	L1081
	sub	ecx, esi
	cmp	DWORD PTR [ebp+16], esi
	je	L1058
	sub	DWORD PTR [ebp+16], esi
	mov	edx, DWORD PTR [ebp+16]
	sub	edx, 1
	cmp	edx, 2
	jbe	L1084
L1080:
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+16]
	sub	eax, 4
	shr	ebx, 2
	lea	edx, [edi+eax]
	add	eax, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [edx]
	mov	DWORD PTR [eax], esi
	cmp	ebx, 1
	je	L1085
	mov	esi, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], esi
	cmp	ebx, 2
	je	L1085
	mov	ebx, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], ebx
L1085:
	test	BYTE PTR [ebp+16], 3
	je	L1058
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -4
	sub	ecx, eax
L1084:
	movzx	edx, BYTE PTR [edi+ecx]
	mov	esi, DWORD PTR [ebp+8]
	mov	BYTE PTR [esi+ecx], dl
	test	ecx, ecx
	je	L1058
	movzx	ebx, BYTE PTR [edi-1+ecx]
	mov	BYTE PTR [esi-1+ecx], bl
	cmp	ecx, 1
	je	L1058
	movzx	eax, BYTE PTR [edi-2+ecx]
	mov	BYTE PTR [esi-2+ecx], al
	jmp	L1058
L1089:
	mov	eax, ecx
	jmp	L1071
	.p2align 4,,10
	.p2align 3
L1125:
	mov	eax, DWORD PTR [ebp+8]
	add	eax, ecx
L1070:
	add	ecx, edi
	add	edi, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1077:
	movzx	ebx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edi
	jne	L1077
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
L1065:
	.cfi_restore_state
	mov	DWORD PTR [ebp+12], edi
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edi
	lea	ebx, [edi+esi*8]
	.p2align 5
	.p2align 4
	.p2align 3
L1068:
	mov	esi, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], esi
	mov	DWORD PTR [edx-4], edi
	cmp	ebx, eax
	jne	L1068
	mov	edi, DWORD PTR [ebp+12]
	jmp	L1061
L1087:
	mov	edx, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L1122:
	movzx	eax, BYTE PTR [edi+ecx]
	mov	BYTE PTR [edx+ecx], al
	sub	ecx, 1
	jnb	L1122
	jmp	L1058
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	___cmovh
	.def	___cmovh;	.scl	2;	.type	32;	.endef
___cmovh:
LFB108:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+12]
	mov	esi, ecx
	shr	esi
	cmp	DWORD PTR [ebp+8], ebx
	jb	L1130
	lea	eax, [ebx+ecx]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L1192
L1130:
	test	esi, esi
	je	L1129
	cmp	esi, 1
	je	L1133
	mov	eax, DWORD PTR [ebp+8]
	lea	edi, [ebx+2]
	sub	eax, edi
	cmp	eax, 12
	jbe	L1133
	lea	edx, [esi-1]
	cmp	edx, 6
	jbe	L1152
	mov	edi, ecx
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, ebx
	shr	edi, 4
	mov	DWORD PTR [esp+12], edi
	mov	edi, ecx
	and	edi, -16
	add	edi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1135:
	movdqu	xmm3, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm3
	cmp	eax, edi
	jne	L1135
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 3
	cmp	esi, eax
	je	L1129
	sub	esi, eax
	cmp	esi, 1
	je	L1137
L1134:
	mov	edx, esi
	shr	edx
	mov	DWORD PTR [esp+12], edx
	lea	edx, [eax+eax]
	lea	edi, [ebx+edx]
	add	edx, DWORD PTR [ebp+8]
	cmp	DWORD PTR [esp+12], 1
	movd	xmm4, DWORD PTR [edi]
	movd	DWORD PTR [edx], xmm4
	je	L1138
	movd	xmm5, DWORD PTR [edi+4]
	cmp	DWORD PTR [esp+12], 2
	movd	DWORD PTR [edx+4], xmm5
	je	L1138
	mov	edi, DWORD PTR [edi+8]
	mov	DWORD PTR [edx+8], edi
L1138:
	test	esi, 1
	je	L1129
	and	esi, -2
	add	eax, esi
L1137:
	movzx	esi, WORD PTR [ebx+eax*2]
	mov	edx, DWORD PTR [ebp+8]
	mov	WORD PTR [edx+eax*2], si
L1129:
	test	cl, 1
	je	L1126
L1193:
	movzx	eax, BYTE PTR [ebx-1+ecx]
	mov	ebx, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebx-1+ecx], al
L1126:
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
L1192:
	.cfi_restore_state
	lea	esi, [ecx-1]
	test	ecx, ecx
	je	L1126
	cmp	esi, 2
	jbe	L1150
	mov	edi, DWORD PTR [ebp+8]
	lea	edx, [ebx-2+ecx]
	add	edi, esi
	sub	edi, edx
	add	edi, 14
	cmp	edi, 14
	jbe	L1150
	cmp	esi, 14
	jbe	L1144
	lea	edi, [ecx-16]
	lea	eax, [ebx+edi]
	add	edi, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+8], edi
	mov	edi, ecx
	mov	edx, eax
	and	edi, -16
	sub	edx, edi
	mov	DWORD PTR [esp+12], edi
	mov	edi, edx
	mov	edx, DWORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
L1145:
	movdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	movups	XMMWORD PTR [edx+16], xmm0
	cmp	edi, eax
	jne	L1145
	mov	eax, DWORD PTR [esp+12]
	sub	esi, eax
	cmp	ecx, eax
	je	L1126
	sub	ecx, eax
	lea	edi, [ecx-1]
	cmp	edi, 2
	jbe	L1147
L1144:
	lea	eax, [ecx-4]
	mov	edi, ecx
	lea	edx, [ebx+eax]
	shr	edi, 2
	add	eax, DWORD PTR [ebp+8]
	movd	xmm1, DWORD PTR [edx]
	movd	DWORD PTR [eax], xmm1
	cmp	edi, 1
	je	L1148
	movd	xmm2, DWORD PTR [edx-4]
	movd	DWORD PTR [eax-4], xmm2
	cmp	edi, 2
	je	L1148
	mov	edi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], edi
L1148:
	test	cl, 3
	je	L1126
	and	ecx, -4
	sub	esi, ecx
L1147:
	movzx	eax, BYTE PTR [ebx+esi]
	mov	ecx, DWORD PTR [ebp+8]
	mov	BYTE PTR [ecx+esi], al
	test	esi, esi
	je	L1126
	movzx	edx, BYTE PTR [ebx-1+esi]
	mov	BYTE PTR [ecx-1+esi], dl
	cmp	esi, 1
	je	L1126
	movzx	eax, BYTE PTR [ebx-2+esi]
	mov	BYTE PTR [ecx-2+esi], al
	jmp	L1126
L1152:
	xor	eax, eax
	jmp	L1134
	.p2align 4,,10
	.p2align 3
L1133:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, ebx
	lea	esi, [ebx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
L1140:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	esi, eax
	jne	L1140
	test	cl, 1
	je	L1126
	jmp	L1193
L1150:
	mov	edi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L1190:
	movzx	edx, BYTE PTR [ebx+esi]
	mov	BYTE PTR [edi+esi], dl
	sub	esi, 1
	jnb	L1190
	jmp	L1126
	.cfi_endproc
LFE108:
	.p2align 4
	.globl	___cmovw
	.def	___cmovw;	.scl	2;	.type	32;	.endef
___cmovw:
LFB109:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+12]
	and	eax, -4
	shr	esi, 2
	mov	DWORD PTR [esp+12], eax
	cmp	DWORD PTR [ebp+8], ecx
	jb	L1199
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	cmp	edx, DWORD PTR [ebp+8]
	jnb	L1260
L1199:
	test	esi, esi
	je	L1261
	lea	edi, [esi-1]
	cmp	edi, 2
	jbe	L1201
	mov	eax, DWORD PTR [ebp+8]
	lea	ebx, [ecx+4]
	sub	eax, ebx
	cmp	eax, 8
	jbe	L1201
	mov	ebx, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, ecx
	mov	edx, DWORD PTR [ebp+8]
	and	ebx, -16
	shr	edi, 4
	add	ebx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1202:
	movdqu	xmm1, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm1
	cmp	eax, ebx
	jne	L1202
	lea	edx, [0+edi*4]
	cmp	esi, edx
	je	L1205
	mov	eax, edi
	mov	edi, DWORD PTR [ebp+8]
	sal	eax, 4
	mov	ebx, DWORD PTR [ecx+eax]
	mov	DWORD PTR [edi+eax], ebx
	lea	ebx, [edx+1]
	cmp	ebx, esi
	jnb	L1205
	mov	ebx, DWORD PTR [ecx+4+eax]
	add	edx, 2
	mov	DWORD PTR [edi+4+eax], ebx
	cmp	edx, esi
	jnb	L1205
	mov	esi, DWORD PTR [ecx+8+eax]
	mov	DWORD PTR [edi+8+eax], esi
L1205:
	mov	esi, DWORD PTR [esp+12]
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1194
	mov	ebx, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+8]
	sub	ebx, esi
	add	eax, esi
	lea	edx, [ebx-1]
	cmp	edx, 2
	jbe	L1197
	mov	eax, DWORD PTR [ebp+8]
	lea	edi, [ecx+1+esi]
	add	eax, esi
	mov	esi, eax
	sub	esi, edi
	cmp	esi, 14
	jbe	L1197
	cmp	edx, 14
	jbe	L1224
	mov	edi, DWORD PTR [esp+12]
	lea	edx, [ecx+edi]
	mov	edi, ebx
	and	edi, -16
	lea	esi, [edi+edx]
	.p2align 5
	.p2align 4
	.p2align 3
L1207:
	movdqu	xmm2, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm2
	cmp	edx, esi
	jne	L1207
	mov	edx, DWORD PTR [esp+12]
	add	edx, edi
	mov	eax, edx
	cmp	ebx, edi
	je	L1194
	sub	ebx, edi
	lea	edi, [ebx-1]
	cmp	edi, 2
	jbe	L1209
L1206:
	lea	esi, [ecx+edx]
	mov	edi, ebx
	add	edx, DWORD PTR [ebp+8]
	movd	xmm3, DWORD PTR [esi]
	shr	edi, 2
	movd	DWORD PTR [edx], xmm3
	cmp	edi, 1
	je	L1210
	movd	xmm4, DWORD PTR [esi+4]
	movd	DWORD PTR [edx+4], xmm4
	cmp	edi, 2
	je	L1210
	mov	edi, DWORD PTR [esi+8]
	mov	DWORD PTR [edx+8], edi
L1210:
	mov	edx, ebx
	and	edx, -4
	add	eax, edx
	and	ebx, 3
	je	L1194
L1209:
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	edi, [eax+1]
	mov	BYTE PTR [esi+eax], bl
	cmp	edi, DWORD PTR [ebp+16]
	jnb	L1194
	movzx	edx, BYTE PTR [ecx+1+eax]
	lea	ebx, [eax+2]
	mov	BYTE PTR [esi+1+eax], dl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	L1194
	movzx	edx, BYTE PTR [ecx+2+eax]
	mov	BYTE PTR [esi+2+eax], dl
L1194:
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
L1260:
	.cfi_restore_state
	mov	edi, DWORD PTR [ebp+16]
	lea	ebx, [edi-1]
	test	edi, edi
	je	L1194
	cmp	ebx, 2
	jbe	L1222
	mov	esi, DWORD PTR [ebp+8]
	lea	eax, [ecx-2+edi]
	add	esi, ebx
	sub	esi, eax
	add	esi, 14
	cmp	esi, 14
	jbe	L1222
	cmp	ebx, 14
	jbe	L1215
	lea	edx, [edi-16]
	and	edi, -16
	lea	eax, [ecx+edx]
	add	edx, DWORD PTR [ebp+8]
	mov	esi, eax
	sub	esi, edi
	.p2align 5
	.p2align 4
	.p2align 3
L1216:
	movdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	movups	XMMWORD PTR [edx+16], xmm0
	cmp	esi, eax
	jne	L1216
	sub	ebx, edi
	cmp	DWORD PTR [ebp+16], edi
	je	L1194
	sub	DWORD PTR [ebp+16], edi
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 1
	cmp	edi, 2
	jbe	L1219
L1215:
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	sub	eax, 4
	shr	esi, 2
	lea	edx, [ecx+eax]
	add	eax, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [edx]
	mov	DWORD PTR [eax], edi
	cmp	esi, 1
	je	L1220
	mov	edi, DWORD PTR [edx-4]
	mov	DWORD PTR [eax-4], edi
	cmp	esi, 2
	je	L1220
	mov	esi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], esi
L1220:
	test	BYTE PTR [ebp+16], 3
	je	L1194
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -4
	sub	ebx, eax
L1219:
	movzx	edx, BYTE PTR [ecx+ebx]
	mov	edi, DWORD PTR [ebp+8]
	mov	BYTE PTR [edi+ebx], dl
	test	ebx, ebx
	je	L1194
	movzx	eax, BYTE PTR [ecx-1+ebx]
	mov	BYTE PTR [edi-1+ebx], al
	cmp	ebx, 1
	je	L1194
	movzx	edx, BYTE PTR [ecx-2+ebx]
	mov	BYTE PTR [edi-2+ebx], dl
	jmp	L1194
L1224:
	mov	eax, DWORD PTR [esp+12]
	mov	edx, eax
	jmp	L1206
	.p2align 4,,10
	.p2align 3
L1201:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, ecx
	lea	edi, [ecx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L1204:
	mov	ebx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ebx
	cmp	edi, eax
	jne	L1204
	jmp	L1205
	.p2align 4,,10
	.p2align 3
L1261:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [ebp+16]
	add	eax, ebx
	test	edx, edx
	je	L1194
L1197:
	mov	esi, DWORD PTR [esp+12]
	add	esi, ecx
	add	ecx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1212:
	movzx	ebx, BYTE PTR [esi]
	add	esi, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	esi, ecx
	jne	L1212
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
L1222:
	.cfi_restore_state
	mov	esi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L1258:
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], al
	sub	ebx, 1
	jnb	L1258
	jmp	L1194
	.cfi_endproc
LFE109:
	.p2align 4
	.globl	___modi
	.def	___modi;	.scl	2;	.type	32;	.endef
___modi:
LFB110:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
LFE110:
	.p2align 4
	.globl	___uitod
	.def	___uitod;	.scl	2;	.type	32;	.endef
___uitod:
LFB111:
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
LFE111:
	.p2align 4
	.globl	___uitof
	.def	___uitof;	.scl	2;	.type	32;	.endef
___uitof:
LFB112:
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
LFE112:
	.p2align 4
	.globl	___ulltod
	.def	___ulltod;	.scl	2;	.type	32;	.endef
___ulltod:
LFB113:
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
	jns	L1268
	fld	DWORD PTR LC16
	faddp	st(1), st
L1268:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE113:
	.p2align 4
	.globl	___ulltof
	.def	___ulltof;	.scl	2;	.type	32;	.endef
___ulltof:
LFB114:
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
	jns	L1271
	fld	DWORD PTR LC16
	faddp	st(1), st
L1271:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE114:
	.p2align 4
	.globl	___umodi
	.def	___umodi;	.scl	2;	.type	32;	.endef
___umodi:
LFB115:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	div	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
LFE115:
	.p2align 4
	.globl	___clzhi2
	.def	___clzhi2;	.scl	2;	.type	32;	.endef
___clzhi2:
LFB116:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	movzx	edx, cx
	test	ch, -128
	jne	L1277
	mov	eax, edx
	sar	eax, 14
	jne	L1274
	mov	eax, edx
	shr	eax, 13
	jne	L1278
	mov	eax, edx
	shr	eax, 12
	jne	L1279
	mov	eax, edx
	shr	eax, 11
	jne	L1280
	mov	eax, edx
	shr	eax, 10
	jne	L1281
	mov	eax, edx
	shr	eax, 9
	jne	L1282
	mov	eax, edx
	shr	eax, 8
	jne	L1283
	mov	eax, edx
	shr	eax, 7
	jne	L1284
	mov	eax, edx
	shr	eax, 6
	jne	L1285
	mov	eax, edx
	shr	eax, 5
	jne	L1286
	mov	eax, edx
	shr	eax, 4
	jne	L1287
	mov	eax, edx
	shr	eax, 3
	jne	L1288
	mov	eax, edx
	shr	eax, 2
	jne	L1289
	shr	edx
	jne	L1290
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
L1290:
	mov	eax, 14
L1274:
	ret
L1277:
	xor	eax, eax
	ret
L1288:
	mov	eax, 12
	ret
L1278:
	mov	eax, 2
	ret
L1279:
	mov	eax, 3
	ret
L1280:
	mov	eax, 4
	ret
L1281:
	mov	eax, 5
	ret
L1282:
	mov	eax, 6
	ret
L1283:
	mov	eax, 7
	ret
L1284:
	mov	eax, 8
	ret
L1285:
	mov	eax, 9
	ret
L1286:
	mov	eax, 10
	ret
L1287:
	mov	eax, 11
	ret
L1289:
	mov	eax, 13
	ret
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	___ctzhi2
	.def	___ctzhi2;	.scl	2;	.type	32;	.endef
___ctzhi2:
LFB117:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	test	al, 1
	jne	L1295
	test	al, 2
	jne	L1296
	test	al, 4
	jne	L1297
	test	al, 8
	jne	L1298
	test	al, 16
	jne	L1299
	test	al, 32
	jne	L1300
	test	al, 64
	jne	L1301
	test	al, -128
	jne	L1302
	test	ah, 1
	jne	L1303
	test	ah, 2
	jne	L1304
	test	ah, 4
	jne	L1305
	test	ah, 8
	jne	L1306
	test	ah, 16
	jne	L1307
	test	ah, 32
	jne	L1308
	test	ah, 64
	jne	L1309
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
L1295:
	xor	eax, eax
	ret
L1296:
	mov	eax, 1
	ret
L1307:
	mov	eax, 12
	ret
L1297:
	mov	eax, 2
	ret
L1298:
	mov	eax, 3
	ret
L1299:
	mov	eax, 4
	ret
L1300:
	mov	eax, 5
	ret
L1301:
	mov	eax, 6
	ret
L1302:
	mov	eax, 7
	ret
L1303:
	mov	eax, 8
	ret
L1304:
	mov	eax, 9
	ret
L1305:
	mov	eax, 10
	ret
L1306:
	mov	eax, 11
	ret
L1308:
	mov	eax, 13
	ret
L1309:
	mov	eax, 14
	ret
	.cfi_endproc
LFE117:
	.p2align 4
	.globl	___fixunssfsi
	.def	___fixunssfsi;	.scl	2;	.type	32;	.endef
___fixunssfsi:
LFB118:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	fld	DWORD PTR LC17
	fld	DWORD PTR [esp+8]
	fcomi	st, st(1)
	jnb	L1318
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1318:
	.cfi_restore_state
	fsubrp	st(1), st
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_def_cfa_offset 4
	add	eax, 32768
	ret
	.cfi_endproc
LFE118:
	.p2align 4
	.globl	___parityhi2
	.def	___parityhi2;	.scl	2;	.type	32;	.endef
___parityhi2:
LFB119:
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
LFE119:
	.p2align 4
	.globl	___popcounthi2
	.def	___popcounthi2;	.scl	2;	.type	32;	.endef
___popcounthi2:
LFB120:
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
LFE120:
	.p2align 4
	.globl	___mulsi3_iq2000
	.def	___mulsi3_iq2000;	.scl	2;	.type	32;	.endef
___mulsi3_iq2000:
LFB168:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	xor	ebx, ebx
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	L1321
	.p2align 5
	.p2align 4
	.p2align 3
L1323:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1323
L1321:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE168:
	.p2align 4
	.globl	___mulsi3_lm32
	.def	___mulsi3_lm32;	.scl	2;	.type	32;	.endef
___mulsi3_lm32:
LFB122:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	xor	ebx, ebx
	mov	edx, DWORD PTR [esp+12]
	test	ecx, ecx
	je	L1327
	test	edx, edx
	je	L1327
	.p2align 5
	.p2align 4
	.p2align 3
L1329:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1329
L1327:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	___udivmodsi4
	.def	___udivmodsi4;	.scl	2;	.type	32;	.endef
___udivmodsi4:
LFB164:
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
	jnb	L1359
	mov	ecx, 1
	jmp	L1336
	.p2align 4,,10
	.p2align 3
L1339:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1338
	test	ecx, ecx
	je	L1338
L1336:
	test	edx, edx
	jns	L1339
L1340:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1342:
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
	jne	L1342
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1341:
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
L1338:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1340
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
L1359:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1341
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	___mspabi_cmpf
	.def	___mspabi_cmpf;	.scl	2;	.type	32;	.endef
___mspabi_cmpf:
LFB124:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+8]
	mov	eax, -1
	fcomi	st, st(1)
	ja	L1366
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1363
	.p2align 4,,10
	.p2align 3
L1366:
	fstp	st(0)
	fstp	st(0)
L1363:
	ret
	.cfi_endproc
LFE124:
	.p2align 4
	.globl	___mspabi_cmpd
	.def	___mspabi_cmpd;	.scl	2;	.type	32;	.endef
___mspabi_cmpd:
LFB125:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	mov	eax, -1
	fcomi	st, st(1)
	ja	L1370
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1367
	.p2align 4,,10
	.p2align 3
L1370:
	fstp	st(0)
	fstp	st(0)
L1367:
	ret
	.cfi_endproc
LFE125:
	.p2align 4
	.globl	___mspabi_mpysll
	.def	___mspabi_mpysll;	.scl	2;	.type	32;	.endef
___mspabi_mpysll:
LFB126:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	imul	DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE126:
	.p2align 4
	.globl	___mspabi_mpyull
	.def	___mspabi_mpyull;	.scl	2;	.type	32;	.endef
___mspabi_mpyull:
LFB127:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mul	DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE127:
	.p2align 4
	.globl	___mulhi3
	.def	___mulhi3;	.scl	2;	.type	32;	.endef
___mulhi3:
LFB128:
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
	js	L1383
	je	L1378
	xor	edi, edi
L1375:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L1377:
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
	jne	L1377
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
L1383:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L1375
	.p2align 4,,10
	.p2align 3
L1378:
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
LFE128:
	.p2align 4
	.globl	___divsi3
	.def	___divsi3;	.scl	2;	.type	32;	.endef
___divsi3:
LFB129:
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
	jns	L1385
	neg	ebx
	xor	eax, eax
	mov	edi, 1
L1385:
	test	esi, esi
	jns	L1386
	neg	esi
	mov	edi, eax
L1386:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	L1387
	jmp	L1411
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1417:
	test	eax, eax
	je	L1392
L1387:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	L1417
L1392:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	L1412
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
L1389:
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
	jne	L1389
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
L1390:
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
L1412:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	L1390
L1411:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	L1390
	.cfi_endproc
LFE129:
	.p2align 4
	.globl	___modsi3
	.def	___modsi3;	.scl	2;	.type	32;	.endef
___modsi3:
LFB130:
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
	jns	L1419
	neg	ebx
	mov	esi, 1
L1419:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	L1420
	jmp	L1444
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1448:
	test	edx, edx
	je	L1440
L1420:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	L1448
	test	edx, edx
	je	L1440
	.p2align 4
	.p2align 4
	.p2align 3
L1422:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L1422
L1423:
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
L1440:
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
L1444:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	L1423
	.cfi_endproc
LFE130:
	.p2align 4
	.globl	___udivmodhi4
	.def	___udivmodhi4;	.scl	2;	.type	32;	.endef
___udivmodhi4:
LFB131:
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
	jb	L1450
	jmp	L1518
	.p2align 4,,10
	.p2align 3
L1453:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	L1452
	test	ax, ax
	je	L1452
	mov	ecx, eax
	mov	edx, ebx
L1450:
	test	dx, dx
	jns	L1453
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
	je	L1519
L1457:
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	je	L1455
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
	jns	L1455
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
L1455:
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
L1452:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	L1455
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
	jmp	L1457
L1518:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	L1455
L1519:
	mov	WORD PTR [esp+2], ax
	jmp	L1455
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	___udivmodsi4_libgcc
	.def	___udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
___udivmodsi4_libgcc:
LFB166:
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
	jnb	L1544
	mov	ecx, 1
	jmp	L1521
	.p2align 4,,10
	.p2align 3
L1524:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1523
	test	ecx, ecx
	je	L1523
L1521:
	test	edx, edx
	jns	L1524
L1525:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1527:
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
	jne	L1527
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1526:
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
L1523:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1525
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
L1544:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1526
	.cfi_endproc
LFE166:
	.p2align 4
	.globl	___ashldi3
	.def	___ashldi3;	.scl	2;	.type	32;	.endef
___ashldi3:
LFB133:
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
	je	L1549
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
L1549:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1552
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
L1552:
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
LFE133:
	.p2align 4
	.globl	___ashrdi3
	.def	___ashrdi3;	.scl	2;	.type	32;	.endef
___ashrdi3:
LFB134:
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
	je	L1555
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
L1555:
	.cfi_restore_state
	test	ebx, ebx
	je	L1558
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
L1558:
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
LFE134:
	.p2align 4
	.globl	___bswapdi2
	.def	___bswapdi2;	.scl	2;	.type	32;	.endef
___bswapdi2:
LFB135:
	.cfi_startproc
	movbe	edx, DWORD PTR [esp+4]
	movbe	eax, DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	___bswapsi2
	.def	___bswapsi2;	.scl	2;	.type	32;	.endef
___bswapsi2:
LFB136:
	.cfi_startproc
	movbe	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	___clzsi2
	.def	___clzsi2;	.scl	2;	.type	32;	.endef
___clzsi2:
LFB137:
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
LFE137:
	.p2align 4
	.globl	___cmpdi2
	.def	___cmpdi2;	.scl	2;	.type	32;	.endef
___cmpdi2:
LFB138:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xor	eax, eax
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	L1564
	mov	eax, 2
	jg	L1564
	xor	eax, eax
	cmp	edx, ecx
	jb	L1564
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1564:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	___aeabi_lcmp
	.def	___aeabi_lcmp;	.scl	2;	.type	32;	.endef
___aeabi_lcmp:
LFB139:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, -1
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	L1571
	mov	eax, 1
	jg	L1571
	mov	eax, -1
	cmp	edx, ecx
	jb	L1571
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1571:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE139:
	.p2align 4
	.globl	___ctzsi2
	.def	___ctzsi2;	.scl	2;	.type	32;	.endef
___ctzsi2:
LFB140:
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
LFE140:
	.p2align 4
	.globl	___lshrdi3
	.def	___lshrdi3;	.scl	2;	.type	32;	.endef
___lshrdi3:
LFB141:
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
	je	L1580
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
L1580:
	.cfi_restore_state
	test	ebx, ebx
	je	L1583
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
L1583:
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
LFE141:
	.p2align 4
	.globl	___muldsi3
	.def	___muldsi3;	.scl	2;	.type	32;	.endef
___muldsi3:
LFB142:
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
LFE142:
	.p2align 4
	.globl	___muldi3_compiler_rt
	.def	___muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
___muldi3_compiler_rt:
LFB143:
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
LFE143:
	.p2align 4
	.globl	___negdi2
	.def	___negdi2;	.scl	2;	.type	32;	.endef
___negdi2:
LFB144:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	neg	eax
	sbb	edx, DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE144:
	.p2align 4
	.globl	___paritydi2
	.def	___paritydi2;	.scl	2;	.type	32;	.endef
___paritydi2:
LFB145:
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
LFE145:
	.p2align 4
	.globl	___paritysi2
	.def	___paritysi2;	.scl	2;	.type	32;	.endef
___paritysi2:
LFB146:
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
LFE146:
	.p2align 4
	.globl	___popcountdi2
	.def	___popcountdi2;	.scl	2;	.type	32;	.endef
___popcountdi2:
LFB147:
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
LFE147:
	.p2align 4
	.globl	___popcountsi2
	.def	___popcountsi2;	.scl	2;	.type	32;	.endef
___popcountsi2:
LFB148:
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
LFE148:
	.p2align 4
	.globl	___powidf2
	.def	___powidf2;	.scl	2;	.type	32;	.endef
___powidf2:
LFB149:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, ecx
	fld1
	test	cl, 1
	je	L1596
	jmp	L1598
	.p2align 4,,10
	.p2align 3
L1603:
	fxch	st(1)
	jmp	L1598
	.p2align 4,,10
	.p2align 3
L1604:
	fxch	st(1)
L1598:
	fmul	st, st(1)
L1596:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1597
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1603
L1602:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1604
	jmp	L1602
	.p2align 4,,10
	.p2align 3
L1597:
	fstp	st(1)
	test	ecx, ecx
	jns	L1595
	fld1
	fdivrp	st(1), st
L1595:
	ret
	.cfi_endproc
LFE149:
	.p2align 4
	.globl	___powisf2
	.def	___powisf2;	.scl	2;	.type	32;	.endef
___powisf2:
LFB150:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, ecx
	fld1
	test	cl, 1
	je	L1606
	jmp	L1608
	.p2align 4,,10
	.p2align 3
L1613:
	fxch	st(1)
	jmp	L1608
	.p2align 4,,10
	.p2align 3
L1614:
	fxch	st(1)
L1608:
	fmul	st, st(1)
L1606:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1607
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1613
L1612:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1614
	jmp	L1612
	.p2align 4,,10
	.p2align 3
L1607:
	fstp	st(1)
	test	ecx, ecx
	jns	L1605
	fld1
	fdivrp	st(1), st
L1605:
	ret
	.cfi_endproc
LFE150:
	.p2align 4
	.globl	___ucmpdi2
	.def	___ucmpdi2;	.scl	2;	.type	32;	.endef
___ucmpdi2:
LFB151:
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
	jb	L1615
	mov	eax, 2
	cmp	ecx, edx
	jb	L1615
	xor	eax, eax
	cmp	ebx, esi
	jb	L1615
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1615:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE151:
	.p2align 4
	.globl	___aeabi_ulcmp
	.def	___aeabi_ulcmp;	.scl	2;	.type	32;	.endef
___aeabi_ulcmp:
LFB152:
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
	jb	L1622
	mov	eax, 1
	cmp	ecx, edx
	jb	L1622
	mov	eax, -1
	cmp	ebx, esi
	jb	L1622
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1622:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE152:
.lcomm _s.0,7,4
.lcomm _seed,8,8
	.section .rdata,"dr"
	.align 32
_digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.align 16
LC0:
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
LC1:
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
	.align 16
LC4:
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.align 4
LC5:
	.long	-8388609
	.align 4
LC6:
	.long	2139095039
	.align 8
LC7:
	.long	-1
	.long	-1048577
	.align 8
LC8:
	.long	-1
	.long	2146435071
	.align 16
LC9:
	.long	-1
	.long	-1
	.long	65534
	.align 16
LC10:
	.long	-1
	.long	-1
	.long	32766
	.align 4
LC11:
	.long	1073741824
	.align 4
LC12:
	.long	1056964608
	.align 4
LC14:
	.long	-1090519040
	.align 4
LC16:
	.long	1602224128
	.align 4
LC17:
	.long	1191182336
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
