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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	esi, DWORD PTR [ebp+16]
	cmp	eax, edx
	jnb	L2
	test	esi, esi
	je	L3
	.p2align 4
	.p2align 4
	.p2align 3
L4:
	movzx	ecx, BYTE PTR [eax-1+esi]
	mov	BYTE PTR [edx-1+esi], cl
	sub	esi, 1
	jne	L4
L3:
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
L2:
	.cfi_restore_state
	cmp	edx, eax
	je	L3
	test	esi, esi
	je	L3
	lea	ecx, [esi-1]
	cmp	ecx, 14
	jbe	L72
	mov	ebx, eax
	lea	edi, [eax+1]
	or	ebx, edx
	and	ebx, 15
	jne	L5
	mov	ecx, edx
	sub	ecx, edi
	cmp	ecx, 14
	jbe	L5
	mov	edi, esi
	mov	ecx, edx
	and	edi, -16
	lea	ebx, [eax+edi]
	.p2align 5
	.p2align 4
	.p2align 3
L6:
	movaps	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	ecx, 16
	movaps	XMMWORD PTR [ecx-16], xmm0
	cmp	eax, ebx
	jne	L6
	mov	ebx, esi
	lea	ecx, [edx+edi]
	sub	ebx, edi
	mov	DWORD PTR [esp+12], ebx
	cmp	esi, edi
	je	L3
	mov	esi, ebx
	movzx	ebx, BYTE PTR [eax]
	mov	BYTE PTR [ecx], bl
	cmp	esi, 1
	je	L3
	movzx	ebx, BYTE PTR [eax+1]
	mov	BYTE PTR [ecx+1], bl
	cmp	esi, 2
	je	L3
	movzx	ebx, BYTE PTR [eax+2]
	mov	BYTE PTR [ecx+2], bl
	cmp	esi, 3
	je	L3
	movzx	ebx, BYTE PTR [eax+3]
	mov	BYTE PTR [ecx+3], bl
	cmp	esi, 4
	je	L3
	movzx	ebx, BYTE PTR [eax+4]
	mov	BYTE PTR [ecx+4], bl
	cmp	esi, 5
	je	L3
	movzx	ebx, BYTE PTR [eax+5]
	mov	BYTE PTR [ecx+5], bl
	cmp	esi, 6
	je	L3
	movzx	ebx, BYTE PTR [eax+6]
	mov	BYTE PTR [ecx+6], bl
	cmp	esi, 7
	je	L3
	movzx	ebx, BYTE PTR [eax+7]
	mov	BYTE PTR [ecx+7], bl
	cmp	esi, 8
	je	L3
	movzx	ebx, BYTE PTR [eax+8]
	mov	BYTE PTR [ecx+8], bl
	cmp	esi, 9
	je	L3
	movzx	ebx, BYTE PTR [eax+9]
	mov	BYTE PTR [ecx+9], bl
	cmp	esi, 10
	je	L3
	movzx	ebx, BYTE PTR [eax+10]
	mov	BYTE PTR [ecx+10], bl
	cmp	esi, 11
	je	L3
	movzx	ebx, BYTE PTR [eax+11]
	mov	BYTE PTR [ecx+11], bl
	cmp	esi, 12
	je	L3
	movzx	ebx, BYTE PTR [eax+12]
	mov	BYTE PTR [ecx+12], bl
	cmp	esi, 13
	je	L3
	movzx	ebx, BYTE PTR [eax+13]
	mov	BYTE PTR [ecx+13], bl
	cmp	esi, 14
	je	L3
	movzx	eax, BYTE PTR [eax+14]
	mov	BYTE PTR [ecx+14], al
	jmp	L3
L72:
	lea	edi, [eax+1]
L5:
	add	esi, edx
	mov	ecx, edx
	jmp	L9
	.p2align 5
	.p2align 4,,10
	.p2align 3
L73:
	add	edi, 1
L9:
	movzx	ebx, BYTE PTR [edi-1]
	add	ecx, 1
	mov	BYTE PTR [ecx-1], bl
	cmp	esi, ecx
	jne	L73
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	cmp	ebx, 1
	jle	L181
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
L183:
	movzx	ecx, BYTE PTR [eax+1]
	add	eax, 2
	add	edx, 2
	mov	BYTE PTR [edx-2], cl
	movzx	ecx, BYTE PTR [eax-2]
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	L183
L181:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	jbe	L198
	cmp	dx, 31
	jbe	L198
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L196
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L198:
	mov	edx, 1
L196:
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
	jbe	L208
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L204
	cmp	ax, 8231
	jbe	L204
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L201
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L201
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
L204:
	.cfi_restore_state
	mov	ecx, 1
L201:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L208:
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
	jbe	L209
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L209:
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
	jp	L221
	fxch	st(1)
	fucomi	st, st(0)
	jp	L217
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L220
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L220:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L213
	.p2align 4,,10
	.p2align 3
L221:
	fstp	st(1)
L213:
	ret
	.p2align 4,,10
	.p2align 3
L217:
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
	jp	L230
	fxch	st(1)
	fucomi	st, st(0)
	jp	L226
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L229
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L229:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L222
	.p2align 4,,10
	.p2align 3
L230:
	fstp	st(1)
L222:
	ret
	.p2align 4,,10
	.p2align 3
L226:
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
	jp	L236
	fxch	st(1)
	fucomi	st, st(0)
	jp	L239
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
	je	L233
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L236:
	fstp	st(0)
	jmp	L231
	.p2align 4,,10
	.p2align 3
L239:
	fstp	st(0)
L231:
	ret
	.p2align 4,,10
	.p2align 3
L233:
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
	jp	L245
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
	je	L242
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L245:
	fstp	st(0)
	jmp	L240
	.p2align 4,,10
	.p2align 3
L248:
	fstp	st(0)
L240:
	ret
	.p2align 4,,10
	.p2align 3
L242:
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
	jp	L260
	fxch	st(1)
	fucomi	st, st(0)
	jp	L261
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
	jne	L259
	fcomi	st, st(1)
	jbe	L262
	fstp	st(1)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L261:
	fstp	st(0)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L262:
	fstp	st(0)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L263:
	fstp	st(0)
L255:
	jmp	L249
	.p2align 4,,10
	.p2align 3
L260:
	fstp	st(0)
L249:
	ret
	.p2align 4,,10
	.p2align 3
L259:
	test	edx, edx
	je	L263
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
	jp	L272
	fxch	st(1)
	fucomi	st, st(0)
	jp	L270
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
	je	L266
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L270:
	fstp	st(0)
	jmp	L264
	.p2align 4,,10
	.p2align 3
L272:
	fstp	st(0)
L264:
	ret
	.p2align 4,,10
	.p2align 3
L266:
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
	jp	L281
	fxch	st(1)
	fucomi	st, st(0)
	jp	L279
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
	je	L275
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L279:
	fstp	st(0)
	jmp	L273
	.p2align 4,,10
	.p2align 3
L281:
	fstp	st(0)
L273:
	ret
	.p2align 4,,10
	.p2align 3
L275:
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
	jp	L293
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
	jne	L292
	fcomi	st, st(1)
	jbe	L295
	fstp	st(0)
	jmp	L287
	.p2align 4,,10
	.p2align 3
L293:
	fstp	st(0)
	jmp	L287
	.p2align 4,,10
	.p2align 3
L295:
	fstp	st(1)
	jmp	L287
	.p2align 4,,10
	.p2align 3
L296:
	fstp	st(1)
L287:
	jmp	L282
	.p2align 4,,10
	.p2align 3
L294:
	fstp	st(0)
