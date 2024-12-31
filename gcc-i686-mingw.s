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
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	cmp	eax, DWORD PTR [esp+12]
	jnb	L2
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+12], eax
	jmp	L3
L4:
	sub	DWORD PTR [esp+8], 1
	sub	DWORD PTR [esp+12], 1
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L3:
	cmp	DWORD PTR [esp+28], 0
	jne	L4
	jmp	L5
L2:
	mov	eax, DWORD PTR [esp+8]
	cmp	eax, DWORD PTR [esp+12]
	je	L5
	jmp	L6
L7:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+12], ecx
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
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, al
	mov	DWORD PTR [esp+28], eax
	jmp	L11
L13:
	sub	DWORD PTR [esp+32], 1
	add	DWORD PTR [esp+8], 1
	add	DWORD PTR [esp+12], 1
L11:
	cmp	DWORD PTR [esp+32], 0
	je	L12
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+28], eax
	jne	L13
L12:
	cmp	DWORD PTR [esp+32], 0
	je	L14
	mov	eax, DWORD PTR [esp+12]
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
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
	jmp	L18
L20:
	add	DWORD PTR [esp+12], 1
	sub	DWORD PTR [esp+28], 1
L18:
	cmp	DWORD PTR [esp+28], 0
	je	L19
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+24], eax
	jne	L20
L19:
	cmp	DWORD PTR [esp+28], 0
	je	L21
	mov	eax, DWORD PTR [esp+12]
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	jmp	L26
L28:
	sub	DWORD PTR [esp+28], 1
	add	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+8], 1
L26:
	cmp	DWORD PTR [esp+28], 0
	je	L27
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	L28
L27:
	cmp	DWORD PTR [esp+28], 0
	je	L29
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	jmp	L31
L29:
	mov	edx, 0
L31:
	mov	eax, edx
	add	esp, 16
	.cfi_def_cfa_offset 4
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
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	jmp	L34
L35:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+12], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L34:
	cmp	DWORD PTR [esp+28], 0
	jne	L35
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
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
	jmp	L39
L41:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+24], eax
	jne	L39
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	jmp	L40
L39:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L41
	mov	eax, 0
L40:
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
	jmp	L44
L45:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
	add	DWORD PTR [esp+12], 1
L44:
	cmp	DWORD PTR [esp+28], 0
	jne	L45
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
	jmp	L49
L50:
	add	DWORD PTR [esp+8], 1
	add	DWORD PTR [esp+4], 1
L49:
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L50
	mov	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
LFE9:
	.globl	_strchrnul
	.def	_strchrnul;	.scl	2;	.type	32;	.endef
_strchrnul:
LFB10:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, al
	mov	DWORD PTR [esp+8], eax
	jmp	L53
L55:
	add	DWORD PTR [esp+4], 1
L53:
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L54
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+8], eax
	jne	L55
L54:
	mov	eax, DWORD PTR [esp+4]
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
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [esp+8], edx
	jne	L58
	ret
L58:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	L60
	mov	eax, 0
	ret
	.cfi_endproc
LFE11:
	.globl	_strcmp
	.def	_strcmp;	.scl	2;	.type	32;	.endef
_strcmp:
LFB12:
	.cfi_startproc
	jmp	L62
L64:
	add	DWORD PTR [esp+4], 1
	add	DWORD PTR [esp+8], 1
L62:
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L63
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L64
L63:
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	mov	eax, edx
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
	jmp	L67
L68:
	add	DWORD PTR [esp+20], 1
L67:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L68
	mov	eax, DWORD PTR [esp+20]
	sub	eax, DWORD PTR [esp+12]
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
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L74
	mov	edx, 0
	jmp	L73
L76:
	add	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+8], 1
	sub	DWORD PTR [esp+28], 1
L74:
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L75
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L75
	cmp	DWORD PTR [esp+28], 0
	je	L75
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	L76
L75:
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
L73:
	mov	eax, edx
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	jmp	L79
L80:
	mov	eax, DWORD PTR [esp+12]
	add	eax, 1
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+8], 2
	add	DWORD PTR [esp+12], 2
	sub	DWORD PTR [esp+28], 2
L79:
	cmp	DWORD PTR [esp+28], 1
	jg	L80
	add	esp, 16
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
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 127
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
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L169
	fld	DWORD PTR [esp+8]
	ret
L169:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L171
	fld	DWORD PTR [esp+4]
	ret
L171:
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L172
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L173
	fld	DWORD PTR [esp+8]
	ret
L173:
	fld	DWORD PTR [esp+4]
	ret
L172:
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L179
	fld	DWORD PTR [esp+8]
	ret
L179:
	fld	DWORD PTR [esp+4]
	ret
	.cfi_endproc
LFE34:
	.globl	_fmaxl
	.def	_fmaxl;	.scl	2;	.type	32;	.endef
_fmaxl:
LFB35:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+4]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L181
	fld	TBYTE PTR [esp+16]
	ret
L181:
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L183
	fld	TBYTE PTR [esp+4]
	ret
L183:
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L184
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L185
	fld	TBYTE PTR [esp+16]
	ret
L185:
	fld	TBYTE PTR [esp+4]
	ret
L184:
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+16]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L191
	fld	TBYTE PTR [esp+16]
	ret
L191:
	fld	TBYTE PTR [esp+4]
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
	jnp	L193
	fld	QWORD PTR [esp]
	jmp	L194
