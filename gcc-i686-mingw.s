	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	_memmove
	.def	_memmove;	.scl	2;	.type	32;	.endef
_memmove:
LFB2:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	esi, edx
	jnb	L2
	test	eax, eax
	je	L3
	.p2align 4
	.p2align 4
	.p2align 3
L4:
	movzx	ecx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [edx-1+eax], cl
	sub	eax, 1
	jne	L4
L3:
	mov	eax, edx
	pop	esi
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2:
	.cfi_restore_state
	cmp	edx, esi
	je	L3
	test	eax, eax
	je	L3
	add	eax, edx
	mov	edi, edx
	.p2align 3
	.p2align 4
	.p2align 3
L5:
	movsb
	cmp	eax, edi
	jne	L5
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
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
	jne	L17
	jmp	L18
	.p2align 5
	.p2align 4,,10
	.p2align 3
L19:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	L18
L17:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	L19
	add	eax, 1
L16:
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
L18:
	.cfi_restore_state
	xor	eax, eax
	jmp	L16
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
	jne	L29
	jmp	L32
	.p2align 4
	.p2align 4,,10
	.p2align 3
L31:
	add	eax, 1
	sub	edx, 1
	je	L32
L29:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L31
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L32:
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
	jne	L36
	jmp	L35
	.p2align 5
	.p2align 4,,10
	.p2align 3
L38:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	L40
L36:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	L38
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L35:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L40:
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
	je	L45
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memcpy
L45:
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
	jmp	L51
	.p2align 4
	.p2align 4,,10
	.p2align 3
L53:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	L50
L51:
	cmp	eax, ebx
	jne	L53
	xor	edx, edx
L50:
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
	je	L56
	mov	DWORD PTR [esp+8], eax
	movzx	eax, BYTE PTR [esp+36]
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memset
L56:
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
	je	L62
	.p2align 4
	.p2align 4
	.p2align 3
L63:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L63
L62:
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
	jne	L69
	jmp	L68
	.p2align 4
	.p2align 4,,10
	.p2align 3
L71:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	L68
L69:
	cmp	eax, ecx
	jne	L71
L68:
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
	jmp	L77
	.p2align 4
	.p2align 4,,10
	.p2align 3
L81:
	add	eax, 1
	test	cl, cl
	je	L80
L77:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L81
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
LFE11:
	.p2align 4
	.globl	_strcmp
	.def	_strcmp;	.scl	2;	.type	32;	.endef
_strcmp:
LFB12:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	movzx	eax, BYTE PTR [ebx]
	movzx	ecx, BYTE PTR [esi]
	test	al, al
	je	L83
	cmp	al, cl
	jne	L83
	mov	edx, 1
	jmp	L84
	.p2align 5
	.p2align 4,,10
	.p2align 3
L97:
	cmp	al, cl
	jne	L83
L84:
	movzx	eax, BYTE PTR [ebx+edx]
	movzx	ecx, BYTE PTR [esi+edx]
	add	edx, 1
	test	al, al
	jne	L97
L83:
	sub	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
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
	je	L101
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
L100:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L100
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L101:
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
	je	L103
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	L107
	jmp	L120
	.p2align 4,,10
	.p2align 3
L122:
	cmp	edx, ebp
	je	L106
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	ecx, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L121
	mov	edx, ecx
L107:
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
	jne	L122
L106:
	movzx	ecx, BYTE PTR [esp+3]
	sub	eax, ecx
L103:
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
L121:
	.cfi_restore_state
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	L106
L120:
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	L106
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
	jle	L123
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
L125:
	movzx	ecx, BYTE PTR [eax+1]
	add	eax, 2
	add	edx, 2
	mov	BYTE PTR [edx-2], cl
	movzx	ecx, BYTE PTR [eax-2]
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	L125
L123:
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
	jbe	L140
	cmp	dx, 31
	jbe	L140
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L138
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
L140:
	mov	edx, 1
L138:
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
	jbe	L150
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L146
	cmp	ax, 8231
	jbe	L146
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L143
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L143
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
L146:
	.cfi_restore_state
	mov	ecx, 1
L143:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L150:
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
	jbe	L151
	or	eax, 32
	xor	ecx, ecx
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
L151:
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
	jp	L163
	fxch	st(1)
	fucomi	st, st(0)
	jp	L159
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L162
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L162:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L155
	.p2align 4,,10
	.p2align 3
L163:
	fstp	st(1)
L155:
	ret
	.p2align 4,,10
	.p2align 3
L159:
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
	jp	L172
	fxch	st(1)
	fucomi	st, st(0)
	jp	L168
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L171
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L171:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L164
	.p2align 4,,10
	.p2align 3
L172:
	fstp	st(1)
L164:
	ret
	.p2align 4,,10
	.p2align 3
