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
	nop
	nop
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
	test	eax, eax
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
	test	eax, eax
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
	test	eax, eax
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
	test	eax, eax
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
	test	eax, eax
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
	test	eax, eax
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
	je	L225
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
L225:
	nop
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
L273:
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
	jle	L271
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
L271:
	mov	eax, DWORD PTR [ebp-12]
	jmp	L272
L269:
	cmp	DWORD PTR [ebp+16], 0
	jne	L273
	mov	eax, 0
L272:
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
	jmp	L275
L279:
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
	jne	L276
	mov	eax, DWORD PTR [ebp-20]
	jmp	L277
L276:
	cmp	DWORD PTR [ebp-24], 0
	jle	L278
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+20]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	sub	DWORD PTR [ebp-16], 1
L278:
	sar	DWORD PTR [ebp-16]
L275:
	cmp	DWORD PTR [ebp-16], 0
	jne	L279
	mov	eax, 0
L277:
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
	jmp	L295
L297:
	add	DWORD PTR [ebp+8], 2
L295:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L296
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [ebp-4], ax
	jne	L297
L296:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L298
	mov	eax, DWORD PTR [ebp+8]
	jmp	L300
L298:
	mov	eax, 0
L300:
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
	jmp	L302
L304:
	add	DWORD PTR [ebp+8], 2
	add	DWORD PTR [ebp+12], 2
L302:
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L303
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L303
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L304
L303:
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L305
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	L307
L305:
	mov	eax, -1
L307:
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
	nop
L309:
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
	jne	L309
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
	jmp	L312
L313:
	add	DWORD PTR [ebp+8], 2
L312:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L313
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
	jmp	L316
L318:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 2
	add	DWORD PTR [ebp+12], 2
L316:
	cmp	DWORD PTR [ebp+16], 0
	je	L317
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L317
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L317
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L318
L317:
	cmp	DWORD PTR [ebp+16], 0
	je	L319
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L320
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	L323
L320:
	mov	eax, -1
	jmp	L323
L319:
	mov	eax, 0
L323:
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
	jmp	L325
L327:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 2
L325:
	cmp	DWORD PTR [ebp+16], 0
	je	L326
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [ebp-4], ax
	jne	L327
L326:
	cmp	DWORD PTR [ebp+16], 0
	je	L328
	mov	eax, DWORD PTR [ebp+8]
	jmp	L330
L328:
	mov	eax, 0
L330:
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
	jmp	L332
L334:
	sub	DWORD PTR [ebp+16], 1
	add	DWORD PTR [ebp+8], 2
	add	DWORD PTR [ebp+12], 2
L332:
	cmp	DWORD PTR [ebp+16], 0
	je	L333
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	je	L334
L333:
	cmp	DWORD PTR [ebp+16], 0
	je	L335
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L336
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	L339
L336:
	mov	eax, -1
	jmp	L339
L335:
	mov	eax, 0
L339:
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
	jmp	L341
L342:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+2]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+2]
	mov	DWORD PTR [ebp+8], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L341:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L342
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
	jne	L345
	mov	eax, DWORD PTR [ebp+8]
	jmp	L346
L345:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	sub	edx, eax
	mov	eax, DWORD PTR [ebp+16]
	add	eax, eax
	cmp	edx, eax
	jnb	L351
	jmp	L348
L349:
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
L348:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L349
	jmp	L350
L352:
	mov	edx, DWORD PTR [ebp+12]
	lea	eax, [edx+2]
	mov	DWORD PTR [ebp+12], eax
	mov	eax, DWORD PTR [ebp+8]
	lea	ecx, [eax+2]
	mov	DWORD PTR [ebp+8], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L351:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L352
L350:
	mov	eax, DWORD PTR [ebp-4]
L346:
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
	jmp	L354
L355:
	mov	eax, DWORD PTR [ebp+8]
	lea	edx, [eax+2]
	mov	DWORD PTR [ebp+8], edx
	movzx	edx, WORD PTR [ebp-20]
	mov	WORD PTR [eax], dx
L354:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L355
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
	jnb	L358
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-8], eax
	jmp	L359
L360:
	sub	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp-8], 1
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-8]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L359:
	cmp	DWORD PTR [ebp+16], 0
	jne	L360
	jmp	L364
