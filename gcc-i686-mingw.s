	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	_memmove
	.def	_memmove;	.scl	2;	.type	32;	.endef
_memmove:
LFB2:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	L2
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	jmp	L3
L4:
	sub	DWORD PTR [esp+4], 1
	sub	DWORD PTR [esp+12], 1
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L3:
	cmp	DWORD PTR [esp+28], 0
	jne	L4
	jmp	L5
L2:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	je	L5
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	jmp	L6
L7:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+8]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+8], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L6:
	cmp	DWORD PTR [esp+28], 0
	jne	L7
L5:
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.globl	_memccpy
	.def	_memccpy;	.scl	2;	.type	32;	.endef
_memccpy:
LFB3:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
	jmp	L11
L13:
	sub	DWORD PTR [esp+32], 1
	add	DWORD PTR [esp+24], 1
	add	DWORD PTR [esp+20], 1
L11:
	cmp	DWORD PTR [esp+32], 0
	je	L12
	mov	eax, DWORD PTR [esp+24]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+20]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+12], eax
	jne	L13
L12:
	cmp	DWORD PTR [esp+32], 0
	je	L14
	mov	eax, DWORD PTR [esp+20]
	add	eax, 1
	jmp	L15
L14:
	mov	eax, 0
L15:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.globl	_memchr
	.def	_memchr;	.scl	2;	.type	32;	.endef
_memchr:
LFB4:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
	jmp	L18
L20:
	add	DWORD PTR [esp+20], 1
	sub	DWORD PTR [esp+28], 1
L18:
	cmp	DWORD PTR [esp+28], 0
	je	L19
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	cmp	DWORD PTR [esp+12], eax
	jne	L20
L19:
	cmp	DWORD PTR [esp+28], 0
	je	L21
	mov	eax, DWORD PTR [esp+20]
	jmp	L23
L21:
	mov	eax, 0
L23:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.globl	_memcmp
	.def	_memcmp;	.scl	2;	.type	32;	.endef
_memcmp:
LFB5:
	.cfi_startproc
	jmp	L26
L28:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 1
	add	DWORD PTR [esp+8], 1
L26:
	cmp	DWORD PTR [esp+12], 0
	je	L27
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	L28
L27:
	cmp	DWORD PTR [esp+12], 0
	je	L29
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, ecx
	sub	eax, edx
	ret
L29:
	mov	eax, 0
	ret
	.cfi_endproc
LFE5:
	.globl	_memcpy
	.def	_memcpy;	.scl	2;	.type	32;	.endef
_memcpy:
LFB6:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	L33
L34:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+12], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L33:
	cmp	DWORD PTR [esp+28], 0
	jne	L34
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE6:
	.globl	_memrchr
	.def	_memrchr;	.scl	2;	.type	32;	.endef
_memrchr:
LFB7:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
	jmp	L38
L40:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	cmp	DWORD PTR [esp+12], eax
	jne	L38
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	jmp	L39
L38:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L40
	mov	eax, 0
L39:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.globl	_memset
	.def	_memset;	.scl	2;	.type	32;	.endef
_memset:
LFB8:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	L43
L44:
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+24]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
	add	DWORD PTR [esp+12], 1
L43:
	cmp	DWORD PTR [esp+28], 0
	jne	L44
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.globl	_stpcpy
	.def	_stpcpy;	.scl	2;	.type	32;	.endef
_stpcpy:
LFB9:
	.cfi_startproc
	jmp	L48
L49:
	add	DWORD PTR [esp+8], 1
	add	DWORD PTR [esp+4], 1
L48:
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L49
	mov	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
LFE9:
	.globl	_strchrnul
	.def	_strchrnul;	.scl	2;	.type	32;	.endef
_strchrnul:
LFB10:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
	jmp	L52
L54:
	add	DWORD PTR [esp+20], 1
L52:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L53
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	cmp	DWORD PTR [esp+12], eax
	jne	L54
L53:
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE10:
	.globl	_strchr
	.def	_strchr;	.scl	2;	.type	32;	.endef
_strchr:
LFB11:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
L60:
	movsx	edx, BYTE PTR [eax]
	cmp	DWORD PTR [esp+8], edx
	je	L59
	mov	edx, eax
	lea	eax, [edx+1]
	cmp	BYTE PTR [edx], 0
	jne	L60
	mov	eax, 0
	ret
L59:
	ret
	.cfi_endproc
LFE11:
	.globl	_strcmp
	.def	_strcmp;	.scl	2;	.type	32;	.endef
_strcmp:
LFB12:
	.cfi_startproc
	jmp	L63
L65:
	add	DWORD PTR [esp+4], 1
	add	DWORD PTR [esp+8], 1
L63:
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L64
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L65
L64:
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, ecx
	sub	eax, edx
	ret
	.cfi_endproc
LFE12:
	.globl	_strlen
	.def	_strlen;	.scl	2;	.type	32;	.endef
_strlen:
LFB13:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	L68
L69:
	add	DWORD PTR [esp+12], 1
L68:
	mov	eax, DWORD PTR [esp+12]
	cmp	BYTE PTR [eax], 0
	jne	L69
	mov	eax, DWORD PTR [esp+12]
	sub	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE13:
	.globl	_strncmp
	.def	_strncmp;	.scl	2;	.type	32;	.endef
_strncmp:
LFB14:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+12], edx
	test	eax, eax
	jne	L75
	mov	eax, 0
	jmp	L74
L77:
	add	DWORD PTR [esp+20], 1
	add	DWORD PTR [esp+24], 1
	sub	DWORD PTR [esp+12], 1
L75:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L76
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L76
	cmp	DWORD PTR [esp+12], 0
	je	L76
	mov	eax, DWORD PTR [esp+20]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	L77
L76:
	mov	eax, DWORD PTR [esp+20]
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+24]
	movzx	edx, BYTE PTR [eax]
	mov	eax, ecx
	sub	eax, edx
L74:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE14:
	.globl	_swab
	.def	_swab;	.scl	2;	.type	32;	.endef
_swab:
LFB15:
	.cfi_startproc
	jmp	L80
L81:
	mov	eax, DWORD PTR [esp+4]
	add	eax, 1
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+8], 2
	add	DWORD PTR [esp+4], 2
	sub	DWORD PTR [esp+12], 2
L80:
	cmp	DWORD PTR [esp+12], 1
	jg	L81
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
	cmp	DWORD PTR [esp+4], 32
	je	L87
	cmp	DWORD PTR [esp+4], 9
	jne	L88
L87:
	mov	eax, 1
	ret
L88:
	mov	eax, 0
	ret
	.cfi_endproc
LFE18:
	.globl	_iscntrl
	.def	_iscntrl;	.scl	2;	.type	32;	.endef
_iscntrl:
LFB19:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 31
	jbe	L92
	cmp	DWORD PTR [esp+4], 127
	jne	L93
L92:
	mov	eax, 1
	ret
L93:
	mov	eax, 0
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
	cmp	DWORD PTR [esp+4], 32
	je	L105
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 9
	cmp	eax, 4
	ja	L106
L105:
	mov	eax, 1
	ret
L106:
	mov	eax, 0
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
	sub	esp, 4
	.cfi_def_cfa_offset 8
	mov	eax, DWORD PTR [esp+8]
	mov	WORD PTR [esp], ax
	cmp	WORD PTR [esp], 31
	jbe	L112
	movzx	eax, WORD PTR [esp]
	sub	eax, 127
	cmp	eax, 32
	jbe	L112
	movzx	eax, WORD PTR [esp]
	sub	eax, 8232
	cmp	eax, 1
	jbe	L112
	movzx	eax, WORD PTR [esp]
	sub	eax, 65529
	cmp	eax, 2
	ja	L113
L112:
	mov	eax, 1
	jmp	L115
L113:
	mov	eax, 0
L115:
	add	esp, 4
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE26:
	.globl	_iswdigit
	.def	_iswdigit;	.scl	2;	.type	32;	.endef
_iswdigit:
LFB27:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	mov	eax, DWORD PTR [esp+8]
	mov	WORD PTR [esp], ax
	movzx	eax, WORD PTR [esp]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	add	esp, 4
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.globl	_iswprint
	.def	_iswprint;	.scl	2;	.type	32;	.endef
_iswprint:
LFB28:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	mov	eax, DWORD PTR [esp+8]
	mov	WORD PTR [esp], ax
	cmp	WORD PTR [esp], 254
	ja	L121
	movzx	eax, WORD PTR [esp]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
	jmp	L122
L121:
	cmp	WORD PTR [esp], 8231
	jbe	L123
	movzx	eax, WORD PTR [esp]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	L123
	movzx	eax, WORD PTR [esp]
	sub	eax, 57344
	cmp	eax, 8184
	ja	L124
L123:
	mov	eax, 1
	jmp	L122
L124:
	movzx	eax, WORD PTR [esp]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	L125
	movzx	eax, WORD PTR [esp]
	and	eax, 65534
	cmp	eax, 65534
	jne	L126
L125:
	mov	eax, 0
	jmp	L122
L126:
	mov	eax, 1
L122:
	add	esp, 4
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE28:
	.globl	_iswxdigit
	.def	_iswxdigit;	.scl	2;	.type	32;	.endef
_iswxdigit:
LFB29:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	mov	eax, DWORD PTR [esp+8]
	mov	WORD PTR [esp], ax
	movzx	eax, WORD PTR [esp]
	sub	eax, 48
	cmp	eax, 9
	jbe	L129
	movzx	eax, WORD PTR [esp]
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	ja	L130
L129:
	mov	eax, 1
	jmp	L132
