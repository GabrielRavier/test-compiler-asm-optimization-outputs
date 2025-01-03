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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp+12], ecx
	jnb	L2
	test	eax, eax
	je	L3
	lea	edx, [eax-1]
	cmp	edx, 14
	jbe	L10
	mov	edi, ecx
	mov	ecx, DWORD PTR [ebp+12]
	lea	esi, [ecx-2+eax]
	sub	edi, esi
	lea	ebx, [edi+30+edx]
	cmp	ebx, 30
	jbe	L10
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, eax
	add	esi, ecx
	add	edi, eax
	cmp	edx, 30
	jbe	L21
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
L6:
	vmovdqu	ymm2, YMMWORD PTR [edx]
	sub	edx, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm2
	cmp	edi, edx
	jne	L6
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+20]
	mov	edx, eax
	mov	DWORD PTR [ebp+12], ecx
	sub	esi, ebx
	sub	edi, ebx
	sub	edx, ebx
	cmp	eax, ebx
	je	L128
	lea	ecx, [edx-1]
	mov	eax, edx
	cmp	ecx, 14
	jbe	L132
	vzeroupper
L5:
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
	je	L3
L8:
	movzx	eax, BYTE PTR [esi-1]
	mov	BYTE PTR [edi-1], al
	cmp	edx, 1
	je	L3
	movzx	ecx, BYTE PTR [esi-2]
	mov	BYTE PTR [edi-2], cl
	cmp	edx, 2
	je	L3
	movzx	ebx, BYTE PTR [esi-3]
	mov	BYTE PTR [edi-3], bl
	cmp	edx, 3
	je	L3
	movzx	eax, BYTE PTR [esi-4]
	mov	BYTE PTR [edi-4], al
	cmp	edx, 4
	je	L3
	movzx	ecx, BYTE PTR [esi-5]
	mov	BYTE PTR [edi-5], cl
	cmp	edx, 5
	je	L3
	movzx	ebx, BYTE PTR [esi-6]
	mov	BYTE PTR [edi-6], bl
	cmp	edx, 6
	je	L3
	movzx	eax, BYTE PTR [esi-7]
	mov	BYTE PTR [edi-7], al
	cmp	edx, 7
	je	L3
	movzx	ecx, BYTE PTR [esi-8]
	mov	BYTE PTR [edi-8], cl
	cmp	edx, 8
	je	L3
	movzx	ebx, BYTE PTR [esi-9]
	mov	BYTE PTR [edi-9], bl
	cmp	edx, 9
	je	L3
	movzx	eax, BYTE PTR [esi-10]
	mov	BYTE PTR [edi-10], al
	cmp	edx, 10
	je	L3
	movzx	ecx, BYTE PTR [esi-11]
	mov	BYTE PTR [edi-11], cl
	cmp	edx, 11
	je	L3
	movzx	ebx, BYTE PTR [esi-12]
	mov	BYTE PTR [edi-12], bl
	cmp	edx, 12
	je	L3
	movzx	eax, BYTE PTR [esi-13]
	mov	BYTE PTR [edi-13], al
	cmp	edx, 13
	je	L3
	movzx	ecx, BYTE PTR [esi-14]
	mov	BYTE PTR [edi-14], cl
	cmp	edx, 14
	je	L3
	movzx	edx, BYTE PTR [esi-15]
	mov	BYTE PTR [edi-15], dl
L3:
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
L2:
	.cfi_restore_state
	mov	ecx, DWORD PTR [ebp+12]
	cmp	DWORD PTR [ebp+8], ecx
	je	L3
	test	eax, eax
	je	L3
	lea	ebx, [eax-1]
	lea	edx, [ecx+1]
	cmp	ebx, 14
	jbe	L12
	mov	esi, DWORD PTR [ebp+8]
	sub	esi, edx
	cmp	esi, 30
	jbe	L12
	mov	edx, ecx
	cmp	ebx, 30
	jbe	L22
	mov	esi, eax
	mov	ebx, DWORD PTR [ebp+8]
	and	esi, -32
	mov	edi, esi
	add	edi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L14:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	add	edx, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	edx, edi
	jne	L14
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	mov	DWORD PTR [ebp+12], ecx
	sub	ebx, esi
	add	edi, esi
	cmp	eax, esi
	je	L128
	lea	ecx, [ebx-1]
	mov	eax, ebx
	cmp	ecx, 14
	jbe	L133
	vzeroupper
L13:
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
	je	L3
L17:
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [edi], al
	cmp	ebx, 1
	je	L3
	movzx	ecx, BYTE PTR [edx+1]
	mov	BYTE PTR [edi+1], cl
	cmp	ebx, 2
	je	L3
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [edi+2], al
	cmp	ebx, 3
	je	L3
	movzx	ecx, BYTE PTR [edx+3]
	mov	BYTE PTR [edi+3], cl
	cmp	ebx, 4
	je	L3
	movzx	eax, BYTE PTR [edx+4]
	mov	BYTE PTR [edi+4], al
	cmp	ebx, 5
	je	L3
	movzx	ecx, BYTE PTR [edx+5]
	mov	BYTE PTR [edi+5], cl
	cmp	ebx, 6
	je	L3
	movzx	eax, BYTE PTR [edx+6]
	mov	BYTE PTR [edi+6], al
	cmp	ebx, 7
	je	L3
	movzx	ecx, BYTE PTR [edx+7]
	mov	BYTE PTR [edi+7], cl
	cmp	ebx, 8
	je	L3
	movzx	eax, BYTE PTR [edx+8]
	mov	BYTE PTR [edi+8], al
	cmp	ebx, 9
	je	L3
	movzx	ecx, BYTE PTR [edx+9]
	mov	BYTE PTR [edi+9], cl
	cmp	ebx, 10
	je	L3
	movzx	eax, BYTE PTR [edx+10]
	mov	BYTE PTR [edi+10], al
	cmp	ebx, 11
	je	L3
	movzx	ecx, BYTE PTR [edx+11]
	mov	BYTE PTR [edi+11], cl
	cmp	ebx, 12
	je	L3
	movzx	eax, BYTE PTR [edx+12]
	mov	BYTE PTR [edi+12], al
	cmp	ebx, 13
	je	L3
	movzx	ecx, BYTE PTR [edx+13]
	mov	BYTE PTR [edi+13], cl
	cmp	ebx, 14
	je	L3
	movzx	edx, BYTE PTR [edx+14]
	mov	BYTE PTR [edi+14], dl
	jmp	L3
	.p2align 4,,10
	.p2align 3
L10:
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	jmp	L125
	.p2align 5
	.p2align 4,,10
	.p2align 3
L134:
	sub	edx, 1
L125:
	movzx	ebx, BYTE PTR [edi-1+eax]
	mov	BYTE PTR [esi-1+eax], bl
	mov	eax, edx
	test	edx, edx
	jne	L134
	jmp	L3
	.p2align 4,,10
	.p2align 3
L12:
	mov	edi, DWORD PTR [ebp+8]
	add	eax, DWORD PTR [ebp+8]
	jmp	L19
	.p2align 5
	.p2align 4,,10
	.p2align 3
L135:
	add	edx, 1
L19:
	movzx	ebx, BYTE PTR [edx-1]
	add	edi, 1
	mov	BYTE PTR [edi-1], bl
	cmp	edi, eax
	jne	L135
	jmp	L3
L133:
	vzeroupper
	jmp	L17
L21:
	mov	edx, eax
	jmp	L5
L132:
	vzeroupper
	jmp	L8
L22:
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	xor	esi, esi
	jmp	L13
L128:
	vzeroupper
	jmp	L3
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
	jne	L137
	jmp	L139
	.p2align 5
	.p2align 4,,10
	.p2align 3
L140:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	L139
L137:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	L140
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
L139:
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
	jne	L149
	jmp	L152
	.p2align 4
	.p2align 4,,10
	.p2align 3
L151:
	add	eax, 1
	sub	edx, 1
	je	L152
L149:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L151
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L152:
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
	jne	L158
	jmp	L157
	.p2align 5
	.p2align 4,,10
	.p2align 3
L160:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	L162
L158:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	L160
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L157:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L162:
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
	je	L170
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L170:
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
	jmp	L176
	.p2align 4
	.p2align 4,,10
	.p2align 3
L178:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	L175
L176:
	cmp	eax, ebx
	jne	L178
	xor	edx, edx
L175:
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
	je	L183
	movzx	edx, BYTE PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memset
L183:
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
	je	L186
	.p2align 4
	.p2align 4
	.p2align 3
L187:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L187
L186:
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
	jne	L193
	jmp	L192
	.p2align 4
	.p2align 4,,10
	.p2align 3
L195:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	L192
L193:
	cmp	eax, ecx
	jne	L195
L192:
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
	jmp	L202
	.p2align 4
	.p2align 4,,10
	.p2align 3
L206:
	add	eax, 1
	test	cl, cl
	je	L205
L202:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L206
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L205:
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
	je	L208
	jmp	L209
	.p2align 5
	.p2align 4,,10
	.p2align 3
L210:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	L209
L208:
	test	al, al
	jne	L210
	xor	eax, eax
L209:
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
	je	L219
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
L218:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L218
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L219:
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
	je	L221
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	L225
	jmp	L240
	.p2align 4,,10
	.p2align 3
L242:
	cmp	edx, ebp
	je	L224
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L241
	mov	edx, esi
L225:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	L242
L224:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
L221:
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
L241:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	L224
L240:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	L224
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	cmp	ecx, 1
	jle	L256
	mov	esi, ecx
	lea	edx, [ecx-2]
	shr	esi
	lea	eax, [esi-1]
	mov	DWORD PTR [esp+28], eax
	cmp	edx, 29
	jbe	L250
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, ecx
	mov	ebx, ecx
	mov	edx, DWORD PTR [ebp+12]
	vmovdqa	ymm1, YMMWORD PTR LC0
	and	edi, -32
	shr	ebx, 5
	add	edi, eax
	.p2align 5
	.p2align 4
	.p2align 3
L246:
	vmovdqu	ymm0, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vpshufb	ymm2, ymm0, ymm1
	vmovdqu	YMMWORD PTR [edx-32], ymm2
	cmp	edi, eax
	jne	L246
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
	je	L258
	vzeroupper
L245:
	mov	ebx, DWORD PTR [esp+28]
	sub	ebx, edi
	lea	esi, [ebx+1]
	cmp	ebx, 6
	jbe	L248
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu	xmm3, XMMWORD PTR [ebx+edi*2]
	mov	ebx, DWORD PTR [ebp+12]
	vpshufb	xmm4, xmm3, XMMWORD PTR LC1
	vmovdqu	XMMWORD PTR [ebx+edi*2], xmm4
	mov	ebx, esi
	and	ebx, -8
	lea	edi, [ebx+ebx]
	neg	ebx
	add	edx, edi
	add	eax, edi
	lea	ecx, [ecx+ebx*2]
	and	esi, 7
	je	L256
L248:
	movbe	si, WORD PTR [eax]
	mov	WORD PTR [edx], si
	cmp	ecx, 3
	jle	L256
	movbe	bx, WORD PTR [eax+2]
	mov	WORD PTR [edx+2], bx
	cmp	ecx, 5
	jle	L256
	movbe	di, WORD PTR [eax+4]
	mov	WORD PTR [edx+4], di
	cmp	ecx, 7
	jle	L256
	movbe	si, WORD PTR [eax+6]
	mov	WORD PTR [edx+6], si
	cmp	ecx, 9
	jle	L256
	movbe	bx, WORD PTR [eax+8]
	mov	WORD PTR [edx+8], bx
	cmp	ecx, 11
	jle	L256
	movbe	di, WORD PTR [eax+10]
	mov	WORD PTR [edx+10], di
	cmp	ecx, 13
	jle	L256
	movbe	ax, WORD PTR [eax+12]
	mov	WORD PTR [edx+12], ax
L256:
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
L250:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	xor	edi, edi
	jmp	L245
L258:
	vzeroupper
	jmp	L256
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
	jbe	L271
	cmp	dx, 31
	jbe	L271
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L269
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L271:
	mov	edx, 1
