	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR [rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR [rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	QWORD PTR 56[rsp], rdx
	mov	QWORD PTR 64[rsp], r8
	mov	rax, QWORD PTR 56[rsp]
	cmp	rax, QWORD PTR 48[rsp]
	jnb	.L6
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 64[rsp]
	add	rax, rdx
	mov	QWORD PTR 8[rsp], rax
	mov	rdx, QWORD PTR 48[rsp]
	mov	rax, QWORD PTR 64[rsp]
	add	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	jmp	.L7
.L8:
	sub	QWORD PTR 8[rsp], 1
	sub	QWORD PTR 24[rsp], 1
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 24[rsp]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 64[rsp], 1
.L7:
	cmp	QWORD PTR 64[rsp], 0
	jne	.L8
	jmp	.L9
.L6:
	mov	rax, QWORD PTR 56[rsp]
	cmp	rax, QWORD PTR 48[rsp]
	je	.L9
	mov	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR 16[rsp], rax
	jmp	.L10
.L11:
	mov	rdx, QWORD PTR 56[rsp]
	lea	rax, 1[rdx]
	mov	QWORD PTR 56[rsp], rax
	mov	rax, QWORD PTR 16[rsp]
	lea	rcx, 1[rax]
	mov	QWORD PTR 16[rsp], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 64[rsp], 1
.L10:
	cmp	QWORD PTR 64[rsp], 0
	jne	.L11
.L9:
	mov	rax, QWORD PTR 48[rsp]
	add	rsp, 40
	ret
	.seh_endproc
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	DWORD PTR 48[rsp], r8d
	mov	QWORD PTR 56[rsp], r9
	mov	eax, DWORD PTR 48[rsp]
	movzx	eax, al
	mov	DWORD PTR 12[rsp], eax
	jmp	.L14
.L16:
	sub	QWORD PTR 56[rsp], 1
	add	QWORD PTR 40[rsp], 1
	add	QWORD PTR 32[rsp], 1
.L14:
	cmp	QWORD PTR 56[rsp], 0
	je	.L15
	mov	rax, QWORD PTR 40[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 32[rsp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR 12[rsp], eax
	jne	.L16
.L15:
	cmp	QWORD PTR 56[rsp], 0
	je	.L17
	mov	rax, QWORD PTR 32[rsp]
	add	rax, 1
	jmp	.L18
.L17:
	mov	eax, 0
.L18:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	DWORD PTR 40[rsp], edx
	mov	QWORD PTR 48[rsp], r8
	mov	eax, DWORD PTR 40[rsp]
	movzx	eax, al
	mov	DWORD PTR 12[rsp], eax
	jmp	.L20
.L22:
	add	QWORD PTR 32[rsp], 1
	sub	QWORD PTR 48[rsp], 1
.L20:
	cmp	QWORD PTR 48[rsp], 0
	je	.L21
	mov	rax, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	DWORD PTR 12[rsp], eax
	jne	.L22
.L21:
	cmp	QWORD PTR 48[rsp], 0
	je	.L23
	mov	rax, QWORD PTR 32[rsp]
	jmp	.L25
.L23:
	mov	eax, 0
.L25:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	mov	QWORD PTR 24[rsp], r8
	jmp	.L27
.L29:
	sub	QWORD PTR 24[rsp], 1
	add	QWORD PTR 8[rsp], 1
	add	QWORD PTR 16[rsp], 1
.L27:
	cmp	QWORD PTR 24[rsp], 0
	je	.L28
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L29
.L28:
	cmp	QWORD PTR 24[rsp], 0
	je	.L30
	mov	rax, QWORD PTR 8[rsp]
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	eax, ecx
	sub	eax, edx
	jmp	.L32
.L30:
	mov	eax, 0
.L32:
	ret
	.seh_endproc
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 48[rsp], r8
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L34
.L35:
	mov	rdx, QWORD PTR 40[rsp]
	lea	rax, 1[rdx]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 8[rsp]
	lea	rcx, 1[rax]
	mov	QWORD PTR 8[rsp], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 48[rsp], 1
.L34:
	cmp	QWORD PTR 48[rsp], 0
	jne	.L35
	mov	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	DWORD PTR 40[rsp], edx
	mov	QWORD PTR 48[rsp], r8
	mov	eax, DWORD PTR 40[rsp]
	movzx	eax, al
	mov	DWORD PTR 12[rsp], eax
	jmp	.L38
.L40:
	mov	rdx, QWORD PTR 32[rsp]
	mov	rax, QWORD PTR 48[rsp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	DWORD PTR 12[rsp], eax
	jne	.L38
	mov	rdx, QWORD PTR 32[rsp]
	mov	rax, QWORD PTR 48[rsp]
	add	rax, rdx
	jmp	.L39
.L38:
	mov	rax, QWORD PTR 48[rsp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 48[rsp], rdx
	test	rax, rax
	jne	.L40
	mov	eax, 0
.L39:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	DWORD PTR 40[rsp], edx
	mov	QWORD PTR 48[rsp], r8
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L42
.L43:
	mov	rax, QWORD PTR 8[rsp]
	mov	edx, DWORD PTR 40[rsp]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 48[rsp], 1
	add	QWORD PTR 8[rsp], 1
.L42:
	cmp	QWORD PTR 48[rsp], 0
	jne	.L43
	mov	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	jmp	.L46
.L47:
	add	QWORD PTR 16[rsp], 1
	add	QWORD PTR 8[rsp], 1
.L46:
	mov	rax, QWORD PTR 16[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 8[rsp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L47
	mov	rax, QWORD PTR 8[rsp]
	ret
	.seh_endproc
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	DWORD PTR 40[rsp], edx
	mov	eax, DWORD PTR 40[rsp]
	movzx	eax, al
	mov	DWORD PTR 12[rsp], eax
	jmp	.L50
.L52:
	add	QWORD PTR 32[rsp], 1
.L50:
	mov	rax, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L51
	mov	rax, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	DWORD PTR 12[rsp], eax
	jne	.L52
.L51:
	mov	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	mov	DWORD PTR 16[rsp], edx
.L57:
	movsx	edx, BYTE PTR [rax]
	cmp	DWORD PTR 16[rsp], edx
	je	.L56
	mov	rdx, rax
	lea	rax, 1[rdx]
	cmp	BYTE PTR [rdx], 0
	jne	.L57
	mov	eax, 0
.L56:
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	jmp	.L60
.L62:
	add	QWORD PTR 8[rsp], 1
	add	QWORD PTR 16[rsp], 1
.L60:
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L61
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L62
.L61:
	mov	rax, QWORD PTR 8[rsp]
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	eax, ecx
	sub	eax, edx
	ret
	.seh_endproc
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L65
.L66:
	add	QWORD PTR 8[rsp], 1
.L65:
	mov	rax, QWORD PTR 8[rsp]
	cmp	BYTE PTR [rax], 0
	jne	.L66
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 48[rsp], r8
	mov	rax, QWORD PTR 48[rsp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 8[rsp], rdx
	test	rax, rax
	jne	.L71
	mov	eax, 0
	jmp	.L70
.L73:
	add	QWORD PTR 32[rsp], 1
	add	QWORD PTR 40[rsp], 1
	sub	QWORD PTR 8[rsp], 1
.L71:
	mov	rax, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L72
	mov	rax, QWORD PTR 40[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L72
	cmp	QWORD PTR 8[rsp], 0
	je	.L72
	mov	rax, QWORD PTR 32[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 40[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L73
.L72:
	mov	rax, QWORD PTR 32[rsp]
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR 40[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	eax, ecx
	sub	eax, edx
.L70:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	mov	QWORD PTR 24[rsp], r8
	jmp	.L75
.L76:
	mov	rax, QWORD PTR 8[rsp]
	add	rax, 1
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 16[rsp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	QWORD PTR 16[rsp], 2
	add	QWORD PTR 8[rsp], 2
	sub	QWORD PTR 24[rsp], 2
.L75:
	cmp	QWORD PTR 24[rsp], 1
	jg	.L76
	ret
	.seh_endproc
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isascii
	.def	isascii;	.scl	2;	.type	32;	.endef
	.seh_proc	isascii
isascii:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	cmp	DWORD PTR 8[rsp], 127
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isblank
	.def	isblank;	.scl	2;	.type	32;	.endef
	.seh_proc	isblank
isblank:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	cmp	DWORD PTR 8[rsp], 32
	je	.L82
	cmp	DWORD PTR 8[rsp], 9
	jne	.L83
.L82:
	mov	eax, 1
	jmp	.L85
.L83:
	mov	eax, 0
.L85:
	ret
	.seh_endproc
	.globl	iscntrl
	.def	iscntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iscntrl
iscntrl:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	cmp	eax, 31
	jbe	.L87
	cmp	DWORD PTR 8[rsp], 127
	jne	.L88
.L87:
	mov	eax, 1
	jmp	.L90
.L88:
	mov	eax, 0
.L90:
	ret
	.seh_endproc
	.globl	isdigit
	.def	isdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	isdigit
isdigit:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isgraph
	.def	isgraph;	.scl	2;	.type	32;	.endef
	.seh_proc	isgraph
isgraph:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	sub	eax, 33
	cmp	eax, 93
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	islower
	.def	islower;	.scl	2;	.type	32;	.endef
	.seh_proc	islower
islower:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isprint
	.def	isprint;	.scl	2;	.type	32;	.endef
	.seh_proc	isprint
isprint:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	sub	eax, 32
	cmp	eax, 94
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isspace
	.def	isspace;	.scl	2;	.type	32;	.endef
	.seh_proc	isspace
isspace:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	cmp	DWORD PTR 8[rsp], 32
	je	.L100
	mov	eax, DWORD PTR 8[rsp]
	sub	eax, 9
	cmp	eax, 4
	ja	.L101
.L100:
	mov	eax, 1
	jmp	.L103
.L101:
	mov	eax, 0
.L103:
	ret
	.seh_endproc
	.globl	isupper
	.def	isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	isupper
isupper:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	sub	eax, 65
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	iswcntrl
	.def	iswcntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iswcntrl
iswcntrl:
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 8[rsp], ax
	cmp	WORD PTR 8[rsp], 31
	jbe	.L107
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 127
	cmp	eax, 32
	jbe	.L107
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 8232
	cmp	eax, 1
	jbe	.L107
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 65529
	cmp	eax, 2
	ja	.L108
.L107:
	mov	eax, 1
	jmp	.L110
.L108:
	mov	eax, 0
.L110:
	ret
	.seh_endproc
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 8[rsp], ax
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	iswprint
	.def	iswprint;	.scl	2;	.type	32;	.endef
	.seh_proc	iswprint
iswprint:
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 8[rsp], ax
	cmp	WORD PTR 8[rsp], 254
	ja	.L114
	movzx	eax, WORD PTR 8[rsp]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
	jmp	.L115
.L114:
	cmp	WORD PTR 8[rsp], 8231
	jbe	.L116
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	.L116
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 57344
	cmp	eax, 8184
	ja	.L117
.L116:
	mov	eax, 1
	jmp	.L115
.L117:
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.L118
	movzx	eax, WORD PTR 8[rsp]
	and	eax, 65534
	cmp	eax, 65534
	jne	.L119
.L118:
	mov	eax, 0
	jmp	.L115
.L119:
	mov	eax, 1
.L115:
	ret
	.seh_endproc
	.globl	iswxdigit
	.def	iswxdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswxdigit
iswxdigit:
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 8[rsp], ax
	movzx	eax, WORD PTR 8[rsp]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L121
	movzx	eax, WORD PTR 8[rsp]
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	ja	.L122
.L121:
	mov	eax, 1
	jmp	.L124
.L122:
	mov	eax, 0
.L124:
	ret
	.seh_endproc
	.globl	toascii
	.def	toascii;	.scl	2;	.type	32;	.endef
	.seh_proc	toascii
toascii:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	and	eax, 127
	ret
	.seh_endproc
	.globl	fdim
	.def	fdim;	.scl	2;	.type	32;	.endef
	.seh_proc	fdim
fdim:
	.seh_endprologue
	movsd	QWORD PTR 8[rsp], xmm0
	movsd	QWORD PTR 16[rsp], xmm1
	movsd	xmm0, QWORD PTR 8[rsp]
	ucomisd	xmm0, QWORD PTR 8[rsp]
	jnp	.L128
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L129
.L128:
	movsd	xmm0, QWORD PTR 16[rsp]
	ucomisd	xmm0, QWORD PTR 16[rsp]
	jnp	.L130
	mov	rax, QWORD PTR 16[rsp]
	jmp	.L129
.L130:
	movsd	xmm0, QWORD PTR 8[rsp]
	comisd	xmm0, QWORD PTR 16[rsp]
	jbe	.L135
	movsd	xmm0, QWORD PTR 8[rsp]
	subsd	xmm0, QWORD PTR 16[rsp]
	movq	rax, xmm0
	jmp	.L129
.L135:
	mov	rax, QWORD PTR .LC0[rip]
.L129:
	movq	xmm0, rax
	ret
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	movss	DWORD PTR 8[rsp], xmm0
	movss	DWORD PTR 16[rsp], xmm1
	movss	xmm0, DWORD PTR 8[rsp]
	ucomiss	xmm0, DWORD PTR 8[rsp]
	jnp	.L137
	mov	eax, DWORD PTR 8[rsp]
	jmp	.L138
.L137:
	movss	xmm0, DWORD PTR 16[rsp]
	ucomiss	xmm0, DWORD PTR 16[rsp]
	jnp	.L139
	mov	eax, DWORD PTR 16[rsp]
	jmp	.L138
.L139:
	movss	xmm0, DWORD PTR 8[rsp]
	comiss	xmm0, DWORD PTR 16[rsp]
	jbe	.L144
	movss	xmm0, DWORD PTR 8[rsp]
	subss	xmm0, DWORD PTR 16[rsp]
	movd	eax, xmm0
	jmp	.L138
.L144:
	mov	eax, DWORD PTR .LC1[rip]
.L138:
	movd	xmm0, eax
	ret
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	movsd	QWORD PTR 8[rsp], xmm0
	movsd	QWORD PTR 16[rsp], xmm1
	movsd	xmm0, QWORD PTR 8[rsp]
	ucomisd	xmm0, QWORD PTR 8[rsp]
	jnp	.L146
	mov	rax, QWORD PTR 16[rsp]
	jmp	.L147
.L146:
	movsd	xmm0, QWORD PTR 16[rsp]
	ucomisd	xmm0, QWORD PTR 16[rsp]
	jnp	.L148
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L147
.L148:
	movsd	xmm0, QWORD PTR 8[rsp]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR 16[rsp]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L149
	movsd	xmm0, QWORD PTR 8[rsp]
	movmskpd	eax, xmm0
	and	eax, 1
	je	.L150
	mov	rax, QWORD PTR 16[rsp]
	jmp	.L147
.L150:
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L147
.L149:
	movsd	xmm0, QWORD PTR 16[rsp]
	comisd	xmm0, QWORD PTR 8[rsp]
	jbe	.L156
	mov	rax, QWORD PTR 16[rsp]
	jmp	.L147
.L156:
	mov	rax, QWORD PTR 8[rsp]
.L147:
	movq	xmm0, rax
	ret
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	movss	DWORD PTR 8[rsp], xmm0
	movss	DWORD PTR 16[rsp], xmm1
	movss	xmm0, DWORD PTR 8[rsp]
	ucomiss	xmm0, DWORD PTR 8[rsp]
	jnp	.L158
	mov	eax, DWORD PTR 16[rsp]
	jmp	.L159
.L158:
	movss	xmm0, DWORD PTR 16[rsp]
	ucomiss	xmm0, DWORD PTR 16[rsp]
	jnp	.L160
	mov	eax, DWORD PTR 8[rsp]
	jmp	.L159
.L160:
	mov	eax, DWORD PTR 8[rsp]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR 16[rsp]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L161
	mov	eax, DWORD PTR 8[rsp]
	and	eax, -2147483648
	je	.L162
	mov	eax, DWORD PTR 16[rsp]
	jmp	.L159
.L162:
	mov	eax, DWORD PTR 8[rsp]
	jmp	.L159
.L161:
	movss	xmm0, DWORD PTR 16[rsp]
	comiss	xmm0, DWORD PTR 8[rsp]
	jbe	.L168
	mov	eax, DWORD PTR 16[rsp]
	jmp	.L159
.L168:
	mov	eax, DWORD PTR 8[rsp]
.L159:
	movd	xmm0, eax
	ret
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	rbx, rdx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR 16[rsp]
	mov	rbx, r8
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR [rsp]
	fld	TBYTE PTR 16[rsp]
	fld	TBYTE PTR 16[rsp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L170
	mov	rax, QWORD PTR 48[rsp]
	fld	TBYTE PTR [rsp]
	fstp	TBYTE PTR [rax]
	jmp	.L171
.L170:
	fld	TBYTE PTR [rsp]
	fld	TBYTE PTR [rsp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L172
	mov	rax, QWORD PTR 48[rsp]
	fld	TBYTE PTR 16[rsp]
	fstp	TBYTE PTR [rax]
	jmp	.L171
.L172:
	fld	TBYTE PTR 16[rsp]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [rsp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L173
	fld	TBYTE PTR 16[rsp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L174
	fld	TBYTE PTR [rsp]
	jmp	.L175
.L174:
	fld	TBYTE PTR 16[rsp]
.L175:
	mov	rax, QWORD PTR 48[rsp]
	fstp	TBYTE PTR [rax]
	jmp	.L171
.L173:
	fld	TBYTE PTR 16[rsp]
	fld	TBYTE PTR [rsp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L180
	fld	TBYTE PTR [rsp]
	jmp	.L178
.L180:
	fld	TBYTE PTR 16[rsp]
.L178:
	mov	rax, QWORD PTR 48[rsp]
	fstp	TBYTE PTR [rax]
.L171:
	mov	rax, QWORD PTR 48[rsp]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	movsd	QWORD PTR 8[rsp], xmm0
	movsd	QWORD PTR 16[rsp], xmm1
	movsd	xmm0, QWORD PTR 8[rsp]
	ucomisd	xmm0, QWORD PTR 8[rsp]
	jnp	.L182
	mov	rax, QWORD PTR 16[rsp]
	jmp	.L183
.L182:
	movsd	xmm0, QWORD PTR 16[rsp]
	ucomisd	xmm0, QWORD PTR 16[rsp]
	jnp	.L184
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L183
.L184:
	movsd	xmm0, QWORD PTR 8[rsp]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR 16[rsp]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L185
	movsd	xmm0, QWORD PTR 8[rsp]
	movmskpd	eax, xmm0
	and	eax, 1
	je	.L186
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L183
.L186:
	mov	rax, QWORD PTR 16[rsp]
	jmp	.L183
.L185:
	movsd	xmm0, QWORD PTR 16[rsp]
	comisd	xmm0, QWORD PTR 8[rsp]
	jbe	.L192
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L183
.L192:
	mov	rax, QWORD PTR 16[rsp]
.L183:
	movq	xmm0, rax
	ret
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	movss	DWORD PTR 8[rsp], xmm0
	movss	DWORD PTR 16[rsp], xmm1
	movss	xmm0, DWORD PTR 8[rsp]
	ucomiss	xmm0, DWORD PTR 8[rsp]
	jnp	.L194
	mov	eax, DWORD PTR 16[rsp]
	jmp	.L195
.L194:
	movss	xmm0, DWORD PTR 16[rsp]
	ucomiss	xmm0, DWORD PTR 16[rsp]
	jnp	.L196
	mov	eax, DWORD PTR 8[rsp]
	jmp	.L195
.L196:
	mov	eax, DWORD PTR 8[rsp]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR 16[rsp]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L197
	mov	eax, DWORD PTR 8[rsp]
	and	eax, -2147483648
	je	.L198
	mov	eax, DWORD PTR 8[rsp]
	jmp	.L195
.L198:
	mov	eax, DWORD PTR 16[rsp]
	jmp	.L195
.L197:
	movss	xmm0, DWORD PTR 16[rsp]
	comiss	xmm0, DWORD PTR 8[rsp]
	jbe	.L204
	mov	eax, DWORD PTR 8[rsp]
	jmp	.L195
.L204:
	mov	eax, DWORD PTR 16[rsp]
.L195:
	movd	xmm0, eax
	ret
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	rbx, rdx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR 16[rsp]
	mov	rbx, r8
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR [rsp]
	fld	TBYTE PTR 16[rsp]
	fld	TBYTE PTR 16[rsp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L206
	mov	rax, QWORD PTR 48[rsp]
	fld	TBYTE PTR [rsp]
	fstp	TBYTE PTR [rax]
	jmp	.L207
.L206:
	fld	TBYTE PTR [rsp]
	fld	TBYTE PTR [rsp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L208
	mov	rax, QWORD PTR 48[rsp]
	fld	TBYTE PTR 16[rsp]
	fstp	TBYTE PTR [rax]
	jmp	.L207
.L208:
	fld	TBYTE PTR 16[rsp]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [rsp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L209
	fld	TBYTE PTR 16[rsp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L210
	fld	TBYTE PTR 16[rsp]
	jmp	.L211
.L210:
	fld	TBYTE PTR [rsp]
.L211:
	mov	rax, QWORD PTR 48[rsp]
	fstp	TBYTE PTR [rax]
	jmp	.L207
.L209:
	fld	TBYTE PTR 16[rsp]
	fld	TBYTE PTR [rsp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L216
	fld	TBYTE PTR 16[rsp]
	jmp	.L214
.L216:
	fld	TBYTE PTR [rsp]
.L214:
	mov	rax, QWORD PTR 48[rsp]
	fstp	TBYTE PTR [rax]
.L207:
	mov	rax, QWORD PTR 48[rsp]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.text
	.globl	l64a
	.def	l64a;	.scl	2;	.type	32;	.endef
	.seh_proc	l64a
l64a:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	eax, DWORD PTR 32[rsp]
	mov	DWORD PTR 4[rsp], eax
	lea	rax, s.0[rip]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L218
.L219:
	mov	eax, DWORD PTR 4[rsp]
	and	eax, 63
	mov	edx, eax
	lea	rax, digits[rip]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	rax, QWORD PTR 8[rsp]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR 8[rsp], 1
	shr	DWORD PTR 4[rsp], 6
.L218:
	cmp	DWORD PTR 4[rsp], 0
	jne	.L219
	mov	rax, QWORD PTR 8[rsp]
	mov	BYTE PTR [rax], 0
	lea	rax, s.0[rip]
	add	rsp, 24
	ret
	.seh_endproc
.lcomm seed,8,8
	.globl	srand
	.def	srand;	.scl	2;	.type	32;	.endef
	.seh_proc	srand
srand:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	sub	eax, 1
	mov	eax, eax
	mov	QWORD PTR seed[rip], rax
	nop
	ret
	.seh_endproc
	.globl	rand
	.def	rand;	.scl	2;	.type	32;	.endef
	.seh_proc	rand
rand:
	.seh_endprologue
	mov	rax, QWORD PTR seed[rip]
	movabs	rdx, 6364136223846793005
	imul	rax, rdx
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	mov	rax, QWORD PTR seed[rip]
	shr	rax, 33
	ret
	.seh_endproc
	.globl	insque
	.def	insque;	.scl	2;	.type	32;	.endef
	.seh_proc	insque
insque:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	cmp	QWORD PTR 16[rsp], 0
	jne	.L225
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR 8[rsp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR [rax], rdx
	jmp	.L224
.L225:
	mov	rax, QWORD PTR 16[rsp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 8[rsp]
	mov	rdx, QWORD PTR 16[rsp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 8[rsp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L224
	mov	rax, QWORD PTR 8[rsp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 8[rax], rdx
.L224:
	ret
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	rax, QWORD PTR 8[rsp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L228
	mov	rax, QWORD PTR 8[rsp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 8[rsp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	QWORD PTR 8[rax], rdx
.L228:
	mov	rax, QWORD PTR 8[rsp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L227
	mov	rax, QWORD PTR 8[rsp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR 8[rsp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
.L227:
	ret
	.seh_endproc
	.globl	lsearch
	.def	lsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	lsearch
lsearch:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 80[rsp], rcx
	mov	QWORD PTR 88[rsp], rdx
	mov	QWORD PTR 96[rsp], r8
	mov	QWORD PTR 104[rsp], r9
	mov	rbx, QWORD PTR 104[rsp]
	lea	rax, -1[rbx]
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR 96[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 56[rsp], 0
	jmp	.L232
.L235:
	mov	rdx, rbx
	imul	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 88[rsp]
	add	rdx, rax
	mov	rax, QWORD PTR 80[rsp]
	mov	r8, QWORD PTR 112[rsp]
	mov	rcx, rax
	call	r8
	test	eax, eax
	jne	.L233
	imul	rbx, QWORD PTR 56[rsp]
	mov	rdx, rbx
	mov	rax, QWORD PTR 88[rsp]
	add	rax, rdx
	jmp	.L234
.L233:
	add	QWORD PTR 56[rsp], 1
.L232:
	mov	rax, QWORD PTR 56[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jb	.L235
	mov	rax, QWORD PTR 40[rsp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR 96[rsp]
	mov	QWORD PTR [rax], rdx
	imul	rbx, QWORD PTR 40[rsp]
	mov	rdx, rbx
	mov	rax, QWORD PTR 88[rsp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR 104[rsp]
	mov	rax, QWORD PTR 80[rsp]
	mov	r8, rdx
	mov	rdx, rax
	call	memcpy
.L234:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	lfind
	.def	lfind;	.scl	2;	.type	32;	.endef
	.seh_proc	lfind
lfind:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 80[rsp], rcx
	mov	QWORD PTR 88[rsp], rdx
	mov	QWORD PTR 96[rsp], r8
	mov	QWORD PTR 104[rsp], r9
	mov	rbx, QWORD PTR 104[rsp]
	lea	rax, -1[rbx]
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR 96[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 56[rsp], 0
	jmp	.L237
.L240:
	mov	rdx, rbx
	imul	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 88[rsp]
	add	rdx, rax
	mov	rax, QWORD PTR 80[rsp]
	mov	r8, QWORD PTR 112[rsp]
	mov	rcx, rax
	call	r8
	test	eax, eax
	jne	.L238
	imul	rbx, QWORD PTR 56[rsp]
	mov	rdx, rbx
	mov	rax, QWORD PTR 88[rsp]
	add	rax, rdx
	jmp	.L239
.L238:
	add	QWORD PTR 56[rsp], 1
.L237:
	mov	rax, QWORD PTR 56[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jb	.L240
	mov	eax, 0
.L239:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	abs
	.def	abs;	.scl	2;	.type	32;	.endef
	.seh_proc	abs
abs:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	ret
	.seh_endproc
	.globl	atoi
	.def	atoi;	.scl	2;	.type	32;	.endef
	.seh_proc	atoi
atoi:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	DWORD PTR 44[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	jmp	.L244
.L245:
	add	QWORD PTR 64[rsp], 1
.L244:
	mov	rax, QWORD PTR 64[rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	ecx, eax
	call	isspace
	test	eax, eax
	jne	.L245
	mov	rax, QWORD PTR 64[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 43
	je	.L246
	cmp	eax, 45
	jne	.L248
	mov	DWORD PTR 40[rsp], 1
.L246:
	add	QWORD PTR 64[rsp], 1
	jmp	.L248
.L249:
	mov	edx, DWORD PTR 44[rsp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	rax, QWORD PTR 64[rsp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 64[rsp], rdx
	movsx	eax, BYTE PTR [rax]
	lea	edx, -48[rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR 44[rsp], eax
.L248:
	mov	rax, QWORD PTR 64[rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L249
	cmp	DWORD PTR 40[rsp], 0
	jne	.L250
	mov	eax, DWORD PTR 44[rsp]
	neg	eax
	jmp	.L252
.L250:
	mov	eax, DWORD PTR 44[rsp]
.L252:
	add	rsp, 56
	ret
	.seh_endproc
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	DWORD PTR 44[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	jmp	.L254
.L255:
	add	QWORD PTR 64[rsp], 1
.L254:
	mov	rax, QWORD PTR 64[rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	ecx, eax
	call	isspace
	test	eax, eax
	jne	.L255
	mov	rax, QWORD PTR 64[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 43
	je	.L256
	cmp	eax, 45
	jne	.L258
	mov	DWORD PTR 40[rsp], 1
.L256:
	add	QWORD PTR 64[rsp], 1
	jmp	.L258
.L259:
	mov	edx, DWORD PTR 44[rsp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	rax, QWORD PTR 64[rsp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 64[rsp], rdx
	movsx	eax, BYTE PTR [rax]
	lea	edx, -48[rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR 44[rsp], eax
.L258:
	mov	rax, QWORD PTR 64[rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L259
	cmp	DWORD PTR 40[rsp], 0
	jne	.L260
	mov	eax, DWORD PTR 44[rsp]
	neg	eax
	jmp	.L262
.L260:
	mov	eax, DWORD PTR 44[rsp]
.L262:
	add	rsp, 56
	ret
	.seh_endproc
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	QWORD PTR 40[rsp], 0
	mov	DWORD PTR 36[rsp], 0
	jmp	.L264
.L265:
	add	QWORD PTR 64[rsp], 1
.L264:
	mov	rax, QWORD PTR 64[rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	ecx, eax
	call	isspace
	test	eax, eax
	jne	.L265
	mov	rax, QWORD PTR 64[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 43
	je	.L266
	cmp	eax, 45
	jne	.L268
	mov	DWORD PTR 36[rsp], 1
.L266:
	add	QWORD PTR 64[rsp], 1
	jmp	.L268
.L269:
	mov	rdx, QWORD PTR 40[rsp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	mov	rcx, rax
	mov	rax, QWORD PTR 64[rsp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 64[rsp], rdx
	movsx	eax, BYTE PTR [rax]
	sub	eax, 48
	cdqe
	sub	rcx, rax
	mov	rdx, rcx
	mov	QWORD PTR 40[rsp], rdx
.L268:
	mov	rax, QWORD PTR 64[rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L269
	cmp	DWORD PTR 36[rsp], 0
	jne	.L270
	mov	rax, QWORD PTR 40[rsp]
	neg	rax
	jmp	.L272
.L270:
	mov	rax, QWORD PTR 40[rsp]
.L272:
	add	rsp, 56
	ret
	.seh_endproc
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	QWORD PTR 72[rsp], rdx
	mov	QWORD PTR 80[rsp], r8
	mov	QWORD PTR 88[rsp], r9
	jmp	.L274
.L279:
	mov	rax, QWORD PTR 80[rsp]
	shr	rax
	imul	rax, QWORD PTR 88[rsp]
	mov	rdx, rax
	mov	rax, QWORD PTR 72[rsp]
	add	rax, rdx
	mov	QWORD PTR 40[rsp], rax
	mov	rdx, QWORD PTR 40[rsp]
	mov	rax, QWORD PTR 64[rsp]
	mov	r8, QWORD PTR 96[rsp]
	mov	rcx, rax
	call	r8
	mov	DWORD PTR 36[rsp], eax
	cmp	DWORD PTR 36[rsp], 0
	jns	.L275
	mov	rax, QWORD PTR 80[rsp]
	shr	rax
	mov	QWORD PTR 80[rsp], rax
	jmp	.L274
.L275:
	cmp	DWORD PTR 36[rsp], 0
	jle	.L277
	mov	rdx, QWORD PTR 40[rsp]
	mov	rax, QWORD PTR 88[rsp]
	add	rax, rdx
	mov	QWORD PTR 72[rsp], rax
	mov	rax, QWORD PTR 80[rsp]
	shr	rax
	mov	rdx, QWORD PTR 80[rsp]
	sub	rdx, rax
	lea	rax, -1[rdx]
	mov	QWORD PTR 80[rsp], rax
	jmp	.L274
.L277:
	mov	rax, QWORD PTR 40[rsp]
	jmp	.L278
.L274:
	cmp	QWORD PTR 80[rsp], 0
	jne	.L279
	mov	eax, 0
.L278:
	add	rsp, 56
	ret
	.seh_endproc
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	QWORD PTR 80[rsp], rcx
	mov	QWORD PTR 88[rsp], rdx
	mov	QWORD PTR 96[rsp], r8
	mov	QWORD PTR 104[rsp], r9
	mov	rax, QWORD PTR 96[rsp]
	mov	DWORD PTR 60[rsp], eax
	jmp	.L281
.L285:
	mov	eax, DWORD PTR 60[rsp]
	sar	eax
	cdqe
	imul	rax, QWORD PTR 104[rsp]
	mov	rdx, rax
	mov	rax, QWORD PTR 88[rsp]
	add	rax, rdx
	mov	QWORD PTR 48[rsp], rax
	mov	rcx, QWORD PTR 120[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	mov	rax, QWORD PTR 80[rsp]
	mov	r9, QWORD PTR 112[rsp]
	mov	r8, rcx
	mov	rcx, rax
	call	r9
	mov	DWORD PTR 44[rsp], eax
	cmp	DWORD PTR 44[rsp], 0
	jne	.L282
	mov	rax, QWORD PTR 48[rsp]
	jmp	.L283
.L282:
	cmp	DWORD PTR 44[rsp], 0
	jle	.L284
	mov	rdx, QWORD PTR 48[rsp]
	mov	rax, QWORD PTR 104[rsp]
	add	rax, rdx
	mov	QWORD PTR 88[rsp], rax
	sub	DWORD PTR 60[rsp], 1
.L284:
	sar	DWORD PTR 60[rsp]
.L281:
	cmp	DWORD PTR 60[rsp], 0
	jne	.L285
	mov	eax, 0
.L283:
	add	rsp, 72
	ret
	.seh_endproc
	.globl	div
	.def	div;	.scl	2;	.type	32;	.endef
	.seh_proc	div
div:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 8[rsp]
	cdq
	idiv	DWORD PTR 16[rsp]
	mov	r9d, eax
	mov	eax, DWORD PTR 8[rsp]
	cdq
	idiv	DWORD PTR 16[rsp]
	mov	ecx, edx
	mov	edx, r9d
	movabs	rax, -4294967296
	and	rax, r8
	or	rax, rdx
	mov	r8, rax
	mov	eax, ecx
	sal	rax, 32
	mov	edx, r8d
	or	rax, rdx
	mov	r8, rax
	mov	rax, r8
	ret
	.seh_endproc
	.globl	imaxabs
	.def	imaxabs;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxabs
imaxabs:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	rax, QWORD PTR 8[rsp]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	ret
	.seh_endproc
	.globl	imaxdiv
	.def	imaxdiv;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxdiv
imaxdiv:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	mov	QWORD PTR 24[rsp], r8
	mov	rax, QWORD PTR 16[rsp]
	cqo
	idiv	QWORD PTR 24[rsp]
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rsp]
	cqo
	idiv	QWORD PTR 24[rsp]
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR [rax], rcx
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 8[rsp]
	ret
	.seh_endproc
	.globl	labs
	.def	labs;	.scl	2;	.type	32;	.endef
	.seh_proc	labs
labs:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	ret
	.seh_endproc
	.globl	ldiv
	.def	ldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	ldiv
ldiv:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 8[rsp]
	cdq
	idiv	DWORD PTR 16[rsp]
	mov	r9d, eax
	mov	eax, DWORD PTR 8[rsp]
	cdq
	idiv	DWORD PTR 16[rsp]
	mov	ecx, edx
	mov	edx, r9d
	movabs	rax, -4294967296
	and	rax, r8
	or	rax, rdx
	mov	r8, rax
	mov	eax, ecx
	sal	rax, 32
	mov	edx, r8d
	or	rax, rdx
	mov	r8, rax
	mov	rax, r8
	ret
	.seh_endproc
	.globl	llabs
	.def	llabs;	.scl	2;	.type	32;	.endef
	.seh_proc	llabs
llabs:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	rax, QWORD PTR 8[rsp]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	ret
	.seh_endproc
	.globl	lldiv
	.def	lldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	lldiv
lldiv:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	mov	QWORD PTR 24[rsp], r8
	mov	rax, QWORD PTR 16[rsp]
	cqo
	idiv	QWORD PTR 24[rsp]
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rsp]
	cqo
	idiv	QWORD PTR 24[rsp]
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR [rax], rcx
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 8[rsp]
	ret
	.seh_endproc
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	eax, edx
	mov	WORD PTR 16[rsp], ax
	jmp	.L301
.L303:
	add	QWORD PTR 8[rsp], 2
.L301:
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L302
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	WORD PTR 16[rsp], ax
	jne	.L303
.L302:
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L304
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L306
.L304:
	mov	eax, 0
.L306:
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	jmp	.L308
.L310:
	add	QWORD PTR 8[rsp], 2
	add	QWORD PTR 16[rsp], 2
.L308:
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jne	.L309
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L309
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	jne	.L310
.L309:
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jb	.L311
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	.L313
.L311:
	mov	eax, -1
.L313:
	ret
	.seh_endproc
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
.L315:
	mov	rdx, QWORD PTR 40[rsp]
	lea	rax, 2[rdx]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 8[rsp]
	lea	rcx, 2[rax]
	mov	QWORD PTR 8[rsp], rcx
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR [rax], dx
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	jne	.L315
	mov	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L318
.L319:
	add	QWORD PTR 8[rsp], 2
.L318:
	mov	rax, QWORD PTR 8[rsp]
	cmp	WORD PTR [rax], 0
	jne	.L319
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR 32[rsp]
	sar	rax
	add	rsp, 24
	ret
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	mov	QWORD PTR 24[rsp], r8
	jmp	.L322
.L324:
	sub	QWORD PTR 24[rsp], 1
	add	QWORD PTR 8[rsp], 2
	add	QWORD PTR 16[rsp], 2
.L322:
	cmp	QWORD PTR 24[rsp], 0
	je	.L323
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jne	.L323
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L323
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	jne	.L324
.L323:
	cmp	QWORD PTR 24[rsp], 0
	je	.L325
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jb	.L326
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	.L329
.L326:
	mov	eax, -1
	jmp	.L329
.L325:
	mov	eax, 0
.L329:
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	eax, edx
	mov	QWORD PTR 24[rsp], r8
	mov	WORD PTR 16[rsp], ax
	jmp	.L331
.L333:
	sub	QWORD PTR 24[rsp], 1
	add	QWORD PTR 8[rsp], 2
.L331:
	cmp	QWORD PTR 24[rsp], 0
	je	.L332
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	WORD PTR 16[rsp], ax
	jne	.L333
.L332:
	cmp	QWORD PTR 24[rsp], 0
	je	.L334
	mov	rax, QWORD PTR 8[rsp]
	jmp	.L336
.L334:
	mov	eax, 0
.L336:
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 16[rsp], rdx
	mov	QWORD PTR 24[rsp], r8
	jmp	.L338
.L340:
	sub	QWORD PTR 24[rsp], 1
	add	QWORD PTR 8[rsp], 2
	add	QWORD PTR 16[rsp], 2
.L338:
	cmp	QWORD PTR 24[rsp], 0
	je	.L339
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	je	.L340
.L339:
	cmp	QWORD PTR 24[rsp], 0
	je	.L341
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jb	.L342
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 16[rsp]
	movzx	eax, WORD PTR [rax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	.L345
.L342:
	mov	eax, -1
	jmp	.L345
.L341:
	mov	eax, 0
.L345:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 48[rsp], r8
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L347
.L348:
	mov	rdx, QWORD PTR 40[rsp]
	lea	rax, 2[rdx]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 8[rsp]
	lea	rcx, 2[rax]
	mov	QWORD PTR 8[rsp], rcx
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR [rax], dx
.L347:
	mov	rax, QWORD PTR 48[rsp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 48[rsp], rdx
	test	rax, rax
	jne	.L348
	mov	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 48[rsp], r8
	mov	rax, QWORD PTR 32[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jne	.L351
	mov	rax, QWORD PTR 32[rsp]
	jmp	.L352
.L351:
	mov	rdx, QWORD PTR 32[rsp]
	mov	rax, QWORD PTR 40[rsp]
	sub	rdx, rax
	mov	rax, QWORD PTR 48[rsp]
	add	rax, rax
	cmp	rdx, rax
	jnb	.L353
	jmp	.L354
.L355:
	mov	rax, QWORD PTR 48[rsp]
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	rax, QWORD PTR 48[rsp]
	lea	rcx, [rax+rax]
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR [rdx], ax
.L354:
	mov	rax, QWORD PTR 48[rsp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 48[rsp], rdx
	test	rax, rax
	jne	.L355
	jmp	.L356
.L353:
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L357
.L358:
	mov	rdx, QWORD PTR 40[rsp]
	lea	rax, 2[rdx]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 8[rsp]
	lea	rcx, 2[rax]
	mov	QWORD PTR 8[rsp], rcx
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR [rax], dx
.L357:
	mov	rax, QWORD PTR 48[rsp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 48[rsp], rdx
	test	rax, rax
	jne	.L358
.L356:
	mov	rax, QWORD PTR 32[rsp]
.L352:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	eax, edx
	mov	QWORD PTR 48[rsp], r8
	mov	WORD PTR 40[rsp], ax
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L360
.L361:
	mov	rax, QWORD PTR 8[rsp]
	lea	rdx, 2[rax]
	mov	QWORD PTR 8[rsp], rdx
	movzx	edx, WORD PTR 40[rsp]
	mov	WORD PTR [rax], dx
.L360:
	mov	rax, QWORD PTR 48[rsp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 48[rsp], rdx
	test	rax, rax
	jne	.L361
	mov	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 48[rsp], r8
	mov	rax, QWORD PTR 32[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jnb	.L364
	mov	rdx, QWORD PTR 32[rsp]
	mov	rax, QWORD PTR 48[rsp]
	add	rax, rdx
	mov	QWORD PTR 8[rsp], rax
	mov	rdx, QWORD PTR 40[rsp]
	mov	rax, QWORD PTR 48[rsp]
	add	rax, rdx
	mov	QWORD PTR [rsp], rax
	jmp	.L365
.L366:
	sub	QWORD PTR 8[rsp], 1
	sub	QWORD PTR [rsp], 1
	mov	rax, QWORD PTR 8[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 48[rsp], 1
.L365:
	cmp	QWORD PTR 48[rsp], 0
	jne	.L366
	jmp	.L363
.L364:
	mov	rax, QWORD PTR 32[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	je	.L363
	jmp	.L368
.L369:
	mov	rdx, QWORD PTR 32[rsp]
	lea	rax, 1[rdx]
	mov	QWORD PTR 32[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	lea	rcx, 1[rax]
	mov	QWORD PTR 40[rsp], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 48[rsp], 1
.L368:
	cmp	QWORD PTR 48[rsp], 0
	jne	.L369
.L363:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	rotl64
	.def	rotl64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl64
rotl64:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	ecx, eax
	rol	rdx, cl
	mov	rax, rdx
	ret
	.seh_endproc
	.globl	rotr64
	.def	rotr64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr64
rotr64:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	ecx, eax
	ror	rdx, cl
	mov	rax, rdx
	ret
	.seh_endproc
	.globl	rotl32
	.def	rotl32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl32
rotl32:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 16[rsp]
	mov	edx, DWORD PTR 8[rsp]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	ret
	.seh_endproc
	.globl	rotr32
	.def	rotr32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr32
rotr32:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 16[rsp]
	mov	edx, DWORD PTR 8[rsp]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	ret
	.seh_endproc
	.globl	rotl_sz
	.def	rotl_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl_sz
rotl_sz:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	eax, 64
	sub	eax, DWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	ret
	.seh_endproc
	.globl	rotr_sz
	.def	rotr_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr_sz
rotr_sz:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	r8, rdx
	mov	eax, 64
	sub	eax, DWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	or	rax, r8
	ret
	.seh_endproc
	.globl	rotl16
	.def	rotl16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl16
rotl16:
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 16[rsp], edx
	mov	WORD PTR 8[rsp], ax
	movzx	edx, WORD PTR 8[rsp]
	mov	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, WORD PTR 8[rsp]
	mov	eax, 16
	sub	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 16[rsp], edx
	mov	WORD PTR 8[rsp], ax
	movzx	edx, WORD PTR 8[rsp]
	mov	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, WORD PTR 8[rsp]
	mov	eax, 16
	sub	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 16[rsp], edx
	mov	BYTE PTR 8[rsp], al
	movzx	edx, BYTE PTR 8[rsp]
	mov	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, BYTE PTR 8[rsp]
	mov	eax, 8
	sub	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 16[rsp], edx
	mov	BYTE PTR 8[rsp], al
	movzx	edx, BYTE PTR 8[rsp]
	mov	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, BYTE PTR 8[rsp]
	mov	eax, 8
	sub	eax, DWORD PTR 16[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, r8d
	ret
	.seh_endproc
	.globl	bswap_16
	.def	bswap_16;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_16
bswap_16:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 32[rsp], ax
	mov	WORD PTR 14[rsp], 255
	movzx	eax, WORD PTR 14[rsp]
	sal	eax, 8
	movzx	edx, WORD PTR 32[rsp]
	and	eax, edx
	sar	eax, 8
	mov	ecx, eax
	movzx	eax, WORD PTR 14[rsp]
	movzx	edx, WORD PTR 32[rsp]
	and	eax, edx
	sal	eax, 8
	or	eax, ecx
	add	rsp, 24
	ret
	.seh_endproc
	.globl	bswap_32
	.def	bswap_32;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_32
bswap_32:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 12[rsp], 255
	mov	eax, DWORD PTR 12[rsp]
	sal	eax, 24
	and	eax, DWORD PTR 32[rsp]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR 12[rsp]
	sal	eax, 16
	and	eax, DWORD PTR 32[rsp]
	shr	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR 12[rsp]
	sal	eax, 8
	and	eax, DWORD PTR 32[rsp]
	sal	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR 32[rsp]
	and	eax, DWORD PTR 12[rsp]
	sal	eax, 24
	or	eax, edx
	add	rsp, 24
	ret
	.seh_endproc
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 8[rsp], 255
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 56
	and	rax, QWORD PTR 32[rsp]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 48
	and	rax, QWORD PTR 32[rsp]
	shr	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 40
	and	rax, QWORD PTR 32[rsp]
	shr	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 32
	and	rax, QWORD PTR 32[rsp]
	shr	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 24
	and	rax, QWORD PTR 32[rsp]
	sal	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 16
	and	rax, QWORD PTR 32[rsp]
	sal	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 8
	and	rax, QWORD PTR 32[rsp]
	sal	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR 32[rsp]
	and	rax, QWORD PTR 8[rsp]
	sal	rax, 56
	or	rax, rdx
	add	rsp, 24
	ret
	.seh_endproc
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 12[rsp], 0
	jmp	.L398
.L401:
	mov	eax, DWORD PTR 12[rsp]
	mov	edx, DWORD PTR 32[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L399
	mov	eax, DWORD PTR 12[rsp]
	add	eax, 1
	jmp	.L400
.L399:
	add	DWORD PTR 12[rsp], 1
.L398:
	cmp	DWORD PTR 12[rsp], 31
	jbe	.L401
	mov	eax, 0
.L400:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	eax, ecx
	test	eax, eax
	jne	.L403
	mov	ebx, 0
	jmp	.L404
.L403:
	mov	ebx, 1
	jmp	.L405
.L406:
	sar	eax
	add	ebx, 1
.L405:
	mov	edx, eax
	and	edx, 1
	je	.L406
.L404:
	mov	eax, ebx
	pop	rbx
	ret
	.seh_endproc
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	movss	DWORD PTR 8[rsp], xmm0
	movss	xmm0, DWORD PTR .LC3[rip]
	comiss	xmm0, DWORD PTR 8[rsp]
	ja	.L408
	movss	xmm0, DWORD PTR 8[rsp]
	comiss	xmm0, DWORD PTR .LC4[rip]
	jbe	.L413
.L408:
	mov	eax, 1
	jmp	.L412
.L413:
	mov	eax, 0
.L412:
	ret
	.seh_endproc
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	movsd	QWORD PTR 8[rsp], xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, QWORD PTR 8[rsp]
	ja	.L415
	movsd	xmm0, QWORD PTR 8[rsp]
	comisd	xmm0, QWORD PTR .LC6[rip]
	jbe	.L420
.L415:
	mov	eax, 1
	jmp	.L419
.L420:
	mov	eax, 0
.L419:
	ret
	.seh_endproc
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	rbx, rcx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR [rsp]
	fld	TBYTE PTR [rsp]
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L422
	fld	TBYTE PTR .LC8[rip]
	fld	TBYTE PTR [rsp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L427
.L422:
	mov	eax, 1
	jmp	.L426
.L427:
	mov	eax, 0
.L426:
	add	rsp, 16
	pop	rbx
	ret
	.seh_endproc
	.globl	_Qp_itoq
	.def	_Qp_itoq;	.scl	2;	.type	32;	.endef
	.seh_proc	_Qp_itoq
_Qp_itoq:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	DWORD PTR 40[rsp], edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR 40[rsp]
	movsd	QWORD PTR 8[rsp], xmm0
	fld	QWORD PTR 8[rsp]
	mov	rax, QWORD PTR 32[rsp]
	fstp	TBYTE PTR [rax]
	nop
	add	rsp, 24
	ret
	.seh_endproc
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	movss	DWORD PTR 32[rsp], xmm0
	mov	DWORD PTR 40[rsp], edx
	movss	xmm0, DWORD PTR 32[rsp]
	ucomiss	xmm0, DWORD PTR 32[rsp]
	jp	.L430
	movss	xmm0, DWORD PTR 32[rsp]
	addss	xmm0, xmm0
	ucomiss	xmm0, DWORD PTR 32[rsp]
	jp	.L438
	ucomiss	xmm0, DWORD PTR 32[rsp]
	je	.L430
.L438:
	cmp	DWORD PTR 40[rsp], 0
	jns	.L432
	movss	xmm0, DWORD PTR .LC9[rip]
	jmp	.L433
.L432:
	movss	xmm0, DWORD PTR .LC10[rip]
.L433:
	movss	DWORD PTR 12[rsp], xmm0
.L436:
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 1
	je	.L434
	movss	xmm0, DWORD PTR 32[rsp]
	mulss	xmm0, DWORD PTR 12[rsp]
	movss	DWORD PTR 32[rsp], xmm0
.L434:
	mov	eax, DWORD PTR 40[rsp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 40[rsp], eax
	cmp	DWORD PTR 40[rsp], 0
	je	.L430
	movss	xmm0, DWORD PTR 12[rsp]
	mulss	xmm0, xmm0
	movss	DWORD PTR 12[rsp], xmm0
	jmp	.L436
.L430:
	mov	eax, DWORD PTR 32[rsp]
	movd	xmm0, eax
	add	rsp, 24
	ret
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	movsd	QWORD PTR 32[rsp], xmm0
	mov	DWORD PTR 40[rsp], edx
	movsd	xmm0, QWORD PTR 32[rsp]
	ucomisd	xmm0, QWORD PTR 32[rsp]
	jp	.L441
	movsd	xmm0, QWORD PTR 32[rsp]
	addsd	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR 32[rsp]
	jp	.L449
	ucomisd	xmm0, QWORD PTR 32[rsp]
	je	.L441
.L449:
	cmp	DWORD PTR 40[rsp], 0
	jns	.L443
	movsd	xmm0, QWORD PTR .LC11[rip]
	jmp	.L444
.L443:
	movsd	xmm0, QWORD PTR .LC12[rip]
.L444:
	movsd	QWORD PTR 8[rsp], xmm0
.L447:
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 1
	je	.L445
	movsd	xmm0, QWORD PTR 32[rsp]
	mulsd	xmm0, QWORD PTR 8[rsp]
	movsd	QWORD PTR 32[rsp], xmm0
.L445:
	mov	eax, DWORD PTR 40[rsp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 40[rsp], eax
	cmp	DWORD PTR 40[rsp], 0
	je	.L441
	movsd	xmm0, QWORD PTR 8[rsp]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR 8[rsp], xmm0
	jmp	.L447
.L441:
	mov	rax, QWORD PTR 32[rsp]
	movq	xmm0, rax
	add	rsp, 24
	ret
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	rbx, rdx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR [rsp]
	mov	DWORD PTR 64[rsp], r8d
	fld	TBYTE PTR [rsp]
	fld	TBYTE PTR [rsp]
	fucomip	st, st(1)
	fstp	st(0)
	jp	.L452
	fld	TBYTE PTR [rsp]
	fadd	st, st(0)
	fld	TBYTE PTR [rsp]
	fucomip	st, st(1)
	jp	.L462
	fld	TBYTE PTR [rsp]
	fucomip	st, st(1)
	fstp	st(0)
	je	.L452
	jmp	.L460
.L462:
	fstp	st(0)
.L460:
	cmp	DWORD PTR 64[rsp], 0
	jns	.L454
	fld	TBYTE PTR .LC13[rip]
	jmp	.L455
.L454:
	fld	TBYTE PTR .LC14[rip]
.L455:
	fstp	TBYTE PTR 16[rsp]
.L458:
	mov	eax, DWORD PTR 64[rsp]
	and	eax, 1
	je	.L456
	fld	TBYTE PTR [rsp]
	fld	TBYTE PTR 16[rsp]
	fmulp	st(1), st
	fstp	TBYTE PTR [rsp]
.L456:
	mov	eax, DWORD PTR 64[rsp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 64[rsp], eax
	cmp	DWORD PTR 64[rsp], 0
	je	.L452
	fld	TBYTE PTR 16[rsp]
	fmul	st, st(0)
	fstp	TBYTE PTR 16[rsp]
	jmp	.L458
.L452:
	mov	rax, QWORD PTR 48[rsp]
	fld	TBYTE PTR [rsp]
	fstp	TBYTE PTR [rax]
	mov	rax, QWORD PTR 48[rsp]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 48[rsp], r8
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L464
.L465:
	mov	rax, QWORD PTR 40[rsp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 40[rsp], rdx
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR 8[rsp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 8[rsp], rdx
	movzx	edx, BYTE PTR [rax]
	xor	edx, ecx
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 48[rsp], 1
.L464:
	cmp	QWORD PTR 48[rsp], 0
	jne	.L465
	mov	rax, QWORD PTR 32[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	QWORD PTR 72[rsp], rdx
	mov	QWORD PTR 80[rsp], r8
	mov	rax, QWORD PTR 64[rsp]
	mov	rcx, rax
	call	strlen
	mov	rdx, QWORD PTR 64[rsp]
	add	rax, rdx
	mov	QWORD PTR 40[rsp], rax
	jmp	.L468
.L470:
	add	QWORD PTR 72[rsp], 1
	add	QWORD PTR 40[rsp], 1
	sub	QWORD PTR 80[rsp], 1
.L468:
	cmp	QWORD PTR 80[rsp], 0
	je	.L469
	mov	rax, QWORD PTR 72[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 40[rsp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 40[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L470
.L469:
	cmp	QWORD PTR 80[rsp], 0
	jne	.L471
	mov	rax, QWORD PTR 40[rsp]
	mov	BYTE PTR [rax], 0
.L471:
	mov	rax, QWORD PTR 64[rsp]
	add	rsp, 56
	ret
	.seh_endproc
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 8[rsp], 0
	jmp	.L474
.L479:
	add	QWORD PTR 8[rsp], 1
.L474:
	mov	rax, QWORD PTR 8[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jnb	.L475
	mov	rdx, QWORD PTR 32[rsp]
	mov	rax, QWORD PTR 8[rsp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L479
.L475:
	mov	rax, QWORD PTR 8[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	jmp	.L481
.L485:
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR 8[rsp], rax
	jmp	.L482
.L484:
	mov	rax, QWORD PTR 8[rsp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 8[rsp], rdx
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L482
	mov	rax, QWORD PTR 32[rsp]
	jmp	.L483
.L482:
	mov	rax, QWORD PTR 8[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L484
	add	QWORD PTR 32[rsp], 1
.L481:
	mov	rax, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L485
	mov	eax, 0
.L483:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, rcx
	mov	DWORD PTR 40[rsp], edx
	mov	QWORD PTR 8[rsp], 0
.L488:
	movsx	edx, BYTE PTR [rax]
	cmp	DWORD PTR 40[rsp], edx
	jne	.L487
	mov	QWORD PTR 8[rsp], rax
.L487:
	mov	rdx, rax
	lea	rax, 1[rdx]
	cmp	BYTE PTR [rdx], 0
	jne	.L488
	mov	rax, QWORD PTR 8[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	QWORD PTR 72[rsp], rdx
	mov	rax, QWORD PTR 72[rsp]
	mov	rcx, rax
	call	strlen
	mov	QWORD PTR 40[rsp], rax
	cmp	QWORD PTR 40[rsp], 0
	jne	.L493
	mov	rax, QWORD PTR 64[rsp]
	jmp	.L492
.L495:
	mov	rcx, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	mov	rax, QWORD PTR 32[rsp]
	mov	r8, rcx
	mov	rcx, rax
	call	strncmp
	test	eax, eax
	jne	.L494
	mov	rax, QWORD PTR 32[rsp]
	jmp	.L492
.L494:
	mov	rax, QWORD PTR 32[rsp]
	add	rax, 1
	mov	QWORD PTR 64[rsp], rax
.L493:
	mov	rax, QWORD PTR 72[rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	rax, QWORD PTR 64[rsp]
	mov	rcx, rax
	call	strchr
	mov	QWORD PTR 32[rsp], rax
	cmp	QWORD PTR 32[rsp], 0
	jne	.L495
	mov	eax, 0
.L492:
	add	rsp, 56
	ret
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	movsd	QWORD PTR 8[rsp], xmm0
	movsd	QWORD PTR 16[rsp], xmm1
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR 8[rsp]
	jbe	.L497
	movsd	xmm0, QWORD PTR 16[rsp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	ja	.L499
.L497:
	movsd	xmm0, QWORD PTR 8[rsp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L500
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR 16[rsp]
	jbe	.L500
.L499:
	movsd	xmm0, QWORD PTR 8[rsp]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movq	rax, xmm0
	jmp	.L503
.L500:
	mov	rax, QWORD PTR 8[rsp]
.L503:
	movq	xmm0, rax
	ret
	.seh_endproc
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	QWORD PTR 72[rsp], rdx
	mov	QWORD PTR 80[rsp], r8
	mov	QWORD PTR 88[rsp], r9
	mov	rax, QWORD PTR 72[rsp]
	sub	rax, QWORD PTR 88[rsp]
	mov	rdx, rax
	mov	rax, QWORD PTR 64[rsp]
	add	rax, rdx
	mov	QWORD PTR 40[rsp], rax
	cmp	QWORD PTR 88[rsp], 0
	jne	.L507
	mov	rax, QWORD PTR 64[rsp]
	jmp	.L508
.L507:
	mov	rax, QWORD PTR 72[rsp]
	cmp	rax, QWORD PTR 88[rsp]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	.L510
	mov	eax, 0
	jmp	.L508
.L512:
	mov	rax, QWORD PTR 64[rsp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 80[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L511
	mov	rax, QWORD PTR 64[rsp]
	add	rax, 1
	mov	rdx, QWORD PTR 88[rsp]
	lea	rcx, -1[rdx]
	mov	rdx, QWORD PTR 80[rsp]
	add	rdx, 1
	mov	r8, rcx
	mov	rcx, rax
	call	memcmp
	test	eax, eax
	jne	.L511
	mov	rax, QWORD PTR 64[rsp]
	jmp	.L508
.L511:
	add	QWORD PTR 64[rsp], 1
.L510:
	mov	rax, QWORD PTR 64[rsp]
	cmp	QWORD PTR 40[rsp], rax
	jnb	.L512
	mov	eax, 0
.L508:
	add	rsp, 56
	ret
	.seh_endproc
	.globl	mempcpy
	.def	mempcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	mempcpy
mempcpy:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	QWORD PTR 56[rsp], rdx
	mov	QWORD PTR 64[rsp], r8
	mov	rcx, QWORD PTR 64[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 48[rsp]
	mov	r8, rcx
	mov	rcx, rax
	call	memcpy
	mov	rdx, QWORD PTR 64[rsp]
	add	rax, rdx
	add	rsp, 40
	ret
	.seh_endproc
	.globl	frexp
	.def	frexp;	.scl	2;	.type	32;	.endef
	.seh_proc	frexp
frexp:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	movsd	QWORD PTR 32[rsp], xmm0
	mov	QWORD PTR 40[rsp], rdx
	mov	DWORD PTR 8[rsp], 0
	mov	DWORD PTR 12[rsp], 0
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR 32[rsp]
	jbe	.L516
	movsd	xmm0, QWORD PTR 32[rsp]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR 32[rsp], xmm0
	mov	DWORD PTR 12[rsp], 1
.L516:
	movsd	xmm0, QWORD PTR 32[rsp]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jb	.L533
	jmp	.L520
.L521:
	add	DWORD PTR 8[rsp], 1
	movsd	xmm0, QWORD PTR 32[rsp]
	movsd	xmm1, QWORD PTR .LC12[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR 32[rsp], xmm0
.L520:
	movsd	xmm0, QWORD PTR 32[rsp]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jnb	.L521
	jmp	.L522
.L533:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR 32[rsp]
	jbe	.L522
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR 32[rsp]
	jp	.L525
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR 32[rsp]
	je	.L522
	jmp	.L525
.L526:
	sub	DWORD PTR 8[rsp], 1
	movsd	xmm0, QWORD PTR 32[rsp]
	addsd	xmm0, xmm0
	movsd	QWORD PTR 32[rsp], xmm0
.L525:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR 32[rsp]
	ja	.L526
.L522:
	mov	rax, QWORD PTR 40[rsp]
	mov	edx, DWORD PTR 8[rsp]
	mov	DWORD PTR [rax], edx
	cmp	DWORD PTR 12[rsp], 0
	je	.L527
	movsd	xmm0, QWORD PTR 32[rsp]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR 32[rsp], xmm0
.L527:
	mov	rax, QWORD PTR 32[rsp]
	movq	xmm0, rax
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 8[rsp], 0
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR [rsp], rax
	jmp	.L535
.L537:
	mov	rax, QWORD PTR [rsp]
	and	eax, 1
	je	.L536
	mov	rax, QWORD PTR 40[rsp]
	add	QWORD PTR 8[rsp], rax
.L536:
	sal	QWORD PTR 40[rsp]
	shr	QWORD PTR [rsp]
.L535:
	cmp	QWORD PTR [rsp], 0
	jne	.L537
	mov	rax, QWORD PTR 8[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 40[rsp], edx
	mov	QWORD PTR 48[rsp], r8
	mov	DWORD PTR 12[rsp], 1
	mov	DWORD PTR 8[rsp], 0
	jmp	.L540
.L542:
	sal	DWORD PTR 40[rsp]
	sal	DWORD PTR 12[rsp]
.L540:
	mov	eax, DWORD PTR 40[rsp]
	cmp	eax, DWORD PTR 32[rsp]
	jnb	.L543
	cmp	DWORD PTR 12[rsp], 0
	je	.L543
	mov	eax, DWORD PTR 40[rsp]
	test	eax, eax
	jns	.L542
	jmp	.L543
.L545:
	mov	eax, DWORD PTR 32[rsp]
	cmp	eax, DWORD PTR 40[rsp]
	jb	.L544
	mov	eax, DWORD PTR 40[rsp]
	sub	DWORD PTR 32[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	or	DWORD PTR 8[rsp], eax
.L544:
	shr	DWORD PTR 12[rsp]
	shr	DWORD PTR 40[rsp]
.L543:
	cmp	DWORD PTR 12[rsp], 0
	jne	.L545
	cmp	QWORD PTR 48[rsp], 0
	je	.L546
	mov	eax, DWORD PTR 32[rsp]
	jmp	.L547
.L546:
	mov	eax, DWORD PTR 8[rsp]
.L547:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	eax, ecx
	mov	BYTE PTR 32[rsp], al
	cmp	BYTE PTR 32[rsp], 0
	jns	.L549
	not	BYTE PTR 32[rsp]
.L549:
	cmp	BYTE PTR 32[rsp], 0
	jne	.L550
	mov	eax, 7
	jmp	.L551
.L550:
	movsx	eax, BYTE PTR 32[rsp]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	sub	eax, 1
.L551:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	cmp	QWORD PTR 32[rsp], 0
	jns	.L553
	not	QWORD PTR 32[rsp]
.L553:
	cmp	QWORD PTR 32[rsp], 0
	jne	.L554
	mov	eax, 63
	jmp	.L555
.L554:
	bsr	rax, QWORD PTR 32[rsp]
	xor	rax, 63
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	sub	eax, 1
.L555:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 40[rsp], edx
	mov	DWORD PTR 12[rsp], 0
	jmp	.L557
.L559:
	mov	eax, DWORD PTR 32[rsp]
	and	eax, 1
	je	.L558
	mov	eax, DWORD PTR 40[rsp]
	add	DWORD PTR 12[rsp], eax
.L558:
	shr	DWORD PTR 32[rsp]
	sal	DWORD PTR 40[rsp]
.L557:
	cmp	DWORD PTR 32[rsp], 0
	jne	.L559
	mov	eax, DWORD PTR 12[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	DWORD PTR 48[rsp], r8d
	mov	eax, DWORD PTR 48[rsp]
	shr	eax, 3
	mov	DWORD PTR 4[rsp], eax
	mov	eax, DWORD PTR 48[rsp]
	and	eax, -8
	mov	DWORD PTR 8[rsp], eax
	mov	rax, QWORD PTR 32[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jb	.L562
	mov	edx, DWORD PTR 48[rsp]
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rdx
	cmp	rax, QWORD PTR 32[rsp]
	jnb	.L569
.L562:
	mov	DWORD PTR 12[rsp], 0
	jmp	.L564
.L565:
	mov	eax, DWORD PTR 12[rsp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 12[rsp]
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rdx], rax
	add	DWORD PTR 12[rsp], 1
.L564:
	mov	eax, DWORD PTR 12[rsp]
	cmp	eax, DWORD PTR 4[rsp]
	jb	.L565
	jmp	.L566
.L567:
	mov	edx, DWORD PTR 8[rsp]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 8[rsp]
	mov	rcx, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR 8[rsp], 1
.L566:
	mov	eax, DWORD PTR 48[rsp]
	cmp	DWORD PTR 8[rsp], eax
	jb	.L567
	jmp	.L568
.L570:
	mov	edx, DWORD PTR 48[rsp]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L569:
	mov	eax, DWORD PTR 48[rsp]
	lea	edx, -1[rax]
	mov	DWORD PTR 48[rsp], edx
	test	eax, eax
	jne	.L570
.L568:
	nop
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	DWORD PTR 48[rsp], r8d
	mov	eax, DWORD PTR 48[rsp]
	shr	eax
	mov	DWORD PTR 8[rsp], eax
	mov	rax, QWORD PTR 32[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jb	.L572
	mov	edx, DWORD PTR 48[rsp]
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rdx
	cmp	rax, QWORD PTR 32[rsp]
	jnb	.L578
.L572:
	mov	DWORD PTR 12[rsp], 0
	jmp	.L574
.L575:
	mov	eax, DWORD PTR 12[rsp]
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 12[rsp]
	lea	rcx, [rax+rax]
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR [rdx], ax
	add	DWORD PTR 12[rsp], 1
.L574:
	mov	eax, DWORD PTR 12[rsp]
	cmp	eax, DWORD PTR 8[rsp]
	jb	.L575
	mov	eax, DWORD PTR 48[rsp]
	and	eax, 1
	je	.L577
	mov	eax, DWORD PTR 48[rsp]
	sub	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR 48[rsp]
	sub	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	jmp	.L577
.L579:
	mov	edx, DWORD PTR 48[rsp]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L578:
	mov	eax, DWORD PTR 48[rsp]
	lea	edx, -1[rax]
	mov	DWORD PTR 48[rsp], edx
	test	eax, eax
	jne	.L579
.L577:
	nop
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	DWORD PTR 48[rsp], r8d
	mov	eax, DWORD PTR 48[rsp]
	shr	eax, 2
	mov	DWORD PTR 4[rsp], eax
	mov	eax, DWORD PTR 48[rsp]
	and	eax, -4
	mov	DWORD PTR 8[rsp], eax
	mov	rax, QWORD PTR 32[rsp]
	cmp	rax, QWORD PTR 40[rsp]
	jb	.L581
	mov	edx, DWORD PTR 48[rsp]
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rdx
	cmp	rax, QWORD PTR 32[rsp]
	jnb	.L588
.L581:
	mov	DWORD PTR 12[rsp], 0
	jmp	.L583
.L584:
	mov	eax, DWORD PTR 12[rsp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 12[rsp]
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR 12[rsp], 1
.L583:
	mov	eax, DWORD PTR 12[rsp]
	cmp	eax, DWORD PTR 4[rsp]
	jb	.L584
	jmp	.L585
.L586:
	mov	edx, DWORD PTR 8[rsp]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 8[rsp]
	mov	rcx, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR 8[rsp], 1
.L585:
	mov	eax, DWORD PTR 48[rsp]
	cmp	DWORD PTR 8[rsp], eax
	jb	.L586
	jmp	.L587
.L589:
	mov	edx, DWORD PTR 48[rsp]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	mov	eax, DWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 40[rsp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L588:
	mov	eax, DWORD PTR 48[rsp]
	lea	edx, -1[rax]
	mov	DWORD PTR 48[rsp], edx
	test	eax, eax
	jne	.L589
.L587:
	nop
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__modi
	.def	__modi;	.scl	2;	.type	32;	.endef
	.seh_proc	__modi
__modi:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 8[rsp]
	cdq
	idiv	DWORD PTR 16[rsp]
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__uitod
	.def	__uitod;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitod
__uitod:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	test	rax, rax
	js	.L593
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	movq	rax, xmm1
	jmp	.L595
.L593:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
	movq	rax, xmm0
.L595:
	movq	xmm0, rax
	ret
	.seh_endproc
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	test	rax, rax
	js	.L597
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, rax
	movd	eax, xmm1
	jmp	.L599
.L597:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
	movd	eax, xmm0
.L599:
	movd	xmm0, eax
	ret
	.seh_endproc
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	rax, QWORD PTR 8[rsp]
	test	rax, rax
	js	.L601
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	movq	rax, xmm1
	jmp	.L603
.L601:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
	movq	rax, xmm0
.L603:
	movq	xmm0, rax
	ret
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	rax, QWORD PTR 8[rsp]
	test	rax, rax
	js	.L605
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, rax
	movd	eax, xmm1
	jmp	.L607
.L605:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
	movd	eax, xmm0
.L607:
	movd	xmm0, eax
	ret
	.seh_endproc
	.globl	__umodi
	.def	__umodi;	.scl	2;	.type	32;	.endef
	.seh_proc	__umodi
__umodi:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 8[rsp]
	mov	edx, 0
	div	DWORD PTR 16[rsp]
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__clzhi2
	.def	__clzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzhi2
__clzhi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 32[rsp], ax
	mov	DWORD PTR 12[rsp], 0
	jmp	.L611
.L614:
	mov	eax, 15
	sub	eax, DWORD PTR 12[rsp]
	movzx	edx, WORD PTR 32[rsp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L613
	add	DWORD PTR 12[rsp], 1
.L611:
	cmp	DWORD PTR 12[rsp], 15
	jle	.L614
.L613:
	mov	eax, DWORD PTR 12[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 32[rsp], ax
	mov	DWORD PTR 12[rsp], 0
	jmp	.L618
.L621:
	movzx	edx, WORD PTR 32[rsp]
	mov	eax, DWORD PTR 12[rsp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L620
	add	DWORD PTR 12[rsp], 1
.L618:
	cmp	DWORD PTR 12[rsp], 15
	jle	.L621
.L620:
	mov	eax, DWORD PTR 12[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	movss	DWORD PTR 8[rsp], xmm0
	movss	xmm0, DWORD PTR 8[rsp]
	comiss	xmm0, DWORD PTR .LC17[rip]
	jb	.L629
	movss	xmm0, DWORD PTR 8[rsp]
	movss	xmm1, DWORD PTR .LC17[rip]
	subss	xmm0, xmm1
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L627
.L629:
	movss	xmm0, DWORD PTR 8[rsp]
	cvttss2si	eax, xmm0
.L627:
	ret
	.seh_endproc
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 32[rsp], ax
	mov	DWORD PTR 8[rsp], 0
	mov	DWORD PTR 12[rsp], 0
	jmp	.L631
.L633:
	movzx	edx, WORD PTR 32[rsp]
	mov	eax, DWORD PTR 12[rsp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L632
	add	DWORD PTR 8[rsp], 1
.L632:
	add	DWORD PTR 12[rsp], 1
.L631:
	cmp	DWORD PTR 12[rsp], 15
	jle	.L633
	mov	eax, DWORD PTR 8[rsp]
	and	eax, 1
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 32[rsp], ax
	mov	DWORD PTR 8[rsp], 0
	mov	DWORD PTR 12[rsp], 0
	jmp	.L636
.L638:
	movzx	edx, WORD PTR 32[rsp]
	mov	eax, DWORD PTR 12[rsp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L637
	add	DWORD PTR 8[rsp], 1
.L637:
	add	DWORD PTR 12[rsp], 1
.L636:
	cmp	DWORD PTR 12[rsp], 15
	jle	.L638
	mov	eax, DWORD PTR 8[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 40[rsp], edx
	mov	DWORD PTR 12[rsp], 0
	jmp	.L641
.L643:
	mov	eax, DWORD PTR 32[rsp]
	and	eax, 1
	je	.L642
	mov	eax, DWORD PTR 40[rsp]
	add	DWORD PTR 12[rsp], eax
.L642:
	shr	DWORD PTR 32[rsp]
	sal	DWORD PTR 40[rsp]
.L641:
	cmp	DWORD PTR 32[rsp], 0
	jne	.L643
	mov	eax, DWORD PTR 12[rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 40[rsp], edx
	mov	DWORD PTR 12[rsp], 0
	cmp	DWORD PTR 32[rsp], 0
	jne	.L648
	mov	eax, 0
	jmp	.L647
.L650:
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 1
	je	.L649
	mov	eax, DWORD PTR 32[rsp]
	add	DWORD PTR 12[rsp], eax
.L649:
	sal	DWORD PTR 32[rsp]
	shr	DWORD PTR 40[rsp]
.L648:
	cmp	DWORD PTR 40[rsp], 0
	jne	.L650
	mov	eax, DWORD PTR 12[rsp]
.L647:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 40[rsp], edx
	mov	DWORD PTR 48[rsp], r8d
	mov	DWORD PTR 12[rsp], 1
	mov	DWORD PTR 8[rsp], 0
	jmp	.L652
.L654:
	sal	DWORD PTR 40[rsp]
	sal	DWORD PTR 12[rsp]
.L652:
	mov	eax, DWORD PTR 40[rsp]
	cmp	eax, DWORD PTR 32[rsp]
	jnb	.L655
	cmp	DWORD PTR 12[rsp], 0
	je	.L655
	mov	eax, DWORD PTR 40[rsp]
	test	eax, eax
	jns	.L654
	jmp	.L655
.L657:
	mov	eax, DWORD PTR 32[rsp]
	cmp	eax, DWORD PTR 40[rsp]
	jb	.L656
	mov	eax, DWORD PTR 40[rsp]
	sub	DWORD PTR 32[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	or	DWORD PTR 8[rsp], eax
.L656:
	shr	DWORD PTR 12[rsp]
	shr	DWORD PTR 40[rsp]
.L655:
	cmp	DWORD PTR 12[rsp], 0
	jne	.L657
	cmp	DWORD PTR 48[rsp], 0
	je	.L658
	mov	eax, DWORD PTR 32[rsp]
	jmp	.L659
.L658:
	mov	eax, DWORD PTR 8[rsp]
.L659:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	movss	DWORD PTR 8[rsp], xmm0
	movss	DWORD PTR 16[rsp], xmm1
	movss	xmm0, DWORD PTR 16[rsp]
	comiss	xmm0, DWORD PTR 8[rsp]
	jbe	.L668
	mov	eax, -1
	jmp	.L663
.L668:
	movss	xmm0, DWORD PTR 8[rsp]
	comiss	xmm0, DWORD PTR 16[rsp]
	jbe	.L669
	mov	eax, 1
	jmp	.L663
.L669:
	mov	eax, 0
.L663:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	movsd	QWORD PTR 8[rsp], xmm0
	movsd	QWORD PTR 16[rsp], xmm1
	movsd	xmm0, QWORD PTR 16[rsp]
	comisd	xmm0, QWORD PTR 8[rsp]
	jbe	.L678
	mov	eax, -1
	jmp	.L673
.L678:
	movsd	xmm0, QWORD PTR 8[rsp]
	comisd	xmm0, QWORD PTR 16[rsp]
	jbe	.L679
	mov	eax, 1
	jmp	.L673
.L679:
	mov	eax, 0
.L673:
	ret
	.seh_endproc
	.globl	__mspabi_mpysll
	.def	__mspabi_mpysll;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpysll
__mspabi_mpysll:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	eax, DWORD PTR 8[rsp]
	movsx	rdx, eax
	mov	eax, DWORD PTR 16[rsp]
	cdqe
	imul	rax, rdx
	ret
	.seh_endproc
	.globl	__mspabi_mpyull
	.def	__mspabi_mpyull;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpyull
__mspabi_mpyull:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	DWORD PTR 16[rsp], edx
	mov	edx, DWORD PTR 8[rsp]
	mov	eax, DWORD PTR 16[rsp]
	imul	rax, rdx
	ret
	.seh_endproc
	.globl	__mulhi3
	.def	__mulhi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulhi3
__mulhi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 40[rsp], edx
	mov	DWORD PTR 8[rsp], 0
	mov	DWORD PTR 4[rsp], 0
	cmp	DWORD PTR 40[rsp], 0
	jns	.L685
	neg	DWORD PTR 40[rsp]
	mov	DWORD PTR 8[rsp], 1
.L685:
	mov	BYTE PTR 15[rsp], 0
	jmp	.L686
.L689:
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 1
	je	.L687
	mov	eax, DWORD PTR 32[rsp]
	add	DWORD PTR 4[rsp], eax
.L687:
	sal	DWORD PTR 32[rsp]
	sar	DWORD PTR 40[rsp]
	movzx	eax, BYTE PTR 15[rsp]
	add	eax, 1
	mov	BYTE PTR 15[rsp], al
.L686:
	cmp	DWORD PTR 40[rsp], 0
	je	.L688
	movzx	eax, BYTE PTR 15[rsp]
	cmp	al, 31
	jbe	.L689
.L688:
	cmp	DWORD PTR 8[rsp], 0
	je	.L690
	mov	eax, DWORD PTR 4[rsp]
	neg	eax
	jmp	.L692
.L690:
	mov	eax, DWORD PTR 4[rsp]
.L692:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 64[rsp], ecx
	mov	DWORD PTR 72[rsp], edx
	mov	DWORD PTR 44[rsp], 0
	cmp	DWORD PTR 64[rsp], 0
	jns	.L694
	neg	DWORD PTR 64[rsp]
	cmp	DWORD PTR 44[rsp], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR 44[rsp], eax
.L694:
	cmp	DWORD PTR 72[rsp], 0
	jns	.L695
	neg	DWORD PTR 72[rsp]
	cmp	DWORD PTR 44[rsp], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR 44[rsp], eax
.L695:
	mov	edx, DWORD PTR 72[rsp]
	mov	eax, DWORD PTR 64[rsp]
	mov	r8d, 0
	mov	ecx, eax
	call	__udivmodsi4
	mov	DWORD PTR 40[rsp], eax
	cmp	DWORD PTR 44[rsp], 0
	je	.L696
	neg	DWORD PTR 40[rsp]
.L696:
	mov	eax, DWORD PTR 40[rsp]
	add	rsp, 56
	ret
	.seh_endproc
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 64[rsp], ecx
	mov	DWORD PTR 72[rsp], edx
	mov	DWORD PTR 44[rsp], 0
	cmp	DWORD PTR 64[rsp], 0
	jns	.L699
	neg	DWORD PTR 64[rsp]
	mov	DWORD PTR 44[rsp], 1
.L699:
	cmp	DWORD PTR 72[rsp], 0
	jns	.L700
	neg	DWORD PTR 72[rsp]
.L700:
	mov	edx, DWORD PTR 72[rsp]
	mov	eax, DWORD PTR 64[rsp]
	mov	r8d, 1
	mov	ecx, eax
	call	__udivmodsi4
	mov	DWORD PTR 40[rsp], eax
	cmp	DWORD PTR 44[rsp], 0
	je	.L701
	neg	DWORD PTR 40[rsp]
.L701:
	mov	eax, DWORD PTR 40[rsp]
	add	rsp, 56
	ret
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	eax, edx
	mov	DWORD PTR 48[rsp], r8d
	mov	edx, ecx
	mov	WORD PTR 32[rsp], dx
	mov	WORD PTR 40[rsp], ax
	mov	WORD PTR 14[rsp], 1
	mov	WORD PTR 12[rsp], 0
	jmp	.L704
.L706:
	sal	WORD PTR 40[rsp]
	sal	WORD PTR 14[rsp]
.L704:
	movzx	eax, WORD PTR 40[rsp]
	cmp	ax, WORD PTR 32[rsp]
	jnb	.L707
	cmp	WORD PTR 14[rsp], 0
	je	.L707
	movzx	eax, WORD PTR 40[rsp]
	test	ax, ax
	jns	.L706
	jmp	.L707
.L709:
	movzx	eax, WORD PTR 32[rsp]
	cmp	ax, WORD PTR 40[rsp]
	jb	.L708
	movzx	eax, WORD PTR 40[rsp]
	sub	WORD PTR 32[rsp], ax
	movzx	eax, WORD PTR 14[rsp]
	or	WORD PTR 12[rsp], ax
.L708:
	shr	WORD PTR 14[rsp]
	shr	WORD PTR 40[rsp]
.L707:
	cmp	WORD PTR 14[rsp], 0
	jne	.L709
	cmp	DWORD PTR 48[rsp], 0
	je	.L710
	movzx	eax, WORD PTR 32[rsp]
	jmp	.L711
.L710:
	movzx	eax, WORD PTR 12[rsp]
.L711:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	DWORD PTR 40[rsp], edx
	mov	DWORD PTR 48[rsp], r8d
	mov	DWORD PTR 12[rsp], 1
	mov	DWORD PTR 8[rsp], 0
	jmp	.L713
.L715:
	sal	DWORD PTR 40[rsp]
	sal	DWORD PTR 12[rsp]
.L713:
	mov	eax, DWORD PTR 40[rsp]
	cmp	eax, DWORD PTR 32[rsp]
	jnb	.L716
	cmp	DWORD PTR 12[rsp], 0
	je	.L716
	mov	eax, DWORD PTR 40[rsp]
	test	eax, eax
	jns	.L715
	jmp	.L716
.L718:
	mov	eax, DWORD PTR 32[rsp]
	cmp	eax, DWORD PTR 40[rsp]
	jb	.L717
	mov	eax, DWORD PTR 40[rsp]
	sub	DWORD PTR 32[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	or	DWORD PTR 8[rsp], eax
.L717:
	shr	DWORD PTR 12[rsp]
	shr	DWORD PTR 40[rsp]
.L716:
	cmp	DWORD PTR 12[rsp], 0
	jne	.L718
	cmp	DWORD PTR 48[rsp], 0
	je	.L719
	mov	eax, DWORD PTR 32[rsp]
	jmp	.L720
.L719:
	mov	eax, DWORD PTR 8[rsp]
.L720:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	DWORD PTR 56[rsp], edx
	mov	DWORD PTR 28[rsp], 32
	mov	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR 16[rsp], rax
	mov	eax, DWORD PTR 56[rsp]
	and	eax, DWORD PTR 28[rsp]
	je	.L722
	mov	DWORD PTR 8[rsp], 0
	mov	edx, DWORD PTR 16[rsp]
	mov	eax, DWORD PTR 56[rsp]
	sub	eax, DWORD PTR 28[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR 12[rsp], eax
	jmp	.L723
.L722:
	cmp	DWORD PTR 56[rsp], 0
	jne	.L724
	mov	rax, QWORD PTR 48[rsp]
	jmp	.L726
.L724:
	mov	edx, DWORD PTR 16[rsp]
	mov	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR 8[rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	mov	edx, eax
	mov	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	r8d, edx
	mov	edx, DWORD PTR 16[rsp]
	mov	eax, DWORD PTR 28[rsp]
	sub	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	mov	DWORD PTR 12[rsp], eax
.L723:
	mov	rax, QWORD PTR 8[rsp]
.L726:
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rcx
	mov	QWORD PTR 8[rsp], rbx
	mov	DWORD PTR 88[rsp], edx
	mov	DWORD PTR 60[rsp], 64
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	eax, DWORD PTR 88[rsp]
	and	eax, DWORD PTR 60[rsp]
	je	.L728
	mov	QWORD PTR 16[rsp], 0
	mov	rdx, QWORD PTR 32[rsp]
	mov	eax, DWORD PTR 88[rsp]
	sub	eax, DWORD PTR 60[rsp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	jmp	.L729
.L728:
	cmp	DWORD PTR 88[rsp], 0
	jne	.L730
	movdqa	xmm0, XMMWORD PTR [rsp]
	jmp	.L732
.L730:
	mov	rdx, QWORD PTR 32[rsp]
	mov	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 16[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	mov	rdx, rax
	mov	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	rdx, QWORD PTR 32[rsp]
	mov	eax, DWORD PTR 60[rsp]
	sub	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	mov	QWORD PTR 24[rsp], rax
.L729:
	movdqa	xmm0, XMMWORD PTR 16[rsp]
.L732:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	DWORD PTR 56[rsp], edx
	mov	DWORD PTR 28[rsp], 32
	mov	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR 16[rsp], rax
	mov	eax, DWORD PTR 56[rsp]
	and	eax, DWORD PTR 28[rsp]
	je	.L734
	mov	edx, DWORD PTR 20[rsp]
	mov	eax, DWORD PTR 28[rsp]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR 12[rsp], eax
	mov	edx, DWORD PTR 20[rsp]
	mov	eax, DWORD PTR 56[rsp]
	sub	eax, DWORD PTR 28[rsp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR 8[rsp], eax
	jmp	.L735
.L734:
	cmp	DWORD PTR 56[rsp], 0
	jne	.L736
	mov	rax, QWORD PTR 48[rsp]
	jmp	.L738
.L736:
	mov	edx, DWORD PTR 20[rsp]
	mov	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	mov	edx, eax
	mov	eax, DWORD PTR 28[rsp]
	sub	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	r8d, edx
	mov	edx, DWORD PTR 16[rsp]
	mov	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	mov	DWORD PTR 8[rsp], eax
.L735:
	mov	rax, QWORD PTR 8[rsp]
.L738:
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rcx
	mov	QWORD PTR 8[rsp], rbx
	mov	DWORD PTR 88[rsp], edx
	mov	DWORD PTR 60[rsp], 64
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	eax, DWORD PTR 88[rsp]
	and	eax, DWORD PTR 60[rsp]
	je	.L740
	mov	rdx, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR 60[rsp]
	sub	eax, 1
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	mov	rdx, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR 88[rsp]
	sub	eax, DWORD PTR 60[rsp]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 16[rsp], rax
	jmp	.L741
.L740:
	cmp	DWORD PTR 88[rsp], 0
	jne	.L742
	movdqa	xmm0, XMMWORD PTR [rsp]
	jmp	.L744
.L742:
	mov	rdx, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	mov	rdx, rax
	mov	eax, DWORD PTR 60[rsp]
	sub	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	rdx, QWORD PTR 32[rsp]
	mov	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	mov	QWORD PTR 16[rsp], rax
.L741:
	movdqa	xmm0, XMMWORD PTR 16[rsp]
.L744:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	rax, QWORD PTR 8[rsp]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	shr	rax, 40
	and	eax, 65280
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	shr	rax, 24
	and	eax, 16711680
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	shr	rax, 8
	and	eax, 4278190080
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 8
	movabs	rcx, 1095216660480
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 24
	movabs	rcx, 280375465082880
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 40
	movabs	rcx, 71776119061217280
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	sal	rax, 56
	or	rax, rdx
	ret
	.seh_endproc
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	DWORD PTR 8[rsp], ecx
	mov	eax, DWORD PTR 8[rsp]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR 8[rsp]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR 8[rsp]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR 8[rsp]
	sal	eax, 24
	or	eax, edx
	ret
	.seh_endproc
	.globl	__clzsi2
	.def	__clzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzsi2
__clzsi2:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	DWORD PTR 80[rsp], ecx
	mov	eax, DWORD PTR 80[rsp]
	mov	DWORD PTR 60[rsp], eax
	cmp	DWORD PTR 60[rsp], 65535
	ja	.L750
	mov	eax, 16
	jmp	.L751
.L750:
	mov	eax, 0
.L751:
	mov	DWORD PTR 56[rsp], eax
	mov	eax, 16
	sub	eax, DWORD PTR 56[rsp]
	mov	edx, DWORD PTR 60[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 52[rsp], eax
	mov	eax, DWORD PTR 56[rsp]
	mov	DWORD PTR 48[rsp], eax
	mov	eax, DWORD PTR 52[rsp]
	and	eax, 65280
	jne	.L752
	mov	eax, 8
	jmp	.L753
.L752:
	mov	eax, 0
.L753:
	mov	DWORD PTR 44[rsp], eax
	mov	eax, 8
	sub	eax, DWORD PTR 44[rsp]
	mov	edx, DWORD PTR 52[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 40[rsp], eax
	mov	edx, DWORD PTR 48[rsp]
	mov	eax, DWORD PTR 44[rsp]
	add	eax, edx
	mov	DWORD PTR 36[rsp], eax
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 240
	jne	.L754
	mov	eax, 4
	jmp	.L755
.L754:
	mov	eax, 0
.L755:
	mov	DWORD PTR 32[rsp], eax
	mov	eax, 4
	sub	eax, DWORD PTR 32[rsp]
	mov	edx, DWORD PTR 40[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 28[rsp], eax
	mov	edx, DWORD PTR 36[rsp]
	mov	eax, DWORD PTR 32[rsp]
	add	eax, edx
	mov	DWORD PTR 24[rsp], eax
	mov	eax, DWORD PTR 28[rsp]
	and	eax, 12
	jne	.L756
	mov	eax, 2
	jmp	.L757
.L756:
	mov	eax, 0
.L757:
	mov	DWORD PTR 20[rsp], eax
	mov	eax, 2
	sub	eax, DWORD PTR 20[rsp]
	mov	edx, DWORD PTR 28[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 16[rsp], eax
	mov	edx, DWORD PTR 24[rsp]
	mov	eax, DWORD PTR 20[rsp]
	add	eax, edx
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR 16[rsp]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR 16[rsp]
	imul	edx, eax
	mov	eax, DWORD PTR 12[rsp]
	add	eax, edx
	add	rsp, 72
	ret
	.seh_endproc
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 16[rsp], rax
	mov	QWORD PTR 24[rsp], rdx
	mov	rax, QWORD PTR 24[rsp]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR 40[rsp], rax
	mov	rdx, QWORD PTR 24[rsp]
	mov	rax, QWORD PTR 40[rsp]
	not	rax
	and	rdx, rax
	mov	rax, QWORD PTR 16[rsp]
	and	rax, QWORD PTR 40[rsp]
	or	rax, rdx
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	rax, QWORD PTR 40[rsp]
	and	eax, 64
	add	eax, edx
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR [rsp], rax
	mov	edx, DWORD PTR 12[rsp]
	mov	eax, DWORD PTR 4[rsp]
	cmp	edx, eax
	jge	.L762
	mov	eax, 0
	jmp	.L767
.L762:
	mov	edx, DWORD PTR 12[rsp]
	mov	eax, DWORD PTR 4[rsp]
	cmp	edx, eax
	jle	.L764
	mov	eax, 2
	jmp	.L767
.L764:
	mov	edx, DWORD PTR 8[rsp]
	mov	eax, DWORD PTR [rsp]
	cmp	edx, eax
	jnb	.L765
	mov	eax, 0
	jmp	.L767
.L765:
	mov	eax, DWORD PTR 8[rsp]
	mov	edx, DWORD PTR [rsp]
	cmp	edx, eax
	jnb	.L766
	mov	eax, 2
	jmp	.L767
.L766:
	mov	eax, 1
.L767:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	QWORD PTR 56[rsp], rdx
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 48[rsp]
	mov	rcx, rax
	call	__cmpdi2
	sub	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR 16[rsp], rcx
	mov	QWORD PTR 24[rsp], rbx
	mov	rbx, rdx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	rax, QWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 24[rsp]
	mov	QWORD PTR 48[rsp], rax
	mov	QWORD PTR 56[rsp], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 40[rsp]
	cmp	rdx, rax
	jge	.L771
	mov	eax, 0
	jmp	.L776
.L771:
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 40[rsp]
	cmp	rdx, rax
	jle	.L773
	mov	eax, 2
	jmp	.L776
.L773:
	mov	rdx, QWORD PTR 48[rsp]
	mov	rax, QWORD PTR 32[rsp]
	cmp	rdx, rax
	jnb	.L774
	mov	eax, 0
	jmp	.L776
.L774:
	mov	rax, QWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 32[rsp]
	cmp	rdx, rax
	jnb	.L775
	mov	eax, 2
	jmp	.L776
.L775:
	mov	eax, 1
.L776:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	DWORD PTR 80[rsp], ecx
	mov	eax, DWORD PTR 80[rsp]
	mov	DWORD PTR 60[rsp], eax
	mov	eax, DWORD PTR 60[rsp]
	movzx	eax, ax
	test	eax, eax
	jne	.L778
	mov	eax, 16
	jmp	.L779
.L778:
	mov	eax, 0
.L779:
	mov	DWORD PTR 56[rsp], eax
	mov	eax, DWORD PTR 56[rsp]
	mov	edx, DWORD PTR 60[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 52[rsp], eax
	mov	eax, DWORD PTR 56[rsp]
	mov	DWORD PTR 48[rsp], eax
	mov	eax, DWORD PTR 52[rsp]
	movzx	eax, al
	test	eax, eax
	jne	.L780
	mov	eax, 8
	jmp	.L781
.L780:
	mov	eax, 0
.L781:
	mov	DWORD PTR 44[rsp], eax
	mov	eax, DWORD PTR 44[rsp]
	mov	edx, DWORD PTR 52[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 40[rsp], eax
	mov	edx, DWORD PTR 48[rsp]
	mov	eax, DWORD PTR 44[rsp]
	add	eax, edx
	mov	DWORD PTR 36[rsp], eax
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 15
	jne	.L782
	mov	eax, 4
	jmp	.L783
.L782:
	mov	eax, 0
.L783:
	mov	DWORD PTR 32[rsp], eax
	mov	eax, DWORD PTR 32[rsp]
	mov	edx, DWORD PTR 40[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 28[rsp], eax
	mov	edx, DWORD PTR 36[rsp]
	mov	eax, DWORD PTR 32[rsp]
	add	eax, edx
	mov	DWORD PTR 24[rsp], eax
	mov	eax, DWORD PTR 28[rsp]
	and	eax, 3
	jne	.L784
	mov	eax, 2
	jmp	.L785
.L784:
	mov	eax, 0
.L785:
	mov	DWORD PTR 20[rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	mov	edx, DWORD PTR 28[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 16[rsp], eax
	mov	eax, DWORD PTR 16[rsp]
	and	eax, 3
	mov	DWORD PTR 12[rsp], eax
	mov	edx, DWORD PTR 24[rsp]
	mov	eax, DWORD PTR 20[rsp]
	add	eax, edx
	mov	DWORD PTR 8[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, DWORD PTR 12[rsp]
	not	eax
	and	eax, 1
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR 8[rsp]
	add	eax, edx
	add	rsp, 72
	ret
	.seh_endproc
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 16[rsp], rax
	mov	QWORD PTR 24[rsp], rdx
	mov	rax, QWORD PTR 16[rsp]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 24[rsp]
	and	rax, QWORD PTR 40[rsp]
	mov	rcx, QWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 40[rsp]
	not	rdx
	and	rdx, rcx
	or	rax, rdx
	rep bsf	rax, rax
	mov	edx, eax
	mov	rax, QWORD PTR 40[rsp]
	and	eax, 64
	add	eax, edx
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 16[rsp], rax
	mov	QWORD PTR 24[rsp], rdx
	mov	rax, QWORD PTR 16[rsp]
	test	rax, rax
	jne	.L790
	mov	rax, QWORD PTR 24[rsp]
	test	rax, rax
	jne	.L791
	mov	eax, 0
	jmp	.L793
.L791:
	mov	rax, QWORD PTR 24[rsp]
	rep bsf	rax, rax
	add	eax, 65
	jmp	.L793
.L790:
	xor	eax, eax
	rep bsf	rax, QWORD PTR 16[rsp]
	add	eax, 1
.L793:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	DWORD PTR 56[rsp], edx
	mov	DWORD PTR 28[rsp], 32
	mov	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR 16[rsp], rax
	mov	eax, DWORD PTR 56[rsp]
	and	eax, DWORD PTR 28[rsp]
	je	.L795
	mov	DWORD PTR 12[rsp], 0
	mov	edx, DWORD PTR 20[rsp]
	mov	eax, DWORD PTR 56[rsp]
	sub	eax, DWORD PTR 28[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 8[rsp], eax
	jmp	.L796
.L795:
	cmp	DWORD PTR 56[rsp], 0
	jne	.L797
	mov	rax, QWORD PTR 48[rsp]
	jmp	.L799
.L797:
	mov	edx, DWORD PTR 20[rsp]
	mov	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 12[rsp], eax
	mov	edx, DWORD PTR 20[rsp]
	mov	eax, DWORD PTR 28[rsp]
	sub	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	sal	edx, cl
	mov	r8d, edx
	mov	edx, DWORD PTR 16[rsp]
	mov	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	mov	DWORD PTR 8[rsp], eax
.L796:
	mov	rax, QWORD PTR 8[rsp]
.L799:
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rcx
	mov	QWORD PTR 8[rsp], rbx
	mov	DWORD PTR 88[rsp], edx
	mov	DWORD PTR 60[rsp], 64
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	eax, DWORD PTR 88[rsp]
	and	eax, DWORD PTR 60[rsp]
	je	.L801
	mov	QWORD PTR 24[rsp], 0
	mov	rdx, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR 88[rsp]
	sub	eax, DWORD PTR 60[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 16[rsp], rax
	jmp	.L802
.L801:
	cmp	DWORD PTR 88[rsp], 0
	jne	.L803
	movdqa	xmm0, XMMWORD PTR [rsp]
	jmp	.L805
.L803:
	mov	rdx, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	mov	rdx, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR 60[rsp]
	sub	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	rdx, QWORD PTR 32[rsp]
	mov	eax, DWORD PTR 88[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	mov	QWORD PTR 16[rsp], rax
.L802:
	movdqa	xmm0, XMMWORD PTR 16[rsp]
.L805:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	DWORD PTR 48[rsp], ecx
	mov	DWORD PTR 56[rsp], edx
	mov	DWORD PTR 28[rsp], 16
	mov	eax, DWORD PTR 28[rsp]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 24[rsp], eax
	mov	eax, DWORD PTR 48[rsp]
	and	eax, DWORD PTR 24[rsp]
	mov	edx, eax
	mov	eax, DWORD PTR 56[rsp]
	and	eax, DWORD PTR 24[rsp]
	imul	eax, edx
	mov	DWORD PTR [rsp], eax
	mov	edx, DWORD PTR [rsp]
	mov	eax, DWORD PTR 28[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 20[rsp], eax
	mov	eax, DWORD PTR [rsp]
	and	eax, DWORD PTR 24[rsp]
	mov	DWORD PTR [rsp], eax
	mov	eax, DWORD PTR 28[rsp]
	mov	edx, DWORD PTR 48[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR 56[rsp]
	and	eax, DWORD PTR 24[rsp]
	imul	edx, eax
	mov	eax, DWORD PTR 20[rsp]
	add	eax, edx
	mov	DWORD PTR 16[rsp], eax
	mov	edx, DWORD PTR [rsp]
	mov	eax, DWORD PTR 16[rsp]
	and	eax, DWORD PTR 24[rsp]
	mov	r8d, eax
	mov	eax, DWORD PTR 28[rsp]
	mov	ecx, eax
	sal	r8d, cl
	mov	eax, r8d
	add	eax, edx
	mov	DWORD PTR [rsp], eax
	mov	eax, DWORD PTR 28[rsp]
	mov	edx, DWORD PTR 16[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 4[rsp], eax
	mov	edx, DWORD PTR [rsp]
	mov	eax, DWORD PTR 28[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR [rsp]
	and	eax, DWORD PTR 24[rsp]
	mov	DWORD PTR [rsp], eax
	mov	eax, DWORD PTR 28[rsp]
	mov	edx, DWORD PTR 56[rsp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR 48[rsp]
	and	eax, DWORD PTR 24[rsp]
	imul	edx, eax
	mov	eax, DWORD PTR 12[rsp]
	add	eax, edx
	mov	DWORD PTR 8[rsp], eax
	mov	edx, DWORD PTR [rsp]
	mov	eax, DWORD PTR 8[rsp]
	and	eax, DWORD PTR 24[rsp]
	mov	r8d, eax
	mov	eax, DWORD PTR 28[rsp]
	mov	ecx, eax
	sal	r8d, cl
	mov	eax, r8d
	add	eax, edx
	mov	DWORD PTR [rsp], eax
	mov	edx, DWORD PTR 4[rsp]
	mov	eax, DWORD PTR 28[rsp]
	mov	r8d, DWORD PTR 8[rsp]
	mov	ecx, eax
	shr	r8d, cl
	mov	eax, r8d
	add	eax, edx
	mov	DWORD PTR 4[rsp], eax
	mov	edx, DWORD PTR 4[rsp]
	mov	eax, DWORD PTR 28[rsp]
	mov	r8d, DWORD PTR 48[rsp]
	mov	ecx, eax
	shr	r8d, cl
	mov	eax, DWORD PTR 28[rsp]
	mov	r9d, DWORD PTR 56[rsp]
	mov	ecx, eax
	shr	r9d, cl
	mov	eax, r9d
	imul	eax, r8d
	add	eax, edx
	mov	DWORD PTR 4[rsp], eax
	mov	rax, QWORD PTR [rsp]
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	QWORD PTR 80[rsp], rcx
	mov	QWORD PTR 88[rsp], rdx
	mov	rax, QWORD PTR 80[rsp]
	mov	QWORD PTR 56[rsp], rax
	mov	rax, QWORD PTR 88[rsp]
	mov	QWORD PTR 48[rsp], rax
	mov	edx, DWORD PTR 48[rsp]
	mov	eax, DWORD PTR 56[rsp]
	mov	ecx, eax
	call	__muldsi3
	mov	QWORD PTR 40[rsp], rax
	mov	ecx, DWORD PTR 44[rsp]
	mov	edx, DWORD PTR 60[rsp]
	mov	eax, DWORD PTR 48[rsp]
	imul	edx, eax
	mov	r8d, edx
	mov	edx, DWORD PTR 56[rsp]
	mov	eax, DWORD PTR 52[rsp]
	imul	eax, edx
	add	eax, r8d
	add	eax, ecx
	mov	DWORD PTR 44[rsp], eax
	mov	rax, QWORD PTR 40[rsp]
	add	rsp, 72
	ret
	.seh_endproc
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	QWORD PTR 80[rsp], rcx
	mov	QWORD PTR 88[rsp], rdx
	mov	DWORD PTR 60[rsp], 32
	mov	eax, DWORD PTR 60[rsp]
	mov	rdx, -1
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR 80[rsp]
	and	rax, QWORD PTR 48[rsp]
	mov	rdx, rax
	mov	rax, QWORD PTR 88[rsp]
	and	rax, QWORD PTR 48[rsp]
	imul	rax, rdx
	mov	QWORD PTR [rsp], rax
	mov	rdx, QWORD PTR [rsp]
	mov	eax, DWORD PTR 60[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR [rsp]
	and	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR [rsp], rax
	mov	eax, DWORD PTR 60[rsp]
	mov	rdx, QWORD PTR 80[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR 88[rsp]
	and	rax, QWORD PTR 48[rsp]
	imul	rdx, rax
	mov	rax, QWORD PTR 40[rsp]
	add	rax, rdx
	mov	QWORD PTR 32[rsp], rax
	mov	rdx, QWORD PTR [rsp]
	mov	rax, QWORD PTR 32[rsp]
	and	rax, QWORD PTR 48[rsp]
	mov	r8, rax
	mov	eax, DWORD PTR 60[rsp]
	mov	ecx, eax
	sal	r8, cl
	mov	rax, r8
	add	rax, rdx
	mov	QWORD PTR [rsp], rax
	mov	eax, DWORD PTR 60[rsp]
	mov	rdx, QWORD PTR 32[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 8[rsp], rax
	mov	rdx, QWORD PTR [rsp]
	mov	eax, DWORD PTR 60[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	mov	rax, QWORD PTR [rsp]
	and	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR [rsp], rax
	mov	eax, DWORD PTR 60[rsp]
	mov	rdx, QWORD PTR 88[rsp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR 80[rsp]
	and	rax, QWORD PTR 48[rsp]
	imul	rdx, rax
	mov	rax, QWORD PTR 24[rsp]
	add	rax, rdx
	mov	QWORD PTR 16[rsp], rax
	mov	rdx, QWORD PTR [rsp]
	mov	rax, QWORD PTR 16[rsp]
	and	rax, QWORD PTR 48[rsp]
	mov	r8, rax
	mov	eax, DWORD PTR 60[rsp]
	mov	ecx, eax
	sal	r8, cl
	mov	rax, r8
	add	rax, rdx
	mov	QWORD PTR [rsp], rax
	mov	rdx, QWORD PTR 8[rsp]
	mov	eax, DWORD PTR 60[rsp]
	mov	r8, QWORD PTR 16[rsp]
	mov	ecx, eax
	shr	r8, cl
	mov	rax, r8
	add	rax, rdx
	mov	QWORD PTR 8[rsp], rax
	mov	rdx, QWORD PTR 8[rsp]
	mov	eax, DWORD PTR 60[rsp]
	mov	r8, QWORD PTR 80[rsp]
	mov	ecx, eax
	shr	r8, cl
	mov	eax, DWORD PTR 60[rsp]
	mov	r9, QWORD PTR 88[rsp]
	mov	ecx, eax
	shr	r9, cl
	mov	rax, r9
	imul	rax, r8
	add	rax, rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 72
	ret
	.seh_endproc
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 112
	.seh_stackalloc	112
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR 48[rsp], rcx
	mov	QWORD PTR 56[rsp], rbx
	mov	rbx, rdx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	rax, QWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	mov	QWORD PTR 96[rsp], rax
	mov	QWORD PTR 104[rsp], rdx
	mov	rax, QWORD PTR 32[rsp]
	mov	rdx, QWORD PTR 40[rsp]
	mov	QWORD PTR 80[rsp], rax
	mov	QWORD PTR 88[rsp], rdx
	mov	rdx, QWORD PTR 80[rsp]
	mov	rax, QWORD PTR 96[rsp]
	mov	rcx, rax
	call	__mulddi3
	movaps	XMMWORD PTR 64[rsp], xmm0
	mov	rcx, QWORD PTR 72[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	mov	rax, QWORD PTR 80[rsp]
	imul	rdx, rax
	mov	r8, rdx
	mov	rdx, QWORD PTR 96[rsp]
	mov	rax, QWORD PTR 88[rsp]
	imul	rax, rdx
	add	rax, r8
	add	rax, rcx
	mov	QWORD PTR 72[rsp], rax
	movdqa	xmm0, XMMWORD PTR 64[rsp]
	add	rsp, 112
	pop	rbx
	ret
	.seh_endproc
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	rax, QWORD PTR 8[rsp]
	neg	rax
	ret
	.seh_endproc
	.globl	__negti2
	.def	__negti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negti2
__negti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR 16[rsp], rax
	mov	QWORD PTR 24[rsp], rdx
	mov	rax, QWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 24[rsp]
	neg	rax
	adc	rdx, 0
	neg	rdx
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	__paritydi2
	.def	__paritydi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritydi2
__paritydi2:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR 8[rsp], rax
	mov	edx, DWORD PTR 12[rsp]
	mov	eax, DWORD PTR 8[rsp]
	xor	eax, edx
	mov	DWORD PTR 28[rsp], eax
	mov	eax, DWORD PTR 28[rsp]
	shr	eax, 16
	xor	eax, DWORD PTR 28[rsp]
	mov	DWORD PTR 24[rsp], eax
	mov	eax, DWORD PTR 24[rsp]
	shr	eax, 8
	xor	eax, DWORD PTR 24[rsp]
	mov	DWORD PTR 20[rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	shr	eax, 4
	xor	eax, DWORD PTR 20[rsp]
	mov	DWORD PTR 16[rsp], eax
	mov	eax, DWORD PTR 16[rsp]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	rdx, QWORD PTR 40[rsp]
	mov	rax, QWORD PTR 32[rsp]
	xor	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	mov	edx, DWORD PTR 28[rsp]
	mov	eax, DWORD PTR 24[rsp]
	xor	eax, edx
	mov	DWORD PTR 60[rsp], eax
	mov	eax, DWORD PTR 60[rsp]
	shr	eax, 16
	xor	eax, DWORD PTR 60[rsp]
	mov	DWORD PTR 56[rsp], eax
	mov	eax, DWORD PTR 56[rsp]
	shr	eax, 8
	xor	eax, DWORD PTR 56[rsp]
	mov	DWORD PTR 52[rsp], eax
	mov	eax, DWORD PTR 52[rsp]
	shr	eax, 4
	xor	eax, DWORD PTR 52[rsp]
	mov	DWORD PTR 48[rsp], eax
	mov	eax, DWORD PTR 48[rsp]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	__paritysi2
	.def	__paritysi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritysi2
__paritysi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	DWORD PTR 32[rsp], ecx
	mov	eax, DWORD PTR 32[rsp]
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	shr	eax, 16
	xor	eax, DWORD PTR 12[rsp]
	mov	DWORD PTR 8[rsp], eax
	mov	eax, DWORD PTR 8[rsp]
	shr	eax, 8
	xor	eax, DWORD PTR 8[rsp]
	mov	DWORD PTR 4[rsp], eax
	mov	eax, DWORD PTR 4[rsp]
	shr	eax, 4
	xor	eax, DWORD PTR 4[rsp]
	mov	DWORD PTR [rsp], eax
	mov	eax, DWORD PTR [rsp]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__popcountdi2
	.def	__popcountdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountdi2
__popcountdi2:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 64[rsp], rcx
	mov	rax, QWORD PTR 64[rsp]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	shr	rax
	mov	rdx, rax
	movabs	rax, 6148914691236517205
	and	rdx, rax
	mov	rax, QWORD PTR 40[rsp]
	sub	rax, rdx
	mov	QWORD PTR 32[rsp], rax
	mov	rax, QWORD PTR 32[rsp]
	shr	rax, 2
	mov	rdx, rax
	movabs	rax, 3689348814741910323
	and	rdx, rax
	movabs	rax, 3689348814741910323
	and	rax, QWORD PTR 32[rsp]
	add	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	mov	rax, QWORD PTR 24[rsp]
	shr	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	movabs	rax, 1085102592571150095
	and	rax, rdx
	mov	QWORD PTR 16[rsp], rax
	mov	rax, QWORD PTR 16[rsp]
	mov	edx, eax
	mov	rax, QWORD PTR 16[rsp]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR 12[rsp]
	add	eax, edx
	mov	DWORD PTR 8[rsp], eax
	mov	eax, DWORD PTR 8[rsp]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR 8[rsp]
	add	eax, edx
	and	eax, 127
	add	rsp, 56
	ret
	.seh_endproc
	.globl	__popcountsi2
	.def	__popcountsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountsi2
__popcountsi2:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	DWORD PTR 48[rsp], ecx
	mov	eax, DWORD PTR 48[rsp]
	mov	DWORD PTR 28[rsp], eax
	mov	eax, DWORD PTR 28[rsp]
	shr	eax
	and	eax, 1431655765
	mov	edx, eax
	mov	eax, DWORD PTR 28[rsp]
	sub	eax, edx
	mov	DWORD PTR 24[rsp], eax
	mov	eax, DWORD PTR 24[rsp]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR 24[rsp]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR 20[rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR 20[rsp]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR 16[rsp], eax
	mov	eax, DWORD PTR 16[rsp]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR 16[rsp]
	add	eax, edx
	mov	DWORD PTR 12[rsp], eax
	mov	eax, DWORD PTR 12[rsp]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR 12[rsp]
	add	eax, edx
	and	eax, 63
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 96
	.seh_stackalloc	96
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 80[rsp], rax
	mov	QWORD PTR 88[rsp], rdx
	mov	rax, QWORD PTR 80[rsp]
	mov	rdx, QWORD PTR 88[rsp]
	shrd	rax, rdx, 1
	shr	rdx
	movabs	rcx, 6148914691236517205
	mov	rbx, rcx
	and	rcx, rax
	and	rbx, rdx
	mov	rax, QWORD PTR 80[rsp]
	mov	rdx, QWORD PTR 88[rsp]
	sub	rax, rcx
	sbb	rdx, rbx
	mov	QWORD PTR 64[rsp], rax
	mov	QWORD PTR 72[rsp], rdx
	mov	rax, QWORD PTR 64[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	shrd	rax, rdx, 2
	shr	rdx, 2
	movabs	rcx, 3689348814741910323
	mov	rbx, rcx
	and	rcx, rax
	and	rbx, rdx
	movabs	rax, 3689348814741910323
	mov	rdx, rax
	and	rax, QWORD PTR 64[rsp]
	and	rdx, QWORD PTR 72[rsp]
	add	rax, rcx
	adc	rdx, rbx
	mov	QWORD PTR 48[rsp], rax
	mov	QWORD PTR 56[rsp], rdx
	mov	rax, QWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	shrd	rax, rdx, 4
	shr	rdx, 4
	mov	rcx, QWORD PTR 48[rsp]
	mov	rbx, QWORD PTR 56[rsp]
	add	rax, rcx
	adc	rdx, rbx
	movabs	rcx, 1085102592571150095
	mov	rbx, rcx
	and	rax, rcx
	and	rdx, rbx
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	rax, QWORD PTR 32[rsp]
	mov	rdx, QWORD PTR 40[rsp]
	add	rax, rdx
	mov	QWORD PTR 24[rsp], rax
	mov	rax, QWORD PTR 24[rsp]
	mov	edx, eax
	mov	rax, QWORD PTR 24[rsp]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR 20[rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR 20[rsp]
	add	eax, edx
	mov	DWORD PTR 16[rsp], eax
	mov	eax, DWORD PTR 16[rsp]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR 16[rsp]
	add	eax, edx
	movzx	eax, al
	add	rsp, 96
	pop	rbx
	ret
	.seh_endproc
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	movsd	QWORD PTR 32[rsp], xmm0
	mov	DWORD PTR 40[rsp], edx
	mov	eax, DWORD PTR 40[rsp]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR 4[rsp], eax
	movsd	xmm0, QWORD PTR .LC16[rip]
	movsd	QWORD PTR 8[rsp], xmm0
.L834:
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 1
	je	.L831
	movsd	xmm0, QWORD PTR 8[rsp]
	mulsd	xmm0, QWORD PTR 32[rsp]
	movsd	QWORD PTR 8[rsp], xmm0
.L831:
	mov	eax, DWORD PTR 40[rsp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 40[rsp], eax
	cmp	DWORD PTR 40[rsp], 0
	je	.L838
	movsd	xmm0, QWORD PTR 32[rsp]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR 32[rsp], xmm0
	jmp	.L834
.L838:
	cmp	DWORD PTR 4[rsp], 0
	je	.L835
	movsd	xmm0, QWORD PTR .LC16[rip]
	divsd	xmm0, QWORD PTR 8[rsp]
	movq	rax, xmm0
	jmp	.L837
.L835:
	mov	rax, QWORD PTR 8[rsp]
.L837:
	movq	xmm0, rax
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	movss	DWORD PTR 32[rsp], xmm0
	mov	DWORD PTR 40[rsp], edx
	mov	eax, DWORD PTR 40[rsp]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR 8[rsp], eax
	movss	xmm0, DWORD PTR .LC18[rip]
	movss	DWORD PTR 12[rsp], xmm0
.L844:
	mov	eax, DWORD PTR 40[rsp]
	and	eax, 1
	je	.L841
	movss	xmm0, DWORD PTR 12[rsp]
	mulss	xmm0, DWORD PTR 32[rsp]
	movss	DWORD PTR 12[rsp], xmm0
.L841:
	mov	eax, DWORD PTR 40[rsp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 40[rsp], eax
	cmp	DWORD PTR 40[rsp], 0
	je	.L848
	movss	xmm0, DWORD PTR 32[rsp]
	mulss	xmm0, xmm0
	movss	DWORD PTR 32[rsp], xmm0
	jmp	.L844
.L848:
	cmp	DWORD PTR 8[rsp], 0
	je	.L845
	movss	xmm0, DWORD PTR .LC18[rip]
	divss	xmm0, DWORD PTR 12[rsp]
	movd	eax, xmm0
	jmp	.L847
.L845:
	mov	eax, DWORD PTR 12[rsp]
.L847:
	movd	xmm0, eax
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 40[rsp], rdx
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 8[rsp], rax
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR [rsp], rax
	mov	edx, DWORD PTR 12[rsp]
	mov	eax, DWORD PTR 4[rsp]
	cmp	edx, eax
	jnb	.L851
	mov	eax, 0
	jmp	.L856
.L851:
	mov	eax, DWORD PTR 12[rsp]
	mov	edx, DWORD PTR 4[rsp]
	cmp	edx, eax
	jnb	.L853
	mov	eax, 2
	jmp	.L856
.L853:
	mov	edx, DWORD PTR 8[rsp]
	mov	eax, DWORD PTR [rsp]
	cmp	edx, eax
	jnb	.L854
	mov	eax, 0
	jmp	.L856
.L854:
	mov	eax, DWORD PTR 8[rsp]
	mov	edx, DWORD PTR [rsp]
	cmp	edx, eax
	jnb	.L855
	mov	eax, 2
	jmp	.L856
.L855:
	mov	eax, 1
.L856:
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	QWORD PTR 48[rsp], rcx
	mov	QWORD PTR 56[rsp], rdx
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 48[rsp]
	mov	rcx, rax
	call	__ucmpdi2
	sub	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR 16[rsp], rcx
	mov	QWORD PTR 24[rsp], rbx
	mov	rbx, rdx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	rax, QWORD PTR 16[rsp]
	mov	rdx, QWORD PTR 24[rsp]
	mov	QWORD PTR 48[rsp], rax
	mov	QWORD PTR 56[rsp], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR 8[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 40[rsp]
	cmp	rdx, rax
	jnb	.L860
	mov	eax, 0
	jmp	.L865
.L860:
	mov	rax, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 40[rsp]
	cmp	rdx, rax
	jnb	.L862
	mov	eax, 2
	jmp	.L865
.L862:
	mov	rdx, QWORD PTR 48[rsp]
	mov	rax, QWORD PTR 32[rsp]
	cmp	rdx, rax
	jnb	.L863
	mov	eax, 0
	jmp	.L865
.L863:
	mov	rax, QWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 32[rsp]
	cmp	rdx, rax
	jnb	.L864
	mov	eax, 2
	jmp	.L865
.L864:
	mov	eax, 1
.L865:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
.lcomm s.0,7,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	0
	.align 4
.LC1:
	.long	0
	.align 4
.LC3:
	.long	-8388609
	.align 4
.LC4:
	.long	2139095039
	.align 8
.LC5:
	.long	-1
	.long	-1048577
	.align 8
.LC6:
	.long	-1
	.long	2146435071
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC8:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC10:
	.long	1073741824
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1073741824
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	16382
	.long	0
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	16384
	.long	0
	.align 16
.LC15:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.align 4
.LC17:
	.long	1191182336
	.align 4
.LC18:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