L168:
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
	jp	L178
	fxch	st(1)
	fucomi	st, st(0)
	jp	L181
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
	je	L175
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L178:
	fstp	st(0)
	jmp	L173
	.p2align 4,,10
	.p2align 3
L181:
	fstp	st(0)
L173:
	ret
	.p2align 4,,10
	.p2align 3
L175:
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
	jp	L187
	fxch	st(1)
	fucomi	st, st(0)
	jp	L190
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
	je	L184
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L187:
	fstp	st(0)
	jmp	L182
	.p2align 4,,10
	.p2align 3
L190:
	fstp	st(0)
L182:
	ret
	.p2align 4,,10
	.p2align 3
L184:
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
	jp	L202
	fxch	st(1)
	fucomi	st, st(0)
	jp	L203
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
	jne	L201
	fcomi	st, st(1)
	jbe	L204
	fstp	st(1)
	jmp	L197
	.p2align 4,,10
	.p2align 3
L203:
	fstp	st(0)
	jmp	L197
	.p2align 4,,10
	.p2align 3
L204:
	fstp	st(0)
	jmp	L197
	.p2align 4,,10
	.p2align 3
L205:
	fstp	st(0)
L197:
	jmp	L191
	.p2align 4,,10
	.p2align 3
L202:
	fstp	st(0)
L191:
	ret
	.p2align 4,,10
	.p2align 3
L201:
	test	edx, edx
	je	L205
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
	jp	L214
	fxch	st(1)
	fucomi	st, st(0)
	jp	L212
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
	je	L208
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L212:
	fstp	st(0)
	jmp	L206
	.p2align 4,,10
	.p2align 3
L214:
	fstp	st(0)
L206:
	ret
	.p2align 4,,10
	.p2align 3
L208:
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
	jp	L223
	fxch	st(1)
	fucomi	st, st(0)
	jp	L221
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
	je	L217
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L221:
	fstp	st(0)
	jmp	L215
	.p2align 4,,10
	.p2align 3
L223:
	fstp	st(0)
L215:
	ret
	.p2align 4,,10
	.p2align 3
L217:
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
	jp	L235
	fxch	st(1)
	fucomi	st, st(0)
	jp	L236
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
	jne	L234
	fcomi	st, st(1)
	jbe	L237
	fstp	st(0)
	jmp	L229
	.p2align 4,,10
	.p2align 3
L235:
	fstp	st(0)
	jmp	L229
	.p2align 4,,10
	.p2align 3
L237:
	fstp	st(1)
	jmp	L229
	.p2align 4,,10
	.p2align 3
L238:
	fstp	st(1)
L229:
	jmp	L224
	.p2align 4,,10
	.p2align 3
L236:
	fstp	st(0)
L224:
	ret
	.p2align 4,,10
	.p2align 3
L234:
	test	edx, edx
	je	L238
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
	je	L240
	.p2align 5
	.p2align 4
	.p2align 3
L241:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	L241
L240:
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
	je	L252
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L246
	mov	DWORD PTR [edx+4], eax
L246:
	ret
	.p2align 4,,10
	.p2align 3
L252:
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
	je	L254
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L254:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L253
	mov	DWORD PTR [eax], edx
L253:
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
	je	L263
	mov	ebx, DWORD PTR [esp+68]
	xor	esi, esi
	mov	DWORD PTR [esp+28], ecx
	mov	ebp, esi
	mov	esi, ebx
	jmp	L265
	.p2align 4,,10
	.p2align 3
L280:
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	je	L279
L265:
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	jne	L280
	mov	ebp, esi
L262:
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
L279:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
L263:
	mov	edx, DWORD PTR [esp+72]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	DWORD PTR [edx], eax
	mov	ebp, ecx
	test	edi, edi
	je	L262
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
	je	L282
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	mov	edi, ebx
	jmp	L284
	.p2align 4,,10
	.p2align 3
L294:
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	je	L282
L284:
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	jne	L294
L281:
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
L282:
	.cfi_restore_state
	xor	edi, edi
	jmp	L281
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
	jmp	L320
	.p2align 4
	.p2align 4,,10
	.p2align 3
L314:
	add	edx, 1
L320:
	movsx	eax, BYTE PTR [edx]
	mov	ecx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	L314
	cmp	cl, 32
	je	L314
	cmp	cl, 43
	je	L300
	cmp	cl, 45
	jne	L321
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	ja	L309
	mov	ebp, 1
L303:
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
L306:
	add	edi, 1
	lea	eax, [esi-48]
	lea	edx, [ebx+ebx*4]
	movzx	esi, BYTE PTR [edi]
	add	edx, edx
	movsx	eax, al
	mov	ebx, edx
	mov	ecx, esi
	sub	ebx, eax
	movsx	ecx, cl
	sub	ecx, 48
	cmp	ecx, 9
	jbe	L306
	sub	eax, edx
	test	ebp, ebp
	cmove	ebx, eax
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
L321:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx]
	mov	edi, edx
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L303
L309:
	xor	ebx, ebx
