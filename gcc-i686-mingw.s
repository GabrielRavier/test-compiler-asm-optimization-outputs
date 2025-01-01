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
	sub	esp, 4
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	cmp	edx, edi
	jnb	L2
	lea	ecx, [edi+ebx]
	mov	eax, ebx
	neg	ebx
	mov	DWORD PTR [ebp-16], ecx
	jmp	L3
	.p2align 5
L4:
	mov	esi, DWORD PTR [ebp-16]
	add	esi, ebx
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [esi-1+eax], cl
	sub	eax, 1
L3:
	test	eax, eax
	jne	L4
	jmp	L5
L2:
	cmp	edi, edx
	je	L5
	add	ebx, edi
	mov	ecx, edi
	jmp	L6
	.p2align 5
L7:
	add	edx, 1
	add	ecx, 1
	movzx	eax, BYTE PTR [edx-1]
	mov	BYTE PTR [ecx-1], al
L6:
	cmp	ecx, ebx
	jne	L7
L5:
	mov	eax, edi
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
	mov	ecx, DWORD PTR [ebp+20]
	movzx	esi, BYTE PTR [ebp+16]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
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
	movzx	ebx, BYTE PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
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
	mov	edx, DWORD PTR [ebp+16]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
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
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, esi
	add	ebx, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+12]
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
	mov	ebx, DWORD PTR [ebp+8]
	movzx	esi, BYTE PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	jmp	L30
L32:
	movzx	ecx, BYTE PTR [ebx+edx]
	lea	eax, [edx-1]
	cmp	esi, ecx
	jne	L33
	lea	eax, [ebx+edx]
	jmp	L31
L33:
	mov	edx, eax
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, ebx
	add	edx, DWORD PTR [ebp+16]
	mov	eax, ebx
	jmp	L35
	.p2align 4
L36:
	mov	BYTE PTR [eax], cl
	add	eax, 1
L35:
	cmp	eax, edx
	jne	L36
	mov	eax, ebx
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
	mov	ecx, DWORD PTR [ebp+12]
	jmp	L38
	.p2align 4
L39:
	add	ecx, 1
	add	eax, 1
L38:
	movzx	edx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	test	dl, dl
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
	movzx	ecx, BYTE PTR [ebp+12]
	jmp	L41
	.p2align 4
L43:
	add	eax, 1
L41:
	cmp	BYTE PTR [eax], 0
	je	L42
	movzx	edx, BYTE PTR [eax]
	cmp	ecx, edx
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
	mov	ecx, DWORD PTR [ebp+12]
	.p2align 4
L46:
	movsx	edx, BYTE PTR [eax]
	cmp	ecx, edx
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
	jmp	L50
	.p2align 5
L52:
	add	eax, 1
	add	edx, 1
L50:
	movzx	ecx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], cl
	jne	L51
	cmp	BYTE PTR [eax], 0
	jne	L52
L51:
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
	jmp	L54
	.p2align 3
L55:
	add	eax, 1
L54:
	cmp	BYTE PTR [eax], 0
	jne	L55
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+16]
	mov	eax, 0
	test	ecx, ecx
	je	L57
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ebx
	lea	esi, [ebx-1+ecx]
	jmp	L58
L60:
	add	eax, 1
	add	edx, 1
L58:
	cmp	BYTE PTR [eax], 0
	je	L59
	cmp	eax, esi
	setne	bl
	cmp	BYTE PTR [edx], 0
	setne	cl
	test	bl, cl
	je	L59
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [eax], bl
	je	L60
L59:
	movzx	eax, BYTE PTR [eax]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L57:
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ebx
	add	ebx, DWORD PTR [ebp+16]
	jmp	L63
	.p2align 5
L64:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
L63:
	mov	ecx, ebx
	sub	ecx, eax
	cmp	ecx, 1
	jg	L64
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	cmp	ax, 31
	setbe	cl
	movzx	edx, ax
	sub	edx, 127
	cmp	edx, 32
	setbe	bl
	mov	edx, 1
	or	cl, bl
	jne	L76
	movzx	ecx, ax
	sub	ecx, 8232
	cmp	ecx, 1
	jbe	L76
	movzx	eax, ax
	sub	eax, 65529
	cmp	eax, 3
	setb	dl
	movzx	edx, dl
L76:
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	cmp	ax, 254
	ja	L82
	lea	eax, [eax+1]
	and	eax, 127
	cmp	eax, 32
	setg	dl
	movzx	edx, dl
	jmp	L83
L82:
	cmp	ax, 8231
	setbe	cl
	movzx	edx, ax
	sub	edx, 8234
	cmp	edx, 47061
	setbe	bl
	mov	edx, 1
	or	cl, bl
	jne	L83
	movzx	ecx, ax
	sub	ecx, 57344
	cmp	ecx, 8184
	jbe	L83
	movzx	ecx, ax
	sub	ecx, 65532
	mov	edx, 0
	cmp	ecx, 1048579
	ja	L83
	not	eax
	test	eax, 65534
	setne	dl
	movzx	edx, dl
