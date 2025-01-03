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
	mov	edi, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	ecx, edi
	jnb	L2
	test	eax, eax
	je	L3
	lea	edx, [eax-1]
	cmp	edx, 2
	jbe	L96
	lea	esi, [ecx-2+eax]
	mov	ebx, edi
	sub	ebx, esi
	lea	esi, [ebx+14+edx]
	cmp	esi, 14
	jbe	L96
	lea	ebx, [ecx+eax]
	lea	esi, [edi+eax]
	mov	DWORD PTR [esp+24], ebx
	mov	DWORD PTR [esp+28], esi
	cmp	edx, 14
	jbe	L22
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
L6:
	vmovdqu	xmm2, XMMWORD PTR [edx]
	sub	edx, 16
	sub	ebx, 16
	vmovdqu	XMMWORD PTR [ebx+16], xmm2
	cmp	esi, edx
	jne	L6
	mov	esi, DWORD PTR [esp+20]
	mov	edx, eax
	sub	DWORD PTR [esp+24], esi
	sub	DWORD PTR [esp+28], esi
	sub	edx, esi
	cmp	eax, esi
	je	L3
	lea	ebx, [edx-1]
	mov	eax, edx
	cmp	ebx, 2
	jbe	L8
L5:
	lea	ebx, [eax-4]
	mov	esi, eax
	add	ecx, ebx
	shr	esi, 2
	add	ebx, edi
	vmovd	xmm3, DWORD PTR [ecx]
	vmovd	DWORD PTR [ebx], xmm3
	cmp	esi, 1
	je	L9
	vmovd	xmm4, DWORD PTR [ecx-4]
	vmovd	DWORD PTR [ebx-4], xmm4
	cmp	esi, 2
	je	L9
	mov	ecx, DWORD PTR [ecx-8]
	mov	DWORD PTR [ebx-8], ecx
L9:
	mov	esi, eax
	and	esi, -4
	sub	DWORD PTR [esp+24], esi
	sub	DWORD PTR [esp+28], esi
	sub	edx, esi
	test	al, 3
	je	L3
L8:
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [ebx-1]
	mov	BYTE PTR [ecx-1], al
	cmp	edx, 1
	je	L3
	movzx	eax, BYTE PTR [ebx-2]
	mov	BYTE PTR [ecx-2], al
	cmp	edx, 2
	je	L3
	movzx	edx, BYTE PTR [ebx-3]
	mov	BYTE PTR [ecx-3], dl
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
	cmp	edi, ecx
	je	L3
	test	eax, eax
	je	L3
	lea	ebx, [eax-1]
	lea	edx, [ecx+1]
	cmp	ebx, 14
	jbe	L13
	mov	esi, edi
	sub	esi, edx
	cmp	esi, 30
	jbe	L13
	cmp	ebx, 30
	jbe	L23
	mov	esi, eax
	mov	edx, ecx
	mov	ebx, edi
	and	esi, -32
	mov	DWORD PTR [esp+20], esi
	add	esi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L15:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	add	edx, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	edx, esi
	jne	L15
	mov	ebx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+24], edx
	mov	edx, eax
	sub	edx, ebx
	lea	esi, [edi+ebx]
	mov	DWORD PTR [esp+28], edx
	cmp	eax, ebx
	je	L99
	lea	ebx, [edx-1]
	mov	eax, edx
	cmp	ebx, 14
	jbe	L103
	vzeroupper
L14:
	mov	edx, DWORD PTR [esp+20]
	vmovdqu	xmm1, XMMWORD PTR [ecx+edx]
	mov	ecx, eax
	and	ecx, -16
	add	DWORD PTR [esp+24], ecx
	sub	DWORD PTR [esp+28], ecx
	add	esi, ecx
	vmovdqu	XMMWORD PTR [edi+edx], xmm1
	test	al, 15
	je	L3
L18:
	mov	edx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [esi], al
	cmp	ebx, 1
	je	L3
	movzx	ecx, BYTE PTR [edx+1]
	mov	BYTE PTR [esi+1], cl
	cmp	ebx, 2
	je	L3
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [esi+2], al
	cmp	ebx, 3
	je	L3
	movzx	ecx, BYTE PTR [edx+3]
	mov	BYTE PTR [esi+3], cl
	cmp	ebx, 4
	je	L3
	movzx	eax, BYTE PTR [edx+4]
	mov	BYTE PTR [esi+4], al
	cmp	ebx, 5
	je	L3
	movzx	ecx, BYTE PTR [edx+5]
	mov	BYTE PTR [esi+5], cl
	cmp	ebx, 6
	je	L3
	movzx	eax, BYTE PTR [edx+6]
	mov	BYTE PTR [esi+6], al
	cmp	ebx, 7
	je	L3
	movzx	ecx, BYTE PTR [edx+7]
	mov	BYTE PTR [esi+7], cl
	cmp	ebx, 8
	je	L3
	movzx	eax, BYTE PTR [edx+8]
	mov	BYTE PTR [esi+8], al
	cmp	ebx, 9
	je	L3
	movzx	ecx, BYTE PTR [edx+9]
	mov	BYTE PTR [esi+9], cl
	cmp	ebx, 10
	je	L3
	movzx	eax, BYTE PTR [edx+10]
	mov	BYTE PTR [esi+10], al
	cmp	ebx, 11
	je	L3
	movzx	ecx, BYTE PTR [edx+11]
	mov	BYTE PTR [esi+11], cl
	cmp	ebx, 12
	je	L3
	movzx	eax, BYTE PTR [edx+12]
	mov	BYTE PTR [esi+12], al
	cmp	ebx, 13
	je	L3
	movzx	ecx, BYTE PTR [edx+13]
	mov	BYTE PTR [esi+13], cl
	cmp	ebx, 14
	je	L3
	movzx	edx, BYTE PTR [edx+14]
	mov	BYTE PTR [esi+14], dl
	jmp	L3
	.p2align 5
	.p2align 4,,10
	.p2align 3
L104:
	sub	edx, 1
L96:
	movzx	ebx, BYTE PTR [ecx-1+eax]
	mov	BYTE PTR [edi-1+eax], bl
	mov	eax, edx
	test	edx, edx
	jne	L104
	jmp	L3
	.p2align 4,,10
	.p2align 3
L13:
	add	eax, edi
	mov	esi, edi
	jmp	L20
	.p2align 5
	.p2align 4,,10
	.p2align 3
L105:
	add	edx, 1
L20:
	movzx	ebx, BYTE PTR [edx-1]
	add	esi, 1
	mov	BYTE PTR [esi-1], bl
	cmp	esi, eax
	jne	L105
	jmp	L3
L103:
	vzeroupper
	jmp	L18
L22:
	mov	edx, eax
	jmp	L5
L23:
	mov	DWORD PTR [esp+24], ecx
	mov	esi, edi
	mov	DWORD PTR [esp+28], eax
	mov	DWORD PTR [esp+20], 0
	jmp	L14
L99:
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
	jne	L107
	jmp	L109
	.p2align 5
	.p2align 4,,10
	.p2align 3
L110:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	L109
L107:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	L110
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
L109:
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
	jne	L119
	jmp	L122
	.p2align 4
	.p2align 4,,10
	.p2align 3
L121:
	add	eax, 1
	sub	edx, 1
	je	L122
L119:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L121
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L122:
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
	jne	L128
	jmp	L127
	.p2align 5
	.p2align 4,,10
	.p2align 3
L130:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	L132
L128:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	L130
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L127:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L132:
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
	je	L140
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L140:
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
	jmp	L146
	.p2align 4
	.p2align 4,,10
	.p2align 3
L148:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	L145
L146:
	cmp	eax, ebx
	jne	L148
	xor	edx, edx
L145:
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
	je	L153
	movzx	edx, BYTE PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memset
L153:
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
	je	L156
	.p2align 4
	.p2align 4
	.p2align 3
L157:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L157
L156:
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
	jne	L163
	jmp	L162
	.p2align 4
	.p2align 4,,10
	.p2align 3
L165:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	L162
L163:
	cmp	eax, ecx
	jne	L165
L162:
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
	jmp	L172
	.p2align 4
	.p2align 4,,10
	.p2align 3
L176:
	add	eax, 1
	test	cl, cl
	je	L175
L172:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L176
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L175:
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
	je	L178
	jmp	L179
	.p2align 5
	.p2align 4,,10
	.p2align 3
L180:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	L179
L178:
	test	al, al
	jne	L180
	xor	eax, eax
L179:
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
	je	L189
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
L188:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L188
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L189:
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
	je	L191
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	L195
	jmp	L210
	.p2align 4,,10
	.p2align 3
L212:
	cmp	edx, ebp
	je	L194
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L211
	mov	edx, esi
L195:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	L212
L194:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
L191:
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
L211:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	L194
L210:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	L194
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
	jle	L232
	mov	ebx, ecx
	lea	edx, [ecx-2]
	shr	ebx
	lea	eax, [ebx-1]
	mov	DWORD PTR [esp+12], eax
	cmp	edx, 13
	jbe	L221
	vmovdqa	xmm1, XMMWORD PTR LC0
	mov	esi, ecx
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, edi
	and	ecx, -16
	shr	esi, 4
	add	ecx, edi
	.p2align 5
	.p2align 4
	.p2align 3
