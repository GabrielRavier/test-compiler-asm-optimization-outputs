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
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	movzx	esi, BYTE PTR [esp+20]
	test	ecx, ecx
	je	L21
	.p2align 5
	.p2align 4
	.p2align 3
L17:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	je	L28
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	jne	L17
L21:
	xor	eax, eax
	jmp	L16
	.p2align 4,,10
	.p2align 3
L28:
	add	eax, 1
	test	ecx, ecx
	je	L21
L16:
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
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+16]
	movzx	ebx, BYTE PTR [esp+12]
	test	edx, edx
	je	L35
	.p2align 4
	.p2align 4
	.p2align 3
L30:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	je	L39
	add	eax, 1
	sub	edx, 1
	jne	L30
L35:
	xor	eax, eax
	jmp	L29
	.p2align 4,,10
	.p2align 3
L39:
	test	edx, edx
	je	L35
L29:
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
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	L45
	.p2align 5
	.p2align 4
	.p2align 3
L41:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	jne	L52
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	jne	L41
L45:
	xor	eax, eax
	jmp	L40
	.p2align 4,,10
	.p2align 3
L52:
	test	eax, eax
	je	L45
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, bl
	sub	eax, edx
L40:
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
	mov	ebx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+40]
	test	eax, eax
	je	L54
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_memcpy
L54:
	mov	eax, ebx
	add	esp, 24
	.cfi_def_cfa_offset 8
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
	movzx	esi, BYTE PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	lea	eax, [ebx-1+eax]
	sub	ebx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L60:
	cmp	eax, ebx
	je	L64
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	jne	L60
	jmp	L59
	.p2align 4,,10
	.p2align 3
L64:
	xor	edx, edx
L59:
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	test	esi, esi
	je	L66
	lea	ecx, [ebx+esi]
	mov	eax, ebx
	and	esi, 1
	jne	L76
	.p2align 4
	.p2align 4
	.p2align 3
L67:
	mov	BYTE PTR [eax], dl
	mov	BYTE PTR [eax+1], dl
	add	eax, 2
	cmp	ecx, eax
	jne	L67
L66:
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
L76:
	.cfi_restore_state
	mov	BYTE PTR [ebx], dl
	lea	eax, [ebx+1]
	cmp	ecx, eax
	jne	L67
	jmp	L66
	.cfi_endproc
LFE8:
	.p2align 4
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
	je	L79
	.p2align 4
	.p2align 4
	.p2align 3
L80:
	add	edx, 1
	add	eax, 1
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	L80
L79:
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
	je	L85
	.p2align 4
	.p2align 4
	.p2align 3
L86:
	cmp	eax, ecx
	je	L85
	add	edx, 1
	movzx	eax, BYTE PTR [edx]
	test	al, al
	jne	L86
L85:
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
	.p2align 4
	.p2align 4
	.p2align 3
L94:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	je	L93
	add	eax, 1
	test	cl, cl
	jne	L94
	xor	eax, eax
L93:
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
	je	L98
	cmp	al, cl
	jne	L98
	mov	edx, 1
	.p2align 5
	.p2align 4
	.p2align 3
L99:
	movzx	eax, BYTE PTR [ebx+edx]
	movzx	ecx, BYTE PTR [esi+edx]
	add	edx, 1
	test	al, al
	je	L98
	cmp	al, cl
	je	L99
L98:
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
	mov	eax, edx
	cmp	BYTE PTR [edx], 0
	je	L113
	.p2align 3
	.p2align 4
	.p2align 3
L114:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L114
L113:
	sub	eax, edx
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
	mov	ebx, DWORD PTR [esp+28]
	xor	eax, eax
	test	ebx, ebx
	je	L117
	movzx	eax, BYTE PTR [ebp+0]
	mov	edx, DWORD PTR [esp+24]
	test	al, al
	je	L119
	lea	edi, [edx-1+ebx]
	.p2align 4
	.p2align 3
L120:
	movzx	ebx, BYTE PTR [edx]
	test	bl, bl
	setne	cl
	cmp	bl, al
	sete	bl
	test	cl, bl
	je	L119
	cmp	edx, edi
	je	L119
	add	ebp, 1
	add	edx, 1
	movzx	eax, BYTE PTR [ebp+0]
	test	al, al
	jne	L120
L119:
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
L117:
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
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	cmp	ebx, 1
	jle	L134
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
L136:
	movzx	ecx, BYTE PTR [eax+1]
	mov	BYTE PTR [edx], cl
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx+1], cl
	add	edx, 2
	add	eax, 2
	cmp	eax, ebx
	jne	L136
L134:
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
	jbe	L151
	cmp	dx, 31
	jbe	L151
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	L149
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	jmp	L149
	.p2align 4,,10
	.p2align 3
L151:
	mov	edx, 1
L149:
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
	jbe	L161
	movzx	edx, ax
	lea	ecx, [edx-8234]
	cmp	ecx, 47061
	jbe	L157
	cmp	ax, 8231
	jbe	L157
	lea	ebx, [edx-57344]
	mov	ecx, 1
	cmp	ebx, 8184
	jbe	L154
	sub	edx, 65532
	xor	ecx, ecx
	cmp	edx, 1048579
	ja	L154
	not	eax
	xor	ecx, ecx
	test	ax, -2
	setne	cl
	jmp	L154
	.p2align 4,,10
	.p2align 3
L161:
	add	eax, 1
	and	eax, 127
	xor	ecx, ecx
	cmp	eax, 32
	setg	cl
L154:
	mov	eax, ecx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L157:
	.cfi_restore_state
	mov	ecx, 1
	jmp	L154
	.cfi_endproc
LFE28:
	.p2align 4
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
	jbe	L162
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	xor	ecx, ecx
	cmp	eax, 5
	setbe	cl
