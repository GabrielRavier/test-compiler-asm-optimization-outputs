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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	cmp	eax, DWORD PTR [ebp-4]
	jnb	L2
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-4], eax
	jmp	L3
L4:
	sub	DWORD PTR [ebp-8], 1
	sub	DWORD PTR [ebp-4], 1
	mov	eax, DWORD PTR [ebp-8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L3:
	cmp	DWORD PTR [ebp+16], 0
	jne	L4
	jmp	L5
L2:
	mov	eax, DWORD PTR [ebp-8]
	cmp	eax, DWORD PTR [ebp-4]
	je	L5
	jmp	L6
L7:
	mov	edx, DWORD PTR [ebp-8]
	lea	eax, [edx+1]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	lea	ecx, [eax+1]
	mov	DWORD PTR [ebp-4], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L6:
	cmp	DWORD PTR [ebp+16], 0
	jne	L7
L5:
	mov	eax, DWORD PTR [ebp+8]
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+16]
	movzx	eax, al
	mov	DWORD PTR [ebp+16], eax
	jmp	L10
L12:
	sub	DWORD PTR [ebp+20], 1
	add	DWORD PTR [ebp-8], 1
	add	DWORD PTR [ebp-4], 1
L10:
	cmp	DWORD PTR [ebp+20], 0
	je	L11
	mov	eax, DWORD PTR [ebp-8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+16], eax
	jne	L12
L11:
	cmp	DWORD PTR [ebp+20], 0
	je	L13
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	jmp	L14
L13:
	mov	eax, 0
L14:
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, al
	mov	DWORD PTR [ebp+12], eax
	jmp	L16
L18:
	add	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp+16], 1
L16:
	cmp	DWORD PTR [ebp+16], 0
	je	L17
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+12], eax
	jne	L18
L17:
	cmp	DWORD PTR [ebp+16], 0
	je	L19
	mov	eax, DWORD PTR [ebp-4]
	jmp	L21
L19:
	mov	eax, 0
L21:
	leave
	.cfi_restore 5
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	jmp	L23
L25:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp-4], 1
	add	DWORD PTR [ebp-8], 1
L23:
	cmp	DWORD PTR [ebp+16], 0
	je	L24
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	L25
L24:
	cmp	DWORD PTR [ebp+16], 0
	je	L26
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	jmp	L28
L26:
	mov	edx, 0
L28:
	mov	eax, edx
	leave
	.cfi_restore 5
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	jmp	L30
L31:
	mov	edx, DWORD PTR [ebp-8]
	lea	eax, [edx+1]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	lea	ecx, [eax+1]
	mov	DWORD PTR [ebp-4], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L30:
	cmp	DWORD PTR [ebp+16], 0
	jne	L31
	mov	eax, DWORD PTR [ebp+8]
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, al
	mov	DWORD PTR [ebp+12], eax
	jmp	L34
L36:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+12], eax
	jne	L34
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	jmp	L35
L34:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L36
	mov	eax, 0
L35:
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L38
L39:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp-4], 1
L38:
	cmp	DWORD PTR [ebp+16], 0
	jne	L39
	mov	eax, DWORD PTR [ebp+8]
	leave
	.cfi_restore 5
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
	jmp	L42
L43:
	add	DWORD PTR [ebp+12], 1
	add	DWORD PTR [ebp+8], 1
L42:
	mov	eax, DWORD PTR [ebp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L43
	mov	eax, DWORD PTR [ebp+8]
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
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, al
	mov	DWORD PTR [ebp+12], eax
	jmp	L46
L48:
	add	DWORD PTR [ebp+8], 1
L46:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L47
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [ebp+12], eax
	jne	L48
L47:
	mov	eax, DWORD PTR [ebp+8]
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
L53:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [ebp+12], edx
	jne	L51
	jmp	L52
L51:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	L53
	mov	eax, 0
L52:
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
	jmp	L55
L57:
	add	DWORD PTR [ebp+8], 1
	add	DWORD PTR [ebp+12], 1
L55:
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L56
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L57
L56:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	mov	eax, edx
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L60
L61:
	add	DWORD PTR [ebp+8], 1
L60:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L61
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, DWORD PTR [ebp-4]
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L66
	mov	edx, 0
	jmp	L65
L68:
	add	DWORD PTR [ebp-4], 1
	add	DWORD PTR [ebp-8], 1
	sub	DWORD PTR [ebp+16], 1
L66:
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L67
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L67
	cmp	DWORD PTR [ebp+16], 0
	je	L67
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	L68
L67:
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
L65:
	mov	eax, edx
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	jmp	L70
L71:
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 2
	add	DWORD PTR [ebp-4], 2
	sub	DWORD PTR [ebp+16], 2
L70:
	cmp	DWORD PTR [ebp+16], 1
	jg	L71
	leave
	.cfi_restore 5
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
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 127
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
	cmp	DWORD PTR [ebp+8], 32
	je	L77
	cmp	DWORD PTR [ebp+8], 9
	jne	L78
L77:
	mov	eax, 1
	jmp	L80
L78:
	mov	eax, 0
L80:
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
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, 31
	jbe	L82
	cmp	DWORD PTR [ebp+8], 127
	jne	L83
L82:
	mov	eax, 1
	jmp	L85
L83:
	mov	eax, 0
L85:
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
	cmp	DWORD PTR [ebp+8], 32
	je	L95
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 9
	cmp	eax, 4
	ja	L96
L95:
	mov	eax, 1
	jmp	L98
L96:
	mov	eax, 0
L98:
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
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-4], ax
	cmp	WORD PTR [ebp-4], 31
	jbe	L102
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 127
	cmp	eax, 32
	jbe	L102
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 8232
	cmp	eax, 1
	jbe	L102
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 65529
	cmp	eax, 2
	ja	L103
L102:
	mov	eax, 1
	jmp	L105
L103:
	mov	eax, 0
L105:
	leave
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
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-4], ax
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	leave
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
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-4], ax
	cmp	WORD PTR [ebp-4], 254
	ja	L109
	movzx	eax, WORD PTR [ebp-4]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
	jmp	L110
L109:
	cmp	WORD PTR [ebp-4], 8231
	jbe	L111
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	L111
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 57344
	cmp	eax, 8184
	ja	L112
L111:
	mov	eax, 1
	jmp	L110
L112:
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	L113
	movzx	eax, WORD PTR [ebp-4]
	and	eax, 65534
	cmp	eax, 65534
	jne	L114
L113:
	mov	eax, 0
	jmp	L110
L114:
	mov	eax, 1
L110:
	leave
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
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-4], ax
	movzx	eax, WORD PTR [ebp-4]
	sub	eax, 48
	cmp	eax, 9
	jbe	L116
	movzx	eax, WORD PTR [ebp-4]
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	ja	L117
L116:
	mov	eax, 1
	jmp	L119
L117:
	mov	eax, 0
L119:
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L123
	fld	QWORD PTR [ebp-8]
	jmp	L124
L123:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L125
	fld	QWORD PTR [ebp-16]
	jmp	L124
L125:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L130
	fld	QWORD PTR [ebp-8]
	fsub	QWORD PTR [ebp-16]
	jmp	L124
L130:
	fldz
