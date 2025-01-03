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
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	edx, ecx
	jnb	L2
	test	eax, eax
	je	L3
	.p2align 4
	.p2align 4
	.p2align 3
L4:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	sub	eax, 1
	jne	L4
L3:
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
	.p2align 4,,10
	.p2align 3
L2:
	.cfi_restore_state
	cmp	ecx, edx
	je	L3
	test	eax, eax
	je	L3
	lea	esi, [eax-1]
	lea	ebx, [edx+1]
	cmp	esi, 2
	jbe	L5
	mov	edi, ecx
	sub	edi, ebx
	cmp	edi, 14
	jbe	L5
	cmp	esi, 14
	jbe	L15
	mov	esi, eax
	mov	edi, ecx
	and	esi, -16
	lea	ebx, [edx+esi]
	.p2align 5
	.p2align 4
	.p2align 3
L7:
	movdqu	xmm0, XMMWORD PTR [edx]
	add	edx, 16
	add	edi, 16
	movups	XMMWORD PTR [edi-16], xmm0
	cmp	edx, ebx
	jne	L7
	lea	edi, [ecx+esi]
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], edi
	mov	edx, edi
	mov	edi, eax
	sub	edi, esi
	cmp	eax, esi
	je	L3
	lea	esi, [edi-1]
	mov	eax, edi
	cmp	esi, 2
	jbe	L10
L6:
	movd	xmm1, DWORD PTR [ebx]
	mov	esi, eax
	shr	esi, 2
	movd	DWORD PTR [edx], xmm1
	cmp	esi, 1
	je	L11
	movd	xmm2, DWORD PTR [ebx+4]
	movd	DWORD PTR [edx+4], xmm2
	cmp	esi, 2
	je	L11
	mov	ebx, DWORD PTR [ebx+8]
	mov	DWORD PTR [edx+8], ebx
L11:
	test	al, 3
	je	L3
	and	eax, -4
	add	DWORD PTR [esp+12], eax
	add	DWORD PTR [esp+8], eax
	sub	edi, eax
L10:
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [esi], al
	cmp	edi, 1
	je	L3
	movzx	ebx, BYTE PTR [edx+1]
	mov	BYTE PTR [esi+1], bl
	cmp	edi, 2
	je	L3
	movzx	edx, BYTE PTR [edx+2]
	mov	BYTE PTR [esi+2], dl
	jmp	L3
	.p2align 4,,10
	.p2align 3
L5:
	add	eax, ecx
	mov	edi, ecx
	jmp	L13
	.p2align 5
	.p2align 4,,10
	.p2align 3
L45:
	add	ebx, 1
L13:
	movzx	edx, BYTE PTR [ebx-1]
	add	edi, 1
	mov	BYTE PTR [edi-1], dl
	cmp	edi, eax
	jne	L45
	jmp	L3
L15:
	mov	DWORD PTR [esp+12], edx
	mov	ebx, edx
	mov	edi, eax
	mov	edx, ecx
	mov	DWORD PTR [esp+8], ecx
	jmp	L6
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
	jne	L47
	jmp	L49
	.p2align 5
	.p2align 4,,10
	.p2align 3
L50:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	L49
L47:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	L50
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
L49:
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
	jne	L59
	jmp	L62
	.p2align 4
	.p2align 4,,10
	.p2align 3
L61:
	add	eax, 1
	sub	edx, 1
	je	L62
L59:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L61
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L62:
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
	jne	L68
	jmp	L67
	.p2align 5
	.p2align 4,,10
	.p2align 3
L70:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	L72
L68:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	L70
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L67:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L72:
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
	je	L80
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L80:
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
	jmp	L86
	.p2align 4
	.p2align 4,,10
	.p2align 3
L88:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	L85
L86:
	cmp	eax, ebx
	jne	L88
	xor	edx, edx
L85:
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
	je	L93
	movzx	edx, BYTE PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memset
L93:
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
	je	L96
	.p2align 4
	.p2align 4
	.p2align 3
L97:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L97
L96:
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
	jne	L103
	jmp	L102
	.p2align 4
	.p2align 4,,10
	.p2align 3
L105:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	L102
L103:
	cmp	eax, ecx
	jne	L105
L102:
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
	jmp	L112
	.p2align 4
	.p2align 4,,10
	.p2align 3
L116:
	add	eax, 1
	test	cl, cl
	je	L115
L112:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L116
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L115:
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
	je	L118
	jmp	L119
	.p2align 5
	.p2align 4,,10
	.p2align 3
L120:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	L119
L118:
	test	al, al
	jne	L120
	xor	eax, eax
L119:
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
	je	L129
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
L128:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L128
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L129:
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
	je	L131
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	L135
	jmp	L150
	.p2align 4,,10
	.p2align 3
L152:
	cmp	edx, ebp
	je	L134
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L151
	mov	edx, esi
L135:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	L152
L134:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
L131:
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
L151:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	L134
L150:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	L134
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
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+16]
	cmp	edx, 1
	jle	L153
	mov	ebx, edx
	lea	ecx, [edx-2]
	shr	ebx
	lea	eax, [ebx-1]
	mov	DWORD PTR [esp+12], eax
	cmp	ecx, 29
	jbe	L161
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, edx
	mov	ecx, edx
	mov	esi, DWORD PTR [ebp+12]
	and	edi, -32
	shr	ecx, 5
	mov	DWORD PTR [esp+8], eax
	add	edi, eax
	mov	eax, 16711935
	movd	xmm0, eax
	mov	eax, DWORD PTR [esp+8]
	pshufd	xmm4, xmm0, 0
	movaps	XMMWORD PTR [esp+16], xmm4
	.p2align 4
	.p2align 3
L156:
	movdqu	xmm5, XMMWORD PTR [eax]
	movdqu	xmm2, XMMWORD PTR [eax+16]
	add	eax, 32
	add	esi, 32
	movdqa	xmm1, XMMWORD PTR [esp+16]
	movdqa	xmm3, XMMWORD PTR [esp+16]
	pand	xmm1, xmm5
	psrlw	xmm5, 8
	pand	xmm3, xmm2
	psrlw	xmm2, 8
	packuswb	xmm1, xmm3
	packuswb	xmm5, xmm2
	movdqa	xmm6, xmm5
	punpckhbw	xmm5, xmm1
	punpcklbw	xmm6, xmm1
	movups	XMMWORD PTR [esi-16], xmm5
	movups	XMMWORD PTR [esi-32], xmm6
	cmp	edi, eax
	jne	L156
	mov	eax, ecx
	mov	esi, DWORD PTR [ebp+12]
	sal	ecx, 5
	sal	eax, 4
	mov	edi, eax
	add	esi, ecx
	add	ecx, DWORD PTR [ebp+8]
	neg	edi
	lea	edx, [edx+edi*2]
	cmp	eax, ebx
	je	L153