L282:
	ret
	.p2align 4,,10
	.p2align 3
L292:
	test	edx, edx
	je	L296
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
	je	L298
	.p2align 5
	.p2align 4
	.p2align 3
L299:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L299
L298:
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
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+16]
	test	eax, eax
	je	L311
	movss	xmm0, DWORD PTR [eax]
	mov	DWORD PTR [esp+4], eax
	movss	xmm1, DWORD PTR [esp+4]
	unpcklps	xmm0, xmm1
	movlps	QWORD PTR [edx], xmm0
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [edx]
	test	ecx, ecx
	je	L304
	mov	DWORD PTR [ecx+4], edx
L304:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L311:
	.cfi_restore_state
	mov	DWORD PTR [edx], 0
	mov	DWORD PTR [edx+4], 0
	add	esp, 12
	.cfi_def_cfa_offset 4
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
	je	L313
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L313:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L312
	mov	DWORD PTR [eax], edx
L312:
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
	je	L322
	mov	ebx, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+28], ecx
	xor	ebp, ebp
	mov	esi, ebx
	jmp	L324
	.p2align 4,,10
	.p2align 3
L339:
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	je	L338
L324:
	mov	edx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], esi
	mov	ebx, esi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L339
L321:
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
L338:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L322:
	mov	ebp, DWORD PTR [esp+72]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	DWORD PTR [ebp+0], eax
	mov	ebx, ecx
	test	edi, edi
	je	L321
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
	je	L341
	mov	edi, DWORD PTR [esp+52]
	xor	esi, esi
	jmp	L343
	.p2align 4,,10
	.p2align 3
L353:
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	je	L341
L343:
	mov	edx, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edi
	mov	ebx, edi
	mov	DWORD PTR [esp], edx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L353
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
L341:
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
	jbe	L378
	mov	edx, ecx
	jmp	L382
	.p2align 5
	.p2align 4,,10
	.p2align 3
L378:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L378
L382:
	cmp	dl, 32
	je	L378
	cmp	dl, 43
	je	L359
	cmp	dl, 45
	jne	L383
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L368
	mov	ebp, 1
L362:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L365:
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
	jbe	L365
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
L383:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	L362
L368:
	xor	eax, eax
L384:
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
L359:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	xor	ebp, ebp
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L362
	xor	eax, eax
	jmp	L384
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
	jbe	L406
	mov	edx, ecx
	jmp	L409
	.p2align 5
	.p2align 4,,10
	.p2align 3
L406:
	movsx	ecx, BYTE PTR [eax+1]
	add	eax, 1
	lea	esi, [ecx-9]
	mov	edx, ecx
	cmp	esi, 4
	jbe	L406
L409:
	cmp	dl, 32
	je	L406
	cmp	dl, 43
	je	L389
	cmp	dl, 45
	je	L410
	sub	ecx, 48
	mov	edi, eax
	xor	ebp, ebp
	cmp	ecx, 9
	ja	L397
L391:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L394:
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
	jbe	L394
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
L410:
	.cfi_restore_state
	lea	edi, [eax+1]
	movsx	eax, BYTE PTR [eax+1]
	mov	ebp, 1
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	L391
L397:
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
L389:
	.cfi_restore_state
	movsx	ebp, BYTE PTR [eax+1]
	lea	edi, [eax+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L397
	xor	ebp, ebp
	jmp	L391
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
	jbe	L434
	mov	edx, eax
	jmp	L439
	.p2align 5
	.p2align 4,,10
	.p2align 3
L434:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	esi, [eax-9]
	mov	edx, eax
	cmp	esi, 4
	jbe	L434
L439:
	cmp	dl, 32
	je	L434
	cmp	dl, 43
	je	L415
	cmp	dl, 45
	jne	L440
	movsx	ebp, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	mov	edx, ebp
	sub	ebp, 48
	cmp	ebp, 9
	ja	L424
	mov	esi, 1
L418:
	mov	DWORD PTR [esp+12], esi
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
L421:
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
	jbe	L421
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	jne	L411
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
L411:
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
L440:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	esi, esi
	mov	eax, ecx
	cmp	ebx, 9
	jbe	L418
L424:
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
L415:
	.cfi_restore_state
	movsx	edi, BYTE PTR [ecx+1]
	lea	eax, [ecx+1]
	xor	esi, esi
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	L418
	jmp	L424
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
L456:
	test	ebx, ebx
	je	L442
L457:
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
	js	L446
	je	L441
	sub	ebx, 1
	lea	edx, [ebp+0+edi]
	sub	ebx, esi
	mov	DWORD PTR [esp+52], edx
	test	ebx, ebx
	jne	L457
L442:
	xor	ebp, ebp
L441:
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
L446:
	.cfi_restore_state
	mov	ebx, esi
	jmp	L456
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
	je	L463
	.p2align 4
	.p2align 3
L471:
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
	je	L458
	jle	L461
	lea	ebp, [ebp-1]
	lea	ecx, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+52], ecx
	jne	L471
L463:
	xor	ebx, ebx
L458:
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
L461:
	.cfi_restore_state
	test	esi, esi
	je	L463
	mov	ebp, esi
	jmp	L471
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
	jne	L487
	jmp	L490
	.p2align 5
	.p2align 4,,10
	.p2align 3
L489:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	test	dx, dx
	je	L490
L487:
	cmp	cx, dx
	jne	L489
	ret
	.p2align 4,,10
	.p2align 3
L490:
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
	je	L495
	jmp	L496
	.p2align 5
	.p2align 4,,10
	.p2align 3
L497:
	movzx	eax, WORD PTR [edx+2]
	movzx	ebx, WORD PTR [ecx+2]
	add	edx, 2
	add	ecx, 2
	cmp	ax, bx
	jne	L496
L495:
	test	ax, ax
	jne	L497
L496:
	mov	edx, -1
	cmp	ax, bx
	jb	L494
	xor	edx, edx
	cmp	bx, ax
	setb	dl
L494:
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
L504:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L504
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
	je	L510
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L509:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L509
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L510:
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
	jne	L513
	jmp	L519
	.p2align 4,,10
	.p2align 3
L527:
	test	bx, bx
	je	L517
	add	edx, 2
	add	eax, 2
	sub	ecx, 1
	je	L519
L513:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L527
L517:
	movzx	ebx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	jb	L528
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
L528:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L519:
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
	jne	L530
	jmp	L533
	.p2align 4
	.p2align 4,,10
	.p2align 3
L532:
	add	eax, 2
	sub	edx, 1
	je	L533
L530:
	cmp	WORD PTR [eax], cx
	jne	L532
	ret
	.p2align 4,,10
	.p2align 3
L533:
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
	jne	L538
	jmp	L537
	.p2align 5
	.p2align 4,,10
	.p2align 3
L540:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L543
L538:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L540
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L550
	cmp	ax, bx
	setb	dl
	movzx	eax, dl
L537:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L550:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L543:
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
	je	L552
	mov	edx, DWORD PTR [esp+36]
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], edx
	call	_memcpy