L124:
	leave
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
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L132
	fld	DWORD PTR [ebp+8]
	jmp	L133
L132:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+12]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L134
	fld	DWORD PTR [ebp+12]
	jmp	L133
L134:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L139
	fld	DWORD PTR [ebp+8]
	fsub	DWORD PTR [ebp+12]
	jmp	L133
L139:
	fldz
L133:
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L141
	fld	QWORD PTR [ebp-16]
	jmp	L142
L141:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L143
	fld	QWORD PTR [ebp-8]
	jmp	L142
L143:
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [ebp-16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L144
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L145
	fld	QWORD PTR [ebp-16]
	jmp	L142
L145:
	fld	QWORD PTR [ebp-8]
	jmp	L142
L144:
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-16]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L151
	fld	QWORD PTR [ebp-16]
	jmp	L142
L151:
	fld	QWORD PTR [ebp-8]
L142:
	leave
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
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L153
	fld	DWORD PTR [ebp+12]
	jmp	L154
L153:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+12]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L155
	fld	DWORD PTR [ebp+8]
	jmp	L154
L155:
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [ebp+12]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L156
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L157
	fld	DWORD PTR [ebp+12]
	jmp	L154
L157:
	fld	DWORD PTR [ebp+8]
	jmp	L154
L156:
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+12]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L163
	fld	DWORD PTR [ebp+12]
	jmp	L154
L163:
	fld	DWORD PTR [ebp+8]
L154:
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
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L165
	fld	TBYTE PTR [ebp+20]
	jmp	L166
L165:
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+20]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L167
	fld	TBYTE PTR [ebp+8]
	jmp	L166
L167:
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [ebp+20]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L168
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L169
	fld	TBYTE PTR [ebp+20]
	jmp	L166
L169:
	fld	TBYTE PTR [ebp+8]
	jmp	L166
L168:
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+20]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L175
	fld	TBYTE PTR [ebp+20]
	jmp	L166
L175:
	fld	TBYTE PTR [ebp+8]
L166:
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L177
	fld	QWORD PTR [ebp-16]
	jmp	L178
L177:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L179
	fld	QWORD PTR [ebp-8]
	jmp	L178
L179:
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [ebp-16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L180
	fld	QWORD PTR [ebp-8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L181
	fld	QWORD PTR [ebp-8]
	jmp	L178
L181:
	fld	QWORD PTR [ebp-16]
	jmp	L178
L180:
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-16]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L187
	fld	QWORD PTR [ebp-8]
	jmp	L178
L187:
	fld	QWORD PTR [ebp-16]
L178:
	leave
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
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L189
	fld	DWORD PTR [ebp+12]
	jmp	L190
L189:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+12]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L191
	fld	DWORD PTR [ebp+8]
	jmp	L190
L191:
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [ebp+12]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L192
	fld	DWORD PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L193
	fld	DWORD PTR [ebp+8]
	jmp	L190
L193:
	fld	DWORD PTR [ebp+12]
	jmp	L190
L192:
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+12]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L199
	fld	DWORD PTR [ebp+8]
	jmp	L190
L199:
	fld	DWORD PTR [ebp+12]
L190:
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
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L201
	fld	TBYTE PTR [ebp+20]
	jmp	L202
L201:
	fld	TBYTE PTR [ebp+20]
	fld	TBYTE PTR [ebp+20]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L203
	fld	TBYTE PTR [ebp+8]
	jmp	L202
L203:
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [ebp+20]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L204
	fld	TBYTE PTR [ebp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L205
	fld	TBYTE PTR [ebp+8]
	jmp	L202
L205:
	fld	TBYTE PTR [ebp+20]
	jmp	L202
L204:
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+20]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L211
	fld	TBYTE PTR [ebp+8]
	jmp	L202
L211:
	fld	TBYTE PTR [ebp+20]
L202:
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], OFFSET FLAT:_s.0
	jmp	L213
L214:
	mov	eax, DWORD PTR [ebp-8]
	and	eax, 63
	movzx	edx, BYTE PTR _digits[eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	add	DWORD PTR [ebp-4], 1
	shr	DWORD PTR [ebp-8], 6
L213:
	cmp	DWORD PTR [ebp-8], 0
	jne	L214
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], 0
	mov	eax, OFFSET FLAT:_s.0
	leave
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
	mov	edx, 0
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, edx
	nop
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR _seed
	mov	edx, DWORD PTR _seed+4
	imul	ebx, edx, 1284865837
	imul	ecx, eax, 1481765933
	add	ecx, ebx
	mov	ebx, 1284865837
	mul	ebx
	add	ecx, edx
	mov	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, edx
	mov	eax, DWORD PTR _seed
	mov	edx, DWORD PTR _seed+4
	mov	eax, edx
	xor	edx, edx
	shr	eax
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-8], 0
	jne	L220
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax+4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax], edx
	jmp	L219
L220:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp-8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	L219
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [ebp-4]
	mov	DWORD PTR [eax+4], edx
L219:
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	L223
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], edx
L223:
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L222
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
L222:
	leave
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
	push	ebx
	sub	esp, 36
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	L227
L230:
	mov	edx, ebx
	imul	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	test	eax, eax
	jne	L228
	imul	ebx, DWORD PTR [ebp-12]
	mov	edx, ebx
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	jmp	L229
L228:
	add	DWORD PTR [ebp-12], 1
L227:
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-24]
	jb	L230
	mov	eax, DWORD PTR [ebp-24]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [eax], edx
	imul	ebx, DWORD PTR [ebp-24]
	mov	edx, ebx
	mov	eax, DWORD PTR [ebp-20]
	add	edx, eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	_memcpy
L229:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	sub	esp, 36
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [ebp+20]
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	L232
L235:
	mov	edx, ebx
	imul	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	test	eax, eax
	jne	L233
	imul	ebx, DWORD PTR [ebp-12]
	mov	edx, ebx
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	jmp	L234
L233:
	add	DWORD PTR [ebp-12], 1
L232:
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-24]
	jb	L235
	mov	eax, 0
L234:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
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
	sub	esp, 20
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-8], 0
	jmp	L239
L240:
	add	DWORD PTR [ebp+8], 1
L239:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L240
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	L241
	cmp	eax, 45
	jne	L243
	mov	DWORD PTR [ebp-8], 1
L241:
	add	DWORD PTR [ebp+8], 1
	jmp	L243
L244:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp+8], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [ebp-4], eax
L243:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L244
	cmp	DWORD PTR [ebp-8], 0
	jne	L245
	mov	eax, DWORD PTR [ebp-4]
	neg	eax
	jmp	L247
L245:
	mov	eax, DWORD PTR [ebp-4]
L247:
	leave
	.cfi_restore 5
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
	sub	esp, 20
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-8], 0
	jmp	L249
L250:
	add	DWORD PTR [ebp+8], 1
L249:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L250
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	L251
	cmp	eax, 45
	jne	L253
	mov	DWORD PTR [ebp-8], 1
L251:
	add	DWORD PTR [ebp+8], 1
	jmp	L253
L254:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp+8], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [ebp-4], eax
L253:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L254
	cmp	DWORD PTR [ebp-8], 0
	jne	L255
	mov	eax, DWORD PTR [ebp-4]
	neg	eax
	jmp	L257