L193:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L195
	fld	QWORD PTR [esp+8]
	jmp	L194
L195:
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
	je	L196
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L197
	fld	QWORD PTR [esp+8]
	jmp	L194
L197:
	fld	QWORD PTR [esp]
	jmp	L194
L196:
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L203
	fld	QWORD PTR [esp+8]
	jmp	L194
L203:
	fld	QWORD PTR [esp]
L194:
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
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L206
	fld	DWORD PTR [esp+8]
	ret
L206:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L208
	fld	DWORD PTR [esp+4]
	ret
L208:
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L209
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L210
	fld	DWORD PTR [esp+4]
	ret
L210:
	fld	DWORD PTR [esp+8]
	ret
L209:
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L216
	fld	DWORD PTR [esp+4]
	ret
L216:
	fld	DWORD PTR [esp+8]
	ret
	.cfi_endproc
LFE37:
	.globl	_fminl
	.def	_fminl;	.scl	2;	.type	32;	.endef
_fminl:
LFB38:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+4]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L218
	fld	TBYTE PTR [esp+16]
	ret
L218:
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+16]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	L220
	fld	TBYTE PTR [esp+4]
	ret
L220:
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	L221
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	L222
	fld	TBYTE PTR [esp+4]
	ret
L222:
	fld	TBYTE PTR [esp+16]
	ret
L221:
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+16]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L228
	fld	TBYTE PTR [esp+4]
	ret
L228:
	fld	TBYTE PTR [esp+16]
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
	jmp	L230
L231:
	mov	eax, DWORD PTR [esp+8]
	and	eax, 63
	movzx	edx, BYTE PTR _digits[eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	add	DWORD PTR [esp+12], 1
	shr	DWORD PTR [esp+8], 6
L230:
	cmp	DWORD PTR [esp+8], 0
	jne	L231
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
	mov	eax, DWORD PTR _seed
	mov	edx, DWORD PTR _seed+4
	imul	ecx, edx, 1284865837
	imul	edx, eax, 1481765933
	add	ecx, edx
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	cmp	DWORD PTR [esp+8], 0
	jne	L238
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax+4], 0
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	jmp	L237
L238:
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	L237
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [eax+4], edx
L237:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.globl	_remque
	.def	_remque;	.scl	2;	.type	32;	.endef
_remque:
LFB43:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	L242
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], edx
L242:
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	L241
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
L241:
	add	esp, 16
	.cfi_def_cfa_offset 4
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
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+56]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+28], 0
	jmp	L247
L250:
	mov	edx, ebx
	imul	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	call	eax
	test	eax, eax
	jne	L248
	imul	ebx, DWORD PTR [esp+28]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	jmp	L249
L248:
	add	DWORD PTR [esp+28], 1
L247:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+16]
	jb	L250
	mov	eax, DWORD PTR [esp+16]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [eax], edx
	imul	ebx, DWORD PTR [esp+16]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+20]
	add	edx, eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	_memcpy
L249:
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
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+56]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+28], 0
	jmp	L253
L256:
	mov	edx, ebx
	imul	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	call	eax
	test	eax, eax
	jne	L254
	imul	ebx, DWORD PTR [esp+28]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	jmp	L255
L254:
	add	DWORD PTR [esp+28], 1
L253:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+16]
	jb	L256
	mov	eax, 0
L255:
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
	jmp	L261
L262:
	add	DWORD PTR [esp+24], 1
L261:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L262
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	L263
	cmp	eax, 45
	jne	L265
	mov	DWORD PTR [esp+12], 1
L263:
	add	DWORD PTR [esp+24], 1
	jmp	L265
L266:
	mov	edx, DWORD PTR [esp+16]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+24]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+24], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [esp+16], eax
L265:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L266
	cmp	DWORD PTR [esp+12], 0
	jne	L267
	mov	eax, DWORD PTR [esp+16]
	neg	eax
	jmp	L269
L267:
	mov	eax, DWORD PTR [esp+16]
L269:
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
	jmp	L272
L273:
	add	DWORD PTR [esp+24], 1
L272:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L273
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	L274
	cmp	eax, 45
	jne	L276
	mov	DWORD PTR [esp+12], 1
L274:
	add	DWORD PTR [esp+24], 1
	jmp	L276
L277:
	mov	edx, DWORD PTR [esp+16]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+24]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+24], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [esp+16], eax
L276:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L277
	cmp	DWORD PTR [esp+12], 0
	jne	L278
	mov	eax, DWORD PTR [esp+16]
	neg	eax
	jmp	L280
L278:
	mov	eax, DWORD PTR [esp+16]
L280:
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
	jmp	L283
L284:
	add	DWORD PTR [esp+28], 1
L283:
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp], eax
	call	_isspace
	test	eax, eax
	jne	L284
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	L285
	cmp	eax, 45
	jne	L287
	mov	DWORD PTR [esp+8], 1
L285:
	add	DWORD PTR [esp+28], 1
	jmp	L287
L288:
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
	movzx	ecx, BYTE PTR [ecx]
	movsx	ecx, cl
	sub	ecx, 48
	mov	ebx, ecx
	sar	ebx, 31
	sub	eax, ecx
	sbb	edx, ebx
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+16], edx
L287:
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	L288
	cmp	DWORD PTR [esp+8], 0
	jne	L289
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	neg	eax
	adc	edx, 0
	neg	edx
	jmp	L291
