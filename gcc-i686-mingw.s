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
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	cmp	edx, ebx
	jnb	L2
	test	eax, eax
	je	L3
	.p2align 4
	.p2align 4
	.p2align 3
L4:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	L4
L3:
	mov	eax, ebx
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
L2:
	.cfi_restore_state
	cmp	ebx, edx
	je	L3
	test	eax, eax
	je	L3
	lea	ecx, [eax-1]
	lea	esi, [edx+1]
	cmp	ecx, 3
	jbe	L5
	mov	ecx, edx
	lea	esi, [edx+1]
	or	ecx, ebx
	and	ecx, 3
	jne	L5
	mov	ecx, ebx
	sub	ecx, esi
	cmp	ecx, 2
	jbe	L5
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -4
	lea	ebp, [edx+edi]
	.p2align 4
	.p2align 4
	.p2align 3
L6:
	mov	esi, DWORD PTR [edx]
	add	edx, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], esi
	cmp	edx, ebp
	jne	L6
	mov	esi, eax
	lea	ecx, [ebx+edi]
	sub	esi, edi
	cmp	eax, edi
	je	L3
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	cmp	esi, 1
	je	L3
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ecx+1], al
	cmp	esi, 2
	je	L3
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [ecx+2], al
	jmp	L3
	.p2align 4,,10
	.p2align 3
L5:
	add	eax, ebx
	mov	edx, ebx
	jmp	L9
	.p2align 5
	.p2align 4,,10
	.p2align 3
L36:
	add	esi, 1
L9:
	movzx	ecx, BYTE PTR [esi-1]
	add	edx, 1
	mov	BYTE PTR [edx-1], cl
	cmp	eax, edx
	jne	L36
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
	jne	L38
	jmp	L40
	.p2align 5
	.p2align 4,,10
	.p2align 3
L41:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	L40
L38:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	L41
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
L40:
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
	jne	L49
	jmp	L52
	.p2align 4
	.p2align 4,,10
	.p2align 3
L51:
	add	eax, 1
	sub	edx, 1
	je	L52
L49:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L51
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L52:
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
	jne	L56
	jmp	L55
	.p2align 5
	.p2align 4,,10
	.p2align 3
L58:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	L60
L56:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	L58
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L55:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L60:
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
	je	L65
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memcpy
L65:
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
	jmp	L71
	.p2align 4
	.p2align 4,,10
	.p2align 3
L73:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	L70
L71:
	cmp	eax, ebx
	jne	L73
	xor	edx, edx
L70:
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
	je	L78
	mov	DWORD PTR [esp+8], eax
	movzx	eax, BYTE PTR [esp+36]
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memset
L78:
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
	je	L81
	.p2align 4
	.p2align 4
	.p2align 3
L82:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L82
L81:
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
	jne	L88
	jmp	L87
	.p2align 4
	.p2align 4,,10
	.p2align 3
L90:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	L87
L88:
	cmp	eax, ecx
	jne	L90
L87:
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
	jmp	L96
	.p2align 4
	.p2align 4,,10
	.p2align 3
L100:
	add	eax, 1
	test	cl, cl
	je	L99
L96:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L100
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L99:
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
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [ecx]
	movzx	ebx, BYTE PTR [edx]
	cmp	al, bl
	je	L102
	jmp	L103
	.p2align 5
	.p2align 4,,10
	.p2align 3
L104:
	movzx	eax, BYTE PTR [ecx+1]
	movzx	ebx, BYTE PTR [edx+1]
	add	ecx, 1
	add	edx, 1
	cmp	al, bl
	jne	L103
L102:
	test	al, al
	jne	L104
	xor	eax, eax
L103:
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
	je	L111
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
L110:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L110
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L111:
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
	je	L113
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	L117
	jmp	L130
	.p2align 4,,10
	.p2align 3
L132:
	cmp	edx, ebp
	je	L116
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	ecx, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L131
	mov	edx, ecx
L117:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	mov	edi, ebx
	sete	bl
	mov	esi, ebx
	mov	ebx, edi
	mov	ecx, esi
	test	bl, cl
	jne	L132
L116:
	movzx	ecx, BYTE PTR [esp+3]
	sub	eax, ecx
L113:
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
L131:
	.cfi_restore_state
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	L116
L130:
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	L116
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
	jle	L133
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
L135:
	movzx	ecx, BYTE PTR [eax+1]
	add	eax, 2
	add	edx, 2
	mov	BYTE PTR [edx-2], cl
	movzx	ecx, BYTE PTR [eax-2]
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	L135
L133:
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
	setbe	al
	movzx	eax, al
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
	sete	dl
	or	eax, edx
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
	sete	dl
	or	eax, edx
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
	setbe	al
	movzx	eax, al
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
	setbe	al
	movzx	eax, al
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
	setbe	al
	movzx	eax, al
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
	setbe	al
	movzx	eax, al
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
	setbe	al
	cmp	edx, 32
	sete	dl
	or	eax, edx
	movzx	eax, al
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
	setbe	al
	movzx	eax, al
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
	jbe	L150
	cmp	dx, 31
	jbe	L150
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L148
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L150:
	mov	edx, 1
L148:
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
	setbe	al
	movzx	eax, al
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
	jbe	L160
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L156
	cmp	ax, 8231
	jbe	L156
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L153
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L153
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
L156:
	.cfi_restore_state
	mov	ecx, 1
L153:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L160:
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
	jbe	L161
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L161:
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
	jp	L173
	fxch	st(1)
	fucomi	st, st(0)
	jp	L169
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L172
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L172:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L165
	.p2align 4,,10
	.p2align 3
L173:
	fstp	st(1)
L165:
	ret
	.p2align 4,,10
	.p2align 3
L169:
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
	jp	L182
	fxch	st(1)
	fucomi	st, st(0)
	jp	L178
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L181
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L181:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L174
	.p2align 4,,10
	.p2align 3
L182:
	fstp	st(1)
L174:
	ret
	.p2align 4,,10
	.p2align 3
L178:
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
	jp	L188
	fxch	st(1)
	fucomi	st, st(0)
	jp	L191
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
	je	L185
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L188:
	fstp	st(0)
	jmp	L183
	.p2align 4,,10
	.p2align 3
L191:
	fstp	st(0)
L183:
	ret
	.p2align 4,,10
	.p2align 3
L185:
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
	jp	L197
	fxch	st(1)
	fucomi	st, st(0)
	jp	L200
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
	je	L194
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L197:
	fstp	st(0)
	jmp	L192
	.p2align 4,,10
	.p2align 3
L200:
	fstp	st(0)
L192:
	ret
	.p2align 4,,10
	.p2align 3
L194:
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
	jp	L212
	fxch	st(1)
	fucomi	st, st(0)
	jp	L213
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
	jne	L211
	fcomi	st, st(1)
	jbe	L214
	fstp	st(1)
	jmp	L207
	.p2align 4,,10
	.p2align 3
L213:
	fstp	st(0)
	jmp	L207
	.p2align 4,,10
	.p2align 3
L214:
	fstp	st(0)
	jmp	L207
	.p2align 4,,10
	.p2align 3
