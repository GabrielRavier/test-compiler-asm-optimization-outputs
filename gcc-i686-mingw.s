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
	mov	eax, 0
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
	mov	eax, 0
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
	mov	eax, 0
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
	mov	edx, 0
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
	test	esi, 1
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
	mov	eax, 0
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
	mov	eax, 0
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
	cmp	DWORD PTR [esp+4], 127
	setbe	al
	movzx	eax, al
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
	cmp	eax, 2
	setbe	dl
	movzx	edx, dl
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
	mov	ecx, 0
	cmp	edx, 1048579
	ja	L154
	not	eax
	test	ax, -2
	setne	cl
	movzx	ecx, cl
	jmp	L154
	.p2align 4,,10
	.p2align 3
L161:
	lea	eax, [eax+1]
	and	eax, 127
	cmp	eax, 32
	setg	cl
	movzx	ecx, cl
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
	cmp	eax, 5
	setbe	cl
	movzx	ecx, cl
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
	mov	esi, 0
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
	mov	esi, 0
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
	mov	edi, 0
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
	mov	esi, 0
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
	mov	eax, 0
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
LFB48:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+12]
	jmp	L341
	.p2align 4
	.p2align 4,,10
	.p2align 3
L337:
	add	ecx, 1
L341:
	movsx	eax, BYTE PTR [ecx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	L337
	cmp	dl, 32
	je	L337
	mov	esi, 0
	cmp	dl, 43
	je	L325
	cmp	dl, 45
	jne	L326
	mov	esi, 1
L325:
	add	ecx, 1
L326:
	movsx	edx, BYTE PTR [ecx]
	mov	ebx, edx
	sub	edx, 48
	mov	eax, 0
	cmp	edx, 9
	ja	L328
	.p2align 5
	.p2align 4
	.p2align 3
L327:
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
	jbe	L327
L328:
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
LFE48:
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
	jmp	L362
	.p2align 4
	.p2align 4,,10
	.p2align 3
L358:
	add	edx, 1
L362:
	movsx	eax, BYTE PTR [edx]
	mov	ecx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	L358
	cmp	cl, 32
	je	L358
	mov	ebp, 0
	cmp	cl, 43
	je	L346
	cmp	cl, 45
	jne	L347
	mov	ebp, 1
L346:
	add	edx, 1
L347:
	movsx	ecx, BYTE PTR [edx]
	mov	eax, ecx
	sub	ecx, 48
	mov	esi, 0
	mov	edi, 0
	cmp	ecx, 9
	ja	L349
	.p2align 6
	.p2align 4
	.p2align 3
L348:
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
	jbe	L348
L349:
	test	ebp, ebp
	jne	L342
	neg	esi
	adc	edi, 0
	neg	edi
L342:
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
	jmp	L375
	.p2align 4,,10
	.p2align 3
L368:
	mov	ebx, edi
L375:
	test	ebx, ebx
	je	L364
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
	js	L368
	jle	L363
	lea	eax, [ebp+0+esi]
	mov	DWORD PTR [esp+52], eax
	sub	ebx, 1
	sub	ebx, edi
	jmp	L375
	.p2align 4,,10
	.p2align 3
L364:
	mov	ebp, 0
L363:
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
	je	L377
	mov	edi, ebp
	jmp	L380
	.p2align 4,,10
	.p2align 3
L379:
	sar	edi
	je	L377
L380:
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
	je	L388
	jle	L379
	lea	esi, [ebp+0+ebx]
	sub	edi, 1
	jmp	L379
	.p2align 4,,10
	.p2align 3
L377:
	mov	edi, 0
	jmp	L376
	.p2align 4,,10
	.p2align 3
L388:
	mov	edi, ebp
L376:
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
LFB55:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	ret
	.cfi_endproc
LFE55:
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
	je	L402
	mov	ecx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L417:
	test	dx, dx
	je	L402
	add	eax, 2
	movzx	edx, WORD PTR [eax]
	cmp	dx, cx
	jne	L417
L402:
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
	je	L419
	test	cx, cx
	je	L419
	mov	DWORD PTR [esp], 2
	.p2align 6
	.p2align 4
	.p2align 3
L420:
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
	je	L419
	test	cx, cx
	jne	L420
L419:
	mov	eax, -1
	cmp	dx, cx
	jb	L418
	cmp	cx, dx
	setb	al
	movzx	eax, al
L418:
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
	mov	eax, 0
	.p2align 4
	.p2align 4
	.p2align 3
L436:
	movzx	edx, WORD PTR [ebx+eax]
	mov	WORD PTR [ecx+eax], dx
	add	eax, 2
	test	dx, dx
	jne	L436
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
	je	L440
	.p2align 4
	.p2align 4
	.p2align 3
L441:
	add	eax, 2
	cmp	WORD PTR [eax], 0
	jne	L441
L440:
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
	je	L450
	.p2align 4
	.p2align 3
L445:
	movzx	ebx, WORD PTR [ecx]
	movzx	esi, WORD PTR [edx]
	test	bx, bx
	setne	al
	cmp	bx, si
	sete	bl
	test	al, bl
	je	L446
	test	si, si
	je	L446
	add	ecx, 2
	add	edx, 2
	sub	ebp, 1
	jne	L445
L450:
	mov	eax, 0
L444:
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
L446:
	.cfi_restore_state
	test	ebp, ebp
	je	L450
	movzx	ecx, WORD PTR [ecx]
	movzx	edx, WORD PTR [edx]
	mov	eax, -1
	cmp	cx, dx
	jb	L444
	cmp	dx, cx
	setb	al
	movzx	eax, al
	jmp	L444
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
	je	L467
	.p2align 4
	.p2align 4
	.p2align 3
L462:
	cmp	WORD PTR [eax], cx
	je	L470
	add	eax, 2
	sub	edx, 1
	jne	L462
L467:
	mov	eax, 0
	ret
	.p2align 4,,10
	.p2align 3
L470:
	test	edx, edx
	je	L467
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
	je	L476
	.p2align 5
	.p2align 4
	.p2align 3
L472:
	movzx	ebx, WORD PTR [edx]
	cmp	WORD PTR [ecx], bx
	jne	L484
	add	ecx, 2
	add	edx, 2
	sub	eax, 1
	jne	L472
L476:
	mov	eax, 0
L471:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L484:
	.cfi_restore_state
	test	eax, eax
	je	L476
	movzx	ecx, WORD PTR [ecx]
	mov	eax, -1
	cmp	cx, bx
	jb	L471
	cmp	bx, cx
	setb	al
	movzx	eax, al
	jmp	L471
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
	je	L486
	add	eax, eax
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_memcpy
L486:
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
	je	L492
	lea	eax, [ecx-1]
	mov	ebx, edx
	sub	ebx, esi
	lea	edi, [ecx+ecx]
	cmp	ebx, edi
	jb	L493
	mov	edi, edx
	test	ecx, ecx
	je	L492
	.p2align 4
	.p2align 4
	.p2align 3
L494:
	movsw
	sub	eax, 1
	cmp	eax, -1
	jne	L494
	jmp	L492
	.p2align 4,,10
	.p2align 3
L493:
	test	ecx, ecx
	je	L492
	.p2align 4
	.p2align 4
	.p2align 3
L495:
	movzx	ecx, WORD PTR [esi+eax*2]
	mov	WORD PTR [edx+eax*2], cx
	sub	eax, 1
	cmp	eax, -1
	jne	L495
L492:
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
	je	L505
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
L506:
	add	edx, 2
	mov	WORD PTR [edx-2], cx
	sub	eax, 1
	cmp	eax, -1
	jne	L506
L505:
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
	jnb	L513
	test	eax, eax
	je	L512
	.p2align 4
	.p2align 4
	.p2align 3
L515:
	movzx	edx, BYTE PTR [esi-1+eax]
	mov	BYTE PTR [edi-1+eax], dl
	sub	eax, 1
	jne	L515
L512:
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
L513:
	.cfi_restore_state
	je	L512
	test	eax, eax
	je	L512
	add	eax, esi
	.p2align 3
	.p2align 4
	.p2align 3
L516:
	movsb
	cmp	eax, esi
	jne	L516
	jmp	L512
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
	je	L528
	mov	edi, esi
	xor	esi, esi
L528:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L529
	mov	eax, edx
	xor	edx, edx
L529:
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
	je	L532
	mov	esi, edi
	xor	edi, edi
L532:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L533
	mov	edx, eax
	xor	eax, eax
L533:
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
LFB74:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
LFE74:
	.p2align 4
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
	mov	ecx, 0
	.p2align 4
	.p2align 4
	.p2align 3
L548:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	jne	L550
	cmp	ecx, 32
	jne	L548
	mov	eax, 0
	ret
	.p2align 4,,10
	.p2align 3
L550:
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
	mov	edx, 0
	test	eax, eax
	je	L551
	mov	edx, eax
	and	edx, 1
	jne	L551
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
L553:
	sar	eax
	add	edx, 1
	test	al, 1
	je	L553
L551:
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
	ja	L561
	fld	DWORD PTR LC3
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L558
	.p2align 4,,10
	.p2align 3
L561:
	fstp	st(0)
L558:
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
	ja	L565
	fld	QWORD PTR LC5
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L562
	.p2align 4,,10
	.p2align 3
L565:
	fstp	st(0)
L562:
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
	ja	L569
	fld	TBYTE PTR LC7
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L566
	.p2align 4,,10
	.p2align 3
L569:
	fstp	st(0)
L566:
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
	jp	L572
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L578
	jne	L578
	jmp	L572
	.p2align 4,,10
	.p2align 3
L585:
	fstp	st(0)
L572:
	ret
	.p2align 4,,10
	.p2align 3
L578:
	fld	DWORD PTR LC8
	test	eax, eax
	jns	L576
	fstp	st(0)
	fld	DWORD PTR LC9
	jmp	L576
	.p2align 5
	.p2align 4,,10
	.p2align 3
L575:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L585
	fmul	st, st(0)
L576:
	test	al, 1
	je	L575
	fmul	st(1), st
	jmp	L575
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
	jp	L587
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L593
	jne	L593
	jmp	L587
	.p2align 4,,10
	.p2align 3
L601:
	fstp	st(0)
L587:
	ret
	.p2align 4,,10
	.p2align 3
L593:
	test	eax, eax
	js	L600
	fld	DWORD PTR LC8
	jmp	L591
	.p2align 4,,10
	.p2align 3
L600:
	fld	DWORD PTR LC9
	jmp	L591
	.p2align 5
	.p2align 4,,10
	.p2align 3
L590:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L601
	fmul	st, st(0)
L591:
	test	al, 1
	je	L590
	fmul	st(1), st
	jmp	L590
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
	jp	L603
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	L609
	jne	L609
	jmp	L603
	.p2align 4,,10
	.p2align 3
L617:
	fstp	st(0)
L603:
	ret
	.p2align 4,,10
	.p2align 3
L609:
	test	eax, eax
	js	L616
	fld	DWORD PTR LC8
	jmp	L607
	.p2align 4,,10
	.p2align 3
L616:
	fld	DWORD PTR LC9
	jmp	L607
	.p2align 5
	.p2align 4,,10
	.p2align 3
L606:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L617
	fmul	st, st(0)
L607:
	test	al, 1
	je	L606
	fmul	st(1), st
	jmp	L606
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
	je	L619
	add	ebx, eax
	mov	edx, esi
	.p2align 5
	.p2align 4
	.p2align 3
L620:
	add	eax, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [eax-1]
	xor	BYTE PTR [edx-1], cl
	cmp	ebx, eax
	jne	L620
L619:
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
	je	L627
	.p2align 3
	.p2align 4
	.p2align 3
L628:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	L628
L627:
	test	edx, edx
	je	L635
	.p2align 5
	.p2align 4
	.p2align 3
L629:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	je	L640
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	jne	L629
	jmp	L635
	.p2align 4,,10
	.p2align 3
L640:
	test	edx, edx
	jne	L632
L635:
	mov	BYTE PTR [eax], 0
L632:
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
	mov	eax, 0
	test	edx, edx
	je	L648
L642:
	cmp	BYTE PTR [ecx+eax], 0
	jne	L644
L641:
	ret
	.p2align 4,,10
	.p2align 3
L648:
	ret
	.p2align 4,,10
	.p2align 3
L644:
	add	eax, 1
	cmp	edx, eax
	jne	L642
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
	je	L654
L650:
	mov	eax, esi
	.p2align 4
	.p2align 4
	.p2align 3
L653:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	je	L657
	add	eax, 1
	cmp	dl, cl
	jne	L653
L651:
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
L657:
	.cfi_restore_state
	add	ebx, 1
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	jne	L650
L654:
	mov	ebx, 0
	jmp	L651
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
	mov	ecx, 0
	.p2align 4
	.p2align 4
	.p2align 3
L660:
	movsx	ebx, BYTE PTR [eax]
	cmp	ebx, esi
	cmove	ecx, eax
	add	eax, 1
	test	bl, bl
	jne	L660
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
	je	L665
	.p2align 3
	.p2align 4
	.p2align 3
L666:
	add	edx, 1
	cmp	BYTE PTR [edx], 0
	jne	L666
L665:
	sub	edx, ebp
	lea	edi, [ebp-1+edx]
	jne	L674
	jmp	L667
	.p2align 4,,10
	.p2align 3
L673:
	test	eax, eax
	je	L667
	movzx	ecx, BYTE PTR [eax]
	mov	edx, ebp
	mov	esi, eax
	test	cl, cl
	je	L670
	mov	DWORD PTR [esp+20], eax
	mov	DWORD PTR [esp+24], ebp
	mov	ebp, ebx
	.p2align 4
	.p2align 3
L669:
	movzx	eax, BYTE PTR [edx]
	test	al, al
	setne	bl
	cmp	al, cl
	sete	al
	test	bl, al
	je	L692
	cmp	edx, edi
	je	L692
	add	esi, 1
	add	edx, 1
	movzx	ecx, BYTE PTR [esi]
	test	cl, cl
	jne	L669
L692:
	mov	ebx, ebp
	mov	eax, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
L670:
	cmp	BYTE PTR [edx], cl
	je	L667
	add	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
L674:
	movzx	edx, BYTE PTR [eax]
	cmp	dl, bl
	je	L673
	add	eax, 1
	test	dl, dl
	jne	L674
	mov	eax, 0
L667:
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
	ja	L704
	fstp	st(0)
L696:
	fldz
	fxch	st(2)
	fcomi	st, st(2)
	jbe	L705
	fxch	st(2)
	fcomip	st, st(1)
	fstp	st(0)
	ja	L698
	jmp	L699
	.p2align 4,,10
	.p2align 3
L705:
	fstp	st(1)
	fstp	st(1)
L699:
	ret
	.p2align 4,,10
	.p2align 3
L704:
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jbe	L696
	fstp	st(0)
L698:
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
	cmp	DWORD PTR [esp+32], 0
	je	L706
	cmp	esi, DWORD PTR [esp+32]
	jb	L716
	sub	esi, DWORD PTR [esp+32]
	add	esi, ebx
	jc	L716
	mov	eax, DWORD PTR [esp+28]
	movzx	ebp, BYTE PTR [eax]
	jmp	L713
	.p2align 4,,10
	.p2align 3
L731:
	mov	ebx, DWORD PTR [esp+20]
	test	eax, eax
	je	L706
	movzx	eax, BYTE PTR [ecx]
	cmp	BYTE PTR [edx], al
	je	L706
	.p2align 5
	.p2align 4
	.p2align 3
L708:
	cmp	esi, ebx
	jb	L716
L713:
	movzx	eax, BYTE PTR [ebx]
	mov	edi, ebx
	add	ebx, 1
	mov	ecx, ebp
	cmp	al, cl
	jne	L708
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+32]
	sub	eax, 1
	je	L706
	mov	ecx, ebx
	mov	DWORD PTR [esp+20], ebx
	.p2align 5
	.p2align 4
	.p2align 3
