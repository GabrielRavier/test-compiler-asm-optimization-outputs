	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
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
	mov	ebp, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	cmp	edx, ebp
	jnb	L2
	lea	ecx, [ebp+0+esi]
	mov	eax, esi
	neg	esi
	jmp	L3
	.p2align 5
L4:
	lea	edi, [ecx+esi]
	movzx	ebx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [edi-1+eax], bl
	sub	eax, 1
L3:
	test	eax, eax
	jne	L4
L5:
	mov	eax, ebp
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
L2:
	.cfi_restore_state
	cmp	ebp, edx
	je	L5
	add	esi, ebp
	mov	eax, edx
	mov	ecx, ebp
	jmp	L6
	.p2align 5
L7:
	add	eax, 1
	add	ecx, 1
	movzx	edx, BYTE PTR [eax-1]
	mov	BYTE PTR [ecx-1], dl
L6:
	cmp	ecx, esi
	jne	L7
	jmp	L5
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
	mov	ecx, DWORD PTR [esp+24]
	movzx	esi, BYTE PTR [esp+20]
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+12]
	jmp	L9
	.p2align 5
L11:
	sub	ecx, 1
	add	ebx, 1
	add	eax, 1
L9:
	test	ecx, ecx
	je	L10
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	movzx	edx, dl
	cmp	esi, edx
	jne	L11
L10:
	add	eax, 1
	test	ecx, ecx
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
LFE3:
	.globl	_memchr
	.def	_memchr;	.scl	2;	.type	32;	.endef
_memchr:
LFB4:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+16]
	movzx	ebx, BYTE PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
	jmp	L15
	.p2align 5
L17:
	add	eax, 1
	sub	edx, 1
L15:
	test	edx, edx
	je	L16
	movzx	ecx, BYTE PTR [eax]
	cmp	ebx, ecx
	jne	L17
L16:
	test	edx, edx
	mov	edx, 0
	cmove	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
	jmp	L21
	.p2align 5
L23:
	sub	edx, 1
	add	eax, 1
	add	ecx, 1
L21:
	test	edx, edx
	je	L22
	movzx	ebx, BYTE PTR [ecx]
	cmp	BYTE PTR [eax], bl
	je	L23
L22:
	mov	ebx, 0
	test	edx, edx
	je	L24
	movzx	ebx, BYTE PTR [eax]
	movzx	eax, BYTE PTR [ecx]
	sub	ebx, eax
L24:
	mov	eax, ebx
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
	mov	ebx, esi
	add	ebx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+16]
	mov	eax, esi
	jmp	L27
	.p2align 5
L28:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx-1]
	mov	BYTE PTR [eax-1], cl
L27:
	cmp	eax, ebx
	jne	L28
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
	mov	ebx, DWORD PTR [esp+12]
	movzx	esi, BYTE PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	lea	edx, [eax-1]
L30:
	cmp	edx, -1
	je	L34
	movzx	ecx, BYTE PTR [ebx+edx]
	lea	eax, [edx-1]
	cmp	esi, ecx
	je	L35
	mov	edx, eax
	jmp	L30
L35:
	lea	eax, [ebx+edx]
	jmp	L31
L34:
	mov	eax, 0
L31:
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
	mov	edx, ebx
	add	edx, DWORD PTR [esp+16]
	mov	eax, ebx
	jmp	L37
	.p2align 4
L38:
	mov	BYTE PTR [eax], cl
	add	eax, 1
L37:
	cmp	eax, edx
	jne	L38
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
	mov	ecx, DWORD PTR [esp+8]
	jmp	L40
	.p2align 4
L41:
	add	ecx, 1
	add	eax, 1
L40:
	movzx	edx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	L41
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
	jmp	L43
	.p2align 4
L45:
	add	eax, 1
L43:
	cmp	BYTE PTR [eax], 0
	je	L44
	movzx	edx, BYTE PTR [eax]
	cmp	ecx, edx
	jne	L45
L44:
	ret
	.cfi_endproc
LFE10:
	.globl	_strchr
	.def	_strchr;	.scl	2;	.type	32;	.endef
_strchr:
LFB11:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	.p2align 4
L48:
	movsx	edx, BYTE PTR [eax]
	cmp	ecx, edx
	je	L47
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	L48
	mov	eax, 0
L47:
	ret
	.cfi_endproc
LFE11:
	.globl	_strcmp
	.def	_strcmp;	.scl	2;	.type	32;	.endef
_strcmp:
LFB12:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	jmp	L52
	.p2align 5
L54:
	add	eax, 1
	add	edx, 1
L52:
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	jne	L53
	cmp	BYTE PTR [eax], 0
	jne	L54
L53:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
	ret
	.cfi_endproc
LFE12:
	.globl	_strlen
	.def	_strlen;	.scl	2;	.type	32;	.endef
_strlen:
LFB13:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	jmp	L56
	.p2align 3
L57:
	add	eax, 1
L56:
	cmp	BYTE PTR [eax], 0
	jne	L57
	sub	eax, edx
	ret
	.cfi_endproc
LFE13:
	.globl	_strncmp
	.def	_strncmp;	.scl	2;	.type	32;	.endef
_strncmp:
LFB14:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+20]
	mov	eax, 0
	test	ecx, ecx
	je	L59
	mov	edx, DWORD PTR [esp+16]
	mov	eax, ebx
	lea	esi, [ebx-1+ecx]
L60:
	cmp	BYTE PTR [eax], 0
	je	L61
	cmp	eax, esi
	setne	bl
	cmp	BYTE PTR [edx], 0
	setne	cl
	test	bl, cl
	je	L61
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	jne	L61
	add	eax, 1
	add	edx, 1
	jmp	L60
L61:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L59:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
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
	mov	ebx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, ebx
	add	ebx, DWORD PTR [esp+16]
	jmp	L65
	.p2align 5
L66:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
L65:
	mov	ecx, ebx
	sub	ecx, eax
	cmp	ecx, 1
	jg	L66
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
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 32
	sete	dl
	cmp	eax, 9
	sete	al
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
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 32
	sete	dl
	sub	eax, 9
	cmp	eax, 4
	setbe	al
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
	setbe	cl
	movzx	edx, ax
	sub	edx, 127
	cmp	edx, 32
	setbe	bl
	mov	edx, 1
	or	cl, bl
	jne	L78
	movzx	ecx, ax
	sub	ecx, 8232
	cmp	ecx, 1
	jbe	L78
	movzx	eax, ax
	sub	eax, 65529
	cmp	eax, 3
	setb	dl
	movzx	edx, dl