L155:
	mov	ebx, DWORD PTR [esp+12]
	sub	ebx, eax
	lea	edi, [ebx+1]
	cmp	ebx, 2
	jbe	L158
	mov	ebx, edi
	add	eax, eax
	shr	ebx, 2
	mov	DWORD PTR [esp+16], ebx
	mov	ebx, DWORD PTR [ebp+8]
	add	ebx, eax
	add	eax, DWORD PTR [ebp+12]
	cmp	DWORD PTR [esp+16], 1
	movd	xmm7, DWORD PTR [ebx]
	movd	xmm0, DWORD PTR [ebx+4]
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
	je	L159
	movd	xmm7, DWORD PTR [ebx+8]
	movd	xmm0, DWORD PTR [ebx+12]
	cmp	DWORD PTR [esp+16], 2
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
	je	L159
	movd	xmm7, DWORD PTR [ebx+16]
	movd	xmm0, DWORD PTR [ebx+20]
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
L159:
	mov	eax, edi
	and	eax, -4
	lea	ebx, [eax+eax]
	neg	eax
	add	esi, ebx
	add	ecx, ebx
	lea	edx, [edx+eax*2]
	and	edi, 3
	je	L153
L158:
	movbe	di, WORD PTR [ecx]
	mov	WORD PTR [esi], di
	cmp	edx, 3
	jle	L153
	movbe	ax, WORD PTR [ecx+2]
	mov	WORD PTR [esi+2], ax
	cmp	edx, 5
	jle	L153
	movbe	cx, WORD PTR [ecx+4]
	mov	WORD PTR [esi+4], cx
L153:
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
L161:
	.cfi_restore_state
	mov	esi, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+8]
	xor	eax, eax
	jmp	L155
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
	jbe	L185
	cmp	dx, 31
	jbe	L185
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L183
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L185:
	mov	edx, 1
L183:
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
	jbe	L195
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L191
	cmp	ax, 8231
	jbe	L191
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L188
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L188
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
L191:
	.cfi_restore_state
	mov	ecx, 1
L188:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L195:
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
	jbe	L196
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L196:
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
	jp	L208
	fxch	st(1)
	fucomi	st, st(0)
	jp	L204
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L207
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L207:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L200
	.p2align 4,,10
	.p2align 3
L208:
	fstp	st(1)
L200:
	ret
	.p2align 4,,10
	.p2align 3
L204:
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
	jp	L217
	fxch	st(1)
	fucomi	st, st(0)
	jp	L213
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L216
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L216:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L209
	.p2align 4,,10
	.p2align 3
L217:
	fstp	st(1)
L209:
	ret
	.p2align 4,,10
	.p2align 3
L213:
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
	jp	L223
	fxch	st(1)
	fucomi	st, st(0)
	jp	L226
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
	je	L220
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L223:
	fstp	st(0)
	jmp	L218
	.p2align 4,,10
	.p2align 3
L226:
	fstp	st(0)
L218:
	ret
	.p2align 4,,10
	.p2align 3
L220:
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
	jp	L232
	fxch	st(1)
	fucomi	st, st(0)
	jp	L235
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
	je	L229
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L232:
	fstp	st(0)
	jmp	L227
	.p2align 4,,10
	.p2align 3
L235:
	fstp	st(0)
L227:
	ret
	.p2align 4,,10
	.p2align 3
L229:
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
	jp	L247
	fxch	st(1)
	fucomi	st, st(0)
	jp	L248
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
	jne	L246
	fcomi	st, st(1)
	jbe	L249
	fstp	st(1)
	jmp	L242
	.p2align 4,,10
	.p2align 3
L248:
	fstp	st(0)
	jmp	L242
	.p2align 4,,10
	.p2align 3
L249:
	fstp	st(0)
	jmp	L242
	.p2align 4,,10
	.p2align 3
L250:
	fstp	st(0)
L242:
	jmp	L236
	.p2align 4,,10
	.p2align 3
L247:
	fstp	st(0)
L236:
	ret
	.p2align 4,,10
	.p2align 3
L246:
	test	edx, edx
	je	L250
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
	jp	L259
	fxch	st(1)
	fucomi	st, st(0)
	jp	L257
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
	je	L253
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L257:
	fstp	st(0)
	jmp	L251
	.p2align 4,,10
	.p2align 3
L259:
	fstp	st(0)
L251:
	ret
	.p2align 4,,10
	.p2align 3
L253:
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
	jp	L268
	fxch	st(1)
	fucomi	st, st(0)
	jp	L266
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
	je	L262
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L266:
	fstp	st(0)
	jmp	L260
	.p2align 4,,10
	.p2align 3
L268:
	fstp	st(0)
L260:
	ret
	.p2align 4,,10
	.p2align 3
L262:
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
	jp	L280
	fxch	st(1)
	fucomi	st, st(0)
	jp	L281
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
	jne	L279
	fcomi	st, st(1)
	jbe	L282
	fstp	st(0)
	jmp	L274
	.p2align 4,,10
	.p2align 3
L280:
	fstp	st(0)
	jmp	L274
	.p2align 4,,10
	.p2align 3
L282:
	fstp	st(1)
	jmp	L274
	.p2align 4,,10
	.p2align 3
L283:
	fstp	st(1)
L274:
	jmp	L269
	.p2align 4,,10
	.p2align 3
L281:
	fstp	st(0)
L269:
	ret
	.p2align 4,,10
	.p2align 3
L279:
	test	edx, edx
	je	L283
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
	je	L285
	.p2align 5
	.p2align 4
	.p2align 3
L286:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L286
L285:
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
	je	L297
	movd	xmm0, DWORD PTR [eax]
	movd	xmm1, eax
	punpckldq	xmm0, xmm1
	movq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	L291
	mov	DWORD PTR [ecx+4], edx
L291:
	ret
	.p2align 4,,10
	.p2align 3
L297:
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
	je	L299
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L299:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L298
	mov	DWORD PTR [eax], edx
L298:
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
	je	L308
	mov	ebx, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+28], ecx
	xor	ebp, ebp
	mov	esi, ebx
	jmp	L310
	.p2align 4,,10
	.p2align 3
L325:
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	je	L324
L310:
	mov	edx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], esi
	mov	ebx, esi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L325
L307:
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
L324:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L308:
	mov	ebp, DWORD PTR [esp+72]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	DWORD PTR [ebp+0], eax
	mov	ebx, ecx
	test	edi, edi
	je	L307
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
	je	L327
	mov	edi, DWORD PTR [esp+52]
	xor	esi, esi
	jmp	L329
	.p2align 4,,10
	.p2align 3
L339:
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	je	L327
L329:
	mov	edx, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edi
	mov	ebx, edi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L339
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
L327:
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
	jbe	L364
	mov	edx, ecx
	jmp	L368
	.p2align 5
	.p2align 4,,10
	.p2align 3
L364:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L364
L368:
	cmp	dl, 32
	je	L364
	cmp	dl, 43
	je	L345
	cmp	dl, 45
	jne	L369
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L354
	mov	ebp, 1
L348:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L351:
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
	jbe	L351
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
L369:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	L348
L354:
	xor	eax, eax
L370:
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
L345:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L348
	xor	eax, eax
	jmp	L370
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
	jbe	L392
	mov	edx, ecx
	jmp	L395
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
L395:
	cmp	dl, 32
	je	L392
	cmp	dl, 43
	je	L375
	cmp	dl, 45
	je	L396
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	L383
L377:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L380:
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
	jbe	L380
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
L396:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L377
L383:
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
L375:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L383
	xor	ebp, ebp
	jmp	L377
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
	jbe	L420
	mov	edx, eax
	jmp	L425
	.p2align 5
	.p2align 4,,10
	.p2align 3