L552:
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
	mov	edx, DWORD PTR [ebp+12]
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	cmp	ebx, edx
	je	L581
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, ebx
	sub	esi, edx
	lea	ecx, [edi+edi]
	sub	eax, 1
	cmp	esi, ecx
	jb	L559
	test	edi, edi
	je	L581
	cmp	eax, 6
	jbe	L569
	mov	ecx, edx
	lea	esi, [edx+2]
	or	ecx, ebx
	and	ecx, 15
	jne	L570
	mov	ecx, ebx
	sub	ecx, esi
	cmp	ecx, 12
	jbe	L570
	shr	edi, 3
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L564:
	mov	esi, ecx
	add	ecx, 1
	sal	esi, 4
	movaps	xmm0, XMMWORD PTR [edx+esi]
	movaps	XMMWORD PTR [ebx+esi], xmm0
	cmp	edi, ecx
	jne	L564
	mov	edi, DWORD PTR [ebp+16]
	and	edi, -8
	sub	eax, edi
	add	edi, edi
	add	edx, edi
	add	edi, ebx
	test	BYTE PTR [ebp+16], 7
	je	L581
	movzx	ecx, WORD PTR [edx]
	mov	WORD PTR [edi], cx
	test	eax, eax
	je	L581
	movzx	esi, WORD PTR [edx+2]
	mov	WORD PTR [edi+2], si
	cmp	eax, 1
	je	L581
	movzx	ecx, WORD PTR [edx+4]
	mov	WORD PTR [edi+4], cx
	cmp	eax, 2
	je	L581
	movzx	esi, WORD PTR [edx+6]
	mov	WORD PTR [edi+6], si
	cmp	eax, 3
	je	L581
	movzx	ecx, WORD PTR [edx+8]
	mov	WORD PTR [edi+8], cx
	cmp	eax, 4
	je	L581
	movzx	esi, WORD PTR [edx+10]
	mov	WORD PTR [edi+10], si
	cmp	eax, 5
	je	L581
	movzx	edx, WORD PTR [edx+12]
	mov	WORD PTR [edi+12], dx
L581:
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
L559:
	.cfi_restore_state
	mov	esi, DWORD PTR [ebp+16]
	test	esi, esi
	je	L581
	.p2align 4
	.p2align 4
	.p2align 3
L562:
	movzx	edi, WORD PTR [edx+eax*2]
	mov	WORD PTR [ebx+eax*2], di
	sub	eax, 1
	jnb	L562
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
L569:
	.cfi_restore_state
	mov	edi, ebx
	lea	esi, [edx+2]
	jmp	L605
	.p2align 5
	.p2align 4,,10
	.p2align 3
L607:
	add	esi, 2
L605:
	movzx	ecx, WORD PTR [esi-2]
	add	edi, 2
	mov	WORD PTR [edi-2], cx
	sub	eax, 1
	jb	L581
	jmp	L607
L570:
	mov	edi, ebx
	jmp	L605
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
	and	esp, -16
	sub	esp, 16
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+12]
	lea	esi, [ebx-1]
	mov	DWORD PTR [esp+12], esi
	test	ebx, ebx
	je	L609
	mov	ecx, DWORD PTR [ebp+8]
	mov	edi, 11
	shr	ecx
	neg	ecx
	mov	edx, ecx
	and	edx, 7
	lea	esi, [edx+7]
	cmp	esi, edi
	cmovb	esi, edi
	cmp	DWORD PTR [esp+12], esi
	jb	L621
	test	edx, edx
	je	L622
	mov	edi, DWORD PTR [ebp+8]
	mov	WORD PTR [edi], ax
	test	cl, 6
	je	L670
	mov	WORD PTR [edi+2], ax
	cmp	edx, 2
	jbe	L671
	and	ecx, 4
	mov	WORD PTR [edi+4], ax
	je	L672
	mov	WORD PTR [edi+6], ax
	cmp	edx, 4
	jbe	L673
	mov	WORD PTR [edi+8], ax
	cmp	edx, 5
	je	L674
	mov	WORD PTR [edi+10], ax
	cmp	edx, 7
	jne	L675
	lea	esi, [edi+14]
	mov	WORD PTR [edi+12], ax
	lea	edi, [ebx-8]
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp+12], edi
L611:
	sub	ebx, edx
	mov	esi, DWORD PTR [ebp+8]
	movzx	ecx, ax
	mov	edi, ebx
	mov	DWORD PTR [esp+8], ebx
	mov	ebx, eax
	sal	ebx, 16
	shr	edi, 3
	lea	esi, [esi+edx*2]
	or	ecx, ebx
	xor	ebx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L619:
	mov	edx, ebx
	add	ebx, 1
	sal	edx, 4
	mov	DWORD PTR [esi+edx], ecx
	mov	DWORD PTR [esi+4+edx], ecx
	mov	DWORD PTR [esi+8+edx], ecx
	mov	DWORD PTR [esi+12+edx], ecx
	cmp	edi, ebx
	jne	L619
	mov	ebx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	mov	edi, ebx
	and	edi, -8
	sub	DWORD PTR [esp+12], edi
	and	ebx, 7
	lea	ecx, [ecx+edi*2]
	je	L609
L610:
	mov	esi, DWORD PTR [esp+12]
	mov	WORD PTR [ecx], ax
	test	esi, esi
	je	L609
	mov	WORD PTR [ecx+2], ax
	cmp	esi, 1
	je	L609
	mov	WORD PTR [ecx+4], ax
	cmp	esi, 2
	je	L609
	mov	WORD PTR [ecx+6], ax
	cmp	esi, 3
	je	L609
	mov	WORD PTR [ecx+8], ax
	cmp	esi, 4
	je	L609
	mov	WORD PTR [ecx+10], ax
	cmp	esi, 5
	je	L609
	mov	WORD PTR [ecx+12], ax
	cmp	esi, 6
	je	L609
	mov	WORD PTR [ecx+14], ax
	cmp	esi, 7
	je	L609
	mov	WORD PTR [ecx+16], ax
	cmp	esi, 8
	je	L609
	mov	WORD PTR [ecx+18], ax
	cmp	esi, 9
	je	L609
	mov	WORD PTR [ecx+20], ax
	cmp	esi, 10
	je	L609
	mov	WORD PTR [ecx+22], ax
	cmp	esi, 11
	je	L609
	mov	WORD PTR [ecx+24], ax
	cmp	esi, 12
	je	L609
	mov	WORD PTR [ecx+26], ax
L609:
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
L672:
	.cfi_restore_state
	lea	edi, [edi+6]
	lea	ecx, [ebx-4]
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp+12], ecx
	jmp	L611
	.p2align 4,,10
	.p2align 3
L670:
	lea	ecx, [edi+2]
	lea	edi, [ebx-2]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp+12], edi
	jmp	L611
	.p2align 4,,10
	.p2align 3
L622:
	mov	esi, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], esi
	jmp	L611
L621:
	mov	ecx, DWORD PTR [ebp+8]
	jmp	L610
L671:
	lea	ecx, [edi+4]
	lea	esi, [ebx-3]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp+12], esi
	jmp	L611
L673:
	lea	esi, [edi+8]
	lea	edi, [ebx-5]
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp+12], edi
	jmp	L611
L674:
	lea	ecx, [edi+10]
	lea	esi, [ebx-6]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp+12], esi
	jmp	L611
L675:
	lea	edi, [edi+12]
	lea	ecx, [ebx-7]
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp+12], ecx
	jmp	L611
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+16]
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+12]
	cmp	edx, ebx
	jnb	L677
	test	eax, eax
	je	L676
	.p2align 4
	.p2align 4
	.p2align 3
L679:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	L679
L676:
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
L677:
	.cfi_restore_state
	je	L676
	test	eax, eax
	je	L676
	lea	ecx, [eax-1]
	cmp	ecx, 14
	jbe	L746
	mov	ecx, ebx
	lea	edi, [edx+1]
	or	ecx, edx
	and	ecx, 15
	jne	L680
	mov	esi, ebx
	sub	esi, edi
	cmp	esi, 14
	jbe	L680
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -16
	lea	esi, [edx+edi]
	.p2align 5
	.p2align 4
	.p2align 3
