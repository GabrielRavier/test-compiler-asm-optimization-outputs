	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	_memmove
	.def	_memmove;	.scl	2;	.type	32;	.endef
_memmove:
LFB2:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, ebx
	jnb	L2
	test	eax, eax
	je	L3
	.p2align 4
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
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L2:
	.cfi_restore_state
	cmp	ebx, edx
	je	L3
	test	eax, eax
	je	L3
	lea	esi, [eax+ebx]
	mov	ecx, ebx
	.p2align 5
L5:
	add	edx, 1
	add	ecx, 1
	movzx	eax, BYTE PTR [edx-1]
	mov	BYTE PTR [ecx-1], al
	cmp	esi, ecx
	jne	L5
	jmp	L3
	.cfi_endproc
LFE2:
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
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	movzx	esi, BYTE PTR [esp+20]
	test	ecx, ecx
	je	L18
	.p2align 5
L10:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	movzx	edx, dl
	cmp	edx, esi
	je	L19
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	jne	L10
	mov	eax, 0
	jmp	L9
L18:
	mov	eax, 0
	jmp	L9
L19:
	add	eax, 1
L9:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.globl	_memchr
	.def	_memchr;	.scl	2;	.type	32;	.endef
_memchr:
LFB4:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+16]
	movzx	ebx, BYTE PTR [esp+12]
	test	edx, edx
	je	L27
	.p2align 4
L21:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	je	L20
	add	eax, 1
	sub	edx, 1
	jne	L21
	mov	eax, 0
L20:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L27:
	.cfi_restore_state
	mov	eax, 0
	jmp	L20
	.cfi_endproc
LFE4:
	.globl	_memcmp
	.def	_memcmp;	.scl	2;	.type	32;	.endef
_memcmp:
LFB5:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	L28
	.p2align 5
L29:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	jne	L37
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	jne	L29
	mov	eax, 0
	jmp	L28
L37:
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L28:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.globl	_memcpy
	.def	_memcpy;	.scl	2;	.type	32;	.endef
_memcpy:
LFB6:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	esi, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	ebx, ebx
	je	L39
	add	ebx, esi
	mov	eax, esi
	.p2align 5
L40:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx-1]
	mov	BYTE PTR [eax-1], cl
	cmp	ebx, eax
	jne	L40
L39:
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE6:
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
	mov	ecx, DWORD PTR [esp+12]
	movzx	esi, BYTE PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	lea	eax, [ecx-1+eax]
	sub	ecx, 1
	.p2align 4
L44:
	cmp	eax, ecx
	je	L48
	mov	ebx, eax
	movzx	edx, BYTE PTR [eax]
	sub	eax, 1
	cmp	edx, esi
	jne	L44
	jmp	L43
L48:
	mov	ebx, 0
L43:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.globl	_memset
	.def	_memset;	.scl	2;	.type	32;	.endef
_memset:
LFB8:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	edx, edx
	je	L50
	add	edx, ebx
	mov	eax, ebx
	.p2align 4
L51:
	mov	BYTE PTR [eax], cl
	add	eax, 1
	cmp	edx, eax
	jne	L51
L50:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.globl	_stpcpy
	.def	_stpcpy;	.scl	2;	.type	32;	.endef
_stpcpy:
LFB9:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	je	L55
	.p2align 4
L56:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L56
L55:
	ret
	.cfi_endproc
LFE9:
	.globl	_strchrnul
	.def	_strchrnul;	.scl	2;	.type	32;	.endef
_strchrnul:
LFB10:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	L64
	.p2align 5
L59:
	movzx	edx, dl
	cmp	edx, ecx
	je	L58
	add	eax, 1
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	L59
L58:
	ret
L64:
	ret
	.cfi_endproc
LFE10:
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
	.p2align 5
L67:
	movzx	edx, BYTE PTR [eax]
	movsx	ecx, dl
	cmp	ecx, ebx
	je	L66
	add	eax, 1
	test	dl, dl
	jne	L67
	mov	eax, 0
L66:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE11:
	.globl	_strcmp
	.def	_strcmp;	.scl	2;	.type	32;	.endef
_strcmp:
LFB12:
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
	movzx	eax, BYTE PTR [edi]
	movzx	edx, BYTE PTR [ebp+0]
	mov	BYTE PTR [esp+3], dl
	test	al, al
	setne	bl
	cmp	al, dl
	sete	dl
	test	bl, dl
	je	L71
	mov	edx, 1
	.p2align 6
L72:
	movzx	eax, BYTE PTR [edi+edx]
	movzx	ecx, BYTE PTR [ebp+0+edx]
	mov	BYTE PTR [esp+3], cl
	test	al, al
	setne	bl
	mov	esi, ebx
	cmp	al, cl
	sete	bl
	add	edx, 1
	mov	ecx, esi
	test	cl, bl
	jne	L72
L71:
	movzx	eax, al
	movzx	ecx, BYTE PTR [esp+3]
	sub	eax, ecx
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
LFE12:
	.globl	_strlen
	.def	_strlen;	.scl	2;	.type	32;	.endef
_strlen:
LFB13:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	BYTE PTR [edx], 0
	je	L78
	mov	eax, edx
	.p2align 3
L77:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L77
L76:
	sub	eax, edx
	ret
L78:
	mov	eax, edx
	jmp	L76
	.cfi_endproc
LFE13:
	.globl	_strncmp
	.def	_strncmp;	.scl	2;	.type	32;	.endef
_strncmp:
LFB14:
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
	mov	ecx, DWORD PTR [esp+28]
	mov	eax, 0
	test	ecx, ecx
	je	L80
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L86
	mov	edx, esi
	lea	edi, [esi-1+ecx]
	.p2align 6
L83:
	movzx	ecx, BYTE PTR [edx]
	cmp	edi, edx
	setne	bl
	mov	esi, ebx
	test	cl, cl
	setne	bl
	mov	ebp, ebx
	cmp	cl, al
	sete	cl
	and	ecx, ebp
	mov	ebx, esi
	test	cl, bl
	je	L82
	add	DWORD PTR [esp+20], 1
	add	edx, 1
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L83
L82:
	movzx	eax, al
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L80:
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
L86:
	.cfi_restore_state
	mov	edx, esi
	jmp	L82
	.cfi_endproc
LFE14:
	.globl	_swab
	.def	_swab;	.scl	2;	.type	32;	.endef
_swab:
LFB15:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	cmp	ebx, 1
	jle	L88
	and	ebx, -2
	add	ebx, eax
	.p2align 5
L90:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
	cmp	eax, ebx
	jne	L90
L88:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE15:
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
	.globl	_isascii
	.def	_isascii;	.scl	2;	.type	32;	.endef
_isascii:
LFB17:
	.cfi_startproc
	cmp	DWORD PTR [esp+4], 127
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
LFE17:
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
	.globl	_isspace
	.def	_isspace;	.scl	2;	.type	32;	.endef
_isspace:
LFB24:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	edx, 32
	sete	al
	sub	edx, 9
	cmp	edx, 4
	setbe	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
LFE24:
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
	.globl	_iswcntrl
	.def	_iswcntrl;	.scl	2;	.type	32;	.endef
_iswcntrl:
LFB26:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	cmp	ax, 31
	setbe	dl
	movzx	eax, ax
	lea	ecx, [eax-127]
	cmp	ecx, 32
	setbe	bl
	mov	ecx, 1
	or	dl, bl
	jne	L103
	lea	edx, [eax-8232]
	cmp	edx, 1
	jbe	L103
	sub	eax, 65529
	cmp	eax, 2
	setbe	cl
	movzx	ecx, cl
L103:
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE26:
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
	.globl	_iswprint
	.def	_iswprint;	.scl	2;	.type	32;	.endef
_iswprint:
LFB28:
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
	mov	eax, DWORD PTR [esp+16]
	cmp	ax, 254
	jbe	L116
	cmp	ax, 8231
	setbe	bl
	movzx	edi, ax
	lea	edx, [edi-8234]
	cmp	edx, 47061
	setbe	dl
	mov	esi, edx
	mov	edx, 1
	mov	ecx, esi
	or	bl, cl
	jne	L109
	lea	ebx, [edi-57344]
	cmp	ebx, 8184
	jbe	L109
	lea	ecx, [edi-65532]
	mov	edx, 0
	cmp	ecx, 1048579
	ja	L109
	not	eax
	test	ax, -2
	setne	dl
	movzx	edx, dl
	jmp	L109