L130:
	mov	eax, 0
L132:
	add	esp, 4
	.cfi_def_cfa_offset 4
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
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L137
	fld	QWORD PTR [esp+8]
	jmp	L138
L137:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L139
	fld	QWORD PTR [esp]
	jmp	L138
L139:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L144
	fld	QWORD PTR [esp+8]
	fsub	QWORD PTR [esp]
	jmp	L138
L144:
	fldz
L138:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE31:
	.globl	_fdimf
	.def	_fdimf;	.scl	2;	.type	32;	.endef
_fdimf:
LFB32:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L147
	fld	DWORD PTR [esp+4]
	ret
L147:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L149
	fld	DWORD PTR [esp+8]
	ret
L149:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L154
	fld	DWORD PTR [esp+4]
	fsub	DWORD PTR [esp+8]
	ret
L154:
	fldz
	ret
	.cfi_endproc
LFE32:
	.globl	_fmax
	.def	_fmax;	.scl	2;	.type	32;	.endef
_fmax:
LFB33:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L156
	fld	QWORD PTR [esp]
	jmp	L157
L156:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L158
	fld	QWORD PTR [esp+8]
	jmp	L157
L158:
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [esp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L159
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L160
	fld	QWORD PTR [esp]
	jmp	L157
L160:
	fld	QWORD PTR [esp+8]
	jmp	L157
L159:
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L166
	fld	QWORD PTR [esp]
	jmp	L157
L166:
	fld	QWORD PTR [esp+8]
L157:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE33:
	.globl	_fmaxf
	.def	_fmaxf;	.scl	2;	.type	32;	.endef
_fmaxf:
LFB34:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L169
	mov	eax, DWORD PTR [esp+12]
	jmp	L170
L169:
	fld	DWORD PTR [esp+12]
	fld	DWORD PTR [esp+12]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L171
	mov	eax, DWORD PTR [esp+8]
	jmp	L170
L171:
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [esp+12]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L172
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L173
	mov	eax, DWORD PTR [esp+12]
	jmp	L170
L173:
	mov	eax, DWORD PTR [esp+8]
	jmp	L170
L172:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+12]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L179
	mov	eax, DWORD PTR [esp+12]
	jmp	L170
L179:
	mov	eax, DWORD PTR [esp+8]
L170:
	mov	DWORD PTR [esp], eax
	fld	DWORD PTR [esp]
	add	esp, 4
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE34:
	.globl	_fmaxl
	.def	_fmaxl;	.scl	2;	.type	32;	.endef
_fmaxl:
LFB35:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L182
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	jmp	L183
L182:
	fld	TBYTE PTR [esp+28]
	fld	TBYTE PTR [esp+28]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L184
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	jmp	L183
L184:
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [esp+28]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L185
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L186
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	jmp	L183
L186:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	jmp	L183
L185:
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+28]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L192
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	jmp	L183
L192:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
L183:
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp+8], ecx
	fld	TBYTE PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE35:
	.globl	_fmin
	.def	_fmin;	.scl	2;	.type	32;	.endef
_fmin:
LFB36:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L195
	fld	QWORD PTR [esp]
	jmp	L196
L195:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L197
	fld	QWORD PTR [esp+8]
	jmp	L196
L197:
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [esp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L198
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L199
	fld	QWORD PTR [esp+8]
	jmp	L196
L199:
	fld	QWORD PTR [esp]
	jmp	L196
L198:
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L205
	fld	QWORD PTR [esp+8]
	jmp	L196
L205:
	fld	QWORD PTR [esp]
L196:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE36:
	.globl	_fminf
	.def	_fminf;	.scl	2;	.type	32;	.endef
_fminf:
LFB37:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L208
	mov	eax, DWORD PTR [esp+12]
	jmp	L209
L208:
	fld	DWORD PTR [esp+12]
	fld	DWORD PTR [esp+12]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L210
	mov	eax, DWORD PTR [esp+8]
	jmp	L209
L210:
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [esp+12]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L211
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L212
	mov	eax, DWORD PTR [esp+8]
	jmp	L209
L212:
	mov	eax, DWORD PTR [esp+12]
	jmp	L209
L211:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+12]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L218
	mov	eax, DWORD PTR [esp+8]
	jmp	L209
L218:
	mov	eax, DWORD PTR [esp+12]
L209:
	mov	DWORD PTR [esp], eax
	fld	DWORD PTR [esp]
	add	esp, 4
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE37:
	.globl	_fminl
	.def	_fminl;	.scl	2;	.type	32;	.endef
_fminl:
LFB38:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L221
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	jmp	L222
L221:
	fld	TBYTE PTR [esp+28]
	fld	TBYTE PTR [esp+28]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L223
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	jmp	L222
L223:
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [esp+28]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L224
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L225
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	jmp	L222
L225:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	jmp	L222
L224:
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+28]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L231
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	jmp	L222
L231:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
L222:
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp+8], ecx
	fld	TBYTE PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], OFFSET FLAT:_s.0
	jmp	L234
L235:
	mov	eax, DWORD PTR [esp+8]
	and	eax, 63
	movzx	edx, BYTE PTR _digits[eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	add	DWORD PTR [esp+12], 1
	shr	DWORD PTR [esp+8], 6
L234:
	cmp	DWORD PTR [esp+8], 0
	jne	L235
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], 0
	mov	eax, OFFSET FLAT:_s.0
	add	esp, 16
	.cfi_def_cfa_offset 4
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
	mov	edx, 0
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, edx
	nop
	ret
	.cfi_endproc
LFE40:
	.globl	_rand
	.def	_rand;	.scl	2;	.type	32;	.endef
_rand:
LFB41:
	.cfi_startproc
	mov	eax, DWORD PTR _seed+4
	imul	edx, eax, 1284865837
	mov	eax, DWORD PTR _seed
	imul	eax, eax, 1481765933
	lea	ecx, [edx+eax]
	mov	eax, DWORD PTR _seed
	mov	edx, 1284865837
	mul	edx
	add	ecx, edx
	mov	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR _seed, eax
	mov	DWORD PTR _seed+4, edx
	mov	eax, DWORD PTR _seed+4
	shr	eax
	ret
	.cfi_endproc
LFE41:
	.globl	_insque
	.def	_insque;	.scl	2;	.type	32;	.endef
_insque:
LFB42:
	.cfi_startproc
	cmp	DWORD PTR [esp+8], 0
	jne	L242
	mov	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [eax+4], 0
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [eax], edx
	ret
L242:
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	L241
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [eax+4], edx
L241:
	ret
	.cfi_endproc
LFE42:
	.globl	_remque
	.def	_remque;	.scl	2;	.type	32;	.endef
_remque:
LFB43:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	L245
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], edx
L245:
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L244
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
L244:
	ret
	.cfi_endproc
LFE43:
	.globl	_lsearch
	.def	_lsearch;	.scl	2;	.type	32;	.endef
_lsearch:
LFB44:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	ebx, DWORD PTR [esp+60]
	lea	eax, [ebx-1]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+56]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [esp+20], eax
	mov	DWORD PTR [esp+28], 0
	jmp	L249
L252:
	mov	edx, ebx
	imul	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+52]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	call	eax
	test	eax, eax
	jne	L250
	imul	ebx, DWORD PTR [esp+28]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+52]
	add	eax, edx
	jmp	L251
L250:
	add	DWORD PTR [esp+28], 1
L249:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+20]
	jb	L252
	mov	eax, DWORD PTR [esp+20]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [eax], edx
	imul	ebx, DWORD PTR [esp+20]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+52]
	add	edx, eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	_memcpy
L251:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE44:
	.globl	_lfind
	.def	_lfind;	.scl	2;	.type	32;	.endef
_lfind:
LFB45:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	ebx, DWORD PTR [esp+60]
	lea	eax, [ebx-1]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+56]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [esp+20], eax
	mov	DWORD PTR [esp+28], 0
	jmp	L255
L258:
	mov	edx, ebx
	imul	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+52]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	call	eax
	test	eax, eax
	jne	L256
	imul	ebx, DWORD PTR [esp+28]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+52]
	add	eax, edx
	jmp	L257
L256:
	add	DWORD PTR [esp+28], 1
L255:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+20]
	jb	L258
	mov	eax, 0
L257:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE45:
	.globl	_abs
	.def	_abs;	.scl	2;	.type	32;	.endef
_abs:
LFB46:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	ret
	.cfi_endproc
LFE46:
	.globl	_atoi
	.def	_atoi;	.scl	2;	.type	32;	.endef
_atoi:
LFB47:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	DWORD PTR [esp+16], 0
	mov	DWORD PTR [esp+12], 0
	jmp	L263
L264:
	add	DWORD PTR [esp+24], 1
L263:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L264
	mov	eax, DWORD PTR [esp+24]
	movsx	eax, BYTE PTR [eax]
	cmp	eax, 43
	je	L265
	cmp	eax, 45
	jne	L267
	mov	DWORD PTR [esp+12], 1
L265:
	add	DWORD PTR [esp+24], 1
	jmp	L267
L268:
	mov	edx, DWORD PTR [esp+16]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+24]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+24], edx
	movsx	eax, BYTE PTR [eax]
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [esp+16], eax
L267:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L268
	cmp	DWORD PTR [esp+12], 0
	jne	L269
	mov	eax, DWORD PTR [esp+16]
	neg	eax
	jmp	L271
L269:
	mov	eax, DWORD PTR [esp+16]
