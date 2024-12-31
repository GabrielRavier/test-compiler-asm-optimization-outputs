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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	cmp	eax, edx
	jnb	L2
	add	eax, edi
	lea	ecx, [edx+edi]
	mov	ebx, edi
	mov	esi, ecx
	mov	ecx, eax
	jmp	L3
L4:
	mov	eax, edi
	neg	eax
	mov	edx, eax
	mov	eax, ecx
	sub	eax, edi
	movzx	eax, BYTE PTR [eax-1+ebx]
	add	edx, esi
	mov	BYTE PTR [edx-1+ebx], al
	sub	ebx, 1
L3:
	test	ebx, ebx
	jne	L4
	mov	edx, DWORD PTR [ebp+8]
	jmp	L5
L2:
	cmp	edx, eax
	je	L5
	lea	esi, [edx+edi]
	mov	ecx, edx
	jmp	L6
L7:
	add	eax, 1
	add	ecx, 1
	movzx	ebx, BYTE PTR [eax-1]
	mov	BYTE PTR [ecx-1], bl
L6:
	cmp	ecx, esi
	jne	L7
L5:
	mov	eax, edx
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
LFE2:
	.globl	_memccpy
	.def	_memccpy;	.scl	2;	.type	32;	.endef
_memccpy:
LFB3:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+20]
	movzx	esi, BYTE PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	L9
L11:
	sub	edx, 1
	add	ebx, 1
	add	eax, 1
L9:
	test	edx, edx
	je	L10
	movzx	ecx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], cl
	movzx	ecx, cl
	cmp	esi, ecx
	jne	L11
L10:
	test	edx, edx
	je	L13
	add	eax, 1
	jmp	L12
L13:
	mov	eax, 0
L12:
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_memchr
	.def	_memchr;	.scl	2;	.type	32;	.endef
_memchr:
LFB4:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+16]
	movzx	ecx, BYTE PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	L15
L17:
	add	eax, 1
	sub	edx, 1
L15:
	test	edx, edx
	je	L16
	movzx	ebx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	L17
L16:
	test	edx, edx
	jne	L18
	mov	eax, 0
L18:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_memcmp
	.def	_memcmp;	.scl	2;	.type	32;	.endef
_memcmp:
LFB5:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	L21
L23:
	sub	ecx, 1
	add	eax, 1
	add	edx, 1
L21:
	test	ecx, ecx
	je	L22
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	je	L23
L22:
	test	ecx, ecx
	je	L25
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
	jmp	L24
L25:
	mov	eax, 0
L24:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_memcpy
	.def	_memcpy;	.scl	2;	.type	32;	.endef
_memcpy:
LFB6:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, edx
	add	ebx, DWORD PTR [ebp+16]
	mov	esi, ebx
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, edx
	jmp	L27
L28:
	add	ecx, 1
	add	eax, 1
	movzx	ebx, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], bl
L27:
	cmp	eax, esi
	jne	L28
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_memrchr
	.def	_memrchr;	.scl	2;	.type	32;	.endef
_memrchr:
LFB7:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [ebp+8]
	movzx	ecx, BYTE PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	lea	edx, [ebx-1]
	jmp	L30
L32:
	movzx	esi, BYTE PTR [eax+edx]
	lea	ebx, [edx-1]
	cmp	ecx, esi
	jne	L33
	add	eax, edx
	jmp	L31
L33:
	mov	edx, ebx
L30:
	cmp	edx, -1
	jne	L32
	mov	eax, 0
L31:
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_memset
	.def	_memset;	.scl	2;	.type	32;	.endef
_memset:
LFB8:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, edx
	add	ecx, DWORD PTR [ebp+16]
	mov	eax, edx
	jmp	L35
L36:
	movzx	ebx, BYTE PTR [ebp+12]
	mov	BYTE PTR [eax], bl
	add	eax, 1
L35:
	cmp	eax, ecx
	jne	L36
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_stpcpy
	.def	_stpcpy;	.scl	2;	.type	32;	.endef
_stpcpy:
LFB9:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	L38
L39:
	add	edx, 1
	add	eax, 1
L38:
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L39
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_strchrnul
	.def	_strchrnul;	.scl	2;	.type	32;	.endef
_strchrnul:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, BYTE PTR [ebp+12]
	jmp	L41
L43:
	add	eax, 1
L41:
	cmp	BYTE PTR [eax], 0
	je	L42
	movzx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	L43
L42:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_strchr
	.def	_strchr;	.scl	2;	.type	32;	.endef
_strchr:
LFB11:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
L46:
	movsx	edx, BYTE PTR [eax]
	cmp	DWORD PTR [ebp+12], edx
	je	L45
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	L46
	mov	eax, 0
L45:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	L49
L51:
	add	eax, 1
	add	edx, 1
L49:
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	jne	L50
	cmp	BYTE PTR [eax], 0
	jne	L51
L50:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_strlen
	.def	_strlen;	.scl	2;	.type	32;	.endef
_strlen:
LFB13:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	jmp	L53
L54:
	add	eax, 1
L53:
	cmp	BYTE PTR [eax], 0
	jne	L54
	sub	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmp	DWORD PTR [ebp+16], 0
	je	L60
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	jmp	L57
L59:
	add	eax, 1
	add	edx, 1
L57:
	cmp	BYTE PTR [eax], 0
	je	L58
	mov	edi, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+16]
	lea	esi, [edi-1+ebx]
	cmp	eax, esi
	setne	cl
	mov	edi, ecx
	cmp	BYTE PTR [edx], 0
	setne	cl
	mov	esi, ecx
	mov	ecx, edi
	mov	ebx, esi
	test	cl, bl
	je	L58
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	je	L59
L58:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
	jmp	L56
L60:
	mov	eax, 0
L56:
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
LFE14:
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ecx
	jmp	L62
L63:
	movzx	ebx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], bl
	movzx	ebx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], bl
	add	edx, 2
	add	eax, 2
L62:
	mov	ebx, ecx
	add	ebx, DWORD PTR [ebp+16]
	sub	ebx, eax
	cmp	ebx, 1
	jg	L63
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_isalpha
	.def	_isalpha;	.scl	2;	.type	32;	.endef
_isalpha:
LFB16:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_isascii
	.def	_isascii;	.scl	2;	.type	32;	.endef
_isascii:
LFB17:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	cmp	DWORD PTR [ebp+8], 127
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_isblank
	.def	_isblank;	.scl	2;	.type	32;	.endef
_isblank:
LFB18:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 32
	sete	dl
	cmp	eax, 9
	sete	al
	or	eax, edx
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_iscntrl
	.def	_iscntrl;	.scl	2;	.type	32;	.endef
_iscntrl:
LFB19:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	cmp	edx, 31
	setbe	al
	cmp	edx, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_isdigit
	.def	_isdigit;	.scl	2;	.type	32;	.endef
_isdigit:
LFB20:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.globl	_isgraph
	.def	_isgraph;	.scl	2;	.type	32;	.endef
_isgraph:
LFB21:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 33
	cmp	eax, 93
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_islower
	.def	_islower;	.scl	2;	.type	32;	.endef
_islower:
LFB22:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_isprint
	.def	_isprint;	.scl	2;	.type	32;	.endef
_isprint:
LFB23:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 32
	cmp	eax, 94
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.globl	_isspace
	.def	_isspace;	.scl	2;	.type	32;	.endef
_isspace:
LFB24:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 32
	sete	dl
	sub	eax, 9
	cmp	eax, 4
	setbe	al
	or	eax, edx
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.globl	_isupper
	.def	_isupper;	.scl	2;	.type	32;	.endef
_isupper:
LFB25:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 65
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.globl	_iswcntrl
	.def	_iswcntrl;	.scl	2;	.type	32;	.endef
_iswcntrl:
LFB26:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	cmp	ax, 31
	setbe	cl
	movzx	edx, ax
	sub	edx, 127
	cmp	edx, 32
	setbe	dl
	or	cl, dl
	jne	L76
	movzx	edx, ax
	sub	edx, 8232
	cmp	edx, 1
	jbe	L77
	movzx	eax, ax
	sub	eax, 65529
	cmp	eax, 2
	ja	L78
	mov	eax, 1
	jmp	L75
L76:
	mov	eax, 1
	jmp	L75
L77:
	mov	eax, 1
	jmp	L75
L78:
	mov	eax, 0
L75:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.globl	_iswdigit
	.def	_iswdigit;	.scl	2;	.type	32;	.endef
_iswdigit:
LFB27:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.globl	_iswprint
	.def	_iswprint;	.scl	2;	.type	32;	.endef
