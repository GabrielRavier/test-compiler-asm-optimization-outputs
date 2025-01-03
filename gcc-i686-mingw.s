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
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	L2
	test	eax, eax
	je	L3
	lea	ecx, [eax-1]
	cmp	ecx, 30
	jbe	L11
	mov	edi, DWORD PTR [ebp+8]
	lea	esi, [edx-2+eax]
	sub	edi, esi
	lea	ebx, [edi+62+ecx]
	cmp	ebx, 62
	jbe	L11
	lea	esi, [edx+eax]
	mov	DWORD PTR [esp+60], esi
	mov	esi, DWORD PTR [ebp+8]
	add	esi, eax
	cmp	ecx, 62
	jbe	L23
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
L6:
	vmovdqu8	zmm2, ZMMWORD PTR [ecx]
	sub	ecx, 64
	sub	ebx, 64
	vmovdqu8	ZMMWORD PTR [ebx+64], zmm2
	cmp	edi, ecx
	jne	L6
	mov	edi, DWORD PTR [esp+56]
	mov	ecx, eax
	sub	DWORD PTR [esp+60], edi
	sub	esi, edi
	sub	ecx, edi
	cmp	eax, edi
	je	L49
	lea	ebx, [ecx-1]
	mov	eax, ecx
	cmp	ebx, 30
	jbe	L8
L5:
	vmovdqu8	ymm3, YMMWORD PTR [edx-32+eax]
	mov	edi, eax
	mov	edx, DWORD PTR [ebp+8]
	and	edi, -32
	sub	DWORD PTR [esp+60], edi
	vmovdqu8	YMMWORD PTR [edx-32+eax], ymm3
	sub	esi, edi
	sub	ecx, edi
	test	al, 31
	je	L49
L8:
	mov	edi, DWORD PTR [esp+60]
	mov	ebx, ecx
	neg	ebx
	sub	edi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L10:
	movzx	edx, BYTE PTR [edi-1+ecx]
	lea	eax, [esi+ebx]
	mov	BYTE PTR [eax-1+ecx], dl
	sub	ecx, 1
	jne	L10
L49:
	vzeroupper
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
	cmp	DWORD PTR [ebp+8], edx
	je	L3
	test	eax, eax
	je	L3
	lea	ecx, [eax-1]
	lea	esi, [edx+1]
	cmp	ecx, 30
	jbe	L13
	mov	ebx, DWORD PTR [ebp+8]
	sub	ebx, esi
	cmp	ebx, 62
	jbe	L13
	cmp	ecx, 62
	jbe	L24
	mov	ecx, eax
	mov	ebx, DWORD PTR [ebp+8]
	mov	edi, edx
	and	ecx, -64
	lea	esi, [ecx+edx]
	.p2align 5
	.p2align 4
	.p2align 3
L15:
	vmovdqu8	zmm0, ZMMWORD PTR [edi]
	add	edi, 64
	add	ebx, 64
	vmovdqu8	ZMMWORD PTR [ebx-64], zmm0
	cmp	esi, edi
	jne	L15
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	mov	DWORD PTR [esp+60], esi
	sub	ebx, ecx
	add	edi, ecx
	cmp	eax, ecx
	je	L49
	lea	esi, [ebx-1]
	mov	eax, ebx
	cmp	esi, 30
	jbe	L18
L14:
	vmovdqu8	ymm1, YMMWORD PTR [edx+ecx]
	mov	edx, DWORD PTR [ebp+8]
	vmovdqu8	YMMWORD PTR [edx+ecx], ymm1
	mov	ecx, eax
	and	ecx, -32
	add	DWORD PTR [esp+60], ecx
	add	edi, ecx
	sub	ebx, ecx
	test	al, 31
	je	L49
L18:
	mov	esi, DWORD PTR [esp+60]
	add	ebx, edi
	.p2align 3
	.p2align 4
	.p2align 3
L20:
	movsb
	cmp	ebx, edi
	jne	L20
	vzeroupper
	jmp	L3
	.p2align 4,,10
	.p2align 3
L11:
	mov	esi, DWORD PTR [ebp+8]
	jmp	L45
	.p2align 5
	.p2align 4,,10
	.p2align 3
L52:
	sub	ecx, 1
L45:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [esi-1+eax], bl
	mov	eax, ecx
	test	ecx, ecx
	jne	L52
	jmp	L3
	.p2align 4,,10
	.p2align 3
L13:
	mov	edi, DWORD PTR [ebp+8]
	add	eax, DWORD PTR [ebp+8]
	jmp	L21
	.p2align 5
	.p2align 4,,10
	.p2align 3
L53:
	add	esi, 1
L21:
	movzx	ebx, BYTE PTR [esi-1]
	add	edi, 1
	mov	BYTE PTR [edi-1], bl
	cmp	eax, edi
	jne	L53
	jmp	L3
L23:
	mov	ecx, eax
	jmp	L5
L24:
	mov	DWORD PTR [esp+60], edx
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, eax
	xor	ecx, ecx
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
	jne	L55
	jmp	L57
	.p2align 5
	.p2align 4,,10
	.p2align 3
L58:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	L57
L55:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	L58
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
L57:
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
	jne	L67
	jmp	L70
	.p2align 4
	.p2align 4,,10
	.p2align 3
L69:
	add	eax, 1
	sub	edx, 1
	je	L70
L67:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L69
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L70:
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
	jne	L76
	jmp	L75
	.p2align 5
	.p2align 4,,10
	.p2align 3
L78:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	L80
L76:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	L78
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L75:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L80:
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
	je	L88
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L88:
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
	jmp	L94
	.p2align 4
	.p2align 4,,10
	.p2align 3
L96:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	L93
L94:
	cmp	ebx, eax
	jne	L96
	xor	edx, edx
L93:
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
	je	L101
	movzx	edx, BYTE PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], edx
	call	_memset
L101:
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
	je	L104
	.p2align 4
	.p2align 4
	.p2align 3
L105:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L105
L104:
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
	jne	L111
	jmp	L110
	.p2align 4
	.p2align 4,,10
	.p2align 3
L113:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	L110
L111:
	cmp	eax, ecx
	jne	L113
L110:
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
	jmp	L120
	.p2align 4
	.p2align 4,,10
	.p2align 3
L124:
	add	eax, 1
	test	cl, cl
	je	L123
L120:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L124
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L123:
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
	je	L126
	jmp	L127
	.p2align 5
	.p2align 4,,10
	.p2align 3
L128:
	movzx	eax, BYTE PTR [edx+1]
	movzx	ebx, BYTE PTR [ecx+1]
	add	edx, 1
	add	ecx, 1
	cmp	al, bl
	jne	L127
L126:
	test	al, al
	jne	L128
	xor	eax, eax
L127:
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
	je	L137
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
L136:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L136
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L137:
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
	je	L139
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	L143
	jmp	L158
	.p2align 4,,10
	.p2align 3
L160:
	cmp	edx, ebp
	je	L142
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	esi, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L159
	mov	edx, esi
L143:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	sete	cl
	test	bl, cl
	jne	L160
L142:
	movzx	edi, BYTE PTR [esp+3]
	sub	eax, edi
L139:
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
L159:
	.cfi_restore_state
	movzx	edx, BYTE PTR [edx+1]
	xor	eax, eax
	mov	BYTE PTR [esp+3], dl
	jmp	L142
L158:
	movzx	ecx, BYTE PTR [edx]
	xor	eax, eax
	mov	BYTE PTR [esp+3], cl
	jmp	L142
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
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+16]
	cmp	ecx, 1
	jle	L188
	mov	esi, ecx
	lea	edx, [ecx-2]
	shr	esi
	lea	eax, [esi-1]
	mov	DWORD PTR [esp+60], eax
	cmp	edx, 61
	jbe	L168
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, ecx
	mov	ebx, ecx
	mov	edx, DWORD PTR [ebp+12]
	and	edi, -64
	shr	ebx, 6
	vmovdqa64	zmm1, ZMMWORD PTR LC0
	add	edi, eax
	.p2align 5
	.p2align 4
	.p2align 3
L164:
	vmovdqu8	zmm0, ZMMWORD PTR [eax]
	add	eax, 64
	add	edx, 64
	vpshufb	zmm2, zmm0, zmm1
	vmovdqu8	ZMMWORD PTR [edx-64], zmm2
	cmp	eax, edi
	jne	L164
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
	je	L187
L163:
	mov	ebx, DWORD PTR [esp+60]
	sub	ebx, edi
	lea	esi, [ebx+1]
	cmp	ebx, 14
	jbe	L166
	mov	ebx, DWORD PTR [ebp+8]
	vmovdqu8	ymm3, YMMWORD PTR [ebx+edi*2]
	mov	ebx, DWORD PTR [ebp+12]
	vpshufb	ymm4, ymm3, YMMWORD PTR LC1
	vmovdqu8	YMMWORD PTR [ebx+edi*2], ymm4
	mov	ebx, esi
	and	ebx, -16
	lea	edi, [ebx+ebx]
	neg	ebx
	add	edx, edi
	add	eax, edi
	lea	ecx, [ecx+ebx*2]
	and	esi, 15
	je	L187
L166:
	movbe	si, WORD PTR [eax]
	mov	WORD PTR [edx], si
	cmp	ecx, 3
	jle	L187
	movbe	bx, WORD PTR [eax+2]
	mov	WORD PTR [edx+2], bx
	cmp	ecx, 5
	jle	L187
	movbe	di, WORD PTR [eax+4]
	mov	WORD PTR [edx+4], di
	cmp	ecx, 7
	jle	L187
	movbe	si, WORD PTR [eax+6]
	mov	WORD PTR [edx+6], si
	cmp	ecx, 9
	jle	L187
	movbe	bx, WORD PTR [eax+8]
	mov	WORD PTR [edx+8], bx
	cmp	ecx, 11
	jle	L187
	movbe	di, WORD PTR [eax+10]
	mov	WORD PTR [edx+10], di
	cmp	ecx, 13
	jle	L187
	movbe	si, WORD PTR [eax+12]
	mov	WORD PTR [edx+12], si
	cmp	ecx, 15
	jle	L187
	movbe	bx, WORD PTR [eax+14]
	mov	WORD PTR [edx+14], bx
	cmp	ecx, 17
	jle	L187
	movbe	di, WORD PTR [eax+16]
	mov	WORD PTR [edx+16], di
	cmp	ecx, 19
	jle	L187
	movbe	si, WORD PTR [eax+18]
	mov	WORD PTR [edx+18], si
	cmp	ecx, 21
	jle	L187
	movbe	bx, WORD PTR [eax+20]
	mov	WORD PTR [edx+20], bx
	cmp	ecx, 23
	jle	L187
	movbe	di, WORD PTR [eax+22]
	mov	WORD PTR [edx+22], di
	cmp	ecx, 25
	jle	L187
	movbe	si, WORD PTR [eax+24]
	mov	WORD PTR [edx+24], si
	cmp	ecx, 27
	jle	L187
	movbe	bx, WORD PTR [eax+26]
	mov	WORD PTR [edx+26], bx
	cmp	ecx, 29
	jle	L187
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
L187:
	.cfi_restore_state
	vzeroupper