L289:
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
L291:
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
	jmp	L294
L299:
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
	jns	L295
	mov	eax, DWORD PTR [esp+56]
	shr	eax
	mov	DWORD PTR [esp+56], eax
	jmp	L294
L295:
	cmp	DWORD PTR [esp+24], 0
	jle	L297
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
	jmp	L294
L297:
	mov	eax, DWORD PTR [esp+28]
	jmp	L298
L294:
	cmp	DWORD PTR [esp+56], 0
	jne	L299
	mov	eax, 0
L298:
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
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+24], eax
	jmp	L302
L306:
	mov	eax, DWORD PTR [esp+24]
	sar	eax
	imul	eax, DWORD PTR [esp+60]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	call	eax
	mov	DWORD PTR [esp+16], eax
	cmp	DWORD PTR [esp+16], 0
	jne	L303
	mov	eax, DWORD PTR [esp+20]
	jmp	L304
L303:
	cmp	DWORD PTR [esp+16], 0
	jle	L305
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+60]
	add	eax, edx
	mov	DWORD PTR [esp+28], eax
	sub	DWORD PTR [esp+24], 1
L305:
	sar	DWORD PTR [esp+24]
L302:
	cmp	DWORD PTR [esp+24], 0
	jne	L306
	mov	eax, 0
L304:
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
	cmovns	edx, ebx
	cmovs	eax, ecx
	mov	ecx, edx
	mov	edx, eax
	mov	eax, ecx
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
	cmovns	edx, ebx
	cmovs	eax, ecx
	mov	ecx, edx
	mov	edx, eax
	mov	eax, ecx
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
	jmp	L329
L331:
	add	DWORD PTR [esp+8], 2
L329:
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L330
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [esp], ax
	jne	L331
L330:
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L332
	mov	eax, DWORD PTR [esp+8]
	jmp	L334
L332:
	mov	eax, 0
L334:
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
	jmp	L337
L339:
	add	DWORD PTR [esp+4], 2
	add	DWORD PTR [esp+8], 2
L337:
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L338
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L338
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L339
L338:
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L340
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	ret
L340:
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
L344:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+2]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+20]
	lea	ecx, [eax+2]
	mov	DWORD PTR [esp+20], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L344
	mov	eax, DWORD PTR [esp+12]
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
	jmp	L348
L349:
	add	DWORD PTR [esp+20], 2
L348:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L349
	mov	eax, DWORD PTR [esp+20]
	sub	eax, DWORD PTR [esp+12]
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
	jmp	L353
L355:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 2
	add	DWORD PTR [esp+8], 2
L353:
	cmp	DWORD PTR [esp+12], 0
	je	L354
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jne	L354
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	je	L354
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	test	ax, ax
	jne	L355
L354:
	cmp	DWORD PTR [esp+12], 0
	je	L356
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L357
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	ret
L357:
	mov	eax, -1
	ret
L356:
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
	jmp	L362
L364:
	sub	DWORD PTR [esp+16], 1
	add	DWORD PTR [esp+8], 2
L362:
	cmp	DWORD PTR [esp+16], 0
	je	L363
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	WORD PTR [esp], ax
	jne	L364
L363:
	cmp	DWORD PTR [esp+16], 0
	je	L365
	mov	eax, DWORD PTR [esp+8]
	jmp	L367
L365:
	mov	eax, 0
L367:
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
	jmp	L370
L372:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 2
	add	DWORD PTR [esp+8], 2
L370:
	cmp	DWORD PTR [esp+12], 0
	je	L371
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	je	L372
L371:
	cmp	DWORD PTR [esp+12], 0
	je	L373
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	dx, ax
	jb	L374
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, WORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [eax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	ret
L374:
	mov	eax, -1
	ret
L373:
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
	jmp	L379
L380:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+2]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+20]
	lea	ecx, [eax+2]
	mov	DWORD PTR [esp+20], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L379:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L380
	mov	eax, DWORD PTR [esp+12]
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
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jne	L384
	mov	eax, DWORD PTR [esp+20]
	jmp	L385
L384:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	sub	edx, eax
	mov	eax, DWORD PTR [esp+28]
	add	eax, eax
	cmp	edx, eax
	jnb	L390
	jmp	L387
L388:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [esp+20]
	add	edx, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
L387:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L388
	jmp	L389
L391:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+2]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+20]
	lea	ecx, [eax+2]
	mov	DWORD PTR [esp+20], ecx
	movzx	edx, WORD PTR [edx]
	mov	WORD PTR [eax], dx
L390:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L391
L389:
	mov	eax, DWORD PTR [esp+12]
L385:
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
	jmp	L394
L395:
	mov	eax, DWORD PTR [esp+24]
	lea	edx, [eax+2]
	mov	DWORD PTR [esp+24], edx
	movzx	edx, WORD PTR [esp]
	mov	WORD PTR [eax], dx
L394:
	mov	eax, DWORD PTR [esp+32]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+32], edx
	test	eax, eax
	jne	L395
	mov	eax, DWORD PTR [esp+16]
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
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+8]
	jnb	L399
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+8], eax
	jmp	L400
L401:
	sub	DWORD PTR [esp+12], 1
	sub	DWORD PTR [esp+8], 1
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L400:
	cmp	DWORD PTR [esp+28], 0
	jne	L401
	jmp	L398