L709:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	jne	L731
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	jne	L709
L706:
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
L716:
	.cfi_restore_state
	mov	edi, 0
	jmp	L706
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
	je	L733
	mov	DWORD PTR [esp+8], esi
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	_memmove
L733:
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
	mov	edx, 0
	fcomip	st, st(1)
	ja	L766
L739:
	mov	eax, 0
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jb	L764
	.p2align 5
	.p2align 4
	.p2align 3
L743:
	add	eax, 1
	fmul	DWORD PTR LC9
	fld1
	fxch	st(1)
	fcomi	st, st(1)
	fstp	st(1)
	jnb	L743
L744:
	mov	ecx, DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	test	edx, edx
	je	L746
	fchs
L746:
	ret
	.p2align 4,,10
	.p2align 3
L766:
	fchs
	mov	edx, 1
	jmp	L739
	.p2align 4,,10
	.p2align 3
L764:
	fldz
	fucomip	st, st(1)
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	test	al, al
	mov	eax, 0
	jne	L765
	jmp	L744
	.p2align 4
	.p2align 4,,10
	.p2align 3
L745:
	sub	eax, 1
	fadd	st, st(0)
L765:
	fld	DWORD PTR LC9
	fcomip	st, st(1)
	ja	L745
	jmp	L744
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
	je	L770
	mov	edx, ebx
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	.p2align 6
	.p2align 4
	.p2align 3