L269:
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
	jbe	L281
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L277
	cmp	ax, 8231
	jbe	L277
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L274
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L274
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
L277:
	.cfi_restore_state
	mov	ecx, 1
L274:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L281:
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
	jbe	L282
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L282:
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
	jp	L294
	fxch	st(1)
	fucomi	st, st(0)
	jp	L290
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L293
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L293:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L286
	.p2align 4,,10
	.p2align 3
L294:
	fstp	st(1)
L286:
	ret
	.p2align 4,,10
	.p2align 3
L290:
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
	jp	L303
	fxch	st(1)
	fucomi	st, st(0)
	jp	L299
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L302
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L302:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L295
	.p2align 4,,10
	.p2align 3
L303:
	fstp	st(1)
L295:
	ret
	.p2align 4,,10
	.p2align 3
L299:
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
	jp	L309
	fxch	st(1)
	fucomi	st, st(0)
	jp	L312
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
	je	L306
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L309:
	fstp	st(0)
	jmp	L304
	.p2align 4,,10
	.p2align 3
L312:
	fstp	st(0)
L304:
	ret
	.p2align 4,,10
	.p2align 3
L306:
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
	jp	L318
	fxch	st(1)
	fucomi	st, st(0)
	jp	L321
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
	je	L315
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L318:
	fstp	st(0)
	jmp	L313
	.p2align 4,,10
	.p2align 3
L321:
	fstp	st(0)
L313:
	ret
	.p2align 4,,10
	.p2align 3
L315:
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
	jp	L333
	fxch	st(1)
	fucomi	st, st(0)
	jp	L334
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
	jne	L332
	fcomi	st, st(1)
	jbe	L335
	fstp	st(1)
	jmp	L328
	.p2align 4,,10
	.p2align 3
L334:
	fstp	st(0)
	jmp	L328
	.p2align 4,,10
	.p2align 3
L335:
	fstp	st(0)
	jmp	L328
	.p2align 4,,10
	.p2align 3
L336:
	fstp	st(0)
L328:
	jmp	L322
	.p2align 4,,10
	.p2align 3
L333:
	fstp	st(0)
L322:
	ret
	.p2align 4,,10
	.p2align 3
L332:
	test	edx, edx
	je	L336
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
	jp	L345
	fxch	st(1)
	fucomi	st, st(0)
	jp	L343
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
	je	L339
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L343:
	fstp	st(0)
	jmp	L337
	.p2align 4,,10
	.p2align 3
L345:
	fstp	st(0)
L337:
	ret
	.p2align 4,,10
	.p2align 3
L339:
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
	jp	L354
	fxch	st(1)
	fucomi	st, st(0)
	jp	L352
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
	je	L348
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L352:
	fstp	st(0)
	jmp	L346
	.p2align 4,,10
	.p2align 3
L354:
	fstp	st(0)
L346:
	ret
	.p2align 4,,10
	.p2align 3
L348:
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
	jp	L366
	fxch	st(1)
	fucomi	st, st(0)
	jp	L367
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
	jne	L365
	fcomi	st, st(1)
	jbe	L368
	fstp	st(0)
	jmp	L360
	.p2align 4,,10
	.p2align 3
L366:
	fstp	st(0)
	jmp	L360
	.p2align 4,,10
	.p2align 3
L368:
	fstp	st(1)
	jmp	L360
	.p2align 4,,10
	.p2align 3
L369:
	fstp	st(1)
L360:
	jmp	L355
	.p2align 4,,10
	.p2align 3
L367:
	fstp	st(0)
L355:
	ret
	.p2align 4,,10
	.p2align 3
L365:
	test	edx, edx
	je	L369
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
	je	L371
	.p2align 5
	.p2align 4
	.p2align 3
L372:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L372
L371:
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
	je	L384
	vmovd	xmm1, DWORD PTR [eax]
	vpinsrd	xmm0, xmm1, eax, 1
	vmovq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	L383
	mov	DWORD PTR [ecx+4], edx
L383:
	ret
	.p2align 4,,10
	.p2align 3
L384:
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
	je	L386
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L386:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L394
	mov	DWORD PTR [eax], edx
L394:
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
	je	L396
	mov	ebx, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+28], ecx
	xor	ebp, ebp
	mov	esi, ebx
	jmp	L398
	.p2align 4,,10
	.p2align 3
L413:
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	je	L412
L398:
	mov	edx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], esi
	mov	ebx, esi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L413
L395:
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
L412:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L396:
	mov	ebp, DWORD PTR [esp+72]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	DWORD PTR [ebp+0], eax
	mov	ebx, ecx
	test	edi, edi
	je	L395
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
	je	L415
	mov	edi, DWORD PTR [esp+52]
	xor	esi, esi
	jmp	L417
	.p2align 4,,10
	.p2align 3
L427:
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	je	L415
L417:
	mov	edx, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edi
	mov	ebx, edi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L427
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
L415:
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
	jbe	L452
	mov	edx, ecx
	jmp	L456
	.p2align 5
	.p2align 4,,10
	.p2align 3
L452:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L452
L456:
	cmp	dl, 32
	je	L452
	cmp	dl, 43
	je	L433
	cmp	dl, 45
	jne	L457
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L442
	mov	ebp, 1
L436:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L439:
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
	jbe	L439
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
L457:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	L436
L442:
	xor	eax, eax
L458:
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
L433:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L436
	xor	eax, eax
	jmp	L458
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
	jbe	L480
	mov	edx, ecx
	jmp	L483
	.p2align 5
	.p2align 4,,10
	.p2align 3
L480:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L480
L483:
	cmp	dl, 32
	je	L480
	cmp	dl, 43
	je	L463
	cmp	dl, 45
	je	L484
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	L471
L465:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L468:
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
	jbe	L468
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
L484:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L465
L471:
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
L463:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L471
	xor	ebp, ebp
	jmp	L465
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
	jbe	L508
	mov	edx, eax
	jmp	L513
	.p2align 5
	.p2align 4,,10
	.p2align 3
L508:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	esi, [eax-9]
	mov	edx, eax
	cmp	esi, 4
	jbe	L508
L513:
	cmp	dl, 32
	je	L508
	cmp	dl, 43
	je	L489
	cmp	dl, 45
	jne	L514
	movsx	ebp, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L498
	mov	esi, 1
L492:
	mov	DWORD PTR [esp+12], esi
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
L495:
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
	jbe	L495
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	jne	L485
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
L485:
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
L514:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	esi, esi
	mov	eax, ecx
	cmp	ebx, 9
	jbe	L492
L498:
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
L489:
	.cfi_restore_state
	movsx	edi, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	xor	esi, esi
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	L492
	jmp	L498
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
L530:
	test	ebx, ebx
	je	L516
L531:
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
	js	L520
	je	L515
	sub	ebx, 1
	lea	edx, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+52], edx
	test	ebx, ebx
	jne	L531
L516:
	xor	ebp, ebp
L515:
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
L520:
	.cfi_restore_state
	mov	ebx, esi
	jmp	L530
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
	je	L537
	.p2align 4
	.p2align 3
L545:
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
	je	L532
	jle	L535
	lea	ebp, [ebp-1]
	lea	ecx, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+52], ecx
	jne	L545
L537:
	xor	ebx, ebx
L532:
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
L535:
	.cfi_restore_state
	test	esi, esi
	je	L537
	mov	ebp, esi
	jmp	L545
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
	jne	L561
	jmp	L564
	.p2align 5
	.p2align 4,,10
	.p2align 3
L563:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	test	dx, dx
	je	L564
L561:
	cmp	cx, dx
	jne	L563
	ret
	.p2align 4,,10
	.p2align 3
L564:
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
	je	L569
	jmp	L570
	.p2align 5
	.p2align 4,,10
	.p2align 3
L571:
	movzx	eax, WORD PTR [edx+2]
	movzx	ebx, WORD PTR [ecx+2]
	add	edx, 2
	add	ecx, 2
	cmp	ax, bx
	jne	L570
L569:
	test	ax, ax
	jne	L571
L570:
	mov	edx, -1
	cmp	ax, bx
	jb	L568
	xor	edx, edx
	cmp	bx, ax
	setb	dl
L568:
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
L578:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L578
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
	je	L584
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L583:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L583
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L584:
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
	jne	L587
	jmp	L593
	.p2align 4,,10
	.p2align 3
L601:
	test	bx, bx
	je	L591
	add	edx, 2
	add	eax, 2
	sub	ecx, 1
	je	L593
L587:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L601
L591:
	movzx	ebx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	jb	L602
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
L602:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L593:
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
	jne	L604
	jmp	L607
	.p2align 4
	.p2align 4,,10
	.p2align 3
L606:
	add	eax, 2
	sub	edx, 1
	je	L607
L604:
	cmp	WORD PTR [eax], cx
	jne	L606
	ret
	.p2align 4,,10
	.p2align 3
L607:
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
	jne	L612
	jmp	L611
	.p2align 5
	.p2align 4,,10
	.p2align 3
L614:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L617
L612:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L614
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L624
	cmp	ax, bx
	setb	dl
	movzx	eax, dl
L611:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L624:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L617:
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
	je	L626
	mov	edx, DWORD PTR [esp+36]
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L626:
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	cmp	ebx, esi
	je	L675
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, ebx
	sub	ecx, esi
	lea	edx, [eax+eax]
	sub	eax, 1
	cmp	ecx, edx
	jnb	L723
	mov	ecx, DWORD PTR [ebp+16]
	test	ecx, ecx
	je	L675
	cmp	eax, 6
	jbe	L714
	mov	edi, ebx
	sub	edi, esi
	add	edi, 30
	cmp	edi, 28
	jbe	L714
	cmp	eax, 14
	jbe	L654
	mov	edi, DWORD PTR [ebp+16]
	sub	edx, 32
	lea	ecx, [esi+edx]
	lea	edx, [edx+ebx]
	shr	edi, 4
	mov	DWORD PTR [esp+28], edx
	mov	edx, ecx
	sal	edi, 5
	sub	edx, edi
	mov	edi, edx
	mov	edx, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
L638:
	vmovdqu	ymm2, YMMWORD PTR [ecx]
	sub	ecx, 32
	sub	edx, 32
	vmovdqu	YMMWORD PTR [edx+32], ymm2
	cmp	edi, ecx
	jne	L638
	mov	edx, DWORD PTR [ebp+16]
	and	edx, -16
	sub	eax, edx
	test	BYTE PTR [ebp+16], 15
	je	L719
	mov	ecx, DWORD PTR [ebp+16]
	sub	ecx, edx
	lea	edi, [ecx-1]
	cmp	edi, 6
	jbe	L724
	vzeroupper
L637:
	mov	edi, DWORD PTR [ebp+16]
	neg	edx
	lea	edx, [edi+2147483640+edx]
	mov	edi, ecx
	and	edi, -8
	vmovdqu	xmm3, XMMWORD PTR [esi+edx*2]
	sub	eax, edi
	and	ecx, 7
	vmovdqu	XMMWORD PTR [ebx+edx*2], xmm3
	je	L675
L641:
	movzx	ecx, WORD PTR [esi+eax*2]
	mov	WORD PTR [ebx+eax*2], cx
	lea	ecx, [eax-1]
	test	eax, eax
	je	L675
	movzx	edi, WORD PTR [esi+ecx*2]
	lea	edx, [ecx+ecx]
	mov	WORD PTR [ebx+ecx*2], di
	test	ecx, ecx
	je	L675
	movzx	ecx, WORD PTR [esi-2+edx]
	mov	WORD PTR [ebx-2+edx], cx
	cmp	eax, 2
	je	L675
	movzx	edi, WORD PTR [esi-4+edx]
	mov	WORD PTR [ebx-4+edx], di
	cmp	eax, 3
	je	L675
	movzx	ecx, WORD PTR [esi-6+edx]
	mov	WORD PTR [ebx-6+edx], cx
	cmp	eax, 4
	je	L675
	movzx	edi, WORD PTR [esi-8+edx]
	mov	WORD PTR [ebx-8+edx], di
	cmp	eax, 5
	je	L675
	movzx	esi, WORD PTR [esi-10+edx]
	mov	WORD PTR [ebx-10+edx], si