L188:
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
L168:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	xor	edi, edi
	jmp	L163
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
	jbe	L202
	cmp	dx, 31
	jbe	L202
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L200
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L202:
	mov	edx, 1
L200:
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
	jbe	L212
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L208
	cmp	ax, 8231
	jbe	L208
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L205
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L205
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
L208:
	.cfi_restore_state
	mov	ecx, 1
L205:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L212:
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
	jbe	L213
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L213:
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
	jp	L225
	fxch	st(1)
	fucomi	st, st(0)
	jp	L221
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L224
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L224:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L217
	.p2align 4,,10
	.p2align 3
L225:
	fstp	st(1)
L217:
	ret
	.p2align 4,,10
	.p2align 3
L221:
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
	jp	L234
	fxch	st(1)
	fucomi	st, st(0)
	jp	L230
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L233
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L233:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L226
	.p2align 4,,10
	.p2align 3
L234:
	fstp	st(1)
L226:
	ret
	.p2align 4,,10
	.p2align 3
L230:
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
	jp	L240
	fxch	st(1)
	fucomi	st, st(0)
	jp	L243
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
	je	L237
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L240:
	fstp	st(0)
	jmp	L235
	.p2align 4,,10
	.p2align 3
L243:
	fstp	st(0)
L235:
	ret
	.p2align 4,,10
	.p2align 3
L237:
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
	jp	L249
	fxch	st(1)
	fucomi	st, st(0)
	jp	L252
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
	je	L246
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L249:
	fstp	st(0)
	jmp	L244
	.p2align 4,,10
	.p2align 3
L252:
	fstp	st(0)
L244:
	ret
	.p2align 4,,10
	.p2align 3
L246:
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
	jp	L264
	fxch	st(1)
	fucomi	st, st(0)
	jp	L265
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
	jne	L263
	fcomi	st, st(1)
	jbe	L266
	fstp	st(1)
	jmp	L259
	.p2align 4,,10
	.p2align 3
L265:
	fstp	st(0)
	jmp	L259
	.p2align 4,,10
	.p2align 3
L266:
	fstp	st(0)
	jmp	L259
	.p2align 4,,10
	.p2align 3
L267:
	fstp	st(0)
L259:
	jmp	L253
	.p2align 4,,10
	.p2align 3
L264:
	fstp	st(0)
L253:
	ret
	.p2align 4,,10
	.p2align 3
L263:
	test	edx, edx
	je	L267
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
	jp	L276
	fxch	st(1)
	fucomi	st, st(0)
	jp	L274
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
	je	L270
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L274:
	fstp	st(0)
	jmp	L268
	.p2align 4,,10
	.p2align 3
L276:
	fstp	st(0)
L268:
	ret
	.p2align 4,,10
	.p2align 3
L270:
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
	jp	L285
	fxch	st(1)
	fucomi	st, st(0)
	jp	L283
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
	je	L279
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L283:
	fstp	st(0)
	jmp	L277
	.p2align 4,,10
	.p2align 3
L285:
	fstp	st(0)
L277:
	ret
	.p2align 4,,10
	.p2align 3
L279:
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
	jp	L297
	fxch	st(1)
	fucomi	st, st(0)
	jp	L298
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
	jne	L296
	fcomi	st, st(1)
	jbe	L299
	fstp	st(0)
	jmp	L291
	.p2align 4,,10
	.p2align 3
L297:
	fstp	st(0)
	jmp	L291
	.p2align 4,,10
	.p2align 3
L299:
	fstp	st(1)
	jmp	L291
	.p2align 4,,10
	.p2align 3
L300:
	fstp	st(1)
L291:
	jmp	L286
	.p2align 4,,10
	.p2align 3
L298:
	fstp	st(0)
L286:
	ret
	.p2align 4,,10
	.p2align 3
L296:
	test	edx, edx
	je	L300
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
	je	L302
	.p2align 5
	.p2align 4
	.p2align 3
L303:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L303
L302:
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
	je	L315
	vmovd	xmm1, DWORD PTR [eax]
	vpinsrd	xmm0, xmm1, eax, 1
	vmovq	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	L314
	mov	DWORD PTR [ecx+4], edx
L314:
	ret
	.p2align 4,,10
	.p2align 3
L315:
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
	je	L317
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L317:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L325
	mov	DWORD PTR [eax], edx
L325:
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
	mov	esi, DWORD PTR [esp+76]
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	L327
	mov	ebx, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+28], ecx
	xor	ebp, ebp
	mov	edi, ebx
	jmp	L329
	.p2align 4,,10
	.p2align 3
L344:
	add	ebp, 1
	add	edi, esi
	cmp	DWORD PTR [esp+28], ebp
	je	L343
L329:
	mov	edx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], edi
	mov	ebx, edi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L344
L326:
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
L343:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L327:
	mov	eax, DWORD PTR [esp+72]
	lea	ebp, [ecx+1]
	mov	DWORD PTR [eax], ebp
	mov	ebp, ecx
	imul	ebp, esi
	add	ebp, DWORD PTR [esp+68]
	mov	ebx, ebp
	test	esi, esi
	je	L326
	mov	DWORD PTR [esp+8], esi
	mov	esi, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], ebp
	mov	DWORD PTR [esp+4], esi
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
	mov	edi, DWORD PTR [eax]
	test	edi, edi
	je	L346
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	jmp	L348
	.p2align 4,,10
	.p2align 3
L358:
	add	esi, 1
	add	ebx, DWORD PTR [esp+60]
	cmp	edi, esi
	je	L346
L348:
	mov	edx, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], ebx
	mov	ebp, ebx
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L358
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
L346:
	.cfi_restore_state
	add	esp, 28
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
	jbe	L383
	mov	edx, ecx
	jmp	L387
	.p2align 5
	.p2align 4,,10
	.p2align 3
L383:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L383
L387:
	cmp	dl, 32
	je	L383
	cmp	dl, 43
	je	L364
	cmp	dl, 45
	jne	L388
	movsx	ebp, BYTE PTR [eax+1]
	lea	esi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L373
	mov	ebp, 1
L367:
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
L370:
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
	jbe	L370
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
L388:
	.cfi_restore_state
	sub	ecx, 48
	mov	esi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	L367
L373:
	xor	eax, eax
L389:
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
L364:
	.cfi_restore_state
	movsx	edi, BYTE PTR [eax+1]
	lea	esi, [eax+1]
	xor	ebp, ebp
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	L367
	xor	eax, eax
	jmp	L389
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
	jbe	L411
	mov	edx, ecx
	jmp	L414
	.p2align 5
	.p2align 4,,10
	.p2align 3
L411:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L411
L414:
	cmp	dl, 32
	je	L411
	cmp	dl, 43
	je	L394
	cmp	dl, 45
	je	L415
	sub	ecx, 48
	mov	esi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	L402
L396:
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
L399:
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
	jbe	L399
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
L415:
	.cfi_restore_state
	lea	esi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L396
L402:
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
L394:
	.cfi_restore_state
	movsx	edi, BYTE PTR [eax+1]
	lea	esi, [eax+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	L402
	xor	ebp, ebp
	jmp	L396
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
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	ecx, DWORD PTR [esp+32]
	movsx	eax, BYTE PTR [ecx]
	lea	ebx, [eax-9]
	cmp	ebx, 4
	jbe	L439
	mov	edx, eax
	jmp	L444
	.p2align 5
	.p2align 4,,10
	.p2align 3
L439:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	esi, [eax-9]
	mov	edx, eax
	cmp	esi, 4
	jbe	L439
L444:
	cmp	dl, 32
	je	L439
	cmp	dl, 43
	je	L420
	cmp	dl, 45
	jne	L445
	movsx	ebp, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L429
	mov	esi, 1
L423:
	xor	ecx, ecx
	xor	ebx, ebx
	kmovd	k0, esi
	.p2align 6
	.p2align 4
	.p2align 3
L426:
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
	jbe	L426
	kmovd	edx, k0
	test	edx, edx
	jne	L416
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
L416:
	add	esp, 12
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
L445:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	esi, esi
	mov	eax, ecx
	cmp	ebx, 9
	jbe	L423
L429:
	add	esp, 12
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
L420:
	.cfi_restore_state
	movsx	edi, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	xor	esi, esi
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	L423
	jmp	L429
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
L461:
	test	ebx, ebx
	je	L447
L462:
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
	js	L451
	je	L446
	sub	ebx, 1
	lea	edx, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+52], edx
	test	ebx, ebx
	jne	L462
L447:
	xor	ebp, ebp
L446:
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
L451:
	.cfi_restore_state
	mov	ebx, esi
	jmp	L461
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
	je	L468
	.p2align 4
	.p2align 3
L476:
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
	je	L463
	jle	L466
	lea	ebp, [ebp-1]
	lea	ecx, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+52], ecx
	jne	L476
L468:
	xor	ebx, ebx
L463:
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
L466:
	.cfi_restore_state
	test	esi, esi
	je	L468
	mov	ebp, esi
	jmp	L476
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
	jne	L492
	jmp	L495
	.p2align 5
	.p2align 4,,10
	.p2align 3
L494:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	test	dx, dx
	je	L495
L492:
	cmp	cx, dx
	jne	L494
	ret
	.p2align 4,,10
	.p2align 3
L495:
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
	je	L500
	jmp	L501
	.p2align 5
	.p2align 4,,10
	.p2align 3
L502:
	movzx	eax, WORD PTR [edx+2]
	movzx	ebx, WORD PTR [ecx+2]
	add	edx, 2
	add	ecx, 2
	cmp	ax, bx
	jne	L501
L500:
	test	ax, ax
	jne	L502
L501:
	mov	edx, -1
	cmp	ax, bx
	jb	L499
	xor	edx, edx
	cmp	bx, ax
	setb	dl