L162:
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
	jp	L174
	fxch	st(1)
	fucomi	st, st(0)
	jp	L170
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L173
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L170:
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L173:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L166
	.p2align 4,,10
	.p2align 3
L174:
	fstp	st(1)
L166:
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
	jp	L183
	fxch	st(1)
	fucomi	st, st(0)
	jp	L179
	fxch	st(1)
	fcomi	st, st(1)
	jbe	L182
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
L179:
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L182:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	L175
	.p2align 4,,10
	.p2align 3
L183:
	fstp	st(1)
L175:
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
	jp	L189
	fxch	st(1)
	fucomi	st, st(0)
	jp	L192
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
	je	L186
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L186:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L189:
	fstp	st(0)
	jmp	L184
	.p2align 4,,10
	.p2align 3
L192:
	fstp	st(0)
L184:
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
	jp	L198
	fxch	st(1)
	fucomi	st, st(0)
	jp	L201
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
	je	L195
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L195:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L198:
	fstp	st(0)
	jmp	L193
	.p2align 4,,10
	.p2align 3
L201:
	fstp	st(0)
L193:
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
	jp	L211
	fxch	st(1)
	fucomi	st, st(0)
	jp	L212
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
	je	L204
	test	edx, edx
	jne	L213
	fstp	st(0)
	jmp	L208
	.p2align 4,,10
	.p2align 3
L212:
	fstp	st(0)
	jmp	L208
	.p2align 4,,10
	.p2align 3
L214:
	fstp	st(0)
L208:
	jmp	L202
	.p2align 4,,10
	.p2align 3
L211:
	fstp	st(0)
	jmp	L202
	.p2align 4,,10
	.p2align 3
L213:
	fstp	st(1)
L202:
	ret
	.p2align 4,,10
	.p2align 3
L204:
	fcomi	st, st(1)
	jbe	L214
	fstp	st(1)
	jmp	L208
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
	jp	L223
	fxch	st(1)
	fucomi	st, st(0)
	jp	L221
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
	je	L217
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L217:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
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
	jp	L232
	fxch	st(1)
	fucomi	st, st(0)
	jp	L230
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
	je	L226
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L226:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
L230:
	fstp	st(0)
	jmp	L224
	.p2align 4,,10
	.p2align 3
L232:
	fstp	st(0)
L224:
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
	jp	L242
	fxch	st(1)
	fucomi	st, st(0)
	jp	L243
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
	je	L235
	test	edx, edx
	jne	L244
	fstp	st(1)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L242:
	fstp	st(0)
	jmp	L238
	.p2align 4,,10
	.p2align 3
L245:
	fstp	st(1)
L238:
	jmp	L233
	.p2align 4,,10
	.p2align 3
L243:
	fstp	st(0)
	jmp	L233
	.p2align 4,,10
	.p2align 3
L244:
	fstp	st(0)
L233:
	ret
	.p2align 4,,10
	.p2align 3
L235:
	fcomi	st, st(1)
	jbe	L245
	fstp	st(0)
	jmp	L238
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
	je	L247
	.p2align 5
	.p2align 4
	.p2align 3
L248:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR _digits[ecx]
	mov	BYTE PTR [edx], cl
	add	edx, 1
	shr	eax, 6
	jne	L248
L247:
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
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 1
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, 0
	ret
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	_rand
	.def	_rand;	.scl	2;	.type	32;	.endef
_rand:
LFB41:
	.cfi_startproc
	imul	ecx, DWORD PTR _seed+4, 1284865837
	mov	eax, DWORD PTR _seed
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
	.p2align 4
	.globl	_insque
	.def	_insque;	.scl	2;	.type	32;	.endef
_insque:
LFB42:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	test	edx, edx
	je	L259
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L253
	mov	DWORD PTR [edx+4], eax
L253:
	ret
	.p2align 4,,10
	.p2align 3
L259:
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
	je	L261
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
L261:
	mov	edx, DWORD PTR [eax+4]
	test	edx, edx
	je	L260
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
L260:
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
	mov	edi, DWORD PTR [esp+76]
	mov	eax, DWORD PTR [esp+72]
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	L270
	mov	ebx, DWORD PTR [esp+68]
	xor	esi, esi
	mov	DWORD PTR [esp+28], ecx
	mov	ebp, esi
	mov	esi, ebx
	.p2align 4
	.p2align 3
L272:
	mov	DWORD PTR [esp+4], esi
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+80]]
	test	eax, eax
	je	L284
	add	ebp, 1
	add	esi, edi
	cmp	DWORD PTR [esp+28], ebp
	jne	L272
	mov	ecx, DWORD PTR [esp+28]
L270:
	lea	eax, [ecx+1]
	mov	edx, DWORD PTR [esp+72]
	mov	DWORD PTR [edx], eax
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+68]
	mov	ebp, ecx
	test	edi, edi
	je	L269
	mov	DWORD PTR [esp+8], edi
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ecx
	call	_memmove
	jmp	L269
	.p2align 4,,10
	.p2align 3
L284:
	mov	ebp, esi
L269:
	mov	eax, ebp
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
	je	L287
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	mov	edi, ebx
	.p2align 4
	.p2align 3
L289:
	mov	DWORD PTR [esp+4], edi
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	je	L286
	add	esi, 1
	add	edi, DWORD PTR [esp+60]
	cmp	ebp, esi
	jne	L289
L287:
	xor	edi, edi
L286:
	mov	eax, edi
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
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+12]
	jmp	L320
	.p2align 4
	.p2align 4,,10
	.p2align 3
L316:
	add	ecx, 1