L216:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	vpshufb	xmm2, xmm0, xmm1
	vmovdqu	XMMWORD PTR [edx-16], xmm2
	cmp	eax, ecx
	jne	L216
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [0+esi*8]
	sal	esi, 4
	add	edx, esi
	add	esi, edi
	cmp	ebx, eax
	je	L232
L215:
	sub	ebx, eax
	cmp	DWORD PTR [esp+12], eax
	je	L218
	vmovdqa	xmm4, XMMWORD PTR LC1
	add	eax, eax
	mov	ecx, ebx
	add	edi, eax
	shr	ecx
	add	eax, DWORD PTR [ebp+12]
	vmovd	xmm3, DWORD PTR [edi]
	vpshufb	xmm5, xmm3, xmm4
	vmovd	DWORD PTR [eax], xmm5
	cmp	ecx, 1
	je	L219
	vmovd	xmm6, DWORD PTR [edi+4]
	vpshufb	xmm7, xmm6, xmm4
	vmovd	DWORD PTR [eax+4], xmm7
	cmp	ecx, 2
	je	L219
	vmovd	xmm1, DWORD PTR [edi+8]
	vpshufb	xmm0, xmm1, xmm4
	vmovd	DWORD PTR [eax+8], xmm0
L219:
	test	bl, 1
	je	L232
	and	ebx, -2
	add	ebx, ebx
	add	edx, ebx
	add	esi, ebx
L218:
	movbe	di, WORD PTR [esi]
	mov	WORD PTR [edx], di
L232:
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
L221:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+12]
	mov	esi, edi
	xor	eax, eax
	jmp	L215
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
	jbe	L246
	cmp	dx, 31
	jbe	L246
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L244
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L246:
	mov	edx, 1
L244:
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
	jbe	L256
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L252
	cmp	ax, 8231
	jbe	L252
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L249
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L249
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
L252:
	.cfi_restore_state
	mov	ecx, 1
L249:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L256:
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
	jbe	L257
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L257:
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
	jp	L269
	fxch	st(1)
	fucomi	st, st(0)
	jp	L265
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L268
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L268:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L261
	.p2align 4,,10
	.p2align 3
L269:
	fstp	st(1)
L261:
	ret
	.p2align 4,,10
	.p2align 3
L265:
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
	jp	L278
	fxch	st(1)
	fucomi	st, st(0)
	jp	L274
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L277
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L277:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L270
	.p2align 4,,10
	.p2align 3
L278:
	fstp	st(1)
L270:
	ret
	.p2align 4,,10
	.p2align 3
L274:
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
	jp	L284
	fxch	st(1)
	fucomi	st, st(0)
	jp	L287
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
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L284:
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
	jp	L293
	fxch	st(1)
	fucomi	st, st(0)
	jp	L296
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
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L293:
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
	fstp	st(1)
	jmp	L303
	.p2align 4,,10
	.p2align 3
L309:
	fstp	st(0)
	jmp	L303
	.p2align 4,,10
	.p2align 3
L310:
	fstp	st(0)
	jmp	L303
	.p2align 4,,10
	.p2align 3
L311:
	fstp	st(0)
L303:
	jmp	L297
	.p2align 4,,10
	.p2align 3
L308:
	fstp	st(0)
L297:
	ret
	.p2align 4,,10
	.p2align 3
L307:
	test	edx, edx
	je	L311
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
	jp	L320
	fxch	st(1)
	fucomi	st, st(0)
	jp	L318
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
	je	L314
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L318:
	fstp	st(0)
	jmp	L312
	.p2align 4,,10
	.p2align 3
L320:
	fstp	st(0)
L312:
	ret
	.p2align 4,,10
	.p2align 3
L314:
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
	jp	L329
	fxch	st(1)
	fucomi	st, st(0)
	jp	L327
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
	je	L323
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L327:
	fstp	st(0)
	jmp	L321
	.p2align 4,,10
	.p2align 3
L329:
	fstp	st(0)
L321:
	ret
	.p2align 4,,10
	.p2align 3
L323:
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
	jp	L341
	fxch	st(1)
	fucomi	st, st(0)
	jp	L342
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
	jne	L340
	fcomi	st, st(1)
	jbe	L343
	fstp	st(0)
	jmp	L335
	.p2align 4,,10
	.p2align 3
L341:
	fstp	st(0)
	jmp	L335
	.p2align 4,,10
	.p2align 3
L343:
	fstp	st(1)
	jmp	L335
	.p2align 4,,10
	.p2align 3
L344:
	fstp	st(1)
L335:
	jmp	L330
	.p2align 4,,10
	.p2align 3
L342:
	fstp	st(0)
L330:
	ret
	.p2align 4,,10
	.p2align 3
L340:
	test	edx, edx
	je	L344
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
	je	L346
	.p2align 5
	.p2align 4
	.p2align 3
L347:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L347
L346:
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
	je	L359
	vmovd	xmm1, DWORD PTR [eax]
	vpinsrd	xmm0, xmm1, eax, 1
	vmovq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	L358
	mov	DWORD PTR [ecx+4], edx
L358:
	ret
	.p2align 4,,10
	.p2align 3
L359:
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
	je	L361
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L361:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L369
	mov	DWORD PTR [eax], edx
L369:
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
	je	L371
	mov	ebx, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+28], ecx
	xor	ebp, ebp
	mov	esi, ebx
	jmp	L373
	.p2align 4,,10
	.p2align 3
L388:
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	je	L387
L373:
	mov	edx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], esi
	mov	ebx, esi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L388
L370:
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
L387:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L371:
	mov	ebp, DWORD PTR [esp+72]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	DWORD PTR [ebp+0], eax
	mov	ebx, ecx
	test	edi, edi
	je	L370
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
	je	L390
	mov	edi, DWORD PTR [esp+52]
	xor	esi, esi
	jmp	L392
	.p2align 4,,10
	.p2align 3
L402:
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	je	L390
L392:
	mov	edx, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edi
	mov	ebx, edi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L402
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
L390:
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
	jbe	L427
	mov	edx, ecx
	jmp	L431
	.p2align 5
	.p2align 4,,10
	.p2align 3
L427:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L427
L431:
	cmp	dl, 32
	je	L427
	cmp	dl, 43
	je	L408
	cmp	dl, 45
	jne	L432
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L417
	mov	ebp, 1
L411:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L414:
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
	jbe	L414
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
L432:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	L411
L417:
	xor	eax, eax
L433:
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
L408:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L411
	xor	eax, eax
	jmp	L433
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
	jbe	L455
	mov	edx, ecx
	jmp	L458
	.p2align 5
	.p2align 4,,10
	.p2align 3
L455:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L455
L458:
	cmp	dl, 32
	je	L455
	cmp	dl, 43
	je	L438
	cmp	dl, 45
	je	L459
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	L446
L440:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L443:
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
	jbe	L443
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
L459:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L440
L446:
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
L438:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L446
	xor	ebp, ebp
	jmp	L440
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
	jbe	L483
	mov	edx, eax
	jmp	L488
	.p2align 5
	.p2align 4,,10
	.p2align 3
L483:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	esi, [eax-9]
	mov	edx, eax
	cmp	esi, 4
	jbe	L483
L488:
	cmp	dl, 32
	je	L483
	cmp	dl, 43
	je	L464
	cmp	dl, 45
	jne	L489
	movsx	ebp, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L473
	mov	esi, 1
L467:
	mov	DWORD PTR [esp+12], esi
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
L470:
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
	jbe	L470
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	jne	L460
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
L460:
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
L489:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	esi, esi
	mov	eax, ecx
	cmp	ebx, 9
	jbe	L467
L473:
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
L464:
	.cfi_restore_state
	movsx	edi, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	xor	esi, esi
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	L467
	jmp	L473
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
L505:
	test	ebx, ebx
	je	L491
L506:
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
	js	L495
	je	L490
	sub	ebx, 1
	lea	edx, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+52], edx
	test	ebx, ebx
	jne	L506
L491:
	xor	ebp, ebp
L490:
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
L495:
	.cfi_restore_state
	mov	ebx, esi
	jmp	L505
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
	je	L512
	.p2align 4
	.p2align 3
L520:
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
	je	L507
	jle	L510
	lea	ebp, [ebp-1]
	lea	ecx, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+52], ecx
	jne	L520
L512:
	xor	ebx, ebx
L507:
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
L510:
	.cfi_restore_state
	test	esi, esi
	je	L512
	mov	ebp, esi
	jmp	L520
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
	jne	L536
	jmp	L539
	.p2align 5
	.p2align 4,,10
	.p2align 3
L538:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	test	dx, dx
	je	L539
L536:
	cmp	cx, dx
	jne	L538
	ret
	.p2align 4,,10
	.p2align 3
L539:
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
	je	L544
	jmp	L545
	.p2align 5
	.p2align 4,,10
	.p2align 3
L546:
	movzx	eax, WORD PTR [edx+2]
	movzx	ebx, WORD PTR [ecx+2]
	add	edx, 2
	add	ecx, 2
	cmp	ax, bx
	jne	L545
L544:
	test	ax, ax
	jne	L546
L545:
	mov	edx, -1
	cmp	ax, bx
	jb	L543
	xor	edx, edx
	cmp	bx, ax
	setb	dl