_iswprint:
LFB28:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	cmp	ax, 254
	ja	L81
	lea	eax, [eax+1]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
	jmp	L82
L81:
	cmp	ax, 8231
	setbe	cl
	movzx	edx, ax
	sub	edx, 8234
	cmp	edx, 47061
	setbe	dl
	or	cl, dl
	jne	L83
	movzx	edx, ax
	sub	edx, 57344
	cmp	edx, 8184
	jbe	L84
	movzx	edx, ax
	sub	edx, 65532
	cmp	edx, 1048579
	ja	L85
	not	eax
	test	eax, 65534
	je	L86
	mov	eax, 1
	jmp	L82
L83:
	mov	eax, 1
	jmp	L82
L84:
	mov	eax, 1
	jmp	L82
L85:
	mov	eax, 0
	jmp	L82
L86:
	mov	eax, 0
L82:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_iswxdigit
	.def	_iswxdigit;	.scl	2;	.type	32;	.endef
_iswxdigit:
LFB29:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	movzx	edx, ax
	sub	edx, 48
	cmp	edx, 9
	jbe	L89
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	ja	L90
	mov	eax, 1
	jmp	L88
L89:
	mov	eax, 1
	jmp	L88
L90:
	mov	eax, 0
L88:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_toascii
	.def	_toascii;	.scl	2;	.type	32;	.endef
_toascii:
LFB30:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 127
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_fdim
	.def	_fdim;	.scl	2;	.type	32;	.endef
_fdim:
LFB31:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+16]
	fld	QWORD PTR [ebp+8]
	fucomi	st, st(0)
	jp	L95
	fxch	st(1)
	fucomi	st, st(0)
	jp	L100
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L99
	fsubrp	st(1), st
	jmp	L93
L95:
	fstp	st(1)
	jmp	L93
L99:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L93
L100:
	fstp	st(1)
L93:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.globl	_fdimf
	.def	_fdimf;	.scl	2;	.type	32;	.endef
_fdimf:
LFB32:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fucomi	st, st(0)
	jp	L104
	fxch	st(1)
	fucomi	st, st(0)
	jp	L109
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L108
	fsubrp	st(1), st
	jmp	L102
L104:
	fstp	st(1)
	jmp	L102
L108:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L102
L109:
	fstp	st(1)
L102:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.globl	_fmax
	.def	_fmax;	.scl	2;	.type	32;	.endef
_fmax:
LFB33:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+16]
	fld	QWORD PTR [ebp+8]
	fucomi	st, st(0)
	jp	L114
	fxch	st(1)
	fucomi	st, st(0)
	jp	L120
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
	je	L112
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L121
	fstp	st(0)
	jmp	L111
L112:
	fcomi	st, st(1)
	jbe	L122
	fstp	st(1)
	jmp	L111
L114:
	fstp	st(0)
	jmp	L111
L120:
	fstp	st(0)
	jmp	L111
L121:
	fstp	st(1)
	jmp	L111
L122:
	fstp	st(0)
L111:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.globl	_fmaxf
	.def	_fmaxf;	.scl	2;	.type	32;	.endef
_fmaxf:
LFB34:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fucomi	st, st(0)
	jp	L127
	fxch	st(1)
	fucomi	st, st(0)
	jp	L133
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
	je	L125
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L134
	fstp	st(0)
	jmp	L124
L125:
	fcomi	st, st(1)
	jbe	L135
	fstp	st(1)
	jmp	L124
L127:
	fstp	st(0)
	jmp	L124
L133:
	fstp	st(0)
	jmp	L124
L134:
	fstp	st(1)
	jmp	L124
L135:
	fstp	st(0)
L124:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.globl	_fmaxl
	.def	_fmaxl;	.scl	2;	.type	32;	.endef
_fmaxl:
LFB35:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+8]
	fucomi	st, st(0)
	jp	L140
	fxch	st(1)
	fucomi	st, st(0)
	jp	L146
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
	je	L138
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L147
	fstp	st(0)
	jmp	L137
L138:
	fcomi	st, st(1)
	jbe	L148
	fstp	st(1)
	jmp	L137
L140:
	fstp	st(0)
	jmp	L137
L146:
	fstp	st(0)
	jmp	L137
L147:
	fstp	st(1)
	jmp	L137
L148:
	fstp	st(0)
L137:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.globl	_fmin
	.def	_fmin;	.scl	2;	.type	32;	.endef
_fmin:
LFB36:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+16]
	fld	QWORD PTR [ebp+8]
	fucomi	st, st(0)
	jp	L159
	fxch	st(1)
	fucomi	st, st(0)
	jp	L154
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
	je	L151
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L160
	fstp	st(1)
	jmp	L150
L151:
	fcomi	st, st(1)
	jbe	L161
	fstp	st(0)
	jmp	L150
L154:
	fstp	st(0)
	jmp	L150
L159:
	fstp	st(0)
	jmp	L150
L160:
	fstp	st(0)
	jmp	L150
L161:
	fstp	st(1)
L150:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.globl	_fminf
	.def	_fminf;	.scl	2;	.type	32;	.endef
_fminf:
LFB37:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fucomi	st, st(0)
	jp	L172
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
	je	L164
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L173
	fstp	st(1)
	jmp	L163
L164:
	fcomi	st, st(1)
	jbe	L174
	fstp	st(0)
	jmp	L163
L167:
	fstp	st(0)
	jmp	L163
L172:
	fstp	st(0)
	jmp	L163
L173:
	fstp	st(0)
	jmp	L163
L174:
	fstp	st(1)
L163:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.globl	_fminl
	.def	_fminl;	.scl	2;	.type	32;	.endef
_fminl:
LFB38:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+8]
	fucomi	st, st(0)
	jp	L185
	fxch	st(1)
	fucomi	st, st(0)
	jp	L180
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
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L186
	fstp	st(1)
	jmp	L176
L177:
	fcomi	st, st(1)
	jbe	L187
	fstp	st(0)
	jmp	L176
L180:
	fstp	st(0)
	jmp	L176
L185:
	fstp	st(0)
	jmp	L176
L186:
	fstp	st(0)
	jmp	L176
L187:
	fstp	st(1)
L176:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, OFFSET FLAT:_s.0
	jmp	L189
L190:
	mov	ecx, edx
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [eax], cl
	add	eax, 1
	shr	edx, 6
L189:
	test	edx, edx
	jne	L190
	mov	BYTE PTR [eax], 0
	mov	eax, OFFSET FLAT:_s.0
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE39:
.lcomm _seed,8,8
	.globl	_srand
	.def	_srand;	.scl	2;	.type	32;	.endef
_srand:
LFB40:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 1
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, 0
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE40:
	.globl	_rand
	.def	_rand;	.scl	2;	.type	32;	.endef
_rand:
LFB41:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
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
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE41:
	.globl	_insque
	.def	_insque;	.scl	2;	.type	32;	.endef
_insque:
LFB42:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	edx, edx
	jne	L194
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	jmp	L193
L194:
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	cmp	DWORD PTR [eax], 0
	je	L193
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [edx+4], eax
L193:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE42:
	.globl	_remque
	.def	_remque;	.scl	2;	.type	32;	.endef
_remque:
LFB43:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cmp	DWORD PTR [eax], 0
	je	L197
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L197:
	cmp	DWORD PTR [eax+4], 0
	je	L196
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
L196:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 44
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+20]
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-28], eax
	mov	ebx, 0
	jmp	L200
L203:
	mov	eax, DWORD PTR [ebp-28]
	mov	DWORD PTR [esp+4], eax
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], ecx
	call	[DWORD PTR [ebp+24]]
	add	DWORD PTR [ebp-28], edi
	test	eax, eax
	jne	L201
	imul	ebx, edi
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	L202
L201:
	add	ebx, 1
L200:
	cmp	ebx, esi
	jne	L203
	lea	eax, [esi+1]
	mov	ecx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	imul	esi, edi
	mov	eax, esi
	add	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+8], edi
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_memcpy
L202:
	add	esp, 44
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
LFE44:
	.globl	_lfind
	.def	_lfind;	.scl	2;	.type	32;	.endef
_lfind:
LFB45:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [eax]
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, 0
	jmp	L205
L208:
	mov	DWORD PTR [esp+4], esi
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [ebp+24]]
	add	esi, DWORD PTR [ebp+20]
	test	eax, eax
	jne	L206
	imul	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	L207
L206:
	add	ebx, 1
L205:
	cmp	ebx, edi
	jne	L208
	mov	eax, 0
L207:
	add	esp, 28
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
LFE45:
	.globl	_abs
	.def	_abs;	.scl	2;	.type	32;	.endef