L78:
	mov	eax, edx
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	cmp	ax, 254
	jbe	L90
	cmp	ax, 8231
	setbe	cl
	movzx	edx, ax
	sub	edx, 8234
	cmp	edx, 47061
	setbe	bl
	mov	edx, 1
	or	cl, bl
	jne	L85
	movzx	ecx, ax
	sub	ecx, 57344
	cmp	ecx, 8184
	jbe	L85
	movzx	ecx, ax
	sub	ecx, 65532
	mov	edx, 0
	cmp	ecx, 1048579
	ja	L85
	not	eax
	test	eax, 65534
	setne	dl
	movzx	edx, dl
	jmp	L85
L90:
	lea	eax, [eax+1]
	and	eax, 127
	cmp	eax, 32
	setg	dl
	movzx	edx, dl
L85:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
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
	jbe	L92
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 6
	setb	cl
	movzx	ecx, cl
L92:
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
	jp	L104
	fxch	st(1)
	fucomi	st, st(0)
	jp	L100
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L103
	fsubrp	st(1), st
	ret
L100:
	fstp	st(1)
	ret
L103:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L97
L104:
	fstp	st(1)
L97:
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
	jp	L113
	fxch	st(1)
	fucomi	st, st(0)
	jp	L109
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L112
	fsubrp	st(1), st
	ret
L109:
	fstp	st(1)
	ret
L112:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L106
L113:
	fstp	st(1)
L106:
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
	jp	L123
	fxch	st(1)
	fucomi	st, st(0)
	jp	L119
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
	je	L116
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	ret
L116:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
L119:
	fstp	st(0)
	jmp	L115
L123:
	fstp	st(0)
L115:
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
	jp	L133
	fxch	st(1)
	fucomi	st, st(0)
	jp	L129
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
	je	L126
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	ret
L126:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
L129:
	fstp	st(0)
	jmp	L125
L133:
	fstp	st(0)
L125:
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
	jp	L138
	fxch	st(1)
	fucomi	st, st(0)
	jp	L139
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
	je	L136
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L144
	fstp	st(0)
	jmp	L135
L144:
	fstp	st(1)
	jmp	L135
L145:
	fstp	st(1)
L135:
	ret
L136:
	fld	st(0)
	fcomip	st, st(2)
	ja	L145
	fstp	st(0)
	jmp	L135
L138:
	fstp	st(0)
	jmp	L135
L139:
	fstp	st(0)
	jmp	L135
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
	jp	L150
	fxch	st(1)
	fucomi	st, st(0)
	jp	L155
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
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	ret
L148:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
L150:
	fstp	st(0)
	jmp	L147
L155:
	fstp	st(0)
L147:
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
	jp	L160
	fxch	st(1)
	fucomi	st, st(0)
	jp	L165
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
	je	L158
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	ret
L158:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
L160:
	fstp	st(0)
	jmp	L157
L165:
	fstp	st(0)
L157:
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
	jp	L170
	fxch	st(1)
	fucomi	st, st(0)
	jp	L171
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
	je	L168
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L176
	fstp	st(1)
	jmp	L167
L176:
	fstp	st(0)
	jmp	L167
L177:
	fstp	st(1)
L167:
	ret
L168:
	fld	st(1)
	fxch	st(1)
	fcomi	st, st(2)
	fstp	st(2)
	ja	L177
	fstp	st(0)
	jmp	L167
L170:
	fstp	st(0)
	jmp	L167
L171:
	fstp	st(0)
	jmp	L167
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
	mov	eax, DWORD PTR [esp+4]
	mov	edx, OFFSET FLAT:_s.0
	jmp	L179
	.p2align 5
L180:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
L179:
	test	eax, eax
	jne	L180
	mov	BYTE PTR [edx], 0
	mov	eax, OFFSET FLAT:_s.0
	ret
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR _seed
	mov	esi, DWORD PTR _seed+4
	imul	ecx, esi, 1284865837
	imul	edx, ebx, 1481765933
	add	ecx, edx
	mov	edx, 1284865837
	mov	eax, ebx
	mul	edx
	add	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, edx
	mov	eax, edx
	xor	edx, edx
	shr	eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
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
	je	L186
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	cmp	DWORD PTR [eax], 0
	je	L183
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [edx+4], eax
L183:
	ret
L186:
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
	cmp	DWORD PTR [eax], 0
	je	L188
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L188:
	cmp	DWORD PTR [eax+4], 0
	je	L187
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
L187:
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	edi, DWORD PTR [esp+60]
	mov	eax, DWORD PTR [esp+56]
	mov	ebp, DWORD PTR [eax]
	mov	esi, DWORD PTR [esp+52]
	mov	ebx, 0
	jmp	L191
L192:
	add	ebx, 1
L191:
	cmp	ebx, ebp
	je	L195
	mov	DWORD PTR [esp+4], esi
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	add	esi, edi
	test	eax, eax
	jne	L192
	imul	ebx, edi
	mov	eax, ebx
	add	eax, DWORD PTR [esp+52]
	jmp	L193
L195:
	lea	eax, [ebp+1]
	mov	ecx, DWORD PTR [esp+56]
	mov	DWORD PTR [ecx], eax
	mov	edx, ebp
	imul	edx, edi
	mov	eax, edx
	add	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+8], edi
	mov	ecx, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], eax
	call	_memcpy
L193:
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	ebp, DWORD PTR [esp+60]
	mov	eax, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [eax]
	mov	esi, DWORD PTR [esp+52]
	mov	ebx, 0
	jmp	L197
L198:
	add	ebx, 1
L197:
	cmp	ebx, edi
	je	L201
	mov	DWORD PTR [esp+4], esi
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	add	esi, ebp
	test	eax, eax
	jne	L198
	imul	ebx, ebp
	mov	eax, ebx
	add	eax, DWORD PTR [esp+52]
	jmp	L199
L201:
	mov	eax, 0
L199:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	ebx, DWORD PTR [esp+12]
	jmp	L204
L205:
	add	ebx, 1
L204:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L205
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L211
	mov	ecx, 0
	cmp	eax, 45
	jne	L207
	mov	ecx, 1
L206:
	add	ebx, 1
L207:
	mov	edx, 0
	jmp	L208
L211:
	mov	ecx, 0
	jmp	L206
	.p2align 5
L209:
	lea	edx, [edx+edx*4]
	add	edx, edx
	add	ebx, 1
	movsx	eax, BYTE PTR [ebx-1]
	sub	eax, 48
	sub	edx, eax
L208:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	L209
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
	add	esp, 4
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE47:
	.globl	_atol
	.def	_atol;	.scl	2;	.type	32;	.endef