L255:
	mov	eax, DWORD PTR [ebp-4]
L257:
	leave
	.cfi_restore 5
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
	push	ebx
	sub	esp, 24
	.cfi_offset 3, -12
	mov	DWORD PTR [ebp-16], 0
	mov	DWORD PTR [ebp-12], 0
	mov	DWORD PTR [ebp-20], 0
	jmp	L259
L260:
	add	DWORD PTR [ebp+8], 1
L259:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L260
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	L261
	cmp	eax, 45
	jne	L263
	mov	DWORD PTR [ebp-20], 1
L261:
	add	DWORD PTR [ebp+8], 1
	jmp	L263
L264:
	mov	ecx, DWORD PTR [ebp-16]
	mov	ebx, DWORD PTR [ebp-12]
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 2
	sal	eax, 2
	add	eax, ecx
	adc	edx, ebx
	add	eax, eax
	adc	edx, edx
	mov	ecx, DWORD PTR [ebp+8]
	lea	ebx, [ecx+1]
	mov	DWORD PTR [ebp+8], ebx
	movzx	ecx, BYTE PTR [ecx]
	movsx	ecx, cl
	sub	ecx, 48
	mov	ebx, ecx
	sar	ebx, 31
	sub	eax, ecx
	sbb	edx, ebx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
L263:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L264
	cmp	DWORD PTR [ebp-20], 0
	jne	L265
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	neg	eax
	adc	edx, 0
	neg	edx
	jmp	L267
L265:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
L267:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	sub	esp, 40
	jmp	L269
L274:
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	imul	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	mov	DWORD PTR [ebp-16], eax
	cmp	DWORD PTR [ebp-16], 0
	jns	L270
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	mov	DWORD PTR [ebp+16], eax
	jmp	L269
L270:
	cmp	DWORD PTR [ebp-16], 0
	jle	L272
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp+20]
	add	eax, edx
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	mov	edx, DWORD PTR [ebp+16]
	sub	edx, eax
	lea	eax, [edx-1]
	mov	DWORD PTR [ebp+16], eax
	jmp	L269
L272:
	mov	eax, DWORD PTR [ebp-12]
	jmp	L273
L269:
	cmp	DWORD PTR [ebp+16], 0
	jne	L274
	mov	eax, 0
L273:
	leave
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
	sub	esp, 40
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	jmp	L276
L280:
	mov	eax, DWORD PTR [ebp-16]
	sar	eax
	imul	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+28]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp-20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [ebp+24]
	call	eax
	mov	DWORD PTR [ebp-24], eax
	cmp	DWORD PTR [ebp-24], 0
	jne	L277
	mov	eax, DWORD PTR [ebp-20]
	jmp	L278
L277:
	cmp	DWORD PTR [ebp-24], 0
	jle	L279
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+20]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	sub	DWORD PTR [ebp-16], 1
L279:
	sar	DWORD PTR [ebp-16]
L276:
	cmp	DWORD PTR [ebp-16], 0
	jne	L280
	mov	eax, 0
L278:
	leave
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	esi, eax
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	eax, edx
	mov	ecx, esi
	mov	ebx, eax
	mov	eax, ecx
	mov	edx, ebx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
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
	sub	esp, 20
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	edi, eax
	neg	edi
	mov	ecx, edi
	mov	esi, edx
	adc	esi, 0
	mov	ebx, esi
	neg	ebx
	mov	edi, eax
	cmovns	edi, ecx
	mov	DWORD PTR [ebp-32], edi
	mov	eax, edx
	cmovns	eax, ebx
	mov	DWORD PTR [ebp-28], eax
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
	sub	esp, 60
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-44], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-56], eax
	mov	eax, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-52], eax
	mov	eax, DWORD PTR [ebp-56]
	mov	edx, DWORD PTR [ebp-52]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divdi3
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	ecx, DWORD PTR [ebp-56]
	mov	ebx, DWORD PTR [ebp-52]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___moddi3
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [ebp+8]
	add	esp, 60
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
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
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
	push	esi
	push	ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	esi, eax
	mov	eax, DWORD PTR [ebp+8]
	cdq
	idiv	DWORD PTR [ebp+12]
	mov	eax, edx
	mov	ecx, esi
	mov	ebx, eax
	mov	eax, ecx
	mov	edx, ebx
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
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
	sub	esp, 20
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	edi, eax
	neg	edi
	mov	ecx, edi
	mov	esi, edx
	adc	esi, 0
	mov	ebx, esi
	neg	ebx
	mov	edi, eax
	cmovns	edi, ecx
	mov	DWORD PTR [ebp-32], edi
	mov	eax, edx
	cmovns	eax, ebx
	mov	DWORD PTR [ebp-28], eax
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
	sub	esp, 60
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-44], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-56], eax
	mov	eax, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebp-52], eax
	mov	eax, DWORD PTR [ebp-56]
	mov	edx, DWORD PTR [ebp-52]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divdi3
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	ecx, DWORD PTR [ebp-56]
	mov	ebx, DWORD PTR [ebp-52]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___moddi3
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [ebp+8]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [ebp+8]
	add	esp, 60
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
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+12]
	mov	WORD PTR [ebp-4], ax
	jmp	L296
L298:
	add	DWORD PTR [ebp+8], 2
L296:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L297
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [ebp-4], ax
	jne	L298
L297:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L299
	mov	eax, DWORD PTR [ebp+8]
	jmp	L301
L299:
	mov	eax, 0
L301:
	leave
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
	jmp	L303
L305:
	add	DWORD PTR [ebp+8], 2
	add	DWORD PTR [ebp+12], 2
L303:
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L304
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L304
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L305
L304:
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L306
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	L308
L306:
	mov	eax, -1
L308:
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
L310:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+2]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+2]
	mov	DWORD PTR [ebp+8], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L310
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L313
L314:
	add	DWORD PTR [ebp+8], 2
L313:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L314
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, DWORD PTR [ebp-4]
	sar	eax
	leave
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
	jmp	L317
L319:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 2
	add	DWORD PTR [ebp+12], 2
L317:
	cmp	DWORD PTR [ebp+16], 0
	je	L318
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L318
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L318
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L319
L318:
	cmp	DWORD PTR [ebp+16], 0
	je	L320
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L321
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	L324
L321:
	mov	eax, -1
	jmp	L324
L320:
	mov	eax, 0
L324:
	pop	ebp
	.cfi_restore 5
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
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+12]
	mov	WORD PTR [ebp-4], ax
	jmp	L326
L328:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 2
L326:
	cmp	DWORD PTR [ebp+16], 0
	je	L327
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [ebp-4], ax
	jne	L328
L327:
	cmp	DWORD PTR [ebp+16], 0
	je	L329
	mov	eax, DWORD PTR [ebp+8]
	jmp	L331
L329:
	mov	eax, 0
L331:
	leave
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
	jmp	L333
L335:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 2
	add	DWORD PTR [ebp+12], 2
L333:
	cmp	DWORD PTR [ebp+16], 0
	je	L334
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	je	L335
L334:
	cmp	DWORD PTR [ebp+16], 0
	je	L336
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L337
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	L340
L337:
	mov	eax, -1
	jmp	L340