L116:
	lea	eax, [eax+1]
	and	eax, 127
	cmp	eax, 32
	setg	dl
	movzx	edx, dl
L109:
	mov	eax, edx
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
LFE28:
	.globl	_iswxdigit
	.def	_iswxdigit;	.scl	2;	.type	32;	.endef
_iswxdigit:
LFB29:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, ax
	sub	edx, 48
	mov	ecx, 1
	cmp	edx, 9
	jbe	L117
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	setbe	cl
	movzx	ecx, cl
L117:
	mov	eax, ecx
	ret
	.cfi_endproc
LFE29:
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
	.globl	_fdim
	.def	_fdim;	.scl	2;	.type	32;	.endef
_fdim:
LFB31:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L129
	fxch	st(1)
	fucomi	st, st(0)
	jp	L125
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L128
	fsubrp	st(1), st
	ret
L125:
	fstp	st(1)
	ret
L128:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L121
L129:
	fstp	st(1)
L121:
	ret
	.cfi_endproc
LFE31:
	.globl	_fdimf
	.def	_fdimf;	.scl	2;	.type	32;	.endef
_fdimf:
LFB32:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L138
	fxch	st(1)
	fucomi	st, st(0)
	jp	L134
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L137
	fsubrp	st(1), st
	ret
L134:
	fstp	st(1)
	ret
L137:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L130
L138:
	fstp	st(1)
L130:
	ret
	.cfi_endproc
LFE32:
	.globl	_fmax
	.def	_fmax;	.scl	2;	.type	32;	.endef
_fmax:
LFB33:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L145
	fxch	st(1)
	fucomi	st, st(0)
	jp	L143
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	L141
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
L141:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
L143:
	fstp	st(0)
	jmp	L139
L145:
	fstp	st(0)
L139:
	ret
	.cfi_endproc
LFE33:
	.globl	_fmaxf
	.def	_fmaxf;	.scl	2;	.type	32;	.endef
_fmaxf:
LFB34:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L152
	fxch	st(1)
	fucomi	st, st(0)
	jp	L150
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	L148
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
L148:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
L150:
	fstp	st(0)
	jmp	L146
L152:
	fstp	st(0)
L146:
	ret
	.cfi_endproc
LFE34:
	.globl	_fmaxl
	.def	_fmaxl;	.scl	2;	.type	32;	.endef
_fmaxl:
LFB35:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucomi	st, st(0)
	jp	L156
	fxch	st(1)
	fucomi	st, st(0)
	jp	L159
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	L155
	test	edx, edx
	je	L160
	fstp	st(1)
	ret
L155:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
L156:
	fstp	st(0)
	jmp	L153
L159:
	fstp	st(0)
	jmp	L153
L160:
	fstp	st(0)
L153:
	ret
	.cfi_endproc
LFE35:
	.globl	_fmin
	.def	_fmin;	.scl	2;	.type	32;	.endef
_fmin:
LFB36:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L164
	fxch	st(1)
	fucomi	st, st(0)
	jp	L167
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	L163
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
L163:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
L164:
	fstp	st(0)
	jmp	L161
L167:
	fstp	st(0)
L161:
	ret
	.cfi_endproc
LFE36:
	.globl	_fminf
	.def	_fminf;	.scl	2;	.type	32;	.endef
_fminf:
LFB37:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucomi	st, st(0)
	jp	L171
	fxch	st(1)
	fucomi	st, st(0)
	jp	L174
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	L170
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
L170:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
L171:
	fstp	st(0)
	jmp	L168
L174:
	fstp	st(0)
L168:
	ret
	.cfi_endproc
LFE37:
	.globl	_fminl
	.def	_fminl;	.scl	2;	.type	32;	.endef
_fminl:
LFB38:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucomi	st, st(0)
	jp	L181
	fxch	st(1)
	fucomi	st, st(0)
	jp	L179
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	L177
	test	edx, edx
	je	L182
	fstp	st(0)
	ret
L177:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
L179:
	fstp	st(0)
	jmp	L175
L181:
	fstp	st(0)
	jmp	L175
L182:
	fstp	st(1)
L175:
	ret
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
	.align 32
_digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.text
	.globl	_l64a
	.def	_l64a;	.scl	2;	.type	32;	.endef
_l64a:
LFB39:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	test	edx, edx
	je	L186
	mov	edx, OFFSET FLAT:_s.0
	.p2align 5
L185:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
	jne	L185
L184:
	mov	BYTE PTR [edx], 0
	mov	eax, OFFSET FLAT:_s.0
	ret
L186:
	mov	edx, OFFSET FLAT:_s.0
	jmp	L184
	.cfi_endproc
LFE39:
.lcomm _seed,8,8
	.globl	_srand
	.def	_srand;	.scl	2;	.type	32;	.endef
_srand:
LFB40:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 1
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, 0
	ret
	.cfi_endproc
LFE40:
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
	mov	DWORD PTR _seed+4, edx
	mov	eax, edx
	shr	eax
	ret
	.cfi_endproc
LFE41:
	.globl	_insque
	.def	_insque;	.scl	2;	.type	32;	.endef
_insque:
LFB42:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	test	edx, edx
	je	L193
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L190
	mov	DWORD PTR [edx+4], eax
L190:
	ret
L193:
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	ret
	.cfi_endproc
LFE42:
	.globl	_remque
	.def	_remque;	.scl	2;	.type	32;	.endef
_remque:
LFB43:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L195
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L195:
	mov	edx, DWORD PTR [eax+4]
	test	edx, edx
	je	L194
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
L194:
	ret
	.cfi_endproc
LFE43:
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
	mov	ebp, DWORD PTR [esp+64]
	mov	edi, DWORD PTR [esp+76]
	mov	eax, DWORD PTR [esp+72]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L198
	mov	ebx, DWORD PTR [esp+68]
	mov	esi, 0
	mov	DWORD PTR [esp+24], edx
L200:
	mov	DWORD PTR [esp+28], ebx
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], ebp
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	je	L202
	add	esi, 1
	add	ebx, edi
	cmp	DWORD PTR [esp+24], esi
	jne	L200
	mov	edx, DWORD PTR [esp+24]
L198:
	lea	eax, [edx+1]
	mov	ecx, DWORD PTR [esp+72]
	mov	DWORD PTR [ecx], eax
	imul	edx, edi
	mov	eax, edx
	add	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+8], edi
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_memcpy
	mov	ecx, eax
L197:
	mov	eax, ecx
	add	esp, 44
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
L202:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+28]
	jmp	L197
	.cfi_endproc
LFE44:
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
	sub	esp, 44
	.cfi_def_cfa_offset 64
	mov	ebp, DWORD PTR [esp+80]
	mov	eax, DWORD PTR [esp+72]
	mov	edi, DWORD PTR [eax]
	test	edi, edi
	je	L207
	mov	ebx, DWORD PTR [esp+68]
	mov	esi, 0
L206:
	mov	DWORD PTR [esp+28], ebx
	mov	DWORD PTR [esp+4], ebx
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], eax
	call	ebp
	test	eax, eax
	je	L209
	add	esi, 1
	add	ebx, DWORD PTR [esp+76]
	cmp	edi, esi
	jne	L206
	mov	ecx, 0
	jmp	L204
L207:
	mov	ecx, 0
	jmp	L204
L209:
	mov	ecx, DWORD PTR [esp+28]
L204:
	mov	eax, ecx
	add	esp, 44
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
LFE45:
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
	.globl	_atoi
	.def	_atoi;	.scl	2;	.type	32;	.endef
_atoi:
LFB47:
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
	sub	esp, 4
	.cfi_def_cfa_offset 20
	mov	ebx, DWORD PTR [esp+20]
	jmp	L213
L214:
	add	ebx, 1
L213:
	movzx	esi, BYTE PTR [ebx]
	mov	eax, esi
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L214
	mov	ecx, esi
	cmp	cl, 43
	je	L220
	mov	edi, eax
	cmp	cl, 45
	jne	L216
	mov	edi, 1