L215:
	fstp	st(0)
L207:
	jmp	L201
	.p2align 4,,10
	.p2align 3
L212:
	fstp	st(0)
L201:
	ret
	.p2align 4,,10
	.p2align 3
L211:
	test	edx, edx
	je	L215
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
	jp	L224
	fxch	st(1)
	fucomi	st, st(0)
	jp	L222
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
	je	L218
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L222:
	fstp	st(0)
	jmp	L216
	.p2align 4,,10
	.p2align 3
L224:
	fstp	st(0)
L216:
	ret
	.p2align 4,,10
	.p2align 3
L218:
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
	jp	L233
	fxch	st(1)
	fucomi	st, st(0)
	jp	L231
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
	je	L227
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L231:
	fstp	st(0)
	jmp	L225
	.p2align 4,,10
	.p2align 3
L233:
	fstp	st(0)
L225:
	ret
	.p2align 4,,10
	.p2align 3
L227:
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
	jp	L245
	fxch	st(1)
	fucomi	st, st(0)
	jp	L246
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
	jne	L244
	fcomi	st, st(1)
	jbe	L247
	fstp	st(0)
	jmp	L239
	.p2align 4,,10
	.p2align 3
L245:
	fstp	st(0)
	jmp	L239
	.p2align 4,,10
	.p2align 3
L247:
	fstp	st(1)
	jmp	L239
	.p2align 4,,10
	.p2align 3
L248:
	fstp	st(1)
L239:
	jmp	L234
	.p2align 4,,10
	.p2align 3
L246:
	fstp	st(0)
L234:
	ret
	.p2align 4,,10
	.p2align 3
L244:
	test	edx, edx
	je	L248
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
	je	L250
	.p2align 5
	.p2align 4
	.p2align 3
L251:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L251
L250:
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
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	test	edx, edx
	je	L262
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L256
	mov	DWORD PTR [edx+4], eax
L256:
	ret
	.p2align 4,,10
	.p2align 3
L262:
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
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
	je	L264
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L264:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L263
	mov	DWORD PTR [eax], edx
L263:
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
	je	L273
	mov	ebx, DWORD PTR [esp+68]
	xor	esi, esi
	mov	DWORD PTR [esp+28], ecx
	mov	ebp, esi
	mov	esi, ebx
	jmp	L275
	.p2align 4,,10
	.p2align 3
L290:
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	je	L289
L275:
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L290
	mov	ebp, esi
L272:
	add	esp, 44
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
L289:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L273:
	mov	edx, DWORD PTR [esp+72]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	DWORD PTR [edx], eax
	mov	ebp, ecx
	test	edi, edi
	je	L272
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+8], edi
	mov	DWORD PTR [esp], ecx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
	add	esp, 44
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
	je	L292
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	mov	edi, ebx
	jmp	L294
	.p2align 4,,10
	.p2align 3
L304:
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	je	L292
L294:
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L304
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
L292:
	.cfi_restore_state
	add	esp, 28
	.cfi_def_cfa_offset 20
	xor	edi, edi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, edi
	pop	esi
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
	mov	edx, DWORD PTR [esp+20]
	movsx	ecx, BYTE PTR [edx]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	L324
	mov	eax, ecx
	jmp	L329
	.p2align 5
	.p2align 4,,10
	.p2align 3
L324:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	ebx, [ecx-9]
	mov	eax, ecx
	cmp	ebx, 4
	jbe	L324
L329:
	cmp	al, 32
	je	L324
	cmp	al, 43
	je	L310
	cmp	al, 45
	jne	L330
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	L319
	mov	ebp, 1
L313:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L316:
	lea	ecx, [esi+esi*4]
	movsx	ebx, BYTE PTR [edi+1]
	lea	edx, [eax-48]
	add	edi, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	esi, ecx
	mov	eax, ebx
	sub	ebx, 48
	sub	esi, edx
	cmp	ebx, 9
	jbe	L316
	sub	edx, ecx
	test	ebp, ebp
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	cmove	esi, edx
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
	.p2align 4,,10
	.p2align 3
L330:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	L313
L319:
	xor	esi, esi
L331:
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
	.p2align 4,,10
	.p2align 3
L310:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	xor	ebp, ebp
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	L313
	xor	esi, esi
	jmp	L331
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
	mov	edx, DWORD PTR [esp+20]
	movsx	ecx, BYTE PTR [edx]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	L349
	mov	eax, ecx
	jmp	L353
	.p2align 5
	.p2align 4,,10
	.p2align 3
L349:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	ebx, [ecx-9]
	mov	eax, ecx
	cmp	ebx, 4
	jbe	L349
L353:
	cmp	al, 32
	je	L349
	cmp	al, 43
	je	L336
	cmp	al, 45
	je	L354
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	ja	L344
L338:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
L341:
	lea	ecx, [esi+esi*4]
	movsx	ebx, BYTE PTR [edi+1]
	lea	edx, [eax-48]
	add	edi, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	esi, ecx
	mov	eax, ebx
	sub	ebx, 48
	sub	esi, edx
	cmp	ebx, 9
	jbe	L341
	sub	edx, ecx
	test	ebp, ebp
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	cmove	esi, edx
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
	.p2align 4,,10
	.p2align 3
L354:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	ebp, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	L338
L344:
	xor	esi, esi
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
	.p2align 4,,10
	.p2align 3
L336:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	L344
	xor	ebp, ebp
	jmp	L338
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
	jbe	L373
	mov	edx, eax
	jmp	L380
	.p2align 5
	.p2align 4,,10
	.p2align 3
L373:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	ebx, [eax-9]
	mov	edx, eax
	cmp	ebx, 4
	jbe	L373
L380:
	cmp	dl, 32
	je	L373
	cmp	dl, 43
	je	L359
	cmp	dl, 45
	jne	L381
	lea	eax, [ecx+1]
	movsx	ecx, BYTE PTR [ecx+1]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	L368
	mov	ebp, 1
L362:
	mov	DWORD PTR [esp+12], ebp
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
L365:
	mov	esi, ecx
	mov	edi, ebx
	sal	esi, 2
	shld	edi, ecx, 2
	add	ecx, esi
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
	jbe	L365
	mov	ebp, DWORD PTR [esp+12]
	test	ebp, ebp
	jne	L355
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
L355:
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
L381:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	ebp, ebp
	mov	eax, ecx
	cmp	ebx, 9
	jbe	L362
L368:
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
L359:
	.cfi_restore_state
	lea	eax, [ecx+1]
	movsx	ecx, BYTE PTR [ecx+1]
	xor	ebp, ebp
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	L362
	jmp	L368
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
	mov	esi, DWORD PTR [esp+60]
	.p2align 4
	.p2align 3
L397:
	test	ebx, ebx
	je	L383
L398:
	mov	edi, ebx
	mov	eax, DWORD PTR [esp+48]
	shr	edi
	mov	edx, edi
	mov	DWORD PTR [esp], eax
	imul	edx, esi
	add	edx, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], edx
	mov	ebp, edx
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	js	L387
	je	L382
	sub	ebx, 1
	lea	eax, [ebp+0+esi]
	sub	ebx, edi
	mov	DWORD PTR [esp+52], eax
	test	ebx, ebx
	jne	L398