L83:
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, ax
	sub	edx, 48
	mov	ecx, 1
	cmp	edx, 9
	jbe	L89
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 6
	setb	cl
	movzx	ecx, cl
L89:
	mov	eax, ecx
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
	jp	L101
	fxch	st(1)
	fucomi	st, st(0)
	jp	L97
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L100
	fsubrp	st(1), st
	jmp	L94
L97:
	fstp	st(1)
	jmp	L94
L100:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L94
L101:
	fstp	st(1)
L94:
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
	jp	L110
	fxch	st(1)
	fucomi	st, st(0)
	jp	L106
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L109
	fsubrp	st(1), st
	jmp	L103
L106:
	fstp	st(1)
	jmp	L103
L109:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L103
L110:
	fstp	st(1)
L103:
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
	jp	L120
	fxch	st(1)
	fucomi	st, st(0)
	jp	L116
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
	je	L113
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	L112
L113:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	jmp	L112
L116:
	fstp	st(0)
	jmp	L112
L120:
	fstp	st(0)
L112:
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
	jp	L130
	fxch	st(1)
	fucomi	st, st(0)
	jp	L126
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
	je	L123
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	L122
L123:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	jmp	L122
L126:
	fstp	st(0)
	jmp	L122
L130:
	fstp	st(0)
L122:
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
	jp	L135
	fxch	st(1)
	fucomi	st, st(0)
	jp	L136
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
	je	L133
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L141
	fstp	st(0)
	jmp	L132
L133:
	fld	st(0)
	fcomip	st, st(2)
	ja	L142
	fstp	st(0)
	jmp	L140
L135:
	fstp	st(0)
	jmp	L132
L136:
	fstp	st(0)
	jmp	L132
L140:
	jmp	L132
L141:
	fstp	st(1)
	jmp	L132
L142:
	fstp	st(1)
L132:
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
	jp	L147
	fxch	st(1)
	fucomi	st, st(0)
	jp	L152
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
	je	L145
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	jmp	L144
L145:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	jmp	L144
L147:
	fstp	st(0)
	jmp	L144
L152:
	fstp	st(0)
L144:
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
	jp	L157
	fxch	st(1)
	fucomi	st, st(0)
	jp	L162
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
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	jmp	L154
L155:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	jmp	L154
L157:
	fstp	st(0)
	jmp	L154
L162:
	fstp	st(0)
L154:
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
	jp	L167
	fxch	st(1)
	fucomi	st, st(0)
	jp	L168
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
	je	L165
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	L173
	fstp	st(1)
	jmp	L164
L165:
	fld	st(1)
	fxch	st(1)
	fcomi	st, st(2)
	fstp	st(2)
	ja	L174
	fstp	st(0)
	jmp	L172
L167:
	fstp	st(0)
	jmp	L164
L168:
	fstp	st(0)
	jmp	L164
L172:
	jmp	L164
L173:
	fstp	st(0)
	jmp	L164
L174:
	fstp	st(1)
L164:
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, OFFSET FLAT:_s.0
	jmp	L176
	.p2align 5
L177:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
L176:
	test	eax, eax
	jne	L177
	mov	BYTE PTR [edx], 0
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
	jne	L181
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	jmp	L180
L181:
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	cmp	DWORD PTR [eax], 0
	je	L180
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [edx+4], eax
L180:
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
	je	L184
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L184:
	cmp	DWORD PTR [eax+4], 0
	je	L183
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
L183:
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
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+16]
	mov	edi, DWORD PTR [eax]
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, 0
	jmp	L187
L190:
	mov	DWORD PTR [esp+4], esi
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [ebp+24]]
	add	esi, DWORD PTR [ebp+20]
	test	eax, eax
	jne	L188
	imul	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	L189
L188:
	add	ebx, 1
L187:
	cmp	ebx, edi
	jne	L190
	lea	eax, [edi+1]
	mov	ecx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	mov	edx, edi
	imul	edx, DWORD PTR [ebp+20]
	mov	eax, edx
	add	eax, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+20]
	mov	DWORD PTR [esp+8], ecx
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], eax
	call	_memcpy
L189:
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
	jmp	L192
L195:
	mov	DWORD PTR [esp+4], esi
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [ebp+24]]
	add	esi, DWORD PTR [ebp+20]
	test	eax, eax
	jne	L193
	imul	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	add	eax, DWORD PTR [ebp+12]
	jmp	L194
L193:
	add	ebx, 1
L192:
	cmp	ebx, edi
	jne	L195
	mov	eax, 0
L194:
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
	jmp	L198
L199:
	add	ebx, 1
L198:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L199
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L205
	mov	ecx, 0
	cmp	eax, 45
	jne	L201
	mov	ecx, 1
	jmp	L200
L205:
	mov	ecx, 0
L200:
	add	ebx, 1
L201:
	mov	edx, 0
	jmp	L202
	.p2align 5