L215:
	add	ebx, 1
L216:
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	ja	L218
	.p2align 5
L217:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	lea	edx, [ecx-48]
	movsx	edx, dl
	sub	eax, edx
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	jbe	L217
L218:
	mov	edx, eax
	neg	edx
	test	edi, edi
	cmove	eax, edx
	add	esp, 4
	.cfi_remember_state
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
L220:
	.cfi_restore_state
	mov	edi, eax
	jmp	L215
	.cfi_endproc
LFE47:
	.globl	_atol
	.def	_atol;	.scl	2;	.type	32;	.endef
_atol:
LFB48:
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
	sub	esp, 4
	.cfi_def_cfa_offset 20
	mov	ebx, DWORD PTR [esp+20]
	jmp	L226
L227:
	add	ebx, 1
L226:
	movzx	esi, BYTE PTR [ebx]
	mov	eax, esi
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L227
	mov	ecx, esi
	cmp	cl, 43
	je	L233
	mov	edi, eax
	cmp	cl, 45
	jne	L229
	mov	edi, 1
L228:
	add	ebx, 1
L229:
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	ja	L231
	.p2align 5
L230:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	lea	edx, [ecx-48]
	movsx	edx, dl
	sub	eax, edx
	movzx	ecx, BYTE PTR [ebx]
	movsx	edx, cl
	sub	edx, 48
	cmp	edx, 9
	jbe	L230
L231:
	mov	edx, eax
	neg	edx
	test	edi, edi
	cmove	eax, edx
	add	esp, 4
	.cfi_remember_state
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
L233:
	.cfi_restore_state
	mov	edi, eax
	jmp	L228
	.cfi_endproc
LFE48:
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
	sub	esp, 8
	.cfi_def_cfa_offset 28
	mov	ebx, DWORD PTR [esp+28]
	jmp	L239
L240:
	add	ebx, 1
L239:
	movzx	esi, BYTE PTR [ebx]
	mov	eax, esi
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	mov	ebp, eax
	test	eax, eax
	jne	L240
	mov	eax, esi
	cmp	al, 43
	je	L241
	cmp	al, 45
	jne	L242
	mov	ebp, 1
L241:
	add	ebx, 1
L242:
	movzx	ecx, BYTE PTR [ebx]
	movsx	esi, cl
	sub	esi, 48
	mov	eax, 0
	mov	edx, 0
	cmp	esi, 9
	ja	L244
	.p2align 6
L243:
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, 2
	sal	esi, 2
	add	eax, esi
	adc	edx, edi
	add	eax, eax
	adc	edx, edx
	add	ebx, 1
	sub	ecx, 48
	movsx	esi, cl
	mov	edi, esi
	sar	edi, 31
	sub	eax, esi
	sbb	edx, edi
	movzx	ecx, BYTE PTR [ebx]
	movsx	esi, cl
	sub	esi, 48
	cmp	esi, 9
	jbe	L243
L244:
	test	ebp, ebp
	jne	L238
	neg	eax
	adc	edx, 0
	neg	edx
L238:
	add	esp, 8
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
LFE49:
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
	mov	ebp, DWORD PTR [esp+60]
	test	ebx, ebx
	jne	L253
	mov	esi, 0
	jmp	L250
L255:
	mov	ebx, edi
L252:
	test	ebx, ebx
	je	L259
L253:
	mov	edi, ebx
	shr	edi
	mov	esi, edi
	imul	esi, ebp
	add	esi, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], esi
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	js	L255
	jle	L250
	lea	eax, [esi+ebp]
	mov	DWORD PTR [esp+52], eax
	sub	ebx, 1
	sub	ebx, edi
	jmp	L252
L259:
	mov	esi, 0
L250:
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
LFE50:
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
	mov	ebp, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [esp+60]
	mov	esi, eax
	test	eax, eax
	jne	L263
	mov	ebx, 0
	jmp	L260
L262:
	sar	esi
	je	L268
L263:
	mov	ebx, esi
	sar	ebx
	imul	ebx, edi
	add	ebx, ebp
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], ebx
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	je	L260
	jle	L262
	lea	ebp, [ebx+edi]
	sub	esi, 1
	jmp	L262
L268:
	mov	ebx, 0
L260:
	mov	eax, ebx
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
LFE51:
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
	cmovs	eax, ecx
	cmovs	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE53:
	.globl	_imaxdiv
	.def	_imaxdiv;	.scl	2;	.type	32;	.endef
_imaxdiv:
LFB54:
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
	sub	esp, 32
	.cfi_def_cfa_offset 48
	mov	ebx, DWORD PTR [esp+48]
	mov	eax, DWORD PTR [esp+52]
	mov	edx, DWORD PTR [esp+56]
	mov	esi, DWORD PTR [esp+60]
	mov	edi, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+12], edi
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divdi3
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+12], edi
	mov	esi, DWORD PTR [esp+16]
	mov	edi, DWORD PTR [esp+20]
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	call	___moddi3
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 32
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
LFE54:
	.globl	_labs
	.def	_labs;	.scl	2;	.type	32;	.endef
_labs:
LFB55:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	ret
	.cfi_endproc
LFE55:
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
	.globl	_llabs
	.def	_llabs;	.scl	2;	.type	32;	.endef
_llabs:
LFB57:
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
	cmovs	eax, ecx
	cmovs	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE57:
	.globl	_lldiv
	.def	_lldiv;	.scl	2;	.type	32;	.endef
_lldiv:
LFB58:
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
	sub	esp, 32
	.cfi_def_cfa_offset 48
	mov	ebx, DWORD PTR [esp+48]
	mov	eax, DWORD PTR [esp+52]
	mov	edx, DWORD PTR [esp+56]
	mov	esi, DWORD PTR [esp+60]
	mov	edi, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+12], edi
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divdi3
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+12], edi
	mov	esi, DWORD PTR [esp+16]
	mov	edi, DWORD PTR [esp+20]
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	call	___moddi3
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 32
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
LFE58:
	.globl	_wcschr
	.def	_wcschr;	.scl	2;	.type	32;	.endef
_wcschr:
LFB59:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+16]
	mov	esi, ecx
	movzx	edx, WORD PTR [eax]
	cmp	cx, dx
	setne	bl
	test	dx, dx
	setne	cl
	test	bl, cl
	je	L281
	.p2align 5
L282:
	add	eax, 2
	movzx	edx, WORD PTR [eax]
	cmp	dx, si
	setne	bl
	test	dx, dx
	setne	cl
	test	bl, cl
	jne	L282
L281:
	test	dx, dx
	mov	edx, 0
	cmove	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE59:
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
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	movzx	ecx, WORD PTR [esi]
	movzx	ebx, WORD PTR [edi]
	test	cx, cx
	setne	al
	cmp	cx, bx
	sete	dl
	and	eax, edx
	test	bx, bx
	setne	dl
	test	al, dl
	je	L287
	mov	DWORD PTR [esp], 2
	.p2align 6
L288:
	mov	eax, DWORD PTR [esp]
	movzx	ecx, WORD PTR [esi+eax]
	movzx	ebx, WORD PTR [edi+eax]
	test	cx, cx
	setne	dl
	cmp	cx, bx
	sete	al
	mov	ebp, eax
	and	edx, ebp
	test	bx, bx
	setne	al
	add	DWORD PTR [esp], 2
	test	dl, al
	jne	L288
L287:
	mov	eax, -1
	cmp	cx, bx
	jb	L286
	cmp	bx, cx
	setb	al
	movzx	eax, al
L286:
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
	.globl	_wcscpy
	.def	_wcscpy;	.scl	2;	.type	32;	.endef
_wcscpy:
LFB61:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, 0
	.p2align 4
L294:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L294
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE61:
	.globl	_wcslen
	.def	_wcslen;	.scl	2;	.type	32;	.endef
_wcslen:
LFB62:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	WORD PTR [edx], 0
	je	L300
	mov	eax, edx
	.p2align 4
L299:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L299
L298:
	sub	eax, edx
	sar	eax
	ret
L300:
	mov	eax, edx
	jmp	L298
	.cfi_endproc
LFE62:
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
	mov	ecx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	eax, 0
	test	edi, edi
	je	L302
	.p2align 6