L322:
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
L300:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L303
	xor	ebx, ebx
	jmp	L322
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	_atol
	.def	_atol;	.scl	2;	.type	32;	.endef
_atol:
LFB158:
	.cfi_startproc
	jmp	_atoi
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	edx, DWORD PTR [esp+48]
	jmp	L350
	.p2align 4
	.p2align 4,,10
	.p2align 3
L342:
	add	edx, 1
L350:
	movsx	eax, BYTE PTR [edx]
	mov	ecx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	L342
	cmp	cl, 32
	je	L342
	cmp	cl, 43
	je	L328
	cmp	cl, 45
	jne	L351
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	ja	L337
	mov	ebp, 1
L331:
	mov	DWORD PTR [esp+20], ebp
	xor	eax, eax
	xor	edx, edx
	.p2align 4
	.p2align 3
L334:
	mov	ecx, eax
	mov	ebx, edx
	sal	ecx, 2
	shld	ebx, eax, 2
	add	eax, ecx
	lea	ecx, [esi-48]
	movsx	ecx, cl
	adc	edx, ebx
	add	eax, eax
	mov	esi, ecx
	adc	edx, edx
	mov	DWORD PTR [esp+8], eax
	add	edi, 1
	sar	esi, 31
	sub	eax, ecx
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+4], esi
	sbb	edx, esi
	movzx	esi, BYTE PTR [edi]
	mov	DWORD PTR [esp], ecx
	mov	ebx, esi
	movsx	ebp, bl
	sub	ebp, 48
	cmp	ebp, 9
	jbe	L334
	mov	ebp, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp]
	mov	ebx, DWORD PTR [esp+4]
	test	ebp, ebp
	jne	L324
	mov	eax, ecx
	mov	edx, ebx
	sub	eax, DWORD PTR [esp+8]
	sbb	edx, DWORD PTR [esp+12]
L324:
	add	esp, 28
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
L351:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx]
	mov	edi, edx
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L331
L337:
	add	esp, 28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xor	eax, eax
	xor	edx, edx
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
L328:
	.cfi_restore_state
	movzx	esi, BYTE PTR [edx+1]
	lea	edi, [edx+1]
	xor	ebp, ebp
	mov	eax, esi
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L331
	jmp	L337
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
L364:
	test	ebx, ebx
	je	L353
L365:
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
	js	L357
	jle	L352
	sub	ebx, 1
	lea	eax, [ebp+0+esi]
	sub	ebx, edi
	mov	DWORD PTR [esp+52], eax
	test	ebx, ebx
	jne	L365
L353:
	xor	ebp, ebp
L352:
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
L357:
	.cfi_restore_state
	mov	ebx, edi
	jmp	L364
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
	mov	ebx, DWORD PTR [esp+56]
L381:
	test	ebx, ebx
	je	L367
L382:
	mov	eax, DWORD PTR [esp+68]
	mov	edi, ebx
	sar	edi
	mov	DWORD PTR [esp+8], eax
	mov	edx, edi
	mov	eax, DWORD PTR [esp+48]
	imul	edx, esi
	add	edx, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], edx
	mov	ebp, edx
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	je	L366
	jle	L371
	sub	ebx, 1
	lea	eax, [ebp+0+esi]
	sar	ebx
	mov	DWORD PTR [esp+52], eax
	test	ebx, ebx
	jne	L382
L367:
	xor	ebp, ebp
L366:
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
L371:
	.cfi_restore_state
	mov	ebx, edi
	jmp	L381
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	movzx	edx, WORD PTR [eax]
	cmp	dx, bx
	je	L395
	mov	ecx, ebx
	jmp	L410
	.p2align 5
	.p2align 4,,10
	.p2align 3
L411:
	movzx	edx, WORD PTR [eax+2]
	add	eax, 2
	cmp	dx, cx
	je	L395
L410:
	test	dx, dx
	jne	L411
L395:
	test	dx, dx
	mov	edx, 0
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	cmove	eax, edx
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	_wcscmp
	.def	_wcscmp;	.scl	2;	.type	32;	.endef
_wcscmp:
LFB60:
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
	mov	edi, DWORD PTR [esp+24]
	mov	ebp, DWORD PTR [esp+28]
	movzx	edx, WORD PTR [edi]
	movzx	ecx, WORD PTR [ebp+0]
	test	dx, dx
	setne	bl
	cmp	dx, cx
	sete	al
	test	bl, al
	je	L413
	test	cx, cx
	je	L413
	mov	DWORD PTR [esp], 2
	jmp	L414
	.p2align 6
	.p2align 4,,10
	.p2align 3