L383:
	xor	ebp, ebp
L382:
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
L387:
	.cfi_restore_state
	mov	ebx, edi
	jmp	L397
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
	mov	esi, DWORD PTR [esp+60]
	mov	ebp, DWORD PTR [esp+56]
	mov	edi, esi
	test	ebp, ebp
	je	L404
	.p2align 4
	.p2align 3
L400:
	mov	eax, DWORD PTR [esp+68]
	mov	esi, ebp
	sar	esi
	mov	DWORD PTR [esp+8], eax
	mov	ebx, esi
	mov	eax, DWORD PTR [esp+48]
	imul	ebx, edi
	add	ebx, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	je	L399
	jle	L402
	sub	ebp, 1
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+52], eax
	jne	L400
L404:
	xor	ebx, ebx
L399:
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
L402:
	.cfi_restore_state
	test	esi, esi
	je	L404
	mov	ebp, esi
	jmp	L400
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
	lea	eax, [esp+40]
	mov	edx, DWORD PTR [esp+80]
	mov	ebx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+12], edx
	mov	edx, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	eax, ebx
	mov	DWORD PTR [ebx+12], edx
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
	lea	eax, [esp+40]
	mov	edx, DWORD PTR [esp+80]
	mov	ebx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+12], edx
	mov	edx, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	eax, ebx
	mov	DWORD PTR [ebx+12], edx
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
	jne	L427
	jmp	L430
	.p2align 5
	.p2align 4,,10
	.p2align 3
L429:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	test	dx, dx
	je	L430
L427:
	cmp	cx, dx
	jne	L429
	ret
	.p2align 4,,10
	.p2align 3
L430:
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
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	movzx	eax, WORD PTR [ecx]
	movzx	ebx, WORD PTR [edx]
	cmp	ax, bx
	je	L433
	jmp	L434
	.p2align 5
	.p2align 4,,10
	.p2align 3
L435:
	movzx	eax, WORD PTR [ecx+2]
	movzx	ebx, WORD PTR [edx+2]
	add	ecx, 2
	add	edx, 2
	cmp	ax, bx
	jne	L434
L433:
	test	ax, ax
	jne	L435
L434:
	mov	edx, -1
	cmp	ax, bx
	jb	L432
	xor	edx, edx
	cmp	bx, ax
	setb	dl
L432:
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
L441:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L441
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
	je	L447
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L446:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L446
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L447:
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
	jne	L450
	jmp	L456
	.p2align 4,,10
	.p2align 3
L462:
	test	bx, bx
	je	L454
	add	edx, 2
	add	eax, 2
	sub	ecx, 1
	je	L456
L450:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L462
L454:
	movzx	edx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L463
	cmp	ax, dx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
L463:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L456:
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
	jne	L465
	jmp	L468
	.p2align 4
	.p2align 4,,10
	.p2align 3
L467:
	add	eax, 2
	sub	edx, 1
	je	L468
L465:
	cmp	WORD PTR [eax], cx
	jne	L467
	ret
	.p2align 4,,10
	.p2align 3
L468:
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
	jne	L471
	jmp	L470
	.p2align 5
	.p2align 4,,10
	.p2align 3
L473:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L476
L471:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L473
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L480
	cmp	ax, bx
	setb	al
	movzx	eax, al
L470:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L480:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L476:
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
	je	L482
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	call	_memcpy
L482:
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
	mov	ecx, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	cmp	edx, ecx
	je	L505
	mov	edi, edx
	lea	esi, [ebx+ebx]
	lea	eax, [ebx-1]
	sub	edi, ecx
	cmp	edi, esi
	jb	L489
	test	ebx, ebx
	je	L505
	cmp	eax, 3
	jbe	L499
	mov	esi, ecx
	or	esi, edx
	and	esi, 3
	lea	esi, [ecx+2]
	jne	L500
	cmp	edx, esi
	je	L500
	mov	esi, ebx
	xor	eax, eax
	shr	esi
	.p2align 4
	.p2align 4
	.p2align 3
L494:
	mov	edi, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR [edx+eax*4], edi
	add	eax, 1
	cmp	esi, eax
	jne	L494
	test	bl, 1
	je	L505
	and	ebx, -2
	movzx	eax, WORD PTR [ecx+ebx*2]
	mov	WORD PTR [edx+ebx*2], ax
L505:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L489:
	.cfi_restore_state
	test	ebx, ebx
	je	L505
	.p2align 4
	.p2align 4
	.p2align 3
L492:
	movzx	edi, WORD PTR [ecx+eax*2]
	mov	WORD PTR [edx+eax*2], di
	sub	eax, 1
	jnb	L492
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L499:
	.cfi_restore_state
	mov	ebx, edx
	lea	esi, [ecx+2]
	jmp	L497
	.p2align 5
	.p2align 4,,10
	.p2align 3
L518:
	add	esi, 2
L497:
	movzx	ecx, WORD PTR [esi-2]
	add	ebx, 2
	mov	WORD PTR [ebx-2], cx
	sub	eax, 1
	jb	L505
	jmp	L518
L500:
	mov	ebx, edx
	jmp	L497
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
	mov	ecx, DWORD PTR [esp+32]
	mov	esi, DWORD PTR [esp+28]
	test	ecx, ecx
	je	L520
	mov	eax, DWORD PTR [esp+24]
	lea	edi, [ecx-1]
	shr	eax
	and	eax, 1
	cmp	edi, 3
	jbe	L525
	mov	ebx, DWORD PTR [esp+24]
	movzx	edx, si
	mov	DWORD PTR [esp], ebx
	test	eax, eax
	je	L522
	mov	edi, ebx
	mov	WORD PTR [ebx], si
	add	edi, 2
	mov	DWORD PTR [esp], edi
	lea	edi, [ecx-2]
L522:
	mov	ebx, ecx
	mov	ecx, esi
	sal	ecx, 16
	sub	ebx, eax
	or	edx, ecx
	mov	ecx, DWORD PTR [esp+24]
	mov	ebp, ebx
	shr	ebp
	lea	ecx, [ecx+eax*2]
	xor	eax, eax
	test	bl, 2
	je	L523
	mov	DWORD PTR [ecx], edx
	mov	eax, 1
	cmp	ebp, 1
	je	L549
	.p2align 4
	.p2align 4
	.p2align 3
L523:
	mov	DWORD PTR [ecx+eax*4], edx
	mov	DWORD PTR [ecx+4+eax*4], edx
	add	eax, 2
	cmp	ebp, eax
	jne	L523
L549:
	test	bl, 1
	je	L520
	mov	eax, ebx
	mov	ebx, DWORD PTR [esp]
	and	eax, -2
	sub	edi, eax
	lea	eax, [ebx+eax*2]
L521:
	mov	WORD PTR [eax], si
	test	edi, edi
	je	L520
	mov	WORD PTR [eax+2], si
	cmp	edi, 1
	je	L520
	mov	WORD PTR [eax+4], si
	cmp	edi, 2
	je	L520
	mov	WORD PTR [eax+6], si