_abs:
LFB46:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE46:
	.globl	_atoi
	.def	_atoi;	.scl	2;	.type	32;	.endef
_atoi:
LFB47:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+8]
	jmp	L211
L212:
	add	ebx, 1
L211:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L212
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L218
	cmp	eax, 45
	jne	L219
	mov	edx, 1
	jmp	L213
L218:
	mov	edx, 0
L213:
	add	ebx, 1
	jmp	L214
L219:
	mov	edx, 0
L214:
	mov	eax, 0
	jmp	L215
L216:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	ecx, BYTE PTR [ebx-1]
	sub	ecx, 48
	sub	eax, ecx
L215:
	movsx	ecx, BYTE PTR [ebx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	L216
	test	edx, edx
	jne	L217
	neg	eax
L217:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE47:
	.globl	_atol
	.def	_atol;	.scl	2;	.type	32;	.endef
_atol:
LFB48:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+8]
	jmp	L222
L223:
	add	ebx, 1
L222:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L223
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L229
	cmp	eax, 45
	jne	L230
	mov	edx, 1
	jmp	L224
L229:
	mov	edx, 0
L224:
	add	ebx, 1
	jmp	L225
L230:
	mov	edx, 0
L225:
	mov	eax, 0
	jmp	L226
L227:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ebx, 1
	movsx	ecx, BYTE PTR [ebx-1]
	sub	ecx, 48
	sub	eax, ecx
L226:
	movsx	ecx, BYTE PTR [ebx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	L227
	test	edx, edx
	jne	L228
	neg	eax
L228:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	jmp	L233
L234:
	add	ebx, 1
L233:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L234
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L240
	cmp	eax, 45
	jne	L241
	mov	ecx, 1
	jmp	L235
L240:
	mov	ecx, 0
L235:
	add	ebx, 1
	jmp	L236
L241:
	mov	ecx, 0
L236:
	mov	esi, 0
	mov	edi, 0
	jmp	L237
L238:
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
L237:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	L238
	test	ecx, ecx
	jne	L242
	mov	eax, esi
	mov	edx, edi
	neg	eax
	adc	edx, 0
	neg	edx
	jmp	L239
L242:
	mov	eax, esi
	mov	edx, edi
L239:
	add	esp, 28
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
LFE49:
	.globl	_bsearch
	.def	_bsearch;	.scl	2;	.type	32;	.endef
_bsearch:
LFB50:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+20]
	jmp	L244
L248:
	mov	ebx, esi
	shr	ebx
	imul	ebx, edi
	add	ebx, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], ebx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [ebp+24]]
	test	eax, eax
	jns	L245
	shr	esi
	jmp	L244
L245:
	jle	L249
	lea	eax, [ebx+edi]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, esi
	shr	eax
	sub	esi, 1
	sub	esi, eax
L244:
	test	esi, esi
	jne	L248
	mov	eax, 0
	jmp	L247
L249:
	mov	eax, ebx
L247:
	add	esp, 28
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
LFE50:
	.globl	_bsearch_r
	.def	_bsearch_r;	.scl	2;	.type	32;	.endef
_bsearch_r:
LFB51:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+12]
	jmp	L251
L254:
	mov	ebx, esi
	sar	ebx
	imul	ebx, DWORD PTR [ebp+20]
	add	ebx, edi
	mov	eax, DWORD PTR [ebp+28]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], ebx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [ebp+24]]
	test	eax, eax
	je	L255
	jle	L253
	mov	edi, ebx
	add	edi, DWORD PTR [ebp+20]
	sub	esi, 1
L253:
	sar	esi
L251:
	test	esi, esi
	jne	L254
	mov	eax, 0
	jmp	L252
L255:
	mov	eax, ebx
L252:
	add	esp, 28
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
LFE51:
	.globl	_div
	.def	_div;	.scl	2;	.type	32;	.endef
_div:
LFB52:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, ecx
	neg	eax
	mov	esi, eax
	mov	eax, ebx
	adc	eax, 0
	mov	edi, eax
	neg	edi
	mov	eax, ecx
	cmovns	eax, esi
	mov	DWORD PTR [ebp-24], eax
	mov	eax, ebx
	cmovns	eax, edi
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	add	esp, 12
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
LFE53:
	.globl	_imaxdiv
	.def	_imaxdiv;	.scl	2;	.type	32;	.endef
_imaxdiv:
LFB54:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 44
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	call	___divdi3
	mov	DWORD PTR [ebp-40], eax
	mov	DWORD PTR [ebp-36], edx
	mov	edx, DWORD PTR [ebp-32]
	mov	ecx, DWORD PTR [ebp-28]
	mov	DWORD PTR [esp+8], edx
	mov	DWORD PTR [esp+12], ecx
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	call	___moddi3
	mov	esi, DWORD PTR [ebp-40]
	mov	edi, DWORD PTR [ebp-36]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 44
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
LFE54:
	.globl	_labs
	.def	_labs;	.scl	2;	.type	32;	.endef
_labs:
LFB55:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE55:
	.globl	_ldiv
	.def	_ldiv;	.scl	2;	.type	32;	.endef
_ldiv:
LFB56:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, ecx
	neg	eax
	mov	esi, eax
	mov	eax, ebx
	adc	eax, 0
	mov	edi, eax
	neg	edi
	mov	eax, ecx
	cmovns	eax, esi
	mov	DWORD PTR [ebp-24], eax
	mov	eax, ebx
	cmovns	eax, edi
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	add	esp, 12
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
LFE57:
	.globl	_lldiv
	.def	_lldiv;	.scl	2;	.type	32;	.endef
_lldiv:
LFB58:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 44
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	call	___divdi3
	mov	DWORD PTR [ebp-40], eax
	mov	DWORD PTR [ebp-36], edx
	mov	edx, DWORD PTR [ebp-32]
	mov	ecx, DWORD PTR [ebp-28]
	mov	DWORD PTR [esp+8], edx
	mov	DWORD PTR [esp+12], ecx
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], edi
	call	___moddi3
	mov	esi, DWORD PTR [ebp-40]
	mov	edi, DWORD PTR [ebp-36]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
	add	esp, 44
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
LFE58:
	.globl	_wcschr
	.def	_wcschr;	.scl	2;	.type	32;	.endef
_wcschr:
LFB59:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [ebp+12]
	jmp	L264
L266:
	add	eax, 2
L264:
	cmp	WORD PTR [eax], 0
	je	L265
	cmp	dx, WORD PTR [eax]
	jne	L266
L265:
	cmp	WORD PTR [eax], 0
	jne	L267
	mov	eax, 0
L267:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	L270
L272:
	add	eax, 2
	add	edx, 2
L270:
	movzx	ecx, WORD PTR [edx]
	cmp	WORD PTR [eax], cx
	jne	L271
	cmp	WORD PTR [eax], 0
	je	L271
	test	cx, cx
	jne	L272
L271:
	movzx	ecx, WORD PTR [edx]
	cmp	WORD PTR [eax], cx
	jb	L274
	movzx	eax, WORD PTR [eax]
	cmp	cx, ax
	setb	al
	movzx	eax, al
	jmp	L273
L274:
	mov	eax, -1
L273:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE60:
	.globl	_wcscpy
	.def	_wcscpy;	.scl	2;	.type	32;	.endef
_wcscpy:
LFB61:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ecx
L276:
	add	edx, 2
	add	eax, 2
	movzx	ebx, WORD PTR [edx-2]
	mov	WORD PTR [eax-2], bx
	test	bx, bx
	jne	L276
	mov	eax, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE61:
	.globl	_wcslen
	.def	_wcslen;	.scl	2;	.type	32;	.endef
_wcslen:
LFB62:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	jmp	L278
L279:
	add	eax, 2
L278:
	cmp	WORD PTR [eax], 0
	jne	L279
	sub	eax, edx
	sar	eax
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	jmp	L281
L283:
	sub	ecx, 1
	add	eax, 2
	add	edx, 2
L281:
	test	ecx, ecx
	je	L282
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	jne	L282
	cmp	WORD PTR [eax], 0
	je	L282
	test	bx, bx
	jne	L283
L282:
	test	ecx, ecx
	je	L285
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	jb	L286
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	setb	al
	movzx	eax, al
	jmp	L284
L285:
	mov	eax, 0
	jmp	L284
L286:
	mov	eax, -1
L284:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE63:
	.globl	_wmemchr
	.def	_wmemchr;	.scl	2;	.type	32;	.endef
_wmemchr:
LFB64:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+16]
	movzx	ecx, WORD PTR [ebp+12]
	jmp	L288