L499:
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
L509:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L509
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
	je	L515
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L514:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L514
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L515:
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
	jne	L518
	jmp	L524
	.p2align 4,,10
	.p2align 3
L532:
	test	bx, bx
	je	L522
	add	edx, 2
	add	eax, 2
	sub	ecx, 1
	je	L524
L518:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L532
L522:
	movzx	ebx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	jb	L533
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
L533:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L524:
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
	jne	L535
	jmp	L538
	.p2align 4
	.p2align 4,,10
	.p2align 3
L537:
	add	eax, 2
	sub	edx, 1
	je	L538
L535:
	cmp	WORD PTR [eax], cx
	jne	L537
	ret
	.p2align 4,,10
	.p2align 3
L538:
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
	jne	L543
	jmp	L542
	.p2align 5
	.p2align 4,,10
	.p2align 3
L545:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L548
L543:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L545
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L555
	cmp	ax, bx
	setb	dl
	movzx	eax, dl
L542:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L555:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L548:
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
	je	L557
	mov	edx, DWORD PTR [esp+36]
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L557:
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
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	cmp	edx, esi
	je	L622
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, edx
	sub	ebx, esi
	lea	ecx, [eax+eax]
	sub	eax, 1
	cmp	ebx, ecx
	jnb	L730
	mov	ebx, DWORD PTR [ebp+16]
	test	ebx, ebx
	je	L622
	cmp	eax, 14
	jbe	L693
	mov	edi, edx
	sub	edi, esi
	add	edi, 62
	cmp	edi, 60
	jbe	L693
	cmp	eax, 30
	jbe	L585
	sub	ecx, 64
	lea	edi, [ecx+edx]
	lea	ebx, [esi+ecx]
	mov	DWORD PTR [esp+60], edi
	mov	edi, DWORD PTR [ebp+16]
	mov	ecx, ebx
	shr	edi, 5
	sal	edi, 6
	sub	ecx, edi
	mov	edi, ecx
	mov	ecx, DWORD PTR [esp+60]
	.p2align 5
	.p2align 4
	.p2align 3
L569:
	vmovdqu16	zmm2, ZMMWORD PTR [ebx]
	sub	ebx, 64
	sub	ecx, 64
	vmovdqu16	ZMMWORD PTR [ecx+64], zmm2
	cmp	edi, ebx
	jne	L569
	mov	ecx, DWORD PTR [ebp+16]
	and	ecx, -32
	sub	eax, ecx
	test	BYTE PTR [ebp+16], 31
	je	L727
	mov	ebx, DWORD PTR [ebp+16]
	sub	ebx, ecx
	lea	edi, [ebx-1]
	cmp	edi, 14
	jbe	L572
L568:
	mov	edi, DWORD PTR [ebp+16]
	neg	ecx
	lea	ecx, [edi+2147483632+ecx]
	mov	edi, ebx
	and	edi, -16
	vmovdqu16	ymm3, YMMWORD PTR [esi+ecx*2]
	sub	eax, edi
	and	ebx, 15
	vmovdqu16	YMMWORD PTR [edx+ecx*2], ymm3
	je	L727
L572:
	movzx	ebx, WORD PTR [esi+eax*2]
	mov	WORD PTR [edx+eax*2], bx
	lea	ebx, [eax-1]
	test	eax, eax
	je	L727
	movzx	edi, WORD PTR [esi+ebx*2]
	lea	ecx, [ebx+ebx]
	mov	WORD PTR [edx+ebx*2], di
	test	ebx, ebx
	je	L727
	movzx	ebx, WORD PTR [esi-2+ecx]
	mov	WORD PTR [edx-2+ecx], bx
	cmp	eax, 2
	je	L727
	movzx	edi, WORD PTR [esi-4+ecx]
	mov	WORD PTR [edx-4+ecx], di
	cmp	eax, 3
	je	L727
	movzx	ebx, WORD PTR [esi-6+ecx]
	mov	WORD PTR [edx-6+ecx], bx
	cmp	eax, 4
	je	L727
	movzx	edi, WORD PTR [esi-8+ecx]
	mov	WORD PTR [edx-8+ecx], di
	cmp	eax, 5
	je	L727
	movzx	ebx, WORD PTR [esi-10+ecx]
	mov	WORD PTR [edx-10+ecx], bx
	cmp	eax, 6
	je	L727
	movzx	edi, WORD PTR [esi-12+ecx]
	mov	WORD PTR [edx-12+ecx], di
	cmp	eax, 7
	je	L727
	movzx	ebx, WORD PTR [esi-14+ecx]
	mov	WORD PTR [edx-14+ecx], bx
	cmp	eax, 8
	je	L727
	movzx	edi, WORD PTR [esi-16+ecx]
	mov	WORD PTR [edx-16+ecx], di
	cmp	eax, 9
	je	L727
	movzx	ebx, WORD PTR [esi-18+ecx]
	mov	WORD PTR [edx-18+ecx], bx
	cmp	eax, 10
	je	L727
	movzx	edi, WORD PTR [esi-20+ecx]
	mov	WORD PTR [edx-20+ecx], di
	cmp	eax, 11
	je	L727
	movzx	ebx, WORD PTR [esi-22+ecx]
	mov	WORD PTR [edx-22+ecx], bx
	cmp	eax, 12
	je	L727
	movzx	edi, WORD PTR [esi-24+ecx]
	mov	WORD PTR [edx-24+ecx], di
	cmp	eax, 13
	je	L727
	movzx	esi, WORD PTR [esi-26+ecx]
	mov	WORD PTR [edx-26+ecx], si
	vzeroupper
L622:
	lea	esp, [ebp-12]
	mov	eax, edx
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
	mov	edi, DWORD PTR [ebp+16]
	test	edi, edi
	je	L622
	cmp	eax, 14
	jbe	L586
	lea	ecx, [esi+2]
	mov	ebx, edx
	sub	ebx, ecx
	cmp	ebx, 60
	jbe	L587
	cmp	eax, 30
	jbe	L588
	mov	edi, DWORD PTR [ebp+16]
	xor	ecx, ecx
	shr	edi, 5
	.p2align 5
	.p2align 4
	.p2align 3
L578:
	mov	ebx, ecx
	add	ecx, 1
	sal	ebx, 6
	vmovdqu16	zmm0, ZMMWORD PTR [esi+ebx]
	vmovdqu16	ZMMWORD PTR [edx+ebx], zmm0
	cmp	edi, ecx
	jne	L578
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -32
	lea	ecx, [edi+edi]
	mov	DWORD PTR [esp+60], edi
	sub	eax, edi
	lea	ebx, [esi+ecx]
	add	ecx, edx
	test	BYTE PTR [ebp+16], 31
	je	L727
	sub	DWORD PTR [ebp+16], edi
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 1
	cmp	edi, 14
	jbe	L581
L577:
	mov	edi, DWORD PTR [esp+60]
	vmovdqu16	ymm1, YMMWORD PTR [esi+edi*2]
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -16
	vmovdqu16	YMMWORD PTR [edx+edi*2], ymm1
	sub	eax, esi
	add	esi, esi
	add	ebx, esi
	add	ecx, esi
	test	BYTE PTR [ebp+16], 15
	je	L727
L581:
	movzx	edi, WORD PTR [ebx]
	mov	WORD PTR [ecx], di
	test	eax, eax
	je	L727
	movzx	esi, WORD PTR [ebx+2]
	mov	WORD PTR [ecx+2], si
	cmp	eax, 1
	je	L727
	movzx	edi, WORD PTR [ebx+4]
	mov	WORD PTR [ecx+4], di
	cmp	eax, 2
	je	L727
	movzx	esi, WORD PTR [ebx+6]
	mov	WORD PTR [ecx+6], si
	cmp	eax, 3
	je	L727
	movzx	edi, WORD PTR [ebx+8]
	mov	WORD PTR [ecx+8], di
	cmp	eax, 4
	je	L727
	movzx	esi, WORD PTR [ebx+10]
	mov	WORD PTR [ecx+10], si
	cmp	eax, 5
	je	L727
	movzx	edi, WORD PTR [ebx+12]
	mov	WORD PTR [ecx+12], di
	cmp	eax, 6
	je	L727
	movzx	esi, WORD PTR [ebx+14]
	mov	WORD PTR [ecx+14], si
	cmp	eax, 7
	je	L727
	movzx	edi, WORD PTR [ebx+16]
	mov	WORD PTR [ecx+16], di
	cmp	eax, 8
	je	L727
	movzx	esi, WORD PTR [ebx+18]
	mov	WORD PTR [ecx+18], si
	cmp	eax, 9
	je	L727
	movzx	edi, WORD PTR [ebx+20]
	mov	WORD PTR [ecx+20], di
	cmp	eax, 10
	je	L727
	movzx	esi, WORD PTR [ebx+22]
	mov	WORD PTR [ecx+22], si
	cmp	eax, 11
	je	L727
	movzx	edi, WORD PTR [ebx+24]
	mov	WORD PTR [ecx+24], di
	cmp	eax, 12
	je	L727
	movzx	esi, WORD PTR [ebx+26]
	mov	WORD PTR [ecx+26], si
	cmp	eax, 13
	je	L727
	movzx	eax, WORD PTR [ebx+28]
	mov	WORD PTR [ecx+28], ax
	vzeroupper
	jmp	L622
	.p2align 5
	.p2align 4,,10
	.p2align 3
L693:
	movzx	ecx, WORD PTR [esi+eax*2]
	mov	WORD PTR [edx+eax*2], cx
	sub	eax, 1
	jb	L622
	movzx	ecx, WORD PTR [esi+eax*2]
	mov	WORD PTR [edx+eax*2], cx
	sub	eax, 1
	jnb	L693
	jmp	L622
	.p2align 4,,10
	.p2align 3
L727:
	vzeroupper
	lea	esp, [ebp-12]
	mov	eax, edx
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
L586:
	.cfi_restore_state
	mov	ebx, edx
	lea	ecx, [esi+2]
	jmp	L694
	.p2align 5
	.p2align 4,,10
	.p2align 3
L731:
	add	ecx, 2
L694:
	movzx	edi, WORD PTR [ecx-2]
	add	ebx, 2
	mov	WORD PTR [ebx-2], di
	sub	eax, 1
	jb	L622
	jmp	L731
L587:
	mov	ebx, edx
	jmp	L694
L588:
	mov	DWORD PTR [esp+60], 0
	mov	ebx, esi
	mov	ecx, edx
	jmp	L577