L769:
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
	jne	L769
L767:
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
L770:
	.cfi_restore_state
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp+4], 0
	jmp	L767
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
	jnb	L783
	.p2align 4
	.p2align 3
L774:
	test	eax, eax
	js	L775
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L775
	test	edx, edx
	jne	L774
L775:
	mov	ebx, 0
	test	edx, edx
	je	L778
L783:
	mov	ebx, 0
	jmp	L777
	.p2align 4
	.p2align 4,,10
	.p2align 3
L780:
	shr	eax
	shr	edx
	je	L778
L777:
	cmp	ecx, eax
	jb	L780
	sub	ecx, eax
	or	ebx, edx
	jmp	L780
	.p2align 4,,10
	.p2align 3
L778:
	cmp	DWORD PTR [esp+16], 0
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
	je	L792
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
L792:
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
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	xor	eax, ecx
	xor	edx, ebx
	mov	esi, eax
	mov	edi, edx
	mov	eax, ecx
	xor	eax, DWORD PTR [esp+20]
	mov	edx, ebx
	xor	edx, DWORD PTR [esp+24]
	or	eax, edx
	mov	ebp, 63
	je	L797
	test	edi, edi
	je	L799
	bsr	esi, edi
	xor	esi, 31
L800:
	lea	ebp, [esi-1]