L358:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	je	L364
	jmp	L362
L363:
	mov	edx, DWORD PTR [ebp-4]
	lea	eax, [edx+1]
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-8]
	lea	ecx, [eax+1]
	mov	DWORD PTR [ebp-8], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [ebp+16], 1
L362:
	cmp	DWORD PTR [ebp+16], 0
	jne	L363
L364:
	nop
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
	je	L367
	mov	edi, esi
	xor	esi, esi
L367:
	mov	ecx, DWORD PTR [ebp+16]
	neg	ecx
	and	ecx, 63
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L368
	mov	eax, edx
	xor	edx, edx
L368:
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
	je	L371
	mov	esi, edi
	xor	edi, edi
L371:
	mov	ecx, DWORD PTR [ebp+16]
	neg	ecx
	and	ecx, 63
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L372
	mov	edx, eax
	xor	eax, eax
L372:
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
	jmp	L396
L399:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	je	L397
	mov	eax, DWORD PTR [ebp-4]
	add	eax, 1
	jmp	L398
L397:
	add	DWORD PTR [ebp-4], 1
L396:
	cmp	DWORD PTR [ebp-4], 31
	jbe	L399
	mov	eax, 0
L398:
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
	jne	L401
	mov	eax, 0
	jmp	L402
L401:
	mov	ebx, 1
	jmp	L403
L404:
	sar	eax
	add	ebx, 1
L403:
	mov	edx, eax
	and	edx, 1
	test	edx, edx
	je	L404
	mov	eax, ebx
L402:
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
	ja	L406
	fld	DWORD PTR LC4
	fld	DWORD PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L411
L406:
	mov	eax, 1
	jmp	L410
L411:
	mov	eax, 0
L410:
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
	ja	L413
	fld	QWORD PTR LC6
	fld	QWORD PTR [ebp-8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L418
L413:
	mov	eax, 1
	jmp	L417
L418:
	mov	eax, 0
L417:
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
	ja	L420
	fld	TBYTE PTR LC8
	fld	TBYTE PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L425
L420:
	mov	eax, 1
	jmp	L424
L425:
	mov	eax, 0
L424:
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
	jp	L428
	fld	DWORD PTR [ebp+8]
	fadd	st, st(0)
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	jp	L438
	fld	DWORD PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	je	L428
	jmp	L436
L438:
	fstp	st(0)
L436:
	cmp	DWORD PTR [ebp+12], 0
	jns	L430
	fld	DWORD PTR LC9
	jmp	L431
L430:
	fld	DWORD PTR LC10
L431:
	fstp	DWORD PTR [ebp-4]
L434:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	test	eax, eax
	je	L432
	fld	DWORD PTR [ebp+8]
	fmul	DWORD PTR [ebp-4]
	fstp	DWORD PTR [ebp+8]
L432:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+12], eax
	cmp	DWORD PTR [ebp+12], 0
	je	L437
	fld	DWORD PTR [ebp-4]
	fmul	st, st(0)
	fstp	DWORD PTR [ebp-4]
	jmp	L434
L437:
	nop
L428:
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
	jp	L440
	fld	QWORD PTR [ebp-24]
	fadd	st, st(0)
	fld	QWORD PTR [ebp-24]
	fucomip	st, st(1)
	jp	L450
	fld	QWORD PTR [ebp-24]
	fucomip	st, st(1)
	fstp	st(0)
	je	L440
	jmp	L448
L450:
	fstp	st(0)
L448:
	cmp	DWORD PTR [ebp+16], 0
	jns	L442
	fld	QWORD PTR LC11
	jmp	L443
L442:
	fld	QWORD PTR LC12
L443:
	fstp	QWORD PTR [ebp-8]
L446:
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	test	eax, eax
	je	L444
	fld	QWORD PTR [ebp-24]
	fmul	QWORD PTR [ebp-8]
	fstp	QWORD PTR [ebp-24]
L444:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+16], eax
	cmp	DWORD PTR [ebp+16], 0
	je	L449
	fld	QWORD PTR [ebp-8]
	fmul	st, st(0)
	fstp	QWORD PTR [ebp-8]
	jmp	L446
L449:
	nop