L271:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE47:
	.globl	_atol
	.def	_atol;	.scl	2;	.type	32;	.endef
_atol:
LFB48:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	DWORD PTR [esp+16], 0
	mov	DWORD PTR [esp+12], 0
	jmp	L274
L275:
	add	DWORD PTR [esp+24], 1
L274:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L275
	mov	eax, DWORD PTR [esp+24]
	movsx	eax, BYTE PTR [eax]
	cmp	eax, 43
	je	L276
	cmp	eax, 45
	jne	L278
	mov	DWORD PTR [esp+12], 1
L276:
	add	DWORD PTR [esp+24], 1
	jmp	L278
L279:
	mov	edx, DWORD PTR [esp+16]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+24]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+24], edx
	movsx	eax, BYTE PTR [eax]
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [esp+16], eax
L278:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L279
	cmp	DWORD PTR [esp+12], 0
	jne	L280
	mov	eax, DWORD PTR [esp+16]
	neg	eax
	jmp	L282
L280:
	mov	eax, DWORD PTR [esp+16]
L282:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE48:
	.globl	_atoll
	.def	_atoll;	.scl	2;	.type	32;	.endef
_atoll:
LFB49:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 20
	.cfi_def_cfa_offset 28
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+16], 0
	mov	DWORD PTR [esp+8], 0
	jmp	L285
L286:
	add	DWORD PTR [esp+28], 1
L285:
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L286
	mov	eax, DWORD PTR [esp+28]
	movsx	eax, BYTE PTR [eax]
	cmp	eax, 43
	je	L287
	cmp	eax, 45
	jne	L289
	mov	DWORD PTR [esp+8], 1
L287:
	add	DWORD PTR [esp+28], 1
	jmp	L289
L290:
	mov	ecx, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 2
	sal	eax, 2
	add	eax, ecx
	adc	edx, ebx
	add	eax, eax
	adc	edx, edx
	mov	ecx, DWORD PTR [esp+28]
	lea	ebx, [ecx+1]
	mov	DWORD PTR [esp+28], ebx
	movsx	ecx, BYTE PTR [ecx]
	sub	ecx, 48
	mov	ebx, ecx
	sar	ebx, 31
	sub	eax, ecx
	sbb	edx, ebx
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+16], edx
L289:
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L290
	cmp	DWORD PTR [esp+8], 0
	jne	L291
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	neg	eax
	adc	edx, 0
	neg	edx
	jmp	L293
L291:
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
L293:
	add	esp, 20
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE49:
	.globl	_bsearch
	.def	_bsearch;	.scl	2;	.type	32;	.endef
_bsearch:
LFB50:
	.cfi_startproc
	sub	esp, 44
	.cfi_def_cfa_offset 48
	jmp	L296
L301:
	mov	eax, DWORD PTR [esp+56]
	shr	eax
	imul	eax, DWORD PTR [esp+60]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+52]
	add	eax, edx
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	call	eax
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	jns	L297
	mov	eax, DWORD PTR [esp+56]
	shr	eax
	mov	DWORD PTR [esp+56], eax
	jmp	L296
L297:
	cmp	DWORD PTR [esp+24], 0
	jle	L299
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+60]
	add	eax, edx
	mov	DWORD PTR [esp+52], eax
	mov	eax, DWORD PTR [esp+56]
	shr	eax
	mov	edx, DWORD PTR [esp+56]
	sub	edx, eax
	lea	eax, [edx-1]
	mov	DWORD PTR [esp+56], eax
	jmp	L296
L299:
	mov	eax, DWORD PTR [esp+28]
	jmp	L300
L296:
	cmp	DWORD PTR [esp+56], 0
	jne	L301
	mov	eax, 0
L300:
	add	esp, 44
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE50:
	.globl	_bsearch_r
	.def	_bsearch_r;	.scl	2;	.type	32;	.endef
_bsearch_r:
LFB51:
	.cfi_startproc
	sub	esp, 44
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+28], eax
	jmp	L304
L308:
	mov	eax, DWORD PTR [esp+28]
	sar	eax
	imul	eax, DWORD PTR [esp+60]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+52]
	add	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	call	eax
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+20], 0
	jne	L305
	mov	eax, DWORD PTR [esp+24]
	jmp	L306
L305:
	cmp	DWORD PTR [esp+20], 0
	jle	L307
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+60]
	add	eax, edx
	mov	DWORD PTR [esp+52], eax
	sub	DWORD PTR [esp+28], 1
L307:
	sar	DWORD PTR [esp+28]
L304:
	cmp	DWORD PTR [esp+28], 0
	jne	L308
	mov	eax, 0
L306:
	add	esp, 44
	.cfi_def_cfa_offset 4
	ret
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
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	eax, ecx
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	edx, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+4]
	mov	ebx, edx
	neg	ebx
	mov	eax, ecx
	adc	eax, 0
	neg	eax
	cmovs	ebx, edx
	cmovns	ecx, eax
	mov	edx, ecx
	mov	eax, ebx
	add	esp, 8
	.cfi_def_cfa_offset 8
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
	sub	esp, 48
	.cfi_def_cfa_offset 64
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divdi3
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___moddi3
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [esp+64]
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
LFE54:
	.globl	_labs
	.def	_labs;	.scl	2;	.type	32;	.endef
_labs:
LFB55:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
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
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	eax, ecx
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	edx, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+4]
	mov	ebx, edx
	neg	ebx
	mov	eax, ecx
	adc	eax, 0
	neg	eax
	cmovs	ebx, edx
	cmovns	ecx, eax
	mov	edx, ecx
	mov	eax, ebx
	add	esp, 8
	.cfi_def_cfa_offset 8
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
	sub	esp, 48
	.cfi_def_cfa_offset 64
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___divdi3
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___moddi3
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [esp+64]
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
LFE58:
	.globl	_wcschr
	.def	_wcschr;	.scl	2;	.type	32;	.endef
_wcschr:
LFB59:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	mov	eax, DWORD PTR [esp+12]
	mov	WORD PTR [esp], ax
	jmp	L331
L333:
	add	DWORD PTR [esp+8], 2
L331:
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L332
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [esp], ax
	jne	L333
L332:
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L334
	mov	eax, DWORD PTR [esp+8]
	jmp	L336
L334:
	mov	eax, 0
L336:
	add	esp, 4
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE59:
	.globl	_wcscmp
	.def	_wcscmp;	.scl	2;	.type	32;	.endef
_wcscmp:
LFB60:
	.cfi_startproc
	jmp	L339
L341:
	add	DWORD PTR [esp+4], 2
	add	DWORD PTR [esp+8], 2
L339:
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L340
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L340
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L341
L340:
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L342
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	ret
L342:
	mov	eax, -1
	ret
	.cfi_endproc
LFE60:
	.globl	_wcscpy
	.def	_wcscpy;	.scl	2;	.type	32;	.endef
_wcscpy:
LFB61:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
L346:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+2]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+2]
	mov	DWORD PTR [esp+12], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L346
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE61:
	.globl	_wcslen
	.def	_wcslen;	.scl	2;	.type	32;	.endef
_wcslen:
LFB62:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	L350
L351:
	add	DWORD PTR [esp+12], 2
L350:
	mov	eax, DWORD PTR [esp+12]
	cmp	WORD PTR [eax], 0
	jne	L351
	mov	eax, DWORD PTR [esp+12]
	sub	eax, DWORD PTR [esp+20]
	sar	eax
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE62:
	.globl	_wcsncmp
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
_wcsncmp:
LFB63:
	.cfi_startproc
	jmp	L355
L357:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 2
	add	DWORD PTR [esp+8], 2
L355:
	cmp	DWORD PTR [esp+12], 0
	je	L356
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L356
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L356
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L357
L356:
	cmp	DWORD PTR [esp+12], 0
	je	L358
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L359
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	ret
L359:
	mov	eax, -1
	ret
L358:
	mov	eax, 0
	ret
	.cfi_endproc
LFE63:
	.globl	_wmemchr
	.def	_wmemchr;	.scl	2;	.type	32;	.endef
_wmemchr:
LFB64:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	mov	eax, DWORD PTR [esp+12]
	mov	WORD PTR [esp], ax
	jmp	L364
L366:
	sub	DWORD PTR [esp+16], 1
	add	DWORD PTR [esp+8], 2
L364:
	cmp	DWORD PTR [esp+16], 0
	je	L365
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [esp], ax
	jne	L366
L365:
	cmp	DWORD PTR [esp+16], 0
	je	L367
	mov	eax, DWORD PTR [esp+8]
	jmp	L369
L367:
	mov	eax, 0
L369:
	add	esp, 4
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.globl	_wmemcmp
	.def	_wmemcmp;	.scl	2;	.type	32;	.endef
_wmemcmp:
LFB65:
	.cfi_startproc
	jmp	L372
L374:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 2
	add	DWORD PTR [esp+8], 2
L372:
	cmp	DWORD PTR [esp+12], 0
	je	L373
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	je	L374
L373:
	cmp	DWORD PTR [esp+12], 0
	je	L375
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L376
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	ret
L376:
	mov	eax, -1
	ret
L375:
	mov	eax, 0
	ret
	.cfi_endproc
LFE65:
	.globl	_wmemcpy
	.def	_wmemcpy;	.scl	2;	.type	32;	.endef
_wmemcpy:
LFB66:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	L381
L382:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+2]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+2]
	mov	DWORD PTR [esp+12], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L381:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L382
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE66:
	.globl	_wmemmove
	.def	_wmemmove;	.scl	2;	.type	32;	.endef