L336:
	mov	eax, 0
L340:
	pop	ebp
	.cfi_restore 5
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L342
L343:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+2]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+2]
	mov	DWORD PTR [ebp+8], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L342:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L343
	mov	eax, DWORD PTR [ebp-4]
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jne	L346
	mov	eax, DWORD PTR [ebp+8]
	jmp	L347
L346:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	sub	edx, eax
	mov	eax, DWORD PTR [ebp+16]
	add	eax, eax
	cmp	edx, eax
	jnb	L352
	jmp	L349
L350:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp+16]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
L349:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L350
	jmp	L351
L353:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+2]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+2]
	mov	DWORD PTR [ebp+8], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L352:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L353
L351:
	mov	eax, DWORD PTR [ebp-4]
L347:
	leave
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+12]
	mov	WORD PTR [ebp-20], ax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L355
L356:
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+2]
	mov	DWORD PTR [ebp+8], edx
	movzx	edx, WORD PTR [ebp-20]
	mov	WORD PTR [eax], dx
L355:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L356
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	jnb	L359
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-8], eax
	jmp	L360
L361:
	sub	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp-8], 1
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L360:
	cmp	DWORD PTR [ebp+16], 0
	jne	L361
	jmp	L358
L359:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	je	L358
	jmp	L363
L364:
	mov	edx, DWORD PTR [ebp-4]
	lea	eax, [edx+1]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-8]
	lea	ecx, [eax+1]
	mov	DWORD PTR [ebp-8], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L363:
	cmp	DWORD PTR [ebp+16], 0
	jne	L364
L358:
	leave
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
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L368
	mov	edi, esi
	xor	esi, esi
L368:
	mov	ecx, DWORD PTR [ebp+16]
	neg	ecx
	and	ecx, 63
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L369
	mov	eax, edx
	xor	edx, edx
L369:
	or	eax, esi
	or	edx, edi
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
	sub	esp, 8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	ecx, DWORD PTR [ebp+16]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L372
	mov	esi, edi
	xor	edi, edi
L372:
	mov	ecx, DWORD PTR [ebp+16]
	neg	ecx
	and	ecx, 63
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L373
	mov	edx, eax
	xor	eax, eax
L373:
	or	eax, esi
	or	edx, edi
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
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
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
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
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
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
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
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
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
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-8], ax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, 16
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
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
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-8], ax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [ebp-8]
	mov	eax, 16
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
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
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebp-8], al
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, 8
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
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
	sub	esp, 4
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebp-8], al
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [ebp-8]
	mov	eax, 8
	sub	eax, DWORD PTR [ebp+12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	WORD PTR [ebp-2], 255
	movzx	eax, WORD PTR [ebp-20]
	movzx	edx, WORD PTR [ebp-2]
	sal	edx, 8
	and	eax, edx
	sar	eax, 8
	mov	ecx, eax
	movzx	edx, WORD PTR [ebp-20]
	movzx	eax, WORD PTR [ebp-2]
	and	eax, edx
	sal	eax, 8
	or	eax, ecx
	leave
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 255
	mov	eax, DWORD PTR [ebp-4]
	sal	eax, 24
	and	eax, DWORD PTR [ebp+8]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	sal	eax, 16
	and	eax, DWORD PTR [ebp+8]
	shr	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	sal	eax, 8
	and	eax, DWORD PTR [ebp+8]
	sal	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	and	eax, DWORD PTR [ebp-4]
	sal	eax, 24
	or	eax, edx
	leave
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
	push	ebx
	sub	esp, 28
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-16], 255
	mov	DWORD PTR [ebp-12], 0
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 16
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shrd	eax, edx, 24
	shr	edx, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shrd	eax, edx, 8
	shr	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 24
	sal	eax, 24
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shld	edx, eax, 8
	sal	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 16
	sal	eax, 16
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	shld	edx, eax, 24
	sal	eax, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 8
	sal	eax, 8
	and	eax, DWORD PTR [ebp-32]
	and	edx, DWORD PTR [ebp-28]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	and	eax, DWORD PTR [ebp-16]
	and	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	or	eax, ecx
	or	edx, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L397
L400:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L398
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	jmp	L399
L398:
	add	DWORD PTR [ebp-4], 1
L397:
	cmp	DWORD PTR [ebp-4], 31
	jbe	L400
	mov	eax, 0
L399:
	leave
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
	push	ebx
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	test	eax, eax
	jne	L402
	mov	eax, 0
	jmp	L403
L402:
	mov	ebx, 1
	jmp	L404
L405:
	sar	eax
	add	ebx, 1
L404:
	mov	edx, eax
	and	edx, 1
	je	L405
	mov	eax, ebx
L403:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	fld	DWORD PTR LC3
	fcomip	st, st(1)
	fstp	st(0)
	ja	L407
	fld	DWORD PTR LC4
	fld	DWORD PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L412
L407:
	mov	eax, 1
	jmp	L411
L412:
	mov	eax, 0
L411:
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
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR LC5
	fcomip	st, st(1)
	fstp	st(0)
	ja	L414
	fld	QWORD PTR LC6
	fld	QWORD PTR [ebp-8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L419
L414:
	mov	eax, 1
	jmp	L418
L419:
	mov	eax, 0
L418:
	leave
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
	fld	TBYTE PTR LC7
	fcomip	st, st(1)
	fstp	st(0)
	ja	L421
	fld	TBYTE PTR LC8
	fld	TBYTE PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L426
L421:
	mov	eax, 1
	jmp	L425
L426:
	mov	eax, 0
L425:
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
	nop
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
	sub	esp, 16
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jp	L429
	fld	DWORD PTR [ebp+8]
	fadd	st, st(0)
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	jp	L439
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	je	L429
	jmp	L437
L439:
	fstp	st(0)
L437:
	cmp	DWORD PTR [ebp+12], 0
	jns	L431
	fld	DWORD PTR LC9
	jmp	L432
L431:
	fld	DWORD PTR LC10
L432:
	fstp	DWORD PTR [ebp-4]
L435:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	L433
	fld	DWORD PTR [ebp+8]
	fmul	DWORD PTR [ebp-4]
	fstp	DWORD PTR [ebp+8]
L433:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+12], eax
	cmp	DWORD PTR [ebp+12], 0
	je	L429
	fld	DWORD PTR [ebp-4]
	fmul	st, st(0)
	fstp	DWORD PTR [ebp-4]
	jmp	L435
L429:
	fld	DWORD PTR [ebp+8]
	leave
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
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR [ebp-24]
	fucomip	st, st(1)
	fstp	st(0)
	jp	L441
	fld	QWORD PTR [ebp-24]
	fadd	st, st(0)
	fld	QWORD PTR [ebp-24]
	fucomip	st, st(1)
	jp	L451
	fld	QWORD PTR [ebp-24]
	fucomip	st, st(1)
	fstp	st(0)
	je	L441
	jmp	L449
L451:
	fstp	st(0)
L449:
	cmp	DWORD PTR [ebp+16], 0
	jns	L443
	fld	QWORD PTR LC11
	jmp	L444
L443:
	fld	QWORD PTR LC12
L444:
	fstp	QWORD PTR [ebp-8]