L203:
	lea	edx, [edx+edx*4]
	add	edx, edx
	add	ebx, 1
	movsx	eax, BYTE PTR [ebx-1]
	sub	eax, 48
	sub	edx, eax
L202:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	L203
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
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
	jmp	L209
L210:
	add	ebx, 1
L209:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L210
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L216
	mov	ecx, 0
	cmp	eax, 45
	jne	L212
	mov	ecx, 1
	jmp	L211
L216:
	mov	ecx, 0
L211:
	add	ebx, 1
L212:
	mov	edx, 0
	jmp	L213
	.p2align 5
L214:
	lea	edx, [edx+edx*4]
	add	edx, edx
	add	ebx, 1
	movsx	eax, BYTE PTR [ebx-1]
	sub	eax, 48
	sub	edx, eax
L213:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	L214
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
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
	jmp	L220
L221:
	add	ebx, 1
L220:
	movsx	eax, BYTE PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L221
	movsx	eax, BYTE PTR [ebx]
	cmp	eax, 43
	je	L227
	mov	ecx, 0
	cmp	eax, 45
	jne	L223
	mov	ecx, 1
	jmp	L222
L227:
	mov	ecx, 0
L222:
	add	ebx, 1
L223:
	mov	esi, 0
	mov	edi, 0
	jmp	L224
	.p2align 6
L225:
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
L224:
	movsx	eax, BYTE PTR [ebx]
	sub	eax, 48
	cmp	eax, 9
	jbe	L225
	mov	eax, esi
	mov	edx, edi
	test	ecx, ecx
	jne	L226
	neg	eax
	adc	edx, 0
	neg	edx
L226:
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
	jmp	L231
L235:
	mov	ebx, esi
	shr	ebx
	imul	ebx, edi
	add	ebx, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], ebx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [ebp+24]]
	test	eax, eax
	jns	L232
	shr	esi
	jmp	L231
L232:
	jle	L236
	lea	eax, [ebx+edi]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, esi
	shr	eax
	sub	esi, 1
	sub	esi, eax
L231:
	test	esi, esi
	jne	L235
	mov	eax, 0
	jmp	L234
L236:
	mov	eax, ebx
L234:
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
	jmp	L238
L241:
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
	je	L242
	jle	L240
	mov	edi, ebx
	add	edi, DWORD PTR [ebp+20]
	sub	esi, 1
L240:
	sar	esi
L238:
	test	esi, esi
	jne	L241
	mov	eax, 0
	jmp	L239
L242:
	mov	eax, ebx
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
	jmp	L251
	.p2align 4
L253:
	add	eax, 2
L251:
	cmp	WORD PTR [eax], 0
	je	L252
	cmp	dx, WORD PTR [eax]
	jne	L253
L252:
	cmp	WORD PTR [eax], 0
	mov	edx, 0
	cmove	eax, edx
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	jmp	L257
L259:
	add	eax, 2
	add	edx, 2
L257:
	movzx	ecx, WORD PTR [edx]
	cmp	WORD PTR [eax], cx
	jne	L258
	cmp	WORD PTR [eax], 0
	je	L258
	test	cx, cx
	jne	L259
L258:
	mov	ecx, -1
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	jb	L260
	movzx	eax, WORD PTR [eax]
	cmp	bx, ax
	setb	cl
	movzx	ecx, cl
L260:
	mov	eax, ecx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, ebx
	.p2align 5
L263:
	add	edx, 2
	add	eax, 2
	movzx	ecx, WORD PTR [edx-2]
	mov	WORD PTR [eax-2], cx
	test	cx, cx
	jne	L263
	mov	eax, ebx
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
	jmp	L266
	.p2align 4
L267:
	add	eax, 2
L266:
	cmp	WORD PTR [eax], 0
	jne	L267
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
	jmp	L269
L271:
	sub	ecx, 1
	add	eax, 2
	add	edx, 2
L269:
	test	ecx, ecx
	je	L270
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [eax], bx
	jne	L270
	cmp	WORD PTR [eax], 0
	je	L270
	test	bx, bx
	jne	L271
L270:
	mov	ebx, 0
	test	ecx, ecx
	je	L272
	mov	ebx, -1
	movzx	ecx, WORD PTR [edx]
	cmp	WORD PTR [eax], cx
	jb	L272
	movzx	eax, WORD PTR [eax]
	cmp	cx, ax
	setb	bl
	movzx	ebx, bl
L272:
	mov	eax, ebx
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
	jmp	L276
	.p2align 4
L278:
	sub	edx, 1
	add	eax, 2
L276:
	test	edx, edx
	je	L277
	cmp	cx, WORD PTR [eax]
	jne	L278
L277:
	test	edx, edx
	mov	edx, 0
	cmove	eax, edx
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
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	jmp	L282
	.p2align 5
L284:
	sub	eax, 1
	add	edx, 2
	add	ecx, 2
L282:
	test	eax, eax
	je	L283
	movzx	ebx, WORD PTR [ecx]
	cmp	WORD PTR [edx], bx
	je	L284