L675:
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
L723:
	.cfi_restore_state
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	L675
	cmp	eax, 6
	jbe	L655
	lea	edx, [esi+2]
	mov	ecx, ebx
	sub	ecx, edx
	cmp	ecx, 28
	jbe	L656
	cmp	eax, 14
	jbe	L657
	mov	edi, DWORD PTR [ebp+16]
	xor	edx, edx
	shr	edi, 4
	.p2align 5
	.p2align 4
	.p2align 3
L647:
	mov	ecx, edx
	add	edx, 1
	sal	ecx, 5
	vmovdqu	ymm0, YMMWORD PTR [esi+ecx]
	vmovdqu	YMMWORD PTR [ebx+ecx], ymm0
	cmp	edi, edx
	jne	L647
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -16
	lea	edx, [edi+edi]
	mov	DWORD PTR [esp+28], edi
	sub	eax, edi
	lea	ecx, [esi+edx]
	add	edx, ebx
	test	BYTE PTR [ebp+16], 15
	je	L719
	sub	DWORD PTR [ebp+16], edi
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 1
	cmp	edi, 6
	jbe	L725
	vzeroupper
L646:
	mov	edi, DWORD PTR [esp+28]
	vmovdqu	xmm1, XMMWORD PTR [esi+edi*2]
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -8
	vmovdqu	XMMWORD PTR [ebx+edi*2], xmm1
	sub	eax, esi
	add	esi, esi
	add	ecx, esi
	add	edx, esi
	test	BYTE PTR [ebp+16], 7
	je	L675
L650:
	movzx	edi, WORD PTR [ecx]
	mov	WORD PTR [edx], di
	test	eax, eax
	je	L675
	movzx	esi, WORD PTR [ecx+2]
	mov	WORD PTR [edx+2], si
	cmp	eax, 1
	je	L675
	movzx	edi, WORD PTR [ecx+4]
	mov	WORD PTR [edx+4], di
	cmp	eax, 2
	je	L675
	movzx	esi, WORD PTR [ecx+6]
	mov	WORD PTR [edx+6], si
	cmp	eax, 3
	je	L675
	movzx	edi, WORD PTR [ecx+8]
	mov	WORD PTR [edx+8], di
	cmp	eax, 4
	je	L675
	movzx	esi, WORD PTR [ecx+10]
	mov	WORD PTR [edx+10], si
	cmp	eax, 5
	je	L675
	movzx	eax, WORD PTR [ecx+12]
	mov	WORD PTR [edx+12], ax
	jmp	L675
	.p2align 5
	.p2align 4,,10
	.p2align 3
L714:
	movzx	edx, WORD PTR [esi+eax*2]
	mov	WORD PTR [ebx+eax*2], dx
	sub	eax, 1
	jb	L675
	movzx	edx, WORD PTR [esi+eax*2]
	mov	WORD PTR [ebx+eax*2], dx
	sub	eax, 1
	jnb	L714
	jmp	L675
	.p2align 4,,10
	.p2align 3
L655:
	mov	ecx, ebx
	lea	edx, [esi+2]
	jmp	L715
	.p2align 5
	.p2align 4,,10
	.p2align 3
L726:
	add	edx, 2
L715:
	movzx	edi, WORD PTR [edx-2]
	add	ecx, 2
	mov	WORD PTR [ecx-2], di
	sub	eax, 1
	jb	L675
	jmp	L726
L656:
	mov	ecx, ebx
	jmp	L715
L719:
	vzeroupper
	jmp	L675
L657:
	mov	DWORD PTR [esp+28], 0
	mov	ecx, esi
	mov	edx, ebx
	jmp	L646
L654:
	mov	ecx, DWORD PTR [ebp+16]
	xor	edx, edx
	jmp	L637
L725:
	vzeroupper
	jmp	L650
L724:
	vzeroupper
	jmp	L641
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
	push	esi
	push	ebx
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	test	eax, eax
	je	L728
	lea	ebx, [eax-1]
	cmp	ebx, 14
	jbe	L734
	mov	esi, eax
	vmovd	xmm0, edi
	xor	eax, eax
	shr	esi, 4
	vpbroadcastw	ymm1, xmm0
	.p2align 5
	.p2align 4
	.p2align 3
L730:
	mov	edx, eax
	add	eax, 1
	sal	edx, 5
	vmovdqu	YMMWORD PTR [ecx+edx], ymm1
	cmp	esi, eax
	jne	L730
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -16
	mov	DWORD PTR [esp+28], eax
	sub	ebx, eax
	lea	eax, [ecx+eax*2]
	test	BYTE PTR [ebp+16], 15
	je	L765
	vzeroupper
L729:
	mov	edx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [ebp+16]
	sub	esi, edx
	lea	edx, [esi-1]
	cmp	edx, 6
	jbe	L732
	mov	edx, DWORD PTR [esp+28]
	vmovd	xmm2, edi
	vpbroadcastw	xmm3, xmm2
	vmovdqu	XMMWORD PTR [ecx+edx*2], xmm3
	mov	edx, esi
	and	edx, -8
	sub	ebx, edx
	and	esi, 7
	lea	eax, [eax+edx*2]
	je	L728
L732:
	mov	WORD PTR [eax], di
	test	ebx, ebx
	je	L728
	mov	WORD PTR [eax+2], di
	cmp	ebx, 1
	je	L728
	mov	WORD PTR [eax+4], di
	cmp	ebx, 2
	je	L728
	mov	WORD PTR [eax+6], di
	cmp	ebx, 3
	je	L728
	mov	WORD PTR [eax+8], di
	cmp	ebx, 4
	je	L728
	mov	WORD PTR [eax+10], di
	cmp	ebx, 5
	je	L728
	mov	WORD PTR [eax+12], di
L728:
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
L734:
	.cfi_restore_state
	mov	DWORD PTR [esp+28], 0
	mov	eax, ecx
	jmp	L729
L765:
	vzeroupper
	jmp	L728
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+12]
	cmp	DWORD PTR [ebp+8], eax
	jnb	L767
	test	edx, edx
	je	L895
	lea	eax, [edx-1]
	cmp	eax, 14
	jbe	L775
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	lea	edi, [ecx-2+edx]
	sub	ebx, edi
	lea	esi, [ebx+30+eax]
	cmp	esi, 30
	jbe	L775
	mov	edi, DWORD PTR [ebp+12]
	mov	esi, edx
	add	esi, ecx
	add	edi, edx
	cmp	eax, 30
	jbe	L786
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
L771:
	vmovdqu	ymm2, YMMWORD PTR [eax]
	sub	eax, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm2
	cmp	esi, eax
	jne	L771
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+20]
	mov	eax, edx
	mov	DWORD PTR [ebp+12], ecx
	sub	edi, ebx
	sub	esi, ebx
	sub	eax, ebx
	cmp	edx, ebx
	je	L893
	lea	ecx, [eax-1]
	mov	edx, eax
	cmp	ecx, 14
	jbe	L897
	vzeroupper
L770:
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
	je	L895
L773:
	movzx	edx, BYTE PTR [esi-1]
	mov	BYTE PTR [edi-1], dl
	cmp	eax, 1
	je	L895
	movzx	ecx, BYTE PTR [esi-2]
	mov	BYTE PTR [edi-2], cl
	cmp	eax, 2
	je	L895
	movzx	ebx, BYTE PTR [esi-3]
	mov	BYTE PTR [edi-3], bl
	cmp	eax, 3
	je	L895
	movzx	edx, BYTE PTR [esi-4]
	mov	BYTE PTR [edi-4], dl
	cmp	eax, 4
	je	L895
	movzx	ecx, BYTE PTR [esi-5]
	mov	BYTE PTR [edi-5], cl
	cmp	eax, 5
	je	L895
	movzx	ebx, BYTE PTR [esi-6]
	mov	BYTE PTR [edi-6], bl
	cmp	eax, 6
	je	L895
	movzx	edx, BYTE PTR [esi-7]
	mov	BYTE PTR [edi-7], dl
	cmp	eax, 7
	je	L895
	movzx	ecx, BYTE PTR [esi-8]
	mov	BYTE PTR [edi-8], cl
	cmp	eax, 8
	je	L895
	movzx	ebx, BYTE PTR [esi-9]
	mov	BYTE PTR [edi-9], bl
	cmp	eax, 9
	je	L895
	movzx	edx, BYTE PTR [esi-10]
	mov	BYTE PTR [edi-10], dl
	cmp	eax, 10
	je	L895
	movzx	ecx, BYTE PTR [esi-11]
	mov	BYTE PTR [edi-11], cl
	cmp	eax, 11
	je	L895
	movzx	ebx, BYTE PTR [esi-12]
	mov	BYTE PTR [edi-12], bl
	cmp	eax, 12
	je	L895
	movzx	edx, BYTE PTR [esi-13]
	mov	BYTE PTR [edi-13], dl
	cmp	eax, 13
	je	L895
	movzx	ecx, BYTE PTR [esi-14]
	mov	BYTE PTR [edi-14], cl
	cmp	eax, 14
	je	L895
	movzx	eax, BYTE PTR [esi-15]
	mov	BYTE PTR [edi-15], al
L895:
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
L767:
	.cfi_restore_state
	je	L895
	test	edx, edx
	je	L895
	lea	edi, [edx-1]
	cmp	edi, 14
	jbe	L898
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	lea	ebx, [ebx+1]
	sub	esi, ebx
	cmp	esi, 30
	jbe	L777
	cmp	edi, 30
	jbe	L787
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
L779:
	vmovdqu	ymm0, YMMWORD PTR [eax]
	add	eax, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	eax, edi
	jne	L779
	mov	ebx, esi
	mov	edi, edx
	mov	DWORD PTR [ebp+12], ecx
	add	ebx, ecx
	sub	edi, esi
	cmp	edx, esi
	je	L893
	lea	ecx, [edi-1]
	mov	edx, edi
	cmp	ecx, 14
	jbe	L899
	vzeroupper
L778:
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
	je	L895
L782:
	movzx	edx, BYTE PTR [eax]
	mov	BYTE PTR [ebx], dl
	cmp	edi, 1
	je	L895
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [ebx+1], cl
	cmp	edi, 2
	je	L895
	movzx	edx, BYTE PTR [eax+2]
	mov	BYTE PTR [ebx+2], dl
	cmp	edi, 3
	je	L895
	movzx	ecx, BYTE PTR [eax+3]
	mov	BYTE PTR [ebx+3], cl
	cmp	edi, 4
	je	L895
	movzx	edx, BYTE PTR [eax+4]
	mov	BYTE PTR [ebx+4], dl
	cmp	edi, 5
	je	L895
	movzx	ecx, BYTE PTR [eax+5]
	mov	BYTE PTR [ebx+5], cl
	cmp	edi, 6
	je	L895
	movzx	edx, BYTE PTR [eax+6]
	mov	BYTE PTR [ebx+6], dl
	cmp	edi, 7
	je	L895
	movzx	ecx, BYTE PTR [eax+7]
	mov	BYTE PTR [ebx+7], cl
	cmp	edi, 8
	je	L895
	movzx	edx, BYTE PTR [eax+8]
	mov	BYTE PTR [ebx+8], dl
	cmp	edi, 9
	je	L895
	movzx	ecx, BYTE PTR [eax+9]
	mov	BYTE PTR [ebx+9], cl
	cmp	edi, 10
	je	L895
	movzx	edx, BYTE PTR [eax+10]
	mov	BYTE PTR [ebx+10], dl
	cmp	edi, 11
	je	L895
	movzx	ecx, BYTE PTR [eax+11]
	mov	BYTE PTR [ebx+11], cl
	cmp	edi, 12
	je	L895
	movzx	edx, BYTE PTR [eax+12]
	mov	BYTE PTR [ebx+12], dl
	cmp	edi, 13
	je	L895
	movzx	ecx, BYTE PTR [eax+13]
	mov	BYTE PTR [ebx+13], cl
	cmp	edi, 14
	je	L895
	movzx	eax, BYTE PTR [eax+14]
	mov	BYTE PTR [ebx+14], al
	jmp	L895
	.p2align 4,,10
	.p2align 3