L543:
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
L553:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L553
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
	je	L559
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L558:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L558
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L559:
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
	jne	L562
	jmp	L568
	.p2align 4,,10
	.p2align 3
L576:
	test	bx, bx
	je	L566
	add	edx, 2
	add	eax, 2
	sub	ecx, 1
	je	L568
L562:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L576
L566:
	movzx	ebx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	jb	L577
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
L577:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L568:
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
	jne	L579
	jmp	L582
	.p2align 4
	.p2align 4,,10
	.p2align 3
L581:
	add	eax, 2
	sub	edx, 1
	je	L582
L579:
	cmp	WORD PTR [eax], cx
	jne	L581
	ret
	.p2align 4,,10
	.p2align 3
L582:
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
	jne	L587
	jmp	L586
	.p2align 5
	.p2align 4,,10
	.p2align 3
L589:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L592
L587:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L589
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L599
	cmp	ax, bx
	setb	dl
	movzx	eax, dl
L586:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L599:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L592:
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
	je	L601
	mov	edx, DWORD PTR [esp+36]
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L601:
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
	mov	edi, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp+8], edi
	je	L649
	mov	ecx, DWORD PTR [ebp+8]
	lea	edx, [ebx+ebx]
	lea	eax, [ebx-1]
	sub	ecx, edi
	cmp	ecx, edx
	jnb	L687
	test	ebx, ebx
	je	L649
	cmp	ebx, 1
	je	L630
	mov	esi, DWORD PTR [ebp+8]
	sub	esi, edi
	add	esi, 14
	cmp	esi, 12
	jbe	L619
	cmp	eax, 6
	jbe	L631
	sub	edx, 16
	mov	esi, ebx
	lea	ecx, [edi+edx]
	shr	esi, 3
	add	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+28], edx
	sal	esi, 4
	mov	edx, ecx
	sub	edx, esi
	mov	esi, edx
	mov	edx, DWORD PTR [esp+28]
	.p2align 5
	.p2align 4
	.p2align 3
L613:
	vmovdqu	xmm2, XMMWORD PTR [ecx]
	sub	ecx, 16
	sub	edx, 16
	vmovdqu	XMMWORD PTR [edx+16], xmm2
	cmp	esi, ecx
	jne	L613
	mov	edx, ebx
	and	edx, -8
	sub	eax, edx
	test	bl, 7
	je	L649
	mov	ecx, ebx
	sub	ecx, edx
	cmp	ecx, 1
	je	L616
L612:
	sub	ebx, edx
	mov	esi, ecx
	lea	edx, [ebx-4+ebx]
	shr	esi
	lea	ebx, [edi+edx]
	add	edx, DWORD PTR [ebp+8]
	vmovd	xmm3, DWORD PTR [ebx]
	vmovd	DWORD PTR [edx], xmm3
	cmp	esi, 1
	je	L617
	vmovd	xmm4, DWORD PTR [ebx-4]
	vmovd	DWORD PTR [edx-4], xmm4
	cmp	esi, 2
	je	L617
	mov	esi, DWORD PTR [ebx-8]
	mov	DWORD PTR [edx-8], esi
L617:
	test	cl, 1
	je	L649
	and	ecx, -2
	sub	eax, ecx
L616:
	movzx	ecx, WORD PTR [edi+eax*2]
	mov	edi, DWORD PTR [ebp+8]
	mov	WORD PTR [edi+eax*2], cx
L649:
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
L687:
	.cfi_restore_state
	test	ebx, ebx
	je	L649
	cmp	eax, 6
	jbe	L632
	mov	edx, DWORD PTR [ebp+8]
	lea	esi, [edi+2]
	sub	edx, esi
	cmp	edx, 28
	jbe	L633
	cmp	eax, 14
	jbe	L634
	mov	DWORD PTR [esp+28], eax
	mov	esi, ebx
	mov	ecx, DWORD PTR [ebp+8]
	xor	edx, edx
	shr	esi, 4
	.p2align 5
	.p2align 4
	.p2align 3
L623:
	mov	eax, edx
	add	edx, 1
	sal	eax, 5
	vmovdqu	ymm0, YMMWORD PTR [edi+eax]
	vmovdqu	YMMWORD PTR [ecx+eax], ymm0
	cmp	esi, edx
	jne	L623
	mov	esi, ebx
	mov	eax, DWORD PTR [esp+28]
	and	esi, -16
	lea	edx, [esi+esi]
	mov	DWORD PTR [esp+28], esi
	sub	eax, esi
	lea	ecx, [edi+edx]
	add	edx, DWORD PTR [ebp+8]
	test	bl, 15
	je	L684
	sub	ebx, esi
	lea	esi, [ebx-1]
	cmp	esi, 6
	jbe	L688
	vzeroupper
L622:
	mov	esi, DWORD PTR [esp+28]
	vmovdqu	xmm1, XMMWORD PTR [edi+esi*2]
	mov	edi, DWORD PTR [ebp+8]
	vmovdqu	XMMWORD PTR [edi+esi*2], xmm1
	mov	esi, ebx
	and	esi, -8
	sub	eax, esi
	add	esi, esi
	add	ecx, esi
	add	edx, esi
	and	ebx, 7
	je	L649
L626:
	movzx	ebx, WORD PTR [ecx]
	mov	WORD PTR [edx], bx
	test	eax, eax
	je	L649
	movzx	edi, WORD PTR [ecx+2]
	mov	WORD PTR [edx+2], di
	cmp	eax, 1
	je	L649
	movzx	esi, WORD PTR [ecx+4]
	mov	WORD PTR [edx+4], si
	cmp	eax, 2
	je	L649
	movzx	ebx, WORD PTR [ecx+6]
	mov	WORD PTR [edx+6], bx
	cmp	eax, 3
	je	L649
	movzx	edi, WORD PTR [ecx+8]
	mov	WORD PTR [edx+8], di
	cmp	eax, 4
	je	L649
	movzx	esi, WORD PTR [ecx+10]
	mov	WORD PTR [edx+10], si
	cmp	eax, 5
	je	L649
	movzx	eax, WORD PTR [ecx+12]
	mov	WORD PTR [edx+12], ax
	jmp	L649
	.p2align 4,,10
	.p2align 3
L630:
	xor	eax, eax
L619:
	mov	ebx, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L682:
	movzx	edx, WORD PTR [edi+eax*2]
	mov	WORD PTR [ebx+eax*2], dx
	sub	eax, 1
	jnb	L682
	jmp	L649
	.p2align 4,,10
	.p2align 3
L632:
	mov	edx, DWORD PTR [ebp+8]
	lea	esi, [edi+2]
	jmp	L683
	.p2align 5
	.p2align 4,,10
	.p2align 3
L689:
	add	esi, 2
L683:
	movzx	ecx, WORD PTR [esi-2]
	add	edx, 2
	mov	WORD PTR [edx-2], cx
	sub	eax, 1
	jb	L649
	jmp	L689
L633:
	mov	edx, DWORD PTR [ebp+8]
	jmp	L683
L634:
	mov	DWORD PTR [esp+28], 0
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, edi
	jmp	L622
L631:
	mov	ecx, ebx
	xor	edx, edx
	jmp	L612
L688:
	vzeroupper
	jmp	L626
L684:
	vzeroupper
	jmp	L649
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
	je	L691
	lea	ebx, [eax-1]
	cmp	ebx, 14
	jbe	L697
	vmovd	xmm0, edi
	mov	esi, eax
	xor	eax, eax
	vpshufb	xmm1, xmm0, XMMWORD PTR LC4
	shr	esi, 4
	vinsertf128	ymm1, ymm1, xmm1, 1
	.p2align 5
	.p2align 4
	.p2align 3
L693:
	mov	edx, eax
	add	eax, 1
	sal	edx, 5
	vmovdqu	YMMWORD PTR [ecx+edx], ymm1
	cmp	esi, eax
	jne	L693
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -16
	mov	DWORD PTR [esp+28], eax
	sub	ebx, eax
	lea	eax, [ecx+eax*2]
	test	BYTE PTR [ebp+16], 15
	je	L728
	vzeroupper
L692:
	mov	edx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [ebp+16]
	sub	esi, edx
	lea	edx, [esi-1]
	cmp	edx, 6
	jbe	L695
	mov	edx, DWORD PTR [esp+28]
	vmovd	xmm2, edi
	vpshufb	xmm3, xmm2, XMMWORD PTR LC4
	vmovdqu	XMMWORD PTR [ecx+edx*2], xmm3
	mov	edx, esi
	and	edx, -8
	sub	ebx, edx
	and	esi, 7
	lea	eax, [eax+edx*2]
	je	L691
L695:
	mov	WORD PTR [eax], di
	test	ebx, ebx
	je	L691
	mov	WORD PTR [eax+2], di
	cmp	ebx, 1
	je	L691
	mov	WORD PTR [eax+4], di
	cmp	ebx, 2
	je	L691
	mov	WORD PTR [eax+6], di
	cmp	ebx, 3
	je	L691
	mov	WORD PTR [eax+8], di
	cmp	ebx, 4
	je	L691
	mov	WORD PTR [eax+10], di
	cmp	ebx, 5
	je	L691
	mov	WORD PTR [eax+12], di
L691:
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
L697:
	.cfi_restore_state
	mov	DWORD PTR [esp+28], 0
	mov	eax, ecx
	jmp	L692