L797:
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
L799:
	.cfi_restore_state
	bsr	esi, esi
	xor	esi, 31
	add	esi, 32
	jmp	L800
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
	mov	ebx, 0
	test	edx, edx
	je	L804
	.p2align 5
	.p2align 4
	.p2align 3
L806:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L806
L804:
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
	jb	L811
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jb	L811
	lea	eax, [edi-1]
	test	edi, edi
	je	L810
	.p2align 4
	.p2align 4
	.p2align 3
L812:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	L812
	jmp	L810
	.p2align 4,,10
	.p2align 3
L811:
	test	esi, esi
	je	L814
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*8]
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp+40], edi
	.p2align 5
	.p2align 4
	.p2align 3
L815:
	mov	edi, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx], edi
	mov	DWORD PTR [ecx+4], ebp
	add	eax, 8
	add	ecx, 8
	cmp	eax, esi
	jne	L815
	mov	ebp, DWORD PTR [esp+4]
	mov	edi, DWORD PTR [esp+40]
L814:
	cmp	ebp, edi
	jnb	L810
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L816:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	L816
L810:
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
	jb	L827
	lea	eax, [ebx+edi]
	cmp	eax, esi
	jb	L827
	lea	eax, [edi-1]
	test	edi, edi
	je	L826
	.p2align 4
	.p2align 4
	.p2align 3