_atol:
LFB48:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	ebx, DWORD PTR [esp+12]
	jmp	L215
L216:
	add	ebx, 1
L215:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L216
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L222
	mov	ecx, 0
	cmp	eax, 45
	jne	L218
	mov	ecx, 1
L217:
	add	ebx, 1
L218:
	mov	edx, 0
	jmp	L219
L222:
	mov	ecx, 0
	jmp	L217
	.p2align 5
L220:
	lea	edx, [edx+edx*4]
	add	edx, edx
	add	ebx, 1
	movsx	eax, BYTE PTR [ebx-1]
	sub	eax, 48
	sub	edx, eax
L219:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	L220
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
	add	esp, 4
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE48:
	.globl	_atoll
	.def	_atoll;	.scl	2;	.type	32;	.endef
_atoll:
LFB49:
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
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L227
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L233
	mov	ecx, 0
	cmp	eax, 45
	jne	L229
	mov	ecx, 1
L228:
	add	ebx, 1
L229:
	mov	esi, 0
	mov	edi, 0
	jmp	L230
L233:
	mov	ecx, 0
	jmp	L228
	.p2align 6
L231:
	mov	eax, esi
	mov	edx, edi
	shld	edx, eax, 2
	sal	eax, 2
	add	esi, eax
	adc	edi, edx
	add	esi, esi
	adc	edi, edi
	add	ebx, 1
	movsx	eax, BYTE PTR [ebx-1]
	sub	eax, 48
	cdq
	sub	esi, eax
	sbb	edi, edx
L230:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	L231
	mov	eax, esi
	mov	edx, edi
	test	ecx, ecx
	jne	L232
	neg	eax
	adc	edx, 0
	neg	edx
L232:
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
	mov	ebp, DWORD PTR [esp+52]
	mov	esi, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [esp+60]
	jmp	L237
L244:
	shr	esi
L237:
	test	esi, esi
	je	L243
	mov	ebx, esi
	shr	ebx
	imul	ebx, edi
	add	ebx, ebp
	mov	DWORD PTR [esp+4], ebx
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	js	L244
	jle	L242
	lea	ebp, [ebx+edi]
	mov	eax, esi
	shr	eax
	sub	esi, 1
	sub	esi, eax
	jmp	L237
L243:
	mov	eax, 0
L240:
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
L242:
	.cfi_restore_state
	mov	eax, ebx
	jmp	L240
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
	mov	ebp, DWORD PTR [esp+60]
	mov	esi, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [esp+52]
	jmp	L246
L248:
	sar	esi
L246:
	test	esi, esi
	je	L251
	mov	ebx, esi
	sar	ebx
	imul	ebx, ebp
	add	ebx, edi
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], ebx
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	je	L250
	jle	L248
	lea	edi, [ebx+ebp]
	sub	esi, 1
	jmp	L248
L251:
	mov	eax, 0
L247:
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
L250:
	.cfi_restore_state
	mov	eax, ebx
	jmp	L247
	.cfi_endproc
LFE51:
	.globl	_div
	.def	_div;	.scl	2;	.type	32;	.endef
_div:
LFB52:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE52:
	.globl	_imaxabs
	.def	_imaxabs;	.scl	2;	.type	32;	.endef
_imaxabs:
LFB53:
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
	mov	ebx, DWORD PTR [esp+24]
	mov	ebp, ecx
	neg	ebp
	mov	esi, ebp
	mov	ebp, ebx
	adc	ebp, 0
	mov	edi, ebp
	neg	edi
	mov	ebp, ecx
	cmovns	ebp, esi
	mov	eax, ebp
	cmovns	ebx, edi
	mov	edx, ebx
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE56:
	.globl	_llabs
	.def	_llabs;	.scl	2;	.type	32;	.endef
_llabs:
LFB57:
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
	mov	ebx, DWORD PTR [esp+24]
	mov	ebp, ecx
	neg	ebp
	mov	esi, ebp
	mov	ebp, ebx
	adc	ebp, 0
	mov	edi, ebp
	neg	edi
	mov	ebp, ecx
	cmovns	ebp, esi
	mov	eax, ebp
	cmovns	ebx, edi
	mov	edx, ebx
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
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [esp+8]
	jmp	L260
	.p2align 4
L262:
	add	eax, 2
L260:
	cmp	WORD PTR [eax], 0
	je	L261
	cmp	dx, WORD PTR [eax]
	jne	L262
L261:
	cmp	WORD PTR [eax], 0
	mov	edx, 0
	cmove	eax, edx
	ret
	.cfi_endproc
LFE59:
	.globl	_wcscmp
	.def	_wcscmp;	.scl	2;	.type	32;	.endef
_wcscmp:
LFB60:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	jmp	L266
L268:
	add	eax, 2
	add	edx, 2
L266:
	movzx	ecx, WORD PTR [edx]
	cmp	WORD PTR [eax], cx
	jne	L267
	cmp	WORD PTR [eax], 0
	je	L267
	test	cx, cx
	jne	L268
L267:
	mov	ecx, -1
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	jb	L269
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	setb	cl
	movzx	ecx, cl
L269:
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
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
	mov	ebx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, ebx
	.p2align 5
L272:
	add	edx, 2
	add	eax, 2
	movzx	ecx, WORD PTR [edx-2]
	mov	WORD PTR [eax-2], cx
	test	cx, cx
	jne	L272
	mov	eax, ebx
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
	mov	eax, edx
	jmp	L275
	.p2align 4
L276:
	add	eax, 2
L275:
	cmp	WORD PTR [eax], 0
	jne	L276
	sub	eax, edx
	sar	eax
	ret
	.cfi_endproc
LFE62:
	.globl	_wcsncmp
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
_wcsncmp:
LFB63:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+16]
L278:
	test	ecx, ecx
	je	L279
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	jne	L279
	cmp	WORD PTR [eax], 0
	je	L279
	test	bx, bx
	je	L279
	sub	ecx, 1
	add	eax, 2
	add	edx, 2
	jmp	L278
L279:
	mov	ebx, 0
	test	ecx, ecx
	je	L281
	mov	ebx, -1
	movzx	ecx, WORD PTR [edx]
	cmp	WORD PTR [eax], cx
	jb	L281
	movzx	eax, WORD PTR [eax]
	cmp	cx, ax
	setb	bl
	movzx	ebx, bl
L281:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	jmp	L285
	.p2align 4
L287:
	sub	edx, 1
	add	eax, 2
L285:
	test	edx, edx
	je	L286
	cmp	cx, WORD PTR [eax]
	jne	L287