L290:
	sub	edx, 1
	add	eax, 2
L288:
	test	edx, edx
	je	L289
	cmp	cx, WORD PTR [eax]
	jne	L290
L289:
	test	edx, edx
	jne	L291
	mov	eax, 0
L291:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE64:
	.globl	_wmemcmp
	.def	_wmemcmp;	.scl	2;	.type	32;	.endef
_wmemcmp:
LFB65:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	jmp	L294
L296:
	sub	ecx, 1
	add	eax, 2
	add	edx, 2
L294:
	test	ecx, ecx
	je	L295
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	je	L296
L295:
	test	ecx, ecx
	je	L298
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	jb	L299
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	setb	al
	movzx	eax, al
	jmp	L297
L298:
	mov	eax, 0
	jmp	L297
L299:
	mov	eax, -1
L297:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE65:
	.globl	_wmemcpy
	.def	_wmemcpy;	.scl	2;	.type	32;	.endef
_wmemcpy:
LFB66:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+16]
	mov	eax, ebx
	jmp	L301
L302:
	add	ecx, 2
	add	eax, 2
	movzx	esi, WORD PTR [ecx-2]
	mov	WORD PTR [eax-2], si
L301:
	sub	edx, 1
	cmp	edx, -1
	jne	L302
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE66:
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	edx, ebx
	je	L304
	mov	esi, edx
	sub	esi, ebx
	lea	ecx, [eax+eax]
	cmp	esi, ecx
	jb	L305
	mov	ecx, 0
	jmp	L306
L307:
	movzx	ecx, WORD PTR [ebx+eax*2]
	mov	WORD PTR [edx+eax*2], cx
L305:
	sub	eax, 1
	cmp	eax, -1
	jne	L307
	jmp	L304
L308:
	movzx	esi, WORD PTR [ebx+ecx*2]
	mov	WORD PTR [edx+ecx*2], si
	add	ecx, 1
L306:
	cmp	ecx, eax
	jne	L308
L304:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE67:
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+16]
	movzx	ebx, WORD PTR [ebp+12]
	mov	eax, ecx
	jmp	L310
L311:
	add	eax, 2
	mov	WORD PTR [eax-2], bx
L310:
	sub	edx, 1
	cmp	edx, -1
	jne	L311
	mov	eax, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE68:
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
	sub	esp, 4
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	cmp	edx, eax
	jnb	L313
	lea	ebx, [edx+ecx]
	mov	DWORD PTR [ebp-16], ebx
	add	eax, ecx
	mov	ebx, ecx
	jmp	L314
L315:
	mov	esi, ecx
	neg	esi
	mov	edi, DWORD PTR [ebp-16]
	sub	edi, ecx
	movzx	edi, BYTE PTR [edi-1+ebx]
	add	esi, eax
	mov	edx, edi
	mov	BYTE PTR [esi-1+ebx], dl
	sub	ebx, 1
L314:
	test	ebx, ebx
	jne	L315
	jmp	L312
L313:
	je	L312
	add	ecx, eax
	mov	DWORD PTR [ebp-16], edx
	jmp	L317
L318:
	add	DWORD PTR [ebp-16], 1
	mov	edx, DWORD PTR [ebp-16]
	add	eax, 1
	movzx	ebx, BYTE PTR [edx-1]
	mov	BYTE PTR [eax-1], bl
L317:
	cmp	eax, ecx
	jne	L318
L312:
	add	esp, 4
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
LFE69:
	.globl	_rotl64
	.def	_rotl64;	.scl	2;	.type	32;	.endef
_rotl64:
LFB70:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L320
	mov	edi, esi
	xor	esi, esi
L320:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L321
	mov	eax, edx
	xor	edx, edx
L321:
	or	eax, esi
	or	edx, edi
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE70:
	.globl	_rotr64
	.def	_rotr64;	.scl	2;	.type	32;	.endef
_rotr64:
LFB71:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L323
	mov	esi, edi
	xor	edi, edi
L323:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L324
	mov	edx, eax
	xor	eax, eax
L324:
	or	eax, esi
	or	edx, edi
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE71:
	.globl	_rotl32
	.def	_rotl32;	.scl	2;	.type	32;	.endef
_rotl32:
LFB72:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	rol	eax, cl
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE72:
	.globl	_rotr32
	.def	_rotr32;	.scl	2;	.type	32;	.endef
_rotr32:
LFB73:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	ror	eax, cl
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE73:
	.globl	_rotl_sz
	.def	_rotl_sz;	.scl	2;	.type	32;	.endef
_rotl_sz:
LFB74:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	rol	eax, cl
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE74:
	.globl	_rotr_sz
	.def	_rotr_sz;	.scl	2;	.type	32;	.endef
_rotr_sz:
LFB75:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	ror	eax, cl
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE75:
	.globl	_rotl16
	.def	_rotl16;	.scl	2;	.type	32;	.endef
_rotl16:
LFB76:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [ebp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE76:
	.globl	_rotr16
	.def	_rotr16;	.scl	2;	.type	32;	.endef
_rotr16:
LFB77:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [ebp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 16
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE77:
	.globl	_rotl8
	.def	_rotl8;	.scl	2;	.type	32;	.endef
_rotl8:
LFB78:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [ebp+8]
	mov	ebx, eax
	sal	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	shr	eax, cl
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE78:
	.globl	_rotr8
	.def	_rotr8;	.scl	2;	.type	32;	.endef
_rotr8:
LFB79:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [ebp+8]
	mov	ebx, eax
	shr	ebx, cl
	mov	edx, 8
	sub	edx, ecx
	mov	ecx, edx
	sal	eax, cl
	or	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE79:
	.globl	_bswap_16
	.def	_bswap_16;	.scl	2;	.type	32;	.endef
_bswap_16:
LFB80:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, WORD PTR [ebp+8]
	mov	edx, eax
	shr	edx, 8
	sal	eax, 8
	or	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE80:
	.globl	_bswap_32
	.def	_bswap_32;	.scl	2;	.type	32;	.endef
_bswap_32:
LFB81:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
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
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE81:
	.globl	_bswap_64
	.def	_bswap_64;	.scl	2;	.type	32;	.endef
_bswap_64:
LFB82:
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
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
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE82:
	.globl	_ffs
	.def	_ffs;	.scl	2;	.type	32;	.endef
_ffs:
LFB83:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, 0
	jmp	L337
L340:
	bt	edx, eax
	jnc	L338
	add	eax, 1
	jmp	L339
L338:
	add	eax, 1
L337:
	cmp	eax, 32
	jne	L340
	mov	eax, 0
L339:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE83:
	.globl	_libiberty_ffs
	.def	_libiberty_ffs;	.scl	2;	.type	32;	.endef
_libiberty_ffs:
LFB84:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	test	edx, edx
	je	L345
	mov	eax, 1
	jmp	L343
L344:
	sar	edx
	add	eax, 1
L343:
	test	dl, 1
	je	L344
	jmp	L342
L345:
	mov	eax, 0
L342:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE84:
	.globl	_gl_isinff
	.def	_gl_isinff;	.scl	2;	.type	32;	.endef
_gl_isinff:
LFB85:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR LC2
	fcomip	st, st(1)
	ja	L349
	fld	DWORD PTR LC3
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L352
	mov	eax, 1
	jmp	L347
L349:
	fstp	st(0)
	mov	eax, 1
	jmp	L347
L352:
	mov	eax, 0
L347:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE85:
	.globl	_gl_isinfd
	.def	_gl_isinfd;	.scl	2;	.type	32;	.endef
_gl_isinfd:
LFB86:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+8]
	fld	QWORD PTR LC4
	fcomip	st, st(1)
	ja	L356
	fld	QWORD PTR LC5
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L359
	mov	eax, 1
	jmp	L354
L356:
	fstp	st(0)
	mov	eax, 1
	jmp	L354
L359:
	mov	eax, 0
L354:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE86:
	.globl	_gl_isinfl
	.def	_gl_isinfl;	.scl	2;	.type	32;	.endef
_gl_isinfl:
LFB87:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR LC6
	fcomip	st, st(1)
	ja	L363
	fld	TBYTE PTR LC7
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L366
	mov	eax, 1
	jmp	L361
L363:
	fstp	st(0)
	mov	eax, 1
	jmp	L361
L366:
	mov	eax, 0
L361:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE87:
	.globl	__Qp_itoq
	.def	__Qp_itoq;	.scl	2;	.type	32;	.endef
__Qp_itoq:
LFB88:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fild	DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	fstp	TBYTE PTR [eax]
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE88:
	.globl	_ldexpf
	.def	_ldexpf;	.scl	2;	.type	32;	.endef
_ldexpf:
LFB89:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	fucomi	st, st(0)
	jp	L369
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L375
	je	L369
L375:
	test	eax, eax
	jns	L374
	fld	DWORD PTR LC8
	jmp	L373
L374:
	fld	DWORD PTR LC9
L373:
	test	al, 1
	je	L372
	fmul	st(1), st
L372:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L376
	fmul	st, st(0)
	jmp	L373
L376:
	fstp	st(0)
L369:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE89:
	.globl	_ldexp
	.def	_ldexp;	.scl	2;	.type	32;	.endef
_ldexp:
LFB90:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+16]
	fucomi	st, st(0)
	jp	L378
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L384
	je	L378