L681:
	movaps	xmm0, XMMWORD PTR [edx]
	add	edx, 16
	add	ecx, 16
	movaps	XMMWORD PTR [ecx-16], xmm0
	cmp	edx, esi
	jne	L681
	mov	ecx, eax
	add	ebx, edi
	sub	ecx, edi
	cmp	eax, edi
	je	L676
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ebx], al
	cmp	ecx, 1
	je	L676
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ebx+1], al
	cmp	ecx, 2
	je	L676
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [ebx+2], al
	cmp	ecx, 3
	je	L676
	movzx	eax, BYTE PTR [edx+3]
	mov	BYTE PTR [ebx+3], al
	cmp	ecx, 4
	je	L676
	movzx	eax, BYTE PTR [edx+4]
	mov	BYTE PTR [ebx+4], al
	cmp	ecx, 5
	je	L676
	movzx	eax, BYTE PTR [edx+5]
	mov	BYTE PTR [ebx+5], al
	cmp	ecx, 6
	je	L676
	movzx	eax, BYTE PTR [edx+6]
	mov	BYTE PTR [ebx+6], al
	cmp	ecx, 7
	je	L676
	movzx	eax, BYTE PTR [edx+7]
	mov	BYTE PTR [ebx+7], al
	cmp	ecx, 8
	je	L676
	movzx	eax, BYTE PTR [edx+8]
	mov	BYTE PTR [ebx+8], al
	cmp	ecx, 9
	je	L676
	movzx	eax, BYTE PTR [edx+9]
	mov	BYTE PTR [ebx+9], al
	cmp	ecx, 10
	je	L676
	movzx	eax, BYTE PTR [edx+10]
	mov	BYTE PTR [ebx+10], al
	cmp	ecx, 11
	je	L676
	movzx	eax, BYTE PTR [edx+11]
	mov	BYTE PTR [ebx+11], al
	cmp	ecx, 12
	je	L676
	movzx	eax, BYTE PTR [edx+12]
	mov	BYTE PTR [ebx+12], al
	cmp	ecx, 13
	je	L676
	movzx	eax, BYTE PTR [edx+13]
	mov	BYTE PTR [ebx+13], al
	cmp	ecx, 14
	je	L676
	movzx	edx, BYTE PTR [edx+14]
	mov	BYTE PTR [ebx+14], dl
	jmp	L676
L746:
	lea	edi, [edx+1]
L680:
	add	edx, eax
	jmp	L684
	.p2align 5
	.p2align 4,,10
	.p2align 3
L747:
	add	edi, 1
L684:
	movzx	ecx, BYTE PTR [edi-1]
	add	ebx, 1
	mov	BYTE PTR [ebx-1], cl
	cmp	edx, edi
	jne	L747
	jmp	L676
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
	je	L750
	mov	edx, eax
	xor	eax, eax
L750:
	neg	ecx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L751
	mov	esi, edi
	xor	edi, edi
L751:
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
	je	L754
	mov	eax, edx
	xor	edx, edx
L754:
	neg	ecx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L755
	mov	edi, esi
	xor	esi, esi
L755:
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
	movzx	eax, WORD PTR [esp+4]
	rol	ax, 8
	ret
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	_bswap_32
	.def	_bswap_32;	.scl	2;	.type	32;	.endef
_bswap_32:
LFB81:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	bswap	eax
	ret
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	_bswap_64
	.def	_bswap_64;	.scl	2;	.type	32;	.endef
_bswap_64:
LFB82:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	bswap	edx
	bswap	eax
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
	jmp	L770
	.p2align 4
	.p2align 4,,10
	.p2align 3
L768:
	cmp	ecx, 32
	je	L772
L770:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	L768
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
L772:
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
	je	L773
	mov	edx, eax
	and	edx, 1
	jne	L773
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L775:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L775
L773:
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
	fld	DWORD PTR LC2
	mov	eax, 1
	fcomip	st, st(1)
	ja	L783
	fld	DWORD PTR LC3
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L780
	.p2align 4,,10
	.p2align 3
L783:
	fstp	st(0)
L780:
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
	fld	QWORD PTR LC4
	mov	eax, 1
	fcomip	st, st(1)
	ja	L787
	fld	QWORD PTR LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L784
	.p2align 4,,10
	.p2align 3
L787:
	fstp	st(0)
L784:
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
	fld	TBYTE PTR LC6
	fcomip	st, st(1)
	ja	L791
	fld	TBYTE PTR LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L788
	.p2align 4,,10
	.p2align 3
L791:
	fstp	st(0)
L788:
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
	jp	L794
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L801
	jne	L801
	jmp	L794
	.p2align 4,,10
	.p2align 3
L809:
	fstp	st(0)
L794:
	ret
	.p2align 4,,10
	.p2align 3
L801:
	fld	DWORD PTR LC8
	test	eax, eax
	jns	L796
	fstp	st(0)
	fld	DWORD PTR LC9
L796:
	test	al, 1
	je	L797
	.p2align 4
	.p2align 3
L798:
	fmul	st(1), st
L797:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L809
	fmul	st, st(0)
	test	al, 1
	jne	L798
L808:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L798
	jmp	L808
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
	jp	L811
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L818
	jne	L818
	jmp	L811
	.p2align 4,,10
	.p2align 3
L827:
	fstp	st(0)
L811:
	ret
	.p2align 4,,10
	.p2align 3
L818:
	test	eax, eax
	js	L825
	fld	DWORD PTR LC8
L813:
	test	al, 1
	je	L814
	.p2align 4
	.p2align 3
L815:
	fmul	st(1), st
L814:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L827
	fmul	st, st(0)
	test	al, 1
	jne	L815
L826:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L815
	jmp	L826
	.p2align 4,,10
	.p2align 3
L825:
	fld	DWORD PTR LC9
	jmp	L813
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
	jp	L829
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L836
	jne	L836
	jmp	L829
	.p2align 4,,10
	.p2align 3
L845:
	fstp	st(0)
L829:
	ret
	.p2align 4,,10
	.p2align 3
L836:
	test	eax, eax
	js	L843
	fld	DWORD PTR LC8
L831:
	test	al, 1
	je	L832
	.p2align 4
	.p2align 3
L833:
	fmul	st(1), st
L832:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L845
	fmul	st, st(0)
	test	al, 1
	jne	L833
L844:
	mov	ecx, eax
	fmul	st, st(0)
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	L833
	jmp	L844
	.p2align 4,,10
	.p2align 3
L843:
	fld	DWORD PTR LC9
	jmp	L831
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	_memxor
	.def	_memxor;	.scl	2;	.type	32;	.endef
_memxor:
LFB92:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	ebx, ebx
	je	L847
	add	ebx, eax
	mov	edx, esi
	.p2align 5
	.p2align 4
	.p2align 3
L848:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	L848
L847:
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
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
	je	L855
	.p2align 3
	.p2align 4
	.p2align 3
L856:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L856
L855:
	test	edx, edx
	jne	L857
	jmp	L858
	.p2align 5
	.p2align 4,,10
	.p2align 3
L859:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L858
L857:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L859
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
L858:
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
	je	L869
L870:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L872
L869:
	ret
	.p2align 4,,10
	.p2align 3
L872:
	add	eax, 1
	cmp	edx, eax
	jne	L870
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
	je	L883
L879:
	mov	eax, DWORD PTR [esp+12]
	jmp	L882
	.p2align 4
	.p2align 4,,10
	.p2align 3
L881:
	add	eax, 1
	cmp	dl, cl
	je	L880
L882:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L881
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L879
L883:
	xor	ebx, ebx