L520:
	mov	eax, DWORD PTR [esp+24]
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
L525:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+24]
	jmp	L521
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
	mov	ebx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	cmp	edx, ebx
	jnb	L553
	test	eax, eax
	je	L552
	.p2align 4
	.p2align 4
	.p2align 3
L555:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	L555
L552:
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
L553:
	.cfi_restore_state
	je	L552
	test	eax, eax
	je	L552
	lea	ecx, [eax-1]
	cmp	ecx, 3
	jbe	L586
	mov	ecx, ebx
	or	ecx, edx
	and	ecx, 3
	lea	ecx, [edx+1]
	jne	L556
	mov	esi, ebx
	sub	esi, ecx
	cmp	esi, 2
	jbe	L556
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -4
	lea	esi, [edx+edi]
	.p2align 4
	.p2align 4
	.p2align 3
L557:
	mov	ebp, DWORD PTR [edx]
	add	edx, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], ebp
	cmp	edx, esi
	jne	L557
	mov	ecx, eax
	add	ebx, edi
	sub	ecx, edi
	cmp	eax, edi
	je	L552
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ebx], al
	cmp	ecx, 1
	je	L552
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ebx+1], al
	cmp	ecx, 2
	je	L552
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [ebx+2], al
	jmp	L552
L586:
	lea	ecx, [edx+1]
L556:
	add	edx, eax
	jmp	L560
	.p2align 5
	.p2align 4,,10
	.p2align 3
L587:
	add	ecx, 1
L560:
	movzx	eax, BYTE PTR [ecx-1]
	add	ebx, 1
	mov	BYTE PTR [ebx-1], al
	cmp	edx, ecx
	jne	L587
	jmp	L552
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
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L590
	mov	edi, esi
	xor	esi, esi
L590:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L591
	mov	eax, edx
	xor	edx, edx
L591:
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
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L594
	mov	esi, edi
	xor	edi, edi
L594:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L595
	mov	edx, eax
	xor	eax, eax
L595:
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
	jmp	L610
	.p2align 4
	.p2align 4,,10
	.p2align 3
L608:
	cmp	ecx, 32
	je	L612
L610:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	L608
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
L612:
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
	je	L613
	mov	edx, eax
	and	edx, 1
	jne	L613
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L615:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L615
L613:
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
	ja	L623
	fld	DWORD PTR LC3
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L620
	.p2align 4,,10
	.p2align 3
L623:
	fstp	st(0)
L620:
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
	ja	L627
	fld	QWORD PTR LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L624
	.p2align 4,,10
	.p2align 3
L627:
	fstp	st(0)
L624:
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
	ja	L631
	fld	TBYTE PTR LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L628
	.p2align 4,,10
	.p2align 3
L631:
	fstp	st(0)
L628:
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
	jp	L634
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L641
	jne	L641
	jmp	L634
	.p2align 4,,10
	.p2align 3
L649:
	fstp	st(0)
L634:
	ret
	.p2align 4,,10
	.p2align 3
L641:
	fld	DWORD PTR LC8
	test	eax, eax
	jns	L636
	fstp	st(0)
	fld	DWORD PTR LC9
L636:
	test	al, 1
	je	L637
	.p2align 4
	.p2align 3
L638:
	fmul	st(1), st
L637:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L649
	fmul	st, st(0)
	test	al, 1
	jne	L638
L648:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L638
	jmp	L648
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
	jp	L651
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L658
	jne	L658
	jmp	L651
	.p2align 4,,10
	.p2align 3
L667:
	fstp	st(0)
L651:
	ret
	.p2align 4,,10
	.p2align 3
L658:
	test	eax, eax
	js	L665
	fld	DWORD PTR LC8
L653:
	test	al, 1
	je	L654
	.p2align 4
	.p2align 3
L655:
	fmul	st(1), st
L654:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L667
	fmul	st, st(0)
	test	al, 1
	jne	L655
L666:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L655
	jmp	L666
	.p2align 4,,10
	.p2align 3
L665:
	fld	DWORD PTR LC9
	jmp	L653
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
	jp	L669
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L676
	jne	L676
	jmp	L669
	.p2align 4,,10
	.p2align 3
L685:
	fstp	st(0)
L669:
	ret
	.p2align 4,,10
	.p2align 3
L676:
	test	eax, eax
	js	L683
	fld	DWORD PTR LC8
L671:
	test	al, 1
	je	L672
	.p2align 4
	.p2align 3
L673:
	fmul	st(1), st
L672:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L685
	fmul	st, st(0)
	test	al, 1
	jne	L673
L684:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L673
	jmp	L684
	.p2align 4,,10
	.p2align 3
L683:
	fld	DWORD PTR LC9
	jmp	L671
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
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	test	ecx, ecx
	je	L687
	lea	edx, [ecx-1]
	cmp	edx, 2
	jbe	L688
	mov	edx, ebx
	or	edx, eax
	and	edx, 3
	jne	L688
	mov	edi, ecx
	mov	esi, ebx
	and	edi, -4
	lea	edx, [eax+edi]
	.p2align 4
	.p2align 4
	.p2align 3
L689:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	xor	DWORD PTR [esi], ebp
	add	esi, 4
	cmp	edx, eax
	jne	L689
	mov	esi, ecx
	lea	eax, [ebx+edi]
	sub	esi, edi
	cmp	ecx, edi
	je	L687
	movzx	ecx, BYTE PTR [edx]
	xor	BYTE PTR [eax], cl
	cmp	esi, 1
	je	L687
	movzx	ecx, BYTE PTR [edx+1]
	xor	BYTE PTR [eax+1], cl
	cmp	esi, 2
	je	L687
	movzx	edx, BYTE PTR [edx+2]
	xor	BYTE PTR [eax+2], dl
L687:
	mov	eax, ebx
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
L688:
	.cfi_restore_state
	add	ecx, eax
	mov	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L691:
	add	eax, 1
	add	esi, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	BYTE PTR [esi-1], dl
	cmp	ecx, eax
	jne	L691
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
	je	L706
	.p2align 3
	.p2align 4
	.p2align 3
L707:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L707
L706:
	test	edx, edx
	jne	L708
	jmp	L709
	.p2align 5
	.p2align 4,,10
	.p2align 3
L710:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L709
L708:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L710
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
L709:
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
	je	L727
L720:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L722
	ret
	.p2align 4,,10
	.p2align 3
L722:
	add	eax, 1
	cmp	edx, eax
	jne	L720
	ret
	.p2align 4,,10
	.p2align 3
L727:
	ret
	.cfi_endproc
LFE94:
	.p2align 4
	.globl	_strpbrk
	.def	_strpbrk;	.scl	2;	.type	32;	.endef
_strpbrk:
LFB95:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	je	L733
L729:
	mov	eax, esi
	jmp	L732
	.p2align 4
	.p2align 4,,10
	.p2align 3
L731:
	add	eax, 1
	cmp	dl, cl
	je	L730
L732:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L731
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L729
L733:
	xor	ebx, ebx