L283:
	mov	ebx, 0
	test	eax, eax
	je	L285
	mov	ebx, -1
	movzx	eax, WORD PTR [ecx]
	cmp	WORD PTR [edx], ax
	jb	L285
	movzx	eax, WORD PTR [edx]
	cmp	WORD PTR [ecx], ax
	setb	bl
	movzx	ebx, bl
L285:
	mov	eax, ebx
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
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, ebx
	jmp	L289
	.p2align 5
L290:
	add	ecx, 2
	add	edx, 2
	movzx	esi, WORD PTR [ecx-2]
	mov	WORD PTR [edx-2], si
L289:
	sub	eax, 1
	cmp	eax, -1
	jne	L290
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
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	cmp	ecx, ebx
	je	L292
	mov	esi, ecx
	sub	esi, ebx
	lea	edx, [eax+eax]
	cmp	esi, edx
	jb	L293
	mov	edx, 0
	jmp	L294
	.p2align 4
L295:
	movzx	edx, WORD PTR [ebx+eax*2]
	mov	WORD PTR [ecx+eax*2], dx
L293:
	sub	eax, 1
	cmp	eax, -1
	jne	L295
	jmp	L292
	.p2align 4
L296:
	movzx	esi, WORD PTR [ebx+edx*2]
	mov	WORD PTR [ecx+edx*2], si
	add	edx, 1
L294:
	cmp	edx, eax
	jne	L296
L292:
	mov	eax, ecx
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
	mov	ebx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+16]
	movzx	ecx, WORD PTR [ebp+12]
	mov	edx, ebx
	jmp	L299
	.p2align 4
L300:
	add	edx, 2
	mov	WORD PTR [edx-2], cx
L299:
	sub	eax, 1
	cmp	eax, -1
	jne	L300
	mov	eax, ebx
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	esi, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	cmp	esi, edx
	jnb	L302
	add	edx, ecx
	mov	eax, ecx
	mov	edi, ecx
	neg	edi
	jmp	L303
	.p2align 5
L304:
	lea	ebx, [edx+edi]
	movzx	ecx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
L303:
	test	eax, eax
	jne	L304
	jmp	L301
L302:
	je	L301
	add	ecx, edx
	mov	eax, esi
	jmp	L306
	.p2align 5
L307:
	add	eax, 1
	add	edx, 1
	movzx	ebx, BYTE PTR [eax-1]
	mov	BYTE PTR [edx-1], bl
L306:
	cmp	edx, ecx
	jne	L307
L301:
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
	je	L309
	mov	edi, esi
	xor	esi, esi
L309:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L310
	mov	eax, edx
	xor	edx, edx
L310:
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
	je	L312
	mov	esi, edi
	xor	edi, edi
L312:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L313
	mov	edx, eax
	xor	eax, eax
L313:
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
	jmp	L326
L329:
	bt	edx, eax
	jnc	L327
	add	eax, 1
	jmp	L328
L327:
	add	eax, 1
L326:
	cmp	eax, 32
	jne	L329
	mov	eax, 0
L328:
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
	mov	eax, 0
	test	edx, edx
	je	L331
	mov	eax, 1
	jmp	L332
	.p2align 4
L333:
	sar	edx
	add	eax, 1
L332:
	test	dl, 1
	je	L333
L331:
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
	mov	eax, 1
	fld	DWORD PTR LC2
	fcomip	st, st(1)
	ja	L341
	fld	DWORD PTR LC3
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L336
L341:
	fstp	st(0)
L336:
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
	mov	eax, 1
	fld	QWORD PTR LC4
	fcomip	st, st(1)
	ja	L348
	fld	QWORD PTR LC5
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L343
L348:
	fstp	st(0)
L343:
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
	mov	eax, 1
	fld	TBYTE PTR LC6
	fcomip	st, st(1)
	ja	L355
	fld	TBYTE PTR LC7
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L350
L355:
	fstp	st(0)
L350:
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
	mov	edx, DWORD PTR [ebp+12]
	fucomi	st, st(0)
	jp	L358
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L364
	je	L358
L364:
	fld	DWORD PTR LC9
	test	edx, edx
	jns	L362
	fstp	st(0)
	fld	DWORD PTR LC8
L362:
	test	dl, 1
	je	L361
	fmul	st(1), st
L361:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L365
	fmul	st, st(0)
	jmp	L362
L365:
	fstp	st(0)
L358:
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
	mov	edx, DWORD PTR [ebp+16]
	fucomi	st, st(0)
	jp	L367
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L373
	je	L367
L373:
	test	edx, edx
	jns	L372
	fld	DWORD PTR LC8
	jmp	L371
L372:
	fld	DWORD PTR LC9
L371:
	test	dl, 1
	je	L370
	fmul	st(1), st
L370:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L374
	fmul	st, st(0)
	jmp	L371
L374:
	fstp	st(0)
L367:
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
	mov	edx, DWORD PTR [ebp+20]
	fucomi	st, st(0)
	jp	L376
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	L382
	je	L376