L286:
	test	edx, edx
	mov	edx, 0
	cmove	eax, edx
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
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	jmp	L291
	.p2align 5
L293:
	sub	eax, 1
	add	edx, 2
	add	ecx, 2
L291:
	test	eax, eax
	je	L292
	movzx	ebx, WORD PTR [ecx]
	cmp	WORD PTR [edx], bx
	je	L293
L292:
	mov	ebx, 0
	test	eax, eax
	je	L294
	mov	ebx, -1
	movzx	eax, WORD PTR [ecx]
	cmp	WORD PTR [edx], ax
	jb	L294
	movzx	eax, WORD PTR [edx]
	cmp	WORD PTR [ecx], ax
	setb	bl
	movzx	ebx, bl
L294:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	ecx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	mov	edx, ebx
	jmp	L298
	.p2align 5
L299:
	add	ecx, 2
	add	edx, 2
	movzx	esi, WORD PTR [ecx-2]
	mov	WORD PTR [edx-2], si
L298:
	sub	eax, 1
	cmp	eax, -1
	jne	L299
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
	mov	ecx, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	cmp	ecx, ebx
	je	L301
	mov	esi, ecx
	sub	esi, ebx
	lea	edx, [eax+eax]
	cmp	esi, edx
	jb	L302
	mov	edx, 0
	jmp	L303
	.p2align 4
L304:
	movzx	edx, WORD PTR [ebx+eax*2]
	mov	WORD PTR [ecx+eax*2], dx
L302:
	sub	eax, 1
	cmp	eax, -1
	jne	L304
L301:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4
L305:
	.cfi_restore_state
	movzx	esi, WORD PTR [ebx+edx*2]
	mov	WORD PTR [ecx+edx*2], si
	add	edx, 1
L303:
	cmp	edx, eax
	jne	L305
	jmp	L301
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
	mov	eax, DWORD PTR [esp+16]
	movzx	ecx, WORD PTR [esp+12]
	mov	edx, ebx
	jmp	L308
	.p2align 4
L309:
	add	edx, 2
	mov	WORD PTR [edx-2], cx
L308:
	sub	eax, 1
	cmp	eax, -1
	jne	L309
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
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	cmp	ecx, edx
	jnb	L311
	add	edx, ebx
	mov	eax, ebx
	mov	edi, ebx
	neg	edi
	jmp	L312
	.p2align 5
L313:
	lea	esi, [edx+edi]
	movzx	ebx, BYTE PTR [ecx-1+eax]
	mov	BYTE PTR [esi-1+eax], bl
	sub	eax, 1
L312:
	test	eax, eax
	jne	L313
L310:
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
L311:
	.cfi_restore_state
	je	L310
	add	ebx, edx
	mov	eax, ecx
	jmp	L315
	.p2align 5
L316:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	mov	BYTE PTR [edx-1], cl
L315:
	cmp	edx, ebx
	jne	L316
	jmp	L310
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
	je	L318
	mov	edi, esi
	xor	esi, esi
L318:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L319
	mov	eax, edx
	xor	edx, edx
L319:
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
	je	L321
	mov	esi, edi
	xor	edi, edi
L321:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L322
	mov	edx, eax
	xor	eax, eax