L730:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
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
L738:
	movsx	ebx, BYTE PTR [eax]
	cmp	esi, ebx
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L738
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
	je	L753
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
L743:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L743
	mov	ecx, edx
	sub	eax, ebp
	je	L741
	lea	edi, [ebp-1+eax]
	jmp	L750
	.p2align 4
	.p2align 4,,10
	.p2align 3
L765:
	add	edx, 1
	test	al, al
	je	L764
L750:
	movzx	eax, BYTE PTR [edx]
	cmp	al, bl
	jne	L765
	mov	DWORD PTR [esp+24], ebp
	mov	eax, ebp
	mov	ecx, ebx
	mov	esi, edx
	mov	DWORD PTR [esp+20], edx
	mov	ebp, ebx
	jmp	L745
	.p2align 4,,10
	.p2align 3
L766:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	L746
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	L746
L745:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	L766
L746:
	mov	ebx, ebp
	mov	edx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	cmp	cl, BYTE PTR [eax]
	je	L753
	add	edx, 1
	jmp	L750
	.p2align 4,,10
	.p2align 3
L764:
	xor	ecx, ecx
L741:
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
L753:
	.cfi_restore_state
	mov	ecx, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	mov	eax, ecx
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
	ja	L777
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L778
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L770
	jmp	L771
	.p2align 4,,10
	.p2align 3
L778:
	fstp	st(1)
	fstp	st(1)
L771:
	ret
	.p2align 4,,10
	.p2align 3
L777:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L771
L770:
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
	je	L779
	cmp	esi, DWORD PTR [esp+32]
	jb	L790
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	L790
	movzx	ebp, BYTE PTR [edi]
	jmp	L785
	.p2align 4
	.p2align 4,,10
	.p2align 3
L789:
	mov	edx, ebx
L781:
	cmp	esi, edx
	jb	L790
L785:
	lea	ebx, [edx+1]
	mov	eax, ebp
	cmp	BYTE PTR [edx], al
	jne	L789
	cmp	DWORD PTR [esp+32], 1
	je	L779
L784:
	mov	eax, 1
	jmp	L782
	.p2align 5
	.p2align 4,,10
	.p2align 3
L783:
	add	eax, 1
	cmp	eax, DWORD PTR [esp+32]
	je	L779
L782:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	L783
	cmp	esi, ebx
	jb	L790
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	L781
	mov	eax, ebx
	mov	ebx, edx
	mov	edx, eax
	jmp	L784
	.p2align 4,,10
	.p2align 3
L790:
	xor	edx, edx
L779:
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
	je	L799
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L799:
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
	ja	L828
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L829
	fstp	st(0)
L807:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L814:
	fmul	DWORD PTR LC9
	add	eax, 1
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L814
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L804
L831:
	fchs
L804:
	ret
	.p2align 4,,10
	.p2align 3
L829:
	fld	DWORD PTR LC9
	fcomip	st, st(2)
	jbe	L832
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L820
	jne	L820
	jmp	L810
	.p2align 4,,10
	.p2align 3
L832:
	fstp	st(0)
	jmp	L810
	.p2align 4,,10
	.p2align 3
L833:
	fstp	st(0)
L810:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L828:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L830
	fstp	st(1)
	mov	edx, 1
	jmp	L807
	.p2align 4,,10
	.p2align 3
L830:
	fld	DWORD PTR LC11
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L833
	fstp	st(1)
	mov	edx, 1
L808:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L816:
	fadd	st, st(0)
	fld	DWORD PTR LC9
	sub	eax, 1
	fcomip	st, st(1)
	ja	L816
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L831
	ret
L820:
	xor	edx, edx
	jmp	L808
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
	je	L834
	.p2align 6
	.p2align 4
	.p2align 3
L836:
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
	jne	L836
L834:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	L841
	jmp	L842
	.p2align 4,,10
	.p2align 3
L844:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L843
	test	edx, edx
	je	L843
L841:
	test	eax, eax
	jns	L844
L842:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L847:
	cmp	ecx, eax
	jb	L846
	sub	ecx, eax
	or	ebx, edx
L846:
	shr	eax
	shr	edx
	jne	L847
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L843:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	L842
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	je	L863
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
L863:
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
	mov	ebp, 63
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
	mov	eax, DWORD PTR [esp+20]
	sar	edx, 31
	mov	ecx, edx
	mov	edx, DWORD PTR [esp+24]
	xor	eax, ecx
	xor	edx, ecx
	mov	esi, eax
	mov	eax, DWORD PTR [esp+20]
	mov	edi, edx
	mov	edx, DWORD PTR [esp+24]
	xor	eax, ecx
	xor	edx, ecx
	or	eax, edx
	je	L868
	test	edi, edi
	je	L870
	bsr	esi, edi
	xor	esi, 31
L871:
	lea	ebp, [esi-1]
L868:
	pop	ebx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L870:
	.cfi_restore_state
	bsr	esi, esi
	xor	esi, 31
	add	esi, 32
	jmp	L871
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
	je	L875
	.p2align 5
	.p2align 4
	.p2align 3
L877:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L877
L875:
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
	mov	esi, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	mov	edi, ebp
	mov	ebx, ebp
	shr	edi, 3
	and	ebx, -8
	cmp	esi, ecx
	jb	L885
	lea	eax, [ecx+ebp]
	cmp	eax, esi
	jnb	L909
L885:
	test	edi, edi
	je	L884
	mov	DWORD PTR [esp], ebx
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*8]
	mov	DWORD PTR [esp+36], ecx
	.p2align 5
	.p2align 4
	.p2align 3
L888:
	mov	ecx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], ecx
	mov	DWORD PTR [edx-4], ebx
	cmp	eax, edi
	jne	L888
	mov	ebx, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+36]
L884:
	cmp	ebx, ebp
	jnb	L881
	mov	eax, ebp
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp+4], eax
	sub	eax, 1
	cmp	eax, 3
	lea	eax, [ecx+ebx]
	mov	DWORD PTR [esp], eax
	jbe	L889
	lea	edi, [ecx+1+ebx]
	mov	eax, edx
	sub	eax, edi
	cmp	eax, 2
	jbe	L889
	mov	eax, DWORD PTR [esp]
	or	eax, edx
	mov	edi, eax
	and	edi, 3
	jne	L889
	mov	edi, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp]
	mov	DWORD PTR [esp+36], ecx
	and	edi, -4
	mov	DWORD PTR [esp], edi
	add	edi, eax
	.p2align 4
	.p2align 4
	.p2align 3
L890:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	L890
	mov	eax, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+36]
	add	ebx, eax
	cmp	DWORD PTR [esp+4], eax
	je	L881
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], al
	lea	eax, [ebx+1]
	cmp	eax, ebp
	jnb	L881
	movzx	eax, BYTE PTR [ecx+1+ebx]
	mov	BYTE PTR [esi+1+ebx], al
	lea	eax, [ebx+2]
	cmp	eax, ebp
	jnb	L881
	movzx	eax, BYTE PTR [ecx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], al
L881:
	add	esp, 12
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
L909:
	.cfi_restore_state
	lea	eax, [ebp-1]
	test	ebp, ebp
	je	L881
	.p2align 4
	.p2align 4
	.p2align 3