L447:
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	je	L445
	fld	QWORD PTR [ebp-24]
	fmul	QWORD PTR [ebp-8]
	fstp	QWORD PTR [ebp-24]
L445:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+16], eax
	cmp	DWORD PTR [ebp+16], 0
	je	L441
	fld	QWORD PTR [ebp-8]
	fmul	st, st(0)
	fstp	QWORD PTR [ebp-8]
	jmp	L447
L441:
	fld	QWORD PTR [ebp-24]
	leave
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
	sub	esp, 16
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jp	L453
	fld	TBYTE PTR [ebp+8]
	fadd	st, st(0)
	fld	TBYTE PTR [ebp+8]
	fucomip	st, st(1)
	jp	L463
	fld	TBYTE PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	je	L453
	jmp	L461
L463:
	fstp	st(0)
L461:
	cmp	DWORD PTR [ebp+20], 0
	jns	L455
	fld	TBYTE PTR LC13
	jmp	L456
L455:
	fld	TBYTE PTR LC14
L456:
	fstp	TBYTE PTR [ebp-12]
L459:
	mov	eax, DWORD PTR [ebp+20]
	and	eax, 1
	je	L457
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp-12]
	fmulp	st(1), st
	fstp	TBYTE PTR [ebp+8]
L457:
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+20], eax
	cmp	DWORD PTR [ebp+20], 0
	je	L453
	fld	TBYTE PTR [ebp-12]
	fmul	st, st(0)
	fstp	TBYTE PTR [ebp-12]
	jmp	L459
L453:
	fld	TBYTE PTR [ebp+8]
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	jmp	L465
L466:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp-4], edx
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp-8], edx
	movzx	edx, BYTE PTR [eax]
	xor	edx, ecx
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L465:
	cmp	DWORD PTR [ebp+16], 0
	jne	L466
	mov	eax, DWORD PTR [ebp+8]
	leave
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	edx, DWORD PTR [ebp+8]
	add	eax, edx
	mov	DWORD PTR [ebp-4], eax
	jmp	L469
L471:
	add	DWORD PTR [ebp+12], 1
	add	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp+16], 1
L469:
	cmp	DWORD PTR [ebp+16], 0
	je	L470
	mov	eax, DWORD PTR [ebp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L471
L470:
	cmp	DWORD PTR [ebp+16], 0
	jne	L472
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], 0
L472:
	mov	eax, DWORD PTR [ebp+8]
	leave
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L475
L480:
	add	DWORD PTR [ebp-4], 1
L475:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp+12]
	jnb	L476
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L480
L476:
	mov	eax, DWORD PTR [ebp-4]
	leave
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
	sub	esp, 16
	jmp	L482
L486:
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	jmp	L483
L485:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp-4], edx
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L483
	mov	eax, DWORD PTR [ebp+8]
	jmp	L484
L483:
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L485
	add	DWORD PTR [ebp+8], 1
L482:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L486
	mov	eax, 0
L484:
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], 0
L489:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [ebp+12], edx
	jne	L488
	mov	DWORD PTR [ebp-4], eax
L488:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	L489
	mov	eax, DWORD PTR [ebp-4]
	leave
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
	sub	esp, 28
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-8], 0
	jne	L494
	mov	eax, DWORD PTR [ebp+8]
	jmp	L493
L496:
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [esp], eax
	call	_strncmp
	test	eax, eax
	jne	L495
	mov	eax, DWORD PTR [ebp-4]
	jmp	L493
L495:
	add	DWORD PTR [ebp-4], 1
L494:
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [esp], eax
	call	_strchr
	mov	DWORD PTR [ebp-4], eax
	cmp	DWORD PTR [ebp-4], 0
	jne	L496
	mov	eax, 0
L493:
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L498
	fldz
	fld	QWORD PTR [ebp-16]
	fcomip	st, st(1)
	fstp	st(0)
	ja	L500
L498:
	fldz
	fld	QWORD PTR [ebp-8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L501
	fld	QWORD PTR [ebp-16]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L501
L500:
	fld	QWORD PTR [ebp-8]
	fchs
	jmp	L504
L501:
	fld	QWORD PTR [ebp-8]
L504:
	leave
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
	sub	esp, 28
	mov	eax, DWORD PTR [ebp+12]
	sub	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp+20], 0
	jne	L508
	mov	eax, DWORD PTR [ebp+8]
	jmp	L509
L508:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+20]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	L510
	mov	eax, 0
	jmp	L509
L510:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L511
L513:
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+16]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L512
	mov	eax, DWORD PTR [ebp+20]
	lea	ecx, [eax-1]
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_memcmp
	test	eax, eax
	jne	L512
	mov	eax, DWORD PTR [ebp-4]
	jmp	L509
L512:
	add	DWORD PTR [ebp-4], 1
L511:
	mov	eax, DWORD PTR [ebp-4]
	cmp	DWORD PTR [ebp-8], eax
	jnb	L513
	mov	eax, 0
L509:
	leave
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
	sub	esp, 12
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_memcpy
	mov	edx, DWORD PTR [ebp+16]
	add	eax, edx
	leave
	.cfi_restore 5
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
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	fld	QWORD PTR [ebp-24]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L517
	fld	QWORD PTR [ebp-24]
	fchs
	fstp	QWORD PTR [ebp-24]
	mov	DWORD PTR [ebp-4], 1
L517:
	fld1
	fld	QWORD PTR [ebp-24]
	fcomip	st, st(1)
	fstp	st(0)
	jb	L534
	jmp	L521
L522:
	add	DWORD PTR [ebp-8], 1
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR LC12
	fdivp	st(1), st
	fstp	QWORD PTR [ebp-24]
L521:
	fld1
	fld	QWORD PTR [ebp-24]
	fcomip	st, st(1)
	fstp	st(0)
	jnb	L522
	jmp	L523
L534:
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L523
	fld	QWORD PTR [ebp-24]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	jp	L526
	fld	QWORD PTR [ebp-24]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	je	L523
	jmp	L526
L527:
	sub	DWORD PTR [ebp-8], 1
	fld	QWORD PTR [ebp-24]
	fadd	st, st(0)
	fstp	QWORD PTR [ebp-24]
L526:
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	ja	L527
L523:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp-8]
	mov	DWORD PTR [eax], edx
	cmp	DWORD PTR [ebp-4], 0
	je	L528
	fld	QWORD PTR [ebp-24]
	fchs
	fstp	QWORD PTR [ebp-24]
L528:
	fld	QWORD PTR [ebp-24]
	leave
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
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	jmp	L536
L538:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	and	eax, 1
	mov	edx, 0
	mov	ecx, eax
	or	ecx, edx
	je	L537
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	DWORD PTR [ebp-8], eax
	adc	DWORD PTR [ebp-4], edx
L537:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	eax, eax
	adc	edx, edx
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 1
	shr	edx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
L536:
	mov	eax, DWORD PTR [ebp-16]
	or	eax, DWORD PTR [ebp-12]
	jne	L538
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
	leave
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 1
	mov	DWORD PTR [ebp-8], 0
	jmp	L541
L543:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
L541:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L544
	cmp	DWORD PTR [ebp-4], 0
	je	L544
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L543
	jmp	L544