_wmemmove:
LFB67:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jne	L386
	mov	eax, DWORD PTR [esp+20]
	jmp	L387
L386:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	sub	edx, eax
	mov	eax, DWORD PTR [esp+28]
	add	eax, eax
	cmp	edx, eax
	jnb	L388
	jmp	L389
L390:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [esp+20]
	add	edx, eax
	mov	eax, DWORD PTR [esp+28]
	lea	ecx, [eax+eax]
	mov	eax, DWORD PTR [esp+24]
	add	eax, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
L389:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L390
	jmp	L391
L388:
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	L392
L393:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+2]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+2]
	mov	DWORD PTR [esp+12], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L392:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L393
L391:
	mov	eax, DWORD PTR [esp+20]
L387:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE67:
	.globl	_wmemset
	.def	_wmemset;	.scl	2;	.type	32;	.endef
_wmemset:
LFB68:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+28]
	mov	WORD PTR [esp], ax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+16], eax
	jmp	L396
L397:
	mov	eax, DWORD PTR [esp+16]
	lea	edx, [eax+2]
	mov	DWORD PTR [esp+16], edx
	movzx	edx, WORD PTR [esp]
	mov	WORD PTR [eax], dx
L396:
	mov	eax, DWORD PTR [esp+32]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+32], edx
	test	eax, eax
	jne	L397
	mov	eax, DWORD PTR [esp+24]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE68:
	.globl	_bcopy
	.def	_bcopy;	.scl	2;	.type	32;	.endef
_bcopy:
LFB69:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jnb	L401
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	DWORD PTR [esp+8], eax
	jmp	L402
L403:
	sub	DWORD PTR [esp+12], 1
	sub	DWORD PTR [esp+8], 1
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L402:
	cmp	DWORD PTR [esp+28], 0
	jne	L403
	jmp	L400
L401:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	je	L400
	jmp	L405
L406:
	mov	edx, DWORD PTR [esp+20]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+24]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+24], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L405:
	cmp	DWORD PTR [esp+28], 0
	jne	L406
L400:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
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
	sub	esp, 12
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+32]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	L412
	mov	edi, esi
	xor	esi, esi
L412:
	mov	ecx, DWORD PTR [esp+32]
	neg	ecx
	and	ecx, 63
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L413
	mov	eax, edx
	xor	edx, edx
L413:
	or	eax, esi
	or	edx, edi
	add	esp, 12
	.cfi_def_cfa_offset 12
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
	sub	esp, 12
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+32]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	L417
	mov	esi, edi
	xor	edi, edi
L417:
	mov	ecx, DWORD PTR [esp+32]
	neg	ecx
	and	ecx, 63
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L418
	mov	edx, eax
	xor	eax, eax
L418:
	or	eax, esi
	or	edx, edi
	add	esp, 12
	.cfi_def_cfa_offset 12
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
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
LFE72:
	.globl	_rotr32
	.def	_rotr32;	.scl	2;	.type	32;	.endef
_rotr32:
LFB73:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
LFE73:
	.globl	_rotl_sz
	.def	_rotl_sz;	.scl	2;	.type	32;	.endef
_rotl_sz:
LFB74:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
LFE74:
	.globl	_rotr_sz
	.def	_rotr_sz;	.scl	2;	.type	32;	.endef
_rotr_sz:
LFB75:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
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
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	WORD PTR [esp], ax
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [esp]
	mov	eax, 16
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
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
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	WORD PTR [esp], ax
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [esp]
	mov	eax, 16
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
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
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [esp], al
	movzx	edx, BYTE PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [esp]
	mov	eax, 8
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
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
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [esp], al
	movzx	edx, BYTE PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [esp]
	mov	eax, 8
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
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
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	WORD PTR [esp+18], 255
	movzx	eax, WORD PTR [esp+18]
	sal	eax, 8
	movzx	edx, WORD PTR [esp]
	and	eax, edx
	sar	eax, 8
	mov	ecx, eax
	movzx	eax, WORD PTR [esp+18]
	movzx	edx, WORD PTR [esp]
	and	eax, edx
	sal	eax, 8
	or	eax, ecx
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE80:
	.globl	_bswap_32
	.def	_bswap_32;	.scl	2;	.type	32;	.endef
_bswap_32:
LFB81:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 255
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 24
	and	eax, DWORD PTR [esp+20]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 16
	and	eax, DWORD PTR [esp+20]
	shr	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 8
	and	eax, DWORD PTR [esp+20]
	sal	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [esp+20]
	and	eax, DWORD PTR [esp+12]
	sal	eax, 24
	or	eax, edx
	add	esp, 16
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
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp+20], eax
	mov	DWORD PTR [esp+32], 255
	mov	DWORD PTR [esp+36], 0
	mov	eax, DWORD PTR [esp+32]
	sal	eax, 24
	mov	ebx, eax
	mov	ecx, 0
	mov	eax, ecx
	mov	edx, ebx
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+32]
	sal	eax, 16
	mov	edi, eax
	mov	esi, 0
	mov	eax, esi
	mov	edx, edi
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+32]
	sal	eax, 8
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], 0
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 24
	shr	edx, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+8], 0
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 8
	shr	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	shld	edx, eax, 24
	sal	eax, 24
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	shld	edx, eax, 8
	sal	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	shld	edx, eax, 16
	sal	eax, 16
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	shld	edx, eax, 24
	sal	eax, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	shld	edx, eax, 8
	sal	eax, 8
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	and	eax, DWORD PTR [esp+32]
	and	edx, DWORD PTR [esp+36]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	or	eax, ecx
	or	edx, ebx
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	L449
L452:
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L450
	mov	eax, DWORD PTR [esp+12]
	add	eax, 1
	jmp	L451
L450:
	add	DWORD PTR [esp+12], 1
L449:
	cmp	DWORD PTR [esp+12], 31
	jbe	L452
	mov	eax, 0
L451:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE83:
	.globl	_libiberty_ffs
	.def	_libiberty_ffs;	.scl	2;	.type	32;	.endef
_libiberty_ffs:
LFB84:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	test	eax, eax
	jne	L455
	mov	ebx, 0
	jmp	L456
L455:
	mov	ebx, 1
	jmp	L457
L458:
	sar	eax
	add	ebx, 1
L457:
	mov	edx, eax
	and	edx, 1
	je	L458
L456:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE84:
	.globl	_gl_isinff
	.def	_gl_isinff;	.scl	2;	.type	32;	.endef
_gl_isinff:
LFB85:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR LC3
	fcomip	st, st(1)
	fstp	st(0)
	ja	L461
	fld	DWORD PTR LC4
	fld	DWORD PTR [esp+4]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L466
L461:
	mov	eax, 1
	ret
L466:
	mov	eax, 0
	ret
	.cfi_endproc
LFE85:
	.globl	_gl_isinfd
	.def	_gl_isinfd;	.scl	2;	.type	32;	.endef
_gl_isinfd:
LFB86:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp]
	fld	QWORD PTR LC5
	fcomip	st, st(1)
	fstp	st(0)
	ja	L468
	fld	QWORD PTR LC6
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L473
L468:
	mov	eax, 1
	jmp	L472
L473:
	mov	eax, 0
L472:
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE86:
	.globl	_gl_isinfl
	.def	_gl_isinfl;	.scl	2;	.type	32;	.endef
_gl_isinfl:
LFB87:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR LC7
	fcomip	st, st(1)
	fstp	st(0)
	ja	L476
	fld	TBYTE PTR LC8
	fld	TBYTE PTR [esp+4]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L481
L476:
	mov	eax, 1
	ret
L481:
	mov	eax, 0
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
	nop
	ret
	.cfi_endproc
LFE88:
	.globl	_ldexpf
	.def	_ldexpf;	.scl	2;	.type	32;	.endef
_ldexpf:
LFB89:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	fld	DWORD PTR [esp+20]
	fld	DWORD PTR [esp+20]
	fucomip	st, st(1)
	fstp	st(0)
	jp	L484
	fld	DWORD PTR [esp+20]
	fadd	st, st(0)
	fld	DWORD PTR [esp+20]
	fucomip	st, st(1)
	jp	L495
	fld	DWORD PTR [esp+20]
	fucomip	st, st(1)
	fstp	st(0)
	je	L484
	jmp	L492
L495:
	fstp	st(0)
L492:
	cmp	DWORD PTR [esp+24], 0
	jns	L486
	fld	DWORD PTR LC9
	jmp	L487
L486:
	fld	DWORD PTR LC10
L487:
	fstp	DWORD PTR [esp+12]
L490:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L488
	fld	DWORD PTR [esp+20]
	fmul	DWORD PTR [esp+12]
	fstp	DWORD PTR [esp+20]
L488:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	je	L484
	fld	DWORD PTR [esp+12]
	fmul	st, st(0)
	fstp	DWORD PTR [esp+12]
	jmp	L490
L484:
	fld	DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE89:
	.globl	_ldexp
	.def	_ldexp;	.scl	2;	.type	32;	.endef
_ldexp:
LFB90:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	fstp	st(0)
	jp	L497
	fld	QWORD PTR [esp]
	fadd	st, st(0)
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	jp	L508
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	fstp	st(0)
	je	L497
	jmp	L505
L508:
	fstp	st(0)
L505:
	cmp	DWORD PTR [esp+40], 0
	jns	L499
	fld	QWORD PTR LC11
	jmp	L500
L499:
	fld	QWORD PTR LC12
L500:
	fstp	QWORD PTR [esp+16]