L420:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	esi, [eax-9]
	mov	edx, eax
	cmp	esi, 4
	jbe	L420
L425:
	cmp	dl, 32
	je	L420
	cmp	dl, 43
	je	L401
	cmp	dl, 45
	jne	L426
	movsx	ebp, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L410
	mov	esi, 1
L404:
	mov	DWORD PTR [esp+12], esi
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
L407:
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
	jbe	L407
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	jne	L397
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
L397:
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
L426:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	esi, esi
	mov	eax, ecx
	cmp	ebx, 9
	jbe	L404
L410:
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
L401:
	.cfi_restore_state
	movsx	edi, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	xor	esi, esi
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	L404
	jmp	L410
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
L442:
	test	ebx, ebx
	je	L428
L443:
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
	js	L432
	je	L427
	sub	ebx, 1
	lea	edx, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+52], edx
	test	ebx, ebx
	jne	L443
L428:
	xor	ebp, ebp
L427:
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
L432:
	.cfi_restore_state
	mov	ebx, esi
	jmp	L442
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
	je	L449
	.p2align 4
	.p2align 3
L457:
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
	je	L444
	jle	L447
	lea	ebp, [ebp-1]
	lea	ecx, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+52], ecx
	jne	L457
L449:
	xor	ebx, ebx
L444:
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
L447:
	.cfi_restore_state
	test	esi, esi
	je	L449
	mov	ebp, esi
	jmp	L457
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
	jne	L473
	jmp	L476
	.p2align 5
	.p2align 4,,10
	.p2align 3
L475:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	test	dx, dx
	je	L476
L473:
	cmp	cx, dx
	jne	L475
	ret
	.p2align 4,,10
	.p2align 3
L476:
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
	je	L481
	jmp	L482
	.p2align 5
	.p2align 4,,10
	.p2align 3
L483:
	movzx	eax, WORD PTR [edx+2]
	movzx	ebx, WORD PTR [ecx+2]
	add	edx, 2
	add	ecx, 2
	cmp	ax, bx
	jne	L482
L481:
	test	ax, ax
	jne	L483
L482:
	mov	edx, -1
	cmp	ax, bx
	jb	L480
	xor	edx, edx
	cmp	bx, ax
	setb	dl
L480:
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
L490:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L490
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
	je	L496
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L495:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L495
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L496:
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
	jne	L499
	jmp	L505
	.p2align 4,,10
	.p2align 3
L513:
	test	bx, bx
	je	L503
	add	edx, 2
	add	eax, 2
	sub	ecx, 1
	je	L505
L499:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L513
L503:
	movzx	ebx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	jb	L514
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
L514:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L505:
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
	jne	L516
	jmp	L519
	.p2align 4
	.p2align 4,,10
	.p2align 3
L518:
	add	eax, 2
	sub	edx, 1
	je	L519
L516:
	cmp	WORD PTR [eax], cx
	jne	L518
	ret
	.p2align 4,,10
	.p2align 3
L519:
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
	jne	L524
	jmp	L523
	.p2align 5
	.p2align 4,,10
	.p2align 3
L526:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L529
L524:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L526
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L536
	cmp	ax, bx
	setb	dl
	movzx	eax, dl
L523:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L536:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L529:
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
	je	L538
	mov	edx, DWORD PTR [esp+36]
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L538:
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	cmp	ecx, ebx
	je	L573
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, ecx
	sub	edx, ebx
	lea	edi, [eax+eax]
	lea	esi, [eax-1]
	cmp	edx, edi
	jb	L545
	mov	eax, DWORD PTR [ebp+16]
	test	eax, eax
	je	L573
	cmp	DWORD PTR [ebp+16], 1
	je	L564
	lea	edi, [ebx+2]
	mov	edx, ecx
	sub	edx, edi
	cmp	edx, 12
	jbe	L554
	cmp	esi, 6
	jbe	L565
	mov	esi, DWORD PTR [ebp+16]
	xor	edi, edi
	shr	esi, 3
	.p2align 5
	.p2align 4
	.p2align 3
L556:
	mov	edx, edi
	add	edi, 1
	sal	edx, 4
	movdqu	xmm0, XMMWORD PTR [ebx+edx]
	movups	XMMWORD PTR [ecx+edx], xmm0
	cmp	esi, edi
	jne	L556
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -8
	lea	eax, [esi+esi]
	lea	edx, [ebx+eax]
	lea	edi, [ecx+eax]
	test	BYTE PTR [ebp+16], 7
	je	L573
	sub	DWORD PTR [ebp+16], esi
	cmp	DWORD PTR [ebp+16], 1
	je	L559
L555:
	add	ebx, eax
	mov	esi, DWORD PTR [ebp+16]
	add	eax, ecx
	movd	xmm1, DWORD PTR [ebx]
	shr	esi
	movd	DWORD PTR [eax], xmm1
	cmp	esi, 1
	je	L560
	movd	xmm2, DWORD PTR [ebx+4]
	movd	DWORD PTR [eax+4], xmm2
	cmp	esi, 2
	je	L560
	mov	ebx, DWORD PTR [ebx+8]
	mov	DWORD PTR [eax+8], ebx
L560:
	test	BYTE PTR [ebp+16], 1
	je	L573
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -2
	add	eax, eax
	add	edx, eax
	add	edi, eax
L559:
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [edi], dx
L573:
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
	.p2align 4,,10
	.p2align 3
L545:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+16]
	test	edx, edx
	je	L573
	cmp	esi, 3
	jbe	L592
	lea	edx, [edi-4]
	lea	edi, [ecx-2+edi]
	lea	eax, [ebx+edx]
	cmp	eax, edi
	je	L592
	lea	edx, [edx+ecx]
	mov	edi, eax
	mov	DWORD PTR [esp+12], edx
	mov	edx, DWORD PTR [ebp+16]
	shr	edx
	sal	edx, 2
	sub	edi, edx
	mov	edx, DWORD PTR [esp+12]
	.p2align 5
	.p2align 4
	.p2align 3
L549:
	movd	xmm3, DWORD PTR [eax]
	sub	eax, 4
	sub	edx, 4
	movd	DWORD PTR [edx+4], xmm3
	cmp	edi, eax
	jne	L549
	test	BYTE PTR [ebp+16], 1
	je	L573
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -2
	sub	esi, eax
	mov	eax, ecx
	movzx	ebx, WORD PTR [ebx+esi*2]
	mov	WORD PTR [ecx+esi*2], bx
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
L592:
	.cfi_restore_state
	movzx	edi, WORD PTR [ebx+esi*2]
	mov	WORD PTR [ecx+esi*2], di
	sub	esi, 1
	jb	L573
	movzx	edi, WORD PTR [ebx+esi*2]
	mov	WORD PTR [ecx+esi*2], di
	sub	esi, 1
	jnb	L592
	jmp	L573
	.p2align 4,,10
	.p2align 3
L564:
	xor	esi, esi
	lea	edi, [ebx+2]
L554:
	mov	eax, ecx
	jmp	L562
	.p2align 5
	.p2align 4,,10
	.p2align 3