L384:
	test	eax, eax
	jns	L383
	fld	DWORD PTR LC8
	jmp	L382
L383:
	fld	DWORD PTR LC9
L382:
	test	al, 1
	je	L381
	fmul	st(1), st
L381:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L385
	fmul	st, st(0)
	jmp	L382
L385:
	fstp	st(0)
L378:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE90:
	.globl	_ldexpl
	.def	_ldexpl;	.scl	2;	.type	32;	.endef
_ldexpl:
LFB91:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	TBYTE PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+20]
	fucomi	st, st(0)
	jp	L387
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L393
	je	L387
L393:
	test	eax, eax
	jns	L392
	fld	DWORD PTR LC8
	jmp	L391
L392:
	fld	DWORD PTR LC9
L391:
	test	al, 1
	je	L390
	fmul	st(1), st
L390:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L394
	fmul	st, st(0)
	jmp	L391
L394:
	fstp	st(0)
L387:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE91:
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	mov	esi, edx
	add	esi, DWORD PTR [ebp+16]
	mov	eax, edx
	mov	ecx, DWORD PTR [ebp+12]
	jmp	L396
L397:
	add	ecx, 1
	add	eax, 1
	movzx	ebx, BYTE PTR [eax-1]
	xor	bl, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], bl
L396:
	cmp	eax, esi
	jne	L397
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE92:
	.globl	_strncat
	.def	_strncat;	.scl	2;	.type	32;	.endef
_strncat:
LFB93:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp], esi
	call	_strlen
	add	eax, esi
	jmp	L399
L401:
	add	edi, 1
	add	eax, 1
	sub	ebx, 1
L399:
	test	ebx, ebx
	je	L400
	movzx	edx, BYTE PTR [edi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	L401
L400:
	test	ebx, ebx
	jne	L402
	mov	BYTE PTR [eax], 0
L402:
	mov	eax, esi
	add	esp, 28
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
LFE93:
	.globl	_strnlen
	.def	_strnlen;	.scl	2;	.type	32;	.endef
_strnlen:
LFB94:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, 0
	jmp	L404
L406:
	add	eax, 1
L404:
	cmp	eax, edx
	je	L405
	cmp	BYTE PTR [ecx+eax], 0
	jne	L406
L405:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE94:
	.globl	_strpbrk
	.def	_strpbrk;	.scl	2;	.type	32;	.endef
_strpbrk:
LFB95:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	jmp	L408
L410:
	add	edx, 1
	movzx	ecx, BYTE PTR [eax]
	cmp	BYTE PTR [edx-1], cl
	je	L409
	jmp	L411
L413:
	mov	edx, DWORD PTR [ebp+12]
L411:
	cmp	BYTE PTR [edx], 0
	jne	L410
	add	eax, 1
L408:
	cmp	BYTE PTR [eax], 0
	jne	L413
	mov	eax, 0
L409:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE95:
	.globl	_strrchr
	.def	_strrchr;	.scl	2;	.type	32;	.endef
_strrchr:
LFB96:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
L416:
	movsx	ecx, BYTE PTR [eax]
	cmp	DWORD PTR [ebp+12], ecx
	jne	L415
	mov	edx, eax
L415:
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	L416
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 44
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], edi
	call	_strlen
	mov	esi, eax
	test	eax, eax
	je	L419
	movsx	eax, BYTE PTR [edi]
	mov	DWORD PTR [ebp-28], eax
	jmp	L420
L421:
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], ebx
	call	_strncmp
	test	eax, eax
	je	L419
	add	ebx, 1
L420:
	mov	eax, DWORD PTR [ebp-28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_strchr
	mov	ebx, eax
	test	eax, eax
	jne	L421
L419:
	mov	eax, ebx
	add	esp, 44
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
LFE97:
	.globl	_copysign
	.def	_copysign;	.scl	2;	.type	32;	.endef
_copysign:
LFB98:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+8]
	fld	QWORD PTR [ebp+16]
	fldz
	fcomi	st, st(2)
	jbe	L437
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	ja	L438
	jmp	L425
L437:
	fstp	st(0)
L425:
	fldz
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L439
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L428
	jmp	L427
L438:
	fstp	st(0)
L427:
	fchs
	jmp	L428
L439:
	fstp	st(1)
	fstp	st(1)
L428:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	esi, DWORD PTR [ebp+20]
	mov	edi, eax
	sub	edi, esi
	add	edi, ebx
	test	esi, esi
	je	L441
	cmp	eax, esi
	jb	L446
	jmp	L442
L444:
	mov	eax, DWORD PTR [ebp+16]
	movzx	eax, BYTE PTR [eax]
	cmp	BYTE PTR [ebx], al
	jne	L443
	lea	ecx, [esi-1]
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax+1]
	lea	eax, [ebx+1]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_memcmp
	test	eax, eax
	je	L441
L443:
	add	ebx, 1
L442:
	cmp	edi, ebx
	jnb	L444
	mov	ebx, 0
	jmp	L441
L446:
	mov	ebx, 0
L441:
	mov	eax, ebx
	add	esp, 28
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
LFE99:
	.globl	_mempcpy
	.def	_mempcpy;	.scl	2;	.type	32;	.endef
_mempcpy:
LFB100:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+8], ebx
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_memcpy
	add	eax, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE100:
	.globl	_frexp
	.def	_frexp;	.scl	2;	.type	32;	.endef
_frexp:
LFB101:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+8]
	fldz
	fcomip	st, st(1)
	jbe	L463
	fchs
	mov	edx, 1
	jmp	L450
L463:
	mov	edx, 0
L450:
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L460
	jmp	L464
L454:
	add	eax, 1
	fmul	DWORD PTR LC8
	jmp	L452
L460:
	mov	eax, 0
L452:
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L454
	jmp	L455
L464:
	fldz
	fucomip	st, st(1)
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	fld	DWORD PTR LC8
	fcomip	st, st(1)
	seta	cl
	test	cl, al
	jne	L461
	mov	eax, 0
	jmp	L455
L457:
	sub	eax, 1
	fadd	st, st(0)
	jmp	L456
L461:
	mov	eax, 0
L456:
	fld	DWORD PTR LC8
	fcomip	st, st(1)
	ja	L457
L455:
	mov	ecx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L458
	fchs
L458:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE101:
	.globl	___muldi3
	.def	___muldi3;	.scl	2;	.type	32;	.endef
___muldi3:
LFB102:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 20
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [ebp+20]
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-32], 0
	mov	DWORD PTR [ebp-28], 0
	jmp	L466
L468:
	mov	ecx, eax
	and	ecx, 1
	mov	ebx, 0
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp-20], ebx
	mov	ecx, DWORD PTR [ebp-24]
	mov	ebx, DWORD PTR [ebp-20]
	or	ecx, ebx
	je	L467
	add	DWORD PTR [ebp-32], esi
	adc	DWORD PTR [ebp-28], edi
L467:
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
L466:
	mov	ecx, eax
	or	ecx, edx
	jne	L468
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	esp, 20
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
LFE102:
	.globl	_udivmodsi4
	.def	_udivmodsi4;	.scl	2;	.type	32;	.endef
_udivmodsi4:
LFB103:
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
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 1
	jmp	L470
L472:
	add	edx, edx
	add	ecx, ecx
L470:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L477
	test	edx, edx
	jns	L472
	mov	ebx, 0
	jmp	L474
L475:
	cmp	edi, edx
	jb	L473
	sub	edi, edx
	or	ebx, ecx
L473:
	shr	ecx
	shr	edx
	jmp	L474
L477:
	mov	ebx, 0
L474:
	test	ecx, ecx
	jne	L475
	cmp	DWORD PTR [ebp+16], 0
	jne	L478
	mov	eax, ebx
	jmp	L476
L478:
	mov	eax, edi