L503:
	mov	eax, DWORD PTR [esp+40]
	and	eax, 1
	je	L501
	fld	QWORD PTR [esp]
	fmul	QWORD PTR [esp+16]
	fstp	QWORD PTR [esp]
L501:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+40], eax
	cmp	DWORD PTR [esp+40], 0
	je	L497
	fld	QWORD PTR [esp+16]
	fmul	st, st(0)
	fstp	QWORD PTR [esp+16]
	jmp	L503
L497:
	fld	QWORD PTR [esp]
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE90:
	.globl	_ldexpl
	.def	_ldexpl;	.scl	2;	.type	32;	.endef
_ldexpl:
LFB91:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	fld	TBYTE PTR [esp+20]
	fld	TBYTE PTR [esp+20]
	fucomip	st, st(1)
	fstp	st(0)
	jp	L510
	fld	TBYTE PTR [esp+20]
	fadd	st, st(0)
	fld	TBYTE PTR [esp+20]
	fucomip	st, st(1)
	jp	L521
	fld	TBYTE PTR [esp+20]
	fucomip	st, st(1)
	fstp	st(0)
	je	L510
	jmp	L518
L521:
	fstp	st(0)
L518:
	cmp	DWORD PTR [esp+32], 0
	jns	L512
	fld	TBYTE PTR LC13
	jmp	L513
L512:
	fld	TBYTE PTR LC14
L513:
	fstp	TBYTE PTR [esp+4]
L516:
	mov	eax, DWORD PTR [esp+32]
	and	eax, 1
	je	L514
	fld	TBYTE PTR [esp+20]
	fld	TBYTE PTR [esp+4]
	fmulp	st(1), st
	fstp	TBYTE PTR [esp+20]
L514:
	mov	eax, DWORD PTR [esp+32]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+32], eax
	cmp	DWORD PTR [esp+32], 0
	je	L510
	fld	TBYTE PTR [esp+4]
	fmul	st, st(0)
	fstp	TBYTE PTR [esp+4]
	jmp	L516
L510:
	fld	TBYTE PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE91:
	.globl	_memxor
	.def	_memxor;	.scl	2;	.type	32;	.endef
_memxor:
LFB92:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	L523
L524:
	mov	eax, DWORD PTR [esp+24]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+24], edx
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+12], edx
	movzx	edx, BYTE PTR [eax]
	xor	edx, ecx
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L523:
	cmp	DWORD PTR [esp+28], 0
	jne	L524
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE92:
	.globl	_strncat
	.def	_strncat;	.scl	2;	.type	32;	.endef
_strncat:
LFB93:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	edx, DWORD PTR [esp+24]
	add	eax, edx
	mov	DWORD PTR [esp+16], eax
	jmp	L528
L530:
	add	DWORD PTR [esp+28], 1
	add	DWORD PTR [esp+16], 1
	sub	DWORD PTR [esp+32], 1
L528:
	cmp	DWORD PTR [esp+32], 0
	je	L529
	mov	eax, DWORD PTR [esp+28]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+16]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+16]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L530
L529:
	cmp	DWORD PTR [esp+32], 0
	jne	L531
	mov	eax, DWORD PTR [esp+16]
	mov	BYTE PTR [eax], 0
L531:
	mov	eax, DWORD PTR [esp+24]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE93:
	.globl	_strnlen
	.def	_strnlen;	.scl	2;	.type	32;	.endef
_strnlen:
LFB94:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	L535
L540:
	add	DWORD PTR [esp+12], 1
L535:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+24]
	jnb	L536
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L540
L536:
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE94:
	.globl	_strpbrk
	.def	_strpbrk;	.scl	2;	.type	32;	.endef
_strpbrk:
LFB95:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	jmp	L543
L547:
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+12], eax
	jmp	L544
L546:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+12], edx
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L544
	mov	eax, DWORD PTR [esp+20]
	jmp	L545
L544:
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L546
	add	DWORD PTR [esp+20], 1
L543:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L547
	mov	eax, 0
L545:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE95:
	.globl	_strrchr
	.def	_strrchr;	.scl	2;	.type	32;	.endef
_strrchr:
LFB96:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], 0
L551:
	movsx	edx, BYTE PTR [eax]
	cmp	DWORD PTR [esp+24], edx
	jne	L550
	mov	DWORD PTR [esp+12], eax
L550:
	mov	edx, eax
	lea	eax, [edx+1]
	cmp	BYTE PTR [edx], 0
	jne	L551
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE96:
	.globl	_strstr
	.def	_strstr;	.scl	2;	.type	32;	.endef
_strstr:
LFB97:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	jne	L557
	mov	eax, DWORD PTR [esp+32]
	jmp	L556
L559:
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp], eax
	call	_strncmp
	test	eax, eax
	jne	L558
	mov	eax, DWORD PTR [esp+20]
	jmp	L556
L558:
	mov	eax, DWORD PTR [esp+20]
	add	eax, 1
	mov	DWORD PTR [esp+32], eax
L557:
	mov	eax, DWORD PTR [esp+36]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	call	_strchr
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+20], 0
	jne	L559
	mov	eax, 0
L556:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE97:
	.globl	_copysign
	.def	_copysign;	.scl	2;	.type	32;	.endef
_copysign:
LFB98:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L562
	fldz
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	ja	L564
L562:
	fldz
	fld	QWORD PTR [esp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L565
	fld	QWORD PTR [esp]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L565
L564:
	fld	QWORD PTR [esp+8]
	fchs
	jmp	L568
L565:
	fld	QWORD PTR [esp+8]
L568:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE98:
	.globl	_memmem
	.def	_memmem;	.scl	2;	.type	32;	.endef
_memmem:
LFB99:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+36]
	sub	eax, DWORD PTR [esp+44]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+32]
	add	eax, edx
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+44], 0
	jne	L573
	mov	eax, DWORD PTR [esp+32]
	jmp	L574
L573:
	mov	eax, DWORD PTR [esp+36]
	cmp	eax, DWORD PTR [esp+44]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	L576
	mov	eax, 0
	jmp	L574
L578:
	mov	eax, DWORD PTR [esp+32]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+40]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L577
	mov	eax, DWORD PTR [esp+32]
	add	eax, 1
	mov	edx, DWORD PTR [esp+44]
	sub	edx, 1
	mov	DWORD PTR [esp+8], edx
	mov	edx, DWORD PTR [esp+40]
	add	edx, 1
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_memcmp
	test	eax, eax
	jne	L577
	mov	eax, DWORD PTR [esp+32]
	jmp	L574
L577:
	add	DWORD PTR [esp+32], 1
L576:
	mov	eax, DWORD PTR [esp+32]
	cmp	DWORD PTR [esp+24], eax
	jnb	L578
	mov	eax, 0
L574:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE99:
	.globl	_mempcpy
	.def	_mempcpy;	.scl	2;	.type	32;	.endef
_mempcpy:
LFB100:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	call	_memcpy
	mov	edx, DWORD PTR [esp+24]
	add	eax, edx
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE100:
	.globl	_frexp
	.def	_frexp;	.scl	2;	.type	32;	.endef
_frexp:
LFB101:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+16], 0
	mov	DWORD PTR [esp+20], 0
	fld	QWORD PTR [esp]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L584
	fld	QWORD PTR [esp]
	fchs
	fstp	QWORD PTR [esp]
	mov	DWORD PTR [esp+20], 1
L584:
	fld1
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jb	L601
	jmp	L588
L589:
	add	DWORD PTR [esp+16], 1
	fld	QWORD PTR [esp]
	fld	QWORD PTR LC12
	fdivp	st(1), st
	fstp	QWORD PTR [esp]
L588:
	fld1
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jnb	L589
	jmp	L590
L601:
	fld	QWORD PTR [esp]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L590
	fld	QWORD PTR [esp]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	jp	L593
	fld	QWORD PTR [esp]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	je	L590
	jmp	L593
L594:
	sub	DWORD PTR [esp+16], 1
	fld	QWORD PTR [esp]
	fadd	st, st(0)
	fstp	QWORD PTR [esp]
L593:
	fld	QWORD PTR [esp]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	ja	L594
L590:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+16]
	mov	DWORD PTR [eax], edx
	cmp	DWORD PTR [esp+20], 0
	je	L595
	fld	QWORD PTR [esp]
	fchs
	fstp	QWORD PTR [esp]
L595:
	fld	QWORD PTR [esp]
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE101:
	.globl	___muldi3
	.def	___muldi3;	.scl	2;	.type	32;	.endef
___muldi3:
LFB102:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+24], 0
	mov	DWORD PTR [esp+28], 0
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	jmp	L604
L606:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	and	eax, 1
	mov	edx, 0
	mov	ecx, eax
	or	ecx, edx
	je	L605
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	DWORD PTR [esp+24], eax
	adc	DWORD PTR [esp+28], edx
L605:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	eax, eax
	adc	edx, edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 1
	shr	edx
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
L604:
	mov	eax, DWORD PTR [esp+16]
	or	eax, DWORD PTR [esp+20]
	jne	L606
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE102:
	.globl	_udivmodsi4
	.def	_udivmodsi4;	.scl	2;	.type	32;	.endef
_udivmodsi4:
LFB103:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], 0
	jmp	L610
L612:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
L610:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	L613
	cmp	DWORD PTR [esp+12], 0
	je	L613
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	L612
	jmp	L613
L615:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L614
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
L614:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
L613:
	cmp	DWORD PTR [esp+12], 0
	jne	L615
	cmp	DWORD PTR [esp+28], 0
	je	L616
	mov	eax, DWORD PTR [esp+20]
	jmp	L617