L886:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	L886
	add	esp, 12
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
L889:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp]
	add	ecx, ebp
	.p2align 4
	.p2align 4
	.p2align 3
L892:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	L892
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
	mov	edi, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	mov	ebp, edi
	shr	ebp
	cmp	ebx, ecx
	jb	L914
	lea	eax, [ecx+edi]
	cmp	eax, ebx
	jnb	L938
L914:
	test	ebp, ebp
	je	L913
	lea	eax, [ebp-1]
	cmp	eax, 3
	jbe	L917
	mov	eax, ecx
	or	eax, ebx
	test	al, 3
	jne	L917
	lea	eax, [ecx+2]
	cmp	ebx, eax
	je	L917
	mov	eax, edi
	mov	esi, edi
	mov	DWORD PTR [esp+28], ecx
	mov	edx, ebx
	shr	eax, 2
	and	esi, -4
	mov	DWORD PTR [esp], eax
	add	esi, ecx
	mov	eax, ecx
	.p2align 4
	.p2align 4
	.p2align 3
L918:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, esi
	jne	L918
	mov	esi, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+28]
	lea	eax, [esi+esi]
	cmp	ebp, eax
	je	L913
	movzx	eax, WORD PTR [ecx+esi*4]
	mov	WORD PTR [ebx+esi*4], ax
L913:
	test	edi, 1
	je	L910
L939:
	movzx	eax, BYTE PTR [ecx-1+edi]
	mov	BYTE PTR [ebx-1+edi], al
L910:
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
L938:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	L910
	.p2align 4
	.p2align 4
	.p2align 3
L915:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	L915
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
L917:
	.cfi_restore_state
	mov	eax, ecx
	mov	edx, ebx
	lea	ebp, [ecx+ebp*2]
	.p2align 5
	.p2align 4
	.p2align 3
L920:
	movzx	esi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], si
	cmp	ebp, eax
	jne	L920
	test	edi, 1
	je	L910
	jmp	L939
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
	mov	edi, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+32]
	mov	esi, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	shr	edi, 2
	and	ebx, -4
	cmp	esi, ecx
	jb	L944
	mov	eax, DWORD PTR [esp+32]
	add	eax, ecx
	cmp	eax, esi
	jnb	L972
L944:
	test	edi, edi
	je	L973
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L947:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ebp
	cmp	eax, edi
	jne	L947
	cmp	ebx, DWORD PTR [esp+32]
	jnb	L940
	mov	eax, DWORD PTR [esp+32]
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp], eax
	sub	eax, 1
	cmp	eax, 3
	lea	eax, [ecx+ebx]
	jbe	L949
	lea	ebp, [ecx+1+ebx]
	mov	edi, edx
	sub	edi, ebp
	cmp	edi, 2
	jbe	L949
	mov	edi, eax
	or	edi, edx
	and	edi, 3
	jne	L949
	mov	ebp, DWORD PTR [esp]
	mov	DWORD PTR [esp+28], ecx
	and	ebp, -4
	lea	edi, [eax+ebp]
	.p2align 4
	.p2align 4
	.p2align 3
L950:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	L950
	mov	ecx, DWORD PTR [esp+28]
	add	ebx, ebp
	cmp	DWORD PTR [esp], ebp
	je	L940
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], al
	lea	eax, [ebx+1]
	cmp	eax, DWORD PTR [esp+32]
	jnb	L940
	movzx	eax, BYTE PTR [ecx+1+ebx]
	mov	BYTE PTR [esi+1+ebx], al
	lea	eax, [ebx+2]
	cmp	eax, DWORD PTR [esp+32]
	jnb	L940
	movzx	eax, BYTE PTR [ecx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], al
L940:
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
L972:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+32]
	sub	eax, 1
	test	edi, edi
	je	L940
	.p2align 4
	.p2align 4
	.p2align 3
L945:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	L945
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
L973:
	.cfi_restore_state
	lea	edx, [esi+ebx]
	lea	eax, [ecx+ebx]
	mov	ebx, DWORD PTR [esp+32]
	test	ebx, ebx
	je	L940
L949:
	add	ecx, DWORD PTR [esp+32]
	.p2align 4
	.p2align 4
	.p2align 3
L952:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	L952
	add	esp, 4
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
	jns	L980
	fadd	DWORD PTR LC13
L980:
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
	jns	L983
	fadd	DWORD PTR LC13
L983:
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
	jne	L989
	mov	eax, edx
	sar	eax, 14
	jne	L986
	mov	eax, edx
	shr	eax, 13
	jne	L990
	mov	eax, edx
	shr	eax, 12
	jne	L991
	mov	eax, edx
	shr	eax, 11
	jne	L992
	mov	eax, edx
	shr	eax, 10
	jne	L993
	mov	eax, edx
	shr	eax, 9
	jne	L994
	mov	eax, edx
	shr	eax, 8
	jne	L995
	mov	eax, edx
	shr	eax, 7
	jne	L996
	mov	eax, edx
	shr	eax, 6
	jne	L997
	mov	eax, edx
	shr	eax, 5
	jne	L998
	mov	eax, edx
	shr	eax, 4
	jne	L999
	mov	eax, edx
	shr	eax, 3
	jne	L1000
	mov	eax, edx
	shr	eax, 2
	jne	L1001
	shr	edx
	jne	L1002
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
L1002:
	mov	eax, 14
L986:
	ret
L989:
	xor	eax, eax
	ret
L1000:
	mov	eax, 12
	ret
L990:
	mov	eax, 2
	ret
L991:
	mov	eax, 3
	ret
L992:
	mov	eax, 4
	ret
L993:
	mov	eax, 5
	ret
L994:
	mov	eax, 6
	ret
L995:
	mov	eax, 7
	ret
L996:
	mov	eax, 8
	ret
L997:
	mov	eax, 9
	ret
L998:
	mov	eax, 10
	ret
L999:
	mov	eax, 11
	ret
L1001:
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
	jne	L1007
	test	al, 2
	jne	L1008
	test	al, 4
	jne	L1009
	test	al, 8
	jne	L1010
	test	al, 16
	jne	L1011
	test	al, 32
	jne	L1012
	test	al, 64
	jne	L1013
	test	al, -128
	jne	L1014
	test	ah, 1
	jne	L1015
	test	ah, 2
	jne	L1016
	test	ah, 4
	jne	L1017
	test	ah, 8
	jne	L1018
	test	ah, 16
	jne	L1019
	test	ah, 32
	jne	L1020
	test	ah, 64
	jne	L1021
	test	ah, -128
	sete	al
	movzx	eax, al
	add	eax, 15
	ret
L1007:
	xor	eax, eax
	ret
L1008:
	mov	eax, 1
	ret
L1019:
	mov	eax, 12
	ret
L1009:
	mov	eax, 2
	ret
L1010:
	mov	eax, 3
	ret
L1011:
	mov	eax, 4
	ret
L1012:
	mov	eax, 5
	ret
L1013:
	mov	eax, 6
	ret
L1014:
	mov	eax, 7
	ret
L1015:
	mov	eax, 8
	ret
L1016:
	mov	eax, 9
	ret