L546:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	L545
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
L545:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
L544:
	cmp	DWORD PTR [ebp-4], 0
	jne	L546
	cmp	DWORD PTR [ebp+16], 0
	je	L547
	mov	eax, DWORD PTR [ebp+8]
	jmp	L548
L547:
	mov	eax, DWORD PTR [ebp-8]
L548:
	leave
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [ebp-20], al
	cmp	BYTE PTR [ebp-20], 0
	jns	L550
	not	BYTE PTR [ebp-20]
L550:
	cmp	BYTE PTR [ebp-20], 0
	jne	L551
	mov	eax, 7
	jmp	L552
L551:
	movsx	eax, BYTE PTR [ebp-20]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	sub	eax, 1
L552:
	leave
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
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	cmp	DWORD PTR [ebp-20], 0
	jns	L554
	not	DWORD PTR [ebp-24]
	not	DWORD PTR [ebp-20]
L554:
	mov	eax, DWORD PTR [ebp-24]
	or	eax, DWORD PTR [ebp-20]
	jne	L555
	mov	eax, 63
	jmp	L556
L555:
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	test	edx, edx
	je	L557
	bsr	eax, edx
	xor	eax, 31
	jmp	L558
L557:
	bsr	eax, eax
	xor	eax, 31
	add	eax, 32
L558:
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	sub	eax, 1
L556:
	leave
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L560
L562:
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 1
	je	L561
	mov	eax, DWORD PTR [ebp+12]
	add	DWORD PTR [ebp-4], eax
L561:
	shr	DWORD PTR [ebp+8]
	sal	DWORD PTR [ebp+12]
L560:
	cmp	DWORD PTR [ebp+8], 0
	jne	L562
	mov	eax, DWORD PTR [ebp-4]
	leave
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
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+16]
	shr	eax, 3
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -8
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-16]
	cmp	eax, DWORD PTR [ebp-20]
	jb	L565
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-16]
	jnb	L572
L565:
	mov	DWORD PTR [ebp-4], 0
	jmp	L567
L568:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp-4]
	lea	ecx, [0+edx*8]
	mov	edx, DWORD PTR [ebp+8]
	add	ecx, edx
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	add	DWORD PTR [ebp-4], 1
L567:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-12]
	jb	L568
	jmp	L569
L570:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-8]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 1
L569:
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp-8], eax
	jb	L570
	jmp	L571
L573:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L572:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L573
L571:
	nop
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+16]
	shr	eax
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebp-16]
	jb	L575
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-12]
	jnb	L581
L575:
	mov	DWORD PTR [ebp-4], 0
	jmp	L577
L578:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp-4]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
	add	DWORD PTR [ebp-4], 1
L577:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	jb	L578
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	je	L580
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR [ebp-16]
	add	eax, edx
	mov	edx, DWORD PTR [ebp+16]
	lea	ecx, [edx-1]
	mov	edx, DWORD PTR [ebp-12]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	jmp	L580
L582:
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L581:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L582
L580:
	nop
	leave
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
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+16]
	shr	eax, 2
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	and	eax, -4
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-16]
	cmp	eax, DWORD PTR [ebp-20]
	jb	L584
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-16]
	jnb	L591
L584:
	mov	DWORD PTR [ebp-4], 0
	jmp	L586
L587:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	edx, DWORD PTR [ebp-4]
	lea	ecx, [0+edx*4]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
	add	DWORD PTR [ebp-4], 1
L586:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-12]
	jb	L587
	jmp	L588
L589:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-8]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 1
L588:
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp-8], eax
	jb	L589
	jmp	L590
L592:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L591:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L592
L590:
	nop
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	fild	QWORD PTR [ebp-8]
	cmp	DWORD PTR [ebp-4], 0
	jns	L600
	fld	TBYTE PTR LC16
	faddp	st(1), st
L600:
	fstp	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-16]
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	fild	QWORD PTR [ebp-8]
	cmp	DWORD PTR [ebp-4], 0
	jns	L603
	fld	TBYTE PTR LC16
	faddp	st(1), st
L603:
	fstp	DWORD PTR [ebp-12]
	fld	DWORD PTR [ebp-12]
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-4], 0
	jmp	L608
L611:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, 15
	sub	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	L610
	add	DWORD PTR [ebp-4], 1
L608:
	cmp	DWORD PTR [ebp-4], 15
	jle	L611
L610:
	mov	eax, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-4], 0
	jmp	L615
L618:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	L617
	add	DWORD PTR [ebp-4], 1
L615:
	cmp	DWORD PTR [ebp-4], 15
	jle	L618
L617:
	mov	eax, DWORD PTR [ebp-4]
	leave
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
	fld	DWORD PTR LC17
	fld	DWORD PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jb	L626
	fld	DWORD PTR [ebp+8]
	fld	DWORD PTR LC17
	fsubp	st(1), st
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, 32768
	jmp	L624
L626:
	fld	DWORD PTR [ebp+8]
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
L624:
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	jmp	L628
L630:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L629
	add	DWORD PTR [ebp-8], 1
L629:
	add	DWORD PTR [ebp-4], 1
L628:
	cmp	DWORD PTR [ebp-4], 15
	jle	L630
	mov	eax, DWORD PTR [ebp-8]
	and	eax, 1
	leave
	.cfi_restore 5
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
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-20], ax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-4], 0
	jmp	L633
L635:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L634
	add	DWORD PTR [ebp-8], 1
L634:
	add	DWORD PTR [ebp-4], 1
L633:
	cmp	DWORD PTR [ebp-4], 15
	jle	L635
	mov	eax, DWORD PTR [ebp-8]
	leave
	.cfi_restore 5
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L638
L640:
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 1
	je	L639
	mov	eax, DWORD PTR [ebp+12]
	add	DWORD PTR [ebp-4], eax
L639:
	shr	DWORD PTR [ebp+8]
	sal	DWORD PTR [ebp+12]
L638:
	cmp	DWORD PTR [ebp+8], 0
	jne	L640
	mov	eax, DWORD PTR [ebp-4]
	leave
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	cmp	DWORD PTR [ebp+8], 0
	jne	L645
	mov	eax, 0
	jmp	L644
L647:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	L646
	mov	eax, DWORD PTR [ebp+8]
	add	DWORD PTR [ebp-4], eax
L646:
	sal	DWORD PTR [ebp+8]
	shr	DWORD PTR [ebp+12]
L645:
	cmp	DWORD PTR [ebp+12], 0
	jne	L647
	mov	eax, DWORD PTR [ebp-4]
L644:
	leave
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 1
	mov	DWORD PTR [ebp-8], 0
	jmp	L649
L651:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
L649:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L652
	cmp	DWORD PTR [ebp-4], 0
	je	L652
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L651
	jmp	L652
L654:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	L653
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
L653:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
L652:
	cmp	DWORD PTR [ebp-4], 0
	jne	L654
	cmp	DWORD PTR [ebp+16], 0
	je	L655
	mov	eax, DWORD PTR [ebp+8]
	jmp	L656
L655:
	mov	eax, DWORD PTR [ebp-8]
L656:
	leave
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
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L665
	mov	eax, -1
	jmp	L660
L665:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L666
	mov	eax, 1
	jmp	L660
L666:
	mov	eax, 0