L616:
	mov	eax, DWORD PTR [esp+8]
L617:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE103:
	.globl	___clrsbqi2
	.def	___clrsbqi2;	.scl	2;	.type	32;	.endef
___clrsbqi2:
LFB104:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	BYTE PTR [esp], al
	cmp	BYTE PTR [esp], 0
	jns	L620
	not	BYTE PTR [esp]
L620:
	cmp	BYTE PTR [esp], 0
	jne	L621
	mov	eax, 7
	jmp	L622
L621:
	movsx	eax, BYTE PTR [esp]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+16]
	sub	eax, 1
L622:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE104:
	.globl	___clrsbdi2
	.def	___clrsbdi2;	.scl	2;	.type	32;	.endef
___clrsbdi2:
LFB105:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	cmp	DWORD PTR [esp+4], 0
	jns	L625
	not	DWORD PTR [esp]
	not	DWORD PTR [esp+4]
L625:
	mov	eax, DWORD PTR [esp]
	or	eax, DWORD PTR [esp+4]
	jne	L626
	mov	eax, 63
	jmp	L627
L626:
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+4]
	test	eax, eax
	je	L628
	bsr	eax, eax
	xor	eax, 31
	jmp	L629
L628:
	bsr	eax, edx
	xor	eax, 31
	add	eax, 32
L629:
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	sub	eax, 1
L627:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE105:
	.globl	___mulsi3
	.def	___mulsi3;	.scl	2;	.type	32;	.endef
___mulsi3:
LFB106:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	L632
L634:
	mov	eax, DWORD PTR [esp+20]
	and	eax, 1
	je	L633
	mov	eax, DWORD PTR [esp+24]
	add	DWORD PTR [esp+12], eax
L633:
	shr	DWORD PTR [esp+20]
	sal	DWORD PTR [esp+24]
L632:
	cmp	DWORD PTR [esp+20], 0
	jne	L634
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE106:
	.globl	___cmovd
	.def	___cmovd;	.scl	2;	.type	32;	.endef
___cmovd:
LFB107:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+32]
	shr	eax, 3
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+32]
	and	eax, -8
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+28]
	jb	L638
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+32]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+24]
	jnb	L645
L638:
	mov	DWORD PTR [esp+12], 0
	jmp	L640
L641:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [esp+24]
	lea	ecx, [edx+eax]
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	add	DWORD PTR [esp+12], 1
L640:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+4]
	jb	L641
	jmp	L642
L643:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+8]
	add	edx, eax
	mov	ecx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+8]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+8], 1
L642:
	mov	eax, DWORD PTR [esp+32]
	cmp	DWORD PTR [esp+8], eax
	jb	L643
	jmp	L644
L646:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+32]
	add	edx, eax
	mov	ecx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+32]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L645:
	mov	eax, DWORD PTR [esp+32]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+32], edx
	test	eax, eax
	jne	L646
L644:
	nop
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE107:
	.globl	___cmovh
	.def	___cmovh;	.scl	2;	.type	32;	.endef
___cmovh:
LFB108:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+28]
	shr	eax
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L649
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+20]
	jnb	L655
L649:
	mov	DWORD PTR [esp+12], 0
	jmp	L651
L652:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [esp+20]
	add	edx, eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+eax]
	mov	eax, DWORD PTR [esp+24]
	add	eax, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
	add	DWORD PTR [esp+12], 1
L651:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+8]
	jb	L652
	mov	eax, DWORD PTR [esp+28]
	and	eax, 1
	je	L654
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR [esp+20]
	add	edx, eax
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	add	eax, ecx
	sub	eax, 1
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	jmp	L654
L656:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+28]
	add	edx, eax
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L655:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L656
L654:
	nop
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE108:
	.globl	___cmovw
	.def	___cmovw;	.scl	2;	.type	32;	.endef
___cmovw:
LFB109:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+28]
	shr	eax, 2
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+28]
	and	eax, -4
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L659
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+20]
	jnb	L666
L659:
	mov	DWORD PTR [esp+12], 0
	jmp	L661
L662:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [esp+20]
	add	edx, eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [0+eax*4]
	mov	eax, DWORD PTR [esp+24]
	add	eax, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
	add	DWORD PTR [esp+12], 1
L661:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+4]
	jb	L662
	jmp	L663
L664:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+8]
	add	edx, eax
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+8]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+8], 1
L663:
	mov	eax, DWORD PTR [esp+28]
	cmp	DWORD PTR [esp+8], eax
	jb	L664
	jmp	L665
L667:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+28]
	add	edx, eax
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L666:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L667
L665:
	nop
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
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
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	fild	QWORD PTR [esp+8]
	cmp	DWORD PTR [esp+12], 0
	jns	L678
	fld	TBYTE PTR LC16
	faddp	st(1), st
L678:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE113:
	.globl	___ulltof
	.def	___ulltof;	.scl	2;	.type	32;	.endef
___ulltof:
LFB114:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	fild	QWORD PTR [esp+8]
	cmp	DWORD PTR [esp+12], 0
	jns	L682
	fld	TBYTE PTR LC16
	faddp	st(1), st
L682:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
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
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+16], 0
	jmp	L688
L691:
	mov	eax, 15
	sub	eax, DWORD PTR [esp+16]
	movzx	edx, WORD PTR [esp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	L690
	add	DWORD PTR [esp+16], 1
L688:
	cmp	DWORD PTR [esp+16], 15
	jle	L691
L690:
	mov	eax, DWORD PTR [esp+16]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE116:
	.globl	___ctzhi2
	.def	___ctzhi2;	.scl	2;	.type	32;	.endef
___ctzhi2:
LFB117:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+16], 0
	jmp	L696
L699:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	L698
	add	DWORD PTR [esp+16], 1
L696:
	cmp	DWORD PTR [esp+16], 15
	jle	L699
L698:
	mov	eax, DWORD PTR [esp+16]
	add	esp, 20
	.cfi_def_cfa_offset 4
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
	fld	DWORD PTR LC17
	fld	DWORD PTR [esp+12]
	fcomip	st, st(1)
	fstp	st(0)
	jb	L708
	fld	DWORD PTR [esp+12]
	fld	DWORD PTR LC17
	fsubp	st(1), st
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	eax, 32768
	jmp	L709
L708:
	fld	DWORD PTR [esp+12]
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
L709:
	add	esp, 8
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE118:
	.globl	___parityhi2
	.def	___parityhi2;	.scl	2;	.type	32;	.endef
___parityhi2:
LFB119:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+16], 0
	jmp	L712
L714:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L713
	add	DWORD PTR [esp+12], 1
L713:
	add	DWORD PTR [esp+16], 1
L712:
	cmp	DWORD PTR [esp+16], 15
	jle	L714
	mov	eax, DWORD PTR [esp+12]
	and	eax, 1
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE119:
	.globl	___popcounthi2
	.def	___popcounthi2;	.scl	2;	.type	32;	.endef
___popcounthi2:
LFB120:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+16], 0
	jmp	L718
L720:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L719
	add	DWORD PTR [esp+12], 1
L719:
	add	DWORD PTR [esp+16], 1
L718:
	cmp	DWORD PTR [esp+16], 15
	jle	L720
	mov	eax, DWORD PTR [esp+12]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE120:
	.globl	___mulsi3_iq2000
	.def	___mulsi3_iq2000;	.scl	2;	.type	32;	.endef
___mulsi3_iq2000:
LFB121:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	L724
L726:
	mov	eax, DWORD PTR [esp+20]
	and	eax, 1
	je	L725
	mov	eax, DWORD PTR [esp+24]
	add	DWORD PTR [esp+12], eax
L725:
	shr	DWORD PTR [esp+20]
	sal	DWORD PTR [esp+24]
L724:
	cmp	DWORD PTR [esp+20], 0
	jne	L726
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE121:
	.globl	___mulsi3_lm32
	.def	___mulsi3_lm32;	.scl	2;	.type	32;	.endef
___mulsi3_lm32:
LFB122:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	cmp	DWORD PTR [esp+20], 0
	jne	L732
	mov	eax, 0
	jmp	L731
L734:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L733
	mov	eax, DWORD PTR [esp+20]
	add	DWORD PTR [esp+12], eax
L733:
	sal	DWORD PTR [esp+20]
	shr	DWORD PTR [esp+24]
L732:
	cmp	DWORD PTR [esp+24], 0
	jne	L734
	mov	eax, DWORD PTR [esp+12]
L731:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE122:
	.globl	___udivmodsi4
	.def	___udivmodsi4;	.scl	2;	.type	32;	.endef
___udivmodsi4:
LFB123:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], 0
	jmp	L737
L739:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
L737:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	L740
	cmp	DWORD PTR [esp+12], 0
	je	L740
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	L739
	jmp	L740
L742:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L741
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
L741:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
L740:
	cmp	DWORD PTR [esp+12], 0
	jne	L742
	cmp	DWORD PTR [esp+28], 0
	je	L743
	mov	eax, DWORD PTR [esp+20]
	jmp	L744
L743:
	mov	eax, DWORD PTR [esp+8]
L744:
	add	esp, 16
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
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L754
	mov	eax, -1
	ret
L754:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L755
	mov	eax, 1
	ret
L755:
	mov	eax, 0
	ret
	.cfi_endproc
LFE124:
	.globl	___mspabi_cmpd
	.def	___mspabi_cmpd;	.scl	2;	.type	32;	.endef