L775:
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	jmp	L890
	.p2align 5
	.p2align 4,,10
	.p2align 3
L900:
	sub	eax, 1
L890:
	movzx	ebx, BYTE PTR [edi-1+edx]
	mov	BYTE PTR [esi-1+edx], bl
	mov	edx, eax
	test	eax, eax
	jne	L900
	jmp	L895
L898:
	mov	ecx, DWORD PTR [ebp+8]
	lea	ebx, [ecx+1]
L777:
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	add	edi, edx
	jmp	L784
	.p2align 5
	.p2align 4,,10
	.p2align 3
L901:
	add	ebx, 1
L784:
	movzx	edx, BYTE PTR [ebx-1]
	add	esi, 1
	mov	BYTE PTR [esi-1], dl
	cmp	ebx, edi
	jne	L901
	jmp	L895
L899:
	vzeroupper
	jmp	L782
L786:
	mov	eax, edx
	jmp	L770
L897:
	vzeroupper
	jmp	L773
L787:
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, edx
	xor	esi, esi
	jmp	L778
L893:
	vzeroupper
	jmp	L895
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
	je	L904
	mov	edx, eax
	xor	eax, eax
L904:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L905
	mov	esi, edi
	xor	edi, edi
L905:
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
	je	L908
	mov	eax, edx
	xor	edx, edx
L908:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L909
	mov	edi, esi
	xor	esi, esi
L909:
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vpxor	xmm2, xmm2, xmm2
	vmovdqa	ymm4, YMMWORD PTR LC9
	vmovd	xmm3, edx
	vpbroadcastd	ymm6, xmm3
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	mov	eax, DWORD PTR [ebp+8]
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	vmovd	xmm0, eax
	vpbroadcastd	ymm5, xmm0
	vpsrlvd	ymm1, ymm5, ymm4
	vpand	ymm7, ymm1, ymm6
	vpcmpeqd	ymm0, ymm7, ymm2
	vpcmpeqd	ymm1, ymm0, ymm2
	vptest	ymm1, ymm1
	jne	L928
	vmovdqa	ymm4, YMMWORD PTR LC7
	vpsrlvd	ymm3, ymm5, ymm4
	vpand	ymm7, ymm3, ymm6
	vpcmpeqd	ymm0, ymm7, ymm2
	vpcmpeqd	ymm1, ymm0, ymm2
	vptest	ymm1, ymm1
	jne	L929
	vmovdqa	ymm4, YMMWORD PTR LC5
	vpsrlvd	ymm3, ymm5, ymm4
	vpand	ymm7, ymm3, ymm6
	vpcmpeqd	ymm0, ymm7, ymm2
	vpcmpeqd	ymm1, ymm0, ymm2
	vptest	ymm1, ymm1
	jne	L930
	vmovdqa	ymm4, YMMWORD PTR LC11
	vpsrlvd	ymm5, ymm5, ymm4
	vpand	ymm6, ymm5, ymm6
	vpcmpeqd	ymm3, ymm6, ymm2
	vpcmpeqd	ymm2, ymm3, ymm2
	vptest	ymm2, ymm2
	jne	L931
L936:
	xor	eax, eax
L921:
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
L928:
	.cfi_restore_state
	vmovdqa	ymm7, YMMWORD PTR LC8
L922:
	vmovd	edx, xmm4
	vmovd	ebx, xmm7
	bt	eax, edx
	lea	ecx, [edx+1]
	jc	L924
	mov	esi, eax
	shr	esi, cl
	lea	ecx, [edx+2]
	and	esi, 1
	jne	L924
	cmp	ebx, 2
	je	L936
	mov	esi, eax
	shr	esi, cl
	lea	ecx, [edx+3]
	and	esi, 1
	jne	L924
	cmp	ebx, 3
	je	L936
	mov	esi, eax
	shr	esi, cl
	lea	ecx, [edx+4]
	and	esi, 1
	jne	L924
	cmp	ebx, 4
	je	L936
	mov	esi, eax
	shr	esi, cl
	lea	ecx, [edx+5]
	and	esi, 1
	jne	L924
	cmp	ebx, 5
	je	L936
	mov	esi, eax
	shr	esi, cl
	lea	ecx, [edx+6]
	and	esi, 1
	jne	L924
	cmp	ebx, 6
	je	L936
	mov	esi, eax
	shr	esi, cl
	lea	ecx, [edx+7]
	and	esi, 1
	jne	L924
	cmp	ebx, 7
	je	L936
	bt	eax, ecx
	mov	eax, 0
	lea	ecx, [edx+8]
	jnc	L921
L924:
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
L929:
	.cfi_restore_state
	vmovdqa	ymm7, YMMWORD PTR LC6
	jmp	L922
L931:
	vmovdqa	ymm7, YMMWORD PTR LC10
	jmp	L922
L930:
	vmovdqa	ymm7, YMMWORD PTR LC4
	jmp	L922
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
	je	L942
	mov	edx, eax
	and	edx, 1
	jne	L942
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L944:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L944
L942:
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
	fld	DWORD PTR LC13
	mov	eax, 1
	fcomip	st, st(1)
	ja	L952
	fld	DWORD PTR LC14
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L949
	.p2align 4,,10
	.p2align 3
L952:
	fstp	st(0)
L949:
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
	fld	QWORD PTR LC15
	mov	eax, 1
	fcomip	st, st(1)
	ja	L956
	fld	QWORD PTR LC16
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L953
	.p2align 4,,10
	.p2align 3
L956:
	fstp	st(0)
L953:
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
	fld	TBYTE PTR LC17
	fcomip	st, st(1)
	ja	L960
	fld	TBYTE PTR LC18
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L957
	.p2align 4,,10
	.p2align 3
L960:
	fstp	st(0)
L957:
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
	jp	L963
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L970
	jne	L970
	jmp	L963
	.p2align 4,,10
	.p2align 3
L978:
	fstp	st(0)
L963:
	ret
	.p2align 4,,10
	.p2align 3
L970:
	fld	DWORD PTR LC19
	test	eax, eax
	jns	L965
	fstp	st(0)
	fld	DWORD PTR LC20
L965:
	test	al, 1
	je	L966
	.p2align 4
	.p2align 3
L967:
	fmul	st(1), st
L966:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L978
	fmul	st, st(0)
	test	al, 1
	jne	L967
L977:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L967
	jmp	L977
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
	jp	L980
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L987
	jne	L987
	jmp	L980
	.p2align 4,,10
	.p2align 3
L996:
	fstp	st(0)
L980:
	ret
	.p2align 4,,10
	.p2align 3
L987:
	test	eax, eax
	js	L994
	fld	DWORD PTR LC19
L982:
	test	al, 1
	je	L983
	.p2align 4
	.p2align 3
L984:
	fmul	st(1), st
L983:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L996
	fmul	st, st(0)
	test	al, 1
	jne	L984
L995:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L984
	jmp	L995
	.p2align 4,,10
	.p2align 3
L994:
	fld	DWORD PTR LC20
	jmp	L982
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
	jp	L998
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L1005
	jne	L1005
	jmp	L998
	.p2align 4,,10
	.p2align 3
L1014:
	fstp	st(0)
L998:
	ret
	.p2align 4,,10
	.p2align 3
L1005:
	test	eax, eax
	js	L1012
	fld	DWORD PTR LC19
L1000:
	test	al, 1
	je	L1001
	.p2align 4
	.p2align 3
L1002:
	fmul	st(1), st
L1001:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1014
	fmul	st, st(0)
	test	al, 1
	jne	L1002
L1013:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L1002
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1012:
	fld	DWORD PTR LC20
	jmp	L1000
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	test	ecx, ecx
	je	L1016
	lea	eax, [ecx-1]
	cmp	eax, 30
	jbe	L1022
	mov	esi, ecx
	mov	ebx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	and	esi, -32
	mov	eax, esi
	add	eax, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1018:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	vpxor	ymm1, ymm0, YMMWORD PTR [ebx]
	add	ebx, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm1
	cmp	eax, ebx
	jne	L1018
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, ecx
	sub	ebx, esi
	add	edx, esi
	cmp	ecx, esi
	je	L1074
	vzeroupper
L1017:
	sub	ecx, esi
	lea	edi, [ecx-1]
	cmp	edi, 14
	jbe	L1020
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
	je	L1016
L1020:
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [edx], cl
	cmp	ebx, 1
	je	L1016
	movzx	ecx, BYTE PTR [eax+1]
	xor	BYTE PTR [edx+1], cl
	cmp	ebx, 2
	je	L1016
	movzx	ecx, BYTE PTR [eax+2]
	xor	BYTE PTR [edx+2], cl
	cmp	ebx, 3
	je	L1016
	movzx	ecx, BYTE PTR [eax+3]
	xor	BYTE PTR [edx+3], cl
	cmp	ebx, 4
	je	L1016
	movzx	ecx, BYTE PTR [eax+4]
	xor	BYTE PTR [edx+4], cl
	cmp	ebx, 5
	je	L1016
	movzx	ecx, BYTE PTR [eax+5]
	xor	BYTE PTR [edx+5], cl
	cmp	ebx, 6
	je	L1016
	movzx	ecx, BYTE PTR [eax+6]
	xor	BYTE PTR [edx+6], cl
	cmp	ebx, 7
	je	L1016
	movzx	ecx, BYTE PTR [eax+7]
	xor	BYTE PTR [edx+7], cl
	cmp	ebx, 8
	je	L1016
	movzx	ecx, BYTE PTR [eax+8]
	xor	BYTE PTR [edx+8], cl
	cmp	ebx, 9
	je	L1016
	movzx	ecx, BYTE PTR [eax+9]
	xor	BYTE PTR [edx+9], cl
	cmp	ebx, 10
	je	L1016
	movzx	ecx, BYTE PTR [eax+10]
	xor	BYTE PTR [edx+10], cl
	cmp	ebx, 11
	je	L1016
	movzx	ecx, BYTE PTR [eax+11]
	xor	BYTE PTR [edx+11], cl
	cmp	ebx, 12
	je	L1016
	movzx	ecx, BYTE PTR [eax+12]
	xor	BYTE PTR [edx+12], cl
	cmp	ebx, 13
	je	L1016
	movzx	ecx, BYTE PTR [eax+13]
	xor	BYTE PTR [edx+13], cl
	cmp	ebx, 14
	je	L1016
	movzx	eax, BYTE PTR [eax+14]
	xor	BYTE PTR [edx+14], al
L1016:
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
L1022:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ebx, ecx
	xor	esi, esi
	jmp	L1017
L1074:
	vzeroupper
	jmp	L1016
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
	je	L1076
	.p2align 3
	.p2align 4
	.p2align 3
L1077:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L1077
L1076:
	test	edx, edx
	jne	L1078
	jmp	L1079
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1080:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L1079
L1078:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L1080
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
L1079:
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
	je	L1090
L1091:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L1093
L1090:
	ret
	.p2align 4,,10
	.p2align 3
L1093:
	add	eax, 1
	cmp	edx, eax
	jne	L1091
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
	je	L1104
L1100:
	mov	eax, DWORD PTR [esp+12]
	jmp	L1103
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1102:
	add	eax, 1
	cmp	dl, cl
	je	L1101
L1103:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L1102
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L1100
L1104:
	xor	ebx, ebx
L1101:
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
L1110:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L1110
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
	je	L1125
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
L1115:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L1115
	mov	esi, edx
	sub	eax, ebp
	je	L1113
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	L1135
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1138:
	add	edx, 1
	test	cl, cl
	je	L1137
L1135:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	L1138
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	L1117
	.p2align 4,,10
	.p2align 3
L1139:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	L1118
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	L1118
L1117:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	L1139
L1118:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	L1125
	add	edx, 1
	jmp	L1135
	.p2align 4,,10
	.p2align 3