L320:
	movsx	eax, BYTE PTR [ecx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	L316
	cmp	dl, 32
	je	L316
	xor	esi, esi
	cmp	dl, 43
	je	L304
	cmp	dl, 45
	jne	L305
	mov	esi, 1
L304:
	add	ecx, 1
L305:
	movsx	edx, BYTE PTR [ecx]
	mov	ebx, edx
	sub	edx, 48
	xor	eax, eax
	cmp	edx, 9
	ja	L307
	.p2align 5
	.p2align 4
	.p2align 3
L306:
	lea	eax, [eax+eax*4]
	add	eax, eax
	add	ecx, 1
	lea	edx, [ebx-48]
	movsx	edx, dl
	sub	eax, edx
	movsx	edx, BYTE PTR [ecx]
	mov	ebx, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	L306
L307:
	mov	edx, eax
	neg	edx
	test	esi, esi
	cmove	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
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
	mov	edx, DWORD PTR [esp+20]
	jmp	L342
	.p2align 4
	.p2align 4,,10
	.p2align 3
L338:
	add	edx, 1
L342:
	movsx	eax, BYTE PTR [edx]
	mov	ecx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	L338
	cmp	cl, 32
	je	L338
	xor	ebp, ebp
	cmp	cl, 43
	je	L326
	cmp	cl, 45
	jne	L327
	mov	ebp, 1
L326:
	add	edx, 1
L327:
	movsx	ecx, BYTE PTR [edx]
	mov	eax, ecx
	sub	ecx, 48
	xor	esi, esi
	xor	edi, edi
	cmp	ecx, 9
	ja	L329
	.p2align 6
	.p2align 4
	.p2align 3
L328:
	mov	ecx, esi
	mov	ebx, edi
	shld	ebx, ecx, 2
	sal	ecx, 2
	add	esi, ecx
	adc	edi, ebx
	add	esi, esi
	adc	edi, edi
	add	edx, 1
	lea	ecx, [eax-48]
	movsx	ecx, cl
	mov	ebx, ecx
	sar	ebx, 31
	sub	esi, ecx
	sbb	edi, ebx
	movsx	ecx, BYTE PTR [edx]
	mov	eax, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	L328
L329:
	test	ebp, ebp
	jne	L322
	neg	esi
	adc	edi, 0
	neg	edi
L322:
	mov	eax, esi
	mov	edx, edi
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
	jmp	L355
	.p2align 4,,10
	.p2align 3
L348:
	mov	ebx, edi
L355:
	test	ebx, ebx
	je	L344
	mov	edi, ebx
	shr	edi
	mov	edx, edi
	imul	edx, esi
	add	edx, DWORD PTR [esp+52]
	mov	ebp, edx
	mov	DWORD PTR [esp+4], edx
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	js	L348
	jle	L343
	lea	eax, [ebp+0+esi]
	mov	DWORD PTR [esp+52], eax
	sub	ebx, 1
	sub	ebx, edi
	jmp	L355
	.p2align 4,,10
	.p2align 3
L344:
	xor	ebp, ebp
L343:
	mov	eax, ebp
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
	mov	esi, DWORD PTR [esp+52]
	mov	ebx, DWORD PTR [esp+60]
	mov	ebp, DWORD PTR [esp+56]
	test	ebp, ebp
	je	L357
	mov	edi, ebp
	jmp	L360
	.p2align 4,,10
	.p2align 3
L359:
	sar	edi
	je	L357
L360:
	mov	edx, edi
	sar	edx
	imul	edx, ebx
	lea	ebp, [esi+edx]
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], ebp
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR [esp+64]]
	test	eax, eax
	je	L368
	jle	L359
	lea	esi, [ebp+0+ebx]
	sub	edi, 1
	jmp	L359
	.p2align 4,,10
	.p2align 3
L357:
	xor	edi, edi
	jmp	L356
	.p2align 4,,10
	.p2align 3
L368:
	mov	edi, ebp
L356:
	mov	eax, edi
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
	cmovs	eax, ecx
	cmovs	edx, ebx
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
	mov	ebx, DWORD PTR [esp+64]
	lea	eax, [esp+40]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+76]
	mov	edx, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+68]
	mov	edx, DWORD PTR [esp+72]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
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
	cmovs	eax, ecx
	cmovs	edx, ebx
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
	mov	ebx, DWORD PTR [esp+64]
	lea	eax, [esp+40]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+76]
	mov	edx, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+68]
	mov	edx, DWORD PTR [esp+72]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	DWORD PTR [ebx+12], edx
	mov	eax, ebx
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
	je	L382
	mov	ecx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L397:
	test	dx, dx
	je	L382
	add	eax, 2
	movzx	edx, WORD PTR [eax]
	cmp	dx, cx
	jne	L397
L382:
	test	dx, dx
	mov	edx, 0
	cmove	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
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
	je	L399
	test	cx, cx
	je	L399
	mov	DWORD PTR [esp], 2
	.p2align 6
	.p2align 4
	.p2align 3
L400:
	mov	eax, DWORD PTR [esp]
	movzx	edx, WORD PTR [edi+eax]
	movzx	ecx, WORD PTR [ebp+0+eax]
	add	eax, 2
	mov	DWORD PTR [esp], eax
	test	dx, dx
	setne	bl
	mov	esi, ebx
	cmp	dx, cx
	sete	bl
	mov	eax, esi
	test	al, bl
	je	L399
	test	cx, cx
	jne	L400
L399:
	mov	eax, -1
	cmp	dx, cx
	jb	L398
	xor	eax, eax
	cmp	cx, dx
	setb	al
L398:
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
	mov	ebx, DWORD PTR [esp+12]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
L416:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L416
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
	mov	eax, edx
	cmp	WORD PTR [edx], 0
	je	L420
	.p2align 4
	.p2align 4
	.p2align 3
L421:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L421
L420:
	sub	eax, edx
	sar	eax
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
	mov	ecx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	ebp, DWORD PTR [esp+28]
	test	ebp, ebp
	je	L430
	.p2align 4
	.p2align 3