L1017:
	mov	eax, 10
	ret
L1018:
	mov	eax, 11
	ret
L1020:
	mov	eax, 13
	ret
L1021:
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
	sub	esp, 8
	.cfi_def_cfa_offset 12
	fld	DWORD PTR LC14
	fld	DWORD PTR [esp+12]
	fcomi	st, st(1)
	jnb	L1031
	fstp	st(1)
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1031:
	.cfi_restore_state
	fnstcw	WORD PTR [esp+6]
	fsubrp	st(1), st
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	esp, 8
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
	je	L1040
	test	edx, edx
	je	L1040
	.p2align 5
	.p2align 4
	.p2align 3
L1042:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L1042
L1040:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	L1049
	jmp	L1050
	.p2align 4,,10
	.p2align 3
L1052:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L1051
	test	edx, edx
	je	L1051
L1049:
	test	eax, eax
	jns	L1052
L1050:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L1055:
	cmp	ecx, eax
	jb	L1054
	sub	ecx, eax
	or	ebx, edx
L1054:
	shr	eax
	shr	edx
	jne	L1055
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1051:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	L1050
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	ja	L1074
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1071
	.p2align 4,,10
	.p2align 3
L1074:
	fstp	st(0)
	fstp	st(0)
L1071:
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
	ja	L1078
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L1075
	.p2align 4,,10
	.p2align 3
L1078:
	fstp	st(0)
	fstp	st(0)
L1075:
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
	js	L1091
	je	L1086
	xor	edi, edi
L1083:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L1085:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, DWORD PTR [esp+20]
	sal	DWORD PTR [esp+20]
	add	esi, eax
	sar	edx
	setne	al
	cmp	bl, 32
	mov	ebp, eax
	setne	al
	add	ebx, 1
	mov	ecx, ebp
	test	cl, al
	jne	L1085
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	neg	eax
	test	edi, edi
	cmovne	esi, eax
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
	.p2align 4,,10
	.p2align 3
L1091:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L1083
	.p2align 4,,10
	.p2align 3
L1086:
	xor	esi, esi
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
LFE128:
	.p2align 4
	.globl	___divsi3
	.def	___divsi3;	.scl	2;	.type	32;	.endef
___divsi3:
LFB129:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	mov	ecx, 1
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	eax, eax
	jns	L1093
	neg	eax
	xor	ecx, ecx
	mov	esi, 1
L1093:
	test	edx, edx
	jns	L1094
	neg	edx
	mov	esi, ecx
L1094:
	mov	ebx, eax
	mov	ecx, 1
	cmp	edx, eax
	jb	L1095
	jmp	L1096
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1116:
	test	ecx, ecx
	je	L1113
L1095:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jb	L1116
	test	ecx, ecx
	je	L1113
L1096:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L1101:
	cmp	ebx, edx
	jb	L1100
	sub	ebx, edx
	or	eax, ecx
L1100:
	shr	edx
	shr	ecx
	jne	L1101
	mov	edx, eax
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	neg	edx
	test	esi, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L1113:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	mov	edx, eax
	neg	edx
	test	esi, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	cmovne	eax, edx
	ret
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
	mov	eax, DWORD PTR [esp+16]
	test	ebx, ebx
	jns	L1118
	neg	ebx
	mov	esi, 1
L1118:
	mov	edx, eax
	mov	ecx, 1
	neg	edx
	cmovs	edx, eax
	mov	eax, ebx
	cmp	edx, ebx
	jb	L1119
	jmp	L1125
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1140:
	test	ecx, ecx
	je	L1137
L1119:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, ebx
	jb	L1140
	test	ecx, ecx
	je	L1137
	.p2align 4
	.p2align 4
	.p2align 3
L1125:
	mov	ebx, eax
	sub	ebx, edx
	cmp	eax, edx
	cmovnb	eax, ebx
	shr	edx
	shr	ecx
	jne	L1125
	mov	edx, eax
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	neg	edx
	test	esi, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L1137:
	.cfi_restore_state
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	mov	edx, eax
	neg	edx
	test	esi, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	cmovne	eax, edx
	ret
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
	mov	edi, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	esi, edi
	mov	eax, edx
	cmp	dx, di
	jb	L1142
	jmp	L1199
	.p2align 4,,10
	.p2align 3
L1145:
	lea	ebx, [eax+eax]
	lea	edx, [ecx+ecx]
	cmp	bx, si
	jnb	L1144
	test	dx, dx
	je	L1144
	mov	ecx, edx
	mov	eax, ebx
L1142:
	test	ax, ax
	jns	L1145
	xor	edx, edx
	cmp	di, ax
	jb	L1168
	mov	esi, edi
	mov	edx, ecx
	sub	esi, eax
L1168:
	mov	edi, eax
	mov	ebp, ecx
	shr	di
	shr	bp
	je	L1185
L1149:
	cmp	si, di
	jb	L1150
	sub	esi, edi
	or	edx, ebp
L1150:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 2
	shr	di, 2
	je	L1185
	cmp	si, bx
	jb	L1151
	sub	esi, ebx
	or	edx, edi
L1151:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 3
	shr	di, 3
	je	L1185
	cmp	si, bx
	jb	L1152
	sub	esi, ebx
	or	edx, edi
L1152:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 4
	shr	di, 4
	je	L1185
	cmp	si, bx
	jb	L1153
	sub	esi, ebx
	or	edx, edi
L1153:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 5
	shr	di, 5
	je	L1185
	cmp	si, bx
	jb	L1154
	sub	esi, ebx
	or	edx, edi
L1154:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 6
	shr	di, 6
	je	L1185
	cmp	si, bx
	jb	L1155
	sub	esi, ebx
	or	edx, edi
L1155:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 7
	shr	di, 7
	je	L1185
	cmp	si, bx
	jnb	L1200
L1156:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 8
	shr	di, 8
	je	L1185
	cmp	si, bx
	jnb	L1201
L1157:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 9
	shr	di, 9
	je	L1185
	cmp	si, bx
	jnb	L1202
L1158:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 10
	shr	di, 10
	je	L1185
	cmp	si, bx
	jnb	L1203
L1159:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 11
	shr	di, 11
	je	L1185
	cmp	si, bx
	jnb	L1204
L1160:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 12
	shr	di, 12
	je	L1185
	cmp	si, bx
	jb	L1161
	sub	esi, ebx
	or	edx, edi
L1161:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 13
	shr	di, 13
	je	L1185
	cmp	si, bx
	jb	L1162
	sub	esi, ebx
	or	edx, edi
L1162:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 14
	shr	di, 14
	je	L1185
	cmp	si, bx
	jb	L1163
	sub	esi, ebx
	or	edx, edi
L1163:
	shr	ax, 15
	test	cx, cx
	jns	L1185
	xor	ebp, ebp
	cmp	si, ax
	jb	L1147
	sub	esi, eax
	or	edx, 1
	mov	ebp, esi
	jmp	L1147
	.p2align 4,,10
	.p2align 3
L1185:
	mov	ebp, esi