L440:
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
	jp	L452
	fld	TBYTE PTR [ebp+8]
	fadd	st, st(0)
	fld	TBYTE PTR [ebp+8]
	fucomip	st, st(1)
	jp	L462
	fld	TBYTE PTR [ebp+8]
	fucomip	st, st(1)
	fstp	st(0)
	je	L452
	jmp	L460
L462:
	fstp	st(0)
L460:
	cmp	DWORD PTR [ebp+20], 0
	jns	L454
	fld	TBYTE PTR LC13
	jmp	L455
L454:
	fld	TBYTE PTR LC14
L455:
	fstp	TBYTE PTR [ebp-12]
L458:
	mov	eax, DWORD PTR [ebp+20]
	and	eax, 1
	test	eax, eax
	je	L456
	fld	TBYTE PTR [ebp+8]
	fld	TBYTE PTR [ebp-12]
	fmulp	st(1), st
	fstp	TBYTE PTR [ebp+8]
L456:
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp+20], eax
	cmp	DWORD PTR [ebp+20], 0
	je	L461
	fld	TBYTE PTR [ebp-12]
	fmul	st, st(0)
	fstp	TBYTE PTR [ebp-12]
	jmp	L458
L461:
	nop
L452:
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
	jmp	L464
L465:
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
L464:
	cmp	DWORD PTR [ebp+16], 0
	jne	L465
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
	jmp	L468
L470:
	add	DWORD PTR [ebp+12], 1
	add	DWORD PTR [ebp-4], 1
	sub	DWORD PTR [ebp+16], 1
L468:
	cmp	DWORD PTR [ebp+16], 0
	je	L469
	mov	eax, DWORD PTR [ebp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L470
L469:
	cmp	DWORD PTR [ebp+16], 0
	jne	L471
	mov	eax, DWORD PTR [ebp-4]
	mov	BYTE PTR [eax], 0
L471:
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
	jmp	L474
L479:
	nop
	add	DWORD PTR [ebp-4], 1
L474:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp+12]
	jnb	L475
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L479
L475:
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
	jmp	L481
L485:
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	jmp	L482
L484:
	mov	eax, DWORD PTR [ebp-4]
	lea	edx, [eax+1]
	mov	DWORD PTR [ebp-4], edx
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L482
	mov	eax, DWORD PTR [ebp+8]
	jmp	L483
L482:
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L484
	add	DWORD PTR [ebp+8], 1
L481:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L485
	mov	eax, 0
L483:
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
L488:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [ebp+12], edx
	jne	L487
	mov	DWORD PTR [ebp-4], eax
L487:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	L488
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
	jne	L493
	mov	eax, DWORD PTR [ebp+8]
	jmp	L492
L495:
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [esp], eax
	call	_strncmp
	test	eax, eax
	jne	L494
	mov	eax, DWORD PTR [ebp-4]
	jmp	L492
L494:
	add	DWORD PTR [ebp-4], 1
L493:
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [esp], eax
	call	_strchr
	mov	DWORD PTR [ebp-4], eax
	cmp	DWORD PTR [ebp-4], 0
	jne	L495
	mov	eax, 0
L492:
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
	jbe	L497
	fldz
	fld	QWORD PTR [ebp-16]
	fcomip	st, st(1)
	fstp	st(0)
	ja	L499
L497:
	fldz
	fld	QWORD PTR [ebp-8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L500
	fld	QWORD PTR [ebp-16]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L500
L499:
	fld	QWORD PTR [ebp-8]
	fchs
	jmp	L503
L500:
	fld	QWORD PTR [ebp-8]
L503:
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
	jne	L507
	mov	eax, DWORD PTR [ebp+8]
	jmp	L508
L507:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+20]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	L509
	mov	eax, 0
	jmp	L508
L509:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
	jmp	L510
L512:
	mov	eax, DWORD PTR [ebp-4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+16]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L511
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
	jne	L511
	mov	eax, DWORD PTR [ebp-4]
	jmp	L508
L511:
	add	DWORD PTR [ebp-4], 1
L510:
	mov	eax, DWORD PTR [ebp-4]
	cmp	DWORD PTR [ebp-8], eax
	jnb	L512
	mov	eax, 0