L425:
	movzx	ebx, WORD PTR [ecx]
	movzx	esi, WORD PTR [edx]
	test	bx, bx
	setne	al
	cmp	bx, si
	sete	bl
	test	al, bl
	je	L426
	test	si, si
	je	L426
	add	ecx, 2
	add	edx, 2
	sub	ebp, 1
	jne	L425
L430:
	xor	eax, eax
L424:
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
L426:
	.cfi_restore_state
	test	ebp, ebp
	je	L430
	movzx	ecx, WORD PTR [ecx]
	movzx	edx, WORD PTR [edx]
	mov	eax, -1
	cmp	cx, dx
	jb	L424
	xor	eax, eax
	cmp	dx, cx
	setb	al
	jmp	L424
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	_wmemchr
	.def	_wmemchr;	.scl	2;	.type	32;	.endef
_wmemchr:
LFB64:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+12]
	movzx	ecx, WORD PTR [esp+8]
	test	edx, edx
	je	L447
	.p2align 4
	.p2align 4
	.p2align 3
L442:
	cmp	WORD PTR [eax], cx
	je	L450
	add	eax, 2
	sub	edx, 1
	jne	L442
L447:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
L450:
	test	edx, edx
	je	L447
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
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	L456
	.p2align 5
	.p2align 4
	.p2align 3
L452:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [ecx], bx
	jne	L464
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	jne	L452
L456:
	xor	eax, eax
L451:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L464:
	.cfi_restore_state
	test	eax, eax
	je	L456
	movzx	ecx, WORD PTR [ecx]
	mov	eax, -1
	cmp	cx, bx
	jb	L451
	xor	eax, eax
	cmp	bx, cx
	setb	al
	jmp	L451
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
	mov	ebx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+40]
	test	eax, eax
	je	L466
	add	eax, eax
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_memcpy
L466:
	mov	eax, ebx
	add	esp, 24
	.cfi_def_cfa_offset 8
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
	je	L472
	lea	eax, [ecx-1]
	mov	ebx, edx
	sub	ebx, esi
	lea	edi, [ecx+ecx]
	cmp	ebx, edi
	jb	L473
	mov	edi, edx
	test	ecx, ecx
	je	L472
	.p2align 3
	.p2align 4
	.p2align 3
L474:
	movsw
	sub	eax, 1
	jnb	L474
	jmp	L472
	.p2align 4,,10
	.p2align 3
L473:
	test	ecx, ecx
	je	L472
	.p2align 4
	.p2align 4
	.p2align 3
L475:
	movzx	ecx, WORD PTR [esi+eax*2]
	mov	WORD PTR [edx+eax*2], cx
	sub	eax, 1
	jnb	L475
L472:
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
	mov	ebx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+16]
	movzx	ecx, WORD PTR [esp+12]
	test	edx, edx
	je	L485
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L486:
	add	edx, 2
	mov	WORD PTR [edx-2], cx
	sub	eax, 1
	jnb	L486
L485:
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
	jnb	L493
	test	eax, eax
	je	L492
	.p2align 4
	.p2align 4
	.p2align 3
L495:
	movzx	edx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [edi-1+eax], dl
	sub	eax, 1
	jne	L495
L492:
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
L493:
	.cfi_restore_state
	je	L492
	test	eax, eax
	je	L492
	add	eax, esi
	.p2align 3
	.p2align 4
	.p2align 3
L496:
	movsb
	cmp	eax, esi
	jne	L496
	jmp	L492
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
	je	L508
	mov	edi, esi
	xor	esi, esi
L508:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L509
	mov	eax, edx
	xor	edx, edx
L509:
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
	je	L512
	mov	esi, edi
	xor	edi, edi
L512:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L513
	mov	edx, eax
	xor	eax, eax
L513:
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
	bswap	edx
	mov	eax, DWORD PTR [esp+8]
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
	.p2align 4
	.p2align 4
	.p2align 3
L528:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	jne	L530
	cmp	ecx, 32
	jne	L528
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
L530:
	mov	eax, ecx
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
	je	L531
	mov	edx, eax
	and	edx, 1
	jne	L531
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L533:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L533
L531:
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
	mov	eax, 1
	fld	DWORD PTR LC2
	fcomip	st, st(1)
	ja	L541
	fld	DWORD PTR LC3
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L538
	.p2align 4,,10
	.p2align 3
L541:
	fstp	st(0)
L538:
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
	mov	eax, 1
	fld	QWORD PTR LC4
	fcomip	st, st(1)
	ja	L545
	fld	QWORD PTR LC5
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L542
	.p2align 4,,10
	.p2align 3
L545:
	fstp	st(0)
L542:
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
	ja	L549
	fld	TBYTE PTR LC7
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L546
	.p2align 4,,10
	.p2align 3
L549:
	fstp	st(0)
L546:
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
	jp	L552
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L558
	jne	L558
	jmp	L552
	.p2align 4,,10
	.p2align 3
L565:
	fstp	st(0)
L552:
	ret
	.p2align 4,,10
	.p2align 3
L558:
	fld	DWORD PTR LC8
	test	eax, eax
	jns	L556
	fstp	st(0)
	fld	DWORD PTR LC9
	jmp	L556
	.p2align 5
	.p2align 4,,10
	.p2align 3
L555:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L565
	fmul	st, st(0)
L556:
	test	al, 1
	je	L555
	fmul	st(1), st
	jmp	L555
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
	jp	L567
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L573
	jne	L573
	jmp	L567
	.p2align 4,,10
	.p2align 3
L581:
	fstp	st(0)
L567:
	ret
	.p2align 4,,10
	.p2align 3
L573:
	test	eax, eax
	js	L580
	fld	DWORD PTR LC8
	jmp	L571
	.p2align 4,,10
	.p2align 3