L1147:
	mov	eax, DWORD PTR [esp+28]
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
	test	eax, eax
	cmove	ebp, edx
	mov	eax, ebp
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1144:
	.cfi_restore_state
	mov	ebp, edi
	test	dx, dx
	je	L1147
	cmp	di, bx
	jb	L1148
	mov	esi, edi
	and	cx, 32767
	and	ax, 32767
	mov	ebp, ecx
	mov	edi, eax
	sub	esi, ebx
	mov	eax, ebx
	mov	ecx, edx
	jmp	L1149
	.p2align 4,,10
	.p2align 3
L1200:
	sub	esi, ebx
	or	edx, edi
	jmp	L1156
	.p2align 4,,10
	.p2align 3
L1148:
	and	cx, 32767
	and	ax, 32767
	mov	ebp, ecx
	mov	edi, eax
	mov	ecx, edx
	mov	eax, ebx
	xor	edx, edx
	jmp	L1149
	.p2align 4,,10
	.p2align 3
L1201:
	sub	esi, ebx
	or	edx, edi
	jmp	L1157
	.p2align 4,,10
	.p2align 3
L1202:
	sub	esi, ebx
	or	edx, edi
	jmp	L1158
	.p2align 4,,10
	.p2align 3
L1203:
	sub	esi, ebx
	or	edx, edi
	jmp	L1159
	.p2align 4,,10
	.p2align 3
L1204:
	sub	esi, ebx
	or	edx, edi
	jmp	L1160
L1199:
	sete	dl
	mov	ebp, 0
	cmovne	ebp, edi
	movzx	edx, dl
	jmp	L1147
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	___udivmodsi4_libgcc
	.def	___udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
___udivmodsi4_libgcc:
LFB166:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	L1206
	jmp	L1207
	.p2align 4,,10
	.p2align 3
L1209:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L1208
	test	edx, edx
	je	L1208
L1206:
	test	eax, eax
	jns	L1209
L1207:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L1212:
	cmp	ecx, eax
	jb	L1211
	sub	ecx, eax
	or	ebx, edx
L1211:
	shr	eax
	shr	edx
	jne	L1212
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1208:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	L1207
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	je	L1229
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
L1229:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1232
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
L1232:
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
	je	L1235
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
L1235:
	.cfi_restore_state
	test	ebx, ebx
	je	L1238
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
L1238:
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
	mov	ebx, DWORD PTR [esp+12]
	cmp	ebx, 65535
	setbe	al
	xor	edx, edx
	sal	eax, 4
	sub	ecx, eax
	shr	ebx, cl
	mov	ecx, 8
	test	bh, -1
	sete	dl
	sal	edx, 3
	sub	ecx, edx
	add	edx, eax
	xor	eax, eax
	shr	ebx, cl
	mov	ecx, 4
	test	bl, -16
	sete	al
	sal	eax, 2
	sub	ecx, eax
	lea	esi, [eax+edx]
	xor	edx, edx
	mov	eax, 2
	shr	ebx, cl
	mov	ecx, eax
	test	bl, 12
	sete	dl
	add	edx, edx
	sub	ecx, edx
	shr	ebx, cl
	xor	ecx, ecx
	sub	eax, ebx
	and	ebx, 2
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	cmovne	eax, ecx
	add	edx, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	add	eax, edx
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
	jl	L1244
	mov	eax, 2
	jg	L1244
	xor	eax, eax
	cmp	edx, ecx
	jb	L1244
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1244:
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
	jl	L1251
	mov	eax, 1
	jg	L1251
	mov	eax, -1
	cmp	edx, ecx
	jb	L1251
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1251:
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xor	edx, edx
	mov	esi, 2
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
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
	lea	ebx, [ecx+edx]
	xor	ecx, ecx
	test	al, 15
	sete	cl
	sal	ecx, 2
	shr	eax, cl
	lea	edx, [ecx+ebx]
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shr	eax, cl
	add	ecx, edx
	and	eax, 3
	mov	ebx, eax
	shr	eax
	not	ebx
	sub	esi, eax
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	and	eax, 1
	neg	eax
	and	eax, esi
	pop	esi
	.cfi_restore 6
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
	je	L1260
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
L1260:
	.cfi_restore_state
	test	ebx, ebx
	je	L1263
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
L1263:
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
	mov	ecx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	movzx	eax, cx
	shr	ecx, 16
	movzx	edx, si
	mov	ebx, eax
	shr	esi, 16
	imul	ebx, edx
	imul	edx, ecx
	imul	eax, esi
	mov	edi, ebx
	imul	ecx, esi
	movzx	ebx, bx
	shr	edi, 16
	add	edx, edi
	movzx	edi, dx
	shr	edx, 16
	add	eax, edi
	add	edx, ecx
	mov	edi, eax
	shr	eax, 16
	sal	edi, 16
	add	edx, eax
	add	ebx, edi
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
	mov	esi, edx
	mov	ebx, ecx
	shr	esi, 16
	imul	edx, DWORD PTR [esp+32]
	imul	ebx, eax
	imul	eax, esi
	mov	edi, ebx
	movzx	ebx, bx
	shr	edi, 16
	add	eax, edi
	mov	edi, DWORD PTR [esp+28]
	movzx	ebp, ax
	shr	eax, 16
	shr	edi, 16
	imul	ecx, edi
	imul	esi, edi
	add	ecx, ebp
	add	eax, esi
	mov	ebp, ecx
	shr	ecx, 16
	add	ecx, eax
	mov	eax, DWORD PTR [esp+28]
	imul	eax, DWORD PTR [esp+24]
	sal	ebp, 16
	add	ebp, ebx
	add	edx, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	add	edx, eax
	mov	eax, ebp
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
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
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	and	edx, 252645135
	lea	eax, [eax+edx]
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
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
	mov	edx, eax
	and	eax, 858993459
	shr	edx, 2
	and	edx, 858993459
	add	edx, eax
	mov	eax, edx
	shr	eax, 4
	add	eax, edx
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
	je	L1276
	jmp	L1278
	.p2align 4,,10
	.p2align 3
L1283:
	fxch	st(1)
	jmp	L1278
	.p2align 4,,10
	.p2align 3
L1284:
	fxch	st(1)
L1278:
	fmul	st, st(1)
L1276:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1277
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1283
L1282:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1284
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1277:
	fstp	st(1)
	test	ecx, ecx
	jns	L1275
	fdivr	DWORD PTR LC12
L1275:
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
	je	L1286
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1293:
	fxch	st(1)
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1294:
	fxch	st(1)
L1288:
	fmul	st, st(1)
L1286:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1287
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1293
L1292:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1294
	jmp	L1292
	.p2align 4,,10
	.p2align 3
L1287:
	fstp	st(1)
	test	ecx, ecx
	jns	L1285
	fdivr	DWORD PTR LC12
L1285:
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
	jb	L1295
	mov	eax, 2
	cmp	ecx, edx
	jb	L1295
	xor	eax, eax
	cmp	ebx, esi
	jb	L1295
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1295:
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
	jb	L1302
	mov	eax, 1
	cmp	ecx, edx
	jb	L1302
	mov	eax, -1
	cmp	ebx, esi
	jb	L1302
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1302:
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
LC12:
	.long	1065353216
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