L303:
	movzx	esi, WORD PTR [ecx]
	movzx	ebx, WORD PTR [ebp+0]
	test	si, si
	setne	al
	cmp	si, bx
	sete	dl
	mov	esi, edx
	and	eax, esi
	test	bx, bx
	setne	bl
	test	al, bl
	je	L312
	add	ecx, 2
	add	ebp, 2
	sub	edi, 1
	jne	L303
	mov	eax, 0
	jmp	L302
L307:
	cmp	ax, cx
	setb	al
	movzx	eax, al
L302:
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
L312:
	.cfi_restore_state
	movzx	ecx, WORD PTR [ecx]
	movzx	eax, WORD PTR [ebp+0]
	cmp	cx, ax
	jnb	L307
	mov	eax, -1
	jmp	L302
	.cfi_endproc
LFE63:
	.globl	_wmemchr
	.def	_wmemchr;	.scl	2;	.type	32;	.endef
_wmemchr:
LFB64:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+12]
	movzx	ecx, WORD PTR [esp+8]
	test	edx, edx
	je	L319
	.p2align 4
L314:
	cmp	WORD PTR [eax], cx
	je	L320
	add	eax, 2
	sub	edx, 1
	jne	L314
	mov	eax, 0
	ret
L319:
	mov	eax, 0
	ret
L320:
	ret
	.cfi_endproc
LFE64:
	.globl	_wmemcmp
	.def	_wmemcmp;	.scl	2;	.type	32;	.endef
_wmemcmp:
LFB65:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	L321
	.p2align 5
L322:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [ecx], bx
	jne	L331
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	jne	L322
	mov	eax, 0
L321:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L326:
	.cfi_restore_state
	cmp	ax, cx
	setb	al
	movzx	eax, al
	jmp	L321
L331:
	movzx	ecx, WORD PTR [ecx]
	movzx	eax, WORD PTR [edx]
	cmp	cx, ax
	jnb	L326
	mov	eax, -1
	jmp	L321
	.cfi_endproc
LFE65:
	.globl	_wmemcpy
	.def	_wmemcpy;	.scl	2;	.type	32;	.endef
_wmemcpy:
LFB66:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	test	ecx, ecx
	je	L333
	lea	eax, [ecx-1]
	mov	ecx, ebx
	.p2align 5
L334:
	add	edx, 2
	add	ecx, 2
	movzx	esi, WORD PTR [edx-2]
	mov	WORD PTR [ecx-2], si
	sub	eax, 1
	cmp	eax, -1
	jne	L334
L333:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE66:
	.globl	_wmemmove
	.def	_wmemmove;	.scl	2;	.type	32;	.endef
_wmemmove:
LFB67:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	cmp	ebx, edx
	je	L338
	mov	ecx, ebx
	sub	ecx, edx
	lea	eax, [esi+esi]
	cmp	ecx, eax
	jb	L339
	lea	ecx, [esi-1]
	mov	eax, ebx
	test	esi, esi
	je	L338
	.p2align 5
L340:
	add	edx, 2
	add	eax, 2
	movzx	esi, WORD PTR [edx-2]
	mov	WORD PTR [eax-2], si
	sub	ecx, 1
	cmp	ecx, -1
	jne	L340
	jmp	L338
L339:
	lea	eax, [esi-1]
	test	esi, esi
	je	L338
	.p2align 4
L341:
	movzx	ecx, WORD PTR [edx+eax*2]
	mov	WORD PTR [ebx+eax*2], cx
	sub	eax, 1
	cmp	eax, -1
	jne	L341
L338:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE67:
	.globl	_wmemset
	.def	_wmemset;	.scl	2;	.type	32;	.endef
_wmemset:
LFB68:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+16]
	movzx	ecx, WORD PTR [esp+12]
	test	edx, edx
	je	L348
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
L349:
	add	edx, 2
	mov	WORD PTR [edx-2], cx
	sub	eax, 1
	cmp	eax, -1
	jne	L349
L348:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE68:
	.globl	_bcopy
	.def	_bcopy;	.scl	2;	.type	32;	.endef
_bcopy:
LFB69:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, ecx
	jnb	L353
	test	eax, eax
	je	L352
	.p2align 4
L355:
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], bl
	sub	eax, 1
	jne	L355
L352:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L353:
	.cfi_restore_state
	je	L352
	test	eax, eax
	je	L352
	add	eax, edx
	.p2align 5
L356:
	add	edx, 1
	add	ecx, 1
	movzx	ebx, BYTE PTR [edx-1]
	mov	BYTE PTR [ecx-1], bl
	cmp	eax, edx
	jne	L356
	jmp	L352
	.cfi_endproc
LFE69:
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
	je	L362
	mov	edi, esi
	xor	esi, esi
L362:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L363
	mov	eax, edx
	xor	edx, edx
L363:
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
	je	L366
	mov	esi, edi
	xor	edi, edi
L366:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L367
	mov	edx, eax
	xor	eax, eax
L367:
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
	.globl	_rotl_sz
	.def	_rotl_sz;	.scl	2;	.type	32;	.endef
_rotl_sz:
LFB74:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
LFE74:
	.globl	_rotr_sz
	.def	_rotr_sz;	.scl	2;	.type	32;	.endef
_rotr_sz:
LFB75:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
LFE75:
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
	.globl	_bswap_32
	.def	_bswap_32;	.scl	2;	.type	32;	.endef
_bswap_32:
LFB81:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ebx, edx
	shr	ebx, 24
	mov	ecx, edx
	shr	ecx, 8
	and	ecx, 65280
	mov	eax, edx
	sal	eax, 8
	and	eax, 16711680
	sal	edx, 24
	or	edx, ebx
	or	edx, ecx
	or	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE81:
	.globl	_bswap_64
	.def	_bswap_64;	.scl	2;	.type	32;	.endef
_bswap_64:
LFB82:
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
	sub	esp, 40
	.cfi_def_cfa_offset 56
	mov	ecx, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+60]
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 24
	shr	edi, 24
	and	esi, 16711680
	mov	edi, 0
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+12], edi
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 8
	sal	esi, 8
	mov	esi, 0
	and	edi, 255
	mov	DWORD PTR [esp+24], esi
	mov	DWORD PTR [esp+28], edi
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 24
	sal	esi, 24
	mov	esi, 0
	and	edi, 65280
	mov	eax, ecx
	mov	edx, ebx
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	mov	eax, 0
	and	edx, 16711680
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	or	ecx, DWORD PTR [esp+32]
	or	ebx, DWORD PTR [esp+36]
	or	ecx, DWORD PTR [esp]
	or	ebx, DWORD PTR [esp+4]
	or	ecx, DWORD PTR [esp+8]
	or	ebx, DWORD PTR [esp+12]
	or	ecx, DWORD PTR [esp+16]
	or	ebx, DWORD PTR [esp+20]
	or	ecx, DWORD PTR [esp+24]
	or	ebx, DWORD PTR [esp+28]
	or	esi, ecx
	or	edi, ebx
	or	eax, esi
	or	edx, edi
	add	esp, 40
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
LFE82:
	.globl	_ffs
	.def	_ffs;	.scl	2;	.type	32;	.endef
_ffs:
LFB83:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, 0
	.p2align 4
L384:
	bt	edx, eax
	jc	L386
	add	eax, 1
	cmp	eax, 32
	jne	L384
	mov	eax, 0
	ret
L386:
	add	eax, 1
	ret
	.cfi_endproc
LFE83:
	.globl	_libiberty_ffs
	.def	_libiberty_ffs;	.scl	2;	.type	32;	.endef
_libiberty_ffs:
LFB84:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, eax
	test	eax, eax
	je	L387
	and	edx, 1
	jne	L387
	mov	edx, 1
	.p2align 4
L389:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L389
L387:
	mov	eax, edx
	ret
	.cfi_endproc
LFE84:
	.globl	_gl_isinff
	.def	_gl_isinff;	.scl	2;	.type	32;	.endef
_gl_isinff:
LFB85:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	eax, 1
	fld	DWORD PTR LC2
	fcomip	st, st(1)
	ja	L395
	fld	DWORD PTR LC3
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L392
L395:
	fstp	st(0)
L392:
	ret
	.cfi_endproc