L580:
	fld	DWORD PTR LC9
	jmp	L571
	.p2align 5
	.p2align 4,,10
	.p2align 3
L570:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L581
	fmul	st, st(0)
L571:
	test	al, 1
	je	L570
	fmul	st(1), st
	jmp	L570
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
	jp	L583
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L589
	jne	L589
	jmp	L583
	.p2align 4,,10
	.p2align 3
L597:
	fstp	st(0)
L583:
	ret
	.p2align 4,,10
	.p2align 3
L589:
	test	eax, eax
	js	L596
	fld	DWORD PTR LC8
	jmp	L587
	.p2align 4,,10
	.p2align 3
L596:
	fld	DWORD PTR LC9
	jmp	L587
	.p2align 5
	.p2align 4,,10
	.p2align 3
L586:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L597
	fmul	st, st(0)
L587:
	test	al, 1
	je	L586
	fmul	st(1), st
	jmp	L586
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
	mov	esi, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	ebx, ebx
	je	L599
	add	ebx, eax
	mov	edx, esi
	.p2align 5
	.p2align 4
	.p2align 3
L600:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], cl
	cmp	ebx, eax
	jne	L600
L599:
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
	mov	eax, esi
	cmp	BYTE PTR [esi], 0
	je	L607
	.p2align 3
	.p2align 4
	.p2align 3
L608:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L608
L607:
	test	edx, edx
	je	L615
	.p2align 5
	.p2align 4
	.p2align 3
L609:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	je	L620
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	jne	L609
	jmp	L615
	.p2align 4,,10
	.p2align 3
L620:
	test	edx, edx
	jne	L612
L615:
	mov	BYTE PTR [eax], 0
L612:
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
	mov	ecx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	xor	eax, eax
	test	edx, edx
	je	L628
L622:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L624
L621:
	ret
	.p2align 4,,10
	.p2align 3
L628:
	ret
	.p2align 4,,10
	.p2align 3
L624:
	add	eax, 1
	cmp	edx, eax
	jne	L622
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
	je	L634
L630:
	mov	eax, esi
	.p2align 4
	.p2align 4
	.p2align 3
L633:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	L637
	add	eax, 1
	cmp	dl, cl
	jne	L633
L631:
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
L637:
	.cfi_restore_state
	add	ebx, 1
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	jne	L630
L634:
	xor	ebx, ebx
	jmp	L631
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
L640:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L640
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
	mov	eax, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	movzx	ebx, BYTE PTR [ebp+0]
	mov	edx, ebp
	test	bl, bl
	je	L645
	.p2align 3
	.p2align 4
	.p2align 3
L646:
	add	edx, 1
	cmp	BYTE PTR [edx], 0
	jne	L646
L645:
	sub	edx, ebp
	lea	edi, [ebp-1+edx]
	jne	L654
	jmp	L647
	.p2align 4,,10
	.p2align 3
L653:
	test	eax, eax
	je	L647
	movzx	ecx, BYTE PTR [eax]
	mov	edx, ebp
	mov	esi, eax
	test	cl, cl
	je	L650
	mov	DWORD PTR [esp+20], eax
	mov	DWORD PTR [esp+24], ebp
	mov	ebp, ebx
	.p2align 4
	.p2align 3
L649:
	movzx	eax, BYTE PTR [edx]
	test	al, al
	setne	bl
	cmp	al, cl
	sete	al
	test	bl, al
	je	L672
	cmp	edx, edi
	je	L672
	add	esi, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [esi]
	test	cl, cl
	jne	L649
L672:
	mov	ebx, ebp
	mov	eax, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
L650:
	cmp	BYTE PTR [edx], cl
	je	L647
	add	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
L654:
	movzx	edx, BYTE PTR [eax]
	cmp	dl, bl
	je	L653
	add	eax, 1
	test	dl, dl
	jne	L654
	xor	eax, eax
L647:
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
	ja	L684
	fstp	st(0)
L676:
	fldz
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L685
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L678
	jmp	L679
	.p2align 4,,10
	.p2align 3
L685:
	fstp	st(1)
	fstp	st(1)
L679:
	ret
	.p2align 4,,10
	.p2align 3
L684:
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jbe	L676
	fstp	st(0)
L678:
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
	mov	ebx, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+24]
	mov	edi, ebx
	mov	eax, DWORD PTR [esp+32]
	test	eax, eax
	je	L686
	cmp	esi, DWORD PTR [esp+32]
	jb	L696
	sub	esi, DWORD PTR [esp+32]
	add	esi, ebx
	jc	L696
	mov	eax, DWORD PTR [esp+28]
	movzx	ebp, BYTE PTR [eax]
	jmp	L693
	.p2align 4,,10
	.p2align 3
L711:
	mov	ebx, DWORD PTR [esp+20]
	test	eax, eax
	je	L686
	movzx	eax, BYTE PTR [ecx]
	cmp	BYTE PTR [edx], al
	je	L686
	.p2align 5
	.p2align 4
	.p2align 3
L688:
	cmp	esi, ebx
	jb	L696
L693:
	movzx	eax, BYTE PTR [ebx]
	mov	edi, ebx
	add	ebx, 1
	mov	ecx, ebp
	cmp	al, cl
	jne	L688
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+32]
	sub	eax, 1
	je	L686
	mov	ecx, ebx
	mov	DWORD PTR [esp+20], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L689:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	jne	L711
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	jne	L689
L686:
	mov	eax, edi
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
L696:
	.cfi_restore_state
	xor	edi, edi
	jmp	L686
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
	mov	ebx, DWORD PTR [esp+32]
	mov	esi, DWORD PTR [esp+40]
	test	esi, esi
	je	L713
	mov	DWORD PTR [esp+8], esi
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_memmove
L713:
	lea	eax, [ebx+esi]
	add	esp, 20
	.cfi_def_cfa_offset 12
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
	xor	edx, edx
	fcomip	st, st(1)
	ja	L746