L1137:
	xor	esi, esi
L1113:
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
L1125:
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
	ja	L1150
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L1151
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L1143
	jmp	L1144
	.p2align 4,,10
	.p2align 3
L1151:
	fstp	st(1)
	fstp	st(1)
L1144:
	ret
	.p2align 4,,10
	.p2align 3
L1150:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L1144
L1143:
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
	je	L1152
	cmp	esi, DWORD PTR [esp+32]
	jb	L1163
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	L1163
	movzx	ebp, BYTE PTR [edi]
	jmp	L1158
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1162:
	mov	edx, ebx
L1154:
	cmp	esi, edx
	jb	L1163
L1158:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	L1162
	cmp	DWORD PTR [esp+32], 1
	je	L1152
L1157:
	mov	eax, 1
	jmp	L1155
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1156:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	L1152
L1155:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	L1156
	cmp	esi, ebx
	jb	L1163
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	L1154
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	L1157
	.p2align 4,,10
	.p2align 3
L1163:
	xor	edx, edx
L1152:
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
	je	L1174
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L1174:
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
	ja	L1203
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L1204
	fstp	st(0)
L1182:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L1189:
	fld	DWORD PTR LC20
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L1189
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L1179
L1206:
	fchs
L1179:
	ret
	.p2align 4,,10
	.p2align 3
L1204:
	fld	DWORD PTR LC20
	fcomip	st, st(2)
	jbe	L1207
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L1195
	jne	L1195
	jmp	L1185
	.p2align 4,,10
	.p2align 3
L1207:
	fstp	st(0)
	jmp	L1185
	.p2align 4,,10
	.p2align 3
L1208:
	fstp	st(0)
L1185:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L1203:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L1205
	fstp	st(1)
	mov	edx, 1
	jmp	L1182
	.p2align 4,,10
	.p2align 3
L1205:
	fld	DWORD PTR LC22
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L1208
	fstp	st(1)
	mov	edx, 1
L1183:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L1191:
	fadd	st, st(0)
	fld	DWORD PTR LC20
	sub	eax, 1
	fcomip	st, st(1)
	ja	L1191
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L1206
	ret
L1195:
	xor	edx, edx
	jmp	L1183
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
	je	L1209
	.p2align 6
	.p2align 4
	.p2align 3
L1211:
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
	jne	L1211
L1209:
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
	jnb	L1239
	mov	ecx, 1
	jmp	L1216
	.p2align 4,,10
	.p2align 3
L1219:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1218
	test	ecx, ecx
	je	L1218
L1216:
	test	edx, edx
	jns	L1219
L1220:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1222:
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
	jne	L1222
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1221:
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
L1218:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1220
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
L1239:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1221
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
	je	L1243
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
L1243:
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
	je	L1248
	test	edi, edi
	je	L1250
	bsr	ebp, edi
	xor	ebp, 31
L1251:
	lea	ecx, [ebp-1]
L1248:
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
L1250:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	L1251
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
	je	L1255
	.p2align 5
	.p2align 4
	.p2align 3
L1257:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1257
L1255:
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+12]
	mov	esi, edi
	mov	eax, edi
	shr	esi, 3
	and	eax, -8
	mov	DWORD PTR [esp+24], esi
	mov	DWORD PTR [esp+28], eax
	cmp	DWORD PTR [ebp+8], edx
	jb	L1266
	lea	ecx, [edx+edi]
	cmp	ecx, DWORD PTR [ebp+8]
	jnb	L1370
L1266:
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	je	L1371
	mov	esi, DWORD PTR [esp+24]
	lea	ecx, [esi-1]
	cmp	ecx, 3
	jbe	L1268
	mov	eax, DWORD PTR [ebp+8]
	lea	ebx, [edx+8]
	sub	eax, ebx
	cmp	eax, 16
	jbe	L1268
	mov	ecx, edi
	mov	ebx, edi
	mov	eax, edx
	shr	ecx, 5
	and	ebx, -32
	mov	DWORD PTR [esp+24], ecx
	mov	ecx, DWORD PTR [ebp+8]
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1269:
	vmovdqu	ymm2, YMMWORD PTR [eax]
	add	eax, 32
	add	ecx, 32
	vmovdqu	YMMWORD PTR [ecx-32], ymm2
	cmp	ebx, eax
	jne	L1269
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+24], esi
	lea	ecx, [0+eax*4]
	mov	DWORD PTR [esp+20], ecx
	cmp	esi, ecx
	je	L1272
	sal	eax, 5
	mov	esi, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [edx+eax]
	mov	ebx, DWORD PTR [edx+4+eax]
	mov	DWORD PTR [esi+eax], ecx
	mov	DWORD PTR [esi+4+eax], ebx
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	lea	ecx, [esi+1]
	cmp	ecx, ebx
	jnb	L1272
	mov	esi, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [edx+8+eax]
	mov	ebx, DWORD PTR [edx+12+eax]
	mov	DWORD PTR [esi+8+eax], ecx
	mov	ecx, DWORD PTR [esp+20]
	mov	DWORD PTR [esi+12+eax], ebx
	mov	esi, DWORD PTR [esp+24]
	add	ecx, 2
	cmp	ecx, esi
	jnb	L1272
	mov	ecx, DWORD PTR [edx+16+eax]
	mov	ebx, DWORD PTR [edx+20+eax]
	mov	esi, DWORD PTR [ebp+8]
	mov	DWORD PTR [esi+16+eax], ecx
	mov	DWORD PTR [esi+20+eax], ebx
L1272:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, edi
	jnb	L1366
	mov	ecx, edi
	sub	ecx, eax
	lea	ebx, [ecx-1]
	mov	DWORD PTR [esp+24], ebx
	cmp	ebx, 14
	jbe	L1372
	mov	ebx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, ebx
	lea	esi, [edx+1+ebx]
	mov	ebx, eax
	sub	ebx, esi
	cmp	ebx, 30
	jbe	L1349
	cmp	DWORD PTR [esp+24], 30
	jbe	L1289
	mov	esi, DWORD PTR [esp+28]
	lea	ebx, [edx+esi]
	mov	esi, ecx
	and	esi, -32
	mov	DWORD PTR [esp+24], esi
	add	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1274:
	vmovdqu	ymm3, YMMWORD PTR [ebx]
	add	ebx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm3
	cmp	ebx, esi
	jne	L1274
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+24]
	add	ebx, esi
	mov	eax, ebx
	cmp	ecx, esi
	je	L1366
	sub	ecx, esi
	lea	esi, [ecx-1]
	cmp	esi, 14
	jbe	L1276
L1273:
	vmovdqu	xmm4, XMMWORD PTR [edx+ebx]
	mov	esi, DWORD PTR [ebp+8]
	vmovdqu	XMMWORD PTR [esi+ebx], xmm4
	mov	ebx, ecx
	and	ebx, -16
	add	eax, ebx
	and	ecx, 15
	je	L1366
L1276:
	movzx	ecx, BYTE PTR [edx+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [eax+1]
	mov	BYTE PTR [esi+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+1+eax]
	lea	ebx, [eax+2]
	mov	BYTE PTR [esi+1+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+2+eax]
	lea	ebx, [eax+3]
	mov	BYTE PTR [esi+2+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+3+eax]
	lea	ebx, [eax+4]
	mov	BYTE PTR [esi+3+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+4+eax]
	lea	ebx, [eax+5]
	mov	BYTE PTR [esi+4+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+5+eax]
	lea	ebx, [eax+6]
	mov	BYTE PTR [esi+5+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+6+eax]
	lea	ebx, [eax+7]
	mov	BYTE PTR [esi+6+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+7+eax]
	lea	ebx, [eax+8]
	mov	BYTE PTR [esi+7+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+8+eax]
	lea	ebx, [eax+9]
	mov	BYTE PTR [esi+8+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+9+eax]
	lea	ebx, [eax+10]
	mov	BYTE PTR [esi+9+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+10+eax]
	lea	ebx, [eax+11]
	mov	BYTE PTR [esi+10+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+11+eax]
	lea	ebx, [eax+12]
	mov	BYTE PTR [esi+11+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+12+eax]
	lea	ebx, [eax+13]
	mov	BYTE PTR [esi+12+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	ecx, BYTE PTR [edx+13+eax]
	lea	ebx, [eax+14]
	mov	BYTE PTR [esi+13+eax], cl
	cmp	ebx, edi
	jnb	L1366
	movzx	edx, BYTE PTR [edx+14+eax]
	mov	BYTE PTR [esi+14+eax], dl
	vzeroupper
	jmp	L1368
	.p2align 4,,10
	.p2align 3
L1366:
	vzeroupper
L1368:
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
L1370:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	L1368
	cmp	eax, 14
	jbe	L1287
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [edx-2+edi]
	add	esi, eax
	sub	esi, ebx
	add	esi, 30
	cmp	esi, 30
	jbe	L1287
	cmp	eax, 30
	jbe	L1281
	lea	esi, [edi-32]
	lea	ecx, [edx+esi]
	add	esi, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+28], esi
	mov	esi, edi
	mov	ebx, ecx
	and	esi, -32
	sub	ebx, esi
	mov	DWORD PTR [esp+24], esi
	mov	esi, ebx
	mov	ebx, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
L1282:
	vmovdqu	ymm0, YMMWORD PTR [ecx]
	sub	ecx, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm0
	cmp	ecx, esi
	jne	L1282
	mov	ecx, DWORD PTR [esp+24]
	sub	eax, ecx
	cmp	edi, ecx
	je	L1366
	sub	edi, ecx
	lea	esi, [edi-1]
	cmp	esi, 14
	jbe	L1367
	vzeroupper
L1281:
	vmovdqu	xmm1, XMMWORD PTR [edx-16+edi]
	mov	ecx, edi
	mov	ebx, DWORD PTR [ebp+8]
	and	ecx, -16
	vmovdqu	XMMWORD PTR [ebx-16+edi], xmm1
	sub	eax, ecx
	and	edi, 15
	je	L1368
	mov	edi, ebx
L1285:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	lea	ebx, [eax-1]
	test	eax, eax
	je	L1368
	movzx	ecx, BYTE PTR [edx-1+eax]
	lea	esi, [eax-2]
	mov	BYTE PTR [edi-1+eax], cl
	test	ebx, ebx
	je	L1368
	movzx	ebx, BYTE PTR [edx-2+eax]
	mov	BYTE PTR [edi-2+eax], bl
	lea	ebx, [eax-3]
	test	esi, esi
	je	L1368
	movzx	ecx, BYTE PTR [edx-3+eax]
	lea	esi, [eax-4]
	mov	BYTE PTR [edi-3+eax], cl
	test	ebx, ebx
	je	L1368
	movzx	ebx, BYTE PTR [edx-4+eax]
	mov	BYTE PTR [edi-4+eax], bl
	lea	ebx, [eax-5]
	test	esi, esi
	je	L1368
	movzx	ecx, BYTE PTR [edx-5+eax]
	lea	esi, [eax-6]
	mov	BYTE PTR [edi-5+eax], cl
	test	ebx, ebx
	je	L1368
	movzx	ebx, BYTE PTR [edx-6+eax]
	mov	BYTE PTR [edi-6+eax], bl
	lea	ebx, [eax-7]
	test	esi, esi
	je	L1368
	movzx	ecx, BYTE PTR [edx-7+eax]
	lea	esi, [eax-8]
	mov	BYTE PTR [edi-7+eax], cl
	test	ebx, ebx
	je	L1368
	movzx	ebx, BYTE PTR [edx-8+eax]
	mov	BYTE PTR [edi-8+eax], bl
	lea	ebx, [eax-9]
	test	esi, esi
	je	L1368
	movzx	ecx, BYTE PTR [edx-9+eax]
	lea	esi, [eax-10]
	mov	BYTE PTR [edi-9+eax], cl
	test	ebx, ebx
	je	L1368
	movzx	ebx, BYTE PTR [edx-10+eax]
	mov	BYTE PTR [edi-10+eax], bl
	lea	ebx, [eax-11]
	test	esi, esi
	je	L1368
	movzx	ecx, BYTE PTR [edx-11+eax]
	lea	esi, [eax-12]
	mov	BYTE PTR [edi-11+eax], cl
	test	ebx, ebx
	je	L1368
	movzx	ebx, BYTE PTR [edx-12+eax]
	mov	BYTE PTR [edi-12+eax], bl
	lea	ebx, [eax-13]
	test	esi, esi
	je	L1368
	movzx	ecx, BYTE PTR [edx-13+eax]
	mov	BYTE PTR [edi-13+eax], cl
	test	ebx, ebx
	je	L1368
	movzx	edx, BYTE PTR [edx-14+eax]
	mov	BYTE PTR [edi-14+eax], dl
	jmp	L1368
L1289:
	mov	eax, DWORD PTR [esp+28]
	mov	ebx, eax
	jmp	L1273
	.p2align 4,,10
	.p2align 3
L1268:
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp+16], edi
	mov	eax, edx
	lea	ebx, [edx+ebx*8]
	.p2align 5
	.p2align 4
	.p2align 3