L596:
	add	edi, 2
L562:
	movzx	ebx, WORD PTR [edi-2]
	add	eax, 2
	mov	WORD PTR [eax-2], bx
	sub	esi, 1
	jb	L573
	jmp	L596
L565:
	mov	edx, ebx
	mov	edi, ecx
	xor	eax, eax
	jmp	L555
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
	je	L598
	lea	esi, [eax-1]
	cmp	esi, 6
	jbe	L602
	movd	xmm0, edi
	mov	ebx, eax
	xor	eax, eax
	punpcklwd	xmm0, xmm0
	shr	ebx, 3
	pshufd	xmm1, xmm0, 0
	.p2align 4
	.p2align 4
	.p2align 3
L600:
	mov	edx, eax
	add	eax, 1
	sal	edx, 4
	movups	XMMWORD PTR [ecx+edx], xmm1
	cmp	ebx, eax
	jne	L600
	mov	ebx, DWORD PTR [ebp+16]
	and	ebx, -8
	sub	esi, ebx
	lea	edx, [ecx+ebx*2]
	test	BYTE PTR [ebp+16], 7
	je	L598
L599:
	mov	WORD PTR [edx], di
	test	esi, esi
	je	L598
	mov	WORD PTR [edx+2], di
	cmp	esi, 1
	je	L598
	mov	WORD PTR [edx+4], di
	cmp	esi, 2
	je	L598
	mov	WORD PTR [edx+6], di
	cmp	esi, 3
	je	L598
	mov	WORD PTR [edx+8], di
	cmp	esi, 4
	je	L598
	mov	WORD PTR [edx+10], di
	cmp	esi, 5
	je	L598
	mov	WORD PTR [edx+12], di
L598:
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
L602:
	.cfi_restore_state
	mov	edx, ecx
	jmp	L599
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
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	edx, ecx
	jnb	L630
	test	eax, eax
	je	L629
	.p2align 4
	.p2align 4
	.p2align 3
L632:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	sub	eax, 1
	jne	L632
L629:
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
L630:
	.cfi_restore_state
	je	L629
	test	eax, eax
	je	L629
	lea	esi, [eax-1]
	lea	ebx, [edx+1]
	cmp	esi, 2
	jbe	L633
	mov	edi, ecx
	sub	edi, ebx
	cmp	edi, 14
	jbe	L633
	cmp	esi, 14
	jbe	L643
	mov	esi, eax
	mov	edi, ecx
	and	esi, -16
	lea	ebx, [edx+esi]
	.p2align 5
	.p2align 4
	.p2align 3
L635:
	movdqu	xmm0, XMMWORD PTR [edx]
	add	edx, 16
	add	edi, 16
	movups	XMMWORD PTR [edi-16], xmm0
	cmp	edx, ebx
	jne	L635
	lea	ecx, [ecx+esi]
	mov	edi, eax
	mov	DWORD PTR [esp+12], ebx
	mov	edx, ecx
	sub	edi, esi
	cmp	eax, esi
	je	L629
	lea	esi, [edi-1]
	mov	eax, edi
	cmp	esi, 2
	jbe	L638
L634:
	movd	xmm1, DWORD PTR [ebx]
	mov	esi, eax
	shr	esi, 2
	movd	DWORD PTR [edx], xmm1
	cmp	esi, 1
	je	L639
	movd	xmm2, DWORD PTR [ebx+4]
	movd	DWORD PTR [edx+4], xmm2
	cmp	esi, 2
	je	L639
	mov	ebx, DWORD PTR [ebx+8]
	mov	DWORD PTR [edx+8], ebx
L639:
	test	al, 3
	je	L629
	and	eax, -4
	add	DWORD PTR [esp+12], eax
	add	ecx, eax
	sub	edi, eax
L638:
	mov	edx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	cmp	edi, 1
	je	L629
	movzx	ebx, BYTE PTR [edx+1]
	mov	BYTE PTR [ecx+1], bl
	cmp	edi, 2
	je	L629
	movzx	edx, BYTE PTR [edx+2]
	mov	BYTE PTR [ecx+2], dl
	jmp	L629
	.p2align 4,,10
	.p2align 3
L633:
	add	edx, eax
	jmp	L641
	.p2align 5
	.p2align 4,,10
	.p2align 3
L671:
	add	ebx, 1
L641:
	movzx	eax, BYTE PTR [ebx-1]
	add	ecx, 1
	mov	BYTE PTR [ecx-1], al
	cmp	ebx, edx
	jne	L671
	jmp	L629
L643:
	mov	DWORD PTR [esp+12], edx
	mov	ebx, edx
	mov	edi, eax
	mov	edx, ecx
	jmp	L634
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
	je	L674
	mov	edx, eax
	xor	eax, eax
L674:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L675
	mov	esi, edi
	xor	edi, edi
L675:
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
	je	L678
	mov	eax, edx
	xor	edx, edx
L678:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L679
	mov	edi, esi
	xor	esi, esi
L679:
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
	jmp	L694
	.p2align 4
	.p2align 4,,10
	.p2align 3
L692:
	cmp	ecx, 32
	je	L696
L694:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	L692
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
L696:
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
	je	L697
	mov	edx, eax
	and	edx, 1
	jne	L697
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L699:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L699
L697:
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
	fld	DWORD PTR LC4
	mov	eax, 1
	fcomip	st, st(1)
	ja	L707
	fld	DWORD PTR LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L704
	.p2align 4,,10
	.p2align 3
L707:
	fstp	st(0)
L704:
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
	fld	QWORD PTR LC6
	mov	eax, 1
	fcomip	st, st(1)
	ja	L711
	fld	QWORD PTR LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L708
	.p2align 4,,10
	.p2align 3
L711:
	fstp	st(0)
L708:
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
	fld	TBYTE PTR LC8
	fcomip	st, st(1)
	ja	L715
	fld	TBYTE PTR LC9
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L712
	.p2align 4,,10
	.p2align 3
L715:
	fstp	st(0)
L712:
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
	jp	L718
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L725
	jne	L725
	jmp	L718
	.p2align 4,,10
	.p2align 3
L733:
	fstp	st(0)
L718:
	ret
	.p2align 4,,10
	.p2align 3
L725:
	fld	DWORD PTR LC10
	test	eax, eax
	jns	L720
	fstp	st(0)
	fld	DWORD PTR LC11
L720:
	test	al, 1
	je	L721
	.p2align 4
	.p2align 3
L722:
	fmul	st(1), st
L721:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L733
	fmul	st, st(0)
	test	al, 1
	jne	L722
L732:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L722
	jmp	L732
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
	jp	L735
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L742
	jne	L742
	jmp	L735
	.p2align 4,,10
	.p2align 3
L751:
	fstp	st(0)
L735:
	ret
	.p2align 4,,10
	.p2align 3
L742:
	test	eax, eax
	js	L749
	fld	DWORD PTR LC10
L737:
	test	al, 1
	je	L738
	.p2align 4
	.p2align 3
L739:
	fmul	st(1), st
L738:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L751
	fmul	st, st(0)
	test	al, 1
	jne	L739
L750:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L739
	jmp	L750
	.p2align 4,,10
	.p2align 3