L719:
	xor	eax, eax
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jb	L744
	.p2align 5
	.p2align 4
	.p2align 3
L723:
	add	eax, 1
	fmul	DWORD PTR LC9
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L723
L724:
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L726
	fchs
L726:
	ret
	.p2align 4,,10
	.p2align 3
L746:
	fchs
	mov	edx, 1
	jmp	L719
	.p2align 4,,10
	.p2align 3
L744:
	fldz
	fucomip	st, st(1)
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	test	al, al
	mov	eax, 0
	jne	L745
	jmp	L724
	.p2align 4
	.p2align 4,,10
	.p2align 3
L725:
	sub	eax, 1
	fadd	st, st(0)
L745:
	fld	DWORD PTR LC9
	fcomip	st, st(1)
	ja	L725
	jmp	L724
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
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	eax, ecx
	or	ecx, ebx
	je	L750
	mov	edx, ebx
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	.p2align 6
	.p2align 4
	.p2align 3
L749:
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
	shr	edx
	mov	ecx, eax
	or	ecx, edx
	jne	L749
L747:
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
	.p2align 4,,10
	.p2align 3
L750:
	.cfi_restore_state
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	jmp	L747
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
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	L763
	.p2align 4
	.p2align 3
L754:
	test	eax, eax
	js	L755
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L755
	test	edx, edx
	jne	L754
L755:
	xor	ebx, ebx
	test	edx, edx
	je	L758
L763:
	xor	ebx, ebx
	jmp	L757
	.p2align 4
	.p2align 4,,10
	.p2align 3
L760:
	shr	eax
	shr	edx
	je	L758
L757:
	cmp	ecx, eax
	jb	L760
	sub	ecx, eax
	or	ebx, edx
	jmp	L760
	.p2align 4,,10
	.p2align 3
L758:
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
	mov	ecx, edx
	sar	cl, 7
	mov	eax, ecx
	xor	eax, edx
	mov	ebx, 7
	cmp	dl, cl
	je	L772
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
L772:
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
	sar	edx, 31
	mov	ecx, edx
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	xor	eax, ecx
	xor	edx, ecx
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [esp+20]
	xor	eax, ecx
	mov	edx, DWORD PTR [esp+24]
	xor	edx, ecx
	or	eax, edx
	mov	ebp, 63
	je	L777
	test	edi, edi
	je	L779
	bsr	esi, edi
	xor	esi, 31
L780:
	lea	ebp, [esi-1]
L777:
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
	.p2align 4,,10
	.p2align 3
L779:
	.cfi_restore_state
	bsr	esi, esi
	xor	esi, 31
	add	esi, 32
	jmp	L780
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
	mov	ecx, DWORD PTR [esp+12]
	xor	ebx, ebx
	test	edx, edx
	je	L784
	.p2align 5
	.p2align 4
	.p2align 3
L786:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L786
L784:
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
	mov	edx, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+36]
	mov	edi, DWORD PTR [esp+40]
	mov	esi, edi
	shr	esi, 3
	mov	ebp, edi
	and	ebp, -8
	cmp	edx, ebx
	jb	L791
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jb	L791
	lea	eax, [edi-1]
	test	edi, edi
	je	L790
	.p2align 4
	.p2align 4
	.p2align 3
L792:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	jnb	L792
	jmp	L790
	.p2align 4,,10
	.p2align 3
L791:
	test	esi, esi
	je	L794
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*8]
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp+40], edi
	.p2align 5
	.p2align 4
	.p2align 3
L795:
	mov	edi, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx], edi
	mov	DWORD PTR [ecx+4], ebp
	add	eax, 8
	add	ecx, 8
	cmp	eax, esi
	jne	L795
	mov	ebp, DWORD PTR [esp+4]
	mov	edi, DWORD PTR [esp+40]
L794:
	cmp	ebp, edi
	jnb	L790
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L796:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	L796
L790:
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
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	ecx, edi
	shr	ecx
	cmp	esi, ebx
	jb	L807
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jb	L807
	lea	eax, [edi-1]
	test	edi, edi
	je	L806
	.p2align 4
	.p2align 4
	.p2align 3
L808:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	L808
	jmp	L806
	.p2align 4,,10
	.p2align 3
L807:
	test	ecx, ecx
	je	L810
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 4
	.p2align 4
	.p2align 3
L811:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
	cmp	eax, ebp
	jne	L811
L810:
	test	edi, 1
	je	L806
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
L806:
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
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	esi, edi
	shr	esi, 2
	mov	ebp, edi
	and	ebp, -4
	cmp	edx, ebx
	jb	L823
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jb	L823
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
	jmp	L822
	.p2align 4,,10
	.p2align 3
L823:
	test	esi, esi
	je	L826
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*4]
	mov	DWORD PTR [esp+20], edx
	.p2align 4
	.p2align 4
	.p2align 3
L827:
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	add	eax, 4
	add	ecx, 4
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
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	L828
L822:
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
	mov	eax, DWORD PTR [esp+16]
	xor	edx, edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
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
	mov	eax, DWORD PTR [esp+16]
	xor	edx, edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
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
	fild	QWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	js	L846
L844:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L846:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L844
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
	fild	QWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+20]
	test	eax, eax
	js	L850
L848:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L850:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L848
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
	xor	eax, eax
	movzx	ebx, WORD PTR [esp+8]
	mov	ecx, 15
	.p2align 5
	.p2align 4
	.p2align 3
L854:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	L852
	add	eax, 1
	cmp	eax, 16
	jne	L854
L852:
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
	xor	eax, eax
	movzx	edx, WORD PTR [esp+4]
	.p2align 4
	.p2align 4
	.p2align 3