L476:
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
LFE103:
	.globl	___clrsbqi2
	.def	___clrsbqi2;	.scl	2;	.type	32;	.endef
___clrsbqi2:
LFB104:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	eax, BYTE PTR [ebp+8]
	test	al, al
	jns	L480
	not	eax
L480:
	test	al, al
	je	L482
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	sub	eax, 1
	jmp	L481
L482:
	mov	eax, 7
L481:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	edx, edx
	jns	L484
	not	eax
	not	edx
L484:
	mov	ecx, eax
	or	ecx, edx
	je	L488
	test	edx, edx
	je	L486
	bsr	eax, edx
	xor	eax, 31
	jmp	L487
L486:
	bsr	eax, eax
	xor	eax, 31
	add	eax, 32
L487:
	sub	eax, 1
	jmp	L485
L488:
	mov	eax, 63
L485:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE105:
	.globl	___mulsi3
	.def	___mulsi3;	.scl	2;	.type	32;	.endef
___mulsi3:
LFB106:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, 0
	jmp	L490
L492:
	test	al, 1
	je	L491
	add	edx, ecx
L491:
	shr	eax
	add	ecx, ecx
L490:
	test	eax, eax
	jne	L492
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, eax
	shr	edi, 3
	mov	ecx, eax
	and	ecx, -8
	cmp	ebx, edx
	jb	L494
	lea	esi, [edx+eax]
	cmp	esi, ebx
	jnb	L495
L494:
	mov	esi, edx
	mov	DWORD PTR [ebp-20], ebx
	lea	edi, [edx+edi*8]
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp+12], edx
	mov	DWORD PTR [ebp+16], eax
	jmp	L496
L497:
	mov	ecx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [esi]
	mov	edx, DWORD PTR [esi+4]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	add	esi, 8
	add	ecx, 8
	mov	DWORD PTR [ebp-20], ecx
L496:
	cmp	esi, edi
	jne	L497
	mov	ecx, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, eax
	jmp	L498
L499:
	movzx	eax, BYTE PTR [edx+ecx]
	mov	BYTE PTR [ebx+ecx], al
	add	ecx, 1
L498:
	cmp	ecx, esi
	jb	L499
	jmp	L493
L501:
	movzx	ecx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ebx+eax], cl
L495:
	sub	eax, 1
	cmp	eax, -1
	jne	L501
L493:
	add	esp, 12
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, eax
	shr	edi
	cmp	ecx, edx
	jb	L504
	lea	ebx, [edx+eax]
	cmp	ebx, ecx
	jnb	L505
L504:
	mov	ebx, edx
	mov	esi, ecx
	lea	edi, [edx+edi*2]
	mov	DWORD PTR [ebp+16], eax
	jmp	L506
L507:
	movzx	eax, WORD PTR [ebx]
	mov	WORD PTR [esi], ax
	add	ebx, 2
	add	esi, 2
L506:
	cmp	ebx, edi
	jne	L507
	mov	eax, DWORD PTR [ebp+16]
	test	al, 1
	je	L503
	movzx	edx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ecx-1+eax], dl
	jmp	L503
L509:
	movzx	ebx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ecx+eax], bl
L505:
	sub	eax, 1
	cmp	eax, -1
	jne	L509
L503:
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
LFE108:
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
	sub	esp, 4
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, eax
	shr	edi, 2
	mov	ecx, eax
	and	ecx, -4
	cmp	ebx, edx
	jb	L512
	lea	esi, [edx+eax]
	cmp	esi, ebx
	jnb	L513
L512:
	mov	esi, edx
	mov	DWORD PTR [ebp-16], ebx
	lea	edi, [edx+edi*4]
	mov	DWORD PTR [ebp+12], edx
	mov	DWORD PTR [ebp+16], eax
	jmp	L514
L515:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [esi]
	mov	DWORD PTR [eax], edx
	add	esi, 4
	add	eax, 4
	mov	DWORD PTR [ebp-16], eax
L514:
	cmp	esi, edi
	jne	L515
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	esi, eax
	jmp	L516
L517:
	movzx	eax, BYTE PTR [edx+ecx]
	mov	BYTE PTR [ebx+ecx], al
	add	ecx, 1
L516:
	cmp	ecx, esi
	jb	L517
	jmp	L511
L519:
	movzx	ecx, BYTE PTR [edx+eax]
	mov	BYTE PTR [ebx+eax], cl
L513:
	sub	eax, 1
	cmp	eax, -1
	jne	L519
L511:
	add	esp, 4
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
LFE109:
	.globl	___modi
	.def	___modi;	.scl	2;	.type	32;	.endef
___modi:
LFB110:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE110:
	.globl	___uitod
	.def	___uitod;	.scl	2;	.type	32;	.endef
___uitod:
LFB111:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	fild	QWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE111:
	.globl	___uitof
	.def	___uitof;	.scl	2;	.type	32;	.endef
___uitof:
LFB112:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	fild	QWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE112:
	.globl	___ulltod
	.def	___ulltod;	.scl	2;	.type	32;	.endef
___ulltod:
LFB113:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	fild	QWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp+12], 0
	jns	L525
	fadd	DWORD PTR LC11
L525:
	fstp	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE113:
	.globl	___ulltof
	.def	___ulltof;	.scl	2;	.type	32;	.endef
___ulltof:
LFB114:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	fild	QWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp+12], 0
	jns	L527
	fadd	DWORD PTR LC11
L527:
	fstp	DWORD PTR [ebp-4]
	fld	DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE114:
	.globl	___umodi
	.def	___umodi;	.scl	2;	.type	32;	.endef
___umodi:
LFB115:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	div	DWORD PTR [ebp+12]
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE115:
	.globl	___clzhi2
	.def	___clzhi2;	.scl	2;	.type	32;	.endef
___clzhi2:
LFB116:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	movzx	ebx, WORD PTR [ebp+8]
	mov	eax, 0
	jmp	L530
L532:
	movzx	ecx, bx
	mov	edx, 15
	sub	edx, eax
	bt	ecx, edx
	jc	L531
	add	eax, 1
L530:
	cmp	eax, 16
	jne	L532
L531:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE116:
	.globl	___ctzhi2
	.def	___ctzhi2;	.scl	2;	.type	32;	.endef
___ctzhi2:
LFB117:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	movzx	edx, WORD PTR [ebp+8]
	mov	eax, 0
	jmp	L534
L536:
	movzx	ecx, dx
	bt	ecx, eax
	jc	L535
	add	eax, 1
L534:
	cmp	eax, 16
	jne	L536
L535:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE117:
	.globl	___fixunssfsi
	.def	___fixunssfsi;	.scl	2;	.type	32;	.endef
___fixunssfsi:
LFB118:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	fld	DWORD PTR LC12
	fld	DWORD PTR [ebp+8]
	fcomi	st, st(1)
	jb	L542
	fsubrp	st(1), st
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 32768
	jmp	L540
L542:
	fstp	st(1)
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
L540:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE118:
	.globl	___parityhi2
	.def	___parityhi2;	.scl	2;	.type	32;	.endef
___parityhi2:
LFB119:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	movzx	ecx, WORD PTR [ebp+8]
	mov	eax, 0
	mov	edx, 0
	jmp	L544
L546:
	movzx	ebx, cx
	bt	ebx, edx
	jnc	L545
	add	eax, 1
L545:
	add	edx, 1
L544:
	cmp	edx, 16
	jne	L546
	and	eax, 1
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE119:
	.globl	___popcounthi2
	.def	___popcounthi2;	.scl	2;	.type	32;	.endef
___popcounthi2:
LFB120:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	movzx	ecx, WORD PTR [ebp+8]
	mov	edx, 0
	mov	eax, 0
	jmp	L548
L550:
	movzx	ebx, cx
	bt	ebx, eax
	jnc	L549
	add	edx, 1
L549:
	add	eax, 1
L548:
	cmp	eax, 16
	jne	L550
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE120:
	.globl	___mulsi3_iq2000
	.def	___mulsi3_iq2000;	.scl	2;	.type	32;	.endef
___mulsi3_iq2000:
LFB121:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, 0
	jmp	L552
L554:
	test	al, 1
	je	L553
	add	edx, ecx
L553:
	shr	eax
	add	ecx, ecx
L552:
	test	eax, eax
	jne	L554
	mov	eax, edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE121:
	.globl	___mulsi3_lm32
	.def	___mulsi3_lm32;	.scl	2;	.type	32;	.endef
___mulsi3_lm32:
LFB122:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	test	edx, edx
	je	L560
	mov	eax, 0
	jmp	L557
L559:
	test	cl, 1
	je	L558
	add	eax, edx