L429:
	test	cx, cx
	je	L413
L414:
	mov	eax, DWORD PTR [esp]
	movzx	edx, WORD PTR [edi+eax]
	movzx	ecx, WORD PTR [ebp+0+eax]
	add	eax, 2
	mov	DWORD PTR [esp], eax
	test	dx, dx
	setne	bl
	cmp	dx, cx
	mov	esi, ebx
	sete	bl
	mov	eax, esi
	test	al, bl
	jne	L429
L413:
	mov	eax, -1
	cmp	dx, cx
	jb	L412
	xor	eax, eax
	cmp	cx, dx
	setb	al
L412:
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
L431:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L431
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
	je	L437
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
L436:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L436
	sub	eax, edx
	sar	eax
	ret
	.p2align 4,,10
	.p2align 3
L437:
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
	mov	ebp, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	test	ebp, ebp
	jne	L440
	jmp	L446
	.p2align 4,,10
	.p2align 3
L452:
	test	si, si
	je	L444
	add	edx, 2
	add	eax, 2
	sub	ebp, 1
	je	L446
L440:
	movzx	ecx, WORD PTR [edx]
	movzx	esi, WORD PTR [eax]
	test	cx, cx
	setne	bl
	cmp	cx, si
	sete	cl
	test	bl, cl
	jne	L452
L444:
	movzx	edx, WORD PTR [edx]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jnb	L445
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, -1
	pop	esi
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
	cmp	ax, dx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	setb	al
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
L446:
	.cfi_restore_state
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
	jne	L454
	jmp	L457
	.p2align 4
	.p2align 4,,10
	.p2align 3
L456:
	add	eax, 2
	sub	edx, 1
	je	L457
L454:
	cmp	WORD PTR [eax], cx
	jne	L456
	ret
	.p2align 4,,10
	.p2align 3
L457:
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
	jne	L460
	jmp	L459
	.p2align 5
	.p2align 4,,10
	.p2align 3
L462:
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	je	L465
L460:
	movzx	ebx, WORD PTR [ecx]
	cmp	bx, WORD PTR [edx]
	je	L462
	movzx	eax, WORD PTR [edx]
	cmp	bx, ax
	jb	L469
	cmp	ax, bx
	setb	al
	movzx	eax, al
L459:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L469:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L465:
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
	je	L471
	add	eax, eax
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	call	_memcpy
L471:
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
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	cmp	edx, esi
	je	L477
	mov	ebx, edx
	lea	edi, [ecx+ecx]
	lea	eax, [ecx-1]
	sub	ebx, esi
	cmp	ebx, edi
	jnb	L489
	test	ecx, ecx
	je	L477
	.p2align 4
	.p2align 4
	.p2align 3
L480:
	movzx	ecx, WORD PTR [esi+eax*2]
	mov	WORD PTR [edx+eax*2], cx
	sub	eax, 1
	jnb	L480
L477:
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
	mov	edi, edx
	test	ecx, ecx
	je	L477
	.p2align 3
	.p2align 4
	.p2align 3
L479:
	movsw
	sub	eax, 1
	jnb	L479
	pop	ebx
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
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	_wmemset
	.def	_wmemset;	.scl	2;	.type	32;	.endef
_wmemset:
LFB68:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+8]
	movzx	ecx, WORD PTR [esp+12]
	test	edx, edx
	je	L491
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L492:
	add	edx, 2
	mov	WORD PTR [edx-2], cx
	sub	eax, 1
	jnb	L492
L491:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	_bcopy
	.def	_bcopy;	.scl	2;	.type	32;	.endef
_bcopy:
LFB69:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	mov	esi, DWORD PTR [esp+12]
	mov	edi, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	esi, edi
	jnb	L499
	test	eax, eax
	je	L498
	.p2align 4
	.p2align 4
	.p2align 3
L501:
	movzx	edx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [edi-1+eax], dl
	sub	eax, 1
	jne	L501
L498:
	pop	esi
	.cfi_remember_state
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
	je	L498
	test	eax, eax
	je	L498
	add	eax, esi
	.p2align 3
	.p2align 4
	.p2align 3
L502:
	movsb
	cmp	eax, esi
	jne	L502
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
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
	je	L514
	mov	edi, esi
	xor	esi, esi
L514:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L515
	mov	eax, edx
	xor	edx, edx
L515:
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
	je	L518
	mov	esi, edi
	xor	edi, edi
L518:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L519
	mov	edx, eax
	xor	eax, eax
L519:
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
	jmp	L534
	.p2align 4
	.p2align 4,,10
	.p2align 3
L532:
	cmp	ecx, 32
	je	L536