L382:
	test	edx, edx
	jns	L381
	fld	DWORD PTR LC8
	jmp	L380
L381:
	fld	DWORD PTR LC9
L380:
	test	dl, 1
	je	L379
	fmul	st(1), st
L379:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L383
	fmul	st, st(0)
	jmp	L380
L383:
	fstp	st(0)
L376:
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
	mov	esi, DWORD PTR [ebp+8]
	mov	ebx, esi
	add	ebx, DWORD PTR [ebp+16]
	mov	eax, esi
	mov	ecx, DWORD PTR [ebp+12]
	jmp	L385
	.p2align 5
L386:
	add	ecx, 1
	add	eax, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	dl, BYTE PTR [ecx-1]
	mov	BYTE PTR [eax-1], dl
L385:
	cmp	eax, ebx
	jne	L386
	mov	eax, esi
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
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp], edi
	call	_strlen
	add	eax, edi
	jmp	L388
	.p2align 5
L390:
	add	esi, 1
	add	eax, 1
	sub	ebx, 1
L388:
	test	ebx, ebx
	je	L389
	movzx	edx, BYTE PTR [esi]
	mov	BYTE PTR [eax], dl
	test	dl, dl
	jne	L390
L389:
	test	ebx, ebx
	jne	L391
	mov	BYTE PTR [eax], 0
L391:
	mov	eax, edi
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
	jmp	L393
	.p2align 4
L395:
	add	eax, 1
L393:
	cmp	eax, edx
	je	L394
	cmp	BYTE PTR [ecx+eax], 0
	jne	L395
L394:
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	jmp	L397
L399:
	add	edx, 1
	movzx	ebx, BYTE PTR [eax]
	cmp	BYTE PTR [edx-1], bl
	jne	L400
	jmp	L398
L402:
	mov	edx, ecx
L400:
	cmp	BYTE PTR [edx], 0
	jne	L399
	add	eax, 1
L397:
	cmp	BYTE PTR [eax], 0
	jne	L402
	mov	eax, 0
L398:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	edx, 0
	.p2align 5
L405:
	movsx	ecx, BYTE PTR [eax]
	cmp	ebx, ecx
	cmove	edx, eax
	add	eax, 1
	cmp	BYTE PTR [eax-1], 0
	jne	L405
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	esi, eax
	mov	eax, ebx
	test	esi, esi
	je	L409
	mov	eax, DWORD PTR [ebp+12]
	movsx	edi, BYTE PTR [eax]
	jmp	L410
L411:
	mov	DWORD PTR [esp+8], esi
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_strncmp
	test	eax, eax
	je	L413
	add	ebx, 1
L410:
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], ebx
	call	_strchr
	mov	ebx, eax
	test	eax, eax
	jne	L411
	mov	eax, 0
	jmp	L409
L413:
	mov	eax, ebx
L409:
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
	jbe	L427
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	ja	L428
	jmp	L415
L427:
	fstp	st(0)
L415:
	fldz
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L429
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L418
	jmp	L417
L428:
	fstp	st(0)
L417:
	fchs
	jmp	L418
L429:
	fstp	st(1)
	fstp	st(1)
L418:
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
	sub	esp, 44
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	edi, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	esi, ebx
	sub	esi, edx
	add	esi, ecx
	mov	eax, ecx
	test	edx, edx
	je	L431
	cmp	ebx, edx
	jb	L436
	mov	ebx, ecx
	lea	eax, [edx-1]
	mov	DWORD PTR [ebp-28], eax
	lea	eax, [edi+1]
	mov	DWORD PTR [ebp-32], eax
	jmp	L432
L434:
	movzx	eax, BYTE PTR [edi]
	cmp	BYTE PTR [ebx], al
	jne	L433
	lea	eax, [ebx+1]
	mov	ecx, DWORD PTR [ebp-28]
	mov	DWORD PTR [esp+8], ecx
	mov	edx, DWORD PTR [ebp-32]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_memcmp
	test	eax, eax
	je	L437
L433:
	add	ebx, 1
L432:
	cmp	esi, ebx
	jnb	L434
	mov	eax, 0
	jmp	L431
L436:
	mov	eax, 0
	jmp	L431
L437:
	mov	eax, ebx
L431:
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
	mov	edx, 0
	fcomip	st, st(1)
	jbe	L440
	fchs
	mov	edx, 1
	jmp	L440
L440:
	mov	eax, 0
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L442
	jmp	L455
	.p2align 5
L444:
	add	eax, 1
	fmul	DWORD PTR LC8
L442:
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L444
	jmp	L445
L455:
	fldz
	fucomip	st, st(1)
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	fld	DWORD PTR LC8
	fcomip	st, st(1)
	seta	cl
	test	cl, al
	jne	L451
	mov	eax, 0
	jmp	L445
L447:
	sub	eax, 1
	fadd	st, st(0)
	jmp	L446
L451:
	mov	eax, 0
L446:
	fld	DWORD PTR LC8
	fcomip	st, st(1)
	ja	L447