L399:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+8]
	je	L398
	jmp	L403
L404:
	mov	edx, DWORD PTR [esp+12]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+8]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+8], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L403:
	cmp	DWORD PTR [esp+28], 0
	jne	L404
L398:
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
	je	L410
	mov	edi, esi
	xor	esi, esi
L410:
	mov	ecx, DWORD PTR [esp+32]
	neg	ecx
	and	ecx, 63
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	L411
	mov	eax, edx
	xor	edx, edx
L411:
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
	je	L415
	mov	esi, edi
	xor	edi, edi
L415:
	mov	ecx, DWORD PTR [esp+32]
	neg	ecx
	and	ecx, 63
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	L416
	mov	edx, eax
	xor	eax, eax
L416:
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
	movzx	eax, WORD PTR [esp]
	movzx	edx, WORD PTR [esp+18]
	sal	edx, 8
	and	eax, edx
	sar	eax, 8
	mov	ecx, eax
	movzx	edx, WORD PTR [esp]
	movzx	eax, WORD PTR [esp+18]
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
	jmp	L447
L450:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L448
	mov	eax, DWORD PTR [esp+12]
	add	eax, 1
	jmp	L449
L448:
	add	DWORD PTR [esp+12], 1
L447:
	cmp	DWORD PTR [esp+12], 31
	jbe	L450
	mov	eax, 0
L449:
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
	jne	L453
	mov	eax, 0
	jmp	L454
L453:
	mov	ebx, 1
	jmp	L455
L456:
	sar	eax
	add	ebx, 1
L455:
	mov	edx, eax
	and	edx, 1
	je	L456
	mov	eax, ebx
L454:
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
	ja	L459
	fld	DWORD PTR LC4
	fld	DWORD PTR [esp+4]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L464
L459:
	mov	eax, 1
	ret
L464:
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
	ja	L466
	fld	QWORD PTR LC6
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L471
L466:
	mov	eax, 1
	jmp	L470
L471:
	mov	eax, 0
L470:
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
	ja	L474
	fld	TBYTE PTR LC8
	fld	TBYTE PTR [esp+4]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L479
L474:
	mov	eax, 1
	ret
L479:
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
	jp	L482
	fld	DWORD PTR [esp+20]
	fadd	st, st(0)
	fld	DWORD PTR [esp+20]
	fucomip	st, st(1)
	jp	L493
	fld	DWORD PTR [esp+20]
	fucomip	st, st(1)
	fstp	st(0)
	je	L482
	jmp	L490
L493:
	fstp	st(0)
L490:
	cmp	DWORD PTR [esp+24], 0
	jns	L484
	fld	DWORD PTR LC9
	jmp	L485
L484:
	fld	DWORD PTR LC10
L485:
	fstp	DWORD PTR [esp+12]
L488:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L486
	fld	DWORD PTR [esp+20]
	fmul	DWORD PTR [esp+12]
	fstp	DWORD PTR [esp+20]
L486:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	je	L482
	fld	DWORD PTR [esp+12]
	fmul	st, st(0)
	fstp	DWORD PTR [esp+12]
	jmp	L488
L482:
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
	jp	L495
	fld	QWORD PTR [esp]
	fadd	st, st(0)
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	jp	L506
	fld	QWORD PTR [esp]
	fucomip	st, st(1)
	fstp	st(0)
	je	L495
	jmp	L503
L506:
	fstp	st(0)
L503:
	cmp	DWORD PTR [esp+40], 0
	jns	L497
	fld	QWORD PTR LC11
	jmp	L498
L497:
	fld	QWORD PTR LC12
L498:
	fstp	QWORD PTR [esp+16]
L501:
	mov	eax, DWORD PTR [esp+40]
	and	eax, 1
	je	L499
	fld	QWORD PTR [esp]
	fmul	QWORD PTR [esp+16]
	fstp	QWORD PTR [esp]
L499:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+40], eax
	cmp	DWORD PTR [esp+40], 0
	je	L495
	fld	QWORD PTR [esp+16]
	fmul	st, st(0)
	fstp	QWORD PTR [esp+16]
	jmp	L501
L495:
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
	jp	L508
	fld	TBYTE PTR [esp+20]
	fadd	st, st(0)
	fld	TBYTE PTR [esp+20]
	fucomip	st, st(1)
	jp	L519
	fld	TBYTE PTR [esp+20]
	fucomip	st, st(1)
	fstp	st(0)
	je	L508
	jmp	L516
L519:
	fstp	st(0)
L516:
	cmp	DWORD PTR [esp+32], 0
	jns	L510
	fld	TBYTE PTR LC13
	jmp	L511
L510:
	fld	TBYTE PTR LC14
L511:
	fstp	TBYTE PTR [esp+4]
L514:
	mov	eax, DWORD PTR [esp+32]
	and	eax, 1
	je	L512
	fld	TBYTE PTR [esp+20]
	fld	TBYTE PTR [esp+4]
	fmulp	st(1), st
	fstp	TBYTE PTR [esp+20]
L512:
	mov	eax, DWORD PTR [esp+32]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+32], eax
	cmp	DWORD PTR [esp+32], 0
	je	L508
	fld	TBYTE PTR [esp+4]
	fmul	st, st(0)
	fstp	TBYTE PTR [esp+4]
	jmp	L514