L880:
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
L889:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L889
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
	je	L904
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
L894:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L894
	mov	esi, edx
	sub	eax, ebp
	je	L892
	mov	DWORD PTR [esp+24], ebp
	lea	edi, [ebp-1+eax]
	jmp	L914
	.p2align 4
	.p2align 4,,10
	.p2align 3
L917:
	add	edx, 1
	test	cl, cl
	je	L916
L914:
	movzx	ecx, BYTE PTR [edx]
	cmp	cl, bl
	jne	L917
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+24]
	mov	ecx, ebx
	mov	esi, edx
	mov	ebp, ebx
	jmp	L896
	.p2align 4,,10
	.p2align 3
L918:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	L897
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	L897
L896:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	L918
L897:
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, ebp
	cmp	cl, BYTE PTR [eax]
	je	L904
	add	edx, 1
	jmp	L914
	.p2align 4,,10
	.p2align 3
L916:
	xor	esi, esi
L892:
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
L904:
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
	ja	L929
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L930
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L922
	jmp	L923
	.p2align 4,,10
	.p2align 3
L930:
	fstp	st(1)
	fstp	st(1)
L923:
	ret
	.p2align 4,,10
	.p2align 3
L929:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L923
L922:
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
	je	L931
	cmp	esi, DWORD PTR [esp+32]
	jb	L942
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	L942
	movzx	ebp, BYTE PTR [edi]
	jmp	L937
	.p2align 4
	.p2align 4,,10
	.p2align 3
L941:
	mov	edx, ebx
L933:
	cmp	esi, edx
	jb	L942
L937:
	lea	ebx, [edx+1]
	mov	ecx, ebp
	cmp	BYTE PTR [edx], cl
	jne	L941
	cmp	DWORD PTR [esp+32], 1
	je	L931
L936:
	mov	eax, 1
	jmp	L934
	.p2align 5
	.p2align 4,,10
	.p2align 3
L935:
	add	eax, 1
	cmp	eax, DWORD PTR [esp+32]
	je	L931
L934:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	L935
	cmp	esi, ebx
	jb	L942
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	L933
	mov	ecx, ebx
	mov	ebx, edx
	mov	edx, ecx
	jmp	L936
	.p2align 4,,10
	.p2align 3
L942:
	xor	edx, edx
L931:
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
	je	L953
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L953:
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
	ja	L982
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L983
	fstp	st(0)
L961:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L968:
	fld	DWORD PTR LC9
	add	eax, 1
	fmulp	st(1), st
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L968
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L958
L985:
	fchs
L958:
	ret
	.p2align 4,,10
	.p2align 3
L983:
	fld	DWORD PTR LC9
	fcomip	st, st(2)
	jbe	L986
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L974
	jne	L974
	jmp	L964
	.p2align 4,,10
	.p2align 3
L986:
	fstp	st(0)
	jmp	L964
	.p2align 4,,10
	.p2align 3
L987:
	fstp	st(0)
L964:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L982:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L984
	fstp	st(1)
	mov	edx, 1
	jmp	L961
	.p2align 4,,10
	.p2align 3
L984:
	fld	DWORD PTR LC11
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L987
	fstp	st(1)
	mov	edx, 1
L962:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L970:
	fadd	st, st(0)
	fld	DWORD PTR LC9
	sub	eax, 1
	fcomip	st, st(1)
	ja	L970
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L985
	ret
L974:
	xor	edx, edx
	jmp	L962
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
	je	L988
	.p2align 6
	.p2align 4
	.p2align 3
L990:
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
	jne	L990
L988:
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
	jnb	L1018
	mov	ecx, 1
	jmp	L995
	.p2align 4,,10
	.p2align 3
L998:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L997
	test	ecx, ecx
	je	L997
L995:
	test	edx, edx
	jns	L998
L999:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1001:
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
	jne	L1001
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1000:
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
L997:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L999
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
L1018:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1000
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
	je	L1022
	movsx	ebx, al
	sal	ebx, 8
	bsr	edx, ebx
	xor	edx, 31
	lea	ebx, [edx-1]
L1022:
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
	je	L1027
	test	edi, edi
	je	L1029
	bsr	ebp, edi
	xor	ebp, 31
L1030:
	lea	ecx, [ebp-1]
L1027:
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
L1029:
	.cfi_restore_state
	bsr	ebp, esi
	xor	ebp, 31
	add	ebp, 32
	jmp	L1030
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
	je	L1034
	.p2align 5
	.p2align 4
	.p2align 3
L1036:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1036
L1034:
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
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	shr	edi, 3
	and	eax, -8
	mov	DWORD PTR [esp+12], edi
	mov	DWORD PTR [esp+8], eax
	cmp	ebx, ecx
	jb	L1045
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	cmp	edx, ebx
	jnb	L1079
L1045:
	mov	edx, DWORD PTR [esp+12]
	test	edx, edx
	je	L1080
	mov	esi, DWORD PTR [esp+12]
	sub	esi, 1
	cmp	esi, 3
	jbe	L1047
	mov	eax, ebx
	or	eax, ecx
	test	al, 15
	jne	L1047
	lea	edi, [ecx+8]
	cmp	ebx, edi
	je	L1047
	mov	edx, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	mov	eax, ecx
	mov	edi, DWORD PTR [ebp+16]
	shr	edx, 4
	and	esi, -16
	mov	DWORD PTR [esp+4], edx
	add	esi, ecx
	mov	edx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1048:
	movaps	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movaps	XMMWORD PTR [edx-16], xmm0
	cmp	eax, esi
	jne	L1048
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [ebp+16], edi
	lea	eax, [edx+edx]
	cmp	DWORD PTR [esp+12], eax
	je	L1051
	sal	edx, 4
	mov	esi, DWORD PTR [ecx+edx]
	mov	edi, DWORD PTR [ecx+4+edx]
	mov	DWORD PTR [ebx+edx], esi
	mov	DWORD PTR [ebx+4+edx], edi
L1051:
	mov	eax, DWORD PTR [esp+8]
	cmp	eax, DWORD PTR [ebp+16]
	jnb	L1040
	mov	edx, DWORD PTR [ebp+16]
	sub	edx, eax
	lea	esi, [edx-1]
	mov	DWORD PTR [esp+12], edx
	cmp	esi, 14
	jbe	L1081
	mov	edi, DWORD PTR [esp+8]
	lea	edx, [ebx+edi]
	lea	esi, [ecx+1+edi]
	lea	eax, [ecx+edi]
	mov	edi, edx
	sub	edi, esi
	cmp	edi, 14
	jbe	L1043
	mov	esi, eax
	or	esi, edx
	and	esi, 15
	jne	L1043
	mov	esi, DWORD PTR [esp+12]
	mov	edi, DWORD PTR [ebp+16]
	and	esi, -16
	mov	DWORD PTR [esp+4], esi
	add	esi, eax
	.p2align 5
	.p2align 4
	.p2align 3