L585:
	mov	ebx, DWORD PTR [ebp+16]
	xor	ecx, ecx
	jmp	L568
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
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	test	eax, eax
	je	L733
	lea	ebx, [eax-1]
	cmp	ebx, 30
	jbe	L739
	mov	edi, eax
	vpbroadcastw	zmm0, esi
	xor	eax, eax
	shr	edi, 5
	.p2align 5
	.p2align 4
	.p2align 3
L735:
	mov	edx, eax
	add	eax, 1
	sal	edx, 6
	vmovdqu16	ZMMWORD PTR [ecx+edx], zmm0
	cmp	edi, eax
	jne	L735
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -32
	mov	DWORD PTR [esp+60], edi
	sub	ebx, edi
	lea	edi, [ecx+edi*2]
	test	BYTE PTR [ebp+16], 31
	je	L806
L734:
	mov	eax, DWORD PTR [esp+60]
	mov	edx, DWORD PTR [ebp+16]
	sub	edx, eax
	lea	eax, [edx-1]
	cmp	eax, 14
	jbe	L737
	mov	eax, DWORD PTR [esp+60]
	vpbroadcastw	ymm1, esi
	vmovdqu16	YMMWORD PTR [ecx+eax*2], ymm1
	mov	eax, edx
	and	eax, -16
	sub	ebx, eax
	and	edx, 15
	lea	edi, [edi+eax*2]
	je	L806
L737:
	mov	WORD PTR [edi], si
	test	ebx, ebx
	je	L806
	mov	WORD PTR [edi+2], si
	cmp	ebx, 1
	je	L806
	mov	WORD PTR [edi+4], si
	cmp	ebx, 2
	je	L806
	mov	WORD PTR [edi+6], si
	cmp	ebx, 3
	je	L806
	mov	WORD PTR [edi+8], si
	cmp	ebx, 4
	je	L806
	mov	WORD PTR [edi+10], si
	cmp	ebx, 5
	je	L806
	mov	WORD PTR [edi+12], si
	cmp	ebx, 6
	je	L806
	mov	WORD PTR [edi+14], si
	cmp	ebx, 7
	je	L806
	mov	WORD PTR [edi+16], si
	cmp	ebx, 8
	je	L806
	mov	WORD PTR [edi+18], si
	cmp	ebx, 9
	je	L806
	mov	WORD PTR [edi+20], si
	cmp	ebx, 10
	je	L806
	mov	WORD PTR [edi+22], si
	cmp	ebx, 11
	je	L806
	mov	WORD PTR [edi+24], si
	cmp	ebx, 12
	je	L806
	mov	WORD PTR [edi+26], si
	cmp	ebx, 13
	je	L806
	mov	WORD PTR [edi+28], si
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
L806:
	.cfi_restore_state
	vzeroupper
L733:
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
L739:
	.cfi_restore_state
	mov	DWORD PTR [esp+60], 0
	mov	edi, ecx
	jmp	L734
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
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp+8], ecx
	jnb	L809
	test	eax, eax
	je	L857
	lea	edx, [eax-1]
	cmp	edx, 30
	jbe	L818
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, ecx
	lea	edi, [esi-2+eax]
	sub	ebx, edi
	lea	esi, [ebx+62+edx]
	cmp	esi, 62
	jbe	L818
	mov	edi, DWORD PTR [ebp+8]
	lea	esi, [ecx+eax]
	add	edi, eax
	mov	DWORD PTR [esp+60], edi
	cmp	edx, 62
	jbe	L830
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
L813:
	vmovdqu8	zmm2, ZMMWORD PTR [edx]
	sub	edx, 64
	sub	ebx, 64
	vmovdqu8	ZMMWORD PTR [ebx+64], zmm2
	cmp	edi, edx
	jne	L813
	mov	edi, DWORD PTR [esp+56]
	mov	edx, eax
	sub	DWORD PTR [esp+60], edi
	sub	esi, edi
	sub	edx, edi
	cmp	eax, edi
	je	L856
	lea	ebx, [edx-1]
	mov	eax, edx
	cmp	ebx, 30
	jbe	L815
L812:
	mov	edi, DWORD PTR [ebp+8]
	vmovdqu8	ymm3, YMMWORD PTR [edi-32+eax]
	vmovdqu8	YMMWORD PTR [ecx-32+eax], ymm3
	mov	ecx, eax
	and	ecx, -32
	sub	DWORD PTR [esp+60], ecx
	sub	esi, ecx
	sub	edx, ecx
	test	al, 31
	je	L856
L815:
	mov	edi, DWORD PTR [esp+60]
	mov	ebx, edx
	neg	ebx
	sub	edi, edx
	.p2align 5
	.p2align 4
	.p2align 3
L817:
	movzx	ecx, BYTE PTR [edi-1+edx]
	lea	eax, [esi+ebx]
	mov	BYTE PTR [eax-1+edx], cl
	sub	edx, 1
	jne	L817
L856:
	vzeroupper
L857:
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
L809:
	.cfi_restore_state
	je	L857
	test	eax, eax
	je	L857
	mov	esi, DWORD PTR [ebp+8]
	lea	ebx, [eax-1]
	lea	edx, [esi+1]
	cmp	ebx, 30
	jbe	L820
	mov	edi, ecx
	sub	edi, edx
	cmp	edi, 62
	jbe	L820
	cmp	ebx, 62
	jbe	L831
	mov	ebx, eax
	mov	edx, DWORD PTR [ebp+8]
	mov	edi, ecx
	and	ebx, -64
	mov	esi, ebx
	add	esi, edx
	.p2align 5
	.p2align 4
	.p2align 3
L822:
	vmovdqu8	zmm0, ZMMWORD PTR [edx]
	add	edx, 64
	add	edi, 64
	vmovdqu8	ZMMWORD PTR [edi-64], zmm0
	cmp	esi, edx
	jne	L822
	lea	edx, [ecx+ebx]
	mov	DWORD PTR [esp+60], edx
	mov	edx, eax
	sub	edx, ebx
	cmp	eax, ebx
	je	L856
	lea	edi, [edx-1]
	mov	eax, edx
	cmp	edi, 30
	jbe	L825
L821:
	mov	edi, DWORD PTR [ebp+8]
	vmovdqu8	ymm1, YMMWORD PTR [edi+ebx]
	vmovdqu8	YMMWORD PTR [ecx+ebx], ymm1
	mov	ecx, eax
	and	ecx, -32
	add	DWORD PTR [esp+60], ecx
	add	esi, ecx
	sub	edx, ecx
	test	al, 31
	je	L856
L825:
	mov	edi, DWORD PTR [esp+60]
	add	edx, esi
	.p2align 3
	.p2align 4
	.p2align 3
L827:
	movsb
	cmp	edx, esi
	jne	L827
	vzeroupper
	jmp	L857
	.p2align 4,,10
	.p2align 3
L818:
	mov	esi, DWORD PTR [ebp+8]
	jmp	L852
	.p2align 5
	.p2align 4,,10
	.p2align 3
L859:
	sub	edx, 1
L852:
	movzx	ebx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	mov	eax, edx
	test	edx, edx
	jne	L859
	jmp	L857
	.p2align 4,,10
	.p2align 3
L820:
	add	eax, DWORD PTR [ebp+8]
	jmp	L828
	.p2align 5
	.p2align 4,,10
	.p2align 3
L860:
	add	edx, 1
L828:
	movzx	ebx, BYTE PTR [edx-1]
	add	ecx, 1
	mov	BYTE PTR [ecx-1], bl
	cmp	eax, edx
	jne	L860
	jmp	L857
L830:
	mov	edx, eax
	jmp	L812
L831:
	mov	DWORD PTR [esp+60], ecx
	mov	esi, DWORD PTR [ebp+8]
	mov	edx, eax
	xor	ebx, ebx
	jmp	L821
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
	je	L863
	mov	edx, eax
	xor	eax, eax
L863:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L864
	mov	esi, edi
	xor	edi, edi
L864:
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
	je	L867
	mov	eax, edx
	xor	edx, edx
L867:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L868
	mov	edi, esi
	xor	esi, esi
L868:
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
	mov	eax, 1
	vmovdqa32	zmm2, ZMMWORD PTR LC5
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
	jne	L887
	vmovdqa32	zmm2, ZMMWORD PTR LC7
	vpsrlvd	zmm6, zmm0, zmm2
	vpandd	zmm7, zmm6, zmm1
	vpcmpd	k1, zmm7, zmm4, 4
	kortestw	k1, k1
	jne	L888
L901:
	xor	ecx, ecx
L880:
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
L888:
	.cfi_restore_state
	vmovdqa32	zmm0, ZMMWORD PTR LC6
L881:
	vmovd	eax, xmm2
	vmovd	edx, xmm0
	bt	ebx, eax
	lea	ecx, [eax+1]
	jc	L880
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+2]
	and	esi, 1
	jne	L880
	cmp	edx, 2
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+3]
	and	esi, 1
	jne	L880
	cmp	edx, 3
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+4]
	and	esi, 1
	jne	L880
	cmp	edx, 4
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+5]
	and	esi, 1
	jne	L880
	cmp	edx, 5
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+6]
	and	esi, 1
	jne	L880
	cmp	edx, 6
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+7]
	and	esi, 1
	jne	L880
	cmp	edx, 7
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+8]
	and	esi, 1
	jne	L880
	cmp	edx, 8
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+9]
	and	esi, 1
	jne	L880
	cmp	edx, 9
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+10]
	and	esi, 1
	jne	L880
	cmp	edx, 10
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+11]
	and	esi, 1
	jne	L880
	cmp	edx, 11
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+12]
	and	esi, 1
	jne	L880
	cmp	edx, 12
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+13]
	and	esi, 1
	jne	L880
	cmp	edx, 13
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+14]
	and	esi, 1
	jne	L880
	cmp	edx, 14
	je	L901
	mov	esi, ebx
	shr	esi, cl
	lea	ecx, [eax+15]
	and	esi, 1
	jne	L880
	cmp	edx, 15
	je	L901
	bt	ebx, ecx
	mov	ecx, 0
	jnc	L880
	lea	ecx, [eax+16]
	jmp	L880
L887:
	vmovdqa32	zmm0, ZMMWORD PTR LC4
	jmp	L881
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
	je	L908
	mov	edx, eax
	and	edx, 1
	jne	L908
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L910:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L910
L908:
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
	fld	DWORD PTR LC9
	mov	eax, 1
	fcomip	st, st(1)
	ja	L918
	fld	DWORD PTR LC10
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L915
	.p2align 4,,10
	.p2align 3