L508:
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
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	jmp	L521
L522:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+12], edx
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+8], edx
	movzx	edx, BYTE PTR [eax]
	xor	edx, ecx
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
L521:
	cmp	DWORD PTR [esp+28], 0
	jne	L522
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
	jmp	L526
L528:
	add	DWORD PTR [esp+28], 1
	add	DWORD PTR [esp+16], 1
	sub	DWORD PTR [esp+32], 1
L526:
	cmp	DWORD PTR [esp+32], 0
	je	L527
	mov	eax, DWORD PTR [esp+28]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+16]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+16]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L528
L527:
	cmp	DWORD PTR [esp+32], 0
	jne	L529
	mov	eax, DWORD PTR [esp+16]
	mov	BYTE PTR [eax], 0
L529:
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
	jmp	L533
L538:
	add	DWORD PTR [esp+12], 1
L533:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+24]
	jnb	L534
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L538
L534:
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
	jmp	L541
L545:
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+12], eax
	jmp	L542
L544:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+12], edx
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L542
	mov	eax, DWORD PTR [esp+20]
	jmp	L543
L542:
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L544
	add	DWORD PTR [esp+20], 1
L541:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L545
	mov	eax, 0
L543:
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
L549:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [esp+24], edx
	jne	L548
	mov	DWORD PTR [esp+12], eax
L548:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	L549
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
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+20], 0
	jne	L555
	mov	eax, DWORD PTR [esp+32]
	jmp	L554
L557:
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	call	_strncmp
	test	eax, eax
	jne	L556
	mov	eax, DWORD PTR [esp+24]
	jmp	L554
L556:
	add	DWORD PTR [esp+24], 1
L555:
	mov	eax, DWORD PTR [esp+36]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	call	_strchr
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	jne	L557
	mov	eax, 0
L554:
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
	jbe	L560
	fldz
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	ja	L562
L560:
	fldz
	fld	QWORD PTR [esp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L563
	fld	QWORD PTR [esp]
	fldz
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L563
L562:
	fld	QWORD PTR [esp+8]
	fchs
	jmp	L566
L563:
	fld	QWORD PTR [esp+8]
L566:
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
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+44], 0
	jne	L571
	mov	eax, DWORD PTR [esp+32]
	jmp	L572
L571:
	mov	eax, DWORD PTR [esp+36]
	cmp	eax, DWORD PTR [esp+44]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	L573
	mov	eax, 0
	jmp	L572
L573:
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+24], eax
	jmp	L574
L576:
	mov	eax, DWORD PTR [esp+24]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+40]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	L575
	mov	eax, DWORD PTR [esp+44]
	lea	ecx, [eax-1]
	mov	eax, DWORD PTR [esp+40]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+24]
	add	eax, 1
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_memcmp
	test	eax, eax
	jne	L575
	mov	eax, DWORD PTR [esp+24]
	jmp	L572
L575:
	add	DWORD PTR [esp+24], 1
L574:
	mov	eax, DWORD PTR [esp+24]
	cmp	DWORD PTR [esp+20], eax
	jnb	L576
	mov	eax, 0
L572:
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
	jbe	L582
	fld	QWORD PTR [esp]
	fchs
	fstp	QWORD PTR [esp]
	mov	DWORD PTR [esp+20], 1
L582:
	fld1
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jb	L599
	jmp	L586
L587:
	add	DWORD PTR [esp+16], 1
	fld	QWORD PTR [esp]
	fld	QWORD PTR LC12
	fdivp	st(1), st
	fstp	QWORD PTR [esp]
L586:
	fld1
	fld	QWORD PTR [esp]
	fcomip	st, st(1)
	fstp	st(0)
	jnb	L587
	jmp	L588
L599:
	fld	QWORD PTR [esp]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L588
	fld	QWORD PTR [esp]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	jp	L591
	fld	QWORD PTR [esp]
	fldz
	fucomip	st, st(1)
	fstp	st(0)
	je	L588
	jmp	L591
L592:
	sub	DWORD PTR [esp+16], 1
	fld	QWORD PTR [esp]
	fadd	st, st(0)
	fstp	QWORD PTR [esp]
L591:
	fld	QWORD PTR [esp]
	fld	QWORD PTR LC11
	fcomip	st, st(1)
	fstp	st(0)
	ja	L592
L588:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+16]
	mov	DWORD PTR [eax], edx
	cmp	DWORD PTR [esp+20], 0
	je	L593
	fld	QWORD PTR [esp]
	fchs
	fstp	QWORD PTR [esp]
L593:
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
	jmp	L602
L604:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	and	eax, 1
	mov	edx, 0
	mov	ecx, eax
	or	ecx, edx
	je	L603
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	DWORD PTR [esp+24], eax
	adc	DWORD PTR [esp+28], edx
L603:
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
L602:
	mov	eax, DWORD PTR [esp+16]
	or	eax, DWORD PTR [esp+20]
	jne	L604
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
	jmp	L608
L610:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
L608:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	L611
	cmp	DWORD PTR [esp+12], 0
	je	L611
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	L610
	jmp	L611
L613:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L612
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
L612:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
L611:
	cmp	DWORD PTR [esp+12], 0
	jne	L613
	cmp	DWORD PTR [esp+28], 0
	je	L614
	mov	eax, DWORD PTR [esp+20]
	jmp	L615