L728:
	vzeroupper
	jmp	L691
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp+8], ecx
	jnb	L730
	test	edx, edx
	je	L827
	lea	eax, [edx-1]
	cmp	eax, 2
	jbe	L739
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, ecx
	lea	esi, [edi-2+edx]
	sub	ebx, esi
	lea	edi, [ebx+14+eax]
	cmp	edi, 14
	jbe	L739
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [ecx+edx]
	mov	DWORD PTR [esp+24], ebx
	add	esi, edx
	mov	DWORD PTR [esp+28], esi
	cmp	eax, 14
	jbe	L750
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
L734:
	vmovdqu	xmm2, XMMWORD PTR [eax]
	sub	eax, 16
	sub	ebx, 16
	vmovdqu	XMMWORD PTR [ebx+16], xmm2
	cmp	esi, eax
	jne	L734
	mov	eax, edx
	sub	DWORD PTR [esp+24], edi
	sub	DWORD PTR [esp+28], edi
	sub	eax, edi
	cmp	edx, edi
	je	L827
	lea	ebx, [eax-1]
	mov	edx, eax
	cmp	ebx, 2
	jbe	L736
L733:
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [edx-4]
	mov	edi, edx
	shr	edi, 2
	add	esi, ebx
	add	ebx, ecx
	mov	ecx, DWORD PTR [esi]
	mov	DWORD PTR [ebx], ecx
	cmp	edi, 1
	je	L737
	mov	ecx, DWORD PTR [esi-4]
	mov	DWORD PTR [ebx-4], ecx
	cmp	edi, 2
	je	L737
	mov	edi, DWORD PTR [esi-8]
	mov	DWORD PTR [ebx-8], edi
L737:
	mov	ebx, edx
	and	ebx, -4
	sub	DWORD PTR [esp+24], ebx
	sub	DWORD PTR [esp+28], ebx
	sub	eax, ebx
	and	edx, 3
	je	L827
L736:
	mov	esi, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+24]
	movzx	edx, BYTE PTR [esi-1]
	mov	BYTE PTR [ecx-1], dl
	cmp	eax, 1
	je	L827
	movzx	ebx, BYTE PTR [esi-2]
	mov	BYTE PTR [ecx-2], bl
	cmp	eax, 2
	je	L827
	movzx	eax, BYTE PTR [esi-3]
	mov	BYTE PTR [ecx-3], al
L827:
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
L730:
	.cfi_restore_state
	je	L827
	test	edx, edx
	je	L827
	lea	eax, [edx-1]
	cmp	eax, 14
	jbe	L829
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, ecx
	lea	edi, [esi+1]
	sub	ebx, edi
	cmp	ebx, 30
	jbe	L741
	cmp	eax, 30
	jbe	L751
	mov	esi, edx
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, ecx
	and	esi, -32
	mov	edi, esi
	add	edi, eax
	.p2align 5
	.p2align 4
	.p2align 3
L743:
	vmovdqu	ymm0, YMMWORD PTR [eax]
	add	eax, 32
	add	ebx, 32
	vmovdqu	YMMWORD PTR [ebx-32], ymm0
	cmp	eax, edi
	jne	L743
	mov	edi, edx
	mov	DWORD PTR [esp+28], eax
	lea	ebx, [ecx+esi]
	sub	edi, esi
	cmp	edx, esi
	je	L825
	lea	eax, [edi-1]
	mov	edx, edi
	cmp	eax, 14
	jbe	L830
	vzeroupper
L742:
	mov	eax, DWORD PTR [ebp+8]
	vmovdqu	xmm1, XMMWORD PTR [eax+esi]
	vmovdqu	XMMWORD PTR [ecx+esi], xmm1
	mov	ecx, edx
	and	ecx, -16
	add	DWORD PTR [esp+28], ecx
	add	ebx, ecx
	sub	edi, ecx
	and	edx, 15
	je	L827
L746:
	mov	esi, DWORD PTR [esp+28]
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [ebx], dl
	cmp	edi, 1
	je	L827
	movzx	eax, BYTE PTR [esi+1]
	mov	BYTE PTR [ebx+1], al
	cmp	edi, 2
	je	L827
	movzx	ecx, BYTE PTR [esi+2]
	mov	BYTE PTR [ebx+2], cl
	cmp	edi, 3
	je	L827
	movzx	edx, BYTE PTR [esi+3]
	mov	BYTE PTR [ebx+3], dl
	cmp	edi, 4
	je	L827
	movzx	eax, BYTE PTR [esi+4]
	mov	BYTE PTR [ebx+4], al
	cmp	edi, 5
	je	L827
	movzx	ecx, BYTE PTR [esi+5]
	mov	BYTE PTR [ebx+5], cl
	cmp	edi, 6
	je	L827
	movzx	edx, BYTE PTR [esi+6]
	mov	BYTE PTR [ebx+6], dl
	cmp	edi, 7
	je	L827
	movzx	eax, BYTE PTR [esi+7]
	mov	BYTE PTR [ebx+7], al
	cmp	edi, 8
	je	L827
	movzx	ecx, BYTE PTR [esi+8]
	mov	BYTE PTR [ebx+8], cl
	cmp	edi, 9
	je	L827
	movzx	edx, BYTE PTR [esi+9]
	mov	BYTE PTR [ebx+9], dl
	cmp	edi, 10
	je	L827
	movzx	eax, BYTE PTR [esi+10]
	mov	BYTE PTR [ebx+10], al
	cmp	edi, 11
	je	L827
	movzx	ecx, BYTE PTR [esi+11]
	mov	BYTE PTR [ebx+11], cl
	cmp	edi, 12
	je	L827
	movzx	edx, BYTE PTR [esi+12]
	mov	BYTE PTR [ebx+12], dl
	cmp	edi, 13
	je	L827
	movzx	eax, BYTE PTR [esi+13]
	mov	BYTE PTR [ebx+13], al
	cmp	edi, 14
	je	L827
	movzx	ecx, BYTE PTR [esi+14]
	mov	BYTE PTR [ebx+14], cl
	jmp	L827
	.p2align 4,,10
	.p2align 3
L739:
	mov	edi, DWORD PTR [ebp+8]
	jmp	L824
	.p2align 5
	.p2align 4,,10
	.p2align 3
L831:
	sub	eax, 1
L824:
	movzx	ebx, BYTE PTR [edi-1+edx]
	mov	BYTE PTR [ecx-1+edx], bl
	mov	edx, eax
	test	eax, eax
	jne	L831
	jmp	L827
L829:
	mov	ebx, DWORD PTR [ebp+8]
	lea	edi, [ebx+1]
L741:
	mov	ebx, DWORD PTR [ebp+8]
	add	ebx, edx
	jmp	L748
	.p2align 5
	.p2align 4,,10
	.p2align 3
L832:
	add	edi, 1
L748:
	movzx	edx, BYTE PTR [edi-1]
	add	ecx, 1
	mov	BYTE PTR [ecx-1], dl
	cmp	edi, ebx
	jne	L832
	jmp	L827
L830:
	vzeroupper
	jmp	L746
L750:
	mov	eax, edx
	jmp	L733
L751:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, ecx
	mov	edi, edx
	xor	esi, esi
	mov	DWORD PTR [esp+28], eax
	jmp	L742
L825:
	vzeroupper
	jmp	L827
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
	je	L835
	mov	edx, eax
	xor	eax, eax
L835:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L836
	mov	esi, edi
	xor	edi, edi
L836:
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
	je	L839
	mov	eax, edx
	xor	edx, edx
L839:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L840
	mov	edi, esi
	xor	esi, esi
L840:
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
	jmp	L855
	.p2align 4
	.p2align 4,,10
	.p2align 3
L853:
	cmp	ecx, 32
	je	L857
L855:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	L853
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
L857:
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
	je	L858
	mov	edx, eax
	and	edx, 1
	jne	L858
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L860:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L860
L858:
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
	ja	L868
	fld	DWORD PTR LC6
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L865
	.p2align 4,,10
	.p2align 3
L868:
	fstp	st(0)
L865:
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
	ja	L872
	fld	QWORD PTR LC8
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L869
	.p2align 4,,10
	.p2align 3
L872:
	fstp	st(0)
L869:
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
	ja	L876
	fld	TBYTE PTR LC10
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L873
	.p2align 4,,10
	.p2align 3
L876:
	fstp	st(0)
L873:
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
	jp	L879
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L886
	jne	L886
	jmp	L879
	.p2align 4,,10
	.p2align 3
L894:
	fstp	st(0)
L879:
	ret
	.p2align 4,,10
	.p2align 3
L886:
	fld	DWORD PTR LC11
	test	eax, eax
	jns	L881
	fstp	st(0)
	fld	DWORD PTR LC12
L881:
	test	al, 1
	je	L882
	.p2align 4
	.p2align 3
L883:
	fmul	st(1), st
L882:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L894
	fmul	st, st(0)
	test	al, 1
	jne	L883
L893:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L883
	jmp	L893
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
	jp	L896
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L903
	jne	L903
	jmp	L896
	.p2align 4,,10
	.p2align 3
L912:
	fstp	st(0)
L896:
	ret
	.p2align 4,,10
	.p2align 3
L903:
	test	eax, eax
	js	L910
	fld	DWORD PTR LC11