L508:
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
	jbe	L516
	fld	QWORD PTR [ebp-24]
	fchs
	fstp	QWORD PTR [ebp-24]
	mov	DWORD PTR [ebp-4], 1
L516:
	fld1
	fld	QWORD PTR [ebp-24]
	fcomip	st, st(1)
	fstp	st(0)
	jb	L533
	jmp	L520
L521:
	add	DWORD PTR [ebp-8], 1
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR LC12
	fdivp	st(1), st
	fstp	QWORD PTR [ebp-24]
L520:
	fld1
	fld	QWORD PTR [ebp-24]
	fcomip	st, st(1)
	fstp	st(0)
	jnb	L521
	jmp	L522
L533:
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L522
	fld	QWORD PTR [ebp-24]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	jp	L525
	fld	QWORD PTR [ebp-24]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	je	L522
	jmp	L525
L526:
	sub	DWORD PTR [ebp-8], 1
	fld	QWORD PTR [ebp-24]
	fadd	st, st(0)
	fstp	QWORD PTR [ebp-24]
L525:
	fld	QWORD PTR [ebp-24]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	ja	L526
L522:
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, DWORD PTR [ebp-8]
	mov	DWORD PTR [eax], edx
	cmp	DWORD PTR [ebp-4], 0
	je	L527
	fld	QWORD PTR [ebp-24]
	fchs
	fstp	QWORD PTR [ebp-24]
L527:
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
	jmp	L535
L537:
	mov	eax, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-12]
	and	eax, 1
	mov	edx, 0
	mov	ecx, eax
	or	ecx, edx
	je	L536
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
	add	DWORD PTR [ebp-8], eax
	adc	DWORD PTR [ebp-4], edx
L536:
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
L535:
	mov	eax, DWORD PTR [ebp-16]
	or	eax, DWORD PTR [ebp-12]
	jne	L537
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
	jmp	L540
L542:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
L540:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L543
	cmp	DWORD PTR [ebp-4], 0
	je	L543
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L542
	jmp	L543
L545:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	L544
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
L544:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
L543:
	cmp	DWORD PTR [ebp-4], 0
	jne	L545
	cmp	DWORD PTR [ebp+16], 0
	je	L546
	mov	eax, DWORD PTR [ebp+8]
	jmp	L547
L546:
	mov	eax, DWORD PTR [ebp-8]
L547:
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
	jns	L549
	not	BYTE PTR [ebp-20]
L549:
	cmp	BYTE PTR [ebp-20], 0
	jne	L550
	mov	eax, 7
	jmp	L551
L550:
	movsx	eax, BYTE PTR [ebp-20]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	sub	eax, 1
L551:
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
	jns	L553
	not	DWORD PTR [ebp-24]
	not	DWORD PTR [ebp-20]
L553:
	mov	eax, DWORD PTR [ebp-24]
	or	eax, DWORD PTR [ebp-20]
	jne	L554
	mov	eax, 63
	jmp	L555
L554:
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp-20]
	test	edx, edx
	je	L556
	bsr	eax, edx
	xor	eax, 31
	jmp	L557
L556:
	bsr	eax, eax
	xor	eax, 31
	add	eax, 32
L557:
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	sub	eax, 1
L555:
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
	jmp	L559
L561:
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 1
	test	eax, eax
	je	L560
	mov	eax, DWORD PTR [ebp+12]
	add	DWORD PTR [ebp-4], eax
L560:
	shr	DWORD PTR [ebp+8]
	sal	DWORD PTR [ebp+12]
L559:
	cmp	DWORD PTR [ebp+8], 0
	jne	L561
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
	jb	L564
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-16]
	jnb	L571
L564:
	mov	DWORD PTR [ebp-4], 0
	jmp	L566
L567:
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
L566:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-12]
	jb	L567
	jmp	L568
L569:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-8]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 1
L568:
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp-8], eax
	jb	L569
	jmp	L570
L572:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L571:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L572
	nop
L570:
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
	jb	L574
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-12]
	jnb	L580
L574:
	mov	DWORD PTR [ebp-4], 0
	jmp	L576
L577:
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
L576:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-8]
	jb	L577
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	test	eax, eax
	je	L579
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
	jmp	L579