L1052:
	movaps	xmm1, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movaps	XMMWORD PTR [edx-16], xmm1
	cmp	eax, esi
	jne	L1052
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [ebp+16], edi
	add	eax, edx
	cmp	DWORD PTR [esp+12], edx
	je	L1040
	movzx	edx, BYTE PTR [ecx+eax]
	lea	esi, [eax+1]
	mov	BYTE PTR [ebx+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+1+eax]
	lea	esi, [eax+2]
	mov	BYTE PTR [ebx+1+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+2+eax]
	lea	esi, [eax+3]
	mov	BYTE PTR [ebx+2+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+3+eax]
	lea	esi, [eax+4]
	mov	BYTE PTR [ebx+3+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+4+eax]
	lea	esi, [eax+5]
	mov	BYTE PTR [ebx+4+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+5+eax]
	lea	esi, [eax+6]
	mov	BYTE PTR [ebx+5+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+6+eax]
	lea	esi, [eax+7]
	mov	BYTE PTR [ebx+6+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+7+eax]
	lea	esi, [eax+8]
	mov	BYTE PTR [ebx+7+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+8+eax]
	lea	esi, [eax+9]
	mov	BYTE PTR [ebx+8+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+9+eax]
	lea	esi, [eax+10]
	mov	BYTE PTR [ebx+9+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+10+eax]
	lea	esi, [eax+11]
	mov	BYTE PTR [ebx+10+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+11+eax]
	lea	esi, [eax+12]
	mov	BYTE PTR [ebx+11+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+12+eax]
	lea	esi, [eax+13]
	mov	BYTE PTR [ebx+12+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	edx, BYTE PTR [ecx+13+eax]
	lea	esi, [eax+14]
	mov	BYTE PTR [ebx+13+eax], dl
	cmp	esi, edi
	jnb	L1040
	movzx	ecx, BYTE PTR [ecx+14+eax]
	mov	BYTE PTR [ebx+14+eax], cl
L1040:
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
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+16]
	sub	esi, 1
	test	edi, edi
	je	L1040
	.p2align 4
	.p2align 4
	.p2align 3
L1046:
	movzx	eax, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], al
	sub	esi, 1
	jnb	L1046
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
L1080:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [ebx+eax]
	mov	ebx, DWORD PTR [ebp+16]
	add	eax, ecx
	test	ebx, ebx
	je	L1040
L1043:
	add	ecx, DWORD PTR [ebp+16]
	.p2align 4
	.p2align 4
	.p2align 3
L1054:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	ecx, eax
	jne	L1054
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
L1047:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp+12]
	mov	DWORD PTR [ebp+8], ebx
	mov	eax, ecx
	mov	edx, ebx
	mov	DWORD PTR [ebp+12], ecx
	mov	edi, DWORD PTR [ebp+16]
	lea	esi, [ecx+esi*8]
	.p2align 5
	.p2align 4
	.p2align 3
L1050:
	mov	ecx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], ecx
	mov	DWORD PTR [edx-4], ebx
	cmp	eax, esi
	jne	L1050
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp+16], edi
	jmp	L1051
L1081:
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [ebx+eax]
	add	eax, ecx
	jmp	L1043
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
	mov	edi, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	shr	edi
	cmp	ebx, ecx
	jb	L1086
	mov	eax, DWORD PTR [ebp+16]
	add	eax, ecx
	cmp	eax, ebx
	jnb	L1110
L1086:
	test	edi, edi
	je	L1085
	lea	esi, [edi-1]
	cmp	esi, 6
	jbe	L1089
	mov	edx, ecx
	or	edx, ebx
	test	dl, 15
	jne	L1089
	lea	esi, [ecx+2]
	mov	eax, ebx
	sub	eax, esi
	cmp	eax, 12
	jbe	L1089
	mov	edx, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [ebp+16]
	mov	eax, ecx
	shr	edx, 4
	and	esi, -16
	mov	DWORD PTR [esp+12], edx
	add	esi, ecx
	mov	edx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1090:
	movaps	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movaps	XMMWORD PTR [edx-16], xmm0
	cmp	eax, esi
	jne	L1090
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [0+eax*8]
	cmp	edi, edx
	je	L1085
	sal	eax, 4
	movzx	esi, WORD PTR [ecx+eax]
	mov	WORD PTR [ebx+eax], si
	lea	esi, [edx+1]
	cmp	esi, edi
	jnb	L1085
	movzx	esi, WORD PTR [ecx+2+eax]
	mov	WORD PTR [ebx+2+eax], si
	lea	esi, [edx+2]
	cmp	esi, edi
	jnb	L1085
	movzx	esi, WORD PTR [ecx+4+eax]
	mov	WORD PTR [ebx+4+eax], si
	lea	esi, [edx+3]
	cmp	esi, edi
	jnb	L1085
	movzx	esi, WORD PTR [ecx+6+eax]
	mov	WORD PTR [ebx+6+eax], si
	lea	esi, [edx+4]
	cmp	esi, edi
	jnb	L1085
	movzx	esi, WORD PTR [ecx+8+eax]
	mov	WORD PTR [ebx+8+eax], si
	lea	esi, [edx+5]
	cmp	esi, edi
	jnb	L1085
	movzx	esi, WORD PTR [ecx+10+eax]
	add	edx, 6
	mov	WORD PTR [ebx+10+eax], si
	cmp	edx, edi
	jnb	L1085
	movzx	edi, WORD PTR [ecx+12+eax]
	mov	WORD PTR [ebx+12+eax], di
L1085:
	test	BYTE PTR [ebp+16], 1
	je	L1082
L1111:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+16]
	movzx	ecx, BYTE PTR [ecx-1+eax]
	mov	BYTE PTR [ebx-1+edx], cl
L1082:
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
L1110:
	.cfi_restore_state
	mov	esi, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+16]
	sub	esi, 1
	test	edx, edx
	je	L1082
	.p2align 4
	.p2align 4
	.p2align 3
L1087:
	movzx	eax, BYTE PTR [ecx+esi]
	mov	BYTE PTR [ebx+esi], al
	sub	esi, 1
	jnb	L1087
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
L1089:
	.cfi_restore_state
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+edi*2]
	.p2align 5
	.p2align 4
	.p2align 3
L1092:
	movzx	edi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], di
	cmp	eax, esi
	jne	L1092
	test	BYTE PTR [ebp+16], 1
	je	L1082
	jmp	L1111
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
	mov	edi, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, edi
	mov	edx, edi
	shr	eax, 2
	and	edx, -4
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+8], edx
	cmp	ebx, ecx
	jb	L1117
	lea	esi, [ecx+edi]
	cmp	esi, ebx
	jnb	L1145
L1117:
	mov	esi, DWORD PTR [esp+12]
	test	esi, esi
	je	L1146
	mov	edx, DWORD PTR [esp+12]
	sub	edx, 1
	cmp	edx, 2
	jbe	L1119
	lea	esi, [ecx+4]
	mov	eax, ebx
	sub	eax, esi
	cmp	eax, 8
	jbe	L1119
	mov	edx, edi
	mov	esi, edi
	mov	eax, ecx
	shr	edx, 4
	and	esi, -16
	mov	DWORD PTR [esp+4], edx
	add	esi, ecx
	mov	edx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1120:
	movups	xmm0, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movups	XMMWORD PTR [edx-16], xmm0
	cmp	eax, esi
	jne	L1120
	mov	eax, DWORD PTR [esp+4]
	mov	esi, DWORD PTR [esp+12]
	lea	edx, [0+eax*4]
	cmp	esi, edx
	je	L1123
	sal	eax, 4
	mov	DWORD PTR [esp+4], edx
	mov	esi, DWORD PTR [ecx+eax]
	mov	DWORD PTR [ebx+eax], esi
	mov	esi, edx
	mov	edx, DWORD PTR [esp+12]
	add	esi, 1
	cmp	esi, edx
	jnb	L1123
	mov	esi, DWORD PTR [ecx+4+eax]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [ebx+4+eax], esi
	mov	esi, DWORD PTR [esp+12]
	add	edx, 2
	cmp	edx, esi
	jnb	L1123
	mov	edx, DWORD PTR [ecx+8+eax]
	mov	DWORD PTR [ebx+8+eax], edx