LFE85:
	.globl	_gl_isinfd
	.def	_gl_isinfd;	.scl	2;	.type	32;	.endef
_gl_isinfd:
LFB86:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	eax, 1
	fld	QWORD PTR LC4
	fcomip	st, st(1)
	ja	L399
	fld	QWORD PTR LC5
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L396
L399:
	fstp	st(0)
L396:
	ret
	.cfi_endproc
LFE86:
	.globl	_gl_isinfl
	.def	_gl_isinfl;	.scl	2;	.type	32;	.endef
_gl_isinfl:
LFB87:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	mov	eax, 1
	fld	TBYTE PTR LC6
	fcomip	st, st(1)
	ja	L403
	fld	TBYTE PTR LC7
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L400
L403:
	fstp	st(0)
L400:
	ret
	.cfi_endproc
LFE87:
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
	.globl	_ldexpf
	.def	_ldexpf;	.scl	2;	.type	32;	.endef
_ldexpf:
LFB89:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	fucomi	st, st(0)
	jp	L406
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L412
	jne	L412
	jmp	L406
L413:
	fstp	st(0)
L406:
	ret
L412:
	fld	DWORD PTR LC8
	test	edx, edx
	jns	L410
	fstp	st(0)
	fld	DWORD PTR LC9
	jmp	L410
	.p2align 5
L409:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L413
	fmul	st, st(0)
L410:
	test	dl, 1
	je	L409
	fmul	st(1), st
	jmp	L409
	.cfi_endproc
LFE89:
	.globl	_ldexp
	.def	_ldexp;	.scl	2;	.type	32;	.endef
_ldexp:
LFB90:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+12]
	fucomi	st, st(0)
	jp	L415
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L421
	jne	L421
	jmp	L415
L423:
	fstp	st(0)
L415:
	ret
L421:
	test	edx, edx
	js	L422
	fld	DWORD PTR LC8
	jmp	L419
L422:
	fld	DWORD PTR LC9
	jmp	L419
	.p2align 5
L418:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L423
	fmul	st, st(0)
L419:
	test	dl, 1
	je	L418
	fmul	st(1), st
	jmp	L418
	.cfi_endproc
LFE90:
	.globl	_ldexpl
	.def	_ldexpl;	.scl	2;	.type	32;	.endef
_ldexpl:
LFB91:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	mov	edx, DWORD PTR [esp+16]
	fucomi	st, st(0)
	jp	L425
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L431
	jne	L431
	jmp	L425
L433:
	fstp	st(0)
L425:
	ret
L431:
	test	edx, edx
	js	L432
	fld	DWORD PTR LC8
	jmp	L429
L432:
	fld	DWORD PTR LC9
	jmp	L429
	.p2align 5
L428:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L433
	fmul	st, st(0)
L429:
	test	dl, 1
	je	L428
	fmul	st(1), st
	jmp	L428
	.cfi_endproc
LFE91:
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
	mov	esi, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	ebx, ebx
	je	L435
	add	ebx, eax
	mov	edx, esi
	.p2align 5
L436:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [edx-1]
	xor	cl, BYTE PTR [eax-1]
	mov	BYTE PTR [edx-1], cl
	cmp	ebx, eax
	jne	L436
L435:
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
	.globl	_strncat
	.def	_strncat;	.scl	2;	.type	32;	.endef
_strncat:
LFB93:
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
	sub	esp, 4
	.cfi_def_cfa_offset 20
	mov	edi, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], edi
	call	_strlen
	add	eax, edi
	test	ebx, ebx
	je	L441
	.p2align 5
L440:
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	je	L443
	add	esi, 1
	add	eax, 1
	sub	ebx, 1
	jne	L440
L441:
	mov	BYTE PTR [eax], 0
L443:
	mov	eax, edi
	add	esp, 4
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
LFE93:
	.globl	_strnlen
	.def	_strnlen;	.scl	2;	.type	32;	.endef
_strnlen:
LFB94:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	eax, 0
	test	edx, edx
	je	L453
L447:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L454
L446:
	ret
L453:
	mov	eax, edx
	ret
L454:
	add	eax, 1
	cmp	edx, eax
	jne	L447
	mov	eax, edx
	ret
	.cfi_endproc
LFE94:
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
	je	L463
L456:
	mov	eax, esi
	.p2align 4
L459:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	L464
	add	eax, 1
	cmp	dl, cl
	jne	L459
L457:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L463:
	.cfi_restore_state
	mov	ebx, 0
	jmp	L457
L464:
	add	ebx, 1
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	jne	L456
	mov	ebx, 0
	jmp	L457
	.cfi_endproc
LFE95:
	.globl	_strrchr
	.def	_strrchr;	.scl	2;	.type	32;	.endef
_strrchr:
LFB96:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	ecx, 0
	.p2align 5
L467:
	movzx	edx, BYTE PTR [eax]
	movsx	ebx, dl
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	dl, dl
	jne	L467
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
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	esi, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	ebx, esi
	test	eax, eax
	je	L471
	mov	edi, eax
	mov	eax, DWORD PTR [esp+36]
	movsx	ebp, BYTE PTR [eax]
L473:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], esi
	call	_strchr
	mov	ebx, eax
	test	eax, eax
	je	L471
	mov	DWORD PTR [esp+8], edi
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_strncmp
	test	eax, eax
	je	L471
	lea	esi, [ebx+1]
	jmp	L473
L471:
	mov	eax, ebx
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
LFE97:
	.globl	_copysign
	.def	_copysign;	.scl	2;	.type	32;	.endef
_copysign:
LFB98:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	fldz
	fcomi	st, st(2)
	ja	L487
	fstp	st(0)
	fldz
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L488
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L480
	jmp	L481
L488:
	fstp	st(1)
	fstp	st(1)
L481:
	ret
L487:
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L481
L480:
	fchs
	ret
	.cfi_endproc
LFE98:
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
	sub	esp, 16
	.cfi_def_cfa_offset 36
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	ebp, DWORD PTR [esp+48]
	mov	eax, ebx
	test	ebp, ebp
	je	L489
	cmp	esi, ebp
	jb	L494
	sub	esi, ebp
	add	esi, ebx
	jc	L495
	movzx	edi, BYTE PTR [edx]
	sub	ebp, 1
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+12], eax
	jmp	L492
	.p2align 4
L491:
	add	ebx, 1
	cmp	esi, ebx
	jb	L499
L492:
	mov	eax, edi
	cmp	BYTE PTR [ebx], al
	jne	L491
	lea	eax, [ebx+1]
	mov	DWORD PTR [esp+8], ebp
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], eax
	call	_memcmp
	test	eax, eax
	jne	L491
	mov	eax, ebx
	jmp	L489
L499:
	mov	eax, 0
L489:
	add	esp, 16
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
L494:
	.cfi_restore_state
	mov	eax, 0
	jmp	L489
L495:
	mov	eax, 0
	jmp	L489
	.cfi_endproc
LFE99:
	.globl	_mempcpy
	.def	_mempcpy;	.scl	2;	.type	32;	.endef
_mempcpy:
LFB100:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], ebx
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	call	_memcpy
	add	eax, ebx
	add	esp, 24
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE100:
	.globl	_frexp
	.def	_frexp;	.scl	2;	.type	32;	.endef
_frexp:
LFB101:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	fld	QWORD PTR [esp+8]
	fldz
	mov	edx, 0
	fcomip	st, st(1)
	ja	L521
L503:
	mov	eax, 0
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jb	L519
	.p2align 5
L507:
	add	eax, 1
	fmul	DWORD PTR LC9
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L507
L508:
	mov	ecx, DWORD PTR [esp+16]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L510
	fchs
L510:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L521:
	.cfi_restore_state
	fchs
	mov	edx, 1
	jmp	L503
L519:
	fldz
	fucomip	st, st(1)
	setp	cl
	mov	eax, 1
	cmovne	ecx, eax
	fld	DWORD PTR LC9
	fcomip	st, st(1)
	seta	bl
	mov	eax, 0
	test	cl, bl
	je	L508
	.p2align 4
L509:
	sub	eax, 1
	fadd	st, st(0)
	fld	DWORD PTR LC9
	fcomip	st, st(1)
	ja	L509
	jmp	L508
	.cfi_endproc