L581:
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L580:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L581
	nop
L579:
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
	jb	L583
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	cmp	eax, DWORD PTR [ebp-16]
	jnb	L590
L583:
	mov	DWORD PTR [ebp-4], 0
	jmp	L585
L586:
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
L585:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp-12]
	jb	L586
	jmp	L587
L588:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp-8]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 1
L587:
	mov	eax, DWORD PTR [ebp+16]
	cmp	DWORD PTR [ebp-8], eax
	jb	L588
	jmp	L589
L591:
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-16]
	mov	edx, DWORD PTR [ebp+16]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L590:
	mov	eax, DWORD PTR [ebp+16]
	lea	edx, [eax-1]
	mov	DWORD PTR [ebp+16], edx
	test	eax, eax
	jne	L591
	nop
L589:
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
	jns	L599
	fld	TBYTE PTR LC16
	faddp	st(1), st
L599:
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
	jns	L602
	fld	TBYTE PTR LC16
	faddp	st(1), st
L602:
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
	jmp	L607
L610:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, 15
	sub	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	L612
	add	DWORD PTR [ebp-4], 1
L607:
	cmp	DWORD PTR [ebp-4], 15
	jle	L610
	jmp	L609
L612:
	nop
L609:
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
	jmp	L614
L617:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	L619
	add	DWORD PTR [ebp-4], 1
L614:
	cmp	DWORD PTR [ebp-4], 15
	jle	L617
	jmp	L616
L619:
	nop
L616:
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
	jb	L625
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
	jmp	L623
L625:
	fld	DWORD PTR [ebp+8]
	fnstcw	WORD PTR [ebp-2]
	movzx	eax, WORD PTR [ebp-2]
	or	ah, 12
	mov	WORD PTR [ebp-4], ax
	fldcw	WORD PTR [ebp-4]
	fistp	DWORD PTR [ebp-8]
	fldcw	WORD PTR [ebp-2]
	mov	eax, DWORD PTR [ebp-8]
L623:
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
	jmp	L627
L629:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	je	L628
	add	DWORD PTR [ebp-8], 1
L628:
	add	DWORD PTR [ebp-4], 1
L627:
	cmp	DWORD PTR [ebp-4], 15
	jle	L629
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
	jmp	L632
L634:
	movzx	edx, WORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	je	L633
	add	DWORD PTR [ebp-8], 1
L633:
	add	DWORD PTR [ebp-4], 1
L632:
	cmp	DWORD PTR [ebp-4], 15
	jle	L634
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
	jmp	L637
L639:
	mov	eax, DWORD PTR [ebp+8]
	and	eax, 1
	test	eax, eax
	je	L638
	mov	eax, DWORD PTR [ebp+12]
	add	DWORD PTR [ebp-4], eax
L638:
	shr	DWORD PTR [ebp+8]
	sal	DWORD PTR [ebp+12]
L637:
	cmp	DWORD PTR [ebp+8], 0
	jne	L639
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
	jne	L644
	mov	eax, 0
	jmp	L643
L646:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	test	eax, eax
	je	L645
	mov	eax, DWORD PTR [ebp+8]
	add	DWORD PTR [ebp-4], eax
L645:
	sal	DWORD PTR [ebp+8]
	shr	DWORD PTR [ebp+12]
L644:
	cmp	DWORD PTR [ebp+12], 0
	jne	L646
	mov	eax, DWORD PTR [ebp-4]
L643:
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
	jmp	L648
L650:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
L648:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L651
	cmp	DWORD PTR [ebp-4], 0
	je	L651
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L650
	jmp	L651
L653:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	L652
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
L652:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
L651:
	cmp	DWORD PTR [ebp-4], 0
	jne	L653
	cmp	DWORD PTR [ebp+16], 0
	je	L654
	mov	eax, DWORD PTR [ebp+8]
	jmp	L655
L654:
	mov	eax, DWORD PTR [ebp-8]
L655:
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
	jbe	L664
	mov	eax, -1
	jmp	L659