L322:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, WORD PTR [esp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE76:
	.globl	_rotr16
	.def	_rotr16;	.scl	2;	.type	32;	.endef
_rotr16:
LFB77:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, WORD PTR [esp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE77:
	.globl	_rotl8
	.def	_rotl8;	.scl	2;	.type	32;	.endef
_rotl8:
LFB78:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [esp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE78:
	.globl	_rotr8
	.def	_rotr8;	.scl	2;	.type	32;	.endef
_rotr8:
LFB79:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [esp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
	or	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE79:
	.globl	_bswap_16
	.def	_bswap_16;	.scl	2;	.type	32;	.endef
_bswap_16:
LFB80:
	.cfi_startproc
	movzx	eax, WORD PTR [esp+4]
	mov	edx, eax
	shr	edx, 8
	sal	eax, 8
	or	eax, edx
	ret
	.cfi_endproc
LFE80:
	.globl	_bswap_32
	.def	_bswap_32;	.scl	2;	.type	32;	.endef
_bswap_32:
LFB81:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, edx
	shr	ecx, 24
	mov	eax, edx
	and	eax, 16711680
	shr	eax, 8
	or	eax, ecx
	mov	ecx, edx
	and	ecx, 65280
	sal	ecx, 8
	or	eax, ecx
	sal	edx, 24
	or	eax, edx
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
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	mov	esi, ecx
	mov	edi, ebx
	mov	esi, edi
	xor	edi, edi
	shr	esi, 24
	mov	edx, ebx
	mov	eax, 0
	and	edx, 16711680
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	or	esi, eax
	or	edi, edx
	mov	edx, ebx
	mov	eax, 0
	and	edx, 65280
	shrd	eax, edx, 24
	shr	edx, 24
	or	esi, eax
	or	edi, edx
	mov	edx, ebx
	mov	eax, 0
	and	edx, 255
	shrd	eax, edx, 8
	shr	edx, 8
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	and	eax, -16777216
	mov	edx, 0
	shld	edx, eax, 8
	sal	eax, 8
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	and	eax, 16711680
	mov	edx, 0
	shld	edx, eax, 24
	sal	eax, 24
	or	esi, eax
	or	edi, edx
	mov	eax, ecx
	and	eax, 65280
	mov	edx, 0
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	or	eax, esi
	or	edx, edi
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	or	eax, ecx
	or	edx, ebx
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
L335:
	cmp	eax, 32
	je	L339
	bt	edx, eax
	jc	L340
	add	eax, 1
	jmp	L335
L340:
	add	eax, 1
	ret
L339:
	mov	eax, 0
	ret
	.cfi_endproc
LFE83:
	.globl	_libiberty_ffs
	.def	_libiberty_ffs;	.scl	2;	.type	32;	.endef
_libiberty_ffs:
LFB84:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, 0
	test	edx, edx
	je	L342
	mov	eax, 1
	jmp	L343
	.p2align 4
L344:
	sar	edx
	add	eax, 1
L343:
	test	dl, 1
	je	L344
L342:
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
	ja	L352
	fld	DWORD PTR LC3
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L347
L352:
	fstp	st(0)
L347:
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
	ja	L359
	fld	QWORD PTR LC5
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L354
L359:
	fstp	st(0)
L354:
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
	ja	L366
	fld	TBYTE PTR LC7
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L361
L366:
	fstp	st(0)
L361:
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
	jp	L369
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L375
	jne	L375
	jmp	L369
L376:
	fstp	st(0)
L369:
	ret
L375:
	fld	DWORD PTR LC9
	test	edx, edx
	jns	L373
	fstp	st(0)
	fld	DWORD PTR LC8
	jmp	L373
	.p2align 5
L372:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L376
	fmul	st, st(0)
L373:
	test	dl, 1
	je	L372
	fmul	st(1), st
	jmp	L372
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
	jp	L378
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L384
	jne	L384
	jmp	L378
L386:
	fstp	st(0)
L378:
	ret
L384:
	test	edx, edx
	js	L385
	fld	DWORD PTR LC9
	jmp	L382
L385:
	fld	DWORD PTR LC8
	jmp	L382
	.p2align 5
L381:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L386
	fmul	st, st(0)
L382:
	test	dl, 1
	je	L381
	fmul	st(1), st
	jmp	L381
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
	jp	L388
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L394
	jne	L394
	jmp	L388
L396:
	fstp	st(0)
L388:
	ret
L394:
	test	edx, edx
	js	L395
	fld	DWORD PTR LC9
	jmp	L392
L395:
	fld	DWORD PTR LC8
	jmp	L392
	.p2align 5
L391:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L396
	fmul	st, st(0)
L392:
	test	dl, 1
	je	L391
	fmul	st(1), st
	jmp	L391
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
	mov	ebx, esi
	add	ebx, DWORD PTR [esp+20]
	mov	eax, esi
	mov	ecx, DWORD PTR [esp+16]
	jmp	L398
	.p2align 5
L399:
	add	ecx, 1
	add	eax, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	dl, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], dl
L398:
	cmp	eax, ebx
	jne	L399
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
	jmp	L401
	.p2align 5
L403:
	add	esi, 1
	add	eax, 1
	sub	ebx, 1
L401:
	test	ebx, ebx
	je	L402
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	L403
L402:
	test	ebx, ebx
	jne	L404
	mov	BYTE PTR [eax], 0
L404:
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
L406:
	cmp	eax, edx
	je	L407
	cmp	BYTE PTR [ecx+eax], 0
	jne	L408
L407:
	ret
L408:
	add	eax, 1
	jmp	L406
	.cfi_endproc
LFE94:
	.globl	_strpbrk
	.def	_strpbrk;	.scl	2;	.type	32;	.endef
_strpbrk:
LFB95:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
L410:
	cmp	BYTE PTR [eax], 0
	je	L416
	mov	edx, ecx
	.p2align 4
L413:
	cmp	BYTE PTR [edx], 0
	je	L417
	add	edx, 1
	movzx	ebx, BYTE PTR [eax]
	cmp	BYTE PTR [edx-1], bl
	jne	L413
L411:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L417:
	.cfi_restore_state
	add	eax, 1
	jmp	L410
L416:
	mov	eax, 0
	jmp	L411
	.cfi_endproc
LFE95:
	.globl	_strrchr
	.def	_strrchr;	.scl	2;	.type	32;	.endef
_strrchr:
LFB96:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, 0
	.p2align 5
L420:
	movsx	ecx, BYTE PTR [eax]
	cmp	ebx, ecx
	cmove	edx, eax
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	L420
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
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
	mov	ebx, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	DWORD PTR [esp], edi
	call	_strlen
	mov	esi, eax
	mov	eax, ebx
	test	esi, esi
	je	L424
	movsx	ebp, BYTE PTR [edi]
L425:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], ebx
	call	_strchr
	mov	ebx, eax
	test	eax, eax
	je	L429
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], ebx
	call	_strncmp
	test	eax, eax
	je	L428
	add	ebx, 1
	jmp	L425
L429:
	mov	eax, 0
L424:
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
L428:
	.cfi_restore_state
	mov	eax, ebx
	jmp	L424
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
	ja	L443
	fstp	st(0)
L431:
	fldz
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L444
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L433
	jmp	L434
L444:
	fstp	st(1)
	fstp	st(1)
L434:
	ret
L443:
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jbe	L431
	fstp	st(0)
L433:
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
	mov	ecx, DWORD PTR [esp+36]
	mov	ebx, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+44]
	mov	edx, DWORD PTR [esp+48]
	mov	esi, ebx
	sub	esi, edx
	add	esi, ecx
	mov	eax, ecx
	test	edx, edx
	je	L446
	cmp	ebx, edx
	jb	L451
	mov	ebx, ecx
	lea	eax, [edx-1]
	mov	DWORD PTR [esp+12], eax
	lea	ebp, [edi+1]
	jmp	L447
	.p2align 4
L448:
	add	ebx, 1
L447:
	cmp	esi, ebx
	jb	L453
	movzx	eax, BYTE PTR [edi]
	cmp	BYTE PTR [ebx], al
	jne	L448
	lea	eax, [ebx+1]
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_memcmp
	test	eax, eax
	jne	L448
	mov	eax, ebx
	jmp	L446
L453:
	mov	eax, 0
L446:
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
L451:
	.cfi_restore_state
	mov	eax, 0
	jmp	L446
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
	fld	QWORD PTR [esp+4]
	fldz
	mov	edx, 0
	fcomip	st, st(1)
	ja	L472
L456:
	mov	eax, 0
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L458
	fldz
	fucomip	st, st(1)
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	fld	DWORD PTR LC8
	fcomip	st, st(1)
	seta	cl
	test	cl, al
	jne	L467
	mov	eax, 0
	jmp	L461
L472:
	fchs
	mov	edx, 1
	jmp	L456
	.p2align 5
L460:
	add	eax, 1
	fmul	DWORD PTR LC8
L458:
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L460
L461:
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L464
	fchs
L464:
	ret
	.p2align 4
L463:
	sub	eax, 1
	fadd	st, st(0)
L462:
	fld	DWORD PTR LC8
	fcomip	st, st(1)
	ja	L463
	jmp	L461
L467:
	mov	eax, 0
	jmp	L462
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
	sub	esp, 16
	.cfi_def_cfa_offset 32
	mov	esi, DWORD PTR [esp+40]
	mov	edi, DWORD PTR [esp+44]
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+12], 0
	jmp	L474
	.p2align 6
L475:
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
L474:
	mov	ecx, eax
	or	ecx, edx
	je	L477
	mov	ecx, eax
	and	ecx, 1
	mov	ebx, 0
	mov	DWORD PTR [esp], ecx
	mov	DWORD PTR [esp+4], ebx
	mov	ecx, DWORD PTR [esp]
	mov	ebx, DWORD PTR [esp+4]
	or	ecx, ebx
	je	L475
	add	DWORD PTR [esp+8], esi
	adc	DWORD PTR [esp+12], edi
	jmp	L475