LFE101:
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
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	eax, ecx
	or	ecx, ebx
	je	L525
	mov	edx, ebx
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	.p2align 6
L524:
	mov	ecx, eax
	and	ecx, 1
	mov	ebx, 0
	neg	ecx
	adc	ebx, 0
	neg	ebx
	and	ecx, esi
	and	ebx, edi
	add	DWORD PTR [esp], ecx
	adc	DWORD PTR [esp+4], ebx
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
	mov	ecx, eax
	or	ecx, edx
	jne	L524
L522:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	esp, 8
	.cfi_remember_state
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
L525:
	.cfi_restore_state
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	jmp	L522
	.cfi_endproc
LFE102:
	.globl	_udivmodsi4
	.def	_udivmodsi4;	.scl	2;	.type	32;	.endef
_udivmodsi4:
LFB103:
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
	mov	eax, DWORD PTR [esp+20]
	mov	edi, 1
	cmp	eax, ecx
	jnb	L536
	.p2align 5
L529:
	test	eax, eax
	js	L536
	add	eax, eax
	cmp	eax, ecx
	setb	bl
	mov	esi, ebx
	add	edi, edi
	setne	bl
	mov	edx, esi
	test	dl, bl
	jne	L529
	test	edi, edi
	je	L543
L536:
	mov	ebx, 0
	jmp	L534
	.p2align 4
L533:
	shr	eax
	shr	edi
	je	L535
L534:
	cmp	ecx, eax
	jb	L533
	sub	ecx, eax
	or	ebx, edi
	jmp	L533
L543:
	mov	ebx, edi
L535:
	cmp	DWORD PTR [esp+24], 0
	cmovne	ebx, ecx
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
LFE103:
	.globl	___clrsbqi2
	.def	___clrsbqi2;	.scl	2;	.type	32;	.endef
___clrsbqi2:
LFB104:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, edx
	sar	cl, 7
	mov	eax, ecx
	xor	eax, edx
	mov	ebx, 7
	cmp	dl, cl
	je	L544
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
L544:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE104:
	.globl	___clrsbdi2
	.def	___clrsbdi2;	.scl	2;	.type	32;	.endef
___clrsbdi2:
LFB105:
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
	mov	esi, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	eax, esi
	mov	edx, edi
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, esi
	mov	ebx, edi
	xor	ecx, eax
	xor	ebx, edx
	mov	ebp, 63
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	eax, DWORD PTR [esp]
	xor	eax, esi
	mov	edx, DWORD PTR [esp+4]
	xor	edx, edi
	or	eax, edx
	je	L548
	test	ebx, ebx
	je	L550
	bsr	ebp, ebx
	xor	ebp, 31
L551:
	sub	ebp, 1
L548:
	mov	eax, ebp
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
L550:
	.cfi_restore_state
	bsr	ebp, ecx
	xor	ebp, 31
	add	ebp, 32
	jmp	L551
	.cfi_endproc
LFE105:
	.globl	___mulsi3
	.def	___mulsi3;	.scl	2;	.type	32;	.endef
___mulsi3:
LFB106:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	L557
	mov	ebx, 0
	.p2align 5
L556:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L556
L554:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L557:
	.cfi_restore_state
	mov	ebx, edx
	jmp	L554
	.cfi_endproc
LFE106:
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
	mov	edx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	edi, ebx
	shr	edi, 3
	mov	ebp, ebx
	and	ebp, -8
	cmp	edx, esi
	jnb	L561
L564:
	test	edi, edi
	je	L563
	mov	eax, esi
	mov	ecx, edx
	lea	edi, [esi+edi*8]
	mov	DWORD PTR [esp+24], esi
	mov	DWORD PTR [esp+28], ebx
	.p2align 5
L567:
	mov	ebx, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx], ebx
	mov	DWORD PTR [ecx+4], esi
	add	eax, 8
	add	ecx, 8
	cmp	eax, edi
	jne	L567
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
L563:
	cmp	ebp, ebx
	jnb	L560
	lea	eax, [esi+ebp]
	add	edx, ebp
	add	ebx, esi
	.p2align 4
L568:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	L568
L560:
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
L561:
	.cfi_restore_state
	lea	eax, [esi+ebx]
	cmp	eax, edx
	jb	L564
	lea	eax, [ebx-1]
	test	ebx, ebx
	je	L560
	.p2align 4
L565:
	movzx	ecx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	L565
	jmp	L560
	.cfi_endproc
LFE107:
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
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	ecx, edi
	shr	ecx
	cmp	esi, ebx
	jnb	L576
L579:
	test	ecx, ecx
	je	L578
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 4
L582:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
	cmp	eax, ebp
	jne	L582
L578:
	test	edi, 1
	je	L575
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
L575:
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
L576:
	.cfi_restore_state
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jb	L579
	lea	eax, [edi-1]
	test	edi, edi
	je	L575
	.p2align 4
L580:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	cmp	eax, -1
	jne	L580
	jmp	L575
	.cfi_endproc
LFE108:
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
	mov	edx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	edi, ebx
	shr	edi, 2
	mov	ebp, ebx
	and	ebp, -4
	cmp	edx, esi
	jnb	L588
L591:
	test	edi, edi
	je	L590
	mov	eax, esi
	mov	ecx, edx
	lea	edi, [esi+edi*4]
	mov	DWORD PTR [esp+20], edx
	.p2align 4
L594:
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	add	eax, 4
	add	ecx, 4
	cmp	eax, edi
	jne	L594
	mov	edx, DWORD PTR [esp+20]
L590:
	cmp	ebp, ebx
	jnb	L587
	lea	eax, [esi+ebp]
	add	edx, ebp
	add	ebx, esi
	.p2align 4
L595:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	L595
L587:
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
L588:
	.cfi_restore_state
	lea	eax, [esi+ebx]
	cmp	eax, edx
	jb	L591
	lea	eax, [ebx-1]
	test	ebx, ebx
	je	L587
	.p2align 4
L592:
	movzx	ecx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	L592
	jmp	L587
	.cfi_endproc
LFE109:
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
	.globl	___uitod
	.def	___uitod;	.scl	2;	.type	32;	.endef
___uitod:
LFB111:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE111:
	.globl	___uitof
	.def	___uitof;	.scl	2;	.type	32;	.endef
___uitof:
LFB112:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE112:
	.globl	___ulltod
	.def	___ulltod;	.scl	2;	.type	32;	.endef
___ulltod:
LFB113:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fild	QWORD PTR [esp+16]
	cmp	DWORD PTR [esp+20], 0
	js	L610
L608:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L610:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L608
	.cfi_endproc
LFE113:
	.globl	___ulltof
	.def	___ulltof;	.scl	2;	.type	32;	.endef
___ulltof:
LFB114:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fild	QWORD PTR [esp+16]
	cmp	DWORD PTR [esp+20], 0
	js	L614
L612:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L614:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L612
	.cfi_endproc
LFE114:
	.globl	___umodi
	.def	___umodi;	.scl	2;	.type	32;	.endef
___umodi:
LFB115:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, 0
	div	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
LFE115:
	.globl	___clzhi2
	.def	___clzhi2;	.scl	2;	.type	32;	.endef
___clzhi2:
LFB116:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, 0
	movzx	ebx, WORD PTR [esp+8]
	mov	ecx, 15
	.p2align 5
L618:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	L616
	add	eax, 1
	cmp	eax, 16
	jne	L618
L616:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE116:
	.globl	___ctzhi2
	.def	___ctzhi2;	.scl	2;	.type	32;	.endef
___ctzhi2:
LFB117:
	.cfi_startproc
	mov	eax, 0
	movzx	edx, WORD PTR [esp+4]
	.p2align 4
L623:
	bt	edx, eax
	jc	L621
	add	eax, 1
	cmp	eax, 16
	jne	L623
L621:
	ret
	.cfi_endproc
LFE117:
	.globl	___fixunssfsi
	.def	___fixunssfsi;	.scl	2;	.type	32;	.endef
___fixunssfsi:
LFB118:
	.cfi_startproc
	sub	esp, 8
	.cfi_def_cfa_offset 12
	fld	DWORD PTR LC12
	fld	DWORD PTR [esp+12]
	fcomi	st, st(1)
	jnb	L633
	fstp	st(1)
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
L631:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L633:
	.cfi_restore_state
	fsubrp	st(1), st
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	eax, 32768
	jmp	L631
	.cfi_endproc