L918:
	fstp	st(0)
L915:
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
	fld	QWORD PTR LC11
	mov	eax, 1
	fcomip	st, st(1)
	ja	L922
	fld	QWORD PTR LC12
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L919
	.p2align 4,,10
	.p2align 3
L922:
	fstp	st(0)
L919:
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
	fld	TBYTE PTR LC13
	fcomip	st, st(1)
	ja	L926
	fld	TBYTE PTR LC14
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L923
	.p2align 4,,10
	.p2align 3
L926:
	fstp	st(0)
L923:
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
	jp	L929
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L936
	jne	L936
	jmp	L929
	.p2align 4,,10
	.p2align 3
L944:
	fstp	st(0)
L929:
	ret
	.p2align 4,,10
	.p2align 3
L936:
	fld	DWORD PTR LC15
	test	eax, eax
	jns	L931
	fstp	st(0)
	fld	DWORD PTR LC16
L931:
	test	al, 1
	je	L932
	.p2align 4
	.p2align 3
L933:
	fmul	st(1), st
L932:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L944
	fmul	st, st(0)
	test	al, 1
	jne	L933
L943:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L933
	jmp	L943
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
	jp	L946
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L953
	jne	L953
	jmp	L946
	.p2align 4,,10
	.p2align 3
L962:
	fstp	st(0)
L946:
	ret
	.p2align 4,,10
	.p2align 3
L953:
	test	eax, eax
	js	L960
	fld	DWORD PTR LC15
L948:
	test	al, 1
	je	L949
	.p2align 4
	.p2align 3
L950:
	fmul	st(1), st
L949:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L962
	fmul	st, st(0)
	test	al, 1
	jne	L950
L961:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L950
	jmp	L961
	.p2align 4,,10
	.p2align 3
L960:
	fld	DWORD PTR LC16
	jmp	L948
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
	jp	L964
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L971
	jne	L971
	jmp	L964
	.p2align 4,,10
	.p2align 3
L980:
	fstp	st(0)
L964:
	ret
	.p2align 4,,10
	.p2align 3
L971:
	test	eax, eax
	js	L978
	fld	DWORD PTR LC15
L966:
	test	al, 1
	je	L967
	.p2align 4
	.p2align 3
L968:
	fmul	st(1), st
L967:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L980
	fmul	st, st(0)
	test	al, 1
	jne	L968
L979:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L968
	jmp	L979
	.p2align 4,,10
	.p2align 3
L978:
	fld	DWORD PTR LC16
	jmp	L966
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+16]
	test	ebx, ebx
	je	L982
	lea	eax, [ebx-1]
	cmp	eax, 62
	jbe	L989
	mov	esi, ebx
	mov	edi, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	and	esi, -64
	mov	eax, esi
	add	eax, edi
	.p2align 5
	.p2align 4
	.p2align 3
L984:
	vmovdqu8	zmm0, ZMMWORD PTR [edx]
	vpxorq	zmm1, zmm0, ZMMWORD PTR [edi]
	add	edi, 64
	add	edx, 64
	vmovdqu8	ZMMWORD PTR [edx-64], zmm1
	cmp	eax, edi
	jne	L984
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, ebx
	sub	ecx, esi
	add	edx, esi
	cmp	ebx, esi
	je	L998
L983:
	sub	ebx, esi
	lea	edi, [ebx-1]
	cmp	edi, 30
	jbe	L986
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
	je	L998
L986:
	add	ecx, eax
	.p2align 5
	.p2align 4
	.p2align 3
L988:
	add	eax, 1
	add	edx, 1
	movzx	ebx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	L988
L998:
	vzeroupper
L982:
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
L989:
	.cfi_restore_state
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, ebx
	xor	esi, esi
	jmp	L983
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
	je	L1001
	.p2align 3
	.p2align 4
	.p2align 3
L1002:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L1002
L1001:
	test	edx, edx
	jne	L1003
	jmp	L1004
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1005:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L1004
L1003:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L1005
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
L1004:
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
	je	L1015
L1016:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L1018
L1015:
	ret
	.p2align 4,,10
	.p2align 3
L1018:
	add	eax, 1
	cmp	edx, eax
	jne	L1016
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
	je	L1029
L1025:
	mov	eax, DWORD PTR [esp+12]
	jmp	L1028
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1027:
	add	eax, 1
	cmp	dl, cl
	je	L1026
L1028:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L1027
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L1025
L1029:
	xor	ebx, ebx
L1026:
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
L1035:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L1035
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
	mov	edi, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+20]
	movzx	ebx, BYTE PTR [edi]
	test	bl, bl
	je	L1050
	mov	eax, edi
	.p2align 3
	.p2align 4
	.p2align 3
L1040:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L1040
	mov	esi, edx
	sub	eax, edi
	je	L1038
	mov	DWORD PTR [esp+24], edi
	lea	ebp, [edi-1+eax]
	jmp	L1060
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1063:
	add	edx, 1
	test	cl, cl
	je	L1062
L1060:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	L1063
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	edi, ebx
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1064:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	L1043
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	L1043
L1042:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, ebp
	jne	L1064
L1043:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, edi
	cmp	cl, BYTE PTR [eax]
	je	L1050
	add	edx, 1
	jmp	L1060
	.p2align 4,,10
	.p2align 3
L1062:
	xor	esi, esi
L1038:
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
L1050:
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
	ja	L1075
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L1076
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L1068
	jmp	L1069
	.p2align 4,,10
	.p2align 3
L1076:
	fstp	st(1)
	fstp	st(1)
L1069:
	ret
	.p2align 4,,10
	.p2align 3
L1075:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L1069
L1068:
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
	je	L1077
	cmp	esi, DWORD PTR [esp+32]
	jb	L1088
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	L1088
	movzx	ebp, BYTE PTR [edi]
	jmp	L1083
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1087:
	mov	edx, ebx
L1079:
	cmp	esi, edx
	jb	L1088
L1083:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	L1087
	cmp	DWORD PTR [esp+32], 1
	je	L1077
L1082:
	mov	eax, 1
	jmp	L1080
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1081:
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	je	L1077
L1080:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	L1081
	cmp	esi, ebx
	jb	L1088
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	L1079
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	L1082
	.p2align 4,,10
	.p2align 3
L1088:
	xor	edx, edx
L1077:
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
	je	L1099
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L1099:
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
	ja	L1128
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L1129
	fstp	st(0)
L1107:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L1114:
	fld	DWORD PTR LC16
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L1114
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L1104
L1131:
	fchs
L1104:
	ret
	.p2align 4,,10
	.p2align 3
L1129:
	fld	DWORD PTR LC16
	fcomip	st, st(2)
	jbe	L1132
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L1120
	jne	L1120
	jmp	L1110
	.p2align 4,,10
	.p2align 3
L1132:
	fstp	st(0)
	jmp	L1110
	.p2align 4,,10
	.p2align 3
L1133:
	fstp	st(0)
L1110:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L1128:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L1130
	fstp	st(1)
	mov	edx, 1
	jmp	L1107
	.p2align 4,,10
	.p2align 3
L1130:
	fld	DWORD PTR LC18
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L1133
	fstp	st(1)
	mov	edx, 1
L1108:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L1116:
	fadd	st, st(0)
	fld	DWORD PTR LC16
	sub	eax, 1
	fcomip	st, st(1)
	ja	L1116
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L1131
	ret
L1120:
	xor	edx, edx
	jmp	L1108
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
	je	L1134
	.p2align 6
	.p2align 4
	.p2align 3
L1136:
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
	jne	L1136
L1134:
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
	jnb	L1164
	mov	ecx, 1
	jmp	L1141
	.p2align 4,,10
	.p2align 3
L1144:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1143
	test	ecx, ecx
	je	L1143
L1141:
	test	edx, edx
	jns	L1144
L1145:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1147:
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
	jne	L1147
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1146:
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
L1143:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1145
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
L1164:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1146
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
	je	L1168
	movsx	ebx, al
	xor	edx, edx
	sal	ebx, 8
	lzcnt	edx, ebx
	lea	ebx, [edx-1]
L1168:
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
	je	L1173
	test	edi, edi
	je	L1175
	xor	ebp, ebp
	lzcnt	ebp, edi
L1176:
	lea	ecx, [ebp-1]
L1173:
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
L1175:
	.cfi_restore_state
	xor	ebp, ebp
	lzcnt	ebp, esi
	add	ebp, 32
	jmp	L1176
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
	je	L1180
	.p2align 5
	.p2align 4
	.p2align 3
L1182:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1182
L1180:
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
	mov	DWORD PTR [esp+52], eax
	mov	DWORD PTR [esp+60], ebx
	cmp	ecx, edx
	jb	L1191
	lea	esi, [edx+edi]
	cmp	esi, ecx
	jnb	L1252
L1191:
	mov	esi, DWORD PTR [esp+52]
	test	esi, esi
	je	L1253
	mov	eax, DWORD PTR [esp+52]
	sub	eax, 1
	cmp	eax, 2
	jbe	L1193
	lea	esi, [edx+8]
	mov	ebx, ecx
	sub	ebx, esi
	cmp	ebx, 48
	jbe	L1193
	cmp	eax, 6
	jbe	L1219
	mov	eax, edi
	mov	esi, edi
	mov	ebx, ecx
	shr	eax, 6
	and	esi, -64
	mov	DWORD PTR [esp+56], eax
	add	esi, edx
	mov	eax, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1195:
	vmovdqu64	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	ebx, 64
	vmovdqu64	ZMMWORD PTR [ebx-64], zmm2
	cmp	esi, eax
	jne	L1195
	mov	eax, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+52]
	sal	eax, 3
	mov	DWORD PTR [esp+56], eax
	cmp	ebx, eax
	je	L1200
	sub	ebx, eax
	lea	esi, [ebx-1]
	cmp	esi, 2
	jbe	L1197
L1194:
	mov	eax, DWORD PTR [esp+56]
	mov	esi, ebx
	and	esi, -4
	add	DWORD PTR [esp+56], esi
	and	ebx, 3
	vmovdqu	ymm3, YMMWORD PTR [edx+eax*8]
	vmovdqu	YMMWORD PTR [ecx+eax*8], ymm3
	je	L1200