L445:
	mov	ecx, DWORD PTR [ebp+16]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L448
	fchs
L448:
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
	jmp	L457
	.p2align 6
L459:
	mov	ecx, eax
	and	ecx, 1
	mov	ebx, 0
	mov	DWORD PTR [ebp-24], ecx
	mov	DWORD PTR [ebp-20], ebx
	mov	ecx, DWORD PTR [ebp-24]
	mov	ebx, DWORD PTR [ebp-20]
	or	ecx, ebx
	je	L458
	add	DWORD PTR [ebp-32], esi
	adc	DWORD PTR [ebp-28], edi
L458:
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	shr	edx
L457:
	mov	ecx, eax
	or	ecx, edx
	jne	L459
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
	jmp	L461
L464:
	add	edx, edx
	add	ecx, ecx
L461:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	L462
	mov	ebx, 0
	jmp	L463
L462:
	test	edx, edx
	jns	L464
	mov	ebx, 0
	jmp	L463
	.p2align 4
L467:
	cmp	edi, edx
	jb	L466
	sub	edi, edx
	or	ebx, ecx
L466:
	shr	ecx
	shr	edx
L463:
	test	ecx, ecx
	jne	L467
	cmp	DWORD PTR [ebp+16], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, edx
	not	eax
	cmp	al, dl
	cmovl	eax, edx
	mov	edx, 7
	test	al, al
	je	L472
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, [eax-1]
L472:
	mov	eax, edx
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	test	ebx, ebx
	jns	L475
	not	ecx
	not	ebx
L475:
	mov	eax, 63
	mov	edx, ecx
	or	edx, ebx
	je	L476
	test	ebx, ebx
	je	L477
	bsr	eax, ebx
	xor	eax, 31
	jmp	L478
L477:
	bsr	eax, ecx
	xor	eax, 31
	add	eax, 32
L478:
	sub	eax, 1
L476:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, 0
	jmp	L481
	.p2align 4
L483:
	lea	ebx, [edx+ecx]
	test	al, 1
	cmovne	edx, ebx
	shr	eax
	add	ecx, ecx
L481:
	test	eax, eax
	jne	L483
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	esi, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	edi, ecx
	shr	edi, 3
	mov	eax, ecx
	and	eax, -8
	cmp	DWORD PTR [ebp+8], esi
	jb	L485
	lea	edx, [esi+ecx]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	L494
L485:
	mov	edx, esi
	mov	ebx, DWORD PTR [ebp+8]
	lea	edi, [esi+edi*8]
	mov	DWORD PTR [ebp-20], edi
	mov	DWORD PTR [ebp+12], esi
	jmp	L487
	.p2align 5
L488:
	mov	esi, DWORD PTR [edx]
	mov	edi, DWORD PTR [edx+4]
	mov	DWORD PTR [ebx], esi
	mov	DWORD PTR [ebx+4], edi
	add	edx, 8
	add	ebx, 8
L487:
	mov	edi, DWORD PTR [ebp-20]
	cmp	edx, edi
	jne	L488
	mov	esi, DWORD PTR [ebp+12]
	mov	ebx, DWORD PTR [ebp+8]
	jmp	L489
	.p2align 4
L490:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [ebx+eax], dl
	add	eax, 1
L489:
	cmp	eax, ecx
	jb	L490
	jmp	L484
L492:
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edx+ecx], al
	jmp	L486
L494:
	mov	edx, DWORD PTR [ebp+8]
L486:
	sub	ecx, 1
	cmp	ecx, -1
	jne	L492
L484:
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
	mov	edi, DWORD PTR [ebp+8]
	mov	esi, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	ebx, ecx
	shr	ebx
	cmp	edi, esi
	jb	L496
	lea	eax, [esi+ecx]
	cmp	eax, edi
	jnb	L497
L496:
	mov	eax, esi
	mov	edx, edi
	lea	ebx, [esi+ebx*2]
	mov	DWORD PTR [ebp+16], ecx
	jmp	L498
	.p2align 4
L499:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
L498:
	cmp	eax, ebx
	jne	L499
	mov	ecx, DWORD PTR [ebp+16]
	test	cl, 1
	je	L495
	movzx	eax, BYTE PTR [esi-1+ecx]
	mov	BYTE PTR [edi-1+ecx], al
	jmp	L495
	.p2align 4
L501:
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edi+ecx], al
L497:
	sub	ecx, 1
	cmp	ecx, -1
	jne	L501
L495:
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
	mov	esi, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	edi, ecx
	shr	edi, 2
	mov	eax, ecx
	and	eax, -4
	cmp	DWORD PTR [ebp+8], esi
	jb	L505
	lea	edx, [esi+ecx]
	cmp	edx, DWORD PTR [ebp+8]
	jnb	L514
L505:
	mov	edx, esi
	mov	ebx, DWORD PTR [ebp+8]
	lea	edi, [esi+edi*4]
	mov	DWORD PTR [ebp-16], eax
	jmp	L507
	.p2align 4