___mspabi_cmpd:
LFB125:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L764
	mov	eax, -1
	jmp	L759
L764:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L765
	mov	eax, 1
	jmp	L759
L765:
	mov	eax, 0
L759:
	add	esp, 20
	.cfi_def_cfa_offset 4
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
	mov	eax, DWORD PTR [esp+16]
	cdq
	mov	ecx, DWORD PTR [esp+20]
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
	mov	edx, 0
	mov	ecx, DWORD PTR [esp+20]
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
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE127:
	.globl	___mulhi3
	.def	___mulhi3;	.scl	2;	.type	32;	.endef
___mulhi3:
LFB128:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], 0
	cmp	DWORD PTR [esp+24], 0
	jns	L774
	neg	DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], 1
L774:
	mov	BYTE PTR [esp+15], 0
	jmp	L775
L778:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L776
	mov	eax, DWORD PTR [esp+20]
	add	DWORD PTR [esp+4], eax
L776:
	sal	DWORD PTR [esp+20]
	sar	DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [esp+15]
	add	eax, 1
	mov	BYTE PTR [esp+15], al
L775:
	cmp	DWORD PTR [esp+24], 0
	je	L777
	movzx	eax, BYTE PTR [esp+15]
	cmp	al, 31
	jbe	L778
L777:
	cmp	DWORD PTR [esp+8], 0
	je	L779
	mov	eax, DWORD PTR [esp+4]
	neg	eax
	jmp	L781
L779:
	mov	eax, DWORD PTR [esp+4]
L781:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE128:
	.globl	___divsi3
	.def	___divsi3;	.scl	2;	.type	32;	.endef
___divsi3:
LFB129:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [esp+24], 0
	cmp	DWORD PTR [esp+32], 0
	jns	L784
	neg	DWORD PTR [esp+32]
	cmp	DWORD PTR [esp+24], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
L784:
	cmp	DWORD PTR [esp+36], 0
	jns	L785
	neg	DWORD PTR [esp+36]
	cmp	DWORD PTR [esp+24], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
L785:
	mov	DWORD PTR [esp+8], 0
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+24], 0
	je	L786
	neg	DWORD PTR [esp+20]
L786:
	mov	eax, DWORD PTR [esp+20]
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE129:
	.globl	___modsi3
	.def	___modsi3;	.scl	2;	.type	32;	.endef
___modsi3:
LFB130:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [esp+24], 0
	cmp	DWORD PTR [esp+32], 0
	jns	L790
	neg	DWORD PTR [esp+32]
	mov	DWORD PTR [esp+24], 1
L790:
	cmp	DWORD PTR [esp+36], 0
	jns	L791
	neg	DWORD PTR [esp+36]
L791:
	mov	DWORD PTR [esp+8], 1
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+24], 0
	je	L792
	neg	DWORD PTR [esp+20]
L792:
	mov	eax, DWORD PTR [esp+20]
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE130:
	.globl	___udivmodhi4
	.def	___udivmodhi4;	.scl	2;	.type	32;	.endef
___udivmodhi4:
LFB131:
	.cfi_startproc
	sub	esp, 24
	.cfi_def_cfa_offset 28
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+32]
	mov	WORD PTR [esp+4], dx
	mov	WORD PTR [esp], ax
	mov	WORD PTR [esp+22], 1
	mov	WORD PTR [esp+20], 0
	jmp	L796
L798:
	sal	WORD PTR [esp]
	sal	WORD PTR [esp+22]
L796:
	movzx	eax, WORD PTR [esp]
	cmp	ax, WORD PTR [esp+4]
	jnb	L799
	cmp	WORD PTR [esp+22], 0
	je	L799
	movzx	eax, WORD PTR [esp]
	test	ax, ax
	jns	L798
	jmp	L799
L801:
	movzx	eax, WORD PTR [esp+4]
	cmp	ax, WORD PTR [esp]
	jb	L800
	movzx	eax, WORD PTR [esp]
	sub	WORD PTR [esp+4], ax
	movzx	eax, WORD PTR [esp+22]
	or	WORD PTR [esp+20], ax
L800:
	shr	WORD PTR [esp+22]
	shr	WORD PTR [esp]
L799:
	cmp	WORD PTR [esp+22], 0
	jne	L801
	cmp	DWORD PTR [esp+36], 0
	je	L802
	movzx	eax, WORD PTR [esp+4]
	jmp	L803
L802:
	movzx	eax, WORD PTR [esp+20]
L803:
	add	esp, 24
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE131:
	.globl	___udivmodsi4_libgcc
	.def	___udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
___udivmodsi4_libgcc:
LFB132:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], 0
	jmp	L806
L808:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
L806:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	L809
	cmp	DWORD PTR [esp+12], 0
	je	L809
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	L808
	jmp	L809
L811:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L810
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
L810:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
L809:
	cmp	DWORD PTR [esp+12], 0
	jne	L811
	cmp	DWORD PTR [esp+28], 0
	je	L812
	mov	eax, DWORD PTR [esp+20]
	jmp	L813
L812:
	mov	eax, DWORD PTR [esp+8]
L813:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE132:
	.globl	___ashldi3
	.def	___ashldi3;	.scl	2;	.type	32;	.endef
___ashldi3:
LFB133:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+36], 32
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp+56]
	and	eax, DWORD PTR [esp+36]
	je	L816
	mov	DWORD PTR [esp+16], 0
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	jmp	L817
L816:
	cmp	DWORD PTR [esp+56], 0
	jne	L818
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	L820
L818:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+56]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+36]
	sub	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [esp+20], eax
L817:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
L820:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE133:
	.globl	___ashrdi3
	.def	___ashrdi3;	.scl	2;	.type	32;	.endef
___ashrdi3:
LFB134:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+36], 32
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp+56]
	and	eax, DWORD PTR [esp+36]
	je	L823
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+36]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+16], eax
	jmp	L824
L823:
	cmp	DWORD PTR [esp+56], 0
	jne	L825
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	L827
L825:
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+36]
	sub	eax, DWORD PTR [esp+56]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [esp+16], eax
L824:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
L827:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
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
	sub	esp, 24
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 24
	mov	esi, eax
	mov	eax, esi
	mov	esi, eax
	mov	edi, 0
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 8
	mov	ecx, eax
	mov	eax, ecx
	mov	ecx, eax
	mov	ebx, 0
	and	ecx, 65280
	mov	ebx, 0
	or	ecx, esi
	or	ebx, edi
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 24
	shr	edx, 24
	and	eax, 16711680
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shld	edx, eax, 8
	sal	eax, 8
	mov	eax, 0
	and	edx, 255
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	or	eax, ecx
	or	edx, ebx
	mov	ecx, DWORD PTR [esp+16]
	sal	ecx, 8
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR [esp], 0
	and	DWORD PTR [esp+4], 16711680
	mov	ebx, DWORD PTR [esp]
	mov	esi, DWORD PTR [esp+4]
	or	eax, ebx
	or	edx, esi
	mov	ecx, DWORD PTR [esp+16]
	sal	ecx, 24
	mov	DWORD PTR [esp+12], ecx
	mov	DWORD PTR [esp+8], 0
	or	eax, DWORD PTR [esp+8]
	or	edx, DWORD PTR [esp+12]
	add	esp, 24
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
	mov	eax, DWORD PTR [esp+4]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [esp+4]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR [esp+4]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR [esp+4]
	sal	eax, 24
	or	eax, edx
	ret
	.cfi_endproc
LFE136:
	.globl	___clzsi2
	.def	___clzsi2;	.scl	2;	.type	32;	.endef
___clzsi2:
LFB137:
	.cfi_startproc
	sub	esp, 64
	.cfi_def_cfa_offset 68
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+60], eax
	cmp	DWORD PTR [esp+60], 65535
	ja	L835
	mov	eax, 16
	jmp	L836
L835:
	mov	eax, 0
L836:
	mov	DWORD PTR [esp+56], eax
	mov	eax, 16
	sub	eax, DWORD PTR [esp+56]
	mov	edx, DWORD PTR [esp+60]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+52], eax
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+48], eax
	mov	eax, DWORD PTR [esp+52]
	and	eax, 65280
	jne	L837
	mov	eax, 8
	jmp	L838
L837:
	mov	eax, 0
L838:
	mov	DWORD PTR [esp+44], eax
	mov	eax, 8
	sub	eax, DWORD PTR [esp+44]
	mov	edx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+40], eax
	mov	edx, DWORD PTR [esp+48]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	DWORD PTR [esp+36], eax
	mov	eax, DWORD PTR [esp+40]
	and	eax, 240
	jne	L839
	mov	eax, 4
	jmp	L840
L839:
	mov	eax, 0
L840:
	mov	DWORD PTR [esp+32], eax
	mov	eax, 4
	sub	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+40]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+28], eax
	mov	edx, DWORD PTR [esp+36]
	mov	eax, DWORD PTR [esp+32]
	add	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+28]
	and	eax, 12
	jne	L841
	mov	eax, 2
	jmp	L842
L841:
	mov	eax, 0
L842:
	mov	DWORD PTR [esp+20], eax
	mov	eax, 2
	sub	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+16], eax
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+16]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR [esp+16]
	imul	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	add	esp, 64
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE137:
	.globl	___cmpdi2
	.def	___cmpdi2;	.scl	2;	.type	32;	.endef
___cmpdi2:
LFB138:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, eax
	jge	L846
	mov	eax, 0
	jmp	L851
L846:
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, eax
	jle	L848
	mov	eax, 2
	jmp	L851