L749:
	fld	DWORD PTR LC11
	jmp	L737
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
	jp	L753
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L760
	jne	L760
	jmp	L753
	.p2align 4,,10
	.p2align 3
L769:
	fstp	st(0)
L753:
	ret
	.p2align 4,,10
	.p2align 3
L760:
	test	eax, eax
	js	L767
	fld	DWORD PTR LC10
L755:
	test	al, 1
	je	L756
	.p2align 4
	.p2align 3
L757:
	fmul	st(1), st
L756:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L769
	fmul	st, st(0)
	test	al, 1
	jne	L757
L768:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L757
	jmp	L768
	.p2align 4,,10
	.p2align 3
L767:
	fld	DWORD PTR LC11
	jmp	L755
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
	je	L771
	lea	eax, [ecx-1]
	cmp	eax, 14
	jbe	L778
	mov	edx, ecx
	mov	esi, DWORD PTR [ebp+8]
	mov	eax, ebx
	and	edx, -16
	lea	edi, [edx+ebx]
	.p2align 5
	.p2align 4
	.p2align 3
L773:
	movdqu	xmm1, XMMWORD PTR [esi]
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	esi, 16
	pxor	xmm0, xmm1
	movups	XMMWORD PTR [esi-16], xmm0
	cmp	eax, edi
	jne	L773
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, ecx
	sub	edi, edx
	mov	DWORD PTR [esp+12], edi
	add	esi, edx
	cmp	ecx, edx
	je	L771
L772:
	sub	ecx, edx
	lea	edi, [ecx-1]
	cmp	edi, 2
	jbe	L775
	add	ebx, edx
	add	edx, DWORD PTR [ebp+8]
	mov	edi, ecx
	movd	xmm2, DWORD PTR [edx]
	movd	xmm3, DWORD PTR [ebx]
	shr	edi, 2
	pxor	xmm2, xmm3
	movd	DWORD PTR [edx], xmm2
	cmp	edi, 1
	je	L776
	movd	xmm5, DWORD PTR [edx+4]
	movd	xmm4, DWORD PTR [ebx+4]
	pxor	xmm5, xmm4
	movd	DWORD PTR [edx+4], xmm5
	cmp	edi, 2
	je	L776
	movd	xmm7, DWORD PTR [edx+8]
	movd	xmm6, DWORD PTR [ebx+8]
	pxor	xmm7, xmm6
	movd	DWORD PTR [edx+8], xmm7
L776:
	mov	ebx, ecx
	and	ebx, -4
	sub	DWORD PTR [esp+12], ebx
	add	esi, ebx
	add	eax, ebx
	and	ecx, 3
	je	L771
L775:
	mov	edi, DWORD PTR [esp+12]
	movzx	ecx, BYTE PTR [eax]
	xor	BYTE PTR [esi], cl
	cmp	edi, 1
	je	L771
	movzx	edx, BYTE PTR [eax+1]
	xor	BYTE PTR [esi+1], dl
	cmp	edi, 2
	je	L771
	movzx	eax, BYTE PTR [eax+2]
	xor	BYTE PTR [esi+2], al
L771:
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
L778:
	.cfi_restore_state
	mov	DWORD PTR [esp+12], ecx
	mov	esi, DWORD PTR [ebp+8]
	mov	eax, ebx
	xor	edx, edx
	jmp	L772
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
	je	L800
	.p2align 3
	.p2align 4
	.p2align 3
L801:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L801
L800:
	test	edx, edx
	jne	L802
	jmp	L803
	.p2align 5
	.p2align 4,,10
	.p2align 3
L804:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L803
L802:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L804
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
L803:
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
	je	L814
L815:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L817
L814:
	ret
	.p2align 4,,10
	.p2align 3
L817:
	add	eax, 1
	cmp	edx, eax
	jne	L815
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
	je	L828
L824:
	mov	eax, DWORD PTR [esp+12]
	jmp	L827
	.p2align 4
	.p2align 4,,10
	.p2align 3
L826:
	add	eax, 1
	cmp	dl, cl
	je	L825
L827:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L826
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L824
L828:
	xor	ebx, ebx
L825:
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
L834:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L834
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
	je	L849
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
L839:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L839
	mov	esi, edx
	sub	eax, ebp
	je	L837
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	L859
	.p2align 4
	.p2align 4,,10
	.p2align 3
L862:
	add	edx, 1
	test	cl, cl
	je	L861
L859:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	L862
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	L841
	.p2align 4,,10
	.p2align 3
L863:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	L842
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	L842
L841:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	L863
L842:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	L849
	add	edx, 1
	jmp	L859
	.p2align 4,,10
	.p2align 3
L861:
	xor	esi, esi
L837:
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
L849:
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
	ja	L874
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L875
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L867
	jmp	L868
	.p2align 4,,10
	.p2align 3
L875:
	fstp	st(1)
	fstp	st(1)
L868:
	ret
	.p2align 4,,10
	.p2align 3
L874:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L868
L867:
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
	je	L876
	cmp	esi, DWORD PTR [esp+32]
	jb	L887
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	L887
	movzx	ebp, BYTE PTR [edi]
	jmp	L882
	.p2align 4
	.p2align 4,,10
	.p2align 3
L886:
	mov	edx, ebx
L878:
	cmp	esi, edx
	jb	L887
L882:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	L886
	cmp	DWORD PTR [esp+32], 1
	je	L876
L881:
	mov	eax, 1
	jmp	L879
	.p2align 5
	.p2align 4,,10
	.p2align 3
L880:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	L876
L879:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	L880
	cmp	esi, ebx
	jb	L887
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	L878
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	L881
	.p2align 4,,10
	.p2align 3
L887:
	xor	edx, edx
L876:
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
	je	L898
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L898:
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
	ja	L927
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L928
	fstp	st(0)
L906:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L913:
	fld	DWORD PTR LC11
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L913
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L903
L930:
	fchs
L903:
	ret
	.p2align 4,,10
	.p2align 3
L928:
	fld	DWORD PTR LC11
	fcomip	st, st(2)
	jbe	L931
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L919
	jne	L919
	jmp	L909
	.p2align 4,,10
	.p2align 3
L931:
	fstp	st(0)
	jmp	L909
	.p2align 4,,10
	.p2align 3
L932:
	fstp	st(0)
L909:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L927:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L929
	fstp	st(1)
	mov	edx, 1
	jmp	L906
	.p2align 4,,10
	.p2align 3
L929:
	fld	DWORD PTR LC13
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L932
	fstp	st(1)
	mov	edx, 1
L907:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L915:
	fadd	st, st(0)
	fld	DWORD PTR LC11
	sub	eax, 1
	fcomip	st, st(1)
	ja	L915
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L930
	ret
L919:
	xor	edx, edx
	jmp	L907
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
	je	L933
	.p2align 6
	.p2align 4
	.p2align 3
L935:
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
	jne	L935
L933:
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
	jnb	L963
	mov	ecx, 1
	jmp	L940
	.p2align 4,,10
	.p2align 3
L943:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L942
	test	ecx, ecx
	je	L942
L940:
	test	edx, edx
	jns	L943