L534:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	L532
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
L536:
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
	je	L537
	mov	edx, eax
	and	edx, 1
	jne	L537
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L539:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L539
L537:
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
	ja	L547
	fld	DWORD PTR LC3
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L544
	.p2align 4,,10
	.p2align 3
L547:
	fstp	st(0)
L544:
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
	ja	L551
	fld	QWORD PTR LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L548
	.p2align 4,,10
	.p2align 3
L551:
	fstp	st(0)
L548:
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
	ja	L555
	fld	TBYTE PTR LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L552
	.p2align 4,,10
	.p2align 3
L555:
	fstp	st(0)
L552:
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
	jp	L558
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L565
	jne	L565
	jmp	L558
	.p2align 4,,10
	.p2align 3
L573:
	fstp	st(0)
L558:
	ret
	.p2align 4,,10
	.p2align 3
L565:
	fld	DWORD PTR LC8
	test	eax, eax
	jns	L560
	fstp	st(0)
	fld	DWORD PTR LC9
L560:
	test	al, 1
	je	L561
	.p2align 4
	.p2align 3
L562:
	fmul	st(1), st
L561:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L573
	fmul	st, st(0)
	test	al, 1
	jne	L562
L572:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L562
	jmp	L572
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
	jp	L575
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L582
	jne	L582
	jmp	L575
	.p2align 4,,10
	.p2align 3
L591:
	fstp	st(0)
L575:
	ret
	.p2align 4,,10
	.p2align 3
L582:
	test	eax, eax
	js	L589
	fld	DWORD PTR LC8
L577:
	test	al, 1
	je	L578
	.p2align 4
	.p2align 3
L579:
	fmul	st(1), st
L578:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L591
	fmul	st, st(0)
	test	al, 1
	jne	L579
L590:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L579
	jmp	L590
	.p2align 4,,10
	.p2align 3
L589:
	fld	DWORD PTR LC9
	jmp	L577
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
	jp	L593
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L600
	jne	L600
	jmp	L593
	.p2align 4,,10
	.p2align 3
L609:
	fstp	st(0)
L593:
	ret
	.p2align 4,,10
	.p2align 3
L600:
	test	eax, eax
	js	L607
	fld	DWORD PTR LC8
L595:
	test	al, 1
	je	L596
	.p2align 4
	.p2align 3
L597:
	fmul	st(1), st
L596:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L609
	fmul	st, st(0)
	test	al, 1
	jne	L597
L608:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L597
	jmp	L608
	.p2align 4,,10
	.p2align 3
L607:
	fld	DWORD PTR LC9
	jmp	L595
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
	je	L611
	add	ebx, eax
	mov	edx, esi
	.p2align 5
	.p2align 4
	.p2align 3
L612:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], cl
	cmp	ebx, eax
	jne	L612
L611:
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
	je	L619
	.p2align 3
	.p2align 4
	.p2align 3
L620:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L620
L619:
	test	edx, edx
	jne	L621
	jmp	L622
	.p2align 5
	.p2align 4,,10
	.p2align 3
L623:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	L622
L621:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	L623
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
L622:
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
	je	L640
L633:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L635
	ret
	.p2align 4,,10
	.p2align 3
L635:
	add	eax, 1
	cmp	edx, eax
	jne	L633
	ret
	.p2align 4,,10
	.p2align 3
L640:
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
	je	L646
L642:
	mov	eax, esi
	jmp	L645
	.p2align 4
	.p2align 4,,10
	.p2align 3
L644:
	add	eax, 1
	cmp	dl, cl
	je	L643
L645:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L644
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	L642
L646:
	xor	ebx, ebx
L643:
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
L651:
	movsx	ebx, BYTE PTR [eax]
	cmp	esi, ebx
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L651
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
	mov	esi, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	movzx	edi, BYTE PTR [esi]
	mov	ebx, edi
	test	bl, bl
	je	L666
	mov	edx, esi
	.p2align 3
	.p2align 4
	.p2align 3
L656:
	add	edx, 1
	cmp	BYTE PTR [edx], 0
	jne	L656
	mov	ecx, eax
	sub	edx, esi
	je	L654
	lea	ebp, [esi-1+edx]
	mov	ecx, edi
	jmp	L663
	.p2align 4
	.p2align 4,,10
	.p2align 3
L678:
	add	eax, 1
	test	dl, dl
	je	L677
L663:
	movzx	edx, BYTE PTR [eax]
	cmp	dl, cl
	jne	L678
	mov	DWORD PTR [esp+24], esi
	mov	edx, esi
	mov	edi, ecx
	mov	esi, eax
	mov	DWORD PTR [esp+20], eax
	mov	ebx, ecx
	jmp	L658
	.p2align 4,,10
	.p2align 3
L679:
	test	al, al
	setne	cl
	cmp	al, bl
	sete	al
	test	cl, al
	je	L659
	movzx	ebx, BYTE PTR [esi+1]
	add	esi, 1
	add	edx, 1
	test	bl, bl
	je	L659