L898:
	test	al, 1
	je	L899
	.p2align 4
	.p2align 3
L900:
	fmul	st(1), st
L899:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L912
	fmul	st, st(0)
	test	al, 1
	jne	L900
L911:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L900
	jmp	L911
	.p2align 4,,10
	.p2align 3
L910:
	fld	DWORD PTR LC12
	jmp	L898
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
	jp	L914
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L921
	jne	L921
	jmp	L914
	.p2align 4,,10
	.p2align 3
L930:
	fstp	st(0)
L914:
	ret
	.p2align 4,,10
	.p2align 3
L921:
	test	eax, eax
	js	L928
	fld	DWORD PTR LC11
L916:
	test	al, 1
	je	L917
	.p2align 4
	.p2align 3
L918:
	fmul	st(1), st
L917:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L930
	fmul	st, st(0)
	test	al, 1
	jne	L918
L929:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L918
	jmp	L929
	.p2align 4,,10
	.p2align 3
L928:
	fld	DWORD PTR LC12
	jmp	L916
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
	je	L932
	lea	eax, [ecx-1]
	cmp	eax, 30
	jbe	L938
	mov	esi, ecx
	mov	ebx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	and	esi, -32
	mov	eax, esi
	add	eax, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L934:
	vmovdqu	ymm0, YMMWORD PTR [edx]
	vxorps	ymm1, ymm0, YMMWORD PTR [ebx]
	add	ebx, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm1
	cmp	eax, ebx
	jne	L934
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, ecx
	sub	ebx, esi
	add	edx, esi
	cmp	ecx, esi
	je	L990
	vzeroupper
L933:
	sub	ecx, esi
	lea	edi, [ecx-1]
	cmp	edi, 14
	jbe	L936
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
	je	L932
L936:
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [edx], cl
	cmp	ebx, 1
	je	L932
	movzx	ecx, BYTE PTR [eax+1]
	xor	BYTE PTR [edx+1], cl
	cmp	ebx, 2
	je	L932
	movzx	ecx, BYTE PTR [eax+2]
	xor	BYTE PTR [edx+2], cl
	cmp	ebx, 3
	je	L932
	movzx	ecx, BYTE PTR [eax+3]
	xor	BYTE PTR [edx+3], cl
	cmp	ebx, 4
	je	L932
	movzx	ecx, BYTE PTR [eax+4]
	xor	BYTE PTR [edx+4], cl
	cmp	ebx, 5
	je	L932
	movzx	ecx, BYTE PTR [eax+5]
	xor	BYTE PTR [edx+5], cl
	cmp	ebx, 6
	je	L932
	movzx	ecx, BYTE PTR [eax+6]
	xor	BYTE PTR [edx+6], cl
	cmp	ebx, 7
	je	L932
	movzx	ecx, BYTE PTR [eax+7]
	xor	BYTE PTR [edx+7], cl
	cmp	ebx, 8
	je	L932
	movzx	ecx, BYTE PTR [eax+8]
	xor	BYTE PTR [edx+8], cl
	cmp	ebx, 9
	je	L932
	movzx	ecx, BYTE PTR [eax+9]
	xor	BYTE PTR [edx+9], cl
	cmp	ebx, 10
	je	L932
	movzx	ecx, BYTE PTR [eax+10]
	xor	BYTE PTR [edx+10], cl
	cmp	ebx, 11
	je	L932
	movzx	ecx, BYTE PTR [eax+11]
	xor	BYTE PTR [edx+11], cl
	cmp	ebx, 12
	je	L932
	movzx	ecx, BYTE PTR [eax+12]
	xor	BYTE PTR [edx+12], cl
	cmp	ebx, 13
	je	L932
	movzx	ecx, BYTE PTR [eax+13]
	xor	BYTE PTR [edx+13], cl
	cmp	ebx, 14
	je	L932
	movzx	eax, BYTE PTR [eax+14]
	xor	BYTE PTR [edx+14], al
L932:
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
L938:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ebx, ecx
	xor	esi, esi
	jmp	L933
L990:
	vzeroupper
	jmp	L932
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
	je	L992
	.p2align 3
	.p2align 4
	.p2align 3
L993:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L993
L992:
	test	edx, edx
	jne	L994
	jmp	L995
	.p2align 5
	.p2align 4,,10
	.p2align 3
L996:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L995
L994:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L996
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
L995:
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
	je	L1006
L1007:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L1009
L1006:
	ret
	.p2align 4,,10
	.p2align 3
L1009:
	add	eax, 1
	cmp	edx, eax
	jne	L1007
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
	je	L1020
L1016:
	mov	eax, DWORD PTR [esp+12]
	jmp	L1019
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1018:
	add	eax, 1
	cmp	dl, cl
	je	L1017
L1019:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L1018
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L1016
L1020:
	xor	ebx, ebx
L1017:
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
L1026:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L1026
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
	je	L1041
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
L1031:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L1031
	mov	esi, edx
	sub	eax, ebp
	je	L1029
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	L1051
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1054:
	add	edx, 1
	test	cl, cl
	je	L1053
L1051:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	L1054
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1055:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	L1034
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	L1034
L1033:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	L1055
L1034:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	L1041
	add	edx, 1
	jmp	L1051
	.p2align 4,,10
	.p2align 3
L1053:
	xor	esi, esi
L1029:
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
L1041:
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
	ja	L1066
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L1067
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L1059
	jmp	L1060
	.p2align 4,,10
	.p2align 3
L1067:
	fstp	st(1)
	fstp	st(1)
L1060:
	ret
	.p2align 4,,10
	.p2align 3
L1066:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L1060
L1059:
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
	je	L1068
	cmp	esi, DWORD PTR [esp+32]
	jb	L1079
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	L1079
	movzx	ebp, BYTE PTR [edi]
	jmp	L1074
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1078:
	mov	edx, ebx
L1070:
	cmp	esi, edx
	jb	L1079
L1074:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	L1078
	cmp	DWORD PTR [esp+32], 1
	je	L1068
L1073:
	mov	eax, 1
	jmp	L1071
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1072:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	L1068
L1071:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	L1072
	cmp	esi, ebx
	jb	L1079
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	L1070
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	L1073
	.p2align 4,,10
	.p2align 3
L1079:
	xor	edx, edx
L1068:
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
	je	L1090
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L1090:
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
	ja	L1119
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L1120
	fstp	st(0)
L1098:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L1105:
	fld	DWORD PTR LC12
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L1105
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L1095
L1122:
	fchs
L1095:
	ret
	.p2align 4,,10
	.p2align 3
L1120:
	fld	DWORD PTR LC12
	fcomip	st, st(2)
	jbe	L1123
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L1111
	jne	L1111
	jmp	L1101
	.p2align 4,,10
	.p2align 3
L1123:
	fstp	st(0)
	jmp	L1101
	.p2align 4,,10
	.p2align 3
L1124:
	fstp	st(0)
L1101:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L1119:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L1121
	fstp	st(1)
	mov	edx, 1
	jmp	L1098
	.p2align 4,,10
	.p2align 3
L1121:
	fld	DWORD PTR LC14
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L1124
	fstp	st(1)
	mov	edx, 1
L1099:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L1107:
	fadd	st, st(0)
	fld	DWORD PTR LC12
	sub	eax, 1
	fcomip	st, st(1)
	ja	L1107
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L1122
	ret
L1111:
	xor	edx, edx
	jmp	L1099
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
	je	L1125
	.p2align 6
	.p2align 4
	.p2align 3
L1127:
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
	jne	L1127
L1125:
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
	jnb	L1155
	mov	ecx, 1
	jmp	L1132
	.p2align 4,,10
	.p2align 3
L1135:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1134
	test	ecx, ecx
	je	L1134
L1132:
	test	edx, edx
	jns	L1135
L1136:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1138:
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
	jne	L1138
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1137:
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
L1134:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1136
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
L1155:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1137
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
	je	L1159
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
L1159:
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
	je	L1164
	test	edi, edi
	je	L1166
	bsr	ebp, edi
	xor	ebp, 31
L1167:
	lea	ecx, [ebp-1]
L1164:
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
L1166:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	L1167
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
	je	L1171
	.p2align 5
	.p2align 4
	.p2align 3
L1173:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1173
L1171:
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
	mov	ecx, DWORD PTR [ebp+12]
	mov	esi, edi
	mov	eax, edi
	shr	esi, 3
	and	eax, -8
	mov	DWORD PTR [esp+24], esi
	mov	DWORD PTR [esp+28], eax
	cmp	DWORD PTR [ebp+8], ecx
	jb	L1182
	lea	edx, [ecx+edi]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	L1255