L944:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L946:
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
	jne	L946
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L945:
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
L942:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L944
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
L963:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L945
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
	je	L967
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
L967:
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
	je	L972
	test	edi, edi
	je	L974
	bsr	ebp, edi
	xor	ebp, 31
L975:
	lea	ecx, [ebp-1]
L972:
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
L974:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	L975
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
	je	L979
	.p2align 5
	.p2align 4
	.p2align 3
L981:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L981
L979:
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
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+12]
	and	eax, -8
	shr	esi, 3
	mov	DWORD PTR [esp+12], eax
	cmp	DWORD PTR [ebp+8], ecx
	jb	L989
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	cmp	edx, DWORD PTR [ebp+8]
	jnb	L1026
L989:
	test	esi, esi
	je	L988
	lea	edx, [esi-1]
	cmp	edx, 2
	jbe	L992
	lea	edi, [ecx+8]
	cmp	DWORD PTR [ebp+8], edi
	je	L992
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
L993:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	eax, ebx
	jne	L993
	lea	eax, [edi+edi]
	cmp	esi, eax
	je	L988
	sal	edi, 4
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ecx+edi]
	mov	edx, DWORD PTR [ecx+4+edi]
	mov	DWORD PTR [esi+edi], ebx
	mov	DWORD PTR [esi+4+edi], edx
L988:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [ebp+16]
	jnb	L985
	mov	ebx, DWORD PTR [ebp+16]
	mov	esi, eax
	sub	ebx, eax
	lea	edx, [ebx-1]
	cmp	edx, 2
	jbe	L1027
	mov	eax, DWORD PTR [ebp+8]
	lea	edi, [ecx+1+esi]
	add	eax, esi
	mov	esi, eax
	sub	esi, edi
	cmp	esi, 14
	jbe	L997
	cmp	edx, 14
	jbe	L1006
	mov	edi, DWORD PTR [esp+12]
	lea	edx, [ecx+edi]
	mov	edi, ebx
	and	edi, -16
	lea	esi, [edi+edx]
	.p2align 5
	.p2align 4
	.p2align 3
L999:
	movdqu	xmm1, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm1
	cmp	edx, esi
	jne	L999
	mov	edx, DWORD PTR [esp+12]
	add	edx, edi
	mov	eax, edx
	cmp	edi, ebx
	je	L985
	sub	ebx, edi
	lea	edi, [ebx-1]
	cmp	edi, 2
	jbe	L1001
L998:
	lea	esi, [ecx+edx]
	mov	edi, ebx
	add	edx, DWORD PTR [ebp+8]
	movd	xmm2, DWORD PTR [esi]
	shr	edi, 2
	movd	DWORD PTR [edx], xmm2
	cmp	edi, 1
	je	L1002
	movd	xmm3, DWORD PTR [esi+4]
	movd	DWORD PTR [edx+4], xmm3
	cmp	edi, 2
	je	L1002
	mov	edi, DWORD PTR [esi+8]
	mov	DWORD PTR [edx+8], edi
L1002:
	mov	edx, ebx
	and	edx, -4
	add	eax, edx
	and	ebx, 3
	je	L985
L1001:
	movzx	ebx, BYTE PTR [ecx+eax]
	mov	esi, DWORD PTR [ebp+8]
	lea	edi, [eax+1]
	mov	BYTE PTR [esi+eax], bl
	cmp	edi, DWORD PTR [ebp+16]
	jnb	L985
	movzx	edx, BYTE PTR [ecx+1+eax]
	lea	ebx, [eax+2]
	mov	BYTE PTR [esi+1+eax], dl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	L985
	movzx	edx, BYTE PTR [ecx+2+eax]
	mov	BYTE PTR [esi+2+eax], dl
L985:
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
L1026:
	.cfi_restore_state
	mov	edi, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+16]
	sub	edi, 1
	test	ebx, ebx
	je	L985
	mov	esi, DWORD PTR [ebp+8]
	.p2align 4
	.p2align 4
	.p2align 3
L990:
	movzx	eax, BYTE PTR [ecx+edi]
	mov	BYTE PTR [esi+edi], al
	sub	edi, 1
	jnb	L990
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
L1006:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+12]
	mov	edx, eax
	jmp	L998
	.p2align 4,,10
	.p2align 3
L992:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, ecx
	lea	ebx, [ecx+esi*8]
	.p2align 5
	.p2align 4
	.p2align 3
L995:
	mov	esi, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], esi
	mov	DWORD PTR [edx-4], edi
	cmp	ebx, eax
	jne	L995
	jmp	L988
	.p2align 4,,10
	.p2align 3
L1027:
	mov	eax, DWORD PTR [ebp+8]
	add	eax, esi
L997:
	mov	esi, DWORD PTR [esp+12]
	add	esi, ecx
	add	ecx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1004:
	movzx	ebx, BYTE PTR [esi]
	add	esi, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, esi
	jne	L1004
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
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
	mov	esi, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	shr	esi
	cmp	ebx, ecx
	jb	L1032
	mov	eax, DWORD PTR [ebp+16]
	add	eax, ecx
	cmp	eax, ebx
	jnb	L1070
L1032:
	test	esi, esi
	je	L1031
	cmp	esi, 1
	je	L1035
	lea	edi, [ecx+2]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 12
	jbe	L1035
	lea	eax, [esi-1]
	cmp	eax, 6
	jbe	L1045
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, ecx
	mov	edx, ebx
	shr	edi, 4
	mov	DWORD PTR [esp+12], edi
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -16
	add	edi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1037:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	edi, eax
	jne	L1037
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 3
	cmp	esi, eax
	je	L1031
	sub	esi, eax
	cmp	esi, 1
	je	L1039
L1036:
	mov	edx, esi
	shr	edx
	mov	DWORD PTR [esp+12], edx
	lea	edx, [eax+eax]
	lea	edi, [ecx+edx]
	add	edx, ebx
	cmp	DWORD PTR [esp+12], 1
	movd	xmm1, DWORD PTR [edi]
	movd	DWORD PTR [edx], xmm1
	je	L1040
	movd	xmm2, DWORD PTR [edi+4]
	cmp	DWORD PTR [esp+12], 2
	movd	DWORD PTR [edx+4], xmm2
	je	L1040
	mov	edi, DWORD PTR [edi+8]
	mov	DWORD PTR [edx+8], edi
L1040:
	test	esi, 1
	je	L1031
	and	esi, -2
	add	eax, esi
L1039:
	movzx	esi, WORD PTR [ecx+eax*2]
	mov	WORD PTR [ebx+eax*2], si
L1031:
	test	BYTE PTR [ebp+16], 1
	je	L1028
L1071:
	mov	eax, DWORD PTR [ebp+16]
	movzx	edx, BYTE PTR [ecx-1+eax]
	mov	ecx, DWORD PTR [ebp+16]
	mov	BYTE PTR [ebx-1+ecx], dl
L1028:
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
L1070:
	.cfi_restore_state
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+16]
	sub	edi, 1
	test	edx, edx
	je	L1028
	.p2align 4
	.p2align 4
	.p2align 3
L1033:
	movzx	eax, BYTE PTR [ecx+edi]
	mov	BYTE PTR [ebx+edi], al
	sub	edi, 1
	jnb	L1033
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
L1045:
	.cfi_restore_state
	xor	eax, eax
	jmp	L1036
	.p2align 4,,10
	.p2align 3