L658:
	movzx	eax, BYTE PTR [edx]
	cmp	edx, ebp
	jne	L679
L659:
	mov	eax, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ecx, edi
	cmp	BYTE PTR [edx], bl
	je	L666
	add	eax, 1
	jmp	L663
	.p2align 4,,10
	.p2align 3
L677:
	xor	ecx, ecx
L654:
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
L666:
	.cfi_restore_state
	mov	ecx, eax
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
	ja	L690
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L691
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L683
	jmp	L684
	.p2align 4,,10
	.p2align 3
L691:
	fstp	st(1)
	fstp	st(1)
L684:
	ret
	.p2align 4,,10
	.p2align 3
L690:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L684
L683:
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
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	ecx, edx
	test	eax, eax
	je	L692
	cmp	edi, DWORD PTR [esp+32]
	jb	L700
	sub	edi, DWORD PTR [esp+32]
	add	edi, edx
	jc	L700
	movzx	ebp, BYTE PTR [esi]
	jmp	L697
	.p2align 5
	.p2align 4,,10
	.p2align 3
L694:
	cmp	edi, edx
	jb	L700
L697:
	movzx	eax, BYTE PTR [edx]
	mov	ebx, ebp
	mov	ecx, edx
	add	edx, 1
	cmp	al, bl
	jne	L694
	cmp	DWORD PTR [esp+32], 1
	je	L692
	mov	eax, 1
	.p2align 5
	.p2align 4
	.p2align 3
L695:
	movzx	ebx, BYTE PTR [esi+eax]
	cmp	BYTE PTR [ecx+eax], bl
	jne	L694
	add	eax, 1
	cmp	DWORD PTR [esp+32], eax
	jne	L695
L692:
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
L700:
	.cfi_restore_state
	xor	ecx, ecx
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
	je	L706
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp], ebx
	mov	DWORD PTR [esp+4], eax
	call	_memmove
L706:
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
	ja	L735
	fld1
	fxch	st(2)
	xor	edx, edx
	fcomi	st, st(2)
	fstp	st(2)
	jb	L736
	fstp	st(0)
L714:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
L721:
	fmul	DWORD PTR LC9
	add	eax, 1
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L721
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L711
L738:
	fchs
L711:
	ret
	.p2align 4,,10
	.p2align 3
L736:
	fld	DWORD PTR LC9
	fcomip	st, st(2)
	jbe	L739
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L727
	jne	L727
	jmp	L717
	.p2align 4,,10
	.p2align 3
L739:
	fstp	st(0)
	jmp	L717
	.p2align 4,,10
	.p2align 3
L740:
	fstp	st(0)
L717:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
L735:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomip	st, st(2)
	jb	L737
	fstp	st(1)
	mov	edx, 1
	jmp	L714
	.p2align 4,,10
	.p2align 3
L737:
	fld	DWORD PTR LC11
	fxch	st(2)
	fcomi	st, st(2)
	fstp	st(2)
	jbe	L740
	fstp	st(1)
	mov	edx, 1
L715:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L723:
	fadd	st, st(0)
	fld	DWORD PTR LC9
	sub	eax, 1
	fcomip	st, st(1)
	ja	L723
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	jne	L738
	ret
L727:
	xor	edx, edx
	jmp	L715
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
	je	L741
	.p2align 6
	.p2align 4
	.p2align 3
L743:
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
	jne	L743
L741:
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
	jb	L748
	jmp	L749
	.p2align 4,,10
	.p2align 3
L751:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L750
	test	edx, edx
	je	L750
L748:
	test	eax, eax
	jns	L751
L749:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L754:
	cmp	ecx, eax
	jb	L753
	sub	ecx, eax
	or	ebx, edx
L753:
	shr	eax
	shr	edx
	jne	L754
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
L750:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	L749
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
	je	L770
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
L770:
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
	je	L775
	test	edi, edi
	je	L777
	bsr	esi, edi
	xor	esi, 31
L778:
	lea	ebp, [esi-1]
L775:
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
L777:
	.cfi_restore_state
	bsr	esi, esi
	xor	esi, 31
	add	esi, 32
	jmp	L778
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
	je	L782
	.p2align 5
	.p2align 4
	.p2align 3
L784:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L784
L782:
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
	mov	edi, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, edi
	mov	ebp, edi
	shr	esi, 3
	and	ebp, -8
	cmp	edx, ebx
	jb	L789
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jnb	L804
L789:
	test	esi, esi
	je	L792
	mov	DWORD PTR [esp+4], ebp
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*8]
	mov	DWORD PTR [esp+40], edi
	.p2align 5
	.p2align 4
	.p2align 3