L1182:
	mov	ebx, DWORD PTR [esp+24]
	test	ebx, ebx
	je	L1256
	mov	esi, DWORD PTR [esp+24]
	lea	eax, [esi-1]
	cmp	eax, 3
	jbe	L1184
	mov	ebx, DWORD PTR [ebp+8]
	lea	edx, [ecx+8]
	sub	ebx, edx
	cmp	ebx, 16
	jbe	L1184
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
L1185:
	vmovdqu	ymm3, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm3
	cmp	ebx, eax
	jne	L1185
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+24], esi
	lea	edx, [0+eax*4]
	mov	DWORD PTR [esp+20], edx
	cmp	esi, edx
	je	L1188
	sal	eax, 5
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ecx+eax]
	mov	esi, DWORD PTR [ecx+4+eax]
	mov	DWORD PTR [edx+eax], ebx
	mov	DWORD PTR [edx+4+eax], esi
	mov	edx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	lea	ebx, [edx+1]
	cmp	ebx, esi
	jnb	L1188
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ecx+8+eax]
	mov	esi, DWORD PTR [ecx+12+eax]
	mov	DWORD PTR [edx+8+eax], ebx
	mov	ebx, DWORD PTR [esp+24]
	mov	DWORD PTR [edx+12+eax], esi
	mov	edx, DWORD PTR [esp+20]
	add	edx, 2
	cmp	edx, ebx
	jnb	L1188
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ecx+16+eax]
	mov	esi, DWORD PTR [ecx+20+eax]
	mov	DWORD PTR [edx+16+eax], ebx
	mov	DWORD PTR [edx+20+eax], esi
L1188:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, edi
	jnb	L1252
	mov	esi, edi
	sub	esi, eax
	lea	edx, [esi-1]
	mov	DWORD PTR [esp+24], edx
	cmp	edx, 14
	jbe	L1257
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	lea	ebx, [ecx+1+edx]
	mov	edx, eax
	sub	edx, ebx
	cmp	edx, 30
	jbe	L1236
	cmp	DWORD PTR [esp+24], 30
	jbe	L1206
	mov	ebx, DWORD PTR [esp+28]
	lea	edx, [ecx+ebx]
	mov	ebx, esi
	and	ebx, -32
	mov	DWORD PTR [esp+24], ebx
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1190:
	vmovdqu	ymm4, YMMWORD PTR [edx]
	add	edx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm4
	cmp	edx, ebx
	jne	L1190
	mov	edx, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+24]
	add	edx, ebx
	mov	eax, edx
	cmp	esi, ebx
	je	L1252
	sub	esi, ebx
	lea	ebx, [esi-1]
	cmp	ebx, 14
	jbe	L1192
L1189:
	vmovdqu	xmm5, XMMWORD PTR [ecx+edx]
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu	XMMWORD PTR [ebx+edx], xmm5
	mov	edx, esi
	and	edx, -16
	add	eax, edx
	and	esi, 15
	je	L1252
L1192:
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	BYTE PTR [esi+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+1+eax]
	lea	edx, [eax+2]
	mov	BYTE PTR [esi+1+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+2+eax]
	lea	edx, [eax+3]
	mov	BYTE PTR [esi+2+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+3+eax]
	lea	edx, [eax+4]
	mov	BYTE PTR [esi+3+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+4+eax]
	lea	edx, [eax+5]
	mov	BYTE PTR [esi+4+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+5+eax]
	lea	edx, [eax+6]
	mov	BYTE PTR [esi+5+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+6+eax]
	lea	edx, [eax+7]
	mov	BYTE PTR [esi+6+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+7+eax]
	lea	edx, [eax+8]
	mov	BYTE PTR [esi+7+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+8+eax]
	lea	edx, [eax+9]
	mov	BYTE PTR [esi+8+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+9+eax]
	lea	edx, [eax+10]
	mov	BYTE PTR [esi+9+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+10+eax]
	lea	edx, [eax+11]
	mov	BYTE PTR [esi+10+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+11+eax]
	lea	edx, [eax+12]
	mov	BYTE PTR [esi+11+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+12+eax]
	lea	edx, [eax+13]
	mov	BYTE PTR [esi+12+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+13+eax]
	lea	edx, [eax+14]
	mov	BYTE PTR [esi+13+eax], bl
	cmp	edx, edi
	jnb	L1252
	movzx	ebx, BYTE PTR [ecx+14+eax]
	mov	BYTE PTR [esi+14+eax], bl
	vzeroupper
	jmp	L1253
	.p2align 4,,10
	.p2align 3
L1252:
	vzeroupper
L1253:
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
L1255:
	.cfi_restore_state
	lea	ebx, [edi-1]
	test	edi, edi
	je	L1253
	cmp	ebx, 2
	jbe	L1204
	mov	esi, DWORD PTR [ebp+8]
	lea	eax, [ecx-2+edi]
	add	esi, ebx
	sub	esi, eax
	add	esi, 14
	cmp	esi, 14
	jbe	L1204
	cmp	ebx, 14
	jbe	L1197
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
L1198:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	vmovdqu	XMMWORD PTR [edx+16], xmm0
	cmp	eax, esi
	jne	L1198
	mov	eax, DWORD PTR [esp+24]
	sub	ebx, eax
	cmp	edi, eax
	je	L1253
	sub	edi, eax
	lea	esi, [edi-1]
	cmp	esi, 2
	jbe	L1201
L1197:
	lea	eax, [edi-4]
	mov	esi, edi
	lea	edx, [ecx+eax]
	shr	esi, 2
	add	eax, DWORD PTR [ebp+8]
	vmovd	xmm1, DWORD PTR [edx]
	vmovd	DWORD PTR [eax], xmm1
	cmp	esi, 1
	je	L1202
	vmovd	xmm2, DWORD PTR [edx-4]
	vmovd	DWORD PTR [eax-4], xmm2
	cmp	esi, 2
	je	L1202
	mov	esi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], esi
L1202:
	test	edi, 3
	je	L1253
	and	edi, -4
	sub	ebx, edi
L1201:
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	edx, DWORD PTR [ebp+8]
	mov	BYTE PTR [edx+ebx], al
	test	ebx, ebx
	je	L1253
	movzx	eax, BYTE PTR [ecx-1+ebx]
	mov	BYTE PTR [edx-1+ebx], al
	cmp	ebx, 1
	je	L1253
	movzx	eax, BYTE PTR [ecx-2+ebx]
	mov	BYTE PTR [edx-2+ebx], al
	jmp	L1253
L1206:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, eax
	jmp	L1189
	.p2align 4,,10
	.p2align 3
L1184:
	mov	ebx, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp+16], edi
	mov	eax, ecx
	lea	ebx, [ecx+ebx*8]
	.p2align 5
	.p2align 4
	.p2align 3
L1187:
	mov	esi, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], esi
	mov	DWORD PTR [edx-4], edi
	cmp	ebx, eax
	jne	L1187
	mov	edi, DWORD PTR [ebp+16]
	jmp	L1188
	.p2align 4,,10
	.p2align 3
L1256:
	mov	eax, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [esp+28]
	add	eax, esi
	test	edi, edi
	je	L1253
L1180:
	mov	edx, DWORD PTR [esp+28]
	add	edx, ecx
	add	ecx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L1194:
	movzx	ebx, BYTE PTR [edx]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	edx, ecx
	jne	L1194
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
L1236:
	.cfi_restore_state
	vzeroupper
	jmp	L1180
L1204:
	mov	esi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L1234:
	movzx	edx, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], dl
	sub	ebx, 1
	jnb	L1234
	jmp	L1253
L1257:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [esp+28]
	add	eax, ebx
	vzeroupper
	jmp	L1180
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
	jb	L1262
	mov	eax, DWORD PTR [ebp+16]
	add	eax, ecx
	cmp	eax, ebx
	jnb	L1315
L1262:
	test	esi, esi
	je	L1261
	lea	eax, [esi-1]
	cmp	eax, 6
	jbe	L1265
	lea	edi, [ecx+2]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 28
	jbe	L1265
	cmp	eax, 14
	jbe	L1283
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
L1267:
	vmovdqu	ymm3, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm3
	cmp	eax, edi
	jne	L1267
	mov	eax, DWORD PTR [esp+28]
	sal	eax, 4
	cmp	esi, eax
	je	L1310
	mov	edx, esi
	sub	edx, eax
	lea	edi, [edx-1]
	cmp	edi, 6
	jbe	L1316
	vzeroupper
L1266:
	vmovdqu	xmm4, XMMWORD PTR [ecx+eax*2]
	mov	edi, edx
	and	edi, -8
	vmovdqu	XMMWORD PTR [ebx+eax*2], xmm4
	add	eax, edi
	and	edx, 7
	je	L1261
L1269:
	movzx	edi, WORD PTR [ecx+eax*2]
	lea	edx, [eax+eax]
	mov	WORD PTR [ebx+eax*2], di
	lea	edi, [eax+1]
	cmp	edi, esi
	jnb	L1261
	movzx	edi, WORD PTR [ecx+2+edx]
	mov	WORD PTR [ebx+2+edx], di
	lea	edi, [eax+2]
	cmp	edi, esi
	jnb	L1261
	movzx	edi, WORD PTR [ecx+4+edx]
	mov	WORD PTR [ebx+4+edx], di
	lea	edi, [eax+3]
	cmp	edi, esi
	jnb	L1261
	movzx	edi, WORD PTR [ecx+6+edx]
	mov	WORD PTR [ebx+6+edx], di
	lea	edi, [eax+4]
	cmp	edi, esi
	jnb	L1261
	movzx	edi, WORD PTR [ecx+8+edx]
	mov	WORD PTR [ebx+8+edx], di
	lea	edi, [eax+5]
	cmp	edi, esi
	jnb	L1261
	movzx	edi, WORD PTR [ecx+10+edx]
	add	eax, 6
	mov	WORD PTR [ebx+10+edx], di
	cmp	eax, esi
	jnb	L1261
	movzx	esi, WORD PTR [ecx+12+edx]
	mov	WORD PTR [ebx+12+edx], si