L1271:
	mov	esi, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+4]
	add	eax, 8
	add	ecx, 8
	mov	DWORD PTR [ecx-8], esi
	mov	DWORD PTR [ecx-4], edi
	cmp	eax, ebx
	jne	L1271
	mov	edi, DWORD PTR [ebp+16]
	jmp	L1272
	.p2align 4,,10
	.p2align 3
L1371:
	mov	eax, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [esp+28]
	add	eax, esi
	test	edi, edi
	je	L1368
L1264:
	mov	ecx, DWORD PTR [esp+28]
	add	ecx, edx
	add	edx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L1278:
	movzx	ebx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	L1278
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
L1349:
	.cfi_restore_state
	vzeroupper
	jmp	L1264
L1287:
	mov	edi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L1347:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	sub	eax, 1
	jnb	L1347
	jmp	L1368
L1367:
	vzeroupper
	mov	edi, DWORD PTR [ebp+8]
	jmp	L1285
L1372:
	mov	eax, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [esp+28]
	add	eax, esi
	vzeroupper
	jmp	L1264
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
	jb	L1377
	mov	eax, DWORD PTR [ebp+16]
	add	eax, ecx
	cmp	eax, ebx
	jnb	L1461
L1377:
	test	esi, esi
	je	L1376
	lea	eax, [esi-1]
	cmp	eax, 6
	jbe	L1380
	lea	edi, [ecx+2]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 28
	jbe	L1380
	cmp	eax, 14
	jbe	L1397
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
L1382:
	vmovdqu	ymm2, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm2
	cmp	eax, edi
	jne	L1382
	mov	eax, DWORD PTR [esp+28]
	sal	eax, 4
	cmp	esi, eax
	je	L1454
	mov	edx, esi
	sub	edx, eax
	lea	edi, [edx-1]
	cmp	edi, 6
	jbe	L1462
	vzeroupper
L1381:
	vmovdqu	xmm3, XMMWORD PTR [ecx+eax*2]
	mov	edi, edx
	and	edi, -8
	vmovdqu	XMMWORD PTR [ebx+eax*2], xmm3
	add	eax, edi
	and	edx, 7
	je	L1376
L1384:
	movzx	edi, WORD PTR [ecx+eax*2]
	lea	edx, [eax+eax]
	mov	WORD PTR [ebx+eax*2], di
	lea	edi, [eax+1]
	cmp	edi, esi
	jnb	L1376
	movzx	edi, WORD PTR [ecx+2+edx]
	mov	WORD PTR [ebx+2+edx], di
	lea	edi, [eax+2]
	cmp	edi, esi
	jnb	L1376
	movzx	edi, WORD PTR [ecx+4+edx]
	mov	WORD PTR [ebx+4+edx], di
	lea	edi, [eax+3]
	cmp	edi, esi
	jnb	L1376
	movzx	edi, WORD PTR [ecx+6+edx]
	mov	WORD PTR [ebx+6+edx], di
	lea	edi, [eax+4]
	cmp	edi, esi
	jnb	L1376
	movzx	edi, WORD PTR [ecx+8+edx]
	mov	WORD PTR [ebx+8+edx], di
	lea	edi, [eax+5]
	cmp	edi, esi
	jnb	L1376
	movzx	edi, WORD PTR [ecx+10+edx]
	add	eax, 6
	mov	WORD PTR [ebx+10+edx], di
	cmp	eax, esi
	jnb	L1376
	movzx	esi, WORD PTR [ecx+12+edx]
	mov	WORD PTR [ebx+12+edx], si
L1376:
	test	BYTE PTR [ebp+16], 1
	je	L1458
L1463:
	mov	eax, DWORD PTR [ebp+16]
	movzx	edx, BYTE PTR [ecx-1+eax]
	mov	ecx, DWORD PTR [ebp+16]
	mov	BYTE PTR [ebx-1+ecx], dl
L1458:
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
L1461:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+16]
	sub	eax, 1
	test	edx, edx
	je	L1458
	cmp	eax, 14
	jbe	L1453
	mov	esi, DWORD PTR [ebp+16]
	lea	edi, [ebx+eax]
	lea	edx, [ecx-2+esi]
	sub	edi, edx
	add	edi, 30
	cmp	edi, 30
	jbe	L1453
	cmp	eax, 30
	jbe	L1390
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
L1391:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	sub	edx, 32
	sub	esi, 32
	vmovdqu	YMMWORD PTR [esi+32], ymm0
	cmp	edx, edi
	jne	L1391
	mov	edx, DWORD PTR [esp+24]
	sub	eax, edx
	cmp	DWORD PTR [ebp+16], edx
	je	L1456
	sub	DWORD PTR [ebp+16], edx
	mov	edi, DWORD PTR [ebp+16]
	lea	esi, [edi-1]
	cmp	esi, 14
	jbe	L1457
	vzeroupper
L1390:
	mov	edi, DWORD PTR [ebp+16]
	vmovdqu	xmm1, XMMWORD PTR [ecx-16+edi]
	mov	edx, edi
	and	edx, -16
	vmovdqu	XMMWORD PTR [ebx-16+edi], xmm1
	sub	eax, edx
	and	edi, 15
	je	L1458
L1393:
	movzx	edx, BYTE PTR [ecx+eax]
	lea	esi, [eax-1]
	mov	BYTE PTR [ebx+eax], dl
	test	eax, eax
	je	L1458
	movzx	edx, BYTE PTR [ecx-1+eax]
	lea	edi, [eax-2]
	mov	BYTE PTR [ebx-1+eax], dl
	test	esi, esi
	je	L1458
	movzx	edx, BYTE PTR [ecx-2+eax]
	lea	esi, [eax-3]
	mov	BYTE PTR [ebx-2+eax], dl
	test	edi, edi
	je	L1458
	movzx	edx, BYTE PTR [ecx-3+eax]
	lea	edi, [eax-4]
	mov	BYTE PTR [ebx-3+eax], dl
	test	esi, esi
	je	L1458
	movzx	edx, BYTE PTR [ecx-4+eax]
	lea	esi, [eax-5]
	mov	BYTE PTR [ebx-4+eax], dl
	test	edi, edi
	je	L1458
	movzx	edx, BYTE PTR [ecx-5+eax]
	lea	edi, [eax-6]
	mov	BYTE PTR [ebx-5+eax], dl
	test	esi, esi
	je	L1458
	movzx	edx, BYTE PTR [ecx-6+eax]
	lea	esi, [eax-7]
	mov	BYTE PTR [ebx-6+eax], dl
	test	edi, edi
	je	L1458
	movzx	edx, BYTE PTR [ecx-7+eax]
	lea	edi, [eax-8]
	mov	BYTE PTR [ebx-7+eax], dl
	test	esi, esi
	je	L1458
	movzx	edx, BYTE PTR [ecx-8+eax]
	lea	esi, [eax-9]
	mov	BYTE PTR [ebx-8+eax], dl
	test	edi, edi
	je	L1458
	movzx	edx, BYTE PTR [ecx-9+eax]
	lea	edi, [eax-10]
	mov	BYTE PTR [ebx-9+eax], dl
	test	esi, esi
	je	L1458
	movzx	edx, BYTE PTR [ecx-10+eax]
	lea	esi, [eax-11]
	mov	BYTE PTR [ebx-10+eax], dl
	test	edi, edi
	je	L1458
	movzx	edx, BYTE PTR [ecx-11+eax]
	lea	edi, [eax-12]
	mov	BYTE PTR [ebx-11+eax], dl
	test	esi, esi
	je	L1458
	movzx	edx, BYTE PTR [ecx-12+eax]
	lea	esi, [eax-13]
	mov	BYTE PTR [ebx-12+eax], dl
	test	edi, edi
	je	L1458
	movzx	edx, BYTE PTR [ecx-13+eax]
	mov	BYTE PTR [ebx-13+eax], dl
	test	esi, esi
	je	L1458
	movzx	ecx, BYTE PTR [ecx-14+eax]
	mov	BYTE PTR [ebx-14+eax], cl
	jmp	L1458
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1453:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jb	L1458
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	L1453
	jmp	L1458
L1397:
	mov	edx, esi
	xor	eax, eax
	jmp	L1381
	.p2align 4,,10
	.p2align 3
L1380:
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
L1386:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	esi, eax
	jne	L1386
	test	BYTE PTR [ebp+16], 1
	je	L1458
	jmp	L1463
L1462:
	vzeroupper
	jmp	L1384
L1454:
	vzeroupper
	jmp	L1376
L1457:
	vzeroupper
	jmp	L1393
L1456:
	vzeroupper
	jmp	L1458
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
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	and	eax, -4
	shr	esi, 2
	mov	DWORD PTR [esp+28], eax
	cmp	edi, edx
	jb	L1469
	mov	ecx, DWORD PTR [ebp+16]
	add	ecx, edx
	cmp	ecx, edi
	jnb	L1581
L1469:
	test	esi, esi
	je	L1582
	lea	eax, [esi-1]
	cmp	eax, 2
	jbe	L1471
	lea	ebx, [edx+4]
	mov	ecx, edi
	sub	ecx, ebx
	cmp	ecx, 24
	jbe	L1471
	cmp	eax, 6
	jbe	L1495
	mov	ebx, DWORD PTR [ebp+16]
	mov	eax, edx
	mov	ecx, edi
	shr	ebx, 5
	mov	DWORD PTR [esp+24], ebx
	mov	ebx, DWORD PTR [ebp+16]
	and	ebx, -32
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1473:
	vmovdqu	ymm2, YMMWORD PTR [eax]
	add	eax, 32
	add	ecx, 32
	vmovdqu	YMMWORD PTR [ecx-32], ymm2
	cmp	ebx, eax
	jne	L1473
	mov	eax, DWORD PTR [esp+24]
	sal	eax, 3
	cmp	esi, eax
	je	L1478
	mov	ecx, esi
	sub	ecx, eax
	lea	ebx, [ecx-1]
	cmp	ebx, 2
	jbe	L1475
L1472:
	vmovdqu	xmm3, XMMWORD PTR [edx+eax*4]
	mov	ebx, ecx
	and	ebx, -4
	vmovdqu	XMMWORD PTR [edi+eax*4], xmm3
	add	eax, ebx
	and	ecx, 3
	je	L1478
L1475:
	mov	ebx, DWORD PTR [edx+eax*4]
	lea	ecx, [0+eax*4]
	mov	DWORD PTR [edi+eax*4], ebx
	lea	ebx, [eax+1]
	cmp	ebx, esi
	jnb	L1478
	mov	ebx, DWORD PTR [edx+4+ecx]
	add	eax, 2
	mov	DWORD PTR [edi+4+ecx], ebx
	cmp	eax, esi
	jnb	L1478
	mov	esi, DWORD PTR [edx+8+ecx]
	mov	DWORD PTR [edi+8+ecx], esi