L660:
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	fld	QWORD PTR [ebp-8]
	fld	QWORD PTR [ebp-16]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L675
	mov	eax, -1
	jmp	L670
L675:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L676
	mov	eax, 1
	jmp	L670
L676:
	mov	eax, 0
L670:
	leave
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	cdq
	mov	ecx, DWORD PTR [ebp+12]
	mov	ebx, ecx
	sar	ebx, 31
	mov	edi, edx
	imul	edi, ecx
	mov	esi, ebx
	imul	esi, eax
	add	esi, edi
	mul	ecx
	lea	ecx, [esi+edx]
	mov	edx, ecx
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
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, 0
	mov	ecx, DWORD PTR [ebp+12]
	mov	ebx, 0
	mov	edi, edx
	imul	edi, ecx
	mov	esi, ebx
	imul	esi, eax
	add	esi, edi
	mul	ecx
	lea	ecx, [esi+edx]
	mov	edx, ecx
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
	sub	esp, 16
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-12], 0
	cmp	DWORD PTR [ebp+12], 0
	jns	L682
	neg	DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], 1
L682:
	mov	BYTE PTR [ebp-1], 0
	jmp	L683
L686:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	L684
	mov	eax, DWORD PTR [ebp+8]
	add	DWORD PTR [ebp-12], eax
L684:
	sal	DWORD PTR [ebp+8]
	sar	DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [ebp-1]
	add	eax, 1
	mov	BYTE PTR [ebp-1], al
L683:
	cmp	DWORD PTR [ebp+12], 0
	je	L685
	movzx	eax, BYTE PTR [ebp-1]
	cmp	al, 31
	jbe	L686
L685:
	cmp	DWORD PTR [ebp-8], 0
	je	L687
	mov	eax, DWORD PTR [ebp-12]
	neg	eax
	jmp	L689
L687:
	mov	eax, DWORD PTR [ebp-12]
L689:
	leave
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
	sub	esp, 28
	mov	DWORD PTR [ebp-4], 0
	cmp	DWORD PTR [ebp+8], 0
	jns	L691
	neg	DWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [ebp-4], eax
L691:
	cmp	DWORD PTR [ebp+12], 0
	jns	L692
	neg	DWORD PTR [ebp+12]
	cmp	DWORD PTR [ebp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [ebp-4], eax
L692:
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-4], 0
	je	L693
	neg	DWORD PTR [ebp-8]
L693:
	mov	eax, DWORD PTR [ebp-8]
	leave
	.cfi_restore 5
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
	sub	esp, 28
	mov	DWORD PTR [ebp-4], 0
	cmp	DWORD PTR [ebp+8], 0
	jns	L696
	neg	DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], 1
L696:
	cmp	DWORD PTR [ebp+12], 0
	jns	L697
	neg	DWORD PTR [ebp+12]
L697:
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-4], 0
	je	L698
	neg	DWORD PTR [ebp-8]
L698:
	mov	eax, DWORD PTR [ebp-8]
	leave
	.cfi_restore 5
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
	sub	esp, 24
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	WORD PTR [ebp-20], dx
	mov	WORD PTR [ebp-24], ax
	mov	WORD PTR [ebp-2], 1
	mov	WORD PTR [ebp-4], 0
	jmp	L701
L703:
	sal	WORD PTR [ebp-24]
	sal	WORD PTR [ebp-2]
L701:
	movzx	eax, WORD PTR [ebp-24]
	cmp	ax, WORD PTR [ebp-20]
	jnb	L704
	cmp	WORD PTR [ebp-2], 0
	je	L704
	movzx	eax, WORD PTR [ebp-24]
	test	ax, ax
	jns	L703
	jmp	L704
L706:
	movzx	eax, WORD PTR [ebp-20]
	cmp	ax, WORD PTR [ebp-24]
	jb	L705
	movzx	eax, WORD PTR [ebp-24]
	sub	WORD PTR [ebp-20], ax
	movzx	eax, WORD PTR [ebp-2]
	or	WORD PTR [ebp-4], ax
L705:
	shr	WORD PTR [ebp-2]
	shr	WORD PTR [ebp-24]
L704:
	cmp	WORD PTR [ebp-2], 0
	jne	L706
	cmp	DWORD PTR [ebp+16], 0
	je	L707
	movzx	eax, WORD PTR [ebp-20]
	jmp	L708
L707:
	movzx	eax, WORD PTR [ebp-4]
L708:
	leave
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
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 1
	mov	DWORD PTR [ebp-8], 0
	jmp	L710
L712:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
L710:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L713
	cmp	DWORD PTR [ebp-4], 0
	je	L713
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L712
	jmp	L713
L715:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	L714
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
L714:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
L713:
	cmp	DWORD PTR [ebp-4], 0
	jne	L715
	cmp	DWORD PTR [ebp+16], 0
	je	L716
	mov	eax, DWORD PTR [ebp+8]
	jmp	L717
L716:
	mov	eax, DWORD PTR [ebp-8]
L717:
	leave
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
	push	ebx
	sub	esp, 44
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	DWORD PTR [ebp-12], 32
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	eax, DWORD PTR [ebp+16]
	and	eax, DWORD PTR [ebp-12]
	je	L719
	mov	DWORD PTR [ebp-32], 0
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	jmp	L720
L719:
	cmp	DWORD PTR [ebp+16], 0
	jne	L721
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	L723
L721:
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp-20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [ebp-28], eax
L720:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
L723:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	sub	esp, 44
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	DWORD PTR [ebp-12], 32
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	eax, DWORD PTR [ebp+16]
	and	eax, DWORD PTR [ebp-12]
	je	L725
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-32], eax
	jmp	L726
L725:
	cmp	DWORD PTR [ebp+16], 0
	jne	L727
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	L729
L727:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, DWORD PTR [ebp+16]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [ebp-32], eax
L726:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
L729:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	ebx
	sub	esp, 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 24
	shr	edx, 24
	and	eax, 16711680
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 8
	sal	eax, 8
	mov	eax, 0
	and	edx, 255
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	mov	eax, 0
	and	edx, 16711680
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	or	eax, ecx
	or	edx, ebx
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	mov	eax, DWORD PTR [ebp+8]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	sal	eax, 24
	or	eax, edx
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	cmp	DWORD PTR [ebp-4], 65535
	ja	L735
	mov	eax, 16
	jmp	L736
L735:
	mov	eax, 0
L736:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 16
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 65280
	jne	L737
	mov	eax, 8
	jmp	L738
L737:
	mov	eax, 0
L738:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 8
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 240
	jne	L739
	mov	eax, 4
	jmp	L740
L739:
	mov	eax, 0
L740:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 4
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 12
	jne	L741
	mov	eax, 2
	jmp	L742
L741:
	mov	eax, 0
L742:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 2
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR [ebp-4]
	imul	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	leave
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
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	cmp	edx, eax
	jge	L745
	mov	eax, 0
	jmp	L750
L745:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	cmp	edx, eax
	jle	L747
	mov	eax, 2
	jmp	L750
L747:
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L748
	mov	eax, 0
	jmp	L750
L748:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L749
	mov	eax, 2
	jmp	L750
L749:
	mov	eax, 1