L1261:
	test	BYTE PTR [ebp+16], 1
	je	L1312
L1317:
	mov	eax, DWORD PTR [ebp+16]
	movzx	edx, BYTE PTR [ecx-1+eax]
	mov	ecx, DWORD PTR [ebp+16]
	mov	BYTE PTR [ebx-1+ecx], dl
L1312:
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
L1315:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+16]
	lea	esi, [edx-1]
	test	edx, edx
	je	L1312
	cmp	esi, 2
	jbe	L1309
	mov	edi, edx
	lea	eax, [ebx+esi]
	lea	edx, [ecx-2+edx]
	sub	eax, edx
	add	eax, 14
	cmp	eax, 14
	jbe	L1309
	cmp	esi, 14
	jbe	L1275
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
L1276:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	vmovdqu	XMMWORD PTR [edx+16], xmm0
	cmp	edi, eax
	jne	L1276
	mov	eax, DWORD PTR [esp+28]
	sub	esi, eax
	cmp	DWORD PTR [ebp+16], eax
	je	L1312
	sub	DWORD PTR [ebp+16], eax
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 1
	cmp	edi, 2
	jbe	L1278
L1275:
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	sub	eax, 4
	shr	edi, 2
	lea	edx, [ecx+eax]
	add	eax, ebx
	vmovd	xmm1, DWORD PTR [edx]
	vmovd	DWORD PTR [eax], xmm1
	cmp	edi, 1
	je	L1279
	vmovd	xmm2, DWORD PTR [edx-4]
	vmovd	DWORD PTR [eax-4], xmm2
	cmp	edi, 2
	je	L1279
	mov	edi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], edi
L1279:
	test	BYTE PTR [ebp+16], 3
	je	L1312
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -4
	sub	esi, eax
L1278:
	movzx	edx, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], dl
	test	esi, esi
	je	L1312
	movzx	eax, BYTE PTR [ecx-1+esi]
	mov	BYTE PTR [ebx-1+esi], al
	cmp	esi, 1
	je	L1312
	movzx	ecx, BYTE PTR [ecx-2+esi]
	mov	BYTE PTR [ebx-2+esi], cl
	jmp	L1312
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1309:
	movzx	edx, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], dl
	sub	esi, 1
	jb	L1312
	movzx	edx, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], dl
	sub	esi, 1
	jnb	L1309
	jmp	L1312
L1283:
	mov	edx, esi
	xor	eax, eax
	jmp	L1266
	.p2align 4,,10
	.p2align 3
L1265:
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
L1271:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	eax, esi
	jne	L1271
	test	BYTE PTR [ebp+16], 1
	je	L1312
	jmp	L1317
L1316:
	vzeroupper
	jmp	L1269
L1310:
	vzeroupper
	jmp	L1261
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
	mov	edi, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, edi
	mov	esi, edi
	and	eax, -4
	shr	esi, 2
	mov	DWORD PTR [esp+28], eax
	cmp	DWORD PTR [ebp+8], ecx
	jb	L1323
	lea	edx, [ecx+edi]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	L1403
L1323:
	test	esi, esi
	je	L1404
	lea	eax, [esi-1]
	cmp	eax, 2
	jbe	L1325
	mov	edx, DWORD PTR [ebp+8]
	lea	ebx, [ecx+4]
	sub	edx, ebx
	cmp	edx, 24
	jbe	L1325
	cmp	eax, 6
	jbe	L1350
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
L1327:
	vmovdqu	ymm3, YMMWORD PTR [eax]
	add	eax, 32
	add	edx, 32
	vmovdqu	YMMWORD PTR [edx-32], ymm3
	cmp	ebx, eax
	jne	L1327
	mov	eax, DWORD PTR [esp+24]
	sal	eax, 3
	mov	DWORD PTR [esp+24], eax
	cmp	esi, eax
	je	L1332
	mov	edx, esi
	sub	edx, eax
	lea	ebx, [edx-1]
	cmp	ebx, 2
	jbe	L1329
L1326:
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu	xmm4, XMMWORD PTR [ecx+eax*4]
	vmovdqu	XMMWORD PTR [ebx+eax*4], xmm4
	mov	eax, edx
	and	eax, -4
	add	DWORD PTR [esp+24], eax
	and	edx, 3
	je	L1332
L1329:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+24]
	sal	edx, 2
	mov	ebx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [edx+eax*4], ebx
	add	eax, 1
	cmp	eax, esi
	jnb	L1332
	mov	eax, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [ecx+4+eax]
	mov	DWORD PTR [edx+4+eax], ebx
	mov	eax, DWORD PTR [esp+24]
	add	eax, 2
	cmp	eax, esi
	jnb	L1332
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [ecx+8+ebx]
	mov	DWORD PTR [edx+8+ebx], eax
L1332:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, edi
	jnb	L1400
	mov	esi, edi
	sub	esi, eax
	lea	edx, [esi-1]
	mov	DWORD PTR [esp+24], edx
	cmp	edx, 14
	jbe	L1405
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	lea	ebx, [ecx+1+edx]
	mov	edx, eax
	sub	edx, ebx
	cmp	edx, 30
	jbe	L1384
	cmp	DWORD PTR [esp+24], 30
	jbe	L1351
	mov	ebx, DWORD PTR [esp+28]
	lea	edx, [ecx+ebx]
	mov	ebx, esi
	and	ebx, -32
	mov	DWORD PTR [esp+24], ebx
	add	ebx, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1334:
	vmovdqu	ymm5, YMMWORD PTR [edx]
	add	edx, 32
	add	eax, 32
	vmovdqu	YMMWORD PTR [eax-32], ymm5
	cmp	ebx, edx
	jne	L1334
	mov	edx, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+24]
	add	edx, ebx
	mov	eax, edx
	cmp	esi, ebx
	je	L1400
	sub	esi, ebx
	lea	ebx, [esi-1]
	cmp	ebx, 14
	jbe	L1336
L1333:
	vmovdqu	xmm6, XMMWORD PTR [ecx+edx]
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu	XMMWORD PTR [ebx+edx], xmm6
	mov	edx, esi
	and	edx, -16
	add	eax, edx
	and	esi, 15
	je	L1400
L1336:
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	BYTE PTR [esi+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+1+eax]
	lea	edx, [eax+2]
	mov	BYTE PTR [esi+1+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+2+eax]
	lea	edx, [eax+3]
	mov	BYTE PTR [esi+2+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+3+eax]
	lea	edx, [eax+4]
	mov	BYTE PTR [esi+3+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+4+eax]
	lea	edx, [eax+5]
	mov	BYTE PTR [esi+4+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+5+eax]
	lea	edx, [eax+6]
	mov	BYTE PTR [esi+5+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+6+eax]
	lea	edx, [eax+7]
	mov	BYTE PTR [esi+6+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+7+eax]
	lea	edx, [eax+8]
	mov	BYTE PTR [esi+7+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+8+eax]
	lea	edx, [eax+9]
	mov	BYTE PTR [esi+8+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+9+eax]
	lea	edx, [eax+10]
	mov	BYTE PTR [esi+9+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+10+eax]
	lea	edx, [eax+11]
	mov	BYTE PTR [esi+10+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+11+eax]
	lea	edx, [eax+12]
	mov	BYTE PTR [esi+11+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+12+eax]
	lea	edx, [eax+13]
	mov	BYTE PTR [esi+12+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ebx, BYTE PTR [ecx+13+eax]
	lea	edx, [eax+14]
	mov	BYTE PTR [esi+13+eax], bl
	cmp	edx, edi
	jnb	L1400
	movzx	ecx, BYTE PTR [ecx+14+eax]
	mov	BYTE PTR [esi+14+eax], cl
	vzeroupper
	jmp	L1401
	.p2align 4,,10
	.p2align 3
L1403:
	lea	ebx, [edi-1]
	test	edi, edi
	je	L1401
	cmp	ebx, 2
	jbe	L1348
	mov	esi, DWORD PTR [ebp+8]
	lea	eax, [ecx-2+edi]
	add	esi, ebx
	sub	esi, eax
	add	esi, 14
	cmp	esi, 14
	jbe	L1348
	cmp	ebx, 14
	jbe	L1341
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
L1342:
	vmovdqu	xmm0, XMMWORD PTR [eax]
	sub	eax, 16
	sub	edx, 16
	vmovdqu	XMMWORD PTR [edx+16], xmm0
	cmp	esi, eax
	jne	L1342
	mov	eax, DWORD PTR [esp+24]
	sub	ebx, eax
	cmp	edi, eax
	je	L1401
	sub	edi, eax
	lea	esi, [edi-1]
	cmp	esi, 2
	jbe	L1345
L1341:
	lea	eax, [edi-4]
	mov	esi, edi
	lea	edx, [ecx+eax]
	shr	esi, 2
	add	eax, DWORD PTR [ebp+8]
	vmovd	xmm1, DWORD PTR [edx]
	vmovd	DWORD PTR [eax], xmm1
	cmp	esi, 1
	je	L1346
	vmovd	xmm2, DWORD PTR [edx-4]
	vmovd	DWORD PTR [eax-4], xmm2
	cmp	esi, 2
	je	L1346
	mov	esi, DWORD PTR [edx-8]
	mov	DWORD PTR [eax-8], esi
L1346:
	test	edi, 3
	je	L1401
	and	edi, -4
	sub	ebx, edi
L1345:
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	edx, DWORD PTR [ebp+8]
	mov	BYTE PTR [edx+ebx], al
	test	ebx, ebx
	je	L1401
	movzx	eax, BYTE PTR [ecx-1+ebx]
	mov	BYTE PTR [edx-1+ebx], al
	cmp	ebx, 1
	je	L1401
	movzx	ecx, BYTE PTR [ecx-2+ebx]
	mov	BYTE PTR [edx-2+ebx], cl
	jmp	L1401
	.p2align 4,,10
	.p2align 3
L1400:
	vzeroupper
L1401:
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
L1350:
	.cfi_restore_state
	mov	DWORD PTR [esp+24], 0
	mov	edx, esi
	jmp	L1326
	.p2align 4,,10
	.p2align 3
L1325:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, ecx
	lea	ebx, [ecx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L1331:
	mov	esi, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], esi
	cmp	eax, ebx
	jne	L1331
	jmp	L1332
	.p2align 4,,10
	.p2align 3
L1404:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [esp+28]
	add	eax, ebx
	test	edi, edi
	je	L1401
L1321:
	mov	edx, DWORD PTR [esp+28]
	add	edx, ecx
	add	ecx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L1338:
	movzx	ebx, BYTE PTR [edx]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	L1338
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
L1384:
	.cfi_restore_state
	vzeroupper
	jmp	L1321
L1351:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, eax
	jmp	L1333
L1348:
	mov	esi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L1382:
	movzx	edx, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], dl
	sub	ebx, 1
	jnb	L1382
	jmp	L1401