L477:
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	add	esp, 16
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
	mov	edi, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, 1
	jmp	L479
	.p2align 5
L482:
	add	edx, edx
	add	ecx, ecx
L479:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L488
	test	edx, edx
	jns	L482
	mov	ebx, 0
	jmp	L481
L488:
	mov	ebx, 0
	jmp	L481
	.p2align 4
L484:
	shr	ecx
	shr	edx
L481:
	test	ecx, ecx
	je	L489
	cmp	edi, edx
	jb	L484
	sub	edi, edx
	or	ebx, ecx
	jmp	L484
L489:
	cmp	DWORD PTR [esp+24], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	not	eax
	cmp	al, dl
	cmovl	eax, edx
	mov	edx, 7
	test	al, al
	je	L492
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, [eax-1]
L492:
	mov	eax, edx
	ret
	.cfi_endproc
LFE104:
	.globl	___clrsbdi2
	.def	___clrsbdi2;	.scl	2;	.type	32;	.endef
___clrsbdi2:
LFB105:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	test	ebx, ebx
	js	L500
L495:
	mov	eax, 63
	mov	edx, ecx
	or	edx, ebx
	je	L496
	test	ebx, ebx
	je	L497
	bsr	eax, ebx
	xor	eax, 31
L498:
	sub	eax, 1
L496:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L500:
	.cfi_restore_state
	not	ecx
	not	ebx
	jmp	L495
L497:
	bsr	eax, ecx
	xor	eax, 31
	add	eax, 32
	jmp	L498
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
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, 0
	jmp	L502
	.p2align 4
L504:
	lea	ebx, [edx+ecx]
	test	al, 1
	cmovne	edx, ebx
	shr	eax
	add	ecx, ecx
L502:
	test	eax, eax
	jne	L504
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	edi, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	mov	ebp, ecx
	shr	ebp, 3
	mov	eax, ecx
	and	eax, -8
	cmp	edi, esi
	jb	L506
	lea	edx, [esi+ecx]
	cmp	edx, edi
	jnb	L507
L506:
	mov	edx, esi
	mov	ebx, edi
	lea	ebp, [esi+ebp*8]
	mov	DWORD PTR [esp+20], edi
	mov	DWORD PTR [esp+24], esi
	jmp	L508
	.p2align 5
L509:
	mov	esi, DWORD PTR [edx]
	mov	edi, DWORD PTR [edx+4]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	add	edx, 8
	add	ebx, 8
L508:
	cmp	edx, ebp
	jne	L509
	mov	edi, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	jmp	L510
	.p2align 4
L511:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edi+eax], dl
	add	eax, 1
L510:
	cmp	eax, ecx
	jb	L511
L505:
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
	.p2align 4
L513:
	.cfi_restore_state
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edi+ecx], al
L507:
	sub	ecx, 1
	cmp	ecx, -1
	jne	L513
	jmp	L505
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
	mov	ecx, DWORD PTR [esp+28]
	mov	edi, ecx
	shr	edi
	cmp	esi, ebx
	jb	L517
	lea	eax, [ebx+ecx]
	cmp	eax, esi
	jnb	L518
L517:
	mov	eax, ebx
	mov	edx, esi
	lea	edi, [ebx+edi*2]
	jmp	L519
	.p2align 4
L520:
	movzx	ebp, WORD PTR [eax]
	mov	WORD PTR [edx], bp
	add	eax, 2
	add	edx, 2
L519:
	cmp	eax, edi
	jne	L520
	test	cl, 1
	je	L516
	movzx	eax, BYTE PTR [ebx-1+ecx]
	mov	BYTE PTR [esi-1+ecx], al
L516:
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
	.p2align 4
L522:
	.cfi_restore_state
	movzx	eax, BYTE PTR [ebx+ecx]
	mov	BYTE PTR [esi+ecx], al
L518:
	sub	ecx, 1
	cmp	ecx, -1
	jne	L522
	jmp	L516
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
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	edi, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+32]
	mov	ebp, ecx
	shr	ebp, 2
	mov	eax, ecx
	and	eax, -4
	cmp	edi, esi
	jb	L525
	lea	edx, [esi+ecx]
	cmp	edx, edi
	jnb	L526
L525:
	mov	edx, esi
	mov	ebx, edi
	lea	ebp, [esi+ebp*4]
	mov	DWORD PTR [esp], eax
	jmp	L527
	.p2align 4
L528:
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ebx], eax
	add	edx, 4
	add	ebx, 4
L527:
	cmp	edx, ebp
	jne	L528
	mov	eax, DWORD PTR [esp]
	jmp	L529
	.p2align 4
L530:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [edi+eax], dl
	add	eax, 1
L529:
	cmp	eax, ecx
	jb	L530
L524:
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
	.p2align 4
L532:
	.cfi_restore_state
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edi+ecx], al
L526:
	sub	ecx, 1
	cmp	ecx, -1
	jne	L532
	jmp	L524
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
	js	L540
L539:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L540:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L539
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
	js	L543
L542:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L543:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L542
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
L546:
	cmp	eax, 16
	je	L547
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	L547
	add	eax, 1
	jmp	L546
L547:
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
L550:
	cmp	eax, 16
	je	L551
	bt	edx, eax
	jc	L551
	add	eax, 1
	jmp	L550
L551:
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
	jnb	L560
	fstp	st(1)
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
L559:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L560:
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
	jmp	L559
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
	jmp	L562
	.p2align 5
L564:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
L562:
	cmp	ecx, 16
	jne	L564
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
	jmp	L566
	.p2align 5
L568:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
L566:
	cmp	ecx, 16
	jne	L568
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
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	edx, 0
	jmp	L570
	.p2align 4
L572:
	lea	ebx, [edx+ecx]
	test	al, 1
	cmovne	edx, ebx
	shr	eax
	add	ecx, ecx
L570:
	test	eax, eax
	jne	L572
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	eax, 0
	test	ecx, ecx
	jne	L575
	jmp	L574
	.p2align 5
L577:
	lea	ebx, [eax+ecx]
	test	dl, 1
	cmovne	eax, ebx
	add	ecx, ecx
	shr	edx
L575:
	test	edx, edx
	jne	L577
L574:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	mov	edi, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, 1
	jmp	L580
	.p2align 5
L583:
	add	edx, edx
	add	ecx, ecx
L580:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L589
	test	edx, edx
	jns	L583
	mov	ebx, 0
	jmp	L582
L589:
	mov	ebx, 0
	jmp	L582
	.p2align 4