L614:
	mov	eax, DWORD PTR [esp+8]
L615:
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
	jns	L618
	not	BYTE PTR [esp]
L618:
	cmp	BYTE PTR [esp], 0
	jne	L619
	mov	eax, 7
	jmp	L620
L619:
	movsx	eax, BYTE PTR [esp]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+16]
	sub	eax, 1
L620:
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
	jns	L623
	not	DWORD PTR [esp]
	not	DWORD PTR [esp+4]
L623:
	mov	eax, DWORD PTR [esp]
	or	eax, DWORD PTR [esp+4]
	jne	L624
	mov	eax, 63
	jmp	L625
L624:
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+4]
	test	eax, eax
	je	L626
	bsr	eax, eax
	xor	eax, 31
	jmp	L627
L626:
	bsr	eax, edx
	xor	eax, 31
	add	eax, 32
L627:
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	sub	eax, 1
L625:
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
	jmp	L630
L632:
	mov	eax, DWORD PTR [esp+20]
	and	eax, 1
	je	L631
	mov	eax, DWORD PTR [esp+24]
	add	DWORD PTR [esp+12], eax
L631:
	shr	DWORD PTR [esp+20]
	sal	DWORD PTR [esp+24]
L630:
	cmp	DWORD PTR [esp+20], 0
	jne	L632
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
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+48]
	shr	eax, 3
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+48]
	and	eax, -8
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+16]
	cmp	eax, DWORD PTR [esp+12]
	jb	L636
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+48]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+16]
	jnb	L643
L636:
	mov	DWORD PTR [esp+28], 0
	jmp	L638
L639:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [0+edx*8]
	mov	edx, DWORD PTR [esp+40]
	add	ecx, edx
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	add	DWORD PTR [esp+28], 1
L638:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+20]
	jb	L639
	jmp	L640
L641:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+24]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+24], 1
L640:
	mov	eax, DWORD PTR [esp+48]
	cmp	DWORD PTR [esp+24], eax
	jb	L641
	jmp	L642
L644:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+48]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+48]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L643:
	mov	eax, DWORD PTR [esp+48]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+48], edx
	test	eax, eax
	jne	L644
L642:
	nop
	add	esp, 36
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
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, DWORD PTR [esp]
	jb	L647
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+4]
	jnb	L653
L647:
	mov	DWORD PTR [esp+12], 0
	jmp	L649
L650:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	edx, DWORD PTR [esp+12]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [esp+20]
	add	edx, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
	add	DWORD PTR [esp+12], 1
L649:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+8]
	jb	L650
	mov	eax, DWORD PTR [esp+28]
	and	eax, 1
	je	L652
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR [esp]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [edx-1]
	mov	edx, DWORD PTR [esp+4]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	jmp	L652
L654:
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+28]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L653:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	L654
L652:
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
	sub	esp, 32
	.cfi_def_cfa_offset 36
	mov	eax, DWORD PTR [esp+44]
	shr	eax, 2
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+44]
	and	eax, -4
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+16]
	cmp	eax, DWORD PTR [esp+12]
	jb	L657
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+16]
	jnb	L664
L657:
	mov	DWORD PTR [esp+28], 0
	jmp	L659
L660:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [esp+40]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [0+edx*4]
	mov	edx, DWORD PTR [esp+36]
	add	edx, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
	add	DWORD PTR [esp+28], 1
L659:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+20]
	jb	L660
	jmp	L661
L662:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+24]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+24], 1
L661:
	mov	eax, DWORD PTR [esp+44]
	cmp	DWORD PTR [esp+24], eax
	jb	L662
	jmp	L663
L665:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+44]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
L664:
	mov	eax, DWORD PTR [esp+44]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+44], edx
	test	eax, eax
	jne	L665
L663:
	nop
	add	esp, 32
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
	jns	L676
	fld	TBYTE PTR LC16
	faddp	st(1), st
L676:
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
	jns	L680
	fld	TBYTE PTR LC16
	faddp	st(1), st
L680:
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
	jmp	L686
L689:
	movzx	edx, WORD PTR [esp]
	mov	eax, 15
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	L688
	add	DWORD PTR [esp+16], 1
L686:
	cmp	DWORD PTR [esp+16], 15
	jle	L689
L688:
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
	jmp	L694
L697:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	L696
	add	DWORD PTR [esp+16], 1
L694:
	cmp	DWORD PTR [esp+16], 15
	jle	L697
L696:
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
	jb	L706
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
	jmp	L704
L706:
	fld	DWORD PTR [esp+12]
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
L704:
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
	jmp	L709
L711:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L710
	add	DWORD PTR [esp+12], 1
L710:
	add	DWORD PTR [esp+16], 1
L709:
	cmp	DWORD PTR [esp+16], 15
	jle	L711
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
	jmp	L715
L717:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	L716
	add	DWORD PTR [esp+12], 1
L716:
	add	DWORD PTR [esp+16], 1
L715:
	cmp	DWORD PTR [esp+16], 15
	jle	L717
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
	jmp	L721
L723:
	mov	eax, DWORD PTR [esp+20]
	and	eax, 1
	je	L722
	mov	eax, DWORD PTR [esp+24]
	add	DWORD PTR [esp+12], eax
L722:
	shr	DWORD PTR [esp+20]
	sal	DWORD PTR [esp+24]