L793:
	mov	edi, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+4]
	add	eax, 8
	add	ecx, 8
	mov	DWORD PTR [ecx-8], edi
	mov	DWORD PTR [ecx-4], ebp
	cmp	eax, esi
	jne	L793
	mov	ebp, DWORD PTR [esp+4]
	mov	edi, DWORD PTR [esp+40]
L792:
	cmp	ebp, edi
	jnb	L788
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L794:
	movzx	ecx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	L794
L788:
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
L804:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	L788
	.p2align 4
	.p2align 4
	.p2align 3
L790:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	jnb	L790
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
	mov	edi, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, edi
	shr	ecx
	cmp	esi, ebx
	jb	L806
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jnb	L821
L806:
	test	ecx, ecx
	je	L809
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 5
	.p2align 4
	.p2align 3
L810:
	movzx	ecx, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], cx
	cmp	eax, ebp
	jne	L810
L809:
	test	edi, 1
	je	L805
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
L805:
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
L821:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	L805
	.p2align 4
	.p2align 4
	.p2align 3
L807:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	L807
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
	mov	edi, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, edi
	mov	ebp, edi
	shr	esi, 2
	and	ebp, -4
	cmp	edx, ebx
	jb	L823
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jnb	L838
L823:
	test	esi, esi
	je	L826
	mov	DWORD PTR [esp+20], edx
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*4]
	.p2align 4
	.p2align 4
	.p2align 3
L827:
	mov	edx, DWORD PTR [eax]
	add	eax, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], edx
	cmp	eax, esi
	jne	L827
	mov	edx, DWORD PTR [esp+20]
L826:
	cmp	ebp, edi
	jnb	L822
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L828:
	movzx	ecx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	L828
L822:
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
L838:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	L822
	.p2align 4
	.p2align 4
	.p2align 3
L824:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	jnb	L824
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
	jns	L845
	fadd	DWORD PTR LC13
L845:
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
	jns	L848
	fadd	DWORD PTR LC13
L848:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzx	ebx, WORD PTR [esp+8]
	xor	eax, eax
	mov	ecx, 15
	.p2align 5
	.p2align 4
	.p2align 3
L853:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	L851
	add	eax, 1
	cmp	eax, 16
	jne	L853
L851:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	___ctzhi2
	.def	___ctzhi2;	.scl	2;	.type	32;	.endef
___ctzhi2:
LFB117:
	.cfi_startproc
	movzx	edx, WORD PTR [esp+4]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L858:
	bt	edx, eax
	jc	L856
	add	eax, 1
	cmp	eax, 16
	jne	L858
L856:
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
	jnb	L868
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
L868:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzx	ebx, WORD PTR [esp+8]
	xor	eax, eax
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L870:
	mov	edx, ebx
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	eax, edx
	cmp	ecx, 16
	jne	L870
	and	eax, 1
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE119:
	.p2align 4
	.globl	___popcounthi2
	.def	___popcounthi2;	.scl	2;	.type	32;	.endef
___popcounthi2:
LFB120:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzx	ebx, WORD PTR [esp+8]
	xor	edx, edx
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
L874:
	mov	eax, ebx
	sar	eax, cl
	add	ecx, 1
	and	eax, 1
	add	edx, eax
	cmp	ecx, 16
	jne	L874
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
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
	je	L877
	.p2align 5
	.p2align 4
	.p2align 3
L879:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L879
L877:
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
	je	L883
	test	edx, edx
	je	L883
	.p2align 5
	.p2align 4
	.p2align 3
L885:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	L885
L883:
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
	jb	L892
	jmp	L893
	.p2align 4,,10
	.p2align 3
L895:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L894
	test	edx, edx
	je	L894
L892:
	test	eax, eax
	jns	L895
L893:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L898:
	cmp	ecx, eax
	jb	L897
	sub	ecx, eax
	or	ebx, edx
L897:
	shr	eax
	shr	edx
	jne	L898
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
L894:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	L893
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
	ja	L917
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L914
	.p2align 4,,10
	.p2align 3
L917:
	fstp	st(0)
	fstp	st(0)
L914:
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
	ja	L921
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L918
	.p2align 4,,10
	.p2align 3
L921:
	fstp	st(0)
	fstp	st(0)
L918:
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
	js	L934
	je	L929
	xor	edi, edi
L926:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L928:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, DWORD PTR [esp+20]
	sal	DWORD PTR [esp+20]
	add	esi, eax
	sar	edx
	setne	al
	cmp	bl, 31
	mov	ebp, eax
	setbe	al
	add	ebx, 1
	mov	ecx, ebp
	test	cl, al
	jne	L928
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
L934:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L926
	.p2align 4,,10
	.p2align 3
L929:
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
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	eax, eax
	jns	L936
	neg	eax
	mov	esi, 1