L558:
	add	edx, edx
	shr	ecx
L557:
	test	ecx, ecx
	jne	L559
	jmp	L556
L560:
	mov	eax, 0
L556:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE122:
	.globl	___udivmodsi4
	.def	___udivmodsi4;	.scl	2;	.type	32;	.endef
___udivmodsi4:
LFB123:
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
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 1
	jmp	L562
L564:
	add	edx, edx
	add	ecx, ecx
L562:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L569
	test	edx, edx
	jns	L564
	mov	ebx, 0
	jmp	L566
L567:
	cmp	edi, edx
	jb	L565
	sub	edi, edx
	or	ebx, ecx
L565:
	shr	ecx
	shr	edx
	jmp	L566
L569:
	mov	ebx, 0
L566:
	test	ecx, ecx
	jne	L567
	cmp	DWORD PTR [ebp+16], 0
	jne	L570
	mov	eax, ebx
	jmp	L568
L570:
	mov	eax, edi
L568:
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
LFE123:
	.globl	___mspabi_cmpf
	.def	___mspabi_cmpf;	.scl	2;	.type	32;	.endef
___mspabi_cmpf:
LFB124:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+12]
	fcomi	st, st(1)
	ja	L573
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L574
	mov	eax, 0
	jmp	L572
L573:
	fstp	st(0)
	fstp	st(0)
	mov	eax, -1
	jmp	L572
L574:
	mov	eax, 1
L572:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE124:
	.globl	___mspabi_cmpd
	.def	___mspabi_cmpd;	.scl	2;	.type	32;	.endef
___mspabi_cmpd:
LFB125:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+8]
	fld	QWORD PTR [ebp+16]
	fcomi	st, st(1)
	ja	L577
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L578
	mov	eax, 0
	jmp	L576
L577:
	fstp	st(0)
	fstp	st(0)
	mov	eax, -1
	jmp	L576
L578:
	mov	eax, 1
L576:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE125:
	.globl	___mspabi_mpysll
	.def	___mspabi_mpysll;	.scl	2;	.type	32;	.endef
___mspabi_mpysll:
LFB126:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	edi, eax
	sar	edi, 31
	mov	edx, edi
	mov	esi, ecx
	mov	edi, ecx
	sar	edi, 31
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-12]
	imul	ecx, edx
	mov	edx, edi
	mov	eax, DWORD PTR [ebp-16]
	imul	edx, eax
	add	ecx, edx
	mul	esi
	add	edx, ecx
	add	esp, 8
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE126:
	.globl	___mspabi_mpyull
	.def	___mspabi_mpyull;	.scl	2;	.type	32;	.endef
___mspabi_mpyull:
LFB127:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mul	ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	edx, edx
	jns	L587
	neg	edx
	mov	edi, 1
	jmp	L582
L587:
	mov	edi, 0
L582:
	mov	eax, 0
	mov	ecx, 0
	mov	esi, edi
	mov	DWORD PTR [ebp-16], eax
	jmp	L583
L585:
	test	dl, 1
	je	L584
	add	DWORD PTR [ebp-16], ebx
L584:
	add	ebx, ebx
	sar	edx
	add	ecx, 1
L583:
	test	edx, edx
	setne	BYTE PTR [ebp-17]
	cmp	cl, 31
	setbe	al
	test	BYTE PTR [ebp-17], al
	jne	L585
	mov	eax, DWORD PTR [ebp-16]
	test	esi, esi
	je	L586
	neg	eax
L586:
	add	esp, 8
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
LFE128:
	.globl	___divsi3
	.def	___divsi3;	.scl	2;	.type	32;	.endef
___divsi3:
LFB129:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L593
	neg	eax
	mov	ebx, 1
	jmp	L590
L593:
	mov	ebx, 0
L590:
	test	edx, edx
	jns	L591
	neg	edx
	xor	ebx, 1
L591:
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	test	ebx, ebx
	je	L592
	neg	eax
L592:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE129:
	.globl	___modsi3
	.def	___modsi3;	.scl	2;	.type	32;	.endef
___modsi3:
LFB130:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 20
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L598
	neg	eax
	mov	ebx, 1
	jmp	L595
L598:
	mov	ebx, 0
L595:
	test	edx, edx
	jns	L596
	neg	edx
L596:
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	test	ebx, ebx
	je	L597
	neg	eax
L597:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE130:
	.globl	___udivmodhi4
	.def	___udivmodhi4;	.scl	2;	.type	32;	.endef
___udivmodhi4:
LFB131:
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
	movzx	edi, WORD PTR [ebp+8]
	movzx	edx, WORD PTR [ebp+12]
	mov	ecx, 1
	jmp	L600
L602:
	add	edx, edx
	add	ecx, ecx
L600:
	cmp	dx, di
	setb	bl
	mov	esi, ebx
	test	cx, cx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L607
	test	dx, dx
	jns	L602
	mov	ebx, 0
	jmp	L604
L605:
	cmp	di, dx
	jb	L603
	sub	edi, edx
	or	ebx, ecx
L603:
	shr	cx
	shr	dx
	jmp	L604
L607:
	mov	ebx, 0
L604:
	test	cx, cx
	jne	L605
	cmp	DWORD PTR [ebp+16], 0
	jne	L608
	mov	eax, ebx
	jmp	L606
L608:
	mov	eax, edi
L606:
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
LFE131:
	.globl	___udivmodsi4_libgcc
	.def	___udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
___udivmodsi4_libgcc:
LFB132:
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
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, 1
	jmp	L610
L612:
	add	edx, edx
	add	ecx, ecx
L610:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	je	L617
	test	edx, edx
	jns	L612
	mov	ebx, 0
	jmp	L614
L615:
	cmp	edi, edx
	jb	L613
	sub	edi, edx
	or	ebx, ecx
L613:
	shr	ecx
	shr	edx
	jmp	L614
L617:
	mov	ebx, 0
L614:
	test	ecx, ecx
	jne	L615
	cmp	DWORD PTR [ebp+16], 0
	jne	L618
	mov	eax, ebx
	jmp	L616
L618:
	mov	eax, edi
L616:
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
LFE132:
	.globl	___ashldi3
	.def	___ashldi3;	.scl	2;	.type	32;	.endef
___ashldi3:
LFB133:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	test	bl, 32
	je	L620
	mov	eax, 0
	mov	esi, DWORD PTR [ebp-24]
	lea	ecx, [ebx-32]
	sal	esi, cl
	mov	edx, esi
	jmp	L622
L620:
	test	ebx, ebx
	je	L622
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, esi
	mov	ecx, ebx
	sal	edi, cl
	mov	eax, edi
	mov	edi, DWORD PTR [ebp-20]
	sal	edi, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	esi, cl
	or	esi, edi
	mov	edx, esi
L622:
	add	esp, 12
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
LFE133:
	.globl	___ashrdi3
	.def	___ashrdi3;	.scl	2;	.type	32;	.endef
___ashrdi3:
LFB134:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	test	bl, 32
	je	L625
	mov	esi, DWORD PTR [ebp-20]
	mov	edi, esi
	sar	edi, 31
	mov	edx, edi
	lea	ecx, [ebx-32]
	sar	esi, cl
	mov	eax, esi
	jmp	L627
L625:
	test	ebx, ebx
	je	L627
	mov	edi, DWORD PTR [ebp-20]
	mov	esi, edi
	mov	ecx, ebx
	sar	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [ebp-24]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
L627:
	add	esp, 12
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
LFE134:
	.globl	___bswapdi2
	.def	___bswapdi2;	.scl	2;	.type	32;	.endef
___bswapdi2:
LFB135:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 52
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	eax, ecx
	mov	edx, ebx
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 24
	shr	edi, 24
	and	esi, 16711680
	mov	edi, 0
	mov	DWORD PTR [ebp-40], esi
	mov	DWORD PTR [ebp-36], edi
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	mov	DWORD PTR [ebp-48], eax
	mov	DWORD PTR [ebp-44], edx
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 8
	sal	esi, 8
	mov	esi, 0
	and	edi, 255
	mov	DWORD PTR [ebp-56], esi
	mov	DWORD PTR [ebp-52], edi
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	mov	DWORD PTR [ebp-64], eax
	mov	DWORD PTR [ebp-60], edx
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
	or	eax, DWORD PTR [ebp-24]
	or	edx, DWORD PTR [ebp-20]
	or	eax, DWORD PTR [ebp-32]
	or	edx, DWORD PTR [ebp-28]
	or	eax, DWORD PTR [ebp-40]
	or	edx, DWORD PTR [ebp-36]
	or	eax, DWORD PTR [ebp-48]
	or	edx, DWORD PTR [ebp-44]
	or	eax, DWORD PTR [ebp-56]
	or	edx, DWORD PTR [ebp-52]
	or	eax, DWORD PTR [ebp-64]
	or	edx, DWORD PTR [ebp-60]
	or	eax, esi
	or	edx, edi
	add	esp, 52
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
LFE135:
	.globl	___bswapsi2
	.def	___bswapsi2;	.scl	2;	.type	32;	.endef