L828:
	movzx	edx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	cmp	eax, -1
	jne	L828
	jmp	L826
	.p2align 4,,10
	.p2align 3
L827:
	test	ecx, ecx
	je	L830
	mov	eax, ebx
	mov	edx, esi
	lea	ebp, [ebx+ecx*2]
	.p2align 4
	.p2align 4
	.p2align 3
L831:
	movzx	ecx, WORD PTR [eax]
	mov	WORD PTR [edx], cx
	add	eax, 2
	add	edx, 2
	cmp	eax, ebp
	jne	L831
L830:
	test	edi, 1
	je	L826
	movzx	eax, BYTE PTR [ebx-1+edi]
	mov	BYTE PTR [esi-1+edi], al
L826:
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
	jb	L843
	lea	eax, [ebx+edi]
	cmp	eax, edx
	jb	L843
	lea	eax, [edi-1]
	test	edi, edi
	je	L842
	.p2align 4
	.p2align 4
	.p2align 3
L844:
	movzx	ecx, BYTE PTR [ebx+eax]
	mov	BYTE PTR [edx+eax], cl
	sub	eax, 1
	cmp	eax, -1
	jne	L844
	jmp	L842
	.p2align 4,,10
	.p2align 3
L843:
	test	esi, esi
	je	L846
	mov	eax, ebx
	mov	ecx, edx
	lea	esi, [ebx+esi*4]
	mov	DWORD PTR [esp+20], edx
	.p2align 4
	.p2align 4
	.p2align 3