L1197:
	mov	eax, DWORD PTR [esp+56]
	lea	ebx, [0+eax*8]
	mov	esi, DWORD PTR [edx+4+eax*8]
	kmovd	k0, ebx
	mov	ebx, DWORD PTR [edx+eax*8]
	mov	DWORD PTR [ecx+4+eax*8], esi
	mov	DWORD PTR [ecx+eax*8], ebx
	mov	ebx, DWORD PTR [esp+52]
	lea	eax, [eax+1]
	cmp	eax, ebx
	jnb	L1200
	kmovd	eax, k0
	mov	ebx, DWORD PTR [edx+8+eax]
	mov	esi, DWORD PTR [edx+12+eax]
	mov	DWORD PTR [ecx+8+eax], ebx
	mov	ebx, DWORD PTR [esp+52]
	mov	DWORD PTR [ecx+12+eax], esi
	mov	eax, DWORD PTR [esp+56]
	add	eax, 2
	cmp	eax, ebx
	jnb	L1200
	kmovd	eax, k0
	mov	ebx, DWORD PTR [edx+16+eax]
	mov	esi, DWORD PTR [edx+20+eax]
	mov	DWORD PTR [ecx+16+eax], ebx
	mov	DWORD PTR [ecx+20+eax], esi
L1200:
	mov	ebx, DWORD PTR [esp+60]
	cmp	ebx, edi
	jnb	L1249
	mov	eax, edi
	sub	eax, ebx
	mov	DWORD PTR [esp+56], eax
	sub	eax, 1
	mov	DWORD PTR [esp+52], eax
	cmp	eax, 30
	jbe	L1254
	lea	eax, [ecx+ebx]
	lea	ebx, [edx+1+ebx]
	mov	esi, eax
	sub	esi, ebx
	cmp	esi, 62
	jbe	L1245
	cmp	DWORD PTR [esp+52], 62
	jbe	L1220
	mov	ebx, DWORD PTR [esp+60]
	lea	esi, [edx+ebx]
	mov	ebx, DWORD PTR [esp+56]
	and	ebx, -64
	mov	DWORD PTR [esp+52], ebx
	add	ebx, esi
	.p2align 5
	.p2align 4
	.p2align 3
L1202:
	vmovdqu8	zmm4, ZMMWORD PTR [esi]
	add	esi, 64
	add	eax, 64
	vmovdqu8	ZMMWORD PTR [eax-64], zmm4
	cmp	esi, ebx
	jne	L1202
	mov	esi, DWORD PTR [esp+60]
	mov	eax, DWORD PTR [esp+52]
	mov	ebx, DWORD PTR [esp+56]
	add	esi, eax
	mov	DWORD PTR [esp+60], esi
	cmp	ebx, eax
	je	L1249
	sub	ebx, eax
	mov	DWORD PTR [esp+56], ebx
	sub	ebx, 1
	cmp	ebx, 30
	jbe	L1206
L1201:
	vmovdqu8	ymm5, YMMWORD PTR [edx+esi]
	mov	eax, DWORD PTR [esp+56]
	vmovdqu8	YMMWORD PTR [ecx+esi], ymm5
	mov	esi, eax
	and	esi, -32
	add	DWORD PTR [esp+60], esi
	test	al, 31
	je	L1249
L1206:
	mov	eax, DWORD PTR [esp+60]
	.p2align 4
	.p2align 4
	.p2align 3
L1241:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	add	eax, 1
	cmp	eax, edi
	jb	L1241
L1249:
	vzeroupper
L1250:
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
L1252:
	.cfi_restore_state
	lea	eax, [edi-1]
	mov	DWORD PTR [esp+60], eax
	test	edi, edi
	je	L1250
	cmp	eax, 30
	jbe	L1217
	lea	ebx, [ecx+eax]
	lea	esi, [edx-2+edi]
	sub	ebx, esi
	add	ebx, 62
	cmp	ebx, 62
	jbe	L1217
	cmp	eax, 62
	jbe	L1210
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
L1211:
	vmovdqu8	zmm0, ZMMWORD PTR [ebx]
	sub	ebx, 64
	sub	esi, 64
	vmovdqu8	ZMMWORD PTR [esi+64], zmm0
	cmp	eax, ebx
	jne	L1211
	mov	ebx, DWORD PTR [esp+56]
	sub	DWORD PTR [esp+60], ebx
	cmp	edi, ebx
	je	L1249
	sub	edi, ebx
	lea	eax, [edi-1]
	cmp	eax, 30
	jbe	L1216
L1210:
	vmovdqu8	ymm1, YMMWORD PTR [edx-32+edi]
	mov	esi, edi
	and	esi, -32
	sub	DWORD PTR [esp+60], esi
	vmovdqu8	YMMWORD PTR [ecx-32+edi], ymm1
	and	edi, 31
	je	L1249
L1216:
	mov	edi, DWORD PTR [esp+60]
	.p2align 4
	.p2align 4
	.p2align 3
L1243:
	movzx	ebx, BYTE PTR [edx+edi]
	mov	BYTE PTR [ecx+edi], bl
	sub	edi, 1
	jnb	L1243
	jmp	L1249
L1219:
	mov	DWORD PTR [esp+56], 0
	mov	ebx, DWORD PTR [esp+52]
	jmp	L1194
	.p2align 4,,10
	.p2align 3
L1193:
	mov	esi, DWORD PTR [esp+52]
	mov	DWORD PTR [ebp+8], ecx
	mov	eax, edx
	mov	ebx, ecx
	mov	DWORD PTR [ebp+12], edx
	lea	esi, [edx+esi*8]
	.p2align 5
	.p2align 4
	.p2align 3
L1199:
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 8
	add	ebx, 8
	mov	DWORD PTR [ebx-8], edx
	mov	DWORD PTR [ebx-4], ecx
	cmp	esi, eax
	jne	L1199
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	L1200
	.p2align 4,,10
	.p2align 3
L1253:
	mov	eax, DWORD PTR [esp+60]
	add	eax, ecx
	test	edi, edi
	je	L1250
L1189:
	mov	ecx, DWORD PTR [esp+60]
	add	ecx, edx
	add	edx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L1207:
	movzx	ebx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	L1207
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
L1245:
	.cfi_restore_state
	vzeroupper
	jmp	L1189
L1220:
	mov	esi, DWORD PTR [esp+60]
	jmp	L1201
L1217:
	mov	eax, DWORD PTR [esp+60]
	.p2align 4
	.p2align 4
	.p2align 3
L1242:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jnb	L1242
	jmp	L1250
L1254:
	mov	eax, ebx
	add	eax, ecx
	vzeroupper
	jmp	L1189
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
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	shr	esi
	cmp	ebx, ecx
	jb	L1259
	mov	eax, DWORD PTR [ebp+16]
	add	eax, ecx
	cmp	eax, ebx
	jnb	L1318
L1259:
	test	esi, esi
	je	L1258
	lea	eax, [esi-1]
	cmp	eax, 14
	jbe	L1262
	lea	edi, [ecx+2]
	mov	edx, ebx
	sub	edx, edi
	cmp	edx, 60
	jbe	L1262
	cmp	eax, 30
	jbe	L1280
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, ecx
	mov	edx, ebx
	shr	edi, 6
	mov	DWORD PTR [esp+60], edi
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -64
	add	edi, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1264:
	vmovdqu16	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	edx, 64
	vmovdqu16	ZMMWORD PTR [edx-64], zmm2
	cmp	edi, eax
	jne	L1264
	mov	eax, DWORD PTR [esp+60]
	sal	eax, 5
	cmp	esi, eax
	je	L1312
	mov	edx, esi
	sub	edx, eax
	lea	edi, [edx-1]
	cmp	edi, 14
	jbe	L1266
L1263:
	vmovdqu16	ymm3, YMMWORD PTR [ecx+eax*2]
	mov	edi, edx
	and	edi, -16
	vmovdqu16	YMMWORD PTR [ebx+eax*2], ymm3
	add	eax, edi
	and	edx, 15
	je	L1312
L1266:
	movzx	edx, WORD PTR [ecx+eax*2]
	lea	edi, [eax+eax]
	mov	WORD PTR [ebx+eax*2], dx
	lea	edx, [eax+1]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+2+edi]
	mov	WORD PTR [ebx+2+edi], dx
	lea	edx, [eax+2]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+4+edi]
	mov	WORD PTR [ebx+4+edi], dx
	lea	edx, [eax+3]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+6+edi]
	mov	WORD PTR [ebx+6+edi], dx
	lea	edx, [eax+4]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+8+edi]
	mov	WORD PTR [ebx+8+edi], dx
	lea	edx, [eax+5]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+10+edi]
	mov	WORD PTR [ebx+10+edi], dx
	lea	edx, [eax+6]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+12+edi]
	mov	WORD PTR [ebx+12+edi], dx
	lea	edx, [eax+7]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+14+edi]
	mov	WORD PTR [ebx+14+edi], dx
	lea	edx, [eax+8]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+16+edi]
	mov	WORD PTR [ebx+16+edi], dx
	lea	edx, [eax+9]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+18+edi]
	mov	WORD PTR [ebx+18+edi], dx
	lea	edx, [eax+10]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+20+edi]
	mov	WORD PTR [ebx+20+edi], dx
	lea	edx, [eax+11]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+22+edi]
	mov	WORD PTR [ebx+22+edi], dx
	lea	edx, [eax+12]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+24+edi]
	mov	WORD PTR [ebx+24+edi], dx
	lea	edx, [eax+13]
	cmp	edx, esi
	jnb	L1312
	movzx	edx, WORD PTR [ecx+26+edi]
	add	eax, 14
	mov	WORD PTR [ebx+26+edi], dx
	cmp	eax, esi
	jnb	L1312
	movzx	esi, WORD PTR [ecx+28+edi]
	mov	WORD PTR [ebx+28+edi], si
	vzeroupper
L1258:
	test	BYTE PTR [ebp+16], 1
	je	L1315
L1319:
	mov	eax, DWORD PTR [ebp+16]
	movzx	edx, BYTE PTR [ecx-1+eax]
	mov	ecx, DWORD PTR [ebp+16]
	mov	BYTE PTR [ebx-1+ecx], dl
L1315:
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
L1318:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+16]
	sub	eax, 1
	test	edx, edx
	je	L1315
	cmp	eax, 30
	jbe	L1295
	mov	esi, DWORD PTR [ebp+16]
	lea	edi, [ebx+eax]
	lea	edx, [ecx-2+esi]
	sub	edi, edx
	add	edi, 62
	cmp	edi, 62
	jbe	L1295
	cmp	eax, 62
	jbe	L1272
	mov	edi, DWORD PTR [ebp+16]
	sub	edi, 64
	lea	edx, [ecx+edi]
	add	edi, ebx
	mov	DWORD PTR [esp+60], edi
	mov	edi, DWORD PTR [ebp+16]
	mov	esi, edx
	and	edi, -64
	sub	esi, edi
	mov	DWORD PTR [esp+56], edi
	mov	edi, esi
	mov	esi, DWORD PTR [esp+60]
	.p2align 5
	.p2align 4
	.p2align 3