L721:
	cmp	DWORD PTR [esp+20], 0
	jne	L723
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
	jne	L729
	mov	eax, 0
	jmp	L728
L731:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L730
	mov	eax, DWORD PTR [esp+20]
	add	DWORD PTR [esp+12], eax
L730:
	sal	DWORD PTR [esp+20]
	shr	DWORD PTR [esp+24]
L729:
	cmp	DWORD PTR [esp+24], 0
	jne	L731
	mov	eax, DWORD PTR [esp+12]
L728:
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
	jmp	L734
L736:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
L734:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	L737
	cmp	DWORD PTR [esp+12], 0
	je	L737
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	L736
	jmp	L737
L739:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L738
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
L738:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
L737:
	cmp	DWORD PTR [esp+12], 0
	jne	L739
	cmp	DWORD PTR [esp+28], 0
	je	L740
	mov	eax, DWORD PTR [esp+20]
	jmp	L741
L740:
	mov	eax, DWORD PTR [esp+8]
L741:
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
	jbe	L751
	mov	eax, -1
	ret
L751:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L752
	mov	eax, 1
	ret
L752:
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
	jbe	L761
	mov	eax, -1
	jmp	L756
L761:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	L762
	mov	eax, 1
	jmp	L756
L762:
	mov	eax, 0
L756:
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
	jns	L771
	neg	DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], 1
L771:
	mov	BYTE PTR [esp+15], 0
	jmp	L772
L775:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L773
	mov	eax, DWORD PTR [esp+20]
	add	DWORD PTR [esp+4], eax
L773:
	sal	DWORD PTR [esp+20]
	sar	DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [esp+15]
	add	eax, 1
	mov	BYTE PTR [esp+15], al
L772:
	cmp	DWORD PTR [esp+24], 0
	je	L774
	movzx	eax, BYTE PTR [esp+15]
	cmp	al, 31
	jbe	L775
L774:
	cmp	DWORD PTR [esp+8], 0
	je	L776
	mov	eax, DWORD PTR [esp+4]
	neg	eax
	jmp	L778
L776:
	mov	eax, DWORD PTR [esp+4]
L778:
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
	jns	L781
	neg	DWORD PTR [esp+32]
	cmp	DWORD PTR [esp+24], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
L781:
	cmp	DWORD PTR [esp+36], 0
	jns	L782
	neg	DWORD PTR [esp+36]
	cmp	DWORD PTR [esp+24], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
L782:
	mov	edx, DWORD PTR [esp+36]
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+24], 0
	je	L783
	neg	DWORD PTR [esp+20]
L783:
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
	jns	L787
	neg	DWORD PTR [esp+32]
	mov	DWORD PTR [esp+24], 1
L787:
	cmp	DWORD PTR [esp+36], 0
	jns	L788
	neg	DWORD PTR [esp+36]
L788:
	mov	edx, DWORD PTR [esp+36]
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___udivmodsi4
	mov	DWORD PTR [esp+20], eax
	cmp	DWORD PTR [esp+24], 0
	je	L789
	neg	DWORD PTR [esp+20]
L789:
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
	jmp	L793
L795:
	sal	WORD PTR [esp]
	sal	WORD PTR [esp+22]
L793:
	movzx	eax, WORD PTR [esp]
	cmp	ax, WORD PTR [esp+4]
	jnb	L796
	cmp	WORD PTR [esp+22], 0
	je	L796
	movzx	eax, WORD PTR [esp]
	test	ax, ax
	jns	L795
	jmp	L796
L798:
	movzx	eax, WORD PTR [esp+4]
	cmp	ax, WORD PTR [esp]
	jb	L797
	movzx	eax, WORD PTR [esp]
	sub	WORD PTR [esp+4], ax
	movzx	eax, WORD PTR [esp+22]
	or	WORD PTR [esp+20], ax
L797:
	shr	WORD PTR [esp+22]
	shr	WORD PTR [esp]
L796:
	cmp	WORD PTR [esp+22], 0
	jne	L798
	cmp	DWORD PTR [esp+36], 0
	je	L799
	movzx	eax, WORD PTR [esp+4]
	jmp	L800
L799:
	movzx	eax, WORD PTR [esp+20]
L800:
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
	jmp	L803
L805:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
L803:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	L806
	cmp	DWORD PTR [esp+12], 0
	je	L806
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	L805
	jmp	L806
L808:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	L807
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
L807:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
L806:
	cmp	DWORD PTR [esp+12], 0
	jne	L808
	cmp	DWORD PTR [esp+28], 0
	je	L809
	mov	eax, DWORD PTR [esp+20]
	jmp	L810
L809:
	mov	eax, DWORD PTR [esp+8]
L810:
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
	je	L813
	mov	DWORD PTR [esp+16], 0
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	jmp	L814
L813:
	cmp	DWORD PTR [esp+56], 0
	jne	L815
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	L817
L815:
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
L814:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
L817:
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
	je	L820
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
	jmp	L821
L820:
	cmp	DWORD PTR [esp+56], 0
	jne	L822
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	L824
L822:
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
L821:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
L824:
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
	mov	eax, ecx
	mov	edx, ebx
	and	eax, 65280
	mov	edx, 0
	or	esi, eax
	or	edi, edx
	mov	ecx, esi
	mov	ebx, edi
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
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	sal	eax, 8
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], 0
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	eax, 0
	and	edx, 16711680
	or	eax, ecx
	or	edx, ebx
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	cmp	DWORD PTR [esp+12], 65535
	ja	L832
	mov	eax, 16
	jmp	L833