L847:
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	add	eax, 4
	add	ecx, 4
	cmp	eax, esi
	jne	L847
	mov	edx, DWORD PTR [esp+20]
L846:
	cmp	ebp, edi
	jnb	L842
	lea	eax, [ebx+ebp]
	add	edx, ebp
	add	ebx, edi
	.p2align 4
	.p2align 4
	.p2align 3
L848:
	movzx	ecx, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	add	eax, 1
	add	edx, 1
	cmp	eax, ebx
	jne	L848
L842:
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
	mov	edx, 0
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
	mov	edx, 0
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
	cmp	DWORD PTR [esp+20], 0
	js	L866
L864:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L866:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L864
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
	cmp	DWORD PTR [esp+20], 0
	js	L870
L868:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L870:
	.cfi_restore_state
	fadd	DWORD PTR LC11
	jmp	L868
	.cfi_endproc
LFE114:
	.p2align 4
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
	.p2align 4
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
	.p2align 4
	.p2align 3
L874:
	mov	edx, ecx
	sub	edx, eax
	bt	ebx, edx
	jc	L872
	add	eax, 1
	cmp	eax, 16
	jne	L874
L872:
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
	mov	eax, 0
	movzx	edx, WORD PTR [esp+4]
	.p2align 4
	.p2align 4
	.p2align 3
L879:
	bt	edx, eax
	jc	L877
	add	eax, 1
	cmp	eax, 16
	jne	L879
L877:
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
	jnb	L889
	fstp	st(1)
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
L887:
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L889:
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
	jmp	L887
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
	mov	eax, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
L891:
	mov	edx, ebx
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	L891
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
	mov	edx, 0
	mov	ecx, 0
	movzx	ebx, WORD PTR [esp+8]
	.p2align 5
	.p2align 4
	.p2align 3
L895:
	mov	eax, ebx
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	L895
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
LFB121:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	ebx, 0
	test	edx, edx
	je	L898
	.p2align 5
	.p2align 4
	.p2align 3
L900:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L900
L898:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE121:
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
	mov	ebx, 0
	test	ecx, ecx
	je	L904
	test	edx, edx
	je	L908
	.p2align 5
	.p2align 4
	.p2align 3
L906:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ebx, eax
	add	ecx, ecx
	shr	edx
	jne	L906
L904:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L908:
	.cfi_restore_state
	mov	ebx, 0
	jmp	L904
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	___udivmodsi4
	.def	___udivmodsi4;	.scl	2;	.type	32;	.endef
___udivmodsi4:
LFB123:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	L922
	.p2align 4
	.p2align 3
L913:
	test	eax, eax
	js	L914
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L914
	test	edx, edx
	jne	L913
L914:
	mov	ebx, 0
	test	edx, edx
	je	L917
L922:
	mov	ebx, 0
	jmp	L916
	.p2align 4
	.p2align 4,,10
	.p2align 3
L919:
	shr	eax
	shr	edx
	je	L917
L916:
	cmp	ecx, eax
	jb	L919
	sub	ecx, eax
	or	ebx, edx
	jmp	L919
	.p2align 4,,10
	.p2align 3