L1273:
	vmovdqu8	zmm0, ZMMWORD PTR [edx]
	sub	edx, 64
	sub	esi, 64
	vmovdqu8	ZMMWORD PTR [esi+64], zmm0
	cmp	edx, edi
	jne	L1273
	mov	edx, DWORD PTR [esp+56]
	sub	eax, edx
	cmp	DWORD PTR [ebp+16], edx
	je	L1314
	sub	DWORD PTR [ebp+16], edx
	mov	edi, DWORD PTR [ebp+16]
	lea	esi, [edi-1]
	cmp	esi, 30
	jbe	L1296
L1272:
	mov	edi, DWORD PTR [ebp+16]
	vmovdqu8	ymm1, YMMWORD PTR [ecx-32+edi]
	mov	edx, edi
	and	edx, -32
	vmovdqu8	YMMWORD PTR [ebx-32+edi], ymm1
	sub	eax, edx
	and	edi, 31
	je	L1314
	.p2align 4
	.p2align 4
	.p2align 3
L1296:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	L1296
L1314:
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
L1295:
	.cfi_restore_state
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jb	L1315
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	L1295
	jmp	L1315
	.p2align 4,,10
	.p2align 3
L1312:
	vzeroupper
	test	BYTE PTR [ebp+16], 1
	je	L1315
	jmp	L1319
L1280:
	mov	edx, esi
	xor	eax, eax
	jmp	L1263
	.p2align 4,,10
	.p2align 3
L1262:
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*2]
	.p2align 5
	.p2align 4
	.p2align 3
L1268:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	esi, eax
	jne	L1268
	test	BYTE PTR [ebp+16], 1
	je	L1315
	jmp	L1319
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
	and	esp, -64
	sub	esp, 64
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	and	eax, -4
	shr	edi, 2
	mov	DWORD PTR [esp+60], eax
	cmp	ecx, edx
	jb	L1325
	mov	ebx, DWORD PTR [ebp+16]
	add	ebx, edx
	cmp	ebx, ecx
	jnb	L1387
L1325:
	test	edi, edi
	je	L1388
	lea	eax, [edi-1]
	cmp	eax, 6
	jbe	L1327
	lea	esi, [edx+4]
	mov	ebx, ecx
	sub	ebx, esi
	cmp	ebx, 56
	jbe	L1327
	cmp	eax, 14
	jbe	L1353
	mov	esi, DWORD PTR [ebp+16]
	mov	eax, edx
	mov	ebx, ecx
	shr	esi, 6
	mov	DWORD PTR [esp+56], esi
	mov	esi, DWORD PTR [ebp+16]
	and	esi, -64
	add	esi, edx
	.p2align 5
	.p2align 4
	.p2align 3
L1329:
	vmovdqu32	zmm2, ZMMWORD PTR [eax]
	add	eax, 64
	add	ebx, 64
	vmovdqu32	ZMMWORD PTR [ebx-64], zmm2
	cmp	esi, eax
	jne	L1329
	mov	eax, DWORD PTR [esp+56]
	sal	eax, 4
	cmp	edi, eax
	je	L1334
	mov	ebx, edi
	sub	ebx, eax
	lea	esi, [ebx-1]
	cmp	esi, 6
	jbe	L1331
L1328:
	vmovdqu	ymm3, YMMWORD PTR [edx+eax*4]
	mov	esi, ebx
	and	esi, -8
	vmovdqu	YMMWORD PTR [ecx+eax*4], ymm3
	add	eax, esi
	and	ebx, 7
	je	L1334
L1331:
	mov	ebx, DWORD PTR [edx+eax*4]
	lea	esi, [0+eax*4]
	mov	DWORD PTR [ecx+eax*4], ebx
	lea	ebx, [eax+1]
	cmp	ebx, edi
	jnb	L1334
	mov	ebx, DWORD PTR [edx+4+esi]
	mov	DWORD PTR [ecx+4+esi], ebx
	lea	ebx, [eax+2]
	cmp	ebx, edi
	jnb	L1334
	mov	ebx, DWORD PTR [edx+8+esi]
	mov	DWORD PTR [ecx+8+esi], ebx
	lea	ebx, [eax+3]
	cmp	ebx, edi
	jnb	L1334
	mov	ebx, DWORD PTR [edx+12+esi]
	mov	DWORD PTR [ecx+12+esi], ebx
	lea	ebx, [eax+4]
	cmp	ebx, edi
	jnb	L1334
	mov	ebx, DWORD PTR [edx+16+esi]
	mov	DWORD PTR [ecx+16+esi], ebx
	lea	ebx, [eax+5]
	cmp	ebx, edi
	jnb	L1334
	mov	ebx, DWORD PTR [edx+20+esi]
	add	eax, 6
	mov	DWORD PTR [ecx+20+esi], ebx
	cmp	eax, edi
	jnb	L1334
	mov	edi, DWORD PTR [edx+24+esi]
	mov	DWORD PTR [ecx+24+esi], edi
L1334:
	mov	eax, DWORD PTR [esp+60]
	cmp	eax, DWORD PTR [ebp+16]
	jnb	L1383
	mov	ebx, DWORD PTR [ebp+16]
	sub	ebx, eax
	lea	edi, [ebx-1]
	mov	DWORD PTR [esp+56], edi
	cmp	edi, 30
	jbe	L1389
	mov	esi, DWORD PTR [esp+60]
	lea	eax, [ecx+esi]
	lea	edi, [edx+1+esi]
	mov	esi, eax
	sub	esi, edi
	cmp	esi, 62
	jbe	L1379
	cmp	DWORD PTR [esp+56], 62
	jbe	L1354
	mov	edi, DWORD PTR [esp+60]
	mov	esi, ebx
	and	esi, -64
	add	edi, edx
	mov	DWORD PTR [esp+56], esi
	add	esi, edi
	.p2align 5
	.p2align 4
	.p2align 3
L1336:
	vmovdqu8	zmm4, ZMMWORD PTR [edi]
	add	edi, 64
	add	eax, 64
	vmovdqu8	ZMMWORD PTR [eax-64], zmm4
	cmp	edi, esi
	jne	L1336
	mov	edi, DWORD PTR [esp+60]
	mov	esi, DWORD PTR [esp+56]
	add	edi, esi
	mov	eax, edi
	cmp	ebx, esi
	je	L1383
	sub	ebx, esi
	lea	esi, [ebx-1]
	cmp	esi, 30
	jbe	L1340
L1335:
	vmovdqu8	ymm5, YMMWORD PTR [edx+edi]
	vmovdqu8	YMMWORD PTR [ecx+edi], ymm5
	mov	edi, ebx
	and	edi, -32
	add	eax, edi
	and	ebx, 31
	je	L1383
L1340:
	mov	esi, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1375:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	add	eax, 1
	cmp	eax, esi
	jb	L1375
L1383:
	vzeroupper
L1384:
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
L1387:
	.cfi_restore_state
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	sub	eax, 1
	test	esi, esi
	je	L1384
	cmp	eax, 30
	jbe	L1376
	mov	edi, DWORD PTR [ebp+16]
	lea	ebx, [ecx+eax]
	lea	esi, [edx-2+edi]
	sub	ebx, esi
	add	ebx, 62
	cmp	ebx, 62
	jbe	L1376
	cmp	eax, 62
	jbe	L1344
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
L1345:
	vmovdqu8	zmm0, ZMMWORD PTR [ebx]
	sub	ebx, 64
	sub	esi, 64
	vmovdqu8	ZMMWORD PTR [esi+64], zmm0
	cmp	edi, ebx
	jne	L1345
	mov	ebx, DWORD PTR [esp+56]
	sub	eax, ebx
	cmp	DWORD PTR [ebp+16], ebx
	je	L1383
	sub	DWORD PTR [ebp+16], ebx
	mov	edi, DWORD PTR [ebp+16]
	lea	esi, [edi-1]
	cmp	esi, 30
	jbe	L1377
L1344:
	mov	edi, DWORD PTR [ebp+16]
	vmovdqu8	ymm1, YMMWORD PTR [edx-32+edi]
	mov	ebx, edi
	and	ebx, -32
	vmovdqu8	YMMWORD PTR [ecx-32+edi], ymm1
	sub	eax, ebx
	and	edi, 31
	je	L1383
	.p2align 4
	.p2align 4
	.p2align 3
L1377:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jnb	L1377
	vzeroupper
	jmp	L1384
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1376:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jb	L1384
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
	sub	eax, 1
	jnb	L1376
	jmp	L1384
L1353:
	mov	ebx, edi
	xor	eax, eax
	jmp	L1328
	.p2align 4,,10
	.p2align 3