L1405:
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [esp+28]
	add	eax, ebx
	vzeroupper
	jmp	L1321
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
	jns	L1412
	fld	DWORD PTR LC16
	faddp	st(1), st
L1412:
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
	jns	L1415
	fld	DWORD PTR LC16
	faddp	st(1), st
L1415:
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
	jne	L1421
	mov	eax, edx
	sar	eax, 14
	jne	L1418
	mov	eax, edx
	shr	eax, 13
	jne	L1422
	mov	eax, edx
	shr	eax, 12
	jne	L1423
	mov	eax, edx
	shr	eax, 11
	jne	L1424
	mov	eax, edx
	shr	eax, 10
	jne	L1425
	mov	eax, edx
	shr	eax, 9
	jne	L1426
	mov	eax, edx
	shr	eax, 8
	jne	L1427
	mov	eax, edx
	shr	eax, 7
	jne	L1428
	mov	eax, edx
	shr	eax, 6
	jne	L1429
	mov	eax, edx
	shr	eax, 5
	jne	L1430
	mov	eax, edx
	shr	eax, 4
	jne	L1431
	mov	eax, edx
	shr	eax, 3
	jne	L1432
	mov	eax, edx
	shr	eax, 2
	jne	L1433
	shr	edx
	jne	L1434
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
L1434:
	mov	eax, 14
L1418:
	ret
L1421:
	xor	eax, eax
	ret
L1432:
	mov	eax, 12
	ret
L1422:
	mov	eax, 2
	ret
L1423:
	mov	eax, 3
	ret
L1424:
	mov	eax, 4
	ret
L1425:
	mov	eax, 5
	ret
L1426:
	mov	eax, 6
	ret
L1427:
	mov	eax, 7
	ret
L1428:
	mov	eax, 8
	ret
L1429:
	mov	eax, 9
	ret
L1430:
	mov	eax, 10
	ret
L1431:
	mov	eax, 11
	ret
L1433:
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
	jne	L1439
	test	al, 2
	jne	L1440
	test	al, 4
	jne	L1441
	test	al, 8
	jne	L1442
	test	al, 16
	jne	L1443
	test	al, 32
	jne	L1444
	test	al, 64
	jne	L1445
	test	al, -128
	jne	L1446
	test	ah, 1
	jne	L1447
	test	ah, 2
	jne	L1448
	test	ah, 4
	jne	L1449
	test	ah, 8
	jne	L1450
	test	ah, 16
	jne	L1451
	test	ah, 32
	jne	L1452
	test	ah, 64
	jne	L1453
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
L1439:
	xor	eax, eax
	ret
L1440:
	mov	eax, 1
	ret
L1451:
	mov	eax, 12
	ret
L1441:
	mov	eax, 2
	ret
L1442:
	mov	eax, 3
	ret
L1443:
	mov	eax, 4
	ret
L1444:
	mov	eax, 5
	ret
L1445:
	mov	eax, 6
	ret
L1446:
	mov	eax, 7
	ret
L1447:
	mov	eax, 8
	ret
L1448:
	mov	eax, 9
	ret
L1449:
	mov	eax, 10
	ret
L1450:
	mov	eax, 11
	ret
L1452:
	mov	eax, 13
	ret
L1453:
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
	jnb	L1462
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1462:
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
	je	L1465
	.p2align 5
	.p2align 4
	.p2align 3
L1467:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1467
L1465:
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
	je	L1471
	test	edx, edx
	je	L1471
	.p2align 5
	.p2align 4
	.p2align 3
L1473:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1473
L1471:
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
	jnb	L1503
	mov	ecx, 1
	jmp	L1480
	.p2align 4,,10
	.p2align 3
L1483:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1482
	test	ecx, ecx
	je	L1482
L1480:
	test	edx, edx
	jns	L1483
L1484:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1486:
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
	jne	L1486
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1485:
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
L1482:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1484
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
L1503:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1485
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
	ja	L1510
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1507
	.p2align 4,,10
	.p2align 3
L1510:
	fstp	st(0)
	fstp	st(0)
L1507:
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
	ja	L1514
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1511
	.p2align 4,,10
	.p2align 3
L1514:
	fstp	st(0)
	fstp	st(0)
L1511:
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
	js	L1527
	je	L1522
	xor	edi, edi
L1519:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L1521:
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
	jne	L1521
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
L1527:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1522:
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
	jns	L1529
	neg	ebx
	xor	eax, eax
	mov	edi, 1
L1529:
	test	esi, esi
	jns	L1530
	neg	esi
	mov	edi, eax
L1530:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	L1531
	jmp	L1555
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1561:
	test	eax, eax
	je	L1536
L1531:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	L1561
L1536:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	L1556
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
L1533:
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
	jne	L1533
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
L1534:
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
L1556:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	L1534
L1555:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	L1534
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
	jns	L1563
	neg	ebx
	mov	esi, 1
L1563:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	L1564
	jmp	L1588
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1592:
	test	edx, edx
	je	L1584
L1564:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	L1592
	test	edx, edx
	je	L1584
	.p2align 4
	.p2align 4
	.p2align 3
L1566:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L1566
L1567:
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
L1584:
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
L1588:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	L1567
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
	jb	L1594
	jmp	L1662
	.p2align 4,,10
	.p2align 3
L1597:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	L1596
	test	ax, ax
	je	L1596
	mov	ecx, eax
	mov	edx, ebx
L1594:
	test	dx, dx
	jns	L1597
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
	je	L1663
L1601:
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	je	L1599
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
	jns	L1599
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
L1599:
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
L1596:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	L1599
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
	jmp	L1601
L1662:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	L1599
L1663:
	mov	WORD PTR [esp+2], ax
	jmp	L1599
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
	je	L1693
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
L1693:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1696
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
L1696:
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
	je	L1699
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
L1699:
	.cfi_restore_state
	test	ebx, ebx
	je	L1702
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
L1702:
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
	jl	L1708
	mov	eax, 2
	jg	L1708
	xor	eax, eax
	cmp	edx, ecx
	jb	L1708
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1708:
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
	jl	L1715
	mov	eax, 1
	jg	L1715
	mov	eax, -1
	cmp	edx, ecx
	jb	L1715
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1715:
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
	je	L1724
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
L1724:
	.cfi_restore_state
	test	ebx, ebx
	je	L1727
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
L1727:
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
	je	L1740
	jmp	L1742
	.p2align 4,,10
	.p2align 3
L1747:
	fxch	st(1)
	jmp	L1742
	.p2align 4,,10
	.p2align 3
L1748:
	fxch	st(1)
L1742:
	fmul	st, st(1)
L1740:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1741
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1747
L1746:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1748
	jmp	L1746
	.p2align 4,,10
	.p2align 3
L1741:
	fstp	st(1)
	test	ecx, ecx
	jns	L1739
	fld1
	fdivrp	st(1), st
L1739:
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
	je	L1750
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1757:
	fxch	st(1)
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1758:
	fxch	st(1)
L1752:
	fmul	st, st(1)
L1750:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1751
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1757
L1756:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1758
	jmp	L1756
	.p2align 4,,10
	.p2align 3
L1751:
	fstp	st(1)
	test	ecx, ecx
	jns	L1749
	fld1
	fdivrp	st(1), st
L1749:
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
	jb	L1759
	mov	eax, 2
	cmp	ecx, edx
	jb	L1759
	xor	eax, eax
	cmp	ebx, esi
	jb	L1759
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1759:
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
	jb	L1766
	mov	eax, 1
	cmp	ecx, edx
	jb	L1766
	mov	eax, -1
	cmp	ebx, esi
	jb	L1766
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1766:
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