LFE118:
	.globl	___parityhi2
	.def	___parityhi2;	.scl	2;	.type	32;	.endef
___parityhi2:
LFB119:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
L635:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	L635
	and	eax, 1
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE119:
	.globl	___popcounthi2
	.def	___popcounthi2;	.scl	2;	.type	32;	.endef
___popcounthi2:
LFB120:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
L639:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	L639
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE120:
	.globl	___mulsi3_iq2000
	.def	___mulsi3_iq2000;	.scl	2;	.type	32;	.endef
___mulsi3_iq2000:
LFB121:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	L645
	mov	ebx, 0
	.p2align 5
L644:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L644
L642:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L645:
	.cfi_restore_state
	mov	ebx, edx
	jmp	L642
	.cfi_endproc
LFE121:
	.globl	___mulsi3_lm32
	.def	___mulsi3_lm32;	.scl	2;	.type	32;	.endef
___mulsi3_lm32:
LFB122:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ebx, ecx
	test	ecx, ecx
	je	L648
	test	edx, edx
	je	L652
	mov	ebx, 0
	.p2align 5
L650:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L650
L648:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L652:
	.cfi_restore_state
	mov	ebx, edx
	jmp	L648
	.cfi_endproc
LFE122:
	.globl	___udivmodsi4
	.def	___udivmodsi4;	.scl	2;	.type	32;	.endef
___udivmodsi4:
LFB123:
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
	mov	eax, DWORD PTR [esp+20]
	mov	edi, 1
	cmp	eax, ecx
	jnb	L663
	.p2align 5
L656:
	test	eax, eax
	js	L663
	add	eax, eax
	cmp	eax, ecx
	setb	bl
	mov	esi, ebx
	add	edi, edi
	setne	bl
	mov	edx, esi
	test	dl, bl
	jne	L656
	test	edi, edi
	je	L670
L663:
	mov	ebx, 0
	jmp	L661
	.p2align 4
L660:
	shr	eax
	shr	edi
	je	L662
L661:
	cmp	ecx, eax
	jb	L660
	sub	ecx, eax
	or	ebx, edi
	jmp	L660
L670:
	mov	ebx, edi
L662:
	cmp	DWORD PTR [esp+24], 0
	cmovne	ebx, ecx
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
LFE123:
	.globl	___mspabi_cmpf
	.def	___mspabi_cmpf;	.scl	2;	.type	32;	.endef
___mspabi_cmpf:
LFB124:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+8]
	mov	eax, -1
	fcomi	st, st(1)
	ja	L674
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L671
L674:
	fstp	st(0)
	fstp	st(0)
L671:
	ret
	.cfi_endproc
LFE124:
	.globl	___mspabi_cmpd
	.def	___mspabi_cmpd;	.scl	2;	.type	32;	.endef
___mspabi_cmpd:
LFB125:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	mov	eax, -1
	fcomi	st, st(1)
	ja	L678
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L675
L678:
	fstp	st(0)
	fstp	st(0)
L675:
	ret
	.cfi_endproc
LFE125:
	.globl	___mspabi_mpysll
	.def	___mspabi_mpysll;	.scl	2;	.type	32;	.endef
___mspabi_mpysll:
LFB126:
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
	mov	edi, eax
	sar	edi, 31
	mov	ebx, edx
	sar	ebx, 31
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [esp+4], ebx
	mov	ecx, edi
	imul	ecx, edx
	mov	ebx, DWORD PTR [esp+4]
	imul	ebx, eax
	add	ecx, ebx
	mul	edx
	add	edx, ecx
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
LFE126:
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
	js	L691
	je	L688
	mov	edi, 0
L684:
	mov	ebx, 1
	mov	esi, 0
	.p2align 6
L686:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, DWORD PTR [esp+20]
	add	esi, eax
	sal	DWORD PTR [esp+20]
	sar	edx
	setne	al
	mov	ebp, eax
	cmp	bl, 31
	setbe	al
	add	ebx, 1
	mov	ecx, ebp
	test	cl, al
	jne	L686
L685:
	mov	eax, esi
	neg	eax
	test	edi, edi
	cmovne	esi, eax
	mov	eax, esi
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
L691:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L684
L688:
	mov	edi, edx
	mov	esi, edx
	jmp	L685
	.cfi_endproc
LFE128:
	.globl	___divsi3
	.def	___divsi3;	.scl	2;	.type	32;	.endef
___divsi3:
LFB129:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	test	eax, eax
	js	L701
	test	edx, edx
	js	L702
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	jmp	L692
L701:
	neg	eax
	test	edx, edx
	js	L703
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
L696:
	neg	eax
L692:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L702:
	.cfi_restore_state
	neg	edx
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	jmp	L696
L703:
	neg	edx
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	jmp	L692
	.cfi_endproc
LFE129:
	.globl	___modsi3
	.def	___modsi3;	.scl	2;	.type	32;	.endef
___modsi3:
LFB130:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	test	eax, eax
	js	L708
	mov	ecx, edx
	neg	ecx
	cmovns	edx, ecx
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	jmp	L704
L708:
	neg	eax
	mov	ecx, edx
	neg	ecx
	cmovns	edx, ecx
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	neg	eax
L704:
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE130:
	.globl	___udivmodhi4
	.def	___udivmodhi4;	.scl	2;	.type	32;	.endef
___udivmodhi4:
LFB131:
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
	mov	ebx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, ebx
	mov	eax, esi
	mov	edi, 1
	cmp	si, bx
	jnb	L717
	.p2align 5
L710:
	test	ax, ax
	js	L717
	add	eax, eax
	cmp	ax, cx
	setb	bl
	mov	esi, ebx
	add	di, di
	setne	bl
	mov	edx, esi
	test	dl, bl
	jne	L710
	test	di, di
	je	L724
L717:
	mov	ebx, 0
	jmp	L715
	.p2align 4
L714:
	shr	ax
	shr	di
	je	L716
L715:
	cmp	cx, ax
	jb	L714
	sub	ecx, eax
	or	ebx, edi
	jmp	L714
L724:
	mov	ebx, edi
L716:
	cmp	DWORD PTR [esp+24], 0
	cmovne	ebx, ecx
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
LFE131:
	.globl	___udivmodsi4_libgcc
	.def	___udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
___udivmodsi4_libgcc:
LFB132:
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
	mov	eax, DWORD PTR [esp+20]
	mov	edi, 1
	cmp	eax, ecx
	jnb	L733
	.p2align 5
L726:
	test	eax, eax
	js	L733
	add	eax, eax
	cmp	eax, ecx
	setb	bl
	mov	esi, ebx
	add	edi, edi
	setne	bl
	mov	edx, esi
	test	dl, bl
	jne	L726
	test	edi, edi
	je	L740
L733:
	mov	ebx, 0
	jmp	L731
	.p2align 4
L730:
	shr	eax
	shr	edi
	je	L732
L731:
	cmp	ecx, eax
	jb	L730
	sub	ecx, eax
	or	ebx, edi
	jmp	L730
L740:
	mov	ebx, edi
L732:
	cmp	DWORD PTR [esp+24], 0
	cmovne	ebx, ecx
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
LFE132:
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
	mov	esi, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	bl, 32
	je	L742
	lea	ecx, [ebx-32]
	sal	esi, cl
	mov	edx, esi
	mov	eax, 0
L744:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L742:
	.cfi_restore_state
	mov	eax, esi
	test	ebx, ebx
	je	L744
	mov	ecx, ebx
	sal	eax, cl
	sal	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	esi, cl
	or	edx, esi
	jmp	L744
	.cfi_endproc
LFE133:
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
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	test	bl, 32
	je	L748
	mov	edx, esi
	sar	edx, 31
	lea	ecx, [ebx-32]
	mov	eax, esi
	sar	eax, cl
L750:
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
L748:
	.cfi_restore_state
	test	ebx, ebx
	je	L751
	mov	edx, esi
	mov	ecx, ebx
	sar	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	mov	eax, esi
	sal	eax, cl
	mov	ecx, ebx
	shr	edi, cl
	or	eax, edi
	jmp	L750