L859:
	bt	edx, eax
	jc	L857
	add	eax, 1
	cmp	eax, 16
	jne	L859
L857:
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
	fld	DWORD PTR LC12
	fld	DWORD PTR [esp+12]
	fcomi	st, st(1)
	jnb	L869
	fstp	st(1)
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
L867:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L869:
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
	jmp	L867
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
	xor	eax, eax
	xor	ecx, ecx
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
L871:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	L871
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
	xor	edx, edx
	xor	ecx, ecx
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
L875:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	L875
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
	mov	ecx, DWORD PTR [esp+12]
	xor	ebx, ebx
	test	edx, edx
	je	L878
	.p2align 5
	.p2align 4
	.p2align 3
L880:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L880
L878:
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
	mov	edx, DWORD PTR [esp+12]
	xor	ebx, ebx
	test	ecx, ecx
	je	L884
	test	edx, edx
	je	L888
	.p2align 5
	.p2align 4
	.p2align 3
L886:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L886
L884:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L888:
	.cfi_restore_state
	xor	ebx, ebx
	jmp	L884
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
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	L902
	.p2align 4
	.p2align 3
L893:
	test	eax, eax
	js	L894
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L894
	test	edx, edx
	jne	L893
L894:
	xor	ebx, ebx
	test	edx, edx
	je	L897
L902:
	xor	ebx, ebx
	jmp	L896
	.p2align 4
	.p2align 4,,10
	.p2align 3
L899:
	shr	eax
	shr	edx
	je	L897
L896:
	cmp	ecx, eax
	jb	L899
	sub	ecx, eax
	or	ebx, edx
	jmp	L899
	.p2align 4,,10
	.p2align 3
L897:
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
	ja	L914
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	L911
	.p2align 4,,10
	.p2align 3
L914:
	fstp	st(0)
	fstp	st(0)
L911:
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
	ja	L918
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
	fstp	st(0)
L915:
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
	xor	edi, edi
	test	edx, edx
	js	L933
L922:
	test	edx, edx
	je	L927
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
L924:
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
	jne	L924
L923:
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
	.p2align 4,,10
	.p2align 3
L933:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L922
	.p2align 4,,10
	.p2align 3
L927:
	xor	esi, esi
	jmp	L923
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+16]
	xor	esi, esi
	test	ebx, ebx
	js	L957
L935:
	test	eax, eax
	js	L958
L936:
	mov	ecx, ebx
	mov	edx, 1
	cmp	eax, ebx
	jnb	L954
	.p2align 4
	.p2align 4
	.p2align 3
L938:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jnb	L937
	test	edx, edx
	jne	L938
L937:
	test	edx, edx
	je	L946
L954:
	xor	ebx, ebx
	jmp	L942
	.p2align 4,,10
	.p2align 3
L957:
	neg	ebx
	mov	esi, 1
	jmp	L935
	.p2align 4,,10
	.p2align 3
L958:
	neg	eax
	xor	esi, 1
	jmp	L936
	.p2align 4,,10
	.p2align 3
L959:
	sub	ecx, eax
	or	ebx, edx
L941:
	shr	eax
	shr	edx
	je	L940
L942:
	cmp	ecx, eax
	jb	L941
	jmp	L959
	.p2align 4,,10
	.p2align 3
L946:
	xor	ebx, ebx
L940:
	mov	eax, ebx
	neg	eax
	test	esi, esi
	cmove	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	xor	esi, esi
	test	ebx, ebx
	js	L984
L961:
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	mov	ecx, ebx
	mov	edx, 1
	cmp	eax, ebx
	jnb	L977
	.p2align 4
	.p2align 4
	.p2align 3
L963:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jnb	L962
	test	edx, edx
	jne	L963
L962:
	test	edx, edx
	je	L965
	.p2align 4
	.p2align 4
	.p2align 3
L977:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L977
L965:
	mov	eax, ecx
	neg	eax
	test	esi, esi
	cmove	eax, ecx
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
L984:
	.cfi_restore_state
	neg	ebx
	mov	esi, 1
	jmp	L961
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	ecx, ebx
	mov	eax, esi
	mov	edx, 1
	cmp	si, bx
	jnb	L995
	.p2align 4
	.p2align 3
L986:
	test	ax, ax
	js	L987
	add	eax, eax
	add	edx, edx
	cmp	ax, cx
	jnb	L987
	test	dx, dx
	jne	L986
L987:
	xor	ebx, ebx
	test	dx, dx
	je	L990
L995:
	xor	ebx, ebx
	jmp	L989
	.p2align 4
	.p2align 4,,10
	.p2align 3
L992:
	shr	ax
	shr	dx
	je	L990
L989:
	cmp	cx, ax
	jb	L992
	sub	ecx, eax
	or	ebx, edx
	jmp	L992
	.p2align 4,,10
	.p2align 3
L990:
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
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	L1014
	.p2align 4
	.p2align 3
L1005:
	test	eax, eax
	js	L1006
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L1006
	test	edx, edx
	jne	L1005
L1006:
	xor	ebx, ebx
	test	edx, edx
	je	L1009
L1014:
	xor	ebx, ebx
	jmp	L1008
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1011:
	shr	eax
	shr	edx
	je	L1009
L1008:
	cmp	ecx, eax
	jb	L1011
	sub	ecx, eax
	or	ebx, edx
	jmp	L1011
	.p2align 4,,10
	.p2align 3
L1009:
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
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	test	bl, 32
	je	L1024
	lea	ecx, [ebx-32]
	sal	edx, cl
	xor	eax, eax
L1026:
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
L1024:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1027
	mov	ecx, ebx
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	edx, cl
	mov	ecx, ebx
	sal	esi, cl
	or	edx, esi
	jmp	L1026
	.p2align 4,,10
	.p2align 3