L508:
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ebx], eax
	add	edx, 4
	add	ebx, 4
L507:
	cmp	edx, edi
	jne	L508
	mov	eax, DWORD PTR [ebp-16]
	mov	ebx, DWORD PTR [ebp+8]
	jmp	L509
	.p2align 4
L510:
	movzx	edx, BYTE PTR [esi+eax]
	mov	BYTE PTR [ebx+eax], dl
	add	eax, 1
L509:
	cmp	eax, ecx
	jb	L510
	jmp	L504
L512:
	movzx	eax, BYTE PTR [esi+ecx]
	mov	BYTE PTR [edx+ecx], al
	jmp	L506
L514:
	mov	edx, DWORD PTR [ebp+8]
L506:
	sub	ecx, 1
	cmp	ecx, -1
	jne	L512
L504:
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
	jns	L519
	fadd	DWORD PTR LC11
L519:
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
	jns	L521
	fadd	DWORD PTR LC11
L521:
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
	mov	eax, 0
	movzx	ebx, WORD PTR [ebp+8]
	mov	ecx, 15
	jmp	L524
	.p2align 5
L526:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	L525
	add	eax, 1
L524:
	cmp	eax, 16
	jne	L526
L525:
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
	mov	eax, 0
	movzx	edx, WORD PTR [ebp+8]
	jmp	L528
	.p2align 4
L530:
	bt	edx, eax
	jc	L529
	add	eax, 1
L528:
	cmp	eax, 16
	jne	L530
L529:
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
	jb	L536
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
	jmp	L537
L536:
	fstp	st(1)
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
L537:
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
	mov	eax, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [ebp+8]
	jmp	L539
	.p2align 5
L541:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
L539:
	cmp	ecx, 16
	jne	L541
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
	mov	edx, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [ebp+8]
	jmp	L543
	.p2align 5
L545:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
L543:
	cmp	ecx, 16
	jne	L545
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	ecx, DWORD PTR [ebp+12]
	mov	edx, 0
	jmp	L547
	.p2align 4
L549:
	lea	ebx, [edx+ecx]
	test	al, 1
	cmovne	edx, ebx
	shr	eax
	add	ecx, ecx
L547:
	test	eax, eax
	jne	L549
	mov	eax, edx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, 0
	test	ecx, ecx
	je	L551
	jmp	L552
	.p2align 5
L554:
	lea	ebx, [eax+ecx]
	test	dl, 1
	cmovne	eax, ebx
	add	ecx, ecx
	shr	edx
L552:
	test	edx, edx
	jne	L554
L551:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	jmp	L557
L560:
	add	edx, edx
	add	ecx, ecx
L557:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	L558
	mov	ebx, 0
	jmp	L559
L558:
	test	edx, edx
	jns	L560
	mov	ebx, 0
	jmp	L559
	.p2align 4
L563:
	cmp	edi, edx
	jb	L562
	sub	edi, edx
	or	ebx, ecx
L562:
	shr	ecx
	shr	edx
L559:
	test	ecx, ecx
	jne	L563
	cmp	DWORD PTR [ebp+16], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	mov	eax, -1
	fcomi	st, st(1)
	ja	L570
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L567
L570:
	fstp	st(0)
	fstp	st(0)
L567:
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
	mov	eax, -1
	fcomi	st, st(1)
	ja	L575
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L572
L575:
	fstp	st(0)
	fstp	st(0)
L572:
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
	push	ebx
	sub	esp, 12
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	edi, eax
	sar	edi, 31
	mov	ebx, edx
	sar	ebx, 31
	mov	DWORD PTR [ebp-24], edx
	mov	DWORD PTR [ebp-20], ebx
	mov	ecx, edi
	imul	ecx, edx
	mov	ebx, DWORD PTR [ebp-20]
	imul	ebx, eax
	add	ecx, ebx
	mul	edx
	add	edx, ecx
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
	mov	eax, DWORD PTR [ebp+8]
	mul	DWORD PTR [ebp+12]
	pop	ebp
	.cfi_restore 5
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
	mov	eax, DWORD PTR [ebp+12]
	mov	edi, 0
	test	eax, eax
	jns	L579
	neg	eax
	mov	edi, 1
L579:
	mov	edx, 0
	mov	ecx, 0
	mov	DWORD PTR [ebp-20], edi
	mov	DWORD PTR [ebp-16], edx
	mov	DWORD PTR [ebp+8], ebx
	jmp	L580
	.p2align 6
L582:
	mov	edi, DWORD PTR [ebp-16]
	mov	esi, edi
	add	esi, DWORD PTR [ebp+8]
	test	al, 1
	cmove	esi, edi
	mov	DWORD PTR [ebp-16], esi
	sal	DWORD PTR [ebp+8]
	sar	eax
	add	ecx, 1