L1035:
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
L1042:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	esi, eax
	jne	L1042
	test	BYTE PTR [ebp+16], 1
	je	L1028
	jmp	L1071
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
	mov	edi, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	and	eax, -4
	shr	esi, 2
	mov	DWORD PTR [esp+12], eax
	cmp	edi, ecx
	jb	L1077
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	cmp	edx, edi
	jnb	L1113
L1077:
	test	esi, esi
	je	L1114
	lea	edx, [esi-1]
	cmp	edx, 2
	jbe	L1079
	lea	ebx, [ecx+4]
	mov	eax, edi
	sub	eax, ebx
	cmp	eax, 8
	jbe	L1079
	mov	edx, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+16]
	mov	eax, ecx
	shr	edx, 4
	and	ebx, -16
	mov	DWORD PTR [esp+8], edx
	add	ebx, ecx
	mov	edx, edi
	.p2align 5
	.p2align 4
	.p2align 3
L1080:
	movdqu	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	eax, ebx
	jne	L1080
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [0+eax*4]
	cmp	esi, edx
	je	L1083
	sal	eax, 4
	mov	ebx, DWORD PTR [ecx+eax]
	mov	DWORD PTR [edi+eax], ebx
	lea	ebx, [edx+1]
	cmp	ebx, esi
	jnb	L1083
	mov	ebx, DWORD PTR [ecx+4+eax]
	add	edx, 2
	mov	DWORD PTR [edi+4+eax], ebx
	cmp	edx, esi
	jnb	L1083
	mov	esi, DWORD PTR [ecx+8+eax]
	mov	DWORD PTR [edi+8+eax], esi
L1083:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [ebp+16]
	jnb	L1072
	mov	ebx, DWORD PTR [ebp+16]
	sub	ebx, eax
	lea	edx, [ebx-1]
	mov	DWORD PTR [esp+8], edx
	cmp	edx, 2
	jbe	L1115
	mov	esi, DWORD PTR [esp+12]
	lea	eax, [edi+esi]
	lea	esi, [ecx+1+esi]
	mov	edx, eax
	sub	edx, esi
	cmp	edx, 14
	jbe	L1075
	cmp	DWORD PTR [esp+8], 14
	jbe	L1092
	mov	esi, DWORD PTR [esp+12]
	lea	edx, [ecx+esi]
	mov	esi, ebx
	and	esi, -16
	mov	DWORD PTR [esp+8], esi
	add	esi, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1085:
	movdqu	xmm1, XMMWORD PTR [edx]
	add	edx, 16
	add	eax, 16
	movups	XMMWORD PTR [eax-16], xmm1
	cmp	esi, edx
	jne	L1085
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+8]
	add	edx, esi
	mov	eax, edx
	cmp	ebx, esi
	je	L1072
	sub	ebx, esi
	lea	esi, [ebx-1]
	cmp	esi, 2
	jbe	L1087
L1084:
	mov	esi, ebx
	shr	esi, 2
	mov	DWORD PTR [esp+12], esi
	lea	esi, [ecx+edx]
	add	edx, edi
	cmp	DWORD PTR [esp+12], 1
	movd	xmm2, DWORD PTR [esi]
	movd	DWORD PTR [edx], xmm2
	je	L1088
	movd	xmm3, DWORD PTR [esi+4]
	cmp	DWORD PTR [esp+12], 2
	movd	DWORD PTR [edx+4], xmm3
	je	L1088
	mov	esi, DWORD PTR [esi+8]
	mov	DWORD PTR [edx+8], esi
L1088:
	mov	edx, ebx
	and	edx, -4
	add	eax, edx
	and	ebx, 3
	je	L1072
L1087:
	movzx	ebx, BYTE PTR [ecx+eax]
	lea	esi, [eax+1]
	mov	BYTE PTR [edi+eax], bl
	cmp	esi, DWORD PTR [ebp+16]
	jnb	L1072
	movzx	edx, BYTE PTR [ecx+1+eax]
	lea	ebx, [eax+2]
	mov	BYTE PTR [edi+1+eax], dl
	cmp	ebx, DWORD PTR [ebp+16]
	jnb	L1072
	movzx	ecx, BYTE PTR [ecx+2+eax]
	mov	BYTE PTR [edi+2+eax], cl
L1072:
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
L1113:
	.cfi_restore_state
	mov	ebx, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	sub	ebx, 1
	test	esi, esi
	je	L1072
	.p2align 4
	.p2align 4
	.p2align 3
L1078:
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [edi+ebx], al
	sub	ebx, 1
	jnb	L1078
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
L1092:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+12]
	mov	edx, eax
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1114:
	mov	eax, DWORD PTR [esp+12]
	add	eax, edi
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	L1072
L1075:
	mov	edi, DWORD PTR [esp+12]
	add	edi, ecx
	add	ecx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1090:
	movzx	edx, BYTE PTR [edi]
	add	edi, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], dl
	cmp	edi, ecx
	jne	L1090
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
L1079:
	.cfi_restore_state
	mov	eax, ecx
	mov	edx, edi
	lea	ebx, [ecx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L1082:
	mov	esi, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], esi
	cmp	ebx, eax
	jne	L1082
	jmp	L1083
L1115:
	mov	eax, DWORD PTR [esp+12]
	add	eax, edi
	jmp	L1075
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
	jns	L1122
	fld	DWORD PTR LC15
	faddp	st(1), st
L1122:
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
	jns	L1125
	fld	DWORD PTR LC15
	faddp	st(1), st
L1125:
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
	jne	L1131
	mov	eax, edx
	sar	eax, 14
	jne	L1128
	mov	eax, edx
	shr	eax, 13
	jne	L1132
	mov	eax, edx
	shr	eax, 12
	jne	L1133
	mov	eax, edx
	shr	eax, 11
	jne	L1134
	mov	eax, edx
	shr	eax, 10
	jne	L1135
	mov	eax, edx
	shr	eax, 9
	jne	L1136
	mov	eax, edx
	shr	eax, 8
	jne	L1137
	mov	eax, edx
	shr	eax, 7
	jne	L1138
	mov	eax, edx
	shr	eax, 6
	jne	L1139
	mov	eax, edx
	shr	eax, 5
	jne	L1140
	mov	eax, edx
	shr	eax, 4
	jne	L1141
	mov	eax, edx
	shr	eax, 3
	jne	L1142
	mov	eax, edx
	shr	eax, 2
	jne	L1143
	shr	edx
	jne	L1144
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
L1144:
	mov	eax, 14
L1128:
	ret
L1131:
	xor	eax, eax
	ret
L1142:
	mov	eax, 12
	ret
L1132:
	mov	eax, 2
	ret
L1133:
	mov	eax, 3
	ret
L1134:
	mov	eax, 4
	ret
L1135:
	mov	eax, 5
	ret
L1136:
	mov	eax, 6
	ret
L1137:
	mov	eax, 7
	ret
L1138:
	mov	eax, 8
	ret
L1139:
	mov	eax, 9
	ret
L1140:
	mov	eax, 10
	ret
L1141:
	mov	eax, 11
	ret