L751:
	mov	eax, edi
	mov	edx, esi
	jmp	L750
	.cfi_endproc
LFE134:
	.globl	___bswapdi2
	.def	___bswapdi2;	.scl	2;	.type	32;	.endef
___bswapdi2:
LFB135:
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
	sub	esp, 40
	.cfi_def_cfa_offset 56
	mov	ecx, DWORD PTR [esp+56]
	mov	ebx, DWORD PTR [esp+60]
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 24
	shr	edi, 24
	and	esi, 16711680
	mov	edi, 0
	mov	DWORD PTR [esp+16], esi
	mov	DWORD PTR [esp+20], edi
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 8
	sal	esi, 8
	mov	esi, 0
	and	edi, 255
	mov	DWORD PTR [esp+32], esi
	mov	DWORD PTR [esp+36], edi
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 24
	sal	esi, 24
	mov	esi, 0
	and	edi, 65280
	mov	eax, ecx
	mov	edx, ebx
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	mov	eax, 0
	and	edx, 16711680
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	or	ecx, DWORD PTR [esp]
	or	ebx, DWORD PTR [esp+4]
	or	ecx, DWORD PTR [esp+8]
	or	ebx, DWORD PTR [esp+12]
	or	ecx, DWORD PTR [esp+16]
	or	ebx, DWORD PTR [esp+20]
	or	ecx, DWORD PTR [esp+24]
	or	ebx, DWORD PTR [esp+28]
	or	ecx, DWORD PTR [esp+32]
	or	ebx, DWORD PTR [esp+36]
	or	esi, ecx
	or	edi, ebx
	or	eax, esi
	or	edx, edi
	add	esp, 40
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
LFE135:
	.globl	___bswapsi2
	.def	___bswapsi2;	.scl	2;	.type	32;	.endef
___bswapsi2:
LFB136:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ebx, edx
	shr	ebx, 24
	mov	ecx, edx
	shr	ecx, 8
	and	ecx, 65280
	mov	eax, edx
	sal	eax, 8
	and	eax, 16711680
	sal	edx, 24
	or	edx, ebx
	or	edx, ecx
	or	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE136:
	.globl	___clzsi2
	.def	___clzsi2;	.scl	2;	.type	32;	.endef
___clzsi2:
LFB137:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
	cmp	edx, 65535
	setbe	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	sete	bl
	movzx	ebx, bl
	sal	ebx, 3
	mov	ecx, 8
	sub	ecx, ebx
	shr	edx, cl
	add	ebx, eax
	test	dl, -16
	sete	al
	movzx	eax, al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	edx, cl
	lea	esi, [eax+ebx]
	test	dl, 12
	sete	bl
	movzx	ebx, bl
	add	ebx, ebx
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, ebx
	shr	edx, cl
	add	ebx, esi
	sub	eax, edx
	test	dl, 2
	mov	edx, 0
	cmovne	eax, edx
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
	.globl	___cmpdi2
	.def	___cmpdi2;	.scl	2;	.type	32;	.endef
___cmpdi2:
LFB138:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, 0
	cmp	ecx, edx
	jg	L759
	mov	eax, 2
	jl	L759
	mov	eax, 0
	cmp	ebx, esi
	jb	L759
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
L759:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE138:
	.globl	___aeabi_lcmp
	.def	___aeabi_lcmp;	.scl	2;	.type	32;	.endef
___aeabi_lcmp:
LFB139:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___cmpdi2
	sub	eax, 1
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE139:
	.globl	___ctzsi2
	.def	___ctzsi2;	.scl	2;	.type	32;	.endef
___ctzsi2:
LFB140:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	test	ax, ax
	sete	dl
	movzx	edx, dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	test	al, al
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	eax, cl
	add	edx, ecx
	test	al, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	eax, cl
	add	edx, ecx
	test	al, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	eax, cl
	and	eax, 3
	add	ecx, edx
	mov	edx, eax
	not	edx
	shr	eax
	mov	ebx, 2
	sub	ebx, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ebx
	add	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE140:
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
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	test	bl, 32
	je	L771
	lea	ecx, [ebx-32]
	mov	eax, esi
	shr	eax, cl
	mov	edx, 0
L773:
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
L771:
	.cfi_restore_state
	test	ebx, ebx
	je	L774
	mov	edx, esi
	mov	ecx, ebx
	shr	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	mov	eax, esi
	sal	eax, cl
	mov	ecx, ebx
	shr	edi, cl
	or	eax, edi
	jmp	L773
L774:
	mov	eax, edi
	mov	edx, esi
	jmp	L773
	.cfi_endproc
LFE141:
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
	movzx	edx, cx
	movzx	eax, si
	mov	edi, edx
	imul	edi, eax
	mov	ebx, edi
	shr	ebx, 16
	shr	ecx, 16
	imul	eax, ecx
	add	eax, ebx
	mov	ebx, eax
	shr	ebx, 16
	movzx	eax, ax
	movzx	edi, di
	shr	esi, 16
	imul	edx, esi
	add	edx, eax
	mov	eax, edx
	sal	eax, 16
	add	eax, edi
	shr	edx, 16
	imul	ecx, esi
	add	ebx, ecx
	add	edx, ebx
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
	.globl	___muldi3_compiler_rt
	.def	___muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
___muldi3_compiler_rt:
LFB143:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 12
	.cfi_def_cfa_offset 24
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], esi
	call	___muldsi3
	imul	ebx, DWORD PTR [esp+28]
	imul	esi, DWORD PTR [esp+36]
	add	ebx, esi
	add	edx, ebx
	add	esp, 12
	.cfi_def_cfa_offset 12
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE143:
	.globl	___negdi2
	.def	___negdi2;	.scl	2;	.type	32;	.endef
___negdi2:
LFB144:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	neg	eax
	adc	edx, 0
	neg	edx
	ret
	.cfi_endproc
LFE144:
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
LFE145:
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
LFE146:
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
	mov	ebx, edx
	shrd	ecx, ebx, 2
	shr	ebx, 2
	and	ecx, 858993459
	and	ebx, 858993459
	and	eax, 858993459
	and	edx, 858993459
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
	add	eax, edx
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE147:
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
	shr	edx, 2
	and	edx, 858993459
	and	eax, 858993459
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
	.globl	___powidf2
	.def	___powidf2;	.scl	2;	.type	32;	.endef
___powidf2:
LFB149:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, ecx
	fld1
	jmp	L789
	.p2align 5
L787:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L788
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L789:
	test	dl, 1
	je	L787
	fmul	st, st(1)
	jmp	L787
L788:
	fstp	st(1)
	test	ecx, ecx
	js	L791
L786:
	ret
L791:
	fdivr	DWORD PTR LC10
	jmp	L786
	.cfi_endproc
LFE149:
	.globl	___powisf2
	.def	___powisf2;	.scl	2;	.type	32;	.endef
___powisf2:
LFB150:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, ecx
	fld1
	jmp	L795
	.p2align 5
L793:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L794
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L795:
	test	dl, 1
	je	L793
	fmul	st, st(1)
	jmp	L793
L794:
	fstp	st(1)
	test	ecx, ecx
	js	L797
L792:
	ret
L797:
	fdivr	DWORD PTR LC10
	jmp	L792
	.cfi_endproc
LFE150:
	.globl	___ucmpdi2
	.def	___ucmpdi2;	.scl	2;	.type	32;	.endef
___ucmpdi2:
LFB151:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, 0
	cmp	edx, ecx
	jb	L798
	mov	eax, 2
	cmp	ecx, edx
	jb	L798
	mov	eax, 0
	cmp	ebx, esi
	jb	L798
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
L798:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE151:
	.globl	___aeabi_ulcmp
	.def	___aeabi_ulcmp;	.scl	2;	.type	32;	.endef
___aeabi_ulcmp:
LFB152:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___ucmpdi2
	sub	eax, 1
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE152:
.lcomm _s.0,7,4
	.section .rdata,"dr"
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
LC10:
	.long	1065353216
	.align 4
LC11:
	.long	1602224128
	.align 4
LC12:
	.long	1191182336
	.def	___moddi3;	.scl	2;	.type	32;	.endef
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