L1478:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [ebp+16]
	jnb	L1576
	mov	ecx, DWORD PTR [ebp+16]
	sub	ecx, eax
	lea	ebx, [ecx-1]
	mov	DWORD PTR [esp+24], ebx
	cmp	ebx, 14
	jbe	L1583
	mov	esi, DWORD PTR [esp+28]
	lea	eax, [edi+esi]
	lea	esi, [edx+1+esi]
	mov	ebx, eax
	sub	ebx, esi
	cmp	ebx, 30
	jbe	L1559
	cmp	DWORD PTR [esp+24], 30
	jbe	L1496
	mov	esi, DWORD PTR [esp+28]
	lea	ebx, [edx+esi]
	mov	esi, ecx
	and	esi, -32
	mov	DWORD PTR [esp+24], esi
	add	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1480:
	vmovdqu	ymm4, YMMWORD PTR [ebx]
	add	ebx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm4
	cmp	esi, ebx
	jne	L1480
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+24]
	add	ebx, esi
	mov	eax, ebx
	cmp	ecx, esi
	je	L1576
	sub	ecx, esi
	lea	esi, [ecx-1]
	cmp	esi, 14
	jbe	L1482
L1479:
	vmovdqu	xmm5, XMMWORD PTR [edx+ebx]
	vmovdqu	XMMWORD PTR [edi+ebx], xmm5
	mov	ebx, ecx
	and	ebx, -16
	add	eax, ebx
	and	ecx, 15
	je	L1576