L750:
	leave
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
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, ax
	test	eax, eax
	jne	L754
	mov	eax, 16
	jmp	L755
L754:
	mov	eax, 0
L755:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, al
	test	eax, eax
	jne	L756
	mov	eax, 8
	jmp	L757
L756:
	mov	eax, 0
L757:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 15
	jne	L758
	mov	eax, 4
	jmp	L759
L758:
	mov	eax, 0
L759:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 3
	jne	L760
	mov	eax, 2
	jmp	L761
L760:
	mov	eax, 0
L761:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	and	DWORD PTR [ebp-4], 3
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	not	eax
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, ecx
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	leave
	.cfi_restore 5
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
	push	ebx
	sub	esp, 44
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	DWORD PTR [ebp-12], 32
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	eax, DWORD PTR [ebp+16]
	and	eax, DWORD PTR [ebp-12]
	je	L764
	mov	DWORD PTR [ebp-28], 0
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-32], eax
	jmp	L765
L764:
	cmp	DWORD PTR [ebp+16], 0
	jne	L766
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	L768
L766:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-12]
	sub	eax, DWORD PTR [ebp+16]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [ebp-32], eax
L765:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
L768:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	push	esi
	push	ebx
	sub	esp, 32
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	DWORD PTR [ebp-12], 16
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+8]
	and	eax, DWORD PTR [ebp-16]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	and	eax, DWORD PTR [ebp-16]
	imul	eax, edx
	mov	DWORD PTR [ebp-32], eax
	mov	edx, DWORD PTR [ebp-32]
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-32]
	and	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [ebp+12]
	and	eax, DWORD PTR [ebp-16]
	imul	eax, edx
	add	DWORD PTR [ebp-20], eax
	mov	edx, DWORD PTR [ebp-32]
	mov	eax, DWORD PTR [ebp-20]
	and	eax, DWORD PTR [ebp-16]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp-20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	mov	edx, DWORD PTR [ebp-32]
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-32]
	and	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [ebp+8]
	and	eax, DWORD PTR [ebp-16]
	imul	eax, edx
	add	DWORD PTR [ebp-20], eax
	mov	edx, DWORD PTR [ebp-32]
	mov	eax, DWORD PTR [ebp-20]
	and	eax, DWORD PTR [ebp-16]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp-28]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp-20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	add	eax, ebx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-28]
	mov	esi, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [ebp-12]
	mov	ebx, DWORD PTR [ebp+12]
	mov	ecx, eax
	shr	ebx, cl
	mov	eax, ebx
	imul	eax, edx
	add	eax, esi
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	esp, 32
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
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
	push	ebx
	sub	esp, 60
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-48], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-44], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-56], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-52], eax
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-56]
	mov	edx, DWORD PTR [ebp-52]
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], edx
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___muldsi3
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], edx
	mov	eax, DWORD PTR [ebp-28]
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-24]
	imul	edx, eax
	mov	eax, DWORD PTR [ebp-16]
	mov	ecx, DWORD PTR [ebp-20]
	imul	eax, ecx
	add	eax, edx
	add	eax, ebx
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
	neg	eax
	adc	edx, 0
	neg	edx
	leave
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
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-16]
	xor	eax, edx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 16
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 8
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 4
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 16
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 8
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 4
	xor	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	leave
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
	push	ebx
	sub	esp, 28
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 1
	shr	edx
	and	eax, 1431655765
	and	edx, 1431655765
	sub	DWORD PTR [ebp-16], eax
	sbb	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 2
	shr	edx, 2
	and	eax, 858993459
	and	edx, 858993459
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	and	eax, 858993459
	and	edx, 858993459
	add	eax, ecx
	adc	edx, ebx
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	shrd	eax, edx, 4
	shr	edx, 4
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, edx
	xor	edx, edx
	add	eax, ecx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-20]
	shr	eax, 16
	add	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-20]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-20]
	add	eax, edx
	and	eax, 127
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax
	and	eax, 1431655765
	sub	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 16
	add	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	and	eax, 63
	leave
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
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [ebp-12], eax
	fld1
	fstp	QWORD PTR [ebp-8]
L787:
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	je	L784
	fld	QWORD PTR [ebp-8]
	fmul	QWORD PTR [ebp-24]
	fstp	QWORD PTR [ebp-8]
L784:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+16], eax
	cmp	DWORD PTR [ebp+16], 0
	je	L791
	fld	QWORD PTR [ebp-24]
	fmul	st, st(0)
	fstp	QWORD PTR [ebp-24]
	jmp	L787
L791:
	cmp	DWORD PTR [ebp-12], 0
	je	L788
	fld1
	fdiv	QWORD PTR [ebp-8]
	jmp	L790
L788:
	fld	QWORD PTR [ebp-8]
L790:
	leave
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
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+12]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [ebp-8], eax
	fld1
	fstp	DWORD PTR [ebp-4]
L797:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	je	L794
	fld	DWORD PTR [ebp-4]
	fmul	DWORD PTR [ebp+8]
	fstp	DWORD PTR [ebp-4]
L794:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+12], eax
	cmp	DWORD PTR [ebp+12], 0
	je	L801
	fld	DWORD PTR [ebp+8]
	fmul	st, st(0)
	fstp	DWORD PTR [ebp+8]
	jmp	L797
L801:
	cmp	DWORD PTR [ebp-8], 0
	je	L798
	fld1
	fdiv	DWORD PTR [ebp-4]
	jmp	L800
L798:
	fld	DWORD PTR [ebp-4]
L800:
	leave
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
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-32], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], edx
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], edx
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	cmp	edx, eax
	jnb	L804
	mov	eax, 0
	jmp	L809
L804:
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp-12]
	cmp	edx, eax
	jnb	L806
	mov	eax, 2
	jmp	L809
L806:
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L807
	mov	eax, 0
	jmp	L809
L807:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L808
	mov	eax, 2
	jmp	L809
L808:
	mov	eax, 1
L809:
	leave
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
	push	ebx
	sub	esp, 36
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [ebp-24], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [ebp-20], eax
	mov	ecx, DWORD PTR [ebp-24]
	mov	ebx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___ucmpdi2
	sub	eax, 1
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE152:
.lcomm _s.0,7,4
	.section .rdata,"dr"
	.align 4
LC3:
	.long	-8388609
	.align 4
LC4:
	.long	2139095039
	.align 8
LC5:
	.long	-1
	.long	-1048577
	.align 8
LC6:
	.long	-1
	.long	2146435071
	.align 16
LC7:
	.long	-1
	.long	-1
	.long	65534
	.align 16
LC8:
	.long	-1
	.long	-1
	.long	32766
	.align 4
LC9:
	.long	1056964608
	.align 4
LC10:
	.long	1073741824
	.align 8
LC11:
	.long	0
	.long	1071644672
	.align 8
LC12:
	.long	0
	.long	1073741824
	.align 16
LC13:
	.long	0
	.long	-2147483648
	.long	16382
	.align 16
LC14:
	.long	0
	.long	-2147483648
	.long	16384
	.align 16
LC16:
	.long	0
	.long	-2147483648
	.long	16447
	.align 4
LC17:
	.long	1191182336
	.def	___moddi3;	.scl	2;	.type	32;	.endef
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