L585:
	shr	ecx
	shr	edx
L582:
	test	ecx, ecx
	je	L590
	cmp	edi, edx
	jb	L585
	sub	edi, edx
	or	ebx, ecx
	jmp	L585
L590:
	cmp	DWORD PTR [esp+24], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	ja	L595
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L592
L595:
	fstp	st(0)
	fstp	st(0)
L592:
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
	ja	L600
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L597
L600:
	fstp	st(0)
	fstp	st(0)
L597:
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
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+28]
	mov	ebp, 0
	test	eax, eax
	js	L611
L604:
	mov	edx, 0
	mov	BYTE PTR [esp+3], 0
	jmp	L605
L611:
	neg	eax
	mov	ebp, 1
	jmp	L604
	.p2align 6
L607:
	mov	esi, edx
	add	esi, DWORD PTR [esp+24]
	test	al, 1
	cmovne	edx, esi
	sal	DWORD PTR [esp+24]
	sar	eax
	add	BYTE PTR [esp+3], 1
L605:
	test	eax, eax
	setne	bl
	mov	esi, ebx
	cmp	BYTE PTR [esp+3], 31
	setbe	bl
	mov	ecx, esi
	test	bl, cl
	jne	L607
	mov	eax, edx
	neg	eax
	test	ebp, ebp
	cmove	eax, edx
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
LFE128:
	.globl	___divsi3
	.def	___divsi3;	.scl	2;	.type	32;	.endef
___divsi3:
LFB129:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 12
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	ebx, 0
	test	eax, eax
	js	L617
L613:
	test	edx, edx
	js	L618
L614:
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L617:
	.cfi_restore_state
	neg	eax
	mov	ebx, 1
	jmp	L613
L618:
	neg	edx
	xor	ebx, 1
	jmp	L614
	.cfi_endproc
LFE129:
	.globl	___modsi3
	.def	___modsi3;	.scl	2;	.type	32;	.endef
___modsi3:
LFB130:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 12
	.cfi_def_cfa_offset 20
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, 0
	test	edx, edx
	js	L624
L620:
	mov	ecx, eax
	neg	ecx
	cmovns	eax, ecx
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	___udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L624:
	.cfi_restore_state
	neg	edx
	mov	ebx, 1
	jmp	L620
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
	movzx	edi, WORD PTR [esp+16]
	movzx	edx, WORD PTR [esp+20]
	mov	ecx, 1
	jmp	L626
	.p2align 5
L629:
	add	edx, edx
	add	ecx, ecx
L626:
	cmp	dx, di
	setb	bl
	mov	esi, ebx
	test	cx, cx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L635
	test	dx, dx
	jns	L629
	mov	ebx, 0
	jmp	L628
L635:
	mov	ebx, 0
	jmp	L628
	.p2align 4
L631:
	shr	cx
	shr	dx
L628:
	test	cx, cx
	je	L636
	cmp	di, dx
	jb	L631
	sub	edi, edx
	or	ebx, ecx
	jmp	L631
L636:
	cmp	DWORD PTR [esp+24], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	mov	edi, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, 1
	jmp	L638
	.p2align 5
L641:
	add	edx, edx
	add	ecx, ecx
L638:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L647
	test	edx, edx
	jns	L641
	mov	ebx, 0
	jmp	L640
L647:
	mov	ebx, 0
	jmp	L640
	.p2align 4
L643:
	shr	ecx
	shr	edx
L640:
	test	ecx, ecx
	je	L648
	cmp	edi, edx
	jb	L643
	sub	edi, edx
	or	ebx, ecx
	jmp	L643
L648:
	cmp	DWORD PTR [esp+24], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	mov	ebx, DWORD PTR [esp+32]
	test	bl, 32
	je	L650
	mov	eax, 0
	lea	ecx, [ebx-32]
	sal	esi, cl
	mov	edx, esi
L652:
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
L650:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+4]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	L652
	mov	esi, DWORD PTR [esp]
	mov	edi, esi
	mov	ecx, ebx
	sal	edi, cl
	mov	eax, edi
	mov	edi, DWORD PTR [esp+4]
	sal	edi, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	esi, cl
	or	esi, edi
	mov	edx, esi
	jmp	L652
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
	sub	esp, 8
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	ebx, DWORD PTR [esp+32]
	test	bl, 32
	je	L655
	mov	esi, edx
	mov	edi, edx
	sar	edi, 31
	mov	edx, edi
	lea	ecx, [ebx-32]
	sar	esi, cl
	mov	eax, esi
L657:
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
L655:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+4]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	L657
	mov	edi, DWORD PTR [esp+4]
	mov	esi, edi
	mov	ecx, ebx
	sar	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [esp]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
	jmp	L657
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
	sub	esp, 48
	.cfi_def_cfa_offset 64
	mov	ecx, DWORD PTR [esp+64]
	mov	ebx, DWORD PTR [esp+68]
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
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	mov	DWORD PTR [esp+40], eax
	mov	DWORD PTR [esp+44], edx
	mov	esi, ecx
	mov	edi, ebx
	mov	edi, esi
	xor	esi, esi
	sal	edi, 8
	mov	esi, 0
	and	edi, 16711680
	mov	ebx, ecx
	xor	ecx, ecx
	sal	ebx, 24
	mov	eax, ecx
	mov	edx, ebx
	or	eax, DWORD PTR [esp]
	or	edx, DWORD PTR [esp+4]
	or	eax, DWORD PTR [esp+8]
	or	edx, DWORD PTR [esp+12]
	or	eax, DWORD PTR [esp+16]
	or	edx, DWORD PTR [esp+20]
	or	eax, DWORD PTR [esp+24]
	or	edx, DWORD PTR [esp+28]
	or	eax, DWORD PTR [esp+32]
	or	edx, DWORD PTR [esp+36]
	or	eax, DWORD PTR [esp+40]
	or	edx, DWORD PTR [esp+44]
	or	eax, esi
	or	edx, edi
	add	esp, 48
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
	mov	esi, edx
	shr	esi, 24
	mov	ebx, edx
	shr	ebx, 8
	and	ebx, 65280
	mov	ecx, edx
	sal	ecx, 8
	and	ecx, 16711680
	mov	eax, edx
	sal	eax, 24
	or	eax, esi
	or	eax, ebx
	or	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
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
	cmp	edx, 65536
	setb	al
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
	add	eax, ebx
	test	dl, -16
	sete	bl
	movzx	ebx, bl
	sal	ebx, 2
	mov	ecx, 4
	sub	ecx, ebx
	shr	edx, cl
	add	eax, ebx
	test	dl, 12
	sete	bl
	movzx	ebx, bl
	mov	esi, ebx
	add	esi, esi
	mov	ebx, 2
	mov	ecx, ebx
	sub	ecx, esi
	shr	edx, cl
	add	eax, esi
	test	dl, 2
	sete	cl
	movzx	ecx, cl
	sub	ebx, edx
	mov	edx, ecx
	imul	edx, ebx
	add	eax, edx
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
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	mov	eax, 0
	cmp	ebx, edi
	jl	L671
	mov	eax, 2
	jg	L671
	mov	eax, 0
	cmp	ecx, esi
	jb	L671
	cmp	esi, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