L936:
	test	edx, edx
	jns	L937
	neg	edx
	xor	esi, 1
L937:
	mov	ebx, eax
	mov	ecx, 1
	cmp	edx, eax
	jb	L938
	jmp	L939
	.p2align 4
	.p2align 4,,10
	.p2align 3
L959:
	test	ecx, ecx
	je	L956
L938:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jb	L959
	test	ecx, ecx
	je	L956
L939:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L944:
	cmp	ebx, edx
	jb	L943
	sub	ebx, edx
	or	eax, ecx
L943:
	shr	edx
	shr	ecx
	jne	L944
L940:
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
L956:
	.cfi_restore_state
	xor	eax, eax
	jmp	L940
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
	jns	L961
	neg	ebx
	mov	esi, 1
L961:
	mov	edx, eax
	mov	ecx, 1
	neg	edx
	cmovs	edx, eax
	mov	eax, ebx
	cmp	edx, ebx
	jb	L962
	jmp	L968
	.p2align 4
	.p2align 4,,10
	.p2align 3
L983:
	test	ecx, ecx
	je	L980
L962:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, ebx
	jb	L983
	test	ecx, ecx
	je	L980
	.p2align 4
	.p2align 4
	.p2align 3
L968:
	mov	ebx, eax
	sub	ebx, edx
	cmp	eax, edx
	cmovnb	eax, ebx
	shr	edx
	shr	ecx
	jne	L968
L964:
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
L980:
	.cfi_restore_state
	mov	eax, ebx
	jmp	L964
	.cfi_endproc
LFE130:
	.p2align 4
	.globl	___udivmodhi4
	.def	___udivmodhi4;	.scl	2;	.type	32;	.endef
___udivmodhi4:
LFB131:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	mov	edx, 1
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	ecx, ebx
	mov	eax, esi
	cmp	si, bx
	jb	L985
	jmp	L986
	.p2align 4,,10
	.p2align 3
L988:
	add	eax, eax
	add	edx, edx
	cmp	ax, cx
	jnb	L987
	test	dx, dx
	je	L987
L985:
	test	ax, ax
	jns	L988
L986:
	xor	ebx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
L991:
	cmp	cx, ax
	jb	L990
	sub	ecx, eax
	or	ebx, edx
L990:
	shr	ax
	shr	dx
	jne	L991
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
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
L987:
	.cfi_restore_state
	xor	ebx, ebx
	test	dx, dx
	jne	L986
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
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
	jb	L1008
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1011:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L1010
	test	edx, edx
	je	L1010
L1008:
	test	eax, eax
	jns	L1011
L1009:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L1014:
	cmp	ecx, eax
	jb	L1013
	sub	ecx, eax
	or	ebx, edx
L1013:
	shr	eax
	shr	edx
	jne	L1014
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
L1010:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	L1009
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
	je	L1031
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
L1031:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1034
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
L1034:
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
	je	L1037
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
L1037:
	.cfi_restore_state
	test	ebx, ebx
	je	L1040
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
L1040:
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
	jl	L1046
	mov	eax, 2
	jg	L1046
	xor	eax, eax
	cmp	edx, ecx
	jb	L1046
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1046:
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
	jl	L1053
	mov	eax, 1
	jg	L1053
	mov	eax, -1
	cmp	edx, ecx
	jb	L1053
	xor	eax, eax
	cmp	ecx, edx
	setb	al
L1053:
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
	je	L1062
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
L1062:
	.cfi_restore_state
	test	ebx, ebx
	je	L1065
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
L1065:
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
	je	L1078
	jmp	L1080
	.p2align 4,,10
	.p2align 3
L1085:
	fxch	st(1)
	jmp	L1080
	.p2align 4,,10
	.p2align 3
L1086:
	fxch	st(1)
L1080:
	fmul	st, st(1)
L1078:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1079
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1085
L1084:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1086
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1079:
	fstp	st(1)
	test	ecx, ecx
	jns	L1077
	fdivr	DWORD PTR LC12
L1077:
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
	je	L1088
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1095:
	fxch	st(1)
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1096:
	fxch	st(1)
L1090:
	fmul	st, st(1)
L1088:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1089
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	L1095
L1094:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	L1096
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1089:
	fstp	st(1)
	test	ecx, ecx
	jns	L1087
	fdivr	DWORD PTR LC12
L1087:
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
	jb	L1097
	mov	eax, 2
	cmp	ecx, edx
	jb	L1097
	xor	eax, eax
	cmp	ebx, esi
	jb	L1097
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1097:
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
	jb	L1104
	mov	eax, 1
	cmp	ecx, edx
	jb	L1104
	mov	eax, -1
	cmp	ebx, esi
	jb	L1104
	xor	eax, eax
	cmp	esi, ebx
	setb	al
L1104:
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