L848:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L849
	mov	eax, 0
	jmp	L851
L849:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L850
	mov	eax, 2
	jmp	L851
L850:
	mov	eax, 1
L851:
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE138:
	.globl	___aeabi_lcmp
	.def	___aeabi_lcmp;	.scl	2;	.type	32;	.endef
___aeabi_lcmp:
LFB139:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___cmpdi2
	sub	eax, 1
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE139:
	.globl	___ctzsi2
	.def	___ctzsi2;	.scl	2;	.type	32;	.endef
___ctzsi2:
LFB140:
	.cfi_startproc
	sub	esp, 64
	.cfi_def_cfa_offset 68
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+60], eax
	mov	eax, DWORD PTR [esp+60]
	movzx	eax, ax
	test	eax, eax
	jne	L857
	mov	eax, 16
	jmp	L858
L857:
	mov	eax, 0
L858:
	mov	DWORD PTR [esp+56], eax
	mov	eax, DWORD PTR [esp+56]
	mov	edx, DWORD PTR [esp+60]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+52], eax
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+48], eax
	mov	eax, DWORD PTR [esp+52]
	movzx	eax, al
	test	eax, eax
	jne	L859
	mov	eax, 8
	jmp	L860
L859:
	mov	eax, 0
L860:
	mov	DWORD PTR [esp+44], eax
	mov	eax, DWORD PTR [esp+44]
	mov	edx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+40], eax
	mov	edx, DWORD PTR [esp+48]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	DWORD PTR [esp+36], eax
	mov	eax, DWORD PTR [esp+40]
	and	eax, 15
	jne	L861
	mov	eax, 4
	jmp	L862
L861:
	mov	eax, 0
L862:
	mov	DWORD PTR [esp+32], eax
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+40]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+28], eax
	mov	edx, DWORD PTR [esp+36]
	mov	eax, DWORD PTR [esp+32]
	add	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+28]
	and	eax, 3
	jne	L863
	mov	eax, 2
	jmp	L864
L863:
	mov	eax, 0
L864:
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+16]
	and	eax, 3
	mov	DWORD PTR [esp+12], eax
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, DWORD PTR [esp+12]
	not	eax
	and	eax, 1
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR [esp+8]
	add	eax, edx
	add	esp, 64
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE140:
	.globl	___lshrdi3
	.def	___lshrdi3;	.scl	2;	.type	32;	.endef
___lshrdi3:
LFB141:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+36], 32
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp+56]
	and	eax, DWORD PTR [esp+36]
	je	L868
	mov	DWORD PTR [esp+20], 0
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+16], eax
	jmp	L869
L868:
	cmp	DWORD PTR [esp+56], 0
	jne	L870
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	L872
L870:
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+36]
	sub	eax, DWORD PTR [esp+56]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [esp+16], eax
L869:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
L872:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE141:
	.globl	___muldsi3
	.def	___muldsi3;	.scl	2;	.type	32;	.endef
___muldsi3:
LFB142:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 36
	.cfi_def_cfa_offset 48
	mov	DWORD PTR [esp+28], 16
	mov	eax, DWORD PTR [esp+28]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+48]
	and	eax, DWORD PTR [esp+24]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+52]
	and	eax, DWORD PTR [esp+24]
	imul	eax, edx
	mov	DWORD PTR [esp], eax
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp]
	and	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+48]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+52]
	and	eax, DWORD PTR [esp+24]
	imul	edx, eax
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+16], eax
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	and	eax, DWORD PTR [esp+24]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp]
	and	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+48]
	and	eax, DWORD PTR [esp+24]
	imul	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	mov	DWORD PTR [esp+8], eax
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+8]
	and	eax, DWORD PTR [esp+24]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp], eax
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+48]
	mov	ecx, eax
	shr	ebx, cl
	mov	eax, DWORD PTR [esp+28]
	mov	esi, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	esi, cl
	mov	eax, esi
	imul	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	esp, 36
	.cfi_def_cfa_offset 12
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE142:
	.globl	___muldi3_compiler_rt
	.def	___muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
___muldi3_compiler_rt:
LFB143:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 56
	.cfi_def_cfa_offset 64
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+48], eax
	mov	DWORD PTR [esp+52], edx
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+40], eax
	mov	DWORD PTR [esp+44], edx
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	call	___muldsi3
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	ecx, DWORD PTR [esp+36]
	mov	edx, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+40]
	mov	ebx, edx
	imul	ebx, eax
	mov	edx, DWORD PTR [esp+48]
	mov	eax, DWORD PTR [esp+44]
	imul	eax, edx
	add	eax, ebx
	add	eax, ecx
	mov	DWORD PTR [esp+36], eax
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE143:
	.globl	___negdi2
	.def	___negdi2;	.scl	2;	.type	32;	.endef
___negdi2:
LFB144:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	neg	eax
	adc	edx, 0
	neg	edx
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE144:
	.globl	___paritydi2
	.def	___paritydi2;	.scl	2;	.type	32;	.endef
___paritydi2:
LFB145:
	.cfi_startproc
	sub	esp, 44
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+16]
	xor	eax, edx
	mov	DWORD PTR [esp+36], eax
	mov	eax, DWORD PTR [esp+36]
	shr	eax, 16
	xor	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+32], eax
	mov	eax, DWORD PTR [esp+32]
	shr	eax, 8
	xor	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+28]
	shr	eax, 4
	xor	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+24]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	esp, 44
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE145:
	.globl	___paritysi2
	.def	___paritysi2;	.scl	2;	.type	32;	.endef
___paritysi2:
LFB146:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 16
	xor	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	shr	eax, 8
	xor	eax, DWORD PTR [esp+8]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+4]
	shr	eax, 4
	xor	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	esp, 16
	.cfi_def_cfa_offset 4
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
	sub	esp, 56
	.cfi_def_cfa_offset 64
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+48], eax
	mov	DWORD PTR [esp+52], edx
	mov	eax, DWORD PTR [esp+48]
	mov	edx, DWORD PTR [esp+52]
	shrd	eax, edx, 1
	shr	edx
	and	eax, 1431655765
	and	edx, 1431655765
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+48]
	mov	edx, DWORD PTR [esp+52]
	sub	eax, ecx
	sbb	edx, ebx
	mov	DWORD PTR [esp+40], eax
	mov	DWORD PTR [esp+44], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	shrd	eax, edx, 2
	shr	edx, 2
	and	eax, 858993459
	and	edx, 858993459
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	and	eax, 858993459
	and	edx, 858993459
	add	eax, ecx
	adc	edx, ebx
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	shrd	eax, edx, 4
	shr	edx, 4
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	add	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+16]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [esp+16]
	add	eax, edx
	and	eax, 127
	add	esp, 56
	.cfi_def_cfa_offset 8
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
	sub	esp, 32
	.cfi_def_cfa_offset 36
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+28]
	shr	eax
	and	eax, 1431655765
	mov	edx, eax
	mov	eax, DWORD PTR [esp+28]
	sub	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+24]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR [esp+24]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+16]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR [esp+16]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	and	eax, 63
	add	esp, 32
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE148:
	.globl	___powidf2
	.def	___powidf2;	.scl	2;	.type	32;	.endef
___powidf2:
LFB149:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+40]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
	fld1
	fstp	QWORD PTR [esp+16]
L899:
	mov	eax, DWORD PTR [esp+40]
	and	eax, 1
	je	L896
	fld	QWORD PTR [esp+16]
	fmul	QWORD PTR [esp]
	fstp	QWORD PTR [esp+16]
L896:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+40], eax
	cmp	DWORD PTR [esp+40], 0
	je	L903
	fld	QWORD PTR [esp]
	fmul	st, st(0)
	fstp	QWORD PTR [esp]
	jmp	L899
L903:
	cmp	DWORD PTR [esp+12], 0
	je	L900
	fld1
	fdiv	QWORD PTR [esp+16]
	jmp	L902
L900:
	fld	QWORD PTR [esp+16]
L902:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE149:
	.globl	___powisf2
	.def	___powisf2;	.scl	2;	.type	32;	.endef
___powisf2:
LFB150:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [esp+8], eax
	fld1
	fstp	DWORD PTR [esp+12]
L910:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L907
	fld	DWORD PTR [esp+12]
	fmul	DWORD PTR [esp+20]
	fstp	DWORD PTR [esp+12]
L907:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	je	L914
	fld	DWORD PTR [esp+20]
	fmul	st, st(0)
	fstp	DWORD PTR [esp+20]
	jmp	L910
L914:
	cmp	DWORD PTR [esp+8], 0
	je	L911
	fld1
	fdiv	DWORD PTR [esp+12]
	jmp	L913
L911:
	fld	DWORD PTR [esp+12]
L913:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE150:
	.globl	___ucmpdi2
	.def	___ucmpdi2;	.scl	2;	.type	32;	.endef
___ucmpdi2:
LFB151:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, eax
	jnb	L918
	mov	eax, 0
	jmp	L923
L918:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	cmp	edx, eax
	jnb	L920
	mov	eax, 2
	jmp	L923
L920:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L921
	mov	eax, 0
	jmp	L923
L921:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L922
	mov	eax, 2
	jmp	L923
L922:
	mov	eax, 1
L923:
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE151:
	.globl	___aeabi_ulcmp
	.def	___aeabi_ulcmp;	.scl	2;	.type	32;	.endef
___aeabi_ulcmp:
LFB152:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___ucmpdi2
	sub	eax, 1
	add	esp, 36
	.cfi_def_cfa_offset 4
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