L1123:
	mov	esi, DWORD PTR [esp+8]
	cmp	esi, edi
	jnb	L1112
	mov	eax, edi
	sub	eax, esi
	mov	DWORD PTR [esp+4], eax
	sub	eax, 1
	cmp	eax, 14
	jbe	L1147
	lea	eax, [ecx+esi]
	lea	edx, [ebx+esi]
	mov	DWORD PTR [esp+12], eax
	lea	esi, [ecx+1+esi]
	mov	eax, edx
	sub	eax, esi
	cmp	eax, 14
	jbe	L1115
	mov	esi, DWORD PTR [esp+12]
	or	esi, edx
	and	esi, 15
	jne	L1115
	mov	esi, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+12]
	and	esi, -16
	mov	DWORD PTR [esp+12], esi
	add	esi, eax
	.p2align 5
	.p2align 4
	.p2align 3
L1124:
	movaps	xmm1, XMMWORD PTR [eax]
	add	eax, 16
	add	edx, 16
	movaps	XMMWORD PTR [edx-16], xmm1
	cmp	eax, esi
	jne	L1124
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	add	eax, edx
	cmp	DWORD PTR [esp+4], edx
	je	L1112
	movzx	edx, BYTE PTR [ecx+eax]
	lea	esi, [eax+1]
	mov	BYTE PTR [ebx+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+1+eax]
	lea	esi, [eax+2]
	mov	BYTE PTR [ebx+1+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+2+eax]
	lea	esi, [eax+3]
	mov	BYTE PTR [ebx+2+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+3+eax]
	lea	esi, [eax+4]
	mov	BYTE PTR [ebx+3+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+4+eax]
	lea	esi, [eax+5]
	mov	BYTE PTR [ebx+4+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+5+eax]
	lea	esi, [eax+6]
	mov	BYTE PTR [ebx+5+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+6+eax]
	lea	esi, [eax+7]
	mov	BYTE PTR [ebx+6+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+7+eax]
	lea	esi, [eax+8]
	mov	BYTE PTR [ebx+7+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+8+eax]
	lea	esi, [eax+9]
	mov	BYTE PTR [ebx+8+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+9+eax]
	lea	esi, [eax+10]
	mov	BYTE PTR [ebx+9+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+10+eax]
	lea	esi, [eax+11]
	mov	BYTE PTR [ebx+10+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+11+eax]
	lea	esi, [eax+12]
	mov	BYTE PTR [ebx+11+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+12+eax]
	lea	esi, [eax+13]
	mov	BYTE PTR [ebx+12+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	edx, BYTE PTR [ecx+13+eax]
	lea	esi, [eax+14]
	mov	BYTE PTR [ebx+13+eax], dl
	cmp	esi, edi
	jnb	L1112
	movzx	ecx, BYTE PTR [ecx+14+eax]
	mov	BYTE PTR [ebx+14+eax], cl
L1112:
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
L1145:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	L1112
	.p2align 4
	.p2align 4
	.p2align 3
L1118:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	L1118
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
L1119:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp+12]
	mov	DWORD PTR [ebp+12], ecx
	mov	eax, ecx
	mov	edx, ebx
	lea	esi, [ecx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L1122:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, esi
	jne	L1122
	mov	ecx, DWORD PTR [ebp+12]
	jmp	L1123
	.p2align 4,,10
	.p2align 3
L1146:
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [ebx+eax]
	add	eax, ecx
	mov	DWORD PTR [esp+12], eax
	test	edi, edi
	je	L1112
L1115:
	add	ecx, edi
	mov	edi, DWORD PTR [esp+12]
	.p2align 4
	.p2align 4
	.p2align 3
L1126:
	movzx	ebx, BYTE PTR [edi]
	add	edi, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	ecx, edi
	jne	L1126
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
L1147:
	.cfi_restore_state
	lea	edx, [ebx+esi]
	add	esi, ecx
	mov	DWORD PTR [esp+12], esi
	jmp	L1115
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
	xor	edx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
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
	xor	edx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
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
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+20]
	fild	QWORD PTR [esp+16]
	test	eax, eax
	jns	L1154
	fld	DWORD PTR LC13
	faddp	st(1), st
L1154:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
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
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+20]
	fild	QWORD PTR [esp+16]
	test	eax, eax
	jns	L1157
	fld	DWORD PTR LC13
	faddp	st(1), st
L1157:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
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
	jne	L1163
	mov	eax, edx
	sar	eax, 14
	jne	L1160
	mov	eax, edx
	shr	eax, 13
	jne	L1164
	mov	eax, edx
	shr	eax, 12
	jne	L1165
	mov	eax, edx
	shr	eax, 11
	jne	L1166
	mov	eax, edx
	shr	eax, 10
	jne	L1167
	mov	eax, edx
	shr	eax, 9
	jne	L1168
	mov	eax, edx
	shr	eax, 8
	jne	L1169
	mov	eax, edx
	shr	eax, 7
	jne	L1170
	mov	eax, edx
	shr	eax, 6
	jne	L1171
	mov	eax, edx
	shr	eax, 5
	jne	L1172
	mov	eax, edx
	shr	eax, 4
	jne	L1173
	mov	eax, edx
	shr	eax, 3
	jne	L1174
	mov	eax, edx
	shr	eax, 2
	jne	L1175
	shr	edx
	jne	L1176
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
L1176:
	mov	eax, 14
L1160:
	ret
L1163:
	xor	eax, eax
	ret
L1174:
	mov	eax, 12
	ret
L1164:
	mov	eax, 2
	ret
L1165:
	mov	eax, 3
	ret
L1166:
	mov	eax, 4
	ret
L1167:
	mov	eax, 5
	ret
L1168:
	mov	eax, 6
	ret
L1169:
	mov	eax, 7
	ret
L1170:
	mov	eax, 8
	ret
L1171:
	mov	eax, 9
	ret
L1172:
	mov	eax, 10
	ret
L1173:
	mov	eax, 11
	ret
L1175:
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
	jne	L1181
	test	al, 2
	jne	L1182
	test	al, 4
	jne	L1183
	test	al, 8
	jne	L1184
	test	al, 16
	jne	L1185
	test	al, 32
	jne	L1186
	test	al, 64
	jne	L1187
	test	al, -128
	jne	L1188
	test	ah, 1
	jne	L1189
	test	ah, 2
	jne	L1190
	test	ah, 4
	jne	L1191
	test	ah, 8
	jne	L1192
	test	ah, 16
	jne	L1193
	test	ah, 32
	jne	L1194
	test	ah, 64
	jne	L1195
	test	ah, -128
	sete	dl
	movzx	eax, dl
	add	eax, 15
	ret
L1181:
	xor	eax, eax
	ret
L1182:
	mov	eax, 1
	ret
L1193:
	mov	eax, 12
	ret
L1183:
	mov	eax, 2
	ret
L1184:
	mov	eax, 3
	ret
L1185:
	mov	eax, 4
	ret
L1186:
	mov	eax, 5
	ret
L1187:
	mov	eax, 6
	ret
L1188:
	mov	eax, 7
	ret
L1189:
	mov	eax, 8
	ret
L1190:
	mov	eax, 9
	ret
L1191:
	mov	eax, 10
	ret
L1192:
	mov	eax, 11
	ret
L1194:
	mov	eax, 13
	ret
L1195:
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
	fld	DWORD PTR LC14
	fld	DWORD PTR [esp+8]
	fcomi	st, st(1)
	jnb	L1204
	fstp	st(0)
	fstp	st(0)
	cvttss2si	eax, DWORD PTR [esp+8]
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1204:
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
	je	L1207
	.p2align 5
	.p2align 4
	.p2align 3