L664:
	fld	DWORD PTR [ebp+12]
	fld	DWORD PTR [ebp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L665
	mov	eax, 1
	jmp	L659
L665:
	mov	eax, 0
L659:
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
	jbe	L674
	mov	eax, -1
	jmp	L669
L674:
	fld	QWORD PTR [ebp-16]
	fld	QWORD PTR [ebp-8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L675
	mov	eax, 1
	jmp	L669
L675:
	mov	eax, 0
L669:
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
	jns	L681
	neg	DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-8], 1
L681:
	mov	BYTE PTR [ebp-1], 0
	jmp	L682
L685:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	test	eax, eax
	je	L683
	mov	eax, DWORD PTR [ebp+8]
	add	DWORD PTR [ebp-12], eax
L683:
	sal	DWORD PTR [ebp+8]
	sar	DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [ebp-1]
	add	eax, 1
	mov	BYTE PTR [ebp-1], al
L682:
	cmp	DWORD PTR [ebp+12], 0
	je	L684
	movzx	eax, BYTE PTR [ebp-1]
	cmp	al, 31
	jbe	L685
L684:
	cmp	DWORD PTR [ebp-8], 0
	je	L686
	mov	eax, DWORD PTR [ebp-12]
	neg	eax
	jmp	L688
L686:
	mov	eax, DWORD PTR [ebp-12]
L688:
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
	jns	L690
	neg	DWORD PTR [ebp+8]
	cmp	DWORD PTR [ebp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [ebp-4], eax
L690:
	cmp	DWORD PTR [ebp+12], 0
	jns	L691
	neg	DWORD PTR [ebp+12]
	cmp	DWORD PTR [ebp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [ebp-4], eax
L691:
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-4], 0
	je	L692
	neg	DWORD PTR [ebp-8]
L692:
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
	jns	L695
	neg	DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], 1
L695:
	cmp	DWORD PTR [ebp+12], 0
	jns	L696
	neg	DWORD PTR [ebp+12]
L696:
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [ebp-8], eax
	cmp	DWORD PTR [ebp-4], 0
	je	L697
	neg	DWORD PTR [ebp-8]
L697:
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
	jmp	L700
L702:
	sal	WORD PTR [ebp-24]
	sal	WORD PTR [ebp-2]
L700:
	movzx	eax, WORD PTR [ebp-24]
	cmp	ax, WORD PTR [ebp-20]
	jnb	L703
	cmp	WORD PTR [ebp-2], 0
	je	L703
	movzx	eax, WORD PTR [ebp-24]
	test	ax, ax
	jns	L702
	jmp	L703
L705:
	movzx	eax, WORD PTR [ebp-20]
	cmp	ax, WORD PTR [ebp-24]
	jb	L704
	movzx	eax, WORD PTR [ebp-24]
	sub	WORD PTR [ebp-20], ax
	movzx	eax, WORD PTR [ebp-2]
	or	WORD PTR [ebp-4], ax
L704:
	shr	WORD PTR [ebp-2]
	shr	WORD PTR [ebp-24]
L703:
	cmp	WORD PTR [ebp-2], 0
	jne	L705
	cmp	DWORD PTR [ebp+16], 0
	je	L706
	movzx	eax, WORD PTR [ebp-20]
	jmp	L707
L706:
	movzx	eax, WORD PTR [ebp-4]
L707:
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
	jmp	L709
L711:
	sal	DWORD PTR [ebp+12]
	sal	DWORD PTR [ebp-4]
L709:
	mov	eax, DWORD PTR [ebp+12]
	cmp	eax, DWORD PTR [ebp+8]
	jnb	L712
	cmp	DWORD PTR [ebp-4], 0
	je	L712
	mov	eax, DWORD PTR [ebp+12]
	test	eax, eax
	jns	L711
	jmp	L712
L714:
	mov	eax, DWORD PTR [ebp+8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	L713
	mov	eax, DWORD PTR [ebp+12]
	sub	DWORD PTR [ebp+8], eax
	mov	eax, DWORD PTR [ebp-4]
	or	DWORD PTR [ebp-8], eax
L713:
	shr	DWORD PTR [ebp-4]
	shr	DWORD PTR [ebp+12]
L712:
	cmp	DWORD PTR [ebp-4], 0
	jne	L714
	cmp	DWORD PTR [ebp+16], 0
	je	L715
	mov	eax, DWORD PTR [ebp+8]
	jmp	L716
L715:
	mov	eax, DWORD PTR [ebp-8]
L716:
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
	test	eax, eax
	je	L718
	mov	DWORD PTR [ebp-32], 0
	mov	edx, DWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-28], eax
	jmp	L719
L718:
	cmp	DWORD PTR [ebp+16], 0
	jne	L720
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	L722
L720:
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
L719:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
L722:
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
	test	eax, eax
	je	L724
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
	jmp	L725
L724:
	cmp	DWORD PTR [ebp+16], 0
	jne	L726
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	L728
L726:
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
L725:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
L728:
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
	ja	L734
	mov	eax, 16
	jmp	L735
L734:
	mov	eax, 0
L735:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 16
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 65280
	test	eax, eax
	jne	L736
	mov	eax, 8
	jmp	L737
L736:
	mov	eax, 0
L737:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 8
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 240
	test	eax, eax
	jne	L738
	mov	eax, 4
	jmp	L739
L738:
	mov	eax, 0
L739:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 4
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 12
	test	eax, eax
	jne	L740
	mov	eax, 2
	jmp	L741
L740:
	mov	eax, 0
L741:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, 2
	sub	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 2
	test	eax, eax
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
	jge	L744
	mov	eax, 0
	jmp	L749
L744:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	cmp	edx, eax
	jle	L746
	mov	eax, 2
	jmp	L749
L746:
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L747
	mov	eax, 0
	jmp	L749
L747:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L748
	mov	eax, 2
	jmp	L749
L748:
	mov	eax, 1
L749:
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
	jne	L753
	mov	eax, 16
	jmp	L754
L753:
	mov	eax, 0
L754:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	movzx	eax, al
	test	eax, eax
	jne	L755
	mov	eax, 8
	jmp	L756
L755:
	mov	eax, 0
L756:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 15
	test	eax, eax
	jne	L757
	mov	eax, 4
	jmp	L758
L757:
	mov	eax, 0
L758:
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	mov	ecx, eax
	shr	DWORD PTR [ebp-4], cl
	mov	eax, DWORD PTR [ebp-8]
	add	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-4]
	and	eax, 3
	test	eax, eax
	jne	L759
	mov	eax, 2
	jmp	L760