L671:
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
	mov	edx, DWORD PTR [esp+8]
	test	dx, dx
	sete	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, eax
	shr	edx, cl
	test	dl, dl
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	edx, cl
	add	eax, ecx
	test	dl, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	edx, cl
	add	eax, ecx
	test	dl, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	edx, cl
	and	edx, 3
	add	eax, ecx
	mov	ebx, edx
	not	ebx
	shr	edx
	mov	ecx, 2
	sub	ecx, edx
	and	ebx, 1
	mov	edx, ebx
	neg	edx
	and	edx, ecx
	add	eax, edx
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
	sub	esp, 8
	.cfi_def_cfa_offset 24
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	mov	ebx, DWORD PTR [esp+32]
	test	bl, 32
	je	L687
	mov	edx, 0
	mov	esi, edi
	lea	ecx, [ebx-32]
	shr	esi, cl
	mov	eax, esi
L689:
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
L687:
	.cfi_restore_state
	mov	esi, DWORD PTR [esp]
	mov	edi, DWORD PTR [esp+4]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	L689
	mov	edi, DWORD PTR [esp+4]
	mov	esi, edi
	mov	ecx, ebx
	shr	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [esp]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
	jmp	L689
	.cfi_endproc
LFE141:
	.globl	___muldsi3
	.def	___muldsi3;	.scl	2;	.type	32;	.endef
___muldsi3:
LFB142:
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
	movzx	edi, ax
	movzx	ebp, WORD PTR [esp+24]
	mov	esi, edi
	imul	esi, ebp
	mov	edx, esi
	shr	edx, 16
	movzx	esi, si
	shr	eax, 16
	imul	ebp, eax
	add	edx, ebp
	mov	ebp, edx
	sal	ebp, 16
	lea	ecx, [ebp+0+esi]
	shr	edx, 16
	mov	ebx, edx
	mov	edx, ecx
	shr	edx, 16
	movzx	esi, cx
	mov	ebp, DWORD PTR [esp+24]
	shr	ebp, 16
	imul	edi, ebp
	add	edx, edi
	mov	edi, edx
	sal	edi, 16
	lea	ecx, [edi+esi]
	shr	edx, 16
	add	edx, ebx
	imul	eax, ebp
	lea	ebx, [eax+edx]
	mov	eax, ecx
	mov	edx, ebx
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
LFE142:
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
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	esi, DWORD PTR [esp+48]
	mov	edi, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+56]
	mov	edx, DWORD PTR [esp+60]
	mov	ebp, eax
	mov	DWORD PTR [esp+20], esi
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	ecx, DWORD PTR [esp+8]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], esi
	call	___muldsi3
	mov	ebx, edi
	imul	ebx, ebp
	mov	esi, DWORD PTR [esp+12]
	mov	edi, DWORD PTR [esp+20]
	imul	esi, edi
	add	ebx, esi
	lea	edx, [ebx+edx]
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
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	ecx, DWORD PTR [esp+4]
	mov	eax, ecx
	shr	eax, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, eax
	mov	ebx, edx
	shrd	ecx, ebx, 1
	shr	ebx
	and	ecx, 1431655765
	and	ebx, 1431655765
	sub	eax, ecx
	sbb	edx, ebx
	mov	esi, eax
	mov	edi, edx
	shrd	eax, edx, 2
	shr	edx, 2
	mov	ecx, eax
	mov	ebx, edx
	and	ecx, 858993459
	and	ebx, 858993459
	mov	eax, esi
	mov	edx, edi
	and	eax, 858993459
	and	edx, 858993459
	add	eax, ecx
	adc	edx, ebx
	mov	esi, eax
	mov	edi, edx
	shrd	eax, edx, 4
	shr	edx, 4
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, esi
	mov	edx, edi
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	add	edx, eax
	mov	eax, edx
	shr	eax, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
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
LFE147:
	.globl	___popcountsi2
	.def	___popcountsi2;	.scl	2;	.type	32;	.endef
___popcountsi2:
LFB148:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	shr	eax
	and	eax, 1431655765
	sub	edx, eax
	mov	eax, edx
	shr	eax, 2
	and	eax, 858993459
	and	edx, 858993459
	add	edx, eax
	mov	eax, edx
	shr	eax, 4
	add	edx, eax
	and	edx, 252645135
	mov	eax, edx
	shr	eax, 16
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
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, edx
	shr	ecx, 31
	fld1
	jmp	L701
	.p2align 5
L699:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L700
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L701:
	test	dl, 1
	je	L699
	fmul	st, st(1)
	jmp	L699
L700:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	L704
	fstp	st(0)
	fdivr	DWORD PTR LC10
	jmp	L702
L704:
	fstp	st(1)
L702:
	ret
	.cfi_endproc
LFE149:
	.globl	___powisf2
	.def	___powisf2;	.scl	2;	.type	32;	.endef
___powisf2:
LFB150:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, edx
	shr	ecx, 31
	fld1
	jmp	L708
	.p2align 5
L706:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L707
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L708:
	test	dl, 1
	je	L706
	fmul	st, st(1)
	jmp	L706
L707:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	L711
	fstp	st(0)
	fdivr	DWORD PTR LC10
	jmp	L709
L711:
	fstp	st(1)
L709:
	ret
	.cfi_endproc
LFE150:
	.globl	___ucmpdi2
	.def	___ucmpdi2;	.scl	2;	.type	32;	.endef
___ucmpdi2:
LFB151:
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
	mov	ebx, DWORD PTR [esp+24]
	mov	esi, DWORD PTR [esp+28]
	mov	edi, DWORD PTR [esp+32]
	mov	eax, 0
	cmp	ebx, edi
	jb	L713
	mov	eax, 2
	cmp	edi, ebx
	jb	L713
	mov	eax, 0
	cmp	ecx, esi
	jb	L713
	cmp	esi, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
L713:
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
	.long	1056964608
	.align 4
LC9:
	.long	1073741824
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