L1209:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1209
L1207:
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
	je	L1213
	test	edx, edx
	je	L1213
	.p2align 5
	.p2align 4
	.p2align 3
L1215:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1215
L1213:
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
	jnb	L1245
	mov	ecx, 1
	jmp	L1222
	.p2align 4,,10
	.p2align 3
L1225:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1224
	test	ecx, ecx
	je	L1224
L1222:
	test	edx, edx
	jns	L1225
L1226:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1228:
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
	jne	L1228
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1227:
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
L1224:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1226
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
L1245:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1227
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
	ja	L1252
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1249
	.p2align 4,,10
	.p2align 3
L1252:
	fstp	st(0)
	fstp	st(0)
L1249:
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
	ja	L1256
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1253
	.p2align 4,,10
	.p2align 3
L1256:
	fstp	st(0)
	fstp	st(0)
L1253:
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
	js	L1269
	je	L1264
	xor	edi, edi
L1261:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L1263:
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
	jne	L1263
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
L1269:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L1261
	.p2align 4,,10
	.p2align 3
L1264:
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
	jns	L1271
	neg	ebx
	xor	eax, eax
	mov	edi, 1
L1271:
	test	esi, esi
	jns	L1272
	neg	esi
	mov	edi, eax
L1272:
	mov	edx, esi
	mov	ecx, ebx
	mov	eax, 1
	cmp	esi, ebx
	jb	L1273
	jmp	L1297
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1303:
	test	eax, eax
	je	L1278
L1273:
	add	edx, edx
	add	eax, eax
	cmp	edx, ebx
	jb	L1303
L1278:
	xor	esi, esi
	xor	ebp, ebp
	test	eax, eax
	je	L1298
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], esi
	.p2align 5
	.p2align 4
	.p2align 3
L1275:
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
	jne	L1275
	mov	edi, DWORD PTR [esp+4]
	mov	ebp, DWORD PTR [esp]
L1276:
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
L1298:
	.cfi_restore_state
	xor	ebp, ebp
	jmp	L1276
L1297:
	cmp	ebx, esi
	setnb	bl
	movzx	ebp, bl
	jmp	L1276
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
	jns	L1305
	neg	ebx
	mov	esi, 1
L1305:
	mov	eax, edx
	mov	ecx, ebx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ebx
	jb	L1306
	jmp	L1330
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1334:
	test	edx, edx
	je	L1326
L1306:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jb	L1334
	test	edx, edx
	je	L1326
	.p2align 4
	.p2align 4
	.p2align 3
L1308:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L1308
L1309:
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
L1326:
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
L1330:
	.cfi_restore_state
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	jmp	L1309
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
	jb	L1336
	jmp	L1404
	.p2align 4,,10
	.p2align 3
L1339:
	lea	ebx, [edx+edx]
	lea	eax, [ecx+ecx]
	cmp	bx, bp
	jnb	L1338
	test	ax, ax
	je	L1338
	mov	ecx, eax
	mov	edx, ebx
L1336:
	test	dx, dx
	jns	L1339
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
	je	L1405
L1343:
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	je	L1341
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
	jns	L1341
	mov	ecx, ebp
	sub	ecx, edx
	cmp	bp, dx
	setnb	dl
	cmovnb	ebp, ecx
	movzx	edi, dl
	or	ebx, edi
	mov	WORD PTR [esp+2], bx
L1341:
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
L1338:
	.cfi_restore_state
	mov	WORD PTR [esp+2], ax
	mov	ebp, esi
	test	ax, ax
	je	L1341
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
	jmp	L1343
L1404:
	sub	ebp, eax
	cmp	ax, si
	sete	dl
	cmovne	ebp, esi
	movzx	ecx, dl
	mov	WORD PTR [esp+2], cx
	jmp	L1341
L1405:
	mov	WORD PTR [esp+2], ax
	jmp	L1341
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
	jnb	L1430
	mov	ecx, 1
	jmp	L1407
	.p2align 4,,10
	.p2align 3
L1410:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	L1409
	test	ecx, ecx
	je	L1409
L1407:
	test	edx, edx
	jns	L1410
L1411:
	xor	ebx, ebx
	mov	DWORD PTR [esp+32], edi
	xor	ebp, ebp
	mov	DWORD PTR [esp], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1413:
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
	jne	L1413
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+32]
L1412:
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
L1409:
	.cfi_restore_state
	xor	esi, esi
	test	ecx, ecx
	jne	L1411
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
L1430:
	.cfi_restore_state
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	setnb	bl
	cmovnb	eax, ecx
	movzx	esi, bl
	jmp	L1412
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
	je	L1435
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
L1435:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1438
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
L1438:
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
	je	L1441
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
L1441:
	.cfi_restore_state
	test	ebx, ebx
	je	L1444
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
L1444:
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
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	bswap	edx
	bswap	eax
	ret
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	___bswapsi2
	.def	___bswapsi2;	.scl	2;	.type	32;	.endef
___bswapsi2:
LFB136:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	bswap	eax
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
	jl	L1450
	mov	eax, 2
	jg	L1450
	xor	eax, eax
	cmp	edx, ecx
	jb	L1450
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1450:
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
	jl	L1457
	mov	eax, 1
	jg	L1457
	mov	eax, -1
	cmp	edx, ecx
	jb	L1457
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1457:
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
	je	L1466
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
L1466:
	.cfi_restore_state
	test	ebx, ebx
	je	L1469
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
L1469:
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
	je	L1482
	jmp	L1484
	.p2align 4,,10
	.p2align 3
L1489:
	fxch	st(1)
	jmp	L1484
	.p2align 4,,10
	.p2align 3
L1490:
	fxch	st(1)
L1484:
	fmul	st, st(1)
L1482:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1483
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1489
L1488:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1490
	jmp	L1488
	.p2align 4,,10
	.p2align 3
L1483:
	fstp	st(1)
	test	ecx, ecx
	jns	L1481
	fld1
	fdivrp	st(1), st
L1481:
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
	je	L1492
	jmp	L1494
	.p2align 4,,10
	.p2align 3
L1499:
	fxch	st(1)
	jmp	L1494
	.p2align 4,,10
	.p2align 3
L1500:
	fxch	st(1)
L1494:
	fmul	st, st(1)
L1492:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1493
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1499
L1498:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1500
	jmp	L1498
	.p2align 4,,10
	.p2align 3
L1493:
	fstp	st(1)
	test	ecx, ecx
	jns	L1491
	fld1
	fdivrp	st(1), st
L1491:
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
	jb	L1501
	mov	eax, 2
	cmp	ecx, edx
	jb	L1501
	xor	eax, eax
	cmp	ebx, esi
	jb	L1501
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1501:
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
	jb	L1508
	mov	eax, 1
	cmp	ecx, edx
	jb	L1508
	mov	eax, -1
	cmp	ebx, esi
	jb	L1508
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1508:
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
LC2:
	.long	-8388609
	.align 4
LC3:
	.long	2139095039
	.align 8
LC4:
	.long	-1
	.long	-1048577
	.align 8
LC5:
	.long	-1
	.long	2146435071
	.align 16
LC6:
	.long	-1
	.long	-1
	.long	65534
	.align 16
LC7:
	.long	-1
	.long	-1
	.long	32766
	.align 4
LC8:
	.long	1073741824
	.align 4
LC9:
	.long	1056964608
	.align 4
LC11:
	.long	-1090519040
	.align 4
LC13:
	.long	1602224128
	.align 4
LC14:
	.long	1191182336
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