L917:
	cmp	DWORD PTR [esp+16], 0
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE123:
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
	ja	L934
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L931
	.p2align 4,,10
	.p2align 3
L934:
	fstp	st(0)
	fstp	st(0)
L931:
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
	ja	L938
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	L935
	.p2align 4,,10
	.p2align 3
L938:
	fstp	st(0)
	fstp	st(0)
L935:
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
	mov	edi, 0
	test	edx, edx
	js	L953
L942:
	test	edx, edx
	je	L947
	mov	ebx, 1
	mov	esi, 0
	.p2align 6
	.p2align 4
	.p2align 3
L944:
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
	jne	L944
L943:
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
L953:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	L942
	.p2align 4,,10
	.p2align 3
L947:
	mov	esi, 0
	jmp	L943
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
	mov	esi, 0
	test	ebx, ebx
	js	L977
L955:
	test	eax, eax
	js	L978
L956:
	mov	ecx, ebx
	mov	edx, 1
	cmp	eax, ebx
	jnb	L974
	.p2align 4
	.p2align 4
	.p2align 3
L958:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jnb	L957
	test	edx, edx
	jne	L958
L957:
	test	edx, edx
	je	L966
L974:
	mov	ebx, 0
	jmp	L962
	.p2align 4,,10
	.p2align 3
L977:
	neg	ebx
	mov	esi, 1
	jmp	L955
	.p2align 4,,10
	.p2align 3
L978:
	neg	eax
	xor	esi, 1
	jmp	L956
	.p2align 4,,10
	.p2align 3
L979:
	sub	ecx, eax
	or	ebx, edx
L961:
	shr	eax
	shr	edx
	je	L960
L962:
	cmp	ecx, eax
	jb	L961
	jmp	L979
	.p2align 4,,10
	.p2align 3
L966:
	mov	ebx, 0
L960:
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
	mov	esi, 0
	test	ebx, ebx
	js	L1004
L981:
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	mov	ecx, ebx
	mov	edx, 1
	cmp	eax, ebx
	jnb	L997
	.p2align 4
	.p2align 4
	.p2align 3
L983:
	add	eax, eax
	add	edx, edx
	cmp	eax, ebx
	jnb	L982
	test	edx, edx
	jne	L983
L982:
	test	edx, edx
	je	L985
	.p2align 4
	.p2align 4
	.p2align 3
L997:
	mov	ebx, ecx
	sub	ebx, eax
	cmp	ecx, eax
	cmovnb	ecx, ebx
	shr	eax
	shr	edx
	jne	L997
L985:
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
L1004:
	.cfi_restore_state
	neg	ebx
	mov	esi, 1
	jmp	L981
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
	jnb	L1015
	.p2align 4
	.p2align 3
L1006:
	test	ax, ax
	js	L1007
	add	eax, eax
	add	edx, edx
	cmp	ax, cx
	jnb	L1007
	test	dx, dx
	jne	L1006
L1007:
	mov	ebx, 0
	test	dx, dx
	je	L1010
L1015:
	mov	ebx, 0
	jmp	L1009
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1012:
	shr	ax
	shr	dx
	je	L1010
L1009:
	cmp	cx, ax
	jb	L1012
	sub	ecx, eax
	or	ebx, edx
	jmp	L1012
	.p2align 4,,10
	.p2align 3
L1010:
	cmp	DWORD PTR [esp+20], 0
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
LFB132:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	mov	edx, 1
	cmp	eax, ecx
	jnb	L1034
	.p2align 4
	.p2align 3
L1025:
	test	eax, eax
	js	L1026
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	L1026
	test	edx, edx
	jne	L1025
L1026:
	mov	ebx, 0
	test	edx, edx
	je	L1029
L1034:
	mov	ebx, 0
	jmp	L1028
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1031:
	shr	eax
	shr	edx
	je	L1029
L1028:
	cmp	ecx, eax
	jb	L1031
	sub	ecx, eax
	or	ebx, edx
	jmp	L1031
	.p2align 4,,10
	.p2align 3
L1029:
	cmp	DWORD PTR [esp+16], 0
	cmovne	ebx, ecx
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE132:
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
	je	L1044
	lea	ecx, [ebx-32]
	sal	edx, cl
	mov	eax, 0