___bswapsi2:
LFB136:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
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
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE136:
	.globl	___clzsi2
	.def	___clzsi2;	.scl	2;	.type	32;	.endef
___clzsi2:
LFB137:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	edx, DWORD PTR [ebp+8]
	cmp	edx, 65535
	ja	L636
	mov	eax, 16
	jmp	L632
L636:
	mov	eax, 0
L632:
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	jne	L637
	mov	ebx, 8
	jmp	L633
L637:
	mov	ebx, 0
L633:
	mov	ecx, 8
	sub	ecx, ebx
	shr	edx, cl
	add	eax, ebx
	test	dl, -16
	jne	L638
	mov	ebx, 4
	jmp	L634
L638:
	mov	ebx, 0
L634:
	mov	ecx, 4
	sub	ecx, ebx
	shr	edx, cl
	add	eax, ebx
	test	dl, 12
	jne	L639
	mov	esi, 2
	jmp	L635
L639:
	mov	esi, 0
L635:
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
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+20]
	cmp	edx, ebx
	jl	L642
	jg	L643
	cmp	eax, ecx
	jb	L644
	cmp	ecx, eax
	jb	L645
	mov	eax, 1
	jmp	L641
L642:
	mov	eax, 0
	jmp	L641
L643:
	mov	eax, 2
	jmp	L641
L644:
	mov	eax, 0
	jmp	L641
L645:
	mov	eax, 2
L641:
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
LFE138:
	.globl	___aeabi_lcmp
	.def	___aeabi_lcmp;	.scl	2;	.type	32;	.endef
___aeabi_lcmp:
LFB139:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___cmpdi2
	sub	eax, 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE139:
	.globl	___ctzsi2
	.def	___ctzsi2;	.scl	2;	.type	32;	.endef
___ctzsi2:
LFB140:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [ebp+8]
	test	dx, dx
	jne	L652
	mov	eax, 16
	jmp	L648
L652:
	mov	eax, 0
L648:
	mov	ecx, eax
	shr	edx, cl
	test	dl, dl
	jne	L653
	mov	ecx, 8
	jmp	L649
L653:
	mov	ecx, 0
L649:
	shr	edx, cl
	add	eax, ecx
	test	dl, 15
	jne	L654
	mov	ecx, 4
	jmp	L650
L654:
	mov	ecx, 0
L650:
	shr	edx, cl
	add	eax, ecx
	test	dl, 3
	jne	L655
	mov	ecx, 2
	jmp	L651
L655:
	mov	ecx, 0
L651:
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
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE140:
	.globl	___lshrdi3
	.def	___lshrdi3;	.scl	2;	.type	32;	.endef
___lshrdi3:
LFB141:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	test	bl, 32
	je	L657
	mov	edx, 0
	mov	esi, DWORD PTR [ebp-20]
	lea	ecx, [ebx-32]
	shr	esi, cl
	mov	eax, esi
	jmp	L659
L657:
	test	ebx, ebx
	je	L659
	mov	edi, DWORD PTR [ebp-20]
	mov	esi, edi
	mov	ecx, ebx
	shr	esi, cl
	mov	edx, esi
	mov	ecx, 32
	sub	ecx, ebx
	sal	edi, cl
	mov	esi, DWORD PTR [ebp-24]
	mov	ecx, ebx
	shr	esi, cl
	or	edi, esi
	mov	eax, edi
L659:
	add	esp, 12
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
LFE141:
	.globl	___muldsi3
	.def	___muldsi3;	.scl	2;	.type	32;	.endef
___muldsi3:
LFB142:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	movzx	ebx, cx
	movzx	esi, di
	mov	edx, ebx
	imul	edx, esi
	mov	eax, edx
	shr	eax, 16
	movzx	edx, dx
	shr	ecx, 16
	imul	esi, ecx
	add	eax, esi
	mov	esi, eax
	sal	esi, 16
	add	esi, edx
	shr	eax, 16
	mov	DWORD PTR [ebp-20], eax
	mov	eax, esi
	shr	eax, 16
	movzx	edx, si
	shr	edi, 16
	mov	esi, edi
	imul	ebx, edi
	add	eax, ebx
	mov	ebx, eax
	sal	ebx, 16
	lea	edi, [ebx+edx]
	mov	DWORD PTR [ebp-24], edi
	mov	edx, DWORD PTR [ebp-20]
	shr	eax, 16
	add	eax, edx
	imul	ecx, esi
	add	eax, ecx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	add	esp, 12
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
LFE142:
	.globl	___muldi3_compiler_rt
	.def	___muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
___muldi3_compiler_rt:
LFB143:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 36
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	ebx, eax
	mov	DWORD PTR [ebp-36], esi
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	ecx, DWORD PTR [ebp-32]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], esi
	call	___muldsi3
	mov	DWORD PTR [ebp-24], eax
	mov	eax, edi
	imul	eax, ebx
	mov	ecx, DWORD PTR [ebp-28]
	mov	edi, DWORD PTR [ebp-36]
	imul	ecx, edi
	add	eax, ecx
	add	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	add	esp, 36
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
LFE143:
	.globl	___negdi2
	.def	___negdi2;	.scl	2;	.type	32;	.endef
___negdi2:
LFB144:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	neg	eax
	adc	edx, 0
	neg	edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE144:
	.globl	___paritydi2
	.def	___paritydi2;	.scl	2;	.type	32;	.endef
___paritydi2:
LFB145:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
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
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE145:
	.globl	___paritysi2
	.def	___paritysi2;	.scl	2;	.type	32;	.endef
___paritysi2:
LFB146:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, eax
	shr	ecx, 16
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
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE146:
	.globl	___popcountdi2
	.def	___popcountdi2;	.scl	2;	.type	32;	.endef
___popcountdi2:
LFB147:
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	esi, ecx
	mov	edi, ebx
	shrd	esi, edi, 1
	shr	edi
	and	esi, 1431655765
	and	edi, 1431655765
	mov	eax, ecx
	mov	edx, ebx
	sub	eax, esi
	sbb	edx, edi
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
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE147:
	.globl	___popcountsi2
	.def	___popcountsi2;	.scl	2;	.type	32;	.endef
___popcountsi2:
LFB148:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, ecx
	shr	eax
	and	eax, 1431655765
	sub	ecx, eax
	mov	edx, ecx
	mov	eax, ecx
	shr	eax, 2
	and	eax, 858993459
	and	edx, 858993459
	add	edx, eax
	mov	eax, edx
	shr	eax, 4
	add	eax, edx
	and	eax, 252645135
	mov	edx, eax
	shr	eax, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 63
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE148:
	.globl	___powidf2
	.def	___powidf2;	.scl	2;	.type	32;	.endef
___powidf2:
LFB149:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	QWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	shr	edx, 31
	fld1
L671:
	test	al, 1
	je	L669
	fmul	st, st(1)
L669:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	L670
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	L671
L670:
	fstp	st(1)
	test	edx, edx
	je	L672
	fdivr	DWORD PTR LC10
L672:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE149:
	.globl	___powisf2
	.def	___powisf2;	.scl	2;	.type	32;	.endef
___powisf2:
LFB150:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	fld	DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	fld1
L677:
	test	al, 1
	je	L675
	fmul	st, st(1)
L675:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	L676
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	L677
L676:
	fstp	st(1)
	test	edx, edx
	je	L678
	fdivr	DWORD PTR LC10
L678:
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+20]
	cmp	edx, ebx
	jb	L682
	cmp	ebx, edx
	jb	L683
	cmp	eax, ecx
	jb	L684
	cmp	ecx, eax
	jb	L685
	mov	eax, 1
	jmp	L681
L682:
	mov	eax, 0
	jmp	L681
L683:
	mov	eax, 2
	jmp	L681
L684:
	mov	eax, 0
	jmp	L681
L685:
	mov	eax, 2
L681:
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
LFE151:
	.globl	___aeabi_ulcmp
	.def	___aeabi_ulcmp;	.scl	2;	.type	32;	.endef
___aeabi_ulcmp:
LFB152:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___ucmpdi2
	sub	eax, 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