L832:
	mov	eax, 0
L833:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 16
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 65280
	jne	L834
	mov	eax, 8
	jmp	L835
L834:
	mov	eax, 0
L835:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 8
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 240
	jne	L836
	mov	eax, 4
	jmp	L837
L836:
	mov	eax, 0
L837:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 4
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 12
	jne	L838
	mov	eax, 2
	jmp	L839
L838:
	mov	eax, 0
L839:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 2
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR [esp+12]
	imul	edx, eax
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	add	esp, 16
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
	jge	L843
	mov	eax, 0
	jmp	L848
L843:
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, eax
	jle	L845
	mov	eax, 2
	jmp	L848
L845:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L846
	mov	eax, 0
	jmp	L848
L846:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L847
	mov	eax, 2
	jmp	L848
L847:
	mov	eax, 1
L848:
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, ax
	test	eax, eax
	jne	L854
	mov	eax, 16
	jmp	L855
L854:
	mov	eax, 0
L855:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, al
	test	eax, eax
	jne	L856
	mov	eax, 8
	jmp	L857
L856:
	mov	eax, 0
L857:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 15
	jne	L858
	mov	eax, 4
	jmp	L859
L858:
	mov	eax, 0
L859:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 3
	jne	L860
	mov	eax, 2
	jmp	L861
L860:
	mov	eax, 0
L861:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	and	DWORD PTR [esp+12], 3
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	not	eax
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, ecx
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	add	esp, 16
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
	je	L865
	mov	DWORD PTR [esp+20], 0
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+16], eax
	jmp	L866
L865:
	cmp	DWORD PTR [esp+56], 0
	jne	L867
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	L869
L867:
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
L866:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
L869:
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
	mov	DWORD PTR [esp+8], eax
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+8]
	and	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+48]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+52]
	and	eax, DWORD PTR [esp+24]
	imul	eax, edx
	add	DWORD PTR [esp+20], eax
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+20]
	and	eax, DWORD PTR [esp+24]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+8]
	and	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+48]
	and	eax, DWORD PTR [esp+24]
	imul	eax, edx
	add	DWORD PTR [esp+20], eax
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+20]
	and	eax, DWORD PTR [esp+24]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	add	eax, ebx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	mov	esi, eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+48]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	ebx, cl
	mov	eax, ebx
	imul	eax, edx
	add	eax, esi
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
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
	mov	edx, DWORD PTR [esp+40]
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___muldsi3
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	eax, DWORD PTR [esp+36]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+52]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+40]
	imul	edx, eax
	mov	eax, DWORD PTR [esp+48]
	mov	ecx, DWORD PTR [esp+44]
	imul	eax, ecx
	add	eax, edx
	add	eax, ebx
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
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+12]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+8]
	xor	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 16
	xor	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 8
	xor	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 4
	xor	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	esp, 28
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
	xor	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 8
	xor	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 4
	xor	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
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
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 1
	shr	edx
	and	eax, 1431655765
	and	edx, 1431655765
	sub	DWORD PTR [esp+16], eax
	sbb	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 2
	shr	edx, 2
	and	eax, 858993459
	and	edx, 858993459
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	and	eax, 858993459
	and	edx, 858993459
	add	eax, ecx
	adc	edx, ebx
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 4
	shr	edx, 4
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 16
	add	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	and	eax, 127
	add	esp, 24
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
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax
	and	eax, 1431655765
	sub	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 16
	add	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	and	eax, 63
	add	esp, 16
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
L896:
	mov	eax, DWORD PTR [esp+40]
	and	eax, 1
	je	L893
	fld	QWORD PTR [esp+16]
	fmul	QWORD PTR [esp]
	fstp	QWORD PTR [esp+16]
L893:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+40], eax
	cmp	DWORD PTR [esp+40], 0
	je	L900
	fld	QWORD PTR [esp]
	fmul	st, st(0)
	fstp	QWORD PTR [esp]
	jmp	L896
L900:
	cmp	DWORD PTR [esp+12], 0
	je	L897
	fld1
	fdiv	QWORD PTR [esp+16]
	jmp	L899
L897:
	fld	QWORD PTR [esp+16]
L899:
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
L907:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	L904
	fld	DWORD PTR [esp+12]
	fmul	DWORD PTR [esp+20]
	fstp	DWORD PTR [esp+12]
L904:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	je	L911
	fld	DWORD PTR [esp+20]
	fmul	st, st(0)
	fstp	DWORD PTR [esp+20]
	jmp	L907
L911:
	cmp	DWORD PTR [esp+8], 0
	je	L908
	fld1
	fdiv	DWORD PTR [esp+12]
	jmp	L910
L908:
	fld	DWORD PTR [esp+12]
L910:
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
	jnb	L915
	mov	eax, 0
	jmp	L920
L915:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	cmp	edx, eax
	jnb	L917
	mov	eax, 2
	jmp	L920
L917:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L918
	mov	eax, 0
	jmp	L920
L918:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	L919
	mov	eax, 2
	jmp	L920
L919:
	mov	eax, 1
L920:
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
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 32
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+20], eax
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+8], ecx
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___ucmpdi2
	sub	eax, 1
	add	esp, 32
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
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