L759:
	mov	eax, 0
L760:
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
	test	eax, eax
	je	L763
	mov	DWORD PTR [ebp-28], 0
	mov	edx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [ebp-32], eax
	jmp	L764
L763:
	cmp	DWORD PTR [ebp+16], 0
	jne	L765
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	jmp	L767
L765:
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
L764:
	mov	eax, DWORD PTR [ebp-32]
	mov	edx, DWORD PTR [ebp-28]
L767:
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
L786:
	mov	eax, DWORD PTR [ebp+16]
	and	eax, 1
	test	eax, eax
	je	L783
	fld	QWORD PTR [ebp-8]
	fmul	QWORD PTR [ebp-24]
	fstp	QWORD PTR [ebp-8]
L783:
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
	jmp	L786
L791:
	nop
	cmp	DWORD PTR [ebp-12], 0
	je	L787
	fld1
	fdiv	QWORD PTR [ebp-8]
	jmp	L789
L787:
	fld	QWORD PTR [ebp-8]
L789:
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
L796:
	mov	eax, DWORD PTR [ebp+12]
	and	eax, 1
	test	eax, eax
	je	L793
	fld	DWORD PTR [ebp-4]
	fmul	DWORD PTR [ebp+8]
	fstp	DWORD PTR [ebp-4]
L793:
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
	jmp	L796
L801:
	nop
	cmp	DWORD PTR [ebp-8], 0
	je	L797
	fld1
	fdiv	DWORD PTR [ebp-4]
	jmp	L799
L797:
	fld	DWORD PTR [ebp-4]
L799:
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
	jnb	L803
	mov	eax, 0
	jmp	L808
L803:
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp-12]
	cmp	edx, eax
	jnb	L805
	mov	eax, 2
	jmp	L808
L805:
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L806
	mov	eax, 0
	jmp	L808
L806:
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-16]
	cmp	edx, eax
	jnb	L807
	mov	eax, 2
	jmp	L808
L807:
	mov	eax, 1
L808:
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