L1143:
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
	jne	L1149
	test	al, 2
	jne	L1150
	test	al, 4
	jne	L1151
	test	al, 8
	jne	L1152
	test	al, 16
	jne	L1153
	test	al, 32
	jne	L1154
	test	al, 64
	jne	L1155
	test	al, -128
	jne	L1156
	test	ah, 1
	jne	L1157
	test	ah, 2
	jne	L1158
	test	ah, 4
	jne	L1159
	test	ah, 8
	jne	L1160
	test	ah, 16
	jne	L1161
	test	ah, 32
	jne	L1162
	test	ah, 64
	jne	L1163
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
L1149:
	xor	eax, eax
	ret
L1150:
	mov	eax, 1
	ret
L1161:
	mov	eax, 12
	ret
L1151:
	mov	eax, 2
	ret
L1152:
	mov	eax, 3
	ret
L1153:
	mov	eax, 4
	ret
L1154:
	mov	eax, 5
	ret
L1155:
	mov	eax, 6
	ret
L1156:
	mov	eax, 7
	ret
L1157:
	mov	eax, 8
	ret
L1158:
	mov	eax, 9
	ret
L1159:
	mov	eax, 10
	ret
L1160:
	mov	eax, 11
	ret
L1162:
	mov	eax, 13
	ret
L1163:
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
	fld	DWORD PTR LC16
	fld	DWORD PTR [esp+8]
	fcomi	st, st(1)
	jnb	L1172
	fstp	st(0)
	fstp	st(0)
	cvttss2si	eax, DWORD PTR [esp+8]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1172:
	.cfi_restore_state
	fsubrp	st(1), st
	fstp	DWORD PTR [esp]
	cvttss2si	eax, DWORD PTR [esp]
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
	je	L1175
	.p2align 5
	.p2align 4
	.p2align 3
L1177:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1177
L1175:
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
	je	L1181
	test	edx, edx
	je	L1181
	.p2align 5
	.p2align 4
	.p2align 3
L1183:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1183
L1181:
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
	jnb	L1213
	mov	ecx, 1
	jmp	L1190
	.p2align 4,,10
	.p2align 3
L1193:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1192
	test	ecx, ecx
	je	L1192
L1190:
	test	edx, edx
	jns	L1193
L1194:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1196:
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
	jne	L1196
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1195:
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
L1192:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1194
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
L1213:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1195
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
	ja	L1220
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1217
	.p2align 4,,10
	.p2align 3
L1220:
	fstp	st(0)
	fstp	st(0)
L1217:
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
	ja	L1224
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1221
	.p2align 4,,10
	.p2align 3
L1224:
	fstp	st(0)
	fstp	st(0)
L1221:
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
	js	L1237
	je	L1232
	xor	edi, edi
L1229:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L1231:
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
	jne	L1231
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
L1237:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L1229
	.p2align 4,,10
	.p2align 3
L1232:
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
	jns	L1239
	neg	ebx
	xor	eax, eax
	mov	edi, 1
L1239:
	test	esi, esi
	jns	L1240
	neg	esi
	mov	edi, eax
L1240:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	L1241
	jmp	L1265
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1271:
	test	eax, eax
	je	L1246
L1241:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	L1271
L1246:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	L1266
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
L1243:
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
	jne	L1243
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
L1244:
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
L1266:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	L1244
L1265:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	L1244
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
	jns	L1273
	neg	ebx
	mov	esi, 1
L1273:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	L1274
	jmp	L1298
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1302:
	test	edx, edx
	je	L1294
L1274:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	L1302
	test	edx, edx
	je	L1294
	.p2align 4
	.p2align 4
	.p2align 3
L1276:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L1276
L1277:
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
L1294:
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
L1298:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	L1277
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
	jb	L1304
	jmp	L1372
	.p2align 4,,10
	.p2align 3
L1307:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	L1306
	test	ax, ax
	je	L1306
	mov	ecx, eax
	mov	edx, ebx
L1304:
	test	dx, dx
	jns	L1307
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
	je	L1373
L1311:
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	je	L1309
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
	jns	L1309
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
L1309:
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
L1306:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	L1309
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
	jmp	L1311
L1372:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	L1309
L1373:
	mov	WORD PTR [esp+2], ax
	jmp	L1309
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
	jnb	L1398
	mov	ecx, 1
	jmp	L1375
	.p2align 4,,10
	.p2align 3
L1378:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1377
	test	ecx, ecx
	je	L1377
L1375:
	test	edx, edx
	jns	L1378
L1379:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1381:
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
	jne	L1381
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1380:
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
L1377:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1379
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
L1398:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1380
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
	je	L1403
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
L1403:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1406
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
L1406:
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
	je	L1409
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
L1409:
	.cfi_restore_state
	test	ebx, ebx
	je	L1412
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
L1412:
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
	jl	L1418
	mov	eax, 2
	jg	L1418
	xor	eax, eax
	cmp	edx, ecx
	jb	L1418
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1418:
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
	jl	L1425
	mov	eax, 1
	jg	L1425
	mov	eax, -1
	cmp	edx, ecx
	jb	L1425
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1425:
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
	je	L1434
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
L1434:
	.cfi_restore_state
	test	ebx, ebx
	je	L1437
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
L1437:
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
	je	L1450
	jmp	L1452
	.p2align 4,,10
	.p2align 3
L1457:
	fxch	st(1)
	jmp	L1452
	.p2align 4,,10
	.p2align 3
L1458:
	fxch	st(1)
L1452:
	fmul	st, st(1)
L1450:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1451
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1457
L1456:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1458
	jmp	L1456
	.p2align 4,,10
	.p2align 3
L1451:
	fstp	st(1)
	test	ecx, ecx
	jns	L1449
	fld1
	fdivrp	st(1), st
L1449:
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
	je	L1460
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1467:
	fxch	st(1)
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1468:
	fxch	st(1)
L1462:
	fmul	st, st(1)
L1460:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1461
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1467
L1466:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1468
	jmp	L1466
	.p2align 4,,10
	.p2align 3
L1461:
	fstp	st(1)
	test	ecx, ecx
	jns	L1459
	fld1
	fdivrp	st(1), st
L1459:
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
	jb	L1469
	mov	eax, 2
	cmp	ecx, edx
	jb	L1469
	xor	eax, eax
	cmp	ebx, esi
	jb	L1469
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1469:
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
	jb	L1476
	mov	eax, 1
	cmp	ecx, edx
	jb	L1476
	mov	eax, -1
	cmp	ebx, esi
	jb	L1476
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1476:
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
	.align 4
LC4:
	.long	-8388609
	.align 4
LC5:
	.long	2139095039
	.align 8
LC6:
	.long	-1
	.long	-1048577
	.align 8
LC7:
	.long	-1
	.long	2146435071
	.align 16
LC8:
	.long	-1
	.long	-1
	.long	65534
	.align 16
LC9:
	.long	-1
	.long	-1
	.long	32766
	.align 4
LC10:
	.long	1073741824
	.align 4
LC11:
	.long	1056964608
	.align 4
LC13:
	.long	-1090519040
	.align 4
LC15:
	.long	1602224128
	.align 4
LC16:
	.long	1191182336
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