L580:
	test	eax, eax
	setne	bl
	mov	esi, ebx
	cmp	cl, 31
	setbe	bl
	mov	edx, esi
	test	bl, dl
	jne	L582
	mov	edi, DWORD PTR [ebp-20]
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, edx
	neg	eax
	test	edi, edi
	cmove	eax, edx
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
	mov	ebx, 0
	test	eax, eax
	jns	L587
	neg	eax
	mov	ebx, 1
L587:
	test	edx, edx
	jns	L588
	neg	edx
	xor	ebx, 1
L588:
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
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
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ebx, 0
	test	edx, edx
	jns	L592
	neg	edx
	mov	ebx, 1
L592:
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
	jmp	L597
L600:
	add	edx, edx
	add	ecx, ecx
L597:
	cmp	dx, di
	setb	bl
	mov	esi, ebx
	test	cx, cx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	L598
	mov	ebx, 0
	jmp	L599
L598:
	test	dx, dx
	jns	L600
	mov	ebx, 0
	jmp	L599
	.p2align 5
L603:
	cmp	di, dx
	jb	L602
	sub	edi, edx
	or	ebx, ecx
L602:
	shr	cx
	shr	dx
L599:
	test	cx, cx
	jne	L603
	cmp	DWORD PTR [ebp+16], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	jmp	L607
L610:
	add	edx, edx
	add	ecx, ecx
L607:
	cmp	edx, edi
	setb	bl
	mov	esi, ebx
	test	ecx, ecx
	setne	bl
	mov	eax, esi
	test	al, bl
	jne	L608
	mov	ebx, 0
	jmp	L609
L608:
	test	edx, edx
	jns	L610
	mov	ebx, 0
	jmp	L609
	.p2align 4
L613:
	cmp	edi, edx
	jb	L612
	sub	edi, edx
	or	ebx, ecx
L612:
	shr	ecx
	shr	edx
L609:
	test	ecx, ecx
	jne	L613
	cmp	DWORD PTR [ebp+16], 0
	mov	eax, ebx
	cmovne	eax, edi
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
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-24], esi
	mov	DWORD PTR [ebp-20], edi
	mov	ebx, DWORD PTR [ebp+16]
	test	bl, 32
	je	L617
	mov	eax, 0
	lea	ecx, [ebx-32]
	sal	esi, cl
	mov	edx, esi
	jmp	L619
L617:
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, DWORD PTR [ebp-20]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	L619
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
L619:
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
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	ebx, DWORD PTR [ebp+16]
	test	bl, 32
	je	L622
	mov	esi, edx
	mov	edi, edx
	sar	edi, 31
	mov	edx, edi
	lea	ecx, [ebx-32]
	sar	esi, cl
	mov	eax, esi
	jmp	L624
L622:
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, DWORD PTR [ebp-20]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	L624
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
L624:
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
	push	esi
	push	ebx
	sub	esp, 8
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, 0
	cmp	ebx, edx
	jl	L638
	mov	eax, 2
	jg	L638
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, 0
	cmp	ecx, edx
	jb	L638
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
L638:
	add	esp, 8
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	sub	esp, 16
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
	mov	esi, DWORD PTR [ebp+8]
	mov	edi, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-24], esi
	mov	DWORD PTR [ebp-20], edi
	mov	ebx, DWORD PTR [ebp+16]
	test	bl, 32
	je	L654
	mov	edx, 0
	mov	esi, edi
	lea	ecx, [ebx-32]
	shr	esi, cl
	mov	eax, esi
	jmp	L656
L654:
	mov	esi, DWORD PTR [ebp-24]
	mov	edi, DWORD PTR [ebp-20]
	mov	eax, esi
	mov	edx, edi
	test	ebx, ebx
	je	L656
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
L656:
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
	imul	ecx, esi
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
	mov	ecx, DWORD PTR [ebp+8]
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
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
	mov	edx, DWORD PTR [ebp+8]
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
	mov	edx, DWORD PTR [ebp+16]
	mov	ecx, edx
	shr	ecx, 31
	fld1
L668:
	test	dl, 1
	je	L666
	fmul	st, st(1)
L666:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L667
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	L668
L667:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	L671
	fstp	st(0)
	fdivr	DWORD PTR LC10
	jmp	L669
L671:
	fstp	st(1)
L669:
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
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, edx
	shr	ecx, 31
	fld1
L675:
	test	dl, 1
	je	L673
	fmul	st, st(1)
L673:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	L674
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
	jmp	L675
L674:
	fstp	st(1)
	fld	st(0)
	test	ecx, ecx
	je	L678
	fstp	st(0)
	fdivr	DWORD PTR LC10
	jmp	L676
L678:
	fstp	st(1)
L676:
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
	push	esi
	push	ebx
	sub	esp, 8
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ecx, DWORD PTR [ebp+8]
	mov	ebx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, 0
	cmp	ebx, edx
	jb	L680
	mov	esi, DWORD PTR [ebp-12]
	mov	eax, 2
	cmp	esi, ebx
	jb	L680
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, 0
	cmp	ecx, edx
	jb	L680
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
L680:
	add	esp, 8
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	sub	esp, 16
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