L1327:
	mov	eax, edx
	mov	ebx, ecx
	lea	edi, [edx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L1333:
	mov	esi, DWORD PTR [eax]
	add	eax, 4
	add	ebx, 4
	mov	DWORD PTR [ebx-4], esi
	cmp	eax, edi
	jne	L1333
	jmp	L1334
	.p2align 4,,10
	.p2align 3
L1388:
	mov	eax, DWORD PTR [esp+60]
	add	eax, ecx
	mov	ecx, DWORD PTR [ebp+16]
	test	ecx, ecx
	je	L1384
L1323:
	mov	ecx, DWORD PTR [esp+60]
	add	ecx, edx
	add	edx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1341:
	movzx	ebx, BYTE PTR [ecx]
	add	ecx, 1
	add	eax, 1
	mov	BYTE PTR [eax-1], bl
	cmp	ecx, edx
	jne	L1341
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
L1379:
	.cfi_restore_state
	vzeroupper
	jmp	L1323
L1354:
	mov	eax, DWORD PTR [esp+60]
	mov	edi, eax
	jmp	L1335
L1389:
	mov	eax, DWORD PTR [esp+60]
	add	eax, ecx
	vzeroupper
	jmp	L1323
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
	jns	L1396
	fld	DWORD PTR LC20
	faddp	st(1), st
L1396:
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
	jns	L1399
	fld	DWORD PTR LC20
	faddp	st(1), st
L1399:
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
	vmovdqa32	zmm1, ZMMWORD PTR LC21
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
	jne	L1423
L1402:
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L1423:
	.cfi_restore_state
	mov	eax, edx
	shr	eax, 15
	jne	L1406
	mov	eax, edx
	sar	eax, 14
	jne	L1402
	mov	eax, edx
	shr	eax, 13
	jne	L1407
	mov	eax, edx
	shr	eax, 12
	jne	L1408
	mov	eax, edx
	shr	eax, 11
	jne	L1409
	mov	eax, edx
	shr	eax, 10
	jne	L1410
	mov	eax, edx
	shr	eax, 9
	jne	L1411
	mov	eax, edx
	shr	eax, 8
	jne	L1412
	mov	eax, edx
	shr	eax, 7
	jne	L1413
	mov	eax, edx
	shr	eax, 6
	jne	L1414
	mov	eax, edx
	shr	eax, 5
	jne	L1415
	mov	eax, edx
	shr	eax, 4
	jne	L1416
	mov	eax, edx
	shr	eax, 3
	jne	L1417
	mov	eax, edx
	shr	eax, 2
	jne	L1418
	shr	edx
	jne	L1419
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L1406:
	.cfi_restore_state
	xor	eax, eax
	jmp	L1402
L1410:
	mov	eax, 5
	jmp	L1402
L1417:
	mov	eax, 12
	jmp	L1402
L1407:
	mov	eax, 2
	jmp	L1402
L1408:
	mov	eax, 3
	jmp	L1402
L1409:
	mov	eax, 4
	jmp	L1402
L1411:
	mov	eax, 6
	jmp	L1402
L1412:
	mov	eax, 7
	jmp	L1402
L1413:
	mov	eax, 8
	jmp	L1402
L1414:
	mov	eax, 9
	jmp	L1402
L1415:
	mov	eax, 10
	jmp	L1402
L1416:
	mov	eax, 11
	jmp	L1402
L1418:
	mov	eax, 13
	jmp	L1402
L1419:
	mov	eax, 14
	jmp	L1402
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
	mov	edx, 1
	vmovdqa32	zmm1, ZMMWORD PTR LC5
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
	jne	L1446
L1424:
	mov	eax, edx
	vzeroupper
	pop	ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L1446:
	.cfi_restore_state
	test	al, 1
	jne	L1428
	test	al, 2
	jne	L1429
	test	al, 4
	jne	L1430
	test	al, 8
	jne	L1431
	test	al, 16
	jne	L1432
	test	al, 32
	jne	L1433
	test	al, 64
	jne	L1434
	test	al, -128
	jne	L1435
	test	ah, 1
	jne	L1436
	test	ah, 2
	jne	L1437
	test	ah, 4
	jne	L1438
	test	ah, 8
	jne	L1439
	test	ah, 16
	jne	L1440
	test	ah, 32
	jne	L1441
	test	ah, 64
	jne	L1442
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
L1428:
	.cfi_restore_state
	xor	edx, edx
	jmp	L1424
L1433:
	mov	edx, 5
	jmp	L1424
L1440:
	mov	edx, 12
	jmp	L1424
L1429:
	mov	edx, 1
	jmp	L1424
L1430:
	mov	edx, 2
	jmp	L1424
L1431:
	mov	edx, 3
	jmp	L1424
L1432:
	mov	edx, 4
	jmp	L1424
L1434:
	mov	edx, 6
	jmp	L1424
L1435:
	mov	edx, 7
	jmp	L1424
L1436:
	mov	edx, 8
	jmp	L1424
L1437:
	mov	edx, 9
	jmp	L1424
L1438:
	mov	edx, 10
	jmp	L1424
L1439:
	mov	edx, 11
	jmp	L1424
L1441:
	mov	edx, 13
	jmp	L1424
L1442:
	mov	edx, 14
	jmp	L1424
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
	fld	DWORD PTR LC22
	fld	DWORD PTR [esp+8]
	fcomi	st, st(1)
	jnb	L1454
	fstp	st(1)
	fisttp	DWORD PTR [esp]
	mov	eax, DWORD PTR [esp]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1454:
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vmovdqa32	zmm1, ZMMWORD PTR LC5
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
LFE119:
	.p2align 4
	.globl	___popcounthi2
	.def	___popcounthi2;	.scl	2;	.type	32;	.endef
___popcounthi2:
LFB120:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	edx, 1
	vmovdqa32	zmm1, ZMMWORD PTR LC5
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
	je	L1459
	.p2align 5
	.p2align 4
	.p2align 3
L1461:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1461
L1459:
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
	je	L1465
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
	jnb	L1497
	mov	ecx, 1
	jmp	L1474
	.p2align 4,,10
	.p2align 3
L1477:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1476
	test	ecx, ecx
	je	L1476
L1474:
	test	edx, edx
	jns	L1477
L1478:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1480:
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
	jne	L1480
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1479:
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
L1476:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1478
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
L1497:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1479
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
	ja	L1504
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1501
	.p2align 4,,10
	.p2align 3
L1504:
	fstp	st(0)
	fstp	st(0)
L1501:
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
	ja	L1508
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1505
	.p2align 4,,10
	.p2align 3
L1508:
	fstp	st(0)
	fstp	st(0)
L1505:
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
	js	L1521
	je	L1516
	xor	ebp, ebp
L1513:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L1515:
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
	jne	L1515
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
L1521:
	.cfi_restore_state
	neg	edx
	mov	ebp, 1
	jmp	L1513
	.p2align 4,,10
	.p2align 3
L1516:
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
	jns	L1523
	neg	ebx
	xor	eax, eax
	mov	ebp, 1
L1523:
	test	esi, esi
	jns	L1524
	neg	esi
	mov	ebp, eax
L1524:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	L1525
	jmp	L1549
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1555:
	test	eax, eax
	je	L1530
L1525:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	L1555
L1530:
	xor	esi, esi
	xor	edi, edi
	test	eax, eax
	je	L1550
	mov	DWORD PTR [esp], esi
	kmovd	k0, ebp
	.p2align 5
	.p2align 4
	.p2align 3
L1527:
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
	jne	L1527
	mov	edi, DWORD PTR [esp]
	kmovd	ebp, k0
L1528:
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
L1550:
	.cfi_restore_state
	xor	edi, edi
	jmp	L1528
L1549:
	cmp	ebx, esi
	setnb	bl
	movzx	edi, bl
	jmp	L1528
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
	jns	L1557
	neg	ebx
	mov	esi, 1
L1557:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	L1558
	jmp	L1582
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1586:
	test	edx, edx
	je	L1578
L1558:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	L1586
	test	edx, edx
	je	L1578
	.p2align 4
	.p2align 4
	.p2align 3
L1560:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L1560
L1561:
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
L1578:
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
L1582:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	L1561
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
	jb	L1588
	jmp	L1656
	.p2align 4,,10
	.p2align 3
L1591:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	L1590
	test	ax, ax
	je	L1590
	mov	ecx, eax
	mov	edx, ebx
L1588:
	test	dx, dx
	jns	L1591
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
	je	L1657
L1595:
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	je	L1593
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
	jns	L1593
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
L1593:
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
L1590:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	L1593
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
	jmp	L1595
L1656:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	L1593
L1657:
	mov	WORD PTR [esp+2], ax
	jmp	L1593
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
	jnb	L1682
	mov	ecx, 1
	jmp	L1659
	.p2align 4,,10
	.p2align 3
L1662:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1661
	test	ecx, ecx
	je	L1661
L1659:
	test	edx, edx
	jns	L1662
L1663:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1665:
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
	jne	L1665
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1664:
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
L1661:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1663
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
L1682:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1664
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
	je	L1687
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
L1687:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1690
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
L1690:
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
	je	L1693
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
L1693:
	.cfi_restore_state
	test	ebx, ebx
	je	L1696
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
L1696:
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
	jl	L1702
	mov	eax, 2
	jg	L1702
	xor	eax, eax
	cmp	edx, ecx
	jb	L1702
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1702:
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
	jl	L1709
	mov	eax, 1
	jg	L1709
	mov	eax, -1
	cmp	edx, ecx
	jb	L1709
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1709:
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
	je	L1718
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
L1718:
	.cfi_restore_state
	test	ebx, ebx
	je	L1721
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
L1721:
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
	je	L1734
	jmp	L1736
	.p2align 4,,10
	.p2align 3
L1741:
	fxch	st(1)
	jmp	L1736
	.p2align 4,,10
	.p2align 3
L1742:
	fxch	st(1)
L1736:
	fmul	st, st(1)
L1734:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1735
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1741
L1740:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1742
	jmp	L1740
	.p2align 4,,10
	.p2align 3
L1735:
	fstp	st(1)
	test	ecx, ecx
	jns	L1733
	fld1
	fdivrp	st(1), st
L1733:
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
	je	L1744
	jmp	L1746
	.p2align 4,,10
	.p2align 3
L1751:
	fxch	st(1)
	jmp	L1746
	.p2align 4,,10
	.p2align 3
L1752:
	fxch	st(1)
L1746:
	fmul	st, st(1)
L1744:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1745
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1751
L1750:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1752
	jmp	L1750
	.p2align 4,,10
	.p2align 3
L1745:
	fstp	st(1)
	test	ecx, ecx
	jns	L1743
	fld1
	fdivrp	st(1), st
L1743:
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
	jb	L1753
	mov	eax, 2
	cmp	ecx, edx
	jb	L1753
	xor	eax, eax
	cmp	ebx, esi
	jb	L1753
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1753:
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
	jb	L1760
	mov	eax, 1
	cmp	ecx, edx
	jb	L1760
	mov	eax, -1
	cmp	ebx, esi
	jb	L1760
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1760:
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
	.align 64
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
	.align 64
LC4:
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
LC5:
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
LC6:
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
LC7:
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
	.align 4
LC9:
	.long	-8388609
	.align 4
LC10:
	.long	2139095039
	.align 8
LC11:
	.long	-1
	.long	-1048577
	.align 8
LC12:
	.long	-1
	.long	2146435071
	.align 16
LC13:
	.long	-1
	.long	-1
	.long	65534
	.align 16
LC14:
	.long	-1
	.long	-1
	.long	32766
	.align 4
LC15:
	.long	1073741824
	.align 4
LC16:
	.long	1056964608
	.align 4
LC18:
	.long	-1090519040
	.align 4
LC20:
	.long	1602224128
	.align 64
LC21:
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
	.align 4
LC22:
	.long	1191182336
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