L1482:
	movzx	ecx, BYTE PTR [edx+eax]
	lea	esi, [eax+1]
	mov	BYTE PTR [edi+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ebx, BYTE PTR [edx+1+eax]
	lea	ecx, [eax+2]
	mov	BYTE PTR [edi+1+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ebx, BYTE PTR [edx+2+eax]
	lea	esi, [eax+3]
	mov	BYTE PTR [edi+2+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ecx, BYTE PTR [edx+3+eax]
	lea	ebx, [eax+4]
	mov	BYTE PTR [edi+3+eax], cl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ecx, BYTE PTR [edx+4+eax]
	lea	esi, [eax+5]
	mov	BYTE PTR [edi+4+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ebx, BYTE PTR [edx+5+eax]
	lea	ecx, [eax+6]
	mov	BYTE PTR [edi+5+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ebx, BYTE PTR [edx+6+eax]
	lea	esi, [eax+7]
	mov	BYTE PTR [edi+6+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ecx, BYTE PTR [edx+7+eax]
	lea	ebx, [eax+8]
	mov	BYTE PTR [edi+7+eax], cl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ecx, BYTE PTR [edx+8+eax]
	lea	esi, [eax+9]
	mov	BYTE PTR [edi+8+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ebx, BYTE PTR [edx+9+eax]
	lea	ecx, [eax+10]
	mov	BYTE PTR [edi+9+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ebx, BYTE PTR [edx+10+eax]
	lea	esi, [eax+11]
	mov	BYTE PTR [edi+10+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ecx, BYTE PTR [edx+11+eax]
	lea	ebx, [eax+12]
	mov	BYTE PTR [edi+11+eax], cl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ecx, BYTE PTR [edx+12+eax]
	lea	esi, [eax+13]
	mov	BYTE PTR [edi+12+eax], cl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	ebx, BYTE PTR [edx+13+eax]
	lea	ecx, [eax+14]
	mov	BYTE PTR [edi+13+eax], bl
	cmp	ecx, DWORD PTR [ebp+16]
	jnb	L1576
	movzx	edx, BYTE PTR [edx+14+eax]
	mov	BYTE PTR [edi+14+eax], dl
	vzeroupper
L1578:
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
L1581:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+16]
	sub	eax, 1
	test	ebx, ebx
	je	L1578
	cmp	eax, 14
	jbe	L1557
	mov	esi, DWORD PTR [ebp+16]
	lea	ecx, [edi+eax]
	lea	ebx, [edx-2+esi]
	sub	ecx, ebx
	add	ecx, 30
	cmp	ecx, 30
	jbe	L1557
	cmp	eax, 30
	jbe	L1487
	lea	esi, [esi-32]
	lea	ebx, [esi+edi]
	lea	ecx, [edx+esi]
	mov	esi, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+28], ebx
	mov	ebx, ecx
	and	esi, -32
	sub	ebx, esi
	mov	DWORD PTR [esp+24], esi
	mov	esi, ebx
	mov	ebx, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
L1488:
	vmovdqu	ymm0, YMMWORD PTR [ecx]
	sub	ecx, 32
	sub	ebx, 32
	vmovdqu	YMMWORD PTR [ebx+32], ymm0
	cmp	esi, ecx
	jne	L1488
	mov	ecx, DWORD PTR [esp+24]
	sub	eax, ecx
	cmp	DWORD PTR [ebp+16], ecx
	je	L1576
	sub	DWORD PTR [ebp+16], ecx
	mov	esi, DWORD PTR [ebp+16]
	lea	ebx, [esi-1]
	cmp	ebx, 14
	jbe	L1577
	vzeroupper
L1487:
	mov	esi, DWORD PTR [ebp+16]
	vmovdqu	xmm1, XMMWORD PTR [edx-16+esi]
	mov	ecx, esi
	and	ecx, -16
	vmovdqu	XMMWORD PTR [edi-16+esi], xmm1
	sub	eax, ecx
	and	esi, 15
	je	L1578
L1491:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	lea	ebx, [eax-1]
	test	eax, eax
	je	L1578
	movzx	ecx, BYTE PTR [edx-1+eax]
	lea	esi, [eax-2]
	mov	BYTE PTR [edi-1+eax], cl
	test	ebx, ebx
	je	L1578
	movzx	ebx, BYTE PTR [edx-2+eax]
	mov	BYTE PTR [edi-2+eax], bl
	lea	ebx, [eax-3]
	test	esi, esi
	je	L1578
	movzx	ecx, BYTE PTR [edx-3+eax]
	lea	esi, [eax-4]
	mov	BYTE PTR [edi-3+eax], cl
	test	ebx, ebx
	je	L1578
	movzx	ebx, BYTE PTR [edx-4+eax]
	mov	BYTE PTR [edi-4+eax], bl
	lea	ebx, [eax-5]
	test	esi, esi
	je	L1578
	movzx	ecx, BYTE PTR [edx-5+eax]
	lea	esi, [eax-6]
	mov	BYTE PTR [edi-5+eax], cl
	test	ebx, ebx
	je	L1578
	movzx	ebx, BYTE PTR [edx-6+eax]
	mov	BYTE PTR [edi-6+eax], bl
	lea	ebx, [eax-7]
	test	esi, esi
	je	L1578
	movzx	ecx, BYTE PTR [edx-7+eax]
	lea	esi, [eax-8]
	mov	BYTE PTR [edi-7+eax], cl
	test	ebx, ebx
	je	L1578
	movzx	ebx, BYTE PTR [edx-8+eax]
	mov	BYTE PTR [edi-8+eax], bl
	lea	ebx, [eax-9]
	test	esi, esi
	je	L1578
	movzx	ecx, BYTE PTR [edx-9+eax]
	lea	esi, [eax-10]
	mov	BYTE PTR [edi-9+eax], cl
	test	ebx, ebx
	je	L1578
	movzx	ebx, BYTE PTR [edx-10+eax]
	mov	BYTE PTR [edi-10+eax], bl
	lea	ebx, [eax-11]
	test	esi, esi
	je	L1578
	movzx	ecx, BYTE PTR [edx-11+eax]
	lea	esi, [eax-12]
	mov	BYTE PTR [edi-11+eax], cl
	test	ebx, ebx
	je	L1578
	movzx	ebx, BYTE PTR [edx-12+eax]
	mov	BYTE PTR [edi-12+eax], bl
	lea	ebx, [eax-13]
	test	esi, esi
	je	L1578
	movzx	ecx, BYTE PTR [edx-13+eax]
	mov	BYTE PTR [edi-13+eax], cl
	test	ebx, ebx
	je	L1578
	movzx	edx, BYTE PTR [edx-14+eax]
	mov	BYTE PTR [edi-14+eax], dl
	jmp	L1578
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1557:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	sub	eax, 1
	jb	L1578
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [edi+eax], bl
	sub	eax, 1
	jnb	L1557
	jmp	L1578
	.p2align 4,,10
	.p2align 3
L1576:
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
L1495:
	.cfi_restore_state
	mov	ecx, esi
	xor	eax, eax
	jmp	L1472
	.p2align 4,,10
	.p2align 3
L1471:
	mov	eax, edx
	mov	ecx, edi
	lea	ebx, [edx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L1477:
	mov	esi, DWORD PTR [eax]
	add	eax, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], esi
	cmp	eax, ebx
	jne	L1477
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L1582:
	mov	eax, DWORD PTR [esp+28]
	add	eax, edi
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	L1578
L1467:
	mov	edi, DWORD PTR [esp+28]
	add	edi, edx
	add	edx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1484:
	movzx	ebx, BYTE PTR [edi]
	add	edi, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	edx, edi
	jne	L1484
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
L1559:
	.cfi_restore_state
	vzeroupper
	jmp	L1467
L1496:
	mov	eax, DWORD PTR [esp+28]
	mov	ebx, eax
	jmp	L1479
L1577:
	vzeroupper
	jmp	L1491
L1583:
	mov	eax, DWORD PTR [esp+28]
	add	eax, edi
	vzeroupper
	jmp	L1467
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
	vmovd	xmm0, DWORD PTR [esp+16]
	vmovq	QWORD PTR [esp], xmm0
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
	vmovd	xmm0, DWORD PTR [esp+16]
	vmovq	QWORD PTR [esp], xmm0
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
	vmovd	xmm0, eax
	vpinsrd	xmm1, xmm0, edx, 1
	vmovq	QWORD PTR [esp+8], xmm1
	fild	QWORD PTR [esp+8]
	test	edx, edx
	jns	L1590
	fld	DWORD PTR LC24
	faddp	st(1), st
L1590:
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
	vmovd	xmm0, eax
	vpinsrd	xmm1, xmm0, edx, 1
	vmovq	QWORD PTR [esp+8], xmm1
	fild	QWORD PTR [esp+8]
	test	edx, edx
	jns	L1593
	fld	DWORD PTR LC24
	faddp	st(1), st
L1593:
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	eax, 1
	vpxor	xmm7, xmm7, xmm7
	vmovdqa	ymm1, YMMWORD PTR LC25
	vmovd	xmm3, eax
	vpbroadcastd	ymm5, xmm3
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	movzx	edx, WORD PTR [ebp+8]
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	vmovd	xmm0, edx
	vpbroadcastd	ymm4, xmm0
	vpsravd	ymm2, ymm4, ymm1
	vpand	ymm6, ymm2, ymm5
	vpcmpeqd	ymm0, ymm6, ymm7
	vpcmpeqd	ymm1, ymm0, ymm7
	vptest	ymm1, ymm1
	jne	L1602
	vmovdqa	ymm2, YMMWORD PTR LC26
	vpsravd	ymm4, ymm4, ymm2
	vpand	ymm3, ymm4, ymm5
	vpcmpeqd	ymm5, ymm3, ymm7
	vpcmpeqd	ymm6, ymm5, ymm7
	vptest	ymm6, ymm6
	jne	L1603
L1609:
	mov	eax, 16
L1596:
	vzeroupper
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
L1602:
	.cfi_restore_state
	vmovdqa	ymm7, YMMWORD PTR LC4
	vmovdqa	ymm0, YMMWORD PTR LC9
L1597:
	vmovd	ebx, xmm0
	mov	ecx, 15
	vmovd	esi, xmm7
	sub	ecx, ebx
	bt	edx, ecx
	jc	L1616
	lea	eax, [ebx+1]
	mov	ecx, 15
	sub	ecx, eax
	bt	edx, ecx
	jc	L1596
	lea	eax, [ebx+2]
	cmp	esi, 2
	je	L1609
	mov	edi, 15
	sub	edi, eax
	mov	ecx, edi
	bt	edx, ecx
	jc	L1596
	lea	eax, [ebx+3]
	cmp	esi, 3
	je	L1609
	mov	ecx, 15
	sub	ecx, eax
	bt	edx, ecx
	jc	L1596
	lea	eax, [ebx+4]
	cmp	esi, 4
	je	L1609
	mov	edi, 15
	sub	edi, eax
	mov	ecx, edi
	bt	edx, ecx
	jc	L1596
	lea	eax, [ebx+5]
	cmp	esi, 5
	je	L1609
	mov	ecx, 15
	sub	ecx, eax
	bt	edx, ecx
	jc	L1596
	lea	eax, [ebx+6]
	cmp	esi, 6
	je	L1609
	mov	edi, 15
	sub	edi, eax
	mov	ecx, edi
	bt	edx, ecx
	jc	L1596
	lea	eax, [ebx+7]
	cmp	esi, 7
	je	L1609
	mov	ebx, 15
	sub	ebx, eax
	bt	edx, ebx
	mov	edx, 16
	vzeroupper
	cmovnc	eax, edx
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
L1603:
	.cfi_restore_state
	vmovdqa	ymm7, YMMWORD PTR LC10
	vmovdqa	ymm0, YMMWORD PTR LC7
	jmp	L1597
L1616:
	mov	eax, ebx
	jmp	L1596
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	___ctzhi2
	.def	___ctzhi2;	.scl	2;	.type	32;	.endef
___ctzhi2:
LFB117:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	eax, 1
	vpxor	xmm2, xmm2, xmm2
	vmovdqa	ymm4, YMMWORD PTR LC9
	vmovd	xmm3, eax
	vpbroadcastd	ymm6, xmm3
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	movzx	ecx, WORD PTR [ebp+8]
	vmovd	xmm0, ecx
	vpbroadcastd	ymm5, xmm0
	vpsravd	ymm1, ymm5, ymm4
	vpand	ymm7, ymm1, ymm6
	vpcmpeqd	ymm0, ymm7, ymm2
	vpcmpeqd	ymm1, ymm0, ymm2
	vptest	ymm1, ymm1
	jne	L1623
	vmovdqa	ymm4, YMMWORD PTR LC7
	vpsravd	ymm5, ymm5, ymm4
	vpand	ymm3, ymm5, ymm6
	vpcmpeqd	ymm6, ymm3, ymm2
	vpcmpeqd	ymm7, ymm6, ymm2
	vptest	ymm7, ymm7
	jne	L1624
L1630:
	mov	eax, 16
L1617:
	vzeroupper
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
L1623:
	.cfi_restore_state
	vmovdqa	ymm2, YMMWORD PTR LC4
L1618:
	vmovd	edx, xmm4
	vmovd	ebx, xmm2
	bt	ecx, edx
	jc	L1637
	lea	eax, [edx+1]
	bt	ecx, eax
	jc	L1617
	lea	eax, [edx+2]
	cmp	ebx, 2
	je	L1630
	bt	ecx, eax
	jc	L1617
	lea	eax, [edx+3]
	cmp	ebx, 3
	je	L1630
	bt	ecx, eax
	jc	L1617
	lea	eax, [edx+4]
	cmp	ebx, 4
	je	L1630
	bt	ecx, eax
	jc	L1617
	lea	eax, [edx+5]
	cmp	ebx, 5
	je	L1630
	bt	ecx, eax
	jc	L1617
	lea	eax, [edx+6]
	cmp	ebx, 6
	je	L1630
	bt	ecx, eax
	jc	L1617
	lea	eax, [edx+7]
	cmp	ebx, 7
	je	L1630
	mov	ebx, 16
	bt	ecx, eax
	cmovnc	eax, ebx
	vzeroupper
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
L1624:
	.cfi_restore_state
	vmovdqa	ymm2, YMMWORD PTR LC10
	jmp	L1618
L1637:
	mov	eax, edx
	jmp	L1617
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
	fld	DWORD PTR LC27
	fld	DWORD PTR [esp+8]
	fcomi	st, st(1)
	jnb	L1645
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1645:
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
	vmovdqa	ymm1, YMMWORD PTR LC9
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vmovdqa	ymm7, YMMWORD PTR LC7
	vmovd	xmm2, edx
	vpbroadcastd	ymm5, xmm2
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	vmovd	xmm0, eax
	vpbroadcastd	ymm4, xmm0
	vpsravd	ymm3, ymm4, ymm1
	vpsravd	ymm0, ymm4, ymm7
	vpand	ymm6, ymm3, ymm5
	vpand	ymm4, ymm0, ymm5
	vpaddd	ymm1, ymm6, ymm4
	vextracti128	xmm3, ymm1, 0x1
	vpaddd	xmm2, xmm3, xmm1
	vpsrldq	xmm5, xmm2, 8
	vpaddd	xmm6, xmm2, xmm5
	vpsrldq	xmm7, xmm6, 4
	vpaddd	xmm0, xmm6, xmm7
	vmovd	eax, xmm0
	and	eax, 1
	vzeroupper
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE119:
	.p2align 4
	.globl	___popcounthi2
	.def	___popcounthi2;	.scl	2;	.type	32;	.endef
___popcounthi2:
LFB120:
	.cfi_startproc
	vmovdqa	ymm1, YMMWORD PTR LC9
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vmovdqa	ymm7, YMMWORD PTR LC7
	vmovd	xmm2, edx
	vpbroadcastd	ymm5, xmm2
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	vmovd	xmm0, eax
	vpbroadcastd	ymm4, xmm0
	vpsravd	ymm3, ymm4, ymm1
	vpsravd	ymm0, ymm4, ymm7
	vpand	ymm6, ymm3, ymm5
	vpand	ymm4, ymm0, ymm5
	vpaddd	ymm1, ymm6, ymm4
	vextracti128	xmm3, ymm1, 0x1
	vpaddd	xmm2, xmm3, xmm1
	vpsrldq	xmm5, xmm2, 8
	vpaddd	xmm6, xmm2, xmm5
	vpsrldq	xmm7, xmm6, 4
	vpaddd	xmm0, xmm6, xmm7
	vmovd	eax, xmm0
	vzeroupper
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	je	L1650
	.p2align 5
	.p2align 4
	.p2align 3
L1652:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1652
L1650:
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
	je	L1656
	test	edx, edx
	je	L1656
	.p2align 5
	.p2align 4
	.p2align 3
L1658:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1658
L1656:
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
	jnb	L1688
	mov	ecx, 1
	jmp	L1665
	.p2align 4,,10
	.p2align 3
L1668:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1667
	test	ecx, ecx
	je	L1667
L1665:
	test	edx, edx
	jns	L1668
L1669:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1671:
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
	jne	L1671
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1670:
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
L1667:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1669
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
L1688:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1670
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
	ja	L1695
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1692
	.p2align 4,,10
	.p2align 3
L1695:
	fstp	st(0)
	fstp	st(0)
L1692:
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
	ja	L1699
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1696
	.p2align 4,,10
	.p2align 3
L1699:
	fstp	st(0)
	fstp	st(0)
L1696:
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
	js	L1712
	je	L1707
	xor	edi, edi
L1704:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L1706:
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
	jne	L1706
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
L1712:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L1704
	.p2align 4,,10
	.p2align 3
L1707:
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
	jns	L1714
	neg	ebx
	xor	eax, eax
	mov	edi, 1
L1714:
	test	esi, esi
	jns	L1715
	neg	esi
	mov	edi, eax
L1715:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	L1716
	jmp	L1740
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1746:
	test	eax, eax
	je	L1721
L1716:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	L1746
L1721:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	L1741
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
L1718:
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
	jne	L1718
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
L1719:
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
L1741:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	L1719
L1740:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	L1719
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
	jns	L1748
	neg	ebx
	mov	esi, 1
L1748:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	L1749
	jmp	L1773
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1777:
	test	edx, edx
	je	L1769
L1749:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	L1777
	test	edx, edx
	je	L1769
	.p2align 4
	.p2align 4
	.p2align 3
L1751:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L1751
L1752:
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
L1769:
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
L1773:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	L1752
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
	jb	L1779
	jmp	L1847
	.p2align 4,,10
	.p2align 3
L1782:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	L1781
	test	ax, ax
	je	L1781
	mov	ecx, eax
	mov	edx, ebx
L1779:
	test	dx, dx
	jns	L1782
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
	je	L1848
L1786:
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	je	L1784
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
	jns	L1784
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
L1784:
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
L1781:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	L1784
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
	jmp	L1786
L1847:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	L1784
L1848:
	mov	WORD PTR [esp+2], ax
	jmp	L1784
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
	jnb	L1873
	mov	ecx, 1
	jmp	L1850
	.p2align 4,,10
	.p2align 3
L1853:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1852
	test	ecx, ecx
	je	L1852
L1850:
	test	edx, edx
	jns	L1853
L1854:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1856:
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
	jne	L1856
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1855:
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
L1852:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1854
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
L1873:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1855
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
	je	L1878
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
L1878:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1881
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
L1881:
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
	je	L1884
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
L1884:
	.cfi_restore_state
	test	ebx, ebx
	je	L1887
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
L1887:
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
	jl	L1893
	mov	eax, 2
	jg	L1893
	xor	eax, eax
	cmp	edx, ecx
	jb	L1893
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1893:
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
	jl	L1900
	mov	eax, 1
	jg	L1900
	mov	eax, -1
	cmp	edx, ecx
	jb	L1900
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1900:
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
	je	L1909
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
L1909:
	.cfi_restore_state
	test	ebx, ebx
	je	L1912
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
L1912:
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
	je	L1925
	jmp	L1927
	.p2align 4,,10
	.p2align 3
L1932:
	fxch	st(1)
	jmp	L1927
	.p2align 4,,10
	.p2align 3
L1933:
	fxch	st(1)
L1927:
	fmul	st, st(1)
L1925:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1926
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1932
L1931:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1933
	jmp	L1931
	.p2align 4,,10
	.p2align 3
L1926:
	fstp	st(1)
	test	ecx, ecx
	jns	L1924
	fld1
	fdivrp	st(1), st
L1924:
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
	je	L1935
	jmp	L1937
	.p2align 4,,10
	.p2align 3
L1942:
	fxch	st(1)
	jmp	L1937
	.p2align 4,,10
	.p2align 3
L1943:
	fxch	st(1)
L1937:
	fmul	st, st(1)
L1935:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1936
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1942
L1941:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1943
	jmp	L1941
	.p2align 4,,10
	.p2align 3
L1936:
	fstp	st(1)
	test	ecx, ecx
	jns	L1934
	fld1
	fdivrp	st(1), st
L1934:
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
	jb	L1944
	mov	eax, 2
	cmp	ecx, edx
	jb	L1944
	xor	eax, eax
	cmp	ebx, esi
	jb	L1944
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1944:
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
	jb	L1951
	mov	eax, 1
	cmp	ecx, edx
	jb	L1951
	mov	eax, -1
	cmp	ebx, esi
	jb	L1951
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1951:
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
	.align 32
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
	.set	LC1,LC0
	.align 32
LC4:
	.long	16
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.align 32
LC5:
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.align 32
LC6:
	.long	24
	.long	23
	.long	22
	.long	21
	.long	20
	.long	19
	.long	18
	.long	17
	.align 32
LC7:
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 32
LC8:
	.long	32
	.long	31
	.long	30
	.long	29
	.long	28
	.long	27
	.long	26
	.long	25
	.align 32
LC9:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
LC10:
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.align 32
LC11:
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.align 4
LC13:
	.long	-8388609
	.align 4
LC14:
	.long	2139095039
	.align 8
LC15:
	.long	-1
	.long	-1048577
	.align 8
LC16:
	.long	-1
	.long	2146435071
	.align 16
LC17:
	.long	-1
	.long	-1
	.long	65534
	.align 16
LC18:
	.long	-1
	.long	-1
	.long	32766
	.align 4
LC19:
	.long	1073741824
	.align 4
LC20:
	.long	1056964608
	.align 4
LC22:
	.long	-1090519040
	.align 4
LC24:
	.long	1602224128
	.align 32
LC25:
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.align 32
LC26:
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.align 4
LC27:
	.long	1191182336
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