L1027:
	mov	edx, esi
	jmp	L1026
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
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	test	bl, 32
	je	L1030
	mov	edx, esi
	sar	edx, 31
	lea	ecx, [ebx-32]
	mov	eax, esi
	sar	eax, cl
L1032:
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
	.p2align 4,,10
	.p2align 3
L1030:
	.cfi_restore_state
	test	ebx, ebx
	je	L1033
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
	jmp	L1032
	.p2align 4,,10
	.p2align 3
L1033:
	mov	eax, edi
	mov	edx, esi
	jmp	L1032
	.cfi_endproc
LFE134:
	.p2align 4
	.globl	___bswapdi2
	.def	___bswapdi2;	.scl	2;	.type	32;	.endef
___bswapdi2:
LFB135:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	bswap	edx
	mov	eax, DWORD PTR [esp+8]
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	xor	eax, eax
	cmp	ebx, 65535
	setbe	al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	ebx, cl
	xor	edx, edx
	test	bh, -1
	sete	dl
	sal	edx, 3
	mov	ecx, 8
	sub	ecx, edx
	shr	ebx, cl
	add	edx, eax
	xor	eax, eax
	test	bl, -16
	sete	al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	ebx, cl
	lea	esi, [eax+edx]
	xor	edx, edx
	test	bl, 12
	sete	dl
	add	edx, edx
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, edx
	shr	ebx, cl
	sub	eax, ebx
	xor	ecx, ecx
	and	ebx, 2
	cmovne	eax, ecx
	add	edx, esi
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
	.p2align 4
	.globl	___cmpdi2
	.def	___cmpdi2;	.scl	2;	.type	32;	.endef
___cmpdi2:
LFB138:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	xor	eax, eax
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	L1039
	mov	eax, 2
	jg	L1039
	xor	eax, eax
	cmp	edx, ecx
	jb	L1039
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1039:
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
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	xor	eax, eax
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	L1047
	mov	eax, 2
	jg	L1047
	xor	eax, eax
	cmp	edx, ecx
	jb	L1047
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
L1047:
	sub	eax, 1
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	xor	edx, edx
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
	and	eax, 3
	mov	ebx, eax
	not	ebx
	shr	eax
	mov	esi, 2
	sub	esi, eax
	mov	eax, ebx
	and	eax, 1
	neg	eax
	and	eax, esi
	add	ecx, edx
	add	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
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
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	test	bl, 32
	je	L1056
	lea	ecx, [ebx-32]
	mov	eax, esi
	shr	eax, cl
	xor	edx, edx
L1058:
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
	.p2align 4,,10
	.p2align 3
L1056:
	.cfi_restore_state
	test	ebx, ebx
	je	L1059
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
	jmp	L1058
	.p2align 4,,10
	.p2align 3
L1059:
	mov	eax, edi
	mov	edx, esi
	jmp	L1058
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
	movzx	edx, si
	mov	ebx, eax
	imul	ebx, edx
	mov	edi, ebx
	shr	edi, 16
	shr	ecx, 16
	imul	edx, ecx
	add	edx, edi
	movzx	edi, dx
	shr	esi, 16
	imul	eax, esi
	add	eax, edi
	movzx	ebx, bx
	mov	edi, eax
	sal	edi, 16
	add	ebx, edi
	shr	edx, 16
	imul	ecx, esi
	add	edx, ecx
	shr	eax, 16
	add	edx, eax
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
	movzx	ecx, dx
	movzx	eax, WORD PTR [esp+28]
	mov	ebx, ecx
	imul	ebx, eax
	mov	edi, ebx
	shr	edi, 16
	mov	esi, edx
	shr	esi, 16
	imul	eax, esi
	add	eax, edi
	movzx	ebp, ax
	mov	edi, DWORD PTR [esp+28]
	shr	edi, 16
	imul	ecx, edi
	add	ecx, ebp
	movzx	ebx, bx
	mov	ebp, ecx
	sal	ebp, 16
	add	ebp, ebx
	shr	eax, 16
	imul	esi, edi
	add	eax, esi
	shr	ecx, 16
	add	ecx, eax
	imul	edx, DWORD PTR [esp+32]
	add	edx, ecx
	mov	eax, DWORD PTR [esp+28]
	imul	eax, DWORD PTR [esp+24]
	add	edx, eax
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
	and	ecx, 15
	mov	eax, 27030
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
	and	ecx, 15
	mov	eax, 27030
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
	lea	eax, [eax+edx]
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
	jmp	L1074
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1072:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1073
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L1074:
	test	al, 1
	je	L1072
	fmul	st, st(1)
	jmp	L1072
	.p2align 4,,10
	.p2align 3
L1073:
	fstp	st(1)
	test	ecx, ecx
	js	L1079
L1071:
	ret
	.p2align 4,,10
	.p2align 3
L1079:
	fdivr	DWORD PTR LC10
	jmp	L1071
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
	jmp	L1083
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1081:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1082
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L1083:
	test	al, 1
	je	L1081
	fmul	st, st(1)
	jmp	L1081
	.p2align 4,,10
	.p2align 3
L1082:
	fstp	st(1)
	test	ecx, ecx
	js	L1088
L1080:
	ret
	.p2align 4,,10
	.p2align 3
L1088:
	fdivr	DWORD PTR LC10
	jmp	L1080
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	xor	eax, eax
	cmp	edx, ecx
	jb	L1089
	mov	eax, 2
	cmp	ecx, edx
	jb	L1089
	xor	eax, eax
	cmp	ebx, esi
	jb	L1089
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
L1089:
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
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	xor	eax, eax
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
	sub	eax, 1
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
LC10:
	.long	1065353216
	.align 4
LC11:
	.long	1602224128
	.align 4
LC12:
	.long	1191182336
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