L1046:
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
L1044:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	L1047
	mov	ecx, ebx
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	edx, cl
	mov	ecx, ebx
	sal	esi, cl
	or	edx, esi
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L1047:
	mov	edx, esi
	jmp	L1046
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
	je	L1050
	mov	edx, esi
	sar	edx, 31
	lea	ecx, [ebx-32]
	mov	eax, esi
	sar	eax, cl
L1052:
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
L1050:
	.cfi_restore_state
	test	ebx, ebx
	je	L1053
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
	jmp	L1052
	.p2align 4,,10
	.p2align 3
L1053:
	mov	eax, edi
	mov	edx, esi
	jmp	L1052
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
	cmp	ebx, 65535
	setbe	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	ebx, cl
	test	bh, -1
	sete	dl
	movzx	edx, dl
	sal	edx, 3
	mov	ecx, 8
	sub	ecx, edx
	shr	ebx, cl
	add	edx, eax
	test	bl, -16
	sete	al
	movzx	eax, al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	ebx, cl
	lea	esi, [eax+edx]
	test	bl, 12
	sete	dl
	movzx	edx, dl
	add	edx, edx
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, edx
	shr	ebx, cl
	sub	eax, ebx
	test	bl, 2
	mov	ecx, 0
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
	mov	eax, 0
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	L1059
	mov	eax, 2
	jg	L1059
	mov	eax, 0
	cmp	edx, ecx
	jb	L1059
	cmp	ecx, edx
	setb	al
	movzx	eax, al
	add	eax, 1
L1059:
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
	mov	eax, 0
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	L1067
	mov	eax, 2
	jg	L1067
	mov	eax, 0
	cmp	edx, ecx
	jb	L1067
	cmp	ecx, edx
	setb	al
	movzx	eax, al
	add	eax, 1
L1067:
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
	lea	ebx, [ecx+edx]
	test	al, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	eax, cl
	lea	edx, [ecx+ebx]
	test	al, 3
	sete	cl
	movzx	ecx, cl
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
	je	L1076
	lea	ecx, [ebx-32]
	mov	eax, esi
	shr	eax, cl
	mov	edx, 0
L1078:
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
L1076:
	.cfi_restore_state
	test	ebx, ebx
	je	L1079
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
	jmp	L1078
	.p2align 4,,10
	.p2align 3
L1079:
	mov	eax, edi
	mov	edx, esi
	jmp	L1078
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
	mov	edx, DWORD PTR [esp+8]
	neg	eax
	adc	edx, 0
	neg	edx
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
	jmp	L1094
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1092:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1093
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L1094:
	test	al, 1
	je	L1092
	fmul	st, st(1)
	jmp	L1092
	.p2align 4,,10
	.p2align 3
L1093:
	fstp	st(1)
	test	ecx, ecx
	js	L1099
L1091:
	ret
	.p2align 4,,10
	.p2align 3
L1099:
	fdivr	DWORD PTR LC10
	jmp	L1091
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
	jmp	L1103
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1101:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	L1102
	fxch	st(1)
	fmul	st, st(0)
	fxch	st(1)
L1103:
	test	al, 1
	je	L1101
	fmul	st, st(1)
	jmp	L1101
	.p2align 4,,10
	.p2align 3
L1102:
	fstp	st(1)
	test	ecx, ecx
	js	L1108
L1100:
	ret
	.p2align 4,,10
	.p2align 3
L1108:
	fdivr	DWORD PTR LC10
	jmp	L1100
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
	mov	eax, 0
	cmp	edx, ecx
	jb	L1109
	mov	eax, 2
	cmp	ecx, edx
	jb	L1109
	mov	eax, 0
	cmp	ebx, esi
	jb	L1109
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
L1109:
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
	mov	eax, 0
	cmp	edx, ecx
	jb	L1117
	mov	eax, 2
	cmp	ecx, edx
	jb	L1117
	mov	eax, 0
	cmp	ebx, esi
	jb	L1117
	cmp	esi, ebx
	setb	al
	movzx	eax, al
	add	eax, 1
L1117:
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
